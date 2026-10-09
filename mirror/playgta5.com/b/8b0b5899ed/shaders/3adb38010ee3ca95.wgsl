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

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb3_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct_1;

struct cb258_struct {
  tint_symbol_6 : array<vec4<f32>, 258u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb258_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v5 : vec3<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (254i < bitcast<i32>(r0.z))));
  r1.y = clamp(((v7.zzzz + vec4<f32>(-0.5f))).y, 0.0f, 1.0f);
  r1.y = (r1.y + r1.y);
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r3.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r4.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_2 = -(r3.zxyz);
    let v_3 = (r2.zxy + v_2.xyz);
    r5 = vec4<f32>(v_3.xyz, r5.w);
    let v_4 = ((-(r3.yzxy)).xyz + r4.yzx);
    r6 = vec4<f32>(v_4.xyz, r6.w);
    let v_5 = (r5.xyz * r6.xyz);
    r7 = vec4<f32>(v_5.xyz, r7.w);
    let v_6 = -(r7.xyzx);
    let v_7 = fma(r5.zxy, r6.yzx, v_6.xyz);
    r5 = vec4<f32>(v_7.xyz, r5.w);
    r1.z = dot(r5.xyz, r5.xyz);
    r1.z = inverseSqrt(r1.z);
    let v_8 = (r1.zzz * r5.xyz);
    r5 = vec4<f32>(v_8.xyz, r5.w);
    let v_9 = (r3.xyz * v1.yyy);
    r3 = vec4<f32>(v_9.xyz, r3.w);
    let v_10 = fma(v1.zzz, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_10.xyz, r2.w);
    let v_11 = fma(v1.xxx, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_11.xyz, r2.w);
    r1.z = (v1.w + -0.5f);
    r1.z = (r1.z * 0.10000000149011611938f);
    let v_12 = -(r5.xyzx);
    let v_13 = fma(r1.zzz, v_12.xyz, r2.xyz);
    r2 = vec4<f32>(v_13.xyz, r2.w);
  } else {
    r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
    r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
    r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
    r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
    r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r4);
    r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r6);
    r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r4);
    r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r6);
    r3 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r4);
    r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r6);
    let v_14 = bitcast<vec3<u32>>(r1.xxx);
    let v_15 = cb4_4.tint_symbol[0u].xyz;
    let v_16 = select(r3.xyz, v_15, (v_14 != vec3<u32>()));
    r6 = vec4<f32>(v_16.xyz, r6.w);
    let v_17 = bitcast<vec3<u32>>(r1.xxx);
    let v_18 = cb4_4.tint_symbol[1u].xyz;
    let v_19 = select(r4.xyz, v_18, (v_17 != vec3<u32>()));
    r7 = vec4<f32>(v_19.xyz, r7.w);
    let v_20 = bitcast<vec3<u32>>(r1.xxx);
    let v_21 = cb4_4.tint_symbol[2u].xyz;
    let v_22 = select(r0.xyz, v_21, (v_20 != vec3<u32>()));
    r8 = vec4<f32>(v_22.xyz, r8.w);
    r5.x = dot(r6.xyz, v5);
    r5.y = dot(r7.xyz, v5);
    r5.z = dot(r8.xyz, v5);
    let v_23 = bitcast<vec4<u32>>(r1.xxxx);
    let v_24 = cb4_4.tint_symbol[0u];
    r3 = select(r3, v_24, (v_23 != vec4<u32>()));
    let v_25 = bitcast<vec4<u32>>(r1.xxxx);
    let v_26 = cb4_4.tint_symbol[1u];
    r4 = select(r4, v_26, (v_25 != vec4<u32>()));
    let v_27 = bitcast<vec4<u32>>(r1.xxxx);
    let v_28 = cb4_4.tint_symbol[2u];
    r0 = select(r0, v_28, (v_27 != vec4<u32>()));
    r6 = vec4<f32>(v0.xyz, r6.w);
    r6.w = 1.0f;
    r2.x = dot(r3, r6);
    r2.y = dot(r4, r6);
    r2.z = dot(r0, r6);
  }
  let v_29 = (r5.xyz * cb9_9.tint_symbol_4[0u].xxx);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (r1.yyy * r0.xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = fma(r0.xyz, cb13_13.tint_symbol_3[2u].yyy, r2.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = (v8.xxz * cb8_8.tint_symbol_5[0u].xxy);
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = (r1.xyz * cb13_13.tint_symbol_3[1u].xxy);
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r0.w = (v8.y * 6.28318500518798828125f);
  let v_34 = (cb13_13.tint_symbol_3[1u].zzw * cb8_8.tint_symbol_5[0u].zzw);
  r2 = vec4<f32>(v_34.xyz, r2.w);
  let v_35 = fma(cb2_2.tint_symbol_2[16u].xxx, r2.xyz, r0.www);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = sin(r2.xyzx.xyz);
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = fma(r2.xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(5u) v5 : vec3<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0, v1, v2, v5, v7, v8);
  return o0;
}
