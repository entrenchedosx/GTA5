diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb73_struct {
  tint_symbol : array<vec4<f32>, 73u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb73_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>();
  loop {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) >= 16i)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      break;
    }
    r1.x = f32(bitcast<i32>(r0.w));
    r1.y = fma((-(r1.xxxx)).y, 0.0625f, 1.0f);
    r1.y = (r1.y * r1.y);
    let v = (r1.xx * cb5_5.tint_symbol[42u].xy);
    let v_1 = r1;
    r1 = vec4<f32>(v.x, v_1.y, v.y, v_1.w);
    let v_2 = fma(cb5_5.tint_symbol[72u].xy, r1.xz, v1.xy);
    let v_3 = r1;
    r1 = vec4<f32>(v_2.x, v_3.y, v_2.y, v_3.w);
    r2 = textureSample(t5, s5, r1.xzxx.xy);
    let v_4 = fma(r2.xyz, r1.yyy, r0.xyz);
    r0 = vec4<f32>(v_4.xyz, r0.w);
    r0.w = bitcast<f32>((bitcast<i32>(r0.w) + 1i));
  }
  let v_5 = (r0.xyz * cb5_5.tint_symbol[40u].xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = (r0.xyz * vec3<f32>(0.25f));
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol[35u].y)));
  r1 = vec4<f32>(((v1.xy.yx + vec2<f32>(-0.5f))).xy, r1.zw);
  let v_7 = abs(r1.xxxx);
  let v_8 = abs(r1.yyyy);
  r0.w = select(v_8.w, v_7.w, (bitcast<u32>(r0.w) != 0u));
  r0.w = (r0.w + r0.w);
  r1.x = ((-(cb5_5.tint_symbol[35u].zzzz)).x + cb5_5.tint_symbol[35u].w);
  r0.w = fma(r1.x, r0.w, cb5_5.tint_symbol[35u].z);
  r0.w = (r0.w * r0.w);
  let v_9 = (r0.www * r0.xyz);
  o0 = vec4<f32>(v_9.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
