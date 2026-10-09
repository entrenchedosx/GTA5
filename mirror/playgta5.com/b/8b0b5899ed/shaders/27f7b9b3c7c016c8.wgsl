diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

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
  r0.x = textureSample(t4, s4, v1.xy.xyxx.xy).w;
  r0.y = dot(v0.xy, vec2<f32>(0.5f));
  r0.y = fract(r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.5f)));
  let v_2 = fma(cb5_5.tint_symbol[66u].xy, vec2<f32>(1.0f, 0.0f), v1.xy);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1.x = textureSample(t4, s4, r0.zwzz.xy).w;
  if ((bitcast<u32>(r0.y) != 0u)) {
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x == 0.0f)));
    v_3((bitcast<u32>(r1.y) != 0u));
  } else {
    let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xx == vec2<f32>(0.0f, 1.0f))));
    let v_5 = r1;
    r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
    r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
    v_3((bitcast<u32>(r1.y) != 0u));
    r1.x = 1.0f;
  }
  let v_6 = textureSample(t5, s5, v1.xy.xyxx.xy).xyz;
  r1 = vec4<f32>(r1.x, v_6.xyz);
  let v_7 = textureSample(t5, s5, r0.zwzz.xy).xyz;
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x == 0.0f)));
  let v_8 = bitcast<u32>(r0.z);
  r0.x = select(r0.x, 1.0f, (v_8 != 0u));
  let v_9 = -(r2.xyzx);
  let v_10 = (r1.yzw + v_9.xyz);
  r3 = vec4<f32>(v_10.xyz, r3.w);
  let v_11 = fma(r0.xxx, r3.xyz, r2.xyz);
  r0 = vec4<f32>(v_11.x, r0.y, v_11.yz);
  let v_12 = ((-(r1.yzwy)).xyz + r2.xyz);
  r2 = vec4<f32>(v_12.xyz, r2.w);
  let v_13 = fma(r1.xxx, r2.xyz, r1.yzw);
  r1 = vec4<f32>(v_13.xyz, r1.w);
  let v_14 = bitcast<vec3<u32>>(r0.yyy);
  let v_15 = r1.xyz;
  let v_16 = select(r0.xzw, v_15, (v_14 != vec3<u32>()));
  o0 = vec4<f32>(v_16.xyz, o0.w);
  o0.w = 0.0f;
}

fn v_3(v_17 : bool) {
  if (v_17) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_18 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_18, v1);
  return o0;
}
