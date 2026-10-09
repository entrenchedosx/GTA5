diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb37_struct {
  tint_symbol : array<vec4<f32>, 37u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb37_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol[35u].y)));
  let v = r0;
  r0 = vec4<f32>(v.x, ((v1.xy.yx + vec2<f32>(-0.5f))).xy, v.w);
  let v_1 = abs(r0.yyyy);
  let v_2 = abs(r0.zzzz);
  r0.x = select(v_2.x, v_1.x, (bitcast<u32>(r0.x) != 0u));
  r0.x = (r0.x + r0.x);
  r0.y = ((-(cb5_5.tint_symbol[35u].zzzz)).y + cb5_5.tint_symbol[35u].w);
  r0.x = fma(r0.y, r0.x, cb5_5.tint_symbol[35u].z);
  r0.x = (r0.x * r0.x);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol[35u].x);
  let v_3 = -(cb5_5.tint_symbol[34u].zzwz);
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, ((v1.xy + v_3.yz)).xy, v_4.w);
  let v_5 = fma(r0.yz, cb5_5.tint_symbol[34u].xy, v_3.yz);
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = (r0.yz + vec2<f32>(1.0f));
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r1 = textureSample(t5, s5, r0.yzyy.xy);
  let v_9 = min(r1.xyz, vec3<f32>(65504.0f));
  r0 = vec4<f32>(r0.x, v_9.xyz);
  let v_10 = (r0.yzw * cb5_5.tint_symbol[36u].xyz);
  r0 = vec4<f32>(r0.x, v_10.xyz);
  let v_11 = (r0.xxx * r0.yzw);
  o0 = vec4<f32>(v_11.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
