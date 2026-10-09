diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

struct cb30_struct {
  tint_symbol : array<vec4<f32>, 30u>,
}

@group(0u) @binding(12u) var<uniform> cb12_12 : cb30_struct;

struct cb22_struct {
  tint_symbol_1 : array<vec4<f32>, 22u>,
}

@group(0u) @binding(7u) var<uniform> cb7_7 : cb22_struct;

struct tint_symbol_3 {
  tint_symbol_2 : array<u32>,
}

@group(0u) @binding(33u) var<storage, read> t1 : tint_symbol_3;

struct tint_symbol_5 {
  tint_symbol_4 : array<u32>,
}

@group(0u) @binding(160u) var<storage, read_write> u0 : tint_symbol_5;

struct tint_symbol_7_atomic {
  tint_symbol_6 : array<atomic<u32>, 1u>,
}

@group(0u) @binding(176u) var<storage, read_write> u0_1 : tint_symbol_7_atomic;

struct tint_symbol_9 {
  tint_symbol_8 : array<u32>,
}

@group(0u) @binding(161u) var<storage, read_write> u1 : tint_symbol_9;

struct tint_symbol_11_atomic {
  tint_symbol_10 : array<atomic<u32>, 1u>,
}

@group(0u) @binding(177u) var<storage, read_write> u1_1 : tint_symbol_11_atomic;

struct tint_symbol_13 {
  tint_symbol_12 : array<u32>,
}

@group(0u) @binding(162u) var<storage, read_write> u2 : tint_symbol_13;

struct tint_symbol_15_atomic {
  tint_symbol_14 : array<atomic<u32>, 1u>,
}

@group(0u) @binding(178u) var<storage, read_write> u2_1 : tint_symbol_15_atomic;

struct tint_symbol_17 {
  tint_symbol_16 : array<u32>,
}

@group(0u) @binding(163u) var<storage, read_write> u3 : tint_symbol_17;

struct tint_symbol_19_atomic {
  tint_symbol_18 : array<atomic<u32>, 1u>,
}

@group(0u) @binding(179u) var<storage, read_write> u3_1 : tint_symbol_19_atomic;

var<private> icb0 : array<vec4<f32>, 4u> = array<vec4<f32>, 4u>(vec4<f32>(1.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f), vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f));

struct tint_symbol_21 {
  tint_symbol_20 : array<vec4<u32>, 4u>,
}

@group(0u) @binding(15u) var<uniform> v : tint_symbol_21;

