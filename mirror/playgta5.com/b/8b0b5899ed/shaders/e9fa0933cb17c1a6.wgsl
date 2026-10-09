diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

fn main_inner(v0 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>, v3 : vec4<f32>, v4 : vec4<f32>) {
  let v = abs(v2.xyzx);
  let v_1 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (v.xyz < abs(v2.yzxy).xyz)));
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.xyz) & vec3<u32>(1065353216u)));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (abs(v2.zxyz).xyz >= v.xyz)));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  let v_4 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r1.xyz) & vec3<u32>(1065353216u)));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  let v_5 = (r0.xyz * r1.xyz);
  r2 = vec4<f32>(v_5.xyz, r2.w);
  r0.y = dot(r2.xyz, vec3<f32>(1.0f));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y == 0.0f)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & 1065353216u));
  r2.w = fma(r0.x, r1.x, r0.y);
  let v_6 = (r2.zwy * v2.yzx);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  let v_7 = -(r0.xyzx);
  let v_8 = fma(r2.yzw, v2.zxy, v_7.xyz);
  r0 = vec4<f32>(v_8.xyz, r0.w);
  r0.w = dot(v0.xy, v0.xy);
  r0.w = inverseSqrt(r0.w);
  let v_9 = (r0.ww * v0.xy);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.99989998340606689453f >= abs(v0.zzzz).w)));
  let v_10 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r1.xy) & bitcast<vec2<u32>>(r0.ww)));
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = (r0.xyz * r1.yyy);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma(r2.wyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r0.w = (v0.z + 1.0f);
  r0.w = (r0.w * r0.w);
  r1.x = ((-(v3.xxxx)).x + 1.0f);
  r0.w = fma((-(r0.wwww)).w, r1.x, 1.0f);
  r1.x = fma((-(r0.wwww)).x, r0.w, 1.0f);
  let v_13 = (r0.www * v2.xyz);
  r1 = vec4<f32>(r1.x, v_13.xyz);
  r0.w = min(abs(r1.xxxx).w, 1.0f);
  r0.w = sqrt(r0.w);
  let v_14 = (r0.www * r0.xyz);
  r2 = vec4<f32>(v_14.xyz, r2.w);
  r0.w = ((-(v0.zzzz)).w + 1.0f);
  let v_15 = (r0.ww * v3.xy);
  r3 = vec4<f32>(v_15.xy, r3.zw);
  let v_16 = (r0.xyz * r3.yyy);
  r0 = vec4<f32>(v_16.xyz, r0.w);
  let v_17 = (r3.xxx * v2.xyz);
  r3 = vec4<f32>(v_17.xyz, r3.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f >= v0.z)));
  let v_18 = bitcast<vec3<u32>>(r0.www);
  let v_19 = r2.xyz;
  let v_20 = select(r0.xyz, v_19, (v_18 != vec3<u32>()));
  r0 = vec4<f32>(v_20.xyz, r0.w);
  let v_21 = bitcast<vec3<u32>>(r0.www);
  let v_22 = r1.yzw;
  let v_23 = select(r3.xyz, v_22, (v_21 != vec3<u32>()));
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  r0.w = (v1.w + 0.05799999833106994629f);
  let v_25 = fma((-(v2.xyzx)).xyz, vec3<f32>(0.02899999916553497314f), v1.xyz);
  r1 = vec4<f32>(v_25.xyz, r1.w);
  let v_26 = fma(r0.xyz, r0.www, r1.xyz);
  r0 = vec4<f32>(v_26.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  let v_27 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_28 = (r0.xyz + v_27.xyz);
  o2 = vec4<f32>(v_28.xyz, o2.w);
  r0 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r0;
  r1.x = (r0.w + r0.x);
  r1.y = ((-(r0.yyyy)).y + r0.w);
  let v_29 = (r1.xy * vec2<f32>(0.5f));
  o1 = vec4<f32>(v_29.xy, o1.zw);
  let v_30 = r0;
  o1 = vec4<f32>(o1.xy, v_30.zw);
  o2.w = r0.w;
  o3 = v1;
  o4 = v2;
  o5 = v3;
  o6 = v4;
}

struct tint_symbol_1 {
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
  @location(6u)
  o6 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec4<f32>, @location(4u) v4 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v0, v1, v2, v3, v4);
  return tint_symbol_1(o0, o1, o2, o3, o4, o5, o6);
}
