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

struct cb59_struct {
  tint_symbol_2 : array<vec4<f32>, 59u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb59_struct;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.0f)));
  v((bitcast<u32>(r0.x) != 0u));
  let v_1 = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r0.w);
  r0.w = inverseSqrt(r0.w);
  let v_2 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_2.xy, r0.z, v_2.z);
  let v_3 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.y = (r1.x + v_3.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r0.z = (r0.z * r1.x);
  r1.x = (r0.z * cb3_3.tint_symbol_2[52u].z);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.zzzz).z)));
  r1.z = (r1.x * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.x = (r1.z / r1.x);
  let v_4 = bitcast<u32>(r0.z);
  r0.z = select(1.0f, r1.x, (v_4 != 0u));
  r1.x = (r1.y * cb3_3.tint_symbol_2[51u].w);
  let v_5 = -(cb3_3.tint_symbol_2[51u].zzzz);
  r1.y = (r1.y * v_5.y);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r0.z = (r0.z * r1.x);
  r0.z = min(r0.z, 1.0f);
  r0.z = (r0.z * 1.44269502162933349609f);
  r0.z = exp2(r0.z);
  r0.z = min(r0.z, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.z = fma((-(r0.zzzz)).z, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.z = (r0.z * cb3_3.tint_symbol_2[51u].y);
  let v_6 = dot(r0.xyw, cb3_3.tint_symbol_2[53u].xyz);
  r1.x = clamp(vec4<f32>(v_6, v_6, v_6, v_6).x, 0.0f, 1.0f);
  let v_7 = dot(r0.xyw, cb3_3.tint_symbol_2[54u].xyz);
  r0.x = clamp(vec4<f32>(v_7, v_7, v_7, v_7).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb3_3.tint_symbol_2[54u].w);
  r0.x = exp2(r0.x);
  r0.y = log2(r1.x);
  r0.y = (r0.y * cb3_3.tint_symbol_2[53u].w);
  r0.y = exp2(r0.y);
  let v_8 = ((-(cb3_3.tint_symbol_2[56u].xxyz)).xzw + cb3_3.tint_symbol_2[58u].xyz);
  r1 = vec4<f32>(v_8.x, r1.y, v_8.yz);
  let v_9 = fma(r0.xxx, r1.xzw, cb3_3.tint_symbol_2[56u].xyz);
  r1 = vec4<f32>(v_9.x, r1.y, v_9.yz);
  let v_10 = ((-(r1.xzwx)).xyz + cb3_3.tint_symbol_2[55u].xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = fma(r0.yyy, r2.xyz, r1.xzw);
  r0 = vec4<f32>(v_11.xy, r0.z, v_11.z);
  let v_12 = -(cb3_3.tint_symbol_2[57u].xyxz);
  let v_13 = (r0.xyw + v_12.xyw);
  r0 = vec4<f32>(v_13.xy, r0.z, v_13.z);
  let v_14 = fma(r1.yyy, r0.xyw, cb3_3.tint_symbol_2[57u].xyz);
  r0 = vec4<f32>(v_14.xy, r0.z, v_14.z);
  r1.x = ((-(r0.xxxx)).x + cb3_3.tint_symbol_2[55u].w);
  r1.y = ((-(r0.yyyy)).y + cb3_3.tint_symbol_2[56u].w);
  r1.z = ((-(r0.wwww)).z + cb3_3.tint_symbol_2[57u].w);
  let v_15 = fma(r0.zzz, r1.xyz, r0.xyw);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_16.xyz, o0.w);
  o0.w = 1.0f;
}

fn v(v_17 : bool) {
  if (v_17) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
