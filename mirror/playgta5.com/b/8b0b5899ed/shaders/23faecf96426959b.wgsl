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

fn main_inner(v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = v0.xyxy;
  let v_4 = max(v_3, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_4), vec4<i32>(2147483647i), (v_4 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_3 == v_3))));
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.zw) >> vec2<u32>(3u)));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1.x = textureLoad(t6, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).x;
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x == 0.0f)));
  if ((bitcast<u32>(r1.y) != 0u)) {
    o0 = vec4<f32>();
    return;
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x == 1.0f)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    o0 = vec4<f32>(1.0f);
    return;
  }
  let v_6 = v0.xy;
  let v_7 = max(v_6, vec2<f32>(-2147483648.0f));
  let v_8 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_7), vec2<i32>(2147483647i), (v_7 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_6 == v_6))));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r2.x = textureLoad(t7, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r2.x = ((-(r2.xxxx)).x + cb10_10.tint_symbol[0u].w);
  r2.x = (r2.x + 1.0f);
  r2.x = (cb10_10.tint_symbol[0u].z / r2.x);
  let v_9 = (v0.xy * cb10_10.tint_symbol[1u].zw);
  let v_10 = r2;
  r2 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  let v_11 = fma(r2.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  let v_12 = r2;
  r2 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = (r2.yz * cb10_10.tint_symbol[0u].xy);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  r3.z = 1.0f;
  let v_14 = (r2.xxx * r3.xyz);
  r2 = vec4<f32>(r2.x, v_14.xyz);
  let v_15 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
  r4 = vec4<f32>(v_16.xy, r4.zw);
  let v_17 = (r3.xy * r4.xy);
  r3 = vec4<f32>(v_17.xy, r3.zw);
  let v_18 = (r3.xy / r2.ww);
  r3 = vec4<f32>(v_18.xy, r3.zw);
  let v_19 = min(r3.xy, cb10_10.tint_symbol[2u].yy);
  r3 = vec4<f32>(v_19.xy, r3.zw);
  r2.w = max(r3.y, r3.x);
  r1.x = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), 0i).x;
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 1.0f)));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r1.y = trunc(r2.w);
    let v_20 = r1.y;
    let v_21 = max(v_20, -2147483648.0f);
    r1.y = bitcast<f32>(select(select(i32(v_21), 2147483647i, (v_21 >= 2147483648.0f)), 0i, !((v_20 == v_20))));
    let v_22 = -(cb10_10.tint_symbol[0u].xxxx);
    r1.z = fma(cb10_10.tint_symbol[2u].z, v0.x, v_22.z);
    r1.w = fma((-(cb10_10.tint_symbol[2u].wwww)).w, v0.y, cb10_10.tint_symbol[0u].y);
    r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) + vec4<i32>(1i, 1i, -1i, -1i)));
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    r8 = vec4<f32>(r8.xy, vec2<f32>());
    r9 = r1.zzzz;
    r10 = r1.wwww;
    r0.x = r1.x;
    r0.y = 1.0f;
    r3.x = r4.x;
    r3.y = r0.w;
    r11.x = r0.z;
    r11.y = r4.y;
    r12.x = r4.z;
    r12.y = r0.w;
    r13.x = r0.z;
    r13.y = r4.w;
    r2.w = 0.0f;
    loop {
      r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) < bitcast<i32>(r2.w))));
      if ((bitcast<u32>(r3.w) != 0u)) {
        break;
      }
      r3.w = bitcast<f32>((bitcast<u32>(r2.w) & 1u));
      if ((bitcast<u32>(r3.w) != 0u)) {
        r14 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r9);
        r15 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r10);
        let v_23 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(1i, 0i)));
        r11 = vec4<f32>(r11.xy, v_23.xy);
        let v_24 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r11.xy) + vec2<i32>(0i, 1i)));
        r12 = vec4<f32>(r12.xy, v_24.xy);
        let v_25 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r12.xy) + vec2<i32>(-1i, 0i)));
        r13 = vec4<f32>(r13.xy, v_25.xy);
        let v_26 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r13.xy) + vec2<i32>(0i, -1i)));
        r16 = vec4<f32>(v_26.xy, r16.zw);
        r3.w = bitcast<f32>(v.tint_symbol_1[0i].x);
      } else {
        r14 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f), r9);
        r15 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r10);
        let v_27 = r3;
        r11 = vec4<f32>(r11.xy, v_27.xy);
        let v_28 = r11;
        r12 = vec4<f32>(r12.xy, v_28.xy);
        let v_29 = r12;
        r13 = vec4<f32>(r13.xy, v_29.xy);
        let v_30 = r13;
        r16 = vec4<f32>(v_30.xy, r16.zw);
        r3.w = bitcast<f32>(v.tint_symbol_1[1i].x);
      }
      r17 = r14;
      r18 = r15;
      let v_31 = r0;
      r16 = vec4<f32>(r16.xy, v_31.xy);
      let v_32 = r11;
      r19 = vec4<f32>(v_32.zw, r19.zw);
      let v_33 = r12;
      r19 = vec4<f32>(r19.xy, v_33.zw);
      let v_34 = r13;
      r20 = vec4<f32>(v_34.zw, r20.zw);
      let v_35 = r16;
      r20 = vec4<f32>(r20.xy, v_35.xy);
      r21.x = r3.w;
      loop {
        r21.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) < bitcast<i32>(r21.x))));
        if ((bitcast<u32>(r21.y) != 0u)) {
          break;
        }
        let v_36 = r19;
        r5 = vec4<f32>(v_36.xy, r5.zw);
        r21.y = textureLoad(t7, bitcast<vec2<i32>>(r5.xy), 0i).x;
        r22.x = ((-(r21.yyyy)).x + cb10_10.tint_symbol[0u].w);
        r23.x = textureLoad(t5, bitcast<vec2<i32>>(r5.xy), 0i).x;
        let v_37 = r19;
        r6 = vec4<f32>(v_37.zw, r6.zw);
        r5.x = textureLoad(t7, bitcast<vec2<i32>>(r6.xy), 0i).x;
        r22.y = ((-(r5.xxxx)).y + cb10_10.tint_symbol[0u].w);
        r23.y = textureLoad(t5, bitcast<vec2<i32>>(r6.xy), 0i).x;
        let v_38 = r20;
        r7 = vec4<f32>(v_38.xy, r7.zw);
        r5.x = textureLoad(t7, bitcast<vec2<i32>>(r7.xy), 0i).x;
        r22.z = ((-(r5.xxxx)).z + cb10_10.tint_symbol[0u].w);
        r23.z = textureLoad(t5, bitcast<vec2<i32>>(r7.xy), 0i).x;
        let v_39 = r20;
        r8 = vec4<f32>(v_39.zw, r8.zw);
        r5.x = textureLoad(t7, bitcast<vec2<i32>>(r8.xy), 0i).x;
        r22.w = ((-(r5.xxxx)).w + cb10_10.tint_symbol[0u].w);
        r23.w = textureLoad(t5, bitcast<vec2<i32>>(r8.xy), 0i).x;
        r22 = (r22 + vec4<f32>(1.0f));
        r22 = (cb10_10.tint_symbol[0u].zzzz / r22);
        let v_40 = -(r2.yyyy);
        r24 = fma(r17, r22, v_40);
        let v_41 = -(r2.zzzz);
        r25 = fma(r18, r22, v_41);
        r22 = fma(-(r3.zzzz), r2.xxxx, r22);
        r25 = (r25 * r25);
        r24 = fma(r24, r24, r25);
        r22 = fma(r22, r22, r24);
        r22 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb10_10.tint_symbol[2u].xxxx >= r22)));
        r22 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r22) & vec4<u32>(1065353216u)));
        r5.x = dot(r23, r22);
        r16.z = (r5.x + r16.z);
        r5.x = dot(r22, vec4<f32>(1.0f));
        r16.w = (r5.x + r16.w);
        r17 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r17);
        r18 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r18);
        r19 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r19) + vec4<i32>(2i, 0i, 0i, 2i)));
        r20 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r20) + vec4<i32>(-2i, 0i, 0i, -2i)));
        r21.x = bitcast<f32>((bitcast<i32>(r21.x) + 2i));
      }
      let v_42 = r16;
      r0 = vec4<f32>(v_42.zw, r0.zw);
      r9 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r9);
      r10 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), r10);
      let v_43 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(0i, 1i)));
      r3 = vec4<f32>(v_43.xy, r3.zw);
      let v_44 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r11.xy) + vec2<i32>(-1i, 0i)));
      r11 = vec4<f32>(v_44.xy, r11.zw);
      let v_45 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r12.xy) + vec2<i32>(0i, -1i)));
      r12 = vec4<f32>(v_45.xy, r12.zw);
      let v_46 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r13.xy) + vec2<i32>(1i, 0i)));
      r13 = vec4<f32>(v_46.xy, r13.zw);
      r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
    }
    o0 = (r0.xxxx / r0.yyyy);
  } else {
    o0 = r1.xxxx;
  }
}

@fragment
fn main(@builtin(position) v_47 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_47);
  return o0;
}
