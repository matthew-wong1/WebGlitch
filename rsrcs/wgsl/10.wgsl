// {"0:0":[187,78,129,181,49,102,32,31]}
// Seed: 13556543878594423998

struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: i32;

var<private> global2: vec3<u32>;

var<private> LOOP_COUNTERS: array<u32, 19>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn func_6(arg_0: vec3<i32>) -> f32 {
    let var_0 = ~global2.x;
    switch (~2147483647) {
        case 23827: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                break;
            }
            if (arg_0.x <= select(-10946, firstLeadingBit(_wgslsmith_mod_i32(arg_0.x, u_input.a.x)), false)) {
            }
            let var_1 = Struct_5(_wgslsmith_f_op_f32(f32(-1.0) * -2498.0), ~(~vec3<u32>(_wgslsmith_sub_u32(var_0, 10739u), ~global2.x, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1389.0, -478.0, 528.0) + vec3<f32>(-408.0, -346.0, 496.0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(359.0, -187.0, -554.0) * vec3<f32>(-586.0, 254.0, 673.0))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1096.0)), _wgslsmith_f_op_f32(1000.0 + -214.0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1252.0 * -765.0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-472.0), _wgslsmith_div_f32(-633.0, -1269.0), false))))));
        }
        case 3313: {
            for (var var_1 = -2147483648; false; global1 = abs(_wgslsmith_sub_i32(2147483647 & (~(-2147483648) << (21301u % 32u)), ~u_input.a.x))) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var var_2 = -(max(u_input.a.x, -1) >> (~(~_wgslsmith_clamp_u32(0u, 0u, 102753u)) % 32u));
                let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579.0 + -310.0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-599.0))))), -1607.0));
                continue;
            }
            global0 = array<vec2<u32>, 6>();
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_1 = firstLeadingBit(~global2.x);
                break;
            }
        }
        default: {
            global0 = array<vec2<u32>, 6>();
            switch (_wgslsmith_sub_i32(-2147483648, 1)) {
                case -7314: {
                    var var_1 = Struct_4(firstTrailingBit(vec4<i32>(-49974, u_input.a.x, -37055, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, 1, -16447) << (vec4<u32>(var_0, 0u, var_0, 0u) % vec4<u32>(32u)), -vec4<i32>(arg_0.x, -1, 0, arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260.0 * -1260.0)) * _wgslsmith_f_op_f32(select(-439.0, _wgslsmith_f_op_f32(max(-938.0, 603.0)), -2068.0 >= -434.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(920.0 * -2029.0) * _wgslsmith_f_op_f32(abs(955.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-626.0, -310.0)) - _wgslsmith_f_op_f32(-588.0)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1501.0))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -432.0))))), !(_wgslsmith_add_i32(u_input.a.x, 0) >= -1) || (true & any(vec3<bool>(false, false, false))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(820.0, 1550.0, -1648.0, 175.0) - vec4<f32>(211.0, 153.0, -763.0, 1711.0)))));
                }
                case 0: {
                    let var_1 = Struct_4(abs(reverseBits(vec4<i32>(-1, countOneBits(-22768), abs(2242), _wgslsmith_dot_vec4_i32(vec4<i32>(42492, -9379, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -5682))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1425.0, 612.0, -1166.0, 217.0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1527.0, 644.0, -1744.0, -681.0)))) * vec4<f32>(-1239.0, _wgslsmith_div_f32(-358.0, 256.0), _wgslsmith_f_op_f32(706.0 - -1000.0), _wgslsmith_f_op_f32(abs(-329.0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1329.0, -1141.0, -1000.0, -1106.0)))) * vec4<f32>(-1215.0, _wgslsmith_f_op_f32(f32(-1.0) * -221.0), _wgslsmith_f_op_f32(-1085.0), 942.0))), any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-669.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(761.0, -2046.0)) * -844.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110.0 + -305.0) * 1844.0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(888.0 + 183.0))))));
                    global1 = u_input.a.x;
                    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(797.0, var_1.d.a.x, 585.0, 191.0) * var_1.b))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(577.0, var_1.d.a.x, 772.0, -967.0), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d.a.x, var_1.b.x, 1048.0, var_1.b.x)))), vec4<f32>(-105.0, -1000.0, _wgslsmith_f_op_f32(floor(177.0)), -323.0)))));
                }
                case -1: {
                    let var_1 = -_wgslsmith_clamp_i32(arg_0.x, _wgslsmith_mod_i32(-43281 << (1u % 32u), arg_0.x), ~arg_0.x) | -(~(~_wgslsmith_add_i32(u_input.a.x, arg_0.x)));
                    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1671.0)), -1164.0);
                }
                default: {
                    global1 = u_input.a.x;
                    var var_1 = vec2<i32>(~arg_0.x, countOneBits(_wgslsmith_mod_i32(1, -arg_0.x)));
                }
            }
            var var_1 = arg_0;
        }
    }
    let var_1 = select(arg_0.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1, 0, 5461, 3088)), vec4<i32>(1, u_input.a.x, -2147483648, u_input.a.x)), firstLeadingBit(-1)), !(!any(vec2<bool>(false, false)))) | (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 28324, arg_0.x), ~(-vec4<i32>(2147483647, u_input.a.x, u_input.a.x, 18583))) & abs(_wgslsmith_div_i32(max(arg_0.x, u_input.a.x), -arg_0.x)));
    if (false) {
        let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -697.0), _wgslsmith_f_op_f32(floor(568.0)), !false)))), vec3<u32>(select(4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(19311u, 0u, 1u, 4294967295u), vec4<u32>(global2.x, 0u, var_0, 38898u)), ~(~0u), !true || !false), global2.x | global2.x, var_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1440.0, -2135.0, -464.0), vec3<f32>(-1000.0, 229.0, -1014.0))) * vec3<f32>(_wgslsmith_div_f32(-1248.0, -823.0), 2133.0, _wgslsmith_f_op_f32(572.0 - 424.0))), vec3<f32>(1000.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(386.0 - -1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -799.0)), 588.0), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-305.0, 193.0, 1303.0, 464.0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-570.0, 142.0, 1000.0, -1661.0)))));
    }
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(914.0, _wgslsmith_f_op_f32(abs(1000.0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1895.0 * -416.0) - _wgslsmith_f_op_f32(-1593.0 * -2386.0)))) - 545.0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))));
}

