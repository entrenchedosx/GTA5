diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

struct cb4_struct {
  tint_symbol_2 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t0, s0, v2.xyxx.xy);
  r0.x = (r0.w * cb2_2.tint_symbol[15u].x);
  let v_2 = -(cb5_5.tint_symbol_1[4u].xxxx);
  r0.y = fma(r0.w, cb2_2.tint_symbol[15u].x, v_2.y);
  r0.z = (v_2.z + 1.0f);
  r0.z = (r0.z * 0.10000000149011611938f);
  r0.y = (r0.y / r0.z);
  r0.y = fma((-(r0.wwww)).y, cb2_2.tint_symbol[15u].x, r0.y);
  r0.x = fma(cb12_12.tint_symbol_2[3u].y, r0.y, r0.x);
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yx < vec2<f32>(0.5f, 1.0f))));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0039215688593685627f >= r0.x)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
  v_5((bitcast<u32>(r0.y) != 0u));
  let v_6 = clamp(v2.zw, vec2<f32>(), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb2_2.tint_symbol[2u].xy == vec2<f32>(1.0f))));
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  if ((bitcast<u32>(r0.y) != 0u)) {
    r2 = v2.xyxy;
    let v_9 = r0;
    r0 = vec4<f32>(v_9.x, v2.x, v_9.z, v2.y);
  } else {
    r0.w = ((-(r1.xxxx)).w + 1.0f);
    r2.x = ((-(v2.wwww)).x + 1.0f);
    r2.x = max(r2.x, 0.10000000149011611938f);
    r2.x = min(r2.x, 1.0f);
    r3.x = dot(v5.xyz, v4.xyz);
    r3.y = dot(v6.xyz, v4.xyz);
    r3.z = dot(v3.xyz, v4.xyz);
    r2.y = dot(r3.xyz, r3.xyz);
    r2.y = inverseSqrt(r2.y);
    let v_10 = (r2.yyy * r3.xyz);
    r2 = vec4<f32>(r2.x, v_10.xyz);
    r2.x = max(r2.w, r2.x);
    r2.w = dot(v4.xyz, v4.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_11 = (r2.www * v4.xyz);
    r3 = vec4<f32>(v_11.xyz, r3.w);
    r2.w = dot(v3.xyz, v3.xyz);
    r2.w = inverseSqrt(r2.w);
    let v_12 = (r2.www * v3.xyz);
    r4 = vec4<f32>(v_12.xyz, r4.w);
    r2.w = dot(r3.xyz, r4.xyz);
    r3.x = ((-(cb2_2.tint_symbol[3u].wwww)).x + cb2_2.tint_symbol[3u].z);
    r3.x = fma(abs(r2.wwww).x, r3.x, cb2_2.tint_symbol[3u].w);
    r0.w = (r0.w * cb2_2.tint_symbol[1u].x);
    r3.y = clamp(((r3.xxxx + vec4<f32>(-1.0f))).y, 0.0f, 1.0f);
    r0.w = (r0.w * r3.y);
    r2.w = clamp(((abs(r2.wwww) * vec4<f32>(4.0f))).w, 0.0f, 1.0f);
    r0.w = (r0.w * r2.w);
    let v_13 = ((-(r2.yyzy)).yz / r2.xx);
    let v_14 = r3;
    r3 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
    let v_15 = (r3.yz * cb12_12.tint_symbol_2[2u].xx);
    let v_16 = r3;
    r3 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
    let v_17 = (r0.ww * r3.yz);
    let v_18 = r3;
    r3 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
    let v_19 = (r2.yz / r2.xx);
    r2 = vec4<f32>(v_19.xy, r2.zw);
    let v_20 = (r2.xy * cb12_12.tint_symbol_2[2u].yy);
    r2 = vec4<f32>(v_20.xy, r2.zw);
    let v_21 = (r0.ww * r2.xy);
    r2 = vec4<f32>(v_21.xy, r2.zw);
    let v_22 = r3.x;
    let v_23 = max(v_22, -2147483648.0f);
    r0.w = bitcast<f32>(select(select(i32(v_23), 2147483647i, (v_23 >= 2147483648.0f)), 0i, !((v_22 == v_22))));
    r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 0i)));
    r0.y = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r2.z)));
    if ((bitcast<u32>(r0.y) != 0u)) {
      r0.y = 0.0f;
    } else {
      r0.y = trunc(r3.x);
      r0.y = (1.0f / r0.y);
      let v_24 = dpdx(v2.xy);
      r2 = vec4<f32>(r2.xy, v_24.xy);
      let v_25 = dpdy(v2.xy);
      r3 = vec4<f32>(v_25.x, r3.yz, v_25.y);
      r4 = textureSampleGrad(t2, s2, v2.xyxx.xy, r2.zw, r3.xw);
      r4.x = (r4.x + 0.00000099999999747524f);
      let v_26 = r2;
      let v_27 = r4;
      r4 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
      r4.w = 1.0f;
      let v_28 = r4;
      let v_29 = r5;
      r5 = vec4<f32>(v_29.x, v_28.xx, v_29.w);
      r5 = vec4<f32>(1.0f, r5.yz, 0.0f);
      loop {
        r6.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.w) >= bitcast<i32>(r0.w))));
        if ((bitcast<u32>(r6.x) != 0u)) {
          break;
        }
        r6.x = bitcast<f32>(select(0u, 4294967295u, (r5.y < r4.w)));
        if ((bitcast<u32>(r6.x) != 0u)) {
          r6.x = ((-(r0.yyyy)).x + r4.w);
          let v_30 = fma(r3.yz, r0.yy, r4.yz);
          let v_31 = r4;
          r4 = vec4<f32>(v_31.x, v_30.xy, v_31.w);
          let v_32 = (r4.yz + v2.xy);
          let v_33 = r6;
          r6 = vec4<f32>(v_33.x, v_32.xy, v_33.w);
          let v_34 = r2.zw;
          let v_35 = r3.xw;
          r7 = textureSampleGrad(t2, s2, r6.yzyy.xy, v_34, v_35);
          r5.x = r4.w;
          let v_36 = r5;
          r5 = vec4<f32>(r5.xy, v_36.yw);
          r4.w = r6.x;
          r5.y = r7.x;
        } else {
          r5.w = r0.w;
        }
        r5.w = bitcast<f32>((bitcast<i32>(r5.w) + 1i));
      }
      let v_37 = -(r5.yyyy);
      r0.y = (r4.w + v_37.y);
      r0.w = ((-(r5.zzzz)).w + r5.x);
      r2.z = ((-(r0.yyyy)).z + r0.w);
      r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
      r0.y = (r0.y * r5.x);
      let v_38 = -(r0.yyyy);
      r0.y = fma(r4.w, r0.w, v_38.y);
      r0.y = (r0.y / r2.z);
      let v_39 = bitcast<vec4<u32>>(r2.wwww);
      let v_40 = r0.yyyy;
      r0.y = clamp(select(r5.yyyy, v_40, (v_39 != vec4<u32>())).y, 0.0f, 1.0f);
    }
    r0.y = ((-(r0.yyyy)).y + 1.0f);
    let v_41 = fma(r3.yz, r0.yy, r2.xy);
    let v_42 = r0;
    r0 = vec4<f32>(v_42.x, v_41.x, v_42.z, v_41.y);
    let v_43 = (r0.yw + v2.xy);
    let v_44 = r0;
    r0 = vec4<f32>(v_44.x, v_43.x, v_44.z, v_43.y);
    r2 = r0.ywyw;
  }
  r3 = textureSample(t0, s0, r2.xyxx.xy);
  r4 = textureSample(t3, s3, r0.ywyy.xy);
  let v_45 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_46 = r0;
  r0 = vec4<f32>(v_46.x, v_45.x, v_46.z, v_45.y);
  r2.x = dot(r0.yw, r0.yw);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r2.x = sqrt(abs(r2.xxxx).x);
  r2.y = max(cb12_12.tint_symbol_2[1u].w, 0.00100000004749745131f);
  let v_47 = (r0.yw * r2.yy);
  let v_48 = r0;
  r0 = vec4<f32>(v_48.x, v_47.x, v_48.z, v_47.y);
  let v_49 = (r0.www * v6.xyz);
  r4 = vec4<f32>(v_49.xyz, r4.w);
  let v_50 = fma(r0.yyy, v5.xyz, r4.xyz);
  r4 = vec4<f32>(v_50.xyz, r4.w);
  let v_51 = fma(r2.xxx, v3.xyz, r4.xyz);
  r4 = vec4<f32>(v_51.xyz, r4.w);
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_52 = (r0.yyy * r4.xyz);
  r4 = vec4<f32>(v_52.xy, r4.z, v_52.z);
  r2 = textureSample(t4, s4, r2.zwzz.xy);
  let v_53 = (r2.xy * r2.xy);
  r2 = vec4<f32>(v_53.xy, r2.zw);
  r0.w = dot(r2.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r2.x = (r0.w * cb12_12.tint_symbol_2[0u].z);
  r2.w = (r2.w * cb12_12.tint_symbol_2[0u].y);
  r1.z = ((-(r1.yyyy)).z + 1.0f);
  r1.w = 0.0f;
  let v_54 = bitcast<vec3<u32>>(r0.zzz);
  let v_55 = r1.xzw;
  let v_56 = select(r3.xyz, v_55, (v_54 != vec3<u32>()));
  r1 = vec4<f32>(v_56.xyz, r1.w);
  r0.z = (r3.w * v1.w);
  r1.w = (v1.x * cb2_2.tint_symbol[15u].z);
  r0.z = (r0.z * cb2_2.tint_symbol[15u].x);
  let v_57 = fma(r4.xyw, vec3<f32>(0.5f), vec3<f32>(0.5f));
  o1 = vec4<f32>(v_57.xyz, o1.w);
  r2.y = (r2.w * 0.001953125f);
  r0.y = fma(r4.z, r0.y, -0.34999999403953552246f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(1.53846156597137451172f))).y, 0.0f, 1.0f);
  r0.y = (r0.y * cb5_5.tint_symbol_1[3u].z);
  r2.w = ((-(cb2_2.tint_symbol[16u].zzzz)).w + 1.0f);
  r0.y = (r0.y * r2.w);
  r0.y = (r1.w * r0.y);
  r1.w = fma((-(r2.xxxx)).w, 0.5f, 1.0f);
  r1.w = (r0.y * r1.w);
  r0.y = (r0.y * cb12_12.tint_symbol_2[2u].w);
  r1.w = fma(r1.w, -0.5f, 1.0f);
  let v_58 = (r1.www * r1.xyz);
  o0 = vec4<f32>(v_58.xyz, o0.w);
  r0.w = clamp(fma(r0.wwww, cb12_12.tint_symbol_2[0u].zzzz, vec4<f32>(0.69999998807907104492f)).w, 0.0f, 1.0f);
  let v_59 = (r0.ww * vec2<f32>(0.5f, 0.48828125f));
  r1 = vec4<f32>(v_59.xy, r1.zw);
  r2.z = cb12_12.tint_symbol_2[0u].x;
  r1.z = 0.97000002861022949219f;
  let v_60 = -(r2.xyzx);
  let v_61 = (r1.xyz + v_60.xyz);
  r1 = vec4<f32>(v_61.xyz, r1.w);
  let v_62 = max(r1.xyz, vec3<f32>());
  r1 = vec4<f32>(v_62.xyz, r1.w);
  let v_63 = fma(r1.xyz, r0.yyy, r2.xyz);
  r1 = vec4<f32>(v_63.xyz, r1.w);
  let v_64 = sqrt(r1.xy);
  o2 = vec4<f32>(v_64.xy, o2.zw);
  o0.w = r0.x;
  o1.w = r0.z;
  o2.z = r1.z;
  o2.w = r0.z;
  o3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

fn v_5(v_65 : bool) {
  if (v_65) {
    discard;
    return;
  }
}

struct tint_symbol_3 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@fragment
fn main(@builtin(position) v_66 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v_66, v1, v2, v3, v4, v5, v6);
  return tint_symbol_3(o0, o1, o2, o3);
}
