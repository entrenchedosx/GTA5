diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r2.x = dpdx(r1.x);
  r2.y = dpdy(r1.x);
  r1.x = dot(r2.xy, r2.xy);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x == 0.0f)));
  v_4((bitcast<u32>(r1.y) != 0u));
  r2 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 0i);
  let v_5 = (r2.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r1 = vec4<f32>(r1.x, v_5.xyz);
  let v_6 = fract(r1.yzw);
  r1 = vec4<f32>(r1.x, v_6.xyz);
  let v_7 = fma((-(r1.zzyz)).yz, vec2<f32>(0.125f), r1.yz);
  let v_8 = r1;
  r1 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = fma(r2.xyz, vec3<f32>(256.0f), r1.yzw);
  r1 = vec4<f32>(r1.x, v_9.xyz);
  let v_10 = (r1.yzw + vec3<f32>(-128.0f));
  r1 = vec4<f32>(r1.x, v_10.xyz);
  r2.x = dot(r1.yzw, r1.yzw);
  r2.x = inverseSqrt(r2.x);
  let v_11 = (r1.yzw * r2.xxx);
  r1 = vec4<f32>(r1.x, v_11.xyz);
  r0.x = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), 0i).x;
  let v_12 = dpdx(r1.yzw);
  r0 = vec4<f32>(r0.x, v_12.xyz);
  r0.y = dot(r0.yzw, r0.yzw);
  let v_13 = dpdy(r1.yzw);
  r1 = vec4<f32>(r1.x, v_13.xyz);
  r0.z = dot(r1.yzw, r1.yzw);
  r0.y = (r0.z + r0.y);
  r2.x = dpdx(r0.x);
  r2.y = dpdy(r0.x);
  r0.x = dot(r2.xy, r2.xy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.x < cb8_8.tint_symbol[0u].w)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].y < r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.z)));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < cb8_8.tint_symbol[0u].z)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r0.y)));
  v_4((bitcast<u32>(r0.x) != 0u));
  o0 = vec4<f32>(1.0f);
}

fn v_4(v_14 : bool) {
  if (v_14) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_15 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_15);
  return o0;
}
