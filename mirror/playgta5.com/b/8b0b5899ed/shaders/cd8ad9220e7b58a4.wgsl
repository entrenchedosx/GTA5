diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb2_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

struct cb258_struct {
  tint_symbol_5 : array<vec4<f32>, 258u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb258_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v8 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (254i < bitcast<i32>(r0.z))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r3.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r4.x = dot(cb11_11.tint_symbol_5[0u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.y = dot(cb11_11.tint_symbol_5[1u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.z = dot(cb11_11.tint_symbol_5[2u].xyz, cb11_11.tint_symbol_5[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_2 = -(r3.zzxy);
    let v_3 = (r2.zxy + v_2.yzw);
    r1 = vec4<f32>(r1.x, v_3.xyz);
    let v_4 = ((-(r3.yzxy)).xyz + r4.yzx);
    r5 = vec4<f32>(v_4.xyz, r5.w);
    let v_5 = (r1.yzw * r5.xyz);
    r6 = vec4<f32>(v_5.xyz, r6.w);
    let v_6 = -(r6.xxyz);
    let v_7 = fma(r1.wyz, r5.yzx, v_6.yzw);
    r1 = vec4<f32>(r1.x, v_7.xyz);
    r2.w = dot(r1.yzw, r1.yzw);
    r2.w = inverseSqrt(r2.w);
    let v_8 = (r1.yzw * r2.www);
    r1 = vec4<f32>(r1.x, v_8.xyz);
    let v_9 = (r3.xyz * v1.yyy);
    r3 = vec4<f32>(v_9.xyz, r3.w);
    let v_10 = fma(v1.zzz, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_10.xyz, r2.w);
    let v_11 = fma(v1.xxx, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_11.xyz, r2.w);
    r2.w = (v1.w + -0.5f);
    r2.w = (r2.w * 0.10000000149011611938f);
    let v_12 = -(r1.yyzw);
    let v_13 = fma(r2.www, v_12.yzw, r2.xyz);
    r1 = vec4<f32>(r1.x, v_13.xyz);
  } else {
    r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
    r2 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
    r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
    r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
    r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r2);
    r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r4);
    r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r2);
    r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r4);
    r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r2);
    r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r3);
    r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r4);
    let v_14 = bitcast<vec4<u32>>(r1.xxxx);
    let v_15 = cb4_4.tint_symbol[0u];
    r2 = select(r2, v_15, (v_14 != vec4<u32>()));
    let v_16 = bitcast<vec4<u32>>(r1.xxxx);
    let v_17 = cb4_4.tint_symbol[1u];
    r3 = select(r3, v_17, (v_16 != vec4<u32>()));
    let v_18 = bitcast<vec4<u32>>(r1.xxxx);
    let v_19 = cb4_4.tint_symbol[2u];
    r0 = select(r0, v_19, (v_18 != vec4<u32>()));
    r4 = vec4<f32>(v0.xyz, r4.w);
    r4.w = 1.0f;
    r1.y = dot(r2, r4);
    r1.z = dot(r3, r4);
    r1.w = dot(r0, r4);
  }
  let v_20 = (v8.xxz * cb8_8.tint_symbol_4[0u].xxy);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = (r0.xyz * cb13_13.tint_symbol_3[1u].xxy);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.w = (v8.y * 6.28318500518798828125f);
  let v_22 = (cb13_13.tint_symbol_3[1u].zzw * cb8_8.tint_symbol_4[0u].zzw);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = fma(cb2_2.tint_symbol_2[16u].xxx, r2.xyz, r0.www);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = sin(r2.xyzx.xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = fma(r2.xyz, r0.xyz, r1.yzw);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> @builtin(position) vec4<f32> {
  main_inner(v0, v1, v2, v8);
  return o0;
}
