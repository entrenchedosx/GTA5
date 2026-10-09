diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb7_struct {
  tint_symbol : array<vec4<f32>, 7u>,
}

@group(1u) @binding(7u) var<uniform> cb7_7 : cb7_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(1u) @binding(162u) var<storage, read_write> u2 : tint_symbol_2;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = textureSample(t4, s4, v1.xy.xyxx.xy).x;
  r0.x = max(r0.x, 1.0f);
  r0.x = log2(r0.x);
  r1.x = (r0.x * 0.30103000998497009277f);
  r0.y = bitcast<f32>(u2.tint_symbol_1[3u]);
  r0.y = fma((-(r0.xxxx)).y, 0.30103000998497009277f, r0.y);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.y >= 0.0f)));
  let v = bitcast<u32>(r0.z);
  let v_1 = cb7_7.tint_symbol[5u].z;
  r0.w = select(cb7_7.tint_symbol[5u].x, v_1, (v != 0u));
  r1.z = bitcast<f32>(select(0u, 4294967295u, (r0.w < 0.00000099999999747524f)));
  if ((bitcast<u32>(r1.z) != 0u)) {
    r1.y = 0.0f;
    let v_2 = bitcast<vec2<u32>>(r1.xy);
    u2.tint_symbol_1[3u] = v_2.x;
    u2.tint_symbol_1[4u] = v_2.y;
  } else {
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb7_7.tint_symbol[6u].x >= 0.00000099999999747524f)));
    if ((bitcast<u32>(r1.x) != 0u)) {
      let v_3 = bitcast<u32>(r0.z);
      let v_4 = cb7_7.tint_symbol[5u].w;
      r0.z = select(cb7_7.tint_symbol[5u].y, v_4, (v_3 != 0u));
      r1.x = sqrt(r0.w);
      r1.y = (r0.z * r1.x);
      r0.w = fma((-(r1.yyyy)).w, r1.y, r0.w);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.00000099999999747524f)));
      if ((bitcast<u32>(r1.z) != 0u)) {
        r1.z = sqrt(r0.w);
        r1.w = bitcast<f32>(u2.tint_symbol_1[4u]);
        r1.w = fma(r1.y, r0.y, r1.w);
        r1.w = (r1.w / r1.z);
        r2.x = ((-(r1.yyyy)).x * cb7_7.tint_symbol[6u].x);
        r2.x = (r2.x * 1.44269502162933349609f);
        r2.x = exp2(r2.x);
        r2.y = (r1.z * cb7_7.tint_symbol[6u].x);
        let v_5 = r2.yyyy;
        r3.x = sin(v_5.x);
        r4.x = cos(v_5.x);
        r2.y = (r1.w * r3.x);
        r2.y = fma(r0.y, r4.x, r2.y);
        r2.z = (r2.y * r2.x);
        r2.w = (r0.y * r3.x);
        let v_6 = -(r2.wwww);
        r1.w = fma(r1.w, r4.x, v_6.w);
        r1.z = (r1.w * r1.z);
        r1.y = fma((-(r1.yyyy)).y, r2.y, r1.z);
        r2.y = (r1.y * r2.x);
      } else {
        r0.w = max((-(r0.wwww)).w, 0.0f);
        r0.w = sqrt(r0.w);
        r0.z = fma((-(r0.zzzz)).z, r1.x, r0.w);
        r0.w = (r0.z * cb7_7.tint_symbol[6u].x);
        r0.w = (r0.w * 1.44269502162933349609f);
        r0.w = exp2(r0.w);
        r2.z = (r0.w * r0.y);
        r2.y = (r0.z * r2.z);
      }
      r2.x = fma(r0.x, 0.30103000998497009277f, r2.z);
      let v_7 = bitcast<vec2<u32>>(r2.xy);
      u2.tint_symbol_1[3u] = v_7.x;
      u2.tint_symbol_1[4u] = v_7.y;
    }
  }
  r0.x = bitcast<f32>(u2.tint_symbol_1[3u]);
  r0.x = (r0.x * 3.3219280242919921875f);
  r0.x = exp2(r0.x);
  r0.y = ((-(r0.xxxx)).y + cb7_7.tint_symbol[1u].z);
  r0.x = fma(cb7_7.tint_symbol[1u].w, r0.y, r0.x);
  r0.y = textureSample(t5, s5, v1.xy.xyxx.xy).y;
  let v_8 = -(cb7_7.tint_symbol[4u].xxxx);
  r0.z = (v_8.z + cb7_7.tint_symbol[4u].y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.z >= 0.00000099999999747524f)));
  r1.x = (r0.y + v_8.x);
  r0.z = clamp(((r1.xxxx / r0.zzzz)).z, 0.0f, 1.0f);
  r0.z = (r0.z * cb7_7.tint_symbol[4u].z);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (r0.y >= cb7_7.tint_symbol[4u].y)));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(cb7_7.tint_symbol[4u].z)));
  let v_9 = bitcast<u32>(r0.w);
  let v_10 = r0.z;
  r0.y = select(r0.y, v_10, (v_9 != 0u));
  r0.z = log2(cb7_7.tint_symbol[1u].x);
  let v_11 = -(r0.yyyy);
  r0.y = fma(r0.z, 2.0000553131103515625f, v_11.y);
  r0.y = (r0.y * 0.49998617172241210938f);
  r0.y = exp2(r0.y);
  r0.x = (r0.x + cb7_7.tint_symbol[2u].x);
  r0.z = (cb7_7.tint_symbol[1u].y + cb7_7.tint_symbol[1u].y);
  r0.x = max(r0.z, r0.x);
  let v_12 = -(cb7_7.tint_symbol[1u].yyyy);
  r0.z = (r0.x + v_12.z);
  r0.z = (cb7_7.tint_symbol[1u].y / r0.z);
  r0.z = log2(r0.z);
  let v_13 = (r0.zz * cb7_7.tint_symbol[2u].yz);
  r0 = vec4<f32>(r0.xy, v_13.xy);
  let v_14 = exp2(r0.zw);
  r0 = vec4<f32>(r0.xy, v_14.xy);
  let v_15 = (r0.xx * r0.zw);
  r1 = vec4<f32>(v_15.xy, r1.zw);
  let v_16 = (r0.zw + vec2<f32>(1.0f));
  r1 = vec4<f32>(r1.xy, v_16.xy);
  let v_17 = (r1.xy / r1.zw);
  r1 = vec4<f32>(v_17.xy, r1.zw);
  r1.z = max(r1.y, r1.x);
  r1.z = (r1.z + r1.z);
  r2.x = max(r0.x, r1.z);
  r0.x = (r0.y * 0.0000290000007225899f);
  let v_18 = (r0.zw * r1.xy);
  let v_19 = r0;
  r0 = vec4<f32>(v_19.x, v_18.xy, v_19.w);
  let v_20 = (r0.yz / r0.xx);
  r2 = vec4<f32>(r2.xy, v_20.xy);
  r0.x = sqrt(cb7_7.tint_symbol[3u].w);
  r0.y = max(cb7_7.tint_symbol[3u].x, 0.00000099999999747524f);
  r0.y = (r2.x / r0.y);
  r0.y = (r0.y + -1.0f);
  r0.y = max(r0.y, 0.00000099999999747524f);
  r0.y = (cb7_7.tint_symbol[3u].z / r0.y);
  r0.y = min(r0.y, r2.z);
  r0.y = ((-(r2.zzzz)).y + r0.y);
  r2.y = fma(r0.x, r0.y, r2.z);
  let v_21 = bitcast<vec3<u32>>(r2.xyw);
  u2.tint_symbol_1[0u] = v_21.x;
  u2.tint_symbol_1[1u] = v_21.y;
  u2.tint_symbol_1[2u] = v_21.z;
  o0 = vec4<f32>();
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
