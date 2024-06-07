// {"0:0":[248,181,127,177,136,53,126,145,190,193,45,158,106,228,249,98,207,62,56,152,62,74,183,150,137,254,60,98,227,31,194,22,127,52,170,240,132,169,128,30,47,85,102,125,184,245,201,88]}
// Seed: 7308019271533683647

struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(20523u, 4294967295u));

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 22>;

var<private> global4: Struct_3 = Struct_3(vec2<u32>(107085u, 20678u));

var<private> LOOP_COUNTERS: array<u32, 30>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn func_6(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> vec3<bool> {
    for (var var_0 = 27435; var_0 != 0; var_0 += 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        for (var var_1 = 0; ; var_1 += 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var var_2 = global0[_wgslsmith_index_u32(~select(~_wgslsmith_mult_u32(global4.a.x, 4294967295u), global4.a.x, true), 13u)];
            var var_3 = 0u;
            break;
        }
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            let var_1 = Struct_2(vec3<u32>(abs(_wgslsmith_mod_u32(4294967295u, global1.a.x)), arg_0 << (4294967295u % 32u), countOneBits(_wgslsmith_add_u32(min(arg_0, arg_0), _wgslsmith_mod_u32(arg_0, 0u)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, global4.a.x) >> (~vec3<u32>(arg_0, 39756u, 12843u) % vec3<u32>(32u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(72986u, global1.a.x, u_input.e.x) << (vec3<u32>(global1.a.x, global4.a.x, arg_0) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, global1.a.x, 93167u)), vec3<u32>(u_input.b.x, u_input.e.x, global4.a.x), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 13u)], global0[_wgslsmith_index_u32(34428u, 13u)], false), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(u_input.e.x, 13u)]))), 13u)], vec2<u32>(_wgslsmith_sub_u32(reverseBits(global4.a.x), arg_0), ~94837u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1650.0, -214.0, -1326.0, -1000.0) * vec4<f32>(-801.0, -453.0, -322.0, -221.0)), vec4<f32>(611.0, 1133.0, -1336.0, -1000.0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-137.0, 226.0, 475.0, -744.0)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1755.0, -398.0, -983.0, -1000.0))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(467.0, -513.0, -832.0, -1252.0)))))))));
            global3 = array<vec2<bool>, 22>();
            var var_2 = countOneBits(~23494u) ^ ((41872u & u_input.e.x) ^ 1u);
            continue;
        }
        let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1387.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-343.0) * _wgslsmith_f_op_f32(f32(-1.0) * -1120.0))), _wgslsmith_f_op_f32(ceil(-893.0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(414.0, 750.0))))));
        let var_2 = Struct_1(486.0, _wgslsmith_f_op_f32(-var_1.x), vec2<f32>(_wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-148.0, var_1.x)) - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -1327.0)))), -1115.0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1)) - _wgslsmith_f_op_vec4_f32(var_1 + var_1)));
    }
    global4 = Struct_3(~max(vec2<u32>(global1.a.x, global1.a.x | 24238u), _wgslsmith_add_vec2_u32(vec2<u32>(global1.a.x, 0u), vec2<u32>(58423u, u_input.e.x)) << (vec2<u32>(global1.a.x, 776u) % vec2<u32>(32u))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(953.0, 580.0, 1231.0, 203.0), vec4<f32>(-774.0, -600.0, -342.0, 489.0))), _wgslsmith_div_vec4_f32(vec4<f32>(-520.0, -1394.0, -147.0, 112.0), vec4<f32>(-1178.0, -775.0, 1460.0, -366.0)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-489.0, -149.0, -1354.0, 1000.0)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000.0, -1385.0, -715.0, -776.0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1603.0, 2117.0, -1220.0, 1259.0) - vec4<f32>(-974.0, 220.0, 919.0, 533.0))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-331.0, 230.0, 1060.0, -896.0), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000.0, 1000.0, 749.0, 1734.0)))))))));
    let var_1 = !(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)] | true, var_0.x <= 234.0, global0[_wgslsmith_index_u32(arg_0, 13u)], false)));
    let var_2 = Struct_2(select(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global4.a.x, u_input.e.x, global4.a.x), vec3<u32>(14304u, 0u, 1u))), select(~(~vec3<u32>(0u, 1u, 0u)), ~(~vec3<u32>(4294967295u, 15429u, 4294967295u)), all(!vec2<bool>(false, true))), !var_1.wwz), false, _wgslsmith_clamp_vec2_u32(global4.a, _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 26069u), vec2<u32>(u_input.b.x, 36968u)), select(global1.a, abs(vec2<u32>(0u, arg_0)), select(global3[_wgslsmith_index_u32(u_input.e.x, 22u)], vec2<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), var_1.yw)), abs(global1.a)), vec2<u32>(24920u, select(~0u, 1u, all(vec4<bool>(true, true, false, var_1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-635.0, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1139.0)), var_0.x)));
    return select(var_1.yxw, !vec3<bool>(true, _wgslsmith_f_op_f32(min(var_2.d.x, 1000.0)) > _wgslsmith_f_op_f32(var_2.d.x * -1780.0), any(!vec4<bool>(global0[_wgslsmith_index_u32(38675u, 13u)], var_2.b, var_2.b, false))), vec3<bool>(any(!select(vec2<bool>(global0[_wgslsmith_index_u32(var_2.a.x, 13u)], true), vec2<bool>(true, true), false)), var_2.b, var_2.b));
}

fn func_7(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec3_i32(~u_input.a, min(vec3<i32>(~u_input.d, ~33674, -5430), vec3<i32>(min(-15163, u_input.d), i32(-1) * -2620, -u_input.c.x)) ^ _wgslsmith_mult_vec3_i32(abs(u_input.a), reverseBits(abs(u_input.a))));
    for (var var_1 = -11308; arg_0.x; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        for (var var_2 = -2147483648; var_2 > 2147483647; ) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_3 = !arg_0.x;
        }
    }
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379.0 + 880.0)) - _wgslsmith_f_op_f32(636.0 + 1000.0)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-211.0, _wgslsmith_f_op_f32(-1000.0)))))));
    switch (min(i32(-1) * -2147483648, ~(~(~1)))) {
        default: {
            var var_2 = 17926u;
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                continue;
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_3 = Struct_3(vec2<u32>(~global1.a.x, 19119u));
                var var_4 = Struct_1(-2514.0, var_1, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -622.0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -588.0) - vec2<f32>(-2054.0, 1172.0))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1, var_1))), true)))), -2277.0, vec4<f32>(var_1, 192.0, 1218.0, -1546.0));
                continue;
            }
            global3 = array<vec2<bool>, 22>();
        }
    }
    global1 = Struct_3(firstLeadingBit(~abs(countOneBits(global1.a))));
    return _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 0u, global4.a.x, 0u), max(vec4<u32>(1u, 11316u, global1.a.x, 28195u), vec4<u32>(32346u, global4.a.x, 4294967295u, u_input.b.x))), reverseBits(firstTrailingBit(vec4<u32>(global4.a.x, 53465u, global4.a.x, global4.a.x)))), vec4<u32>(0u, _wgslsmith_add_u32(_wgslsmith_sub_u32(global1.a.x, u_input.e.x), ~u_input.e.x), reverseBits(4294967295u & 1521u), _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.x, 4294967295u), vec2<u32>(u_input.e.x, u_input.b.x)), global1.a.x)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, 21826u, 1u) << (vec4<u32>(0u, 4294967295u, u_input.b.x, 9190u) % vec4<u32>(32u)), vec4<u32>(global1.a.x, global1.a.x, 1998u, global4.a.x) << (vec4<u32>(u_input.e.x, 37224u, 77389u, global1.a.x) % vec4<u32>(32u))));
}

