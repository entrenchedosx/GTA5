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

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
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
    r1 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.30000001192092895508f);
  } else {
    r2 = vec4<f32>(vec3<f32>(), r2.w);
    r0.w = 0.0f;
  }
  r3 = textureSample(t6, s6, r2.xyzx.xyz);
  if ((bitcast<u32>(r0.w) != 0u)) {
  } else {
    r4.z = trunc(cb12_12.tint_symbol[5u].z);
    r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb12_12.tint_symbol[5u].yyyx == vec4<f32>(0.0f, 1.0f, 3.0f, -1.0f))));
    if ((bitcast<u32>(r5.x) != 0u)) {
      r6 = textureSampleLevel(t2, s2, v2.xy.xyxx.xy, cb12_12.tint_symbol[5u].x);
    } else {
      r6 = vec4<f32>();
    }
    if ((bitcast<u32>(r5.y) != 0u)) {
      let v_69 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb12_12.tint_symbol[7u].zz == vec2<f32>(1.0f, 2.0f))));
      r5 = vec4<f32>(v_69.xy, r5.zw);
      r7.x = cb12_12.tint_symbol[5u].w;
      let v_70 = r7;
      r7 = vec4<f32>(v_70.x, v2.xy.xy, v_70.w);
      let v_71 = bitcast<vec2<u32>>(r5.xx);
      let v_72 = r7.xy;
      let v_73 = select(r7.yx, v_72, (v_71 != vec2<u32>()));
      r7 = vec4<f32>(v_73.xy, r7.zw);
      let v_74 = bitcast<vec2<u32>>(r5.yy);
      let v_75 = r7.yz;
      let v_76 = select(r7.zy, v_75, (v_74 != vec2<u32>()));
      let v_77 = r7;
      r7 = vec4<f32>(v_77.x, v_76.xy, v_77.w);
      let v_78 = cb12_12.tint_symbol[5u].x;
      r6 = textureSampleLevel(t4, s4, r7.xyzx.xyz, v_78);
    }
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_79 = cb12_12.tint_symbol[5u].x;
      r6 = textureSampleLevel(t6, s6, r2.xyzx.xyz, v_79);
    }
    if ((bitcast<u32>(r5.z) != 0u)) {
      r4 = vec4<f32>(v2.xy.xy, r4.zw);
      let v_80 = cb12_12.tint_symbol[5u].x;
      let v_81 = r4.xyzx;
      r6 = textureSampleLevel(t8, s8, v_81.xy, i32(v_81.z), v_80);
    }
    if ((bitcast<u32>(r0.y) != 0u)) {
      r2.w = r4.z;
      let v_82 = cb12_12.tint_symbol[5u].x;
      let v_83 = r2;
      r1 = textureSampleLevel(t10, s10, v_83.xyz, i32(v_83.w), v_82);
    } else {
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol[5u].y == 4.0f)));
      let v_84 = bitcast<vec4<u32>>(r0.yyyy);
      r1 = select(r6, vec4<f32>(), (v_84 != vec4<u32>()));
    }
    r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r5.w)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      r1 = r3;
    }
    if ((bitcast<u32>(r0.z) != 0u)) {
      r0.x = floor(cb12_12.tint_symbol[5u].z);
      r0.x = bitcast<f32>(select(0u, 4294967295u, !((cb12_12.tint_symbol[5u].z == r0.x))));
      r0.y = dot(r2.xyz, r2.xyz);
      r0.y = inverseSqrt(r0.y);
      let v_85 = (r0.yyy * r2.xyz);
      r0 = vec4<f32>(r0.x, v_85.xyz);
      let v_86 = ((-(r1.xyzx)).xyz + vec3<f32>(1.0f, 0.0f, 0.0f));
      r2 = vec4<f32>(v_86.xyz, r2.w);
      let v_87 = (r2.xyz * cb12_12.tint_symbol[7u].www);
      r2 = vec4<f32>(v_87.xyz, r2.w);
      let v_88 = max(r0.yzw, vec3<f32>());
      r3 = vec4<f32>(v_88.xyz, r3.w);
      let v_89 = log2(r3.xyz);
      r3 = vec4<f32>(v_89.xyz, r3.w);
      let v_90 = (r3.xyz * vec3<f32>(32.0f));
      r3 = vec4<f32>(v_90.xyz, r3.w);
      let v_91 = exp2(r3.xyz);
      r3 = vec4<f32>(v_91.xyz, r3.w);
      let v_92 = (r3.xyz * vec3<f32>(1.5f));
      r3 = vec4<f32>(v_92.xyz, r3.w);
      let v_93 = min(r3.xyz, vec3<f32>(1.0f));
      r3 = vec4<f32>(v_93.xyz, r3.w);
      let v_94 = fma(r2.xyz, r3.xxx, r1.xyz);
      r2 = vec4<f32>(v_94.xyz, r2.w);
      let v_95 = ((-(r2.xyzx)).xyz + vec3<f32>(0.0f, 1.0f, 0.0f));
      r4 = vec4<f32>(v_95.xyz, r4.w);
      let v_96 = (r4.xyz * cb12_12.tint_symbol[7u].www);
      r4 = vec4<f32>(v_96.xyz, r4.w);
      let v_97 = fma(r4.xyz, r3.yyy, r2.xyz);
      r2 = vec4<f32>(v_97.xyz, r2.w);
      let v_98 = ((-(r2.xyxz)).xyw + vec3<f32>(0.0f, 0.0f, 1.0f));
      r3 = vec4<f32>(v_98.xy, r3.z, v_98.z);
      let v_99 = (r3.xyw * cb12_12.tint_symbol[7u].www);
      r3 = vec4<f32>(v_99.xy, r3.z, v_99.z);
      let v_100 = fma(r3.xyw, r3.zzz, r2.xyz);
      r2 = vec4<f32>(v_100.xyz, r2.w);
      let v_101 = ((-(r2.xyzx)).xyz + vec3<f32>(0.0f, 1.0f, 1.0f));
      r3 = vec4<f32>(v_101.xyz, r3.w);
      let v_102 = (r3.xyz * cb12_12.tint_symbol[7u].www);
      r3 = vec4<f32>(v_102.xyz, r3.w);
      let v_103 = max((-(r0.yyzw)).yzw, vec3<f32>());
      r0 = vec4<f32>(r0.x, v_103.xyz);
      let v_104 = log2(r0.yzw);
      r0 = vec4<f32>(r0.x, v_104.xyz);
      let v_105 = (r0.yzw * vec3<f32>(32.0f));
      r0 = vec4<f32>(r0.x, v_105.xyz);
      let v_106 = exp2(r0.yzw);
      r0 = vec4<f32>(r0.x, v_106.xyz);
      let v_107 = (r0.yzw * vec3<f32>(1.5f));
      r0 = vec4<f32>(r0.x, v_107.xyz);
      let v_108 = min(r0.yzw, vec3<f32>(1.0f));
      r0 = vec4<f32>(r0.x, v_108.xyz);
      let v_109 = fma(r3.xyz, r0.yyy, r2.xyz);
      r2 = vec4<f32>(v_109.xyz, r2.w);
      let v_110 = ((-(r2.xyzx)).xyz + vec3<f32>(1.0f, 1.0f, 0.0f));
      r3 = vec4<f32>(v_110.xyz, r3.w);
      let v_111 = (r3.xyz * cb12_12.tint_symbol[7u].www);
      r3 = vec4<f32>(v_111.xyz, r3.w);
      let v_112 = fma(r3.xyz, r0.zzz, r2.xyz);
      r2 = vec4<f32>(v_112.xyz, r2.w);
      let v_113 = ((-(r2.xyzx)).xyz + vec3<f32>(1.0f, 0.0f, 1.0f));
      r3 = vec4<f32>(v_113.xyz, r3.w);
      let v_114 = (r3.xyz * cb12_12.tint_symbol[7u].www);
      r3 = vec4<f32>(v_114.xyz, r3.w);
      let v_115 = fma(r3.xyz, r0.www, r2.xyz);
      r1 = vec4<f32>(v_115.xyz, r1.w);
      let v_116 = bitcast<u32>(r0.x);
      r1.w = select(r1.w, 1.0f, (v_116 != 0u));
    }
  }
  r0.x = dot(r1, cb12_12.tint_symbol[0u]);
  r0.y = dot(r1, cb12_12.tint_symbol[1u]);
  r0.z = dot(r1, cb12_12.tint_symbol[2u]);
  r0.w = dot(r1, cb12_12.tint_symbol[3u]);
  r0 = (r0 + cb12_12.tint_symbol[4u]);
  r0 = (r0 * v1);
  o0 = fma(r0, vec4<f32>(1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
