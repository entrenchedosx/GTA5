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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_2[3u].y);
  r0.w = dot(r1.xx, r0.ww);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[3u].z >= r0.w)));
  v((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
  let v_1 = (v1.zw * cb2_2.tint_symbol[15u].zy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.y);
  let v_2 = (r0.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = sqrt(r0.xy);
  o3 = vec4<f32>(v_3.xy, o3.zw);
  let v_4 = fma(v2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_4.xyz, o1.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(0.0f, 1.0f, 0.49990001320838928223f, 1.0f);
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_2[3u].w * 0.49607843160629272461f);
}

fn v(v_5 : bool) {
  if (v_5) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
