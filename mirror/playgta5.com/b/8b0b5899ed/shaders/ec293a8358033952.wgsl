diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  let v = textureNumSamples(t3);
  let v_1 = sample_pos[select(0u, ((v + 0u) - 1u), ((0u < v) & true))];
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = dpdx(v3.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = dpdy(v3.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = (r0.yyy * r2.xyz);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = fma(r0.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xyz + v3.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r1.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r1.x = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.x);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_11 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = (r0.xy + vec2<f32>(0.5f, 0.125f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_1[12u].x == 0.0f))));
  let v_14 = -(cb6_6.tint_symbol_1[12u].xxxx);
  r0.y = (r0.z + v_14.y);
  let v_15 = dpdx(r1.xyy);
  r2 = vec4<f32>(v_15.xy, r2.z, v_15.z);
  r2.z = dpdx(r0.y);
  let v_16 = dpdy(r1.yxy);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  r3.w = dpdy(r0.y);
  let v_17 = (r2.yw * r3.yw);
  let v_18 = r2;
  r2 = vec4<f32>(v_18.x, v_17.x, v_18.z, v_17.y);
  let v_19 = -(r2.ywyy);
  let v_20 = fma(r2.xz, r3.xz, v_19.xy);
  r4 = vec4<f32>(v_20.xy, r4.zw);
  r0.w = (1.0f / r4.x);
  r1.w = (r2.z * r3.y);
  let v_21 = -(r1.wwww);
  r4.z = fma(r2.x, r3.w, v_21.z);
  let v_22 = (r0.ww * r4.yz);
  r2 = vec4<f32>(v_22.xy, r2.zw);
  let v_23 = max(r2.xy, vec2<f32>());
  r2 = vec4<f32>(v_23.xy, r2.zw);
  let v_24 = min(r2.xy, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_24.xy, r2.zw);
  let v_25 = -(cb6_6.tint_symbol_1[13u].xxxx);
  r0.y = fma(v_25.y, r2.x, r0.y);
  r0.y = fma(v_25.y, r2.y, r0.y);
  let v_26 = bitcast<u32>(r0.x);
  let v_27 = r0.y;
  r1.z = select(r0.z, v_27, (v_26 != 0u));
  let v_28 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_28.xy, r0.zw);
  r0.z = 0.0f;
  let v_29 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = r0.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_30.xy, r0.z);
  let v_31 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, -0.5f));
  r2 = vec4<f32>(v_31.xy, r2.zw);
  r2.z = 0.0f;
  let v_32 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_32.xyz, r2.w);
  let v_33 = r2.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_33.xy, r2.z);
  let v_34 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.5f, -0.5f));
  r2 = vec4<f32>(v_34.xy, r2.zw);
  r2.z = 0.0f;
  let v_35 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = r2.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_36.xy, r2.z);
  let v_37 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.5f, 0.0f));
  r2 = vec4<f32>(v_37.xy, r2.zw);
  r2.z = 0.0f;
  let v_38 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_38.xyz, r2.w);
  let v_39 = r2.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_39.xy, r2.z);
  let v_40 = r1.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_40.xy, r1.z);
  let v_41 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.5f, 0.0f));
  r3 = vec4<f32>(v_41.xy, r3.zw);
  r3.z = 0.0f;
  let v_42 = (r1.xyz + r3.xyz);
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = r3.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_43.xy, r3.z);
  let v_44 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.5f, 0.5f));
  r3 = vec4<f32>(v_44.xy, r3.zw);
  r3.z = 0.0f;
  let v_45 = (r1.xyz + r3.xyz);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  let v_46 = r3.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_46.xy, r3.z);
  let v_47 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, 0.5f));
  r4 = vec4<f32>(v_47.xy, r4.zw);
  r4.z = 0.0f;
  let v_48 = (r1.xyz + r4.xyz);
  r4 = vec4<f32>(v_48.xyz, r4.w);
  let v_49 = r4.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_49.xy, r4.z);
  let v_50 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_50.xy, r4.zw);
  r4.z = 0.0f;
  let v_51 = (r1.xyz + r4.xyz);
  r4 = vec4<f32>(v_51.xyz, r4.w);
  let v_52 = r4.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_52.xy, r4.z);
  let v_53 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_53.xyz, r0.w);
  let v_54 = (r3.xyz + r0.xyz);
  r0 = vec4<f32>(v_54.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.0f));
  r0.x = (r0.x * 0.11111111193895339966f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = textureSample(t2, s2, r1.xyxx.xy).w;
    r0.y = ((-(r0.zzzz)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  let v_55 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_55.xy, r0.zw);
  let v_56 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_56.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_57 = bitcast<u32>(r0.z);
  let v_58 = r0.w;
  r0.x = select(r0.x, v_58, (v_57 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
