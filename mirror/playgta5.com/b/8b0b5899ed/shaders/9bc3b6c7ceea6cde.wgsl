diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v0.x < 1.0f)));
  let v_2 = v0.y;
  let v_3 = max(v_2, -2147483648.0f);
  r1.y = bitcast<f32>(select(select(i32(v_3), 2147483647i, (v_3 >= 2147483648.0f)), 0i, !((v_2 == v_2))));
  r1 = vec4<f32>(0.0f, r1.y, vec2<f32>());
  let v_4 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = textureLoad(t3, bitcast<vec2<i32>>(r1.wy), bitcast<i32>(r1.w)).yz;
  let v_6 = r1;
  r1 = vec4<f32>(v_5.x, v_6.y, v_5.y, v_6.w);
  let v_7 = (r0.yzw * r1.zzz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = textureLoad(t4, bitcast<vec2<i32>>(r1.wy), bitcast<i32>(r1.w)).xyz;
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = textureLoad(t3, bitcast<vec2<i32>>(r1.wy), bitcast<i32>(r1.w)).xy;
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.x, v_10.z, v_9.y);
  let v_11 = -(r2.xyzx);
  let v_12 = fma(r3.xyz, r1.www, v_11.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r3.xyz * r1.yyy);
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = -(r3.xxyz);
  let v_15 = fma(r1.xxx, r0.yzw, v_14.yzw);
  r0 = vec4<f32>(r0.x, v_15.xyz);
  r1.y = (r1.y * r1.z);
  let v_16 = -(r1.yyyy);
  r1.x = fma(r1.x, r1.w, v_16.x);
  let v_17 = (r2.xyz / r1.xxx);
  r1 = vec4<f32>(r1.x, v_17.xyz);
  let v_18 = (r0.yzw / r1.xxx);
  r0 = vec4<f32>(r0.x, v_18.xyz);
  let v_19 = bitcast<vec3<u32>>(r0.xxx);
  let v_20 = r1.yzw;
  let v_21 = select(r0.yzw, v_20, (v_19 != vec3<u32>()));
  o0 = vec4<f32>(v_21.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@builtin(position) v_22 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_22);
  return o0;
}
