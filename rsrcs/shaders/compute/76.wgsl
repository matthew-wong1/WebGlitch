// {"0:0":[205,34,240,149,189,206,158,135,94,143,124,181,189,115,51,116,170,144,124,80,53,36,14,60,215,99,130,172,22,28,164,28]}
// Seed: 2129574035148847554

struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1, 0u, 733.0, 1u, vec4<u32>(1u, 4294967295u, 1u, 25249u)), Struct_1(1, 4294967295u, 1835.0, 0u, vec4<u32>(0u, 0u, 0u, 4294967295u)), Struct_1(32902, 1u, 300.0, 1u, vec4<u32>(1u, 2189u, 38694u, 4294967295u)), Struct_1(-2147483648, 4458u, 129.0, 111489u, vec4<u32>(0u, 54601u, 46771u, 46445u)), Struct_1(-2147483648, 4294967295u, -1105.0, 50308u, vec4<u32>(72719u, 24225u, 29802u, 12347u)), Struct_1(0, 1u, 608.0, 1u, vec4<u32>(22436u, 6530u, 0u, 40313u)), Struct_1(-1376, 1u, 838.0, 4294967295u, vec4<u32>(1u, 31339u, 1u, 29230u)), Struct_1(71063, 0u, -106.0, 27824u, vec4<u32>(4294967295u, 4294967295u, 0u, 1665u)), Struct_1(2147483647, 41434u, -169.0, 3690u, vec4<u32>(4294967295u, 0u, 52551u, 89884u)), Struct_1(14954, 1u, 1049.0, 74103u, vec4<u32>(35788u, 0u, 1u, 4294967295u)), Struct_1(-11483, 7713u, 1000.0, 0u, vec4<u32>(108650u, 1u, 49533u, 27338u)), Struct_1(-28545, 4294967295u, -204.0, 737u, vec4<u32>(1u, 18516u, 1u, 4294967295u)), Struct_1(24766, 54001u, -624.0, 4294967295u, vec4<u32>(0u, 1u, 4294967295u, 32842u)), Struct_1(-2147483648, 42145u, 1206.0, 0u, vec4<u32>(63282u, 12990u, 4294967295u, 4294967295u)), Struct_1(-2147483648, 52991u, 1191.0, 46724u, vec4<u32>(10553u, 47349u, 45923u, 35763u)), Struct_1(21829, 4294967295u, -1023.0, 4294967295u, vec4<u32>(1u, 38712u, 0u, 1u)), Struct_1(17686, 1u, -268.0, 1u, vec4<u32>(4294967295u, 4294967295u, 10594u, 110846u)), Struct_1(36504, 4294967295u, -103.0, 4294967295u, vec4<u32>(0u, 73520u, 4294967295u, 0u)), Struct_1(28096, 0u, 596.0, 4294967295u, vec4<u32>(1u, 33589u, 59279u, 111444u)), Struct_1(-60754, 1u, 288.0, 1u, vec4<u32>(0u, 67087u, 60510u, 4294967295u)), Struct_1(-37354, 39272u, -311.0, 1u, vec4<u32>(27950u, 1u, 15038u, 115081u)), Struct_1(35184, 6567u, 225.0, 4763u, vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_1(-16688, 14140u, -1029.0, 4294967295u, vec4<u32>(4034u, 1u, 1u, 4294967295u)), Struct_1(-2147483648, 1u, -768.0, 1u, vec4<u32>(27149u, 0u, 4083u, 4294967295u)), Struct_1(-15051, 4783u, 1797.0, 11561u, vec4<u32>(0u, 0u, 1u, 1u)), Struct_1(-1, 2448u, -366.0, 4294967295u, vec4<u32>(52690u, 18306u, 7647u, 36401u)));

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(19469, -6180, 8906, 1), vec4<i32>(0, 2147483647, 28114, 23833), vec4<i32>(50174, -56657, 5930, -17932), vec4<i32>(1, 20496, 0, 0), vec4<i32>(0, 53966, -11188, 10908), vec4<i32>(-85096, 2147483647, 7776, 14440), vec4<i32>(2147483647, 10817, 0, -1), vec4<i32>(-13286, 2147483647, 0, -1), vec4<i32>(4469, 0, 1986, -2147483648), vec4<i32>(-2147483648, -20799, -3747, 81632), vec4<i32>(17314, 1, -49491, 4600), vec4<i32>(1, -25866, -1, 2147483647), vec4<i32>(-53886, -20456, -1, 26932), vec4<i32>(1, -1, 18749, 1), vec4<i32>(18788, -2147483648, 2147483647, 17256), vec4<i32>(25725, 0, 1, -2147483648), vec4<i32>(-12546, 30343, -2147483648, -2144), vec4<i32>(0, -19817, 2147483647, -2147483648), vec4<i32>(2368, -36702, 1, -10285), vec4<i32>(-1, -11229, 11770, -11829), vec4<i32>(-2147483648, 1, 1, -1), vec4<i32>(-29505, 1, 2147483647, 2147483647));

var<private> LOOP_COUNTERS: array<u32, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn func_5() -> Struct_5 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1084.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) - _wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1503.0, global1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 441.0))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -802.0), _wgslsmith_f_op_f32(-239.0)))))));
    let var_0 = _wgslsmith_f_op_f32(-1390.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-619.0 * global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1169.0)), true != false))));
    let var_1 = ~(~(-71114));
    var var_2 = ~firstTrailingBit(~(~vec2<i32>(var_1, var_1) << (~vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))));
    var var_3 = Struct_5(abs(17566));
    return Struct_5(var_2.x);
}