fn func_5() -> Struct_3 {
    let var_0 = func_7(select(select(select(!vec3<bool>(true, true, false), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(global1.a.x, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(10397u, 13u)], global0[_wgslsmith_index_u32(u_input.e.x, 13u)], true), vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(8950u, 13u)]), vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(46899u, 13u)], global0[_wgslsmith_index_u32(global4.a.x, 13u)], true)), 1078.0 < 1667.0, global0[_wgslsmith_index_u32(global1.a.x >> (48618u % 32u), 13u)]), select(func_6(global1.a.x, vec3<i32>(-1, u_input.c.x, -12793), u_input.a.x), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global4.a.x, 13u)]), vec3<bool>(false, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(23457u, 13u)], global0[_wgslsmith_index_u32(global1.a.x, 13u)])), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.e.x, 13u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.a.x, 13u)], global0[_wgslsmith_index_u32(global4.a.x, 13u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global4.a.x, 13u)], true)))), vec3<bool>(all(!global3[_wgslsmith_index_u32(2125u, 22u)]), true, global0[_wgslsmith_index_u32(44602u, 13u)]), !vec3<bool>(!global0[_wgslsmith_index_u32(1u, 13u)], !global0[_wgslsmith_index_u32(0u, 13u)], false)));
    var var_1 = !global0[_wgslsmith_index_u32(u_input.b.x, 13u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-149.0)))) - -1009.0) + -630.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-666.0) - 1685.0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(-739.0)), _wgslsmith_f_op_f32(-251.0 + 807.0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(388.0, 474.0) + vec2<f32>(-1100.0, 1069.0)) - vec2<f32>(-616.0, -941.0)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-263.0, -1000.0))))), 17932 >= -u_input.a.x)), _wgslsmith_f_op_f32(select(-674.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1450.0)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-937.0, 1224.0))))), !(firstLeadingBit(0u) < u_input.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(200.0, -1442.0, 1122.0, 1000.0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(776.0, 1000.0, -145.0, -2079.0), vec4<f32>(653.0, -1470.0, -159.0, 623.0))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-176.0, -423.0, -232.0, -1884.0)))))));
    var var_3 = select(abs(u_input.b.x), ~39346u, !false & false);
    for (var var_4 = 2147483647; var_4 != 0; var_4 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    return Struct_3(~firstTrailingBit(func_7(!vec3<bool>(global0[_wgslsmith_index_u32(26197u, 13u)], global0[_wgslsmith_index_u32(var_0.x, 13u)], global0[_wgslsmith_index_u32(global1.a.x, 13u)])).yx));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<u32>) -> i32 {
    global4 = Struct_3(~global1.a);
    global4 = func_5();
    global4 = func_5();
    global4 = Struct_3(vec2<u32>(firstTrailingBit(1u), arg_2));
    global3 = array<vec2<bool>, 22>();
    return _wgslsmith_div_i32(u_input.d, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(-27444, -2147483648, 6339)))), ~(-2311)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-767.0, 1000.0, -1184.0, 364.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-342.0, 1258.0, -697.0, -1000.0))) - vec4<f32>(_wgslsmith_f_op_f32(-979.0), _wgslsmith_f_op_f32(-522.0 * -693.0), _wgslsmith_f_op_f32(-712.0 * -204.0), -1661.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000.0, -320.0, -416.0, 1068.0), vec4<f32>(-1686.0, -1360.0, 957.0, -520.0))))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1799.0) + 873.0), _wgslsmith_f_op_f32(select(-316.0, _wgslsmith_div_f32(821.0, -166.0), all(vec3<bool>(global0[_wgslsmith_index_u32(global4.a.x, 13u)], true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1225.0, -212.0))), _wgslsmith_f_op_f32(f32(-1.0) * -1648.0), -250.0));
    switch (min(14919, func_4(vec2<u32>(~firstLeadingBit(5818u), _wgslsmith_div_u32(global1.a.x, firstTrailingBit(0u))), arg_1, ~5647u, vec3<u32>(abs(~u_input.b.x), global4.a.x, _wgslsmith_div_u32(u_input.e.x, 1u) & ~1u)))) {
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                let var_1 = arg_2;
            }
        }
        case -5718: {
            let var_1 = _wgslsmith_f_op_f32(sign(var_0.x));
            for (; !global0[_wgslsmith_index_u32(global1.a.x, 13u)]; ) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                continue;
            }
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                break;
            }
        }
        default: {
            var var_1 = _wgslsmith_dot_vec3_i32(~(~(-vec3<i32>(arg_3.x, 2147483647, 164))), vec3<i32>(-u_input.a.x, _wgslsmith_div_i32(max(u_input.d & arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_3.x), arg_3.zxx)), reverseBits(0) >> (_wgslsmith_clamp_u32(global4.a.x, global1.a.x, 91700u) % 32u)), _wgslsmith_dot_vec4_i32(arg_3, _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d, u_input.c.x, 1, arg_3.x), vec4<i32>(56709, -6207, arg_0.x, 1), vec4<bool>(false, arg_2, arg_2, arg_2)), -arg_3))));
            for (var var_2 = -2147483648; !((global0[_wgslsmith_index_u32(4294967295u, 13u)] & (_wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(step(-403.0, var_0.x)))) | any(select(select(vec2<bool>(arg_2, true), global3[_wgslsmith_index_u32(0u, 22u)], false), select(vec2<bool>(arg_2, global0[_wgslsmith_index_u32(global4.a.x, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(32445u, 13u)], true), global0[_wgslsmith_index_u32(0u, 13u)]), global3[_wgslsmith_index_u32(global4.a.x, 22u)]))); global3 = array<vec2<bool>, 22>()) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_3 = ~_wgslsmith_div_u32(39166u, ~global1.a.x) ^ u_input.e.x;
                continue;
            }
        }
    }
    let var_1 = max(firstTrailingBit(35808), _wgslsmith_mod_i32(-5793, 21335 & 70162));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        global1 = Struct_3(~_wgslsmith_mod_vec2_u32(func_7(vec3<bool>(arg_2, true, false)).yx | vec2<u32>(0u, 0u), ~(global4.a | vec2<u32>(27977u, global1.a.x))));
        var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)) * var_0.x)), var_0.x, vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(819.0))), var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-565.0, _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(294.0 * var_0.x), var_0.x), var_0, global0[_wgslsmith_index_u32(global1.a.x, 13u)])) - var_0));
        let var_3 = vec2<f32>(var_0.x, var_0.x);
        var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(391.0, _wgslsmith_f_op_f32(419.0 + _wgslsmith_f_op_f32(-var_3.x)))), var_0.x, arg_2)), 1888.0, _wgslsmith_f_op_vec2_f32(round(var_0.zw)), -209.0, var_0);
    }
    global1 = func_5();
    return -min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, firstLeadingBit(2147483647), u_input.c.x), vec3<i32>(~arg_0.x, _wgslsmith_mod_i32(u_input.c.x, arg_3.x), _wgslsmith_sub_i32(arg_0.x, u_input.d))), 2524);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(-3588 & u_input.d, _wgslsmith_mod_i32(_wgslsmith_div_i32(~_wgslsmith_mult_i32(u_input.c.x, 1), i32(-1) * 0), u_input.c.x), u_input.d, u_input.a.x);
    global2 = _wgslsmith_sub_i32(-func_3(-u_input.c, _wgslsmith_add_vec2_i32(vec2<i32>(-34100, var_0.x), u_input.a.yy), all(!vec3<bool>(false, true, false)), -vec4<i32>(-1, var_0.x, u_input.c.x, 18897) & -vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), 2147483647);
    global0 = array<bool, 13>();
    for (var var_1 = u_input.d; false; var_1 -= 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        global3 = array<vec2<bool>, 22>();
        break;
    }
    global4 = func_5();
    return Struct_1(arg_1.d.x, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_vec2_f32(round(arg_1.d.zw)), -1277.0, arg_2.e);
}

