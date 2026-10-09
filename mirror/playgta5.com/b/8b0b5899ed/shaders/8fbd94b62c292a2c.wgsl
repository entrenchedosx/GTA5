diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 34u> = array<vec4<f32>, 34u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(0x1.cp-146f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.cp-146f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.cp-146f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.c01cp-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.c01cp-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.c01cp-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.ep-146f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.ep-146f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.ep-146f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.c01ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.c01ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.c01ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.e01ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.e01ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.e01ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.e1dep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.e1dep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.e1dep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fddep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fddep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fddep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fe1ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fe1ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fe1ep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.ffdep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.ffdep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.ffdep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fffep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fffep-134f, 0.0f, 0.0f, 0.0f), vec4<f32>(0x1.fffep-134f, 0.0f, 0.0f, 0.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 10u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_2;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  r0.x = (v3.z * 255.0f);
  let v_3 = r0.x;
  let v_4 = max(v_3, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) >> 3u));
  r0.y = bitcast<f32>((15u & bitcast<u32>(icb0[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].x)));
  r1.x = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].x) >> 4u));
  r1.y = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].x) >> 8u));
  r0.x = bitcast<f32>((bitcast<i32>(icb0[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].x) >> 12u));
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) & vec2<u32>(15u)));
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = vec2<f32>(bitcast<vec2<i32>>(r0.xy));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r1.x = (r0.y * 0.06666667014360427856f);
  let v_7 = vec2<f32>(bitcast<vec2<i32>>(r0.zw));
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = (r0.yzx * vec3<f32>(0.06666667014360427856f));
  r1 = vec4<f32>(r1.x, v_9.xyz);
  let v_10 = max(v0.xy, vec2<f32>());
  let v_11 = bitcast<vec2<f32>>(select(vec2<u32>(v_10), vec2<u32>(4294967295u), (v_10 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_11.xy, r0.zw);
  let v_12 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1u)));
  r0 = vec4<f32>(v_12.xy, r0.zw);
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) << 1u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) + bitcast<i32>(r0.y)));
  r0.x = dot(r1, icb0[bitcast<i32>(r0.x)]);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  v_13((bitcast<u32>(r0.x) != 0u));
  r0 = textureSample(t7, s7, v3.xyz.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol[2u].x < 1.0f)));
  r2 = vec4<f32>(v1.xyz, r2.w);
  r2.w = 1.0f;
  r2 = (r0 * r2);
  let v_14 = bitcast<vec4<u32>>(r1.xxxx);
  let v_15 = r2;
  r0 = select(r0, v_15, (v_14 != vec4<u32>()));
  r1.x = (r0.x * cb5_5.tint_symbol[2u].x);
  o3.z = (r1.x * 0.5f);
  o0 = r0;
  let v_16 = fma(v2.xyz, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_16.xyz, o1.w);
  o1.w = 1.0f;
  o2 = vec4<f32>(0.80000001192092895508f, 0.20000000298023223877f, 0.94999998807907104492f, 0.93999999761581420898f);
  o3 = vec4<f32>(vec2<f32>(0.64999997615814208984f, 0.5f), o3.z, 1.0f);
}

fn v_13(v_17 : bool) {
  if (v_17) {
    discard;
    return;
  }
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@builtin(position) v_18 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_18, v1, v2, v3);
  return tint_symbol_3(o0, o1, o2, o3);
}
