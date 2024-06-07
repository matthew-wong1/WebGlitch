// {"0:0":[49,247,22,14,178,181,169,19,246,73,209,243,39,44,125,38,253,171,73,246,119,118,86,62,55,56,141,116,217,231,159,3]}
// Seed: 9864642404359372265

struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> LOOP_COUNTERS: array<u32, 20>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn func_6() -> vec2<f32> {
    let var_0 = -25782 > (~(-12677 | ~2147483647) << (firstLeadingBit(65254u) % 32u));
    switch (u_input.d) {
        case 0: {
            let var_1 = Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(13749u, u_input.b.x), _wgslsmith_add_vec2_u32(~u_input.b, vec2<u32>(u_input.a, 26666u)), u_input.b), vec2<u32>(~1u, _wgslsmith_mult_u32(u_input.b.x, 1u ^ u_input.c))), var_0, !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(var_0, true), _wgslsmith_f_op_f32(f32(-1.0) * -942.0) <= _wgslsmith_f_op_f32(-1270.0 + -268.0)), _wgslsmith_mult_u32(0u, 4294967295u) != ~u_input.a);
            global0 = !(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.e, u_input.d, u_input.e, 23080)), vec4<i32>(u_input.e, -21385, 2147483647, 14102)) >= _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(1, -6402, u_input.d, u_input.e), vec4<i32>(u_input.e, 1, 0, u_input.d))), _wgslsmith_mult_i32(38277, u_input.d) >> (~var_1.a % 32u), u_input.e));
        }
        case -14544: {
            var var_1 = _wgslsmith_div_i32(~(-firstTrailingBit(~u_input.d)), u_input.e);
            let var_2 = -36661 & u_input.e;
            let var_3 = vec4<u32>(_wgslsmith_div_u32(u_input.a ^ abs(0u), 121u), 1u, 0u, u_input.c);
        }
        case 49915: {
            return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -651.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-896.0 + -2980.0))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-303.0 - 1698.0), _wgslsmith_f_op_f32(-750.0)), _wgslsmith_f_op_f32(-578.0)), all(vec4<bool>(var_0 | var_0, !var_0, false, 39408 == -40916))))));
        }
        case 4380: {
            global0 = all(!select(!vec4<bool>(var_0, true, var_0, var_0), select(!vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, var_0, true), select(vec4<bool>(var_0, false, false, true), vec4<bool>(true, false, var_0, false), var_0)), var_0));
        }
        default: {
        }
    }
    switch (-(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(u_input.e), u_input.e, -1), vec3<i32>(-1) * -vec3<i32>(u_input.d, u_input.e, -27275)) ^ -u_input.d)) {
        case 1: {
        }
        case 10936: {
            global0 = !(!any(!vec3<bool>(var_0, true, var_0)) & select(false, var_0, all(vec2<bool>(var_0, true))));
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                global0 = var_0;
            }
        }
        case 0: {
            var var_1 = ~u_input.a;
        }
        case -7867: {
            let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1325.0 * -1476.0) * _wgslsmith_f_op_f32(-1319.0)), -1756.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(658.0, 1573.0)) - _wgslsmith_f_op_f32(688.0 * 488.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-837.0 * 645.0) * 807.0)) * vec4<f32>(795.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(432.0)), _wgslsmith_f_op_f32(ceil(-479.0))), _wgslsmith_f_op_f32(f32(-1.0) * -907.0), _wgslsmith_f_op_f32(round(1000.0)))));
            switch (-u_input.d) {
                case -1: {
                    let var_2 = ~25265u;
                    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, 1547.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(159.0)) * _wgslsmith_f_op_f32(var_1.x * -222.0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xx) - _wgslsmith_f_op_vec2_f32(-var_1.zx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(633.0, -532.0)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, -696.0))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1581.0, 597.0)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) + vec2<f32>(var_1.x, var_1.x)))));
                }
                case 1: {
                    var var_2 = vec2<u32>(0u, max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 93786u, u_input.b.x, 1u)), firstTrailingBit(vec4<u32>(u_input.b.x, 20408u, u_input.c, 4294967295u))), ~(u_input.b.x << (4294967295u % 32u)), firstLeadingBit(firstLeadingBit(11579u))), reverseBits(u_input.a)));
                }
                default: {
                    let var_2 = Struct_3(firstTrailingBit(u_input.b.x) | 1u, ~(~33728u) == u_input.c, vec2<bool>(var_0, true | false), true);
                    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1001.0)), _wgslsmith_f_op_f32(f32(-1.0) * -158.0))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 574.0))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), vec2<f32>(736.0, var_1.x))))), var_2.c)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_1.wz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000.0, var_1.x))))))));
                    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.zz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000.0, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1672.0)), _wgslsmith_f_op_f32(var_3.x * var_1.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.wy)) - var_1.zz));
                    let var_4 = _wgslsmith_f_op_f32(var_1.x + var_3.x);
                    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1410.0, var_1.x) - 951.0), _wgslsmith_f_op_f32(exp2(var_1.x)))));
                }
            }
            switch (select(u_input.e, firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_i32(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(-997, -69822)), u_input.d))), any(!vec3<bool>(any(vec4<bool>(true, var_0, false, var_0)), !var_0, any(vec4<bool>(var_0, var_0, false, var_0)))))) {
                case 50213: {
                    var var_2 = vec3<u32>(_wgslsmith_sub_u32(~u_input.a, u_input.c) & u_input.c, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4801u, 18181u, 4449u), vec3<u32>(u_input.c, u_input.b.x, u_input.a)) & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(24292u, u_input.a, u_input.b.x)), ~vec3<u32>(u_input.a, 0u, 1u))) ^ ~_wgslsmith_sub_vec3_u32(~max(vec3<u32>(80920u, u_input.c, 29032u), vec3<u32>(u_input.a, u_input.b.x, 0u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.b.x), vec3<u32>(1u, 1u, 4294967295u)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.c), var_0));
                    var_2 = vec3<u32>(35919u, var_2.x, ~(42218u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_2.x, u_input.c, u_input.b.x), vec4<u32>(5124u, var_2.x, 38581u, 31084u))));
                    global0 = all(vec4<bool>(any(vec4<bool>(false, var_0, true, !true)), var_0, !(all(vec2<bool>(var_0, true)) & var_0), var_0));
                    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32((vec3<i32>(-1, u_input.d, 7312) & vec3<i32>(u_input.d, u_input.d, -24474)) | ~vec3<i32>(u_input.d, -1, 0), vec3<i32>(-1) * -vec3<i32>(u_input.e, u_input.d, u_input.e)), vec3<i32>(40314, -50577, ~61816)) >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), 2977u), firstLeadingBit(u_input.a ^ _wgslsmith_clamp_u32(106094u, var_2.x, var_2.x)), ~_wgslsmith_clamp_u32(u_input.c, 65855u, ~var_2.x)) % 32u);
                }
                default: {
                    global0 = !(!(all(vec2<bool>(var_0, var_0)) || false));
                }
            }
            global0 = all(select(vec2<bool>(var_0, var_0), !select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0), select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(true, true)), var_0), var_1.x < _wgslsmith_f_op_f32(f32(-1.0) * -417.0)));
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                let var_2 = _wgslsmith_f_op_f32(f32(-1.0) * -1000.0);
            }
        }
        default: {
            let var_1 = Struct_1(u_input.e, !(!vec4<bool>(!false, false, !var_0, !var_0)), false, true, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-316.0 * -219.0), _wgslsmith_f_op_f32(-243.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(559.0)))), 1000.0));
            switch (abs(u_input.e)) {
                default: {
                    global0 = false;
                }
            }
            global0 = var_1.b.x;
            let var_2 = reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(~(-30126)), var_1.a, -(-2147483648 >> (1u % 32u))), abs(~(-vec3<i32>(-1, 0, 95294)))));
        }
    }
    for (var var_1 = 1; ; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        let var_2 = max(_wgslsmith_clamp_u32(u_input.c, 0u, u_input.c), select(1u | 4294967295u, 26950u >> (51454u % 32u), !all(vec2<bool>(var_0, true))) << (1u % 32u));
    }
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-735.0 - _wgslsmith_f_op_f32(floor(-146.0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(840.0 + -884.0)))), _wgslsmith_f_op_f32(-208.0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -314.0))) + 894.0))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.zz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - var_1.zx), var_1.xx))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(var_1.xx))))), var_1.zz, all(!(!select(vec2<bool>(var_0, true), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0))))));
}

