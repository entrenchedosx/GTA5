diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb2_struct {
  tint_symbol : array<vec4<f32>, 2u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb2_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 12u> = array<vec4<f32>, 12u>(vec4<f32>(0.77296757698059082031f, -0.2221564948558807373f, 0.52824062108993530273f, -0.80284750461578369141f), vec4<f32>(0.26296308636665344238f, -0.07523454725742340088f, 0.82370549440383911133f, -0.55618768930435180664f), vec4<f32>(0.56968319416046142578f, 0.12108600139617919922f, 0.39888420701026916504f, -0.41141709685325622559f), vec4<f32>(0.44001591205596923828f, 0.48799020051956176758f, -0.03464015945792198181f, 0.17634199559688568115f), vec4<f32>(-0.12032330036163330078f, -0.5860487818717956543f, 0.20046560466289520264f, -0.68741881847381591797f), vec4<f32>(-0.25861400365829467773f, -0.16308039426803588867f, -0.68832087516784667969f, -0.6355559229850769043f), vec4<f32>(-0.34508609771728515625f, -0.84809571504592895508f, -0.36281260848045349121f, 0.61441987752914428711f), vec4<f32>(0.06174967065453529358f, 0.50691992044448852539f, 0.97731637954711914062f, 0.20866240561008453369f), vec4<f32>(0.78943288326263427734f, 0.49026459455490112305f, -0.70231288671493530273f, -0.07146061956882476807f), vec4<f32>(-0.49534139037132263184f, 0.23382100462913513184f, 0.1793105006217956543f, 0.96258467435836791992f), vec4<f32>(-0.93097507953643798828f, -0.32739698886871337891f, -0.91298490762710571289f, 0.24169740080833435059f), vec4<f32>(-0.21726569533348083496f, 0.97270828485488891602f, -0.69711947441101074219f, 0.52966928482055664062f));

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0.x = bitcast<f32>(select(0u, 4294967295u, (v1.x >= 0.5f)));
  r0.x = select(0.25f, 0.75f, (bitcast<u32>(r0.x) != 0u));
  r0.y = 0.5f;
  let v = ((-(r0.xxxy)).zw + v1.xy);
  r0 = vec4<f32>(r0.xy, v.xy);
  let v_1 = (r0.zw * vec2<f32>(4.0f, 2.0f));
  r0 = vec4<f32>(r0.xy, v_1.xy);
  r1.x = dot(r0.zw, r0.zw);
  r1.x = sqrt(r1.x);
  r1.x = max(r1.x, 1.0f);
  let v_2 = (r0.zw / r1.xx);
  r0 = vec4<f32>(r0.xy, v_2.xy);
  let v_3 = fma(r0.zw, vec2<f32>(0.25f, 0.5f), r0.xy);
  r0 = vec4<f32>(r0.xy, v_3.xy);
  let v_4 = trunc(cb5_5.tint_symbol[1u].yx);
  r1 = vec4<f32>(v_4.xy, r1.zw);
  r1.y = (r1.y + -1.0f);
  let v_5 = (cb5_5.tint_symbol[1u].ww * vec2<f32>(0.5f, 1.0f));
  r1 = vec4<f32>(r1.xy, v_5.xy);
  r2 = vec4<f32>();
  loop {
    r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) >= 12i)));
    if ((bitcast<u32>(r3.x) != 0u)) {
      break;
    }
    let v_6 = (r1.zw * icb0[bitcast<i32>(r2.w)].zw);
    r3 = vec4<f32>(v_6.xy, r3.zw);
    let v_7 = (r1.xx * r3.xy);
    r3 = vec4<f32>(v_7.xy, r3.zw);
    let v_8 = fma(r3.xy, cb5_5.tint_symbol[1u].zz, r0.zw);
    r3 = vec4<f32>(v_8.xy, r3.zw);
    let v_9 = ((-(r0.xyxx)).xy + r3.xy);
    r3 = vec4<f32>(v_9.xy, r3.zw);
    let v_10 = (r3.xy * vec2<f32>(4.0f, 2.0f));
    r3 = vec4<f32>(v_10.xy, r3.zw);
    r3.z = dot(r3.xy, r3.xy);
    r3.w = bitcast<f32>(select(0u, 4294967295u, (1.0f < r3.z)));
    let v_11 = (r3.xy / r3.zz);
    r4 = vec4<f32>(v_11.xy, r4.zw);
    r4.z = ((-(r4.xxxx)).z + -2.0f);
    let v_12 = bitcast<vec2<u32>>(r3.ww);
    let v_13 = r4.zy;
    let v_14 = select(r3.xy, v_13, (v_12 != vec2<u32>()));
    r3 = vec4<f32>(v_14.xy, r3.zw);
    let v_15 = fma(r3.xy, vec2<f32>(0.25f, 0.5f), r0.xy);
    r3 = vec4<f32>(v_15.xy, r3.zw);
    let v_16 = fract(r3.xy);
    r3 = vec4<f32>(v_16.xy, r3.zw);
    let v_17 = r1.y;
    r3 = textureSampleLevel(t2, s2, r3.xyxx.xy, v_17);
    let v_18 = (r2.xyz + r3.xyz);
    r2 = vec4<f32>(v_18.xyz, r2.w);
    r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
  }
  let v_19 = (r2.xyz * vec3<f32>(0.08333333581686019897f));
  o0 = vec4<f32>(v_19.xyz, o0.w);
  o0.w = 1.0f;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
