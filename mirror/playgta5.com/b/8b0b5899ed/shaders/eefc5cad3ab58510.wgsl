diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(0u) @binding(4u) var<uniform> cb4_4 : cb4_struct;

struct cb3_struct {
  tint_symbol_2 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb3_struct;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec2<i32>) {
  let v = (cb4_4.tint_symbol_1[0u].xy + vec2<f32>(256.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  r1.z = 0.0f;
  r1 = vec4<f32>(vec2<f32>(v0).xy, r1.zw);
  let v_1 = (r1.xyz + cb1_1.tint_symbol[3u].xyz);
  r2 = vec4<f32>(v_1.xyz, r2.w);
  let v_2 = -(r2.xyxx);
  let v_3 = (r0.xy + v_2.xy);
  r0 = vec4<f32>(v_3.xy, r0.zw);
  let v_4 = ((-(abs(r0.xyxx))).xy + vec2<f32>(256.0f));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = clamp(((r0.xyxx * vec4<f32>(0.10000000149011611938f, 0.10000000149011611938f, 0.0f, 0.0f))).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0.x = min(r0.y, r0.x);
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  let v_6 = -(cb4_4.tint_symbol_1[0u].xyxy);
  r4 = (r2.xyxy + v_6);
  let v_7 = (r4.zw * vec2<f32>(0.5f));
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = fma(r4.xy, vec2<f32>(0.001953125f), vec2<f32>(0.001953125f));
  o1 = vec4<f32>(o1.xy, v_9.xy);
  let v_10 = r0.yz;
  let v_11 = max(v_10, vec2<f32>(-2147483648.0f));
  let v_12 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_11), vec2<i32>(2147483647i), (v_11 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_10 == v_10))));
  r3 = vec4<f32>(v_12.xy, r3.zw);
  r4 = textureLoad(t0, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r0.y = (r0.x * r4.x);
  r4.z = fma(r4.x, r0.x, r2.z);
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r6 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r3.xyxy) + vec4<i32>(1i, 0i, -1i, 0i)));
  r3 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r3.xyxy) + vec4<i32>(0i, 1i, 0i, -1i)));
  let v_13 = r6;
  r5 = vec4<f32>(v_13.zw, r5.zw);
  r5 = textureLoad(t0, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  r6 = textureLoad(t0, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
  r5.y = r6.x;
  r6 = vec4<f32>(r6.xy, vec2<f32>());
  let v_14 = r3;
  r6 = vec4<f32>(v_14.zw, r6.zw);
  r6 = textureLoad(t0, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
  r5.z = r6.x;
  r3 = vec4<f32>(r3.xy, vec2<f32>());
  r3 = textureLoad(t0, bitcast<vec2<i32>>(r3.xy), bitcast<i32>(r3.w));
  r5.w = r3.x;
  r3 = fma(r5, r0.xxxx, r0.yyyy);
  let v_15 = ((-(r3.ywyy)).xy + r3.xz);
  r3 = vec4<f32>(v_15.xy, r3.zw);
  r3.z = 1.0f;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = inverseSqrt(r0.x);
  let v_16 = fma(r3.xy, r0.xx, vec2<f32>(0.00000999999974737875f));
  r0 = vec4<f32>(r0.xy, v_16.xy);
  r1.z = dot(r0.zw, r0.zw);
  r1.w = inverseSqrt(r1.z);
  r1.z = sqrt(r1.z);
  r1.z = fma(r1.z, 4.0f, 1.0f);
  r1.z = sqrt(r1.z);
  r1.z = (r1.z + -1.0f);
  let v_17 = (r0.zw * r1.ww);
  r0 = vec4<f32>(r0.xy, v_17.xy);
  let v_18 = fma((-(r0.zzzw)).zw, r1.zz, r1.xy);
  r2 = vec4<f32>(r2.xy, v_18.xy);
  let v_19 = fma((-(r0.zwzz)).xy, r1.zz, r2.xy);
  r4 = vec4<f32>(v_19.xy, r4.zw);
  let v_20 = (r2.xy * cb4_4.tint_symbol_1[3u].ww);
  o4 = vec4<f32>(o4.xy, v_20.xy);
  let v_21 = (r1.xy + vec2<f32>(256.0f));
  r0 = vec4<f32>(r0.xy, v_21.xy);
  let v_22 = (r0.zw * vec2<f32>(0.001953125f));
  r0 = vec4<f32>(r0.xy, v_22.xy);
  r1 = (r2.wwww * cb1_1.tint_symbol[9u]);
  r1 = fma(r2.zzzz, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.yyyy, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  o0 = r1;
  let v_23 = (r1.xwy * vec3<f32>(0.5f));
  r1 = vec4<f32>(v_23.xyz, r1.w);
  let v_24 = -(r1.zzzz);
  o1.y = fma(r1.w, 0.5f, v_24.y);
  o1.x = (r1.y + r1.x);
  o3.w = r1.w;
  let v_25 = ((-(cb11_11.tint_symbol_2[2u].xzxx)).xy + cb11_11.tint_symbol_2[2u].yw);
  r1 = vec4<f32>(v_25.xy, r1.zw);
  let v_26 = fma(r0.zz, r1.xy, cb11_11.tint_symbol_2[2u].xz);
  let v_27 = r0;
  r0 = vec4<f32>(v_27.x, v_26.xy, v_27.w);
  r0.z = ((-(r0.yyyy)).z + r0.z);
  o2.w = fma(r0.w, r0.z, r0.y);
  let v_28 = (r0.xxx * r3.xyz);
  r0 = vec4<f32>(r0.x, v_28.xyz);
  let v_29 = fma((-(r3.xyzx)).xyz, r0.xxx, vec3<f32>(0.0f, 0.0f, 1.0f));
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_31 = (r4.xyz + v_30.xyz);
  r2 = vec4<f32>(v_31.xyz, r2.w);
  let v_32 = r4;
  o3 = vec4<f32>(v_32.xyz, o3.w);
  let v_33 = -(cb11_11.tint_symbol_2[1u].xyxx);
  let v_34 = (r4.xy + v_33.xy);
  r3 = vec4<f32>(v_34.xy, r3.zw);
  let v_35 = (r3.xy * cb11_11.tint_symbol_2[1u].zw);
  r3 = vec4<f32>(v_35.xy, r3.zw);
  let v_36 = fma(r3.xy, vec2<f32>(1.0f, -1.0f), vec2<f32>(0.0f, 1.0f));
  o4 = vec4<f32>(v_36.xy, o4.zw);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = clamp(((r0.xxxx * vec4<f32>(0.00390625f))).x, 0.0f, 1.0f);
  r0.x = (r0.x * r0.x);
  let v_37 = fma(r0.xxx, r1.xyz, r0.yzw);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_38 = (r0.www * r0.xyz);
  o2 = vec4<f32>(v_38.xyz, o2.w);
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
}

@vertex
fn main(@location(0u) v0 : vec2<i32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1, o2, o3, o4);
}
