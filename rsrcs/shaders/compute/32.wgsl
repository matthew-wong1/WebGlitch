// {"0:0":[53,64,74,92,27,167,191,143,134,6,95,37,227,253,163,167,54,96,206,243,199,186,27,84,99,24,128,16,25,143,143,74,216,68,185,64,177,252,204,208,242,16,0,231,41,49,96,84,80,173,233,135,138,238,215,128,188,180,134,52,246,171,53,185]}
// Seed: 7502438322907349072

struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4;

var<private> LOOP_COUNTERS: array<u32, 25>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn func_6() -> u32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        break;
    }
    var var_0 = ~select(select(u_input.e, vec4<u32>(u_input.e.x, 67446u, global0.b, u_input.b.x) | vec4<u32>(1u, u_input.a, 1u, global0.a.x), select(global1.b.c, vec4<bool>(global0.c.c.x, global1.b.c.x, global0.c.c.x, true), vec4<bool>(false, true, false, global0.c.c.x))) | (~u_input.b & ~u_input.e), select(vec4<u32>(global0.b, min(global0.a.x, 0u), 1u << (56780u % 32u), u_input.a & 822u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u) << (vec4<u32>(global0.a.x, global0.b, u_input.c, u_input.d) % vec4<u32>(32u)), ~vec4<u32>(0u, 1u, u_input.c, 4294967295u)), !global1.b.c), !any(vec3<bool>(false, true, global1.b.e)) && any(select(vec4<bool>(false, global1.b.e, true, true), vec4<bool>(true, global0.c.e, true, false), false)));
    var var_1 = 1u;
    var var_2 = 1516.0;
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        switch (-abs(-1)) {
            case -62400: {
                global1 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(global0.c.d.wx)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.x + 757.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a - global1.b.a)))), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-global1.c.x)), select(select(global1.b.c, global0.c.c, !false), select(vec4<bool>(true, global0.c.e, false, global0.c.e), !vec4<bool>(false, global1.b.e, global1.b.c.x, global1.b.c.x), global1.b.c), true), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.b), _wgslsmith_f_op_f32(global1.b.b * _wgslsmith_f_op_f32(-458.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b) - global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -226.0) * 839.0) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1890.0)))), global1.c, global1.d);
                break;
            }
            case -13786: {
                let var_3 = select(u_input.e ^ u_input.b, vec4<u32>(_wgslsmith_dot_vec2_u32(~var_0.yz, var_0.wz) << (59091u % 32u), 55926u, 1u, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.x, 4294967295u), 0u)), false);
            }
            case 18583: {
                var var_3 = Struct_1(_wgslsmith_div_f32(344.0, _wgslsmith_div_f32(571.0, _wgslsmith_f_op_f32(f32(-1.0) * -2092.0))), -417.0, global1.b.c, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.c.d.x, 1184.0), -1517.0)))), 1072.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -550.0))), _wgslsmith_f_op_f32(trunc(-2272.0))), true);
                var_1 = ~u_input.b.x;
                var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(356.0)), _wgslsmith_f_op_f32(-global1.a.x));
                var_3 = global0.c;
            }
            case -21616: {
                var var_3 = ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(20830u, 43276u, 4294967295u), u_input.e.wzz), u_input.b.zzw), var_0.x, ~(~0u)), _wgslsmith_dot_vec2_u32(~(~global0.a.xy), global0.a.xx), ~countOneBits(~var_0.x), 16573u);
                var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)) + vec3<f32>(_wgslsmith_f_op_f32(-835.0 * 879.0), 1000.0, -602.0)))));
                continue;
            }
            default: {
                global1 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.c.x, 1296.0))), Struct_1(-945.0, global0.c.d.x, select(vec4<bool>(true, global0.c.c.x | true, global0.c.c.x, true), vec4<bool>(true, global0.c.c.x, global0.c.e, false), global1.b.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.b.d, global0.c.d, global0.c.c)) - global0.c.d) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(global1.b.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1208.0, 910.0, 1000.0, 3210.0) * global1.b.d)))), !(any(vec4<bool>(false, true, global0.c.c.x, true)) & (global0.c.e || true))), global0.c.d.zyw, global1.d);
                global1 = Struct_4(global1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394.0 - _wgslsmith_f_op_f32(f32(-1.0) * -1441.0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a * 273.0) - _wgslsmith_f_op_f32(-1428.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a + global1.b.b)))), !global1.b.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.d.x * -628.0)), global0.c.d.x, 557.0, _wgslsmith_f_op_f32(exp2(476.0))), true), global1.c, _wgslsmith_sub_vec3_i32(-countOneBits(vec3<i32>(40471, global0.d.x, global1.d.x)), global1.d));
                global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 593.0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.c.a, 114.0)))))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -244.0))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(640.0, global0.c.d.x), _wgslsmith_f_op_f32(-399.0), !global0.c.c.x)), 685.0)), !(!vec4<bool>(false, global1.b.c.x, global1.b.e, global0.c.e)), vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(exp2(global1.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c.b))), _wgslsmith_f_op_f32(-global0.c.a)), !all(vec2<bool>(global0.c.c.x, true))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1488.0, 1388.0, global1.b.d.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -593.0, global1.a.x)))), _wgslsmith_f_op_vec3_f32(-global0.c.d.wyx))), -vec3<i32>(1, -30625, 48287));
            }
        }
        let var_3 = Struct_3(_wgslsmith_div_u32(var_0.x, ~firstLeadingBit(var_0.x)), global0.a);
    }
    return global0.a.x;
}

