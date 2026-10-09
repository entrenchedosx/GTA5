diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

@group(1u) @binding(22u) var s6 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t7, s7, v1.xy.xyxx.xy, vec2<i32>(-1i));
  r1 = textureSample(t7, s7, v1.xy.xyxx.xy);
  let v = -(r1.xxxx);
  r0.x = (r0.x + v.x);
  r0.x = (abs(r0.xxxx).x * 142.857147216796875f);
  r0.x = (r0.x * r0.x);
  r0.x = (r0.x * -0.72134751081466674805f);
  r0.x = exp2(r0.x);
  r0.y = (r0.x + 1.0f);
  r2 = textureSample(t7, s7, v1.xy.xyxx.xy, vec2<i32>(-1i, 0i));
  r0.z = ((-(r1.xxxx)).z + r2.x);
  r0.z = (abs(r0.zzzz).z * 142.857147216796875f);
  r0.z = (r0.z * r0.z);
  r0.z = (r0.z * -0.72134751081466674805f);
  r0.z = exp2(r0.z);
  r0.y = (r0.z + r0.y);
  r2 = textureSample(t7, s7, v1.xy.xyxx.xy, vec2<i32>(-1i, 1i));
  r0.w = ((-(r1.xxxx)).w + r2.x);
  r0.w = (abs(r0.wwww).w * 142.857147216796875f);
  r0.w = (r0.w * r0.w);
  r0.w = (r0.w * -0.72134751081466674805f);
  r0.w = exp2(r0.w);
  r0.y = (r0.w + r0.y);
  r2 = textureSample(t7, s7, v1.xy.xyxx.xy, vec2<i32>(0i, -1i));
  r1.y = ((-(r1.xxxx)).y + r2.x);
  r1.y = (abs(r1.yyyy).y * 142.857147216796875f);
  r1.y = (r1.y * r1.y);
  r1.y = (r1.y * -0.72134751081466674805f);
  r1.y = exp2(r1.y);
  r0.y = (r0.y + r1.y);
  r2 = textureSample(t7, s7, v1.xy.xyxx.xy, vec2<i32>(0i, 1i));
  r1.z = ((-(r1.xxxx)).z + r2.x);
  r1.z = (abs(r1.zzzz).z * 142.857147216796875f);
  r1.z = (r1.z * r1.z);
  r1.z = (r1.z * -0.72134751081466674805f);
  r1.z = exp2(r1.z);
  r0.y = (r0.y + r1.z);
  r2 = textureSample(t7, s7, v1.xy.xyxx.xy, vec2<i32>(1i, -1i));
  r1.w = ((-(r1.xxxx)).w + r2.x);
  r1.w = (abs(r1.wwww).w * 142.857147216796875f);
  r1.w = (r1.w * r1.w);
  r1.w = (r1.w * -0.72134751081466674805f);
  r1.w = exp2(r1.w);
  r0.y = (r0.y + r1.w);
  r2 = textureSample(t7, s7, v1.xy.xyxx.xy, vec2<i32>(1i, 0i));
  r2.x = ((-(r1.xxxx)).x + r2.x);
  r2.x = (abs(r2.xxxx).x * 142.857147216796875f);
  r2.x = (r2.x * r2.x);
  r2.x = (r2.x * -0.72134751081466674805f);
  r2.x = exp2(r2.x);
  r0.y = (r0.y + r2.x);
  r3 = textureSample(t7, s7, v1.xy.xyxx.xy, vec2<i32>(1i));
  r1.x = ((-(r1.xxxx)).x + r3.x);
  r1.x = (abs(r1.xxxx).x * 142.857147216796875f);
  r1.x = (r1.x * r1.x);
  r1.x = (r1.x * -0.72134751081466674805f);
  r1.x = exp2(r1.x);
  r0.y = (r0.y + r1.x);
  r3 = textureSample(t6, s6, v1.xy.xyxx.xy);
  let v_1 = (r3.xyz * cb2_2.tint_symbol[17u].www);
  r2 = vec4<f32>(r2.x, v_1.xyz);
  r4 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(-1i));
  let v_2 = (r4.xyz * cb2_2.tint_symbol[17u].www);
  r4 = vec4<f32>(v_2.xyz, r4.w);
  let v_3 = fma(r4.xyz, r0.xxx, r2.yzw);
  r2 = vec4<f32>(r2.x, v_3.xyz);
  let v_4 = fma(r3.xyz, cb2_2.tint_symbol[17u].www, r4.xyz);
  r3 = vec4<f32>(v_4.xyz, r3.w);
  r4 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(-1i, 0i));
  let v_5 = (r4.xyz * cb2_2.tint_symbol[17u].www);
  r5 = vec4<f32>(v_5.xyz, r5.w);
  let v_6 = fma(r4.xyz, cb2_2.tint_symbol[17u].www, r3.xyz);
  r3 = vec4<f32>(v_6.xyz, r3.w);
  let v_7 = fma(r5.xyz, r0.zzz, r2.yzw);
  r2 = vec4<f32>(r2.x, v_7.xyz);
  r4 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(-1i, 1i));
  let v_8 = (r4.xyz * cb2_2.tint_symbol[17u].www);
  r5 = vec4<f32>(v_8.xyz, r5.w);
  let v_9 = fma(r4.xyz, cb2_2.tint_symbol[17u].www, r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  let v_10 = fma(r5.xyz, r0.www, r2.yzw);
  r0 = vec4<f32>(v_10.x, r0.y, v_10.yz);
  r4 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(0i, -1i));
  let v_11 = (r4.xyz * cb2_2.tint_symbol[17u].www);
  r2 = vec4<f32>(r2.x, v_11.xyz);
  let v_12 = fma(r4.xyz, cb2_2.tint_symbol[17u].www, r3.xyz);
  r3 = vec4<f32>(v_12.xyz, r3.w);
  let v_13 = fma(r2.yzw, r1.yyy, r0.xzw);
  r0 = vec4<f32>(v_13.x, r0.y, v_13.yz);
  r4 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(0i, 1i));
  let v_14 = (r4.xyz * cb2_2.tint_symbol[17u].www);
  r2 = vec4<f32>(r2.x, v_14.xyz);
  let v_15 = fma(r4.xyz, cb2_2.tint_symbol[17u].www, r3.xyz);
  r3 = vec4<f32>(v_15.xyz, r3.w);
  let v_16 = fma(r2.yzw, r1.zzz, r0.xzw);
  r0 = vec4<f32>(v_16.x, r0.y, v_16.yz);
  r4 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(1i, -1i));
  let v_17 = (r4.xyz * cb2_2.tint_symbol[17u].www);
  r2 = vec4<f32>(r2.x, v_17.xyz);
  let v_18 = fma(r4.xyz, cb2_2.tint_symbol[17u].www, r3.xyz);
  r3 = vec4<f32>(v_18.xyz, r3.w);
  let v_19 = fma(r2.yzw, r1.www, r0.xzw);
  r0 = vec4<f32>(v_19.x, r0.y, v_19.yz);
  r4 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(1i, 0i));
  let v_20 = (r4.xyz * cb2_2.tint_symbol[17u].www);
  r1 = vec4<f32>(r1.x, v_20.xyz);
  let v_21 = fma(r4.xyz, cb2_2.tint_symbol[17u].www, r3.xyz);
  r2 = vec4<f32>(r2.x, v_21.xyz);
  let v_22 = fma(r1.yzw, r2.xxx, r0.xzw);
  r0 = vec4<f32>(v_22.x, r0.y, v_22.yz);
  r3 = textureSample(t6, s6, v1.xy.xyxx.xy, vec2<i32>(1i));
  let v_23 = (r3.xyz * cb2_2.tint_symbol[17u].www);
  r1 = vec4<f32>(r1.x, v_23.xyz);
  let v_24 = fma(r3.xyz, cb2_2.tint_symbol[17u].www, r2.yzw);
  r2 = vec4<f32>(v_24.xyz, r2.w);
  let v_25 = (r2.xyz * vec3<f32>(0.11111111193895339966f));
  r2 = vec4<f32>(v_25.xyz, r2.w);
  let v_26 = fma(r1.yzw, r1.xxx, r0.xzw);
  r0 = vec4<f32>(v_26.x, r0.y, v_26.yz);
  let v_27 = (r0.xzw / r0.yyy);
  r0 = vec4<f32>(v_27.x, r0.y, v_27.yz);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 3.0f)));
  let v_28 = bitcast<vec3<u32>>(r0.yyy);
  let v_29 = r2.xyz;
  let v_30 = select(r0.xzw, v_29, (v_28 != vec3<u32>()));
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
  o0 = vec4<f32>(v_31.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
