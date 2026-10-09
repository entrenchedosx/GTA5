diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb10_struct {
  tint_symbol_2 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb10_struct;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(36u) var t4 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  let v_2 = (cb12_12.tint_symbol_2[9u].xy + vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (v0.xy * cb2_2.tint_symbol_1[18u].zw);
  r1 = vec4<f32>(r1.xy, v_3.xy);
  let v_4 = fma(r1.zw, r1.xy, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = trunc(r2.xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = r2.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.y = (cb12_12.tint_symbol_2[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb12_12.tint_symbol_2[0u].z / r0.x);
  r0.x = (1.00199997425079345703f / r0.x);
  let v_9 = (cb2_2.tint_symbol_1[18u].zw * vec2<f32>(16.0f));
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = (cb12_12.tint_symbol_2[8u].xy + vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = fma(r1.zw, r2.xy, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = trunc(r2.xy);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = r2.xy;
  let v_14 = max(v_13, vec2<f32>(-2147483648.0f));
  let v_15 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_14), vec2<i32>(2147483647i), (v_14 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_13 == v_13))));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  let v_16 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), 0i).xyz;
  r2 = vec4<f32>(v_16.xyz, r2.w);
  let v_17 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_17.xyz, r2.w);
  r3.y = dot(cb1_1.tint_symbol[13u].xyz, r2.xyz);
  r3.z = dot(cb1_1.tint_symbol[14u].xyz, r2.xyz);
  r2.x = dot(cb1_1.tint_symbol[12u].xyz, r2.xyz);
  let v_18 = (-(r3.yyzy)).yz;
  let v_19 = r2;
  r2 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  let v_20 = fma(r2.xy, r0.zw, r1.zw);
  r0 = vec4<f32>(r0.xy, v_20.xy);
  let v_21 = fma(cb2_2.tint_symbol_1[18u].zw, vec2<f32>(7.90173578262329101562f, -2.50005459785461425781f), r0.zw);
  r1 = vec4<f32>(r1.xy, v_21.xy);
  let v_22 = fma(r1.zw, r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_22.xy, r1.zw);
  let v_23 = (r1.zw + vec2<f32>(-0.5f));
  r1 = vec4<f32>(r1.xy, v_23.xy);
  let v_24 = (r1.zw * cb12_12.tint_symbol_2[0u].xy);
  r3 = vec4<f32>(v_24.xy, r3.zw);
  let v_25 = trunc(r1.xy);
  r1 = vec4<f32>(v_25.xy, r1.zw);
  let v_26 = r1.xy;
  let v_27 = max(v_26, vec2<f32>(-2147483648.0f));
  let v_28 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_27), vec2<i32>(2147483647i), (v_27 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_26 == v_26))));
  r1 = vec4<f32>(v_28.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), 0i).x;
  let v_29 = -(r1.xxxx);
  r0.y = (r0.y + v_29.y);
  r0.y = (cb12_12.tint_symbol_2[0u].z / r0.y);
  r0.x = (r0.x * r0.y);
  r1.z = 0.5f;
  let v_30 = fma(cb2_2.tint_symbol_1[18u].zw, vec2<f32>(-9.4108905792236328125f, -6.46983671188354492188f), r0.zw);
  r4 = vec4<f32>(v_30.xy, r4.zw);
  r5 = fma(cb2_2.tint_symbol_1[18u].zwzw, vec4<f32>(-12.94158935546875f, 4.70412731170654296875f, -1.24841785430908203125f, -15.80398082733154296875f), r0.zwzw);
  r5 = (r5 + vec4<f32>(-0.5f));
  r5 = (r5.zwxy * cb12_12.tint_symbol_2[0u].xyxy);
  let v_31 = (r4.xy + vec2<f32>(-0.5f));
  let v_32 = r0;
  r0 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
  let v_33 = (r0.yz * cb12_12.tint_symbol_2[0u].xy);
  r1 = vec4<f32>(v_33.xy, r1.zw);
  let v_34 = fma(v0.xy, cb2_2.tint_symbol_1[18u].zw, vec2<f32>(-0.5f));
  let v_35 = r0;
  r0 = vec4<f32>(v_35.x, v_34.xy, v_35.w);
  let v_36 = (r0.yz * cb12_12.tint_symbol_2[0u].xy);
  r4 = vec4<f32>(v_36.xy, r4.zw);
  r4.z = 0.5f;
  let v_37 = -(r4.xxyz);
  let v_38 = fma(r1.xyz, r0.xxx, v_37.yzw);
  r0 = vec4<f32>(r0.x, v_38.xyz);
  r1.w = dot(r0.yzw, r2.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r6.w = sqrt(r0.y);
  r3.z = 0.5f;
  let v_39 = -(r4.xxyz);
  let v_40 = fma(r3.xyz, r0.xxx, v_39.yzw);
  r0 = vec4<f32>(r0.x, v_40.xyz);
  r1.x = dot(r0.yzw, r2.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r6.x = sqrt(r0.y);
  let v_41 = r5;
  r3 = vec4<f32>(v_41.zw, r3.zw);
  r3.z = 0.5f;
  let v_42 = -(r4.xxyz);
  let v_43 = fma(r3.xyz, r0.xxx, v_42.yzw);
  r0 = vec4<f32>(r0.x, v_43.xyz);
  r1.y = dot(r0.yzw, r2.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  r6.y = sqrt(r0.y);
  r5.z = 0.5f;
  let v_44 = -(r4.xyzx);
  let v_45 = fma(r5.xyz, r0.xxx, v_44.xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  r1.z = dot(r0.xyz, r2.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r6.z = sqrt(r0.x);
  r0 = (-(r1) + r6);
  r0 = (r0 / r6);
  r1 = (r6 * vec4<f32>(10.0f));
  r0 = clamp(max(r0, r1), vec4<f32>(), vec4<f32>(1.0f));
  r0.x = dot(r0, vec4<f32>(0.25f));
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_2[4u].x);
  r0.x = exp2(r0.x);
  r0.y = textureSample(t8, s8, v1.xyxx.xy).x;
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@builtin(position) v_46 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_46, v1);
  return o0;
}
