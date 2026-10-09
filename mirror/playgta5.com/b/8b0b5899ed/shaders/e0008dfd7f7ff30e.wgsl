diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> o0 : f32;

fn main_inner() {
  let v = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>() < cb12_12.tint_symbol[3u].xy)));
  r0 = vec4<f32>(v.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    o0 = 1.0f;
  } else {
    r0 = textureLoad(t3, vec2<i32>(), 0i);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb12_12.tint_symbol[0u].y);
    r0.x = exp2(r0.x);
    r0.x = fma(cb12_12.tint_symbol[0u].x, r0.x, cb12_12.tint_symbol[0u].z);
    r0.x = (r0.x + cb12_12.tint_symbol[0u].w);
    r0.x = max(r0.x, cb12_12.tint_symbol[1u].x);
    r0.x = min(r0.x, cb12_12.tint_symbol[1u].y);
    let v_1 = cb12_12.tint_symbol[1u].w;
    let v_2 = max(v_1, -2147483648.0f);
    r0.y = bitcast<f32>(select(select(i32(v_2), 2147483647i, (v_2 >= 2147483648.0f)), 0i, !((v_1 == v_1))));
    r1 = vec4<f32>(r1.x, vec3<f32>());
    r0 = vec4<f32>(r0.xy, vec2<f32>());
    loop {
      r2.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) >= bitcast<i32>(r0.y))));
      if ((bitcast<u32>(r2.x) != 0u)) {
        break;
      }
      r1.x = r0.z;
      r2 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
      r0.w = (r0.w + r2.x);
      r0.z = bitcast<f32>((bitcast<i32>(r0.z) + 1i));
    }
    r0.y = (r0.w / cb12_12.tint_symbol[1u].w);
    r0.x = ((-(r0.yyyy)).x + r0.x);
    r0.x = (abs(r0.xxxx).x * cb12_12.tint_symbol[2u].x);
    r0.x = (r0.x * cb12_12.tint_symbol[3u].z);
    let v_3 = (cb12_12.tint_symbol[2u].zw * cb12_12.tint_symbol[3u].zz);
    let v_4 = r0;
    r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
    r0.x = min(r0.x, r0.y);
    r1 = textureLoad(t5, vec2<i32>(), 0i);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.z < r0.x)));
    r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r1.x)));
    r0.y = bitcast<f32>((bitcast<u32>(r0.z) | bitcast<u32>(r0.y)));
    if ((bitcast<u32>(r0.y) != 0u)) {
      r0.y = (cb12_12.tint_symbol[2u].y * cb12_12.tint_symbol[3u].z);
      r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.y >= r0.x)));
      o0 = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
    } else {
      o0 = r1.x;
    }
  }
}

@fragment
fn main() -> @location(0u) f32 {
  main_inner();
  return o0;
}
