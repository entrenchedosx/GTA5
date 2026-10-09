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

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v2.xy.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_1[4u].xxxx);
  r0.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r0.z = (v_2.z + 1.0f);
  r0.z = (r0.z * 0.10000000149011611938f);
  r0.y = (r0.y / r0.z);
  r0.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r0.y);
  r0.x = fma(cb12_12.tint_symbol_2[1u].w, r0.y, r0.x);
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  v_5((bitcast<u32>(r0.y) != 0u));
  r1 = textureSample(t3, s3, v2.xy.xyxx.xy);
  r0.y = dot(v6.xyz, v6.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_6 = (r0.yy * v6.xy);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = ((-(r0.yyzy)).yz * cb12_12.tint_symbol_2[0u].yy);
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = r1;
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = r3;
  r3 = vec4<f32>(v_11.x, v2.xy.xy, v_11.w);
  r3.x = -1.0f;
  r3.w = (-(r1.wwww)).w;
  r0.w = 0.0f;
  loop {
    r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) >= 8i)));
    if ((bitcast<u32>(r2.w) != 0u)) {
      break;
    }
    let v_12 = fma(r0.yz, vec2<f32>(0.125f), r3.yz);
    let v_13 = r4;
    r4 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
    r5 = textureSample(t3, s3, r4.yzyy.xy);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.x < r3.w)));
    r4.x = (r3.x + 0.125f);
    r4.w = (-(r5.wwww)).w;
    let v_14 = bitcast<vec3<u32>>(r2.www);
    let v_15 = r5.xyz;
    let v_16 = select(r2.xyz, v_15, (v_14 != vec3<u32>()));
    r2 = vec4<f32>(v_16.xyz, r2.w);
    let v_17 = bitcast<vec4<u32>>(r2.wwww);
    let v_18 = r4;
    r3 = select(r3, v_18, (v_17 != vec4<u32>()));
    r0.w = bitcast<f32>((bitcast<i32>(r0.w) + 1i));
  }
  r1 = textureSample(t0, s0, r3.yzyy.xy);
  let v_19 = fma(r2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_20 = r0;
  r0 = vec4<f32>(v_20.x, v_19.xy, v_20.w);
  r0.w = dot(r0.yz, r0.yz);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = sqrt(abs(r0.wwww).w);
  r2.w = max(cb12_12.tint_symbol_2[1u].y, 0.00100000004749745131f);
  let v_21 = (r0.yz * r2.ww);
  let v_22 = r0;
  r0 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
  let v_23 = (r0.zzz * v5.xyz);
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = fma(r0.yyy, v4.xyz, r3.xyz);
  r3 = vec4<f32>(v_24.xyz, r3.w);
  let v_25 = fma(r0.www, v3.xyz, r3.xyz);
  r0 = vec4<f32>(r0.x, v_25.xyz);
  r2.w = dot(r0.yzw, r0.yzw);
  r2.w = inverseSqrt(r2.w);
  let v_26 = (r0.yzw * r2.www);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r0.y = dot(r2.xy, r2.xy);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.00200000009499490261f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  let v_27 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_27.xyz, r1.w);
  let v_28 = (r0.yyy * v1.xyz);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  r0.z = (r0.y * cb12_12.tint_symbol_2[1u].x);
  r4.w = v1.w;
  r1 = (r1 * r4);
  o2.w = (r1.w * cb2_2.tint_symbol[15u].x);
  r1.w = (r1.w * r2.z);
  o1.w = (r1.w * cb2_2.tint_symbol[15u].x);
  let v_29 = fma(r3.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_29.xyz, o1.w);
  r1.w = (cb12_12.tint_symbol_2[0u].w * 0.001953125f);
  r0.w = fma(r0.w, r2.w, -0.34999999403953552246f);
  r0.w = clamp(((r0.wwww * vec4<f32>(1.53846156597137451172f))).w, 0.0f, 1.0f);
  r0.w = (r0.w * cb5_5.tint_symbol_1[3u].z);
  r2.x = ((-(cb2_2.tint_symbol[16u].zzzz)).x + 1.0f);
  r0.w = (r0.w * r2.x);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].z);
  r2.x = fma((-(r0.zzzz)).x, 0.5f, 1.0f);
  r2.x = (r0.w * r2.x);
  r2.x = fma(r2.x, -0.5f, 1.0f);
  let v_30 = (r1.xyz * r2.xxx);
  o0 = vec4<f32>(v_30.xyz, o0.w);
  r0.y = clamp(fma(cb12_12.tint_symbol_2[1u].xxxx, r0.yyyy, vec4<f32>(0.69999998807907104492f)).y, 0.0f, 1.0f);
  let v_31 = (r0.yy * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_31.xy, r1.zw);
  r2.x = (-(r0.zzzz)).x;
  r2.y = (-(r1.wwww)).y;
  r2.z = (-(cb12_12.tint_symbol_2[0u].zzzz)).z;
  r1.z = 0.97000002861022949219f;
  let v_32 = (r1.xyz + r2.xyz);
  r1 = vec4<f32>(v_32.xyz, r1.w);
  let v_33 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_33.xyz, r1.w);
  r2.x = fma(r1.x, r0.w, r0.z);
  r2.y = fma(r1.y, r0.w, r1.w);
  o2.z = fma(r1.z, r0.w, cb12_12.tint_symbol_2[0u].z);
  let v_34 = sqrt(r2.xy);
  o2 = vec4<f32>(v_34.xy, o2.zw);
  o0.w = r0.x;
  o3 = vec4<f32>();
}

fn v_5(v_35 : bool) {
  if (v_35) {
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
fn main(@builtin(position) v_36 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_36, v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
