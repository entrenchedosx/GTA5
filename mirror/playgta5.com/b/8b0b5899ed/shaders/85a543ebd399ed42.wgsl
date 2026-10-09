diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb72_struct {
  tint_symbol : array<vec4<f32>, 72u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb72_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_2;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSample(t5, s5, v1.xy.xyxx.xy);
  r0.x = (r0.x * 15.0f);
  let v_1 = r1;
  r1 = vec4<f32>(0.0f, v_1.y, 0.0f, v_1.w);
  r0.z = r0.x;
  r0.w = 15.0f;
  r2.x = bitcast<f32>(v.tint_symbol_1[0i].x);
  loop {
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) >= 8i)));
    if ((bitcast<u32>(r2.y) != 0u)) {
      break;
    }
    r1.y = f32(bitcast<i32>(r2.x));
    let v_2 = fma(r1.xy, cb5_5.tint_symbol[71u].xy, v1.xy);
    let v_3 = r2;
    r2 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
    r3 = textureSample(t5, s5, r2.yzyy.xy);
    r1.w = f32((-(bitcast<vec4<i32>>(r2.xxxx))).w);
    let v_4 = fma(r1.zw, cb5_5.tint_symbol[71u].xy, v1.xy);
    let v_5 = r1;
    r1 = vec4<f32>(v_5.x, v_4.x, v_5.z, v_4.y);
    r4 = textureSample(t5, s5, r1.ywyy.xy);
    r1.y = ((-(r0.yyyy)).y + r3.y);
    r1.y = (abs(r1.yyyy).y * -10.0f);
    r1.y = (r1.y / r0.y);
    r1.y = (r1.y * 1.44269502162933349609f);
    r1.y = exp2(r1.y);
    r1.w = (r1.y * 15.0f);
    r2.y = ((-(r0.yyyy)).y + r4.y);
    r2.y = (abs(r2.yyyy).y * -10.0f);
    r2.y = (r2.y / r0.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = (r2.y * 15.0f);
    r1.w = fma(r3.x, r1.w, r0.z);
    r0.z = fma(r4.x, r2.y, r1.w);
    r1.y = fma(r1.y, 15.0f, r2.y);
    r0.w = (r0.w + r1.y);
    r2.x = bitcast<f32>((bitcast<i32>(r2.x) + 1i));
  }
  o0.x = (r0.z / r0.w);
  o0.y = r0.y;
  o0 = vec4<f32>(o0.xy, vec2<f32>());
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
