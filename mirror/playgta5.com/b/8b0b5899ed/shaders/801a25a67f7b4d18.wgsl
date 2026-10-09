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

@group(1u) @binding(36u) var t4 : texture_multisampled_2d<f32>;

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
  r0.w = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r2.x = (cb12_12.tint_symbol_1[0u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r2.x);
  r0.w = (cb12_12.tint_symbol_1[0u].z / r0.w);
  let v_4 = (r0.ww * cb12_12.tint_symbol_1[1u].yx);
  let v_5 = r3;
  r3 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r2.x);
  r1.x = (cb12_12.tint_symbol_1[0u].z / r1.x);
  let v_6 = (r1.xx * cb12_12.tint_symbol_1[1u].zw);
  let v_7 = r4;
  r4 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.z = 0.0f;
  let v_8 = (r0.xyz + v1.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = fma(r0.xy, cb12_12.tint_symbol_1[8u].xy, vec2<f32>(0.5f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = trunc(r1.yz);
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = r1.yz;
  let v_14 = max(v_13, vec2<f32>(-2147483648.0f));
  let v_15 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_14), vec2<i32>(2147483647i), (v_14 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_13 == v_13))));
  r5 = vec4<f32>(v_15.xy, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r1.y = textureLoad(t4, bitcast<vec2<i32>>(r5.xy), 0i).x;
  r1.y = ((-(r1.yyyy)).y + r2.x);
  r1.y = (cb12_12.tint_symbol_1[0u].z / r1.y);
  let v_16 = -(r1.yyyy);
  r3.y = (r0.w + v_16.y);
  r4.x = ((-(r1.yyyy)).x + r1.x);
  let v_17 = (r3.xyz * r4.xyz);
  r1 = vec4<f32>(v_17.x, r1.y, v_17.yz);
  let v_18 = -(r1.xxzw);
  let v_19 = fma(r4.zxy, r3.yzx, v_18.xzw);
  r1 = vec4<f32>(v_19.x, r1.y, v_19.yz);
  r0.w = dot(r1.xzw, r1.xzw);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r1.xzw);
  r1 = vec4<f32>(v_20.x, r1.y, v_20.yz);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  let v_21 = r0.zzzz;
  r4.x = sin(v_21.x);
  r5.x = cos(v_21.x);
  r5.y = r4.x;
  r4 = fma(r5.yxyx, cb12_12.tint_symbol_1[2u], r0.xyxy);
  r0 = fma(r5.xyxy, cb12_12.tint_symbol_1[3u], r0.xyxy);
  r0 = fma(r0, cb12_12.tint_symbol_1[8u].xyxy, vec4<f32>(0.5f));
  r0 = trunc(r0);
  r4 = fma(r4, cb12_12.tint_symbol_1[8u].xyxy, vec4<f32>(0.5f));
  r4 = trunc(r4);
  let v_22 = r4.xy;
  let v_23 = max(v_22, vec2<f32>(-2147483648.0f));
  let v_24 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_23), vec2<i32>(2147483647i), (v_23 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_22 == v_22))));
  r3 = vec4<f32>(v_24.xy, r3.zw);
  let v_25 = r4.zw;
  let v_26 = max(v_25, vec2<f32>(-2147483648.0f));
  let v_27 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_26), vec2<i32>(2147483647i), (v_26 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_25 == v_25))));
  r4 = vec4<f32>(v_27.xy, r4.zw);
  r2.y = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r2.y = ((-(r2.yyyy)).y + r2.x);
  r2.y = (cb12_12.tint_symbol_1[0u].z / r2.y);
  r3 = (r5.yxyx * cb12_12.tint_symbol_1[2u]);
  r5 = (r5.xyxy * cb12_12.tint_symbol_1[3u]);
  r5 = (r5 * cb12_12.tint_symbol_1[0u].xyxy);
  r3 = (r3 * cb12_12.tint_symbol_1[0u].xyxy);
  let v_28 = (r2.yy * r3.xy);
  r6 = vec4<f32>(v_28.xy, r6.zw);
  r6.z = ((-(r1.yyyy)).z + r2.y);
  r7.x = dot(r6.xyz, r1.xzw);
  r2.y = dot(r6.xyz, r6.xyz);
  r6.x = sqrt(r2.y);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r2.y = textureLoad(t4, bitcast<vec2<i32>>(r4.xy), 0i).x;
  r2.y = ((-(r2.yyyy)).y + r2.x);
  r2.y = (cb12_12.tint_symbol_1[0u].z / r2.y);
  let v_29 = (r2.yy * r3.zw);
  r3 = vec4<f32>(v_29.xy, r3.zw);
  r3.z = ((-(r1.yyyy)).z + r2.y);
  r7.y = dot(r3.xyz, r1.xzw);
  r2.y = dot(r3.xyz, r3.xyz);
  r6.y = sqrt(r2.y);
  let v_30 = r0.xy;
  let v_31 = max(v_30, vec2<f32>(-2147483648.0f));
  let v_32 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_31), vec2<i32>(2147483647i), (v_31 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_30 == v_30))));
  r3 = vec4<f32>(v_32.xy, r3.zw);
  let v_33 = r0.zw;
  let v_34 = max(v_33, vec2<f32>(-2147483648.0f));
  let v_35 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_34), vec2<i32>(2147483647i), (v_34 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_33 == v_33))));
  r0 = vec4<f32>(v_35.xy, r0.zw);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r2.y = textureLoad(t4, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r2.y = ((-(r2.yyyy)).y + r2.x);
  r2.y = (cb12_12.tint_symbol_1[0u].z / r2.y);
  let v_36 = (r2.yy * r5.xy);
  r3 = vec4<f32>(v_36.xy, r3.zw);
  r3.z = ((-(r1.yyyy)).z + r2.y);
  r7.z = dot(r3.xyz, r1.xzw);
  r2.y = dot(r3.xyz, r3.xyz);
  r6.z = sqrt(r2.y);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t4, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r2.x);
  r0.x = (cb12_12.tint_symbol_1[0u].z / r0.x);
  let v_37 = (r0.xx * r5.zw);
  r2 = vec4<f32>(v_37.xy, r2.zw);
  r2.z = ((-(r1.yyyy)).z + r0.x);
  r7.w = dot(r2.xyz, r1.xzw);
  r0.x = dot(r2.xyz, r2.xyz);
  r6.w = sqrt(r0.x);
  let v_38 = -(r7);
  r0 = (r6 + v_38);
  r0 = (r0 / r6);
  r2 = (r6 / r1.yyyy);
  let v_39 = -(cb12_12.tint_symbol_1[5u].xxxx);
  r1.x = (r1.y + v_39.x);
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
