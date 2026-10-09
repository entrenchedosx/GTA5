diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec2<f32>) {
  o0 = vec4<f32>(v0.xy.xy, o0.zw);
  o0 = vec4<f32>(o0.xy, vec2<f32>(0.0f, 1.0f));
  let v = fma(v1, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  let v_1 = r0;
  r0 = vec4<f32>(v.x, v_1.y, v.y, v_1.w);
  r0.y = 1.0f;
  let v_2 = fma(v1, vec2<f32>(-2.0f), vec2<f32>(1.0f));
  r1 = vec4<f32>(v_2.xy, r1.zw);
  r1.z = -1.0f;
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (cb12_12.tint_symbol[0u].xx == vec2<f32>(4.0f, 5.0f))));
  r2 = vec4<f32>(v_3.xy, r2.zw);
  let v_4 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r1.xyz) & bitcast<vec3<u32>>(r2.yyy)));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = fma(v1, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r3 = vec4<f32>(v_5.xy, r3.zw);
  r3.z = 1.0f;
  let v_6 = bitcast<vec3<u32>>(r2.xxx);
  let v_7 = r3.xyz;
  let v_8 = select(r1.xyz, v_7, (v_6 != vec3<u32>()));
  r1 = vec4<f32>(v_8.xyz, r1.w);
  let v_9 = fma(v1.yx, vec2<f32>(-2.0f, 2.0f), vec2<f32>(1.0f, -1.0f));
  let v_10 = r2;
  r2 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r2.x = -1.0f;
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb12_12.tint_symbol[0u].xxxx == vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f))));
  let v_11 = bitcast<vec3<u32>>(r4.www);
  let v_12 = r2.zxy;
  let v_13 = select(r1.xyz, v_12, (v_11 != vec3<u32>()));
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = bitcast<vec3<u32>>(r4.zzz);
  let v_15 = r0.xyz;
  let v_16 = select(r1.xyz, v_15, (v_14 != vec3<u32>()));
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = bitcast<vec3<u32>>(r4.yyy);
  let v_18 = r2.xyz;
  let v_19 = select(r0.xyz, v_18, (v_17 != vec3<u32>()));
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r3.w = fma(v1.x, -2.0f, 1.0f);
  let v_20 = bitcast<vec3<u32>>(r4.xxx);
  let v_21 = r3.zyw;
  let v_22 = select(r0.xyz, v_21, (v_20 != vec3<u32>()));
  o1 = vec4<f32>(v_22.xyz, o1.w);
  o1.w = v0.z;
}

struct tint_symbol_1 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec2<f32>) -> tint_symbol_1 {
  main_inner(v0, v1);
  return tint_symbol_1(o0, o1);
}
