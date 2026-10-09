diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(13u) var<uniform> cb13_13 : cb18_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

struct cb1_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb1_struct_1;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_3d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v6 : vec4<f32>) {
  r0 = textureSample(t0, s0, v1.xyxx.xy);
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = inverseSqrt(r1.x);
  let v = (r1.xxx * v2.xyz);
  r1 = vec4<f32>(r1.x, v.xyz);
  r2 = textureSample(t4, s4, v1.xyxx.xy);
  let v_1 = (r2.yx * r2.yx);
  r3 = vec4<f32>(v_1.xy, r3.zw);
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r2.z >= 0.8125f)));
  r0.w = (r0.w * v3.w);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (cb13_13.tint_symbol_1[5u].x == 1.0f)));
  if ((bitcast<u32>(r3.w) != 0u)) {
    let v_2 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
    r2 = vec4<f32>(v_2.xy, r2.zw);
    r4 = textureSample(t2, s2, r2.xyzx.xyz);
  } else {
    let v_3 = (v1.xy * cb11_11.tint_symbol_2[0u].zz);
    r2 = vec4<f32>(v_3.xy, r2.zw);
    r5 = textureSample(t2, s2, r2.xyzx.xyz);
    r3.w = select(3.0f, 2.0f, (bitcast<u32>(r3.z) != 0u));
    let v_4 = (r3.ww * v1.xy);
    r2 = vec4<f32>(v_4.xy, r2.zw);
    r6 = textureSample(t2, s2, r2.xyzx.xyz);
    let v_5 = -(r6.xxxx);
    r2.x = (r5.x + v_5.x);
    r4.x = fma(cb13_13.tint_symbol_1[5u].x, r2.x, r6.x);
  }
  let v_6 = select(vec3<f32>(1.0f, -1.0f, -0.0f), vec3<f32>(2.0f, -2.0f, -0.00999999977648258209f), (bitcast<vec3<u32>>(r3.zzz) != vec3<u32>()));
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r3.w = (r2.y + cb11_11.tint_symbol_2[0u].x);
  r3.w = fma(cb13_13.tint_symbol_1[5u].x, r3.w, r2.x);
  r2.y = (r2.y + cb13_13.tint_symbol_1[3u].z);
  r2.x = fma(cb13_13.tint_symbol_1[5u].x, r2.y, r2.x);
  r2.y = fma(r4.x, 2.0f, -1.0f);
  r2.y = (r3.w * r2.y);
  r2.y = (r2.w * r2.y);
  r2.x = fma(r2.y, r2.x, 1.0f);
  let v_7 = (r0.xyz * r2.xxx);
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = (v1.zz + vec2<f32>(-0.0f, -0.75f));
  let v_9 = r2;
  r2 = vec4<f32>(v_9.x, v_8.x, v_9.z, v_8.y);
  let v_10 = clamp(((r2.yyyw * vec4<f32>(-0.0f, 4.0f, -0.0f, 4.0f))).yw, vec2<f32>(), vec2<f32>(1.0f));
  let v_11 = r2;
  r2 = vec4<f32>(v_11.x, v_10.x, v_11.z, v_10.y);
  r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.z) == 0i)));
  let v_12 = (r4.xyz * cb13_13.tint_symbol_1[17u].xxx);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = (r2.yyy * r4.xyz);
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.www) & bitcast<vec3<u32>>(r4.xyz)));
  r4 = vec4<f32>(v_14.xyz, r4.w);
  let v_15 = -(r4.xyzx);
  let v_16 = fma(r0.xyz, r2.xxx, v_15.xyz);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r2.ww * cb13_13.tint_symbol_1[17u].yz);
  r2 = vec4<f32>(v_17.xy, r2.zw);
  let v_18 = fma(r3.xy, cb10_10.tint_symbol_3[0u].zw, r2.xy);
  r2 = vec4<f32>(v_18.xy, r2.zw);
  let v_19 = (r0.xyz * cb13_13.tint_symbol_1[4u].xxx);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r2.w = bitcast<f32>((bitcast<u32>(r3.z) & 1008981770u));
  r2.y = (r2.z + r2.y);
  r2.y = fma(cb13_13.tint_symbol_1[4u].z, r2.y, r2.w);
  r2.z = dot(v4.xyz, v4.xyz);
  r2.z = inverseSqrt(r2.z);
  let v_20 = (r2.zzz * v4.xyz);
  r3 = vec4<f32>(v_20.xyz, r3.w);
  let v_21 = dot(r3.xyz, r1.yzw);
  r2.w = clamp(vec4<f32>(v_21, v_21, v_21, v_21).w, -0.0f, 1.0f);
  r2.w = ((-(r2.wwww)).w + 0.5f);
  r2.w = clamp(((r2.wwww * vec4<f32>(2.5f))).w, -0.0f, 1.0f);
  r3.x = fma(r2.w, -2.0f, 3.0f);
  r2.w = (r2.w * r2.w);
  r2.w = (r2.w * r3.x);
  r1.x = fma(v2.z, r1.x, 1.0f);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(0.5f), vec4<f32>(-0.30000001192092895508f)).x, -0.0f, 1.0f);
  r1.x = (r1.x * 1.42857146263122558594f);
  let v_22 = clamp(v6.xyz.xy, vec2<f32>(), vec2<f32>(1.0f));
  r3 = vec4<f32>(v_22.xy, r3.zw);
  r2.w = (r2.w * r3.x);
  r1.x = (r1.x * r2.w);
  let v_23 = (r0.xyz * r1.xxx);
  r3 = vec4<f32>(v_23.x, r3.y, v_23.yz);
  let v_24 = fma(r3.xzw, cb13_13.tint_symbol_1[4u].yyy, r0.xyz);
  o0 = vec4<f32>(v_24.xyz, o0.w);
  let v_25 = -(r1.yzwy);
  let v_26 = fma(v4.xyz, r2.zzz, v_25.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  let v_27 = fma(r3.yyy, r0.xyz, r1.yzw);
  r0 = vec4<f32>(v_27.xyz, r0.w);
  r0.w = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_28 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_28.xyz, o1.w);
  r0.x = (r2.x * 0.001953125f);
  o2.x = sqrt(r2.y);
  o2.y = sqrt(r0.x);
  o0.w = r0.w;
  o1.w = r0.w;
  o2.z = cb10_10.tint_symbol_3[0u].y;
  o2.w = r0.w;
  o3 = vec4<f32>();
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
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v1, v2, v3, v4, v6);
  return tint_symbol_4(o0, o1, o2, o3);
}
