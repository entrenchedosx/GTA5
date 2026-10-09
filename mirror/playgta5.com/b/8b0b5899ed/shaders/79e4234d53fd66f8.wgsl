diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = -(cb5_5.tint_symbol_2[4u].xxxx);
  r0.x = (cb2_2.tint_symbol[15u].x + v_2.x);
  r0.y = (v_2.y + 1.0f);
  r0.y = (r0.y * 0.10000000149011611938f);
  r0.x = (r0.x / r0.y);
  let v_3 = -(cb2_2.tint_symbol[15u].xxxx);
  r0.x = (r0.x + v_3.x);
  r0.x = fma(cb12_12.tint_symbol_3[0u].z, r0.x, cb2_2.tint_symbol[15u].x);
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yx < vec2<f32>(0.5f, 1.0f))));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.z)));
  v_6((bitcast<u32>(r0.z) != 0u));
  r0.z = dot(cb2_2.tint_symbol[0u], cb2_2.tint_symbol[0u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.z < 4.0f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.w)));
  v_6((bitcast<u32>(r0.y) != 0u));
  r0.y = (r0.x * r0.z);
  r0.y = (r0.y * 0.25f);
  let v_7 = bitcast<u32>(r0.w);
  let v_8 = r0.y;
  o0.w = select(r0.x, v_8, (v_7 != 0u));
  r0 = textureSample(t0, s0, v3.xy.xyxx.xy);
  r1.x = dot(v4.xyz, v4.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_9 = (r1.xxx * v4.xyz);
  r1 = vec4<f32>(r1.x, v_9.xyz);
  o1.w = clamp(fma(v4.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb12_12.tint_symbol_3[0u].x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].w);
  let v_10 = (r0.xyz * v2.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (v1.xy * cb2_2.tint_symbol[15u].zy);
  let v_12 = r2;
  r2 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = fma(r1.yzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_13.xyz, o1.w);
  r2.x = fma(v1.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_14 = (r2.xz * vec2<f32>(0.5f));
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = sqrt(r1.yz);
  o3 = vec4<f32>(v_16.xy, o3.zw);
  o3.z = clamp(((r0.wwww * vec4<f32>(0.0625f))).z, 0.0f, 1.0f);
  r0.w = fma(v4.z, r1.x, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_2[3u].z);
  r1.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r1.x);
  r0.w = (r2.y * r0.w);
  let v_17 = (r0.ww * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r0.w = fma(r0.w, -0.5f, 1.0f);
  let v_18 = (r0.www * r0.xyz);
  o0 = vec4<f32>(v_18.xyz, o0.w);
  let v_19 = sqrt(r1.xy);
  o2 = vec4<f32>(v_19.xy, o2.zw);
  o2 = vec4<f32>(o2.xy, vec2<f32>(0.98000001907348632812f, 1.0f));
  o3.w = 1.0f;
}

fn v_6(v_20 : bool) {
  if (v_20) {
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
fn main(@builtin(position) v_21 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_21, v1, v2, v3, v4);
  return tint_symbol_4(o0, o1, o2, o3);
}
