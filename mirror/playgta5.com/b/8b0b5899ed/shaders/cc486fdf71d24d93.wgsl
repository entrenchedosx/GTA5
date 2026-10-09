enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

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

struct cb258_struct {
  tint_symbol_3 : array<vec4<f32>, 258u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb258_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>, v4 : vec3<f32>, v5 : vec4<f32>) {
  r0 = (v2 * vec4<f32>(255.001953125f));
  let v_1 = r0;
  let v_2 = max(v_1, vec4<f32>(-2147483648.0f));
  r0 = bitcast<vec4<f32>>(select(select(vec4<i32>(v_2), vec4<i32>(2147483647i), (v_2 >= vec4<f32>(2147483648.0f))), vec4<i32>(), !((v_1 == v_1))));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (254i < bitcast<i32>(r0.z))));
  if ((bitcast<u32>(r1.x) != 0u)) {
    r2.x = dot(cb11_11.tint_symbol_3[0u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.y = dot(cb11_11.tint_symbol_3[1u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r2.z = dot(cb11_11.tint_symbol_3[2u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.w) + 4i))].xyz);
    r3.x = dot(cb11_11.tint_symbol_3[0u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.y = dot(cb11_11.tint_symbol_3[1u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r3.z = dot(cb11_11.tint_symbol_3[2u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.x) + 4i))].xyz);
    r4.x = dot(cb11_11.tint_symbol_3[0u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.y = dot(cb11_11.tint_symbol_3[1u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    r4.z = dot(cb11_11.tint_symbol_3[2u].xyz, cb11_11.tint_symbol_3[bitcast<u32>((bitcast<i32>(r0.y) + 4i))].xyz);
    let v_3 = -(r3.zzxy);
    let v_4 = (r2.zxy + v_3.yzw);
    r1 = vec4<f32>(r1.x, v_4.xyz);
    let v_5 = ((-(r3.yzxy)).xyz + r4.yzx);
    r5 = vec4<f32>(v_5.xyz, r5.w);
    let v_6 = (r1.yzw * r5.xyz);
    r6 = vec4<f32>(v_6.xyz, r6.w);
    let v_7 = -(r6.xxyz);
    let v_8 = fma(r1.wyz, r5.yzx, v_7.yzw);
    r1 = vec4<f32>(r1.x, v_8.xyz);
    r2.w = dot(r1.yzw, r1.yzw);
    r2.w = inverseSqrt(r2.w);
    let v_9 = (r1.yzw * r2.www);
    r1 = vec4<f32>(r1.x, v_9.xyz);
    let v_10 = (r3.xyz * v1.yyy);
    r3 = vec4<f32>(v_10.xyz, r3.w);
    let v_11 = fma(v1.zzz, r2.xyz, r3.xyz);
    r2 = vec4<f32>(v_11.xyz, r2.w);
    let v_12 = fma(v1.xxx, r4.xyz, r2.xyz);
    r2 = vec4<f32>(v_12.xyz, r2.w);
    r2.w = (v1.w + -0.5f);
    r2.w = (r2.w * 0.10000000149011611938f);
    let v_13 = -(r1.yzwy);
    let v_14 = fma(r2.www, v_13.xyz, r2.xyz);
    r2 = vec4<f32>(v_14.xyz, r2.w);
    let v_15 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r3 = vec4<f32>(v_15.xyz, r3.w);
    let v_16 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r3.xyz);
    r3 = vec4<f32>(v_16.xyz, r3.w);
    let v_17 = fma(r2.zzz, cb1_1.tint_symbol_1[2u].xyz, r3.xyz);
    r3 = vec4<f32>(v_17.xyz, r3.w);
    let v_18 = (r3.xyz + cb1_1.tint_symbol_1[3u].xyz);
    r3 = vec4<f32>(v_18.xyz, r3.w);
    let v_19 = (r1.zzz * cb1_1.tint_symbol_1[1u].xyz);
    r4 = vec4<f32>(v_19.xyz, r4.w);
    let v_20 = fma(r1.yyy, cb1_1.tint_symbol_1[0u].xyz, r4.xyz);
    r4 = vec4<f32>(v_20.xyz, r4.w);
    o1 = fma(r1.www, cb1_1.tint_symbol_1[2u].xyz, r4.xyz).xyzx;
  } else {
    r0 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0) * vec4<i32>(3i)));
    r4 = (v1.yyyy * cb4_4.tint_symbol[bitcast<i32>(r0.y)]);
    r5 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 1i))]);
    r6 = (v1.yyyy * cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.y) + 2i))]);
    r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.x)], v1.xxxx, r4);
    r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 1i))], v1.xxxx, r5);
    r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.x) + 2i))], v1.xxxx, r6);
    r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.z)], v1.zzzz, r4);
    r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 1i))], v1.zzzz, r5);
    r6 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.z) + 2i))], v1.zzzz, r6);
    r4 = fma(cb4_4.tint_symbol[bitcast<i32>(r0.w)], v1.wwww, r4);
    r5 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 1i))], v1.wwww, r5);
    r0 = fma(cb4_4.tint_symbol[bitcast<u32>((bitcast<i32>(r0.w) + 2i))], v1.wwww, r6);
    let v_21 = bitcast<vec4<u32>>(r1.xxxx);
    let v_22 = cb4_4.tint_symbol[0u];
    r4 = select(r4, v_22, (v_21 != vec4<u32>()));
    let v_23 = bitcast<vec4<u32>>(r1.xxxx);
    let v_24 = cb4_4.tint_symbol[1u];
    r5 = select(r5, v_24, (v_23 != vec4<u32>()));
    let v_25 = bitcast<vec4<u32>>(r1.xxxx);
    let v_26 = cb4_4.tint_symbol[2u];
    r0 = select(r0, v_26, (v_25 != vec4<u32>()));
    r1 = vec4<f32>(v0.xyz, r1.w);
    r1.w = 1.0f;
    r2.x = dot(r4, r1);
    r2.y = dot(r5, r1);
    r2.z = dot(r0, r1);
    let v_27 = (r2.yyy * cb1_1.tint_symbol_1[1u].xyz);
    r1 = vec4<f32>(v_27.xyz, r1.w);
    let v_28 = fma(r2.xxx, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
    r1 = vec4<f32>(v_28.xyz, r1.w);
    let v_29 = fma(r2.zzz, cb1_1.tint_symbol_1[2u].xyz, r1.xyz);
    r1 = vec4<f32>(v_29.xyz, r1.w);
    let v_30 = (r1.xyz + cb1_1.tint_symbol_1[3u].xyz);
    r3 = vec4<f32>(v_30.xyz, r3.w);
    r0.w = dot(r4.xyz, v4);
    r1.x = dot(r5.xyz, v4);
    r0.x = dot(r0.xyz, v4);
    let v_31 = (r1.xxx * cb1_1.tint_symbol_1[1u].xyz);
    r1 = vec4<f32>(v_31.xyz, r1.w);
    let v_32 = fma(r0.www, cb1_1.tint_symbol_1[0u].xyz, r1.xyz);
    r0 = vec4<f32>(r0.x, v_32.xyz);
    o1 = fma(r0.xxx, cb1_1.tint_symbol_1[2u].xyz, r0.yzw).xyzx;
  }
  r0 = (r2.yyyy * cb1_1.tint_symbol_1[9u]);
  r0 = fma(r2.xxxx, cb1_1.tint_symbol_1[8u], r0);
  r0 = fma(r2.zzzz, cb1_1.tint_symbol_1[10u], r0);
  r0 = (r0 + cb1_1.tint_symbol_1[11u]);
  x0[0u].x = dot(r0, cb0_0.tint_symbol_2[0u]);
  let v_33 = r3;
  o2 = vec4<f32>(v_33.xyz, o2.w);
  o2.w = 1.0f;
  o3 = v5;
  o4 = r0;
  let v_34 = &(x0[0u]);
  *(v_34) = vec4<f32>((*(v_34)).x, vec3<f32>());
  o0 = v3.xyxy;
  o5[0u] = x0[0u].x;
  o5[1u] = x0[0u].y;
  o5[2u] = x0[0u].z;
  o5[3u] = x0[0u].w;
  v = vec4<f32>(o5[0u], o5[1u], o5[2u], o5[3u]);
}

struct tint_symbol_5 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @builtin(position)
  o4 : vec4<f32>,
  @builtin(clip_distances)
  o5 : array<f32, 4u>,
  @location(15u)
  tint_symbol_4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>, @location(4u) v4 : vec3<f32>, @location(5u) v5 : vec4<f32>) -> tint_symbol_5 {
  main_inner(v0, v1, v2, v3, v4, v5);
  return tint_symbol_5(o0, o1, o2, o3, o4, o5, v);
}
