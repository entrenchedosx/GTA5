diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb53_struct {
  tint_symbol_1 : array<vec4<f32>, 53u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb53_struct;

struct cb16_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb16_struct_1;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0.x = dot(v0.xyz, v0.xyz);
  r0.y = inverseSqrt(r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  let v = (r0.yyy * v0.xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = bitcast<vec3<u32>>(r0.xxx);
  let v_2 = select(v0.xyz, r0.yzw, (v_1 != vec3<u32>()));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(r0.xyz, cb12_12.tint_symbol_2[4u].yyy, cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r1;
  o1 = r0.xyz.xyzx;
  let v_4 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r2.x = (r1.w + r1.x);
  r2.y = ((-(r1.yyyy)).y + r1.w);
  o2.w = r1.w;
  let v_6 = (r2.xy * vec2<f32>(0.5f));
  o2 = vec4<f32>(v_6.xy, o2.zw);
  let v_7 = -(cb12_12.tint_symbol_2[0u].xyzx);
  let v_8 = (cb1_1.tint_symbol[15u].xyz + v_7.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = fma((-(cb12_12.tint_symbol_2[4u].yyyy)).w, cb12_12.tint_symbol_2[4u].y, r0.w);
  r1.w = dot(r0.xyz, r0.xyz);
  r0.w = (r0.w * r1.w);
  r2.x = dot(r1.xyz, r0.xyz);
  let v_9 = -(r0.wwww);
  r0.w = fma(r2.x, r2.x, v_9.w);
  r0.w = sqrt(abs(r0.wwww).w);
  let v_10 = -(r0.wwww);
  r2.y = (v_10.y + (-(r2.xxxx)).y);
  let v_11 = -(r2.xxxx);
  r0.w = (r0.w + v_11.w);
  r2.x = min(r2.x, 0.0f);
  let v_12 = (r0.xyz * r2.xxx);
  r2 = vec4<f32>(v_12.x, r2.y, v_12.yz);
  let v_13 = (r2.xzw / r1.www);
  r2 = vec4<f32>(v_13.x, r2.y, v_13.yz);
  let v_14 = -(r2.xzwx);
  let v_15 = (r1.xyz + v_14.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r3.y = clamp(((r0.wwww / r1.wwww)).y, 0.0f, 1.0f);
  r3.x = clamp(((r2.yyyy / r1.wwww)).x, 0.0f, 1.0f);
  r0.w = sqrt(r1.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  let v_16 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r3.xy) & bitcast<vec2<u32>>(r1.yy)));
  r1 = vec4<f32>(r1.xy, v_16.xy);
  let v_17 = fma(r0.xyz, r1.www, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(r0.xyz, r1.zzz, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = (r0.xyz / r0.www);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  let v_20 = bitcast<vec3<u32>>(r0.www);
  let v_21 = select(r0.xyz, vec3<f32>(), (v_20 != vec3<u32>()));
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = r1.zw;
  o3 = vec3<f32>(v_22.xy, o3.xyz.z).xyzx;
  let v_23 = -(r3.xyzx);
  let v_24 = (r2.xyz + v_23.xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r1.z = (r0.w * 0.00499999988824129105f);
  let v_25 = fma(r0.xyz, r1.zzz, r3.xyz);
  r0 = vec4<f32>(v_25.xyz, r0.w);
  let v_26 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  let v_27 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r0.y = (r0.x + v_27.y);
  let v_28 = max(r0.yw, vec2<f32>(0.0f, 1.0f));
  let v_29 = r0;
  r0 = vec4<f32>(v_29.x, v_28.x, v_29.z, v_28.y);
  r0.x = (r0.y / r0.x);
  r0.x = (r0.x * r0.z);
  r0.z = (r0.x * cb3_3.tint_symbol_1[52u].z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.xxxx).x)));
  r1.z = (r0.z * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r0.z = (r1.z / r0.z);
  let v_30 = bitcast<u32>(r0.x);
  r0.x = select(1.0f, r0.z, (v_30 != 0u));
  r0.z = (r0.y * cb3_3.tint_symbol_1[51u].w);
  let v_31 = -(cb3_3.tint_symbol_1[52u].xxxx);
  r0.y = (r0.y + v_31.y);
  r0.y = max(r0.y, 0.0f);
  r0.y = (r0.y * cb3_3.tint_symbol_1[51u].x);
  r0.y = (r0.y * 1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.x = (r0.x * r0.z);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * 1.44269502162933349609f);
  r0.x = exp2(r0.x);
  r0.x = min(r0.x, 1.0f);
  let v_32 = ((-(r0.xyxx)).xy + vec2<f32>(1.0f));
  r0 = vec4<f32>(v_32.xy, r0.zw);
  r0.z = fma((-(r0.xxxx)).z, cb3_3.tint_symbol_1[52u].y, 1.0f);
  r0.x = (r0.x * cb3_3.tint_symbol_1[52u].y);
  r0.z = (r0.z * cb3_3.tint_symbol_1[51u].y);
  r0.x = clamp(fma(r0.zzzz, r0.yyyy, r0.xxxx).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (cb12_12.tint_symbol_2[3u].w * cb12_12.tint_symbol_2[14u].x);
  r0.y = (r0.w * r0.y);
  o2.z = (r0.x * r0.y);
  o3.z = 0.0f;
  r0.x = (cb12_12.tint_symbol_2[4u].y * cb12_12.tint_symbol_2[4u].y);
  r0.x = (r1.x / r0.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = (r0.x * r0.x);
  r0.y = ((-(cb12_12.tint_symbol_2[15u].wwww)).y + 1.0f);
  r0.y = fma(r0.y, r0.x, cb12_12.tint_symbol_2[15u].w);
  r0.x = (r0.x / r0.y);
  let v_33 = -(cb12_12.tint_symbol_2[15u].xxyz);
  let v_34 = (cb12_12.tint_symbol_2[3u].xyz + v_33.yzw);
  r0 = vec4<f32>(r0.x, v_34.xyz);
  let v_35 = fma(r0.xxx, r0.yzw, cb12_12.tint_symbol_2[15u].xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  o4 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.xyz) & bitcast<vec3<u32>>(r1.yyy))).xyzx;
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
