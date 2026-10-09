enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 1u>,
}

@group(0u) @binding(15u) var<uniform> v_1 : tint_symbol_5;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v3 : vec3<f32>) {
  let v_2 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  o0 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f >= cb2_2.tint_symbol_2[16u].y)));
  r0.y = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
  r1 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (cb2_2.tint_symbol_2[16u].y < 0.00600000005215406418f)));
  r0.w = (cb1_1.tint_symbol[3u].x * 0.20000000298023223877f);
  let v_5 = -(r0.wwww);
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r0.w >= v_5.x)));
  r0.w = fract(abs(r0.wwww).w);
  let v_6 = -(r0.wwww);
  let v_7 = bitcast<u32>(r2.x);
  r0.w = select(v_6.w, r0.w, (v_7 != 0u));
  r0.w = (r0.w * 5.0f);
  r0.w = fma(cb2_2.tint_symbol_2[16u].x, 2.5f, r0.w);
  r0.w = sin(r0.wwww.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.30000001192092895508f < abs(r0.wwww).w)));
  let v_8 = bitcast<u32>(r0.z);
  let v_9 = r0.w;
  r0.z = select(bitcast<f32>(v_1.tint_symbol_4[0i].x), v_9, (v_8 != 0u));
  let v_10 = bitcast<u32>(r0.x);
  r0.x = select(r0.z, 0.0f, (v_10 != 0u));
  r1 = fma(r0.yyyy, r1, vec4<f32>(0.0f, 0.0f, 0.00000099999999747524f, 0.0f));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0.xxxx) & bitcast<vec4<u32>>(r1)));
  r1 = (cb3_3.tint_symbol_3[1u] + cb3_3.tint_symbol_3[43u]);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.0f)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x >= -1.0f)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      let v_11 = dot(-(cb3_3.tint_symbol_3[1u]), v1);
      o1 = vec4<f32>(vec3<f32>(v_11, v_11, v_11).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -2.0f)));
      if ((bitcast<u32>(r1.x) != 0u)) {
        o1 = vec4<f32>(v1.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -3.0f)));
        if ((bitcast<u32>(r1.x) != 0u)) {
          o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
          r1.x = dot(v3, v3);
          r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.10000000149011611938f)));
          let v_12 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r1.xxx) != vec3<u32>()));
          r1 = vec4<f32>(v_12.xyz, r1.w);
          let v_13 = (r1.yyy * cb1_1.tint_symbol[1u].xyz);
          r2 = vec4<f32>(v_13.xyz, r2.w);
          let v_14 = fma(r1.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
          r1 = vec4<f32>(v_14.xy, r1.z, v_14.z);
          let v_15 = fma(r1.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyw);
          r1 = vec4<f32>(v_15.xyz, r1.w);
          r1.w = dot(r1.xyz, r1.xyz);
          r1.w = inverseSqrt(r1.w);
          let v_16 = fma(r1.xyz, r1.www, vec3<f32>(1.0f));
          r1 = vec4<f32>(v_16.xyz, r1.w);
          let v_17 = (r1.xyz * vec3<f32>(0.5f));
          r1 = vec4<f32>(v_17.xyz, r1.w);
          r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r3.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -11.0f)));
          r3.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v1.z)));
          r3.z = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.99999898672103881836f)));
          r3.y = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r3.y)));
          r4 = vec4<f32>(((v1.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r4.w);
          let v_18 = bitcast<vec3<u32>>(r3.yyy);
          let v_19 = select(v1.zzz, r4.xyz, (v_18 != vec3<u32>()));
          r3 = vec4<f32>(r3.x, v_19.xyz);
          let v_20 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yzw) & bitcast<vec3<u32>>(r3.xxx)));
          r3 = vec4<f32>(v_20.xyz, r3.w);
          r2.z = bitcast<f32>((bitcast<u32>(r2.z) | bitcast<u32>(r2.w)));
          r3.w = 1.0f;
          let v_21 = bitcast<vec4<u32>>(r2.zzzz);
          r3 = select(r3, vec4<f32>(), (v_21 != vec4<u32>()));
          let v_22 = bitcast<vec4<u32>>(r2.yyyy);
          r3 = select(r3, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_22 != vec4<u32>()));
          r1.w = 1.0f;
          let v_23 = bitcast<vec4<u32>>(r2.xxxx);
          let v_24 = r1;
          o1 = select(r3, v_24, (v_23 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o2 = r0;
  let v_25 = &(x0[0u]);
  *(v_25) = vec4<f32>((*(v_25)).x, vec3<f32>());
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_7 {
  main_inner(v0, v1, v3);
  return tint_symbol_7(o0, o1, o2, o3, v);
}
