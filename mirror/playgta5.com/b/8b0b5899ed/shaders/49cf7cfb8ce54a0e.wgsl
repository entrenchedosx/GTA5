diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v2.xyz / v2.www)).xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v = -(r0.xyzx);
  let v_1 = -(cb11_11.tint_symbol_1[1u].xyzx);
  let v_2 = fma(v.xyz, r0.www, v_1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = dot(r1.xyz, v_1.xyz);
  r2.y = clamp(vec4<f32>(v_5, v_5, v_5, v_5).y, 0.0f, 1.0f);
  r2 = vec4<f32>(r2.xy, ((v1.xy / v1.ww)).xy);
  let v_6 = (r2.zw * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(r2.xy, v_6.xy);
  let v_7 = r2.zw;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r3 = vec4<f32>(v_9.xy, r3.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r4 = textureLoad(t8, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3));
  let v_10 = (r4.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_10.xyz, r5.w);
  let v_11 = fract(r5.xyz);
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_12.xy, r5.zw);
  let v_13 = fma(r4.xyz, vec3<f32>(256.0f), r5.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = (r4.xyz + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_15 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  let v_16 = dot((-(r0.xyzx)).xyz, r4.xyz);
  r2.x = clamp(vec4<f32>(v_16, v_16, v_16, v_16).x, 0.0f, 1.0f);
  let v_17 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r0 = vec4<f32>(v_17.xy, r0.zw);
  let v_18 = (r0.xy * r0.xy);
  r0 = vec4<f32>(r0.xy, v_18.xy);
  let v_19 = (r0.zw * r0.zw);
  r0 = vec4<f32>(r0.xy, v_19.xy);
  let v_20 = (r0.xy * r0.zw);
  r0 = vec4<f32>(v_20.xy, r0.zw);
  let v_21 = textureLoad(t9, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3)).xyz;
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = textureLoad(t7, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v3)).xyz;
  r3 = vec4<f32>(v_22.xyz, r3.w);
  let v_23 = (r3.xyz * r3.xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  r0.z = ((-(r2.zzzz)).z + 1.0f);
  let v_24 = fma(r2.zz, r0.xy, r0.zz);
  r0 = vec4<f32>(v_24.xy, r0.zw);
  let v_25 = (r2.xy * r2.xy);
  r0 = vec4<f32>(r0.xy, v_25.xy);
  r1.x = dot(r4.xyz, r1.xyz);
  let v_26 = dot(r4.xyz, v_1.xyz);
  r1.y = clamp(vec4<f32>(v_26, v_26, v_26, v_26).y, 0.0f, 1.0f);
  r1.x = clamp(((r1.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r1.x = log2(r1.x);
  r1.z = fma(r0.w, 512.0f, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_27 = -(r1.zzzz);
  r0.w = fma(r0.w, 512.0f, v_27.w);
  r1.z = (r1.z * 558.0f);
  r0.w = fma(r0.w, 3.0f, r1.z);
  let v_28 = (r0.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r1 = vec4<f32>(r1.xy, v_28.xy);
  r0.z = min(r0.z, 1.0f);
  r0.w = (r1.x * r1.w);
  r1.x = (r1.z * 0.125f);
  r0.w = exp2(r0.w);
  r0.y = (r0.y * r0.w);
  r0.x = fma((-(r0.zzzz)).x, r0.x, 1.0f);
  r0.x = (r0.x * r1.y);
  r0.y = (r1.x * r0.y);
  r0.y = (r0.z * r0.y);
  r0.y = (r1.y * r0.y);
  let v_29 = fma(r3.xyz, r0.xxx, r0.yyy);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (r0.xyz * cb11_11.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_31.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
