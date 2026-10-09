diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v1.xy.xyxx.xy);
  r0.w = (r0.w * v3.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb13_13.tint_symbol_3[3u].z == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_3[5u].x == 1.0f)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      let v_2 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r1 = vec4<f32>(v_2.xy, r1.zw);
      r1.z = 0.0f;
      r1 = textureSample(t2, s2, r1.xyzx.xyz);
    } else {
      let v_3 = (v1.xy * cb11_11.tint_symbol_4[0u].zz);
      r2 = vec4<f32>(v_3.xy, r2.zw);
      r2.z = 0.0f;
      r2 = textureSample(t2, s2, r2.xyzx.xyz);
      r3 = vec4<f32>(((v1.xy * vec2<f32>(2.0f))).xy, r3.zw);
      r3.z = 0.0f;
      r3 = textureSample(t2, s2, r3.xyzx.xyz);
      let v_4 = -(r3.xxxx);
      r1.y = (r2.x + v_4.y);
      r1.x = fma(cb13_13.tint_symbol_3[5u].x, r1.y, r3.x);
    }
    r1.y = (cb11_11.tint_symbol_4[0u].x + -2.0f);
    r1.y = fma(cb13_13.tint_symbol_3[5u].x, r1.y, 2.0f);
    r1.z = (cb13_13.tint_symbol_3[3u].z + -2.0f);
    r1.z = fma(cb13_13.tint_symbol_3[5u].x, r1.z, 2.0f);
    r1.x = fma(r1.x, 2.0f, -1.0f);
    r1.x = (r1.y * r1.x);
    r1.x = fma(r1.x, r1.z, 1.0f);
    let v_5 = (r0.xyz * r1.xxx);
    r0 = vec4<f32>(v_5.xyz, r0.w);
  }
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  r1.x = dot(v0.xy, vec2<f32>(0.5f));
  r1.x = fract(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.5f)));
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>(0.94999998807907104492f, 0.50196081399917602539f) >= r0.ww)));
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.x)));
  v_8((bitcast<u32>(r1.x) != 0u));
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  r1 = (r1.xxxx * v2.xyz.zxyz);
  let v_9 = (v3.xx * cb2_2.tint_symbol[15u].zy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r1 = fma(r1, vec4<f32>(0.5f), vec4<f32>(0.5f));
  r2.z = fma(r1.x, cb5_5.tint_symbol_2[3u].y, cb5_5.tint_symbol_2[3u].x);
  r1.x = (r1.x + 0.30000001192092895508f);
  r1.x = (r2.y * r1.x);
  let v_10 = (r0.xyz * cb13_13.tint_symbol_3[4u].xxx);
  o0 = vec4<f32>(v_10.xyz, o0.w);
  r0.x = clamp(((cb2_2.tint_symbol[16u].zzzz + cb3_3.tint_symbol_1[49u].wwww)).x, 0.0f, 1.0f);
  r0.y = (r0.x * r1.x);
  let v_11 = (r1.yzw * vec3<f32>(256.0f));
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = floor(r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = -(r3.xyzx);
  let v_14 = fma(r1.yzw, vec3<f32>(256.0f), v_13.xyz);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = (r1.xyz * vec3<f32>(8.0f, 8.0f, 4.0f));
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = floor(r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  r0.z = dot(r1.xyz, vec3<f32>(32.0f, 4.0f, 1.0f));
  o1.w = (r0.z * 0.0039215688593685627f);
  let v_17 = (r3.xyz * vec3<f32>(0.00390625f));
  o1 = vec4<f32>(v_17.xyz, o1.w);
  r0.x = fma(r2.z, r2.x, cb3_3.tint_symbol_1[45u].w);
  let v_18 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_18.xy, r0.zw);
  let v_19 = sqrt(r0.xy);
  o3 = vec4<f32>(v_19.xy, o3.zw);
  r0.x = fma(r0.w, 1.33000004291534423828f, -0.50196081399917602539f);
  o0.w = clamp(fma(r0.xxxx, vec4<f32>(2.23194742202758789062f), vec4<f32>(0.0078431377187371254f)).w, 0.0f, 1.0f);
  o2 = vec4<f32>(0.0f, 0.0f, 0.98000001907348632812f, 1.0f);
  o3 = vec4<f32>(o3.xy, vec2<f32>(0.0f, 1.0f));
}

fn v_8(v_20 : bool) {
  if (v_20) {
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
fn main(@builtin(position) v_21 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v_21, v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3);
}
