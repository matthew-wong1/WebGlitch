// {"0:0":[187,130,5,181,75,148,115,86,208,126,15,181,114,107,59,122]}
// Seed: 1933413725583475224

struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -790.0;

var<private> global1: array<Struct_1, 5>;

var<private> LOOP_COUNTERS: array<u32, 29>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn func_6(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = vec2<bool>(true, !false);
    var_0 = !vec2<bool>(false, true);
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global1 = array<Struct_1, 5>();
        if (!all(vec2<bool>(true, true))) {
            continue;
        }
        let var_1 = _wgslsmith_sub_i32(-14145, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1, 2147483647, 0), ~vec3<i32>(9725, 23616, -47152))) | (_wgslsmith_mult_i32(~14824, -48175) >> (~arg_0.x % 32u)));
        for (var var_2 = 5204; ; var_2 = 1 ^ var_1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            global1 = array<Struct_1, 5>();
            let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -313.0)));
        }
    }
    if (any(select(!vec3<bool>(4294967295u <= 8018u, true, any(vec2<bool>(false, var_0.x))), vec3<bool>(false, all(!vec3<bool>(false, false, false)), !var_0.x), !select(false, var_0.x, false)))) {
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        }
        let var_1 = Struct_2(vec2<bool>(!(!all(vec4<bool>(var_0.x, true, false, false))), !(_wgslsmith_mult_i32(1, 43009) != firstTrailingBit(-5417))), -vec2<i32>(0, abs(17832 >> (44452u % 32u))));
        for (var var_2 = 39566; var_2 < -73504; var_2 -= 1) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            let var_3 = Struct_3(!true, var_1.a.x | var_0.x, ~vec4<i32>(-var_1.b.x, -23182, select(0, -2202, !false), -abs(var_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + arg_1), -1929.0) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) * vec3<f32>(arg_1, 1780.0, 541.0)))))));
            var var_4 = 4294967295u;
            var var_5 = Struct_4(select(vec2<i32>(abs(var_1.b.x), -(~var_1.b.x)), select(vec2<i32>(10046, i32(-1) * -15985), ~var_3.c.xw, select(vec2<bool>(var_1.a.x, var_0.x), select(vec2<bool>(true, var_3.b), vec2<bool>(true, var_3.a), vec2<bool>(false, false)), var_1.a.x)), var_1.a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(var_3.d.x * var_3.d.x)) + _wgslsmith_f_op_vec2_f32(var_3.d.yz - var_3.d.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_3.d.xy)) * vec2<f32>(-958.0, arg_1)) + var_3.d.yy))), _wgslsmith_f_op_f32(sign(-1671.0)), Struct_3(!(!true) && (_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c.x, var_3.c.x), vec2<i32>(1, var_3.c.x)) != _wgslsmith_dot_vec3_i32(var_3.c.yyz, var_3.c.xxy)), var_0.x, ~var_3.c, _wgslsmith_f_op_vec3_f32(-var_3.d)));
            var var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1977.0, _wgslsmith_f_op_f32(-1847.0), 864.0, _wgslsmith_f_op_f32(max(481.0, _wgslsmith_f_op_f32(step(-866.0, 838.0))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-107.0 * var_5.d.d.x))), _wgslsmith_f_op_f32(round(-1430.0)), -1310.0, var_5.c))));
            global0 = -252.0;
        }
        if (any(select(select(vec3<bool>(!var_1.a.x, true, any(vec2<bool>(false, true))), select(!vec3<bool>(var_1.a.x, true, var_1.a.x), vec3<bool>(var_1.a.x, true, true), select(vec3<bool>(var_1.a.x, var_0.x, var_1.a.x), vec3<bool>(var_1.a.x, false, true), var_1.a.x)), !select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_1.a.x, true), false)), !select(!vec3<bool>(true, var_1.a.x, var_1.a.x), select(vec3<bool>(var_1.a.x, false, false), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, false)), !vec3<bool>(var_1.a.x, var_1.a.x, var_0.x)), select(!select(vec3<bool>(var_0.x, var_1.a.x, false), vec3<bool>(var_1.a.x, false, true), true), !(!vec3<bool>(var_1.a.x, false, false)), select(!vec3<bool>(var_0.x, false, true), vec3<bool>(var_1.a.x, var_1.a.x, var_0.x), !vec3<bool>(var_0.x, true, var_0.x)))))) {
            var_0 = !select(select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_1.a.x), var_1.a), vec2<bool>(true, true), var_1.a), select(!var_1.a, select(vec2<bool>(false, var_1.a.x), vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x)), var_1.a.x), var_0.x), var_1.a, var_1.a.x);
            var var_2 = false;
            let var_3 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_1.b.x >> (1u % 32u), select(50717, var_1.b.x, true), _wgslsmith_add_i32(var_1.b.x, 3374))), min(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.b, vec2<i32>(-2147483648, 3802)), abs(var_1.b.x), countOneBits(var_1.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x) & vec3<i32>(0, var_1.b.x, 18726), vec3<i32>(var_1.b.x, -18956, var_1.b.x))), abs(vec3<i32>(select(4107, var_1.b.x, true), reverseBits(2147483647), reverseBits(var_1.b.x)))) ^ max(vec3<i32>(1, -select(var_1.b.x, 0, true), _wgslsmith_mod_i32(i32(-1) * -2147483648, select(-23905, var_1.b.x, true))), abs(countOneBits(~vec3<i32>(var_1.b.x, var_1.b.x, -1))));
            let var_4 = 11303u;
        }
        let var_2 = var_0.x;
    }
    if (var_0.x) {
        global0 = arg_1;
        global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(644.0 * arg_1)))));
        global1 = array<Struct_1, 5>();
        var var_1 = _wgslsmith_add_u32(firstTrailingBit(~(select(17469u, arg_0.x, true) ^ _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(4294967295u, arg_0.x)))), u_input.a.x);
        let var_2 = ~arg_0.x == _wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(60762u << (reverseBits(0u) % 32u), ~(~arg_0.x)));
    }
    return ~(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.x & 1u, 33882u), 4294967295u) | u_input.a.x);
}

