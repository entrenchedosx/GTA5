diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

var<private> r7 : vec4<f32>;

var<private> r8 : vec4<f32>;

var<private> r9 : vec4<f32>;

var<private> r10 : vec4<f32>;

var<private> r11 : vec4<f32>;

var<private> r12 : vec4<f32>;

var<private> r13 : vec4<f32>;

var<private> r14 : vec4<f32>;

var<private> r15 : vec4<f32>;

var<private> r16 : vec4<f32>;

var<private> r17 : vec4<f32>;

var<private> r18 : vec4<f32>;

var<private> r19 : vec4<f32>;

var<private> r20 : vec4<f32>;

var<private> r21 : vec4<f32>;

struct cb8_struct {
  tint_symbol : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(35u) var t3 : texture_2d<f32>;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(42u) var t10 : texture_2d<f32>;

@group(1u) @binding(43u) var t11 : texture_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_2 {
  tint_symbol_1 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_2;

fn main_inner(v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = v0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1 = textureLoad(t6, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
  let v_6 = (cb12_12.tint_symbol[6u].xy * cb12_12.tint_symbol[7u].xx);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  let v_8 = (r1.yz * vec2<f32>(0.5f));
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r1.xx * cb12_12.tint_symbol[0u].xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  let v_11 = (r1.yz / r2.xy);
  let v_12 = r1;
  r1 = vec4<f32>(v_12.x, v_11.xy, v_12.w);
  r1.w = max(r1.z, r1.y);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 1.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    r2 = textureLoad(t10, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    r3 = textureLoad(t11, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    r4 = textureLoad(t3, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w));
    let v_13 = fma(r4.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r3 = vec4<f32>(r3.x, v_13.xyz);
    let v_14 = min(r1.yz, cb12_12.tint_symbol[7u].yy);
    r0 = vec4<f32>(r0.xy, v_14.xy);
    let v_15 = r0.zw;
    let v_16 = max(v_15, vec2<f32>(-2147483648.0f));
    let v_17 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_16), vec2<i32>(2147483647i), (v_16 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_15 == v_15))));
    r0 = vec4<f32>(r0.xy, v_17.xy);
    r0.z = bitcast<f32>(max(bitcast<i32>(r0.w), bitcast<i32>(r0.z)));
    let v_18 = cb12_12.tint_symbol[6u].xy;
    let v_19 = max(v_18, vec2<f32>(-2147483648.0f));
    let v_20 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_19), vec2<i32>(2147483647i), (v_19 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_18 == v_18))));
    let v_21 = r1;
    r1 = vec4<f32>(v_21.x, v_20.xy, v_21.w);
    let v_22 = bitcast<vec2<f32>>((bitcast<vec2<i32>>(r1.yz) + vec2<i32>(-1i)));
    let v_23 = r1;
    r1 = vec4<f32>(v_23.x, v_22.xy, v_23.w);
    r2.y = r3.x;
    r2.z = r1.x;
    r0.w = (cb12_12.tint_symbol[7u].x * cb12_12.tint_symbol[7u].x);
    r4 = vec4<f32>(r4.xy, vec2<f32>());
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    r1 = vec4<f32>(0.0f, r1.yz, 0.0f);
    r2.w = 0.0f;
    loop {
      r3.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r2.w))));
      if ((bitcast<u32>(r3.x) != 0u)) {
        break;
      }
      r8.z = bitcast<f32>(-(bitcast<i32>(r2.w)));
      r8.x = r2.w;
      let v_24 = r1;
      r9 = vec4<f32>(v_24.xw, r9.zw);
      r3.x = bitcast<f32>(v.tint_symbol_1[0i].x);
      loop {
        r9.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r3.x))));
        if ((bitcast<u32>(r9.z) != 0u)) {
          break;
        }
        r8.y = r3.x;
        r10 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r8.xyyz)));
        r11 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r10), vec4<i32>()));
        let v_25 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r11.xy)));
        r4 = vec4<f32>(v_25.xy, r4.zw);
        r12 = textureLoad(t10, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
        r10 = textureLoad(t11, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
        r13 = textureLoad(t6, bitcast<vec2<i32>>(r4.xy), bitcast<i32>(r4.w));
        let v_26 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r11.zw)));
        r5 = vec4<f32>(v_26.xy, r5.zw);
        r11 = textureLoad(t10, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
        r14 = textureLoad(t11, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
        r15 = textureLoad(t6, bitcast<vec2<i32>>(r5.xy), bitcast<i32>(r5.w));
        r8.w = bitcast<f32>(-(bitcast<i32>(r3.x)));
        r16 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r8.zwwx)));
        r16 = bitcast<vec4<f32>>(max(bitcast<vec4<i32>>(r16), vec4<i32>()));
        let v_27 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r16.xy)));
        r6 = vec4<f32>(v_27.xy, r6.zw);
        r17 = textureLoad(t10, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
        r18 = textureLoad(t11, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
        r19 = textureLoad(t6, bitcast<vec2<i32>>(r6.xy), bitcast<i32>(r6.w));
        let v_28 = bitcast<vec2<f32>>(min(bitcast<vec2<i32>>(r1.yz), bitcast<vec2<i32>>(r16.zw)));
        r7 = vec4<f32>(v_28.xy, r7.zw);
        r16 = textureLoad(t10, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
        r20 = textureLoad(t11, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
        r21 = textureLoad(t6, bitcast<vec2<i32>>(r7.xy), bitcast<i32>(r7.w));
        r12.y = r10.x;
        r12.z = r13.x;
        let v_29 = ((-(r2.xyzx)).xyz + r12.xyz);
        r10 = vec4<f32>(v_29.xyz, r10.w);
        r11.y = r14.x;
        r11.z = r15.x;
        let v_30 = ((-(r2.xyzx)).xyz + r11.xyz);
        r11 = vec4<f32>(v_30.xyz, r11.w);
        r17.y = r18.x;
        r17.z = r19.x;
        let v_31 = ((-(r2.xyzx)).xyz + r17.xyz);
        r12 = vec4<f32>(v_31.xyz, r12.w);
        r16.y = r20.x;
        r16.z = r21.x;
        let v_32 = ((-(r2.xyzx)).xyz + r16.xyz);
        r13 = vec4<f32>(v_32.xyz, r13.w);
        r14.x = dot(r10.xyz, r10.xyz);
        r14.y = dot(r11.xyz, r11.xyz);
        r14.z = dot(r12.xyz, r12.xyz);
        r14.w = dot(r13.xyz, r13.xyz);
        r10.x = dot(r10.xyz, r3.yzw);
        r10.y = dot(r11.xyz, r3.yzw);
        r10.z = dot(r12.xyz, r3.yzw);
        r10.w = dot(r13.xyz, r3.yzw);
        r10 = max(r10, vec4<f32>());
        r10 = (r10 * r10);
        r10 = (r10 / r14);
        r11 = fma(r10, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
        r10 = (r10 * r11);
        r11 = (r14 / r0.wwww);
        r11 = min(r11, vec4<f32>(1.0f));
        r11 = (-(r11) + vec4<f32>(1.0f));
        r4.x = dot(r11, r10);
        r9.x = (r4.x + r9.x);
        r9.y = (r9.y + 4.0f);
        r3.x = bitcast<f32>((bitcast<i32>(r3.x) + 1i));
      }
      let v_33 = r9;
      r1 = vec4<f32>(v_33.x, r1.yz, v_33.y);
      r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
    }
    r0.x = (r1.x / r1.w);
  } else {
    r0.x = 0.0f;
  }
  o0 = r0.xxxx;
}

@fragment
fn main(@builtin(position) v_34 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_34);
  return o0;
}
