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
  r1.x = (r0.x + cb6_6.tint_symbol_1[14u].z);
  let v_15 = fma(r0.yz, vec2<f32>(0.25f, 1.0f), vec2<f32>(0.875f, 0.0f));
  let v_16 = r1;
  r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
  let v_17 = abs(r0.yyyy);
  r0.x = max(v_17.x, abs(r0.xxxx).x);
  r0.x = (r0.x + -0.44999998807907104492f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(15.0f))).x, 0.0f, 1.0f);
  let v_18 = (r1.xz + vec2<f32>(0.5f, 0.0f));
  let v_19 = r2;
  r2 = vec4<f32>(v_18.x, v_19.y, v_18.y, v_19.w);
  r2.y = fma(cb6_6.tint_symbol_1[14u].w, 0.25f, r1.y);
  let v_20 = r2.xyxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_20.xy, r2.z);
  r0.y = (r0.w + r0.y);
  o0 = (r0.xxxx + r0.yyyy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v4);
  return o0;
}
