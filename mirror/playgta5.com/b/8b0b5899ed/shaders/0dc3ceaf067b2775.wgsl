diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

struct cb4_struct {
  tint_symbol : array<vec4<f32>, 4u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb4_struct;

@group(0u) @binding(20u) var s4 : sampler;

struct tint_symbol_2 {
  tint_symbol_1 : array<u32>,
}

@group(0u) @binding(32u) var<storage, read> t0 : tint_symbol_2;

@group(0u) @binding(36u) var t4 : texture_2d<f32>;

@group(0u) @binding(161u) var u1 : texture_storage_2d<rg32float, write>;

var<workgroup> g0 : array<u32, 256u>;

@compute @workgroup_size(1u, 256u, 1u)
fn main(@builtin(workgroup_id) vThreadGroupID : vec3<u32>, @builtin(local_invocation_id) vThreadIDInGroup : vec3<u32>) {
  let v = vec3<i32>(vThreadIDInGroup);
  let v_1 = vec3<i32>(vThreadGroupID);
  r0.x = bitcast<f32>((v.y + -5i));
  let v_2 = bitcast<vec3<f32>>(((v_1.yyy * vec3<i32>(246i)) + bitcast<vec3<i32>>(r0.xxx)));
  r1 = vec4<f32>(r1.x, v_2.xyz);
  let v_3 = cb12_12.tint_symbol[3u].y;
  let v_4 = max(v_3, -2147483648.0f);
  r0.y = bitcast<f32>(select(select(i32(v_4), 2147483647i, (v_4 >= 2147483648.0f)), 0i, !((v_3 == v_3))));
  r2.x = f32(v_1.x);
  r2.y = f32(bitcast<i32>(r1.w));
  let v_5 = (r2.xy + vec2<f32>(0.5f));
  r0 = vec4<f32>(r0.xy, v_5.xy);
  let v_6 = (r0.zw * cb12_12.tint_symbol[3u].zw);
  r0 = vec4<f32>(r0.xy, v_6.xy);
  let v_7 = textureSampleLevel(t4, s4, r0.zwzz.xy, 0.0f).xy;
  r0 = vec4<f32>(r0.xy, v_7.xy);
  let v_8 = (bitcast<u32>((v.y * 1i)) + 0u);
  g0[v_8] = bitcast<u32>(r0.w);
  workgroupBarrier();
  r2.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) >= 0i)));
  r2.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.x) < 246i)));
  r2.x = bitcast<f32>((bitcast<u32>(r2.y) & bitcast<u32>(r2.x)));
  r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r1.w) < bitcast<i32>(r0.y))));
  r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r2.x)));
  if ((bitcast<u32>(r0.y) != 0u)) {
    let v_9 = t0.tint_symbol_1[4u];
    r0.y = bitcast<f32>(vec4<u32>(v_9, v_9, v_9, v_9).x);
    let v_10 = r0.y;
    let v_11 = max(v_10, -2147483648.0f);
    r0.y = bitcast<f32>(select(select(i32(v_11), 2147483647i, (v_11 >= 2147483648.0f)), 0i, !((v_10 == v_10))));
    let v_12 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)];
    r2.x = bitcast<f32>(vec4<u32>(v_12, v_12, v_12, v_12).x);
    r3 = bitcast<vec4<f32>>((v.yyyy + vec4<i32>(1i, -1i, 2i, -2i)));
    r4 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.yyyy) + vec4<i32>(1i, 2i, 3i, 4i)));
    let v_13 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r4.x) * 1i)) + 0u)];
    r2.y = bitcast<f32>(vec4<u32>(v_13, v_13, v_13, v_13).x);
    r2.z = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r3.x) * 1i)) + 0u)]);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.z)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
    r3.x = clamp(((-(r0.wwww) + r2.zzzz)).x, 0.0f, 1.0f);
    r2.w = (r2.w * r3.x);
    r3.x = (r2.y * r2.w);
    r2.z = (r2.z * r3.x);
    r2.z = fma(r0.w, r2.x, r2.z);
    r2.x = fma(r2.w, r2.y, r2.x);
    r2.w = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r3.y) * 1i)) + 0u)]);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
    r3.y = clamp(((-(r0.wwww) + r2.wwww)).y, 0.0f, 1.0f);
    r3.x = (r3.y * r3.x);
    r3.y = (r2.y * r3.x);
    r2.z = fma(r2.w, r3.y, r2.z);
    r2.x = fma(r3.x, r2.y, r2.x);
    let v_14 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r4.y) * 1i)) + 0u)];
    r2.y = bitcast<f32>(vec4<u32>(v_14, v_14, v_14, v_14).x);
    r2.w = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r3.z) * 1i)) + 0u)]);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
    r3.y = clamp(((-(r0.wwww) + r2.wwww)).y, 0.0f, 1.0f);
    r3.x = (r3.y * r3.x);
    r3.y = (r2.y * r3.x);
    r2.z = fma(r2.w, r3.y, r2.z);
    r2.x = fma(r3.x, r2.y, r2.x);
    r2.w = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r3.w) * 1i)) + 0u)]);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
    r3.y = clamp(((-(r0.wwww) + r2.wwww)).y, 0.0f, 1.0f);
    r3.x = (r3.y * r3.x);
    r3.y = (r2.y * r3.x);
    r2.z = fma(r2.w, r3.y, r2.z);
    r2.x = fma(r3.x, r2.y, r2.x);
    r3 = bitcast<vec4<f32>>((v.yyyy + vec4<i32>(3i, -3i, 4i, -4i)));
    let v_15 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r4.z) * 1i)) + 0u)];
    r2.y = bitcast<f32>(vec4<u32>(v_15, v_15, v_15, v_15).x);
    r2.w = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r3.x) * 1i)) + 0u)]);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
    r4.x = clamp(((-(r0.wwww) + r2.wwww)).x, 0.0f, 1.0f);
    r3.x = (r3.x * r4.x);
    r4.x = (r2.y * r3.x);
    r2.z = fma(r2.w, r4.x, r2.z);
    r2.x = fma(r3.x, r2.y, r2.x);
    r2.w = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r3.y) * 1i)) + 0u)]);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
    r3.y = clamp(((-(r0.wwww) + r2.wwww)).y, 0.0f, 1.0f);
    r3.x = (r3.y * r3.x);
    r3.y = (r2.y * r3.x);
    r2.z = fma(r2.w, r3.y, r2.z);
    r2.x = fma(r3.x, r2.y, r2.x);
    let v_16 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r4.w) * 1i)) + 0u)];
    r2.y = bitcast<f32>(vec4<u32>(v_16, v_16, v_16, v_16).x);
    r2.w = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r3.z) * 1i)) + 0u)]);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
    r3.y = clamp(((-(r0.wwww) + r2.wwww)).y, 0.0f, 1.0f);
    r3.x = (r3.y * r3.x);
    r3.y = (r2.y * r3.x);
    r2.z = fma(r2.w, r3.y, r2.z);
    r2.x = fma(r3.x, r2.y, r2.x);
    r2.w = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r3.w) * 1i)) + 0u)]);
    r3.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.w)));
    r3.x = bitcast<f32>((bitcast<u32>(r3.x) & 1065353216u));
    r3.y = clamp(((-(r0.wwww) + r2.wwww)).y, 0.0f, 1.0f);
    r3.x = (r3.y * r3.x);
    r3.y = (r2.y * r3.x);
    r2.z = fma(r2.w, r3.y, r2.z);
    r2.x = fma(r3.x, r2.y, r2.x);
    r2.y = bitcast<f32>((v.y + 5i));
    r0.y = bitcast<f32>((bitcast<i32>(r0.y) + 5i));
    let v_17 = t0.tint_symbol_1[(bitcast<u32>((bitcast<i32>(r0.y) * 1i)) + 0u)];
    r0.y = bitcast<f32>(vec4<u32>(v_17, v_17, v_17, v_17).x);
    r2.y = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r2.y) * 1i)) + 0u)]);
    r2.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r2.y)));
    r2.w = bitcast<f32>((bitcast<u32>(r2.w) & 1065353216u));
    r3.x = clamp(((-(r0.wwww) + r2.yyyy)).x, 0.0f, 1.0f);
    r2.w = (r2.w * r3.x);
    r3.x = (r0.y * r2.w);
    r2.y = fma(r2.y, r3.x, r2.z);
    r2.x = fma(r2.w, r0.y, r2.x);
    r0.x = bitcast<f32>(g0[(bitcast<u32>((bitcast<i32>(r0.x) * 1i)) + 0u)]);
    r2.z = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.x)));
    r2.z = bitcast<f32>((bitcast<u32>(r2.z) & 1065353216u));
    r0.w = clamp(((-(r0.wwww) + r0.xxxx)).w, 0.0f, 1.0f);
    r0.w = (r0.w * r2.z);
    r2.z = (r0.y * r0.w);
    r0.x = fma(r0.x, r2.z, r2.y);
    r0.y = fma(r0.w, r0.y, r2.x);
    r2.y = (r0.x / r0.y);
    r1.x = bitcast<f32>(v_1.x);
    let v_18 = r0;
    r2 = vec4<f32>(v_18.z, r2.y, v_18.zz);
    textureStore(u1, bitcast<vec2<i32>>(r1.xy), r2);
  }
}
