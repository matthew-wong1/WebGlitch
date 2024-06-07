// {"0:0":[175,118,24,31,70,142,67,3,240,152,209,57,171,140,57,9]}
// Seed: 6100611854554073008

struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1>;

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false));

var<private> LOOP_COUNTERS: array<u32, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> i32 {
    global1 = array<vec4<bool>, 19>();
    switch (reverseBits(0)) {
        case 1: {
            global1 = array<vec4<bool>, 19>();
        }
        case 2147483647: {
            return (-_wgslsmith_add_i32(arg_0.a.x, ~(-1)) >> (_wgslsmith_mod_u32(u_input.b, ~(~arg_1)) % 32u)) | arg_0.a.x;
        }
        default: {
            var var_0 = -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-12118, -32730, -44817, -2147483648), -vec4<i32>(2147483647, 8258, 2147483647, arg_0.a.x)), abs(-vec4<i32>(arg_2, -24606, -33024, 2147483647))) | (_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.b, arg_0.a.x, 2147483647, arg_0.a.x), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, arg_0.a.x, arg_0.b, 2147483647), vec4<i32>(arg_0.a.x, 1, arg_2, 23989))), vec4<i32>(-32402, _wgslsmith_mult_i32(0, arg_0.a.x), -7291, 1467 & arg_2)) ^ vec4<i32>(1, reverseBits(arg_0.b | arg_2), ~arg_2, countOneBits(_wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(-6148, arg_2, arg_0.b)))));
            var var_1 = !(!vec4<bool>(arg_0.c, arg_0.c, arg_0.c, !arg_0.c));
            var var_2 = Struct_2(32814u);
        }
    }
    for (var var_0: i32; ; global0 = array<vec4<f32>, 1>()) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    if (true) {
        var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b, arg_1, 1u)), select(abs(vec3<u32>(35816u, 0u, arg_1)), vec3<u32>(62408u, 53866u, 63731u), arg_2 > arg_0.a.x) >> ((~vec3<u32>(arg_1, 123801u, arg_1) >> (min(vec3<u32>(1u, 5542u, 0u), vec3<u32>(1u, arg_1, 1883u)) % vec3<u32>(32u))) % vec3<u32>(32u))), 1u)];
        var var_1 = ~(~abs(~vec3<u32>(arg_1, 22342u, arg_1)));
    }
    let var_0 = !select(!vec4<bool>(select(arg_0.c, arg_0.c, false), !false, select(false, true, arg_0.c), arg_0.c), select(!select(vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c), global1[_wgslsmith_index_u32(u_input.a.x, 19u)], vec4<bool>(true, arg_0.c, arg_0.c, arg_0.c)), select(!global1[_wgslsmith_index_u32(84564u, 19u)], global1[_wgslsmith_index_u32(~3842u, 19u)], true), vec4<bool>(false, all(vec3<bool>(true, false, true)), true, false)), vec4<bool>(!any(vec3<bool>(true, false, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(3983u, 0u, 1u, 33092u), vec4<u32>(6448u, 0u, u_input.c, 4294967295u)) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 18716u, 4294967295u, arg_1), vec4<u32>(0u, arg_1, arg_1, 4294967295u)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), false));
    return _wgslsmith_add_i32(arg_0.b, 1);
}

