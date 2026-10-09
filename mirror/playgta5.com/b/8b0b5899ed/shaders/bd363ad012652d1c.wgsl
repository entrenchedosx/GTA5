enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  r1 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r2 = (cb3_3.tint_symbol_2[1u] + cb3_3.tint_symbol_2[43u]);
  r0.w = dot(r2, vec4<f32>(1.0f));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_5 = dot(-(cb3_3.tint_symbol_2[1u]), v1);
      o1 = vec4<f32>(vec3<f32>(v_5, v_5, v_5).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.w) != 0u)) {
        o1 = vec4<f32>(v1.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.w) != 0u)) {
          o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
          let v_6 = ((-(r0.xyzx)).xyz + cb1_1.tint_symbol[15u].xyz);
          r2 = vec4<f32>(v_6.xyz, r2.w);
          let v_7 = (v4.yyy * cb1_1.tint_symbol[1u].xyz);
          r3 = vec4<f32>(v_7.xyz, r3.w);
          let v_8 = fma(v4.xxx, cb1_1.tint_symbol[0u].xyz, r3.xyz);
          r3 = vec4<f32>(v_8.xyz, r3.w);
          let v_9 = fma(v4.zzz, cb1_1.tint_symbol[2u].xyz, r3.xyz);
          r3 = vec4<f32>(v_9.xyz, r3.w);
          r0.w = dot(r3.xyz, r3.xyz);
          r0.w = inverseSqrt(r0.w);
          let v_10 = (r0.www * r3.xyz);
          r3 = vec4<f32>(v_10.xyz, r3.w);
          r0.w = dot(r3.xyz, r2.xyz);
          r2.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
          r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
          let v_11 = -(bitcast<vec4<i32>>(r2.xxxx));
          r0.w = bitcast<f32>((bitcast<i32>(r0.w) + v_11.w));
          r0.w = f32(bitcast<i32>(r0.w));
          let v_12 = (v5.yyy * cb1_1.tint_symbol[1u].xyz);
          r2 = vec4<f32>(v_12.xyz, r2.w);
          let v_13 = fma(v5.xxx, cb1_1.tint_symbol[0u].xyz, r2.xyz);
          r2 = vec4<f32>(v_13.xyz, r2.w);
          let v_14 = fma(v5.zzz, cb1_1.tint_symbol[2u].xyz, r2.xyz);
          r2 = vec4<f32>(v_14.xyz, r2.w);
          r2.w = dot(r2.xyz, r2.xyz);
          r2.w = inverseSqrt(r2.w);
          let v_15 = fma(r3.xyz, r0.www, vec3<f32>(1.0f));
          r3 = vec4<f32>(v_15.xyz, r3.w);
          let v_16 = (r3.xyz * vec3<f32>(0.5f));
          r3 = vec4<f32>(v_16.xyz, r3.w);
          let v_17 = fma(r2.xyz, r2.www, vec3<f32>(1.0f));
          r2 = vec4<f32>(v_17.xyz, r2.w);
          let v_18 = (r2.xyz * vec3<f32>(0.5f));
          r2 = vec4<f32>(v_18.xyz, r2.w);
          r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -11.0f)));
          r5.x = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v1.z)));
          r5.y = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.99999898672103881836f)));
          r5.x = bitcast<f32>((bitcast<u32>(r5.y) & bitcast<u32>(r5.x)));
          r5 = vec4<f32>(r5.x, ((v1.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz);
          let v_19 = bitcast<vec3<u32>>(r5.xxx);
          let v_20 = select(v1.zzz, r5.yzw, (v_19 != vec3<u32>()));
          r5 = vec4<f32>(v_20.xyz, r5.w);
          let v_21 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.www) & bitcast<vec3<u32>>(r5.xyz)));
          r5 = vec4<f32>(v_21.xyz, r5.w);
          r0.w = bitcast<f32>((bitcast<u32>(r4.z) | bitcast<u32>(r4.w)));
          r5.w = 1.0f;
          let v_22 = bitcast<vec4<u32>>(r0.wwww);
          r5 = select(r5, vec4<f32>(), (v_22 != vec4<u32>()));
          r2.w = 1.0f;
          let v_23 = bitcast<vec4<u32>>(r4.yyyy);
          let v_24 = r2;
          r2 = select(r5, v_24, (v_23 != vec4<u32>()));
          r3.w = 1.0f;
          let v_25 = bitcast<vec4<u32>>(r4.xxxx);
          let v_26 = r3;
          o1 = select(r2, v_26, (v_25 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o2 = r1;
  let v_27 = &(x0[0u]);
  *(v_27) = vec4<f32>((*(v_27)).x, vec3<f32>());
  o0 = r0.xyz.xyzx;
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v4, v5);
  return tint_symbol_4(o0, o1, o2, o3, v);
}
