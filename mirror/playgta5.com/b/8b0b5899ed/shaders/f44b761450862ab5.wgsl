diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb2_struct;

struct cb15_struct {
  tint_symbol_4 : array<vec4<f32>, 15u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb15_struct;

struct cb4_struct {
  tint_symbol_5 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  r0.x = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_4[1u].w);
  r0.y = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_4[2u].w);
  let v = (r0.xy + v2.yy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xy + cb11_11.tint_symbol_4[3u].ww);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fract(r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy + vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = fma((-(abs(r0.xyxx))).xy, vec2<f32>(2.0f), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.xy * r0.xy);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = fma((-(r0.xyxx)).xy, vec2<f32>(2.0f), vec2<f32>(3.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (r0.xy * r0.zw);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = ((-(r0.yyyx)).zw + vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = (r0.zw * r0.xy);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r0.x = (r0.y * r0.x);
  r0.y = (r0.z * r0.w);
  let v_11 = (r1.xxx * cb11_11.tint_symbol_4[1u].xyz);
  r1 = vec4<f32>(v_11.x, r1.y, v_11.yz);
  let v_12 = fma(r0.yyy, cb11_11.tint_symbol_4[0u].xyz, r1.xzw);
  r0 = vec4<f32>(r0.x, v_12.xyz);
  let v_13 = fma(r1.yyy, cb11_11.tint_symbol_4[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_13.xyz);
  let v_14 = fma(r0.xxx, cb11_11.tint_symbol_4[3u].xyz, r0.yzw);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = -(cb11_11.tint_symbol_4[0u].xyzx);
  let v_16 = (r0.xyz + v_15.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = ((-(cb12_12.tint_symbol_5[3u].zxzz)).xy + cb12_12.tint_symbol_5[3u].wy);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  let v_18 = fma(v2.xx, r1.xy, cb12_12.tint_symbol_5[3u].zx);
  r1 = vec4<f32>(v_18.xy, r1.zw);
  let v_19 = (r1.xy * vec2<f32>(-1.44269502162933349609f));
  r1 = vec4<f32>(v_19.xy, r1.zw);
  let v_20 = exp2(r1.xy);
  r1 = vec4<f32>(v_20.xy, r1.zw);
  let v_21 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_21.xy, r1.zw);
  let v_22 = ((-(r1.yyyx)).zw + vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_22.xy);
  let v_23 = (r1.xy * cb11_11.tint_symbol_4[13u].wx);
  r1 = vec4<f32>(v_23.xy, r1.zw);
  r0.w = (r1.y + r1.x);
  let v_24 = -(cb11_11.tint_symbol_4[13u].zzzz);
  r0.w = (r0.w + v_24.w);
  let v_25 = (r0.xyz * r1.www);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = (r0.xyz * cb11_11.tint_symbol_4[10u].www);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = fma(cb11_11.tint_symbol_4[0u].xyz, r1.zzz, r0.xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = (r0.xyz * cb11_11.tint_symbol_4[11u].xxx);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  r2.x = dot(cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r2.y = dot(cb1_1.tint_symbol[1u].xyz, r0.xyz);
  r2.z = dot(cb1_1.tint_symbol[2u].xyz, r0.xyz);
  let v_29 = (r2.xyz * cb11_11.tint_symbol_4[10u].yyy);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (abs(r0.xyxz).xyw + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
  r1 = vec4<f32>(v_30.xy, r1.z, v_30.z);
  r1.x = dot(r1.xyw, r1.xyw);
  r1.x = sqrt(r1.x);
  r1.y = fma((-(cb11_11.tint_symbol_4[4u].xxxx)).y, r1.z, r1.x);
  let v_31 = (r1.zz * cb11_11.tint_symbol_4[4u].xy);
  r1 = vec4<f32>(r1.xy, v_31.xy);
  r1.y = max(r1.y, 0.0f);
  r1.y = (r1.y / r1.w);
  r1.y = (r1.y * -1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.y = fma(r1.w, r1.y, r1.z);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= r1.x)));
  r1.x = (r1.y / r1.x);
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
  r1.z = ((-(r1.xxxx)).z + 1.0f);
  r1.x = fma(r1.z, r1.y, r1.x);
  r2 = vec4<f32>(vec2<f32>(), r2.zw);
  r2.z = cb12_12.tint_symbol_5[2u].x;
  let v_32 = ((-(r2.yyyz)).yzw + v0);
  r1 = vec4<f32>(r1.x, v_32.xyz);
  let v_33 = fma(r0.xyz, r1.xxx, r1.yzw);
  r0 = vec4<f32>(v_33.xyz, r0.w);
  r1.x = dot(r1.yzw, r1.yzw);
  r1.y = dot(r0.xyz, r0.xyz);
  let v_34 = sqrt(r1.xy);
  r1 = vec4<f32>(v_34.xy, r1.zw);
  r1.x = (r1.x / r1.y);
  let v_35 = fma(r0.xyz, r1.xxx, r2.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r1 + cb1_1.tint_symbol[11u]);
  let v_36 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_40.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = (r0.x * 0.00000399999998990097f);
  r0.x = min(r0.x, 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_41 = -(cb2_2.tint_symbol_1[16u].zzzz);
  let v_42 = clamp(((r0.xyxx + v_41)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_42.xy, r0.zw);
  r0.z = (cb3_3.tint_symbol_2[49u].w + -1.0f);
  let v_43 = fma(r0.xy, r0.zz, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_43.xy, r0.zw);
  let v_44 = clamp(((r0.xyxx * v1.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  o1 = vec4<f32>(v_44.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v1.zw);
  r0 = vec4<f32>(v3.xy, r0.zw);
  r0.z = 1.0f;
  o2.x = dot(cb13_13.tint_symbol_3[0u].xyz, r0.xyz);
  o2.y = dot(cb13_13.tint_symbol_3[1u].xyz, r0.xyz);
  r0.x = dot(v4, v4);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_45 = select(v4, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  let v_48 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_48.xyz, r0.w);
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_49 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  o3 = r0.xyz.xyzx;
  let v_50 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_50.xyz, r1.w);
  let v_51 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_51.xyz, r1.w);
  let v_52 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_52.xyz, r1.w);
  o4 = r1.xyz.xyzx;
  let v_53 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_53.xyz, r2.w);
  let v_54 = -(r2.xyzx);
  let v_55 = fma(r1.yzx, r0.zxy, v_54.xyz);
  r0 = vec4<f32>(v_55.xyz, r0.w);
  o5 = ((r0.xyz * v5.www)).xyzx;
  r0.x = (v_24.x + 1.0f);
  r0.x = clamp(((r0.wwww / r0.xxxx)).x, 0.0f, 1.0f);
  r0.y = ((-(r0.xxxx)).y + 1.0f);
  let v_56 = (v2.zyz * cb11_11.tint_symbol_4[12u].xyz);
  r1 = vec4<f32>(v_56.xyz, r1.w);
  let v_57 = fma(r0.yyy, r1.xyz, r0.xxx);
  r0 = vec4<f32>(v_57.xyz, r0.w);
  r0.w = ((-(cb11_11.tint_symbol_4[14u].wwww)).w + 1.0f);
  let v_58 = (cb11_11.tint_symbol_4[14u].www * cb11_11.tint_symbol_4[14u].xyz);
  r1 = vec4<f32>(v_58.xyz, r1.w);
  let v_59 = fma(r0.www, r0.xyz, r1.xyz);
  o6 = vec4<f32>(v_59.xyz, o6.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_4[12u].w)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_4[12u].w < 0.0f)));
  let v_60 = -(bitcast<vec4<i32>>(r0.xxxx));
  r0.x = bitcast<f32>((bitcast<i32>(r0.y) + v_60.x));
  o6.w = f32(bitcast<i32>(r0.x));
}

struct tint_symbol_6 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6);
}
