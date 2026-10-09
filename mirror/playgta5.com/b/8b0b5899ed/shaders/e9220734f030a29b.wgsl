diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb40_struct {
  tint_symbol : array<vec4<f32>, 40u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb40_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>((((-(v1.xy.yxyy)).xy + vec2<f32>(1.0f))).xy, r0.zw);
  r0.z = ((-(r0.xxxx)).z + 1.0f);
  r0.z = max(r0.z, r0.x);
  r0.w = max(r0.y, v1.x);
  r0.w = max(r0.z, r0.w);
  r0.z = log2(r0.z);
  r0.w = log2(r0.w);
  r0.w = (r0.w * 150.0f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = ((-(r0.xxxx)).x + v1.x);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol[39u].x);
  r0.x = ((-(abs(r0.xxxx))).x + 1.0f);
  r0.x = max(r0.x, 0.0f);
  r0.x = log2(r0.x);
  let v = (r0.xxx * vec3<f32>(45.0f, 15.0f, 85.0f));
  r1 = vec4<f32>(r1.x, v.xyz);
  let v_1 = exp2(r1.yzw);
  r1 = vec4<f32>(r1.x, v_1.xyz);
  let v_2 = abs(r0.yyyy);
  r0.x = max(v_2.x, abs(r1.xxxx).x);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * r0.x);
  r0.x = fma((-(r0.xxxx)).x, r0.x, r0.w);
  r0.y = (v1.y * v1.y);
  r0.w = (r0.y * r0.y);
  r0.y = (r0.y * r0.w);
  r2.w = (r0.y * r0.x);
  r0.x = (r1.z * 0.80000001192092895508f);
  let v_3 = (r0.xxx * cb3_3.tint_symbol[35u].xyz);
  r0 = vec4<f32>(v_3.xy, r0.z, v_3.z);
  let v_4 = fma(cb3_3.tint_symbol[35u].xyz, r1.yyy, r0.xyw);
  r0 = vec4<f32>(v_4.xy, r0.z, v_4.z);
  let v_5 = (r1.www + r0.xyw);
  r0 = vec4<f32>(v_5.xy, r0.z, v_5.z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.5f < cb3_3.tint_symbol[32u].x)));
  r1.x = select(95.0f, 45.0f, (bitcast<u32>(r1.x) != 0u));
  r0.z = (r0.z * r1.x);
  r0.z = exp2(r0.z);
  let v_6 = fma(r0.zzz, cb3_3.tint_symbol[37u].xyz, r0.xyw);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r0 = (r2 * cb3_3.tint_symbol[38u].xxxx);
  o0 = (r0 * vec4<f32>(0.89999997615814208984f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
