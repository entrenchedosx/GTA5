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

struct cb21_struct {
  tint_symbol_2 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_2[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_2[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_2[20u].xyz);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol_2[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_2[17u].z / r0.z);
  let v_1 = fma(r2.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = -(cb12_12.tint_symbol_2[0u].xyzx);
  let v_3 = (r1.xyz + v_2.xyz);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  r0.z = dot(r3.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r0.z = clamp(((r0.zzzz / cb12_12.tint_symbol_2[5u].xxxx)).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb12_12.tint_symbol_2[5u].x);
  let v_4 = fma(cb12_12.tint_symbol_2[1u].xyz, r0.zzz, cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = ((-(r1.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r2.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r2.w = fma(r2.w, r0.w, cb12_12.tint_symbol_2[7u].x);
  r0.w = (r0.w / r2.w);
  r1.w = 1.0f;
  r1.x = dot(r1, cb12_12.tint_symbol_2[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r0.w = (r0.w * r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  v_6((bitcast<u32>(r1.x) != 0u));
  let v_7 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r1.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = bitcast<vec4<f32>>(textureLoad(t11, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & 8u));
  r1.x = f32(bitcast<u32>(r1.x));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 8.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_11 = (r4.xyz * r4.xyz);
  r1 = vec4<f32>(r1.x, v_11.xyz);
  r4 = textureSample(t9, s9, r0.xyxx.xy);
  r2.w = (r4.x * r4.x);
  r5 = textureSample(t8, s8, r0.xyxx.xy);
  let v_12 = (r5.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_12.xy, r4.z, v_12.z);
  let v_13 = fract(r4.xyw);
  r4 = vec4<f32>(v_13.xy, r4.z, v_13.z);
  let v_14 = fma((-(r4.ywyy)).xy, vec2<f32>(0.125f), r4.xy);
  r4 = vec4<f32>(v_14.xy, r4.zw);
  let v_15 = fma(r5.xyz, vec3<f32>(256.0f), r4.xyw);
  r4 = vec4<f32>(v_15.xy, r4.z, v_15.z);
  let v_16 = (r4.xyw + vec3<f32>(-128.0f));
  r4 = vec4<f32>(v_16.xy, r4.z, v_16.z);
  r0.x = dot(r4.xyw, r4.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_17 = (r0.xxx * r4.xyw);
  r4 = vec4<f32>(v_17.xy, r4.z, v_17.z);
  r0.x = min(r2.w, 1.0f);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_18 = (r0.yyy * r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r0.y = inverseSqrt(r0.z);
  let v_19 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r0.y = (r0.w * r1.x);
  let v_20 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = dot(r4.xyw, r3.xyz);
  r0.z = clamp(vec4<f32>(v_21, v_21, v_21, v_21).z, 0.0f, 1.0f);
  let v_22 = dot((-(r2.xyzx)).xyz, r4.xyw);
  r0.w = clamp(vec4<f32>(v_22, v_22, v_22, v_22).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = (r0.w * r0.w);
  r1.x = (r1.x * r1.x);
  r0.w = (r0.w * r1.x);
  r1.x = ((-(r4.zzzz)).x + 1.0f);
  r0.w = fma(r4.z, r0.w, r1.x);
  r0.x = fma((-(r0.xxxx)).x, r0.w, 1.0f);
  r0.x = (r0.x * r0.z);
  let v_23 = (r0.xxx * r1.yzw);
  r0 = vec4<f32>(v_23.x, r0.y, v_23.yz);
  let v_24 = (r5.xyz * r0.xzw);
  r0 = vec4<f32>(v_24.x, r0.y, v_24.yz);
  let v_25 = (r0.yyy * r0.xzw);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_26.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_6(v_27 : bool) {
  if (v_27) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
