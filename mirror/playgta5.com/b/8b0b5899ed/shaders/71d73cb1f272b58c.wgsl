enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

struct cb24_struct {
  tint_symbol_3 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb24_struct;

struct tint_symbol_5 {
  tint_symbol_4 : array<u32>,
}

@group(0u) @binding(32u) var<storage, read> t0 : tint_symbol_5;

@group(0u) @binding(33u) var<storage, read> t1 : tint_symbol_5;

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v_1 : i32) {
  let v_2 = 0i;
  v6.x = bitcast<f32>((v_1 - v_2));
  let v_3 = t0.tint_symbol_4[(bitcast<u32>((bitcast<i32>(v6.x) * 1i)) + 0u)];
  r0.x = bitcast<f32>(vec4<u32>(v_3, v_3, v_3, v_3).x);
  r0.y = bitcast<f32>((bitcast<u32>(r0.x) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 255u));
  r0.y = f32(bitcast<u32>(r0.y));
  r1.y = (r0.y * 0.0039215688593685627f);
  r2.x = v6.x;
  let v_4 = r2;
  r2 = vec4<f32>(v_4.x, vec2<f32>(1.0f), v_4.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.x) >> 24u));
  r1.x = bitcast<f32>((bitcast<u32>(r0.x) & 65535u));
  r0.x = f32(bitcast<u32>(r0.y));
  r1.z = (r0.x * 0.0039215688593685627f);
  let v_5 = bitcast<vec3<u32>>(cb12_12.tint_symbol_2[6u].www);
  let v_6 = r1.xyz;
  let v_7 = select(r2.xyz, v_6, (v_5 != vec3<u32>()));
  r0 = vec4<f32>(v_7.xyz, r0.w);
  r0.y = (r0.z * r0.y);
  r1 = clamp(v1, vec4<f32>(), vec4<f32>(1.0f));
  o0.w = (r0.y * r1.w);
  let v_8 = r1;
  o0 = vec4<f32>(v_8.xyz, o0.w);
  o1 = vec3<f32>(v3.xy, o1.xyz.z).xyzx;
  let v_9 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
  let v_10 = t1.tint_symbol_4[v_9];
  let v_11 = t1.tint_symbol_4[(v_9 + 1u)];
  let v_12 = t1.tint_symbol_4[(v_9 + 2u)];
  let v_13 = t1.tint_symbol_4[(v_9 + 3u)];
  r1 = bitcast<vec4<f32>>(vec4<u32>(vec4<u32>(v_10, v_10, v_10, v_10).x, vec4<u32>(v_11, v_11, v_11, v_11).x, vec4<u32>(v_12, v_12, v_12, v_12).x, vec4<u32>(v_13, v_13, v_13, v_13).x));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(65535u, 65535u, 255u, 255u)));
  let v_14 = vec3<f32>(bitcast<vec3<u32>>(r2.xyw));
  r3 = vec4<f32>(v_14.x, r3.y, v_14.yz);
  r2.x = f32(bitcast<u32>(r2.z));
  o1.z = (r3.w * 0.0039215688593685627f);
  r4.w = bitcast<f32>((bitcast<u32>(r1.z) >> 8u));
  let v_15 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) >> vec2<u32>(16u)));
  r4 = vec4<f32>(v_15.xy, r4.zw);
  let v_16 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r4.yw) & vec2<u32>(255u)));
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.x, v_17.z, v_16.y);
  r3.y = f32(bitcast<u32>(r4.x));
  let v_18 = (r3.xyz * cb12_12.tint_symbol_2[4u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r3.xyz, vec3<f32>(0.00001525902189314365f), cb12_12.tint_symbol_2[3u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r4.x = f32(bitcast<u32>(r0.y));
  r2.y = f32(bitcast<u32>(r0.w));
  r0.y = bitcast<f32>((bitcast<u32>(r1.y) >> 24u));
  r4.y = f32(bitcast<u32>(r0.y));
  let v_20 = fma(r4.xy, vec2<f32>(0.0078431377187371254f), vec2<f32>(-1.0f));
  r4 = vec4<f32>(v_20.xy, r4.zw);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r4.z = sqrt(r0.y);
  r0.y = fma(r4.z, -0.01872929930686950684f, 0.07426100224256515503f);
  r0.y = fma(r0.y, r4.z, -0.21211439371109008789f);
  r0.y = fma(r0.y, r4.z, 1.57072877883911132812f);
  r0.w = ((-(r4.zzzz)).w + 1.0f);
  let v_21 = fma((-(r4.zzzz)).xyw, vec3<f32>(0.0f, 0.0f, 1.0f), r4.xyz);
  r1 = vec4<f32>(v_21.xy, r1.z, v_21.z);
  r0.w = sqrt(r0.w);
  r0.y = (r0.w * r0.y);
  r0.y = (r0.y * cb12_12.tint_symbol_2[4u].w);
  let v_22 = r0.yyyy;
  r4.x = sin(v_22.x);
  r5.x = cos(v_22.x);
  r0.y = dot(r1.xyw, r1.xyw);
  r0.y = inverseSqrt(r0.y);
  let v_23 = (r0.yyy * r1.xyw);
  r1 = vec4<f32>(v_23.xy, r1.z, v_23.z);
  let v_24 = (r4.xxx * r1.xyw);
  r1 = vec4<f32>(v_24.xy, r1.z, v_24.z);
  let v_25 = fma(r5.xxx, vec3<f32>(0.0f, 0.0f, 1.0f), r1.xyw);
  r1 = vec4<f32>(v_25.xy, r1.z, v_25.z);
  r0.y = ((-(r1.wwww)).y + 1.0f);
  let v_26 = (r1.yw * vec2<f32>(1.0f, 0.0f));
  r4 = vec4<f32>(v_26.xy, r4.zw);
  let v_27 = -(r4.xxxy);
  let v_28 = fma(r1.wx, vec2<f32>(0.0f, 1.0f), v_27.yw);
  let v_29 = r4;
  r4 = vec4<f32>(v_29.x, v_28.x, v_29.z, v_28.y);
  r0.w = dot(r4.yw, r4.yw);
  r0.w = sqrt(r0.w);
  let v_30 = (r4.yw / r0.ww);
  r5 = vec4<f32>(v_30.xy, r5.zw);
  r0.w = (r5.y * r5.y);
  r6.x = fma(r0.w, r0.y, r1.w);
  r0.y = (r0.y * r5.x);
  r6.z = (-(r4.yyyy)).z;
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 1.0f)));
  r4.z = (r5.y * r0.y);
  r4.x = fma(r0.y, r5.x, r1.w);
  let v_31 = (r1.xyw * vec3<f32>(-1.0f, -1.0f, 1.0f));
  r1 = vec4<f32>(v_31.xy, r1.z, v_31.z);
  let v_32 = bitcast<vec3<u32>>(r0.www);
  let v_33 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r1.xyw, (v_32 != vec3<u32>()));
  r1 = vec4<f32>(v_33.xy, r1.z, v_33.z);
  let v_34 = bitcast<vec3<u32>>(r0.www);
  let v_35 = select(vec3<f32>(1.0f, 0.0f, 0.0f), r4.xzw, (v_34 != vec3<u32>()));
  r4 = vec4<f32>(v_35.xy, r4.z, v_35.z);
  r6.w = r4.z;
  let v_36 = bitcast<vec3<u32>>(r0.www);
  let v_37 = select(vec3<f32>(0.0f, 1.0f, 0.0f), r6.wxz, (v_36 != vec3<u32>()));
  r5 = vec4<f32>(v_37.xyz, r5.w);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 7u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r6.y = dot(cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r5.xyz);
  r6.x = dot(cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r4.xyw);
  r6.z = dot(cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r1.xyw);
  r0.y = bitcast<f32>((bitcast<u32>(r1.z) >> 24u));
  r0.w = bitcast<f32>((bitcast<u32>(r1.z) >> 16u));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 255u));
  r2.z = f32(bitcast<u32>(r0.w));
  let v_38 = (r2.xyz * vec3<f32>(0.0039215688593685627f));
  o5 = vec4<f32>(v_38.xyz, o5.w);
  r0.y = f32(bitcast<u32>(r0.y));
  r0.y = (r0.y * 0.0039215688593685627f);
  r0.w = ((-(cb12_12.tint_symbol_2[5u].xxxx)).w + cb12_12.tint_symbol_2[5u].y);
  r0.y = fma(r0.w, r0.y, cb12_12.tint_symbol_2[5u].x);
  r0.w = (cb12_12.tint_symbol_2[5u].z * cb12_12.tint_symbol_2[5u].y);
  r0.w = dot(cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].ww, r0.ww);
  r0.w = fma((-(cb12_12.tint_symbol_2[5u].yyyy)).w, cb12_12.tint_symbol_2[5u].z, r0.w);
  r0.y = (r0.w + r0.y);
  r0.y = max(r0.y, 0.0f);
  r0.y = (r0.z * r0.y);
  let v_39 = (r0.yyy * r6.yxz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = (r2.yxz * v4.yyy);
  r6 = vec4<f32>(v_40.xyz, r6.w);
  r7.y = dot(cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].xyz, r5.xyz);
  r5.y = dot(cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r5.xyz);
  r7.x = dot(cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].xyz, r4.xyw);
  r5.x = dot(cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r4.xyw);
  r7.z = dot(cb7_7.tint_symbol_3[bitcast<i32>(r0.x)].xyz, r1.xyw);
  r5.z = dot(cb7_7.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r1.xyw);
  let v_41 = (r0.yyy * r5.xyz);
  r0 = vec4<f32>(v_41.x, r0.y, v_41.yz);
  let v_42 = (r0.yyy * r7.zxy);
  r1 = vec4<f32>(v_42.xyz, r1.w);
  let v_43 = fma(v4.xxx, r1.yzx, r6.xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  o2 = fma(v4.zzz, r0.xzw, r4.xyz).xyzx;
  let v_44 = (r2.yxz * v0.yyy);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  let v_45 = fma(v0.xxx, r1.yzx, r4.xyz);
  r4 = vec4<f32>(v_45.xyz, r4.w);
  let v_46 = fma(v0.zzz, r0.xzw, r4.xyz);
  r4 = vec4<f32>(v_46.xyz, r4.w);
  o3 = ((r3.xyz + r4.xyz)).xyzx;
  r4.x = r1.z;
  r4.y = r2.x;
  r4.z = r0.z;
  r4.w = r3.y;
  r5 = vec4<f32>(v0.xyz, r5.w);
  r5.w = 1.0f;
  r0.y = dot(r5, r4);
  r4 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r2.x = r1.y;
  r1.y = r2.z;
  r2.z = r0.x;
  r1.z = r0.w;
  r2.w = r3.x;
  r1.w = r3.z;
  r0.x = dot(r5, r1);
  r0.y = dot(r5, r2);
  r1 = fma(r0.yyyy, cb1_1.tint_symbol[8u], r4);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o4 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_47 = &(x0[0u]);
  *(v_47) = vec4<f32>((*(v_47)).x, vec3<f32>());
  o5.w = v2.x;
  o6[0u] = x0[0u].x;
  o6[1u] = x0[0u].y;
  o6[2u] = x0[0u].z;
  o6[3u] = x0[0u].w;
  v = vec4<f32>(o6[0u], o6[1u], o6[2u], o6[3u]);
}

struct tint_symbol_7 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @builtin(position)
  o4 : vec4<f32>,
  @location(6u)
  o5 : vec4<f32>,
  @builtin(clip_distances)
  o6 : array<f32, 4u>,
  @location(15u)
  tint_symbol_6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @builtin(instance_index) v_48 : u32) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v3, v4, i32(v_48));
  return tint_symbol_7(o0, o1, o2, o3, o4, o5, o6, v);
}
