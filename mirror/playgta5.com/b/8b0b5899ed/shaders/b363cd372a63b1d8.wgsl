diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb10_struct {
  tint_symbol_2 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb10_struct;

@group(1u) @binding(24u) var s8 : sampler;

@group(1u) @binding(36u) var t4 : texture_multisampled_2d<f32>;

@group(1u) @binding(37u) var t5 : texture_multisampled_2d<f32>;

@group(1u) @binding(40u) var t8 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 8u> = array<vec4<f32>, 8u>(vec4<f32>(0.43496552109718322754f, 0.90044713020324707031f, 0.0f, 0.0f), vec4<f32>(0.94414818286895751953f, 0.32952111959457397461f, 0.0f, 0.0f), vec4<f32>(0.90079319477081298828f, -0.43424835801124572754f, 0.0f, 0.0f), vec4<f32>(0.33027288317680358887f, -0.94388550519943237305f, 0.0f, 0.0f), vec4<f32>(-0.43353089690208435059f, -0.90113872289657592773f, 0.0f, 0.0f), vec4<f32>(-0.94362217187881469727f, -0.33102440834045410156f, 0.0f, 0.0f), vec4<f32>(-0.90148365497589111328f, 0.43281313776969909668f, 0.0f, 0.0f), vec4<f32>(-0.33177572488784790039f, 0.94335830211639404297f, 0.0f, 0.0f));

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb2_2.tint_symbol_1[18u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r1 = (cb2_2.tint_symbol_1[18u].zwzw * cb12_12.tint_symbol_2[5u].zzww);
  let v_3 = v0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r2 = vec4<f32>(v_5.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  let v_6 = textureLoad(t4, bitcast<vec2<i32>>(r2.xy), 0i).xyz;
  r2 = vec4<f32>(v_6.xyz, r2.w);
  let v_7 = fma(r2.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
  r2 = vec4<f32>(v_7.xyz, r2.w);
  r3.x = dot(cb1_1.tint_symbol[12u].xyz, r2.xyz);
  r4.y = dot(cb1_1.tint_symbol[13u].xyz, r2.xyz);
  r4.z = dot(cb1_1.tint_symbol[14u].xyz, r2.xyz);
  let v_8 = (-(r4.yyzy)).yz;
  let v_9 = r3;
  r3 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (cb12_12.tint_symbol_2[9u].xy + vec2<f32>(-1.0f));
  r0 = vec4<f32>(r0.xy, v_10.xy);
  let v_11 = fma(r0.xy, r0.zw, vec2<f32>(0.5f));
  r2 = vec4<f32>(v_11.xy, r2.zw);
  let v_12 = trunc(r2.xy);
  r2 = vec4<f32>(v_12.xy, r2.zw);
  let v_13 = r2.xy;
  let v_14 = max(v_13, vec2<f32>(-2147483648.0f));
  let v_15 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_14), vec2<i32>(2147483647i), (v_14 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_13 == v_13))));
  r2 = vec4<f32>(v_15.xy, r2.zw);
  r2 = vec4<f32>(r2.xy, vec2<f32>());
  r2.x = textureLoad(t5, bitcast<vec2<i32>>(r2.xy), 0i).x;
  r2.y = (cb12_12.tint_symbol_2[0u].w + 1.0f);
  r2.x = ((-(r2.xxxx)).x + r2.y);
  r2.x = (cb12_12.tint_symbol_2[0u].z / r2.x);
  r2.x = (1.00199997425079345703f / r2.x);
  let v_16 = fma(r3.xy, r1.xy, r0.xy);
  r0 = vec4<f32>(v_16.xy, r0.zw);
  let v_17 = fma(v0.xy, cb2_2.tint_symbol_1[18u].zw, vec2<f32>(-0.5f));
  r1 = vec4<f32>(v_17.xy, r1.zw);
  let v_18 = (r1.xy * cb12_12.tint_symbol_2[0u].xy);
  r4 = vec4<f32>(v_18.xy, r4.zw);
  let v_19 = (r1.zw * vec2<f32>(0.5f, -1.0f));
  r1 = vec4<f32>(v_19.xy, r1.zw);
  r4.z = 0.5f;
  r5 = vec4<f32>(r5.xy, vec2<f32>());
  r6.z = 0.5f;
  r1 = vec4<f32>(r1.xy, vec2<f32>());
  loop {
    r2.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) >= 8i)));
    if ((bitcast<u32>(r2.z) != 0u)) {
      break;
    }
    let v_20 = fma(icb0[bitcast<i32>(r1.z)].xy, r1.xy, r0.xy);
    r2 = vec4<f32>(r2.xy, v_20.xy);
    let v_21 = fma(r2.zw, r0.zw, vec2<f32>(0.5f));
    r7 = vec4<f32>(v_21.xy, r7.zw);
    let v_22 = trunc(r7.xy);
    r7 = vec4<f32>(v_22.xy, r7.zw);
    let v_23 = r7.xy;
    let v_24 = max(v_23, vec2<f32>(-2147483648.0f));
    let v_25 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_24), vec2<i32>(2147483647i), (v_24 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_23 == v_23))));
    r5 = vec4<f32>(v_25.xy, r5.zw);
    r3.w = textureLoad(t5, bitcast<vec2<i32>>(r5.xy), 0i).x;
    let v_26 = -(r3.wwww);
    r3.w = (r2.y + v_26.w);
    r3.w = (cb12_12.tint_symbol_2[0u].z / r3.w);
    r3.w = (r2.x * r3.w);
    let v_27 = (r2.zw + vec2<f32>(-0.5f));
    r2 = vec4<f32>(r2.xy, v_27.xy);
    let v_28 = (r2.zw * cb12_12.tint_symbol_2[0u].xy);
    r6 = vec4<f32>(v_28.xy, r6.zw);
    let v_29 = -(r4.xyxz);
    let v_30 = fma(r6.xyz, r3.www, v_29.xyw);
    r6 = vec4<f32>(v_30.xy, r6.z, v_30.z);
    r2.z = dot(r6.xyw, r6.xyw);
    r2.z = sqrt(r2.z);
    r2.w = dot(r6.xyw, r3.xyz);
    r3.w = (r2.z * 10.0f);
    r2.w = ((-(r2.wwww)).w + r2.z);
    r2.z = (r2.w / r2.z);
    r2.z = clamp(max(r2.zzzz, r3.wwww).z, 0.0f, 1.0f);
    r1.w = (r1.w + r2.z);
    r1.z = bitcast<f32>((bitcast<i32>(r1.z) + 1i));
  }
  r0.x = (r1.w * 0.125f);
  r0.y = textureSample(t8, s8, v1.xyxx.xy).x;
  r0.x = log2(r0.x);
  r0.x = (r0.x * cb12_12.tint_symbol_2[4u].x);
  r0.x = exp2(r0.x);
  o0 = min(r0.yyyy, r0.xxxx);
}

@fragment
fn main(@builtin(position) v_31 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_31, v1);
  return o0;
}
