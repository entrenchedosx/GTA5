diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

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
  let v = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  o4 = (((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz)).xyzx;
  let v_4 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (v6.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(v6.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v6.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (r0.yzx * r1.zxy);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = -(r2.xyzx);
  let v_12 = fma(r1.yzx, r0.zxy, v_11.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  o6 = ((r2.xyz * v6.www)).xyzx;
  let v_13 = (v2.xxz * cb8_8.tint_symbol_3[0u].xxy);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = (r2.xyz * cb13_13.tint_symbol_2[1u].xxy);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  r1.w = (v2.y * 6.28318500518798828125f);
  let v_15 = (cb13_13.tint_symbol_2[1u].zzw * cb8_8.tint_symbol_3[0u].zzw);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(cb2_2.tint_symbol_1[16u].xxx, r3.xyz, r1.www);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = sin(r3.xyzx.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = fma(r3.xyz, r2.xyz, v0);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  r3 = (r2.yyyy * cb1_1.tint_symbol[9u]);
  r3 = fma(r2.xxxx, cb1_1.tint_symbol[8u], r3);
  r2 = fma(r2.zzzz, cb1_1.tint_symbol[10u], r3);
  o0 = (r2 + cb1_1.tint_symbol[11u]);
  r1.w = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = ((-(v4.yyyy)).w + 0.5f);
    r1.w = (r1.w * 0.5f);
    let v_19 = r1.w;
    let v_20 = max(v_19, -2147483648.0f);
    r1.w = bitcast<f32>(select(select(i32(v_20), 2147483647i, (v_20 >= 2147483648.0f)), 0i, !((v_19 == v_19))));
    r2.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) >= 2i)));
    r3 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_21 = bitcast<vec2<u32>>(r2.xx);
    let v_22 = r3.xy;
    let v_23 = select(r3.zw, v_22, (v_21 != vec2<u32>()));
    o7 = vec4<f32>(v_23.xy, o7.zw);
    r2.x = fract(cb13_13.tint_symbol_2[16u].w);
    let v_24 = fma(r2.xx, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r1.w)].xy);
    let v_25 = r2;
    r2 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
    r2.x = ((-(r2.xxxx)).x + cb13_13.tint_symbol_2[16u].w);
    r2.x = (1.0f / r2.x);
    let v_26 = fma(r2.xx, vec2<f32>(0.60000002384185791016f, -0.80000001192092895508f), icb0[bitcast<i32>(r1.w)].yx);
    r3 = vec4<f32>(v_26.xy, r3.zw);
    let v_27 = (r2.yz * icb0[bitcast<i32>(r1.w)].zw);
    o7 = vec4<f32>(o7.xy, v_27.xy);
    r0.w = r3.x;
  } else {
    o7 = vec4<f32>();
    r3.y = 0.0f;
    r0.w = 0.0f;
  }
  r1.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_2[0u].w < 0.0f)));
  r1.w = select(v0.z, 0.0f, (bitcast<u32>(r1.w) != 0u));
  let v_28 = -(cb13_13.tint_symbol_2[0u].xyxx);
  let v_29 = (r1.ww + v_28.xy);
  r2 = vec4<f32>(v_29.xy, r2.zw);
  let v_30 = clamp(((r2.xyxx / cb13_13.tint_symbol_2[17u].wwww)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_30.xy, r2.zw);
  r1.w = ((-(cb13_13.tint_symbol_2[0u].zzzz)).w + cb13_13.tint_symbol_2[0u].w);
  r1.w = fma(r2.x, r1.w, cb13_13.tint_symbol_2[0u].z);
  r2.x = ((-(r2.yyyy)).x + 1.0f);
  r1.w = (r1.w * r2.x);
  r2.x = (v2.w * cb13_13.tint_symbol_2[2u].w);
  r3.x = max(abs(r1.wwww).x, r2.x);
  r2 = vec4<f32>(((v1.yy + vec2<f32>(0.52941179275512695312f, -0.03921568766236305237f))).xy, r2.zw);
  r1.w = (r2.y * cb2_2.tint_symbol_1[16u].w);
  o8.x = (r1.w * 0.96078431606292724609f);
  o8.y = fma((-(v1.yyyy)).y, 25.5f, 1.0f);
  r1.w = (r2.x * r2.x);
  o8.z = (r2.x * r1.w);
  r3 = vec4<f32>(r3.xy, v3.xy);
  o1 = r3.zwxy;
  o2 = r0;
  o3 = v1;
  o5 = r1.xyz.xyzx;
}

struct tint_symbol_4 {
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6, o7, o8);
}
