diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb3_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v4 : vec4<f32>) {
  let v = (v4.xyz + (-(cb12_12.tint_symbol_1[0u].xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_1 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = ((-(v4.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_3 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.x = max(r0.x, 0.0f);
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((vec2<f32>() == cb11_11.tint_symbol_2[2u].xy))));
  let v_5 = r0;
  r0 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = bitcast<u32>(r0.y);
  r0.x = select(1.0f, r0.x, (v_6 != 0u));
  let v_7 = (r0.xxx * cb11_11.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  let v_8 = log2(r0.xyw);
  r0 = vec4<f32>(v_8.xy, r0.z, v_8.z);
  let v_9 = (r0.xyw * vec3<f32>(0.45454546809196472168f));
  r0 = vec4<f32>(v_9.xy, r0.z, v_9.z);
  let v_10 = exp2(r0.xyw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  r1.w = cb11_11.tint_symbol_2[0u].w;
  let v_11 = bitcast<vec4<u32>>(r0.zzzz);
  let v_12 = cb11_11.tint_symbol_2[0u];
  o0 = select(r1, v_12, (v_11 != vec4<u32>()));
}

@fragment
fn main(@location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v4);
  return o0;
}