fn func_5(arg_0: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1148.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2098.0)))), _wgslsmith_f_op_f32(f32(-1.0) * -737.0));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        var var_1 = _wgslsmith_f_op_f32(func_6(vec3<i32>(min(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x), ~(u_input.a.x << (35324u % 32u)), u_input.a.x) ^ -(~(vec3<i32>(u_input.a.x, -25488, 2147483647) >> (vec3<u32>(0u, 56612u, arg_0.x) % vec3<u32>(32u))))));
        var var_2 = Struct_3(vec3<i32>(u_input.a.x, -_wgslsmith_div_i32(~u_input.a.x, 42399), select(i32(-1) * -51179, -35987, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)))), -vec2<i32>(min(2147483647, ~u_input.a.x), -(~u_input.a.x)), true, _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, _wgslsmith_add_vec2_i32(u_input.a >> (~vec2<u32>(37855u, 0u) % vec2<u32>(32u)), u_input.a)), select(vec4<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true | (true && false), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false))), select(select(!vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), !vec4<bool>(true, false, false, true)), !(!vec4<bool>(false, true, false, true)), !all(vec4<bool>(true, false, true, false))), select(!vec4<bool>(true, false, true, true), vec4<bool>(any(vec2<bool>(false, true)), true & true, !false, any(vec2<bool>(false, true))), (2147483647 >> (global2.x % 32u)) <= 50352)));
        switch (0) {
            case 0: {
                continue;
            }
            default: {
                let var_3 = ~global2.x;
                let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -797.0, -365.0, -196.0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 308.0, 133.0))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000.0, 1423.0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-106.0, var_0, 133.0, var_0)))))));
                var var_5 = false;
                var var_6 = vec2<f32>(-1749.0, _wgslsmith_f_op_f32(abs(var_4.a.x)));
            }
        }
        var var_3 = ~(~max(vec4<i32>(u_input.a.x, -36572, var_2.a.x, 1) << (select(vec4<u32>(4294967295u, 1u, 0u, global2.x), vec4<u32>(arg_0.x, 0u, global2.x, 15726u), true) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, var_2.a.x), -vec4<i32>(var_2.b.x, var_2.d.x, var_2.a.x, var_2.d.x))));
        var_3 = vec4<i32>(var_3.x, -abs(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-6848, var_3.x)), countOneBits(vec2<i32>(var_2.d.x, -89577)))), var_2.a.x, -u_input.a.x);
    }
    if (any(select(vec2<bool>(!select(false, true, false), select(59850u, global2.x, true) <= 36411u), select(vec2<bool>(select(true, false, false), !true), vec2<bool>(false && true, 1289.0 > -343.0), false), !vec2<bool>(true, any(vec4<bool>(false, true, false, true)))))) {
        var var_1 = Struct_2(select(min(_wgslsmith_mod_vec2_u32(~global2.zz, countOneBits(arg_0.zy)), vec2<u32>(~0u, 20649u << (1u % 32u))), vec2<u32>(global2.x, 39200u), false || select(false, !false, false)), select(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(~1u, _wgslsmith_mult_u32(4294967295u, 12555u)) > _wgslsmith_sub_u32(arg_0.x, firstTrailingBit(1u))), !false);
    }
    global2 = firstTrailingBit(vec3<u32>(arg_0.x, (58998u ^ (arg_0.x << (48210u % 32u))) >> ((max(arg_0.x, 0u) & abs(global2.x)) % 32u), 4294967295u << ((4294967295u & 4294967295u) % 32u)));
    if (true) {
        switch (reverseBits(~(~0))) {
            case -51003: {
                let var_1 = vec2<i32>(~_wgslsmith_mod_i32(-1, u_input.a.x), ~(~_wgslsmith_add_i32(11670, -2147483648))) << (min(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global2.yx & global0[_wgslsmith_index_u32(4294967295u, 6u)], ~vec2<u32>(arg_0.x, 22390u)), ~(~vec2<u32>(arg_0.x, 4294967295u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 5139u), vec2<u32>(74417u, 1u))), vec2<u32>(49974u, _wgslsmith_add_u32(47787u, arg_0.x))) % vec2<u32>(32u));
                var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -1602.0), -1345.0, false))) - _wgslsmith_f_op_f32(round(-1000.0)))));
                var var_3 = _wgslsmith_clamp_vec2_u32(~(~global2.xx), global0[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_clamp_vec2_u32(~global2.zx, arg_0.zz, vec2<u32>(_wgslsmith_mod_u32(global2.x, global2.x), ~72959u) << (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~global2.x), 6u)] % vec2<u32>(32u))));
                var_2 = _wgslsmith_f_op_f32(-1000.0);
            }
            case -89357: {
            }
            case 1: {
                let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -340.0)), firstLeadingBit(~arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, var_0, -288.0), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-178.0, 126.0, 580.0)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(exp2(808.0)), -877.0) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1751.0) + vec3<f32>(613.0, -1224.0, -2111.0)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-159.0, 162.0, 533.0), vec3<f32>(-956.0, var_0, var_0))), !true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1588.0, var_0, -453.0, var_0), vec4<f32>(140.0, var_0, var_0, 733.0))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(686.0, -1000.0, var_0, var_0))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(172.0, 954.0, var_0, var_0), vec4<f32>(var_0, 212.0, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -422.0, -694.0, var_0))))));
                let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -753.0, -628.0, -1000.0))))));
            }
            default: {
                let var_1 = any(select(vec3<bool>(any(vec4<bool>(true, false, true, false)), !true && (1u == 44374u), !true), !select(!vec3<bool>(false, false, true), vec3<bool>(false, true, false), any(vec3<bool>(true, true, true))), vec3<bool>(1000.0 == _wgslsmith_f_op_f32(-var_0), !false && any(vec3<bool>(false, false, false)), 1u < (global2.x >> (global2.x % 32u)))));
                global1 = select(-1, ~u_input.a.x, !(all(vec2<bool>(false, var_1)) || !true) && select(var_1, true, true));
                var var_2 = Struct_2(select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 20805u), reverseBits(global2.yx)), countOneBits(vec2<u32>(1u, global2.x))), _wgslsmith_sub_vec2_u32(~vec2<u32>(42034u, arg_0.x), firstTrailingBit(global0[_wgslsmith_index_u32(global2.x, 6u)] ^ vec2<u32>(arg_0.x, arg_0.x))), select(!select(vec2<bool>(var_1, true), vec2<bool>(true, var_1), vec2<bool>(var_1, true)), vec2<bool>(any(vec2<bool>(true, var_1)), 4294967295u > 25697u), vec2<bool>(var_0 >= var_0, true))), 2147483647, false);
                var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1493.0, var_0, 651.0, -720.0) + vec4<f32>(var_0, -465.0, var_0, 779.0)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1504.0, var_0, var_0, 872.0)))))));
                let var_4 = vec3<bool>((!var_2.c || !(var_2.a.x == 1u)) || var_2.c, !any(vec4<bool>(all(vec2<bool>(var_1, var_2.c)), u_input.a.x == var_2.b, 5691u < var_2.a.x, 403.0 > -1859.0)), true);
            }
        }
        if (!false) {
            global0 = array<vec2<u32>, 6>();
        }
    }
    return u_input.a.x;
}

