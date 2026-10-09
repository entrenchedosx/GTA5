diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb1_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = (r0.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_1[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_1[17u].z / r1.x);
  r0.x = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).w;
  r0.y = (r1.x + -140.0f);
  r0.y = clamp(fma(-(r0.yyyy), vec4<f32>(0.01250000018626451492f), vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  r0.x = (r0.x + cb10_10.tint_symbol_2[0u].y);
  r0.x = clamp(((r0.xxxx * cb10_10.tint_symbol_2[0u].zzzz)).x, 0.0f, 1.0f);
  r0.x = (r0.y * r0.x);
  let v_4 = (cb10_10.tint_symbol_2[0u].xx * cb9_9.tint_symbol_3[0u].xy);
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  r0.y = textureSample(t5, s5, r0.yzyy.xy).x;
  let v_6 = -(cb10_10.tint_symbol_2[1u].xxxx);
  r0.y = clamp(((r0.yyyy + v_6)).y, 0.0f, 1.0f);
  let v_7 = -(cb10_10.tint_symbol_2[0u].wwww);
  r0.y = clamp(((r0.yyyy + v_7)).y, 0.0f, 1.0f);
  r0 = (r0.xxxx * r0.yyyy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r0.w))));
  r1.x = bitcast<f32>(~(bitcast<u32>(r1.x)));
  v_8((bitcast<u32>(r1.x) != 0u));
  o0 = r0;
}

fn v_8(v_9 : bool) {
  if (v_9) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