fn func_5() -> Struct_2 {
    var var_0 = func_6();
    var var_1 = true;
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    switch (global0.d.x) {
        case 1: {
            global1 = Struct_4(global1.b.d.ww, global0.c, global1.c, global0.d);
            let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(global1.c.x)), 135.0, !(!global0.c.c), _wgslsmith_f_op_vec4_f32(global0.c.d - vec4<f32>(414.0, -1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -2052.0)), _wgslsmith_f_op_f32(f32(-1.0) * -134.0))), !(!global1.b.c.x) && true);
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var var_3 = all(!(!vec4<bool>(!false, select(var_2.c.x, global1.b.e, false), global0.c.c.x, any(vec4<bool>(global1.b.c.x, global0.c.c.x, global0.c.e, global0.c.c.x)))));
                var var_4 = var_2.a;
                var_0 = u_input.c;
                global1 = Struct_4(var_2.d.yy, global1.b, vec3<f32>(926.0, global1.b.b, var_2.a), ~vec3<i32>(global0.d.x, ~(-2147483648), -25307));
                continue;
            }
            let var_3 = Struct_3(_wgslsmith_mod_u32(abs(abs(~1535u)), max(~53056u ^ u_input.e.x, ~(~u_input.e.x))), firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.b, 298u, u_input.b.x), min(u_input.e.xzw, u_input.e.www)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.b, u_input.c) | u_input.e.yww, ~global0.a))));
        }
        case -18600: {
            var var_2 = Struct_2(_wgslsmith_mod_vec3_u32(global0.a, global0.a), 30363u, global0.c, global1.d);
            var var_3 = u_input.e;
            var var_4 = _wgslsmith_div_u32(~u_input.d, ~(~_wgslsmith_mod_u32(~u_input.a, ~var_2.b)));
        }
        case 3824: {
            var_1 = !(!global0.c.c.x);
            let var_2 = _wgslsmith_mod_u32(0u, ~countOneBits(~41968u)) == global0.a.x;
            var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-444.0, _wgslsmith_f_op_f32(-global0.c.d.x), global1.a.x)))));
            let var_4 = global0.d.zz;
        }
        case 2147483647: {
            var var_2 = false;
            switch (4882) {
                case 6437: {
                    let var_3 = ~vec2<u32>(1u, u_input.a);
                    var_1 = any(vec2<bool>(any(select(!vec3<bool>(global0.c.e, global1.b.e, true), global0.c.c.wyw, global1.b.c.x)), global0.c.c.x));
                    global0 = Struct_2(global0.a, firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.a.x << (27940u % 32u), ~12983u), countOneBits(_wgslsmith_mult_u32(1u, u_input.e.x)))), global1.b, abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(global0.d.x, 1, global0.d.x), ~global0.d)));
                    var var_4 = _wgslsmith_f_op_f32(global1.b.a + 338.0);
                }
                case 9415: {
                    var_2 = false;
                    var_1 = !any(!vec2<bool>(false, global1.b.e)) & global1.b.c.x;
                    let var_3 = vec4<u32>(4294967295u ^ ~u_input.b.x, 38378u, 4294967295u, ~_wgslsmith_clamp_u32(25342u, u_input.a, ~(~global0.b)));
                    var_0 = ~(~1u << ((~_wgslsmith_mult_u32(0u, 0u) ^ 104749u) % 32u));
                    let var_4 = !global0.c.c.zz;
                }
                case 0: {
                    var var_3 = _wgslsmith_f_op_f32(-global0.c.d.x);
                }
                case -21871: {
                    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1600.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1702.0 + 1000.0) - _wgslsmith_f_op_f32(-global0.c.d.x))))));
                    global0 = Struct_2(~(~abs(min(vec3<u32>(u_input.c, global0.a.x, global0.b), u_input.e.wwz))), select(global0.b ^ u_input.e.x, u_input.a, global0.c.c.x), global1.b, global0.d << (abs(u_input.e.zyx) % vec3<u32>(32u)));
                }
                default: {
                    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, global1.a.x) + -833.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.b)) + _wgslsmith_f_op_f32(global0.c.b * 1090.0))))) * -1746.0);
                    var var_4 = Struct_3(~(~(~func_6())), u_input.e.wyx);
                }
            }
        }
        default: {
            for (var var_2 = 25421; var_2 > 1; ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
        }
    }
    var var_2 = !true;
    return Struct_2((_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global0.a, u_input.e.xww), ~u_input.e.xzz) ^ ~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x)) & global0.a, u_input.a, global0.c, -vec3<i32>(max(abs(global1.d.x), _wgslsmith_add_i32(global1.d.x, 0)), -2147483648, -global1.d.x));
}