fn func_8(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = ~vec4<u32>(112497u, global1.a.x, _wgslsmith_dot_vec2_u32(u_input.e, ~func_5().a), global4.a.x >> (func_5().a.x % 32u));
    var var_1 = countOneBits(arg_0.x);
    for (; any(func_6(func_7(select(select(vec3<bool>(arg_3, global0[_wgslsmith_index_u32(15321u, 13u)], arg_3), vec3<bool>(arg_3, arg_3, arg_3), true), vec3<bool>(arg_3, global0[_wgslsmith_index_u32(global1.a.x, 13u)], arg_3), any(vec3<bool>(true, true, true)))).x, max((u_input.a & vec3<i32>(-2147483648, 1, u_input.d)) >> (var_0.wyy % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, 2147483647), u_input.a) ^ _wgslsmith_div_vec3_i32(u_input.a, u_input.a)), -2147483648).xy); ) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_2 = true;
        switch (~(-(_wgslsmith_clamp_i32(-1, ~(-1), u_input.d) << (~func_5().a.x % 32u)))) {
            case 2147483647: {
                let var_3 = Struct_2(abs(~abs(~vec3<u32>(u_input.e.x, 0u, 43286u))), true, min(~(~vec2<u32>(global1.a.x, arg_0.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 13863u), vec2<u32>(47736u, 4294967295u)) & arg_0, global4.a, u_input.b << (abs(u_input.e) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 + 638.0), _wgslsmith_f_op_f32(exp2(139.0)))), _wgslsmith_f_op_f32(555.0 - _wgslsmith_f_op_f32(max(arg_1.b, arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921.0 * arg_2)), arg_2))));
                return var_2;
            }
            default: {
                return !false;
            }
        }
        global0 = array<bool, 13>();
        let var_3 = _wgslsmith_div_f32(-1193.0, -734.0);
        var var_4 = max(~countOneBits(u_input.c.x >> (~19900u % 32u)), u_input.a.x);
    }
    let var_2 = Struct_3(max(vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.a.x, 4294967295u, u_input.b.x), vec4<u32>(33552u, global1.a.x, global1.a.x, var_0.x)), ~4294967295u)), func_5().a));
    let var_3 = _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, global4.a.x, 20929u, 4294967295u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.e.x, 25076u, arg_0.x, 0u), vec4<u32>(global4.a.x, 4294967295u, 0u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(7638u, global1.a.x, 0u, arg_0.x), vec4<u32>(u_input.b.x, var_0.x, var_0.x, var_2.a.x), vec4<u32>(87830u, 4294967295u, var_2.a.x, 4294967295u)))), (_wgslsmith_add_vec4_u32(vec4<u32>(29227u, 122656u, 0u, global4.a.x) | vec4<u32>(var_2.a.x, 61208u, global4.a.x, u_input.b.x), ~vec4<u32>(global4.a.x, 64872u, global1.a.x, arg_0.x)) << (select(~vec4<u32>(1u, u_input.b.x, u_input.e.x, var_0.x), vec4<u32>(global1.a.x, 3738u, global1.a.x, global4.a.x) | vec4<u32>(global1.a.x, var_0.x, 0u, 25199u), !false) % vec4<u32>(32u))) | vec4<u32>(~arg_0.x, _wgslsmith_clamp_u32(select(arg_0.x, var_2.a.x, arg_3), ~1u, min(global1.a.x, 0u)), _wgslsmith_dot_vec3_u32(var_0.yxx, abs(vec3<u32>(arg_0.x, u_input.e.x, 27771u))), _wgslsmith_mod_u32(func_7(vec3<bool>(global0[_wgslsmith_index_u32(global4.a.x, 13u)], arg_3, arg_3)).x, u_input.e.x >> (1u % 32u))));
    return false & (global0[_wgslsmith_index_u32(4294967295u, 13u)] || !arg_3);
}