fn func_5(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_6(vec4<u32>(67499u, 0u, 4294967295u, 102840u), -1858.0), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(0u, u_input.a.x))), vec3<i32>(~(-44835), 1, _wgslsmith_add_i32(firstLeadingBit(firstLeadingBit(-2147483648)), -1)), -1, vec2<i32>(_wgslsmith_add_i32(abs(1 << (30574u % 32u)), 41172 << (_wgslsmith_mod_u32(u_input.a.x, 374u) % 32u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, 34884, 63524, -30612), vec4<i32>(2147483647, -47021, 28691, 1)), ~61665)));
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_1 = Struct_2(vec2<bool>((countOneBits(-2147483648) & -var_0.c) > var_0.d.x, any(select(!vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), !vec4<bool>(false, true, true, false)))), vec2<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(select(vec3<i32>(var_0.d.x, var_0.b.x, var_0.d.x), var_0.b, vec3<bool>(true, false, false))), ~var_0.b), _wgslsmith_sub_i32(firstLeadingBit(-var_0.c), var_0.b.x)));
        if (!any(select(!select(vec4<bool>(var_1.a.x, false, true, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), vec4<bool>(false, false, var_1.a.x, var_1.a.x)), !vec4<bool>(true, true, true, var_1.a.x), all(vec3<bool>(var_1.a.x, var_1.a.x, true))))) {
            break;
        }
    }
    if (-4749 < _wgslsmith_sub_i32(52624 | -14010, (reverseBits(2147483647) & 1) >> (~33334u % 32u))) {
        for (; !(_wgslsmith_dot_vec2_u32(~(~u_input.a.xz), select(u_input.a.yw, max(u_input.a.yz, vec2<u32>(1u, 24894u)), !false)) < ~57965u); ) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            let var_1 = Struct_2(select(vec2<bool>(all(vec2<bool>(true, false)), select(true, false, true) & !true), !(!vec2<bool>(false, false)), select(select(!vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !vec2<bool>(true, true), vec2<bool>(true | true, 1 != var_0.b.x))), vec2<i32>(31843, ~var_0.b.x));
            global1 = array<Struct_1, 5>();
        }
    }
    for (var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(var_0.b.x << (~76u % 32u)), var_0.d.x, -39643), var_0.b); ; var_1 += 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        if (false) {
            var var_2 = var_0.a;
            let var_3 = Struct_3(!true, any(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), var_0.c < -52866)), -vec4<i32>(~(~(-7250)), _wgslsmith_div_i32(~var_0.b.x, 0), -39074, var_0.c), vec3<f32>(arg_0.x, 1000.0, arg_0.x));
        }
        let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_0.a, abs(0u))) & vec2<u32>(~(~var_0.a), select(firstLeadingBit(u_input.a.x), u_input.a.x, false)), ~select(u_input.a.zw, vec2<u32>(~35752u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, var_0.a, 1u, var_0.a))), select(!vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), 5u)];
        var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(43960u, 25365u), 5u)];
        global0 = _wgslsmith_f_op_f32(-905.0);
    }
    for (var var_1 = 40012; ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var var_2 = ~(~var_0.a) != ~(~_wgslsmith_mod_u32(var_0.a, 4294967295u));
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var var_3 = arg_0;
        }
        var var_3 = !all(vec2<bool>(all(!vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)) == true));
    }
    return arg_0.x;
}

fn func_4() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1191.0, -129.0, -1000.0) + vec3<f32>(183.0, 1185.0, -451.0)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1099.0, 175.0, -1616.0), vec3<f32>(1101.0, 581.0, 1513.0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(868.0, 842.0, -2328.0))))))));
    var var_1 = -710.0;
    if (!(!true)) {
        if (true) {
            var var_2 = ~(~(~u_input.a.x));
            var_1 = _wgslsmith_f_op_f32(-var_0);
            var var_3 = Struct_3((-2147483648 << (~1u % 32u)) <= -min(_wgslsmith_add_i32(0, -8817), _wgslsmith_sub_i32(0, -5790)), true, vec4<i32>(2147483647, _wgslsmith_sub_i32(max(_wgslsmith_sub_i32(2147483647, -1), _wgslsmith_mult_i32(20847, -2147483648)), ~(~(-15625))), select(_wgslsmith_div_i32(i32(-1) * -2147483648, -3963 & 11246), -1 & _wgslsmith_dot_vec3_i32(vec3<i32>(12798, 0, -68244), vec3<i32>(38729, -2147483648, -2147483648)), _wgslsmith_f_op_f32(trunc(var_0)) > -1230.0), 1 | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, -2147483648), vec2<i32>(-16894, -19580)), ~22377)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) + vec3<f32>(-1363.0, 1849.0, var_0)))))));
            var_3 = Struct_3(true, var_3.a, _wgslsmith_add_vec4_i32(vec4<i32>(-16906, ~var_3.c.x, select(2147483647, 56611, false), ~(-29543)) & var_3.c, var_3.c), var_3.d);
        }
    }
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a | vec4<u32>(_wgslsmith_mult_u32(45533u, 82573u), u_input.a.x, reverseBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), u_input.a)), u_input.a), _wgslsmith_add_vec4_u32(~firstLeadingBit(u_input.a), u_input.a), firstLeadingBit(u_input.a));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0))));
    return min(countOneBits(reverseBits(countOneBits(_wgslsmith_mult_i32(-5083, 0)))), -2147483647);
}

