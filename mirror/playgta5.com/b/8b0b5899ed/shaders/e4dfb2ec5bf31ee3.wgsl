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

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.75f)));
  r1.y = dot(v0.xy, vec2<f32>(0.5f));
  r1.y = fract(r1.y);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < 0.5f)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.10000000149011611938f >= r0.w)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  v_2((bitcast<u32>(r1.x) != 0u));
  r0.w = (r0.w * v1.w);
  r1.x = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_2[1u].z);
  r0.w = dot(r1.xx, r0.ww);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_2[1u].w >= r0.w)));
  v_2((bitcast<u32>(r1.x) != 0u));
  let v_3 = (r0.xyz * v1.xyz);
  o0 = vec4<f32>(v_3.xyz, o0.w);
  let v_4 = (v2.zw * cb2_2.tint_symbol[15u].zy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r1.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.z = (r0.y * r1.x);
  let v_5 = (r0.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = sqrt(r0.xy);
  o3 = vec4<f32>(v_6.xy, o3.zw);
  o0.w = r0.w;
  o1 = vec4<f32>(v3.xyz, o1.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(vec3<f32>(), o2.w);
  o2.w = v3.w;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_2[2u].x * 0.49607843160629272461f);
}

fn v_2(v_7 : bool) {
  if (v_7) {
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
fn main(@builtin(position) v_8 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_8, v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3);
}
