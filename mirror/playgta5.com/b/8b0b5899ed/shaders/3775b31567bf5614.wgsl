diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb18_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct_1;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

struct cb2_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(9u) var<uniform> cb9_9 : cb2_struct_1;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t12, s12, v1.xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb12_12.tint_symbol_2[17u].z / r0.x);
  let v = r0;
  r0 = vec4<f32>(v.x, ((v2.xy / v2.ww)).xy, v.w);
  let v_1 = fma(r0.yz, r0.xx, cb1_1.tint_symbol[15u].xy);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  r1 = textureSample(t8, s8, v1.xyxx.xy);
  r0.x = (r0.x + -140.0f);
  r0.x = clamp(fma(-(r0.xxxx), vec4<f32>(0.01250000018626451492f), vec4<f32>(1.0f)).x, 0.0f, 1.0f);
  r2 = textureSample(t10, s10, v1.xyxx.xy);
  r0.w = (r2.x + -0.60000002384185791016f);
  r0.w = clamp(((r0.wwww * vec4<f32>(8.0f))).w, 0.0f, 1.0f);
  r1.x = (r1.w + cb10_10.tint_symbol_3[0u].y);
  r1.x = clamp(((r1.xxxx * cb10_10.tint_symbol_3[0u].zzzz)).x, 0.0f, 1.0f);
  r0.x = (r0.x * r1.x);
  let v_3 = (r0.yz * cb10_10.tint_symbol_3[0u].xx);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r1 = textureSample(t5, s5, r1.xyxx.xy);
  let v_4 = -(cb10_10.tint_symbol_3[1u].xxxx);
  r1.x = clamp(((r1.xxxx + v_4)).x, 0.0f, 1.0f);
  r0.x = (r0.x * r1.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.078125f < r0.x)));
  let v_5 = (r0.yz * vec2<f32>(0.5f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r1 = textureSample(t6, s6, r1.xyxx.xy);
  let v_6 = fma(r0.yz, cb9_9.tint_symbol_4[1u].xy, cb9_9.tint_symbol_4[1u].zw);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = fma(r0.yz, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r2 = textureSample(t7, s7, r0.yzyy.xy);
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_10 = fma(r1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(v_10.xy, r0.zw);
    let v_11 = (r2.xy + vec2<f32>(-0.00196078442968428135f));
    r1 = vec4<f32>(v_11.xy, r1.zw);
    let v_12 = fma(r1.xy, vec2<f32>(2.0f), r0.xy);
    r0 = vec4<f32>(v_12.xy, r0.zw);
    let v_13 = (r0.xy + vec2<f32>(-1.0f));
    r0 = vec4<f32>(v_13.xy, r0.zw);
    r1.x = dot(r0.xy, r0.xy);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r0.z = sqrt(abs(r1.xxxx).z);
    let v_14 = fma(r0.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
    r0 = vec4<f32>(v_14.xyz, r0.w);
    r1.w = 1.0f;
  } else {
    r0 = vec4<f32>(vec3<f32>(), r0.w);
    r1.w = 0.0f;
  }
  let v_15 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  o0 = (r0.wwww * r1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
