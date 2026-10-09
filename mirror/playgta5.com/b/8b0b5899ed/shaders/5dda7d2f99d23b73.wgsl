diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb7_struct {
  tint_symbol : array<vec4<f32>, 7u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb7_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(1u) @binding(33u) var<storage, read> t1 : tint_symbol_2;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec2<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = textureSample(t4, s4, v1.xyxx.xy).x;
  r0.x = ((-(r0.xxxx)).x + cb5_5.tint_symbol[0u].w);
  r0.x = (r0.x + 1.0f);
  r0.x = (cb5_5.tint_symbol[0u].z / r0.x);
  r0.y = textureSample(t11, s11, v1.xyxx.xy).x;
  r0.z = textureSample(t12, s12, v1.xyxx.xy).x;
  r0.z = clamp(r0.zzzz.z, 0.0f, 1.0f);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.x = fma(r0.z, r0.y, r0.x);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.00000099999999747524f)));
  if ((bitcast<u32>(r0.z) != 0u)) {
    r0.y = 1.0f;
  } else {
    let v = t1.tint_symbol_1[0u];
    let v_1 = t1.tint_symbol_1[1u];
    let v_2 = t1.tint_symbol_1[2u];
    let v_3 = bitcast<vec3<f32>>(vec3<u32>(vec4<u32>(v, v, v, v).x, vec4<u32>(v_1, v_1, v_1, v_1).x, vec4<u32>(v_2, v_2, v_2, v_2).x));
    r1 = vec4<f32>(v_3.xyz, r1.w);
    r0.z = (r1.x / r0.x);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r0.z)));
    r1.x = (r0.z + -1.0f);
    r1.x = (r1.x * r1.y);
    r1.x = log2(r1.x);
    r1.x = (r1.x * cb5_5.tint_symbol[6u].z);
    r2.x = exp2(r1.x);
    r0.z = ((-(r0.zzzz)).z + 1.0f);
    r2.z = (r0.z * r1.z);
    let v_4 = r2;
    r2 = vec4<f32>(v_4.x, -1.0f, v_4.z, 1.0f);
    let v_5 = bitcast<vec2<u32>>(r0.ww);
    let v_6 = r2.xy;
    let v_7 = select(r2.zw, v_6, (v_5 != vec2<u32>()));
    r1 = vec4<f32>(v_7.xy, r1.zw);
    let v_8 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xx >= cb5_5.tint_symbol[5u].yx)));
    r1 = vec4<f32>(r1.xy, v_8.xy);
    let v_9 = -(cb5_5.tint_symbol[5u].xxxx);
    r0.z = (v_9.z + cb5_5.tint_symbol[5u].y);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.00000099999999747524f)));
    r2.y = (r0.x + v_9.y);
    r2.y = (r2.y * cb5_5.tint_symbol[5u].z);
    r0.z = (r2.y / r0.z);
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r2.x)));
    r0.z = bitcast<f32>((bitcast<u32>(r0.z) & bitcast<u32>(r1.w)));
    let v_10 = bitcast<u32>(r1.z);
    let v_11 = cb5_5.tint_symbol[5u].z;
    r0.z = select(r0.z, v_11, (v_10 != 0u));
    r0.z = max(r0.z, r1.x);
    let v_12 = -(cb5_5.tint_symbol[3u].xxzx);
    let v_13 = (r0.xx + v_12.xz);
    let v_14 = r1;
    r1 = vec4<f32>(v_13.x, v_14.y, v_13.y, v_14.w);
    let v_15 = clamp(((r1.xxzx * cb5_5.tint_symbol[3u].yywy)).xz, vec2<f32>(), vec2<f32>(1.0f));
    let v_16 = r1;
    r1 = vec4<f32>(v_15.x, v_16.y, v_15.y, v_16.w);
    r1.x = ((-(r1.xxxx)).x + 1.0f);
    r1.x = (r1.z + r1.x);
    r1.x = min(r1.x, 1.0f);
    let v_17 = -(r0.zzzz);
    r1.x = fma(cb5_5.tint_symbol[6u].y, r1.x, v_17.x);
    r0.z = fma(cb5_5.tint_symbol[6u].x, r1.x, r0.z);
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 1073741824u));
    r0.w = fma(cb5_5.tint_symbol[6u].x, r0.w, r1.y);
    r0.z = (r0.z * 0.06666667014360427856f);
    r0.z = min(r0.z, 1.0f);
    r1.x = ((-(r0.zzzz)).x + 1.0f);
    r0.z = fma(cb5_5.tint_symbol[5u].w, r1.x, r0.z);
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.0f)));
    r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol[5u].w)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r1.w)));
    r1.x = bitcast<f32>(~(bitcast<u32>(r1.x)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
    let v_18 = -(r0.zzzz);
    let v_19 = bitcast<u32>(r0.w);
    r0.y = select(r0.z, v_18.y, (v_19 != 0u));
  }
  o0 = r0.xy;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec2<f32> {
  main_inner(v1);
  return o0;
}
