diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

struct cb29_struct {
  tint_symbol : array<vec4<f32>, 29u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb29_struct;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy + vec2<f32>(-0.5f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = fract(r0.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0.x = dot(r0.xy, vec2<f32>(1.0f, 2.0f));
  r0.x = fma(r0.x, 0.5f, 0.20000000298023223877f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= v1.x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (v1.x < cb12_12.tint_symbol[28u].y)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  v_5((bitcast<u32>(r0.x) != 0u));
  let v_6 = v1.x;
  o0 = vec4<f32>(v_6, v_6, v_6, v_6);
}

fn v_5(v_7 : bool) {
  if (v_7) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_8 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_8, v1);
  return o0;
}
