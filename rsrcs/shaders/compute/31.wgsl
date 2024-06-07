// {"0:0":[173,31,246,247,154,116,126,223,56,108,173,2,81,197,88,218,100,114,126,21,238,115,90,133,39,173,161,198,43,226,138,213,93,39,47,44,75,48,247,100,12,159,75,220,69,194,77,4]}
// Seed: 13556141677459058887

struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1539.0, -1064.0, -1254.0);

var<private> LOOP_COUNTERS: array<u32, 29>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_6(arg_0: u32) -> u32 {
    if (!(!all(vec4<bool>(all(vec2<bool>(false, false)), true & true, all(vec3<bool>(true, false, true)), false && true)))) {
        var var_0 = vec4<u32>(~(~min(arg_0, arg_0)) & _wgslsmith_mod_u32(arg_0, 68755u), u_input.c.x | (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 0u) << (~4294967295u % 32u)), ~(~(~4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, arg_0, arg_0), vec4<u32>(1u, 4294967295u, arg_0, arg_0)))), firstLeadingBit(select(_wgslsmith_mod_u32(4294967295u, 0u), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, u_input.c.x)), all(vec2<bool>(false, false))) ^ _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(92151u, 1u)))));
        global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-323.0, global0.x, global0.x))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), global0.x, _wgslsmith_f_op_f32(step(global0.x, 1520.0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1202.0, global0.x) + vec3<f32>(-399.0, global0.x, global0.x))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), true && false))), vec3<f32>(_wgslsmith_f_op_f32(311.0 + -1000.0), _wgslsmith_f_op_f32(-879.0), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_div_f32(global0.x, -123.0), true)))));
        if (!(all(select(vec4<bool>(false, true, false, false), !vec4<bool>(false, false, false, true), !false)) | true)) {
            var var_1 = !all(select(vec2<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, true, true))), !vec2<bool>(true, false), select(all(vec4<bool>(true, false, true, true)), !false, !true)));
        }
        loop {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            let var_1 = u_input.d;
            break;
        }
    }
    switch (_wgslsmith_dot_vec3_i32(u_input.b, u_input.b)) {
        case -68610: {
            for (var var_0 = -2147483648; ; ) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                continue;
            }
            global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(915.0, global0.x, 564.0))))) * vec3<f32>(global0.x, global0.x, global0.x))));
            switch (-u_input.a) {
                case -2147483648: {
                    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1390.0, _wgslsmith_f_op_f32(abs(-246.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -713.0))), 500.0, global0.x)));
                    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-258.0 + _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-178.0, -188.0, -1225.0)))));
                    var var_0 = ~reverseBits(vec3<u32>(~firstLeadingBit(37087u), 1u, ~_wgslsmith_add_u32(31683u, u_input.c.x)));
                    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(global0.zz))));
                    let var_2 = Struct_1(~(~countOneBits(u_input.c)), -1);
                }
                case 1: {
                    var var_0 = !(!false);
                    let var_1 = -66946;
                }
                case -9608: {
                }
                case 2147483647: {
                    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(459.0, -878.0)))))), global0.x);
                    let var_0 = ~50620u;
                    var var_1 = _wgslsmith_clamp_u32(countOneBits(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_add_u32(var_0 ^ var_0, arg_0))), 5355u, 0u);
                    var_1 = var_0;
                    var var_2 = u_input.b.yz | firstLeadingBit(u_input.b.yy);
                }
                default: {
                }
            }
        }
        case 25364: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                continue;
            }
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var var_0 = 1;
            }
            for (; !(!(any(vec3<bool>(true, false, true)) || false)); ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                continue;
            }
            let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1659.0 - 575.0) * global0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0.zy + global0.yx), _wgslsmith_f_op_vec2_f32(global0.xz * vec2<f32>(global0.x, global0.x)))), global0.xy, !vec2<bool>(false, false))), all(vec3<bool>(false, false && false, 461.0 < -1826.0))))));
            let var_1 = Struct_1(u_input.c, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, u_input.a), u_input.b.xy));
        }
        default: {
            let var_0 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(countOneBits(4294967295u | arg_0), _wgslsmith_clamp_u32(firstLeadingBit(0u), firstTrailingBit(1u), ~arg_0), u_input.c.x), select(select(firstLeadingBit(arg_0), _wgslsmith_add_u32(0u, 1179u), !true), ~(~4294967295u), (0u | arg_0) != 6576u)), select(~u_input.b.x, firstTrailingBit(-11126), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)) && (any(vec4<bool>(true, false, false, true)) & !false)));
            var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2303.0 - global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1014.0 + 1179.0) + 1761.0), _wgslsmith_div_f32(124.0, 1453.0), -884.0) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1793.0, global0.x, 328.0) * vec4<f32>(global0.x, -1115.0, 117.0, global0.x)))))));
            let var_2 = Struct_1(vec2<u32>(arg_0, u_input.c.x), ~countOneBits(countOneBits(_wgslsmith_clamp_i32(var_0.b, var_0.b, u_input.a))));
        }
    }
    if (all(vec3<bool>(!(!true), true, _wgslsmith_div_f32(-619.0, -527.0) < -306.0)) & any(vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), true, !(false || false)))) {
    }
    var var_0 = -vec3<i32>(u_input.a | ~0, ~(~2147483647) << (~(~arg_0) % 32u), -21755 << (~_wgslsmith_sub_u32(u_input.c.x, 2992u) % 32u));
    if (any(vec4<bool>(true & all(vec4<bool>(false, false, false, true)), any(!vec4<bool>(true, true, false, true)), !(!all(vec2<bool>(false, true))), false))) {
    }
    return 4294967295u;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3) -> bool {
    let var_0 = u_input.c;
    var var_1 = -183.0;
    let var_2 = abs(vec4<u32>(~_wgslsmith_add_u32(func_6(1u), u_input.c.x), 1u, _wgslsmith_sub_u32(5660u, ~(4294967295u | 51422u)), ~(~4294967295u)));
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        switch (~(~abs(22346) | ~arg_0.x)) {
            case -23842: {
                let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1094.0, global0.x, -979.0, 1348.0), vec4<f32>(-159.0, global0.x, -1000.0, 486.0), arg_1.a.x)))))))));
                var var_4 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-8804, arg_0.x, -21161), reverseBits(vec3<i32>(arg_0.x, -2147483648, arg_0.x))), -arg_0.x), 1, reverseBits(select(-2147483648, u_input.d, true))), Struct_1(vec2<u32>(~max(92431u, var_0.x), _wgslsmith_mult_u32(u_input.c.x << (u_input.c.x % 32u), ~var_2.x)), -2225), Struct_1(var_2.yw, 1), var_2.wx);
            }
            case 12224: {
            }
            default: {
                let var_3 = Struct_3(!select(select(arg_1.a, arg_1.a, !arg_1.a), select(arg_1.a, select(arg_1.a, arg_1.a, arg_1.a), select(vec3<bool>(arg_1.a.x, false, true), arg_1.a, arg_1.a.x)), arg_1.a));
                var var_4 = u_input.c.x >= 0u;
                break;
            }
        }
        var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1194.0, global0.x), 116.0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(855.0, global0.x)))), global0.xy), arg_1.a.x));
    }
    global0 = vec3<f32>(-1486.0, _wgslsmith_f_op_f32(global0.x - 585.0), global0.x);
    return 1u > 54035u;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> Struct_3 {
    switch (-arg_0) {
        case 11219: {
            switch (~(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(arg_1.x, -29388, 8034, 2147483647)), ~(-27409) ^ ~arg_1.x))) {
                case -1: {
                    let var_0 = Struct_3(select(vec3<bool>(false, true, !func_5(u_input.b.zz, Struct_3(vec3<bool>(true, false, false)))), vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)), select(global0.x == global0.x, global0.x <= 636.0, false != false), all(!vec2<bool>(true, true))), all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))));
                    return Struct_3(vec3<bool>(false, false, any(var_0.a)));
                }
                case -40492: {
                    let var_0 = vec3<u32>(0u, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x ^ ~_wgslsmith_mod_u32(u_input.c.x, 8908u), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(26992u, 4294967295u, u_input.c.x)), vec3<u32>(countOneBits(u_input.c.x), u_input.c.x, 0u))), 4294967295u);
                    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(653.0)))))), global0.x, -717.0);
                    let var_1 = !(global0.x == _wgslsmith_f_op_f32(2516.0 + global0.x));
                    let var_2 = select(select(vec2<bool>(!false, var_1), select(select(select(vec2<bool>(var_1, true), vec2<bool>(true, var_1), var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(true, true), vec2<bool>(false, var_1)), !true), !select(vec2<bool>(false, false), vec2<bool>(true, var_1), vec2<bool>(true, var_1)), var_1), func_5(-vec2<i32>(u_input.d, 2147483647), Struct_3(select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(false, false, var_1))))), select(select(vec2<bool>(false, all(vec2<bool>(var_1, var_1))), !(!vec2<bool>(true, true)), !(-2147483648 <= -34246)), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(any(select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), var_1)), var_1)), var_1);
                    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1249.0, global0.x, global0.x), vec3<f32>(global0.x, -2162.0, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(911.0, global0.x, -1233.0))) + vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x * 921.0), _wgslsmith_f_op_f32(-global0.x))))));
                }
                default: {
                    var var_0 = Struct_3(select(!select(vec3<bool>(true, false, true), !vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), func_5(~vec2<i32>(arg_1.x, arg_0), Struct_3(vec3<bool>(true, false, true))), !false), vec3<bool>((true && false) || (1 <= 2147483647), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true)), select(false | true, u_input.a >= 2147483647, !true))));
                    var var_1 = Struct_3(select(select(vec3<bool>(func_5(vec2<i32>(arg_0, -7272), Struct_3(var_0.a)), !var_0.a.x, var_0.a.x), var_0.a, var_0.a), !vec3<bool>(!var_0.a.x, false || true, !var_0.a.x), var_0.a.x));
                    var_0 = Struct_3(var_0.a);
                    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1612.0, global0.x, global0.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(219.0, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(-2235.0, global0.x, -1396.0)))))));
                    let var_2 = false;
                }
            }
        }
        case 13750: {
            let var_0 = u_input.c.x;
        }
        case 0: {
            return Struct_3(vec3<bool>(!(!false), !false, true));
        }
        case -2147483648: {
            switch (-abs(arg_0)) {
                default: {
                    let var_0 = select(select(vec4<bool>(func_5(~arg_1.xx, Struct_3(vec3<bool>(true, true, true))), !true | (global0.x <= 667.0), true, all(vec2<bool>(false, false))), select(select(vec4<bool>(false, true, false, true), !vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, !true, all(vec3<bool>(false, true, false)), !false)), vec4<bool>(false, all(!vec2<bool>(true, true)), false | func_5(arg_1.xy, Struct_3(vec3<bool>(true, false, false))), !any(vec3<bool>(false, false, false)))), select(!vec4<bool>(any(vec2<bool>(true, true)), !false, !false, 7867u <= 32752u), select(select(vec4<bool>(false, false, true, true), !vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true && true, false, false, false), all(!vec4<bool>(false, false, true, false))), vec4<bool>(!func_5(u_input.b.xx, Struct_3(vec3<bool>(true, false, false))), false, false, true)), !(!(!(!false))));
                    var var_1 = !(!vec2<bool>(var_0.x, !(var_0.x & var_0.x)));
                    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -_wgslsmith_dot_vec3_i32(~arg_1.zww, vec3<i32>(-2147483648, -17401, 66363))), arg_1.yx);
                    var_1 = !var_0.xz;
                    var var_3 = Struct_3(var_0.yyy);
                }
            }
            var var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(reverseBits(51881u), u_input.c.x, 1u & _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), ((countOneBits(vec3<u32>(u_input.c.x, 0u, 27191u)) | ~vec3<u32>(1u, 4294967295u, 30673u)) | (vec3<u32>(4294967295u, u_input.c.x, 13947u) ^ ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))) >> (vec3<u32>(u_input.c.x, 1u, min(~u_input.c.x, ~u_input.c.x)) % vec3<u32>(32u)));
        }
        default: {
            global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(686.0, 150.0, global0.x) - vec3<f32>(-2537.0, global0.x, -1252.0))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(-1028.0, 641.0, 298.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(429.0, -572.0, -1423.0) - vec3<f32>(-1000.0, 871.0, global0.x))))));
            let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-global0.x))), 852.0), -1228.0));
            if (false) {
                let var_1 = Struct_3(select(!vec3<bool>(true, !true, select(false, false, true)), !select(!vec3<bool>(false, true, true), vec3<bool>(false, false, true), !vec3<bool>(false, false, false)), select(vec3<bool>(all(vec4<bool>(false, true, true, false)), true, false), vec3<bool>(all(vec2<bool>(true, false)), false, any(vec4<bool>(true, false, false, false))), !any(vec2<bool>(true, false)))));
                return var_1;
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1015.0, var_0, 1000.0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1282.0, 117.0) - vec3<f32>(var_0, var_0, -452.0)) + vec3<f32>(664.0, global0.x, global0.x))))))));
                continue;
            }
            var var_1 = !(!true) || func_5(vec2<i32>(arg_0, _wgslsmith_add_i32(-u_input.b.x, -arg_0)), Struct_3(!(!vec3<bool>(false, true, true))));
        }
    }
    let var_0 = abs(vec2<u32>(_wgslsmith_div_u32(countOneBits(u_input.c.x), 4294967295u) >> (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c)) % 32u), 78293u));
    switch (-39508) {
        case -2128: {
            return Struct_3(vec3<bool>(!false, any(select(!vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), !vec3<bool>(true, false, true))), select(!func_5(vec2<i32>(arg_0, arg_0), Struct_3(vec3<bool>(true, false, false))), true, _wgslsmith_div_f32(global0.x, -1267.0) >= global0.x)));
        }
        case 16547: {
            global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1346.0, -509.0, global0.x) * vec3<f32>(global0.x, global0.x, -970.0)) - vec3<f32>(global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, -131.0, global0.x)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 1107.0, global0.x))))))));
        }
        case 34174: {
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(751.0, global0.x, 1435.0) - vec3<f32>(940.0, global0.x, global0.x))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 2230.0, 1000.0), vec3<f32>(308.0, 1201.0, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_div_f32(-791.0, global0.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2452.0, 127.0, global0.x)) - vec3<f32>(-653.0, global0.x, 2538.0)))))));
                global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(global0.x)), -519.0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 205.0, -833.0))))));
            }
            global0 = vec3<f32>(_wgslsmith_div_f32(804.0, _wgslsmith_f_op_f32(floor(1007.0))), -267.0, _wgslsmith_f_op_f32(abs(global0.x)));
            var var_1 = !(!(_wgslsmith_add_i32(arg_0 >> (0u % 32u), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(0, 1, arg_1.x))) > (u_input.d << (_wgslsmith_div_u32(97306u, u_input.c.x) % 32u))));
            let var_2 = Struct_2(_wgslsmith_add_vec3_i32(-select(arg_1.zwz, vec3<i32>(1, arg_0, 4248), !false), u_input.b & u_input.b), Struct_1(~max(vec2<u32>(59402u, 68622u), vec2<u32>(27425u, var_0.x)) ^ countOneBits(select(vec2<u32>(u_input.c.x, 51428u), var_0, vec2<bool>(true, false))), 20488), Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(79788u, 20460u), var_0) | (u_input.c ^ vec2<u32>(55809u, var_0.x)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 28733u), u_input.c), vec2<u32>(var_0.x, var_0.x), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), 3069), var_0);
        }
        default: {
            switch (arg_1.x) {
                case 3902: {
                    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 416.0, -1451.0))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, global0.x))), vec3<f32>(global0.x, global0.x, global0.x)))));
                    var var_1 = Struct_1(vec2<u32>(func_6(~(34540u << (u_input.c.x % 32u))), ~((u_input.c.x | 1u) >> (var_0.x % 32u))), firstTrailingBit(u_input.d));
                    let var_2 = abs(_wgslsmith_div_i32(~(~u_input.d), u_input.a)) == (i32(-1) * -36349);
                    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(703.0 * global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x)))));
                    let var_3 = arg_1.wz;
                }
                case 7853: {
                }
                case -6177: {
                    var var_1 = Struct_2(u_input.b, Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, var_0.x, 7055u), vec4<u32>(var_0.x, u_input.c.x, u_input.c.x, 1u) | vec4<u32>(u_input.c.x, 4294967295u, var_0.x, u_input.c.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 1u), vec3<u32>(31522u, var_0.x, 1u))), 0), Struct_1(vec2<u32>(u_input.c.x, ~var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(2147483647), arg_0, ~(-26853), 0), arg_1)), vec2<u32>(u_input.c.x, u_input.c.x));
                }
                case 1: {
                    let var_1 = 0 | _wgslsmith_div_i32(arg_1.x, 0);
                    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(747.0, global0.x, 325.0) + vec3<f32>(global0.x, -1198.0, global0.x)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1055.0, 515.0, 1531.0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1296.0, global0.x) + vec3<f32>(252.0, global0.x, -628.0)))))));
                    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-480.0, global0.x), _wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -932.0), _wgslsmith_f_op_f32(-1000.0 + 339.0), false)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(sign(1174.0)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-152.0)), -835.0)));
                }
                default: {
                }
            }
        }
    }
    var var_1 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(select(_wgslsmith_add_i32(-45791, arg_0), -2101, all(vec3<bool>(true, false, true))), abs(_wgslsmith_mod_i32(-52564, arg_0)), ~1 << (~var_0.x % 32u)), select(select(vec3<i32>(0, arg_0, arg_0) << (vec3<u32>(4294967295u, 37098u, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(arg_1.x, u_input.a, 1), !false), select(vec3<i32>(2147483647, -11062, -3752), u_input.b, false), vec3<bool>(false, func_5(vec2<i32>(arg_0, 2147483647), Struct_3(vec3<bool>(false, true, false))), true))), Struct_1(vec2<u32>(u_input.c.x, var_0.x), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483648, arg_1.x, arg_0), vec3<i32>(u_input.a, 39506, 66660)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -53715, -25268), arg_1.xyw)))), Struct_1(~countOneBits(var_0), 1), _wgslsmith_add_vec2_u32(select(~var_0, vec2<u32>(u_input.c.x, 1u) << (var_0 % vec2<u32>(32u)), !vec2<bool>(false, false)) ^ firstLeadingBit(firstTrailingBit(vec2<u32>(u_input.c.x, 51987u))), u_input.c));
    let var_2 = global0.x;
    return Struct_3(select(select(select(vec3<bool>(false, true, false), !vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), !vec3<bool>(true, true, true), vec3<bool>(false, false, true)), false), vec3<bool>(any(!vec4<bool>(false, false, true, true)), false && false, false & false), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), !vec3<bool>(false, false, false), u_input.c.x <= 18091u)));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = ~(reverseBits(~firstLeadingBit(vec3<u32>(arg_0.a.x, 18596u, 54028u))) << ((min(~vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(arg_1.d.x, arg_1.b.a.x, u_input.c.x)) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.c.x, 41654u), vec3<u32>(arg_0.a.x, 0u, 3454u))) % vec3<u32>(32u)));
    var_0 = firstTrailingBit(~(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, arg_1.d.x), vec3<u32>(14733u, 22680u, u_input.c.x)), firstTrailingBit(vec3<u32>(arg_0.a.x, 36830u, 4294967295u)))));
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            break;
        }
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            let var_1 = Struct_3(!vec3<bool>(!false, true, !arg_2.a.x));
            var_0 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c.x, arg_0.a.x, var_0.x), select(vec3<u32>(46557u, 0u, u_input.c.x) >> (vec3<u32>(arg_0.a.x, var_0.x, u_input.c.x) % vec3<u32>(32u)), select(vec3<u32>(arg_0.a.x, 5864u, 62732u), vec3<u32>(70223u, arg_0.a.x, arg_1.c.a.x), arg_2.a.x), func_5(vec2<i32>(-34267, 40194), arg_2)), vec3<u32>(22072u, 1u, ~61648u))), vec3<u32>(1u, arg_1.d.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.x, abs(67631u)), var_0.x)));
            var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1840.0, global0.x) + vec3<f32>(global0.x, global0.x, 319.0))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1592.0, global0.x, 1000.0)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-394.0), _wgslsmith_f_op_f32(global0.x + -703.0))), _wgslsmith_f_op_f32(-611.0), 893.0)));
        }
        continue;
    }
    let var_1 = arg_1.a.x;
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        break;
    }
    return arg_1.a;
}

