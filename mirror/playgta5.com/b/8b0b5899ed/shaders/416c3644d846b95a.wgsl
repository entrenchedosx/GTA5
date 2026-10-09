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

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb3_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 1u>,
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
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v1)).x;
  r0.x = ((-(r0.xxxx)).x + cb10_10.tint_symbol[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb10_10.tint_symbol[0u].z / r0.x);
  let v_6 = (v0.xy * cb10_10.tint_symbol[1u].zw);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = fma(r0.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = (r1.xy * cb10_10.tint_symbol[0u].xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1.z = 1.0f;
  let v_10 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_10.xy, r1.z, v_10.z);
  let v_11 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
  r2 = vec4<f32>(r2.xy, v_12.xy);
  let v_13 = (r2.zw * r2.xy);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = (r2.xy / r1.ww);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = min(r2.xy, cb10_10.tint_symbol[2u].yy);
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r0.w = max(r2.y, r2.x);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = textureSampleLevel(t4, s4, r0.yzyy.xy, 0.0f).x;
    o0 = r1.wwww;
    return;
  }
  r0.w = trunc(r0.w);
  let v_16 = r0.w;
  let v_17 = max(v_16, -2147483648.0f);
  r0.w = bitcast<f32>(select(select(i32(v_17), 2147483647i, (v_17 >= 2147483648.0f)), 0i, !((v_16 == v_16))));
  r0.y = textureSampleLevel(t4, s4, r0.yzyy.xy, 0.0f).x;
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r6.x = 1.0f;
  r6.y = r0.y;
  r0.z = 0.0f;
  r1.w = 1.0f;
  loop {
    r6.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) < bitcast<i32>(r0.z))));
    if ((bitcast<u32>(r6.z) != 0u)) {
      break;
    }
    r7 = (r1.wwww * vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f));
    let v_18 = r6;
    r8 = vec4<f32>(v_18.xy, r8.zw);
    r8.z = 1.0f;
    r6.z = bitcast<f32>(v.tint_symbol_1[0i].x);
    loop {
      r6.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) < bitcast<i32>(r6.z))));
      if ((bitcast<u32>(r6.w) != 0u)) {
        break;
      }
      r9 = fma(r8.zzzz, vec4<f32>(0.0f, 1.0f, 0.0f, -1.0f), r7);
      r10 = (r9.yzwx + v0.xxxx);
      r9 = (r9 + v0.yyyy);
      let v_19 = r10.x;
      let v_20 = max(v_19, -2147483648.0f);
      r2.x = bitcast<f32>(select(select(i32(v_20), 2147483647i, (v_20 >= 2147483648.0f)), 0i, !((v_19 == v_19))));
      let v_21 = r9.x;
      let v_22 = max(v_21, -2147483648.0f);
      r2.y = bitcast<f32>(select(select(i32(v_22), 2147483647i, (v_22 >= 2147483648.0f)), 0i, !((v_21 == v_21))));
      r6.w = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v1)).x;
      r11.x = ((-(r6.wwww)).x + cb10_10.tint_symbol[0u].w);
      r12.x = textureLoad(t5, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v1)).x;
      let v_23 = r10.y;
      let v_24 = max(v_23, -2147483648.0f);
      r3.x = bitcast<f32>(select(select(i32(v_24), 2147483647i, (v_24 >= 2147483648.0f)), 0i, !((v_23 == v_23))));
      let v_25 = r9.y;
      let v_26 = max(v_25, -2147483648.0f);
      r3.y = bitcast<f32>(select(select(i32(v_26), 2147483647i, (v_26 >= 2147483648.0f)), 0i, !((v_25 == v_25))));
      r2.x = textureLoad(t7, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v1)).x;
      r11.y = ((-(r2.xxxx)).y + cb10_10.tint_symbol[0u].w);
      r12.y = textureLoad(t5, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(v1)).x;
      let v_27 = r10.z;
      let v_28 = max(v_27, -2147483648.0f);
      r4.x = bitcast<f32>(select(select(i32(v_28), 2147483647i, (v_28 >= 2147483648.0f)), 0i, !((v_27 == v_27))));
      let v_29 = r9.z;
      let v_30 = max(v_29, -2147483648.0f);
      r4.y = bitcast<f32>(select(select(i32(v_30), 2147483647i, (v_30 >= 2147483648.0f)), 0i, !((v_29 == v_29))));
      r2.x = textureLoad(t7, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(v1)).x;
      r11.z = ((-(r2.xxxx)).z + cb10_10.tint_symbol[0u].w);
      r12.z = textureLoad(t5, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(v1)).x;
      let v_31 = r10.w;
      let v_32 = max(v_31, -2147483648.0f);
      r5.x = bitcast<f32>(select(select(i32(v_32), 2147483647i, (v_32 >= 2147483648.0f)), 0i, !((v_31 == v_31))));
      let v_33 = r9.w;
      let v_34 = max(v_33, -2147483648.0f);
      r5.y = bitcast<f32>(select(select(i32(v_34), 2147483647i, (v_34 >= 2147483648.0f)), 0i, !((v_33 == v_33))));
      r2.x = textureLoad(t7, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(v1)).x;
      r11.w = ((-(r2.xxxx)).w + cb10_10.tint_symbol[0u].w);
      r12.w = textureLoad(t5, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(v1)).x;
      r10 = (r10 * cb10_10.tint_symbol[1u].zzzz);
      r10 = fma(r10, vec4<f32>(2.0f), vec4<f32>(-1.0f));
      r9 = (r9 * cb10_10.tint_symbol[1u].wwww);
      r9 = fma(-(r9), vec4<f32>(2.0f), vec4<f32>(1.0f));
      r11 = (r11 + vec4<f32>(1.0f));
      r11 = (cb10_10.tint_symbol[0u].zzzz / r11);
      r10 = (r10 * r11);
      r9 = (r9 * r11);
      let v_35 = -(r1.xxxx);
      r10 = fma(r10, cb10_10.tint_symbol[0u].xxxx, v_35);
      let v_36 = -(r1.yyyy);
      r9 = fma(r9, cb10_10.tint_symbol[0u].yyyy, v_36);
      r11 = fma(-(r1.zzzz), r0.xxxx, r11);
      r9 = (r9 * r9);
      r9 = fma(r10, r10, r9);
      r9 = fma(r11, r11, r9);
      r9 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb10_10.tint_symbol[2u].xxxx >= r9)));
      r9 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r9) & vec4<u32>(1065353216u)));
      r2.x = dot(r12, r9);
      r8.y = (r2.x + r8.y);
      r2.x = dot(r9, vec4<f32>(1.0f));
      r8.x = (r2.x + r8.x);
      r8.z = (r8.z + 1.0f);
      r6.z = bitcast<f32>((bitcast<i32>(r6.z) + 1i));
    }
    let v_37 = r8;
    r6 = vec4<f32>(v_37.xy, r6.zw);
    r1.w = (r1.w + 1.0f);
    r0.z = bitcast<f32>((bitcast<i32>(r0.z) + 1i));
  }
  o0 = (r6.yyyy / r6.xxxx);
}

@fragment
fn main(@builtin(position) v_38 : vec4<f32>, @builtin(sample_index) v1 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_38, v1);
  return o0;
}
