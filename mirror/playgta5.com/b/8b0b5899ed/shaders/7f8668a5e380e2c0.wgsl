diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb5_struct;

struct cb4_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>) {
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
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  let v_6 = (r0.xyz * cb11_11.tint_symbol_3[0u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0 = (r0 * v3.xxxw);
  let v_7 = ((-(cb11_11.tint_symbol_3[2u].zzzz)).xy + vec2<f32>(1.0f, 2.0f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r1.z = (r1.x * v3.z);
  let v_8 = (r1.yy * v1.xy);
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.x, v_9.z, v_8.y);
  r2 = textureSample(t3, s3, r1.ywyy.xy);
  r1.y = (cb5_5.tint_symbol_1[3u].z * cb11_11.tint_symbol_3[2u].z);
  r1.w = ((-(r2.xxxx)).w + r2.z);
  r1.y = fma(r1.y, r1.w, r2.x);
  r1.y = (r1.y * cb11_11.tint_symbol_3[2u].x);
  r1.w = fma(v3.z, r1.x, -1.0f);
  r1.x = fma(r1.x, r1.w, 1.0f);
  r1.x = (r1.x * r1.y);
  let v_10 = -(r0.xyxz);
  let v_11 = fma(cb11_11.tint_symbol_3[3u].xyz, cb11_11.tint_symbol_3[2u].yyy, v_10.xyw);
  r2 = vec4<f32>(v_11.xy, r2.z, v_11.z);
  let v_12 = fma(r1.xxx, r2.xyw, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r1.x = (r1.z * cb11_11.tint_symbol_3[2u].x);
  let v_13 = ((-(r0.xxyz)).yzw + r2.zzz);
  r1 = vec4<f32>(r1.x, v_13.xyz);
  let v_14 = fma(r1.xxx, r1.yzw, r0.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r1.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.x = bitcast<f32>((bitcast<u32>(cb12_12.tint_symbol_2[4u].x) | bitcast<u32>(cb12_12.tint_symbol_2[4u].y)));
  let v_15 = bitcast<vec4<u32>>(r0.xxxx);
  r0 = select(r1, v3, (v_15 != vec4<u32>()));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.w)));
  v_5((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_5(v_16 : bool) {
  if (v_16) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_17 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_17, v1, v3);
  return o0;
}
