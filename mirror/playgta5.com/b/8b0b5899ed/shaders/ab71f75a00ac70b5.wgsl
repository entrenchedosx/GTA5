enable clip_distances;
diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(0u) var<uniform> cb0_0 : cb1_struct;

struct cb11_struct {
  tint_symbol_2 : array<vec4<f32>, 11u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb11_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : array<f32, 4u>;

var<private> v : vec4<f32>;

var<private> x0 : array<vec4<f32>, 1u>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  o0 = vec4<f32>();
  o1 = vec4<f32>();
  o2 = vec4<f32>();
  o3 = vec4<f32>();
  let v_1 = (v2.xy + cb11_11.tint_symbol_2[9u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy * vec2<f32>(6.28318500518798828125f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = sin(r0.xyxx.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = (cb11_11.tint_symbol_2[0u].zz * cb11_11.tint_symbol_2[9u].zw);
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = (r0.zw * r0.xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = sin(r0.xyxx.xy);
  r0 = vec4<f32>(v_6.xy, r0.zw);
  let v_7 = (r0.xy * cb11_11.tint_symbol_2[10u].ww);
  r0 = vec4<f32>(v_7.xy, r0.zw);
  r0.z = dot(r0.xy, r0.xy);
  let v_8 = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r1.xyz);
  r1 = vec4<f32>(v_10.xyz, r1.w);
  let v_11 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r1 = vec4<f32>(v_11.xyz, r1.w);
  r2.z = fma(v3.y, r0.z, r1.z);
  let v_12 = fma(v3.yy, r0.xy, r1.xy);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = ((-(r2.zxyz)).xyz + cb1_1.tint_symbol[15u].zxy);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = (v1.yyy * cb1_1.tint_symbol[1u].yzx);
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = fma(v1.xxx, cb1_1.tint_symbol[0u].yzx, r1.xyz);
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(v1.zzz, cb1_1.tint_symbol[2u].yzx, r1.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = (r0.xyz * r1.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  let v_18 = -(r3.xyzx);
  let v_19 = fma(r0.zxy, r1.yzx, v_18.xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < v3.x)));
  r0.w = select(-1.0f, 1.0f, (bitcast<u32>(r0.w) != 0u));
  r1.x = (cb11_11.tint_symbol_2[0u].x * cb11_11.tint_symbol_2[10u].z);
  r0.w = (r0.w * r1.x);
  let v_21 = fma(r0.www, r0.xyz, r2.xyz);
  r0 = vec4<f32>(v_21.xyz, r0.w);
  let v_22 = r0;
  o4 = vec4<f32>(v_22.xyz, o4.w);
  o4.w = 0.0f;
  o5 = vec4<f32>();
  r1 = (r0.yyyy * cb11_11.tint_symbol_2[5u]);
  r1 = fma(r0.xxxx, cb11_11.tint_symbol_2[4u], r1);
  r0 = fma(r0.zzzz, cb11_11.tint_symbol_2[6u], r1);
  r0 = (r0 + cb11_11.tint_symbol_2[7u]);
  o6 = r0;
  x0[0u].x = dot(r0, cb0_0.tint_symbol_1[0u]);
  let v_23 = &(x0[0u]);
  *(v_23) = vec4<f32>((*(v_23)).x, vec3<f32>());
  o7[0u] = x0[0u].x;
  o7[1u] = x0[0u].y;
  o7[2u] = x0[0u].z;
  o7[3u] = x0[0u].w;
  v = vec4<f32>(o7[0u], o7[1u], o7[2u], o7[3u]);
}

struct tint_symbol_4 {
  @location(0u)
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
  @builtin(position)
  o6 : vec4<f32>,
  @builtin(clip_distances)
  o7 : array<f32, 4u>,
  @location(15u)
  tint_symbol_3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_4(o0, o1, o2, o3, o4, o5, o6, o7, v);
}
