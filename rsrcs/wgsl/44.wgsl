// {"0:0":[232,115,234,243,46,224,2,210,101,199,94,133,113,101,198,252,69,123,144,70,95,97,87,131,74,170,233,14,59,9,100,149,103,188,1,81,164,16,58,21,159,113,5,161,54,92,218,59,107,52,0,3,135,27,134,103,70,220,203,101,84,20,33,137]}
// Seed: 141757004465453831

struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, false, false, false, false, true, true, true, false, true, true, true);

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<Struct_3, 24>;

var<private> global3: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(8234u, 0u, 43081u, 0u), vec4<u32>(61415u, 1u, 22970u, 10955u), vec4<u32>(47273u, 8611u, 4618u, 0u), vec4<u32>(0u, 10489u, 17906u, 2123u), vec4<u32>(291u, 1u, 26421u, 1u), vec4<u32>(0u, 14097u, 0u, 4294967295u), vec4<u32>(85713u, 4294967295u, 4294967295u, 35224u), vec4<u32>(1u, 18416u, 42142u, 4294967295u), vec4<u32>(6552u, 34599u, 18502u, 43570u), vec4<u32>(4294967295u, 1666u, 1u, 1u), vec4<u32>(12543u, 4294967295u, 5931u, 4294967295u), vec4<u32>(79399u, 34758u, 75627u, 0u), vec4<u32>(1u, 4294967295u, 1u, 25297u), vec4<u32>(1u, 81594u, 1u, 73929u), vec4<u32>(9219u, 31614u, 4294967295u, 34366u));

var<private> LOOP_COUNTERS: array<u32, 36>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> vec4<bool> {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        }
        if (all(!vec3<bool>(!(arg_0.a.x >= arg_1), arg_2, false))) {
        }
        global2 = array<Struct_3, 24>();
    }
    for (; all(vec4<bool>(-_wgslsmith_clamp_i32(u_input.c, u_input.c, arg_1) <= _wgslsmith_clamp_i32(~arg_0.a.x, -u_input.a.x, max(arg_0.a.x, u_input.a.x)), !true, true, any(!(!vec3<bool>(global0[_wgslsmith_index_u32(64194u, 13u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]))))); ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -834.0))))) != _wgslsmith_f_op_f32(-791.0);
    switch (_wgslsmith_clamp_i32(-(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(3319, arg_1), arg_0.c.d.wx))), arg_1, arg_1)) {
        case 6233: {
            var var_1 = arg_0.b.e.xy;
        }
        case -9118: {
            let var_1 = arg_0.b;
            let var_2 = var_1;
            var var_3 = Struct_2(select(select(!vec3<bool>(false, false, var_0), select(select(vec3<bool>(var_0, global0[_wgslsmith_index_u32(6234u, 13u)], false), vec3<bool>(true, arg_2, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec3<bool>(var_0, true, global0[_wgslsmith_index_u32(4294967295u, 13u)])), !vec3<bool>(global0[_wgslsmith_index_u32(31398u, 13u)], true, true), !arg_2), global0[_wgslsmith_index_u32(abs(var_2.e.x) >> (abs(0u) % 32u), 13u)]), !select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], arg_2, true), vec3<bool>(false, arg_2, true), vec3<bool>(true, true, var_0)), select(vec3<bool>(false, true, false), vec3<bool>(true, arg_2, false), vec3<bool>(false, var_0, arg_2)), global0[_wgslsmith_index_u32(~var_2.e.x, 13u)]), select(vec3<bool>(!var_0, false, arg_2), !select(vec3<bool>(false, var_0, true), vec3<bool>(arg_2, arg_2, true), arg_2), vec3<bool>(any(vec3<bool>(var_0, arg_2, false)), arg_2, true))), !arg_2 && (20349u >= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_2.e.x, var_1.e.x))), false && global0[_wgslsmith_index_u32(61446u, 13u)], var_1.b);
            global1 = array<vec4<i32>, 16>();
        }
        case -2147483648: {
            var var_1 = -(~(-((1 ^ -1) >> (1u % 32u))));
            let var_2 = arg_0.c;
        }
        default: {
            var var_1 = u_input.a.yx;
            switch (var_1.x) {
                default: {
                    global1 = array<vec4<i32>, 16>();
                    var var_2 = global2[_wgslsmith_index_u32(~arg_0.c.e.x, 24u)];
                    let var_3 = var_0;
                }
            }
            if (arg_2) {
                let var_2 = Struct_2(select(select(select(!vec3<bool>(arg_2, global0[_wgslsmith_index_u32(0u, 13u)], arg_2), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], var_0, false), vec3<bool>(arg_2, var_0, global0[_wgslsmith_index_u32(0u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c.e.x, 13u)], global0[_wgslsmith_index_u32(13440u, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)])), !var_0), select(select(vec3<bool>(true, true, var_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], var_0, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), true), !vec3<bool>(true, var_0, global0[_wgslsmith_index_u32(arg_0.b.e.x, 13u)]), !true), _wgslsmith_f_op_f32(round(arg_0.c.b)) < 2694.0), !vec3<bool>(true, global0[_wgslsmith_index_u32(reverseBits(arg_0.b.e.x), 13u)], var_0), !(!select(vec3<bool>(true, var_0, true), vec3<bool>(arg_2, false, var_0), vec3<bool>(true, false, var_0)))), var_0, any(select(!vec2<bool>(arg_2, false), vec2<bool>(global0[_wgslsmith_index_u32(20165u, 13u)], arg_2), !true)) || select(_wgslsmith_dot_vec2_i32(vec2<i32>(-12418, -2147483648), vec2<i32>(arg_1, -1)) == arg_0.c.d.x, true, arg_2), -456.0);
                let var_3 = ~countOneBits(vec3<u32>(47959u, arg_0.b.e.x, ~(~arg_0.c.e.x)));
            }
        }
    }
    let var_1 = abs(u_input.d.x);
    return !(!select(vec4<bool>(any(vec4<bool>(false, false, var_0, var_0)), all(vec4<bool>(var_0, true, var_0, true)), all(vec3<bool>(arg_2, false, true)), !false), !select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(var_1, 13u)]), vec4<bool>(false, true, arg_2, arg_2), arg_2), global0[_wgslsmith_index_u32(22178u, 13u)]));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_3) -> i32 {
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    global2 = array<Struct_3, 24>();
    for (; all(vec4<bool>(!global0[_wgslsmith_index_u32(~(arg_3.b.e.x ^ 7821u), 13u)], true, all(func_6(Struct_3(vec2<i32>(-9629, arg_3.a.x), arg_3.c, arg_3.b), u_input.c, !true)), (i32(-1) * -arg_1.x) <= -7464)); ) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    let var_0 = ~(max(vec2<i32>(-u_input.e.x, ~1), vec2<i32>(-27023, arg_1.x) >> ((u_input.d.xz & vec2<u32>(2868u, arg_3.b.e.x)) % vec2<u32>(32u))) ^ vec2<i32>(arg_3.b.d.x, 12211));
    let var_1 = ~max(global1[_wgslsmith_index_u32(~(~(0u << (arg_3.b.e.x % 32u))), 16u)], abs(vec4<i32>(-1, var_0.x, arg_3.b.c, -1)) & vec4<i32>(-u_input.b, _wgslsmith_div_i32(u_input.c, arg_1.x), var_0.x, u_input.e.x ^ arg_1.x));
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483648, reverseBits(0 << (27091u % 32u))), var_1.x) << (max(8983u, u_input.d.x) % 32u);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    global0 = array<bool, 13>();
    var var_0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142.0 * 335.0)), u_input.c, min(global1[_wgslsmith_index_u32(0u << ((u_input.d.x ^ u_input.d.x) % 32u), 16u)], vec4<i32>(-u_input.a.x, select(~arg_2.a.x, arg_2.a.x, !true), _wgslsmith_div_i32(-2147483648 | arg_2.a.x, func_5(vec2<u32>(arg_2.c.e.x, 1u), vec3<i32>(-1, -38417, u_input.e.x), 1u, Struct_3(u_input.a.zw, Struct_1(-20076, arg_1, 0, u_input.a, u_input.d), arg_2.c))), arg_2.a.x)), vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.d.x, 29420u, u_input.d.x), arg_2.b.e.wzx), ~u_input.d.yyy)), select(abs(_wgslsmith_add_u32(72143u, arg_2.c.e.x)), u_input.d.x, any(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.c.e.x, 13u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]))), _wgslsmith_dot_vec2_u32(u_input.d.wy, arg_2.b.e.zw), u_input.d.x));
    switch (min(firstTrailingBit(-12132), reverseBits(26521))) {
        case -1: {
            let var_1 = arg_2;
        }
        case 2147483647: {
            for (; !select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, firstLeadingBit(66586u), min(u_input.d.x, 0u << (16439u % 32u))), 13u)], arg_2.b.e.x <= firstLeadingBit(1u), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(27712u, 4294967295u), 13u)] || global0[_wgslsmith_index_u32(var_0.e.x, 13u)]); ) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_1 = u_input.d;
                let var_2 = ~(~firstLeadingBit(var_1.x << (43489u % 32u))) >= _wgslsmith_dot_vec4_u32(vec4<u32>(max(~var_0.e.x, var_1.x), arg_2.b.e.x >> (0u % 32u), var_0.e.x, abs(min(u_input.d.x, 4294967295u))), _wgslsmith_div_vec4_u32(max(arg_2.c.e, u_input.d), var_0.e) | ~vec4<u32>(12612u, u_input.d.x, 1u, var_1.x));
            }
            let var_1 = arg_2.c;
            var var_2 = select(func_6(arg_2, firstLeadingBit(-(~var_1.c)), !false).wz, !(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2.b.e.x << (arg_2.b.e.x % 32u), 13u)])), !(!select(vec2<bool>(false, false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(var_0.e.x, 13u)]), true || global0[_wgslsmith_index_u32(4294967295u, 13u)])));
            switch (_wgslsmith_dot_vec4_i32(abs(var_1.d), countOneBits(_wgslsmith_mult_vec4_i32(countOneBits(select(vec4<i32>(43999, 25576, arg_2.b.d.x, var_1.d.x), vec4<i32>(2618, 172, -1, 14359), false)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1, var_0.d.x, -1, var_1.c), vec4<i32>(2147483647, arg_0, -1, var_0.a), arg_2.b.d), max(vec4<i32>(var_0.c, 49083, arg_0, var_0.d.x), vec4<i32>(arg_2.a.x, var_1.d.x, var_0.c, -25370))))))) {
                default: {
                    global3 = array<vec4<u32>, 15>();
                    global0 = array<bool, 13>();
                }
            }
        }
        case 0: {
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_1 = Struct_3(vec2<i32>(var_0.c, arg_2.a.x), Struct_1(2147483647, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), -(-1 | arg_2.a.x), ~vec4<i32>(_wgslsmith_mod_i32(-1, 15372), ~6751, -11947, 0), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(arg_2.b.e.ww, u_input.d.yx) & var_0.e.xx, arg_2.b.e.xx), 15u)]), arg_2.c);
                global3 = array<vec4<u32>, 15>();
                global3 = array<vec4<u32>, 15>();
            }
            let var_1 = arg_2.c.e.x;
            global2 = array<Struct_3, 24>();
            if (global0[_wgslsmith_index_u32(u_input.d.x, 13u)]) {
                let var_2 = _wgslsmith_f_op_f32(arg_2.c.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -2222.0));
                let var_3 = all(select(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(var_1, 13u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(8351u, 13u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 38846u), 13u)], 453.0 <= -1000.0), !(false != false)), func_6(Struct_3(vec2<i32>(0, -29368), Struct_1(-13616, var_2, -4901, vec4<i32>(-1, var_0.a, arg_0, -757), u_input.d), Struct_1(16529, -1045.0, arg_2.a.x, vec4<i32>(u_input.c, -18873, var_0.c, -2147483648), u_input.d)), abs(var_0.d.x), false).xx, vec2<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(arg_2.c.e.x, 13u)], true, true, false)), global0[_wgslsmith_index_u32(abs(~var_0.e.x), 13u)])));
                var var_4 = all(select(func_6(arg_2, var_0.d.x, var_3).xxw, select(vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(24760u, 13u)], false)), false, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), !(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.e.x, 13u)])), func_6(global2[_wgslsmith_index_u32(4294967295u << (u_input.d.x % 32u), 24u)], -2147483647, 0u == 1u).xxw), true));
                var var_5 = _wgslsmith_add_i32(0, u_input.a.x);
            }
            let var_2 = ~(~vec3<u32>(var_0.e.x, 7504u, 28137u));
        }
        case -35046: {
            for (var var_1: i32; !(!(!(countOneBits(0u) > ~4294967295u))); var_1 += 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                let var_2 = Struct_2(!func_6(global2[_wgslsmith_index_u32(2925u, 24u)], -(~(-25692)), global0[_wgslsmith_index_u32(arg_2.c.e.x, 13u)]).yww, true, any(func_6(Struct_3(abs(u_input.e.yy), Struct_1(2147483647, arg_2.c.b, -54099, vec4<i32>(var_0.a, -1, var_0.a, u_input.e.x), global3[_wgslsmith_index_u32(var_0.e.x, 15u)]), arg_2.c), arg_0, any(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(arg_2.c.e.x, 13u)], false, global0[_wgslsmith_index_u32(var_0.e.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(28142u, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)], false, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(54616u, 13u)])))).yx), _wgslsmith_f_op_f32(exp2(-2245.0)));
                var var_3 = vec3<bool>(var_2.c, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.b.e, vec4<u32>(12796u, 109454u, var_0.e.x, 20109u)), arg_2.c.e << (vec4<u32>(59677u, 39697u, u_input.d.x, 0u) % vec4<u32>(32u))) != _wgslsmith_clamp_u32(max(u_input.d.x, u_input.d.x), 24660u, ~(~26433u)), !all(var_2.a.xz));
            }
            var var_1 = ~u_input.d.x;
        }
        default: {
            let var_1 = 629.0;
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, 0u, _wgslsmith_dot_vec3_u32(~var_0.e.xzy, ~(~u_input.d.zxw)), 4294967295u), var_0.e), 13u)];
            }
            global0 = array<bool, 13>();
            let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1140.0)), _wgslsmith_div_f32(-388.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - var_1)));
        }
    }
    global0 = array<bool, 13>();
    for (var var_1 = (var_0.d.x | u_input.e.x) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 56560u), arg_2.c.e.zw, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], false)), select(var_0.e.wx, arg_2.c.e.xz, vec2<bool>(false, false))) | 56208u, 0u, 27876u) % 32u); ; global0 = array<bool, 13>()) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    return Struct_2(!func_6(arg_2, 33496, any(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)]))).xzz, global0[_wgslsmith_index_u32(reverseBits(u_input.d.x), 13u)], var_0.b >= arg_1, _wgslsmith_f_op_f32(min(arg_1, -1058.0)));
}

