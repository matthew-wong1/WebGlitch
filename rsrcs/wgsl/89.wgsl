// {"0:0":[52,73,176,127,31,41,146,223,13,106,251,173,127,184,181,44,140,20,62,5,84,120,159,77]}
// Seed: 2731529128052155073

struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
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

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> LOOP_COUNTERS: array<u32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-648.0, 871.0) * vec2<f32>(-335.0, -185.0))), vec2<f32>(_wgslsmith_f_op_f32(sign(1000.0)), _wgslsmith_f_op_f32(257.0 - 1639.0))))));
    switch (u_input.b.x) {
        case -1: {
            var var_1 = Struct_1(firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 1) ^ vec2<i32>(global1.b, global1.b), arg_0.a)), -23631 & arg_1.b);
            for (var var_2 = -1; var_2 <= 2147483647; var_2 -= 1) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                let var_3 = arg_0;
                let var_4 = Struct_1(reverseBits(firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.b, firstTrailingBit(vec2<i32>(arg_1.a.x, 2147483647))))), var_3.a.x);
                var var_5 = var_3;
                var var_6 = var_3;
            }
            switch (arg_1.a.x) {
                case -1: {
                    var_1 = arg_0;
                    let var_2 = all(select(!vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), true), !false), !(true | true))) || false;
                }
                case -14533: {
                    let var_2 = arg_0.a.x;
                    var var_3 = vec2<i32>(-44388, abs(-arg_1.b) | _wgslsmith_div_i32(firstLeadingBit(var_1.b >> (u_input.c.x % 32u)), 8685));
                    let var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, max(arg_1.b, u_input.b.x) ^ ~var_2) | -u_input.b, select(select(firstLeadingBit(arg_1.a), vec2<i32>(var_2, 2147483647 | 9715), true), arg_1.a, all(select(vec4<bool>(true, true, false, false), !vec4<bool>(false, true, true, true), !true))));
                    let var_5 = select(!vec2<bool>(false, true), !select(select(!vec2<bool>(false, true), vec2<bool>(true, false), !vec2<bool>(false, false)), !vec2<bool>(true, false), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 76217u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 16054u, 1u, u_input.c.x)) != _wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.c.x)), !false);
                }
                case -9719: {
                    global0 = all(vec4<bool>(all(vec2<bool>(!true, !false)), ~2147483647 == _wgslsmith_div_i32(14012, _wgslsmith_mult_i32(arg_0.a.x, 31815)), true, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), !vec3<bool>(false, false, true), true))));
                    var_1 = arg_0;
                    var_1 = arg_0;
                    global0 = !select(false | !any(vec2<bool>(false, false)), false, false);
                    global1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a, var_1.a ^ vec2<i32>(-64100, arg_1.a.x)), arg_0.a.x), vec2<i32>(min(global1.a.x ^ 24500, min(u_input.a, 6791)), global1.a.x)), 0);
                }
                case 33639: {
                    var_1 = arg_1;
                    var var_2 = vec3<bool>(true, !any(select(vec3<bool>(false, false, false), !vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), !(!any(!vec3<bool>(true, true, false))));
                    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-518.0, var_0.x, -679.0, var_0.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(345.0, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(exp2(-1515.0)), 411.0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1729.0) * vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
                    var var_4 = min(~((u_input.c.x >> ((1u | u_input.c.x) % 32u)) << ((1u >> (countOneBits(0u) % 32u)) % 32u)), _wgslsmith_sub_u32(1u ^ u_input.c.x, u_input.c.x));
                    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1595.0), -1000.0, var_0.x, 768.0) + _wgslsmith_f_op_vec4_f32(var_3 * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_3.x, var_3.x, var_3.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 669.0, -441.0, var_3.x))), select(var_2.x, var_2.x, true))))) + var_3);
                }
                default: {
                    var_1 = arg_0;
                    let var_2 = u_input.c;
                    let var_3 = _wgslsmith_dot_vec4_i32(-vec4<i32>(~1, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 1, u_input.b.x, 2147483647), vec4<i32>(arg_0.b, 2147483647, 12736, -19693)), arg_1.b) | vec4<i32>(arg_1.b, 0, countOneBits(-19506) ^ 1, arg_1.a.x), vec4<i32>(global1.b, abs(_wgslsmith_mod_i32(var_1.b, -2147483648)), 48380, abs(~(-1))) | ((vec4<i32>(-1) * -vec4<i32>(16348, 2147483647, arg_1.b, 27108)) | reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(29054, 1, var_1.a.x, 2147483647), vec4<i32>(1, global1.a.x, 2147483647, var_1.b), vec4<i32>(0, -2147483648, 80423, var_1.a.x)))));
                    global1 = arg_1;
                    let var_4 = 2147483647;
                }
            }
            global0 = !(!true);
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                let var_2 = -1501.0;
            }
        }
        case -1165: {
            let var_1 = 4294967295u;
            for (; any(!select(select(!vec3<bool>(true, true, true), !vec3<bool>(false, false, false), true), vec3<bool>(!true, true && false, !false), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))); ) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                global1 = arg_1;
                var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(min(var_0.x, 1787.0)));
                let var_3 = vec2<i32>(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b, arg_1.a), _wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(global1.b, 2147483647))), (abs(-2147483648) ^ -u_input.a) << (countOneBits(~u_input.c.x) % 32u)), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x << (var_1 % 32u), _wgslsmith_sub_i32(1, 2147483647), global1.a.x | arg_0.b), vec3<i32>(-arg_1.a.x, 60068 >> (12346u % 32u), global1.a.x))));
                let var_4 = arg_1;
                var var_5 = !false;
            }
            let var_2 = select(select(!vec2<bool>(true, !false), vec2<bool>(false == !true, var_0.x > _wgslsmith_f_op_f32(floor(var_0.x))), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), !vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(any(select(!vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true), true)), select((257.0 == 1213.0) || !true, true, true)), !select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(!false, !false), all(vec3<bool>(false, true, false))));
            var var_3 = !(!select(vec4<bool>(true, var_2.x, false, true), vec4<bool>(all(var_2), var_2.x, select(var_2.x, var_2.x, var_2.x), !var_2.x), !select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x))));
            switch (u_input.b.x) {
                case 42601: {
                    let var_4 = abs(max(_wgslsmith_sub_u32(4294967295u, ~(31362u ^ var_1)), 6781u >> ((4294967295u >> (reverseBits(var_1) % 32u)) % 32u)));
                    var_3 = !select(vec4<bool>(all(var_2), select(var_2.x, true & true, true), !true || true, true), vec4<bool>((false || false) | true, !all(vec2<bool>(var_2.x, true)), _wgslsmith_f_op_f32(var_0.x + 1503.0) >= 906.0, var_0.x == var_0.x), var_3.x);
                    var var_5 = arg_0;
                }
                default: {
                    global0 = !true;
                }
            }
        }
        default: {
            switch (_wgslsmith_dot_vec2_i32(global1.a, abs(abs(reverseBits(arg_0.a & global1.a))))) {
                default: {
                    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 2134.0), _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), all(!vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(f32(-1.0) * -2097.0)));
                    var var_2 = abs(_wgslsmith_sub_i32(countOneBits(arg_1.a.x), _wgslsmith_div_i32(arg_0.a.x, _wgslsmith_mod_i32(arg_1.a.x, reverseBits(arg_1.a.x)))));
                    global1 = Struct_1(-min(abs(-vec2<i32>(-2147483648, -30276)), min(vec2<i32>(-3178, global1.a.x), vec2<i32>(-2147483648, -72633))), ~(-1));
                    var var_3 = -1222.0;
                }
            }
        }
    }
    var var_1 = var_0.x <= var_0.x;
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_0.b, 7137), ~global1.a)), u_input.b), -1409);
    var var_3 = u_input.c.x;
    return _wgslsmith_clamp_i32(~14195, -1, _wgslsmith_sub_i32(-6038, u_input.b.x));
}

