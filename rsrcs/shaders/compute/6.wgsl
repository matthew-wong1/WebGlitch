// {"0:0":[139,56,11,63,22,53,104,27,36,233,36,41,38,56,206,231,66,96,31,32,202,49,29,16,37,212,218,62,38,116,140,241,247,41,131,67,29,16,149,220,55,97,85,102,206,6,118,40]}
// Seed: 6144788239251740427

struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 13>;

var<private> LOOP_COUNTERS: array<u32, 15>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> i32 {
    global1 = array<Struct_2, 13>();
    if (true) {
    }
    if (!false) {
    }
    let var_0 = countOneBits(~min(select(firstLeadingBit(vec2<i32>(u_input.c, u_input.c)), ~vec2<i32>(u_input.c, u_input.c), arg_1.a.b), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -1), vec4<i32>(u_input.c, 1, -40249, -1)), -2147483648 & 34005)));
    global0 = 86893 << (select(countOneBits(22940u), u_input.b.x, !true) % 32u);
    return var_0.x;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    switch (u_input.c) {
        case -2147483648: {
        }
        case 2147483647: {
        }
        case -16533: {
            let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, 1047.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(264.0 - 429.0), arg_1)));
            for (var var_1 = func_6(~30724u, Struct_2(Struct_1(~(~vec4<u32>(0u, u_input.b.x, arg_2.x, u_input.a)), true), (arg_0 && arg_0) && arg_0)); var_1 == 48760; ) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                return 39176u;
            }
            let var_1 = Struct_1(~firstTrailingBit(~vec4<u32>(14144u, u_input.b.x, 0u, 3288u)), !((u_input.b.x << (2671u % 32u)) <= 57081u));
            global0 = 0;
            if (all(select(vec3<bool>(true && !false, !var_1.b, any(!vec2<bool>(false, true))), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, var_1.b), vec3<bool>(true, true, var_1.b))), var_1.b))) {
                let var_2 = select(!select(!vec2<bool>(var_1.b, true), select(!vec2<bool>(var_1.b, true), select(vec2<bool>(false, true), vec2<bool>(var_1.b, true), arg_0), var_1.b), arg_2.x < 93432u), vec2<bool>(true, true), any(select(select(!vec3<bool>(true, arg_0, true), select(vec3<bool>(true, true, arg_0), vec3<bool>(true, var_1.b, arg_0), vec3<bool>(var_1.b, var_1.b, var_1.b)), var_0.x != var_0.x), vec3<bool>(all(vec2<bool>(var_1.b, var_1.b)), !arg_0, select(false, var_1.b, var_1.b)), select(select(vec3<bool>(false, var_1.b, true), vec3<bool>(arg_0, var_1.b, true), vec3<bool>(var_1.b, true, false)), vec3<bool>(false, true, var_1.b), !vec3<bool>(false, false, true)))));
                global0 = -countOneBits(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, u_input.c), 0)) >> (47642u % 32u);
                var var_3 = var_1;
                var var_4 = !(!(!(!(!false))));
            }
        }
        case 22505: {
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var var_0 = _wgslsmith_mod_vec3_i32(-abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -23795, u_input.c), vec3<i32>(u_input.c, 66710, 40961)) << (arg_2 % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32((vec3<i32>(u_input.c, u_input.c, 0) & vec3<i32>(-29697, u_input.c, u_input.c)) >> (select(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(4294967295u, arg_2.x, 62390u), vec3<bool>(arg_0, true, true)) % vec3<u32>(32u)), reverseBits(~vec3<i32>(u_input.c, u_input.c, 9697))), firstTrailingBit(max(~vec3<i32>(u_input.c, u_input.c, -7634), vec3<i32>(2147483647, -6245, u_input.c) << (vec3<u32>(u_input.a, arg_2.x, u_input.a) % vec3<u32>(32u))))));
                global1 = array<Struct_2, 13>();
                var var_1 = 0u;
                var_0 = vec3<i32>(u_input.c << (firstLeadingBit(19553u) % 32u), 45565, -25271);
                var_0 = firstLeadingBit(vec3<i32>(var_0.x, var_0.x, 0)) << (select(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, arg_2.x, 9493u), u_input.b.yxz), _wgslsmith_add_vec3_u32(~arg_2, arg_2)), vec3<u32>(~u_input.b.x, u_input.a, max(1u, ~13095u)), arg_0) % vec3<u32>(32u));
            }
            let var_0 = min(~u_input.b.x, firstLeadingBit(u_input.a));
            let var_1 = !(((-u_input.c <= -1) | !(arg_0 || arg_0)) & any(!(!vec2<bool>(arg_0, arg_0))));
            for (var var_2 = 1; var_2 == -1; var_2 -= 1) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                break;
            }
        }
        default: {
            let var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -467.0);
            switch (max(34645, countOneBits(-1))) {
                case -1: {
                    let var_1 = vec3<i32>(-1, ~(~abs(1)), -1);
                }
                case 0: {
                    var var_1 = select(select(select(select(vec4<bool>(false, false, arg_0, arg_0), !vec4<bool>(true, arg_0, arg_0, false), false), select(!vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, arg_0, false, false), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, true, arg_0, arg_0), true)), !arg_0), !(!(!vec4<bool>(arg_0, true, arg_0, arg_0))), vec4<bool>(arg_0 & arg_0, _wgslsmith_f_op_f32(min(var_0, arg_1)) >= -134.0, _wgslsmith_f_op_f32(arg_1 + arg_1) > _wgslsmith_f_op_f32(round(-1348.0)), all(vec4<bool>(arg_0, true, true, true)))), select(!select(vec4<bool>(false, arg_0, arg_0, false), select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, false, false), false), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !vec4<bool>(select(false, arg_0, true), u_input.a != u_input.b.x, arg_0, all(vec4<bool>(true, false, arg_0, arg_0))), !arg_0 && arg_0), select(arg_0, true, var_0 < _wgslsmith_f_op_f32(step(arg_1, arg_1))));
                    var var_2 = ~(-(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, -14256), vec3<i32>(u_input.c, 0, u_input.c)) << (~u_input.b.x % 32u)));
                }
                case 1: {
                    let var_1 = Struct_3(arg_0, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(arg_2), ~vec3<u32>(~69244u, ~u_input.a, ~1u)), 13u)], _wgslsmith_f_op_f32(select(879.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353.0)), !(!any(vec3<bool>(false, arg_0, false))))));
                    var var_2 = all(vec2<bool>(all(select(vec4<bool>(var_1.b.b, false, var_1.a, true), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, var_1.a, arg_0, false))), !arg_0 && !var_1.a)) && !(arg_0 & (all(vec3<bool>(var_1.a, arg_0, arg_0)) != all(vec3<bool>(false, true, var_1.b.a.b))));
                }
                default: {
                    var var_1 = abs(vec2<u32>(~select(arg_2.x, arg_2.x, arg_0), u_input.b.x)) >> ((reverseBits(vec2<u32>(_wgslsmith_mod_u32(arg_2.x, 8015u), ~u_input.a)) >> ((vec2<u32>(reverseBits(u_input.b.x), select(82559u, u_input.a, true)) >> (~(~vec2<u32>(18231u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
                    global1 = array<Struct_2, 13>();
                    var var_2 = (u_input.b.x >> (u_input.b.x % 32u)) ^ ~14057u;
                    var var_3 = Struct_3(arg_0, global1[_wgslsmith_index_u32(u_input.a, 13u)], _wgslsmith_div_f32(-1462.0, var_0));
                    var var_4 = ((var_3.b.b && arg_0) != (false != arg_0)) && !true;
                }
            }
            global0 = u_input.c;
            return ~32083u;
        }
    }
    global1 = array<Struct_2, 13>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766.0)))), arg_1));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), 243.0), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1000.0, -844.0))))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 - 169.0)), _wgslsmith_f_op_f32(floor(var_0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x)))) - _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(round(1693.0))))), _wgslsmith_f_op_f32(sign(arg_1))));
    let var_2 = !vec4<bool>(true, all(select(!vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0)), !false, arg_0);
    return min(max(4207u, _wgslsmith_dot_vec4_u32(firstTrailingBit(~u_input.b), u_input.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_2.x, arg_2.x), ~u_input.b.xwy), vec3<u32>(u_input.b.x, firstLeadingBit(0u), abs(u_input.b.x))), ~(~(arg_2 ^ arg_2))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> vec2<f32> {
    global0 = ~u_input.c;
    return vec2<f32>(_wgslsmith_f_op_f32(-1601.0), -1158.0);
}

