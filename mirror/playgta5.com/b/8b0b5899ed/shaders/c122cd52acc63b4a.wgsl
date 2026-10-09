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

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb21_struct {
  tint_symbol_2 : array<vec4<f32>, 21u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb21_struct;

@group(1u) @binding(39u) var t7 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_multisampled_2d<u32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v3 : u32) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  let v = fma(r0.xy, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  r1.z = 1.0f;
  r2.x = dot(r1.xyz, cb12_12.tint_symbol_2[18u].xyz);
  r2.y = dot(r1.xyz, cb12_12.tint_symbol_2[19u].xyz);
  r2.z = dot(r1.xyz, cb12_12.tint_symbol_2[20u].xyz);
  let v_1 = (r0.xy * cb2_2.tint_symbol_1[18u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0.xy;
  let v_3 = max(v_2, vec2<f32>(-2147483648.0f));
  let v_4 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_3), vec2<i32>(2147483647i), (v_3 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_2 == v_2))));
  r0 = vec4<f32>(v_4.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).x;
  r1.x = ((-(r1.xxxx)).x + cb12_12.tint_symbol_2[17u].w);
  r1.x = (r1.x + 1.0f);
  r1.x = (cb12_12.tint_symbol_2[17u].z / r1.x);
  let v_5 = fma(r2.xyz, r1.xxx, cb1_1.tint_symbol[15u].xyz);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = -(cb12_12.tint_symbol_2[0u].xyzx);
  let v_7 = (r1.xyz + v_6.xyz);
  r3 = vec4<f32>(v_7.xyz, r3.w);
  r2.w = dot(r3.xyz, cb12_12.tint_symbol_2[1u].xyz);
  r2.w = clamp(((r2.wwww / cb12_12.tint_symbol_2[5u].xxxx)).w, 0.0f, 1.0f);
  r2.w = (r2.w * cb12_12.tint_symbol_2[5u].x);
  let v_8 = fma(cb12_12.tint_symbol_2[1u].xyz, r2.www, cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_8.xyz, r3.w);
  let v_9 = ((-(r1.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_9.xyz, r3.w);
  r2.w = dot(r3.xyz, r3.xyz);
  r3.w = clamp(fma(-(r2.wwww), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).w, 0.0f, 1.0f);
  r4.x = ((-(cb12_12.tint_symbol_2[7u].xxxx)).x + 1.0f);
  r4.x = fma(r4.x, r3.w, cb12_12.tint_symbol_2[7u].x);
  r3.w = (r3.w / r4.x);
  r1.w = 1.0f;
  r1.x = dot(r1, cb12_12.tint_symbol_2[6u]);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = (r1.x * r3.w);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x < 0.00000099999999747524f)));
  v_10((bitcast<u32>(r1.y) != 0u));
  r1.y = bitcast<f32>(textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).y);
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 8u));
  r1.y = f32(bitcast<u32>(r1.y));
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= 8.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.y) & 1065353216u));
  let v_11 = textureLoad(t7, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r4 = vec4<f32>(v_11.xyz, r4.w);
  let v_12 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_12.xyz, r4.w);
  let v_13 = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3)).xyz;
  r5 = vec4<f32>(v_13.xyz, r5.w);
  let v_14 = (r5.xy * r5.xy);
  r1 = vec4<f32>(r1.xy, v_14.xy);
  r0 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(v3));
  let v_15 = (r0.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_15.xy, r5.z, v_15.z);
  let v_16 = fract(r5.xyw);
  r5 = vec4<f32>(v_16.xy, r5.z, v_16.z);
  let v_17 = fma((-(r5.ywyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_17.xy, r5.zw);
  let v_18 = fma(r0.xyz, vec3<f32>(256.0f), r5.xyw);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (r0.xyz + vec3<f32>(-128.0f));
  r0 = vec4<f32>(v_19.xyz, r0.w);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = inverseSqrt(r0.w);
  let v_20 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_20.xyz, r0.w);
  r0.w = min(r1.z, 1.0f);
  r1.z = fma(r1.w, 512.0f, -500.0f);
  r1.z = max(r1.z, 0.0f);
  let v_21 = -(r1.zzzz);
  r1.w = fma(r1.w, 512.0f, v_21.w);
  r1.z = (r1.z * 558.0f);
  r1.z = fma(r1.w, 3.0f, r1.z);
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_22 = (r1.www * r2.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  r1.w = inverseSqrt(r2.w);
  let v_23 = (r1.www * r3.xyz);
  r5 = vec4<f32>(v_23.xy, r5.z, v_23.z);
  let v_24 = -(r2.xyzx);
  let v_25 = fma(r3.xyz, r1.www, v_24.xyz);
  r3 = vec4<f32>(v_25.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_26 = (r1.www * r3.xyz);
  r3 = vec4<f32>(v_26.xyz, r3.w);
  r1.x = (r1.y * r1.x);
  let v_27 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_27.xyz, r6.w);
  let v_28 = dot(r0.xyz, r5.xyw);
  r1.y = clamp(vec4<f32>(v_28, v_28, v_28, v_28).y, 0.0f, 1.0f);
  let v_29 = dot((-(r2.xyzx)).xyz, r0.xyz);
  r2.x = clamp(vec4<f32>(v_29, v_29, v_29, v_29).x, 0.0f, 1.0f);
  let v_30 = dot(r3.xyz, r5.xyw);
  r2.y = clamp(vec4<f32>(v_30, v_30, v_30, v_30).y, 0.0f, 1.0f);
  let v_31 = ((-(r2.xyxx)).xy + vec2<f32>(1.0f));
  r2 = vec4<f32>(v_31.xy, r2.zw);
  let v_32 = (r2.xy * r2.xy);
  r2 = vec4<f32>(r2.xy, v_32.xy);
  let v_33 = (r2.zw * r2.zw);
  r2 = vec4<f32>(r2.xy, v_33.xy);
  let v_34 = (r2.xy * r2.zw);
  r2 = vec4<f32>(v_34.xy, r2.zw);
  r1.w = ((-(r5.zzzz)).w + 1.0f);
  let v_35 = fma(r5.zz, r2.xy, r1.ww);
  r2 = vec4<f32>(v_35.xy, r2.zw);
  let v_36 = (r1.zz + vec2<f32>(2.0f, 0.00000000999999993923f));
  r1 = vec4<f32>(r1.xy, v_36.xy);
  r1.z = (r1.z * 0.125f);
  r2.x = fma((-(r0.wwww)).x, r2.x, 1.0f);
  r0.x = dot(r0.xyz, r3.xyz);
  r0.x = clamp(((r0.xxxx + vec4<f32>(0.00000000999999993923f))).x, 0.0f, 1.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * r1.w);
  r0.x = exp2(r0.x);
  r0.x = (r2.y * r0.x);
  r0.x = (r1.z * r0.x);
  r0.x = (r0.w * r0.x);
  r0.x = (r1.y * r0.x);
  r0.y = (r1.y * r2.x);
  r0.x = (r0.x * cb12_12.tint_symbol_2[8u].z);
  let v_37 = fma(r4.xyz, r0.yyy, r0.xxx);
  r0 = vec4<f32>(v_37.xyz, r0.w);
  let v_38 = (r6.xyz * r0.xyz);
  r0 = vec4<f32>(v_38.xyz, r0.w);
  let v_39 = (r1.xxx * r0.xyz);
  r0 = vec4<f32>(v_39.xyz, r0.w);
  let v_40 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_40.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_10(v_41 : bool) {
  if (v_41) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) @interpolate(perspective, sample) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v1, v3);
  return o0;
}
