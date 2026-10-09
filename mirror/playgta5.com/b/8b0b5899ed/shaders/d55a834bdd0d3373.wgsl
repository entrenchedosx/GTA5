diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  r0 = textureSample(t5, s5, v2.xy.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r1 = (v2.xy.xyxy * cb5_5.tint_symbol_1[0u].zwzw);
  r1 = round(r1);
  let v = (r1.zw * cb5_5.tint_symbol_1[0u].xy);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r2 = fma(cb5_5.tint_symbol_1[0u].xyxy, vec4<f32>(0.5f, -0.5f, -0.5f, 0.5f), r0.yzyz);
  r3 = textureSample(t8, s8, r2.xyxx.xy).yxzw;
  r4 = textureSample(t8, s8, r2.zwzz.xy);
  r3.z = r4.x;
  r4 = (cb5_5.tint_symbol_1[0u].xyxy * vec4<f32>(-0.5f, -0.5f, 0.5f, 0.5f));
  r5 = fma(r1, cb5_5.tint_symbol_1[0u].xyxy, r4);
  let v_2 = fma((-(r1.zzwz)).yz, cb5_5.tint_symbol_1[0u].xy, v2.xy);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  let v_4 = (r0.yz / r4.zw);
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = fma(r0.yz, vec2<f32>(0.5f), vec2<f32>(0.5f));
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1 = textureSample(t8, s8, r5.xyxx.xy);
  r3.x = r1.x;
  r1 = textureSample(t8, s8, r5.zwzz.xy);
  r3.w = r1.x;
  r1 = (-(r3) + vec4<f32>(1.0f));
  r1 = (-(r0.xxxx) + r1);
  r1 = (abs(r1) / cb5_5.tint_symbol_1[4u].xxxx);
  r1 = (r1 * r1);
  r1 = (r1 * vec4<f32>(-0.72134751081466674805f));
  r1 = exp2(r1);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r1 < vec4<f32>(0.00000999999974737875f))));
  let v_8 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r3.zw) & bitcast<vec2<u32>>(r3.xy)));
  r0 = vec4<f32>(v_8.x, r0.yz, v_8.y);
  r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
  let v_9 = bitcast<vec4<u32>>(r0.xxxx);
  r1 = select(r1, vec4<f32>(1.0f), (v_9 != vec4<u32>()));
  r0.x = ((-(r0.yyyy)).x + 1.0f);
  r0.x = ((-(r0.zzzz)).x + r0.x);
  r3.x = fma(r0.y, r0.z, r0.x);
  r3.w = (r0.z * r0.y);
  let v_10 = fma((-(r0.yyyy)).yz, r0.zz, r0.yz);
  let v_11 = r3;
  r3 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r0 = (r1 * r3);
  r1 = textureSampleLevel(t4, s4, r2.xyxx.xy, 0.0f);
  r2 = textureSampleLevel(t4, s4, r2.zwzz.xy, 0.0f);
  r1 = (r0.yyyy * r1);
  r3 = textureSampleLevel(t4, s4, r5.xyxx.xy, 0.0f);
  r4 = textureSampleLevel(t4, s4, r5.zwzz.xy, 0.0f);
  r1 = fma(r3, r0.xxxx, r1);
  r1 = fma(r2, r0.zzzz, r1);
  r1 = fma(r4, r0.wwww, r1);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r0.x))));
  let v_12 = bitcast<u32>(r0.y);
  r0.x = select(1.0f, r0.x, (v_12 != 0u));
  r0 = (r1 / r0.xxxx);
  let v_13 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_13.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
