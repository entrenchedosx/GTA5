enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  o0 = ((r1.xyz + cb1_1.tint_symbol[3u].xyz)).xyzx;
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
          let v_5 = (v4.yyy * cb1_1.tint_symbol[1u].xyz);
          r1 = vec4<f32>(v_5.xyz, r1.w);
          let v_6 = fma(v4.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
          r1 = vec4<f32>(v_6.xyz, r1.w);
          let v_7 = fma(v4.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
          r1 = vec4<f32>(v_7.xyz, r1.w);
          let v_8 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
          r2 = vec4<f32>(v_8.xyz, r2.w);
          let v_9 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
          r2 = vec4<f32>(v_9.xyz, r2.w);
          let v_10 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
          r2 = vec4<f32>(v_10.xyz, r2.w);
          let v_11 = (r1.xyz + vec3<f32>(1.0f));
          r1 = vec4<f32>(v_11.xyz, r1.w);
          let v_12 = (r1.xyz * vec3<f32>(0.5f));
          r1 = vec4<f32>(v_12.xyz, r1.w);
          let v_13 = (r2.xyz + vec3<f32>(1.0f));
          r2 = vec4<f32>(v_13.xyz, r2.w);
          let v_14 = (r2.xyz * vec3<f32>(0.5f));
          r2 = vec4<f32>(v_14.xyz, r2.w);
          r3.x = dot(cb12_12.tint_symbol_3[1u], cb12_12.tint_symbol_3[1u]);
          r3.x = bitcast<f32>(select(0u, 4294967295u, !((r3.x == 0.0f))));
          r4.z = dot(cb12_12.tint_symbol_3[1u], vec4<f32>(0.25f));
          r4 = vec4<f32>(vec2<f32>(), r4.zw);
          let v_15 = bitcast<vec3<u32>>(r3.xxx);
          let v_16 = select(r4.xyz, vec3<f32>(1.0f, 0.0f, 0.0f), (v_15 != vec3<u32>()));
          r3 = vec4<f32>(v_16.xyz, r3.w);
          r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r5.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -11.0f)));
          r5.y = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v1.z)));
          r5.z = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.99999898672103881836f)));
          r5.y = bitcast<f32>((bitcast<u32>(r5.z) & bitcast<u32>(r5.y)));
          r6 = vec4<f32>(((v1.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz, r6.w);
          let v_17 = bitcast<vec3<u32>>(r5.yyy);
          let v_18 = select(v1.zzz, r6.xyz, (v_17 != vec3<u32>()));
          r5 = vec4<f32>(r5.x, v_18.xyz);
          let v_19 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r5.yzw) & bitcast<vec3<u32>>(r5.xxx)));
          r5 = vec4<f32>(v_19.xyz, r5.w);
          r5.w = 1.0f;
          let v_20 = bitcast<vec4<u32>>(r4.wwww);
          r5 = select(r5, vec4<f32>(), (v_20 != vec4<u32>()));
          r3.w = 1.0f;
          let v_21 = bitcast<vec4<u32>>(r4.zzzz);
          let v_22 = r3;
          r3 = select(r5, v_22, (v_21 != vec4<u32>()));
          r2.w = 1.0f;
          let v_23 = bitcast<vec4<u32>>(r4.yyyy);
          let v_24 = r2;
          r2 = select(r3, v_24, (v_23 != vec4<u32>()));
          r1.w = 1.0f;
          let v_25 = bitcast<vec4<u32>>(r4.xxxx);
          let v_26 = r1;
          o1 = select(r2, v_26, (v_25 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o2 = r0;
  let v_27 = &(x0[0u]);
  *(v_27) = vec4<f32>((*(v_27)).x, vec3<f32>());
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v4, v5);
  return tint_symbol_5(o0, o1, o2, o3, v);
}
