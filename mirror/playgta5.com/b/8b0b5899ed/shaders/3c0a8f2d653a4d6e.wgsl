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
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v0.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = (cb12_12.tint_symbol_2[5u].x * 0.5f);
  let v_1 = -(r0.wwww);
  r1.x = fma(r0.x, cb12_12.tint_symbol_2[4u].y, v_1.x);
  let v_2 = (r0.xyz * cb12_12.tint_symbol_2[4u].yyy);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(cb12_12.tint_symbol_2[1u].xyz, r0.www, cb12_12.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  let v_4 = bitcast<u32>(r0.w);
  let v_5 = r1.x;
  r0.x = select(r0.x, v_5, (v_4 != 0u));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r1.x = fma(cb12_12.tint_symbol_2[5u].x, 0.5f, r0.x);
  let v_6 = bitcast<u32>(r0.w);
  let v_7 = r1.x;
  r0.x = select(r0.x, v_7, (v_6 != 0u));
  let v_8 = (cb12_12.tint_symbol_2[1u].zxy * cb12_12.tint_symbol_2[2u].yzx);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = -(r2.xyzx);
  let v_10 = fma(cb12_12.tint_symbol_2[1u].yzx, cb12_12.tint_symbol_2[2u].zxy, v_9.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = (r2.zxy * cb12_12.tint_symbol_2[1u].yzx);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = -(r3.xyzx);
  let v_14 = fma(r2.yzx, cb12_12.tint_symbol_2[1u].zxy, v_13.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r0.xxx, cb12_12.tint_symbol_2[1u].xyz, r3.xyz);
  r0 = vec4<f32>(v_16.xy, r0.z, v_16.z);
  let v_17 = fma(r0.zzz, r2.xyz, r0.xyw);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r1.yzw + r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r1;
  o1 = r0.xyz.xyzx;
  let v_19 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_20 = (r0.xyz + v_19.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r2.x = (r1.w + r1.x);
  r2.y = ((-(r1.yyyy)).y + r1.w);
  o2.w = r1.w;
  let v_21 = (r2.xy * vec2<f32>(0.5f));
  o2 = vec4<f32>(v_21.xy, o2.zw);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  let v_22 = (r0.xyz / r0.www);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  let v_23 = bitcast<vec3<u32>>(r1.www);
  let v_24 = select(r1.xyz, vec3<f32>(), (v_23 != vec3<u32>()));
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.ww) & vec2<u32>(0u, 897988541u)));
  r2 = vec4<f32>(v_25.xy, r2.zw);
  o4 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.www) & bitcast<vec3<u32>>(cb12_12.tint_symbol_2[3u].xyz))).xyzx;
  let v_26 = (r0.xyz * r2.yyy);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  let v_27 = fma(r0.xyz, r2.yyy, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  let v_28 = r2.xy;
  o3 = vec3<f32>(v_28.xy, o3.xyz.z).xyzx;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r1.w = (r0.w * 0.00499999988824129105f);
  let v_29 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_29.xyz, r2.w);
  let v_30 = fma((-(r1.xyzx)).xyz, r1.www, r0.xyz);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  let v_31 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r0.y = (r0.x + v_31.y);
  let v_32 = max(r0.yw, vec2<f32>(0.0f, 1.0f));
  let v_33 = r0;
  r0 = vec4<f32>(v_33.x, v_32.x, v_33.z, v_32.y);
  r0.x = (r0.y / r0.x);
  r0.x = (r0.x * r2.z);
  r0.z = (r0.x * cb3_3.tint_symbol_1[52u].z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.xxxx).x)));
  r2.x = (r0.z * -1.44269502162933349609f);
  r2.x = exp2(r2.x);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r0.z = (r2.x / r0.z);
  let v_34 = bitcast<u32>(r0.x);
  r0.x = select(1.0f, r0.z, (v_34 != 0u));
  r0.z = (r0.y * cb3_3.tint_symbol_1[51u].w);
  let v_35 = -(cb3_3.tint_symbol_1[52u].xxxx);
  r0.y = (r0.y + v_35.y);
  r0.y = max(r0.y, 0.0f);
  r0.y = (r0.y * cb3_3.tint_symbol_1[51u].x);
  r0.y = (r0.y * 1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.x = (r0.x * r0.z);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * 1.44269502162933349609f);
  r0.x = exp2(r0.x);
  r0.x = min(r0.x, 1.0f);
  let v_36 = ((-(r0.xyxx)).xy + vec2<f32>(1.0f));
  r0 = vec4<f32>(v_36.xy, r0.zw);
  r0.z = fma((-(r0.xxxx)).z, cb3_3.tint_symbol_1[52u].y, 1.0f);
  r0.x = (r0.x * cb3_3.tint_symbol_1[52u].y);
  r0.z = (r0.z * cb3_3.tint_symbol_1[51u].y);
  r0.x = clamp(fma(r0.zzzz, r0.yyyy, r0.xxxx).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.y = (cb12_12.tint_symbol_2[3u].w * cb12_12.tint_symbol_2[14u].x);
  r0.y = (r0.w * r0.y);
  o2.z = (r0.x * r0.y);
  r1.w = 1.0f;
  let v_37 = cb1_1.tint_symbol[14u];
  r0 = vec4<f32>(v_37.xyz, r0.w);
  r0.w = cb1_1.tint_symbol[7u].z;
  r0.x = dot(r1, r0);
  r0.y = (cb12_12.tint_symbol_2[17u].z / cb12_12.tint_symbol_2[17u].w);
  let v_38 = -(r0.yyyy);
  o3.z = (v_38.z + (-(r0.xxxx)).z);
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
