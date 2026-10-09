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

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v_1 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v4)).x;
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.z = ((-(r0.zzzz)).z + r0.w);
  r0.z = (cb11_11.tint_symbol_3[2u].w / r0.z);
  let v_5 = (r0.zzz * v3.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = textureSample(t14, s14, r0.xyxx.xy).xyz;
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  r0.w = (r0.w * cb12_12.tint_symbol_2[0u].w);
  r2 = fma(r0.xyyx, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  let v_8 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = &(x0[0u]);
  let v_10 = r3;
  *(v_9) = vec4<f32>(v_10.xyz, (*(v_9)).w);
  let v_11 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = &(x0[1u]);
  let v_13 = r4;
  *(v_12) = vec4<f32>(v_13.xyz, (*(v_12)).w);
  let v_14 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r5 = vec4<f32>(v_14.xyz, r5.w);
  let v_15 = &(x0[2u]);
  let v_16 = r5;
  *(v_15) = vec4<f32>(v_16.xyz, (*(v_15)).w);
  let v_17 = fma(r1.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = &(x0[3u]);
  let v_19 = r1;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.39999997615814208984f, 0.34999999403953552246f));
  r0 = vec4<f32>(v_20.xy, r0.zw);
  r1.z = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).z, 3.0f, 1.0f);
  let v_21 = -(r0.wwww);
  r0.w = fma(r1.z, 0.5f, v_21.w);
  let v_22 = abs(r5.yyyy);
  r1.z = max(v_22.z, abs(r5.xxxx).z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r0.w)));
  let v_23 = (bitcast<u32>(r1.z) != 0u);
  let v_24 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.z = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_24, v_23);
  let v_25 = abs(r4.yyyy);
  r1.w = max(v_25.w, abs(r4.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.w)));
  let v_26 = bitcast<u32>(r1.w);
  r1.z = select(r1.z, bitcast<f32>(v.tint_symbol_4[2i].x), (v_26 != 0u));
  let v_27 = abs(r3.yyyy);
  r1.w = max(v_27.w, abs(r3.xxxx).w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.w)));
  let v_28 = bitcast<u32>(r0.w);
  r0.w = select(r1.z, 0.0f, (v_28 != 0u));
  let v_29 = x0[bitcast<i32>(r0.w)];
  r3 = vec4<f32>(v_29.xyz, r3.w);
  r0.w = f32(bitcast<i32>(r0.w));
  r1.z = (r0.w + 0.5f);
  r1.z = (r1.z * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.wwww)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r0.w = dot(r4, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r4, cb6_6.tint_symbol_1[13u]);
  r4.x = (r3.x + 0.5f);
  r4.y = fma(r3.y, 0.25f, r1.z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r0.w == 0.0f))));
  r0.w = ((-(r0.wwww)).w + r3.z);
  let v_30 = dpdx(r4.xyy);
  r5 = vec4<f32>(v_30.xy, r5.z, v_30.z);
  r5.z = dpdx(r0.w);
  let v_31 = dpdy(r4.yxy);
  r6 = vec4<f32>(v_31.xyz, r6.w);
  r6.w = dpdy(r0.w);
  let v_32 = (r5.yw * r6.yw);
  r3 = vec4<f32>(v_32.xy, r3.zw);
  let v_33 = -(r3.xyxx);
  let v_34 = fma(r5.xz, r6.xz, v_33.xy);
  r7 = vec4<f32>(v_34.xy, r7.zw);
  r3.x = (1.0f / r7.x);
  r3.y = (r5.z * r6.y);
  let v_35 = -(r3.yyyy);
  r7.z = fma(r5.x, r6.w, v_35.z);
  let v_36 = (r3.xx * r7.yz);
  r3 = vec4<f32>(v_36.xy, r3.zw);
  let v_37 = max(r3.xy, vec2<f32>());
  r3 = vec4<f32>(v_37.xy, r3.zw);
  let v_38 = min(r3.xy, vec2<f32>(0.5f));
  r3 = vec4<f32>(v_38.xy, r3.zw);
  r0.w = fma((-(r1.wwww)).w, r3.x, r0.w);
  r0.w = fma((-(r1.wwww)).w, r3.y, r0.w);
  let v_39 = bitcast<u32>(r1.z);
  let v_40 = r0.w;
  r3.z = select(r3.z, v_40, (v_39 != 0u));
  let v_41 = (r2.zw * r0.xy);
  r1 = vec4<f32>(r1.xy, v_41.xy);
  let v_42 = fma(r0.xy, r2.xy, r4.xy);
  r3 = vec4<f32>(v_42.xy, r3.zw);
  let v_43 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(1.0f, 0.25f));
  r2 = vec4<f32>(v_43.xy, r2.zw);
  r2.z = 0.0f;
  let v_44 = (r2.xyz + r3.xyz);
  r0 = vec4<f32>(v_44.xy, r0.z, v_44.z);
  let v_45 = r0.xyxx;
  r0.x = textureSampleCompareLevel(t15, s15, v_45.xy, r0.w);
  let v_46 = fma(r1.zw, vec2<f32>(-0.5f, 0.5f), r4.xy);
  r3 = vec4<f32>(v_46.xy, r3.zw);
  let v_47 = (r2.xyz + r3.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  let v_48 = r2.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_48.xy, r2.z);
  r0.x = (r0.y + r0.x);
  r0.x = (r0.x * 0.5f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = textureSample(t2, s2, r4.xyxx.xy).w;
    r0.y = ((-(r0.wwww)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  let v_49 = abs(r1.yyyy);
  r0.w = max(v_49.w, abs(r1.xxxx).w);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_50 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_50.xy, r0.zw);
  let v_51 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_51.xy, r0.zw);
  let v_52 = min(r0.xy, vec2<f32>(1.0f));
  let v_53 = r0;
  r0 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_54 = bitcast<u32>(r0.w);
  let v_55 = r1.x;
  r0.x = select(r0.y, v_55, (v_54 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
