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

var<private> r15 : vec4<f32>;

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

@group(1u) @binding(45u) var t13 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_multisampled_2d<f32>;

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
  r1.x = textureLoad(t6, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w)).x;
  let v_6 = (v0.xy * cb12_12.tint_symbol_1[6u].zw);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.x = (r1.x + cb12_12.tint_symbol_1[0u].w);
  r1.x = (cb12_12.tint_symbol_1[0u].z / r1.x);
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
  r7.x = textureLoad(t7, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w)).x;
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r7.y = textureLoad(t7, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w)).x;
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4.xyzy) ^ vec4<u32>(2u)));
  let v_24 = -(bitcast<vec4<i32>>(r4.xyzy));
  r8 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r4.xyzy), v_24));
  r8 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r8) >> vec4<u32>(1u)));
  r9 = bitcast<vec4<f32>>(-(bitcast<vec4<i32>>(r8)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(2147483648u)));
  let v_25 = bitcast<vec4<u32>>(r6.zwxy);
  let v_26 = r9.zwxy;
  r6 = select(r8.zwxy, v_26, (v_25 != vec4<u32>()));
  let v_27 = r6;
  r8 = vec4<f32>(v_27.zw, r8.zw);
  r8 = vec4<f32>(r8.xy, vec2<f32>());
  r7.z = textureLoad(t7, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w)).x;
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r7.w = textureLoad(t7, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w)).x;
  r5.w = 0.0f;
  r1.z = textureLoad(t14, bitcast<vec2<i32>>(r5.xy), 0i).x;
  r6.x = ((-(r1.zzzz)).x + cb12_12.tint_symbol_1[0u].w);
  r1.z = textureLoad(t14, bitcast<vec2<i32>>(r5.zy), 0i).x;
  r6.y = ((-(r1.zzzz)).y + cb12_12.tint_symbol_1[0u].w);
  r4.w = 0.0f;
  r1.z = textureLoad(t14, bitcast<vec2<i32>>(r4.xy), 0i).x;
  r6.z = ((-(r1.zzzz)).z + cb12_12.tint_symbol_1[0u].w);
  r1.z = textureLoad(t14, bitcast<vec2<i32>>(r4.zy), 0i).x;
  r6.w = ((-(r1.zzzz)).w + cb12_12.tint_symbol_1[0u].w);
  r4 = (r6 + vec4<f32>(1.0f));
  r4 = (cb12_12.tint_symbol_1[0u].zzzz / r4);
  r4 = fma(-(r2.zzzz), r1.xxxx, r4);
  r4 = (abs(r4) + vec4<f32>(1.0f));
  r4 = (vec4<f32>(1.0f) / r4);
  r4 = log2(r4);
  r4 = (r4 * cb12_12.tint_symbol_1[7u].wwww);
  r4 = exp2(r4);
  r3 = (r3 * r4);
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
    let v_34 = textureLoad(t13, bitcast<vec2<i32>>(r0.xy), 0i).xyz;
    r3 = vec4<f32>(v_34.xyz, r3.w);
    let v_35 = fma(r3.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r3 = vec4<f32>(v_35.xyz, r3.w);
    r4.x = dot(cb1_1.tint_symbol[12u].xyz, r3.xyz);
    r4.y = dot(cb1_1.tint_symbol[13u].xyz, r3.xyz);
    r0.z = dot(cb1_1.tint_symbol[14u].xyz, r3.xyz);
    r4.z = (-(r0.zzzz)).z;
    let v_36 = min(r1.yw, cb12_12.tint_symbol_1[7u].yy);
    r0 = vec4<f32>(r0.xy, v_36.xy);
    let v_37 = r0.zw;
    let v_38 = max(v_37, vec2<f32>(-2147483648.0f));
    let v_39 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_38), vec2<i32>(2147483647i), (v_38 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_37 == v_37))));
    r0 = vec4<f32>(r0.xy, v_39.xy);
    r0.z = bitcast<f32>(max(bitcast<i32>(r0.w), bitcast<i32>(r0.z)));
    r0.w = (cb12_12.tint_symbol_1[7u].x * cb12_12.tint_symbol_1[7u].x);
    let v_40 = r3;
    r3 = vec4<f32>(v_40.x, vec2<f32>(), v_40.w);
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    r8 = vec4<f32>(r8.xy, vec2<f32>());
    r9.w = 0.0f;
    r10.w = 0.0f;
    let v_41 = r1;
    r1 = vec4<f32>(v_41.x, 0.0f, v_41.z, 0.0f);
    r2.w = bitcast<f32>(v.tint_symbol_2[0i].x);
    loop {
      r4.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r2.w))));
      if ((bitcast<u32>(r4.w) != 0u)) {
        break;
      }
      r3.x = bitcast<f32>(-(bitcast<i32>(r2.w)));
      r3.w = r2.w;
      r11 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r3.wzzx)));
      r12 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r3)));
      let v_42 = r11;
      r5 = vec4<f32>(v_42.xy, r5.zw);
      r4.w = textureLoad(t14, bitcast<vec2<i32>>(r5.xy), 0i).x;
      r13.x = ((-(r4.wwww)).x + cb12_12.tint_symbol_1[0u].w);
      let v_43 = r11;
      r6 = vec4<f32>(v_43.zw, r6.zw);
      r4.w = textureLoad(t14, bitcast<vec2<i32>>(r6.xy), 0i).x;
      r13.y = ((-(r4.wwww)).y + cb12_12.tint_symbol_1[0u].w);
      let v_44 = r12;
      r7 = vec4<f32>(v_44.xy, r7.zw);
      r4.w = textureLoad(t14, bitcast<vec2<i32>>(r7.xy), 0i).x;
      r13.z = ((-(r4.wwww)).z + cb12_12.tint_symbol_1[0u].w);
      let v_45 = r12;
      r8 = vec4<f32>(v_45.zw, r8.zw);
      r4.w = textureLoad(t14, bitcast<vec2<i32>>(r8.xy), 0i).x;
      r13.w = ((-(r4.wwww)).w + cb12_12.tint_symbol_1[0u].w);
      let v_46 = vec2<f32>(bitcast<vec2<i32>>(r11.xz));
      r14 = vec4<f32>(v_46.xy, r14.zw);
      let v_47 = vec2<f32>(bitcast<vec2<i32>>(r12.xz));
      r14 = vec4<f32>(r14.xy, v_47.xy);
      r14 = (r14 + vec4<f32>(0.5f));
      r14 = (r14 * cb12_12.tint_symbol_1[6u].zzzz);
      let v_48 = vec2<f32>(bitcast<vec2<i32>>(r11.yw));
      r11 = vec4<f32>(v_48.xy, r11.zw);
      let v_49 = vec2<f32>(bitcast<vec2<i32>>(r12.yw));
      r11 = vec4<f32>(r11.xy, v_49.xy);
      r11 = (r11 + vec4<f32>(0.5f));
      r11 = (r11 * cb12_12.tint_symbol_1[6u].wwww);
      r12 = (r13 + vec4<f32>(1.0f));
      r12 = (cb12_12.tint_symbol_1[0u].zzzz / r12);
      r13 = fma(r14, vec4<f32>(2.0f), vec4<f32>(-1.0f));
      r13 = (r12 * r13);
      r13 = (r13 * cb12_12.tint_symbol_1[0u].xxxx);
      r11 = fma(-(r11), vec4<f32>(2.0f), vec4<f32>(1.0f));
      r11 = (r12 * r11);
      r11 = (r11 * cb12_12.tint_symbol_1[0u].yyyy);
      r14.x = r13.x;
      r14.y = r11.x;
      r14.z = r12.x;
      let v_50 = fma((-(r2.xyzx)).xyz, r1.xxx, r14.xyz);
      r14 = vec4<f32>(v_50.xyz, r14.w);
      r15.x = r13.y;
      r15.y = r11.y;
      r15.z = r12.y;
      let v_51 = fma((-(r2.xyzx)).xyz, r1.xxx, r15.xyz);
      r15 = vec4<f32>(v_51.xyz, r15.w);
      r12.x = r13.z;
      r12.y = r11.z;
      let v_52 = fma((-(r2.xyzx)).xyz, r1.xxx, r12.xyz);
      r11 = vec4<f32>(v_52.xyz, r11.w);
      r12.x = r13.w;
      r12.y = r11.w;
      let v_53 = fma((-(r2.xyzx)).xyz, r1.xxx, r12.xyw);
      r12 = vec4<f32>(v_53.xyz, r12.w);
      r13.x = dot(r14.xyz, r14.xyz);
      r13.y = dot(r15.xyz, r15.xyz);
      r13.z = dot(r11.xyz, r11.xyz);
      r13.w = dot(r12.xyz, r12.xyz);
      r14.x = dot(r14.xyz, r4.xyz);
      r14.y = dot(r15.xyz, r4.xyz);
      r14.z = dot(r11.xyz, r4.xyz);
      r14.w = dot(r12.xyz, r4.xyz);
      r11 = max(r14, vec4<f32>());
      r11 = (r11 * r11);
      r11 = (r11 / r13);
      r12 = fma(r11, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
      r11 = (r11 * r12);
      r12 = (r13 / r0.wwww);
      r12 = min(r12, vec4<f32>(1.0f));
      r12 = (-(r12) + vec4<f32>(1.0f));
      r4.w = dot(r12, r11);
      r4.w = (r1.y + r4.w);
      let v_54 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r0.xyy) + bitcast<vec3<i32>>(r3.wwx)));
      r9 = vec4<f32>(v_54.xyz, r9.w);
      let v_55 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r0.xyy) + bitcast<vec3<i32>>(r3.xxw)));
      r10 = vec4<f32>(v_55.xyz, r10.w);
      r3.x = textureLoad(t14, bitcast<vec2<i32>>(r9.xy), 0i).x;
      r11.x = ((-(r3.xxxx)).x + cb12_12.tint_symbol_1[0u].w);
      r3.x = textureLoad(t14, bitcast<vec2<i32>>(r9.xz), 0i).x;
      r11.y = ((-(r3.xxxx)).y + cb12_12.tint_symbol_1[0u].w);
      r3.x = textureLoad(t14, bitcast<vec2<i32>>(r10.xy), 0i).x;
      r11.z = ((-(r3.xxxx)).z + cb12_12.tint_symbol_1[0u].w);
      r3.x = textureLoad(t14, bitcast<vec2<i32>>(r10.xz), 0i).x;
      r11.w = ((-(r3.xxxx)).w + cb12_12.tint_symbol_1[0u].w);
      let v_56 = vec2<f32>(bitcast<vec2<i32>>(r9.xx));
      r12 = vec4<f32>(v_56.xy, r12.zw);
      let v_57 = vec2<f32>(bitcast<vec2<i32>>(r10.xx));
      r12 = vec4<f32>(r12.xy, v_57.xy);
      r12 = (r12 + vec4<f32>(0.5f));
      r12 = (r12 * cb12_12.tint_symbol_1[6u].zzzz);
      let v_58 = vec2<f32>(bitcast<vec2<i32>>(r9.yz));
      r13 = vec4<f32>(v_58.xy, r13.zw);
      let v_59 = vec2<f32>(bitcast<vec2<i32>>(r10.yz));
      r13 = vec4<f32>(r13.xy, v_59.xy);
      r13 = (r13 + vec4<f32>(0.5f));
      r13 = (r13 * cb12_12.tint_symbol_1[6u].wwww);
      r11 = (r11 + vec4<f32>(1.0f));
      r11 = (cb12_12.tint_symbol_1[0u].zzzz / r11);
      r12 = fma(r12, vec4<f32>(2.0f), vec4<f32>(-1.0f));
      r12 = (r11 * r12);
      r12 = (r12 * cb12_12.tint_symbol_1[0u].xxxx);
      r13 = fma(-(r13), vec4<f32>(2.0f), vec4<f32>(1.0f));
      r13 = (r11 * r13);
      r13 = (r13 * cb12_12.tint_symbol_1[0u].yyyy);
      r9.x = r12.x;
      r9.y = r13.x;
      r9.z = r11.x;
      let v_60 = fma((-(r2.xyzx)).xyz, r1.xxx, r9.xyz);
      r9 = vec4<f32>(v_60.xyz, r9.w);
      r10.x = r12.y;
      r10.y = r13.y;
      r10.z = r11.y;
      let v_61 = fma((-(r2.xyzx)).xyz, r1.xxx, r10.xyz);
      r10 = vec4<f32>(v_61.xyz, r10.w);
      r11.x = r12.z;
      r11.y = r13.z;
      let v_62 = fma((-(r2.xyzx)).xyz, r1.xxx, r11.xyz);
      r12 = vec4<f32>(v_62.xyz, r12.w);
      r11.x = r12.w;
      r11.y = r13.w;
      let v_63 = fma((-(r2.xyzx)).xyz, r1.xxx, r11.xyw);
      r11 = vec4<f32>(v_63.xyz, r11.w);
      r13.x = dot(r9.xyz, r9.xyz);
      r13.y = dot(r10.xyz, r10.xyz);
      r13.z = dot(r12.xyz, r12.xyz);
      r13.w = dot(r11.xyz, r11.xyz);
      r14.x = dot(r9.xyz, r4.xyz);
      r14.y = dot(r10.xyz, r4.xyz);
      r14.z = dot(r12.xyz, r4.xyz);
      r14.w = dot(r11.xyz, r4.xyz);
      r11 = max(r14, vec4<f32>());
      r11 = (r11 * r11);
      r11 = (r11 / r13);
      r12 = fma(r11, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
      r11 = (r11 * r12);
      r12 = (r13 / r0.wwww);
      r12 = min(r12, vec4<f32>(1.0f));
      r12 = (-(r12) + vec4<f32>(1.0f));
      r3.x = dot(r12, r11);
      r1.y = (r3.x + r4.w);
      r1.w = (r1.w + 8.0f);
      r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
    }
    r0.x = (r1.y / r1.w);
  } else {
    r0.x = 0.0f;
  }
  o0 = max(r1.zzzz, r0.xxxx);
}

@fragment
fn main(@builtin(position) v_64 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_64);
  return o0;
}