fn func_4(arg_0: Struct_4) -> vec2<u32> {
    global1 = arg_0.a.x | u_input.a.x;
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        continue;
    }
    switch (u_input.a.x) {
        case -32548: {
            global1 = -1;
        }
        case -46719: {
        }
        case -1773: {
            return (global0[_wgslsmith_index_u32(global2.x ^ ~_wgslsmith_mult_u32(9636u, 4294967295u), 6u)] >> (~_wgslsmith_sub_vec2_u32(~global2.yy, vec2<u32>(global2.x, global2.x)) % vec2<u32>(32u))) ^ global2.xy;
        }
        default: {
        }
    }
    switch (-1) {
        case 1: {
            global1 = 1;
        }
        case 2485: {
        }
        case 26031: {
            let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d.a.yz + arg_0.b.wx))))));
            if (true) {
                var var_1 = !(!arg_0.c);
                global1 = func_5(_wgslsmith_mult_vec3_u32(select(vec3<u32>(global2.x, ~21465u, max(global2.x, global2.x)), ~abs(vec3<u32>(23992u, global2.x, global2.x)), !(!arg_0.c)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 49734u, global2.x), vec3<u32>(global2.x, global2.x, 0u)), 1u & global2.x, max(global2.x, global2.x)) ^ max(vec3<u32>(35031u, global2.x, 68628u) >> (vec3<u32>(38939u, global2.x, 0u) % vec3<u32>(32u)), select(vec3<u32>(global2.x, 1u, global2.x), vec3<u32>(global2.x, 1u, 16050u), false))));
            }
            switch (abs(-(-_wgslsmith_div_i32(-1, 71185) ^ 9112))) {
                case 0: {
                }
                case 30410: {
                    var var_1 = select(-vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, select(1, u_input.a.x, true), arg_0.a.x), _wgslsmith_div_i32(~arg_0.a.x, u_input.a.x), _wgslsmith_clamp_i32(0 >> (0u % 32u), 1, -6628)), vec3<i32>(~_wgslsmith_sub_i32(31412, ~23370), -2147483648, abs(_wgslsmith_mod_i32(55252, -34614))), all(vec2<bool>(any(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), true)));
                    let var_2 = Struct_2(abs(global2.zz), _wgslsmith_mult_i32(~(-_wgslsmith_div_i32(arg_0.a.x, 4234)), u_input.a.x), !(!(!any(vec4<bool>(true, arg_0.c, true, arg_0.c)))));
                    var var_3 = Struct_5(1336.0, vec3<u32>(1u, 0u, global2.x), arg_0.d.a.xwy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.b))));
                    var_1 = vec3<i32>(_wgslsmith_add_i32(-2147483648, -(-u_input.a.x >> (var_2.a.x % 32u))), 1, var_2.b);
                    var_3 = Struct_5(_wgslsmith_f_op_f32(-arg_0.d.a.x), vec3<u32>(~max(global2.x, 27595u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, var_2.a.x, 18441u), ~vec4<u32>(41499u, var_2.a.x, var_3.b.x, 0u))) << (select(~vec3<u32>(global2.x, var_2.a.x, 21446u), var_3.b, vec3<bool>(var_2.c && var_2.c, !var_2.c, !var_2.c)) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_3.c))), var_3.d.wyx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, var_0.x, var_3.c.x, 131.0)), vec4<f32>(var_3.c.x, 899.0, -1124.0, 1406.0)))));
                }
                default: {
                    var var_1 = Struct_2(_wgslsmith_div_vec2_u32(min(vec2<u32>(~global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, 1u), vec3<u32>(global2.x, 34236u, global2.x))), abs(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(0u, 6u)], vec2<u32>(global2.x, 53892u)))), ~(~global0[_wgslsmith_index_u32(global2.x, 6u)])), ~arg_0.a.x, all(!(!vec3<bool>(false, arg_0.c, true))));
                    let var_2 = var_0.x;
                }
            }
        }
        default: {
            var var_0 = vec3<i32>(arg_0.a.x, _wgslsmith_dot_vec2_i32(arg_0.a.zy, _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-2147483648, -19813)), min(vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<i32>(-10937, arg_0.a.x)), arg_0.a.yw)) & arg_0.a.x, 11628);
            switch (24977) {
                case -1: {
                    global1 = -2147483648;
                    global1 = (-(~(-u_input.a.x)) & ~(-70524)) ^ countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x | 9591, _wgslsmith_sub_i32(var_0.x, var_0.x), _wgslsmith_mult_i32(-1, arg_0.a.x), -var_0.x), arg_0.a));
                    let var_1 = select(!select(!vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, arg_0.c)), true && true), vec2<bool>(any(vec2<bool>(true, arg_0.c)), false && false)), !(!(!vec2<bool>(arg_0.c, false))), !(false || arg_0.c));
                }
                case 21145: {
                    let var_1 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~7126u << (25978u % 32u), max(_wgslsmith_div_u32(0u, global2.x), ~global2.x)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global2.x, global2.x) ^ min(global2.zx, global0[_wgslsmith_index_u32(12856u, 6u)]), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 54959u), vec2<u32>(global2.x, 49788u)), reverseBits(vec2<u32>(56870u, global2.x)), global0[_wgslsmith_index_u32(6352u, 6u)]))), -68296, arg_0.c);
                    var var_2 = !(!select(!(!vec2<bool>(false, var_1.c)), !(!vec2<bool>(arg_0.c, arg_0.c)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_1.c, arg_0.c, var_1.c), arg_0.c))));
                    let var_3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, 475.0) + _wgslsmith_f_op_f32(sign(2312.0))), var_1.c))), abs(countOneBits((vec3<u32>(11288u, var_1.a.x, 39536u) >> (vec3<u32>(17714u, var_1.a.x, global2.x) % vec3<u32>(32u))) << (~vec3<u32>(0u, 44646u, global2.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.a.x - arg_0.d.a.x) - _wgslsmith_f_op_f32(round(446.0))), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(select(-1624.0, arg_0.b.x, var_1.c)))) - arg_0.b.zzx), arg_0.b);
                    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.d.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(579.0, 302.0, -508.0, 413.0) + vec4<f32>(arg_0.d.a.x, 303.0, arg_0.b.x, var_3.d.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a, 236.0)), arg_0.d.a.x, _wgslsmith_f_op_f32(var_3.d.x - _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(arg_0.d.a.x * _wgslsmith_f_op_f32(-var_3.a)))));
                }
                case -19472: {
                    var var_1 = arg_0.c;
                }
                default: {
                    let var_1 = ~_wgslsmith_mult_u32(global2.x, ~global2.x);
                    var var_2 = _wgslsmith_dot_vec4_u32(max(select((vec4<u32>(4294967295u, var_1, 49252u, global2.x) | vec4<u32>(global2.x, global2.x, global2.x, var_1)) >> (~vec4<u32>(global2.x, var_1, global2.x, var_1) % vec4<u32>(32u)), reverseBits(~vec4<u32>(1960u, global2.x, global2.x, 64091u)), !(arg_0.c | arg_0.c)), ~vec4<u32>(~0u, _wgslsmith_mult_u32(var_1, 6136u), 4294967295u, ~64502u)), vec4<u32>(47526u, 0u, global2.x, ~(~global2.x)));
                }
            }
            var var_1 = vec2<i32>(_wgslsmith_mod_i32(i32(-1) * -arg_0.a.x, _wgslsmith_add_i32(-arg_0.a.x, arg_0.a.x)) >> (~_wgslsmith_mod_u32(0u, ~global2.x) % 32u), _wgslsmith_add_i32(u_input.a.x, min(u_input.a.x, _wgslsmith_mod_i32(arg_0.a.x | 0, -17166))));
            let var_2 = Struct_4(-arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1954.0, -262.0)), _wgslsmith_f_op_f32(-1562.0 - arg_0.d.a.x)), -1381.0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1270.0 + _wgslsmith_f_op_f32(-arg_0.d.a.x)))), _wgslsmith_f_op_f32(f32(-1.0) * -875.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-216.0), _wgslsmith_f_op_f32(-arg_0.b.x), !false)) - _wgslsmith_f_op_f32(step(-270.0, arg_0.d.a.x)))), (all(vec4<bool>(true, true, arg_0.c, false)) && true) | ((all(vec4<bool>(arg_0.c, arg_0.c, true, false)) == any(vec3<bool>(false, arg_0.c, arg_0.c))) && arg_0.c), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.d.a.x, 2567.0))), arg_0.b))));
        }
    }
    let var_0 = Struct_2(select(global0[_wgslsmith_index_u32(~(~global2.x), 6u)], _wgslsmith_div_vec2_u32(abs(vec2<u32>(global2.x, 65511u)), max(global2.zz, vec2<u32>(global2.x, 29699u))), vec2<bool>(!true, arg_0.c)) >> (global0[_wgslsmith_index_u32(global2.x, 6u)] % vec2<u32>(32u)), 28936, any(vec3<bool>(_wgslsmith_f_op_f32(abs(1018.0)) != _wgslsmith_f_op_f32(func_6(arg_0.a.wxz)), _wgslsmith_f_op_f32(f32(-1.0) * -1013.0) == _wgslsmith_f_op_f32(-429.0), any(vec4<bool>(arg_0.c, false, false, false)))));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.a.x, 32515u, global2.x, 1u) | ~vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, var_0.a.x)), ~((vec4<u32>(global2.x, 61091u, 50934u, global2.x) << (vec4<u32>(20077u, 4294967295u, global2.x, var_0.a.x) % vec4<u32>(32u))) >> (~vec4<u32>(var_0.a.x, 1u, var_0.a.x, global2.x) % vec4<u32>(32u)))), ~global2.x);
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_mult_i32(arg_0.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_0.x), firstLeadingBit(arg_0.yy)), u_input.a.x, u_input.a.x), -32603));
    switch (_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483648, 10094), arg_0.x, -arg_0.x)), u_input.a)) {
        case -1: {
            switch (~arg_0.x) {
                case 1: {
                }
                case -2147483648: {
                }
                default: {
                    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269.0 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1604.0 * 509.0)))))));
                    var var_2 = !(!vec3<bool>(false, any(!vec3<bool>(true, true, false)), !(!true)));
                    var var_3 = Struct_1(vec4<f32>(-834.0, var_1, var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949.0 - 1359.0) + var_1)))));
                    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.a.x)) + var_3.a.x), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(trunc(var_1)))));
                    return ~global2.x | (global2.x | global2.x);
                }
            }
        }
        case -11162: {
            var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(func_4(Struct_4(vec4<i32>(-28954, -42365, 38966, -1), vec4<f32>(-928.0, -662.0, -726.0, -1000.0), true, Struct_1(vec4<f32>(-1055.0, 1064.0, -854.0, 713.0)))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), global2.xy)) << (global2.x % 32u), reverseBits(select(1u << (~global2.x % 32u), 12440u, true)), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(0u, global2.x), global2.x >> (~global2.x % 32u)) ^ global2.x);
            for (var var_2 = (u_input.a.x & ~reverseBits(7)) & u_input.a.x; select(all(select(!(!vec2<bool>(true, false)), vec2<bool>(any(vec4<bool>(false, false, true, true)), true), select(!vec2<bool>(true, true), !vec2<bool>(true, false), vec2<bool>(false, true)))), !(((1u & global2.x) < select(global2.x, 1u, false)) || false), !all(!vec3<bool>(true, true, false)) != !all(!vec4<bool>(true, true, true, false))); var_2 += 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
        }
        case 45030: {
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_1 = ~(_wgslsmith_sub_vec2_i32(arg_0.xx, u_input.a) ^ (vec2<i32>(2147483647, var_0 << (17516u % 32u)) | vec2<i32>(arg_0.x, ~u_input.a.x)));
                var var_2 = min(firstTrailingBit(-max(vec3<i32>(arg_0.x, 10609, var_0), ~vec3<i32>(-1, 2147483647, -13714))), vec3<i32>(2147483647, -47481, var_1.x));
                continue;
            }
            global0 = array<vec2<u32>, 6>();
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                let var_1 = min(vec4<u32>(max(func_4(Struct_4(arg_0, vec4<f32>(-215.0, 1380.0, 1213.0, 809.0), false, Struct_1(vec4<f32>(2041.0, -1089.0, -1479.0, 1875.0)))).x, select(min(global2.x, 57056u), _wgslsmith_div_u32(global2.x, 0u), 1u >= global2.x)), global2.x, ~1u, ~(global2.x >> (0u % 32u))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(13804u, 1u, 1u, 0u), vec4<u32>(global2.x, 61527u, 91502u, 4294967295u)), abs(vec4<u32>(global2.x, 4294967295u, 6320u, 0u) ^ vec4<u32>(global2.x, 0u, global2.x, 0u)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), !vec4<bool>(false, false, false, false), false)) >> (firstLeadingBit(abs(reverseBits(vec4<u32>(4294967295u, global2.x, 0u, 1u)))) % vec4<u32>(32u)));
                global1 = arg_0.x;
            }
            global1 = -4960;
            var var_1 = Struct_5(-1230.0, vec3<u32>(global2.x, ~_wgslsmith_mod_u32(4294967295u, ~global2.x), firstLeadingBit(global2.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(213.0, -1696.0, -669.0))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1625.0, -611.0, -1993.0, 1321.0) - vec4<f32>(1362.0, 1032.0, 1227.0, 1000.0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(825.0, -343.0, 941.0, 1310.0)))))));
        }
        default: {
            for (var var_1 = -func_5(select(~vec3<u32>(global2.x, 1u, global2.x), max(~vec3<u32>(84060u, 4925u, 21602u), vec3<u32>(global2.x, 4294967295u, global2.x)), !true)); var_1 >= 0; var_1 -= 1) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            }
            var var_1 = reverseBits(~select(~vec3<u32>(global2.x, global2.x, 1u) ^ vec3<u32>(global2.x, global2.x, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, 19854u, global2.x) | vec3<u32>(4294967295u, global2.x, 11796u), vec3<u32>(16584u, global2.x, global2.x)), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, false))));
            return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x << (var_1.x % 32u), _wgslsmith_mult_u32(global2.x, 1u), 14775u, 11514u | 4294967295u), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_1.x, 40972u, 66502u, global2.x)), vec4<u32>(~1u, var_1.x, global2.x, global2.x ^ var_1.x), vec4<u32>(~global2.x, ~var_1.x, global2.x, global2.x))), global2.x);
        }
    }
    global1 = abs(u_input.a.x);
    global2 = firstTrailingBit(select(abs(~vec3<u32>(17890u, global2.x, 19385u)), ~abs(vec3<u32>(3364u, global2.x, global2.x)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), false), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(4294967295u <= 0u, !false, 466.0 == 976.0))));
    global1 = -2147483648;
    return reverseBits(_wgslsmith_clamp_u32(abs(~(~7872u)), min(_wgslsmith_add_u32(global2.x, global2.x) | ~10856u, global2.x), _wgslsmith_add_u32(global2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global2.x, 9474u, global2.x), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, 6930u), vec4<u32>(global2.x, 0u, 31866u, global2.x))))));
}

