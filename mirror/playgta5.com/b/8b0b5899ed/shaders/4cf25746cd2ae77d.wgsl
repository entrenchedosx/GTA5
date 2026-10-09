diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb18_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct_1;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb3_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  x0[0u].x = v7[0u];
  x0[0u].y = v7[1u];
  x0[0u].z = v7[2u];
  x0[0u].w = v7[3u];
  r0 = vec4<f32>(((v1.xyz.xy / v1.xyz.zz)).xy, r0.zw);
  r0.x = textureSample(t5, s5, r0.xyxx.xy).x;
  r0.y = (cb12_12.tint_symbol_2[17u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb12_12.tint_symbol_2[17u].z / r0.x);
  let v = fma(v3.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = (r0.xxx * v3.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  r0.x = dot(r1.xyz, r1.xyz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (v2.w >= r0.x)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v2.z)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  let v_2 = fma(v0.xyz, v2.yyy, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(r1.x, v_2.xyz);
  let v_3 = bitcast<vec3<u32>>(r1.xxx);
  let v_4 = r0.yzw;
  let v_5 = select(r1.yzw, v_4, (v_3 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = fma(v0.xyz, v2.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = -(r1.xxyz);
  let v_8 = (r0.yzw + v_7.yzw);
  r0 = vec4<f32>(r0.x, v_8.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  let v_9 = -(cb11_11.tint_symbol_3[2u].xxxx);
  r0.y = (r0.y * v_9.y);
  r0.y = (r0.y * 1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = (r0.y * v3.w);
  o0.w = (r0.x * r0.y);
  let v_10 = (v4.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_10.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4);
  return o0;
}
