diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v0.xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = (cb12_12.tint_symbol_1[4u].w + cb12_12.tint_symbol_1[4u].y);
  r1.x = (cb12_12.tint_symbol_1[5u].x * 0.5f);
  let v_1 = -(r1.xxxx);
  r1.y = fma(r0.x, r0.w, v_1.y);
  let v_2 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(cb12_12.tint_symbol_1[1u].xyz, r1.xxx, cb12_12.tint_symbol_1[0u].xyz);
  r1 = vec4<f32>(v_3.x, r1.y, v_3.yz);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  let v_4 = bitcast<u32>(r0.w);
  let v_5 = r1.y;
  r0.x = select(r0.x, v_5, (v_4 != 0u));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r1.y = fma(cb12_12.tint_symbol_1[5u].x, 0.5f, r0.x);
  let v_6 = bitcast<u32>(r0.w);
  let v_7 = r1.y;
  r0.x = select(r0.x, v_7, (v_6 != 0u));
  let v_8 = (cb12_12.tint_symbol_1[1u].zxy * cb12_12.tint_symbol_1[2u].yzx);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = -(r2.xyzx);
  let v_10 = fma(cb12_12.tint_symbol_1[1u].yzx, cb12_12.tint_symbol_1[2u].zxy, v_9.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_11 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = (r2.zxy * cb12_12.tint_symbol_1[1u].yzx);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = -(r3.xyzx);
  let v_14 = fma(r2.yzx, cb12_12.tint_symbol_1[1u].zxy, v_13.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r0.xxx, cb12_12.tint_symbol_1[1u].xyz, r3.xyz);
  r0 = vec4<f32>(v_16.xy, r0.z, v_16.z);
  let v_17 = fma(r0.zzz, r2.xyz, r0.xyw);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r1.xzw + r0.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  let v_19 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_20 = (r0.xyz + v_19.xyz);
  o2 = vec4<f32>(v_20.xyz, o2.w);
  r0 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r1.x = (r0.w + r0.x);
  r1.y = ((-(r0.yyyy)).y + r0.w);
  let v_21 = (r1.xy * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_21.xy, o1.zw);
  let v_22 = r0;
  o1 = vec4<f32>(o1.xy, v_22.zw);
  o2.w = r0.w;
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1, o2);
}
