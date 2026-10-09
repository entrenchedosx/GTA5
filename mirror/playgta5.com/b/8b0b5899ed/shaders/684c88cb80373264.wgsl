diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f), v1.xy.xyxy);
  r0 = (r0 * cb5_5.tint_symbol[66u].zwzw);
  let v = r0.zwxy;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  let v_2 = r0;
  r1 = vec4<f32>(v_2.zw, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r1.xy), 0i).y);
  let v_3 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xx) & vec2<u32>(128u, 7u)));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r1.xy) != vec2<i32>(0i, 2i))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1048576000u));
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 0i).y);
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xx) & vec2<u32>(128u, 7u)));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r0.xy) != vec2<i32>(0i, 2i))));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1048576000u));
  r0.x = (r0.x + r1.x);
  r1 = fma(cb5_5.tint_symbol[66u].xyxy, vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f), v1.xy.xyxy);
  r1 = (r1 * cb5_5.tint_symbol[66u].zwzw);
  let v_7 = r1.zwxy;
  let v_8 = max(v_7, vec4<f32>(-2147483648.0f));
  r1 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_8), vec4<i32>(2147483647i), (v_8 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_7 == v_7))));
  let v_9 = r1;
  r2 = vec4<f32>(v_9.zw, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.y = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r2.xy), 0i).y);
  let v_10 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yy) & vec2<u32>(128u, 7u)));
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r0.yz) != vec2<i32>(0i, 2i))));
  let v_13 = r0;
  r0 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1048576000u));
  r0.x = (r0.y + r0.x);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.y = bitcast<f32>(textureLoad(t8, bitcast<vec2<i32>>(r1.xy), 0i).y);
  let v_14 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yy) & vec2<u32>(128u, 7u)));
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  let v_16 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r0.yz) != vec2<i32>(0i, 2i))));
  let v_17 = r0;
  r0 = vec4<f32>(v_17.x, v_16.xy, v_17.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1048576000u));
  o0.w = (r0.y + r0.x);
  let v_18 = textureSampleLevel(t5, s5, v1.xy.xyxx.xy, 0.0f).xyz;
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = r0;
  o0 = vec4<f32>(v_19.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
