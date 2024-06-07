// {"0:0":[151,139,146,117,107,29,125,161,151,174,123,10,57,152,106,212]}
// Seed: 15915142199950559856

struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: f32 = -136.0;

var<private> LOOP_COUNTERS: array<u32, 23>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    global1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    global1 = -1420.0;
    switch (-(~_wgslsmith_div_i32(-2147483647, select(0, ~(-6160), true)))) {
        case 610: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                let var_0 = Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x))) * -1000.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2054.0, -950.0) * -1119.0)), -1058.0, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-848.0 - _wgslsmith_f_op_f32(arg_0.b.x + -450.0)))), arg_0.c, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 56285u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 5015u, arg_0.e.x), vec3<u32>(0u, u_input.a.x, arg_0.a.x), vec3<u32>(4294967295u, 4294967295u, arg_0.a.x))), 10u)], ~1u & _wgslsmith_div_u32(26818u, arg_0.e.x)) < ~(~global0[_wgslsmith_index_u32(~0u, 10u)]), vec4<u32>(~(~_wgslsmith_add_u32(arg_0.a.x, global0[_wgslsmith_index_u32(arg_1, 10u)])), global0[_wgslsmith_index_u32(reverseBits(~firstTrailingBit(u_input.a.x)), 10u)], 67191u, 4294967295u));
                global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(974.0, -530.0)) + arg_0.b.x);
                global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-443.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x * 1018.0), _wgslsmith_f_op_f32(arg_0.b.x - -1718.0)))))));
                let var_1 = Struct_1(abs(var_0.a), _wgslsmith_f_op_vec4_f32(-var_0.b), vec3<i32>(-15444, -(~19496), arg_0.c.x), any(!select(vec2<bool>(false, var_0.d), select(vec2<bool>(false, false), vec2<bool>(var_0.d, arg_0.d), vec2<bool>(arg_0.d, false)), arg_0.d)), ~(~var_0.a));
                var var_2 = 2147483647 ^ abs(-abs(-75954) | _wgslsmith_mod_i32(-8691, _wgslsmith_mod_i32(arg_0.c.x, -32039)));
            }
            var var_0 = arg_0.c.x;
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var var_1 = arg_0.e.x;
                break;
            }
            if (all(!(!select(!vec2<bool>(arg_0.d, false), !vec2<bool>(arg_0.d, arg_0.d), any(vec4<bool>(true, true, arg_0.d, arg_0.d)))))) {
                global0 = array<u32, 10>();
                let var_1 = Struct_1(u_input.a | vec4<u32>(0u, _wgslsmith_add_u32(arg_1, arg_1), 55050u, arg_1), _wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b), (firstTrailingBit(max(vec3<i32>(23288, 33223, -1), arg_0.c)) | firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-2800, -38917, arg_0.c.x), vec3<i32>(2147483647, arg_0.c.x, arg_0.c.x)))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(6270u, 10u)], arg_1), _wgslsmith_add_vec2_u32(vec2<u32>(25922u, 0u), vec2<u32>(1u, arg_1))), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.a.xz) << (arg_1 % 32u)) % vec3<u32>(32u)), any(!(!vec3<bool>(true, false, arg_0.d))) | (_wgslsmith_mult_u32(92154u, ~0u) != arg_1), u_input.a);
            }
        }
        case -46187: {
            switch (_wgslsmith_mod_i32(arg_0.c.x, -arg_0.c.x)) {
                case 2147483647: {
                    var var_0 = select(arg_0.c, vec3<i32>(51595, -firstTrailingBit(~0), arg_0.c.x), vec3<bool>(all(!vec3<bool>(arg_0.d, arg_0.d, arg_0.d)) == (~arg_0.c.x == select(arg_0.c.x, arg_0.c.x, true)), arg_0.d | any(vec4<bool>(true, false, false, false)), arg_0.d));
                    var var_1 = arg_0;
                }
                case 0: {
                    let var_0 = any(select(vec3<bool>(_wgslsmith_div_f32(1004.0, arg_0.b.x) < _wgslsmith_f_op_f32(max(arg_0.b.x, -1089.0)), arg_0.d, true), vec3<bool>(all(vec2<bool>(true, arg_0.d)), !any(vec4<bool>(true, false, true, arg_0.d)), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b.x - 616.0))) < -849.0));
                }
                default: {
                    let var_0 = arg_0;
                    let var_1 = 2147483647;
                    return _wgslsmith_f_op_vec4_f32(-arg_0.b);
                }
            }
            var var_0 = -26057;
            global1 = _wgslsmith_f_op_f32(max(-1378.0, _wgslsmith_f_op_f32(596.0 + _wgslsmith_f_op_f32(1917.0 * _wgslsmith_f_op_f32(-arg_0.b.x)))));
            global1 = _wgslsmith_f_op_f32(abs(arg_0.b.x));
        }
        case 0: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                global0 = array<u32, 10>();
                break;
            }
            global0 = array<u32, 10>();
            global0 = array<u32, 10>();
        }
        case 49139: {
            let var_0 = arg_0;
            global0 = array<u32, 10>();
            let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)))) + _wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), !true))), 728.0, _wgslsmith_f_op_f32(ceil(843.0)), arg_0.b.x);
        }
        default: {
            global0 = array<u32, 10>();
        }
    }
    global1 = _wgslsmith_f_op_f32(1438.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-243.0, 1938.0)), _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.x + 1049.0), 322.0))))));
    switch (-(~(~arg_0.c.x))) {
        case 2147483647: {
        }
        default: {
            var var_0 = _wgslsmith_sub_i32(arg_0.c.x, 17853);
            var var_1 = !(!select(!(!vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, arg_0.d, arg_0.d, false), arg_0.d), select(select(vec4<bool>(true, arg_0.d, arg_0.d, true), vec4<bool>(arg_0.d, arg_0.d, true, arg_0.d), false), !vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), !vec4<bool>(false, arg_0.d, false, arg_0.d))));
            global0 = array<u32, 10>();
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_2 = 13705u;
                var var_3 = all(!vec4<bool>(var_1.x | true, true, arg_0.d | true, true)) && select(arg_0.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81688u, 10u)], 10u)] < _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.e.x, arg_0.a.x, 36895u), u_input.a << (vec4<u32>(arg_0.a.x, var_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], arg_0.a.x) % vec4<u32>(32u))), arg_0.d || (arg_0.c.x >= _wgslsmith_dot_vec4_i32(vec4<i32>(0, 32249, 29386, -12810), vec4<i32>(0, arg_0.c.x, 0, 17715))));
                var_1 = !vec4<bool>(true, true, true, arg_0.d);
                let var_4 = Struct_1(select(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(arg_0.e, vec4<u32>(global0[_wgslsmith_index_u32(arg_1, 10u)], 14233u, 11692u, arg_1)), ~arg_0.e), arg_0.a, any(select(var_1.yy, vec2<bool>(arg_0.d, arg_0.d), var_1.zw))), arg_0.b, vec3<i32>(arg_0.c.x, 1 >> (max(1u & 39209u, ~4294967295u) % 32u), i32(-1) * -_wgslsmith_mult_i32(-5606, arg_0.c.x)), false, ~vec4<u32>(0u, ~u_input.a.x, abs(abs(arg_0.e.x)), 4294967295u));
                let var_5 = arg_0.c.zz;
            }
        }
    }
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1828.0)))), _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)))));
}