fn func_6(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_5) -> vec2<i32> {
    for (var var_0 = 0; var_0 >= 0; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global0 = array<Struct_1, 26>();
        let var_1 = global0[_wgslsmith_index_u32(48832u, 26u)];
        if (all(select(select(select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), any(vec3<bool>(arg_1, true, arg_1))), !vec4<bool>(arg_1, false, arg_1, arg_1), arg_1), select(vec4<bool>(true, arg_1, 4294967295u >= 2577u, arg_1 || false), select(vec4<bool>(arg_1, arg_1, true, arg_1), !vec4<bool>(false, false, arg_1, arg_1), select(vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, false, true, arg_1))), vec4<bool>(false, arg_1, any(vec2<bool>(true, true)), true & false)), select(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(true, true, true, false), false)), select(vec4<bool>(arg_1, arg_1, true, arg_1), select(vec4<bool>(false, false, arg_1, true), vec4<bool>(true, true, false, false), vec4<bool>(arg_1, false, false, true)), select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, arg_1, true, arg_1))), vec4<bool>(false, !true, !arg_1, all(vec4<bool>(arg_1, true, true, arg_1))))))) {
            let var_2 = var_1.b | 0u;
            continue;
        }
        for (var var_2 = 55069; ; var_2 += 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            return vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647, abs(var_1.a)), ~(~(7077 | -30225))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.yy >> (arg_0 % vec2<u32>(32u))), vec2<i32>(var_1.a, var_1.a)), arg_2.a));
        }
        if (max(334, select(_wgslsmith_sub_i32(-var_1.a, _wgslsmith_clamp_i32(arg_2.a, 0, var_1.a)), 48241, !select(arg_1, false, arg_1))) <= min(var_1.a >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 1u, var_1.e.x, 1u), var_1.e)) % 32u), 0)) {
            var var_2 = Struct_4(global0[_wgslsmith_index_u32(4294967295u, 26u)], u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -309.0), var_1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.x)), var_1.c, arg_1))) - _wgslsmith_f_op_f32(round(-1000.0))), Struct_2(_wgslsmith_f_op_f32(sign(618.0)), all(!select(vec4<bool>(true, true, arg_1, true), vec4<bool>(false, arg_1, false, arg_1), false)), 3011.0));
        }
    }
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var var_0 = all(!vec3<bool>(!arg_1, arg_1, arg_1));
        var var_1 = 0u <= (abs(~u_input.b.x | (u_input.b.x >> (4294967295u % 32u))) | 0u);
        continue;
    }
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 26u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, var_0.c, arg_1)) * var_0.c), global1.x))));
    if (arg_1) {
    }
    return ~select(u_input.a.wy, _wgslsmith_sub_vec2_i32(min(u_input.a.wx, -u_input.a.wx), u_input.a.wy), !false);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec2<f32> {
    let var_0 = 1u;
    for (; ; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        break;
    }
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(~func_6(_wgslsmith_sub_vec2_u32(u_input.b.xx, vec2<u32>(30369u, arg_0)), !true, func_5()), _wgslsmith_div_vec2_i32(firstTrailingBit(abs(u_input.a.wx)), ~(-vec2<i32>(0, arg_3)))), 0u, _wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global1.x))))), 21965u, ~vec4<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 0u), var_0 >> (var_0 % 32u)), 1016u, arg_1.e.x));
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        global0 = array<Struct_1, 26>();
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-1633.0 + arg_1.c), arg_1.c))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(arg_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-198.0)))))));
            global2 = array<vec4<i32>, 22>();
            continue;
        }
        if (all(vec4<bool>(1u < (_wgslsmith_sub_u32(arg_1.b, arg_1.e.x) & ~22789u), true, select(select(!false, true | false, !true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), false), any(!vec3<bool>(false, true, true)) & true))) {
            break;
        }
        for (var var_2 = 2147483647; ; ) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            break;
        }
    }
    for (; true; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        global0 = array<Struct_1, 26>();
    }
    return vec2<f32>(_wgslsmith_f_op_f32(-1416.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570.0))) * -354.0));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_1(arg_0.b.a, ~55813u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 19113u, ~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(arg_0.b.b, 42682u, u_input.b.x, 87137u) % vec4<u32>(32u))) << (vec4<u32>(1u, u_input.b.x, ~(49855u ^ 66412u), ~_wgslsmith_dot_vec2_u32(arg_0.b.e.zy, vec2<u32>(u_input.b.x, 71703u))) % vec4<u32>(32u)));
    let var_1 = arg_1;
    var var_2 = vec2<f32>(var_0.c, arg_0.b.c);
    global2 = array<vec4<i32>, 22>();
    var var_3 = vec2<bool>(!false, false);
    return u_input.b.x;
}

