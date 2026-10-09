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

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb60_struct {
  tint_symbol_2 : array<vec4<f32>, 60u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb60_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

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
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.5f)));
  v_1((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_2 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v_2.xyz);
  r2.x = (cb2_2.tint_symbol_1[15u].w * cb12_12.tint_symbol_3[0u].x);
  r2.y = (v0.z * v0.z);
  r0.w = (r0.w * v0.w);
  let v_3 = (v0.xy * cb2_2.tint_symbol_1[15u].zy);
  r2 = vec4<f32>(r2.xy, v_3.xy);
  r2.x = (r2.x * r2.y);
  let v_4 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r2.zw * r2.zw);
  let v_6 = r2;
  r2 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = ((-(v3.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r2.w = dot(r3.xyz, cb1_1.tint_symbol[14u].xyz);
  let v_8 = (v3.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = (r3.yyy * cb6_6.tint_symbol_4[1u].xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = fma(r3.xxx, cb6_6.tint_symbol_4[0u].xyz, r4.xyz);
  r3 = vec4<f32>(v_10.xy, r3.z, v_10.z);
  let v_11 = fma(r3.zzz, cb6_6.tint_symbol_4[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r3.xyz, cb6_6.tint_symbol_4[4u].xyz, cb6_6.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = &(x0[0u]);
  let v_14 = r4;
  *(v_13) = vec4<f32>(v_14.xyz, (*(v_13)).w);
  let v_15 = fma(r3.xyz, cb6_6.tint_symbol_4[5u].xyz, cb6_6.tint_symbol_4[9u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = &(x0[1u]);
  let v_17 = r5;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = fma(r3.xyz, cb6_6.tint_symbol_4[6u].xyz, cb6_6.tint_symbol_4[10u].xyz);
  r6 = vec4<f32>(v_18.xyz, r6.w);
  let v_19 = &(x0[2u]);
  let v_20 = r6;
  *(v_19) = vec4<f32>(v_20.xyz, (*(v_19)).w);
  let v_21 = fma(r3.xyz, cb6_6.tint_symbol_4[7u].xyz, cb6_6.tint_symbol_4[11u].xyz);
  r3 = vec4<f32>(v_21.xyz, r3.w);
  let v_22 = &(x0[3u]);
  let v_23 = r3;
  *(v_22) = vec4<f32>(v_23.xyz, (*(v_22)).w);
  r3.z = fma((-(cb6_6.tint_symbol_4[14u].zzzz)).z, 1.5f, 1.0f);
  r3.z = (r3.z * 0.5f);
  let v_24 = abs(r6.yyyy);
  r3.w = max(v_24.w, abs(r6.xxxx).w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r3.z)));
  let v_25 = (bitcast<u32>(r3.w) != 0u);
  let v_26 = bitcast<f32>(v.tint_symbol_5[0i].x);
  r3.w = select(bitcast<f32>(v.tint_symbol_5[1i].x), v_26, v_25);
  let v_27 = abs(r5.yyyy);
  r4.z = max(v_27.z, abs(r5.xxxx).z);
  r4.z = bitcast<f32>(select(0u, 4294967295u, (r4.z < r3.z)));
  let v_28 = bitcast<u32>(r4.z);
  r3.w = select(r3.w, bitcast<f32>(v.tint_symbol_5[2i].x), (v_28 != 0u));
  let v_29 = abs(r4.yyyy);
  r4.x = max(v_29.x, abs(r4.xxxx).x);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r4.x < r3.z)));
  let v_30 = bitcast<u32>(r3.z);
  r3.z = select(r3.w, 0.0f, (v_30 != 0u));
  let v_31 = x0[bitcast<i32>(r3.z)];
  r4 = vec4<f32>(v_31.xyz, r4.w);
  r3.z = f32(bitcast<i32>(r3.z));
  r3.w = (r3.z + 0.5f);
  r3.w = (r3.w * 0.25f);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r3.zzzz)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r3.z = dot(r5, cb6_6.tint_symbol_4[12u]);
  r4.w = dot(r5, cb6_6.tint_symbol_4[13u]);
  r5.x = (r4.x + 0.5f);
  r5.y = fma(r4.y, 0.25f, r3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, !((r3.z == 0.0f))));
  r3.z = ((-(r3.zzzz)).z + r4.z);
  let v_32 = dpdx(r5.xyy);
  r6 = vec4<f32>(v_32.xy, r6.z, v_32.z);
  r6.z = dpdx(r3.z);
  let v_33 = dpdy(r5.yxy);
  r7 = vec4<f32>(v_33.xyz, r7.w);
  r7.w = dpdy(r3.z);
  let v_34 = (r6.yw * r7.yw);
  r4 = vec4<f32>(v_34.xy, r4.zw);
  let v_35 = -(r4.xyxx);
  let v_36 = fma(r6.xz, r7.xz, v_35.xy);
  r8 = vec4<f32>(v_36.xy, r8.zw);
  r4.x = (1.0f / r8.x);
  r4.y = (r6.z * r7.y);
  let v_37 = -(r4.yyyy);
  r8.z = fma(r6.x, r7.w, v_37.z);
  let v_38 = (r4.xx * r8.yz);
  r4 = vec4<f32>(v_38.xy, r4.zw);
  let v_39 = max(r4.xy, vec2<f32>());
  r4 = vec4<f32>(v_39.xy, r4.zw);
  let v_40 = min(r4.xy, vec2<f32>(0.5f));
  r4 = vec4<f32>(v_40.xy, r4.zw);
  r3.z = fma((-(r4.wwww)).z, r4.x, r3.z);
  r3.z = fma((-(r4.wwww)).z, r4.y, r3.z);
  let v_41 = bitcast<u32>(r3.w);
  let v_42 = r3.z;
  r3.z = select(r4.z, v_42, (v_41 != 0u));
  let v_43 = r5.xyxx;
  r3.z = textureSampleCompareLevel(t15, s15, v_43.xy, r3.z);
  r2.w = clamp(fma(r2.wwww, cb6_6.tint_symbol_4[0u].wwww, cb6_6.tint_symbol_4[1u].wwww).w, 0.0f, 1.0f);
  let v_44 = abs(r3.yyyy);
  r3.x = max(v_44.x, abs(r3.xxxx).x);
  r3.x = clamp(fma(r3.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  r2.w = fma(r2.w, r3.x, r3.z);
  r2.w = (r2.w * r2.w);
  r2.w = min(r2.w, 1.0f);
  r3.x = clamp(fma(v3.xyz.zzzz, cb6_6.tint_symbol_4[3u].xxxx, cb6_6.tint_symbol_4[3u].yyyy).x, 0.0f, 1.0f);
  r3.x = sqrt(r3.x);
  r3.x = (r3.x * cb6_6.tint_symbol_4[3u].z);
  let v_45 = -(r2.wwww);
  r2.w = fma(r3.x, v_45.w, r2.w);
  let v_46 = -(cb3_3.tint_symbol_2[0u].xyzx);
  let v_47 = dot(r1.yzw, v_46.xyz);
  r3.x = clamp(vec4<f32>(v_47, v_47, v_47, v_47).x, 0.0f, 1.0f);
  let v_48 = (r0.xyz * r3.xxx);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  let v_49 = (r3.xyz * cb3_3.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_49.xyz, r3.w);
  r1.x = fma(v2.z, r1.x, cb3_3.tint_symbol_2[43u].w);
  r1.x = (r1.x * cb3_3.tint_symbol_2[44u].w);
  r1.x = max(r1.x, 0.0f);
  let v_50 = fma(cb3_3.tint_symbol_2[47u].xyz, r1.xxx, cb3_3.tint_symbol_2[48u].xyz);
  r4 = vec4<f32>(v_50.xyz, r4.w);
  r3.w = ((-(cb2_2.tint_symbol_1[16u].zzzz)).w + 1.0f);
  let v_51 = fma(cb3_3.tint_symbol_2[45u].xyz, r1.xxx, cb3_3.tint_symbol_2[46u].xyz);
  r5 = vec4<f32>(v_51.xyz, r5.w);
  let v_52 = (r5.xyz * cb2_2.tint_symbol_1[16u].zzz);
  r5 = vec4<f32>(v_52.xyz, r5.w);
  let v_53 = fma(r4.xyz, r3.www, r5.xyz);
  r4 = vec4<f32>(v_53.xyz, r4.w);
  let v_54 = (r2.zzz * r4.xyz);
  r4 = vec4<f32>(v_54.xyz, r4.w);
  let v_55 = fma(cb3_3.tint_symbol_2[43u].xyz, r1.xxx, cb3_3.tint_symbol_2[44u].xyz);
  r5 = vec4<f32>(v_55.xyz, r5.w);
  r6.x = cb3_3.tint_symbol_2[46u].w;
  r6.y = cb3_3.tint_symbol_2[47u].w;
  r6.z = cb3_3.tint_symbol_2[48u].w;
  let v_56 = dot(r6.xyz, r1.yzw);
  r1.x = clamp(vec4<f32>(v_56, v_56, v_56, v_56).x, 0.0f, 1.0f);
  let v_57 = fma(cb3_3.tint_symbol_2[49u].xyz, r1.xxx, r5.xyz);
  r1 = vec4<f32>(v_57.xyz, r1.w);
  let v_58 = fma(r1.xyz, r2.yyy, r4.xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = (r0.xyz * r1.xyz);
  r1 = vec4<f32>(v_59.xyz, r1.w);
  let v_60 = fma(r3.xyz, r2.www, r1.xyz);
  r1 = vec4<f32>(v_60.xyz, r1.w);
  r1.w = (r2.x * cb3_3.tint_symbol_2[59u].w);
  let v_61 = fma(r0.xyz, r1.www, r1.xyz);
  o0 = vec4<f32>(v_61.xyz, o0.w);
  o0.w = clamp(((r0.wwww * cb2_2.tint_symbol_1[15u].xxxx)).w, 0.0f, 1.0f);
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
