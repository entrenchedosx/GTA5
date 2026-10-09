diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v5 : vec4<f32>) {
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
  r0 = textureSample(t9, s9, v5.zwzz.xy);
  r1.y = dot(r0.xx, cb10_10.tint_symbol_2[0u].zz);
  r1.x = 0.0f;
  let v_6 = ((-(r1.xxyx)).yz + v5.xy);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = (r0.yz + cb10_10.tint_symbol_2[0u].xx);
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r0.w = (v1.z + (-(cb10_10.tint_symbol_2[0u].yyyy)).w);
  r0.w = max(r0.w, 0.0f);
  r0.w = (r0.w * cb10_10.tint_symbol_2[0u].w);
  r1 = textureSample(t3, s3, r0.yzyy.xy);
  let v_10 = (r0.yz + v5.xy);
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r2 = textureSample(t10, s10, r0.yzyy.xy);
  r0.y = (r1.y * r2.x);
  r0.y = (r0.w * r0.y);
  r0.y = (r0.y * v1.w);
  r0.x = clamp(((r0.xxxx * r0.yyyy)).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb2_2.tint_symbol[15u].x);
  r0.y = (v2.z + -0.34999999403953552246f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_1[3u].z);
  r0.z = ((-(cb2_2.tint_symbol[16u].zzzz)).z + 1.0f);
  r0.y = (r0.z * r0.y);
  r0.y = (r0.y * cb2_2.tint_symbol[15u].z);
  let v_12 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(r0.xy, v_12.xy);
  let v_13 = fma(r0.yyy, vec3<f32>(-0.5f), vec3<f32>(1.0f));
  o0 = vec4<f32>(v_13.xyz, o0.w);
  let v_14 = sqrt(r0.zw);
  o2 = vec4<f32>(v_14.xy, o2.zw);
  o0.w = r0.x;
  let v_15 = fma(v2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_15.xyz, o1.w);
  o1.w = r0.x;
  o2.z = 0.98000001907348632812f;
  o2.w = r0.x;
  o3 = vec4<f32>();
}

fn v_5(v_16 : bool) {
  if (v_16) {
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
fn main(@builtin(position) v_17 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_17, v1, v2, v5);
  return tint_symbol_3(o0, o1, o2, o3);
}