fn func_3() -> Struct_3 {
    switch (_wgslsmith_mult_i32(-58767, ~(~max(0 | -13260, -1)))) {
        case 0: {
            switch (_wgslsmith_sub_i32(func_4(), ~(~44289 & 1))) {
                case -32078: {
                }
                case -23167: {
                    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -371.0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-178.0, -978.0)))), _wgslsmith_f_op_f32(ceil(-783.0)), 172.0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-566.0, -858.0, 197.0, 972.0) + vec4<f32>(291.0, -457.0, 302.0, 987.0)))))));
                    var var_1 = Struct_2(select(!select(!vec2<bool>(false, false), !vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false & false), vec2<bool>(!false, true), any(!vec3<bool>(false, true, true))), !(!vec2<bool>(true, false))), vec2<i32>(0, -1));
                    var_1 = Struct_2(select(var_1.a, vec2<bool>(any(vec4<bool>(false, false, var_1.a.x, var_1.a.x)), _wgslsmith_dot_vec3_u32(u_input.a.yyy, vec3<u32>(u_input.a.x, 34834u, u_input.a.x)) != max(47257u, 1u)), var_1.a.x), countOneBits(-var_1.b));
                    var var_2 = var_1.b.x;
                    let var_3 = select(_wgslsmith_div_vec3_u32(vec3<u32>(~(~u_input.a.x), reverseBits(firstLeadingBit(u_input.a.x)), ~u_input.a.x), ~u_input.a.wzw), vec3<u32>(_wgslsmith_sub_u32(reverseBits(u_input.a.x), u_input.a.x), ~27220u, ~(~u_input.a.x)), !(!(var_1.a.x == (1738.0 > -644.0))));
                }
                case 2147483647: {
                    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-622.0)))));
                }
                default: {
                    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(547.0 + 555.0) - _wgslsmith_f_op_f32(-1185.0)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -1727.0)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1077.0, 468.0)) - _wgslsmith_f_op_f32(137.0 * 1699.0)), -1044.0)), _wgslsmith_f_op_f32(f32(-1.0) * -500.0), -1168.0);
                    let var_1 = Struct_4(vec2<i32>(_wgslsmith_sub_i32(947, -2147483648) ^ 0, _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483648, -22558), vec2<i32>(-37531, 2147483647), vec2<i32>(0, 2147483647)), vec2<i32>(-1, -2147483648) ^ (vec2<i32>(-1, 0) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))))), var_0.xx, _wgslsmith_f_op_f32(-var_0.x), Struct_3(select(true, all(!vec4<bool>(true, false, false, false)), false), !(1u < u_input.a.x), firstTrailingBit(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(47674, 1, 1, 3473), vec4<i32>(-15125, 0, 1, -2147483648)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(f32(-1.0) * -293.0))));
                    global1 = array<Struct_1, 5>();
                    var var_2 = var_1.d;
                }
            }
            var var_0 = i32(-1) * -2147483648;
        }
        case -21129: {
            let var_0 = ~min(_wgslsmith_add_i32(countOneBits(0), 21915 ^ 1) ^ 1, ~countOneBits(func_4()));
            if (!all(!vec2<bool>(!true, 0u >= u_input.a.x))) {
                var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-345.0))) - 792.0)));
                global1 = array<Struct_1, 5>();
                global0 = -1193.0;
                var var_2 = u_input.a.zy;
                let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2215.0 - _wgslsmith_f_op_f32(-576.0 - 328.0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-392.0))))) * _wgslsmith_f_op_f32(-132.0 - 208.0));
            }
        }
        case -13949: {
            var var_0 = select(vec4<bool>(any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true)), !true, !any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))), select(select(!vec4<bool>(false, false, false, true), vec4<bool>(all(vec4<bool>(false, true, false, true)), true && true, all(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, false, false))), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(!true, all(!vec2<bool>(true, false)), all(!vec4<bool>(true, false, false, false)), all(!vec4<bool>(true, true, false, false))), true), !all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)));
            var var_1 = var_0.xzz;
            global0 = -567.0;
            if (true) {
                let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(2283.0, -479.0, -143.0) * vec3<f32>(1690.0, -1382.0, 1844.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1562.0, 2627.0, 1653.0) - vec3<f32>(204.0, -345.0, -1000.0))))))));
                let var_3 = Struct_3(any(var_0.wy), -1080.0 <= 116.0, -(~(~firstTrailingBit(vec4<i32>(2147483647, 6148, 19974, -1)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(var_2)), var_2.x), 858.0, -1000.0));
            }
        }
        case -11192: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-865.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-107.0 - 350.0))))))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(vec3<f32>(174.0, 955.0, 1200.0)))))));
            }
            var var_0 = firstLeadingBit(-29653) != ((~_wgslsmith_mult_i32(0, 0) << (~(u_input.a.x >> (u_input.a.x % 32u)) % 32u)) << ((min(reverseBits(62159u), 27570u) >> (4294967295u % 32u)) % 32u));
            for (var var_1: i32; var_1 < -2147483648; var_1 = -_wgslsmith_div_i32(min(23908, _wgslsmith_clamp_i32(-15283, -244, -2147483648)) | _wgslsmith_mult_i32(-1, select(2147483647, -35594, false)), _wgslsmith_div_i32(2147483647, 1))) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                global1 = array<Struct_1, 5>();
                var var_2 = Struct_1(u_input.a.x, vec3<i32>(-firstLeadingBit(_wgslsmith_clamp_i32(8626, 42479, 1)), abs(~countOneBits(-46595)), -21987), abs(~(-1)) >> (73593u % 32u), ~_wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(-9765, -49465), vec2<i32>(-1, 13491)), vec2<i32>(firstTrailingBit(0), 2147483647 << (4294967295u % 32u))));
                var_0 = true;
            }
            if (!(!(!(!true & !false)))) {
                var var_1 = Struct_4(vec2<i32>(-9054, reverseBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, -1), vec2<i32>(-1, -2147483648)))), vec2<f32>(_wgslsmith_f_op_f32(max(-948.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662.0)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -354.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-543.0)) + _wgslsmith_f_op_f32(-840.0 - 828.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-892.0, 258.0, false)))), !(!false))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-501.0 * _wgslsmith_div_f32(-1015.0, -245.0))))), Struct_3(false, -1795.0 <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1268.0))), reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-21111, -14475, 79515), vec3<i32>(-2845, -1, 2147483647)), _wgslsmith_add_i32(1, 1), -71055, firstLeadingBit(-7858))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1030.0, -842.0, 361.0) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-742.0, -1518.0, 1388.0), vec3<f32>(154.0, 1108.0, -860.0)))) + vec3<f32>(163.0, 2168.0, _wgslsmith_f_op_f32(f32(-1.0) * -534.0)))));
                let var_2 = vec3<bool>(0 < ~(~max(18976, var_1.a.x)), var_1.d.b, !(!(!(!true))));
                let var_3 = select(select(vec4<bool>(_wgslsmith_f_op_f32(-var_1.c) > var_1.b.x, !true, false, !var_1.d.a), select(select(!vec4<bool>(false, var_1.d.b, var_1.d.b, false), select(vec4<bool>(var_2.x, var_2.x, var_1.d.b, var_1.d.a), vec4<bool>(var_1.d.b, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, var_1.d.a, true)), u_input.a.x == 4294967295u), !select(vec4<bool>(var_1.d.b, var_2.x, var_1.d.a, var_1.d.b), vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(false, true, var_1.d.a, var_1.d.b)), select(all(vec4<bool>(var_2.x, false, false, false)), !false, all(vec4<bool>(true, var_2.x, var_1.d.a, var_2.x)))), select(!(!vec4<bool>(var_1.d.a, var_1.d.a, true, var_2.x)), !(!vec4<bool>(var_1.d.a, var_1.d.b, false, false)), true | all(vec4<bool>(var_1.d.b, var_1.d.b, var_1.d.a, false)))), !vec4<bool>(var_1.d.a, all(vec2<bool>(var_1.d.a, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(-8322, 2147483647), vec2<i32>(0, 23850)) >= 1, !false), !(!var_2.x));
                var var_4 = Struct_1(~7010u, vec3<i32>(-var_1.d.c.x, i32(-1) * -8469, 1178), ~func_4(), var_1.a);
            }
        }
        default: {
            if (abs(14805u) >= (4294967295u | _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xzw, vec3<u32>(u_input.a.x, 47755u, u_input.a.x)), _wgslsmith_mult_vec3_u32(u_input.a.wxz, u_input.a.yzw)))) {
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(195.0 * 1438.0) - -1000.0)))));
                let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-105.0)) * _wgslsmith_f_op_f32(exp2(487.0))))))));
                global0 = var_0;
                let var_1 = Struct_4(vec2<i32>(-3990, -1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))), 577.0, Struct_3(select(!true, true, !(36179 == 73155)), ~u_input.a.x < _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 25690u), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), vec4<i32>(firstTrailingBit(17729), max(_wgslsmith_mod_i32(20467, 0), -2147483648), min(i32(-1) * -2147483648, _wgslsmith_mult_i32(-25393, 46074)), -32667 >> (u_input.a.x % 32u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)) + vec3<f32>(var_0, -629.0, var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1000.0, -134.0)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, 2105.0))))))));
            }
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                continue;
            }
            global1 = array<Struct_1, 5>();
            var var_0 = vec4<bool>(any(vec2<bool>(1 == ~(-43520), _wgslsmith_mod_u32(29138u, u_input.a.x) != ~u_input.a.x)), true, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, u_input.a.x)) & _wgslsmith_mod_vec2_u32(u_input.a.wx, vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(~u_input.a.x, 1u)) > u_input.a.x, !(!(false && true)));
        }
    }
    for (var var_0 = 3275; var_0 != 0; var_0 -= 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
    }
    let var_0 = all(select(vec2<bool>(!(true & false), !true), !vec2<bool>(true, false), _wgslsmith_f_op_f32(-1185.0) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1938.0 - 693.0) - _wgslsmith_f_op_f32(-1421.0 - 2215.0))));
    global1 = array<Struct_1, 5>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 5u)];
    return Struct_3(var_0, all(vec3<bool>(all(vec4<bool>(var_0, var_0, var_0, true)) || (var_0 && true), all(!vec3<bool>(var_0, var_0, true)), true)), vec4<i32>(abs(-24920), firstLeadingBit(var_1.c), var_1.d.x, firstLeadingBit(select(var_1.b.x, var_1.d.x, true)) & ~(-1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1058.0, 462.0, 569.0) - vec3<f32>(-1129.0, 1804.0, -1065.0)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(537.0, 809.0, -532.0) * vec3<f32>(-1170.0, -112.0, 644.0)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(600.0, -1240.0, 318.0), vec3<f32>(104.0, 1000.0, 379.0), var_0)))))));
}

