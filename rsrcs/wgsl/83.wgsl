// {"0:0":[5,24,83,0,172,7,250,13,112,132,205,36,27,27,244,153,176,146,44,7,250,159,110,49,156,213,25,140,230,133,223,75,152,44,193,165,19,230,122,52,8,114,154,40,81,252,219,107,10,246,50,229,104,186,165,138,88,36,106,156,143,101,177,91]}
// Seed: 17693359994684815483

struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 21>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> vec4<bool> {
    return vec4<bool>(arg_1.x && (true && !arg_2), arg_1.x, countOneBits(u_input.a) > ~(-(~0)), false);
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = -(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.e.zyz, _wgslsmith_clamp_vec3_i32(vec3<i32>(31318, 2147483647, 2147483647), vec3<i32>(u_input.e.x, u_input.a, -1), vec3<i32>(u_input.a, 3060, 35053))), u_input.e.yyx));
    let var_1 = abs(vec2<i32>(~u_input.a, u_input.e.x));
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        if (false) {
            break;
        }
        for (var var_2 = 28793; false; var_2 += 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var var_3 = arg_0.d;
            var_0 = 25138;
            let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))))), -215.0);
        }
        switch (1) {
            default: {
            }
        }
        var var_2 = !func_4(235.0, !vec3<bool>(true, !true, false), any(vec4<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(false, true)), arg_0.a == arg_0.a))).yw;
        let var_3 = Struct_3(arg_0.c.b.xz);
    }
    var var_2 = !(!func_4(_wgslsmith_f_op_f32(-856.0), !(!vec3<bool>(false, true, false)), (false != false) == (false | false)).yy);
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2159.0 * arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)) + _wgslsmith_f_op_f32(exp2(-257.0))))), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-525.0)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000.0, arg_0.a, true)), _wgslsmith_f_op_f32(f32(-1.0) * -230.0)))));
    return var_3.x;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec3<bool> {
    switch (abs(-abs(_wgslsmith_sub_i32(u_input.d.x | arg_3.x, 0 ^ 2147483647)))) {
        case 2147483647: {
            return func_4(-324.0, !(!vec3<bool>(true != false, !true, false)), true).xzy;
        }
        default: {
            var var_0 = arg_1;
            var_0 = arg_1;
        }
    }
    var var_0 = Struct_3(arg_0.a);
    var_0 = arg_0;
    let var_1 = arg_2.wzx;
    switch (-86074) {
        default: {
            for (var var_2 = 1; var_2 == 8670; ) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            }
        }
    }
    return vec3<bool>(true, any(vec2<bool>(false, false)), select(!true, all(vec2<bool>(29211 <= 1, any(vec3<bool>(true, true, false)))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-218.0)) * -668.0), vec3<bool>(false || false, all(vec4<bool>(false, true, true, false)), !true), all(!vec3<bool>(true, false, true))).x));
}

