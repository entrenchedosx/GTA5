diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : f32;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0.x = (cb12_12.tint_symbol[1u].z + 0.5f);
  r0.x = ((-(r0.xxxx)).x + v0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (abs(r0.xxxx).x < 0.5f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0 = textureLoad(t2, vec2<i32>(1i, 0i), 0i);
    o0 = r0.x;
  } else {
    let v_2 = v0.xy;
    let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
    let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
    r0 = vec4<f32>(v_4.xy, r0.zw);
    r0 = vec4<f32>(r0.xy, vec2<f32>());
    r0 = textureLoad(t4, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    o0 = r0.x;
  }
}

@fragment
fn main(@builtin(position) v_5 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v_5);
  return o0;
}