fn func_7(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        var var_0 = ~u_input.d.ww;
        global2 = array<Struct_3, 24>();
        var var_1 = func_4(arg_1, func_4(11363, _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-arg_3.x)), Struct_3(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(2147483647, 4669)), u_input.a.xw), Struct_1(reverseBits(u_input.c), _wgslsmith_f_op_f32(max(arg_3.x, 679.0)), ~5232, vec4<i32>(19676, u_input.c, -15240, u_input.e.x), global3[_wgslsmith_index_u32(~var_0.x, 15u)]), Struct_1(-1 & arg_1, _wgslsmith_f_op_f32(abs(-230.0)), func_5(vec2<u32>(0u, 4294967295u), vec3<i32>(arg_1, -6456, u_input.b), var_0.x, global2[_wgslsmith_index_u32(1u, 24u)]), vec4<i32>(43615, -2147483648, 34945, 3611) & vec4<i32>(27878, 2147483647, u_input.b, arg_1), u_input.d))).d, Struct_3(vec2<i32>((47482 ^ -1) >> (select(62411u, var_0.x, true) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1, u_input.b, 1), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, u_input.a.x, 0), u_input.a.wyy, u_input.a.zwz))), Struct_1(_wgslsmith_div_i32(u_input.a.x, 1) << ((116121u ^ var_0.x) % 32u), 283.0, -arg_1, ~(global1[_wgslsmith_index_u32(45792u, 16u)] >> (u_input.d % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 8774u, 0u), vec4<u32>(4294967295u, var_0.x, 4759u, u_input.d.x))), Struct_1(1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1880.0, arg_0.d) - _wgslsmith_f_op_f32(f32(-1.0) * -1585.0)), arg_1, u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u | var_0.x), 15u)])));
        break;
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
    }
    global3 = array<vec4<u32>, 15>();
    if (!false) {
        if (global0[_wgslsmith_index_u32(12103u, 13u)]) {
            let var_0 = _wgslsmith_f_op_f32(-arg_0.d);
            var var_1 = u_input.d.xx;
            var_1 = u_input.d.zz;
            let var_2 = global2[_wgslsmith_index_u32(var_1.x & 4294967295u, 24u)];
            var var_3 = arg_0.d;
        }
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            let var_0 = Struct_3(select(u_input.e.zy, ~(~u_input.a.zy), arg_0.a.zz), Struct_1(arg_1, arg_3.x, _wgslsmith_mod_i32(-2147483648, -(i32(-1) * -12721)), u_input.a, firstTrailingBit(_wgslsmith_sub_vec4_u32(u_input.d, global3[_wgslsmith_index_u32(u_input.d.x, 15u)]) | ~vec4<u32>(1u, u_input.d.x, 49548u, u_input.d.x))), Struct_1(~select(arg_1, u_input.e.x, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), 1000.0, arg_1, ~(~vec4<i32>(arg_1, 0, -30656, u_input.c)) & select(global1[_wgslsmith_index_u32(4294967295u & u_input.d.x, 16u)], max(vec4<i32>(u_input.e.x, -1, arg_1, u_input.b), vec4<i32>(32286, 1, u_input.a.x, u_input.a.x)), !true), select(min(abs(vec4<u32>(0u, 0u, 1u, 14078u)), _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(u_input.d.x, 15u)], vec4<u32>(0u, 4294967295u, u_input.d.x, 21685u))), max(_wgslsmith_div_vec4_u32(vec4<u32>(35696u, 4294967295u, 4294967295u, 7279u), global3[_wgslsmith_index_u32(34940u, 15u)]), u_input.d), true)));
            let var_1 = global2[_wgslsmith_index_u32(var_0.c.e.x, 24u)];
            global2 = array<Struct_3, 24>();
            break;
        }
        switch (-u_input.a.x) {
            case 2147483647: {
                let var_0 = vec4<i32>(-_wgslsmith_add_i32(select(_wgslsmith_div_i32(arg_1, 1), ~12138, false), arg_1), ~16698, firstTrailingBit(0), 33853);
            }
            case 37781: {
                global3 = array<vec4<u32>, 15>();
                global0 = array<bool, 13>();
                let var_0 = select(!(!(!arg_0.a.yz)), vec2<bool>((true | (arg_0.d <= arg_0.d)) & !global0[_wgslsmith_index_u32(u_input.d.x, 13u)], !((14889u ^ 4294967295u) > ~u_input.d.x)), arg_0.a.xx);
                var var_1 = global2[_wgslsmith_index_u32(77854u, 24u)];
            }
            case -1: {
            }
            default: {
                let var_0 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.d.x, 16u)]), min(u_input.c, u_input.a.x)) | -2147483648, -_wgslsmith_div_i32(_wgslsmith_add_i32(-40168, -1), -26851)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_1), vec2<i32>(u_input.b, 2147483647 & arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-629.0 * _wgslsmith_f_op_f32(floor(arg_0.d))) + -1588.0), min(2147483647, ~func_5(vec2<u32>(u_input.d.x, 1u), vec3<i32>(40841, u_input.a.x, u_input.e.x), 1u, global2[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_mod_vec4_i32(u_input.a, global1[_wgslsmith_index_u32(~(~u_input.d.x), 16u)]), select(~vec4<u32>(u_input.d.x, 1u, 65951u, 1u), u_input.d >> (select(global3[_wgslsmith_index_u32(u_input.d.x, 15u)], vec4<u32>(u_input.d.x, u_input.d.x, 2987u, u_input.d.x), arg_2) % vec4<u32>(32u)), !func_6(global2[_wgslsmith_index_u32(u_input.d.x, 24u)], 7068, arg_2))), Struct_1(-31972, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-556.0 - 328.0) - _wgslsmith_div_f32(arg_0.d, -1159.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703.0 - 319.0))), -(-u_input.c >> (_wgslsmith_sub_u32(u_input.d.x, 4294967295u) % 32u)), ~firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u >> (88191u % 32u), 16u)]), abs(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, global3[_wgslsmith_index_u32(1u, 15u)])) & _wgslsmith_clamp_vec4_u32(~global3[_wgslsmith_index_u32(17699u, 15u)], _wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(u_input.d.x, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)]), global3[_wgslsmith_index_u32(firstTrailingBit(1u), 15u)])));
            }
        }
    }
    switch (-10657) {
        case 24163: {
        }
        case 6578: {
            for (; select(true, !true, func_4(~arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2234.0 + -262.0) + arg_0.d))), Struct_3(firstTrailingBit(~vec2<i32>(arg_1, u_input.a.x)), Struct_1(0, 1157.0, u_input.a.x ^ arg_1, -global1[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 20944u), vec4<u32>(4294967295u, u_input.d.x, 0u, 4294967295u))), Struct_1(0, _wgslsmith_f_op_f32(-1000.0 - arg_0.d), ~(-22575), vec4<i32>(u_input.e.x, 2147483647, arg_1, -2147483648), firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, 55592u, 1u))))).a.x); ) {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                global3 = array<vec4<u32>, 15>();
            }
            switch (13512) {
                case 27531: {
                    let var_0 = Struct_3(~vec2<i32>(max(_wgslsmith_sub_i32(u_input.a.x, u_input.b), ~arg_1), -(-30614 >> (1u % 32u))), Struct_1(arg_1, 2274.0, arg_1, -(~global1[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 65260u), u_input.d)), vec4<u32>(firstLeadingBit(19201u), u_input.d.x, u_input.d.x, u_input.d.x))), Struct_1(_wgslsmith_mult_i32(38971, abs(-13491)), _wgslsmith_f_op_f32(-arg_0.d), arg_1, ~firstTrailingBit(min(global1[_wgslsmith_index_u32(46441u, 16u)], global1[_wgslsmith_index_u32(u_input.d.x, 16u)])), global3[_wgslsmith_index_u32(~u_input.d.x | _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.d.x, u_input.d.x)), 15u)]));
                    var var_1 = u_input.d.xyx;
                }
                case 1: {
                    var var_0 = _wgslsmith_div_vec4_i32(u_input.a, ~countOneBits(vec4<i32>(arg_1, u_input.b, arg_1, u_input.c) >> (firstLeadingBit(u_input.d) % vec4<u32>(32u))));
                    let var_1 = -(~(reverseBits(-u_input.a.x) ^ var_0.x));
                    global1 = array<vec4<i32>, 16>();
                }
                case -2147483648: {
                    global1 = array<vec4<i32>, 16>();
                    var var_0 = u_input.b;
                    let var_1 = arg_0.d;
                }
                case 2147483647: {
                    global3 = array<vec4<u32>, 15>();
                }
                default: {
                    let var_0 = u_input.d.x;
                    global0 = array<bool, 13>();
                }
            }
            global3 = array<vec4<u32>, 15>();
            var var_0 = Struct_3(-(~firstTrailingBit(~vec2<i32>(0, 25999))), Struct_1(abs(arg_1 >> (~u_input.d.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -484.0)), 49340, min(reverseBits(global1[_wgslsmith_index_u32(8530u >> (u_input.d.x % 32u), 16u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, u_input.b, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, u_input.e.x, arg_1, -80123), vec4<i32>(6121, 0, 2147483647, -72451)), vec4<i32>(1, -1, -2147483648, arg_1))), u_input.d ^ u_input.d), Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, 2147483647, 9529, u_input.b) ^ ~vec4<i32>(u_input.c, arg_1, arg_1, 2147483647), firstTrailingBit(vec4<i32>(u_input.a.x, 9356, 0, -5503) >> (global3[_wgslsmith_index_u32(0u, 15u)] % vec4<u32>(32u)))), arg_3.x, func_5(~vec2<u32>(1u, u_input.d.x), max(vec3<i32>(13371, 5415, arg_1), u_input.e) | ~vec3<i32>(u_input.e.x, 12703, 1), u_input.d.x, global2[_wgslsmith_index_u32((19118u << (u_input.d.x % 32u)) >> ((u_input.d.x & 1u) % 32u), 24u)]), vec4<i32>(0, -16979, u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(16044u, u_input.d.x), u_input.d.zx) % 32u), _wgslsmith_sub_i32(-u_input.e.x, ~(-2147483648))), ~(~vec4<u32>(u_input.d.x, 4294967295u, 0u, 14128u)) << (global3[_wgslsmith_index_u32(max(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), u_input.d.yz)), 15u)] % vec4<u32>(32u))));
        }
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                let var_0 = Struct_1(u_input.b, 1000.0, ~(-22978), -global1[_wgslsmith_index_u32(~u_input.d.x, 16u)], ~u_input.d);
                global0 = array<bool, 13>();
                let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(var_0.c, 707.0, Struct_3(u_input.a.wy, Struct_1(arg_1, arg_0.d, u_input.c, vec4<i32>(0, u_input.c, arg_1, -2147483648), vec4<u32>(35993u, u_input.d.x, 0u, 1075u)), Struct_1(arg_1, arg_3.x, u_input.a.x, vec4<i32>(arg_1, var_0.c, -2147483648, -1), var_0.e))).d * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(115.0))))))));
                global2 = array<Struct_3, 24>();
            }
            let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(135.0, 1425.0, _wgslsmith_f_op_f32(-1869.0)), arg_3.ywx, arg_0.a)), arg_3.yzw, func_6(Struct_3(abs(u_input.a.wy), Struct_1(2147483647, 1172.0, arg_1, u_input.a, global3[_wgslsmith_index_u32(u_input.d.x, 15u)]), Struct_1(arg_1, arg_3.x, u_input.e.x, vec4<i32>(-26635, -13546, 2147483647, u_input.e.x), global3[_wgslsmith_index_u32(u_input.d.x, 15u)])), ~_wgslsmith_sub_i32(24363, -1), global0[_wgslsmith_index_u32(min(u_input.d.x << (u_input.d.x % 32u), u_input.d.x), 13u)]).x))));
            if (arg_0.a.x) {
                var var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(~global3[_wgslsmith_index_u32(1u, 15u)], vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.d.x))), global3[_wgslsmith_index_u32(4294967295u >> ((0u << (_wgslsmith_sub_u32(u_input.d.x, u_input.d.x) % 32u)) % 32u), 15u)])), 24u)];
                let var_2 = Struct_2(vec3<bool>(~0u > ~4294967295u, any(!(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.c.e.x, 13u)], false, false))), !any(!vec2<bool>(global0[_wgslsmith_index_u32(19958u, 13u)], true))), !global0[_wgslsmith_index_u32(79294u, 13u)], !any(arg_0.a.zx), var_1.b.b);
                let var_3 = vec4<u32>(countOneBits(61249u), ~(abs(var_1.b.e.x) << (~1u % 32u)) >> (~(~u_input.d.x) % 32u), ~0u, 35535u);
            }
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                var var_1 = global2[_wgslsmith_index_u32(4294967295u, 24u)];
                break;
            }
            if (_wgslsmith_div_i32(-_wgslsmith_div_i32(1, 6587 >> (u_input.d.x % 32u)), ~u_input.c) == -1622) {
                let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + arg_3.x))));
            }
        }
        case 10421: {
            var var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -517.0);
            for (; arg_2; ) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(max(-453.0, -1021.0)))), 857.0));
            }
        }
        default: {
            let var_0 = ~(_wgslsmith_dot_vec4_u32(u_input.d, select(vec4<u32>(44994u, 26421u, 4294967295u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 23546u), !vec4<bool>(arg_2, arg_2, false, arg_2))) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(~u_input.d.x, u_input.d.x, 1u), firstTrailingBit(u_input.d.x)) % 32u));
            if (!false) {
            }
            var var_1 = 33092;
            global1 = array<vec4<i32>, 16>();
            for (var var_2: i32; var_2 == 4070; var_2 += 1) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(0, _wgslsmith_mod_i32(19400, u_input.a.x), abs(25470), _wgslsmith_sub_i32(u_input.e.x, 18638)), -u_input.a), vec4<i32>(~(~0), -(~0), -17875, 27888)), arg_0.d, _wgslsmith_mult_i32(-max(-arg_1, arg_1), abs(firstTrailingBit(24223)) ^ ~abs(12837)), global1[_wgslsmith_index_u32(max(var_0, var_0), 16u)], vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, ~(10415u | var_0)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(18749u, u_input.d.x, 26345u, 37023u), u_input.d), _wgslsmith_mult_u32(u_input.d.x | 1u, max(1u, u_input.d.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(min(var_0, var_0), u_input.d.x), u_input.d.wx), abs(~0u | firstTrailingBit(u_input.d.x))));
                let var_4 = func_4(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -791.0)), Struct_3(reverseBits(~(vec2<i32>(var_3.a, -25008) << (vec2<u32>(0u, 27646u) % vec2<u32>(32u)))), var_3, Struct_1(17615, _wgslsmith_f_op_f32(-var_3.b), ~_wgslsmith_sub_i32(2147483647, arg_1), vec4<i32>(-42987, 2147483647, firstLeadingBit(var_3.a), _wgslsmith_div_i32(u_input.a.x, 0)), ~_wgslsmith_clamp_vec4_u32(u_input.d, global3[_wgslsmith_index_u32(4294967295u, 15u)], vec4<u32>(43014u, 0u, 37111u, 4294967295u)))));
                let var_5 = u_input.d.x;
                return Struct_1(~_wgslsmith_div_i32(var_3.d.x, -u_input.e.x) & ~1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(757.0)), -1811.0)))), u_input.e.x, vec4<i32>(_wgslsmith_mod_i32(arg_1, -(~(-8692))), _wgslsmith_mult_i32(var_3.a, _wgslsmith_dot_vec3_i32(var_3.d.wwx, var_3.d.zzz)), arg_1, u_input.b), _wgslsmith_sub_vec4_u32(var_3.e, countOneBits(reverseBits(var_3.e) | min(var_3.e, vec4<u32>(var_0, var_3.e.x, 53399u, 23198u)))));
            }
        }
    }
    return Struct_1(~(-2147483648 ^ (_wgslsmith_sub_i32(-2147483648, 0) << (~14652u % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-459.0, arg_0.d))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224.0) - _wgslsmith_f_op_f32(-1082.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x))))))), 0, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.e.x, u_input.e.x, arg_1, 37135)), u_input.a), countOneBits(reverseBits(vec4<i32>(u_input.a.x, arg_1, 2147483647, arg_1)))), ~(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(39308u, u_input.d.x, u_input.d.x, 4294967295u), vec4<u32>(3262u, 4294967295u, u_input.d.x, 81448u)))));
}

