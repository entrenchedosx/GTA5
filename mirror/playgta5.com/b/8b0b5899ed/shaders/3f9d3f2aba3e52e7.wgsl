diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(1u) @binding(4u) var<uniform> cb4_4 : cb3_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> v3 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>) {
  x0[0u].x = v3[0u];
  x0[0u].y = v3[1u];
  x0[0u].z = v3[2u];
  x0[0u].w = v3[3u];
  let v = (v0.xy * cb10_10.tint_symbol_3[0u].zz);
  r0 = vec4<f32>(v.xy, r0.zw);
  r0 = textureSample(t10, s10, r0.xyxx.xy);
  let v_1 = fma(r0.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy * cb10_10.tint_symbol_3[0u].xx);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.z = 1.0f;
  let v_3 = -(r0.xyzx);
  r0.w = dot(v_3.xyz, (-(r0.xyzx)).xyz);
  r0.w = inverseSqrt(r0.w);
  let v_4 = fma(r0.xyz, r0.www, vec3<f32>(0.0f, 0.0f, -1.0f));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = -(r0.xyzx);
  let v_6 = (r0.www * v_5.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = fma(r1.xyz, vec3<f32>(0.8333333134651184082f), r0.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (v0.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_9 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = (r0.w + r0.w);
  let v_10 = -(r0.wwww);
  let v_11 = fma(r1.xyz, v_10.xyz, r2.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = (r1.xy * vec2<f32>(0.25f, 0.5f));
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r0.w = (abs(r1.zzzz).w + 1.0f);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  let v_13 = (r1.xy / r0.ww);
  r1 = vec4<f32>(v_13.xy, r1.zw);
  let v_14 = ((-(r1.xxyx)).yz + vec2<f32>(0.25f, 0.5f));
  let v_15 = r3;
  r3 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r0.w = ((-(r3.yyyy)).w + 1.0f);
  let v_16 = bitcast<u32>(r1.z);
  let v_17 = r0.w;
  r3.x = select(r3.y, v_17, (v_16 != 0u));
  r1 = textureSample(t1, s1, r3.xzxx.xy);
  r0.w = dot(r2.xyz, r0.xyz);
  r1.w = fma((-(r0.wwww)).w, r0.w, 1.0f);
  r2.w = (cb4_4.tint_symbol_2[2u].y * cb4_4.tint_symbol_2[2u].y);
  r1.w = fma((-(r2.wwww)).w, r1.w, 1.0f);
  r2.w = sqrt(r1.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 0.0f)));
  r0.w = fma(cb4_4.tint_symbol_2[2u].y, r0.w, r2.w);
  let v_18 = (r0.xyz * r0.www);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = -(r0.xyzx);
  let v_20 = fma(cb4_4.tint_symbol_2[2u].yyy, r2.xyz, v_19.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.zxy) & bitcast<vec3<u32>>(r1.www)));
  r0 = vec4<f32>(v_21.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  let v_22 = (r0.yz * vec2<f32>(0.25f, 0.5f));
  let v_23 = r0;
  r0 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  r1.w = (abs(r0.xxxx).w + 1.0f);
  r0.x = clamp(r0.xxxx.x, 0.0f, 1.0f);
  let v_24 = (r0.yz / r1.ww);
  let v_25 = r0;
  r0 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
  let v_26 = ((-(r0.yyzy)).yz + vec2<f32>(0.25f, 0.5f));
  let v_27 = r2;
  r2 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  r0.y = ((-(r2.yyyy)).y + 1.0f);
  let v_28 = bitcast<u32>(r0.w);
  let v_29 = r0.y;
  r2.x = select(r2.y, v_29, (v_28 != 0u));
  r2 = textureSample(t1, s1, r2.xzxx.xy);
  let v_30 = ((-(r1.xxyz)).yzw + r2.xyz);
  r0 = vec4<f32>(r0.x, v_30.xyz);
  let v_31 = fma(r0.xxx, r0.yzw, r1.xyz);
  r0 = vec4<f32>(v_31.xyz, r0.w);
  let v_32 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_32.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(0u) v0 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0);
  return o0;
}
