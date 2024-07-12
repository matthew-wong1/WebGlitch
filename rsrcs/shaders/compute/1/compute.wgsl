struct Struct_1 {
  a: f32,
}

struct Struct_2 {
  a: vec2<f32>,
}

struct UniformBuffer {
  a: vec3<u32>,
  b: vec4<u32>,
}

struct StorageBuffer {
  a: vec3<i32>,
  b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: array<vec3<u32>, 9>;

var<private> global3: vec4<f32>;

var<private> global4: array<i32, 25>;

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
  return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
  return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
  return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
  return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
  return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
  return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
  return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
  return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
  return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
  return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
  return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
  return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
  return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
  return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
  return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
  return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
  return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
  return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
  return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
  return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
  return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
  return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
  return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
  return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
  return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
  return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
  return select(a % b, a, b == 0u);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> bool {
  let var_0 = !(21153u != abs(~(u_input.a.x >> (97683u % 32u))));
  let var_1 = arg_3.a;
  global0 = _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.a.xz << (vec2<u32>(4294967295u, ~select(u_input.b.x, u_input.a.x, true)) % vec2<u32>(32u)));
  global1 = select(!vec4<bool>(arg_0, var_0, !arg_0, var_0), !(!select(vec4<bool>(true, true, false, global1.x), select(vec4<bool>(false, false, var_0, arg_0), vec4<bool>(global1.x, false, arg_0, false), false), select(vec4<bool>(true, global1.x, arg_0, arg_0), vec4<bool>(false, global1.x, true, true), vec4<bool>(global1.x, true, true, true)))), global1.x);
  for (var var_2 = 10843; var_2 > -5998; var_2 += 1) {
      if (LOOP_COUNTERS[0u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
      global0 = u_input.b.x;
  }
  return !all(select(global1.zzx, global1.zwz, !vec3<bool>(global1.x, false, var_0)));
}

fn func_3(arg_0: f32, arg_1: bool) -> Struct_1 {
  switch (reverseBits(global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.a.x)), 25u)] ^ global4[_wgslsmith_index_u32(~u_input.b.x, 25u)])) {
      case -12931: {
          let var_0 = ~firstLeadingBit(_wgslsmith_sub_vec2_u32((vec2<u32>(u_input.b.x, 13669u) | vec2<u32>(u_input.a.x, u_input.b.x)) & u_input.b.zz, u_input.b.wy));
      }
      case -33654: {
          let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -312.0));
      }
      case 32531: {
          for (var var_0 = 2374; global1.x; var_0 = 43970) {
              if (LOOP_COUNTERS[1u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
              let var_1 = select(vec4<bool>(global1.x, _wgslsmith_add_u32(~u_input.a.x, ~40140u) > 14556u, all(!vec3<bool>(arg_1, arg_1, arg_1)), !false), vec4<bool>(any(global1.zzx), func_4(arg_1, _wgslsmith_f_op_f32(sign(global3.x)), global4[_wgslsmith_index_u32(u_input.a.x ^ _wgslsmith_sub_u32(47572u, 4294967295u), 25u)], Struct_2(_wgslsmith_f_op_vec2_f32(global3.wx - vec2<f32>(global3.x, -802.0)))), global1.x, -980.0 >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - _wgslsmith_f_op_f32(-arg_0))), select(vec4<bool>(arg_1, any(global1.xz), global1.x, all(global1.zz)), select(select(vec4<bool>(arg_1, true, true, false), select(vec4<bool>(arg_1, true, global1.x, arg_1), vec4<bool>(global1.x, true, false, true), arg_1), true), vec4<bool>(all(global1.zxx), global1.x, any(vec4<bool>(false, false, global1.x, true)), true), !(!vec4<bool>(true, true, true, true))), !(!vec4<bool>(true, true, arg_1, arg_1))));
          }
      }
      case 12612: {
          global1 = select(select(vec4<bool>(false, false, any(!global1.xyz), !arg_1), vec4<bool>(!false, any(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, true, global1.x, true), global1.x)), true, arg_1 & true), !select(select(vec4<bool>(global1.x, false, arg_1, global1.x), vec4<bool>(global1.x, global1.x, false, arg_1), vec4<bool>(global1.x, arg_1, global1.x, global1.x)), vec4<bool>(global1.x, arg_1, false, global1.x), arg_1)), !vec4<bool>(all(vec4<bool>(arg_1, true, false, false)), (-1000.0 == arg_0) | false, false, countOneBits(global4[_wgslsmith_index_u32(u_input.b.x, 25u)]) > global4[_wgslsmith_index_u32(46010u, 25u)]), select(select(!vec4<bool>(false, false, global1.x, arg_1), vec4<bool>(arg_1 & arg_1, !false, select(false, global1.x, arg_1), arg_1 || true), global1.x), !(!vec4<bool>(arg_1, true, arg_1, false)), vec4<bool>(!(!arg_1), _wgslsmith_f_op_f32(-global3.x) > 1291.0, _wgslsmith_mod_i32(-2147483648, global4[_wgslsmith_index_u32(u_input.a.x, 25u)]) < ~17882, !arg_1 || (arg_1 | true))));
      }
      default: {
          global2 = array<vec3<u32>, 9>();
      }
  }
  loop {
      if (LOOP_COUNTERS[2u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
      var var_0 = 1;
  }
  let var_0 = 1;
  loop {
      if (LOOP_COUNTERS[3u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
      switch (~(~(-12467))) {
          default: {
              var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(global3.wy)));
          }
      }
  }
  switch (abs(0)) {
      case 15477: {
          global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-415.0, global3.x, -218.0, 876.0), vec4<f32>(-1098.0, global3.x, -1106.0, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -515.0, 341.0, global3.x))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1037.0, arg_0, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + -476.0), 1465.0), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-465.0 * -201.0)), -123.0, global3.x, -1736.0), false)));
      }
      case 0: {
          switch (_wgslsmith_add_i32(3186, 2147483647)) {
              case 1: {
                  var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global3.yw + vec2<f32>(248.0, 239.0)), _wgslsmith_f_op_vec2_f32(-global3.xx))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global3.ww), vec2<f32>(411.0, 606.0)))))));
              }
              case -13482: {
                  var var_1 = Struct_1(arg_0);
              }
              default: {
                  let var_1 = _wgslsmith_clamp_i32(var_0, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.wyw, ~global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), 25u)], ~(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-5656, 1, var_0), vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0, 0)), -global4[_wgslsmith_index_u32(17256u, 25u)])));
              }
          }
      }
      case -1: {
          for (; ; ) {
              if (LOOP_COUNTERS[4u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
              let var_1 = Struct_1(_wgslsmith_f_op_f32(round(global3.x)));
          }
      }
      case -5988: {
          let var_1 = _wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240.0 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204.0, global3.x)))));
      }
      default: {
          let var_1 = vec2<i32>(~global4[_wgslsmith_index_u32(~(~u_input.a.x), 25u)], global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x), 25u)] >> (u_input.b.x % 32u));
      }
  }
  return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-596.0 - -1000.0), 546.0)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
  global1 = vec4<bool>(global1.x, !(!(!global1.x)), true, all(!select(!vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, false, false, true), global4[_wgslsmith_index_u32(u_input.a.x, 25u)] >= -2147483648)));
  for (var var_0 = 53111; ; var_0 += 1) {
      if (LOOP_COUNTERS[5u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
      continue;
  }
  for (; global1.x; ) {
      if (LOOP_COUNTERS[6u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
      continue;
  }
  if (any(!vec3<bool>(_wgslsmith_div_f32(519.0, -1000.0) < 1170.0, false, all(global1.xwx)))) {
      let var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(global3.x, -1477.0))))) - _wgslsmith_f_op_f32(596.0 - _wgslsmith_f_op_f32(global3.x - global3.x))), (global4[_wgslsmith_index_u32(~u_input.b.x, 25u)] >= ~(~(-17097))) && any(select(!vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(global1.x, arg_0, global1.x, true), !true)));
  }
  loop {
      if (LOOP_COUNTERS[7u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
      continue;
  }
  return func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a * 110.0))), any(global1.yzy));
}

