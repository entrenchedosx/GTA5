diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb8_struct;

@group(1u) @binding(32u) var t0 : texture_multisampled_2d<f32>;

@group(1u) @binding(34u) var t2 : texture_2d<u32>;

var<private> o0 : vec4<f32>;

fn main_inner(v2 : vec4<f32>) {
  let v = (v2.xy * cb5_5.tint_symbol[7u].xy);
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = r0.xy;
  let v_2 = max(v_1, vec2<f32>(-2147483648.0f));
  let v_3 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_2), vec2<i32>(2147483647i), (v_2 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_1 == v_1))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = bitcast<f32>(textureLoad(t2, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w)).x);
  let v_4 = max(cb5_5.tint_symbol[3u], vec4<f32>());
  r2 = bitcast<vec4<f32>>(select(vec4<u32>(v_4), vec4<u32>(4294967295u), (v_4 >= vec4<f32>(4294967296.0f))));
  r3.x = bitcast<f32>((bitcast<u32>(r2.w) & 255u));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) >> 8u));
  r3.y = bitcast<f32>((1i << bitcast<u32>((bitcast<i32>(r2.z) & 31i))));
  r3.y = bitcast<f32>((bitcast<i32>(r3.y) + -1i));
  r3.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 1i)));
  if ((bitcast<u32>(r3.z) != 0u)) {
    r3.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r3.x) >= bitcast<u32>(r2.y))));
    if ((bitcast<u32>(r3.z) != 0u)) {
      o0 = vec4<f32>(1.0f, 0.0f, 1.0f, 0.0f);
      return;
    }
    r3.z = bitcast<f32>((bitcast<i32>(r2.z) * bitcast<i32>(r3.x)));
    r3.z = bitcast<f32>((bitcast<u32>(r1.x) >> (bitcast<u32>(r3.z) & 31u)));
    r3.z = bitcast<f32>((bitcast<u32>(r3.y) & bitcast<u32>(r3.z)));
    r3.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r3.z) >= bitcast<u32>(r2.y))));
    if ((bitcast<u32>(r3.w) != 0u)) {
      o0 = vec4<f32>(1.0f, 0.0f, 1.0f, 0.0f);
      return;
    }
    r4 = textureLoad(t0, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r3.z));
  } else {
    r3.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 2i)));
    if ((bitcast<u32>(r3.z) != 0u)) {
      r3.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r3.x) >= bitcast<u32>(r2.y))));
      if ((bitcast<u32>(r3.z) != 0u)) {
        o0 = vec4<f32>(1.0f, 0.0f, 1.0f, 0.0f);
        return;
      }
      r4 = textureLoad(t0, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r3.x));
    } else {
      r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 3i)));
      if ((bitcast<u32>(r3.x) != 0u)) {
        let v_5 = bitcast<vec3<f32>>((bitcast<vec3<i32>>(r2.zzz) * vec3<i32>(1i, 2i, 3i)));
        r3 = vec4<f32>(v_5.x, r3.y, v_5.yz);
        r1.y = bitcast<f32>((bitcast<u32>(r1.x) >> (bitcast<u32>(r3.x) & 31u)));
        r1.z = bitcast<f32>((bitcast<u32>(r1.x) >> (bitcast<u32>(r3.z) & 31u)));
        r1.w = bitcast<f32>((bitcast<u32>(r1.x) >> (bitcast<u32>(r3.w) & 31u)));
        r5 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r3.yyyy) & bitcast<vec4<u32>>(r1)));
        r5 = vec4<f32>(bitcast<vec4<u32>>(r5));
        r1.y = f32(bitcast<u32>(r2.y));
        r4 = (r5 / r1.yyyy);
      } else {
        r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) == 4i)));
        if ((bitcast<u32>(r1.y) != 0u)) {
          r5 = vec4<f32>();
          let v_6 = r1;
          r1 = vec4<f32>(v_6.x, vec2<f32>(), v_6.w);
          loop {
            r1.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r1.z) >= bitcast<u32>(r2.x))));
            if ((bitcast<u32>(r1.w) != 0u)) {
              break;
            }
            r1.w = bitcast<f32>((bitcast<i32>(r2.z) * bitcast<i32>(r1.z)));
            r1.w = bitcast<f32>((bitcast<u32>(r1.x) >> (bitcast<u32>(r1.w) & 31u)));
            r1.w = bitcast<f32>((bitcast<u32>(r3.y) & bitcast<u32>(r1.w)));
            r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r1.w) < bitcast<u32>(r2.y))));
            if ((bitcast<u32>(r2.w) != 0u)) {
              r1.y = (r1.y + 1.0f);
              r6 = textureLoad(t0, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r1.w));
              r5 = (r5 + r6);
            }
            r1.z = bitcast<f32>((bitcast<i32>(r1.z) + 1i));
          }
          r4 = (r5 / r1.yyyy);
        } else {
          r4 = vec4<f32>();
        }
      }
    }
  }
  o0 = (r4 * cb5_5.tint_symbol[2u]);
}

@fragment
fn main(@location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v2);
  return o0;
}