fn func_5() -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        let var_0 = Struct_1(vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(select(2147483647, 1, true), 16727, _wgslsmith_mod_i32(-2147483648, 1))), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0, -3386, -39148, -15731)), ~(-vec4<i32>(29081, -17645, 1, 0))), -_wgslsmith_dot_vec3_i32(~vec3<i32>(57164, 22031, 0), _wgslsmith_add_vec3_i32(vec3<i32>(-54546, -16073, 15288), vec3<i32>(47895, -2147483648, 1540)))), 36847, any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), !vec3<bool>(false, true, true), any(vec2<bool>(false, false)))) | select(false, all(vec2<bool>(true, true)), select(any(vec4<bool>(true, false, true, false)), !true, u_input.c <= 32974u)));
    }
    var var_0 = !(!(_wgslsmith_f_op_f32(-617.0 + _wgslsmith_f_op_f32(-540.0)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1144.0))))));
    switch (1) {
        case -2147483648: {
            var var_1 = 0u;
        }
        default: {
            for (var var_1 = -1; var_1 > 34045; var_1 -= 1) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                global0 = array<vec4<f32>, 1>();
                var_1 = _wgslsmith_mult_i32(1727, func_6(Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1, 7333, 1)), min(vec3<i32>(-2147483648, 1, 2147483647), vec3<i32>(11907, 0, -66870))), ~_wgslsmith_add_i32(0, 2147483647), any(!global1[_wgslsmith_index_u32(1u, 19u)])), u_input.b, _wgslsmith_div_i32(-39246 | 0, ~(-430)) ^ (countOneBits(-8182) ^ countOneBits(-18227))));
                var var_2 = vec3<i32>(44634, ~(-25064), -(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, -1, 7029, -22600), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1, 2147483647, -24718, -14882), vec4<i32>(-1, 1, -1301, 1186), vec4<i32>(-55755, -4604, 1, 29160))) | ((i32(-1) * -59268) | firstLeadingBit(-2147483648))));
                break;
            }
        }
    }
    if (!(!any(!vec2<bool>(false, true))) | any(!(!(!vec3<bool>(false, false, false))))) {
        var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1298.0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1424.0, 368.0)), _wgslsmith_f_op_f32(f32(-1.0) * -660.0))), -128.0));
        let var_2 = all(vec3<bool>(false, !(!(!true)), !(all(vec4<bool>(false, true, false, false)) || (951.0 != var_1.x))));
    }
    var var_1 = abs(~vec4<u32>(~38128u, firstLeadingBit(72132u), _wgslsmith_dot_vec2_u32(vec2<u32>(78978u, u_input.a.x), u_input.a), u_input.c) | select(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(73206u, u_input.c, u_input.c, 83282u)), ~vec4<u32>(0u, 8126u, 31491u, u_input.a.x) | (vec4<u32>(u_input.b, 1u, 0u, 53251u) << (vec4<u32>(u_input.a.x, u_input.c, 1u, u_input.b) % vec4<u32>(32u))), !global1[_wgslsmith_index_u32(u_input.c, 19u)]));
    return Struct_1(select(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-15050, 1056, -22455) << (var_1.wxz % vec3<u32>(32u)), vec3<i32>(-1, 13871, -10577), !vec3<bool>(false, true, true)), abs(min(vec3<i32>(-2147483648, -2147483648, 0), vec3<i32>(1, 0, 11316)))), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1706, 53020, 21023) << (vec3<u32>(var_1.x, 1u, var_1.x) % vec3<u32>(32u)), -vec3<i32>(-1, 2147483647, -13886))), vec3<bool>(false, _wgslsmith_f_op_f32(-1918.0 * 582.0) == _wgslsmith_div_f32(1373.0, 126.0), any(!vec2<bool>(false, true)))), -(-_wgslsmith_dot_vec2_i32(vec2<i32>(-11158, 0), vec2<i32>(31223, -21603)) << (~u_input.b % 32u)), !true);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    switch (-arg_0.b) {
        default: {
            global0 = array<vec4<f32>, 1>();
            let var_0 = arg_0.a;
            switch (arg_0.a.x) {
                case 2147483647: {
                    var var_1 = arg_2;
                    let var_2 = Struct_2(3016u);
                    let var_3 = false;
                    var_1 = func_5();
                    global0 = array<vec4<f32>, 1>();
                }
                case 75521: {
                    return u_input.b;
                }
                case -48123: {
                }
                default: {
                    global1 = array<vec4<bool>, 19>();
                }
            }
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_1 = firstTrailingBit(select(max(arg_1 & 1u, ~18399u), u_input.b, !(!true))) < (~2318u >> (1u % 32u));
                let var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b, arg_2.b), arg_0.a.zz), countOneBits(arg_0.b), var_0.x ^ 1), -firstTrailingBit(vec4<i32>(arg_0.a.x, -1, 18253, 1))), ~2147483647, max(_wgslsmith_dot_vec3_i32(~arg_0.a, -arg_2.a), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, -2147483648, -43097), var_0), -arg_0.a))), _wgslsmith_dot_vec2_i32(arg_0.a.xz, arg_0.a.yz), arg_2.c);
                continue;
            }
        }
    }
    for (var var_0 = 0; !(!true); global1 = array<vec4<bool>, 19>()) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    var var_0 = select(select(!select(vec3<bool>(arg_2.c, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, false), any(vec4<bool>(arg_0.c, true, true, true))), vec3<bool>(!(-1000.0 <= -139.0), arg_2.c, arg_0.c), vec3<bool>(min(779u, u_input.a.x) == _wgslsmith_clamp_u32(arg_1, arg_1, u_input.c), all(select(vec4<bool>(true, arg_3.x, true, false), vec4<bool>(false, true, false, true), true)), arg_3.x)), !select(vec3<bool>(any(global1[_wgslsmith_index_u32(arg_1, 19u)]), true, !false), !select(vec3<bool>(false, true, arg_0.c), vec3<bool>(arg_3.x, true, true), vec3<bool>(arg_2.c, arg_0.c, arg_2.c)), -742.0 == _wgslsmith_f_op_f32(f32(-1.0) * -1821.0)), any(vec3<bool>(!arg_0.c, all(vec3<bool>(arg_2.c, true, arg_0.c)), !false)));
    switch (arg_0.b) {
        default: {
            global1 = array<vec4<bool>, 19>();
        }
    }
    let var_1 = !vec3<bool>(false, all(arg_3), false);
    return _wgslsmith_mod_u32(u_input.b, arg_1 << (max(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), select(vec3<u32>(4294967295u, u_input.a.x, arg_1), vec3<u32>(45662u, u_input.b, 1u), false))) % 32u));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_2(~select(87561u, ~func_4(Struct_1(vec3<i32>(8974, 2147483647, 58181), -2147483648, arg_0.d.c), 66251u, Struct_1(vec3<i32>(-2504, 26414, arg_0.b.x), -1, false), vec2<bool>(true, true)), arg_0.d.c));
    var_0 = Struct_2(u_input.a.x);
    for (var var_1 = -1; select(!func_5().c, false, func_5().c); global1 = array<vec4<bool>, 19>()) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_2 = Struct_2(~_wgslsmith_sub_u32(47825u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, arg_0.c.x)))));
        if (all(select(arg_0.a.wz, select(arg_0.a.xy, select(vec2<bool>(arg_0.d.c, arg_0.d.c), arg_0.a.zw, true), arg_0.d.c), all(arg_0.a.wyy))) | !false) {
            var var_3 = Struct_2(var_0.a);
        }
        global1 = array<vec4<bool>, 19>();
        switch (_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~min(-2147483648, arg_0.d.a.x), ~abs(arg_0.d.a.x), _wgslsmith_sub_i32(1, func_5().b)), arg_0.b.x) >> ((var_0.a >> (~_wgslsmith_mod_u32(~arg_0.c.x, 4294967295u << (81142u % 32u)) % 32u)) % 32u)) {
            default: {
                continue;
            }
        }
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            let var_3 = !arg_0.a.x;
            var var_4 = Struct_3(select(select(global1[_wgslsmith_index_u32(4294967295u, 19u)], select(!vec4<bool>(var_3, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, var_3, true), true), !arg_0.a.x), vec4<bool>(true, true, any(arg_0.a.zw), false)), select(select(global1[_wgslsmith_index_u32(var_2.a, 19u)], !global1[_wgslsmith_index_u32(arg_0.c.x, 19u)], !true), select(arg_0.a, arg_0.a, false), arg_0.a.x), select(vec4<bool>(true, all(arg_0.a.xwx), 2147483647 == arg_0.d.b, var_3), !(!vec4<bool>(false, var_3, var_3, true)), !true)), vec3<i32>(countOneBits(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0.b.x, arg_0.b.x), firstLeadingBit(arg_0.d.b))), _wgslsmith_sub_i32(-select(arg_0.d.b, arg_0.b.x, true), -arg_0.d.a.x ^ (arg_0.d.a.x ^ 10729)), abs(_wgslsmith_div_i32(arg_0.d.b, _wgslsmith_div_i32(2147483647, -41153)))), ~(arg_0.c >> (_wgslsmith_mult_vec4_u32(arg_0.c, arg_0.c) % vec4<u32>(32u))) & arg_0.c, Struct_1(abs(reverseBits(~arg_0.b)), firstLeadingBit(-(49935 >> (4294967295u % 32u))), true));
            let var_5 = func_5().b;
        }
    }
    var_0 = Struct_2(1u);
    var var_1 = arg_0.d.c;
    return (_wgslsmith_mod_i32(arg_0.d.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.a.x, arg_0.b.x) | arg_0.d.a.zy, ~arg_0.b.yx)) ^ firstLeadingBit(-63965)) & func_6(Struct_1(vec3<i32>(arg_0.b.x, 0, 1) | select(vec3<i32>(-24490, 2147483647, arg_0.b.x), vec3<i32>(arg_0.b.x, arg_0.d.b, arg_0.b.x), true), -45238, all(arg_0.a.zw) || all(arg_0.a.xz)), arg_0.c.x, arg_0.d.b);
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<f32>, 1>();
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        global1 = array<vec4<bool>, 19>();
        if (!false) {
            break;
        }
        break;
    }
    switch (2605) {
        case 3275: {
            var var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a, ~countOneBits(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a))));
            if (any(select(select(global1[_wgslsmith_index_u32(4294967295u, 19u)], select(global1[_wgslsmith_index_u32(u_input.b, 19u)], vec4<bool>(true, false, true, false), u_input.b >= 65439u), global1[_wgslsmith_index_u32(~u_input.b, 19u)]), select(vec4<bool>(!true, all(vec3<bool>(false, true, false)), false, any(vec4<bool>(false, false, true, true))), vec4<bool>(true, !false, true && false, -1570 != 1), !vec4<bool>(true, false, false, true)), false))) {
                global1 = array<vec4<bool>, 19>();
                var_0 = ~35677u;
                var_0 = 1u;
                var_0 = 4981u;
            }
            var var_1 = -(-func_3(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 19u)], vec3<i32>(-2147483648, 37780, 0), vec4<u32>(4294967295u, 1u, u_input.b, u_input.c), Struct_1(vec3<i32>(-1002, -16358, 4146), -1, false))) ^ max(1, 0));
            for (var var_2 = 2147483647; ; var_2 += 1) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            }
        }
        case 0: {
        }
        case 13112: {
            switch (1180) {
                case 43272: {
                    global0 = array<vec4<f32>, 1>();
                    global1 = array<vec4<bool>, 19>();
                }
                case 10259: {
                }
                case 1: {
                    var var_0 = Struct_3(select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)), vec4<bool>(!(24318 == -2147483648), all(!global1[_wgslsmith_index_u32(u_input.c, 19u)]), false, false), vec4<bool>(false, all(vec3<bool>(true, false, true)) & !true, any(!vec2<bool>(false, false)), -2957 < _wgslsmith_div_i32(-2147483648, 24105))), vec3<i32>(max(-8745, i32(-1) * -1), _wgslsmith_mod_i32(31732, -_wgslsmith_sub_i32(-58190, -13378)), _wgslsmith_clamp_i32(~abs(-2421), _wgslsmith_div_i32(_wgslsmith_add_i32(0, 29849), _wgslsmith_mod_i32(-1, 11059)), _wgslsmith_sub_i32(-23764, _wgslsmith_clamp_i32(5427, 3326, -1)))), ~(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 44244u, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 70224u)), ~vec4<u32>(1u, u_input.a.x, u_input.b, 4294967295u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.c, 13409u, u_input.a.x), firstLeadingBit(vec4<u32>(523u, u_input.c, 4294967295u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 14202u, u_input.c), vec4<u32>(4294967295u, u_input.a.x, 247u, u_input.a.x))) % vec4<u32>(32u))), func_5());
                    var var_1 = _wgslsmith_add_i32(reverseBits(1) ^ select(~var_0.b.x & -2147483648, 2147483647, var_0.d.c), -9487);
                    var var_2 = var_0.d.a.xx;
                    var var_3 = vec2<f32>(526.0, -1000.0);
                    var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x))))), -1000.0));
                }
                default: {
                    return Struct_2(~_wgslsmith_mult_u32(u_input.b, ~_wgslsmith_div_u32(10816u, u_input.c)));
                }
            }
        }
        case 1: {
            var var_0 = vec3<i32>(max(~firstLeadingBit(49340) & 1, -1), i32(-1) * -1, i32(-1) * -17957);
            let var_1 = Struct_2(~14103u);
        }
        default: {
            var var_0 = Struct_2(16313u);
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_1 = !vec4<bool>(u_input.c != (u_input.c ^ u_input.b), !any(!vec2<bool>(true, false)), !(!(!false)), 37360u > min(var_0.a >> (40548u % 32u), ~4294967295u));
                let var_2 = Struct_3(vec4<bool>(var_1.x, !false, all(vec2<bool>(var_1.x, var_1.x || var_1.x)), true), -_wgslsmith_clamp_vec3_i32(vec3<i32>(0, reverseBits(17278), i32(-1) * -2147483648), _wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647, 64678, 2147483647), vec3<i32>(2147483647, 31660, -21658)), -vec3<i32>(2147483647, 2147483647, 42618) | (vec3<i32>(7585, -38713, 32118) & vec3<i32>(-60977, -31498, 9667))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, var_0.a, 37241u, 39830u), vec4<u32>(4294967295u, 32958u, var_0.a, var_0.a) << (vec4<u32>(0u, var_0.a, 51180u, 21741u) % vec4<u32>(32u))), ~abs(vec4<u32>(u_input.c, 4294967295u, var_0.a, var_0.a))), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483648, -36122, -76564), vec3<i32>(11391, -7895, 1) ^ vec3<i32>(1, -1, 1)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483648, 41829, 60449), min(vec3<i32>(2147483647, -4717, -46230), vec3<i32>(-24582, 2147483647, 33956)))), -8053, all(var_1)));
            }
        }
    }
    let var_0 = _wgslsmith_add_i32(38131, select(0, select(-1 | ~(-12128), -2106, (false || true) && (true | false)), all(select(!vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        for (var var_1 = -16996; 12264u < ~(27306u & u_input.b); var_1 -= 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            global0 = array<vec4<f32>, 1>();
            let var_2 = u_input.c;
        }
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            let var_1 = u_input.a.x;
            let var_2 = Struct_3(!(!(!(!vec4<bool>(false, false, true, true)))), _wgslsmith_mod_vec3_i32(max(-(vec3<i32>(var_0, var_0, var_0) | vec3<i32>(-4292, var_0, var_0)), vec3<i32>(-67978 ^ -8009, ~16522, abs(-1))), ~(-vec3<i32>(-15662, -56512, -1))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(var_1, 0u, var_1, u_input.b)) & select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(0u, u_input.a.x, 15684u)), ~4294967295u, 325u, u_input.a.x), vec4<u32>(15880u, max(u_input.c, 1u), u_input.b, 22704u), select(!vec4<bool>(true, false, true, false), !vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(reverseBits(var_1), 19u)])), Struct_1(vec3<i32>(_wgslsmith_div_i32(var_0, var_0), i32(-1) * -2147483648, func_6(Struct_1(vec3<i32>(2147483647, -1, var_0), 13414, false), u_input.c, var_0)) & _wgslsmith_mult_vec3_i32(vec3<i32>(-7273, 73367, -8664), -vec3<i32>(var_0, 1, var_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-59728, -2147483648), -33769 | var_0, -var_0), vec3<i32>(var_0, var_0, 0)), true));
            continue;
        }
        return Struct_2(reverseBits(_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(21163u, u_input.b)), min(64458u, 4294967295u))));
    }
    return Struct_2(u_input.b);
}

