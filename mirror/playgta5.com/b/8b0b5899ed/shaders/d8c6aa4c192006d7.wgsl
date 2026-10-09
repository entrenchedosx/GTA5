diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb47_struct {
  tint_symbol_2 : array<vec4<f32>, 47u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb47_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  r0.x = v2.w;
  r0.y = v3.w;
  r0 = textureSample(t0, s0, r0.xyxx.xy);
  r0.w = (r0.w * v4.x);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[46u].x)));
  r0.w = fma((-(r0.wwww)).w, cb2_2.tint_symbol[15u].x, 1.0f);
  let v = bitcast<u32>(r1.y);
  let v_1 = r0.w;
  r0.w = select(r1.x, v_1, (v != 0u));
  r0.w = (r0.w * cb11_11.tint_symbol_2[21u].w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_2[21u].z >= r0.w)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_2[21u].w == 1.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  v_2((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = -(r0.xyzx);
  let v_5 = fma(r0.xyz, v1.xyz, v_4.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(v1.www, r2.xyz, r0.xyz);
  o0 = vec4<f32>(v_6.xyz, o0.w);
  let v_7 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_7.xyz, o1.w);
  r0.x = (v4.y + cb3_3.tint_symbol_1[45u].w);
  r0.x = (r0.x * 0.5f);
  r0.y = 0.0f;
  let v_8 = sqrt(r0.xy);
  o3 = vec4<f32>(v_8.xy, o3.zw);
  o0.w = r0.w;
  o1.w = 1.0f;
  o2 = vec4<f32>(0.0f, 0.0f, 0.98000001907348632812f, 1.0f);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 0.04960784316062927246f));
}

fn v_2(v_9 : bool) {
  if (v_9) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v1, v2, v3, v4);
  return tint_symbol_3(o0, o1, o2, o3);
}
