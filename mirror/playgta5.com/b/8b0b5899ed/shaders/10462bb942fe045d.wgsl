diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb20_struct {
  tint_symbol : array<vec4<f32>, 20u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb20_struct;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

var<private> o0 : f32;

fn main_inner(v1 : vec4<f32>) {
  let v = v1.xy;
  let v_1 = max(v, vec2<f32>(-2147483648.0f));
  let v_2 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_1), vec2<i32>(2147483647i), (v_1 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v == v))));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<u32>(2u, 4u, 6u) < bitcast<vec3<u32>>(cb2_2.tint_symbol[19u].xxx))));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  if ((bitcast<u32>(cb2_2.tint_symbol[19u].x) != 0u)) {
    r0.z = 0.0f;
    r1.w = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 0i).x;
    r2.x = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 1i).x;
    r2.y = max(r1.w, r2.x);
    r3.x = min(r2.y, 1.0f);
    r1.w = min(r1.w, r2.x);
    r3.y = max(r1.w, 0.0f);
  } else {
    r3 = vec4<f32>(vec2<f32>(1.0f, 0.0f), r3.zw);
  }
  if ((bitcast<u32>(r1.x) != 0u)) {
    r0.w = 0.0f;
    r1.x = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 2i).x;
    r1.w = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 3i).x;
    r2.x = max(r1.w, r1.x);
    r3.x = min(r2.x, r3.x);
    r1.x = min(r1.w, r1.x);
    r3.y = max(r1.x, r3.y);
  }
  if ((bitcast<u32>(r1.y) != 0u)) {
    let v_4 = r0;
    r2 = vec4<f32>(v_4.xy, r2.zw);
    r2 = vec4<f32>(r2.xy, vec2<f32>());
    r1.x = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 4i).x;
    r1.y = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 5i).x;
    r1.w = max(r1.y, r1.x);
    r3.x = min(r1.w, r3.x);
    r1.x = min(r1.y, r1.x);
    r3.y = max(r1.x, r3.y);
  }
  if ((bitcast<u32>(r1.z) != 0u)) {
    let v_5 = r0;
    r1 = vec4<f32>(v_5.xy, r1.zw);
    r1 = vec4<f32>(r1.xy, vec2<f32>());
    r2.x = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), 6i).x;
    r1.x = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), 7i).x;
    r1.y = max(r1.x, r2.x);
    r3.x = min(r1.y, r3.x);
    r1.x = min(r1.x, r2.x);
    r3.y = max(r1.x, r3.y);
  }
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<u32>(8u, 10u, 12u, 14u) < bitcast<vec4<u32>>(cb2_2.tint_symbol[19u].xxxx))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_6 = r0;
    r2 = vec4<f32>(v_6.xy, r2.zw);
    r2 = vec4<f32>(r2.xy, vec2<f32>());
    r1.x = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 8i).x;
    r2.x = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 9i).x;
    r2.y = max(r1.x, r2.x);
    r3.x = min(r2.y, r3.x);
    r1.x = min(r1.x, r2.x);
    r3.y = max(r1.x, r3.y);
  }
  if ((bitcast<u32>(r1.y) != 0u)) {
    let v_7 = r0;
    r2 = vec4<f32>(v_7.xy, r2.zw);
    r2 = vec4<f32>(r2.xy, vec2<f32>());
    r1.x = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 10i).x;
    r1.y = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 11i).x;
    r2.x = max(r1.y, r1.x);
    r3.x = min(r2.x, r3.x);
    r1.x = min(r1.y, r1.x);
    r3.y = max(r1.x, r3.y);
  }
  if ((bitcast<u32>(r1.z) != 0u)) {
    let v_8 = r0;
    r2 = vec4<f32>(v_8.xy, r2.zw);
    r2 = vec4<f32>(r2.xy, vec2<f32>());
    r1.x = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 12i).x;
    r1.y = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 13i).x;
    r1.z = max(r1.y, r1.x);
    r3.x = min(r1.z, r3.x);
    r1.x = min(r1.y, r1.x);
    r3.y = max(r1.x, r3.y);
  }
  if ((bitcast<u32>(r1.w) != 0u)) {
    r0 = vec4<f32>(r0.xy, vec2<f32>());
    r1.x = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 14i).x;
    r0.x = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 15i).x;
    r0.y = max(r0.x, r1.x);
    r3.x = min(r0.y, r3.x);
    r0.x = min(r0.x, r1.x);
    r3.y = max(r0.x, r3.y);
  }
  r0.x = (r3.y + r3.x);
  o0 = (r0.x * 0.5f);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v1);
  return o0;
}
