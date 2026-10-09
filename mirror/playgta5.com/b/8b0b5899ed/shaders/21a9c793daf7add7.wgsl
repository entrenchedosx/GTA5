diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v = (r0.xyz * cb11_11.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) | bitcast<u32>(cb12_12.tint_symbol_2[4u].y)));
  let v_1 = bitcast<vec4<u32>>(r1.xxxx);
  r0 = select(r0, v3, (v_1 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_2((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r2 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r1.w = (v3.x * cb2_2.tint_symbol[15u].y);
  r2.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r2.y = (r1.w * r2.x);
  let v_4 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_4.xyz, o1.w);
  r2.x = fma(v3.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_5 = (r2.wxy * vec3<f32>(0.01953125f, 0.5f, 0.5f));
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = sqrt(r1.yz);
  o3 = vec4<f32>(v_6.xy, o3.zw);
  o2.y = sqrt(r1.x);
  o0 = r0;
  o1.w = 0.0f;
  o2.z = cb11_11.tint_symbol_3[3u].x;
  o2 = vec4<f32>(0.0f, o2.yz, 1.0f);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_2(v_7 : bool) {
  if (v_7) {
    discard;
    return;
  }
}

struct tint_symbol_4 {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3);
  return tint_symbol_4(o0, o1, o2, o3);
}
