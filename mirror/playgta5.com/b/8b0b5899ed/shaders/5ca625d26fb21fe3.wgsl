diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

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
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.75f)));
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= r0.w)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  v_5((bitcast<u32>(r1.x) != 0u));
  r1.x = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_2[3u].y);
  r0.w = dot(r1.xx, r0.ww);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[3u].z >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  let v_6 = r0;
  o0 = vec4<f32>(v_6.xyz, o0.w);
  o0.w = r0.w;
  let v_7 = (v1.zw * cb2_2.tint_symbol[15u].zy);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.y);
  let v_8 = (r0.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = sqrt(r0.xy);
  o3 = vec4<f32>(v_9.xy, o3.zw);
  let v_10 = fma(v2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_10.xyz, o1.w);
  o1.w = 0.0f;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_2[3u].w * 0.49607843160629272461f);
  o2 = vec4<f32>(0.0f, 1.0f, 0.49990001320838928223f, 1.0f);
}

fn v_5(v_11 : bool) {
  if (v_11) {
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
fn main(@builtin(position) v_12 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_12, v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