fn func_8(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_3 {
    global0 = array<Struct_1, 26>();
    for (var var_0: i32; var_0 <= -17327; var_0 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            continue;
        }
        break;
    }
    switch (-47842) {
        case 1: {
            let var_0 = _wgslsmith_clamp_i32(u_input.a.x, 455, u_input.a.x);
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1157.0)) + _wgslsmith_f_op_f32(ceil(-1234.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), arg_2))))), !false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1197.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x), _wgslsmith_f_op_f32(f32(-1.0) * -2086.0)))));
                var var_2 = vec3<i32>(~1, select(~(~u_input.a.x), -(~var_0), false), ~(u_input.a.x << (~(~88280u) % 32u)));
                let var_3 = _wgslsmith_f_op_f32(-global1.x);
                let var_4 = Struct_2(_wgslsmith_f_op_f32(-572.0), any(select(select(vec3<bool>(true, true, true), !vec3<bool>(false, false, false), !false), select(vec3<bool>(var_1.b, true, false), select(vec3<bool>(var_1.b, false, false), vec3<bool>(true, true, true), arg_2), false || false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328.0))));
            }
        }
        default: {
            global0 = array<Struct_1, 26>();
            var var_0 = Struct_4(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], ~0u, global1.x, Struct_2(arg_1.x, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(892.0))))));
            global0 = array<Struct_1, 26>();
        }
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        global0 = array<Struct_1, 26>();
    }
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            global1 = arg_1;
            var var_0 = ~max(~countOneBits(arg_0) ^ ~reverseBits(vec4<u32>(arg_0.x, 0u, 0u, arg_0.x)), ~(~(~vec4<u32>(1u, 4294967295u, arg_0.x, arg_0.x))));
            break;
        }
        switch (-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(u_input.a.zw, u_input.a.zw)), ~(vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), -select(firstTrailingBit(u_input.a.x), -u_input.a.x, arg_2), ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x & u_input.a.x))) {
            case -1: {
                var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-333.0), _wgslsmith_f_op_f32(-global1.x)), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-571.0 + -1450.0), _wgslsmith_f_op_f32(min(global1.x, 814.0))), !vec3<bool>(true, arg_2, arg_2))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_1.x, -964.0)), vec3<f32>(_wgslsmith_f_op_f32(841.0 * 1705.0), _wgslsmith_div_f32(arg_1.x, arg_1.x), 1822.0))))));
                let var_1 = arg_2;
                continue;
            }
            default: {
                let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-533.0))), !(!true), 769.0);
                let var_1 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u | 52184u), _wgslsmith_mult_vec2_u32(abs(u_input.b.zy), min(vec2<u32>(arg_0.x, 80109u), vec2<u32>(u_input.b.x, 42303u))))) << (vec2<u32>(~(~(~arg_0.x)), 34596u) % vec2<u32>(32u));
                let var_2 = global0[_wgslsmith_index_u32(4294967295u, 26u)];
                let var_3 = u_input.a.wy;
                var var_4 = vec4<u32>(min(arg_0.x, 36318u), ~_wgslsmith_clamp_u32(~13833u, 1u, var_1.x), var_1.x, 0u);
            }
        }
        var var_0 = vec4<u32>(_wgslsmith_clamp_u32(abs(arg_0.x), 38299u | u_input.b.x, u_input.b.x >> (0u % 32u)) | _wgslsmith_div_u32(62466u, u_input.b.x), ~(~u_input.b.x), 11395u, 26089u) ^ _wgslsmith_div_vec4_u32(~(~(vec4<u32>(u_input.b.x, arg_0.x, 84541u, 0u) >> (vec4<u32>(4294967295u, 1u, 1u, arg_0.x) % vec4<u32>(32u)))), ~(~(~vec4<u32>(u_input.b.x, 20471u, u_input.b.x, u_input.b.x))));
    }
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 621.0)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1)))))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, firstLeadingBit(arg_0.x)), 26u)]);
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.a.yy, vec2<i32>(u_input.a.x, 2116)), reverseBits(-u_input.a.wz));
    let var_1 = func_8(vec4<u32>(func_7(Struct_3(_wgslsmith_f_op_vec2_f32(func_4(u_input.b.x, Struct_1(var_0.x, 25832u, 2547.0, u_input.b.x, vec4<u32>(u_input.b.x, 4294967295u, arg_0, arg_0)), u_input.a.x, u_input.a.x)), Struct_1(-2147483648, arg_0, 1000.0, 32619u, vec4<u32>(59108u, arg_0, u_input.b.x, u_input.b.x))), func_5()), u_input.b.x, _wgslsmith_mod_u32(~abs(arg_0), u_input.b.x), arg_0), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1254.0, arg_1)))))))), any(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        for (var var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-40687 >> (_wgslsmith_mult_u32(27645u, arg_0) % 32u), 0) << ((var_1.b.b | arg_0) % 32u), ~(~u_input.a.x ^ _wgslsmith_sub_i32(~67698, firstLeadingBit(-2147483648)))); !(!(!(!false)) & false); var_2 += 1) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            let var_3 = Struct_4(Struct_1(firstTrailingBit(abs(~var_0.x)), max(_wgslsmith_mult_u32(u_input.b.x, arg_0) | abs(var_1.b.e.x), _wgslsmith_mod_u32(5840u, arg_0) & 51464u), -525.0, ~u_input.b.x, vec4<u32>(u_input.b.x, var_1.b.d, u_input.b.x, countOneBits(select(arg_0, 0u, false)))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(u_input.b.x, u_input.b.x))), var_1.b.e.wz), (vec2<u32>(4294967295u, 4294967295u) & var_1.b.e.wz) ^ _wgslsmith_clamp_vec2_u32(u_input.b.zy, abs(vec2<u32>(25u, 57023u)), min(vec2<u32>(4294967295u, arg_0), vec2<u32>(1u, var_1.b.b)))), -369.0, Struct_2(_wgslsmith_f_op_f32(f32(-1.0) * -738.0), !(!(!false)), var_1.b.c));
            let var_4 = Struct_4(Struct_1(u_input.a.x, abs(_wgslsmith_mod_u32(abs(var_3.b), firstTrailingBit(33112u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + -2401.0) * global1.x), ~var_3.a.d, var_3.a.e ^ vec4<u32>(~var_3.b, ~arg_0, arg_0, _wgslsmith_div_u32(u_input.b.x, 1u))), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.xz, select(u_input.b.xz, vec2<u32>(arg_0, arg_0), false))) << (reverseBits(24794u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-var_3.a.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)))), var_3.d);
            let var_5 = func_8(var_3.a.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.a.c * -1020.0), _wgslsmith_f_op_f32(-var_3.d.c))), !false);
            let var_6 = ~vec3<u32>(countOneBits(func_8(vec4<u32>(0u, var_1.b.e.x, arg_0, var_4.b), _wgslsmith_div_vec2_f32(vec2<f32>(3196.0, 1000.0), vec2<f32>(var_1.b.c, -476.0)), all(vec3<bool>(true, var_3.d.b, var_3.d.b))).b.b), u_input.b.x, var_4.a.b);
            let var_7 = !var_4.d.b;
        }
        break;
    }
    if (all(vec3<bool>(true, (_wgslsmith_f_op_f32(1207.0 * global1.x) == -228.0) && all(!vec4<bool>(true, false, true, false)), true))) {
        for (var var_2 = -1; !select(!false, all(!vec4<bool>(true, false, true, true)), false); ) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            let var_3 = Struct_5(~0);
            continue;
        }
        var var_2 = true;
        switch (-14623 & ~reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-5493, 0, -2147483648, u_input.a.x), vec4<i32>(var_1.b.a, 0, var_1.b.a, -4633)))) {
            case -59797: {
                var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1140.0 + global1.x), _wgslsmith_f_op_f32(-var_1.b.c)))));
                var var_4 = u_input.a.x;
                var var_5 = var_0.x == var_0.x;
                var var_6 = Struct_5(~var_1.b.a);
            }
            case 2147483647: {
                let var_3 = var_1.a;
            }
            case -63876: {
                let var_3 = _wgslsmith_f_op_f32(global1.x * 772.0);
                global2 = array<vec4<i32>, 22>();
                global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(1189.0, 773.0), vec2<bool>(false, true))) * var_1.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(-1819.0, 158.0))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_div_vec2_f32(vec2<f32>(625.0, -736.0), vec2<f32>(362.0, -892.0))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(830.0, var_3)) - _wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(var_3, 917.0)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, var_3)) * global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * _wgslsmith_f_op_f32(368.0 * global1.x))), !(-var_1.b.a > _wgslsmith_mod_i32(-22180, 2147483647)))));
                var var_4 = select(!select(!(!vec4<bool>(true, false, false, false)), select(!vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), any(vec3<bool>(true, true, true))), vec4<bool>(true, !false, any(vec3<bool>(false, true, false)), false || true)), vec4<bool>(~arg_0 <= min(arg_0, _wgslsmith_mod_u32(19705u, arg_0)), !false & (countOneBits(0u) >= 77898u), true && all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), false), !((909.0 == func_8(vec4<u32>(4294967295u, 0u, 2613u, 38788u), var_1.a, true).a.x) & !(!true)));
            }
            case 36873: {
                var var_3 = ~31438;
                var var_4 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_clamp_u32(u_input.b.x, arg_0, arg_0), global0[_wgslsmith_index_u32(1u, 26u)], abs(-func_8(var_1.b.e, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-889.0, var_1.b.c), var_1.a)), any(vec2<bool>(true, false))).b.a), max(~((var_1.b.a >> (u_input.b.x % 32u)) >> ((arg_0 | 42057u) % 32u)), -firstLeadingBit(13755)))).x;
                let var_5 = func_5().a;
                var var_6 = Struct_4(var_1.b, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, arg_1)), 255.0))), Struct_2(_wgslsmith_f_op_f32(round(var_1.b.c)), !all(vec3<bool>(false, true, true)) & any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-874.0) + _wgslsmith_f_op_f32(-var_1.b.c)))));
            }
            default: {
                var var_3 = select(vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1478.0 * -1093.0)) == _wgslsmith_f_op_f32(-global1.x)), !select(vec2<bool>(all(vec4<bool>(false, true, false, true)), !false), vec2<bool>(all(vec2<bool>(true, false)), true), !all(vec4<bool>(false, true, false, true))), vec2<bool>(-24656 < u_input.a.x, (!false || !true) & !all(vec3<bool>(false, true, true))));
                let var_4 = u_input.a.x;
                var var_5 = var_1.b.c;
                var_2 = any(vec4<bool>(!(var_3.x && false) && var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) <= -1321.0, any(!select(vec4<bool>(var_3.x, false, true, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(true, var_3.x, false, var_3.x))), var_3.x));
            }
        }
    }
    var var_2 = !(false & (!false | all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))));
    return _wgslsmith_f_op_vec2_f32(func_4(var_1.b.e.x, var_1.b, -u_input.a.x, ~(~32075))).x;
}

