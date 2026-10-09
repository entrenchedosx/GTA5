diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (cb12_12.tint_symbol[4u].xy * cb12_12.tint_symbol[7u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = (r0.xyxy * vec4<f32>(1.46630120277404785156f, 1.46630120277404785156f, 3.42189478874206542969f, 3.42189478874206542969f));
  r2 = fma(v0.xyxy, cb12_12.tint_symbol[7u].xyxy, r1);
  let v_3 = -(r1);
  r1 = fma(v0.xyxy, cb12_12.tint_symbol[7u].xyxy, v_3);
  r3 = textureSampleLevel(t2, s2, r2.zwzz.xy, 0.0f);
  r3.x = ((-(r3.xxxx)).x + 1.0f);
  r4 = textureSampleLevel(t2, s2, r1.zwzz.xy, 0.0f);
  r3.y = ((-(r4.xxxx)).y + 1.0f);
  let v_4 = (r3.xy * r3.xy);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.zw * r0.zw);
  r3 = vec4<f32>(v_5.xy, r3.zw);
  let v_6 = (r3.xy * r3.xy);
  r3 = vec4<f32>(v_6.xy, r3.zw);
  let v_7 = (v0.xy * cb12_12.tint_symbol[7u].xy);
  r3 = vec4<f32>(r3.xy, v_7.xy);
  r4 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
  r5 = textureSampleLevel(t4, s4, r3.zwzz.xy, 0.0f);
  r3.z = ((-(r4.xxxx)).z + 1.0f);
  r3.z = log2(r3.z);
  r3.z = (r3.z * 10.0f);
  r3.z = exp2(r3.z);
  let v_8 = -(r3.zzzz);
  let v_9 = fma(r0.zw, r3.xy, v_8.zw);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  r4 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f);
  let v_10 = ((-(r4.xxxx)).xz + vec2<f32>(1.0f));
  let v_11 = r4;
  r4 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
  r6 = textureSampleLevel(t2, s2, r1.xyxx.xy, 0.0f);
  let v_12 = ((-(r6.xxxx)).yw + vec2<f32>(1.0f));
  let v_13 = r4;
  r4 = vec4<f32>(v_13.x, v_12.x, v_13.z, v_12.y);
  r4 = (r4 * r4);
  r6 = (r4.zwzw * r4.zwzw);
  r6 = (r6 * r6);
  let v_14 = -(r3.zzzz);
  r4 = fma(r4, r6, v_14);
  let v_15 = abs(r4.wwww);
  r3.x = min(v_15.x, abs(r4.zzzz).x);
  r3.x = (r3.x * 2.5f);
  let v_16 = abs(r0.zzzw);
  let v_17 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.xx >= v_16.zw)));
  r0 = vec4<f32>(r0.xy, v_17.xy);
  let v_18 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.zw) & vec2<u32>(1065353216u)));
  r0 = vec4<f32>(r0.xy, v_18.xy);
  let v_19 = abs(r4);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r3.xxxx >= v_19)));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u, 1065353216u, 1064614976u, 1062589509u)));
  let v_20 = (r0.zw * r4.xy);
  r0 = vec4<f32>(r0.xy, v_20.xy);
  let v_21 = (r0.zw * vec2<f32>(0.66697680950164794922f, 0.48675224184989929199f));
  let v_22 = r3;
  r3 = vec4<f32>(v_22.x, v_21.x, v_22.z, v_21.y);
  r6 = textureSampleLevel(t4, s4, r2.zwzz.xy, 0.0f);
  r2 = textureSampleLevel(t4, s4, r2.xyxx.xy, 0.0f);
  r7 = textureSampleLevel(t4, s4, r1.zwzz.xy, 0.0f);
  r1 = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f);
  r2.y = r1.x;
  r1.x = dot(r4.zw, r2.xy);
  r1.y = (r4.w + r4.z);
  r1.y = (r1.y + 1.0f);
  r1.x = (r1.x + r5.x);
  r6.y = r7.x;
  r1.z = dot(r3.yw, r6.xy);
  r1.w = (r3.w + r3.y);
  let v_23 = (r1.zw + r1.xy);
  r1 = vec4<f32>(v_23.xy, r1.zw);
  r2 = (r0.xyxy * vec4<f32>(5.37871646881103515625f, 5.37871646881103515625f, 7.33737802505493164062f, 7.33737802505493164062f));
  let v_24 = (r0.xy * vec2<f32>(9.29838466644287109375f));
  r0 = vec4<f32>(v_24.xy, r0.zw);
  r4 = fma(v0.xyxy, cb12_12.tint_symbol[7u].xyxy, r2);
  let v_25 = -(r2);
  r2 = fma(v0.xyxy, cb12_12.tint_symbol[7u].xyxy, v_25);
  r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
  r5.x = ((-(r5.xxxx)).x + 1.0f);
  r6 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f);
  r5.y = ((-(r6.xxxx)).y + 1.0f);
  let v_26 = (r5.xy * r5.xy);
  r1 = vec4<f32>(r1.xy, v_26.xy);
  let v_27 = (r1.zw * r1.zw);
  let v_28 = r3;
  r3 = vec4<f32>(v_28.x, v_27.x, v_28.z, v_27.y);
  let v_29 = (r3.yw * r3.yw);
  let v_30 = r3;
  r3 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
  let v_31 = -(r3.zzzz);
  let v_32 = fma(r1.zw, r3.yw, v_31.zw);
  r1 = vec4<f32>(r1.xy, v_32.xy);
  let v_33 = abs(r1.zzzw);
  let v_34 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.xx >= v_33.zw)));
  r1 = vec4<f32>(r1.xy, v_34.xy);
  let v_35 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.zw) & vec2<u32>(1065353216u)));
  r1 = vec4<f32>(r1.xy, v_35.xy);
  let v_36 = (r0.zw * r1.zw);
  r0 = vec4<f32>(r0.xy, v_36.xy);
  let v_37 = (r0.zw * vec2<f32>(0.32465246319770812988f, 0.19789870083332061768f));
  r1 = vec4<f32>(r1.xy, v_37.xy);
  r5 = textureSampleLevel(t4, s4, r4.xyxx.xy, 0.0f);
  r6 = textureSampleLevel(t4, s4, r2.xyxx.xy, 0.0f);
  r5.y = r6.x;
  r2.x = dot(r1.zw, r5.xy);
  r1.z = (r1.w + r1.z);
  r1.y = (r1.z + r1.y);
  r1.x = (r1.x + r2.x);
  r5 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
  r4 = textureSampleLevel(t4, s4, r4.zwzz.xy, 0.0f);
  r2.x = ((-(r5.xxxx)).x + 1.0f);
  r5 = textureSampleLevel(t2, s2, r2.zwzz.xy, 0.0f);
  r6 = textureSampleLevel(t4, s4, r2.zwzz.xy, 0.0f);
  r4.y = r6.x;
  r2.y = ((-(r5.xxxx)).y + 1.0f);
  let v_38 = (r2.xy * r2.xy);
  r1 = vec4<f32>(r1.xy, v_38.xy);
  let v_39 = (r1.zw * r1.zw);
  r2 = vec4<f32>(v_39.xy, r2.zw);
  let v_40 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_40.xy, r2.zw);
  let v_41 = -(r3.zzzz);
  let v_42 = fma(r1.zw, r2.xy, v_41.zw);
  r1 = vec4<f32>(r1.xy, v_42.xy);
  let v_43 = abs(r1.zzzw);
  let v_44 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.xx >= v_43.zw)));
  r1 = vec4<f32>(r1.xy, v_44.xy);
  let v_45 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.zw) & vec2<u32>(1065353216u)));
  r1 = vec4<f32>(r1.xy, v_45.xy);
  let v_46 = (r0.zw * r1.zw);
  r0 = vec4<f32>(r0.xy, v_46.xy);
  let v_47 = (r0.zw * vec2<f32>(0.11025052517652511597f, 0.05613476410508155823f));
  r1 = vec4<f32>(r1.xy, v_47.xy);
  r2.x = dot(r1.zw, r4.xy);
  r1.z = (r1.w + r1.z);
  r1.y = (r1.z + r1.y);
  r1.x = (r1.x + r2.x);
  let v_48 = fma(v0.xy, cb12_12.tint_symbol[7u].xy, r0.xy);
  r1 = vec4<f32>(r1.xy, v_48.xy);
  let v_49 = -(r0.xyxx);
  let v_50 = fma(v0.xy, cb12_12.tint_symbol[7u].xy, v_49.xy);
  r0 = vec4<f32>(v_50.xy, r0.zw);
  r2 = textureSampleLevel(t2, s2, r1.zwzz.xy, 0.0f);
  r4 = textureSampleLevel(t4, s4, r1.zwzz.xy, 0.0f);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r5 = textureSampleLevel(t2, s2, r0.xyxx.xy, 0.0f);
  r6 = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f);
  r4.y = r6.x;
  r2.y = ((-(r5.xxxx)).y + 1.0f);
  let v_51 = (r2.xy * r2.xy);
  r0 = vec4<f32>(v_51.xy, r0.zw);
  let v_52 = (r0.xy * r0.xy);
  r1 = vec4<f32>(r1.xy, v_52.xy);
  let v_53 = (r1.zw * r1.zw);
  r1 = vec4<f32>(r1.xy, v_53.xy);
  let v_54 = -(r3.zzzz);
  let v_55 = fma(r0.xy, r1.zw, v_54.xy);
  r0 = vec4<f32>(v_55.xy, r0.zw);
  let v_56 = abs(r0.xyxx);
  let v_57 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.xx >= v_56.xy)));
  r0 = vec4<f32>(v_57.xy, r0.zw);
  let v_58 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(1065353216u)));
  r0 = vec4<f32>(v_58.xy, r0.zw);
  let v_59 = (r0.xy * r0.zw);
  r0 = vec4<f32>(v_59.xy, r0.zw);
  let v_60 = (r0.xy * vec2<f32>(0.02612140960991382599f, 0.01110899634659290314f));
  r0 = vec4<f32>(v_60.xy, r0.zw);
  r0.z = dot(r0.xy, r4.xy);
  r0.x = (r0.y + r0.x);
  let v_61 = (r0.xz + r1.yx);
  r0 = vec4<f32>(v_61.xy, r0.zw);
  o0 = (r0.yyyy / r0.xxxx);
}

@fragment
fn main(@builtin(position) v_62 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_62);
  return o0;
}
