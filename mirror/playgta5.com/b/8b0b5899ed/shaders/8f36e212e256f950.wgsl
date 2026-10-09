diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t8, s8, v1.xyxx.xy);
  let v = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r1 = vec4<f32>(v.xyz, r1.w);
  let v_1 = fract(r1.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma((-(r1.yzyy)).xy, vec2<f32>(0.125f), r1.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = fma(r0.xyz, vec3<f32>(256.0f), r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_5 = fma(r0.zz, r0.xx, vec2<f32>(-0.17647059261798858643f, -0.44999998807907104492f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.81818187236785888672f))).y, 0.0f, 1.0f);
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  let v_6 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(r0.xy, v_6.xy);
  let v_7 = r0.zw;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)));
  r0.z = bitcast<f32>((bitcast<u32>(r1.y) & 8u));
  r0.w = f32(bitcast<u32>(r1.y));
  r0.w = (r0.w * 0.125f);
  r0.w = fract(r0.w);
  r0.z = f32(bitcast<u32>(r0.z));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 8.0f)));
  r0.z = select(1.0f, 0.0f, (bitcast<u32>(r0.z) != 0u));
  let v_10 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  r1 = textureSample(t10, s10, v1.xyxx.xy);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  r0.z = (r1.x * r2.x);
  r0.z = dot(r0.zz, r0.zz);
  let v_11 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r0.x = (r0.x * 0.80000001192092895508f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.01250000018626451492f >= r0.w)));
  let v_12 = fma(r0.ww, vec2<f32>(8.0f), vec2<f32>(-4.0f, -3.0f));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  let v_13 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.10000000149011611938f) >= abs(r1.xyxx).xy)));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r1.x)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r0.y = (r0.z * r0.y);
  r2 = textureSample(t7, s7, v1.xyxx.xy);
  let v_14 = (r2.xyz * r2.xyz);
  r1 = vec4<f32>(v_14.x, r1.y, v_14.yz);
  let v_15 = fma((-(r2.xyzx)).xyz, r2.xyz, vec3<f32>(0.87999999523162841797f));
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = fma(r0.yyy, r2.xyz, r1.xzw);
  r0 = vec4<f32>(r0.x, v_16.xyz);
  let v_17 = fma(r0.xxx, r2.xyz, r1.xzw);
  r1 = vec4<f32>(v_17.x, r1.y, v_17.yz);
  let v_18 = bitcast<vec3<u32>>(r1.yyy);
  let v_19 = r1.xzw;
  let v_20 = select(r0.yzw, v_19, (v_18 != vec3<u32>()));
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_21.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
