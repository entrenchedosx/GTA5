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

var<private> r9 : vec4<f32>;

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
  r0 = textureSample(t4, s4, v2.xy.xyxx.xy);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  v((bitcast<u32>(r1.x) != 0u));
  let v_1 = (v2.xy * cb5_5.tint_symbol_1[0u].zw);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  let v_2 = round(r1.xy);
  r1 = vec4<f32>(v_2.xy, r1.zw);
  let v_3 = (r1.xy * cb5_5.tint_symbol_1[0u].xy);
  r1 = vec4<f32>(r1.xy, v_3.xy);
  r2 = textureSample(t5, s5, v2.xy.xyxx.xy);
  r2.x = ((-(r2.xxxx)).x + 1.0f);
  r3 = (cb5_5.tint_symbol_1[0u].xyxy * vec4<f32>(-0.5f, -0.5f, 0.5f, 0.5f));
  r4 = fma(cb5_5.tint_symbol_1[0u].xyxy, vec4<f32>(0.5f, -0.5f, -0.5f, 0.5f), r1.zwzw);
  r5 = fma(r1.xyxy, cb5_5.tint_symbol_1[0u].xyxy, r3);
  r6 = textureSample(t8, s8, r5.xyxx.xy);
  r7 = textureSample(t8, s8, r4.xyxx.xy);
  r8 = textureSample(t8, s8, r4.zwzz.xy);
  r9 = textureSample(t8, s8, r5.zwzz.xy).yzwx;
  r9.x = r6.x;
  r9.y = r7.x;
  r9.z = r8.x;
  r6 = (-(r9) + vec4<f32>(1.0f));
  r2 = (-(r2.xxxx) + r6);
  r2 = (abs(r2) / cb5_5.tint_symbol_1[4u].xxxx);
  r2 = (r2 * r2);
  r2 = (r2 * vec4<f32>(-0.72134751081466674805f));
  r2 = exp2(r2);
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r2 < vec4<f32>(0.00000999999974737875f))));
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r6.zw) & bitcast<vec2<u32>>(r6.xy)));
  r1 = vec4<f32>(r1.xy, v_4.xy);
  r1.z = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.z)));
  let v_5 = bitcast<vec4<u32>>(r1.zzzz);
  r2 = select(r2, vec4<f32>(1.0f), (v_5 != vec4<u32>()));
  r6 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (r2 < cb5_5.tint_symbol_1[4u].yyyy)));
  r6 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r6) & vec4<u32>(1065353216u)));
  r1.z = dot(r6, vec4<f32>(1.0f));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.z)));
  if ((bitcast<u32>(r1.z) != 0u)) {
    let v_6 = fma((-(r1.xyxx)).xy, cb5_5.tint_symbol_1[0u].xy, v2.xy);
    r1 = vec4<f32>(v_6.xy, r1.zw);
    let v_7 = (r1.xy / r3.zw);
    r1 = vec4<f32>(v_7.xy, r1.zw);
    let v_8 = fma(r1.xy, vec2<f32>(0.5f), vec2<f32>(0.5f));
    r1 = vec4<f32>(v_8.xy, r1.zw);
    r1.z = ((-(r1.xxxx)).z + 1.0f);
    r1.z = ((-(r1.yyyy)).z + r1.z);
    r3.w = (r1.y * r1.x);
    r3.x = fma(r1.x, r1.y, r1.z);
    let v_9 = fma((-(r1.xxxx)).yz, r1.yy, r1.xy);
    let v_10 = r3;
    r3 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
    r1 = (r2 * r3);
    r2.x = dot(r1, vec4<f32>(1.0f));
    r3 = textureSampleLevel(t4, s4, r5.xyxx.xy, 0.0f);
    r6 = textureSampleLevel(t4, s4, r4.xyxx.xy, 0.0f);
    r6 = (r1.yyyy * r6);
    r3 = fma(r3, r1.xxxx, r6);
    r4 = textureSampleLevel(t4, s4, r4.zwzz.xy, 0.0f);
    r3 = fma(r4, r1.zzzz, r3);
    r4 = textureSampleLevel(t4, s4, r5.zwzz.xy, 0.0f);
    r1 = fma(r4, r1.wwww, r3);
    r2.y = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r2.x))));
    let v_11 = bitcast<u32>(r2.y);
    r2.x = select(1.0f, r2.x, (v_11 != 0u));
    r1 = (r1 / r2.xxxx);
    let v_12 = (r1.xyz * cb2_2.tint_symbol[17u].zzz);
    o0 = vec4<f32>(v_12.xyz, o0.w);
    o0.w = r1.w;
  } else {
    let v_13 = (r0.xyz * cb2_2.tint_symbol[17u].zzz);
    o0 = vec4<f32>(v_13.xyz, o0.w);
    o0.w = r0.w;
  }
}

fn v(v_14 : bool) {
  if (v_14) {
    discard;
    return;
  }
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
