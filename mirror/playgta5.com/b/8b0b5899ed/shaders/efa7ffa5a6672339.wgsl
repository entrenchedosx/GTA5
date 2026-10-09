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
  r3.w = inverseSqrt(r1.x);
  let v_6 = (r3.www * r3.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  r1.x = clamp(fma(-(r1.xxxx), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r3.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r3.w = fma(r3.w, r1.x, cb12_12.tint_symbol_2[7u].x);
  r1.x = (r1.x / r3.w);
  let v_7 = -(cb12_12.tint_symbol_2[1u].xyzx);
  r3.w = dot(r3.xyz, v_7.xyz);
  r3.w = clamp(fma(r3.wwww, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).w, 0.0f, 1.0f);
  r1.x = (r1.x * r3.w);
  r2.w = 1.0f;
  r2.x = dot(r2, cb12_12.tint_symbol_2[6u]);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 0.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
  r1.x = (r1.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.00000099999999747524f)));
  v_8((bitcast<u32>(r2.x) != 0u));
  let v_9 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xz;
  r4 = vec4<f32>(v_11.xy, r4.zw);
  r2.w = (r4.x * r4.x);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_12 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r4 = vec4<f32>(v_12.x, r4.y, v_12.yz);
  let v_13 = fract(r4.xzw);
  r4 = vec4<f32>(v_13.x, r4.y, v_13.yz);
  let v_14 = fma((-(r4.zzwz)).xz, vec2<f32>(0.125f), r4.xz);
  let v_15 = r4;
  r4 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
  let v_16 = fma(r0.xyz, vec3<f32>(256.0f), r4.xzw);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_17.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r0.w = min(r2.w, 1.0f);
  r2.w = dot(r1.yzw, r1.yzw);
  r2.w = inverseSqrt(r2.w);
  let v_19 = (r1.yzw * r2.www);
  r1 = vec4<f32>(r1.x, v_19.xyz);
  let v_20 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r4 = vec4<f32>(v_20.x, r4.y, v_20.yz);
  let v_21 = dot(r0.xyz, r3.xyz);
  r2.w = clamp(vec4<f32>(v_21, v_21, v_21, v_21).w, 0.0f, 1.0f);
  let v_22 = dot((-(r1.yzwy)).xyz, r0.xyz);
  r0.x = clamp(vec4<f32>(v_22, v_22, v_22, v_22).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (r0.x * r0.x);
  r0.y = (r0.y * r0.y);
  r0.x = (r0.x * r0.y);
  r0.y = ((-(r4.yyyy)).y + 1.0f);
  r0.x = fma(r4.y, r0.x, r0.y);
  r0.x = fma((-(r0.wwww)).x, r0.x, 1.0f);
  r0.x = (r0.x * r2.w);
  let v_23 = (r0.xxx * r2.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r4.xzw * r0.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r1.xxx * r0.xyz);
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
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
