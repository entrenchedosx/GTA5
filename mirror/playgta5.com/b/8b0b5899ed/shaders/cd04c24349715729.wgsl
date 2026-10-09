diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb9_struct {
  tint_symbol_3 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb9_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v5 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_6;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  x1[0u].x = v5[0u];
  x1[0u].y = v5[1u];
  x1[0u].z = v5[2u];
  x1[0u].w = v5[3u];
  r0 = textureSample(t0, s0, v0.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[8u].w >= r0.w)));
  v_1((bitcast<u32>(r1.x) != 0u));
  let v_2 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (cb2_2.tint_symbol_1[15u].zy * cb2_2.tint_symbol_1[15u].zy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1.z = ((-(v0.wwww)).z + 1.0f);
  let v_4 = ((-(v1.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  r1.w = dot(r2.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_5 = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = (r2.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma(r2.xxx, cb6_6.tint_symbol_4[0u].xyz, r3.xyz);
  r2 = vec4<f32>(v_7.xy, r2.z, v_7.z);
  let v_8 = fma(r2.zzz, cb6_6.tint_symbol_4[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(r2.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = &(x0[0u]);
  let v_11 = r3;
  *(v_10) = vec4<f32>(v_11.xyz, (*(v_10)).w);
  let v_12 = fma(r2.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = &(x0[1u]);
  let v_14 = r4;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r2.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = &(x0[2u]);
  let v_17 = r5;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r2.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = &(x0[3u]);
  let v_20 = r2;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  r2.z = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).z, 1.5f, 1.0f);
  r2.z = (r2.z * 0.5f);
  let v_21 = abs(r5.yyyy);
  r2.w = max(v_21.w, abs(r5.xxxx).w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.z)));
  let v_22 = (bitcast<u32>(r2.w) != 0u);
  let v_23 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r2.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_23, v_22);
  let v_24 = abs(r4.yyyy);
  r3.z = max(v_24.z, abs(r4.xxxx).z);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r3.z < r2.z)));
  let v_25 = bitcast<u32>(r3.z);
  r2.w = select(r2.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_25 != 0u));
  let v_26 = abs(r3.yyyy);
  r3.x = max(v_26.x, abs(r3.xxxx).x);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r3.x < r2.z)));
  let v_27 = bitcast<u32>(r2.z);
  r2.z = select(r2.w, 0.0f, (v_27 != 0u));
  let v_28 = x0[bitcast<i32>(r2.z)];
  r3 = vec4<f32>(v_28.xyz, r3.w);
  r2.z = f32(bitcast<i32>(r2.z));
  r2.w = (r2.z + 0.5f);
  r2.w = (r2.w * 0.25f);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r2.zzzz)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r2.z = dot(r4, cb6_6.tint_symbol_4[12u]);
  r3.w = dot(r4, cb6_6.tint_symbol_4[13u]);
  r3.x = (r3.x + 0.5f);
  r2.w = fma(r3.y, 0.25f, r2.w);
  r3.y = bitcast<f32>(select(0u, 4294967295u, !((r2.z == 0.0f))));
  r2.z = ((-(r2.zzzz)).z + r3.z);
  r4.x = dpdx(r3.x);
  let v_29 = dpdx(r2.wzw);
  r4 = vec4<f32>(r4.x, v_29.xyz);
  r5.y = dpdy(r3.x);
  let v_30 = dpdy(r2.wwz);
  r5 = vec4<f32>(v_30.x, r5.y, v_30.yz);
  let v_31 = (r4.yw * r5.yw);
  let v_32 = r4;
  r4 = vec4<f32>(v_32.x, v_31.x, v_32.z, v_31.y);
  let v_33 = -(r4.ywyy);
  let v_34 = fma(r4.xz, r5.xz, v_33.xy);
  r6 = vec4<f32>(v_34.xy, r6.zw);
  r4.y = (1.0f / r6.x);
  r4.z = (r4.z * r5.y);
  let v_35 = -(r4.zzzz);
  r6.z = fma(r4.x, r5.w, v_35.z);
  let v_36 = (r4.yy * r6.yz);
  r4 = vec4<f32>(v_36.xy, r4.zw);
  let v_37 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_37.xy, r4.zw);
  let v_38 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_38.xy, r4.zw);
  r2.z = fma((-(r3.wwww)).z, r4.x, r2.z);
  r2.z = fma((-(r3.wwww)).z, r4.y, r2.z);
  let v_39 = bitcast<u32>(r3.y);
  let v_40 = r2.z;
  r2.z = select(r3.z, v_40, (v_39 != 0u));
  r3.x = (r3.x + cb6_6.tint_symbol_4[14u].z);
  r3.y = fma(cb6_6.tint_symbol_4[14u].w, 0.25f, r2.w);
  let v_41 = r3.xyxx;
  r2.z = textureSampleCompareLevel(t15, s15, v_41.xy, r2.z);
  r1.w = clamp(fma(r1.wwww, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).w, 0.0f, 1.0f);
  let v_42 = abs(r2.yyyy);
  r2.x = max(v_42.x, abs(r2.xxxx).x);
  r2.x = clamp(fma(r2.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = fma(r1.w, r2.x, r2.z);
  r1.w = (r1.w * r1.w);
  r1.w = min(r1.w, 1.0f);
  r2.x = clamp(fma(v1.xyz.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).x, 0.0f, 1.0f);
  r2.x = sqrt(r2.x);
  r2.x = (r2.x * cb6_6.tint_symbol_4[3u].z);
  let v_43 = -(r1.wwww);
  r1.w = fma(r2.x, v_43.w, r1.w);
  let v_44 = dot(v2.xyz, (-(cb3_3.tint_symbol_2[0u].xyzx)).xyz);
  r2.x = clamp(vec4<f32>(v_44, v_44, v_44, v_44).x, 0.0f, 1.0f);
  let v_45 = (r0.xyz * r2.xxx);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = (r2.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r2 = vec4<f32>(v_46.xyz, r2.w);
  let v_47 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  r1.w = (v2.z + cb3_3.tint_symbol_2[43u].w);
  r1.w = (r1.w * cb3_3.tint_symbol_2[44u].w);
  r1.w = max(r1.w, 0.0f);
  let v_48 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.www, cb3_3.tint_symbol_2[48u].xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  r2.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_49 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.www, cb3_3.tint_symbol_2[46u].xyz);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  let v_50 = (r4.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r4 = vec4<f32>(v_50.xyz, r4.w);
  let v_51 = fma(r3.xyz, r2.www, r4.xyz);
  r3 = vec4<f32>(v_51.xyz, r3.w);
  let v_52 = (r1.yyy * r3.xyz);
  r3 = vec4<f32>(v_52.xyz, r3.w);
  let v_53 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.www, cb3_3.tint_symbol_2[44u].xyz);
  r4 = vec4<f32>(v_53.xyz, r4.w);
  r5.x = cb3_3.tint_symbol_2[46u].w;
  r5.y = cb3_3.tint_symbol_2[47u].w;
  r5.z = cb3_3.tint_symbol_2[48u].w;
  let v_54 = dot(r5.xyz, v2.xyz);
  r1.y = clamp(vec4<f32>(v_54, v_54, v_54, v_54).y, 0.0f, 1.0f);
  let v_55 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.yyy, r4.xyz);
  r4 = vec4<f32>(v_55.xyz, r4.w);
  let v_56 = fma(r4.xyz, r1.xxx, r3.xyz);
  r1 = vec4<f32>(v_56.xy, r1.z, v_56.z);
  let v_57 = (r0.xyz * r1.xyw);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  let v_58 = (r0.xyz * v0.zzz);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  let v_59 = fma(r1.zzz, r2.xyz, r0.xyz);
  r0 = vec4<f32>(v_59.xyz, r0.w);
  let v_60 = ((-(r0.xyzx)).xyz + v3.xyz);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  let v_61 = fma(v3.www, r1.xyz, r0.xyz);
  o0 = vec4<f32>(v_61.xyz, o0.w);
  r0.x = ((-(v3.wwww)).x + 1.0f);
  o0.w = (r0.w * r0.x);
}

fn v_1(v_62 : bool) {
  if (v_62) {
    discard;
    return;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3);
  return o0;
}