fn func_2() -> Struct_3 {
    if (!(!select(false, any(!vec4<bool>(false, true, false, false)), false))) {
        switch (u_input.a.x) {
            case 0: {
                let var_0 = 1 < -1;
            }
            case 55228: {
            }
            default: {
                global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(443.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(347u, -2412.0))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, -1456.0)))) + vec2<f32>(global1.x, _wgslsmith_f_op_f32(sign(global1.x))))));
                global0 = array<Struct_1, 26>();
                global1 = vec2<f32>(global1.x, global1.x);
                var var_0 = 36652u;
            }
        }
        var var_0 = -407.0;
        global1 = _wgslsmith_f_op_vec2_f32(-func_8(_wgslsmith_add_vec4_u32(vec4<u32>(18911u, u_input.b.x, u_input.b.x, 61869u), _wgslsmith_sub_vec4_u32(vec4<u32>(5459u, 4294967295u, 0u, 60773u), vec4<u32>(20339u, u_input.b.x, 0u, u_input.b.x))) ^ countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 44163u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * -292.0), global1.x) - vec2<f32>(global1.x, _wgslsmith_f_op_f32(round(global1.x)))), false).a);
        let var_1 = min(reverseBits(u_input.a.x), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(countOneBits(u_input.a.yzw), vec3<i32>(-3251, u_input.a.x, u_input.a.x)), -(~u_input.a.x))));
    }
    var var_0 = Struct_5(u_input.a.x);
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.b.yz, ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(15484u, u_input.b.x)), u_input.b.zz));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x >> (u_input.b.x % 32u), u_input.b.x), 22u)] << (vec4<u32>(u_input.b.x, ~u_input.b.x, func_8(select(countOneBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)), reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), !vec4<bool>(false, true, false, true)), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)), !false && !true).b.b, u_input.b.x ^ _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x)) % vec4<u32>(32u));
    if (!true) {
    }
    return func_8(vec4<u32>(u_input.b.x, 49036u, u_input.b.x >> (max(u_input.b.x, u_input.b.x) % 32u), 1u) | ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 62426u, 4294967295u, u_input.b.x), countOneBits(vec4<u32>(u_input.b.x, 0u, 4294967295u, 6048u))), vec2<f32>(global1.x, global1.x), -_wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647, var_2.x), -var_2.x) < var_2.x);
}

