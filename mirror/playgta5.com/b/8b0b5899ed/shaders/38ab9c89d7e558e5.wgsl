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

var<private> sample_pos : array<vec2<f32>, 31u> = array<vec2<f32>, 31u>(vec2<f32>(), vec2<f32>(0.25f), vec2<f32>(-0.25f), vec2<f32>(-0.125f, -0.375f), vec2<f32>(0.375f, -0.125f), vec2<f32>(-0.375f, 0.125f), vec2<f32>(0.125f, 0.375f), vec2<f32>(0.0625f, -0.1875f), vec2<f32>(-0.0625f, 0.1875f), vec2<f32>(0.3125f, 0.0625f), vec2<f32>(-0.1875f, -0.3125f), vec2<f32>(-0.3125f, 0.3125f), vec2<f32>(-0.4375f, -0.0625f), vec2<f32>(0.1875f, 0.4375f), vec2<f32>(0.4375f, -0.4375f), vec2<f32>(0.0625f), vec2<f32>(-0.0625f, -0.1875f), vec2<f32>(-0.1875f, 0.125f), vec2<f32>(0.25f, -0.0625f), vec2<f32>(-0.3125f, -0.125f), vec2<f32>(0.125f, 0.3125f), vec2<f32>(0.3125f, 0.1875f), vec2<f32>(0.1875f, -0.3125f), vec2<f32>(-0.125f, 0.375f), vec2<f32>(0.0f, -0.4375f), vec2<f32>(-0.25f, -0.375f), vec2<f32>(-0.375f, 0.25f), vec2<f32>(-0.5f, 0.0f), vec2<f32>(0.4375f, -0.25f), vec2<f32>(0.375f, 0.4375f), vec2<f32>(-0.4375f, -0.5f));

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>) {
  let v_1 = textureNumSamples(t3);
  let v_2 = sample_pos[select(0u, ((v_1 + 0u) - 1u), ((0u < v_1) & true))];
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = dpdx(v3.xyz.xy);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = dpdy(v3.xyz.xy);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r0.yy * r1.xy);
  r1 = vec4<f32>(v_5.xy, r1.zw);
  let v_6 = fma(r0.xx, r0.zw, r1.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (r0.xy + v3.xyz.xy);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_8.xy);
  let v_9 = fma(r0.zw, vec2<f32>(1.0f, -1.0f), cb11_11.tint_symbol_3[4u].xy);
  r0 = vec4<f32>(r0.xy, v_9.xy);
  r0.z = (r0.z * cb11_11.tint_symbol_3[0u].w);
  r0.w = (r0.w * cb11_11.tint_symbol_3[1u].w);
  let v_10 = (r0.www * cb11_11.tint_symbol_3[1u].xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = fma(r0.zzz, cb11_11.tint_symbol_3[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = -(cb11_11.tint_symbol_3[2u].xyzx);
  let v_13 = (r1.xyz + v_12.xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(r0.xy, v_14.xy);
  let v_15 = r0.zw;
  let v_16 = max(v_15, vec2<f32>(-2147483648.0f));
  let v_17 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_16), vec2<i32>(2147483647i), (v_16 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_15 == v_15))));
  r2 = vec4<f32>(v_17.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r1.w = textureLoad(t3, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r2.x = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r1.w = ((-(r1.wwww)).w + r2.x);
  r1.w = (cb11_11.tint_symbol_3[2u].w / r1.w);
  let v_18 = fma(r1.xyz, r1.www, cb11_11.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = (r0.xy * r1.ww);
  r0 = vec4<f32>(v_19.xy, r0.zw);
  let v_20 = fma(r0.xy, cb6_6.tint_symbol_1[4u].xy, cb6_6.tint_symbol_1[8u].xy);
  r2 = vec4<f32>(v_20.xy, r2.zw);
  let v_21 = &(x0[0u]);
  let v_22 = r2;
  *(v_21) = vec4<f32>(v_22.xy, (*(v_21)).zw);
  let v_23 = fma(r0.xy, cb6_6.tint_symbol_1[5u].xy, cb6_6.tint_symbol_1[9u].xy);
  r2 = vec4<f32>(r2.xy, v_23.xy);
  let v_24 = &(x0[1u]);
  let v_25 = r2;
  *(v_24) = vec4<f32>(v_25.zw, (*(v_24)).zw);
  let v_26 = fma(r0.xy, cb6_6.tint_symbol_1[6u].xy, cb6_6.tint_symbol_1[10u].xy);
  r3 = vec4<f32>(v_26.xy, r3.zw);
  let v_27 = &(x0[2u]);
  let v_28 = r3;
  *(v_27) = vec4<f32>(v_28.xy, (*(v_27)).zw);
  let v_29 = fma(r0.xy, cb6_6.tint_symbol_1[7u].xy, cb6_6.tint_symbol_1[11u].xy);
  r0 = vec4<f32>(v_29.xy, r0.zw);
  let v_30 = &(x0[3u]);
  let v_31 = r0;
  *(v_30) = vec4<f32>(v_31.xy, (*(v_30)).zw);
  r3.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r3.z) != 0u)) {
    let v_32 = (r0.zw * vec2<f32>(0.015625f));
    r0 = vec4<f32>(r0.xy, v_32.xy);
    r0.z = textureSample(t14, s14, r0.zwzz.xy).z;
    r0.z = (r0.z * cb12_12.tint_symbol_2[0u].w);
    r0.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
    let v_33 = -(r0.zzzz);
    r0.z = fma(r0.w, 0.5f, v_33.z);
    let v_34 = abs(r3.yyyy);
    r0.w = max(v_34.w, abs(r3.xxxx).w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.z)));
    let v_35 = (bitcast<u32>(r0.w) != 0u);
    let v_36 = bitcast<f32>(v.tint_symbol_4[0i].x);
    r0.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_36, v_35);
    let v_37 = abs(r2.yywy);
    let v_38 = max(v_37.xz, abs(r2.xxzx).xz);
    let v_39 = r2;
    r2 = vec4<f32>(v_38.x, v_39.y, v_38.y, v_39.w);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < r0.z)));
    let v_40 = bitcast<u32>(r2.z);
    r0.w = select(r0.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_40 != 0u));
    r0.z = bitcast<f32>(select(0u, 4294967295u, (r2.x < r0.z)));
    let v_41 = bitcast<u32>(r0.z);
    r0.z = select(r0.w, 0.0f, (v_41 != 0u));
    let v_42 = x0[bitcast<i32>(r0.z)];
    r2 = vec4<f32>(v_42.xy, r2.zw);
    r0.z = f32(bitcast<i32>(r0.z));
    r0.z = (r0.z + 0.5f);
    r0.z = (r0.z * 0.25f);
    r3.x = (r2.x + 0.5f);
    r3.y = fma(r2.y, 0.25f, r0.z);
    r0.z = textureSample(t2, s2, r3.xyxx.xy).w;
    r0.z = ((-(r0.zzzz)).z + 1.0f);
  } else {
    r0.z = 1.0f;
  }
  r0.w = clamp(fma(r1.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  let v_43 = abs(r0.yyyy);
  r0.x = max(v_43.x, abs(r0.xxxx).x);
  r0.x = clamp(fma(r0.xxxx, vec4<f32>(15.0f), vec4<f32>(-6.30000019073486328125f)).x, 0.0f, 1.0f);
  r0.y = ((-(r0.wwww)).y + 1.0f);
  r0.x = fma(r0.y, r0.x, r0.z);
  r0.x = (r0.x * r0.x);
  r0.y = min(r0.x, 1.0f);
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_44 = r2;
  r2 = vec4<f32>(v_44.x, 0.0f, v_44.z, 0.5f);
  let v_45 = fma(r1.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(r0.xy, v_45.xy);
  r2.z = textureSample(t5, s5, r0.zwzz.xy).y;
  r0.z = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.w = clamp(fma(r1.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).w, 0.0f, 1.0f);
  r0.w = sqrt(r0.w);
  r0.w = fma((-(r0.wwww)).w, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.z = (r0.w * r0.z);
  r0.x = 1.0f;
  let v_46 = (r0.zz * r0.xy);
  r0 = vec4<f32>(v_46.xy, r0.zw);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) v3 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
