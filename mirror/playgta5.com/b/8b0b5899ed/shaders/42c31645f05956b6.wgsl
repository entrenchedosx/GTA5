enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

struct cb1_struct_1 {
  tint_symbol_6 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(8u) var<uniform> cb8_8 : cb1_struct_1;

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
  r3 = vec4<f32>(v0.xyz, r3.w);
  r3.w = 1.0f;
  r4.x = dot(r1, r3);
  r4.y = dot(r2, r3);
  r4.z = dot(r0, r3);
  let v_3 = (v7.xxz * cb8_8.tint_symbol_6[0u].xxy);
  r3 = vec4<f32>(v_3.xyz, r3.w);
  let v_4 = (r3.xyz * cb13_13.tint_symbol_5[1u].xxy);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  r0.w = (v7.y * 6.28318500518798828125f);
  let v_5 = (cb13_13.tint_symbol_5[1u].zzw * cb8_8.tint_symbol_6[0u].zzw);
  r5 = vec4<f32>(v_5.xyz, r5.w);
  let v_6 = fma(cb2_2.tint_symbol_3[16u].xxx, r5.xyz, r0.www);
  r5 = vec4<f32>(v_6.xyz, r5.w);
  let v_7 = sin(r5.xyzx.xyz);
  r5 = vec4<f32>(v_7.xyz, r5.w);
  let v_8 = fma(r5.xyz, r3.xyz, r4.xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  r4 = (r3.yyyy * cb1_1.tint_symbol_1[9u]);
  r4 = fma(r3.xxxx, cb1_1.tint_symbol_1[8u], r4);
  r4 = fma(r3.zzzz, cb1_1.tint_symbol_1[10u], r4);
  r4 = (r4 + cb1_1.tint_symbol_1[11u]);
  let v_9 = (r3.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r5 = vec4<f32>(v_9.xyz, r5.w);
  let v_10 = fma(r3.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
  r3 = vec4<f32>(v_10.xy, r3.z, v_10.z);
  let v_11 = fma(r3.zzz, cb1_1.tint_symbol_1[2u].xyz, r3.xyw);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  o0 = ((r3.xyz + cb1_1.tint_symbol_1[3u].xyz)).xyzx;
  r3 = (cb3_3.tint_symbol_4[1u] + cb3_3.tint_symbol_4[43u]);
  r0.w = dot(r3, vec4<f32>(1.0f));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      r0.w = dot(-(cb3_3.tint_symbol_4[1u]), v6);
      r1.w = dot(-(cb3_3.tint_symbol_4[43u]), v7);
      let v_12 = (r0.www + r1.www);
      o1 = vec4<f32>(v_12.xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.w) != 0u)) {
        o1 = vec4<f32>(v6.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.w) != 0u)) {
          o1 = vec4<f32>(v7.xyz, o1.w);
          o1.w = 1.0f;
        } else {
          r0.w = dot(r1.xyz, v4);
          r1.w = dot(r2.xyz, v4);
          r2.w = dot(r0.xyz, v4);
          let v_13 = (r1.www * cb1_1.tint_symbol_1[1u].xyz);
          r3 = vec4<f32>(v_13.xyz, r3.w);
          let v_14 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
          r3 = vec4<f32>(v_14.xyz, r3.w);
          let v_15 = fma(r2.www, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
          r3 = vec4<f32>(v_15.xyz, r3.w);
          r0.w = dot(r1.xyz, v5.xyz);
          r1.x = dot(r2.xyz, v5.xyz);
          r0.x = dot(r0.xyz, v5.xyz);
          let v_16 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
          r1 = vec4<f32>(v_16.xyz, r1.w);
          let v_17 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
          r0 = vec4<f32>(r0.x, v_17.xyz);
          let v_18 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
          r0 = vec4<f32>(v_18.xyz, r0.w);
          let v_19 = (r3.xyz + vec3<f32>(1.0f));
          r1 = vec4<f32>(v_19.xyz, r1.w);
          let v_20 = (r1.xyz * vec3<f32>(0.5f));
          r1 = vec4<f32>(v_20.xyz, r1.w);
          let v_21 = (r0.xyz + vec3<f32>(1.0f));
          r0 = vec4<f32>(v_21.xyz, r0.w);
          let v_22 = (r0.xyz * vec3<f32>(0.5f));
          r0 = vec4<f32>(v_22.xyz, r0.w);
          r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_4[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r3.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -11.0f)));
          r3.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v6.z)));
          r3.z = bitcast<f32>(select(0u, 4294967295u, (v6.z < 0.99999898672103881836f)));
          r3.y = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r3.y)));
          r5 = vec4<f32>(((v6.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r5.w);
          let v_23 = bitcast<vec3<u32>>(r3.yyy);
          let v_24 = select(v6.zzz, r5.xyz, (v_23 != vec3<u32>()));
          r3 = vec4<f32>(r3.x, v_24.xyz);
          let v_25 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yzw) & bitcast<vec3<u32>>(r3.xxx)));
          r3 = vec4<f32>(v_25.xyz, r3.w);
          let v_26 = bitcast<vec3<u32>>(r2.www);
          let v_27 = select(r3.xyz, vec3<f32>(), (v_26 != vec3<u32>()));
          r3 = vec4<f32>(v_27.xyz, r3.w);
          r3.w = 1.0f;
          let v_28 = bitcast<vec4<u32>>(r2.zzzz);
          r3 = select(r3, vec4<f32>(), (v_28 != vec4<u32>()));
          r0.w = 1.0f;
          let v_29 = bitcast<vec4<u32>>(r2.yyyy);
          let v_30 = r0;
          r0 = select(r3, v_30, (v_29 != vec4<u32>()));
          r1.w = 1.0f;
          let v_31 = bitcast<vec4<u32>>(r2.xxxx);
          let v_32 = r1;
          o1 = select(r0, v_32, (v_31 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r4, cb0_0.tint_symbol_2[0u]);
  o2 = r4;
  let v_33 = &(x0[0u]);
  *(v_33) = vec4<f32>((*(v_33)).x, vec3<f32>());
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>, @location(7u) v7 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v4, v5, v6, v7);
  return tint_symbol_8(o0, o1, o2, o3, v);
}
