diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb19_struct {
  tint_symbol_1 : array<vec4<f32>, 19u>,
}

@group(0u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb53_struct {
  tint_symbol_2 : array<vec4<f32>, 53u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb53_struct;

struct cb3_struct {
  tint_symbol_3 : array<vec4<f32>, 3u>,
}

@group(0u) @binding(5u) var<uniform> cb5_5 : cb3_struct;

@group(0u) @binding(16u) var s0 : sampler;

@group(0u) @binding(32u) var t0 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 12u> = array<vec4<f32>, 12u>(vec4<f32>(0.77296757698059082031f, -0.2221564948558807373f, 0.52824062108993530273f, -0.80284750461578369141f), vec4<f32>(0.26296308636665344238f, -0.07523454725742340088f, 0.82370549440383911133f, -0.55618768930435180664f), vec4<f32>(0.56968319416046142578f, 0.12108600139617919922f, 0.39888420701026916504f, -0.41141709685325622559f), vec4<f32>(0.44001591205596923828f, 0.48799020051956176758f, -0.03464015945792198181f, 0.17634199559688568115f), vec4<f32>(-0.12032330036163330078f, -0.5860487818717956543f, 0.20046560466289520264f, -0.68741881847381591797f), vec4<f32>(-0.25861400365829467773f, -0.16308039426803588867f, -0.68832087516784667969f, -0.6355559229850769043f), vec4<f32>(-0.34508609771728515625f, -0.84809571504592895508f, -0.36281260848045349121f, 0.61441987752914428711f), vec4<f32>(0.06174967065453529358f, 0.50691992044448852539f, 0.97731637954711914062f, 0.20866240561008453369f), vec4<f32>(0.78943288326263427734f, 0.49026459455490112305f, -0.70231288671493530273f, -0.07146061956882476807f), vec4<f32>(-0.49534139037132263184f, 0.23382100462913513184f, 0.1793105006217956543f, 0.96258467435836791992f), vec4<f32>(-0.93097507953643798828f, -0.32739698886871337891f, -0.91298490762710571289f, 0.24169740080833435059f), vec4<f32>(-0.21726569533348083496f, 0.97270828485488891602f, -0.69711947441101074219f, 0.52966928482055664062f));

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

fn main_inner(v0 : vec3<f32>, v1 : vec4<f32>, v2 : vec2<f32>, v3 : vec3<f32>) {
  r0 = vec4<f32>(((v0 + (-(v3.xyzx)).xyz)).xyz, r0.w);
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.x = (r0.x * 0.70710676908493041992f);
  let v = (v3 + (-(cb1_1.tint_symbol[15u].xxyz)).yzw);
  r0 = vec4<f32>(r0.x, v.xyz);
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = sqrt(r1.x);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x < r0.x)));
  r0.y = dot(cb1_1.tint_symbol[6u].xyz, r0.yzw);
  r0.z = bitcast<f32>(select(0u, 4294967295u, ((-(r0.xxxx)).z < r0.y)));
  r0.x = (r0.y / r0.x);
  r0.x = ((-(r0.xxxx)).x + 1.0f);
  r0.x = clamp(((r0.xxxx * vec4<f32>(0.5f))).x, 0.0f, 1.0f);
  let v_1 = bitcast<u32>(r0.z);
  r0.x = select(1.0f, r0.x, (v_1 != 0u));
  let v_2 = bitcast<u32>(r1.x);
  r0.x = select(1.0f, r0.x, (v_2 != 0u));
  let v_3 = (v3.yyy * cb1_1.tint_symbol[9u].xyw);
  r0 = vec4<f32>(r0.x, v_3.xyz);
  let v_4 = fma(v3.xxx, cb1_1.tint_symbol[8u].xyw, r0.yzw);
  r0 = vec4<f32>(r0.x, v_4.xyz);
  let v_5 = fma(v3.zzz, cb1_1.tint_symbol[10u].xyw, r0.yzw);
  r0 = vec4<f32>(r0.x, v_5.xyz);
  let v_6 = (r0.yzw + cb1_1.tint_symbol[11u].xyw);
  r0 = vec4<f32>(r0.x, v_6.xyz);
  r1.x = (1.0f / r0.w);
  let v_7 = (r0.yz * r1.xx);
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = fma(r0.yz, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
  let v_10 = r1;
  r1 = vec4<f32>(v_10.x, v_9.xy, v_10.w);
  r2 = textureSampleLevel(t0, s0, r1.yzyy.xy, 0.0f);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r2.x >= r0.w)));
  if ((bitcast<u32>(r1.y) != 0u)) {
    let v_11 = (v0.yy * cb1_1.tint_symbol[9u].xy);
    let v_12 = r1;
    r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
    let v_13 = fma(v0.xx, cb1_1.tint_symbol[8u].xy, r1.yz);
    let v_14 = r1;
    r1 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
    let v_15 = fma(v0.zz, cb1_1.tint_symbol[10u].xy, r1.yz);
    let v_16 = r1;
    r1 = vec4<f32>(v_16.x, v_15.xy, v_16.w);
    let v_17 = (r1.yz + cb1_1.tint_symbol[11u].xy);
    let v_18 = r1;
    r1 = vec4<f32>(v_18.x, v_17.xy, v_18.w);
    let v_19 = -(r0.yzyy);
    let v_20 = fma(r1.yz, r1.xx, v_19.xy);
    r1 = vec4<f32>(v_20.xy, r1.zw);
    r1.x = dot(r1.xy, r1.xy);
    r1.x = sqrt(r1.x);
    r1.x = (r1.x * cb5_5.tint_symbol_3[2u].x);
    r1.y = dot(cb5_5.tint_symbol_3[2u].yy, cb2_2.tint_symbol_1[18u].zz);
    r1.x = min(r1.y, r1.x);
    let v_21 = r1;
    r1 = vec4<f32>(v_21.x, vec2<f32>(), v_21.w);
    loop {
      r1.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) >= 12i)));
      if ((bitcast<u32>(r1.w) != 0u)) {
        break;
      }
      r2 = fma(icb0[bitcast<i32>(r1.z)], r1.xxxx, r0.yzyz);
      r2 = fma(r2, vec4<f32>(0.5f, -0.5f, 0.5f, -0.5f), vec4<f32>(0.5f));
      r3 = textureSampleLevel(t0, s0, r2.xyxx.xy, 0.0f);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (r3.x >= r0.w)));
      r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
      r1.w = (r1.w + r1.y);
      r2 = textureSampleLevel(t0, s0, r2.zwzz.xy, 0.0f);
      r2.x = bitcast<f32>(select(0u, 4294967295u, (r2.x >= r0.w)));
      r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
      r1.y = (r1.w + r2.x);
      r1.z = bitcast<f32>((bitcast<i32>(r1.z) + 1i));
    }
  } else {
    r1.y = 0.0f;
  }
  r0.w = (r1.y * 0.04166666790843009949f);
  let v_22 = -(cb5_5.tint_symbol_3[1u].xxxx);
  r1.x = (v_22.x + 1.00010001659393310547f);
  r1.x = (1.0f / r1.x);
  let v_23 = clamp(((abs(r0.yyzy) + v_22)).yz, vec2<f32>(), vec2<f32>(1.0f));
  let v_24 = r0;
  r0 = vec4<f32>(v_24.x, v_23.xy, v_24.w);
  r0.y = max(r0.z, r0.y);
  r0.y = fma((-(r0.yyyy)).y, r1.x, 1.0f);
  let v_25 = (r0.yw * r0.yw);
  let v_26 = r0;
  r0 = vec4<f32>(v_26.x, v_25.x, v_26.z, v_25.y);
  r0.y = (r0.y * r0.w);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  let v_27 = select(v3, v0, (bitcast<vec3<u32>>(r0.zzz) != vec3<u32>()));
  r1 = vec4<f32>(v_27.xyz, r1.w);
  r2 = (r1.yyyy * cb1_1.tint_symbol[9u]);
  r2 = fma(r1.xxxx, cb1_1.tint_symbol[8u], r2);
  r1 = fma(r1.zzzz, cb1_1.tint_symbol[10u], r2);
  o0 = (r1 + cb1_1.tint_symbol[11u]);
  let v_28 = (r0.yyy * v1.xyz);
  r0 = vec4<f32>(r0.x, v_28.xyz);
  let v_29 = (r0.xxx * r0.yzw);
  r0 = vec4<f32>(v_29.xyz, r0.w);
  let v_30 = (r0.xyz * v2.yyy);
  r0 = vec4<f32>(v_30.xyz, r0.w);
  let v_31 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_31.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  let v_32 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.x = (r0.w + v_32.x);
  r1.x = max(r1.x, 0.0f);
  r0.w = (r1.x / r0.w);
  r0.w = (r0.w * r1.z);
  r1.y = (r0.w * cb3_3.tint_symbol_2[52u].z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.wwww).w)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_33 = bitcast<u32>(r0.w);
  r0.w = select(1.0f, r1.y, (v_33 != 0u));
  r1.y = (r1.x * cb3_3.tint_symbol_2[51u].w);
  r0.w = (r0.w * r1.y);
  r0.w = min(r0.w, 1.0f);
  r0.w = (r0.w * 1.44269502162933349609f);
  r0.w = exp2(r0.w);
  r0.w = min(r0.w, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  r1.y = (r0.w * cb3_3.tint_symbol_2[52u].y);
  r0.w = fma((-(r0.wwww)).w, cb3_3.tint_symbol_2[52u].y, 1.0f);
  r0.w = (r0.w * cb3_3.tint_symbol_2[51u].y);
  let v_34 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.x = (r1.x + v_34.x);
  r1.x = max(r1.x, 0.0f);
  r1.x = (r1.x * cb3_3.tint_symbol_2[51u].x);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r0.w = clamp(fma(r0.wwww, r1.xxxx, r1.yyyy).w, 0.0f, 1.0f);
  r0.w = ((-(r0.wwww)).w + 1.0f);
  o2 = ((r0.www * r0.xyz)).xyzx;
  o1.x = v2.x;
  o1.y = v1.w;
}

struct tint_symbol_4 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec3<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec2<f32>, @location(3u) v3 : vec3<f32>) -> tint_symbol_4 {
  main_inner(v0, v1, v2, v3);
  return tint_symbol_4(o0, o1, o2);
}
