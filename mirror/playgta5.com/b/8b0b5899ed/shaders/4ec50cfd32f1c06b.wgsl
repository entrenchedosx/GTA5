diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb70_struct {
  tint_symbol_1 : array<vec4<f32>, 70u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb70_struct;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  let v_4 = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v2)).xyz;
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.xyz * cb2_2.tint_symbol[17u].www);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = textureSample(t10, s10, v1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (r1.xyz * v1.www);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[69u].z)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t15, s15, v1.xyxx.xy).x;
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    r0.w = (r0.w * r0.w);
    let v_8 = fma(cb5_5.tint_symbol_1[40u].xyz, r0.www, r0.xyz);
    r0 = vec4<f32>(v_8.xyz, r0.w);
  }
  let v_9 = textureSample(t13, s13, v1.xyxx.xy).xyz;
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r0.w = (v1.z + (-(cb5_5.tint_symbol_1[28u].xxxx)).w);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[28u].yyyy)).w, 0.0f, 1.0f);
  r1.w = ((-(cb5_5.tint_symbol_1[28u].zzzz)).w + cb5_5.tint_symbol_1[28u].w);
  r0.w = fma(r0.w, r1.w, cb5_5.tint_symbol_1[28u].z);
  r0.w = (r0.w + -1.0f);
  r0.w = fma(cb5_5.tint_symbol_1[29u].x, r0.w, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[30u].w);
  let v_10 = fma(r2.xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r1.xyz * cb5_5.tint_symbol_1[7u].yyy);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r1.xyz, vec3<f32>(0.25f), r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[51u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[51u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[51u].zzzz)).w, 0.0f, 1.0f);
  let v_13 = ((-(cb5_5.tint_symbol_1[52u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[52u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = (r0.xyz * r1.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = min(r0.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r0.xyz * v1.zzz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[9u].xxx);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = fma(r0.xyz, r1.xyz, cb5_5.tint_symbol_1[9u].yyy);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(cb5_5.tint_symbol_1[8u].xxx, r0.xyz, cb5_5.tint_symbol_1[8u].yyy);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = fma(r0.xyz, r2.xyz, cb5_5.tint_symbol_1[9u].zzz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r1.xyz / r0.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = -(cb5_5.tint_symbol_1[9u].wwww);
  let v_25 = (r0.xyz + v_24.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = clamp(((r0.xyzx * cb5_5.tint_symbol_1[8u].zzzz)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_26.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  let v_27 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = fma(cb5_5.tint_symbol_1[61u].xxx, r0.xyz, r0.www);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  r1.x = clamp(((r0.wwww / cb5_5.tint_symbol_1[60u].wwww)).x, 0.0f, 1.0f);
  let v_29 = -(cb5_5.tint_symbol_1[60u].xxyz);
  let v_30 = (cb5_5.tint_symbol_1[59u].xyz + v_29.yzw);
  r1 = vec4<f32>(r1.x, v_30.xyz);
  let v_31 = fma(r1.xxx, r1.yzw, cb5_5.tint_symbol_1[60u].xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  let v_32 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  r1.w = ((-(cb5_5.tint_symbol_1[59u].wwww)).w + 1.0f);
  let v_33 = -(r1.wwww);
  r0.w = (r0.w + v_33.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = max(r1.w, 0.00999999977648258209f);
  r0.w = clamp(((r0.wwww / r1.wwww)).w, 0.0f, 1.0f);
  let v_34 = fma((-(r0.xyzx)).xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_34.xyz, r0.w);
  let v_35 = clamp(fma(r0.wwww, r0.xyzx, r2.xyzx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = log2(r0.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = (r0.xyz * cb5_5.tint_symbol_1[61u].yyy);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = exp2(r0.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = min(r0.xyz, vec3<f32>(1.0f));
  r0 = vec4<f32>(v_39.xyz, r0.w);
  o0.w = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let v_40 = r0;
  o0 = vec4<f32>(v_40.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v2 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
