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

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

var<private> r15 : vec4<f32>;

var<private> r16 : vec4<f32>;

var<private> r17 : vec4<f32>;

var<private> r18 : vec4<f32>;

var<private> r19 : vec4<f32>;

var<private> r20 : vec4<f32>;

var<private> r21 : vec4<f32>;

var<private> r22 : vec4<f32>;

var<private> r23 : vec4<f32>;

var<private> r24 : vec4<f32>;

var<private> r25 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_2;

fn main_inner(v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = v0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1 = textureLoad(t6, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  let v_6 = trunc(v0.xy);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = fma(r1.yz, vec2<f32>(0.5f), vec2<f32>(-0.25f));
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = fract(r1.yz);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = ((-(r2.xxxy)).zw + vec2<f32>(1.0f));
  r2 = vec4<f32>(r2.xy, v_11.xy);
  r2 = (r2.wwyy * r2.zxzx);
  let v_12 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r0.xyx) + vec3<i32>(-1i)));
  r1 = vec4<f32>(r1.x, v_12.xyz);
  let v_13 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.xyx) & vec3<u32>(1u)));
  r3 = vec4<f32>(v_13.xyz, r3.w);
  let v_14 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r1.yzw) + bitcast<vec3<i32>>(r3.xyz)));
  r1 = vec4<f32>(r1.x, v_14.xyz);
  let v_15 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r1.wzw) + vec3<i32>(0i, 0i, 1i)));
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r1.yzw) + vec3<i32>(0i, 1i, 1i)));
  r4 = vec4<f32>(v_16.xyz, r4.w);
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3.zyxy) >> vec4<u32>(1u)));
  let v_17 = r5;
  r6 = vec4<f32>(v_17.zw, r6.zw);
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r6 = textureLoad(t7, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r5 = textureLoad(t7, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
  r7 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4.zyxy) >> vec4<u32>(1u)));
  let v_18 = r7;
  r8 = vec4<f32>(v_18.zw, r8.zw);
  r8 = vec4<f32>(r8.xy, vec2<f32>());
  r8 = textureLoad(t7, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w));
  r7 = vec4<f32>(r7.xy, vec2<f32>());
  r7 = textureLoad(t7, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
  r3.w = 0.0f;
  r9 = textureLoad(t6, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r3 = textureLoad(t6, bitcast<vec2<i32>>(r3.zy), bitcast<i32>(r3.w));
  r4.w = 0.0f;
  r10 = textureLoad(t6, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
  r4 = textureLoad(t6, bitcast<vec2<i32>>(r4.zy), bitcast<i32>(r4.w));
  r9.y = r3.x;
  r9.z = r10.x;
  r9.w = r4.x;
  r3 = (-(r1.xxxx) + r9);
  r3 = (abs(r3) + vec4<f32>(1.0f));
  r3 = (vec4<f32>(1.0f) / r3);
  r3 = log2(r3);
  r3 = (r3 * cb12_12.tint_symbol[7u].wwww);
  r3 = exp2(r3);
  r2 = (r2 * r3);
  r6.y = r5.x;
  r6.z = r8.x;
  r6.w = r7.x;
  r1.y = dot(r2, r6);
  let v_19 = (cb12_12.tint_symbol[6u].xy * cb12_12.tint_symbol[7u].xx);
  r1 = vec4<f32>(r1.xy, v_19.xy);
  let v_20 = (r1.zw * vec2<f32>(0.5f));
  r1 = vec4<f32>(r1.xy, v_20.xy);
  let v_21 = (r1.xx * cb12_12.tint_symbol[0u].xy);
  r2 = vec4<f32>(v_21.xy, r2.zw);
  let v_22 = (r1.zw / r2.xy);
  r2 = vec4<f32>(v_22.xy, r2.zw);
  r1.z = max(r2.y, r2.x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z >= 1.0f)));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r3 = textureLoad(t10, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    r4 = textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    r5 = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    let v_23 = fma(r5.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r4 = vec4<f32>(r4.x, v_23.xyz);
    let v_24 = min(r2.xy, cb12_12.tint_symbol[7u].yy);
    r0 = vec4<f32>(r0.xy, v_24.xy);
    let v_25 = r0.zw;
    let v_26 = max(v_25, vec2<f32>(-2147483648.0f));
    let v_27 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_26), vec2<i32>(2147483647i), (v_26 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_25 == v_25))));
    r0 = vec4<f32>(r0.xy, v_27.xy);
    r0.z = bitcast<f32>(max(bitcast<i32>(r0.w), bitcast<i32>(r0.z)));
    let v_28 = cb12_12.tint_symbol[6u].xy;
    let v_29 = max(v_28, vec2<f32>(-2147483648.0f));
    let v_30 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_29), vec2<i32>(2147483647i), (v_29 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_28 == v_28))));
    r1 = vec4<f32>(r1.xy, v_30.xy);
    let v_31 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.zw) + vec2<i32>(-1i)));
    r1 = vec4<f32>(r1.xy, v_31.xy);
    r3.y = r4.x;
    r3.z = r1.x;
    r0.w = (cb12_12.tint_symbol[7u].x * cb12_12.tint_symbol[7u].x);
    r2 = vec4<f32>(r2.xy, vec2<f32>());
    let v_32 = r5;
    r5 = vec4<f32>(v_32.x, 0.0f, v_32.z, 0.0f);
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    r8 = vec4<f32>(r8.xy, vec2<f32>());
    r9 = vec4<f32>(r9.xy, vec2<f32>());
    r10 = vec4<f32>(r10.xy, vec2<f32>());
    r11 = vec4<f32>(r11.xy, vec2<f32>());
    r12 = vec4<f32>(r12.xy, vec2<f32>());
    r13 = vec4<f32>(vec2<f32>(), r13.zw);
    r1.x = bitcast<f32>(v.tint_symbol_1[0i].x);
    loop {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r1.x))));
      if ((bitcast<u32>(r3.w) != 0u)) {
        break;
      }
      r5.x = r1.x;
      r14 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r5.xyyx)));
      r14 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r14), vec4<i32>()));
      let v_33 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.zw), bitcast<vec2<i32>>(r14.xy)));
      r2 = vec4<f32>(v_33.xy, r2.zw);
      r15 = textureLoad(t10, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
      r16 = textureLoad(t11, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
      r17 = textureLoad(t6, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
      r5.z = bitcast<f32>(-(bitcast<i32>(r1.x)));
      r18 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r5.wzzw)));
      r18 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r18), vec4<i32>()));
      let v_34 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.zw), bitcast<vec2<i32>>(r18.xy)));
      r6 = vec4<f32>(v_34.xy, r6.zw);
      r19 = textureLoad(t10, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
      r20 = textureLoad(t11, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
      r21 = textureLoad(t6, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
      let v_35 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.zw), bitcast<vec2<i32>>(r18.zw)));
      r7 = vec4<f32>(v_35.xy, r7.zw);
      r18 = textureLoad(t10, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
      r22 = textureLoad(t11, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
      r23 = textureLoad(t6, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
      let v_36 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.zw), bitcast<vec2<i32>>(r14.zw)));
      r8 = vec4<f32>(v_36.xy, r8.zw);
      r14 = textureLoad(t10, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w));
      r24 = textureLoad(t11, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w));
      r25 = textureLoad(t6, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w));
      r15.y = r16.x;
      r15.z = r17.x;
      let v_37 = ((-(r3.xyzx)).xyz + r15.xyz);
      r15 = vec4<f32>(v_37.xyz, r15.w);
      r19.y = r20.x;
      r19.z = r21.x;
      let v_38 = ((-(r3.xyzx)).xyz + r19.xyz);
      r16 = vec4<f32>(v_38.xyz, r16.w);
      r18.y = r22.x;
      r18.z = r23.x;
      let v_39 = ((-(r3.xyzx)).xyz + r18.xyz);
      r17 = vec4<f32>(v_39.xyz, r17.w);
      r14.y = r24.x;
      r14.z = r25.x;
      let v_40 = ((-(r3.xyzx)).xyz + r14.xyz);
      r14 = vec4<f32>(v_40.xyz, r14.w);
      r18.x = dot(r15.xyz, r15.xyz);
      r18.y = dot(r16.xyz, r16.xyz);
      r18.z = dot(r17.xyz, r17.xyz);
      r18.w = dot(r14.xyz, r14.xyz);
      r15.x = dot(r15.xyz, r4.yzw);
      r15.y = dot(r16.xyz, r4.yzw);
      r15.z = dot(r17.xyz, r4.yzw);
      r15.w = dot(r14.xyz, r4.yzw);
      r14 = max(r15, vec4<f32>());
      r14 = (r14 * r14);
      r14 = (r14 / r18);
      r15 = fma(r14, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
      r14 = (r14 * r15);
      r15 = (r18 / r0.wwww);
      r15 = min(r15, vec4<f32>(1.0f));
      r15 = (-(r15) + vec4<f32>(1.0f));
      r2.x = dot(r15, r14);
      r2.x = (r2.x + r13.x);
      r14 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r5.xxxz)));
      r14 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r14), vec4<i32>()));
      let v_41 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.zw), bitcast<vec2<i32>>(r14.xy)));
      r9 = vec4<f32>(v_41.xy, r9.zw);
      r15 = textureLoad(t10, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(r9.w));
      r16 = textureLoad(t11, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(r9.w));
      r17 = textureLoad(t6, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(r9.w));
      let v_42 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.zw), bitcast<vec2<i32>>(r14.zw)));
      r10 = vec4<f32>(v_42.xy, r10.zw);
      r14 = textureLoad(t10, bitcast<vec2<i32>>(r10.xy), bitcast<i32>(r10.w));
      r18 = textureLoad(t11, bitcast<vec2<i32>>(r10.xy), bitcast<i32>(r10.w));
      r19 = textureLoad(t6, bitcast<vec2<i32>>(r10.xy), bitcast<i32>(r10.w));
      r20 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r5.zzzx)));
      r20 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r20), vec4<i32>()));
      let v_43 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.zw), bitcast<vec2<i32>>(r20.xy)));
      r11 = vec4<f32>(v_43.xy, r11.zw);
      r21 = textureLoad(t10, bitcast<vec2<i32>>(r11.xy), bitcast<i32>(r11.w));
      r22 = textureLoad(t11, bitcast<vec2<i32>>(r11.xy), bitcast<i32>(r11.w));
      r23 = textureLoad(t6, bitcast<vec2<i32>>(r11.xy), bitcast<i32>(r11.w));
      let v_44 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.zw), bitcast<vec2<i32>>(r20.zw)));
      r12 = vec4<f32>(v_44.xy, r12.zw);
      r20 = textureLoad(t10, bitcast<vec2<i32>>(r12.xy), bitcast<i32>(r12.w));
      r24 = textureLoad(t11, bitcast<vec2<i32>>(r12.xy), bitcast<i32>(r12.w));
      r25 = textureLoad(t6, bitcast<vec2<i32>>(r12.xy), bitcast<i32>(r12.w));
      r15.y = r16.x;
      r15.z = r17.x;
      let v_45 = ((-(r3.xyzx)).xyz + r15.xyz);
      r15 = vec4<f32>(v_45.xyz, r15.w);
      r14.y = r18.x;
      r14.z = r19.x;
      let v_46 = ((-(r3.xyzx)).xyz + r14.xyz);
      r14 = vec4<f32>(v_46.xyz, r14.w);
      r21.y = r22.x;
      r21.z = r23.x;
      let v_47 = ((-(r3.xyzx)).xyz + r21.xyz);
      r16 = vec4<f32>(v_47.xyz, r16.w);
      r20.y = r24.x;
      r20.z = r25.x;
      let v_48 = ((-(r3.xyzx)).xyz + r20.xyz);
      r17 = vec4<f32>(v_48.xyz, r17.w);
      r18.x = dot(r15.xyz, r15.xyz);
      r18.y = dot(r14.xyz, r14.xyz);
      r18.z = dot(r16.xyz, r16.xyz);
      r18.w = dot(r17.xyz, r17.xyz);
      r15.x = dot(r15.xyz, r4.yzw);
      r15.y = dot(r14.xyz, r4.yzw);
      r15.z = dot(r16.xyz, r4.yzw);
      r15.w = dot(r17.xyz, r4.yzw);
      r14 = max(r15, vec4<f32>());
      r14 = (r14 * r14);
      r14 = (r14 / r18);
      r15 = fma(r14, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
      r14 = (r14 * r15);
      r15 = (r18 / r0.wwww);
      r15 = min(r15, vec4<f32>(1.0f));
      r15 = (-(r15) + vec4<f32>(1.0f));
      r2.y = dot(r15, r14);
      r13.x = (r2.y + r2.x);
      r13.y = (r13.y + 8.0f);
      r1.x = bitcast<f32>((bitcast<i32>(r1.x) + 1i));
    }
    r0.x = (r13.x / r13.y);
  } else {
    r0.x = 0.0f;
  }
  o0 = max(r1.yyyy, r0.xxxx);
}

@fragment
fn main(@builtin(position) v_49 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_49);
  return o0;
}
