diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  o0.w = 0.0f;
  r0.x = floor(v0.x);
  r1 = fma(r0.xxxx, vec4<f32>(4.0f), vec4<f32>(4.0f, 5.0f, 6.0f, 7.0f));
  let v_2 = fma(r0.xx, vec2<f32>(4.0f), vec2<f32>(3.0f, -1.0f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r1 < cb2_2.tint_symbol[18u].xxxx)));
  let v_3 = r0.x;
  let v_4 = max(v_3, -2147483648.0f);
  r2.x = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  let v_5 = v0.y;
  let v_6 = max(v_5, -2147483648.0f);
  r2.y = bitcast<f32>(select(select(i32(v_6), 2147483647i, (v_6 >= 2147483648.0f)), 0i, !((v_5 == v_5))));
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.y = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r3.x = (r0.y * cb12_12.tint_symbol_1[0u].z);
  r0.y = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r3.y = (r0.y * cb12_12.tint_symbol_1[0u].z);
  r0.y = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r3.z = (r0.y * cb12_12.tint_symbol_1[0u].z);
  r0.y = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r3.w = (r0.y * cb12_12.tint_symbol_1[0u].z);
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & bitcast<vec4<u32>>(r3)));
  r0.y = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r0.y = (r0.y * cb12_12.tint_symbol_1[0u].z);
  r3.x = min(r1.x, r0.y);
  let v_7 = min(r1.yzw, r1.xyz);
  r3 = vec4<f32>(r3.x, v_7.xyz);
  r1 = (r3 * r3);
  r0.z = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r0.z = (r0.z * cb12_12.tint_symbol_1[0u].z);
  r3.w = min(r0.y, r0.z);
  r0.y = fma(r3.w, r3.w, r1.x);
  r0.y = (r0.y + 1.0f);
  r0.w = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r0.w = (r0.w * cb12_12.tint_symbol_1[0u].z);
  r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
  r0.w = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r0.w = (r0.w * cb12_12.tint_symbol_1[0u].z);
  r3.x = min(r0.w, r0.x);
  r0.x = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r0.x = (r0.x * cb12_12.tint_symbol_1[0u].z);
  let v_8 = min(r0.xz, r0.wx);
  let v_9 = r3;
  r3 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r3 = (r3 * r3);
  let v_10 = (r3.yzw + r3.xyz);
  r0 = vec4<f32>(v_10.x, r0.y, v_10.yz);
  let v_11 = (r0.xzw + vec3<f32>(1.0f));
  r0 = vec4<f32>(v_11.x, r0.y, v_11.yz);
  let v_12 = (r3.yzw / r0.xww);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = -(r3.yyyy);
  r0.x = fma(r4.x, v_13.x, r0.z);
  let v_14 = -(r3.zzzz);
  r0.x = fma(r4.y, v_14.x, r0.x);
  let v_15 = -(r3.wwww);
  r0.y = fma(r4.z, v_15.y, r0.y);
  let v_16 = (r1.yzw + r1.xyz);
  r5 = vec4<f32>(v_16.xyz, r5.w);
  let v_17 = (r5.xyz + vec3<f32>(1.0f));
  r5 = vec4<f32>(v_17.xyz, r5.w);
  let v_18 = (r1.xyz / r5.xxz);
  r5 = vec4<f32>(v_18.x, r5.y, v_18.yz);
  let v_19 = -(r1.yyyy);
  r0.z = fma(r5.z, v_19.z, r5.y);
  let v_20 = -(r1.zzzz);
  r0.z = fma(r5.w, v_20.z, r0.z);
  let v_21 = -(r1.xxxx);
  r0.y = fma(r5.x, v_21.y, r0.y);
  r0.w = ((-(r3.zzzz)).w * r4.z);
  let v_22 = ((-(r3.xwxx)).xy * r4.xy);
  r3 = vec4<f32>(v_22.xy, r3.zw);
  r0.x = ((-(r0.wwww)).x / r0.x);
  r0.y = fma(r0.x, r3.y, r0.y);
  r0.w = (r3.x * r0.x);
  o0.x = r0.w;
  let v_23 = ((-(r1.yxyy)).xy * r5.xz);
  r1 = vec4<f32>(v_23.xy, r1.zw);
  r0.w = ((-(r1.wwww)).w * r5.w);
  r0.z = ((-(r1.xxxx)).z / r0.z);
  o0.y = fma(r0.z, r1.y, r0.y);
  o0.z = (r0.w * r0.z);
  let v_24 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r1 = vec4<f32>(v_24.xyz, r1.w);
  let v_25 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r3 = vec4<f32>(v_25.xyz, r3.w);
  let v_26 = fma(r4.xxx, r1.xyz, r3.xyz);
  r1 = vec4<f32>(v_26.xyz, r1.w);
  let v_27 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r3 = vec4<f32>(v_27.xyz, r3.w);
  let v_28 = fma(r4.yyy, r3.xyz, r1.xyz);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  let v_29 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r4 = vec4<f32>(v_29.xy, r4.z, v_29.z);
  let v_30 = fma(r4.zzz, r3.xyz, r4.xyw);
  r3 = vec4<f32>(v_30.xyz, r3.w);
  let v_31 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r4 = vec4<f32>(v_31.xyz, r4.w);
  let v_32 = fma(r5.xxx, r4.xyz, r3.xyz);
  r3 = vec4<f32>(v_32.xyz, r3.w);
  let v_33 = fma(r0.xxx, r1.xyz, r3.xyz);
  r0 = vec4<f32>(v_33.xy, r0.z, v_33.z);
  let v_34 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r1 = vec4<f32>(v_34.xyz, r1.w);
  let v_35 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r2 = vec4<f32>(v_35.xyz, r2.w);
  let v_36 = fma(r5.zzz, r4.xyz, r1.xyz);
  r1 = vec4<f32>(v_36.xyz, r1.w);
  let v_37 = fma(r5.www, r2.xyz, r1.xyz);
  r1 = vec4<f32>(v_37.xyz, r1.w);
  let v_38 = fma(r0.zzz, r1.xyz, r0.xyw);
  o1 = vec4<f32>(v_38.xyz, o1.w);
  o1.w = 0.0f;
}

struct tint_symbol_2 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) v_39 : vec4<f32>) -> tint_symbol_2 {
  main_inner(v_39);
  return tint_symbol_2(o0, o1);
}
