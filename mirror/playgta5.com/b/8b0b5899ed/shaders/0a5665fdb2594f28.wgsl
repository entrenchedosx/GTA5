diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t2, s2, v1.xy.xyxx.xy);
  r1 = fma(cb12_12.tint_symbol[0u].xyxy, vec4<f32>(0.0f, 1.0f, 1.0f, 0.0f), v1.xy.xyxy);
  r2 = textureSample(t2, s2, r1.xyxx.xy);
  r1 = textureSample(t2, s2, r1.zwzz.xy);
  let v = r0;
  let v_1 = r1;
  r1 = vec4<f32>(v.x, v_1.y, v.z, v_1.w);
  r1.y = r2.y;
  r0.x = dot(r1, vec4<f32>(1.0f));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    r2 = (r1.xywz * cb12_12.tint_symbol[0u].yyxx);
    let v_2 = (-(r2.xwxx)).xy;
    r3 = vec4<f32>(v_2.xy, r3.zw);
    r3.z = 0.0f;
    r3 = (r3.zxyz + v1.xy.xyxy);
    r4 = textureSampleLevel(t3, s3, r3.xyxx.xy, 0.0f);
    r2 = vec4<f32>(0.0f, r2.yz, 0.0f);
    r2 = (r2 + v1.xy.xyxy);
    r5 = textureSampleLevel(t3, s3, r2.xyxx.xy, 0.0f);
    r5 = (r1.yyyy * r5);
    r4 = fma(r4, r1.xxxx, r5);
    r3 = textureSampleLevel(t3, s3, r3.zwzz.xy, 0.0f);
    r3 = fma(r3, r1.zzzz, r4);
    r2 = textureSampleLevel(t3, s3, r2.zwzz.xy, 0.0f);
    r1 = fma(r2, r1.wwww, r3);
    o0 = (r1 / r0.xxxx);
    return;
  } else {
    o0 = textureSample(t3, s3, v1.xy.xyxx.xy);
    return;
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
