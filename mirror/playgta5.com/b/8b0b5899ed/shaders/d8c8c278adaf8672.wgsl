diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb10_struct {
  tint_symbol_1 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb10_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb18_struct;

struct cb10_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb10_struct_1;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  let v = (v1.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r1 = vec4<f32>(((v2.xy / v2.ww)).xy, r1.zw);
  r1 = textureSample(t5, s5, r1.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_2[17u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_2[17u].z / r0.w);
  r0.w = clamp(((r0.wwww / v2.wwww)).w, 0.0f, 1.0f);
  r1 = vec4<f32>(((v3.xyz / v4.xyz)).xyz, r1.w);
  r1.x = max(r1.y, r1.x);
  r1.x = max(r1.z, r1.x);
  let v_1 = -(r1.xxxx);
  r0.w = clamp(((r0.wwww + v_1)).w, 0.0f, 1.0f);
  let v_2 = (r0.xyz * r1.xxx);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_3.xyz, r2.w);
  let v_4 = (r2.xyz * vec3<f32>(0.125f));
  r2 = vec4<f32>(v_4.xyz, r2.w);
  let v_5 = (r1.yyy * cb6_6.tint_symbol_1[1u].xzy);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = fma(r1.xxx, cb6_6.tint_symbol_1[0u].xzy, r3.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = fma(r1.zzz, cb6_6.tint_symbol_1[2u].xzy, r1.xyw);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xzy, cb6_6.tint_symbol_1[9u].xzy);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = (r2.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r2.xxx, cb6_6.tint_symbol_1[0u].xyz, r3.xyz);
  r2 = vec4<f32>(v_10.xy, r2.z, v_10.z);
  let v_11 = fma(r2.zzz, cb6_6.tint_symbol_1[2u].xyz, r2.xyw);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = (r2.xyz * cb6_6.tint_symbol_1[5u].xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r1.xyz + vec3<f32>(0.5f, 0.0f, 1.5f));
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r1.z = (r1.z * 0.25f);
  r2.w = (r2.y * 0.25f);
  let v_14 = r1;
  r3 = vec4<f32>(v_14.xzy, r3.w);
  r1.w = 0.0f;
  r2.y = 0.0f;
  loop {
    r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.y) >= 8i)));
    if ((bitcast<u32>(r3.w) != 0u)) {
      break;
    }
    let v_15 = r3.xyxx;
    r3.w = textureSampleCompareLevel(t15, s15, v_15.xy, r3.z);
    r1.w = (r1.w + r3.w);
    let v_16 = (r2.xwz + r3.xyz);
    r3 = vec4<f32>(v_16.xyz, r3.w);
    r2.y = bitcast<f32>((bitcast<i32>(r2.y) + 1i));
  }
  r0.w = (r0.w * r1.w);
  r0.w = (r0.w * 0.125f);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = (r0.x * r0.w);
  r0.y = (r0.x * v2.z);
  r0.x = fma(r0.x, v2.z, -1.0f);
  r0.x = fma(cb10_10.tint_symbol_3[9u].w, r0.x, 1.0f);
  r0.x = (r0.x * r0.y);
  let v_17 = (r0.xxx * cb10_10.tint_symbol_3[4u].xyz);
  o0 = vec4<f32>(v_17.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3, v4);
  return o0;
}
