diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>) {
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  r0.x = (v5.x * 65536.0f);
  r0.x = min(r0.x, 8191.0f);
  r0.y = (r0.x * 0.00390625f);
  r0.y = floor(r0.y);
  r0.x = fma((-(r0.yyyy)).x, 256.0f, r0.x);
  r0.x = floor(r0.x);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  let v = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r2 = textureSample(t5, s5, v1.xyxx.xy);
  let v_1 = (r2.xyz * r2.xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  let v_2 = -(r2);
  r1 = (r1 + v_2);
  r1 = fma(v3.xy.xxxx, r1, r2);
  r0.y = dot(r1, vec4<f32>(1.0f));
  r1 = (r1 * v0);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < v3.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
  r1.w = clamp(r1.wwww.w, 0.0f, 1.0f);
  let v_3 = fma(r1.xyz, r0.yyy, vec3<f32>(-0.5f));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0.y = (r0.y * r1.w);
  let v_4 = clamp(((r1.xyzx * vec4<f32>(0.125f, 0.125f, 0.125f, 0.0f))).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.z = dot(r1.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  r0.y = (r0.z * r0.y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.y == 0.0f)));
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(0.23999999463558197021f), vec4<f32>(0.75f)).y, 0.0f, 1.0f);
  r1.x = select(1.0f, 0.0f, (bitcast<u32>(r0.w) != 0u));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 0i)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.w)));
  r0.x = (r0.x * r1.x);
  o0.z = (r0.y * r1.x);
  o0.y = (r0.x * 0.00390625f);
  o0.w = r0.z;
  o2 = (r0.z * cb2_2.tint_symbol[22u].x);
  o0.x = 0.0f;
  o1 = 0.0f;
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v3, v5);
  return tint_symbol_1(o0, o1, o2);
}
