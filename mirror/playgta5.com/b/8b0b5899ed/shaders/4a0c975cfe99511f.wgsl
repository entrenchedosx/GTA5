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
  let v_14 = textureSample(t14, s14, r1.xyxx.xy).xyz;
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.z = (r1.z * cb12_12.tint_symbol_2[0u].w);
  r3 = fma(r1.xyyx, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_15 = fma(r2.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(v_15.xy, r1.z, v_15.z);
  let v_16 = &(x0[0u]);
  let v_17 = r1;
  *(v_16) = vec4<f32>(v_17.xyw, (*(v_16)).w);
  let v_18 = fma(r2.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = &(x0[1u]);
  let v_20 = r4;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r2.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = &(x0[2u]);
  let v_23 = r2;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  let v_24 = &(x0[3u]);
  let v_25 = r2;
  *(v_24) = vec4<f32>(v_25.xyz, (*(v_24)).w);
  let v_26 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  r2 = vec4<f32>(r2.xy, v_26.xy);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_27 = -(r1.zzzz);
  r1.z = fma(r1.w, 0.5f, v_27.z);
  let v_28 = abs(r2.yyyy);
  let v_29 = max(v_28.xy, abs(r2.xxxx).xy);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.z)));
  let v_30 = (bitcast<u32>(r1.w) != 0u);
  let v_31 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_31, v_30);
  let v_32 = abs(r4.yyyy);
  r2.x = max(v_32.x, abs(r4.xxxx).x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.z)));
  let v_33 = bitcast<u32>(r2.x);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_33 != 0u));
  let v_34 = abs(r1.yyyy);
  r1.x = max(v_34.x, abs(r1.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r1.z)));
  let v_35 = bitcast<u32>(r1.x);
  r1.x = select(r1.w, 0.0f, (v_35 != 0u));
  let v_36 = x0[bitcast<i32>(r1.x)];
  r1 = vec4<f32>(r1.x, v_36.xyz);
  r1.x = f32(bitcast<i32>(r1.x));
  r2.x = (r1.x + 0.5f);
  r2.x = (r2.x * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.xxxx)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r1.x = dot(r4, cb6_6.tint_symbol_1[12u]);
  r4.x = dot(r4, cb6_6.tint_symbol_1[13u]);
  r5.x = (r1.y + 0.5f);
  r5.y = fma(r1.z, 0.25f, r2.x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r1.x = ((-(r1.xxxx)).x + r1.w);
  let v_37 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_37.xy, r6.z, v_37.z);
  r6.z = dpdx(r1.x);
  let v_38 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_38.xyz, r7.w);
  r7.w = dpdy(r1.x);
  let v_39 = (r6.yw * r7.yw);
  let v_40 = r4;
  r4 = vec4<f32>(v_40.x, v_39.xy, v_40.w);
  let v_41 = -(r4.yzyy);
  let v_42 = fma(r6.xz, r7.xz, v_41.xy);
  r8 = vec4<f32>(v_42.xy, r8.zw);
  r1.z = (1.0f / r8.x);
  r2.x = (r6.z * r7.y);
  let v_43 = -(r2.xxxx);
  r8.z = fma(r6.x, r7.w, v_43.z);
  let v_44 = (r1.zz * r8.yz);
  let v_45 = r4;
  r4 = vec4<f32>(v_45.x, v_44.xy, v_45.w);
  let v_46 = max(r4.yz, vec2<f32>());
  let v_47 = r4;
  r4 = vec4<f32>(v_47.x, v_46.xy, v_47.w);
  let v_48 = min(r4.yz, vec2<f32>(0.5f));
  let v_49 = r4;
  r4 = vec4<f32>(v_49.x, v_48.xy, v_49.w);
  r1.x = fma((-(r4.xxxx)).x, r4.y, r1.x);
  r1.x = fma((-(r4.xxxx)).x, r4.z, r1.x);
  let v_50 = bitcast<u32>(r1.y);
  let v_51 = r1.x;
  r1.z = select(r1.w, v_51, (v_50 != 0u));
  let v_52 = (r3.zw * r2.zw);
  r3 = vec4<f32>(r3.xy, v_52.xy);
  let v_53 = fma(r2.zw, r3.xy, r5.xy);
  r1 = vec4<f32>(v_53.xy, r1.zw);
  let v_54 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.25f));
  r4 = vec4<f32>(v_54.xy, r4.zw);
  r4.z = 0.0f;
  let v_55 = (r1.xyz + r4.xyz);
  r2 = vec4<f32>(v_55.x, r2.y, v_55.yz);
  let v_56 = r2.xzxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_56.xy, r2.w);
  let v_57 = fma(r3.zw, vec2<f32>(-0.5f, 0.5f), r5.xy);
  r1 = vec4<f32>(v_57.xy, r1.zw);
  let v_58 = (r4.xyz + r1.xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = r1.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_59.xy, r1.z);
  r1.x = (r1.x + r1.w);
  r1.x = (r1.x * 0.5f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = textureSample(t2, s2, r5.xyxx.xy).w;
    r1.y = ((-(r1.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r1.z = clamp(fma(r2.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_60 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_60.xy, r1.zw);
  let v_61 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_61.xy, r1.zw);
  let v_62 = min(r1.xy, vec2<f32>(1.0f));
  let v_63 = r1;
  r1 = vec4<f32>(v_63.x, v_62.xy, v_63.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_64 = bitcast<u32>(r0.w);
  let v_65 = r1.w;
  r1.x = select(r1.y, v_65, (v_64 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_66 = r2;
  r2 = vec4<f32>(v_66.x, 0.0f, v_66.z, 0.5f);
  let v_67 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_67.xy, r0.zw);
  r2.z = textureSample(t5, s5, r0.xyxx.xy).y;
  r0.x = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.y = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(r0.yyyy)).y, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.y * r0.x);
  let v_68 = (r0.xx * r1.xz);
  r0 = vec4<f32>(v_68.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
