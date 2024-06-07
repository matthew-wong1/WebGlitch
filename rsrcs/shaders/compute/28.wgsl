// {"0:0":[115,7,53,157,102,138,178,248,14,36,186,71,111,195,244,207,107,107,177,112,226,27,123,129,96,117,47,244,12,212,23,61,148,246,214,88,24,118,36,82,86,29,171,253,104,120,98,33]}
// Seed: 571154210511061698

struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec2<i32>(10082, 2404), Struct_1(false, 1, 62105u)), Struct_4(vec2<i32>(5822, -1), Struct_1(true, 0, 85861u)), Struct_4(vec2<i32>(41380, -1), Struct_1(false, -13741, 6632u)), Struct_4(vec2<i32>(-2147483648, -8696), Struct_1(true, 10509, 0u)), Struct_4(vec2<i32>(19948, -2147483648), Struct_1(true, 0, 1u)), Struct_4(vec2<i32>(29788, 15867), Struct_1(true, 0, 34114u)), Struct_4(vec2<i32>(1, 33776), Struct_1(false, -60890, 8449u)), Struct_4(vec2<i32>(-59325, 0), Struct_1(false, 0, 22988u)), Struct_4(vec2<i32>(-2147483648, 2147483647), Struct_1(false, -10401, 76940u)), Struct_4(vec2<i32>(1, 1), Struct_1(false, 34997, 0u)), Struct_4(vec2<i32>(24563, -1), Struct_1(false, 1, 2813u)), Struct_4(vec2<i32>(0, -37313), Struct_1(false, 1, 4294967295u)), Struct_4(vec2<i32>(3631, 40469), Struct_1(false, 1, 0u)), Struct_4(vec2<i32>(67183, -2147483648), Struct_1(true, -2147483648, 2548u)), Struct_4(vec2<i32>(2147483647, 30392), Struct_1(true, 0, 13497u)), Struct_4(vec2<i32>(30650, 2147483647), Struct_1(true, 1, 0u)), Struct_4(vec2<i32>(-10649, -1), Struct_1(true, 0, 4294967295u)), Struct_4(vec2<i32>(-2147483648, 1), Struct_1(true, -35335, 1u)), Struct_4(vec2<i32>(29905, -2147483648), Struct_1(true, -4308, 0u)), Struct_4(vec2<i32>(0, 12483), Struct_1(true, 2147483647, 94967u)), Struct_4(vec2<i32>(0, -2147483648), Struct_1(false, 0, 52084u)), Struct_4(vec2<i32>(79924, -11293), Struct_1(true, 1, 17233u)), Struct_4(vec2<i32>(24207, 1), Struct_1(false, 52178, 1u)), Struct_4(vec2<i32>(-1, 2147483647), Struct_1(false, 104152, 0u)), Struct_4(vec2<i32>(1, 33486), Struct_1(false, 0, 47570u)), Struct_4(vec2<i32>(32518, -19463), Struct_1(false, -41184, 8071u)), Struct_4(vec2<i32>(-2147483648, 12545), Struct_1(true, -2147483648, 15236u)));

var<private> global2: array<vec4<f32>, 30>;

var<private> global3: u32 = 4294967295u;

var<private> LOOP_COUNTERS: array<u32, 46>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1662.0, _wgslsmith_f_op_f32(max(415.0, -369.0)), _wgslsmith_f_op_f32(1004.0 + -188.0), _wgslsmith_f_op_f32(-738.0))))));
    global2 = array<vec4<f32>, 30>();
    let var_1 = global1[_wgslsmith_index_u32(arg_3, 27u)];
    switch (~2147483647) {
        default: {
            let var_2 = Struct_3(var_0, arg_2.b, 987.0, _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, var_1.b.c), 68400u)), _wgslsmith_clamp_u32(~(arg_1 >> (4294967295u % 32u)), _wgslsmith_add_u32(~arg_1, _wgslsmith_mod_u32(u_input.b.x, 1u)), ~firstLeadingBit(30932u))));
            global3 = _wgslsmith_sub_u32(abs(0u), 362u);
            for (; ; ) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            }
            switch (_wgslsmith_dot_vec2_i32(select(-(~vec2<i32>(2147483647, arg_2.b)), ~abs(vec2<i32>(u_input.a.x, arg_2.b)), vec2<bool>(arg_2.a || arg_0, any(vec2<bool>(true, arg_2.a)))), var_1.a)) {
                case -22741: {
                    var var_3 = var_2.a;
                    global2 = array<vec4<f32>, 30>();
                }
                default: {
                    global0 = array<vec2<f32>, 11>();
                }
            }
            for (var var_3: i32; false; ) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                break;
            }
        }
    }
    let var_2 = _wgslsmith_f_op_vec2_f32(max(global0[_wgslsmith_index_u32(~arg_3, 11u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895.0, 2539.0)), _wgslsmith_f_op_vec2_f32(var_0.a.yy + vec2<f32>(1724.0, var_0.a.x))))))));
    return _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(step(861.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.x, var_2.x))))))));
}

fn func_5() -> vec3<bool> {
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    let var_0 = 18099u;
    var var_1 = Struct_3(Struct_2(vec4<f32>(-765.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -455.0), _wgslsmith_f_op_f32(min(-958.0, 637.0))), _wgslsmith_f_op_f32(func_6(any(vec2<bool>(true, false)), u_input.b.x, Struct_1(false, -2147483648, 0u), 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-143.0) + _wgslsmith_f_op_f32(trunc(-2204.0))))), u_input.e, _wgslsmith_f_op_f32(-2021.0), ~(~_wgslsmith_sub_u32(~u_input.b.x, 1u)));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        global1 = array<Struct_4, 27>();
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_2 = firstLeadingBit(min(~(vec4<u32>(1u, u_input.b.x, 29323u, var_1.d) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_0, u_input.b.x, var_1.d), vec4<u32>(var_0, 4294967295u, var_1.d, u_input.b.x)) % vec4<u32>(32u))), select(vec4<u32>(var_0, var_1.d, _wgslsmith_clamp_u32(4294967295u, var_1.d, 1u), 4294967295u), ~vec4<u32>(4300u, 28864u, 1u, 54849u), all(vec2<bool>(false, false)))));
        global0 = array<vec2<f32>, 11>();
    }
    return vec3<bool>(true, !true, false);
}

