diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb66_struct {
  tint_symbol : array<vec4<f32>, 66u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb66_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 3u> = array<vec4<f32>, 3u>(vec4<f32>(0.0f, 0.22702999413013458252f, 0.0f, 0.0f), vec4<f32>(1.38461995124816894531f, 0.3162199854850769043f, 0.0f, 0.0f), vec4<f32>(3.230770111083984375f, 0.07027000188827514648f, 0.0f, 0.0f));

var<private> o0 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_2;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t5, s5, v1.xy.xyxx.xy);
  r0 = (r0 * vec4<f32>(0.22702999413013458252f));
  let v_1 = r1;
  r1 = vec4<f32>(v_1.x, 0.0f, v_1.z, 0.0f);
  r2 = r0;
  r3.x = bitcast<f32>(v.tint_symbol_1[0i].x);
  loop {
    r3.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r3.x) >= 3i)));
    if ((bitcast<u32>(r3.y) != 0u)) {
      break;
    }
    r1.x = icb0[bitcast<i32>(r3.x)].x;
    let v_2 = fma(r1.xy, cb5_5.tint_symbol[65u].xy, v1.xy);
    let v_3 = r3;
    r3 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
    r4 = textureSample(t5, s5, r3.yzyy.xy);
    r4 = fma(r4, icb0[bitcast<i32>(r3.x)].yyyy, r2);
    r1.z = (-(icb0[bitcast<i32>(r3.x)].xxxx)).z;
    let v_4 = fma(r1.zw, cb5_5.tint_symbol[65u].xy, v1.xy);
    let v_5 = r1;
    r1 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
    r5 = textureSample(t5, s5, r1.xzxx.xy);
    r2 = fma(r5, icb0[bitcast<i32>(r3.x)].yyyy, r4);
    r3.x = bitcast<f32>((bitcast<i32>(r3.x) + 1i));
  }
  o0 = r2;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
