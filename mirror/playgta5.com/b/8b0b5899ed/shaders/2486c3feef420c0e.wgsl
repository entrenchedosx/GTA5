diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb11_11.tint_symbol_2[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_2[2u].w / r0.x);
  let v = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(r0.xyz, cb6_6.tint_symbol[4u].xyz, cb6_6.tint_symbol[8u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.xy + vec2<f32>(0.5f, 0.125f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb6_6.tint_symbol[12u].x == 0.0f))));
  let v_3 = -(cb6_6.tint_symbol[12u].xxxx);
  r0.y = (r0.z + v_3.y);
  let v_4 = dpdx(r1.xyy);
  r2 = vec4<f32>(v_4.xy, r2.z, v_4.z);
  r2.z = dpdx(r0.y);
  let v_5 = dpdy(r1.yxy);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  r3.w = dpdy(r0.y);
  let v_6 = (r2.yw * r3.yw);
  let v_7 = r2;
  r2 = vec4<f32>(v_7.x, v_6.x, v_7.z, v_6.y);
  let v_8 = -(r2.ywyy);
  let v_9 = fma(r2.xz, r3.xz, v_8.xy);
  r4 = vec4<f32>(v_9.xy, r4.zw);
  r0.w = (1.0f / r4.x);
  r1.w = (r2.z * r3.y);
  let v_10 = -(r1.wwww);
  r4.z = fma(r2.x, r3.w, v_10.z);
  let v_11 = (r0.ww * r4.yz);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = max(r2.xy, vec2<f32>());
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = min(r2.xy, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = -(cb6_6.tint_symbol[13u].xxxx);
  r0.y = fma(v_14.y, r2.x, r0.y);
  r0.y = fma(v_14.y, r2.y, r0.y);
  let v_15 = bitcast<u32>(r0.x);
  let v_16 = r0.y;
  r1.z = select(r0.z, v_16, (v_15 != 0u));
  let v_17 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_17.xy, r0.zw);
  r0.z = 0.0f;
  let v_18 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = r0.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_19.xy, r0.z);
  let v_20 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(0.0f, -0.5f));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  r2.z = 0.0f;
  let v_21 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = r2.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_22.xy, r2.z);
  let v_23 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(0.5f, -0.5f));
  r2 = vec4<f32>(v_23.xy, r2.zw);
  r2.z = 0.0f;
  let v_24 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = r2.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_25.xy, r2.z);
  let v_26 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(-0.5f, 0.0f));
  r2 = vec4<f32>(v_26.xy, r2.zw);
  r2.z = 0.0f;
  let v_27 = (r1.xyz + r2.xyz);
  r2 = vec4<f32>(v_27.xyz, r2.w);
  let v_28 = r2.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_28.xy, r2.z);
  let v_29 = r1.xyxx;
  r2.y = textureSampleCompareLevel(t15, s15, v_29.xy, r1.z);
  let v_30 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(0.5f, 0.0f));
  r3 = vec4<f32>(v_30.xy, r3.zw);
  r3.z = 0.0f;
  let v_31 = (r1.xyz + r3.xyz);
  r3 = vec4<f32>(v_31.xyz, r3.w);
  let v_32 = r3.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_32.xy, r3.z);
  let v_33 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(-0.5f, 0.5f));
  r3 = vec4<f32>(v_33.xy, r3.zw);
  r3.z = 0.0f;
  let v_34 = (r1.xyz + r3.xyz);
  r3 = vec4<f32>(v_34.xyz, r3.w);
  let v_35 = r3.xyxx;
  r3.x = textureSampleCompareLevel(t15, s15, v_35.xy, r3.z);
  let v_36 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(0.0f, 0.5f));
  r4 = vec4<f32>(v_36.xy, r4.zw);
  r4.z = 0.0f;
  let v_37 = (r1.xyz + r4.xyz);
  r4 = vec4<f32>(v_37.xyz, r4.w);
  let v_38 = r4.xyxx;
  r3.y = textureSampleCompareLevel(t15, s15, v_38.xy, r4.z);
  let v_39 = (cb6_6.tint_symbol[14u].zw * vec2<f32>(0.5f));
  r4 = vec4<f32>(v_39.xy, r4.zw);
  r4.z = 0.0f;
  let v_40 = (r1.xyz + r4.xyz);
  r4 = vec4<f32>(v_40.xyz, r4.w);
  let v_41 = r4.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_41.xy, r4.z);
  let v_42 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  let v_43 = (r3.xyz + r0.xyz);
  r0 = vec4<f32>(v_43.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.0f));
  r0.x = (r0.x * 0.11111111193895339966f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_1[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r1 = textureSample(t2, s2, r1.xyxx.xy);
    r0.y = ((-(r1.wwww)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  let v_44 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_44.xy, r0.zw);
  let v_45 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_45.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_1[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_46 = bitcast<u32>(r0.z);
  let v_47 = r0.w;
  r0.x = select(r0.x, v_47, (v_46 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