fn func_7(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    global0 = all(arg_2.b.b.yy);
    return !arg_2.b.b.zzw;
}

fn func_8(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> i32 {
    let var_0 = Struct_4(Struct_2(-vec4<i32>(~(-1), ~arg_1, u_input.d, 0), Struct_1(~(-4234), !vec4<bool>(true, true, true, true), (true && false) | (912.0 <= -859.0), func_7(vec2<f32>(452.0, -1000.0), u_input.d, Struct_2(vec4<i32>(1, arg_1, arg_1, 0), Struct_1(arg_1, vec4<bool>(true, true, true, false), false, true, vec3<f32>(-688.0, 340.0, -486.0)))).x && any(vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1698.0, -632.0, -963.0), vec3<f32>(292.0, -1040.0, -514.0))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(457.0, 1165.0, -1000.0), vec3<f32>(-1000.0, -1567.0, 1274.0), vec3<bool>(true, false, false))), !vec3<bool>(false, false, true))))), select(!vec2<bool>(func_7(vec2<f32>(-1976.0, 1287.0), -2147483648, Struct_2(vec4<i32>(-12897, -29509, -1, u_input.d), Struct_1(u_input.d, vec4<bool>(true, false, false, true), false, true, vec3<f32>(-1797.0, 290.0, -1000.0)))).x, !true), !select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), false), !vec2<bool>(false, any(vec4<bool>(true, false, true, true)))), Struct_2(max(~(vec4<i32>(-2147483648, 2147483647, arg_1, -1) >> (vec4<u32>(arg_2, 0u, 4294967295u, 11209u) % vec4<u32>(32u))), vec4<i32>(-114477 | u_input.d, u_input.d, _wgslsmith_sub_i32(50481, 2147483647), -17353)), Struct_1(_wgslsmith_clamp_i32(71263, -1, -36059), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), !vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true)), !false & func_7(vec2<f32>(285.0, 362.0), arg_1, Struct_2(vec4<i32>(arg_1, -1, u_input.d, u_input.e), Struct_1(arg_1, vec4<bool>(true, false, true, false), false, true, vec3<f32>(856.0, -1441.0, 775.0)))).x, false, vec3<f32>(2203.0, _wgslsmith_f_op_f32(ceil(-2228.0)), _wgslsmith_f_op_f32(1290.0 - -399.0)))), Struct_1(u_input.e, !select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), !vec4<bool>(true, false, true, false), !false), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), !vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(243.0, 1442.0, 1952.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, -255.0, 177.0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(524.0, -810.0, 692.0))))));
    var var_1 = var_0;
    let var_2 = vec4<f32>(var_0.d.e.x, _wgslsmith_f_op_f32(abs(557.0)), 1680.0, var_1.c.b.e.x);
    global0 = func_7(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -1379.0) + var_1.d.e.xy)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.d.e.x, var_1.d.e.x)))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.a.b.e.x, var_0.c.b.e.x), var_0.c.b.e.x)), var_0.d.e.x)), 48257, var_0.c).x;
    var var_3 = Struct_2(var_0.c.a, Struct_1(var_1.a.b.a, vec4<bool>(any(vec3<bool>(var_0.d.d, true, false)), var_0.d.c, !false & all(var_0.a.b.b.wx), !var_1.c.b.c), !(774.0 == _wgslsmith_f_op_f32(-var_0.a.b.e.x)), !any(select(var_0.a.b.b.zw, vec2<bool>(true, var_1.b.x), vec2<bool>(var_0.b.x, true))), var_2.wxz));
    return var_3.a.x;
}

