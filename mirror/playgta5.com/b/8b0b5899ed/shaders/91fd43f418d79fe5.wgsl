diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb2_struct;

struct cb69_struct {
  tint_symbol_1 : array<vec4<f32>, 69u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb69_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f);
  r1 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(0i, 1i));
  r2 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(1i, 0i));
  r3 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(0i, -1i));
  r4 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(-1i, 0i));
  r1.x = max(r0.w, r1.w);
  r1.y = min(r0.w, r1.w);
  r1.x = max(r1.x, r2.w);
  r1.y = min(r1.y, r2.w);
  r1.z = max(r3.w, r4.w);
  r2.x = min(r3.w, r4.w);
  r1.x = max(r1.x, r1.z);
  r1.y = min(r1.y, r2.x);
  r1.z = (r1.x * cb6_6.tint_symbol[1u].y);
  r1.x = ((-(r1.yyyy)).x + r1.x);
  r1.y = max(r1.z, cb6_6.tint_symbol[1u].z);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r1.y)));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r5 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(-1i));
    r6 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(1i));
    r7 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(1i, -1i));
    r8 = textureSampleLevel(t6, s6, v1.xy.xyxx.xy, 0.0f, vec2<i32>(-1i, 1i));
    r1.y = (r1.w + r3.w);
    r1.z = (r2.w + r4.w);
    r1.x = (1.0f / r1.x);
    r2.x = (r1.z + r1.y);
    r1.y = fma(r0.w, -2.0f, r1.y);
    r1.z = fma(r0.w, -2.0f, r1.z);
    r2.y = (r6.w + r7.w);
    r2.z = (r5.w + r7.w);
    r3.x = fma(r2.w, -2.0f, r2.y);
    r2.z = fma(r3.w, -2.0f, r2.z);
    r3.y = (r5.w + r8.w);
    r3.z = (r6.w + r8.w);
    let v = abs(r1.yyyy);
    r1.y = fma(v.y, 2.0f, abs(r3.xxxx).y);
    let v_1 = abs(r1.zzzz);
    r1.z = fma(v_1.z, 2.0f, abs(r2.zzzz).z);
    r2.z = fma(r4.w, -2.0f, r3.y);
    r3.x = fma(r1.w, -2.0f, r3.z);
    let v_2 = abs(r2.zzzz);
    r1.y = (r1.y + v_2.y);
    let v_3 = abs(r3.xxxx);
    r1.z = (r1.z + v_3.z);
    r2.y = (r2.y + r3.y);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= r1.z)));
    r1.z = fma(r2.x, 2.0f, r2.y);
    let v_4 = bitcast<u32>(r1.y);
    let v_5 = r3.w;
    r2.x = select(r4.w, v_5, (v_4 != 0u));
    let v_6 = bitcast<u32>(r1.y);
    let v_7 = r1.w;
    r1.w = select(r2.w, v_7, (v_6 != 0u));
    let v_8 = bitcast<u32>(r1.y);
    let v_9 = cb5_5.tint_symbol_1[68u].y;
    r2.y = select(cb5_5.tint_symbol_1[68u].x, v_9, (v_8 != 0u));
    let v_10 = -(r0.wwww);
    r1.z = fma(r1.z, 0.08333333581686019897f, v_10.z);
    r2.z = ((-(r0.wwww)).z + r2.x);
    r2.w = ((-(r0.wwww)).w + r1.w);
    r2.x = (r0.w + r2.x);
    r1.w = (r0.w + r1.w);
    let v_11 = abs(r2.zzzz);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (v_11.x >= abs(r2.wwww).x)));
    let v_12 = abs(r2.wwww);
    r2.z = max(v_12.z, abs(r2.zzzz).z);
    let v_13 = -(r2.yyyy);
    let v_14 = bitcast<u32>(r3.x);
    r2.y = select(r2.y, v_13.y, (v_14 != 0u));
    let v_15 = abs(r1.zzzz);
    r1.x = clamp(((r1.xxxx * v_15)).x, 0.0f, 1.0f);
    r1.z = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(cb5_5.tint_symbol_1[68u].x)));
    let v_16 = bitcast<u32>(r1.y);
    r2.w = select(cb5_5.tint_symbol_1[68u].y, 0.0f, (v_16 != 0u));
    let v_17 = fma(r2.yy, vec2<f32>(0.5f), v1.xy);
    let v_18 = r3;
    r3 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
    let v_19 = bitcast<u32>(r1.y);
    r3.y = select(r3.y, v1.x, (v_19 != 0u));
    let v_20 = bitcast<u32>(r1.y);
    r3.z = select(v1.y, r3.z, (v_20 != 0u));
    r4.x = ((-(r1.zzzz)).x + r3.y);
    r4.y = ((-(r2.wwww)).y + r3.z);
    r5.x = (r1.z + r3.y);
    r5.y = (r2.w + r3.z);
    r3.y = fma(r1.x, -2.0f, 3.0f);
    r6 = textureSampleLevel(t6, s6, r4.xyxx.xy, 0.0f);
    r1.x = (r1.x * r1.x);
    r7 = textureSampleLevel(t6, s6, r5.xyxx.xy, 0.0f);
    let v_21 = bitcast<u32>(r3.x);
    let v_22 = r2.x;
    r1.w = select(r1.w, v_22, (v_21 != 0u));
    r2.x = (r2.z * 0.25f);
    r2.z = fma((-(r1.wwww)).z, 0.5f, r0.w);
    r1.x = (r1.x * r3.y);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < 0.0f)));
    r3.y = fma((-(r1.wwww)).y, 0.5f, r6.w);
    r3.x = fma((-(r1.wwww)).x, 0.5f, r7.w);
    let v_23 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yyyx).zw >= r2.xx)));
    r4 = vec4<f32>(r4.xy, v_23.xy);
    r5.z = ((-(r1.zzzz)).z + r4.x);
    let v_24 = bitcast<u32>(r4.z);
    let v_25 = r4.x;
    r5.z = select(r5.z, v_25, (v_24 != 0u));
    r4.x = ((-(r2.wwww)).x + r4.y);
    let v_26 = bitcast<u32>(r4.z);
    let v_27 = r4.y;
    r5.w = select(r4.x, v_27, (v_26 != 0u));
    let v_28 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.zw)));
    r4 = vec4<f32>(v_28.xy, r4.zw);
    r4.x = bitcast<f32>((bitcast<u32>(r4.y) | bitcast<u32>(r4.x)));
    r4.y = (r1.z + r5.x);
    let v_29 = bitcast<u32>(r4.w);
    let v_30 = r5.x;
    r6.x = select(r4.y, v_30, (v_29 != 0u));
    r4.y = (r2.w + r5.y);
    let v_31 = bitcast<u32>(r4.w);
    let v_32 = r5.y;
    r6.y = select(r4.y, v_32, (v_31 != 0u));
    if ((bitcast<u32>(r4.x) != 0u)) {
      if ((bitcast<u32>(r4.z) != 0u)) {
        r7.x = r3.y;
      } else {
        r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
      }
      if ((bitcast<u32>(r4.w) != 0u)) {
      } else {
        r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
      }
      r4.x = fma((-(r1.wwww)).x, 0.5f, r7.x);
      let v_33 = bitcast<u32>(r4.z);
      let v_34 = r7.x;
      r3.y = select(r4.x, v_34, (v_33 != 0u));
      r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
      let v_35 = bitcast<u32>(r4.w);
      let v_36 = r3.x;
      r3.x = select(r4.x, v_36, (v_35 != 0u));
      let v_37 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
      r4 = vec4<f32>(v_37.xy, r4.zw);
      r4.z = ((-(r1.zzzz)).z + r5.z);
      let v_38 = bitcast<u32>(r4.x);
      let v_39 = r5.z;
      r5.z = select(r4.z, v_39, (v_38 != 0u));
      r4.z = ((-(r2.wwww)).z + r5.w);
      let v_40 = bitcast<u32>(r4.x);
      let v_41 = r5.w;
      r5.w = select(r4.z, v_41, (v_40 != 0u));
      let v_42 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
      r4 = vec4<f32>(r4.xy, v_42.xy);
      r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
      r4.w = (r1.z + r6.x);
      let v_43 = bitcast<u32>(r4.y);
      let v_44 = r6.x;
      r6.x = select(r4.w, v_44, (v_43 != 0u));
      r4.w = (r2.w + r6.y);
      let v_45 = bitcast<u32>(r4.y);
      let v_46 = r6.y;
      r6.y = select(r4.w, v_46, (v_45 != 0u));
      if ((bitcast<u32>(r4.z) != 0u)) {
        if ((bitcast<u32>(r4.x) != 0u)) {
          r7.x = r3.y;
        } else {
          r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
        }
        if ((bitcast<u32>(r4.y) != 0u)) {
        } else {
          r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
        }
        r4.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
        let v_47 = bitcast<u32>(r4.x);
        let v_48 = r7.x;
        r3.y = select(r4.z, v_48, (v_47 != 0u));
        r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
        let v_49 = bitcast<u32>(r4.y);
        let v_50 = r3.x;
        r3.x = select(r4.x, v_50, (v_49 != 0u));
        let v_51 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
        r4 = vec4<f32>(v_51.xy, r4.zw);
        r4.z = ((-(r1.zzzz)).z + r5.z);
        let v_52 = bitcast<u32>(r4.x);
        let v_53 = r5.z;
        r5.z = select(r4.z, v_53, (v_52 != 0u));
        r4.z = ((-(r2.wwww)).z + r5.w);
        let v_54 = bitcast<u32>(r4.x);
        let v_55 = r5.w;
        r5.w = select(r4.z, v_55, (v_54 != 0u));
        let v_56 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
        r4 = vec4<f32>(r4.xy, v_56.xy);
        r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
        r4.w = (r1.z + r6.x);
        let v_57 = bitcast<u32>(r4.y);
        let v_58 = r6.x;
        r6.x = select(r4.w, v_58, (v_57 != 0u));
        r4.w = (r2.w + r6.y);
        let v_59 = bitcast<u32>(r4.y);
        let v_60 = r6.y;
        r6.y = select(r4.w, v_60, (v_59 != 0u));
        if ((bitcast<u32>(r4.z) != 0u)) {
          if ((bitcast<u32>(r4.x) != 0u)) {
            r7.x = r3.y;
          } else {
            r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
          }
          if ((bitcast<u32>(r4.y) != 0u)) {
          } else {
            r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
          }
          r4.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
          let v_61 = bitcast<u32>(r4.x);
          let v_62 = r7.x;
          r3.y = select(r4.z, v_62, (v_61 != 0u));
          r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
          let v_63 = bitcast<u32>(r4.y);
          let v_64 = r3.x;
          r3.x = select(r4.x, v_64, (v_63 != 0u));
          let v_65 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
          r4 = vec4<f32>(v_65.xy, r4.zw);
          r4.z = ((-(r1.zzzz)).z + r5.z);
          let v_66 = bitcast<u32>(r4.x);
          let v_67 = r5.z;
          r5.z = select(r4.z, v_67, (v_66 != 0u));
          r4.z = ((-(r2.wwww)).z + r5.w);
          let v_68 = bitcast<u32>(r4.x);
          let v_69 = r5.w;
          r5.w = select(r4.z, v_69, (v_68 != 0u));
          let v_70 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
          r4 = vec4<f32>(r4.xy, v_70.xy);
          r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
          r4.w = (r1.z + r6.x);
          let v_71 = bitcast<u32>(r4.y);
          let v_72 = r6.x;
          r6.x = select(r4.w, v_72, (v_71 != 0u));
          r4.w = (r2.w + r6.y);
          let v_73 = bitcast<u32>(r4.y);
          let v_74 = r6.y;
          r6.y = select(r4.w, v_74, (v_73 != 0u));
          if ((bitcast<u32>(r4.z) != 0u)) {
            if ((bitcast<u32>(r4.x) != 0u)) {
              r7.x = r3.y;
            } else {
              r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
            }
            if ((bitcast<u32>(r4.y) != 0u)) {
            } else {
              r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
            }
            r4.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
            let v_75 = bitcast<u32>(r4.x);
            let v_76 = r7.x;
            r3.y = select(r4.z, v_76, (v_75 != 0u));
            r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
            let v_77 = bitcast<u32>(r4.y);
            let v_78 = r3.x;
            r3.x = select(r4.x, v_78, (v_77 != 0u));
            let v_79 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
            r4 = vec4<f32>(v_79.xy, r4.zw);
            r4.z = fma((-(r1.zzzz)).z, 1.5f, r5.z);
            let v_80 = bitcast<u32>(r4.x);
            let v_81 = r5.z;
            r5.z = select(r4.z, v_81, (v_80 != 0u));
            r4.z = fma((-(r2.wwww)).z, 1.5f, r5.w);
            let v_82 = bitcast<u32>(r4.x);
            let v_83 = r5.w;
            r5.w = select(r4.z, v_83, (v_82 != 0u));
            let v_84 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
            r4 = vec4<f32>(r4.xy, v_84.xy);
            r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
            r4.w = fma(r1.z, 1.5f, r6.x);
            let v_85 = bitcast<u32>(r4.y);
            let v_86 = r6.x;
            r6.x = select(r4.w, v_86, (v_85 != 0u));
            r4.w = fma(r2.w, 1.5f, r6.y);
            let v_87 = bitcast<u32>(r4.y);
            let v_88 = r6.y;
            r6.y = select(r4.w, v_88, (v_87 != 0u));
            if ((bitcast<u32>(r4.z) != 0u)) {
              if ((bitcast<u32>(r4.x) != 0u)) {
                r7.x = r3.y;
              } else {
                r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
              }
              if ((bitcast<u32>(r4.y) != 0u)) {
              } else {
                r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
              }
              r4.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
              let v_89 = bitcast<u32>(r4.x);
              let v_90 = r7.x;
              r3.y = select(r4.z, v_90, (v_89 != 0u));
              r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
              let v_91 = bitcast<u32>(r4.y);
              let v_92 = r3.x;
              r3.x = select(r4.x, v_92, (v_91 != 0u));
              let v_93 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
              r4 = vec4<f32>(v_93.xy, r4.zw);
              r4.z = fma((-(r1.zzzz)).z, 2.0f, r5.z);
              let v_94 = bitcast<u32>(r4.x);
              let v_95 = r5.z;
              r5.z = select(r4.z, v_95, (v_94 != 0u));
              r4.z = fma((-(r2.wwww)).z, 2.0f, r5.w);
              let v_96 = bitcast<u32>(r4.x);
              let v_97 = r5.w;
              r5.w = select(r4.z, v_97, (v_96 != 0u));
              let v_98 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
              r4 = vec4<f32>(r4.xy, v_98.xy);
              r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
              r4.w = fma(r1.z, 2.0f, r6.x);
              let v_99 = bitcast<u32>(r4.y);
              let v_100 = r6.x;
              r6.x = select(r4.w, v_100, (v_99 != 0u));
              r4.w = fma(r2.w, 2.0f, r6.y);
              let v_101 = bitcast<u32>(r4.y);
              let v_102 = r6.y;
              r6.y = select(r4.w, v_102, (v_101 != 0u));
              if ((bitcast<u32>(r4.z) != 0u)) {
                if ((bitcast<u32>(r4.x) != 0u)) {
                  r7.x = r3.y;
                } else {
                  r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
                }
                if ((bitcast<u32>(r4.y) != 0u)) {
                } else {
                  r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
                }
                r4.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
                let v_103 = bitcast<u32>(r4.x);
                let v_104 = r7.x;
                r3.y = select(r4.z, v_104, (v_103 != 0u));
                r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
                let v_105 = bitcast<u32>(r4.y);
                let v_106 = r3.x;
                r3.x = select(r4.x, v_106, (v_105 != 0u));
                let v_107 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
                r4 = vec4<f32>(v_107.xy, r4.zw);
                r4.z = fma((-(r1.zzzz)).z, 2.0f, r5.z);
                let v_108 = bitcast<u32>(r4.x);
                let v_109 = r5.z;
                r5.z = select(r4.z, v_109, (v_108 != 0u));
                r4.z = fma((-(r2.wwww)).z, 2.0f, r5.w);
                let v_110 = bitcast<u32>(r4.x);
                let v_111 = r5.w;
                r5.w = select(r4.z, v_111, (v_110 != 0u));
                let v_112 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
                r4 = vec4<f32>(r4.xy, v_112.xy);
                r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
                r4.w = fma(r1.z, 2.0f, r6.x);
                let v_113 = bitcast<u32>(r4.y);
                let v_114 = r6.x;
                r6.x = select(r4.w, v_114, (v_113 != 0u));
                r4.w = fma(r2.w, 2.0f, r6.y);
                let v_115 = bitcast<u32>(r4.y);
                let v_116 = r6.y;
                r6.y = select(r4.w, v_116, (v_115 != 0u));
                if ((bitcast<u32>(r4.z) != 0u)) {
                  if ((bitcast<u32>(r4.x) != 0u)) {
                    r7.x = r3.y;
                  } else {
                    r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
                  }
                  if ((bitcast<u32>(r4.y) != 0u)) {
                  } else {
                    r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
                  }
                  r4.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
                  let v_117 = bitcast<u32>(r4.x);
                  let v_118 = r7.x;
                  r3.y = select(r4.z, v_118, (v_117 != 0u));
                  r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
                  let v_119 = bitcast<u32>(r4.y);
                  let v_120 = r3.x;
                  r3.x = select(r4.x, v_120, (v_119 != 0u));
                  let v_121 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
                  r4 = vec4<f32>(v_121.xy, r4.zw);
                  r4.z = fma((-(r1.zzzz)).z, 2.0f, r5.z);
                  let v_122 = bitcast<u32>(r4.x);
                  let v_123 = r5.z;
                  r5.z = select(r4.z, v_123, (v_122 != 0u));
                  r4.z = fma((-(r2.wwww)).z, 2.0f, r5.w);
                  let v_124 = bitcast<u32>(r4.x);
                  let v_125 = r5.w;
                  r5.w = select(r4.z, v_125, (v_124 != 0u));
                  let v_126 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
                  r4 = vec4<f32>(r4.xy, v_126.xy);
                  r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
                  r4.w = fma(r1.z, 2.0f, r6.x);
                  let v_127 = bitcast<u32>(r4.y);
                  let v_128 = r6.x;
                  r6.x = select(r4.w, v_128, (v_127 != 0u));
                  r4.w = fma(r2.w, 2.0f, r6.y);
                  let v_129 = bitcast<u32>(r4.y);
                  let v_130 = r6.y;
                  r6.y = select(r4.w, v_130, (v_129 != 0u));
                  if ((bitcast<u32>(r4.z) != 0u)) {
                    if ((bitcast<u32>(r4.x) != 0u)) {
                      r7.x = r3.y;
                    } else {
                      r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
                    }
                    if ((bitcast<u32>(r4.y) != 0u)) {
                    } else {
                      r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
                    }
                    r4.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
                    let v_131 = bitcast<u32>(r4.x);
                    let v_132 = r7.x;
                    r3.y = select(r4.z, v_132, (v_131 != 0u));
                    r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
                    let v_133 = bitcast<u32>(r4.y);
                    let v_134 = r3.x;
                    r3.x = select(r4.x, v_134, (v_133 != 0u));
                    let v_135 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
                    r4 = vec4<f32>(v_135.xy, r4.zw);
                    r4.z = fma((-(r1.zzzz)).z, 2.0f, r5.z);
                    let v_136 = bitcast<u32>(r4.x);
                    let v_137 = r5.z;
                    r5.z = select(r4.z, v_137, (v_136 != 0u));
                    r4.z = fma((-(r2.wwww)).z, 2.0f, r5.w);
                    let v_138 = bitcast<u32>(r4.x);
                    let v_139 = r5.w;
                    r5.w = select(r4.z, v_139, (v_138 != 0u));
                    let v_140 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
                    r4 = vec4<f32>(r4.xy, v_140.xy);
                    r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
                    r4.w = fma(r1.z, 2.0f, r6.x);
                    let v_141 = bitcast<u32>(r4.y);
                    let v_142 = r6.x;
                    r6.x = select(r4.w, v_142, (v_141 != 0u));
                    r4.w = fma(r2.w, 2.0f, r6.y);
                    let v_143 = bitcast<u32>(r4.y);
                    let v_144 = r6.y;
                    r6.y = select(r4.w, v_144, (v_143 != 0u));
                    if ((bitcast<u32>(r4.z) != 0u)) {
                      if ((bitcast<u32>(r4.x) != 0u)) {
                        r7.x = r3.y;
                      } else {
                        r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
                      }
                      if ((bitcast<u32>(r4.y) != 0u)) {
                      } else {
                        r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
                      }
                      r4.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
                      let v_145 = bitcast<u32>(r4.x);
                      let v_146 = r7.x;
                      r3.y = select(r4.z, v_146, (v_145 != 0u));
                      r4.x = fma((-(r1.wwww)).x, 0.5f, r3.x);
                      let v_147 = bitcast<u32>(r4.y);
                      let v_148 = r3.x;
                      r3.x = select(r4.x, v_148, (v_147 != 0u));
                      let v_149 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yxyy).xy >= r2.xx)));
                      r4 = vec4<f32>(v_149.xy, r4.zw);
                      r4.z = fma((-(r1.zzzz)).z, 4.0f, r5.z);
                      let v_150 = bitcast<u32>(r4.x);
                      let v_151 = r5.z;
                      r5.z = select(r4.z, v_151, (v_150 != 0u));
                      r4.z = fma((-(r2.wwww)).z, 4.0f, r5.w);
                      let v_152 = bitcast<u32>(r4.x);
                      let v_153 = r5.w;
                      r5.w = select(r4.z, v_153, (v_152 != 0u));
                      let v_154 = bitcast<vec2<f32>>(~(bitcast<vec2<u32>>(r4.xy)));
                      r4 = vec4<f32>(r4.xy, v_154.xy);
                      r4.z = bitcast<f32>((bitcast<u32>(r4.w) | bitcast<u32>(r4.z)));
                      r4.w = fma(r1.z, 4.0f, r6.x);
                      let v_155 = bitcast<u32>(r4.y);
                      let v_156 = r6.x;
                      r6.x = select(r4.w, v_156, (v_155 != 0u));
                      r4.w = fma(r2.w, 4.0f, r6.y);
                      let v_157 = bitcast<u32>(r4.y);
                      let v_158 = r6.y;
                      r6.y = select(r4.w, v_158, (v_157 != 0u));
                      if ((bitcast<u32>(r4.z) != 0u)) {
                        if ((bitcast<u32>(r4.x) != 0u)) {
                          r7.x = r3.y;
                        } else {
                          r7 = textureSampleLevel(t6, s6, r5.zwzz.xy, 0.0f).wxyz;
                        }
                        if ((bitcast<u32>(r4.y) != 0u)) {
                        } else {
                          r3 = textureSampleLevel(t6, s6, r6.xyxx.xy, 0.0f).wxyz;
                        }
                        r3.z = fma((-(r1.wwww)).z, 0.5f, r7.x);
                        let v_159 = bitcast<u32>(r4.x);
                        let v_160 = r7.x;
                        r3.y = select(r3.z, v_160, (v_159 != 0u));
                        r1.w = fma((-(r1.wwww)).w, 0.5f, r3.x);
                        let v_161 = bitcast<u32>(r4.y);
                        let v_162 = r3.x;
                        r3.x = select(r1.w, v_162, (v_161 != 0u));
                        let v_163 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r3.yyyx).zw >= r2.xx)));
                        r3 = vec4<f32>(r3.xy, v_163.xy);
                        r1.w = fma((-(r1.zzzz)).w, 8.0f, r5.z);
                        let v_164 = bitcast<u32>(r3.z);
                        let v_165 = r5.z;
                        r5.z = select(r1.w, v_165, (v_164 != 0u));
                        r1.w = fma((-(r2.wwww)).w, 8.0f, r5.w);
                        let v_166 = bitcast<u32>(r3.z);
                        let v_167 = r5.w;
                        r5.w = select(r1.w, v_167, (v_166 != 0u));
                        r1.z = fma(r1.z, 8.0f, r6.x);
                        let v_168 = bitcast<u32>(r3.w);
                        let v_169 = r6.x;
                        r6.x = select(r1.z, v_169, (v_168 != 0u));
                        r1.z = fma(r2.w, 8.0f, r6.y);
                        let v_170 = bitcast<u32>(r3.w);
                        let v_171 = r6.y;
                        r6.y = select(r1.z, v_171, (v_170 != 0u));
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
    r1.z = ((-(r5.zzzz)).z + v1.x);
    r1.w = (r6.x + (-(v1.xy.xxxx)).w);
    r2.x = ((-(r5.wwww)).x + v1.y);
    let v_172 = bitcast<u32>(r1.y);
    let v_173 = r1.z;
    r1.z = select(r2.x, v_173, (v_172 != 0u));
    r2.x = (r6.y + (-(v1.xy.yyyy)).x);
    let v_174 = bitcast<u32>(r1.y);
    let v_175 = r1.w;
    r1.w = select(r2.x, v_175, (v_174 != 0u));
    let v_176 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r3.yx < vec2<f32>())));
    r2 = vec4<f32>(v_176.x, r2.yz, v_176.y);
    r3.x = (r1.z + r1.w);
    let v_177 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (bitcast<vec2<i32>>(r2.xw) != bitcast<vec2<i32>>(r2.zz))));
    let v_178 = r2;
    r2 = vec4<f32>(v_177.x, v_178.y, v_177.y, v_178.w);
    r2.w = (1.0f / r3.x);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (r1.z < r1.w)));
    r1.z = min(r1.w, r1.z);
    let v_179 = bitcast<u32>(r3.x);
    let v_180 = r2.x;
    r1.w = select(r2.z, v_180, (v_179 != 0u));
    r1.x = (r1.x * r1.x);
    let v_181 = -(r2.wwww);
    r1.z = fma(r1.z, v_181.z, 0.5f);
    r1.x = (r1.x * cb6_6.tint_symbol[1u].x);
    r1.z = bitcast<f32>((bitcast<u32>(r1.z) & bitcast<u32>(r1.w)));
    r1.x = max(r1.x, r1.z);
    let v_182 = fma(r1.xx, r2.yy, v1.xy);
    let v_183 = r1;
    r1 = vec4<f32>(v_182.x, v_183.y, v_182.y, v_183.w);
    let v_184 = bitcast<u32>(r1.y);
    r2.x = select(r1.x, v1.x, (v_184 != 0u));
    let v_185 = bitcast<u32>(r1.y);
    r2.y = select(v1.y, r1.z, (v_185 != 0u));
    r1 = textureSampleLevel(t6, s6, r2.xyxx.xy, 0.0f);
    let v_186 = r1;
    r0 = vec4<f32>(v_186.xyz, r0.w);
  }
  o0 = r0;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
