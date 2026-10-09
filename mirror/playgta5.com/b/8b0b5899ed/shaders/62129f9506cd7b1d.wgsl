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

struct cb21_struct {
  tint_symbol_2 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v2 : vec4<f32>, v6 : u32) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (cb2_2.tint_symbol_1[18u].xy * cb11_11.tint_symbol_3[5u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = r0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v6)).x;
  r0.x = ((-(r0.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb12_12.tint_symbol_2[17u].z / r0.x);
  let v_6 = fma(cb11_11.tint_symbol_3[5u].xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_2[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_2[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_2[20u].xyz);
  let v_7 = fma(r2.xyz, r0.xxx, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = ((-(r0.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.y = ((-(cb12_12.tint_symbol_2[7u].xxxx)).y + 1.0f);
  r0.z = ((-(v2.xy.xxxx)).z + 1.0f);
  r0.y = fma(r0.y, r0.z, cb12_12.tint_symbol_2[7u].x);
  r1.y = (r0.z / r0.y);
  let v_9 = -(r1.yyyy);
  r0.x = (r0.x + v_9.x);
  r0.y = ((-(v0.yyyy)).y + 720.0f);
  let v_10 = -(cb11_11.tint_symbol_3[4u].yyyy);
  r0.y = (r0.y + v_10.y);
  r0.y = ((-(r0.yyyy)).y + cb11_11.tint_symbol_3[4u].w);
  let v_11 = -(r0.yyyy);
  r0.y = fma(r1.y, cb11_11.tint_symbol_3[4u].w, v_11.y);
  r0.z = clamp(((abs(r0.yyyy) + vec4<f32>(-1.0f))).z, 0.0f, 1.0f);
  let v_12 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r0.xyxx).xy < vec2<f32>(4.0f, 2.0f))));
  r0 = vec4<f32>(v_12.xy, r0.zw);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  let v_13 = bitcast<u32>(r0.x);
  r0.x = select(r0.y, 1.0f, (v_13 != 0u));
  r0.y = (r1.y * cb11_11.tint_symbol_3[4u].w);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 1.0f)));
  r1.x = ((-(r1.yyyy)).x + 1.0f);
  r1.z = 0.0f;
  let v_14 = bitcast<vec3<u32>>(r0.yyy);
  let v_15 = select(r1.xyz, vec3<f32>(0.0f, 0.0f, 1.0f), (v_14 != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_15.xyz);
  let v_16 = (r0.xxx * r0.yzw);
  o0 = vec4<f32>(v_16.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_17 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(sample_index) v6 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_17, v2, v6);
  return o0;
}