fn func_5(arg_0: bool) -> Struct_3 {
    for (var var_0 = -58503; ; var_0 += 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        break;
    }
    switch (func_8(select(~vec3<u32>(1u, u_input.a, 4294967295u) >> ((~vec3<u32>(u_input.c, 33071u, u_input.a) << (countOneBits(vec3<u32>(u_input.a, 44903u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~(~vec3<u32>(1u, 74144u, u_input.a))), func_7(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6()) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000.0, 2299.0))), ~(~(-53139)), Struct_2(vec4<i32>(u_input.d, 5414, u_input.d, u_input.d), Struct_1(u_input.e, vec4<bool>(false, arg_0, arg_0, arg_0), true, true, vec3<f32>(-1246.0, 1273.0, -1271.0))))), u_input.e, max(~u_input.c ^ (~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 78179u, u_input.c, u_input.c), vec4<u32>(u_input.b.x, 1u, 4294967295u, 0u))), 7240u))) {
        case -2147483648: {
            var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-959.0, 282.0, (-848.0 != -637.0) != arg_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))));
            let var_1 = Struct_2(_wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.d, u_input.e, 1), vec4<i32>(1242, u_input.d, u_input.e, u_input.d)), firstTrailingBit(vec4<i32>(2147483647, u_input.e, 44589, 0))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(0, u_input.e, u_input.d, u_input.e), vec4<i32>(u_input.e, 48201, 1, -2147483648)), vec4<i32>(-u_input.d, -39549, reverseBits(7789), ~1), select(vec4<bool>(true, false, false, false), !vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, false, false, arg_0))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-14887, u_input.e, 8152, u_input.d)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 4294967295u), vec4<u32>(30489u, 28660u, 0u, u_input.c)) % vec4<u32>(32u)), vec4<i32>(~0, u_input.e, _wgslsmith_mult_i32(u_input.e, -30176), 1))), Struct_1(u_input.d, !vec4<bool>(!arg_0, all(vec3<bool>(arg_0, arg_0, false)), arg_0, select(arg_0, true, arg_0)), arg_0, arg_0, vec3<f32>(-2645.0, 379.0, -453.0)));
            var var_2 = _wgslsmith_sub_i32(~66392, u_input.d);
            switch (-2968) {
                case -35856: {
                    let var_3 = Struct_4(var_1, var_1.b.b.ww, Struct_2(vec4<i32>((var_1.a.x << (u_input.a % 32u)) & var_1.a.x, _wgslsmith_mult_i32(-1, ~var_1.a.x), _wgslsmith_mult_i32(firstLeadingBit(u_input.e), 1), _wgslsmith_sub_i32(_wgslsmith_mod_i32(1, u_input.e), select(0, -1, false))), Struct_1(-54826, vec4<bool>(!var_1.b.b.x, var_1.b.d, 77116u <= u_input.b.x, var_1.b.d), !(1129.0 >= 1000.0), arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.e.x, 486.0, var_1.b.e.x)))), var_1.b);
                    var var_4 = Struct_3(4294967295u, false, select(vec2<bool>(arg_0, false), !(!vec2<bool>(arg_0, false)), vec2<bool>(_wgslsmith_f_op_f32(max(var_3.d.e.x, -1493.0)) <= var_3.c.b.e.x, false)), arg_0);
                    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_3.d.e.x)), _wgslsmith_f_op_f32(step(var_1.b.e.x, -444.0)), -896.0);
                    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.c.b.e.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-331.0, 503.0)), _wgslsmith_f_op_vec2_f32(func_6()).x)))));
                    var_4 = Struct_3(~max(countOneBits(var_4.a << (5854u % 32u)), u_input.b.x), all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(select(true, false, false), func_7(var_3.a.b.e.zz, var_3.a.a.x, Struct_2(vec4<i32>(u_input.d, -4156, -5831, var_3.d.a), Struct_1(var_3.a.a.x, vec4<bool>(arg_0, true, false, var_1.b.c), var_3.a.b.d, var_3.c.b.d, vec3<f32>(var_3.a.b.e.x, -871.0, 2406.0)))).x), true)), var_3.d.b.yy, var_1.b.c | arg_0);
                }
                default: {
                    var_0 = _wgslsmith_f_op_f32(sign(-2052.0));
                    var var_3 = 4294967295u;
                    global0 = arg_0;
                    var var_4 = Struct_3(firstLeadingBit(u_input.b.x), !true, var_1.b.b.ww, !any(var_1.b.b.wxw));
                    var var_5 = Struct_3(~_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.a), u_input.a, _wgslsmith_add_u32(u_input.b.x, 0u)), ~countOneBits(vec3<u32>(var_4.a, 38195u, 4294967295u))), !any(vec2<bool>(func_7(var_1.b.e.zz, 0, Struct_2(vec4<i32>(u_input.e, var_1.a.x, var_1.b.a, 16982), var_1.b)).x, var_1.a.x < var_1.a.x)), func_7(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(131.0 * -971.0), _wgslsmith_f_op_f32(trunc(var_1.b.e.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1427.0, -719.0) + _wgslsmith_f_op_vec2_f32(-var_1.b.e.yx))), -7145, var_1).zx, false);
                }
            }
            var_0 = -1271.0;
        }
        case -6235: {
            if (true) {
                let var_0 = select(!(!select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(false, true, arg_0, arg_0), select(false, false, false))), vec4<bool>(!(!(2147483647 != 2147483647)), any(select(vec4<bool>(true, false, arg_0, arg_0), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, false, arg_0, arg_0)), false || arg_0)), !arg_0, false), vec4<bool>(any(!(!vec2<bool>(true, arg_0))), !true, false, all(func_7(vec2<f32>(814.0, -1157.0), u_input.d, Struct_2(vec4<i32>(-2147483648, -8797, u_input.d, 22236), Struct_1(u_input.e, vec4<bool>(arg_0, arg_0, false, arg_0), arg_0, false, vec3<f32>(1000.0, -126.0, -138.0)))).xy)));
                let var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1382.0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-507.0), _wgslsmith_f_op_f32(-386.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(256.0 * _wgslsmith_f_op_f32(-456.0)) * 653.0)));
                var var_2 = Struct_3(reverseBits(0u), !any(!vec3<bool>(true, true, false)) & !any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !select(!select(var_0.yy, vec2<bool>(var_0.x, true), false), var_0.ww, all(func_7(var_1.yw, 0, Struct_2(vec4<i32>(u_input.e, -13942, u_input.d, u_input.d), Struct_1(2147483647, var_0, true, arg_0, var_1.yzy))))), func_7(_wgslsmith_f_op_vec2_f32(trunc(var_1.wz)), firstLeadingBit(u_input.d) >> (~(~64598u) % 32u), Struct_2(-vec4<i32>(u_input.d, u_input.d, 0, u_input.d), Struct_1(countOneBits(u_input.d), select(var_0, var_0, var_0), !var_0.x, u_input.e >= u_input.d, var_1.wzy))).x);
            }
            if (arg_0) {
                let var_0 = Struct_4(Struct_2(_wgslsmith_sub_vec4_i32(~vec4<i32>(0, 2147483647, -2147483648, u_input.e) ^ _wgslsmith_div_vec4_i32(vec4<i32>(1, 2147483647, 1, u_input.d), vec4<i32>(u_input.d, -2147483648, u_input.e, u_input.d)), select(-vec4<i32>(-9960, -1, u_input.d, -1), -vec4<i32>(566, -1, u_input.e, -15847), vec4<bool>(true, arg_0, arg_0, arg_0))), Struct_1(abs(u_input.e), vec4<bool>(arg_0 & arg_0, false & arg_0, func_7(vec2<f32>(1569.0, -240.0), u_input.d, Struct_2(vec4<i32>(-2147483648, 2147483647, u_input.e, 6761), Struct_1(u_input.e, vec4<bool>(arg_0, arg_0, true, arg_0), arg_0, arg_0, vec3<f32>(-729.0, 1202.0, 449.0)))).x, true), func_7(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1163.0, -683.0))), -u_input.e, Struct_2(vec4<i32>(10144, 27219, u_input.e, 79665), Struct_1(u_input.e, vec4<bool>(arg_0, true, arg_0, false), arg_0, arg_0, vec3<f32>(-959.0, -188.0, 273.0)))).x, all(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0), arg_0)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1614.0, -1340.0, 2393.0) + vec3<f32>(-635.0, -1381.0, -910.0)))))), !(!select(func_7(vec2<f32>(145.0, 177.0), 0, Struct_2(vec4<i32>(1348, u_input.e, u_input.e, -2147483648), Struct_1(-2147483648, vec4<bool>(true, true, false, true), true, arg_0, vec3<f32>(1000.0, -680.0, 284.0)))).xy, vec2<bool>(true, arg_0), arg_0)), Struct_2(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-47888, -18818, u_input.e, -5613)), vec4<i32>(max(0, 32000), u_input.d, _wgslsmith_mult_i32(u_input.d, u_input.d), -1775 >> (48520u % 32u))), Struct_1(firstLeadingBit(u_input.d) >> ((1u | u_input.a) % 32u), select(vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, true, arg_0, arg_0))), true, false, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1103.0, 501.0, -2514.0), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1141.0, -252.0, 485.0))))))), Struct_1(i32(-1) * -_wgslsmith_sub_i32(u_input.e, 32296), select(vec4<bool>(arg_0, !arg_0, any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), arg_0), select(vec4<bool>(false, false, arg_0, false), select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, true, arg_0), false), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, true, false), vec4<bool>(false, arg_0, arg_0, false))), vec4<bool>(u_input.e > -2147483648, !arg_0, 16618u < u_input.b.x, false)), _wgslsmith_f_op_f32(364.0 * _wgslsmith_div_f32(-1321.0, 178.0)) != _wgslsmith_f_op_f32(ceil(1117.0)), !(!any(vec2<bool>(false, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1536.0, 1310.0, 1129.0), vec3<f32>(1288.0, -491.0, -178.0), arg_0))))));
                var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(883.0 + var_0.a.b.e.x) - _wgslsmith_f_op_f32(f32(-1.0) * -661.0)));
                var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.e.x) * 493.0)))));
                let var_2 = any(var_0.d.b);
            }
            global0 = arg_0;
        }
        case 30210: {
            for (var var_0 = -16380; var_0 >= -2147483648; global0 = arg_0) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                global0 = 0u != firstTrailingBit(u_input.a);
                let var_1 = Struct_3(4770u, false, !select(select(func_7(vec2<f32>(-314.0, 335.0), u_input.e, Struct_2(vec4<i32>(u_input.d, -4629, u_input.d, 5488), Struct_1(u_input.d, vec4<bool>(false, true, true, arg_0), arg_0, arg_0, vec3<f32>(336.0, 886.0, 1414.0)))).xz, vec2<bool>(arg_0, false), vec2<bool>(arg_0, true)), select(func_7(vec2<f32>(107.0, -283.0), u_input.e, Struct_2(vec4<i32>(-2147483648, -1, 0, -20562), Struct_1(12597, vec4<bool>(false, arg_0, arg_0, arg_0), arg_0, false, vec3<f32>(645.0, 317.0, -1922.0)))).xy, select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), arg_0), vec2<bool>(false, true)), false);
                let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -2052.0), _wgslsmith_f_op_f32(max(-928.0, -441.0))))), _wgslsmith_f_op_f32(f32(-1.0) * -510.0))));
                continue;
            }
            let var_0 = Struct_3(0u, !false, vec2<bool>(func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-731.0, -196.0)), u_input.d, Struct_2(abs(vec4<i32>(u_input.e, 38883, 1, u_input.e)), Struct_1(u_input.e, vec4<bool>(arg_0, false, arg_0, arg_0), arg_0, false, vec3<f32>(664.0, -1753.0, 1906.0)))).x, func_7(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-801.0, -366.0)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1574.0, 1210.0)))), _wgslsmith_mod_i32(u_input.d ^ u_input.d, -u_input.d), Struct_2(~vec4<i32>(1, 0, u_input.e, -62446), Struct_1(u_input.d, vec4<bool>(false, arg_0, false, false), arg_0, false, vec3<f32>(1003.0, 1000.0, -1852.0)))).x), any(vec4<bool>(false, select(true, arg_0, !arg_0), _wgslsmith_f_op_f32(-443.0) <= _wgslsmith_f_op_f32(ceil(-2573.0)), u_input.b.x <= 4294967295u)));
            for (var var_1 = -2147483648; !true; var_1 -= 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var var_2 = (abs(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, var_0.a), vec3<u32>(u_input.b.x, var_0.a, 31023u)))) | ~firstLeadingBit(99116u)) != var_0.a;
                continue;
            }
        }
        case -1: {
        }
        default: {
            let var_0 = 10814u;
            let var_1 = false;
        }
    }
    var var_0 = Struct_4(Struct_2(vec4<i32>(_wgslsmith_mult_i32(i32(-1) * -28040, ~u_input.d), _wgslsmith_mult_i32(31255 >> (u_input.a % 32u), u_input.e), firstLeadingBit(-u_input.d), _wgslsmith_mult_i32(~24433, abs(1))), Struct_1(max(max(14815, -2147483648), abs(u_input.e)), vec4<bool>(!false, 1773.0 >= 645.0, u_input.e <= 35870, arg_0), !(!true), all(vec3<bool>(arg_0, true, arg_0)) & !true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2422.0, -173.0, -1000.0))))), !(!vec2<bool>(true, !arg_0)), Struct_2(vec4<i32>(max(u_input.d, select(-2147483648, 1, arg_0)), 0, 10832, ~2147483647 >> (u_input.b.x % 32u)), Struct_1(-29151, !select(vec4<bool>(true, arg_0, false, false), vec4<bool>(true, false, true, arg_0), false), arg_0, all(vec3<bool>(true, false, true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(413.0, 161.0, -508.0))))), Struct_1(-24915, vec4<bool>(!(109.0 <= -785.0), !true | !true, false, arg_0), arg_0, any(!vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(920.0, -619.0, -715.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1311.0, -1179.0, -136.0))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(666.0, -3042.0, 471.0), _wgslsmith_div_vec3_f32(vec3<f32>(-985.0, 1558.0, 921.0), vec3<f32>(-222.0, 1184.0, 383.0))))))));
    if (true) {
        var var_1 = var_0.c;
        var_1 = var_0.a;
    }
    var_0 = Struct_4(var_0.a, var_0.a.b.b.xw, var_0.c, Struct_1(_wgslsmith_div_i32(8340, -var_0.c.b.a), !(!vec4<bool>(arg_0, false, true, true)), !all(!var_0.c.b.b.xz), ~firstTrailingBit(-2147483648) > 2147483647, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c.b.e.x, 1751.0, -1101.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-647.0, 1674.0, var_0.c.b.e.x))) + _wgslsmith_f_op_vec3_f32(step(var_0.d.e, var_0.a.b.e))))));
    return Struct_3(32155u >> (abs(u_input.c) % 32u), !func_7(var_0.c.b.e.zy, -1 >> (abs(u_input.a) % 32u), Struct_2(vec4<i32>(var_0.a.a.x, u_input.e, 18178, -20495) & vec4<i32>(0, var_0.a.b.a, var_0.c.a.x, -9618), Struct_1(var_0.a.b.a, var_0.a.b.b, false, var_0.a.b.c, var_0.a.b.e))).x, vec2<bool>(true, true), (_wgslsmith_mod_u32(select(0u, 6210u, false), u_input.b.x) & _wgslsmith_clamp_u32(_wgslsmith_sub_u32(11970u, 4294967295u), 69990u, u_input.c)) > u_input.c);
}

