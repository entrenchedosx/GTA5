diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb46_struct {
  tint_symbol_2 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb1_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> v2 : vec4<f32>;

var<private> v3 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v2 = v_1;
  x0[0u].x = v3[0u];
  x0[0u].y = v3[1u];
  x0[0u].z = v3[2u];
  x0[0u].w = v3[3u];
  let v_2 = (v2.xy + vec2<f32>(0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * cb2_2.tint_symbol_1[18u].zw);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = textureSample(t1, s1, r0.xyxx.xy);
  r0.y = (cb3_3.tint_symbol_2[45u].w + 1.0f);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.y = (cb3_3.tint_symbol_2[45u].z / r0.y);
  let v_4 = -(cb3_3.tint_symbol_2[0u].xxxx);
  r0.y = (r0.y + v_4.y);
  let v_5 = ((-(cb3_3.tint_symbol_2[0u].xxxz)).zw + cb3_3.tint_symbol_2[0u].yw);
  r0 = vec4<f32>(r0.xy, v_5.xy);
  r0.y = clamp(((r0.yyyy / r0.zzzz)).y, 0.0f, 1.0f);
  r0.y = fma(r0.y, r0.w, cb3_3.tint_symbol_2[0u].z);
  r0.y = (r0.y + v2.z);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r0.x)));
  let v_6 = (v0.xyz + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = -(cb1_1.tint_symbol[14u].xyzx);
  r0.y = dot(r0.yzw, v_7.xyz);
  let v_8 = -(cb3_3.tint_symbol_2[44u].xxxx);
  r0.y = (r0.y + v_8.y);
  r0.z = (v_8.z + cb3_3.tint_symbol_2[44u].y);
  r0.y = clamp(((r0.yyyy / r0.zzzz)).y, 0.0f, 1.0f);
  r1 = (-(cb3_3.tint_symbol_2[1u]) + cb3_3.tint_symbol_2[43u]);
  r1 = fma(r0.yyyy, r1, cb3_3.tint_symbol_2[1u]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.99998998641967773438f < v1.w)));
  let v_9 = bitcast<vec4<u32>>(r0.yyyy);
  r1 = select(r1, v1, (v_9 != vec4<u32>()));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[44u].y < 0.0f)));
  let v_10 = bitcast<vec4<u32>>(r0.yyyy);
  let v_11 = cb5_5.tint_symbol_3[0u];
  r1 = select(r1, v_11, (v_10 != vec4<u32>()));
  let v_12 = (r1.ww * cb3_3.tint_symbol_2[44u].zw);
  let v_13 = r0;
  r0 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = r1;
  o0 = vec4<f32>(v_14.xyz, o0.w);
  let v_15 = bitcast<u32>(r0.x);
  let v_16 = r0.y;
  r0.x = select(r0.z, v_16, (v_15 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -10.0f)));
  let v_17 = bitcast<u32>(r0.y);
  o0.w = select(r0.x, 0.0f, (v_17 != 0u));
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @builtin(position) v_18 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v_18);
  return o0;
}
