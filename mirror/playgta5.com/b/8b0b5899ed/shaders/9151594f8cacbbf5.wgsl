diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb14_struct {
  tint_symbol : array<vec4<f32>, 14u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb14_struct;

struct cb30_struct {
  tint_symbol_1 : array<vec4<f32>, 30u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb30_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  let v = (v3 * cb12_12.tint_symbol_1[29u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = (r0.xxx * cb1_1.tint_symbol[12u].xyz);
  r0 = vec4<f32>(v_1.x, r0.y, v_1.yz);
  let v_2 = -(cb1_1.tint_symbol[13u].xyzx);
  let v_3 = (r0.yyy * v_2.xyz);
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r2 = vec4<f32>(((v2.xy + vec2<f32>(-0.5f))).xy, r2.zw);
  let v_4 = fma(r2.xxx, r0.xzw, v0);
  r0 = vec4<f32>(v_4.xyz, r0.w);
  let v_5 = fma(r2.yyy, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  r0.w = dot(r0.xyz, cb1_1.tint_symbol[1u].xyz);
  let v_6 = (r0.www * cb1_1.tint_symbol[1u].xyz);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.w = dot(r0.xyz, cb1_1.tint_symbol[0u].xyz);
  r0.x = dot(r0.xyz, cb1_1.tint_symbol[2u].xyz);
  let v_7 = fma(r0.www, cb1_1.tint_symbol[0u].xyz, r1.xyz);
  r0 = vec4<f32>(r0.x, v_7.xyz);
  let v_8 = fma(r0.xxx, cb1_1.tint_symbol[2u].xyz, r0.yzw);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  let v_9 = (r0.xyz + cb1_1.tint_symbol[3u].xyz);
  r0 = vec4<f32>(v_9.xyz, r0.w);
  r1 = (r0.yyyy * cb12_12.tint_symbol_1[20u]);
  r1 = fma(r0.xxxx, cb12_12.tint_symbol_1[19u], r1);
  r0 = fma(r0.zzzz, cb12_12.tint_symbol_1[21u], r1);
  r0 = (r0 + cb12_12.tint_symbol_1[22u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.z < 0.0f)));
  r1.y = (0.10000000149011611938f / r0.w);
  let v_10 = bitcast<u32>(r1.x);
  let v_11 = r1.y;
  r1.x = select(r0.z, v_11, (v_10 != 0u));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w < r0.z)));
  r1.z = (r0.w + -0.10000000149011611938f);
  let v_12 = bitcast<u32>(r1.y);
  let v_13 = r1.z;
  r1.y = select(r0.z, v_13, (v_12 != 0u));
  r1.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_1[23u].w))));
  let v_14 = bitcast<u32>(r1.z);
  let v_15 = r1.x;
  r1.x = select(r1.y, v_15, (v_14 != 0u));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  let v_16 = bitcast<u32>(r1.y);
  let v_17 = r1.x;
  o0.z = select(r0.z, v_17, (v_16 != 0u));
  let v_18 = r0;
  o0 = vec4<f32>(v_18.xy, o0.z, v_18.w);
  o1 = v1;
  let v_19 = fma(v2.zw, cb12_12.tint_symbol_1[25u].zw, cb12_12.tint_symbol_1[24u].xy);
  r0 = vec4<f32>(v_19.xy, r0.zw);
  o2 = fma(cb12_12.tint_symbol_1[17u].xy, cb12_12.tint_symbol_1[27u].zw, r0.xy).xyxy;
  let v_20 = fma(v2.zw, cb12_12.tint_symbol_1[26u].xy, cb12_12.tint_symbol_1[24u].zw);
  r0 = vec4<f32>(v_20.xy, r0.zw);
  let v_21 = fma(cb12_12.tint_symbol_1[17u].zw, cb12_12.tint_symbol_1[28u].xy, r0.xy);
  o3 = vec4<f32>(v_21.xy, o3.zw);
  let v_22 = fma(v2.zw, cb12_12.tint_symbol_1[26u].zw, cb12_12.tint_symbol_1[25u].xy);
  r0 = vec4<f32>(v_22.xy, r0.zw);
  let v_23 = fma(cb12_12.tint_symbol_1[18u].xy, cb12_12.tint_symbol_1[28u].zw, r0.xy);
  o3 = vec4<f32>(o3.xy, v_23.xy);
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_2(o0, o1, o2, o3);
}
