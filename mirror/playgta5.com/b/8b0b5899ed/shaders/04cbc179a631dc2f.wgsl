diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

struct cb19_struct {
  tint_symbol_3 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb19_struct;

struct cb1_struct {
  tint_symbol_4 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r1.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[18u].x == 0.0f))));
  r1.z = bitcast<f32>(~(bitcast<u32>(r1.y)));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.50196081399917602539f >= r1.x)));
  r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
  v((bitcast<u32>(r1.z) != 0u));
  r1.z = dot(v2.xyz, v2.xyz);
  r1.z = inverseSqrt(r1.z);
  r2 = (r1.zzzz * v2.xyz.zxyz);
  r0.w = (r0.w * v3.w);
  let v_1 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r1 = vec4<f32>(r1.xy, v_1.xy);
  r2 = fma(r2, vec4<f32>(0.5f), vec4<f32>(0.5f));
  r3.x = fma(r2.x, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r2.x = (r2.x + 0.30000001192092895508f);
  r1.w = (r1.w * r2.x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r2.x) != 0u)) {
    r2.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      let v_2 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r4 = vec4<f32>(v_2.xy, r4.zw);
      r4.z = 0.0f;
      r4 = textureSample(t2, s2, r4.xyzx.xyz);
    } else {
      let v_3 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r5 = vec4<f32>(v_3.xy, r5.zw);
      r5.z = 0.0f;
      r5 = textureSample(t2, s2, r5.xyzx.xyz);
      r6 = vec4<f32>(((v1.xy * vec2<f32>(2.0f))).xy, r6.zw);
      r6.z = 0.0f;
      r6 = textureSample(t2, s2, r6.xyzx.xyz);
      let v_4 = -(r6.xxxx);
      r2.x = (r5.x + v_4.x);
      r4.x = fma(cb13_13.tint_symbol_3[5u].x, r2.x, r6.x);
    }
    r2.x = (cb11_11.tint_symbol_4[0u].x + -2.0f);
    r2.x = fma(cb13_13.tint_symbol_3[5u].x, r2.x, 2.0f);
    r3.y = (cb13_13.tint_symbol_3[3u].z + -2.0f);
    r3.y = fma(cb13_13.tint_symbol_3[5u].x, r3.y, 2.0f);
    r3.z = fma(r4.x, 2.0f, -1.0f);
    r2.x = (r2.x * r3.z);
    r2.x = fma(r2.x, r3.y, 1.0f);
    let v_5 = (r0.xyz * r2.xxx);
    r0 = vec4<f32>(v_5.xyz, r0.w);
  }
  let v_6 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  o0 = vec4<f32>(v_6.xyz, o0.w);
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.w);
  r0.z = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_7 = (r2.yzw * vec3<f32>(256.0f));
  r3 = vec4<f32>(r3.x, v_7.xyz);
  let v_8 = floor(r3.yzw);
  r3 = vec4<f32>(r3.x, v_8.xyz);
  let v_9 = -(r3.yzwy);
  let v_10 = fma(r2.yzw, vec3<f32>(256.0f), v_9.xyz);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = (r2.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = floor(r2.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  r0.w = dot(r2.xyz, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r0.w * 0.0039215688593685627f);
  let v_13 = (r3.yzw * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_13.xyz, o1.w);
  r0.x = fma(r3.x, r1.z, cb3_3.tint_symbol_1[45u].w);
  let v_14 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  let v_15 = sqrt(r0.xy);
  o3 = vec4<f32>(v_15.xy, o3.zw);
  r0.x = (r0.z * r1.x);
  r0.x = (r0.x * cb13_13.tint_symbol_3[18u].x);
  let v_16 = bitcast<u32>(r1.y);
  let v_17 = r0.x;
  o0.w = select(r0.z, v_17, (v_16 != 0u));
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
  o2 = vec4<f32>(0.0f, 0.0f, 0.98000001907348632812f, 1.0f);
}

fn v(v_18 : bool) {
  if (v_18) {
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3);
}
