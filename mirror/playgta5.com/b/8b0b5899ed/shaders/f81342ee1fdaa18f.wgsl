diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xyz + vec3<f32>(0.05499999970197677612f))).xyz, r0.w);
  let v = (r0.xyz * vec3<f32>(0.94786727428436279297f));
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = log2(r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (r0.xyz * vec3<f32>(2.40000009536743164062f));
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = exp2(r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  let v_4 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (vec3<f32>(0.04044999927282333374f) >= v1.xyz)));
  r1 = vec4<f32>(v_4.xyz, r1.w);
  r2 = vec4<f32>(((v1.xyz * vec3<f32>(0.07739938050508499146f))).xyz, r2.w);
  let v_5 = bitcast<vec3<u32>>(r1.xyz);
  let v_6 = r2.xyz;
  let v_7 = select(r0.xyz, v_6, (v_5 != vec3<u32>()));
  r0 = vec4<f32>(v_7.xyz, r0.w);
  let v_8 = sqrt(r0.xyz);
  o0 = vec4<f32>(v_8.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
