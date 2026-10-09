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

struct cb15_struct {
  tint_symbol : array<vec4<f32>, 15u>,
}

@group(1u) @binding(1u) var<uniform> cb1_1 : cb15_struct;

struct cb8_struct {
  tint_symbol_1 : array<vec4<f32>, 8u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb8_struct;

@group(1u) @binding(38u) var t6 : texture_2d<f32>;

@group(1u) @binding(45u) var t13 : texture_multisampled_2d<f32>;

@group(1u) @binding(46u) var t14 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

struct tint_symbol_3 {
  tint_symbol_2 : array<vec4<u32>, 1u>,
}

@group(1u) @binding(15u) var<uniform> v : tint_symbol_3;

fn main_inner(v_1 : vec4<f32>) {
  var v_2 : vec4<f32> = v_1;
  v_2.w = (1.0f / v_1.w);
  v0 = v_2;
  let v_3 = v0.xy;
  let v_4 = max(v_3, vec2<f32>(-2147483648.0f));
  let v_5 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_4), vec2<i32>(2147483647i), (v_4 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_3 == v_3))));
  r0 = vec4<f32>(v_5.xy, r0.zw);
  r0 = vec4<f32>(r0.xy, vec2<f32>());
  r1.x = textureLoad(t6, bitcast<vec2<i32>>(r0.xy), bitcast<i32>(r0.w)).x;
  let v_6 = (v0.xy * cb12_12.tint_symbol_1[6u].zw);
  let v_7 = r1;
  r1 = vec4<f32>(v_7.x, v_6.xy, v_7.w);
  r1.x = fma(cb12_12.tint_symbol_1[0u].w, r1.x, cb12_12.tint_symbol_1[0u].z);
  let v_8 = fma(r1.yz, vec2<f32>(2.0f, -2.0f), vec2<f32>(-1.0f, 1.0f));
  let v_9 = r1;
  r1 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = (r1.yz * cb12_12.tint_symbol_1[0u].xy);
  r2 = vec4<f32>(v_10.xy, r2.zw);
  r2.z = 1.0f;
  r1.y = (r1.x * r2.z);
  let v_11 = (cb12_12.tint_symbol_1[6u].xy * cb12_12.tint_symbol_1[7u].xx);
  r1 = vec4<f32>(r1.xy, v_11.xy);
  let v_12 = (r1.zw * vec2<f32>(0.5f));
  r1 = vec4<f32>(r1.xy, v_12.xy);
  let v_13 = (r1.yy * cb12_12.tint_symbol_1[0u].xy);
  r3 = vec4<f32>(v_13.xy, r3.zw);
  let v_14 = (r1.zw / r3.xy);
  let v_15 = r1;
  r1 = vec4<f32>(v_15.x, v_14.xy, v_15.w);
  r1.w = max(r1.z, r1.y);
  r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= 1.0f)));
  if ((bitcast<u32>(r1.w) != 0u)) {
    let v_16 = textureLoad(t13, bitcast<vec2<i32>>(r0.xy), 0i).xyz;
    r3 = vec4<f32>(v_16.xyz, r3.w);
    let v_17 = fma(r3.xyz, vec3<f32>(2.0f), vec3<f32>(-1.0f));
    r3 = vec4<f32>(v_17.xyz, r3.w);
    r4.x = dot(cb1_1.tint_symbol[12u].xyz, r3.xyz);
    r4.y = dot(cb1_1.tint_symbol[13u].xyz, r3.xyz);
    r0.z = dot(cb1_1.tint_symbol[14u].xyz, r3.xyz);
    r4.z = (-(r0.zzzz)).z;
    let v_18 = min(r1.yz, cb12_12.tint_symbol_1[7u].yy);
    r0 = vec4<f32>(r0.xy, v_18.xy);
    let v_19 = r0.zw;
    let v_20 = max(v_19, vec2<f32>(-2147483648.0f));
    let v_21 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_20), vec2<i32>(2147483647i), (v_20 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_19 == v_19))));
    r0 = vec4<f32>(r0.xy, v_21.xy);
    r0.z = bitcast<f32>(max(bitcast<i32>(r0.w), bitcast<i32>(r0.z)));
    r0.w = (cb12_12.tint_symbol_1[7u].x * cb12_12.tint_symbol_1[7u].x);
    r3 = vec4<f32>(r3.xy, vec2<f32>());
    r5 = vec4<f32>(r5.xy, vec2<f32>());
    r6 = vec4<f32>(r6.xy, vec2<f32>());
    r7 = vec4<f32>(r7.xy, vec2<f32>());
    r1 = vec4<f32>(r1.x, vec3<f32>());
    loop {
      r2.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r1.w))));
      if ((bitcast<u32>(r2.w) != 0u)) {
        break;
      }
      r8.x = bitcast<f32>(-(bitcast<i32>(r1.w)));
      r8.y = r1.w;
      let v_22 = r1;
      r9 = vec4<f32>(v_22.yz, r9.zw);
      r2.w = bitcast<f32>(v.tint_symbol_2[0i].x);
      loop {
        r4.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.z) < bitcast<i32>(r2.w))));
        if ((bitcast<u32>(r4.w) != 0u)) {
          break;
        }
        r8.z = r2.w;
        r10 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r8.yzzx)));
        r8.w = bitcast<f32>(-(bitcast<i32>(r2.w)));
        r11 = bitcast<vec4<f32>>((bitcast<vec4<i32>>(r0.xyxy) + bitcast<vec4<i32>>(r8.xwwy)));
        let v_23 = r10;
        r3 = vec4<f32>(v_23.xy, r3.zw);
        r3.x = textureLoad(t14, bitcast<vec2<i32>>(r3.xy), 0i).x;
        r12.x = ((-(r3.xxxx)).x + 1.0f);
        let v_24 = r10;
        r5 = vec4<f32>(v_24.zw, r5.zw);
        r3.x = textureLoad(t14, bitcast<vec2<i32>>(r5.xy), 0i).x;
        r12.y = ((-(r3.xxxx)).y + 1.0f);
        let v_25 = r11;
        r6 = vec4<f32>(v_25.xy, r6.zw);
        r3.x = textureLoad(t14, bitcast<vec2<i32>>(r6.xy), 0i).x;
        r12.z = ((-(r3.xxxx)).z + 1.0f);
        let v_26 = r11;
        r7 = vec4<f32>(v_26.zw, r7.zw);
        r3.x = textureLoad(t14, bitcast<vec2<i32>>(r7.xy), 0i).x;
        r12.w = ((-(r3.xxxx)).w + 1.0f);
        let v_27 = vec2<f32>(bitcast<vec2<i32>>(r10.xz));
        r13 = vec4<f32>(v_27.xy, r13.zw);
        let v_28 = vec2<f32>(bitcast<vec2<i32>>(r11.xz));
        r13 = vec4<f32>(r13.xy, v_28.xy);
        r13 = (r13 + vec4<f32>(0.5f));
        r13 = (r13 * cb12_12.tint_symbol_1[6u].zzzz);
        let v_29 = vec2<f32>(bitcast<vec2<i32>>(r10.yw));
        r10 = vec4<f32>(v_29.xy, r10.zw);
        let v_30 = vec2<f32>(bitcast<vec2<i32>>(r11.yw));
        r10 = vec4<f32>(r10.xy, v_30.xy);
        r10 = (r10 + vec4<f32>(0.5f));
        r10 = (r10 * cb12_12.tint_symbol_1[6u].wwww);
        r11 = fma(cb12_12.tint_symbol_1[0u].wwww, r12, cb12_12.tint_symbol_1[0u].zzzz);
        r12 = fma(r13, vec4<f32>(2.0f), vec4<f32>(-1.0f));
        r12 = (r11 * r12);
        r12 = (r12 * cb12_12.tint_symbol_1[0u].xxxx);
        r10 = fma(-(r10), vec4<f32>(2.0f), vec4<f32>(1.0f));
        r10 = (r11 * r10);
        r10 = (r10 * cb12_12.tint_symbol_1[0u].yyyy);
        r13.x = r12.x;
        r13.y = r10.x;
        r13.z = r11.x;
        let v_31 = fma((-(r2.xyzx)).xyz, r1.xxx, r13.xyz);
        r13 = vec4<f32>(v_31.xyz, r13.w);
        r14.x = r12.y;
        r14.y = r10.y;
        r14.z = r11.y;
        let v_32 = fma((-(r2.xyzx)).xyz, r1.xxx, r14.xyz);
        r14 = vec4<f32>(v_32.xyz, r14.w);
        r11.x = r12.z;
        r11.y = r10.z;
        let v_33 = fma((-(r2.xyzx)).xyz, r1.xxx, r11.xyz);
        r10 = vec4<f32>(v_33.xyz, r10.w);
        r11.x = r12.w;
        r11.y = r10.w;
        let v_34 = fma((-(r2.xyzx)).xyz, r1.xxx, r11.xyw);
        r11 = vec4<f32>(v_34.xyz, r11.w);
        r12.x = dot(r13.xyz, r13.xyz);
        r12.y = dot(r14.xyz, r14.xyz);
        r12.z = dot(r10.xyz, r10.xyz);
        r12.w = dot(r11.xyz, r11.xyz);
        r13.x = dot(r13.xyz, r4.xyz);
        r13.y = dot(r14.xyz, r4.xyz);
        r13.z = dot(r10.xyz, r4.xyz);
        r13.w = dot(r11.xyz, r4.xyz);
        r10 = max(r13, vec4<f32>());
        r10 = (r10 * r10);
        r10 = (r10 / r12);
        r11 = fma(r10, vec4<f32>(-0.82842713594436645508f), vec4<f32>(1.82842707633972167969f));
        r10 = (r10 * r11);
        r11 = (r12 / r0.wwww);
        r11 = min(r11, vec4<f32>(1.0f));
        r11 = (-(r11) + vec4<f32>(1.0f));
        r3.x = dot(r11, r10);
        r9.x = (r3.x + r9.x);
        r9.y = (r9.y + 4.0f);
        r2.w = bitcast<f32>((bitcast<i32>(r2.w) + 1i));
      }
      let v_35 = r9;
      let v_36 = r1;
      r1 = vec4<f32>(v_36.x, v_35.xy, v_36.w);
      r1.w = bitcast<f32>((bitcast<i32>(r1.w) + 1i));
    }
    r0.x = (r1.y / r1.z);
  } else {
    r0.x = 0.0f;
  }
  o0 = r0.xxxx;
}

@fragment
fn main(@builtin(position) v_37 : vec4<f32>) -> @location(0u) vec4<f32> {
  main_inner(v_37);
  return o0;
}