fn func_8(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> Struct_3 {
    if (!(!arg_1.b)) {
        let var_0 = u_input.b.yz;
    }
    let var_0 = _wgslsmith_f_op_f32(-904.0);
    switch (u_input.c) {
        default: {
        }
    }
    global1 = array<Struct_2, 13>();
    let var_1 = _wgslsmith_clamp_u32(arg_1.a.a.x, abs(arg_3) & ~_wgslsmith_dot_vec3_u32(arg_1.a.a.zxx, countOneBits(u_input.b.wxz)), ~51502u);
    return Struct_3(true, arg_1, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(select(1034.0, 113.0, arg_1.b))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> vec3<bool> {
    for (; true; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        let var_0 = arg_0.b;
        let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-316.0, arg_0.c)), _wgslsmith_div_f32(179.0, -264.0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-708.0, arg_2), vec2<f32>(arg_2, arg_2)))) * vec2<f32>(-834.0, _wgslsmith_f_op_f32(-1000.0))));
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_2 = ~u_input.c;
        }
        break;
    }
    global0 = 1;
    var var_0 = arg_0;
    switch (-2147483648) {
        case -16024: {
            var_0 = func_8(_wgslsmith_f_op_vec2_f32(func_7(Struct_1(vec4<u32>(func_5(arg_1.a.b, arg_0.c, vec3<u32>(var_0.b.a.a.x, arg_0.b.a.a.x, arg_1.a.a.x)), 4294967295u, 41988u, 44939u), _wgslsmith_add_i32(u_input.c, u_input.c) < -1), Struct_3(!var_0.b.b, Struct_2(var_0.b.a, any(vec2<bool>(true, arg_0.b.b))), _wgslsmith_f_op_f32(-arg_0.c)), select(271.0 == _wgslsmith_div_f32(342.0, 205.0), any(select(vec3<bool>(arg_0.b.a.b, false, arg_1.a.b), vec3<bool>(var_0.b.b, true, arg_3), vec3<bool>(arg_3, true, true))), arg_1.a.b))), global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000.0)), _wgslsmith_div_f32(arg_0.c, 589.0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(-var_0.c)))), arg_1.a.a.x);
            switch (7511) {
                case -2540: {
                    return !select(!select(!vec3<bool>(false, true, arg_0.b.a.b), vec3<bool>(var_0.a, true, false), !vec3<bool>(arg_0.b.b, true, arg_3)), !select(vec3<bool>(arg_1.a.b, false, arg_1.a.b), select(vec3<bool>(arg_1.b, arg_0.a, false), vec3<bool>(false, false, var_0.a), false), vec3<bool>(var_0.b.a.b, false, arg_0.a)), !any(!vec3<bool>(arg_0.a, arg_0.b.b, true)));
                }
                case -65596: {
                }
                case -50440: {
                    var_0 = Struct_3(func_8(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -282.0)), arg_2), var_0.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-860.0, _wgslsmith_div_f32(1631.0, 1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -1182.0), _wgslsmith_f_op_f32(step(-246.0, -405.0))))), ~(~arg_1.a.a.x)).a, Struct_2(Struct_1(var_0.b.a.a, true | false), !(all(vec3<bool>(true, true, false)) & (true && true))), arg_0.c);
                    var_0 = func_8(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1.0) * -951.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))), Struct_2(Struct_1(var_0.b.a.a, func_8(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -1187.0) - vec2<f32>(2318.0, arg_0.c)), func_8(vec2<f32>(arg_0.c, var_0.c), arg_1, vec4<f32>(arg_0.c, arg_0.c, -303.0, arg_2), 77962u).b, vec4<f32>(-712.0, -216.0, -123.0, -556.0), 55291u).a), u_input.a >= 97422u), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_2), var_0.c, var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1081.0, var_0.c, 905.0, var_0.c)))))), ~arg_0.b.a.a.x ^ func_8(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_7(Struct_1(vec4<u32>(0u, arg_0.b.a.a.x, 46139u, 67670u), arg_1.a.b), Struct_3(arg_0.b.a.b, Struct_2(arg_1.a, true), -1140.0), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_2)))), func_8(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c, 698.0), vec2<f32>(arg_2, 252.0))), var_0.b, vec4<f32>(arg_0.c, 525.0, var_0.c, 1034.0), 1u).b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(145.0, 804.0, 1000.0, -619.0), vec4<f32>(-1000.0, -1167.0, -707.0, -179.0))))), 12633u).b.a.a.x);
                    global1 = array<Struct_2, 13>();
                    var var_1 = func_8(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), Struct_2(func_8(vec2<f32>(_wgslsmith_div_f32(arg_0.c, -665.0), 1829.0), Struct_2(Struct_1(arg_0.b.a.a, arg_1.a.b), !true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(722.0, arg_0.c, arg_0.c, 1000.0)), firstLeadingBit(_wgslsmith_sub_u32(var_0.b.a.a.x, arg_0.b.a.a.x))).b.a, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -777.0, -1000.0, -167.0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-218.0, arg_2, -579.0, var_0.c), vec4<f32>(-279.0, arg_0.c, arg_0.c, -1163.0), false)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(327.0, -657.0, arg_2, 172.0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-388.0, 1105.0, 933.0, arg_2)), vec4<f32>(1688.0, 655.0, arg_0.c, var_0.c))))), 4294967295u).b;
                    var var_2 = u_input.c;
                }
                case 0: {
                    global0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-(-21686 & _wgslsmith_mult_i32(u_input.c, u_input.c)), firstLeadingBit(29949), _wgslsmith_add_i32(u_input.c, 0)), _wgslsmith_clamp_i32(23530, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, u_input.c), vec2<i32>(u_input.c, -9855)) ^ 0, i32(-1) * -2147483647), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, max(-3684, 1), abs(-63710), 28043), min(vec4<i32>(u_input.c, 0, 1, 4671), firstTrailingBit(vec4<i32>(0, u_input.c, u_input.c, u_input.c))))));
                    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1147.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1501.0 * arg_2))))));
                }
                default: {
                    let var_1 = arg_0;
                }
            }
        }
        case -19061: {
        }
        case 12556: {
            var var_1 = !true;
            return vec3<bool>(arg_1.b != false, arg_0.a, arg_0.a);
        }
        default: {
            let var_1 = (u_input.b.xzx | arg_0.b.a.a.zxx) ^ (firstTrailingBit(arg_0.b.a.a.yyy) >> (arg_0.b.a.a.zwy % vec3<u32>(32u)));
            global1 = array<Struct_2, 13>();
            let var_2 = var_0.b;
            var var_3 = arg_0.b.a.a.zwz;
            let var_4 = var_0.b.a.a.yyw;
        }
    }
    switch (select(reverseBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-15056, 41823, u_input.c, u_input.c), vec4<i32>(-25148, 0, 1899, 0), arg_1.a.b), ~vec4<i32>(-3442, u_input.c, 1, 38202))) >> (((1u ^ _wgslsmith_clamp_u32(26958u, u_input.b.x, 27104u)) & max(arg_1.a.a.x, 47039u)) % 32u), _wgslsmith_clamp_i32(-2147483647, ~(i32(-1) * -32631), select(u_input.c, countOneBits(-52468), 0 == u_input.c)) | 2147483647, 29306 == u_input.c)) {
        default: {
            global0 = u_input.c;
            let var_1 = _wgslsmith_add_vec4_u32(arg_0.b.a.a, ~vec4<u32>(func_5(false && arg_0.a, 1270.0, vec3<u32>(11929u, 59555u, 1u)), 1u, _wgslsmith_div_u32(~arg_0.b.a.a.x, abs(var_0.b.a.a.x)), var_0.b.a.a.x));
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var_0 = func_8(vec2<f32>(711.0, _wgslsmith_f_op_f32(-arg_2)), func_8(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, arg_0.c) + vec2<f32>(var_0.c, arg_2)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -860.0), _wgslsmith_f_op_f32(-arg_0.c)))), func_8(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-599.0, -1022.0)), Struct_2(arg_0.b.a, any(vec4<bool>(true, arg_3, var_0.b.a.b, arg_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-655.0, 452.0, 1000.0, var_0.c) - vec4<f32>(arg_0.c, var_0.c, var_0.c, 883.0)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000.0, 1642.0, arg_0.c, -641.0)))), arg_0.b.a.a.x).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-589.0, arg_2, 142.0, 2190.0)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1802.0, -1000.0, 231.0, var_0.c), vec4<f32>(arg_2, arg_2, 192.0, 805.0)))), ~1u).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(abs(694.0))), 1516.0, -2278.0, _wgslsmith_div_f32(1000.0, 131.0)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1184.0, var_0.c, 1678.0)), vec4<f32>(var_0.c, -772.0, -832.0, -580.0)))))), firstLeadingBit(23159u));
                var var_2 = _wgslsmith_div_vec4_u32(~arg_0.b.a.a, arg_1.a.a) | vec4<u32>(var_0.b.a.a.x, ~arg_0.b.a.a.x >> (_wgslsmith_div_u32(1u, firstTrailingBit(35144u)) % 32u), arg_0.b.a.a.x, 0u);
                global1 = array<Struct_2, 13>();
                var var_3 = Struct_1(~vec4<u32>(countOneBits(var_2.x), ~var_0.b.a.a.x, ~1u, ~(~3456u)), all(select(!select(vec2<bool>(arg_1.a.b, true), vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, false)), vec2<bool>(var_0.b.b && false, any(vec3<bool>(arg_0.b.b, arg_1.a.b, var_0.a))), !(!arg_0.a))));
            }
            let var_2 = firstLeadingBit((~(-vec2<i32>(35613, u_input.c)) >> ((~var_0.b.a.a.wz ^ vec2<u32>(var_1.x, arg_0.b.a.a.x)) % vec2<u32>(32u))) & abs(abs(vec2<i32>(-17616, -18137)) ^ min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0, 20036))));
        }
    }
    return select(!vec3<bool>(all(vec3<bool>(arg_1.a.b, arg_3, true)), func_8(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_2) * vec2<f32>(var_0.c, -199.0)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 38855u), 13u)], vec4<f32>(arg_0.c, -310.0, -372.0, arg_0.c), _wgslsmith_mod_u32(arg_1.a.a.x, 4294967295u)).a, select(!true, 21396u >= arg_0.b.a.a.x, arg_3)), !vec3<bool>(arg_1.a.b, any(vec3<bool>(arg_3, true, false)), abs(u_input.c) > -u_input.c), !(!select(!vec3<bool>(arg_1.a.b, arg_3, true), select(vec3<bool>(false, arg_1.a.b, arg_3), vec3<bool>(false, true, false), vec3<bool>(true, true, arg_3)), select(vec3<bool>(false, var_0.a, true), vec3<bool>(true, true, arg_3), var_0.a))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    return !(!select(vec3<bool>(!true, arg_1.a.b, !arg_1.b), !func_4(Struct_3(false, Struct_2(arg_1.a, arg_1.b), -2355.0), global1[_wgslsmith_index_u32(1u, 13u)], -857.0, false), func_4(Struct_3(false, Struct_2(arg_1.a, true), 1033.0), global1[_wgslsmith_index_u32(~82393u, 13u)], -1064.0, 2147483647 < -1)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = select(arg_2.yyx, func_3(arg_3.a.x, global1[_wgslsmith_index_u32(arg_3.a.x, 13u)]), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -2513.0), _wgslsmith_f_op_vec2_f32(func_7(Struct_1(arg_3.a, false), Struct_3(true, Struct_2(Struct_1(arg_3.a, true), false), -443.0), true)).x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1831.0, -1000.0)), _wgslsmith_div_f32(796.0, -360.0)))), _wgslsmith_f_op_vec2_f32(func_7(Struct_1(firstLeadingBit(arg_3.a), arg_3.b), func_8(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-740.0, -1389.0))), global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1426.0, 343.0, 1890.0, -501.0))), arg_3.a.x), !(!true))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678.0)))));
    let var_2 = ~vec2<u32>(~_wgslsmith_div_u32(51145u, 22165u), _wgslsmith_mult_u32(~(4294967295u >> (arg_0.a.x % 32u)), _wgslsmith_clamp_u32(~16574u, arg_0.a.x, ~u_input.a)));
    let var_3 = var_1.xy;
    let var_4 = abs(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, 0, u_input.c, arg_1), vec4<i32>(-15094, arg_1, 0, 19544)) | vec4<i32>(u_input.c, 2147483647, -34104, 80411), abs(select(vec4<i32>(-1, -1, arg_1, u_input.c), vec4<i32>(u_input.c, 0, arg_1, -21305), arg_3.b))), u_input.c));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -599.0) + vec3<f32>(282.0, var_1.x, var_1.x))))))));
}