@compute @workgroup_size(64u, 1u, 1u)
fn main(@builtin(global_invocation_id) vThreadID : vec3<u32>) {
  let v_1 = vec3<i32>(vThreadID);
  r0.x = bitcast<f32>(vec2<u32>((arrayLength(&(t1.tint_symbol_2)) / 4u), 4u).x);
  r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(v_1.x) < bitcast<u32>(r0.x))));
  let v_2 = (bitcast<u32>((v_1.x * 4i)) + 0u);
  let v_3 = t1.tint_symbol_2[v_2];
  let v_4 = t1.tint_symbol_2[(v_2 + 1u)];
  let v_5 = t1.tint_symbol_2[(v_2 + 2u)];
  let v_6 = bitcast<vec3<f32>>(vec3<u32>(vec4<u32>(v_3, v_3, v_3, v_3).x, vec4<u32>(v_4, v_4, v_4, v_4).x, vec4<u32>(v_5, v_5, v_5, v_5).x));
  r0 = vec4<f32>(r0.x, v_6.xyz);
  let v_7 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yz) & vec2<u32>(65535u)));
  r1 = vec4<f32>(v_7.xy, r1.zw);
  let v_8 = bitcast<vec2<f32>>((bitcast<vec2<u32>>(r0.yw) >> vec2<u32>(16u, 24u)));
  let v_9 = r0;
  r0 = vec4<f32>(v_9.x, v_8.xy, v_9.w);
  let v_10 = vec2<f32>(bitcast<vec2<u32>>(r1.xy));
  let v_11 = r1;
  r1 = vec4<f32>(v_10.x, v_11.y, v_10.y, v_11.w);
  let v_12 = vec2<f32>(bitcast<vec2<u32>>(r0.yz));
  let v_13 = r1;
  r1 = vec4<f32>(v_13.x, v_12.x, v_13.z, v_12.y);
  let v_14 = (r1.xyz * cb12_12.tint_symbol[4u].xyz);
  r0 = vec4<f32>(r0.x, v_14.xyz);
  r1.x = (r1.w * 0.0039215688593685627f);
  let v_15 = fma(r0.yzw, vec3<f32>(0.00001525902189314365f), cb12_12.tint_symbol[3u].xyz);
  r2 = vec4<f32>(v_15.xyz, r2.w);
  r0.y = bitcast<f32>((bitcast<u32>(v_1.x) & 7u));
  r0.y = bitcast<f32>((bitcast<i32>(r0.y) * 3i));
  r0.z = cb12_12.tint_symbol[26u].z;
  r0.w = dot(cb12_12.tint_symbol[28u].xy, icb0[bitcast<i32>(r0.z)].xy);
  r1.y = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
  r0.w = (r0.w * cb12_12.tint_symbol[27u].z);
  let v_16 = bitcast<u32>(r1.y);
  let v_17 = r0.w;
  r0.w = select(cb12_12.tint_symbol[27u].x, v_17, (v_16 != 0u));
  let v_18 = ((-(r2.xxyz)).yzw + cb12_12.tint_symbol[24u].xyz);
  r1 = vec4<f32>(r1.x, v_18.xyz);
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r0.w = ((-(r0.wwww)).w + r1.y);
  r0.w = (r0.w / cb12_12.tint_symbol[27u].y);
  r1.z = dot(cb12_12.tint_symbol[28u].zw, icb0[bitcast<i32>(r0.z)].xy);
  r1.w = ((-(r1.zzzz)).w + 1.0f);
  let v_19 = (r2.xy * cb12_12.tint_symbol[29u].zw);
  r3 = vec4<f32>(v_19.xy, r3.zw);
  let v_20 = sin(r3.xyxx.xy);
  r3 = vec4<f32>(v_20.xy, r3.zw);
  r3.x = (r3.y + r3.x);
  r3.y = f32(bitcast<u32>(v_1.x));
  r3.x = (r3.y + r3.x);
  r3.x = cos(r3.xxxx.x);
  r3.x = (r3.x + 1.0f);
  r3.x = (r3.x * 0.5f);
  r0.z = dot(cb12_12.tint_symbol[29u].xy, icb0[bitcast<i32>(r0.z)].xy);
  r3.x = log2(r3.x);
  r0.z = (r0.z * r3.x);
  r0.z = exp2(r0.z);
  r0.z = fma(r0.z, r1.w, r1.z);
  r0.z = ((-(r0.wwww)).z + r0.z);
  r0.z = clamp(((r0.zzzz / r1.zzzz)).z, 0.0f, 1.0f);
  r0.w = ((-(cb12_12.tint_symbol[5u].xxxx)).w + cb12_12.tint_symbol[5u].y);
  r0.w = fma(r0.w, r1.x, cb12_12.tint_symbol[5u].x);
  r1.x = (cb12_12.tint_symbol[5u].z * cb12_12.tint_symbol[5u].y);
  r0.y = dot(cb7_7.tint_symbol_1[bitcast<i32>(r0.y)].ww, r1.xx);
  r0.y = fma((-(cb12_12.tint_symbol[5u].yyyy)).y, cb12_12.tint_symbol[5u].z, r0.y);
  r0.y = (r0.y + r0.w);
  r0.y = max(r0.y, 0.0f);
  r0.y = (r0.z * r0.y);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.y)));
  r0.y = (r0.y * cb12_12.tint_symbol[7u].x);
  r2.w = 1.0f;
  let v_21 = r1;
  let v_22 = vec2<f32>(bitcast<f32>(v.tint_symbol_20[0i].x), 0.0f);
  r1 = vec4<f32>(v_22.x, v_21.y, v_22.y, v_21.w);
  loop {
    r1.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r1.z) >= bitcast<u32>(cb12_12.tint_symbol[7u].z))));
    if ((bitcast<u32>(r1.w) != 0u)) {
      break;
    }
    r3 = (cb12_12.tint_symbol[7u].yyyy * cb12_12.tint_symbol[bitcast<u32>((bitcast<i32>(r1.z) + 8i))]);
    r1.w = dot(r3, r2);
    let v_23 = -(r0.yyyy);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.w >= v_23.w)));
    r1.x = bitcast<f32>((bitcast<u32>(r1.w) & bitcast<u32>(r1.x)));
    r1.z = bitcast<f32>((bitcast<i32>(r1.z) + 1i));
  }
  r0.y = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r1.x)));
  r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r0.y)));
  if ((bitcast<u32>(r0.x) != 0u)) {
    r0.x = bitcast<f32>(select(0u, 4294967295u, (cb12_12.tint_symbol[25u].w < 0.0f)));
    let v_24 = bitcast<vec3<f32>>(select(vec3<u32>(), vec3<u32>(4294967295u), (cb12_12.tint_symbol[25u].wzy >= vec3<f32>())));
    r1 = vec4<f32>(v_24.x, r1.y, v_24.yz);
    let v_25 = (bitcast<u32>(r1.z) != 0u);
    let v_26 = bitcast<f32>(v.tint_symbol_20[1i].x);
    r0.y = select(bitcast<f32>(v.tint_symbol_20[2i].x), v_26, v_25);
    r0.w = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r1.z)));
    r1.z = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r0.w)));
    let v_27 = bitcast<u32>(r0.x);
    let v_28 = r0.y;
    r0.y = select(bitcast<f32>(v.tint_symbol_20[2i].x), v_28, (v_27 != 0u));
    let v_29 = bitcast<u32>(r0.x);
    let v_30 = r1.z;
    r1.x = select(r1.x, v_30, (v_29 != 0u));
    r0.w = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 0i)));
    r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
    r0.w = bitcast<f32>(~(bitcast<u32>(r1.x)));
    r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
    let v_31 = bitcast<u32>(r1.w);
    r0.w = select(r0.y, bitcast<f32>(v.tint_symbol_20[3i].x), (v_31 != 0u));
    let v_32 = bitcast<u32>(r0.x);
    let v_33 = r1.w;
    r1.z = select(bitcast<f32>(v.tint_symbol_20[0i].x), v_33, (v_32 != 0u));
    r1.z = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r1.z)));
    r1.z = bitcast<f32>((bitcast<u32>(r1.x) | bitcast<u32>(r1.z)));
    let v_34 = bitcast<u32>(r0.x);
    let v_35 = r0.w;
    r0.y = select(r0.y, v_35, (v_34 != 0u));
    let v_36 = bitcast<u32>(r0.x);
    let v_37 = r1.z;
    r0.x = select(r1.x, v_37, (v_36 != 0u));
    r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r0.x)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      r0.w = bitcast<f32>((bitcast<i32>(r0.y) + -1i));
      r2 = vec4<f32>(vec2<f32>(0.0f, -1.0f), r2.zw);
      r2.z = r0.y;
      loop {
        r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r2.x) >= bitcast<u32>(r0.y))));
        if ((bitcast<u32>(r1.x) != 0u)) {
          break;
        }
        r1.x = dot(cb12_12.tint_symbol[25u], icb0[bitcast<i32>(r2.x)]);
        r1.z = bitcast<f32>(select(0u, 4294967295u, (r1.y < r1.x)));
        if ((bitcast<u32>(r1.z) != 0u)) {
          r1.x = ((-(r1.yyyy)).x + r1.x);
          r1.z = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r2.x) == bitcast<i32>(r0.w))));
          let v_38 = bitcast<u32>(r1.z);
          let v_39 = cb12_12.tint_symbol[26u].y;
          r1.z = select(cb12_12.tint_symbol[26u].x, v_39, (v_38 != 0u));
          r1.w = bitcast<f32>(select(0u, 4294967295u, (r1.x < r1.z)));
          r1.x = (r1.x / r1.z);
          let v_40 = bitcast<u32>(r1.w);
          r2.y = select(-1.0f, r1.x, (v_40 != 0u));
          r2.z = r2.x;
          break;
        }
        r2.x = bitcast<f32>((bitcast<i32>(r2.x) + 1i));
      }
    } else {
      r0.x = -1.0f;
      let v_41 = r0;
      let v_42 = r2;
      r2 = vec4<f32>(v_42.x, v_41.xy, v_42.w);
    }
    r0.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(cb12_12.tint_symbol[24u].w) != 0i)));
    r0.w = bitcast<f32>(select(0u, 4294967295u, (-1.0f < r2.y)));
    r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
    if ((bitcast<u32>(r0.x) != 0u)) {
      r0.x = bitcast<f32>(select(0u, 4294967295u, (r2.y < 0.5f)));
      r0.w = bitcast<f32>((bitcast<i32>(r2.z) + 1i));
      r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r0.w) < 4u)));
      r0.x = bitcast<f32>((bitcast<u32>(r0.x) & bitcast<u32>(r1.x)));
      r0.w = dot(cb12_12.tint_symbol[25u], icb0[bitcast<i32>(r0.w)]);
      r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.0f)));
      r0.x = bitcast<f32>((bitcast<u32>(r0.w) & bitcast<u32>(r0.x)));
      let v_43 = -(bitcast<vec4<i32>>(r0.xxxx));
      r2.z = bitcast<f32>((bitcast<i32>(r2.z) + v_43.z));
      r2.y = -1.0f;
    }
    r0.x = bitcast<f32>(select(0u, 4294967295u, (r2.y >= 0.0f)));
    r0.w = bitcast<f32>(select(0u, 4294967295u, (r2.y < 0.0039215688593685627f)));
    r1.x = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r2.z) < bitcast<u32>(r0.y))));
    let v_44 = -(bitcast<vec4<i32>>(r1.xxxx));
    r1.y = bitcast<f32>((bitcast<i32>(r2.z) + v_44.y));
    r1.z = bitcast<f32>(select(0u, 4294967295u, (0.99607843160629272461f < r2.y)));
    let v_45 = bitcast<u32>(r1.z);
    r2.x = select(r2.y, -1.0f, (v_45 != 0u));
    r1.x = -1.0f;
    let v_46 = bitcast<vec2<u32>>(r0.ww);
    let v_47 = r1.xy;
    let v_48 = select(r2.xz, v_47, (v_46 != vec2<u32>()));
    r1 = vec4<f32>(v_48.xy, r1.zw);
    let v_49 = bitcast<vec2<u32>>(r0.xx);
    let v_50 = r1.xy;
    let v_51 = select(r2.yz, v_50, (v_49 != vec2<u32>()));
    r0 = vec4<f32>(v_51.x, r0.yz, v_51.y);
    r1.x = bitcast<f32>(select(0u, 4294967295u, (r0.x >= 0.0f)));
    r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<u32>(r0.w) < bitcast<u32>(r0.y))));
    r0.y = bitcast<f32>((bitcast<u32>(r0.y) & bitcast<u32>(r1.x)));
    r1.x = clamp(((r0.xxxx + r0.xxxx)).x, 0.0f, 1.0f);
    let v_52 = bitcast<u32>(r0.y);
    let v_53 = r1.x;
    r1.x = select(r0.x, v_53, (v_52 != 0u));
    r1.y = bitcast<f32>(select(0u, 4294967295u, (r1.x >= 0.0f)));
    r1.x = (r1.x * 255.0f);
    let v_54 = max(r1.x, 0.0f);
    r1.x = bitcast<f32>(select(u32(v_54), 4294967295u, (v_54 >= 4294967296.0f)));
    r0.z = (r0.z * 255.0f);
    let v_55 = max(r0.z, 0.0f);
    r0.z = bitcast<f32>(select(u32(v_55), 4294967295u, (v_55 >= 4294967296.0f)));
    r1.x = bitcast<f32>(insertBits(0u, bitcast<u32>(r1.x), 16u, 8u));
    let v_56 = bitcast<u32>(r1.y);
    r1.x = select(2.34180515e-38f, r1.x, (v_56 != 0u));
    let v_57 = bitcast<u32>(v_1.x);
    r1.x = bitcast<f32>(insertBits(bitcast<u32>(r1.x), v_57, 0u, 16u));
    let v_58 = bitcast<i32>(r0.z);
    r1.x = bitcast<f32>(((v_58 * 16777216i) + bitcast<i32>(r1.x)));
    if ((bitcast<u32>(r0.w) != 0u)) {
      r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 1i)));
      if ((bitcast<u32>(r1.y) != 0u)) {
        r2.x = bitcast<f32>(atomicAdd(&(u1_1.tint_symbol_10[0u]), 1u));
        let v_59 = (bitcast<u32>((bitcast<i32>(r2.x) * 1i)) + 0u);
        u1.tint_symbol_8[v_59] = bitcast<u32>(r1.x);
      } else {
        r1.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 2i)));
        if ((bitcast<u32>(r1.y) != 0u)) {
          r2.x = bitcast<f32>(atomicAdd(&(u2_1.tint_symbol_14[0u]), 1u));
          let v_60 = (bitcast<u32>((bitcast<i32>(r2.x) * 1i)) + 0u);
          u2.tint_symbol_12[v_60] = bitcast<u32>(r1.x);
        } else {
          r2.x = bitcast<f32>(atomicAdd(&(u3_1.tint_symbol_18[0u]), 1u));
          let v_61 = (bitcast<u32>((bitcast<i32>(r2.x) * 1i)) + 0u);
          u3.tint_symbol_16[v_61] = bitcast<u32>(r1.x);
        }
      }
    } else {
      r2.x = bitcast<f32>(atomicAdd(&(u0_1.tint_symbol_6[0u]), 1u));
      let v_62 = (bitcast<u32>((bitcast<i32>(r2.x) * 1i)) + 0u);
      u0.tint_symbol_4[v_62] = bitcast<u32>(r1.x);
    }
    if ((bitcast<u32>(r0.y) != 0u)) {
      r0.x = ((-(r0.xxxx)).x + 1.0f);
      r0.x = clamp(((r0.xxxx + r0.xxxx)).x, 0.0f, 1.0f);
      r0.x = (r0.x * 255.0f);
      let v_63 = max(r0.x, 0.0f);
      r0.x = bitcast<f32>(select(u32(v_63), 4294967295u, (v_63 >= 4294967296.0f)));
      let v_64 = bitcast<u32>(r0.x);
      r0.x = bitcast<f32>(insertBits(bitcast<u32>(v_1.x), v_64, 16u, 16u));
      let v_65 = bitcast<i32>(r0.z);
      r0.x = bitcast<f32>(((v_65 * 16777216i) + bitcast<i32>(r0.x)));
      if ((bitcast<u32>(r0.w) != 0u)) {
        r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 1i)));
        if ((bitcast<u32>(r0.y) != 0u)) {
          r1.x = bitcast<f32>(atomicAdd(&(u2_1.tint_symbol_14[0u]), 1u));
          let v_66 = (bitcast<u32>((bitcast<i32>(r1.x) * 1i)) + 0u);
          u2.tint_symbol_12[v_66] = bitcast<u32>(r0.x);
        } else {
          r0.y = bitcast<f32>(select(0u, 4294967295u, (bitcast<i32>(r0.w) == 2i)));
          if ((bitcast<u32>(r0.y) != 0u)) {
            r1.x = bitcast<f32>(atomicAdd(&(u3_1.tint_symbol_18[0u]), 1u));
            let v_67 = (bitcast<u32>((bitcast<i32>(r1.x) * 1i)) + 0u);
            u3.tint_symbol_16[v_67] = bitcast<u32>(r0.x);
          }
        }
      } else {
        r1.x = bitcast<f32>(atomicAdd(&(u1_1.tint_symbol_10[0u]), 1u));
        let v_68 = (bitcast<u32>((bitcast<i32>(r1.x) * 1i)) + 0u);
        u1.tint_symbol_8[v_68] = bitcast<u32>(r0.x);
      }
    }
  }
}
