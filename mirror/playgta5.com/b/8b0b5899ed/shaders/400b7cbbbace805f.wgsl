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

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_1[4u].xxxx);
  r0.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r0.z = (v_2.z + 1.0f);
  r0.z = (r0.z * 0.10000000149011611938f);
  r0.y = (r0.y / r0.z);
  r0.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r0.y);
  r0.x = fma(cb12_12.tint_symbol_2[1u].y, r0.y, r0.x);
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  v_5((bitcast<u32>(r0.y) != 0u));
  r1 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v_6 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r1.x = max(cb12_12.tint_symbol_2[0u].w, 0.00100000004749745131f);
  let v_8 = (r0.yz * r1.xx);
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r0.zzz * v5.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.yyy, v4.xyz, r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r0.www, v3.xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_12.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = inverseSqrt(r1.x);
  let v_13 = (r0.yzw * r1.xxx);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r0.y = (v1.x * cb2_2.tint_symbol[15u].z);
  let v_14 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_14.xyz, o1.w);
  r0.z = (r1.w * v1.w);
  o1.w = (r0.z * cb2_2.tint_symbol[15u].x);
  r0.z = fma(r0.w, r1.x, -0.34999999403953552246f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb5_5.tint_symbol_1[3u].z);
  r0.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.z = (r0.w * r0.z);
  r1.z = (r0.y * r0.z);
  r0.y = clamp(((cb12_12.tint_symbol_2[0u].zzzz + vec4<f32>(0.69999998807907104492f))).y, 0.0f, 1.0f);
  let v_15 = (r0.yy * r1.zz);
  r1 = vec4<f32>(v_15.xy, r1.zw);
  let v_16 = (r1.xyz * vec3<f32>(0.5f, 0.48828125f, 0.97000002861022949219f));
  r0 = vec4<f32>(r0.x, v_16.xyz);
  let v_17 = sqrt(r0.yz);
  o2 = vec4<f32>(v_17.xy, o2.zw);
  o0 = vec4<f32>(vec3<f32>(), o0.w);
  o0.w = r0.x;
  o2.z = r0.w;
  o2.w = 0.0f;
  o3 = vec4<f32>();
}

fn v_5(v_18 : bool) {
  if (v_18) {
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
fn main(@builtin(position) v_19 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_19, v1, v2, v3, v4, v5);
  return tint_symbol_3(o0, o1, o2, o3);
}