fn func_9(arg_0: Struct_3, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        switch (3763) {
            case 1: {
            }
            case 0: {
                var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-796.0, -100.0))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-214.0, 1007.0)))))), vec2<f32>(func_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b.x, global4.a.x, 52702u), vec4<u32>(u_input.b.x, arg_0.a.x, u_input.b.x, 4733u) ^ vec4<u32>(arg_0.a.x, global1.a.x, u_input.b.x, u_input.e.x)), Struct_2(~vec3<u32>(global4.a.x, global1.a.x, 1u), !arg_3, ~vec2<u32>(63325u, arg_0.a.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(346.0, 1067.0, 2242.0, -199.0)))), func_2(vec4<u32>(4294967295u, global4.a.x, global1.a.x, global4.a.x) | vec4<u32>(u_input.e.x, 81274u, 1u, 0u), Struct_2(vec3<u32>(2530u, 4294967295u, u_input.b.x), false, arg_0.a, vec4<f32>(2166.0, 505.0, -1404.0, 172.0)), func_2(vec4<u32>(global4.a.x, 27549u, 55151u, arg_0.a.x), Struct_2(vec3<u32>(6395u, 12748u, 17137u), true, arg_0.a, vec4<f32>(-775.0, 1170.0, -1000.0, -288.0)), Struct_1(-1249.0, 1000.0, vec2<f32>(1756.0, 1579.0), -884.0, vec4<f32>(547.0, -1000.0, -1028.0, 511.0))))).d, -834.0)));
                let var_1 = ~vec3<i32>(-2147483648, 0, -1);
                var var_2 = vec2<u32>(arg_0.a.x, _wgslsmith_mult_u32(~select(func_7(vec3<bool>(false, false, arg_2.x)).x, select(u_input.b.x, u_input.e.x, global0[_wgslsmith_index_u32(arg_0.a.x, 13u)]), true), global1.a.x));
            }
            case -14384: {
                global4 = arg_0;
                var var_0 = u_input.c.x & 619;
                let var_1 = arg_0;
                var var_2 = select(-abs(-_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), vec3<i32>(-1) * -_wgslsmith_mod_vec3_i32(vec3<i32>(-23553, 0, u_input.d), vec3<i32>(-5746, -4167, u_input.a.x)), true);
                break;
            }
            case -39083: {
                return 2147483647 ^ _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(11373, 14014), u_input.d, ~(-71657))), vec3<i32>(arg_1, u_input.a.x, 2147483647));
            }
            default: {
                let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -1248.0), 1000.0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-619.0, -107.0))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000.0, -1070.0), vec2<f32>(-149.0, 929.0), true))))), vec2<f32>(_wgslsmith_f_op_f32(-133.0 - _wgslsmith_f_op_f32(f32(-1.0) * -432.0)), _wgslsmith_f_op_f32(step(270.0, _wgslsmith_f_op_f32(abs(-307.0))))))), 384.0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1219.0, -464.0, -2080.0, 149.0) * vec4<f32>(740.0, 1000.0, -345.0, 524.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1552.0, -1436.0, 513.0, -369.0) + vec4<f32>(449.0, 1276.0, -2015.0, 276.0))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(780.0, -1697.0, -564.0, -186.0) + vec4<f32>(210.0, -110.0, 1234.0, -1229.0)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(634.0, 179.0, 432.0, -1496.0), vec4<f32>(-1000.0, -1000.0, 1749.0, -1271.0)))), vec4<f32>(_wgslsmith_f_op_f32(-433.0), 1000.0, _wgslsmith_div_f32(-1271.0, -213.0), _wgslsmith_f_op_f32(abs(-807.0)))))));
                let var_1 = vec2<i32>(u_input.d, _wgslsmith_sub_i32(select(-_wgslsmith_div_i32(arg_1, 1), _wgslsmith_dot_vec2_i32(abs(u_input.c), select(u_input.c, vec2<i32>(12277, 67961), arg_3)), _wgslsmith_f_op_f32(min(var_0.e.x, -547.0)) <= 338.0), u_input.a.x));
            }
        }
        continue;
    }
    switch (firstTrailingBit(-arg_1 >> (~select(47816u, ~0u, false) % 32u))) {
        case 1: {
            let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(140.0, 379.0, 106.0, 709.0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-465.0, 1000.0, 191.0, 173.0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1424.0, -651.0, 1062.0, -633.0) - vec4<f32>(-1283.0, -230.0, -1175.0, -1462.0))))));
            global1 = func_5();
            let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - -649.0), 1176.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545.0) * _wgslsmith_f_op_f32(-var_0.x)), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 958.0, var_0.x) + vec4<f32>(-537.0, 747.0, 1000.0, var_0.x)), vec4<f32>(var_0.x, var_0.x, -774.0, -140.0)))))));
            var var_2 = arg_3;
        }
        case 65437: {
            global4 = Struct_3(max(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.x, 1u), arg_0.a) ^ (vec2<u32>(4294967295u, 4314u) | vec2<u32>(1u, arg_0.a.x)), u_input.e) ^ _wgslsmith_div_vec2_u32(vec2<u32>(~1u, ~1u), ~(~arg_0.a)));
            global0 = array<bool, 13>();
            var var_0 = Struct_2(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~global4.a.x, _wgslsmith_dot_vec2_u32(global4.a, vec2<u32>(global1.a.x, 74456u))), _wgslsmith_sub_u32(0u, ~15251u)), u_input.b.x, global1.a.x), any(arg_2) && true, vec2<u32>(arg_0.a.x << (max(0u, arg_0.a.x) % 32u), 0u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1785.0, -1052.0, 1717.0, 2365.0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(991.0, -3356.0, -297.0, -1487.0) * vec4<f32>(1118.0, -529.0, 976.0, 1333.0)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(492.0, 440.0, 256.0, -864.0))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-157.0, -1195.0, -950.0, -2148.0)))))))));
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            }
            if (!false) {
                global1 = arg_0;
                var_0 = Struct_2(var_0.a, func_6(~(var_0.a.x | 73914u) >> (4294967295u % 32u), _wgslsmith_mod_vec3_i32(max(u_input.a, u_input.a & vec3<i32>(27005, u_input.c.x, arg_1)), u_input.a), min(u_input.c.x, _wgslsmith_mult_i32(arg_1, max(u_input.d, arg_1)))).x, firstTrailingBit(_wgslsmith_add_vec2_u32(select(min(vec2<u32>(1u, 4294967295u), vec2<u32>(var_0.c.x, u_input.b.x)), ~global4.a, 1 >= 2039), u_input.b)), vec4<f32>(1881.0, _wgslsmith_f_op_f32(-752.0), 236.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1048.0, var_0.d.x) - _wgslsmith_f_op_f32(-var_0.d.x)), 940.0))));
            }
        }
        default: {
            global2 = -(i32(-1) * -52494);
            let var_0 = firstTrailingBit(_wgslsmith_mult_i32(u_input.d, 1));
            for (var var_1 = -9996; var_1 >= 108064; var_1 -= 1) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                let var_2 = select(select(vec4<bool>(arg_2.x, arg_3, 6262u >= ~u_input.b.x, func_6(arg_0.a.x, firstLeadingBit(u_input.a), arg_1).x), !(!(!vec4<bool>(false, true, arg_2.x, true))), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], true, arg_2.x))), select(vec4<bool>(!select(global0[_wgslsmith_index_u32(global1.a.x, 13u)], arg_2.x, false), arg_2.x, arg_2.x, true), select(vec4<bool>(true, all(global3[_wgslsmith_index_u32(global1.a.x, 22u)]), 31515u == 0u, arg_3), select(!vec4<bool>(arg_3, false, false, false), vec4<bool>(true, arg_2.x, arg_3, true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], true, arg_2.x), vec4<bool>(arg_2.x, arg_3, global0[_wgslsmith_index_u32(global1.a.x, 13u)], false), true)), !select(vec4<bool>(arg_2.x, arg_3, true, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true, global0[_wgslsmith_index_u32(58943u, 13u)], true), vec4<bool>(global0[_wgslsmith_index_u32(global4.a.x, 13u)], arg_2.x, false, true))), false), arg_2.x);
                global3 = array<vec2<bool>, 22>();
            }
            switch (~countOneBits(~u_input.d)) {
                case 1: {
                    let var_1 = _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(global1.a.x, 1u, arg_0.a.x, arg_0.a.x))), _wgslsmith_add_vec4_u32(min(vec4<u32>(1u, arg_0.a.x, 4294967295u, 1u), vec4<u32>(arg_0.a.x, 66282u, 38977u, 54124u)) >> (vec4<u32>(arg_0.a.x, arg_0.a.x, 2726u, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.e.x, 31644u, 1u, global4.a.x)))) >> (_wgslsmith_clamp_vec4_u32(~(_wgslsmith_add_vec4_u32(vec4<u32>(global4.a.x, global1.a.x, 340u, u_input.b.x), vec4<u32>(108441u, 47082u, u_input.e.x, u_input.e.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, global4.a.x, 0u), vec4<u32>(78866u, global1.a.x, global1.a.x, 4294967295u), vec4<u32>(8386u, global4.a.x, 1u, global1.a.x))), select(vec4<u32>(1u, reverseBits(u_input.b.x), global1.a.x, 0u), reverseBits(select(vec4<u32>(arg_0.a.x, 0u, 4294967295u, arg_0.a.x), vec4<u32>(1u, u_input.b.x, 22908u, arg_0.a.x), vec4<bool>(arg_2.x, arg_3, false, false))), true), func_7(!select(vec3<bool>(false, true, true), arg_2, vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], true, true)))) % vec4<u32>(32u));
                    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-329.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118.0 * _wgslsmith_f_op_f32(-359.0 + _wgslsmith_f_op_f32(-1118.0)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(372.0, 633.0)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1188.0, -1349.0)))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-685.0), 1275.0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(var_1, Struct_2(var_1.zyw, global0[_wgslsmith_index_u32(global4.a.x, 13u)], vec2<u32>(45622u, u_input.e.x), vec4<f32>(-1000.0, 652.0, -604.0, 818.0)), func_2(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, arg_0.a.x), Struct_2(vec3<u32>(0u, 17125u, 4294967295u), true, arg_0.a, vec4<f32>(1239.0, -398.0, -2188.0, -1817.0)), Struct_1(-316.0, -1174.0, vec2<f32>(1513.0, -824.0), -1808.0, vec4<f32>(-2169.0, -1428.0, -1234.0, -189.0)))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2202.0)) * _wgslsmith_f_op_f32(-207.0 - 559.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1091.0 + -1074.0) * 332.0), -2273.0)));
                    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.e.x, _wgslsmith_f_op_f32(f32(-1.0) * -1066.0)) * _wgslsmith_f_op_f32(round(var_2.a)))));
                    let var_4 = ~(~var_1.zx);
                }
                case -2147483648: {
                    let var_1 = !(!(arg_3 & false));
                    global1 = arg_0;
                    var var_2 = Struct_3(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(max(u_input.b, vec2<u32>(15413u, 1u)), ~u_input.b), ~(~arg_0.a.x), 4294967295u), 41936u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), arg_0.a) % 32u)));
                }
                case -55671: {
                    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134.0))));
                    var var_2 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(-1) * -(~u_input.a)), abs(vec3<i32>(-var_0, arg_1, ~(~var_0))));
                    global2 = _wgslsmith_sub_i32(-1, min(-1, 0));
                }
                default: {
                }
            }
            var var_1 = 4342;
        }
    }
    switch (u_input.c.x) {
        case 0: {
            global0 = array<bool, 13>();
            let var_0 = -13287;
            if (true) {
                var var_1 = ~(-_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.xx), u_input.a.xy));
                var_1 = u_input.a.x;
            }
        }
        case -2147483648: {
            var var_0 = Struct_1(-437.0, _wgslsmith_f_op_f32(trunc(func_2(max(vec4<u32>(29535u, 29321u, global1.a.x, 60766u), ~vec4<u32>(5342u, 14833u, 55847u, 4294967295u)), Struct_2(firstLeadingBit(vec3<u32>(u_input.b.x, 1u, global4.a.x)), global0[_wgslsmith_index_u32(82937u, 13u)] || arg_2.x, global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-528.0, 2010.0, 144.0, -1779.0))), Struct_1(587.0, _wgslsmith_div_f32(-532.0, 710.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2495.0, -611.0)), _wgslsmith_f_op_f32(floor(-552.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(294.0, -919.0, -542.0, -382.0)))).b)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(916.0 * -787.0))), 624.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -391.0)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1239.0, 1164.0), _wgslsmith_f_op_f32(abs(-1242.0)), _wgslsmith_f_op_f32(-150.0), _wgslsmith_f_op_f32(-1000.0 - -352.0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-223.0, 1045.0, 528.0, 906.0))))))));
            var_0 = func_2(~(~(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, global1.a.x, u_input.b.x), vec4<u32>(0u, 0u, 34410u, u_input.e.x)) | (vec4<u32>(1u, 1u, global1.a.x, 51092u) & vec4<u32>(52296u, 27279u, global4.a.x, arg_0.a.x)))), Struct_2(~reverseBits(countOneBits(vec3<u32>(3007u, arg_0.a.x, 28354u))), all(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_3), vec4<bool>(true, arg_3, arg_2.x, false), vec4<bool>(true, global0[_wgslsmith_index_u32(68501u, 13u)], arg_2.x, global0[_wgslsmith_index_u32(56570u, 13u)]))) & !(!global0[_wgslsmith_index_u32(45411u, 13u)]), arg_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1665.0, var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x))), func_2(_wgslsmith_add_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(63780u, 0u, arg_0.a.x, global4.a.x), vec4<u32>(global4.a.x, global4.a.x, 0u, global4.a.x)), ~vec4<u32>(global1.a.x, u_input.b.x, arg_0.a.x, 2032u)), vec4<u32>(52174u, global1.a.x, 4294967295u, 46992u) & ~vec4<u32>(1u, u_input.e.x, arg_0.a.x, global1.a.x)), Struct_2(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.b.x, arg_0.a.x, 49368u), vec3<u32>(29924u, global1.a.x, arg_0.a.x)), vec3<u32>(28042u, 27385u, 1u)), false, global4.a, _wgslsmith_f_op_vec4_f32(-var_0.e)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d - -1179.0))), var_0.d, vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(895.0, var_0.b) - 1471.0), vec4<f32>(-656.0, _wgslsmith_f_op_f32(-var_0.e.x), -100.0, var_0.d))));
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1830.0 - 1150.0)));
                let var_2 = Struct_2(vec3<u32>(_wgslsmith_mod_u32(~(~31741u), _wgslsmith_sub_u32(min(1u, u_input.e.x), 1u)), arg_0.a.x, ~min(abs(1u), 1u >> (45897u % 32u))), false, _wgslsmith_div_vec2_u32(func_7(select(arg_2, arg_2, select(arg_2, vec3<bool>(arg_2.x, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], arg_3), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], arg_3)))).wx, u_input.e), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-980.0, var_1, 756.0, 251.0)) + var_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e) + _wgslsmith_f_op_vec4_f32(var_0.e + var_0.e))));
            }
        }
        case 43235: {
            var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-562.0, _wgslsmith_f_op_f32(-104.0)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(-1031.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))))));
            global1 = arg_0;
            var var_1 = true;
            let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(var_0.x, var_0.x)))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2011.0 + -1954.0), _wgslsmith_f_op_f32(exp2(var_0.x))))));
        }
        case -52014: {
            var var_0 = Struct_2(select(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(1u, global1.a.x, 5034u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1617u, 67912u), vec3<u32>(arg_0.a.x, u_input.e.x, 0u)) ^ ~vec3<u32>(1u, u_input.b.x, 4294967295u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.a.x, 4294967295u, global4.a.x), vec3<u32>(u_input.e.x, arg_0.a.x, 36007u)) ^ _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, 0u, 0u), vec3<u32>(12366u, u_input.e.x, u_input.b.x)), reverseBits(vec3<u32>(1u, global4.a.x, 664u))), !vec3<bool>(all(vec2<bool>(arg_3, true)), arg_2.x, arg_2.x)), !global0[_wgslsmith_index_u32(func_7(!arg_2).x, 13u)], vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(44066u, global1.a.x, global1.a.x, arg_0.a.x) ^ vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(global1.a.x, global4.a.x, u_input.e.x, arg_0.a.x), vec4<u32>(47709u, global1.a.x, 6039u, 0u))) & ~34278u, ~(~arg_0.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1870.0)), -202.0, _wgslsmith_div_f32(-882.0, 636.0), _wgslsmith_f_op_f32(2293.0 - 873.0)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-434.0, -1695.0, 528.0, -2226.0) - vec4<f32>(-316.0, 809.0, -2237.0, 366.0)), vec4<f32>(-1859.0, -1514.0, 1159.0, 242.0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-541.0, 276.0, 880.0, -155.0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-623.0, -1058.0, -564.0, 299.0) - vec4<f32>(541.0, -1751.0, -528.0, -508.0))))));
            switch (_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(max(~u_input.a, -u_input.a)), ~vec3<i32>(11858, arg_1, u_input.a.x), vec3<i32>(func_4(arg_0.a, _wgslsmith_mult_vec2_i32(u_input.c, u_input.c), global4.a.x, var_0.a), _wgslsmith_div_i32(arg_1 | 2147483647, max(2147483647, -41813)), 0)), vec3<i32>(abs(countOneBits(-arg_1)), -1 ^ _wgslsmith_add_i32(-arg_1, ~(-2147483648)), -2147483648))) {
                case 1: {
                    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.d.zx, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.zw)))), (1u > countOneBits(global1.a.x)) & !(global0[_wgslsmith_index_u32(2390u, 13u)] || true))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x) - var_0.d.yz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-347.0, 681.0))), _wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(global4.a.x, global4.a.x, 0u, 34118u), Struct_2(var_0.a, false, vec2<u32>(4294967295u, arg_0.a.x), var_0.d), Struct_1(var_0.d.x, 2232.0, var_0.d.wz, -201.0, vec4<f32>(-3003.0, -1057.0, var_0.d.x, 823.0))).c + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-661.0, 1391.0)))), false)), vec2<f32>(var_0.d.x, var_0.d.x))));
                    let var_2 = select(select(vec4<bool>(true, true, false, true), select(!select(vec4<bool>(false, true, var_0.b, arg_3), vec4<bool>(var_0.b, true, false, global0[_wgslsmith_index_u32(39878u, 13u)]), arg_3), vec4<bool>(select(true, false, arg_2.x), arg_3 | arg_3, false & false, !arg_2.x), select(select(vec4<bool>(global0[_wgslsmith_index_u32(global4.a.x, 13u)], arg_2.x, global0[_wgslsmith_index_u32(37754u, 13u)], var_0.b), vec4<bool>(false, var_0.b, true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 13u)], true, arg_2.x, arg_2.x)), select(vec4<bool>(false, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], var_0.b, false, false), false), global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), (u_input.c.x >> (_wgslsmith_dot_vec2_u32(global4.a, vec2<u32>(var_0.c.x, 4294967295u)) % 32u)) != 0), vec4<bool>(any(select(!vec4<bool>(false, arg_3, arg_2.x, true), vec4<bool>(var_0.b, false, global0[_wgslsmith_index_u32(90261u, 13u)], true), var_0.b)), false, var_1.x != _wgslsmith_f_op_f32(trunc(-533.0)), arg_2.x), !select(vec4<bool>(false, func_6(4294967295u, u_input.a, arg_1).x, any(vec4<bool>(arg_2.x, arg_3, true, arg_2.x)), arg_3), select(!vec4<bool>(false, var_0.b, global0[_wgslsmith_index_u32(1760u, 13u)], false), select(vec4<bool>(var_0.b, true, false, global0[_wgslsmith_index_u32(global4.a.x, 13u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.x, 13u)], false, false), true), !vec4<bool>(arg_3, global0[_wgslsmith_index_u32(var_0.c.x, 13u)], false, false)), !false));
                    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1037.0 + -690.0), 1509.0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x * var_0.d.x)))), _wgslsmith_f_op_vec2_f32(select(var_0.d.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, -1065.0), var_0.d.zz, vec2<bool>(arg_3, global0[_wgslsmith_index_u32(arg_0.a.x, 13u)]))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), var_0.d.zy))), vec2<bool>(!true, var_2.x || true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), -474.0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 599.0) - _wgslsmith_f_op_vec2_f32(-var_0.d.yy)))));
                    let var_3 = Struct_2((countOneBits(~vec3<u32>(arg_0.a.x, global1.a.x, 0u)) & ~abs(var_0.a)) & ((var_0.a ^ (vec3<u32>(4294967295u, 12402u, global4.a.x) ^ vec3<u32>(var_0.c.x, global4.a.x, u_input.e.x))) >> (~(~var_0.a) % vec3<u32>(32u))), func_8(_wgslsmith_sub_vec2_u32(abs(~u_input.e), firstLeadingBit(global4.a)), func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(9549u, 58592u, 4294967295u, var_0.c.x), vec4<u32>(global1.a.x, 17070u, 1u, 74370u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 84445u, 1u), vec4<u32>(12259u, 8445u, global1.a.x, global4.a.x))), Struct_2(vec3<u32>(global1.a.x, arg_0.a.x, 26884u), false, u_input.b, vec4<f32>(var_0.d.x, 1016.0, var_1.x, var_0.d.x)), Struct_1(172.0, -1082.0, var_0.d.zw, -178.0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -245.0, var_0.d.x)))), _wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + _wgslsmith_f_op_f32(-var_1.x)), !(!true))), false), global4.a, var_0.d);
                    var var_4 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.a.x, 75360u), ~13630u << (32133u % 32u)), var_0.a.x, 15493u), !(!all(!vec2<bool>(true, true))), select(firstTrailingBit(~arg_0.a | vec2<u32>(0u, arg_0.a.x)), ~vec2<u32>(4294967295u >> (u_input.e.x % 32u), ~var_0.c.x), !(!vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-func_2(vec4<u32>(global1.a.x, 24947u, global1.a.x, 785u) | vec4<u32>(90670u, 1u, 60778u, var_0.c.x), var_3, Struct_1(-1907.0, 439.0, vec2<f32>(158.0, 188.0), var_3.d.x, vec4<f32>(235.0, -1896.0, 1928.0, 219.0))).e))));
                }
                default: {
                    let var_1 = u_input.c.x;
                }
            }
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_1 = vec3<u32>(4294967295u, ~global1.a.x, _wgslsmith_mod_u32(215u, _wgslsmith_mod_u32(_wgslsmith_add_u32(global1.a.x, arg_0.a.x) & global4.a.x, var_0.a.x)));
            }
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            }
        }
        default: {
            global0 = array<bool, 13>();
            for (var var_0 = -26977; all(vec3<bool>(true, true, all(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])))); var_0 += 1) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                var var_1 = firstLeadingBit(u_input.a.xy);
            }
            global4 = Struct_3(firstLeadingBit(arg_0.a));
        }
    }
    let var_0 = Struct_2(reverseBits(abs(~vec3<u32>(39336u, global4.a.x, global1.a.x) | ~vec3<u32>(u_input.e.x, 4294967295u, 3503u))), all(vec3<bool>(false, func_6(u_input.e.x | 4294967295u, u_input.a, ~(-50690)).x, any(!arg_2))), vec2<u32>(global4.a.x, 1u & _wgslsmith_sub_u32(firstTrailingBit(4294967295u), 1380u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, 1000.0, 869.0, 773.0) * vec4<f32>(-173.0, 2298.0, -1070.0, 428.0))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-259.0, 1030.0, 1000.0, -1482.0), vec4<f32>(808.0, -1000.0, 878.0, 636.0))))))));
    for (var var_1 = -65604; ; var_1 += 1) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        global4 = func_5();
        global4 = Struct_3(var_0.a.yy);
        var var_2 = !arg_2.xy;
    }
    return 2466;
}

