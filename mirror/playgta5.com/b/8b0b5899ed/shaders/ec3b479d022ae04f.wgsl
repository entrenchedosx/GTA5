diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb39_struct {
  tint_symbol : array<vec4<f32>, 39u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb39_struct;

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
  r0.y = log2(r0.y);
  r0.z = log2(r0.z);
  let v_5 = (r0.zz * vec2<f32>(7.5f, 105.0f));
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = exp2(r0.zw);
  r0 = vec4<f32>(r0.xy, v_6.xy);
  let v_7 = -(r0.xxxx);
  let v_8 = -(r0.wwww);
  r0.w = fma(v_7.w, r0.x, v_8.w);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.x = fma((-(r0.xxxx)).x, r0.x, r0.z);
  r1.w = (r0.w + 1.0f);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.5f < cb3_3.tint_symbol[32u].x)));
  r0.z = select(66.5f, 31.5f, (bitcast<u32>(r0.z) != 0u));
  r0.y = (r0.y * r0.z);
  r0.y = exp2(r0.y);
  let v_9 = (r0.yyy * cb3_3.tint_symbol[37u].xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  r1 = (r1 * cb3_3.tint_symbol[38u].xxxx);
  r0.y = fma(cb3_3.tint_symbol[32u].x, 0.30000001192092895508f, 0.5f);
  r0.w = (r0.x * r0.y);
  r0 = vec4<f32>(vec3<f32>(), r0.w);
  r0 = fma(r0.wwww, vec4<f32>(0.15000000596046447754f, 0.0f, 0.80000001192092895508f, 0.0f), r0);
  o0 = fma(r0, r0.wwww, r1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
