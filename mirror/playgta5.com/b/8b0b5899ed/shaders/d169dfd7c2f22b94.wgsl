diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb67_struct {
  tint_symbol : array<vec4<f32>, 67u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb67_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_2;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(0.0f, 0.0f, 0.0f, bitcast<f32>(v.tint_symbol_1[0i].x));
  loop {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (1i < bitcast<i32>(r0.w))));
    if ((bitcast<u32>(r1.x) != 0u)) {
      break;
    }
    r1.y = f32(bitcast<i32>(r0.w));
    let v_1 = r0;
    r2 = vec4<f32>(v_1.xyz, r2.w);
    r1.z = bitcast<f32>(v.tint_symbol_1[0i].x);
    loop {
      r1.w = bitcast<f32>(select(0u, 4294967295u, (1i < bitcast<i32>(r1.z))));
      if ((bitcast<u32>(r1.w) != 0u)) {
        break;
      }
      r1.x = f32(bitcast<i32>(r1.z));
      let v_2 = fma(cb5_5.tint_symbol[66u].xy, r1.xy, v1.xy);
      r1 = vec4<f32>(v_2.x, r1.yz, v_2.y);
      r3 = textureSample(t10, s10, r1.xwxx.xy);
      let v_3 = fma(r3.xyz, vec3<f32>(0.11111111193895339966f), r2.xyz);
      r2 = vec4<f32>(v_3.xyz, r2.w);
      r1.z = bitcast<f32>((bitcast<i32>(r1.z) + 1i));
    }
    let v_4 = r2;
    r0 = vec4<f32>(v_4.xyz, r0.w);
    r0.w = bitcast<f32>((bitcast<i32>(r0.w) + 1i));
  }
  r1 = textureSample(t1, s1, vec2<f32>());
  let v_5 = (r0.xyz * r1.xxx);
  r1 = vec4<f32>(v_5.xyz, r1.w);
  let v_6 = (r1.xyz * cb5_5.tint_symbol[8u].www);
  r1 = vec4<f32>(v_6.xyz, r1.w);
  r0.w = dot(r1.xyz, vec3<f32>(0.3333333134651184082f));
  r0.w = max(r0.w, 0.00000000099999997172f);
  let v_7 = -(cb5_5.tint_symbol[7u].xxxx);
  r1.x = (r0.w + v_7.x);
  r1.x = clamp(((r1.xxxx * cb5_5.tint_symbol[7u].zzzz)).x, 0.0f, 1.0f);
  r1.x = (r0.w * r1.x);
  let v_8 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), !((r0.xyz == r0.xyz))));
  r1 = vec4<f32>(r1.x, v_8.xyz);
  let v_9 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r0.xyz) & vec3<u32>(2147483647u)));
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (bitcast<vec3<i32>>(r2.xyz) == vec3<i32>(2139095040i))));
  r2 = vec4<f32>(v_10.xyz, r2.w);
  let v_11 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r1.yzw) | bitcast<vec3<u32>>(r2.xyz)));
  r1 = vec4<f32>(r1.x, v_11.xyz);
  r0.w = (r1.x / r0.w);
  let v_12 = (r0.www * r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  let v_13 = bitcast<vec3<u32>>(r1.yzw);
  let v_14 = select(r0.xyz, vec3<f32>(1000.0f, 0.0f, 1000.0f), (v_13 != vec3<u32>()));
  o0 = vec4<f32>(v_14.xyz, o0.w);
  o0.w = 0.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
