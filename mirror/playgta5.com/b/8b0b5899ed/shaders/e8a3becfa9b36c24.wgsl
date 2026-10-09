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

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb18_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct_1;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy / v1.ww)).xy, r0.zw);
  r1 = textureSample(t12, s12, r0.xyxx.xy);
  r0.z = ((-(r1.xxxx)).z + cb12_12.tint_symbol_2[17u].w);
  r0.z = (r0.z + 1.0f);
  r0.z = (cb12_12.tint_symbol_2[17u].z / r0.z);
  r1 = vec4<f32>(((v2.xyz / v2.www)).xyz, r1.w);
  let v = fma(r1.xyz, r0.zzz, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v.xyz, r2.w);
  let v_1 = ((-(r2.xyzx)).xyz + cb12_12.tint_symbol_2[0u].xyz);
  r3 = vec4<f32>(v_1.xyz, r3.w);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = inverseSqrt(r0.z);
  let v_2 = (r0.www * r3.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  r0.z = clamp(fma(-(r0.zzzz), cb12_12.tint_symbol_2[4u].zzzz, vec4<f32>(1.0f)).z, 0.0f, 1.0f);
  r0.w = ((-(cb12_12.tint_symbol_2[7u].xxxx)).w + 1.0f);
  r0.w = fma(r0.w, r0.z, cb12_12.tint_symbol_2[7u].x);
  r0.z = (r0.z / r0.w);
  let v_3 = -(cb12_12.tint_symbol_2[1u].xyzx);
  r0.w = dot(r3.xyz, v_3.xyz);
  r0.w = clamp(fma(r0.wwww, cb12_12.tint_symbol_2[5u].wwww, cb12_12.tint_symbol_2[5u].zzzz).w, 0.0f, 1.0f);
  r0.z = (r0.w * r0.z);
  r2.w = 1.0f;
  r0.w = dot(r2, cb12_12.tint_symbol_2[6u]);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1065353216u));
  r0.z = (r0.w * r0.z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.z < 0.00000099999999747524f)));
  v_4((bitcast<u32>(r0.w) != 0u));
  r4 = textureSample(t7, s7, r0.xyxx.xy);
  let v_5 = (r4.xyz * r4.xyz);
  r4 = vec4<f32>(v_5.xyz, r4.w);
  r5 = textureSample(t9, s9, r0.xyxx.xy);
  r0.w = (r5.x * r5.x);
  r6 = textureSample(t8, s8, r0.xyxx.xy);
  let v_6 = (r6.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
  r5 = vec4<f32>(v_6.xy, r5.z, v_6.z);
  let v_7 = fract(r5.xyw);
  r5 = vec4<f32>(v_7.xy, r5.z, v_7.z);
  let v_8 = fma((-(r5.ywyy)).xy, vec2<f32>(0.125f), r5.xy);
  r5 = vec4<f32>(v_8.xy, r5.zw);
  let v_9 = fma(r6.xyz, vec3<f32>(256.0f), r5.xyw);
  r5 = vec4<f32>(v_9.xy, r5.z, v_9.z);
  let v_10 = (r5.xyw + vec3<f32>(-128.0f));
  r5 = vec4<f32>(v_10.xy, r5.z, v_10.z);
  r0.x = dot(r5.xyw, r5.xyw);
  r0.x = inverseSqrt(r0.x);
  let v_11 = (r0.xxx * r5.xyw);
  r5 = vec4<f32>(v_11.xy, r5.z, v_11.z);
  r0.x = min(r0.w, 1.0f);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = inverseSqrt(r0.y);
  let v_12 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  let v_13 = (cb12_12.tint_symbol_2[3u].www * cb12_12.tint_symbol_2[3u].xyz);
  r6 = vec4<f32>(v_13.xyz, r6.w);
  let v_14 = dot(r5.xyw, r3.xyz);
  r0.y = clamp(vec4<f32>(v_14, v_14, v_14, v_14).y, 0.0f, 1.0f);
  let v_15 = dot((-(r1.xyzx)).xyz, r5.xyw);
  r0.w = clamp(vec4<f32>(v_15, v_15, v_15, v_15).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.x = (r0.w * r0.w);
  r1.x = (r1.x * r1.x);
  r0.w = (r0.w * r1.x);
  r1.x = ((-(r5.zzzz)).x + 1.0f);
  r0.w = fma(r5.z, r0.w, r1.x);
  r0.x = fma((-(r0.xxxx)).x, r0.w, 1.0f);
  r0.x = (r0.x * r0.y);
  r0.y = (r2.z + cb12_12.tint_symbol_2[7u].z);
  r0.y = ((-(r0.yyyy)).y / r3.z);
  r1 = fma(r3.xyyx, r0.yyyy, r2.xyyx);
  r3 = (cb12_12.tint_symbol_2[7u].wwww * vec4<f32>(15.0f, 15.0f, -15.0f, -15.0f));
  r1 = fma(r1, vec4<f32>(1.0f, 1.0f, 0.74545997381210327148f, 0.74545997381210327148f), r3);
  r3 = textureSample(t3, s3, r1.xyxx.xy);
  r1 = textureSample(t3, s3, r1.zwzz.xy);
  let v_16 = (r1.xyz * r3.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = (r1.xyz * vec3<f32>(10.0f));
  r1 = vec4<f32>(v_17.xyz, r1.w);
  r0.w = ((-(r2.zzzz)).w + cb12_12.tint_symbol_2[7u].z);
  r0.w = clamp(((r0.wwww + r0.wwww)).w, 0.0f, 1.0f);
  r0.y = ((-(r0.yyyy)).y + 25.0f);
  r0.y = clamp(((r0.yyyy * vec4<f32>(0.03999999910593032837f))).y, 0.0f, 1.0f);
  let v_18 = (r0.yyy * r1.xyz);
  r1 = vec4<f32>(v_18.xyz, r1.w);
  let v_19 = -(r0.xxxx);
  let v_20 = fma(r0.xxx, r1.xyz, v_19.xyz);
  r1 = vec4<f32>(v_20.xyz, r1.w);
  let v_21 = fma(r0.www, r1.xyz, r0.xxx);
  r0 = vec4<f32>(v_21.xy, r0.z, v_21.z);
  let v_22 = (r0.xyw * r4.xyz);
  r0 = vec4<f32>(v_22.xy, r0.z, v_22.z);
  let v_23 = (r6.xyz * r0.xyw);
  r0 = vec4<f32>(v_23.xy, r0.z, v_23.z);
  let v_24 = (r0.zzz * r0.xyw);
  r0 = vec4<f32>(v_24.xyz, r0.w);
  let v_25 = (r0.xyz * cb2_2.tint_symbol_1[17u].zzz);
  o0 = vec4<f32>(v_25.xyz, o0.w);
  o0.w = 1.0f;
}

fn v_4(v_26 : bool) {
  if (v_26) {
    discard;
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
