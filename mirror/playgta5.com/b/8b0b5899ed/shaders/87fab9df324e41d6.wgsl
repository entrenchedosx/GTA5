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

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v4)).x;
  r0.y = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_3[2u].w / r0.x);
  let v_4 = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r0.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xy + vec2<f32>(0.5f, 0.125f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol_1[12u].x == 0.0f))));
  let v_7 = -(cb6_6.tint_symbol_1[12u].xxxx);
  r0.y = (r0.z + v_7.y);
  let v_8 = dpdx(r1.xyy);
  r2 = vec4<f32>(v_8.xy, r2.z, v_8.z);
  r2.z = dpdx(r0.y);
  let v_9 = dpdy(r1.yxy);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r3.w = dpdy(r0.y);
  let v_10 = (r2.yw * r3.yw);
  let v_11 = r2;
  r2 = vec4<f32>(v_11.x, v_10.x, v_11.z, v_10.y);
  let v_12 = -(r2.ywyy);
  let v_13 = fma(r2.xz, r3.xz, v_12.xy);
  r4 = vec4<f32>(v_13.xy, r4.zw);
  r0.w = (1.0f / r4.x);
  r1.w = (r2.z * r3.y);
  let v_14 = -(r1.wwww);
  r4.z = fma(r2.x, r3.w, v_14.z);
  let v_15 = (r0.ww * r4.yz);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = max(r2.xy, vec2<f32>());
  r2 = vec4<f32>(v_16.xy, r2.zw);
  let v_17 = min(r2.xy, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_17.xy, r2.zw);
  let v_18 = -(cb6_6.tint_symbol_1[13u].xxxx);
  r0.y = fma(v_18.y, r2.x, r0.y);
  r0.y = fma(v_18.y, r2.y, r0.y);
  let v_19 = bitcast<u32>(r0.x);
  let v_20 = r0.y;
  r1.z = select(r0.z, v_20, (v_19 != 0u));
  let v_21 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_21.xy, r0.zw);
  r0.z = 0.0f;
  let v_22 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = r0.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_23.xy, r0.z);
  let v_24 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, -0.5f));
  r2 = vec4<f32>(v_24.xy, r2.zw);
  r2.z = 0.0f;
  let v_25 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = r2.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_26.xy, r2.z);
  let v_27 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.5f, -0.5f));
  r2 = vec4<f32>(v_27.xy, r2.zw);
  r2.z = 0.0f;
  let v_28 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = r2.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_29.xy, r2.z);
  let v_30 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.5f, 0.0f));
  r2 = vec4<f32>(v_30.xy, r2.zw);
  r2.z = 0.0f;
  let v_31 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  let v_32 = r2.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_32.xy, r2.z);
  let v_33 = r1.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_33.xy, r1.z);
  let v_34 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.5f, 0.0f));
  r3 = vec4<f32>(v_34.xy, r3.zw);
  r3.z = 0.0f;
  let v_35 = (r1.xyz + r3.xyz);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  let v_36 = r3.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_36.xy, r3.z);
  let v_37 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.5f, 0.5f));
  r3 = vec4<f32>(v_37.xy, r3.zw);
  r3.z = 0.0f;
  let v_38 = (r1.xyz + r3.xyz);
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = r3.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_39.xy, r3.z);
  let v_40 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.0f, 0.5f));
  r4 = vec4<f32>(v_40.xy, r4.zw);
  r4.z = 0.0f;
  let v_41 = (r1.xyz + r4.xyz);
  r4 = vec4<f32>(v_41.xyz, r4.w);
  let v_42 = r4.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_42.xy, r4.z);
  let v_43 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_43.xy, r4.zw);
  r4.z = 0.0f;
  let v_44 = (r1.xyz + r4.xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = r4.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_45.xy, r4.z);
  let v_46 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_46.xyz, r0.w);
  let v_47 = (r3.xyz + r0.xyz);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.0f));
  r0.x = (r0.x * 0.11111111193895339966f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = textureSample(t2, s2, r1.xyxx.xy).w;
    r0.y = ((-(r0.zzzz)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  let v_48 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_48.xy, r0.zw);
  let v_49 = min(r0.xy, vec2<f32>(1.0f));
  let v_50 = r0;
  r0 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_51 = bitcast<u32>(r0.w);
  let v_52 = r1.x;
  r0.x = select(r0.y, v_52, (v_51 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
