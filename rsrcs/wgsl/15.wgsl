// {"0:0":[115,45,54,241,193,140,99,133,182,90,180,111,37,47,251,181,63,75,125,63,148,194,103,74,227,193,115,124,72,24,216,172]}
// Seed: 16919385301076372210

struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> LOOP_COUNTERS: array<u32, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-638.0, -366.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(950.0, 437.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1362.0, 152.0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, 1130.0, 605.0, -1657.0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, 763.0, -1910.0, -702.0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(463.0, -1059.0, 1198.0, -1000.0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1189.0, -1664.0, 1813.0, 270.0)))), vec4<bool>((4098u > 0u) || true, all(select(vec4<bool>(arg_1.a, true, false, true), vec4<bool>(false, arg_1.a, false, arg_1.a), vec4<bool>(true, false, arg_1.a, arg_1.a))), false, !any(vec4<bool>(true, arg_1.a, arg_1.a, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1990.0, 249.0, 160.0, -1256.0)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1560.0, -1000.0, -801.0, -527.0))))))));
    switch (arg_0.x) {
        case 39540: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                let var_1 = _wgslsmith_div_vec4_i32(-((vec4<i32>(-1) * -vec4<i32>(arg_0.x, arg_0.x, u_input.b, u_input.b)) >> ((vec4<u32>(0u, u_input.e.x, u_input.d, u_input.a) ^ ~vec4<u32>(u_input.e.x, 0u, 0u, u_input.a)) % vec4<u32>(32u))), vec4<i32>(1, arg_0.x, u_input.b, _wgslsmith_clamp_i32((-28411 & arg_0.x) >> (abs(0u) % 32u), select(8965, -1, all(vec3<bool>(false, arg_1.a, true))), ~_wgslsmith_clamp_i32(u_input.b, u_input.b, arg_0.x))));
                global0 = -2349.0;
            }
            global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -1374.0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(627.0)))))), _wgslsmith_f_op_f32(330.0 * _wgslsmith_div_f32(var_0.x, var_0.x))));
            var var_1 = -vec2<i32>(2795, ~abs(-2147483648 | arg_0.x));
        }
        case 44718: {
            var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, 1658.0))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1883.0, -219.0, 1397.0, var_0.x), vec4<f32>(436.0, var_0.x, -584.0, var_0.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -985.0, 2212.0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(484.0, -175.0, var_0.x, 1000.0) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 446.0, -911.0, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 977.0))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 459.0, var_0.x)))))), arg_1.a));
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            }
            return var_0.x;
        }
        case 22570: {
            for (; !(u_input.e.x <= ~(~0u)); ) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                break;
            }
            for (var var_1 = 1; var_1 != -2147483648; var_1 -= 1) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 8570, 14653 ^ arg_0.x, u_input.b), ~(reverseBits(vec4<i32>(arg_0.x, arg_0.x, u_input.b, arg_0.x)) << ((vec4<u32>(u_input.d, u_input.e.x, u_input.d, u_input.e.x) & max(vec4<u32>(0u, 0u, 1u, u_input.d), vec4<u32>(14009u, u_input.c, 1u, 1u))) % vec4<u32>(32u))));
                var var_2 = !select(select(!(!vec4<bool>(arg_1.a, true, false, arg_1.a)), vec4<bool>(arg_1.a, all(vec2<bool>(arg_1.a, false)), all(vec3<bool>(false, false, true)), true), !(!vec4<bool>(arg_1.a, false, true, arg_1.a))), select(select(vec4<bool>(true, false, false, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, false, false), arg_1.a), select(select(vec4<bool>(false, arg_1.a, false, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a), arg_1.a), vec4<bool>(true, true, arg_1.a, arg_1.a), arg_1.a), _wgslsmith_f_op_f32(abs(-2173.0)) >= _wgslsmith_f_op_f32(-var_0.x)), any(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), select(vec4<bool>(false, arg_1.a, true, arg_1.a), vec4<bool>(false, false, false, arg_1.a), arg_1.a), false & false)));
                var var_3 = -u_input.b;
            }
            global0 = _wgslsmith_f_op_f32(select(1318.0, var_0.x, false));
            var var_1 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(select(min(10888, arg_0.x), u_input.b, !false), -abs(38083), (0 & -2147483648) ^ _wgslsmith_mult_i32(u_input.b, arg_0.x), u_input.b), vec4<i32>(-35361, -arg_0.x, arg_0.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.x, -5955), u_input.b, ~u_input.b)), vec4<i32>(1263, _wgslsmith_sub_i32(1972, 2147483647), ~36113, arg_0.x)), ~vec4<i32>(i32(-1) * -u_input.b, _wgslsmith_mod_i32(arg_0.x, reverseBits(u_input.b)), ~(-2147483647), _wgslsmith_mult_i32(-2147483647, ~(-2147483648))), select(vec4<bool>(arg_1.a, !select(arg_1.a, arg_1.a, arg_1.a), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)) >= var_0.x, select(u_input.e.x, u_input.a, true) < countOneBits(u_input.a)), !(!vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * _wgslsmith_f_op_f32(1202.0 + var_0.x)) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(971.0 - 306.0)))));
        }
        case 0: {
        }
        default: {
            let var_1 = Struct_1(-u_input.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.wy, _wgslsmith_f_op_vec2_f32(-var_0.xy)) - var_0.ww), _wgslsmith_f_op_vec2_f32(sign(var_0.ww)))), ~(vec3<u32>(~16133u, u_input.d, 1u << (u_input.d % 32u)) | vec3<u32>(~u_input.d, u_input.c, ~49923u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, arg_0.x, ~1, u_input.b), countOneBits(select(firstLeadingBit(vec4<i32>(2147483647, arg_0.x, 1, -1155)), vec4<i32>(u_input.b, -43141, -2147483648, u_input.b) ^ vec4<i32>(-2147483648, arg_0.x, u_input.b, 32228), any(vec3<bool>(arg_1.a, false, arg_1.a)))), -(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 1, -1, -1), vec4<i32>(-1, 56265, 0, arg_0.x)))), firstTrailingBit(~arg_0.xx));
            var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -360.0, var_0.x, 1456.0))))));
            var var_2 = vec4<i32>(abs(-2147483648), 23521, var_1.d.x, ~(3022 >> (u_input.a % 32u)));
            var var_3 = Struct_3(Struct_2((abs(4294967295u) ^ (72914u & var_1.c.x)) ^ u_input.d, var_1.c.x));
        }
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        }
        for (var var_1 = -11631; false | (false && true); var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, -591.0, var_0.x), vec4<f32>(var_0.x, -1000.0, var_0.x, var_0.x), arg_1.a)) * vec4<f32>(-583.0, -363.0, -644.0, var_0.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -267.0, 698.0, -967.0)), vec4<f32>(var_0.x, var_0.x, 2831.0, 198.0)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -414.0, var_0.x), vec4<f32>(737.0, var_0.x, var_0.x, -522.0)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            var var_2 = Struct_1(~arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1828.0))), var_0.x), select(~u_input.e, u_input.e, !select(select(vec3<bool>(false, true, arg_1.a), vec3<bool>(arg_1.a, false, true), true), !vec3<bool>(arg_1.a, true, false), select(vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(false, arg_1.a, arg_1.a), false))), -(~reverseBits(vec4<i32>(arg_0.x, -2147483648, 0, -1))) | (-min(vec4<i32>(arg_0.x, u_input.b, u_input.b, 129389), vec4<i32>(u_input.b, 1, 0, 30481)) ^ ~(-vec4<i32>(-1110, arg_0.x, 1, u_input.b))), arg_0.xy);
            let var_3 = ~_wgslsmith_dot_vec2_u32(var_2.c.yx, vec2<u32>(u_input.c, ~1u));
        }
        continue;
    }
    let var_1 = vec3<bool>(true, true, arg_1.a);
    for (; ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        if (!(!select(select(false, !true, var_1.x), arg_1.a, true))) {
            var_0 = vec4<f32>(_wgslsmith_f_op_f32(-775.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2179.0)) * _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(1151.0 - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))), var_0.x);
            var var_2 = reverseBits(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(arg_0.x), max(arg_0.x, -1)), reverseBits(u_input.b ^ arg_0.x)));
        }
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var var_2 = Struct_3(Struct_2(~(~u_input.a) & 6461u, countOneBits(_wgslsmith_clamp_u32(~4294967295u, 4294967295u, 0u))));
            continue;
        }
        var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(487.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113.0 - var_0.x)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, var_0.x, 2869.0, var_0.x) + vec4<f32>(var_0.x, 599.0, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1893.0, var_0.x, -1442.0, var_0.x))))), any(!select(vec2<bool>(arg_1.a, true), vec2<bool>(false, true), false)))));
    }
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-800.0), _wgslsmith_f_op_f32(-var_0.x));
}