fn func_5() -> vec3<u32> {
    var var_0 = !vec3<bool>(!(!(4294967295u <= u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(415.0, -1096.0) - _wgslsmith_f_op_f32(1308.0 * 129.0)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-692.0 * -987.0), -618.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(794.0 + 2348.0) * _wgslsmith_div_f32(1838.0, 1209.0)) != _wgslsmith_f_op_f32(-206.0 + -496.0));
    var_0 = vec3<bool>(!any(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, false), select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)))), true, true);
    var var_1 = 26206;
    switch (u_input.a) {
        case 0: {
            if (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551.0 - -1316.0)))))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1426.0) - _wgslsmith_f_op_f32(f32(-1.0) * -1081.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -458.0) * _wgslsmith_f_op_f32(f32(-1.0) * -492.0)))))) {
                let var_2 = u_input.e.zx;
                var_1 = _wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec2_i32(u_input.e.wy >> (abs(firstTrailingBit(u_input.c.yz)) % vec2<u32>(32u)), vec2<i32>(-2147483648, select(var_2.x, var_2.x, var_0.x)) << (_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c.x), ~u_input.c.yx) % vec2<u32>(32u))));
                var_0 = select(func_7(Struct_3(select(vec2<u32>(46788u, u_input.c.x) << (u_input.c.xx % vec2<u32>(32u)), vec2<u32>(1u, 0u), !true)), Struct_1(1u, ~vec4<u32>(u_input.c.x, 63304u, u_input.b, u_input.c.x) | vec4<u32>(u_input.c.x, 9546u, 46961u, u_input.c.x), 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_6(Struct_2(1105.0, u_input.c.zz, Struct_1(1u, vec4<u32>(132u, u_input.c.x, u_input.c.x, 53783u), u_input.c.x), Struct_1(u_input.c.x, vec4<u32>(58783u, u_input.b, u_input.b, 4294967295u), u_input.c.x), vec3<u32>(u_input.c.x, u_input.b, u_input.c.x)), 41157u)), _wgslsmith_f_op_f32(126.0 - -181.0), _wgslsmith_f_op_f32(401.0 + -1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -1210.0)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -554.0), _wgslsmith_f_op_f32(-389.0), -380.0, _wgslsmith_div_f32(-822.0, -1302.0))), _wgslsmith_add_vec3_i32(vec3<i32>(28575, u_input.d.x, -11648 ^ u_input.e.x), (vec3<i32>(u_input.d.x, 1, var_2.x) >> (u_input.c % vec3<u32>(32u))) << ((vec3<u32>(u_input.b, u_input.b, 0u) ^ u_input.c) % vec3<u32>(32u)))), select(vec3<bool>(_wgslsmith_f_op_f32(-149.0 * -548.0) != _wgslsmith_f_op_f32(-2431.0), !var_0.x, var_0.x & all(vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(!var_0.x, func_7(Struct_3(vec2<u32>(u_input.b, u_input.b)), Struct_1(1u, vec4<u32>(u_input.c.x, u_input.b, 1u, 26434u), u_input.c.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-143.0, 302.0, 1000.0, 1000.0))), ~u_input.e.xyx).x, true), !vec3<bool>(var_0.x, true | false, !var_0.x)), true);
                let var_3 = vec4<bool>(!(!(!any(vec3<bool>(var_0.x, var_0.x, true)))), !false, select(func_7(Struct_3(u_input.c.yy), Struct_1(u_input.b, vec4<u32>(39857u, 4294967295u, 13442u, 1u), u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(-1000.0 * 1183.0), _wgslsmith_f_op_f32(trunc(-134.0)), _wgslsmith_f_op_f32(1011.0 - 1858.0), _wgslsmith_f_op_f32(f32(-1.0) * -884.0)), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.e.x, u_input.a), vec3<i32>(-15500, 0, var_2.x), vec3<i32>(1, u_input.a, 5705)))).x, var_0.x, false), var_0.x);
            }
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_2 = false;
            }
            switch (_wgslsmith_clamp_i32(16258, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(u_input.e.x, 0, -2147483648) & u_input.e.x, u_input.d.x), u_input.e.x)) {
                case -1: {
                    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1717.0, -1206.0, var_0.x))) - 1008.0)), _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.c.zz, vec2<u32>(95416u, u_input.b)) << (select(max(u_input.c.xz, vec2<u32>(0u, 2620u)), countOneBits(u_input.c.yz), vec2<bool>(true, var_0.x)) % vec2<u32>(32u)), countOneBits(u_input.c.zy)), Struct_1(~(~4294967295u ^ u_input.c.x), vec4<u32>(~65820u, ~0u, 19748u, select(78586u, u_input.b, var_0.x) & u_input.c.x), firstTrailingBit(countOneBits(u_input.c.x)) | u_input.c.x), Struct_1(~min(firstTrailingBit(u_input.b), u_input.b), vec4<u32>(u_input.b << (u_input.c.x % 32u), ~0u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(15144u, 0u, u_input.c.x, 29802u), vec4<u32>(38381u, u_input.b, u_input.b, 19438u)), ~u_input.b), (u_input.b | u_input.b) ^ ~u_input.c.x), _wgslsmith_add_u32(0u, max(~20627u, 1u | 1u))), abs(select(~vec3<u32>(u_input.b, 4294967295u, u_input.b), (vec3<u32>(u_input.c.x, u_input.b, u_input.b) >> (vec3<u32>(u_input.c.x, u_input.b, u_input.c.x) % vec3<u32>(32u))) << (~vec3<u32>(14216u, 25020u, 4294967295u) % vec3<u32>(32u)), true)));
                }
                case 2147483647: {
                    var_1 = 66;
                    var var_2 = !(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_div_u32(1u, u_input.c.x), u_input.b, u_input.c.x), vec4<u32>(39678u << (7963u % 32u), u_input.c.x, 1u, 0u ^ 0u)) > (min(u_input.b & u_input.c.x, min(u_input.b, 109264u)) << ((1u ^ _wgslsmith_mult_u32(4294967295u, 102903u)) % 32u)));
                    var_2 = var_0.x;
                    var var_3 = !func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1220.0))) - -997.0), vec3<bool>(func_4(_wgslsmith_f_op_f32(func_6(Struct_2(-687.0, vec2<u32>(0u, u_input.b), Struct_1(19745u, vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.b), u_input.c.x), Struct_1(4294967295u, vec4<u32>(u_input.c.x, u_input.c.x, 0u, 17783u), 8073u), u_input.c), u_input.c.x)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, true), true), !false).x, var_0.x, any(!vec2<bool>(var_0.x, false))), var_0.x).xx;
                    var var_4 = vec4<f32>(1271.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-231.0)), _wgslsmith_f_op_f32(2060.0 - 1000.0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-685.0))) + _wgslsmith_div_f32(1222.0, _wgslsmith_f_op_f32(-609.0))), _wgslsmith_f_op_f32(-868.0));
                }
                case -50508: {
                }
                default: {
                }
            }
            for (var var_2 = 4600; var_0.x; var_2 += 1) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_3 = u_input.c.xz;
                var var_4 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_3.x >> (~15236u % 32u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(u_input.c.x, 1u)), 100487u), _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_3.x, 4294967295u, 1u, var_3.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_3.x, 1u, 4294967295u), vec4<u32>(44183u, var_3.x, u_input.c.x, u_input.b)))), max(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.x, var_3.x, var_3.x), vec4<u32>(var_3.x, u_input.c.x, var_3.x, var_3.x)), _wgslsmith_mult_u32(18837u, 4294967295u)), ~96755u >> (_wgslsmith_add_u32(4294967295u, 0u) % 32u), ~44949u << (max(1u, u_input.c.x) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11347u, 17335u, var_3.x), vec4<u32>(4294967295u, 4294967295u, 7435u, 96040u))), countOneBits(_wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.c.x, 89252u, u_input.c.x, var_3.x), vec4<u32>(var_3.x, u_input.b, 1232u, var_3.x)), vec4<u32>(u_input.b, u_input.c.x, 1u, 0u) << (vec4<u32>(var_3.x, 4294967295u, 83861u, 12578u) % vec4<u32>(32u))))), vec4<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c.x, var_3.x, var_3.x), abs(var_3.x), 4294967295u), 0u), 11476u, firstTrailingBit(_wgslsmith_div_u32(~u_input.b, select(u_input.c.x, 755u, true)))));
                let var_5 = vec3<bool>(true, func_7(Struct_3(vec2<u32>(_wgslsmith_add_u32(var_3.x, var_4.x), u_input.b)), Struct_1(max(~var_3.x, 4294967295u), ~(~vec4<u32>(var_4.x, 6099u, u_input.c.x, u_input.b)), 83946u << (4294967295u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000.0, 440.0, 2193.0, -330.0))))), countOneBits(max(-u_input.e.xyx, u_input.e.xxw))).x, any(!var_0.zx));
                var var_6 = var_3.x | _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(_wgslsmith_sub_u32(60331u, 1u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 55021u, u_input.b), vec4<u32>(20361u, 50913u, 0u, 1u))));
                var var_7 = false;
            }
        }
        case -1: {
            let var_2 = vec3<i32>(-13332, u_input.d.x, u_input.e.x);
            let var_3 = vec2<bool>(any(select(vec2<bool>(false, false), !vec2<bool>(false, var_0.x), var_0.zz)) & !(!(!false)), false);
            switch (max(~u_input.e.x, u_input.a >> (0u % 32u))) {
                case 2147483647: {
                }
                default: {
                    var_0 = vec3<bool>(!func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-707.0), 274.0), vec3<bool>(var_0.x, u_input.b < 26774u, false), var_0.x).x, -920.0 != _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1018.0)), _wgslsmith_f_op_f32(select(-125.0, -321.0, var_0.x)))), 119.0), !false);
                    var var_4 = Struct_1(22498u, ~vec4<u32>(71994u, 1u, 54216u, _wgslsmith_mod_u32(4294967295u, 36287u | u_input.c.x)), u_input.c.x);
                    let var_5 = Struct_3(reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(var_4.b, vec4<u32>(2238u, u_input.b, u_input.b, 10009u)), u_input.c.x) ^ _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(4294967295u, u_input.b)), firstLeadingBit(var_4.b.wx))));
                }
            }
        }
        case -2147483648: {
            let var_2 = Struct_1(u_input.b, vec4<u32>(18856u, ~u_input.c.x, u_input.c.x, _wgslsmith_sub_u32(min(1u, abs(412u)), 0u)), u_input.c.x);
            let var_3 = ~u_input.c.xx;
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_4 = var_0.x;
                let var_5 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2414.0 * 441.0))) * -384.0), select(!vec3<bool>(func_4(1000.0, vec3<bool>(var_0.x, var_0.x, var_0.x), false).x, var_0.x, var_0.x), vec3<bool>(false, any(!vec2<bool>(true, false)), (-1 >> (1u % 32u)) <= -u_input.a), vec3<bool>(var_0.x, (true | true) || var_0.x, false)), var_0.x).yyx;
                var_1 = 1;
                var_1 = 0;
            }
            var var_4 = vec3<u32>(min(u_input.b, min(~0u ^ u_input.b, var_3.x)), var_3.x, 0u);
            let var_5 = true;
        }
        default: {
            for (; ; ) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_2 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~u_input.c.x, firstTrailingBit(82235u), u_input.c.x) >> (~(vec3<u32>(u_input.b, 9186u, 1u) & abs(vec3<u32>(u_input.b, u_input.c.x, 0u))) % vec3<u32>(32u)), u_input.c);
                var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.e, _wgslsmith_mod_vec4_i32(u_input.e, firstLeadingBit(u_input.e)), u_input.e), vec4<i32>(u_input.e.x, u_input.d.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x), 1 | 21923), firstLeadingBit(countOneBits(u_input.a)), (-21244 | u_input.a) & _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(1, 2147483647, u_input.d.x, u_input.a))), 45691 | countOneBits(-2147483647)));
                let var_4 = u_input.e.x;
                var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-246.0, 1000.0)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-257.0), _wgslsmith_div_f32(-1000.0, 2151.0)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(812.0, -406.0))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-614.0, 323.0) + vec2<f32>(1425.0, 1173.0))))));
            }
            for (; true; ) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                let var_2 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -2070.0)), _wgslsmith_f_op_f32(round(-172.0))), vec3<bool>(false, (u_input.c.x > u_input.c.x) || false, func_7(Struct_3(vec2<u32>(u_input.c.x, u_input.b)), Struct_1(0u, vec4<u32>(97481u, 0u, u_input.b, 70826u), u_input.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(137.0, -317.0, -715.0, -2243.0))), _wgslsmith_sub_vec3_i32(u_input.e.xxx, vec3<i32>(3692, -1, u_input.a))).x && var_0.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.e.x, u_input.d.x) | _wgslsmith_add_i32(u_input.d.x, u_input.d.x), (u_input.e.x << (u_input.c.x % 32u)) & (1 & u_input.d.x)) > -1);
                continue;
            }
            var_0 = vec3<bool>(true && !var_0.x, !any(vec2<bool>(false, var_0.x)) & (var_0.x && true), -1434.0 > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-693.0 + -1000.0))), _wgslsmith_f_op_f32(max(968.0, _wgslsmith_f_op_f32(sign(1000.0)))))));
            let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-771.0, -119.0) - 1433.0), -1000.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(Struct_2(-942.0, u_input.c.yz, Struct_1(u_input.c.x, vec4<u32>(8240u, u_input.b, u_input.b, 56972u), u_input.c.x), Struct_1(u_input.b, vec4<u32>(u_input.c.x, u_input.c.x, 1u, 0u), 1u), vec3<u32>(u_input.c.x, 22781u, u_input.c.x)), u_input.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-583.0, 2997.0, var_0.x)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107.0)) * -1000.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(621.0, 490.0) - _wgslsmith_f_op_f32(-971.0)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-883.0, 1021.0) - _wgslsmith_f_op_f32(821.0 + 1473.0)))));
            var_1 = ~u_input.a;
        }
    }
    let var_2 = Struct_2(1796.0, ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(60839u, u_input.c.x), ~u_input.c.zy), _wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(18470u, 2636u)), ~u_input.c.yx)), Struct_1(~4243u, ~vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), abs(u_input.b), u_input.c.x, u_input.c.x), ~u_input.c.x), Struct_1(~1u, vec4<u32>(0u, _wgslsmith_mult_u32(u_input.b, _wgslsmith_mod_u32(58578u, u_input.c.x)), u_input.b, 1u), firstTrailingBit(5222u)), (u_input.c << ((vec3<u32>(72258u, u_input.b, 83269u) | countOneBits(u_input.c)) % vec3<u32>(32u))) >> (select(_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(1u, 1u, u_input.c.x)), vec3<u32>(~41554u, _wgslsmith_add_u32(u_input.b, u_input.b), u_input.b), select(!vec3<bool>(true, var_0.x, true), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true)), var_0.x)) % vec3<u32>(32u)));
    return ~countOneBits(_wgslsmith_mod_vec3_u32(~var_2.d.b.yyz, max(reverseBits(u_input.c), firstLeadingBit(u_input.c))));
}

