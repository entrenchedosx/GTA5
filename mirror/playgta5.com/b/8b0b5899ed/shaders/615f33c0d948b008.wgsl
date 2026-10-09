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

struct cb44_struct {
  tint_symbol_3 : array<vec4<f32>, 44u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

struct cb3_struct {
  tint_symbol_4 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb3_struct;

struct cb1_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct_1;

struct cb258_struct {
  tint_symbol_6 : array<vec4<f32>, 258u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb258_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec3<f32>, v5 : vec4<f32>, v6 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (254i < bitcast<i32>(r0.z))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r3.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r4.x = dot(cb11_11.tint_symbol_6[0u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.y = dot(cb11_11.tint_symbol_6[1u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.z = dot(cb11_11.tint_symbol_6[2u].xyz, cb11_11.tint_symbol_6[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_3 = -(r3.zzxy);
    let v_4 = (r2.zxy + v_3.yzw);
    r1 = vec4<f32>(r1.x, v_4.xyz);
    let v_5 = ((-(r3.yzxy)).xyz + r4.yzx);
    r5 = vec4<f32>(v_5.xyz, r5.w);
    let v_6 = (r1.yzw * r5.xyz);
    r6 = vec4<f32>(v_6.xyz, r6.w);
    let v_7 = -(r6.xxyz);
    let v_8 = fma(r1.wyz, r5.yzx, v_7.yzw);
    r1 = vec4<f32>(r1.x, v_8.xyz);
    r2.w = dot(r1.yzw, r1.yzw);
    r2.w = inverseSqrt(r2.w);
    let v_9 = (r1.yzw * r2.www);
    r1 = vec4<f32>(r1.x, v_9.xyz);
    let v_10 = (r3.xyz * v1.yyy);
    r3 = vec4<f32>(v_10.xyz, r3.w);
    let v_11 = fma(v1.zzz, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_11.xyz, r2.w);
    let v_12 = fma(v1.xxx, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_12.xyz, r2.w);
    r2.w = (v1.w + -0.5f);
    r2.w = (r2.w * 0.10000000149011611938f);
    let v_13 = -(r1.yzwy);
    let v_14 = fma(r2.www, v_13.xyz, r2.xyz);
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = (r1.zzz * cb1_1.tint_symbol_1[1u].xyz);
    r3 = vec4<f32>(v_15.xyz, r3.w);
    let v_16 = fma(r1.yyy, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
    r3 = vec4<f32>(v_16.xyz, r3.w);
    let v_17 = fma(r1.www, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
    r3 = vec4<f32>(v_17.xyz, r3.w);
  } else {
    r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
    r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
    r5 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
    r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
    r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r4);
    r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r5);
    r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r6);
    r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r4);
    r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r5);
    r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r6);
    r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r4);
    r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r5);
    r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r6);
    let v_18 = bitcast<vec3<u32>>(r1.xxx);
    let v_19 = cb4_4.tint_symbol[0u].xyz;
    let v_20 = select(r4.xyz, v_19, (v_18 != vec3<u32>()));
    r6 = vec4<f32>(v_20.xyz, r6.w);
    let v_21 = bitcast<vec3<u32>>(r1.xxx);
    let v_22 = cb4_4.tint_symbol[1u].xyz;
    let v_23 = select(r5.xyz, v_22, (v_21 != vec3<u32>()));
    r7 = vec4<f32>(v_23.xyz, r7.w);
    let v_24 = bitcast<vec3<u32>>(r1.xxx);
    let v_25 = cb4_4.tint_symbol[2u].xyz;
    let v_26 = select(r0.xyz, v_25, (v_24 != vec3<u32>()));
    r8 = vec4<f32>(v_26.xyz, r8.w);
    r1.y = dot(r6.xyz, v4);
    r1.z = dot(r7.xyz, v4);
    r1.w = dot(r8.xyz, v4);
    let v_27 = (r1.zzz * cb1_1.tint_symbol_1[1u].xyz);
    r6 = vec4<f32>(v_27.xyz, r6.w);
    let v_28 = fma(r1.yyy, cb1_1.tint_symbol_1[0u].xyz, r6.xyz);
    r6 = vec4<f32>(v_28.xyz, r6.w);
    let v_29 = fma(r1.www, cb1_1.tint_symbol_1[2u].xyz, r6.xyz);
    r3 = vec4<f32>(v_29.xyz, r3.w);
    let v_30 = bitcast<vec4<u32>>(r1.xxxx);
    let v_31 = cb4_4.tint_symbol[0u];
    r4 = select(r4, v_31, (v_30 != vec4<u32>()));
    let v_32 = bitcast<vec4<u32>>(r1.xxxx);
    let v_33 = cb4_4.tint_symbol[1u];
    r5 = select(r5, v_33, (v_32 != vec4<u32>()));
    let v_34 = bitcast<vec4<u32>>(r1.xxxx);
    let v_35 = cb4_4.tint_symbol[2u];
    r0 = select(r0, v_35, (v_34 != vec4<u32>()));
    r6 = vec4<f32>(v0.xyz, r6.w);
    r6.w = 1.0f;
    r2.x = dot(r4, r6);
    r2.y = dot(r5, r6);
    r2.z = dot(r0, r6);
  }
  let v_36 = (r1.yzw * cb9_9.tint_symbol_5[0u].yyy);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = (r0.xyz * v6.www);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = fma(r0.xyz, cb13_13.tint_symbol_4[2u].zzz, r2.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol_1[11u]);
  let v_39 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_39.xyz, r2.w);
  let v_40 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_40.xy, r0.z, v_40.z);
  let v_41 = fma(r0.zzz, cb1_1.tint_symbol_1[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_41.xyz, r0.w);
  o0 = ((r0.xyz + cb1_1.tint_symbol_1[3u].xyz)).xyzx;
  r0 = (cb3_3.tint_symbol_3[1u] + cb3_3.tint_symbol_3[43u]);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      r0.x = dot(-(cb3_3.tint_symbol_3[1u]), v5);
      r0.y = dot(-(cb3_3.tint_symbol_3[43u]), v6);
      let v_42 = (r0.yyy + r0.xxx);
      o1 = vec4<f32>(v_42.xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.x) != 0u)) {
        o1 = vec4<f32>(v5.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        let v_43 = (r3.xyz + vec3<f32>(1.0f));
        r0 = vec4<f32>(v_43.xyz, r0.w);
        let v_44 = (r0.xyz * vec3<f32>(0.5f));
        r0 = vec4<f32>(v_44.xyz, r0.w);
        r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xxxx == vec4<f32>(-3.0f, -4.0f, -5.0f, -9.0f))));
        let v_45 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xx == vec2<f32>(-10.0f, -11.0f))));
        r3 = vec4<f32>(v_45.xy, r3.zw);
        r3.z = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v5.z)));
        r3.w = bitcast<f32>(select(0u, 4294967295u, (v5.z < 0.99999898672103881836f)));
        r3.z = bitcast<f32>((bitcast<u32>(r3.w) & bitcast<u32>(r3.z)));
        r4 = vec4<f32>(((v5.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r4.w);
        let v_46 = bitcast<vec3<u32>>(r3.zzz);
        let v_47 = select(v5.zzz, r4.xyz, (v_46 != vec3<u32>()));
        r4 = vec4<f32>(v_47.xyz, r4.w);
        let v_48 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yyy) & bitcast<vec3<u32>>(r4.xyz)));
        r3 = vec4<f32>(r3.x, v_48.xyz);
        let v_49 = bitcast<vec3<u32>>(r3.xxx);
        let v_50 = select(r3.yzw, vec3<f32>(), (v_49 != vec3<u32>()));
        r3 = vec4<f32>(v_50.xyz, r3.w);
        r3.w = 1.0f;
        let v_51 = bitcast<vec4<u32>>(r2.wwww);
        r3 = select(r3, vec4<f32>(), (v_51 != vec4<u32>()));
        let v_52 = bitcast<vec4<u32>>(r2.zzzz);
        r3 = select(r3, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_52 != vec4<u32>()));
        r0.w = 1.0f;
        let v_53 = bitcast<vec4<u32>>(r2.yyyy);
        let v_54 = r0;
        r0 = select(r3, v_54, (v_53 != vec4<u32>()));
        r3 = vec4<f32>(v6.xyz, r3.w);
        r3.w = 1.0f;
        let v_55 = bitcast<vec4<u32>>(r2.xxxx);
        let v_56 = r3;
        o1 = select(r0, v_56, (v_55 != vec4<u32>()));
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_2[0u]);
  o2 = r1;
  let v_57 = &(x0[0u]);
  *(v_57) = vec4<f32>((*(v_57)).x, vec3<f32>());
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v4, v5, v6);
  return tint_symbol_8(o0, o1, o2, o3, v);
}
