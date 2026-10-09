diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v3 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_4 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fract(r2.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma((-(r2.yzyy)).xy, vec2<f32>(0.125f), r2.xy);
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = fma(r1.xyz, vec3<f32>(256.0f), r2.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_9 = fma(r1.zz, r1.xx, vec2<f32>(-0.17647059261798858643f, -0.44999998807907104492f));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1.y = clamp(((r1.yyyy * vec4<f32>(1.81818187236785888672f))).y, 0.0f, 1.0f);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  r1.z = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).y);
  r1.w = bitcast<f32>((bitcast<u32>(r1.z) & 8u));
  let v_10 = vec2<f32>(bitcast<vec2<u32>>(r1.zw));
  r1 = vec4<f32>(r1.xy, v_10.xy);
  r1.z = (r1.z * 0.125f);
  r1.z = fract(r1.z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 8.0f)));
  r1.w = select(1.0f, 0.0f, (bitcast<u32>(r1.w) != 0u));
  let v_11 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r0.z = textureLoad(t10, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  let v_12 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r0 = vec4<f32>(v_12.xy, r0.z, v_12.z);
  r1.w = textureSample(t4, s4, v1.xyxx.xy).x;
  r0.z = (r0.z * r1.w);
  r0.z = dot(r0.zz, r0.zz);
  r1.y = (r0.z * r1.y);
  r0.z = (r0.z * r1.x);
  r0.z = (r0.z * 0.80000001192092895508f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.01250000018626451492f >= r1.z)));
  let v_13 = fma(r1.zz, vec2<f32>(8.0f), vec2<f32>(-4.0f, -3.0f));
  r1 = vec4<f32>(r1.xy, v_13.xy);
  let v_14 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.10000000149011611938f) >= abs(r1.zzzw).zw)));
  r1 = vec4<f32>(r1.xy, v_14.xy);
  r1.x = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = (r1.x * r1.y);
  let v_15 = (r0.xyw * r0.xyw);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = fma((-(r0.xyxw)).xyw, r0.xyw, vec3<f32>(0.87999999523162841797f));
  r0 = vec4<f32>(v_16.xy, r0.z, v_16.z);
  let v_17 = fma(r1.xxx, r0.xyw, r2.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = fma(r0.zzz, r0.xyw, r2.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = bitcast<vec3<u32>>(r1.www);
  let v_20 = r0.xyz;
  let v_21 = select(r1.xyz, v_20, (v_19 != vec3<u32>()));
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_22.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
