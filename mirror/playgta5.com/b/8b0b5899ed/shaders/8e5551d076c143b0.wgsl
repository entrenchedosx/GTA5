diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb18_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct_1;

struct cb2_struct {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

struct cb2_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb2_struct_1;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t12, s12, v1.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + cb12_12.tint_symbol_3[17u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb12_12.tint_symbol_3[17u].z / r0.x);
  let v = r0;
  r0 = vec4<f32>(v.x, ((v2.xy / v2.ww)).xy, v.w);
  let v_1 = fma(r0.yz, r0.xx, cb1_1.tint_symbol[15u].xy);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  r0.w = (r0.x + -140.0f);
  r1.x = (r0.w * 0.01250000018626451492f);
  r0.w = clamp(fma(-(r0.wwww), vec4<f32>(0.01250000018626451492f), vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  let v_3 = (r0.yz * cb10_10.tint_symbol_4[0u].xx);
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r2 = textureSample(t5, s5, r0.yzyy.xy);
  let v_5 = -(cb10_10.tint_symbol_4[1u].xxxx);
  r0.y = clamp(((r2.xxxx + v_5)).y, 0.0f, 1.0f);
  r0.y = (r0.w * r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  r1 = vec4<f32>(r1.x, ((v2.xyz / v2.www)).xyz);
  let v_6 = fma(r1.yzw, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_6.x, r0.y, v_6.yz);
  let v_7 = (r0.xz * cb10_10.tint_symbol_4[0u].xx);
  let v_8 = r1;
  r1 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r2 = textureSample(t5, s5, r1.yzyy.xy);
  let v_9 = (r0.xz * vec2<f32>(0.5f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r3 = textureSample(t6, s6, r1.yzyy.xy);
  let v_11 = fma(r0.xz, cb9_9.tint_symbol_5[1u].xy, cb9_9.tint_symbol_5[1u].zw);
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = fma(r1.yz, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r4 = textureSample(t7, s7, r1.yzyy.xy);
  if ((bitcast<u32>(r0.y) != 0u)) {
    r5 = textureSample(t8, s8, v1.xyxx.xy);
    r6 = textureSample(t10, s10, v1.xyxx.xy);
    r7 = textureSample(t4, s4, v1.xyxx.xy);
    r0.y = (r6.x * r7.x);
    r0.y = dot(r0.yy, r0.yy);
    r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.y = (r5.w + cb10_10.tint_symbol_4[0u].y);
    r1.y = clamp(((r1.yyyy * cb10_10.tint_symbol_4[0u].zzzz)).y, 0.0f, 1.0f);
    r1.x = (r1.x * r1.y);
    r1.y = (r6.x + -0.5f);
    r1.z = clamp(((r6.xxxx + r6.xxxx)).z, 0.0f, 1.0f);
    r1.z = (r1.z * r1.z);
    r1.z = (r1.z * r1.z);
    r1.x = (r1.z * r1.x);
    r1.z = clamp(((r2.xxxx + v_5)).z, 0.0f, 1.0f);
    r1.x = fma(r1.z, r1.x, -0.078125f);
    let v_15 = clamp(((r1.xyxx * vec4<f32>(1.18518519401550292969f, 8.0f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
    r1 = vec4<f32>(v_15.xy, r1.zw);
    let v_16 = ((-(r0.xxzw)).xzw + cb1_1.tint_symbol[15u].xyz);
    r0 = vec4<f32>(v_16.x, r0.y, v_16.yz);
    r1.z = dot(r0.xzw, r0.xzw);
    r1.z = inverseSqrt(r1.z);
    let v_17 = (r0.xzw * r1.zzz);
    r0 = vec4<f32>(v_17.x, r0.y, v_17.yz);
    let v_18 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r1 = vec4<f32>(r1.xy, v_18.xy);
    let v_19 = (r4.xy + vec2<f32>(-0.00196078442968428135f));
    r2 = vec4<f32>(v_19.xy, r2.zw);
    let v_20 = fma(r2.xy, vec2<f32>(2.0f), r1.zw);
    r1 = vec4<f32>(r1.xy, v_20.xy);
    let v_21 = (r1.zw + vec2<f32>(-1.0f));
    r1 = vec4<f32>(r1.xy, v_21.xy);
    let v_22 = (r1.yy * r1.zw);
    r2 = vec4<f32>(v_22.xy, r2.zw);
    r1.y = dot(r2.xy, r2.xy);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r2.z = sqrt(abs(r1.yyyy).z);
    let v_23 = dot(r0.xzw, r2.xyz);
    r1.y = clamp(vec4<f32>(v_23, v_23, v_23, v_23).y, 0.0f, 1.0f);
    r1.y = ((-(r1.yyyy)).y + 1.0f);
    r1.z = (r1.y * r1.y);
    r1.z = (r1.z * r1.z);
    r1.y = (r1.z * r1.y);
    r1.y = fma(r1.y, 0.97962999343872070312f, 0.02036999911069869995f);
    r1.z = dot((-(r0.xzwx)).xyz, r2.xyz);
    r1.z = min(r1.z, 0.0f);
    let v_24 = (r1.zzz * r2.xyz);
    r2 = vec4<f32>(v_24.xyz, r2.w);
    let v_25 = -(r2.xyzx);
    let v_26 = fma(v_25.xyz, vec3<f32>(2.0f), (-(r0.xzwx)).xyz);
    r2 = vec4<f32>(v_26.xyz, r2.w);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (r2.z < 0.0f)));
    let v_27 = bitcast<u32>(r0.x);
    let v_28 = r0.w;
    r0.x = select(r2.z, v_28, (v_27 != 0u));
    r0.z = (cb5_5.tint_symbol_2[6u].z + -5.0f);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
    let v_29 = bitcast<u32>(r0.w);
    r0.z = select(r0.z, -5.0f, (v_29 != 0u));
    let v_30 = (r2.xyx * vec3<f32>(-0.25f, 0.5f, 0.25f));
    r2 = vec4<f32>(v_30.xyz, r2.w);
    r0.w = (abs(r0.xxxx).w + 1.0f);
    let v_31 = (r2.xyz / r0.www);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    let v_32 = ((-(r2.xyzx)).xyz + vec3<f32>(0.75f, 0.5f, 0.25f));
    r2 = vec4<f32>(v_32.xyz, r2.w);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
    let v_33 = bitcast<vec2<u32>>(r0.xx);
    let v_34 = r2.xy;
    let v_35 = select(r2.zy, v_34, (v_33 != vec2<u32>()));
    r0 = vec4<f32>(v_35.x, r0.yz, v_35.y);
    let v_36 = r0.z;
    r2 = textureSampleLevel(t1, s1, r0.xwxx.xy, v_36);
    let v_37 = (r1.yyy * r2.xyz);
    r0 = vec4<f32>(v_37.x, r0.y, v_37.yz);
    let v_38 = -(cb10_10.tint_symbol_4[1u].wwww);
    r0.y = (r0.y + v_38.y);
    r0.y = clamp(((r0.yyyy * vec4<f32>(1.5f))).y, 0.0f, 1.0f);
    r1.z = ((-(cb10_10.tint_symbol_4[1u].zzzz)).z + 1.0f);
    r1.y = fma(r1.z, r1.y, cb10_10.tint_symbol_4[1u].z);
    r1.x = (r1.x * 3.0f);
    r1.x = min(r1.x, 1.0f);
    r1.x = (r1.x * r1.y);
    o0.w = (r0.y * r1.x);
    let v_39 = (r0.xzw * cb2_2.tint_symbol_1[17u].zzz);
    o0 = vec4<f32>(v_39.xyz, o0.w);
  } else {
    o0 = vec4<f32>();
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
