diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb8_struct {
  tint_symbol_1 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_3 {
  tint_symbol_2 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_3;

fn main_inner(v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = v0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1 = textureLoad(t6, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  let v_6 = (v0.xy * cb12_12.tint_symbol_1[6u].zw);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.x = fma(cb12_12.tint_symbol_1[0u].w, r1.x, cb12_12.tint_symbol_1[0u].z);
  let v_8 = fma(r1.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r1.yz * cb12_12.tint_symbol_1[0u].xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2.z = 1.0f;
  r1.y = (r1.x * r2.z);
  let v_11 = trunc(v0.xy);
  r1 = vec4<f32>(r1.xy, v_11.xy);
  let v_12 = fma(r1.zw, vec2<f32>(0.5f), vec2<f32>(-0.25f));
  r1 = vec4<f32>(r1.xy, v_12.xy);
  let v_13 = fract(r1.zw);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  let v_14 = ((-(r3.xxxy)).zw + vec2<f32>(1.0f));
  r3 = vec4<f32>(r3.xy, v_14.xy);
  r3 = (r3.wwyy * r3.zxzx);
  let v_15 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r0.xyx) + vec3<i32>(-1i)));
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.xyx) & vec3<u32>(1u)));
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r4.xyz) + bitcast<vec3<i32>>(r5.xyz)));
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r4.zyz) + vec3<i32>(0i, 0i, 1i)));
  r5 = vec4<f32>(v_18.xyz, r5.w);
  let v_19 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r4.xyz) + vec3<i32>(0i, 1i, 1i)));
  r4 = vec4<f32>(v_19.xyz, r4.w);
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5.xyzy) ^ vec4<u32>(2u)));
  let v_20 = -(bitcast<vec4<i32>>(r5.xyzy));
  r7 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r5.xyzy), v_20));
  r7 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r7) >> vec4<u32>(1u)));
  r8 = bitcast<vec4<f32>>(-(bitcast<vec4<i32>>(r7)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(2147483648u)));
  let v_21 = bitcast<vec4<u32>>(r6.zwxy);
  let v_22 = r8.zwxy;
  r6 = select(r7.zwxy, v_22, (v_21 != vec4<u32>()));
  let v_23 = r6;
  r7 = vec4<f32>(v_23.zw, r7.zw);
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r7 = textureLoad(t7, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r6 = textureLoad(t7, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4.xyzy) ^ vec4<u32>(2u)));
  let v_24 = -(bitcast<vec4<i32>>(r4.xyzy));
  r9 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r4.xyzy), v_24));
  r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) >> vec4<u32>(1u)));
  r10 = bitcast<vec4<f32>>(-(bitcast<vec4<i32>>(r9)));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) & vec4<u32>(2147483648u)));
  let v_25 = bitcast<vec4<u32>>(r8.zwxy);
  let v_26 = r10.zwxy;
  r8 = select(r9.zwxy, v_26, (v_25 != vec4<u32>()));
  let v_27 = r8;
  r9 = vec4<f32>(v_27.zw, r9.zw);
  r9 = vec4<f32>(r9.xy, vec2<f32>());
  r9 = textureLoad(t7, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(r9.w));
  r8 = vec4<f32>(r8.xy, vec2<f32>());
  r8 = textureLoad(t7, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w));
  r5.w = 0.0f;
  r10 = textureLoad(t14, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
  r10.x = ((-(r10.xxxx)).x + 1.0f);
  r5 = textureLoad(t14, bitcast<vec2<i32>>(r5.zy), bitcast<i32>(r5.w));
  r10.y = ((-(r5.xxxx)).y + 1.0f);
  r4.w = 0.0f;
  r5 = textureLoad(t14, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
  r10.z = ((-(r5.xxxx)).z + 1.0f);
  r4 = textureLoad(t14, bitcast<vec2<i32>>(r4.zy), bitcast<i32>(r4.w));
  r10.w = ((-(r4.xxxx)).w + 1.0f);
  r4 = fma(cb12_12.tint_symbol_1[0u].wwww, r10, cb12_12.tint_symbol_1[0u].zzzz);
  r4 = fma(-(r2.zzzz), r1.xxxx, r4);
  r4 = (abs(r4) + vec4<f32>(1.0f));
  r4 = (vec4<f32>(1.0f) / r4);
  r4 = log2(r4);
  r4 = (r4 * cb12_12.tint_symbol_1[7u].wwww);
  r4 = exp2(r4);
  r3 = (r3 * r4);
  r7.y = r6.x;
  r7.z = r9.x;
  r7.w = r8.x;
  r1.z = dot(r3, r7);
  let v_28 = (cb12_12.tint_symbol_1[6u].xy * cb12_12.tint_symbol_1[7u].xx);
  r3 = vec4<f32>(v_28.xy, r3.zw);
  let v_29 = (r3.xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_29.xy, r3.zw);
  let v_30 = (r1.yy * cb12_12.tint_symbol_1[0u].xy);
  let v_31 = r1;
  r1 = vec4<f32>(v_31.x, v_30.x, v_31.z, v_30.y);
  let v_32 = (r3.xy / r1.yw);
  let v_33 = r1;
  r1 = vec4<f32>(v_33.x, v_32.x, v_33.z, v_32.y);
  r2.w = max(r1.w, r1.y);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 1.0f)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r3 = textureLoad(t13, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    let v_34 = fma(r3.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r3 = vec4<f32>(v_34.xyz, r3.w);
    r4.x = dot(cb1_1.tint_symbol[12u].xyz, r3.xyz);
    r4.y = dot(cb1_1.tint_symbol[13u].xyz, r3.xyz);
    r0.z = dot(cb1_1.tint_symbol[14u].xyz, r3.xyz);
    r4.z = (-(r0.zzzz)).z;
    let v_35 = min(r1.yw, cb12_12.tint_symbol_1[7u].yy);
    r0 = vec4<f32>(r0.xy, v_35.xy);
    let v_36 = r0.zw;
    let v_37 = max(v_36, vec2<f32>(-2147483648.0f));
    let v_38 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_37), vec2<i32>(2147483647i), (v_37 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_36 == v_36))));
    r0 = vec4<f32>(r0.xy, v_38.xy);
    r0.z = bitcast<f32>(max(bitcast<i32>(r0.w), bitcast<i32>(r0.z)));
    r0.w = (cb12_12.tint_symbol_1[7u].x * cb12_12.tint_symbol_1[7u].x);
    r3 = vec4<f32>(r3.xy, vec2<f32>());
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    let v_39 = r1;
    r1 = vec4<f32>(v_39.x, 0.0f, v_39.z, 0.0f);
    r2.w = 0.0f;
    loop {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r2.w))));
      if ((bitcast<u32>(r4.w) != 0u)) {
        break;
      }
      r8.x = bitcast<f32>(-(bitcast<i32>(r2.w)));
      r8.y = r2.w;
      let v_40 = r1;
      r9 = vec4<f32>(v_40.yw, r9.zw);
      r4.w = bitcast<f32>(v.tint_symbol_2[0i].x);
      loop {
        r9.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r4.w))));
        if ((bitcast<u32>(r9.z) != 0u)) {
          break;
        }
        r8.z = r4.w;
        r10 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r8.yzzx)));
        r8.w = bitcast<f32>(-(bitcast<i32>(r4.w)));
        r11 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r8.xwwy)));
        let v_41 = r10;
        r3 = vec4<f32>(v_41.xy, r3.zw);
        r12 = textureLoad(t14, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
        r12.x = ((-(r12.xxxx)).x + 1.0f);
        let v_42 = r10;
        r5 = vec4<f32>(v_42.zw, r5.zw);
        r13 = textureLoad(t14, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
        r12.y = ((-(r13.xxxx)).y + 1.0f);
        let v_43 = r11;
        r6 = vec4<f32>(v_43.xy, r6.zw);
        r13 = textureLoad(t14, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
        r12.z = ((-(r13.xxxx)).z + 1.0f);
        let v_44 = r11;
        r7 = vec4<f32>(v_44.zw, r7.zw);
        r13 = textureLoad(t14, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
        r12.w = ((-(r13.xxxx)).w + 1.0f);
        let v_45 = vec2<f32>(bitcast<vec2<i32>>(r10.xz));
        r13 = vec4<f32>(v_45.xy, r13.zw);
        let v_46 = vec2<f32>(bitcast<vec2<i32>>(r11.xz));
        r13 = vec4<f32>(r13.xy, v_46.xy);
        r13 = (r13 + vec4<f32>(0.5f));
        r13 = (r13 * cb12_12.tint_symbol_1[6u].zzzz);
        let v_47 = vec2<f32>(bitcast<vec2<i32>>(r10.yw));
        r10 = vec4<f32>(v_47.xy, r10.zw);
        let v_48 = vec2<f32>(bitcast<vec2<i32>>(r11.yw));
        r10 = vec4<f32>(r10.xy, v_48.xy);
        r10 = (r10 + vec4<f32>(0.5f));
        r10 = (r10 * cb12_12.tint_symbol_1[6u].wwww);
        r11 = fma(cb12_12.tint_symbol_1[0u].wwww, r12, cb12_12.tint_symbol_1[0u].zzzz);
        r12 = fma(r13, vec4<f32>(2.0f), vec4<f32>(-1.0f));
        r12 = (r11 * r12);
        r12 = (r12 * cb12_12.tint_symbol_1[0u].xxxx);
        r10 = fma(-(r10), vec4<f32>(2.0f), vec4<f32>(1.0f));
        r10 = (r11 * r10);
        r10 = (r10 * cb12_12.tint_symbol_1[0u].yyyy);
        r13.x = r12.x;
        r13.y = r10.x;
        r13.z = r11.x;
        let v_49 = fma((-(r2.xyzx)).xyz, r1.xxx, r13.xyz);
        r13 = vec4<f32>(v_49.xyz, r13.w);
        r14.x = r12.y;
        r14.y = r10.y;
        r14.z = r11.y;
        let v_50 = fma((-(r2.xyzx)).xyz, r1.xxx, r14.xyz);
        r14 = vec4<f32>(v_50.xyz, r14.w);
        r11.x = r12.z;
        r11.y = r10.z;
        let v_51 = fma((-(r2.xyzx)).xyz, r1.xxx, r11.xyz);
        r10 = vec4<f32>(v_51.xyz, r10.w);
        r11.x = r12.w;
        r11.y = r10.w;
        let v_52 = fma((-(r2.xyzx)).xyz, r1.xxx, r11.xyw);
        r11 = vec4<f32>(v_52.xyz, r11.w);
        r12.x = dot(r13.xyz, r13.xyz);
        r12.y = dot(r14.xyz, r14.xyz);
        r12.z = dot(r10.xyz, r10.xyz);
        r12.w = dot(r11.xyz, r11.xyz);
        r13.x = dot(r13.xyz, r4.xyz);
        r13.y = dot(r14.xyz, r4.xyz);
        r13.z = dot(r10.xyz, r4.xyz);
        r13.w = dot(r11.xyz, r4.xyz);
        r10 = max(r13, vec4<f32>());
        r10 = (r10 * r10);
        r10 = (r10 / r12);
        r11 = fma(r10, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
        r10 = (r10 * r11);
        r11 = (r12 / r0.wwww);
        r11 = min(r11, vec4<f32>(1.0f));
        r11 = (-(r11) + vec4<f32>(1.0f));
        r3.x = dot(r11, r10);
        r9.x = (r3.x + r9.x);
        r9.y = (r9.y + 4.0f);
        r4.w = bitcast<f32>((bitcast<i32>(r4.w) + 1i));
      }
      let v_53 = r9;
      let v_54 = r1;
      r1 = vec4<f32>(v_54.x, v_53.x, v_54.z, v_53.y);
      r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
    }
    r0.x = (r1.y / r1.w);
  } else {
    r0.x = 0.0f;
  }
  o0 = max(r1.zzzz, r0.xxxx);
}

@fragment
fn main(@builtin(position) v_55 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_55);
  return o0;
}
