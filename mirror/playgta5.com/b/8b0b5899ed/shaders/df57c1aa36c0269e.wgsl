diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb20_struct {
  tint_symbol : array<vec4<f32>, 20u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb20_struct;

@group(1u) @binding(47u) var t15 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> oDepth : f32;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb2_2.tint_symbol[19u].x) == 4i)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_2 = v0.xy;
    let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
    let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
    r0 = vec4<f32>(v_4.xy, r0.zw);
    r0 = vec4<f32>(r0.xy, vec2<f32>());
    r1.x = textureLoad(t15, bitcast<vec2<i32>>(r0.xy), 0i).x;
    r1.y = textureLoad(t15, bitcast<vec2<i32>>(r0.xy), 1i).x;
    r1.z = textureLoad(t15, bitcast<vec2<i32>>(r0.xy), 2i).x;
    r0.x = textureLoad(t15, bitcast<vec2<i32>>(r0.xy), 3i).x;
    r0.y = min(r1.y, r1.x);
    r0.x = min(r0.x, r1.z);
    oDepth = min(r0.x, r0.y);
  } else {
    let v_5 = v0.xy;
    let v_6 = max(v_5, vec2<f32>(-2147483648.0f));
    let v_7 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_6), vec2<i32>(2147483647i), (v_6 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_5 == v_5))));
    r0 = vec4<f32>(v_7.xy, r0.zw);
    r0 = vec4<f32>(r0.xy, vec2<f32>());
    r1 = vec4<f32>(vec2<f32>(1073741824.0f, 0.0f), r1.zw);
    loop {
      r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r1.y) >= bitcast<u32>(cb2_2.tint_symbol[19u].x))));
      if ((bitcast<u32>(r1.z) != 0u)) {
        break;
      }
      r1.z = textureLoad(t15, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r1.y)).x;
      r1.x = min(r1.z, r1.x);
      r1.y = bitcast<f32>((bitcast<i32>(r1.y) + 1i));
    }
    oDepth = r1.x;
  }
}

@fragment
fn main(@builtin(position) v_8 : vec4<f32>) -> @builtin(frag_depth) f32 {
  main_inner(v_8);
  return oDepth;
}
