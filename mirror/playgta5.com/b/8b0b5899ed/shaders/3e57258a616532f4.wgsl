diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb6_struct {
  tint_symbol_1 : array<vec4<f32>, 6u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb6_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(19u) var s3 : sampler;

@group(1u) @binding(23u) var s7 : sampler;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(25u) var s9 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(27u) var s11 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(39u) var t7 : texture_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0 = textureSample(t3, s3, v1.xy.xyxx.xy);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  r1 = textureSample(t8, s8, v1.xy.xyxx.xy);
  let v = fma(r1.xx, v2.yx, cb1_1.tint_symbol[15u].yx);
  let v_1 = r0;
  r0 = vec4<f32>(v_1.x, v.xy, v_1.w);
  let v_2 = fma(r0.zy, vec2<f32>(0.01999999955296516418f), cb11_11.tint_symbol_1[3u].zz);
  let v_3 = r1;
  r1 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  r2 = textureSample(t11, s11, r1.yzyy.xy);
  let v_4 = (r2.yw + vec2<f32>(-0.5f));
  let v_5 = r1;
  r1 = vec4<f32>(v_5.x, v_4.xy, v_5.w);
  let v_6 = (r1.yz * vec2<f32>(1.0f, 0.30000001192092895508f));
  r2 = vec4<f32>(v_6.xy, r2.zw);
  let v_7 = fma((-(cb11_11.tint_symbol_1[3u].zzzz)).zw, vec2<f32>(15.0f), r0.zy);
  r2 = vec4<f32>(r2.xy, v_7.xy);
  let v_8 = fma(r1.yz, vec2<f32>(1.0f, 0.30000001192092895508f), r2.zw);
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  r3 = textureSample(t12, s12, r1.yzyy.xy);
  let v_10 = fma(cb11_11.tint_symbol_1[3u].zz, vec2<f32>(15.0f), r0.yz);
  let v_11 = r0;
  r0 = vec4<f32>(v_11.x, v_10.xy, v_11.w);
  let v_12 = fma(r0.yz, vec2<f32>(0.64546000957489013672f), r2.xy);
  let v_13 = r0;
  r0 = vec4<f32>(v_13.x, v_12.xy, v_13.w);
  r2 = textureSample(t12, s12, r0.yzyy.xy);
  if ((bitcast<u32>(r0.x) != 0u)) {
    r4 = textureSample(t10, s10, v1.xy.xyxx.xy);
    r5 = textureSample(t9, s9, v1.xy.xyxx.xy);
    r6 = textureSample(t2, s2, v1.xy.xyxx.xy);
    r0.x = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r6.y))));
    r0.x = select(1.0f, 0.0f, (bitcast<u32>(r0.x) != 0u));
    let v_14 = (r2.xyz * r3.xyz);
    r1 = vec4<f32>(r1.x, v_14.xyz);
    let v_15 = (r5.yyy * r1.yzw);
    r1 = vec4<f32>(r1.x, v_15.xyz);
    let v_16 = fma(r1.yzw, vec3<f32>(10.0f), vec3<f32>(1.0f));
    r1 = vec4<f32>(r1.x, v_16.xyz);
    let v_17 = (r1.yzw * r6.xyz);
    r2 = vec4<f32>(v_17.xyz, r2.w);
    let v_18 = (r4.xyz * r4.xyz);
    r3 = vec4<f32>(v_18.xyz, r3.w);
    r7 = textureSample(t7, s7, v1.xy.xyxx.xy);
    r0.y = (cb11_11.tint_symbol_1[2u].w + 1.0f);
    r0.y = ((-(r7.xxxx)).y + r0.y);
    r0.y = (cb11_11.tint_symbol_1[2u].z / r0.y);
    r0.z = bitcast<f32>(select(0u, 4294967295u, !((0.0f == r4.y))));
    r0.y = ((-(r0.yyyy)).y + r1.x);
    r7.y = max(r0.y, 0.0f);
    r7.x = (r5.x * r5.x);
    let v_19 = abs(v2.zzzz);
    r7.z = (r7.x * v_19.z);
    let v_20 = (r7.xy * r7.yz);
    r5 = vec4<f32>(v_20.x, r5.yz, v_20.y);
    let v_21 = (r5.xw * vec2<f32>(-78.43303680419921875f, -235.299102783203125f));
    r5 = vec4<f32>(v_21.x, r5.yz, v_21.y);
    let v_22 = exp2(r5.xw);
    r5 = vec4<f32>(v_22.x, r5.yz, v_22.y);
    let v_23 = bitcast<vec2<u32>>(r0.zz);
    let v_24 = select(vec2<f32>(1.0f), r5.xw, (v_23 != vec2<u32>()));
    r5 = vec4<f32>(v_24.x, r5.yz, v_24.y);
    let v_25 = bitcast<u32>(r0.z);
    let v_26 = r5.y;
    o0.w = select(r0.x, v_26, (v_25 != 0u));
    let v_27 = (r4.xyz * r2.xyz);
    r0 = vec4<f32>(v_27.xyz, r0.w);
    let v_28 = (r0.xyz + r0.xyz);
    r0 = vec4<f32>(v_28.xyz, r0.w);
    let v_29 = -(r0.xyzx);
    let v_30 = fma(r6.xyz, r1.yzw, v_29.xyz);
    r1 = vec4<f32>(v_30.xyz, r1.w);
    let v_31 = fma(r5.www, r1.xyz, r0.xyz);
    r0 = vec4<f32>(v_31.xyz, r0.w);
    r1.x = (r0.w * cb11_11.tint_symbol_1[3u].y);
    let v_32 = fma(r1.xxx, cb11_11.tint_symbol_1[5u].xyz, cb11_11.tint_symbol_1[4u].xyz);
    r1 = vec4<f32>(v_32.xyz, r1.w);
    r1.w = (r5.z * cb11_11.tint_symbol_1[3u].x);
    r0.w = (r0.w * r1.w);
    let v_33 = (r4.xyz * r0.www);
    r2 = vec4<f32>(v_33.xyz, r2.w);
    let v_34 = (r2.xyz * cb11_11.tint_symbol_1[5u].xyz);
    r2 = vec4<f32>(v_34.xyz, r2.w);
    let v_35 = fma(r3.xyz, r1.xyz, r2.xyz);
    r1 = vec4<f32>(v_35.xyz, r1.w);
    let v_36 = -(r1.xyzx);
    let v_37 = (r0.xyz + v_36.xyz);
    r0 = vec4<f32>(v_37.xyz, r0.w);
    let v_38 = fma(r5.xxx, r0.xyz, r1.xyz);
    o0 = vec4<f32>(v_38.xyz, o0.w);
  } else {
    o0 = vec4<f32>();
  }
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
