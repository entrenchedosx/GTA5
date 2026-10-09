diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb23_struct {
  tint_symbol : array<vec4<f32>, 23u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb23_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb2_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v11 = v_1;
  x0[0u].x = v12[0u];
  x0[0u].y = v12[1u];
  x0[0u].z = v12[2u];
  x0[0u].w = v12[3u];
  let v_2 = max(v5.z, 0.0f);
  r0.x = bitcast<f32>(select(u32(v_2), 4294967295u, (v_2 >= 4294967296.0f)));
  r0.x = f32(bitcast<u32>(r0.x));
  r0.y = (r0.x * cb6_6.tint_symbol_1[14u].y);
  r0.x = fma(r0.x, cb6_6.tint_symbol_1[14u].y, cb6_6.tint_symbol_1[14u].y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (v11.y < r0.y)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < v11.y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) | bitcast<u32>(r0.y)));
  v_3((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t5, s5, v1.xyxx.xy);
  let v_4 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r1 = textureSample(t5, s5, v1.zwzz.xy);
  let v_5 = -(r0.xyzx);
  let v_6 = fma(r1.xyz, r1.xyz, v_5.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(v3.xy.xxx, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.xyz * v5.yzw);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.w = dot(r1.xyz, vec3<f32>(0.21259999275207519531f, 0.71520000696182250977f, 0.07220000028610229492f));
  r0.w = clamp(((r0.wwww + vec4<f32>(-0.05000000074505805969f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * v3.y);
  let v_9 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(v0.xyz, r0.xyz, r1.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb2_2.tint_symbol[22u].y)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_11 = (v11.xy * cb7_7.tint_symbol_2[1u].xy);
    r1 = vec4<f32>(v_11.xy, r1.zw);
    r1 = textureSample(t4, s4, r1.xyxx.xy);
    r0.w = (r1.x + -1.0f);
    r0.w = clamp(fma(cb2_2.tint_symbol[22u].yyyy, r0.wwww, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
    r0.w = (r0.w * v4.w);
  } else {
    r0.w = v4.w;
  }
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = (r0.w * v0.w);
  let v_12 = (r0.xyz * r0.www);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = dot(r0.xyz, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  o0 = clamp(vec4<f32>(v_13, v_13, v_13, v_13), vec4<f32>(), vec4<f32>(1.0f));
  r0.x = (cb2_2.tint_symbol[21u].z + cb2_2.tint_symbol[21u].y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v7.z < r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = (cb6_6.tint_symbol_1[14u].w * 0.25f);
    r1 = (v11.xyxy + vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f));
    let v_14 = (r1.xz * cb6_6.tint_symbol_1[14u].zz);
    let v_15 = r2;
    r2 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
    let v_16 = (r0.xx * r1.yw);
    let v_17 = r2;
    r2 = vec4<f32>(v_17.x, v_16.x, v_17.z, v_16.y);
    r1 = textureSampleLevel(t12, s12, r2.xyxx.xy, 0.0f);
    r2 = textureSampleLevel(t12, s12, r2.zwzz.xy, 0.0f);
    r3 = (v11.xyxy + vec4<f32>(0.0f, 1.0f, 0.0f, -1.0f));
    let v_18 = (r3.xz * cb6_6.tint_symbol_1[14u].zz);
    let v_19 = r4;
    r4 = vec4<f32>(v_18.x, v_19.y, v_18.y, v_19.w);
    let v_20 = (r0.xx * r3.yw);
    let v_21 = r4;
    r4 = vec4<f32>(v_21.x, v_20.x, v_21.z, v_20.y);
    r0 = textureSampleLevel(t12, s12, r4.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t12, s12, r4.zwzz.xy, 0.0f);
    let v_22 = -(r2.xxxx);
    r0.y = (r1.x + v_22.y);
    let v_23 = -(r3.xxxx);
    r0.x = (r0.x + v_23.x);
    let v_24 = abs(r0.xxxx);
    r0.x = max(v_24.x, abs(r0.yyyy).x);
    r0.x = ((-(r0.xxxx)).x + 1.0f);
    r0.x = fma(r0.x, cb2_2.tint_symbol[21u].x, v11.z);
    r0.y = (v7.z + (-(cb2_2.tint_symbol[21u].yyyy)).y);
    r0.y = clamp(((r0.yyyy * cb2_2.tint_symbol[21u].wwww)).y, 0.0f, 1.0f);
    r0.z = ((-(r0.xxxx)).z + v11.z);
    oDepth = fma(r0.y, r0.z, r0.x);
  } else {
    oDepth = v11.z;
  }
}

fn v_3(v_25 : bool) {
  if (v_25) {
    discard;
    return;
  }
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_26 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0, v1, v3, v4, v5, v7, v_26);
  return tint_symbol_3(o0, oDepth);
}
