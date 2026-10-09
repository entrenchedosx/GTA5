diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_1[4u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.y = (r0.y * cb11_11.tint_symbol_1[1u].w);
  r0.x = (r0.x * cb11_11.tint_symbol_1[0u].w);
  let v_2 = (r0.yyy * cb11_11.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(r0.xxx, cb11_11.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = -(cb11_11.tint_symbol_1[2u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_1[3u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_1[2u].w / r0.w);
  let v_6 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol[0u].wwww, cb6_6.tint_symbol[1u].wwww).w, 0.0f, 1.0f);
  let v_7 = (r0.yyy * cb6_6.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(r0.xxx, cb6_6.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.zzz, cb6_6.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(r1.xyz, cb6_6.tint_symbol[7u].xyz, cb6_6.tint_symbol[11u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r2.x = (r1.x + cb6_6.tint_symbol[14u].z);
  let v_11 = fma(r1.yz, vec2<f32>(0.25f, 1.0f), vec2<f32>(0.875f, 0.0f));
  let v_12 = r2;
  r2 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = abs(r1.yyyy);
  r1.x = max(v_13.x, abs(r1.xxxx).x);
  r1.x = (r1.x + -0.44999998807907104492f);
  r1.x = clamp(((r1.xxxx * vec4<f32>(15.0f))).x, 0.0f, 1.0f);
  let v_14 = (r2.xz + vec2<f32>(0.5f, 0.0f));
  let v_15 = r3;
  r3 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
  r3.y = fma(cb6_6.tint_symbol[14u].w, 0.25f, r2.y);
  let v_16 = r3.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_16.xy, r3.z);
  r0.w = (r0.w + r1.y);
  r0.w = (r1.x + r0.w);
  r1.x = (-(cb11_11.tint_symbol_1[5u].wwww)).x;
  let v_17 = r1;
  r1 = vec4<f32>(v_17.x, 0.0f, v_17.z, 0.5f);
  let v_18 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r1.xy);
  r0 = vec4<f32>(v_18.xy, r0.zw);
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol[3u].xxxx, cb6_6.tint_symbol[3u].yyyy).z, 0.0f, 1.0f);
  r0.z = sqrt(r0.z);
  r0.z = fma((-(r0.zzzz)).z, cb6_6.tint_symbol[3u].z, 1.0f);
  r2 = textureSample(t5, s5, r0.xyxx.xy);
  r1.z = r2.y;
  r1 = textureSample(t6, s6, r1.zwzz.xy);
  r0.x = (r0.z * r1.x);
  r0.x = (r0.x * r0.w);
  o0 = min(r0.xxxx, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
