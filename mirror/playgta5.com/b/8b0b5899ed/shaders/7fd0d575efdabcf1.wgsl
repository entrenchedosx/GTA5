diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb60_struct {
  tint_symbol_2 : array<vec4<f32>, 60u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb60_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0.x = cb3_3.tint_symbol_2[46u].w;
  r0.y = cb3_3.tint_symbol_2[47u].w;
  r0.z = cb3_3.tint_symbol_2[48u].w;
  r0.w = dot(v3.xyz, v3.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = (r0.www * v3.xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r0.w = fma(v3.z, r0.w, cb3_3.tint_symbol_2[43u].w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[44u].w);
  r0.w = max(r0.w, 0.0f);
  let v_1 = dot(r0.xyz, r1.xyz);
  r0.x = clamp(vec4<f32>(v_1, v_1, v_1, v_1).x, 0.0f, 1.0f);
  let v_2 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_3 = dot(r1.xyz, v_2.xyz);
  r0.y = clamp(vec4<f32>(v_3, v_3, v_3, v_3).y, 0.0f, 1.0f);
  let v_4 = fma(cb3_3.tint_symbol_2[43u].xyz, r0.www, cb3_3.tint_symbol_2[44u].xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(cb3_3.tint_symbol_2[49u].xyz, r0.xxx, r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(cb3_3.tint_symbol_2[45u].xyz, r0.www, cb3_3.tint_symbol_2[46u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(cb3_3.tint_symbol_2[47u].xyz, r0.www, cb3_3.tint_symbol_2[48u].xyz);
  r0 = vec4<f32>(v_7.x, r0.y, v_7.yz);
  let v_8 = (r2.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r1.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_9 = fma(r0.xzw, r1.www, r2.xyz);
  r0 = vec4<f32>(v_9.x, r0.y, v_9.yz);
  r2 = clamp(v1, vec4<f32>(), vec4<f32>(1.0f));
  let v_10 = (r2.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = (r0.xzw * r2.yyy);
  r0 = vec4<f32>(v_12.x, r0.y, v_12.yz);
  let v_13 = fma(r1.xyz, r2.xxx, r0.xzw);
  r0 = vec4<f32>(v_13.x, r0.y, v_13.yz);
  r1 = textureSample(t0, s0, v2.xy.xyxx.xy);
  let v_14 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.w = (r2.w * r1.w);
  r2.y = (r2.z * r2.z);
  o0.w = (r1.w * cb2_2.tint_symbol_1[15u].x);
  let v_15 = (r0.xzw * r1.xyz);
  r0 = vec4<f32>(v_15.x, r0.y, v_15.yz);
  let v_16 = (r0.yyy * r1.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r0.y = (r2.x * r2.x);
  r0.y = (r0.y * cb3_3.tint_symbol_2[0u].w);
  let v_17 = (r0.yyy * cb3_3.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = (r3.xyz * r4.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r3.xyz, r2.xxx, r0.xzw);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = (cb2_2.tint_symbol_1[15u].w * cb12_12.tint_symbol_3[0u].x);
  r0.w = (r0.w * r2.y);
  r0.w = (r0.w * cb3_3.tint_symbol_2[59u].w);
  let v_20 = ((-(v4.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_21 = (r1.ww * r2.xy);
  r2 = vec4<f32>(r2.xy, v_21.xy);
  r1.w = dot(r2.xy, r2.xy);
  r1.w = (r1.w + -100.0f);
  r1.w = clamp(((r1.wwww * vec4<f32>(0.00009999999747378752f))).w, 0.0f, 1.0f);
  let v_22 = dot(cb3_3.tint_symbol_2[59u].xy, r2.zw);
  r2.x = clamp(vec4<f32>(v_22, v_22, v_22, v_22).x, 0.0f, 1.0f);
  r1.w = (r1.w + r2.x);
  r1.w = min(r1.w, 1.0f);
  r0.w = (r0.w * r1.w);
  let v_23 = fma(r1.xyz, r0.www, r0.xyz);
  o0 = vec4<f32>(v_23.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