fn func_8(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    for (var var_0 = i32(-1) * -2147483648; ; var_0 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        var var_1 = arg_0.x;
        let var_2 = arg_2;
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    var var_0 = Struct_4(Struct_3(max(select(_wgslsmith_mod_vec2_u32(arg_0.xy, u_input.c.zx), ~u_input.c.yz, func_7(Struct_3(u_input.c.zy), Struct_1(20922u, vec4<u32>(9829u, arg_2.c.a, arg_2.b.x, 41021u), 43465u), vec4<f32>(788.0, arg_1, arg_1, arg_1), vec3<i32>(u_input.a, u_input.d.x, u_input.e.x)).zy), vec2<u32>(_wgslsmith_sub_u32(arg_2.b.x, arg_0.x), 30445u))), !true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-351.0, -215.0)) - _wgslsmith_f_op_f32(min(-1000.0, 1056.0))) * arg_2.a) + _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1185.0 * 1070.0))))));
    var var_1 = select(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-682.0), -662.0), !vec3<bool>(any(vec4<bool>(var_0.b, false, var_0.b, true)), var_0.b && var_0.b, false), any(vec3<bool>(!var_0.b, arg_0.x < var_0.a.a.x, var_0.b))).xx, select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(any(func_7(Struct_3(vec2<u32>(4294967295u, 1u)), arg_2.d, vec4<f32>(var_0.c, var_0.c, arg_2.a, 1053.0), vec3<i32>(2147483647, -2147483648, u_input.d.x))), !true), func_7(Struct_3(~var_0.a.a), arg_2.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000.0, var_0.c, 1000.0, var_0.c)))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(32740, 0, u_input.d.x)), vec3<i32>(-3207, u_input.a, -1))).xx), func_7(Struct_3(~(vec2<u32>(var_0.a.a.x, var_0.a.a.x) | vec2<u32>(arg_0.x, 1u))), arg_2.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(728.0, arg_2.a, var_0.c, arg_1)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.a, -679.0, arg_2.a, -1124.0))), !vec4<bool>(var_0.b, var_0.b, true, var_0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 950.0, arg_1) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.a, -322.0, -3021.0, 120.0)))))), u_input.e.wxy).zz);
    if (!var_1.x) {
        let var_2 = 11553u;
        var var_3 = var_0.a;
        if (!(!any(vec3<bool>(all(vec2<bool>(var_0.b, false)), var_1.x, select(true, true, true))))) {
            var_0 = Struct_4(Struct_3(~(~u_input.c.xx)), min(_wgslsmith_div_u32(1u ^ var_3.a.x, var_3.a.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 66522u), var_0.a.a.x)) == 5051u, -1466.0);
        }
    }
    return Struct_4(var_0.a, var_0.b, _wgslsmith_f_op_f32(-2072.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1, -1546.0)), -860.0)))));
}

