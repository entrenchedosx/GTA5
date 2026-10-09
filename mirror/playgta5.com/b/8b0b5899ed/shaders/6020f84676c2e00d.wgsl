enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

struct cb11_struct {
  tint_symbol_4 : array<vec4<f32>, 11u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb11_struct;

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
  let v_4 = (r0.xyz * cb11_11.tint_symbol_4[2u].zzz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = (r0.yyy * cb11_11.tint_symbol_4[4u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r0.xxx, cb11_11.tint_symbol_4[3u].xyz, r1.xyz);
  r0 = vec4<f32>(v_6.xy, r0.z, v_6.z);
  let v_7 = fma(r0.zzz, cb11_11.tint_symbol_4[5u].xyz, r0.xyw);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.xyz + cb11_11.tint_symbol_4[6u].xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz + cb11_11.tint_symbol_4[1u].xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_11 = (r0.xyz + v_10.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = (cb1_1.tint_symbol[15u].yyy * cb11_11.tint_symbol_4[8u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(cb1_1.tint_symbol[15u].xxx, cb11_11.tint_symbol_4[7u].xyz, r2.xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(cb1_1.tint_symbol[15u].zzz, cb11_11.tint_symbol_4[9u].xyz, r2.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = (r2.xyz + cb11_11.tint_symbol_4[10u].xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  let v_16 = (r1.yyy * cb11_11.tint_symbol_4[8u].xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r1.xxx, cb11_11.tint_symbol_4[7u].xyz, r3.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r1.zzz, cb11_11.tint_symbol_4[9u].xyz, r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = (r3.xyz + cb11_11.tint_symbol_4[10u].xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = (cb11_11.tint_symbol_4[1u].yyy * cb11_11.tint_symbol_4[8u].xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = fma(cb11_11.tint_symbol_4[1u].xxx, cb11_11.tint_symbol_4[7u].xyz, r4.xyz);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  let v_22 = fma(cb11_11.tint_symbol_4[1u].zzz, cb11_11.tint_symbol_4[9u].xyz, r4.xyz);
  r4 = vec4<f32>(v_22.xyz, r4.w);
  let v_23 = (r4.xyz + cb11_11.tint_symbol_4[10u].xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = -(r4.xyzx);
  let v_25 = (r2.xyz + v_24.xyz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = dot(r2.xyz, r3.xyz);
  r2.w = dot(r2.xyz, r2.xyz);
  r3.w = (cb11_11.tint_symbol_4[2u].z * cb11_11.tint_symbol_4[2u].z);
  r2.w = fma((-(cb11_11.tint_symbol_4[2u].zzzz)).w, cb11_11.tint_symbol_4[2u].z, r2.w);
  r2.w = (r0.w * r2.w);
  let v_26 = -(r2.wwww);
  r2.w = fma(r1.w, r1.w, v_26.w);
  r2.w = sqrt(abs(r2.wwww).w);
  r4.x = ((-(r1.wwww)).x + r2.w);
  r4.x = (r4.x / r0.w);
  let v_27 = -(r1.wwww);
  r2.w = (v_27.w + (-(r2.wwww)).w);
  r2.w = (r2.w / r0.w);
  r4.y = max(r2.w, r4.x);
  r1.w = min(r1.w, 0.0f);
  let v_28 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_28.xyz, r3.w);
  let v_29 = (r3.xyz / r0.www);
  r3 = vec4<f32>(v_29.xyz, r3.w);
  let v_30 = -(r3.xyzx);
  let v_31 = (r2.xyz + v_30.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = (r0.w / r3.w);
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
  let v_32 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_32.xy, r2.zw);
  let v_33 = (r2.xy / r0.ww);
  r2 = vec4<f32>(r2.xy, v_33.xy);
  let v_34 = fma(r2.zw, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_34.xy, r3.zw);
  r3.z = 1.0f;
  o3.x = dot(r3.xyz, cb12_12.tint_symbol_3[18u].xyz);
  o3.y = dot(r3.xyz, cb12_12.tint_symbol_3[19u].xyz);
  o3.z = dot(r3.xyz, cb12_12.tint_symbol_3[20u].xyz);
  let v_35 = (r1.xyz * r4.yyy);
  r3 = vec4<f32>(v_35.xyz, r3.w);
  r4.z = dot(r1.xyz, r1.xyz);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00000999999974737875f < r4.z)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = sqrt(r4.z);
    let v_36 = -(cb3_3.tint_symbol_2[50u].xxxx);
    r2.z = (r1.w + v_36.z);
    r2.z = max(r2.z, 0.0f);
    r1.w = (r2.z / r1.w);
    r1.w = (r1.w * r1.z);
    r2.w = (r1.w * cb3_3.tint_symbol_2[52u].z);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.wwww).w)));
    r3.w = (r2.w * -1.44269502162933349609f);
    r3.w = exp2(r3.w);
    r3.w = ((-(r3.wwww)).w + 1.0f);
    r2.w = (r3.w / r2.w);
    let v_37 = bitcast<u32>(r1.w);
    r1.w = select(1.0f, r2.w, (v_37 != 0u));
    r2.w = (r2.z * cb3_3.tint_symbol_2[51u].w);
    r1.w = (r1.w * r2.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = (r1.w * 1.44269502162933349609f);
    r1.w = exp2(r1.w);
    r1.w = min(r1.w, 1.0f);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r2.w = (r1.w * cb3_3.tint_symbol_2[52u].y);
    r3.w = inverseSqrt(r4.z);
    let v_38 = (r1.xyz * r3.www);
    r5 = vec4<f32>(v_38.xyz, r5.w);
    let v_39 = dot(r5.xyz, cb3_3.tint_symbol_2[54u].xyz);
    r3.w = clamp(vec4<f32>(v_39, v_39, v_39, v_39).w, 0.0f, 1.0f);
    r3.w = log2(r3.w);
    r3.w = (r3.w * cb3_3.tint_symbol_2[54u].w);
    r3.w = exp2(r3.w);
    let v_40 = dot(r5.xyz, cb3_3.tint_symbol_2[53u].xyz);
    r4.x = clamp(vec4<f32>(v_40, v_40, v_40, v_40).x, 0.0f, 1.0f);
    r4.x = log2(r4.x);
    r4.x = (r4.x * cb3_3.tint_symbol_2[53u].w);
    r4.x = exp2(r4.x);
    r1.w = fma((-(r1.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
    r1.w = (r1.w * cb3_3.tint_symbol_2[51u].y);
    let v_41 = -(cb3_3.tint_symbol_2[52u].xxxx);
    r4.w = (r2.z + v_41.w);
    r4.w = max(r4.w, 0.0f);
    r4.w = (r4.w * cb3_3.tint_symbol_2[51u].x);
    r4.w = (r4.w * 1.44269502162933349609f);
    r4.w = exp2(r4.w);
    r4.w = ((-(r4.wwww)).w + 1.0f);
    r2.w = clamp(fma(r1.wwww, r4.wwww, r2.wwww).w, 0.0f, 1.0f);
    let v_42 = -(cb3_3.tint_symbol_2[51u].zzzz);
    r2.z = (r2.z * v_42.z);
    r2.z = (r2.z * 1.44269502162933349609f);
    r2.z = exp2(r2.z);
    r2.z = ((-(r2.zzzz)).z + 1.0f);
    let v_43 = ((-(cb3_3.tint_symbol_2[56u].xyzx)).xyz + cb3_3.tint_symbol_2[58u].xyz);
    r5 = vec4<f32>(v_43.xyz, r5.w);
    let v_44 = fma(r3.www, r5.xyz, cb3_3.tint_symbol_2[56u].xyz);
    r5 = vec4<f32>(v_44.xyz, r5.w);
    let v_45 = ((-(r5.xyzx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
    r6 = vec4<f32>(v_45.xyz, r6.w);
    let v_46 = fma(r4.xxx, r6.xyz, r5.xyz);
    r5 = vec4<f32>(v_46.xyz, r5.w);
    let v_47 = -(cb3_3.tint_symbol_2[57u].xyzx);
    let v_48 = (r5.xyz + v_47.xyz);
    r5 = vec4<f32>(v_48.xyz, r5.w);
    let v_49 = fma(r2.zzz, r5.xyz, cb3_3.tint_symbol_2[57u].xyz);
    r5 = vec4<f32>(v_49.xyz, r5.w);
    r6.x = ((-(r5.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
    r6.y = ((-(r5.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
    r6.z = ((-(r5.zzzz)).z + cb3_3.tint_symbol_2[57u].w);
    let v_50 = fma(r1.www, r6.xyz, r5.xyz);
    r5 = vec4<f32>(v_50.xyz, r5.w);
    r1.w = clamp(((r2.wwww * cb11_11.tint_symbol_4[2u].wwww)).w, 0.0f, 1.0f);
    let v_51 = -(cb11_11.tint_symbol_4[0u].xyzx);
    let v_52 = (r5.xyz + v_51.xyz);
    r5 = vec4<f32>(v_52.xyz, r5.w);
    o4 = fma(r1.www, r5.xyz, cb11_11.tint_symbol_4[0u].xyz).xyzx;
  } else {
    o4 = cb11_11.tint_symbol_4[0u].xyz.xyzx;
  }
  o2.w = dot(r3.xyz, r3.xyz);
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o2.x = 1.0f;
  let v_53 = r4;
  let v_54 = o2;
  o2 = vec4<f32>(v_54.x, v_53.yz, v_54.w);
  o5 = r0;
  let v_55 = &(x0[0u]);
  *(v_55) = vec4<f32>((*(v_55)).x, vec3<f32>());
  o0 = r1.xyz.xyzx;
  o1.z = r0.w;
  let v_56 = r2.xy;
  o1 = vec3<f32>(v_56.xy, o1.xyz.z).xyzx;
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
