diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb82_struct {
  tint_symbol : array<vec4<f32>, 82u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb82_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>) {
  let v = fma((-(cb5_5.tint_symbol[81u].zwzz)).xy, vec2<f32>(0.5f), v1.xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(cb5_5.tint_symbol[81u].xy, vec2<f32>(0.5f), r0.xy);
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1 = textureSample(t0, s0, r0.zwzz.xy);
  r0.z = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.w = bitcast<f32>((bitcast<u32>(r0.z) & 2147483647u));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 2139095040i)));
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r0.z == r0.z))));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r1.x)));
  let v_2 = bitcast<u32>(r0.w);
  r0.z = select(r0.z, 0.0f, (v_2 != 0u));
  r1 = fma(cb5_5.tint_symbol[81u].xyxy, vec4<f32>(1.5f, 0.5f, 2.5f, 0.5f), r0.xyxy);
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = dot(r2.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) & 2147483647u));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) == 2139095040i)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r1.x == r1.x))));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.z)));
  let v_3 = bitcast<u32>(r1.y);
  r1.x = select(r1.x, 0.0f, (v_3 != 0u));
  r0.z = (r0.z + r1.x);
  r1.x = bitcast<f32>((bitcast<u32>(r0.w) & 2147483647u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) == 2139095040i)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r0.w == r0.w))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r1.y)));
  let v_4 = bitcast<u32>(r1.x);
  r0.w = select(r0.w, 0.0f, (v_4 != 0u));
  r0.z = (r0.w + r0.z);
  r1 = fma(cb5_5.tint_symbol[81u].xyxy, vec4<f32>(3.5f, 0.5f, 0.5f, 1.5f), r0.xyxy);
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = dot(r2.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) & 2147483647u));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) == 2139095040i)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r1.x == r1.x))));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.z)));
  let v_5 = bitcast<u32>(r1.y);
  r1.x = select(r1.x, 0.0f, (v_5 != 0u));
  r0.z = (r0.z + r1.x);
  r1.x = bitcast<f32>((bitcast<u32>(r0.w) & 2147483647u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) == 2139095040i)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r0.w == r0.w))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r1.y)));
  let v_6 = bitcast<u32>(r1.x);
  r0.w = select(r0.w, 0.0f, (v_6 != 0u));
  r0.z = (r0.w + r0.z);
  r1 = fma(cb5_5.tint_symbol[81u].xyxy, vec4<f32>(1.5f, 1.5f, 2.5f, 1.5f), r0.xyxy);
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = dot(r2.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) & 2147483647u));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) == 2139095040i)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r1.x == r1.x))));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.z)));
  let v_7 = bitcast<u32>(r1.y);
  r1.x = select(r1.x, 0.0f, (v_7 != 0u));
  r0.z = (r0.z + r1.x);
  r1.x = bitcast<f32>((bitcast<u32>(r0.w) & 2147483647u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) == 2139095040i)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r0.w == r0.w))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r1.y)));
  let v_8 = bitcast<u32>(r1.x);
  r0.w = select(r0.w, 0.0f, (v_8 != 0u));
  r0.z = (r0.w + r0.z);
  r1 = fma(cb5_5.tint_symbol[81u].xyxy, vec4<f32>(3.5f, 1.5f, 0.5f, 2.5f), r0.xyxy);
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.w = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = dot(r2.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) & 2147483647u));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) == 2139095040i)));
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((r1.x == r1.x))));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) | bitcast<u32>(r1.z)));
  let v_9 = bitcast<u32>(r1.y);
  r1.x = select(r1.x, 0.0f, (v_9 != 0u));
  r0.z = (r0.z + r1.x);
  r1.x = bitcast<f32>((bitcast<u32>(r0.w) & 2147483647u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) == 2139095040i)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r0.w == r0.w))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r1.y)));
  let v_10 = bitcast<u32>(r1.x);
  r0.w = select(r0.w, 0.0f, (v_10 != 0u));
  r0.z = (r0.w + r0.z);
  r1 = fma(cb5_5.tint_symbol[81u].xyxy, vec4<f32>(1.5f, 2.5f, 2.5f, 2.5f), r0.xyxy);
  let v_11 = fma(cb5_5.tint_symbol[81u].xy, vec2<f32>(3.5f, 2.5f), r0.xy);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r2 = textureSample(t0, s0, r0.xyxx.xy);
  r0.x = dot(r2.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r2 = textureSample(t0, s0, r1.xyxx.xy);
  r1 = textureSample(t0, s0, r1.zwzz.xy);
  r0.y = dot(r1.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r0.w = dot(r2.xyz, vec3<f32>(0.21250000596046447754f, 0.71539998054504394531f, 0.0720999985933303833f));
  r1.x = bitcast<f32>((bitcast<u32>(r0.w) & 2147483647u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) == 2139095040i)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r0.w == r0.w))));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r1.y)));
  let v_12 = bitcast<u32>(r1.x);
  r0.w = select(r0.w, 0.0f, (v_12 != 0u));
  r0.z = (r0.w + r0.z);
  r0.w = bitcast<f32>((bitcast<u32>(r0.y) & 2147483647u));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 2139095040i)));
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r0.y == r0.y))));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r1.x)));
  let v_13 = bitcast<u32>(r0.w);
  r0.y = select(r0.y, 0.0f, (v_13 != 0u));
  r0.y = (r0.y + r0.z);
  r0.z = bitcast<f32>((bitcast<u32>(r0.x) & 2147483647u));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) == 2139095040i)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((r0.x == r0.x))));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.w)));
  let v_14 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 0.0f, (v_14 != 0u));
  r0.x = (r0.x + r0.y);
  o0 = (r0.x * 0.08333333581686019897f);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1);
  return o0;
}
