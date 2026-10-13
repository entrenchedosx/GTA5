"""Build the isolated memory32 BC decoder with clang/wasm-ld (WASI SDK supported)."""
from pathlib import Path
import argparse,subprocess,hashlib
p=argparse.ArgumentParser();p.add_argument('--clang',required=True);args=p.parse_args()
root=Path(__file__).resolve().parent.parent.parent
out=Path(__file__).with_name('decoder.wasm')
subprocess.run([args.clang,'--target=wasm32-unknown-unknown','-nostdlib','-O3','-fno-builtin',
 str(Path(__file__).with_name('decoder.c')),'-Wl,--no-entry','-Wl,--export-memory',
 '-Wl,--export=input_ptr','-Wl,--export=output_ptr','-Wl,--export=decode_block',
 '-Wl,--export=decode_row','-Wl,--initial-memory=1048576','-Wl,--max-memory=1048576','-o',str(out)],check=True)
print({'bytes':out.stat().st_size,'sha256':hashlib.sha256(out.read_bytes()).hexdigest()})