fn func_4() -> u32 {
    let var_0 = select(!(!func_5()), vec3<bool>(!false, (countOneBits(8868u) == ~u_input.b.x) || (any(vec2<bool>(true, true)) == (162.0 > -1986.0)), true), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(u_input.a, vec2<i32>(u_input.d.x, u_input.e), vec2<bool>(true, true)), vec2<i32>(u_input.a.x, 1), ~u_input.d.xx), ~(vec2<i32>(u_input.e, -2147483648) >> (vec2<u32>(53647u, 61094u) % vec2<u32>(32u)))) >= (0 << (4294967295u % 32u)));
    switch (u_input.d.x) {
        case -69863: {
            if (any(vec3<bool>(any(var_0), var_0.x, var_0.x && var_0.x))) {
                let var_1 = 518.0;
                let var_2 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_sub_i32(-17654, max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.c), vec4<i32>(2147483647, u_input.c, u_input.c, u_input.e)), ~u_input.e) | -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, 39216, u_input.a.x), vec3<i32>(-1, -53864, 13114))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_6(!false, ~u_input.b.x, Struct_1(false, u_input.c, u_input.b.x), select(0u, u_input.b.x, true))))))), (~1u >> (u_input.b.x % 32u)) ^ _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(13628u, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(43658u, 50938u, 1u), vec3<u32>(u_input.b.x, 90000u, 1u)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
                let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]))));
                global0 = array<vec2<f32>, 11>();
                global2 = array<vec4<f32>, 30>();
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
            var var_1 = true;
            if ((-84489 ^ 1) >= _wgslsmith_mod_i32(u_input.a.x, u_input.c)) {
                var var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 27u)];
                var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(var_2.b.c, 30u)] + _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~1u, 30u)] - _wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(var_2.b.c, 30u)], vec4<f32>(762.0, -1806.0, -1422.0, -1000.0))))))));
                return var_2.b.c;
            }
        }
        case -1: {
            global3 = 1u;
            let var_1 = vec4<bool>(true | true, any(!select(func_5(), select(var_0, vec3<bool>(false, var_0.x, var_0.x), var_0), var_0.x)), !var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-617.0) + _wgslsmith_f_op_f32(func_6(var_0.x, 24825u, Struct_1(var_0.x, -962, u_input.b.x), u_input.b.x)))) >= _wgslsmith_f_op_f32(-1480.0 - _wgslsmith_f_op_f32(435.0 * _wgslsmith_f_op_f32(-996.0))));
            for (var var_2 = 18626; any(select(func_5().zy, vec2<bool>(var_1.x, !var_1.x), true)); var_2 += 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
            return ~(u_input.b.x | u_input.b.x);
        }
        case -11639: {
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(abs(46562u), 30u)] - global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411.0, -392.0, -483.0, 1307.0))), var_0.x)) + _wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(0u & 0u, ~u_input.b.x)), 30u)])));
            }
            switch (_wgslsmith_clamp_i32(countOneBits(u_input.e), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(-2147483648, -2147483648)), u_input.a.x), abs(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1, 2147483647, 0, u_input.a.x)), firstLeadingBit(vec4<i32>(u_input.d.x, 2147483647, 7351, u_input.e))))) | u_input.a.x) {
                case -2147483648: {
                    return u_input.b.x;
                }
                case 30838: {
                    var var_1 = _wgslsmith_div_i32(~(-1), -33252);
                    var_1 = u_input.d.x;
                    return ~(~u_input.b.x);
                }
                case -1: {
                    global2 = array<vec4<f32>, 30>();
                    let var_1 = Struct_3(Struct_2(vec4<f32>(590.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-957.0 * 1000.0), _wgslsmith_f_op_f32(ceil(1354.0))), 1110.0, _wgslsmith_f_op_f32(-1086.0 * _wgslsmith_f_op_f32(532.0 - 366.0)))), -11570, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -991.0) * _wgslsmith_f_op_f32(-1000.0)))), ~(~u_input.b.x | 58106u));
                    global3 = var_1.d;
                }
                default: {
                    let var_1 = u_input.d.zz;
                    let var_2 = 1u;
                }
            }
            let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -782.0) - -637.0)))));
            let var_2 = u_input.b ^ vec2<u32>(0u << (u_input.b.x % 32u), ~u_input.b.x);
        }
        default: {
            for (var var_1 = -75480; var_1 == 51340; global2 = array<vec4<f32>, 30>()) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                continue;
            }
            global3 = firstTrailingBit(_wgslsmith_mod_u32(0u >> (abs(~1u) % 32u), ~u_input.b.x));
            var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(abs(u_input.b.x), 30u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-230.0) + _wgslsmith_div_f32(-149.0, -175.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1127.0))), _wgslsmith_f_op_f32(func_6(!var_0.x, u_input.b.x, Struct_1(var_0.x, u_input.e, u_input.b.x), 4294967295u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-109.0, 644.0))))))));
            global2 = array<vec4<f32>, 30>();
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
        }
    }
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(-168.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-535.0) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(359.0 - _wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1627.0), u_input.c >= u_input.a.x))));
    for (; false; ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_2 = ~select(firstLeadingBit(~(~vec4<u32>(49741u, u_input.b.x, 0u, u_input.b.x))), _wgslsmith_add_vec4_u32(select(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(42284u, 83572u, u_input.b.x, 4294967295u), vec4<bool>(var_0.x, false, var_0.x, true)), abs(vec4<u32>(u_input.b.x, u_input.b.x, 71442u, u_input.b.x))) << ((abs(vec4<u32>(4294967295u, u_input.b.x, 20816u, 1u)) >> (min(vec4<u32>(u_input.b.x, 21080u, 4294967295u, 0u), vec4<u32>(8308u, u_input.b.x, 1u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), var_0.x);
        var var_3 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(-_wgslsmith_div_i32(-1, 7777), -(60875 ^ -1)), -vec2<i32>(~(-2147483647), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, u_input.d.x, 25000, u_input.c), vec4<i32>(u_input.c, u_input.a.x, 1, u_input.a.x)), 2147483647, var_1.x < -1000.0)), abs(max(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-33869, u_input.e), vec2<i32>(-2147483648, u_input.c)), select(u_input.a, u_input.a, true)), -vec2<i32>(2147483647, u_input.d.x))));
        loop {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            global0 = array<vec2<f32>, 11>();
            let var_4 = Struct_3(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-907.0, var_1.x, 586.0, 478.0), global2[_wgslsmith_index_u32(var_2.x, 30u)]))), vec4<f32>(_wgslsmith_f_op_f32(-1058.0 - var_1.x), _wgslsmith_f_op_f32(f32(-1.0) * -1793.0), _wgslsmith_f_op_f32(trunc(-114.0)), _wgslsmith_f_op_f32(min(-1763.0, var_1.x))))), -var_3.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -974.0))), reverseBits(u_input.b.x));
        }
        for (var var_4 = u_input.c; var_4 > 38787; var_4 += 1) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            continue;
        }
        continue;
    }
    for (; true; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        var var_2 = 0u;
        let var_3 = min(u_input.b, ~u_input.b >> (~(~u_input.b) % vec2<u32>(32u)));
        var_2 = _wgslsmith_div_u32(4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, firstLeadingBit(var_3.x), 0u | 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, var_3.x, 4294967295u, 0u), vec4<u32>(0u, u_input.b.x, 4294967295u, var_3.x)) | ~vec4<u32>(u_input.b.x, u_input.b.x, var_3.x, 0u)), firstLeadingBit(u_input.b.x));
        var var_4 = _wgslsmith_sub_vec3_u32(~select(~(~vec3<u32>(42408u, u_input.b.x, 4294967295u)), abs(vec3<u32>(u_input.b.x, var_3.x, u_input.b.x)), !vec3<bool>(false, var_0.x, var_0.x)), ~(~(vec3<u32>(var_3.x, 16778u, u_input.b.x) & reverseBits(vec3<u32>(u_input.b.x, 1u, u_input.b.x)))));
    }
    return _wgslsmith_add_u32(_wgslsmith_div_u32(~81405u, u_input.b.x), ~countOneBits(min(u_input.b.x, u_input.b.x) << (u_input.b.x % 32u)));
}