fn func_7(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = !vec3<bool>(all(vec2<bool>(0u > 4294967295u, any(vec3<bool>(true, false, true)))), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))) && true, true);
    var var_1 = Struct_1(reverseBits(vec4<u32>(~arg_0.x, max(u_input.a.x, 1u), arg_0.x, firstTrailingBit(0u)) & (_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0.x, 4294967295u, u_input.a.x), vec4<u32>(1u, 7373u, u_input.a.x, 631u)) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 7111u, 4294967295u, 69495u))), arg_2, _wgslsmith_mult_vec3_i32(vec3<i32>(-1) * -vec3<i32>(2147483647, 0, 27294), _wgslsmith_div_vec3_i32(vec3<i32>(-1, firstLeadingBit(2147483647), 10236), vec3<i32>(19138, -53698, i32(-1) * -1))), !all(!(!vec3<bool>(true, var_0.x, true))), u_input.a | vec4<u32>((74723u & 1u) << (_wgslsmith_mult_u32(51455u, 1u) % 32u), ~40808u | arg_0.x, abs(_wgslsmith_clamp_u32(1u, u_input.a.x, 0u)), global0[_wgslsmith_index_u32(select(4294967295u, u_input.a.x, false), 10u)] << ((0u & arg_0.x) % 32u)));
    global0 = array<u32, 10>();
    var_0 = !select(!(!vec3<bool>(true, var_0.x, true)), select(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_1.d, true), false), !select(vec3<bool>(false, true, var_1.d), vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(var_0.x, false, var_1.d)), !select(vec3<bool>(var_0.x, var_1.d, var_1.d), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_1.d, var_1.d, true))), true);
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(reverseBits(u_input.a.x) ^ 10648u, 10u)], 64717u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73732u, 10u)], 10u)], reverseBits(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)] << (1203u % 32u))), var_1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -826.0)), _wgslsmith_f_op_f32(-697.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1175.0)), 150.0)), _wgslsmith_add_vec3_i32(~(~vec3<i32>(0, var_1.c.x, var_1.c.x)), select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-58786, var_1.c.x, -1), vec3<i32>(-15230, var_1.c.x, var_1.c.x)), 95163, -var_1.c.x), -select(var_1.c, vec3<i32>(-2147483648, var_1.c.x, var_1.c.x), true), select(!vec3<bool>(var_1.d, true, false), vec3<bool>(var_0.x, false, false), var_1.c.x < -6680))), var_1.d, vec4<u32>(global0[_wgslsmith_index_u32(~45468u, 10u)], ~4294967295u, var_1.e.x, _wgslsmith_sub_u32(max(_wgslsmith_dot_vec3_u32(var_1.a.yxy, vec3<u32>(var_1.a.x, 4294967295u, u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 10u)], arg_0.x), u_input.a.zx)), arg_0.x)));
    return select(!select(!(!vec3<bool>(var_2.d, var_1.d, var_0.x)), select(vec3<bool>(var_2.d, var_2.d, true), !vec3<bool>(var_2.d, var_1.d, var_1.d), false), !all(vec3<bool>(var_0.x, true, true))), vec3<bool>(true, var_1.d & true, var_2.d), !all(select(vec3<bool>(var_2.d, true, true), select(vec3<bool>(true, var_2.d, var_0.x), vec3<bool>(false, var_2.d, false), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(var_2.d, false, var_2.d))));
}

fn func_5() -> bool {
    var var_0 = !(!select(func_7(vec2<u32>(global0[_wgslsmith_index_u32(13554u, 10u)], u_input.a.x), 1000.0, _wgslsmith_f_op_vec4_f32(func_6(Struct_1(u_input.a, vec4<f32>(1920.0, 456.0, 144.0, 383.0), vec3<i32>(8394, 2147483647, 57573), false, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17399u, 10u)], 10u)], global0[_wgslsmith_index_u32(26439u, 10u)], 4294967295u, 27211u)), u_input.a.x))), vec3<bool>(!true, -35339 == -2147483648, !false), any(!vec2<bool>(true, true))));
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    let var_1 = Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32((select(4294967295u, u_input.a.x, false) ^ u_input.a.x) | 33758u, 10u)], 10u)], ~abs(global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), 81645u, _wgslsmith_mult_u32(~(~51158u), u_input.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-159.0, -1779.0, 327.0, -1019.0))))), vec3<i32>(countOneBits(_wgslsmith_clamp_i32(0, -2147483647, i32(-1) * -52302)), _wgslsmith_dot_vec4_i32(~vec4<i32>(42447, -46241, 71359, -51607) >> (vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(46458u, 10u)], 4294967295u, 5708u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483648, -47917, -2147483648, 0), vec4<i32>(52717, 0, -1, 54545)), _wgslsmith_div_vec4_i32(vec4<i32>(-1, 0, 53374, 0), vec4<i32>(4166, 35513, 13668, -2147483648)))), firstTrailingBit(-35980 << (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 75908u), 10u)] % 32u))), true, select(~u_input.a, max(~max(u_input.a, u_input.a), ~select(vec4<u32>(22155u, 28990u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 93783u), vec4<u32>(93427u, global0[_wgslsmith_index_u32(29316u, 10u)], 36907u, u_input.a.x), vec4<bool>(false, true, false, var_0.x))), all(!(!var_0.zx))));
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            global0 = array<u32, 10>();
            let var_2 = ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(25016u, countOneBits(64806u)), ~(~u_input.a.x)), select(var_1.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(37967u, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(12990u, 10u)])) ^ 4294967295u, false));
        }
        var_0 = !(!(!(!vec3<bool>(var_1.d, var_1.d, false))));
    }
    let var_2 = Struct_1(countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.a.zzw, var_1.e.wyy), _wgslsmith_mult_u32(19292u, var_1.e.x), ~var_1.e.x, 4294967295u) ^ ~u_input.a), vec4<f32>(_wgslsmith_f_op_f32(1243.0 + _wgslsmith_f_op_f32(round(825.0))), var_1.b.x, _wgslsmith_f_op_f32(floor(-668.0)), _wgslsmith_f_op_f32(step(-680.0, -354.0))), ~var_1.c, !var_1.d, firstLeadingBit(u_input.a));
    return false;
}