fn func_9(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> bool {
    if (!all(vec2<bool>(true && (arg_2 | arg_2), arg_1.b.d == 1u))) {
        switch (~_wgslsmith_div_i32(abs(_wgslsmith_mult_i32(23080, u_input.a.x)) << ((_wgslsmith_mod_u32(4294967295u, u_input.b.x) >> (_wgslsmith_sub_u32(1u, arg_1.b.d) % 32u)) % 32u), -countOneBits(-1))) {
            case 2147483647: {
                let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(func_2().b.c)), false, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1193.0))));
                var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 2298.0, _wgslsmith_f_op_f32(1394.0 + 304.0), -3213.0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-680.0, var_0.c, -1664.0, arg_1.b.c) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -125.0, global1.x, 1338.0) + vec4<f32>(arg_1.b.c, arg_0, -180.0, 1167.0))))))));
                global0 = array<Struct_1, 26>();
                let var_2 = firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(func_8(vec4<u32>(0u, 60910u, 0u, u_input.b.x), vec2<f32>(844.0, arg_1.a.x), var_0.b).b.a), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a.x, u_input.a.x)), countOneBits(vec2<i32>(55154, 11826)))), u_input.a.wy, ~(-_wgslsmith_div_vec2_i32(vec2<i32>(54774, u_input.a.x), u_input.a.xy))));
                var var_3 = var_0.b;
            }
            default: {
                var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818.0));
                let var_1 = min(max(-1, arg_1.b.a), ~_wgslsmith_div_i32(-38866 ^ -4233, ~_wgslsmith_dot_vec2_i32(vec2<i32>(107785, -2147483648), vec2<i32>(1, -30522))));
                global2 = array<vec4<i32>, 22>();
                let var_2 = Struct_5(~func_5().a);
                global0 = array<Struct_1, 26>();
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        for (; !arg_2; ) {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        }
        global0 = array<Struct_1, 26>();
        break;
    }
    var var_0 = ~0u > u_input.b.x;
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
    }
    var var_1 = vec3<f32>(func_8(((arg_1.b.e ^ vec4<u32>(110030u, arg_1.b.e.x, arg_1.b.e.x, 20027u)) ^ vec4<u32>(4294967295u, 4294967295u, 6360u, 32528u)) >> (firstTrailingBit(arg_1.b.e) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0))) + _wgslsmith_f_op_vec2_f32(-arg_1.a)) * _wgslsmith_f_op_vec2_f32(func_4(~u_input.b.x, arg_1.b, 0, select(arg_1.b.a, arg_1.b.a, true)))), (true || (u_input.b.x < 17819u)) | all(vec2<bool>(false, false))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(~abs(12449u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.b.e.xzz, vec3<u32>(u_input.b.x, 1u, 91096u)), ~arg_1.b.e.wxx), 26u)], u_input.a.x, -69017)).x), _wgslsmith_f_op_f32(sign(-758.0)));
    return _wgslsmith_f_op_f32(exp2(800.0)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -993.0));
}