fn func_5() -> vec3<bool> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_6(vec3<i32>(u_input.b, u_input.b, -25044), Struct_4(true))), _wgslsmith_f_op_f32(559.0 * 1214.0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-735.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -596.0) + _wgslsmith_f_op_f32(f32(-1.0) * -366.0))))));
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-889.0, _wgslsmith_f_op_f32(724.0 + _wgslsmith_div_f32(204.0, 848.0)))));
    var var_1 = ~65111u;
    var var_2 = vec4<u32>(_wgslsmith_add_u32(32262u, reverseBits(~(~u_input.d))), 4294967295u, ~select(_wgslsmith_add_u32(u_input.d, u_input.a), u_input.a, all(vec3<bool>(true, false, false))) << (firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 55475u), vec2<u32>(3254u, u_input.c), vec2<u32>(0u, u_input.e.x)), ~vec2<u32>(1u, u_input.e.x))) % 32u), 41947u | firstTrailingBit(u_input.e.x ^ ~u_input.c));
    return vec3<bool>(_wgslsmith_f_op_f32(exp2(1000.0)) < _wgslsmith_f_op_f32(select(var_0, -898.0, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))))), !any(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(!vec3<bool>(4294967295u <= 17141u, all(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false)))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(f32(-1.0) * -1000.0);
    var var_0 = select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(!vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), !(!false)), func_5(), all(!vec3<bool>(false | false, select(true, true, false), all(vec4<bool>(false, true, true, true)))));
    if (true && !var_0.x) {
        global0 = _wgslsmith_f_op_f32(func_6(vec3<i32>(i32(-1) * -4130, u_input.b, u_input.b) & _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.b, 21101, 1) | vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -55731), !vec3<bool>(true, false, true)), vec3<i32>(select(0, 41057, var_0.x), u_input.b, -u_input.b)), Struct_4(!true)));
        switch (firstTrailingBit(u_input.b)) {
            default: {
                global0 = arg_0;
            }
        }
    }
    var_0 = !(!(!(!(!vec3<bool>(var_0.x, true, var_0.x)))));
    if (select(true, !var_0.x, var_0.x)) {
        switch (u_input.b) {
            case 0: {
                var var_1 = -u_input.b;
                let var_2 = vec4<bool>(var_0.x, var_0.x, !var_0.x, !var_0.x);
                var var_3 = u_input.e.x;
                let var_4 = u_input.d;
            }
            case 1: {
                var_0 = !vec3<bool>(!all(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x))), 4294967295u >= u_input.c, var_0.x);
                var_0 = vec3<bool>(1000.0 == 250.0, min(u_input.b, _wgslsmith_sub_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b))) <= abs(u_input.b), !(!var_0.x));
            }
            case -9618: {
                var var_1 = ~(~(-vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(11453, -2147483648), vec2<i32>(0, 35735)))));
                let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, ~u_input.a), vec2<u32>(u_input.d, 1341u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e.x, 0u), u_input.e) % 32u))));
                global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)));
                var var_3 = Struct_4(var_0.x);
            }
            case 16945: {
                var var_1 = _wgslsmith_dot_vec3_u32(abs(u_input.e), u_input.e);
                var var_2 = vec3<u32>(u_input.d, 4294967295u, ~u_input.a) & ~(~vec3<u32>(_wgslsmith_mult_u32(0u, 47638u), u_input.a << (u_input.c % 32u), reverseBits(u_input.c)));
                var_2 = u_input.e;
                var_0 = func_5();
            }
            default: {
                let var_1 = Struct_3(Struct_2(_wgslsmith_div_u32(_wgslsmith_mod_u32(34005u, 82335u) | abs(1u), ~0u), 23225u));
                var_0 = func_5();
            }
        }
        let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(arg_1)), _wgslsmith_f_op_vec3_f32(trunc(arg_1)), true)))));
    }
    return Struct_2(u_input.c, reverseBits((u_input.c ^ (0u >> (u_input.c % 32u))) & u_input.a));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, -_wgslsmith_clamp_i32(-u_input.b, -1, abs(21565))), u_input.b);
    let var_1 = Struct_4(!false);
    var var_2 = _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(1, var_0, var_0), vec3<i32>(-10640, var_0, -22930)))), countOneBits(vec2<i32>(-2147483648 << (abs(0u) % 32u), 7854)));
    var var_3 = u_input.e.x;
    if (!(2147483647 < u_input.b)) {
        for (var var_4 = 27624; ; var_4 += 1) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(509.0 + arg_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x)) + _wgslsmith_f_op_f32(floor(arg_1.x)))));
            let var_5 = Struct_5(!(!select(!vec4<bool>(true, false, var_1.a, var_1.a), !vec4<bool>(false, true, true, var_1.a), true)), Struct_3(arg_0), Struct_4(false), Struct_4(!var_1.a));
            let var_6 = Struct_2(u_input.e.x, 0u);
            var_4 = ~max(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 31479, u_input.b, var_0), vec4<i32>(9968, var_0, 1, u_input.b) >> (vec4<u32>(34879u, u_input.a, 72640u, u_input.a) % vec4<u32>(32u))), var_0);
        }
        var var_4 = Struct_3(Struct_2(~(~20582u), _wgslsmith_mult_u32(0u, firstTrailingBit(u_input.e.x))));
        let var_5 = abs(-((_wgslsmith_mult_vec3_i32(vec3<i32>(-1, -1, u_input.b), vec3<i32>(-2147483648, u_input.b, 0)) >> ((vec3<u32>(1u, 4140u, 31850u) | u_input.e) % vec3<u32>(32u))) | -countOneBits(vec3<i32>(var_0, var_0, u_input.b))));
        var var_6 = min(-1, var_0);
    }
    return func_4(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1000.0, 836.0)))))), _wgslsmith_f_op_vec3_f32(floor(arg_1)))));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-750.0 - _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) + _wgslsmith_f_op_f32(473.0 * _wgslsmith_f_op_f32(select(-427.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(3516.0, -910.0))), any(!vec3<bool>(false, true, false))))));
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        var var_0 = func_7(func_4(648.0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(207.0, 1334.0, 821.0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1567.0, 1738.0, 1005.0) * vec3<f32>(1554.0, -243.0, 137.0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-207.0, -1152.0, -111.0), vec3<f32>(1004.0, 322.0, -343.0))) - vec3<f32>(_wgslsmith_f_op_f32(-916.0 * -1525.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(abs(-2480.0)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -994.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-232.0 - 797.0) * _wgslsmith_f_op_f32(-1438.0 + -291.0)), 574.0)));
        let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -324.0) * _wgslsmith_f_op_f32(f32(-1.0) * -612.0))))), _wgslsmith_f_op_f32(func_6(vec3<i32>(-_wgslsmith_clamp_i32(u_input.b, -44663, u_input.b), -2147483648, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b, 0), vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, false)), ~vec2<i32>(0, u_input.b))), Struct_4(!(0u != u_input.e.x)))), 636.0);
        let var_2 = Struct_2(~1u, u_input.c);
        var var_3 = Struct_1(u_input.b ^ u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))), ~vec3<u32>(_wgslsmith_div_u32(0u, var_2.a), ~(~u_input.e.x), u_input.c), max(countOneBits(vec4<i32>(-1, u_input.b, abs(46757), u_input.b << (var_2.b % 32u))), ~vec4<i32>(u_input.b, i32(-1) * -2147483648, u_input.b, -1)), reverseBits(vec2<i32>(~(-2147483648), -1)));
        var var_4 = _wgslsmith_mod_u32(25647u, _wgslsmith_dot_vec3_u32(var_3.c, u_input.e));
    }
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956.0))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-449.0, -485.0, true))))) + 936.0));
    var var_0 = Struct_3(Struct_2(func_4(-1118.0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(564.0, -888.0, -1776.0)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-364.0, -1098.0, 496.0), vec3<f32>(-2066.0, 528.0, 165.0))))).b, _wgslsmith_mod_u32(firstLeadingBit(u_input.d), 45543u)));
    for (var var_1 = -1; var_1 >= 2147483647; var_0 = Struct_3(func_7(var_0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-978.0, -1000.0, -502.0), vec3<f32>(-1413.0, -1570.0, 1549.0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1192.0, -151.0, -559.0), vec3<f32>(-596.0, 157.0, 599.0)))), false))))) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        switch (u_input.b) {
            case -2147483648: {
                var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1257.0, 1000.0) * _wgslsmith_f_op_f32(924.0 + -1060.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(345.0)))), _wgslsmith_f_op_f32(812.0 + 579.0)));
                break;
            }
            case 1965: {
                continue;
            }
            case 86809: {
                let var_2 = Struct_4(true);
                return u_input.b;
            }
            default: {
                break;
            }
        }
    }
    return u_input.b;
}

