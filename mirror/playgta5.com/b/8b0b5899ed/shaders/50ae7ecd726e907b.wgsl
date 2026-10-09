enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

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

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v3 : vec4<f32>) {
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
      let v_4 = dot(-(cb3_3.tint_symbol_2[43u]), v3);
      o1 = vec4<f32>(vec3<f32>(v_4, v_4, v_4).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -2.0f)));
      if ((bitcast<u32>(r1.x) != 0u)) {
        o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
      } else {
        let v_5 = (v1.yyy * cb1_1.tint_symbol[1u].xyz);
        r1 = vec4<f32>(v_5.xyz, r1.w);
        let v_6 = fma(v1.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
        r1 = vec4<f32>(v_6.xyz, r1.w);
        let v_7 = fma(v1.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
        r1 = vec4<f32>(v_7.xyz, r1.w);
        let v_8 = (r1.xyz + vec3<f32>(1.0f));
        r1 = vec4<f32>(v_8.xyz, r1.w);
        let v_9 = (r1.xyz * vec3<f32>(0.5f));
        r1 = vec4<f32>(v_9.xyz, r1.w);
        r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[43u].xxxx == vec4<f32>(-3.0f, -4.0f, -5.0f, -9.0f))));
        r3.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -10.0f)));
        r2.w = bitcast<f32>((bitcast<u32>(r2.w) | bitcast<u32>(r3.x)));
        r3 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r2.wwww) != vec4<u32>()));
        let v_10 = bitcast<vec4<u32>>(r2.zzzz);
        r3 = select(r3, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_10 != vec4<u32>()));
        r1.w = 1.0f;
        let v_11 = bitcast<vec4<u32>>(r2.yyyy);
        let v_12 = r1;
        r1 = select(r3, v_12, (v_11 != vec4<u32>()));
        r3 = vec4<f32>(v3.xyz, r3.w);
        r3.w = 1.0f;
        let v_13 = bitcast<vec4<u32>>(r2.xxxx);
        let v_14 = r3;
        o1 = select(r1, v_14, (v_13 != vec4<u32>()));
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o2 = r0;
  let v_15 = &(x0[0u]);
  *(v_15) = vec4<f32>((*(v_15)).x, vec3<f32>());
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(3u) v3 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v3);
  return tint_symbol_4(o0, o1, o2, o3, v);
}
