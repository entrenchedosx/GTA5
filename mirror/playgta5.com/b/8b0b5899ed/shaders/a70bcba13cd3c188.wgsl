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

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct_1;

var<private> icb0 : array<vec4<f32>, 6u> = array<vec4<f32>, 6u>(vec4<f32>(0.40000000596046447754f, 0.0f, 1.0f, 1.0f), vec4<f32>(0.20000000298023223877f, 0.40000000596046447754f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.60000002384185791016f, -1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.69999998807907104492f, 1.0f, -1.0f), vec4<f32>(0.10000000149011611938f, 0.80000001192092895508f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.89999997615814208984f, 1.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>) {
  r0.x = (v1.z * v1.z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.x = fma(cb13_13.tint_symbol_2[9u].w, r0.x, v1.z);
  r0 = vec4<f32>(r0.x, ((v1.zyy + vec3<f32>(-0.5f, 0.52941179275512695312f, -0.03921568766236305237f))).xyz);
  r0.y = clamp(r0.yyyy.y, 0.0f, 1.0f);
  r0.y = (r0.y + r0.y);
  let v = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = ((-(r1.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  o4 = vec4<f32>(v_4.xyz, o4.w);
  let v_5 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (v6.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = fma(v6.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(v6.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = (r1.yzx * r2.zxy);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = -(r3.xyzx);
  let v_13 = fma(r2.yzx, r1.zxy, v_12.xyz);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  o6 = ((r3.xyz * v6.www)).xyzx;
  let v_14 = (v5 * cb9_9.tint_symbol_3[0u].xxx);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r3.xyz, cb13_13.tint_symbol_2[2u].yyy, v0);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = (v5 * cb9_9.tint_symbol_3[0u].yyy);
  r4 = vec4<f32>(v_17.xyz, r4.w);
  let v_18 = (r4.xyz * v2.www);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  let v_19 = fma(r4.xyz, cb13_13.tint_symbol_2[2u].zzz, r3.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = (v2.xxz * cb8_8.tint_symbol_4[0u].xxy);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = (r4.xyz * cb13_13.tint_symbol_2[1u].xxy);
  r4 = vec4<f32>(v_21.xyz, r4.w);
  r2.w = (v2.y * 6.28318500518798828125f);
  let v_22 = (cb13_13.tint_symbol_2[1u].zzw * cb8_8.tint_symbol_4[0u].zzw);
  r5 = vec4<f32>(v_22.xyz, r5.w);
  let v_23 = fma(cb2_2.tint_symbol_1[16u].xxx, r5.xyz, r2.www);
  r5 = vec4<f32>(v_23.xyz, r5.w);
  let v_24 = sin(r5.xyzx.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = fma(r5.xyz, r4.xyz, r3.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r4 = (r3.yyyy * cb1_1.tint_symbol[9u]);
  r4 = fma(r3.xxxx, cb1_1.tint_symbol[8u], r4);
  r3 = fma(r3.zzzz, cb1_1.tint_symbol[10u], r4);
  o0 = (r3 + cb1_1.tint_symbol[11u]);
  r2.w = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = ((-(v4.yyyy)).w + 0.5f);
    r2.w = (r2.w * 0.5f);
    let v_26 = r2.w;
    let v_27 = max(v_26, -2147483648.0f);
    r2.w = bitcast<f32>(select(select(i32(v_27), 2147483647i, (v_27 >= 2147483648.0f)), 0i, !((v_26 == v_26))));
    r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) >= 2i)));
    r4 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_28 = bitcast<vec2<u32>>(r3.xx);
    let v_29 = r4.xy;
    let v_30 = select(r4.zw, v_29, (v_28 != vec2<u32>()));
    o7 = vec4<f32>(v_30.xy, o7.zw);
    r3.x = fract(cb13_13.tint_symbol_2[16u].w);
    let v_31 = fma(r3.xx, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r2.w)].xy);
    let v_32 = r3;
    r3 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
    r3.x = ((-(r3.xxxx)).x + cb13_13.tint_symbol_2[16u].w);
    r3.x = (1.0f / r3.x);
    let v_33 = fma(r3.xx, vec2<f32>(0.60000002384185791016f, -0.80000001192092895508f), icb0[bitcast<i32>(r2.w)].yx);
    r4 = vec4<f32>(v_33.xy, r4.zw);
    let v_34 = (r3.yz * icb0[bitcast<i32>(r2.w)].zw);
    o7 = vec4<f32>(o7.xy, v_34.xy);
    r1.w = r4.x;
  } else {
    o7 = vec4<f32>();
    r4.y = 0.0f;
    r1.w = 0.0f;
  }
  r2.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_2[0u].w < 0.0f)));
  r2.w = select(v0.z, 0.0f, (bitcast<u32>(r2.w) != 0u));
  let v_35 = -(cb13_13.tint_symbol_2[0u].xyxx);
  let v_36 = (r2.ww + v_35.xy);
  r3 = vec4<f32>(v_36.xy, r3.zw);
  let v_37 = clamp(((r3.xyxx / cb13_13.tint_symbol_2[17u].wwww)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_37.xy, r3.zw);
  r2.w = ((-(cb13_13.tint_symbol_2[0u].zzzz)).w + cb13_13.tint_symbol_2[0u].w);
  r2.w = fma(r3.x, r2.w, cb13_13.tint_symbol_2[0u].z);
  r3.x = ((-(r3.yyyy)).x + 1.0f);
  r2.w = (r2.w * r3.x);
  r3.x = (v2.w * cb13_13.tint_symbol_2[2u].w);
  r4.x = max(abs(r2.wwww).x, r3.x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(2.0f), r0.yyyy).x, 0.0f, 1.0f);
  o4.w = (r0.x * cb13_13.tint_symbol_2[2u].x);
  r0.x = (r0.w * cb2_2.tint_symbol_1[16u].w);
  o8.x = (r0.x * 0.96078431606292724609f);
  o8.y = fma((-(v1.yyyy)).y, 25.5f, 1.0f);
  r0.x = (r0.z * r0.z);
  o8.z = (r0.z * r0.x);
  r4 = vec4<f32>(r4.xy, v3.xy);
  o1 = r4.zwxy;
  o2 = r1;
  o3 = v1;
  o5 = r2.xyz.xyzx;
}

struct tint_symbol_5 {
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
  @location(7u)
  o7 : vec4<f32>,
  @location(8u)
  o8 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, o6, o7, o8);
}