fn func_7(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        for (var var_0 = -20084; var_0 >= 0; var_0 += 1) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            global1 = array<Struct_1, 5>();
            break;
        }
        break;
    }
    loop {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        if (arg_1.d.a) {
        }
        break;
    }
    for (var var_0: i32; ; ) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        var var_1 = vec2<i32>(-10881, -_wgslsmith_div_i32(0 ^ (arg_2.b.x ^ -20609), i32(-1) * -arg_2.d.x));
        var var_2 = false;
        global0 = _wgslsmith_f_op_f32(-425.0);
        break;
    }
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000.0, 108.0) * 697.0), _wgslsmith_f_op_f32(f32(-1.0) * -696.0), arg_1.c, -410.0)))));
    let var_1 = u_input.a.zz;
    return Struct_2(!vec2<bool>(!true || (arg_1.d.a & arg_1.d.b), u_input.a.x > arg_2.a), max(-arg_2.d, vec2<i32>(~arg_2.c, -2147483647 | arg_3)));
}

fn func_8(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    global0 = func_3().d.x;
    switch (-max(~arg_0.b.x, _wgslsmith_clamp_i32(arg_0.b.x, arg_0.b.x, arg_0.b.x & -2147483648))) {
        case -4400: {
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                break;
            }
            return func_3();
        }
        case 5395: {
            switch (2147483647) {
                default: {
                }
            }
        }
        case -28462: {
            global1 = array<Struct_1, 5>();
            let var_0 = func_3();
            global1 = array<Struct_1, 5>();
        }
        case 24387: {
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_0 = arg_0.a.x;
                var_0 = true;
            }
            let var_0 = Struct_4(_wgslsmith_mod_vec2_i32(arg_0.b, -(vec2<i32>(0, -2147483648) << (u_input.a.xy % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1307.0, -1160.0), vec2<f32>(2344.0, -188.0))) - vec2<f32>(140.0, 582.0)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000.0, 348.0), vec2<f32>(165.0, -466.0)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(662.0, -100.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1045.0), _wgslsmith_f_op_f32(f32(-1.0) * -1212.0))))), Struct_3(false, true, vec4<i32>(func_3().c.x, ~(i32(-1) * -25657), -1, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.x, 0, arg_0.b.x, -2147483648), vec4<i32>(1, arg_0.b.x, 2147483647, arg_0.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1139.0, -1000.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1373.0 - -310.0) * _wgslsmith_f_op_f32(max(277.0, -550.0))), _wgslsmith_f_op_f32(556.0 * -457.0))));
            global0 = var_0.d.d.x;
        }
        default: {
            global0 = 323.0;
            global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(211.0, _wgslsmith_f_op_f32(-168.0)), -319.0)))));
            switch (arg_0.b.x) {
                default: {
                }
            }
            for (var var_0 = 61791; var_0 <= 16459; var_0 -= 1) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                let var_1 = func_7(0u, Struct_4(vec2<i32>(2147483647, -_wgslsmith_mult_i32(0, 1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2844.0, -679.0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(177.0, -1188.0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(450.0, 1000.0))), -1549.0, func_3()), Struct_1(39049u, ~(~vec3<i32>(arg_0.b.x, arg_0.b.x, -3598)) | abs(vec3<i32>(arg_0.b.x, arg_0.b.x, -2147483648)), 51197, arg_0.b >> (~vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), i32(-1) * -26201);
            }
            loop {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                global1 = array<Struct_1, 5>();
                continue;
            }
        }
    }
    let var_0 = vec2<u32>(arg_1, arg_1);
    switch (18179) {
        case -1: {
            return Struct_3(select(func_3().b, select(all(!vec3<bool>(arg_0.a.x, arg_0.a.x, false)), false, !(!true)), func_3().b), false, -(~(vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -2147483648) ^ ~vec4<i32>(arg_0.b.x, arg_0.b.x, 15523, arg_0.b.x))), func_3().d);
        }
        case 2147483647: {
            let var_1 = func_7(~_wgslsmith_div_u32(arg_1 | u_input.a.x, var_0.x ^ u_input.a.x) & ~4294967295u, Struct_4(_wgslsmith_div_vec2_i32((arg_0.b << (u_input.a.xw % vec2<u32>(32u))) & arg_0.b, ~(arg_0.b | vec2<i32>(15469, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(1619.0 * -648.0), _wgslsmith_f_op_f32(f32(-1.0) * -600.0)))), -1220.0, Struct_3(true, 3052u > (u_input.a.x << (arg_1 % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647, -2147483648, -62868, 6403), vec4<i32>(arg_0.b.x, -1, arg_0.b.x, arg_0.b.x) & vec4<i32>(16313, arg_0.b.x, 5291, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-617.0, -1166.0, 280.0), vec3<f32>(-428.0, -555.0, -262.0))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(734.0, 1890.0, -834.0), vec3<f32>(-131.0, 1000.0, -1613.0))), vec3<bool>(arg_0.a.x, false, true))))), Struct_1(4294967295u, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647, arg_0.b.x, 4707) >> (vec3<u32>(48585u, u_input.a.x, 1u) % vec3<u32>(32u)), vec3<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)) >> (u_input.a.xyx % vec3<u32>(32u)), -(arg_0.b.x | 41429) << (~(arg_1 | 35899u) % 32u), vec2<i32>(-1) * -arg_0.b), 1);
            global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-684.0 + 1329.0)));
            for (; u_input.a.x < countOneBits(arg_1); ) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239.0)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -869.0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000.0)))))) * 1124.0);
            }
            global1 = array<Struct_1, 5>();
            let var_2 = abs(71122u);
        }
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        let var_1 = vec2<u32>(1u, arg_1) & ~(~_wgslsmith_div_vec2_u32(abs(var_0), vec2<u32>(4294967295u, 4294967295u)));
        break;
    }
    return Struct_3(arg_0.a.x, true, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32((vec4<i32>(arg_0.b.x, 2147483647, -68937, arg_0.b.x) >> (vec4<u32>(var_0.x, var_0.x, 48988u, arg_1) % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, 22026, arg_0.b.x), vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)), -vec4<i32>(0, -2555, -9277, arg_0.b.x))), ~vec4<i32>(5542, abs(arg_0.b.x), func_7(arg_1, Struct_4(arg_0.b, vec2<f32>(183.0, 130.0), 1074.0, Struct_3(arg_0.a.x, arg_0.a.x, vec4<i32>(arg_0.b.x, 2147483647, arg_0.b.x, arg_0.b.x), vec3<f32>(-1056.0, -197.0, -190.0))), Struct_1(0u, vec3<i32>(arg_0.b.x, 1, arg_0.b.x), arg_0.b.x, vec2<i32>(32669, arg_0.b.x)), 25089).b.x, arg_0.b.x | 0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-510.0), _wgslsmith_f_op_f32(-1000.0 - 1196.0)), 1033.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-148.0, -793.0)) * func_3().d.x))));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    switch (-76854) {
        case -1: {
            var var_0 = func_8(func_7(arg_0.x, Struct_4(abs(vec2<i32>(7403, 48706) & vec2<i32>(-3076, 35282)), vec2<f32>(_wgslsmith_f_op_f32(-501.0 * 398.0), -1017.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000.0, -584.0, true)), _wgslsmith_f_op_f32(321.0 - -742.0))), func_3()), Struct_1(max(u_input.a.x, 28611u) ^ _wgslsmith_mult_u32(21430u, 1u), ~vec3<i32>(-1, 0, -2147483648) >> (u_input.a.zzy % vec3<u32>(32u)), -53232, -vec2<i32>(-8913, 0)), 1), arg_0.x);
        }
        case -35753: {
            switch (-2782) {
                case -1: {
                    let var_0 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x & u_input.a.x, ~arg_0.x, ~u_input.a.x), u_input.a.zzx), _wgslsmith_div_vec3_i32(select(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647, 0, -9166), vec3<i32>(4478, -1, -1)), func_8(Struct_2(vec2<bool>(false, false), vec2<i32>(0, -35494)), u_input.a.x).c.zzz, select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), any(vec3<bool>(true, false, true)))), min(-vec3<i32>(-1, -4845, -155), vec3<i32>(func_4(), firstTrailingBit(-22268), ~0))), ~countOneBits(-_wgslsmith_add_i32(38516, 2147483647)), -countOneBits(~func_3().c.zz));
                    global1 = array<Struct_1, 5>();
                    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1987.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2345.0 - 1000.0) + _wgslsmith_div_f32(-1672.0, -1096.0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-719.0 * _wgslsmith_f_op_f32(400.0 + 697.0)) * -374.0) + _wgslsmith_f_op_f32(min(306.0, _wgslsmith_f_op_f32(-313.0)))));
                }
                case 2147483647: {
                    var var_0 = 2147483647 & func_7((~u_input.a.x >> (_wgslsmith_add_u32(4294967295u, 4294967295u) % 32u)) >> (~(~1u) % 32u), Struct_4(~(-vec2<i32>(-1, 6505)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1160.0, 940.0) * vec2<f32>(-104.0, -645.0)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-101.0, -1227.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(271.0 - 239.0), _wgslsmith_f_op_f32(sign(-766.0))), Struct_3(all(vec3<bool>(false, false, false)), !true, -vec4<i32>(40901, 2718, -7232, -12803), _wgslsmith_f_op_vec3_f32(vec3<f32>(178.0, -2089.0, -548.0) + vec3<f32>(335.0, 288.0, 518.0)))), global1[_wgslsmith_index_u32(countOneBits(~20484u), 5u)], reverseBits(select(func_7(u_input.a.x, Struct_4(vec2<i32>(44, 0), vec2<f32>(365.0, -1406.0), 293.0, Struct_3(true, false, vec4<i32>(0, -19814, 27498, -2147483648), vec3<f32>(1330.0, -250.0, -1895.0))), Struct_1(14249u, vec3<i32>(1, 2147483647, 0), 13077, vec2<i32>(2147483647, 7929)), 2147483647).b.x, countOneBits(0), 2212.0 == 2356.0))).b.x;
                    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(vec3<f32>(_wgslsmith_f_op_f32(-435.0), -1781.0, _wgslsmith_div_f32(-558.0, _wgslsmith_f_op_f32(round(-572.0)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(488.0, 1034.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(582.0))), ~25510u != u_input.a.x))))));
                    var var_1 = false;
                    global1 = array<Struct_1, 5>();
                    var var_2 = Struct_3(!(!((true || true) & !true)), true | false, vec4<i32>(-15915, -39803, ~(-(2147483647 ^ 1)), ~(~(-12228))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(679.0, 782.0, 1421.0)), vec3<f32>(-208.0, -576.0, 1613.0)) * vec3<f32>(func_3().d.x, _wgslsmith_f_op_f32(f32(-1.0) * -914.0), 131.0)))));
                }
                case -2265: {
                    global1 = array<Struct_1, 5>();
                    global0 = func_8(func_7(1u, Struct_4(vec2<i32>(2147483647, 2147483647) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(15525, 0), vec2<i32>(57948, -54658), vec2<i32>(-315, 2147483647)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-720.0, -340.0) + vec2<f32>(641.0, -141.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-163.0) - _wgslsmith_f_op_f32(abs(2093.0))), Struct_3(false, !false, select(vec4<i32>(-37754, 0, 31795, -1), vec4<i32>(-6599, 0, 0, -2147483648), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1704.0, 1493.0, 512.0), vec3<f32>(-267.0, 1000.0, 550.0), true)))), Struct_1(~4294967295u & arg_0.x, select(~vec3<i32>(0, 0, -2147483648), vec3<i32>(-18550, -29117, 0), all(vec4<bool>(false, false, false, false))), -(~(-33684)), vec2<i32>(-1) * -vec2<i32>(-2147483648, 2147483647)), ~(-reverseBits(-2147483648))), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, u_input.a.x), u_input.a.x)).d.x;
                    var var_0 = _wgslsmith_f_op_f32(264.0 + _wgslsmith_f_op_f32(ceil(-1051.0)));
                }
                default: {
                }
            }
            var var_0 = _wgslsmith_f_op_vec2_f32(func_3().d.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(274.0, 758.0), vec2<f32>(1000.0, -636.0), true)) * vec2<f32>(-1439.0, -1635.0))))));
            if (any(!vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) > var_0.x, _wgslsmith_clamp_u32(74735u, arg_0.x, 1u) >= arg_0.x, true, 0 >= firstTrailingBit(-1)))) {
                global1 = array<Struct_1, 5>();
            }
            let var_1 = func_8(Struct_2(!(!(!vec2<bool>(false, true))), vec2<i32>(-66039 & func_4(), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483648, 2147483647, -44898), vec3<i32>(-5516, 2147483647, 0)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647, -35360, -19770), vec3<i32>(-1, 3720, 0))))), arg_0.x & min(max(arg_0.x, arg_0.x), ~1u));
            var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(step(1828.0, var_1.d.x))) * _wgslsmith_f_op_f32(f32(-1.0) * -532.0)))), var_0.x);
        }
        default: {
            let var_0 = 55921;
            loop {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                var var_1 = ~_wgslsmith_div_vec4_u32(reverseBits(u_input.a), _wgslsmith_add_vec4_u32(arg_0 ^ vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.a.x), ~reverseBits(arg_0)));
                var var_2 = firstTrailingBit(firstLeadingBit(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483648, 22536, 11092, 2147483647), vec4<i32>(-34572, 2147483647, var_0, 45542)))));
                let var_3 = ~(~max(~vec4<u32>(4294967295u, 4294967295u, 11010u, 61478u), max(~u_input.a, _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, var_1.x, arg_0.x, 0u)))));
                let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_3().d))));
            }
        }
    }
    var var_0 = any(vec3<bool>(true, false, func_7(31139u, Struct_4(vec2<i32>(1, -66245), vec2<f32>(-351.0, 1588.0), 1000.0, Struct_3(true, true, vec4<i32>(-2147483648, -9327, 1, 4410), vec3<f32>(1635.0, 2512.0, -760.0))), global1[_wgslsmith_index_u32(103130u, 5u)], 1).a.x && all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))));
    let var_1 = global1[_wgslsmith_index_u32(arg_0.x, 5u)];
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-740.0, 1000.0))) - vec2<f32>(1221.0, 670.0)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1597.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-194.0), -1262.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2381.0, -422.0), vec2<f32>(586.0, 1000.0)))))));
    global0 = _wgslsmith_f_op_f32(-var_2.x);
    return var_2.x;
}

