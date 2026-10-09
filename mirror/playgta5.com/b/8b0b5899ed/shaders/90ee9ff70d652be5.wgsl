diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb12_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb5_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_1[4u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.y = (r0.y * cb11_11.tint_symbol_1[1u].w);
  r0.x = (r0.x * cb11_11.tint_symbol_1[0u].w);
  let v_2 = (r0.yyy * cb11_11.tint_symbol_1[1u].xyz);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(r0.xxx, cb11_11.tint_symbol_1[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = -(cb11_11.tint_symbol_1[2u].xyzx);
  let v_5 = (r0.xyz + v_4.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_1[3u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_1[2u].w / r0.w);
  let v_6 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_1[3u].xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol[0u].wwww, cb6_6.tint_symbol[1u].wwww).w, 0.0f, 1.0f);
  let v_7 = (r0.yyy * cb6_6.tint_symbol[1u].xzy);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = fma(r0.xxx, cb6_6.tint_symbol[0u].xzy, r1.xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(r0.zzz, cb6_6.tint_symbol[2u].xzy, r1.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r0.xyz, cb6_6.tint_symbol[7u].xzy, cb6_6.tint_symbol[11u].xzy);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r0.xyz + vec3<f32>(0.5f, 0.0f, 3.5f));
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = abs(r0.zzzz);
  r0.x = max(v_12.x, abs(r0.xxxx).x);
  r0.x = (r0.x + -0.44999998807907104492f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(15.0f))).x, 0.0f, 1.0f);
  r1.w = (r1.z * 0.25f);
  let v_13 = r1.xwxx;
  r0.y = textureSampleCompareLevel(t15, s15, v_13.xy, r1.y);
  r0.y = (r0.w + r0.y);
  o0 = (r0.xxxx + r0.yyyy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
