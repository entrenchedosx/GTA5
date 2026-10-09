diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy.xx + vec2<f32>(0.00009999999747378752f, -0.5f))).xy, r0.zw);
  r0.z = fma(abs(r0.xxxx).z, -0.01872929930686950684f, 0.07426100224256515503f);
  let v = abs(r0.xxxx);
  r0.z = fma(r0.z, v.z, -0.21211439371109008789f);
  let v_1 = abs(r0.xxxx);
  r0.z = fma(r0.z, v_1.z, 1.57072877883911132812f);
  r0.w = ((-(abs(r0.xxxx))).w + 1.0f);
  r0.w = sqrt(r0.w);
  r1.x = (r0.w * r0.z);
  r1.x = fma(r1.x, -2.0f, 3.14159274101257324219f);
  let v_2 = -(r0.xxxx);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.x < v_2.y)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r0.z = fma(r0.z, r0.w, r1.x);
  r0.z = sin(r0.zzzz.z);
  r0.z = (r0.z * 0.75187969207763671875f);
  r0.z = fma((-(r0.zzzz)).z, r0.z, 1.0f);
  r0.z = sqrt(r0.z);
  r0.w = fma((-(r0.zzzz)).w, 1.33000004291534423828f, r0.x);
  r0.x = fma(r0.z, 1.33000004291534423828f, r0.x);
  r0.y = clamp(((r0.yyyy * vec4<f32>(5.0f))).y, 0.0f, 1.0f);
  r0.x = (r0.w / r0.x);
  o0.x = (r0.x * r0.x);
  o0 = vec4<f32>(o0.xy, vec2<f32>());
  r0.x = fma(r0.y, -2.0f, 3.0f);
  r0.y = (r0.y * r0.y);
  o0.y = (r0.y * r0.x);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
