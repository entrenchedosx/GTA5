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

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb4_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>) {
  r0 = (v2 * cb2_2.tint_symbol[18u].xyxy);
  let v = r0.zwxy;
  let v_1 = max(v, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_1), vec4<i32>(2147483647i), (v_1 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v == v))));
  let v_2 = r0;
  r1 = vec4<f32>(v_2.zw, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r1.y = (cb5_5.tint_symbol_1[0u].w + 1.0f);
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.y = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.y);
  r2.z = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_3 = (v1.zw * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = r0.xy;
  let v_5 = max(v_4, vec2<f32>(-2147483648.0f));
  let v_6 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_5), vec2<i32>(2147483647i), (v_5 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_4 == v_4))));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.y);
  r2.x = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_7 = (v3.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = r0.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + r1.y);
  r2.w = (cb5_5.tint_symbol_1[0u].z / r0.x);
  let v_11 = -(cb5_5.tint_symbol_1[3u].xxxx);
  r0 = (r2 + v_11);
  r0 = clamp(fma(-(r0), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3.z = 0.0f;
  let v_12 = r4;
  r4 = vec4<f32>(2.0f, v_12.y, 3.0f, v_12.w);
  let v_13 = cb2_2.tint_symbol[18u];
  let v_14 = r4;
  r4 = vec4<f32>(v_14.x, v_13.w, v_14.z, v_13.w);
  let v_15 = (r4.xyy * vec3<f32>(0.0f, 0.5f, 0.25f));
  r3 = vec4<f32>(v_15.xy, r3.z, v_15.z);
  r5 = (r3.zwxy + v1.zwzw);
  r5 = (r5 * cb2_2.tint_symbol[18u].xyxy);
  let v_16 = r5.xy;
  let v_17 = max(v_16, vec2<f32>(-2147483648.0f));
  let v_18 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_17), vec2<i32>(2147483647i), (v_17 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_16 == v_16))));
  r2 = vec4<f32>(v_18.xy, r2.zw);
  let v_19 = r5.zw;
  let v_20 = max(v_19, vec2<f32>(-2147483648.0f));
  let v_21 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_20), vec2<i32>(2147483647i), (v_20 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_19 == v_19))));
  r5 = vec4<f32>(v_21.xy, r5.zw);
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.x = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r7 = (r3.zwzw + v2);
  r3 = (r3.zwxy + v3.xy.xyxy);
  r3 = (r3 * cb2_2.tint_symbol[18u].xyxy);
  r7 = (r7 * cb2_2.tint_symbol[18u].xyxy);
  let v_22 = r7.xy;
  let v_23 = max(v_22, vec2<f32>(-2147483648.0f));
  let v_24 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_23), vec2<i32>(2147483647i), (v_23 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_22 == v_22))));
  r6 = vec4<f32>(v_24.xy, r6.zw);
  let v_25 = r7.zw;
  let v_26 = max(v_25, vec2<f32>(-2147483648.0f));
  let v_27 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_26), vec2<i32>(2147483647i), (v_26 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_25 == v_25))));
  r7 = vec4<f32>(v_27.xy, r7.zw);
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r6.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.y = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r7.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.z = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  let v_28 = r3.xy;
  let v_29 = max(v_28, vec2<f32>(-2147483648.0f));
  let v_30 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_29), vec2<i32>(2147483647i), (v_29 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_28 == v_28))));
  r6 = vec4<f32>(v_30.xy, r6.zw);
  let v_31 = r3.zw;
  let v_32 = max(v_31, vec2<f32>(-2147483648.0f));
  let v_33 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_32), vec2<i32>(2147483647i), (v_32 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_31 == v_31))));
  r3 = vec4<f32>(v_33.xy, r3.zw);
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r6.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.w = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r2 = (r2 + v_11);
  r2 = clamp(fma(-(r2), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r0 = max(r0, r2);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r6 = fma(vec4<f32>(0.0f, 0.5f, 0.0f, 0.5f), r4.xyxy, v2);
  r6 = (r6 * cb2_2.tint_symbol[18u].xyxy);
  let v_34 = r6.zwxy;
  let v_35 = max(v_34, vec4<f32>(-2147483648.0f));
  r6 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_35), vec4<i32>(2147483647i), (v_35 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_34 == v_34))));
  let v_36 = r6;
  r2 = vec4<f32>(v_36.zw, r2.zw);
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.y = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r6.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.z = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r5.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.x = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.w = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r2 = (r2 + v_11);
  r2 = clamp(fma(-(r2), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r0 = max(r0, r2);
  let v_37 = fma(vec2<f32>(0.0f, 0.75f), r4.zw, v1.zw);
  let v_38 = r1;
  r1 = vec4<f32>(v_37.x, v_38.y, v_37.y, v_38.w);
  let v_39 = (r1.xz * cb2_2.tint_symbol[18u].xy);
  let v_40 = r1;
  r1 = vec4<f32>(v_39.x, v_40.y, v_39.y, v_40.w);
  let v_41 = r1.xz;
  let v_42 = max(v_41, vec2<f32>(-2147483648.0f));
  let v_43 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_42), vec2<i32>(2147483647i), (v_42 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_41 == v_41))));
  r2 = vec4<f32>(v_43.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.x = (cb5_5.tint_symbol_1[0u].z / r1.x);
  let v_44 = fma(vec2<f32>(0.0f, 0.75f), r4.zw, v3.xy);
  let v_45 = r1;
  r1 = vec4<f32>(v_44.x, v_45.y, v_44.y, v_45.w);
  r3 = fma(vec4<f32>(0.0f, 0.75f, 0.0f, 0.75f), r4.zwzw, v2);
  r3 = (r3 * cb2_2.tint_symbol[18u].xyxy);
  let v_46 = r3.zwxy;
  let v_47 = max(v_46, vec4<f32>(-2147483648.0f));
  r3 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_47), vec4<i32>(2147483647i), (v_47 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_46 == v_46))));
  let v_48 = (r1.xz * cb2_2.tint_symbol[18u].xy);
  let v_49 = r1;
  r1 = vec4<f32>(v_48.x, v_49.y, v_48.y, v_49.w);
  let v_50 = r1.xz;
  let v_51 = max(v_50, vec2<f32>(-2147483648.0f));
  let v_52 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_51), vec2<i32>(2147483647i), (v_51 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_50 == v_50))));
  r4 = vec4<f32>(v_52.xy, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r4.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.w = (cb5_5.tint_symbol_1[0u].z / r1.x);
  let v_53 = r3;
  r4 = vec4<f32>(v_53.zw, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r4.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.y = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r1.x = textureLoad(t3, bitcast<vec2<i32>>(r3.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + r1.y);
  r2.z = (cb5_5.tint_symbol_1[0u].z / r1.x);
  r1 = (r2 + v_11);
  r1 = clamp(fma(-(r1), cb5_5.tint_symbol_1[3u].yyyy, vec4<f32>(1.0f)), vec4<f32>(), vec4<f32>(1.0f));
  r0 = max(r0, r1);
  let v_54 = max(r0.yw, r0.xz);
  r0 = vec4<f32>(v_54.xy, r0.zw);
  o0.w = max(r0.y, r0.x);
  let v_55 = textureSample(t5, s5, v1.xyxx.xy).xyz;
  r0 = vec4<f32>(v_55.xyz, r0.w);
  let v_56 = r0;
  o0 = vec4<f32>(v_56.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2, v3);
  return o0;
}
