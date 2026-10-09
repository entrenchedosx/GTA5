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
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v1.x >= 0.5f)));
  let v = select(vec3<f32>(0.75f, 0.25f, 0.5f), vec3<f32>(0.25f, 0.75f, 0.5f), (bitcast<vec3<u32>>(r0.xxx) != vec3<u32>()));
  r1 = vec4<f32>(v.x, r1.y, v.yz);
  let v_1 = select(vec2<f32>(-0.25f, -0.5f), vec2<f32>(-0.75f, -0.5f), (bitcast<vec2<u32>>(r0.xx) != vec2<u32>()));
  r0 = vec4<f32>(v_1.xy, r0.zw);
  r0.z = trunc(cb5_5.tint_symbol[1u].x);
  r0.z = (r0.z + -1.0f);
  let v_2 = (cb5_5.tint_symbol[1u].ww * vec2<f32>(0.5f, 1.0f));
  r2 = vec4<f32>(v_2.xy, r2.zw);
  let v_3 = r1;
  r3 = vec4<f32>(r3.xy, v_3.xw);
  r4 = vec4<f32>(vec3<f32>(), r4.w);
  r0.w = 0.0f;
  loop {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) >= 4i)));
    if ((bitcast<u32>(r2.z) != 0u)) {
      break;
    }
    r2.z = f32(bitcast<i32>(r0.w));
    r5.y = (r2.z + -1.5f);
    let v_4 = r4;
    r6 = vec4<f32>(v_4.xyz, r6.w);
    r2.z = 0.0f;
    loop {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.z) >= 4i)));
      if ((bitcast<u32>(r2.w) != 0u)) {
        break;
      }
      r2.w = f32(bitcast<i32>(r2.z));
      r5.x = (r2.w + -1.5f);
      let v_5 = fma(r5.xy, r2.xy, v1.xy);
      let v_6 = r5;
      r5 = vec4<f32>(v_5.x, v_6.y, v_5.y, v_6.w);
      let v_7 = (r0.xy + r5.xz);
      let v_8 = r5;
      r5 = vec4<f32>(v_7.x, v_8.y, v_7.y, v_8.w);
      let v_9 = (r5.xz * vec2<f32>(4.0f, 2.0f));
      r1 = vec4<f32>(v_9.xy, r1.zw);
      r2.w = dot(r1.xy, r1.xy);
      r4.w = bitcast<f32>(select(0u, 4294967295u, (r2.w >= 1.0f)));
      let v_10 = (r1.xy / r2.ww);
      let v_11 = r5;
      r5 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
      let v_12 = (r5.xz * vec2<f32>(-1.0f, 1.0f));
      r3 = vec4<f32>(v_12.xy, r3.zw);
      let v_13 = bitcast<vec4<u32>>(r4.wwww);
      let v_14 = r3;
      r7 = select(r1, v_14, (v_13 != vec4<u32>()));
      let v_15 = fma(r7.xy, vec2<f32>(0.25f, 0.5f), r7.zw);
      r1 = vec4<f32>(v_15.xy, r1.zw);
      let v_16 = r0.z;
      r7 = textureSampleLevel(t4, s4, r1.xyxx.xy, v_16);
      let v_17 = (r6.xyz + r7.xyz);
      r6 = vec4<f32>(v_17.xyz, r6.w);
      r2.z = bitcast<f32>((bitcast<i32>(r2.z) + 1i));
    }
    let v_18 = r6;
    r4 = vec4<f32>(v_18.xyz, r4.w);
    r0.w = bitcast<f32>((bitcast<i32>(r0.w) + 1i));
  }
  let v_19 = (r4.xyz * vec3<f32>(0.0625f));
  o0 = vec4<f32>(v_19.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
