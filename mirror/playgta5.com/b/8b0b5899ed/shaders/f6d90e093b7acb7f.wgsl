diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(0u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb53_struct {
  tint_symbol_1 : array<vec4<f32>, 53u>,
}

@group(0u) @binding(3u) var<uniform> cb3_3 : cb53_struct;

struct cb16_struct_1 {
  tint_symbol_2 : array<vec4<f32>, 16u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb16_struct_1;

var<private> o0 : vec4<f32>;

var<private> o1 : vec4<f32>;

var<private> o2 : vec4<f32>;

var<private> o3 : vec4<f32>;

var<private> o4 : vec4<f32>;

fn main_inner(v0 : vec4<f32>) {
  let v = (cb12_12.tint_symbol_2[1u].yzx * cb12_12.tint_symbol_2[2u].zxy);
  r0 = vec4<f32>(v.xyz, r0.w);
  let v_1 = -(r0.xyzx);
  let v_2 = fma(cb12_12.tint_symbol_2[2u].yzx, cb12_12.tint_symbol_2[1u].zxy, v_1.xyz);
  r0 = vec4<f32>(v_2.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.99989998340606689453f >= abs(v0.zzzz).w)));
  r1.x = dot(v0.xy, v0.xy);
  r1.x = inverseSqrt(r1.x);
  let v_3 = (r1.xx * v0.xy);
  r1 = vec4<f32>(v_3.xy, r1.zw);
  let v_4 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.ww) & bitcast<vec2<u32>>(r1.xy)));
  r1 = vec4<f32>(v_4.xy, r1.zw);
  let v_5 = (r0.xyz * r1.yyy);
  r0 = vec4<f32>(v_5.xyz, r0.w);
  let v_6 = fma(cb12_12.tint_symbol_2[2u].xyz, r1.xxx, r0.xyz);
  r0 = vec4<f32>(v_6.xyz, r0.w);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f >= v0.z)));
  r1.x = (v0.z + 1.0f);
  r1.x = (r1.x * r1.x);
  r1.y = ((-(cb12_12.tint_symbol_2[5u].xxxx)).y + 1.0f);
  r1.x = fma((-(r1.xxxx)).x, r1.y, 1.0f);
  r1.y = fma((-(r1.xxxx)).y, r1.x, 1.0f);
  r1.y = min(abs(r1.yyyy).y, 1.0f);
  r1.y = sqrt(r1.y);
  let v_7 = (r1.xxx * cb12_12.tint_symbol_2[1u].xyz);
  r1 = vec4<f32>(v_7.x, r1.y, v_7.yz);
  let v_8 = (r0.xyz * r1.yyy);
  r2 = vec4<f32>(v_8.xyz, r2.w);
  r1.y = ((-(v0.zzzz)).y + 1.0f);
  let v_9 = (r1.yy * cb12_12.tint_symbol_2[5u].xy);
  r3 = vec4<f32>(v_9.xy, r3.zw);
  let v_10 = (r3.xxx * cb12_12.tint_symbol_2[1u].xyz);
  r3 = vec4<f32>(v_10.x, r3.y, v_10.yz);
  let v_11 = (r0.xyz * r3.yyy);
  r0 = vec4<f32>(v_11.xyz, r0.w);
  let v_12 = bitcast<vec3<u32>>(r0.www);
  let v_13 = r2.xyz;
  let v_14 = select(r0.xyz, v_13, (v_12 != vec3<u32>()));
  r0 = vec4<f32>(v_14.xyz, r0.w);
  let v_15 = bitcast<vec3<u32>>(r0.www);
  let v_16 = r1.xzw;
  let v_17 = select(r3.xzw, v_16, (v_15 != vec3<u32>()));
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r0.xyz + r1.xyz);
  r0 = vec4<f32>(v_18.xyz, r0.w);
  let v_19 = fma(r0.xyz, cb12_12.tint_symbol_2[4u].yyy, cb12_12.tint_symbol_2[0u].xyz);
  r0 = vec4<f32>(v_19.xyz, r0.w);
  let v_20 = -(cb1_1.tint_symbol[15u].xyzx);
  let v_21 = (r0.xyz + v_20.xyz);
  r1 = vec4<f32>(v_21.xyz, r1.w);
  r2.y = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r2.y);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_22 = -(cb12_12.tint_symbol_2[0u].xyzx);
    let v_23 = (cb1_1.tint_symbol[15u].xyz + v_22.xyz);
    r3 = vec4<f32>(v_23.xyz, r3.w);
    r1.w = (cb12_12.tint_symbol_2[5u].x * cb12_12.tint_symbol_2[5u].x);
    r2.z = dot(r3.xyz, r1.xyz);
    r2.w = dot(r3.xyz, r3.xyz);
    r3.w = dot(r3.xyz, cb12_12.tint_symbol_2[1u].xyz);
    r4.x = dot(r1.xyz, cb12_12.tint_symbol_2[1u].xyz);
    r4.y = (r4.x * r4.x);
    r4.z = fma((-(r1.wwww)).z, r2.y, r4.y);
    r4.w = (r1.w * r2.z);
    let v_24 = -(r4.wwww);
    let v_25 = fma(r4.xx, r3.ww, v_24.xy);
    r5 = vec4<f32>(v_25.xy, r5.zw);
    r4.w = (r1.w * r2.w);
    let v_26 = -(r4.wwww);
    r3.w = fma(r3.w, r3.w, v_26.w);
    r3.w = (r3.w * r4.z);
    let v_27 = -(r3.wwww);
    r3.w = fma(r5.y, r5.y, v_27.w);
    r2.x = (-(r4.zzzz)).x;
    r6.x = sqrt(abs(r3.wwww).x);
    r3.w = (cb12_12.tint_symbol_2[4u].y * cb12_12.tint_symbol_2[4u].y);
    r2.w = fma((-(cb12_12.tint_symbol_2[4u].yyyy)).w, cb12_12.tint_symbol_2[4u].y, r2.w);
    r2.w = (r2.y * r2.w);
    let v_28 = -(r2.wwww);
    r2.w = fma(r2.z, r2.z, v_28.w);
    r2.w = sqrt(abs(r2.wwww).w);
    let v_29 = (-(r2.zzzz)).zw;
    r5 = vec4<f32>(r5.xy, v_29.xy);
    r6.y = (-(r6.xxxx)).y;
    let v_30 = (r2.ww * vec2<f32>(1.0f, -1.0f));
    r6 = vec4<f32>(r6.xy, v_30.xy);
    r5 = (r5 + r6);
    r5 = (r5 / r2.xxyy);
    r2.x = max(r5.w, r5.z);
    let v_31 = fma(r1.xyz, r5.xxx, cb1_1.tint_symbol[15u].xyz);
    r6 = vec4<f32>(v_31.xyz, r6.w);
    let v_32 = fma(r1.xyz, r5.yyy, cb1_1.tint_symbol[15u].xyz);
    r7 = vec4<f32>(v_32.xyz, r7.w);
    let v_33 = (r6.xyz + v_22.xyz);
    r6 = vec4<f32>(v_33.xyz, r6.w);
    r6.x = dot(r6.xyz, cb12_12.tint_symbol_2[1u].xyz);
    let v_34 = (r7.xyz + v_22.xyz);
    r7 = vec4<f32>(v_34.xyz, r7.w);
    r6.y = dot(r7.xyz, cb12_12.tint_symbol_2[1u].xyz);
    let v_35 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r6.xy >= vec2<f32>())));
    r4 = vec4<f32>(r4.xy, v_35.xy);
    let v_36 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r4.zw) & vec2<u32>(1065353216u)));
    r4 = vec4<f32>(r4.xy, v_36.xy);
    let v_37 = (r4.zw * r5.xy);
    r4 = vec4<f32>(r4.xy, v_37.xy);
    r2.w = max(r4.w, r4.z);
    r4.y = (r4.y / r2.y);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r4.y >= r1.w)));
    r4.x = bitcast<f32>(select(0u, 4294967295u, (0.0f < r4.x)));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r4.x)));
    r1.w = bitcast<f32>((bitcast<u32>(r1.w) & 1232348160u));
    r1.w = (r1.w + r2.w);
    r1.w = min(r2.x, r1.w);
    r4.y = max(r1.w, 1.00999999046325683594f);
    r1.w = min(r2.z, 0.0f);
    let v_38 = (r1.www * r1.xyz);
    r2 = vec4<f32>(v_38.x, r2.y, v_38.yz);
    let v_39 = (r2.xzw / r2.yyy);
    r2 = vec4<f32>(v_39.xyz, r2.w);
    let v_40 = ((-(r2.xyzx)).xyz + r3.xyz);
    r2 = vec4<f32>(v_40.xyz, r2.w);
    r1.w = dot(r2.xyz, r2.xyz);
    r1.w = (r1.w / r3.w);
    r1.w = ((-(r1.wwww)).w + 1.0f);
    r1.w = (r1.w * r1.w);
    r2.x = ((-(cb12_12.tint_symbol_2[15u].wwww)).x + 1.0f);
    r2.x = fma(r2.x, r1.w, cb12_12.tint_symbol_2[15u].w);
    r1.w = (r1.w / r2.x);
    let v_41 = -(cb12_12.tint_symbol_2[15u].xyzx);
    let v_42 = (cb12_12.tint_symbol_2[3u].xyz + v_41.xyz);
    r2 = vec4<f32>(v_42.xyz, r2.w);
    o4 = fma(r1.www, r2.xyz, cb12_12.tint_symbol_2[15u].xyz).xyzx;
    r4.x = 1.0f;
  } else {
    o4 = vec4<f32>();
    r4 = vec4<f32>(vec2<f32>(), r4.zw);
  }
  let v_43 = fma(r1.xyz, r4.xxx, cb1_1.tint_symbol[15u].xyz);
  r2 = vec4<f32>(v_43.xyz, r2.w);
  let v_44 = fma(r1.xyz, r4.yyy, cb1_1.tint_symbol[15u].xyz);
  r3 = vec4<f32>(v_44.xyz, r3.w);
  let v_45 = ((-(r2.xyzx)).xyz + r3.xyz);
  r3 = vec4<f32>(v_45.xyz, r3.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r2.w = bitcast<f32>(select(0u, 4294967295u, (r0.w == 0.0f)));
  let v_46 = (r1.xyz / r0.www);
  r1 = vec4<f32>(v_46.xyz, r1.w);
  let v_47 = bitcast<vec3<u32>>(r2.www);
  let v_48 = select(r1.xyz, vec3<f32>(), (v_47 != vec3<u32>()));
  r1 = vec4<f32>(v_48.xyz, r1.w);
  r0.w = (r1.w * 0.00499999988824129105f);
  let v_49 = fma(r1.xyz, r0.www, r2.xyz);
  r1 = vec4<f32>(v_49.xyz, r1.w);
  r0.w = (cb12_12.tint_symbol_2[3u].w * cb12_12.tint_symbol_2[14u].x);
  r1.w = max(r1.w, 1.0f);
  r0.w = (r0.w * r1.w);
  let v_50 = (r1.xyz + v_20.xyz);
  r1 = vec4<f32>(v_50.xyz, r1.w);
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  let v_51 = -(cb3_3.tint_symbol_1[50u].xxxx);
  r1.y = (r1.x + v_51.y);
  r1.y = max(r1.y, 0.0f);
  r1.x = (r1.y / r1.x);
  r1.x = (r1.x * r1.z);
  r1.z = (r1.x * cb3_3.tint_symbol_1[52u].z);
  r1.x = bitcast<f32>(select(0u, 4294967295u, (0.00999999977648258209f < abs(r1.xxxx).x)));
  r1.w = (r1.z * -1.44269502162933349609f);
  r1.w = exp2(r1.w);
  r1.w = ((-(r1.wwww)).w + 1.0f);
  r1.z = (r1.w / r1.z);
  let v_52 = bitcast<u32>(r1.x);
  r1.x = select(1.0f, r1.z, (v_52 != 0u));
  r1.z = (r1.y * cb3_3.tint_symbol_1[51u].w);
  r1.x = (r1.x * r1.z);
  r1.x = min(r1.x, 1.0f);
  r1.x = (r1.x * 1.44269502162933349609f);
  r1.x = exp2(r1.x);
  r1.x = min(r1.x, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  r1.z = (r1.x * cb3_3.tint_symbol_1[52u].y);
  r1.x = fma((-(r1.xxxx)).x, cb3_3.tint_symbol_1[52u].y, 1.0f);
  let v_53 = -(cb3_3.tint_symbol_1[52u].xxxx);
  r1.y = (r1.y + v_53.y);
  r1.y = max(r1.y, 0.0f);
  let v_54 = (r1.xy * cb3_3.tint_symbol_1[51u].yx);
  r1 = vec4<f32>(v_54.xy, r1.zw);
  r1.y = (r1.y * 1.44269502162933349609f);
  r1.y = exp2(r1.y);
  r1.y = ((-(r1.yyyy)).y + 1.0f);
  r1.x = clamp(fma(r1.xxxx, r1.yyyy, r1.zzzz).x, 0.0f, 1.0f);
  r1.x = ((-(r1.xxxx)).x + 1.0f);
  o2.z = (r0.w * r1.x);
  r1 = (r0.yyyy * cb1_1.tint_symbol[9u]);
  r1 = fma(r0.xxxx, cb1_1.tint_symbol[8u], r1);
  r1 = fma(r0.zzzz, cb1_1.tint_symbol[10u], r1);
  r1 = (r1 + cb1_1.tint_symbol[11u]);
  r2.x = (r1.w + r1.x);
  r2.y = ((-(r1.yyyy)).y + r1.w);
  let v_55 = (r2.xy * vec2<f32>(0.5f));
  o2 = vec4<f32>(v_55.xy, o2.zw);
  o0 = r1;
  o2.w = r1.w;
  o1 = r0.xyz.xyzx;
  r4.z = 0.0f;
  o3 = r4.xyz.xyzx;
}

struct tint_symbol_3 {
  @builtin(position)
  o0 : vec4<f32>,
  @location(1u)
  o1 : vec4<f32>,
  @location(2u)
  o2 : vec4<f32>,
  @location(3u)
  o3 : vec4<f32>,
  @location(4u)
  o4 : vec4<f32>,
}

@vertex
fn main(@location(0u) v0 : vec4<f32>) -> tint_symbol_3 {
  main_inner(v0);
  return tint_symbol_3(o0, o1, o2, o3, o4);
}
