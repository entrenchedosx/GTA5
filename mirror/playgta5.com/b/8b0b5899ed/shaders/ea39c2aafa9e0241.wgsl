diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb85_struct {
  tint_symbol_1 : array<vec4<f32>, 85u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb85_struct;

@group(1u) @binding(16u) var s0 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(28u) var s12 : sampler;

@group(1u) @binding(32u) var t0 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_2d<f32>;

struct tint_symbol_3 {
  tint_symbol_2 : array<u32>,
}

@group(1u) @binding(161u) var<storage, read_write> u1 : tint_symbol_3;

struct tint_symbol_5_atomic {
  tint_symbol_4 : array<atomic<u32>, 1u>,
}

@group(1u) @binding(177u) var<storage, read_write> u1_1 : tint_symbol_5_atomic;

struct tint_symbol_7 {
  tint_symbol_6 : array<u32>,
}

@group(1u) @binding(162u) var<storage, read_write> u2 : tint_symbol_7;

struct tint_symbol_9_atomic {
  tint_symbol_8 : array<atomic<u32>>,
}

@group(1u) @binding(163u) var<storage, read_write> u3 : tint_symbol_9_atomic;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = textureSample(t12, s12, v1.xyxx.xy).xyz;
  r0 = vec4<f32>(v_2.xyz, r0.w);
  let v_3 = textureSample(t4, s4, v1.xyxx.xy).yx;
  let v_4 = r1;
  r1 = vec4<f32>(v_3.x, v_4.y, v_3.y, v_4.w);
  let v_5 = textureSample(t0, s0, v1.xyxx.xy).xy;
  r2 = vec4<f32>(v_5.xy, r2.zw);
  let v_6 = (cb2_2.tint_symbol[18u].xy * vec2<f32>(0.5f));
  r2 = vec4<f32>(r2.xy, v_6.xy);
  r3 = (vec4<f32>(-1.0f, -1.0f, -1.0f, 1.0f) / r2.zwzw);
  r3 = (r3 + v1.xyxy);
  let v_7 = textureSample(t4, s4, r3.xyxx.xy).xy;
  r4 = vec4<f32>(v_7.xy, r4.zw);
  let v_8 = textureSample(t12, s12, r3.xyxx.xy).xyz;
  r5 = vec4<f32>(v_8.xyz, r5.w);
  let v_9 = abs(r1.xxxx);
  r3.x = min(v_9.x, abs(r4.yyyy).x);
  r3.y = ((-(r1.zzzz)).y + r4.x);
  r3.y = bitcast<f32>(select(0u, 4294967295u, (abs(r3.yyyy).y < 0.10000000149011611938f)));
  let v_10 = min(r0.xyz, r5.xyz);
  r4 = vec4<f32>(v_10.xyz, r4.w);
  let v_11 = bitcast<vec3<u32>>(r3.yyy);
  let v_12 = r4.xyz;
  let v_13 = select(r0.xyz, v_12, (v_11 != vec3<u32>()));
  r4 = vec4<f32>(v_13.xyz, r4.w);
  let v_14 = textureSample(t4, s4, r3.zwzz.xy).xy;
  r5 = vec4<f32>(v_14.xy, r5.zw);
  let v_15 = textureSample(t12, s12, r3.zwzz.xy).xyz;
  r3 = vec4<f32>(r3.x, v_15.xyz);
  let v_16 = abs(r5.yyyy);
  r3.x = min(r3.x, v_16.x);
  r4.w = ((-(r1.zzzz)).w + r5.x);
  r4.w = bitcast<f32>(select(0u, 4294967295u, (abs(r4.wwww).w < 0.10000000149011611938f)));
  let v_17 = min(r4.xyz, r3.yzw);
  r3 = vec4<f32>(r3.x, v_17.xyz);
  let v_18 = bitcast<vec3<u32>>(r4.www);
  let v_19 = r3.yzw;
  let v_20 = select(r4.xyz, v_19, (v_18 != vec3<u32>()));
  r3 = vec4<f32>(r3.x, v_20.xyz);
  let v_21 = (vec2<f32>(1.0f, -1.0f) / r2.zw);
  r4 = vec4<f32>(v_21.xy, r4.zw);
  let v_22 = (r4.xy + v1.xy);
  r4 = vec4<f32>(v_22.xy, r4.zw);
  let v_23 = textureSample(t4, s4, r4.xyxx.xy).xy;
  r4 = vec4<f32>(r4.xy, v_23.xy);
  let v_24 = textureSample(t12, s12, r4.xyxx.xy).xyz;
  r5 = vec4<f32>(v_24.xyz, r5.w);
  let v_25 = abs(r4.wwww);
  r3.x = min(r3.x, v_25.x);
  r4.x = ((-(r1.zzzz)).x + r4.z);
  r4.x = bitcast<f32>(select(0u, 4294967295u, (abs(r4.xxxx).x < 0.10000000149011611938f)));
  let v_26 = min(r3.yzw, r5.xyz);
  r4 = vec4<f32>(r4.x, v_26.xyz);
  let v_27 = bitcast<vec3<u32>>(r4.xxx);
  let v_28 = r4.yzw;
  let v_29 = select(r3.yzw, v_28, (v_27 != vec3<u32>()));
  r3 = vec4<f32>(r3.x, v_29.xyz);
  let v_30 = (vec2<f32>(1.0f) / r2.zw);
  r2 = vec4<f32>(r2.xy, v_30.xy);
  let v_31 = (r2.zw + v1.xy);
  r2 = vec4<f32>(r2.xy, v_31.xy);
  let v_32 = textureSample(t4, s4, r2.zwzz.xy).xy;
  r4 = vec4<f32>(v_32.xy, r4.zw);
  let v_33 = textureSample(t12, s12, r2.zwzz.xy).xyz;
  r5 = vec4<f32>(v_33.xyz, r5.w);
  let v_34 = abs(r4.yyyy);
  r1.w = min(r3.x, v_34.w);
  r2.z = ((-(r1.zzzz)).z + r4.x);
  r2.z = bitcast<f32>(select(0u, 4294967295u, (abs(r2.zzzz).z < 0.10000000149011611938f)));
  let v_35 = min(r3.yzw, r5.xyz);
  r4 = vec4<f32>(v_35.xyz, r4.w);
  let v_36 = bitcast<vec3<u32>>(r2.zzz);
  let v_37 = r4.xyz;
  let v_38 = select(r3.yzw, v_37, (v_36 != vec3<u32>()));
  r3 = vec4<f32>(v_38.xyz, r3.w);
  let v_39 = (r2.xxx * r3.xyz);
  r2 = vec4<f32>(v_39.x, r2.y, v_39.yz);
  let v_40 = (r2.xzw * cb5_5.tint_symbol_1[8u].www);
  r2 = vec4<f32>(v_40.x, r2.y, v_40.yz);
  r2.x = dot(r2.xzw, vec3<f32>(0.3333333134651184082f));
  r2.x = max(r2.x, 0.00000000099999997172f);
  r2.y = max(r2.y, cb5_5.tint_symbol_1[80u].y);
  r2.y = min(r2.y, cb5_5.tint_symbol_1[80u].x);
  let v_41 = abs(cb5_5.tint_symbol_1[80u].yyyy);
  r2.y = (r2.y + v_41.y);
  r2.z = ((-(cb5_5.tint_symbol_1[80u].yyyy)).z + cb5_5.tint_symbol_1[80u].x);
  r2.y = (r2.y / r2.z);
  r2.z = ((-(cb5_5.tint_symbol_1[81u].xxxx)).z + cb5_5.tint_symbol_1[81u].y);
  r2.z = fma(r2.y, r2.z, cb5_5.tint_symbol_1[81u].x);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r2.z < r2.x)));
  r3.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[81u].z < r1.w)));
  r2.w = bitcast<f32>((bitcast<u32>(r2.w) & bitcast<u32>(r3.x)));
  if ((bitcast<u32>(r2.w) != 0u)) {
    r2.w = ((-(cb5_5.tint_symbol_1[80u].wwww)).w + cb5_5.tint_symbol_1[80u].z);
    r2.y = fma(r2.y, r2.w, cb5_5.tint_symbol_1[80u].w);
    r2.x = ((-(r2.zzzz)).x + r2.x);
    r2.y = ((-(r2.zzzz)).y + r2.y);
    r2.x = clamp(((r2.xxxx / r2.yyyy)).x, 0.0f, 1.0f);
    r0.w = (r2.x * cb5_5.tint_symbol_1[84u].x);
    r2.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_1[84u].y < r0.w)));
    if ((bitcast<u32>(r2.x) != 0u)) {
      r2.x = bitcast<f32>(atomicAdd(&(u1_1.tint_symbol_4[0u]), 1u));
      let v_42 = (v0.xy * vec2<f32>(2.0f));
      r1 = vec4<f32>(v_42.xy, r1.zw);
      let v_43 = (bitcast<u32>((bitcast<i32>(r2.x) * 8i)) + 0u);
      let v_44 = bitcast<vec4<u32>>(r1);
      u1.tint_symbol_2[v_43] = v_44.x;
      u1.tint_symbol_2[(v_43 + 1u)] = v_44.y;
      u1.tint_symbol_2[(v_43 + 2u)] = v_44.z;
      u1.tint_symbol_2[(v_43 + 3u)] = v_44.w;
      let v_45 = (bitcast<u32>((bitcast<i32>(r2.x) * 8i)) + 4u);
      let v_46 = bitcast<vec4<u32>>(r0);
      u1.tint_symbol_2[v_45] = v_46.x;
      u1.tint_symbol_2[(v_45 + 1u)] = v_46.y;
      u1.tint_symbol_2[(v_45 + 2u)] = v_46.z;
      u1.tint_symbol_2[(v_45 + 3u)] = v_46.w;
      _ = atomicAdd(&(u3.tint_symbol_8[0u]), 1u);
      r2.y = r1.z;
      let v_47 = (bitcast<u32>((bitcast<i32>(r2.x) * 2i)) + 0u);
      let v_48 = bitcast<vec2<u32>>(r2.xy);
      u2.tint_symbol_6[v_47] = v_48.x;
      u2.tint_symbol_6[(v_47 + 1u)] = v_48.y;
    }
  }
  o0 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

@fragment
fn main(@builtin(position) v_49 : vec4<f32>, @location(1u) v1 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_49, v1);
  return o0;
}
