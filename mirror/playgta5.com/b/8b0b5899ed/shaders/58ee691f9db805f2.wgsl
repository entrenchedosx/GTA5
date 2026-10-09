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
  let v = (cb6_6.tint_symbol[14u].zw * vec2<f32>(0.375f, 0.09375f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (-(r0.xyxx)).xy;
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_1[4u].xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = (r1.y * cb11_11.tint_symbol_1[1u].w);
  r1.x = (r1.x * cb11_11.tint_symbol_1[0u].w);
  let v_4 = (r0.www * cb11_11.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = fma(r1.xxx, cb11_11.tint_symbol_1[0u].xyz, r1.yzw);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = -(cb11_11.tint_symbol_1[2u].xyzx);
  let v_7 = (r1.xyz + v_6.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r2 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_1[3u].w + 1.0f);
  r0.w = ((-(r2.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_1[2u].w / r0.w);
  let v_8 = fma(r1.xyz, r0.www, cb11_11.tint_symbol_1[3u].xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol[0u].wwww, cb6_6.tint_symbol[1u].wwww).w, 0.0f, 1.0f);
  let v_9 = (r1.yyy * cb6_6.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(r1.xxx, cb6_6.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(r1.zzz, cb6_6.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = fma(r2.xyz, cb6_6.tint_symbol[7u].xyz, cb6_6.tint_symbol[11u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r2.xzy + vec3<f32>(0.5f, 0.0f, 3.5f));
  r3 = vec4<f32>(v_13.xyz, r3.w);
  r3.w = (r3.z * 0.25f);
  r0.z = 0.0f;
  let v_14 = (r0.xyz + r3.xwy);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = r0.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_15.xy, r0.z);
  let v_16 = fma(r2.zxy, vec3<f32>(1.0f, 1.0f, 0.25f), vec3<f32>(0.0f, 0.5f, 0.875f));
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = abs(r2.yyyy);
  r0.y = max(v_17.y, abs(r2.xxxx).y);
  r0.y = (r0.y + -0.44999998807907104492f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(15.0f))).y, 0.0f, 1.0f);
  let v_18 = fma(cb6_6.tint_symbol[14u].zw, vec2<f32>(0.375f, 0.09375f), r3.yz);
  r2 = vec4<f32>(v_18.xy, r2.zw);
  let v_19 = r2.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_19.xy, r3.x);
  r0.x = (r0.z + r0.x);
  r0.x = fma(r0.x, 0.5f, r0.w);
  r0.x = (r0.y + r0.x);
  r2.x = (-(cb11_11.tint_symbol_1[5u].wwww)).x;
  let v_20 = r2;
  r2 = vec4<f32>(v_20.x, 0.0f, v_20.z, 0.5f);
  let v_21 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  let v_22 = r0;
  r0 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol[3u].xxxx, cb6_6.tint_symbol[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol[3u].z, 1.0f);
  r1 = textureSample(t5, s5, r0.yzyy.xy);
  r2.z = r1.y;
  r1 = textureSample(t6, s6, r2.zwzz.xy);
  r0.y = (r0.w * r1.x);
  o0 = (r0.yyyy * r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
