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

struct cb4_struct {
  tint_symbol_3 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(30u) var s14 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 3u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v1 : vec4<f32>, v3 : vec4<f32>, v4 : u32) {
  let v_1 = (v1.xy * cb2_2.tint_symbol[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  r0.z = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v4)).x;
  r0.w = (cb11_11.tint_symbol_3[3u].w + 1.0f);
  r0.z = ((-(r0.zzzz)).z + r0.w);
  r0.z = (cb11_11.tint_symbol_3[2u].w / r0.z);
  let v_5 = (r0.zzz * v3.xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r0.xy * vec2<f32>(0.015625f));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  r0.x = textureSample(t14, s14, r0.xyxx.xy).z;
  r0.x = (r0.x * cb12_12.tint_symbol_2[0u].w);
  let v_7 = fma(r1.xyz, cb6_6.tint_symbol_1[4u].xyz, cb6_6.tint_symbol_1[8u].xyz);
  r2 = vec4<f32>(v_7.xyz, r2.w);
  let v_8 = &(x0[0u]);
  let v_9 = r2;
  *(v_8) = vec4<f32>(v_9.xyz, (*(v_8)).w);
  let v_10 = fma(r1.xyz, cb6_6.tint_symbol_1[5u].xyz, cb6_6.tint_symbol_1[9u].xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = &(x0[1u]);
  let v_12 = r3;
  *(v_11) = vec4<f32>(v_12.xyz, (*(v_11)).w);
  let v_13 = fma(r1.xyz, cb6_6.tint_symbol_1[6u].xyz, cb6_6.tint_symbol_1[10u].xyz);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = &(x0[2u]);
  let v_15 = r1;
  *(v_14) = vec4<f32>(v_15.xyz, (*(v_14)).w);
  let v_16 = &(x0[3u]);
  let v_17 = r1;
  *(v_16) = vec4<f32>(v_17.xyz, (*(v_16)).w);
  let v_18 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.5f, -0.125f));
  let v_19 = r4;
  r4 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  r0.y = fma((-(cb6_6.tint_symbol_1[14u].zzzz)).y, 1.5f, 1.0f);
  let v_20 = -(r0.xxxx);
  r0.x = fma(r0.y, 0.5f, v_20.x);
  let v_21 = abs(r1.yyyy);
  let v_22 = max(v_21.yw, abs(r1.xxxx).yw);
  let v_23 = r0;
  r0 = vec4<f32>(v_23.x, v_22.x, v_23.z, v_22.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.x)));
  let v_24 = (bitcast<u32>(r0.y) != 0u);
  let v_25 = bitcast<f32>(v.tint_symbol_4[0i].x);
  r0.y = select(bitcast<f32>(v.tint_symbol_4[1i].x), v_25, v_24);
  let v_26 = abs(r3.yyyy);
  r1.x = max(v_26.x, abs(r3.xxxx).x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.x)));
  let v_27 = bitcast<u32>(r1.x);
  r0.y = select(r0.y, bitcast<f32>(v.tint_symbol_4[2i].x), (v_27 != 0u));
  let v_28 = abs(r2.yyyy);
  r1.x = max(v_28.x, abs(r2.xxxx).x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.x)));
  let v_29 = bitcast<u32>(r0.x);
  r0.x = select(r0.y, 0.0f, (v_29 != 0u));
  let v_30 = x0[bitcast<i32>(r0.x)];
  r1 = vec4<f32>(v_30.xyz, r1.w);
  r0.x = f32(bitcast<i32>(r0.x));
  r0.y = (r0.x + 0.5f);
  r0.y = (r0.y * 0.25f);
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f) == r0.xxxx)));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r2) & vec4<u32>(1065353216u)));
  r0.x = dot(r2, cb6_6.tint_symbol_1[12u]);
  r1.w = dot(r2, cb6_6.tint_symbol_1[13u]);
  r2.x = (r1.x + 0.5f);
  r2.y = fma(r1.y, 0.25f, r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, !((r0.x == 0.0f))));
  r0.x = ((-(r0.xxxx)).x + r1.z);
  let v_31 = dpdx(r2.xyy);
  r3 = vec4<f32>(v_31.xy, r3.z, v_31.z);
  r3.z = dpdx(r0.x);
  let v_32 = dpdy(r2.yxy);
  r5 = vec4<f32>(v_32.xyz, r5.w);
  r5.w = dpdy(r0.x);
  let v_33 = (r3.yw * r5.yw);
  r1 = vec4<f32>(v_33.xy, r1.zw);
  let v_34 = -(r1.xyxx);
  let v_35 = fma(r3.xz, r5.xz, v_34.xy);
  r6 = vec4<f32>(v_35.xy, r6.zw);
  r1.x = (1.0f / r6.x);
  r1.y = (r3.z * r5.y);
  let v_36 = -(r1.yyyy);
  r6.z = fma(r3.x, r5.w, v_36.z);
  let v_37 = (r1.xx * r6.yz);
  r1 = vec4<f32>(v_37.xy, r1.zw);
  let v_38 = max(r1.xy, vec2<f32>());
  r1 = vec4<f32>(v_38.xy, r1.zw);
  let v_39 = min(r1.xy, vec2<f32>(0.5f));
  r1 = vec4<f32>(v_39.xy, r1.zw);
  r0.x = fma((-(r1.wwww)).x, r1.x, r0.x);
  r0.x = fma((-(r1.wwww)).x, r1.y, r0.x);
  let v_40 = bitcast<u32>(r0.y);
  let v_41 = r0.x;
  r2.z = select(r1.z, v_41, (v_40 != 0u));
  r4.w = 0.0f;
  let v_42 = (r2.xyz + r4.yzw);
  r1 = vec4<f32>(v_42.xyz, r1.w);
  let v_43 = r1.xyxx;
  r1.x = textureSampleCompareLevel(t15, s15, v_43.xy, r1.z);
  let v_44 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.5f, -0.125f));
  r3 = vec4<f32>(v_44.xy, r3.zw);
  r3.z = 0.0f;
  let v_45 = (r2.xyz + r3.xyz);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  let v_46 = r3.xyxx;
  r1.y = textureSampleCompareLevel(t15, s15, v_46.xy, r3.z);
  let v_47 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(-0.5f, 0.125f));
  r3 = vec4<f32>(v_47.xy, r3.zw);
  r3.z = 0.0f;
  let v_48 = (r2.xyz + r3.xyz);
  r3 = vec4<f32>(v_48.xyz, r3.w);
  let v_49 = r3.xyxx;
  r1.z = textureSampleCompareLevel(t15, s15, v_49.xy, r3.z);
  let v_50 = (cb6_6.tint_symbol_1[14u].zw * vec2<f32>(0.5f, 0.125f));
  r3 = vec4<f32>(v_50.xy, r3.zw);
  r3.z = 0.0f;
  let v_51 = (r2.xyz + r3.xyz);
  r3 = vec4<f32>(v_51.xyz, r3.w);
  let v_52 = r3.xyxx;
  r1.w = textureSampleCompareLevel(t15, s15, v_52.xy, r3.z);
  r0.x = dot(r1, vec4<f32>(1.0f));
  r0.x = (r0.x * 0.25f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol_2[1u].x == 0.0f))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = textureSample(t2, s2, r2.xyxx.xy).w;
    r0.y = ((-(r1.xxxx)).y + 1.0f);
  } else {
    r0.y = 1.0f;
  }
  r0.z = clamp(fma(r0.zzzz, cb6_6.tint_symbol_1[0u].wwww, cb6_6.tint_symbol_1[1u].wwww).z, 0.0f, 1.0f);
  r0.w = clamp(fma(r0.wwww, vec4<f32>(15.0f), vec4<f32>(-6.0f)).w, 0.0f, 1.0f);
  r0.z = ((-(r0.zzzz)).z + 1.0f);
  let v_53 = fma(r0.zz, r0.ww, r0.xy);
  r0 = vec4<f32>(v_53.xy, r0.zw);
  let v_54 = (r0.xy * r0.xy);
  r0 = vec4<f32>(v_54.xy, r0.zw);
  let v_55 = min(r0.xy, vec2<f32>(1.0f));
  r0 = vec4<f32>(v_55.xy, r0.zw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_2[1u].y))));
  r0.w = (r0.y * r0.x);
  let v_56 = bitcast<u32>(r0.z);
  let v_57 = r0.w;
  r0.x = select(r0.x, v_57, (v_56 != 0u));
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(3u) @interpolate(perspective, sample) v3 : vec4<f32>, @builtin(sample_index) v4 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3, v4);
  return o0;
}
