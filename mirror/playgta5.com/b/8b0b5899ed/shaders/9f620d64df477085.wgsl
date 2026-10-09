diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb2_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = fma(v0.xy, vec2<f32>(8.0f), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = (r0.xy * cb10_10.tint_symbol[1u].zw);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0.z = 0.0f;
  r0.w = r0.y;
  r1.x = 0.0f;
  loop {
    r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) >= 4i)));
    if ((bitcast<u32>(r1.y) != 0u)) {
      break;
    }
    r2.y = r0.w;
    r3.x = r0.z;
    r3.y = r0.x;
    r1.y = 0.0f;
    loop {
      r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) >= 4i)));
      if ((bitcast<u32>(r1.z) != 0u)) {
        break;
      }
      r2.x = r3.y;
      r4 = textureGather(0i, t4, s4, r2.xy);
      r1.z = dot(r4, vec4<f32>(1.0f));
      r3.x = (r1.z + r3.x);
      r3.y = fma(cb10_10.tint_symbol[1u].z, 2.0f, r3.y);
      r1.y = bitcast<f32>((bitcast<i32>(r1.y) + 1i));
    }
    r0.z = r3.x;
    r0.w = fma(cb10_10.tint_symbol[1u].w, 2.0f, r0.w);
    r1.x = bitcast<f32>((bitcast<i32>(r1.x) + 1i));
  }
  o0 = (r0.zzzz * vec4<f32>(0.015625f));
}

@fragment
fn main(@builtin(position) v_4 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_4);
  return o0;
}
