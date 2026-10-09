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
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v0.y < 1.0f)));
  let v_2 = v0.x;
  let v_3 = max(v_2, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_3), 2147483647i, (v_3 >= 2147483648.0f)), 0i, !((v_2 == v_2))));
  r1 = vec4<f32>(r1.x, vec3<f32>());
  let v_4 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = textureLoad(t3, bitcast<vec2<i32>>(r1.xw), bitcast<i32>(r1.w)).yz;
  let v_6 = r1;
  r1 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = (r0.yzw * r1.zzz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = textureLoad(t4, bitcast<vec2<i32>>(r1.xw), bitcast<i32>(r1.w)).xyz;
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = textureLoad(t3, bitcast<vec2<i32>>(r1.xw), bitcast<i32>(r1.w)).xy;
  r1 = vec4<f32>(v_9.x, r1.yz, v_9.y);
  let v_10 = -(r2.xyzx);
  let v_11 = fma(r3.xyz, r1.www, v_10.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = (r3.xyz * r1.xxx);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = -(r3.xxyz);
  let v_14 = fma(r1.yyy, r0.yzw, v_13.yzw);
  r0 = vec4<f32>(r0.x, v_14.xyz);
  r1.x = (r1.x * r1.z);
  let v_15 = -(r1.xxxx);
  r1.x = fma(r1.y, r1.w, v_15.x);
  let v_16 = (r2.xyz / r1.xxx);
  r1 = vec4<f32>(r1.x, v_16.xyz);
  let v_17 = (r0.yzw / r1.xxx);
  r0 = vec4<f32>(r0.x, v_17.xyz);
  let v_18 = bitcast<vec3<u32>>(r0.xxx);
  let v_19 = r1.yzw;
  let v_20 = select(r0.yzw, v_19, (v_18 != vec3<u32>()));
  o0 = vec4<f32>(v_20.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@builtin(position) v_21 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_21);
  return o0;
}