fn func_7(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(!select(vec4<bool>(-1445.0 < 227.0, arg_0 & false, false, true), select(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 19u)], global1[_wgslsmith_index_u32(~u_input.c, 19u)], global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 19u)]), arg_0), -(~_wgslsmith_sub_vec3_i32(~vec3<i32>(-1, 1, -1), vec3<i32>(-1, -2147483648, 1) | vec3<i32>(-34110, -43663, -53929))), ~vec4<u32>(arg_1.a, ~(u_input.a.x ^ 49443u), arg_1.a, _wgslsmith_mult_u32(24643u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_1.a, 19477u, 47551u), vec4<u32>(u_input.a.x, u_input.a.x, 59264u, 39290u)))), Struct_1(func_5().a, 1, true));
    let var_1 = var_0.c.x;
    let var_2 = -vec3<i32>(var_0.b.x, var_0.b.x, ~var_0.d.b & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, -19950, 78654), var_0.b)) ^ var_0.b;
    switch (var_2.x) {
        default: {
            let var_3 = var_0.d;
        }
    }
    let var_3 = !vec4<bool>(select(arg_0, any(var_0.a), !(!var_0.d.c)), true, arg_0, var_0.d.c);
    return var_0;
}

fn func_8(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>) -> u32 {
    if (any(select(!vec3<bool>(arg_1.d.c, arg_2.x <= -301.0, arg_2.x != -1265.0), arg_1.a.wxy, all(vec3<bool>(15051 <= 2147483647, arg_2.x >= 361.0, !arg_1.d.c))))) {
        let var_0 = Struct_2(~firstLeadingBit(arg_1.c.x));
        let var_1 = Struct_1(vec3<i32>(arg_0 << (1u % 32u), ~(~(0)), arg_0), max(~arg_1.d.a.x, _wgslsmith_clamp_i32(func_5().b, arg_0, arg_0)), _wgslsmith_mod_u32(~u_input.c, max(_wgslsmith_clamp_u32(u_input.a.x, 98347u, 11747u), ~13232u)) != (~(~10896u) >> (_wgslsmith_add_u32(~4294967295u, var_0.a) % 32u)));
        global1 = array<vec4<bool>, 19>();
    }
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        for (var var_0 = -2147483648; var_0 == 11199; var_0 -= 1) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            global0 = array<vec4<f32>, 1>();
            continue;
        }
    }
    global1 = array<vec4<bool>, 19>();
    let var_0 = arg_2.x;
    if (!(arg_1.a.x && false)) {
        var var_1 = u_input.a;
        if (any(arg_1.a.zw)) {
            global1 = array<vec4<bool>, 19>();
            var var_2 = arg_1.b;
            global1 = array<vec4<bool>, 19>();
            global1 = array<vec4<bool>, 19>();
        }
        let var_2 = arg_1.c.zyx;
        let var_3 = -arg_1.d.b;
        let var_4 = _wgslsmith_f_op_f32(510.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1630.0, var_0)))));
    }
    return 0u;
}

