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
  let v_3 = (v0.xy * cb10_10.tint_symbol[1u].zw);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r1 = textureSampleLevel(t6, s6, r0.xyxx.xy, 0.0f);
  r0.z = ((-(r1.xxxx)).z + cb10_10.tint_symbol[0u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb10_10.tint_symbol[0u].z / r0.z);
  let v_4 = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r1.xy * cb10_10.tint_symbol[0u].xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r1.z = 1.0f;
  let v_6 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_6.xy, r1.z, v_6.z);
  let v_7 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
  r2 = vec4<f32>(r2.xy, v_8.xy);
  let v_9 = (r2.zw * r2.xy);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = (r2.xy / r1.ww);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = min(r2.xy, cb10_10.tint_symbol[2u].yy);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  r0.w = max(r2.y, r2.x);
  r2 = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 1.0f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = trunc(r0.w);
    let v_12 = r0.x;
    let v_13 = max(v_12, -2147483648.0f);
    r0.x = bitcast<f32>(select(select(i32(v_13), 2147483647i, (v_13 >= 2147483648.0f)), 0i, !((v_12 == v_12))));
    let v_14 = -(cb10_10.tint_symbol[0u].xxxx);
    r0.y = fma(cb10_10.tint_symbol[2u].z, v0.x, v_14.y);
    r0.w = fma((-(cb10_10.tint_symbol[2u].wwww)).w, v0.y, cb10_10.tint_symbol[0u].y);
    let v_15 = v0.xyxy;
    let v_16 = max(v_15, vec4<f32>(-2147483648.0f));
    r3 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_16), vec4<i32>(2147483647i), (v_16 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_15 == v_15))));
    r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r3) + vec4<i32>(1i, 1i, -1i, -1i)));
    r5 = r0.yyyy;
    r6 = r0.wwww;
    r7.x = r4.x;
    r7.y = r3.w;
    r7.z = 0.0f;
    r8.x = r3.z;
    r8.y = r4.y;
    r8.z = 0.0f;
    r9.x = r4.z;
    r9.y = r3.w;
    r9.z = 0.0f;
    r10.x = r3.z;
    r10.y = r4.w;
    r10.z = 0.0f;
    r3.x = r2.x;
    r3.y = 1.0f;
    r1.w = 0.0f;
    loop {
      r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) < bitcast<i32>(r1.w))));
      if ((bitcast<u32>(r2.y) != 0u)) {
        break;
      }
      r2.y = bitcast<f32>((bitcast<u32>(r1.w) & 1u));
      if ((bitcast<u32>(r2.y) != 0u)) {
        r11 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(2.0f, 0.0f, -2.0f, 0.0f), r5);
        r12 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -2.0f, 0.0f, 2.0f), r6);
        let v_17 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + vec3<i32>(1i, 0i, 0i)));
        r2 = vec4<f32>(r2.x, v_17.xyz);
        let v_18 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + vec3<i32>(0i, 1i, 0i)));
        r13 = vec4<f32>(v_18.xyz, r13.w);
        let v_19 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r9.xy) + vec2<i32>(-1i, 0i)));
        r14 = vec4<f32>(v_19.xy, r14.zw);
        let v_20 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + vec3<i32>(0i, -1i, 0i)));
        r15 = vec4<f32>(v_20.xyz, r15.w);
        r7.w = 0.0f;
        r8.w = bitcast<f32>(v.tint_symbol_1[0i].x);
      } else {
        r11 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f), r5);
        r12 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r6);
        let v_21 = r7;
        r2 = vec4<f32>(r2.x, v_21.xyz);
        let v_22 = r8;
        r13 = vec4<f32>(v_22.xyz, r13.w);
        let v_23 = r9;
        r14 = vec4<f32>(v_23.xy, r14.zw);
        let v_24 = r10;
        r15 = vec4<f32>(v_24.xyz, r15.w);
        r7.w = r9.z;
        r8.w = bitcast<f32>(v.tint_symbol_1[1i].x);
      }
      r16 = r11;
      r17 = r12;
      let v_25 = r2;
      r18 = vec4<f32>(v_25.yzw, r18.w);
      let v_26 = r13;
      r19 = vec4<f32>(v_26.xyz, r19.w);
      let v_27 = r14;
      r20 = vec4<f32>(v_27.xy, r20.zw);
      r20.z = r7.w;
      let v_28 = r15;
      r21 = vec4<f32>(v_28.xyz, r21.w);
      let v_29 = r3;
      r14 = vec4<f32>(r14.xy, v_29.xy);
      r9.w = r8.w;
      loop {
        r10.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) < bitcast<i32>(r9.w))));
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
        let v_30 = -(r1.xxxx);
        r27 = fma(r16, r22, v_30);
        let v_31 = -(r1.yyyy);
        r28 = fma(r17, r22, v_31);
        r22 = fma(-(r1.zzzz), r0.zzzz, r22);
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
        let v_32 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r18.xyz) + vec3<i32>(2i, 0i, 0i)));
        r18 = vec4<f32>(v_32.xyz, r18.w);
        let v_33 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r19.xyz) + vec3<i32>(0i, 2i, 0i)));
        r19 = vec4<f32>(v_33.xyz, r19.w);
        let v_34 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r20.xyz) + vec3<i32>(-2i, 0i, 0i)));
        r20 = vec4<f32>(v_34.xyz, r20.w);
        let v_35 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r21.xyz) + vec3<i32>(0i, -2i, 0i)));
        r21 = vec4<f32>(v_35.xyz, r21.w);
        r9.w = bitcast<f32>((bitcast<i32>(r9.w) + 2i));
      }
      let v_36 = r14;
      r3 = vec4<f32>(v_36.zw, r3.zw);
      r5 = fma(cb10_10.tint_symbol[2u].zzzz, vec4<f32>(0.0f, -1.0f, 0.0f, 1.0f), r5);
      r6 = fma(cb10_10.tint_symbol[2u].wwww, vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f), r6);
      let v_37 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r7.xyz) + vec3<i32>(0i, 1i, 0i)));
      r7 = vec4<f32>(v_37.xyz, r7.w);
      let v_38 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r8.xyz) + vec3<i32>(-1i, 0i, 0i)));
      r8 = vec4<f32>(v_38.xyz, r8.w);
      let v_39 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r9.xyz) + vec3<i32>(0i, -1i, 0i)));
      r9 = vec4<f32>(v_39.xyz, r9.w);
      let v_40 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r10.xyz) + vec3<i32>(1i, 0i, 0i)));
      r10 = vec4<f32>(v_40.xyz, r10.w);
      r1.w = bitcast<f32>((bitcast<i32>(r1.w) + 1i));
    }
    o0 = (r3.xxxx / r3.yyyy);
  } else {
    o0 = r2.xxxx;
  }
}

@fragment
fn main(@builtin(position) v_41 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_41);
  return o0;
}
