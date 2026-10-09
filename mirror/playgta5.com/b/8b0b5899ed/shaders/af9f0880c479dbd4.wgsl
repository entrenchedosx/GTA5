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

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb10_10.tint_symbol[1u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = textureSampleLevel(t6, s6, r0.xyxx.xy, 0.0f);
  r0.z = ((-(r1.xxxx)).z + cb10_10.tint_symbol[0u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb10_10.tint_symbol[0u].z / r0.z);
  let v_3 = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = (r1.xy * cb10_10.tint_symbol[0u].xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.z = 1.0f;
  let v_5 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (cb10_10.tint_symbol[1u].xy * vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_6.xy);
  let v_7 = (cb10_10.tint_symbol[2u].xx / cb10_10.tint_symbol[0u].xy);
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = (r0.zw * r2.xy);
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = (r0.zw / r1.zz);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  let v_10 = min(r0.zw, cb10_10.tint_symbol[2u].yy);
  r0 = vec4<f32>(r0.xy, v_10.xy);
  r0.z = max(r0.w, r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.z < 1.0f)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r2 = textureSampleLevel(t4, s4, r0.xyxx.xy, 0.0f);
    o0 = r2.xxxx;
    return;
  }
  r0.x = trunc(r0.z);
  let v_11 = r0.x;
  let v_12 = max(v_11, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_12), 2147483647i, (v_12 >= 2147483648.0f)), 0i, !((v_11 == v_11))));
  r0.z = bitcast<f32>(-(bitcast<i32>(r0.y)));
  let v_13 = ((-(r0.xxxx)).xw + v0.yx);
  r0 = vec4<f32>(v_13.x, r0.yz, v_13.y);
  r2.z = 1.0f;
  r3 = vec4<f32>(vec2<f32>(), r3.zw);
  r1.w = r0.z;
  r2.w = r0.x;
  loop {
    r3.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.y) < bitcast<i32>(r1.w))));
    if ((bitcast<u32>(r3.z) != 0u)) {
      break;
    }
    r4.y = r2.w;
    let v_14 = r3;
    r3 = vec4<f32>(r3.xy, v_14.xy);
    let v_15 = r0;
    r4 = vec4<f32>(r4.xy, v_15.zw);
    loop {
      r5.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.y) < bitcast<i32>(r4.z))));
      if ((bitcast<u32>(r5.x) != 0u)) {
        break;
      }
      r4.x = r4.w;
      let v_16 = (r4.xy * cb10_10.tint_symbol[1u].zw);
      r5 = vec4<f32>(v_16.xy, r5.zw);
      r6 = textureSampleLevel(t6, s6, r5.xyxx.xy, 0.0f);
      r4.x = ((-(r6.xxxx)).x + cb10_10.tint_symbol[0u].w);
      r4.x = (r4.x + 1.0f);
      r4.x = (cb10_10.tint_symbol[0u].z / r4.x);
      let v_17 = fma(r5.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
      r5 = vec4<f32>(r5.xy, v_17.xy);
      let v_18 = (r5.zw * cb10_10.tint_symbol[0u].xy);
      r2 = vec4<f32>(v_18.xy, r2.zw);
      r5 = textureSampleLevel(t4, s4, r5.xyxx.xy, 0.0f);
      let v_19 = -(r1.xxyz);
      let v_20 = fma(r2.xyz, r4.xxx, v_19.yzw);
      r5 = vec4<f32>(r5.x, v_20.xyz);
      r2.x = dot(r5.yzw, r5.yzw);
      r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < cb10_10.tint_symbol[2u].x)));
      r5.x = (r3.z + r5.x);
      r5.y = (r3.w + 1.0f);
      let v_21 = bitcast<vec2<u32>>(r2.xx);
      let v_22 = r5.xy;
      let v_23 = select(r3.zw, v_22, (v_21 != vec2<u32>()));
      r3 = vec4<f32>(r3.xy, v_23.xy);
      r4.w = (r4.w + 1.0f);
      r4.z = bitcast<f32>((bitcast<i32>(r4.z) + 1i));
    }
    let v_24 = r3;
    r3 = vec4<f32>(v_24.zw, r3.zw);
    r2.w = (r2.w + 1.0f);
    r1.w = bitcast<f32>((bitcast<i32>(r1.w) + 1i));
  }
  o0 = (r3.xxxx / r3.yyyy);
}

@fragment
fn main(@builtin(position) v_25 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_25);
  return o0;
}
