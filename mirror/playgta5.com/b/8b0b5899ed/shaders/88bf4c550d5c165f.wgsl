diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

var<private> v7 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v2 : vec4<f32>) {
  x0[0u].x = v7[0u];
  x0[0u].y = v7[1u];
  x0[0u].z = v7[2u];
  x0[0u].w = v7[3u];
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.y = fma(v2.z, r0.x, -0.34999999403953552246f);
  let v = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v.x, r0.y, v.yz);
  let v_1 = fma(r0.xzw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_1.xyz, o1.w);
  r0.x = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * cb5_5.tint_symbol_2[3u].z);
  r0.y = ((-(cb2_2.tint_symbol[16u].zzzz)).y + 1.0f);
  r0.x = (r0.y * r0.x);
  let v_2 = (v0.xy * cb2_2.tint_symbol[15u].zy);
  let v_3 = r1;
  r1 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r0.x = (r0.x * r1.y);
  r0.y = fma((-(cb12_12.tint_symbol_3[0u].zzzz)).y, 0.5f, 1.0f);
  r0.y = (r0.y * r0.x);
  r0.y = fma(r0.y, -0.5f, 1.0f);
  let v_4 = (r0.yyy * v0.xyz);
  o0 = vec4<f32>(v_4.xyz, o0.w);
  o0.w = (v0.w * cb2_2.tint_symbol[15u].x);
  o1.w = clamp(fma(v2.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.y = clamp(((cb12_12.tint_symbol_3[0u].zzzz + vec4<f32>(0.40000000596046447754f))).y, 0.0f, 1.0f);
  let v_5 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = (-(cb12_12.tint_symbol_3[0u].zzzx)).yw;
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.x, v_7.z, v_6.y);
  r2.z = 0.97000002861022949219f;
  r1.y = (cb12_12.tint_symbol_3[0u].y * 0.001953125f);
  r0.z = (-(r1.yyyy)).z;
  let v_8 = (r0.yzw + r2.xyz);
  r0 = vec4<f32>(r0.x, v_8.xyz);
  let v_9 = max(r0.yzw, vec3<f32>());
  r0 = vec4<f32>(r0.x, v_9.xyz);
  r2.y = fma(r0.z, r0.x, r1.y);
  let v_10 = fma(r0.yw, r0.xx, cb12_12.tint_symbol_3[0u].zx);
  let v_11 = r2;
  r2 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
  let v_12 = sqrt(r2.xy);
  o2 = vec4<f32>(v_12.xy, o2.zw);
  o2.z = r2.z;
  o2.w = 1.0f;
  r1.x = fma(v0.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_13 = (r1.xz * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_13.xy, r0.zw);
  let v_14 = sqrt(r0.xy);
  o3 = vec4<f32>(v_14.xy, o3.zw);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

struct tint_symbol_4 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v2);
  return tint_symbol_4(o0, o1, o2, o3);
}
