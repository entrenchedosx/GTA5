enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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
  r3.x = dot(r1.xyz, v4);
  r3.y = dot(r2.xyz, v4);
  r3.z = dot(r0.xyz, v4);
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r1.x = dot(r1, r4);
  r1.y = dot(r2, r4);
  r1.z = dot(r0, r4);
  let v_3 = (r3.xyz * cb9_9.tint_symbol_5[0u].yyy);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz * v6.www);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r0.xyz, cb13_13.tint_symbol_4[2u].zzz, r1.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol_1[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol_1[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol_1[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol_1[11u]);
  let v_6 = (r0.yyy * cb1_1.tint_symbol_1[1u].xyz);
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r0.xxx, cb1_1.tint_symbol_1[0u].xyz, r2.xyz);
  r0 = vec4<f32>(v_7.xy, r0.z, v_7.z);
  let v_8 = fma(r0.zzz, cb1_1.tint_symbol_1[2u].xyz, r0.xyw);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  o0 = ((r0.xyz + cb1_1.tint_symbol_1[3u].xyz)).xyzx;
  r0 = (cb3_3.tint_symbol_3[1u] + cb3_3.tint_symbol_3[43u]);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      r0.x = dot(-(cb3_3.tint_symbol_3[1u]), v5);
      r0.y = dot(-(cb3_3.tint_symbol_3[43u]), v6);
      let v_9 = (r0.yyy + r0.xxx);
      o1 = vec4<f32>(v_9.xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.x) != 0u)) {
        o1 = vec4<f32>(v5.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        let v_10 = (r3.yyy * cb1_1.tint_symbol_1[1u].xyz);
        r0 = vec4<f32>(v_10.xyz, r0.w);
        let v_11 = fma(r3.xxx, cb1_1.tint_symbol_1[0u].xyz, r0.xyz);
        r0 = vec4<f32>(v_11.xyz, r0.w);
        let v_12 = fma(r3.zzz, cb1_1.tint_symbol_1[2u].xyz, r0.xyz);
        r0 = vec4<f32>(v_12.xyz, r0.w);
        let v_13 = (r0.xyz + vec3<f32>(1.0f));
        r0 = vec4<f32>(v_13.xyz, r0.w);
        let v_14 = (r0.xyz * vec3<f32>(0.5f));
        r0 = vec4<f32>(v_14.xyz, r0.w);
        r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xxxx == vec4<f32>(-3.0f, -4.0f, -5.0f, -9.0f))));
        let v_15 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xx == vec2<f32>(-10.0f, -11.0f))));
        r3 = vec4<f32>(v_15.xy, r3.zw);
        r3.z = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v5.z)));
        r3.w = bitcast<f32>(select(0u, 4294967295u, (v5.z < 0.99999898672103881836f)));
        r3.z = bitcast<f32>((bitcast<u32>(r3.w) & bitcast<u32>(r3.z)));
        r4 = vec4<f32>(((v5.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r4.w);
        let v_16 = bitcast<vec3<u32>>(r3.zzz);
        let v_17 = select(v5.zzz, r4.xyz, (v_16 != vec3<u32>()));
        r4 = vec4<f32>(v_17.xyz, r4.w);
        let v_18 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yyy) & bitcast<vec3<u32>>(r4.xyz)));
        r3 = vec4<f32>(r3.x, v_18.xyz);
        let v_19 = bitcast<vec3<u32>>(r3.xxx);
        let v_20 = select(r3.yzw, vec3<f32>(), (v_19 != vec3<u32>()));
        r3 = vec4<f32>(v_20.xyz, r3.w);
        r3.w = 1.0f;
        let v_21 = bitcast<vec4<u32>>(r2.wwww);
        r3 = select(r3, vec4<f32>(), (v_21 != vec4<u32>()));
        let v_22 = bitcast<vec4<u32>>(r2.zzzz);
        r3 = select(r3, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_22 != vec4<u32>()));
        r0.w = 1.0f;
        let v_23 = bitcast<vec4<u32>>(r2.yyyy);
        let v_24 = r0;
        r0 = select(r3, v_24, (v_23 != vec4<u32>()));
        r3 = vec4<f32>(v6.xyz, r3.w);
        r3.w = 1.0f;
        let v_25 = bitcast<vec4<u32>>(r2.xxxx);
        let v_26 = r3;
        o1 = select(r0, v_26, (v_25 != vec4<u32>()));
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_2[0u]);
  o2 = r1;
  let v_27 = &(x0[0u]);
  *(v_27) = vec4<f32>((*(v_27)).x, vec3<f32>());
  o3[0u] = x0[0u].x;
  o3[1u] = x0[0u].y;
  o3[2u] = x0[0u].z;
  o3[3u] = x0[0u].w;
  v = vec4<f32>(o3[0u], o3[1u], o3[2u], o3[3u]);
}

struct tint_symbol_7 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @builtin(position)
  o2 : vec4<f32>,
  @builtin(clip_distances)
  o3 : array<f32, 4u>,
  @location(15u)
  tint_symbol_6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>, @location(6u) v6 : vec4<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v2, v4, v5, v6);
  return tint_symbol_7(o0, o1, o2, o3, v);
}