fn func_2(arg_0: Struct_2) -> Struct_5 {
    var var_0 = -(~_wgslsmith_add_vec4_i32(vec4<i32>(42798, -16095, u_input.b | -33346, firstTrailingBit(63656)), vec4<i32>(func_3(), u_input.b, 1, i32(-1) * -2147483648)));
    var_0 = ~vec4<i32>(~var_0.x, var_0.x | _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 25098, -2147483648, var_0.x), vec4<i32>(u_input.b, var_0.x, 1, var_0.x)), 1 << (u_input.d % 32u)), -(~reverseBits(25347)), -u_input.b);
    return Struct_5(select(!select(!vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), all(vec4<bool>(true, false, false, false))), !(!(!vec4<bool>(false, true, false, false))), u_input.a != firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 1u), u_input.e.xy))), Struct_3(Struct_2(~abs(u_input.c), 0u & (4294967295u << (u_input.a % 32u)))), Struct_4(all(vec3<bool>(!false, !false, true || false))), Struct_4((var_0.x << (_wgslsmith_mod_u32(4294967295u, 0u) % 32u)) < (var_0.x | _wgslsmith_sub_i32(1, u_input.b))));
}

fn func_8(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: Struct_5) -> vec2<f32> {
    var var_0 = 8364u;
    for (; arg_1.c.a; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_1 = -(~vec2<i32>(firstTrailingBit(~arg_2.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1, arg_2.x), arg_2.xz))));
        switch (_wgslsmith_clamp_i32(abs(_wgslsmith_add_i32(var_1.x, var_1.x)), -(~(-u_input.b)), min(-1, 22364)) >> ((arg_1.b.a.a >> ((_wgslsmith_sub_u32(u_input.c, 4294967295u) & select(arg_1.b.a.b, ~u_input.e.x, !arg_1.a.x)) % 32u)) % 32u)) {
            case 2147483647: {
                break;
            }
            case -10172: {
            }
            default: {
                let var_2 = arg_3.a.wzy;
                var var_3 = u_input.c;
            }
        }
        switch (firstLeadingBit(select(32315, 0, arg_1.a.x))) {
            case -18980: {
                var var_2 = _wgslsmith_f_op_vec2_f32(abs(arg_0.zx));
            }
            case 0: {
                var var_2 = func_7(Struct_2(_wgslsmith_sub_u32(arg_3.b.a.b | 4294967295u, firstLeadingBit(4294967295u)) << (abs(arg_3.b.a.a) % 32u), 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1797.0)))), arg_0.x, arg_0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0)))));
                let var_3 = arg_0.xx;
                let var_4 = func_7(func_7(func_7(func_4(-690.0, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(348.0, arg_0.x, var_3.x), vec3<f32>(arg_0.x, 1000.0, 1754.0), arg_1.a.yzz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, var_3.x, var_3.x), vec3<f32>(-780.0, -415.0, -204.0)))), arg_0), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(-421.0 - arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x)))), arg_0.x));
                global0 = arg_0.x;
            }
            default: {
                global0 = arg_0.x;
                return arg_0.yz;
            }
        }
    }
    global0 = 2110.0;
    switch (-max(i32(-1) * -11433, u_input.b)) {
        case 2147483647: {
        }
        case -1: {
            switch (-func_3()) {
                case -14866: {
                    var var_1 = u_input.b;
                }
                default: {
                }
            }
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
            let var_1 = _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(arg_3.b.a.b, 1u, 47710u, _wgslsmith_mod_u32(~19036u, abs(arg_1.b.a.a)))), vec4<u32>(arg_1.b.a.b, countOneBits(~(~3149u)), u_input.a, 0u));
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(arg_2, arg_3.d)) + arg_0.x));
        }
        case 1: {
            if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-768.0 * arg_0.x)) < _wgslsmith_f_op_f32(-293.0)) {
                let var_1 = ~(~vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33622u, 4294967295u, 45128u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 908u, 10812u, 4294967295u), vec4<u32>(arg_3.b.a.b, u_input.a, 4294967295u, u_input.d))), reverseBits(func_4(arg_0.x, arg_0).b), ~(88130u >> (arg_1.b.a.a % 32u))));
                let var_2 = arg_3.b.a;
                global0 = arg_0.x;
                var_0 = firstTrailingBit(~32360u);
            }
            for (var var_1 = -2473; all(!func_5().xz); var_1 -= 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            }
            if (arg_3.a.x) {
                var_0 = _wgslsmith_dot_vec2_u32(u_input.e.yy, u_input.e.yy);
            }
        }
        default: {
            global0 = _wgslsmith_f_op_f32(-434.0 * _wgslsmith_f_op_f32(949.0 * _wgslsmith_f_op_f32(-242.0 + arg_0.x)));
            var var_1 = !arg_3.d.a;
            var var_2 = arg_3.b.a;
            switch (_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647, 49017 | 35673), arg_2.x), _wgslsmith_mult_i32(u_input.b, -36979) >> (func_7(Struct_2(var_2.a, 14561u), _wgslsmith_f_op_vec3_f32(abs(arg_0))).b % 32u)), 28673)) {
                default: {
                    var var_3 = true;
                    var_2 = Struct_2(~(u_input.c << (~abs(u_input.e.x) % 32u)), 0u);
                    let var_4 = arg_3.c;
                    var_1 = !true | func_2(arg_1.b.a).c.a;
                }
            }
            for (var var_3 = 2147483647; true & all(!select(vec3<bool>(true, arg_1.d.a, true), func_2(Struct_2(var_2.b, arg_3.b.a.b)).a.yzx, select(vec3<bool>(false, arg_1.d.a, false), arg_1.a.ywz, arg_1.d.a))); ) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                let var_4 = arg_1.b.a;
            }
        }
    }
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -511.0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1358.0 + 1772.0), 929.0))));
    return arg_0.zz;
}