fn func_4() -> vec2<i32> {
    global0 = func_5();
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -628.0), 2029.0))), _wgslsmith_f_op_vec2_f32(select(func_5().c.d.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a, global0.c.a))), vec2<bool>(true, !false))))), func_5().c, _wgslsmith_f_op_vec3_f32(ceil(global0.c.d.zxz)), global1.d);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-914.0) * _wgslsmith_f_op_f32(global1.b.b * -793.0)), false)), _wgslsmith_f_op_f32(-global0.c.b)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-161.0, _wgslsmith_f_op_f32(step(263.0, global1.c.x))) - -151.0), 1000.0);
    switch (func_5().d.x) {
        case -14326: {
            global0 = Struct_2(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x, u_input.e.x), global0.a.zx), reverseBits(50221u)), ~44028u, func_5().c, vec3<i32>(global1.d.x, global0.d.x, global0.d.x & abs(i32(-1) * -4575)));
            global0 = Struct_2(firstTrailingBit(~reverseBits(u_input.b.wyw)), ~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(u_input.e.x, u_input.d), select(18809u, 14230u, global1.b.c.x)) >> (34443u % 32u), global0.c, -(reverseBits(select(global0.d, global1.d, false)) & (firstTrailingBit(global1.d) ^ abs(vec3<i32>(-7196, global1.d.x, 8900)))));
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_1 = ~(~vec3<u32>(global0.b, max(u_input.c, 0u) | _wgslsmith_clamp_u32(global0.a.x, 56278u, global0.b), global0.a.x));
                let var_2 = global0.c.b;
                global1 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(global0.c.d.wz)), Struct_1(global1.a.x, -979.0, global1.b.c, global0.c.d, _wgslsmith_f_op_f32(exp2(-251.0)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a.x)) * 512.0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.d.xyy) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a, 1000.0, 677.0)), vec3<f32>(global1.a.x, global0.c.d.x, global1.b.b))))), abs(vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(2147483647), global1.d.x), ~min(global0.d.x, -42816), func_5().d.x & _wgslsmith_sub_i32(1, global1.d.x))));
            }
            global0 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e, u_input.b), u_input.b), _wgslsmith_sub_u32(global0.b & u_input.d, u_input.a), ~global0.a.x) << (vec3<u32>(func_5().b, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(global0.b, 6199u)), ~_wgslsmith_mod_u32(u_input.a, 16111u)) % vec3<u32>(32u)), 1u, global0.c, abs(vec3<i32>(-15720, -global1.d.x, _wgslsmith_mult_i32(global1.d.x, -52614)) ^ -global1.d));
        }
        case -2147483648: {
            var var_1 = global1.b;
        }
        default: {
            if (all(func_5().c.c.wz)) {
                var var_1 = global1.a;
                var_1 = vec2<f32>(_wgslsmith_div_f32(func_5().c.d.x, _wgslsmith_f_op_f32(f32(-1.0) * -609.0)), global1.c.x);
                global0 = func_5();
                let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.b.d, vec4<f32>(global0.c.d.x, _wgslsmith_f_op_f32(-454.0), _wgslsmith_f_op_f32(select(global0.c.d.x, global0.c.a, false)), global1.a.x))));
                var_1 = _wgslsmith_div_vec2_f32(func_5().c.d.yx, global0.c.d.xw);
            }
            global0 = Struct_2(vec3<u32>(select(_wgslsmith_mult_u32(~50598u, 64426u), 7705u, 7885u < u_input.c), ~_wgslsmith_sub_u32(~39516u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e.x), vec2<u32>(u_input.b.x, 13465u))), global0.b), 42894u, global1.b, _wgslsmith_clamp_vec3_i32(global1.d, vec3<i32>(func_5().d.x, 17967, _wgslsmith_div_i32(-2147483648, 1)), ~select(global0.d, vec3<i32>(global0.d.x, global0.d.x, global1.d.x), global0.c.c.x)) & min(~(-global0.d), ~global1.d));
            var var_1 = global0.c;
            var var_2 = (abs(min(_wgslsmith_sub_vec4_u32(vec4<u32>(22620u, global0.a.x, 28622u, 4294967295u), u_input.e), countOneBits(u_input.e))) | ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(global0.b, 110160u, 6205u, 1u)), u_input.b >> (vec4<u32>(29541u, u_input.b.x, u_input.e.x, 1u) % vec4<u32>(32u)))) << (~(~vec4<u32>(17393u, _wgslsmith_sub_u32(0u, 33633u), abs(1u), 0u)) % vec4<u32>(32u));
            var var_3 = func_5().c.c.yw;
        }
    }
    switch (global0.d.x) {
        case -19082: {
            let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.c.a))));
            let var_2 = ~func_5().b;
            if (~(u_input.e.x >> (firstTrailingBit(13120u) % 32u)) >= u_input.e.x) {
                return vec2<i32>(global1.d.x, -(i32(-1) * -(global1.d.x & 1)));
            }
        }
        case 0: {
            let var_1 = ~2411u;
        }
        default: {
        }
    }
    return global1.d.zz;
}

fn func_7(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    for (var var_0 = _wgslsmith_add_i32(-20576, _wgslsmith_dot_vec4_i32(vec4<i32>(-1) * -vec4<i32>(global1.d.x, global1.d.x, global0.d.x, 1), vec4<i32>(abs(-73805) | firstLeadingBit(7574), countOneBits(arg_2.x), arg_0.x, -countOneBits(global0.d.x)))); ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        let var_1 = 39145u;
        let var_2 = Struct_3(_wgslsmith_add_u32(global0.a.x, 0u), ~(~(~(~u_input.e.yzz))));
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            return u_input.a;
        }
        break;
    }
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c.a, global0.c.b, global1.b.d.x))) + _wgslsmith_f_op_vec3_f32(-global1.b.d.xyy)))) * _wgslsmith_f_op_vec3_f32(trunc(global0.c.d.ywz))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(global0.c.d.zwx));
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        let var_1 = _wgslsmith_f_op_f32(step(global1.a.x, var_0.x));
        let var_2 = !true != !func_5().c.e;
        break;
    }
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-235.0 + var_0.x) * _wgslsmith_div_f32(290.0, -1000.0))), global1.c.x, !(!global0.c.c), global1.b.d, global0.c.c.x);
    return 1338u;
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> bool {
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        var var_0 = Struct_2(arg_0.b, _wgslsmith_div_u32(_wgslsmith_mod_u32(reverseBits(3002u) ^ (global0.a.x | 4294967295u), 20722u), 4294967295u), global1.b, ~_wgslsmith_add_vec3_i32(-(~vec3<i32>(9611, arg_2.x, 14715)), ~global0.d & vec3<i32>(arg_2.x, global0.d.x, -27160)));
        if (~func_7(select(~vec2<i32>(0, 70760), _wgslsmith_div_vec2_i32(vec2<i32>(-21615, -65999), global1.d.zz), !vec2<bool>(global0.c.c.x, arg_1)), _wgslsmith_add_u32(1u, ~3740u), func_4()) >= ~u_input.d) {
        }
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
    }
    for (var var_0 = 0; ; var_0 -= 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
    }
    global1 = Struct_4(vec2<f32>(global1.a.x, -1414.0), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(global1.c, vec3<f32>(global0.c.d.x, 1548.0, 676.0), !false)), _wgslsmith_div_vec3_f32(vec3<f32>(-830.0, global0.c.d.x, 358.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2131.0, global1.b.a, -1903.0)))))), -vec3<i32>(reverseBits(arg_2.x), -33810, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.x, global0.d.x, arg_2.x), global0.d)) ^ -global1.d);
    var var_0 = -2147483648;
    return abs(~(~1u)) <= (82233u | ~global0.b);
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = global0.c.b;
    let var_1 = ~arg_2.x;
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        global0 = Struct_2(~(~vec3<u32>(_wgslsmith_add_u32(arg_3.b.x, 54627u), _wgslsmith_sub_u32(0u, global0.a.x), _wgslsmith_div_u32(u_input.d, u_input.d))), ~(~(~0u)), arg_0, arg_2 & ~(vec3<i32>(-2147483648, 0, 63114) << (min(vec3<u32>(4294967295u, u_input.d, 0u), vec3<u32>(10665u, global0.b, 0u)) % vec3<u32>(32u))));
        break;
    }
    switch (18423) {
        default: {
            var var_2 = global0.d.yx;
            global1 = Struct_4(vec2<f32>(_wgslsmith_div_f32(1520.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-983.0) + 1048.0)), _wgslsmith_f_op_f32(abs(global1.b.d.x))), func_5().c, arg_0.d.zzx, _wgslsmith_mult_vec3_i32(~vec3<i32>(global0.d.x, global1.d.x, var_2.x), vec3<i32>(var_1, func_4().x, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.x, -2147483648), -vec2<i32>(arg_2.x, var_2.x)))));
            let var_3 = arg_0.a;
        }
    }
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.a))), global0.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + 914.0)), 214.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1315.0, global0.c.b))))), ~vec3<i32>(firstLeadingBit(-2147483648), firstTrailingBit(~global1.d.x), -(i32(-1) * -2147483648)));
    return select(vec4<bool>(any(vec3<bool>(any(vec2<bool>(global0.c.c.x, false)), arg_1, arg_0.c.x)), !select(true, global0.c.e, arg_0.e), true, any(global0.c.c.zy)), global1.b.c, select(vec4<bool>(global0.c.e, global0.c.c.x, false, false), arg_0.c, !select(vec4<bool>(global0.c.c.x, global0.c.e, true, false), global1.b.c, !true)));
}

