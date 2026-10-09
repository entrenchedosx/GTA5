diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb50_struct {
  tint_symbol_1 : array<vec4<f32>, 50u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb50_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb6_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  r1 = (r1.xxxx * v2.xyz.zxyz);
  r2.x = (r0.w * 255.0099945068359375f);
  r2.x = floor(r2.x);
  r2.y = (r2.x + -32.0f);
  r3.x = (r2.y * 0.0078125f);
  r3.y = cb13_13.tint_symbol_3[3u].x;
  r3 = textureSample(t13, s13, r3.xyxx.xy);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.x >= 32.0f)));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (160.0f >= r2.x)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & bitcast<u32>(r2.y)));
  let v = (r0.xyz * r3.xyz);
  r3 = vec4<f32>(v.xyz, r3.w);
  r3.w = 1.0f;
  let v_1 = bitcast<vec4<u32>>(r2.xxxx);
  let v_2 = r3;
  r0 = select(r0, v_2, (v_1 != vec4<u32>()));
  r0.w = (r0.w * v3.w);
  let v_3 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
  r2.z = fma(r1.x, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r1.x = (r1.x + 0.30000001192092895508f);
  r1.x = (r2.y * r1.x);
  r2.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r2.y) != 0u)) {
    r2.y = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r2.y) != 0u)) {
      let v_4 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r3 = vec4<f32>(v_4.xy, r3.zw);
      r3.z = 0.0f;
      r3 = textureSample(t2, s2, r3.xyzx.xyz);
    } else {
      let v_5 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r4 = vec4<f32>(v_5.xy, r4.zw);
      r4.z = 0.0f;
      r4 = textureSample(t2, s2, r4.xyzx.xyz);
      r5 = vec4<f32>(((v1.xy * vec2<f32>(2.0f))).xy, r5.zw);
      r5.z = 0.0f;
      r5 = textureSample(t2, s2, r5.xyzx.xyz);
      let v_6 = -(r5.xxxx);
      r2.y = (r4.x + v_6.y);
      r3.x = fma(cb13_13.tint_symbol_3[5u].x, r2.y, r5.x);
    }
    r2.y = (cb11_11.tint_symbol_4[0u].x + -2.0f);
    r2.y = fma(cb13_13.tint_symbol_3[5u].x, r2.y, 2.0f);
    r2.w = (cb13_13.tint_symbol_3[3u].z + -2.0f);
    r2.w = fma(cb13_13.tint_symbol_3[5u].x, r2.w, 2.0f);
    r3.x = fma(r3.x, 2.0f, -1.0f);
    r2.y = (r2.y * r3.x);
    r2.y = fma(r2.y, r2.w, 1.0f);
    let v_7 = (r0.xyz * r2.yyy);
    r0 = vec4<f32>(v_7.xyz, r0.w);
  }
  let v_8 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  o0 = vec4<f32>(v_8.xyz, o0.w);
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.x);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_9 = (r1.yzw * vec3<f32>(256.0f));
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = floor(r3.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = -(r3.xyzx);
  let v_12 = fma(r1.yzw, vec3<f32>(256.0f), v_11.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = (r1.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = floor(r1.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  r0.z = dot(r1.xyz, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r0.z * 0.0039215688593685627f);
  let v_15 = (r3.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_15.xyz, o1.w);
  r0.x = fma(r2.z, r2.x, cb3_3.tint_symbol_1[45u].w);
  let v_16 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_16.xy, r0.zw);
  let v_17 = sqrt(r0.xy);
  o3 = vec4<f32>(v_17.xy, o3.zw);
  o2 = vec4<f32>(0.0f, 0.0f, 0.98000001907348632812f, 1.0f);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3);
}
