enable clip_distances;
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

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

struct cb765_struct {
  tint_symbol : array<vec4<f32>, 765u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb765_struct;

struct cb12_struct {
  tint_symbol_1 : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_3 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb44_struct {
  tint_symbol_4 : array<vec4<f32>, 44u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

struct cb2_struct {
  tint_symbol_5 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb2_struct;

struct cb2_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb2_struct_1;

struct cb258_struct {
  tint_symbol_7 : array<vec4<f32>, 258u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb258_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>, v7 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r2 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r1.y)]);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 1i))]);
  r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.y) + 2i))]);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.x)], v1.xxxx, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 1i))], v1.xxxx, r3);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.x) + 2i))], v1.xxxx, r4);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.z)], v1.zzzz, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 1i))], v1.zzzz, r3);
  r4 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 2i))], v1.zzzz, r4);
  r2 = fma(cb4_4.tint_symbol[bitcast<i32>(r1.w)], v1.wwww, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 1i))], v1.wwww, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r1.w) + 2i))], v1.wwww, r4);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (254i < bitcast<i32>(r0.z))));
  let v_3 = bitcast<vec3<u32>>(r0.zzz);
  let v_4 = cb4_4.tint_symbol[0u].xyz;
  let v_5 = select(r2.xyz, v_4, (v_3 != vec3<u32>()));
  r4 = vec4<f32>(v_5.xyz, r4.w);
  let v_6 = bitcast<vec3<u32>>(r0.zzz);
  let v_7 = cb4_4.tint_symbol[1u].xyz;
  let v_8 = select(r3.xyz, v_7, (v_6 != vec3<u32>()));
  r5 = vec4<f32>(v_8.xyz, r5.w);
  let v_9 = bitcast<vec3<u32>>(r0.zzz);
  let v_10 = cb4_4.tint_symbol[2u].xyz;
  let v_11 = select(r1.xyz, v_10, (v_9 != vec3<u32>()));
  r6 = vec4<f32>(v_11.xyz, r6.w);
  r4.w = dot(r4.xyz, v5.xyz);
  r5.w = dot(r5.xyz, v5.xyz);
  r6.w = dot(r6.xyz, v5.xyz);
  let v_12 = (r5.www * cb1_1.tint_symbol_1[1u].xyz);
  r7 = vec4<f32>(v_12.xyz, r7.w);
  let v_13 = fma(r4.www, cb1_1.tint_symbol_1[0u].xyz, r7.xyz);
  r7 = vec4<f32>(v_13.xyz, r7.w);
  let v_14 = fma(r6.www, cb1_1.tint_symbol_1[2u].xyz, r7.xyz);
  r7 = vec4<f32>(v_14.xyz, r7.w);
  if ((bitcast<u32>(r0.z) != 0u)) {
    r8.x = dot(cb11_11.tint_symbol_7[0u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r8.y = dot(cb11_11.tint_symbol_7[1u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r8.z = dot(cb11_11.tint_symbol_7[2u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r9.x = dot(cb11_11.tint_symbol_7[0u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r9.y = dot(cb11_11.tint_symbol_7[1u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r9.z = dot(cb11_11.tint_symbol_7[2u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r10.x = dot(cb11_11.tint_symbol_7[0u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r10.y = dot(cb11_11.tint_symbol_7[1u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r10.z = dot(cb11_11.tint_symbol_7[2u].xyz, cb11_11.tint_symbol_7[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_15 = -(r9.zxzy);
    let v_16 = (r8.zxy + v_15.xyw);
    r0 = vec4<f32>(v_16.xy, r0.z, v_16.z);
    let v_17 = ((-(r9.yzxy)).xyz + r10.yzx);
    r11 = vec4<f32>(v_17.xyz, r11.w);
    let v_18 = (r0.xyw * r11.xyz);
    r12 = vec4<f32>(v_18.xyz, r12.w);
    let v_19 = -(r12.xyxz);
    let v_20 = fma(r0.wxy, r11.yzx, v_19.xyw);
    r0 = vec4<f32>(v_20.xy, r0.z, v_20.z);
    r4.w = dot(r0.xyw, r0.xyw);
    r4.w = inverseSqrt(r4.w);
    let v_21 = (r0.xyw * r4.www);
    r0 = vec4<f32>(v_21.xy, r0.z, v_21.z);
    let v_22 = (r9.xyz * v1.yyy);
    r9 = vec4<f32>(v_22.xyz, r9.w);
    let v_23 = fma(v1.zzz, r8.xyz, r9.xyz);
    r8 = vec4<f32>(v_23.xyz, r8.w);
    let v_24 = fma(v1.xxx, r10.xyz, r8.xyz);
    r8 = vec4<f32>(v_24.xyz, r8.w);
    r4.w = (v1.w + -0.5f);
    r4.w = (r4.w * 0.10000000149011611938f);
    let v_25 = -(r0.xywx);
    let v_26 = fma(r4.www, v_25.xyz, r8.xyz);
    r8 = vec4<f32>(v_26.xyz, r8.w);
    let v_27 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r9 = vec4<f32>(v_27.xyz, r9.w);
    let v_28 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r9.xyz);
    r9 = vec4<f32>(v_28.xyz, r9.w);
    let v_29 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r9.xyz);
    r0 = vec4<f32>(v_29.xy, r0.z, v_29.z);
  } else {
    r4.x = dot(r4.xyz, v4);
    r4.y = dot(r5.xyz, v4);
    r4.z = dot(r6.xyz, v4);
    let v_30 = (r4.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r5 = vec4<f32>(v_30.xyz, r5.w);
    let v_31 = fma(r4.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
    r4 = vec4<f32>(v_31.xy, r4.z, v_31.z);
    let v_32 = fma(r4.zzz, cb1_1.tint_symbol_1[2u].xyz, r4.xyw);
    r0 = vec4<f32>(v_32.xy, r0.z, v_32.z);
    let v_33 = bitcast<vec4<u32>>(r0.zzzz);
    let v_34 = cb4_4.tint_symbol[0u];
    r2 = select(r2, v_34, (v_33 != vec4<u32>()));
    let v_35 = bitcast<vec4<u32>>(r0.zzzz);
    let v_36 = cb4_4.tint_symbol[1u];
    r3 = select(r3, v_36, (v_35 != vec4<u32>()));
    let v_37 = bitcast<vec4<u32>>(r0.zzzz);
    let v_38 = cb4_4.tint_symbol[2u];
    r1 = select(r1, v_38, (v_37 != vec4<u32>()));
    r4 = vec4<f32>(v0.xyz, r4.w);
    r4.w = 1.0f;
    r8.x = dot(r2, r4);
    r8.y = dot(r3, r4);
    r8.z = dot(r1, r4);
  }
  let v_39 = (v7.xxz * cb8_8.tint_symbol_6[1u].xxy);
  r1 = vec4<f32>(v_39.xyz, r1.w);
  let v_40 = (r1.xyz * cb13_13.tint_symbol_5[1u].xxy);
  r1 = vec4<f32>(v_40.xyz, r1.w);
  r0.z = (v7.y * 6.28318500518798828125f);
  let v_41 = (cb13_13.tint_symbol_5[1u].zzw * cb8_8.tint_symbol_6[1u].zzw);
  r2 = vec4<f32>(v_41.xyz, r2.w);
  let v_42 = fma(cb2_2.tint_symbol_3[16u].xxx, r2.xyz, r0.zzz);
  r2 = vec4<f32>(v_42.xyz, r2.w);
  let v_43 = sin(r2.xyzx.xyz);
  r2 = vec4<f32>(v_43.xyz, r2.w);
  let v_44 = fma(r2.xyz, r1.xyz, r8.xyz);
  r1 = vec4<f32>(v_44.xyz, r1.w);
  r2 = (r1.yyyy * cb1_1.tint_symbol_1[9u]);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol_1[8u], r2);
  r2 = fma(r1.zzzz, cb1_1.tint_symbol_1[10u], r2);
  r2 = (r2 + cb1_1.tint_symbol_1[11u]);
  let v_45 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  let v_46 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r1 = vec4<f32>(v_46.xy, r1.z, v_46.z);
  let v_47 = fma(r1.zzz, cb1_1.tint_symbol_1[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_47.xyz, r1.w);
  o0 = ((r1.xyz + cb1_1.tint_symbol_1[3u].xyz)).xyzx;
  r1 = (cb3_3.tint_symbol_4[1u] + cb3_3.tint_symbol_4[43u]);
  r0.z = dot(r1, vec4<f32>(1.0f));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z < 0.0f)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.z) != 0u)) {
      r0.z = dot(-(cb3_3.tint_symbol_4[1u]), v6);
      r1.x = dot(-(cb3_3.tint_symbol_4[43u]), v7);
      let v_48 = (r0.zzz + r1.xxx);
      o1 = vec4<f32>(v_48.xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.z) != 0u)) {
        o1 = vec4<f32>(v6.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.z = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.z) != 0u)) {
          o1 = vec4<f32>(v7.xyz, o1.w);
          o1.w = 1.0f;
        } else {
          let v_49 = (r0.xyw + vec3<f32>(1.0f));
          r0 = vec4<f32>(v_49.xyz, r0.w);
          let v_50 = (r0.xyz * vec3<f32>(0.5f));
          r0 = vec4<f32>(v_50.xyz, r0.w);
          let v_51 = (r7.xyz + vec3<f32>(1.0f));
          r1 = vec4<f32>(v_51.xyz, r1.w);
          let v_52 = (r1.xyz * vec3<f32>(0.5f));
          r1 = vec4<f32>(v_52.xyz, r1.w);
          r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_4[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r4.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -11.0f)));
          r4.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v6.z)));
          r4.z = bitcast<f32>(select(0u, 4294967295u, (v6.z < 0.99999898672103881836f)));
          r4.y = bitcast<f32>((bitcast<u32>(r4.z) & bitcast<u32>(r4.y)));
          r5 = vec4<f32>(((v6.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r5.w);
          let v_53 = bitcast<vec3<u32>>(r4.yyy);
          let v_54 = select(v6.zzz, r5.xyz, (v_53 != vec3<u32>()));
          r4 = vec4<f32>(r4.x, v_54.xyz);
          let v_55 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.yzw) & bitcast<vec3<u32>>(r4.xxx)));
          r4 = vec4<f32>(v_55.xyz, r4.w);
          let v_56 = bitcast<vec3<u32>>(r3.www);
          let v_57 = select(r4.xyz, vec3<f32>(), (v_56 != vec3<u32>()));
          r4 = vec4<f32>(v_57.xyz, r4.w);
          r4.w = 1.0f;
          let v_58 = bitcast<vec4<u32>>(r3.zzzz);
          r4 = select(r4, vec4<f32>(), (v_58 != vec4<u32>()));
          r1.w = 1.0f;
          let v_59 = bitcast<vec4<u32>>(r3.yyyy);
          let v_60 = r1;
          r1 = select(r4, v_60, (v_59 != vec4<u32>()));
          r0.w = 1.0f;
          let v_61 = bitcast<vec4<u32>>(r3.xxxx);
          let v_62 = r0;
          o1 = select(r1, v_62, (v_61 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r2, cb0_0.tint_symbol_2[0u]);
  o2 = r2;
  let v_63 = &(x0[0u]);
  *(v_63) = vec4<f32>((*(v_63)).x, vec3<f32>());
  o3[0u] = x0[0u].x;
  o3[1u] = x0[0u].y;
  o3[2u] = x0[0u].z;
  o3[3u] = x0[0u].w;
  v = vec4<f32>(o3[0u], o3[1u], o3[2u], o3[3u]);
}

struct tint_symbol_9 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @builtin(position)
  o2 : vec4<f32>,
  @builtin(clip_distances)
  o3 : array<f32, 4u>,
  @location(15u)
  tint_symbol_8 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_9 {
  main_inner(v0, v1, v2, v4, v5, v6, v7);
  return tint_symbol_9(o0, o1, o2, o3, v);
}