fn func_9(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    var var_0 = func_2();
    var_0 = arg_1;
    global1 = array<vec4<bool>, 19>();
    if ((all(select(arg_0.ywy, arg_0.xyz, !arg_0.x)) | all(func_7(false, arg_1).a.xxw)) || arg_0.x) {
        return Struct_3(global1[_wgslsmith_index_u32(abs(~(~_wgslsmith_clamp_u32(u_input.b, 63119u, 4294967295u))), 19u)], select(vec3<i32>(-1) * -vec3<i32>(1, 1, 0), vec3<i32>(~(-2147483648), func_7(true, arg_1).d.b, i32(-1) * -8959), arg_0.x) << (~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.a, 28691u, arg_1.a), vec3<u32>(42897u, 0u, arg_1.a), vec3<u32>(25397u, 0u, arg_1.a)) % vec3<u32>(32u)), vec4<u32>(32886u, (u_input.c | 13732u) & arg_2, ~1u, ~var_0.a), Struct_1(vec3<i32>(17250 ^ -18322, ~1, 1), 52149, true));
    }
    let var_1 = Struct_2(0u);
    return Struct_3(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_2().a, var_1.a), 19u)], vec3<i32>(41758, -2147483648, 2147483647), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1.a, arg_1.a, 0u), vec4<u32>(u_input.b, u_input.b, 0u, var_1.a))), vec4<u32>(~55807u, _wgslsmith_clamp_u32(29951u, arg_1.a, 5545u), arg_1.a << (4294967295u % 32u), 4294967295u)), vec4<u32>(~var_1.a, 49881u, arg_2, arg_2)), Struct_1(max(~select(vec3<i32>(-1, -28161, 0), vec3<i32>(0, -13481, -31288), false), abs(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483648, 45000, -17541), vec3<i32>(-19001, 0, 2147483647)))), func_3(func_7(!arg_0.x, func_2())), !(!(arg_0.x & arg_0.x))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    for (var var_0: i32; ; ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        continue;
    }
    let var_0 = ~_wgslsmith_mod_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(u_input.a.x, 4294967295u, u_input.c), vec3<bool>(arg_0.c, true, arg_0.c)), vec3<u32>(u_input.c, 58336u, u_input.a.x))), abs(reverseBits(vec3<u32>(26699u, u_input.b, 4294967295u))));
    let var_1 = ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(var_0.zx, vec2<u32>(var_0.x, 84033u)), u_input.c, firstTrailingBit(u_input.b)), vec4<u32>(0u & u_input.a.x, ~u_input.c, var_0.x >> (4048u % 32u), max(4294967295u, 20849u))), ~vec4<u32>(min(u_input.a.x, 1u), ~80313u, var_0.x, var_0.x), arg_0.c);
    var var_2 = !global1[_wgslsmith_index_u32(~48991u, 19u)];
    let var_3 = func_9(global1[_wgslsmith_index_u32(30608u, 19u)], Struct_2(var_0.x), func_8(-58866, func_7(false, func_2()), vec4<f32>(_wgslsmith_f_op_f32(1098.0 * _wgslsmith_f_op_f32(-845.0 + -598.0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1086.0 + 730.0))), _wgslsmith_f_op_f32(step(1069.0, _wgslsmith_f_op_f32(min(1774.0, 1000.0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1067.0 - 312.0))))));
    return 565.0;
}

