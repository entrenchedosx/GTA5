enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb14_struct {
  tint_symbol : array<vec4<f32>, 14u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb14_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb44_struct {
  tint_symbol_2 : array<vec4<f32>, 44u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb44_struct;

struct cb2_struct {
  tint_symbol_3 : array<vec4<f32>, 2u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb2_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec3<f32>, v3 : vec2<f32>, v4 : vec2<f32>) {
  let v_1 = (v4.xxx * cb1_1.tint_symbol[12u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.xyz * cb12_12.tint_symbol_3[1u].xxx);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (v4.yyy * cb1_1.tint_symbol[13u].xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = (r1.xyz * cb12_12.tint_symbol_3[1u].yyy);
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r2 = vec4<f32>(((v3 + vec2<f32>(-0.5f))).xy, r2.zw);
  let v_5 = (r1.xyz * r2.yyy);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = -(r1.xyzx);
  let v_7 = fma(r2.xxx, r0.xyz, v_6.xyz);
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = (r0.xyz + v0);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.w = dot(cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r1.x = dot(cb1_1.tint_symbol[1u].xyz, r0.xyz);
  r1.y = dot(cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r2 = (r1.xxxx * cb1_1.tint_symbol[9u]);
  r2 = fma(r0.wwww, cb1_1.tint_symbol[8u], r2);
  r1 = fma(r1.yyyy, cb1_1.tint_symbol[10u], r2);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = ((r0.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
  r0 = (cb3_3.tint_symbol_2[1u] + cb3_3.tint_symbol_2[43u]);
  r0.x = dot(r0, vec4<f32>(1.0f));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.0f)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      let v_9 = dot(-(cb3_3.tint_symbol_2[1u]), v1);
      o1 = vec4<f32>(vec3<f32>(v_9, v_9, v_9).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.x) != 0u)) {
        o1 = vec4<f32>(v1.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.x) != 0u)) {
          o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
          let v_10 = (v2.yyy * cb1_1.tint_symbol[1u].xyz);
          r0 = vec4<f32>(v_10.xyz, r0.w);
          let v_11 = fma(v2.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
          r0 = vec4<f32>(v_11.xyz, r0.w);
          let v_12 = fma(v2.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
          r0 = vec4<f32>(v_12.xyz, r0.w);
          let v_13 = (r0.xyz + vec3<f32>(1.0f));
          r0 = vec4<f32>(v_13.xyz, r0.w);
          let v_14 = (r0.xyz * vec3<f32>(0.5f));
          r0 = vec4<f32>(v_14.xyz, r0.w);
          r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r3.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -11.0f)));
          r3.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v1.z)));
          r3.z = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.99999898672103881836f)));
          r3.y = bitcast<f32>((bitcast<u32>(r3.z) & bitcast<u32>(r3.y)));
          r4 = vec4<f32>(((v1.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r4.w);
          let v_15 = bitcast<vec3<u32>>(r3.yyy);
          let v_16 = select(v1.zzz, r4.xyz, (v_15 != vec3<u32>()));
          r3 = vec4<f32>(r3.x, v_16.xyz);
          let v_17 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.yzw) & bitcast<vec3<u32>>(r3.xxx)));
          r3 = vec4<f32>(v_17.xyz, r3.w);
          r2.z = bitcast<f32>((bitcast<u32>(r2.z) | bitcast<u32>(r2.w)));
          r3.w = 1.0f;
          let v_18 = bitcast<vec4<u32>>(r2.zzzz);
          r3 = select(r3, vec4<f32>(), (v_18 != vec4<u32>()));
          let v_19 = bitcast<vec4<u32>>(r2.yyyy);
          r3 = select(r3, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_19 != vec4<u32>()));
          r0.w = 1.0f;
          let v_20 = bitcast<vec4<u32>>(r2.xxxx);
          let v_21 = r0;
          o1 = select(r3, v_21, (v_20 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o2 = r1;
  let v_22 = &(x0[0u]);
  *(v_22) = vec4<f32>((*(v_22)).x, vec3<f32>());
  o3[0u] = x0[0u].x;
  o3[1u] = x0[0u].y;
  o3[2u] = x0[0u].z;
  o3[3u] = x0[0u].w;
  v = vec4<f32>(o3[0u], o3[1u], o3[2u], o3[3u]);
}

struct tint_symbol_5 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @builtin(position)
  o2 : vec4<f32>,
  @builtin(clip_distances)
  o3 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec3<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec2<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_5(o0, o1, o2, o3, v);
}