fn func_8(arg_0: Struct_2) -> Struct_3 {
    for (var var_0: i32; ; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        }
        let var_1 = arg_0.c;
        var var_2 = arg_0;
        var_2 = arg_0;
        switch (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.b, ~_wgslsmith_div_i32(-1, 3461), -max(1, -1), _wgslsmith_sub_i32(var_1.b, -2147483648) >> (_wgslsmith_div_u32(4832u, 1u) % 32u)), max(max(vec4<i32>(1, var_2.c.b, 10823, arg_0.a.x), vec4<i32>(u_input.a, var_1.b, var_2.b.b, 0)) << (vec4<u32>(3892u, 39337u, var_1.a.x, 4294967295u) % vec4<u32>(32u)), ~(-vec4<i32>(2147483647, -2147483648, -1, arg_0.c.b)))) ^ 2147483647) {
            default: {
                let var_3 = Struct_1(vec2<u32>(7570u, 105944u >> (0u % 32u)), ~var_1.b);
                var var_4 = ~_wgslsmith_dot_vec2_i32(-(vec2<i32>(2147483647, u_input.b.x) | _wgslsmith_div_vec2_i32(vec2<i32>(var_3.b, 0), u_input.b.xy)), arg_0.a.yx);
                continue;
            }
        }
    }
    for (var var_0 = -1584; ; var_0 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        var var_1 = ~_wgslsmith_add_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483648, 2147483647, u_input.d, -9147) | vec4<i32>(arg_0.a.x, 68381, -1, 2147483647), countOneBits(vec4<i32>(u_input.b.x, -18722, u_input.a, arg_0.c.b)))), _wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647, 35242, u_input.b.x, u_input.b.x), vec4<i32>(36057, -2147483648, -24081, -19711)), vec4<i32>(~(-1), _wgslsmith_dot_vec3_i32(vec3<i32>(-8371, arg_0.b.b, 1), vec3<i32>(u_input.d, -2147483648, u_input.a)), _wgslsmith_add_i32(arg_0.a.x, 4598), i32(-1) * -16498)));
        let var_2 = 841.0;
    }
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1342.0, 248.0, 1483.0, -931.0))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(1698.0 * 513.0))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1715.0, global0.x, _wgslsmith_f_op_f32(floor(-1000.0)), _wgslsmith_f_op_f32(-1000.0 * global0.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-560.0, global0.x, global0.x, global0.x), vec4<f32>(-520.0, 263.0, -1078.0, global0.x)), vec4<f32>(850.0, global0.x, 1000.0, 596.0))))))));
    let var_1 = Struct_3(!select(vec3<bool>(!true, u_input.c.x < u_input.c.x, false), select(!vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), !vec3<bool>(false, true, false)), any(vec2<bool>(false, false)) == (u_input.d < arg_0.b.b)));
    var var_2 = 1u;
    return Struct_3(var_1.a);
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_sub_u32(18804u, 32003u), u_input.c.x), countOneBits(0u));
    switch (max(-9752, _wgslsmith_div_i32(-52407, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mult_i32(u_input.d, -u_input.b.x))))) {
        case -54056: {
            var var_1 = func_8(Struct_2(func_7(Struct_1(max(u_input.c, vec2<u32>(34391u, u_input.c.x)), _wgslsmith_div_i32(2147483647, 1)), Struct_2(~u_input.b, Struct_1(vec2<u32>(0u, u_input.c.x), 21985), Struct_1(u_input.c, 50800), ~u_input.c), func_4(~(-20543), vec4<i32>(-7889, 1, u_input.b.x, u_input.b.x) >> (vec4<u32>(var_0, 18944u, var_0, 0u) % vec4<u32>(32u)))), Struct_1(vec2<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, 62563u), 1u), u_input.a), Struct_1(u_input.c, min(-14155, 54608 | -1)), _wgslsmith_div_vec2_u32(u_input.c, u_input.c | _wgslsmith_mod_vec2_u32(u_input.c, u_input.c))));
            global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -854.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510.0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x))), global0.x)));
        }
        default: {
            var var_1 = Struct_3(!vec3<bool>(!false, !(u_input.d == u_input.b.x), func_4(u_input.a, vec4<i32>(u_input.b.x, u_input.a, -24196, 2147483647)).a.x));
            var_1 = func_8(Struct_2(~(u_input.b ^ vec3<i32>(u_input.d, 0, u_input.d)), Struct_1(~vec2<u32>(33883u, 4294967295u), firstTrailingBit(u_input.a)), Struct_1(vec2<u32>(~58320u, ~u_input.c.x), u_input.a), u_input.c));
            var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1379.0, global0.x), global0.zy) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.yz, _wgslsmith_f_op_vec2_f32(global0.yy + global0.yy), vec2<bool>(!var_1.a.x, any(vec4<bool>(true, false, true, false))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.x)), 1027.0), vec2<f32>(-267.0, global0.x)))));
            switch (u_input.d) {
                case -4097: {
                    var var_3 = -(~u_input.b);
                }
                case 2147483647: {
                    return select(vec2<bool>(!(!(-1926 == -1)), var_1.a.x), !func_4(u_input.d, max(vec4<i32>(u_input.a, u_input.d, -17996, -1), ~vec4<i32>(22499, -1, -16507, 1))).a.yx, vec2<bool>(var_1.a.x, var_1.a.x));
                }
                case -27191: {
                    let var_3 = u_input.b.x;
                    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(326.0, 1594.0, -1952.0), vec3<f32>(-825.0, -751.0, 2131.0))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, global0.x, global0.x), vec3<f32>(var_2.x, global0.x, -1521.0), var_1.a.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, var_2.x, global0.x)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-570.0, 251.0, var_2.x)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1645.0, -268.0, var_2.x))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1734.0, var_2.x, var_2.x))) * vec3<f32>(global0.x, var_2.x, global0.x))))));
                }
                case -2147483648: {
                    let var_3 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c, ~u_input.c) ^ vec2<u32>(6351u, u_input.c.x), u_input.c), ~(~u_input.c));
                }
                default: {
                    let var_3 = Struct_3(var_1.a);
                    var var_4 = Struct_2(_wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.b, ~vec3<i32>(2147483647, -1, u_input.b.x)), ~(~func_7(Struct_1(vec2<u32>(u_input.c.x, 4294967295u), u_input.d), Struct_2(vec3<i32>(-1, -2147483648, 47384), Struct_1(vec2<u32>(0u, u_input.c.x), u_input.d), Struct_1(u_input.c, -7415), u_input.c), Struct_3(var_1.a)))), Struct_1(u_input.c, select(u_input.d, 0, var_1.a.x)), Struct_1(vec2<u32>(~var_0, firstLeadingBit(1u)) | u_input.c, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.b.x), -vec4<i32>(u_input.d, u_input.a, u_input.b.x, 24009))), u_input.c);
                }
            }
        }
    }
    for (; func_4(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647, 74186), _wgslsmith_div_i32(~u_input.a, -2147483648)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -88047, u_input.a, u_input.d), vec4<i32>(u_input.b.x, -2147483648, 29982, 10695)), reverseBits(vec4<i32>(3298, 1, u_input.d, u_input.a))), vec4<i32>(-22985, i32(-1) * -5019, 40003 >> (8394u % 32u), u_input.b.x)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, u_input.b.x, u_input.d, u_input.d)), ~vec4<i32>(u_input.b.x, 1, -31350, -1), vec4<i32>(~u_input.a, u_input.b.x, -44063, ~u_input.d)))).a.x; ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var var_1 = vec3<u32>(4294967295u, u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, ~4294967295u), ~(~0u)), ~var_0));
        var var_2 = vec4<u32>(~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(4294967295u, 2904u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 68282u, 0u))), vec2<u32>(1u, u_input.c.x) & _wgslsmith_mult_vec2_u32(u_input.c, var_1.xy)) | _wgslsmith_mod_u32(123286u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 55987u) | vec3<u32>(4294967295u, var_0, 1u), reverseBits(vec3<u32>(var_0, var_1.x, var_0)))), _wgslsmith_mult_u32(firstTrailingBit(28352u), _wgslsmith_sub_u32(~(u_input.c.x << (u_input.c.x % 32u)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_0), vec3<u32>(var_1.x, var_0, var_0))))), ~abs(_wgslsmith_sub_u32(func_6(var_0), u_input.c.x)));
    }
    var var_1 = func_4(-1, -_wgslsmith_mod_vec4_i32(vec4<i32>(-1) * -vec4<i32>(u_input.d, u_input.d, u_input.a, u_input.d), vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.a, 31602), _wgslsmith_div_i32(u_input.d, -55699), u_input.a))).a.yy;
    for (var var_2 = 1; var_2 <= 24174; global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000.0, 1000.0)))), global0.x, _wgslsmith_f_op_f32(sign(-1677.0))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1000.0, global0.x) - vec3<f32>(global0.x, 149.0, 183.0)))))), _wgslsmith_f_op_f32(-275.0) >= _wgslsmith_f_op_f32(-1478.0 + _wgslsmith_f_op_f32(global0.x + -783.0)))))) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        for (var var_3 = _wgslsmith_add_i32(~21330, u_input.b.x); func_4(~2147483647, vec4<i32>(~1, u_input.b.x, i32(-1) * -(i32(-1) * -1306), ~(~select(-1, u_input.a, var_1.x)))).a.x; var_3 -= 1) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            var_3 = func_7(Struct_1(_wgslsmith_add_vec2_u32(u_input.c, _wgslsmith_div_vec2_u32(vec2<u32>(29801u, 53780u), u_input.c | vec2<u32>(41330u, 1248u))), -1317), Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.d) << (vec3<u32>(1u, var_0, 29638u) % vec3<u32>(32u)), min(u_input.b, vec3<i32>(0, 48712, 20315))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), u_input.b, vec3<i32>(u_input.a, 0, u_input.b.x))), Struct_1(~(u_input.c ^ vec2<u32>(u_input.c.x, 0u)), u_input.b.x), Struct_1(u_input.c, ~(-2147483648)), u_input.c), func_8(Struct_2(abs(vec3<i32>(u_input.b.x, u_input.b.x, -1)), Struct_1(abs(vec2<u32>(u_input.c.x, var_0)), ~u_input.d), Struct_1(vec2<u32>(var_0, 4294967295u), _wgslsmith_clamp_i32(u_input.a, u_input.b.x, u_input.a)), select(vec2<u32>(40586u, 57484u), u_input.c, vec2<bool>(false, var_1.x))))).x;
            let var_4 = Struct_1(vec2<u32>(~var_0, 4294967295u), -1);
            continue;
        }
        var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, i32(-1) * -21437), select(~u_input.b.zx, vec2<i32>(-14011, u_input.a), var_1.x));
        var_1 = func_8(Struct_2(firstLeadingBit(max(u_input.b, vec3<i32>(27540, 2147483647, -2147483648))), Struct_1(vec2<u32>(0u, var_0), max(countOneBits(u_input.b.x), -u_input.d)), Struct_1(vec2<u32>(u_input.c.x, var_0 >> (0u % 32u)), _wgslsmith_mult_i32(-2147483648, max(u_input.d, u_input.a))), u_input.c)).a.xz;
        break;
    }
    return select(!vec2<bool>(-4873 > max(u_input.b.x, 2147483647), !func_5(vec2<i32>(u_input.b.x, u_input.d), Struct_3(vec3<bool>(var_1.x, var_1.x, var_1.x)))), vec2<bool>(!true, var_1.x), !(!(!func_4(0, vec4<i32>(u_input.b.x, -32900, 9915, u_input.b.x)).a.zy)));
}

