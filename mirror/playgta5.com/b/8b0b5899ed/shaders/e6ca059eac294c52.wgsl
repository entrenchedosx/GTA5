diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb6_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : f32;

var<private> o2 : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  let v_2 = max(v5.z, 0.0f);
  r0.x = bitcast<f32>(select(u32(v_2), 4294967295u, (v_2 >= 4294967296.0f)));
  r0.x = f32(bitcast<u32>(r0.x));
  r0.y = (r0.x * cb6_6.tint_symbol_1[14u].y);
  r0.x = fma(r0.x, cb6_6.tint_symbol_1[14u].y, cb6_6.tint_symbol_1[14u].y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (v11.y < r0.y)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < v11.y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) | bitcast<u32>(r0.y)));
  v_3((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v_4 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  let v_5 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r2.x = dot(r0.xyz, vec3<f32>(1.0f));
  r2.y = dot(r1.xyz, vec3<f32>(1.0f));
  let v_6 = -(cb8_8.tint_symbol_2[5u].yyyy);
  let v_7 = (r2.xy + v_6.zw);
  r2 = vec4<f32>(r2.xy, v_7.xy);
  let v_8 = clamp(((r2.zzzw * vec4<f32>(0.0f, 0.0f, 10000.0f, 10000.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_8.xy);
  r3.x = (cb8_8.tint_symbol_2[5u].z + 0.00100000004749745131f);
  r3.x = ((-(r2.xxxx)).x + r3.x);
  r3.x = clamp(((r3.xxxx * vec4<f32>(10000.0f))).x, 0.0f, 1.0f);
  let v_9 = -(r2.xxxy);
  let v_10 = fma(r2.zw, r3.xx, v_9.zw);
  r2 = vec4<f32>(r2.xy, v_10.xy);
  let v_11 = fma(cb8_8.tint_symbol_2[5u].ww, r2.zw, r2.xy);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  r0.w = r2.x;
  r1.w = r2.y;
  r1 = (-(r0) + r1);
  r0 = fma(v3.xy.xxxx, r1, r0);
  r1.x = clamp(((r0.wwww * v0.wwww)).x, 0.0f, 1.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < v3.y)));
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r1.y)));
  r0.y = (r0.x * r1.x);
  r0.x = fma(r1.x, r0.x, -0.5f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(0.125f))).x, 0.0f, 1.0f);
  r0.x = dot(r0.xxx, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  r0.y = (r0.x * r0.y);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y == 0.0f)));
  r0.w = select(1.0f, 0.0f, (bitcast<u32>(r0.z) != 0u));
  r1.x = (v5.x * 65536.0f);
  r1.x = min(r1.x, 8191.0f);
  r1.y = (r1.x * 0.00390625f);
  r1.y = floor(r1.y);
  r1.x = fma((-(r1.yyyy)).x, 256.0f, r1.x);
  r1.x = floor(r1.x);
  r1.x = (r0.w * r1.x);
  o0.y = (r1.x * 0.00390625f);
  r0.y = clamp(fma(r0.yyyy, vec4<f32>(0.23999999463558197021f), vec4<f32>(0.75f)).y, 0.0f, 1.0f);
  o0.z = (r0.w * r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) == 0i)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r0.y)));
  o2 = (r0.x * cb2_2.tint_symbol[22u].x);
  o0.x = 0.0f;
  o0.w = r0.x;
  o1 = 0.0f;
}

fn v_3(v_12 : bool) {
  if (v_12) {
    discard;
    return;
  }
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : f32,
  @location(2u)
  o2 : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @builtin(position) v_13 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v3, v5, v_13);
  return tint_symbol_3(o0, o1, o2);
}
