diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb17_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb12_12.tint_symbol[16u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t3, s3, r0.xyxx.xy);
  let v_3 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = fract(r1.xyz);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma((-(r1.yzyy)).xy, vec2<f32>(0.125f), r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = (r1.xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = (r1.xyz * vec3<f32>(0.5f));
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb11_11.tint_symbol_1[0u].ww == vec2<f32>(0.0f, 2.0f))));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = bitcast<vec3<u32>>(r2.yyy);
  let v_10 = r1.xyz;
  let v_11 = select(r0.xyz, v_10, (v_9 != vec3<u32>()));
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (abs(cb11_11.tint_symbol_1[0u].wwww).w == 1.0f)));
  r2.y = clamp((-(cb11_11.tint_symbol_1[0u].wwww)).y, 0.0f, 1.0f);
  r0.w = fma(r0.w, cb11_11.tint_symbol_1[0u].w, r2.y);
  let v_12 = (r0.xyz * cb11_11.tint_symbol_1[0u].xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = bitcast<vec3<u32>>(r1.www);
  let v_14 = r0.www;
  let v_15 = select(r1.xyz, v_14, (v_13 != vec3<u32>()));
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = bitcast<vec3<u32>>(r2.xxx);
  let v_17 = r0.xyz;
  let v_18 = select(r1.xyz, v_17, (v_16 != vec3<u32>()));
  o0 = vec4<f32>(v_18.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_19 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_19);
  return o0;
}
