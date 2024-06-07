// {"0:0":[50,204,35,198,172,30,204,86,54,136,186,200,67,75,22,104,38,202,17,111,56,86,212,77,157,157,55,86,12,75,143,233,85,151,225,113,117,43,128,114,45,99,242,119,156,158,130,165]}
// Seed: 4605068708779147853

struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false));

var<private> LOOP_COUNTERS: array<u32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = arg_1.x;
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        switch (_wgslsmith_mod_i32(u_input.a.x, 1 & ~abs(0 | 2147483647))) {
            case -45722: {
                var var_1 = Struct_2(arg_0, Struct_1(~vec4<i32>(2147483647 & u_input.c, min(u_input.d.x, 1), u_input.c, 1), _wgslsmith_add_vec4_u32(min(vec4<u32>(arg_0.x, 47148u, 4294967295u, 79165u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 21857u, 13325u, 80364u), arg_0)), ~vec4<u32>(arg_0.x, 4294967295u, 4294967295u, 32497u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(228.0, -530.0) - vec2<f32>(var_0, 1010.0)) - _wgslsmith_f_op_vec2_f32(-arg_1)))), u_input.b.x, vec2<bool>(true, !(!false))));
                var var_2 = var_0;
            }
            default: {
                let var_1 = firstLeadingBit(u_input.d);
                global0 = array<vec4<bool>, 31>();
                var var_2 = Struct_2(arg_0, Struct_1(vec4<i32>(-var_1.x, abs(u_input.c), u_input.c, -2147483648 ^ u_input.c) & (firstTrailingBit(vec4<i32>(-1, var_1.x, -2147483648, u_input.d.x)) << (vec4<u32>(1u, arg_0.x, u_input.b.x, 29937u) % vec4<u32>(32u))), (arg_0 & arg_0) | _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, u_input.b.x), _wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(u_input.b.x, 1u, arg_0.x, arg_0.x))), arg_1, firstLeadingBit(arg_0.x), !(!vec2<bool>(true, true))));
            }
        }
        let var_1 = min(~u_input.d, countOneBits(u_input.d));
    }
    global0 = array<vec4<bool>, 31>();
    return ~(~abs(abs(u_input.b.x)));
}

fn func_5() -> bool {
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    if (!(!all(!vec4<bool>(true, true, true, false)))) {
        global0 = array<vec4<bool>, 31>();
        var var_0 = ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b.x, 1109u, 1u, u_input.b.x)), firstTrailingBit(~vec4<u32>(u_input.b.x, 4294967295u, 75390u, 4294967295u))) | (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 75944u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 12844u, u_input.b.x, 4973u)), ~(u_input.b.x & u_input.b.x), ~u_input.b.x, u_input.b.x) ^ vec4<u32>(countOneBits(~u_input.b.x), u_input.b.x, 4294967295u | (u_input.b.x & 28979u), 4294967295u));
        var var_1 = Struct_1(firstTrailingBit(-vec4<i32>(_wgslsmith_add_i32(u_input.d.x, 0), _wgslsmith_clamp_i32(17601, -23618, -69514), select(-1, u_input.d.x, true), u_input.d.x)), vec4<u32>(func_6(~vec4<u32>(u_input.b.x, 11850u, u_input.b.x, 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-346.0, -254.0))) | 4294967295u, ~43323u, _wgslsmith_mod_u32(4294967295u, ~min(u_input.b.x, 10276u)), u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(718.0))))), _wgslsmith_f_op_f32(abs(-1414.0))), min(u_input.b.x, firstLeadingBit(~u_input.b.x)), select(!vec2<bool>(true, !false), select(vec2<bool>(u_input.b.x == 49234u, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true), false), !all(vec2<bool>(true, true))));
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var_0 = min(var_1.b, vec4<u32>(~var_1.d, reverseBits(~68783u), firstTrailingBit(var_0.x), min(_wgslsmith_mod_u32(var_1.b.x, 76881u) << (4294967295u % 32u), 33090u)));
            let var_2 = Struct_1(firstLeadingBit(vec4<i32>(abs(~var_1.a.x), firstLeadingBit(u_input.a.x), ~u_input.a.x, var_1.a.x)), var_1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.c))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.c + _wgslsmith_f_op_vec2_f32(-var_1.c)), var_1.c))), var_0.x, !(!vec2<bool>(var_1.e.x, !false)));
            continue;
        }
        var var_2 = _wgslsmith_mult_u32(30455u, ~abs(firstLeadingBit(var_1.b.x)));
    }
    if ((_wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(-44992, u_input.d.x, u_input.a.x), u_input.d)), ~(~u_input.d)) < (~countOneBits(u_input.a.x) << (select(~47409u, _wgslsmith_mod_u32(36628u, u_input.b.x), false) % 32u))) == all(!select(!vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(32253u, 0u), 31u)], false))) {
        global0 = array<vec4<bool>, 31>();
        var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-394.0)) - _wgslsmith_f_op_f32(110.0 + -3030.0)), -214.0, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(489.0, -2021.0))), _wgslsmith_f_op_f32(-268.0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000.0, 634.0, 1396.0, 1000.0), vec4<f32>(-336.0, -1000.0, 890.0, -247.0))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1288.0, 1070.0, 1274.0, -1154.0), vec4<f32>(395.0, 949.0, -472.0, 821.0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1459.0, -1216.0, 159.0, 1013.0) - vec4<f32>(1554.0, -662.0, -1154.0, 397.0))))));
        var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -192.0, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2361.0, var_0.x, -382.0, _wgslsmith_f_op_f32(trunc(var_0.x)))))));
        if (!(_wgslsmith_add_i32(_wgslsmith_clamp_i32(6662, u_input.c, u_input.d.x), -u_input.a.x) < min(u_input.d.x, select(-12458, 35478, true))) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(-612.0)), _wgslsmith_f_op_f32(max(var_0.x, -1322.0))))) == -2897.0)) {
            global0 = array<vec4<bool>, 31>();
            var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, false)), -1059.0, 132.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(252.0, 744.0, 226.0, 1000.0) - vec4<f32>(var_0.x, -1245.0, var_0.x, 461.0)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))));
            var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), 755.0, _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x))));
            global0 = array<vec4<bool>, 31>();
            return 44252 < ~u_input.a.x;
        }
        switch (u_input.a.x) {
            case -1: {
                var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(1641.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(-689.0, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(-401.0))) - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.x))))));
            }
            case 1: {
                var var_1 = Struct_1(vec4<i32>(firstLeadingBit(-35240), abs(-19403 | -4930), _wgslsmith_clamp_i32(-61441, u_input.a.x, -32355) ^ ~2147483647, -1) >> (~select(_wgslsmith_sub_vec4_u32(vec4<u32>(16621u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(8440u, u_input.b.x, 1u, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 31392u), all(vec2<bool>(true, false))) % vec4<u32>(32u)), max(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(37459u, 0u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u)), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), false)), ~(~vec4<u32>(0u, u_input.b.x, 1u, 0u))) << (abs(max(vec4<u32>(u_input.b.x, 17342u, 4294967295u, u_input.b.x), ~vec4<u32>(u_input.b.x, 57394u, 26635u, u_input.b.x))) % vec4<u32>(32u)), var_0.zy, abs(u_input.b.x), vec2<bool>(true, any(select(select(vec4<bool>(false, true, false, true), global0[_wgslsmith_index_u32(63354u, 31u)], true), global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(countOneBits(21872u), 31u)]))));
            }
            default: {
                var var_1 = reverseBits(vec4<i32>(i32(-1) * -_wgslsmith_mod_i32(u_input.c, 1), u_input.a.x, u_input.d.x, u_input.c));
                var var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(min(_wgslsmith_sub_i32(var_1.x, -26562), ~30077), -_wgslsmith_dot_vec3_i32(var_1.zxz, vec3<i32>(var_1.x, u_input.d.x, 0))), ~select(~vec2<i32>(-1, u_input.d.x), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.xy, vec2<i32>(var_1.x, 2147483647)), firstTrailingBit(u_input.a)), !(!true)));
                var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))));
            }
        }
    }
    for (var var_0 = 1; select(50373 <= u_input.d.x, all(vec4<bool>((-215.0 < 640.0) && false, true, all(vec3<bool>(false, true, false)), false)), true); var_0 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var_0 = 18781;
    }
    return !(all(vec2<bool>(true, true)) & any(select(vec2<bool>(false, false), vec2<bool>(false, true), true))) | !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-282.0)))) >= _wgslsmith_f_op_f32(-430.0 * _wgslsmith_f_op_f32(f32(-1.0) * -345.0)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0.e.x;
    let var_1 = _wgslsmith_add_vec3_i32(arg_0.a.wxz, arg_0.a.wxz);
    switch (arg_0.a.x) {
        default: {
            global0 = array<vec4<bool>, 31>();
            var_0 = func_5();
        }
    }
    var var_2 = _wgslsmith_f_op_f32(287.0 + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-567.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(416.0, arg_0.c.x))), 1500.0)));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        continue;
    }
    return ~u_input.b.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_3 {
    for (var var_0 = -2147483648; true; var_0 += 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_1 = arg_0.c.e.x;
        if (true) {
            break;
        }
        var var_2 = Struct_3(~vec2<u32>(~arg_1.x & reverseBits(44190u), select(0u, _wgslsmith_dot_vec4_u32(arg_2.b.b, arg_1), arg_1.x > 3286u)), ~arg_2.b.b.wx | arg_2.b.b.yw, Struct_1(-_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a.x, -30668, -8212, arg_2.b.a.x), _wgslsmith_sub_vec4_i32(arg_2.b.a, arg_2.b.a)), ~(~(~vec4<u32>(0u, u_input.b.x, 17438u, arg_0.a.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-982.0), _wgslsmith_f_op_f32(f32(-1.0) * -118.0)), arg_2.b.c)), max(38869u, func_4(arg_2.b)), vec2<bool>(true, !var_1)));
        let var_3 = arg_2;
        for (var var_4: i32; ; var_4 -= 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            let var_5 = func_6(arg_1, arg_0.c.c) & _wgslsmith_mult_u32(~u_input.b.x, ~arg_0.a.x);
            continue;
        }
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        switch (i32(-1) * -_wgslsmith_clamp_i32(abs(0 & -2147483648), _wgslsmith_clamp_i32(2147483647, firstTrailingBit(u_input.c), u_input.d.x), _wgslsmith_div_i32(u_input.a.x, arg_0.c.a.x))) {
            case -4521: {
                var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(273.0, _wgslsmith_f_op_f32(-1437.0)))))))));
                var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.c) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -705.0))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.c.x), arg_2.b.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.c.x * 1481.0), _wgslsmith_f_op_f32(-arg_2.b.c.x), true)))));
                var_0 = arg_2.b.c.x;
                break;
            }
            case -2147483648: {
                let var_0 = arg_0.c;
                global0 = array<vec4<bool>, 31>();
                var var_1 = arg_0;
            }
            default: {
                global0 = array<vec4<bool>, 31>();
            }
        }
        if (func_5()) {
            let var_0 = ~_wgslsmith_sub_u32((_wgslsmith_clamp_u32(7429u, u_input.b.x, 4294967295u) << (74452u % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(79570u, 22912u) & vec2<u32>(arg_2.a.x, arg_2.b.d), arg_2.b.b.ww ^ arg_2.b.b.yy) % 32u), _wgslsmith_div_u32(19333u, u_input.b.x));
            var var_1 = arg_1.zz;
            global0 = array<vec4<bool>, 31>();
            global0 = array<vec4<bool>, 31>();
        }
        global0 = array<vec4<bool>, 31>();
    }
    let var_0 = vec3<i32>(arg_2.b.a.x, i32(-1) * -6022, arg_0.c.a.x);
    if (~(~(~abs(1u))) >= ~4294967295u) {
    }
    for (var var_1 = -1; var_1 != 0; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            break;
        }
        return arg_0;
    }
    return arg_0;
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = any(global0[_wgslsmith_index_u32(76403u, 31u)]);
    for (var var_1 = -2147483648; ; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        let var_2 = 37509u;
        continue;
    }
    var var_1 = _wgslsmith_f_op_f32(-139.0 * _wgslsmith_f_op_f32(f32(-1.0) * -193.0));
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        global0 = array<vec4<bool>, 31>();
        if (var_0) {
            var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.c.x));
        }
        break;
    }
    global0 = array<vec4<bool>, 31>();
    return select(select(select(vec2<bool>(arg_1.c.e.x, !false), !vec2<bool>(arg_1.c.e.x, arg_1.c.e.x), arg_1.c.e), !select(arg_1.c.e, select(vec2<bool>(false, false), arg_1.c.e, vec2<bool>(false, true)), true), vec2<bool>(any(arg_1.c.e) & (var_0 || var_0), 88164u != _wgslsmith_mult_u32(1u, 26289u))), !(!select(vec2<bool>(var_0, arg_1.c.e.x), arg_1.c.e, false)), vec2<bool>(arg_1.c.e.x, !(!all(vec3<bool>(arg_1.c.e.x, true, var_0)))));
}