fn func_1(arg_0: f32) -> bool {
    for (var var_0: i32; var_0 > 21394; var_0 -= 1) {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1181.0)) + arg_0) + -257.0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -373.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_div_f32(arg_0, -730.0)))), _wgslsmith_f_op_f32(func_2(u_input.a))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(454.0 - arg_0) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(func_5(vec3<f32>(461.0, arg_0, arg_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-240.0, arg_0)) * arg_0), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))) - func_8(Struct_2(vec2<bool>(true, true), vec2<i32>(16010, 42253)), _wgslsmith_div_u32(u_input.a.x, 1u)).d.x), arg_0));
        if (true) {
            break;
        }
        let var_2 = Struct_4(~reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483648, -1), vec2<i32>(-14611, -31943))) >> (_wgslsmith_mult_vec2_u32(u_input.a.wx, vec2<u32>(abs(40797u), _wgslsmith_dot_vec3_u32(u_input.a.xwz, vec3<u32>(u_input.a.x, 1u, u_input.a.x)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), -852.0)), _wgslsmith_f_op_f32(ceil(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(vec3<f32>(-256.0, var_1.x, var_1.x))), arg_0))))), Struct_3(func_7(~u_input.a.x, Struct_4(vec2<i32>(1, -9816), vec2<f32>(arg_0, 364.0), var_1.x, Struct_3(false, true, vec4<i32>(-56644, -36028, -37689, 0), var_1.yzw)), global1[_wgslsmith_index_u32(21335u, 5u)], ~(-1)).a.x && (func_7(u_input.a.x, Struct_4(vec2<i32>(26912, -17515), var_1.wx, arg_0, Struct_3(true, true, vec4<i32>(-15076, -1788, -2147483648, 1), var_1.zxz)), global1[_wgslsmith_index_u32(4294967295u, 5u)], -67670).a.x | any(vec3<bool>(false, false, true))), ~firstTrailingBit(1) > 1, abs(func_3().c), vec3<f32>(-417.0, 751.0, -1000.0)));
    }
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    var var_0 = u_input.a.wz | u_input.a.yz;
    var var_1 = min(-select(vec4<i32>(func_7(var_0.x, Struct_4(vec2<i32>(-1, 2147483647), vec2<f32>(arg_0, arg_0), 152.0, Struct_3(true, true, vec4<i32>(-1, -53029, 33182, 36657), vec3<f32>(arg_0, 782.0, 1551.0))), global1[_wgslsmith_index_u32(1u, 5u)], 1).b.x, 2147483647 ^ 15313, func_8(Struct_2(vec2<bool>(false, false), vec2<i32>(56596, -9553)), 7789u).c.x, _wgslsmith_sub_i32(-1, 13138)), -vec4<i32>(-18884, -1, 42695, 2147483647) | reverseBits(vec4<i32>(-2147483648, 26996, 45176, 2147483647)), !false != func_8(Struct_2(vec2<bool>(true, false), vec2<i32>(0, -1)), 4294967295u).a), -_wgslsmith_div_vec4_i32(countOneBits(~vec4<i32>(100893, 1, 30244, 1)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1, 54914, -28091), vec3<i32>(1, -66843, -21185)), -26343, -1, i32(-1) * -83521)));
    return all(!(!func_7(var_0.x, Struct_4(vec2<i32>(var_1.x, var_1.x), vec2<f32>(-1962.0, arg_0), arg_0, Struct_3(true, false, vec4<i32>(24637, 1, var_1.x, var_1.x), vec3<f32>(arg_0, 1603.0, 1249.0))), global1[_wgslsmith_index_u32(4294967295u, 5u)], 81236).a));
}

