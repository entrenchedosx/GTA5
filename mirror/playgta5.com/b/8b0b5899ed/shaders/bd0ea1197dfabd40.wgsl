diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : u32) {
  r0.x = (v3.w * v3.w);
  r0.x = (1.0f / r0.x);
  let v = r0;
  r0 = vec4<f32>(v.x, ((v1.xy / v1.ww)).xy, v.w);
  let v_1 = (r0.yz * cb2_2.tint_symbol_1[18u].xy);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = r0.yz;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.y = textureLoad(t12, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v6)).x;
  r0.y = ((-(r0.yyyy)).y + cb12_12.tint_symbol_2[17u].w);
  r0.y = (r0.y + 1.0f);
  r0.y = (cb12_12.tint_symbol_2[17u].z / r0.y);
  r2 = vec4<f32>(((v2.xyz / v2.www)).xyz, r2.w);
  let v_6 = fma(r2.xyz, r0.yyy, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = ((-(r0.yyzw)).yzw + v3.xyz);
  r0 = vec4<f32>(r0.x, v_7.xyz);
  r2.w = dot(r0.yzw, r0.yzw);
  r0.x = fma((-(r2.wwww)).x, r0.x, 1.0f);
  r0.x = max(r0.x, 0.0f);
  r3.x = ((-(v4.xy.yyyy)).x + 1.0f);
  r3.x = fma(r3.x, r0.x, v4.y);
  r0.x = (r0.x / r3.x);
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.00000099999999747524f)));
  v_8((bitcast<u32>(r3.x) != 0u));
  r3.x = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v6)).y);
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 8u));
  r3.x = f32(bitcast<u32>(r3.x));
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r3.x >= 8.0f)));
  let v_9 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v6)).xyz;
  r3 = vec4<f32>(r3.x, v_9.xyz);
  let v_10 = (r3.yzw * r3.yzw);
  r3 = vec4<f32>(r3.x, v_10.xyz);
  let v_11 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v6)).xz;
  r4 = vec4<f32>(v_11.xy, r4.zw);
  r4.x = (r4.x * r4.x);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v6));
  let v_12 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = fract(r5.xyz);
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_14.xy, r5.zw);
  let v_15 = fma(r1.xyz, vec3<f32>(256.0f), r5.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r1.w = min(r4.x, 1.0f);
  r2.w = inverseSqrt(r2.w);
  let v_18 = (r0.yzw * r2.www);
  r0 = vec4<f32>(r0.x, v_18.xyz);
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_19 = (r2.www * r2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  r2.w = select(1.0f, 0.0f, (bitcast<u32>(r3.x) != 0u));
  r0.x = (r0.x * r2.w);
  let v_20 = (v4.xy.xxx * v5.xyz);
  r4 = vec4<f32>(v_20.x, r4.y, v_20.yz);
  let v_21 = dot(r1.xyz, r0.yzw);
  r0.y = clamp(vec4<f32>(v_21, v_21, v_21, v_21).y, 0.0f, 1.0f);
  let v_22 = dot((-(r2.xyzx)).xyz, r1.xyz);
  r0.z = clamp(vec4<f32>(v_22, v_22, v_22, v_22).z, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.w = (r0.z * r0.z);
  r0.w = (r0.w * r0.w);
  r0.z = (r0.z * r0.w);
  r0.w = ((-(r4.yyyy)).w + 1.0f);
  r0.z = fma(r4.y, r0.z, r0.w);
  r0.z = fma((-(r1.wwww)).z, r0.z, 1.0f);
  r0.y = (r0.z * r0.y);
  let v_23 = (r0.yyy * r3.yzw);
  r0 = vec4<f32>(r0.x, v_23.xyz);
  let v_24 = (r4.xzw * r0.yzw);
  r0 = vec4<f32>(r0.x, v_24.xyz);
  let v_25 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_26.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_8(v_27 : bool) {
  if (v_27) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @builtin(sample_index) v6 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6);
  return o0;
}