fn func_4() -> i32 {
    for (; ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        break;
    }
    for (var var_0: i32; (!(1675.0 >= _wgslsmith_f_op_f32(f32(-1.0) * -704.0)) & (true || !all(vec2<bool>(true, true)))) == func_5(); var_0 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_1 = 4294967295u;
        break;
    }
    switch (12019) {
        case -2147483648: {
            global0 = array<u32, 10>();
            let var_0 = Struct_1(_wgslsmith_div_vec4_u32((vec4<u32>(4294967295u, u_input.a.x, 13852u, u_input.a.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(1520u, 10u)]), vec4<u32>(u_input.a.x, 14736u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 13909u)) % vec4<u32>(32u))) & ~firstTrailingBit(u_input.a), firstLeadingBit(_wgslsmith_div_vec4_u32(u_input.a, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1616.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_6(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 4294967295u, 1u, u_input.a.x), vec4<f32>(401.0, 164.0, 1244.0, -1599.0), vec3<i32>(-3731, 2147483647, -5484), false, vec4<u32>(0u, 21711u, 56159u, global0[_wgslsmith_index_u32(0u, 10u)])), 1618u)).x * 1331.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1077.0)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2134.0 + -712.0) * _wgslsmith_f_op_f32(-388.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(717.0))) - _wgslsmith_f_op_f32(max(-316.0, _wgslsmith_div_f32(237.0, 1000.0))))), _wgslsmith_sub_vec3_i32(abs(-vec3<i32>(2147483647, -8198, -3348)), vec3<i32>(_wgslsmith_mod_i32(i32(-1) * -2147483648, 2147483647), 1, 2147483647)), true, _wgslsmith_sub_vec4_u32(abs(u_input.a), _wgslsmith_mod_vec4_u32(reverseBits(~u_input.a), abs(firstTrailingBit(u_input.a)))));
            let var_1 = vec2<u32>(~u_input.a.x & _wgslsmith_add_u32(~(0u | var_0.e.x), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.wy))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(~var_0.e.x, 42980u), u_input.a.ww), u_input.a.yy));
            for (var var_2 = 1; var_0.d; var_2 -= 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_3 = u_input.a.www;
            }
        }
        case 2147483647: {
            return ~firstTrailingBit(-(1 ^ 0) >> (1u % 32u));
        }
        case -1: {
            for (var var_0 = 2147483647; var_0 > 15450; global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2138.0)))) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            }
            if (~(~abs(global0[_wgslsmith_index_u32(~2983u, 10u)])) <= ~u_input.a.x) {
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                var var_0 = vec3<bool>(select(-750.0 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571.0)), func_7(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 1u), vec2<u32>(0u, 58258u)), ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -491.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-628.0, 106.0, 182.0, 1302.0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(842.0, -174.0, 763.0, -1000.0)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138.0)) >= _wgslsmith_f_op_f32(-1796.0)), false, (firstTrailingBit(~global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) < 14406u) && !(!true));
                continue;
            }
            global0 = array<u32, 10>();
        }
        case 34898: {
        }
        default: {
            var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271.0 + 111.0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(831.0 + -430.0) + _wgslsmith_f_op_f32(max(-2532.0, 2927.0))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(622.0)), _wgslsmith_f_op_f32(abs(-1413.0)))) + _wgslsmith_f_op_f32(trunc(1369.0)))));
            var var_1 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_div_f32(695.0, -1139.0), all(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-713.0))), -136.0, _wgslsmith_f_op_f32(sign(1395.0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(314.0, -353.0, 315.0, -984.0) - vec4<f32>(-412.0, 474.0, 1000.0, 1000.0)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-475.0, 202.0, 724.0, 697.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-142.0, 200.0, 2300.0, -150.0)), false)))), vec3<i32>(select(countOneBits(abs(2147483647)), ~(i32(-1) * -16826), !(294.0 <= -408.0)), i32(-1) * -2147483648, -14504 >> (u_input.a.x % 32u)), true, _wgslsmith_mod_vec4_u32(vec4<u32>(12044u, _wgslsmith_sub_u32(11899u, 1u) & ~0u, 1u, firstLeadingBit(reverseBits(4294967295u))), vec4<u32>(_wgslsmith_add_u32(4294967295u ^ u_input.a.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], u_input.a.x)), max(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 10u)]), u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a.x, global0[_wgslsmith_index_u32(0u, 10u)]), u_input.a.xzz), ~u_input.a.zxy), ~29033u)));
            let var_2 = select(!vec2<bool>(true, var_1.d), vec2<bool>(_wgslsmith_add_i32(_wgslsmith_add_i32(0, var_1.c.x), var_1.c.x) >= -55992, false), false);
            var_1 = Struct_1(~select(_wgslsmith_sub_vec4_u32(firstTrailingBit(var_1.e), _wgslsmith_clamp_vec4_u32(var_1.a, var_1.e, vec4<u32>(u_input.a.x, 21860u, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(1u, 10u)], 1u) | var_1.a, var_1.a), !(!vec4<bool>(false, var_2.x, var_2.x, false))), _wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(_wgslsmith_f_op_f32(-268.0 + -1000.0), _wgslsmith_f_op_f32(482.0 * var_1.b.x), _wgslsmith_f_op_f32(round(-352.0)), _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_clamp_vec3_i32(var_1.c, -vec3<i32>(_wgslsmith_clamp_i32(2147483647, 43028, var_1.c.x), -2147483648 << (var_1.e.x % 32u), _wgslsmith_mod_i32(-2147483648, 46498)), reverseBits(-var_1.c ^ var_1.c)), !(!all(vec4<bool>(var_1.d, var_2.x, var_2.x, true))), u_input.a);
        }
    }
    if (any(vec3<bool>((abs(0u) <= 5351u) | (2147483647 == ~10412), !false, select(true, false || true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))))))) {
        switch (countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(countOneBits(vec2<i32>(-26994, 0))), abs(countOneBits(vec2<i32>(32195, 0)))), _wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647, 2147483647), vec2<i32>(2147483647, -499)) & vec2<i32>(2147483647, reverseBits(-2147483648))))) {
            default: {
            }
        }
    }
    for (var var_0 = 20125; var_0 <= -1; var_0 += 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        return abs(~(~firstTrailingBit(max(-54958, 2147483647))));
    }
    return -(select(~(-9413), -20073, !false) ^ -1) >> (u_input.a.x % 32u);
}

