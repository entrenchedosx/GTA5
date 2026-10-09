diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb28_struct {
  tint_symbol : array<vec4<f32>, 28u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb28_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> v11 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>) {
  x0[0u].x = v11[0u];
  x0[0u].y = v11[1u];
  x0[0u].z = v11[2u];
  x0[0u].w = v11[3u];
  r0 = textureSample(t7, s7, v5.zwzz.xy);
  let v = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.w = dot(r0.xy, r0.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = max(r0.w, 0.0f);
  r0.z = sqrt(r0.w);
  r1 = textureSample(t3, s3, v4.xy.xyxx.xy);
  let v_1 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = max(r0.w, 0.0f);
  r1.z = sqrt(r0.w);
  r2 = textureSample(t5, s5, v5.xyxx.xy);
  let v_2 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_2.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = max(r0.w, 0.0f);
  r2.z = sqrt(r0.w);
  r3 = textureSample(t2, s2, v4.xy.xyxx.xy).yxzw;
  r4 = textureSample(t4, s4, v5.xyxx.xy);
  r3.y = r4.y;
  r4 = textureSample(t6, s6, v5.zwzz.xy);
  r3.z = r4.y;
  let v_3 = fma((-(r3.xyzx)).xyz, r3.xyz, vec3<f32>(1.0f));
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = (r3.xyz * cb12_12.tint_symbol[16u].xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = (r3.xyz * cb12_12.tint_symbol[14u].xyz);
  r4 = vec4<f32>(v_5.xyz, r4.w);
  let v_6 = (r2.xyz * r4.yyy);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r1.xyz, r4.xxx, r2.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(r0.xyz, r4.zzz, r1.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_9 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r0.yyy * v3.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.xxx, v2.xyz, r1.xyz);
  r0 = vec4<f32>(v_11.xy, r0.z, v_11.z);
  let v_12 = fma(r0.zzz, v1.xyz, r0.xyw);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = clamp(fma(r0.xzzx, vec4<f32>(0.5f, -0.80000001192092895508f, 0.57142859697341918945f, 0.0f), vec4<f32>(0.5f, 0.20000000298023223877f, 0.42857143282890319824f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = fma(r1.xxx, cb12_12.tint_symbol[1u].xyz, cb12_12.tint_symbol[2u].xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = fma(cb12_12.tint_symbol[7u].xyz, r1.yyy, r2.xyz);
  r1 = vec4<f32>(v_15.xy, r1.z, v_15.z);
  let v_16 = fma(cb12_12.tint_symbol[0u].xyz, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r0.w = dot(r0.xyz, cb12_12.tint_symbol[3u].xyz);
  let v_17 = dot(r0.xyz, v7.xyz);
  r0.x = clamp(vec4<f32>(v_17, v_17, v_17, v_17).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb12_12.tint_symbol[10u].z);
  r0.y = clamp(fma(r0.wwww, cb12_12.tint_symbol[12u].xxxx, cb12_12.tint_symbol[12u].yyyy).y, 0.0f, 1.0f);
  let v_18 = (r0.yyy * cb12_12.tint_symbol[4u].xyz);
  r0 = vec4<f32>(r0.x, v_18.xyz);
  let v_19 = (r0.yzw * cb12_12.tint_symbol[11u].xxx);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  let v_20 = fma(cb12_12.tint_symbol[11u].yyy, r1.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_20.xyz);
  let v_21 = fma(cb12_12.tint_symbol[6u].xyz, cb12_12.tint_symbol[11u].zzz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_21.xyz);
  r1.x = fma(r3.x, cb12_12.tint_symbol[15u].x, v3.w);
  r1.x = fma(r3.y, cb12_12.tint_symbol[15u].y, r1.x);
  r1.x = fma(r3.z, cb12_12.tint_symbol[15u].z, r1.x);
  r1.y = max(r4.z, r4.y);
  r1.y = max(r1.y, r4.x);
  r1.z = (r1.y * v2.w);
  r1.y = fma((-(v2.wwww)).y, r1.y, 1.0f);
  r1.x = fma((-(r1.yyyy)).x, r1.x, r1.z);
  let v_22 = -(cb12_12.tint_symbol[8u].xxxx);
  r1.x = (r1.x + v_22.x);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol[8u].yyyy)).x, 0.0f, 1.0f);
  r1.y = ((-(r1.xxxx)).y + 1.0f);
  r1.x = (r1.x * v1.w);
  r1.z = ((-(cb12_12.tint_symbol[10u].wwww)).z + 1.0f);
  r1.y = clamp(fma(r1.yyyy, cb12_12.tint_symbol[10u].wwww, r1.zzzz).y, 0.0f, 1.0f);
  let v_23 = (r1.yyy * v8.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = fma(cb12_12.tint_symbol[5u].xyz, r0.yzw, r2.xyz);
  r0 = vec4<f32>(r0.x, v_24.xyz);
  r1.z = (r0.x * v7.w);
  r0.x = fma((-(r0.xxxx)).x, v7.w, v7.w);
  r0.x = fma(v7.w, r0.x, r1.z);
  r0.x = (r1.y * r0.x);
  let v_25 = (r0.xxx * cb12_12.tint_symbol[4u].xyz);
  r1 = vec4<f32>(r1.x, v_25.xyz);
  let v_26 = fma(r1.yzw, cb12_12.tint_symbol[10u].yyy, r0.yzw);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = fma(r0.xyz, v9.www, v9.xyz);
  o0 = vec4<f32>(v_27.xyz, o0.w);
  r0 = vec4<f32>(((v6.xy / v6.ww)).xy, r0.zw);
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_28 = -(cb12_12.tint_symbol[13u].zzzz);
  r0.y = (r0.x + v_28.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 1.0f)));
  r0.y = (cb12_12.tint_symbol[13u].w / r0.y);
  r0.y = (r0.y + (-(v6.wwww)).y);
  let v_29 = bitcast<u32>(r0.x);
  let v_30 = cb12_12.tint_symbol[27u].x;
  r0.x = select(r0.y, v_30, (v_29 != 0u));
  r0.x = clamp(((r0.xxxx / cb12_12.tint_symbol[27u].xxxx)).x, 0.0f, 1.0f);
  o0.w = (r0.x * r1.x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  return o0;
}
