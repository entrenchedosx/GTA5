diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb73_struct {
  tint_symbol : array<vec4<f32>, 73u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb73_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  r0 = textureSample(t4, s4, v1.xy.xyxx.xy);
  r0.x = dot(v0.xy, vec2<f32>(0.5f));
  r0.x = fract(r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 0.5f)));
  let v_2 = fma(cb5_5.tint_symbol[72u].xy, vec2<f32>(1.0f, 0.0f), v1.xy);
  let v_3 = r0;
  r0 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r1 = textureSample(t4, s4, r0.yzyy.xy).wxyz;
  if ((bitcast<u32>(r0.x) != 0u)) {
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x == 0.0f)));
    if ((bitcast<u32>(r1.y) != 0u)) {
      r2 = textureSample(t5, s5, v1.xy.xyxx.xy);
    }
  } else {
    let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.ww == vec2<f32>(0.0f, 1.0f))));
    let v_5 = r1;
    r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
    r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
    if ((bitcast<u32>(r1.y) != 0u)) {
      r2 = textureSample(t5, s5, v1.xy.xyxx.xy);
    }
    r1.x = 1.0f;
  }
  r3 = textureSample(t5, s5, r0.yzyy.xy);
  if ((bitcast<u32>(r1.y) != 0u)) {
  } else {
    r4 = textureSample(t5, s5, v1.xy.xyxx.xy);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
    let v_6 = bitcast<u32>(r0.y);
    r0.y = select(r0.w, 1.0f, (v_6 != 0u));
    let v_7 = ((-(r3.xxyz)).yzw + r4.xyz);
    r1 = vec4<f32>(r1.x, v_7.xyz);
    let v_8 = fma(r0.yyy, r1.yzw, r3.xyz);
    r0 = vec4<f32>(r0.x, v_8.xyz);
    let v_9 = -(r4.xxyz);
    let v_10 = (r3.xyz + v_9.yzw);
    r1 = vec4<f32>(r1.x, v_10.xyz);
    let v_11 = fma(r1.xxx, r1.yzw, r4.xyz);
    r1 = vec4<f32>(v_11.xyz, r1.w);
    let v_12 = bitcast<vec3<u32>>(r0.xxx);
    let v_13 = r1.xyz;
    let v_14 = select(r0.yzw, v_13, (v_12 != vec3<u32>()));
    r2 = vec4<f32>(v_14.xyz, r2.w);
  }
  let v_15 = r2;
  o0 = vec4<f32>(v_15.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@builtin(position) v_16 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_16, v1);
  return o0;
}