fn func_8(arg_0: i32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_3, 24>();
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        global1 = array<vec4<i32>, 16>();
    }
    switch (64570) {
        default: {
            let var_0 = u_input.d.x;
            var var_1 = Struct_1(abs(-2147483648), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, arg_3.b))))), 1, ~vec4<i32>(arg_0, firstTrailingBit(-1) | arg_3.a, -1, _wgslsmith_mult_i32(~arg_3.d.x, -1)), u_input.d);
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var_1 = Struct_1(var_1.d.x, _wgslsmith_f_op_f32(round(-126.0)), u_input.b >> (~0u % 32u), global1[_wgslsmith_index_u32(~0u, 16u)], min(func_7(func_4(-2147483648 ^ -32570, _wgslsmith_f_op_f32(step(arg_3.b, arg_3.b)), global2[_wgslsmith_index_u32(u_input.d.x, 24u)]), ~(-15776 ^ -2147483648), !(!false), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, 200.0, -900.0, 887.0))))).e, firstTrailingBit(vec4<u32>(arg_3.e.x, var_0 >> (var_1.e.x % 32u), _wgslsmith_mult_u32(1u, 0u), 34673u | var_0))));
                break;
            }
            let var_2 = Struct_3(vec2<i32>(0, 2147483647) ^ ~_wgslsmith_div_vec2_i32(arg_3.d.zy, vec2<i32>(u_input.b, 9352)), Struct_1(countOneBits(0) << (var_0 % 32u), var_1.b, 1, max(-arg_3.d, vec4<i32>(_wgslsmith_div_i32(1, arg_3.a), _wgslsmith_clamp_i32(arg_0, u_input.e.x, 707), arg_3.d.x, arg_0)), vec4<u32>(select(~arg_3.e.x, abs(57643u), 0 <= -15867), min(arg_3.e.x, arg_3.e.x) & var_1.e.x, ~(var_1.e.x | var_0), ~arg_3.e.x | abs(44434u))), Struct_1(8523, func_4(arg_0, func_4(2147483647, arg_3.b, global2[_wgslsmith_index_u32(0u, 24u)]).d, Struct_3(min(u_input.e.xy, var_1.d.yy), func_7(Struct_2(vec3<bool>(true, arg_1, false), global0[_wgslsmith_index_u32(var_1.e.x, 13u)], false, -699.0), 2147483647, false, vec4<f32>(arg_2.x, 1000.0, arg_3.b, arg_2.x)), func_7(Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 13u)], false), arg_1, false, arg_3.b), 1, false, vec4<f32>(arg_2.x, 250.0, -106.0, arg_2.x)))).d, var_1.c, vec4<i32>(arg_0, min(select(arg_0, 5632, global0[_wgslsmith_index_u32(1u, 13u)]), 1), -47913, u_input.c), abs(_wgslsmith_sub_vec4_u32(var_1.e, ~vec4<u32>(36762u, 1u, var_1.e.x, 0u)))));
        }
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        global3 = array<vec4<u32>, 15>();
        let var_0 = Struct_3(vec2<i32>(abs(_wgslsmith_div_i32(39990 & arg_3.d.x, firstLeadingBit(arg_3.a))), -2147483648), arg_3, arg_3);
    }
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(140.0 * arg_2.x), -771.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))));
    return arg_3;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> f32 {
    switch (u_input.c) {
        case 25405: {
            var var_0 = Struct_3(vec2<i32>(arg_2.x, u_input.e.x), func_8(-4184, arg_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(702.0, 511.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1777.0)), vec2<f32>(-123.0, 1329.0), vec2<bool>(arg_0, all(vec4<bool>(arg_0, false, true, false))))), func_7(func_4(-5960, _wgslsmith_f_op_f32(f32(-1.0) * -837.0), global2[_wgslsmith_index_u32(0u, 24u)]), arg_2.x, global0[_wgslsmith_index_u32(0u, 13u)] || (false | true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(195.0, 907.0, 942.0, -197.0))))), func_8(-9526, select(!true || global0[_wgslsmith_index_u32(arg_1, 13u)], !(global0[_wgslsmith_index_u32(1u, 13u)] | global0[_wgslsmith_index_u32(4294967295u, 13u)]), !any(vec3<bool>(true, arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(672.0, -138.0)) - vec2<f32>(-1361.0, -579.0)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(783.0, 719.0)))))), func_7(func_4(2147483647, _wgslsmith_f_op_f32(ceil(484.0)), global2[_wgslsmith_index_u32(arg_1 & 20463u, 24u)]), 1, any(!vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(916.0, -708.0, 1000.0, -277.0)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1114.0, -1973.0, -165.0, 390.0)))))));
            let var_1 = -(~vec4<i32>(~arg_2.x, arg_2.x, arg_2.x, 17262));
            var_0 = global2[_wgslsmith_index_u32(20117u, 24u)];
            global3 = array<vec4<u32>, 15>();
        }
        case -2147483648: {
            global1 = array<vec4<i32>, 16>();
        }
        case 2147483647: {
        }
        default: {
            loop {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                var var_0 = Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wx, -vec2<i32>(arg_2.x, u_input.a.x)), _wgslsmith_clamp_i32(max(max(7648, 2147483647), -u_input.b), -17041, u_input.e.x)), func_7(Struct_2(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], arg_0, global0[_wgslsmith_index_u32(arg_1, 13u)]), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 13u)]), !arg_0), !(arg_0 | false), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(853.0, 1332.0, true))))), -4341, any(!vec2<bool>(arg_0, true)) | true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(112.0, 1724.0, 526.0, 1000.0))))), func_8(~_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647, u_input.a.x, -7681, u_input.c), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(arg_1, 16u)], vec4<i32>(1, 37919, u_input.a.x, 1))), !(!(u_input.d.x == u_input.d.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1253.0 + -1979.0)), -825.0), func_8(_wgslsmith_mod_i32(-32335, -2147483648), arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-690.0, -1944.0), vec2<f32>(1261.0, -1090.0), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000.0, 253.0) + vec2<f32>(-1968.0, 203.0))), func_8(-1, true && arg_0, vec2<f32>(-184.0, 887.0), func_7(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 13u)], false, arg_0), global0[_wgslsmith_index_u32(1u, 13u)], arg_0, 600.0), u_input.a.x, true, vec4<f32>(-1622.0, 976.0, -349.0, -1750.0))))));
            }
            global3 = array<vec4<u32>, 15>();
        }
    }
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
    }
    global1 = array<vec4<i32>, 16>();
    let var_0 = u_input.a.x;
    for (var var_1 = 2147483647; !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.xwy, vec3<u32>(max(abs(arg_1), func_7(Struct_2(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], arg_0), arg_0, false, 383.0), arg_2.x, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], vec4<f32>(359.0, -363.0, 1507.0, 727.0)).e.x), _wgslsmith_mod_u32(4294967295u, 1u) ^ ~arg_1, ~firstLeadingBit(65222u))), 13u)]; var_1 += 1) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        if (arg_0) {
            global3 = array<vec4<u32>, 15>();
            global3 = array<vec4<u32>, 15>();
            global2 = array<Struct_3, 24>();
        }
    }
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(129.0, -1000.0))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1063.0 - 2254.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(989.0, -531.0))), false)) - _wgslsmith_f_op_f32(773.0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(739.0)), _wgslsmith_div_f32(108.0, -1000.0)))));
}

