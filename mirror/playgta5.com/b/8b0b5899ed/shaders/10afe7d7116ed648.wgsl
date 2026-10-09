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
  r1 = vec4<f32>(v_1.x, 0.0f, v_1.z, 0.0f);
  r0.z = r0.x;
  r0.w = 15.0f;
  r2.x = bitcast<f32>(v.tint_symbol_1[0i].x);
  loop {
    r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) >= 8i)));
    if ((bitcast<u32>(r2.y) != 0u)) {
      break;
    }
    r2.y = f32(bitcast<i32>(r2.x));
    r1.x = (r2.y * cb5_5.tint_symbol[71u].x);
    let v_2 = (r1.xy + v1.xy);
    let v_3 = r2;
    r2 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
    r3 = textureSample(t5, s5, r2.yzyy.xy);
    r1.x = f32((-(bitcast<vec4<i32>>(r2.xxxx))).x);
    r1.z = (r1.x * cb5_5.tint_symbol[71u].x);
    let v_4 = (r1.zw + v1.xy);
    let v_5 = r1;
    r1 = vec4<f32>(v_4.x, v_5.y, v_4.y, v_5.w);
    r4 = textureSample(t5, s5, r1.xzxx.xy);
    r1.x = ((-(r0.yyyy)).x + r3.y);
    r1.x = (abs(r1.xxxx).x * -10.0f);
    r1.x = (r1.x / r0.y);
    r1.x = (r1.x * 1.44269502162933349609f);
    r1.x = exp2(r1.x);
    r1.z = (r1.x * 15.0f);
    r2.y = ((-(r0.yyyy)).y + r4.y);
    r2.y = (abs(r2.yyyy).y * -10.0f);
    r2.y = (r2.y / r0.y);
    r2.y = (r2.y * 1.44269502162933349609f);
    r2.y = exp2(r2.y);
    r2.y = (r2.y * 15.0f);
    r1.z = fma(r3.x, r1.z, r0.z);
    r0.z = fma(r4.x, r2.y, r1.z);
    r1.x = fma(r1.x, 15.0f, r2.y);
    r0.w = (r0.w + r1.x);
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
