diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb13_struct {
  tint_symbol : array<vec4<f32>, 13u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb13_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> v11 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>) {
  x0[0u].x = v11[0u];
  x0[0u].y = v11[1u];
  x0[0u].z = v11[2u];
  x0[0u].w = v11[3u];
  r0 = textureSample(t3, s3, v4.xy.xyxx.xy);
  let v = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.yyy * v3.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(r0.xxx, v2.xyz, r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = max(r0.x, 0.0f);
  r0.x = sqrt(r0.x);
  let v_3 = fma(r0.xxx, v1.xyz, r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = clamp(fma(r0.xzzx, vec4<f32>(0.5f, -0.80000001192092895508f, 0.57142859697341918945f, 0.0f), vec4<f32>(0.5f, 0.20000000298023223877f, 0.42857143282890319824f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(r1.xxx, cb12_12.tint_symbol[1u].xyz, cb12_12.tint_symbol[2u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = fma(cb12_12.tint_symbol[7u].xyz, r1.yyy, r2.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(cb12_12.tint_symbol[0u].xyz, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  r0.w = dot(r0.xyz, cb12_12.tint_symbol[3u].xyz);
  let v_8 = dot(r0.xyz, v7.xyz);
  r0.x = clamp(vec4<f32>(v_8, v_8, v_8, v_8).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb12_12.tint_symbol[10u].z);
  r0.y = clamp(fma(r0.wwww, cb12_12.tint_symbol[12u].xxxx, cb12_12.tint_symbol[12u].yyyy).y, 0.0f, 1.0f);
  let v_9 = (r0.yyy * cb12_12.tint_symbol[4u].xyz);
  r0 = vec4<f32>(r0.x, v_9.xyz);
  let v_10 = (r0.yzw * cb12_12.tint_symbol[11u].xxx);
  r0 = vec4<f32>(r0.x, v_10.xyz);
  let v_11 = fma(cb12_12.tint_symbol[11u].yyy, r1.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_11.xyz);
  let v_12 = fma(cb12_12.tint_symbol[6u].xyz, cb12_12.tint_symbol[11u].zzz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_12.xyz);
  r1 = textureSample(t2, s2, v4.xy.xyxx.xy);
  r1.x = ((-(r1.yyyy)).x + 1.0f);
  let v_13 = -(cb12_12.tint_symbol[8u].xxxx);
  r1.x = (r1.x + v_13.x);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol[8u].yyyy)).x, 0.0f, 1.0f);
  r1.y = ((-(r1.xxxx)).y + 1.0f);
  o0.w = (r1.x * v1.w);
  r1.x = ((-(cb12_12.tint_symbol[10u].wwww)).x + 1.0f);
  r1.x = clamp(fma(r1.yyyy, cb12_12.tint_symbol[10u].wwww, r1.xxxx).x, 0.0f, 1.0f);
  let v_14 = (r1.xxx * v8.xyz);
  r1 = vec4<f32>(r1.x, v_14.xyz);
  let v_15 = fma(cb12_12.tint_symbol[5u].xyz, r0.yzw, r1.yzw);
  r0 = vec4<f32>(r0.x, v_15.xyz);
  r1.y = (r0.x * v7.w);
  r0.x = fma((-(r0.xxxx)).x, v7.w, v7.w);
  r0.x = fma(v7.w, r0.x, r1.y);
  r0.x = (r1.x * r0.x);
  let v_16 = (r0.xxx * cb12_12.tint_symbol[4u].xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = fma(r1.xyz, cb12_12.tint_symbol[10u].yyy, r0.yzw);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = fma(r0.xyz, v9.www, v9.xyz);
  o0 = vec4<f32>(v_18.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v7, v8, v9);
  return o0;
}