fn func_7(arg_0: vec3<u32>) -> vec3<u32> {
    let var_0 = !vec3<bool>(any(select(!vec4<bool>(true, true, false, false), !vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)))), any(!vec4<bool>(true, false, true, false)), false);
    let var_1 = vec4<u32>(~(~0u), u_input.b.x, 59965u | countOneBits(0u), ~(~arg_0.x) ^ (min(_wgslsmith_div_u32(arg_0.x, 28074u), 1u) << (abs(~3635u) % 32u)));
    global0 = array<vec2<f32>, 11>();
    for (var var_2 = 13490; any(select(vec4<bool>(!true, var_0.x, 31785u == u_input.b.x, _wgslsmith_f_op_f32(func_6(false, arg_0.x, Struct_1(var_0.x, 46392, arg_0.x), arg_0.x)) <= _wgslsmith_f_op_f32(step(-1382.0, -626.0))), vec4<bool>(false || all(vec3<bool>(true, true, true)), !(true != true), !var_0.x, var_0.x), select(!(!vec4<bool>(var_0.x, var_0.x, true, true)), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, false), false), !vec4<bool>(true, var_0.x, false, var_0.x)), !vec4<bool>(true, false, true, false)))); var_2 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_3 = !any(!vec3<bool>(all(var_0.xz), !true, false));
    }
    switch (u_input.a.x) {
        case 38862: {
            switch (u_input.e ^ abs((~u_input.c >> (~11751u % 32u)) ^ u_input.e)) {
                case 2888: {
                    var var_2 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(971.0, _wgslsmith_f_op_f32(trunc(573.0)))), 1321.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(539.0, -686.0)), _wgslsmith_f_op_f32(262.0 + -997.0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-711.0))))), i32(-1) * -50536, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(754.0 * 202.0), _wgslsmith_f_op_f32(1779.0 + -1354.0))))), ~24254u);
                }
                case 18801: {
                    let var_2 = func_5();
                    let var_3 = _wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(3503, _wgslsmith_mult_i32(-1, u_input.c), u_input.e ^ -1, u_input.c), vec4<i32>(_wgslsmith_div_i32(2147483647, 17984), _wgslsmith_div_i32(u_input.c, 9083), 0, -u_input.c))), ~vec4<i32>(u_input.d.x | -u_input.a.x, firstTrailingBit(_wgslsmith_mod_i32(-32398, -2147483648)), u_input.c ^ reverseBits(u_input.e), select(u_input.a.x, u_input.d.x | 28185, all(var_2))));
                    global2 = array<vec4<f32>, 30>();
                    global2 = array<vec4<f32>, 30>();
                }
                case 4630: {
                    let var_2 = -1;
                }
                default: {
                    global0 = array<vec2<f32>, 11>();
                    global0 = array<vec2<f32>, 11>();
                }
            }
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                return arg_0;
            }
        }
        case -18860: {
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                break;
            }
        }
        case -11277: {
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                break;
            }
            switch (-u_input.a.x) {
                case 0: {
                    let var_2 = firstLeadingBit(~(-2147483648));
                    global0 = array<vec2<f32>, 11>();
                    return _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.x, ~_wgslsmith_dot_vec3_u32(arg_0, var_1.yxy), ~var_1.x), _wgslsmith_mult_vec3_u32(~firstLeadingBit(abs(var_1.yzx)), select(vec3<u32>(4294967295u, ~arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(73820u, 1u, 92983u, 44711u), var_1)), var_1.wzx, vec3<bool>(!true, -1000.0 < 301.0, !true))));
                }
                case -13921: {
                    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(var_0.x | var_0.x, 0u, Struct_1(var_0.x, u_input.e, 4294967295u), 0u)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-173.0 * -222.0) * _wgslsmith_f_op_f32(trunc(-1179.0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -915.0), _wgslsmith_f_op_f32(-571.0 * 1000.0))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_6(var_0.x, _wgslsmith_div_u32(1u, u_input.b.x), Struct_1(var_0.x, 6073, var_1.x), 51832u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-186.0, 989.0, var_0.x)) + _wgslsmith_f_op_f32(f32(-1.0) * -853.0)))))));
                }
                default: {
                    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, arg_0.x), 30u)]))), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000.0 - _wgslsmith_f_op_f32(-236.0)))) + 1000.0), abs(1u ^ 16933u));
                }
            }
        }
        default: {
        }
    }
    return arg_0;
}

