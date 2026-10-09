enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb44_struct {
  tint_symbol_2 : array<vec4<f32>, 44u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

struct cb7_struct {
  tint_symbol_3 : array<vec4<f32>, 7u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb7_struct;

struct cb24_struct {
  tint_symbol_4 : array<vec4<f32>, 24u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb24_struct;

struct tint_symbol_6 {
  tint_symbol_5 : array<u32>,
}

@group(0u) @binding(32u) var<storage, read> t0 : tint_symbol_6;

@group(0u) @binding(33u) var<storage, read> t1 : tint_symbol_6;

var<private> v6 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v_1 : i32) {
  let v_2 = 0i;
  v6.x = bitcast<f32>((v_1 - v_2));
  let v_3 = t0.tint_symbol_5[(bitcast<u32>((bitcast<i32>(v6.x) * 1i)) + 0u)];
  r0.x = bitcast<f32>(vec4<u32>(v_3, v_3, v_3, v_3).x);
  r1.x = bitcast<f32>((bitcast<u32>(r0.x) & 65535u));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) >> 24u));
  r0.x = f32(bitcast<u32>(r0.x));
  r1.y = (r0.x * 0.0039215688593685627f);
  r0.x = v6.x;
  r0.y = 1.0f;
  let v_4 = bitcast<vec2<u32>>(cb12_12.tint_symbol_3[6u].ww);
  let v_5 = r1.xy;
  let v_6 = select(r0.xy, v_5, (v_4 != vec2<u32>()));
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (bitcast<u32>((bitcast<i32>(r0.x) * 4i)) + 0u);
  let v_8 = t1.tint_symbol_5[v_7];
  let v_9 = t1.tint_symbol_5[(v_7 + 1u)];
  let v_10 = t1.tint_symbol_5[(v_7 + 2u)];
  let v_11 = bitcast<vec3<f32>>(vec3<u32>(vec4<u32>(v_8, v_8, v_8, v_8).x, vec4<u32>(v_9, v_9, v_9, v_9).x, vec4<u32>(v_10, v_10, v_10, v_10).x));
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) & vec2<u32>(65535u)));
  r0 = vec4<f32>(r0.xy, v_12.xy);
  let v_13 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) >> vec2<u32>(16u)));
  r1 = vec4<f32>(v_13.x, r1.yz, v_13.y);
  let v_14 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.yz) >> vec2<u32>(24u)));
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 255u));
  let v_16 = vec2<f32>(bitcast<vec2<u32>>(r0.zw));
  let v_17 = r2;
  r2 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
  r2.y = f32(bitcast<u32>(r1.x));
  let v_18 = (r2.xyz * cb12_12.tint_symbol_3[4u].xyz);
  r2 = vec4<f32>(v_18.xyz, r2.w);
  let v_19 = vec3<f32>(bitcast<vec3<u32>>(r1.wyz));
  r3 = vec4<f32>(v_19.xyz, r3.w);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 7u));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  let v_20 = fma(r2.xyz, vec3<f32>(0.00001525902189314365f), cb12_12.tint_symbol_3[3u].xyz);
  r1 = vec4<f32>(v_20.xy, r1.z, v_20.z);
  r0.z = (r3.z * 0.0039215688593685627f);
  let v_21 = fma(r3.xy, vec2<f32>(0.0078431377187371254f), vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_21.xy, r2.zw);
  r0.w = dot(r2.xy, r2.xy);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r2.z = sqrt(r0.w);
  r0.w = ((-(cb12_12.tint_symbol_3[5u].xxxx)).w + cb12_12.tint_symbol_3[5u].y);
  r0.z = fma(r0.w, r0.z, cb12_12.tint_symbol_3[5u].x);
  r0.w = (cb12_12.tint_symbol_3[5u].z * cb12_12.tint_symbol_3[5u].y);
  r0.w = dot(cb7_7.tint_symbol_4[bitcast<i32>(r0.x)].ww, r0.ww);
  r0.w = fma((-(cb12_12.tint_symbol_3[5u].yyyy)).w, cb12_12.tint_symbol_3[5u].z, r0.w);
  r0.z = (r0.w + r0.z);
  r0.z = max(r0.z, 0.0f);
  r0.y = (r0.y * r0.z);
  r0.z = ((-(r2.zzzz)).z + 1.0f);
  r0.z = sqrt(r0.z);
  r0.w = fma(r2.z, -0.01872929930686950684f, 0.07426100224256515503f);
  r0.w = fma(r0.w, r2.z, -0.21211439371109008789f);
  r0.w = fma(r0.w, r2.z, 1.57072877883911132812f);
  r0.z = (r0.z * r0.w);
  r0.z = (r0.z * cb12_12.tint_symbol_3[4u].w);
  let v_22 = fma((-(r2.zzzz)).xyz, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_23 = (r0.www * r2.xyz);
  r2 = vec4<f32>(v_23.xyz, r2.w);
  let v_24 = r0.zzzz;
  r3.x = sin(v_24.x);
  r4.x = cos(v_24.x);
  let v_25 = (r2.xyz * r3.xxx);
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = fma(r4.xxx, vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  let v_27 = (r2.yz * vec2<f32>(1.0f, 0.0f));
  r0 = vec4<f32>(r0.xy, v_27.xy);
  let v_28 = -(r0.zzzw);
  let v_29 = fma(r2.zx, vec2<f32>(0.0f, 1.0f), v_28.yw);
  let v_30 = r3;
  r3 = vec4<f32>(v_30.x, v_29.x, v_30.z, v_29.y);
  r0.z = dot(r3.yw, r3.yw);
  r0.z = sqrt(r0.z);
  let v_31 = (r3.yw / r0.zz);
  r0 = vec4<f32>(r0.xy, v_31.xy);
  r2.w = ((-(r2.zzzz)).w + 1.0f);
  r4.x = (r0.z * r2.w);
  r3.z = (r0.w * r4.x);
  r3.x = fma(r4.x, r0.z, r2.z);
  r0.z = (r0.w * r0.w);
  r4.x = fma(r0.z, r2.w, r2.z);
  r4.z = (-(r3.yyyy)).z;
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r2.z < 1.0f)));
  let v_32 = bitcast<vec3<u32>>(r0.zzz);
  let v_33 = select(vec3<f32>(1.0f, 0.0f, 0.0f), r3.xzw, (v_32 != vec3<u32>()));
  r3 = vec4<f32>(v_33.xy, r3.z, v_33.z);
  r4.w = r3.z;
  let v_34 = bitcast<vec3<u32>>(r0.zzz);
  let v_35 = select(vec3<f32>(0.0f, 1.0f, 0.0f), r4.wxz, (v_34 != vec3<u32>()));
  r4 = vec4<f32>(v_35.xyz, r4.w);
  let v_36 = (r2.xyz * vec3<f32>(-1.0f, -1.0f, 1.0f));
  r2 = vec4<f32>(v_36.xyz, r2.w);
  let v_37 = bitcast<vec3<u32>>(r0.zzz);
  let v_38 = select(vec3<f32>(0.0f, 0.0f, 1.0f), r2.xyz, (v_37 != vec3<u32>()));
  r2 = vec4<f32>(v_38.xyz, r2.w);
  r5.x = dot(cb7_7.tint_symbol_4[bitcast<i32>(r0.x)].xyz, r3.xyw);
  r5.y = dot(cb7_7.tint_symbol_4[bitcast<i32>(r0.x)].xyz, r4.xyz);
  r5.z = dot(cb7_7.tint_symbol_4[bitcast<i32>(r0.x)].xyz, r2.xyz);
  r6.x = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r3.xyw);
  r6.y = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r4.xyz);
  r6.z = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz, r2.xyz);
  r3.x = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r3.xyw);
  r3.y = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r4.xyz);
  r3.z = dot(cb7_7.tint_symbol_4[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz, r2.xyz);
  let v_39 = (r0.yyy * r5.xyz);
  r0 = vec4<f32>(v_39.x, r0.y, v_39.yz);
  let v_40 = (r0.yyy * r6.xyz);
  r2 = vec4<f32>(v_40.xyz, r2.w);
  let v_41 = (r0.yyy * r3.xyz);
  r3 = vec4<f32>(v_41.xyz, r3.w);
  let v_42 = (r2.xyz * v0.yyy);
  r4 = vec4<f32>(v_42.xyz, r4.w);
  let v_43 = fma(v0.xxx, r0.xzw, r4.xyz);
  r4 = vec4<f32>(v_43.xyz, r4.w);
  let v_44 = fma(v0.zzz, r3.xyz, r4.xyz);
  r4 = vec4<f32>(v_44.xyz, r4.w);
  o0 = ((r1.xyw + r4.xyz)).xyzx;
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = r0.x;
  r5.y = r2.x;
  r5.z = r3.x;
  r5.w = r1.x;
  r0.y = dot(r4, r5);
  r5.x = r0.z;
  r5.y = r2.y;
  r5.z = r3.y;
  r5.w = r1.y;
  r2.w = dot(r4, r5);
  r1.x = r0.w;
  r1.y = r2.z;
  r1.z = r3.z;
  r1.x = dot(r4, r1);
  r4 = (r2.wwww * cb1_1.tint_symbol[9u]);
  r4 = fma(r0.yyyy, cb1_1.tint_symbol[8u], r4);
  r1 = fma(r1.xxxx, cb1_1.tint_symbol[10u], r4);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r4 = (cb3_3.tint_symbol_2[1u] + cb3_3.tint_symbol_2[43u]);
  r0.y = dot(r4, vec4<f32>(1.0f));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.0f)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r0.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.y) != 0u)) {
      let v_45 = dot(-(cb3_3.tint_symbol_2[1u]), v1);
      o1 = vec4<f32>(vec3<f32>(v_45, v_45, v_45).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.y) != 0u)) {
        o1 = vec4<f32>(v1.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.y = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.y) != 0u)) {
          o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
          r0.y = dot(v4, v4);
          r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.10000000149011611938f)));
          let v_46 = select(v4, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.yyy) != vec3<u32>()));
          r4 = vec4<f32>(v_46.xyz, r4.w);
          let v_47 = (r2.xyz * r4.yyy);
          r5 = vec4<f32>(v_47.xyz, r5.w);
          let v_48 = fma(r4.xxx, r0.xzw, r5.xyz);
          r4 = vec4<f32>(v_48.xy, r4.z, v_48.z);
          let v_49 = fma(r4.zzz, r3.xyz, r4.xyw);
          r4 = vec4<f32>(v_49.xyz, r4.w);
          r0.y = dot(r4.xyz, r4.xyz);
          r0.y = inverseSqrt(r0.y);
          let v_50 = (r2.xyz * v5.yyy);
          r2 = vec4<f32>(v_50.xyz, r2.w);
          let v_51 = fma(v5.xxx, r0.xzw, r2.xyz);
          r0 = vec4<f32>(v_51.x, r0.y, v_51.yz);
          let v_52 = fma(v5.zzz, r3.xyz, r0.xzw);
          r0 = vec4<f32>(v_52.x, r0.y, v_52.yz);
          let v_53 = fma(r4.xyz, r0.yyy, vec3<f32>(1.0f));
          r2 = vec4<f32>(v_53.xyz, r2.w);
          let v_54 = (r2.xyz * vec3<f32>(0.5f));
          r2 = vec4<f32>(v_54.xyz, r2.w);
          let v_55 = (r0.xzw + vec3<f32>(1.0f));
          r0 = vec4<f32>(v_55.xyz, r0.w);
          let v_56 = (r0.xyz * vec3<f32>(0.5f));
          r0 = vec4<f32>(v_56.xyz, r0.w);
          r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r4.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -11.0f)));
          r4.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v1.z)));
          r4.z = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.99999898672103881836f)));
          r4.y = bitcast<f32>((bitcast<u32>(r4.z) & bitcast<u32>(r4.y)));
          r5 = vec4<f32>(((v1.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r5.w);
          let v_57 = bitcast<vec3<u32>>(r4.yyy);
          let v_58 = select(v1.zzz, r5.xyz, (v_57 != vec3<u32>()));
          r4 = vec4<f32>(r4.x, v_58.xyz);
          let v_59 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.yzw) & bitcast<vec3<u32>>(r4.xxx)));
          r4 = vec4<f32>(v_59.xyz, r4.w);
          r3.z = bitcast<f32>((bitcast<u32>(r3.z) | bitcast<u32>(r3.w)));
          r4.w = 1.0f;
          let v_60 = bitcast<vec4<u32>>(r3.zzzz);
          r4 = select(r4, vec4<f32>(), (v_60 != vec4<u32>()));
          r0.w = 1.0f;
          let v_61 = bitcast<vec4<u32>>(r3.yyyy);
          let v_62 = r0;
          r0 = select(r4, v_62, (v_61 != vec4<u32>()));
          r2.w = 1.0f;
          let v_63 = bitcast<vec4<u32>>(r3.xxxx);
          let v_64 = r2;
          o1 = select(r0, v_64, (v_63 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o2 = r1;
  let v_65 = &(x0[0u]);
  *(v_65) = vec4<f32>((*(v_65)).x, vec3<f32>());
  o3[0u] = x0[0u].x;
  o3[1u] = x0[0u].y;
  o3[2u] = x0[0u].z;
  o3[3u] = x0[0u].w;
  v = vec4<f32>(o3[0u], o3[1u], o3[2u], o3[3u]);
}

struct tint_symbol_8 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @builtin(position)
  o2 : vec4<f32>,
  @builtin(clip_distances)
  o3 : array<f32, 4u>,
  @location(15u)
  tint_symbol_7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @builtin(instance_index) v_66 : u32) -> tint_symbol_8 {
  main_inner(v0, v1, v4, v5, i32(v_66));
  return tint_symbol_8(o0, o1, o2, o3, v);
}
