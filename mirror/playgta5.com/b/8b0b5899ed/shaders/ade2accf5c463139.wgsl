diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec3<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  let v = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  o1 = vec4<f32>(v_3.xyz, o1.w);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < v4.z)));
  o1.w = select(v3.w, v2.w, (bitcast<u32>(r0.x) != 0u));
  o2 = (v1 * v4.yyyy);
  r0 = (v2.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v2.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v2.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  let v_4 = (r0.xyz / r0.www);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r0.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = r0;
  o3 = vec4<f32>(v_7.xyz, o3.w);
  o3.w = v4.x;
  let v_8 = (v3.yyy * cb1_1.tint_symbol[9u].xyw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v3.xxx, cb1_1.tint_symbol[8u].xyw, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(v3.zzz, cb1_1.tint_symbol[10u].xyw, r1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r1.xyz + cb1_1.tint_symbol[11u].xyw);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = (r1.xy / r1.zz);
  r0 = vec4<f32>(r0.xy, v_12.xy);
  let v_13 = fma(r0.zw, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_13.xy);
  let v_14 = -(r0.xyxx);
  let v_15 = fma(r0.zw, cb2_2.tint_symbol_1[18u].xy, v_14.xy);
  r0 = vec4<f32>(v_15.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  r0.z = inverseSqrt(r0.z);
  let v_16 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_16.xy, r0.zw);
  r0.w = (-(r0.xxxx)).w;
  o4 = r0.xyyw;
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
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec3<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_2(o0, o1, o2, o3, o4);
}
