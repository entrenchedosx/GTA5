diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : f32;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (vec2<f32>() < cb12_12.tint_symbol[3u].xy)));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.x = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.x)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0 = textureLoad(t3, vec2<i32>(), 0i);
    r0.x = log2(r0.x);
    r0.x = (r0.x * cb12_12.tint_symbol[0u].y);
    r0.x = exp2(r0.x);
    r0.x = fma(cb12_12.tint_symbol[0u].x, r0.x, cb12_12.tint_symbol[0u].z);
    r0.x = (r0.x + cb12_12.tint_symbol[0u].w);
    r0.x = max(r0.x, cb12_12.tint_symbol[1u].x);
    r0.x = min(r0.x, cb12_12.tint_symbol[1u].y);
    r0.y = 0.0f;
  } else {
    r1 = textureLoad(t3, vec2<i32>(), 0i);
    r0.z = log2(r1.x);
    r0.z = (r0.z * cb12_12.tint_symbol[0u].y);
    r0.z = exp2(r0.z);
    r0.z = fma(cb12_12.tint_symbol[0u].x, r0.z, cb12_12.tint_symbol[0u].z);
    r0.z = (r0.z + cb12_12.tint_symbol[0u].w);
    r0.z = max(r0.z, cb12_12.tint_symbol[1u].x);
    r0.z = min(r0.z, cb12_12.tint_symbol[1u].y);
    let v_3 = cb12_12.tint_symbol[1u].w;
    let v_4 = max(v_3, -2147483648.0f);
    r0.w = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
    r1 = vec4<f32>(r1.x, vec3<f32>());
    r2 = vec4<f32>(vec2<f32>(), r2.zw);
    loop {
      r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) >= bitcast<i32>(r0.w))));
      if ((bitcast<u32>(r2.z) != 0u)) {
        break;
      }
      r1.x = r2.x;
      r3 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w));
      r2.y = (r2.y + r3.x);
      r2.x = bitcast<f32>((bitcast<i32>(r2.x) + 1i));
    }
    r0.w = (r2.y / cb12_12.tint_symbol[1u].w);
    r0.y = ((-(r0.wwww)).y + r0.z);
    r1.x = (abs(r0.yyyy).x * cb12_12.tint_symbol[2u].x);
    r1.x = (r1.x * cb12_12.tint_symbol[3u].z);
    let v_5 = (cb12_12.tint_symbol[2u].zw * cb12_12.tint_symbol[3u].zz);
    let v_6 = r1;
    r1 = vec4<f32>(v_6.x, v_5.xy, v_6.w);
    r1.x = min(r1.x, r1.y);
    r2 = textureLoad(t5, vec2<i32>(), 0i);
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.z < r1.x)));
    r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.x)));
    r1.y = bitcast<f32>((bitcast<u32>(r1.z) | bitcast<u32>(r1.y)));
    if ((bitcast<u32>(r1.y) != 0u)) {
      r1.y = (cb12_12.tint_symbol[2u].y * cb12_12.tint_symbol[3u].z);
      r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.y >= r1.x)));
      r1.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
      r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.y < 0.0f)));
      let v_7 = -(bitcast<vec4<i32>>(r1.zzzz));
      r1.z = bitcast<f32>((bitcast<i32>(r1.w) + v_7.z));
      r1.z = f32(bitcast<i32>(r1.z));
      r0.w = fma(r1.x, r1.z, r0.w);
      let v_8 = bitcast<u32>(r1.y);
      let v_9 = r0.z;
      r1.x = select(r0.w, v_9, (v_8 != 0u));
    } else {
      r1 = textureLoad(t2, vec2<i32>(1i, 0i), 0i);
    }
    r0.z = max(r1.x, cb12_12.tint_symbol[1u].x);
    r0.x = min(r0.z, cb12_12.tint_symbol[1u].y);
  }
  let v_10 = (v0.xx + vec2<f32>(-0.5f, -2.5f));
  r0 = vec4<f32>(r0.xy, v_10.xy);
  let v_11 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (abs(r0.zzzw).zw < vec2<f32>(0.5f))));
  r0 = vec4<f32>(r0.xy, v_11.xy);
  r1.x = exp2(r0.x);
  let v_12 = bitcast<u32>(r0.z);
  let v_13 = r1.x;
  r0.x = select(r0.x, v_13, (v_12 != 0u));
  let v_14 = bitcast<u32>(r0.w);
  let v_15 = r0.y;
  o0 = select(r0.x, v_15, (v_14 != 0u));
}

@fragment
fn main(@builtin(position) v_16 : vec4<f32>) -> @location(0u) f32 {
  main_inner(v_16);
  return o0;
}