fn func_9(arg_0: vec3<f32>) -> vec2<i32> {
    let var_0 = ~abs(u_input.b);
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
    }
    for (; !(!(u_input.c != (i32(-1) * -u_input.c))); ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    switch (0) {
        case -2147483648: {
            switch (1) {
                case -1: {
                    var var_1 = firstTrailingBit(abs(_wgslsmith_sub_i32(firstTrailingBit(-17722), u_input.c) | u_input.c));
                    let var_2 = false;
                }
                case 2147483647: {
                    global0 = 37780;
                    let var_1 = !(!(!(!func_3(11957u, global1[_wgslsmith_index_u32(u_input.a, 13u)]).xz)));
                    var var_2 = true;
                    var var_3 = ~(~(~(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.c)) | max(vec3<i32>(u_input.c, -46274, -2147483648), vec3<i32>(-2147483648, u_input.c, u_input.c)))));
                }
                case 33810: {
                    global0 = -u_input.c;
                    var var_1 = _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-u_input.c, u_input.c)), vec2<i32>(u_input.c, firstTrailingBit(~0 | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -4250), vec2<i32>(-1, -21506)))));
                }
                default: {
                    global0 = -1;
                    var var_1 = Struct_3(!true, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
                    var var_2 = func_8(arg_0.yx, Struct_2(func_8(_wgslsmith_f_op_vec3_f32(func_2(func_8(arg_0.xx, Struct_2(Struct_1(vec4<u32>(13966u, 4294967295u, u_input.b.x, 0u), var_1.b.b), var_1.a), vec4<f32>(arg_0.x, 1039.0, arg_0.x, arg_0.x), u_input.a).b.a, 30550 | u_input.c, !vec4<bool>(var_1.b.a.b, false, var_1.a, true), Struct_1(u_input.b, false))).xy, func_8(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 144.0)), var_1.b, vec4<f32>(arg_0.x, -1279.0, -334.0, 1263.0), _wgslsmith_mult_u32(u_input.a, u_input.b.x)).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1033.0, -566.0, 780.0, var_1.c))), var_1.b.a.a.x).b.a, var_1.a), vec4<f32>(_wgslsmith_f_op_f32(-1548.0 - 915.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -560.0))), -786.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(func_2(var_1.b.a, select(u_input.c, -1, var_1.b.b), vec4<bool>(true, var_1.b.a.b, false, var_1.a), Struct_1(u_input.b, var_1.b.b))).x))), 39172u);
                    let var_3 = var_1.b.a.b;
                    var var_4 = Struct_1(abs(u_input.b), var_2.a);
                }
            }
            var var_1 = select(vec2<i32>(-func_6(firstTrailingBit(36127u), Struct_2(Struct_1(vec4<u32>(59229u, 4294967295u, 11646u, var_0.x), false), true)), -_wgslsmith_clamp_i32(1, -2147483647, 12426 ^ -34970)), max(vec2<i32>(reverseBits(-1), u_input.c), firstTrailingBit(vec2<i32>(61636, u_input.c))) << (var_0.yx % vec2<u32>(32u)), any(select(!vec4<bool>(false, false, true, true), !vec4<bool>(false, false, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true))));
            for (var var_2 = -8559; var_2 == -2147483648; global1 = array<Struct_2, 13>()) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_3 = func_8(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 268.0) - _wgslsmith_f_op_f32(-arg_0.x)))), func_8(_wgslsmith_f_op_vec2_f32(arg_0.xy * _wgslsmith_f_op_vec3_f32(func_2(Struct_1(u_input.b, false), u_input.c, select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), func_8(vec2<f32>(362.0, arg_0.x), global1[_wgslsmith_index_u32(30669u, 13u)], vec4<f32>(arg_0.x, 1381.0, -233.0, -1128.0), u_input.b.x).b.a)).zz), global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits(~u_input.b.x)), 13u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 233.0, arg_0.x, arg_0.x))), ~_wgslsmith_mult_u32(u_input.b.x, 5461u & var_0.x)).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-652.0, 265.0, arg_0.x, arg_0.x), vec4<f32>(-476.0, -126.0, arg_0.x, -1199.0), true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1678.0, 736.0, 1025.0, arg_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1000.0, 984.0, _wgslsmith_f_op_f32(sign(arg_0.x))))), ~var_0.x);
                break;
            }
        }
        case -1: {
            global1 = array<Struct_2, 13>();
            let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_7(Struct_1(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 8915u), 1681 < u_input.c), Struct_3(false || false, Struct_2(Struct_1(vec4<u32>(var_0.x, u_input.b.x, u_input.b.x, 0u), true), true), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(u_input.b, false), 1, vec4<bool>(false, true, false, false), Struct_1(u_input.b, false))).x), arg_0.x >= _wgslsmith_f_op_f32(-arg_0.x))).x, -1359.0, _wgslsmith_f_op_f32(f32(-1.0) * -985.0), arg_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(220.0, -1221.0, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, 170.0, arg_0.x, arg_0.x)), vec4<f32>(arg_0.x, 750.0, arg_0.x, 1664.0))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-890.0)), _wgslsmith_f_op_f32(-arg_0.x), -702.0, arg_0.x)));
            var var_2 = func_8(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(685.0, _wgslsmith_div_f32(1750.0, 275.0))))), Struct_2(Struct_1(~var_0, !all(vec3<bool>(false, false, true))), u_input.c <= 1), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297.0 * var_1.x)) - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -562.0)), func_8(_wgslsmith_f_op_vec2_f32(func_7(func_8(vec2<f32>(939.0, var_1.x), Struct_2(Struct_1(u_input.b, false), false), vec4<f32>(arg_0.x, var_1.x, var_1.x, 101.0), var_0.x).b.a, func_8(vec2<f32>(arg_0.x, 1414.0), global1[_wgslsmith_index_u32(4294967295u, 13u)], var_1, 4294967295u), !false)), func_8(_wgslsmith_f_op_vec2_f32(-arg_0.zy), global1[_wgslsmith_index_u32(max(var_0.x, var_0.x), 13u)], vec4<f32>(-357.0, 258.0, var_1.x, arg_0.x), u_input.a).b, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1688.0, _wgslsmith_f_op_f32(f32(-1.0) * -1234.0), _wgslsmith_f_op_f32(round(arg_0.x))), ~_wgslsmith_dot_vec3_u32(u_input.b.ywx, var_0.zzx)).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-107.0, arg_0.x)) + _wgslsmith_f_op_f32(-var_1.x))), firstLeadingBit(~(~(~70144u))));
            if (var_2.a) {
                let var_3 = _wgslsmith_mult_vec2_i32(countOneBits(~(~(vec2<i32>(20648, 3607) | vec2<i32>(u_input.c, 9692)))), vec2<i32>(-99, -42609) | countOneBits(firstTrailingBit(vec2<i32>(2147483647, u_input.c) ^ vec2<i32>(u_input.c, 0))));
                global1 = array<Struct_2, 13>();
                return var_3;
            }
            var_2 = Struct_3(!false, func_8(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yx)), var_2.b, vec4<f32>(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x + 509.0))), 936.0), 8673u).b, 1182.0);
        }
        default: {
            for (var var_1 = -2147483648; true; var_1 -= 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                global0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c, _wgslsmith_div_i32(-2147483648, u_input.c), u_input.c, -56030), abs(-vec4<i32>(u_input.c, -1, 26158, -1)))), -abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -50321, 0, u_input.c), vec4<i32>(2147483647, 0, -40398, 13490))) >> (~(~u_input.b) % vec4<u32>(32u)));
                var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931.0 + _wgslsmith_f_op_f32(arg_0.x * -1462.0)) + 658.0), arg_0.x, _wgslsmith_f_op_f32(559.0 - -1000.0), -263.0));
            }
            global0 = u_input.c;
            global0 = select(max(firstLeadingBit(select(u_input.c, 2147483647, true)), u_input.c << (~1u % 32u)) >> (~((53187u & var_0.x) & u_input.b.x) % 32u), -_wgslsmith_mult_i32(1, _wgslsmith_sub_i32(u_input.c, -1)), !(!(all(vec2<bool>(true, false)) || (arg_0.x != -148.0))));
            var var_1 = -1450.0;
        }
    }
    let var_1 = _wgslsmith_f_op_f32(ceil(330.0));
    return vec2<i32>(0, u_input.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    switch (_wgslsmith_div_i32(i32(-1) * -25797, i32(-1) * -1)) {
        default: {
            global1 = array<Struct_2, 13>();
            let var_0 = u_input.c;
            let var_1 = func_9(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1183.0, 939.0, arg_1.c)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(591.0, 1000.0, arg_1.c)))), vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(abs(arg_1.c)), _wgslsmith_f_op_f32(f32(-1.0) * -1528.0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(657.0, -404.0, arg_1.c) * vec3<f32>(arg_1.c, arg_1.c, arg_1.c)), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(arg_1.b.a.a, false), u_input.c, vec4<bool>(arg_1.b.a.b, false, arg_1.a, arg_1.a), arg_1.b.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2039.0, 1844.0, 945.0))))));
        }
    }
    global1 = array<Struct_2, 13>();
    global0 = firstLeadingBit(0);
    for (var var_0 = 14427; var_0 <= 0; global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(~_wgslsmith_clamp_i32(u_input.c, -13327, -53557)), _wgslsmith_dot_vec3_i32(arg_0, arg_0 >> (arg_1.b.a.a.zxy % vec3<u32>(32u))) ^ countOneBits(firstTrailingBit(arg_0.x))), arg_0.yz)) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        break;
    }
    global1 = array<Struct_2, 13>();
    return -1;
}

