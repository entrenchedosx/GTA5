diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xy.xyxx.xy);
  r0.z = dot(v6.xyz, v6.xyz);
  r0.z = inverseSqrt(r0.z);
  let v = (r0.zz * v6.xy);
  r1 = vec4<f32>(v.xy, r1.zw);
  let v_1 = ((-(r1.xyxx)).xy * cb12_12.tint_symbol_3[0u].xx);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, v2.xy.xy);
  r2.x = 1.0f;
  let v_2 = r0;
  r2 = vec4<f32>(r2.x, v_2.xyw);
  r0.z = 0.0f;
  loop {
    r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) >= 8i)));
    if ((bitcast<u32>(r3.x) != 0u)) {
      break;
    }
    let v_3 = fma(r1.xy, vec2<f32>(0.125f), r1.zw);
    r3 = vec4<f32>(v_3.xy, r3.zw);
    r4 = textureSample(t2, s2, r3.xyxx.xy).zxyw;
    r3.z = bitcast<f32>(select(0u, 4294967295u, (r2.w < r2.x)));
    r4.x = (r2.x + -0.125f);
    let v_4 = bitcast<vec2<u32>>(r3.zz);
    let v_5 = r3.xy;
    let v_6 = select(r1.zw, v_5, (v_4 != vec2<u32>()));
    r1 = vec4<f32>(r1.xy, v_6.xy);
    let v_7 = bitcast<vec4<u32>>(r3.zzzz);
    let v_8 = r4;
    r2 = select(r2, v_8, (v_7 != vec4<u32>()));
    r0.z = bitcast<f32>((bitcast<i32>(r0.z) + 1i));
  }
  r0 = textureSample(t0, s0, r1.zwzz.xy);
  let v_9 = fma(r2.yz, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_3[1u].x, 0.00100000004749745131f);
  let v_10 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = (r1.yyy * v5.xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  let v_12 = fma(r1.xxx, v4.xyz, r3.xyz);
  r1 = vec4<f32>(v_12.xy, r1.z, v_12.z);
  let v_13 = fma(r1.zzz, v3.xyz, r1.xyw);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_14 = (r1.www * r1.xyz);
  r3 = vec4<f32>(v_14.xyz, r3.w);
  r1.x = dot(r2.yz, r2.yz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.00200000009499490261f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_15 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  let v_16 = (r1.xx * v1.xy);
  r2 = vec4<f32>(v_16.xy, r2.zw);
  r1.y = (r1.x * cb12_12.tint_symbol_3[0u].w);
  o1.w = clamp(fma(v3.xyz.zzzz, vec4<f32>(128.0f), vec4<f32>(-127.0f)).w, 0.0f, 1.0f);
  r0.w = (r0.w * v1.w);
  let v_17 = (r2.xy * cb2_2.tint_symbol[15u].zy);
  let v_18 = r4;
  r4 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
  o0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_19 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_19.xyz, o1.w);
  r0.w = (cb12_12.tint_symbol_3[0u].z * 0.001953125f);
  r4.x = fma(r2.x, cb2_2.tint_symbol[15u].z, cb3_3.tint_symbol_1[45u].w);
  let v_20 = (r4.xz * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_20.xy, r2.zw);
  let v_21 = sqrt(r2.xy);
  o3 = vec4<f32>(v_21.xy, o3.zw);
  r1.z = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.z = clamp(((r1.zzzz * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r1.z = (r1.z * cb5_5.tint_symbol_2[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.z = (r1.w * r1.z);
  r1.z = (r4.y * r1.z);
  r1.w = fma((-(r1.yyyy)).w, 0.5f, 1.0f);
  r1.w = (r1.w * r1.z);
  r1.w = fma(r1.w, -0.5f, 1.0f);
  let v_22 = (r0.xyz * r1.www);
  o0 = vec4<f32>(v_22.xyz, o0.w);
  r0.x = clamp(fma(cb12_12.tint_symbol_3[0u].wwww, r1.xxxx, vec4<f32>(0.40000000596046447754f)).x, 0.0f, 1.0f);
  let v_23 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_23.xy, r0.zw);
  r2.x = (-(r1.yyyy)).x;
  r2.y = (-(r0.wwww)).y;
  r2.z = (-(cb12_12.tint_symbol_3[0u].yyyy)).z;
  r0.z = 0.97000002861022949219f;
  let v_24 = (r0.xyz + r2.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_25.xyz, r0.w);
  r1.x = fma(r0.x, r1.z, r1.y);
  r1.y = fma(r0.y, r1.z, r0.w);
  o2.z = fma(r0.z, r1.z, cb12_12.tint_symbol_3[0u].y);
  let v_26 = sqrt(r1.xy);
  o2 = vec4<f32>(v_26.xy, o2.zw);
  o2.w = 1.0f;
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v5, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