fn func_2() -> Struct_5 {
    global2 = firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(select(countOneBits(4294967295u), ~43595u, 61908u == global2.x), min(~global2.x, _wgslsmith_sub_u32(0u, global2.x))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~global2.x, ~4294967295u), reverseBits(_wgslsmith_div_u32(global2.x, 1u))), global2.x));
    global2 = abs((vec3<u32>(global2.x, global2.x, 652u | global2.x) << (~(~vec3<u32>(4294967295u, 20594u, global2.x)) % vec3<u32>(32u))) << ((~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global2.x, 1u), vec3<u32>(global2.x, 90498u, 4294967295u)) & ~(vec3<u32>(22451u, 4294967295u, 4294967295u) ^ vec3<u32>(53287u, global2.x, global2.x))) % vec3<u32>(32u)));
    global2 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, global2.x, 74660u), vec3<u32>(global2.x, global2.x, global2.x))), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(76895u, 7082u, global2.x)), vec3<u32>(16402u, _wgslsmith_add_u32(4294967295u, global2.x), 1u))), vec3<u32>(global2.x, _wgslsmith_dot_vec2_u32(global2.zy, vec2<u32>(firstLeadingBit(80057u), func_3(vec4<i32>(1, 1, -19052, 1)))), ((global2.x | 0u) >> (global2.x % 32u)) & (~global2.x | (0u >> (global2.x % 32u)))));
    switch (abs(-(~reverseBits(15177))) | -(~u_input.a.x)) {
        case -79422: {
            let var_0 = vec2<bool>((~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(1u, 6u)], global2.xy) ^ _wgslsmith_sub_u32(22466u, global2.x)) == _wgslsmith_add_u32(countOneBits(4294967295u), abs(global2.x)), all(vec3<bool>(!false, false & true, all(vec2<bool>(false, true)))) & !select(!true, false && false, !true));
            switch (firstLeadingBit(u_input.a.x)) {
                case 1: {
                    var var_1 = Struct_4(max(vec4<i32>(u_input.a.x, 3954, ~u_input.a.x, ~(-33247)) ^ _wgslsmith_div_vec4_i32(~vec4<i32>(-47924, u_input.a.x, 2147483647, -12759), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -28435, u_input.a.x), vec4<i32>(-8268, u_input.a.x, u_input.a.x, u_input.a.x))), max(select(vec4<i32>(2147483647, -1, u_input.a.x, 1), vec4<i32>(72476, -1, -1, u_input.a.x), vec4<bool>(var_0.x, false, var_0.x, true)) & abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -59665), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1000.0)), _wgslsmith_f_op_f32(floor(-1000.0)), _wgslsmith_f_op_f32(f32(-1.0) * -2400.0), -672.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(835.0, -238.0, 1385.0, -894.0), vec4<f32>(420.0, -3406.0, 640.0, -266.0), vec4<bool>(false, var_0.x, var_0.x, var_0.x))))))), any(vec2<bool>(-1000.0 >= 1807.0, var_0.x)) | false, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1644.0, -233.0, -511.0, -1591.0)))))));
                    global1 = _wgslsmith_div_i32(0, -u_input.a.x);
                    var var_2 = Struct_2(~global2.zz, 2147483647 | -1, var_1.c);
                    var_2 = Struct_2(global2.xx, _wgslsmith_dot_vec4_i32(var_1.a, ~(~(-vec4<i32>(u_input.a.x, -26835, 0, u_input.a.x)))), !(!(_wgslsmith_div_u32(global2.x, 59400u) != var_2.a.x)));
                    let var_3 = any(!select(vec4<bool>(-4615 >= var_1.a.x, var_0.x, !false, all(vec4<bool>(true, true, false, false))), !vec4<bool>(var_2.c, false, var_2.c, var_1.c), !select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.c, false, false, false), true)));
                }
                case 2147483647: {
                    global2 = ~(~(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, global2.x, 68392u), vec3<u32>(87676u, 24183u, 1u)), vec3<u32>(20315u, global2.x, global2.x), !vec3<bool>(var_0.x, var_0.x, true))));
                }
                default: {
                    let var_1 = vec3<f32>(-116.0, _wgslsmith_f_op_f32(floor(243.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1265.0 + -1000.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-141.0)) * _wgslsmith_f_op_f32(-619.0 - 1353.0))), -317.0)));
                }
            }
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_1 = select(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 53182u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(25399u, 1u), global2.zz, global0[_wgslsmith_index_u32(2314u, 6u)]) << (global0[_wgslsmith_index_u32(global2.x, 6u)] % vec2<u32>(32u))), ~(~(vec2<u32>(global2.x, global2.x) & firstTrailingBit(global0[_wgslsmith_index_u32(24747u, 6u)]))), all(select(vec3<bool>(true, var_0.x, all(vec2<bool>(var_0.x, var_0.x))), select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), var_0.x), true), !select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, true, true), false))));
                return Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(111.0 * _wgslsmith_f_op_f32(f32(-1.0) * -374.0)), -197.0, any(select(!vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(false, var_0.x, var_0.x, var_0.x))))), ~(~(~(vec3<u32>(var_1.x, var_1.x, var_1.x) ^ vec3<u32>(59257u, 4294967295u, var_1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(365.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -877.0)), 1106.0)), vec4<f32>(601.0, -144.0, -476.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-242.0 * -718.0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -284.0), 1029.0, var_0.x))))));
            }
        }
        case -1: {
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_0 = ~firstLeadingBit(~0u) << ((~global2.x & 92445u) % 32u);
                let var_1 = !select(!(!vec3<bool>(true, false, false)), !vec3<bool>(any(vec3<bool>(false, true, true)), 8996u > global2.x, any(vec4<bool>(false, false, false, false))), vec3<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false)), false, all(vec3<bool>(true, false, true))));
                break;
            }
            let var_0 = all(vec3<bool>(!true, !false, all(!vec2<bool>(false, true))));
            let var_1 = Struct_5(592.0, ~vec3<u32>(_wgslsmith_clamp_u32(global2.x, global2.x, ~global2.x), global2.x, 1u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(529.0, -841.0))), 1121.0, -1162.0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1210.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -429.0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(794.0 + -110.0), _wgslsmith_f_op_f32(-346.0 * -1218.0), true)), _wgslsmith_f_op_f32(618.0 - _wgslsmith_div_f32(1020.0, -2118.0))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000.0, -618.0, 343.0, -1400.0), vec4<f32>(-818.0, -1790.0, 375.0, 1042.0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1559.0, 130.0, 829.0, 1261.0) + vec4<f32>(-238.0, -455.0, -2101.0, 270.0)))))));
        }
        case 1: {
            switch (u_input.a.x) {
                default: {
                    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2160.0, -100.0, 106.0, 1177.0) + vec4<f32>(-243.0, -491.0, 427.0, 301.0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-390.0, _wgslsmith_div_f32(547.0, -758.0), _wgslsmith_f_op_f32(-1149.0 * 1470.0), _wgslsmith_f_op_f32(-300.0)))));
                    var var_1 = false;
                    let var_2 = select(25286u, global2.x, any(vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), true, !(!true))));
                }
            }
            var var_0 = Struct_4(vec4<i32>(24142, ~u_input.a.x, -2147483648, u_input.a.x) ^ min(_wgslsmith_div_vec4_i32(vec4<i32>(-1, u_input.a.x, 6087, u_input.a.x), vec4<i32>(-10210, -1065, 1, -31585)), vec4<i32>(-1224 << (global2.x % 32u), max(u_input.a.x, u_input.a.x), u_input.a.x ^ u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2872.0 - -743.0)), _wgslsmith_f_op_f32(max(655.0, -1129.0)), 264.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2016.0)) - _wgslsmith_f_op_f32(-1290.0 * 124.0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(627.0, -1092.0, 259.0, 1813.0))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(634.0, -2623.0, -464.0, 302.0))))), (firstLeadingBit(select(0u, 43880u, true)) ^ (countOneBits(global2.x) | min(global2.x, 37436u))) < 31097u, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(613.0, -1112.0, -328.0, -202.0)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1016.0, -1275.0, -413.0, 144.0)))))));
            var var_1 = ~(~_wgslsmith_dot_vec4_i32(firstLeadingBit(var_0.a & vec4<i32>(11747, var_0.a.x, 2147483647, 14191)), min(countOneBits(var_0.a), firstTrailingBit(var_0.a))));
            var var_2 = ~u_input.a;
            var_1 = ~u_input.a.x;
        }
        case -15008: {
            if (all(select(vec3<bool>(_wgslsmith_f_op_f32(floor(-1000.0)) > _wgslsmith_f_op_f32(step(1423.0, 610.0)), (u_input.a.x | -10800) <= _wgslsmith_clamp_i32(1, u_input.a.x, u_input.a.x), (0u == 1u) || all(vec2<bool>(true, true))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), !vec3<bool>(false, true, false)), false), !(!(941.0 <= 551.0))))) {
                global0 = array<vec2<u32>, 6>();
                var var_0 = Struct_2(global2.zx, i32(-1) * -u_input.a.x, !(abs(abs(global2.x)) != select(func_4(Struct_4(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(-739.0, -767.0, 345.0, -1000.0), false, Struct_1(vec4<f32>(-1297.0, 444.0, 419.0, -1084.0)))).x, ~41972u, all(vec2<bool>(false, true)))));
                var var_1 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000.0 * _wgslsmith_f_op_f32(ceil(-152.0))))))), ~(~(~(~vec3<u32>(global2.x, 19088u, 15284u)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(-184.0, _wgslsmith_div_f32(329.0, -511.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1463.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-433.0))), vec3<f32>(446.0, _wgslsmith_f_op_f32(func_6(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b, 1, -44128), vec3<i32>(u_input.a.x, u_input.a.x, var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -177.0))), !any(select(vec3<bool>(true, var_0.c, false), vec3<bool>(false, true, true), var_0.c)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-373.0, -895.0, 355.0, 1693.0))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(592.0, 938.0, 1000.0, -106.0))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(293.0, -572.0, 382.0, 183.0)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-195.0, _wgslsmith_f_op_f32(f32(-1.0) * -148.0), _wgslsmith_f_op_f32(687.0 * 964.0), _wgslsmith_f_op_f32(floor(-1000.0))) + vec4<f32>(_wgslsmith_f_op_f32(round(-590.0)), -1000.0, -939.0, _wgslsmith_f_op_f32(abs(1370.0))))));
            }
            if (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000.0 - -1177.0))))) >= _wgslsmith_f_op_f32(f32(-1.0) * -296.0)) {
                var var_0 = -1408.0;
                var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(829.0, -746.0)) * _wgslsmith_div_vec2_f32(vec2<f32>(-522.0, 178.0), vec2<f32>(-749.0, -893.0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1253.0, 1381.0))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-314.0, 1436.0))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -398.0), _wgslsmith_div_f32(-2618.0, 1837.0)))));
                let var_2 = 82699u;
                var var_3 = Struct_4(-_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(58856, u_input.a.x, -2147483648)), 0 | -2147483648, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1, -1, u_input.a.x)), _wgslsmith_mult_i32(13143, 2147483647)), select(-vec4<i32>(50290, u_input.a.x, u_input.a.x, -2147483648), select(vec4<i32>(2147483647, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647, u_input.a.x, u_input.a.x), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-1447.0), -1770.0, var_1.x), any(vec4<bool>(select(!false, true && false, false == false), true, all(vec2<bool>(true, true)), all(!vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -581.0, 213.0, 294.0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 844.0, 1047.0, var_1.x)))), !vec4<bool>(true, true, false, false)))));
                var_3 = Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, var_3.a.x, reverseBits(min(u_input.a.x, -17628)), 2147483647), -vec4<i32>(u_input.a.x, firstTrailingBit(var_3.a.x), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_3.a.x, var_3.a.x)), 1)), _wgslsmith_f_op_vec4_f32(var_3.d.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-1339.0 - -571.0), var_1.x, 176.0))), var_3.c, var_3.d);
            }
            if (!(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))) || select(true, !(false | (false | true)), select(-2147483648 > (i32(-1) * -1), !false, !(!false)))) {
                let var_0 = !(!vec2<bool>(!(global2.x < global2.x), -2147483648 != u_input.a.x));
            }
        }
        default: {
            global1 = 0;
            let var_0 = Struct_4(~(~vec4<i32>(u_input.a.x, -14403, u_input.a.x, u_input.a.x) & abs(select(vec4<i32>(-1139, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(0, u_input.a.x, -33193, 2147483647), false))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-452.0, 123.0), _wgslsmith_f_op_f32(exp2(975.0)), _wgslsmith_f_op_f32(-1078.0 * 2059.0), _wgslsmith_f_op_f32(f32(-1.0) * -376.0))))), !any(vec2<bool>(!false, true)), Struct_1(vec4<f32>(1144.0, -468.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(805.0 - -798.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1601.0 - -950.0)))));
            let var_1 = vec3<u32>(global2.x, global2.x, 916u);
            global0 = array<vec2<u32>, 6>();
        }
    }
    switch (_wgslsmith_div_i32(-7732 >> (global2.x % 32u), -27465)) {
        case -11318: {
            return Struct_5(-1199.0, vec3<u32>(global2.x, func_3(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a.x, -59686, u_input.a.x, 32580), vec4<i32>(u_input.a.x, 2147483647, -43472, -2147483648)), abs(vec4<i32>(u_input.a.x, u_input.a.x, -20916, -15240)))), max(global2.x, _wgslsmith_mod_u32(global2.x, ~global2.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -292.0) - -1352.0) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -538.0), _wgslsmith_f_op_f32(f32(-1.0) * -742.0)))), 1014.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-2433.0))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-341.0, -1000.0, -309.0, -2603.0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(877.0, 1247.0, 1099.0, 282.0) * vec4<f32>(-411.0, -577.0, -2465.0, 169.0))), vec4<bool>(all(vec3<bool>(true, true, true)), false, any(vec2<bool>(true, false)), true | true))))));
        }
        case -56618: {
            let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-746.0, -182.0, 351.0, -1228.0))))))));
            global1 = -2147483647;
            var var_1 = Struct_3(vec3<i32>(_wgslsmith_mult_i32(-4132, u_input.a.x), u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(1, ~u_input.a.x))), abs(u_input.a), false, ~firstTrailingBit(~(~u_input.a)), vec4<bool>(0u > (func_3(vec4<i32>(u_input.a.x, -2147483648, u_input.a.x, u_input.a.x)) >> (func_3(vec4<i32>(0, 19719, -2147483648, 2147483647)) % 32u)), ~global2.x >= global2.x, !true, !true));
        }
        default: {
            let var_0 = _wgslsmith_clamp_i32(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(func_5(vec3<u32>(29983u, global2.x, 4294967295u)), -24827, max(u_input.a.x, u_input.a.x), abs(0)), vec4<i32>(-1) * -_wgslsmith_mult_vec4_i32(vec4<i32>(46509, u_input.a.x, -1, -2147483648), vec4<i32>(u_input.a.x, 48152, u_input.a.x, u_input.a.x))));
            global2 = ~_wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(global2.x, 1u, global2.x)), select(vec3<u32>(_wgslsmith_sub_u32(global2.x, global2.x), ~25516u, ~global2.x), select(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, 57985u, global2.x), vec3<bool>(false, true, true)) & vec3<u32>(global2.x, global2.x, global2.x), 1348.0 >= _wgslsmith_f_op_f32(-239.0)));
            let var_1 = Struct_4(vec4<i32>(1 >> (80225u % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(reverseBits(0), _wgslsmith_dot_vec4_i32(vec4<i32>(1, u_input.a.x, -53192, u_input.a.x), vec4<i32>(u_input.a.x, 0, 37833, 2147483647))), var_0), u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1240.0, -479.0, 1000.0, -1303.0)))))), false, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2246.0, 1408.0, 1000.0, -2257.0) * vec4<f32>(-114.0, 1118.0, 912.0, -1326.0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(585.0, 197.0, 526.0, 1133.0))))));
        }
    }
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1168.0 + 356.0)), ~(~(~vec3<u32>(8678u, 0u, global2.x) >> (~vec3<u32>(global2.x, 27771u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1247.0, _wgslsmith_f_op_f32(sign(-156.0)), -1635.0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-777.0, -2373.0, 366.0)))), !vec3<bool>(true, -1299.0 < 606.0, u_input.a.x >= -6865))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -610.0)), 1705.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-450.0, -376.0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-360.0, _wgslsmith_f_op_f32(ceil(1000.0)), _wgslsmith_f_op_f32(680.0 * 572.0), 1268.0)), select(all(vec3<bool>(false, false, false)), true, true & false) && ((true & true) && any(vec3<bool>(true, false, true))))));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: bool, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-856.0 - 326.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -448.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1719.0)))) + vec4<f32>(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x * arg_1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1183.0 + 1867.0), _wgslsmith_f_op_f32(-500.0 * 1420.0)))));
    var var_1 = Struct_2(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.b.x, global2.x, 4294967295u, 21797u)), max(vec4<u32>(10995u, arg_1.b.x, 46729u, arg_1.b.x), vec4<u32>(global2.x, global2.x, 1u, 69670u))), 0u), ~147939u), i32(-1) * -18819, true);
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_2 = abs(select(arg_1.b, arg_1.b | ~(~vec3<u32>(var_1.a.x, 16253u, 1u)), !select(select(vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(var_1.c, var_1.c, var_1.c), true), vec3<bool>(arg_2, var_1.c, true), arg_2)));
        let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0.x, var_0.a.x), _wgslsmith_f_op_f32(ceil(var_0.a.x)), 252.0, _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(func_2().d)), var_0.a), !false)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.c.x, -2608.0, arg_1.d.x, 936.0), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(343.0, var_0.a.x, arg_0.x, 287.0)))))), false))));
    }
    let var_2 = select(!(!vec2<bool>(select(arg_2, var_1.c, var_1.c), false)), vec2<bool>(any(!vec4<bool>(arg_2, true, var_1.c, true)) & (arg_1.b.x < select(1u, arg_1.b.x, false)), false), u_input.a.x < -1);
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
    }
    return vec2<u32>(27607u, _wgslsmith_div_u32(global2.x, var_1.a.x));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = min(vec2<u32>(1u, 44676u), _wgslsmith_clamp_vec2_u32(vec2<u32>(13150u, reverseBits(global2.x)), ~func_7(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_1.b.x, 443.0, -241.0) + arg_1.d.a), func_2(), arg_0, ~vec3<i32>(u_input.a.x, u_input.a.x, -2147483648)), select(vec2<u32>(0u & 1u, 1u), select(~vec2<u32>(global2.x, global2.x), vec2<u32>(global2.x, 32027u), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0))), select(!vec2<bool>(arg_1.c, false), vec2<bool>(false, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), false)))));
    return arg_1.d;
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> f32 {
    global1 = arg_2;
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -423.0)), vec3<u32>(~global2.x, global2.x, ~22709u), arg_0.a.zzz, _wgslsmith_f_op_vec4_f32(-arg_0.a));
    for (var var_1: i32; var_1 >= -2814; var_1 -= 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
    }
    if (!true) {
    }
    for (var var_1 = 2147483647; var_1 == -1; global2 = ~countOneBits(var_0.b)) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_2 = vec4<u32>(_wgslsmith_mod_u32(0u, global2.x), firstLeadingBit(~select(~0u, 0u << (global2.x % 32u), any(vec4<bool>(true, true, false, arg_1)))), global2.x, ~(~global2.x));
        var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(arg_2 ^ u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, arg_2) & vec2<i32>(-11066, 2147483647), u_input.a), 13483), select(~vec3<i32>(u_input.a.x, u_input.a.x, arg_2), ~(-vec3<i32>(u_input.a.x, 1, arg_2)), !(!false))), -vec3<i32>(reverseBits(-32715), firstTrailingBit(u_input.a.x), u_input.a.x ^ 1) & -countOneBits(firstLeadingBit(vec3<i32>(arg_2, u_input.a.x, arg_2))));
        break;
    }
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(379.0, _wgslsmith_f_op_f32(func_6(vec3<i32>(arg_2, u_input.a.x, arg_2)))))) - func_2().d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(abs(~vec3<u32>(global2.x, 42990u, global2.x))) & vec3<u32>(global2.x, _wgslsmith_sub_u32(abs(global2.x), ~(~global2.x)), countOneBits(~(global2.x >> (0u % 32u))));
    global2 = vec3<u32>(80859u, var_0.x, ~(firstTrailingBit(global2.x) & 36267u) << (select(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 46555u, global2.x), ~vec4<u32>(16737u, global2.x, 19801u, 0u)), 4294967295u, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false))) % 32u));
    global0 = array<vec2<u32>, 6>();
    switch (abs(~((i32(-1) * -u_input.a.x) & 0))) {
        case -2147483648: {
            global2 = vec3<u32>(18330u, 1u, 4294967295u);
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(520.0, -333.0, _wgslsmith_div_f32(-367.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-906.0 * -913.0), _wgslsmith_f_op_f32(-137.0), false & false))), _wgslsmith_f_op_f32(floor(-190.0))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-638.0, _wgslsmith_f_op_f32(-754.0), 462.0, _wgslsmith_f_op_f32(func_8(func_1(true, Struct_4(vec4<i32>(11196, u_input.a.x, 64370, u_input.a.x), vec4<f32>(1000.0, -540.0, -213.0, -640.0), false, Struct_1(vec4<f32>(-272.0, -918.0, -299.0, 865.0)))), any(vec2<bool>(false, true)), u_input.a.x))))));
                let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(520.0, var_1.x, -1556.0, var_1.x)), vec4<f32>(-351.0, var_1.x, 775.0, var_1.x), vec4<bool>(false, true, false, true))))));
                continue;
            }
            let var_1 = 22422u << (~var_0.x % 32u);
        }
        case 9278: {
            var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_8(func_1(true & false, Struct_4(vec4<i32>(u_input.a.x, 17764, u_input.a.x, u_input.a.x), vec4<f32>(382.0, 737.0, -952.0, -1204.0), true, Struct_1(vec4<f32>(732.0, -1223.0, -1831.0, 285.0)))), 38118u > _wgslsmith_sub_u32(31816u, var_0.x), ~_wgslsmith_mod_i32(13571, u_input.a.x)))), ~max(var_0, vec3<u32>(81134u, ~4294967295u, ~global2.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-122.0, -931.0, -814.0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1012.0, -373.0, -144.0), vec3<f32>(1317.0, 905.0, 760.0), vec3<bool>(true, false, true))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-714.0, 434.0, 1000.0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(848.0, 1013.0, -685.0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1198.0, 2047.0, 308.0, -854.0))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1039.0, 1000.0, 864.0, -185.0))))));
            let var_2 = all(!select(!vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), !false)) && false;
            global0 = array<vec2<u32>, 6>();
            var var_3 = _wgslsmith_f_op_f32(-var_1.d.x);
            let var_4 = -9675;
        }
        case 20334: {
            for (var var_1 = u_input.a.x; var_1 > 14782; var_1 = -(~u_input.a.x)) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                global2 = firstTrailingBit(var_0);
                var var_2 = Struct_3(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(-66473, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 0, -2147483648))), -firstLeadingBit(~(u_input.a ^ vec2<i32>(u_input.a.x, u_input.a.x))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), !vec2<bool>(true, false), false)) & any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, false), !vec3<bool>(false, true, true))), u_input.a, vec4<bool>(any(vec2<bool>(any(vec4<bool>(true, false, true, true)), false)), !(!all(vec2<bool>(false, false))), !(!any(vec4<bool>(false, false, false, true))), !true));
                global2 = var_0;
                let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(~47495u, countOneBits(_wgslsmith_sub_u32(abs(global2.x), var_0.x))), global2.xz);
            }
            global0 = array<vec2<u32>, 6>();
            global1 = u_input.a.x;
            var var_1 = func_2();
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                global2 = min(select(~_wgslsmith_add_vec3_u32(vec3<u32>(27687u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), countOneBits(var_0), !(false && false)), vec3<u32>(~(~global2.x), _wgslsmith_mult_u32(var_1.b.x & 78798u, var_0.x), abs(var_1.b.x))) << (~vec3<u32>(~(~56678u), var_1.b.x, 1u) % vec3<u32>(32u));
                global1 = reverseBits(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, 48718, max(13569, max(u_input.a.x, 1))), -((-32779 | u_input.a.x) >> (abs(var_1.b.x) % 32u)), 4191));
                continue;
            }
        }
        default: {
            if (any(select(vec3<bool>(!true, any(vec4<bool>(false, false, true, true)) | (false | false), all(vec2<bool>(false, false))), vec3<bool>(!(-1 != u_input.a.x), any(!vec2<bool>(false, true)), !(!false)), any(vec3<bool>(!true, true & false, true))))) {
                global0 = array<vec2<u32>, 6>();
                global0 = array<vec2<u32>, 6>();
                global0 = array<vec2<u32>, 6>();
                var var_1 = Struct_3(vec3<i32>(countOneBits(-reverseBits(u_input.a.x)), -_wgslsmith_dot_vec2_i32(abs(u_input.a), u_input.a | u_input.a), -(~_wgslsmith_sub_i32(u_input.a.x, -8179))), _wgslsmith_add_vec2_i32(u_input.a, ~u_input.a), all(select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), !(!vec3<bool>(false, true, false)))), ~_wgslsmith_sub_vec2_i32(u_input.a | firstTrailingBit(u_input.a), vec2<i32>(~1, 1)), select(vec4<bool>(!true, any(!vec2<bool>(true, true)), false, (22618u >> (13715u % 32u)) < 76566u), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), !vec4<bool>(true, false, false, false), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), all(!vec2<bool>(true, true)), true, true)));
                let var_2 = u_input.a.x;
            }
            var var_1 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-863.0))), max(var_0, var_0), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -986.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(-588.0)), 951.0, -19655 >= -2147483648))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-2238.0 + -1505.0), _wgslsmith_f_op_f32(select(-389.0, -2014.0, false)), 1000.0, _wgslsmith_f_op_f32(exp2(-1832.0))))))));
        }
    }
    var var_1 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x ^ u_input.a.x, u_input.a.x) ^ _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mod_i32(-39179, u_input.a.x), 11788), u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(select(u_input.a.x, 0, true), u_input.a.x, u_input.a.x, u_input.a.x), select(abs(vec4<i32>(u_input.a.x, 1, 1, u_input.a.x)), firstTrailingBit(vec4<i32>(2147483647, u_input.a.x, u_input.a.x, u_input.a.x)), 18918 > -12091))), !false, -vec2<i32>(2147483647, u_input.a.x), !(!(!vec4<bool>(true, true, true, false))));
    global1 = -10207 >> (var_0.x % 32u);
    if (!(!(!(!var_1.c) || var_1.e.x))) {
        var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1415.0, 1062.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211.0 * 782.0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-455.0, 643.0, -1841.0)), func_2().c, true)))));
        global0 = array<vec2<u32>, 6>();
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            global2 = vec3<u32>(global2.x, ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, 1u, 0u, 8198u), vec4<u32>(4294967295u, 6220u, 3945u, var_0.x) >> (vec4<u32>(var_0.x, var_0.x, 0u, 84916u) % vec4<u32>(32u)))), _wgslsmith_sub_u32(~1u, ~min(var_0.x, 47609u)));
            let var_3 = any(select(vec3<bool>(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)) == _wgslsmith_f_op_f32(select(var_2.x, 1003.0, var_1.c)), all(select(var_1.e, vec4<bool>(var_1.c, var_1.e.x, true, false), vec4<bool>(var_1.e.x, false, var_1.c, var_1.e.x))), all(select(vec4<bool>(var_1.c, true, var_1.c, true), var_1.e, var_1.e))), var_1.e.yzw, _wgslsmith_div_i32(u_input.a.x, countOneBits(0)) >= _wgslsmith_sub_i32(-2147483648, min(var_1.d.x, u_input.a.x))));
            var var_4 = func_2();
        }
        return;
    }
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, -var_1.d, _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 48801, u_input.a.x, u_input.a.x), vec4<i32>(var_1.d.x, 0, u_input.a.x, var_1.a.x)) << (~global2.x % 32u), u_input.a.x), _wgslsmith_dot_vec2_u32(max(~global2.zz, reverseBits(vec2<u32>(4294967295u, var_0.x))), global2.zz), vec3<f32>(_wgslsmith_f_op_f32(func_6(vec3<i32>(-25213, -var_1.d.x, -25489))), 1000.0, -472.0));
}

