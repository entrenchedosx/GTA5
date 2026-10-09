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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : u32) {
  r0.x = (v3.w * v3.w);
  r0.x = (1.0f / r0.x);
  r0.y = (v5.z * (-(v5.xxxx)).y);
  r0 = vec4<f32>(r0.xy, ((v1.xy / v1.ww)).xy);
  let v = (r0.zw * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(r0.xy, v.xy);
  let v_1 = r0.zw;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t12, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v7)).x;
  r0.z = ((-(r0.zzzz)).z + cb12_12.tint_symbol_2[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_2[17u].z / r0.z);
  r2 = vec4<f32>(((v2.xyz / v2.www)).xyz, r2.w);
  let v_4 = fma(r2.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = ((-(r3.xyzx)).xyz + v3.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.z);
  let v_6 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r0.x = fma((-(r0.zzzz)).x, r0.x, 1.0f);
  r0.x = max(r0.x, 0.0f);
  r0.z = ((-(v4.wwww)).z + 1.0f);
  r0.z = fma(r0.z, r0.x, v4.w);
  r0.x = (r0.x / r0.z);
  r0.z = dot(r3.xyz, (-(v4.xyzx)).xyz);
  r0.y = clamp(fma(r0.zzzz, v5.zzzz, r0.yyyy).y, 0.0f, 1.0f);
  r0.x = (r0.y * r0.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.00000099999999747524f)));
  v_7((bitcast<u32>(r0.y) != 0u));
  r0.y = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v7)).y);
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 8u));
  r0.y = f32(bitcast<u32>(r0.y));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 8.0f)));
  let v_8 = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v7)).xyz;
  r4 = vec4<f32>(v_8.xyz, r4.w);
  let v_9 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = textureLoad(t9, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v7)).xz;
  r0 = vec4<f32>(r0.xy, v_10.xy);
  r0.z = (r0.z * r0.z);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v7));
  let v_11 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_11.xyz, r5.w);
  let v_12 = fract(r5.xyz);
  r5 = vec4<f32>(v_12.xyz, r5.w);
  let v_13 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_13.xy, r5.zw);
  let v_14 = fma(r1.xyz, vec3<f32>(256.0f), r5.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_16 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r0.z = min(r0.z, 1.0f);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_17 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.y) != 0u));
  r0.x = (r0.y * r0.x);
  r5 = vec4<f32>(((v5.www * v6.xyz)).xyz, r5.w);
  let v_18 = dot(r1.xyz, r3.xyz);
  r0.y = clamp(vec4<f32>(v_18, v_18, v_18, v_18).y, 0.0f, 1.0f);
  let v_19 = dot((-(r2.xyzx)).xyz, r1.xyz);
  r1.x = clamp(vec4<f32>(v_19, v_19, v_19, v_19).x, 0.0f, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.y = (r1.x * r1.x);
  r1.y = (r1.y * r1.y);
  r1.x = (r1.x * r1.y);
  r1.y = ((-(r0.wwww)).y + 1.0f);
  r0.w = fma(r0.w, r1.x, r1.y);
  r0.z = fma((-(r0.zzzz)).z, r0.w, 1.0f);
  r0.y = (r0.z * r0.y);
  let v_20 = (r0.yyy * r4.xyz);
  r0 = vec4<f32>(r0.x, v_20.xyz);
  let v_21 = (r5.xyz * r0.yzw);
  r0 = vec4<f32>(r0.x, v_21.xyz);
  let v_22 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_23.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_7(v_24 : bool) {
  if (v_24) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @builtin(sample_index) v7 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6, v7);
  return o0;
}