fn func_9(arg_0: Struct_4) -> vec4<u32> {
    let var_0 = Struct_1(func_8(vec3<u32>(47120u ^ ~50783u, abs(_wgslsmith_clamp_u32(4294967295u, 43023u, arg_0.a.a.x)), arg_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -1977.0)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, 1880.0)), vec2<u32>(reverseBits(4294967295u), _wgslsmith_div_u32(21598u, 0u)), Struct_1(arg_0.a.a.x, vec4<u32>(4294967295u, 54132u, 4294967295u, u_input.c.x), func_8(vec3<u32>(u_input.b, u_input.b, arg_0.a.a.x), 809.0, Struct_2(-1704.0, u_input.c.xy, Struct_1(arg_0.a.a.x, vec4<u32>(0u, 45088u, 14944u, 5309u), u_input.c.x), Struct_1(114980u, vec4<u32>(5421u, u_input.c.x, 0u, 1u), 4294967295u), vec3<u32>(u_input.b, arg_0.a.a.x, 8536u))).a.a.x), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), u_input.c), ~vec4<u32>(arg_0.a.a.x, 4294967295u, 13413u, 63116u), countOneBits(1u)), u_input.c)).a.a.x, vec4<u32>(_wgslsmith_mult_u32(arg_0.a.a.x, arg_0.a.a.x), 90882u, u_input.b, select(firstLeadingBit(u_input.b), 19030u, arg_0.b)), ~(~abs(func_5().x)));
    for (var var_1 = 38481; true; var_1 = _wgslsmith_dot_vec4_i32(u_input.e, -(u_input.e >> (var_0.b % vec4<u32>(32u))))) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        var var_2 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.b, var_0.b, vec4<u32>(0u, u_input.c.x, 58250u, var_0.b.x)) << (~vec4<u32>(10510u, arg_0.a.a.x, 0u, 27858u) % vec4<u32>(32u)), ~(vec4<u32>(var_0.b.x, 1u, var_0.a, var_0.b.x) << (var_0.b % vec4<u32>(32u)))), var_0.c);
        let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_2(arg_0.c, arg_0.a.a, var_0, var_0, var_0.b.wwx), reverseBits(132089u)))), _wgslsmith_f_op_f32(-func_8(var_0.b.yxz, _wgslsmith_div_f32(arg_0.c, arg_0.c), Struct_2(arg_0.c, vec2<u32>(113162u, u_input.b), Struct_1(1u, vec4<u32>(0u, var_0.c, 19154u, 4294967295u), var_2.x), Struct_1(u_input.b, vec4<u32>(var_2.x, var_0.a, 1u, 25686u), arg_0.a.a.x), vec3<u32>(1698u, u_input.c.x, arg_0.a.a.x))).c), arg_0.c) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.c, 150.0, arg_0.c, -376.0), vec4<f32>(arg_0.c, 1000.0, 1204.0, arg_0.c))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 970.0, -179.0, arg_0.c) - vec4<f32>(arg_0.c, -2722.0, arg_0.c, arg_0.c))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(162.0, arg_0.c, arg_0.c, arg_0.c)), vec4<f32>(-412.0, arg_0.c, arg_0.c, 353.0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1897.0, -1412.0, 1000.0, -1015.0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1224.0, arg_0.c, arg_0.c, 1000.0))))));
        continue;
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        for (var var_1 = 35277; arg_0.b; var_1 += 1) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(2147483647, u_input.d.x), u_input.d), -vec2<i32>(u_input.a, -1)) | u_input.d, vec2<i32>(-11127, -26898) << ((_wgslsmith_mult_vec2_u32(vec2<u32>(63997u, 0u), var_0.b.zy) << (vec2<u32>(arg_0.a.a.x, 63931u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<i32>(-38454, u_input.d.x));
        }
        var var_1 = func_8(var_0.b.xyx, -1696.0, Struct_2(191.0, vec2<u32>(var_0.b.x, 49554u), Struct_1(~(u_input.b | 108520u), var_0.b & var_0.b, func_5().x), var_0, firstLeadingBit(~vec3<u32>(7165u, var_0.b.x, 1u) | var_0.b.www))).a;
        let var_2 = Struct_1(~(~var_0.a), var_0.b, ~45518u);
    }
    var var_1 = Struct_1(13842u, var_0.b >> (var_0.b % vec4<u32>(32u)), func_5().x);
    if (false) {
        let var_2 = u_input.e.yyw;
        var var_3 = func_8(vec3<u32>(max(52227u, var_0.c & (arg_0.a.a.x >> (var_1.a % 32u))), _wgslsmith_add_u32(552u, ~1u ^ (0u >> (u_input.b % 32u))), arg_0.a.a.x), arg_0.c, Struct_2(arg_0.c, ~(~vec2<u32>(4294967295u, 1u)), Struct_1(arg_0.a.a.x & ~arg_0.a.a.x, _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, arg_0.a.a.x, 53363u, u_input.b), vec4<u32>(9646u, var_0.a, 48550u, 47612u)) & vec4<u32>(26986u, 6794u, 40733u, u_input.b), abs(_wgslsmith_sub_u32(45111u, var_1.b.x))), var_0, u_input.c)).c;
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            let var_4 = func_8(vec3<u32>(20226u, 1u, arg_0.a.a.x), arg_0.c, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c)) + _wgslsmith_f_op_f32(round(arg_0.c))), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(19983u, u_input.c.x) | var_0.b.xx)), var_0, Struct_1(_wgslsmith_div_u32(reverseBits(u_input.b), ~arg_0.a.a.x), var_0.b >> (vec4<u32>(u_input.b, var_0.a, 8238u, 9957u) % vec4<u32>(32u)), 27371u), var_1.b.xxz)).a;
            var var_5 = Struct_3(~(_wgslsmith_sub_vec2_u32(select(vec2<u32>(8314u, 58800u), vec2<u32>(u_input.b, arg_0.a.a.x), true), arg_0.a.a & arg_0.a.a) & ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), var_0.b.yy)));
            var var_6 = Struct_3(_wgslsmith_sub_vec2_u32(~func_5().zx << (var_0.b.ww % vec2<u32>(32u)), vec2<u32>(~abs(1u), _wgslsmith_add_u32(var_5.a.x, 55893u) << (~108815u % 32u))));
            break;
        }
        var var_4 = var_1.b.wx;
    }
    return firstLeadingBit(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, 32113u, var_1.c), vec4<u32>(var_0.a, 79356u, var_1.b.x, arg_0.a.a.x)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    if (!(!(!any(func_4(arg_1.x, vec3<bool>(false, false, true), true))))) {
        let var_0 = Struct_2(arg_0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.e.x, arg_0.b.x), u_input.b | 6925u), 0u), vec2<u32>(1u, _wgslsmith_mult_u32(0u, arg_0.e.x))), Struct_1(u_input.b, func_9(func_8(func_5(), 1280.0, arg_0)), 4294967295u), Struct_1(_wgslsmith_clamp_u32(35441u, min(4294967295u & arg_0.c.b.x, _wgslsmith_mult_u32(31704u, 58317u)), ~select(54320u, 105665u, true)), arg_0.d.b, max(1u, u_input.c.x)), ~(~vec3<u32>(u_input.b, arg_0.d.b.x, 4294967295u) ^ vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.c.x << (47101u % 32u), select(53750u, 0u, false))));
    }
    switch (~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~u_input.e, -u_input.e), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2, -27170), u_input.e.zy)) & abs(u_input.a)) {
        case 18761: {
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            }
            switch (-firstTrailingBit(u_input.a) >> ((u_input.c.x | ~(0u ^ ~u_input.b)) % 32u)) {
                case -25567: {
                    var var_0 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_8(vec3<u32>(arg_0.c.a, arg_0.c.b.x, arg_0.c.c), arg_1.x, arg_0).c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, true))) + arg_0.a))));
                    let var_1 = arg_0.c;
                    let var_2 = Struct_2(func_8(arg_0.d.b.yww, -1113.0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - -1568.0)), u_input.c.xx, var_1, var_1, firstLeadingBit(firstTrailingBit(arg_0.d.b.ywz)))).c, ~select(vec2<u32>(var_1.a, 36522u) ^ firstLeadingBit(var_1.b.wy), vec2<u32>(0u, ~0u), !(!vec2<bool>(true, false))), Struct_1(_wgslsmith_mult_u32(~(arg_0.b.x & 56527u), var_1.b.x), arg_0.d.b, var_1.c), var_1, _wgslsmith_div_vec3_u32(var_1.b.wxx, vec3<u32>(var_1.a, u_input.c.x, var_1.a)));
                    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(arg_1.ww)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), arg_0.a)), vec2<bool>(any(!vec3<bool>(true, false, true)), !true)))));
                    let var_3 = arg_1.xy;
                }
                default: {
                    var var_0 = _wgslsmith_clamp_vec4_u32(arg_0.c.b, arg_0.c.b, arg_0.d.b);
                    let var_1 = _wgslsmith_div_f32(616.0, arg_1.x);
                    let var_2 = vec3<u32>(~_wgslsmith_mult_u32(max(23560u, 25206u), _wgslsmith_dot_vec2_u32(var_0.yw, vec2<u32>(65483u, 55483u))), ~u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 19312u), arg_0.b.x) ^ var_0.x) | vec3<u32>(_wgslsmith_dot_vec2_u32(~(~arg_0.b), vec2<u32>(func_9(Struct_4(Struct_3(u_input.c.yx), false, var_1)).x, u_input.b)), func_5().x, 0u);
                    var var_3 = Struct_3(~arg_0.b);
                    let var_4 = -_wgslsmith_dot_vec4_i32(-abs(u_input.e), min(vec4<i32>(~(-2147483648), -1, ~u_input.e.x, -1 & 2147483647), vec4<i32>(1 ^ arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -24844, 26305), vec3<i32>(u_input.a, -39318, -12934)), -u_input.a, ~39222)));
                }
            }
            var var_0 = max(-abs(vec2<i32>(_wgslsmith_clamp_i32(-39129, arg_2, -21162), _wgslsmith_dot_vec2_i32(u_input.d, u_input.e.xz))), -countOneBits(vec2<i32>(countOneBits(arg_2), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d))));
        }
        case -61632: {
            if (true) {
            }
            switch (-1) {
                case 44391: {
                    var var_0 = _wgslsmith_mult_vec4_i32(u_input.e, u_input.e);
                }
                case 59354: {
                    let var_0 = arg_0;
                    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), 488.0)) + _wgslsmith_f_op_vec2_f32(-arg_1.xy)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1000.0)), arg_1.x) - arg_1.zz));
                    let var_2 = u_input.d.x;
                }
                default: {
                    let var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.x, 0u, arg_0.c.a, u_input.b), vec4<u32>(75752u, 53227u, 0u, 44404u), countOneBits(arg_0.d.b)), arg_0.d.b)), _wgslsmith_add_u32(u_input.b, arg_0.c.c) | u_input.b);
                    let var_1 = func_8(select(vec3<u32>(var_0, ~(0u | 0u), var_0 & _wgslsmith_clamp_u32(1u, u_input.b, 12897u)), _wgslsmith_mult_vec3_u32(func_9(Struct_4(Struct_3(vec2<u32>(arg_0.b.x, var_0)), false, arg_1.x)).xxx, vec3<u32>(~var_0, var_0 | 4294967295u, u_input.c.x ^ 79233u)), !(!vec3<bool>(true, true, true))), -2008.0, arg_0).b;
                    let var_2 = -121.0;
                }
            }
            var var_0 = func_8(u_input.c, arg_0.a, arg_0).c;
            var var_1 = u_input.e;
            let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-arg_0.a) > arg_0.a, false || (true == !(true || false)), !select(!all(vec2<bool>(false, true)), false, 1025.0 < _wgslsmith_f_op_f32(-arg_0.a)));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                let var_0 = Struct_1(37384u, firstLeadingBit(~reverseBits(arg_0.c.b)), u_input.c.x);
                var var_1 = arg_0;
                let var_2 = arg_0.d.b.wy;
                var_1 = arg_0;
                var var_3 = func_8(vec3<u32>(abs(~12162u), u_input.b, 41588u), func_8(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.b.zxz, vec3<u32>(51952u, var_1.b.x, arg_0.e.x)), _wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(14024u, 23277u, var_1.d.c))), _wgslsmith_f_op_f32(-139.0 - arg_0.a), Struct_2(_wgslsmith_f_op_f32(floor(-1380.0)), ~var_1.b, var_1.d, Struct_1(var_2.x, vec4<u32>(var_2.x, 0u, 245u, u_input.c.x), 0u), firstTrailingBit(arg_0.e))).c, arg_0).b == !all(!(!vec4<bool>(true, false, true, false)));
            }
            let var_0 = any(!select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(-975.0 != arg_1.x, !true), vec2<bool>(true & true, true)));
            let var_1 = Struct_3(func_5().zx);
            return arg_1.x;
        }
    }
    for (var var_0 = 1; !func_7(func_8(min(arg_0.c.b.yyw, ~vec3<u32>(u_input.c.x, u_input.c.x, 6549u)), 1000.0, arg_0).a, Struct_1(select(37514u, _wgslsmith_dot_vec2_u32(vec2<u32>(12276u, 1u), u_input.c.zz), any(vec4<bool>(false, false, false, true))), func_9(Struct_4(Struct_3(arg_0.c.b.xz), true, arg_1.x)), countOneBits(~u_input.c.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(216.0, arg_0.a, -846.0, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0.a, 1325.0, arg_1.x))))), u_input.e.yzx).x; var_0 -= 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        return arg_1.x;
    }
    var var_0 = arg_0.d;
    var_0 = arg_0.d;
    return _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -2757.0)))))));
}

