diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb3_struct {
  tint_symbol_1 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb3_struct;

@group(0u) @binding(45u) var t13 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.zw / v0.zw)).xy, r0.zw);
  let v = r0.xy;
  let v_1 = max(v, vec2<f32>(-2147483648.0f));
  let v_2 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_1), vec2<i32>(2147483647i), (v_1 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v == v))));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0 = textureLoad(t13, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  r1 = vec4<f32>(r1.xy, vec2<f32>(0.0f, 1.0f));
  r2.x = fma(v1.x, v0.z, v0.x);
  r2.y = fma((-(v1.yyyy)).y, v0.w, v0.y);
  let v_3 = (r2.xy + vec2<f32>(-0.5f, 0.5f));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r2.z = (-(r2.yyyy)).z;
  o1 = r2.xz.xyxy;
  let v_5 = (r0.yz + r0.yz);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  o0 = (r0.xxxx * r1);
  let v_6 = (r1.xy * cb11_11.tint_symbol_1[2u].xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (r0.yyy * cb1_1.tint_symbol[13u].xyz);
  r0 = vec4<f32>(r0.x, v_7.xyz);
  let v_8 = fma(r0.xxx, cb1_1.tint_symbol[12u].xyz, r0.yzw);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = -(cb1_1.tint_symbol[14u].xyzx);
  let v_10 = (r0.xyz + v_9.xyz);
  o2 = vec4<f32>(v_10.xyz, o2.w);
  o2.w = 1.0f;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0, v1);
  return tint_symbol_2(o0, o1, o2);
}
