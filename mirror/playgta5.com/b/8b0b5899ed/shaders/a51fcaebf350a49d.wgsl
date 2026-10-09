diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb2_struct;

struct cb75_struct {
  tint_symbol_1 : array<vec4<f32>, 75u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb75_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f);
  let v = textureGather(3i, t6, s6, v1.xy).xyz;
  r1 = vec4<f32>(v.xyz, r1.w);
  let v_1 = textureGather(3i, t6, s6, v1.xy, vec2<i32>(-1i)).xzw;
  r2 = vec4<f32>(v_1.xyz, r2.w);
  r1.w = max(r0.w, r1.x);
  r2.w = min(r0.w, r1.x);
  r1.w = max(r1.w, r1.z);
  r2.w = min(r1.z, r2.w);
  r3.x = max(r2.x, r2.y);
  r3.y = min(r2.x, r2.y);
  r1.w = max(r1.w, r3.x);
  r2.w = min(r2.w, r3.y);
  r3.x = (r1.w * cb6_6.tint_symbol[1u].y);
  let v_2 = -(r2.wwww);
  r1.w = (r1.w + v_2.w);
  r2.w = max(r3.x, cb6_6.tint_symbol[1u].z);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= r2.w)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(1i, -1i)).w;
    r3.x = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(-1i, 1i)).w;
    let v_3 = (r1.xz + r2.yx);
    let v_4 = r3;
    r3 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
    r1.w = (1.0f / r1.w);
    r3.w = (r3.z + r3.y);
    let v_5 = fma(r0.ww, vec2<f32>(-2.0f), r3.yz);
    let v_6 = r3;
    r3 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
    r4.x = (r1.y + r2.w);
    r2.w = (r2.w + r2.z);
    r4.y = fma(r1.z, -2.0f, r4.x);
    r2.w = fma(r2.y, -2.0f, r2.w);
    r2.z = (r2.z + r3.x);
    r1.y = (r1.y + r3.x);
    let v_7 = abs(r3.yyyy);
    r3.x = fma(v_7.x, 2.0f, abs(r4.yyyy).x);
    let v_8 = abs(r3.zzzz);
    r2.w = fma(v_8.w, 2.0f, abs(r2.wwww).w);
    r3.y = fma(r2.x, -2.0f, r2.z);
    r1.y = fma(r1.x, -2.0f, r1.y);
    let v_9 = abs(r3.yyyy);
    r3.x = (r3.x + v_9.x);
    let v_10 = abs(r1.yyyy);
    r1.y = (r2.w + v_10.y);
    r2.z = (r4.x + r2.z);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r3.x >= r1.y)));
    r2.z = fma(r3.w, 2.0f, r2.z);
    let v_11 = bitcast<u32>(r1.y);
    let v_12 = r2.y;
    r2.x = select(r2.x, v_12, (v_11 != 0u));
    let v_13 = bitcast<u32>(r1.y);
    let v_14 = r1.x;
    r1.x = select(r1.z, v_14, (v_13 != 0u));
    let v_15 = bitcast<u32>(r1.y);
    let v_16 = cb5_5.tint_symbol_1[74u].y;
    r1.z = select(cb5_5.tint_symbol_1[74u].x, v_16, (v_15 != 0u));
    let v_17 = -(r0.wwww);
    r2.y = fma(r2.z, 0.08333333581686019897f, v_17.y);
    r2.z = ((-(r0.wwww)).z + r2.x);
    r2.w = ((-(r0.wwww)).w + r1.x);
    r2.x = (r0.w + r2.x);
    r1.x = (r0.w + r1.x);
    let v_18 = abs(r2.zzzz);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (v_18.x >= abs(r2.wwww).x)));
    let v_19 = abs(r2.wwww);
    r2.z = max(v_19.z, abs(r2.zzzz).z);
    let v_20 = -(r1.zzzz);
    let v_21 = bitcast<u32>(r3.x);
    r1.z = select(r1.z, v_20.z, (v_21 != 0u));
    let v_22 = abs(r2.yyyy);
    r1.w = clamp(((r1.wwww * v_22)).w, 0.0f, 1.0f);
    r2.y = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(cb5_5.tint_symbol_1[74u].x)));
    let v_23 = bitcast<u32>(r1.y);
    r2.w = select(cb5_5.tint_symbol_1[74u].y, 0.0f, (v_23 != 0u));
    let v_24 = fma(r1.zz, vec2<f32>(0.5f), v1.xy);
    let v_25 = r3;
    r3 = vec4<f32>(v_25.x, v_24.xy, v_25.w);
    let v_26 = bitcast<u32>(r1.y);
    r3.y = select(r3.y, v1.x, (v_26 != 0u));
    let v_27 = bitcast<u32>(r1.y);
    r3.z = select(v1.y, r3.z, (v_27 != 0u));
    let v_28 = ((-(r2.ywyy)).xy + r3.yz);
    r4 = vec4<f32>(v_28.xy, r4.zw);
    let v_29 = (r2.yw + r3.yz);
    r5 = vec4<f32>(v_29.xy, r5.zw);
    r3.y = fma(r1.w, -2.0f, 3.0f);
    r3.z = textureSampleLevel(t6, s6, r4.xyxx.xy, 0.0f).w;
    r1.w = (r1.w * r1.w);
    r3.w = textureSampleLevel(t6, s6, r5.xyxx.xy, 0.0f).w;
    let v_30 = bitcast<u32>(r3.x);
    let v_31 = r2.x;
    r1.x = select(r1.x, v_31, (v_30 != 0u));
    r2.x = (r2.z * 0.25f);
    r2.z = fma((-(r1.xxxx)).z, 0.5f, r0.w);
    r1.w = (r1.w * r3.y);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < 0.0f)));
    r3.x = fma((-(r1.xxxx)).x, 0.5f, r3.z);
    r3.y = fma((-(r1.xxxx)).y, 0.5f, r3.w);
    let v_32 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
    r3 = vec4<f32>(r3.xy, v_32.xy);
    let v_33 = ((-(r2.yyyw)).zw + r4.xy);
    r4 = vec4<f32>(r4.xy, v_33.xy);
    let v_34 = bitcast<u32>(r3.z);
    let v_35 = r4.x;
    r4.x = select(r4.z, v_35, (v_34 != 0u));
    let v_36 = bitcast<u32>(r3.z);
    let v_37 = r4.y;
    r4.z = select(r4.w, v_37, (v_36 != 0u));
    let v_38 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
    let v_39 = r4;
    r4 = vec4<f32>(v_39.x, v_38.x, v_39.z, v_38.y);
    r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
    r4.w = (r2.y + r5.x);
    let v_40 = bitcast<u32>(r3.w);
    let v_41 = r5.x;
    r5.x = select(r4.w, v_41, (v_40 != 0u));
    r4.w = (r2.w + r5.y);
    let v_42 = bitcast<u32>(r3.w);
    let v_43 = r5.y;
    r5.z = select(r4.w, v_43, (v_42 != 0u));
    if ((bitcast<u32>(r4.y) != 0u)) {
      if ((bitcast<u32>(r3.z) != 0u)) {
      } else {
        r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
      }
      if ((bitcast<u32>(r3.w) != 0u)) {
      } else {
        r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
      }
      r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
      let v_44 = bitcast<u32>(r3.z);
      let v_45 = r3.x;
      r3.x = select(r4.y, v_45, (v_44 != 0u));
      r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
      let v_46 = bitcast<u32>(r3.w);
      let v_47 = r3.y;
      r3.y = select(r3.z, v_47, (v_46 != 0u));
      let v_48 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
      r3 = vec4<f32>(r3.xy, v_48.xy);
      r4.y = ((-(r2.yyyy)).y + r4.x);
      let v_49 = bitcast<u32>(r3.z);
      let v_50 = r4.x;
      r4.x = select(r4.y, v_50, (v_49 != 0u));
      r4.y = ((-(r2.wwww)).y + r4.z);
      let v_51 = bitcast<u32>(r3.z);
      let v_52 = r4.z;
      r4.z = select(r4.y, v_52, (v_51 != 0u));
      let v_53 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
      let v_54 = r4;
      r4 = vec4<f32>(v_54.x, v_53.x, v_54.z, v_53.y);
      r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
      r4.w = (r2.y + r5.x);
      let v_55 = bitcast<u32>(r3.w);
      let v_56 = r5.x;
      r5.x = select(r4.w, v_56, (v_55 != 0u));
      r4.w = (r2.w + r5.z);
      let v_57 = bitcast<u32>(r3.w);
      let v_58 = r5.z;
      r5.z = select(r4.w, v_58, (v_57 != 0u));
      if ((bitcast<u32>(r4.y) != 0u)) {
        if ((bitcast<u32>(r3.z) != 0u)) {
        } else {
          r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
        }
        if ((bitcast<u32>(r3.w) != 0u)) {
        } else {
          r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
        }
        r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
        let v_59 = bitcast<u32>(r3.z);
        let v_60 = r3.x;
        r3.x = select(r4.y, v_60, (v_59 != 0u));
        r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
        let v_61 = bitcast<u32>(r3.w);
        let v_62 = r3.y;
        r3.y = select(r3.z, v_62, (v_61 != 0u));
        let v_63 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
        r3 = vec4<f32>(r3.xy, v_63.xy);
        r4.y = ((-(r2.yyyy)).y + r4.x);
        let v_64 = bitcast<u32>(r3.z);
        let v_65 = r4.x;
        r4.x = select(r4.y, v_65, (v_64 != 0u));
        r4.y = ((-(r2.wwww)).y + r4.z);
        let v_66 = bitcast<u32>(r3.z);
        let v_67 = r4.z;
        r4.z = select(r4.y, v_67, (v_66 != 0u));
        let v_68 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
        let v_69 = r4;
        r4 = vec4<f32>(v_69.x, v_68.x, v_69.z, v_68.y);
        r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
        r4.w = (r2.y + r5.x);
        let v_70 = bitcast<u32>(r3.w);
        let v_71 = r5.x;
        r5.x = select(r4.w, v_71, (v_70 != 0u));
        r4.w = (r2.w + r5.z);
        let v_72 = bitcast<u32>(r3.w);
        let v_73 = r5.z;
        r5.z = select(r4.w, v_73, (v_72 != 0u));
        if ((bitcast<u32>(r4.y) != 0u)) {
          if ((bitcast<u32>(r3.z) != 0u)) {
          } else {
            r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
          }
          if ((bitcast<u32>(r3.w) != 0u)) {
          } else {
            r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
          }
          r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
          let v_74 = bitcast<u32>(r3.z);
          let v_75 = r3.x;
          r3.x = select(r4.y, v_75, (v_74 != 0u));
          r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
          let v_76 = bitcast<u32>(r3.w);
          let v_77 = r3.y;
          r3.y = select(r3.z, v_77, (v_76 != 0u));
          let v_78 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
          r3 = vec4<f32>(r3.xy, v_78.xy);
          r4.y = ((-(r2.yyyy)).y + r4.x);
          let v_79 = bitcast<u32>(r3.z);
          let v_80 = r4.x;
          r4.x = select(r4.y, v_80, (v_79 != 0u));
          r4.y = ((-(r2.wwww)).y + r4.z);
          let v_81 = bitcast<u32>(r3.z);
          let v_82 = r4.z;
          r4.z = select(r4.y, v_82, (v_81 != 0u));
          let v_83 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
          let v_84 = r4;
          r4 = vec4<f32>(v_84.x, v_83.x, v_84.z, v_83.y);
          r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
          r4.w = (r2.y + r5.x);
          let v_85 = bitcast<u32>(r3.w);
          let v_86 = r5.x;
          r5.x = select(r4.w, v_86, (v_85 != 0u));
          r4.w = (r2.w + r5.z);
          let v_87 = bitcast<u32>(r3.w);
          let v_88 = r5.z;
          r5.z = select(r4.w, v_88, (v_87 != 0u));
          if ((bitcast<u32>(r4.y) != 0u)) {
            if ((bitcast<u32>(r3.z) != 0u)) {
            } else {
              r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
            }
            if ((bitcast<u32>(r3.w) != 0u)) {
            } else {
              r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
            }
            r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
            let v_89 = bitcast<u32>(r3.z);
            let v_90 = r3.x;
            r3.x = select(r4.y, v_90, (v_89 != 0u));
            r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
            let v_91 = bitcast<u32>(r3.w);
            let v_92 = r3.y;
            r3.y = select(r3.z, v_92, (v_91 != 0u));
            let v_93 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
            r3 = vec4<f32>(r3.xy, v_93.xy);
            r4.y = fma((-(r2.yyyy)).y, 1.5f, r4.x);
            let v_94 = bitcast<u32>(r3.z);
            let v_95 = r4.x;
            r4.x = select(r4.y, v_95, (v_94 != 0u));
            r4.y = fma((-(r2.wwww)).y, 1.5f, r4.z);
            let v_96 = bitcast<u32>(r3.z);
            let v_97 = r4.z;
            r4.z = select(r4.y, v_97, (v_96 != 0u));
            let v_98 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
            let v_99 = r4;
            r4 = vec4<f32>(v_99.x, v_98.x, v_99.z, v_98.y);
            r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
            r4.w = fma(r2.y, 1.5f, r5.x);
            let v_100 = bitcast<u32>(r3.w);
            let v_101 = r5.x;
            r5.x = select(r4.w, v_101, (v_100 != 0u));
            r4.w = fma(r2.w, 1.5f, r5.z);
            let v_102 = bitcast<u32>(r3.w);
            let v_103 = r5.z;
            r5.z = select(r4.w, v_103, (v_102 != 0u));
            if ((bitcast<u32>(r4.y) != 0u)) {
              if ((bitcast<u32>(r3.z) != 0u)) {
              } else {
                r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
              }
              if ((bitcast<u32>(r3.w) != 0u)) {
              } else {
                r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
              }
              r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
              let v_104 = bitcast<u32>(r3.z);
              let v_105 = r3.x;
              r3.x = select(r4.y, v_105, (v_104 != 0u));
              r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
              let v_106 = bitcast<u32>(r3.w);
              let v_107 = r3.y;
              r3.y = select(r3.z, v_107, (v_106 != 0u));
              let v_108 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
              r3 = vec4<f32>(r3.xy, v_108.xy);
              r4.y = fma((-(r2.yyyy)).y, 2.0f, r4.x);
              let v_109 = bitcast<u32>(r3.z);
              let v_110 = r4.x;
              r4.x = select(r4.y, v_110, (v_109 != 0u));
              r4.y = fma((-(r2.wwww)).y, 2.0f, r4.z);
              let v_111 = bitcast<u32>(r3.z);
              let v_112 = r4.z;
              r4.z = select(r4.y, v_112, (v_111 != 0u));
              let v_113 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
              let v_114 = r4;
              r4 = vec4<f32>(v_114.x, v_113.x, v_114.z, v_113.y);
              r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
              r4.w = fma(r2.y, 2.0f, r5.x);
              let v_115 = bitcast<u32>(r3.w);
              let v_116 = r5.x;
              r5.x = select(r4.w, v_116, (v_115 != 0u));
              r4.w = fma(r2.w, 2.0f, r5.z);
              let v_117 = bitcast<u32>(r3.w);
              let v_118 = r5.z;
              r5.z = select(r4.w, v_118, (v_117 != 0u));
              if ((bitcast<u32>(r4.y) != 0u)) {
                if ((bitcast<u32>(r3.z) != 0u)) {
                } else {
                  r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
                }
                if ((bitcast<u32>(r3.w) != 0u)) {
                } else {
                  r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
                }
                r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
                let v_119 = bitcast<u32>(r3.z);
                let v_120 = r3.x;
                r3.x = select(r4.y, v_120, (v_119 != 0u));
                r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
                let v_121 = bitcast<u32>(r3.w);
                let v_122 = r3.y;
                r3.y = select(r3.z, v_122, (v_121 != 0u));
                let v_123 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
                r3 = vec4<f32>(r3.xy, v_123.xy);
                r4.y = fma((-(r2.yyyy)).y, 2.0f, r4.x);
                let v_124 = bitcast<u32>(r3.z);
                let v_125 = r4.x;
                r4.x = select(r4.y, v_125, (v_124 != 0u));
                r4.y = fma((-(r2.wwww)).y, 2.0f, r4.z);
                let v_126 = bitcast<u32>(r3.z);
                let v_127 = r4.z;
                r4.z = select(r4.y, v_127, (v_126 != 0u));
                let v_128 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
                let v_129 = r4;
                r4 = vec4<f32>(v_129.x, v_128.x, v_129.z, v_128.y);
                r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
                r4.w = fma(r2.y, 2.0f, r5.x);
                let v_130 = bitcast<u32>(r3.w);
                let v_131 = r5.x;
                r5.x = select(r4.w, v_131, (v_130 != 0u));
                r4.w = fma(r2.w, 2.0f, r5.z);
                let v_132 = bitcast<u32>(r3.w);
                let v_133 = r5.z;
                r5.z = select(r4.w, v_133, (v_132 != 0u));
                if ((bitcast<u32>(r4.y) != 0u)) {
                  if ((bitcast<u32>(r3.z) != 0u)) {
                  } else {
                    r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
                  }
                  if ((bitcast<u32>(r3.w) != 0u)) {
                  } else {
                    r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
                  }
                  r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
                  let v_134 = bitcast<u32>(r3.z);
                  let v_135 = r3.x;
                  r3.x = select(r4.y, v_135, (v_134 != 0u));
                  r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
                  let v_136 = bitcast<u32>(r3.w);
                  let v_137 = r3.y;
                  r3.y = select(r3.z, v_137, (v_136 != 0u));
                  let v_138 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
                  r3 = vec4<f32>(r3.xy, v_138.xy);
                  r4.y = fma((-(r2.yyyy)).y, 2.0f, r4.x);
                  let v_139 = bitcast<u32>(r3.z);
                  let v_140 = r4.x;
                  r4.x = select(r4.y, v_140, (v_139 != 0u));
                  r4.y = fma((-(r2.wwww)).y, 2.0f, r4.z);
                  let v_141 = bitcast<u32>(r3.z);
                  let v_142 = r4.z;
                  r4.z = select(r4.y, v_142, (v_141 != 0u));
                  let v_143 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
                  let v_144 = r4;
                  r4 = vec4<f32>(v_144.x, v_143.x, v_144.z, v_143.y);
                  r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
                  r4.w = fma(r2.y, 2.0f, r5.x);
                  let v_145 = bitcast<u32>(r3.w);
                  let v_146 = r5.x;
                  r5.x = select(r4.w, v_146, (v_145 != 0u));
                  r4.w = fma(r2.w, 2.0f, r5.z);
                  let v_147 = bitcast<u32>(r3.w);
                  let v_148 = r5.z;
                  r5.z = select(r4.w, v_148, (v_147 != 0u));
                  if ((bitcast<u32>(r4.y) != 0u)) {
                    if ((bitcast<u32>(r3.z) != 0u)) {
                    } else {
                      r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
                    }
                    if ((bitcast<u32>(r3.w) != 0u)) {
                    } else {
                      r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
                    }
                    r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
                    let v_149 = bitcast<u32>(r3.z);
                    let v_150 = r3.x;
                    r3.x = select(r4.y, v_150, (v_149 != 0u));
                    r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
                    let v_151 = bitcast<u32>(r3.w);
                    let v_152 = r3.y;
                    r3.y = select(r3.z, v_152, (v_151 != 0u));
                    let v_153 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
                    r3 = vec4<f32>(r3.xy, v_153.xy);
                    r4.y = fma((-(r2.yyyy)).y, 2.0f, r4.x);
                    let v_154 = bitcast<u32>(r3.z);
                    let v_155 = r4.x;
                    r4.x = select(r4.y, v_155, (v_154 != 0u));
                    r4.y = fma((-(r2.wwww)).y, 2.0f, r4.z);
                    let v_156 = bitcast<u32>(r3.z);
                    let v_157 = r4.z;
                    r4.z = select(r4.y, v_157, (v_156 != 0u));
                    let v_158 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
                    let v_159 = r4;
                    r4 = vec4<f32>(v_159.x, v_158.x, v_159.z, v_158.y);
                    r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
                    r4.w = fma(r2.y, 2.0f, r5.x);
                    let v_160 = bitcast<u32>(r3.w);
                    let v_161 = r5.x;
                    r5.x = select(r4.w, v_161, (v_160 != 0u));
                    r4.w = fma(r2.w, 2.0f, r5.z);
                    let v_162 = bitcast<u32>(r3.w);
                    let v_163 = r5.z;
                    r5.z = select(r4.w, v_163, (v_162 != 0u));
                    if ((bitcast<u32>(r4.y) != 0u)) {
                      if ((bitcast<u32>(r3.z) != 0u)) {
                      } else {
                        r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
                      }
                      if ((bitcast<u32>(r3.w) != 0u)) {
                      } else {
                        r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
                      }
                      r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
                      let v_164 = bitcast<u32>(r3.z);
                      let v_165 = r3.x;
                      r3.x = select(r4.y, v_165, (v_164 != 0u));
                      r3.z = fma((-(r1.xxxx)).z, 0.5f, r3.y);
                      let v_166 = bitcast<u32>(r3.w);
                      let v_167 = r3.y;
                      r3.y = select(r3.z, v_167, (v_166 != 0u));
                      let v_168 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
                      r3 = vec4<f32>(r3.xy, v_168.xy);
                      r4.y = fma((-(r2.yyyy)).y, 4.0f, r4.x);
                      let v_169 = bitcast<u32>(r3.z);
                      let v_170 = r4.x;
                      r4.x = select(r4.y, v_170, (v_169 != 0u));
                      r4.y = fma((-(r2.wwww)).y, 4.0f, r4.z);
                      let v_171 = bitcast<u32>(r3.z);
                      let v_172 = r4.z;
                      r4.z = select(r4.y, v_172, (v_171 != 0u));
                      let v_173 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r3.zw)));
                      let v_174 = r4;
                      r4 = vec4<f32>(v_174.x, v_173.x, v_174.z, v_173.y);
                      r4.y = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.y)));
                      r4.w = fma(r2.y, 4.0f, r5.x);
                      let v_175 = bitcast<u32>(r3.w);
                      let v_176 = r5.x;
                      r5.x = select(r4.w, v_176, (v_175 != 0u));
                      r4.w = fma(r2.w, 4.0f, r5.z);
                      let v_177 = bitcast<u32>(r3.w);
                      let v_178 = r5.z;
                      r5.z = select(r4.w, v_178, (v_177 != 0u));
                      if ((bitcast<u32>(r4.y) != 0u)) {
                        if ((bitcast<u32>(r3.z) != 0u)) {
                        } else {
                          r3.x = textureSampleLevel(t6, s6, r4.xzxx.xy, 0.0f).w;
                        }
                        if ((bitcast<u32>(r3.w) != 0u)) {
                        } else {
                          r3.y = textureSampleLevel(t6, s6, r5.xzxx.xy, 0.0f).w;
                        }
                        r4.y = fma((-(r1.xxxx)).y, 0.5f, r3.x);
                        let v_179 = bitcast<u32>(r3.z);
                        let v_180 = r3.x;
                        r3.x = select(r4.y, v_180, (v_179 != 0u));
                        r1.x = fma((-(r1.xxxx)).x, 0.5f, r3.y);
                        let v_181 = bitcast<u32>(r3.w);
                        let v_182 = r3.y;
                        r3.y = select(r1.x, v_182, (v_181 != 0u));
                        let v_183 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.xxxy).zw >= r2.xx)));
                        r3 = vec4<f32>(r3.xy, v_183.xy);
                        r1.x = fma((-(r2.yyyy)).x, 8.0f, r4.x);
                        let v_184 = bitcast<u32>(r3.z);
                        let v_185 = r4.x;
                        r4.x = select(r1.x, v_185, (v_184 != 0u));
                        r1.x = fma((-(r2.wwww)).x, 8.0f, r4.z);
                        let v_186 = bitcast<u32>(r3.z);
                        let v_187 = r4.z;
                        r4.z = select(r1.x, v_187, (v_186 != 0u));
                        r1.x = fma(r2.y, 8.0f, r5.x);
                        let v_188 = bitcast<u32>(r3.w);
                        let v_189 = r5.x;
                        r5.x = select(r1.x, v_189, (v_188 != 0u));
                        r1.x = fma(r2.w, 8.0f, r5.z);
                        let v_190 = bitcast<u32>(r3.w);
                        let v_191 = r5.z;
                        r5.z = select(r1.x, v_191, (v_190 != 0u));
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    r1.x = ((-(r4.xxxx)).x + v1.x);
    r2.y = ((-(r4.zzzz)).y + v1.y);
    let v_192 = bitcast<u32>(r1.y);
    let v_193 = r1.x;
    r1.x = select(r2.y, v_193, (v_192 != 0u));
    let v_194 = (r5.xz + (-(v1.xy.xyxx)).xy);
    r2 = vec4<f32>(v_194.xy, r2.zw);
    let v_195 = bitcast<u32>(r1.y);
    let v_196 = r2.x;
    r2.x = select(r2.y, v_196, (v_195 != 0u));
    let v_197 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.xy < vec2<f32>())));
    let v_198 = r2;
    r2 = vec4<f32>(v_198.x, v_197.x, v_198.z, v_197.y);
    r3.x = (r1.x + r2.x);
    let v_199 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r2.yw) != bitcast<vec2<i32>>(r2.zz))));
    let v_200 = r2;
    r2 = vec4<f32>(v_200.x, v_199.xy, v_200.w);
    r2.w = (1.0f / r3.x);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r2.x)));
    r1.x = min(r1.x, r2.x);
    let v_201 = bitcast<u32>(r3.x);
    let v_202 = r2.y;
    r2.x = select(r2.z, v_202, (v_201 != 0u));
    r1.w = (r1.w * r1.w);
    let v_203 = -(r2.wwww);
    r1.x = fma(r1.x, v_203.x, 0.5f);
    r1.w = (r1.w * cb6_6.tint_symbol[1u].x);
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) & bitcast<u32>(r2.x)));
    r1.x = max(r1.w, r1.x);
    let v_204 = fma(r1.xx, r1.zz, v1.xy);
    let v_205 = r1;
    r1 = vec4<f32>(v_204.x, v_205.y, v_204.y, v_205.w);
    let v_206 = bitcast<u32>(r1.y);
    r2.x = select(r1.x, v1.x, (v_206 != 0u));
    let v_207 = bitcast<u32>(r1.y);
    r2.y = select(v1.y, r1.z, (v_207 != 0u));
    let v_208 = textureSampleLevel(t6, s6, r2.xyxx.xy, 0.0f).xyz;
    r0 = vec4<f32>(v_208.xyz, r0.w);
  }
  o0 = r0;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