fn func_9(arg_0: bool) -> u32 {
    let var_0 = select(!select(select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, true), vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, false)), vec3<bool>(func_8(Struct_2(vec2<bool>(true, false), vec2<i32>(0, -20406)), 14016u).b, arg_0 | false, true || arg_0), false), !(!vec3<bool>(arg_0, arg_0, func_3().a)), !select(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, arg_0)), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, arg_0)), false), !(!vec3<bool>(false, arg_0, arg_0)), true));
    let var_1 = vec3<bool>(!(all(!vec4<bool>(true, false, false, var_0.x)) & !(!var_0.x)), arg_0, any(!(!(!var_0.yz))));
    global1 = array<Struct_1, 5>();
    if (min(46488, 1) == 0) {
        loop {
            if (LOOP_COUNTERS[26u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            var var_2 = 11266;
            let var_3 = func_6(max(u_input.a, ~(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) & u_input.a))), _wgslsmith_f_op_f32(min(func_8(func_7(_wgslsmith_div_u32(27841u, 18887u), Struct_4(vec2<i32>(-5444, -2147483648), vec2<f32>(-1358.0, -1794.0), 258.0, Struct_3(false, false, vec4<i32>(12830, 0, 1, 2147483647), vec3<f32>(924.0, -1026.0, -2076.0))), global1[_wgslsmith_index_u32(19799u, 5u)], 1), ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))).d.x, 172.0)));
            var var_4 = select(u_input.a.wwx, abs(vec3<u32>(0u ^ var_3, _wgslsmith_mod_u32(abs(49330u), ~u_input.a.x), countOneBits(_wgslsmith_mult_u32(0u, 0u)))), arg_0);
        }
        let var_2 = true;
    }
    var var_2 = 520.0;
    return ~(u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x & 4294967295u, _wgslsmith_add_u32(6939u, 4508u), u_input.a.x | 1u), vec4<u32>(max(u_input.a.x, 136863u), _wgslsmith_dot_vec3_u32(u_input.a.yxw, vec3<u32>(45023u, u_input.a.x, 74578u)), ~0u, ~u_input.a.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
        global1 = array<Struct_1, 5>();
        loop {
            if (LOOP_COUNTERS[28u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            let var_0 = func_9(!func_1(_wgslsmith_f_op_f32(f32(-1.0) * -233.0)) && !false);
        }
        global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec3<f32>(-619.0, -995.0, 916.0))), _wgslsmith_f_op_f32(248.0 * -157.0)) - _wgslsmith_f_op_f32(step(-333.0, 163.0)))));
        let var_0 = Struct_4(_wgslsmith_add_vec2_i32(func_7(4294967295u, Struct_4(~vec2<i32>(34400, 20388), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(343.0, -1003.0), vec2<f32>(875.0, -2142.0), false)), _wgslsmith_f_op_f32(-1476.0 - 595.0), Struct_3(false, false, vec4<i32>(19020, 28611, -2147483648, 0), vec3<f32>(-589.0, 1042.0, -441.0))), Struct_1(61503u, vec3<i32>(0, 0, -58262), i32(-1) * -2147483648, select(vec2<i32>(-74245, 0), vec2<i32>(-2147483648, -1), vec2<bool>(false, true))), 2227).b, _wgslsmith_mod_vec2_i32(func_3().c.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(0, -4158) | vec2<i32>(2147483647, 2147483647), min(vec2<i32>(1, 37523), vec2<i32>(0, 10485)), countOneBits(vec2<i32>(-1, -34215))))), vec2<f32>(556.0, func_8(func_7(27249u, Struct_4(vec2<i32>(-59483, 27863), vec2<f32>(-1085.0, -898.0), 250.0, Struct_3(true, false, vec4<i32>(0, -683, -1, 7983), vec3<f32>(1623.0, -315.0, 751.0))), Struct_1(u_input.a.x, vec3<i32>(-46895, 16429, -1), 0, vec2<i32>(1, 30478)), _wgslsmith_div_i32(-999, 16310)), 4294967295u).d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(-1421.0)) + _wgslsmith_f_op_f32(func_2(vec4<u32>(0u, 21732u, 58024u, u_input.a.x))))), func_8(func_7(u_input.a.x, Struct_4(-vec2<i32>(1, -2498), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1244.0, -1000.0))), _wgslsmith_f_op_f32(-145.0 - -1000.0), func_3()), Struct_1(u_input.a.x >> (u_input.a.x % 32u), vec3<i32>(38684, 11121, 2147483647), 515 << (u_input.a.x % 32u), ~vec2<i32>(76875, -50622)), _wgslsmith_mod_i32(-17968, 1) ^ abs(0)), 31985u));
        var var_1 = Struct_3(select(true, var_0.d.a, !var_0.d.b), 410.0 <= -387.0, vec4<i32>(-var_0.d.c.x, _wgslsmith_sub_i32(i32(-1) * -2147483648, ~var_0.d.c.x), ~(~select(-43394, -2147483648, true)), 2147483647), func_8(Struct_2(vec2<bool>(any(vec3<bool>(var_0.d.b, var_0.d.b, false)), !false), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), abs(vec2<i32>(var_0.a.x, 1)))), _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 3793u)) >> (u_input.a.x % 32u)).d);
    }
    if (all(vec2<bool>(firstTrailingBit(max(u_input.a.x, 4294967295u)) > ~_wgslsmith_sub_u32(0u, u_input.a.x), all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)))))) {
        let var_0 = vec2<i32>(_wgslsmith_clamp_i32(~71301, -13900, -1) & 0, _wgslsmith_dot_vec4_i32(func_3().c, -vec4<i32>(11808, 2147483647, 0, -1)) & reverseBits(1)) >> (~(~vec2<u32>(29713u ^ 1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))) % vec2<u32>(32u));
    }
    global1 = array<Struct_1, 5>();
    let var_0 = firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, ~u_input.a.x));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~4294967295u), ~u_input.a.x), 5u)];
    let var_2 = !all(!vec3<bool>(!true, all(vec2<bool>(false, false)), false));
    global1 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000.0 - -231.0), 1952.0)), _wgslsmith_div_vec4_i32(-vec4<i32>(var_1.d.x << (50405u % 32u), func_4(), _wgslsmith_mult_i32(50183, var_1.c), firstTrailingBit(var_1.b.x)), vec4<i32>(_wgslsmith_div_i32(1 << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, var_1.d.x, var_1.d.x, 5579), vec4<i32>(var_1.d.x, -31171, -33071, var_1.d.x))), ~var_1.b.x, _wgslsmith_mult_i32(var_1.d.x, var_1.d.x), ~(0 << (4294967295u % 32u)))));
}

