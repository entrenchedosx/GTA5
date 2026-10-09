diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0.w = 0.0f;
  let v_2 = v0.yx;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r1.x = bitcast<f32>((bitcast<i32>(r0.x) + -2i));
  r0.z = bitcast<f32>((bitcast<i32>(r1.x) >> 1u));
  let v_5 = r0;
  r1 = vec4<f32>(v_5.y, r1.y, v_5.ww);
  r1.y = bitcast<f32>((bitcast<i32>(r0.x) >> 1u));
  r2.x = bitcast<f32>((bitcast<u32>(r0.x) & 1u));
  let v_6 = bitcast<vec2<u32>>(r2.xx);
  let v_7 = r1.wy;
  let v_8 = select(r0.wz, v_7, (v_6 != vec2<u32>()));
  r3 = vec4<f32>(v_8.xy, r3.zw);
  r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.yzww) + vec4<i32>(0i, 1i, 0i, 0i)));
  let v_9 = r0;
  r3 = vec4<f32>(r3.xy, v_9.yx);
  let v_10 = bitcast<vec4<u32>>(r2.xxxx);
  let v_11 = r1;
  r0 = select(r4, v_11, (v_10 != vec4<u32>()));
  let v_12 = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w)).xyz;
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = textureLoad(t4, bitcast<vec2<i32>>(r3.zw), bitcast<i32>(r3.x)).xyz;
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = textureLoad(t5, bitcast<vec2<i32>>(r3.zy), bitcast<i32>(r3.x)).xyz;
  r2 = vec4<f32>(r2.x, v_14.xyz);
  let v_15 = textureLoad(t3, bitcast<vec2<i32>>(r3.zw), bitcast<i32>(r3.x)).xyz;
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma((-(r3.xxxx)).xyz, r2.yzw, r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = fma((-(r3.zzzz)).xyz, r0.xyz, r1.xyz);
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r1.xyz / r3.yyy);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = bitcast<vec3<u32>>(r2.xxx);
  let v_20 = r0.xyz;
  let v_21 = select(r1.xyz, v_20, (v_19 != vec3<u32>()));
  o0 = vec4<f32>(v_21.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@builtin(position) v_22 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_22);
  return o0;
}
