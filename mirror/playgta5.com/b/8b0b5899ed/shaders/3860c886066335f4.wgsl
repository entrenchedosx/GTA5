enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

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

struct cb1_struct_1 {
  tint_symbol_3 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb1_struct_1;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec2<i32>) {
  r0 = vec4<f32>(vec2<f32>(v0).xy, r0.zw);
  r0.z = 0.0f;
  let v_1 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_1.xyz, r1.w);
  let v_2 = (cb4_4.tint_symbol_3[0u].xy + vec2<f32>(256.0f));
  r0 = vec4<f32>(r0.xy, v_2.xy);
  let v_3 = ((-(r1.xxxy)).zw + r0.zw);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = ((-(abs(r0.zzzw))).zw + vec2<f32>(256.0f));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = clamp(((r0.zzzw * vec4<f32>(0.0f, 0.0f, 0.10000000149011611938f, 0.10000000149011611938f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_5.xy);
  r0.z = min(r0.w, r0.z);
  let v_6 = -(cb4_4.tint_symbol_3[0u].xyxx);
  let v_7 = (r1.xy + v_6.xy);
  r2 = vec4<f32>(v_7.xy, r2.zw);
  let v_8 = (r2.xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(v_8.xy, r2.zw);
  let v_9 = r2.xy;
  let v_10 = max(v_9, vec2<f32>(-2147483648.0f));
  let v_11 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_10), vec2<i32>(2147483647i), (v_10 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_9 == v_9))));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r3 = textureLoad(t0, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r0.w = (r0.z * r3.x);
  o0.z = fma(r3.x, r0.z, r1.z);
  r3 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xyxy) + vec4<i32>(1i, 0i, -1i, 0i)));
  let v_12 = r3;
  r4 = vec4<f32>(v_12.zw, r4.zw);
  r4 = vec4<f32>(r4.xy, vec2<f32>());
  r4 = textureLoad(t0, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r3 = textureLoad(t0, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r2 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r2.xyxy) + vec4<i32>(0i, 1i, 0i, -1i)));
  let v_13 = r2;
  r5 = vec4<f32>(v_13.zw, r5.zw);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r5 = textureLoad(t0, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2 = textureLoad(t0, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w));
  r4.y = r3.x;
  r4.z = r5.x;
  r4.w = r2.x;
  r2 = fma(r4, r0.zzzz, r0.wwww);
  let v_14 = ((-(r2.ywyy)).xy + r2.xz);
  r2 = vec4<f32>(v_14.xy, r2.zw);
  r2.z = 1.0f;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = inverseSqrt(r0.z);
  let v_15 = fma(r2.xy, r0.zz, vec2<f32>(0.00000999999974737875f));
  r1 = vec4<f32>(r1.xy, v_15.xy);
  r0.z = dot(r1.zw, r1.zw);
  r2.x = inverseSqrt(r0.z);
  let v_16 = (r1.zw * r2.xx);
  r1 = vec4<f32>(r1.xy, v_16.xy);
  r0.z = sqrt(r0.z);
  r0.z = fma(r0.z, 4.0f, 1.0f);
  r0.z = sqrt(r0.z);
  r0.z = (r0.z + -1.0f);
  let v_17 = fma((-(r1.zwzz)).xy, r0.zz, r0.xy);
  r0 = vec4<f32>(v_17.xy, r0.zw);
  let v_18 = fma((-(r1.zwzz)).xy, r0.zz, r1.xy);
  o0 = vec3<f32>(v_18.xy, o0.xyz.z).xyzx;
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.wwww, cb1_1.tint_symbol[10u], r1);
  r0 = (r0 + cb1_1.tint_symbol[11u]);
  r1 = (cb3_3.tint_symbol_2[1u] + cb3_3.tint_symbol_2[43u]);
  r1.x = dot(r1, vec4<f32>(1.0f));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.0f)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x >= -1.0f)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
    } else {
      r1.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -2.0f)));
      if ((bitcast<u32>(r1.x) != 0u)) {
        o1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
      } else {
        r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb3_3.tint_symbol_2[43u].xxxx == vec4<f32>(-3.0f, -4.0f, -5.0f, -9.0f))));
        r2.x = bitcast<f32>(select(0u, 4294967295u, (cb3_3.tint_symbol_2[43u].x == -10.0f)));
        r1.w = bitcast<f32>((bitcast<u32>(r1.w) | bitcast<u32>(r2.x)));
        r2 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r1.wwww) != vec4<u32>()));
        let v_19 = bitcast<vec4<u32>>(r1.zzzz);
        r2 = select(r2, vec4<f32>(0.5f, 0.5f, 0.5f, 1.0f), (v_19 != vec4<u32>()));
        let v_20 = bitcast<vec4<u32>>(r1.yyyy);
        r2 = select(r2, vec4<f32>(0.5f, 0.5f, 1.0f, 1.0f), (v_20 != vec4<u32>()));
        let v_21 = bitcast<vec4<u32>>(r1.xxxx);
        o1 = select(r2, vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f), (v_21 != vec4<u32>()));
      }
    }
  } else {
    o1 = vec4<f32>();
  }
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  o2 = r0;
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
fn main(@location(0u) v0 : vec2<i32>) -> tint_symbol_5 {
  main_inner(v0);
  return tint_symbol_5(o0, o1, o2, o3, v);
}