fn func_5() -> vec4<bool> {
    let var_0 = ~func_6(Struct_1(~vec2<i32>(44775, -2147483648), abs(-2147483648)), Struct_1(max(vec2<i32>(global1.b, -2147483648), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b, -31562), u_input.b)), u_input.a));
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(-global1.a & _wgslsmith_clamp_vec2_i32(select(vec2<i32>(global1.a.x, global1.a.x), global1.a, false), global1.a, reverseBits(vec2<i32>(u_input.a, u_input.a))), global1.a), select(u_input.b.x, _wgslsmith_div_i32(-(-24547 & -20549), global1.a.x), false));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        let var_2 = select(vec3<bool>(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true))), !(!(true && false)), true), select(vec3<bool>(true, _wgslsmith_f_op_f32(max(-1637.0, -118.0)) < -1000.0, false), vec3<bool>(false, !select(true, false, false), ~u_input.c.x >= u_input.c.x), true), false);
        var var_3 = vec2<u32>(u_input.c.x, ~_wgslsmith_sub_u32(~u_input.c.x, 75005u)) | abs(u_input.c);
        break;
    }
    for (var var_2 = 3105; var_2 != 2147483647; global0 = false) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    let var_2 = ~(~u_input.c.x);
    return vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1583.0 - -2655.0) * _wgslsmith_f_op_f32(max(639.0, 721.0))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-576.0 - -256.0))) + 192.0), !all(vec3<bool>(true | true, !true, !false)), !true, !(!(false || true)) || all(vec3<bool>(any(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, true)), select(true, false, true))));
}