fn func_9(arg_0: i32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    let var_0 = arg_2;
    let var_1 = func_6(Struct_3(reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1, -2147483648), u_input.e.zz), countOneBits(u_input.e.yz))), Struct_1(-(1 << (0u % 32u)), arg_2, _wgslsmith_add_i32(u_input.e.x, func_5(u_input.d.yz, u_input.e, u_input.d.x, Struct_3(u_input.e.zx, Struct_1(arg_0, var_0, arg_0, u_input.a, global3[_wgslsmith_index_u32(u_input.d.x, 15u)]), Struct_1(u_input.b, 452.0, arg_0, vec4<i32>(u_input.a.x, -24969, 31015, arg_0), global3[_wgslsmith_index_u32(71417u, 15u)])))), vec4<i32>(-1) * -vec4<i32>(arg_0, -5653, u_input.c, arg_0), ~global3[_wgslsmith_index_u32(4294967295u << (1u % 32u), 15u)]), Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(13026, -4651, -1), max(u_input.a.ywz, vec3<i32>(u_input.b, u_input.e.x, -17001))), _wgslsmith_f_op_f32(floor(713.0)), -34870 & arg_0, vec4<i32>(u_input.c, i32(-1) * -21772, firstTrailingBit(46650), 48015), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 44106u, 57267u, arg_1.x), vec4<u32>(arg_1.x, u_input.d.x, arg_1.x, u_input.d.x)) | vec4<u32>(u_input.d.x, 1u, u_input.d.x, arg_1.x))), u_input.b, all(vec2<bool>(all(!vec2<bool>(true, global0[_wgslsmith_index_u32(4761u, 13u)])), false))).wxz;
    global1 = array<vec4<i32>, 16>();
    switch (1) {
        default: {
            let var_2 = func_8(~reverseBits(i32(-1) * -1), func_4(_wgslsmith_mod_i32(u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, 1), u_input.a.zyy), arg_0)), _wgslsmith_f_op_f32(-1416.0 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -1015.0), _wgslsmith_f_op_f32(func_3(true, u_input.d.x, vec3<i32>(u_input.c, arg_0, arg_0)))))), Struct_3(~(-u_input.a.zx), Struct_1(arg_0, arg_3.x, arg_0, min(vec4<i32>(665, 17537, u_input.c, -51804), vec4<i32>(arg_0, 74639, u_input.c, arg_0)), _wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(arg_1.x, 15u)], vec4<u32>(arg_1.x, 1u, 0u, 1u))), Struct_1(i32(-1) * -1, arg_3.x, -u_input.e.x, vec4<i32>(u_input.e.x, -34983, -73262, arg_0) & global1[_wgslsmith_index_u32(u_input.d.x, 16u)], vec4<u32>(21520u, u_input.d.x, u_input.d.x, 4294967295u)))).c, arg_3, Struct_1(arg_0, _wgslsmith_div_f32(-1680.0, 1646.0), arg_0, global1[_wgslsmith_index_u32(~(~(u_input.d.x ^ 0u)), 16u)], ~(~select(arg_1, u_input.d, vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], var_1.x, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(arg_1.x, 13u)])))));
            switch ((i32(-1) * -1) ^ -(select(i32(-1) * -18928, -28326, 0u != 30851u) ^ 13708)) {
                case 2147483647: {
                    global3 = array<vec4<u32>, 15>();
                    global3 = array<vec4<u32>, 15>();
                    var var_3 = global2[_wgslsmith_index_u32(0u, 24u)];
                    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1343.0))), func_8(arg_0, arg_2 > 256.0, _wgslsmith_f_op_vec2_f32(arg_3 + arg_3), Struct_1(u_input.c, -990.0, arg_0, vec4<i32>(-2147483648, -2147483648, arg_0, 12555), arg_1)).b)), -750.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + func_8(0, true, vec2<f32>(var_2.b, arg_2), Struct_1(63024, -916.0, var_3.b.a, vec4<i32>(var_3.b.a, -1, arg_0, var_2.d.x), u_input.d)).b)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -839.0, 1108.0, arg_2) - vec4<f32>(arg_3.x, var_2.b, var_3.b.b, 1000.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(386.0, var_3.b.b, arg_2, var_2.b) - vec4<f32>(arg_3.x, arg_2, -1787.0, var_0))))))));
                }
                default: {
                    var var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.d.x ^ (42434u >> (~24575u % 32u)))), 13u)];
                    global3 = array<vec4<u32>, 15>();
                    global1 = array<vec4<i32>, 16>();
                    global0 = array<bool, 13>();
                    let var_4 = reverseBits(var_2.d);
                }
            }
            let var_3 = func_4(_wgslsmith_sub_i32(firstLeadingBit(-15228), 15155), -1437.0, global2[_wgslsmith_index_u32(u_input.d.x, 24u)]);
            for (var var_4 = 2147483647; var_4 == 1; ) {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                break;
            }
            for (var var_4: i32; false; global0 = array<bool, 13>()) {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                let var_5 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-268.0 + -1000.0))))), -694.0);
                var var_6 = Struct_1(0, _wgslsmith_f_op_f32(floor(arg_3.x)), arg_0 | -var_2.d.x, -(~min(var_2.d, _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-20804, var_2.d.x, 33880, 5983)))), ~(max(_wgslsmith_div_vec4_u32(global3[_wgslsmith_index_u32(var_2.e.x, 15u)], vec4<u32>(var_2.e.x, 0u, 36463u, 1u)), u_input.d & vec4<u32>(1u, 17703u, 42755u, var_2.e.x)) | ~vec4<u32>(u_input.d.x, arg_1.x, arg_1.x, 0u)));
            }
        }
    }
    switch (arg_0) {
        case 0: {
            for (var var_2 = -1; ; global2 = array<Struct_3, 24>()) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                break;
            }
            global3 = array<vec4<u32>, 15>();
        }
        case 27817: {
            if (!true) {
                global2 = array<Struct_3, 24>();
                let var_2 = select(!(!vec4<bool>(true, all(var_1.yx), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 13u)], true, global0[_wgslsmith_index_u32(1u, 13u)], false)), !true)), !select(select(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(9202u, 13u)], true, global0[_wgslsmith_index_u32(64322u, 13u)]), !vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(1u, 13u)], true, global0[_wgslsmith_index_u32(2888u, 13u)]), false), vec4<bool>(true, true != global0[_wgslsmith_index_u32(0u, 13u)], !var_1.x, false), vec4<bool>(false, all(vec4<bool>(true, var_1.x, global0[_wgslsmith_index_u32(arg_1.x, 13u)], true)), all(var_1.yy), !global0[_wgslsmith_index_u32(28265u, 13u)])), func_6(global2[_wgslsmith_index_u32(abs(select(func_8(arg_0, var_1.x, vec2<f32>(679.0, arg_2), Struct_1(24985, -2396.0, arg_0, vec4<i32>(21817, -19560, arg_0, -21414), vec4<u32>(arg_1.x, 17514u, arg_1.x, 0u))).e.x, func_7(Struct_2(var_1, true, true, arg_3.x), arg_0, var_1.x, vec4<f32>(638.0, var_0, 1830.0, 1000.0)).e.x, global0[_wgslsmith_index_u32(1u, 13u)])), 24u)], -min(_wgslsmith_mod_i32(u_input.c, u_input.a.x), 2147483647), any(var_1)));
            }
            var var_2 = u_input.a.zyw;
            for (var var_3: i32; var_3 != 53164; var_3 -= 1) {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                let var_4 = func_7(Struct_2(func_6(global2[_wgslsmith_index_u32(40308u, 24u)], u_input.e.x, !true).yzz, (_wgslsmith_div_i32(arg_0, arg_0) > var_2.x) || (_wgslsmith_f_op_f32(-arg_2) >= arg_2), !false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0))))))), ~func_5(~abs(arg_1.yw), abs(-u_input.e), 7861u, Struct_3(vec2<i32>(arg_0, 20028), func_7(Struct_2(var_1, var_1.x, var_1.x, arg_2), arg_0, true, vec4<f32>(arg_3.x, arg_2, -1166.0, -1505.0)), Struct_1(u_input.e.x, -514.0, -1, global1[_wgslsmith_index_u32(u_input.d.x, 16u)], global3[_wgslsmith_index_u32(18132u, 15u)]))), var_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(155.0, arg_3.x, _wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(1119.0 - 276.0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 2037.0, arg_3.x, arg_3.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_2, arg_3.x, -1000.0), vec4<f32>(1606.0, -919.0, -391.0, var_0))))));
                var var_5 = (arg_3.x <= -1956.0) != (~(~(34037u & 27044u)) > _wgslsmith_div_u32(func_8(arg_0, false, arg_3, func_7(Struct_2(var_1, true, var_1.x, arg_3.x), -26672, var_1.x, vec4<f32>(250.0, arg_2, arg_2, -890.0))).e.x, var_4.e.x | ~51714u));
                let var_6 = -(~28911);
                var_5 = !(countOneBits(u_input.d.x) == 89583u);
            }
            let var_3 = select(!vec2<bool>(_wgslsmith_add_u32(40341u, 0u) != 25731u, arg_1.x <= u_input.d.x), var_1.zx, false);
            let var_4 = func_8(arg_0, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(-254.0)), arg_2))), Struct_1(arg_0, arg_3.x, -arg_0, ~_wgslsmith_add_vec4_i32(u_input.a & u_input.a, vec4<i32>(u_input.b, arg_0, var_2.x, arg_0)), arg_1));
        }
        case 2147483647: {
            switch (u_input.b) {
                case -2147483648: {
                    global0 = array<bool, 13>();
                    global3 = array<vec4<u32>, 15>();
                    global2 = array<Struct_3, 24>();
                    let var_2 = _wgslsmith_f_op_f32(282.0 - var_0);
                }
                case 1: {
                    let var_2 = vec3<f32>(441.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(-arg_0, 1319.0, global2[_wgslsmith_index_u32(reverseBits(arg_1.x), 24u)]).d) + 1215.0), var_0);
                }
                case 6342: {
                    var var_2 = u_input.a.yz;
                    var_2 = select(vec2<i32>(-_wgslsmith_div_i32(i32(-1) * -5837, ~(-55051)), var_2.x), -min(-u_input.e.xx, firstTrailingBit(vec2<i32>(u_input.e.x, u_input.b) | u_input.a.wz)), any(vec2<bool>(all(!vec3<bool>(var_1.x, false, var_1.x)), all(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(arg_1.x, 13u)], global0[_wgslsmith_index_u32(arg_1.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])))));
                    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-435.0, arg_3.x, -109.0) * vec3<f32>(734.0, arg_2, 548.0))))));
                }
                default: {
                    let var_2 = -1;
                }
            }
        }
        default: {
            switch ((~abs(_wgslsmith_div_i32(u_input.e.x, u_input.e.x)) & ~u_input.e.x) << (~abs(~(~34803u)) % 32u)) {
                case 35943: {
                    global1 = array<vec4<i32>, 16>();
                    global1 = array<vec4<i32>, 16>();
                    var var_2 = Struct_3(u_input.a.ww, func_8(arg_0, _wgslsmith_clamp_i32(-56832 ^ -11410, u_input.e.x, -arg_0) > -7130, vec2<f32>(-1371.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-757.0))))), Struct_1(-countOneBits(u_input.a.x), var_0, 37476, func_7(Struct_2(vec3<bool>(var_1.x, false, global0[_wgslsmith_index_u32(40365u, 13u)]), false, true, var_0), arg_0, var_1.x, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, var_0, 1016.0, arg_3.x), vec4<f32>(arg_3.x, arg_2, var_0, -697.0))).d, select(u_input.d, ~global3[_wgslsmith_index_u32(u_input.d.x, 15u)], select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], true, true, var_1.x), vec4<bool>(global0[_wgslsmith_index_u32(4706u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], var_1.x, global0[_wgslsmith_index_u32(arg_1.x, 13u)]), false)))), Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(arg_0, -1, 3955)), ~vec3<i32>(-1, u_input.b, arg_0), ~u_input.e), u_input.e), func_8((arg_0 ^ arg_0) & arg_0, !(!true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_3.x, var_0), arg_3)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_3.x) + arg_3))), func_8(u_input.e.x & u_input.b, false, arg_3, func_8(u_input.b, global0[_wgslsmith_index_u32(arg_1.x, 13u)], vec2<f32>(var_0, -175.0), Struct_1(2147483647, var_0, arg_0, global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.d)))).b, _wgslsmith_sub_i32(2147483647, ~func_8(arg_0, var_1.x, vec2<f32>(arg_3.x, 652.0), Struct_1(u_input.b, arg_3.x, -29840, vec4<i32>(-2147483648, u_input.e.x, -2147483648, 16948), arg_1)).a), u_input.a, firstLeadingBit(vec4<u32>(abs(0u), _wgslsmith_div_u32(arg_1.x, 1u), _wgslsmith_dot_vec2_u32(u_input.d.wy, arg_1.wx), arg_1.x))));
                }
                case 3417: {
                }
                case 2147483647: {
                    global2 = array<Struct_3, 24>();
                }
                default: {
                    let var_2 = -func_8(arg_0, var_1.x, arg_3, func_7(Struct_2(select(var_1, vec3<bool>(var_1.x, true, true), false), var_1.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.x, u_input.d.x, arg_1.x), 13u)], _wgslsmith_f_op_f32(var_0 * arg_3.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(41175, 13444, 2868, -1), ~vec4<i32>(1, u_input.e.x, arg_0, 38149)), !true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -962.0, arg_3.x, arg_2))))).a;
                    var var_3 = Struct_2(!vec3<bool>(false, func_4(1, -2562.0, Struct_3(u_input.a.wz, Struct_1(0, arg_3.x, 0, vec4<i32>(-5458, var_2, u_input.c, var_2), vec4<u32>(4294967295u, arg_1.x, 13060u, u_input.d.x)), Struct_1(u_input.b, 162.0, 0, u_input.a, vec4<u32>(arg_1.x, 12241u, u_input.d.x, arg_1.x)))).b, any(select(var_1, var_1, vec3<bool>(true, true, true)))), func_6(Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(5132, var_2) >> (arg_1.zy % vec2<u32>(32u)), u_input.e.xz), Struct_1(~var_2, 526.0, 1 ^ arg_0, vec4<i32>(var_2, u_input.a.x, u_input.e.x, var_2), global3[_wgslsmith_index_u32(1u & arg_1.x, 15u)]), Struct_1(0, -139.0, ~var_2, u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 52024u, 47390u, arg_1.x), global3[_wgslsmith_index_u32(arg_1.x, 15u)]))), arg_0 >> (4294967295u % 32u), any(vec2<bool>(var_1.x, true))).x, select(false, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.d.x, 16u)]), _wgslsmith_sub_i32(-10712, var_2), var_2) == u_input.b, all(!(!vec2<bool>(var_1.x, var_1.x)))), 438.0);
                    global2 = array<Struct_3, 24>();
                    global1 = array<vec4<i32>, 16>();
                    var var_4 = Struct_1(~(56401 << (~countOneBits(56807u) % 32u)), var_0, arg_0, u_input.a, vec4<u32>(func_8(u_input.c, any(vec4<bool>(false, false, var_1.x, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 417.0) + arg_3))), Struct_1(-1, _wgslsmith_f_op_f32(f32(-1.0) * -509.0), ~var_2, ~vec4<i32>(0, 1411, -13087, u_input.e.x), ~arg_1)).e.x, reverseBits(4294967295u), u_input.d.x, 1u));
                }
            }
            global2 = array<Struct_3, 24>();
        }
    }
    return arg_1.x;
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.b;
    global3 = array<vec4<u32>, 15>();
    if (global0[_wgslsmith_index_u32(0u, 13u)]) {
        switch (27095 >> (~select(reverseBits(select(0u, 4294967295u, true)), u_input.d.x, -240.0 <= _wgslsmith_f_op_f32(ceil(1000.0))) % 32u)) {
            case 11176: {
                let var_1 = u_input.d.x;
                var var_2 = vec3<bool>(false != !(!select(global0[_wgslsmith_index_u32(22533u, 13u)], global0[_wgslsmith_index_u32(26304u, 13u)], true)), global0[_wgslsmith_index_u32(func_9(-11095, u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(var_1, 13u)], var_1, vec3<i32>(28715, u_input.e.x, var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(896.0, 1176.0))) - vec2<f32>(-230.0, -306.0))) >> (~var_1 % 32u), 13u)], global0[_wgslsmith_index_u32(var_1, 13u)]);
                global0 = array<bool, 13>();
                var var_3 = true;
                let var_4 = var_0;
            }
            case 1247: {
                global1 = array<vec4<i32>, 16>();
                var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(424.0, _wgslsmith_f_op_f32(min(137.0, -1970.0))))) + _wgslsmith_f_op_f32(1132.0 * -391.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379.0 + 429.0) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-270.0 + 1434.0)), _wgslsmith_f_op_f32(-1057.0 - 1395.0)))));
            }
            default: {
                let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(func_8(var_0, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1531.0, 1757.0)), Struct_1(1, _wgslsmith_f_op_f32(-793.0 + 479.0), func_5(u_input.d.yy, vec3<i32>(2147483647, var_0, var_0), u_input.d.x, Struct_3(vec2<i32>(1, -13705), Struct_1(-1, 670.0, u_input.b, vec4<i32>(0, u_input.e.x, var_0, var_0), u_input.d), Struct_1(u_input.c, 758.0, var_0, vec4<i32>(u_input.e.x, -1, u_input.e.x, var_0), vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x)))), ~vec4<i32>(54706, var_0, 16382, u_input.a.x), global3[_wgslsmith_index_u32(abs(1u), 15u)])).b, -692.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -1691.0))));
            }
        }
        switch (2147483647) {
            case -1: {
                var var_1 = Struct_2(select(select(vec3<bool>(false, !true, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], all(vec3<bool>(global0[_wgslsmith_index_u32(68513u, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)], true)), all(vec3<bool>(false, true, false))), false), !(!(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 13u)]))), global0[_wgslsmith_index_u32((u_input.d.x ^ u_input.d.x) << (~countOneBits(u_input.d.x) % 32u), 13u)]), true, !false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-785.0, 1346.0)))));
            }
            case -2147483648: {
                global0 = array<bool, 13>();
                return Struct_3(firstTrailingBit(-vec2<i32>(2147483647, -1)) ^ _wgslsmith_mult_vec2_i32(u_input.e.yx, u_input.a.yy), func_7(func_4(reverseBits(_wgslsmith_div_i32(-1, 1)), 807.0, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(u_input.d.zx, vec2<u32>(u_input.d.x, u_input.d.x), vec2<bool>(true, false)), u_input.d.wy), 24u)]), u_input.e.x, any(select(vec4<bool>(global0[_wgslsmith_index_u32(28819u, 13u)], false, false, global0[_wgslsmith_index_u32(3554u, 13u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 13u)], false, false), global0[_wgslsmith_index_u32(63313u, 13u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1682.0, -531.0, 2061.0, 1524.0) - vec4<f32>(1609.0, -509.0, -241.0, 249.0)))), func_8(38778, _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_div_u32(87469u, u_input.d.x)) > ~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1106.0, 966.0), vec2<f32>(-1000.0, 1000.0)))) * vec2<f32>(-1836.0, _wgslsmith_div_f32(-566.0, -587.0))), func_7(Struct_2(func_4(u_input.b, 100.0, global2[_wgslsmith_index_u32(13846u, 24u)]).a, func_4(1, -521.0, Struct_3(u_input.a.xz, Struct_1(-1880, -499.0, 763, vec4<i32>(1, var_0, u_input.c, u_input.e.x), u_input.d), Struct_1(u_input.b, 1478.0, u_input.a.x, u_input.a, u_input.d))).c, global0[_wgslsmith_index_u32(u_input.d.x & u_input.d.x, 13u)], -1190.0), max(u_input.e.x, ~u_input.c), true, vec4<f32>(_wgslsmith_f_op_f32(-1394.0 + 261.0), _wgslsmith_f_op_f32(-414.0 * -738.0), _wgslsmith_f_op_f32(trunc(1000.0)), 155.0))));
            }
            case 25569: {
                global3 = array<vec4<u32>, 15>();
            }
            case 45319: {
                var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_8(var_0, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], false, global0[_wgslsmith_index_u32(4294967295u, 13u)])), vec2<f32>(1339.0, -1157.0), Struct_1(-2147483648, -590.0, u_input.c, global1[_wgslsmith_index_u32(u_input.d.x, 16u)], global3[_wgslsmith_index_u32(86359u, 15u)])).b + _wgslsmith_f_op_f32(round(1601.0))) + func_8(2147483647, any(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(max(-616.0, -1289.0)), _wgslsmith_f_op_f32(f32(-1.0) * -445.0)), func_8(~(-6013), false & false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1238.0, -1599.0)), Struct_1(-20427, 609.0, u_input.a.x, vec4<i32>(-54590, u_input.c, var_0, -2147483648), vec4<u32>(u_input.d.x, u_input.d.x, 74784u, 4294967295u)))).b), _wgslsmith_f_op_f32(round(-188.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201.0))));
            }
            default: {
            }
        }
        global1 = array<vec4<i32>, 16>();
        global2 = array<Struct_3, 24>();
        return global2[_wgslsmith_index_u32(61652u, 24u)];
    }
    switch (u_input.a.x | 2147483647) {
        case 0: {
            let var_1 = func_4(firstLeadingBit(_wgslsmith_dot_vec2_i32((u_input.e.zy & u_input.a.wz) ^ vec2<i32>(u_input.a.x, u_input.c), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, u_input.a.x), vec2<i32>(54159, u_input.e.x)), u_input.e.zz, u_input.e.yy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_i32(-16304, var_0), _wgslsmith_f_op_f32(ceil(-336.0)), global2[_wgslsmith_index_u32(~15179u, 24u)]).d * _wgslsmith_f_op_f32(_wgslsmith_div_f32(339.0, 435.0) - _wgslsmith_f_op_f32(-1809.0 + -454.0)))), Struct_3(vec2<i32>(-(36472 >> (u_input.d.x % 32u)), ~(~(-30019))), func_8(1, global0[_wgslsmith_index_u32(~u_input.d.x, 13u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-150.0, 361.0)))), Struct_1(_wgslsmith_mod_i32(2147483647, u_input.b), _wgslsmith_f_op_f32(-1401.0), _wgslsmith_sub_i32(u_input.a.x, var_0), reverseBits(u_input.a), u_input.d)), func_8(var_0, any(vec2<bool>(false, global0[_wgslsmith_index_u32(1158u, 13u)])) || global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.zyx, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), 13u)], vec2<f32>(_wgslsmith_f_op_f32(round(-657.0)), _wgslsmith_f_op_f32(-978.0)), Struct_1(0, _wgslsmith_f_op_f32(f32(-1.0) * -358.0), 42140, vec4<i32>(var_0, 2147483647, u_input.c, var_0), u_input.d))));
            loop {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
                continue;
            }
        }
        case 1289: {
            global0 = array<bool, 13>();
            switch ((~2147483647 << (37805u % 32u)) | -55770) {
                default: {
                    let var_1 = func_9(u_input.b, func_8(-u_input.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(602.0, -210.0) + func_7(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), global0[_wgslsmith_index_u32(46003u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], 323.0), u_input.c, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], vec4<f32>(-647.0, 2009.0, 2017.0, 601.0)).b) == _wgslsmith_f_op_f32(max(1000.0, _wgslsmith_div_f32(-526.0, -512.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000.0, 632.0)))), func_8(var_0, _wgslsmith_f_op_f32(round(2065.0)) <= _wgslsmith_f_op_f32(min(297.0, -506.0)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(737.0, -1585.0)))), func_7(func_4(var_0, -1085.0, Struct_3(u_input.a.wx, Struct_1(u_input.a.x, -287.0, -20921, vec4<i32>(u_input.c, var_0, 5438, u_input.e.x), global3[_wgslsmith_index_u32(u_input.d.x, 15u)]), Struct_1(var_0, 389.0, u_input.b, vec4<i32>(u_input.c, 2147483647, -2147483648, var_0), vec4<u32>(42328u, 0u, u_input.d.x, 1u)))), u_input.e.x | var_0, !global0[_wgslsmith_index_u32(48417u, 13u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1046.0, -1128.0, 2138.0, 272.0))))).e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1381.0))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-539.0, func_8(var_0, true, vec2<f32>(1000.0, 1328.0), Struct_1(u_input.c, 829.0, u_input.e.x, vec4<i32>(var_0, 16612, var_0, -2147483648), vec4<u32>(1u, u_input.d.x, 1u, u_input.d.x))).b), 1088.0), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(764.0, 1534.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(695.0, -1388.0)), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-682.0, -345.0) + vec2<f32>(-663.0, 227.0)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1321.0, -1000.0), vec2<f32>(-418.0, -3103.0))), false))));
                    let var_2 = func_7(func_4(-24839, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526.0 - -1101.0) + _wgslsmith_f_op_f32(-182.0)), 1336.0)), Struct_3(vec2<i32>(1, var_0) & ~u_input.e.zy, Struct_1(~var_0, _wgslsmith_div_f32(-1000.0, -445.0), -12994 ^ 2147483647, -vec4<i32>(2147483647, u_input.c, -1, -1), u_input.d >> (vec4<u32>(u_input.d.x, 4294967295u, 1u, 0u) % vec4<u32>(32u))), Struct_1(-u_input.a.x, -1453.0, -1 ^ u_input.b, min(vec4<i32>(u_input.e.x, var_0, 25961, u_input.b), global1[_wgslsmith_index_u32(var_1, 16u)]), ~u_input.d))), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0, 0, 3389) & (var_0 ^ 2147483647), -2147483648)), func_4(~12223, 1000.0, global2[_wgslsmith_index_u32(u_input.d.x, 24u)]).b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0) + _wgslsmith_f_op_f32(f32(-1.0) * -243.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1013.0, 1000.0))), _wgslsmith_f_op_f32(select(3013.0, 497.0, false)), 2023.0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, -479.0, 887.0, -720.0) + vec4<f32>(1666.0, 312.0, 980.0, -1399.0))))))).d;
                    let var_3 = func_4(select(29721, var_0, func_4(_wgslsmith_dot_vec3_i32(u_input.a.yxx, ~vec3<i32>(u_input.b, -1, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1121.0 - 1375.0)), Struct_3(vec2<i32>(-1, u_input.b), func_8(-2147483648, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], vec2<f32>(1000.0, -2413.0), Struct_1(var_0, -1330.0, var_2.x, global1[_wgslsmith_index_u32(32612u, 16u)], u_input.d)), func_8(2147483647, true, vec2<f32>(125.0, 1000.0), Struct_1(-2147483648, -698.0, u_input.a.x, global1[_wgslsmith_index_u32(var_1, 16u)], vec4<u32>(0u, 46355u, 1u, u_input.d.x))))).c), _wgslsmith_f_op_f32(-1884.0 - -108.0), global2[_wgslsmith_index_u32(1u, 24u)]);
                }
            }
            if (select(true, global0[_wgslsmith_index_u32((u_input.d.x >> (_wgslsmith_add_u32(~4294967295u, _wgslsmith_sub_u32(0u, u_input.d.x)) % 32u)) << ((u_input.d.x << (u_input.d.x % 32u)) % 32u), 13u)], global0[_wgslsmith_index_u32(4661u, 13u)])) {
            }
            var var_1 = true;
            global3 = array<vec4<u32>, 15>();
        }
        default: {
            var var_1 = func_4(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0, -25837), _wgslsmith_mult_vec2_i32(u_input.a.wx ^ vec2<i32>(var_0, u_input.a.x), u_input.e.xy)), min(firstTrailingBit(_wgslsmith_clamp_i32(1, 1, var_0)), var_0 << (min(u_input.d.x, 1u) % 32u))), _wgslsmith_f_op_f32(func_3(!false, 86000u, vec3<i32>(~_wgslsmith_sub_i32(-2147483648, var_0), -2147483648, _wgslsmith_dot_vec3_i32(~vec3<i32>(-1, u_input.a.x, -2147483648), select(vec3<i32>(1, 43294, 1), u_input.a.yxz, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], false)))))), global2[_wgslsmith_index_u32(~u_input.d.x, 24u)]);
            for (; ; ) {
                if (LOOP_COUNTERS[29u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            }
            if (true) {
                global2 = array<Struct_3, 24>();
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        for (var var_1: i32; ; var_1 -= 1) {
            if (LOOP_COUNTERS[31u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
            var var_2 = Struct_2(select(func_4(_wgslsmith_sub_i32(var_0 << (4294967295u % 32u), min(39728, var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(706.0 * 130.0))), global2[_wgslsmith_index_u32(14962u, 24u)]).a, vec3<bool>(!(!false), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, 40464u), 13u)], !(false || global0[_wgslsmith_index_u32(0u, 13u)])), select(!true, _wgslsmith_f_op_f32(select(1640.0, 653.0, global0[_wgslsmith_index_u32(u_input.d.x, 13u)])) < _wgslsmith_f_op_f32(f32(-1.0) * -970.0), func_4(~(-2147483648), _wgslsmith_f_op_f32(f32(-1.0) * -664.0), global2[_wgslsmith_index_u32(u_input.d.x, 24u)]).a.x)), true, !any(select(func_6(Struct_3(u_input.e.yx, Struct_1(var_0, -1000.0, -2147483648, global1[_wgslsmith_index_u32(106651u, 16u)], global3[_wgslsmith_index_u32(u_input.d.x, 15u)]), Struct_1(15540, 721.0, -11278, global1[_wgslsmith_index_u32(51623u, 16u)], vec4<u32>(u_input.d.x, 27757u, 4294967295u, 52101u))), var_0, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]).zw, vec2<bool>(false, false), var_0 <= var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(264.0 * 423.0) + 1000.0) * -216.0) + 431.0));
            var var_3 = !(!false) | var_2.a.x;
        }
        continue;
    }
    return Struct_3(firstLeadingBit(vec2<i32>(u_input.e.x, var_0)) >> (_wgslsmith_mod_vec2_u32(u_input.d.zy, ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.d.zw)) % vec2<u32>(32u)), Struct_1(u_input.c, 1374.0, -1 | u_input.b, -abs(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.b, u_input.b, var_0))), abs(vec4<u32>(~80238u, ~u_input.d.x, u_input.d.x ^ u_input.d.x, min(14347u, u_input.d.x)))), Struct_1(~(func_5(vec2<u32>(0u, u_input.d.x), vec3<i32>(var_0, u_input.c, u_input.b), u_input.d.x, global2[_wgslsmith_index_u32(u_input.d.x, 24u)]) >> (~u_input.d.x % 32u)), -1520.0, -(_wgslsmith_sub_i32(var_0, 36677) << (4294967295u % 32u)), vec4<i32>(u_input.c, _wgslsmith_mod_i32(var_0, u_input.b) << (reverseBits(425u) % 32u), max(1, _wgslsmith_div_i32(var_0, var_0)), ~(~(-3537))), u_input.d >> (vec4<u32>(12554u, 0u, ~u_input.d.x, ~31888u) % vec4<u32>(32u))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = !arg_1.c;
    var var_1 = ~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), select(u_input.d.x, 4294967295u, false))) & 68599u;
    var var_2 = func_2();
    var var_3 = select(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)], var_2.c.a > _wgslsmith_mod_i32(var_2.a.x, 15722)), func_4((select(u_input.e.x, 0, arg_1.b) ^ -u_input.c) | _wgslsmith_mod_i32(-u_input.c, 2147483647), func_8(firstLeadingBit(func_2().a.x), any(select(arg_1.a, arg_1.a, arg_1.b)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, -962.0) + vec2<f32>(arg_1.d, var_2.c.b)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.b.b, arg_1.d))))), var_2.b).b, global2[_wgslsmith_index_u32(u_input.d.x, 24u)]).a, arg_1.a);
    let var_4 = var_2.b.e.zzx;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0: i32; ; var_0 -= 1) {
        if (LOOP_COUNTERS[32u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
        let var_1 = select(vec4<bool>(global0[_wgslsmith_index_u32(abs(u_input.d.x), 13u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(371.0 * 174.0))) != -939.0, any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], false, global0[_wgslsmith_index_u32(64944u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(26830u, 13u)], false, false), global0[_wgslsmith_index_u32(4294967295u, 13u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 13u)])), select(vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], false, false), global0[_wgslsmith_index_u32(u_input.d.x, 13u)]))), global0[_wgslsmith_index_u32(abs(u_input.d.x) >> (min(u_input.d.x, u_input.d.x) % 32u), 13u)] | any(func_1(u_input.a.x, Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 13u)], true), global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)], 1000.0)))), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], !all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(42342u, 13u)])), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(1u, u_input.d.x), _wgslsmith_sub_u32(u_input.d.x, 0u)), 13u)], global0[_wgslsmith_index_u32(~0u, 13u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(~1u, 13u)], true, false)));
    }
    for (; false; ) {
        if (LOOP_COUNTERS[33u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
        loop {
            if (LOOP_COUNTERS[34u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[34u] = LOOP_COUNTERS[34u] + 1u;
            let var_0 = u_input.c;
            let var_1 = _wgslsmith_f_op_f32(f32(-1.0) * -381.0);
            global0 = array<bool, 13>();
        }
        switch (0) {
            case 1: {
                var var_0 = 48554;
            }
            case 8281: {
                global2 = array<Struct_3, 24>();
            }
            case -36957: {
            }
            default: {
                var var_0 = select(func_1(_wgslsmith_add_i32(firstTrailingBit(u_input.a.x) | -13057, u_input.a.x), func_4(func_8(u_input.a.x, global0[_wgslsmith_index_u32(~20860u, 13u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-1236.0, 470.0) - vec2<f32>(441.0, 964.0)), Struct_1(-4835, -405.0, u_input.e.x, u_input.a, global3[_wgslsmith_index_u32(1u, 15u)])).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -161.0), 108.0, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], true)))), Struct_3(~vec2<i32>(u_input.b, 15772), func_8(u_input.a.x, true, vec2<f32>(-1502.0, -276.0), Struct_1(-5270, -374.0, u_input.e.x, vec4<i32>(u_input.e.x, 2147483647, u_input.c, u_input.e.x), global3[_wgslsmith_index_u32(10254u, 15u)])), func_2().b))).zz, select(vec2<bool>(global0[_wgslsmith_index_u32(~(~4294967295u), 13u)], _wgslsmith_mult_u32(u_input.d.x, u_input.d.x) < 0u), !(!vec2<bool>(false, true)), func_4(u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(176.0 * 2294.0), -655.0), func_2()).a.xz), false);
                var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-233.0), 750.0, _wgslsmith_f_op_f32(f32(-1.0) * -285.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(322.0, 818.0, 1090.0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-930.0, -1151.0, 894.0), vec3<f32>(179.0, -1829.0, -460.0), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], false))))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-845.0, -1515.0, 1000.0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-396.0, 738.0, -1000.0) - vec3<f32>(323.0, -868.0, -673.0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2271.0, -962.0, -1688.0) * vec3<f32>(-435.0, 2165.0, -449.0)) - _wgslsmith_div_vec3_f32(vec3<f32>(-121.0, -140.0, -636.0), vec3<f32>(-1339.0, -547.0, 593.0))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1602.0, -1472.0, 407.0))))))));
                let var_2 = 33348u >> (4294967295u % 32u);
            }
        }
        continue;
    }
    var var_0 = global2[_wgslsmith_index_u32(~u_input.d.x, 24u)];
    if (!global0[_wgslsmith_index_u32(func_2().b.e.x, 13u)]) {
    }
    if (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(66829u, 40999u, 78979u, var_0.b.e.x), var_0.b.e), u_input.d.x), u_input.d.x ^ _wgslsmith_dot_vec4_u32(var_0.b.e, u_input.d)), 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(func_2().c.e.zww, vec3<u32>(4294967295u, var_0.c.e.x, var_0.b.e.x)), ~u_input.d.yxw), var_0.c.e.x, reverseBits(countOneBits(1u) << ((var_0.b.e.x ^ u_input.d.x) % 32u)), u_input.d.x)), 13u)]) {
        for (var var_1 = 42313; var_1 >= -1; global2 = array<Struct_3, 24>()) {
            if (LOOP_COUNTERS[35u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[35u] = LOOP_COUNTERS[35u] + 1u;
        }
        let var_1 = false & false;
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1010.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1382.0))), var_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-839.0) * _wgslsmith_f_op_f32(f32(-1.0) * -1462.0)) * var_0.c.b)), func_5(func_8(_wgslsmith_mult_i32(func_5(var_0.c.e.ww, vec3<i32>(2147483647, -2147483648, -13804), u_input.d.x, global2[_wgslsmith_index_u32(0u, 24u)]), 6321), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c.e.x | 32680u, _wgslsmith_sub_u32(1u, 0u)), 13u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.b, -1690.0)))), Struct_1(-2147483647, _wgslsmith_f_op_f32(var_0.b.b - var_0.b.b), _wgslsmith_mult_i32(u_input.c, -1900), global1[_wgslsmith_index_u32(var_0.c.e.x, 16u)], abs(vec4<u32>(4294967295u, var_0.c.e.x, 37332u, var_0.c.e.x)))).e.xy, u_input.a.wzy, func_8(-33315, !true, vec2<f32>(962.0, var_0.b.b), Struct_1(-5913, _wgslsmith_f_op_f32(trunc(var_0.c.b)), _wgslsmith_mult_i32(var_0.c.c, -2147483648), var_0.b.d, var_0.b.e)).e.x, func_2()), vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.d.wzw, ~var_0.c.e.ywx), 43310u, 25788u, ~(23347u >> ((u_input.d.x | 4294967295u) % 32u))), ~max(~(~var_0.c.e.x), u_input.d.x));
}