fn func_8(arg_0: vec3<u32>, arg_1: Struct_2) -> vec3<bool> {
    switch (countOneBits(_wgslsmith_div_i32(u_input.c, u_input.d.x))) {
        case -7210: {
            let var_0 = Struct_4(-(~(-u_input.a)), Struct_1(!func_5().x == (_wgslsmith_f_op_f32(-359.0 * -894.0) > arg_1.a.x), -2147483648, ~11142u));
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                var var_1 = func_4();
                continue;
            }
            let var_1 = !(!select(false, !false && false, var_0.b.a));
        }
        case -1: {
            if (any(vec3<bool>(true, !(arg_1.a.x == 1000.0), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))))) && true) {
                let var_0 = Struct_4(~firstLeadingBit(~(~vec2<i32>(u_input.d.x, u_input.e))), Struct_1(func_5().x, -5163, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.x, 4294967295u, 22176u, 0u)), vec4<u32>(0u, 85073u, 19204u, arg_0.x)))));
                var var_1 = !(!false) && false;
                var var_2 = arg_1;
            }
            global1 = array<Struct_4, 27>();
            let var_0 = ~(-_wgslsmith_dot_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(-1, u_input.d.x, -88882, 40110), vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.c)), vec4<i32>(u_input.a.x, 0, u_input.d.x, 1) & vec4<i32>(u_input.d.x, u_input.c, 1, u_input.c)), ~vec4<i32>(0, 0, 66182, u_input.a.x) & ~vec4<i32>(-48558, u_input.e, -2147483648, -26586)));
            if (-2147483648 < 1) {
                global1 = array<Struct_4, 27>();
                global2 = array<vec4<f32>, 30>();
                global2 = array<vec4<f32>, 30>();
            }
        }
        case -22112: {
        }
        default: {
        }
    }
    switch (reverseBits(abs(u_input.d.x) << (~_wgslsmith_mult_u32(min(u_input.b.x, 0u), _wgslsmith_mod_u32(arg_0.x, 4294967295u)) % 32u))) {
        default: {
            switch (countOneBits(-_wgslsmith_mult_i32(u_input.d.x, -2210))) {
                case 2147483647: {
                    global0 = array<vec2<f32>, 11>();
                    var var_0 = countOneBits(firstLeadingBit(vec4<u32>(11911u, arg_0.x, reverseBits(0u), min(_wgslsmith_sub_u32(86921u, 16647u), _wgslsmith_mult_u32(arg_0.x, u_input.b.x)))));
                    var var_1 = Struct_1(func_5().x, -5827, 51197u);
                    let var_2 = Struct_1(all(vec4<bool>(false, !any(vec4<bool>(var_1.a, var_1.a, true, var_1.a)), select(true, !false, all(vec2<bool>(var_1.a, var_1.a))), !true)), var_1.b, ~(_wgslsmith_div_u32(arg_0.x << (36887u % 32u), reverseBits(30884u)) & 55036u));
                }
                case 52114: {
                    global2 = array<vec4<f32>, 30>();
                    global2 = array<vec4<f32>, 30>();
                    let var_0 = _wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)));
                }
                case 0: {
                }
                case 13645: {
                    var var_0 = _wgslsmith_mult_i32(~(-34209), countOneBits(_wgslsmith_mult_i32(_wgslsmith_add_i32(~(-66556), u_input.d.x), u_input.e)));
                    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1026.0, arg_1.a.x, arg_1.a.x, arg_1.a.x))))), u_input.e, 337.0, 0u >> (64977u % 32u));
                    var var_2 = Struct_4(u_input.a, Struct_1(false, u_input.e, 1u));
                }
                default: {
                    global3 = 0u;
                    let var_0 = countOneBits(20811) > _wgslsmith_sub_i32(~(-1), _wgslsmith_dot_vec3_i32(abs(~u_input.d), max(-vec3<i32>(-1, u_input.e, u_input.e), abs(vec3<i32>(-14038, u_input.e, u_input.c)))));
                    global1 = array<Struct_4, 27>();
                }
            }
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_0 = 116.0;
            }
            let var_0 = _wgslsmith_sub_u32(~(u_input.b.x ^ arg_0.x), reverseBits(~arg_0.x));
            let var_1 = !(!select(select(vec2<bool>(true, false), func_5().zz, false), !vec2<bool>(true, false), vec2<bool>(!true, !false)));
            var var_2 = arg_1;
        }
    }
    for (var var_0 = -59025; _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0) + _wgslsmith_f_op_f32(-arg_1.a.x)); var_0 -= 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
    }
    var var_0 = _wgslsmith_clamp_i32(~u_input.c ^ (-(~u_input.e) | ~(i32(-1) * -28157)), u_input.d.x, 5143);
    for (var var_1: i32; ; var_1 += 1) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        for (; all(vec3<bool>(!true, select(true, all(vec3<bool>(true, false, true)), !(!true)), true)); ) {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        }
    }
    return !vec3<bool>(!all(func_5().xy), any(vec3<bool>(arg_0.x >= u_input.b.x, false, u_input.e != 0)), true);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    if (arg_1.b.a) {
        switch (arg_0.b.b) {
            case 30599: {
                let var_0 = func_8(vec3<u32>(u_input.b.x, ~63720u << (arg_1.b.c % 32u), arg_0.b.c) ^ func_7(vec3<u32>(func_4(), func_4(), arg_0.b.c)), Struct_2(global2[_wgslsmith_index_u32(~(~(arg_0.b.c >> (0u % 32u))), 30u)]));
            }
            case 2147483647: {
                var var_0 = arg_1.b.c;
                let var_1 = ~(~(vec4<u32>(1u, u_input.b.x, arg_1.b.c, 31402u) ^ (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, arg_1.b.c, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 10131u, 639u)) << (~vec4<u32>(arg_1.b.c, arg_1.b.c, arg_0.b.c, arg_0.b.c) % vec4<u32>(32u)))));
            }
            default: {
                var var_0 = 1000.0;
                global2 = array<vec4<f32>, 30>();
                var var_1 = _wgslsmith_f_op_f32(f32(-1.0) * -822.0);
                global1 = array<Struct_4, 27>();
            }
        }
    }
    global2 = array<vec4<f32>, 30>();
    let var_0 = vec3<u32>(u_input.b.x, arg_0.b.c, ~(~(~_wgslsmith_div_u32(26185u, arg_1.b.c))));
    var var_1 = global1[_wgslsmith_index_u32(38747u, 27u)];
    let var_2 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-404.0)), -818.0)), _wgslsmith_f_op_f32(1860.0 - _wgslsmith_f_op_f32(-633.0 * 289.0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-626.0, 1386.0) * _wgslsmith_f_op_f32(-526.0 + -731.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(292.0, 585.0))))), _wgslsmith_clamp_i32(-23708, u_input.d.x, u_input.d.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, arg_0.b.c), max(vec2<u32>(var_1.b.c, u_input.b.x) ^ vec2<u32>(37158u, 0u), u_input.b)) % 32u), _wgslsmith_f_op_f32(min(2129.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-563.0, 252.0, arg_1.b.a)))), _wgslsmith_div_f32(_wgslsmith_div_f32(673.0, 333.0), -1000.0)))), ~firstTrailingBit(~arg_0.b.c));
    return 247.0;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(-1116.0, _wgslsmith_f_op_f32(152.0 + -132.0)));
    if (_wgslsmith_f_op_f32(var_0 + var_0) != var_0) {
        let var_1 = true;
        let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1020.0, _wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(1611, arg_0) | vec2<i32>(arg_0, arg_0), Struct_1(var_1, 0, u_input.b.x)), global1[_wgslsmith_index_u32(u_input.b.x, 27u)])))));
        for (var var_3: i32; ; var_3 += 1) {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            continue;
        }
    }
    var var_1 = var_0;
    for (; ; ) {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, -131.0, 1280.0, -496.0)))))));
        loop {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            let var_3 = vec3<bool>(!all(vec4<bool>(false & true, func_8(vec3<u32>(u_input.b.x, 58937u, 1u), Struct_2(var_2.a)).x, any(vec2<bool>(true, false)), true)), false, all(select(vec4<bool>(all(vec3<bool>(true, true, false)), func_8(vec3<u32>(u_input.b.x, 7813u, u_input.b.x), Struct_2(var_2.a)).x, all(vec4<bool>(false, false, true, false)), func_8(vec3<u32>(u_input.b.x, u_input.b.x, 0u), var_2).x), select(!vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), (2431u | u_input.b.x) >= (20606u << (u_input.b.x % 32u)))));
            let var_4 = global1[_wgslsmith_index_u32(1u, 27u)];
            let var_5 = -340.0;
            global0 = array<vec2<f32>, 11>();
        }
        if (all(vec4<bool>(!any(!vec2<bool>(false, false)), true, !false, !true))) {
            break;
        }
        var var_3 = ~149056u;
        let var_4 = ~_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(reverseBits(u_input.b.x), ~min(u_input.b.x, 4294967295u)));
    }
    var var_2 = !select(vec2<bool>(true, var_0 <= var_0), func_8(func_7(vec3<u32>(45390u, 39420u, u_input.b.x)), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-721.0, var_0, 463.0, var_0), global2[_wgslsmith_index_u32(106637u, 30u)], vec4<bool>(false, false, false, true))))).xx, vec2<bool>((true && true) & true, true));
    return var_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = arg_0.x;
    for (var var_1: i32; ; ) {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
    }
    switch (-35381) {
        case 28440: {
            let var_1 = arg_0.yw;
            global3 = 33448u;
            loop {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                global2 = array<vec4<f32>, 30>();
                continue;
            }
            let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-616.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_6(true, _wgslsmith_div_u32(0u, arg_1), Struct_1(false, 0, u_input.b.x), arg_1)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-794.0, 2290.0)) + 284.0)))), _wgslsmith_f_op_f32(func_3(Struct_4(-vec2<i32>(-42777, 0), Struct_1(arg_3, _wgslsmith_clamp_i32(arg_0.x, var_1.x, -2147483648), u_input.b.x)), global1[_wgslsmith_index_u32(abs(~arg_1), 27u)])), _wgslsmith_div_f32(1789.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(arg_3, 4294967295u, Struct_1(arg_2.x, arg_0.x, u_input.b.x), 1u)), -1095.0))));
        }
        case 51133: {
            let var_1 = 16758u;
            var var_2 = Struct_4(u_input.d.yy, Struct_1(!(!select(arg_2.x, false, arg_2.x)), _wgslsmith_div_i32(-2147483648, var_0) >> (abs(var_1 << (4294967295u % 32u)) % 32u), ~_wgslsmith_clamp_u32(u_input.b.x & u_input.b.x, u_input.b.x, _wgslsmith_add_u32(26638u, u_input.b.x))));
            switch (~var_2.b.b) {
                case 10562: {
                    global3 = _wgslsmith_mod_u32(firstTrailingBit(var_2.b.c), _wgslsmith_add_u32(var_2.b.c, countOneBits(1u)));
                    let var_3 = -1392.0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -933.0) * _wgslsmith_f_op_f32(round(-947.0))) - 645.0) + _wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(1, 34456, 0, -2147483648)), u_input.c))));
                }
                case -1: {
                }
                case -2147483648: {
                    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x), arg_1), 27u)];
                    var_2 = Struct_4(arg_0.wz, var_3.b);
                }
                case 38923: {
                    var var_3 = var_2.b;
                }
                default: {
                    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~firstTrailingBit(~1u)), var_2.b.c, abs(0u)), 27u)];
                    global1 = array<Struct_4, 27>();
                    let var_4 = global1[_wgslsmith_index_u32(0u, 27u)];
                    global3 = var_1;
                }
            }
            let var_3 = select(func_5(), !select(func_8(vec3<u32>(var_2.b.c, arg_1, 1045u) >> (vec3<u32>(var_1, 40725u, var_1) % vec3<u32>(32u)), Struct_2(global2[_wgslsmith_index_u32(arg_1, 30u)])), !vec3<bool>(arg_2.x, true, arg_3), false), vec3<bool>(func_5().x, true || arg_2.x, true));
            let var_4 = vec2<i32>(-_wgslsmith_sub_i32(arg_0.x, arg_0.x), ~(-var_0)) & u_input.d.yx;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            }
            switch (_wgslsmith_add_i32(var_0, -reverseBits(_wgslsmith_clamp_i32(abs(u_input.d.x), ~0, -2147483647)))) {
                case -17170: {
                    var var_1 = arg_1;
                    global3 = u_input.b.x;
                    global0 = array<vec2<f32>, 11>();
                }
                case 1: {
                    var var_1 = u_input.b.x;
                }
                case 22720: {
                    var var_1 = u_input.b.x;
                    global0 = array<vec2<f32>, 11>();
                    global1 = array<Struct_4, 27>();
                    let var_2 = global1[_wgslsmith_index_u32(~33958u, 27u)];
                }
                default: {
                }
            }
            let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2263.0, -1628.0, 588.0, -739.0) - vec4<f32>(1000.0, -949.0, 647.0, -1314.0))))), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(~0u >> (arg_1 % 32u), 27u)], Struct_4(u_input.d.yx, Struct_1(arg_3, 6613, arg_1))))), ~(~min(~arg_1, 1u)));
            if (!any(select(select(vec3<bool>(false, arg_2.x, arg_3), select(vec3<bool>(arg_2.x, arg_3, true), vec3<bool>(true, false, arg_2.x), true), false || arg_2.x), !(!vec3<bool>(true, false, false)), !(19076u == var_1.d)))) {
                var var_2 = ~u_input.d.xx;
                var var_3 = !(all(!select(vec4<bool>(false, arg_3, arg_3, false), vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, true, arg_3, arg_2.x))) || arg_2.x);
                return var_1.a;
            }
        }
    }
    var var_1 = _wgslsmith_f_op_f32(min(-704.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(887.0)))))))));
    var var_2 = !(!true);
    return Struct_2(vec4<f32>(1019.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1627.0, 1087.0)) - -1056.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669.0) - _wgslsmith_f_op_f32(-1100.0 - 677.0)), 243.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1831.0)))));
}

