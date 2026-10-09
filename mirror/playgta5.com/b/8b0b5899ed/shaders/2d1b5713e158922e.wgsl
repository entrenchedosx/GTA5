diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb40_struct {
  tint_symbol : array<vec4<f32>, 40u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb40_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = -(cb5_5.tint_symbol[37u].zwzz);
  r0 = vec4<f32>(((v1.xy + v.xy)).xy, r0.zw);
  let v_1 = fma(r0.xy, cb5_5.tint_symbol[37u].xy, v.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy + vec2<f32>(1.0f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t7, s7, r0.xyxx.xy);
  r0.x = (r0.x * cb5_5.tint_symbol[39u].x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol[38u].y)));
  r0 = vec4<f32>(r0.xy, ((v1.xy.yx + vec2<f32>(-0.5f))).xy);
  let v_3 = abs(r0.zzzz);
  let v_4 = abs(r0.wwww);
  r0.y = select(v_4.y, v_3.y, (bitcast<u32>(r0.y) != 0u));
  r0.y = (r0.y + r0.y);
  r1.x = ((-(cb5_5.tint_symbol[38u].zzzz)).x + cb5_5.tint_symbol[38u].w);
  r0.y = fma(r1.x, r0.y, cb5_5.tint_symbol[38u].z);
  r0.y = (r0.y * r0.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol[38u].x);
  r0.x = (r0.y * r0.x);
  let v_5 = -(cb5_5.tint_symbol[34u].zwzz);
  r1 = vec4<f32>(((v1.xy + v_5.xy)).xy, r1.zw);
  let v_6 = fma(r1.xy, cb5_5.tint_symbol[34u].xy, v_5.xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = (r1.xy + vec2<f32>(1.0f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  r1 = textureSample(t5, s5, r1.xyxx.xy);
  let v_8 = (r1.xyz * cb5_5.tint_symbol[36u].xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol[35u].y)));
  let v_9 = abs(r0.zzzz);
  let v_10 = abs(r0.wwww);
  r0.y = select(v_10.y, v_9.y, (bitcast<u32>(r0.y) != 0u));
  r0.y = (r0.y + r0.y);
  r0.z = ((-(cb5_5.tint_symbol[35u].zzzz)).z + cb5_5.tint_symbol[35u].w);
  r0.y = fma(r0.z, r0.y, cb5_5.tint_symbol[35u].z);
  r0.y = (r0.y * r0.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol[35u].x);
  let v_11 = fma(r1.xyz, r0.yyy, r0.xxx);
  o0 = vec4<f32>(v_11.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
