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

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb4_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb6_struct;

struct cb258_struct {
  tint_symbol_3 : array<vec4<f32>, 258u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb258_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = (v3 * vec4<f32>(255.001953125f));
  let v = r0;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (254i < bitcast<i32>(r0.z))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = dot(cb11_11.tint_symbol_3[0u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r1.y = dot(cb11_11.tint_symbol_3[1u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r1.z = dot(cb11_11.tint_symbol_3[2u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.x = dot(cb11_11.tint_symbol_3[0u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r2.y = dot(cb11_11.tint_symbol_3[1u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r2.z = dot(cb11_11.tint_symbol_3[2u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.x = dot(cb11_11.tint_symbol_3[0u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r3.y = dot(cb11_11.tint_symbol_3[1u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r3.z = dot(cb11_11.tint_symbol_3[2u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_2 = -(r2.zxyz);
    let v_3 = (r1.zxy + v_2.xyz);
    r4 = vec4<f32>(v_3.xyz, r4.w);
    let v_4 = ((-(r2.yzxy)).xyz + r3.yzx);
    r5 = vec4<f32>(v_4.xyz, r5.w);
    let v_5 = (r4.xyz * r5.xyz);
    r6 = vec4<f32>(v_5.xyz, r6.w);
    let v_6 = -(r6.xyzx);
    let v_7 = fma(r4.zxy, r5.yzx, v_6.xyz);
    r4 = vec4<f32>(v_7.xyz, r4.w);
    r1.w = dot(r4.xyz, r4.xyz);
    r1.w = inverseSqrt(r1.w);
    let v_8 = (r1.www * r4.xyz);
    r4 = vec4<f32>(v_8.xyz, r4.w);
    let v_9 = (r2.xyz * v2.yyy);
    r2 = vec4<f32>(v_9.xyz, r2.w);
    let v_10 = fma(v2.zzz, r1.xyz, r2.xyz);
    r1 = vec4<f32>(v_10.xyz, r1.w);
    let v_11 = fma(v2.xxx, r3.xyz, r1.xyz);
    r1 = vec4<f32>(v_11.xyz, r1.w);
    r1.w = (v2.w + -0.5f);
    r1.w = (r1.w * 0.10000000149011611938f);
    let v_12 = -(r4.xyzx);
    let v_13 = fma(r1.www, v_12.xyz, r1.xyz);
    r1 = vec4<f32>(v_13.xyz, r1.w);
  } else {
    r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
    r2 = (v2.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
    r3 = (v2.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
    r4 = (v2.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
    r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v2.xxxx, r2);
    r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v2.xxxx, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v2.xxxx, r4);
    r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v2.zzzz, r2);
    r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v2.zzzz, r3);
    r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v2.zzzz, r4);
    r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v2.wwww, r2);
    r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v2.wwww, r3);
    r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v2.wwww, r4);
    r4 = vec4<f32>(v0.xyz, r4.w);
    r4.w = 1.0f;
    r1.x = dot(r2, r4);
    r1.y = dot(r3, r4);
    r1.z = dot(r0, r4);
  }
  let v_14 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = fma(r1.zzz, cb1_1.tint_symbol_1[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r0.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = -(cb6_6.tint_symbol_2[0u].xyzx);
  let v_19 = (r0.xyz + v_18.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r1 = (r0.yyyy * cb6_6.tint_symbol_2[3u]);
  r1 = fma(r0.xxxx, cb6_6.tint_symbol_2[2u], r1);
  r1 = fma(r0.zzzz, cb6_6.tint_symbol_2[4u], r1);
  o0 = (r1 + cb6_6.tint_symbol_2[5u]);
  o1 = r0.xyz.xyzx;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v2, v3);
  return tint_symbol_4(o0, o1);
}