fn func_9(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> u32 {
    loop {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
        loop {
            if (LOOP_COUNTERS[30u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        }
        switch (arg_1 | u_input.e) {
            case -63093: {
                let var_0 = _wgslsmith_sub_u32(1u, abs(u_input.b.x));
                continue;
            }
            case 43751: {
            }
            case 15548: {
                global0 = array<vec2<f32>, 11>();
                var var_0 = Struct_3(func_1(-vec4<i32>(-1, u_input.d.x, ~u_input.a.x, -25505 ^ 30248), 30255u, arg_0, arg_0.x), min(2147483647 >> (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u), arg_1), arg_2.a.x, firstTrailingBit(u_input.b.x));
                break;
            }
            case 2147483647: {
                continue;
            }
            default: {
                global0 = array<vec2<f32>, 11>();
                var var_0 = min(u_input.d.zx, select(u_input.a, _wgslsmith_add_vec2_i32(u_input.a, -(~u_input.a)), (max(u_input.b.x, 12939u) << (4294967295u % 32u)) <= u_input.b.x));
                var var_1 = Struct_4(-u_input.d.yx, Struct_1(all(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), !vec4<bool>(arg_0.x, true, false, false))), _wgslsmith_mult_i32(max(-21819, u_input.e), var_0.x), u_input.b.x));
            }
        }
        global2 = array<vec4<f32>, 30>();
        for (; ; ) {
            if (LOOP_COUNTERS[31u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
            let var_0 = Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(0, u_input.a.x, -1), abs(u_input.d)) != max(2147483647, -1 << (14740u % 32u)), u_input.d.x, abs(u_input.b.x));
            let var_1 = _wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(~(-1), var_0.b, ~arg_1 << (_wgslsmith_div_u32(14779u, 4294967295u << (0u % 32u)) % 32u)), -_wgslsmith_mult_vec3_i32(vec3<i32>(15284, 55385, u_input.d.x | u_input.a.x), ~vec3<i32>(18904, -2147483648, arg_1)));
            global3 = u_input.b.x;
            global3 = select(u_input.b.x, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x)));
            let var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.xz << (vec2<u32>(var_0.c, ~4294967295u) % vec2<u32>(32u)), abs(abs(vec2<i32>(var_0.b, arg_1)))), 5660, 73150);
        }
        let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 27u)];
    }
    var var_0 = Struct_3(Struct_2(vec4<f32>(-620.0, arg_2.a.x, arg_2.a.x, -408.0)), _wgslsmith_clamp_i32(u_input.c, -_wgslsmith_sub_i32(3888, -u_input.d.x), ~(~_wgslsmith_clamp_i32(u_input.c, -1, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))), u_input.b.x);
    global0 = array<vec2<f32>, 11>();
    global2 = array<vec4<f32>, 30>();
    global2 = array<vec4<f32>, 30>();
    return ~abs(_wgslsmith_mult_u32((37033u << (1u % 32u)) << (u_input.b.x % 32u), u_input.b.x));
}

