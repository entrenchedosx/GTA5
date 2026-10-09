diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb14_struct {
  tint_symbol : array<vec4<f32>, 14u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb14_struct;

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb23_struct;

struct cb1280_struct {
  tint_symbol_2 : array<vec4<f32>, 1280u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb1280_struct;

var<private> v2 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec2<f32>, v : i32) {
  let v_1 = 0i;
  v2.x = bitcast<f32>((v - v_1));
  r0.w = 1.0f;
  r1 = vec4<f32>(((v0 + vec2<f32>(-0.5f, -0.0f))).xy, r1.zw);
  r2 = bitcast<vec4<f32>>(((bitcast<vec4<i32>>(v2.xxxx) * vec4<i32>(5i)) + vec4<i32>(1i, 2i, 3i, 4i)));
  let v_2 = ((-(cb1_1.tint_symbol[13u].xyzx)).xyz * cb5_5.tint_symbol_2[bitcast<i32>(r2.w)].yyy);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  let v_3 = (r1.yyy * r3.xyz);
  r1 = vec4<f32>(r1.x, v_3.xyz);
  let v_4 = (cb1_1.tint_symbol[12u].xyz * cb5_5.tint_symbol_2[bitcast<i32>(r2.w)].xxx);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = fma(r1.xxx, r3.xyz, r1.yzw);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.z = (r0.z + cb5_5.tint_symbol_2[bitcast<i32>(r2.w)].y);
  r1.x = bitcast<f32>((bitcast<i32>(v2.x) * 5i));
  r3.x = cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].y;
  r3.y = cb5_5.tint_symbol_2[bitcast<i32>(r2.x)].y;
  r3.z = cb5_5.tint_symbol_2[bitcast<i32>(r2.y)].y;
  r3.w = cb5_5.tint_symbol_2[bitcast<i32>(r2.z)].y;
  r3.y = dot(r0, r3);
  r4 = (r3.yyyy * cb1_1.tint_symbol[9u]);
  r5.x = cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].x;
  r5.y = cb5_5.tint_symbol_2[bitcast<i32>(r2.x)].x;
  r5.z = cb5_5.tint_symbol_2[bitcast<i32>(r2.y)].x;
  r5.w = cb5_5.tint_symbol_2[bitcast<i32>(r2.z)].x;
  r3.x = dot(r0, r5);
  r4 = fma(r3.xxxx, cb1_1.tint_symbol[8u], r4);
  r5.x = cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].z;
  r5.y = cb5_5.tint_symbol_2[bitcast<i32>(r2.x)].z;
  r5.z = cb5_5.tint_symbol_2[bitcast<i32>(r2.y)].z;
  r5.w = cb5_5.tint_symbol_2[bitcast<i32>(r2.z)].z;
  r3.z = dot(r0, r5);
  r0 = fma(r3.zzzz, cb1_1.tint_symbol[10u], r4);
  let v_6 = r3;
  o3 = vec4<f32>(v_6.xyz, o3.w);
  let v_7 = -(cb10_10.tint_symbol_1[0u].xxyx);
  let v_8 = (r3.xy + v_7.yz);
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r1.y = dot(r1.yz, r1.yz);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  r0.x = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].w) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].w) >> 8u));
  let v_10 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(255u)));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  let v_11 = vec2<f32>(bitcast<vec2<u32>>(r0.xy));
  r0 = vec4<f32>(v_11.xy, r0.zw);
  r1.z = bitcast<f32>((255u & bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].w)));
  r1.x = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].w) >> 24u));
  let v_12 = vec2<f32>(bitcast<vec2<u32>>(r1.zx));
  r0 = vec4<f32>(r0.xy, v_12.xy);
  r0 = (r0 * vec4<f32>(0.0039215688593685627f));
  let v_13 = r0;
  o1 = vec4<f32>(v_13.xyz, o1.w);
  r0.x = clamp(fma(r1.yyyy, cb10_10.tint_symbol_1[19u].yyyy, cb10_10.tint_symbol_1[19u].xxxx).x, -0.0f, 1.0f);
  let v_14 = clamp(fma(r1.yyyy, cb10_10.tint_symbol_1[18u].yywy, cb10_10.tint_symbol_1[18u].xxzx).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_15 = r0;
  r0 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (-0.0f < cb5_5.tint_symbol_2[bitcast<i32>(r2.w)].z)));
  let v_16 = bitcast<u32>(r1.x);
  let v_17 = r0.x;
  r0.x = select(r0.z, v_17, (v_16 != 0u));
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.x * r0.w);
  o1.w = (r0.x * cb10_10.tint_symbol_1[22u].w);
  let v_18 = cb10_10.tint_symbol_1[21u];
  o2 = vec4<f32>(v_18.xyz, o2.w);
  o2.w = v0.x;
  r0.x = fma(v0.y, 0.5f, 0.5f);
  o3.w = min(r0.x, 1.0f);
  r0.x = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r2.x)].w) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r2.x)].w) >> 8u));
  let v_19 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(255u)));
  r0 = vec4<f32>(v_19.xy, r0.zw);
  let v_20 = vec2<f32>(bitcast<vec2<u32>>(r0.xy));
  r0 = vec4<f32>(v_20.xy, r0.zw);
  r1.x = bitcast<f32>((255u & bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r2.x)].w)));
  r1.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r2.x)].w) >> 24u));
  let v_21 = vec2<f32>(bitcast<vec2<u32>>(r1.xy));
  r0 = vec4<f32>(r0.xy, v_21.xy);
  r0 = (r0 * vec4<f32>(0.0039215688593685627f));
  let v_22 = r0;
  o4 = vec4<f32>(v_22.xyz, o4.w);
  o5.x = r0.w;
  o4.w = (v0.y * 0.5f);
  o5 = vec4<f32>(o5.x, vec3<f32>());
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec2<f32>, @builtin(instance_index) v_23 : u32) -> tint_symbol_3 {
  main_inner(v0, i32(v_23));
  return tint_symbol_3(o0, o1, o2, o3, o4, o5);
}
