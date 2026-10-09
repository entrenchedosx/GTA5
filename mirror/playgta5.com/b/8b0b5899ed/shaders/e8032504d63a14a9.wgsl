diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

var<private> r15 : vec4<f32>;

var<private> r16 : vec4<f32>;

struct cb88_struct {
  tint_symbol : array<vec4<f32>, 88u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb88_struct;

@group(1u) @binding(21u) var s5 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(37u) var t5 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = textureSampleLevel(t5, s5, v1.xy.xyxx.xy, 0.0f);
  let v = (r0.xz * vec2<f32>(8.0f));
  r1 = vec4<f32>(v.xy, r1.zw);
  let v_1 = fma(v1.xy, vec2<f32>(58.16400146484375f, 47.130001068115234375f), r1.xy);
  r1 = vec4<f32>(v_1.xy, r1.zw);
  r1.x = textureSample(t12, s12, r1.xyxx.xy).x;
  r1.x = (r1.x + -0.5f);
  let v_2 = (cb5_5.tint_symbol[66u].xy * cb5_5.tint_symbol[87u].xy);
  let v_3 = r1;
  r1 = vec4<f32>(v_3.x, v_2.xy, v_3.w);
  let v_4 = (r1.yz * cb5_5.tint_symbol[87u].ww);
  r2 = vec4<f32>(v_4.xy, r2.zw);
  let v_5 = (r2.xy * vec2<f32>(0.06666667014360427856f));
  r2 = vec4<f32>(r2.xy, v_5.xy);
  let v_6 = (r1.xx * r2.zw);
  r1 = vec4<f32>(v_6.x, r1.yz, v_6.y);
  let v_7 = fma(r1.xw, cb5_5.tint_symbol[86u].ww, v1.xy);
  r1 = vec4<f32>(v_7.x, r1.yz, v_7.y);
  r3 = fma(r2.xyxy, vec4<f32>(0.06666667014360427856f, 0.06666667014360427856f, 0.13333334028720855713f, 0.13333334028720855713f), r1.xwxw);
  r3 = (r3 * cb5_5.tint_symbol[66u].zwzw);
  r3 = round(r3);
  r3 = (r3 + vec4<f32>(0.5f));
  r3 = (r3 / cb5_5.tint_symbol[66u].zwzw);
  r4 = textureSampleLevel(t5, s5, r3.xyxx.xy, 0.0f);
  r3 = textureSampleLevel(t5, s5, r3.zwzz.xy, 0.0f);
  r2.z = (r0.w + r4.w);
  r2.z = (r3.w + r2.z);
  r5 = fma(r2.xyxy, vec4<f32>(0.20000000298023223877f, 0.20000000298023223877f, 0.26666668057441711426f, 0.26666668057441711426f), r1.xwxw);
  r5 = (r5 * cb5_5.tint_symbol[66u].zwzw);
  r5 = round(r5);
  r5 = (r5 + vec4<f32>(0.5f));
  r5 = (r5 / cb5_5.tint_symbol[66u].zwzw);
  r6 = textureSampleLevel(t5, s5, r5.xyxx.xy, 0.0f);
  r5 = textureSampleLevel(t5, s5, r5.zwzz.xy, 0.0f);
  r2.z = (r2.z + r6.w);
  r2.z = (r5.w + r2.z);
  r7 = fma(r2.xyxy, vec4<f32>(0.3333333432674407959f, 0.3333333432674407959f, 0.40000000596046447754f, 0.40000000596046447754f), r1.xwxw);
  r7 = (r7 * cb5_5.tint_symbol[66u].zwzw);
  r7 = round(r7);
  r7 = (r7 + vec4<f32>(0.5f));
  r7 = (r7 / cb5_5.tint_symbol[66u].zwzw);
  r8 = textureSampleLevel(t5, s5, r7.xyxx.xy, 0.0f);
  r7 = textureSampleLevel(t5, s5, r7.zwzz.xy, 0.0f);
  r2.z = (r2.z + r8.w);
  r2.z = (r7.w + r2.z);
  r9 = fma(r2.xyxy, vec4<f32>(0.46666666865348815918f, 0.46666666865348815918f, 0.53333336114883422852f, 0.53333336114883422852f), r1.xwxw);
  r9 = (r9 * cb5_5.tint_symbol[66u].zwzw);
  r9 = round(r9);
  r9 = (r9 + vec4<f32>(0.5f));
  r9 = (r9 / cb5_5.tint_symbol[66u].zwzw);
  r10 = textureSampleLevel(t5, s5, r9.xyxx.xy, 0.0f);
  r9 = textureSampleLevel(t5, s5, r9.zwzz.xy, 0.0f);
  r2.z = (r2.z + r10.w);
  r2.z = (r9.w + r2.z);
  r11 = fma(r2.xyxy, vec4<f32>(0.60000002384185791016f, 0.60000002384185791016f, 0.6666666865348815918f, 0.6666666865348815918f), r1.xwxw);
  r11 = (r11 * cb5_5.tint_symbol[66u].zwzw);
  r11 = round(r11);
  r11 = (r11 + vec4<f32>(0.5f));
  r11 = (r11 / cb5_5.tint_symbol[66u].zwzw);
  r12 = textureSampleLevel(t5, s5, r11.xyxx.xy, 0.0f);
  r11 = textureSampleLevel(t5, s5, r11.zwzz.xy, 0.0f);
  r2.z = (r2.z + r12.w);
  r2.z = (r11.w + r2.z);
  r13 = fma(r2.xyxy, vec4<f32>(0.73333334922790527344f, 0.73333334922790527344f, 0.80000001192092895508f, 0.80000001192092895508f), r1.xwxw);
  r14 = fma(r2.xyxy, vec4<f32>(0.86666667461395263672f, 0.86666667461395263672f, 0.93333333730697631836f, 0.93333333730697631836f), r1.xwxw);
  let v_8 = fma(r1.yz, cb5_5.tint_symbol[87u].ww, r1.xw);
  r1 = vec4<f32>(v_8.xy, r1.zw);
  let v_9 = (r1.xy * cb5_5.tint_symbol[66u].zw);
  r1 = vec4<f32>(v_9.xy, r1.zw);
  let v_10 = round(r1.xy);
  r1 = vec4<f32>(v_10.xy, r1.zw);
  let v_11 = (r1.xy + vec2<f32>(0.5f));
  r1 = vec4<f32>(v_11.xy, r1.zw);
  let v_12 = (r1.xy / cb5_5.tint_symbol[66u].zw);
  r1 = vec4<f32>(v_12.xy, r1.zw);
  r1 = textureSampleLevel(t5, s5, r1.xyxx.xy, 0.0f);
  r14 = (r14 * cb5_5.tint_symbol[66u].zwzw);
  r14 = round(r14);
  r14 = (r14 + vec4<f32>(0.5f));
  r14 = (r14 / cb5_5.tint_symbol[66u].zwzw);
  r13 = (r13 * cb5_5.tint_symbol[66u].zwzw);
  r13 = round(r13);
  r13 = (r13 + vec4<f32>(0.5f));
  r13 = (r13 / cb5_5.tint_symbol[66u].zwzw);
  r15 = textureSampleLevel(t5, s5, r13.xyxx.xy, 0.0f);
  r13 = textureSampleLevel(t5, s5, r13.zwzz.xy, 0.0f);
  r2.x = (r2.z + r15.w);
  r2.x = (r13.w + r2.x);
  r16 = textureSampleLevel(t5, s5, r14.xyxx.xy, 0.0f);
  r14 = textureSampleLevel(t5, s5, r14.zwzz.xy, 0.0f);
  r2.x = (r2.x + r16.w);
  r2.x = (r14.w + r2.x);
  r2.x = (r1.w + r2.x);
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r2.x == 0.0f)));
  let v_13 = bitcast<u32>(r2.y);
  r2.x = select(r2.x, 1.0f, (v_13 != 0u));
  let v_14 = (r4.www * r4.xyz);
  r2 = vec4<f32>(r2.x, v_14.xyz);
  r4.x = fma(r4.w, 0.93333333730697631836f, r0.w);
  r4.x = fma(r3.w, 0.86666667461395263672f, r4.x);
  r4.x = fma(r6.w, 0.80000001192092895508f, r4.x);
  r4.x = fma(r5.w, 0.73333334922790527344f, r4.x);
  r4.x = fma(r8.w, 0.6666666865348815918f, r4.x);
  r4.x = fma(r7.w, 0.60000002384185791016f, r4.x);
  r4.x = fma(r10.w, 0.53333336114883422852f, r4.x);
  r4.x = fma(r9.w, 0.46666666865348815918f, r4.x);
  r4.x = fma(r12.w, 0.40000000596046447754f, r4.x);
  r4.x = fma(r11.w, 0.3333333432674407959f, r4.x);
  r4.x = fma(r15.w, 0.26666668057441711426f, r4.x);
  r4.x = fma(r13.w, 0.20000000298023223877f, r4.x);
  r4.x = fma(r16.w, 0.13333334028720855713f, r4.x);
  r4.x = fma(r14.w, 0.06666667014360427856f, r4.x);
  let v_15 = fma(r0.xyz, r0.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_15.xyz);
  let v_16 = fma(r3.xyz, r3.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_16.xyz);
  let v_17 = fma(r6.xyz, r6.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_17.xyz);
  let v_18 = fma(r5.xyz, r5.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_18.xyz);
  let v_19 = fma(r8.xyz, r8.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_19.xyz);
  let v_20 = fma(r7.xyz, r7.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_20.xyz);
  let v_21 = fma(r10.xyz, r10.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_21.xyz);
  let v_22 = fma(r9.xyz, r9.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_22.xyz);
  let v_23 = fma(r12.xyz, r12.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_23.xyz);
  let v_24 = fma(r11.xyz, r11.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_24.xyz);
  let v_25 = fma(r15.xyz, r15.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_25.xyz);
  let v_26 = fma(r13.xyz, r13.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_26.xyz);
  let v_27 = fma(r16.xyz, r16.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_27.xyz);
  let v_28 = fma(r14.xyz, r14.www, r2.yzw);
  r2 = vec4<f32>(r2.x, v_28.xyz);
  let v_29 = fma(r1.xyz, r1.www, r2.yzw);
  r1 = vec4<f32>(v_29.xyz, r1.w);
  let v_30 = (r1.xyz / r2.xxx);
  r1 = vec4<f32>(v_30.xyz, r1.w);
  let v_31 = ((-(r0.xyzx)).xyz + r1.xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  r1.w = (cb5_5.tint_symbol[86u].x * 8.0f);
  r1.w = (r4.x / r1.w);
  r0.w = clamp(((r0.wwww + r1.wwww)).w, 0.0f, 1.0f);
  let v_32 = fma(r0.www, r1.xyz, r0.xyz);
  o0 = vec4<f32>(v_32.xyz, o0.w);
  o0.w = r0.w;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
