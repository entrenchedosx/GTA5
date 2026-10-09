diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> x0 : array<vec4<f32>, 4u>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0.x = (v0.x * 0.25f);
  r0.y = floor(r0.x);
  let v_2 = r0.x;
  let v_3 = max(v_2, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_3), 2147483647i, (v_3 >= 2147483648.0f)), 0i, !((v_2 == v_2))));
  let v_4 = fma(r0.yy, vec2<f32>(4.0f), vec2<f32>(3.0f, -1.0f));
  let v_5 = r0;
  r0 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yz >= vec2<f32>())));
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = r0.x;
  let v_9 = max(v_8, -2147483648.0f);
  r2.x = bitcast<f32>(select(select(i32(v_9), 2147483647i, (v_9 >= 2147483648.0f)), 0i, !((v_8 == v_8))));
  let v_10 = v0.y;
  let v_11 = max(v_10, -2147483648.0f);
  r2.y = bitcast<f32>(select(select(i32(v_11), 2147483647i, (v_11 >= 2147483648.0f)), 0i, !((v_10 == v_10))));
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r0.x = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r0.x = (r0.x * cb12_12.tint_symbol[0u].z);
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r0.z)));
  r0.z = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r0.z = (r0.z * cb12_12.tint_symbol[0u].z);
  r0.y = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r0.y)));
  r0.x = min(r0.y, r0.x);
  r0.z = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r0.z = (r0.z * cb12_12.tint_symbol[0u].z);
  r0.y = min(r0.z, r0.y);
  r0.w = (r0.y * r0.y);
  r3.x = fma(r0.x, r0.x, r0.w);
  r3.x = (r3.x + 1.0f);
  r3.y = (r0.w / r3.x);
  let v_12 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = fma(r3.yyy, r5.xyz, r4.xyz);
  r4 = vec4<f32>(v_14.xyz, r4.w);
  r3.z = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  r3.z = (r3.z * cb12_12.tint_symbol[0u].z);
  r3.w = textureLoad(t2, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).y;
  let v_15 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), bitcast<i32>(r2.w)).xyz;
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r2.w = (r3.w * cb12_12.tint_symbol[0u].z);
  r3.z = min(r3.z, r2.w);
  r0.z = min(r0.z, r2.w);
  r2.w = (r3.z * r3.z);
  r3.z = fma(r0.z, r0.z, r2.w);
  let v_16 = (r0.xz * r0.xz);
  let v_17 = r0;
  r0 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
  r3.z = (r3.z + 1.0f);
  r3.w = (r0.z / r3.z);
  let v_18 = fma(r3.www, r2.xyz, r4.xyz);
  r4 = vec4<f32>(v_18.xyz, r4.w);
  r4.w = ((-(r0.xxxx)).w * r3.y);
  let v_19 = v0.y;
  let v_20 = max(v_19, -2147483648.0f);
  r1.y = bitcast<f32>(select(select(i32(v_20), 2147483647i, (v_20 >= 2147483648.0f)), 0i, !((v_19 == v_19))));
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  let v_21 = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r6 = vec4<f32>(v_21.xyz, r6.w);
  let v_22 = textureLoad(t5, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r1 = vec4<f32>(v_22.xyz, r1.w);
  let v_23 = fma((-(r4.wwww)).xyz, r6.xyz, r4.xyz);
  r4 = vec4<f32>(v_23.xyz, r4.w);
  let v_24 = fma(r0.xxx, r6.xyz, r5.xyz);
  r5 = vec4<f32>(v_24.xyz, r5.w);
  r0.x = ((-(r2.wwww)).x * r3.w);
  let v_25 = fma((-(r0.xxxx)).xyz, r1.xyz, r4.xyz);
  r4 = vec4<f32>(v_25.xyz, r4.w);
  r0.x = fma(r0.y, r0.y, r0.z);
  r0.x = (r0.x + 1.0f);
  let v_26 = -(r0.wwww);
  r0.x = fma(r3.y, v_26.x, r0.x);
  let v_27 = -(r0.zzzz);
  r0.x = fma(r3.w, v_27.x, r0.x);
  let v_28 = (r4.xyz / r0.xxx);
  r4 = vec4<f32>(v_28.xyz, r4.w);
  let v_29 = fma(r0.www, r4.xyz, r5.xyz);
  r0 = vec4<f32>(v_29.xy, r0.z, v_29.z);
  let v_30 = (r0.xyw / r3.xxx);
  r0 = vec4<f32>(v_30.xy, r0.z, v_30.z);
  let v_31 = &(x0[0u]);
  let v_32 = r0;
  *(v_31) = vec4<f32>(v_32.xyw, (*(v_31)).w);
  let v_33 = &(x0[1u]);
  let v_34 = r4;
  *(v_33) = vec4<f32>(v_34.xyz, (*(v_33)).w);
  let v_35 = fma(r0.zzz, r4.xyz, r2.xyz);
  r0 = vec4<f32>(v_35.xyz, r0.w);
  let v_36 = fma(r2.www, r1.xyz, r0.xyz);
  r0 = vec4<f32>(v_36.xyz, r0.w);
  let v_37 = (r0.xyz / r3.zzz);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = &(x0[2u]);
  let v_39 = r0;
  *(v_38) = vec4<f32>(v_39.xyz, (*(v_38)).w);
  let v_40 = &(x0[3u]);
  let v_41 = r1;
  *(v_40) = vec4<f32>(v_41.xyz, (*(v_40)).w);
  let v_42 = max(v0.x, 0.0f);
  r0.x = bitcast<f32>(select(u32(v_42), 4294967295u, (v_42 >= 4294967296.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 3u));
  let v_43 = x0[bitcast<i32>(r0.x)];
  o0 = vec4<f32>(v_43.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@builtin(position) v_44 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_44);
  return o0;
}
