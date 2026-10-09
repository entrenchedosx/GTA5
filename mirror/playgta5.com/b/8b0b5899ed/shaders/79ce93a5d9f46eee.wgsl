diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb73_struct {
  tint_symbol : array<vec4<f32>, 73u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb73_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol[72u].x / cb5_5.tint_symbol[72u].y);
  r0.y = 1.0f;
  r0 = vec4<f32>(r0.xy, ((v1.xy + vec2<f32>(-0.5f))).xy);
  let v = (r0.xy * r0.zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.y = sqrt(r0.x);
  r0.y = fma(cb5_5.tint_symbol[69u].y, r0.y, cb5_5.tint_symbol[69u].x);
  r0.x = fma(r0.x, r0.y, 1.0f);
  let v_1 = fma(r0.xx, r0.zw, vec2<f32>(0.5f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r1 = fma(cb5_5.tint_symbol[72u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), r0.xyxy);
  r2 = textureSample(t4, s4, r1.xyxx.xy);
  r3 = textureSample(t4, s4, r1.zwzz.xy);
  r0.z = (r2.y + r3.y);
  r2 = fma(cb5_5.tint_symbol[72u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), r0.xyxy);
  r3 = textureSample(t4, s4, r2.xyxx.xy);
  r0.z = (r0.z + r3.y);
  r3 = textureSample(t4, s4, r2.zwzz.xy);
  r0.z = (r0.z + r3.y);
  r3 = textureSample(t4, s4, r0.xyxx.xy);
  r0.z = fma(r3.y, 0.5f, r0.z);
  r0.z = fma((-(r0.zzzz)).z, 0.22222222387790679932f, 1.0f);
  let v_2 = fma(r0.xy, vec2<f32>(11.19999980926513671875f, 6.30000019073486328125f), cb5_5.tint_symbol[15u].xy);
  r3 = vec4<f32>(v_2.xy, r3.zw);
  r4 = textureSample(t10, s10, r0.xyxx.xy);
  let v_3 = fract(r3.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r3 = textureSample(t7, s7, r0.xyxx.xy);
  r0.x = (r3.y + -0.5f);
  r0.y = (r0.x * cb5_5.tint_symbol[48u].w);
  let v_4 = -(r0.zzzz);
  r0.y = fma(r0.y, v_4.y, r0.z);
  r3 = textureSample(t10, s10, r1.xyxx.xy);
  r1 = textureSample(t10, s10, r1.zwzz.xy);
  let v_5 = (r1.xz + r3.xz);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  r1 = textureSample(t10, s10, r2.xyxx.xy);
  r2 = textureSample(t10, s10, r2.zwzz.xy);
  let v_6 = (r0.zw + r1.xz);
  r0 = vec4<f32>(r0.xy, v_6.xy);
  let v_7 = (r2.xz + r0.zw);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = fma(r4.xz, vec2<f32>(0.5f), r0.zw);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = (r0.zw * vec2<f32>(0.22222222387790679932f));
  r0 = vec4<f32>(r0.xy, v_9.xy);
  r1.x = ((-(cb5_5.tint_symbol[48u].xxxx)).x + cb5_5.tint_symbol[48u].y);
  r1.x = fma(r1.x, r0.w, cb5_5.tint_symbol[48u].x);
  r0.x = fma(r1.x, r0.x, r0.w);
  let v_10 = ((-(cb5_5.tint_symbol[49u].xyzx)).xyz + cb5_5.tint_symbol[50u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.xxx, r1.xyz, cb5_5.tint_symbol[49u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma((-(r0.yyyy)).xyw, cb5_5.tint_symbol[48u].zzz, r1.xyz);
  r0 = vec4<f32>(v_12.xy, r0.z, v_12.z);
  let v_13 = ((-(cb5_5.tint_symbol[51u].xyzx)).xyz + cb5_5.tint_symbol[52u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r0.zzz, r1.xyz, cb5_5.tint_symbol[51u].xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = clamp(fma(r1.xyzx, r0.zzzz, r0.xywx).xyz, vec3<f32>(), vec3<f32>(1.0f));
  o0 = vec4<f32>(v_15.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
