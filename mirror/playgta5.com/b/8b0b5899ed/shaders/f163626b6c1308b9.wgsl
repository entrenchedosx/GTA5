diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (v0.yy < vec2<f32>(1.0f, 2.0f))));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = v0.x;
  let v_4 = max(v_3, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
  r1 = vec4<f32>(r1.x, vec3<f32>());
  let v_5 = textureLoad(t4, bitcast<vec2<i32>>(r1.xw), bitcast<i32>(r1.w)).xyz;
  r2 = vec4<f32>(v_5.xyz, r2.w);
  let v_6 = textureLoad(t3, bitcast<vec2<i32>>(r1.xw), bitcast<i32>(r1.w)).yz;
  r0 = vec4<f32>(r0.xy, v_6.xy);
  r3 = (r2.yzyz * r0.zzzz);
  r2 = (r2.xyzx * r0.wwwz);
  let v_7 = textureLoad(t4, bitcast<vec2<i32>>(r1.xw), bitcast<i32>(r1.w)).xyz;
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = textureLoad(t3, bitcast<vec2<i32>>(r1.xw), bitcast<i32>(r1.w)).xyz;
  r5 = vec4<f32>(v_8.xyz, r5.w);
  r4.w = (r4.z * r5.x);
  let v_9 = textureLoad(t3, bitcast<vec2<i32>>(r1.xw), bitcast<i32>(r1.w)).xy;
  r6 = vec4<f32>(v_9.xy, r6.zw);
  let v_10 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r4.ww * r6.yx);
  r6 = vec4<f32>(r6.xy, v_11.xy);
  r7 = (r0.zwzw * r5.yxzz);
  r0.z = fma(r7.x, r1.z, r6.w);
  let v_12 = -(r6.zzzz);
  r0.w = fma(r3.y, r6.y, v_12.w);
  r8.z = fma((-(r7.zzzz)).z, r1.z, r0.w);
  r0.z = fma((-(r7.yyyy)).z, r1.z, r0.z);
  r9.z = fma((-(r3.wwww)).z, r6.x, r0.z);
  r10 = (r4.zzxy * r5.yzxx);
  r4 = (r4.xxyy * r5.yzyz);
  let v_13 = (r6.xx * r10.zw);
  r0 = vec4<f32>(r0.xy, v_13.xy);
  r0.z = fma(r7.x, r1.x, r0.z);
  r0.w = fma(r7.x, r1.y, r0.w);
  r0.w = fma((-(r7.yyyy)).w, r1.y, r0.w);
  r9.y = fma((-(r3.zzzz)).y, r6.x, r0.w);
  r0.z = fma((-(r7.yyyy)).z, r1.x, r0.z);
  r9.x = fma((-(r2.wwww)).x, r6.x, r0.z);
  r0.z = (r6.y * r7.y);
  let v_14 = -(r0.zzzz);
  r0.z = fma(r7.x, r6.y, v_14.z);
  r0.z = fma((-(r7.zzzz)).z, r6.x, r0.z);
  let v_15 = (r9.xyz / r0.zzz);
  r3 = vec4<f32>(r3.x, v_15.xyz);
  let v_16 = (r6.yy * r10.zw);
  r5 = vec4<f32>(v_16.xy, r5.zw);
  let v_17 = -(r5.yyyy);
  r0.w = fma(r3.x, r6.y, v_17.w);
  let v_18 = -(r5.xxxx);
  r1.w = fma(r2.w, r6.y, v_18.w);
  r8.x = fma((-(r7.zzzz)).x, r1.x, r1.w);
  r8.y = fma((-(r7.zzzz)).y, r1.y, r0.w);
  let v_19 = (r1.xyz * r7.www);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  let v_20 = (r8.xyz / r0.zzz);
  r5 = vec4<f32>(v_20.xyz, r5.w);
  let v_21 = bitcast<vec3<u32>>(r0.yyy);
  let v_22 = r5.xyz;
  let v_23 = select(r3.yzw, v_22, (v_21 != vec3<u32>()));
  r3 = vec4<f32>(v_23.xyz, r3.w);
  let v_24 = fma(r4.xz, r6.yy, r1.xy);
  let v_25 = r0;
  r0 = vec4<f32>(v_25.x, v_24.x, v_25.z, v_24.y);
  r1.x = fma(r10.x, r6.y, r1.z);
  r1.x = fma((-(r2.zzzz)).x, r6.y, r1.x);
  let v_26 = fma((-(r2.xxxy)).yw, r6.yy, r0.yw);
  let v_27 = r0;
  r0 = vec4<f32>(v_27.x, v_26.x, v_27.z, v_26.y);
  let v_28 = fma((-(r4.ywyy)).xy, r6.xx, r0.yw);
  r2 = vec4<f32>(v_28.xy, r2.zw);
  r2.z = fma((-(r10.yyyy)).z, r6.x, r1.x);
  let v_29 = (r2.xyz / r0.zzz);
  r0 = vec4<f32>(r0.x, v_29.xyz);
  let v_30 = bitcast<vec3<u32>>(r0.xxx);
  let v_31 = r0.yzw;
  let v_32 = select(r3.xyz, v_31, (v_30 != vec3<u32>()));
  o0 = vec4<f32>(v_32.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@builtin(position) v_33 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_33);
  return o0;
}
