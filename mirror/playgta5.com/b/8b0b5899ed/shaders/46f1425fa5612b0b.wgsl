diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb1_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb3_struct;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v0 : vec2<i32>) {
  let v = (cb4_4.tint_symbol_1[0u].xy + vec2<f32>(256.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = vec4<f32>(vec2<f32>(v0).xy, r1.zw);
  let v_1 = (r1.xy + cb1_1.tint_symbol[3u].xy);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  let v_2 = ((-(r0.zwzz)).xy + r0.xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = -(cb4_4.tint_symbol_1[0u].xxxy);
  let v_4 = (r0.zw + v_3.zw);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.zw * vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = r0.zw;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = ((-(abs(r0.xyxx))).xy + vec2<f32>(256.0f));
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = clamp(((r0.xyxx * vec4<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  r0.x = min(r0.y, r0.x);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = textureLoad(t0, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r0.x = (r0.x * r2.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r0.z = (r0.x * 0.5f);
  let v_11 = bitcast<u32>(r0.y);
  let v_12 = r0.z;
  r0.x = select(r0.x, v_12, (v_11 != 0u));
  r1.z = (r0.x + -0.25f);
  let v_13 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_15 = (r0.xyz + v_14.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r0.w = dot((-(cb1_1.tint_symbol[14u].xyzx)).xyz, r0.xyz);
  let v_16 = (r1.xy + vec2<f32>(256.0f));
  r2 = vec4<f32>(v_16.xy, r2.zw);
  let v_17 = (r2.xy * vec2<f32>(0.001953125f));
  r2 = vec4<f32>(v_17.xy, r2.zw);
  let v_18 = ((-(cb11_11.tint_symbol_2[2u].xxxz)).zw + cb11_11.tint_symbol_2[2u].yw);
  r2 = vec4<f32>(r2.xy, v_18.xy);
  let v_19 = fma(r2.xx, r2.zw, cb11_11.tint_symbol_2[2u].xz);
  let v_20 = r2;
  r2 = vec4<f32>(v_19.x, v_20.y, v_19.y, v_20.w);
  r1.w = ((-(r2.xxxx)).w + r2.z);
  r1.w = fma(r2.y, r1.w, r2.x);
  r1.w = (r1.w * r1.w);
  r1.w = (0.20998525619506835938f / r1.w);
  r1.w = (r1.w * 0.36787945032119750977f);
  let v_21 = abs(r0.wwww);
  r0.w = (r1.w / v_21.w);
  r0.w = (r0.w + 0.00999999977648258209f);
  let v_22 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = (r0.xyz + vec3<f32>(0.0f, 0.0f, -0.20000000298023223877f));
  r0 = vec4<f32>(v_23.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
}

@vertex
fn main(@location(0u) v0 : vec2<i32>) -> @builtin(position) vec4<f32> {
  main_inner(v0);
  return o0;
}