fn func_9(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = abs(_wgslsmith_div_vec3_u32(select(arg_0 | arg_0, arg_0, any(vec4<bool>(false, true, false, arg_1.x))), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.x, var_0.x, u_input.c.x), ~arg_0))) << (arg_0 % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, 1000.0, 1467.0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1053.0, -295.0)))))));
    for (var var_1 = u_input.b.x; var_1 == 0; global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(174.0, global0.x)), global0.x, _wgslsmith_f_op_f32(sign(global0.x))))))))) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        let var_2 = arg_1;
    }
    return Struct_1(arg_0.yy, 55389);
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(-122.0)), 887.0, true)), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)));
    for (var var_1 = -57745; ; ) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        if (select(!(!(select(false, false, false) | (false || false))), true != (u_input.c.x > firstTrailingBit(u_input.c.x & u_input.c.x)), !(u_input.b.x > (-1 & -14574)) || true)) {
        }
        loop {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            var var_2 = func_9(reverseBits(~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 60767u)))), select(func_3(), func_8(Struct_2(vec3<i32>(u_input.d, -16559, 2147483647) >> (vec3<u32>(129838u, 0u, 0u) % vec3<u32>(32u)), Struct_1(u_input.c, -28913), Struct_1(u_input.c, 49504), vec2<u32>(0u, u_input.c.x))).a.xz, select(var_0.x >= _wgslsmith_f_op_f32(-global0.x), true, any(!vec2<bool>(false, false)))));
            var var_3 = 6618;
        }
        if (_wgslsmith_add_i32(u_input.a | abs(-37852), -u_input.a) != -(~(~_wgslsmith_div_i32(u_input.a, 14331)))) {
            var_1 = _wgslsmith_div_i32(~_wgslsmith_mult_i32(63982 ^ 1864, u_input.a), u_input.d) ^ func_7(func_9(abs(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), !(!vec2<bool>(true, true))), Struct_2(func_7(Struct_1(vec2<u32>(1u, u_input.c.x), -2147483648), Struct_2(u_input.b, Struct_1(u_input.c, -2147483648), Struct_1(vec2<u32>(1124u, u_input.c.x), u_input.b.x), u_input.c), Struct_3(vec3<bool>(true, true, false))), Struct_1(select(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(true, false)), u_input.a), Struct_1(u_input.c, 18795), vec2<u32>(u_input.c.x, countOneBits(4294967295u))), Struct_3(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))).x;
            global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(var_0.zxx))));
        }
    }
    var var_1 = vec4<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)) | any(vec4<bool>(true && true, true && false, true, select(false, false, true))), true, func_8(Struct_2(~u_input.b, func_9(vec3<u32>(u_input.c.x, 27459u, u_input.c.x), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, 10231u), 2147483647), vec2<u32>(u_input.c.x, 1u))).a.x || false, func_4(47288, select(vec4<i32>(~u_input.d, -2147483648, u_input.a & u_input.b.x, u_input.d & 20359), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 5166, -2147483648, 2147483647), select(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -50739), vec4<i32>(42230, 11466, -1, u_input.b.x), vec4<bool>(true, false, true, false))), func_3().x)).a.x);
    let var_2 = func_8(Struct_2(vec3<i32>(1, u_input.d & ~3199, ~(~38030)), Struct_1(u_input.c, _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(u_input.a, u_input.b.x))), Struct_1(~vec2<u32>(u_input.c.x, 4294967295u), ~13727), ~u_input.c));
    switch (u_input.d) {
        default: {
            switch (countOneBits(u_input.d) & u_input.a) {
                case -8908: {
                    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.ywx + vec3<f32>(470.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(346.0))))), _wgslsmith_div_vec3_f32(var_0.yyy, _wgslsmith_f_op_vec3_f32(exp2(var_0.ywx))), !(!var_2.a.x)));
                    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(-1271.0)), 645.0, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504.0 + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x * 357.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 947.0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000.0, 1451.0) - _wgslsmith_f_op_f32(abs(global0.x)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.x, global0.x, global0.x) + vec4<f32>(var_0.x, 1335.0, var_0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-605.0, 833.0, var_0.x, global0.x)))))));
                }
                default: {
                    let var_3 = -1;
                }
            }
            global0 = var_0.xyw;
            let var_3 = var_2.a.yx;
            if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) > _wgslsmith_f_op_f32(136.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))) {
                var var_4 = var_2;
                var_4 = func_8(Struct_2(vec3<i32>(u_input.a, abs(u_input.b.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.d), -1 >> (u_input.c.x % 32u))), Struct_1(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c.x), _wgslsmith_mod_u32(1u, 2472u)), u_input.a), Struct_1(~countOneBits(u_input.c), 2147483647), reverseBits(u_input.c)));
                let var_5 = !vec3<bool>(any(func_8(Struct_2(vec3<i32>(u_input.a, u_input.b.x, 0), Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), -2147483648), Struct_1(u_input.c, u_input.b.x), u_input.c)).a), true, true);
                let var_6 = min(~41309, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-47278, u_input.a, u_input.d, u_input.b.x) >> (countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, 62317u, 0u)) % vec4<u32>(32u))), vec4<i32>(max(~u_input.a, u_input.d), -11919, -190, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d, u_input.a)), u_input.b.xz))));
                let var_7 = var_4.a.x;
            }
            switch (39913) {
                default: {
                    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), var_0.x, global0.x, global0.x)) * vec4<f32>(966.0, var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(873.0, var_0.x)) * _wgslsmith_f_op_f32(step(-694.0, 667.0))))));
                    let var_4 = 823.0;
                    var_1 = !(!select(vec4<bool>(!var_2.a.x, var_2.a.x == var_3.x, false, u_input.d <= u_input.b.x), !vec4<bool>(var_3.x, true, var_3.x, true), select(!vec4<bool>(false, false, false, var_3.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, var_2.a.x, var_2.a.x), false), u_input.c.x == 50342u)));
                    var_1 = !(!select(vec4<bool>(!false, 17914u < u_input.c.x, all(vec2<bool>(var_1.x, var_2.a.x)), func_8(Struct_2(u_input.b, Struct_1(vec2<u32>(4294967295u, 4294967295u), 37677), Struct_1(vec2<u32>(27331u, 4294967295u), 0), vec2<u32>(59949u, 1u))).a.x), vec4<bool>(var_3.x, true, true, any(vec2<bool>(var_3.x, var_2.a.x))), select(var_3.x, true, var_1.x)));
                    var var_5 = var_2;
                }
            }
        }
    }
    return vec2<bool>(false, false);
}

