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

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

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
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r2 = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f);
    o0 = r2.xxxx;
    return;
  }
  r0.w = trunc(r0.w);
  let v_12 = r0.w;
  let v_13 = max(v_12, -2147483648.0f);
  r0.w = bitcast<f32>(select(select(i32(v_13), 2147483647i, (v_13 >= 2147483648.0f)), 0i, !((v_12 == v_12))));
  r2 = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f);
  r0.x = 1.0f;
  r0.y = r2.x;
  r1.w = 0.0f;
  r2.y = 1.0f;
  loop {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) < bitcast<i32>(r1.w))));
    if ((bitcast<u32>(r2.z) != 0u)) {
      break;
    }
    r3 = (r2.yyyy * vec4<f32>(1.0f, 0.0f, -1.0f, 0.0f));
    let v_14 = r0;
    r4 = vec4<f32>(v_14.xy, r4.zw);
    r4.z = 1.0f;
    r2.z = bitcast<f32>(v.tint_symbol_1[0i].x);
    loop {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) < bitcast<i32>(r2.z))));
      if ((bitcast<u32>(r2.w) != 0u)) {
        break;
      }
      r5 = fma(r4.zzzz, vec4<f32>(0.0f, 1.0f, 0.0f, -1.0f), r3);
      r6 = (r5.yzwx + v0.xxxx);
      r5 = (r5 + v0.yyyy);
      let v_15 = r6;
      let v_16 = r7;
      r7 = vec4<f32>(v_15.x, v_16.y, v_15.y, v_16.w);
      let v_17 = r5;
      let v_18 = r7;
      r7 = vec4<f32>(v_18.x, v_17.x, v_18.z, v_17.y);
      r7 = (r7 * cb10_10.tint_symbol[1u].zwzw);
      r8 = textureSampleLevel(t6, s6, r7.xyxx.xy, 0.0f);
      r8.x = ((-(r8.xxxx)).x + cb10_10.tint_symbol[0u].w);
      r9 = textureSampleLevel(t4, s4, r7.xyxx.xy, 0.0f);
      r10 = textureSampleLevel(t6, s6, r7.zwzz.xy, 0.0f);
      r8.y = ((-(r10.xxxx)).y + cb10_10.tint_symbol[0u].w);
      r7 = textureSampleLevel(t4, s4, r7.zwzz.xy, 0.0f);
      let v_19 = r6;
      let v_20 = r10;
      r10 = vec4<f32>(v_19.z, v_20.y, v_19.w, v_20.w);
      let v_21 = r5;
      let v_22 = r10;
      r10 = vec4<f32>(v_22.x, v_21.z, v_22.z, v_21.w);
      r10 = (r10 * cb10_10.tint_symbol[1u].zwzw);
      r11 = textureSampleLevel(t6, s6, r10.xyxx.xy, 0.0f);
      r8.z = ((-(r11.xxxx)).z + cb10_10.tint_symbol[0u].w);
      r11 = textureSampleLevel(t4, s4, r10.xyxx.xy, 0.0f);
      r12 = textureSampleLevel(t6, s6, r10.zwzz.xy, 0.0f);
      r8.w = ((-(r12.xxxx)).w + cb10_10.tint_symbol[0u].w);
      r10 = textureSampleLevel(t4, s4, r10.zwzz.xy, 0.0f).yzwx;
      r6 = (r6 * cb10_10.tint_symbol[1u].zzzz);
      r6 = fma(r6, vec4<f32>(2.0f), vec4<f32>(-1.0f));
      r5 = (r5 * cb10_10.tint_symbol[1u].wwww);
      r5 = fma(-(r5), vec4<f32>(2.0f), vec4<f32>(1.0f));
      r8 = (r8 + vec4<f32>(1.0f));
      r8 = (cb10_10.tint_symbol[0u].zzzz / r8);
      r6 = (r6 * r8);
      r5 = (r5 * r8);
      let v_23 = -(r1.xxxx);
      r6 = fma(r6, cb10_10.tint_symbol[0u].xxxx, v_23);
      let v_24 = -(r1.yyyy);
      r5 = fma(r5, cb10_10.tint_symbol[0u].yyyy, v_24);
      r8 = fma(-(r1.zzzz), r0.zzzz, r8);
      r5 = (r5 * r5);
      r5 = fma(r6, r6, r5);
      r5 = fma(r8, r8, r5);
      r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb10_10.tint_symbol[2u].xxxx >= r5)));
      r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
      r10.x = r9.x;
      r10.y = r7.x;
      r10.z = r11.x;
      r2.w = dot(r10, r5);
      r4.y = (r2.w + r4.y);
      r2.w = dot(r5, vec4<f32>(1.0f));
      r4.x = (r2.w + r4.x);
      r4.z = (r4.z + 1.0f);
      r2.z = bitcast<f32>((bitcast<i32>(r2.z) + 1i));
    }
    let v_25 = r4;
    r0 = vec4<f32>(v_25.xy, r0.zw);
    r2.y = (r2.y + 1.0f);
    r1.w = bitcast<f32>((bitcast<i32>(r1.w) + 1i));
  }
  o0 = (r0.yyyy / r0.xxxx);
}

@fragment
fn main(@builtin(position) v_26 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_26);
  return o0;
}
