diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb53_struct {
  tint_symbol_2 : array<vec4<f32>, 53u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb53_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : u32) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  let v_3 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r0.y = (r0.x + v_3.y);
  r0.y = max(r0.y, 0.0f);
  r0.x = (r0.y / r0.x);
  r0.x = (r0.x * r0.z);
  r0.z = (r0.x * cb3_3.tint_symbol_2[52u].z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.xxxx).x)));
  r0.w = (r0.z * -1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.z = (r0.w / r0.z);
  let v_4 = bitcast<u32>(r0.x);
  r0.x = select(1.0f, r0.z, (v_4 != 0u));
  r0.z = (r0.y * cb3_3.tint_symbol_2[51u].w);
  let v_5 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r0.y = (r0.y + v_5.y);
  r0.y = max(r0.y, 0.0f);
  r0.y = (r0.y * cb3_3.tint_symbol_2[51u].x);
  r0.y = (r0.y * 1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.x = (r0.x * r0.z);
  r0.x = min(r0.x, 1.0f);
  r0.x = (r0.x * 1.44269502162933349609f);
  r0.x = exp2(r0.x);
  r0.x = min(r0.x, 1.0f);
  let v_6 = ((-(r0.xyxx)).xy + vec2<f32>(1.0f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.z = fma((-(r0.xxxx)).z, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.x = (r0.x * cb3_3.tint_symbol_2[52u].y);
  r0.z = (r0.z * cb3_3.tint_symbol_2[51u].y);
  r0.x = clamp(fma(r0.zzzz, r0.yyyy, r0.xxxx).x, 0.0f, 1.0f);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r1.x = (v1.w * cb5_5.tint_symbol_3[1u].x);
  r1.y = 0.5f;
  r0.y = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f).x;
  r0.y = fma(r0.y, 2.0f, -1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_3[1u].y);
  let v_7 = (v0.xy + (-(v3.xxxy)).zw);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  r0.z = dot(r0.zw, v4.xy);
  let v_8 = fma(v4.xy, r0.zz, v3.xy);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = ((-(r0.zzzw)).zw + v0.xy);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = fma(v4.zw, r0.yy, r0.zw);
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(v3.wwww)).y, 0.5f, r0.y);
  r0.z = (v3.w * 0.5f);
  r0.w = (v3.w * cb5_5.tint_symbol_3[0u].x);
  let v_12 = -(r0.zzzz);
  r0.z = fma(r0.w, 0.5f, v_12.z);
  r0.y = clamp(((r0.yyyy / r0.zzzz)).y, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.y = log2(r0.y);
  r0.y = (r0.y * cb5_5.tint_symbol_3[0u].y);
  r0.y = exp2(r0.y);
  r1 = (r0.yyyy * v2.wxyz);
  r1.x = clamp(r1.xxxx.x, 0.0f, 1.0f);
  let v_13 = (r1.yzw * cb2_2.tint_symbol_1[17u].zzz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  r2.w = (r0.x * r1.x);
  r0.x = f32(v5);
  o0 = fma(r0.xxxx, vec4<f32>(0.00000999999974737875f), r2);
}

@fragment
fn main(@builtin(position) v_14 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) @interpolate(flat) v2 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) @interpolate(flat) v4 : vec4<f32>, @builtin(sample_index) v5 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_14, v1, v2, v3, v4, v5);
  return o0;
}
