diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

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
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[4u].x >= r0.w)));
  v_5((bitcast<u32>(r0.w) != 0u));
  r0.w = dot(r0.xyz, cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(vec3<f32>(1.0f), r0.w);
  r0 = (r0 * v1);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r1.x = (r1.x * cb5_5.tint_symbol_1[3u].z);
  r1.x = (r1.x * cb2_2.tint_symbol[15u].z);
  r1.y = (cb12_12.tint_symbol_2[1u].x * 0.001953125f);
  r2.z = (-(r1.yyyy)).z;
  let v_6 = -(cb12_12.tint_symbol_2[1u].yyyy);
  r1.z = fma(v_6.z, 0.5f, 1.0f);
  r1.z = (r1.z * r1.x);
  r1.z = fma(r1.z, -0.5f, 1.0f);
  let v_7 = (r0.xyz * r1.zzz);
  o0 = vec4<f32>(v_7.xyz, o0.w);
  r0.x = clamp(((cb12_12.tint_symbol_2[1u].yyyy + vec4<f32>(0.69999998807907104492f))).x, 0.0f, 1.0f);
  let v_8 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r2.y = v_6.y;
  r2.w = (-(cb12_12.tint_symbol_2[0u].wwww)).w;
  r0.z = 0.97000002861022949219f;
  let v_9 = (r0.xyz + r2.yzw);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r2.x = fma(r0.x, r1.x, cb12_12.tint_symbol_2[1u].y);
  r2.y = fma(r0.y, r1.x, r1.y);
  o2.z = fma(r0.z, r1.x, cb12_12.tint_symbol_2[0u].w);
  let v_11 = sqrt(r2.xy);
  o2 = vec4<f32>(v_11.xy, o2.zw);
  o0.w = r0.w;
  o2.w = r0.w;
  o1 = vec4<f32>();
  o3 = vec4<f32>();
}

fn v_5(v_12 : bool) {
  if (v_12) {
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
fn main(@builtin(position) v_13 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_13, v1, v2);
  return tint_symbol_3(o0, o1, o2, o3);
}