fn func_9(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> bool {
    if (true) {
        for (; ; ) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_0 = 0u;
            var_0 = u_input.d ^ 4294967295u;
        }
        let var_0 = func_2(func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.b.x)), -280.0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * arg_0.b.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1240.0 + 1000.0), _wgslsmith_f_op_f32(1000.0 - arg_0.b.x), _wgslsmith_f_op_f32(step(-519.0, arg_0.b.x))))))).b;
        var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(245.0)));
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        }
    }
    var var_0 = arg_0.c.x << (arg_0.c.x % 32u);
    for (var var_1 = 16620; _wgslsmith_f_op_f32(func_6(-_wgslsmith_mult_vec3_i32(arg_0.d.zwy, arg_0.d.xwy) & arg_0.d.wzz, Struct_4(select(arg_1.x, !true, 164.0 > arg_0.b.x)))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(round(-582.0))))), arg_0.b.x)); var_1 += 1) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        let var_2 = !vec3<bool>(false, arg_1.x, any(!vec2<bool>(true, false)));
        loop {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        }
        var var_3 = arg_0.b.x;
        break;
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        if (!arg_1.x | all(vec2<bool>(true, false))) {
        }
    }
    var_0 = ~0u;
    return all(!arg_1);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4) -> bool {
    global0 = _wgslsmith_f_op_f32(max(-598.0, _wgslsmith_f_op_f32(f32(-1.0) * -1847.0)));
    let var_0 = 306.0;
    if (func_9(Struct_1(u_input.b & countOneBits(10714), _wgslsmith_f_op_vec2_f32(func_8(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1176.0, -490.0))), func_2(Struct_2(u_input.d, 126175u)), -vec3<i32>(1, 6002, 2147483647), func_2(func_4(609.0, vec3<f32>(-1506.0, -789.0, 1000.0))))), ~max(u_input.e, ~u_input.e), vec4<i32>(abs(-u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(1, 1, u_input.b, u_input.b), vec4<i32>(-2147483648, u_input.b, -49998, 20545) ^ vec4<i32>(-2147483648, u_input.b, u_input.b, -23103)), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-34163, 2147483647, 6541, 712), vec4<i32>(-44314, 32400, 26214, -1)) ^ _wgslsmith_clamp_i32(u_input.b, u_input.b, -17590)), ~max(vec2<i32>(-1, 1) >> (u_input.e.xx % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(0, u_input.b), vec2<i32>(0, u_input.b)))), !(!vec3<bool>(false, all(vec4<bool>(false, true, arg_1.a, arg_0.x)), any(vec2<bool>(true, false)))), ~vec2<i32>(-15571, u_input.b))) {
        var var_1 = func_2(func_2(Struct_2(_wgslsmith_add_u32(4294967295u, max(u_input.d, 1u)), u_input.d)).b.a).b;
        global0 = _wgslsmith_f_op_f32(-893.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    }
    var var_1 = u_input.e;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, 131.0, var_0, var_0), vec4<f32>(-1368.0, var_0, 2113.0, 1000.0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)))))));
    return false;
}

