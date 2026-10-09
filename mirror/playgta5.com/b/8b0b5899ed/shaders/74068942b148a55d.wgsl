diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb46_struct {
  tint_symbol_1 : array<vec4<f32>, 46u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb11_struct {
  tint_symbol_2 : array<vec4<f32>, 11u>,
}

@group(0u) @binding(6u) var<uniform> cb6_6 : cb11_struct;

@group(0u) @binding(19u) var s3 : sampler;

@group(0u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec2<f32>, v3 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  o2.w = r0.w;
  let v = -(cb1_1.tint_symbol[15u].xyzx);
  r0 = vec4<f32>(((v1 + v.xyz)).xyz, r0.w);
  let v_1 = (r0.yyy * cb6_6.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(r0.xxx, cb6_6.tint_symbol_2[0u].xyz, r1.xyz);
  r0 = vec4<f32>(v_2.xy, r0.z, v_2.z);
  let v_3 = fma(r0.zzz, cb6_6.tint_symbol_2[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(r0.xyz, cb6_6.tint_symbol_2[6u].xyz, cb6_6.tint_symbol_2[10u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r1 = (r0.xyxy + vec4<f32>(0.4990234375f, 0.4990234375f, 0.5009765625f, 0.4990234375f));
  r2 = textureSampleLevel(t3, s3, r1.xyxx.xy, 0.0f);
  r1 = textureSampleLevel(t3, s3, r1.zwzz.xy, 0.0f);
  r2.y = r1.x;
  r1 = (r0.xyxy + vec4<f32>(0.4990234375f, 0.5009765625f, 0.5009765625f, 0.5009765625f));
  let v_5 = (r0.xyz + vec3<f32>(0.5f, 0.5f, 0.0f));
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r3 = textureSampleLevel(t3, s3, r1.xyxx.xy, 0.0f);
  r1 = textureSampleLevel(t3, s3, r1.zwzz.xy, 0.0f);
  r2.w = r1.x;
  r2.z = r3.x;
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r2 >= r0.zzzz)));
  let v_6 = fma(r0.xy, vec2<f32>(512.0f), vec2<f32>(0.5f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = fract(r0.xy);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = select(vec2<f32>(), vec2<f32>(-1.0f), (bitcast<vec2<u32>>(r1.xz) != vec2<u32>()));
  r0 = vec4<f32>(r0.xy, v_8.xy);
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(1065353216u)));
  let v_9 = (r0.zw + r1.yw);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = fma(r0.xx, r0.zw, r1.xz);
  let v_11 = r0;
  r0 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
  r0.z = ((-(r0.xxxx)).z + r0.z);
  r0.x = fma(r0.y, r0.z, r0.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  let v_12 = abs(cb3_3.tint_symbol_1[0u].zzzz);
  r0.x = (r0.x * v_12.x);
  r0.y = (cb3_3.tint_symbol_1[43u].w + 1.0f);
  r0.y = (r0.y * cb3_3.tint_symbol_1[45u].w);
  r0.y = max(r0.y, 0.0f);
  let v_13 = fma(cb3_3.tint_symbol_1[43u].xyz, r0.yyy, cb3_3.tint_symbol_1[44u].xyz);
  r0 = vec4<f32>(r0.x, v_13.xyz);
  let v_14 = fma(cb3_3.tint_symbol_1[1u].xyz, r0.xxx, r0.yzw);
  o1 = vec4<f32>(v_14.xyz, o1.w);
  o1.w = v3.w;
  o2 = vec4<f32>(((v0 + v.xyz)).xyz, o2.w);
  let v_15 = fma(v3.xx, vec2<f32>(-2.0f, 2.0f), vec2<f32>(1.0f, -1.0f));
  r0 = vec4<f32>(v_15.xy, r0.zw);
  let v_16 = (r0.xy * v2.yx);
  r0 = vec4<f32>(v_16.xy, r0.zw);
  r0.z = dot(v2, v2);
  r0.z = sqrt(r0.z);
  r0.z = (1.0f / r0.z);
  let v_17 = (r0.zz * r0.xy);
  o3 = vec4<f32>(o3.xy, v_17.xy);
  let v_18 = (r0.zz * v2);
  o3 = vec4<f32>(v_18.xy, o3.zw);
  o4.w = r0.z;
  o4 = vec4<f32>(v1.xyz, o4.w);
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3, o4);
}
