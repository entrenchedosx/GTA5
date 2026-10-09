diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb33_struct {
  tint_symbol_1 : array<vec4<f32>, 33u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb33_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>) {
  r0.z = 0.0f;
  r1 = (v5 * cb12_12.tint_symbol_1[32u].xxxx);
  r2 = textureSample(t6, s6, r1.xyxx.xy);
  r2.w = (r2.x + -0.5f);
  r3 = (v4.yxwz * cb12_12.tint_symbol_1[32u].xxxx);
  r4 = textureSample(t4, s4, r3.yxyy.xy);
  r2.y = (r4.x + -0.5f);
  r4 = textureSample(t4, s4, r1.zwzz.xy);
  r2.z = (r4.x + -0.5f);
  r4 = textureSample(t4, s4, r3.wzww.xy);
  r2.x = (r4.x + -0.5f);
  r0.w = dot(r2.yzxw, cb12_12.tint_symbol_1[31u]);
  r4.x = (r2.y * cb12_12.tint_symbol_1[17u].x);
  r4.y = (r2.z * cb12_12.tint_symbol_1[20u].y);
  r5 = (v1 * cb12_12.tint_symbol_1[32u].xxxx);
  r6 = textureSample(t3, s3, r5.zwzz.xy);
  let v = r6;
  r7 = vec4<f32>(r7.xy, v.xy);
  r8 = textureSample(t3, s3, r5.xyxx.xy);
  let v_1 = r8;
  r7 = vec4<f32>(v_1.xz, r7.zw);
  r2.z = dot(r7, cb12_12.tint_symbol_1[30u]);
  r8.x = r7.x;
  r0.w = (r0.w + r2.z);
  let v_2 = r3;
  let v_3 = r9;
  r9 = vec4<f32>(v_2.y, v_3.y, v_2.w, v_3.w);
  let v_4 = r1;
  let v_5 = r9;
  r9 = vec4<f32>(v_5.x, v_4.z, v_5.z, v_4.x);
  let v_6 = r1;
  let v_7 = r3;
  r3 = vec4<f32>(v_7.x, v_6.w, v_7.z, v_6.y);
  r1.x = dot(r3, cb12_12.tint_symbol_1[31u]);
  r1.y = dot(r9, cb12_12.tint_symbol_1[31u]);
  r1.z = dot(r5.xz, cb12_12.tint_symbol_1[30u].xy);
  r1.w = dot(r5.yw, cb12_12.tint_symbol_1[30u].xy);
  r1.x = (r1.x + r1.w);
  r0.y = fract(r1.x);
  r1.x = (r1.y + r1.z);
  r0.x = fract(r1.x);
  let v_8 = ((-(r0.wwww)).xyz + r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(cb12_12.tint_symbol_1[32u].yyy, r0.xyz, r0.www);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r0.w = (r2.x * cb12_12.tint_symbol_1[19u].z);
  r0.w = fma(r0.w, cb12_12.tint_symbol_1[17u].z, r6.x);
  r0.w = (r0.w * cb12_12.tint_symbol_1[18u].x);
  r0.w = dot(r0.ww, r7.xx);
  r0.w = clamp(((-(r0.wwww) + vec4<f32>(1.0f))).w, 0.0f, 1.0f);
  let v_10 = (r0.ww * r4.xy);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = (r8.zz * r1.xy);
  r1 = vec4<f32>(v_11.xy, r1.zw);
  r2.y = ((-(r8.zzzz)).y + 1.0f);
  r3.x = cb12_12.tint_symbol_1[17u].z;
  r3.y = cb12_12.tint_symbol_1[20u].y;
  let v_12 = fma(r2.xy, r3.xy, r1.xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r8.y = 0.0f;
  let v_13 = (r1.xy + r8.xy);
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r2.x = (r1.x * cb12_12.tint_symbol_1[18u].y);
  r2.y = (r1.y * cb12_12.tint_symbol_1[20u].z);
  r1.y = (-(cb12_12.tint_symbol_1[20u].wwww)).y;
  let v_14 = (-(cb12_12.tint_symbol_1[18u].zzwz)).xz;
  let v_15 = r1;
  r1 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
  let v_16 = clamp(((r1.xyxx + r2.xyxx)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_16.xy, r1.zw);
  let v_17 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r0.w = dot(v2, v2);
  r0.w = inverseSqrt(r0.w);
  r0.w = (r0.w * v2.z);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(5.0f), r1.zzzz).w, 0.0f, 1.0f);
  let v_18 = (r0.ww * r1.xy);
  r1 = vec4<f32>(v_18.xy, r1.zw);
  r1.z = 0.0f;
  let v_19 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb12_12.tint_symbol_1[32u].yy == vec2<f32>(4.0f, 2.0f))));
  r2 = vec4<f32>(v_19.xy, r2.zw);
  let v_20 = bitcast<vec3<u32>>(r2.yyy);
  let v_21 = r1.xyz;
  let v_22 = select(r0.xyz, v_21, (v_20 != vec3<u32>()));
  r0 = vec4<f32>(v_22.xyz, r0.w);
  let v_23 = bitcast<vec3<u32>>(r2.xxx);
  let v_24 = select(r0.xyz, vec3<f32>(0.5f, 0.0f, 1.0f), (v_23 != vec3<u32>()));
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_25.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v4, v5);
  return o0;
}