fn func_1(arg_0: i32) -> vec2<i32> {
    for (; ; ) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
    }
    var var_0 = vec3<i32>(arg_0, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(-53535, u_input.a.x), u_input.d), func_9(Struct_3(global4.a), select(~arg_0, -1, true), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 13u)], !global0[_wgslsmith_index_u32(global4.a.x, 13u)], 1000.0 <= 1657.0), func_8(select(global4.a, vec2<u32>(global4.a.x, 30821u), global0[_wgslsmith_index_u32(global1.a.x, 13u)]), func_2(vec4<u32>(8221u, 45579u, u_input.b.x, global4.a.x), Struct_2(vec3<u32>(1u, u_input.e.x, 4294967295u), false, global4.a, vec4<f32>(437.0, -418.0, 1034.0, 910.0)), Struct_1(-1000.0, -3014.0, vec2<f32>(556.0, 1324.0), 276.0, vec4<f32>(335.0, -1000.0, 343.0, 897.0))), _wgslsmith_f_op_f32(-1199.0), global0[_wgslsmith_index_u32(global4.a.x, 13u)]))) << (vec3<u32>(_wgslsmith_sub_u32(abs(4294967295u), 1u) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(22140u, u_input.e.x), 39855u | 4294967295u) % 32u), global4.a.x, abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global4.a, global4.a), ~vec2<u32>(global4.a.x, 75530u)))) % vec3<u32>(32u));
    var var_1 = Struct_2(vec3<u32>(global4.a.x, ~(~_wgslsmith_mod_u32(4294967295u, 35819u)), 1u), 78718u <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global4.a.x, global1.a.x), vec4<u32>(1u, global4.a.x, 1u, 1u)), func_7(!func_6(2085u ^ 0u, ~vec3<i32>(-25585, 0, arg_0), i32(-1) * -1)).wy, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(func_2(vec4<u32>(global4.a.x, 72204u, u_input.b.x, global1.a.x), Struct_2(vec3<u32>(global4.a.x, 4294967295u, global1.a.x), false, vec2<u32>(u_input.e.x, global4.a.x), vec4<f32>(-147.0, 466.0, 1319.0, 814.0)), Struct_1(324.0, 1160.0, vec2<f32>(-1343.0, -480.0), 1092.0, vec4<f32>(-609.0, 405.0, 631.0, 379.0))).a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1045.0) - _wgslsmith_f_op_f32(-1896.0)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(563.0, 2314.0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(764.0, 552.0))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-611.0, 584.0, -609.0, -135.0) + vec4<f32>(1333.0, -940.0, 1312.0, 1060.0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-681.0, 704.0, -516.0, 1561.0) + vec4<f32>(310.0, -218.0, -1179.0, 521.0))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(830.0, 707.0, 673.0, -2109.0) - vec4<f32>(586.0, -754.0, -985.0, -2012.0)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-930.0, -554.0, 717.0, -1570.0), vec4<f32>(-778.0, 791.0, -1569.0, 568.0), vec4<bool>(false, global0[_wgslsmith_index_u32(33265u, 13u)], global0[_wgslsmith_index_u32(global4.a.x, 13u)], false)))))));
    global1 = func_5();
    var var_2 = !(!true);
    return ~(var_0.zy << (firstTrailingBit(~(global1.a >> (var_1.c % vec2<u32>(32u)))) % vec2<u32>(32u)));
}

