diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

struct cb30_struct {
  tint_symbol : array<vec4<f32>, 30u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb30_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>) {
  r0 = vec4<f32>(((v1.xy + vec2<f32>(-0.5f))).xy, r0.zw);
  let v = fma(r0.xy, cb12_12.tint_symbol[28u].xx, vec2<f32>(0.5f));
  r0 = vec4<f32>(v.xy, r0.zw);
  let v_1 = fma(r0.xy, vec2<f32>(0.0078125f), cb12_12.tint_symbol[29u].xy);
  r0 = vec4<f32>(v_1.xy, r0.zw);
  let v_2 = r0;
  r0 = vec4<f32>(r0.xy, v_2.xy);
  r1 = vec4<f32>(vec3<f32>(0.0f, 1.0f, 0.0f), r1.w);
  loop {
    r1.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.z) >= 3i)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      break;
    }
    r2 = textureSample(t2, s2, r0.zwzz.xy);
    let v_3 = (r2.xyz + vec3<f32>(-0.5f));
    r2 = vec4<f32>(v_3.xyz, r2.w);
    let v_4 = (r2.xyz + r2.xyz);
    r2 = vec4<f32>(v_4.xyz, r2.w);
    r1.w = dot(r2.xyz, icb0[bitcast<i32>(r1.z)].xyz);
    r1.x = fma(r1.w, r1.y, r1.x);
    let v_5 = (r0.zw * cb12_12.tint_symbol[27u].ww);
    r0 = vec4<f32>(r0.xy, v_5.xy);
    r1.y = (r1.y * 0.5f);
    r1.z = bitcast<f32>((bitcast<i32>(r1.z) + 1i));
  }
  r0.x = fma(r1.x, 0.28571429848670959473f, 0.5f);
  r0.y = ((-(cb12_12.tint_symbol[28u].zzzz)).y + cb12_12.tint_symbol[28u].y);
  r0.z = (cb12_12.tint_symbol[28u].z + cb12_12.tint_symbol[28u].y);
  r0.w = ((-(r0.yyyy)).w + r0.z);
  r1.x = ((-(r0.yyyy)).x + r0.x);
  r0.w = (1.0f / r0.w);
  r0.w = clamp(((r0.wwww * r1.xxxx)).w, 0.0f, 1.0f);
  r1.x = fma(r0.w, -2.0f, 3.0f);
  r0.w = (r0.w * r0.w);
  o0.x = (r0.w * r1.x);
  let v_6 = (r0.yz + cb12_12.tint_symbol[28u].ww);
  let v_7 = r0;
  r0 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r0.z = ((-(r0.yyyy)).z + r0.z);
  r0.y = ((-(r0.yyyy)).y + r0.x);
  r0.z = (1.0f / r0.z);
  r0.y = clamp(((r0.zzzz * r0.yyyy)).y, 0.0f, 1.0f);
  r0.z = fma(r0.y, -2.0f, 3.0f);
  r0.y = (r0.y * r0.y);
  o0.y = (r0.y * r0.z);
  o0.w = 0.0f;
  o0.z = r0.x;
}

@fragment
fn main(@location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1);
  return o0;
}
