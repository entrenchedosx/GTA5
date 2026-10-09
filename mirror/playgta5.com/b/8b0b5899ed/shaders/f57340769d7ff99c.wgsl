diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_cube<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = -(cb1_1.tint_symbol[15u].xyzx);
  r0 = vec4<f32>(((v2.xyz + v.xyz)).xyz, r0.w);
  let v_1 = (v.xyz + cb12_12.tint_symbol_1[4u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = dot(r0.xyz, r1.xyz);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = fma((-(cb12_12.tint_symbol_1[4u].wwww)).x, cb12_12.tint_symbol_1[4u].w, r1.x);
  r1.x = (r0.w * r1.x);
  let v_2 = -(r1.xxxx);
  r1.x = fma(r1.w, r1.w, v_2.x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = sqrt(r1.x);
  r1.x = ((-(r1.xxxx)).x + r1.w);
  r0.w = (r1.x / r0.w);
  let v_3 = fma(r0.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_3.x, r1.y, v_3.yz);
  let v_4 = -(cb12_12.tint_symbol_1[4u].xxyz);
  let v_5 = (r1.xzw + v_4.xzw);
  r1 = vec4<f32>(v_5.x, r1.y, v_5.yz);
  r0.w = dot(r1.xzw, r1.xzw);
  r0.w = inverseSqrt(r0.w);
  let v_6 = (r0.www * r1.xzw);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r2.w = dot(r0.xyz, r2.xyz);
  r2.w = (r2.w + r2.w);
  let v_7 = -(r2.wwww);
  let v_8 = fma(r2.xyz, v_7.xyz, r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma((-(r1.xzwx)).xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(cb12_12.tint_symbol_1[5u].xxx, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = -(r0.xyzx);
  r2.x = dot(cb12_12.tint_symbol_1[0u].xyz, v_11.xyz);
  let v_12 = -(r0.xyzx);
  r2.y = dot(cb12_12.tint_symbol_1[1u].xyz, v_12.xyz);
  let v_13 = -(r0.xyzx);
  r2.z = dot(cb12_12.tint_symbol_1[2u].xyz, v_13.xyz);
  r0 = textureSample(t2, s2, r2.xyzx.xyz);
  if ((bitcast<u32>(r1.y) != 0u)) {
    let v_14 = cb12_12.tint_symbol_1[5u].y;
    r1 = textureSampleLevel(t2, s2, r2.xyzx.xyz, v_14);
    let v_15 = ((-(r0.xyzx)).xyz + r1.xyz);
    r1 = vec4<f32>(v_15.xyz, r1.w);
    let v_16 = fma(cb12_12.tint_symbol_1[5u].www, r1.xyz, r0.xyz);
    r0 = vec4<f32>(v_16.xyz, r0.w);
    let v_17 = (r0.xyz * cb12_12.tint_symbol_1[5u].zzz);
    r0 = vec4<f32>(v_17.xyz, r0.w);
    r0.w = 1.0f;
    o0 = (r0 * v1);
    return;
  }
  o0 = vec4<f32>();
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