fn func_2() -> Struct_2 {
    for (; global1.b.c.x; ) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
    }
    let var_0 = global1.b;
    switch (-2147483648) {
        case 1: {
            switch (~(-14310)) {
                case -12249: {
                    let var_1 = func_8(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -744.0), _wgslsmith_f_op_f32(1000.0 - var_0.a)))), _wgslsmith_f_op_f32(ceil(var_0.d.x)), !vec4<bool>(global0.c.c.x, func_3(Struct_3(69602u, global0.a), true, global0.d.zy, -1258.0), !var_0.e, true), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.b)))), -503.0, func_5().c.b), true), global1.b.e, -firstTrailingBit(global0.d), Struct_3(u_input.a, u_input.b.www & ~_wgslsmith_mod_vec3_u32(global0.a, global0.a)));
                    var var_2 = abs(u_input.b);
                    var_2 = u_input.b;
                    var var_3 = u_input.e;
                    var_3 = vec4<u32>(global0.b | global0.b, var_2.x, firstLeadingBit(reverseBits(_wgslsmith_add_u32(~59857u, ~4294967295u))), 1u);
                }
                default: {
                    return Struct_2(_wgslsmith_clamp_vec3_u32(select(abs(vec3<u32>(global0.b, 17153u, 0u)), ~global0.a >> (~vec3<u32>(56030u, u_input.c, 28504u) % vec3<u32>(32u)), all(global1.b.c.zxz)), _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.e.yxy), global0.a), ~select(_wgslsmith_add_vec3_u32(vec3<u32>(6272u, global0.b, 13948u), u_input.e.xyw), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.a.x, u_input.a), vec3<u32>(u_input.e.x, 4294967295u, global0.b)), global1.b.e)), _wgslsmith_mod_u32(1u, 4294967295u), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -510.0), _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(-828.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 120.0) - _wgslsmith_f_op_f32(var_0.d.x + 1512.0))), !(!vec4<bool>(false, var_0.c.x, true, true)), global0.c.d, global0.c.e), min(~vec3<i32>(global0.d.x, -9224, ~global1.d.x), abs(-(vec3<i32>(-2147483648, -46666, -10872) & global1.d))));
                }
            }
            global1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-254.0, var_0.a), 1218.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-223.0), _wgslsmith_div_f32(global0.c.d.x, _wgslsmith_div_f32(global0.c.a, global1.a.x)))), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(178.0, _wgslsmith_f_op_f32(215.0 * var_0.b), _wgslsmith_f_op_f32(-269.0)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.d.xzx, vec3<f32>(global0.c.b, 125.0, -1960.0))) + vec3<f32>(1052.0, -1000.0, var_0.b)))), _wgslsmith_div_vec3_i32(min(vec3<i32>(_wgslsmith_mod_i32(-1, 0), global1.d.x ^ global1.d.x, global1.d.x), global0.d), vec3<i32>(32916, countOneBits(~1), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global1.d, global1.d), -vec3<i32>(global0.d.x, 15562, -27388)))));
            global0 = func_5();
        }
        case -48284: {
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                global1 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(270.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -669.0) + _wgslsmith_f_op_f32(-global0.c.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.d.xz)))), Struct_1(-1067.0, _wgslsmith_f_op_f32(global1.b.d.x + var_0.d.x), global1.b.c, _wgslsmith_f_op_vec4_f32(select(global0.c.d, _wgslsmith_f_op_vec4_f32(-global0.c.d), false)), any(vec2<bool>(!true, func_3(Struct_3(56002u, u_input.e.zxz), true, vec2<i32>(-12356, global0.d.x), -119.0)))), vec3<f32>(_wgslsmith_f_op_f32(-1000.0 * _wgslsmith_f_op_f32(floor(-1495.0))), global0.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b.b, _wgslsmith_f_op_f32(trunc(-1137.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150.0 + global0.c.d.x)))), vec3<i32>(func_4().x, abs(global1.d.x), ~(global1.d.x & 1) ^ global1.d.x));
                var var_1 = true;
                var_1 = !global1.b.c.x;
                global1 = Struct_4(global0.c.d.xz, global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(var_0.d.wzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2102.0, global0.c.b, global0.c.d.x)), func_5().c.e))))), ~select(global0.d, -vec3<i32>(global1.d.x, -2147483648, global1.d.x), true));
            }
        }
        default: {
            global0 = func_5();
            switch ((20379 << (firstTrailingBit(u_input.a) % 32u)) | _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(-vec4<i32>(global1.d.x, global1.d.x, 30495, -70857), abs(vec4<i32>(2147483647, global0.d.x, global0.d.x, 37173))), -_wgslsmith_mod_vec4_i32(select(vec4<i32>(global1.d.x, 31102, global1.d.x, -46835), vec4<i32>(46877, 0, global0.d.x, 0), global0.c.c), vec4<i32>(global0.d.x, -29913, global1.d.x, 2147483647) | vec4<i32>(-2147483648, 2147483647, -1, -2147483648)))) {
                default: {
                }
            }
            var var_1 = Struct_2(abs(global0.a), 15667u, Struct_1(1328.0, _wgslsmith_f_op_f32(global1.c.x * global0.c.b), !vec4<bool>(!global0.c.c.x, func_5().c.e, !true, global0.c.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 723.0, global0.c.b, -130.0) + vec4<f32>(335.0, var_0.a, global0.c.a, -358.0)))), global0.c.c.x), vec3<i32>(max(max(global1.d.x, global1.d.x), -2147483648), ~_wgslsmith_add_i32(1, _wgslsmith_sub_i32(global0.d.x, 18574)), global0.d.x));
            let var_2 = abs(~global0.b);
            var_1 = func_5();
        }
    }
    global0 = func_5();
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(global1.c.zy - vec2<f32>(var_0.d.x, global1.b.d.x)), global1.b, global1.c, ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.d.x, global1.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-22319, global0.d.x, 2147483647), vec3<i32>(global0.d.x, 31976, global0.d.x)), -41348), global1.d));
    return Struct_2(reverseBits(u_input.b.wyz), 68348u, func_5().c, firstTrailingBit(global1.d));
}

