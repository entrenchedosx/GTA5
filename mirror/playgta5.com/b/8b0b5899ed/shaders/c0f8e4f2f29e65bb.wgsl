diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb23_struct;

struct cb24_struct {
  tint_symbol_2 : array<vec4<f32>, 24u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb24_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> v11 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>) {
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
  let v_4 = (r3.xyz * cb12_12.tint_symbol_2[16u].xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = (r3.xyz * cb12_12.tint_symbol_2[14u].xyz);
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
  let v_13 = fma(v0.xyz, v0.www, cb12_12.tint_symbol_2[23u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_1[3u].x);
  r2.y = ((-(r1.xxxx)).y + cb3_3.tint_symbol_1[4u].x);
  r2.z = ((-(r1.xxxx)).z + cb3_3.tint_symbol_1[5u].x);
  r2.w = ((-(r1.xxxx)).w + cb3_3.tint_symbol_1[6u].x);
  r5 = (r0.xxxx * r2);
  r2 = (r2 * r2);
  r6.x = ((-(r1.yyyy)).x + cb3_3.tint_symbol_1[3u].y);
  r6.y = ((-(r1.yyyy)).y + cb3_3.tint_symbol_1[4u].y);
  r6.z = ((-(r1.yyyy)).z + cb3_3.tint_symbol_1[5u].y);
  r6.w = ((-(r1.yyyy)).w + cb3_3.tint_symbol_1[6u].y);
  r5 = fma(r6, r0.yyyy, r5);
  r2 = fma(r6, r6, r2);
  r6.x = ((-(r1.zzzz)).x + cb3_3.tint_symbol_1[3u].z);
  r6.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_1[4u].z);
  r6.z = ((-(r1.zzzz)).z + cb3_3.tint_symbol_1[5u].z);
  r6.w = ((-(r1.zzzz)).w + cb3_3.tint_symbol_1[6u].z);
  r1 = fma(r6, r0.zzzz, r5);
  r2 = fma(r6, r6, r2);
  r5.x = (-(cb3_3.tint_symbol_1[3u].wwww)).x;
  r5.y = (-(cb3_3.tint_symbol_1[4u].wwww)).y;
  r5.z = (-(cb3_3.tint_symbol_1[5u].wwww)).z;
  r5.w = (-(cb3_3.tint_symbol_1[6u].wwww)).w;
  r5 = fma(r2, r5, vec4<f32>(1.0f));
  r2 = inverseSqrt(r2);
  r6.x = cb3_3.tint_symbol_1[11u].w;
  r6.y = cb3_3.tint_symbol_1[12u].w;
  r6.z = cb3_3.tint_symbol_1[13u].w;
  r6.w = cb3_3.tint_symbol_1[14u].w;
  r7 = (-(r6) + vec4<f32>(1.0f));
  r6 = fma(r7, r5, r6);
  r5 = clamp((r5 / r6), vec4<f32>(), vec4<f32>(1.0f));
  r1 = (r1 * r5);
  r1 = clamp((r2 * r1), vec4<f32>(), vec4<f32>(1.0f));
  r2.x = cb3_3.tint_symbol_1[19u].x;
  r2.y = cb3_3.tint_symbol_1[20u].x;
  r2.z = cb3_3.tint_symbol_1[21u].x;
  r2.w = cb3_3.tint_symbol_1[22u].x;
  r2.x = dot(r2, r1);
  r5.x = cb3_3.tint_symbol_1[19u].y;
  r5.y = cb3_3.tint_symbol_1[20u].y;
  r5.z = cb3_3.tint_symbol_1[21u].y;
  r5.w = cb3_3.tint_symbol_1[22u].y;
  r2.y = dot(r5, r1);
  r5.x = cb3_3.tint_symbol_1[19u].z;
  r5.y = cb3_3.tint_symbol_1[20u].z;
  r5.z = cb3_3.tint_symbol_1[21u].z;
  r5.w = cb3_3.tint_symbol_1[22u].z;
  r2.z = dot(r5, r1);
  let v_14 = clamp(fma(r0.xzzx, vec4<f32>(0.5f, -0.80000001192092895508f, 0.57142859697341918945f, 0.0f), vec4<f32>(0.5f, 0.20000000298023223877f, 0.42857143282890319824f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(r1.xxx, cb12_12.tint_symbol_2[1u].xyz, cb12_12.tint_symbol_2[2u].xyz);
  r5 = vec4<f32>(v_15.xyz, r5.w);
  let v_16 = fma(cb12_12.tint_symbol_2[7u].xyz, r1.yyy, r5.xyz);
  r1 = vec4<f32>(v_16.xy, r1.z, v_16.z);
  let v_17 = fma(cb12_12.tint_symbol_2[0u].xyz, r1.zzz, r1.xyw);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r0.w = dot(r0.xyz, cb12_12.tint_symbol_2[3u].xyz);
  let v_18 = dot(r0.xyz, v7.xyz);
  r0.x = clamp(vec4<f32>(v_18, v_18, v_18, v_18).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb12_12.tint_symbol_2[10u].z);
  r0.y = clamp(fma(r0.wwww, cb12_12.tint_symbol_2[12u].xxxx, cb12_12.tint_symbol_2[12u].yyyy).y, 0.0f, 1.0f);
  let v_19 = (r0.yyy * cb12_12.tint_symbol_2[4u].xyz);
  r0 = vec4<f32>(r0.x, v_19.xyz);
  let v_20 = (r0.yzw * cb12_12.tint_symbol_2[11u].xxx);
  r0 = vec4<f32>(r0.x, v_20.xyz);
  let v_21 = fma(cb12_12.tint_symbol_2[11u].yyy, r1.xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_21.xyz);
  let v_22 = fma(cb12_12.tint_symbol_2[6u].xyz, cb12_12.tint_symbol_2[11u].zzz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_22.xyz);
  r1.x = fma(r3.x, cb12_12.tint_symbol_2[15u].x, v3.w);
  r1.x = fma(r3.y, cb12_12.tint_symbol_2[15u].y, r1.x);
  r1.x = fma(r3.z, cb12_12.tint_symbol_2[15u].z, r1.x);
  r1.y = max(r4.z, r4.y);
  r1.y = max(r1.y, r4.x);
  r1.z = (r1.y * v2.w);
  r1.y = fma((-(v2.wwww)).y, r1.y, 1.0f);
  r1.x = fma((-(r1.yyyy)).x, r1.x, r1.z);
  let v_23 = -(cb12_12.tint_symbol_2[8u].xxxx);
  r1.x = (r1.x + v_23.x);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_2[8u].yyyy)).x, 0.0f, 1.0f);
  r1.y = (r1.x * v1.w);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  let v_24 = fma(r2.xyz, r1.yyy, r0.yzw);
  r0 = vec4<f32>(r0.x, v_24.xyz);
  o0.w = r1.y;
  r1.y = ((-(cb12_12.tint_symbol_2[10u].wwww)).y + 1.0f);
  r1.x = clamp(fma(r1.xxxx, cb12_12.tint_symbol_2[10u].wwww, r1.yyyy).x, 0.0f, 1.0f);
  let v_25 = (r1.xxx * v8.xyz);
  r1 = vec4<f32>(r1.x, v_25.xyz);
  let v_26 = fma(cb12_12.tint_symbol_2[5u].xyz, r0.yzw, r1.yzw);
  r0 = vec4<f32>(r0.x, v_26.xyz);
  r1.y = (r0.x * v7.w);
  r0.x = fma((-(r0.xxxx)).x, v7.w, v7.w);
  r0.x = fma(v7.w, r0.x, r1.y);
  r0.x = (r1.x * r0.x);
  let v_27 = (r0.xxx * cb12_12.tint_symbol_2[4u].xyz);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  let v_28 = fma(r1.xyz, cb12_12.tint_symbol_2[10u].yyy, r0.yzw);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = fma(r0.xyz, v9.www, v9.xyz);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_30.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v5, v7, v8, v9);
  return o0;
}
