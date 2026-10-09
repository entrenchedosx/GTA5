diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb5_struct {
  tint_symbol_2 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v4 : u32) {
  let v = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_2[4u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.y = (r0.y * cb11_11.tint_symbol_2[1u].w);
  r0.x = (r0.x * cb11_11.tint_symbol_2[0u].w);
  let v_2 = (r0.yyy * cb11_11.tint_symbol_2[1u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(r0.xxx, cb11_11.tint_symbol_2[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = -(cb11_11.tint_symbol_2[2u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = r1.xy;
  let v_8 = max(v_7, vec2<f32>(-2147483648.0f));
  let v_9 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_8), vec2<i32>(2147483647i), (v_8 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_7 == v_7))));
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v4)).x;
  r1.x = (cb11_11.tint_symbol_2[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.x);
  r0.w = (cb11_11.tint_symbol_2[2u].w / r0.w);
  let v_10 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_2[3u].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_11 = (r0.yyy * cb6_6.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r0.xxx, cb6_6.tint_symbol_1[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = fma(r0.zzz, cb6_6.tint_symbol_1[2u].xyz, r1.xyz);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = fma(r0.xyz, cb6_6.tint_symbol_1[7u].xyz, cb6_6.tint_symbol_1[11u].xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = (r0.xzy + vec3<f32>(0.5f, 0.0f, 3.5f));
  r1 = vec4<f32>(v_15.xyz, r1.w);
  r1.w = (r1.z * 0.25f);
  let v_16 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.375f, 0.09375f));
  r2 = vec4<f32>(v_16.xy, r2.zw);
  let v_17 = (-(r2.xyxx)).xy;
  r2 = vec4<f32>(v_17.xy, r2.zw);
  r2.z = 0.0f;
  let v_18 = (r1.xwy + r2.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = r1.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_19.xy, r1.z);
  let v_20 = fma(r0.zxy, vec3<f32>(1.0f, 1.0f, 0.25f), vec3<f32>(0.0f, 0.5f, 0.875f));
  r1 = vec4<f32>(r1.x, v_20.xyz);
  let v_21 = abs(r0.yyyy);
  r0.x = max(v_21.x, abs(r0.xxxx).x);
  r0.x = (r0.x + -0.44999998807907104492f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(15.0f))).x, 0.0f, 1.0f);
  let v_22 = fma(cb6_6.tint_symbol_1[14u].zw, vec2<f32>(0.375f, 0.09375f), r1.zw);
  let v_23 = r0;
  r0 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
  let v_24 = r0.yzyy;
  r0.y = textureSampleCompareLevel(t15, s15, v_24.xy, r1.y);
  r0.y = (r0.y + r1.x);
  r0.y = fma(r0.y, 0.5f, r0.w);
  o0 = (r0.xxxx + r0.yyyy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v4);
  return o0;
}