fn func_10(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    if (!all(!vec4<bool>(arg_0, false, arg_2 != 142.0, arg_0))) {
        var var_0 = Struct_4(_wgslsmith_f_op_f32(-arg_2) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2)))));
        var_0 = Struct_4(true);
        let var_1 = func_2(Struct_2(~arg_1.a.b, 0u)).c;
    }
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 1696.0) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2, arg_2)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -524.0) - arg_2))))));
    for (var var_0 = 39977; var_0 > -1; var_0 -= 1) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
    }
    global0 = _wgslsmith_f_op_f32(min(-135.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1785.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 - 1533.0))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_2, 516.0)))))));
    let var_0 = func_2(arg_1.a).d;
    return Struct_3(Struct_2(0u, ~4294967295u));
}

fn func_11(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    switch (-5883) {
        case -18475: {
        }
        case 1: {
            switch (_wgslsmith_add_i32(_wgslsmith_add_i32(-1, 12066 | (-33313 ^ arg_2.e.x)), func_3())) {
                case 0: {
                    let var_0 = _wgslsmith_add_u32(~(~arg_0.a), arg_0.b);
                    let var_1 = Struct_3(func_2(arg_0).b.a);
                    global0 = _wgslsmith_f_op_f32(floor(1106.0));
                    let var_2 = countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.c.x, func_10(!false, Struct_3(arg_1.a), -450.0).a.a, ~func_7(var_1.a, vec3<f32>(arg_2.b.x, -405.0, arg_2.b.x)).a, abs(arg_1.a.b ^ 1u)), ~(reverseBits(vec4<u32>(17533u, 4294967295u, 19335u, var_0)) << (firstLeadingBit(vec4<u32>(var_0, 4294967295u, var_1.a.a, 67238u)) % vec4<u32>(32u)))));
                    global0 = arg_2.b.x;
                }
                default: {
                }
            }
            global0 = -753.0;
        }
        default: {
            switch (-33550 >> (func_4(_wgslsmith_f_op_f32(f32(-1.0) * -483.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-831.0), _wgslsmith_f_op_f32(round(-1880.0)), _wgslsmith_f_op_f32(f32(-1.0) * -317.0)))).b % 32u)) {
                case 2147483647: {
                    let var_0 = min(vec4<u32>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1061.0) + _wgslsmith_f_op_f32(-913.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_2.b.x, -1000.0) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, arg_2.b.x, -1297.0) + vec3<f32>(arg_2.b.x, -707.0, 379.0)))).a, ~min(~arg_1.a.a, ~arg_0.a), func_10(!(false && false), arg_1, 1773.0).a.a, firstTrailingBit(arg_0.a)), ~_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 49758u, arg_1.a.a), vec4<u32>(7161u, 57776u, 4294967295u, 1u), vec4<u32>(arg_0.a, 1u, u_input.e.x, 75660u)), max(vec4<u32>(arg_0.a, 0u, 4294967295u, arg_0.b), select(vec4<u32>(arg_2.c.x, 4294967295u, 3925u, arg_1.a.b), vec4<u32>(arg_2.c.x, arg_1.a.b, 4294967295u, u_input.a), vec4<bool>(false, true, true, true)))));
                    global0 = -298.0;
                    global0 = _wgslsmith_f_op_f32(abs(arg_2.b.x));
                    var var_1 = _wgslsmith_dot_vec2_i32(reverseBits(select(_wgslsmith_add_vec2_i32(firstTrailingBit(arg_2.e), arg_2.e), arg_2.d.xz, true)), ~countOneBits(arg_2.d.zz));
                }
                case 1: {
                    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1349.0 - -273.0));
                    let var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-1, -22092, max(~u_input.b, u_input.b)), ~19853), abs((i32(-1) * -arg_2.a) | 6685), -16765);
                    return arg_2.b.x;
                }
                case -2804: {
                    let var_0 = false;
                    let var_1 = arg_2.d;
                    return -2093.0;
                }
                default: {
                    let var_0 = _wgslsmith_mult_vec4_i32(~(~arg_2.d) >> (max(abs(vec4<u32>(0u, 34019u, arg_0.a, 8498u)) ^ ~vec4<u32>(arg_0.b, 73891u, 69880u, 30726u), abs(vec4<u32>(u_input.c, 1u, 66965u, arg_0.b) >> (vec4<u32>(arg_0.a, arg_2.c.x, 0u, arg_2.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<i32>(arg_2.e.x, u_input.b << (min(4294967295u, ~arg_0.a) % 32u), ~1, u_input.b));
                    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * 796.0))), 312.0))));
                    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3332.0, -427.0, arg_2.b.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(324.0, arg_2.b.x, 263.0)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.b.x, 1636.0, 593.0))), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b.x, arg_2.b.x, -798.0), vec3<f32>(arg_2.b.x, -197.0, -1247.0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-351.0, 1900.0, 374.0) * vec3<f32>(1562.0, 1121.0, arg_2.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.b.x, 545.0, arg_2.b.x))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.x, 1000.0, arg_2.b.x), vec3<f32>(-439.0, arg_2.b.x, 350.0), vec3<bool>(false, false, false))))))), !func_9(arg_2, vec3<bool>(false == false, all(vec2<bool>(true, true)), false), arg_2.d.xy)));
                    global0 = -537.0;
                }
            }
            var var_0 = Struct_3(func_2(arg_0).b.a);
        }
    }
    var var_0 = 2147483647;
    global0 = arg_2.b.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(-788.0))), arg_2.b.x)) * _wgslsmith_f_op_f32(trunc(arg_2.b.x)));
    var_0 = -select(abs(u_input.b ^ -24358), arg_2.a, (u_input.b << (_wgslsmith_add_u32(arg_0.a, 0u) % 32u)) < 1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-498.0) + _wgslsmith_f_op_f32(-827.0)))) - arg_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(671.0, _wgslsmith_f_op_f32(func_11(Struct_2(u_input.a | 30160u, 68328u), func_10(func_1(vec3<bool>(true, false, false), Struct_4(true)), func_2(Struct_2(u_input.a, u_input.a)).b, _wgslsmith_f_op_f32(373.0 - -1262.0)), Struct_1(-74013, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1441.0, -1132.0))), vec3<u32>(44071u, 37839u, u_input.d), vec4<i32>(-77362, u_input.b, 29544, u_input.b), vec2<i32>(u_input.b, -23281))))) + 1000.0);
    }
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-639.0, -302.0, 320.0, -732.0), vec4<f32>(-114.0, 312.0, 563.0, 1000.0)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000.0, -668.0, 804.0, -759.0))), !vec4<bool>(false, false, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -638.0), -1000.0, -664.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-616.0 + -556.0)))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(445.0, -544.0, -614.0, -458.0))))));
    for (var var_1 = select(u_input.b, -44208, any(!(!func_2(Struct_2(u_input.a, 1u)).a.zx))); !all(vec4<bool>(!(var_0.x > var_0.x), true, all(!vec3<bool>(false, false, false)), 221.0 == _wgslsmith_f_op_f32(var_0.x * -3038.0))); var_1 += 1) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        if (!false) {
            var var_2 = firstTrailingBit(-13964);
            var var_3 = ~(~(~(~(~vec4<u32>(978u, u_input.a, 1u, 22762u)))));
        }
    }
    var var_1 = Struct_1(abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-13306, u_input.b, -2147483648, 31304) >> (vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.d) % vec4<u32>(32u)), !vec4<bool>(true, false, true, true)), vec4<i32>(-2147483647, ~u_input.b, -2147483648, _wgslsmith_div_i32(u_input.b, u_input.b)))), _wgslsmith_f_op_vec2_f32(var_0.xw * var_0.yw), vec3<u32>(u_input.c, u_input.a, func_10(!true, func_10(any(vec2<bool>(false, false)), func_2(Struct_2(u_input.e.x, u_input.d)).b, 196.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))).a.a), ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647, u_input.b, u_input.b, u_input.b), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483648)), select(vec4<i32>(1, -19296, -1, -1), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(true, true, false, false))) << (_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.d, u_input.e.x, _wgslsmith_div_u32(u_input.e.x, 12840u), 1u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(15695u, 44758u, 16381u, u_input.e.x), vec4<u32>(4294967295u, 53189u, 45477u, u_input.c), vec4<u32>(u_input.c, 0u, u_input.e.x, u_input.c)))) % vec4<u32>(32u)), select(abs(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1, u_input.b), vec2<i32>(20296, -2147483648))), vec2<i32>(u_input.b ^ u_input.b, -u_input.b), !(!func_5().yx)));
    if (all(vec4<bool>(true, true, (any(vec4<bool>(true, false, true, true)) != any(vec2<bool>(false, true))) | ((2147483647 & 30002) < var_1.e.x), func_1(!vec3<bool>(true, true, true), func_2(func_7(Struct_2(10294u, 1u), vec3<f32>(1833.0, var_1.b.x, -785.0))).d)))) {
        for (var var_2 = 16082; var_2 == 7600; var_2 += 1) {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            return;
        }
    }
    loop {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        let var_2 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(26206u, 1u, u_input.d, u_input.a)), vec4<u32>(1u, var_1.c.x, 4294967295u, var_1.c.x)), firstLeadingBit(min(vec4<u32>(28543u, var_1.c.x, 4294967295u, 47235u), vec4<u32>(var_1.c.x, 10062u, 17680u, u_input.a))), ~vec4<u32>(31228u, u_input.c, 30046u, 9680u)) >> (~reverseBits(firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, 4294967295u))) % vec4<u32>(32u));
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_sub_i32(-2147483647, _wgslsmith_add_i32(2147483647, u_input.b)));
}