fn func_10(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_1 {
    if (select(arg_2.d.c, !all(arg_2.a.zwy), arg_1.x)) {
        switch (arg_2.b.x) {
            case -13857: {
                var var_0 = func_2();
                global1 = array<vec4<bool>, 19>();
                let var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(~arg_2.d.a.yz, arg_2.d.a.zy), abs(arg_2.b.x)), max(arg_2.b.x, _wgslsmith_div_i32(-2147483648, reverseBits(-13172 << (25578u % 32u)))));
                global1 = array<vec4<bool>, 19>();
            }
            case 30087: {
                let var_0 = func_7(false, Struct_2((min(arg_2.c.x, u_input.a.x) >> (~1u % 32u)) & ~u_input.c)).d;
                var var_1 = 11328;
                let var_2 = Struct_3(!(!global1[_wgslsmith_index_u32(max(u_input.a.x, countOneBits(4294967295u)), 19u)]), max(vec3<i32>(-abs(var_0.b), -1, ~func_5().a.x), select(_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(arg_2.d.a.x, -1, var_0.a.x) >> (arg_2.c.xwy % vec3<u32>(32u))), firstLeadingBit(arg_2.d.a), arg_2.a.x)), arg_2.c, Struct_1(var_0.a, -(~(~var_0.a.x)), arg_1.x));
                global1 = array<vec4<bool>, 19>();
            }
            case 6094: {
                global1 = array<vec4<bool>, 19>();
                global0 = array<vec4<f32>, 1>();
                let var_0 = _wgslsmith_sub_u32(~18771u, _wgslsmith_mult_u32(~(~u_input.b), select(func_4(Struct_1(arg_2.b, arg_2.d.b, false), 76259u, Struct_1(vec3<i32>(-1, arg_2.d.a.x, arg_2.b.x), -11429, true), arg_1.zx), ~0u, select(false, arg_1.x, false)) << (21798u % 32u)));
            }
            case 2147483647: {
                global1 = array<vec4<bool>, 19>();
                let var_0 = abs(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u ^ u_input.b, 0u, func_4(Struct_1(vec3<i32>(41266, arg_2.d.b, -1), arg_2.d.a.x, false), 0u, Struct_1(vec3<i32>(arg_2.d.b, arg_2.b.x, arg_2.d.b), 9994, arg_2.d.c), arg_1.xw)), ~min(arg_2.c, vec4<u32>(1u, 53608u, 0u, 1u))), func_9(arg_2.a, func_2(), 18653u).c));
                global0 = array<vec4<f32>, 1>();
            }
            default: {
                global1 = array<vec4<bool>, 19>();
            }
        }
        for (var var_0: i32; var_0 != -1; var_0 -= 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_1 = arg_2;
            var_1 = func_9(vec4<bool>(false, true & all(!arg_2.a), any(var_1.a.zxz), all(vec3<bool>(-28911 != arg_2.b.x, func_7(false, Struct_2(99646u)).a.x, 446.0 > -1823.0))), func_2(), _wgslsmith_mod_u32(countOneBits(40522u), ~0u));
            let var_2 = func_7(var_1.a.x, Struct_2(1u));
        }
        global0 = array<vec4<f32>, 1>();
    }
    switch (~arg_2.b.x) {
        default: {
            var var_0 = global0[_wgslsmith_index_u32(arg_2.c.x, 1u)];
            var var_1 = func_7(arg_2.a.x, func_2()).a.yw;
            switch (-2147483648) {
                default: {
                    global0 = array<vec4<f32>, 1>();
                    let var_2 = arg_2.a.ww;
                }
            }
            let var_2 = u_input.a;
            if (func_7(all(select(select(arg_2.a.zz, arg_2.a.xx, arg_2.a.yx), vec2<bool>(func_5().c, select(var_1.x, false, false)), vec2<bool>(var_1.x | var_1.x, true))), func_2()).a.x) {
                global1 = array<vec4<bool>, 19>();
                var var_3 = vec4<i32>(arg_2.b.x, 0 << (~var_2.x % 32u), firstTrailingBit(abs(-arg_2.b.x)), reverseBits(arg_2.d.b));
            }
        }
    }
    let var_0 = arg_2.b.x ^ ~abs(_wgslsmith_div_i32(-1, firstTrailingBit(arg_2.d.b)));
    switch (_wgslsmith_mult_i32(var_0 << (u_input.b % 32u), -14314)) {
        case 0: {
            let var_1 = 4294967295u;
            let var_2 = -629.0;
            for (var var_3 = abs(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647, -32804), _wgslsmith_mod_i32(~arg_2.d.a.x, var_0))); var_3 == 2147483647; var_3 -= 1) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                let var_4 = Struct_2(max(~14518u, u_input.b));
                var var_5 = vec3<i32>(_wgslsmith_add_i32(-(~min(arg_2.d.a.x, 5282)), var_0), arg_2.b.x, arg_2.d.a.x);
                global1 = array<vec4<bool>, 19>();
                var_3 = ~func_5().b;
            }
            switch (-(~arg_2.d.a.x)) {
                default: {
                    global1 = array<vec4<bool>, 19>();
                    global1 = array<vec4<bool>, 19>();
                    global0 = array<vec4<f32>, 1>();
                    var var_3 = true;
                }
            }
        }
        case -35729: {
            let var_1 = vec3<i32>(arg_2.b.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(12295, -2147483648) >> ((arg_2.c.zw | vec2<u32>(1u, 22504u)) % vec2<u32>(32u)), countOneBits(arg_2.d.a.yx)), func_5().a.x) << (select(vec3<u32>(~(~u_input.a.x), 10533u, u_input.b), func_7(!arg_2.a.x, Struct_2(_wgslsmith_dot_vec3_u32(arg_2.c.zxx, vec3<u32>(66979u, arg_2.c.x, arg_2.c.x)))).c.yzx, arg_1.x) % vec3<u32>(32u));
        }
        case 50541: {
            var var_1 = _wgslsmith_div_f32(-1176.0, _wgslsmith_f_op_f32(-937.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 1178.0)))));
            var var_2 = vec3<u32>(~arg_2.c.x, arg_2.c.x, _wgslsmith_div_u32(~1u, reverseBits(abs(~18683u))));
        }
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            }
            if (arg_2.a.x & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))) <= 1151.0)) {
                let var_1 = func_2();
                let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -1437.0)))))))) - vec2<f32>(-425.0, _wgslsmith_f_op_f32(min(-105.0, 1414.0))));
                return Struct_1(-select(-vec3<i32>(41735, var_0, arg_2.d.a.x) & countOneBits(arg_2.d.a), abs(abs(vec3<i32>(arg_2.b.x, arg_2.b.x, arg_2.d.a.x))), !all(vec2<bool>(true, arg_1.x))), arg_2.b.x, any(vec4<bool>(arg_1.x, false, all(vec4<bool>(true, arg_1.x, true, true)), arg_2.d.c)) & (!arg_1.x || true));
            }
            var var_1 = Struct_3(global1[_wgslsmith_index_u32(func_8(-28057, arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(f32(-1.0) * -548.0), _wgslsmith_f_op_f32(arg_0 - arg_0)))), 19u)], vec3<i32>(~var_0, arg_2.b.x, firstLeadingBit(arg_2.b.x)), arg_2.c, Struct_1(vec3<i32>(_wgslsmith_add_i32(var_0, -58697), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0, var_0, var_0), 34118 | -395), _wgslsmith_div_i32(i32(-1) * -56988, arg_2.d.b ^ 65760)), arg_2.b.x, false));
            global1 = array<vec4<bool>, 19>();
        }
        default: {
        }
    }
    var var_1 = _wgslsmith_add_vec4_i32(-firstLeadingBit(reverseBits(vec4<i32>(34091, var_0, 23837, var_0)) | ~vec4<i32>(arg_2.d.a.x, 2147483647, arg_2.b.x, var_0)), select(vec4<i32>(i32(-1) * 0, arg_2.d.b, -_wgslsmith_clamp_i32(-1, arg_2.d.b, 44514), -select(2147483647, 16409, false)), -vec4<i32>(~arg_2.d.b, _wgslsmith_mult_i32(arg_2.d.b, 60711), -6190 | var_0, -2147483648), select(select(!vec4<bool>(arg_1.x, arg_2.d.c, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_1.x, false, false), vec4<bool>(false, false, arg_2.a.x, arg_2.a.x)), arg_1, arg_1.x)));
    return Struct_1(vec3<i32>(4558, _wgslsmith_clamp_i32(~var_1.x, ~(-8073), -10178), reverseBits(_wgslsmith_div_i32(-28402, countOneBits(arg_2.d.b)))), 0, !arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        switch (11971) {
            case 6110: {
                let var_0 = func_10(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(1, 1, -21669), 76437, false && false)))), select(vec4<bool>((-777.0 < -1376.0) & !true, _wgslsmith_div_u32(u_input.a.x, 0u) <= u_input.a.x, true, true), vec4<bool>(func_9(!global1[_wgslsmith_index_u32(51285u, 19u)], Struct_2(u_input.a.x), ~u_input.c).a.x, ~u_input.c <= _wgslsmith_clamp_u32(u_input.b, u_input.a.x, u_input.a.x), _wgslsmith_add_i32(2147483647, 15855) == 44286, any(!vec3<bool>(false, true, false))), false & !(!true)), func_9(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), !any(vec4<bool>(true, true, false, false)), true, !false), Struct_2(65407u), firstTrailingBit(firstLeadingBit(96290u)) | (0u << ((u_input.c ^ u_input.b) % 32u))));
                global0 = array<vec4<f32>, 1>();
                break;
            }
            case 17786: {
            }
            case 7327: {
                let var_0 = Struct_3(vec4<bool>(any(vec3<bool>(all(vec3<bool>(true, true, false)), 17413 != 41009, true & true)), func_7(u_input.c == _wgslsmith_clamp_u32(25563u, 4294967295u, 4294967295u), func_2()).a.x, -1000.0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1084.0) - _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), func_5().c), vec3<i32>(func_7(func_10(_wgslsmith_f_op_f32(-1285.0 - 555.0), global1[_wgslsmith_index_u32(0u, 19u)], func_9(global1[_wgslsmith_index_u32(17007u, 19u)], Struct_2(1u), 29352u)).c, Struct_2(30920u)).d.b, ~(~(26299 ^ -33567)), _wgslsmith_mod_i32(abs(18419), 47826)), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.c | abs(u_input.b), u_input.c), func_7(any(global1[_wgslsmith_index_u32(u_input.b, 19u)]), func_2()).c.x << (_wgslsmith_sub_u32(func_2().a, u_input.b) % 32u), firstTrailingBit(~47766u)), func_10(-1033.0, !vec4<bool>(func_9(global1[_wgslsmith_index_u32(u_input.c, 19u)], Struct_2(129908u), u_input.b).a.x, all(vec2<bool>(true, false)), all(vec2<bool>(false, true)), 1169.0 <= -524.0), Struct_3(!(!global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(0, -1, 42564)), vec3<i32>(2147483647, -587, -20815)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(20095u, 1u, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(47346u, 4294967295u, u_input.c, u_input.c), vec4<u32>(13867u, 9384u, u_input.c, 12343u))), Struct_1(abs(vec3<i32>(-14347, 11655, 1)), _wgslsmith_mod_i32(48942, 30853), func_9(global1[_wgslsmith_index_u32(4294967295u, 19u)], Struct_2(u_input.a.x), u_input.b).a.x))));
                global0 = array<vec4<f32>, 1>();
                var var_1 = var_0.c.yzw;
            }
            case 0: {
                var var_0 = Struct_3(!vec4<bool>(!all(vec3<bool>(true, false, false)), !true, all(!global1[_wgslsmith_index_u32(44012u, 19u)]), func_9(global1[_wgslsmith_index_u32(u_input.a.x << (0u % 32u), 19u)], func_2(), ~1u).d.c), vec3<i32>(_wgslsmith_mod_i32(-2147483647 | (2147483647 << (0u % 32u)), func_9(select(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], false), Struct_2(u_input.b), _wgslsmith_mod_u32(u_input.c, u_input.a.x)).b.x), func_7(all(vec3<bool>(false, false, false)) & (1000.0 == -732.0), Struct_2(1u)).b.x, -_wgslsmith_div_i32(-13280 ^ 42641, 0)), ~vec4<u32>(~u_input.c, _wgslsmith_mod_u32(func_4(Struct_1(vec3<i32>(2147483647, 422, 2147483647), -1, true), u_input.b, Struct_1(vec3<i32>(-29275, -47953, 18481), -1, true), vec2<bool>(false, true)), ~u_input.b), u_input.a.x, u_input.c), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3228, -6949, 2147483647), vec3<i32>(-2147483648, -1, -2147483648), func_5().a) | vec3<i32>(~(-18349), -1 << (4294967295u % 32u), i32(-1) * -37928), -1, true));
            }
            default: {
            }
        }
        if (all(func_7(func_7(_wgslsmith_f_op_f32(floor(-104.0)) >= -806.0, func_2()).d.c, Struct_2(~u_input.a.x)).a.yy)) {
            var var_0 = Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(62046u, 4294967295u), ~4294967295u), min(func_9(global1[_wgslsmith_index_u32(0u, 19u)], Struct_2(u_input.c), u_input.c).c.x, 0u | u_input.b)), 19u)], vec3<i32>(-22164, i32(-1) * -1, 1) >> ((~firstTrailingBit(vec3<u32>(1u, 46499u, 31811u)) << (((vec3<u32>(0u, 17450u, u_input.b) >> (vec3<u32>(u_input.b, 36602u, u_input.c) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.c, 4294967295u, u_input.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), (~vec4<u32>(u_input.a.x, 2931u, u_input.c, 4294967295u) >> (select(~vec4<u32>(u_input.a.x, 20571u, 4294967295u, u_input.b), vec4<u32>(111495u, 36906u, 0u, 9894u) >> (vec4<u32>(16341u, 0u, u_input.c, u_input.c) % vec4<u32>(32u)), !global1[_wgslsmith_index_u32(51644u, 19u)]) % vec4<u32>(32u))) >> (min(~vec4<u32>(u_input.b, u_input.c, 0u, u_input.a.x), ~abs(vec4<u32>(u_input.a.x, u_input.c, u_input.c, 37141u))) % vec4<u32>(32u)), func_9(vec4<bool>(true || !false, !(!true), func_7(false & false, Struct_2(3067u)).a.x, !(!false)), Struct_2(u_input.b), 4294967295u).d);
            var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1144.0 + _wgslsmith_f_op_f32(f32(-1.0) * -333.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164.0)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -727.0), _wgslsmith_f_op_f32(max(-535.0, -1370.0)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-455.0, -1233.0)), _wgslsmith_f_op_f32(-839.0 * -1108.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2092.0 - 222.0) * _wgslsmith_f_op_f32(-674.0)))), func_10(881.0, func_9(vec4<bool>(false, true, var_0.d.c, true), func_2(), var_0.c.x).a, Struct_3(func_7(true, Struct_2(0u)).a, vec3<i32>(var_0.b.x, var_0.d.b, var_0.d.b) | vec3<i32>(var_0.d.b, var_0.b.x, var_0.d.b), _wgslsmith_add_vec4_u32(var_0.c, var_0.c), var_0.d)).c))));
            continue;
        }
        var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, func_4(Struct_1(vec3<i32>(-2147483648, 2407, -49153), 2147483647, false), firstTrailingBit(u_input.b), Struct_1(vec3<i32>(12300, 2147483647, -1), 50881, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), u_input.c, reverseBits(u_input.b)), select(vec4<u32>(firstLeadingBit(u_input.b), ~u_input.a.x, ~72225u, u_input.a.x), ~reverseBits(vec4<u32>(53470u, u_input.a.x, u_input.a.x, 4294967295u)), vec4<bool>(!false, false && false, false, false))));
        global1 = array<vec4<bool>, 19>();
    }
    var var_0 = Struct_2(~1u);
    switch (~_wgslsmith_mult_i32(1, _wgslsmith_mod_i32(-297 << (25577u % 32u), func_6(Struct_1(vec3<i32>(-4508, -1, 0), -2147483648, false), var_0.a, 1))) >> (~(~select(countOneBits(var_0.a), func_4(Struct_1(vec3<i32>(1, 9688, 2147483647), -23411, false), u_input.b, Struct_1(vec3<i32>(-1, -57872, -2147483648), 1, true), vec2<bool>(true, false)), func_9(global1[_wgslsmith_index_u32(var_0.a, 19u)], Struct_2(var_0.a), 15928u).a.x)) % 32u)) {
        case 0: {
            for (var var_1 = -236; func_5().c; global1 = array<vec4<bool>, 19>()) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                var_0 = func_2();
                var var_2 = func_9(vec4<bool>(var_0.a < func_2().a, 2147483647 <= firstTrailingBit(~(-42254)), !(!any(vec3<bool>(false, false, true))), -(~2147483647) > -2147483648), func_2(), var_0.a);
                var_2 = func_9(vec4<bool>(func_10(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1207.0 * 1791.0) + -566.0), func_7(all(var_2.a), Struct_2(44840u)).a, func_9(vec4<bool>(false, true, false, var_2.d.c), Struct_2(1u), ~33595u)).c, !var_2.d.c, !all(func_7(true, Struct_2(u_input.b)).a.xz), !all(func_9(vec4<bool>(true, true, false, false), Struct_2(1u), 2582u).a)), Struct_2(_wgslsmith_add_u32(1u, ~(~var_2.c.x))), func_4(func_5(), _wgslsmith_dot_vec2_u32(u_input.a, ~var_2.c.yz), func_5(), select(!(!var_2.a.zz), func_9(vec4<bool>(var_2.a.x, false, var_2.a.x, false), Struct_2(58315u), firstTrailingBit(var_2.c.x)).a.xy, !var_2.a.wz)));
                let var_3 = -vec2<i32>(var_2.d.a.x, -33102);
                var var_4 = vec4<bool>(false, min(func_8(42089, Struct_3(vec4<bool>(true, true, false, var_2.a.x), vec3<i32>(-2147483648, var_3.x, var_2.b.x), var_2.c, Struct_1(var_2.b, -13472, var_2.a.x)), vec4<f32>(-1680.0, 1473.0, -1116.0, -1012.0)) ^ (u_input.c ^ u_input.c), func_4(Struct_1(var_2.b, 66766, true), u_input.a.x, func_9(vec4<bool>(var_2.d.c, false, false, var_2.d.c), Struct_2(85800u), 11213u).d, !vec2<bool>(true, var_2.d.c))) <= _wgslsmith_add_u32(17667u, 4294967295u), var_2.d.c, var_2.a.x);
            }
            for (var var_1 = ~(~func_3(Struct_3(global1[_wgslsmith_index_u32(var_0.a, 19u)], -vec3<i32>(-36307, -2147483648, 26415), ~vec4<u32>(var_0.a, 0u, var_0.a, var_0.a), func_5()))); all(!vec2<bool>(_wgslsmith_f_op_f32(987.0 - -154.0) >= _wgslsmith_f_op_f32(-2435.0), !(true && false))); global0 = array<vec4<f32>, 1>()) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                let var_2 = Struct_3(global1[_wgslsmith_index_u32(var_0.a, 19u)], vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(41029, -1), vec2<i32>(-26109, 1), vec2<i32>(16284, -46785)), vec2<i32>(-2147483648, 19699) ^ vec2<i32>(-46609, 1)), firstLeadingBit(~vec2<i32>(-1, -2147483648))), func_7(true, Struct_2(68912u)).b.x, ~(-1 & 1)), countOneBits(max(~(~vec4<u32>(u_input.a.x, var_0.a, 1u, 0u)), vec4<u32>(firstLeadingBit(var_0.a), u_input.a.x >> (u_input.b % 32u), 4294967295u, _wgslsmith_add_u32(37165u, u_input.c)))), func_10(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(867.0, -153.0))), !vec4<bool>(false, false != false, false, false), Struct_3(!(!vec4<bool>(false, false, true, false)), reverseBits(select(vec3<i32>(30772, -2147483648, 39112), vec3<i32>(49165, -46418, 2147483647), false)), ~max(vec4<u32>(19555u, 0u, 94107u, u_input.c), vec4<u32>(u_input.b, var_0.a, 24005u, 1u)), func_7(false, func_2()).d)));
                break;
            }
            switch (_wgslsmith_mod_i32(-(~(-2147483648)), i32(-1) * -13737)) {
                default: {
                    var var_1 = select(!vec3<bool>(any(!vec3<bool>(true, false, true)), !func_10(891.0, global1[_wgslsmith_index_u32(1u, 19u)], Struct_3(vec4<bool>(true, true, false, false), vec3<i32>(-25987, -1, 1), vec4<u32>(var_0.a, 37108u, 1u, 6559u), Struct_1(vec3<i32>(-2147483648, 36005, -1), 75977, true))).c, !(0u > 61621u)), vec3<bool>(!(!select(true, false, false)), true, !((true | false) | !true)), any(!(!vec2<bool>(true, true))));
                    var_1 = vec3<bool>(select(!var_1.x && (4294967295u == 3136u), !((var_0.a <= 66011u) && !false), !true || var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -221.0) - _wgslsmith_f_op_f32(526.0 - 1595.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1346.0, -1358.0)), _wgslsmith_f_op_f32(min(-429.0, -682.0))), var_1.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * 679.0) + _wgslsmith_f_op_f32(f32(-1.0) * -462.0))), !(!any(vec3<bool>(false, false, var_1.x))) || !select(!var_1.x, func_5().c, true));
                    let var_2 = vec4<u32>(var_0.a, func_9(func_7(true, Struct_2(4294967295u)).a, func_2(), var_0.a).c.x | 4294967295u, 4294967295u | firstLeadingBit(~(~4294967295u)), 57383u);
                }
            }
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            }
        }
        case 1: {
        }
        default: {
            var var_1 = func_10(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1740.0, -712.0))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000.0, -1819.0))))), vec4<bool>(func_9(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), Struct_2(34537u), 32610u).a.x, !((-17654 ^ 0) < 2298), !func_10(_wgslsmith_f_op_f32(select(-434.0, -576.0, false)), global1[_wgslsmith_index_u32(u_input.b, 19u)], func_7(false, Struct_2(var_0.a))).c, all(select(func_7(false, Struct_2(var_0.a)).a.wy, vec2<bool>(true, true), func_7(false, Struct_2(var_0.a)).a.ww))), func_9(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false), func_2(), 0u));
            loop {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                var_1 = func_9(select(vec4<bool>(func_10(963.0, vec4<bool>(false, var_1.c, true, var_1.c), Struct_3(global1[_wgslsmith_index_u32(var_0.a, 19u)], var_1.a, vec4<u32>(u_input.b, 4294967295u, var_0.a, 1u), Struct_1(vec3<i32>(-1, var_1.b, -2147483648), -67182, var_1.c))).c, !var_1.c, any(vec4<bool>(var_1.c, var_1.c, var_1.c, true)), !all(vec2<bool>(true, false))), global1[_wgslsmith_index_u32(~select(~68014u, 26786u, func_9(vec4<bool>(false, true, false, var_1.c), Struct_2(u_input.a.x), u_input.a.x).a.x), 19u)], vec4<bool>(!(!var_1.c), var_0.a <= ~u_input.a.x, !var_1.c, var_1.c)), func_2(), _wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(var_0.a, 1u), var_0.a))).d;
                global0 = array<vec4<f32>, 1>();
                var var_2 = Struct_1(vec3<i32>(-(~(-41237)), var_1.a.x, _wgslsmith_clamp_i32(2147483647 >> (u_input.a.x % 32u), var_1.b, _wgslsmith_mult_i32(2147483647, 1))) >> (_wgslsmith_sub_vec3_u32(func_7(var_1.c && var_1.c, Struct_2(4294967295u)).c.zyy, vec3<u32>(func_7(var_1.c, Struct_2(1u)).c.x, _wgslsmith_clamp_u32(106203u, u_input.b, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, var_0.a))) % vec3<u32>(32u)), var_1.b, var_1.c);
                break;
            }
            let var_2 = Struct_3(!(!global1[_wgslsmith_index_u32(u_input.c, 19u)]), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(18900, _wgslsmith_mod_i32(var_1.a.x, -8583)), 61045), func_10(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1319.0))), vec4<bool>(func_7(false, Struct_2(var_0.a)).a.x, !false, true, func_9(global1[_wgslsmith_index_u32(37012u, 19u)], Struct_2(29099u), 1664u).d.c), func_9(select(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], vec4<bool>(var_1.c, var_1.c, true, false)), func_2(), 46869u)).a.x, ~(~firstLeadingBit(0))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0.a, func_7(true, Struct_2(u_input.a.x)).c.x), ~_wgslsmith_mult_u32(4294967295u, 0u), var_0.a | max(0u, u_input.b), var_0.a), ~reverseBits(vec4<u32>(var_0.a, 0u, 20820u, var_0.a))), func_7(true, func_2()).d);
        }
    }
    if (func_10(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206.0)))), vec4<bool>(!(-420.0 < _wgslsmith_div_f32(1000.0, 2208.0)), true, func_10(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-368.0, -425.0))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 10588u, var_0.a), vec4<u32>(1u, u_input.b, var_0.a, var_0.a)), 19u)], func_7(true, func_2())).c, false), func_9(vec4<bool>(!func_9(global1[_wgslsmith_index_u32(1u, 19u)], Struct_2(4294967295u), u_input.a.x).d.c, all(func_9(vec4<bool>(false, true, false, false), Struct_2(u_input.a.x), var_0.a).a.zw), true, all(func_9(global1[_wgslsmith_index_u32(12074u, 19u)], Struct_2(var_0.a), u_input.a.x).a.xzy)), Struct_2(19179u), 20078u)).c) {
        switch (-34963) {
            case 9245: {
            }
            case -12542: {
                let var_1 = Struct_1(-vec3<i32>(2147483647 | ~0, func_7(false | true, func_2()).b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1, -14820, 22403, -2147483648), vec4<i32>(16462, 2147483647, 2147483647, -9354))), ~(-abs(func_5().a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(790.0, 1000.0))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(-421.0)))));
            }
            default: {
                var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(234.0 + -1111.0), _wgslsmith_f_op_f32(-1000.0 + -718.0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-498.0)) * _wgslsmith_f_op_f32(select(-1219.0, -517.0, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(762.0 - 1586.0), _wgslsmith_f_op_f32(2021.0 * -2421.0))))), func_4(func_9(vec4<bool>(true, false, false, false), Struct_2(u_input.c), 4257u).d, ~var_0.a, func_9(global1[_wgslsmith_index_u32(18317u, 19u)], Struct_2(u_input.a.x), u_input.b).d, func_9(vec4<bool>(false, false, true, false), Struct_2(41446u), 4294967295u).a.xx) == 1u)), 155.0);
                return;
            }
        }
        switch (~(~(-30350))) {
            default: {
                var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478.0 + -1009.0)) + _wgslsmith_f_op_f32(f32(-1.0) * -972.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526.0 * 881.0)))));
            }
        }
        for (var var_1 = -33737; func_9(vec4<bool>(!(!(!true)), func_10(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1117.0 - -526.0) - -775.0), !vec4<bool>(false, false, true, false), func_9(global1[_wgslsmith_index_u32(max(var_0.a, var_0.a), 19u)], func_2(), ~0u)).c, !(!(-2147483648 >= 35535)), all(vec4<bool>(true, false, false, false)) | all(!vec3<bool>(true, true, true))), Struct_2(u_input.a.x), reverseBits(~(~var_0.a))).a.x; var_1 -= 1) {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            var var_2 = func_2();
            continue;
        }
        let var_1 = ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.a, var_0.a)), u_input.a);
        return;
    }
    let var_1 = _wgslsmith_add_vec3_i32(-vec3<i32>(1, -2147483648, _wgslsmith_dot_vec3_i32(max(vec3<i32>(7060, -2147483648, 2147483647), vec3<i32>(-1, 19864, -64015)), vec3<i32>(-24131, -1, -1) ^ vec3<i32>(-1, -2533, -18774))), ~vec3<i32>(-2147483648, ~(~31772), func_7(true, Struct_2(35193u)).d.b >> (~501u % 32u)));
    loop {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        global0 = array<vec4<f32>, 1>();
        break;
    }
    if (!(all(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a >> (32318u % 32u), _wgslsmith_mod_u32(var_0.a, 100787u)), 19u)]) & ((u_input.a.x & _wgslsmith_mod_u32(20215u, var_0.a)) < 8641u))) {
        let var_2 = func_2();
        let var_3 = var_2.a;
        if (func_7(func_5().c, var_2).a.x) {
            let var_4 = (~(~(~vec3<u32>(36011u, 15029u, var_2.a))) ^ vec3<u32>(countOneBits(_wgslsmith_add_u32(u_input.a.x, 33003u)), var_0.a, var_0.a)) | func_9(vec4<bool>(true, false, !all(global1[_wgslsmith_index_u32(11686u, 19u)]), !(-716.0 > 1000.0)), Struct_2(var_0.a), (_wgslsmith_mod_u32(66179u, u_input.c) & (var_0.a | var_2.a)) | (~var_3 & ~4294967295u)).c.ywy;
            var var_5 = Struct_1(vec3<i32>(-2147483648, var_1.x, firstTrailingBit(func_3(Struct_3(vec4<bool>(true, false, true, true), vec3<i32>(var_1.x, var_1.x, 49930), vec4<u32>(1u, var_3, 30958u, 35031u), Struct_1(vec3<i32>(2147483647, -20142, -2147483648), var_1.x, true))))), var_1.x, true);
            return;
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(12931u, 1u, u_input.a.x)), vec3<u32>(var_0.a, 15054u, 1u))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(var_1, 27928, false))), _wgslsmith_f_op_f32(1420.0 * -192.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1741.0)) * _wgslsmith_f_op_f32(step(1523.0, -1231.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(423.0, 203.0, false)))))), u_input.b, 66944u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), _wgslsmith_f_op_f32(floor(-527.0)), _wgslsmith_f_op_f32(-922.0 * _wgslsmith_f_op_f32(f32(-1.0) * -1305.0))));
}