fn func_8(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = min(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, -u_input.c), u_input.a << (~u_input.b % vec2<u32>(32u))), u_input.a);
    global0 = array<vec4<bool>, 31>();
    var var_1 = Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, (u_input.b.x >> (u_input.b.x % 32u)) | u_input.b.x, max(func_3(func_3(Struct_3(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 70086u), Struct_1(vec4<i32>(2147483647, u_input.c, 16423, u_input.c), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 25080u), vec2<f32>(732.0, -736.0), 36146u, vec2<bool>(false, false))), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(vec4<u32>(12769u, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(2365, u_input.d.x, -6278, u_input.c), vec4<u32>(u_input.b.x, u_input.b.x, 26922u, u_input.b.x), vec2<f32>(-199.0, -1377.0), 28530u, arg_0))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 48769u, 13613u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 36455u, u_input.b.x)), Struct_2(vec4<u32>(4404u, 1u, u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.b.x, u_input.b.x, 136659u, u_input.b.x), vec2<f32>(-349.0, 441.0), 60151u, arg_0))).b.x, u_input.b.x)), Struct_1(vec4<i32>(u_input.c, -59742, -2147483648 ^ firstTrailingBit(u_input.d.x), abs(firstTrailingBit(-1))), firstTrailingBit(~vec4<u32>(41960u, u_input.b.x, 19676u, u_input.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000.0, -2414.0), vec2<f32>(-1004.0, 1484.0)))), vec2<f32>(-1921.0, _wgslsmith_div_f32(-889.0, 1872.0))), u_input.b.x, arg_0));
    switch (firstLeadingBit(select(~u_input.a.x, ~0, var_1.b.e.x))) {
        case 0: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                break;
            }
            var var_2 = !(!all(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~u_input.b.x), 31u)]));
            let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(var_1.b.c.x - var_1.b.c.x))), _wgslsmith_f_op_f32(var_1.b.c.x + var_1.b.c.x)), vec3<f32>(_wgslsmith_f_op_f32(var_1.b.c.x + -1451.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499.0 * var_1.b.c.x)), 263.0)));
        }
        case 2147483647: {
            var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~max(0u, 54740u), abs(67670u ^ 0u)), func_6(abs(vec4<u32>(4294967295u, var_1.b.d, var_1.a.x, 1u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1032.0), var_1.b.c.x))), ~reverseBits(u_input.b));
            let var_3 = var_1.b.e;
            var_2 = var_1.b.b.wx;
            var_2 = u_input.b;
        }
        case -4945: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            }
            var_1 = Struct_2(~(~vec4<u32>(func_4(Struct_1(vec4<i32>(u_input.d.x, var_0.x, var_1.b.a.x, -7281), vec4<u32>(67882u, var_1.b.b.x, 0u, u_input.b.x), var_1.b.c, 0u, vec2<bool>(var_1.b.e.x, false))), abs(30244u), _wgslsmith_add_u32(80978u, u_input.b.x), 0u)), Struct_1(func_3(Struct_3(vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.x, 17885u), vec2<u32>(1u, u_input.b.x)), var_1.b), firstLeadingBit(~var_1.b.b), Struct_2(min(var_1.a, vec4<u32>(28830u, 20130u, var_1.a.x, u_input.b.x)), func_3(Struct_3(u_input.b, var_1.b.b.zz, Struct_1(vec4<i32>(var_0.x, 29793, 1, -6636), var_1.b.b, vec2<f32>(var_1.b.c.x, var_1.b.c.x), u_input.b.x, vec2<bool>(false, var_1.b.e.x))), vec4<u32>(var_1.b.b.x, u_input.b.x, u_input.b.x, 1u), Struct_2(var_1.a, Struct_1(var_1.b.a, vec4<u32>(u_input.b.x, 46636u, 9086u, 1u), vec2<f32>(-451.0, -598.0), 2514u, vec2<bool>(true, true)))).c)).c.a, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 1u, u_input.b.x), var_1.a.x >> (var_1.b.b.x % 32u)), firstTrailingBit(func_3(Struct_3(var_1.b.b.zw, var_1.b.b.zw, Struct_1(var_1.b.a, vec4<u32>(var_1.b.b.x, 4294967295u, 0u, var_1.a.x), var_1.b.c, var_1.a.x, vec2<bool>(var_1.b.e.x, var_1.b.e.x))), vec4<u32>(1u, 109349u, 4221u, u_input.b.x), Struct_2(var_1.a, Struct_1(vec4<i32>(var_1.b.a.x, 33216, -61223, -14263), vec4<u32>(39752u, 0u, var_1.a.x, 3204u), var_1.b.c, 0u, var_1.b.e))).a.x), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_mod_u32(4294967295u >> (28741u % 32u), 30703u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-771.0))), _wgslsmith_div_f32(648.0, _wgslsmith_f_op_f32(floor(1177.0)))), _wgslsmith_add_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(93532u, 4294967295u, 8516u, u_input.b.x))), select(func_7(firstTrailingBit(u_input.d.yz), Struct_3(var_1.a.yx, u_input.b, Struct_1(vec4<i32>(-18743, var_1.b.a.x, u_input.a.x, u_input.c), vec4<u32>(1u, u_input.b.x, 0u, var_1.b.d), vec2<f32>(-329.0, var_1.b.c.x), var_1.a.x, arg_0))), select(vec2<bool>(arg_0.x, false), var_1.b.e, var_1.b.e.x), !vec2<bool>(true, false))));
        }
        default: {
            switch (-55913) {
                case -1: {
                }
                default: {
                    var_1 = Struct_2(firstTrailingBit(vec4<u32>(1u, 0u, ~func_3(Struct_3(vec2<u32>(18052u, u_input.b.x), vec2<u32>(1u, 100631u), var_1.b), var_1.a, Struct_2(var_1.a, Struct_1(var_1.b.a, vec4<u32>(4294967295u, var_1.a.x, var_1.b.b.x, 0u), vec2<f32>(var_1.b.c.x, -369.0), 1905u, vec2<bool>(var_1.b.e.x, var_1.b.e.x)))).a.x, 1u << (_wgslsmith_mod_u32(var_1.a.x, 14027u) % 32u))), var_1.b);
                    let var_2 = Struct_2(vec4<u32>(817u, ~13964u, 0u, u_input.b.x), Struct_1(vec4<i32>(var_0.x, _wgslsmith_dot_vec3_i32(u_input.d, var_1.b.a.yyy), u_input.d.x, ~8966) | _wgslsmith_mult_vec4_i32(var_1.b.a, firstTrailingBit(var_1.b.a)), var_1.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(u_input.b, vec2<u32>(52881u, 1u), var_1.b), var_1.a, Struct_2(vec4<u32>(1282u, u_input.b.x, 2757u, u_input.b.x), Struct_1(vec4<i32>(var_1.b.a.x, -59161, var_1.b.a.x, -1), vec4<u32>(u_input.b.x, 65362u, 81388u, 2063u), vec2<f32>(var_1.b.c.x, var_1.b.c.x), 48436u, vec2<bool>(true, var_1.b.e.x)))).c.c * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1190.0, 1184.0) + vec2<f32>(705.0, var_1.b.c.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.b.c, vec2<f32>(var_1.b.c.x, var_1.b.c.x))))), ~_wgslsmith_clamp_u32(8987u, 0u ^ 4294967295u, var_1.b.b.x), var_1.b.e));
                    var_1 = var_2;
                    var var_3 = ~_wgslsmith_div_u32(abs(firstTrailingBit(1u)), select(var_1.a.x, _wgslsmith_div_u32(27779u, 107553u), all(vec4<bool>(var_1.b.e.x, false, var_1.b.e.x, false)) && any(global0[_wgslsmith_index_u32(0u, 31u)])));
                    let var_4 = func_3(func_3(func_3(func_3(func_3(Struct_3(vec2<u32>(var_1.a.x, var_1.a.x), var_1.a.wy, Struct_1(var_1.b.a, var_1.b.b, var_1.b.c, u_input.b.x, vec2<bool>(var_1.b.e.x, true))), var_1.a, Struct_2(vec4<u32>(0u, var_1.a.x, 15412u, u_input.b.x), Struct_1(var_1.b.a, vec4<u32>(4294967295u, 43909u, u_input.b.x, var_2.b.d), var_2.b.c, 28117u, var_2.b.e))), ~vec4<u32>(var_1.a.x, u_input.b.x, 27536u, 3498u), Struct_2(var_1.b.b, var_2.b)), ~(var_2.b.b | var_2.a), Struct_2(var_2.b.b, func_3(Struct_3(var_2.b.b.yw, var_2.a.yw, Struct_1(var_1.b.a, vec4<u32>(var_2.a.x, 1u, 1u, var_2.a.x), var_1.b.c, var_2.b.b.x, var_2.b.e)), vec4<u32>(41956u, 72277u, 0u, var_1.a.x), var_2).c)), ~var_2.a, var_2), var_2.b.b, var_2).c;
                }
            }
        }
    }
    var var_2 = Struct_1(abs(countOneBits(var_1.b.a)), vec4<u32>(0u, 44660u, max(u_input.b.x, u_input.b.x), abs(u_input.b.x | 4294967295u)), var_1.b.c, u_input.b.x, vec2<bool>(arg_0.x, arg_0.x | (32094 >= _wgslsmith_sub_i32(var_1.b.a.x, u_input.d.x))));
    return global0[_wgslsmith_index_u32(var_2.b.x, 31u)];
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> i32 {
    for (; ; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        global0 = array<vec4<bool>, 31>();
        global0 = array<vec4<bool>, 31>();
        global0 = array<vec4<bool>, 31>();
        var var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(28977u, u_input.b.x), _wgslsmith_mult_vec2_u32(vec2<u32>(6614u, u_input.b.x), u_input.b), firstTrailingBit(u_input.b)), select(u_input.b, ~vec2<u32>(u_input.b.x, u_input.b.x), !true)), u_input.b);
        break;
    }
    global0 = array<vec4<bool>, 31>();
    switch (u_input.a.x) {
        default: {
            var var_0 = select(vec4<i32>(abs(-25846), -1, -1, ~arg_1), select(reverseBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, u_input.c, -1), vec4<i32>(-2147483648, -24962, 64886, u_input.a.x))), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(-1, -27426, -26817, arg_1), firstLeadingBit(vec4<i32>(-7003, u_input.d.x, arg_1, arg_1))), func_8(func_7(u_input.a, func_3(Struct_3(vec2<u32>(u_input.b.x, 4517u), u_input.b, Struct_1(vec4<i32>(u_input.d.x, 0, arg_1, -2147483648), vec4<u32>(9419u, u_input.b.x, u_input.b.x, 25317u), vec2<f32>(155.0, 162.0), u_input.b.x, arg_0)), vec4<u32>(0u, 1u, 4294967295u, u_input.b.x), Struct_2(vec4<u32>(0u, 624u, 1u, 63382u), Struct_1(vec4<i32>(26348, u_input.d.x, 2147483647, arg_1), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u), vec2<f32>(-208.0, -1000.0), u_input.b.x, arg_0)))))), func_8(!vec2<bool>(!false, false)).x);
            if (all(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, ~4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, ~u_input.b.x, ~1u)), 31u)])) {
                var var_1 = countOneBits(arg_1);
            }
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_1 = Struct_3(_wgslsmith_add_vec2_u32(min(u_input.b, u_input.b | u_input.b), ~(~u_input.b)) >> (vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(47954u, 37080u)), firstTrailingBit(1942u)), max(u_input.b.x, ~27171u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(0u, ~(~0u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(0u, 1u, u_input.b.x))), func_3(Struct_3(_wgslsmith_clamp_vec2_u32(~u_input.b, vec2<u32>(u_input.b.x, 8123u), vec2<u32>(1u, u_input.b.x)), u_input.b << (~u_input.b % vec2<u32>(32u)), func_3(func_3(Struct_3(u_input.b, vec2<u32>(u_input.b.x, 56211u), Struct_1(vec4<i32>(arg_1, -24371, u_input.a.x, 7397), vec4<u32>(u_input.b.x, 43545u, 0u, u_input.b.x), vec2<f32>(1016.0, -622.0), 0u, vec2<bool>(arg_0.x, arg_0.x))), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(1, arg_1, var_0.x, arg_1), vec4<u32>(33469u, 4294967295u, u_input.b.x, u_input.b.x), vec2<f32>(-452.0, -1239.0), u_input.b.x, vec2<bool>(arg_0.x, false)))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(51389u, 0u, 14967u, u_input.b.x)), Struct_2(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 50859u), Struct_1(vec4<i32>(2147483647, var_0.x, u_input.a.x, u_input.a.x), vec4<u32>(41508u, 4294967295u, u_input.b.x, u_input.b.x), vec2<f32>(1445.0, 481.0), 26849u, vec2<bool>(false, arg_0.x)))).c), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) ^ min(abs(vec4<u32>(21049u, u_input.b.x, u_input.b.x, 0u)), ~vec4<u32>(4294967295u, u_input.b.x, 40633u, u_input.b.x)), Struct_2(vec4<u32>(func_4(Struct_1(vec4<i32>(arg_1, arg_1, u_input.c, 20329), vec4<u32>(u_input.b.x, 40607u, 4294967295u, 0u), vec2<f32>(1592.0, 501.0), 55094u, vec2<bool>(false, true))), u_input.b.x, 4294967295u & 33241u, ~u_input.b.x), Struct_1(vec4<i32>(5031, -2147483648, arg_1, var_0.x), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1107.0, 1361.0), vec2<f32>(-979.0, 1618.0), arg_0.x)), u_input.b.x, vec2<bool>(true, true)))).c);
                return select(max(arg_1, func_3(func_3(Struct_3(vec2<u32>(0u, u_input.b.x), vec2<u32>(49572u, 21973u), var_1.c), var_1.c.b, Struct_2(var_1.c.b, var_1.c)), firstTrailingBit(vec4<u32>(10767u, var_1.b.x, var_1.c.d, var_1.b.x)), Struct_2(vec4<u32>(7352u, var_1.b.x, 1u, 72239u), var_1.c)).c.a.x) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.c.d, 27097u, var_1.a.x), vec3<u32>(1u, var_1.b.x, 1111u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(32683u, u_input.b.x, u_input.b.x), var_1.c.b.xzw | var_1.c.b.zxw)) % 32u), arg_1, arg_0.x);
            }
        }
    }
    global0 = array<vec4<bool>, 31>();
    let var_0 = _wgslsmith_mult_u32(0u, func_3(Struct_3(u_input.b, abs(~vec2<u32>(u_input.b.x, 1u)), Struct_1(-vec4<i32>(-1, arg_1, -1, u_input.d.x), ~vec4<u32>(u_input.b.x, 33883u, 1u, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000.0, -827.0) - vec2<f32>(1579.0, 1018.0)), 0u, arg_0)), ~(~vec4<u32>(u_input.b.x, 35076u, u_input.b.x, u_input.b.x)), Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 100843u, u_input.b.x), vec4<u32>(1385u, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x, countOneBits(u_input.b.x), _wgslsmith_clamp_u32(4294967295u, 1u, u_input.b.x)), Struct_1(vec4<i32>(0, 0, arg_1, u_input.c) >> (vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000.0, -621.0), vec2<f32>(766.0, 893.0))), ~u_input.b.x, vec2<bool>(true, true)))).b.x);
    return u_input.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    switch (8221) {
        case -38762: {
            switch (_wgslsmith_mult_i32(func_2(!(!vec2<bool>(true, arg_2.c.e.x)), -(~_wgslsmith_mult_i32(6434, u_input.c))), u_input.c)) {
                case 0: {
                    let var_0 = Struct_1(firstTrailingBit(arg_2.c.a), vec4<u32>(firstLeadingBit(~countOneBits(u_input.b.x)), ~arg_2.b.x, _wgslsmith_mod_u32(4294967295u, arg_2.a.x), countOneBits(_wgslsmith_mod_u32(1u, 4294967295u))), arg_2.c.c, arg_1.x, vec2<bool>(arg_2.c.c.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.c.c.x)), _wgslsmith_f_op_f32(select(arg_2.c.c.x, 998.0, arg_2.c.e.x))), all(!vec4<bool>(true, false, arg_2.c.e.x, true)) || arg_2.c.e.x));
                    return Struct_1(~var_0.a, firstLeadingBit(max(select(abs(vec4<u32>(arg_2.b.x, arg_1.x, u_input.b.x, arg_1.x)), select(vec4<u32>(41921u, arg_2.b.x, 36944u, 0u), arg_2.c.b, vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, arg_2.c.e.x)), !vec4<bool>(true, false, arg_2.c.e.x, false)), arg_2.c.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2.c.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(236.0, -1214.0)))) + vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x + arg_2.c.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.x * arg_2.c.c.x))))), abs(1u), !vec2<bool>(var_0.e.x, !(-885.0 > -1363.0)));
                }
                case 2147483647: {
                    var var_0 = Struct_1(select(-vec4<i32>(_wgslsmith_clamp_i32(-2147483648, arg_3.x, -10292), 0, 6871 & u_input.c, i32(-1) * -52263), min(-max(arg_2.c.a, arg_2.c.a), arg_2.c.a), vec4<bool>(-2147483648 >= countOneBits(arg_3.x), !(arg_0.x != u_input.c), !arg_2.c.e.x, func_8(arg_2.c.e).x)), arg_2.c.b, vec2<f32>(-478.0, _wgslsmith_f_op_f32(step(-1650.0, arg_2.c.c.x))), 1u, select(func_3(Struct_3(abs(vec2<u32>(u_input.b.x, arg_2.a.x)), ~arg_2.b, Struct_1(arg_2.c.a, arg_2.c.b, arg_2.c.c, u_input.b.x, arg_2.c.e)), ~_wgslsmith_clamp_vec4_u32(arg_2.c.b, arg_2.c.b, arg_2.c.b), Struct_2(vec4<u32>(arg_2.c.d, arg_1.x, 2573u, arg_1.x), Struct_1(vec4<i32>(-26572, arg_0.x, -2147483648, arg_3.x), arg_2.c.b, arg_2.c.c, 0u, arg_2.c.e))).c.e, vec2<bool>(func_5(), !true), arg_2.c.e.x));
                    let var_1 = arg_2.c;
                    let var_2 = Struct_2(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.d, u_input.b.x, 5420u, arg_2.a.x), _wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, 9263u, 28561u, var_0.b.x)), ~vec4<u32>(u_input.b.x, var_1.b.x, 44552u, arg_1.x))), arg_2.c);
                    global0 = array<vec4<bool>, 31>();
                    global0 = array<vec4<bool>, 31>();
                }
                default: {
                    let var_0 = arg_2.c;
                    var var_1 = 81208u;
                    var var_2 = arg_2.c.e;
                }
            }
        }
        case 1: {
            if (!(_wgslsmith_f_op_f32(-1337.0) <= _wgslsmith_f_op_f32(ceil(1889.0)))) {
                let var_0 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(2147483647, firstLeadingBit(arg_0.x)), arg_3.x, ~min(arg_0.x, _wgslsmith_mod_i32(18409, u_input.d.x)), _wgslsmith_div_i32(max(-16077, 2147483647), reverseBits(0)) >> (func_6(abs(vec4<u32>(arg_1.x, 4294967295u, 4294967295u, 4294967295u)), vec2<f32>(706.0, 1456.0)) % 32u)), reverseBits(arg_2.c.b) ^ arg_2.c.b, arg_2.c.c, ~u_input.b.x, vec2<bool>(arg_2.c.e.x && arg_2.c.e.x, false));
                let var_1 = Struct_1(vec4<i32>(-2147483648, var_0.a.x, var_0.a.x, -2147483648 & _wgslsmith_mult_i32(-21547, 0)), vec4<u32>(firstTrailingBit(4294967295u), 39149u, ~reverseBits(~0u), firstTrailingBit(arg_2.c.b.x)), arg_2.c.c, arg_2.a.x, func_7(~vec2<i32>(abs(var_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-6691, var_0.a.x, -73442), arg_3)), arg_2));
            }
        }
        case 2147483647: {
            return arg_2.c;
        }
        default: {
            for (var var_0 = -(~(-arg_2.c.a.x)); !false; var_0 -= 1) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                global0 = array<vec4<bool>, 31>();
                global0 = array<vec4<bool>, 31>();
                let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.a.x, -func_2(!vec2<bool>(arg_2.c.e.x, true), arg_2.c.a.x), arg_2.c.a.x), abs(~u_input.d));
                let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.c.x) - _wgslsmith_f_op_f32(max(210.0, 661.0)))) + arg_2.c.c.x));
            }
        }
    }
    for (var var_0 = 7258; ; var_0 += 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        break;
    }
    var var_0 = ~u_input.c;
    let var_1 = arg_2.c;
    if (var_1.e.x) {
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            var_0 = arg_0.x | _wgslsmith_mult_i32(min(_wgslsmith_mult_i32(51319 << (u_input.b.x % 32u), var_1.a.x), firstLeadingBit(abs(var_1.a.x))), i32(-1) * -38432);
            let var_2 = !vec3<bool>(any(!select(vec3<bool>(true, true, arg_2.c.e.x), vec3<bool>(var_1.e.x, true, true), vec3<bool>(false, false, true))), select(!(true || var_1.e.x), !(var_1.d > 1u), func_5()), true);
        }
        var var_2 = func_3(Struct_3(vec2<u32>(18247u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, arg_1.x), arg_2.c.b.ywx) >> (func_4(var_1) % 32u)), ~arg_2.b, func_3(func_3(func_3(Struct_3(vec2<u32>(arg_2.a.x, arg_2.b.x), vec2<u32>(65177u, 1u), Struct_1(vec4<i32>(arg_3.x, 12684, -2147483648, var_1.a.x), var_1.b, vec2<f32>(arg_2.c.c.x, arg_2.c.c.x), var_1.d, var_1.e)), vec4<u32>(49639u, var_1.d, 7918u, 4294967295u), Struct_2(vec4<u32>(var_1.b.x, 1624u, 1u, var_1.d), arg_2.c)), arg_2.c.b, Struct_2(arg_2.c.b, arg_2.c)), var_1.b | var_1.b, Struct_2(~arg_2.c.b, arg_2.c)).c), arg_2.c.b, Struct_2(abs(~vec4<u32>(arg_2.c.b.x, 4294967295u, arg_1.x, arg_2.c.b.x) ^ (vec4<u32>(u_input.b.x, var_1.b.x, u_input.b.x, u_input.b.x) & arg_2.c.b)), var_1)).c;
        var var_3 = Struct_3(~func_3(func_3(arg_2, var_1.b, Struct_2(vec4<u32>(1u, 0u, 4294967295u, 31244u), Struct_1(vec4<i32>(66469, 0, -1, 5403), var_1.b, vec2<f32>(1200.0, arg_2.c.c.x), 4294967295u, vec2<bool>(arg_2.c.e.x, true)))), vec4<u32>(1u, 33310u, arg_1.x, arg_1.x), Struct_2(vec4<u32>(1u, arg_2.c.d, 25959u, var_1.d), Struct_1(vec4<i32>(arg_2.c.a.x, var_2.a.x, -11235, arg_0.x), var_1.b, var_2.c, 50148u, var_1.e))).c.b.ww << ((~firstTrailingBit(arg_2.b) | vec2<u32>(~13446u, ~u_input.b.x)) % vec2<u32>(32u)), max(vec2<u32>(0u, ~(~0u)), reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, arg_2.a.x), var_2.b.yz))), var_1);
    }
    return var_1;
}

