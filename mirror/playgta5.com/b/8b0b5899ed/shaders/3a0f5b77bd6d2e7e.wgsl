diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb77_struct {
  tint_symbol_1 : array<vec4<f32>, 77u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb77_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r1 = vec4<f32>(((v1 + vec2<f32>(-0.5f))).xy, r1.zw);
  o1 = ((r1.xy + r1.xy)).xyxy;
  let v = (r0.xwy * vec3<f32>(0.5f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.zzzz);
  r1.y = fma(r0.w, 0.5f, v_1.y);
  r1.x = (r0.y + r0.x);
  let v_2 = (r1.xy / r0.ww);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = r0;
  o2 = vec4<f32>(v_3.xy, o2.zw);
  let v_4 = (cb1_1.tint_symbol[9u].xwy * cb5_5.tint_symbol_1[76u].yyy);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(cb5_5.tint_symbol_1[76u].xxx, cb1_1.tint_symbol[8u].xwy, r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(cb5_5.tint_symbol_1[76u].zzz, cb1_1.tint_symbol[10u].xwy, r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (r1.xyz + cb1_1.tint_symbol[11u].xwy);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (r1.xyz * vec3<f32>(0.5f));
  r1 = vec4<f32>(v_8.x, r1.y, v_8.yz);
  let v_9 = -(r1.wwww);
  r0.w = fma(r1.y, 0.5f, v_9.w);
  r0.z = (r1.z + r1.x);
  let v_10 = (r0.zw / r1.yy);
  r0 = vec4<f32>(r0.xy, v_10.xy);
  let v_11 = ((-(r0.xyxx)).xy + r0.zw);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = (r0.xy * vec2<f32>(0.06666667014360427856f));
  r0 = vec4<f32>(v_12.xy, r0.zw);
  r0.z = (cb5_5.tint_symbol_1[75u].y * 0.10000000149011611938f);
  let v_13 = (r0.zz * r0.xy);
  o2 = vec4<f32>(o2.xy, v_13.xy);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1);
  return tint_symbol_2(o0, o1, o2);
}
