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

struct cb18_struct {
  tint_symbol : array<vec4<f32>, 18u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb18_struct;

struct cb5_struct {
  tint_symbol_1 : array<vec4<f32>, 5u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb5_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  let v = (v2.xy * cb5_5.tint_symbol_1[0u].zw);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = round(r0.xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = (r0.xy * cb5_5.tint_symbol_1[0u].xy);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = textureSample(t5, s5, v2.xy.xyxx.xy);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r2 = (cb5_5.tint_symbol_1[0u].xyxy * vec4<f32>(-0.5f, -0.5f, 0.5f, 0.5f));
  r3 = fma(cb5_5.tint_symbol_1[0u].xyxy, vec4<f32>(0.5f, -0.5f, -0.5f, 0.5f), r0.zwzw);
  r4 = fma(r0.xyxy, cb5_5.tint_symbol_1[0u].xyxy, r2);
  r5 = textureSample(t8, s8, r4.xyxx.xy);
  r6 = textureSample(t8, s8, r3.xyxx.xy);
  r7 = textureSample(t8, s8, r3.zwzz.xy);
  r8 = textureSample(t8, s8, r4.zwzz.xy).yzwx;
  r8.x = r5.x;
  r8.y = r6.x;
  r8.z = r7.x;
  r5 = (-(r8) + vec4<f32>(1.0f));
  r1 = (-(r1.xxxx) + r5);
  r1 = (abs(r1) / cb5_5.tint_symbol_1[4u].xxxx);
  r1 = (r1 * r1);
  r1 = (r1 * vec4<f32>(-0.72134751081466674805f));
  r1 = exp2(r1);
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r1 < vec4<f32>(0.00000999999974737875f))));
  let v_3 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r5.zw) & bitcast<vec2<u32>>(r5.xy)));
  r0 = vec4<f32>(r0.xy, v_3.xy);
  r0.z = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.z)));
  let v_4 = bitcast<vec4<u32>>(r0.zzzz);
  r1 = select(r1, vec4<f32>(1.0f), (v_4 != vec4<u32>()));
  r5 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r1 < cb5_5.tint_symbol_1[4u].yyyy)));
  r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r5) & vec4<u32>(1065353216u)));
  r0.z = dot(r5, vec4<f32>(1.0f));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.z)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    let v_5 = fma((-(r0.xyxx)).xy, cb5_5.tint_symbol_1[0u].xy, v2.xy);
    r0 = vec4<f32>(v_5.xy, r0.zw);
    let v_6 = (r0.xy / r2.zw);
    r0 = vec4<f32>(v_6.xy, r0.zw);
    let v_7 = fma(r0.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r0 = vec4<f32>(v_7.xy, r0.zw);
    r0.z = ((-(r0.xxxx)).z + 1.0f);
    r0.z = ((-(r0.yyyy)).z + r0.z);
    r2.w = (r0.y * r0.x);
    r2.x = fma(r0.x, r0.y, r0.z);
    let v_8 = fma((-(r0.xxxx)).yz, r0.yy, r0.xy);
    let v_9 = r2;
    r2 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
    r0 = (r1 * r2);
    r1.x = dot(r0, vec4<f32>(1.0f));
    r2 = textureSampleLevel(t4, s4, r4.xyxx.xy, 0.0f);
    r5 = textureSampleLevel(t4, s4, r3.xyxx.xy, 0.0f);
    r5 = (r0.yyyy * r5);
    r2 = fma(r2, r0.xxxx, r5);
    r3 = textureSampleLevel(t4, s4, r3.zwzz.xy, 0.0f);
    r2 = fma(r3, r0.zzzz, r2);
    r3 = textureSampleLevel(t4, s4, r4.zwzz.xy, 0.0f);
    r0 = fma(r3, r0.wwww, r2);
    r1.y = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r1.x))));
    let v_10 = bitcast<u32>(r1.y);
    r1.x = select(1.0f, r1.x, (v_10 != 0u));
    r0 = (r0 / r1.xxxx);
    let v_11 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
    o0 = vec4<f32>(v_11.xyz, o0.w);
    o0.w = r0.w;
  } else {
    r0 = textureSample(t4, s4, v2.xy.xyxx.xy);
    let v_12 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
    o0 = vec4<f32>(v_12.xyz, o0.w);
    o0.w = r0.w;
  }
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
