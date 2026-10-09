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

var<private> r26 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb3_struct;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 2u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_2;

fn main_inner(v_1 : vec4<f32>, v1 : u32) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = v0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.xy) >> vec2<u32>(3u)));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = textureLoad(t6, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).x;
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x == 0.0f)));
  if ((bitcast<u32>(r1.y) != 0u)) {
    o0 = vec4<f32>();
    return;
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 1.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r0.z = 0.0f;
    r1.x = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v1)).x;
    r1.x = ((-(r1.xxxx)).x + cb10_10.tint_symbol[0u].w);
    r1.x = (r1.x + 1.0f);
    r1.x = (cb10_10.tint_symbol[0u].z / r1.x);
    let v_7 = (v0.xy * cb10_10.tint_symbol[1u].zw);
    let v_8 = r1;
    r1 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
    let v_9 = fma(r1.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
    let v_10 = r1;
    r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
    let v_11 = (r1.yz * cb10_10.tint_symbol[0u].xy);
    r2 = vec4<f32>(v_11.xy, r2.zw);
    r2.z = 1.0f;
    let v_12 = (r1.xxx * r2.xyz);
    r1 = vec4<f32>(r1.x, v_12.xyz);
    let v_13 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
    r2 = vec4<f32>(v_13.xy, r2.zw);
    let v_14 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
    r3 = vec4<f32>(v_14.xy, r3.zw);
    let v_15 = (r2.xy * r3.xy);
    r2 = vec4<f32>(v_15.xy, r2.zw);
    let v_16 = (r2.xy / r1.ww);
    r2 = vec4<f32>(v_16.xy, r2.zw);
    let v_17 = min(r2.xy, cb10_10.tint_symbol[2u].yy);
    r2 = vec4<f32>(v_17.xy, r2.zw);
    r1.w = max(r2.y, r2.x);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (r1.w < 1.0f)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r2.y = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v1)).x;
    }
    if ((bitcast<u32>(r2.x) != 0u)) {
    } else {
      r1.w = trunc(r1.w);
      let v_18 = r1.w;
      let v_19 = max(v_18, -2147483648.0f);
      r1.w = bitcast<f32>(select(select(i32(v_19), 2147483647i, (v_19 >= 2147483648.0f)), 0i, !((v_18 == v_18))));
      r0.z = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v1)).x;
      let v_20 = -(cb10_10.tint_symbol[0u].xxxx);
      r2.x = fma(cb10_10.tint_symbol[2u].z, v0.x, v_20.x);
      r2.w = fma((-(cb10_10.tint_symbol[2u].wwww)).w, v0.y, cb10_10.tint_symbol[0u].y);
      let v_21 = v0.xyxy;
      let v_22 = max(v_21, vec4<f32>(-2147483648.0f));
      r3 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_22), vec4<i32>(2147483647i), (v_22 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_21 == v_21))));
      r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r3) + vec4<i32>(1i, 1i, -1i, -1i)));
      r5 = vec4<f32>(r5.xy, vec2<f32>());
      r6 = vec4<f32>(r6.xy, vec2<f32>());
      r7 = vec4<f32>(r7.xy, vec2<f32>());
      r8 = vec4<f32>(r8.xy, vec2<f32>());
      r9 = r2.xxxx;
      r10 = r2.wwww;
      r3.x = 1.0f;
      r3.y = r0.z;
      r11.x = r4.x;
      r11.y = r3.w;
      r12.x = r3.z;
      r12.y = r4.y;
      r13.x = r4.z;
      r13.y = r3.w;
      r14.x = r3.z;
      r14.y = r4.w;
      r11.z = 0.0f;
      loop {
        r11.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) < bitcast<i32>(r11.z))));
        if ((bitcast<u32>(r11.w) != 0u)) {
          break;
        }
        r11.w = bitcast<f32>((bitcast<u32>(r11.z) & 1u));
        if ((bitcast<u32>(r11.w) != 0u)) {
          r15 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r9);
          r16 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r10);
          let v_23 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r11.xy) + vec2<i32>(1i, 0i)));
          r12 = vec4<f32>(r12.xy, v_23.xy);
          let v_24 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r12.xy) + vec2<i32>(0i, 1i)));
          r13 = vec4<f32>(r13.xy, v_24.xy);
          let v_25 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r13.xy) + vec2<i32>(-1i, 0i)));
          r14 = vec4<f32>(r14.xy, v_25.xy);
          let v_26 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r14.xy) + vec2<i32>(0i, -1i)));
          r17 = vec4<f32>(v_26.xy, r17.zw);
          r11.w = bitcast<f32>(v.tint_symbol_1[0i].x);
        } else {
          r15 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f), r9);
          r16 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r10);
          let v_27 = r11;
          r12 = vec4<f32>(r12.xy, v_27.xy);
          let v_28 = r12;
          r13 = vec4<f32>(r13.xy, v_28.xy);
          let v_29 = r13;
          r14 = vec4<f32>(r14.xy, v_29.xy);
          let v_30 = r14;
          r17 = vec4<f32>(v_30.xy, r17.zw);
          r11.w = bitcast<f32>(v.tint_symbol_1[1i].x);
        }
        r18 = r15;
        r19 = r16;
        let v_31 = r3;
        r17 = vec4<f32>(r17.xy, v_31.xy);
        let v_32 = r12;
        r20 = vec4<f32>(v_32.zw, r20.zw);
        let v_33 = r13;
        r20 = vec4<f32>(r20.xy, v_33.zw);
        let v_34 = r14;
        r21 = vec4<f32>(v_34.zw, r21.zw);
        let v_35 = r17;
        r21 = vec4<f32>(r21.xy, v_35.xy);
        r22.x = r11.w;
        loop {
          r22.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) < bitcast<i32>(r22.x))));
          if ((bitcast<u32>(r22.y) != 0u)) {
            break;
          }
          let v_36 = r20;
          r5 = vec4<f32>(v_36.xy, r5.zw);
          r22.y = textureLoad(t7, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(v1)).x;
          r23.x = ((-(r22.yyyy)).x + cb10_10.tint_symbol[0u].w);
          let v_37 = textureLoad(t5, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(v1)).xy;
          r5 = vec4<f32>(v_37.xy, r5.zw);
          let v_38 = r20;
          r6 = vec4<f32>(v_38.zw, r6.zw);
          r22.y = textureLoad(t7, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(v1)).x;
          r23.y = ((-(r22.yyyy)).y + cb10_10.tint_symbol[0u].w);
          let v_39 = textureLoad(t5, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(v1)).xy;
          r6 = vec4<f32>(v_39.xy, r6.zw);
          let v_40 = r21;
          r7 = vec4<f32>(v_40.xy, r7.zw);
          r22.y = textureLoad(t7, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(v1)).x;
          r23.z = ((-(r22.yyyy)).z + cb10_10.tint_symbol[0u].w);
          let v_41 = textureLoad(t5, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(v1)).xy;
          r7 = vec4<f32>(v_41.xy, r7.zw);
          let v_42 = r21;
          r8 = vec4<f32>(v_42.zw, r8.zw);
          r22.y = textureLoad(t7, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(v1)).x;
          r23.w = ((-(r22.yyyy)).w + cb10_10.tint_symbol[0u].w);
          let v_43 = textureLoad(t5, bitcast<vec2<i32>>(r8.xy), bitcast<i32>(v1)).xy;
          r24 = vec4<f32>(v_43.x, r24.yz, v_43.y);
          r25.x = r5.x;
          r25.y = r6.x;
          r25.z = r7.x;
          r25.w = r24.x;
          r24.x = r5.y;
          r24.y = r6.y;
          r24.z = r7.y;
          r24 = min(r24, r25);
          r23 = (r23 + vec4<f32>(1.0f));
          r23 = (cb10_10.tint_symbol[0u].zzzz / r23);
          let v_44 = -(r1.yyyy);
          r25 = fma(r18, r23, v_44);
          let v_45 = -(r1.zzzz);
          r26 = fma(r19, r23, v_45);
          r23 = fma(-(r2.zzzz), r1.xxxx, r23);
          r26 = (r26 * r26);
          r25 = fma(r25, r25, r26);
          r23 = fma(r23, r23, r25);
          r23 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb10_10.tint_symbol[2u].xxxx >= r23)));
          r23 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r23) & vec4<u32>(1065353216u)));
          r5.x = dot(r24, r23);
          r17.w = (r5.x + r17.w);
          r5.x = dot(r23, vec4<f32>(1.0f));
          r17.z = (r5.x + r17.z);
          r18 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r18);
          r19 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r19);
          r20 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r20) + vec4<i32>(2i, 0i, 0i, 2i)));
          r21 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r21) + vec4<i32>(-2i, 0i, 0i, -2i)));
          r22.x = bitcast<f32>((bitcast<i32>(r22.x) + 2i));
        }
        let v_46 = r17;
        r3 = vec4<f32>(v_46.zw, r3.zw);
        r9 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r9);
        r10 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), r10);
        let v_47 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r12.xy) + vec2<i32>(-1i, 0i)));
        r12 = vec4<f32>(v_47.xy, r12.zw);
        let v_48 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r13.xy) + vec2<i32>(0i, -1i)));
        r13 = vec4<f32>(v_48.xy, r13.zw);
        let v_49 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r14.xy) + vec2<i32>(1i, 0i)));
        r14 = vec4<f32>(v_49.xy, r14.zw);
        let v_50 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r11.xyz) + vec3<i32>(0i, 1i, 1i)));
        r11 = vec4<f32>(v_50.xyz, r11.w);
      }
      r2.y = (r3.y / r3.x);
    }
  } else {
    r2.y = 1.0f;
  }
  r0.w = 0.0f;
  r0.x = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v1)).y;
  o0 = min(r0.xxxx, r2.yyyy);
}

@fragment
fn main(@builtin(position) v_51 : vec4<f32>, @builtin(sample_index) v1 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_51, v1);
  return o0;
}