fn func_7(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> Struct_1 {
    if (any(arg_0)) {
    }
    if (!(!arg_1) || false) {
        for (var var_0 = 7165; var_0 != 0; ) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            global0 = all(func_5().xzz);
            var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2252.0, -528.0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -600.0))), all(vec3<bool>(arg_1, false, arg_1))))) + _wgslsmith_f_op_f32(sign(1000.0)));
            continue;
        }
        switch (_wgslsmith_sub_i32(-3771, _wgslsmith_div_i32(global1.a.x, -35246))) {
            case 20942: {
                let var_0 = _wgslsmith_mult_vec3_u32((_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 32363u), ~vec3<u32>(40302u, u_input.c.x, 4294967295u)) | ~(vec3<u32>(u_input.c.x, 50167u, 1u) << (vec3<u32>(1u, 18039u, u_input.c.x) % vec3<u32>(32u)))) << (~(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), ~max(~vec3<u32>(0u, u_input.c.x, 27261u) ^ ~vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) ^ vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(32597u, 4294967295u, 1u), vec3<u32>(u_input.c.x, 6818u, 0u))));
                let var_1 = !any(arg_0.xwx);
            }
            case 29539: {
                let var_0 = 53782u;
                var var_1 = Struct_1(firstLeadingBit(~max(countOneBits(vec2<i32>(u_input.a, global1.a.x)), select(vec2<i32>(u_input.b.x, arg_2), global1.a, true))), _wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(~firstLeadingBit(-59602), -abs(0))));
                global1 = Struct_1(global1.a, arg_2);
                var var_2 = vec3<u32>(4294967295u, ~var_0, ~u_input.c.x);
            }
            case 44206: {
                global1 = Struct_1(vec2<i32>(global1.b, u_input.a), -14295);
            }
            default: {
                let var_0 = -select(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1, 2147483647, arg_2), vec4<i32>(global1.b, arg_2, 48748, global1.b)) << (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 49849u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), select(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x), arg_1)) % vec4<u32>(32u)), abs(abs(vec4<i32>(20796, 1, 0, 0))), false | all(func_5().zwx));
                var var_1 = Struct_1(reverseBits(vec2<i32>(arg_2, func_6(Struct_1(var_0.ww, global1.b), Struct_1(var_0.xy, -30712)))) >> (vec2<u32>(_wgslsmith_sub_u32(39968u, firstTrailingBit(u_input.c.x)), u_input.c.x) % vec2<u32>(32u)), _wgslsmith_mult_i32(u_input.b.x, abs(~(0))));
            }
        }
        return Struct_1(-(~global1.a), max(firstLeadingBit(global1.a.x), global1.b));
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        break;
    }
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_div_u32(4294967295u, max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(41153u, u_input.c.x, u_input.c.x, 28327u), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 24075u))))), _wgslsmith_add_vec2_u32(vec2<u32>(~33830u & (u_input.c.x ^ u_input.c.x), ~u_input.c.x >> (0u % 32u)), max(vec2<u32>(1u >> (u_input.c.x % 32u), u_input.c.x), u_input.c)));
    global1 = Struct_1(reverseBits(select(vec2<i32>(global1.b, u_input.a), select(~vec2<i32>(1, arg_2), abs(u_input.b), arg_0.x), false & (false & true))), -min(u_input.a, arg_2));
    return Struct_1(u_input.b, _wgslsmith_mult_i32(~(-2147483648), -(~5308 & 4854)));
}

