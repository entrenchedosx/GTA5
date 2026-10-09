diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

var<private> r15 : vec4<f32>;

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
  r0.z = 0.5f;
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  let v_2 = (v0.xy * cb2_2.tint_symbol_1[18u].zw);
  r2 = vec4<f32>(v_2.xy, r2.zw);
  let v_3 = (cb12_12.tint_symbol_2[9u].xy + vec2<f32>(-1.0f));
  r2 = vec4<f32>(r2.xy, v_3.xy);
  let v_4 = fma(r2.xy, r2.zw, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_4.xy, r3.zw);
  let v_5 = trunc(r3.xy);
  r3 = vec4<f32>(v_5.xy, r3.zw);
  let v_6 = r3.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r0.w = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r1.x = (cb12_12.tint_symbol_2[0u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.x);
  r0.w = (cb12_12.tint_symbol_2[0u].z / r0.w);
  r0.w = (1.0f / r0.w);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  let v_9 = (cb2_2.tint_symbol_1[18u].zw * vec2<f32>(16.0f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = (cb12_12.tint_symbol_2[8u].xy + vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_11.xy, r4.zw);
  let v_12 = fma(r2.xy, r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_12.xy, r4.zw);
  let v_13 = trunc(r4.xy);
  r4 = vec4<f32>(v_13.xy, r4.zw);
  let v_14 = r4.xy;
  let v_15 = max(v_14, vec2<f32>(-2147483648.0f));
  let v_16 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_15), vec2<i32>(2147483647i), (v_15 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_14 == v_14))));
  r4 = vec4<f32>(v_16.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  let v_17 = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).xyz;
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = fma(r4.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r5.y = dot(cb1_1.tint_symbol[13u].xyz, r4.xyz);
  r5.z = dot(cb1_1.tint_symbol[14u].xyz, r4.xyz);
  r4.x = dot(cb1_1.tint_symbol[12u].xyz, r4.xyz);
  let v_19 = (-(r5.yyzy)).yz;
  let v_20 = r4;
  r4 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  let v_21 = fma(r4.xy, r1.yz, r2.xy);
  let v_22 = r1;
  r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  r5 = fma(cb2_2.tint_symbol_1[18u].zwzw, vec4<f32>(-15.80347156524658203125f, -1.25002729892730712891f, -7.90173578262329101562f, 2.50005459785461425781f), r1.yzyz);
  r6 = fma(r5, r2.zwzw, vec4<f32>(0.5f));
  r5 = (r5 + vec4<f32>(-0.5f));
  r5 = (r5.zwxy * cb12_12.tint_symbol_2[0u].xyxy);
  r6 = trunc(r6);
  let v_23 = r6.zwxy;
  let v_24 = max(v_23, vec4<f32>(-2147483648.0f));
  r6 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_24), vec4<i32>(2147483647i), (v_24 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_23 == v_23))));
  let v_25 = r6;
  r3 = vec4<f32>(v_25.zw, r3.zw);
  r1.w = textureLoad(t5, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r1.w = ((-(r1.wwww)).w + r1.x);
  r3.y = (cb12_12.tint_symbol_2[0u].z / r1.w);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r1.w = textureLoad(t5, bitcast<vec2<i32>>(r6.xy), 0i).x;
  r1.w = ((-(r1.wwww)).w + r1.x);
  r3.z = (cb12_12.tint_symbol_2[0u].z / r1.w);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r7 = fma(cb2_2.tint_symbol_1[18u].zwzw, vec4<f32>(15.80347156524658203125f, 1.25002729892730712891f, 6.470794677734375f, 9.4082546234130859375f), r1.yzyz);
  r8 = fma(r7, r2.zwzw, vec4<f32>(0.5f));
  r7 = (r7 + vec4<f32>(-0.5f));
  r7 = (r7.zwxy * cb12_12.tint_symbol_2[0u].xyxy);
  r8 = trunc(r8);
  let v_26 = r8.zwxy;
  let v_27 = max(v_26, vec4<f32>(-2147483648.0f));
  r8 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_27), vec4<i32>(2147483647i), (v_27 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_26 == v_26))));
  let v_28 = r8;
  r6 = vec4<f32>(v_28.zw, r6.zw);
  r1.w = textureLoad(t5, bitcast<vec2<i32>>(r6.xy), 0i).x;
  r1.w = ((-(r1.wwww)).w + r1.x);
  r3.w = (cb12_12.tint_symbol_2[0u].z / r1.w);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  let v_29 = fma(cb2_2.tint_symbol_1[18u].zw, vec2<f32>(7.90173578262329101562f, -2.50005459785461425781f), r1.yz);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  let v_30 = fma(r2.xy, r2.zw, vec2<f32>(0.5f));
  r9 = vec4<f32>(v_30.xy, r9.zw);
  let v_31 = (r2.xy + vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_31.xy, r2.zw);
  let v_32 = (r2.xy * cb12_12.tint_symbol_2[0u].xy);
  r10 = vec4<f32>(v_32.xy, r10.zw);
  let v_33 = trunc(r9.xy);
  r2 = vec4<f32>(v_33.xy, r2.zw);
  let v_34 = r2.xy;
  let v_35 = max(v_34, vec2<f32>(-2147483648.0f));
  let v_36 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_35), vec2<i32>(2147483647i), (v_35 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_34 == v_34))));
  r6 = vec4<f32>(v_36.xy, r6.zw);
  r1.w = textureLoad(t5, bitcast<vec2<i32>>(r6.xy), 0i).x;
  r1.w = ((-(r1.wwww)).w + r1.x);
  r3.x = (cb12_12.tint_symbol_2[0u].z / r1.w);
  r3 = (r0.wwww * r3);
  let v_37 = r5;
  r0 = vec4<f32>(v_37.zw, r0.zw);
  let v_38 = fma(v0.xy, cb2_2.tint_symbol_1[18u].zw, vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_38.xy, r2.zw);
  let v_39 = (r2.xy * cb12_12.tint_symbol_2[0u].xy);
  r6 = vec4<f32>(v_39.xy, r6.zw);
  r6.z = 0.5f;
  let v_40 = -(r6.xyzx);
  let v_41 = fma(r0.xyz, r3.yyy, v_40.xyz);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  r9.y = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r11.y = sqrt(r0.x);
  r5.z = 0.5f;
  let v_42 = -(r6.xyzx);
  let v_43 = fma(r5.xyz, r3.zzz, v_42.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  r9.z = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r11.z = sqrt(r0.x);
  r0.z = 0.5f;
  let v_44 = r7;
  r0 = vec4<f32>(v_44.zw, r0.zw);
  let v_45 = -(r6.xyzx);
  let v_46 = fma(r0.xyz, r3.www, v_45.xyz);
  r0 = vec4<f32>(v_46.xyz, r0.w);
  r9.w = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r11.w = sqrt(r0.x);
  r10.z = 0.5f;
  let v_47 = -(r6.xyzx);
  let v_48 = fma(r10.xyz, r3.xxx, v_47.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  r9.x = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r11.x = sqrt(r0.x);
  r3 = (-(r9) + r11);
  r3 = (r3 / r11);
  r5 = (r11 * vec4<f32>(10.0f));
  r3 = clamp(max(r3, r5), vec4<f32>(), vec4<f32>(1.0f));
  r3.x = dot(r3, vec4<f32>(0.25f));
  r0.z = 0.5f;
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r9 = fma(cb2_2.tint_symbol_1[18u].zwzw, vec4<f32>(2.4968357086181640625f, -7.90199041366577148438f, -4.70544528961181640625f, 12.93967342376708984375f), r1.yzyz);
  r10 = fma(r9, r2.zwzw, vec4<f32>(0.5f));
  r9 = (r9 + vec4<f32>(-0.5f));
  r9 = (r9 * cb12_12.tint_symbol_2[0u].xyxy);
  r10 = trunc(r10);
  let v_49 = r10;
  let v_50 = max(v_49, vec4<f32>(-2147483648.0f));
  r10 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_50), vec4<i32>(2147483647i), (v_50 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_49 == v_49))));
  let v_51 = r10;
  r5 = vec4<f32>(v_51.zw, r5.zw);
  r1.w = textureLoad(t5, bitcast<vec2<i32>>(r5.xy), 0i).x;
  r1.w = ((-(r1.wwww)).w + r1.x);
  r5.x = (cb12_12.tint_symbol_2[0u].z / r1.w);
  r11 = vec4<f32>(r11.xy, vec2<f32>());
  r12 = fma(cb2_2.tint_symbol_1[18u].zwzw, vec4<f32>(9.4108905792236328125f, 6.46983671188354492188f, 4.70544528961181640625f, -12.93967342376708984375f), r1.yzyz);
  r13 = fma(r12, r2.zwzw, vec4<f32>(0.5f));
  r12 = (r12 + vec4<f32>(-0.5f));
  r12 = (r12.zwxy * cb12_12.tint_symbol_2[0u].xyxy);
  r13 = trunc(r13);
  let v_52 = r13.zwxy;
  let v_53 = max(v_52, vec4<f32>(-2147483648.0f));
  r13 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_53), vec4<i32>(2147483647i), (v_53 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_52 == v_52))));
  let v_54 = r13;
  r11 = vec4<f32>(v_54.zw, r11.zw);
  r1.w = textureLoad(t5, bitcast<vec2<i32>>(r11.xy), 0i).x;
  r1.w = ((-(r1.wwww)).w + r1.x);
  r5.y = (cb12_12.tint_symbol_2[0u].z / r1.w);
  r13 = vec4<f32>(r13.xy, vec2<f32>());
  r1.w = textureLoad(t5, bitcast<vec2<i32>>(r13.xy), 0i).x;
  r1.w = ((-(r1.wwww)).w + r1.x);
  r5.z = (cb12_12.tint_symbol_2[0u].z / r1.w);
  r11 = vec4<f32>(r11.xy, vec2<f32>());
  let v_55 = fma(cb2_2.tint_symbol_1[18u].zw, vec2<f32>(-9.4108905792236328125f, -6.46983671188354492188f), r1.yz);
  r2 = vec4<f32>(v_55.xy, r2.zw);
  let v_56 = fma(r2.xy, r2.zw, vec2<f32>(0.5f));
  r13 = vec4<f32>(v_56.xy, r13.zw);
  let v_57 = (r2.xy + vec2<f32>(-0.5f));
  r2 = vec4<f32>(v_57.xy, r2.zw);
  let v_58 = (r2.xy * cb12_12.tint_symbol_2[0u].xy);
  r0 = vec4<f32>(v_58.xy, r0.zw);
  let v_59 = trunc(r13.xy);
  r2 = vec4<f32>(v_59.xy, r2.zw);
  let v_60 = r2.xy;
  let v_61 = max(v_60, vec2<f32>(-2147483648.0f));
  let v_62 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_61), vec2<i32>(2147483647i), (v_61 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_60 == v_60))));
  r11 = vec4<f32>(v_62.xy, r11.zw);
  r1.w = textureLoad(t5, bitcast<vec2<i32>>(r11.xy), 0i).x;
  r1.w = ((-(r1.wwww)).w + r1.x);
  r5.w = (cb12_12.tint_symbol_2[0u].z / r1.w);
  r5 = (r0.wwww * r5);
  let v_63 = -(r6.xyzx);
  let v_64 = fma(r0.xyz, r5.www, v_63.xyz);
  r0 = vec4<f32>(v_64.xyz, r0.w);
  r11.w = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r13.w = sqrt(r0.x);
  r0.z = 0.5f;
  let v_65 = r9;
  r0 = vec4<f32>(v_65.zw, r0.zw);
  let v_66 = -(r6.xyzx);
  let v_67 = fma(r0.xyz, r5.xxx, v_66.xyz);
  r0 = vec4<f32>(v_67.xyz, r0.w);
  r11.x = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r13.x = sqrt(r0.x);
  r0.z = 0.5f;
  let v_68 = r12;
  r0 = vec4<f32>(v_68.zw, r0.zw);
  let v_69 = -(r6.xyzx);
  let v_70 = fma(r0.xyz, r5.yyy, v_69.xyz);
  r0 = vec4<f32>(v_70.xyz, r0.w);
  r11.y = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r13.y = sqrt(r0.x);
  r12.z = 0.5f;
  let v_71 = -(r6.xyzx);
  let v_72 = fma(r12.xyz, r5.zzz, v_71.xyz);
  r0 = vec4<f32>(v_72.xyz, r0.w);
  r11.z = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r13.z = sqrt(r0.x);
  r5 = (-(r11) + r13);
  r5 = (r5 / r13);
  r11 = (r13 * vec4<f32>(10.0f));
  r5 = clamp(max(r5, r11), vec4<f32>(), vec4<f32>(1.0f));
  r3.w = dot(r5, vec4<f32>(0.25f));
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r11 = fma(cb2_2.tint_symbol_1[18u].zwzw, vec4<f32>(-12.94158935546875f, 4.70412731170654296875f, -6.470794677734375f, -9.4082546234130859375f), r1.yzyz);
  r12 = fma(r11, r2.zwzw, vec4<f32>(0.5f));
  r11 = (r11 + vec4<f32>(-0.5f));
  r11 = (r11.zwxy * cb12_12.tint_symbol_2[0u].xyxy);
  r12 = trunc(r12);
  let v_73 = r12.zwxy;
  let v_74 = max(v_73, vec4<f32>(-2147483648.0f));
  r12 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_74), vec4<i32>(2147483647i), (v_74 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_73 == v_73))));
  let v_75 = r12;
  r5 = vec4<f32>(v_75.zw, r5.zw);
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r5.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r5.y = (cb12_12.tint_symbol_2[0u].z / r0.x);
  r12 = vec4<f32>(r12.xy, vec2<f32>());
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r12.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r5.z = (cb12_12.tint_symbol_2[0u].z / r0.x);
  r12 = vec4<f32>(r12.xy, vec2<f32>());
  r13 = fma(cb2_2.tint_symbol_1[18u].zwzw, vec4<f32>(12.94158935546875f, -4.70412731170654296875f, 1.24841785430908203125f, 15.80398082733154296875f), r1.yzyz);
  r14 = fma(cb2_2.tint_symbol_1[18u].zwzw, vec4<f32>(-2.4968357086181640625f, 7.90199041366577148438f, -1.24841785430908203125f, -15.80398082733154296875f), r1.yzyz);
  r15 = fma(r13, r2.zwzw, vec4<f32>(0.5f));
  r2 = fma(r14, r2.zwzw, vec4<f32>(0.5f));
  r14 = (r14 + vec4<f32>(-0.5f));
  r14 = (r14.zwxy * cb12_12.tint_symbol_2[0u].xyxy);
  r2 = trunc(r2);
  let v_76 = r2.zwxy;
  let v_77 = max(v_76, vec4<f32>(-2147483648.0f));
  r2 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_77), vec4<i32>(2147483647i), (v_77 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_76 == v_76))));
  r13 = (r13 + vec4<f32>(-0.5f));
  r13 = (r13.zwxy * cb12_12.tint_symbol_2[0u].xyxy);
  r15 = trunc(r15);
  let v_78 = r15.zwxy;
  let v_79 = max(v_78, vec4<f32>(-2147483648.0f));
  r15 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_79), vec4<i32>(2147483647i), (v_79 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_78 == v_78))));
  let v_80 = r15;
  r12 = vec4<f32>(v_80.zw, r12.zw);
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r12.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r5.w = (cb12_12.tint_symbol_2[0u].z / r0.x);
  r8 = vec4<f32>(r8.xy, vec2<f32>());
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r8.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r5.x = (cb12_12.tint_symbol_2[0u].z / r0.x);
  r5 = (r0.wwww * r5);
  r7.z = 0.5f;
  let v_81 = -(r6.xyzx);
  let v_82 = fma(r7.xyz, r5.xxx, v_81.xyz);
  r0 = vec4<f32>(v_82.xyz, r0.w);
  r7.x = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r8.x = sqrt(r0.x);
  r0.z = 0.5f;
  let v_83 = r11;
  r0 = vec4<f32>(v_83.zw, r0.zw);
  let v_84 = -(r6.xyzx);
  let v_85 = fma(r0.xyz, r5.yyy, v_84.xyz);
  r0 = vec4<f32>(v_85.xyz, r0.w);
  r7.y = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r8.y = sqrt(r0.x);
  r11.z = 0.5f;
  let v_86 = -(r6.xyzx);
  let v_87 = fma(r11.xyz, r5.zzz, v_86.xyz);
  r0 = vec4<f32>(v_87.xyz, r0.w);
  r7.z = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r8.z = sqrt(r0.x);
  r0.z = 0.5f;
  let v_88 = r13;
  r0 = vec4<f32>(v_88.zw, r0.zw);
  let v_89 = -(r6.xyzx);
  let v_90 = fma(r0.xyz, r5.www, v_89.xyz);
  r0 = vec4<f32>(v_90.xyz, r0.w);
  r7.w = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r8.w = sqrt(r0.x);
  r5 = (-(r7) + r8);
  r5 = (r5 / r8);
  r7 = (r8 * vec4<f32>(10.0f));
  r5 = clamp(max(r5, r7), vec4<f32>(), vec4<f32>(1.0f));
  r3.y = dot(r5, vec4<f32>(0.25f));
  r15 = vec4<f32>(r15.xy, vec2<f32>());
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r15.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r5.x = (cb12_12.tint_symbol_2[0u].z / r0.x);
  r10 = vec4<f32>(r10.xy, vec2<f32>());
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r10.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r5.w = (cb12_12.tint_symbol_2[0u].z / r0.x);
  let v_91 = r2;
  r7 = vec4<f32>(v_91.zw, r7.zw);
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r7.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r5.y = (cb12_12.tint_symbol_2[0u].z / r0.x);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.x);
  r5.z = (cb12_12.tint_symbol_2[0u].z / r0.x);
  r0 = (r0.wwww * r5);
  r13.z = 0.5f;
  let v_92 = -(r6.xyzx);
  let v_93 = fma(r13.xyz, r0.xxx, v_92.xyz);
  r1 = vec4<f32>(v_93.xyz, r1.w);
  r2.x = dot(r1.xyz, r4.xyz);
  r0.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r0.x);
  r9.z = 0.5f;
  let v_94 = -(r6.xyzx);
  let v_95 = fma(r9.xyz, r0.www, v_94.xyz);
  r5 = vec4<f32>(v_95.xyz, r5.w);
  r2.w = dot(r5.xyz, r4.xyz);
  r0.x = dot(r5.xyz, r5.xyz);
  r1.w = sqrt(r0.x);
  let v_96 = r14;
  r5 = vec4<f32>(v_96.zw, r5.zw);
  r5.z = 0.5f;
  let v_97 = -(r6.xyxz);
  let v_98 = fma(r5.xyz, r0.yyy, v_97.xyw);
  r0 = vec4<f32>(v_98.xy, r0.z, v_98.z);
  r2.y = dot(r0.xyw, r4.xyz);
  r0.x = dot(r0.xyw, r0.xyw);
  r1.y = sqrt(r0.x);
  r14.z = 0.5f;
  let v_99 = -(r6.xyzx);
  let v_100 = fma(r14.xyz, r0.zzz, v_99.xyz);
  r0 = vec4<f32>(v_100.xyz, r0.w);
  r2.z = dot(r0.xyz, r4.xyz);
  r0.x = dot(r0.xyz, r0.xyz);
  r1.z = sqrt(r0.x);
  let v_101 = -(r2);
  r0 = (r1 + v_101);
  r0 = (r0 / r1);
  r1 = (r1 * vec4<f32>(10.0f));
  r0 = clamp(max(r0, r1), vec4<f32>(), vec4<f32>(1.0f));
  r3.z = dot(r0, vec4<f32>(0.25f));
  r0.x = dot(r3, vec4<f32>(0.25f));
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_2[4u].x);
  r0.x = exp2(r0.x);
  r0.y = textureSample(t8, s8, v1.xyxx.xy).x;
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@builtin(position) v_102 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_102, v1);
  return o0;
}