fn func_8(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    global0 = array<u32, 10>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1680.0) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -302.0))) - -380.0);
    var var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -977.0);
    let var_1 = Struct_1(~u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000.0, arg_2.x)) - _wgslsmith_f_op_f32(exp2(-1292.0))))), arg_2.x, arg_1.b.x), firstLeadingBit(arg_1.c), arg_1.d == !(!false && arg_1.d), u_input.a);
    let var_2 = u_input.a.zx >> (arg_1.e.xw % vec2<u32>(32u));
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: bool) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1203.0)) + _wgslsmith_f_op_f32(f32(-1.0) * -708.0)))));
    return func_8(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(10826, -27711) ^ (vec2<i32>(-1, -33389) >> (u_input.a.yx % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(func_4(), _wgslsmith_mult_i32(0, 1)), vec2<i32>(i32(-1) * -15929, countOneBits(-13351)))), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(737.0, 463.0, -596.0, 287.0)) * _wgslsmith_f_op_vec4_f32(func_6(Struct_1(vec4<u32>(4294967295u, u_input.a.x, arg_0, arg_0), vec4<f32>(207.0, 121.0, 629.0, -464.0), vec3<i32>(1, -1176, 1), arg_1, vec4<u32>(arg_0, arg_0, u_input.a.x, 11377u)), ~arg_0))), _wgslsmith_div_vec3_i32(vec3<i32>(abs(1), _wgslsmith_mod_i32(0, -2147483648), 2147483647), ~vec3<i32>(1222, 0, 2147483647)), !all(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, false, arg_1), vec3<bool>(true, arg_1, false))), vec4<u32>(9425u, _wgslsmith_mult_u32(65963u << (arg_0 % 32u), global0[_wgslsmith_index_u32(31181u, 10u)]), 0u, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1592.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(557.0 + 192.0) + -102.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-854.0), _wgslsmith_f_op_f32(-283.0)))), _wgslsmith_mod_u32(~(~4294967295u), u_input.a.x) ^ _wgslsmith_mod_u32(32603u ^ u_input.a.x, abs(arg_0) | ~27669u));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = func_3(0u, false);
    if (!var_0.d) {
        switch (0) {
            case 2147483647: {
            }
            case -14892: {
            }
            case -1: {
                let var_1 = var_0.e.x;
                var var_2 = Struct_1(vec4<u32>(4294967295u, 1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, var_0.e.x, var_0.e.x) ^ 17371u, max(max(4294967295u, u_input.a.x), 39426u)), u_input.a.x | ~(u_input.a.x | var_0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * _wgslsmith_f_op_vec4_f32(-var_0.b))) * func_3(_wgslsmith_add_u32(3061u, 2317u) & var_0.e.x, !var_0.d && (false || false)).b), max(~min(_wgslsmith_add_vec3_i32(var_0.c, vec3<i32>(arg_0, arg_1, 0)), vec3<i32>(arg_0, -12935, arg_0)), var_0.c ^ var_0.c), var_0.d, firstTrailingBit(countOneBits(vec4<u32>(493u, var_0.a.x ^ var_0.e.x, func_8(var_0.c.x, Struct_1(u_input.a, vec4<f32>(563.0, 1143.0, var_0.b.x, 1022.0), var_0.c, true, vec4<u32>(49548u, 1u, global0[_wgslsmith_index_u32(773u, 10u)], var_0.a.x)), vec3<f32>(119.0, var_0.b.x, 439.0), global0[_wgslsmith_index_u32(0u, 10u)]).a.x, reverseBits(var_0.a.x)))));
                let var_3 = Struct_1(vec4<u32>(select(~abs(0u), 1u, var_0.d), ~global0[_wgslsmith_index_u32(var_2.a.x, 10u)], 16094u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(6639u, var_2.a.x, global0[_wgslsmith_index_u32(0u, 10u)], 1u) << (vec4<u32>(var_0.e.x, 4294967295u, 0u, 37779u) % vec4<u32>(32u))), ~(~var_0.e))), _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-598.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1239.0)) - var_0.b.x), var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))))), _wgslsmith_clamp_vec3_i32(var_0.c, ~vec3<i32>(abs(var_2.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, var_0.c.x), vec2<i32>(2147483647, -1)), arg_1 << (4294967295u % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(~arg_0, _wgslsmith_mod_i32(var_2.c.x, -11498), _wgslsmith_sub_i32(arg_0, -34218)), min(-vec3<i32>(var_2.c.x, var_0.c.x, var_0.c.x), -var_2.c))), func_5(), vec4<u32>(countOneBits(var_2.e.x) << (48781u % 32u), _wgslsmith_div_u32(u_input.a.x, ~26305u), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(0u, 4294967295u, 29902u, var_0.e.x), vec4<u32>(0u, 45101u, 0u, 621u) >> (vec4<u32>(25574u, var_2.a.x, var_2.a.x, u_input.a.x) % vec4<u32>(32u))), var_2.e), 12130u));
            }
            default: {
                let var_1 = vec4<f32>(136.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1945.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1091.0 * -601.0)))), -660.0, _wgslsmith_f_op_f32(-760.0 + var_0.b.x));
                var_0 = Struct_1(var_0.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), vec3<i32>(24547, -_wgslsmith_dot_vec2_i32(var_0.c.yz, var_0.c.zx) ^ arg_1, _wgslsmith_sub_i32(arg_1, var_0.c.x) >> (_wgslsmith_div_u32(func_8(arg_0, Struct_1(vec4<u32>(var_0.e.x, 1u, u_input.a.x, 0u), var_0.b, vec3<i32>(arg_0, arg_0, -4097), var_0.d, vec4<u32>(37855u, u_input.a.x, 38716u, global0[_wgslsmith_index_u32(4294967295u, 10u)])), vec3<f32>(-1000.0, 861.0, var_1.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(588u, 10u)], 10u)]).a.x, _wgslsmith_sub_u32(18824u, 8608u)) % 32u)), var_0.d, var_0.e);
                let var_2 = func_8(arg_0, Struct_1(firstTrailingBit(firstTrailingBit(vec4<u32>(83863u, u_input.a.x, 15400u, 14632u)) >> (vec4<u32>(u_input.a.x, u_input.a.x, var_0.e.x, global0[_wgslsmith_index_u32(36247u, 10u)]) % vec4<u32>(32u))), var_1, _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, 1), vec3<i32>(-11086, arg_0, 54618)), func_8(arg_0 << (5222u % 32u), Struct_1(var_0.a, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), var_0.c, true, u_input.a), var_0.b.wzy, 3546u).c), any(vec4<bool>(var_0.d, func_5(), var_0.d, false || true)), ~(~u_input.a)), _wgslsmith_f_op_vec3_f32(func_8(-1, func_8(~var_0.c.x, Struct_1(var_0.e, var_0.b, vec3<i32>(-44724, var_0.c.x, arg_1), var_0.d, vec4<u32>(0u, 25996u, 0u, 22475u)), _wgslsmith_f_op_vec3_f32(-var_1.yyw), firstTrailingBit(16114u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 239.0, var_1.x) * var_0.b.yyx))), ~4294967295u).b.yzy + vec3<f32>(var_1.x, -1213.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_vec4_f32(func_6(Struct_1(vec4<u32>(var_0.e.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 4294967295u, var_0.e.x), var_0.b, vec3<i32>(arg_0, var_0.c.x, var_0.c.x), var_0.d, vec4<u32>(33638u, global0[_wgslsmith_index_u32(var_0.a.x, 10u)], global0[_wgslsmith_index_u32(78990u, 10u)], 1u)), 13208u)).x))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 139835u), 10u)] << (_wgslsmith_add_u32(_wgslsmith_add_u32(~45280u, var_0.a.x), ~var_0.e.x) % 32u));
                global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1476.0, _wgslsmith_div_f32(var_1.x, -811.0), var_2.d))))));
            }
        }
        for (var var_1 = 2147483647; !any(func_7(u_input.a.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -703.0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(var_0.b.x, 702.0, -839.0, var_0.b.x)))); var_1 += 1) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            var var_2 = vec3<bool>(false, !false, var_0.d);
            break;
        }
    }
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        switch (arg_0) {
            case -2147483648: {
                let var_1 = !select(vec3<bool>(!true, var_0.d, var_0.d), select(vec3<bool>(var_0.d, true, 0u > u_input.a.x), !select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(false, var_0.d, var_0.d)), vec3<bool>(arg_0 <= arg_1, !var_0.d, !false)), false);
                let var_2 = var_0.e.zx;
            }
            case -1: {
                var var_1 = vec4<i32>(~var_0.c.x, _wgslsmith_clamp_i32(func_8(arg_1, Struct_1(~vec4<u32>(var_0.e.x, 4294967295u, 4294967295u, 29945u), _wgslsmith_f_op_vec4_f32(var_0.b + var_0.b), vec3<i32>(-46663, arg_0, -9532), true, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 4294967295u), u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(-817.0), _wgslsmith_f_op_f32(-451.0), _wgslsmith_f_op_vec4_f32(func_6(Struct_1(var_0.a, vec4<f32>(1231.0, -1126.0, -475.0, var_0.b.x), var_0.c, var_0.d, u_input.a), global0[_wgslsmith_index_u32(u_input.a.x, 10u)])).x), select(~4294967295u, 0u, var_0.d)).c.x, arg_1, 0), ~(-22141 | -19784) & ~var_0.c.x, -11530);
                continue;
            }
            case 28715: {
                continue;
            }
            case -5051: {
                break;
            }
            default: {
                var var_1 = select(select(vec2<bool>(func_3(global0[_wgslsmith_index_u32(4294967295u, 10u)] >> (79092u % 32u), false).d, arg_1 > -arg_1), !select(!vec2<bool>(false, false), vec2<bool>(false, true), !var_0.d), all(vec4<bool>(func_8(arg_0, Struct_1(vec4<u32>(var_0.e.x, 21457u, u_input.a.x, 0u), vec4<f32>(var_0.b.x, var_0.b.x, 809.0, -1475.0), var_0.c, false, vec4<u32>(global0[_wgslsmith_index_u32(var_0.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 58676u, var_0.e.x)), vec3<f32>(-190.0, -790.0, var_0.b.x), var_0.e.x).d, func_5(), var_0.d, true))), !vec2<bool>(reverseBits(arg_1) >= 0, all(vec2<bool>(false, false))), select(_wgslsmith_div_u32(0u, ~u_input.a.x), ~68022u, !(global0[_wgslsmith_index_u32(var_0.e.x, 10u)] != var_0.a.x)) >= u_input.a.x);
                let var_2 = vec3<i32>(-1, arg_1, abs(_wgslsmith_add_i32(-2147483648, var_0.c.x) << (_wgslsmith_clamp_u32(4039u, global0[_wgslsmith_index_u32(var_0.e.x, 10u)], var_0.a.x) % 32u)) | arg_1);
                global1 = var_0.b.x;
                break;
            }
        }
        let var_1 = !select(select(vec4<bool>(false, true && var_0.d, !false, var_0.d), select(vec4<bool>(var_0.d, var_0.d, false, false), vec4<bool>(var_0.d, false, var_0.d, var_0.d), !false), (arg_1 <= var_0.c.x) && any(vec4<bool>(var_0.d, var_0.d, true, var_0.d))), !(!select(vec4<bool>(true, var_0.d, var_0.d, var_0.d), vec4<bool>(true, false, false, var_0.d), true)), vec4<bool>(_wgslsmith_mult_u32(var_0.e.x, 0u) > 0u, !var_0.d, false, false));
    }
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        switch (~(-(~arg_1))) {
            case -74252: {
                var_0 = func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.e.wxy, _wgslsmith_add_vec3_u32(vec3<u32>(27584u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(118484u, 10u)], 65332u, 0u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 48406u)), var_0.e.wy), u_input.a.x)), 10u)], select(reverseBits(abs(22234)) <= (var_0.c.x >> ((var_0.e.x ^ 60448u) % 32u)), true, select(var_0.d, any(!vec4<bool>(var_0.d, true, false, var_0.d)), false)));
                var var_1 = func_8(~(~arg_0) >> (~(~(~1u)) % 32u), Struct_1(vec4<u32>(1u, ~(~26743u), _wgslsmith_add_u32(17628u, ~u_input.a.x), _wgslsmith_dot_vec2_u32(abs(u_input.a.yy), u_input.a.wx << (vec2<u32>(var_0.a.x, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(-1166.0, 825.0, var_0.b.x, 2105.0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -237.0, 318.0, -839.0)))), var_0.c, var_0.d, _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_0.a.x, 19002u, 0u), ~u_input.a & ~var_0.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.b.zxy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 799.0, -1095.0)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)))), func_8(abs(~(-2147483648)), func_3(var_0.a.x, (0 ^ -27910) < arg_1), _wgslsmith_f_op_vec3_f32(var_0.b.zzw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))), 52070u << (var_0.e.x % 32u)).a.x);
                break;
            }
            case 0: {
                global1 = _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-1968.0));
                var var_1 = var_0.c.xy;
                let var_2 = Struct_1(~abs(u_input.a), var_0.b, reverseBits(vec3<i32>(countOneBits(-1), ~(-20038), var_1.x)), (-2147483648 ^ ~12404) != (arg_0 & -(48881 & 2147483647)), u_input.a & var_0.e);
            }
            default: {
                var var_1 = true;
                break;
            }
        }
        let var_1 = func_4();
        for (var var_2 = 0; _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1223.0)) + var_0.b.x), _wgslsmith_f_op_vec4_f32(func_6(func_8(firstTrailingBit(1), func_8(arg_0, Struct_1(vec4<u32>(54260u, global0[_wgslsmith_index_u32(var_0.e.x, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<f32>(1681.0, var_0.b.x, var_0.b.x, -1541.0), vec3<i32>(var_1, -56368, var_0.c.x), var_0.d, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32290u, 10u)], 10u)], 10066u, u_input.a.x, 1u)), var_0.b.zzw, 21000u), var_0.b.xwy, firstTrailingBit(4294967295u)), ~4294967295u ^ 58985u)).x) == _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x); var_2 -= 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var_2 = (var_0.c.x | var_0.c.x) & -_wgslsmith_mult_i32(_wgslsmith_mod_i32(-88226, _wgslsmith_dot_vec2_i32(vec2<i32>(-1, 1667), vec2<i32>(-42668, var_0.c.x))), abs(var_0.c.x) >> (_wgslsmith_div_u32(u_input.a.x, 1u) % 32u));
            let var_3 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701.0) - _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, var_0.d))))), -(vec3<i32>(~4181, var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, -33054, 2147483647, arg_1), vec4<i32>(arg_1, 37999, -2147483648, -1588))) | abs(var_0.c ^ var_0.c)), !var_0.d, ~(~u_input.a));
            var_2 = arg_0;
            var var_4 = _wgslsmith_f_op_vec4_f32(func_6(func_8(9471 ^ 2147483647, var_3, vec3<f32>(534.0, _wgslsmith_f_op_f32(f32(-1.0) * -1596.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_add_u32(49611u, 1u)), ~1u)).x;
            var var_5 = (i32(-1) * -(~(-76290))) ^ var_3.c.x;
        }
        var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -1000.0))))) - vec4<f32>(660.0, _wgslsmith_f_op_f32(abs(var_0.b.x)), 519.0, _wgslsmith_div_f32(var_0.b.x, var_0.b.x)))));
    }
    if (!var_0.d) {
        var var_1 = _wgslsmith_div_f32(var_0.b.x, var_0.b.x);
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            global1 = var_0.b.x;
        }
        var var_2 = Struct_1(abs(~_wgslsmith_clamp_vec4_u32(abs(var_0.e), u_input.a, func_8(-44805, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u), var_0.b, var_0.c, true, u_input.a), var_0.b.zzy, var_0.e.x).e)), _wgslsmith_f_op_vec4_f32(func_6(Struct_1(vec4<u32>(76012u, 30547u, u_input.a.x, 48422u) >> (vec4<u32>(74721u, global0[_wgslsmith_index_u32(var_0.a.x, 10u)], global0[_wgslsmith_index_u32(41228u, 10u)], global0[_wgslsmith_index_u32(25407u, 10u)]) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(805.0, 1239.0, var_0.b.x, var_0.b.x)), -var_0.c, any(vec4<bool>(false, var_0.d, var_0.d, true)), ~(var_0.a << (vec4<u32>(30289u, global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), var_0.e.x)), ~vec3<i32>(var_0.c.x, _wgslsmith_add_i32(-arg_0, _wgslsmith_add_i32(19037, arg_0)), select(~0, -1, false || false)), false, vec4<u32>(~var_0.e.x << (~global0[_wgslsmith_index_u32(var_0.e.x, 10u)] % 32u), max(max(global0[_wgslsmith_index_u32(4294967295u, 10u)], var_0.e.x), reverseBits(global0[_wgslsmith_index_u32(12511u, 10u)])), u_input.a.x, _wgslsmith_mult_u32(u_input.a.x ^ 82828u, ~u_input.a.x)) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, var_0.e.x, 37735u, global0[_wgslsmith_index_u32(50942u, 10u)]), vec4<u32>(~u_input.a.x, 0u, ~global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(~4294967295u, 10u)])));
    }
    return Struct_1(~var_0.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-414.0, -408.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(718.0 * 1593.0)), var_0.b.x, var_0.b.x), vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(1345.0 * var_0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-679.0 * var_0.b.x))), _wgslsmith_f_op_f32(ceil(-2702.0)), _wgslsmith_f_op_f32(-var_0.b.x))), ~(_wgslsmith_add_vec3_i32(var_0.c, vec3<i32>(arg_1, -2147483648, arg_0)) & countOneBits(vec3<i32>(0, arg_0, 53367))) & _wgslsmith_mod_vec3_i32(var_0.c & vec3<i32>(1, -32638, -1), (vec3<i32>(2147483647, 2147483647, arg_1) >> (vec3<u32>(4294967295u, var_0.e.x, 6896u) % vec3<u32>(32u))) | vec3<i32>(1, 23960, arg_0)), all(!vec3<bool>(var_0.b.x == 954.0, !var_0.d, !var_0.d)), vec4<u32>(~0u, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10588u, 4294967295u, 0u)), 10u)], _wgslsmith_add_u32(15364u, 4294967295u)));
}

