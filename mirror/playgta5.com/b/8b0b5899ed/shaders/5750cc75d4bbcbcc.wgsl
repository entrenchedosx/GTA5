diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb21_struct {
  tint_symbol_1 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

struct cb6_struct {
  tint_symbol_2 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v2 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t12, s12, cb11_11.tint_symbol_2[5u].xyxx.xy);
  r0.x = ((-(r0.xxxx)).x + cb12_12.tint_symbol_1[17u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb12_12.tint_symbol_1[17u].z / r0.x);
  let v_2 = fma(cb11_11.tint_symbol_2[5u].xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_1[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_1[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_1[20u].xyz);
  let v_3 = fma(r2.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = ((-(r0.xyzx)).xyz + cb12_12.tint_symbol_1[0u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.y = ((-(cb12_12.tint_symbol_1[7u].xxxx)).y + 1.0f);
  r0.z = ((-(v2.xy.xxxx)).z + 1.0f);
  r0.y = fma(r0.y, r0.z, cb12_12.tint_symbol_1[7u].x);
  r1.y = (r0.z / r0.y);
  let v_5 = -(r1.yyyy);
  r0.x = (r0.x + v_5.x);
  r0.y = ((-(v0.yyyy)).y + 720.0f);
  let v_6 = -(cb11_11.tint_symbol_2[4u].yyyy);
  r0.y = (r0.y + v_6.y);
  r0.y = ((-(r0.yyyy)).y + cb11_11.tint_symbol_2[4u].w);
  let v_7 = -(r0.yyyy);
  r0.y = fma(r1.y, cb11_11.tint_symbol_2[4u].w, v_7.y);
  r0.z = clamp(((abs(r0.yyyy) + vec4<f32>(-1.0f))).z, 0.0f, 1.0f);
  let v_8 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r0.xyxx).xy < vec2<f32>(4.0f, 2.0f))));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  let v_9 = bitcast<u32>(r0.x);
  r0.x = select(r0.y, 1.0f, (v_9 != 0u));
  r0.y = (r1.y * cb11_11.tint_symbol_2[4u].w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 1.0f)));
  r1.x = ((-(r1.yyyy)).x + 1.0f);
  r1.z = 0.0f;
  let v_10 = bitcast<vec3<u32>>(r0.yyy);
  let v_11 = select(r1.xyz, vec3<f32>(0.0f, 0.0f, 1.0f), (v_10 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_11.xyz);
  let v_12 = (r0.xxx * r0.yzw);
  o0 = vec4<f32>(v_12.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_13 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_13, v2);
  return o0;
}
