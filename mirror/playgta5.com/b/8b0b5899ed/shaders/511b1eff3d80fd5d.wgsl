diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = &(x0[2u]);
  let v_19 = r4;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r1.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = &(x0[3u]);
  let v_22 = r1;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  r1.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 1.5f, 1.0f);
  let v_23 = -(r1.wwww);
  r1.z = fma(r1.z, 0.5f, v_23.z);
  let v_24 = abs(r4.yyyy);
  r1.w = max(v_24.w, abs(r4.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  let v_25 = (bitcast<u32>(r1.w) != 0u);
  let v_26 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_26, v_25);
  let v_27 = abs(r3.yyyy);
  r2.z = max(v_27.z, abs(r3.xxxx).z);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r1.z)));
  let v_28 = bitcast<u32>(r2.z);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_28 != 0u));
  let v_29 = abs(r2.yyyy);
  r2.x = max(v_29.x, abs(r2.xxxx).x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.z)));
  let v_30 = bitcast<u32>(r1.z);
  r1.z = select(r1.w, 0.0f, (v_30 != 0u));
  let v_31 = x0[bitcast<i32>(r1.z)];
  r2 = vec4<f32>(v_31.xyz, r2.w);
  r1.z = f32(bitcast<i32>(r1.z));
  r1.w = (r1.z + 0.5f);
  r1.w = (r1.w * 0.25f);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.zzzz)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r1.z = dot(r3, cb6_6.tint_symbol_1[12u]);
  r2.w = dot(r3, cb6_6.tint_symbol_1[13u]);
  r3.x = (r2.x + 0.5f);
  r3.y = fma(r2.y, 0.25f, r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((r1.z == 0.0f))));
  r1.z = ((-(r1.zzzz)).z + r2.z);
  let v_32 = dpdx(r3.xyy);
  r4 = vec4<f32>(v_32.xy, r4.z, v_32.z);
  r4.z = dpdx(r1.z);
  let v_33 = dpdy(r3.yxy);
  r5 = vec4<f32>(v_33.xyz, r5.w);
  r5.w = dpdy(r1.z);
  let v_34 = (r4.yw * r5.yw);
  r2 = vec4<f32>(v_34.xy, r2.zw);
  let v_35 = -(r2.xyxx);
  let v_36 = fma(r4.xz, r5.xz, v_35.xy);
  r6 = vec4<f32>(v_36.xy, r6.zw);
  r2.x = (1.0f / r6.x);
  r2.y = (r4.z * r5.y);
  let v_37 = -(r2.yyyy);
  r6.z = fma(r4.x, r5.w, v_37.z);
  let v_38 = (r2.xx * r6.yz);
  r2 = vec4<f32>(v_38.xy, r2.zw);
  let v_39 = max(r2.xy, vec2<f32>());
  r2 = vec4<f32>(v_39.xy, r2.zw);
  let v_40 = min(r2.xy, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_40.xy, r2.zw);
  r1.z = fma((-(r2.wwww)).z, r2.x, r1.z);
  r1.z = fma((-(r2.wwww)).z, r2.y, r1.z);
  let v_41 = bitcast<u32>(r1.w);
  let v_42 = r1.z;
  r1.z = select(r2.z, v_42, (v_41 != 0u));
  r2.x = (r3.x + cb6_6.tint_symbol_1[14u].z);
  r2.y = fma(cb6_6.tint_symbol_1[14u].w, 0.25f, r3.y);
  let v_43 = r2.xyxx;
  r2.x = textureSampleCompareLevel(t15, s15, v_43.xy, r1.z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r3 = textureSample(t2, s2, r3.xyxx.xy);
    r2.y = ((-(r3.wwww)).y + 1.0f);
  } else {
    r2.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_44 = abs(r1.yyyy);
  r1.x = max(v_44.x, abs(r1.xxxx).x);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_45 = fma(r0.ww, r1.xx, r2.xy);
  r1 = vec4<f32>(v_45.xy, r1.zw);
  let v_46 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_46.xy, r1.zw);
  let v_47 = min(r1.xy, vec2<f32>(1.0f));
  let v_48 = r1;
  r1 = vec4<f32>(v_48.x, v_47.xy, v_48.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_49 = bitcast<u32>(r0.w);
  let v_50 = r1.w;
  r1.x = select(r1.y, v_50, (v_49 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_51 = r2;
  r2 = vec4<f32>(v_51.x, 0.0f, v_51.z, 0.5f);
  let v_52 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_52.xy, r0.zw);
  r3 = textureSample(t5, s5, r0.xyxx.xy);
  r2.z = r3.y;
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r0.x = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).x, 0.0f, 1.0f);
  r0.x = sqrt(r0.x);
  r0.x = fma((-(r0.xxxx)).x, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.x * r2.x);
  o0 = (r0.xxxx * r1.xzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
