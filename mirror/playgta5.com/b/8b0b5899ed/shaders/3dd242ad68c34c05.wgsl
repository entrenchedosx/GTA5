enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb17_struct {
  tint_symbol_2 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb17_struct;

struct cb44_struct {
  tint_symbol_3 : array<vec4<f32>, 44u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

struct cb17_struct_1 {
  tint_symbol_4 : array<vec4<f32>, 17u>,
}

@group(0u) @binding(13u) var<uniform> cb13_13 : cb17_struct_1;

struct cb1_struct_1 {
  tint_symbol_5 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(9u) var<uniform> cb9_9 : cb1_struct_1;

struct cb1_struct_2 {
  tint_symbol_6 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct_2;

var<private> icb0 : array<vec4<f32>, 6u> = array<vec4<f32>, 6u>(vec4<f32>(0.40000000596046447754f, 0.0f, 1.0f, 1.0f), vec4<f32>(0.20000000298023223877f, 0.40000000596046447754f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.60000002384185791016f, -1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.69999998807907104492f, 1.0f, -1.0f), vec4<f32>(0.10000000149011611938f, 0.80000001192092895508f, 1.0f, 1.0f), vec4<f32>(0.10000000149011611938f, 0.89999997615814208984f, 1.0f, 1.0f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec2<f32>, v5 : vec3<f32>, v6 : vec4<f32>) {
  r0.x = clamp(((v1.zzzz + vec4<f32>(-0.5f))).x, 0.0f, 1.0f);
  r0.x = (r0.x + r0.x);
  let v_1 = (v5 * cb9_9.tint_symbol_5[0u].xxx);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  let v_2 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(r0.xyz, cb13_13.tint_symbol_4[2u].yyy, v0);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (v5 * cb9_9.tint_symbol_5[0u].yyy);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = (r1.xyz * v2.www);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(r1.xyz, cb13_13.tint_symbol_4[2u].zzz, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = (v2.xxz * cb8_8.tint_symbol_6[0u].xxy);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = (r1.xyz * cb13_13.tint_symbol_4[1u].xxy);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  r0.w = (v2.y * 6.28318500518798828125f);
  let v_9 = (cb13_13.tint_symbol_4[1u].zzw * cb8_8.tint_symbol_6[0u].zzw);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma(cb2_2.tint_symbol_2[16u].xxx, r2.xyz, r0.www);
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = sin(r2.xyzx.xyz);
  r2 = vec4<f32>(v_11.xyz, r2.w);
  let v_12 = fma(r2.xyz, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  let v_13 = (r0.yyy * cb1_1.tint_symbol[1u].xyz);
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = fma(r0.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_14.xy, r0.z, v_14.z);
  let v_15 = fma(r0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_15.xyz, r0.w);
  o0 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0 = (cb3_3.tint_symbol_3[1u] + cb3_3.tint_symbol_3[43u]);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      r0.x = dot(-(cb3_3.tint_symbol_3[1u]), v1);
      r0.y = dot(-(cb3_3.tint_symbol_3[43u]), v2);
      let v_16 = (r0.yyy + r0.xxx);
      o1 = vec4<f32>(v_16.xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.x) != 0u)) {
        o1 = vec4<f32>(v1.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.x) != 0u)) {
          o1 = vec4<f32>(v2.xyz, o1.w);
          o1.w = 1.0f;
        } else {
          let v_17 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
          r0 = vec4<f32>(v_17.xyz, r0.w);
          let v_18 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
          r0 = vec4<f32>(v_18.xyz, r0.w);
          let v_19 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
          r0 = vec4<f32>(v_19.xyz, r0.w);
          let v_20 = (v6.yyy * cb1_1.tint_symbol[1u].xyz);
          r2 = vec4<f32>(v_20.xyz, r2.w);
          let v_21 = fma(v6.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
          r2 = vec4<f32>(v_21.xyz, r2.w);
          let v_22 = fma(v6.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
          r2 = vec4<f32>(v_22.xyz, r2.w);
          let v_23 = (r0.xyz + vec3<f32>(1.0f));
          r0 = vec4<f32>(v_23.xyz, r0.w);
          let v_24 = (r0.xyz * vec3<f32>(0.5f));
          r0 = vec4<f32>(v_24.xyz, r0.w);
          let v_25 = (r2.xyz + vec3<f32>(1.0f));
          r2 = vec4<f32>(v_25.xyz, r2.w);
          let v_26 = (r2.xyz * vec3<f32>(0.5f));
          r2 = vec4<f32>(v_26.xyz, r2.w);
          r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r4.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -11.0f)));
          r4.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v1.z)));
          r4.z = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.99999898672103881836f)));
          r4.y = bitcast<f32>((bitcast<u32>(r4.z) & bitcast<u32>(r4.y)));
          r5 = vec4<f32>(((v1.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r5.w);
          let v_27 = bitcast<vec3<u32>>(r4.yyy);
          let v_28 = select(v1.zzz, r5.xyz, (v_27 != vec3<u32>()));
          r4 = vec4<f32>(r4.x, v_28.xyz);
          let v_29 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.yzw) & bitcast<vec3<u32>>(r4.xxx)));
          r4 = vec4<f32>(v_29.xyz, r4.w);
          let v_30 = bitcast<vec3<u32>>(r3.www);
          let v_31 = select(r4.xyz, vec3<f32>(), (v_30 != vec3<u32>()));
          r4 = vec4<f32>(v_31.xyz, r4.w);
          r4.w = 1.0f;
          let v_32 = bitcast<vec4<u32>>(r3.zzzz);
          r4 = select(r4, vec4<f32>(), (v_32 != vec4<u32>()));
          r2.w = 1.0f;
          let v_33 = bitcast<vec4<u32>>(r3.yyyy);
          let v_34 = r2;
          r2 = select(r4, v_34, (v_33 != vec4<u32>()));
          r0.w = 1.0f;
          let v_35 = bitcast<vec4<u32>>(r3.xxxx);
          let v_36 = r0;
          o1 = select(r2, v_36, (v_35 != vec4<u32>()));
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
    let v_37 = r0.x;
    let v_38 = max(v_37, -2147483648.0f);
    r0.x = bitcast<f32>(select(select(i32(v_38), 2147483647i, (v_38 >= 2147483648.0f)), 0i, !((v_37 == v_37))));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) >= 2i)));
    r2 = fma(v4.yxxy, vec4<f32>(-1.0f, 1.0f, 1.0f, -1.0f), vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
    let v_39 = bitcast<vec2<u32>>(r0.yy);
    let v_40 = r2.xy;
    let v_41 = select(r2.zw, v_40, (v_39 != vec2<u32>()));
    o2 = vec4<f32>(v_41.xy, o2.zw);
    r0.y = fract(cb13_13.tint_symbol_4[16u].w);
    let v_42 = fma(r0.yy, vec2<f32>(-0.80000001192092895508f, 0.60000002384185791016f), icb0[bitcast<i32>(r0.x)].xy);
    let v_43 = r0;
    r0 = vec4<f32>(v_43.x, v_42.xy, v_43.w);
    let v_44 = (r0.yz * icb0[bitcast<i32>(r0.x)].zw);
    o2 = vec4<f32>(o2.xy, v_44.xy);
  } else {
    o2 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o3 = r1;
  let v_45 = &(x0[0u]);
  *(v_45) = vec4<f32>((*(v_45)).x, vec3<f32>());
  o4[0u] = x0[0u].x;
  o4[1u] = x0[0u].y;
  o4[2u] = x0[0u].z;
  o4[3u] = x0[0u].w;
  v = vec4<f32>(o4[0u], o4[1u], o4[2u], o4[3u]);
}

struct tint_symbol_8 {
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
  tint_symbol_7 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec2<f32>, @location(5u) v5 : vec3<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v4, v5, v6);
  return tint_symbol_8(o0, o1, o2, o3, o4, v);
}
