enable clip_distances;
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

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

struct cb21_struct {
  tint_symbol_3 : array<vec4<f32>, 21u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb3_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>) {
  r0.x = dot(v0.xyz, v0.xyz);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = inverseSqrt(r0.x);
  let v_1 = (r0.xxx * v0.xyz);
  r0 = vec4<f32>(v_1.x, r0.y, v_1.yz);
  let v_2 = bitcast<vec3<u32>>(r0.yyy);
  let v_3 = select(v0.xyz, r0.xzw, (v_2 != vec3<u32>()));
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(r0.xyz, cb11_11.tint_symbol_4[2u].zzz, cb11_11.tint_symbol_4[1u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_6 = (r0.xyz + v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = -(cb11_11.tint_symbol_4[1u].xyzx);
  let v_8 = (cb1_1.tint_symbol[15u].xyz + v_7.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r3.w = dot(r1.xyz, r1.xyz);
  r0.w = dot(r2.xyz, r1.xyz);
  r1.w = dot(r2.xyz, r2.xyz);
  r2.w = (cb11_11.tint_symbol_4[2u].z * cb11_11.tint_symbol_4[2u].z);
  r1.w = fma((-(cb11_11.tint_symbol_4[2u].zzzz)).w, cb11_11.tint_symbol_4[2u].z, r1.w);
  r1.w = (r1.w * r3.w);
  let v_9 = -(r1.wwww);
  r1.w = fma(r0.w, r0.w, v_9.w);
  r1.w = sqrt(abs(r1.wwww).w);
  r3.y = ((-(r0.wwww)).y + r1.w);
  r3.y = (r3.y / r3.w);
  let v_10 = -(r0.wwww);
  r1.w = (v_10.w + (-(r1.wwww)).w);
  r1.w = (r1.w / r3.w);
  r3.x = clamp(min(r1.wwww, r3.yyyy).x, 0.0f, 1.0f);
  r0.w = min(r0.w, 0.0f);
  let v_11 = (r0.www * r1.xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = (r4.xyz / r3.www);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = -(r4.xyzx);
  let v_14 = (r2.xyz + v_13.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = (r0.w / r2.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = (r0.w * r0.w);
  r0.w = min(r0.w, 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb11_11.tint_symbol_4[2u].y);
  o3.w = exp2(r0.w);
  r2 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r2 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r2);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r2);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r0.z = max(r0.z, 0.0f);
  r2.x = (r0.w + r0.x);
  r2.y = ((-(r0.yyyy)).y + r0.w);
  let v_15 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = (r2.xy / r0.ww);
  r2 = vec4<f32>(r2.xy, v_16.xy);
  let v_17 = fma(r2.zw, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r4 = vec4<f32>(v_17.xy, r4.zw);
  r4.z = 1.0f;
  o3.x = dot(r4.xyz, cb12_12.tint_symbol_3[18u].xyz);
  o3.y = dot(r4.xyz, cb12_12.tint_symbol_3[19u].xyz);
  o3.z = dot(r4.xyz, cb12_12.tint_symbol_3[20u].xyz);
  let v_18 = (r1.xyz * r3.xxx);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r3.z = dot(r4.xyz, r4.xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00000999999974737875f < r3.z)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = sqrt(r3.z);
    let v_19 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.z = (r1.w + v_19.z);
    r2.z = max(r2.z, 0.0f);
    r1.w = (r2.z / r1.w);
    r1.w = (r1.w * r4.z);
    r2.w = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.y = (r2.w * -1.44269502162933349609f);
    r3.y = exp2(r3.y);
    r3.y = ((-(r3.yyyy)).y + 1.0f);
    r2.w = (r3.y / r2.w);
    let v_20 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.w, (v_20 != 0u));
    r2.w = (r2.z * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.w = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r3.y = inverseSqrt(r3.z);
    let v_21 = (r3.yyy * r4.xyz);
    r4 = vec4<f32>(v_21.xyz, r4.w);
    let v_22 = dot(r4.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r3.y = clamp(vec4<f32>(v_22, v_22, v_22, v_22).y, 0.0f, 1.0f);
    r3.y = log2(r3.y);
    r3.y = (r3.y * cb3_3.tint_symbol_2[54u].w);
    r3.y = exp2(r3.y);
    let v_23 = dot(r4.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r4.x = clamp(vec4<f32>(v_23, v_23, v_23, v_23).x, 0.0f, 1.0f);
    r4.x = log2(r4.x);
    r4.x = (r4.x * cb3_3.tint_symbol_2[53u].w);
    r4.x = exp2(r4.x);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_24 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r4.y = (r2.z + v_24.y);
    r4.y = max(r4.y, 0.0f);
    r4.y = (r4.y * cb3_3.tint_symbol_2[51u].x);
    r4.y = (r4.y * 1.44269502162933349609f);
    r4.y = exp2(r4.y);
    r4.y = ((-(r4.yyyy)).y + 1.0f);
    r2.w = clamp(fma(r1.wwww, r4.yyyy, r2.wwww).w, 0.0f, 1.0f);
    let v_25 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.z = (r2.z * v_25.z);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    let v_26 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).yzw + cb3_3.tint_symbol_2[58u].xyz);
    r4 = vec4<f32>(r4.x, v_26.xyz);
    let v_27 = fma(r3.yyy, r4.yzw, cb3_3.tint_symbol_2[56u].xyz);
    r4 = vec4<f32>(r4.x, v_27.xyz);
    let v_28 = ((-(r4.yzwy)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r5 = vec4<f32>(v_28.xyz, r5.w);
    let v_29 = fma(r4.xxx, r5.xyz, r4.yzw);
    r4 = vec4<f32>(v_29.xyz, r4.w);
    let v_30 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_31 = (r4.xyz + v_30.xyz);
    r4 = vec4<f32>(v_31.xyz, r4.w);
    let v_32 = fma(r2.zzz, r4.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r4 = vec4<f32>(v_32.xyz, r4.w);
    r5.x = ((-(r4.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
    r5.y = ((-(r4.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
    r5.z = ((-(r4.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
    let v_33 = fma(r1.www, r5.xyz, r4.xyz);
    r4 = vec4<f32>(v_33.xyz, r4.w);
    r1.w = clamp(((r2.wwww * cb11_11.tint_symbol_4[2u].wwww)).w, 0.0f, 1.0f);
    let v_34 = -(cb11_11.tint_symbol_4[0u].xyzx);
    let v_35 = (r4.xyz + v_34.xyz);
    r4 = vec4<f32>(v_35.xyz, r4.w);
    o4 = fma(r1.www, r4.xyz, cb11_11.tint_symbol_4[0u].xyz).xyzx;
  } else {
    o4 = cb11_11.tint_symbol_4[0u].xyz.xyzx;
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o2.y = 1.0f;
  let v_36 = r3;
  o2 = vec4<f32>(v_36.x, o2.y, v_36.zw);
  o5 = r0;
  let v_37 = &(x0[0u]);
  *(v_37) = vec4<f32>((*(v_37)).x, vec3<f32>());
  o0 = r1.xyz.xyzx;
  o1.z = r0.w;
  let v_38 = r2.xy;
  o1 = vec3<f32>(v_38.xy, o1.xyz.z).xyzx;
  o6[0u] = x0[0u].x;
  o6[1u] = x0[0u].y;
  o6[2u] = x0[0u].z;
  o6[3u] = x0[0u].w;
  v = vec4<f32>(o6[0u], o6[1u], o6[2u], o6[3u]);
}

struct tint_symbol_6 {
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
  @builtin(position)
  o5 : vec4<f32>,
  @builtin(clip_distances)
  o6 : array<f32, 4u>,
  @location(15u)
  tint_symbol_5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_6 {
  main_inner(v0);
  return tint_symbol_6(o0, o1, o2, o3, o4, o5, o6, v);
}
