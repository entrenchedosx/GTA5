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

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb4_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb1_struct;

struct cb4_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb4_struct_1;

struct cb6_struct {
  tint_symbol_4 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb6_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
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
    let v_24 = fma(r0.xyz, cb12_12.tint_symbol_3[0u].yyy, v0);
    r0 = vec4<f32>(v_24.xyz, r0.w);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[2u].w)));
    let v_25 = -(cb12_12.tint_symbol_3[1u].xxyz);
    let v_26 = (v_25.yzw + cb12_12.tint_symbol_3[2u].xyz);
    r1 = vec4<f32>(r1.x, v_26.xyz);
    let v_27 = -(r1.yzwy);
    let v_28 = (r0.xyz + v_27.xyz);
    r2 = vec4<f32>(v_28.xyz, r2.w);
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = sqrt(r1.y);
    r1.w = (cb12_12.tint_symbol_3[2u].w * 1.10000002384185791016f);
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
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb12_12.tint_symbol_3[3u].w)));
    let v_33 = (v_25.yzw + cb12_12.tint_symbol_3[3u].xyz);
    r1 = vec4<f32>(r1.x, v_33.xyz);
    let v_34 = -(r1.yzwy);
    let v_35 = (r0.xwz + v_34.xyz);
    r2 = vec4<f32>(v_35.xyz, r2.w);
    r1.y = dot(r2.xyz, r2.xyz);
    r1.y = sqrt(r1.y);
    r1.w = (cb12_12.tint_symbol_3[3u].w * 1.10000002384185791016f);
    r2.x = clamp(((r1.yyyy / r1.wwww)).x, 0.0f, 1.0f);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < 1.0f)));
    r1.y = (r2.y / r1.y);
    r2.x = fma(r2.x, 0.10000000149011611938f, 0.89999997615814208984f);
    r1.y = (r1.y * r2.x);
    r1.y = fma(r1.y, r1.w, r1.z);
    let v_36 = bitcast<u32>(r2.z);
    let v_37 = r1.y;
    r1.y = select(r0.w, v_37, (v_36 != 0u));
    let v_38 = bitcast<u32>(r1.x);
    let v_39 = r1.y;
    r0.y = select(r0.w, v_39, (v_38 != 0u));
  } else {
    r0 = vec4<f32>(v0.xyz, r0.w);
  }
  r1 = (v3 * vec4<f32>(255.001953125f));
  let v_40 = r1;
  let v_41 = max(v_40, vec4<f32>(-2147483648.0f));
  r1 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_41), vec4<i32>(2147483647i), (v_41 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_40 == v_40))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r1) * vec4<i32>(3i)));
  r2 = (v2.yyyy * cb4_4.tint_symbol[bitcast<i32>(r1.y)]);
  r3 = (v2.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 1i))]);
  r4 = (v2.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 2i))]);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.x)], v2.xxxx, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], v2.xxxx, r3);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], v2.xxxx, r4);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.z)], v2.zzzz, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 1i))], v2.zzzz, r3);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 2i))], v2.zzzz, r4);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.w)], v2.wwww, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 1i))], v2.wwww, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 2i))], v2.wwww, r4);
  r0.w = 1.0f;
  r2.x = dot(r2, r0);
  r2.y = dot(r3, r0);
  r0.x = dot(r1, r0);
  let v_42 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_42.xyz);
  let v_43 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_43.xyz);
  let v_44 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
  r0 = vec4<f32>(v_44.xyz, r0.w);
  let v_45 = (r0.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_45.xyz, r0.w);
  let v_46 = -(cb6_6.tint_symbol_4[0u].xyzx);
  let v_47 = (r0.xyz + v_46.xyz);
  r0 = vec4<f32>(v_47.xyz, r0.w);
  r1 = (r0.yyyy * cb6_6.tint_symbol_4[3u]);
  r1 = fma(r0.xxxx, cb6_6.tint_symbol_4[2u], r1);
  r1 = fma(r0.zzzz, cb6_6.tint_symbol_4[4u], r1);
  o0 = (r1 + cb6_6.tint_symbol_4[5u]);
  o1 = r0.xyz.xyzx;
}

struct tint_symbol_5 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v2, v3);
  return tint_symbol_5(o0, o1);
}
