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

struct cb16_struct {
  tint_symbol_1 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_2 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

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

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v4 : vec3<f32>) {
  r0.x = (v1.w * 255.0f);
  r0.x = round(r0.x);
  let v_1 = max(r0.x, 0.0f);
  r0.x = bitcast<f32>(select(u32(v_1), 4294967295u, (v_1 >= 4294967296.0f)));
  r0.x = bitcast<f32>((bitcast<i32>(r0.x) * 3i));
  r0.y = dot(cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz, cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz);
  r0.y = sqrt(r0.y);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    let v_2 = (cb4_4.tint_symbol[bitcast<i32>(r0.x)].xyz / r0.yyy);
    r1 = vec4<f32>(v_2.xyz, r1.w);
    let v_3 = (cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].xyz / r0.yyy);
    r2 = vec4<f32>(v_3.xyz, r2.w);
    let v_4 = (cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].xyz / r0.yyy);
    r3 = vec4<f32>(v_4.xyz, r3.w);
  } else {
    let v_5 = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))];
    r2 = vec4<f32>(v_5.xyz, r2.w);
    let v_6 = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))];
    r3 = vec4<f32>(v_6.xyz, r3.w);
    let v_7 = cb4_4.tint_symbol[bitcast<i32>(r0.x)];
    r1 = vec4<f32>(v_7.xyz, r1.w);
  }
  r1.w = cb4_4.tint_symbol[bitcast<i32>(r0.x)].w;
  r4 = vec4<f32>(v0.xyz, r4.w);
  r4.w = 1.0f;
  r0.y = dot(r1, r4);
  r2.w = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))].w;
  r0.z = dot(r2, r4);
  r3.w = cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))].w;
  r0.x = dot(r3, r4);
  let v_8 = (r0.zzz * cb1_1.tint_symbol_1[1u].xyz);
  r4 = vec4<f32>(v_8.xyz, r4.w);
  let v_9 = fma(r0.yyy, cb1_1.tint_symbol_1[0u].xyz, r4.xyz);
  r4 = vec4<f32>(v_9.xyz, r4.w);
  let v_10 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r4.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = (r4.xyz + cb1_1.tint_symbol_1[3u].xyz);
  r4 = vec4<f32>(v_11.xyz, r4.w);
  r5 = (r0.zzzz * cb1_1.tint_symbol_1[9u]);
  r5 = fma(r0.yyyy, cb1_1.tint_symbol_1[8u], r5);
  r0 = fma(r0.xxxx, cb1_1.tint_symbol_1[10u], r5);
  r0 = (r0 + cb1_1.tint_symbol_1[11u]);
  r5 = (cb3_3.tint_symbol_3[1u] + cb3_3.tint_symbol_3[43u]);
  r1.w = dot(r5, vec4<f32>(1.0f));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 0.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r1.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x >= -1.0f)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      let v_12 = dot(-(cb3_3.tint_symbol_3[1u]), v1);
      o1 = vec4<f32>(vec3<f32>(v_12, v_12, v_12).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r1.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -2.0f)));
      if ((bitcast<u32>(r1.w) != 0u)) {
        o1 = vec4<f32>(v1.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r1.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -3.0f)));
        if ((bitcast<u32>(r1.w) != 0u)) {
          o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
          r1.w = bitcast<f32>(select(0u, 4294967295u, !((0.0f == v1.y))));
          r5.x = dot(r1.xyz, v4);
          r5.y = dot(r2.xyz, v4);
          r5.z = dot(r3.xyz, v4);
          let v_13 = bitcast<vec3<u32>>(r1.www);
          let v_14 = select(v4, r5.xyz, (v_13 != vec3<u32>()));
          r2 = vec4<f32>(v_14.xyz, r2.w);
          let v_15 = ((-(r4.xyzx)).xyz + cb1_1.tint_symbol_1[15u].xyz);
          r3 = vec4<f32>(v_15.xyz, r3.w);
          let v_16 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
          r5 = vec4<f32>(v_16.xyz, r5.w);
          let v_17 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r5.xyz);
          r2 = vec4<f32>(v_17.xy, r2.z, v_17.z);
          let v_18 = fma(r2.zzz, cb1_1.tint_symbol_1[2u].xyz, r2.xyw);
          r2 = vec4<f32>(v_18.xyz, r2.w);
          r1.w = dot(r2.xyz, r2.xyz);
          r1.w = inverseSqrt(r1.w);
          let v_19 = (r1.www * r2.xyz);
          r2 = vec4<f32>(v_19.xyz, r2.w);
          r1.w = dot(r2.xyz, r3.xyz);
          r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
          r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w < 0.0f)));
          let v_20 = -(bitcast<vec4<i32>>(r2.wwww));
          r1.w = bitcast<f32>((bitcast<i32>(r1.w) + v_20.w));
          r1.w = f32(bitcast<i32>(r1.w));
          let v_21 = (r1.yyy * cb1_1.tint_symbol_1[1u].xyz);
          r3 = vec4<f32>(v_21.xyz, r3.w);
          let v_22 = fma(r1.xxx, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
          r3 = vec4<f32>(v_22.xyz, r3.w);
          let v_23 = fma(r1.zzz, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
          r1 = vec4<f32>(v_23.xyz, r1.w);
          r2.w = dot(r1.xyz, r1.xyz);
          r2.w = inverseSqrt(r2.w);
          let v_24 = fma(r2.xyz, r1.www, vec3<f32>(1.0f));
          r2 = vec4<f32>(v_24.xyz, r2.w);
          let v_25 = (r2.xyz * vec3<f32>(0.5f));
          r3 = vec4<f32>(v_25.xyz, r3.w);
          let v_26 = fma(r1.xyz, r2.www, vec3<f32>(1.0f));
          r1 = vec4<f32>(v_26.xyz, r1.w);
          let v_27 = (r1.xyz * vec3<f32>(0.5f));
          r1 = vec4<f32>(v_27.xyz, r1.w);
          r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_3[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r4.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_3[43u].x == -11.0f)));
          r5.x = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v1.z)));
          r5.y = bitcast<f32>(select(0u, 4294967295u, (v1.z < 0.99999898672103881836f)));
          r5.x = bitcast<f32>((bitcast<u32>(r5.y) & bitcast<u32>(r5.x)));
          r5 = vec4<f32>(r5.x, ((v1.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz);
          let v_28 = bitcast<vec3<u32>>(r5.xxx);
          let v_29 = select(v1.zzz, r5.yzw, (v_28 != vec3<u32>()));
          r5 = vec4<f32>(v_29.xyz, r5.w);
          let v_30 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r4.www) & bitcast<vec3<u32>>(r5.xyz)));
          r5 = vec4<f32>(v_30.xyz, r5.w);
          r2.z = bitcast<f32>((bitcast<u32>(r2.z) | bitcast<u32>(r2.w)));
          r5.w = 1.0f;
          let v_31 = bitcast<vec4<u32>>(r2.zzzz);
          r5 = select(r5, vec4<f32>(), (v_31 != vec4<u32>()));
          r1.w = 1.0f;
          let v_32 = bitcast<vec4<u32>>(r2.yyyy);
          let v_33 = r1;
          r1 = select(r5, v_33, (v_32 != vec4<u32>()));
          r3.w = 1.0f;
          let v_34 = bitcast<vec4<u32>>(r2.xxxx);
          let v_35 = r3;
          o1 = select(r1, v_35, (v_34 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_2[0u]);
  o2 = r0;
  let v_36 = &(x0[0u]);
  *(v_36) = vec4<f32>((*(v_36)).x, vec3<f32>());
  o0 = r4.xyz.xyzx;
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(4u) v4 : vec3<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v4);
  return tint_symbol_5(o0, o1, o2, o3, v);
}
