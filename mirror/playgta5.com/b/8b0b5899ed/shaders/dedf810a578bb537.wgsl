diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb9_struct {
  tint_symbol : array<vec4<f32>, 9u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb9_struct;

@group(1u) @binding(36u) var t4 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = fma(v2, cb12_12.tint_symbol[8u].xyxy, vec4<f32>(0.5f));
  r0 = trunc(r0);
  let v = r0.zwxy;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  let v_2 = r0;
  r1 = vec4<f32>(v_2.zw, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r1.y = (cb12_12.tint_symbol[0u].w + 1.0f);
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r1.x = (cb12_12.tint_symbol[0u].z / r1.x);
  let v_3 = fma(v1.xy, cb12_12.tint_symbol[8u].xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(r1.xy, v_3.xy);
  let v_4 = trunc(r1.zw);
  r1 = vec4<f32>(r1.xy, v_4.xy);
  let v_5 = r1.zw;
  let v_6 = max(v_5, vec2<f32>(-2147483648.0f));
  let v_7 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_6), vec2<i32>(2147483647i), (v_6 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_5 == v_5))));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r1.z = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r1.z = ((-(r1.zzzz)).z + r1.y);
  r1.z = (cb12_12.tint_symbol[0u].z / r1.z);
  r2.y = ((-(r1.zzzz)).y + r1.x);
  let v_8 = (r1.xx * cb12_12.tint_symbol[1u].yx);
  let v_9 = r2;
  r2 = vec4<f32>(v_8.x, v_9.y, v_8.y, v_9.w);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t4, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.y);
  r0.x = (cb12_12.tint_symbol[0u].z / r0.x);
  r3.x = ((-(r1.zzzz)).x + r0.x);
  let v_10 = (r0.xx * cb12_12.tint_symbol[1u].zw);
  let v_11 = r3;
  r3 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = (r2.xyz * r3.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = -(r0.xyzx);
  let v_14 = fma(r3.zxy, r2.yzx, v_13.xyz);
  r0 = vec4<f32>(v_14.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_15 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r1.x = sin(v1.z);
  r3.x = cos(v1.z);
  r3.y = r1.x;
  r4 = fma(r3.yxyx, cb12_12.tint_symbol[2u], v1.xyxy);
  r4 = fma(r4, cb12_12.tint_symbol[8u].xyxy, vec4<f32>(0.5f));
  r4 = trunc(r4);
  let v_16 = r4.xy;
  let v_17 = max(v_16, vec2<f32>(-2147483648.0f));
  let v_18 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_17), vec2<i32>(2147483647i), (v_17 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_16 == v_16))));
  r2 = vec4<f32>(v_18.xy, r2.zw);
  let v_19 = r4.zw;
  let v_20 = max(v_19, vec2<f32>(-2147483648.0f));
  let v_21 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_20), vec2<i32>(2147483647i), (v_20 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_19 == v_19))));
  r4 = vec4<f32>(v_21.xy, r4.zw);
  r0.w = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r0.w = ((-(r0.wwww)).w + r1.y);
  r0.w = (cb12_12.tint_symbol[0u].z / r0.w);
  r2 = (r3.yxyx * cb12_12.tint_symbol[2u]);
  r2 = (r2 * cb12_12.tint_symbol[0u].xyxy);
  let v_22 = (r0.ww * r2.xy);
  r5 = vec4<f32>(v_22.xy, r5.zw);
  r5.z = ((-(r1.zzzz)).z + r0.w);
  r6.x = dot(r5.xyz, r0.xyz);
  r0.w = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r0.w);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r0.w = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).x;
  r0.w = ((-(r0.wwww)).w + r1.y);
  r0.w = (cb12_12.tint_symbol[0u].z / r0.w);
  let v_23 = (r0.ww * r2.zw);
  r2 = vec4<f32>(v_23.xy, r2.zw);
  r2.z = ((-(r1.zzzz)).z + r0.w);
  r6.y = dot(r2.xyz, r0.xyz);
  r0.w = dot(r2.xyz, r2.xyz);
  r5.y = sqrt(r0.w);
  r2 = fma(r3.xyxy, cb12_12.tint_symbol[3u], v1.xyxy);
  r3 = (r3.xyxy * cb12_12.tint_symbol[3u]);
  r3 = (r3 * cb12_12.tint_symbol[0u].xyxy);
  r2 = fma(r2, cb12_12.tint_symbol[8u].xyxy, vec4<f32>(0.5f));
  r2 = trunc(r2);
  let v_24 = r2.xy;
  let v_25 = max(v_24, vec2<f32>(-2147483648.0f));
  let v_26 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_25), vec2<i32>(2147483647i), (v_25 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_24 == v_24))));
  r4 = vec4<f32>(v_26.xy, r4.zw);
  let v_27 = r2.zw;
  let v_28 = max(v_27, vec2<f32>(-2147483648.0f));
  let v_29 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_28), vec2<i32>(2147483647i), (v_28 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_27 == v_27))));
  r2 = vec4<f32>(v_29.xy, r2.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r0.w = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).x;
  r0.w = ((-(r0.wwww)).w + r1.y);
  r0.w = (cb12_12.tint_symbol[0u].z / r0.w);
  let v_30 = (r0.ww * r3.xy);
  r4 = vec4<f32>(v_30.xy, r4.zw);
  r4.z = ((-(r1.zzzz)).z + r0.w);
  r6.z = dot(r4.xyz, r0.xyz);
  r0.w = dot(r4.xyz, r4.xyz);
  r5.z = sqrt(r0.w);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r0.w = ((-(r0.wwww)).w + r1.y);
  r0.w = (cb12_12.tint_symbol[0u].z / r0.w);
  let v_31 = (r0.ww * r3.zw);
  r2 = vec4<f32>(v_31.xy, r2.zw);
  r2.z = ((-(r1.zzzz)).z + r0.w);
  r6.w = dot(r2.xyz, r0.xyz);
  r0.x = dot(r2.xyz, r2.xyz);
  r5.w = sqrt(r0.x);
  let v_32 = -(r6);
  r0 = (r5 + v_32);
  r0 = (r0 / r5);
  r1 = (r5 / r1.zzzz);
  r1 = (r1 * vec4<f32>(5.0f));
  r0 = clamp(max(r0, r1), vec4<f32>(), vec4<f32>(1.0f));
  r0.x = dot(r0, vec4<f32>(0.25f));
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol[4u].x);
  o0 = exp2(r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
