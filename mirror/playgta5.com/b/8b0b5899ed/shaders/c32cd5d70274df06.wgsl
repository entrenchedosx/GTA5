diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb69_struct {
  tint_symbol_1 : array<vec4<f32>, 69u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb69_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = (cb2_2.tint_symbol[18u].x / cb2_2.tint_symbol[18u].y);
  r1 = (v1.xy.xyxy + vec4<f32>(-0.5f));
  r0.x = (r0.x * r0.x);
  let v = (r1.xy * r1.xy);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  r0.y = (r0.z + r0.y);
  r0.x = (r0.y * r0.x);
  let v_2 = ((-(cb5_5.tint_symbol_1[68u].zzwz)).yz + cb5_5.tint_symbol_1[68u].xy);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.z == 0.0f)));
  r2.x = fma(r0.x, r0.y, 1.0f);
  r0.y = (r0.z * r0.y);
  r0.z = sqrt(r0.x);
  r0.y = (r0.z * r0.y);
  r0.y = fma(r0.x, r0.y, 1.0f);
  let v_4 = bitcast<u32>(r0.w);
  let v_5 = r2.x;
  r0.y = select(r0.y, v_5, (v_4 != 0u));
  r0.w = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[68u].y == 0.0f)));
  r2.x = fma(r0.x, cb5_5.tint_symbol_1[68u].x, 1.0f);
  r2.y = (cb5_5.tint_symbol_1[68u].y * cb5_5.tint_symbol_1[68u].x);
  r0.z = (r0.z * r2.y);
  r0.x = fma(r0.x, r0.z, 1.0f);
  let v_6 = bitcast<u32>(r0.w);
  let v_7 = r2.x;
  r0.x = select(r0.x, v_7, (v_6 != 0u));
  let v_8 = fma(r1.xy, r0.yy, vec2<f32>(0.5f));
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r2 = textureSample(t5, s5, r0.yzyy.xy);
  let v_10 = fma(r1.xy, r0.xx, vec2<f32>(0.5f));
  r0 = vec4<f32>(v_10.xy, r0.zw);
  r0 = textureSample(t5, s5, r0.xyxx.xy);
  r0.w = dot(r1.zw, r1.zw);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r0.w = log2(r0.w);
  r0.w = (r0.w * cb5_5.tint_symbol_1[57u].y);
  r0.w = exp2(r0.w);
  r0.w = clamp(((r0.wwww + cb5_5.tint_symbol_1[57u].xxxx)).w, 0.0f, 1.0f);
  r0.w = clamp(((r0.wwww * cb5_5.tint_symbol_1[57u].zzzz)).w, 0.0f, 1.0f);
  let v_11 = ((-(cb5_5.tint_symbol_1[58u].xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = fma(r0.www, r1.xyz, cb5_5.tint_symbol_1[58u].xyz);
  r1 = vec4<f32>(v_12.xyz, r1.w);
  r0.x = r2.x;
  let v_13 = (r1.xyz * r0.xyz);
  r0 = vec4<f32>(v_13.x, r0.y, v_13.yz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_1[15u].z)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_14 = fma(v1.xy, vec2<f32>(12.80000019073486328125f, 7.19999980926513671875f), cb5_5.tint_symbol_1[15u].xy);
    let v_15 = r1;
    r1 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
    let v_16 = fract(r1.xz);
    let v_17 = r1;
    r1 = vec4<f32>(v_16.x, v_17.y, v_16.y, v_17.w);
    r2 = textureSample(t7, s7, r1.xzxx.xy);
    r1.x = (r2.w + -0.5f);
    r1.x = (r1.x * cb5_5.tint_symbol_1[15u].z);
    let v_18 = fma(r1.xx, cb5_5.tint_symbol_1[15u].xy, r0.xw);
    r1 = vec4<f32>(r1.xy, v_18.xy);
    r0.y = fma(r0.y, r1.y, r1.x);
    r0.z = max(r0.y, 0.0f);
    let v_19 = max(r1.zw, vec2<f32>());
    r0 = vec4<f32>(v_19.x, r0.yz, v_19.y);
  }
  let v_20 = r0;
  o0 = vec4<f32>(v_20.xzw, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
