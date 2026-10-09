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

struct cb7_struct {
  tint_symbol_2 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

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
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb5_5.tint_symbol_2[6u].y) != 0i)));
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yz) & vec2<u32>(1u)));
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r0.z = bitcast<f32>((bitcast<i32>(r0.z) << 1u));
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) + bitcast<i32>(r0.z)));
  r0.y = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.y)]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 1.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  v_7((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = (cb2_2.tint_symbol[15u].x * cb12_12.tint_symbol_3[1u].z);
  r0.w = dot(r1.xx, r0.ww);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol_3[1u].w >= r0.w)));
  v_7((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
  let v_8 = (v1.zw * cb2_2.tint_symbol[15u].zy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.w = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.y);
  let v_9 = (r0.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_9.xy, r0.zw);
  let v_10 = sqrt(r0.xy);
  o3 = vec4<f32>(v_10.xy, o3.zw);
  o1 = vec4<f32>(v2.xyz, o1.w);
  o1.w = 0.0f;
  o2 = vec4<f32>(vec3<f32>(), o2.w);
  o2.w = v2.w;
  o3.z = 0.0f;
  o3.w = (cb12_12.tint_symbol_3[2u].x * 0.49607843160629272461f);
}

fn v_7(v_11 : bool) {
  if (v_11) {
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
fn main(@builtin(position) v_12 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v_12, v1, v2);
  return tint_symbol_4(o0, o1, o2, o3);
}
