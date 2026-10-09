diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(8u) var<uniform> cb8_8 : cb1_struct;

@group(1u) @binding(40u) var t8 : texture_multisampled_2d<f32>;

@group(1u) @binding(41u) var t9 : texture_multisampled_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = max(v0.xy, vec2<f32>());
  let v_3 = bitcast<vec2<f32>>(select(vec2<u32>(v_2), vec2<u32>(4294967295u), (v_2 >= vec2<f32>(4294967296.0f))));
  r0 = vec4<f32>(v_3.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), 0i).x;
  r1.y = textureLoad(t12, bitcast<vec2<i32>>(r0.xy), 1i).x;
  r1.x = ((-(r1.yyyy)).x + r1.x);
  r1.y = bitcast<f32>(select(0u, 4294967295u, !((abs(r1.xxxx).y == 0.0f))));
  if ((bitcast<u32>(r1.y) != 0u)) {
    r2 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 0i);
    let v_4 = (r2.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
    r1 = vec4<f32>(r1.x, v_4.xyz);
    let v_5 = fract(r1.yzw);
    r1 = vec4<f32>(r1.x, v_5.xyz);
    let v_6 = fma((-(r1.zzyz)).yz, vec2<f32>(0.125f), r1.yz);
    let v_7 = r1;
    r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
    let v_8 = fma(r2.xyz, vec3<f32>(256.0f), r1.yzw);
    r1 = vec4<f32>(r1.x, v_8.xyz);
    let v_9 = (r1.yzw + vec3<f32>(-128.0f));
    r1 = vec4<f32>(r1.x, v_9.xyz);
    r2.x = dot(r1.yzw, r1.yzw);
    r2.x = inverseSqrt(r2.x);
    let v_10 = (r1.yzw * r2.xxx);
    r1 = vec4<f32>(r1.x, v_10.xyz);
    r2.x = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), 0i).x;
    r3 = textureLoad(t8, bitcast<vec2<i32>>(r0.xy), 1i);
    let v_11 = (r3.www * vec3<f32>(0.998046875f, 7.984375f, 63.875f));
    r4 = vec4<f32>(v_11.xyz, r4.w);
    let v_12 = fract(r4.xyz);
    r4 = vec4<f32>(v_12.xyz, r4.w);
    let v_13 = fma((-(r4.yxyy)).xy, vec2<f32>(0.125f), r4.xy);
    r4 = vec4<f32>(v_13.xy, r4.zw);
    let v_14 = fma(r3.xyz, vec3<f32>(256.0f), r4.xyz);
    r3 = vec4<f32>(v_14.xyz, r3.w);
    let v_15 = (r3.xyz + vec3<f32>(-128.0f));
    r3 = vec4<f32>(v_15.xyz, r3.w);
    r2.y = dot(r3.xyz, r3.xyz);
    r2.y = inverseSqrt(r2.y);
    let v_16 = (r2.yyy * r3.xyz);
    r3 = vec4<f32>(v_16.xyz, r3.w);
    r0.x = textureLoad(t9, bitcast<vec2<i32>>(r0.xy), 1i).x;
    let v_17 = abs(r1.xxxx);
    r0.y = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].w < v_17.y)));
    r0.z = dot(r1.yzw, r3.xyz);
    r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.z < cb8_8.tint_symbol[0u].y)));
    r0.w = bitcast<f32>((bitcast<u32>(r0.y) | bitcast<u32>(r0.z)));
    let v_18 = -(r3.wwww);
    r1.x = (r2.w + v_18.x);
    let v_19 = abs(r1.xxxx);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_19.x)));
    r0.x = ((-(r0.xxxx)).x + r2.x);
    let v_20 = abs(r0.xxxx);
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb8_8.tint_symbol[0u].z < v_20.x)));
    r1.y = bitcast<f32>((bitcast<u32>(r0.w) | bitcast<u32>(r0.x)));
    let v_21 = bitcast<u32>(r1.x);
    let v_22 = r1.y;
    r1.y = select(r0.w, v_22, (v_21 != 0u));
    r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r1.x)));
    r0.x = bitcast<f32>((bitcast<u32>(r1.y) & bitcast<u32>(r0.x)));
    let v_23 = bitcast<u32>(r0.z);
    let v_24 = r0.w;
    r0.x = select(r0.x, v_24, (v_23 != 0u));
    let v_25 = bitcast<u32>(r0.y);
    let v_26 = r0.y;
    r0.x = select(r0.x, v_26, (v_25 != 0u));
  } else {
    r0.x = 0.0f;
  }
  r0.x = bitcast<f32>(~(bitcast<u32>(r0.x)));
  v_27((bitcast<u32>(r0.x) != 0u));
  o0 = vec4<f32>(1.0f);
}

fn v_27(v_28 : bool) {
  if (v_28) {
    discard;
    return;
  }
}

@fragment
fn main(@builtin(position) v_29 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_29);
  return o0;
}
