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

var<private> r9 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_2 : array<vec4<f32>, 50u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

struct cb24_struct {
  tint_symbol_4 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb24_struct;

struct tint_symbol_6 {
  tint_symbol_5 : array<u32>,
}

@group(0u) @binding(32u) var<storage, read> t0 : tint_symbol_6;

@group(0u) @binding(33u) var<storage, read> t1 : tint_symbol_6;

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v : i32) {
  let v_1 = 0i;
  v6.x = bitcast<f32>((v - v_1));
  let v_2 = t0.tint_symbol_5[(bitcast<u32>((bitcast<i32>(v6.x) * 1i)) + 0u)];
  r0.x = bitcast<f32>(vec4<u32>(v_2, v_2, v_2, v_2).x);
  r0.y = bitcast<f32>((bitcast<u32>(r0.x) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 255u));
  r0.y = f32(bitcast<u32>(r0.y));
  r1.y = (r0.y * 0.0039215688593685627f);
  r2.x = v6.x;
  let v_3 = r2;
  r2 = vec4<f32>(v_3.x, vec2<f32>(1.0f), v_3.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.x) >> 24u));
  r1.x = bitcast<f32>((bitcast<u32>(r0.x) & 65535u));
  r0.x = f32(bitcast<u32>(r0.y));
  r1.z = (r0.x * 0.0039215688593685627f);
  let v_4 = bitcast<vec3<u32>>(cb12_12.tint_symbol_3[6u].www);
  let v_5 = r1.xyz;
  let v_6 = select(r2.xyz, v_5, (v_4 != vec3<u32>()));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
  let v_8 = t1.tint_symbol_5[v_7];
  let v_9 = t1.tint_symbol_5[(v_7 + 1u)];
  let v_10 = t1.tint_symbol_5[(v_7 + 2u)];
  let v_11 = t1.tint_symbol_5[(v_7 + 3u)];
  r1 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_8, v_8, v_8, v_8).x, vec4<u32>(v_9, v_9, v_9, v_9).x, vec4<u32>(v_10, v_10, v_10, v_10).x, vec4<u32>(v_11, v_11, v_11, v_11).x));
  r2.w = bitcast<f32>((bitcast<u32>(r1.z) >> 8u));
  let v_12 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) >> vec2<u32>(16u)));
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r2.yw) & vec2<u32>(255u)));
  let v_14 = r2;
  r2 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r3.y = f32(bitcast<u32>(r2.x));
  r2.x = f32(bitcast<u32>(r2.y));
  r4.y = f32(bitcast<u32>(r2.z));
  r0.w = bitcast<f32>((bitcast<u32>(r1.y) >> 24u));
  r2.y = f32(bitcast<u32>(r0.w));
  let v_15 = fma(r2.xy, vec2<f32>(0.0078431377187371254f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r2.z = sqrt(r0.w);
  r0.w = fma(r2.z, -0.01872929930686950684f, 0.07426100224256515503f);
  r0.w = fma(r0.w, r2.z, -0.21211439371109008789f);
  r0.w = fma(r0.w, r2.z, 1.57072877883911132812f);
  r2.w = ((-(r2.zzzz)).w + 1.0f);
  let v_16 = fma((-(r2.zzzz)).xyz, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_16.xyz, r2.w);
  r2.w = sqrt(r2.w);
  r0.w = (r0.w * r2.w);
  r0.w = (r0.w * cb12_12.tint_symbol_3[4u].w);
  let v_17 = r0.wwww;
  r5.x = sin(v_17.x);
  r6.x = cos(v_17.x);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_18 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = (r5.xxx * r2.xyz);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = fma(r6.xxx, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r0.w = ((-(r2.zzzz)).w + 1.0f);
  let v_21 = (r2.yz * vec2<f32>(1.0f, 0.0f));
  r5 = vec4<f32>(v_21.xy, r5.zw);
  let v_22 = -(r5.xxxy);
  let v_23 = fma(r2.zx, vec2<f32>(0.0f, 1.0f), v_22.yw);
  let v_24 = r5;
  r5 = vec4<f32>(v_24.x, v_23.x, v_24.z, v_23.y);
  r2.w = dot(r5.yw, r5.yw);
  r2.w = sqrt(r2.w);
  let v_25 = (r5.yw / r2.ww);
  r6 = vec4<f32>(v_25.xy, r6.zw);
  r2.w = (r6.y * r6.y);
  r7.x = fma(r2.w, r0.w, r2.z);
  r0.w = (r0.w * r6.x);
  r7.z = (-(r5.yyyy)).z;
  r5.z = (r6.y * r0.w);
  r5.x = fma(r0.w, r6.x, r2.z);
  r7.w = r5.z;
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.z < 1.0f)));
  let v_26 = (r2.xyz * vec3<f32>(-1.0f, -1.0f, 1.0f));
  r2 = vec4<f32>(v_26.xyz, r2.w);
  let v_27 = bitcast<vec3<u32>>(r0.www);
  let v_28 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz, (v_27 != vec3<u32>()));
  r2 = vec4<f32>(v_28.xyz, r2.w);
  let v_29 = bitcast<vec3<u32>>(r0.www);
  let v_30 = select(vec3<f32>(0.0f, 1.0f, 0.0f), r7.wxz, (v_29 != vec3<u32>()));
  r6 = vec4<f32>(v_30.xyz, r6.w);
  let v_31 = bitcast<vec3<u32>>(r0.www);
  let v_32 = select(vec3<f32>(1.0f, 0.0f, 0.0f), r5.xzw, (v_31 != vec3<u32>()));
  r5 = vec4<f32>(v_32.xyz, r5.w);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 7u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r7.y = dot(cb7_7.tint_symbol_4[bitcast<i32>(r0.x)].xyz, r6.xyz);
  r7.x = dot(cb7_7.tint_symbol_4[bitcast<i32>(r0.x)].xyz, r5.xyz);
  r7.z = dot(cb7_7.tint_symbol_4[bitcast<i32>(r0.x)].xyz, r2.xyz);
  r0.w = bitcast<f32>((bitcast<u32>(r1.z) >> 24u));
  r0.w = f32(bitcast<u32>(r0.w));
  r0.w = (r0.w * 0.0039215688593685627f);
  r2.w = ((-(cb12_12.tint_symbol_3[5u].xxxx)).w + cb12_12.tint_symbol_3[5u].y);
  r0.w = fma(r2.w, r0.w, cb12_12.tint_symbol_3[5u].x);
  r2.w = (cb12_12.tint_symbol_3[5u].z * cb12_12.tint_symbol_3[5u].y);
  r2.w = dot(cb7_7.tint_symbol_4[bitcast<i32>(r0.x)].ww, r2.ww);
  r2.w = fma((-(cb12_12.tint_symbol_3[5u].yyyy)).w, cb12_12.tint_symbol_3[5u].z, r2.w);
  r0.w = (r0.w + r2.w);
  r0.w = max(r0.w, 0.0f);
  let v_33 = (r0.zz * r0.yw);
  let v_34 = r0;
  r0 = vec4<f32>(v_34.x, v_33.x, v_34.z, v_33.y);
  o1.w = (r0.y * v1.w);
  let v_35 = (r0.www * r7.xyz);
  r7 = vec4<f32>(v_35.xyz, r7.w);
  r8.x = r7.y;
  r9.y = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r6.xyz);
  r6.y = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r6.xyz);
  r9.x = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r5.xyz);
  r6.x = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r5.xyz);
  r9.z = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r2.xyz);
  r6.z = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r2.xyz);
  let v_36 = (r0.www * r6.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = (r0.www * r9.xyz);
  r2 = vec4<f32>(v_37.xyz, r2.w);
  r8.y = r2.y;
  r8.z = r0.y;
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(65535u, 65535u, 255u, 255u)));
  r0.w = bitcast<f32>((bitcast<u32>(r1.z) >> 16u));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 255u));
  r4.z = f32(bitcast<u32>(r0.w));
  let v_38 = vec3<f32>(bitcast<vec3<u32>>(r5.xyw));
  r3 = vec4<f32>(v_38.x, r3.y, v_38.yz);
  r4.x = f32(bitcast<u32>(r5.z));
  let v_39 = (r4.xyz * vec3<f32>(0.0039215688593685627f));
  o6 = vec4<f32>(v_39.xyz, o6.w);
  let v_40 = (r3.xyz * cb12_12.tint_symbol_3[4u].xyz);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  o2.z = (r3.w * 0.0039215688593685627f);
  let v_41 = fma(r1.xyz, vec3<f32>(0.00001525902189314365f), cb12_12.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_41.xyz, r1.w);
  r8.w = r1.y;
  r3 = vec4<f32>(v0.xyz, r3.w);
  r3.w = 1.0f;
  r0.w = dot(r3, r8);
  r4 = (r0.wwww * cb1_1.tint_symbol[9u]);
  r5.x = r7.x;
  r5.y = r2.x;
  r5.z = r0.x;
  r5.w = r1.x;
  r0.w = dot(r3, r5);
  r4 = fma(r0.wwww, cb1_1.tint_symbol[8u], r4);
  r5.x = r7.z;
  r5.y = r2.z;
  r5.z = r0.z;
  r5.w = r1.z;
  r0.w = dot(r3, r5);
  r3 = fma(r0.wwww, cb1_1.tint_symbol[10u], r4);
  o0 = (r3 + cb1_1.tint_symbol[11u]);
  let v_42 = (r2.xyz * v0.yyy);
  r3 = vec4<f32>(v_42.xyz, r3.w);
  let v_43 = fma(v0.xxx, r7.xyz, r3.xyz);
  r3 = vec4<f32>(v_43.xyz, r3.w);
  let v_44 = fma(v0.zzz, r0.xyz, r3.xyz);
  r3 = vec4<f32>(v_44.xyz, r3.w);
  let v_45 = (r1.xyz + r3.xyz);
  r1 = vec4<f32>(v_45.xyz, r1.w);
  let v_46 = ((-(r1.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = (r0.w * 0.00000399999998990097f);
  r1.x = min(r0.w, 1.0f);
  r1.y = ((-(r1.xxxx)).y + 1.0f);
  let v_47 = -(cb2_2.tint_symbol_1[16u].zzzz);
  let v_48 = clamp(((r1.xyxx + v_47)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_48.xy, r1.zw);
  r0.w = (cb3_3.tint_symbol_2[49u].w + -1.0f);
  let v_49 = fma(r1.xy, r0.ww, vec2<f32>(1.0f));
  r1 = vec4<f32>(v_49.xy, r1.zw);
  let v_50 = clamp(((r1.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_50.xy, o1.zw);
  o1.z = v1.z;
  o2 = vec3<f32>(v3.xy, o2.xyz.z).xyzx;
  r0.w = dot(v4, v4);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.10000000149011611938f)));
  let v_51 = select(v4, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.www) != vec3<u32>()));
  r1 = vec4<f32>(v_51.xyz, r1.w);
  let v_52 = (r2.xyz * r1.yyy);
  r3 = vec4<f32>(v_52.xyz, r3.w);
  let v_53 = (r2.xyz * v5.yyy);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = fma(v5.xxx, r7.xyz, r2.xyz);
  r2 = vec4<f32>(v_54.xyz, r2.w);
  let v_55 = fma(r1.xxx, r7.xyz, r3.xyz);
  r1 = vec4<f32>(v_55.xy, r1.z, v_55.z);
  let v_56 = fma(r1.zzz, r0.xyz, r1.xyw);
  r1 = vec4<f32>(v_56.xyz, r1.w);
  let v_57 = fma(v5.zzz, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_58 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  o3 = r1.xyz.xyzx;
  o4 = r0.xyz.xyzx;
  let v_59 = (r0.zxy * r1.yzx);
  r2 = vec4<f32>(v_59.xyz, r2.w);
  let v_60 = -(r2.xyzx);
  let v_61 = fma(r0.yzx, r1.zxy, v_60.xyz);
  r0 = vec4<f32>(v_61.xyz, r0.w);
  o5 = ((r0.xyz * v5.www)).xyzx;
  o6.w = v2.x;
}

struct tint_symbol_7 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @builtin(instance_index) v_62 : u32) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v3, v4, v5, i32(v_62));
  return tint_symbol_7(o0, o1, o2, o3, o4, o5, o6);
}
