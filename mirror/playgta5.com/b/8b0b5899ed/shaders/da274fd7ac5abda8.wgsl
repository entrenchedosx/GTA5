diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb25_struct {
  tint_symbol_1 : array<vec4<f32>, 25u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb25_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0.x = dot(v2, v2);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(cb12_12.tint_symbol_1[12u].xyzx);
  r0.w = dot(r0.xyz, v_1.xyz);
  r0.x = dot(r0.xyz, cb12_12.tint_symbol_1[24u].yzw);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 0.00054475001525133848f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.y = fma((-(cb12_12.tint_symbol_1[11u].xxxx)).y, r0.w, cb12_12.tint_symbol_1[11u].y);
  r0.z = fma(r0.w, r0.w, 1.0f);
  r0.y = log2(abs(r0.yyyy).y);
  r0.y = (r0.y * 1.5f);
  r0.y = exp2(r0.y);
  r0.y = (r0.z / r0.y);
  r0.z = (r0.y * cb12_12.tint_symbol_1[11u].z);
  r0.y = clamp(fma(-(r0.yyyy), cb12_12.tint_symbol_1[11u].zzzz, vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r0.z = clamp(r0.zzzz.z, 0.0f, 1.0f);
  let v_2 = (r0.zzz * cb12_12.tint_symbol_1[9u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r1.xyz * cb12_12.tint_symbol_1[11u].www);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fma(v3.xyz, r0.yyy, r1.xyz);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  r1 = textureSample(t5, s5, v6.xy.xyxx.xy);
  let v_5 = clamp(fma(r1.xyzx, vec4<f32>(2.0f, 2.0f, 2.0f, 0.0f), vec4<f32>(-0.10000000149011611938f, -0.10000000149011611938f, -0.10000000149011611938f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r1.xyz * cb12_12.tint_symbol_1[24u].xxx);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(r1.xyz, r0.xxx, r0.yzw);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = ((-(r0.xyzx)).xyz + v7.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v7.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r1 = textureSample(t6, s6, v5.xyxx.xy);
  r0.w = (r1.x + -0.5f);
  let v_10 = fma(r0.www, vec3<f32>(0.00009999999747378752f), r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_11.xyz, o0.w);
  o0.w = clamp(v2.w, 0.0f, 1.0f);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2, v3, v5, v6, v7);
  return o0;
}