fn func_9(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_4) -> vec2<i32> {
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        global0 = true;
        switch (52531) {
            case -2147483648: {
            }
            case 17087: {
                global0 = arg_1.b;
                let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, arg_0.xz), 4294967295u);
                break;
            }
            default: {
                var var_0 = arg_1;
                let var_1 = arg_3.a;
                var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.d.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.e.x * -137.0), _wgslsmith_f_op_f32(sign(-3025.0))))), _wgslsmith_f_op_f32(arg_3.c.b.e.x * arg_3.a.b.e.x), 1803.0, _wgslsmith_f_op_vec2_f32(func_6()).x);
                continue;
            }
        }
        let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(max(4294967295u, ~0u) ^ ~_wgslsmith_mult_u32(arg_2, 51750u), arg_1.a, arg_2, 0u ^ 28370u), _wgslsmith_add_vec4_u32(firstTrailingBit(abs(vec4<u32>(arg_1.a, 0u, arg_1.a, 1u)) >> (reverseBits(vec4<u32>(arg_1.a, 15989u, 20883u, arg_2)) % vec4<u32>(32u))), vec4<u32>(0u, firstTrailingBit(_wgslsmith_mod_u32(u_input.a, arg_1.a)), arg_1.a, arg_1.a)));
        for (var var_1 = -2147483648; var_1 == 2147483647; var_1 += 1) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            global0 = !all(select(vec4<bool>(arg_3.b.x, !false, !arg_1.d, arg_1.b), select(vec4<bool>(true, arg_1.c.x, arg_3.d.b.x, true), vec4<bool>(false, arg_3.d.b.x, false, arg_3.c.b.c), vec4<bool>(false, arg_1.b, arg_1.c.x, arg_1.d)), !(!arg_3.c.b.c)));
            global0 = arg_1.d;
            var var_2 = arg_3;
            var_1 = var_2.c.a.x;
        }
    }
    global0 = func_5(arg_3.b.x).c.x;
    return arg_3.a.a.yx;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    for (var var_0 = -3494; !(!arg_3); var_0 += 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        if (arg_3) {
            var_0 = _wgslsmith_dot_vec2_i32(arg_1.a.wy ^ (~arg_1.a.zz >> (~u_input.b % vec2<u32>(32u))), ~func_9(~vec3<u32>(19835u, u_input.c, u_input.b.x), func_5(arg_3), 0u, Struct_4(arg_1, arg_1.b.b.xy, arg_1, Struct_1(24753, vec4<bool>(arg_1.b.d, arg_0.x, arg_3, true), false, arg_1.b.c, arg_2))) ^ func_9(firstTrailingBit(vec3<u32>(5554u, u_input.c, u_input.c)), func_5(arg_1.b.d), u_input.a, Struct_4(Struct_2(arg_1.a, arg_1.b), arg_1.b.b.yy, arg_1, arg_1.b)));
        }
        continue;
    }
    for (; all(!vec2<bool>(arg_0.x, (1u ^ u_input.c) != (1u << (45214u % 32u)))); ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        switch (abs(arg_1.b.a)) {
            case -1: {
                var var_0 = (arg_1.a | vec4<i32>(_wgslsmith_sub_i32(func_9(vec3<u32>(1u, 37739u, u_input.c), Struct_3(0u, true, arg_1.b.b.wx, false), 0u, Struct_4(Struct_2(arg_1.a, arg_1.b), arg_1.b.b.yy, arg_1, arg_1.b)).x, -2147483648), arg_1.b.a, _wgslsmith_mod_i32(-3573, 12186), -arg_1.b.a)) >> (~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.a, 1u), vec4<u32>(29963u, u_input.a, 4294967295u, 1u)) << (vec4<u32>(0u, u_input.a, 0u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u));
            }
            case 11684: {
                var var_0 = arg_1.b.e.zz;
            }
            case -39544: {
                continue;
            }
            case -2147483648: {
                var var_0 = vec2<u32>(u_input.b.x, ~_wgslsmith_add_u32(71137u, firstLeadingBit(u_input.a & 10778u)));
                var var_1 = Struct_2(_wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(arg_1.a ^ vec4<i32>(arg_1.a.x, -2147483648, u_input.d, 1), vec4<i32>(u_input.d, arg_1.b.a, -20396, u_input.d), ~arg_1.a), arg_1.a), Struct_1(arg_1.a.x, arg_1.b.b, arg_1.b.d, arg_3, vec3<f32>(arg_1.b.e.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, arg_1.b.c))))));
                var_0 = u_input.b;
                var var_2 = arg_3;
            }
            default: {
            }
        }
    }
    var var_0 = -7589;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-984.0, 1212.0, -1532.0, -148.0)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.b.e.x)), 785.0, _wgslsmith_f_op_f32(max(-384.0, arg_1.b.e.x)), _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -1223.0, arg_2.x, 111.0), vec4<f32>(-1284.0, 934.0, arg_2.x, -748.0)))))));
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(20930u, u_input.c), u_input.c) & _wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, u_input.b.x), min(~abs(vec2<u32>(60647u, u_input.c)), vec2<u32>(362u, u_input.c | 1u)));
    return arg_1.b.e.x;
}

