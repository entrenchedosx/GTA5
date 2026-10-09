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

struct cb44_struct {
  tint_symbol_2 : array<vec4<f32>, 44u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v3 : vec3<f32>) {
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  o0 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r1 = (cb3_3.tint_symbol_2[1u] + cb3_3.tint_symbol_2[43u]);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.0f)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x >= -1.0f)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      let v_4 = dot(-(cb3_3.tint_symbol_2[1u]), v1);
      o1 = vec4<f32>(vec3<f32>(v_4, v_4, v_4).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -2.0f)));
      if ((bitcast<u32>(r1.x) != 0u)) {
        o1 = vec4<f32>(v1.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -3.0f)));
        if ((bitcast<u32>(r1.x) != 0u)) {
          o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
          r1.x = dot(v3, v3);
          r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.10000000149011611938f)));
          let v_5 = select(v3, vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r1.xxx) != vec3<u32>()));
          r1 = vec4<f32>(v_5.xyz, r1.w);
          let v_6 = (r1.yyy * cb1_1.tint_symbol[1u].xyz);
          r2 = vec4<f32>(v_6.xyz, r2.w);
          let v_7 = fma(r1.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
          r1 = vec4<f32>(v_7.xy, r1.z, v_7.z);
          let v_8 = fma(r1.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyw);
          r1 = vec4<f32>(v_8.xyz, r1.w);
          r1.w = dot(r1.xyz, r1.xyz);
          r1.w = inverseSqrt(r1.w);
          let v_9 = fma(r1.xyz, r1.www, vec3<f32>(1.0f));
          r1 = vec4<f32>(v_9.xyz, r1.w);
          let v_10 = (r1.xyz * vec3<f32>(0.5f));
          r1 = vec4<f32>(v_10.xyz, r1.w);
          r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r3.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -11.0f)));
          r3.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v1.z)));
          r3.z = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.99999898672103881836f)));
          r3.y = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r3.y)));
          r4 = vec4<f32>(((v1.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r4.w);
          let v_11 = bitcast<vec3<u32>>(r3.yyy);
          let v_12 = select(v1.zzz, r4.xyz, (v_11 != vec3<u32>()));
          r3 = vec4<f32>(r3.x, v_12.xyz);
          let v_13 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yzw) & bitcast<vec3<u32>>(r3.xxx)));
          r3 = vec4<f32>(v_13.xyz, r3.w);
          r2.z = bitcast<f32>((bitcast<u32>(r2.z) | bitcast<u32>(r2.w)));
          r3.w = 1.0f;
          let v_14 = bitcast<vec4<u32>>(r2.zzzz);
          r3 = select(r3, vec4<f32>(), (v_14 != vec4<u32>()));
          let v_15 = bitcast<vec4<u32>>(r2.yyyy);
          r3 = select(r3, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_15 != vec4<u32>()));
          r1.w = 1.0f;
          let v_16 = bitcast<vec4<u32>>(r2.xxxx);
          let v_17 = r1;
          o1 = select(r3, v_17, (v_16 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o2 = r0;
  let v_18 = &(x0[0u]);
  *(v_18) = vec4<f32>((*(v_18)).x, vec3<f32>());
  o3[0u] = x0[0u].x;
  o3[1u] = x0[0u].y;
  o3[2u] = x0[0u].z;
  o3[3u] = x0[0u].w;
  v = vec4<f32>(o3[0u], o3[1u], o3[2u], o3[3u]);
}

struct tint_symbol_4 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @builtin(position)
  o2 : vec4<f32>,
  @builtin(clip_distances)
  o3 : array<f32, 4u>,
  @location(15u)
  tint_symbol_3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v3);
  return tint_symbol_4(o0, o1, o2, o3, v);
}
