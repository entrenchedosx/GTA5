diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v_1 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = (r0.x * cb11_11.tint_symbol_3[0u].w);
  r0.y = (r0.y * cb11_11.tint_symbol_3[1u].w);
  let v_3 = (r0.yyy * cb11_11.tint_symbol_3[1u].xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r0.xxx, cb11_11.tint_symbol_3[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_6 = (r0.xyz + v_5.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r1.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v4)).x;
  r1.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.z);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_11 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (r0.www * v3.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r1.x = textureSample(t14, s14, r1.xyxx.xy).z;
  r1.x = (r1.x * cb12_12.tint_symbol_2[0u].w);
  let v_14 = fma(r2.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(r1.x, v_14.xyz);
  let v_15 = &(x0[0u]);
  let v_16 = r1;
  *(v_15) = vec4<f32>(v_16.yzw, (*(v_15)).w);
  let v_17 = fma(r2.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = &(x0[1u]);
  let v_19 = r3;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r2.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = &(x0[2u]);
  let v_22 = r4;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = fma(r2.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = &(x0[3u]);
  let v_25 = r2;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, -0.25f));
  let v_27 = r5;
  r5 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_28 = -(r1.xxxx);
  r1.x = fma(r1.w, 0.5f, v_28.x);
  let v_29 = abs(r4.yyyy);
  r1.w = max(v_29.w, abs(r4.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.x)));
  let v_30 = (bitcast<u32>(r1.w) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_31, v_30);
  let v_32 = abs(r3.yyyy);
  r2.z = max(v_32.z, abs(r3.xxxx).z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r1.x)));
  let v_33 = bitcast<u32>(r2.z);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_33 != 0u));
  let v_34 = abs(r1.zzzz);
  r1.y = max(v_34.y, abs(r1.yyyy).y);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
  let v_35 = bitcast<u32>(r1.x);
  r1.x = select(r1.w, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r1.x)];
  r1 = vec4<f32>(r1.x, v_36.xyz);
  r1.x = f32(bitcast<i32>(r1.x));
  r2.z = (r1.x + 0.5f);
  r2.z = (r2.z * 0.25f);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.xxxx)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r1.x = dot(r3, cb6_6.tint_symbol_1[12u]);
  r2.w = dot(r3, cb6_6.tint_symbol_1[13u]);
  r3.x = (r1.y + 0.5f);
  r3.y = fma(r1.z, 0.25f, r2.z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r1.x = ((-(r1.xxxx)).x + r1.w);
  let v_37 = dpdx(r3.xyy);
  r4 = vec4<f32>(v_37.xy, r4.z, v_37.z);
  r4.z = dpdx(r1.x);
  let v_38 = dpdy(r3.yxy);
  r6 = vec4<f32>(v_38.xyz, r6.w);
  r6.w = dpdy(r1.x);
  let v_39 = (r4.yw * r6.yw);
  let v_40 = r4;
  r4 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  let v_41 = -(r4.ywyy);
  let v_42 = fma(r4.xz, r6.xz, v_41.xy);
  r7 = vec4<f32>(v_42.xy, r7.zw);
  r1.z = (1.0f / r7.x);
  r2.z = (r4.z * r6.y);
  let v_43 = -(r2.zzzz);
  r7.z = fma(r4.x, r6.w, v_43.z);
  let v_44 = (r1.zz * r7.yz);
  r4 = vec4<f32>(v_44.xy, r4.zw);
  let v_45 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_45.xy, r4.zw);
  let v_46 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_46.xy, r4.zw);
  r1.x = fma((-(r2.wwww)).x, r4.x, r1.x);
  r1.x = fma((-(r2.wwww)).x, r4.y, r1.x);
  let v_47 = bitcast<u32>(r1.y);
  let v_48 = r1.x;
  r3.z = select(r1.w, v_48, (v_47 != 0u));
  r5.w = 0.0f;
  let v_49 = (r3.xyz + r5.yzw);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  let v_50 = r1.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_50.xy, r1.z);
  let v_51 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, -0.25f));
  r4 = vec4<f32>(v_51.xy, r4.zw);
  r4.z = 0.0f;
  let v_52 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_52.xyz, r4.w);
  let v_53 = r4.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_53.xy, r4.z);
  let v_54 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, -0.25f));
  r4 = vec4<f32>(v_54.xy, r4.zw);
  r4.z = 0.0f;
  let v_55 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_55.xyz, r4.w);
  let v_56 = r4.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_56.xy, r4.z);
  let v_57 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, 0.0f));
  r4 = vec4<f32>(v_57.xy, r4.zw);
  r4.z = 0.0f;
  let v_58 = (r3.xyz + r4.xyz);
  r4 = vec4<f32>(v_58.xyz, r4.w);
  let v_59 = r4.xyxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_59.xy, r4.z);
  let v_60 = r3.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_60.xy, r3.z);
  let v_61 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.0f));
  r5 = vec4<f32>(v_61.xy, r5.zw);
  r5.z = 0.0f;
  let v_62 = (r3.xyz + r5.xyz);
  r5 = vec4<f32>(v_62.xyz, r5.w);
  let v_63 = r5.xyxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_63.xy, r5.z);
  let v_64 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, 0.25f));
  r5 = vec4<f32>(v_64.xy, r5.zw);
  r5.z = 0.0f;
  let v_65 = (r3.xyz + r5.xyz);
  r5 = vec4<f32>(v_65.xyz, r5.w);
  let v_66 = r5.xyxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_66.xy, r5.z);
  let v_67 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, 0.25f));
  r6 = vec4<f32>(v_67.xy, r6.zw);
  r6.z = 0.0f;
  let v_68 = (r3.xyz + r6.xyz);
  r6 = vec4<f32>(v_68.xyz, r6.w);
  let v_69 = r6.xyxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_69.xy, r6.z);
  let v_70 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.25f));
  r6 = vec4<f32>(v_70.xy, r6.zw);
  r6.z = 0.0f;
  let v_71 = (r3.xyz + r6.xyz);
  r6 = vec4<f32>(v_71.xyz, r6.w);
  let v_72 = r6.xyxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_72.xy, r6.z);
  let v_73 = (r1.xyz + r4.xyz);
  r1 = vec4<f32>(v_73.xyz, r1.w);
  let v_74 = (r5.xyz + r1.xyz);
  r1 = vec4<f32>(v_74.xyz, r1.w);
  r1.x = dot(r1.xyz, vec3<f32>(1.0f));
  r1.x = (r1.x * 0.11111111193895339966f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = textureSample(t2, s2, r3.xyxx.xy).w;
    r1.y = ((-(r1.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_75 = abs(r2.yyyy);
  r1.z = max(v_75.z, abs(r2.xxxx).z);
  r1.z = clamp(fma(r1.zzzz, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_76 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_76.xy, r1.zw);
  let v_77 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_77.xy, r1.zw);
  let v_78 = min(r1.xy, vec2<f32>(1.0f));
  let v_79 = r1;
  r1 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_80 = bitcast<u32>(r0.w);
  let v_81 = r1.w;
  r1.x = select(r1.y, v_81, (v_80 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_82 = r2;
  r2 = vec4<f32>(v_82.x, 0.0f, v_82.z, 0.5f);
  let v_83 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_83.xy, r0.zw);
  r2.z = textureSample(t5, s5, r0.xyxx.xy).y;
  r0.x = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.y = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(r0.yyyy)).y, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.y * r0.x);
  let v_84 = (r0.xx * r1.xz);
  r0 = vec4<f32>(v_84.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