fn func_9(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_2(vec4<u32>(firstLeadingBit(u_input.b.x >> (0u % 32u)), 4294967295u, 1u, 1u), arg_1.c);
    switch (min(~(-4803), func_2(select(!func_7(var_0.b.a.xx, arg_1), func_1(abs(vec3<i32>(-2147483648, -2147483648, var_0.b.a.x)), ~var_0.a.xyy, func_3(arg_1, vec4<u32>(var_0.b.b.x, 1u, 8067u, 1u), var_0), arg_1.c.a.xzw).e, !(arg_1.c.a.x == 1)), countOneBits(i32(-1) * -arg_1.c.a.x)))) {
        default: {
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                continue;
            }
            switch (22068) {
                case -2147483648: {
                    var var_1 = arg_1.c;
                    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_0.b.b.x, var_0.b.b.x), 31u)];
                    var_2 = select(!global0[_wgslsmith_index_u32(0u, 31u)], arg_3, select(select(vec4<bool>(!false, all(vec4<bool>(var_0.b.e.x, false, arg_3.x, true)), select(true, false, arg_3.x), arg_3.x), select(select(arg_3, global0[_wgslsmith_index_u32(arg_1.b.x, 31u)], arg_3.x), arg_3, !false), vec4<bool>(false, -2147483648 >= 38273, arg_3.x, func_7(arg_1.c.a.yy, Struct_3(var_0.a.xy, vec2<u32>(55749u, 23916u), Struct_1(var_0.b.a, var_0.a, vec2<f32>(var_0.b.c.x, var_1.c.x), 7699u, vec2<bool>(false, var_2.x)))).x)), !vec4<bool>(var_2.x | var_0.b.e.x, all(arg_3), var_1.e.x, func_3(Struct_3(vec2<u32>(4294967295u, arg_1.c.b.x), vec2<u32>(0u, 47680u), arg_1.c), vec4<u32>(var_0.a.x, var_0.a.x, 35445u, var_1.d), Struct_2(var_0.a, Struct_1(arg_1.c.a, vec4<u32>(var_0.b.b.x, 4294967295u, 4294967295u, 0u), var_1.c, 24451u, vec2<bool>(arg_1.c.e.x, false)))).c.e.x), !arg_3));
                    var var_3 = u_input.a.x != var_0.b.a.x;
                    var var_4 = Struct_2(var_1.b, Struct_1(_wgslsmith_mult_vec4_i32(~(-var_0.b.a), var_0.b.a), ~firstLeadingBit(vec4<u32>(arg_1.a.x, u_input.b.x, 15620u, 18047u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, arg_1.c.c.x)), _wgslsmith_f_op_f32(floor(var_0.b.c.x))), min(_wgslsmith_div_u32(u_input.b.x, func_1(var_1.a.zwy, vec3<u32>(10676u, 69289u, var_1.b.x), arg_1, vec3<i32>(1, 1, u_input.d.x)).d), 1u), !func_3(Struct_3(var_0.b.b.xx, var_0.a.xx, var_0.b), max(var_1.b, var_1.b), Struct_2(arg_1.c.b, arg_1.c)).c.e));
                }
                case 2147483647: {
                    let var_1 = vec3<i32>(var_0.b.a.x, func_3(func_3(func_3(arg_1, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(var_0.a, var_0.b)), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a.x, 1u, u_input.b.x, arg_1.b.x), var_0.a), var_0), arg_1.c.b << (vec4<u32>(~0u, u_input.b.x, _wgslsmith_sub_u32(var_0.b.d, 0u), ~arg_1.b.x) % vec4<u32>(32u)), var_0).c.a.x, max(_wgslsmith_sub_i32(arg_1.c.a.x, 1471), _wgslsmith_div_i32(~(-81531), arg_1.c.a.x)));
                    global0 = array<vec4<bool>, 31>();
                    var var_2 = Struct_1(-vec4<i32>(99, ~u_input.a.x ^ func_2(vec2<bool>(var_0.b.e.x, false), u_input.c), var_0.b.a.x, arg_1.c.a.x), ~arg_1.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(619.0, arg_0), _wgslsmith_f_op_f32(-arg_1.c.c.x)))), ~max(0u, 13895u), !select(!(!vec2<bool>(true, false)), !(!vec2<bool>(false, arg_1.c.e.x)), true));
                    var var_3 = ~49584u;
                }
                case -22106: {
                    var var_1 = -1;
                    let var_2 = func_1(var_0.b.a.zxz, arg_1.c.b.wxz, Struct_3(u_input.b, var_0.a.xz, Struct_1(-arg_1.c.a >> (var_0.b.b % vec4<u32>(32u)), var_0.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.c - vec2<f32>(2026.0, arg_0))), ~u_input.b.x ^ 0u, var_0.b.e)), _wgslsmith_add_vec3_i32(var_0.b.a.wyz, _wgslsmith_sub_vec3_i32(-min(vec3<i32>(u_input.d.x, -2147483648, u_input.d.x), arg_1.c.a.zxx), vec3<i32>(u_input.d.x ^ var_0.b.a.x, _wgslsmith_dot_vec3_i32(var_0.b.a.xzx, vec3<i32>(var_0.b.a.x, u_input.d.x, u_input.d.x)), 2147483647))));
                }
                default: {
                    global0 = array<vec4<bool>, 31>();
                    global0 = array<vec4<bool>, 31>();
                    global0 = array<vec4<bool>, 31>();
                    var var_1 = Struct_2(arg_1.c.b, func_1(~vec3<i32>(-1, var_0.b.a.x, u_input.d.x) | arg_1.c.a.ywz, max(arg_1.c.b.yxz, arg_1.c.b.yww), Struct_3(~min(var_0.b.b.zw, vec2<u32>(arg_1.c.b.x, 0u)), var_0.a.ww, var_0.b), ~vec3<i32>(86551, abs(-2147483648), ~var_0.b.a.x)));
                }
            }
        }
    }
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.c.x, 1447.0, 1206.0) + vec3<f32>(var_0.b.c.x, arg_1.c.c.x, -1000.0))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_3(arg_1, ~arg_1.c.b, Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, arg_1.c.b.x, 1u), var_0.b)).c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2151.0 * -1000.0)), _wgslsmith_f_op_f32(-arg_1.c.c.x))), any(global0[_wgslsmith_index_u32(~var_0.b.d, 31u)])));
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        var var_2 = var_0.b;
        for (var var_3 = 59697; ; var_3 += 1) {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            break;
        }
        let var_3 = ~vec3<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~47938u, func_3(arg_1, vec4<u32>(arg_1.c.d, 4294967295u, 44771u, 1u), var_0).c.b.x), func_4(Struct_1(vec4<i32>(u_input.d.x, 2147483647, 1, var_2.a.x), var_2.b, vec2<f32>(-371.0, arg_0), var_0.a.x, vec2<bool>(arg_1.c.e.x, false))), 11585u), min(var_2.d, var_2.d));
        if (_wgslsmith_f_op_f32(-1047.0) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-896.0, 300.0) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279.0)), 319.0)))) {
        }
    }
    global0 = array<vec4<bool>, 31>();
    return Struct_2(vec4<u32>(10526u ^ arg_1.a.x, firstLeadingBit(arg_1.a.x) | ~0u, ~max(u_input.b.x, arg_1.a.x), _wgslsmith_div_u32(u_input.b.x, ~arg_1.a.x)) << (func_1(u_input.d, reverseBits(firstLeadingBit(vec3<u32>(arg_1.c.b.x, u_input.b.x, var_0.a.x))), func_3(Struct_3(arg_1.c.b.zz, vec2<u32>(1u, 86050u), arg_1.c), vec4<u32>(76291u, arg_1.c.b.x, 0u, 4294967295u), Struct_2(var_0.a, Struct_1(vec4<i32>(41154, arg_1.c.a.x, u_input.c, 1), arg_1.c.b, vec2<f32>(arg_0, -1000.0), 35797u, arg_3.wz))), var_0.b.a.xxz).b % vec4<u32>(32u)), arg_1.c);
}

