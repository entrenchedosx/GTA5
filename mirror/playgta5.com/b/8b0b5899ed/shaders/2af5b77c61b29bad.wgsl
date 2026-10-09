diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = v0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.xy) << vec2<u32>(3u)));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2.x = 0.0f;
  r2.y = r0.y;
  r0.z = 0.0f;
  loop {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) >= 8i)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      break;
    }
    r1.y = r2.y;
    r3.x = 0.0f;
    r3.y = r0.x;
    r0.w = r0.z;
    loop {
      r4.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.x) >= 8i)));
      if ((bitcast<u32>(r4.x) != 0u)) {
        break;
      }
      r1.x = r3.y;
      r4 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
      r0.w = (r0.w + r4.x);
      let v_6 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(1i)));
      r3 = vec4<f32>(v_6.xy, r3.zw);
    }
    r0.z = r0.w;
    let v_7 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r2.xy) + vec2<i32>(1i)));
    r2 = vec4<f32>(v_7.xy, r2.zw);
  }
  o0 = (r0.zzzz * vec4<f32>(0.015625f));
}

@fragment
fn main(@builtin(position) v_8 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_8);
  return o0;
}
