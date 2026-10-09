diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb2_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  r0 = textureSample(t2, s2, v1.xyxx.xy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.94999998807907104492f)));
  let v = (v1.xy * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(v.xy, r1.zw);
  let v_1 = r1.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2.x = textureLoad(t12, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).x;
  r2.x = ((-(r2.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r2.x = (r2.x + 1.0f);
  r2.x = (cb12_12.tint_symbol_2[17u].z / r2.x);
  r2 = vec4<f32>(r2.x, ((v2.xyz / v2.www)).xyz);
  let v_4 = fma(r2.yzw, r2.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_4.xyz);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_5 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = fract(r3.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma((-(r3.yzyy)).xy, vec2<f32>(0.125f), r3.xy);
  r3 = vec4<f32>(v_7.xy, r3.zw);
  let v_8 = fma(r1.xyz, vec3<f32>(256.0f), r3.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_10 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = ((-(r2.yyzw)).yzw + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_11.xyz);
  r1.w = dot(r2.yzw, r2.yzw);
  r1.w = inverseSqrt(r1.w);
  let v_12 = (r1.www * r2.yzw);
  r2 = vec4<f32>(r2.x, v_12.xyz);
  let v_13 = dot(r1.xyz, r2.yzw);
  r1.x = clamp(vec4<f32>(v_13, v_13, v_13, v_13).x, 0.0f, 1.0f);
  let v_14 = -(r2.xxxx);
  r1.y = (cb11_11.tint_symbol_3[1u].w / v_14.y);
  r1.x = sqrt(r1.x);
  let v_15 = (cb12_12.tint_symbol_2[16u].xy * vec2<f32>(3.0f, 4.27199983596801757812f));
  r1 = vec4<f32>(r1.xy, v_15.xy);
  r1.z = dot(v1.xy, r1.zw);
  let v_16 = r1.zzzz;
  r2.x = sin(v_16.x);
  r3.x = cos(v_16.x);
  r4 = (r1.yyyy * cb12_12.tint_symbol_2[16u].zwzw);
  r1 = (r1.xxxx * r4);
  r4.y = (-(r2.xxxx)).y;
  r4.z = r3.x;
  r4.w = r2.x;
  r4.x = (-(r3.xxxx)).x;
  r2 = (r1.zwzw * r4.wzxw);
  r3 = (r1 * r4.yxyx);
  let v_17 = fma(r4.zy, r1.zw, v1.xy);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r1 = textureSample(t2, s2, r1.xyxx.xy);
  let v_18 = fma(r2.xy, vec2<f32>(0.75f), v1.xy);
  r2 = vec4<f32>(v_18.xy, r2.zw);
  r4 = textureSample(t2, s2, r2.xyxx.xy);
  let v_19 = fma(r2.zw, vec2<f32>(0.5f), v1.xy);
  r2 = vec4<f32>(v_19.xy, r2.zw);
  r2 = textureSample(t2, s2, r2.xyxx.xy);
  r3 = fma(r3, vec4<f32>(0.25f, 0.25f, 1.25f, 1.25f), v1.xyxy);
  r5 = textureSample(t2, s2, r3.xyxx.xy);
  r3 = textureSample(t2, s2, r3.zwzz.xy);
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = ((-(r1.wwww)).w + 1.0f);
    r1.w = ((-(r4.wwww)).w + 1.0f);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r4.w = ((-(r5.wwww)).w + 1.0f);
    r3.w = ((-(r3.wwww)).w + 1.0f);
    let v_20 = -(r5.xyzx);
    let v_21 = (r0.xyz + v_20.xyz);
    r6 = vec4<f32>(v_21.xyz, r6.w);
    let v_22 = fma(r4.www, r6.xyz, r5.xyz);
    r5 = vec4<f32>(v_22.xyz, r5.w);
    let v_23 = -(r2.xyzx);
    let v_24 = (r0.xyz + v_23.xyz);
    r6 = vec4<f32>(v_24.xyz, r6.w);
    let v_25 = fma(r2.www, r6.xyz, r2.xyz);
    r2 = vec4<f32>(v_25.xyz, r2.w);
    let v_26 = (r2.xyz * vec3<f32>(0.1180000007152557373f, 0.19799999892711639404f, 0.0f));
    r2 = vec4<f32>(v_26.xyz, r2.w);
    let v_27 = fma(r5.xyz, vec3<f32>(0.10000000149011611938f, 0.33599999547004699707f, 0.34400001168251037598f), r2.xyz);
    r2 = vec4<f32>(v_27.xyz, r2.w);
    let v_28 = -(r4.xyzx);
    let v_29 = (r0.xyz + v_28.xyz);
    r5 = vec4<f32>(v_29.xyz, r5.w);
    let v_30 = fma(r1.www, r5.xyz, r4.xyz);
    r4 = vec4<f32>(v_30.xyz, r4.w);
    let v_31 = fma(r4.xyz, vec3<f32>(0.11299999803304672241f, 0.00700000021606683731f, 0.00700000021606683731f), r2.xyz);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    let v_32 = -(r1.xyzx);
    let v_33 = (r0.xyz + v_32.xyz);
    r4 = vec4<f32>(v_33.xyz, r4.w);
    let v_34 = fma(r0.www, r4.xyz, r1.xyz);
    r1 = vec4<f32>(v_34.xyz, r1.w);
    let v_35 = fma(r1.xyz, vec3<f32>(0.25799998641014099121f, 0.00400000018998980522f, 0.0f), r2.xyz);
    r1 = vec4<f32>(v_35.xyz, r1.w);
    let v_36 = -(r3.xyzx);
    let v_37 = (r0.xyz + v_36.xyz);
    r2 = vec4<f32>(v_37.xyz, r2.w);
    let v_38 = fma(r3.www, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_38.xyz, r2.w);
    let v_39 = fma(r2.xyz, vec3<f32>(0.17800000309944152832f, 0.0f, 0.0f), r1.xyz);
    r1 = vec4<f32>(v_39.xyz, r1.w);
    let v_40 = (r0.xyz * vec3<f32>(0.23330000042915344238f, 0.45500001311302185059f, 0.64899998903274536133f));
    r2 = vec4<f32>(v_40.xyz, r2.w);
    let v_41 = fma(r1.xyz, cb11_11.tint_symbol_3[0u].xyz, r2.xyz);
    r1 = vec4<f32>(v_41.xyz, r1.w);
    let v_42 = ((-(r0.xyzx)).xyz + r1.xyz);
    r1 = vec4<f32>(v_42.xyz, r1.w);
    let v_43 = fma(cb11_11.tint_symbol_3[1u].xxx, r1.xyz, r0.xyz);
    r0 = vec4<f32>(v_43.xyz, r0.w);
  }
  let v_44 = r0;
  o0 = vec4<f32>(v_44.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
