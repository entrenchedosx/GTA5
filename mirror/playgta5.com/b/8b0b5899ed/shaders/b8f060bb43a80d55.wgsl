diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb17_struct;

struct cb9_struct {
  tint_symbol_1 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb9_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb12_12.tint_symbol[16u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t3, s3, r0.xyxx.xy);
  r0.w = max(r0.z, r0.y);
  r0.w = max(r0.w, r0.x);
  let v_3 = (r0.xyz / r0.www);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r0.xyz * r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r0.x = dot(r0.xyz, vec3<f32>(0.33333000540733337402f));
  r0.y = dot(r1.xyz, vec3<f32>(0.33333000540733337402f));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x >= cb11_11.tint_symbol_1[0u].y)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (1.0f >= r0.x)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.z)));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.x)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_1[0u].x >= r0.x)));
  let v_5 = bitcast<vec3<u32>>(r0.www);
  let v_6 = select(cb11_11.tint_symbol_1[7u].xyz, vec3<f32>(1.0f), (v_5 != vec3<u32>()));
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = bitcast<vec3<u32>>(r0.zzz);
  let v_8 = cb11_11.tint_symbol_1[8u].xyz;
  let v_9 = select(r1.xyz, v_8, (v_7 != vec3<u32>()));
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = bitcast<vec3<u32>>(r0.xxx);
  let v_11 = cb11_11.tint_symbol_1[6u].xyz;
  let v_12 = select(r1.xyz, v_11, (v_10 != vec3<u32>()));
  r0 = vec4<f32>(v_12.x, r0.y, v_12.yz);
  let v_13 = (r0.yyy * r0.xzw);
  o0 = vec4<f32>(v_13.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_14 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_14);
  return o0;
}