fn func_10(arg_0: vec4<i32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = vec4<i32>(~(~u_input.b.x) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 52544u) & abs(u_input.c.x), countOneBits(u_input.c.x) ^ ~4294967295u) % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 20255, arg_0.x, u_input.a), arg_0) | (43203 >> (0u % 32u)), arg_0.x), _wgslsmith_add_i32(u_input.b.x, 37854)), reverseBits(7273), -2147483648);
    var var_1 = func_8(Struct_2(vec3<i32>(_wgslsmith_clamp_i32(arg_0.x, _wgslsmith_mult_i32(1, 630), u_input.b.x << (u_input.c.x % 32u)), 22693, ~2147483647), func_9(_wgslsmith_add_vec3_u32(vec3<u32>(26191u, 4294967295u, 4294967295u), ~vec3<u32>(51696u, 55338u, 1u)), vec2<bool>(any(vec3<bool>(arg_1.x, arg_1.x, true)), arg_1.x | false)), func_9((vec3<u32>(u_input.c.x, u_input.c.x, 41407u) ^ vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) & ~vec3<u32>(u_input.c.x, 1u, 1u), func_4(func_7(Struct_1(vec2<u32>(4294967295u, 33238u), 7779), Struct_2(u_input.b, Struct_1(vec2<u32>(0u, u_input.c.x), 0), Struct_1(vec2<u32>(34135u, u_input.c.x), var_0.x), u_input.c), Struct_3(vec3<bool>(false, arg_1.x, arg_1.x))).x, vec4<i32>(32681, -13892, -38185, arg_0.x)).a.zx), ~reverseBits(select(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(4294967295u, u_input.c.x), vec2<bool>(true, arg_1.x))))).a;
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        continue;
    }
    var_0 = vec4<i32>(u_input.d, 26980, 0, max(_wgslsmith_sub_i32(max(arg_0.x, u_input.b.x), 2147483647) & u_input.a, var_0.x));
    var var_2 = vec2<f32>(1603.0, global0.x);
    return _wgslsmith_f_op_f32(-670.0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0) * _wgslsmith_f_op_f32(-global0.x)), global0.x)))));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        var var_0 = max(i32(-1) * -1, u_input.d);
        global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(450.0, 1116.0, global0.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(1013.0 + global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -359.0) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1162.0), _wgslsmith_f_op_f32(trunc(-595.0))))))));
    }
    var var_0 = u_input.b;
    global0 = vec3<f32>(-1094.0, _wgslsmith_f_op_f32(ceil(-1104.0)), _wgslsmith_f_op_f32(func_10((vec4<i32>(var_0.x, 2147483647, -874, 18416) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(7286u, 17244u, 51598u, 4294967295u), vec4<u32>(u_input.c.x, 44856u, arg_0, 26353u)) % vec4<u32>(32u))) << (~(~vec4<u32>(arg_0, arg_0, u_input.c.x, 15263u)) % vec4<u32>(32u)), select(select(!vec2<bool>(true, true), !vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !func_2(), vec2<bool>(func_8(Struct_2(vec3<i32>(1, 2147483647, var_0.x), Struct_1(vec2<u32>(arg_0, 52191u), 1), Struct_1(vec2<u32>(4294967295u, 1u), u_input.a), vec2<u32>(53061u, u_input.c.x))).a.x, !false)))));
    for (var var_1: i32; !any(vec4<bool>(!(arg_0 < 1u), !select(true, false, true), !(!true), u_input.b.x < 30070)); var_1 -= 1) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
    }
    if (true) {
        switch ((u_input.b.x | (-(var_0.x << (u_input.c.x % 32u)) >> (((4294967295u << (arg_0 % 32u)) >> (~u_input.c.x % 32u)) % 32u))) & -978) {
            default: {
                var var_1 = func_9(vec3<u32>(arg_0, arg_0, arg_0 >> ((4588u & u_input.c.x) % 32u)) >> (vec3<u32>(countOneBits(_wgslsmith_clamp_u32(u_input.c.x, arg_0, arg_0)), 32977u, min(~31284u, u_input.c.x)) % vec3<u32>(32u)), vec2<bool>(all(vec3<bool>(true || false, !true, global0.x >= 140.0)), !false));
                var var_2 = Struct_3(!select(!(!vec3<bool>(false, false, false)), vec3<bool>(!false, 1133.0 < global0.x, !true), _wgslsmith_f_op_f32(sign(1000.0)) != global0.x));
                let var_3 = ((vec3<i32>(_wgslsmith_mod_i32(var_1.b, var_1.b), abs(1), ~var_0.x) << (reverseBits(vec3<u32>(1u, u_input.c.x, var_1.a.x)) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0, arg_0, u_input.c.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, var_1.a.x, arg_0), vec3<u32>(1u, 8884u, 7383u))) % vec3<u32>(32u))) ^ abs(u_input.b);
            }
        }
        loop {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            continue;
        }
        let var_1 = Struct_2(u_input.b, Struct_1(_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(39194u, 40749u), u_input.c), _wgslsmith_mult_vec2_u32(u_input.c ^ vec2<u32>(u_input.c.x, arg_0), u_input.c)), u_input.d & _wgslsmith_add_i32(-1, _wgslsmith_div_i32(var_0.x, -2147483648))), Struct_1(vec2<u32>(func_6(1u) & arg_0, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, arg_0, 0u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, u_input.c.x, u_input.c.x, arg_0), vec4<u32>(arg_0, 1u, u_input.c.x, 1u)))), var_0.x), select(~((vec2<u32>(31097u, arg_0) | vec2<u32>(77145u, u_input.c.x)) ^ u_input.c), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(2991u, 4294967295u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c), func_2().x), select(vec2<bool>(false, !false), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), func_8(Struct_2(vec3<i32>(var_0.x, u_input.d, u_input.a), Struct_1(u_input.c, var_0.x), Struct_1(u_input.c, 1), vec2<u32>(0u, u_input.c.x))).a.xz)));
        global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1000.0)) - -777.0) * global0.x), 1027.0, _wgslsmith_div_f32(1167.0, _wgslsmith_f_op_f32(-global0.x)));
    }
    return _wgslsmith_div_vec3_u32(~(~vec3<u32>(abs(arg_0), ~125586u, 54965u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(max(select(vec3<u32>(41477u, arg_0, 0u), vec3<u32>(1u, u_input.c.x, u_input.c.x), false), vec3<u32>(29749u, 46521u, arg_0)), vec3<u32>(firstLeadingBit(arg_0), u_input.c.x, func_6(u_input.c.x))), vec3<u32>(~u_input.c.x, arg_0, ~arg_0)));
}

