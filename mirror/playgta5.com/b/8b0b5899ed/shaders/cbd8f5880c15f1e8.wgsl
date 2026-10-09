diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.zwzz.xy);
  r0.y = (cb5_5.tint_symbol_1[0u].w + 1.0f);
  r0.x = ((-(r0.xxxx)).x + r0.y);
  r1.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r2 = textureSample(t3, s3, v2.xyxx.xy);
  let v = -(r2.xxxx);
  r0.x = (r0.y + v.x);
  r1.y = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r2 = textureSample(t3, s3, v2.zwzz.xy);
  let v_1 = -(r2.xxxx);
  r0.x = (r0.y + v_1.x);
  r1.z = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r2 = textureSample(t3, s3, v3.xy.xyxx.xy);
  let v_2 = -(r2.xxxx);
  r0.x = (r0.y + v_2.x);
  r1.w = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_3 = -(cb5_5.tint_symbol_1[3u].xxxx);
  r1 = (r1 + v_3);
  r1 = clamp(fma(-(r1), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r2.z = 0.0f;
  let v_4 = r3;
  r3 = vec4<f32>(2.0f, v_4.y, 3.0f, v_4.w);
  let v_5 = cb2_2.tint_symbol[18u];
  let v_6 = r3;
  r3 = vec4<f32>(v_6.x, v_5.w, v_6.z, v_5.w);
  let v_7 = (r3.xyy * vec3<f32>(0.0f, 0.5f, 0.25f));
  r2 = vec4<f32>(v_7.xy, r2.z, v_7.z);
  r4 = (r2.zwxy + v1.zwzw);
  r5 = textureSample(t3, s3, r4.xyxx.xy);
  r4 = textureSample(t3, s3, r4.zwzz.xy);
  let v_8 = -(r4.xxxx);
  r0.x = (r0.y + v_8.x);
  r4.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_9 = -(r5.xxxx);
  r0.x = (r0.y + v_9.x);
  r5.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r6 = (r2.zwzw + v2);
  r2 = (r2.zwxy + v3.xy.xyxy);
  r7 = textureSample(t3, s3, r6.xyxx.xy);
  r6 = textureSample(t3, s3, r6.zwzz.xy);
  let v_10 = -(r6.xxxx);
  r0.x = (r0.y + v_10.x);
  r5.z = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_11 = -(r7.xxxx);
  r0.x = (r0.y + v_11.x);
  r5.y = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r6 = textureSample(t3, s3, r2.xyxx.xy);
  r2 = textureSample(t3, s3, r2.zwzz.xy);
  let v_12 = -(r2.xxxx);
  r0.x = (r0.y + v_12.x);
  r4.w = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_13 = -(r6.xxxx);
  r0.x = (r0.y + v_13.x);
  r5.w = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r2 = (r5 + v_3);
  r2 = clamp(fma(-(r2), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r1 = max(r1, r2);
  r2 = fma(vec4<f32>(0.0f, 0.5f, 0.0f, 0.5f), r3.xyxy, v2);
  r5 = textureSample(t3, s3, r2.xyxx.xy);
  r2 = textureSample(t3, s3, r2.zwzz.xy);
  let v_14 = -(r2.xxxx);
  r0.x = (r0.y + v_14.x);
  r4.z = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_15 = -(r5.xxxx);
  r0.x = (r0.y + v_15.x);
  r4.y = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r2 = (r4 + v_3);
  r2 = clamp(fma(-(r2), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r1 = max(r1, r2);
  let v_16 = fma(vec2<f32>(0.0f, 0.75f), r3.zw, v1.zw);
  let v_17 = r0;
  r0 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
  r2 = textureSample(t3, s3, r0.xzxx.xy);
  let v_18 = -(r2.xxxx);
  r0.x = (r0.y + v_18.x);
  r2.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_19 = fma(vec2<f32>(0.0f, 0.75f), r3.zw, v3.xy);
  let v_20 = r0;
  r0 = vec4<f32>(v_19.x, v_20.y, v_19.y, v_20.w);
  r3 = fma(vec4<f32>(0.0f, 0.75f, 0.0f, 0.75f), r3.zwzw, v2);
  r4 = textureSample(t3, s3, r0.xzxx.xy);
  let v_21 = -(r4.xxxx);
  r0.x = (r0.y + v_21.x);
  r2.w = (cb5_5.tint_symbol_1[0u].z / r0.x);
  r4 = textureSample(t3, s3, r3.xyxx.xy);
  r3 = textureSample(t3, s3, r3.zwzz.xy);
  let v_22 = -(r3.xxxx);
  r0.x = (r0.y + v_22.x);
  let v_23 = -(r4.xxxx);
  r0.y = (r0.y + v_23.y);
  let v_24 = (cb5_5.tint_symbol_1[0u].zz / r0.yx);
  let v_25 = r2;
  r2 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  r0 = (r2 + v_3);
  r0 = clamp(fma(-(r0), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r0 = max(r0, r1);
  let v_26 = max(r0.yw, r0.xz);
  r0 = vec4<f32>(v_26.xy, r0.zw);
  o0.w = max(r0.y, r0.x);
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v_27 = r0;
  o0 = vec4<f32>(v_27.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