fn func_4() -> Struct_1 {
    for (var var_0 = 18848; false || true; var_0 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        break;
    }
    var var_0 = firstTrailingBit(~_wgslsmith_dot_vec4_i32(~(vec4<i32>(1, 39224, 0, -26195) ^ vec4<i32>(global1.a.x, 2147483647, u_input.b.x, -1)), vec4<i32>(u_input.b.x, -1, u_input.a, -2728 << (4294967295u % 32u))));
    for (; _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1134.0 * _wgslsmith_div_f32(-514.0, 384.0))) + 475.0) >= _wgslsmith_f_op_f32(-324.0 * _wgslsmith_f_op_f32(f32(-1.0) * -1987.0)); ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1116.0) * 168.0)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1280.0)))), _wgslsmith_div_f32(-1399.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619.0 + 1604.0))), all(!vec2<bool>(false, false))));
    var var_2 = -(~_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-52835, -40248)), vec2<i32>(-4279, u_input.b.x)), ~(-vec2<i32>(36732, -1))));
    return func_7(func_5(), false, var_2.x ^ countOneBits(_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(-1, u_input.b.x))));
}

fn func_3(arg_0: vec2<f32>) -> Struct_1 {
    switch (global1.a.x) {
        case 48759: {
        }
        case 35688: {
            let var_0 = 2147483647;
        }
        case 0: {
            return func_4();
        }
        case -17380: {
            var var_0 = func_5().wx;
            var_0 = func_5().yx;
        }
        default: {
            var var_0 = -41742;
            let var_1 = arg_0.x;
            let var_2 = func_4();
            var var_3 = Struct_1(~_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(var_2.a.x, 0) | vec2<i32>(24152, global1.b)), -_wgslsmith_add_vec2_i32(vec2<i32>(global1.a.x, -29381), global1.a)), -((firstLeadingBit(-6060) | u_input.b.x) & -global1.b));
        }
    }
    global0 = !func_5().x && false;
    for (var var_0: i32; var_0 < 73940; var_0 += 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        switch (min(max(0, ~(-724)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1 << (4562u % 32u), abs(_wgslsmith_mult_i32(global1.b, u_input.b.x))), min(u_input.b, _wgslsmith_mod_vec2_i32(global1.a, global1.a))))) {
            case -32014: {
                var var_1 = select(vec3<bool>(!(!true != !false), !(u_input.c.x <= 73059u) && any(!vec4<bool>(true, true, true, false)), any(!vec2<bool>(false, false)) & (global1.a.x != _wgslsmith_add_i32(-45423, u_input.a))), vec3<bool>(!any(vec2<bool>(true, false)), false, all(func_5().zx)), all(vec2<bool>(all(!vec4<bool>(false, true, true, true)), ~u_input.b.x < global1.a.x)));
            }
            case 2147483647: {
            }
            case -2147483648: {
                break;
            }
            case 1: {
            }
            default: {
                break;
            }
        }
        break;
    }
    global1 = func_7(!select(!(!vec4<bool>(true, true, true, false)), select(!vec4<bool>(false, true, false, true), func_5(), false), true), any(vec3<bool>(any(vec4<bool>(true, true, false, false)), !true, all(vec3<bool>(true, true, true)))) | (34108 != global1.b), -28626);
    var var_0 = abs(u_input.a);
    return func_4();
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(arg_0, -2147483648);
    switch (max(~global1.a.x, u_input.a)) {
        case -2147483648: {
        }
        default: {
            global1 = Struct_1(vec2<i32>(-(_wgslsmith_dot_vec2_i32(var_0.a, u_input.b) << (48845u % 32u)), -1), _wgslsmith_div_i32(-u_input.a, max(-14139, 67240)));
            let var_1 = -707.0;
            for (var var_2 = -2147483648; var_2 < 20752; var_0 = func_3(vec2<f32>(_wgslsmith_f_op_f32(-1964.0 + _wgslsmith_f_op_f32(-236.0)), var_1))) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_3 = func_7(!(!vec4<bool>(true && false, !true, true & false, !false)), !false, -25669 << (u_input.c.x % 32u));
                let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), var_1)) * -523.0));
                break;
            }
            global0 = !(!(!(!true) | all(vec3<bool>(false, true, false))));
        }
    }
    var_0 = Struct_1(global1.a, 3198);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148.0 + -491.0));
    let var_2 = func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-433.0, var_1) + vec2<f32>(var_1, var_1)) + _wgslsmith_div_vec2_f32(vec2<f32>(-732.0, var_1), vec2<f32>(1286.0, var_1))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(-963.0, -191.0)) + vec2<f32>(var_1, var_1))), vec2<f32>(-1812.0, -386.0), func_5().wz)));
    return vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1.0) * -2070.0) < -872.0), true, all(vec4<bool>(true, (global1.b << (u_input.c.x % 32u)) <= ~global1.a.x, !all(vec3<bool>(true, false, true)), func_5().x)), !(!(_wgslsmith_f_op_f32(1561.0 - 305.0) > _wgslsmith_f_op_f32(ceil(184.0)))));
}

