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
  r0.z = (r0.z * 150.0f);
  r0.z = exp2(r0.z);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r1.w = fma((-(r0.xxxx)).w, r0.x, r0.z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.5f < cb3_3.tint_symbol[32u].x)));
  r0.x = select(95.0f, 45.0f, (bitcast<u32>(r0.x) != 0u));
  r0.x = (r0.y * r0.x);
  r0.x = exp2(r0.x);
  r0.y = (v.y + cb3_3.tint_symbol[39u].x);
  r0.y = ((-(abs(r0.yyyy))).y + 1.0f);
  r0.y = max(r0.y, 0.0f);
  r0.y = log2(r0.y);
  let v_5 = (r0.yyy * vec3<f32>(45.0f, 15.0f, 85.0f));
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = exp2(r0.yzw);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  r0.z = (r0.z * 0.80000001192092895508f);
  let v_7 = (r0.zzz * cb3_3.tint_symbol[35u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(cb3_3.tint_symbol[35u].xyz, r0.yyy, r2.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = (r0.www + r2.xyz);
  r0 = vec4<f32>(r0.x, v_9.xyz);
  let v_10 = fma(r0.xxx, cb3_3.tint_symbol[37u].xyz, r0.yzw);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  o0 = (r1 * cb3_3.tint_symbol[38u].xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
