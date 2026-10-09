diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb59_struct {
  tint_symbol : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = dot(v2.xyz, v2.xyz);
  r0.y = sqrt(r0.x);
  r0.x = inverseSqrt(r0.x);
  let v = -(cb3_3.tint_symbol[50u].xxxx);
  r1.x = (r0.y + v.x);
  r1.x = max(r1.x, 0.0f);
  r0.y = (r1.x / r0.y);
  r0 = (r0.xyxx * v2.xzyz);
  r1.y = (r0.y * cb3_3.tint_symbol[52u].z);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.yyyy).y)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_1 = bitcast<u32>(r0.y);
  r0.y = select(1.0f, r1.y, (v_1 != 0u));
  r1.y = (r1.x * cb3_3.tint_symbol[51u].w);
  r0.y = (r0.y * r1.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = (r0.y * 1.44269502162933349609f);
  r0.y = exp2(r0.y);
  r0.y = min(r0.y, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r1.y = fma((-(r0.yyyy)).y, cb3_3.tint_symbol[52u].y, 1.0f);
  r0.y = (r0.y * cb3_3.tint_symbol[52u].y);
  let v_2 = dot(r0.xzw, cb3_3.tint_symbol[53u].xyz);
  r1.z = clamp(vec4<f32>(v_2, v_2, v_2, v_2).z, 0.0f, 1.0f);
  let v_3 = dot(r0.xzw, cb3_3.tint_symbol[54u].xyz);
  r0.x = clamp(vec4<f32>(v_3, v_3, v_3, v_3).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol[54u].w);
  r0.x = exp2(r0.x);
  r0.z = log2(r1.z);
  r0.z = (r0.z * cb3_3.tint_symbol[53u].w);
  r0.z = exp2(r0.z);
  let v_4 = ((-(cb3_3.tint_symbol[56u].xyzx)).xyz + cb3_3.tint_symbol[58u].xyz);
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = fma(r0.xxx, r2.xyz, cb3_3.tint_symbol[56u].xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = ((-(r2.xyzx)).xyz + cb3_3.tint_symbol[55u].xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma(r0.zzz, r3.xyz, r2.xyz);
  r0 = vec4<f32>(v_7.x, r0.y, v_7.yz);
  let v_8 = -(cb3_3.tint_symbol[57u].xxyz);
  let v_9 = (r0.xzw + v_8.xzw);
  r0 = vec4<f32>(v_9.x, r0.y, v_9.yz);
  let v_10 = -(cb3_3.tint_symbol[51u].zzzz);
  r1.z = (r1.x * v_10.z);
  let v_11 = -(cb3_3.tint_symbol[52u].xxxx);
  r1.x = (r1.x + v_11.x);
  r1.x = max(r1.x, 0.0f);
  let v_12 = (r1.xy * cb3_3.tint_symbol[51u].xy);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r0.y = clamp(fma(r1.yyyy, r1.xxxx, r0.yyyy).y, 0.0f, 1.0f);
  r0.y = (r0.y * v2.w);
  r1.x = (r1.z * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  let v_13 = fma(r1.xxx, r0.xzw, cb3_3.tint_symbol[57u].xyz);
  r0 = vec4<f32>(v_13.x, r0.y, v_13.yz);
  r2.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol[55u].w);
  r2.y = ((-(r0.zzzz)).y + cb3_3.tint_symbol[56u].w);
  r2.z = ((-(r0.wwww)).z + cb3_3.tint_symbol[57u].w);
  let v_14 = fma(r1.yyy, r2.xyz, r0.xzw);
  r0 = vec4<f32>(v_14.x, r0.y, v_14.yz);
  let v_15 = (r0.xzw + (-(v1.xyz.xxyz)).xzw);
  r0 = vec4<f32>(v_15.x, r0.y, v_15.yz);
  let v_16 = fma(r0.yyy, r0.xzw, v1.xyz);
  o0 = vec4<f32>(v_16.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
