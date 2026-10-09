diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

struct cb2_struct {
  tint_symbol_1 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol[17u].z / r0.z);
  r1 = textureSample(t8, s8, r0.xyxx.xy);
  r0.x = (r0.z + -140.0f);
  r0.x = clamp(fma(-(r0.xxxx), vec4<f32>(0.01250000018626451492f), vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r0.y = (r1.w + cb10_10.tint_symbol_1[0u].y);
  r0.y = clamp(((r0.yyyy * cb10_10.tint_symbol_1[0u].zzzz)).y, 0.0f, 1.0f);
  r0.x = (r0.x * r0.y);
  let v = (cb10_10.tint_symbol_1[0u].xx * cb9_9.tint_symbol_2[0u].xy);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r1 = textureSample(t5, s5, r0.yzyy.xy);
  let v_2 = -(cb10_10.tint_symbol_1[1u].xxxx);
  r0.y = clamp(((r1.xxxx + v_2)).y, 0.0f, 1.0f);
  let v_3 = -(cb10_10.tint_symbol_1[0u].wwww);
  r0.y = clamp(((r0.yyyy + v_3)).y, 0.0f, 1.0f);
  r0 = (r0.xxxx * r0.yyyy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r0.w))));
  r1.x = bitcast<f32>(~(bitcast<u32>(r1.x)));
  v_4((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_4(v_5 : bool) {
  if (v_5) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
