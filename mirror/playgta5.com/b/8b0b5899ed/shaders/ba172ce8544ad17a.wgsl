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

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(cb2_2.tint_symbol[0u], icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_5((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[4u].x >= r0.x)));
  v_5((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r1.x = dot(v6.xyz, v6.xyz);
  r1.x = inverseSqrt(r1.x);
  let v_6 = (r1.xx * v6.xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = ((-(r1.xyxx)).xy * cb12_12.tint_symbol_2[0u].yy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r0;
  r2 = vec4<f32>(v_8.xyz, r2.w);
  let v_9 = r3;
  r3 = vec4<f32>(v_9.x, v2.xy.xy, v_9.w);
  r3.x = -1.0f;
  r3.w = (-(r0.wwww)).w;
  r1.z = 0.0f;
  loop {
    r1.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) >= 8i)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      break;
    }
    let v_10 = fma(r1.xy, vec2<f32>(0.125f), r3.yz);
    let v_11 = r4;
    r4 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
    r5 = textureSample(t3, s3, r4.yzyy.xy);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r3.x < r3.w)));
    r4.x = (r3.x + 0.125f);
    r4.w = (-(r5.wwww)).w;
    let v_12 = bitcast<vec3<u32>>(r1.www);
    let v_13 = r5.xyz;
    let v_14 = select(r2.xyz, v_13, (v_12 != vec3<u32>()));
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = bitcast<vec4<u32>>(r1.wwww);
    let v_16 = r4;
    r3 = select(r3, v_16, (v_15 != vec4<u32>()));
    r1.z = bitcast<f32>((bitcast<i32>(r1.z) + 1i));
  }
  r0 = textureSample(t0, s0, r3.yzyy.xy);
  let v_17 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r1.z = dot(r1.xy, r1.xy);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.z = sqrt(abs(r1.zzzz).z);
  r1.w = max(cb12_12.tint_symbol_2[1u].y, 0.00100000004749745131f);
  let v_18 = (r1.ww * r1.xy);
  r1 = vec4<f32>(v_18.xy, r1.zw);
  let v_19 = (r1.yyy * v5.xyz);
  r3 = vec4<f32>(v_19.xyz, r3.w);
  let v_20 = fma(r1.xxx, v4.xyz, r3.xyz);
  r1 = vec4<f32>(v_20.xy, r1.z, v_20.z);
  let v_21 = fma(r1.zzz, v3.xyz, r1.xyw);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_22 = (r1.www * r1.xyz);
  r3 = vec4<f32>(v_22.xyz, r3.w);
  r1.x = dot(r2.xy, r2.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.00200000009499490261f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  let v_23 = (r0.xyz * r1.xxx);
  r0 = vec4<f32>(v_23.xyz, r0.w);
  let v_24 = (r1.xxx * v1.xyz);
  r4 = vec4<f32>(v_24.xyz, r4.w);
  r1.y = (r1.x * cb12_12.tint_symbol_2[1u].x);
  r4.w = v1.w;
  r0 = (r0 * r4);
  r2.x = (r0.w * cb2_2.tint_symbol[15u].x);
  r0.w = (r0.w * r2.z);
  o1.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_25 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_25.xyz, o1.w);
  r0.w = (cb12_12.tint_symbol_2[0u].w * 0.001953125f);
  r1.z = fma(r1.z, r1.w, -0.34999999403953552246f);
  r1.z = clamp(((r1.zzzz * vec4<f32>(1.53846156597137451172f))).z, 0.0f, 1.0f);
  r1.z = (r1.z * cb5_5.tint_symbol_1[3u].z);
  r1.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r1.z = (r1.w * r1.z);
  r1.z = (r1.z * cb2_2.tint_symbol[15u].z);
  r1.w = fma((-(r1.yyyy)).w, 0.5f, 1.0f);
  r1.w = (r1.w * r1.z);
  r1.w = fma(r1.w, -0.5f, 1.0f);
  let v_26 = (r0.xyz * r1.www);
  o0 = vec4<f32>(v_26.xyz, o0.w);
  r0.x = clamp(fma(cb12_12.tint_symbol_2[1u].xxxx, r1.xxxx, vec4<f32>(0.69999998807907104492f)).x, 0.0f, 1.0f);
  let v_27 = (r0.xx * vec2<f32>(0.5f, 0.48828125f));
  r0 = vec4<f32>(v_27.xy, r0.zw);
  r3.x = (-(r1.yyyy)).x;
  r3.y = (-(r0.wwww)).y;
  r3.z = (-(cb12_12.tint_symbol_2[0u].zzzz)).z;
  r0.z = 0.97000002861022949219f;
  let v_28 = (r0.xyz + r3.xyz);
  r0 = vec4<f32>(v_28.xyz, r0.w);
  let v_29 = max(r0.xyz, vec3<f32>());
  r0 = vec4<f32>(v_29.xyz, r0.w);
  r1.x = fma(r0.x, r1.z, r1.y);
  r1.y = fma(r0.y, r1.z, r0.w);
  o2.z = fma(r0.z, r1.z, cb12_12.tint_symbol_2[0u].z);
  let v_30 = sqrt(r1.xy);
  o2 = vec4<f32>(v_30.xy, o2.zw);
  o0.w = r2.x;
  o2.w = r2.x;
  o3 = vec4<f32>();
}

fn v_5(v_31 : bool) {
  if (v_31) {
    discard;
    return;
  }
}

struct tint_symbol_3 {
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
fn main(@builtin(position) v_32 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_32, v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
