diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb28_struct {
  tint_symbol : array<vec4<f32>, 28u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb28_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = textureSample(t3, s3, v5.xy.xyxx.xy);
  let v = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.yyy * v4.xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(r0.xxx, v3.xyz, r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r0.x = dot(r0.xy, r0.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = max(r0.x, 0.0f);
  r0.x = sqrt(r0.x);
  let v_3 = fma(r0.xxx, v2.xyz, r1.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = clamp(fma(r0.xzzx, vec4<f32>(0.5f, -0.80000001192092895508f, 0.57142859697341918945f, 0.0f), vec4<f32>(0.5f, 0.20000000298023223877f, 0.42857143282890319824f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r0.x = dot(r0.xyz, cb12_12.tint_symbol[3u].xyz);
  r0.x = clamp(fma(r0.xxxx, cb12_12.tint_symbol[12u].xxxx, cb12_12.tint_symbol[12u].yyyy).x, 0.0f, 1.0f);
  let v_5 = (r0.xxx * cb12_12.tint_symbol[4u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xyz * cb12_12.tint_symbol[11u].xxx);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r1.xxx, cb12_12.tint_symbol[1u].xyz, cb12_12.tint_symbol[2u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = fma(cb12_12.tint_symbol[7u].xyz, r1.yyy, r2.xyz);
  r1 = vec4<f32>(v_8.xy, r1.z, v_8.z);
  let v_9 = fma(cb12_12.tint_symbol[0u].xyz, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(cb12_12.tint_symbol[11u].yyy, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(cb12_12.tint_symbol[6u].xyz, cb12_12.tint_symbol[11u].zzz, r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (r0.xyz * cb12_12.tint_symbol[5u].xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = fma(r0.xyz, v7.www, v7.xyz);
  o0 = vec4<f32>(v_13.xyz, o0.w);
  r0 = vec4<f32>(((v6.xy / v6.ww)).xy, r0.zw);
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_14 = -(cb12_12.tint_symbol[13u].zzzz);
  r0.y = (r0.x + v_14.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 1.0f)));
  r0.y = (cb12_12.tint_symbol[13u].w / r0.y);
  r0.y = (r0.y + (-(v6.wwww)).y);
  let v_15 = bitcast<u32>(r0.x);
  let v_16 = cb12_12.tint_symbol[27u].x;
  r0.x = select(r0.y, v_16, (v_15 != 0u));
  r0.x = clamp(((r0.xxxx / cb12_12.tint_symbol[27u].xxxx)).x, 0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol[8u].z == 0.0f))));
  let v_17 = bitcast<u32>(r0.y);
  r0.x = select(1.0f, r0.x, (v_17 != 0u));
  r1 = textureSample(t2, s2, v5.xy.xyxx.xy);
  r0.y = ((-(r1.yyyy)).y + 1.0f);
  let v_18 = -(cb12_12.tint_symbol[8u].xxxx);
  r0.y = (r0.y + v_18.y);
  r0.y = clamp(((r0.yyyy * cb12_12.tint_symbol[8u].yyyy)).y, 0.0f, 1.0f);
  r0.y = (r0.y * v2.w);
  o0.w = (r0.x * r0.y);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2, v3, v4, v5, v6, v7);
  return o0;
}
