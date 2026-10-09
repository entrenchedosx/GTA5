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

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_1[4u].xxxx);
  r1.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r1.z = (v_2.z + 1.0f);
  r1.z = (r1.z * 0.10000000149011611938f);
  r1.y = (r1.y / r1.z);
  r0.w = fma((-(r0.wwww)).w, cb2_2.tint_symbol[15u].x, r1.y);
  r0.w = fma(cb12_12.tint_symbol_2[1u].w, r0.w, r1.x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.x)));
  v_3((bitcast<u32>(r1.x) != 0u));
  r1.w = dot(r0.xyz, cb12_12.tint_symbol_2[0u].xyz);
  r1 = vec4<f32>(vec3<f32>(1.0f), r1.w);
  r1 = (r1 * v1);
  o2.w = (r1.w * cb2_2.tint_symbol[15u].x);
  r0.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_1[3u].z);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].z);
  r0.y = (cb12_12.tint_symbol_2[1u].x * 0.001953125f);
  r2.z = (-(r0.yyyy)).z;
  let v_4 = -(cb12_12.tint_symbol_2[1u].yyyy);
  r0.z = fma(v_4.z, 0.5f, 1.0f);
  r0.z = (r0.z * r0.x);
  r0.z = fma(r0.z, -0.5f, 1.0f);
  let v_5 = (r0.zzz * r1.xyz);
  o0 = vec4<f32>(v_5.xyz, o0.w);
  r0.z = clamp(((cb12_12.tint_symbol_2[1u].yyyy + vec4<f32>(0.69999998807907104492f))).z, 0.0f, 1.0f);
  let v_6 = (r0.zz * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r2.y = v_4.y;
  r2.w = (-(cb12_12.tint_symbol_2[0u].wwww)).w;
  r1.z = 0.97000002861022949219f;
  let v_7 = (r1.xyz + r2.yzw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r2.x = fma(r1.x, r0.x, cb12_12.tint_symbol_2[1u].y);
  r2.y = fma(r1.y, r0.x, r0.y);
  o2.z = fma(r1.z, r0.x, cb12_12.tint_symbol_2[0u].w);
  let v_9 = sqrt(r2.xy);
  o2 = vec4<f32>(v_9.xy, o2.zw);
  o0.w = r0.w;
  o1 = vec4<f32>();
  o3 = vec4<f32>();
}

fn v_3(v_10 : bool) {
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