fn func_9(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> Struct_4 {
    switch (_wgslsmith_mult_i32(global1.d.x, global1.d.x << (arg_3 % 32u))) {
        case -2147483648: {
            global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.d.zy) * vec2<f32>(224.0, func_5().c.a))), Struct_1(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(floor(global1.a.x)))), arg_1.c.c, vec4<f32>(_wgslsmith_f_op_f32(global0.c.d.x - -667.0), _wgslsmith_f_op_f32(ceil(func_5().c.b)), _wgslsmith_f_op_f32(-1000.0), arg_2.x), true), vec3<f32>(1485.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.b - -227.0) + global1.c.x)), -201.0), vec3<i32>(_wgslsmith_add_i32(~_wgslsmith_mod_i32(-9584, 0), -_wgslsmith_dot_vec4_i32(vec4<i32>(27734, 28338, global1.d.x, global1.d.x), vec4<i32>(global1.d.x, -2147483648, -2147483648, -27640))), ~(~(0 << (30522u % 32u))), ~_wgslsmith_mod_i32(func_5().d.x, _wgslsmith_mod_i32(-1639, global0.d.x))));
            let var_0 = Struct_3(19597u, abs(firstTrailingBit(~abs(arg_1.a))));
        }
        case 33278: {
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                var var_0 = _wgslsmith_sub_u32(~(countOneBits(arg_1.b) | ~global0.a.x), arg_3) & ~17357u;
                continue;
            }
            if (arg_0.x) {
                let var_0 = global1.d ^ -abs(vec3<i32>(global1.d.x, ~global0.d.x, 0));
            }
            var var_0 = func_2().c;
            for (var var_1 = 42160; var_1 != 38844; var_1 += 1) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            }
        }
        default: {
            let var_0 = arg_0;
            global1 = Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1283.0, global0.c.a), _wgslsmith_div_vec2_f32(vec2<f32>(452.0, -2036.0), _wgslsmith_f_op_vec2_f32(global0.c.d.zy * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.c.d.x, 288.0))))), select(vec2<bool>(!global0.c.e, !arg_1.c.e), func_2().c.c.zz, true))), Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(-func_5().c.b), vec4<bool>(!global0.c.c.x && true, true, !(!arg_1.c.c.x), (u_input.d >= global0.a.x) & !var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_5().c.d) + global0.c.d), (~17492u | u_input.b.x) != _wgslsmith_div_u32(arg_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, arg_3, 43232u), u_input.b.yxy))), vec3<f32>(global0.c.b, 2216.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_2.x)))), 485.0))), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.d.x, -6032 << (u_input.b.x % 32u), 32106), _wgslsmith_mult_vec3_i32(global1.d & global1.d, _wgslsmith_clamp_vec3_i32(arg_1.d, vec3<i32>(2147483647, arg_1.d.x, 0), global0.d))) | global1.d);
        }
    }
    let var_0 = !func_8(arg_1.c, global0.a.x >= reverseBits(~21665u), global0.d, Struct_3(u_input.b.x, global0.a)).x;
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        let var_1 = ~101397u;
        switch (countOneBits(_wgslsmith_mod_i32(global1.d.x, _wgslsmith_div_i32(global1.d.x, global1.d.x)))) {
            case -17055: {
                global1 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(-global0.c.a))), arg_1.c.d.x))), Struct_1(_wgslsmith_f_op_f32(global0.c.a - -816.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206.0)) - func_2().c.d.x), global0.c.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.c.d), vec4<f32>(arg_1.c.d.x, arg_2.x, arg_2.x, global0.c.d.x))))), !false), _wgslsmith_div_vec3_f32(func_2().c.d.xyy, _wgslsmith_f_op_vec3_f32(exp2(arg_2))), _wgslsmith_mult_vec3_i32(global1.d, -arg_1.d));
            }
            case 2147483647: {
                let var_2 = true;
                break;
            }
            case -170: {
                continue;
            }
            case 551: {
                var var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global1.a.x)), 851.0, any(vec2<bool>(var_0, global0.c.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(step(-1000.0, -515.0)), any(arg_0))))), Struct_1(_wgslsmith_f_op_f32(arg_1.c.b + _wgslsmith_f_op_f32(-arg_1.c.a)), _wgslsmith_f_op_f32(abs(-145.0)), !global0.c.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(func_5().c.d))), var_0), _wgslsmith_div_vec3_f32(arg_1.c.d.wxx, arg_2), -vec3<i32>(_wgslsmith_clamp_i32(abs(arg_1.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, 0), global1.d.xy), ~global0.d.x), 1, ~(-global0.d.x)));
            }
            default: {
                global1 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(arg_2.yz)), global0.c, vec3<f32>(_wgslsmith_f_op_f32(-413.0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1099.0 - -799.0), -1639.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-434.0, 1129.0))) * _wgslsmith_f_op_f32(abs(arg_1.c.b)))), global0.d);
                let var_2 = global0.d.x;
            }
        }
        var var_2 = Struct_3(~4294967295u, ~(~select(_wgslsmith_sub_vec3_u32(u_input.b.xzw, vec3<u32>(41176u, var_1, u_input.e.x)), arg_1.a ^ u_input.b.yxy, any(vec2<bool>(true, true)))));
        global0 = func_5();
        global1 = Struct_4(vec2<f32>(global1.b.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, 823.0, global0.c.e))))), func_5().c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-134.0, global0.c.b, _wgslsmith_f_op_f32(-697.0))), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.x, -30687, -18057, global1.d.x) ^ vec4<i32>(global0.d.x, arg_1.d.x, 2147483647, global1.d.x), vec4<i32>(0, global1.d.x, 50080, global0.d.x) << (vec4<u32>(arg_3, 6803u, arg_3, arg_3) % vec4<u32>(32u))), ~25709, 0)));
    }
    global0 = Struct_2(vec3<u32>(4294967295u, min(4294967295u, 58406u), abs(_wgslsmith_mult_u32(0u, 50917u))), min(arg_3, firstTrailingBit(func_2().a.x)), func_5().c, -vec3<i32>(28621, ~_wgslsmith_mod_i32(-1, 16527), ~global0.d.x));
    var var_1 = -901.0;
    return Struct_4(arg_2.xx, global0.c, arg_1.c.d.wxy, global1.d);
}