fn func_1() -> bool {
    if (any(func_2(u_input.b))) {
        global1 = Struct_1(reverseBits(vec2<i32>(-10690, select(countOneBits(global1.a.x), _wgslsmith_mod_i32(global1.b, global1.a.x), true))), global1.b);
        var var_0 = ~vec2<i32>(func_3(vec2<f32>(_wgslsmith_f_op_f32(floor(1857.0)), 2652.0)).b, u_input.b.x);
        var var_1 = select(vec3<i32>(var_0.x, _wgslsmith_add_i32(-_wgslsmith_clamp_i32(u_input.b.x, var_0.x, global1.a.x), ~global1.b), var_0.x), (~(-vec3<i32>(var_0.x, -57418, -2147483648)) ^ (_wgslsmith_div_vec3_i32(vec3<i32>(global1.b, global1.a.x, -19479), vec3<i32>(u_input.b.x, -1, -42306)) | select(vec3<i32>(global1.b, u_input.b.x, var_0.x), vec3<i32>(-10442, 2147483647, u_input.a), vec3<bool>(true, true, false)))) ^ reverseBits(~vec3<i32>(var_0.x, var_0.x, u_input.b.x) ^ ~vec3<i32>(var_0.x, -21665, global1.a.x)), select(!vec3<bool>(-1000.0 != -125.0, any(vec3<bool>(true, true, true)), false), vec3<bool>(true, all(!vec4<bool>(false, true, false, true)), !all(vec2<bool>(true, false))), !vec3<bool>(select(false, true, false), false, !false)));
    }
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1068.0))))), vec2<f32>(1000.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(758.0))))))));
    var var_1 = Struct_1(firstTrailingBit(global1.a), 40800);
    for (var var_2 = -1; var_2 == 6363; var_2 += 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_3 = select(!(!(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) <= max(u_input.c.x, 1u))), !false, u_input.c.x < u_input.c.x);
        return false;
    }
    for (var var_2 = 29938; true; var_2 += 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0 - var_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(354.0, _wgslsmith_f_op_f32(var_0.x - var_0.x))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), ((-2147483648 > -global1.a.x) | !(false | false)) && (~u_input.c.x > u_input.c.x)));
        var_2 = 0;
    }
    return !(!select(true | true, select(false, func_2(var_1.a).x, false), true));
}

