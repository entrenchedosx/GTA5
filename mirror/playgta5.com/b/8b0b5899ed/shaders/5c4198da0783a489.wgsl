enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

struct cb17_struct {
  tint_symbol_4 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb17_struct;

struct cb1_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct_1;

var<private> icb0 : array<vec4<f32>, 6u> = array<vec4<f32>, 6u>(vec4<f32>(0.40000000596046447754f, 0.0f, 1.0f, 1.0f), vec4<f32>(0.20000000298023223877f, 0.40000000596046447754f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.60000002384185791016f, -1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.69999998807907104492f, 1.0f, -1.0f), vec4<f32>(0.10000000149011611938f, 0.80000001192092895508f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.89999997615814208984f, 1.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>, v7 : vec4<f32>, v8 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
  r1 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
  r2 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
  r3 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r2);
  r3 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r3);
  r1 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r1);
  r2 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r2);
  r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r3);
  r3.x = dot(r1.xyz, v5);
  r3.y = dot(r2.xyz, v5);
  r3.z = dot(r0.xyz, v5);
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r5.x = dot(r1, r4);
  r5.y = dot(r2, r4);
  r5.z = dot(r0, r4);
  let v_3 = (r3.xyz * cb9_9.tint_symbol_5[0u].yyy);
  r4 = vec4<f32>(v_3.xyz, r4.w);
  let v_4 = (r4.xyz * v8.www);
  r4 = vec4<f32>(v_4.xyz, r4.w);
  let v_5 = fma(r4.xyz, cb13_13.tint_symbol_4[2u].zzz, r5.xyz);
  r4 = vec4<f32>(v_5.xyz, r4.w);
  r5 = (r4.yyyy * cb1_1.tint_symbol_1[9u]);
  r5 = fma(r4.xxxx, cb1_1.tint_symbol_1[8u], r5);
  r5 = fma(r4.zzzz, cb1_1.tint_symbol_1[10u], r5);
  r5 = (r5 + cb1_1.tint_symbol_1[11u]);
  let v_6 = (r4.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r6 = vec4<f32>(v_6.xyz, r6.w);
  let v_7 = fma(r4.xxx, cb1_1.tint_symbol_1[0u].xyz, r6.xyz);
  r4 = vec4<f32>(v_7.xy, r4.z, v_7.z);
  let v_8 = fma(r4.zzz, cb1_1.tint_symbol_1[2u].xyz, r4.xyw);
  r4 = vec4<f32>(v_8.xyz, r4.w);
  o0 = ((r4.xyz + cb1_1.tint_symbol_1[3u].xyz)).xyzx;
  r4 = (cb3_3.tint_symbol_3[1u] + cb3_3.tint_symbol_3[43u]);
  r0.w = dot(r4, vec4<f32>(1.0f));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      r0.w = dot(-(cb3_3.tint_symbol_3[1u]), v7);
      r1.w = dot(-(cb3_3.tint_symbol_3[43u]), v8);
      let v_9 = (r0.www + r1.www);
      o1 = vec4<f32>(v_9.xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.w) != 0u)) {
        o1 = vec4<f32>(v7.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.w) != 0u)) {
          o1 = vec4<f32>(v8.xyz, o1.w);
          o1.w = 1.0f;
        } else {
          let v_10 = (r3.yyy * cb1_1.tint_symbol_1[1u].xyz);
          r4 = vec4<f32>(v_10.xyz, r4.w);
          let v_11 = fma(r3.xxx, cb1_1.tint_symbol_1[0u].xyz, r4.xyz);
          r3 = vec4<f32>(v_11.xy, r3.z, v_11.z);
          let v_12 = fma(r3.zzz, cb1_1.tint_symbol_1[2u].xyz, r3.xyw);
          r3 = vec4<f32>(v_12.xyz, r3.w);
          r0.w = dot(r1.xyz, v6.xyz);
          r1.x = dot(r2.xyz, v6.xyz);
          r0.x = dot(r0.xyz, v6.xyz);
          let v_13 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
          r1 = vec4<f32>(v_13.xyz, r1.w);
          let v_14 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
          r0 = vec4<f32>(r0.x, v_14.xyz);
          let v_15 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
          r0 = vec4<f32>(v_15.xyz, r0.w);
          let v_16 = (r3.xyz + vec3<f32>(1.0f));
          r1 = vec4<f32>(v_16.xyz, r1.w);
          let v_17 = (r1.xyz * vec3<f32>(0.5f));
          r1 = vec4<f32>(v_17.xyz, r1.w);
          let v_18 = (r0.xyz + vec3<f32>(1.0f));
          r0 = vec4<f32>(v_18.xyz, r0.w);
          let v_19 = (r0.xyz * vec3<f32>(0.5f));
          r0 = vec4<f32>(v_19.xyz, r0.w);
          r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r3.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -11.0f)));
          r3.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v7.z)));
          r3.z = bitcast<f32>(select(0u, 4294967295u, (v7.z < 0.99999898672103881836f)));
          r3.y = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r3.y)));
          r4 = vec4<f32>(((v7.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r4.w);
          let v_20 = bitcast<vec3<u32>>(r3.yyy);
          let v_21 = select(v7.zzz, r4.xyz, (v_20 != vec3<u32>()));
          r3 = vec4<f32>(r3.x, v_21.xyz);
          let v_22 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yzw) & bitcast<vec3<u32>>(r3.xxx)));
          r3 = vec4<f32>(v_22.xyz, r3.w);
          let v_23 = bitcast<vec3<u32>>(r2.www);
          let v_24 = select(r3.xyz, vec3<f32>(), (v_23 != vec3<u32>()));
          r3 = vec4<f32>(v_24.xyz, r3.w);
          r3.w = 1.0f;
          let v_25 = bitcast<vec4<u32>>(r2.zzzz);
          r3 = select(r3, vec4<f32>(), (v_25 != vec4<u32>()));
          r0.w = 1.0f;
          let v_26 = bitcast<vec4<u32>>(r2.yyyy);
          let v_27 = r0;
          r0 = select(r3, v_27, (v_26 != vec4<u32>()));
          r1.w = 1.0f;
          let v_28 = bitcast<vec4<u32>>(r2.xxxx);
          let v_29 = r1;
          o1 = select(r0, v_29, (v_28 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((v4.x == 0.0f))));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = ((-(v4.yyyy)).x + 0.5f);
    r0.x = (r0.x * 0.5f);
    let v_30 = r0.x;
    let v_31 = max(v_30, -2147483648.0f);
    r0.x = bitcast<f32>(select(select(i32(v_31), 2147483647i, (v_31 >= 2147483648.0f)), 0i, !((v_30 == v_30))));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) >= 2i)));
    r1 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_32 = bitcast<vec2<u32>>(r0.yy);
    let v_33 = r1.xy;
    let v_34 = select(r1.zw, v_33, (v_32 != vec2<u32>()));
    o2 = vec4<f32>(v_34.xy, o2.zw);
    r0.y = fract(cb13_13.tint_symbol_4[16u].w);
    let v_35 = fma(r0.yy, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r0.x)].xy);
    let v_36 = r0;
    r0 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
    let v_37 = (r0.yz * icb0[bitcast<i32>(r0.x)].zw);
    o2 = vec4<f32>(o2.xy, v_37.xy);
  } else {
    o2 = vec4<f32>();
  }
  x0[0u].x = dot(r5, cb0_0.tint_symbol_2[0u]);
  o3 = r5;
  let v_38 = &(x0[0u]);
  *(v_38) = vec4<f32>((*(v_38)).x, vec3<f32>());
  o4[0u] = x0[0u].x;
  o4[1u] = x0[0u].y;
  o4[2u] = x0[0u].z;
  o4[3u] = x0[0u].w;
  v = vec4<f32>(o4[0u], o4[1u], o4[2u], o4[3u]);
}

struct tint_symbol_7 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @builtin(position)
  o3 : vec4<f32>,
  @builtin(clip_distances)
  o4 : array<f32, 4u>,
  @location(15u)
  tint_symbol_6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>, @location(8u) v8 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v4, v5, v6, v7, v8);
  return tint_symbol_7(o0, o1, o2, o3, o4, v);
}
