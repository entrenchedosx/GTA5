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

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.y = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r0.x = (cb11_11.tint_symbol_3[2u].w / r0.x);
  let v_1 = (r0.xxx * v3.xyz);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  let v_2 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = textureSample(t14, s14, r1.xyxx.xy);
  r1.x = (r1.z * cb12_12.tint_symbol_2[0u].w);
  let v_4 = fma(r0.yzw, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(r1.x, v_4.xyz);
  let v_5 = &(x0[0u]);
  let v_6 = r1;
  *(v_5) = vec4<f32>(v_6.yzw, (*(v_5)).w);
  let v_7 = fma(r0.yzw, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = &(x0[1u]);
  let v_9 = r2;
  *(v_8) = vec4<f32>(v_9.xyz, (*(v_8)).w);
  let v_10 = fma(r0.yzw, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = &(x0[2u]);
  let v_12 = r3;
  *(v_11) = vec4<f32>(v_12.xyz, (*(v_11)).w);
  let v_13 = fma(r0.yzw, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r0 = vec4<f32>(r0.x, v_13.xyz);
  let v_14 = &(x0[3u]);
  let v_15 = r0;
  *(v_14) = vec4<f32>(v_15.yzw, (*(v_14)).w);
  let v_16 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.375f, 0.09375f));
  r2 = vec4<f32>(r2.xy, v_16.xy);
  let v_17 = (-(r2.zzwz)).yz;
  let v_18 = r4;
  r4 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  r4.w = -0.0f;
  r0.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_19 = -(r1.xxxx);
  r0.w = fma(r0.w, 0.5f, v_19.w);
  let v_20 = abs(r3.yyyy);
  r1.x = max(v_20.x, abs(r3.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.w)));
  let v_21 = (bitcast<u32>(r1.x) != 0u);
  let v_22 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.x = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_22, v_21);
  let v_23 = abs(r2.yyyy);
  r1.w = max(v_23.w, abs(r2.xxxx).w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < r0.w)));
  let v_24 = bitcast<u32>(r1.w);
  r1.x = select(r1.x, bitcast<f32>(v.tint_symbol_4[2i].x), (v_24 != 0u));
  let v_25 = abs(r1.zzzz);
  r1.y = max(v_25.y, abs(r1.yyyy).y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.y < r0.w)));
  let v_26 = bitcast<u32>(r0.w);
  r0.w = select(r1.x, -0.0f, (v_26 != 0u));
  let v_27 = x0[bitcast<i32>(r0.w)];
  r1 = vec4<f32>(v_27.xyz, r1.w);
  r0.w = f32(bitcast<i32>(r0.w));
  r1.w = (r0.w + 0.5f);
  r1.w = (r1.w * 0.25f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(-0.0f, 1.0f, 2.0f, 3.0f) == r0.wwww)));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.w = dot(r2, cb6_6.tint_symbol_1[12u]);
  r2.x = dot(r2, cb6_6.tint_symbol_1[13u]);
  r2.z = (r1.x + 0.5f);
  r2.w = fma(r1.y, 0.25f, r1.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r0.w == -0.0f))));
  r0.w = ((-(r0.wwww)).w + r1.z);
  let v_28 = dpdx(r2.zww);
  r3 = vec4<f32>(v_28.xy, r3.z, v_28.z);
  r3.z = dpdx(r0.w);
  let v_29 = dpdy(r2.wzw);
  r5 = vec4<f32>(v_29.xyz, r5.w);
  r5.w = dpdy(r0.w);
  let v_30 = (r3.yw * r5.yw);
  let v_31 = r1;
  r1 = vec4<f32>(v_31.x, v_30.x, v_31.z, v_30.y);
  let v_32 = -(r1.ywyy);
  let v_33 = fma(r3.xz, r5.xz, v_32.xy);
  r6 = vec4<f32>(v_33.xy, r6.zw);
  r1.y = (1.0f / r6.x);
  r1.w = (r3.z * r5.y);
  let v_34 = -(r1.wwww);
  r6.z = fma(r3.x, r5.w, v_34.z);
  let v_35 = (r1.yy * r6.yz);
  let v_36 = r1;
  r1 = vec4<f32>(v_36.x, v_35.x, v_36.z, v_35.y);
  let v_37 = max(r1.yw, vec2<f32>());
  let v_38 = r1;
  r1 = vec4<f32>(v_38.x, v_37.x, v_38.z, v_37.y);
  let v_39 = min(r1.yw, vec2<f32>(0.5f));
  let v_40 = r1;
  r1 = vec4<f32>(v_40.x, v_39.x, v_40.z, v_39.y);
  r0.w = fma((-(r2.xxxx)).w, r1.y, r0.w);
  r0.w = fma((-(r2.xxxx)).w, r1.w, r0.w);
  let v_41 = bitcast<u32>(r1.x);
  let v_42 = r0.w;
  r2.y = select(r1.z, v_42, (v_41 != 0u));
  let v_43 = (r4.yzw + r2.zwy);
  r1 = vec4<f32>(v_43.xyz, r1.w);
  let v_44 = r1.xyxx;
  r0.w = textureSampleCompareLevel(t15, s15, v_44.xy, r1.z);
  let v_45 = fma(cb6_6.tint_symbol_1[14u].zw, vec2<f32>(0.375f, 0.09375f), r2.zw);
  r1 = vec4<f32>(v_45.xy, r1.zw);
  let v_46 = r1.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_46.xy, r2.y);
  r0.w = (r0.w + r1.x);
  r1.x = (r0.w * 0.5f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == -0.0f))));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r2 = textureSample(t2, s2, r2.zwzz.xy);
    r1.y = ((-(r2.wwww)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.x = clamp(fma(r0.xxxx, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).x, -0.0f, 1.0f);
  let v_47 = abs(r0.zzzz);
  r0.y = max(v_47.y, abs(r0.yyyy).y);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).y, -0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_48 = fma(r0.xx, r0.yy, r1.xy);
  r0 = vec4<f32>(v_48.xy, r0.zw);
  let v_49 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_49.xy, r0.zw);
  let v_50 = min(r0.xy, vec2<f32>(1.0f));
  let v_51 = r0;
  r0 = vec4<f32>(v_51.x, v_50.xy, v_51.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((-0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.x = (r0.z * r0.y);
  let v_52 = bitcast<u32>(r0.w);
  let v_53 = r1.x;
  r0.x = select(r0.y, v_53, (v_52 != 0u));
  o0 = r0.xzzz;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
