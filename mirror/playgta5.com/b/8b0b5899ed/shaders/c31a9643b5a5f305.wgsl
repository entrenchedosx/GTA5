diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

struct cb12_struct {
  tint_symbol : array<vec4<f32>, 12u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb12_struct;

struct cb11_struct {
  tint_symbol_1 : array<vec4<f32>, 11u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb11_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

var<private> o5 : vec4<f32>;

var<private> o6 : vec4<f32>;

var<private> o7 : vec4<f32>;

var<private> o8 : vec4<f32>;

var<private> o9 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec4<f32>, v3 : vec2<f32>) {
  r0 = (v0.yyyy * cb1_1.tint_symbol[9u]);
  r0 = fma(v0.xxxx, cb1_1.tint_symbol[8u], r0);
  r0 = fma(v0.zzzz, cb1_1.tint_symbol[10u], r0);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v2;
  r0.x = dot(v1, v1);
  r0.x = inverseSqrt(r0.x);
  let v = (r0.xxx * v1);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = dot(r0.xyz, vec3<f32>(0.57735025882720947266f, 0.57735025882720947266f, -0.57735025882720947266f));
  r1.x = (r0.w + 1.0f);
  r0.w = dot(r0.yxz, vec3<f32>(0.57735025882720947266f, -0.57735025882720947266f, -0.57735025882720947266f));
  r1.y = (r0.w + 1.0f);
  r0.w = dot(r0.xyz, vec3<f32>(-0.57735025882720947266f));
  r0.z = dot(r0.xyz, vec3<f32>(0.57735025882720947266f, -0.57735025882720947266f, -0.57735025882720947266f));
  r2 = fma(r0.xyxy, vec4<f32>(1.0f, 1.0f, -1.0f, -1.0f), vec4<f32>(1.0f));
  let v_1 = (r0.wz + vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_1.xy);
  r0 = max(r1, r2);
  let v_2 = max(r0.yw, r0.xz);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = max(r0.y, r0.x);
  r3 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r1 >= r0.xxxx)));
  r0 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r2 >= r0.xxxx)));
  r4 = select(vec4<f32>(1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r3) != vec4<u32>()));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3) & vec4<u32>(1065353216u)));
  r4 = (r1 * r4);
  r5 = select(vec4<f32>(1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r0) != vec4<u32>()));
  r0 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r0) & vec4<u32>(1065353216u)));
  r5 = (r2 * r5);
  r6 = max(r4, r5);
  let v_3 = max(r6.yw, r6.xz);
  r6 = vec4<f32>(v_3.xy, r6.zw);
  r6.x = max(r6.y, r6.x);
  r7 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r5 >= r6.xxxx)));
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r4 >= r6.xxxx)));
  r8 = select(vec4<f32>(1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r7) != vec4<u32>()));
  r7 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r7) & vec4<u32>(1065353216u)));
  r5 = (r5 * r8);
  r8 = select(vec4<f32>(1.0f), vec4<f32>(), (bitcast<vec4<u32>>(r6) != vec4<u32>()));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r4 = (r4 * r8);
  r8 = max(r4, r5);
  let v_4 = max(r8.yw, r8.xz);
  r8 = vec4<f32>(v_4.xy, r8.zw);
  r8.x = max(r8.y, r8.x);
  r4 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r4 >= r8.xxxx)));
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r5 >= r8.xxxx)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r5 = (r2 * r5);
  r5.x = dot(r5, vec4<f32>(1.0f));
  r4 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r4) & vec4<u32>(1065353216u)));
  r4 = (r1 * r4);
  r4.x = dot(r4, vec4<f32>(1.0f));
  r4.x = (r4.x + r5.x);
  r5 = (r1 * r6);
  r1 = (r1 * r3);
  o4 = r3;
  r1.x = dot(r1, vec4<f32>(1.0f));
  o6 = r6;
  r1.y = dot(r5, vec4<f32>(1.0f));
  r3 = (r2 * r7);
  o5 = r7;
  r2 = (r2 * r0);
  o3 = r0;
  r0.x = dot(r2, vec4<f32>(1.0f));
  r0.z = (r1.x + r0.x);
  r0.x = dot(r3, vec4<f32>(1.0f));
  r0.w = (r1.y + r0.x);
  let v_5 = ((-(r4.xxxx)).xy + r0.zw);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0.z = (r0.y + r0.x);
  r0.z = (1.0f / r0.z);
  let v_6 = (r0.zz * r0.xy);
  o2 = vec4<f32>(o2.xy, v_6.xy);
  let v_7 = fma(v3, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  o2 = vec4<f32>(v_7.xy, o2.zw);
  o7 = cb12_12.tint_symbol_1[8u].xyz.xyzx;
  o8 = cb12_12.tint_symbol_1[9u].xyz.xyzx;
  o9 = cb12_12.tint_symbol_1[10u].xyz.xyzx;
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
  @location(4u)
  o4 : vec4<f32>,
  @location(5u)
  o5 : vec4<f32>,
  @location(6u)
  o6 : vec4<f32>,
  @location(7u)
  o7 : vec4<f32>,
  @location(8u)
  o8 : vec4<f32>,
  @location(9u)
  o9 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec4<f32>, @location(3u) v3 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_2(o0, o1, o2, o3, o4, o5, o6, o7, o8, o9);
}