fn func_10(arg_0: bool, arg_1: vec2<i32>) -> bool {
    let var_0 = !global3[_wgslsmith_index_u32(u_input.e.x, 22u)];
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        if (all(vec2<bool>(764.0 >= 745.0, !(!false)))) {
            var var_1 = countOneBits(~vec3<u32>(~(2266u & 1u), _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(0u, 7746u)), _wgslsmith_clamp_u32(func_5().a.x, global1.a.x & 4294967295u, u_input.b.x)));
            var var_2 = func_5();
            var var_3 = Struct_2(~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(30744u, 57316u, global4.a.x) << (vec3<u32>(15469u, global4.a.x, var_2.a.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, 0u, 0u))), ~(~(~var_1.x)) <= (global1.a.x | u_input.e.x), var_2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1340.0 * _wgslsmith_f_op_f32(302.0 * 394.0)), -1541.0, _wgslsmith_f_op_f32(-func_2(vec4<u32>(u_input.b.x, 2034u, global1.a.x, var_2.a.x), Struct_2(vec3<u32>(7659u, u_input.b.x, 1u), global0[_wgslsmith_index_u32(global1.a.x, 13u)], u_input.e, vec4<f32>(-561.0, -177.0, 2035.0, 1000.0)), Struct_1(-497.0, -803.0, vec2<f32>(-1085.0, 203.0), 102.0, vec4<f32>(-1743.0, 755.0, 1000.0, -644.0))).e.x), 387.0) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-939.0, 1000.0, -179.0, 923.0) * vec4<f32>(-1962.0, 651.0, 1000.0, 1682.0)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-594.0, 457.0, -931.0, -2251.0)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850.0, -1000.0, 223.0, -485.0))))))));
        }
        global3 = array<vec2<bool>, 22>();
        for (var var_1 = select(2147483647, _wgslsmith_add_i32(_wgslsmith_div_i32(i32(-1) * -1, 25541 ^ _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), _wgslsmith_mod_i32(firstLeadingBit(0), arg_1.x)), !((global1.a.x >= global1.a.x) & false)); var_1 <= 1; var_1 += 1) {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        }
    }
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-980.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-172.0, -1462.0)) + _wgslsmith_f_op_f32(-1695.0 + 346.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1412.0))))));
    let var_2 = Struct_3(u_input.b << (~global4.a % vec2<u32>(32u)));
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
    }
    return all(vec4<bool>((!true | all(vec4<bool>(arg_0, var_0.x, arg_0, true))) || true, !arg_0, var_0.x, !true));
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
        for (var var_0 = _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mult_i32(countOneBits(-29786), -u_input.c.x) | (_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.d, u_input.a.x, -63156)) | min(u_input.c.x, -11363))), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.c.x, 4754, 0, u_input.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 24695, -28764), vec4<i32>(973, 1, 2147483647, u_input.d))), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(-2147483648, 1 & u_input.a.x), ~firstLeadingBit(2147483647), -2147483648))); any(!vec3<bool>(func_10(all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)])), func_1(2147483647)), (global0[_wgslsmith_index_u32(4045u, 13u)] && false) | !false, !func_8(global4.a, Struct_1(-1888.0, -897.0, vec2<f32>(575.0, -1000.0), -893.0, vec4<f32>(-852.0, 1359.0, -651.0, -158.0)), 276.0, true))); var_0 -= 1) {
            if (LOOP_COUNTERS[28u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            let var_1 = func_2(max(vec4<u32>(~global4.a.x, ~u_input.b.x, max(global4.a.x, u_input.b.x), 0u | global1.a.x) >> ((vec4<u32>(0u, global1.a.x, global4.a.x, 26117u) | (vec4<u32>(u_input.e.x, 4294967295u, 0u, global4.a.x) >> (vec4<u32>(global1.a.x, u_input.e.x, 4294967295u, global4.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), reverseBits(func_7(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(96802u, 13u)])) >> (func_7(vec3<bool>(global0[_wgslsmith_index_u32(36451u, 13u)], global0[_wgslsmith_index_u32(global1.a.x, 13u)], global0[_wgslsmith_index_u32(39210u, 13u)])) % vec4<u32>(32u)))), Struct_2(vec3<u32>(~global1.a.x, _wgslsmith_div_u32(~0u, global1.a.x), _wgslsmith_add_u32(global4.a.x, _wgslsmith_add_u32(0u, global4.a.x))), global0[_wgslsmith_index_u32(u_input.b.x, 13u)], ~(~select(global4.a, u_input.e, true)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -2006.0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(637.0, -233.0) + _wgslsmith_f_op_f32(min(-1000.0, -388.0))), 1786.0, _wgslsmith_f_op_f32(-func_2(vec4<u32>(global4.a.x, 61943u, 55629u, global1.a.x), Struct_2(vec3<u32>(u_input.e.x, global4.a.x, 6271u), true, global1.a, vec4<f32>(-721.0, 1000.0, -1000.0, 903.0)), Struct_1(193.0, -1097.0, vec2<f32>(-788.0, -1000.0), 1000.0, vec4<f32>(-1192.0, -2038.0, 1000.0, 630.0))).c.x))), func_2(~max(~vec4<u32>(82796u, 1u, global4.a.x, 0u), max(vec4<u32>(global1.a.x, 0u, 55363u, global1.a.x), vec4<u32>(global1.a.x, global1.a.x, global4.a.x, global1.a.x))), Struct_2(~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, u_input.e.x), vec3<u32>(21356u, 4294967295u, u_input.e.x)), all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], true)), ~(~vec2<u32>(83480u, global1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1355.0, -807.0, -2337.0, 1000.0))))), Struct_1(func_2(vec4<u32>(17u, global1.a.x, u_input.e.x, 9570u), Struct_2(vec3<u32>(u_input.b.x, global1.a.x, 35347u), true, vec2<u32>(global1.a.x, 1u), vec4<f32>(-632.0, 373.0, 1182.0, -486.0)), func_2(vec4<u32>(1u, global4.a.x, 25748u, u_input.e.x), Struct_2(vec3<u32>(4294967295u, 50514u, 1u), true, global1.a, vec4<f32>(-476.0, -111.0, -839.0, -580.0)), Struct_1(830.0, 1433.0, vec2<f32>(1878.0, 141.0), -1772.0, vec4<f32>(-388.0, -1116.0, 1289.0, -1440.0)))).d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-787.0), _wgslsmith_f_op_f32(-853.0 * -2163.0))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-922.0, 598.0), vec2<f32>(458.0, 2198.0))))), -1298.0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(418.0, 651.0, 2078.0, 474.0)))));
        }
        continue;
    }
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -104.0))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1821.0)), _wgslsmith_f_op_f32(-357.0 + -772.0))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2211.0 * _wgslsmith_f_op_f32(-1599.0))))), vec2<f32>(_wgslsmith_f_op_f32(-func_2(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 81991u, u_input.b.x, 118851u), vec4<u32>(global1.a.x, global4.a.x, global4.a.x, u_input.b.x)), Struct_2(vec3<u32>(global4.a.x, u_input.e.x, 4294967295u), global0[_wgslsmith_index_u32(1u, 13u)], vec2<u32>(0u, u_input.b.x), vec4<f32>(-122.0, -1432.0, -1000.0, -1000.0)), Struct_1(-454.0, -727.0, vec2<f32>(2081.0, 797.0), -1737.0, vec4<f32>(-1505.0, 1318.0, 171.0, -1226.0))).b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(128.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1809.0, -786.0)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1084.0, -592.0, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1462.0)))), any(vec4<bool>(true, global0[_wgslsmith_index_u32(35131u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], false)) && (u_input.e.x >= global4.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1254.0, 533.0, _wgslsmith_f_op_f32(f32(-1.0) * -488.0), _wgslsmith_f_op_f32(select(653.0, 266.0, global0[_wgslsmith_index_u32(u_input.b.x, 13u)])))))));
    switch (firstLeadingBit(u_input.c.x)) {
        case 2147483647: {
            var var_2 = vec4<bool>(global0[_wgslsmith_index_u32(global1.a.x, 13u)], any(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x << (abs(global1.a.x) % 32u)), 22u)]), !global0[_wgslsmith_index_u32(abs(~abs(global1.a.x)), 13u)], false);
        }
        case -1: {
        }
        case -2147483648: {
            var var_2 = var_1.e.x;
            if (false || true) {
                let var_3 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, 34283u, u_input.e.x) ^ ~vec4<u32>(4294967295u, global4.a.x, global1.a.x, global4.a.x), vec4<u32>(1u, 8226u, _wgslsmith_div_u32(0u, 1u), u_input.b.x | 4294967295u)), _wgslsmith_mod_u32(4294967295u, 0u), ~global4.a.x), !false, vec2<u32>(_wgslsmith_mod_u32(~min(u_input.b.x, 1u), max(global1.a.x, ~15529u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(53210u, u_input.e.x, 38768u, 22295u), func_7(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 13u)], global0[_wgslsmith_index_u32(u_input.e.x, 13u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(54057u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global4.a.x, u_input.e.x, 4294967295u, global1.a.x), vec4<u32>(4294967295u, global4.a.x, 33881u, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(525.0, var_1.a, 733.0, -181.0) * var_1.e))) * vec4<f32>(-546.0, _wgslsmith_div_f32(128.0, var_1.e.x), _wgslsmith_f_op_f32(-2006.0 * -742.0), _wgslsmith_div_f32(-112.0, var_1.d))))));
                let var_4 = Struct_1(var_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202.0 - _wgslsmith_f_op_f32(-1578.0 - -121.0)) + _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-150.0 * _wgslsmith_f_op_f32(var_3.d.x - var_3.d.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.e.ww)), vec2<f32>(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(global1.a.x, var_3.c.x, global1.a.x, 0u), vec4<u32>(4294967295u, 4294967295u, global4.a.x, var_3.a.x)), Struct_2(vec3<u32>(11119u, global4.a.x, global4.a.x), true, var_3.a.yz, vec4<f32>(137.0, var_1.b, var_3.d.x, -1066.0)), Struct_1(-708.0, 1760.0, vec2<f32>(var_1.b, 578.0), 216.0, var_3.d)).e.x, _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(-699.0)))), var_1.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, var_1.e.x, -581.0, -1085.0) + var_3.d))) * var_1.e))));
                var var_5 = Struct_1(var_4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1134.0)))), _wgslsmith_f_op_vec2_f32(-var_3.d.yx), -169.0, vec4<f32>(var_4.e.x, 1000.0, 2522.0, _wgslsmith_f_op_f32(185.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(456.0 + 1113.0)))));
                let var_6 = 70777u;
            }
            let var_3 = Struct_2(vec3<u32>(~_wgslsmith_div_u32(47592u, global4.a.x) & u_input.e.x, 7426u, 1u), false, ~(~vec2<u32>(13406u, u_input.e.x) & _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(1u, 14714u))) | vec2<u32>(48209u, _wgslsmith_mod_u32(u_input.e.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.e + _wgslsmith_f_op_vec4_f32(-var_1.e))));
            switch (0) {
                case -1: {
                    let var_4 = _wgslsmith_f_op_f32(step(-1109.0, func_2(_wgslsmith_sub_vec4_u32(min(~vec4<u32>(26893u, var_3.a.x, 1u, 0u), abs(vec4<u32>(1u, u_input.e.x, 95158u, 0u))), vec4<u32>(min(75732u, u_input.b.x), var_3.a.x, 4294967295u, 7772u)), var_3, Struct_1(var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e.x, 220.0) - _wgslsmith_f_op_f32(min(363.0, var_1.a))), _wgslsmith_f_op_vec2_f32(max(var_1.c, vec2<f32>(-852.0, var_1.e.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2124.0, var_1.c.x, var_3.d.x, 755.0) - vec4<f32>(-621.0, 1716.0, -1163.0, -716.0)))).e.x));
                    global0 = array<bool, 13>();
                    var var_5 = select(!(!vec3<bool>(func_10(global0[_wgslsmith_index_u32(global1.a.x, 13u)], u_input.c), global0[_wgslsmith_index_u32(~global4.a.x, 13u)], global0[_wgslsmith_index_u32(~u_input.b.x, 13u)])), vec3<bool>(false, -1437.0 >= var_3.d.x, true), true);
                }
                default: {
                    global1 = func_5();
                }
            }
        }
        case -18698: {
            for (var var_2 = 0; var_2 <= 0; var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)) - 275.0) - func_2(vec4<u32>(global1.a.x, ~51524u, ~(~9586u), u_input.b.x), Struct_2(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.x, 59419u, 1u), vec3<u32>(u_input.e.x, global4.a.x, global4.a.x))), func_10(!true, u_input.a.zy), _wgslsmith_sub_vec2_u32(global1.a, vec2<u32>(82676u, global1.a.x)) | func_5().a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.e) + var_1.e)), Struct_1(var_1.e.x, -1529.0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.e.wy, var_1.e.zw)), var_1.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1.e))))).d)) {
                if (LOOP_COUNTERS[29u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
                let var_3 = _wgslsmith_mod_u32(u_input.e.x, global1.a.x);
                continue;
            }
            var var_2 = Struct_3(func_7(func_6(_wgslsmith_sub_u32(global4.a.x, 4294967295u) >> (u_input.b.x % 32u), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), select(vec3<i32>(-2147483648, u_input.c.x, -18876), vec3<i32>(0, -2147483648, 0), false)), i32(-1) * -2147483648)).yz);
            switch (func_9(func_5(), 49019, func_6(global4.a.x, u_input.a, -8808), global0[_wgslsmith_index_u32(u_input.e.x, 13u)])) {
                default: {
                    let var_3 = select(!select(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 13u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(1299u, 13u)], global0[_wgslsmith_index_u32(36864u, 13u)]), vec3<bool>(select(true, false, global0[_wgslsmith_index_u32(global1.a.x, 13u)]), true, global0[_wgslsmith_index_u32(global4.a.x, 13u)])), func_6(global1.a.x, u_input.a | ~(~vec3<i32>(u_input.c.x, 1698, u_input.a.x)), _wgslsmith_mult_i32(51292, -2147483647)), vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(1u, 16263u)), 13u)] || !all(vec4<bool>(global0[_wgslsmith_index_u32(4624u, 13u)], false, global0[_wgslsmith_index_u32(1u, 13u)], false)), all(select(!vec4<bool>(global0[_wgslsmith_index_u32(global1.a.x, 13u)], global0[_wgslsmith_index_u32(var_2.a.x, 13u)], global0[_wgslsmith_index_u32(global1.a.x, 13u)], global0[_wgslsmith_index_u32(39660u, 13u)]), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(1351u, 13u)], false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 4294967295u, var_2.a.x), vec3<u32>(global1.a.x, 1u, 0u)), 13u)])), global0[_wgslsmith_index_u32(1u << (global4.a.x % 32u), 13u)]));
                    var_2 = func_5();
                }
            }
            global4 = Struct_3(u_input.e);
        }
        default: {
            var var_2 = func_5();
            var_0 = -1003.0;
            switch (_wgslsmith_dot_vec3_i32(-vec3<i32>(-u_input.a.x, u_input.c.x, -(-42933 >> (global1.a.x % 32u))), vec3<i32>(0, ~abs(-18768), ~_wgslsmith_mult_i32(-40488, u_input.d)))) {
                case 21098: {
                    var_1 = func_2(vec4<u32>(26709u, abs(1u), global1.a.x, 35596u), Struct_2(vec3<u32>(abs(4294967295u), 53462u, ~var_2.a.x) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, 9910u), vec3<u32>(global1.a.x, 4294967295u, var_2.a.x)) << (firstTrailingBit(vec3<u32>(0u, global4.a.x, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), all(func_6(_wgslsmith_sub_u32(global4.a.x, global4.a.x), vec3<i32>(u_input.a.x, 48440, -57387), u_input.a.x >> (global4.a.x % 32u)).zz), _wgslsmith_div_vec2_u32(u_input.e, reverseBits(vec2<u32>(u_input.b.x, 6046u))) >> (~vec2<u32>(11149u, 84806u) % vec2<u32>(32u)), var_1.e), Struct_1(var_1.d, 1605.0, var_1.c, -1441.0, var_1.e));
                    var var_3 = 709.0;
                    var var_4 = Struct_2(_wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(~vec3<u32>(global4.a.x, global4.a.x, 50969u), ~vec3<u32>(1u, 30575u, 1u))), ~min(~vec3<u32>(u_input.b.x, var_2.a.x, var_2.a.x), vec3<u32>(global1.a.x, global1.a.x, 60658u) & vec3<u32>(global4.a.x, 4294967295u, 69104u))), any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], global0[_wgslsmith_index_u32(var_2.a.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(53623u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2.a.x, 13u)], false, global0[_wgslsmith_index_u32(global1.a.x, 13u)], false), true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(global4.a.x, 13u)]), global0[_wgslsmith_index_u32(38545u, 13u)] && true)) & func_8(~min(global1.a, global1.a), func_2(vec4<u32>(4294967295u, global1.a.x, 37151u, var_2.a.x), Struct_2(vec3<u32>(var_2.a.x, 1u, u_input.e.x), false, vec2<u32>(global1.a.x, global4.a.x), vec4<f32>(431.0, var_1.e.x, 991.0, 122.0)), Struct_1(var_1.d, -217.0, var_1.e.xz, 228.0, vec4<f32>(-1726.0, var_1.e.x, var_1.b, var_1.c.x))), -1520.0, any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], true, false)) | any(vec2<bool>(global0[_wgslsmith_index_u32(var_2.a.x, 13u)], global0[_wgslsmith_index_u32(2u, 13u)]))), vec2<u32>(~select(global1.a.x, countOneBits(34493u), 0 >= u_input.c.x), 4294967295u), var_1.e);
                    let var_5 = !func_6(~var_2.a.x, firstTrailingBit(~firstLeadingBit(u_input.a)), 10624).yx;
                    var var_6 = abs(-(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)));
                }
                case -40397: {
                }
                default: {
                    var var_3 = global0[_wgslsmith_index_u32(global4.a.x, 13u)];
                    global3 = array<vec2<bool>, 22>();
                    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-454.0))) * -1682.0))) * -2549.0);
                    var var_5 = Struct_2(vec3<u32>(~max(1u, ~var_2.a.x), max(~firstLeadingBit(41271u), _wgslsmith_add_u32(u_input.e.x, ~0u)), abs(var_2.a.x)), !global0[_wgslsmith_index_u32(~((4294967295u >> (0u % 32u)) ^ global1.a.x), 13u)], global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_1.e))) * func_2(vec4<u32>(0u, 56042u, 4294967295u, 1u), Struct_2(vec3<u32>(4294967295u, 31147u, 0u), global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global1.a, var_1.e), func_2(vec4<u32>(global1.a.x, 0u, var_2.a.x, 31584u), Struct_2(vec3<u32>(var_2.a.x, 0u, u_input.e.x), false, vec2<u32>(4294967295u, var_2.a.x), var_1.e), Struct_1(var_1.e.x, -1219.0, vec2<f32>(var_1.d, var_1.e.x), -423.0, var_1.e))).e) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1636.0, -2175.0, -800.0, var_1.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.a, var_1.d, -286.0))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.e.x, -1000.0, 2269.0, 871.0))))));
                }
            }
        }
    }
    global0 = array<bool, 13>();
    let var_2 = Struct_3(~(~vec2<u32>(~global4.a.x, u_input.b.x)));
    let var_3 = vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_add_u32(func_7(vec3<bool>(false, false, false)).x, _wgslsmith_div_u32(16602u, 41685u)), ~(~77634u)), countOneBits(_wgslsmith_sub_u32(global1.a.x, countOneBits(~4294967295u))), var_2.a.x, var_2.a.x);
    switch (min(16874, u_input.d)) {
        case 2147483647: {
        }
        case 0: {
            var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.c)));
        }
        default: {
            global4 = var_2;
            var var_4 = global0[_wgslsmith_index_u32(13527u, 13u)];
        }
    }
    let var_4 = func_2(var_3, Struct_2(vec3<u32>(global1.a.x, 16563u << (global1.a.x % 32u), global1.a.x), any(vec4<bool>(!global0[_wgslsmith_index_u32(global4.a.x, 13u)], false && global0[_wgslsmith_index_u32(37434u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], 1u != global1.a.x)), _wgslsmith_add_vec2_u32(select(vec2<u32>(var_3.x, var_2.a.x), ~u_input.b, global3[_wgslsmith_index_u32(firstLeadingBit(global4.a.x), 22u)]), select(vec2<u32>(global4.a.x, var_2.a.x) >> (global4.a % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 65681u), var_2.a), global3[_wgslsmith_index_u32(~global1.a.x, 22u)])), var_1.e), Struct_1(_wgslsmith_f_op_f32(-1285.0 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1151.0), _wgslsmith_f_op_f32(var_1.a * -1036.0)))), _wgslsmith_f_op_f32(-var_1.d), var_1.e.xw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(169.0, 261.0)) * _wgslsmith_f_op_f32(floor(1011.0)))), vec4<f32>(var_1.d, _wgslsmith_f_op_f32(select(var_1.c.x, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34839u, 4294967295u, global4.a.x, global1.a.x), vec4<u32>(23927u, 1u, 4294967295u, global4.a.x)), 13u)])), var_1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(429.0 - 1141.0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_4.e.zyw * var_1.e.zxw), ~var_3.zzy, _wgslsmith_f_op_vec4_f32(var_4.e + _wgslsmith_f_op_vec4_f32(-var_4.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.d, var_1.c.x) * _wgslsmith_div_f32(var_1.c.x, var_1.e.x)) + var_4.a) - var_1.e.x));
}