fn func_10(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    if (global0.c.e) {
        switch (arg_1.d.x) {
            case 50130: {
                let var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(func_5().d.x, global1.d.x), countOneBits(-_wgslsmith_add_i32(global1.d.x, arg_0.x)));
                global0 = func_2();
                let var_1 = false;
            }
            default: {
                var var_0 = _wgslsmith_sub_vec4_i32(-countOneBits(vec4<i32>(15556, max(1, global1.d.x), -2147483648, global1.d.x)), ~vec4<i32>(-2147483648, global0.d.x, -1, ~21930));
                var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(727.0, -1314.0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000.0 * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.c.a)))))));
                global0 = Struct_2(u_input.e.wxz, ~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global0.b, global0.b, 0u), vec3<u32>(4294967295u, 0u, u_input.b.x)), reverseBits(global0.a) << (select(u_input.b.zww, global0.a, vec3<bool>(false, false, false)) % vec3<u32>(32u))), func_5().c, vec3<i32>(func_5().d.x, -1, ~_wgslsmith_sub_i32(var_0.x, 2147483647 >> (4294967295u % 32u))));
                var var_2 = global0.c.d.wx;
            }
        }
        switch (-(func_2().d.x >> (func_2().b % 32u))) {
            case 2147483647: {
            }
            case 21774: {
            }
            case 45000: {
                global0 = func_5();
                var var_0 = vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(global0.d.x & 1, global0.d.x | arg_1.d.x)) << (_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(3423u, global0.b, 4458u), _wgslsmith_div_u32(~4294967295u, global0.b << (u_input.e.x % 32u))) % 32u), arg_0.x);
                var var_1 = ~vec3<u32>(_wgslsmith_sub_u32(~func_5().a.x, u_input.d), 4294967295u, min(_wgslsmith_mult_u32(36263u, global0.a.x) << ((13566u >> (62410u % 32u)) % 32u), 31496u));
            }
            case -1: {
                global0 = func_2();
                global1 = Struct_4(global1.c.yx, Struct_1(global0.c.a, _wgslsmith_f_op_f32(f32(-1.0) * -669.0), vec4<bool>(global0.c.e, u_input.d < 4294967295u, all(func_9(vec2<bool>(false, false), Struct_2(vec3<u32>(u_input.a, 5291u, 0u), 36619u, Struct_1(global1.b.d.x, 138.0, arg_1.b.c, vec4<f32>(315.0, 1360.0, global1.c.x, arg_1.c.x), arg_1.b.e), global0.d), vec3<f32>(arg_1.a.x, 179.0, arg_1.c.x), 59377u).b.c.xx), global1.b.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1496.0, -972.0, -642.0, arg_2.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_1.a.x, -633.0, 120.0)))), !(!(!arg_2.c.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-321.0 * global0.c.a), _wgslsmith_f_op_f32(floor(977.0)), _wgslsmith_f_op_f32(-553.0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-107.0, _wgslsmith_f_op_f32(-global0.c.b), arg_1.a.x))), func_9(func_5().c.c.zz, func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-103.0)), 1307.0, _wgslsmith_f_op_f32(global1.b.a + arg_2.b)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1680.0, arg_1.c.x, arg_2.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1814.0, arg_1.b.a, 1496.0)))), 75322u).d);
                let var_0 = Struct_3(u_input.a, u_input.e.xyw << (u_input.e.zxw % vec3<u32>(32u)));
            }
            default: {
                var var_0 = func_2().c.e & func_3(Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e.zyz, vec3<u32>(u_input.c, global0.b, u_input.e.x)), vec3<u32>(global0.a.x, u_input.c, u_input.d)), vec3<u32>(global0.b, func_7(vec2<i32>(global1.d.x, -2147483648), u_input.d, vec2<i32>(global1.d.x, -4472)), firstTrailingBit(115427u))), false, countOneBits(global1.d.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d.x, arg_1.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b) * 710.0)));
                var var_1 = func_5();
                var var_2 = ~u_input.d;
            }
        }
    }
    if (true) {
        global1 = func_9(global0.c.c.yw, func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, arg_2.a, _wgslsmith_f_op_f32(trunc(-325.0)))), ~1u);
        for (var var_0 = 0; var_0 < 37522; var_0 += 1) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        }
    }
    let var_0 = ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(40728u, global0.a.x), vec2<u32>(_wgslsmith_add_u32(global0.b, u_input.e.x), global0.b)));
    if (all(arg_2.c.yzz)) {
        let var_1 = Struct_2(vec3<u32>(15144u, 1u, 0u) >> (abs(global0.a) % vec3<u32>(32u)), global0.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.x))) + -323.0), -1067.0, func_5().c.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-939.0, 311.0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b.a), _wgslsmith_f_op_f32(-390.0))), arg_2.d.x), any(select(!vec2<bool>(global1.b.e, false), global0.c.c.yx, vec2<bool>(true, arg_1.b.e)))), global0.d);
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        var var_1 = vec4<bool>(!any(arg_2.c) != (arg_1.b.e & global1.b.c.x), arg_2.c.x, arg_1.b.e, abs(~firstTrailingBit(61543u)) == (0u & _wgslsmith_add_u32(~4294967295u, 0u)));
        var var_2 = vec2<bool>(!false, false);
    }
    return arg_1.b;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global1 = Struct_4(arg_0.c.d.xw, func_10(vec2<i32>(-1) * -vec2<i32>(arg_1.d.x, 1), func_9(select(!vec2<bool>(arg_0.c.c.x, true), select(vec2<bool>(global0.c.e, global0.c.c.x), vec2<bool>(true, false), vec2<bool>(arg_0.c.c.x, false)), arg_0.c.c.yz), func_2(), arg_1.c.d.xzy, ~(~4294967295u)), func_2().c), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(201.0, 1160.0, global1.b.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.a, -269.0, 1000.0), vec3<f32>(global0.c.d.x, arg_1.c.b, 179.0), vec3<bool>(arg_0.c.c.x, false, false)))))))), vec3<i32>(_wgslsmith_clamp_i32(abs(-2147483648), global0.d.x, 4410), arg_1.d.x << (func_7(arg_0.d.zy, ~4294967295u, global1.d.zy) % 32u), arg_1.d.x));
    for (var var_0 = 0; var_0 != -2147483648; ) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        switch (_wgslsmith_clamp_i32(global0.d.x, -1, ~(~(-12601))) >> (~min(arg_0.b, global0.a.x << (4294967295u % 32u)) % 32u)) {
            default: {
            }
        }
        var var_1 = vec4<i32>(-1, arg_0.d.x, global0.d.x, select(-arg_0.d.x, arg_0.d.x, (_wgslsmith_dot_vec3_u32(u_input.e.www, u_input.e.wyx) | firstLeadingBit(u_input.e.x)) <= _wgslsmith_div_u32(~u_input.e.x, global0.b)));
        break;
    }
    var var_0 = func_9(!arg_1.c.c.zy, func_5(), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c.d.xzz * arg_0.c.d.xzy) * _wgslsmith_f_op_vec3_f32(exp2(arg_0.c.d.zyw)))), !(!false))), func_7(abs(reverseBits(vec2<i32>(global0.d.x, global1.d.x)) >> (u_input.e.zx % vec2<u32>(32u))), 4294967295u, arg_0.d.xx));
    var var_1 = min(vec2<u32>(~(arg_1.b >> (_wgslsmith_mod_u32(u_input.c, arg_1.b) % 32u)), arg_1.b), vec2<u32>(1u, ~arg_0.a.x) ^ _wgslsmith_div_vec2_u32(max(global0.a.xx, ~vec2<u32>(arg_1.a.x, 66834u)), ~global0.a.xy & vec2<u32>(113038u, 1u)));
    global1 = func_9(arg_0.c.c.yz, func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1.c.d.yzx)))), arg_0.a.x);
    return (select(arg_1.c.c.x, !arg_1.c.e, arg_1.c.e) & true) || true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(global1.b.d.xy + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global0.c.d.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.b, global1.a.x))))));
    if (false) {
    }
    for (var var_1 = ~firstLeadingBit(global1.d.x); var_1 >= 0; var_1 += 1) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        for (var var_2 = 0; !any(vec3<bool>(2147483647 != (27767 ^ 3007), func_1(Struct_2(vec3<u32>(12981u, 31553u, 113811u), 26425u, global0.c, global1.d), Struct_2(vec3<u32>(28371u, u_input.b.x, 1u), 1u, global1.b, global1.d)), func_8(Struct_1(961.0, var_0.x, global1.b.c, vec4<f32>(-672.0, global1.c.x, 3296.0, -601.0), false), false, firstLeadingBit(vec3<i32>(global0.d.x, global0.d.x, global1.d.x)), Struct_3(u_input.d, u_input.e.xyy)).x)); var_2 += 1) {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            let var_3 = vec2<i32>(-24982, firstTrailingBit(_wgslsmith_add_i32(global0.d.x << (0u % 32u), i32(-1) * -65683) | ((2147483647 << (u_input.d % 32u)) ^ global1.d.x)));
            var var_4 = vec3<bool>(all(vec3<bool>(global1.b.c.x, global1.b.c.x, true)), (select(reverseBits(1u), 5710u, global1.b.c.x) < 1u) || true, ~u_input.a > _wgslsmith_clamp_u32(~(43654u ^ global0.b), global0.b, func_5().a.x));
            continue;
        }
        loop {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            let var_2 = -1;
            let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-550.0, _wgslsmith_f_op_f32(trunc(global0.c.a)))) - _wgslsmith_f_op_vec2_f32(round(var_0))), global1.b, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a * 888.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a)), _wgslsmith_f_op_f32(global1.a.x - var_0.x)))), -(~global0.d));
            var_1 = var_2;
            let var_4 = !func_5().c.e;
            var var_5 = func_10(-_wgslsmith_mult_vec2_i32(vec2<i32>(-1, global0.d.x), func_2().d.xy), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(128.0 - var_0.x), _wgslsmith_f_op_f32(-1011.0)), Struct_1(func_2().c.a, -1095.0, !vec4<bool>(true, false, true, true), vec4<f32>(global0.c.b, 129.0, global1.b.b, var_0.x), global0.d.x < global1.d.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.c.x, 234.0, 1000.0))), vec3<i32>(countOneBits(-2147483648), global1.d.x | var_3.d.x, func_5().d.x)), global0.c).a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1308.0, var_0.x)), var_3.c.x)) + _wgslsmith_div_f32(var_3.a.x, global1.b.a)));
        }
        continue;
    }
    global1 = func_9(func_9(!global0.c.c.yw, Struct_2(~global0.a, ~(global0.a.x >> (u_input.e.x % 32u)), func_9(func_9(vec2<bool>(false, true), Struct_2(vec3<u32>(4294967295u, 81066u, global0.a.x), u_input.e.x, global0.c, global1.d), global1.b.d.yyx, 20845u).b.c.xx, Struct_2(vec3<u32>(global0.b, u_input.d, 4294967295u), global0.a.x, Struct_1(global0.c.d.x, global0.c.a, vec4<bool>(global0.c.c.x, global0.c.c.x, true, false), vec4<f32>(global1.a.x, global0.c.a, global0.c.b, -384.0), global0.c.c.x), vec3<i32>(global1.d.x, global0.d.x, global0.d.x)), _wgslsmith_f_op_vec3_f32(global1.b.d.yxy - vec3<f32>(965.0, 1272.0, -588.0)), _wgslsmith_mult_u32(0u, global0.a.x)).b, global0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)), u_input.d ^ 9359u).b.c.yz, Struct_2(global0.a << (vec3<u32>(~u_input.a, 4294967295u, 373u | 4294967295u) % vec3<u32>(32u)), 24373u, func_2().c, -(~firstLeadingBit(global1.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global1.c, global0.c.d.wxx)) * _wgslsmith_f_op_vec3_f32(select(global0.c.d.wwz, vec3<f32>(var_0.x, -210.0, var_0.x), global0.c.c.x)))) + _wgslsmith_f_op_vec3_f32(global0.c.d.zxz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.d.xww)))), 1u);
    global1 = func_9(func_10(global1.d.yx & _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.d.x, global0.d.x), _wgslsmith_sub_vec2_i32(global1.d.zz, vec2<i32>(global1.d.x, -1)), global1.d.zy >> (u_input.b.yx % vec2<u32>(32u))), func_9(func_5().c.c.xx, func_5(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2169.0, 1148.0, 548.0), global0.c.d.yyz)) + _wgslsmith_f_op_vec3_f32(global1.b.d.wzz + vec3<f32>(global1.c.x, 384.0, var_0.x))), 4294967295u), func_5().c).c.xy, Struct_2(select(~firstLeadingBit(vec3<u32>(4294967295u, 1u, u_input.c)), global0.a, !vec3<bool>(global0.c.e, false, global0.c.e)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(1u, 0u)), func_2().a.x), func_10(max(min(global0.d.xy, vec2<i32>(-17483, 2147483647)), global0.d.xy), Struct_4(vec2<f32>(-680.0, 1000.0), Struct_1(global0.c.a, -1210.0, vec4<bool>(false, global0.c.e, global1.b.c.x, true), global0.c.d, global0.c.e), _wgslsmith_div_vec3_f32(global1.b.d.zzw, vec3<f32>(-430.0, -432.0, var_0.x)), -vec3<i32>(global1.d.x, -1, 28785)), global1.b), ~global1.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(597.0, global0.c.d.x, _wgslsmith_f_op_f32(floor(-1964.0))) * global0.c.d.yxy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.b, var_0.x, 554.0) + global0.c.d.yww) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.a, var_0.x, var_0.x))) - _wgslsmith_div_vec3_f32(global1.b.d.www, _wgslsmith_f_op_vec3_f32(max(global1.c, vec3<f32>(var_0.x, 182.0, -2163.0))))), !(!global0.c.c.ywz))), 4294967295u);
    global0 = func_5();
    let var_1 = vec4<bool>(false, global1.b.c.x, ~0u <= max(global0.a.x, u_input.d << (15477u % 32u)), !false & (func_2().c.e & (global1.d.x >= func_2().d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_9(vec2<bool>(false, func_1(func_2(), Struct_2(vec3<u32>(global0.b, global0.a.x, 25531u), 6853u, global1.b, global0.d))), Struct_2(~global0.a, func_5().a.x, Struct_1(func_9(vec2<bool>(true, false), Struct_2(global0.a, global0.b, global0.c, global1.d), global1.b.d.yzy, global0.b).a.x, _wgslsmith_div_f32(global1.c.x, global1.c.x), func_9(global0.c.c.ww, Struct_2(vec3<u32>(global0.b, u_input.c, 24483u), global0.a.x, Struct_1(global1.a.x, var_0.x, global0.c.c, vec4<f32>(global1.c.x, 1514.0, -1000.0, var_0.x), false), vec3<i32>(0, global1.d.x, -11181)), global0.c.d.wyz, global0.b).b.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-683.0, global0.c.a, var_0.x, global1.b.b) + vec4<f32>(653.0, global0.c.d.x, global1.c.x, var_0.x)), var_1.x), vec3<i32>(-2147483648, 1, -1 | global1.d.x)), vec3<f32>(440.0, _wgslsmith_f_op_f32(exp2(1928.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.d.x), _wgslsmith_f_op_f32(global1.b.b + 1208.0)))), ~u_input.d << (global0.a.x % 32u)).d, ~(~(-45629 | -global0.d.x)), ~abs(-global1.d.yx), _wgslsmith_f_op_f32(round(var_0.x)));
}

