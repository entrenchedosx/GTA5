diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb6_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  let v = (cb12_12.tint_symbol_1[1u].yzx * cb12_12.tint_symbol_1[2u].zxy);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  let v_2 = fma(cb12_12.tint_symbol_1[2u].yzx, cb12_12.tint_symbol_1[1u].zxy, v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = dot(v0.xy, v0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_3 = (r0.ww * v0.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.99989998340606689453f >= abs(v0.zzzz).w)));
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) & bitcast<vec2<u32>>(r0.ww)));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r0.xyz * r1.yyy);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(cb12_12.tint_symbol_1[2u].xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = (v0.z + 1.0f);
  r0.w = (r0.w * r0.w);
  r1.x = ((-(cb12_12.tint_symbol_1[5u].xxxx)).x + 1.0f);
  r0.w = fma((-(r0.wwww)).w, r1.x, 1.0f);
  r1.x = fma((-(r0.wwww)).x, r0.w, 1.0f);
  let v_7 = (r0.www * cb12_12.tint_symbol_1[1u].xyz);
  r1 = vec4<f32>(r1.x, v_7.xyz);
  r0.w = min(abs(r1.xxxx).w, 1.0f);
  r0.w = sqrt(r0.w);
  let v_8 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r0.w = ((-(v0.zzzz)).w + 1.0f);
  let v_9 = (r0.ww * cb12_12.tint_symbol_1[5u].xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  let v_10 = (r0.xyz * r3.yyy);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = (r3.xxx * cb12_12.tint_symbol_1[1u].xyz);
  r3 = vec4<f32>(v_11.xyz, r3.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f >= v0.z)));
  let v_12 = bitcast<vec3<u32>>(r0.www);
  let v_13 = r2.xyz;
  let v_14 = select(r0.xyz, v_13, (v_12 != vec3<u32>()));
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = bitcast<vec3<u32>>(r0.www);
  let v_16 = r1.yzw;
  let v_17 = select(r3.xyz, v_16, (v_15 != vec3<u32>()));
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = fma(r0.xyz, cb12_12.tint_symbol_1[4u].yyy, cb12_12.tint_symbol_1[0u].xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  let v_20 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_21 = (r0.xyz + v_20.xyz);
  o2 = vec4<f32>(v_21.xyz, o2.w);
  r0 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r1.x = (r0.w + r0.x);
  r1.y = ((-(r0.yyyy)).y + r0.w);
  let v_22 = (r1.xy * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_22.xy, o1.zw);
  let v_23 = r0;
  o1 = vec4<f32>(o1.xy, v_23.zw);
  o2.w = r0.w;
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v0);
  return tint_symbol_2(o0, o1, o2);
}
