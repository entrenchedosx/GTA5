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
  let v_3 = v0.xyxy;
  let v_4 = max(v_3, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_4), vec4<i32>(2147483647i), (v_4 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_3 == v_3))));
  let v_5 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r0.zw) >> vec2<u32>(3u)));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r1 = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
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
  let v_6 = (v0.xy * cb10_10.tint_symbol[1u].zw);
  r1 = vec4<f32>(v_6.xy, r1.zw);
  r2 = textureSampleLevel(t6, s6, r1.xyxx.xy, 0.0f);
  r1.z = ((-(r2.xxxx)).z + cb10_10.tint_symbol[0u].w);
  r1.z = (r1.z + 1.0f);
  r1.z = (cb10_10.tint_symbol[0u].z / r1.z);
  let v_7 = fma(r1.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = (r2.xy * cb10_10.tint_symbol[0u].xy);
  r2 = vec4<f32>(v_8.xy, r2.zw);
  r2.z = 1.0f;
  let v_9 = (r1.zzz * r2.xyz);
  r2 = vec4<f32>(v_9.xy, r2.z, v_9.z);
  let v_10 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
  r3 = vec4<f32>(v_10.xy, r3.zw);
  let v_11 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
  r3 = vec4<f32>(r3.xy, v_11.xy);
  let v_12 = (r3.zw * r3.xy);
  r3 = vec4<f32>(v_12.xy, r3.zw);
  let v_13 = (r3.xy / r2.ww);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  let v_14 = min(r3.xy, cb10_10.tint_symbol[2u].yy);
  r3 = vec4<f32>(v_14.xy, r3.zw);
  r1.w = max(r3.y, r3.x);
  r3 = textureSampleLevel(t4, s4, r1.xyxx.xy, 0.0f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 1.0f)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = trunc(r1.w);
    let v_15 = r1.x;
    let v_16 = max(v_15, -2147483648.0f);
    r1.x = bitcast<f32>(select(select(i32(v_16), 2147483647i, (v_16 >= 2147483648.0f)), 0i, !((v_15 == v_15))));
    let v_17 = -(cb10_10.tint_symbol[0u].xxxx);
    r1.y = fma(cb10_10.tint_symbol[2u].z, v0.x, v_17.y);
    r1.w = fma((-(cb10_10.tint_symbol[2u].wwww)).w, v0.y, cb10_10.tint_symbol[0u].y);
    r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) + vec4<i32>(1i, 1i, -1i, -1i)));
    r5 = r1.yyyy;
    r6 = r1.wwww;
    r7.x = r4.x;
    r7.y = r0.w;
    r7.z = 0.0f;
    r8.x = r0.z;
    r8.y = r4.y;
    r8.z = 0.0f;
    r9.x = r4.z;
    r9.y = r0.w;
    r9.z = 0.0f;
    r10.x = r0.z;
    r10.y = r4.w;
    r10.z = 0.0f;
    r0.x = r3.x;
    r0.y = 1.0f;
    r2.w = 0.0f;
    loop {
      r3.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) < bitcast<i32>(r2.w))));
      if ((bitcast<u32>(r3.y) != 0u)) {
        break;
      }
      r3.y = bitcast<f32>((bitcast<u32>(r2.w) & 1u));
      if ((bitcast<u32>(r3.y) != 0u)) {
        r11 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r5);
        r12 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r6);
        let v_18 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + vec3<i32>(1i, 0i, 0i)));
        r3 = vec4<f32>(r3.x, v_18.xyz);
        let v_19 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + vec3<i32>(0i, 1i, 0i)));
        r13 = vec4<f32>(v_19.xyz, r13.w);
        let v_20 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r9.xy) + vec2<i32>(-1i, 0i)));
        r14 = vec4<f32>(v_20.xy, r14.zw);
        let v_21 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + vec3<i32>(0i, -1i, 0i)));
        r15 = vec4<f32>(v_21.xyz, r15.w);
        r7.w = 0.0f;
        r8.w = bitcast<f32>(v.tint_symbol_1[0i].x);
      } else {
        r11 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f), r5);
        r12 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r6);
        let v_22 = r7;
        r3 = vec4<f32>(r3.x, v_22.xyz);
        let v_23 = r8;
        r13 = vec4<f32>(v_23.xyz, r13.w);
        let v_24 = r9;
        r14 = vec4<f32>(v_24.xy, r14.zw);
        let v_25 = r10;
        r15 = vec4<f32>(v_25.xyz, r15.w);
        r7.w = r9.z;
        r8.w = bitcast<f32>(v.tint_symbol_1[1i].x);
      }
      r16 = r11;
      r17 = r12;
      let v_26 = r3;
      r18 = vec4<f32>(v_26.yzw, r18.w);
      let v_27 = r13;
      r19 = vec4<f32>(v_27.xyz, r19.w);
      let v_28 = r14;
      r20 = vec4<f32>(v_28.xy, r20.zw);
      r20.z = r7.w;
      let v_29 = r15;
      r21 = vec4<f32>(v_29.xyz, r21.w);
      let v_30 = r0;
      r14 = vec4<f32>(r14.xy, v_30.xy);
      r9.w = r8.w;
      loop {
        r10.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.x) < bitcast<i32>(r9.w))));
        if ((bitcast<u32>(r10.w) != 0u)) {
          break;
        }
        r22 = textureLoad(t6, bitcast<vec2<i32>>(r18.xy), bitcast<i32>(r18.z));
        r22.x = ((-(r22.xxxx)).x + cb10_10.tint_symbol[0u].w);
        r23 = textureLoad(t4, bitcast<vec2<i32>>(r18.xy), bitcast<i32>(r18.z));
        r24 = textureLoad(t6, bitcast<vec2<i32>>(r19.xy), bitcast<i32>(r19.z));
        r22.y = ((-(r24.xxxx)).y + cb10_10.tint_symbol[0u].w);
        r24 = textureLoad(t4, bitcast<vec2<i32>>(r19.xy), bitcast<i32>(r19.z));
        r25 = textureLoad(t6, bitcast<vec2<i32>>(r20.xy), bitcast<i32>(r20.z));
        r22.z = ((-(r25.xxxx)).z + cb10_10.tint_symbol[0u].w);
        r25 = textureLoad(t4, bitcast<vec2<i32>>(r20.xy), bitcast<i32>(r20.z));
        r26 = textureLoad(t6, bitcast<vec2<i32>>(r21.xy), bitcast<i32>(r21.z));
        r22.w = ((-(r26.xxxx)).w + cb10_10.tint_symbol[0u].w);
        r26 = textureLoad(t4, bitcast<vec2<i32>>(r21.xy), bitcast<i32>(r21.z));
        r22 = (r22 + vec4<f32>(1.0f));
        r22 = (cb10_10.tint_symbol[0u].zzzz / r22);
        let v_31 = -(r2.xxxx);
        r27 = fma(r16, r22, v_31);
        let v_32 = -(r2.yyyy);
        r28 = fma(r17, r22, v_32);
        r22 = fma(-(r2.zzzz), r1.zzzz, r22);
        r28 = (r28 * r28);
        r27 = fma(r27, r27, r28);
        r22 = fma(r22, r22, r27);
        r22 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb10_10.tint_symbol[2u].xxxx >= r22)));
        r22 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r22) & vec4<u32>(1065353216u)));
        r23.y = r24.x;
        r23.z = r25.x;
        r23.w = r26.x;
        r10.w = dot(r23, r22);
        r14.z = (r10.w + r14.z);
        r10.w = dot(r22, vec4<f32>(1.0f));
        r14.w = (r10.w + r14.w);
        r16 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r16);
        r17 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r17);
        let v_33 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r18.xyz) + vec3<i32>(2i, 0i, 0i)));
        r18 = vec4<f32>(v_33.xyz, r18.w);
        let v_34 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r19.xyz) + vec3<i32>(0i, 2i, 0i)));
        r19 = vec4<f32>(v_34.xyz, r19.w);
        let v_35 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r20.xyz) + vec3<i32>(-2i, 0i, 0i)));
        r20 = vec4<f32>(v_35.xyz, r20.w);
        let v_36 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r21.xyz) + vec3<i32>(0i, -2i, 0i)));
        r21 = vec4<f32>(v_36.xyz, r21.w);
        r9.w = bitcast<f32>((bitcast<i32>(r9.w) + 2i));
      }
      let v_37 = r14;
      r0 = vec4<f32>(v_37.zw, r0.zw);
      r5 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r5);
      r6 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), r6);
      let v_38 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + vec3<i32>(0i, 1i, 0i)));
      r7 = vec4<f32>(v_38.xyz, r7.w);
      let v_39 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + vec3<i32>(-1i, 0i, 0i)));
      r8 = vec4<f32>(v_39.xyz, r8.w);
      let v_40 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + vec3<i32>(0i, -1i, 0i)));
      r9 = vec4<f32>(v_40.xyz, r9.w);
      let v_41 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + vec3<i32>(1i, 0i, 0i)));
      r10 = vec4<f32>(v_41.xyz, r10.w);
      r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
    }
    o0 = (r0.xxxx / r0.yyyy);
  } else {
    o0 = r3.xxxx;
  }
}

@fragment
fn main(@builtin(position) v_42 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_42);
  return o0;
}
