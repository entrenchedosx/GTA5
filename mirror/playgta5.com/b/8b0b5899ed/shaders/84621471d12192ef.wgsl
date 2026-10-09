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

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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
  let v_6 = (cb12_12.tint_symbol[6u].xy * cb12_12.tint_symbol[7u].xx);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = (r1.yz * vec2<f32>(0.5f));
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r1.xx * cb12_12.tint_symbol[0u].xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = (r1.yz / r2.xy);
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r1.w = max(r1.z, r1.y);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 1.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r2 = textureLoad(t10, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    r3 = textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    r4 = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    let v_13 = fma(r4.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r3 = vec4<f32>(r3.x, v_13.xyz);
    let v_14 = min(r1.yz, cb12_12.tint_symbol[7u].yy);
    r0 = vec4<f32>(r0.xy, v_14.xy);
    let v_15 = r0.zw;
    let v_16 = max(v_15, vec2<f32>(-2147483648.0f));
    let v_17 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_16), vec2<i32>(2147483647i), (v_16 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_15 == v_15))));
    r0 = vec4<f32>(r0.xy, v_17.xy);
    r0.z = bitcast<f32>(max(bitcast<i32>(r0.w), bitcast<i32>(r0.z)));
    let v_18 = cb12_12.tint_symbol[6u].xy;
    let v_19 = max(v_18, vec2<f32>(-2147483648.0f));
    let v_20 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_19), vec2<i32>(2147483647i), (v_19 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_18 == v_18))));
    let v_21 = r1;
    r1 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
    let v_22 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.yz) + vec2<i32>(-1i)));
    let v_23 = r1;
    r1 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
    r2.y = r3.x;
    r2.z = r1.x;
    r0.w = (cb12_12.tint_symbol[7u].x * cb12_12.tint_symbol[7u].x);
    r4 = vec4<f32>(r4.xy, vec2<f32>());
    let v_24 = r5;
    r5 = vec4<f32>(v_24.x, 0.0f, v_24.z, 0.0f);
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    r8 = vec4<f32>(r8.xy, vec2<f32>());
    r9 = vec4<f32>(r9.xy, vec2<f32>());
    r10 = vec4<f32>(r10.xy, vec2<f32>());
    r11 = vec4<f32>(r11.xy, vec2<f32>());
    r12 = vec4<f32>(r12.xy, vec2<f32>());
    r1 = vec4<f32>(0.0f, r1.yz, 0.0f);
    r2.w = bitcast<f32>(v.tint_symbol_1[0i].x);
    loop {
      r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r2.w))));
      if ((bitcast<u32>(r3.x) != 0u)) {
        break;
      }
      r5.x = r2.w;
      r13 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r5.xyyx)));
      r13 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r13), vec4<i32>()));
      let v_25 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r13.xy)));
      r4 = vec4<f32>(v_25.xy, r4.zw);
      r14 = textureLoad(t10, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
      r15 = textureLoad(t11, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
      r16 = textureLoad(t6, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
      r5.z = bitcast<f32>(-(bitcast<i32>(r2.w)));
      r17 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r5.wzzw)));
      r17 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r17), vec4<i32>()));
      let v_26 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r17.xy)));
      r6 = vec4<f32>(v_26.xy, r6.zw);
      r18 = textureLoad(t10, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
      r19 = textureLoad(t11, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
      r20 = textureLoad(t6, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
      let v_27 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r17.zw)));
      r7 = vec4<f32>(v_27.xy, r7.zw);
      r17 = textureLoad(t10, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
      r21 = textureLoad(t11, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
      r22 = textureLoad(t6, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
      let v_28 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r13.zw)));
      r8 = vec4<f32>(v_28.xy, r8.zw);
      r13 = textureLoad(t10, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w));
      r23 = textureLoad(t11, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w));
      r24 = textureLoad(t6, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(r8.w));
      r14.y = r15.x;
      r14.z = r16.x;
      let v_29 = ((-(r2.xyzx)).xyz + r14.xyz);
      r14 = vec4<f32>(v_29.xyz, r14.w);
      r18.y = r19.x;
      r18.z = r20.x;
      let v_30 = ((-(r2.xyzx)).xyz + r18.xyz);
      r15 = vec4<f32>(v_30.xyz, r15.w);
      r17.y = r21.x;
      r17.z = r22.x;
      let v_31 = ((-(r2.xyzx)).xyz + r17.xyz);
      r16 = vec4<f32>(v_31.xyz, r16.w);
      r13.y = r23.x;
      r13.z = r24.x;
      let v_32 = ((-(r2.xyzx)).xyz + r13.xyz);
      r13 = vec4<f32>(v_32.xyz, r13.w);
      r17.x = dot(r14.xyz, r14.xyz);
      r17.y = dot(r15.xyz, r15.xyz);
      r17.z = dot(r16.xyz, r16.xyz);
      r17.w = dot(r13.xyz, r13.xyz);
      r14.x = dot(r14.xyz, r3.yzw);
      r14.y = dot(r15.xyz, r3.yzw);
      r14.z = dot(r16.xyz, r3.yzw);
      r14.w = dot(r13.xyz, r3.yzw);
      r13 = max(r14, vec4<f32>());
      r13 = (r13 * r13);
      r13 = (r13 / r17);
      r14 = fma(r13, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
      r13 = (r13 * r14);
      r14 = (r17 / r0.wwww);
      r14 = min(r14, vec4<f32>(1.0f));
      r14 = (-(r14) + vec4<f32>(1.0f));
      r3.x = dot(r14, r13);
      r3.x = (r1.x + r3.x);
      r13 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r5.xxxz)));
      r13 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r13), vec4<i32>()));
      let v_33 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r13.xy)));
      r9 = vec4<f32>(v_33.xy, r9.zw);
      r14 = textureLoad(t10, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(r9.w));
      r15 = textureLoad(t11, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(r9.w));
      r16 = textureLoad(t6, bitcast<vec2<i32>>(r9.xy), bitcast<i32>(r9.w));
      let v_34 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r13.zw)));
      r10 = vec4<f32>(v_34.xy, r10.zw);
      r13 = textureLoad(t10, bitcast<vec2<i32>>(r10.xy), bitcast<i32>(r10.w));
      r17 = textureLoad(t11, bitcast<vec2<i32>>(r10.xy), bitcast<i32>(r10.w));
      r18 = textureLoad(t6, bitcast<vec2<i32>>(r10.xy), bitcast<i32>(r10.w));
      r19 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r5.zzzx)));
      r19 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r19), vec4<i32>()));
      let v_35 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r19.xy)));
      r11 = vec4<f32>(v_35.xy, r11.zw);
      r20 = textureLoad(t10, bitcast<vec2<i32>>(r11.xy), bitcast<i32>(r11.w));
      r21 = textureLoad(t11, bitcast<vec2<i32>>(r11.xy), bitcast<i32>(r11.w));
      r22 = textureLoad(t6, bitcast<vec2<i32>>(r11.xy), bitcast<i32>(r11.w));
      let v_36 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r19.zw)));
      r12 = vec4<f32>(v_36.xy, r12.zw);
      r19 = textureLoad(t10, bitcast<vec2<i32>>(r12.xy), bitcast<i32>(r12.w));
      r23 = textureLoad(t11, bitcast<vec2<i32>>(r12.xy), bitcast<i32>(r12.w));
      r24 = textureLoad(t6, bitcast<vec2<i32>>(r12.xy), bitcast<i32>(r12.w));
      r14.y = r15.x;
      r14.z = r16.x;
      let v_37 = ((-(r2.xyzx)).xyz + r14.xyz);
      r14 = vec4<f32>(v_37.xyz, r14.w);
      r13.y = r17.x;
      r13.z = r18.x;
      let v_38 = ((-(r2.xyzx)).xyz + r13.xyz);
      r13 = vec4<f32>(v_38.xyz, r13.w);
      r20.y = r21.x;
      r20.z = r22.x;
      let v_39 = ((-(r2.xyzx)).xyz + r20.xyz);
      r15 = vec4<f32>(v_39.xyz, r15.w);
      r19.y = r23.x;
      r19.z = r24.x;
      let v_40 = ((-(r2.xyzx)).xyz + r19.xyz);
      r16 = vec4<f32>(v_40.xyz, r16.w);
      r17.x = dot(r14.xyz, r14.xyz);
      r17.y = dot(r13.xyz, r13.xyz);
      r17.z = dot(r15.xyz, r15.xyz);
      r17.w = dot(r16.xyz, r16.xyz);
      r14.x = dot(r14.xyz, r3.yzw);
      r14.y = dot(r13.xyz, r3.yzw);
      r14.z = dot(r15.xyz, r3.yzw);
      r14.w = dot(r16.xyz, r3.yzw);
      r13 = max(r14, vec4<f32>());
      r13 = (r13 * r13);
      r13 = (r13 / r17);
      r14 = fma(r13, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
      r13 = (r13 * r14);
      r14 = (r17 / r0.wwww);
      r14 = min(r14, vec4<f32>(1.0f));
      r14 = (-(r14) + vec4<f32>(1.0f));
      r4.x = dot(r14, r13);
      r1.x = (r3.x + r4.x);
      r1.w = (r1.w + 8.0f);
      r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
    }
    r0.x = (r1.x / r1.w);
  } else {
    r0.x = 0.0f;
  }
  o0 = r0.xxxx;
}

@fragment
fn main(@builtin(position) v_41 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_41);
  return o0;
}