fn func_10(arg_0: u32, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = true;
    var_0 = func_8(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_8(max(vec3<u32>(arg_0, u_input.b, 1u), u_input.c), 112.0, Struct_2(arg_1.x, vec2<u32>(16967u, u_input.b), Struct_1(43019u, vec4<u32>(5022u, u_input.b, 0u, arg_0), 55055u), Struct_1(arg_0, vec4<u32>(1u, u_input.b, arg_0, 1u), u_input.b), vec3<u32>(4294967295u, u_input.c.x, 1246u))).c - -212.0) + arg_1.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(852.0, _wgslsmith_f_op_f32(select(arg_1.x, 1617.0, true)))) - 992.0), u_input.c.yz, Struct_1(arg_0, select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 10286u, arg_0, 8248u), vec4<u32>(arg_0, 1u, u_input.b, u_input.b)), vec4<u32>(u_input.b, 1u, arg_0, arg_0) | vec4<u32>(arg_0, u_input.c.x, arg_0, 53088u), true), 0u), Struct_1(0u, ~(vec4<u32>(u_input.b, u_input.c.x, arg_0, 1u) | vec4<u32>(u_input.b, 4294967295u, arg_0, u_input.c.x)), 52636u), vec3<u32>(~(~4294967295u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.b, arg_0, 1u), vec4<u32>(1u, 0u, 30738u, 0u), vec4<bool>(false, true, true, false)), vec4<u32>(u_input.b, 44227u, 1u, 0u) >> (vec4<u32>(arg_0, arg_0, u_input.c.x, 0u) % vec4<u32>(32u))), func_8(abs(u_input.c), 233.0, Struct_2(-114.0, u_input.c.xz, Struct_1(arg_0, vec4<u32>(1u, 63418u, u_input.c.x, 31988u), arg_0), Struct_1(1u, vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1129u), u_input.c.x), u_input.c)).a.a.x))).b;
    for (var var_1 = -1490; _wgslsmith_div_f32(arg_1.x, arg_1.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 922.0)); var_1 = u_input.d.x) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        break;
    }
    if (!true) {
        var var_1 = arg_1.zw;
        if (true) {
            var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1046.0), _wgslsmith_f_op_f32(func_6(Struct_2(-235.0, vec2<u32>(arg_0, u_input.b), Struct_1(20234u, vec4<u32>(68564u, u_input.b, arg_0, 0u), arg_0), Struct_1(arg_0, vec4<u32>(0u, arg_0, 0u, u_input.b), 53712u), u_input.c), u_input.b)))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(728.0 - arg_1.x), abs(vec2<u32>(u_input.c.x, arg_0)), Struct_1(0u, vec4<u32>(u_input.b, 12204u, arg_0, 24462u), u_input.b), Struct_1(u_input.c.x, vec4<u32>(arg_0, arg_0, u_input.b, u_input.c.x), 4294967295u), vec3<u32>(9070u, 40214u, u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_1.x, 744.0, -231.0))), i32(-1) * -u_input.e.x)), -1031.0), (true & (39665u > (27122u >> (1u % 32u)))) == all(vec2<bool>(all(vec4<bool>(true, false, true, true)), true && true))));
            let var_2 = Struct_1(36468u, ~countOneBits(~firstLeadingBit(vec4<u32>(u_input.c.x, 4294967295u, arg_0, u_input.c.x))), _wgslsmith_mod_u32(~(~u_input.b) ^ ((41928u << (4294967295u % 32u)) & u_input.c.x), select(~62529u, ~_wgslsmith_clamp_u32(41790u, 1u, 4294967295u), true)));
        }
        if (select(u_input.e.x, _wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(u_input.a, u_input.d.x, -21090), -1, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d) ^ -5196), false == (!false && (66289 < u_input.e.x))) != countOneBits(u_input.a)) {
        }
        switch (select(1, -(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-48265, -22073), 39815) & -u_input.e.x), any(!(!(!vec2<bool>(true, true)))))) {
            case 0: {
            }
            case -1: {
                var var_2 = Struct_2(arg_1.x, u_input.c.yy, Struct_1(func_9(Struct_4(Struct_3(u_input.c.zz), all(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(-812.0 - var_1.x))).x, firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 3879u, arg_0), select(vec4<u32>(1u, 4294967295u, 26972u, 11574u), vec4<u32>(0u, u_input.c.x, 49062u, 70349u), vec4<bool>(false, true, true, false)))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), min(_wgslsmith_mult_vec2_u32(u_input.c.xx, u_input.c.zy), vec2<u32>(58433u, 34469u) | u_input.c.yx))), Struct_1(abs(arg_0), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_0, arg_0, arg_0), vec4<u32>(arg_0, 4294967295u, u_input.c.x, u_input.b)), arg_0, ~4294967295u, 13956u), ~(_wgslsmith_mult_u32(arg_0, u_input.c.x) >> (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u))), u_input.c);
                let var_3 = arg_1.ywy;
                var var_4 = func_8(u_input.c, arg_1.x, Struct_2(1053.0, func_8(vec3<u32>(~arg_0, _wgslsmith_div_u32(arg_0, arg_0), 4294967295u), var_3.x, Struct_2(func_8(vec3<u32>(70746u, arg_0, var_2.d.b.x), 299.0, Struct_2(-909.0, u_input.c.xx, var_2.c, var_2.c, vec3<u32>(arg_0, 0u, var_2.c.a))).c, ~vec2<u32>(arg_0, 0u), Struct_1(0u, var_2.c.b, 67367u), Struct_1(arg_0, var_2.c.b, var_2.d.b.x), var_2.c.b.yxz ^ vec3<u32>(4294967295u, 39115u, arg_0))).a.a, var_2.d, Struct_1(~u_input.c.x, (var_2.c.b << (var_2.d.b % vec4<u32>(32u))) & ~vec4<u32>(24753u, arg_0, arg_0, arg_0), _wgslsmith_dot_vec4_u32(var_2.d.b, var_2.c.b)), func_5())).a;
                let var_5 = Struct_4(Struct_3(~(vec2<u32>(1u, 1u) | vec2<u32>(var_2.e.x, u_input.b))), !func_4(var_1.x, select(!vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true | false), false).x, _wgslsmith_f_op_f32(max(var_2.a, -2759.0)));
                return select(_wgslsmith_sub_vec4_i32(vec4<i32>(-39006, -25831, select(u_input.a, u_input.a, !true), _wgslsmith_add_i32(reverseBits(-50938), _wgslsmith_div_i32(36398, -31161))), reverseBits(reverseBits(vec4<i32>(u_input.e.x, u_input.e.x, 0, u_input.a)) ^ u_input.e)), -u_input.e, var_5.b);
            }
            default: {
                var var_2 = ~vec4<u32>(abs(_wgslsmith_mult_u32(~0u, arg_0)), arg_0, max(~(0u | arg_0), _wgslsmith_add_u32(22004u & u_input.b, 1u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 87734u, 1u), vec3<u32>(arg_0, 0u, 5585u))) & u_input.c.x);
                var var_3 = abs(vec2<i32>(abs(-_wgslsmith_add_i32(0, -2147483648)), -14766));
                var_2 = vec4<u32>(~reverseBits(_wgslsmith_mult_u32(var_2.x, 73035u)), countOneBits(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_0, arg_0, var_2.x, 1u)), ~vec4<u32>(62678u, var_2.x, 19184u, 59405u)) << (1u % 32u)), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(select(arg_0, var_2.x, false), reverseBits(4294967295u)), u_input.c.x), 62061u);
            }
        }
        var var_2 = func_8(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(u_input.b, arg_0, _wgslsmith_mod_u32(u_input.b, u_input.c.x))), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1129.0), 1000.0))), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_2(var_1.x, u_input.c.yz, Struct_1(62268u, vec4<u32>(1u, u_input.b, 1u, 4294967295u), arg_0), Struct_1(69728u, vec4<u32>(u_input.b, u_input.c.x, arg_0, u_input.c.x), 0u), u_input.c), _wgslsmith_f_op_vec4_f32(floor(arg_1)), min(u_input.d.x, u_input.a))))), vec2<u32>(~(85707u | arg_0), _wgslsmith_mod_u32(0u, func_5().x)), Struct_1(21667u, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 101797u, 4294967295u, 43301u), vec4<u32>(u_input.b, arg_0, 4294967295u, 1u)) ^ vec4<u32>(arg_0, 4294967295u, 4294967295u, arg_0), firstTrailingBit(_wgslsmith_mod_u32(1u, 1u))), Struct_1(max(_wgslsmith_mult_u32(arg_0, u_input.c.x), select(17244u, 8472u, false)), abs(vec4<u32>(0u, arg_0, u_input.c.x, 1u) >> (vec4<u32>(4294967295u, arg_0, u_input.b, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_mod_u32(firstTrailingBit(21433u), countOneBits(0u))), _wgslsmith_mult_vec3_u32(u_input.c, (vec3<u32>(0u, u_input.b, arg_0) << (u_input.c % vec3<u32>(32u))) & u_input.c))).a;
    }
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(arg_1.wzw, vec3<f32>(-2037.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 + 747.0) - -261.0), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.x, arg_1.x), arg_1.x, u_input.a != 13724))))));
    return u_input.e;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-818.0)), _wgslsmith_f_op_f32(-1079.0)) * _wgslsmith_f_op_f32(-291.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -892.0) - -1000.0)))));
    var_0 = _wgslsmith_div_f32(608.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480.0))));
    var var_1 = func_10(u_input.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1775.0)), _wgslsmith_div_f32(_wgslsmith_div_f32(890.0, 308.0), _wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(156.0)) + -179.0), 1031.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(257.0, _wgslsmith_f_op_f32(func_3(Struct_2(620.0, vec2<u32>(1u, u_input.b), Struct_1(u_input.b, vec4<u32>(u_input.b, 55296u, u_input.b, u_input.b), u_input.b), Struct_1(14800u, vec4<u32>(u_input.c.x, u_input.c.x, 10481u, u_input.c.x), 0u), vec3<u32>(0u, 22504u, u_input.c.x)), vec4<f32>(620.0, -1695.0, 1304.0, -1652.0), 0)), _wgslsmith_f_op_f32(-755.0 * -109.0), _wgslsmith_f_op_f32(func_3(Struct_2(-1809.0, vec2<u32>(1u, u_input.b), Struct_1(u_input.b, vec4<u32>(18097u, u_input.c.x, u_input.c.x, 4294967295u), u_input.c.x), Struct_1(1u, vec4<u32>(4294967295u, 2445u, u_input.b, 4294967295u), 10232u), u_input.c), vec4<f32>(379.0, -724.0, 1895.0, -408.0), arg_1))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1263.0, -532.0, 343.0, -110.0)))));
    return Struct_2(_wgslsmith_f_op_f32(abs(-1650.0)), u_input.c.xz, Struct_1(10091u, vec4<u32>(u_input.c.x, u_input.c.x, ~_wgslsmith_mult_u32(9844u, u_input.c.x), u_input.c.x), u_input.c.x & 36663u), Struct_1(firstLeadingBit(u_input.b), select(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 23614u), vec4<u32>(53502u, u_input.b, u_input.b, u_input.c.x)), !arg_0) & ~(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 7813u) >> (vec4<u32>(u_input.b, u_input.b, 4812u, 32539u) % vec4<u32>(32u))), _wgslsmith_mod_u32(9677u, func_8(vec3<u32>(4294967295u, u_input.b, u_input.b), 238.0, Struct_2(-220.0, u_input.c.xx, Struct_1(0u, vec4<u32>(71580u, 48646u, u_input.c.x, 4294967295u), u_input.b), Struct_1(u_input.c.x, vec4<u32>(95743u, u_input.b, u_input.b, u_input.b), 21309u), u_input.c)).a.a.x) << (u_input.b % 32u)), _wgslsmith_mult_vec3_u32(u_input.c, firstTrailingBit(vec3<u32>(u_input.b, 0u, 1u) & ~u_input.c)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = func_2(false | !false, _wgslsmith_dot_vec4_i32(u_input.e, select(firstTrailingBit(u_input.e) & vec4<i32>(2147483647, 2147483647, u_input.d.x, u_input.e.x), _wgslsmith_mod_vec4_i32(abs(u_input.e), _wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, 37497, u_input.d.x, -48906))), (1068.0 <= -1000.0) == !true)));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(max(reverseBits(0), 0), ~34806), ~(-(~u_input.a))) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, _wgslsmith_sub_i32(~1, u_input.e.x)), abs(u_input.e.xz));
    let var_2 = vec2<bool>(var_1 & var_1, var_1 && false);
    var var_3 = abs(vec2<u32>(_wgslsmith_div_u32(var_0.d.c, _wgslsmith_mod_u32(26566u, 103124u) ^ ~90399u), _wgslsmith_mod_u32(arg_0.x, ~(~u_input.b))));
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        switch (-2147483648) {
            case 31945: {
                let var_4 = true;
                let var_5 = var_0;
            }
            default: {
                break;
            }
        }
    }
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-484.0, _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(648.0 * 187.0), vec2<u32>(109328u, 0u), Struct_1(var_3.x, vec4<u32>(var_0.c.a, arg_1.b.x, 4294967295u, 0u), 0u), var_0.c, arg_1.b.yxw), vec4<f32>(831.0, _wgslsmith_f_op_f32(f32(-1.0) * -425.0), _wgslsmith_div_f32(var_0.a, var_0.a), var_0.a), -max(u_input.d.x, -10997)))), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, ~1u <= ~u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-200.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1937.0)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169.0 - -201.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(259.0)) * _wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.c.x, 22307u, u_input.b, 0u), Struct_1(12789u, vec4<u32>(1u, 0u, 67514u, 25278u), 6158u)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000.0, -465.0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(870.0, -1000.0) + vec2<f32>(845.0, 2020.0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-171.0, 232.0) - vec2<f32>(-1289.0, 716.0)))))));
    for (var var_2: i32; var_2 < -1; var_2 -= 1) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        return;
    }
    switch (12861) {
        default: {
            switch (~(-317)) {
                case -1: {
                    var_0 = !vec3<bool>(all(vec3<bool>(var_0.x, !false, false != false)), !func_7(Struct_3(u_input.c.zx), Struct_1(4294967295u, vec4<u32>(2153u, u_input.c.x, 41545u, 464u), u_input.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-983.0, var_1.x, -753.0, var_1.x))), ~u_input.e.xyx).x, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1064.0 * var_1.x)), !(!vec3<bool>(var_0.x, var_0.x, false)), any(func_4(-211.0, vec3<bool>(var_0.x, var_0.x, var_0.x), true).xz)).x);
                    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1408.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1424.0 - var_1.x)))), var_1.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, -1440.0)), _wgslsmith_f_op_f32(var_1.x * 333.0), -1000.0))));
                    var var_3 = vec4<i32>(-1) * -vec4<i32>(u_input.d.x, -53155, ~(u_input.e.x ^ u_input.d.x), select(select(24964, 8935, var_0.x), countOneBits(64029), true));
                    var var_4 = !vec4<bool>(false && var_0.x, var_0.x, !var_0.x, !func_4(_wgslsmith_f_op_f32(-var_1.x), vec3<bool>(true, true, true), !var_0.x).x);
                }
                case -37651: {
                    var var_2 = func_8(func_5(), var_1.x, func_2(var_0.x, u_input.e.x));
                    var var_3 = u_input.c;
                    let var_4 = func_8(_wgslsmith_clamp_vec3_u32(~(~(u_input.c >> (vec3<u32>(4294967295u, var_3.x, 40099u) % vec3<u32>(32u)))), ~u_input.c, vec3<u32>(0u, 0u, u_input.c.x)), 362.0, Struct_2(_wgslsmith_f_op_f32(-708.0), ~var_2.a.a, func_2(~var_3.x <= var_2.a.a.x, _wgslsmith_mod_i32(15537, _wgslsmith_sub_i32(-45518, u_input.a))).d, Struct_1(u_input.b, countOneBits(vec4<u32>(var_2.a.a.x, var_2.a.a.x, 11914u, 0u) & vec4<u32>(var_3.x, u_input.c.x, 94207u, 37051u)), ~u_input.b ^ (u_input.c.x << (var_2.a.a.x % 32u))), vec3<u32>(max(~u_input.c.x, select(109468u, 4762u, var_2.b)), 8069u, _wgslsmith_dot_vec4_u32(~vec4<u32>(74602u, 26861u, u_input.c.x, var_3.x), ~vec4<u32>(53813u, var_2.a.a.x, u_input.c.x, u_input.c.x))))).a;
                    var var_5 = !(!vec2<bool>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, var_2.a.a.x, var_3.x)) != 0u, false));
                    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1746.0)), _wgslsmith_f_op_f32(max(-121.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1606.0 - -601.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c))), var_0.x)))), _wgslsmith_f_op_f32(ceil(-803.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_2.c));
                }
                case 8504: {
                    var var_2 = var_1.x;
                    var_2 = var_1.x;
                    var var_3 = -u_input.a;
                }
                default: {
                    var_0 = func_7(func_8(u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(func_2(true, u_input.e.x), _wgslsmith_div_u32(u_input.c.x, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -290.0) * var_1.x)), func_2(var_0.x, u_input.a)).a, Struct_1(_wgslsmith_div_u32(~(~u_input.c.x), u_input.c.x ^ ~u_input.c.x), vec4<u32>(~1u, ~func_5().x, 44572u, u_input.b), u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_div_f32(738.0, var_1.x), 1156.0), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(786.0, var_1.x, var_1.x, 1000.0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -858.0, var_1.x, var_1.x), vec4<f32>(var_1.x, 1000.0, var_1.x, var_1.x))))), !(!var_0.x)))), u_input.e.zyz | (u_input.e.yyy >> (min(vec3<u32>(75333u, 0u, u_input.c.x), u_input.c) % vec3<u32>(32u))));
                    let var_2 = u_input.a ^ u_input.a;
                    var var_3 = i32(-1) * -max(var_2 ^ (var_2 << (u_input.c.x % 32u)), u_input.d.x);
                    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(938.0, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(max(var_1.x, var_1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -680.0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(165.0, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -303.0, var_1.x)))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(round(var_1.x)), 1000.0))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -830.0), _wgslsmith_f_op_f32(var_1.x + 1107.0), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 504.0, var_1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, 209.0, var_1.x), vec3<f32>(var_1.x, -1235.0, var_1.x)))), var_0.x)))));
                }
            }
            if ((-(~firstTrailingBit(u_input.a)) > (~61420 | countOneBits(i32(-1) * -21894))) == var_0.x) {
            }
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                let var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-942.0 - var_1.x), func_2(true, u_input.d.x).a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(852.0)) - _wgslsmith_f_op_f32(-var_1.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-955.0))), ~68788).c;
                break;
            }
        }
    }
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(u_input.b, 22711u), 1u), countOneBits(~vec2<u32>(u_input.c.x, u_input.b))), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.xy >> (vec2<u32>(44555u, u_input.b) % vec2<u32>(32u)), u_input.c.zx, vec2<u32>(u_input.c.x, 36969u)), vec2<u32>(u_input.c.x, 7178u)), abs(vec2<u32>(u_input.b, min(54742u, 24888u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_mult_vec3_i32(func_10(1u, vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -492.0, _wgslsmith_f_op_f32(204.0 * 855.0), -241.0)).yxx, min(countOneBits(vec3<i32>(u_input.a, u_input.e.x, -37505)) & u_input.e.xwx, u_input.e.xww)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1845.0, 167.0, 632.0) * vec4<f32>(-725.0, 1657.0, 831.0, 337.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1063.0, var_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2030.0, var_1.x, -443.0, var_1.x)) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-653.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-518.0, var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, 380.0))), _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 45917u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, var_2.x)), func_2(var_0.x, u_input.a).c)))));
}

