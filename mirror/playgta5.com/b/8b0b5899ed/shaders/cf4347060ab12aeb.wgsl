diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb9_struct {
  tint_symbol_1 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb9_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

struct cb10_struct {
  tint_symbol_3 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb10_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1 = vec4<f32>(((v2.xy / v2.ww)).xy, r1.zw);
  r1 = textureSample(t5, s5, r1.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_2[17u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_2[17u].z / r0.w);
  r0.w = (r0.w / v2.w);
  let v_1 = -(cb10_10.tint_symbol_3[0u].xyzx);
  let v_2 = (cb1_1.tint_symbol[15u].xyz + v_1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  r1.w = dot(r0.xyz, r0.xyz);
  r2.x = dot(r1.xyz, r0.xyz);
  r2.y = dot(r1.xyz, r1.xyz);
  r1.x = dot(r1.xyz, cb10_10.tint_symbol_3[1u].xyz);
  r1.y = dot(r0.xyz, cb10_10.tint_symbol_3[1u].xyz);
  let v_3 = -(r2.yyyy);
  r1.z = fma(cb10_10.tint_symbol_3[2u].w, cb10_10.tint_symbol_3[2u].w, v_3.z);
  r2.y = fma(r1.x, r1.x, r1.z);
  r2.z = (r1.y * r1.y);
  r1.z = (r1.z * r2.z);
  let v_4 = -(r1.zzzz);
  r1.z = fma(r2.y, r1.w, v_4.z);
  r2.y = (r1.x * r1.y);
  r2.y = fma((-(r2.yyyy)).y, 2.0f, r2.x);
  r1.z = fma(r2.x, r2.y, r1.z);
  let v_5 = -(r2.xxxx);
  r1.x = fma(r1.y, r1.x, v_5.x);
  r2.x = sqrt(r1.z);
  let v_6 = -(r2.xxxx);
  r2.y = (r1.x + v_6.y);
  r1.y = fma((-(r1.yyyy)).y, r1.y, r1.w);
  r2.y = clamp(((r2.yyyy / r1.yyyy)).y, 0.0f, 1.0f);
  r2.y = min(r0.w, r2.y);
  r1.x = (r1.x + r2.x);
  r1.x = clamp(((r1.xxxx / r1.yyyy)).x, 0.0f, 1.0f);
  r0.w = min(r0.w, r1.x);
  r0.w = clamp(((-(r2.yyyy) + r0.wwww)).w, 0.0f, 1.0f);
  let v_7 = (r0.xyz * r2.yyy);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz * vec3<f32>(0.04166666790843009949f));
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = (r2.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = fma(r2.xxx, cb6_6.tint_symbol_1[0u].xyz, r3.xyz);
  r2 = vec4<f32>(v_11.xy, r2.z, v_11.z);
  let v_12 = fma(r2.zzz, cb6_6.tint_symbol_1[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r2.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = (r2.xyz + vec3<f32>(0.5f, 0.5f, 0.0f));
  r2 = vec4<f32>(v_14.xyz, r2.w);
  let v_15 = (r0.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r0.xxx, cb6_6.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_16.xyz, r3.w);
  let v_17 = fma(r0.zzz, cb6_6.tint_symbol_1[2u].xyz, r3.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r0.xyz * cb6_6.tint_symbol_1[4u].xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  r0.x = (r2.y * 0.25f);
  r3.w = (r3.y * 0.25f);
  let v_19 = r2;
  let v_20 = r4;
  r4 = vec4<f32>(v_19.x, v_20.y, v_19.z, v_20.w);
  r4.y = r0.x;
  let v_21 = r0;
  r0 = vec4<f32>(v_21.x, vec2<f32>(), v_21.w);
  loop {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) >= 24i)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      break;
    }
    let v_22 = r4.xyxx;
    r1.x = textureSampleCompareLevel(t15, s15, v_22.xy, r4.z);
    r0.y = (r0.y + r1.x);
    let v_23 = (r3.xwz + r4.xyz);
    r4 = vec4<f32>(v_23.xyz, r4.w);
    r0.z = bitcast<f32>((bitcast<i32>(r0.z) + 1i));
  }
  r0.x = (r0.w * r0.y);
  r0.x = (r0.x * 0.04166666790843009949f);
  r0.y = sqrt(r1.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r0.y = (r0.z * r0.y);
  r0.x = (r0.y * r0.x);
  r0.y = (r0.x * v2.z);
  r0.x = fma(r0.x, v2.z, -1.0f);
  r0.x = fma(cb10_10.tint_symbol_3[9u].w, r0.x, 1.0f);
  r0.x = (r0.x * r0.y);
  let v_24 = (r0.xxx * cb10_10.tint_symbol_3[4u].xyz);
  o0 = vec4<f32>(v_24.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
