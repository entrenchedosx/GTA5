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
  let v_3 = v0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r1.x = ((-(r1.xxxx)).x + cb10_10.tint_symbol[0u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb10_10.tint_symbol[0u].z / r1.x);
  let v_6 = (v0.xy * cb10_10.tint_symbol[1u].zw);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = fma(r1.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r1.yz * cb10_10.tint_symbol[0u].xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2.z = 1.0f;
  let v_11 = (r1.xxx * r2.xyz);
  r1 = vec4<f32>(r1.x, v_11.xyz);
  let v_12 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  let v_14 = (r2.xy * r3.xy);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = (r2.xy / r1.ww);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  let v_16 = min(r2.xy, cb10_10.tint_symbol[2u].yy);
  r2 = vec4<f32>(v_16.xy, r2.zw);
  r1.w = max(r2.y, r2.x);
  let v_17 = textureLoad(t5, bitcast<vec2<i32>>(r0.xy), 0i).xy;
  r0 = vec4<f32>(v_17.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 1.0f)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = trunc(r1.w);
    let v_18 = r0.z;
    let v_19 = max(v_18, -2147483648.0f);
    r0.z = bitcast<f32>(select(select(i32(v_19), 2147483647i, (v_19 >= 2147483648.0f)), 0i, !((v_18 == v_18))));
    let v_20 = -(cb10_10.tint_symbol[0u].xxxx);
    r0.w = fma(cb10_10.tint_symbol[2u].z, v0.x, v_20.w);
    r1.w = fma((-(cb10_10.tint_symbol[2u].wwww)).w, v0.y, cb10_10.tint_symbol[0u].y);
    let v_21 = v0.xyxy;
    let v_22 = max(v_21, vec4<f32>(-2147483648.0f));
    r3 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_22), vec4<i32>(2147483647i), (v_22 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_21 == v_21))));
    r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r3) + vec4<i32>(1i, 1i, -1i, -1i)));
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    r8 = vec4<f32>(r8.xy, vec2<f32>());
    r9 = r0.wwww;
    r10 = r1.wwww;
    r2.x = r0.x;
    r3.x = r4.x;
    r3.y = r3.w;
    r11.x = r3.z;
    r11.y = r4.y;
    r12.x = r4.z;
    r12.y = r3.w;
    r13.x = r3.z;
    r13.y = r4.w;
    let v_23 = r2;
    r2 = vec4<f32>(v_23.x, 1.0f, v_23.z, 0.0f);
    loop {
      r11.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r2.w))));
      if ((bitcast<u32>(r11.z) != 0u)) {
        break;
      }
      r11.z = bitcast<f32>((bitcast<u32>(r2.w) & 1u));
      if ((bitcast<u32>(r11.z) != 0u)) {
        r14 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r9);
        r15 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r10);
        let v_24 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(1i, 0i)));
        r11 = vec4<f32>(r11.xy, v_24.xy);
        let v_25 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r11.xy) + vec2<i32>(0i, 1i)));
        r12 = vec4<f32>(r12.xy, v_25.xy);
        let v_26 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r12.xy) + vec2<i32>(-1i, 0i)));
        r13 = vec4<f32>(r13.xy, v_26.xy);
        let v_27 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r13.xy) + vec2<i32>(0i, -1i)));
        r16 = vec4<f32>(v_27.xy, r16.zw);
        r16.z = bitcast<f32>(v.tint_symbol_1[0i].x);
      } else {
        r14 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f), r9);
        r15 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r10);
        let v_28 = r3;
        r11 = vec4<f32>(r11.xy, v_28.xy);
        let v_29 = r11;
        r12 = vec4<f32>(r12.xy, v_29.xy);
        let v_30 = r12;
        r13 = vec4<f32>(r13.xy, v_30.xy);
        let v_31 = r13;
        r16 = vec4<f32>(v_31.xy, r16.zw);
        r16.z = bitcast<f32>(v.tint_symbol_1[1i].x);
      }
      r17 = r14;
      r18 = r15;
      let v_32 = r2;
      r19 = vec4<f32>(v_32.xy, r19.zw);
      let v_33 = r11;
      r19 = vec4<f32>(r19.xy, v_33.zw);
      let v_34 = r12;
      r20 = vec4<f32>(v_34.zw, r20.zw);
      let v_35 = r13;
      r20 = vec4<f32>(r20.xy, v_35.zw);
      let v_36 = r16;
      r21 = vec4<f32>(v_36.xy, r21.zw);
      r16.w = r16.z;
      loop {
        r21.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r16.w))));
        if ((bitcast<u32>(r21.z) != 0u)) {
          break;
        }
        let v_37 = r19;
        r5 = vec4<f32>(v_37.zw, r5.zw);
        r21.z = textureLoad(t7, bitcast<vec2<i32>>(r5.xy), 0i).x;
        r22.x = ((-(r21.zzzz)).x + cb10_10.tint_symbol[0u].w);
        r23.x = textureLoad(t5, bitcast<vec2<i32>>(r5.xy), 0i).x;
        let v_38 = r20;
        r6 = vec4<f32>(v_38.xy, r6.zw);
        r5.x = textureLoad(t7, bitcast<vec2<i32>>(r6.xy), 0i).x;
        r22.y = ((-(r5.xxxx)).y + cb10_10.tint_symbol[0u].w);
        r23.y = textureLoad(t5, bitcast<vec2<i32>>(r6.xy), 0i).x;
        let v_39 = r20;
        r7 = vec4<f32>(v_39.zw, r7.zw);
        r5.x = textureLoad(t7, bitcast<vec2<i32>>(r7.xy), 0i).x;
        r22.z = ((-(r5.xxxx)).z + cb10_10.tint_symbol[0u].w);
        r23.z = textureLoad(t5, bitcast<vec2<i32>>(r7.xy), 0i).x;
        let v_40 = r21;
        r8 = vec4<f32>(v_40.xy, r8.zw);
        r5.x = textureLoad(t7, bitcast<vec2<i32>>(r8.xy), 0i).x;
        r22.w = ((-(r5.xxxx)).w + cb10_10.tint_symbol[0u].w);
        r23.w = textureLoad(t5, bitcast<vec2<i32>>(r8.xy), 0i).x;
        r22 = (r22 + vec4<f32>(1.0f));
        r22 = (cb10_10.tint_symbol[0u].zzzz / r22);
        let v_41 = -(r1.yyyy);
        r24 = fma(r17, r22, v_41);
        let v_42 = -(r1.zzzz);
        r25 = fma(r18, r22, v_42);
        r22 = fma(-(r2.zzzz), r1.xxxx, r22);
        r25 = (r25 * r25);
        r24 = fma(r24, r24, r25);
        r22 = fma(r22, r22, r24);
        r22 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb10_10.tint_symbol[2u].xxxx >= r22)));
        r22 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r22) & vec4<u32>(1065353216u)));
        r5.x = dot(r23, r22);
        r19.x = (r5.x + r19.x);
        r5.x = dot(r22, vec4<f32>(1.0f));
        r19.y = (r5.x + r19.y);
        r17 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r17);
        r18 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r18);
        let v_43 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r19.zw) + vec2<i32>(2i, 0i)));
        r19 = vec4<f32>(r19.xy, v_43.xy);
        r20 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r20) + vec4<i32>(0i, 2i, -2i, 0i)));
        let v_44 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r21.xy) + vec2<i32>(0i, -2i)));
        r21 = vec4<f32>(v_44.xy, r21.zw);
        r16.w = bitcast<f32>((bitcast<i32>(r16.w) + 2i));
      }
      let v_45 = r19;
      r2 = vec4<f32>(v_45.xy, r2.zw);
      r9 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r9);
      r10 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), r10);
      let v_46 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r3.xy) + vec2<i32>(0i, 1i)));
      r3 = vec4<f32>(v_46.xy, r3.zw);
      let v_47 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r11.xy) + vec2<i32>(-1i, 0i)));
      r11 = vec4<f32>(v_47.xy, r11.zw);
      let v_48 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r12.xy) + vec2<i32>(0i, -1i)));
      r12 = vec4<f32>(v_48.xy, r12.zw);
      let v_49 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r13.xy) + vec2<i32>(1i, 0i)));
      r13 = vec4<f32>(v_49.xy, r13.zw);
      r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
    }
    r1 = (r2.xxxx / r2.yyyy);
  } else {
    r1 = r0.xxxx;
  }
  o0 = min(r0.yyyy, r1);
}

@fragment
fn main(@builtin(position) v_50 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_50);
  return o0;
}
