diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = (cb6_6.tint_symbol[14u].zw * vec2<f32>(-1.0f, -0.25f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.z = 0.0f;
  let v_1 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_1[4u].xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r0.w = (r1.y * cb11_11.tint_symbol_1[1u].w);
  r1.x = (r1.x * cb11_11.tint_symbol_1[0u].w);
  let v_3 = (r0.www * cb11_11.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = fma(r1.xxx, cb11_11.tint_symbol_1[0u].xyz, r1.yzw);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = -(cb11_11.tint_symbol_1[2u].xyzx);
  let v_6 = (r1.xyz + v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r2 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_1[3u].w + 1.0f);
  r0.w = ((-(r2.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_1[2u].w / r0.w);
  let v_7 = fma(r1.xyz, r0.www, cb11_11.tint_symbol_1[3u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol[0u].wwww, cb6_6.tint_symbol[1u].wwww).w, 0.0f, 1.0f);
  let v_8 = (r1.yyy * cb6_6.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r1.xxx, cb6_6.tint_symbol[0u].xyz, r2.xyz);
  r1 = vec4<f32>(v_9.xy, r1.z, v_9.z);
  let v_10 = fma(r1.zzz, cb6_6.tint_symbol[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r1.zxy, cb6_6.tint_symbol[7u].zxy, cb6_6.tint_symbol[11u].zxy);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r1.yzx, vec3<f32>(1.0f, 0.25f, 1.0f), vec3<f32>(0.5f, 0.875f, 0.0f));
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = r0.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_14.xy, r0.z);
  let v_15 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(0.0f, -0.25f));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  r3.z = 0.0f;
  let v_16 = (r2.xyz + r3.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = r3.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_17.xy, r3.z);
  let v_18 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(1.0f, -0.25f));
  r3 = vec4<f32>(v_18.xy, r3.zw);
  r3.z = 0.0f;
  let v_19 = (r2.xyz + r3.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = r3.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_20.xy, r3.z);
  let v_21 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(-1.0f, 0.0f));
  r3 = vec4<f32>(v_21.xy, r3.zw);
  r3.z = 0.0f;
  let v_22 = (r2.xyz + r3.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = r3.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_23.xy, r3.z);
  let v_24 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(1.0f, 0.0f));
  r4 = vec4<f32>(v_24.xy, r4.zw);
  r4.z = 0.0f;
  let v_25 = (r2.xyz + r4.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  let v_26 = r4.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_26.xy, r4.z);
  let v_27 = abs(r1.zzzz);
  r1.y = max(v_27.y, abs(r1.yyyy).y);
  r1.y = (r1.y + -0.44999998807907104492f);
  r1.y = clamp(((r1.yyyy * vec4<f32>(15.0f))).y, 0.0f, 1.0f);
  let v_28 = r2.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_28.xy, r1.x);
  let v_29 = (r0.xyz + r3.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(-1.0f, 0.25f));
  r3 = vec4<f32>(v_30.xy, r3.zw);
  r3.z = 0.0f;
  let v_31 = (r2.xyz + r3.xyz);
  r1 = vec4<f32>(v_31.x, r1.y, v_31.yz);
  let v_32 = r1.xzxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_32.xy, r1.w);
  let v_33 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(0.0f, 0.25f));
  r4 = vec4<f32>(v_33.xy, r4.zw);
  r4.z = 0.0f;
  let v_34 = (r2.xyz + r4.xyz);
  r1 = vec4<f32>(v_34.x, r1.y, v_34.yz);
  let v_35 = r1.xzxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_35.xy, r1.w);
  let v_36 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(1.0f, 0.25f));
  r4 = vec4<f32>(v_36.xy, r4.zw);
  r4.z = 0.0f;
  let v_37 = (r2.xyz + r4.xyz);
  r1 = vec4<f32>(v_37.x, r1.y, v_37.yz);
  let v_38 = r1.xzxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_38.xy, r1.w);
  let v_39 = (r0.xyz + r3.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.0f));
  r0.x = fma(r0.x, 0.11111111193895339966f, r0.w);
  o0 = (r1.yyyy + r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
