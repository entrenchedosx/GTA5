diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  let v = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), !((vec2<f32>() == r0.yx))));
  r0 = vec4<f32>(v.xy, r0.zw);
  if ((bitcast<u32>(r0.x) != 0u)) {
    let v_1 = fma((-(cb12_12.tint_symbol[0u].xxyx)).xz, vec2<f32>(1.5f, 0.0f), v1.xy);
    let v_2 = r0;
    r0 = vec4<f32>(v_1.x, v_2.y, v_1.y, v_2.w);
    let v_3 = r0;
    r1 = vec4<f32>(v_3.xz, r1.zw);
    r0.w = 0.0f;
    r1.z = 0.0f;
    loop {
      r1.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) >= 32i)));
      if ((bitcast<u32>(r1.w) != 0u)) {
        break;
      }
      r2 = textureSampleLevel(t3, s3, r1.xyxx.xy, 0.0f);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.y < 0.89999997615814208984f)));
      if ((bitcast<u32>(r1.w) != 0u)) {
        r0.w = r2.y;
        break;
      }
      let v_4 = fma((-(cb12_12.tint_symbol[0u].xyxx)).xy, vec2<f32>(2.0f, 0.0f), r1.xy);
      r1 = vec4<f32>(v_4.xy, r1.zw);
      r1.z = bitcast<f32>((bitcast<i32>(r1.z) + 1i));
      r0.w = r2.y;
    }
    r0.x = f32(bitcast<i32>(r1.z));
    r0.z = (r0.w + r0.w);
    let v_5 = -(r0.zzzz);
    r0.x = fma(r0.x, -2.0f, v_5.x);
    r1.x = max(r0.x, -64.0f);
    let v_6 = fma(cb12_12.tint_symbol[0u].xy, vec2<f32>(1.5f, 0.0f), v1.xy);
    let v_7 = r0;
    r0 = vec4<f32>(v_6.x, v_7.y, v_6.y, v_7.w);
    let v_8 = r0;
    r2 = vec4<f32>(v_8.xz, r2.zw);
    r0.w = 0.0f;
    r2.z = 0.0f;
    loop {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) >= 32i)));
      if ((bitcast<u32>(r2.w) != 0u)) {
        break;
      }
      r3 = textureSampleLevel(t3, s3, r2.xyxx.xy, 0.0f);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (r3.y < 0.89999997615814208984f)));
      if ((bitcast<u32>(r2.w) != 0u)) {
        r0.w = r3.y;
        break;
      }
      let v_9 = fma(cb12_12.tint_symbol[0u].xy, vec2<f32>(2.0f, 0.0f), r2.xy);
      r2 = vec4<f32>(v_9.xy, r2.zw);
      r2.z = bitcast<f32>((bitcast<i32>(r2.z) + 1i));
      r0.w = r3.y;
    }
    r0.x = f32(bitcast<i32>(r2.z));
    r0.z = (r0.w + r0.w);
    r0.x = fma(r0.x, 2.0f, r0.z);
    r1.w = min(r0.x, 64.0f);
    r1.y = (r1.w + 1.0f);
    r1.z = -0.25f;
    let v_10 = fma(r1.xzy, cb12_12.tint_symbol[0u].xyx, v1.xy.xyx);
    r0 = vec4<f32>(v_10.x, r0.y, v_10.yz);
    r2 = textureSampleLevel(t3, s3, r0.xzxx.xy, 0.0f);
    r3 = textureSampleLevel(t3, s3, r0.wzww.xy, 0.0f).yxzw;
    r3.x = r2.x;
    let v_11 = (r3.xy * vec2<f32>(4.0f));
    let v_12 = r0;
    r0 = vec4<f32>(v_11.x, v_12.y, v_11.y, v_12.w);
    let v_13 = round(r0.xz);
    let v_14 = r0;
    r0 = vec4<f32>(v_13.x, v_14.y, v_13.y, v_14.w);
    let v_15 = abs(r1.xxwx);
    let v_16 = fma(r0.xz, vec2<f32>(32.0f), v_15.xz);
    let v_17 = r0;
    r0 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
    let v_18 = (r0.xz * vec2<f32>(0.00628930795937776566f));
    let v_19 = r0;
    r0 = vec4<f32>(v_18.x, v_19.y, v_18.y, v_19.w);
    r1 = textureSampleLevel(t4, s4, r0.xzxx.xy, 0.0f);
    let v_20 = r1;
    o0 = vec4<f32>(v_20.xy, o0.zw);
  } else {
    o0 = vec4<f32>(vec2<f32>(), o0.zw);
  }
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v_21 = fma((-(cb12_12.tint_symbol[0u].xyxx)).xy, vec2<f32>(0.0f, 1.5f), v1.xy);
    r0 = vec4<f32>(v_21.xy, r0.zw);
    let v_22 = r0;
    r0 = vec4<f32>(r0.xy, v_22.xy);
    r1 = vec4<f32>(vec2<f32>(), r1.zw);
    loop {
      r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) >= 32i)));
      if ((bitcast<u32>(r1.z) != 0u)) {
        break;
      }
      r2 = textureSampleLevel(t3, s3, r0.zwzz.xy, 0.0f);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < 0.89999997615814208984f)));
      if ((bitcast<u32>(r1.z) != 0u)) {
        r1.x = r2.x;
        break;
      }
      let v_23 = fma((-(cb12_12.tint_symbol[0u].xxxy)).zw, vec2<f32>(0.0f, 2.0f), r0.zw);
      r0 = vec4<f32>(r0.xy, v_23.xy);
      r1.y = bitcast<f32>((bitcast<i32>(r1.y) + 1i));
      r1.x = r2.x;
    }
    r0.x = f32(bitcast<i32>(r1.y));
    r0.y = (r1.x + r1.x);
    let v_24 = -(r0.yyyy);
    r0.x = fma(r0.x, -2.0f, v_24.x);
    r0.x = max(r0.x, -64.0f);
    let v_25 = fma(cb12_12.tint_symbol[0u].xy, vec2<f32>(0.0f, 1.5f), v1.xy);
    r1 = vec4<f32>(v_25.xy, r1.zw);
    let v_26 = r1;
    r1 = vec4<f32>(r1.xy, v_26.xy);
    r2 = vec4<f32>(vec2<f32>(), r2.zw);
    loop {
      r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.y) >= 32i)));
      if ((bitcast<u32>(r2.z) != 0u)) {
        break;
      }
      r3 = textureSampleLevel(t3, s3, r1.zwzz.xy, 0.0f);
      r2.z = bitcast<f32>(select(0u, 4294967295u, (r3.x < 0.89999997615814208984f)));
      if ((bitcast<u32>(r2.z) != 0u)) {
        r2.x = r3.x;
        break;
      }
      let v_27 = fma(cb12_12.tint_symbol[0u].xy, vec2<f32>(0.0f, 2.0f), r1.zw);
      r1 = vec4<f32>(r1.xy, v_27.xy);
      r2.y = bitcast<f32>((bitcast<i32>(r2.y) + 1i));
      r2.x = r3.x;
    }
    r1.x = f32(bitcast<i32>(r2.y));
    r1.y = (r2.x + r2.x);
    r1.x = fma(r1.x, 2.0f, r1.y);
    r0.w = min(r1.x, 64.0f);
    r0.y = (r0.w + 1.0f);
    r0.z = -0.25f;
    let v_28 = fma(r0.zxy, cb12_12.tint_symbol[0u].xyy, v1.xy.xyy);
    r1 = vec4<f32>(v_28.xyz, r1.w);
    r2 = textureSampleLevel(t3, s3, r1.xyxx.xy, 0.0f);
    r1 = textureSampleLevel(t3, s3, r1.xzxx.xy, 0.0f);
    r1.x = r2.y;
    let v_29 = (r1.xy * vec2<f32>(4.0f));
    let v_30 = r0;
    r0 = vec4<f32>(v_30.x, v_29.xy, v_30.w);
    let v_31 = round(r0.yz);
    let v_32 = r0;
    r0 = vec4<f32>(v_32.x, v_31.xy, v_32.w);
    let v_33 = abs(r0.xwxx);
    let v_34 = fma(r0.yz, vec2<f32>(32.0f), v_33.xy);
    r0 = vec4<f32>(v_34.xy, r0.zw);
    let v_35 = (r0.xy * vec2<f32>(0.00628930795937776566f));
    r0 = vec4<f32>(v_35.xy, r0.zw);
    r0 = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f);
    let v_36 = r0;
    o0 = vec4<f32>(o0.xy, v_36.xy);
  } else {
    o0 = vec4<f32>(o0.xy, vec2<f32>());
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
