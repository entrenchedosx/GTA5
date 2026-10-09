diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb43_struct {
  tint_symbol : array<vec4<f32>, 43u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb43_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = (768.0f * cb3_3.tint_symbol[40u].x);
  r0.x = (1.0f / r0.x);
  r0.y = (1.0f / cb3_3.tint_symbol[40u].x);
  r1.x = fma(r0.y, v1.x, cb3_3.tint_symbol[42u].x);
  r1.z = ((-(r0.xxxx)).z + r1.x);
  r0.x = (r0.x + r1.x);
  let v = r1;
  r1 = vec4<f32>(v.x, 0.5f, v.z, 0.5f);
  r2 = textureSample(t0, s0, r1.zwzz.xy);
  r1 = textureSample(t0, s0, r1.xyxx.xy);
  r0.z = fma((-(r2.xxxx)).z, 2.0f, 1.0f);
  let v_1 = -(cb3_3.tint_symbol[41u].xxxx);
  r0.z = fma(r0.z, v_1.z, 1.0f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(0.5f))).z, 0.0f, 1.0f);
  r0.w = fma((-(r1.xxxx)).w, 2.0f, 1.0f);
  r0.w = fma(r0.w, v_1.w, 1.0f);
  r0.w = clamp(((r0.wwww * vec4<f32>(0.5f))).w, 0.0f, 1.0f);
  let v_2 = -(v1.xy.yyyy);
  let v_3 = (r0.zw + v_2.zw);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = abs(r0.zzzz);
  r0.z = min(v_4.z, abs(r0.wwww).z);
  r0.y = 0.5f;
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = fma((-(r2.xxxx)).x, 2.0f, 1.0f);
  r0.x = fma(r0.x, v_1.x, 1.0f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(0.5f))).x, 0.0f, 1.0f);
  r0.x = (r0.x + v_2.x);
  r0.x = min(abs(r0.xxxx).x, r0.z);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = log2(r0.x);
  let v_5 = (r0.xxx * vec3<f32>(15.0f, 45.0f, 85.0f));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = exp2(r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = (r1.x + -1.0f);
  r1.x = max((-(r1.xxxx)).x, 0.0f);
  r0.w = max(r0.w, 0.0f);
  r0.w = max(r1.x, r0.w);
  r0.w = (r0.w * 1000.0f);
  r0.w = min(r0.w, 1.0f);
  r1.x = dot(r0.ww, r0.xx);
  r0.x = (r0.x * 0.80000001192092895508f);
  let v_7 = (r0.xxx * cb3_3.tint_symbol[35u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(cb3_3.tint_symbol[35u].xyz, r0.yyy, r2.xyz);
  r0 = vec4<f32>(v_8.xy, r0.z, v_8.z);
  let v_9 = (r0.zzz + r0.xyw);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, vec2<f32>(), v_10.w);
  let v_11 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  r1.x = (r0.y + r0.x);
  r1.x = (r0.z + r1.x);
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, (((-(v1.xy.yyxy)).yz + vec2<f32>(1.0f))).xy, v_12.w);
  let v_13 = max(r1.yz, v1.xy.yx);
  let v_14 = r1;
  r1 = vec4<f32>(v_14.x, v_13.x, v_14.z, v_13.y);
  r1.z = (r1.z + v_2.z);
  r1.y = max(r1.y, r1.w);
  r1.y = log2(r1.y);
  r1.y = (r1.y * 150.0f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.w = (v_2.w + v1.x);
  let v_15 = abs(r1.zzzz);
  r1.z = max(v_15.z, abs(r1.wwww).z);
  r1.z = (r1.z * r1.z);
  r1.z = (r1.z * r1.z);
  r1.y = fma((-(r1.zzzz)).y, r1.z, r1.y);
  r0.w = (r1.x * r1.y);
  o0 = (r0 * cb3_3.tint_symbol[38u].xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
