diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb7_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v3 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

var<private> x1 : array<vec4<f32>, 1u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  x1[0u].x = v3[0u];
  x1[0u].y = v3[1u];
  x1[0u].z = v3[2u];
  x1[0u].w = v3[3u];
  let v_1 = -(cb1_1.tint_symbol[15u].xyzx);
  r0 = vec4<f32>(((v0.xyz + v_1.xyz)).xyz, r0.w);
  let v_2 = (r0.xyz / v1.zzz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r1 = vec4<f32>(((v1.xy / v1.zz)).xy, r1.zw);
  let v_3 = (r1.xy * cb4_4.tint_symbol_2[6u].xy);
  r1 = vec4<f32>(r1.xy, v_3.xy);
  r2 = textureSample(t11, s11, r1.xyxx.xy);
  r0.w = (r2.x + (-(v1.zzzz)).w);
  o1.y = max(r0.w, 0.0f);
  r1 = textureSample(t5, s5, r1.zwzz.xy);
  r0.w = (r1.x * 3.14000010490417480469f);
  let v_4 = r0.wwww;
  r2.x = sin(v_4.x);
  r3.x = cos(v_4.x);
  r2.y = r3.x;
  let v_5 = (r2.xy * vec2<f32>(0.10000000149011611938f));
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r2.z = 0.0f;
  let v_6 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = fma(r0.xyz, vec3<f32>(5.0f), v0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz + v_1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (r1.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(r1.xxx, cb6_6.tint_symbol_1[0u].xyz, r2.xyz);
  r1 = vec4<f32>(v_11.xy, r1.z, v_11.z);
  let v_12 = fma(r1.zzz, cb6_6.tint_symbol_1[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = &(x0[0u]);
  let v_15 = r2;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = abs(r2.yyyy);
  r0.z = max(v_16.z, abs(r2.xxxx).z);
  let v_17 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = &(x0[1u]);
  let v_19 = r2;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = abs(r2.yyyy);
  r0.w = max(v_20.w, abs(r2.xxxx).w);
  let v_21 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = fma(r1.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = &(x0[2u]);
  let v_24 = r2;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  let v_25 = abs(r2.yyyy);
  r1.w = max(v_25.w, abs(r2.xxxx).w);
  let v_26 = &(x0[3u]);
  let v_27 = r1;
  *(v_26) = vec4<f32>(v_27.xyz, (*(v_26)).w);
  let v_28 = abs(r1.yyyy);
  r1.x = max(v_28.x, abs(r1.xxxx).x);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r1.y = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).y, 1.5f, 1.0f);
  r1.y = (r1.y * 0.5f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.y)));
  let v_29 = (bitcast<u32>(r1.z) != 0u);
  let v_30 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.z = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_30, v_29);
  let v_31 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.zw < r1.yy)));
  r0 = vec4<f32>(r0.xy, v_31.xy);
  let v_32 = bitcast<u32>(r0.w);
  r0.w = select(r1.z, bitcast<f32>(v.tint_symbol_4[2i].x), (v_32 != 0u));
  let v_33 = bitcast<u32>(r0.z);
  r0.z = select(r0.w, 0.0f, (v_33 != 0u));
  r0.w = f32(bitcast<i32>(r0.z));
  let v_34 = x0[bitcast<i32>(r0.z)];
  r1 = vec4<f32>(r1.x, v_34.xyz);
  r0.z = (r0.w + 0.5f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.wwww)));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.z = (r0.z * 0.25f);
  r0.z = fma(r1.z, 0.25f, r0.z);
  r0.w = (r1.y + 0.5f);
  r4.x = dpdx(r0.w);
  r1.y = dot(r2, cb6_6.tint_symbol_1[12u]);
  r1.z = dot(r2, cb6_6.tint_symbol_1[13u]);
  r2.x = ((-(r1.yyyy)).x + r1.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r1.y == 0.0f))));
  r4.z = dpdx(r2.x);
  let v_35 = dpdx(r0.zz);
  let v_36 = r2;
  r2 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
  r5.y = fma(cb6_6.tint_symbol_1[14u].w, 0.25f, r0.z);
  r3.w = dpdy(r2.x);
  let v_37 = dpdy(r0.zwz);
  r3 = vec4<f32>(v_37.xyz, r3.w);
  r5.x = (r0.w + cb6_6.tint_symbol_1[14u].z);
  let v_38 = (r2.yz * r3.yw);
  r0 = vec4<f32>(r0.xy, v_38.xy);
  r2.y = (r3.y * r4.z);
  let v_39 = -(r0.zwzz);
  let v_40 = fma(r4.xz, r3.xz, v_39.xy);
  r3 = vec4<f32>(v_40.xy, r3.zw);
  let v_41 = -(r2.yyyy);
  r3.z = fma(r4.x, r3.w, v_41.z);
  r0.z = (1.0f / r3.x);
  let v_42 = (r0.zz * r3.yz);
  r0 = vec4<f32>(r0.xy, v_42.xy);
  let v_43 = max(r0.zw, vec2<f32>());
  r0 = vec4<f32>(r0.xy, v_43.xy);
  let v_44 = min(r0.zw, vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_44.xy);
  r0.z = fma((-(r1.zzzz)).z, r0.z, r2.x);
  r0.z = fma((-(r1.zzzz)).z, r0.w, r0.z);
  let v_45 = bitcast<u32>(r1.y);
  let v_46 = r0.z;
  r0.z = select(r1.w, v_46, (v_45 != 0u));
  let v_47 = r5.xyxx;
  r0.z = textureSampleCompareLevel(t15, s15, v_47.xy, r0.z);
  r0.w = clamp(fma(v1.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.z = fma(r0.w, r1.x, r0.z);
  r0.z = (r0.z * r0.z);
  r0.z = min(r0.z, 1.0f);
  r1.x = (-(cb4_4.tint_symbol_2[2u].wwww)).x;
  let v_48 = r1;
  r1 = vec4<f32>(v_48.x, 0.0f, v_48.z, 0.5f);
  let v_49 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r1.xy);
  r0 = vec4<f32>(v_49.xy, r0.zw);
  r2 = textureSample(t2, s2, r0.xyxx.xy);
  r1.z = r2.y;
  r1 = textureSample(t12, s12, r1.zwzz.xy);
  o0.w = (r0.z * r1.x);
  let v_50 = (cb9_9.tint_symbol_3[0u].xyz * cb9_9.tint_symbol_3[0u].xyz);
  o0 = vec4<f32>(v_50.xyz, o0.w);
  o1.x = abs(cb9_9.tint_symbol_3[0u].w);
  o1 = vec4<f32>(o1.xy, vec2<f32>());
}

struct tint_symbol_6 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1);
  return tint_symbol_6(o0, o1);
}