fn func_11(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(342.0, arg_2.x))));
    var var_1 = arg_1.x;
    return Struct_1(vec2<u32>(u_input.c.x, ~arg_1.x), 2147483647);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_11(Struct_3(!(!(!vec3<bool>(false, true, false)))), (reverseBits(countOneBits(vec3<u32>(u_input.c.x, 1u, 1u))) & (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) << (~vec3<u32>(0u, u_input.c.x, 4294967295u) % vec3<u32>(32u)))) ^ max(func_1(_wgslsmith_mod_u32(u_input.c.x, 27891u)), min(reverseBits(vec3<u32>(8872u, 32377u, 13627u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 37196u), vec3<u32>(u_input.c.x, u_input.c.x, 54169u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_10(~vec4<i32>(u_input.a, 1, u_input.b.x, u_input.b.x), !vec2<bool>(false, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + global0.x)))), -353.0, global0.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-667.0, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -871.0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-433.0, 214.0, -890.0))))), vec3<bool>(func_11(Struct_3(vec3<bool>(false, true, false)), vec3<u32>(u_input.c.x, var_0.a.x, 72383u), vec3<f32>(-147.0, -1000.0, global0.x)).a.x == 99895u, any(!vec3<bool>(false, true, false)), !true)))));
    if (!(!(!true | true)) | func_4(u_input.d, vec4<i32>(firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, -1)), min(_wgslsmith_sub_i32(u_input.a, 1), -63235), 23159, ~var_0.b)).a.x) {
        switch (u_input.a) {
            case 1: {
                var var_2 = func_3();
                global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1036.0)), _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), -1032.0, _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-325.0, global0.x, 1708.0) * vec3<f32>(184.0, global0.x, -432.0))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x, _wgslsmith_f_op_f32(max(1168.0, var_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-432.0, global0.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-512.0, global0.x, 754.0), vec3<f32>(-690.0, var_1.x, var_1.x), true)))))));
                return;
            }
            default: {
                let var_2 = Struct_3(vec3<bool>(false, !(true || false), (_wgslsmith_sub_u32(4294967295u, u_input.c.x) == _wgslsmith_div_u32(var_0.a.x, 72325u)) | any(vec3<bool>(true, true, true))));
                var var_3 = Struct_2(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), func_11(func_8(Struct_2(u_input.b, func_9(vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x), var_2.a.yz), func_9(vec3<u32>(var_0.a.x, u_input.c.x, 84882u), var_2.a.zz), ~vec2<u32>(21304u, var_0.a.x))), func_1(23918u), vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-1419.0 * 409.0)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * global0.x))), var_0, firstLeadingBit(var_0.a) >> (vec2<u32>(min(~var_0.a.x, 50496u << (25894u % 32u)), _wgslsmith_sub_u32(~u_input.c.x, 23631u)) % vec2<u32>(32u)));
                let var_4 = var_3.a;
                let var_5 = Struct_1(u_input.c, _wgslsmith_dot_vec4_i32(-(max(vec4<i32>(47527, var_0.b, 2147483647, 1), vec4<i32>(var_4.x, -8495, u_input.a, -5737)) | ~vec4<i32>(u_input.d, 1, 44693, 17073)), ~countOneBits(vec4<i32>(u_input.a, var_4.x, -8231, -2147483648))));
                global0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-943.0)), global0.x)));
            }
        }
        for (var var_2 = -323; ; var_2 += 1) {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            let var_3 = firstTrailingBit(i32(-1) * -u_input.a);
            var var_4 = any(vec2<bool>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1, 5803, 2147483647), var_3) < 0, func_2().x));
            var var_5 = ~_wgslsmith_mod_u32(9118u, func_11(func_4(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.d, u_input.a, var_0.b)), _wgslsmith_add_vec4_i32(vec4<i32>(9481, 22724, u_input.a, 0), vec4<i32>(44242, 2147483647, 0, var_0.b))), ~(~vec3<u32>(u_input.c.x, 4294967295u, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-565.0, var_1.x, 498.0), vec3<f32>(global0.x, -165.0, var_1.x)))).a.x);
            let var_6 = vec2<i32>(var_0.b, ~(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(2147483647, 21279)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.x, 12020u, 4294967295u), vec4<u32>(var_0.a.x, 0u, 1u, u_input.c.x)) % 32u))) & abs(u_input.b.yy);
        }
        for (var var_2: i32; ; global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(round(369.0)), -140.0)), vec3<f32>(_wgslsmith_f_op_f32(floor(850.0)), var_1.x, -501.0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(378.0, global0.x, var_1.x), vec3<bool>(false, true, true))), vec3<f32>(global0.x, var_1.x, -937.0))))))) {
            if (LOOP_COUNTERS[26u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            break;
        }
        let var_2 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))))));
    }
    for (var var_2 = 4381; var_2 > 1; var_2 += 1) {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
        let var_3 = vec2<i32>(i32(-1) * -(-4516 << (var_0.a.x % 32u)), _wgslsmith_add_i32(min(var_0.b, ~u_input.b.x), func_9(vec3<u32>(var_0.a.x, u_input.c.x, 6479u) | vec3<u32>(54269u, u_input.c.x, u_input.c.x), !vec2<bool>(true, false)).b)) | (-vec2<i32>(-u_input.d, u_input.d << (4294967295u % 32u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(max(var_0.a.x, u_input.c.x), 4294967295u), min(abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(var_0.a.x, var_0.a.x) >> (vec2<u32>(var_0.a.x, u_input.c.x) % vec2<u32>(32u)))) % vec2<u32>(32u)));
        if (all(vec4<bool>(false, !true, true, select(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), (var_0.a.x & 53963u) >= _wgslsmith_mod_u32(var_0.a.x, u_input.c.x), !false != (false | false))))) {
            break;
        }
        for (var var_4 = 25617; ; var_4 -= 1) {
            if (LOOP_COUNTERS[28u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            var var_5 = !(!all(func_4(_wgslsmith_mult_i32(var_3.x, 12248), max(vec4<i32>(var_0.b, 1, 11053, 1123), vec4<i32>(var_3.x, 43601, var_0.b, var_3.x))).a));
            continue;
        }
        switch (~select(-4403, _wgslsmith_div_i32(u_input.a ^ -1, _wgslsmith_mult_i32(var_3.x, _wgslsmith_sub_i32(var_0.b, var_3.x))), !(!false))) {
            case 15628: {
                var var_4 = (func_6(17874u) | func_1(var_0.a.x).x) & func_9(vec3<u32>(~4294967295u, u_input.c.x, 55274u), func_3()).a.x;
                var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(964.0 + 699.0), var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, var_1.x, global0.x) * vec3<f32>(-954.0, global0.x, 565.0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, var_1.x, var_1.x) * vec3<f32>(global0.x, global0.x, -332.0)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-242.0, 542.0, -1519.0), vec3<f32>(var_1.x, -1313.0, 153.0), vec3<bool>(true, false, false)))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-global0.x), 481.0), !true)));
                var var_5 = Struct_2(reverseBits(vec3<i32>(-1, ~abs(var_0.b), countOneBits(-u_input.b.x))), Struct_1(~abs(u_input.c) ^ u_input.c, -1 | 1), func_11(Struct_3(func_4(var_0.b, vec4<i32>(40393, 962, 1365, 1)).a), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, 19969u, u_input.c.x), ~vec3<u32>(u_input.c.x, 86075u, 66950u)) >> ((~vec3<u32>(var_0.a.x, 4294967295u, 1u) << ((vec3<u32>(12266u, u_input.c.x, 1u) & vec3<u32>(var_0.a.x, u_input.c.x, var_0.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), global0.x), vec3<f32>(_wgslsmith_f_op_f32(-1447.0), var_1.x, global0.x), any(!vec3<bool>(false, false, false))))), var_0.a);
                let var_6 = func_9(func_1(~func_11(func_8(Struct_2(vec3<i32>(0, var_3.x, 0), Struct_1(vec2<u32>(u_input.c.x, var_5.b.a.x), var_0.b), var_0, vec2<u32>(26u, 42552u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 56835u, 1u), vec3<u32>(var_0.a.x, 4294967295u, u_input.c.x), vec3<u32>(var_0.a.x, 7539u, 27032u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -627.0, global0.x) * vec3<f32>(var_1.x, 713.0, global0.x))).a.x), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, !(true == false)), func_3().x));
            }
            case 17687: {
                var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(159.0, var_1.x, var_1.x), vec3<f32>(var_1.x, 505.0, 380.0))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, global0.x, var_1.x))), vec3<bool>(func_4(-1, vec4<i32>(var_0.b, 2147483647, var_0.b, var_3.x)).a.x, all(vec4<bool>(false, true, false, true)), !false)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, -1000.0) * vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1.0) * -451.0), _wgslsmith_f_op_f32(max(-508.0, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -270.0, 401.0), vec3<f32>(1000.0, -813.0, -1398.0))))));
                var_2 = ~(-3499);
                var var_4 = vec2<bool>(false, false);
                var_2 = abs(_wgslsmith_add_i32(var_3.x, _wgslsmith_mult_i32(-var_3.x, ~(-9178 & 2147483647))));
            }
            case -1: {
            }
            case -2147483648: {
                let var_4 = abs(-u_input.b);
                var var_5 = func_11(Struct_3(vec3<bool>(func_8(Struct_2(vec3<i32>(var_0.b, -2147483648, var_3.x), var_0, Struct_1(u_input.c, 2147483647), u_input.c)).a.x, func_3().x, (false == false) | (false == true))), vec3<u32>(_wgslsmith_add_u32(32162u, 103691u), ~var_0.a.x & _wgslsmith_sub_u32(0u, 64259u), min(var_0.a.x, _wgslsmith_add_u32(39284u, 4294967295u))) ^ _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, u_input.c.x, var_0.a.x), vec3<u32>(0u, 17497u, u_input.c.x)), vec3<u32>(max(1u, u_input.c.x), func_6(33878u), 1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, global0.x, -1000.0), vec3<f32>(var_1.x, var_1.x, -1349.0))), _wgslsmith_div_vec3_f32(vec3<f32>(1000.0, var_1.x, var_1.x), vec3<f32>(-1225.0, global0.x, 319.0)), func_8(Struct_2(vec3<i32>(var_4.x, var_0.b, var_4.x), var_0, Struct_1(vec2<u32>(0u, u_input.c.x), var_3.x), vec2<u32>(u_input.c.x, var_0.a.x))).a)) - vec3<f32>(183.0, -2053.0, 1681.0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-203.0, -309.0, 216.0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * vec3<f32>(1151.0, global0.x, -1140.0))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(980.0, global0.x, var_1.x) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, 432.0), vec3<f32>(var_1.x, global0.x, -1000.0))))), vec3<bool>(u_input.b.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, var_4.x, var_0.b, var_3.x), vec4<i32>(u_input.d, u_input.a, u_input.b.x, 100)), var_3.x == 3957, -104.0 >= global0.x))));
                continue;
            }
            default: {
                var_2 = var_0.b;
                var var_4 = Struct_2(abs(u_input.b), var_0, Struct_1(vec2<u32>(783u, ~0u) << (var_0.a % vec2<u32>(32u)), -abs(u_input.b.x) ^ u_input.b.x), abs(vec2<u32>(var_0.a.x, 4294967295u >> (4294967295u % 32u)) >> (vec2<u32>(~9061u, _wgslsmith_mult_u32(62945u, var_0.a.x)) % vec2<u32>(32u))));
            }
        }
        return;
    }
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(global0.x * global0.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.x)), -417.0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -848.0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(454.0, 1000.0, var_1.x) - vec3<f32>(-1000.0, -263.0, -880.0))))));
    switch (~var_0.b & -2147483648) {
        case 1: {
        }
        default: {
            global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -188.0)))))));
            var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 136.0, global0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, global0.x, -1347.0)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, var_1.x, -965.0) * vec3<f32>(1000.0, 166.0, -1545.0)), vec3<f32>(-1951.0, var_1.x, global0.x)))), vec3<f32>(709.0, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x))));
            switch (-(abs(~(-var_0.b)) << (var_0.a.x % 32u))) {
                case 24454: {
                    var var_2 = Struct_3(!vec3<bool>((94292u > var_0.a.x) != !true, !all(vec4<bool>(true, true, true, false)), u_input.d < firstLeadingBit(-2147483648)));
                }
                default: {
                }
            }
            return;
        }
    }
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global0.x, global0.x))))) + vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1307.0, var_2) + vec2<f32>(var_2, global0.x)), vec2<f32>(_wgslsmith_f_op_f32(select(-971.0, -1330.0, false)), _wgslsmith_div_f32(var_2, -263.0)), any(vec3<bool>(false, false, false)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, -1000.0)), global0.yz, !false))))), ~(~(~(~var_0.a.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2, 907.0, 1431.0, -1000.0), vec4<f32>(-294.0, var_1.x, var_1.x, 680.0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1845.0, 497.0, 346.0, global0.x)), vec4<bool>(!false, func_2().x, !true, !false))))), 0);
}