fn func_10(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = vec4<u32>(func_6(_wgslsmith_clamp_vec4_u32(arg_1.b, arg_1.b, vec4<u32>(4294967295u, firstTrailingBit(arg_1.d), ~0u, ~0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.c, arg_0.b.c, arg_0.b.e.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.c.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-439.0, arg_1.c.x))))), u_input.b.x, _wgslsmith_sub_u32(1u ^ _wgslsmith_mod_u32(select(4294967295u, arg_1.d, false), ~arg_0.a.x), 28791u), 36662u);
    var var_1 = Struct_2(~countOneBits(select(~arg_0.a, ~arg_1.b, select(global0[_wgslsmith_index_u32(arg_1.d, 31u)], vec4<bool>(arg_0.b.e.x, false, arg_1.e.x, false), vec4<bool>(arg_0.b.e.x, arg_0.b.e.x, arg_0.b.e.x, arg_0.b.e.x)))), Struct_1(vec4<i32>(~(-16765 & 35244), arg_0.b.a.x, 2147483647, 0), vec4<u32>(~(~arg_0.a.x), func_6(arg_0.b.b, vec2<f32>(-477.0, -229.0)), func_6(arg_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(793.0, arg_1.c.x))), arg_0.a.x), arg_1.c, ~43188u, arg_0.b.e));
    var_0 = ~vec4<u32>(54697u, (~1u ^ arg_1.b.x) >> (24205u % 32u), ~0u, func_3(Struct_3(vec2<u32>(55227u, 0u), vec2<u32>(26560u, 1u), func_3(Struct_3(u_input.b, arg_0.a.yx, arg_0.b), vec4<u32>(56707u, 397u, arg_1.d, var_1.b.d), Struct_2(vec4<u32>(74900u, arg_1.b.x, 0u, 67303u), var_1.b)).c), ~vec4<u32>(24939u, u_input.b.x, var_1.a.x, var_0.x), arg_0).c.b.x);
    for (; arg_0.b.e.x; ) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        loop {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        }
    }
    var_1 = arg_0;
    return ~11173u << (_wgslsmith_div_u32(104482u, 4294967295u ^ 1u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    if (!false) {
        global0 = array<vec4<bool>, 31>();
        let var_0 = u_input.a.x;
        loop {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            var var_1 = firstTrailingBit(func_10(func_9(-715.0, Struct_3(~u_input.b, ~u_input.b, func_1(u_input.d, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), Struct_3(vec2<u32>(u_input.b.x, 4294967295u), u_input.b, Struct_1(vec4<i32>(u_input.c, -2147483648, -2147483648, var_0), vec4<u32>(u_input.b.x, u_input.b.x, 42571u, 830u), vec2<f32>(800.0, -485.0), 42397u, vec2<bool>(false, false))), u_input.d)), select(!vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(func_8(vec2<bool>(false, false)), vec4<bool>(false, false, true, false), !vec4<bool>(false, true, false, false))), func_1(~_wgslsmith_div_vec3_i32(u_input.d, u_input.d), func_3(func_3(Struct_3(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(36436, u_input.d.x, -31995, 2147483647), vec4<u32>(53998u, 0u, u_input.b.x, 0u), vec2<f32>(1364.0, 658.0), u_input.b.x, vec2<bool>(true, false))), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 3263u, u_input.b.x), Struct_1(vec4<i32>(-14149, var_0, var_0, 9374), vec4<u32>(1u, u_input.b.x, 4294967295u, 0u), vec2<f32>(-1887.0, -324.0), u_input.b.x, vec2<bool>(true, false)))), vec4<u32>(u_input.b.x, 2091u, 64013u, u_input.b.x) | vec4<u32>(0u, u_input.b.x, u_input.b.x, 19181u), Struct_2(vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(-14197, 17896, -17413, u_input.a.x), vec4<u32>(u_input.b.x, 4294967295u, 16196u, 11449u), vec2<f32>(-823.0, 475.0), 19739u, vec2<bool>(false, false)))).c.b.xxx, func_3(Struct_3(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(41503, var_0, 3364, 1), vec4<u32>(4294967295u, 35016u, 4294967295u, u_input.b.x), vec2<f32>(-1000.0, 1102.0), 1u, vec2<bool>(false, true))), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u), Struct_2(vec4<u32>(49937u, u_input.b.x, 4294967295u, 36210u), Struct_1(vec4<i32>(var_0, u_input.a.x, -2147483648, u_input.c), vec4<u32>(u_input.b.x, 6632u, u_input.b.x, u_input.b.x), vec2<f32>(584.0, 100.0), 51971u, vec2<bool>(true, true)))), vec3<i32>(func_2(vec2<bool>(true, false), -22969), func_1(vec3<i32>(9734, var_0, -2147483648), vec3<u32>(0u, u_input.b.x, 51716u), Struct_3(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(29778u, u_input.b.x), Struct_1(vec4<i32>(-1, var_0, u_input.c, -183), vec4<u32>(102691u, 7525u, 0u, u_input.b.x), vec2<f32>(-2678.0, -293.0), 15288u, vec2<bool>(true, true))), vec3<i32>(var_0, 2147483647, var_0)).a.x, -1))));
            global0 = array<vec4<bool>, 31>();
        }
        var var_1 = select(select(!global0[_wgslsmith_index_u32(60389u, 31u)], !(!(!vec4<bool>(true, true, true, true))), func_8(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), !vec4<bool>(!(173.0 > 1123.0), !select(false, true, true), all(global0[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 31u)]), select(false, true, true) || any(vec3<bool>(true, false, true))), false);
    }
    if (true) {
        let var_0 = Struct_2(vec4<u32>(~func_1(vec3<i32>(u_input.c, 29185, -1) >> (vec3<u32>(u_input.b.x, 1u, 61088u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(698u, 1u, 45329u), vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(111261u, 0u, u_input.b.x)), Struct_3(vec2<u32>(u_input.b.x, 37789u), vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(u_input.a.x, -2147483648, u_input.a.x, u_input.d.x), vec4<u32>(u_input.b.x, 45888u, u_input.b.x, u_input.b.x), vec2<f32>(-555.0, 847.0), u_input.b.x, vec2<bool>(true, false))), vec3<i32>(-21380, u_input.d.x, 39585) << (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u))).d, ~(_wgslsmith_div_u32(u_input.b.x, u_input.b.x) | 24931u), u_input.b.x, ~_wgslsmith_sub_u32(~19989u, 14398u)), func_1(-vec3<i32>(_wgslsmith_add_i32(-18156, 95370), u_input.d.x, 90691 | u_input.d.x), (vec3<u32>(u_input.b.x, u_input.b.x, 0u) << (abs(vec3<u32>(u_input.b.x, u_input.b.x, 12310u)) % vec3<u32>(32u))) >> (~(~vec3<u32>(47130u, 7391u, 0u)) % vec3<u32>(32u)), func_3(func_3(Struct_3(u_input.b, vec2<u32>(1u, u_input.b.x), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 10043, -2147483648), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x), vec2<f32>(-477.0, -383.0), 4294967295u, vec2<bool>(false, true))), vec4<u32>(u_input.b.x, 10802u, u_input.b.x, u_input.b.x), func_9(979.0, Struct_3(vec2<u32>(17084u, u_input.b.x), u_input.b, Struct_1(vec4<i32>(u_input.d.x, u_input.c, 18280, u_input.d.x), vec4<u32>(u_input.b.x, 31182u, 4294967295u, u_input.b.x), vec2<f32>(-1158.0, 922.0), u_input.b.x, vec2<bool>(false, false))), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), _wgslsmith_add_vec4_u32(vec4<u32>(39114u, 9888u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 53970u, 16868u, u_input.b.x)), func_9(_wgslsmith_f_op_f32(trunc(1678.0)), Struct_3(u_input.b, vec2<u32>(44561u, u_input.b.x), Struct_1(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, u_input.a.x), vec4<u32>(1u, u_input.b.x, 18113u, 4294967295u), vec2<f32>(-445.0, 1399.0), 1u, vec2<bool>(true, false))), !vec3<bool>(false, false, true), vec4<bool>(true, true, true, true))), vec3<i32>(u_input.d.x, _wgslsmith_mod_i32(-2147483648, reverseBits(2147483647)), 56767)));
        let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-203.0, -1066.0, var_0.b.c.x)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-474.0, -1468.0, -562.0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(483.0, 1000.0, -1136.0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.x, -861.0, var_0.b.c.x)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-880.0, 1257.0, -937.0), vec3<f32>(var_0.b.c.x, var_0.b.c.x, -257.0))))))));
    }
    global0 = array<vec4<bool>, 31>();
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        var var_0 = ~min(-u_input.a.x, 0);
    }
    for (var var_0 = -7168; var_0 != -3032; var_0 -= 1) {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        var var_1 = ~(-1);
    }
    var var_0 = 1000.0;
    switch (func_1(select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1, u_input.a.x), vec3<i32>(-1, -41088, 37521) << (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(-8394, u_input.c), select(u_input.a.x, u_input.d.x, true), ~1)), u_input.d, ~u_input.b.x > (27031u & u_input.b.x)), countOneBits(min(vec3<u32>(3148u, u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, 0u)) ^ (firstLeadingBit(vec3<u32>(63988u, u_input.b.x, u_input.b.x)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 29819u), vec3<u32>(42156u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)))), Struct_3(~u_input.b, vec2<u32>(u_input.b.x, 39158u), Struct_1(vec4<i32>(firstTrailingBit(u_input.a.x), u_input.a.x, max(u_input.a.x, u_input.a.x), u_input.c), ~(~vec4<u32>(16414u, u_input.b.x, 3114u, 48563u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-940.0, 884.0))), abs(~42505u), func_7(u_input.a, Struct_3(u_input.b, vec2<u32>(100580u, 80215u), Struct_1(vec4<i32>(0, -20258, -2147483648, u_input.a.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u), vec2<f32>(728.0, 2054.0), 36522u, vec2<bool>(true, true)))))), u_input.d).a.x) {
        default: {
            var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_9(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1977.0))), Struct_3(u_input.b, ~vec2<u32>(1u, u_input.b.x), func_1(vec3<i32>(u_input.d.x, u_input.c, u_input.c), vec3<u32>(u_input.b.x, 3552u, 1u), Struct_3(u_input.b, vec2<u32>(u_input.b.x, 12999u), Struct_1(vec4<i32>(u_input.c, 14546, -1, u_input.c), vec4<u32>(34044u, 20436u, 90339u, 0u), vec2<f32>(-575.0, 1128.0), u_input.b.x, vec2<bool>(true, true))), vec3<i32>(-26846, u_input.a.x, 0))), !vec3<bool>(true, true, true), vec4<bool>(func_1(vec3<i32>(-9511, u_input.c, u_input.d.x), vec3<u32>(u_input.b.x, u_input.b.x, 59040u), Struct_3(u_input.b, vec2<u32>(u_input.b.x, 1u), Struct_1(vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, 2147483647), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec2<f32>(-824.0, -1000.0), 30012u, vec2<bool>(false, false))), vec3<i32>(-17779, u_input.d.x, u_input.a.x)).e.x, func_5(), false || false, 2147483647 >= -11670)).b.c.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1238.0))) * -496.0))));
            loop {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                let var_1 = select(vec3<bool>(true, all(!vec2<bool>(false, true)), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), func_8(!vec2<bool>(!true, false != false)).wzx, func_5());
                break;
            }
            global0 = array<vec4<bool>, 31>();
            switch (_wgslsmith_mod_i32(-2779, firstLeadingBit(reverseBits(-u_input.c)))) {
                case 10608: {
                    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -848.0), _wgslsmith_f_op_f32(-188.0))))) * -879.0);
                    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(816.0, _wgslsmith_f_op_f32(round(-1000.0)))), _wgslsmith_f_op_f32(315.0 + -2020.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d, ~vec3<u32>(1u, 0u, 4294967295u), func_3(Struct_3(u_input.b, u_input.b, Struct_1(vec4<i32>(19485, 0, u_input.a.x, -1), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 43372u), vec2<f32>(-875.0, -424.0), 33645u, vec2<bool>(true, true))), vec4<u32>(25404u, 1u, u_input.b.x, 34334u), Struct_2(vec4<u32>(0u, 64492u, u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1), vec4<u32>(14075u, 1u, 1u, u_input.b.x), vec2<f32>(497.0, -1323.0), u_input.b.x, vec2<bool>(false, true)))), u_input.d << (vec3<u32>(u_input.b.x, 31861u, 4294967295u) % vec3<u32>(32u))).c.x + 604.0)), -494.0);
                    var var_2 = vec3<bool>(true, !false, any(func_1(min(-vec3<i32>(u_input.c, u_input.c, u_input.c), u_input.d << (vec3<u32>(42419u, u_input.b.x, 23251u) % vec3<u32>(32u))), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) & ~vec3<u32>(u_input.b.x, u_input.b.x, 57279u), Struct_3(select(u_input.b, vec2<u32>(1u, u_input.b.x), vec2<bool>(true, true)), func_9(465.0, Struct_3(u_input.b, vec2<u32>(u_input.b.x, 4294967295u), Struct_1(vec4<i32>(44486, -23372, 79762, 0), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec2<f32>(355.0, var_1.x), 8912u, vec2<bool>(true, true))), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(u_input.b.x, 31u)]).b.b.ww, func_9(519.0, Struct_3(u_input.b, u_input.b, Struct_1(vec4<i32>(-56268, u_input.d.x, u_input.c, 0), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.b.x), var_1.zy, 22232u, vec2<bool>(true, false))), vec3<bool>(false, false, false), vec4<bool>(false, false, false, true)).b), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(u_input.c, 1, u_input.d.x), u_input.d), vec3<i32>(-11093, 1, u_input.c))).e));
                    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
                    global0 = array<vec4<bool>, 31>();
                }
                case 29575: {
                    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -613.0) + -421.0)) >= _wgslsmith_f_op_f32(-1990.0);
                    var var_2 = vec2<u32>(4294967295u, ~(60132u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 24771u, u_input.b.x, 0u))));
                    var var_3 = select(vec2<bool>(var_1, all(vec3<bool>(var_1, false, var_1))), !(!vec2<bool>(func_9(606.0, Struct_3(vec2<u32>(115562u, u_input.b.x), vec2<u32>(20046u, u_input.b.x), Struct_1(vec4<i32>(u_input.a.x, u_input.d.x, -28298, u_input.c), vec4<u32>(4294967295u, 1u, var_2.x, 47130u), vec2<f32>(-640.0, -438.0), 1243u, vec2<bool>(false, true))), vec3<bool>(false, false, var_1), vec4<bool>(true, var_1, var_1, false)).b.e.x, var_1)), !vec2<bool>(false, func_1(u_input.d, ~vec3<u32>(var_2.x, var_2.x, var_2.x), func_3(Struct_3(u_input.b, u_input.b, Struct_1(vec4<i32>(u_input.a.x, u_input.c, -2147483648, u_input.c), vec4<u32>(u_input.b.x, var_2.x, 40658u, var_2.x), vec2<f32>(-845.0, -1000.0), 11598u, vec2<bool>(false, false))), vec4<u32>(4294967295u, 1u, 11449u, var_2.x), Struct_2(vec4<u32>(var_2.x, 27546u, u_input.b.x, u_input.b.x), Struct_1(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, 1), vec4<u32>(var_2.x, 1u, 17308u, 6333u), vec2<f32>(-194.0, -555.0), 47717u, vec2<bool>(var_1, true)))), ~vec3<i32>(2147483647, u_input.a.x, u_input.c)).e.x));
                }
                default: {
                    var var_1 = !select(select(vec3<bool>(false, !false, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(false, !false, false | true)), select(!(!vec3<bool>(true, true, true)), !(!vec3<bool>(false, false, true)), false), !false);
                    return;
                }
            }
        }
    }
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000.0 + 392.0), _wgslsmith_f_op_f32(exp2(-638.0)), !true)), -856.0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 1u, ~(u_input.b.x ^ 17115u)), ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 1u)), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, 7418u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2714.0) + -1707.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195.0) + 427.0))), -13981, abs(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(2974u, u_input.b.x, u_input.b.x, u_input.b.x) & (vec4<u32>(0u, u_input.b.x, u_input.b.x, 160954u) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u))))), 22891);
}

