diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb17_struct {
  tint_symbol : array<vec4<f32>, 17u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb17_struct;

struct cb4_struct {
  tint_symbol_1 : array<vec4<f32>, 4u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb4_struct;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb12_12.tint_symbol[16u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t3, s3, r0.xyxx.xy);
  let v_3 = -(cb11_11.tint_symbol_1[3u].xxxx);
  r0.x = fma(r0.x, 255.0f, v_3.x);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < -0.00100000004749745131f)));
  v_4((bitcast<u32>(r0.y) != 0u));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb11_11.tint_symbol_1[3u].x < cb11_11.tint_symbol_1[3u].y)));
  r0.z = (v_3.z + cb11_11.tint_symbol_1[3u].y);
  let v_5 = (r0.zzz * vec3<f32>(0.3333333432674407959f, 0.6666666865348815918f, 1.0f));
  r1 = vec4<f32>(v_5.xyz, r1.w);
  r0.w = (r0.x / r1.x);
  let v_6 = fma(r0.www, vec3<f32>(0.0f, 1.0f, -1.0f), vec3<f32>(0.0f, 0.0f, 1.0f));
  r2 = vec4<f32>(v_6.xyz, r2.w);
  r3 = fma(-(r0.zzzz), vec4<f32>(0.3333333432674407959f, 0.3333333432674407959f, 0.6666666865348815918f, 0.6666666865348815918f), r0.xxxx);
  r3 = (r3 / r1.xxxx);
  let v_7 = fma(r3.xyy, vec3<f32>(1.0f, 0.0f, 0.0f), vec3<f32>(0.0f, 1.0f, 0.0f));
  r4 = vec4<f32>(v_7.xyz, r4.w);
  let v_8 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r0.xxx < r1.xyz)));
  r0 = vec4<f32>(v_8.x, r0.y, v_8.yz);
  let v_9 = fma(r3.zwz, vec3<f32>(0.0f, -1.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 0.0f));
  r1 = vec4<f32>(v_9.xyz, r1.w);
  let v_10 = bitcast<vec3<u32>>(r0.www);
  let v_11 = select(vec3<f32>(1.0f, 0.0f, 0.0f), r1.xyz, (v_10 != vec3<u32>()));
  r1 = vec4<f32>(v_11.xyz, r1.w);
  let v_12 = bitcast<vec3<u32>>(r0.zzz);
  let v_13 = r4.xyz;
  let v_14 = select(r1.xyz, v_13, (v_12 != vec3<u32>()));
  r1 = vec4<f32>(v_14.xyz, r1.w);
  let v_15 = bitcast<vec3<u32>>(r0.xxx);
  let v_16 = r2.xyz;
  let v_17 = select(r1.xyz, v_16, (v_15 != vec3<u32>()));
  r0 = vec4<f32>(v_17.x, r0.y, v_17.yz);
  let v_18 = bitcast<vec3<u32>>(r0.yyy);
  let v_19 = select(vec3<f32>(1.0f, 0.0f, 0.0f), r0.xzw, (v_18 != vec3<u32>()));
  o0 = vec4<f32>(v_19.xyz, o0.w);
  o0.w = cb11_11.tint_symbol_1[3u].w;
}

fn v_4(v_20 : bool) {
  if (v_20) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_21 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_21);
  return o0;
}
