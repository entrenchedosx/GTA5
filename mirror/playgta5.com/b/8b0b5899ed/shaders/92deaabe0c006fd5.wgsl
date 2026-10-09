diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v1.x >= 0.5f)));
  let v = select(vec2<f32>(-0.25f, -0.5f), vec2<f32>(-0.75f, -0.5f), (bitcast<vec2<u32>>(r0.xx) != vec2<u32>()));
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = select(vec3<f32>(0.25f, 0.5f, 0.75f), vec3<f32>(0.75f, 0.5f, 0.25f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = (r0.yz + v1.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (r0.xy * vec2<f32>(4.0f, 2.0f));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r1.w = dot(r0.xy, r0.xy);
  let v_5 = (r0.xy / r1.ww);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 1.0f)));
  let v_6 = (r2.xy * vec2<f32>(-1.0f, 1.0f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = r1;
  r2 = vec4<f32>(r2.xy, v_7.zy);
  let v_8 = r1;
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = bitcast<vec4<u32>>(r1.wwww);
  let v_10 = r2;
  r0 = select(r0, v_10, (v_9 != vec4<u32>()));
  let v_11 = fma(r0.xy, vec2<f32>(0.25f, 0.5f), r0.zw);
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r0.z = trunc(cb5_5.tint_symbol[1u].x);
  r0.z = (r0.z + -1.0f);
  let v_12 = r0.z;
  r0 = textureSampleLevel(t4, s4, r0.xyxx.xy, v_12);
  let v_13 = r0;
  o0 = vec4<f32>(v_13.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
