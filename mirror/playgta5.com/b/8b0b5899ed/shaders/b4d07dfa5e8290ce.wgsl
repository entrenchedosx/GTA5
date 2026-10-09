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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

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

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
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
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_7 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.www * v3.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = (r2.xy * vec2<f32>(0.015625f));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = textureSample(t14, s14, r2.xyxx.xy);
  r1.w = (r2.z * cb12_12.tint_symbol_2[0u].w);
  let v_11 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = &(x0[0u]);
  let v_13 = r2;
  *(v_12) = vec4<f32>(v_13.xyz, (*(v_12)).w);
  let v_14 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = &(x0[1u]);
  let v_16 = r3;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = &(x0[2u]);
  let v_19 = r1;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = &(x0[3u]);
  let v_21 = r1;
  *(v_20) = vec4<f32>(v_21.xyz, (*(v_20)).w);
  let v_22 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, -0.25f));
  let v_23 = r4;
  r4 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r1.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_24 = -(r1.wwww);
  r1.z = fma(r1.z, 0.5f, v_24.z);
  let v_25 = abs(r1.yyyy);
  let v_26 = max(v_25.xy, abs(r1.xxxx).xy);
  r1 = vec4<f32>(v_26.xy, r1.zw);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r1.z)));
  let v_27 = (bitcast<u32>(r1.x) != 0u);
  let v_28 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_28, v_27);
  let v_29 = abs(r3.yyyy);
  r1.w = max(v_29.w, abs(r3.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  let v_30 = bitcast<u32>(r1.w);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_30 != 0u));
  let v_31 = abs(r2.yyyy);
  r1.w = max(v_31.w, abs(r2.xxxx).w);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  let v_32 = bitcast<u32>(r1.z);
  r1.x = select(r1.x, 0.0f, (v_32 != 0u));
  let v_33 = x0[bitcast<i32>(r1.x)];
  r2 = vec4<f32>(v_33.xyz, r2.w);
  r1.x = f32(bitcast<i32>(r1.x));
  r1.z = (r1.x + 0.5f);
  r1.z = (r1.z * 0.25f);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.xxxx)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r1.x = dot(r3, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r3, cb6_6.tint_symbol_1[13u]);
  r3.x = (r2.x + 0.5f);
  r3.y = fma(r2.y, 0.25f, r1.z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r1.x = ((-(r1.xxxx)).x + r2.z);
  let v_34 = dpdx(r3.xyy);
  r5 = vec4<f32>(v_34.xy, r5.z, v_34.z);
  r5.z = dpdx(r1.x);
  let v_35 = dpdy(r3.yxy);
  r6 = vec4<f32>(v_35.xyz, r6.w);
  r6.w = dpdy(r1.x);
  let v_36 = (r5.yw * r6.yw);
  r2 = vec4<f32>(v_36.xy, r2.zw);
  let v_37 = -(r2.xyxx);
  let v_38 = fma(r5.xz, r6.xz, v_37.xy);
  r7 = vec4<f32>(v_38.xy, r7.zw);
  r2.x = (1.0f / r7.x);
  r2.y = (r5.z * r6.y);
  let v_39 = -(r2.yyyy);
  r7.z = fma(r5.x, r6.w, v_39.z);
  let v_40 = (r2.xx * r7.yz);
  r2 = vec4<f32>(v_40.xy, r2.zw);
  let v_41 = max(r2.xy, vec2<f32>());
  r2 = vec4<f32>(v_41.xy, r2.zw);
  let v_42 = min(r2.xy, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_42.xy, r2.zw);
  r1.x = fma((-(r1.wwww)).x, r2.x, r1.x);
  r1.x = fma((-(r1.wwww)).x, r2.y, r1.x);
  let v_43 = bitcast<u32>(r1.z);
  let v_44 = r1.x;
  r3.z = select(r2.z, v_44, (v_43 != 0u));
  r4.w = 0.0f;
  let v_45 = (r3.xyz + r4.yzw);
  r1 = vec4<f32>(v_45.x, r1.y, v_45.yz);
  let v_46 = r1.xzxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_46.xy, r1.w);
  let v_47 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, -0.25f));
  r4 = vec4<f32>(v_47.xy, r4.zw);
  r4.z = 0.0f;
  let v_48 = (r3.xyz + r4.xyz);
  r1 = vec4<f32>(v_48.x, r1.y, v_48.yz);
  let v_49 = r1.xzxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_49.xy, r1.w);
  let v_50 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, -0.25f));
  r4 = vec4<f32>(v_50.xy, r4.zw);
  r4.z = 0.0f;
  let v_51 = (r3.xyz + r4.xyz);
  r1 = vec4<f32>(v_51.x, r1.y, v_51.yz);
  let v_52 = r1.xzxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_52.xy, r1.w);
  let v_53 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, 0.0f));
  r4 = vec4<f32>(v_53.xy, r4.zw);
  r4.z = 0.0f;
  let v_54 = (r3.xyz + r4.xyz);
  r1 = vec4<f32>(v_54.x, r1.y, v_54.yz);
  let v_55 = r1.xzxx;
  r4.x = textureSampleCompareLevel(t15, s15, v_55.xy, r1.w);
  let v_56 = r3.xyxx;
  r4.y = textureSampleCompareLevel(t15, s15, v_56.xy, r3.z);
  let v_57 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.0f));
  r5 = vec4<f32>(v_57.xy, r5.zw);
  r5.z = 0.0f;
  let v_58 = (r3.xyz + r5.xyz);
  r1 = vec4<f32>(v_58.x, r1.y, v_58.yz);
  let v_59 = r1.xzxx;
  r4.z = textureSampleCompareLevel(t15, s15, v_59.xy, r1.w);
  let v_60 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-1.0f, 0.25f));
  r5 = vec4<f32>(v_60.xy, r5.zw);
  r5.z = 0.0f;
  let v_61 = (r3.xyz + r5.xyz);
  r1 = vec4<f32>(v_61.x, r1.y, v_61.yz);
  let v_62 = r1.xzxx;
  r5.x = textureSampleCompareLevel(t15, s15, v_62.xy, r1.w);
  let v_63 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, 0.25f));
  r6 = vec4<f32>(v_63.xy, r6.zw);
  r6.z = 0.0f;
  let v_64 = (r3.xyz + r6.xyz);
  r1 = vec4<f32>(v_64.x, r1.y, v_64.yz);
  let v_65 = r1.xzxx;
  r5.y = textureSampleCompareLevel(t15, s15, v_65.xy, r1.w);
  let v_66 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.25f));
  r6 = vec4<f32>(v_66.xy, r6.zw);
  r6.z = 0.0f;
  let v_67 = (r3.xyz + r6.xyz);
  r1 = vec4<f32>(v_67.x, r1.y, v_67.yz);
  let v_68 = r1.xzxx;
  r5.z = textureSampleCompareLevel(t15, s15, v_68.xy, r1.w);
  let v_69 = (r2.xyz + r4.xyz);
  r1 = vec4<f32>(v_69.x, r1.y, v_69.yz);
  let v_70 = (r5.xyz + r1.xzw);
  r1 = vec4<f32>(v_70.x, r1.y, v_70.yz);
  r1.x = dot(r1.xzw, vec3<f32>(1.0f));
  r2.x = (r1.x * 0.11111111193895339966f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r3 = textureSample(t2, s2, r3.xyxx.xy);
    r2.y = ((-(r3.wwww)).y + 1.0f);
  } else {
    r2.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r1.x = clamp(fma(r1.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).x, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_71 = fma(r0.ww, r1.xx, r2.xy);
  r1 = vec4<f32>(v_71.xy, r1.zw);
  let v_72 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_72.xy, r1.zw);
  let v_73 = min(r1.xy, vec2<f32>(1.0f));
  let v_74 = r1;
  r1 = vec4<f32>(v_74.x, v_73.xy, v_74.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_75 = bitcast<u32>(r0.w);
  let v_76 = r1.w;
  r1.x = select(r1.y, v_76, (v_75 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_77 = r2;
  r2 = vec4<f32>(v_77.x, 0.0f, v_77.z, 0.5f);
  let v_78 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_78.xy, r0.zw);
  r3 = textureSample(t5, s5, r0.xyxx.xy);
  r2.z = r3.y;
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r0.x = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).x, 0.0f, 1.0f);
  r0.x = sqrt(r0.x);
  r0.x = fma((-(r0.xxxx)).x, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.x * r2.x);
  let v_79 = (r0.xx * r1.xz);
  r0 = vec4<f32>(v_79.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
