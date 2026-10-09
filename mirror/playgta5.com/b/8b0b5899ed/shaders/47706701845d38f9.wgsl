diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(0u) @binding(11u) var<uniform> cb11_11 : cb1_struct;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec3<f32>, v2 : vec2<f32>) {
  let v = (v0.xxx * cb1_1.tint_symbol[12u].xyz);
  r0 = vec4<f32>(v.xyz, r0.w);
  r0.w = (cb11_11.tint_symbol_1[0u].x * 0.00499999988824129105f);
  let v_1 = fma(r0.xyz, r0.www, cb1_1.tint_symbol[15u].xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = (v0.yyy * cb1_1.tint_symbol[13u].xyz);
  r1 = vec4<f32>(v_2.xyz, r1.w);
  let v_3 = fma((-(r1.xyzx)).xyz, r0.www, r0.xyz);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = dot(cb11_11.tint_symbol_1[0u].xy, vec2<f32>(0.00999999977648258209f));
  let v_4 = (r0.ww * v2);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = fma(cb1_1.tint_symbol[12u].xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma((-(cb1_1.tint_symbol[13u].xyzx)).xyz, r1.yyy, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r1 = (cb11_11.tint_symbol_1[0u].xxyy * vec4<f32>(0.05999999865889549255f, 0.03999999910593032837f, 0.05000000074505805969f, 0.02999999932944774628f));
  let v_7 = (r1.zw + r1.xy);
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = (r1.xxx * cb1_1.tint_symbol[12u].xyz);
  r1 = vec4<f32>(v_8.x, r1.y, v_8.yz);
  let v_9 = (r1.yyy * cb1_1.tint_symbol[13u].xyz);
  r2 = vec4<f32>(v_9.xyz, r2.w);
  let v_10 = fma((-(r1.xzwx)).xyz, vec3<f32>(0.5f), r0.xyz);
  r0 = vec4<f32>(v_10.xyz, r0.w);
  let v_11 = fma(r2.xyz, vec3<f32>(0.5f), r0.xyz);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = fma((-(cb1_1.tint_symbol[14u].xyzx)).xyz, cb11_11.tint_symbol_1[0u].zzz, r0.xyz);
  r0 = vec4<f32>(v_12.xyz, r0.w);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r0 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  o0 = (r0 + cb1_1.tint_symbol[11u]);
  o1 = v1.xyzx;
  o2 = v2.xyxy;
  let v_13 = (cb1_1.tint_symbol[12u].zxy * cb1_1.tint_symbol[13u].yzx);
  r0 = vec4<f32>(v_13.xyz, r0.w);
  let v_14 = -(r0.xyzx);
  o3 = fma(cb1_1.tint_symbol[12u].yzx, cb1_1.tint_symbol[13u].zxy, v_14.xyz).xyzx;
}

struct tint_symbol_2 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec3<f32>, @location(2u) v2 : vec2<f32>) -> tint_symbol_2 {
  main_inner(v0, v1, v2);
  return tint_symbol_2(o0, o1, o2, o3);
}
