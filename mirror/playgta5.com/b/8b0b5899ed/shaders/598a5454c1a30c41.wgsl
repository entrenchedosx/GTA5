diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb89_struct {
  tint_symbol : array<vec4<f32>, 89u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb89_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(29u) var s13 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = textureSample(t0, s0, v1.xyxx.xy).y;
  r0.x = max(r0.x, cb5_5.tint_symbol[88u].y);
  r0.x = min(r0.x, cb5_5.tint_symbol[88u].x);
  let v = abs(cb5_5.tint_symbol[88u].yyyy);
  r0.x = (r0.x + v.x);
  r0.y = ((-(cb5_5.tint_symbol[88u].yyyy)).y + cb5_5.tint_symbol[88u].x);
  r0.x = (r0.x / r0.y);
  r0.x = fma(r0.x, -15.0f, 15.0f);
  let v_1 = r0.x;
  let v_2 = max(v_1, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_2), 2147483647i, (v_2 >= 2147483648.0f)), 0i, !((v_1 == v_1))));
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((cb5_5.tint_symbol[88u].z == -1.0f))));
  let v_3 = cb5_5.tint_symbol[88u].z;
  let v_4 = max(v_3, -2147483648.0f);
  r0.z = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
  let v_5 = bitcast<u32>(r0.y);
  let v_6 = r0.z;
  r0.x = select(r0.x, v_6, (v_5 != 0u));
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, ((v1.xy * vec2<f32>(0.25f))).xy, v_7.w);
  r0.x = f32(bitcast<i32>(r0.x));
  let v_8 = (r0.xx * vec2<f32>(4.0f, 0.25f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = -(r1.xxxx);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r1.x >= v_9.w)));
  let v_10 = select(vec2<f32>(-4.0f, -0.25f), vec2<f32>(4.0f, 0.25f), (bitcast<vec2<u32>>(r0.ww) != vec2<u32>()));
  let v_11 = r1;
  r1 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
  r0.x = (r0.x * r1.z);
  r0.x = fract(r0.x);
  r0.x = (r0.x * r1.x);
  r0.x = trunc(r0.x);
  r0.x = fma(r0.x, 0.25f, r0.y);
  r0.w = trunc(r1.y);
  r0.y = fma(r0.w, 0.25f, r0.z);
  r0.x = textureSample(t13, s13, r0.xyxx.xy).y;
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol[88u].w == 1.0f)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v_12 = fma(v2.www, vec3<f32>(0.0f, -10.0f, 0.0f), vec3<f32>(10.0f, 10.0f, 0.0f));
    o0 = vec4<f32>(v_12.xyz, o0.w);
    o0.w = r0.x;
    return;
  }
  o0 = (r0.xxxx * v2);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
