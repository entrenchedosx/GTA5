diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb1_struct {
  tint_symbol : array<vec4<f32>, 1u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb1_struct;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

fn main_inner(v : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  o0.w = 0.0f;
  r0.x = floor(v0.x);
  let v_2 = fma(r0.xx, vec2<f32>(2.0f), vec2<f32>(1.0f, 3.0f));
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol[0u].x < r0.y)));
  let v_3 = r0.x;
  let v_4 = max(v_3, -2147483648.0f);
  r1.x = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
  let v_5 = v0.y;
  let v_6 = max(v_5, -2147483648.0f);
  r1.y = bitcast<f32>(select(select(i32(v_6), 2147483647i, (v_6 >= 2147483648.0f)), 0i, !((v_5 == v_5))));
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  let v_7 = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r0 = vec4<f32>(v_7.x, r0.y, v_7.yz);
  let v_8 = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r0.w = ((-(r0.wwww)).w / r2.y);
  let v_9 = bitcast<u32>(r0.y);
  r0.y = select(r0.w, 0.0f, (v_9 != 0u));
  let v_10 = textureLoad(t3, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r3 = vec4<f32>(v_10.xyz, r3.w);
  r0.x = ((-(r0.xxxx)).x / r3.y);
  r0.z = fma(r0.x, r3.z, r0.z);
  r0.w = (r3.x * r0.x);
  o0.y = fma(r0.y, r2.x, r0.z);
  r0.z = (r2.z * r0.y);
  let v_11 = r0;
  let v_12 = o0;
  o0 = vec4<f32>(v_11.w, v_12.y, v_11.z, v_12.w);
  let v_13 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r2 = vec4<f32>(v_13.xyz, r2.w);
  let v_14 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r3 = vec4<f32>(v_14.xyz, r3.w);
  let v_15 = textureLoad(t4, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(r1.w)).xyz;
  r1 = vec4<f32>(v_15.xyz, r1.w);
  let v_16 = fma(r0.xxx, r3.xyz, r2.xyz);
  r0 = vec4<f32>(v_16.x, r0.y, v_16.yz);
  let v_17 = fma(r0.yyy, r1.xyz, r0.xzw);
  o1 = vec4<f32>(v_17.xyz, o1.w);
  o1.w = 0.0f;
}

struct tint_symbol_1 {
  @location(0u)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) v_18 : vec4<f32>) -> tint_symbol_1 {
  main_inner(v_18);
  return tint_symbol_1(o0, o1);
}
