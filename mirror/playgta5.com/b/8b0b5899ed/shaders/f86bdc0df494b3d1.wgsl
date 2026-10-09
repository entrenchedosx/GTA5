diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb5_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  let v = (v3 * cb10_10.tint_symbol_2[0u].yyy);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(r0.xyz, vec3<f32>(6.0f), v0);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = vec4<f32>(v1.xyz, o1.w);
  o1.w = 1.0f;
  r0.x = (cb2_2.tint_symbol_1[16u].x + 1.04709279537200927734f);
  r0.x = sin(r0.xxxx.x);
  r0.x = (r0.x * cb10_10.tint_symbol_2[1u].w);
  let v_2 = (r0.xx * vec2<f32>(0.75f));
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.x, v_3.z, v_2.y);
  r1.x = sin(cb2_2.tint_symbol_1[16u].x);
  r1.x = (r1.x * cb10_10.tint_symbol_2[1u].z);
  let v_4 = (r1.xx * vec2<f32>(0.75f));
  let v_5 = r0;
  r0 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
  r1 = (v2.xyxy + -(cb10_10.tint_symbol_2[1u].xyxy));
  r0 = (r0 + r1);
  r1 = (r0 * cb10_10.tint_symbol_2[2u].xxzz);
  o3 = ((r0.zw * cb10_10.tint_symbol_2[2u].yy)).xyxy;
  let v_6 = r1;
  o2 = vec4<f32>(v_6.xy, o2.zw);
  let v_7 = cb10_10.tint_symbol_2[0u];
  o2 = vec4<f32>(o2.xy, v_7.xz);
  let v_8 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  o4 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0.x = dot(v3, v3);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.10000000149011611938f)));
  let v_11 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_13.xy, r0.z, v_13.z);
  let v_14 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  o5 = ((r0.www * r0.xyz)).xyzx;
  o6.w = r1.z;
  o7.w = r1.w;
  let v_15 = (v2.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = fma(v2.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = fma(v2.xxx, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  o6 = vec4<f32>(v_17.xyz, o6.w);
  o7 = vec4<f32>(vec3<f32>(), o7.w);
  o8 = cb10_10.tint_symbol_2[3u];
  o9 = cb10_10.tint_symbol_2[4u];
}

struct tint_symbol_3 {
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
  @location(9u)
  o9 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9);
}
