enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

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

struct cb10_struct {
  tint_symbol_3 : array<vec4<f32>, 10u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb10_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  r0.x = (cb11_11.tint_symbol_3[0u].x * cb11_11.tint_symbol_3[8u].y);
  let v_1 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  let v_2 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = (r0.yzw + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = (v1.yyy * cb1_1.tint_symbol[1u].yzx);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = fma(v1.xxx, cb1_1.tint_symbol[0u].yzx, r1.xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  let v_7 = fma(v1.zzz, cb1_1.tint_symbol[2u].yzx, r1.xyz);
  r1 = vec4<f32>(v_7.xyz, r1.w);
  let v_8 = abs(v3.xxxx);
  r0.x = (r0.x * v_8.x);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < v3.x)));
  r1.w = select(-1.0f, 1.0f, (bitcast<u32>(r1.w) != 0u));
  let v_9 = (cb11_11.tint_symbol_3[0u].zz * cb11_11.tint_symbol_3[9u].zw);
  r2 = vec4<f32>(v_9.xy, r2.zw);
  let v_10 = (v2.xy + cb11_11.tint_symbol_3[9u].xy);
  r2 = vec4<f32>(r2.xy, v_10.xy);
  let v_11 = (r2.zw * vec2<f32>(6.28318500518798828125f));
  r2 = vec4<f32>(r2.xy, v_11.xy);
  let v_12 = sin(r2.zzzw.zw);
  r2 = vec4<f32>(r2.xy, v_12.xy);
  let v_13 = (r2.xy * r2.zw);
  r2 = vec4<f32>(v_13.xy, r2.zw);
  let v_14 = sin(r2.xyxx.xy);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  let v_15 = fma(v3.yy, r2.xy, r0.yz);
  r3 = vec4<f32>(v_15.xy, r3.zw);
  r0.y = dot(r2.xy, r2.xy);
  r3.z = fma(v3.y, r0.y, r0.w);
  let v_16 = -(cb1_1.tint_symbol[15u].xxyz);
  let v_17 = (r3.xyz + v_16.yzw);
  r0 = vec4<f32>(r0.x, v_17.xyz);
  let v_18 = -(cb1_1.tint_symbol[14u].xyzx);
  r0.y = dot(r0.yzw, v_18.xyz);
  r0.y = max(r0.y, 0.00999999977648258209f);
  r0.y = (cb11_11.tint_symbol_3[8u].x / r0.y);
  let v_19 = ((-(r3.zxyz)).xyz + cb1_1.tint_symbol[15u].zxy);
  r2 = vec4<f32>(v_19.xyz, r2.w);
  let v_20 = (r1.xyz * r2.xyz);
  r4 = vec4<f32>(v_20.xyz, r4.w);
  let v_21 = -(r4.xyzx);
  let v_22 = fma(r2.zxy, r1.yzx, v_21.xyz);
  r1 = vec4<f32>(v_22.xyz, r1.w);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_23 = (r0.zzz * r1.xyz);
  r1 = vec4<f32>(v_23.xyz, r1.w);
  r0.x = (r0.y * r0.x);
  r0.z = clamp(r0.xxxx.z, 0.0f, 1.0f);
  r0.x = fma(r0.z, 0.5f, r0.x);
  r0.y = max(r0.y, 0.00000000999999993923f);
  r0.x = (r0.x / r0.y);
  r0.x = (r1.w * r0.x);
  let v_24 = fma(r0.xxx, r1.xyz, r3.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  r1 = (r0.yyyy * cb11_11.tint_symbol_3[5u]);
  r1 = fma(r0.xxxx, cb11_11.tint_symbol_3[4u], r1);
  r1 = fma(r0.zzzz, cb11_11.tint_symbol_3[6u], r1);
  r1 = (r1 + cb11_11.tint_symbol_3[7u]);
  r2 = (cb3_3.tint_symbol_2[1u] + cb3_3.tint_symbol_2[43u]);
  r0.w = dot(r2, vec4<f32>(1.0f));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x >= -1.0f)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      let v_25 = dot(-(cb3_3.tint_symbol_2[1u]), v2);
      o1 = vec4<f32>(vec3<f32>(v_25, v_25, v_25).xyz, o1.w);
      o1.w = 1.0f;
    } else {
      r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -2.0f)));
      if ((bitcast<u32>(r0.w) != 0u)) {
        o1 = vec4<f32>(v2.xyz, o1.w);
        o1.w = 1.0f;
      } else {
        r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -3.0f)));
        if ((bitcast<u32>(r0.w) != 0u)) {
          o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
        } else {
          r2 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[43u].xxxx == vec4<f32>(-4.0f, -5.0f, -9.0f, -10.0f))));
          r0.w = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -11.0f)));
          r3.x = bitcast<f32>(select(0u, 4294967295u, (0.00000099999999747524f < v2.z)));
          r3.y = bitcast<f32>(select(0u, 4294967295u, (v2.z < 0.99999898672103881836f)));
          r3.x = bitcast<f32>((bitcast<u32>(r3.y) & bitcast<u32>(r3.x)));
          r3 = vec4<f32>(r3.x, ((v2.zzz * vec3<f32>(1.0f, 0.0f, 0.0f))).xyz);
          let v_26 = bitcast<vec3<u32>>(r3.xxx);
          let v_27 = select(v2.zzz, r3.yzw, (v_26 != vec3<u32>()));
          r3 = vec4<f32>(v_27.xyz, r3.w);
          let v_28 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.www) & bitcast<vec3<u32>>(r3.xyz)));
          r3 = vec4<f32>(v_28.xyz, r3.w);
          r0.w = bitcast<f32>((bitcast<u32>(r2.z) | bitcast<u32>(r2.w)));
          r3.w = 1.0f;
          let v_29 = bitcast<vec4<u32>>(r0.wwww);
          r3 = select(r3, vec4<f32>(), (v_29 != vec4<u32>()));
          let v_30 = fma(v1, vec3<f32>(0.5f), vec3<f32>(0.5f));
          r4 = vec4<f32>(v_30.xyz, r4.w);
          r4.w = 1.0f;
          let v_31 = bitcast<vec4<u32>>(r2.yyyy);
          let v_32 = r4;
          r3 = select(r3, v_32, (v_31 != vec4<u32>()));
          let v_33 = bitcast<vec4<u32>>(r2.xxxx);
          o1 = select(r3, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_33 != vec4<u32>()));
        }
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r1, cb0_0.tint_symbol_1[0u]);
  o2 = r1;
  let v_34 = &(x0[0u]);
  *(v_34) = vec4<f32>((*(v_34)).x, vec3<f32>());
  o0 = r0.xyz.xyzx;
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
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_5(o0, o1, o2, o3, v);
}