fn func_10(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    for (; false; ) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        continue;
    }
    var var_0 = vec2<bool>(all(select(arg_2, vec4<bool>(true, any(vec3<bool>(false, arg_3, arg_3)), !arg_3, all(arg_2)), true)), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1367.0, 194.0, global1.x, 706.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1021.0, global1.x, 1032.0, global1.x)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) - vec4<f32>(1005.0, 997.0, global1.x, 156.0))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(240.0, -688.0, global1.x, global1.x)))));
    let var_2 = vec3<i32>(-func_6(select(arg_0.yz, vec2<u32>(27348u, 4294967295u), vec2<bool>(true, var_0.x)), true && true, Struct_5(u_input.a.x)).x << (~1u % 32u), (~u_input.a.x & _wgslsmith_dot_vec4_i32(~vec4<i32>(5267, -5739, -2147483648, arg_1.x), select(vec4<i32>(u_input.a.x, arg_1.x, arg_1.x, 2147483647), u_input.a, arg_2.x))) & -arg_1.x, -_wgslsmith_mult_i32(50464, _wgslsmith_mod_i32(abs(-6123), -28495)));
    var_1 = vec4<f32>(global1.x, global1.x, global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(1368.0 - global1.x)));
    return ~(~u_input.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = vec3<i32>(func_10(_wgslsmith_div_vec4_u32(arg_0.e, arg_0.e), u_input.a.wx, vec4<bool>(all(!vec4<bool>(false, true, true, true)), !false, false, all(!vec2<bool>(true, false))), func_9(_wgslsmith_f_op_f32(-1000.0), func_2(), all(!vec2<bool>(false, true)))), 0 & -10292, arg_0.a);
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        global0 = array<Struct_1, 26>();
        loop {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        }
        global1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x * 1669.0))), arg_0.c);
    }
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        global0 = array<Struct_1, 26>();
        return select(!(!(!(!vec4<bool>(false, false, true, false)))), select(vec4<bool>(false, all(vec3<bool>(false, true, true)), !(!true), _wgslsmith_f_op_f32(step(global1.x, -156.0)) == _wgslsmith_f_op_f32(func_3(arg_1, 378.0))), !vec4<bool>(true && false, true, !true, false), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), !vec4<bool>(true, true, false, true), !true)), func_2().b.e.x >= ~(~40071u ^ _wgslsmith_div_u32(1u, arg_0.b)));
    }
    global2 = array<vec4<i32>, 22>();
    let var_1 = true;
    return !vec4<bool>(false, true, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -136.0)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    switch (i32(-1) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x >> (u_input.b.x % 32u), 1, u_input.a.x, reverseBits(u_input.a.x)), global2[_wgslsmith_index_u32(~(~3624u), 22u)])) {
        case -8482: {
            global2 = array<vec4<i32>, 22>();
            global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, 200.0), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, global1.x))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-644.0, -344.0)))))), !select(any(vec3<bool>(true, true, true)), true & true, any(vec3<bool>(true, false, false))))));
            switch (-14974) {
                case -19153: {
                    var var_0 = select(select(vec4<bool>(true, any(!vec4<bool>(false, true, false, false)), false, false), !select(!vec4<bool>(true, false, false, true), !vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false)), vec4<bool>(any(func_1(Struct_1(1, u_input.b.x, global1.x, u_input.b.x, vec4<u32>(54751u, u_input.b.x, u_input.b.x, u_input.b.x)), 29079u)), ~u_input.a.x >= (-2147483648 | 0), _wgslsmith_clamp_u32(u_input.b.x, 1u, 1u) == u_input.b.x, false)), vec4<bool>(select(!false | (global1.x > global1.x), global1.x <= _wgslsmith_f_op_f32(-global1.x), !true | false), !false != (firstLeadingBit(1u) >= _wgslsmith_div_u32(u_input.b.x, 43919u)), 2147483647 > ~(u_input.a.x & -1), !false), !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false), func_1(Struct_1(1, 0u, 466.0, u_input.b.x, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u)), u_input.b.x)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(!vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), !true)));
                    var_0 = !func_1(func_8(abs(vec4<u32>(55230u, u_input.b.x, u_input.b.x, u_input.b.x)) << (~vec4<u32>(u_input.b.x, u_input.b.x, 51055u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x)))), any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))).b, ~(~u_input.b.x));
                    var var_1 = Struct_1(4188, max(_wgslsmith_mod_u32(~u_input.b.x | ~u_input.b.x, func_2().b.e.x), func_8(abs(abs(vec4<u32>(3429u, 20086u, 15160u, 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -562.0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-715.0, global1.x))), var_0.x).b.e.x), -468.0, u_input.b.x, vec4<u32>(~_wgslsmith_dot_vec2_u32(max(u_input.b.xy, u_input.b.xx), func_2().b.e.xx), firstTrailingBit(u_input.b.x), 23562u, _wgslsmith_mult_u32(u_input.b.x, func_2().b.b)));
                    let var_2 = global2[_wgslsmith_index_u32(var_1.e.x, 22u)];
                }
                case 1: {
                }
                default: {
                    global2 = array<vec4<i32>, 22>();
                    global0 = array<Struct_1, 26>();
                    let var_0 = !func_1(func_2().b, u_input.b.x).xz;
                    var var_1 = !vec3<bool>(1000.0 > _wgslsmith_f_op_f32(abs(930.0)), !(1 < u_input.a.x), !var_0.x);
                    let var_2 = u_input.b.x;
                }
            }
            let var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1156.0)), _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(457.0, 984.0)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1688.0, 1219.0))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, 1476.0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1580.0, global1.x)))), Struct_1(select(u_input.a.x, u_input.a.x, _wgslsmith_f_op_f32(-1376.0 + global1.x) <= _wgslsmith_f_op_f32(-722.0 * global1.x)), ~func_8(~vec4<u32>(u_input.b.x, 16210u, 1u, u_input.b.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, -161.0))), true & false).b.e.x, global1.x, u_input.b.x, ~func_2().b.e >> (vec4<u32>(u_input.b.x, 17312u & u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 4294967295u), ~u_input.b.x) % vec4<u32>(32u))));
            var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(1000.0)), var_0.b.c)) * 1521.0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(656.0 - 1654.0), -791.0, !false)))));
        }
        case -46917: {
            loop {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                let var_0 = u_input.a.x;
                var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000.0)))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1101.0) * _wgslsmith_f_op_f32(-643.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
            }
            var var_0 = 4294967295u;
        }
        case 1: {
            if (!(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_4(u_input.b.x, global0[_wgslsmith_index_u32(~u_input.b.x, 26u)], -u_input.a.x, u_input.a.x | -1)).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) * 1195.0))) <= _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(f32(-1.0) * -1492.0)))) {
                global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) + _wgslsmith_div_f32(-1077.0, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x + -174.0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), -205.0))))), vec2<f32>(global1.x, global1.x));
                let var_0 = func_8(~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-439.0, -105.0), _wgslsmith_f_op_f32(step(global1.x, 229.0))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(124.0, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2122.0, -569.0)), false))))), true);
            }
            var var_0 = Struct_4(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(37743u, 13522u), 26u)], _wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(99877u, u_input.b.x, u_input.b.x), vec3<u32>(0u, u_input.b.x, 4294967295u) ^ vec3<u32>(u_input.b.x, 20353u, 4294967295u)), vec3<u32>(4294967295u, ~u_input.b.x, 4294967295u)), countOneBits(vec3<u32>(u_input.b.x, 6606u, 4294967295u) | vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) | ~u_input.b), _wgslsmith_f_op_f32(ceil(-339.0)), Struct_2(global1.x, any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, true, false), u_input.b.x >= u_input.b.x)), _wgslsmith_f_op_f32(-func_8(~vec4<u32>(u_input.b.x, 50075u, 4294967295u, 1u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000.0, global1.x), vec2<f32>(global1.x, 1294.0))), true).a.x)));
            let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -856.0)));
        }
        case -2147483648: {
            global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(func_2().a.x, _wgslsmith_f_op_f32(1474.0 - func_8(vec4<u32>(2662u, u_input.b.x, 22027u, u_input.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1089.0, 724.0), vec2<f32>(global1.x, global1.x), vec2<bool>(false, true))), true).a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 509.0))))));
            if (~(~func_2().b.d) <= (_wgslsmith_mod_u32(~func_7(Struct_3(vec2<f32>(994.0, global1.x), Struct_1(0, 0u, global1.x, u_input.b.x, vec4<u32>(u_input.b.x, 18591u, u_input.b.x, u_input.b.x))), Struct_5(2147483647)), ~u_input.b.x) >> (firstLeadingBit(~u_input.b.x) % 32u))) {
                let var_0 = global2[_wgslsmith_index_u32(4294967295u & ~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, 66976u, 25823u, 1u)), ~vec4<u32>(18884u, 40820u, 12226u, u_input.b.x)) | (~u_input.b.x & ~1u)), 22u)];
            }
            loop {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            }
            var var_0 = Struct_4(func_8(~(max(vec4<u32>(u_input.b.x, 66297u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 15542u, 33973u, 16176u)) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 67317u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u))), func_2().a, !(!true & false)).b, 0u, _wgslsmith_f_op_f32(-global1.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().b.c)), false, global1.x));
            if (!(true && any(select(vec2<bool>(var_0.d.b, var_0.d.b), vec2<bool>(true, true), vec2<bool>(true, var_0.d.b))))) {
            }
        }
        default: {
            global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * -1029.0), _wgslsmith_f_op_f32(step(1000.0, global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -2230.0))))) + func_8(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_add_u32(98225u, 17621u), 4294967295u, _wgslsmith_mult_u32(8465u, u_input.b.x)), ~(vec4<u32>(u_input.b.x, 0u, 0u, 1u) ^ vec4<u32>(4294967295u, u_input.b.x, 63027u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-1608.0)) + _wgslsmith_f_op_vec2_f32(-func_8(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec2<f32>(-1456.0, global1.x), true).a)), any(!vec3<bool>(false, false, false))).a);
        }
    }
    var var_0 = max(u_input.a.xz, u_input.a.zw);
    switch (_wgslsmith_div_i32(((i32(-1) * -57973) & _wgslsmith_mod_i32(~0, -47220)) >> (26207u % 32u), func_2().b.a)) {
        case -4321: {
            switch (u_input.a.x) {
                case 397: {
                    var var_1 = global1.x;
                    var var_2 = 4294967295u;
                    global0 = array<Struct_1, 26>();
                    var var_3 = vec3<f32>(func_8(~(vec4<u32>(u_input.b.x, u_input.b.x, 5353u, u_input.b.x) | vec4<u32>(u_input.b.x, 253u, 4294967295u, u_input.b.x)) & (~vec4<u32>(1u, 57540u, u_input.b.x, u_input.b.x) & reverseBits(vec4<u32>(1u, 0u, 0u, 73895u))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_div_f32(-436.0, -815.0)))), !(!(global1.x != global1.x))).b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-387.0, global1.x), _wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_f32(1000.0 + _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(423.0 + -220.0))))));
                    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.yy, _wgslsmith_div_vec2_f32(var_3.xy, var_3.zx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.zz) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -399.0) - vec2<f32>(-928.0, 606.0))))));
                }
                case 32238: {
                    var var_1 = Struct_1(1, max(u_input.b.x, u_input.b.x), global1.x, u_input.b.x >> ((((u_input.b.x ^ 0u) >> (~u_input.b.x % 32u)) & func_7(func_2(), Struct_5(var_0.x))) % 32u), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(0u, _wgslsmith_sub_u32(func_7(Struct_3(vec2<f32>(global1.x, -886.0), global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), Struct_5(var_0.x)), func_2().b.e.x), 4294967295u, u_input.b.x)));
                    var var_2 = _wgslsmith_div_f32(var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * 499.0), _wgslsmith_f_op_f32(-275.0 - var_1.c)))));
                    var_2 = _wgslsmith_div_f32(831.0, _wgslsmith_f_op_f32(var_1.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(138.0, -451.0)))), _wgslsmith_f_op_f32(-var_1.c))));
                    var var_3 = func_10(min(abs(vec4<u32>(var_1.e.x, var_1.e.x, var_1.b, 37967u)), var_1.e), firstTrailingBit(abs(~vec2<i32>(var_0.x, 14046))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), any(vec3<bool>(false, true, false))), select(!vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), func_1(Struct_1(-59508, var_1.e.x, 236.0, u_input.b.x, var_1.e), 0u)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), func_1(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 4294967295u), 0u <= u_input.b.x)), true) >> (_wgslsmith_mult_u32(abs(u_input.b.x), max(_wgslsmith_div_u32(1u & 1u, func_7(Struct_3(vec2<f32>(209.0, var_1.c), Struct_1(var_0.x, u_input.b.x, -717.0, 11279u, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x))), Struct_5(-4039))), (u_input.b.x ^ var_1.d) << (~u_input.b.x % 32u))) % 32u);
                    let var_4 = ~(~abs(var_1.d & u_input.b.x));
                }
                case 3813: {
                    global2 = array<vec4<i32>, 22>();
                }
                default: {
                    var var_1 = countOneBits(u_input.b.x | _wgslsmith_sub_u32(64743u, ~_wgslsmith_mult_u32(u_input.b.x, 65537u)));
                    var_1 = 1u;
                    var var_2 = -114.0;
                    var var_3 = ~u_input.b.xy;
                    return;
                }
            }
            let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-794.0, _wgslsmith_f_op_f32(abs(146.0))), global1.x, -499.0));
            global0 = array<Struct_1, 26>();
            switch (_wgslsmith_div_i32(abs(var_0.x), -2147483648) ^ _wgslsmith_dot_vec2_i32(u_input.a.yw, countOneBits(u_input.a.xw))) {
                default: {
                    var var_2 = func_2().b.d;
                }
            }
        }
        case -1: {
            var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-351.0 + 637.0), !false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x + 1334.0), _wgslsmith_f_op_f32(sign(global1.x)))))), _wgslsmith_f_op_f32(246.0 + -1656.0))));
            global2 = array<vec4<i32>, 22>();
            var_0 = ~u_input.a.yy;
            var var_2 = reverseBits(vec4<u32>(reverseBits(u_input.b.x & _wgslsmith_add_u32(u_input.b.x, 53073u)), ~u_input.b.x, 39198u >> (0u % 32u), u_input.b.x >> (u_input.b.x % 32u)));
        }
        case -3414: {
            for (; false; ) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                let var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(func_2().a.x - global1.x))), select(!(!true), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true))), true), func_8(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 31685u, 88900u, 4294967295u), vec4<u32>(74149u, 1u, u_input.b.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(23207u, u_input.b.x, u_input.b.x, 68331u), vec4<u32>(2549u, 1u, 4294967295u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(777.0, global1.x) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1946.0, 347.0)))))), u_input.b.x != func_8(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 1580u, u_input.b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(1023.0, global1.x), vec2<f32>(-1457.0, global1.x)), false && false).b.b).a.x);
                let var_2 = false;
            }
            let var_1 = u_input.a.x;
            var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-833.0), _wgslsmith_f_op_f32(f32(-1.0) * -1957.0));
        }
        default: {
            if (!any(!func_1(func_2().b, ~12050u).yy)) {
                var var_1 = func_5();
                var_0 = ~(~vec2<i32>(func_6(u_input.b.zz, true != true, func_5()).x, -1));
                let var_2 = Struct_4(func_8(select(vec4<u32>(u_input.b.x & 1u, 4294967295u ^ 37975u, 27666u, _wgslsmith_sub_u32(u_input.b.x, 36331u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 10639u, 46588u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), !true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_8(vec4<u32>(0u, 18944u, u_input.b.x, u_input.b.x), vec2<f32>(103.0, 1545.0), false).a - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1000.0) - vec2<f32>(484.0, global1.x)))), all(vec4<bool>(all(vec3<bool>(true, true, false)), true, any(vec3<bool>(true, false, true)), select(true, false, false)))).b, u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + _wgslsmith_f_op_f32(-func_8(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-486.0, global1.x))), 27714u > 53801u).a.x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), func_1(Struct_1(38610, max(u_input.b.x, u_input.b.x), global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(62908u, 54353u), u_input.b.zx), ~vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x)), u_input.b.x).x, _wgslsmith_f_op_f32(max(1572.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-303.0)))))));
                var_1 = func_5();
            }
            global2 = array<vec4<i32>, 22>();
            for (var var_1 = 8558; var_1 == 0; var_1 -= 1) {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                var var_2 = abs(-var_0.x);
            }
            loop {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
                var var_1 = reverseBits(42423u);
                global2 = array<vec4<i32>, 22>();
                continue;
            }
        }
    }
    switch (_wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(max(~global2[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a), _wgslsmith_add_vec4_i32(min(u_input.a, vec4<i32>(-1, u_input.a.x, var_0.x, 0)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.zz), 22u)]), min(select(u_input.a, vec4<i32>(var_0.x, u_input.a.x, -27613, 70191), true), _wgslsmith_sub_vec4_i32(vec4<i32>(-1, -1, var_0.x, -24421), vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x)))), abs(~vec4<i32>(var_0.x, -1, var_0.x, u_input.a.x)), !(!(!vec4<bool>(true, true, false, false)))), u_input.a)) {
        case 2147483647: {
            var var_1 = -_wgslsmith_add_vec3_i32(u_input.a.zxw, vec3<i32>(_wgslsmith_dot_vec2_i32(func_6(u_input.b.yz, true, Struct_5(u_input.a.x)), vec2<i32>(u_input.a.x, var_0.x)), abs(func_10(vec4<u32>(32651u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.a.xx, vec4<bool>(true, true, false, false), true)), ~(var_0.x << (u_input.b.x % 32u))));
            global2 = array<vec4<i32>, 22>();
            var var_2 = true;
        }
        case -1: {
            loop {
                if (LOOP_COUNTERS[29u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
                break;
            }
            global0 = array<Struct_1, 26>();
            if (_wgslsmith_f_op_f32(global1.x - global1.x) < _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(567.0 + -300.0))))))) {
                let var_1 = vec4<bool>(any(vec3<bool>(!(!true), false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))))), any(!(!vec3<bool>(false, true, false))), !all(vec3<bool>(select(true, true, true), true, !false)), true);
            }
        }
        default: {
            var var_1 = func_5();
            switch (_wgslsmith_add_i32(0, _wgslsmith_div_i32(_wgslsmith_mult_i32(reverseBits(-2147483648), _wgslsmith_dot_vec2_i32(u_input.a.zw, -u_input.a.wz)), abs(~(-44395))))) {
                case -1: {
                    global0 = array<Struct_1, 26>();
                    var var_2 = u_input.b.x;
                }
                default: {
                    var var_2 = vec3<bool>(true, any(!vec2<bool>(any(vec4<bool>(false, true, false, true)), true)), !func_1(global0[_wgslsmith_index_u32(~(~45646u), 26u)], 24509u).x);
                }
            }
            var_0 = u_input.a.wz;
            switch (-u_input.a.x) {
                case -2147483648: {
                    var var_2 = Struct_1(abs(u_input.a.x), abs(_wgslsmith_add_u32(50568u, ~_wgslsmith_sub_u32(4294967295u, u_input.b.x))), _wgslsmith_f_op_f32(max(func_8(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 68049u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 92926u), vec4<u32>(12076u, 23661u, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1638.0))), _wgslsmith_div_u32(u_input.b.x, u_input.b.x) < 0u).b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1553.0) + global1.x))), ~4294967295u, abs(~vec4<u32>(~u_input.b.x, 64719u, ~7476u, select(u_input.b.x, 1u, false))));
                    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, 786.0), vec2<f32>(var_2.c, var_2.c), true))), _wgslsmith_f_op_vec2_f32(func_4(func_8(vec4<u32>(u_input.b.x, u_input.b.x, var_2.e.x, u_input.b.x), vec2<f32>(var_2.c, global1.x), true).b.e.x, func_8(vec4<u32>(var_2.b, 1u, 15379u, 6382u), vec2<f32>(558.0, global1.x), true).b, -u_input.a.x, select(var_2.a, -2983, true))), !(true == true)))));
                    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.c - global1.x))) * var_2.c) + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-309.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314.0))))));
                    var_0 = vec2<i32>(4227, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.a.xxw, reverseBits(vec3<i32>(var_1.a, var_1.a, -2147483648))), vec3<i32>(countOneBits(var_1.a), select(var_1.a, 1, false), u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_mult_i32(1, var_0.x)), 1)));
                }
                case 11932: {
                    let var_2 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, abs(~(u_input.b.x & 0u))), 26u)], u_input.b.x, global1.x, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -545.0), any(func_1(Struct_1(2147483647, 15554u, 1412.0, u_input.b.x, vec4<u32>(8056u, u_input.b.x, u_input.b.x, 82862u)), 0u).yz), global1.x));
                    var var_3 = abs(~(-_wgslsmith_add_i32(-1, var_0.x)));
                    var var_4 = var_2;
                    var_0 = ~vec2<i32>(~_wgslsmith_sub_i32(-1, var_1.a), -(_wgslsmith_mod_i32(-1, -2147483648) >> (12724u % 32u)));
                    var var_5 = var_2.b;
                }
                default: {
                    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), 147.0), true, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-global1.x)));
                    let var_3 = var_2;
                    let var_4 = Struct_5(u_input.a.x);
                    global1 = _wgslsmith_f_op_vec2_f32(-func_2().a);
                    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(260.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1443.0 * global1.x) - _wgslsmith_f_op_f32(-1000.0 - -1271.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(704.0 * -1015.0)))));
                }
            }
        }
    }
    for (var var_1 = 74882; var_1 <= 2147483647; ) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        var_0 = -vec2<i32>(func_8(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4243u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(global1.x, -959.0)), any(vec4<bool>(false, false, false, false))).b.a ^ func_10(~vec4<u32>(0u, 48596u, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec2_i32(u_input.a.xy, u_input.a.yw, vec2<i32>(u_input.a.x, -24176)), func_1(Struct_1(10431, u_input.b.x, 933.0, u_input.b.x, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), 0u), false), abs(var_0.x));
    }
    for (var var_1: i32; ~(~1u) > ((~u_input.b.x << (4294967295u % 32u)) ^ ~(~0u)); var_1 -= 1) {
        if (LOOP_COUNTERS[31u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
        var_1 = u_input.a.x;
        continue;
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_div_u32(1u, 0u & 70897u), (u_input.b.x & u_input.b.x) | countOneBits(1u), 81699u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -385.0)), func_8(~(~vec4<u32>(u_input.b.x, 1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(func_4(0u, Struct_1(2147483647, u_input.b.x, 1193.0, u_input.b.x, vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 1u)), firstLeadingBit(u_input.a.x), u_input.a.x)), false).b.c)));
}

