diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb9_struct {
  tint_symbol_1 : array<vec4<f32>, 9u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb9_struct;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  let v = (-(cb2_2.tint_symbol[18u].zwzz)).xy;
  r0 = vec4<f32>(v.xy, r0.zw);
  r1 = (r0.xyxy + v2);
  r1 = fma(r1, cb12_12.tint_symbol_1[8u].xyxy, vec4<f32>(0.5f));
  r1 = trunc(r1);
  let v_1 = r1.zwxy;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r1 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
  let v_3 = r1;
  r2 = vec4<f32>(v_3.zw, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r0.w = (cb12_12.tint_symbol_1[0u].w + 1.0f);
  r2.x = ((-(r2.xxxx)).x + r0.w);
  r2.x = (cb12_12.tint_symbol_1[0u].z / r2.x);
  let v_4 = (r2.xx * cb12_12.tint_symbol_1[1u].yx);
  let v_5 = r3;
  r3 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  let v_6 = -(r1.xxxx);
  r1.x = (r0.w + v_6.x);
  r1.x = (cb12_12.tint_symbol_1[0u].z / r1.x);
  let v_7 = (r1.xx * cb12_12.tint_symbol_1[1u].zw);
  let v_8 = r4;
  r4 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  r0.z = 0.0f;
  let v_9 = (r0.xyz + v1.xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  let v_10 = fma(r0.xy, cb12_12.tint_symbol_1[8u].xy, vec2<f32>(0.5f));
  let v_11 = r1;
  r1 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = trunc(r1.yz);
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = r1.yz;
  let v_15 = max(v_14, vec2<f32>(-2147483648.0f));
  let v_16 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_15), vec2<i32>(2147483647i), (v_15 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_14 == v_14))));
  r5 = vec4<f32>(v_16.xy, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r5 = textureLoad(t4, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
  let v_17 = -(r5.xxxx);
  r1.y = (r0.w + v_17.y);
  r1.y = (cb12_12.tint_symbol_1[0u].z / r1.y);
  r3.y = ((-(r1.yyyy)).y + r2.x);
  r4.x = ((-(r1.yyyy)).x + r1.x);
  let v_18 = (r3.xyz * r4.xyz);
  r1 = vec4<f32>(v_18.x, r1.y, v_18.yz);
  let v_19 = -(r1.xxzw);
  let v_20 = fma(r4.zxy, r3.yzx, v_19.xzw);
  r1 = vec4<f32>(v_20.x, r1.y, v_20.yz);
  r2.x = dot(r1.xzw, r1.xzw);
  r2.x = inverseSqrt(r2.x);
  let v_21 = (r1.xzw * r2.xxx);
  r1 = vec4<f32>(v_21.x, r1.y, v_21.yz);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  let v_22 = r0.zzzz;
  r3.x = sin(v_22.x);
  r4.x = cos(v_22.x);
  r4.y = r3.x;
  r3 = fma(r4.yxyx, cb12_12.tint_symbol_1[2u], r0.xyxy);
  r5 = fma(r4.xyxy, cb12_12.tint_symbol_1[3u], r0.xyxy);
  r5 = fma(r5, cb12_12.tint_symbol_1[8u].xyxy, vec4<f32>(0.5f));
  r5 = trunc(r5);
  r3 = fma(r3, cb12_12.tint_symbol_1[8u].xyxy, vec4<f32>(0.5f));
  r3 = trunc(r3);
  let v_23 = r3.xy;
  let v_24 = max(v_23, vec2<f32>(-2147483648.0f));
  let v_25 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_24), vec2<i32>(2147483647i), (v_24 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_23 == v_23))));
  r2 = vec4<f32>(v_25.xy, r2.zw);
  let v_26 = r3.zw;
  let v_27 = max(v_26, vec2<f32>(-2147483648.0f));
  let v_28 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_27), vec2<i32>(2147483647i), (v_27 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_26 == v_26))));
  r3 = vec4<f32>(v_28.xy, r3.zw);
  r2 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  let v_29 = -(r2.xxxx);
  r0.x = (r0.w + v_29.x);
  r0.x = (cb12_12.tint_symbol_1[0u].z / r0.x);
  r2 = (r4.yxyx * cb12_12.tint_symbol_1[2u]);
  r4 = (r4.xyxy * cb12_12.tint_symbol_1[3u]);
  r4 = (r4 * cb12_12.tint_symbol_1[0u].xyxy);
  r2 = (r2 * cb12_12.tint_symbol_1[0u].xyxy);
  let v_30 = (r0.xx * r2.xy);
  r6 = vec4<f32>(v_30.xy, r6.zw);
  r6.z = ((-(r1.yyyy)).z + r0.x);
  r7.x = dot(r6.xyz, r1.xzw);
  r0.x = dot(r6.xyz, r6.xyz);
  r6.x = sqrt(r0.x);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r3 = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  let v_31 = -(r3.xxxx);
  r0.x = (r0.w + v_31.x);
  r0.x = (cb12_12.tint_symbol_1[0u].z / r0.x);
  let v_32 = (r0.xx * r2.zw);
  r2 = vec4<f32>(v_32.xy, r2.zw);
  r2.z = ((-(r1.yyyy)).z + r0.x);
  r7.y = dot(r2.xyz, r1.xzw);
  r0.x = dot(r2.xyz, r2.xyz);
  r6.y = sqrt(r0.x);
  let v_33 = r5.xy;
  let v_34 = max(v_33, vec2<f32>(-2147483648.0f));
  let v_35 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_34), vec2<i32>(2147483647i), (v_34 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_33 == v_33))));
  r2 = vec4<f32>(v_35.xy, r2.zw);
  let v_36 = r5.zw;
  let v_37 = max(v_36, vec2<f32>(-2147483648.0f));
  let v_38 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_37), vec2<i32>(2147483647i), (v_37 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_36 == v_36))));
  r3 = vec4<f32>(v_38.xy, r3.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  let v_39 = -(r2.xxxx);
  r0.x = (r0.w + v_39.x);
  r0.x = (cb12_12.tint_symbol_1[0u].z / r0.x);
  let v_40 = (r0.xx * r4.xy);
  r2 = vec4<f32>(v_40.xy, r2.zw);
  r2.z = ((-(r1.yyyy)).z + r0.x);
  r7.z = dot(r2.xyz, r1.xzw);
  r0.x = dot(r2.xyz, r2.xyz);
  r6.z = sqrt(r0.x);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r2 = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  let v_41 = -(r2.xxxx);
  r0.x = (r0.w + v_41.x);
  r0.x = (cb12_12.tint_symbol_1[0u].z / r0.x);
  let v_42 = (r0.xx * r4.zw);
  r2 = vec4<f32>(v_42.xy, r2.zw);
  r2.z = ((-(r1.yyyy)).z + r0.x);
  r7.w = dot(r2.xyz, r1.xzw);
  r0.x = dot(r2.xyz, r2.xyz);
  r6.w = sqrt(r0.x);
  let v_43 = -(r7);
  r0 = (r6 + v_43);
  r0 = (r0 / r6);
  r2 = (r6 / r1.yyyy);
  let v_44 = -(cb12_12.tint_symbol_1[5u].xxxx);
  r1.x = (r1.y + v_44.x);
  r1.x = clamp(((r1.xxxx * cb12_12.tint_symbol_1[5u].yyyy)).x, 0.0f, 1.0f);
  r2 = (r2 * vec4<f32>(5.0f));
  r0 = clamp(max(r0, r2), vec4<f32>(), vec4<f32>(1.0f));
  r0.x = dot(r0, vec4<f32>(0.25f));
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_1[4u].x);
  r0.x = exp2(r0.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  o0 = fma(-(r1.xxxx), r0.xxxx, vec4<f32>(1.0f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