fn func_10(arg_0: u32) -> Struct_3 {
    loop {
        if (LOOP_COUNTERS[32u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
        switch (_wgslsmith_add_i32(firstTrailingBit(~_wgslsmith_dot_vec3_i32(u_input.d, u_input.d)) ^ 16942, (-u_input.d.x | (_wgslsmith_div_i32(1, 1) ^ select(u_input.e, 17354, true))) << (u_input.b.x % 32u))) {
            default: {
                let var_0 = Struct_2(global2[_wgslsmith_index_u32(1u, 30u)]);
                break;
            }
        }
        for (; ; ) {
            if (LOOP_COUNTERS[33u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
        }
        global1 = array<Struct_4, 27>();
        loop {
            if (LOOP_COUNTERS[34u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[34u] = LOOP_COUNTERS[34u] + 1u;
            global1 = array<Struct_4, 27>();
        }
    }
    var var_0 = func_1(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.c, min(-35811, u_input.e), u_input.a.x)), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.d.x, 27927)), vec2<i32>(-6629, 0)), _wgslsmith_add_i32(-2884, -u_input.e), 6453)), 28661u, func_8(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 10733u, 48371u), vec3<u32>(53805u, 109139u, 2018u))), firstLeadingBit(~vec3<u32>(1u, u_input.b.x, u_input.b.x))), Struct_2(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)] + vec4<f32>(-2114.0, -1470.0, 151.0, -1000.0)))).yx, false);
    let var_1 = vec4<f32>(-909.0, -1659.0, var_0.a.x, -934.0);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~max(4294967295u, 59980u)), 13796u), 27u)];
    let var_3 = any(!vec4<bool>(true, !(-766.0 < 682.0), abs(u_input.c) != var_2.b.b, var_2.b.a));
    return Struct_3(func_1(vec4<i32>(u_input.d.x, 2147483647, ~24535, ~reverseBits(0)), abs(_wgslsmith_clamp_u32(var_2.b.c, ~20796u, 1u)), vec2<bool>(!all(vec4<bool>(true, var_3, var_3, false)), 29926u != max(1u, 14572u)), any(!vec4<bool>(false, true, var_2.b.a, true))), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 46464, u_input.c, -32897), select(vec4<i32>(u_input.e, u_input.a.x, u_input.a.x, var_2.b.b), vec4<i32>(0, var_2.a.x, var_2.a.x, -17516), false)) >> (~(~func_7(vec3<u32>(var_2.b.c, arg_0, arg_0)).x) % 32u), _wgslsmith_f_op_f32(-var_1.x), var_2.b.c);
}

