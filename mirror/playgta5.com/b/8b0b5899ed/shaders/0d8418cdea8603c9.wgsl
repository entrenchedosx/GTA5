diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb5_struct {
  tint_symbol_3 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v5 : vec4<f32>) {
  if ((bitcast<u32>(cb7_7.tint_symbol_2[0u].x) != 0u)) {
    let v = (v0 + cb12_12.tint_symbol_3[1u].xyz);
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
    r0.w = (r0.w / cb12_12.tint_symbol_3[0u].x);
    r0.w = min(r0.w, 1.0f);
    let v_23 = (r0.www * r0.xyz);
    r0 = vec4<f32>(v_23.xyz, r0.w);
    let v_24 = (r0.xyz * cb12_12.tint_symbol_3[0u].yyy);
    r0 = vec4<f32>(v_24.xyz, r0.w);
    let v_25 = fma(r0.xyz, v5.yyy, v0);
    r0 = vec4<f32>(v_25.xyz, r0.w);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[2u].w)));
    let v_26 = -(cb12_12.tint_symbol_3[1u].xxyz);
    let v_27 = (v_26.yzw + cb12_12.tint_symbol_3[2u].xyz);
    r1 = vec4<f32>(r1.x, v_27.xyz);
    let v_28 = -(r1.yzwy);
    let v_29 = (r0.xyz + v_28.xyz);
    r2 = vec4<f32>(v_29.xyz, r2.w);
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = sqrt(r1.y);
    r1.w = (cb12_12.tint_symbol_3[2u].w * 1.10000002384185791016f);
    r2.x = clamp(((r1.yyyy / r1.wwww)).x, 0.0f, 1.0f);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < 1.0f)));
    r1.y = (r2.y / r1.y);
    r2.x = fma(r2.x, 0.10000000149011611938f, 0.89999997615814208984f);
    r1.y = (r1.y * r2.x);
    r1.y = fma(r1.y, r1.w, r1.z);
    let v_30 = bitcast<u32>(r2.z);
    let v_31 = r1.y;
    r1.y = select(r0.y, v_31, (v_30 != 0u));
    let v_32 = bitcast<u32>(r1.x);
    let v_33 = r1.y;
    r0.w = select(r0.y, v_33, (v_32 != 0u));
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[3u].w)));
    let v_34 = (v_26.yzw + cb12_12.tint_symbol_3[3u].xyz);
    r1 = vec4<f32>(r1.x, v_34.xyz);
    let v_35 = -(r1.yzwy);
    let v_36 = (r0.xwz + v_35.xyz);
    r2 = vec4<f32>(v_36.xyz, r2.w);
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = sqrt(r1.y);
    r1.w = (cb12_12.tint_symbol_3[3u].w * 1.10000002384185791016f);
    r2.x = clamp(((r1.yyyy / r1.wwww)).x, 0.0f, 1.0f);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < 1.0f)));
    r1.y = (r2.y / r1.y);
    r2.x = fma(r2.x, 0.10000000149011611938f, 0.89999997615814208984f);
    r1.y = (r1.y * r2.x);
    r1.y = fma(r1.y, r1.w, r1.z);
    let v_37 = bitcast<u32>(r2.z);
    let v_38 = r1.y;
    r1.y = select(r0.w, v_38, (v_37 != 0u));
    let v_39 = bitcast<u32>(r1.x);
    let v_40 = r1.y;
    r0.y = select(r0.w, v_40, (v_39 != 0u));
  } else {
    r0 = vec4<f32>(v0.xyz, r0.w);
  }
  r1.x = (v2.z * 255.001953125f);
  let v_41 = r1.x;
  let v_42 = max(v_41, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_42), 2147483647i, (v_42 >= 2147483648.0f)), 0i, !((v_41 == v_41))));
  r1.x = bitcast<f32>((bitcast<i32>(r1.x) * 3i));
  r0.w = 1.0f;
  r1.y = dot(cb4_4.tint_symbol[bitcast<i32>(r1.x)], r0);
  r1.z = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], r0);
  r0.x = dot(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], r0);
  r2 = (r1.zzzz * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r1.yyyy, cb1_1.tint_symbol_1[8u], r2);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol_1[11u]);
  if ((bitcast<u32>(cb12_12.tint_symbol_3[4u].x) != 0u)) {
    let v_43 = (v0 + cb12_12.tint_symbol_3[1u].xyz);
    r0 = vec4<f32>(v_43.xyz, r0.w);
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = sqrt(r0.w);
    let v_44 = (r0.xyz / r0.www);
    r0 = vec4<f32>(v_44.xyz, r0.w);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r0.z = (r0.z * 0.5f);
    r1.x = dot(r0.xy, r0.xy);
    r1.x = max(r1.x, 0.00000000999999993923f);
    r1.x = sqrt(r1.x);
    let v_45 = (r0.xy / r1.xx);
    r0 = vec4<f32>(v_45.xy, r0.zw);
    let v_46 = (r0.zz * r0.xy);
    r0 = vec4<f32>(v_46.xy, r0.zw);
    let v_47 = fma(r0.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r0 = vec4<f32>(v_47.xy, r0.zw);
    let v_48 = (r0.xy * vec2<f32>(126.73267364501953125f));
    r1 = vec4<f32>(v_48.xy, r1.zw);
    let v_49 = -(r1.xxxy);
    let v_50 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r1.xy >= v_49.zw)));
    r1 = vec4<f32>(r1.xy, v_50.xy);
    let v_51 = fract(abs(r1.xyxx).xy);
    r1 = vec4<f32>(v_51.xy, r1.zw);
    let v_52 = -(r1.xyxx);
    let v_53 = bitcast<vec2<u32>>(r1.zw);
    let v_54 = select(v_52.xy, r1.xy, (v_53 != vec2<u32>()));
    r1 = vec4<f32>(v_54.xy, r1.zw);
    r2 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
    let v_55 = fma((-(r1.xyxx)).xy, vec2<f32>(0.00789062492549419403f), r0.xy);
    r0 = vec4<f32>(v_55.xy, r0.zw);
    r3 = (r0.xyxy + vec4<f32>(0.00789062492549419403f, 0.0f, 0.0f, 0.00789062492549419403f));
    r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
    let v_56 = (r0.xy + vec2<f32>(0.00789062492549419403f));
    r0 = vec4<f32>(v_56.xy, r0.zw);
    r5 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
    let v_57 = ((-(r1.xyxx)).xy + vec2<f32>(1.0f));
    r0 = vec4<f32>(v_57.xy, r0.zw);
    r2 = (r0.xxxx * r2);
    r4 = (r1.xxxx * r4);
    r4 = (r0.yyyy * r4);
    r2 = fma(r2, r0.yyyy, r4);
    r3 = (r0.xxxx * r3);
    r2 = fma(r3, r1.yyyy, r2);
    r3 = (r1.xxxx * r5);
    r1 = fma(r3, r1.yyyy, r2);
    r0.x = (r0.w / cb12_12.tint_symbol_3[0u].x);
    r0.x = min(r0.x, 1.0f);
    r0 = (r0.xxxx * r1);
    r0 = fma(r0, vec4<f32>(0.5f), vec4<f32>(0.5f));
  } else {
    r0 = v5;
  }
  r1.x = v5.y;
  r1.w = 1.0f;
  let v_58 = bitcast<vec4<u32>>(cb12_12.tint_symbol_3[4u].yyyy);
  let v_59 = r1.xxxw;
  o2 = select(r0, v_59, (v_58 != vec4<u32>()));
  o1 = v3.xyxy;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v2, v3, v5);
  return tint_symbol_4(o0, o1, o2);
}
