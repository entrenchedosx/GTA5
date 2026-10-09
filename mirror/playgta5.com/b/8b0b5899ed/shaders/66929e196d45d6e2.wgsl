diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec2<f32>) {
  r0.x = dot(v0, v0);
  r0.y = inverseSqrt(r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  let v = (r0.yyy * v0);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = bitcast<vec3<u32>>(r0.xxx);
  let v_2 = select(v0, r0.yzw, (v_1 != vec3<u32>()));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = (cb12_12.tint_symbol_1[4u].w + cb12_12.tint_symbol_1[4u].y);
  let v_3 = fma(r0.xyz, r0.www, cb12_12.tint_symbol_1[0u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r1;
  o1 = vec4<f32>();
  o2 = v2.xyxy;
  let v_4 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  o3 = vec4<f32>(v_5.xyz, o3.w);
  o3.w = r1.w;
  let v_6 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  let v_8 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  o4 = vec4<f32>(v_9.xyz, o4.w);
  o4.w = (r1.z / r1.w);
  r0.x = (r1.w + r1.x);
  r0.y = ((-(r1.yyyy)).y + r1.w);
  let v_10 = r1;
  o5 = vec4<f32>(o5.xy, v_10.zw);
  let v_11 = (r0.xy * vec2<f32>(0.5f));
  o5 = vec4<f32>(v_11.xy, o5.zw);
}

struct tint_symbol_2 {
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v2);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5);
}
