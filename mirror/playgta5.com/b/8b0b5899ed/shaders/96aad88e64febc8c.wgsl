diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb15_struct {
  tint_symbol_1 : array<vec4<f32>, 15u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb15_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

struct cb6_struct {
  tint_symbol_3 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v_1 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = fma(r0.xy, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = (r0.x * cb11_11.tint_symbol_3[0u].w);
  r0.y = (r0.y * cb11_11.tint_symbol_3[1u].w);
  let v_3 = (r0.yyy * cb11_11.tint_symbol_3[1u].xyz);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(r0.xxx, cb11_11.tint_symbol_3[0u].xyz, r0.yzw);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_6 = (r0.xyz + v_5.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = r1.xy;
  let v_9 = max(v_8, vec2<f32>(-2147483648.0f));
  let v_10 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_9), vec2<i32>(2147483647i), (v_9 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_8 == v_8))));
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(v4)).x;
  r1.z = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r0.wwww)).w + r1.z);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_11 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = (r0.ww * v3.xyz.xy);
  r1 = vec4<f32>(r1.xy, v_12.xy);
  let v_13 = fma(r1.zw, cb6_6.tint_symbol_1[4u].xy, cb6_6.tint_symbol_1[8u].xy);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = &(x0[0u]);
  let v_15 = r2;
  *(v_14) = vec4<f32>(v_15.xy, (*(v_14)).zw);
  let v_16 = fma(r1.zw, cb6_6.tint_symbol_1[5u].xy, cb6_6.tint_symbol_1[9u].xy);
  r2 = vec4<f32>(r2.xy, v_16.xy);
  let v_17 = &(x0[1u]);
  let v_18 = r2;
  *(v_17) = vec4<f32>(v_18.zw, (*(v_17)).zw);
  let v_19 = fma(r1.zw, cb6_6.tint_symbol_1[6u].xy, cb6_6.tint_symbol_1[10u].xy);
  r3 = vec4<f32>(v_19.xy, r3.zw);
  let v_20 = &(x0[2u]);
  let v_21 = r3;
  *(v_20) = vec4<f32>(v_21.xy, (*(v_20)).zw);
  let v_22 = fma(r1.zw, cb6_6.tint_symbol_1[7u].xy, cb6_6.tint_symbol_1[11u].xy);
  r1 = vec4<f32>(r1.xy, v_22.xy);
  let v_23 = &(x0[3u]);
  let v_24 = r1;
  *(v_23) = vec4<f32>(v_24.zw, (*(v_23)).zw);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    let v_25 = (r1.xy * vec2<f32>(0.015625f));
    r1 = vec4<f32>(v_25.xy, r1.zw);
    r1.x = textureSample(t14, s14, r1.xyxx.xy).z;
    r1.x = (r1.x * cb12_12.tint_symbol_2[0u].w);
    r1.y = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).y, 1.5f, 1.0f);
    let v_26 = -(r1.xxxx);
    r1.x = fma(r1.y, 0.5f, v_26.x);
    let v_27 = abs(r3.yyyy);
    r1.y = max(v_27.y, abs(r3.xxxx).y);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
    let v_28 = (bitcast<u32>(r1.y) != 0u);
    let v_29 = bitcast<f32>(v.tint_symbol_4[0i].x);
    r1.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_29, v_28);
    let v_30 = abs(r2.yywy);
    let v_31 = max(v_30.xz, abs(r2.xxzx).xz);
    let v_32 = r2;
    r2 = vec4<f32>(v_31.x, v_32.y, v_31.y, v_32.w);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r1.x)));
    let v_33 = bitcast<u32>(r2.z);
    r1.y = select(r1.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_33 != 0u));
    r1.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.x)));
    let v_34 = bitcast<u32>(r1.x);
    r1.x = select(r1.y, 0.0f, (v_34 != 0u));
    let v_35 = x0[bitcast<i32>(r1.x)];
    r2 = vec4<f32>(v_35.xy, r2.zw);
    r1.x = f32(bitcast<i32>(r1.x));
    r1.x = (r1.x + 0.5f);
    r1.x = (r1.x * 0.25f);
    r3.x = (r2.x + 0.5f);
    r3.y = fma(r2.y, 0.25f, r1.x);
    r1.x = textureSample(t2, s2, r3.xyxx.xy).w;
    r1.x = ((-(r1.xxxx)).x + 1.0f);
  } else {
    r1.x = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_36 = abs(r1.wwww);
  r1.y = max(v_36.y, abs(r1.zzzz).y);
  r1.y = clamp(fma(r1.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).y, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = fma(r0.w, r1.y, r1.x);
  r0.w = (r0.w * r0.w);
  r1.y = min(r0.w, 1.0f);
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_37 = r2;
  r2 = vec4<f32>(v_37.x, 0.0f, v_37.z, 0.5f);
  let v_38 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_38.xy, r0.zw);
  r2.z = textureSample(t5, s5, r0.xyxx.xy).y;
  r0.x = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.y = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(r0.yyyy)).y, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.y * r0.x);
  r1.x = 1.0f;
  let v_39 = (r0.xx * r1.xy);
  r0 = vec4<f32>(v_39.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
