diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb7_struct {
  tint_symbol_1 : array<vec4<f32>, 7u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : f32;

var<private> o1 : vec4<f32>;

var<private> o2 : f32;

var<private> o3 : f32;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (cb12_12.tint_symbol_1[6u].zw * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-0.5f));
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = (r0.xy * r0.zw);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = (r0.xy * cb12_12.tint_symbol_1[0u].xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = fma(v0.xy, vec2<f32>(2.0f), vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r1.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2 = textureLoad(t14, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r1 = textureLoad(t13, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  let v_11 = fma(r1.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r0.w = ((-(r2.xxxx)).w + 1.0f);
  r0.w = (r0.w + cb12_12.tint_symbol_1[0u].w);
  r0.w = (cb12_12.tint_symbol_1[0u].z / r0.w);
  r0.z = 1.0f;
  let v_12 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  o0 = r0.z;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_13 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  r0.z = dot(cb1_1.tint_symbol[14u].xyz, r1.xyz);
  r2.z = (-(r0.zzzz)).z;
  r2.x = dot(cb1_1.tint_symbol[12u].xyz, r1.xyz);
  r2.y = dot(cb1_1.tint_symbol[13u].xyz, r1.xyz);
  let v_14 = (r2.xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = (r1.xyz * vec3<f32>(0.5f));
  o1 = vec4<f32>(v_15.xyz, o1.w);
  o1.w = 0.0f;
  o2 = r0.x;
  o3 = r0.y;
}

struct tint_symbol_2 {
  @location(0u)
  o0 : f32,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : f32,
  @location(3u)
  o3 : f32,
}

@fragment
fn main(@builtin(position) v_16 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v_16);
  return tint_symbol_2(o0, o1, o2, o3);
}