fn func_11(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    global0 = array<vec2<f32>, 11>();
    loop {
        if (LOOP_COUNTERS[35u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[35u] = LOOP_COUNTERS[35u] + 1u;
        for (var var_0 = -2147483648; false; var_0 -= 1) {
            if (LOOP_COUNTERS[36u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[36u] = LOOP_COUNTERS[36u] + 1u;
            global3 = ~1u;
        }
        var var_0 = arg_2;
        continue;
    }
    for (var var_0 = -(~arg_2.b); any(vec2<bool>(!(!false), any(select(!vec2<bool>(true, false), !vec2<bool>(false, true), !vec2<bool>(false, false))))); global1 = array<Struct_4, 27>()) {
        if (LOOP_COUNTERS[37u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[37u] = LOOP_COUNTERS[37u] + 1u;
        if (any(vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(true, 22165u, Struct_1(false, arg_1.x, u_input.b.x), arg_2.d)), _wgslsmith_f_op_f32(func_2(arg_2.b))) < 1069.0, false, ((-2147483648 ^ -8956) < 41903) & false))) {
            let var_1 = vec4<bool>(all(!select(!vec4<bool>(true, false, false, false), !vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true))), arg_2.a.a.x > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.a.x, _wgslsmith_f_op_f32(-arg_2.c))), (_wgslsmith_f_op_f32(-arg_2.a.a.x) > arg_0) && ((!false | false) & false), true);
        }
        var var_1 = arg_2;
        let var_2 = !vec4<bool>(true, u_input.c >= -2147483648, !(!true), !true & false);
        switch (min(arg_2.b, 50281)) {
            case 19143: {
                var_0 = select(arg_1.x, 184, any(select(vec4<bool>(4294967295u == 12703u, false, 30486u < 42380u, !false), vec4<bool>(!var_2.x, true, var_2.x, true), var_2)));
                var var_3 = u_input.a;
                global3 = ~(~385u);
            }
            default: {
                let var_3 = var_2.x;
                var var_4 = -vec4<i32>(arg_2.b, 2147483647, i32(-1) * -18064, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, reverseBits(-2147483648), ~(-26416), reverseBits(-41795)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-58845, -16229, 51441, u_input.a.x)), select(vec4<i32>(var_1.b, 13360, 0, -2147483648), vec4<i32>(arg_2.b, var_1.b, arg_1.x, arg_1.x), var_2))));
                let var_5 = vec4<i32>(-1) * -(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(4906, arg_2.b, arg_1.x, var_1.b)), select(vec4<i32>(13797, var_4.x, var_4.x, -35508), vec4<i32>(arg_2.b, u_input.d.x, u_input.d.x, arg_2.b), vec4<bool>(var_3, var_3, false, false))) << (~(~vec4<u32>(84675u, arg_2.d, var_1.d, 39204u)) % vec4<u32>(32u)));
                let var_6 = vec4<u32>(60078u, arg_2.d, ~0u, 0u);
                global3 = firstTrailingBit(u_input.b.x);
            }
        }
        let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.a.zxx + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.a.xzx) - vec3<f32>(734.0, -1000.0, 540.0))) - arg_2.a.a.yyx));
    }
    let var_0 = func_10(_wgslsmith_mod_u32(30998u, u_input.b.x) & 4294967295u);
    switch (_wgslsmith_mod_i32(0, 2147483647 << (var_0.d % 32u)) | firstLeadingBit(-54689)) {
        case 2147483647: {
            let var_1 = true;
            for (; ; ) {
                if (LOOP_COUNTERS[38u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[38u] = LOOP_COUNTERS[38u] + 1u;
                var var_2 = var_0;
                let var_3 = select(vec3<bool>(any(vec2<bool>(!false, select(var_1, false, false))), var_1, true), vec3<bool>(true, var_1, func_8(~(vec3<u32>(4294967295u, 0u, var_2.d) ^ vec3<u32>(u_input.b.x, 83656u, arg_2.d)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(705.0, 315.0, arg_0, -452.0)))).x), vec3<bool>(~(-2147483648) >= _wgslsmith_sub_i32(var_0.b ^ 798, _wgslsmith_add_i32(u_input.e, var_2.b)), !(!true), true));
                break;
            }
            var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a.x, 1000.0)), _wgslsmith_f_op_f32(exp2(var_0.c))), _wgslsmith_f_op_f32(f32(-1.0) * -179.0)), _wgslsmith_f_op_f32(round(551.0)), var_0.c, -376.0);
            switch (-1) {
                case -2147483648: {
                    global2 = array<vec4<f32>, 30>();
                    let var_3 = ~(50856u | ~firstLeadingBit(min(arg_2.d, 73428u)));
                }
                default: {
                    let var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(abs(max(vec4<u32>(4294967295u, u_input.b.x, var_0.d, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(44804u, 21294u, var_0.d, u_input.b.x), vec4<u32>(1u, 0u, var_0.d, arg_2.d)))), vec4<u32>(0u, func_9(func_5().zz, _wgslsmith_mod_i32(2147483647, arg_1.x), arg_2.a), 1u, _wgslsmith_clamp_u32(func_4(), min(u_input.b.x, arg_2.d), ~0u))), vec4<u32>(~(~u_input.b.x) ^ func_4(), ~(~var_0.d ^ func_10(u_input.b.x).d), u_input.b.x, func_4()), _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.d, 4294967295u, u_input.b.x, u_input.b.x), firstTrailingBit(vec4<u32>(arg_2.d, var_0.d, 0u, 0u))), select(vec4<u32>(u_input.b.x, 4294967295u, 23036u, var_0.d), vec4<u32>(13564u, 0u, arg_2.d, 4294967295u) >> (vec4<u32>(1u, 57787u, var_0.d, var_0.d) % vec4<u32>(32u)), vec4<bool>(true, var_1, var_1, var_1)) | vec4<u32>(u_input.b.x, select(4294967295u, arg_2.d, false), 4294967295u, arg_2.d)));
                    global3 = 8062u;
                    let var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1137.0, arg_0))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -896.0)))) * vec2<f32>(arg_2.c, _wgslsmith_f_op_f32(-arg_2.a.a.x))), vec2<f32>(_wgslsmith_f_op_f32(1000.0 + -455.0), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-arg_2.c))), false | any(vec3<bool>(false, var_1, false))))));
                }
            }
            for (var var_3: i32; var_3 != -40142; var_3 -= 1) {
                if (LOOP_COUNTERS[39u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[39u] = LOOP_COUNTERS[39u] + 1u;
                let var_4 = vec2<bool>(~_wgslsmith_div_i32(reverseBits(16210), 1) >= _wgslsmith_mult_i32(4018, -2147483648), _wgslsmith_f_op_f32(1241.0 - var_2.x) < _wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(~1, _wgslsmith_mult_i32(-42960, 34170)))));
            }
        }
        case -35027: {
            if (!true & (any(vec4<bool>(arg_2.c >= 461.0, all(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, false, true)), arg_1.x <= 1)) != true)) {
                let var_1 = min(_wgslsmith_mult_u32(var_0.d, abs(abs(~u_input.b.x))), ~u_input.b.x);
                let var_2 = select(select(select(select(!vec4<bool>(true, false, true, true), !vec4<bool>(false, false, false, false), 1u >= u_input.b.x), vec4<bool>(true, !true, all(vec3<bool>(true, true, false)), arg_2.d == var_0.d), vec4<bool>(false | true, false, u_input.d.x >= arg_1.x, 29826 >= arg_1.x)), select(vec4<bool>(!false, false, !true, func_8(vec3<u32>(var_1, 3338u, 33786u), Struct_2(vec4<f32>(-707.0, -330.0, -410.0, 1000.0))).x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false)), vec4<bool>(true, u_input.b.x >= 4294967295u, any(vec3<bool>(false, false, false)), true)), select(!vec4<bool>(true, false, false, false), vec4<bool>(true && true, !false, true, false | false), 13962 < arg_1.x)), !(!(!(!vec4<bool>(false, true, true, true)))), !(!(!vec4<bool>(false, false, true, false))));
            }
            let var_1 = 4294967295u;
            switch (arg_2.b) {
                case 0: {
                }
                case -1: {
                    let var_2 = vec3<f32>(1459.0, 524.0, arg_0);
                    global3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(countOneBits(arg_2.d), _wgslsmith_div_u32(var_1, 35235u), ~abs(1u)), abs(vec3<u32>(~(~9547u), _wgslsmith_div_u32(var_1, _wgslsmith_sub_u32(var_1, var_0.d)), var_1)));
                    global0 = array<vec2<f32>, 11>();
                    var var_3 = func_9(!vec2<bool>(all(vec4<bool>(true, false, false, false)), false), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, var_0.b), vec2<i32>(0, var_0.b)), arg_1, countOneBits(arg_1)), u_input.d.yz), Struct_2(var_0.a.a));
                    let var_4 = vec2<i32>(u_input.d.x, firstTrailingBit(_wgslsmith_clamp_i32(8483, ~_wgslsmith_mod_i32(arg_2.b, 11247), arg_1.x)));
                }
                default: {
                    global2 = array<vec4<f32>, 30>();
                    var var_2 = Struct_1(false, u_input.a.x, 45482u);
                }
            }
            global2 = array<vec4<f32>, 30>();
            loop {
                if (LOOP_COUNTERS[40u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[40u] = LOOP_COUNTERS[40u] + 1u;
                global2 = array<vec4<f32>, 30>();
                let var_2 = Struct_1(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-175.0)) == _wgslsmith_f_op_f32(trunc(arg_0))), ~max(1, _wgslsmith_add_i32(abs(2147483647), firstLeadingBit(-2147483648))), ~56111u);
                break;
            }
        }
        case -2147483648: {
            let var_1 = !vec4<bool>(all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), ((-65953 | -17065) <= -1) && !(!false), func_8(vec3<u32>(var_0.d, arg_2.d & 20030u, ~var_0.d), arg_2.a).x, (true && !false) | (1u >= 1u));
            var var_2 = !func_5();
        }
        default: {
            let var_1 = _wgslsmith_mult_vec2_i32(u_input.d.zy, vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0, -2147483648), vec3<i32>(35295, var_0.b, arg_2.b))), min(u_input.c, arg_2.b) >> (_wgslsmith_mult_u32(1u, arg_2.d) % 32u))) | abs(~reverseBits(select(vec2<i32>(var_0.b, -2147483648), u_input.d.xz, vec2<bool>(false, true))));
        }
    }
    return Struct_1(any(select(!func_5(), !vec3<bool>(false, false, false), any(func_5()))), 1, arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[41u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[41u] = LOOP_COUNTERS[41u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[42u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[42u] = LOOP_COUNTERS[42u] + 1u;
        global2 = array<vec4<f32>, 30>();
        global2 = array<vec4<f32>, 30>();
        var var_0 = func_11(_wgslsmith_div_f32(-817.0, _wgslsmith_f_op_f32(1074.0 + -130.0)), vec2<i32>(30297, u_input.d.x), func_10(~func_9(!vec2<bool>(true, true), ~0, func_1(vec4<i32>(43816, u_input.d.x, u_input.e, 0), 20856u, vec2<bool>(true, false), false))));
        if (var_0.a) {
        }
    }
    let var_0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, abs(u_input.b.x)), (5871u | _wgslsmith_mult_u32(4294967295u >> (u_input.b.x % 32u), func_11(-1705.0, vec2<i32>(u_input.a.x, u_input.c), Struct_3(Struct_2(global2[_wgslsmith_index_u32(0u, 30u)]), 0, -569.0, u_input.b.x)).c)) & 44739u);
    switch (u_input.d.x) {
        case 2147483647: {
            switch (i32(-1) * -_wgslsmith_clamp_i32(0, select(u_input.a.x, _wgslsmith_add_i32(u_input.e, -3317), false), ~_wgslsmith_div_i32(5083, -2147483648))) {
                default: {
                    var var_1 = func_10(func_10(~(~(u_input.b.x & u_input.b.x))).d);
                    var_1 = func_10(var_0);
                    var var_2 = func_11(_wgslsmith_div_f32(var_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + var_1.a.a.x) + _wgslsmith_f_op_f32(step(1426.0, 269.0))) * _wgslsmith_div_f32(1522.0, var_1.c))), ~vec2<i32>(-58879, ~var_1.b), Struct_3(var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(select(1, var_1.b, true), u_input.e, -6739, min(0, -37265)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1, 1, var_1.b, -31206), max(vec4<i32>(-15131, -2147483648, -2147483648, 0), vec4<i32>(var_1.b, u_input.c, u_input.a.x, -49744)))), 559.0, ~4294967295u));
                }
            }
        }
        default: {
            var var_1 = Struct_4(-vec2<i32>(-_wgslsmith_clamp_i32(-14817, 48570, u_input.d.x), -35306), func_11(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1355.0 * -1059.0) - _wgslsmith_f_op_f32(374.0 - 728.0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(186.0 + -471.0))), true)), _wgslsmith_div_vec2_i32(vec2<i32>(0, ~u_input.e), ~u_input.a), func_10(_wgslsmith_dot_vec4_u32(~vec4<u32>(20469u, u_input.b.x, 16607u, var_0), ~vec4<u32>(2714u, var_0, u_input.b.x, 14281u)))));
            var var_2 = !(~(~38375u) == func_4());
            if (any(select(select(vec4<bool>(!var_1.b.a, all(vec4<bool>(var_1.b.a, var_1.b.a, var_1.b.a, false)), var_1.b.a, all(vec3<bool>(false, var_1.b.a, var_1.b.a))), !vec4<bool>(var_1.b.a, false, true, var_1.b.a), !var_1.b.a || false), vec4<bool>(any(vec3<bool>(false, var_1.b.a, true)), var_1.b.a, false, var_1.a.x == _wgslsmith_dot_vec4_i32(vec4<i32>(-44961, 2147483647, -58429, u_input.a.x), vec4<i32>(u_input.d.x, var_1.b.b, var_1.a.x, var_1.b.b))), !true))) {
                var var_3 = _wgslsmith_mult_vec3_i32(abs(u_input.d), abs(_wgslsmith_clamp_vec3_i32(firstLeadingBit(countOneBits(vec3<i32>(u_input.e, u_input.e, 1))), u_input.d, -u_input.d)));
                let var_4 = 28576 & _wgslsmith_div_i32(-countOneBits(var_1.b.b & var_3.x), var_1.a.x);
                var var_5 = Struct_3(func_1(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, var_1.a), i32(-1) * -21951, var_1.b.b, _wgslsmith_mod_i32(var_3.x, _wgslsmith_mult_i32(u_input.e, 1))), var_1.b.c & 4294967295u, func_5().zz, any(select(vec3<bool>(var_1.b.a, var_1.b.a, var_1.b.a), func_8(vec3<u32>(1u, 1u, var_1.b.c), Struct_2(vec4<f32>(1417.0, -878.0, 1000.0, 1000.0))), !vec3<bool>(var_1.b.a, true, var_1.b.a)))), u_input.c, _wgslsmith_div_f32(-1410.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-227.0, 1256.0) * 568.0))), u_input.b.x);
            }
            let var_3 = var_1.b;
        }
    }
    for (var var_1 = -(~(~u_input.c)); var_1 < 1; var_1 += 1) {
        if (LOOP_COUNTERS[43u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[43u] = LOOP_COUNTERS[43u] + 1u;
        let var_2 = Struct_1(true | false, -1, select(var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(34493u), min(633u, var_0), var_0, u_input.b.x), ~select(vec4<u32>(21868u, 0u, var_0, 4294967295u), vec4<u32>(var_0, u_input.b.x, var_0, 0u), vec4<bool>(false, false, false, false))), !(!false)));
        continue;
    }
    for (var var_1 = -1; var_1 == 2393; var_1 -= 1) {
        if (LOOP_COUNTERS[44u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[44u] = LOOP_COUNTERS[44u] + 1u;
        let var_2 = func_11(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-638.0) * _wgslsmith_f_op_f32(step(-676.0, -411.0))))), _wgslsmith_sub_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(2147483647, -41021)) | u_input.d.yx), vec2<i32>(abs(min(2147483647, u_input.d.x)), u_input.e & u_input.d.x)), Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(-102.0, 585.0)), _wgslsmith_f_op_f32(1448.0 * 375.0), -592.0, _wgslsmith_f_op_f32(f32(-1.0) * -1147.0))), -_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1480.0))), _wgslsmith_f_op_f32(-742.0)), ~var_0));
        loop {
            if (LOOP_COUNTERS[45u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[45u] = LOOP_COUNTERS[45u] + 1u;
            let var_3 = !var_2.a;
            var var_4 = func_10(var_2.c ^ var_0);
            let var_5 = func_11(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587.0 * var_4.a.a.x)))), vec2<i32>(u_input.e, func_10(u_input.b.x).b), Struct_3(Struct_2(global2[_wgslsmith_index_u32(1u, 30u)]), var_4.b, _wgslsmith_f_op_f32(364.0 * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.c), _wgslsmith_f_op_f32(var_4.c + 1000.0)))), firstTrailingBit(~(0u << (4294967295u % 32u)))));
            let var_6 = u_input.d;
            global3 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b), 4294967295u);
        }
        var var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 27u)];
        var_1 = _wgslsmith_div_i32(i32(-1) * -_wgslsmith_add_i32(firstLeadingBit(var_2.b), 2147483647), -u_input.c);
        break;
    }
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)), vec3<u32>(var_0, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.b.x, 12669u, 34056u) % vec3<u32>(32u))) << (~4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 4294967295u) | _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b.x, 0u), vec3<u32>(1u, var_0, var_0)), func_7(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) | (vec3<u32>(var_0, 67564u, 1u) >> (vec3<u32>(1u, 36145u, 4294967295u) % vec3<u32>(32u)))), (true | all(vec2<bool>(true, true))) & all(!vec4<bool>(false, true, true, true))), ~43168u, ~(u_input.b.x << (u_input.b.x % 32u)), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.b.x, 22418u, 67135u), vec4<u32>(u_input.b.x, u_input.b.x, 39333u, u_input.b.x)) & abs(vec4<u32>(var_0, u_input.b.x, 4294967295u, u_input.b.x))) << (vec4<u32>(var_0, ~var_0 | u_input.b.x, 0u | 0u, var_0) % vec4<u32>(32u)), min(vec3<i32>(-2147483648, 0 ^ (u_input.c >> (9358u % 32u)), firstTrailingBit(u_input.c | u_input.d.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, -2147483648, u_input.c), u_input.d), -2147483648, 20403) & _wgslsmith_div_vec3_i32(u_input.d, _wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, u_input.c)))));
}

