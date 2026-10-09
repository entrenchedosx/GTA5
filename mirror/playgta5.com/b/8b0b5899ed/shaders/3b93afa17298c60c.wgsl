diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb4_struct;

struct cb27_struct {
  tint_symbol_1 : array<vec4<f32>, 27u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb27_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v3 : vec2<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == cb12_12.tint_symbol_1[23u].w))));
  let v = (v0.yyy * cb1_1.tint_symbol[1u].xyz);
  r0 = vec4<f32>(r0.x, v.xyz);
  let v_1 = fma(v0.xxx, cb1_1.tint_symbol[0u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_1.xyz);
  let v_2 = fma(v0.zzz, cb1_1.tint_symbol[2u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_2.xyz);
  let v_3 = fma(v0.www, cb1_1.tint_symbol[3u].xyz, r0.yzw);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  r1 = (r0.zzzz * cb12_12.tint_symbol_1[20u]);
  r1 = fma(r0.yyyy, cb12_12.tint_symbol_1[19u], r1);
  r1 = fma(r0.wwww, cb12_12.tint_symbol_1[21u], r1);
  r1 = (r1 + cb12_12.tint_symbol_1[22u]);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r1.z < 0.0f)));
  r0.z = (0.10000000149011611938f / r1.w);
  let v_4 = bitcast<u32>(r0.y);
  let v_5 = r0.z;
  r0.y = select(r1.z, v_5, (v_4 != 0u));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < r1.z)));
  r0.w = (r1.w + -0.10000000149011611938f);
  let v_6 = bitcast<u32>(r0.z);
  let v_7 = r0.w;
  r0.z = select(r1.z, v_7, (v_6 != 0u));
  let v_8 = bitcast<u32>(r0.x);
  let v_9 = r0.y;
  r0.x = select(r0.z, v_9, (v_8 != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.w)));
  let v_10 = bitcast<u32>(r0.y);
  let v_11 = r0.x;
  o0.z = select(r1.z, v_11, (v_10 != 0u));
  let v_12 = r1;
  o0 = vec4<f32>(v_12.xy, o0.z, v_12.w);
  o1 = v1;
  let v_13 = fma(v3, cb12_12.tint_symbol_1[25u].zw, cb12_12.tint_symbol_1[24u].xy);
  r0 = vec4<f32>(v_13.xy, r0.zw);
  let v_14 = (r0.xy + cb12_12.tint_symbol_1[18u].zw);
  r0 = vec4<f32>(v_14.xy, r0.zw);
  let v_15 = clamp(((cb12_12.tint_symbol_1[17u].xxxy + vec4<f32>(0.0f, 0.0f, -1000.0f, -1000.0f))).zw, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(r0.xy, v_15.xy);
  o2 = ((r0.zw + r0.xy)).xyxy;
  let v_16 = fma(v3, cb12_12.tint_symbol_1[26u].xy, cb12_12.tint_symbol_1[24u].zw);
  r0 = vec4<f32>(v_16.xy, r0.zw);
  let v_17 = (r0.xy + cb12_12.tint_symbol_1[18u].zw);
  o3 = vec4<f32>(v_17.xy, o3.zw);
  let v_18 = fma(v3, cb12_12.tint_symbol_1[26u].zw, cb12_12.tint_symbol_1[25u].xy);
  r0 = vec4<f32>(v_18.xy, r0.zw);
  let v_19 = (r0.xy + cb12_12.tint_symbol_1[18u].zw);
  o3 = vec4<f32>(o3.xy, v_19.xy);
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
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v3);
  return tint_symbol_2(o0, o1, o2, o3);
}
