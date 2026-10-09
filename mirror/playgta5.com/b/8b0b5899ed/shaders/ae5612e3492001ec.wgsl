diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_5((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[4u].x >= r1.x)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1.x = (r0.w * cb12_12.tint_symbol_2[0u].x);
  r1.x = (r1.x * cb2_2.tint_symbol[15u].w);
  r1.x = (r1.x * cb2_2.tint_symbol[16u].y);
  r0.w = (r0.w * v1.w);
  r1.y = (v1.x * cb2_2.tint_symbol[15u].z);
  r1.x = (r1.x * v1.z);
  r1.z = dot(r0.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = (r1.z * r1.x);
  o3.z = clamp(((r1.xxxx * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  r0.w = (r0.w * cb2_2.tint_symbol[16u].y);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_1[3u].z);
  r1.x = (r1.y * r1.x);
  let v_6 = (r1.xx * vec2<f32>(0.5f, 0.48828125f));
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.x = fma(r1.x, -0.5f, 1.0f);
  let v_8 = (r0.xyz * r1.xxx);
  o0 = vec4<f32>(v_8.xyz, o0.w);
  let v_9 = sqrt(r1.yz);
  o2 = vec4<f32>(v_9.xy, o2.zw);
  o0.w = r0.w;
  o2 = vec4<f32>(o2.xy, vec2<f32>());
  o3 = vec4<f32>(vec2<f32>(), o3.zw);
  o3.w = r0.w;
  o1 = vec4<f32>();
}

fn v_5(v_10 : bool) {
  if (v_10) {
    discard;
    return;
  }
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@builtin(position) v_11 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_11, v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
