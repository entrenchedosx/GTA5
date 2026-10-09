diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t2, s2, v2.xy.xyxx.xy);
  let v = ((-(r0.xyzx)).xyz + vec3<f32>(1.0f));
  r1 = vec4<f32>(v.xyz, r1.w);
  r2 = textureSample(t3, s3, v2.xy.xyxx.xy);
  let v_1 = ((-(r2.xyzx)).xyz + vec3<f32>(1.0f));
  r3 = vec4<f32>(v_1.xyz, r3.w);
  let v_2 = (r3.xyz + r3.xyz);
  r3 = vec4<f32>(v_2.xyz, r3.w);
  let v_3 = fma((-(r3.xyzx)).xyz, r1.xyz, vec3<f32>(1.0f));
  r1 = vec4<f32>(v_3.xyz, r1.w);
  r0.x = dot(r0.xx, r2.xx);
  let v_4 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (r2.xyz < vec3<f32>(0.5f))));
  r3 = vec4<f32>(v_4.xyz, r3.w);
  let v_5 = bitcast<u32>(r3.x);
  let v_6 = r0.x;
  r4.x = select(r1.x, v_6, (v_5 != 0u));
  r0.x = dot(r0.yy, r2.yy);
  r0.y = dot(r0.zz, r2.zz);
  let v_7 = bitcast<vec2<u32>>(r3.yz);
  let v_8 = r0.xy;
  let v_9 = select(r1.yz, v_8, (v_7 != vec2<u32>()));
  let v_10 = r4;
  r4 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r0.x = ((-(v1.wwww)).x + 1.0f);
  let v_11 = (r2.xyz * r0.xxx);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  o0.w = r2.w;
  let v_12 = fma(v1.www, r4.xyz, r0.xyz);
  o0 = vec4<f32>(v_12.xyz, o0.w);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
