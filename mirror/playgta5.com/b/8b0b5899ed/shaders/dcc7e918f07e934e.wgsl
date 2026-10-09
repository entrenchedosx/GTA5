diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = fma(v1.xy, vec2<f32>(2.0f), vec2<f32>(-1.0f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = abs(r0.yyyy);
  r0.z = max(v_1.z, abs(r0.xxxx).z);
  r0.z = (1.0f / r0.z);
  let v_2 = abs(r0.yyyy);
  r0.w = min(v_2.w, abs(r0.xxxx).w);
  r0.z = (r0.z * r0.w);
  r0.w = (r0.z * r0.z);
  r1.x = fma(r0.w, 0.02083509974181652069f, -0.08513300120830535889f);
  r1.x = fma(r0.w, r1.x, 0.18014100193977355957f);
  r1.x = fma(r0.w, r1.x, -0.33029949665069580078f);
  r0.w = fma(r0.w, r1.x, 0.99986600875854492188f);
  r1.x = (r0.w * r0.z);
  r1.x = fma(r1.x, -2.0f, 1.57079637050628662109f);
  let v_3 = abs(r0.yyyy);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (v_3.y < abs(r0.xxxx).y)));
  r1.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r1.x)));
  r0.z = fma(r0.z, r0.w, r1.x);
  let v_4 = -(r0.yyyy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.y < v_4.w)));
  r0.w = bitcast<f32>((bitcast<u32>(r0.w) & 3226013659u));
  r0.z = (r0.w + r0.z);
  r0.w = min(r0.y, r0.x);
  let v_5 = -(r0.wwww);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w < v_5.w)));
  r1.x = max(r0.y, r0.x);
  r0.x = dot(r0.xy, r0.xy);
  let v_6 = -(r1.xxxx);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= v_6.y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.w)));
  let v_7 = -(r0.zzzz);
  let v_8 = bitcast<u32>(r0.y);
  r0.y = select(r0.z, v_7.y, (v_8 != 0u));
  r0.y = (r0.y + 3.14159250259399414062f);
  r0.y = (r0.y * 0.15915495157241821289f);
  let v_9 = -(r0.yyyy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y >= v_9.z)));
  r0.y = fract(abs(r0.yyyy).y);
  let v_10 = -(r0.yyyy);
  let v_11 = bitcast<u32>(r0.z);
  r0.y = select(v_10.y, r0.y, (v_11 != 0u));
  r0.y = (r0.y * 6.28318500518798828125f);
  r0.z = (v1.z * 6.28318500518798828125f);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.z)));
  let v_12 = select(vec3<f32>(1.0f, 0.0f, 0.0f), vec3<f32>(0.0f, 0.0f, 1.0f), (bitcast<vec3<u32>>(r0.yyy) != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_12.xyz);
  r1.x = min(r0.x, 1.0f);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < 1.0f)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r1.x = log2(r1.x);
  r1.x = (r1.x * 16.0f);
  r1.x = exp2(r1.x);
  r1.x = (r0.x * r1.x);
  r1.x = (r1.x * v1.w);
  let v_13 = fma(r0.yzw, r0.xxx, r1.xxx);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < v1.w)));
  r1.x = select(0.02199999988079071045f, 1.0f, (bitcast<u32>(r1.x) != 0u));
  r0.w = 1.0f;
  o0 = (r0 * r1.xxxx);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
