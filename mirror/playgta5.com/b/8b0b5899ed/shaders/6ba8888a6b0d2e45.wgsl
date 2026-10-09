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

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : u32) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb12_12.tint_symbol_2[16u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t2, s2, r0.xyxx.xy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.94999998807907104492f)));
  let v_3 = (v1.xy * cb2_2.tint_symbol_1[18u].xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = r1.xy;
  let v_5 = max(v_4, vec2<f32>(-2147483648.0f));
  let v_6 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_5), vec2<i32>(2147483647i), (v_5 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_4 == v_4))));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2.x = textureLoad(t12, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).x;
  r2.x = ((-(r2.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r2.x = (r2.x + 1.0f);
  r2.x = (cb12_12.tint_symbol_2[17u].z / r2.x);
  r2 = vec4<f32>(r2.x, ((v2.xyz / v2.www)).xyz);
  let v_7 = fma(r2.yzw, r2.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_7.xyz);
  r1 = textureLoad(t8, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3));
  let v_8 = (r1.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = fract(r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma((-(r3.yzyy)).xy, vec2<f32>(0.125f), r3.xy);
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = fma(r1.xyz, vec3<f32>(256.0f), r3.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = (r1.xyz + vec3<f32>(-128.0f));
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_13 = (r1.www * r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = ((-(r2.yyzw)).yzw + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(r2.x, v_14.xyz);
  r1.w = dot(r2.yzw, r2.yzw);
  r1.w = inverseSqrt(r1.w);
  let v_15 = (r1.www * r2.yzw);
  r2 = vec4<f32>(r2.x, v_15.xyz);
  let v_16 = dot(r1.xyz, r2.yzw);
  r1.x = clamp(vec4<f32>(v_16, v_16, v_16, v_16).x, 0.0f, 1.0f);
  let v_17 = -(r2.xxxx);
  r1.y = (cb11_11.tint_symbol_3[1u].w / v_17.y);
  r1.x = sqrt(r1.x);
  let v_18 = (cb12_12.tint_symbol_2[16u].xy * vec2<f32>(3.0f, 4.27199983596801757812f));
  r1 = vec4<f32>(r1.xy, v_18.xy);
  r1.z = dot(v1.xy, r1.zw);
  let v_19 = r1.zzzz;
  r2.x = sin(v_19.x);
  r3.x = cos(v_19.x);
  r1.x = (r1.x * r1.y);
  r4.y = (-(r2.xxxx)).y;
  r4.z = r3.x;
  r4.w = r2.x;
  let v_20 = (r1.xx * r4.wz);
  let v_21 = r1;
  r1 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
  r4.x = (-(r3.xxxx)).x;
  let v_22 = (r1.xx * r4.xw);
  r2 = vec4<f32>(v_22.xy, r2.zw);
  r3 = (r1.xxxx * r4.yxyx);
  let v_23 = fma(r4.zy, r1.xx, v0.xy);
  r1 = vec4<f32>(v_23.x, r1.yz, v_23.y);
  let v_24 = (r1.xw * cb12_12.tint_symbol_2[16u].zw);
  r1 = vec4<f32>(v_24.x, r1.yz, v_24.y);
  r4 = textureSample(t2, s2, r1.xwxx.xy);
  let v_25 = fma(r1.yz, vec2<f32>(0.75f), v0.xy);
  r1 = vec4<f32>(v_25.xy, r1.zw);
  let v_26 = (r1.xy * cb12_12.tint_symbol_2[16u].zw);
  r1 = vec4<f32>(v_26.xy, r1.zw);
  r1 = textureSample(t2, s2, r1.xyxx.xy);
  let v_27 = fma(r2.xy, vec2<f32>(0.5f), v0.xy);
  r2 = vec4<f32>(v_27.xy, r2.zw);
  let v_28 = (r2.xy * cb12_12.tint_symbol_2[16u].zw);
  r2 = vec4<f32>(v_28.xy, r2.zw);
  r2 = textureSample(t2, s2, r2.xyxx.xy);
  r3 = fma(r3, vec4<f32>(0.25f, 0.25f, 1.25f, 1.25f), v0.xyxy);
  r3 = (r3 * cb12_12.tint_symbol_2[16u].zwzw);
  r5 = textureSample(t2, s2, r3.xyxx.xy);
  r3 = textureSample(t2, s2, r3.zwzz.xy);
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = ((-(r4.wwww)).w + 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.w = ((-(r2.wwww)).w + 1.0f);
    r4.w = ((-(r5.wwww)).w + 1.0f);
    r3.w = ((-(r3.wwww)).w + 1.0f);
    let v_29 = -(r5.xyzx);
    let v_30 = (r0.xyz + v_29.xyz);
    r6 = vec4<f32>(v_30.xyz, r6.w);
    let v_31 = fma(r4.www, r6.xyz, r5.xyz);
    r5 = vec4<f32>(v_31.xyz, r5.w);
    let v_32 = -(r2.xyzx);
    let v_33 = (r0.xyz + v_32.xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    let v_34 = fma(r2.www, r6.xyz, r2.xyz);
    r2 = vec4<f32>(v_34.xyz, r2.w);
    let v_35 = (r2.xyz * vec3<f32>(0.1180000007152557373f, 0.19799999892711639404f, 0.0f));
    r2 = vec4<f32>(v_35.xyz, r2.w);
    let v_36 = fma(r5.xyz, vec3<f32>(0.10000000149011611938f, 0.33599999547004699707f, 0.34400001168251037598f), r2.xyz);
    r2 = vec4<f32>(v_36.xyz, r2.w);
    let v_37 = -(r1.xyzx);
    let v_38 = (r0.xyz + v_37.xyz);
    r5 = vec4<f32>(v_38.xyz, r5.w);
    let v_39 = fma(r1.www, r5.xyz, r1.xyz);
    r1 = vec4<f32>(v_39.xyz, r1.w);
    let v_40 = fma(r1.xyz, vec3<f32>(0.11299999803304672241f, 0.00700000021606683731f, 0.00700000021606683731f), r2.xyz);
    r1 = vec4<f32>(v_40.xyz, r1.w);
    let v_41 = -(r4.xyzx);
    let v_42 = (r0.xyz + v_41.xyz);
    r2 = vec4<f32>(v_42.xyz, r2.w);
    let v_43 = fma(r0.www, r2.xyz, r4.xyz);
    r2 = vec4<f32>(v_43.xyz, r2.w);
    let v_44 = fma(r2.xyz, vec3<f32>(0.25799998641014099121f, 0.00400000018998980522f, 0.0f), r1.xyz);
    r1 = vec4<f32>(v_44.xyz, r1.w);
    let v_45 = -(r3.xyzx);
    let v_46 = (r0.xyz + v_45.xyz);
    r2 = vec4<f32>(v_46.xyz, r2.w);
    let v_47 = fma(r3.www, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_47.xyz, r2.w);
    let v_48 = fma(r2.xyz, vec3<f32>(0.17800000309944152832f, 0.0f, 0.0f), r1.xyz);
    r1 = vec4<f32>(v_48.xyz, r1.w);
    let v_49 = (r0.xyz * vec3<f32>(0.23330000042915344238f, 0.45500001311302185059f, 0.64899998903274536133f));
    r2 = vec4<f32>(v_49.xyz, r2.w);
    let v_50 = fma(r1.xyz, cb11_11.tint_symbol_3[0u].xyz, r2.xyz);
    r1 = vec4<f32>(v_50.xyz, r1.w);
    let v_51 = ((-(r0.xyzx)).xyz + r1.xyz);
    r1 = vec4<f32>(v_51.xyz, r1.w);
    let v_52 = fma(cb11_11.tint_symbol_3[1u].xxx, r1.xyz, r0.xyz);
    o0 = vec4<f32>(v_52.xyz, o0.w);
    o0.w = 1.0f;
  } else {
    o0 = vec4<f32>();
  }
}

@fragment
fn main(@builtin(position) v_53 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_53, v1, v2, v3);
  return o0;
}
