diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = (cb5_5.tint_symbol[66u].x / cb5_5.tint_symbol[66u].y);
  r0.y = 1.0f;
  r0 = vec4<f32>(r0.xy, ((v1.xy + vec2<f32>(-0.5f))).xy);
  let v = (r0.xy * r0.zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.x = dot(r0.xy, r0.xy);
  r0.y = sqrt(r0.x);
  r0.y = fma(cb5_5.tint_symbol[63u].y, r0.y, cb5_5.tint_symbol[63u].x);
  r0.x = fma(r0.x, r0.y, 1.0f);
  let v_1 = fma(r0.xx, r0.zw, vec2<f32>(0.5f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r1 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-1.0f, -0.5f, 0.5f, -1.0f), r0.xyxy);
  r0.z = textureSample(t4, s4, r1.xyxx.xy).y;
  r0.w = textureSample(t4, s4, r1.zwzz.xy).y;
  r0.z = (r0.w + r0.z);
  r2 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-0.5f, 1.0f, 1.0f, 0.5f), r0.xyxy);
  r0.w = textureSample(t4, s4, r2.xyxx.xy).y;
  r0.z = (r0.w + r0.z);
  r0.w = textureSample(t4, s4, r2.zwzz.xy).y;
  r0.z = (r0.w + r0.z);
  r0.w = textureSample(t4, s4, r0.xyxx.xy).y;
  r0.z = fma(r0.w, 0.5f, r0.z);
  r0.z = fma((-(r0.zzzz)).z, 0.22222222387790679932f, 1.0f);
  let v_2 = fma(r0.xy, vec2<f32>(11.19999980926513671875f, 6.30000019073486328125f), cb5_5.tint_symbol[10u].xy);
  r3 = vec4<f32>(v_2.xy, r3.zw);
  let v_3 = textureSample(t10, s10, r0.xyxx.xy).xz;
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = fract(r3.xy);
  r3 = vec4<f32>(v_4.xy, r3.zw);
  r0.w = textureSample(t7, s7, r3.xyxx.xy).y;
  r0.w = (r0.w + -0.5f);
  r3.x = (r0.w * cb5_5.tint_symbol[42u].w);
  let v_5 = -(r0.zzzz);
  r0.z = fma(r3.x, v_5.z, r0.z);
  let v_6 = textureSample(t10, s10, r1.xyxx.xy).xz;
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = textureSample(t10, s10, r1.zwzz.xy).xz;
  r1 = vec4<f32>(r1.xy, v_7.xy);
  let v_8 = (r1.zw + r1.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = textureSample(t10, s10, r2.xyxx.xy).xz;
  r1 = vec4<f32>(r1.xy, v_9.xy);
  let v_10 = textureSample(t10, s10, r2.zwzz.xy).xz;
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = (r1.zw + r1.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  let v_12 = (r2.xy + r1.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  let v_13 = fma(r0.xy, vec2<f32>(0.5f), r1.xy);
  r0 = vec4<f32>(v_13.xy, r0.zw);
  let v_14 = (r0.xy * vec2<f32>(0.22222222387790679932f));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  r1.x = ((-(cb5_5.tint_symbol[42u].xxxx)).x + cb5_5.tint_symbol[42u].y);
  r1.x = fma(r1.x, r0.y, cb5_5.tint_symbol[42u].x);
  r0.y = fma(r1.x, r0.w, r0.y);
  let v_15 = ((-(cb5_5.tint_symbol[43u].xyzx)).xyz + cb5_5.tint_symbol[44u].xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r0.yyy, r1.xyz, cb5_5.tint_symbol[43u].xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = fma((-(r0.zzzz)).yzw, cb5_5.tint_symbol[42u].zzz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_17.xyz);
  let v_18 = ((-(cb5_5.tint_symbol[45u].xyzx)).xyz + cb5_5.tint_symbol[46u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = fma(r0.xxx, r1.xyz, cb5_5.tint_symbol[45u].xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = clamp(fma(r1.xyzx, r0.xxxx, r0.yzwy).xyz, vec3<f32>(), vec3<f32>(1.0f));
  o0 = vec4<f32>(v_20.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
