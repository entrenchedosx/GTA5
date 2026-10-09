diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb21_struct {
  tint_symbol : array<vec4<f32>, 21u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb21_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v1 : vec4<f32>, v2 : vec4<f32>) {
  r0.x = dot(v2.xyz, v2.xyz);
  r0.x = inverseSqrt(r0.x);
  r0.y = fma((-(v2.xyz.zzzz)).y, r0.x, 1.0f);
  let v = (r0.xxx * v2.xyz);
  r0 = vec4<f32>(v.x, r0.y, v.yz);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.w < 1.0f)));
  r1.y = bitcast<f32>((bitcast<u32>(r1.x) & 1065353216u));
  r1.x = select(2.0f, 1.0f, (bitcast<u32>(r1.x) != 0u));
  r0.y = fma(r1.y, r0.y, -1.0f);
  r1.z = dot(r0.zw, vec2<f32>(0.5f, -0.86602538824081420898f));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.z)));
  r1.z = ((-(r0.yyyy)).z + r1.z);
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r2.x = (r1.y + r1.y);
  r2.y = fma((-(r1.yyyy)).y, 2.0f, 6.0f);
  r1.x = fma(r1.w, r1.x, r1.y);
  r1.y = fma(r1.w, r2.y, r2.x);
  r0.y = fma(r1.w, r1.z, r0.y);
  r1.z = ((-(r1.yyyy)).z + 8.0f);
  r1.w = dot(r0.xzw, vec3<f32>(0.43301269412040710449f, -0.25f, -0.86602538824081420898f));
  r2.x = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r2.x = bitcast<f32>((bitcast<u32>(r2.x) & 1065353216u));
  r1.y = fma(r2.x, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 10.0f);
  r0.y = fma(r2.x, r1.w, r0.y);
  r1.w = dot(r0.xzw, vec3<f32>(-0.43301269412040710449f, -0.25f, -0.86602538824081420898f));
  r2.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r2.y = bitcast<f32>((bitcast<u32>(r2.y) & 1065353216u));
  r1.y = fma(r2.y, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 11.0f);
  r0.y = fma(r2.y, r1.w, r0.y);
  r1.w = dot(r0.zw, vec2<f32>(0.93969261646270751953f, 0.34202015399932861328f));
  r2.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
  r1.y = fma(r2.z, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 7.0f);
  r0.y = fma(r2.z, r1.w, r0.y);
  r1.w = dot(r0.xzw, vec3<f32>(0.8137976527214050293f, 0.46984630823135375977f, -0.34202015399932861328f));
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
  r1.y = fma(r2.w, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 12.0f);
  r0.y = fma(r2.w, r1.w, r0.y);
  r1.w = dot(r0.xzw, vec3<f32>(0.8137976527214050293f, -0.46984630823135375977f, 0.34202015399932861328f));
  r3.x = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
  r1.y = fma(r3.x, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 9.0f);
  r0.y = fma(r3.x, r1.w, r0.y);
  r1.w = dot(r0.zw, vec2<f32>(-0.93969261646270751953f, -0.34202015399932861328f));
  r3.y = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r3.y = bitcast<f32>((bitcast<u32>(r3.y) & 1065353216u));
  r1.y = fma(r3.y, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 13.0f);
  r0.y = fma(r3.y, r1.w, r0.y);
  r1.w = dot(r0.xzw, vec3<f32>(-0.8137976527214050293f, -0.46984630823135375977f, 0.34202015399932861328f));
  r3.z = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r3.z = bitcast<f32>((bitcast<u32>(r3.z) & 1065353216u));
  r1.y = fma(r3.z, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 5.0f);
  r0.y = fma(r3.z, r1.w, r0.y);
  r1.w = dot(r0.xzw, vec3<f32>(-0.8137976527214050293f, 0.46984630823135375977f, -0.34202015399932861328f));
  r3.w = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r3.w = bitcast<f32>((bitcast<u32>(r3.w) & 1065353216u));
  r1.y = fma(r3.w, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 14.0f);
  r0.y = fma(r3.w, r1.w, r0.y);
  r1.w = dot(r0.xzw, vec3<f32>(-0.43301269412040710449f, 0.25f, 0.86602538824081420898f));
  r4.x = bitcast<f32>(select(0u, 4294967295u, (r0.y < r1.w)));
  r1.w = ((-(r0.yyyy)).w + r1.w);
  r4.x = bitcast<f32>((bitcast<u32>(r4.x) & 1065353216u));
  r1.y = fma(r4.x, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 14.0f);
  r0.y = fma(r4.x, r1.w, r0.y);
  r0.x = dot(r0.xzw, vec3<f32>(0.43301269412040710449f, 0.25f, 0.86602538824081420898f));
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r0.y < r0.x)));
  r0.x = ((-(r0.yyyy)).x + r0.x);
  r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1065353216u));
  r1.y = fma(r1.w, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 14.0f);
  r0.x = fma(r1.w, r0.x, r0.y);
  r0.y = dot(r0.zw, vec2<f32>(-0.5f, -0.86602538824081420898f));
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.y)));
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r1.y = fma(r0.z, r1.z, r1.y);
  r1.z = ((-(r1.yyyy)).z + 13.0f);
  r0.x = fma(r0.z, r0.y, r0.x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (r0.x < r0.w)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & 1065353216u));
  r0.y = fma(r0.x, r1.z, r1.y);
  r0.w = ((-(r1.xxxx)).w + 3.0f);
  r0.w = fma(r2.x, r0.w, r1.x);
  r1.x = ((-(r0.wwww)).x + 4.0f);
  r0.w = fma(r2.y, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 5.0f);
  r0.w = fma(r2.z, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 6.0f);
  r0.w = fma(r2.w, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 7.0f);
  r0.w = fma(r3.x, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 8.0f);
  r0.w = fma(r3.y, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 9.0f);
  r0.w = fma(r3.z, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 10.0f);
  r0.w = fma(r3.w, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 11.0f);
  r0.w = fma(r4.x, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 12.0f);
  r0.w = fma(r1.w, r1.x, r0.w);
  r1.x = ((-(r0.wwww)).x + 13.0f);
  r0.z = fma(r0.z, r1.x, r0.w);
  r0.w = ((-(r0.zzzz)).w + 14.0f);
  r0.x = fma(r0.x, r0.w, r0.z);
  r0.y = ((-(r0.xxxx)).y + r0.y);
  r1 = textureSample(t0, s0, v1.xyz.xyxx.xy);
  r0.z = bitcast<f32>(select(0u, 4294967295u, (r1.w < 0.5f)));
  r0.z = bitcast<f32>((bitcast<u32>(r0.z) & 1065353216u));
  r0.x = fma(r0.z, r0.y, r0.x);
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb2_2.tint_symbol[20u].xxxx == vec4<f32>(0.0f, 1.0f, 2.0f, 3.0f))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(1065353216u)));
  r1 = (r0.xxxx * r1);
  let v_1 = fma(r1.yw, vec2<f32>(16.0f), r1.xz);
  let v_2 = r0;
  r0 = vec4<f32>(v_2.x, v_1.xy, v_2.w);
  let v_3 = (r0.yz * vec2<f32>(0.0039215688593685627f));
  o0 = vec4<f32>(v_3.xy, o0.zw);
  r1 = bitcast<vec4<f32>>(select(vec4<u32>(), vec4<u32>(4294967295u), (cb2_2.tint_symbol[20u].xxxx == vec4<f32>(4.0f, 5.0f, 6.0f, 7.0f))));
  r1 = bitcast<vec4<f32>>((bitcast<vec4<u32>>(r1) & vec4<u32>(1065353216u)));
  r0 = (r0.xxxx * r1);
  let v_4 = fma(r0.yw, vec2<f32>(16.0f), r0.xz);
  r0 = vec4<f32>(v_4.xy, r0.zw);
  let v_5 = (r0.xy * vec2<f32>(0.0039215688593685627f));
  o0 = vec4<f32>(o0.xy, v_5.xy);
}

@fragment
fn main(@location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v1, v2);
  return o0;
}
