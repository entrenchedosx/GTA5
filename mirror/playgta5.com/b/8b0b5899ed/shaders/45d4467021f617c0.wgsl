diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb16_struct_1 {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct_1;

struct cb46_struct {
  tint_symbol_2 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

struct cb7_struct {
  tint_symbol_4 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb7_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>, v9 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = ((-(v4.xyz.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = clamp(fma(r0.xxxx, cb10_10.tint_symbol_4[6u].yyyy, cb10_10.tint_symbol_4[6u].xxxx).x, 0.0f, 1.0f);
  r0.x = (r0.x * 3.99600005149841308594f);
  r0.y = fract(r0.x);
  r0.y = (r0.y * 4.0f);
  let v_3 = floor(r0.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (r0.yx * vec2<f32>(0.25f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (v0.xy * vec2<f32>(0.03125f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = -(r0.xxxy);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xy >= v_6.zw)));
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = fract(abs(r0.xyxx).xy);
  r0 = vec4<f32>(v_8.xy, r0.zw);
  let v_9 = -(r0.xyxx);
  let v_10 = bitcast<vec2<u32>>(r0.zw);
  let v_11 = select(v_9.xy, r0.xy, (v_10 != vec2<u32>()));
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = fma(r0.xy, vec2<f32>(0.25f), r1.xy);
  r0 = vec4<f32>(v_12.xy, r0.zw);
  r0 = textureSample(t9, s9, r0.xyxx.xy);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) == 0i)));
  v_13((bitcast<u32>(r0.x) != 0u));
  r0 = vec4<f32>(((v4.xyz + (-(v8.xyzx)).xyz)).xyz, r0.w);
  r0.y = dot(r0.xyz, r0.xyz);
  r0.y = (r0.y * 28.0f);
  r0.y = min(r0.y, 1.0f);
  r1 = vec4<f32>(((v4.xyz + (-(v9.xyzx)).xyz)).xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = (r0.z * 28.0f);
  r0.z = min(r0.z, 1.0f);
  let v_14 = ((-(r0.yyzy)).yz + vec2<f32>(1.0f));
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r0.x = (r0.y * r0.x);
  r0.y = (r0.z * r1.x);
  let v_16 = fma(r0.xx, vec2<f32>(0.15999999642372131348f), v2.xy);
  r0 = vec4<f32>(r0.xy, v_16.xy);
  let v_17 = fma(r0.yy, vec2<f32>(0.15999999642372131348f), r0.zw);
  r0 = vec4<f32>(r0.xy, v_17.xy);
  let v_18 = fma(r0.xx, vec2<f32>(0.15999999642372131348f), v3.xy);
  r1 = vec4<f32>(v_18.xy, r1.zw);
  let v_19 = fma(r0.yy, vec2<f32>(0.15999999642372131348f), r1.xy);
  r0 = vec4<f32>(v_19.xy, r0.zw);
  r1 = textureSample(t3, s3, r0.zwzz.xy);
  r2.x = v6.w;
  r2.y = v7.w;
  r2 = textureSample(t8, s8, r2.xyxx.xy);
  let v_20 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_20.xy);
  r1.w = dot(r0.zw, r0.zw);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.w = sqrt(abs(r1.wwww).w);
  r2.x = max(cb12_12.tint_symbol_3[0u].w, 0.00100000004749745131f);
  let v_21 = (r0.zw * r2.xx);
  r0 = vec4<f32>(r0.xy, v_21.xy);
  let v_22 = (r0.www * v7.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = fma(r0.zzz, v6.xyz, r2.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = fma(r1.www, v5.xyz, r2.xyz);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_25 = (r0.zzz * r2.xyz);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  o1.w = clamp(fma(v5.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0 = textureSample(t4, s4, r0.xyxx.xy);
  r0.x = dot(r0, cb10_10.tint_symbol_4[5u]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < v2.w)));
  v_13((bitcast<u32>(r0.y) != 0u));
  let v_26 = (r1.xyz * v2.zzz);
  r0 = vec4<f32>(r0.x, v_26.xyz);
  r0.x = (r0.x * v1.w);
  let v_27 = (r0.yzw * v1.xyz);
  o0 = vec4<f32>(v_27.xyz, o0.w);
  o0.w = (r0.x * cb2_2.tint_symbol_1[15u].x);
  let v_28 = fma(r2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_28.xyz, o1.w);
  r0.x = (cb12_12.tint_symbol_3[0u].y * 0.001953125f);
  r0.y = (cb3_3.tint_symbol_2[45u].w + 1.0f);
  r1.x = (r0.y * 0.5f);
  r1.y = 0.0f;
  let v_29 = sqrt(r1.xy);
  o3 = vec4<f32>(v_29.xy, o3.zw);
  o2.x = sqrt(cb12_12.tint_symbol_3[0u].z);
  o2.y = sqrt(r0.x);
  o2.z = cb12_12.tint_symbol_3[0u].x;
  o2.w = 1.0f;
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.00188386440277099609f));
}

fn v_13(v_30 : bool) {
  if (v_30) {
    discard;
    return;
  }
}

struct tint_symbol_5 {
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
fn main(@builtin(position) v_31 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>, @location(9u) v9 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_31, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  return tint_symbol_5(o0, o1, o2, o3);
}
