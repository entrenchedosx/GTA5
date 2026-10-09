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

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_2[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_2[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_2[20u].xyz);
  let v_1 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_2[17u].z / r1.x);
  let v_5 = fma(r2.xyz, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = -(cb12_12.tint_symbol_2[0u].xyzx);
  let v_7 = (r1.xyz + v_6.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r2.w = dot(r3.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r2.w = clamp(((r2.wwww / cb12_12.tint_symbol_2[5u].xxxx)).w, 0.0f, 1.0f);
  r2.w = (r2.w * cb12_12.tint_symbol_2[5u].x);
  let v_8 = fma(cb12_12.tint_symbol_2[1u].xyz, r2.www, cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = ((-(r1.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r3.w = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.x = ((-(cb12_12.tint_symbol_2[7u].xxxx)).x + 1.0f);
  r4.x = fma(r4.x, r3.w, cb12_12.tint_symbol_2[7u].x);
  r3.w = (r3.w / r4.x);
  r1.w = 1.0f;
  r1.x = dot(r1, cb12_12.tint_symbol_2[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = (r1.x * r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.00000099999999747524f)));
  v_10((bitcast<u32>(r1.y) != 0u));
  let v_11 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r1 = vec4<f32>(r1.x, v_11.xyz);
  let v_12 = (r1.yzw * r1.yzw);
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_14.xy, r4.zw);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_15 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = fract(r5.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = fma((-(r5.yzyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_17.xy, r5.zw);
  let v_18 = fma(r0.xyz, vec3<f32>(256.0f), r5.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r0.w = min(r4.x, 1.0f);
  r3.w = fma(r4.y, 512.0f, -500.0f);
  r3.w = max(r3.w, 0.0f);
  let v_21 = -(r3.wwww);
  r4.x = fma(r4.y, 512.0f, v_21.x);
  r3.w = (r3.w * 558.0f);
  r3.w = fma(r4.x, 3.0f, r3.w);
  r4.x = dot(r2.xyz, r2.xyz);
  r4.x = inverseSqrt(r4.x);
  let v_22 = (r2.xyz * r4.xxx);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r2.w = inverseSqrt(r2.w);
  let v_23 = (r2.www * r3.xyz);
  r4 = vec4<f32>(v_23.xy, r4.z, v_23.z);
  let v_24 = -(r2.xyzx);
  let v_25 = fma(r3.xyz, r2.www, v_24.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r2.w = inverseSqrt(r2.w);
  let v_26 = (r2.www * r3.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r5 = vec4<f32>(v_27.xyz, r5.w);
  let v_28 = dot(r0.xyz, r4.xyw);
  r2.w = clamp(vec4<f32>(v_28, v_28, v_28, v_28).w, 0.0f, 1.0f);
  let v_29 = dot((-(r2.xyzx)).xyz, r0.xyz);
  r2.x = clamp(vec4<f32>(v_29, v_29, v_29, v_29).x, 0.0f, 1.0f);
  let v_30 = dot(r3.xyz, r4.xyw);
  r2.y = clamp(vec4<f32>(v_30, v_30, v_30, v_30).y, 0.0f, 1.0f);
  let v_31 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_31.xy, r2.zw);
  let v_32 = (r2.xy * r2.xy);
  r4 = vec4<f32>(v_32.xy, r4.zw);
  let v_33 = (r4.xy * r4.xy);
  r4 = vec4<f32>(v_33.xy, r4.zw);
  let v_34 = (r2.xy * r4.xy);
  r2 = vec4<f32>(v_34.xy, r2.zw);
  r2.z = ((-(r4.zzzz)).z + 1.0f);
  let v_35 = fma(r4.zz, r2.xy, r2.zz);
  r2 = vec4<f32>(v_35.xy, r2.zw);
  let v_36 = (r3.ww + vec2<f32>(2.0f, 0.00000000999999993923f));
  r4 = vec4<f32>(v_36.xy, r4.zw);
  r2.z = (r4.x * 0.125f);
  r2.x = fma((-(r0.wwww)).x, r2.x, 1.0f);
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r4.y);
  r0.x = exp2(r0.x);
  r0.x = (r2.y * r0.x);
  r0.x = (r2.z * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r2.w * r0.x);
  r0.y = (r2.x * r2.w);
  r0.x = (r0.x * cb12_12.tint_symbol_2[8u].z);
  let v_37 = fma(r1.yzw, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = (r5.xyz * r0.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_40.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_10(v_41 : bool) {
  if (v_41) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