@compute
@workgroup_size(1)
fn main() {
    switch (-16432) {
        case 1: {
            if (all(vec2<bool>((u_input.c.x & _wgslsmith_sub_u32(8606u, u_input.c.x)) < (~u_input.c.x << (u_input.c.x % 32u)), !(_wgslsmith_sub_i32(0, u_input.b.x) >= -global1.b)))) {
                var var_0 = ~4294967295u | u_input.c.x;
            }
            for (var var_0 = u_input.b.x; func_1(); ) {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                break;
            }
            switch (_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(global1.a.x, global1.b, u_input.a, -13327) & (vec4<i32>(2147483647, 2147483647, 22175, -45634) & vec4<i32>(u_input.b.x, -28611, global1.b, global1.a.x))), (_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647, global1.b, u_input.a, u_input.a), vec4<i32>(-2147483648, -1, 41377, u_input.a)) & firstLeadingBit(vec4<i32>(-2147483648, -48950, -1, u_input.a))) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-4574, u_input.a, 0, u_input.b.x), vec4<i32>(2147483647, global1.a.x, -21933, 0)), select(vec4<i32>(global1.a.x, -2147483648, 1, u_input.b.x), vec4<i32>(global1.a.x, global1.a.x, 1, u_input.a), false)), vec4<i32>(0 >> (~u_input.c.x % 32u), func_3(vec2<f32>(317.0, -884.0)).a.x & 0, ~firstLeadingBit(-9592), -56620)), max(-_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-20016, u_input.b.x, 11123, 2147483647)), -vec4<i32>(1, -3402, u_input.a, 2147483647)), -(vec4<i32>(-32961, global1.b, u_input.b.x, global1.a.x) >> (abs(vec4<u32>(820u, u_input.c.x, u_input.c.x, 679u)) % vec4<u32>(32u)))))) {
                case -10608: {
                    var var_0 = 1000.0;
                    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-991.0, -1000.0, true)))))));
                    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 - var_1)))));
                    var var_2 = func_6(Struct_1(min(u_input.b, vec2<i32>(global1.b, global1.b) & u_input.b), 1), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000.0, var_1)) + vec2<f32>(_wgslsmith_f_op_f32(var_1 * -2060.0), _wgslsmith_f_op_f32(var_1 + var_1)))));
                }
                case 2147483647: {
                    let var_0 = 5529;
                    var var_1 = vec3<i32>(_wgslsmith_mult_i32(25912, global1.b & (u_input.b.x >> (3467u % 32u))), _wgslsmith_mult_i32(var_0, _wgslsmith_add_i32(global1.a.x, 2147483647)) | firstLeadingBit(10340), 0);
                }
                case 0: {
                    let var_0 = func_5().xzz;
                }
                default: {
                    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(504.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -940.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000.0, 2431.0), vec2<f32>(498.0, 1057.0))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-133.0, 819.0), vec2<f32>(318.0, 468.0)))))))));
                }
            }
            global1 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-173.0), _wgslsmith_f_op_f32(exp2(2410.0)))))));
            for (var var_0 = 93296; !(!(!(!(global1.b >= global1.b)))); var_0 -= 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                continue;
            }
        }
        case -27824: {
            global0 = global1.a.x <= abs(~u_input.b.x);
            let var_0 = func_1();
        }
        case 40237: {
        }
        case -1: {
            return;
        }
        default: {
        }
    }
    for (var var_0 = -57514; var_0 <= -2147483648; var_0 -= 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        let var_1 = vec3<u32>(16905u, abs(firstTrailingBit(u_input.c.x)), _wgslsmith_mult_u32(u_input.c.x, ~_wgslsmith_mod_u32(42251u, u_input.c.x)) ^ u_input.c.x);
        for (; true; ) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_2 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(456.0, -147.0))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000.0, -496.0), vec2<f32>(-635.0, -441.0)) + vec2<f32>(-274.0, -1198.0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-146.0, -960.0)))))));
            break;
        }
        var_0 = u_input.a;
    }
    for (var var_0 = -18085; -global1.a.x >= 33158; var_0 = func_7(func_5(), !all(vec2<bool>(func_1(), false || false)), u_input.b.x).a.x) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        let var_1 = Struct_1(u_input.b, 2147483647);
    }
    if (false) {
        var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1847.0, 1000.0) - _wgslsmith_f_op_f32(-497.0 - -983.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1039.0), _wgslsmith_div_f32(1000.0, 882.0)), -658.0))));
    }
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        let var_0 = countOneBits(1u);
        switch (_wgslsmith_div_i32(global1.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-35873 ^ u_input.a, 0 << (var_0 % 32u), ~1), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.a.x, 4592, u_input.b.x), abs(vec3<i32>(global1.a.x, 8053, u_input.a)))), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, global1.a.x, -27076), vec4<i32>(global1.a.x, global1.a.x, 40187, -1)) | _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-25150, global1.a.x), vec2<i32>(u_input.a, global1.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.a.x, -2147483648), vec2<i32>(global1.a.x, -1)))))) {
            case 5420: {
                global1 = Struct_1(_wgslsmith_div_vec2_i32(~u_input.b, global1.a), _wgslsmith_mult_i32(-(0 ^ ~(-2147483648)), -80045));
                return;
            }
            case 2147483647: {
            }
            case 47034: {
            }
            case -2701: {
                let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1) * -global1.a, global1.a, vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(0, 28456)), 10351)), i32(-1) * -32236);
                var var_2 = vec4<i32>(select(-1, reverseBits(-17079), true & (4294967295u <= var_0)) << (_wgslsmith_clamp_u32(~1u, 4294967295u, ~min(20405u, 4294967295u)) % 32u), ~firstTrailingBit(func_6(func_7(vec4<bool>(false, true, true, false), true, u_input.a), Struct_1(vec2<i32>(-6444, global1.a.x), var_1.a.x))), _wgslsmith_div_i32(~(var_1.a.x | var_1.b), -2147483648), 2147483647);
                var_2 = _wgslsmith_mod_vec4_i32(max(vec4<i32>(firstTrailingBit(-1), -var_1.b, firstTrailingBit(39274), 2147483647), min(vec4<i32>(var_1.a.x, 9746, -19219, 1), vec4<i32>(-22377, -25192, -31086, global1.a.x))) ^ vec4<i32>(0, ~u_input.b.x, ~(i32(-1) * -52762), func_7(vec4<bool>(false, true, false, true), 114.0 == -183.0, func_4().a.x).a.x), vec4<i32>(31384, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_2.x, global1.b, -56366) >> (var_0 % 32u), min(u_input.a, var_1.b)), abs(-global1.b >> (0u % 32u)), -55625 & 10077));
            }
            default: {
                global0 = any(func_5().ywx);
            }
        }
        global1 = func_4();
        global0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149.0)) >= _wgslsmith_f_op_f32(abs(101.0))));
        loop {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            let var_1 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 19575u, var_0), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(104032u, 60515u, var_0), vec3<u32>(var_0, var_0, u_input.c.x))))), reverseBits(vec3<u32>(max(1u, u_input.c.x), countOneBits(1u), var_0) ^ ~select(vec3<u32>(var_0, 5379u, var_0), vec3<u32>(1u, var_0, 5662u), true)), ~firstTrailingBit(vec3<u32>(var_0, var_0, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c))));
        }
    }
    var var_0 = 3120u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c.x, u_input.c.x));
}

