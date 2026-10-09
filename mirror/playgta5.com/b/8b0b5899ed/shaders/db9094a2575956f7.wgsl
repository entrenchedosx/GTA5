diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

struct cb16_struct {
  tint_symbol : array<vec4<f32>, 16u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb16_struct;

struct cb1_struct {
  tint_symbol_1 : array<vec4<f32>, 1u>,
}

@group(1u) @binding(3u) var<uniform> cb3_3 : cb1_struct;

struct cb10_struct {
  tint_symbol_2 : array<vec4<f32>, 10u>,
}

@group(1u) @binding(6u) var<uniform> cb6_6 : cb10_struct;

struct cb76_struct {
  tint_symbol_3 : array<vec4<f32>, 76u>,
}

@group(1u) @binding(5u) var<uniform> cb5_5 : cb76_struct;

@group(1u) @binding(17u) var s1 : sampler;

@group(1u) @binding(20u) var s4 : sampler;

@group(1u) @binding(26u) var s10 : sampler;

@group(1u) @binding(31u) var s15 : sampler_comparison;

@group(1u) @binding(33u) var t1 : texture_2d<f32>;

@group(1u) @binding(36u) var t4 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(47u) var t15 : texture_depth_2d;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_5 {
  tint_symbol_4 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_5;

fn main_inner(v_1 : vec4<f32>, v1 : vec4<f32>, v2 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  r0 = textureSample(t4, s4, v1.xyxx.xy);
  r0.x = min(r0.x, cb5_5.tint_symbol_3[46u].w);
  let v_3 = (v0.xy * vec2<f32>(0.3333333432674407959f));
  let v_4 = r0;
  r0 = vec4<f32>(v_4.x, v_3.xy, v_4.w);
  let v_5 = -(r0.yzyy);
  let v_6 = bitcast<vec2<f32>>(select(vec2<u32>(), vec2<u32>(4294967295u), (r0.yz >= v_5.xy)));
  r1 = vec4<f32>(v_6.xy, r1.zw);
  let v_7 = fract(abs(r0.yyzy).yz);
  let v_8 = r0;
  r0 = vec4<f32>(v_8.x, v_7.xy, v_8.w);
  let v_9 = -(r0.yyzy);
  let v_10 = bitcast<vec2<u32>>(r1.xy);
  let v_11 = select(v_9.yz, r0.yz, (v_10 != vec2<u32>()));
  let v_12 = r0;
  r0 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  let v_13 = (r0.yz * vec2<f32>(3.0f, 9.0f));
  let v_14 = r0;
  r0 = vec4<f32>(v_14.x, v_13.xy, v_14.w);
  r0.y = (r0.z + r0.y);
  r0.z = fma(r0.x, v2.z, cb1_1.tint_symbol[15u].z);
  let v_15 = -(cb5_5.tint_symbol_3[47u].xxxx);
  r0.z = (r0.z + v_15.z);
  r0.z = max(r0.z, 0.0f);
  r0.w = max(v2.z, 0.00009999999747378752f);
  r0.z = (r0.z / r0.w);
  r0.x = ((-(r0.zzzz)).x + r0.x);
  r0.x = max(r0.x, 0.0f);
  let v_16 = (r0.xxx * v2.xyz);
  r1 = vec4<f32>(v_16.xyz, r1.w);
  let v_17 = (r1.xyz * vec3<f32>(0.05882352963089942932f));
  r1 = vec4<f32>(v_17.xyz, r1.w);
  let v_18 = (r0.yyy * r1.xyz);
  r0 = vec4<f32>(r0.x, v_18.xyz);
  let v_19 = (r0.yzw * vec3<f32>(0.11111111193895339966f));
  r0 = vec4<f32>(r0.x, v_19.xyz);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = inverseSqrt(r1.w);
  let v_20 = (r1.www * r1.xyz);
  r2 = vec4<f32>(v_20.xyz, r2.w);
  r1.w = dot((-(cb3_3.tint_symbol_1[0u].xyzx)).xyz, r2.xyz);
  r1.w = (r1.w + 1.0f);
  r1.w = (r1.w * 0.5f);
  r1.w = (r1.w * r1.w);
  r0.x = (r0.x / cb5_5.tint_symbol_3[46u].w);
  r0.x = (r1.w * r0.x);
  let v_21 = (r0.zzz * cb6_6.tint_symbol_2[1u].xyz);
  r2 = vec4<f32>(v_21.xyz, r2.w);
  let v_22 = fma(r0.yyy, cb6_6.tint_symbol_2[0u].xyz, r2.xyz);
  r2 = vec4<f32>(v_22.xyz, r2.w);
  let v_23 = fma(r0.www, cb6_6.tint_symbol_2[2u].xyz, r2.xyz);
  r0 = vec4<f32>(r0.x, v_23.xyz);
  let v_24 = fma(r0.yzw, cb6_6.tint_symbol_2[5u].xyz, cb6_6.tint_symbol_2[9u].xyz);
  r0 = vec4<f32>(r0.x, v_24.xyz);
  let v_25 = (r0.yzw + vec3<f32>(0.5f, 0.5f, 0.0f));
  r0 = vec4<f32>(r0.x, v_25.xyz);
  let v_26 = (r1.yyy * cb6_6.tint_symbol_2[1u].xyz);
  r2 = vec4<f32>(v_26.xyz, r2.w);
  let v_27 = fma(r1.xxx, cb6_6.tint_symbol_2[0u].xyz, r2.xyz);
  r1 = vec4<f32>(v_27.xy, r1.z, v_27.z);
  let v_28 = fma(r1.zzz, cb6_6.tint_symbol_2[2u].xyz, r1.xyw);
  r1 = vec4<f32>(v_28.xyz, r1.w);
  let v_29 = r0;
  r2 = vec4<f32>(v_29.yzw, r2.w);
  r1.w = 0.0f;
  r2.w = 0.0f;
  loop {
    r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.w) >= 16i)));
    if ((bitcast<u32>(r3.x) != 0u)) {
      break;
    }
    let v_30 = r2.xyxx;
    r3.x = textureSampleCompareLevel(t15, s15, v_30.xy, r2.z);
    r1.w = (r1.w + r3.x);
    let v_31 = fma(r1.xyz, cb6_6.tint_symbol_2[5u].xyz, r2.xyz);
    r2 = vec4<f32>(v_31.xyz, r2.w);
    r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
  }
  r0.y = (r1.w * 0.0625f);
  r0.y = (r0.y * r0.y);
  r0.x = (r0.x * r0.y);
  r0.y = bitcast<f32>(select(0u, 4294967295u, (0.0f < cb5_5.tint_symbol_3[75u].z)));
  r0.z = log2(r0.x);
  r0.z = (r0.z * 0.125f);
  r0.z = exp2(r0.z);
  let v_32 = bitcast<u32>(r0.y);
  let v_33 = r0.z;
  r0.w = select(r0.x, v_33, (v_32 != 0u));
  r1.x = bitcast<f32>(select(0u, 4294967295u, (cb5_5.tint_symbol_3[75u].z == 0.0f)));
  if ((bitcast<u32>(r1.x) != 0u)) {
    let v_34 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r1.xxx) & bitcast<vec3<u32>>(cb5_5.tint_symbol_3[46u].xyz)));
    r1 = vec4<f32>(v_34.xyz, r1.w);
    r2 = vec4<f32>(vec3<f32>(), r2.w);
    r1.w = bitcast<f32>(v.tint_symbol_4[0i].x);
    loop {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (1i < bitcast<i32>(r1.w))));
      if ((bitcast<u32>(r2.w) != 0u)) {
        break;
      }
      r3.y = f32(bitcast<i32>(r1.w));
      let v_35 = r2;
      r4 = vec4<f32>(v_35.xyz, r4.w);
      r2.w = bitcast<f32>(v.tint_symbol_4[0i].x);
      loop {
        r3.z = bitcast<f32>(select(0u, 4294967295u, (1i < bitcast<i32>(r2.w))));
        if ((bitcast<u32>(r3.z) != 0u)) {
          break;
        }
        r3.x = f32(bitcast<i32>(r2.w));
        let v_36 = fma(cb5_5.tint_symbol_3[72u].xy, r3.xy, v1.xy);
        let v_37 = r3;
        r3 = vec4<f32>(v_36.x, v_37.y, v_36.y, v_37.w);
        r5 = textureSample(t10, s10, r3.xzxx.xy);
        let v_38 = fma(r5.xyz, vec3<f32>(0.11111111193895339966f), r4.xyz);
        r4 = vec4<f32>(v_38.xyz, r4.w);
        r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
      }
      let v_39 = r4;
      r2 = vec4<f32>(v_39.xyz, r2.w);
      r1.w = bitcast<f32>((bitcast<i32>(r1.w) + 1i));
    }
    r3 = textureSample(t1, s1, vec2<f32>());
    let v_40 = (r2.xyz * r3.xxx);
    r3 = vec4<f32>(v_40.xyz, r3.w);
    let v_41 = (r3.xyz * cb5_5.tint_symbol_3[8u].www);
    r3 = vec4<f32>(v_41.xyz, r3.w);
    r1.w = dot(r3.xyz, vec3<f32>(0.3333333134651184082f));
    r1.w = max(r1.w, 0.00000000099999997172f);
    let v_42 = -(cb5_5.tint_symbol_3[7u].xxxx);
    r2.w = (r1.w + v_42.w);
    r2.w = clamp(((r2.wwww * cb5_5.tint_symbol_3[7u].zzzz)).w, 0.0f, 1.0f);
    r2.w = (r1.w * r2.w);
    let v_43 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), !((r2.xyz == r2.xyz))));
    r3 = vec4<f32>(v_43.xyz, r3.w);
    let v_44 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r2.xyz) & vec3<u32>(2147483647u)));
    r4 = vec4<f32>(v_44.xyz, r4.w);
    let v_45 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (bitcast<vec3<i32>>(r4.xyz) == vec3<i32>(2139095040i))));
    r4 = vec4<f32>(v_45.xyz, r4.w);
    let v_46 = bitcast<vec3<f32>>((bitcast<vec3<u32>>(r3.xyz) | bitcast<vec3<u32>>(r4.xyz)));
    r3 = vec4<f32>(v_46.xyz, r3.w);
    let v_47 = max(r2.xyz, vec3<f32>());
    r2 = vec4<f32>(v_47.xyz, r2.w);
    r1.w = (r2.w / r1.w);
    let v_48 = (r1.www * r2.xyz);
    r2 = vec4<f32>(v_48.xyz, r2.w);
    let v_49 = bitcast<vec3<u32>>(r3.xyz);
    let v_50 = select(r2.xyz, vec3<f32>(1000.0f, 0.0f, 1000.0f), (v_49 != vec3<u32>()));
    r2 = vec4<f32>(v_50.xyz, r2.w);
    let v_51 = fma(r0.www, r1.xyz, r2.xyz);
    r0 = vec4<f32>(v_51.xyz, r0.w);
  } else {
    let v_52 = r0;
    r0 = vec4<f32>(v_52.www, r0.w);
  }
  o0 = r0;
}

@fragment
fn main(@builtin(position) v_53 : vec4<f32>, @location(1u) v1 : vec4<f32>, @location(2u) v2 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_53, v1, v2);
  return o0;
}
