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

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_2[17u].z / r1.x);
  r1 = vec4<f32>(r1.x, ((v2.xyz / v2.www)).xyz);
  let v_4 = fma(r1.yzw, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r1.x = dot(r3.xyz, r3.xyz);
  r3.w = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.x = ((-(cb12_12.tint_symbol_2[7u].xxxx)).x + 1.0f);
  r4.x = fma(r4.x, r3.w, cb12_12.tint_symbol_2[7u].x);
  r3.w = (r3.w / r4.x);
  r2.w = 1.0f;
  r2.x = dot(r2, cb12_12.tint_symbol_2[6u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 0.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
  r2.x = (r2.x * r3.w);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.x < 0.00000099999999747524f)));
  v_6((bitcast<u32>(r2.y) != 0u));
  let v_7 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r2 = vec4<f32>(r2.x, v_7.xyz);
  let v_8 = (r2.yzw * r2.yzw);
  r2 = vec4<f32>(r2.x, v_8.xyz);
  let v_9 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xz;
  r4 = vec4<f32>(v_9.xy, r4.zw);
  r3.w = (r4.x * r4.x);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_10 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_10.x, r4.y, v_10.yz);
  let v_11 = fract(r4.xzw);
  r4 = vec4<f32>(v_11.x, r4.y, v_11.yz);
  let v_12 = fma((-(r4.zzwz)).xz, vec2<f32>(0.125f), r4.xz);
  let v_13 = r4;
  r4 = vec4<f32>(v_12.x, v_13.y, v_12.y, v_13.w);
  let v_14 = fma(r0.xyz, vec3<f32>(256.0f), r4.xzw);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_16 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  r0.w = min(r3.w, 1.0f);
  r1.x = inverseSqrt(r1.x);
  let v_17 = (r1.xxx * r3.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r1.x = dot(r1.yzw, r1.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_18 = (r1.xxx * r1.yzw);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(v_19.x, r4.y, v_19.yz);
  let v_20 = dot(r0.xyz, r3.xyz);
  r1.w = clamp(vec4<f32>(v_20, v_20, v_20, v_20).w, 0.0f, 1.0f);
  let v_21 = dot((-(r1.xyzx)).xyz, r0.xyz);
  r0.x = clamp(vec4<f32>(v_21, v_21, v_21, v_21).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x * r0.x);
  r0.y = (r0.y * r0.y);
  r0.x = (r0.x * r0.y);
  r0.y = ((-(r4.yyyy)).y + 1.0f);
  r0.x = fma(r4.y, r0.x, r0.y);
  r0.x = fma((-(r0.wwww)).x, r0.x, 1.0f);
  r0.x = (r0.x * r1.w);
  let v_22 = (r0.xxx * r2.yzw);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r4.xzw * r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r2.xxx * r0.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_25.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_6(v_26 : bool) {
  if (v_26) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