fn func_3(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(-1, vec4<bool>((_wgslsmith_f_op_f32(func_4(vec2<bool>(false, true), Struct_2(vec4<i32>(0, 1, 18422, -12734), Struct_1(49303, vec4<bool>(true, true, true, false), false, false, vec3<f32>(822.0, -582.0, 2353.0))), vec3<f32>(-2556.0, -760.0, -932.0), true)) > _wgslsmith_f_op_f32(f32(-1.0) * -268.0)) | all(vec4<bool>(true, true, false, false)), !(!select(false, true, false)), 18976 == (5880 >> (_wgslsmith_sub_u32(u_input.b.x, u_input.a) % 32u)), !(!false)), all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)))) & all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), !vec3<bool>(true, false, false))), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_2(vec4<i32>(u_input.d, 3634, 2147483647, u_input.d), Struct_1(arg_0.x, vec4<bool>(false, true, true, false), true, true, vec3<f32>(-896.0, -691.0, -239.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-773.0, 129.0, -1469.0)), true)), _wgslsmith_f_op_f32(f32(-1.0) * -118.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1090.0 * 440.0)))));
    let var_1 = Struct_2(_wgslsmith_div_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 18756, -20044, -8488), vec4<i32>(var_0.a, arg_0.x, var_0.a, -2342))), vec4<i32>(min(arg_0.x & 1, -1 & 32720), 3623, ~min(var_0.a, arg_0.x), ~1026)), var_0);
    if (select(u_input.b.x != ~4294967295u, all(vec2<bool>(func_5(-15894 == -18496).b, var_0.b.x)), !(!all(select(var_1.b.b.xwx, var_1.b.b.zww, var_1.b.b.x))))) {
        if (func_7(vec2<f32>(479.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.x - 326.0), _wgslsmith_f_op_f32(f32(-1.0) * -1365.0))), select(_wgslsmith_add_i32(abs(var_0.a), select(-1668, var_1.a.x, var_1.b.c)), arg_0.x, all(vec3<bool>(true, true, var_0.c))), Struct_2(vec4<i32>(-1) * -vec4<i32>(var_0.a, 10756, 49786, var_0.a), Struct_1(countOneBits(u_input.d), select(var_1.b.b, var_0.b, var_0.b), -1347.0 != -1786.0, false, vec3<f32>(-1684.0, var_1.b.e.x, var_0.e.x)))).x & true) {
            var var_2 = Struct_2(reverseBits((var_1.a ^ max(var_1.a, var_1.a)) ^ -select(vec4<i32>(1, var_1.b.a, u_input.e, -2147483648), var_1.a, var_1.b.b.x)), var_1.b);
            let var_3 = Struct_4(Struct_2(var_1.a, var_0), !(!func_7(var_2.b.e.zz, -2147483648, Struct_2(vec4<i32>(1, var_1.a.x, var_0.a, 1), var_0)).yz), Struct_2(_wgslsmith_div_vec4_i32(~vec4<i32>(32146, -1, var_2.b.a, 26790), vec4<i32>(2147483647, var_1.b.a, 27466, var_0.a) ^ firstTrailingBit(var_1.a)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1, -1), select(arg_0.yx, vec2<i32>(var_1.a.x, var_2.a.x), true)), select(vec4<bool>(true, true, var_0.b.x, var_0.b.x), vec4<bool>(true, false, false, var_2.b.d), true), var_2.b.c, false, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-582.0, -699.0, 498.0))))), var_1.b);
            var var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(max(~25045u, ~u_input.a), ~(~u_input.b.x)) ^ max(~abs(vec2<u32>(u_input.b.x, 30349u)), _wgslsmith_div_vec2_u32(u_input.b & vec2<u32>(37838u, u_input.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b))), firstLeadingBit(~u_input.b));
        }
        switch (arg_0.x) {
            case 32925: {
            }
            case -1: {
                global0 = true;
                var var_2 = var_1;
                var var_3 = 1u;
                var var_4 = ~abs(vec4<u32>(4294967295u, max(min(4294967295u, u_input.a), u_input.b.x << (u_input.a % 32u)), u_input.a, 1u));
                global0 = _wgslsmith_div_f32(567.0, _wgslsmith_f_op_f32(-872.0)) <= -1000.0;
            }
            case 2147483647: {
                global0 = all(select(!(!select(vec3<bool>(true, true, var_1.b.b.x), vec3<bool>(false, true, true), var_0.b.zyy)), var_0.b.yyz, vec3<bool>(any(!vec4<bool>(false, var_1.b.b.x, var_0.d, var_1.b.b.x)), select(all(vec4<bool>(var_0.c, var_0.b.x, var_0.d, var_1.b.d)), var_0.c, false), func_7(var_1.b.e.xx, var_0.a, Struct_2(var_1.a, Struct_1(1, vec4<bool>(false, var_0.d, var_0.b.x, var_1.b.d), var_1.b.b.x, var_0.b.x, vec3<f32>(-1326.0, var_1.b.e.x, 877.0)))).x)));
                var var_2 = Struct_2(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(min(arg_0.x, -50348), max(-2147483648, u_input.e)), func_9(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, u_input.b.x), vec3<u32>(u_input.a, u_input.a, u_input.a)), func_5(false), 0u, Struct_4(Struct_2(vec4<i32>(45156, var_0.a, -10335, 0), var_1.b), vec2<bool>(var_0.d, false), var_1, Struct_1(var_1.a.x, vec4<bool>(var_1.b.c, var_0.b.x, false, var_1.b.d), false, false, var_0.e))).x, -(~var_0.a)), -firstLeadingBit(var_1.a.x) | var_1.b.a, var_0.a, min(_wgslsmith_div_i32(33498, 48941), abs(-1))), Struct_1(var_0.a, !var_0.b, func_7(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_6()).x, _wgslsmith_f_op_f32(-408.0 + var_0.e.x)), _wgslsmith_mod_i32(~u_input.d, arg_0.x), Struct_2(var_1.a, var_0)).x, !true, _wgslsmith_f_op_vec3_f32(select(var_0.e, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b.e.x, var_1.b.e.x, 132.0))), _wgslsmith_f_op_vec3_f32(step(var_0.e, var_1.b.e)), true)), var_0.b.xyz))));
                global0 = var_2.b.d;
                let var_3 = var_2.b.b.x;
                let var_4 = var_1.b.a;
            }
            default: {
            }
        }
        switch (-_wgslsmith_sub_i32(countOneBits(_wgslsmith_div_i32(0, -1)), -15528) & -1) {
            case 21518: {
                global0 = !var_0.b.x;
                var var_2 = Struct_3(max(~(~abs(29984u)), 0u), !(!(_wgslsmith_f_op_f32(-var_0.e.x) <= 193.0)), vec2<bool>(true, !(!(true | false))), 417.0 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + var_1.b.e.x) + _wgslsmith_f_op_f32(f32(-1.0) * -1175.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1268.0 * -468.0) * _wgslsmith_f_op_f32(-var_1.b.e.x))));
                let var_3 = Struct_3(~reverseBits(_wgslsmith_mult_u32(~u_input.c, u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-837.0)), var_1.b.e.x) < _wgslsmith_f_op_f32(-var_1.b.e.x), select(vec2<bool>(true, 457.0 != _wgslsmith_f_op_f32(-1105.0)), select(select(select(vec2<bool>(var_2.d, var_1.b.c), vec2<bool>(var_2.b, false), vec2<bool>(true, false)), var_2.c, var_0.d), var_1.b.b.ww, func_5(!false).c), false), any(func_5(!(115.0 <= var_0.e.x)).c));
                global0 = !true;
                var var_4 = func_7(var_1.b.e.xz, ~(u_input.d & _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a, var_1.b.a), var_1.a.ww)), Struct_2(-vec4<i32>(-2147483648, _wgslsmith_mod_i32(-27224, var_0.a), select(1, u_input.e, false), 21899), var_1.b));
            }
            case 0: {
                var var_2 = select(vec4<i32>(var_1.b.a, _wgslsmith_sub_i32(2147483647, ~(u_input.d << (1u % 32u))), 2147483647, arg_0.x), var_1.a, !vec4<bool>(var_1.b.d, var_1.b.b.x, !select(var_0.d, true, var_0.b.x), false));
                let var_3 = var_1;
                var_2 = _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(1, var_3.a.x, ~max(-2147483648, arg_0.x), -33780)), -(_wgslsmith_clamp_vec4_i32(abs(var_1.a), max(var_1.a, vec4<i32>(-1, 2147483647, -2147483648, -8178)), var_3.a) >> (vec4<u32>(1u, 4294967295u << (u_input.a % 32u), 1u & 8953u, 81803u) % vec4<u32>(32u))));
                global0 = var_1.b.b.x || func_5(false).c.x;
            }
            case -44833: {
                let var_2 = Struct_2(_wgslsmith_div_vec4_i32(countOneBits(~var_1.a) >> (select(vec4<u32>(u_input.a, 117020u, 60036u, u_input.b.x) >> (vec4<u32>(1u, u_input.c, 4294967295u, u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 2479u, u_input.a), vec4<u32>(46428u, 78647u, 47893u, 1u)), var_0.b) % vec4<u32>(32u)), var_1.a), Struct_1(-11340, !vec4<bool>(var_0.d, 4294967295u != u_input.a, all(vec2<bool>(false, var_1.b.d)), all(vec3<bool>(false, false, false))), !(var_0.d || !var_1.b.b.x), var_0.d || ((12181u & u_input.c) <= ~74327u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.e.x, var_0.e.x, var_0.e.x)))))))));
            }
            default: {
                let var_2 = var_1.a.wwz >> (vec3<u32>(105535u, firstTrailingBit(1u) & _wgslsmith_add_u32(4294967295u, ~u_input.b.x), ~(u_input.c ^ u_input.a)) % vec3<u32>(32u));
                var var_3 = _wgslsmith_add_i32(func_9(_wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(39205u, 20294u, 306u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 53405u, u_input.b.x), vec3<u32>(5002u, u_input.c, 1u)) ^ (vec3<u32>(1u, u_input.a, 4294967295u) << (vec3<u32>(4294967295u, 1u, 44375u) % vec3<u32>(32u)))), func_5(!any(var_1.b.b.www)), u_input.b.x << ((func_5(var_1.b.d).a | firstLeadingBit(u_input.a)) % 32u), Struct_4(Struct_2(var_1.a, var_1.b), vec2<bool>(func_7(vec2<f32>(-1488.0, var_1.b.e.x), var_2.x, var_1).x, !false), var_1, Struct_1(-u_input.d, select(vec4<bool>(false, true, false, false), var_0.b, var_1.b.b), false, !var_1.b.d, vec3<f32>(1004.0, 1000.0, var_1.b.e.x)))).x, _wgslsmith_clamp_i32(func_8(~(~vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)), -2147483648, u_input.c), countOneBits(max(~var_0.a, var_1.a.x)), arg_0.x));
                let var_4 = Struct_4(var_1, var_1.b.b.xz, Struct_2(_wgslsmith_mult_vec4_i32(var_1.a, vec4<i32>(-1) * -vec4<i32>(var_0.a, arg_0.x, var_2.x, var_2.x)), var_1.b), var_0);
                var_3 = -select(36761, -_wgslsmith_mod_i32(~(-22733), -u_input.d), !(!var_1.b.b.x));
                global0 = !all(select(vec2<bool>(!var_4.b.x, 33182u < 6008u), vec2<bool>(!var_4.b.x, var_0.d), true));
            }
        }
        for (var var_2 = 12696; var_2 > 2147483647; var_2 = u_input.d) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            var var_3 = select(!vec3<bool>(true != var_0.d, var_0.d, var_1.b.b.x), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168.0)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724.0) * var_0.e.x), true, var_0.d), func_9(firstLeadingBit(max(vec3<u32>(u_input.b.x, u_input.c, u_input.a), vec3<u32>(u_input.a, 0u, 4294967295u))), func_5(-1553.0 > 1222.0), countOneBits(u_input.a) ^ 1u, Struct_4(Struct_2(vec4<i32>(-1, var_0.a, arg_0.x, arg_0.x), Struct_1(0, vec4<bool>(true, var_0.d, var_1.b.b.x, true), var_0.d, true, var_1.b.e)), !var_0.b.yx, var_1, var_0)).x <= -24636);
            var var_4 = _wgslsmith_f_op_f32(var_1.b.e.x - _wgslsmith_f_op_f32(var_1.b.e.x + var_1.b.e.x));
            break;
        }
        var var_2 = Struct_4(Struct_2(~(~_wgslsmith_clamp_vec4_i32(var_1.a, vec4<i32>(u_input.d, -10833, -1, arg_0.x), var_1.a)), Struct_1(var_1.b.a, select(var_1.b.b, select(vec4<bool>(var_0.b.x, var_1.b.c, var_1.b.b.x, true), var_1.b.b, false), false), ~0u > u_input.c, var_1.b.b.x, vec3<f32>(_wgslsmith_f_op_f32(ceil(-1118.0)), _wgslsmith_f_op_f32(f32(-1.0) * -725.0), _wgslsmith_f_op_f32(784.0 - -1785.0)))), func_7(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-105.0 + var_0.e.x), var_0.e.x))), u_input.e | _wgslsmith_add_i32(_wgslsmith_mult_i32(32872, 62704), 39869), var_1).xy, var_1, Struct_1(_wgslsmith_mult_i32(~2147483647, abs(var_0.a)) | var_0.a, !select(vec4<bool>(var_0.b.x, var_1.b.b.x, false, var_0.d), var_1.b.b, var_0.b), !(!(var_1.b.c & true)), -1 != 1, _wgslsmith_f_op_vec3_f32(-var_0.e)));
    }
    global0 = !true;
    let var_2 = !true;
    return var_1;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(-1173.0, arg_1.x, arg_1.x, 894.0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 1003.0, 713.0))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, 593.0))), -1394.0, arg_1.x, 455.0)));
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        break;
    }
    for (var var_1: i32; var_1 <= 28133; var_1 += 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        let var_2 = vec3<u32>(~firstTrailingBit(4294967295u), 22251u, 37904u);
        var var_3 = -1460.0;
        global0 = 0u == 1u;
        let var_4 = vec3<bool>(false, _wgslsmith_div_i32(0, ~(~27653)) <= ~u_input.d, !false);
        for (var var_5: i32; ; global0 = select(false, !all(var_4), 157.0 > arg_1.x)) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            break;
        }
    }
    global0 = !(!true | any(vec3<bool>(!true, 1000.0 <= arg_1.x, -1 <= u_input.e)));
    let var_1 = Struct_4(func_3(arg_0.zzy), vec2<bool>(!(!all(vec3<bool>(false, false, false))), (_wgslsmith_dot_vec4_i32(arg_0, arg_0) <= _wgslsmith_sub_i32(arg_0.x, u_input.d)) & (u_input.d >= ~2147483647)), Struct_2(arg_0, func_3(select(reverseBits(arg_0.zzz), -arg_0.wyw, u_input.b.x != 79963u)).b), Struct_1(-(~(-17434)), vec4<bool>(any(!vec2<bool>(true, false)), !false, select(func_5(true).c.x, any(vec3<bool>(true, true, false)), var_0.x <= 1308.0), false), (_wgslsmith_div_u32(50179u, 4294967295u) >= _wgslsmith_sub_u32(arg_2, 1u)) && !(!false), firstLeadingBit(0u) <= ~arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1311.0, -104.0))))));
    return abs(var_1.a.b.a) | -2147483648;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3.b.e;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(f32(-1.0) * -1535.0);
    if (true) {
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            var var_3 = ~(~vec3<u32>(79755u, u_input.c, _wgslsmith_div_u32(4294967295u, u_input.c) << (~u_input.c % 32u)));
            continue;
        }
        if (select(arg_1, !(u_input.d <= func_2(vec4<i32>(-16181, 2147483647, arg_3.a.x, u_input.d) << (vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u) % vec4<u32>(32u)), vec2<f32>(var_0.x, 910.0), u_input.c)), !func_5(arg_3.b.d).d)) {
            var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-197.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439.0 * var_0.x))), _wgslsmith_f_op_vec2_f32(sign(var_0.yx)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(760.0, -563.0), -577.0), 1000.0)));
            let var_4 = Struct_2(vec4<i32>(-1 & _wgslsmith_div_i32(arg_3.a.x, arg_3.a.x), u_input.e << (4294967295u % 32u), ~_wgslsmith_mod_i32(-1, u_input.d), ~func_3(arg_3.a.xww).b.a) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(18725u, 25118u, 83648u, 6254u) & vec4<u32>(1u, u_input.a, 0u, 91018u), ~vec4<u32>(u_input.c, 4294967295u, u_input.c, 434u)) % vec4<u32>(32u)), func_3(arg_3.a.xww).b);
            var var_5 = !vec3<bool>(var_4.b.e.x <= _wgslsmith_f_op_f32(-var_3.x), arg_3.b.b.x, func_3(-arg_3.a.wyz).b.c);
            global0 = 1312.0 <= var_4.b.e.x;
            var var_6 = arg_3;
        }
        var_2 = _wgslsmith_f_op_f32(426.0 * _wgslsmith_f_op_f32(-arg_3.b.e.x));
        for (var var_3 = -46875; ; var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.b.e, vec3<f32>(arg_3.b.e.x, 523.0, arg_3.b.e.x)) + arg_3.b.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.e.x, 1316.0, var_0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 825.0, -1000.0))))) * arg_3.b.e) * _wgslsmith_f_op_vec3_f32(round(arg_3.b.e)))) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            var var_4 = reverseBits(firstLeadingBit(~(~vec3<u32>(4294967295u, 39516u, u_input.b.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 37523u)) % vec3<u32>(32u)))));
            var_4 = ~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(1u, 29344u, 4294967295u) >> (vec3<u32>(u_input.a, u_input.c, var_4.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_4.x, 1u, u_input.b.x), vec3<u32>(u_input.c, u_input.b.x, u_input.c)), vec3<u32>(var_4.x, var_4.x, u_input.b.x))) | (select(select(~vec3<u32>(var_4.x, 50203u, 4294967295u), vec3<u32>(var_4.x, var_4.x, 4294967295u), !vec3<bool>(var_1, arg_2, arg_1)), countOneBits(vec3<u32>(0u, 8466u, u_input.c)) & min(vec3<u32>(var_4.x, var_4.x, u_input.a), vec3<u32>(u_input.c, u_input.a, var_4.x)), arg_0) | ~(~countOneBits(vec3<u32>(4294967295u, 6896u, 0u))));
            var var_5 = 9717u;
        }
    }
    var_0 = arg_3.b.e;
    return (~func_5(arg_2).a << (abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 4294967295u), 0u)) % 32u)) & ~_wgslsmith_div_u32(u_input.c, ~u_input.a & _wgslsmith_div_u32(48652u, 105491u));
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = -2147483648; any(select(vec3<bool>(all(vec2<bool>(false, true)), !false, any(vec3<bool>(true, true, false))), select(vec3<bool>(false, false, false), !vec3<bool>(true, false, true), vec3<bool>(false, false, false)), !(!vec3<bool>(false, false, false)))) & all(vec4<bool>(u_input.e != -40120, select(any(vec4<bool>(true, false, true, false)), !true, !false), !(!false), ~9979u <= func_1(false, false, false, Struct_2(vec4<i32>(u_input.e, u_input.d, u_input.d, u_input.e), Struct_1(u_input.d, vec4<bool>(false, false, false, false), false, false, vec3<f32>(208.0, 591.0, -961.0)))))); ) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        let var_1 = func_3(reverseBits(vec3<i32>(-min(-2147483648, -1), 17746, ~_wgslsmith_sub_i32(u_input.d, 1))));
    }
    if (func_3(-_wgslsmith_div_vec3_i32(abs(abs(vec3<i32>(u_input.e, u_input.d, -2147483648))), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647, 10255, u_input.d), vec3<i32>(u_input.e, -23876, u_input.e), vec3<i32>(-55850, u_input.e, u_input.e) ^ vec3<i32>(2147483647, 36929, u_input.e)))).b.c) {
        var var_0 = Struct_1(-19172, !select(vec4<bool>(true && true, !false, 560.0 > 1247.0, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, true, false), !vec4<bool>(true, false, true, false), !false)), select(-1 & u_input.e, ~_wgslsmith_div_i32(u_input.e, -29013), false) >= -u_input.e, true, vec3<f32>(-1837.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-976.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -595.0))));
        switch (~_wgslsmith_sub_i32(-1, _wgslsmith_mult_i32(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, u_input.d, -55862), vec3<i32>(var_0.a, u_input.e, u_input.e)) ^ (var_0.a >> (0u % 32u))))) {
            case 1: {
            }
            default: {
                var var_1 = Struct_3(9657u, !all(vec3<bool>(-1 != 1, false & var_0.c, var_0.b.x)), func_3(-vec3<i32>(_wgslsmith_mod_i32(38258, var_0.a), u_input.e ^ 1, u_input.d)).b.b.wz, func_7(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.e.x, 864.0)), func_3(vec3<i32>(var_0.a, 2147483647, -27211)).b.e.x))), u_input.e << (1u % 32u), func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, -78750, u_input.e) ^ vec3<i32>(-2147483648, u_input.d, 0), -vec3<i32>(var_0.a, var_0.a, 951)))).x);
            }
        }
        var_0 = func_3(~vec3<i32>(26746, var_0.a, var_0.a)).b;
        var_0 = Struct_1(-((abs(var_0.a) >> (~5717u % 32u)) << (18242u % 32u)), var_0.b, !true, !(!(!var_0.c)), var_0.e);
        var_0 = func_3(firstLeadingBit(countOneBits(firstTrailingBit(vec3<i32>(u_input.d, u_input.d, var_0.a))) ^ min(abs(vec3<i32>(u_input.e, -2147483648, u_input.e)), vec3<i32>(var_0.a, u_input.e, var_0.a) >> (vec3<u32>(u_input.c, 4294967295u, 19128u) % vec3<u32>(32u))))).b;
    }
    global0 = func_7(_wgslsmith_f_op_vec2_f32(select(func_3(vec3<i32>(func_2(vec4<i32>(-10677, -69702, 0, 3500), vec2<f32>(125.0, 678.0), u_input.c), ~30606, -u_input.d)).b.e.zx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2051.0, -127.0)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1802.0, 772.0) + vec2<f32>(-678.0, -1000.0)), vec2<f32>(-2156.0, -194.0))), !vec2<bool>(false, false))), func_7(_wgslsmith_f_op_vec2_f32(vec2<f32>(-316.0, -481.0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(336.0, 557.0) + vec2<f32>(-905.0, 524.0))), _wgslsmith_dot_vec4_i32(-vec4<i32>(30844, u_input.d, u_input.e, u_input.e), ~vec4<i32>(u_input.d, u_input.d, u_input.d, -1898)), func_3(~vec3<i32>(1, u_input.d, -1))).xy)), 8373, Struct_2(-vec4<i32>(u_input.d, -2147483648, 0, -1) << (_wgslsmith_div_vec4_u32(~vec4<u32>(71537u, 1u, 4294967295u, u_input.b.x), vec4<u32>(0u, 98429u, u_input.b.x, 6993u)) % vec4<u32>(32u)), Struct_1(u_input.e, func_3(-vec3<i32>(u_input.e, 2147483647, 2147483647)).b.b, !(-2370.0 <= -410.0), (25358u == 95721u) | (true & false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(959.0, 133.0, 1000.0))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000.0, -1323.0, 1614.0), vec3<f32>(-256.0, 1433.0, 246.0))))))).x;
    if (1u > 68732u) {
        for (var var_0 = 1; 0u > func_5(any(vec2<bool>(func_5(true).b, u_input.e > 30968))).a; var_0 -= 1) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            break;
        }
    }
    var var_0 = ~reverseBits(~vec3<u32>(u_input.a, u_input.c, 4294967295u) ^ vec3<u32>(9890u, 0u, 1u)) << (vec3<u32>(~(firstLeadingBit(u_input.b.x) & 1u), ~(~(~1u)), ~((10502u & 1u) & (28410u >> (34092u % 32u)))) % vec3<u32>(32u));
    for (; ; ) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        var var_1 = vec4<u32>(var_0.x, 77783u, 0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), select(vec4<u32>(var_0.x, 12822u, u_input.c, 9959u), vec4<u32>(61547u, var_0.x, 27160u, u_input.c), true))) ^ (vec4<u32>(~(~33749u), _wgslsmith_dot_vec3_u32(vec3<u32>(34669u, 36612u, var_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, var_0.x, 54091u), vec3<u32>(4294967295u, u_input.a, 1u))), _wgslsmith_mod_u32(99110u >> (var_0.x % 32u), u_input.b.x), ~(43437u & u_input.a)) >> (max(~vec4<u32>(var_0.x, var_0.x, u_input.b.x, 0u) << (max(vec4<u32>(0u, 59145u, 44302u, u_input.a), vec4<u32>(u_input.c, u_input.c, var_0.x, 1u)) % vec4<u32>(32u)), vec4<u32>(var_0.x, _wgslsmith_add_u32(22603u, 25840u), 102763u, max(0u, 1u))) % vec4<u32>(32u)));
        global0 = false;
        var var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(max(firstLeadingBit(var_1.x), var_0.x), _wgslsmith_sub_u32(~75927u, 4294967295u >> (var_0.x % 32u)), ~83795u), ~var_1.yzy, var_1.ywx);
        for (var var_3 = 26928; ; var_3 -= 1) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        }
        global0 = 1441.0 <= -1857.0;
    }
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

