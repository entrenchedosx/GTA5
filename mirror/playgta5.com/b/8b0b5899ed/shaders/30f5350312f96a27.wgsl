diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb46_struct {
  tint_symbol_2 : array<vec4<f32>, 46u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb46_struct;

struct cb1_struct {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb1_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

var<private> v3 : vec4<f32>;

var<private> v4 : array<f32, 4u>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v3 = v_1;
  x0[0u].x = v4[0u];
  x0[0u].y = v4[1u];
  x0[0u].z = v4[2u];
  x0[0u].w = v4[3u];
  let v_2 = (v0.xyz + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = -(cb1_1.tint_symbol[14u].xyzx);
  r0.x = dot(r0.xyz, v_3.xyz);
  let v_4 = -(cb3_3.tint_symbol_2[44u].xxxx);
  r0.x = (r0.x + v_4.x);
  r0.y = (v_4.y + cb3_3.tint_symbol_2[44u].y);
  r0.x = clamp(((r0.xxxx / r0.yyyy)).x, 0.0f, 1.0f);
  r1 = (-(cb3_3.tint_symbol_2[1u]) + cb3_3.tint_symbol_2[43u]);
  r0 = fma(r0.xxxx, r1, cb3_3.tint_symbol_2[1u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[44u].y < 0.0f)));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.99998998641967773438f < v1.w)));
  let v_5 = bitcast<vec4<u32>>(r1.yyyy);
  r0 = select(r0, v1, (v_5 != vec4<u32>()));
  let v_6 = bitcast<vec4<u32>>(r1.xxxx);
  let v_7 = cb5_5.tint_symbol_3[0u];
  r0 = select(r0, v_7, (v_6 != vec4<u32>()));
  let v_8 = (v3.xy + vec2<f32>(0.5f));
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = (r1.xy * cb2_2.tint_symbol_1[18u].zw);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r1 = textureSample(t1, s1, r1.xyxx.xy);
  r1.y = (cb3_3.tint_symbol_2[45u].w + 1.0f);
  r1.y = ((-(r1.xxxx)).y + r1.y);
  r1.y = (cb3_3.tint_symbol_2[45u].z / r1.y);
  let v_10 = -(cb3_3.tint_symbol_2[0u].xxxx);
  r1.y = (r1.y + v_10.y);
  let v_11 = ((-(cb3_3.tint_symbol_2[0u].xxxz)).zw + cb3_3.tint_symbol_2[0u].yw);
  r1 = vec4<f32>(r1.xy, v_11.xy);
  r1.y = clamp(((r1.yyyy / r1.zzzz)).y, 0.0f, 1.0f);
  r1.y = fma(r1.y, r1.w, cb3_3.tint_symbol_2[0u].z);
  r1.y = (r1.y + v3.z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.y >= r1.x)));
  let v_12 = (r0.ww * cb3_3.tint_symbol_2[44u].zw);
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  let v_14 = bitcast<u32>(r1.x);
  let v_15 = r1.y;
  r0.w = select(r1.z, v_15, (v_14 != 0u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -10.0f)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb3_3.tint_symbol_2[1u].x)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      let v_16 = fma(abs(v2.wwww).xy, vec2<f32>(10.0f), vec2<f32>(1.00010001659393310547f, -1.99989998340606689453f));
      r1 = vec4<f32>(v_16.xy, r1.zw);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (2.0f < r1.x)));
      let v_17 = bitcast<u32>(r1.z);
      let v_18 = r1.y;
      r1.x = select(r1.x, v_18, (v_17 != 0u));
      r1.y = bitcast<f32>(select(0u, 4294967295u, (3.0f < r1.x)));
      r1.z = (r1.x + -1.0f);
      let v_19 = bitcast<u32>(r1.y);
      let v_20 = r1.z;
      r1.x = select(r1.x, v_20, (v_19 != 0u));
      r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 3.0f)));
      let v_21 = select(v2.xy, v2.yx, (bitcast<vec2<u32>>(r1.yy) != vec2<u32>()));
      let v_22 = r1;
      r1 = vec4<f32>(v_22.x, v_21.xy, v_22.w);
      let v_23 = fract(r1.yz);
      r2 = vec4<f32>(v_23.xy, r2.zw);
      r3 = (r2.xyxy * vec4<f32>(-16.0f, -16.0f, 16.0f, 16.0f));
      r3 = fract(r3);
      let v_24 = max(r3.zw, r3.xy);
      let v_25 = r1;
      r1 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
      let v_26 = (r1.yz * r1.yz);
      let v_27 = r1;
      r1 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
      let v_28 = (r1.yz * r1.yz);
      let v_29 = r1;
      r1 = vec4<f32>(v_29.x, v_28.xy, v_29.w);
      let v_30 = (r1.yz * r1.yz);
      let v_31 = r1;
      r1 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
      let v_32 = (r1.yz * r1.yz);
      let v_33 = r1;
      r1 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
      r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[1u].xxxx == vec4<f32>(1.0f, 2.0f, 3.0f, 4.0f))));
      r4.x = bitcast<f32>((bitcast<u32>(r3.y) | bitcast<u32>(r3.x)));
      r4.y = r3.z;
      let v_34 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.xyx) & vec3<u32>(1065353216u, 1065353216u, 1036831949u)));
      r4 = vec4<f32>(v_34.xyz, r4.w);
      r1.w = dot(r4.xy, r2.xy);
      r2.w = fma(r1.w, 0.89999997615814208984f, r4.z);
      let v_35 = bitcast<u32>(r3.x);
      let v_36 = r2.w;
      r1.w = select(r1.w, v_36, (v_35 != 0u));
      r2.w = bitcast<f32>((bitcast<u32>(r3.w) & 1065353216u));
      r1.y = max(r1.z, r1.y);
      r2.z = 0.0f;
      let v_37 = fma(r1.yyy, vec3<f32>(0.25f, 0.25f, 1.0f), r2.xyz);
      r3 = vec4<f32>(r3.x, v_37.xyz);
      let v_38 = fma(r2.www, r3.yzw, r1.www);
      r3 = vec4<f32>(r3.x, v_38.xyz);
      let v_39 = (r1.xxx * vec3<f32>(1.0f, 0.5f, 0.25f));
      r1 = vec4<f32>(v_39.xyz, r1.w);
      let v_40 = trunc(r1.xyz);
      r1 = vec4<f32>(v_40.xyz, r1.w);
      let v_41 = (r1.xyz * vec3<f32>(0.5f));
      r1 = vec4<f32>(v_41.xyz, r1.w);
      let v_42 = fract(r1.xyz);
      r1 = vec4<f32>(v_42.xyz, r1.w);
      let v_43 = (r1.www * r1.xyz);
      r1 = vec4<f32>(v_43.xyz, r1.w);
      let v_44 = (r1.xyz + r1.xyz);
      r1 = vec4<f32>(v_44.xyz, r1.w);
      r4 = (r2.xyxy * vec4<f32>(-4.0f, -4.0f, 4.0f, 4.0f));
      r4 = fract(r4);
      let v_45 = max(r4.zw, r4.xy);
      let v_46 = r2;
      r2 = vec4<f32>(v_45.x, v_46.y, v_45.y, v_46.w);
      let v_47 = log2(r2.xz);
      let v_48 = r2;
      r2 = vec4<f32>(v_47.x, v_48.y, v_47.y, v_48.w);
      let v_49 = (r2.xz * vec2<f32>(64.0f));
      let v_50 = r2;
      r2 = vec4<f32>(v_49.x, v_50.y, v_49.y, v_50.w);
      let v_51 = exp2(r2.xz);
      let v_52 = r2;
      r2 = vec4<f32>(v_51.x, v_52.y, v_51.y, v_52.w);
      r1.w = dot(r2.xz, vec2<f32>(1.0f));
      r1.w = min(r1.w, 1.0f);
      r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x < r2.z)));
      r2.y = clamp(fma(r2.yyyy, vec4<f32>(2.0f), vec4<f32>(-0.5f)).y, 0.0f, 1.0f);
      let v_53 = bitcast<u32>(r2.x);
      r2.x = select(1.0f, r2.y, (v_53 != 0u));
      r2.x = (r1.w * r2.x);
      r1.w = ((-(r1.wwww)).w + 1.0f);
      let v_54 = fma(r1.xyz, r1.www, r2.xxx);
      r1 = vec4<f32>(v_54.xyz, r1.w);
      let v_55 = bitcast<vec3<u32>>(r3.xxx);
      let v_56 = r1.xyz;
      let v_57 = select(r3.yzw, v_56, (v_55 != vec3<u32>()));
      o0 = vec4<f32>(v_57.xyz, o0.w);
      r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
      o0.w = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
    } else {
      let v_58 = r0;
      o0 = vec4<f32>(v_58.xyz, o0.w);
      o0.w = 0.0f;
    }
  } else {
    o0 = r0;
  }
}

@fragment
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @builtin(position) v_59 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v0, v1, v2, v_59);
  return o0;
}
