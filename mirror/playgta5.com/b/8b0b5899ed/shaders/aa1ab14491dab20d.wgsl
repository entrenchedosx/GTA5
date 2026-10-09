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

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
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
  r1 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.w = ((-(r1.xxxx)).w + r0.w);
  r0.w = (cb11_11.tint_symbol_3[2u].w / r0.w);
  let v_7 = fma(r0.xyz, r0.www, cb11_11.tint_symbol_3[3u].xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.ww * v3.xyz.xy);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = fma(r1.xy, cb6_6.tint_symbol_1[4u].xy, cb6_6.tint_symbol_1[8u].xy);
  r1 = vec4<f32>(r1.xy, v_9.xy);
  let v_10 = &(x0[0u]);
  let v_11 = r1;
  *(v_10) = vec4<f32>(v_11.zw, (*(v_10)).zw);
  let v_12 = fma(r1.xy, cb6_6.tint_symbol_1[5u].xy, cb6_6.tint_symbol_1[9u].xy);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = &(x0[1u]);
  let v_14 = r2;
  *(v_13) = vec4<f32>(v_14.xy, (*(v_13)).zw);
  let v_15 = fma(r1.xy, cb6_6.tint_symbol_1[6u].xy, cb6_6.tint_symbol_1[10u].xy);
  r2 = vec4<f32>(r2.xy, v_15.xy);
  let v_16 = &(x0[2u]);
  let v_17 = r2;
  *(v_16) = vec4<f32>(v_17.zw, (*(v_16)).zw);
  let v_18 = fma(r1.xy, cb6_6.tint_symbol_1[7u].xy, cb6_6.tint_symbol_1[11u].xy);
  r1 = vec4<f32>(v_18.xy, r1.zw);
  let v_19 = &(x0[3u]);
  let v_20 = r1;
  *(v_19) = vec4<f32>(v_20.xy, (*(v_19)).zw);
  r3.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r3.x) != 0u)) {
    let v_21 = (v1.xy * cb2_2.tint_symbol[18u].xy);
    r3 = vec4<f32>(v_21.xy, r3.zw);
    let v_22 = (r3.xy * vec2<f32>(0.015625f));
    r3 = vec4<f32>(v_22.xy, r3.zw);
    r3 = textureSample(t14, s14, r3.xyxx.xy);
    r3.x = (r3.z * cb12_12.tint_symbol_2[0u].w);
    r3.y = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).y, 1.5f, 1.0f);
    let v_23 = -(r3.xxxx);
    r3.x = fma(r3.y, 0.5f, v_23.x);
    let v_24 = abs(r2.yywy);
    let v_25 = max(v_24.xz, abs(r2.xxzx).xz);
    let v_26 = r2;
    r2 = vec4<f32>(v_25.x, v_26.y, v_25.y, v_26.w);
    let v_27 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r2.xz < r3.xx)));
    let v_28 = r2;
    r2 = vec4<f32>(v_27.x, v_28.y, v_27.y, v_28.w);
    let v_29 = (bitcast<u32>(r2.z) != 0u);
    let v_30 = bitcast<f32>(v.tint_symbol_4[0i].x);
    r2.z = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_30, v_29);
    let v_31 = bitcast<u32>(r2.x);
    r2.x = select(r2.z, bitcast<f32>(v.tint_symbol_4[2i].x), (v_31 != 0u));
    let v_32 = abs(r1.wwww);
    r1.z = max(v_32.z, abs(r1.zzzz).z);
    r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.z < r3.x)));
    let v_33 = bitcast<u32>(r1.z);
    r1.z = select(r2.x, 0.0f, (v_33 != 0u));
    let v_34 = x0[bitcast<i32>(r1.z)];
    r2 = vec4<f32>(v_34.xy, r2.zw);
    r1.z = f32(bitcast<i32>(r1.z));
    r1.z = (r1.z + 0.5f);
    r1.z = (r1.z * 0.25f);
    r3.x = (r2.x + 0.5f);
    r3.y = fma(r2.y, 0.25f, r1.z);
    r2 = textureSample(t2, s2, r3.xyxx.xy);
    r1.z = ((-(r2.wwww)).z + 1.0f);
  } else {
    r1.z = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_35 = abs(r1.yyyy);
  r1.x = max(v_35.x, abs(r1.xxxx).x);
  r1.x = clamp(fma(r1.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = fma(r0.w, r1.x, r1.z);
  r0.w = (r0.w * r0.w);
  r1.y = min(r0.w, 1.0f);
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_36 = r2;
  r2 = vec4<f32>(v_36.x, 0.0f, v_36.z, 0.5f);
  let v_37 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_37.xy, r0.zw);
  r3 = textureSample(t5, s5, r0.xyxx.xy);
  r2.z = r3.y;
  r2 = textureSample(t6, s6, r2.zwzz.xy);
  r0.x = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).x, 0.0f, 1.0f);
  r0.x = sqrt(r0.x);
  r0.x = fma((-(r0.xxxx)).x, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.x * r2.x);
  r1.x = 1.0f;
  let v_38 = (r0.xx * r1.xy);
  r0 = vec4<f32>(v_38.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