fn func_2() -> Struct_1 {
  for (var var_0 = 15989; ; var_0 += 1) {
      if (LOOP_COUNTERS[8u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
      var var_1 = func_5(global1.x, func_3(319.0, false));
  }
  for (var var_0 = 2147483647; var_0 == -2147483648; ) {
      if (LOOP_COUNTERS[9u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
      global3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(538.0, -1252.0)), _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(f32(-1.0) * -628.0))), all(vec4<bool>(global1.x, global1.x, false, false)))), global3.x, -558.0, _wgslsmith_f_op_f32(sign(func_3(_wgslsmith_f_op_f32(global3.x * global3.x), true).a))), vec4<f32>(1282.0, _wgslsmith_f_op_f32(f32(-1.0) * -400.0), _wgslsmith_f_op_f32(f32(-1.0) * -674.0), -354.0));
  }
  var var_0 = -(i32(-1) * -1);
  var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-global3.wy));
  if (!false) {
      if (global1.x) {
          let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -203.0));
      }
  }
  return func_3(_wgslsmith_f_op_f32(sign(657.0)), global1.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
  var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * arg_0.x) - _wgslsmith_f_op_f32(arg_0.x + arg_2.a.x)))), arg_2.a.x, arg_0.x);
  switch (arg_1.x) {
      case -2147483648: {
          let var_1 = Struct_1(var_0.x);
      }
      case 37348: {
          if (global1.x) {
              let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-342.0))) - 1844.0);
          }
      }
      case 0: {
          for (var var_1 = 26930; false; ) {
              if (LOOP_COUNTERS[10u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
              let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(exp2(global3.x))))));
          }
      }
      default: {
          if (!all(global1.wy) || !false) {
              var var_1 = Struct_2(arg_2.a);
          }
      }
  }
  if (false) {
      loop {
          if (LOOP_COUNTERS[11u] >= 1u) {
              break;
          }
          (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
          global2 = array<vec3<u32>, 9>();
      }
  }
  var var_1 = func_2();
  var var_2 = 2147483647;
  return Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz)), arg_2.a, !func_4(false, _wgslsmith_f_op_f32(1000.0 - -907.0), global4[_wgslsmith_index_u32(55083u, 25u)], Struct_2(vec2<f32>(-1027.0, 1068.0))))));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
  var var_0 = arg_0;
  global2 = array<vec3<u32>, 9>();
  let var_1 = !vec3<bool>(!global1.x, 1 >= _wgslsmith_dot_vec3_i32(-vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)]), ~vec3<i32>(global4[_wgslsmith_index_u32(85528u, 25u)], -1, global4[_wgslsmith_index_u32(4747u, 25u)])), all(vec3<bool>(global1.x, true, false)));
  let var_2 = func_3(1916.0, true || true);
  var var_3 = ~(~83277u);
  return var_2;
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
  if (global1.x) {
      let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.xwz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-908.0, -1226.0, arg_3.a))))) + vec3<f32>(arg_3.a, 426.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))));
  }
  var var_0 = ~vec4<i32>(reverseBits(min(-91215, arg_2)), _wgslsmith_mod_i32(-abs(global4[_wgslsmith_index_u32(4294967295u, 25u)]), 2147483647), -41617, global4[_wgslsmith_index_u32(27406u, 25u)]);
  if (true) {
      var var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a.x, 1u, u_input.a.x), ~vec4<u32>(0u, 1u, 15342u, 1u)) << (_wgslsmith_clamp_vec4_u32(~u_input.b, u_input.b, ~u_input.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), 4294967295u, 0u, ~0u) << (vec4<u32>(~4294967295u, u_input.b.x, 27499u, countOneBits(19868u)) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(u_input.b.x), u_input.b.x, 0u, reverseBits(select(u_input.a.x, u_input.a.x, global1.x))));
  }
  if (all(global1.www)) {
      var_0 = ~vec4<i32>(-29237, var_0.x >> (~(1259u ^ 4294967295u) % 32u), _wgslsmith_dot_vec3_i32(firstTrailingBit(var_0.yyy), var_0.zzy), var_0.x);
  }
  for (var var_1 = 0; var_1 <= 28656; ) {
      if (LOOP_COUNTERS[12u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
      if (global1.x) {
          let var_2 = abs(15191u) <= ~(~(~u_input.b.x) << (~u_input.b.x % 32u));
      }
  }
  return any(vec4<bool>((_wgslsmith_f_op_f32(trunc(-1676.0)) != -1031.0) & true, global1.x, false, !(all(vec2<bool>(global1.x, true)) && !false)));
}

@compute @workgroup_size(1) fn main() {
  let var_0 = max(49, min(-7144, -(-31344 >> (_wgslsmith_add_u32(4294967295u, u_input.b.x) % 32u))));
  if (u_input.b.x < 37880u) {
      let var_1 = all(global1.xxz);
  }
  switch (_wgslsmith_sub_i32(-2147483648, var_0)) {
      case 1: {
          global0 = u_input.b.x;
      }
      case 2147483647: {
          if (global1.x) {
              let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(var_0, global4[_wgslsmith_index_u32(abs(u_input.a.x), 25u)]), _wgslsmith_add_vec2_i32((vec2<i32>(25103, -441) | countOneBits(vec2<i32>(global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)]))) & ~_wgslsmith_mod_vec2_i32(vec2<i32>(-65173, -2147483648), vec2<i32>(39264, 7200)), vec2<i32>(0, ~_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], -2147483648))));
          }
      }
      case -2147483648: {
          if (all(vec3<bool>(global1.x, any(!global1.yw), func_7(global3.x, func_6(func_1(vec4<f32>(-476.0, -409.0, 1188.0, 1513.0), vec2<i32>(51941, var_0), Struct_2(global3.xx))), 23457, Struct_1(_wgslsmith_div_f32(1049.0, -583.0)))))) {
              global0 = ~firstLeadingBit(~u_input.a.x);
          }
      }
      case 0: {
          for (; ; ) {
              if (LOOP_COUNTERS[13u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
              break;
          }
      }
      default: {
          global1 = !(!(!vec4<bool>(false, !global1.x, all(vec4<bool>(global1.x, true, global1.x, true)), select(global1.x, global1.x, global1.x))));
      }
  }
  let var_1 = func_5(global1.x, func_5(true, func_2()));
  switch (~firstLeadingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], 35875), vec2<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 25u)], global4[_wgslsmith_index_u32(47051u, 25u)]))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(max(u_input.b.x, abs(4294967295u)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), ~global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), ~_wgslsmith_mod_u32(u_input.a.x, 4294967295u)), ((vec4<u32>(48647u, 4294967295u, 0u, 37720u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 0u)) & ~vec4<u32>(0u, u_input.b.x, 19226u, u_input.b.x)) & reverseBits(min(u_input.b, vec4<u32>(20699u, 1u, u_input.a.x, u_input.b.x)))) % 32u)) {
      case -2147483648: {
          let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-338.0, 483.0, global1.x)))))));
      }
      case 1: {
          loop {
              if (LOOP_COUNTERS[14u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
              global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-751.0, -1138.0, 693.0, 429.0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, -166.0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 164.0, var_1.a, 1385.0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -2960.0, var_1.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, 1882.0, global3.x, 243.0)))), false)), !select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, false), select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(false, true, global1.x, false), true)))));
          }
      }
      case 6159: {
          if (!func_4(func_7(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, -1336.0), var_1.a), func_6(func_1(vec4<f32>(2263.0, 103.0, -279.0, var_1.a), vec2<i32>(global4[_wgslsmith_index_u32(1965u, 25u)], var_0), Struct_2(global3.yw))), -(~33044), var_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a + -1769.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), 522.0)), var_0, Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3.yz, vec2<f32>(-784.0, var_1.a), vec2<bool>(false, true))), vec2<f32>(-1321.0, var_1.a))))) {
              global1 = !vec4<bool>(!(!true), !(1 > 0), global1.x, 11714u != min(min(35281u, u_input.b.x), abs(59174u)));
          }
      }
      case -1: {
          loop {
              if (LOOP_COUNTERS[15u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
              continue;
          }
      }
      default: {
          loop {
              if (LOOP_COUNTERS[16u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
              continue;
          }
      }
  }
  global4 = array<i32, 25>();
  global4 = array<i32, 25>();
  let x = u_input.a;
  s_output = StorageBuffer(countOneBits(vec3<i32>(~global4[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_sub_i32(-27366, var_0), global4[_wgslsmith_index_u32(u_input.b.x, 25u)] & var_0) << (abs(firstLeadingBit(vec3<u32>(u_input.a.x, 42572u, 1u))) % vec3<u32>(32u))), ~vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1, global4[_wgslsmith_index_u32(45815u, 25u)], -33515, -1081), vec4<i32>(-3986, -36342, global4[_wgslsmith_index_u32(u_input.b.x, 25u)], -25654)), select(vec4<i32>(-2147483648, -11921, -1, -49781), vec4<i32>(2147483647, 2748, -6928, global4[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(true, global1.x, true, false))), abs(global4[_wgslsmith_index_u32(49209u, 25u)] >> (u_input.a.x % 32u)), min(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0), 0));
}
