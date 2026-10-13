/* Bounded block decoder bridge; the original bcdec header is unmodified. */
#define BCDEC_IMPLEMENTATION
#define BCDEC_BC4BC5_PRECISE
#include "bcdec.h"
static unsigned char input[65536];
static unsigned char output[524288];
static unsigned char block_output[128];
unsigned char* input_ptr(void) { return input; }
unsigned char* output_ptr(void) { return output; }
static int decode_to(int kind, int signed_mode, const unsigned char* source, unsigned char* dest) {
    switch(kind) {
    case 1: bcdec_bc1(source,dest,16); return 64;
    case 2: bcdec_bc2(source,dest,16); return 64;
    case 3: bcdec_bc3(source,dest,16); return 64;
    case 4: bcdec_bc4(source,dest,4,signed_mode); return 16;
    case 5: bcdec_bc5(source,dest,8,signed_mode); return 32;
    case 6: {
        unsigned short rgb[48], *rgba=(unsigned short*)dest;
        bcdec_bc6h_half(source,rgb,12,signed_mode);
        for(int i=0;i<16;i++){for(int c=0;c<3;c++)rgba[i*4+c]=rgb[i*3+c];rgba[i*4+3]=0x3c00;}
        return 128;
    }
    case 7: bcdec_bc7(source,dest,16); return 64;
    default:return 0;
    }
}
int decode_block(int kind, int signed_mode) { return decode_to(kind,signed_mode,input,output); }
/* One block row, clipped at real mip boundaries. No allocator, imported
   functions or unbounded growth; supports the WebGPU 16384-wide maximum. */
int decode_row(int kind,int signed_mode,int width,int height) {
    int pixel_bytes=kind==4?1:kind==5?2:kind==6?8:4;
    int block_bytes=kind==1||kind==4?8:16;
    if(kind<1||kind>7||width<1||width>16384||height<1||height>4)return 0;
    for(int x=0;x<width;x+=4) {
        int offset=(x/4)*block_bytes;
        decode_to(kind,signed_mode,input+offset,block_output);
        for(int y=0;y<height;y++)for(int i=0;i<4&&x+i<width;i++)for(int c=0;c<pixel_bytes;c++)
            output[(y*width+x+i)*pixel_bytes+c]=block_output[(y*4+i)*pixel_bytes+c];
    }
    return width*height*pixel_bytes;
}
