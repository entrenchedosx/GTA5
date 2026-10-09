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

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb15_struct {
  tint_symbol_3 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb1_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct_1;

struct cb5_struct {
  tint_symbol_5 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb5_struct;

@group(0u) @binding(31u) var s15 : sampler_comparison;

@group(0u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : vec4<f32>;

var<private> o10 : vec4<f32>;

var<private> o11 : vec4<f32>;

var<private> o12 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 3u>;

var<private> x1 : array<vec4<f32>, 3u>;

var<private> x2 : array<vec4<f32>, 3u>;

var<private> x3 : array<vec4<f32>, 3u>;

var<private> x4 : array<vec4<f32>, 4u>;

var<private> x5 : array<vec4<f32>, 1u>;

struct tint_symbol_7 {
  tint_symbol_6 : array<vec4<u32>, 3u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_7;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>, v10 : vec4<f32>, v11 : vec4<f32>, v13 : vec3<f32>) {
  r0 = vec4<f32>(((v0.xz + v7.xz)).xy, r0.zw);
  r1.x = v6.w;
  r1.y = v8.w;
  let v_2 = (r0.xy + r1.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = ((-(r1.xxxy)).zw + v8.xz);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r1 = vec4<f32>(((v6.xz + (-(v7.xzxx)).xy)).xy, r1.zw);
  let v_4 = (r0.zw + r1.xy);
  r1 = vec4<f32>(r1.xy, v_4.xy);
  let v_5 = fma(r1.zw, vec2<f32>(0.5f), r0.xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r1 = vec4<f32>(r1.xy, (((-(v10.xxxw)).zw + v10.yz)).xy);
  r3 = vec4<f32>((((-(v11.xwxx)).xy + v11.yz)).xy, r3.zw);
  x0[0u].x = v9.x;
  x0[1u].x = 0.5f;
  x0[2u].x = v9.y;
  x1[0u].x = v9.z;
  x1[1u].x = 0.5f;
  x1[2u].x = v9.w;
  x2[0u].x = v9.x;
  x2[1u].x = 0.5f;
  x2[2u].x = v9.y;
  x3[0u].x = v9.z;
  x3[1u].x = 0.5f;
  x3[2u].x = v9.w;
  let v_6 = v13.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r3 = vec4<f32>(r3.xy, v_8.xy);
  r2.w = x0[bitcast<i32>(r3.z)].x;
  r4.x = x1[bitcast<i32>(r3.w)].x;
  let v_9 = fma(r0.zw, r2.ww, r0.xy);
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = fma(r1.xy, r4.xx, r0.xy);
  r0 = vec4<f32>(v_10.xy, r0.zw);
  o1.x = fma(r2.w, r1.z, v10.x);
  o1.y = fma(r4.x, r1.w, v10.w);
  o1.z = fma(r2.w, r3.x, v11.x);
  o1.w = fma(r4.x, r3.y, v11.w);
  r0.w = x2[bitcast<i32>(r3.z)].x;
  o2.x = fma(r0.w, r1.z, v10.x);
  r0.w = x3[bitcast<i32>(r3.w)].x;
  o2.y = fma(r0.w, r1.w, v10.w);
  o3.x = clamp(v3.x, 0.0f, 1.0f);
  r0.z = 1.0f;
  r1.x = dot(r0.xyz, cb9_9.tint_symbol_5[2u].xyz);
  r1.y = dot(r0.xyz, cb9_9.tint_symbol_5[3u].xyz);
  r1.z = dot(r0.xyz, cb9_9.tint_symbol_5[4u].xyz);
  let v_11 = (r1.xyz * cb7_7.tint_symbol_4[0u].xxx);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r1.xyz, cb7_7.tint_symbol_4[0u].xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r2.z = 1.0f;
  r4.x = dot(r2.xyz, cb9_9.tint_symbol_5[2u].xyz);
  r4.y = dot(r2.xyz, cb9_9.tint_symbol_5[3u].xyz);
  r4.z = dot(r2.xyz, cb9_9.tint_symbol_5[4u].xyz);
  let v_13 = fma(r4.xyz, cb7_7.tint_symbol_4[0u].xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = -(r2.xyzx);
  let v_15 = (r1.xyz + v_14.xyz);
  r4 = vec4<f32>(v_15.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00100000004749745131f)));
  r0.w = inverseSqrt(r0.w);
  let v_16 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_16.xyz, r4.w);
  let v_17 = -(cb1_1.tint_symbol[14u].xyzx);
  let v_18 = bitcast<vec3<u32>>(r1.www);
  let v_19 = select(r4.xyz, v_17.xyz, (v_18 != vec3<u32>()));
  r4 = vec4<f32>(v_19.xyz, r4.w);
  let v_20 = (r4.xyz + cb1_1.tint_symbol[14u].xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = fma(v5.xxx, r4.xyz, v_17.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_22 = (r0.www * r4.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = (r4.yzx * vec3<f32>(1.0f, 0.0f, 0.0f));
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = -(r5.xyzx);
  let v_25 = fma(r4.zxy, vec3<f32>(0.0f, 1.0f, 0.0f), v_24.xyz);
  r5 = vec4<f32>(v_25.xyz, r5.w);
  r0.w = dot(r5.xy, r5.xy);
  r0.w = inverseSqrt(r0.w);
  let v_26 = (r0.www * r5.xyz);
  o10 = vec4<f32>(v_26.xyz, o10.w);
  r0.w = fma((-(cb6_6.tint_symbol_3[14u].zzzz)).w, 1.5f, 1.0f);
  r0.w = (r0.w * 0.5f);
  let v_27 = r2;
  r5 = vec4<f32>(v_27.xyz, r5.w);
  r1.w = 0.0f;
  r2.w = 0.0f;
  loop {
    r3.w = f32(bitcast<i32>(r2.w));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w >= 4.0f)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      break;
    }
    let v_28 = -(cb1_1.tint_symbol[15u].xyzx);
    let v_29 = (r5.xyz + v_28.xyz);
    r6 = vec4<f32>(v_29.xyz, r6.w);
    let v_30 = (r6.yyy * cb6_6.tint_symbol_3[1u].xyz);
    r7 = vec4<f32>(v_30.xyz, r7.w);
    let v_31 = fma(r6.xxx, cb6_6.tint_symbol_3[0u].xyz, r7.xyz);
    r6 = vec4<f32>(v_31.xy, r6.z, v_31.z);
    let v_32 = fma(r6.zzz, cb6_6.tint_symbol_3[2u].xyz, r6.xyw);
    r6 = vec4<f32>(v_32.xyz, r6.w);
    let v_33 = fma(r6.xyz, cb6_6.tint_symbol_3[4u].xyz, cb6_6.tint_symbol_3[8u].xyz);
    r7 = vec4<f32>(v_33.xyz, r7.w);
    let v_34 = &(x4[0u]);
    let v_35 = r7;
    *(v_34) = vec4<f32>(v_35.xyz, (*(v_34)).w);
    let v_36 = fma(r6.xyz, cb6_6.tint_symbol_3[5u].xyz, cb6_6.tint_symbol_3[9u].xyz);
    r8 = vec4<f32>(v_36.xyz, r8.w);
    let v_37 = &(x4[1u]);
    let v_38 = r8;
    *(v_37) = vec4<f32>(v_38.xyz, (*(v_37)).w);
    let v_39 = fma(r6.xyz, cb6_6.tint_symbol_3[6u].xyz, cb6_6.tint_symbol_3[10u].xyz);
    r9 = vec4<f32>(v_39.xyz, r9.w);
    let v_40 = &(x4[2u]);
    let v_41 = r9;
    *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
    let v_42 = fma(r6.xyz, cb6_6.tint_symbol_3[7u].xyz, cb6_6.tint_symbol_3[11u].xyz);
    r6 = vec4<f32>(v_42.xyz, r6.w);
    let v_43 = &(x4[3u]);
    let v_44 = r6;
    *(v_43) = vec4<f32>(v_44.xyz, (*(v_43)).w);
    let v_45 = abs(r9.yyyy);
    r3.w = max(v_45.w, abs(r9.xxxx).w);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (r3.w < r0.w)));
    let v_46 = (bitcast<u32>(r3.w) != 0u);
    let v_47 = bitcast<f32>(v_1.tint_symbol_6[0i].x);
    r3.w = select(bitcast<f32>(v_1.tint_symbol_6[1i].x), v_47, v_46);
    let v_48 = abs(r8.yyyy);
    r4.w = max(v_48.w, abs(r8.xxxx).w);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r0.w)));
    let v_49 = bitcast<u32>(r4.w);
    r3.w = select(r3.w, bitcast<f32>(v_1.tint_symbol_6[2i].x), (v_49 != 0u));
    let v_50 = abs(r7.yyyy);
    r4.w = max(v_50.w, abs(r7.xxxx).w);
    r4.w = bitcast<f32>(select(0u, 4294967295u, (r4.w < r0.w)));
    let v_51 = bitcast<u32>(r4.w);
    r3.w = select(r3.w, 0.0f, (v_51 != 0u));
    let v_52 = x4[bitcast<i32>(r3.w)];
    r6 = vec4<f32>(v_52.xyz, r6.w);
    r3.w = f32(bitcast<i32>(r3.w));
    r3.w = (r3.w + 0.5f);
    r3.w = (r3.w * 0.25f);
    r6.x = (r6.x + cb6_6.tint_symbol_3[14u].z);
    r3.w = fma(r6.y, 0.25f, r3.w);
    let v_53 = (r6.xz + vec2<f32>(0.5f, 0.0f));
    let v_54 = r6;
    r6 = vec4<f32>(v_53.x, v_54.y, v_53.y, v_54.w);
    r6.y = fma(cb6_6.tint_symbol_3[14u].w, 0.25f, r3.w);
    let v_55 = r6.xyxx;
    r3.w = textureSampleCompareLevel(t15, s15, v_55.xy, r6.z);
    r1.w = (r1.w + r3.w);
    r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
  }
  r0.w = fma(r1.w, 0.25f, -1.0f);
  o7.z = fma(v4.z, r0.w, 1.0f);
  o0.w = (v1.w * v4.y);
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r0.w);
  let v_56 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r2.x = (r1.w + v_56.x);
  r2.x = max(r2.x, 0.0f);
  r1.w = (r2.x / r1.w);
  r1.w = (r1.w * r3.z);
  r2.y = (r1.w * cb3_3.tint_symbol_2[52u].z);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
  r2.z = (r2.y * -1.44269502162933349609f);
  r2.z = exp2(r2.z);
  r2.z = ((-(r2.zzzz)).z + 1.0f);
  r2.y = (r2.z / r2.y);
  let v_57 = bitcast<u32>(r1.w);
  r1.w = select(1.0f, r2.y, (v_57 != 0u));
  r2.y = (r2.x * cb3_3.tint_symbol_2[51u].w);
  r1.w = (r1.w * r2.y);
  r1.w = min(r1.w, 1.0f);
  r1.w = (r1.w * 1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = min(r1.w, 1.0f);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r2.y = (r1.w * cb3_3.tint_symbol_2[52u].y);
  r0.w = inverseSqrt(r0.w);
  let v_58 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_58.xyz, r3.w);
  let v_59 = dot(r3.xyz, cb3_3.tint_symbol_2[54u].xyz);
  r0.w = clamp(vec4<f32>(v_59, v_59, v_59, v_59).w, 0.0f, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb3_3.tint_symbol_2[54u].w);
  r0.w = exp2(r0.w);
  let v_60 = dot(r3.xyz, cb3_3.tint_symbol_2[53u].xyz);
  r2.z = clamp(vec4<f32>(v_60, v_60, v_60, v_60).z, 0.0f, 1.0f);
  r2.z = log2(r2.z);
  r2.z = (r2.z * cb3_3.tint_symbol_2[53u].w);
  r2.z = exp2(r2.z);
  r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
  let v_61 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r2.w = (r2.x + v_61.w);
  r2.w = max(r2.w, 0.0f);
  r2.w = (r2.w * cb3_3.tint_symbol_2[51u].x);
  r2.w = (r2.w * 1.44269502162933349609f);
  r2.w = exp2(r2.w);
  r2.w = ((-(r2.wwww)).w + 1.0f);
  o4.w = clamp(fma(r1.wwww, r2.wwww, r2.yyyy).w, 0.0f, 1.0f);
  let v_62 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r2.x = (r2.x * v_62.x);
  r2.x = (r2.x * 1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  let v_63 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
  r3 = vec4<f32>(v_63.xyz, r3.w);
  let v_64 = fma(r0.www, r3.xyz, cb3_3.tint_symbol_2[56u].xyz);
  r3 = vec4<f32>(v_64.xyz, r3.w);
  let v_65 = ((-(r3.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r5 = vec4<f32>(v_65.xyz, r5.w);
  let v_66 = fma(r2.zzz, r5.xyz, r3.xyz);
  r2 = vec4<f32>(r2.x, v_66.xyz);
  let v_67 = -(cb3_3.tint_symbol_2[57u].xxyz);
  let v_68 = (r2.yzw + v_67.yzw);
  r2 = vec4<f32>(r2.x, v_68.xyz);
  let v_69 = fma(r2.xxx, r2.yzw, cb3_3.tint_symbol_2[57u].xyz);
  r2 = vec4<f32>(v_69.xyz, r2.w);
  r3.x = ((-(r2.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r3.y = ((-(r2.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r3.z = ((-(r2.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
  let v_70 = fma(r1.www, r3.xyz, r2.xyz);
  o4 = vec4<f32>(v_70.xyz, o4.w);
  x5[0u].x = dot(r0.xyz, cb0_0.tint_symbol_1[0u].xyw);
  o0 = vec4<f32>(v1.xyz, o0.w);
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o5 = v4;
  o6 = vec4<f32>(v5.xy, o6.zw);
  o6 = vec4<f32>(o6.xy, vec2<f32>());
  o7 = vec4<f32>(vec2<f32>(), o7.z, 0.0f);
  let v_71 = r1;
  o8 = vec4<f32>(v_71.xyz, o8.w);
  o8.w = 0.0f;
  o10.w = 0.0f;
  let v_72 = r0;
  o11 = vec4<f32>(v_72.xy, o11.zw);
  o11 = vec4<f32>(o11.xy, vec2<f32>(0.0f, 1.0f));
  let v_73 = &(x5[0u]);
  *(v_73) = vec4<f32>((*(v_73)).x, vec3<f32>());
  o9 = r4.xyz.xyzx;
  o3.y = v3.y;
  o12[0u] = x5[0u].x;
  o12[1u] = x5[0u].y;
  o12[2u] = x5[0u].z;
  o12[3u] = x5[0u].w;
  v = vec4<f32>(o12[0u], o12[1u], o12[2u], o12[3u]);
}

struct tint_symbol_9 {
  @location(0u)
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
  @location(7u)
  o7 : vec4<f32>,
  @location(8u)
  o8 : vec4<f32>,
  @location(9u)
  o9 : vec4<f32>,
  @location(10u)
  o10 : vec4<f32>,
  @builtin(position)
  o11 : vec4<f32>,
  @builtin(clip_distances)
  o12 : array<f32, 4u>,
  @location(15u)
  tint_symbol_8 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>, @location(10u) v10 : vec4<f32>, @location(11u) v11 : vec4<f32>, @location(13u) v13 : vec3<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v3, v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return tint_symbol_9(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, v);
}