fn func_9(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = vec2<i32>(-(26743 << (arg_0.e.x % 32u)), ~_wgslsmith_add_i32(arg_0.c.x >> (~arg_0.e.x % 32u), -(arg_0.c.x | -15521)));
    switch (func_4()) {
        case 0: {
            for (; !false; ) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            }
            let var_1 = -1191.0;
            var var_2 = _wgslsmith_f_op_f32(-729.0);
            switch (_wgslsmith_div_i32(arg_0.c.x, 2147483647)) {
                case -20756: {
                    var var_3 = -30801;
                    var_3 = ~var_0.x;
                }
                case 0: {
                    let var_3 = true;
                    let var_4 = _wgslsmith_div_u32(countOneBits(20053u), global0[_wgslsmith_index_u32(~(~u_input.a.x), 10u)]);
                    global1 = var_1;
                    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_vec4_f32(func_6(Struct_1(~arg_0.e, func_8(0, Struct_1(vec4<u32>(var_4, 80180u, 1u, 30385u), vec4<f32>(var_1, -775.0, 553.0, arg_0.b.x), vec3<i32>(arg_0.c.x, -2147483648, arg_0.c.x), false, vec4<u32>(57590u, 1u, 38971u, 19235u)), arg_0.b.wyw, 0u).b, vec3<i32>(arg_0.c.x, var_0.x, 25457), func_3(28482u, arg_0.d).d, u_input.a), 0u)).x)));
                    var_2 = var_1;
                }
                case -12480: {
                }
                case 1: {
                }
                default: {
                    global0 = array<u32, 10>();
                }
            }
        }
        case -3708: {
            var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(~(-2147483648), -1, 2147483647, arg_0.c.x), abs(firstLeadingBit(vec4<i32>(29043, arg_0.c.x, -21138, -9594)))), var_0.x);
            switch (~(-var_0.x)) {
                case 0: {
                    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) + func_3(_wgslsmith_clamp_u32(45388u, u_input.a.x, 20954u), select(arg_0.d, arg_0.d, false)).b.x)) + arg_0.b.x);
                }
                default: {
                    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1134.0), 1000.0);
                    var var_1 = func_3((~u_input.a.x & ~reverseBits(arg_0.e.x)) << (u_input.a.x % 32u), arg_0.d).e.yxw;
                    let var_2 = func_8(954, arg_0, _wgslsmith_f_op_vec3_f32(-func_2(_wgslsmith_clamp_i32(min(1, var_0.x), _wgslsmith_dot_vec2_i32(arg_0.c.yz, arg_0.c.xx), var_0.x), -_wgslsmith_add_i32(arg_0.c.x, arg_0.c.x)).b.xxz), abs(~(~0u)));
                    var var_3 = var_2;
                    let var_4 = _wgslsmith_dot_vec2_i32(abs(firstTrailingBit(vec2<i32>(arg_0.c.x, var_2.c.x))) & ~reverseBits(reverseBits(var_3.c.zz)), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(30856, 32651, 38796, arg_0.c.x), ~vec4<i32>(var_0.x, var_2.c.x, var_0.x, -2565)), -var_0.x)));
                }
            }
            switch (~func_2(abs(arg_0.c.x), var_0.x).c.x) {
                case 55620: {
                    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-431.0)), 1712.0)));
                    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(306.0, arg_0.b.x, arg_0.d)) * _wgslsmith_f_op_f32(arg_0.b.x + 1126.0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(466.0 - arg_0.b.x));
                    let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) + vec4<f32>(220.0, _wgslsmith_f_op_f32(251.0 * 1982.0), func_8(-8763, arg_0, vec3<f32>(arg_0.b.x, arg_0.b.x, -934.0), _wgslsmith_div_u32(arg_0.e.x, 61046u)).b.x, arg_0.b.x)), arg_0.c, all(!vec4<bool>(arg_0.d, !true, arg_0.d, false)), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.a & vec4<u32>(691u, 38026u, 46806u, 0u), arg_0.e ^ vec4<u32>(arg_0.e.x, arg_0.e.x, 87457u, 4294967295u)), _wgslsmith_mod_vec4_u32(func_8(~26628, func_3(arg_0.e.x, arg_0.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, 241.0) * arg_0.b.yzz), 28107u).a, vec4<u32>(0u, ~35696u, func_2(arg_0.c.x, var_0.x).a.x, _wgslsmith_add_u32(53449u, global0[_wgslsmith_index_u32(arg_0.a.x, 10u)]))), _wgslsmith_sub_vec4_u32(arg_0.a, u_input.a)));
                }
                case -20742: {
                    var_0 = firstLeadingBit(-_wgslsmith_mod_vec2_i32(~(~arg_0.c.zx), _wgslsmith_mod_vec2_i32(arg_0.c.yx, vec2<i32>(1, 0))));
                    let var_1 = 2147483647;
                }
                case 0: {
                    global1 = _wgslsmith_f_op_f32(-arg_0.b.x);
                    let var_1 = arg_0;
                    var var_2 = min(~vec4<u32>(min(37978u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.a.x, 10u)], u_input.a.x, var_1.e.x, var_1.a.x), arg_0.a), 10u)]), select(func_2(0, arg_0.c.x).a.x, select(17800u, global0[_wgslsmith_index_u32(arg_0.e.x, 10u)], false), true || var_1.d), ~672u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(arg_0.a.x, 10u)], _wgslsmith_mult_u32(u_input.a.x, 14253u), func_3(1u, true).e.x)), vec4<u32>(~firstLeadingBit(func_3(1u, var_1.d).a.x), ~global0[_wgslsmith_index_u32(var_1.e.x, 10u)], ~u_input.a.x, var_1.a.x));
                }
                default: {
                    var_0 = ~abs(func_3(func_8(-26913, Struct_1(vec4<u32>(15787u, global0[_wgslsmith_index_u32(4294967295u, 10u)], 44900u, 1u), arg_0.b, arg_0.c, true, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, -1971.0, arg_0.b.x)), _wgslsmith_sub_u32(1u, u_input.a.x)).e.x, !(1208.0 == arg_0.b.x)).c.zz);
                    var var_1 = !arg_0.d;
                    var var_2 = vec4<i32>(_wgslsmith_mult_i32(~(-2147483648), _wgslsmith_mod_i32(var_0.x, 2147483647)) >> (_wgslsmith_sub_u32(func_2(_wgslsmith_add_i32(var_0.x, 1), var_0.x).e.x, 1u) % 32u), arg_0.c.x, 0, var_0.x);
                    var var_3 = arg_0;
                    let var_4 = 83755u;
                }
            }
            var var_1 = vec3<i32>(firstTrailingBit(arg_0.c.x), var_0.x, arg_0.c.x);
        }
        default: {
            let var_1 = func_3(_wgslsmith_mod_u32(7464u | 37549u, global0[_wgslsmith_index_u32(max(abs(func_3(global0[_wgslsmith_index_u32(7920u, 10u)], false).a.x), 52477u), 10u)]), arg_0.d);
        }
    }
    let var_1 = ~(u_input.a.x | abs(reverseBits(min(u_input.a.x, u_input.a.x))));
    var_0 = reverseBits(arg_0.c.zy);
    var var_2 = Struct_1(min(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 10u)], var_1, global0[_wgslsmith_index_u32(4294967295u, 10u)], 31160u), _wgslsmith_mod_vec4_u32(countOneBits(u_input.a), arg_0.a)) << (~arg_0.e % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1417.0, -373.0, -1000.0, -1000.0))))))), -vec3<i32>(arg_0.c.x, arg_0.c.x, _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_0.x, arg_0.c.x), arg_0.c.zx), arg_0.c.zy)), arg_0.d, ~u_input.a);
    return vec3<i32>(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1) * -firstLeadingBit(var_2.c.zz), _wgslsmith_add_vec2_i32(var_2.c.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(1, arg_0.c.x) | vec2<i32>(var_2.c.x, var_0.x), vec2<i32>(-33824, arg_0.c.x), -vec2<i32>(53140, 0)))), firstLeadingBit(_wgslsmith_sub_i32(var_0.x, 53865)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = firstTrailingBit(_wgslsmith_div_u32(arg_0.x, u_input.a.x));
    let var_1 = Struct_1(max(u_input.a, vec4<u32>(arg_1.x, ~(~var_0), _wgslsmith_sub_u32(~var_0, global0[_wgslsmith_index_u32(20080u, 10u)] & 4294967295u), arg_1.x | (global0[_wgslsmith_index_u32(16773u, 10u)] << (1u % 32u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-750.0, 1686.0, 1000.0, -1100.0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-314.0, 1000.0, -1161.0, 519.0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1075.0, 436.0, 549.0, -570.0)) + vec4<f32>(288.0, -2227.0, 375.0, -474.0)), vec4<f32>(-704.0, _wgslsmith_f_op_f32(step(2029.0, -138.0)), -412.0, _wgslsmith_f_op_f32(-917.0)), any(!vec2<bool>(false, true))))), func_9(func_2(1, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, -30279), vec2<i32>(-2147483648, -32832)))) | -(~_wgslsmith_add_vec3_i32(vec3<i32>(23130, -1, 6470), vec3<i32>(-4717, 1, 2147483647))), func_8(_wgslsmith_mod_i32(_wgslsmith_div_i32(1, -55075), _wgslsmith_clamp_i32(-2147483648, -21677, 1)) | _wgslsmith_clamp_i32(0, firstLeadingBit(30432), ~(-121741)), func_8(~(-49922), Struct_1(vec4<u32>(4294967295u, 20980u, 1u, arg_1.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(983.0, 131.0, -1293.0, 1913.0))), -vec3<i32>(1, 1, 0), 1 > -2147483648, vec4<u32>(global0[_wgslsmith_index_u32(35576u, 10u)], 5769u, 0u, var_0)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(414.0, 154.0, -1000.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-560.0, -187.0, 1041.0) - vec3<f32>(1020.0, 2063.0, 568.0)))), arg_1.x & 80832u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1937.0, -743.0, -1930.0)))), func_8(func_2(~0, _wgslsmith_dot_vec4_i32(vec4<i32>(0, 2147483647, 2147483647, 1), vec4<i32>(-1, 19520, -2147483648, 1))).c.x, func_3(reverseBits(1u), !false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1404.0, 295.0, -1268.0)), ~_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(29072u, 8666u))).e.x).d, select(u_input.a & u_input.a, _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, var_0, global0[_wgslsmith_index_u32(23799u, 10u)], arg_0.x), vec4<u32>(max(var_0, arg_1.x), select(11101u, arg_0.x, false), _wgslsmith_mult_u32(22143u, 514u), u_input.a.x)), vec4<bool>(any(!vec2<bool>(true, false)), !true, !(false || false), func_8(-29594, Struct_1(u_input.a, vec4<f32>(-1000.0, 1374.0, 691.0, -333.0), vec3<i32>(6399, 2147483647, -97593), false, vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), _wgslsmith_div_vec3_f32(vec3<f32>(-499.0, -626.0, 1228.0), vec3<f32>(526.0, 1942.0, -608.0)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(arg_1.x, 10u)], arg_0.x), 10u)]).d)));
    for (var var_2 = 2147483647; !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.x))) <= _wgslsmith_div_f32(-527.0, _wgslsmith_div_f32(var_1.b.x, var_1.b.x))); var_2 += 1) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        global0 = array<u32, 10>();
        var_2 = -reverseBits(select(var_1.c.x, 2147483647, func_8(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, 0), var_1.c.yz), func_8(var_1.c.x, Struct_1(var_1.a, vec4<f32>(var_1.b.x, -148.0, -1192.0, -2748.0), vec3<i32>(-31883, var_1.c.x, var_1.c.x), true, u_input.a), var_1.b.yxw, 70709u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 785.0, var_1.b.x)), func_3(7989u, true).a.x).d));
        var var_3 = func_3(4294967295u, var_1.d);
    }
    let var_2 = vec3<u32>(select(var_1.e.x, 4294967295u, var_1.d), 8951u, ~firstTrailingBit(arg_0.x));
    global1 = 634.0;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    if (!true) {
        let var_0 = _wgslsmith_clamp_u32(~u_input.a.x, ~4294967295u, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(2391u, 10u)] & u_input.a.x), 10u)]), 10u)]);
        let var_1 = Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -771.0) * -1090.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1207.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1378.0 * -400.0)))), -1000.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-203.0))), _wgslsmith_f_op_f32(sign(-472.0))))), countOneBits(select(-vec3<i32>(17832, 26875, -23083), func_1(abs(u_input.a.zxz), vec2<u32>(var_0, 1u)), !false)), !false, abs(u_input.a));
        var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.b.zw);
        var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.xz) + _wgslsmith_f_op_vec2_f32(floor(var_1.b.yz))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1350.0), 1103.0), 1000.0)));
        if (!true) {
            global1 = var_1.b.x;
            var var_3 = var_1.c.x;
        }
    }
    global0 = array<u32, 10>();
    switch (-(~(-2147483648))) {
        default: {
            global1 = _wgslsmith_f_op_f32(func_3(12501u, true).b.x - -1730.0);
            let var_0 = u_input.a.x;
            let var_1 = ~u_input.a.wy;
            for (var var_2 = 17980; var_2 > 31308; var_2 -= 1) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                var var_3 = func_3(_wgslsmith_div_u32(max(~4294967295u, _wgslsmith_sub_u32(var_0, countOneBits(var_0))), _wgslsmith_dot_vec2_u32(u_input.a.wz, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0), u_input.a.ww)) | ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)])), _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(1, -49473, -2147483648)), -func_2(-13743, 54052).c) < -_wgslsmith_sub_i32(_wgslsmith_add_i32(0, -2147483648), select(-2147483648, 49443, true)));
                global0 = array<u32, 10>();
                global0 = array<u32, 10>();
                continue;
            }
        }
    }
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(func_2(_wgslsmith_div_i32(~11844, -46299), -31841).b.x)), _wgslsmith_f_op_f32(f32(-1.0) * -1393.0), -163.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(-1177.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) + _wgslsmith_f_op_f32(f32(-1.0) * -1945.0))));
    var var_1 = func_8(-26466, func_3(min(min(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16906u, 10u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 10u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(16655u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23259u, 10u)], 10u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 929u) >> (vec2<u32>(1u, 34874u) % vec2<u32>(32u))), 10u)]), false), _wgslsmith_f_op_vec4_f32(func_6(Struct_1(select(u_input.a, max(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 0u, 13485u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 24419u, 0u, u_input.a.x)), vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-951.0, var_0.x, -3430.0, -131.0)))), vec3<i32>(0, ~2147483647, 11170), !(!false), ~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(38866u, u_input.a.x, global0[_wgslsmith_index_u32(63489u, 10u)], 27359u))), abs(~27456u))).yyx, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(~(~u_input.a.yyy), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 10u)], 0u) >> (~u_input.a.yyz % vec3<u32>(32u))), u_input.a.x), 10u)], 10u)]);
    if (var_1.d) {
        global0 = array<u32, 10>();
        for (var var_2 = 53161; var_1.d; var_2 += 1) {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            var var_3 = firstTrailingBit(~u_input.a);
            var var_4 = func_3(~countOneBits(abs(_wgslsmith_mult_u32(u_input.a.x, 0u))), -44729 < var_1.c.x);
            continue;
        }
        loop {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            let var_2 = func_8(-2960, Struct_1(~var_1.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_0, var_1.b))), vec3<i32>((35129 >> (31023u % 32u)) << (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(33457u, var_1.e.x), 10u)] % 32u), -2147483648 << (_wgslsmith_clamp_u32(42124u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50129u, 10u)], 10u)], 12403u) % 32u), -1), var_1.d, func_3(1u, func_2(var_1.c.x, var_1.c.x & -2147483648).d).a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(func_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], var_1.d).b.zzx)), vec3<f32>(_wgslsmith_f_op_f32(func_8(var_1.c.x, Struct_1(var_1.e, vec4<f32>(var_0.x, var_0.x, 524.0, -917.0), var_1.c, true, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a.x, 10u)], 10u)], var_1.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 25231u)), vec3<f32>(var_1.b.x, var_0.x, var_0.x), global0[_wgslsmith_index_u32(24898u, 10u)]).b.x - -1701.0), var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1892.0), _wgslsmith_f_op_f32(115.0 - var_1.b.x))))), var_1.e.x);
            let var_3 = var_2;
            global0 = array<u32, 10>();
            global0 = array<u32, 10>();
        }
        if (false) {
            var var_2 = var_1.d;
            let var_3 = true;
            return;
        }
    }
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1242.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) - _wgslsmith_f_op_f32(var_0.x * 1154.0))))));
    var var_3 = func_3(_wgslsmith_clamp_u32(u_input.a.x, ~firstLeadingBit(8146u), _wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(var_1.a.x, u_input.a.x)), ~44185u)), true);
    switch (var_1.c.x) {
        case 61306: {
            var var_4 = func_8(-40884, Struct_1(select(~_wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(global0[_wgslsmith_index_u32(var_1.e.x, 10u)], var_1.e.x, 89080u, 4294967295u)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 127573u, 4294967295u, 0u), var_1.a), _wgslsmith_mult_vec4_u32(vec4<u32>(58039u, 0u, 16667u, 0u), vec4<u32>(var_1.a.x, 12630u, var_1.e.x, var_1.e.x))), var_3.d), _wgslsmith_f_op_vec4_f32(-var_0), vec3<i32>(~var_3.c.x, -12935, ~var_3.c.x), var_3.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(19282u, u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(var_3.e.x, 10u)], 1u), 10u)], 0u, 96764u << (global0[_wgslsmith_index_u32(u_input.a.x, 10u)] % 32u)), abs(var_3.a | var_1.a), min(_wgslsmith_mod_vec4_u32(vec4<u32>(9633u, 7360u, 16271u, u_input.a.x), u_input.a), ~vec4<u32>(4294967295u, 4294967295u, 11477u, u_input.a.x)))), func_8(-2675, Struct_1(var_1.a, vec4<f32>(322.0, func_2(-16886, -1).b.x, 988.0, var_0.x), vec3<i32>(var_3.c.x, -33204, func_2(27203, 69741).c.x), !var_1.d, var_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_3(global0[_wgslsmith_index_u32(97398u, 10u)], var_1.d).b.x, func_3(28024u, var_3.d).b.x, _wgslsmith_div_f32(var_2.x, var_0.x)) - var_1.b.yyx), firstTrailingBit(_wgslsmith_clamp_u32(select(u_input.a.x, u_input.a.x, var_1.d), var_1.a.x, 4294967295u))).b.xzy, 0u << (global0[_wgslsmith_index_u32(select(~var_3.e.x, _wgslsmith_mod_u32(81722u, u_input.a.x), false), 10u)] % 32u));
        }
        case -18050: {
            var var_4 = vec4<i32>(-1) * -_wgslsmith_add_vec4_i32(~(-vec4<i32>(0, 60653, -1882, 1)), vec4<i32>(abs(var_3.c.x), _wgslsmith_mod_i32(2147483647, var_1.c.x), var_3.c.x, var_3.c.x));
            switch (~(var_1.c.x >> ((_wgslsmith_mult_u32(u_input.a.x, select(0u, 58193u, var_1.d)) << (_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.e.x, 47795u, u_input.a.x, 4294967295u), vec4<u32>(var_3.a.x, global0[_wgslsmith_index_u32(var_3.e.x, 10u)], u_input.a.x, 70212u)), vec4<u32>(22155u, 4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(var_1.e.x, 10u)])) % 32u)) % 32u))) {
                case -47381: {
                    var_1 = func_8(6094, func_8(-31175, func_8(var_4.x, Struct_1(vec4<u32>(43822u, var_1.a.x, var_3.e.x, global0[_wgslsmith_index_u32(var_1.a.x, 10u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14946u, 10u)], 10u)], 4294967295u, var_3.e.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2204.0, var_3.b.x, -462.0, 1250.0)), func_1(vec3<u32>(var_3.a.x, 57020u, u_input.a.x), vec2<u32>(43637u, var_3.a.x)), false | false, countOneBits(var_3.a)), var_0.yxy, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, 29335u, 42585u), vec3<u32>(18730u, 4294967295u, 4294967295u)) | u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, var_3.b.x, 400.0) + var_1.b.wzy), var_3.b.zxx)), ~1u), vec3<f32>(_wgslsmith_f_op_f32(round(603.0)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(var_0.x))), 1u);
                }
                case -11602: {
                    var var_5 = 2343.0;
                    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-891.0 - -1313.0), _wgslsmith_f_op_f32(var_3.b.x + var_2.x)), var_0.wx) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_3.b.x + 1025.0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.b.ww))))));
                    var var_7 = var_3.a.yxz;
                    var_4 = firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(select(i32(-1) * -2147483648, var_3.c.x, !false), _wgslsmith_mult_i32(20015, -3349)), 2147483647, var_4.x, min(-22583, abs(var_4.x))));
                    var_5 = -192.0;
                }
                default: {
                    var_1 = Struct_1(~var_1.a, vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 1419.0), _wgslsmith_f_op_f32(-var_0.x))), 1162.0), ~select(abs(abs(var_1.c)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c.x, var_3.c.x, 2147483647), vec3<i32>(1, 0, var_1.c.x), var_3.c), select(vec3<bool>(true, var_3.d, false), !vec3<bool>(var_1.d, var_1.d, var_3.d), false)), any(vec2<bool>(!var_3.d, func_3(57634u, all(vec2<bool>(true, var_1.d))).d)), max(firstLeadingBit(vec4<u32>(abs(var_3.e.x), 29373u, 69765u, 0u >> (global0[_wgslsmith_index_u32(1u, 10u)] % 32u))), _wgslsmith_add_vec4_u32(var_1.e, u_input.a)));
                }
            }
            if (false || (-24051 < _wgslsmith_clamp_i32(1, var_4.x, 1))) {
                var_3 = func_8(abs(var_3.c.x) | -11823, Struct_1(_wgslsmith_clamp_vec4_u32(func_2(abs(-2147483648), 0).a, _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(4294967295u, 1u, var_3.e.x, 22346u)) & abs(vec4<u32>(global0[_wgslsmith_index_u32(32335u, 10u)], var_1.a.x, var_3.e.x, global0[_wgslsmith_index_u32(var_3.e.x, 10u)])), countOneBits(firstLeadingBit(vec4<u32>(77076u, 4294967295u, var_1.e.x, global0[_wgslsmith_index_u32(15009u, 10u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) - var_1.b), func_9(func_2(_wgslsmith_div_i32(-30471, var_3.c.x), reverseBits(var_4.x))), func_2(_wgslsmith_clamp_i32(countOneBits(-1), var_1.c.x, _wgslsmith_div_i32(2147483647, -13800)), var_1.c.x).d, var_3.e), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.x, var_3.b.x, var_3.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - var_2.x) * var_3.b.x), -400.0), var_0.x), countOneBits(~4294967295u));
                global1 = -1339.0;
                let var_5 = Struct_1(_wgslsmith_sub_vec4_u32(~(var_1.e ^ u_input.a), vec4<u32>(var_1.a.x, 6223u, ~(u_input.a.x | 32183u), var_1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 - var_3.b)), max(var_4.yxw, func_3(~17411u ^ _wgslsmith_div_u32(var_3.e.x, 67882u), !var_3.d).c), all(!select(!vec4<bool>(var_1.d, true, false, var_3.d), vec4<bool>(var_1.d, false, false, false), func_3(65310u, false).d)), ~func_3(max(var_1.a.x, select(global0[_wgslsmith_index_u32(1u, 10u)], 21894u, false)), var_1.d & !true).a);
                global1 = -679.0;
            }
            var var_5 = !vec2<bool>(select(all(!vec4<bool>(var_1.d, true, true, false)), var_3.d, all(vec2<bool>(var_3.d, true)) && (var_0.x >= 1279.0)), !(_wgslsmith_f_op_f32(sign(-697.0)) < _wgslsmith_div_f32(var_0.x, var_3.b.x)));
        }
        case 41343: {
        }
        default: {
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(75830u, -_wgslsmith_mult_i32(-(i32(-1) * -51166), var_1.c.x), ~var_1.c.x);
}

