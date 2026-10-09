diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb18_struct {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

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

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = (v1.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_2[17u].z / r1.x);
  let v_4 = r1;
  r1 = vec4<f32>(v_4.x, ((v2.xy / v2.ww)).xy, v_4.w);
  let v_5 = fma(r1.yz, r1.xx, cb1_1.tint_symbol[15u].xy);
  let v_6 = r1;
  r1 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  r0.x = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 0i).w;
  r0.y = (r1.x + -140.0f);
  r0.y = clamp(fma(-(r0.yyyy), vec4<f32>(0.01250000018626451492f), vec4<f32>(1.0f)).y, 0.0f, 1.0f);
  let v_7 = v1.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r2 = vec4<f32>(v_9.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.z = textureLoad(t10, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r0.z = (r0.z + -0.60000002384185791016f);
  r0.z = clamp(((r0.zzzz * vec4<f32>(8.0f))).z, 0.0f, 1.0f);
  r0.x = (r0.x + cb10_10.tint_symbol_3[0u].y);
  r0.x = clamp(((r0.xxxx * cb10_10.tint_symbol_3[0u].zzzz)).x, 0.0f, 1.0f);
  r0.x = (r0.y * r0.x);
  let v_10 = (r1.yz * cb10_10.tint_symbol_3[0u].xx);
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.x, v_11.z, v_10.y);
  r0.y = textureSample(t5, s5, r0.ywyy.xy).x;
  let v_12 = -(cb10_10.tint_symbol_3[1u].xxxx);
  r0.y = clamp(((r0.yyyy + v_12)).y, 0.0f, 1.0f);
  r0.x = (r0.x * r0.y);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.078125f < r0.x)));
  let v_13 = (r1.yz * vec2<f32>(0.5f));
  let v_14 = r0;
  r0 = vec4<f32>(v_14.x, v_13.x, v_14.z, v_13.y);
  let v_15 = textureSample(t6, s6, r0.ywyy.xy).xy;
  let v_16 = r0;
  r0 = vec4<f32>(v_16.x, v_15.x, v_16.z, v_15.y);
  let v_17 = fma(r1.yz, cb9_9.tint_symbol_4[1u].xy, cb9_9.tint_symbol_4[1u].zw);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  let v_18 = fma(r1.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  r1 = vec4<f32>(v_18.xy, r1.zw);
  let v_19 = textureSample(t7, s7, r1.xyxx.xy).xy;
  r1 = vec4<f32>(v_19.xy, r1.zw);
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_20 = fma(r0.yw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(v_20.xy, r0.zw);
    let v_21 = (r1.xy + vec2<f32>(-0.00196078442968428135f));
    r1 = vec4<f32>(v_21.xy, r1.zw);
    let v_22 = fma(r1.xy, vec2<f32>(2.0f), r0.xy);
    r0 = vec4<f32>(v_22.xy, r0.zw);
    let v_23 = (r0.xy + vec2<f32>(-1.0f));
    r1 = vec4<f32>(v_23.xy, r1.zw);
    r0.x = dot(r1.xy, r1.xy);
    r0.x = ((-(r0.xxxx)).x + 1.0f);
    r1.z = sqrt(abs(r0.xxxx).z);
    let v_24 = fma(r1.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
    r0 = vec4<f32>(v_24.xy, r0.z, v_24.z);
    r1.w = 1.0f;
  } else {
    r0 = vec4<f32>(vec2<f32>(), r0.z, 0.0f);
    r1.w = 0.0f;
  }
  let v_25 = (r0.xyw * cb2_2.tint_symbol_1[17u].zzz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  o0 = (r0.zzzz * r1);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
