diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  let v = cb5_5.tint_symbol[1u].y;
  let v_1 = max(v, -2147483648.0f);
  r0.x = bitcast<f32>(select(select(i32(v_1), 2147483647i, (v_1 >= 2147483648.0f)), 0i, !((v == v))));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (v1.x >= 0.5f)));
  let v_2 = select(vec3<f32>(0.75f, 0.25f, 0.5f), vec3<f32>(0.25f, 0.75f, 0.5f), (bitcast<vec3<u32>>(r0.yyy) != vec3<u32>()));
  r1 = vec4<f32>(v_2.x, r1.y, v_2.yz);
  r0.z = bitcast<f32>((bitcast<i32>(r0.x) * bitcast<i32>(r0.x)));
  let v_3 = trunc(cb5_5.tint_symbol[1u].yx);
  r2 = vec4<f32>(v_3.xy, r2.zw);
  let v_4 = (r2.xy + vec2<f32>(-1.0f));
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = select(vec2<f32>(-0.25f, -0.5f), vec2<f32>(-0.75f, -0.5f), (bitcast<vec2<u32>>(r0.yy) != vec2<u32>()));
  let v_6 = r0;
  r0 = vec4<f32>(v_6.x, v_5.x, v_6.z, v_5.y);
  let v_7 = (cb5_5.tint_symbol[1u].ww * vec2<f32>(0.5f, 1.0f));
  r2 = vec4<f32>(r2.xy, v_7.xy);
  let v_8 = r1;
  r3 = vec4<f32>(r3.xy, v_8.xw);
  r4 = vec4<f32>();
  loop {
    r5.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r4.w) >= bitcast<i32>(r0.x))));
    if ((bitcast<u32>(r5.x) != 0u)) {
      break;
    }
    r5.x = f32(bitcast<i32>(r4.w));
    r5.y = fma((-(r2.xxxx)).y, 0.5f, r5.x);
    let v_9 = r4;
    r6 = vec4<f32>(v_9.xyz, r6.w);
    r5.z = 0.0f;
    loop {
      r5.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r5.z) >= bitcast<i32>(r0.x))));
      if ((bitcast<u32>(r5.w) != 0u)) {
        break;
      }
      r5.w = f32(bitcast<i32>(r5.z));
      r5.x = fma((-(r2.xxxx)).x, 0.5f, r5.w);
      let v_10 = fma(r5.xy, r2.zw, v1.xy);
      r5 = vec4<f32>(v_10.x, r5.yz, v_10.y);
      let v_11 = (r0.yw + r5.xw);
      r5 = vec4<f32>(v_11.x, r5.yz, v_11.y);
      let v_12 = (r5.xw * vec2<f32>(4.0f, 2.0f));
      r1 = vec4<f32>(v_12.xy, r1.zw);
      r5.x = dot(r1.xy, r1.xy);
      r5.w = bitcast<f32>(select(0u, 4294967295u, (r5.x >= 1.0f)));
      let v_13 = (r1.xy / r5.xx);
      r7 = vec4<f32>(v_13.xy, r7.zw);
      let v_14 = (r7.xy * vec2<f32>(-1.0f, 1.0f));
      r3 = vec4<f32>(v_14.xy, r3.zw);
      let v_15 = bitcast<vec4<u32>>(r5.wwww);
      let v_16 = r3;
      r7 = select(r1, v_16, (v_15 != vec4<u32>()));
      let v_17 = fma(r7.xy, vec2<f32>(0.25f, 0.5f), r7.zw);
      r1 = vec4<f32>(v_17.xy, r1.zw);
      let v_18 = r2.y;
      r7 = textureSampleLevel(t4, s4, r1.xyxx.xy, v_18);
      let v_19 = (r6.xyz + r7.xyz);
      r6 = vec4<f32>(v_19.xyz, r6.w);
      r5.z = bitcast<f32>((bitcast<i32>(r5.z) + 1i));
    }
    let v_20 = r6;
    r4 = vec4<f32>(v_20.xyz, r4.w);
    r4.w = bitcast<f32>((bitcast<i32>(r4.w) + 1i));
  }
  r0.x = f32(bitcast<i32>(r0.z));
  let v_21 = (r4.xyz / r0.xxx);
  o0 = vec4<f32>(v_21.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
