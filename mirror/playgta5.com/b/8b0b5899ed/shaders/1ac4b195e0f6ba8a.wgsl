diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec2<f32>) {
  if ((bitcast<u32>(cb7_7.tint_symbol_1[0u].x) != 0u)) {
    let v = (v0 + cb12_12.tint_symbol_2[1u].xyz);
    r0 = vec4<f32>(v.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = sqrt(r0.w);
    let v_1 = (r0.xyz / r0.www);
    r0 = vec4<f32>(v_1.xyz, r0.w);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r0.z = (r0.z * 0.5f);
    r1.x = dot(r0.xy, r0.xy);
    r1.x = max(r1.x, 0.00000000999999993923f);
    r1.x = sqrt(r1.x);
    let v_2 = (r0.xy / r1.xx);
    r0 = vec4<f32>(v_2.xy, r0.zw);
    let v_3 = (r0.zz * r0.xy);
    r0 = vec4<f32>(v_3.xy, r0.zw);
    let v_4 = fma(r0.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r0 = vec4<f32>(v_4.xy, r0.zw);
    let v_5 = (r0.xy * vec2<f32>(126.73267364501953125f));
    r1 = vec4<f32>(v_5.xy, r1.zw);
    let v_6 = -(r1.xxxy);
    let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.xy >= v_6.zw)));
    r1 = vec4<f32>(r1.xy, v_7.xy);
    let v_8 = fract(abs(r1.xyxx).xy);
    r1 = vec4<f32>(v_8.xy, r1.zw);
    let v_9 = -(r1.xyxx);
    let v_10 = bitcast<vec2<u32>>(r1.zw);
    let v_11 = select(v_9.xy, r1.xy, (v_10 != vec2<u32>()));
    r1 = vec4<f32>(v_11.xy, r1.zw);
    r2 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
    let v_12 = fma((-(r1.xyxx)).xy, vec2<f32>(0.00789062492549419403f), r0.xy);
    r0 = vec4<f32>(v_12.xy, r0.zw);
    r3 = (r0.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
    let v_13 = (r0.xy + vec2<f32>(0.00789062492549419403f));
    r0 = vec4<f32>(v_13.xy, r0.zw);
    r5 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
    let v_14 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
    r0 = vec4<f32>(v_14.xy, r0.zw);
    let v_15 = (r0.xxx * r2.xyz);
    r2 = vec4<f32>(v_15.xyz, r2.w);
    let v_16 = (r1.xxx * r4.xyz);
    r4 = vec4<f32>(v_16.xyz, r4.w);
    let v_17 = (r0.yyy * r4.xyz);
    r4 = vec4<f32>(v_17.xyz, r4.w);
    let v_18 = fma(r2.xyz, r0.yyy, r4.xyz);
    r2 = vec4<f32>(v_18.xyz, r2.w);
    let v_19 = (r0.xxx * r3.xyz);
    r0 = vec4<f32>(v_19.xyz, r0.w);
    let v_20 = fma(r0.xyz, r1.yyy, r2.xyz);
    r0 = vec4<f32>(v_20.xyz, r0.w);
    let v_21 = (r1.xxx * r5.xyz);
    r1 = vec4<f32>(v_21.x, r1.y, v_21.yz);
    let v_22 = fma(r1.xzw, r1.yyy, r0.xyz);
    r0 = vec4<f32>(v_22.xyz, r0.w);
    r0.w = (r0.w / cb12_12.tint_symbol_2[0u].x);
    r0.w = min(r0.w, 1.0f);
    let v_23 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_23.xyz, r0.w);
    let v_24 = (r0.xyz * cb12_12.tint_symbol_2[0u].yyy);
    r0 = vec4<f32>(v_24.xyz, r0.w);
    let v_25 = fma(r0.xyz, v1.yyy, v0);
    r0 = vec4<f32>(v_25.xyz, r0.w);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_2[2u].w)));
    let v_26 = ((-(cb12_12.tint_symbol_2[1u].xxyz)).yzw + cb12_12.tint_symbol_2[2u].xyz);
    r1 = vec4<f32>(r1.x, v_26.xyz);
    let v_27 = -(r1.yzwy);
    let v_28 = (r0.xyz + v_27.xyz);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = sqrt(r1.y);
    r1.w = (cb12_12.tint_symbol_2[2u].w * 1.10000002384185791016f);
    r2.x = clamp(((r1.yyyy / r1.wwww)).x, 0.0f, 1.0f);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < 1.0f)));
    r1.y = (r2.y / r1.y);
    r2.x = fma(r2.x, 0.10000000149011611938f, 0.89999997615814208984f);
    r1.y = (r1.y * r2.x);
    r1.y = fma(r1.y, r1.w, r1.z);
    let v_29 = bitcast<u32>(r2.z);
    let v_30 = r1.y;
    r1.y = select(r0.y, v_30, (v_29 != 0u));
    let v_31 = bitcast<u32>(r1.x);
    let v_32 = r1.y;
    r0.w = select(r0.y, v_32, (v_31 != 0u));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_2[3u].w)));
    let v_33 = ((-(cb12_12.tint_symbol_2[1u].xyzx)).xyz + cb12_12.tint_symbol_2[3u].xyz);
    r1 = vec4<f32>(v_33.xyz, r1.w);
    let v_34 = -(r1.xxyz);
    let v_35 = (r0.xwz + v_34.xzw);
    r1 = vec4<f32>(v_35.x, r1.y, v_35.yz);
    r1.x = dot(r1.xzw, r1.xzw);
    r1.x = sqrt(r1.x);
    r1.w = (cb12_12.tint_symbol_2[3u].w * 1.10000002384185791016f);
    r2.x = clamp(((r1.xxxx / r1.wwww)).x, 0.0f, 1.0f);
    r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.x < 1.0f)));
    r1.x = (r1.z / r1.x);
    r1.z = fma(r2.x, 0.10000000149011611938f, 0.89999997615814208984f);
    r1.x = (r1.z * r1.x);
    r1.x = fma(r1.x, r1.w, r1.y);
    let v_36 = bitcast<u32>(r2.y);
    let v_37 = r1.x;
    r1.x = select(r0.w, v_37, (v_36 != 0u));
    let v_38 = bitcast<u32>(r0.y);
    let v_39 = r1.x;
    r0.y = select(r0.w, v_39, (v_38 != 0u));
  } else {
    r0 = vec4<f32>(v0.xyz, r0.w);
  }
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  if ((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) != 0u)) {
    let v_40 = (v0 + cb12_12.tint_symbol_2[1u].xyz);
    r0 = vec4<f32>(v_40.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = sqrt(r0.w);
    let v_41 = (r0.xyz / r0.www);
    r0 = vec4<f32>(v_41.xyz, r0.w);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r0.z = (r0.z * 0.5f);
    r1.x = dot(r0.xy, r0.xy);
    r1.x = max(r1.x, 0.00000000999999993923f);
    r1.x = sqrt(r1.x);
    let v_42 = (r0.xy / r1.xx);
    r0 = vec4<f32>(v_42.xy, r0.zw);
    let v_43 = (r0.zz * r0.xy);
    r0 = vec4<f32>(v_43.xy, r0.zw);
    let v_44 = fma(r0.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r0 = vec4<f32>(v_44.xy, r0.zw);
    let v_45 = (r0.xy * vec2<f32>(126.73267364501953125f));
    r1 = vec4<f32>(v_45.xy, r1.zw);
    let v_46 = -(r1.xxxy);
    let v_47 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.xy >= v_46.zw)));
    r1 = vec4<f32>(r1.xy, v_47.xy);
    let v_48 = fract(abs(r1.xyxx).xy);
    r1 = vec4<f32>(v_48.xy, r1.zw);
    let v_49 = -(r1.xyxx);
    let v_50 = bitcast<vec2<u32>>(r1.zw);
    let v_51 = select(v_49.xy, r1.xy, (v_50 != vec2<u32>()));
    r1 = vec4<f32>(v_51.xy, r1.zw);
    r2 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
    let v_52 = fma((-(r1.xyxx)).xy, vec2<f32>(0.00789062492549419403f), r0.xy);
    r0 = vec4<f32>(v_52.xy, r0.zw);
    r3 = (r0.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
    let v_53 = (r0.xy + vec2<f32>(0.00789062492549419403f));
    r0 = vec4<f32>(v_53.xy, r0.zw);
    r5 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
    let v_54 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
    r0 = vec4<f32>(v_54.xy, r0.zw);
    r2 = (r0.xxxx * r2);
    r4 = (r1.xxxx * r4);
    r4 = (r0.yyyy * r4);
    r2 = fma(r2, r0.yyyy, r4);
    r3 = (r0.xxxx * r3);
    r2 = fma(r3, r1.yyyy, r2);
    r3 = (r1.xxxx * r5);
    r1 = fma(r3, r1.yyyy, r2);
    r0.x = (r0.w / cb12_12.tint_symbol_2[0u].x);
    r0.x = min(r0.x, 1.0f);
    r0 = (r0.xxxx * r1);
    r0 = fma(r0, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r0 = v1;
  }
  r1.x = v1.y;
  r1.w = 1.0f;
  let v_55 = bitcast<vec4<u32>>(cb12_12.tint_symbol_2[4u].yyyy);
  let v_56 = r1.xxxw;
  o2 = select(r0, v_56, (v_55 != vec4<u32>()));
  o1 = vec4<f32>(v2.xy, o1.zw);
  o1 = vec4<f32>(o1.xy, v3.xy);
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_3(o0, o1, o2);
}
