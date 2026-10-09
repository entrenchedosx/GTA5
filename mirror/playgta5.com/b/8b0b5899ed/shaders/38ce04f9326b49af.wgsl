diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

@group(1u) @binding(31u) var s15 : sampler;

@group(1u) @binding(47u) var t15 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * vec2<f32>(0.3333333432674407959f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  let v_3 = -(r0.xxxy);
  let v_4 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.xy >= v_3.zw)));
  r0 = vec4<f32>(r0.xy, v_4.xy);
  let v_5 = fract(abs(r0.xyxx).xy);
  r0 = vec4<f32>(v_5.xy, r0.zw);
  let v_6 = -(r0.xyxx);
  let v_7 = bitcast<vec2<u32>>(r0.zw);
  let v_8 = select(v_6.xy, r0.xy, (v_7 != vec2<u32>()));
  r0 = vec4<f32>(v_8.xy, r0.zw);
  r0.x = fma(r0.x, 3.0f, 1.0f);
  r0.x = fma(r0.y, 9.0f, r0.x);
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, vec2<f32>(), v_9.w);
  loop {
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 15.0f)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      break;
    }
    r0.w = fma(r0.x, 0.11111111193895339966f, r0.z);
    let v_10 = fma(v2.zw, r0.ww, v2.xy);
    r1 = vec4<f32>(v_10.xy, r1.zw);
    r1 = textureSample(t15, s15, r1.xyxx.xy);
    r0.z = (r0.z + 1.0f);
    r0.w = fma((-(r0.zzzz)).w, 0.05999999865889549255f, 1.5f);
    r0.y = fma(r1.x, r0.w, r0.y);
  }
  r1 = textureSample(t15, s15, v2.xyxx.xy);
  r0.x = (r1.x * 0.10000000149011611938f);
  r0.y = fma(r1.x, 1.5f, r0.y);
  r0.y = (r0.y * 0.05952380970120429993f);
  r0.x = max(r0.y, r0.x);
  r0.y = dot(v1.xy, v1.xy);
  r0.y = sqrt(r0.y);
  r0.y = ((-(r0.yyyy)).y + 1.0f);
  r0.x = (r0.x * r0.y);
  r0.x = (r0.x * 0.5f);
  r0.x = max(r0.x, 0.0f);
  r0.x = log2(r0.x);
  r0.x = (r0.x * 0.25f);
  let v_11 = exp2(r0.xxx);
  o0 = vec4<f32>(v_11.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@builtin(position) v_12 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_12, v1, v2);
  return o0;
}
