diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb3_struct {
  tint_symbol : array<vec4<f32>, 3u>,
}

@group(1u) @binding(10u) var<uniform> cb10_10 : cb3_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = v0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r0.x = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r0.x = ((-(r0.xxxx)).x + cb10_10.tint_symbol[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb10_10.tint_symbol[0u].z / r0.x);
  let v_5 = (v0.xy * cb10_10.tint_symbol[1u].zw);
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
  let v_7 = fma(r0.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = (r1.xy * cb10_10.tint_symbol[0u].xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  r1.z = 1.0f;
  let v_9 = (r0.xxx * r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(v_10.x, r0.yz, v_10.y);
  let v_11 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = (r0.xw * r2.xy);
  r0 = vec4<f32>(v_12.x, r0.yz, v_12.y);
  let v_13 = (r0.xw / r1.zz);
  r0 = vec4<f32>(v_13.x, r0.yz, v_13.y);
  let v_14 = min(r0.xw, cb10_10.tint_symbol[2u].yy);
  r0 = vec4<f32>(v_14.x, r0.yz, v_14.y);
  r0.x = max(r0.w, r0.x);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.y = textureSampleLevel(t4, s4, r0.yzyy.xy, 0.0f).x;
    o0 = r0.yyyy;
    return;
  }
  r0.x = trunc(r0.x);
  let v_15 = r0.x;
  let v_16 = max(v_15, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_16), 2147483647i, (v_16 >= 2147483648.0f)), 0i, !((v_15 == v_15))));
  r0.z = bitcast<f32>(-(bitcast<i32>(r0.y)));
  let v_17 = ((-(r0.xxxx)).xw + v0.yx);
  r0 = vec4<f32>(v_17.x, r0.yz, v_17.y);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3.z = 1.0f;
  r4 = vec4<f32>(vec2<f32>(), r4.zw);
  r1.w = r0.z;
  r3.w = r0.x;
  loop {
    r4.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.y) < bitcast<i32>(r1.w))));
    if ((bitcast<u32>(r4.z) != 0u)) {
      break;
    }
    let v_18 = r3.w;
    let v_19 = max(v_18, -2147483648.0f);
    r2.y = bitcast<f32>(select(select(i32(v_19), 2147483647i, (v_19 >= 2147483648.0f)), 0i, !((v_18 == v_18))));
    r5.y = r3.w;
    let v_20 = r4;
    r4 = vec4<f32>(r4.xy, v_20.xy);
    let v_21 = r0;
    r5 = vec4<f32>(r5.xy, v_21.zw);
    loop {
      r6.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.y) < bitcast<i32>(r5.z))));
      if ((bitcast<u32>(r6.x) != 0u)) {
        break;
      }
      let v_22 = r5.w;
      let v_23 = max(v_22, -2147483648.0f);
      r2.x = bitcast<f32>(select(select(i32(v_23), 2147483647i, (v_23 >= 2147483648.0f)), 0i, !((v_22 == v_22))));
      r2.x = textureLoad(t7, bitcast<vec2<i32>>(r2.xy), 0i).x;
      r2.x = ((-(r2.xxxx)).x + cb10_10.tint_symbol[0u].w);
      r2.x = (r2.x + 1.0f);
      r2.x = (cb10_10.tint_symbol[0u].z / r2.x);
      r5.x = r5.w;
      let v_24 = (r5.xy * cb10_10.tint_symbol[1u].zw);
      r6 = vec4<f32>(v_24.xy, r6.zw);
      let v_25 = fma(r6.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
      r6 = vec4<f32>(r6.xy, v_25.xy);
      let v_26 = (r6.zw * cb10_10.tint_symbol[0u].xy);
      r3 = vec4<f32>(v_26.xy, r3.zw);
      r5.x = textureSampleLevel(t4, s4, r6.xyxx.xy, 0.0f).x;
      let v_27 = -(r1.xyzx);
      let v_28 = fma(r3.xyz, r2.xxx, v_27.xyz);
      r6 = vec4<f32>(v_28.xyz, r6.w);
      r2.x = dot(r6.xyz, r6.xyz);
      r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < cb10_10.tint_symbol[2u].x)));
      r3.x = (r4.z + r5.x);
      r3.y = (r4.w + 1.0f);
      let v_29 = bitcast<vec2<u32>>(r2.xx);
      let v_30 = r3.xy;
      let v_31 = select(r4.zw, v_30, (v_29 != vec2<u32>()));
      r4 = vec4<f32>(r4.xy, v_31.xy);
      r5.w = (r5.w + 1.0f);
      r5.z = bitcast<f32>((bitcast<i32>(r5.z) + 1i));
    }
    let v_32 = r4;
    r4 = vec4<f32>(v_32.zw, r4.zw);
    r3.w = (r3.w + 1.0f);
    r1.w = bitcast<f32>((bitcast<i32>(r1.w) + 1i));
  }
  o0 = (r4.xxxx / r4.yyyy);
}

@fragment
fn main(@builtin(position) v_33 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_33);
  return o0;
}
