diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

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
  let v_12 = (r0.www * v3.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = (r1.xy * vec2<f32>(0.015625f));
  r1 = vec4<f32>(v_13.xy, r1.zw);
  r1.x = textureSample(t14, s14, r1.xyxx.xy).z;
  r1.x = (r1.x * cb12_12.tint_symbol_2[0u].w);
  let v_14 = fma(r2.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r1 = vec4<f32>(r1.x, v_14.xyz);
  let v_15 = &(x0[0u]);
  let v_16 = r1;
  *(v_15) = vec4<f32>(v_16.yzw, (*(v_15)).w);
  let v_17 = fma(r2.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = &(x0[1u]);
  let v_19 = r3;
  *(v_18) = vec4<f32>(v_19.xyz, (*(v_18)).w);
  let v_20 = fma(r2.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  let v_21 = &(x0[2u]);
  let v_22 = r2;
  *(v_21) = vec4<f32>(v_22.xyz, (*(v_21)).w);
  let v_23 = &(x0[3u]);
  let v_24 = r2;
  *(v_23) = vec4<f32>(v_24.xyz, (*(v_23)).w);
  r1.w = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).w, 1.5f, 1.0f);
  let v_25 = -(r1.xxxx);
  r1.x = fma(r1.w, 0.5f, v_25.x);
  let v_26 = abs(r2.yyyy);
  let v_27 = max(v_26.xy, abs(r2.xxxx).xy);
  r2 = vec4<f32>(v_27.xy, r2.zw);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.x)));
  let v_28 = (bitcast<u32>(r1.w) != 0u);
  let v_29 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r1.w = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_29, v_28);
  let v_30 = abs(r3.yyyy);
  r2.x = max(v_30.x, abs(r3.xxxx).x);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r1.x)));
  let v_31 = bitcast<u32>(r2.x);
  r1.w = select(r1.w, bitcast<f32>(v.tint_symbol_4[2i].x), (v_31 != 0u));
  let v_32 = abs(r1.zzzz);
  r1.y = max(v_32.y, abs(r1.yyyy).y);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
  let v_33 = bitcast<u32>(r1.x);
  r1.x = select(r1.w, 0.0f, (v_33 != 0u));
  let v_34 = x0[bitcast<i32>(r1.x)];
  r1 = vec4<f32>(r1.x, v_34.xyz);
  r1.x = f32(bitcast<i32>(r1.x));
  r2.x = (r1.x + 0.5f);
  r2.x = (r2.x * 0.25f);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r1.xxxx)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r1.x = dot(r3, cb6_6.tint_symbol_1[12u]);
  r2.z = dot(r3, cb6_6.tint_symbol_1[13u]);
  r3.x = (r1.y + 0.5f);
  r3.y = fma(r1.z, 0.25f, r2.x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((r1.x == 0.0f))));
  r1.x = ((-(r1.xxxx)).x + r1.w);
  let v_35 = dpdx(r3.xyy);
  r4 = vec4<f32>(v_35.xy, r4.z, v_35.z);
  r4.z = dpdx(r1.x);
  let v_36 = dpdy(r3.yxy);
  r5 = vec4<f32>(v_36.xyz, r5.w);
  r5.w = dpdy(r1.x);
  let v_37 = (r4.yw * r5.yw);
  r2 = vec4<f32>(v_37.x, r2.yz, v_37.y);
  let v_38 = -(r2.xwxx);
  let v_39 = fma(r4.xz, r5.xz, v_38.xy);
  r6 = vec4<f32>(v_39.xy, r6.zw);
  r1.z = (1.0f / r6.x);
  r2.x = (r4.z * r5.y);
  let v_40 = -(r2.xxxx);
  r6.z = fma(r4.x, r5.w, v_40.z);
  let v_41 = (r1.zz * r6.yz);
  r2 = vec4<f32>(v_41.x, r2.yz, v_41.y);
  let v_42 = max(r2.xw, vec2<f32>());
  r2 = vec4<f32>(v_42.x, r2.yz, v_42.y);
  let v_43 = min(r2.xw, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_43.x, r2.yz, v_43.y);
  r1.x = fma((-(r2.zzzz)).x, r2.x, r1.x);
  r1.x = fma((-(r2.zzzz)).x, r2.w, r1.x);
  let v_44 = bitcast<u32>(r1.y);
  let v_45 = r1.x;
  r1.x = select(r1.w, v_45, (v_44 != 0u));
  r4.x = (r3.x + cb6_6.tint_symbol_1[14u].z);
  r4.y = fma(cb6_6.tint_symbol_1[14u].w, 0.25f, r3.y);
  let v_46 = r4.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_46.xy, r1.x);
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.z = textureSample(t2, s2, r3.xyxx.xy).w;
    r1.y = ((-(r1.zzzz)).y + 1.0f);
  } else {
    r1.y = 1.0f;
  }
  r0.w = clamp(fma(r0.wwww, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).w, 0.0f, 1.0f);
  r1.z = clamp(fma(r2.yyyy, vec4<f32>(15.0f), vec4<f32>(-6.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  let v_47 = fma(r0.ww, r1.zz, r1.xy);
  r1 = vec4<f32>(v_47.xy, r1.zw);
  let v_48 = (r1.xy * r1.xy);
  r1 = vec4<f32>(v_48.xy, r1.zw);
  let v_49 = min(r1.xy, vec2<f32>(1.0f));
  let v_50 = r1;
  r1 = vec4<f32>(v_50.x, v_49.xy, v_50.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r1.w = (r1.z * r1.y);
  let v_51 = bitcast<u32>(r0.w);
  let v_52 = r1.w;
  r1.x = select(r1.y, v_52, (v_51 != 0u));
  r2.x = (-(cb11_11.tint_symbol_3[5u].wwww)).x;
  let v_53 = r2;
  r2 = vec4<f32>(v_53.x, 0.0f, v_53.z, 0.5f);
  let v_54 = fma(r0.xy, vec2<f32>(0.00028571428265422583f), r2.xy);
  r0 = vec4<f32>(v_54.xy, r0.zw);
  r2.z = textureSample(t5, s5, r0.xyxx.xy).y;
  r0.x = textureSample(t6, s6, r2.zwzz.xy).x;
  r0.y = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[3u].xxxx, cb6_6.tint_symbol_1[3u].yyyy).y, 0.0f, 1.0f);
  r0.y = sqrt(r0.y);
  r0.y = fma((-(r0.yyyy)).y, cb6_6.tint_symbol_1[3u].z, 1.0f);
  r0.x = (r0.y * r0.x);
  o0 = (r0.xxxx * r1.xzzz);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
