diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb39_struct {
  tint_symbol : array<vec4<f32>, 39u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb39_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = -(v1.xy.yyyy);
  r0.x = (v.x + v1.x);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, (((-(v1.xy.yyxy)).yz + vec2<f32>(1.0f))).xy, v_1.w);
  r0.w = (r0.z + v.w);
  let v_2 = max(r0.yz, v1.xy.yx);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  let v_4 = abs(r0.wwww);
  r0.x = max(v_4.x, abs(r0.xxxx).x);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.x);
  r0.z = max(r0.y, r0.z);
  r0.z = log2(r0.z);
  r0.z = (r0.z * 1500.0f);
  r0.z = exp2(r0.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.w = fma((-(r0.xxxx)).w, r0.x, r0.z);
  r0.x = log2(r0.y);
  r0.y = (r0.y * r0.y);
  r0.y = (r0.y * r0.y);
  let v_5 = fma(r0.yyy, vec3<f32>(0.5f, 0.5f, 0.20000000298023223877f), vec3<f32>(0.0f, 0.0f, 0.80000001192092895508f));
  r0 = vec4<f32>(r0.x, v_5.xyz);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (0.5f < cb3_3.tint_symbol[32u].x)));
  r2.x = select(950.0f, 450.0f, (bitcast<u32>(r2.x) != 0u));
  r0.x = (r0.x * r2.x);
  r0.x = exp2(r0.x);
  r2 = textureSample(t1, s1, v1.xy.xyxx.xy);
  let v_6 = (r0.yzw * r2.xxx);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = fma(r0.xxx, cb3_3.tint_symbol[37u].xyz, r0.yzw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  o0 = (r1 * cb3_3.tint_symbol[38u].xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
