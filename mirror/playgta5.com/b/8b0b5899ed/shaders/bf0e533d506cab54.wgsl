diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb12_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_3d<f32>;

@group(1u) @binding(38u) var t6 : texture_cube<f32>;

@group(1u) @binding(40u) var t8 : texture_2d_array<f32>;

@group(1u) @binding(42u) var t10 : texture_cube_array<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  let v = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb12_12.tint_symbol[5u].yy == vec2<f32>(2.0f, 5.0f))));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.z = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol[7u].z < 0.0f)));
    let v_1 = cb12_12.tint_symbol[7u].z;
    let v_2 = max(v_1, -2147483648.0f);
    r1.x = bitcast<f32>(select(select(i32(v_2), 2147483647i, (v_2 >= 2147483648.0f)), 0i, !((v_1 == v_1))));
    r1.x = bitcast<f32>(-(bitcast<i32>(r1.x)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 1i)));
      if ((bitcast<u32>(r2.w) != 0u)) {
        r3 = (v2.xy.xyyx * vec4<f32>(4.0f, 3.0f, 3.0f, 4.0f));
        let v_3 = fract(r3.wz);
        r4 = vec4<f32>(v_3.xy, r4.zw);
        let v_4 = fma(r4.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
        r4 = vec4<f32>(v_4.xy, r4.zw);
        r3 = floor(r3);
        let v_5 = r3;
        let v_6 = max(v_5, vec4<f32>(-2147483648.0f));
        r3 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_6), vec4<i32>(2147483647i), (v_6 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_5 == v_5))));
        let v_7 = (-(r4.xyxx)).xy;
        r5 = vec4<f32>(v_7.xy, r5.zw);
        r5.z = -1.0f;
        let v_8 = bitcast<vec3<u32>>(r3.zzz);
        let v_9 = select(r5.xyz, vec3<f32>(), (v_8 != vec3<u32>()));
        r6 = vec4<f32>(v_9.xyz, r6.w);
        r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (bitcast<vec4<i32>>(r3) == vec4<i32>(1i, 1i, 2i, 2i))));
        r5.w = r4.y;
        let v_10 = bitcast<vec3<u32>>(r7.yyy);
        let v_11 = r5.xzw;
        let v_12 = select(r6.xyz, v_11, (v_10 != vec3<u32>()));
        r3 = vec4<f32>(v_12.xyz, r3.w);
        let v_13 = r5;
        let v_14 = r6;
        r6 = vec4<f32>(v_14.x, v_13.xw, v_14.w);
        r6.x = 1.0f;
        let v_15 = bitcast<vec3<u32>>(r7.zzz);
        let v_16 = r6.yzx;
        let v_17 = select(r3.xyz, v_16, (v_15 != vec3<u32>()));
        r3 = vec4<f32>(v_17.xyz, r3.w);
        let v_18 = bitcast<vec3<u32>>(r3.www);
        let v_19 = select(r6.xyz, vec3<f32>(), (v_18 != vec3<u32>()));
        r6 = vec4<f32>(v_19.xyz, r6.w);
        let v_20 = r5;
        r4 = vec4<f32>(r4.xy, v_20.wz);
        let v_21 = bitcast<vec3<u32>>(r7.www);
        let v_22 = r4.wxz;
        let v_23 = select(r6.xyz, v_22, (v_21 != vec3<u32>()));
        r5 = vec4<f32>(v_23.xyz, r5.w);
        r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.w) == 3i)));
        r4.y = 1.0f;
        let v_24 = bitcast<vec3<u32>>(r2.www);
        let v_25 = r4.xyz;
        let v_26 = select(r5.xyz, v_25, (v_24 != vec3<u32>()));
        r4 = vec4<f32>(v_26.xyz, r4.w);
        let v_27 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.xyz) & bitcast<vec3<u32>>(r7.yyy)));
        r4 = vec4<f32>(v_27.xyz, r4.w);
        let v_28 = bitcast<vec3<u32>>(r7.xxx);
        let v_29 = r3.xyz;
        let v_30 = select(r4.xyz, v_29, (v_28 != vec3<u32>()));
        r1 = vec4<f32>(v_30.xyz, r1.w);
        let v_31 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r1.xyz == vec3<f32>())));
        r3 = vec4<f32>(v_31.xyz, r3.w);
        r2.w = bitcast<f32>((bitcast<u32>(r3.y) & bitcast<u32>(r3.x)));
        r1.w = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r2.w)));
        r2 = vec4<f32>(vec3<f32>(), r2.w);
      } else {
        r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 2i)));
        if ((bitcast<u32>(r2.w) != 0u)) {
          r2.w = (v2.x + -0.25f);
          r2.w = (r2.w * -6.28318500518798828125f);
          let v_32 = r2.wwww;
          r3.x = sin(v_32.x);
          r4.x = cos(v_32.x);
          r2.w = fma(v2.y, 2.0f, -1.0f);
          r2.w = (r2.w * 1.57079625129699707031f);
          let v_33 = r2.wwww;
          r5.x = sin(v_33.x);
          r6.x = cos(v_33.x);
          r1.x = (r4.x * r6.x);
          r1.y = (r3.x * r6.x);
          r1.z = r5.x;
          r1.w = 0.0f;
        } else {
          r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 3i)));
          if ((bitcast<u32>(r2.w) != 0u)) {
            r3 = vec4<f32>(((v2.xy + vec2<f32>(-0.25f, -0.5f))).xy, r3.zw);
            r2.w = (r3.x * -6.28318500518798828125f);
            let v_34 = r2.wwww;
            r3.x = sin(v_34.x);
            r4.x = cos(v_34.x);
            r1.x = (r4.x * cb12_12.tint_symbol[8u].x);
            let v_35 = (r3.xy * cb12_12.tint_symbol[8u].xy);
            let v_36 = r1;
            r1 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
            r1.w = 0.0f;
          } else {
            r2.w = floor(cb12_12.tint_symbol[7u].z);
            r2.w = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol[7u].z == r2.w))));
            let v_37 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (bitcast<vec3<i32>>(r0.www) == vec3<i32>(4i, 5i, 6i))));
            r3 = vec4<f32>(v_37.xyz, r3.w);
            r3.y = bitcast<f32>((bitcast<u32>(r3.y) | bitcast<u32>(r3.x)));
            r3.y = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r3.y)));
            if ((bitcast<u32>(r3.y) != 0u)) {
              let v_38 = fma(v2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
              let v_39 = r3;
              r3 = vec4<f32>(v_39.x, v_38.x, v_39.z, v_38.y);
              let v_40 = (r3.yw * r3.yw);
              r4 = vec4<f32>(v_40.xy, r4.zw);
              r4.z = max(r4.y, r4.x);
              r4.x = (r4.y + r4.x);
              let v_41 = bitcast<u32>(r3.z);
              let v_42 = r4.z;
              r3.z = select(r4.x, v_42, (v_41 != 0u));
              r4.x = bitcast<f32>(select(0u, 4294967295u, (1.0f < r3.z)));
              r1.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r4.x)));
              r4.x = fma((-(r3.zzzz)).x, 2.0f, 1.0f);
              r4.y = sqrt(r3.z);
              r4.y = (r4.y * 3.14159250259399414062f);
              r4.y = cos(r4.yyyy.y);
              let v_43 = bitcast<u32>(r3.x);
              let v_44 = r4.x;
              r3.x = select(r4.y, v_44, (v_43 != 0u));
              r4.y = (-(r3.xxxx)).y;
              r3.x = fma((-(r3.xxxx)).x, r3.x, 1.0f);
              r3.x = (abs(r3.xxxx).x / r3.z);
              r3.x = sqrt(r3.x);
              let v_45 = -(r3.yyyy);
              r4.x = (r3.x * v_45.x);
              r4.z = (r3.x * r3.w);
              let v_46 = bitcast<vec3<u32>>(r1.www);
              let v_47 = select(r4.xyz, vec3<f32>(), (v_46 != vec3<u32>()));
              r1 = vec4<f32>(v_47.xyz, r1.w);
            } else {
              let v_48 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r0.ww) == vec2<i32>(7i, 8i))));
              r3 = vec4<f32>(v_48.xy, r3.zw);
              r0.w = bitcast<f32>((bitcast<u32>(r3.y) | bitcast<u32>(r3.x)));
              r3.x = (v2.x + v2.x);
              r3.x = fract(r3.x);
              r4.x = fma(r3.x, 2.0f, -1.0f);
              r3.x = fma(v2.y, 2.0f, -1.0f);
              let v_49 = abs(r3.xxxx);
              r3.z = max(v_49.z, abs(r4.xxxx).z);
              r3.x = (r3.x * r3.x);
              r3.x = fma(r4.x, r4.x, r3.x);
              r3.x = sqrt(r3.x);
              let v_50 = bitcast<u32>(r3.y);
              let v_51 = r3.z;
              r3.x = select(r3.x, v_51, (v_50 != 0u));
              r3.y = bitcast<f32>(select(0u, 4294967295u, (1.0f < r3.x)));
              r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.y)));
              r4.y = ((-(r3.xxxx)).y + 1.0f);
              r3.x = bitcast<f32>(select(0u, 4294967295u, (v2.x < 0.5f)));
              let v_52 = (r4.xy * vec2<f32>(-2.0f, -1.0f));
              let v_53 = r3;
              r3 = vec4<f32>(v_53.x, v_52.xy, v_53.w);
              r4.z = (r4.x * 2.0f);
              let v_54 = bitcast<vec2<u32>>(r3.xx);
              let v_55 = r3.yz;
              let v_56 = select(r4.zy, v_55, (v_54 != vec2<u32>()));
              r3 = vec4<f32>(v_56.xy, r3.zw);
              r3.z = fma(v2.y, 4.0f, -2.0f);
              let v_57 = bitcast<vec3<u32>>(r2.www);
              let v_58 = select(r3.xyz, vec3<f32>(), (v_57 != vec3<u32>()));
              r3 = vec4<f32>(v_58.xyz, r3.w);
              let v_59 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.www) & bitcast<vec3<u32>>(r3.xyz)));
              r1 = vec4<f32>(v_59.xyz, r1.w);
              r1.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r2.w)));
            }
            r2 = vec4<f32>(vec3<f32>(), r2.w);
          }
        }
      }
    } else {
      let v_60 = fma(v2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
      r1 = vec4<f32>(v_60.xy, r1.zw);
      r2.x = cb12_12.tint_symbol[7u].z;
      r2.z = 1.0f;
      let v_61 = (r1.xy * r2.xz);
      r1 = vec4<f32>(v_61.xy, r1.zw);
      r2.x = -1.0f;
      r2.z = cb12_12.tint_symbol[7u].z;
      let v_62 = (r1.xy * r2.xz);
      let v_63 = r1;
      r1 = vec4<f32>(v_62.x, v_63.y, v_62.y, v_63.w);
      let v_64 = r1;
      r1 = vec4<f32>(v_64.x, -1.0f, v_64.z, 0.0f);
    }
    let v_65 = bitcast<vec3<u32>>(r1.www);
    let v_66 = r2.xyz;
    let v_67 = select(r1.xyz, v_66, (v_65 != vec3<u32>()));
    r1 = vec4<f32>(v_67.xyz, r1.w);
    r2.x = dot(cb12_12.tint_symbol[9u].xyz, r1.xyz);
    r2.y = dot(cb12_12.tint_symbol[10u].xyz, r1.xyz);
    r2.z = dot(cb12_12.tint_symbol[11u].xyz, r1.xyz);
    let v_68 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz == vec3<f32>())));
    r1 = vec4<f32>(v_68.xyz, r1.w);
    r0.w = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
    r0.w = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r0.w)));
    r1 = vec4<f32>(vec2<f32>(), r1.zw);
  } else {
    r2 = vec4<f32>(vec3<f32>(), r2.w);
    r0.w = 0.0f;
  }
  let v_69 = textureSample(t6, s6, r2.xyzx.xyz).xy;
  r1 = vec4<f32>(r1.xy, v_69.xy);
  if ((bitcast<u32>(r0.w) != 0u)) {
  } else {
    r3.z = trunc(cb12_12.tint_symbol[5u].z);
    r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb12_12.tint_symbol[5u].yyyx == vec4<f32>(0.0f, 1.0f, 3.0f, -1.0f))));
    if ((bitcast<u32>(r4.x) != 0u)) {
      let v_70 = textureSampleLevel(t2, s2, v2.xy.xyxx.xy, cb12_12.tint_symbol[5u].x).xy;
      r5 = vec4<f32>(v_70.xy, r5.zw);
    } else {
      r5 = vec4<f32>(vec2<f32>(), r5.zw);
    }
    if ((bitcast<u32>(r4.y) != 0u)) {
      let v_71 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb12_12.tint_symbol[7u].zz == vec2<f32>(1.0f, 2.0f))));
      r4 = vec4<f32>(v_71.xy, r4.zw);
      r6.x = cb12_12.tint_symbol[5u].w;
      let v_72 = r6;
      r6 = vec4<f32>(v_72.x, v2.xy.xy, v_72.w);
      let v_73 = bitcast<vec2<u32>>(r4.xx);
      let v_74 = r6.xy;
      let v_75 = select(r6.yx, v_74, (v_73 != vec2<u32>()));
      r6 = vec4<f32>(v_75.xy, r6.zw);
      let v_76 = bitcast<vec2<u32>>(r4.yy);
      let v_77 = r6.yz;
      let v_78 = select(r6.zy, v_77, (v_76 != vec2<u32>()));
      let v_79 = r6;
      r6 = vec4<f32>(v_79.x, v_78.xy, v_79.w);
      let v_80 = cb12_12.tint_symbol[5u].x;
      let v_81 = textureSampleLevel(t4, s4, r6.xyzx.xyz, v_80).xy;
      r5 = vec4<f32>(v_81.xy, r5.zw);
    }
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_82 = cb12_12.tint_symbol[5u].x;
      let v_83 = textureSampleLevel(t6, s6, r2.xyzx.xyz, v_82).xy;
      r5 = vec4<f32>(v_83.xy, r5.zw);
    }
    if ((bitcast<u32>(r4.z) != 0u)) {
      r3 = vec4<f32>(v2.xy.xy, r3.zw);
      let v_84 = cb12_12.tint_symbol[5u].x;
      let v_85 = r3.xyzx;
      let v_86 = textureSampleLevel(t8, s8, v_85.xy, i32(v_85.z), v_84).xy;
      r5 = vec4<f32>(v_86.xy, r5.zw);
    }
    if ((bitcast<u32>(r0.y) != 0u)) {
      r2.w = r3.z;
      let v_87 = cb12_12.tint_symbol[5u].x;
      let v_88 = r2;
      let v_89 = textureSampleLevel(t10, s10, v_88.xyz, i32(v_88.w), v_87).xy;
      r1 = vec4<f32>(v_89.xy, r1.zw);
    } else {
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol[5u].y == 4.0f)));
      let v_90 = bitcast<vec2<u32>>(r0.yy);
      let v_91 = select(r5.xy, vec2<f32>(), (v_90 != vec2<u32>()));
      r1 = vec4<f32>(v_91.xy, r1.zw);
    }
    r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r4.w)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_92 = r1;
      r1 = vec4<f32>(v_92.zw, r1.zw);
    }
    if ((bitcast<u32>(r0.z) != 0u)) {
      r0.x = dot(r2.xyz, r2.xyz);
      r0.x = inverseSqrt(r0.x);
      let v_93 = (r0.xxx * r2.xyz);
      r0 = vec4<f32>(v_93.xyz, r0.w);
      let v_94 = ((-(r1.xxxy)).zw + vec2<f32>(1.0f, 0.0f));
      r1 = vec4<f32>(r1.xy, v_94.xy);
      let v_95 = (r1.zw * cb12_12.tint_symbol[7u].ww);
      r1 = vec4<f32>(r1.xy, v_95.xy);
      let v_96 = max(r0.xyz, vec3<f32>());
      r2 = vec4<f32>(v_96.xyz, r2.w);
      let v_97 = log2(r2.xyz);
      r2 = vec4<f32>(v_97.xyz, r2.w);
      let v_98 = (r2.xyz * vec3<f32>(32.0f));
      r2 = vec4<f32>(v_98.xyz, r2.w);
      let v_99 = exp2(r2.xyz);
      r2 = vec4<f32>(v_99.xyz, r2.w);
      let v_100 = (r2.xyz * vec3<f32>(1.5f));
      r2 = vec4<f32>(v_100.xyz, r2.w);
      let v_101 = min(r2.xyz, vec3<f32>(1.0f));
      r2 = vec4<f32>(v_101.xyz, r2.w);
      let v_102 = fma(r1.zw, r2.xx, r1.xy);
      r1 = vec4<f32>(r1.xy, v_102.xy);
      let v_103 = ((-(r1.zzzw)).xw + vec2<f32>(0.0f, 1.0f));
      r2 = vec4<f32>(v_103.x, r2.yz, v_103.y);
      let v_104 = (r2.xw * cb12_12.tint_symbol[7u].ww);
      r2 = vec4<f32>(v_104.x, r2.yz, v_104.y);
      let v_105 = fma(r2.xw, r2.yy, r1.zw);
      r1 = vec4<f32>(r1.xy, v_105.xy);
      let v_106 = ((-(r1.zwzz)).xy * cb12_12.tint_symbol[7u].ww);
      r2 = vec4<f32>(v_106.xy, r2.zw);
      let v_107 = fma(r2.xy, r2.zz, r1.zw);
      r1 = vec4<f32>(r1.xy, v_107.xy);
      let v_108 = ((-(r1.zwzz)).xy + vec2<f32>(0.0f, 1.0f));
      r2 = vec4<f32>(v_108.xy, r2.zw);
      let v_109 = (r2.xy * cb12_12.tint_symbol[7u].ww);
      r2 = vec4<f32>(v_109.xy, r2.zw);
      let v_110 = max((-(r0.xyzx)).xyz, vec3<f32>());
      r0 = vec4<f32>(v_110.xyz, r0.w);
      let v_111 = log2(r0.xyz);
      r0 = vec4<f32>(v_111.xyz, r0.w);
      let v_112 = (r0.xyz * vec3<f32>(32.0f));
      r0 = vec4<f32>(v_112.xyz, r0.w);
      let v_113 = exp2(r0.xyz);
      r0 = vec4<f32>(v_113.xyz, r0.w);
      let v_114 = (r0.xyz * vec3<f32>(1.5f));
      r0 = vec4<f32>(v_114.xyz, r0.w);
      let v_115 = min(r0.xyz, vec3<f32>(1.0f));
      r0 = vec4<f32>(v_115.xyz, r0.w);
      let v_116 = fma(r2.xy, r0.xx, r1.zw);
      r0 = vec4<f32>(v_116.x, r0.yz, v_116.y);
      let v_117 = ((-(r0.xxxw)).zw + vec2<f32>(1.0f));
      r1 = vec4<f32>(r1.xy, v_117.xy);
      let v_118 = (r1.zw * cb12_12.tint_symbol[7u].ww);
      r1 = vec4<f32>(r1.xy, v_118.xy);
      let v_119 = fma(r1.zw, r0.yy, r0.xw);
      r0 = vec4<f32>(v_119.xy, r0.zw);
      let v_120 = ((-(r0.xxxy)).zw + vec2<f32>(1.0f, 0.0f));
      r1 = vec4<f32>(r1.xy, v_120.xy);
      let v_121 = (r1.zw * cb12_12.tint_symbol[7u].ww);
      r1 = vec4<f32>(r1.xy, v_121.xy);
      let v_122 = fma(r1.zw, r0.zz, r0.xy);
      r1 = vec4<f32>(v_122.xy, r1.zw);
    }
  }
  r0 = fma(r1.xxyy, vec4<f32>(2.0f), vec4<f32>(-1.0f));
  r1.x = dot(r0.yw, r0.yw);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.x = sqrt(abs(r1.xxxx).x);
  r1.y = max(cb12_12.tint_symbol[6u].w, 0.00100000004749745131f);
  r0 = (r0 * r1.yyyy);
  r0 = (r0 * vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let v_123 = (r0.zwz + r0.xyy);
  r0 = vec4<f32>(v_123.xyz, r0.w);
  let v_124 = fma(r1.xxx, vec3<f32>(0.0f, 0.0f, 1.0f), r0.xyz);
  r0 = vec4<f32>(v_124.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_125 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_125.xyz, r0.w);
  let v_126 = fma(v2.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r1 = vec4<f32>(v_126.xy, r1.zw);
  let v_127 = -(cb12_12.tint_symbol[6u].xyxx);
  let v_128 = (r1.xy + v_127.xy);
  r1 = vec4<f32>(v_128.xy, r1.zw);
  r1.z = cb12_12.tint_symbol[6u].z;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_129 = (r0.www * r1.xyz);
  r1 = vec4<f32>(v_129.xyz, r1.w);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol[7u].x);
  r0.x = exp2(r0.x);
  r0.y = (cb12_12.tint_symbol[7u].x * 8.0f);
  r0.z = log2(r1.z);
  r0.y = (r0.z * r0.y);
  r0.y = exp2(r0.y);
  let v_130 = (r0.yyy * vec3<f32>(0.0f, 1.0f, 1.0f));
  r0 = vec4<f32>(r0.x, v_130.xyz);
  let v_131 = -(r0.yzwy);
  let v_132 = fma(r0.xxx, cb12_12.tint_symbol[7u].yyy, v_131.xyz);
  r0 = vec4<f32>(v_132.xyz, r0.w);
  let v_133 = max(r0.xyz, vec3<f32>());
  o0 = vec4<f32>(v_133.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
