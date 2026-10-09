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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_6 {
  tint_symbol_5 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_6;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_2 = r0;
  let v_3 = max(v_2, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_3), vec4<i32>(2147483647i), (v_3 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_2 == v_2))));
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
  r1.w = dot(r1, r3);
  r2.w = dot(r2, r3);
  r0.w = dot(r0, r3);
  let v_4 = (r2.www * cb1_1.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = fma(r1.www, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
  r3 = vec4<f32>(v_5.xyz, r3.w);
  let v_6 = fma(r0.www, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  o0 = ((r3.xyz + cb1_1.tint_symbol_1[3u].xyz)).xyzx;
  r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_3[16u].y)));
  r3.y = select(1.0f, 0.0f, (bitcast<u32>(r3.x) != 0u));
  r4 = (r2.wwww * cb1_1.tint_symbol_1[9u]);
  r4 = fma(r1.wwww, cb1_1.tint_symbol_1[8u], r4);
  r4 = fma(r0.wwww, cb1_1.tint_symbol_1[10u], r4);
  r4 = (r4 + cb1_1.tint_symbol_1[11u]);
  let v_7 = (r3.yyy * r4.xyw);
  r5 = vec4<f32>(v_7.xy, r5.z, v_7.z);
  r0.w = fma(r3.y, r4.z, 0.00000999999974737875f);
  r5.z = (r0.w * r3.y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_3[16u].y < 0.00600000005215406418f)));
  r1.w = (cb1_1.tint_symbol_1[3u].x * 0.20000000298023223877f);
  let v_8 = -(r1.wwww);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= v_8.w)));
  r1.w = fract(abs(r1.wwww).w);
  let v_9 = -(r1.wwww);
  let v_10 = bitcast<u32>(r2.w);
  r1.w = select(v_9.w, r1.w, (v_10 != 0u));
  r1.w = (r1.w * 5.0f);
  r1.w = fma(cb2_2.tint_symbol_3[16u].x, 2.5f, r1.w);
  r1.w = sin(r1.wwww.w);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r1.wwww).w)));
  let v_11 = bitcast<u32>(r0.w);
  let v_12 = r1.w;
  r0.w = select(bitcast<f32>(v_1.tint_symbol_5[0i].x), v_12, (v_11 != 0u));
  let v_13 = bitcast<u32>(r3.x);
  r0.w = select(r0.w, 0.0f, (v_13 != 0u));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.wwww) & bitcast<vec4<u32>>(r5)));
  r4 = (cb3_3.tint_symbol_4[1u] + cb3_3.tint_symbol_4[43u]);
  r0.w = dot(r4, vec4<f32>(1.0f));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_14 = dot(-(cb3_3.tint_symbol_4[1u]), v5);
      o1 = vec4<f32>(vec3<f32>(v_14, v_14, v_14).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.w) != 0u)) {
        o1 = vec4<f32>(v5.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.w) != 0u)) {
          o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
          r0.w = dot(r1.xyz, v4);
          r1.x = dot(r2.xyz, v4);
          r0.x = dot(r0.xyz, v4);
          let v_15 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
          r1 = vec4<f32>(v_15.xyz, r1.w);
          let v_16 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
          r0 = vec4<f32>(r0.x, v_16.xyz);
          let v_17 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw);
          r0 = vec4<f32>(v_17.xyz, r0.w);
          let v_18 = (r0.xyz + vec3<f32>(1.0f));
          r0 = vec4<f32>(v_18.xyz, r0.w);
          let v_19 = (r0.xyz * vec3<f32>(0.5f));
          r0 = vec4<f32>(v_19.xyz, r0.w);
          r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_4[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r2.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_4[43u].x == -11.0f)));
          r2.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v5.z)));
          r2.z = bitcast<f32>(select(0u, 4294967295u, (v5.z < 0.99999898672103881836f)));
          r2.y = bitcast<f32>((bitcast<u32>(r2.z) & bitcast<u32>(r2.y)));
          r4 = vec4<f32>(((v5.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r4.w);
          let v_20 = bitcast<vec3<u32>>(r2.yyy);
          let v_21 = select(v5.zzz, r4.xyz, (v_20 != vec3<u32>()));
          r2 = vec4<f32>(r2.x, v_21.xyz);
          let v_22 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.yzw) & bitcast<vec3<u32>>(r2.xxx)));
          r2 = vec4<f32>(v_22.xyz, r2.w);
          r1.z = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.w)));
          r2.w = 1.0f;
          let v_23 = bitcast<vec4<u32>>(r1.zzzz);
          r2 = select(r2, vec4<f32>(), (v_23 != vec4<u32>()));
          let v_24 = bitcast<vec4<u32>>(r1.yyyy);
          r2 = select(r2, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_24 != vec4<u32>()));
          r0.w = 1.0f;
          let v_25 = bitcast<vec4<u32>>(r1.xxxx);
          let v_26 = r0;
          o1 = select(r2, v_26, (v_25 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r3, cb0_0.tint_symbol_2[0u]);
  o2 = r3;
  let v_27 = &(x0[0u]);
  *(v_27) = vec4<f32>((*(v_27)).x, vec3<f32>());
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_8 {
  main_inner(v0, v1, v2, v4, v5);
  return tint_symbol_8(o0, o1, o2, o3, v);
}
