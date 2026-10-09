diagnostic(off, derivative_uniformity);

var<private> r0 : vec4<f32>;

var<private> r1 : vec4<f32>;

var<private> r2 : vec4<f32>;

var<private> r3 : vec4<f32>;

var<private> r4 : vec4<f32>;

var<private> r5 : vec4<f32>;

var<private> r6 : vec4<f32>;

struct cb19_struct {
  tint_symbol : array<vec4<f32>, 19u>,
}

@group(1u) @binding(2u) var<uniform> cb2_2 : cb19_struct;

struct cb18_struct {
  tint_symbol_1 : array<vec4<f32>, 18u>,
}

@group(1u) @binding(12u) var<uniform> cb12_12 : cb18_struct;

struct cb2_struct {
  tint_symbol_2 : array<vec4<f32>, 2u>,
}

@group(1u) @binding(11u) var<uniform> cb11_11 : cb2_struct;

@group(1u) @binding(18u) var s2 : sampler;

@group(1u) @binding(34u) var t2 : texture_2d<f32>;

@group(1u) @binding(44u) var t12 : texture_multisampled_2d<f32>;

var<private> v0 : vec4<f32>;

var<private> o0 : vec4<f32>;

fn main_inner(v : vec4<f32>, v1 : vec4<f32>, v3 : u32) {
  var v_1 : vec4<f32> = v;
  v_1.w = (1.0f / v.w);
  v0 = v_1;
  let v_2 = (v0.xy * cb12_12.tint_symbol_1[16u].zw);
  r0 = vec4<f32>(v_2.xy, r0.zw);
  r0 = textureSample(t2, s2, r0.xyxx.xy);
  r0.w = bitcast<f32>(select(0u, 4294967295u, (r0.w >= 0.94999998807907104492f)));
  if ((bitcast<u32>(r0.w) != 0u)) {
    let v_3 = (v1.xy * cb2_2.tint_symbol[18u].xy);
    r1 = vec4<f32>(v_3.xy, r1.zw);
    let v_4 = r1.xy;
    let v_5 = max(v_4, vec2<f32>(-2147483648.0f));
    let v_6 = bitcast<vec2<f32>>(select(select(vec2<i32>(v_5), vec2<i32>(2147483647i), (v_5 >= vec2<f32>(2147483648.0f))), vec2<i32>(), !((v_4 == v_4))));
    r1 = vec4<f32>(v_6.xy, r1.zw);
    r1 = vec4<f32>(r1.xy, vec2<f32>());
    r0.w = textureLoad(t12, bitcast<vec2<i32>>(r1.xy), bitcast<i32>(v3)).x;
    r0.w = ((-(r0.wwww)).w + cb12_12.tint_symbol_1[17u].w);
    r0.w = (r0.w + 1.0f);
    r0.w = (cb12_12.tint_symbol_1[17u].z / r0.w);
    let v_7 = textureSample(t2, s2, v1.xyxx.xy).xyz;
    r1 = vec4<f32>(v_7.xyz, r1.w);
    r1.w = (cb11_11.tint_symbol_2[1u].w + cb11_11.tint_symbol_2[1u].w);
    r0.w = (r1.w / r0.w);
    r1.w = bitcast<f32>(select(0u, 4294967295u, (0.0f < r0.w)));
    if ((bitcast<u32>(r1.w) != 0u)) {
      r2 = (r0.wwww * cb12_12.tint_symbol_1[16u].zwzw);
      r3 = fma(r2.zwzw, vec4<f32>(-0.87624317407608032227f, -0.40741339325904846191f, -0.1810252070426940918f, -0.38493719696998596191f), v1.xyxy);
      r4 = textureSampleLevel(t2, s2, r3.xyxx.xy, 0.0f);
      r0.w = ((-(r4.wwww)).w + 1.0f);
      let v_8 = -(r4.xyzx);
      let v_9 = (r1.xyz + v_8.xyz);
      r5 = vec4<f32>(v_9.xyz, r5.w);
      let v_10 = fma(r0.www, r5.xyz, r4.xyz);
      r4 = vec4<f32>(v_10.xyz, r4.w);
      let v_11 = (r4.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r4 = vec4<f32>(v_11.xyz, r4.w);
      let v_12 = (r4.xyz * vec3<f32>(0.03119019977748394012f, 0.00106171995867043734f, 0.0003139380132779479f));
      r4 = vec4<f32>(v_12.xyz, r4.w);
      let v_13 = fma(r1.xyz, vec3<f32>(0.39556199312210083008f, 0.81739199161529541016f, 0.93076699972152709961f), r4.xyz);
      r4 = vec4<f32>(v_13.xyz, r4.w);
      r3 = textureSampleLevel(t2, s2, r3.zwzz.xy, 0.0f);
      r0.w = ((-(r3.wwww)).w + 1.0f);
      let v_14 = -(r3.xyzx);
      let v_15 = (r1.xyz + v_14.xyz);
      r5 = vec4<f32>(v_15.xyz, r5.w);
      let v_16 = fma(r0.www, r5.xyz, r3.xyz);
      r3 = vec4<f32>(v_16.xyz, r3.w);
      let v_17 = (r3.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r3 = vec4<f32>(v_17.xyz, r3.w);
      let v_18 = fma(r3.xyz, vec3<f32>(0.07674080133438110352f, 0.02739620022475719452f, 0.00450140982866287231f), r4.xyz);
      r3 = vec4<f32>(v_18.xyz, r3.w);
      r4 = fma(r2.zwzw, vec4<f32>(-0.21483029425144195557f, 0.25383359193801879883f, -0.56793838739395141602f, -0.77376371622085571289f), v1.xyxy);
      r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
      r0.w = ((-(r5.wwww)).w + 1.0f);
      let v_19 = -(r5.xyzx);
      let v_20 = (r1.xyz + v_19.xyz);
      r6 = vec4<f32>(v_20.xyz, r6.w);
      let v_21 = fma(r0.www, r6.xyz, r5.xyz);
      r5 = vec4<f32>(v_21.xyz, r5.w);
      let v_22 = (r5.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r5 = vec4<f32>(v_22.xyz, r5.w);
      let v_23 = fma(r5.xyz, vec3<f32>(0.08719749748706817627f, 0.04731789976358413696f, 0.01432709954679012299f), r3.xyz);
      r3 = vec4<f32>(v_23.xyz, r3.w);
      r4 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
      r0.w = ((-(r4.wwww)).w + 1.0f);
      let v_24 = -(r4.xyzx);
      let v_25 = (r1.xyz + v_24.xyz);
      r5 = vec4<f32>(v_25.xyz, r5.w);
      let v_26 = fma(r0.www, r5.xyz, r4.xyz);
      r4 = vec4<f32>(v_26.xyz, r4.w);
      let v_27 = (r4.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r4 = vec4<f32>(v_27.xyz, r4.w);
      let v_28 = fma(r4.xyz, vec3<f32>(0.03159229829907417297f, 0.00109697005245834589f, 0.00032296500285156071f), r3.xyz);
      r3 = vec4<f32>(v_28.xyz, r3.w);
      r4 = fma(r2.zwzw, vec4<f32>(-0.84108817577362060547f, 0.28475201129913330078f, 0.25046670436859130859f, -0.77865022420883178711f), v1.xyxy);
      r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
      r0.w = ((-(r5.wwww)).w + 1.0f);
      let v_29 = -(r5.xyzx);
      let v_30 = (r1.xyz + v_29.xyz);
      r6 = vec4<f32>(v_30.xyz, r6.w);
      let v_31 = fma(r0.www, r6.xyz, r5.xyz);
      r5 = vec4<f32>(v_31.xyz, r5.w);
      let v_32 = (r5.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r5 = vec4<f32>(v_32.xyz, r5.w);
      let v_33 = fma(r5.xyz, vec3<f32>(0.03626539930701255798f, 0.00161670998204499483f, 0.00043618498602882028f), r3.xyz);
      r3 = vec4<f32>(v_33.xyz, r3.w);
      r4 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
      r0.w = ((-(r4.wwww)).w + 1.0f);
      let v_34 = -(r4.xyzx);
      let v_35 = (r1.xyz + v_34.xyz);
      r5 = vec4<f32>(v_35.xyz, r5.w);
      let v_36 = fma(r0.www, r5.xyz, r4.xyz);
      r4 = vec4<f32>(v_36.xyz, r4.w);
      let v_37 = (r4.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r4 = vec4<f32>(v_37.xyz, r4.w);
      let v_38 = fma(r4.xyz, vec3<f32>(0.04123120009899139404f, 0.00246015004813671112f, 0.00057173601817339659f), r3.xyz);
      r3 = vec4<f32>(v_38.xyz, r3.w);
      r4 = fma(r2.zwzw, vec4<f32>(0.22415879368782043457f, 0.02291071042418479919f, 0.07741809636354446411f, 0.88098371028900146484f), v1.xyxy);
      r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
      r0.w = ((-(r5.wwww)).w + 1.0f);
      let v_39 = -(r5.xyzx);
      let v_40 = (r1.xyz + v_39.xyz);
      r6 = vec4<f32>(v_40.xyz, r6.w);
      let v_41 = fma(r0.www, r6.xyz, r5.xyz);
      r5 = vec4<f32>(v_41.xyz, r5.w);
      let v_42 = (r5.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r5 = vec4<f32>(v_42.xyz, r5.w);
      let v_43 = fma(r5.xyz, vec3<f32>(0.10074499994516372681f, 0.08872459828853607178f, 0.04602330178022384644f), r3.xyz);
      r3 = vec4<f32>(v_43.xyz, r3.w);
      r4 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
      r0.w = ((-(r4.wwww)).w + 1.0f);
      let v_44 = -(r4.xyzx);
      let v_45 = (r1.xyz + v_44.xyz);
      r5 = vec4<f32>(v_45.xyz, r5.w);
      let v_46 = fma(r0.www, r5.xyz, r4.xyz);
      r4 = vec4<f32>(v_46.xyz, r4.w);
      let v_47 = (r4.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r4 = vec4<f32>(v_47.xyz, r4.w);
      let v_48 = fma(r4.xyz, vec3<f32>(0.03651100024580955505f, 0.00165053003001958132f, 0.00044253800297155976f), r3.xyz);
      r3 = vec4<f32>(v_48.xyz, r3.w);
      r4 = fma(r2.zwzw, vec4<f32>(-0.3951734006404876709f, 0.87045937776565551758f, 0.61541378498077392578f, 0.65761041641235351562f), v1.xyxy);
      r5 = textureSampleLevel(t2, s2, r4.xyxx.xy, 0.0f);
      r0.w = ((-(r5.wwww)).w + 1.0f);
      let v_49 = -(r5.xyzx);
      let v_50 = (r1.xyz + v_49.xyz);
      r6 = vec4<f32>(v_50.xyz, r6.w);
      let v_51 = fma(r0.www, r6.xyz, r5.xyz);
      r5 = vec4<f32>(v_51.xyz, r5.w);
      let v_52 = (r5.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r5 = vec4<f32>(v_52.xyz, r5.w);
      let v_53 = fma(r5.xyz, vec3<f32>(0.03183289989829063416f, 0.00111867999657988548f, 0.00032842298969626427f), r3.xyz);
      r3 = vec4<f32>(v_53.xyz, r3.w);
      r4 = textureSampleLevel(t2, s2, r4.zwzz.xy, 0.0f);
      r0.w = ((-(r4.wwww)).w + 1.0f);
      let v_54 = -(r4.xyzx);
      let v_55 = (r1.xyz + v_54.xyz);
      r5 = vec4<f32>(v_55.xyz, r5.w);
      let v_56 = fma(r0.www, r5.xyz, r4.xyz);
      r4 = vec4<f32>(v_56.xyz, r4.w);
      let v_57 = (r4.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r4 = vec4<f32>(v_57.xyz, r4.w);
      let v_58 = fma(r4.xyz, vec3<f32>(0.03541019931435585022f, 0.00150453997775912285f, 0.0004143610130995512f), r3.xyz);
      r3 = vec4<f32>(v_58.xyz, r3.w);
      r2 = fma(r2, vec4<f32>(0.67833167314529418945f, 0.1708182990550994873f, 0.63157308101654052734f, -0.4340712130069732666f), v1.xyxy);
      r4 = textureSampleLevel(t2, s2, r2.xyxx.xy, 0.0f);
      r0.w = ((-(r4.wwww)).w + 1.0f);
      let v_59 = -(r4.xyzx);
      let v_60 = (r1.xyz + v_59.xyz);
      r5 = vec4<f32>(v_60.xyz, r5.w);
      let v_61 = fma(r0.www, r5.xyz, r4.xyz);
      r4 = vec4<f32>(v_61.xyz, r4.w);
      let v_62 = (r4.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r4 = vec4<f32>(v_62.xyz, r4.w);
      let v_63 = fma(r4.xyz, vec3<f32>(0.05056919902563095093f, 0.00524900993332266808f, 0.0008626990020275116f), r3.xyz);
      r3 = vec4<f32>(v_63.xyz, r3.w);
      r2 = textureSampleLevel(t2, s2, r2.zwzz.xy, 0.0f);
      r0.w = ((-(r2.wwww)).w + 1.0f);
      let v_64 = -(r2.xyzx);
      let v_65 = (r1.xyz + v_64.xyz);
      r4 = vec4<f32>(v_65.xyz, r4.w);
      let v_66 = fma(r0.www, r4.xyz, r2.xyz);
      r2 = vec4<f32>(v_66.xyz, r2.w);
      let v_67 = (r2.xyz * cb11_11.tint_symbol_2[0u].xyz);
      r2 = vec4<f32>(v_67.xyz, r2.w);
      let v_68 = fma(r2.xyz, vec3<f32>(0.04515159875154495239f, 0.00341053004376590252f, 0.0006883289897814393f), r3.xyz);
      r1 = vec4<f32>(v_68.xyz, r1.w);
    }
    let v_69 = ((-(r0.xyzx)).xyz + r1.xyz);
    r1 = vec4<f32>(v_69.xyz, r1.w);
    let v_70 = fma(cb11_11.tint_symbol_2[1u].xxx, r1.xyz, r0.xyz);
    o0 = vec4<f32>(v_70.xyz, o0.w);
    o0.w = 1.0f;
  } else {
    let v_71 = r0;
    o0 = vec4<f32>(v_71.xyz, o0.w);
    o0.w = 1.0f;
  }
}

@fragment
fn main(@builtin(position) v_72 : vec4<f32>, @location(1u) v1 : vec4<f32>, @builtin(sample_index) v3 : u32) -> @location(0u) vec4<f32> {
  main_inner(v_72, v1, v3);
  return o0;
}
