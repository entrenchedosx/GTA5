diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb23_struct;

struct cb28_struct {
  tint_symbol_2 : array<vec4<f32>, 28u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb28_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> v11 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>) {
  x0[0u].x = v11[0u];
  x0[0u].y = v11[1u];
  x0[0u].z = v11[2u];
  x0[0u].w = v11[3u];
  r0.x = (-(cb3_3.tint_symbol_1[3u].wwww)).x;
  r0.y = (-(cb3_3.tint_symbol_1[4u].wwww)).y;
  r0.z = (-(cb3_3.tint_symbol_1[5u].wwww)).z;
  r0.w = (-(cb3_3.tint_symbol_1[6u].wwww)).w;
  let v = fma(v0.xyz, v0.www, cb12_12.tint_symbol_2[23u].xyz);
  r1 = vec4<f32>(v.xyz, r1.w);
  r2.x = ((-(r1.xxxx)).x + cb3_3.tint_symbol_1[3u].x);
  r2.y = ((-(r1.xxxx)).y + cb3_3.tint_symbol_1[4u].x);
  r2.z = ((-(r1.xxxx)).z + cb3_3.tint_symbol_1[5u].x);
  r2.w = ((-(r1.xxxx)).w + cb3_3.tint_symbol_1[6u].x);
  r3 = (r2 * r2);
  r4.x = ((-(r1.yyyy)).x + cb3_3.tint_symbol_1[3u].y);
  r4.y = ((-(r1.yyyy)).y + cb3_3.tint_symbol_1[4u].y);
  r4.z = ((-(r1.yyyy)).z + cb3_3.tint_symbol_1[5u].y);
  r4.w = ((-(r1.yyyy)).w + cb3_3.tint_symbol_1[6u].y);
  r3 = fma(r4, r4, r3);
  r5.x = ((-(r1.zzzz)).x + cb3_3.tint_symbol_1[3u].z);
  r5.y = ((-(r1.zzzz)).y + cb3_3.tint_symbol_1[4u].z);
  r5.z = ((-(r1.zzzz)).z + cb3_3.tint_symbol_1[5u].z);
  r5.w = ((-(r1.zzzz)).w + cb3_3.tint_symbol_1[6u].z);
  r1 = fma(r5, r5, r3);
  r0 = fma(r1, r0, vec4<f32>(1.0f));
  r1 = inverseSqrt(r1);
  r3.x = cb3_3.tint_symbol_1[11u].w;
  r3.y = cb3_3.tint_symbol_1[12u].w;
  r3.z = cb3_3.tint_symbol_1[13u].w;
  r3.w = cb3_3.tint_symbol_1[14u].w;
  r6 = (-(r3) + vec4<f32>(1.0f));
  r3 = fma(r6, r0, r3);
  r0 = clamp((r0 / r3), vec4<f32>(), vec4<f32>(1.0f));
  r3 = textureSample(t3, s3, v4.xy.xyxx.xy);
  let v_1 = fma(r3.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r3 = vec4<f32>(v_1.xy, r3.zw);
  let v_2 = (r3.yyy * v3.xyz);
  r6 = vec4<f32>(v_2.xyz, r6.w);
  let v_3 = fma(r3.xxx, v2.xyz, r6.xyz);
  r6 = vec4<f32>(v_3.xyz, r6.w);
  r3.x = dot(r3.xy, r3.xy);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r3.x = max(r3.x, 0.0f);
  r3.x = sqrt(r3.x);
  let v_4 = fma(r3.xxx, v1.xyz, r6.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  r2 = (r2 * r3.xxxx);
  r2 = fma(r4, r3.yyyy, r2);
  r2 = fma(r5, r3.zzzz, r2);
  r0 = (r0 * r2);
  r0 = clamp((r1 * r0), vec4<f32>(), vec4<f32>(1.0f));
  r1.x = cb3_3.tint_symbol_1[19u].x;
  r1.y = cb3_3.tint_symbol_1[20u].x;
  r1.z = cb3_3.tint_symbol_1[21u].x;
  r1.w = cb3_3.tint_symbol_1[22u].x;
  r1.x = dot(r1, r0);
  r2.x = cb3_3.tint_symbol_1[19u].y;
  r2.y = cb3_3.tint_symbol_1[20u].y;
  r2.z = cb3_3.tint_symbol_1[21u].y;
  r2.w = cb3_3.tint_symbol_1[22u].y;
  r1.y = dot(r2, r0);
  r2.x = cb3_3.tint_symbol_1[19u].z;
  r2.y = cb3_3.tint_symbol_1[20u].z;
  r2.z = cb3_3.tint_symbol_1[21u].z;
  r2.w = cb3_3.tint_symbol_1[22u].z;
  r1.z = dot(r2, r0);
  r0 = vec4<f32>(((v6.xy / v6.ww)).xy, r0.zw);
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_5 = -(cb12_12.tint_symbol_2[13u].zzzz);
  r0.y = (r0.x + v_5.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 1.0f)));
  r0.y = (cb12_12.tint_symbol_2[13u].w / r0.y);
  r0.y = (r0.y + (-(v6.wwww)).y);
  let v_6 = bitcast<u32>(r0.x);
  let v_7 = cb12_12.tint_symbol_2[27u].x;
  r0.x = select(r0.y, v_7, (v_6 != 0u));
  r0.x = clamp(((r0.xxxx / cb12_12.tint_symbol_2[27u].xxxx)).x, 0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[8u].z == 0.0f))));
  let v_8 = bitcast<u32>(r0.y);
  r0.x = select(1.0f, r0.x, (v_8 != 0u));
  r2 = textureSample(t2, s2, v4.xy.xyxx.xy);
  r0.y = ((-(r2.yyyy)).y + 1.0f);
  let v_9 = -(cb12_12.tint_symbol_2[8u].xxxx);
  r0.y = (r0.y + v_9.y);
  r0.y = clamp(((r0.yyyy * cb12_12.tint_symbol_2[8u].yyyy)).y, 0.0f, 1.0f);
  r0.z = (r0.y * v1.w);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.x = (r0.x * r0.z);
  let v_10 = clamp(fma(r3.xzzx, vec4<f32>(0.5f, -0.80000001192092895508f, 0.57142859697341918945f, 0.0f), vec4<f32>(0.5f, 0.20000000298023223877f, 0.42857143282890319824f, 0.0f)).xyz, vec3<f32>(), vec3<f32>(1.0f));
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(r2.xxx, cb12_12.tint_symbol_2[1u].xyz, cb12_12.tint_symbol_2[2u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = fma(cb12_12.tint_symbol_2[7u].xyz, r2.yyy, r4.xyz);
  r2 = vec4<f32>(v_12.xy, r2.z, v_12.z);
  let v_13 = fma(cb12_12.tint_symbol_2[0u].xyz, r2.zzz, r2.xyw);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r0.z = dot(r3.xyz, cb12_12.tint_symbol_2[3u].xyz);
  let v_14 = dot(r3.xyz, v7.xyz);
  r0.w = clamp(vec4<f32>(v_14, v_14, v_14, v_14).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb12_12.tint_symbol_2[10u].z);
  r0.z = clamp(fma(r0.zzzz, cb12_12.tint_symbol_2[12u].xxxx, cb12_12.tint_symbol_2[12u].yyyy).z, 0.0f, 1.0f);
  let v_15 = (r0.zzz * cb12_12.tint_symbol_2[4u].xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = (r3.xyz * cb12_12.tint_symbol_2[11u].xxx);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(cb12_12.tint_symbol_2[11u].yyy, r2.xyz, r3.xyz);
  r2 = vec4<f32>(v_17.xyz, r2.w);
  let v_18 = fma(cb12_12.tint_symbol_2[6u].xyz, cb12_12.tint_symbol_2[11u].zzz, r2.xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = fma(r1.xyz, r0.xxx, r2.xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  o0.w = r0.x;
  r0.x = ((-(cb12_12.tint_symbol_2[10u].wwww)).x + 1.0f);
  r0.x = clamp(fma(r0.yyyy, cb12_12.tint_symbol_2[10u].wwww, r0.xxxx).x, 0.0f, 1.0f);
  let v_20 = (r0.xxx * v8.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = fma(cb12_12.tint_symbol_2[5u].xyz, r1.xyz, r2.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r0.y = (r0.w * v7.w);
  r0.z = fma((-(r0.wwww)).z, v7.w, v7.w);
  r0.y = fma(v7.w, r0.z, r0.y);
  r0.x = (r0.x * r0.y);
  let v_22 = (r0.xxx * cb12_12.tint_symbol_2[4u].xyz);
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = fma(r0.xyz, cb12_12.tint_symbol_2[10u].yyy, r1.xyz);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = fma(r0.xyz, v9.www, v9.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_25.xyz, o0.w);
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v3, v4, v6, v7, v8, v9);
  return o0;
}
