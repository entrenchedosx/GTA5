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

var<private> r27 : vec4<f32>;

var<private> r28 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb3_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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
  let v_6 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.xy) >> vec2<u32>(3u)));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x == 0.0f)));
  if ((bitcast<u32>(r1.y) != 0u)) {
    o0 = vec4<f32>();
    return;
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 1.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_7 = (v0.xy * cb10_10.tint_symbol[1u].zw);
    r1 = vec4<f32>(v_7.xy, r1.zw);
    r2 = textureSampleLevel(t6, s6, r1.xyxx.xy, 0.0f);
    r1.z = ((-(r2.xxxx)).z + cb10_10.tint_symbol[0u].w);
    r1.z = (r1.z + 1.0f);
    r1.z = (cb10_10.tint_symbol[0u].z / r1.z);
    let v_8 = fma(r1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
    r2 = vec4<f32>(v_8.xy, r2.zw);
    let v_9 = (r2.xy * cb10_10.tint_symbol[0u].xy);
    r2 = vec4<f32>(v_9.xy, r2.zw);
    r2.z = 1.0f;
    let v_10 = (r1.zzz * r2.xyz);
    r2 = vec4<f32>(v_10.xy, r2.z, v_10.z);
    let v_11 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
    r3 = vec4<f32>(v_11.xy, r3.zw);
    let v_12 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
    r3 = vec4<f32>(r3.xy, v_12.xy);
    let v_13 = (r3.zw * r3.xy);
    r3 = vec4<f32>(v_13.xy, r3.zw);
    let v_14 = (r3.xy / r2.ww);
    r3 = vec4<f32>(v_14.xy, r3.zw);
    let v_15 = min(r3.xy, cb10_10.tint_symbol[2u].yy);
    r3 = vec4<f32>(v_15.xy, r3.zw);
    r1.w = max(r3.y, r3.x);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 1.0f)));
    if ((bitcast<u32>(r2.w) != 0u)) {
      r3 = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f);
    }
    if ((bitcast<u32>(r2.w) != 0u)) {
    } else {
      r1.w = trunc(r1.w);
      let v_16 = r1.w;
      let v_17 = max(v_16, -2147483648.0f);
      r1.w = bitcast<f32>(select(select(i32(v_17), 2147483647i, (v_17 >= 2147483648.0f)), 0i, !((v_16 == v_16))));
      r4 = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f);
      let v_18 = -(cb10_10.tint_symbol[0u].xxxx);
      r1.x = fma(cb10_10.tint_symbol[2u].z, v0.x, v_18.x);
      r1.y = fma((-(cb10_10.tint_symbol[2u].wwww)).y, v0.y, cb10_10.tint_symbol[0u].y);
      let v_19 = v0.xyxy;
      let v_20 = max(v_19, vec4<f32>(-2147483648.0f));
      r5 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_20), vec4<i32>(2147483647i), (v_20 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_19 == v_19))));
      r6 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r5) + vec4<i32>(1i, 1i, -1i, -1i)));
      r7 = r1.xxxx;
      r8 = r1.yyyy;
      r9.x = r6.x;
      r9.y = r5.w;
      r9.z = 0.0f;
      r10.x = r5.z;
      r10.y = r6.y;
      r10.z = 0.0f;
      r11.x = r6.z;
      r11.y = r5.w;
      r11.z = 0.0f;
      r12.x = r5.z;
      r12.y = r6.w;
      r12.z = 0.0f;
      r5.x = 1.0f;
      r5.y = r4.x;
      r2.w = 0.0f;
      loop {
        r3.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) < bitcast<i32>(r2.w))));
        if ((bitcast<u32>(r3.y) != 0u)) {
          break;
        }
        r3.y = bitcast<f32>((bitcast<u32>(r2.w) & 1u));
        if ((bitcast<u32>(r3.y) != 0u)) {
          r13 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r7);
          r14 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r8);
          let v_21 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + vec3<i32>(1i, 0i, 0i)));
          r3 = vec4<f32>(r3.x, v_21.xyz);
          let v_22 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + vec3<i32>(0i, 1i, 0i)));
          r4 = vec4<f32>(r4.x, v_22.xyz);
          let v_23 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r11.xy) + vec2<i32>(-1i, 0i)));
          r15 = vec4<f32>(v_23.xy, r15.zw);
          let v_24 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r12.xyz) + vec3<i32>(0i, -1i, 0i)));
          r16 = vec4<f32>(v_24.xyz, r16.w);
          r9.w = 0.0f;
          r10.w = bitcast<f32>(v.tint_symbol_1[0i].x);
        } else {
          r13 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f), r7);
          r14 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r8);
          let v_25 = r9;
          r3 = vec4<f32>(r3.x, v_25.xyz);
          let v_26 = r10;
          r4 = vec4<f32>(r4.x, v_26.xyz);
          let v_27 = r11;
          r15 = vec4<f32>(v_27.xy, r15.zw);
          let v_28 = r12;
          r16 = vec4<f32>(v_28.xyz, r16.w);
          r9.w = r11.z;
          r10.w = bitcast<f32>(v.tint_symbol_1[1i].x);
        }
        r17 = r13;
        r18 = r14;
        let v_29 = r3;
        r19 = vec4<f32>(v_29.yzw, r19.w);
        let v_30 = r4;
        r20 = vec4<f32>(v_30.yzw, r20.w);
        let v_31 = r15;
        r21 = vec4<f32>(v_31.xy, r21.zw);
        r21.z = r9.w;
        let v_32 = r16;
        r22 = vec4<f32>(v_32.xyz, r22.w);
        let v_33 = r5;
        r15 = vec4<f32>(r15.xy, v_33.xy);
        r11.w = r10.w;
        loop {
          r12.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) < bitcast<i32>(r11.w))));
          if ((bitcast<u32>(r12.w) != 0u)) {
            break;
          }
          r23 = textureLoad(t6, bitcast<vec2<i32>>(r19.xy), bitcast<i32>(r19.z));
          r23.x = ((-(r23.xxxx)).x + cb10_10.tint_symbol[0u].w);
          r24 = textureLoad(t4, bitcast<vec2<i32>>(r19.xy), bitcast<i32>(r19.z));
          r25 = textureLoad(t6, bitcast<vec2<i32>>(r20.xy), bitcast<i32>(r20.z));
          r23.y = ((-(r25.xxxx)).y + cb10_10.tint_symbol[0u].w);
          r25 = textureLoad(t4, bitcast<vec2<i32>>(r20.xy), bitcast<i32>(r20.z));
          r26 = textureLoad(t6, bitcast<vec2<i32>>(r21.xy), bitcast<i32>(r21.z));
          r23.z = ((-(r26.xxxx)).z + cb10_10.tint_symbol[0u].w);
          r26 = textureLoad(t4, bitcast<vec2<i32>>(r21.xy), bitcast<i32>(r21.z));
          r27 = textureLoad(t6, bitcast<vec2<i32>>(r22.xy), bitcast<i32>(r22.z));
          r23.w = ((-(r27.xxxx)).w + cb10_10.tint_symbol[0u].w);
          r27 = textureLoad(t4, bitcast<vec2<i32>>(r22.xy), bitcast<i32>(r22.z));
          r28.x = r24.x;
          r28.y = r25.x;
          r28.z = r26.x;
          r28.w = r27.x;
          r25.x = r24.y;
          r25.z = r26.y;
          r25.w = r27.y;
          r24 = min(r25, r28);
          r23 = (r23 + vec4<f32>(1.0f));
          r23 = (cb10_10.tint_symbol[0u].zzzz / r23);
          let v_34 = -(r2.xxxx);
          r25 = fma(r17, r23, v_34);
          let v_35 = -(r2.yyyy);
          r26 = fma(r18, r23, v_35);
          r23 = fma(-(r2.zzzz), r1.zzzz, r23);
          r26 = (r26 * r26);
          r25 = fma(r25, r25, r26);
          r23 = fma(r23, r23, r25);
          r23 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb10_10.tint_symbol[2u].xxxx >= r23)));
          r23 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r23) & vec4<u32>(1065353216u)));
          r12.w = dot(r24, r23);
          r15.w = (r12.w + r15.w);
          r12.w = dot(r23, vec4<f32>(1.0f));
          r15.z = (r12.w + r15.z);
          r17 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r17);
          r18 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r18);
          let v_36 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r19.xyz) + vec3<i32>(2i, 0i, 0i)));
          r19 = vec4<f32>(v_36.xyz, r19.w);
          let v_37 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r20.xyz) + vec3<i32>(0i, 2i, 0i)));
          r20 = vec4<f32>(v_37.xyz, r20.w);
          let v_38 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r21.xyz) + vec3<i32>(-2i, 0i, 0i)));
          r21 = vec4<f32>(v_38.xyz, r21.w);
          let v_39 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r22.xyz) + vec3<i32>(0i, -2i, 0i)));
          r22 = vec4<f32>(v_39.xyz, r22.w);
          r11.w = bitcast<f32>((bitcast<i32>(r11.w) + 2i));
        }
        let v_40 = r15;
        r5 = vec4<f32>(v_40.zw, r5.zw);
        r7 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r7);
        r8 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), r8);
        let v_41 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + vec3<i32>(0i, 1i, 0i)));
        r9 = vec4<f32>(v_41.xyz, r9.w);
        let v_42 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + vec3<i32>(-1i, 0i, 0i)));
        r10 = vec4<f32>(v_42.xyz, r10.w);
        let v_43 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r11.xyz) + vec3<i32>(0i, -1i, 0i)));
        r11 = vec4<f32>(v_43.xyz, r11.w);
        let v_44 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r12.xyz) + vec3<i32>(1i, 0i, 0i)));
        r12 = vec4<f32>(v_44.xyz, r12.w);
        r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
      }
      r3.x = (r5.y / r5.x);
    }
  } else {
    r3.x = 1.0f;
  }
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0 = textureLoad(t4, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  o0 = min(r0.yyyy, r3.xxxx);
}

@fragment
fn main(@builtin(position) v_45 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_45);
  return o0;
}
