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

struct cb23_struct {
  tint_symbol_1 : array<vec4<f32>, 23u>,
}

@group(0u) @binding(10u) var<uniform> cb10_10 : cb23_struct;

struct cb1280_struct {
  tint_symbol_2 : array<vec4<f32>, 1280u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb1280_struct;

var<private> v5 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec3<f32>, v3 : vec4<f32>, v4 : vec2<f32>, v : i32) {
  let v_1 = 0i;
  v5.x = bitcast<f32>((v - v_1));
  r0 = vec4<f32>(v0.xyz, r0.w);
  r0.w = 1.0f;
  r1.x = bitcast<f32>((bitcast<i32>(v5.x) * 5i));
  r2.x = cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].y;
  let v_2 = bitcast<vec3<f32>>(((bitcast<vec3<i32>>(v5.xxx) * vec3<i32>(5i)) + vec3<i32>(1i, 2i, 3i)));
  r1 = vec4<f32>(r1.x, v_2.xyz);
  r2.y = cb5_5.tint_symbol_2[bitcast<i32>(r1.y)].y;
  r2.z = cb5_5.tint_symbol_2[bitcast<i32>(r1.z)].y;
  r2.w = cb5_5.tint_symbol_2[bitcast<i32>(r1.w)].y;
  r2.y = dot(r0, r2);
  r3 = (r2.yyyy * cb1_1.tint_symbol[9u]);
  r4.x = cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].x;
  r4.y = cb5_5.tint_symbol_2[bitcast<i32>(r1.y)].x;
  r4.z = cb5_5.tint_symbol_2[bitcast<i32>(r1.z)].x;
  r4.w = cb5_5.tint_symbol_2[bitcast<i32>(r1.w)].x;
  r2.x = dot(r0, r4);
  r3 = fma(r2.xxxx, cb1_1.tint_symbol[8u], r3);
  r4.x = cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].z;
  r4.y = cb5_5.tint_symbol_2[bitcast<i32>(r1.y)].z;
  r4.z = cb5_5.tint_symbol_2[bitcast<i32>(r1.z)].z;
  r4.w = cb5_5.tint_symbol_2[bitcast<i32>(r1.w)].z;
  r2.z = dot(r0, r4);
  r0 = fma(r2.zzzz, cb1_1.tint_symbol[10u], r3);
  let v_3 = r2;
  o3 = vec4<f32>(v_3.xyz, o3.w);
  let v_4 = -(cb10_10.tint_symbol_1[0u].xyxx);
  let v_5 = (r2.xy + v_4.xy);
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r1.w = dot(r2.xy, r2.xy);
  let v_6 = clamp(fma(r1.wwww, cb10_10.tint_symbol_1[17u].ywyy, cb10_10.tint_symbol_1[17u].xzxx).xy, vec2<f32>(), vec2<f32>(1.0f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  r0.x = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].w) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].w) >> 8u));
  let v_7 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(255u)));
  r0 = vec4<f32>(v_7.xy, r0.zw);
  let v_8 = vec2<f32>(bitcast<vec2<u32>>(r0.xy));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r1.w = bitcast<f32>((255u & bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].w)));
  r0.z = f32(bitcast<u32>(r1.w));
  r1.w = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].w) >> 24u));
  r0.w = f32(bitcast<u32>(r1.w));
  r0 = (r0 * vec4<f32>(0.0039215688593685627f));
  let v_9 = r0;
  o1 = vec4<f32>(v_9.xyz, o1.w);
  r0.x = ((-(r2.xxxx)).x + 1.0f);
  r0.x = (r2.y * r0.x);
  r0.x = (r0.x * r0.w);
  o1.w = (r0.x * cb10_10.tint_symbol_1[22u].w);
  let v_10 = (v1.yyy * cb5_5.tint_symbol_2[bitcast<i32>(r1.y)].xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(v1.xxx, cb5_5.tint_symbol_2[bitcast<i32>(r1.x)].xyz, r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(v1.zzz, cb5_5.tint_symbol_2[bitcast<i32>(r1.z)].xyz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_13 = (r0.www * r0.xyz);
  o2 = vec4<f32>(v_13.xyz, o2.w);
  o2.w = v4.x;
  o3.w = v4.y;
  r0.x = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.y)].w) >> 16u));
  r0.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.y)].w) >> 8u));
  let v_14 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.xy) & vec2<u32>(255u)));
  r0 = vec4<f32>(v_14.xy, r0.zw);
  let v_15 = vec2<f32>(bitcast<vec2<u32>>(r0.xy));
  r0 = vec4<f32>(v_15.xy, r0.zw);
  r1.x = bitcast<f32>((255u & bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.y)].w)));
  r1.y = bitcast<f32>((bitcast<u32>(cb5_5.tint_symbol_2[bitcast<i32>(r1.y)].w) >> 24u));
  let v_16 = vec2<f32>(bitcast<vec2<u32>>(r1.xy));
  r0 = vec4<f32>(r0.xy, v_16.xy);
  r0 = (r0 * vec4<f32>(0.0039215688593685627f));
  let v_17 = r0;
  o4 = vec4<f32>(v_17.xyz, o4.w);
  o5.x = r0.w;
  o4.w = v3.x;
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec3<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec2<f32>, @builtin(instance_index) v_18 : u32) -> tint_symbol_3 {
  main_inner(v0, v1, v3, v4, i32(v_18));
  return tint_symbol_3(o0, o1, o2, o3, o4, o5);
}
