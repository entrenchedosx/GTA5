diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb22_struct {
  tint_symbol : array<vec4<f32>, 22u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb22_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb6_struct;

struct cb6_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb6_struct_1;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v11 : vec4<f32>;

var<private> v12 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> oDepth : f32;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec4<f32>, v5 : vec4<f32>, v7 : vec4<f32>, v : vec4<f32>) {
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
  let v_5 = (r1.xyz * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.x = dot(r0.xyz, vec3<f32>(1.0f));
  r0.y = dot(r1.xyz, vec3<f32>(1.0f));
  let v_6 = -(cb8_8.tint_symbol_3[5u].yyyy);
  let v_7 = (r0.xy + v_6.zw);
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = clamp(((r0.zzzw * vec4<f32>(0.0f, 0.0f, 10000.0f, 10000.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_8.xy);
  r1.x = (cb8_8.tint_symbol_3[5u].z + 0.00100000004749745131f);
  r1.x = ((-(r0.xxxx)).x + r1.x);
  r1.x = clamp(((r1.xxxx * vec4<f32>(10000.0f))).x, 0.0f, 1.0f);
  let v_9 = -(r0.xxxy);
  let v_10 = fma(r0.zw, r1.xx, v_9.zw);
  r0 = vec4<f32>(r0.xy, v_10.xy);
  let v_11 = fma(cb8_8.tint_symbol_3[5u].ww, r0.zw, r0.xy);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.x = fma(v3.x, r0.y, r0.x);
  r0.x = clamp(((r0.xxxx * v0.wwww)).x, 0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb9_9.tint_symbol_2[5u].x))));
  if ((bitcast<u32>(r0.y) != 0u)) {
  }
  o0 = r0.xxxx;
  r0.x = (cb2_2.tint_symbol[21u].z + cb2_2.tint_symbol[21u].y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v7.z < r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = (cb6_6.tint_symbol_1[14u].w * 0.25f);
    r1 = (v11.xyxy + vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f));
    let v_12 = (r1.xz * cb6_6.tint_symbol_1[14u].zz);
    let v_13 = r2;
    r2 = vec4<f32>(v_12.x, v_13.y, v_12.y, v_13.w);
    let v_14 = (r0.xx * r1.yw);
    let v_15 = r2;
    r2 = vec4<f32>(v_15.x, v_14.x, v_15.z, v_14.y);
    r1 = textureSampleLevel(t12, s12, r2.xyxx.xy, 0.0f);
    r2 = textureSampleLevel(t12, s12, r2.zwzz.xy, 0.0f);
    r3 = (v11.xyxy + vec4<f32>(0.0f, 1.0f, 0.0f, -1.0f));
    let v_16 = (r3.xz * cb6_6.tint_symbol_1[14u].zz);
    let v_17 = r4;
    r4 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
    let v_18 = (r0.xx * r3.yw);
    let v_19 = r4;
    r4 = vec4<f32>(v_19.x, v_18.x, v_19.z, v_18.y);
    r0 = textureSampleLevel(t12, s12, r4.xyxx.xy, 0.0f);
    r3 = textureSampleLevel(t12, s12, r4.zwzz.xy, 0.0f);
    let v_20 = -(r2.xxxx);
    r0.y = (r1.x + v_20.y);
    let v_21 = -(r3.xxxx);
    r0.x = (r0.x + v_21.x);
    let v_22 = abs(r0.xxxx);
    r0.x = max(v_22.x, abs(r0.yyyy).x);
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

fn v_3(v_23 : bool) {
  if (v_23) {
    discard;
    return;
  }
}

struct tint_symbol_4 {
  @location(0u)
  o0 : vec4<f32>,
  @builtin(frag_depth)
  oDepth : f32,
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) @interpolate(flat) v3 : vec4<f32>, @location(5u) @interpolate(flat) v5 : vec4<f32>, @location(7u) v7 : vec4<f32>, @builtin(position) v_24 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v3, v5, v7, v_24);
  return tint_symbol_4(o0, oDepth);
}