@compute
@workgroup_size(1)
fn main() {
    for (; ; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        continue;
    }
    global1 = array<Struct_2, 13>();
    let var_0 = u_input.b.x;
    switch (_wgslsmith_mult_i32(u_input.c, -27784)) {
        default: {
            global1 = array<Struct_2, 13>();
            global0 = -2147483648;
            for (var var_1: i32; ~_wgslsmith_add_i32(37214, 11840) <= (firstTrailingBit(-firstLeadingBit(u_input.c)) << (~(_wgslsmith_div_u32(u_input.b.x, 46572u) | (u_input.a ^ var_0)) % 32u)); global0 = max(-(_wgslsmith_mod_i32(u_input.c, u_input.c) & (-42564 | u_input.c)) >> (~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_0, var_0), u_input.b.xyw)) % 32u), u_input.c)) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                break;
            }
            if (~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1, u_input.c, 22936) ^ vec3<i32>(-2147483648, 34897, -6341), vec3<i32>(-2147483648, u_input.c, u_input.c))) <= 14586) {
            }
            let var_1 = u_input.b.zzx;
        }
    }
    if (any(vec3<bool>(!any(vec2<bool>(false, true)), !true, true)) | ((all(vec3<bool>(false, true, false)) && all(vec2<bool>(true, false))) || (all(vec4<bool>(true, true, true, false)) | (u_input.c >= func_1(vec3<i32>(19231, -1, u_input.c), Struct_3(true, Struct_2(Struct_1(vec4<u32>(1u, 41353u, var_0, var_0), true), false), -134.0)))))) {
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            let var_1 = _wgslsmith_f_op_f32(f32(-1.0) * -1537.0);
            return;
        }
        for (var var_1 = 2147483647; true; var_1 -= 1) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            var_1 = -(u_input.c | _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.c, 2147483647, -2147483648)), _wgslsmith_add_vec3_i32(vec3<i32>(23122, -17553, u_input.c), vec3<i32>(45249, -1, -9805))), -vec3<i32>(u_input.c, u_input.c, u_input.c)));
        }
        let var_1 = ~(~(~(~_wgslsmith_add_vec2_u32(u_input.b.yx, vec2<u32>(var_0, 4294967295u)))));
    }
    switch (-u_input.c) {
        case -2147483648: {
            global0 = 49421;
        }
        case -1: {
            switch (-30457) {
                case 0: {
                    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1085.0, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1219.0, -1782.0)))), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<u32>(9624u, 35686u, 0u, var_0) << (vec4<u32>(1u, 9523u, u_input.a, 0u) % vec4<u32>(32u)), !false), ~(-u_input.c), vec4<bool>(782.0 != 1057.0, func_4(Struct_3(false, Struct_2(Struct_1(vec4<u32>(1u, u_input.a, 0u, var_0), false), true), 1663.0), global1[_wgslsmith_index_u32(8598u, 13u)], -1000.0, false).x, func_4(Struct_3(true, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 124.0), Struct_2(Struct_1(u_input.b, true), true), -392.0, false).x, func_8(vec2<f32>(-404.0, -141.0), Struct_2(Struct_1(vec4<u32>(var_0, 0u, var_0, u_input.b.x), true), true), vec4<f32>(474.0, -1000.0, 385.0, -1286.0), var_0).b.a.b), Struct_1(~vec4<u32>(var_0, 0u, 0u, u_input.a), !false))).x) - vec2<f32>(_wgslsmith_div_f32(-141.0, -609.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1575.0)))));
                    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-220.0, 2546.0))));
                    let var_2 = 0u;
                }
                case -1: {
                }
                case 20976: {
                    global1 = array<Struct_2, 13>();
                    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(func_5(true, 1412.0, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xxy, u_input.b.yww), firstTrailingBit(var_0), ~14807u)) & 15294u), 13u)];
                }
                case -10845: {
                    let var_1 = !select(vec3<bool>(false, _wgslsmith_f_op_f32(-541.0) <= _wgslsmith_f_op_f32(f32(-1.0) * -181.0), _wgslsmith_div_f32(500.0, -276.0) <= _wgslsmith_f_op_f32(f32(-1.0) * -332.0)), vec3<bool>(!(26467u > u_input.a), any(func_3(var_0, Struct_2(Struct_1(u_input.b, true), true))), !all(vec2<bool>(true, true))), !vec3<bool>(!false, 767.0 < -283.0, false == false));
                    return;
                }
                default: {
                    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1121.0)) + -1133.0), -1038.0, u_input.c != (30325 | 0)))) * 1387.0);
                    return;
                }
            }
            var var_1 = !vec4<bool>(false, false, !true, !select(!false, -1888.0 != 154.0, true | true));
            let var_2 = func_8(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1931.0, 1553.0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(401.0, 963.0) + vec2<f32>(-1416.0, 290.0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1227.0, -655.0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-2359.0, -177.0)), 232.0))), func_8(vec2<f32>(_wgslsmith_f_op_f32(-223.0 * -1128.0), 781.0), func_8(vec2<f32>(_wgslsmith_f_op_f32(316.0 - -778.0), _wgslsmith_f_op_f32(round(901.0))), Struct_2(func_8(vec2<f32>(-103.0, 841.0), Struct_2(Struct_1(vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.a), false), false), vec4<f32>(-573.0, 558.0, 1275.0, 484.0), var_0).b.a, var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(652.0, -127.0, -939.0, 957.0) * vec4<f32>(-1000.0, 1246.0, -339.0, -445.0)) - vec4<f32>(-1000.0, 225.0, -919.0, 1171.0)), abs(var_0)).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1218.0, 1242.0, -411.0, 101.0))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1288.0, 921.0, -484.0, -850.0), vec4<f32>(-1239.0, 889.0, -1000.0, 1520.0)) + _wgslsmith_div_vec4_f32(vec4<f32>(425.0, 1492.0, -1000.0, 1000.0), vec4<f32>(-1531.0, -557.0, 322.0, -1623.0)))), _wgslsmith_add_u32((var_0 ^ var_0) ^ _wgslsmith_mod_u32(49062u, 83271u), func_8(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec4<u32>(100704u, u_input.a, var_0, 4294967295u), var_1.x), u_input.c, vec4<bool>(true, var_1.x, var_1.x, var_1.x), Struct_1(u_input.b, var_1.x))).xy, func_8(vec2<f32>(820.0, -649.0), global1[_wgslsmith_index_u32(51728u, 13u)], vec4<f32>(-1153.0, 2663.0, 379.0, -1000.0), 1u).b, vec4<f32>(2011.0, -787.0, 1697.0, -156.0), ~u_input.a).b.a.a.x)).b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2401.0 - 1691.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-609.0 - _wgslsmith_f_op_f32(972.0 + 236.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152.0 + -1428.0))), -197.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-474.0))) * -1126.0)), u_input.a ^ 4294967295u).b.a;
            global1 = array<Struct_2, 13>();
            var var_3 = vec4<i32>(-(~(-min(u_input.c, u_input.c))), -9970, u_input.c, i32(-1) * -1);
        }
        case 2147483647: {
            global1 = array<Struct_2, 13>();
        }
        default: {
        }
    }
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-517.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-756.0))), _wgslsmith_f_op_f32(abs(-2866.0))))));
}

