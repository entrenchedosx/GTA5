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
  let v = (v3.yyy * cb1_1.tint_symbol[9u].xyw);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = fma(v3.xxx, cb1_1.tint_symbol[8u].xyw, r0.xyz);
  r0 = vec4<f32>(v_1.xyz, r0.w);
  let v_2 = fma(v3.zzz, cb1_1.tint_symbol[10u].xyw, r0.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = (r0.xyz + cb1_1.tint_symbol[11u].xyw);
  r0 = vec4<f32>(v_3.xyz, r0.w);
  r0.w = (1.0f / r0.z);
  let v_4 = (r0.ww * r0.xy);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = fma(r0.xy, vec2<f32>(0.5f, -0.5f), vec2<f32>(0.5f));
  r1 = vec4<f32>(v_5.xy, r1.zw);
  r1 = textureSampleLevel(t0, s0, r1.xyxx.xy, 0.0f);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r1.x >= r0.z)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_6 = (v0.yy * cb1_1.tint_symbol[9u].xy);
    r1 = vec4<f32>(v_6.xy, r1.zw);
    let v_7 = fma(v0.xx, cb1_1.tint_symbol[8u].xy, r1.xy);
    r1 = vec4<f32>(v_7.xy, r1.zw);
    let v_8 = fma(v0.zz, cb1_1.tint_symbol[10u].xy, r1.xy);
    r1 = vec4<f32>(v_8.xy, r1.zw);
    let v_9 = (r1.xy + cb1_1.tint_symbol[11u].xy);
    r1 = vec4<f32>(v_9.xy, r1.zw);
    let v_10 = -(r0.xyxx);
    let v_11 = fma(r1.xy, r0.ww, v_10.xy);
    r1 = vec4<f32>(v_11.xy, r1.zw);
    r0.w = dot(r1.xy, r1.xy);
    r0.w = sqrt(r0.w);
    r0.w = (r0.w * cb5_5.tint_symbol_3[2u].x);
    r1.x = dot(cb5_5.tint_symbol_3[2u].yy, cb2_2.tint_symbol_1[18u].zz);
    r0.w = min(r0.w, r1.x);
    r1 = vec4<f32>(vec2<f32>(), r1.zw);
    loop {
      r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.y) >= 12i)));
      if ((bitcast<u32>(r1.z) != 0u)) {
        break;
      }
      r2 = fma(icb0[bitcast<i32>(r1.y)], r0.wwww, r0.xyxy);
      r2 = fma(r2, vec4<f32>(0.5f, -0.5f, 0.5f, -0.5f), vec4<f32>(0.5f));
      r3 = textureSampleLevel(t0, s0, r2.xyxx.xy, 0.0f);
      r1.z = bitcast<f32>(select(0u, 4294967295u, (r3.x >= r0.z)));
      r1.z = bitcast<f32>((bitcast<u32>(r1.z) & 1065353216u));
      r1.z = (r1.z + r1.x);
      r2 = textureSampleLevel(t0, s0, r2.zwzz.xy, 0.0f);
      r1.w = bitcast<f32>(select(0u, 4294967295u, (r2.x >= r0.z)));
      r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
      r1.x = (r1.w + r1.z);
      r1.y = bitcast<f32>((bitcast<i32>(r1.y) + 1i));
    }
  } else {
    r1.x = 0.0f;
  }
  r0.z = (r1.x * 0.04166666790843009949f);
  let v_12 = -(cb5_5.tint_symbol_3[1u].xxxx);
  r0.w = (v_12.w + 1.00010001659393310547f);
  r0.w = (1.0f / r0.w);
  let v_13 = clamp(((abs(r0.xyxx) + v_12)).xy, vec2<f32>(), vec2<f32>(1.0f));
  r0 = vec4<f32>(v_13.xy, r0.zw);
  r0.x = max(r0.y, r0.x);
  r0.x = fma((-(r0.xxxx)).x, r0.w, 1.0f);
  let v_14 = (r0.xz * r0.xz);
  let v_15 = r0;
  r0 = vec4<f32>(v_14.x, v_15.y, v_14.y, v_15.w);
  r0.x = (r0.x * r0.z);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
  let v_16 = select(v3, v0, (bitcast<vec3<u32>>(r0.yyy) != vec3<u32>()));
  r0 = vec4<f32>(r0.x, v_16.xyz);
  r1 = (r0.zzzz * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.yyyy, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.wwww, cb1_1.tint_symbol[10u], r1);
  o0 = (r1 + cb1_1.tint_symbol[11u]);
  let v_17 = (r0.xxx * v1.xyz);
  r0 = vec4<f32>(v_17.xyz, r0.w);
  let v_18 = (r0.xyz * v2.yyy);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = (v0 + (-(cb1_1.tint_symbol[15u].xyzx)).xyz);
  r1 = vec4<f32>(v_19.xyz, r1.w);
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  let v_20 = -(cb3_3.tint_symbol_2[50u].xxxx);
  r1.x = (r0.w + v_20.x);
  r1.x = max(r1.x, 0.0f);
  r0.w = (r1.x / r0.w);
  r0.w = (r0.w * r1.z);
  r1.y = (r0.w * cb3_3.tint_symbol_2[52u].z);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r0.wwww).w)));
  r1.z = (r1.y * -1.44269502162933349609f);
  r1.z = exp2(r1.z);
  r1.z = ((-(r1.zzzz)).z + 1.0f);
  r1.y = (r1.z / r1.y);
  let v_21 = bitcast<u32>(r0.w);
  r0.w = select(1.0f, r1.y, (v_21 != 0u));
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
  let v_22 = -(cb3_3.tint_symbol_2[52u].xxxx);
  r1.x = (r1.x + v_22.x);
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
