diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb17_struct {
  tint_symbol_1 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb12_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb12_struct_1;

struct cb14_struct {
  tint_symbol_3 : array<vec4<f32>, 14u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb14_struct;

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb3_struct;

@group(0u) @binding(18u) var s2 : sampler;

@group(0u) @binding(34u) var t2 : texture_3d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v2 : vec4<f32>, v4 : vec2<f32>) {
  r0.x = dot(cb11_11.tint_symbol_2[5u].xyz, v0);
  r0.x = clamp(((r0.xxxx + cb11_11.tint_symbol_2[5u].wwww)).x, 0.0f, 1.0f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r0.y = clamp(((cb11_11.tint_symbol_2[4u].zzzz * cb12_12.tint_symbol_4[2u].zzzz)).y, 0.0f, 1.0f);
    r0.y = ((-(r0.yyyy)).y + 1.0f);
    r1.x = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[1u].w);
    r1.y = (cb2_2.tint_symbol_1[16u].x * cb11_11.tint_symbol_2[2u].w);
    let v = (r1.xy + v2.yy);
    r0 = vec4<f32>(r0.xy, v.xy);
    let v_1 = (r0.zw + cb11_11.tint_symbol_2[3u].ww);
    r0 = vec4<f32>(r0.xy, v_1.xy);
    let v_2 = fract(r0.zw);
    r0 = vec4<f32>(r0.xy, v_2.xy);
    let v_3 = (r0.zw + vec2<f32>(-0.5f));
    r0 = vec4<f32>(r0.xy, v_3.xy);
    let v_4 = fma((-(abs(r0.zzzw))).zw, vec2<f32>(2.0f), vec2<f32>(1.0f));
    r0 = vec4<f32>(r0.xy, v_4.xy);
    let v_5 = (r0.zw * r0.zw);
    r1 = vec4<f32>(v_5.xy, r1.zw);
    let v_6 = fma((-(r0.zzzw)).zw, vec2<f32>(2.0f), vec2<f32>(3.0f));
    r0 = vec4<f32>(r0.xy, v_6.xy);
    let v_7 = (r0.zw * r1.xy);
    r0 = vec4<f32>(r0.xy, v_7.xy);
    let v_8 = fma(r0.zw, vec2<f32>(2.0f), vec2<f32>(-1.0f));
    r0 = vec4<f32>(r0.xy, v_8.xy);
    let v_9 = ((-(r0.wzww)).xy + vec2<f32>(1.0f));
    r1 = vec4<f32>(v_9.xy, r1.zw);
    r1.z = (r1.x * r1.y);
    let v_10 = (r0.zw * r1.xy);
    r1 = vec4<f32>(v_10.xy, r1.zw);
    r0.z = (r0.w * r0.z);
    let v_11 = (r1.xxx * cb11_11.tint_symbol_2[1u].xyz);
    r2 = vec4<f32>(v_11.xyz, r2.w);
    let v_12 = fma(r1.zzz, cb11_11.tint_symbol_2[0u].xyz, r2.xyz);
    r1 = vec4<f32>(v_12.x, r1.y, v_12.yz);
    let v_13 = fma(r1.yyy, cb11_11.tint_symbol_2[2u].xyz, r1.xzw);
    r1 = vec4<f32>(v_13.xyz, r1.w);
    let v_14 = fma(r0.zzz, cb11_11.tint_symbol_2[3u].xyz, r1.xyz);
    r1 = vec4<f32>(v_14.xyz, r1.w);
    r0.z = ((-(cb11_11.tint_symbol_2[11u].zzzz)).z + 1.0f);
    let v_15 = (r1.xyz * cb11_11.tint_symbol_2[11u].zzz);
    r1 = vec4<f32>(v_15.xyz, r1.w);
    let v_16 = fma(r0.zzz, cb11_11.tint_symbol_2[0u].xyz, r1.xyz);
    r1 = vec4<f32>(v_16.xyz, r1.w);
    let v_17 = fma(cb11_11.tint_symbol_2[8u].xyz, cb2_2.tint_symbol_1[16u].xxx, v2.yyy);
    r2 = vec4<f32>(v_17.xyz, r2.w);
    let v_18 = (r2.xyz + cb11_11.tint_symbol_2[3u].www);
    r2 = vec4<f32>(v_18.xyz, r2.w);
    let v_19 = fract(r2.xyz);
    r2 = vec4<f32>(v_19.xyz, r2.w);
    let v_20 = (r2.xyz + vec3<f32>(-0.5f));
    r2 = vec4<f32>(v_20.xyz, r2.w);
    let v_21 = fma((-(abs(r2.xyzx))).xyz, vec3<f32>(2.0f), vec3<f32>(1.0f));
    r2 = vec4<f32>(v_21.xyz, r2.w);
    let v_22 = (r2.xyz * r2.xyz);
    r3 = vec4<f32>(v_22.xyz, r3.w);
    let v_23 = fma((-(r2.xyzx)).xyz, vec3<f32>(2.0f), vec3<f32>(3.0f));
    r2 = vec4<f32>(v_23.xyz, r2.w);
    let v_24 = (r2.xyz * r3.xyz);
    r2 = vec4<f32>(v_24.xyz, r2.w);
    r0.z = (r2.x + r2.x);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb11_11.tint_symbol_2[6u].w)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_25 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
      r2 = vec4<f32>(v_25.xyz, r2.w);
      let v_26 = fma(r2.xyz, cb11_11.tint_symbol_2[8u].www, v0);
      r2 = vec4<f32>(v_26.xyz, r2.w);
      let v_27 = -(cb11_11.tint_symbol_2[6u].xyzx);
      let v_28 = (r2.xyz + v_27.xyz);
      r2 = vec4<f32>(v_28.xyz, r2.w);
      let v_29 = (r2.xyz * cb11_11.tint_symbol_2[7u].xyz);
      r2 = vec4<f32>(v_29.xyz, r2.w);
      r2 = textureSampleLevel(t2, s2, r2.xyzx.xyz, 0.0f);
    } else {
      r2 = vec4<f32>(vec3<f32>(), r2.w);
    }
    r0.w = ((-(cb11_11.tint_symbol_2[9u].xxxx)).w + 1.0f);
    r0.z = (r0.z * cb11_11.tint_symbol_2[9u].x);
    r0.z = fma(r0.z, 0.5f, r0.w);
    let v_30 = (r2.xyz * r0.zzz);
    r2 = vec4<f32>(v_30.xyz, r2.w);
    let v_31 = (r2.xyz * cb11_11.tint_symbol_2[11u].yyy);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    let v_32 = fma(cb11_11.tint_symbol_2[11u].xxx, r1.xyz, r2.xyz);
    r1 = vec4<f32>(v_32.xyz, r1.w);
    r0.z = max(v2.z, v2.x);
    let v_33 = (r1.xyz * r0.zzz);
    r1 = vec4<f32>(v_33.xyz, r1.w);
    let v_34 = (r0.yyy * r1.xyz);
    r1 = vec4<f32>(v_34.xyz, r1.w);
    r2.x = dot(cb1_1.tint_symbol[0u].xyz, r1.xyz);
    r2.y = dot(cb1_1.tint_symbol[1u].xyz, r1.xyz);
    r2.z = dot(cb1_1.tint_symbol[2u].xyz, r1.xyz);
    let v_35 = (r2.xyz * cb11_11.tint_symbol_2[10u].yyy);
    r1 = vec4<f32>(v_35.xyz, r1.w);
    r0.z = dot(v0, v0);
    let v_36 = (abs(r1.xyzx).xyz + vec3<f32>(0.00100000004749745131f, 0.0f, 0.0f));
    r2 = vec4<f32>(v_36.xyz, r2.w);
    r0.w = dot(r2.xyz, r2.xyz);
    let v_37 = sqrt(r0.zw);
    r0 = vec4<f32>(r0.xy, v_37.xy);
    let v_38 = (r0.yy * cb11_11.tint_symbol_2[4u].xy);
    r2 = vec4<f32>(v_38.xy, r2.zw);
    r0.y = fma((-(cb11_11.tint_symbol_2[4u].xxxx)).y, r0.y, r0.w);
    r0.y = max(r0.y, 0.0f);
    r0.y = (r0.y / r2.y);
    r0.y = (r0.y * -1.44269502162933349609f);
    r0.y = exp2(r0.y);
    r0.y = ((-(r0.yyyy)).y + 1.0f);
    r0.y = fma(r2.y, r0.y, r2.x);
    r0.y = (r0.y / r0.w);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.x >= r0.w)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
    r1.w = ((-(r0.yyyy)).w + 1.0f);
    r0.y = fma(r1.w, r0.w, r0.y);
    let v_39 = fma(r1.xyz, r0.yyy, v0);
    r1 = vec4<f32>(v_39.xyz, r1.w);
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.y = (r0.z / r0.y);
    let v_40 = (r0.yyy * r1.xyz);
    r0 = vec4<f32>(r0.x, v_40.xyz);
  } else {
    r0 = vec4<f32>(r0.x, v0.xyz);
  }
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  let v_41 = (v2.xxz * cb12_12.tint_symbol_4[2u].xxy);
  r1 = vec4<f32>(r1.x, v_41.xyz);
  let v_42 = (r1.yzw * cb9_9.tint_symbol_3[13u].xxy);
  r1 = vec4<f32>(r1.x, v_42.xyz);
  r2.x = (v2.y + cb9_9.tint_symbol_3[0u].w);
  r2.x = (abs(r2.xxxx).x * 6.28318500518798828125f);
  let v_43 = (cb9_9.tint_symbol_3[13u].zzw * cb12_12.tint_symbol_4[2u].zzw);
  r2 = vec4<f32>(r2.x, v_43.xyz);
  let v_44 = fma(cb2_2.tint_symbol_1[16u].xxx, r2.yzw, r2.xxx);
  r2 = vec4<f32>(v_44.xyz, r2.w);
  let v_45 = sin(r2.xyzx.xyz);
  r2 = vec4<f32>(v_45.xyz, r2.w);
  let v_46 = fma(r2.xyz, r1.yzw, v0);
  r1 = vec4<f32>(r1.x, v_46.xyz);
  let v_47 = bitcast<vec3<u32>>(r1.xxx);
  let v_48 = select(v0, r1.yzw, (v_47 != vec3<u32>()));
  r1 = vec4<f32>(v_48.xyz, r1.w);
  r1.w = ((-(r0.xxxx)).w + 1.0f);
  let v_49 = (r0.yzw * r0.xxx);
  r0 = vec4<f32>(v_49.xyz, r0.w);
  let v_50 = fma(r1.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_50.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v4.xyxy;
}

struct tint_symbol_5 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec2<f32>) -> tint_symbol_5 {
  main_inner(v0, v2, v4);
  return tint_symbol_5(o0, o1);
}
