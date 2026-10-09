diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb53_struct {
  tint_symbol_1 : array<vec4<f32>, 53u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb53_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  let v = (cb12_12.tint_symbol_2[1u].yzx * cb12_12.tint_symbol_2[2u].zxy);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  let v_2 = fma(cb12_12.tint_symbol_2[2u].yzx, cb12_12.tint_symbol_2[1u].zxy, v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = dot(v0.xy, v0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_3 = (r0.ww * v0.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.99989998340606689453f >= abs(v0.zzzz).w)));
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) & bitcast<vec2<u32>>(r0.ww)));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r0.xyz * r1.yyy);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(cb12_12.tint_symbol_2[2u].xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = ((-(cb12_12.tint_symbol_2[5u].xxxx)).w + 1.0f);
  r1 = (v0.zxyz + vec4<f32>(1.0f, -0.0f, -0.0f, -1.0f));
  r1.x = (r1.x * r1.x);
  let v_7 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (abs(r1.yyzw).yzw < vec3<f32>(0.00009999999747378752f))));
  r1 = vec4<f32>(r1.x, v_7.xyz);
  r0.w = fma((-(r1.xxxx)).w, r0.w, 1.0f);
  r1.x = fma((-(r0.wwww)).x, r0.w, 1.0f);
  let v_8 = (r0.www * cb12_12.tint_symbol_2[1u].xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r0.w = min(abs(r1.xxxx).w, 1.0f);
  r0.w = sqrt(r0.w);
  let v_9 = (r0.www * r0.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r0.w = ((-(v0.zzzz)).w + 1.0f);
  let v_10 = (r0.ww * cb12_12.tint_symbol_2[5u].xy);
  r4 = vec4<f32>(v_10.xy, r4.zw);
  let v_11 = (r0.xyz * r4.yyy);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (r4.xxx * cb12_12.tint_symbol_2[1u].xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (-0.0f >= v0.z)));
  let v_13 = bitcast<vec3<u32>>(r0.www);
  let v_14 = r3.xyz;
  let v_15 = select(r0.xyz, v_14, (v_13 != vec3<u32>()));
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = bitcast<vec3<u32>>(r0.www);
  let v_17 = r2.xyz;
  let v_18 = select(r4.xyz, v_17, (v_16 != vec3<u32>()));
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = fma(r0.xyz, cb12_12.tint_symbol_2[4u].yyy, cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r2 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r2 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r2);
  r2 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r2);
  r2 = (r2 + cb1_1.tint_symbol[11u]);
  o0 = r2;
  o1 = r0.xyz.xyzx;
  let v_21 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_22 = (r0.xyz + v_21.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  r3.x = (r2.w + r2.x);
  r3.y = ((-(r2.yyyy)).y + r2.w);
  o2.w = r2.w;
  let v_23 = (r3.xy * vec2<f32>(0.5f));
  o2 = vec4<f32>(v_23.xy, o2.zw);
  r0.w = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.y)));
  r0.w = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r0.w)));
  r1.x = dot(r0.xyz, cb12_12.tint_symbol_2[1u].xyz);
  let v_24 = -(cb12_12.tint_symbol_2[0u].xxyz);
  let v_25 = (cb1_1.tint_symbol[15u].xyz + v_24.yzw);
  r1 = vec4<f32>(r1.x, v_25.xyz);
  r2.x = dot(r1.yzw, r0.xyz);
  r2.y = (cb12_12.tint_symbol_2[5u].x * cb12_12.tint_symbol_2[5u].x);
  r2.z = (r2.x * r2.y);
  r2.w = dot(r1.yzw, cb12_12.tint_symbol_2[1u].xyz);
  let v_26 = -(r2.zzzz);
  r2.z = fma(r1.x, r2.w, v_26.z);
  r3.x = dot(r0.xyz, r0.xyz);
  r3.y = (r2.y * r3.x);
  let v_27 = -(r3.yyyy);
  r1.x = fma(r1.x, r1.x, v_27.x);
  r3.y = dot(r1.yzw, r1.yzw);
  r2.y = (r2.y * r3.y);
  r3.y = fma((-(cb12_12.tint_symbol_2[4u].yyyy)).y, cb12_12.tint_symbol_2[4u].y, r3.y);
  r3.y = (r3.x * r3.y);
  let v_28 = -(r3.yyyy);
  r3.y = fma(r2.x, r2.x, v_28.y);
  r3.y = sqrt(abs(r3.yyyy).y);
  let v_29 = -(r2.xxxx);
  r3.y = (v_29.y + (-(r3.yyyy)).y);
  r2.x = min(r2.x, -0.0f);
  let v_30 = (r0.xyz * r2.xxx);
  r4 = vec4<f32>(v_30.xyz, r4.w);
  let v_31 = (r4.xyz / r3.xxx);
  r4 = vec4<f32>(v_31.xyz, r4.w);
  let v_32 = -(r4.xxyz);
  let v_33 = (r1.yzw + v_32.yzw);
  r1 = vec4<f32>(r1.x, v_33.xyz);
  r1.y = dot(r1.yzw, r1.yzw);
  r1.z = (r3.y / r3.x);
  r1.w = sqrt(r3.x);
  let v_34 = -(r2.yyyy);
  r2.x = fma(r2.w, r2.w, v_34.x);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.w < -0.0f)));
  r2.w = (r1.x * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < -0.0f)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.y) | bitcast<u32>(r2.x)));
  let v_35 = -(r2.wwww);
  r2.y = fma(r2.z, r2.z, v_35.y);
  r2.y = sqrt(abs(r2.yyyy).y);
  r2.y = ((-(r2.yyyy)).y + r2.z);
  let v_36 = -(r1.xxxx);
  r1.x = (r2.y / v_36.x);
  let v_37 = bitcast<u32>(r0.w);
  r0.w = select(r1.x, 0.99000000953674316406f, (v_37 != 0u));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.x)));
  r2.x = clamp(max(r0.wwww, r1.zzzz).x, -0.0f, 1.0f);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (-0.0f < r1.w)));
  r2.y = 1.0f;
  let v_38 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.ww) & bitcast<vec2<u32>>(r2.xy)));
  let v_39 = r1;
  r1 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
  let v_40 = fma(r0.xyz, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = fma(r0.xyz, r1.zzz, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_41.xyz, r3.w);
  let v_42 = (r0.xyz / r1.www);
  r0 = vec4<f32>(v_42.xyz, r0.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w == -0.0f)));
  let v_43 = bitcast<vec3<u32>>(r1.www);
  let v_44 = select(r0.xyz, vec3<f32>(), (v_43 != vec3<u32>()));
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = r1.xz;
  o3 = vec3<f32>(v_45.xy, o3.xyz.z).xyzx;
  let v_46 = ((-(r2.xxyz)).xzw + r3.xyz);
  r1 = vec4<f32>(v_46.x, r1.y, v_46.yz);
  r1.x = dot(r1.xzw, r1.xzw);
  r1.x = sqrt(r1.x);
  r1.z = (r1.x * 0.00499999988824129105f);
  r1.x = max(r1.x, 1.0f);
  let v_47 = fma(r0.xyz, r1.zzz, r2.xyz);
  r2 = vec4<f32>(v_47.xyz, r2.w);
  let v_48 = fma((-(r0.xyzx)).xyz, r1.zzz, r3.xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  let v_49 = (r2.xyz + v_21.xyz);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  let v_50 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r0.y = (r0.x + v_50.y);
  r0.y = max(r0.y, -0.0f);
  r0.x = (r0.y / r0.x);
  r0.x = (r0.x * r0.z);
  r0.z = (r0.x * cb3_3.tint_symbol_1[52u].z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.xxxx).x)));
  r1.z = (r0.z * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r0.z = (r1.z / r0.z);
  let v_51 = bitcast<u32>(r0.x);
  r0.x = select(1.0f, r0.z, (v_51 != 0u));
  r0.z = (r0.y * cb3_3.tint_symbol_1[51u].w);
  let v_52 = -(cb3_3.tint_symbol_1[52u].xxxx);
  r0.y = (r0.y + v_52.y);
  r0.y = max(r0.y, -0.0f);
  r0.y = (r0.y * cb3_3.tint_symbol_1[51u].x);
  r0.y = (r0.y * 1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.x = (r0.x * r0.z);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * 1.44269502162933349609f);
  r0.x = exp2(r0.x);
  r0.x = min(r0.x, 1.0f);
  let v_53 = ((-(r0.xyxx)).xy + vec2<f32>(1.0f));
  r0 = vec4<f32>(v_53.xy, r0.zw);
  r0.z = fma((-(r0.xxxx)).z, cb3_3.tint_symbol_1[52u].y, 1.0f);
  r0.x = (r0.x * cb3_3.tint_symbol_1[52u].y);
  r0.z = (r0.z * cb3_3.tint_symbol_1[51u].y);
  r0.x = clamp(fma(r0.zzzz, r0.yyyy, r0.xxxx).x, -0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (cb12_12.tint_symbol_2[3u].w * cb12_12.tint_symbol_2[14u].x);
  r0.y = (r1.x * r0.y);
  o2.z = (r0.x * r0.y);
  r3.w = 1.0f;
  let v_54 = cb1_1.tint_symbol[14u];
  r2 = vec4<f32>(v_54.xyz, r2.w);
  r2.w = cb1_1.tint_symbol[7u].z;
  r0.x = dot(r3, r2);
  r0.y = (cb12_12.tint_symbol_2[17u].z / cb12_12.tint_symbol_2[17u].w);
  let v_55 = -(r0.yyyy);
  o3.z = (v_55.z + (-(r0.xxxx)).z);
  r0.x = (cb12_12.tint_symbol_2[4u].y * cb12_12.tint_symbol_2[4u].y);
  r0.x = (r1.y / r0.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = (r0.x * r0.x);
  r0.y = ((-(cb12_12.tint_symbol_2[15u].wwww)).y + 1.0f);
  r0.y = fma(r0.y, r0.x, cb12_12.tint_symbol_2[15u].w);
  r0.x = (r0.x / r0.y);
  let v_56 = -(cb12_12.tint_symbol_2[15u].xyzx);
  let v_57 = (cb12_12.tint_symbol_2[3u].xyz + v_56.xyz);
  r1 = vec4<f32>(v_57.xyz, r1.w);
  let v_58 = fma(r0.xxx, r1.xyz, cb12_12.tint_symbol_2[15u].xyz);
  r0 = vec4<f32>(v_58.xyz, r0.w);
  o4 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.xyz) & bitcast<vec3<u32>>(r0.www))).xyzx;
}

struct tint_symbol_3 {
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
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1, o2, o3, o4);
}
