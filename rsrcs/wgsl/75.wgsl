// {"0:0":[192,36,157,46,34,100,48,143,95,25,53,29,29,120,235,198,128,176,56,61,29,134,130,214,150,140,141,206,143,137,237,80]}
// Seed: 818700965009561243

struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

var<private> global1: vec2<u32> = vec2<u32>(41536u, 31612u);

var<private> global2: array<vec3<i32>, 2>;

var<private> global3: bool;

var<private> global4: array<i32, 1>;

var<private> LOOP_COUNTERS: array<u32, 41>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global2 = array<vec3<i32>, 2>();
    for (var var_0 = -40981; ; var_0 = ~global4[_wgslsmith_index_u32(0u, 1u)]) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        if (!arg_0.b.x) {
            var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-378.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-194.0 * -1128.0) + _wgslsmith_f_op_f32(f32(-1.0) * -368.0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1406.0)), arg_0.d)));
        }
    }
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        break;
    }
    global2 = array<vec3<i32>, 2>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.d, arg_0.d))));
    return countOneBits(~u_input.b >> (9636u % 32u));
}

fn func_6() -> vec4<bool> {
    global3 = false;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-278.0), _wgslsmith_f_op_f32(step(899.0, 617.0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1006.0, -939.0) - 262.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(540.0 - -524.0) * _wgslsmith_div_f32(-1182.0, -1366.0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-715.0, -683.0, -1976.0), vec3<f32>(796.0, -1000.0, -1168.0))))))));
    global1 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~func_1(Struct_1(11170u, vec3<bool>(false, false, false), vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], u_input.a.x, -2147483648, global4[_wgslsmith_index_u32(65065u, 1u)]), -249.0, vec4<i32>(0, 0, u_input.a.x, u_input.a.x)))), _wgslsmith_mod_vec2_u32(select(abs(~vec2<u32>(global1.x, 18354u)), _wgslsmith_add_vec2_u32(~vec2<u32>(global1.x, 25786u), countOneBits(vec2<u32>(global1.x, u_input.c))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), !false)), select(vec2<u32>(_wgslsmith_add_u32(1u, 36869u), countOneBits(global1.x)), ~vec2<u32>(u_input.c, global1.x), !false)));
    switch (global4[_wgslsmith_index_u32(u_input.c, 1u)]) {
        case -16323: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_1 = Struct_1(u_input.c, !select(vec3<bool>(1118.0 > 1000.0, all(vec2<bool>(false, false)), global4[_wgslsmith_index_u32(u_input.b, 1u)] < global4[_wgslsmith_index_u32(global1.x, 1u)]), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), !vec3<bool>(true, true, false), !vec3<bool>(false, false, true)), _wgslsmith_mod_i32(u_input.a.x, 17435) >= 0), abs(_wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(2147483647, 0, 16509, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.d, 1u)], u_input.a.x, u_input.a.x, 1), _wgslsmith_mod_vec4_i32(vec4<i32>(-15961, global4[_wgslsmith_index_u32(21322u, 1u)], global4[_wgslsmith_index_u32(55278u, 1u)], 1), vec4<i32>(1, 0, -39236, u_input.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(492.0 * _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x))), -1683.0)), -(max(select(vec4<i32>(global4[_wgslsmith_index_u32(27729u, 1u)], u_input.a.x, -2147483648, global4[_wgslsmith_index_u32(20340u, 1u)]), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 3240), true), vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], u_input.a.x, -8351, global4[_wgslsmith_index_u32(0u, 1u)])) | -vec4<i32>(global4[_wgslsmith_index_u32(0u, 1u)], -20351, 218, -1)));
                continue;
            }
            global1 = min(_wgslsmith_sub_vec2_u32(countOneBits(min(min(vec2<u32>(30192u, 23249u), vec2<u32>(23176u, u_input.b)), ~vec2<u32>(1u, 1u))), vec2<u32>(0u & u_input.c, _wgslsmith_add_u32(global1.x, global1.x)) << (~select(vec2<u32>(4294967295u, u_input.c), vec2<u32>(1u, 4690u), true) % vec2<u32>(32u))), select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(global1.x, 40298u), vec2<u32>(4294967295u, 61151u)), select(vec2<u32>(global1.x, global1.x), vec2<u32>(4294967295u, u_input.b), vec2<bool>(false, false))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(22810u, 22244u), vec2<u32>(u_input.d, 19794u))), _wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(20875u, 39578u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, u_input.c)))), false || false));
            for (; !(!(!(!(false & true)))); ) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            }
            var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, u_input.b, u_input.b), vec3<u32>(u_input.b, global1.x, u_input.d)), vec3<u32>(0u, 12582u, 48920u), ~vec3<u32>(global1.x, 31914u, global1.x)), vec3<u32>(58797u, ~u_input.c, 12045u << (global1.x % 32u))), ~firstTrailingBit(select(vec3<u32>(49816u, u_input.c, 0u), vec3<u32>(0u, 4294967295u, global1.x), false))) ^ ~vec3<u32>(1u, ~88983u, 4294967295u ^ ~global1.x);
            var var_2 = vec2<i32>(2147483647, ~u_input.a.x);
        }
        case 0: {
            for (var var_1 = 2147483647; var_1 == -2147483648; var_1 += 1) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                global0 = array<vec4<bool>, 28>();
                var var_2 = Struct_1(7651u, select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), !vec3<bool>(false, true, false), !true), !vec3<bool>(!true, !true, select(true, false, false)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), false), vec3<bool>(-1 == 28025, !false, u_input.d > global1.x), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, ~2147483647, abs(11630), -1), vec4<i32>(countOneBits(global4[_wgslsmith_index_u32(global1.x, 1u)]), global4[_wgslsmith_index_u32(4294967295u, 1u)] << (46225u % 32u), 0 << (u_input.c % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 20005, -10384), vec3<i32>(u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(35632u, 1u)])))), -abs(vec4<i32>(-195, u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(0u, 1u)]) << (vec4<u32>(global1.x, 1u, 0u, 30388u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000.0 + var_0.x))))), _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a.x, -45573, -2147483648, ~countOneBits(global4[_wgslsmith_index_u32(u_input.c, 1u)])), vec4<i32>(-2147483648, 3709, u_input.a.x, _wgslsmith_add_i32(61569, u_input.a.x))));
                let var_3 = ~vec2<i32>(countOneBits(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(44335u, var_2.a), 1u)] | global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.c), 1u)]), ~(abs(var_2.c.x) >> (29817u % 32u)));
                var var_4 = 791.0;
                let var_5 = !all(var_2.b);
            }
            let var_1 = -1818.0 == _wgslsmith_f_op_f32(306.0 - -1000.0);
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
            if (!(_wgslsmith_f_op_f32(-343.0) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(948.0, var_0.x)))))))) {
                var var_2 = vec2<bool>(true, any(select(select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, true), var_1), vec3<bool>(var_1, false, var_1), vec3<bool>(false, false, false)), select(!vec3<bool>(false, var_1, true), vec3<bool>(var_1, true, var_1), !vec3<bool>(var_1, false, false)), !(!var_1))));
            }
        }
        case 8100: {
            switch (2147483647) {
                case 28301: {
                    global4 = array<i32, 1>();
                    let var_1 = u_input.a.x;
                }
                case 2147483647: {
                    global0 = array<vec4<bool>, 28>();
                }
                default: {
                    var var_1 = Struct_1(~(firstTrailingBit(global1.x) >> (_wgslsmith_mult_u32(u_input.c, ~global1.x) % 32u)), vec3<bool>(!all(global0[_wgslsmith_index_u32(~u_input.b, 28u)]), true, !(!(!true))), abs(-firstLeadingBit(min(vec4<i32>(u_input.a.x, -1, 17804, u_input.a.x), vec4<i32>(-40707, u_input.a.x, global4[_wgslsmith_index_u32(u_input.b, 1u)], u_input.a.x)))), -602.0, _wgslsmith_sub_vec4_i32(abs(~firstLeadingBit(vec4<i32>(u_input.a.x, -5109, u_input.a.x, 28425))), vec4<i32>(-2147483648, ~9319, 2147483647, -5279)));
                    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(var_1.d + -219.0)), 629.0);
                    var var_3 = Struct_1(var_1.a, select(!var_1.b, var_1.b, vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x)), vec4<i32>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, min(1u, var_1.a), _wgslsmith_mod_u32(39760u, u_input.d)), 1u)], _wgslsmith_mult_i32(1, u_input.a.x >> (1u % 32u)), 24462, -21352) >> (countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 28120u, global1.x, 8383u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, 33462u, u_input.c, 40056u), vec4<u32>(4294967295u, global1.x, 24681u, 1u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(482.0 * var_0.x), -var_1.e);
                }
            }
            global1 = ~(vec2<u32>(~_wgslsmith_mod_u32(global1.x, u_input.c), global1.x) ^ vec2<u32>(_wgslsmith_add_u32(1u, ~u_input.c), ~u_input.b));
        }
        case -2147483648: {
            switch (2147483647) {
                case 20001: {
                    global0 = array<vec4<bool>, 28>();
                    let var_1 = Struct_1(1u, !vec3<bool>(!(var_0.x >= var_0.x), func_1(Struct_1(u_input.b, vec3<bool>(true, true, false), vec4<i32>(1, u_input.a.x, -2147483648, 8198), var_0.x, vec4<i32>(u_input.a.x, global4[_wgslsmith_index_u32(u_input.c, 1u)], 1, 10934))) >= 0u, all(!vec3<bool>(true, false, false))), ~vec4<i32>(1, u_input.a.x, _wgslsmith_mod_i32(-global4[_wgslsmith_index_u32(u_input.b, 1u)], global4[_wgslsmith_index_u32(u_input.c, 1u)] & u_input.a.x), ~firstTrailingBit(u_input.a.x)), var_0.x, ~(-vec4<i32>(u_input.a.x, u_input.a.x, -2147483648, 1)));
                }
                default: {
                    var var_1 = _wgslsmith_f_op_f32(var_0.x - var_0.x);
                }
            }
            switch (u_input.a.x) {
                case -1: {
                    global3 = all(!vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(f32(-1.0) * -503.0), 14326u <= 0u, !true, !any(vec4<bool>(true, true, true, true))));
                    global2 = array<vec3<i32>, 2>();
                    return global0[_wgslsmith_index_u32(func_1(Struct_1(max(global1.x >> (45840u % 32u), ~4294967295u), select(!vec3<bool>(true, false, true), !vec3<bool>(true, true, false), !vec3<bool>(false, false, true)), -vec4<i32>(-5861, global4[_wgslsmith_index_u32(global1.x, 1u)], 12881, u_input.a.x) << (vec4<u32>(global1.x, 0u, 38997u, global1.x) % vec4<u32>(32u)), var_0.x, firstLeadingBit(select(vec4<i32>(-7978, 0, 2147483647, u_input.a.x), vec4<i32>(-16988, -33620, u_input.a.x, u_input.a.x), true)))) >> ((u_input.c | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 0u) >> (abs(0u) % 32u), ~(~global1.x), global1.x)) % 32u), 28u)];
                }
                case 0: {
                    global3 = !all(vec4<bool>((u_input.a.x <= -43391) || !false, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec3<bool>(true, false, true))));
                    var var_1 = Struct_1(64427u, !select(vec3<bool>(!true, -88 == global4[_wgslsmith_index_u32(global1.x, 1u)], all(global0[_wgslsmith_index_u32(0u, 28u)])), !(!vec3<bool>(false, false, true)), !(true && false)), _wgslsmith_add_vec4_i32(-vec4<i32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19251u, 37562u), vec2<u32>(4294967295u, 48603u)), 1u)], global4[_wgslsmith_index_u32(u_input.d, 1u)] | 2147483647, ~(-5467), 1031 ^ u_input.a.x), _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], -9404, 16053, 1), vec4<i32>(-55375, 1, 2147483647, global4[_wgslsmith_index_u32(0u, 1u)])), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(30313, global4[_wgslsmith_index_u32(22539u, 1u)]), _wgslsmith_mult_i32(-52884, 14420), global4[_wgslsmith_index_u32(u_input.b, 1u)]))), 1000.0, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, firstLeadingBit(firstLeadingBit(-1)), -2147483648, firstTrailingBit(-2147483648) >> (select(u_input.b, 56057u, false) % 32u)), -(_wgslsmith_mult_vec4_i32(vec4<i32>(10583, -2147483648, 1, u_input.a.x), vec4<i32>(-19873, u_input.a.x, -1, -16904)) & _wgslsmith_sub_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], 0, u_input.a.x, u_input.a.x), vec4<i32>(-2147483648, 21984, u_input.a.x, -41249)))));
                    var_1 = Struct_1(global1.x, select(select(!var_1.b, select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), var_1.b), var_1.b, var_1.b), var_1.b.x), select(select(vec3<bool>(var_1.b.x, true, var_1.b.x), var_1.b, var_1.b), select(var_1.b, !var_1.b, true), var_1.b), all(global0[_wgslsmith_index_u32(countOneBits(global1.x), 28u)])), abs(var_1.e), var_1.d, _wgslsmith_clamp_vec4_i32(select(vec4<i32>(4446, 52186, 2147483647, 1), vec4<i32>(u_input.a.x, -1, -2147483648, u_input.a.x), any(vec2<bool>(false, var_1.b.x))) & var_1.e, vec4<i32>(u_input.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(1, 2147483647, 47513, -6861), var_1.e), 23841, global4[_wgslsmith_index_u32(75554u, 1u)]), firstLeadingBit(countOneBits(~vec4<i32>(-12882, 17609, var_1.c.x, u_input.a.x)))));
                    var var_2 = _wgslsmith_div_u32(2536u, var_1.a ^ ~0u);
                    var var_3 = -1651.0;
                }
                case 2147483647: {
                }
                default: {
                    let var_1 = global4[_wgslsmith_index_u32(~4412u, 1u)];
                    let var_2 = vec2<bool>(!false || (!true & all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), !any(global0[_wgslsmith_index_u32(0u, 28u)]));
                    var var_3 = var_2;
                    var var_4 = Struct_1(~1u, !vec3<bool>(!var_2.x, false, false), abs(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1, 23411, u_input.a.x), vec4<i32>(1, 0, global4[_wgslsmith_index_u32(36416u, 1u)], 1), vec4<i32>(-1, 1, u_input.a.x, -1)), vec4<i32>(-1, -15881, global4[_wgslsmith_index_u32(48220u, 1u)], u_input.a.x) << (vec4<u32>(8863u, 41556u, 101385u, u_input.c) % vec4<u32>(32u)))) ^ _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1, 0, u_input.a.x, global4[_wgslsmith_index_u32(28500u, 1u)])) & (vec4<i32>(global4[_wgslsmith_index_u32(0u, 1u)], 2147483647, -57037, -10077) ^ vec4<i32>(u_input.a.x, global4[_wgslsmith_index_u32(0u, 1u)], 2147483647, u_input.a.x)), vec4<i32>(global4[_wgslsmith_index_u32(u_input.c | 0u, 1u)], countOneBits(1), _wgslsmith_sub_i32(u_input.a.x, 1), global4[_wgslsmith_index_u32(4294967295u, 1u)] << (63197u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1464.0))), ~select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(0, u_input.a.x, global4[_wgslsmith_index_u32(1u, 1u)], -2147483648), vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], 0, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, 1u, 15798u, u_input.d) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-85756, u_input.a.x, 2147483647, 2147483647), vec4<i32>(global4[_wgslsmith_index_u32(58862u, 1u)], 0, global4[_wgslsmith_index_u32(u_input.d, 1u)], 2147483647))), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), select(-77166, u_input.a.x, false), ~global4[_wgslsmith_index_u32(4294967295u, 1u)]), var_3.x));
                }
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                break;
            }
            for (var var_1 = _wgslsmith_div_i32(-28634, abs(~firstTrailingBit(u_input.a.x) & (_wgslsmith_clamp_i32(u_input.a.x, 1, global4[_wgslsmith_index_u32(0u, 1u)]) ^ u_input.a.x))); ; var_1 -= 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                continue;
            }
            var var_1 = !false;
            var var_2 = _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x))));
        }
    }
    let var_1 = Struct_1(global1.x, vec3<bool>(true, !false, true), vec4<i32>(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -24792, global4[_wgslsmith_index_u32(global1.x, 1u)], u_input.a.x), vec4<i32>(global4[_wgslsmith_index_u32(u_input.b, 1u)], u_input.a.x, 2147483647, global4[_wgslsmith_index_u32(36104u, 1u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(-16416, global4[_wgslsmith_index_u32(global1.x, 1u)], 2147483647, global4[_wgslsmith_index_u32(51302u, 1u)]), vec4<i32>(-2147483648, -1, 0, 1)))), -_wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(61803u, 1u)], -1, global4[_wgslsmith_index_u32(38922u, 1u)], 12727) & vec4<i32>(global4[_wgslsmith_index_u32(0u, 1u)], u_input.a.x, 0, -1), min(vec4<i32>(-10520, global4[_wgslsmith_index_u32(global1.x, 1u)], -24252, u_input.a.x), vec4<i32>(7465, u_input.a.x, 1, -37660))), -2147483648, u_input.a.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x)))))), abs(vec4<i32>(u_input.a.x, 3015, ~(-2147483648 >> (global1.x % 32u)), -u_input.a.x)));
    return select(vec4<bool>(true, !(!false), ((false & true) && any(global0[_wgslsmith_index_u32(u_input.d, 28u)])) && (var_1.b.x | !true), all(vec2<bool>(any(var_1.b.xx), true))), select(!global0[_wgslsmith_index_u32(select(func_1(var_1), var_1.a, var_1.b.x), 28u)], vec4<bool>(!false, select(false, 30233u > u_input.c, !false), !(false == true), true), global0[_wgslsmith_index_u32(1u, 28u)]), !all(vec4<bool>(all(global0[_wgslsmith_index_u32(1u, 28u)]), false, any(vec2<bool>(true, var_1.b.x)), var_1.b.x == false)));
}

fn func_7(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<bool> {
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_0 = _wgslsmith_clamp_u32(u_input.c, 1456u, 7109u);
    }
    global4 = array<i32, 1>();
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        for (var var_0 = 2147483647; !true; global2 = array<vec3<i32>, 2>()) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            var var_1 = global4[_wgslsmith_index_u32(~arg_3.a, 1u)];
            let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, 818.0))) - _wgslsmith_f_op_f32(-arg_1.x)), 2140.0, arg_3.d, 1799.0));
            global4 = array<i32, 1>();
        }
        continue;
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        var var_0 = 0u;
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            let var_1 = firstTrailingBit(vec4<i32>(i32(-1) * -34128, i32(-1) * -2147483648, ~u_input.a.x, ~(-7627)));
            var var_2 = arg_0;
            var var_3 = vec2<f32>(1777.0, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-321.0)));
        }
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            break;
        }
        let var_1 = select(vec2<bool>(arg_3.b.x, func_6().x), !(!select(select(arg_3.b.zx, vec2<bool>(arg_0.x, false), vec2<bool>(false, arg_0.x)), select(vec2<bool>(false, arg_3.b.x), arg_0.wx, false), false)), !vec2<bool>(!(!true), !(arg_3.d < arg_3.d)));
    }
    for (var var_0 = 0; var_0 >= -3930; ) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_1 = ~_wgslsmith_dot_vec4_u32((~vec4<u32>(u_input.c, arg_3.a, 1u, arg_2.x) | ~vec4<u32>(arg_3.a, arg_3.a, global1.x, 1u)) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, 3691u, arg_2.x), vec4<u32>(1u, arg_3.a, 4294967295u, arg_2.x), vec4<u32>(80089u, arg_2.x, arg_3.a, arg_3.a)) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_sub_u32(33213u, 37333u), 0u, 0u, ~max(global1.x, 0u)));
        var var_2 = Struct_1(11975u, arg_0.wzx, reverseBits(arg_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1840.0, arg_3.d))))), arg_3.c);
        var var_3 = max(vec3<u32>(1u, ~select(~u_input.b, ~2988u, !var_2.b.x), _wgslsmith_mod_u32(max(u_input.c, select(var_1, arg_3.a, false)), ~4294967295u)), ~_wgslsmith_sub_vec3_u32(select(firstTrailingBit(vec3<u32>(global1.x, arg_2.x, var_2.a)), vec3<u32>(44712u, 8853u, 19568u) ^ vec3<u32>(u_input.d, global1.x, 101249u), var_2.b), ~vec3<u32>(4294967295u, global1.x, 1u)));
        let var_4 = 785.0;
        let var_5 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~var_3.x, ~16742u, _wgslsmith_sub_u32(1u, arg_2.x)), ~(1u | 22575u)), ~_wgslsmith_sub_u32(4294967295u & var_2.a, var_3.x | 0u)), reverseBits(4294967295u << (u_input.d % 32u)));
    }
    return !vec3<bool>(!all(select(vec4<bool>(true, arg_3.b.x, false, true), vec4<bool>(arg_3.b.x, true, arg_3.b.x, false), true)), any(!arg_3.b.zx), arg_3.b.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    if (true) {
        global1 = vec2<u32>(~_wgslsmith_clamp_u32(~arg_0.a, 1u, 4294967295u), ~abs(max(u_input.d, arg_0.a))) | ~((~vec2<u32>(arg_0.a, u_input.d) ^ ~vec2<u32>(global1.x, 153738u)) | firstLeadingBit(~vec2<u32>(arg_0.a, 29060u)));
        if (!all(select(func_7(func_6(), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1012.0, -851.0))), vec2<u32>(arg_0.a, arg_0.a), arg_0), vec3<bool>(!arg_0.b.x, any(vec3<bool>(arg_0.b.x, arg_0.b.x, false)), !arg_0.b.x), false))) {
            return Struct_1(~arg_0.a, !vec3<bool>(true, any(vec2<bool>(arg_0.b.x, arg_0.b.x)), arg_0.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, select(global4[_wgslsmith_index_u32(arg_0.a ^ 4294967295u, 1u)], -29456, true), min(1326, max(u_input.a.x, 1)), ~(-2147483648)), vec4<i32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(1u, 0u)) >> (1u % 32u), 1u)], arg_0.c.x, -108003, ~countOneBits(u_input.a.x))), arg_0.d, -(firstLeadingBit(vec4<i32>(0, global4[_wgslsmith_index_u32(u_input.d, 1u)], global4[_wgslsmith_index_u32(u_input.d, 1u)], global4[_wgslsmith_index_u32(1u, 1u)])) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, 13601u, u_input.b, u_input.d), vec4<u32>(19231u, arg_0.a, u_input.d, global1.x), vec4<u32>(arg_0.a, arg_0.a, 37160u, u_input.d)) % vec4<u32>(32u))) & ~arg_0.c);
        }
        if (false) {
            let var_0 = select(!global0[_wgslsmith_index_u32(~countOneBits(4294967295u), 28u)], global0[_wgslsmith_index_u32(global1.x, 28u)], !(!vec4<bool>(arg_0.b.x, arg_0.b.x, false, true && arg_0.b.x)));
        }
        switch (~(~_wgslsmith_dot_vec2_i32(abs(arg_0.e.xy), _wgslsmith_sub_vec2_i32(-vec2<i32>(-19427, -10686), vec2<i32>(37922, -2147483648) & vec2<i32>(global4[_wgslsmith_index_u32(arg_0.a, 1u)], 16490))))) {
            default: {
                var var_0 = arg_0;
                var_0 = Struct_1(~max(reverseBits(42842u), countOneBits(var_0.a)), !var_0.b, select(~_wgslsmith_mod_vec4_i32(arg_0.e, vec4<i32>(var_0.c.x, 9131, -49445, -77632)) << (~vec4<u32>(87877u, u_input.c, global1.x, arg_0.a) % vec4<u32>(32u)), var_0.e | -_wgslsmith_mod_vec4_i32(var_0.e, vec4<i32>(var_0.e.x, global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)], 15494)), all(select(select(vec4<bool>(arg_0.b.x, var_0.b.x, true, arg_0.b.x), vec4<bool>(arg_0.b.x, var_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b.x), !vec4<bool>(true, var_0.b.x, false, true), func_6()))), _wgslsmith_f_op_f32(ceil(-545.0)), vec4<i32>(2147483647, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(20812u, arg_0.a), ~4294967295u), vec3<u32>(arg_0.a >> (global1.x % 32u), _wgslsmith_sub_u32(4294967295u, 1u), select(arg_0.a, 9140u, true))), 1u)], -1, 2147483647));
                let var_1 = Struct_1(arg_0.a, !(!(!vec3<bool>(false, true, true))), arg_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(exp2(767.0))))), vec4<i32>((abs(var_0.c.x) & reverseBits(u_input.a.x)) >> (~64212u % 32u), -2147483648, _wgslsmith_add_i32(2948 >> (4294967295u % 32u), _wgslsmith_dot_vec2_i32(u_input.a.yx, var_0.e.ww)) & ~(-var_0.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(~arg_0.e.x, i32(-1) * -1, global4[_wgslsmith_index_u32(u_input.b, 1u)]), u_input.a)));
                return var_1;
            }
        }
        var var_0 = ~vec4<u32>(54866u, global1.x, ~((arg_0.a << (global1.x % 32u)) & arg_0.a), u_input.d);
    }
    if (!true) {
        var var_0 = arg_0;
        for (var var_1 = min(~_wgslsmith_mod_i32((arg_0.c.x | -1) >> (~51709u % 32u), -(~0)), select(_wgslsmith_add_i32(-16295, u_input.a.x), firstTrailingBit(abs(_wgslsmith_sub_i32(-23468, u_input.a.x))), false & (var_0.b.x || (85680u != 38090u)))); var_1 <= -1763; var_1 -= 1) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            var_1 = ~u_input.a.x;
            var_0 = arg_0;
        }
        let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.d, arg_0.d)), _wgslsmith_f_op_f32(950.0 * -1217.0), var_0.d, arg_0.d);
        switch (-2147483648) {
            case -77348: {
                var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2339.0)) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.x, 287.0))))))));
                global2 = array<vec3<i32>, 2>();
                var var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(floor(arg_0.d)), _wgslsmith_f_op_f32(-var_1.x));
                let var_4 = u_input.d;
                var var_5 = reverseBits(vec4<i32>(abs(firstLeadingBit(_wgslsmith_div_i32(2147483647, 2147483647))), ~_wgslsmith_mod_i32(~1, -1), _wgslsmith_div_i32(-var_0.c.x, countOneBits(u_input.a.x)), var_0.c.x));
            }
            case -29836: {
                let var_2 = -arg_0.c.wxw;
                let var_3 = arg_0;
                var var_4 = !(countOneBits(~(var_3.a ^ var_3.a)) >= reverseBits(52512u));
                var var_5 = arg_0.d;
            }
            case 0: {
                global0 = array<vec4<bool>, 28>();
                global4 = array<i32, 1>();
                var var_2 = Struct_1(reverseBits(abs(firstTrailingBit(35135u) >> (4294967295u % 32u))), select(!select(select(vec3<bool>(true, true, arg_0.b.x), var_0.b, arg_0.b.x), !vec3<bool>(var_0.b.x, false, false), func_7(global0[_wgslsmith_index_u32(13321u, 28u)], var_1.yz, vec2<u32>(arg_0.a, 4294967295u), Struct_1(4294967295u, arg_0.b, vec4<i32>(-2147483648, arg_0.e.x, global4[_wgslsmith_index_u32(4294967295u, 1u)], 1), var_1.x, var_0.c)).x), arg_0.b, !all(var_0.b)), vec4<i32>(~(~max(-1, var_0.c.x)), -1, max(-(global4[_wgslsmith_index_u32(var_0.a, 1u)] & global4[_wgslsmith_index_u32(global1.x, 1u)]), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~20871u, var_0.a), 1u)]), min(23209, firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_f32(626.0 - var_1.x), vec4<i32>(firstLeadingBit(arg_0.e.x), ~global4[_wgslsmith_index_u32(0u, 1u)], abs(global4[_wgslsmith_index_u32(u_input.d, 1u)]), -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.c.xz, vec2<i32>(-9459, -30552)), u_input.a.zx & arg_0.e.ww)));
                var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-142.0, _wgslsmith_f_op_f32(min(arg_0.d, var_1.x)), _wgslsmith_f_op_f32(-373.0), _wgslsmith_f_op_f32(select(-302.0, -1385.0, var_2.b.x)))))) + vec4<f32>(var_2.d, _wgslsmith_f_op_f32(round(780.0)), var_0.d, 180.0));
            }
            default: {
                let var_2 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u << (1u % 32u), global1.x, 1u), vec3<u32>(u_input.c ^ 61701u, max(u_input.b, 1u), _wgslsmith_add_u32(arg_0.a, 10824u))));
                var var_3 = any(select(!select(!global0[_wgslsmith_index_u32(4294967295u, 28u)], vec4<bool>(var_0.b.x, var_0.b.x, arg_0.b.x, arg_0.b.x), any(vec4<bool>(var_0.b.x, true, arg_0.b.x, arg_0.b.x))), func_6(), any(!vec4<bool>(true, false, false, arg_0.b.x))));
                global0 = array<vec4<bool>, 28>();
            }
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        let var_0 = 21596u;
        global0 = array<vec4<bool>, 28>();
        let var_1 = 32227;
        switch (-countOneBits(-select(u_input.a.x, i32(-1) * -25740, !arg_0.b.x))) {
            case 1993: {
                var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(-31769, max(~var_1, _wgslsmith_add_i32(1, arg_0.e.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-34688, ~var_1, global4[_wgslsmith_index_u32(countOneBits(30457u), 1u)]), -min(u_input.a, vec3<i32>(-2147483648, var_1, u_input.a.x))), 45228), select(arg_0.e, arg_0.e, select(arg_0.b.x, !(!arg_0.b.x), arg_0.b.x)));
                return arg_0;
            }
            case -14980: {
            }
            case -2147483648: {
                continue;
            }
            default: {
                let var_2 = vec4<i32>(firstLeadingBit(~33776) & countOneBits(~(-52370)), select(15312, ~(-var_1), true), -2147483648, -1) >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(max(6759u, 46036u), abs(0u), arg_0.a, arg_0.a), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 1u, 63685u, 91522u), vec4<u32>(48202u, u_input.b, 4294967295u, 4578u)))), vec4<u32>(arg_0.a, ~_wgslsmith_sub_u32(arg_0.a, 0u), ~var_0, _wgslsmith_mod_u32(var_0, var_0))) % vec4<u32>(32u));
            }
        }
    }
    if (!true == true) {
        var var_0 = Struct_1(0u, select(!arg_0.b, select(select(arg_0.b, !vec3<bool>(arg_0.b.x, arg_0.b.x, false), all(arg_0.b.zx)), func_6().ywz, arg_0.b), arg_0.b), arg_0.e, _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.e.x, abs(countOneBits(arg_0.e.x)), global4[_wgslsmith_index_u32(select(global1.x, 1u, arg_0.b.x), 1u)] | -5870, 0), arg_0.e));
    }
    let var_0 = ~(~(6849u >> (0u % 32u)));
    return Struct_1(~49675u >> (~4294967295u % 32u), vec3<bool>(false || arg_0.b.x, !(false && true), !all(vec3<bool>(false, arg_0.b.x, false))), vec4<i32>(reverseBits(u_input.a.x), _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(abs(0u & arg_0.a), 1u)], 22758), ~_wgslsmith_div_i32(~u_input.a.x, _wgslsmith_clamp_i32(64795, global4[_wgslsmith_index_u32(1u, 1u)], arg_0.c.x)), global4[_wgslsmith_index_u32(u_input.b, 1u)]), -197.0, vec4<i32>(u_input.a.x, 0, global4[_wgslsmith_index_u32(min(u_input.b, 1u), 1u)], 0));
}

fn func_8(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            let var_0 = i32(-1) * -(global4[_wgslsmith_index_u32(arg_1.a, 1u)] ^ global4[_wgslsmith_index_u32(global1.x, 1u)]);
            var var_1 = ~abs(~(~(~u_input.d)));
            global0 = array<vec4<bool>, 28>();
        }
        global1 = ~(select(select(_wgslsmith_div_vec2_u32(vec2<u32>(3793u, 20023u), vec2<u32>(arg_1.a, 7144u)), _wgslsmith_mod_vec2_u32(vec2<u32>(15780u, 62715u), vec2<u32>(0u, global1.x)), !vec2<bool>(arg_1.b.x, true)), firstTrailingBit(vec2<u32>(0u, u_input.d) | vec2<u32>(global1.x, 0u)), !arg_1.b.zz) & abs(~(~vec2<u32>(78096u, 4294967295u))));
        continue;
    }
    global2 = array<vec3<i32>, 2>();
    switch (-arg_1.c.x) {
        case -917: {
            global2 = array<vec3<i32>, 2>();
            let var_0 = 4294967295u;
            let var_1 = ~(-_wgslsmith_add_i32(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, arg_1.a), 1u)], u_input.a.x), -global4[_wgslsmith_index_u32(~17269u, 1u)]));
            switch (arg_1.e.x) {
                case -67210: {
                    var var_2 = !func_5(arg_1).b.yz;
                }
                case 51524: {
                }
                default: {
                    global3 = global1.x < _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 37593u), ~15940u));
                    let var_2 = vec3<i32>(~arg_1.e.x, -5502, countOneBits(-7537));
                    global1 = vec2<u32>(41946u, func_1(arg_1));
                    var var_3 = func_5(arg_1);
                }
            }
            var var_2 = abs(u_input.a.x);
        }
        case -2147483648: {
            for (var var_0 = 2147483647; arg_1.b.x | (!(_wgslsmith_f_op_f32(select(arg_0.x, -1519.0, true)) > _wgslsmith_f_op_f32(f32(-1.0) * -265.0)) || arg_1.b.x); ) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_1 = arg_0;
                let var_2 = func_5(func_5(func_5(arg_1)));
                continue;
            }
            global3 = false;
            let var_0 = ~(vec3<i32>(~(-u_input.a.x), -(~global4[_wgslsmith_index_u32(41400u, 1u)]), -28030) >> (_wgslsmith_mult_vec3_u32(select(vec3<u32>(64394u, global1.x, 33332u), countOneBits(vec3<u32>(arg_1.a, u_input.d, arg_1.a)), arg_1.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 52319u, 35946u), vec3<u32>(36460u, 20676u, global1.x))) % vec3<u32>(32u)));
            var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-338.0))), -1902.0)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + -608.0), _wgslsmith_f_op_f32(arg_0.x - arg_1.d)) - arg_1.d)));
            var var_2 = arg_1;
        }
        case -2074: {
            if (false) {
            }
            global4 = array<i32, 1>();
        }
        case -1: {
            if (false) {
            }
            var var_0 = any(!vec4<bool>((false & arg_1.b.x) & (23032 != arg_1.c.x), false, arg_1.b.x, arg_1.b.x));
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-49859, -countOneBits(global4[_wgslsmith_index_u32(arg_1.a, 1u)] ^ u_input.a.x), u_input.a.x), ~global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.c, u_input.d), 2u)]);
                global2 = array<vec3<i32>, 2>();
                var_0 = false;
                continue;
            }
            global3 = true;
            var_0 = all(func_6().wwy);
        }
        default: {
        }
    }
    for (var var_0 = _wgslsmith_mult_i32(-6004, _wgslsmith_add_i32(u_input.a.x, ~((global4[_wgslsmith_index_u32(4294967295u, 1u)] & -21479) ^ 2147483647))); ; global2 = array<vec3<i32>, 2>()) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        if (!true) {
            var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(650.0 + 488.0) * _wgslsmith_f_op_f32(-arg_1.d))))));
            continue;
        }
        continue;
    }
    let var_0 = Struct_1(global1.x, !arg_1.b, arg_1.e, -282.0, select(abs(vec4<i32>(~arg_1.e.x, arg_1.c.x | -1, 0, abs(-33002))), ~_wgslsmith_add_vec4_i32(vec4<i32>(0, 20495, -1, -77008), arg_1.c), arg_1.b.x));
    return var_0;
}

fn func_9(arg_0: Struct_1) -> Struct_1 {
    global4 = array<i32, 1>();
    for (var var_0 = 58678; ; var_0 -= 1) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        switch (-(~(-u_input.a.x))) {
            case -14371: {
                let var_0 = func_5(arg_0);
                continue;
            }
            case 2147483647: {
            }
            default: {
            }
        }
        let var_0 = arg_0;
    }
    let var_0 = 2262.0;
    for (var var_1 = -18279; var_1 >= 1; var_1 -= 1) {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
    }
    return func_5(func_5(func_8(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, -1413.0, var_0, 130.0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 474.0, var_0, arg_0.d))), arg_0)));
}

fn func_10(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = all(func_6());
    switch (~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1 | 4777, arg_0.e.x)), arg_3)) {
        case 8785: {
            return arg_0.b;
        }
        default: {
            global0 = array<vec4<bool>, 28>();
        }
    }
    global3 = any(!func_6().zy);
    let var_1 = true;
    loop {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(14433u, u_input.d), vec2<u32>(55553u, global1.x)), vec2<u32>(global1.x, 1u), arg_0.e.x < arg_2.c.x), arg_1), global1.x);
        loop {
            if (LOOP_COUNTERS[26u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            continue;
        }
        let var_3 = func_5(Struct_1(~global1.x, select(arg_0.b, func_5(func_8(vec4<f32>(1000.0, arg_2.d, arg_0.d, 1212.0), Struct_1(arg_1.x, vec3<bool>(false, arg_0.b.x, arg_2.b.x), vec4<i32>(arg_3.x, -64368, -15118, arg_3.x), -1140.0, vec4<i32>(u_input.a.x, 0, u_input.a.x, -1154)))).b, func_8(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(496.0, arg_0.d, 769.0, arg_0.d))), arg_0).b), arg_2.e, func_9(arg_0).d, ~countOneBits(arg_2.e) ^ vec4<i32>(global4[_wgslsmith_index_u32(arg_1.x | var_2.x, 1u)], 0, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], 34023), u_input.a.yy))));
    }
    return arg_2.b;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    if (false) {
        var var_0 = Struct_1(u_input.b, func_10(func_9(func_8(_wgslsmith_f_op_vec4_f32(-arg_3), func_5(Struct_1(0u, vec3<bool>(true, false, true), vec4<i32>(1, u_input.a.x, 6778, -1), -423.0, vec4<i32>(0, arg_2, arg_2, global4[_wgslsmith_index_u32(26204u, 1u)]))))), vec2<u32>(global1.x, u_input.d), func_9(Struct_1(_wgslsmith_add_u32(u_input.d, u_input.b), vec3<bool>(true, true, false), -vec4<i32>(0, 19461, u_input.a.x, -80576), -566.0, vec4<i32>(global4[_wgslsmith_index_u32(4218u, 1u)], global4[_wgslsmith_index_u32(arg_1, 1u)], arg_2, -1))), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483648, ~u_input.a.x), ~u_input.a.yz)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2, global4[_wgslsmith_index_u32(21321u, 1u)], ~(0 | 39973), 1), vec4<i32>(-24659, abs(-2147483648), _wgslsmith_clamp_i32(u_input.a.x, -1, u_input.a.x), i32(-1) * -43597)), arg_0, ~(vec4<i32>(1 | 1, -3363, -2147483648, u_input.a.x | arg_2) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, u_input.a.x, 1, -63473), vec4<i32>(arg_2, -38755, arg_2, global4[_wgslsmith_index_u32(arg_1, 1u)]), vec4<i32>(u_input.a.x, global4[_wgslsmith_index_u32(1u, 1u)], arg_2, arg_2))));
        if (_wgslsmith_sub_u32(_wgslsmith_sub_u32(75066u, ~(~u_input.b)), global1.x) == 0u) {
            let var_1 = Struct_1(~func_9(func_9(func_5(Struct_1(arg_1, vec3<bool>(true, var_0.b.x, var_0.b.x), var_0.c, -377.0, vec4<i32>(-2147483648, -1, u_input.a.x, u_input.a.x))))).a, vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x * -150.0))) > _wgslsmith_f_op_f32(var_0.d - 1000.0), func_7(!global0[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 1446.0) * vec2<f32>(arg_0, var_0.d))), ~max(vec2<u32>(u_input.b, arg_1), vec2<u32>(35651u, 0u)), Struct_1(max(arg_1, global1.x), select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(true, true, var_0.b.x), var_0.b), firstLeadingBit(vec4<i32>(50789, global4[_wgslsmith_index_u32(792u, 1u)], arg_2, global4[_wgslsmith_index_u32(u_input.c, 1u)])), _wgslsmith_f_op_f32(-var_0.d), max(vec4<i32>(24581, u_input.a.x, -1, -2147483648), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1)))).x, all(!global0[_wgslsmith_index_u32(u_input.c, 28u)])), _wgslsmith_div_vec4_i32(var_0.c, -var_0.c) ^ -var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d, _wgslsmith_f_op_f32(-824.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(trunc(var_0.d))))), vec4<i32>(-_wgslsmith_sub_i32(var_0.c.x, u_input.a.x), 0, func_8(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, arg_3.x, var_0.d, arg_0) - vec4<f32>(arg_3.x, 537.0, var_0.d, 513.0)), Struct_1(37586u, var_0.b, var_0.c, arg_3.x, vec4<i32>(var_0.c.x, -58717, 2147483647, 52137))).e.x, _wgslsmith_mult_i32(func_9(Struct_1(global1.x, var_0.b, vec4<i32>(-77021, 29669, arg_2, 0), arg_0, vec4<i32>(-2147483648, global4[_wgslsmith_index_u32(var_0.a, 1u)], -1, -1))).c.x, max(arg_2, arg_2))) ^ var_0.c);
            global3 = !(!((1u <= ~arg_1) && !false));
            global2 = array<vec3<i32>, 2>();
            global2 = array<vec3<i32>, 2>();
        }
        switch (func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_div_f32(-399.0, var_0.d), _wgslsmith_f_op_f32(step(var_0.d, arg_0)), var_0.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d, var_0.d, arg_3.x, -2857.0))))), func_5(Struct_1(firstTrailingBit(abs(0u)), vec3<bool>(false, false, true), abs(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(u_input.d, 1u)], -27748, u_input.a.x)), _wgslsmith_f_op_f32(706.0 + 1067.0), var_0.c))).e.x) {
            case -46243: {
                global3 = var_0.b.x;
            }
            case -2147483648: {
                global1 = abs((countOneBits(~vec2<u32>(62663u, 4294967295u)) | vec2<u32>(firstTrailingBit(28323u), global1.x ^ 4294967295u)) ^ vec2<u32>(arg_1 | ~15678u, _wgslsmith_div_u32(~1u, u_input.d)));
                return Struct_1(~u_input.d, var_0.b, countOneBits(vec4<i32>(~max(arg_2, -1), 79808, -15805, ~var_0.e.x)), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-1000.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000.0 - var_0.d)))), vec4<i32>(arg_2, var_0.e.x, -func_9(Struct_1(global1.x, var_0.b, vec4<i32>(4237, u_input.a.x, arg_2, global4[_wgslsmith_index_u32(arg_1, 1u)]), arg_3.x, vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], arg_2, 18398, arg_2))).c.x | arg_2, -5366));
            }
            default: {
                global4 = array<i32, 1>();
                var var_1 = max(~vec4<u32>(var_0.a, ~1u, var_0.a, 14759u), ~abs(vec4<u32>(25712u, arg_1, 4294967295u, 13852u) & vec4<u32>(global1.x, 64752u, 0u, 28417u))) & (countOneBits(vec4<u32>(~arg_1, global1.x, min(6579u, 4294967295u), ~43847u)) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 97886u, arg_1, 1431u) >> (vec4<u32>(u_input.d, 4294967295u, var_0.a, 82592u) % vec4<u32>(32u)), vec4<u32>(1u, global1.x, 6341u, global1.x), vec4<u32>(global1.x, global1.x, 4294967295u, 0u)) ^ (vec4<u32>(global1.x, var_0.a, global1.x, arg_1) & firstLeadingBit(vec4<u32>(u_input.d, var_0.a, 0u, var_0.a)))) % vec4<u32>(32u)));
                var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, ~arg_1, arg_1, _wgslsmith_sub_u32((u_input.c ^ 1u) & (4294967295u ^ 26065u), ~_wgslsmith_sub_u32(36052u, var_0.a))), vec4<u32>(arg_1, ~u_input.c ^ firstTrailingBit(35548u), global1.x << (reverseBits(arg_1) % 32u), 12940u));
            }
        }
        loop {
            if (LOOP_COUNTERS[27u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            global1 = vec2<u32>(4294967295u, var_0.a);
            global0 = array<vec4<bool>, 28>();
            global3 = func_6().x;
        }
        global0 = array<vec4<bool>, 28>();
    }
    if ((func_5(func_8(vec4<f32>(arg_0, -1000.0, 768.0, arg_3.x), func_9(Struct_1(global1.x, vec3<bool>(false, true, true), vec4<i32>(-1, 2147483647, u_input.a.x, arg_2), arg_0, vec4<i32>(global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)], -1, u_input.a.x))))).e.x != u_input.a.x) | select(!func_10(Struct_1(arg_1, vec3<bool>(false, false, true), vec4<i32>(u_input.a.x, -1, arg_2, u_input.a.x), arg_3.x, vec4<i32>(1, -79187, global4[_wgslsmith_index_u32(0u, 1u)], 44855)), reverseBits(vec2<u32>(u_input.c, u_input.d)), func_5(Struct_1(u_input.c, vec3<bool>(true, false, true), vec4<i32>(1, global4[_wgslsmith_index_u32(4294967295u, 1u)], 9729, 1), -611.0, vec4<i32>(-4435, 1201, u_input.a.x, -1))), countOneBits(u_input.a.xy)).x, ~func_8(arg_3, Struct_1(global1.x, vec3<bool>(false, false, true), vec4<i32>(global4[_wgslsmith_index_u32(7988u, 1u)], -1, -1, 1), 310.0, vec4<i32>(27749, u_input.a.x, 0, arg_2))).a > ~(~4294967295u), (4294967295u ^ (global1.x | 10144u)) <= func_8(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.x, 710.0, arg_3.x, -399.0), arg_3, vec4<bool>(false, true, false, true))), func_9(Struct_1(global1.x, vec3<bool>(true, true, false), vec4<i32>(u_input.a.x, global4[_wgslsmith_index_u32(0u, 1u)], u_input.a.x, 0), -1210.0, vec4<i32>(-34600, arg_2, arg_2, global4[_wgslsmith_index_u32(global1.x, 1u)])))).a)) {
        switch (_wgslsmith_add_i32(i32(-1) * -14099, arg_2)) {
            case 50842: {
                return Struct_1(_wgslsmith_sub_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 4294967295u), vec2<u32>(arg_1, global1.x))), _wgslsmith_clamp_u32(u_input.d, reverseBits(~global1.x), abs(_wgslsmith_clamp_u32(51578u, 41095u, 1u)))), vec3<bool>(((i32(-1) * -34357) > (1 ^ 1613)) & all(vec2<bool>(false, false)), true, !all(!vec2<bool>(false, false))), -(~(vec4<i32>(1, -1, 21140, 1) | ~vec4<i32>(global4[_wgslsmith_index_u32(65279u, 1u)], u_input.a.x, arg_2, -21890))), func_5(Struct_1(9387u, vec3<bool>(!true, func_5(Struct_1(4294967295u, vec3<bool>(false, true, false), vec4<i32>(arg_2, -1, arg_2, global4[_wgslsmith_index_u32(global1.x, 1u)]), 263.0, vec4<i32>(2147483647, 0, 1, arg_2))).b.x, select(true, true, true)), firstLeadingBit(reverseBits(vec4<i32>(arg_2, u_input.a.x, -6346, -340))), -1498.0, vec4<i32>(-arg_2, -16910, u_input.a.x, 1 | u_input.a.x))).d, func_5(Struct_1(4294967295u, select(func_8(arg_3, Struct_1(4294967295u, vec3<bool>(false, true, false), vec4<i32>(0, u_input.a.x, arg_2, -11274), arg_3.x, vec4<i32>(arg_2, arg_2, global4[_wgslsmith_index_u32(arg_1, 1u)], u_input.a.x))).b, !vec3<bool>(true, false, true), select(true, false, true)), reverseBits(vec4<i32>(-42836, global4[_wgslsmith_index_u32(global1.x, 1u)], u_input.a.x, -1)), arg_0, func_8(vec4<f32>(arg_0, -829.0, arg_0, 942.0), Struct_1(global1.x, vec3<bool>(false, false, false), vec4<i32>(arg_2, -4550, 1, 1), 803.0, vec4<i32>(1, arg_2, -1, 28201))).e ^ _wgslsmith_mult_vec4_i32(vec4<i32>(39099, -14195, arg_2, u_input.a.x), vec4<i32>(0, arg_2, 2147483647, 1)))).c);
            }
            default: {
                global2 = array<vec3<i32>, 2>();
            }
        }
    }
    let var_0 = !func_7(global0[_wgslsmith_index_u32(87421u, 28u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000.0, 2406.0) * _wgslsmith_f_op_vec2_f32(exp2(arg_3.wz))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_0) + vec2<f32>(-647.0, arg_0))), abs(abs(select(vec2<u32>(global1.x, u_input.d), vec2<u32>(arg_1, 39219u), vec2<bool>(true, false)))), Struct_1(select(global1.x & 24452u, 0u, all(vec3<bool>(true, false, true))), select(!vec3<bool>(true, true, true), vec3<bool>(false, false, false), arg_0 > -1859.0), _wgslsmith_sub_vec4_i32(-vec4<i32>(21726, 9559, -11333, global4[_wgslsmith_index_u32(1u, 1u)]), vec4<i32>(-43494, -1, -7264, u_input.a.x) >> (vec4<u32>(4294967295u, arg_1, 0u, global1.x) % vec4<u32>(32u))), -179.0, ~(~vec4<i32>(74587, -2147483648, arg_2, global4[_wgslsmith_index_u32(arg_1, 1u)])))).x;
    global1 = vec2<u32>(_wgslsmith_add_u32(u_input.b, 25720u), 895u) | ~(~firstTrailingBit(countOneBits(vec2<u32>(1u, 1u))));
    let var_1 = func_9(Struct_1(~11277u, vec3<bool>(false, false, 0u == 0u), min(func_8(vec4<f32>(arg_3.x, arg_0, arg_0, arg_0), Struct_1(arg_1, vec3<bool>(var_0, false, false), vec4<i32>(arg_2, -1, global4[_wgslsmith_index_u32(u_input.b, 1u)], 0), arg_0, vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], u_input.a.x, u_input.a.x, 10421))).c, ~(~vec4<i32>(arg_2, -15964, arg_2, arg_2))), arg_0, _wgslsmith_mult_vec4_i32(vec4<i32>(16812, u_input.a.x, -1 & global4[_wgslsmith_index_u32(arg_1, 1u)], u_input.a.x), max(vec4<i32>(global4[_wgslsmith_index_u32(65210u, 1u)], arg_2, -18654, arg_2), firstTrailingBit(vec4<i32>(u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(u_input.c, 1u)], -3359)))))).b.x;
    return func_5(func_5(func_8(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 2533.0, -657.0, arg_0) - _wgslsmith_f_op_vec4_f32(min(arg_3, vec4<f32>(458.0, arg_3.x, arg_0, arg_0)))), Struct_1(0u, vec3<bool>(var_0, var_0, false), vec4<i32>(arg_2, global4[_wgslsmith_index_u32(0u, 1u)], -10622, 2147483647), _wgslsmith_f_op_f32(max(-195.0, -499.0)), vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], arg_2, u_input.a.x, global4[_wgslsmith_index_u32(global1.x, 1u)])))));
}

fn func_11(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(global1.x, arg_0.b, -abs(~arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d, arg_0.d)) * _wgslsmith_f_op_f32(arg_0.d - arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -627.0)))), abs(func_5(arg_0).c));
    switch (2147483647) {
        case 2147483647: {
            var var_1 = arg_0.c.wy;
            var var_2 = ~(-1 | (1 ^ global4[_wgslsmith_index_u32(~(24636u << (global1.x % 32u)), 1u)]));
        }
        case -1: {
            global0 = array<vec4<bool>, 28>();
        }
        default: {
            var var_1 = var_0.b.zy;
            let var_2 = ~vec3<i32>(~func_9(arg_0).c.x, ~(_wgslsmith_mult_i32(1, 19796) & _wgslsmith_clamp_i32(0, global4[_wgslsmith_index_u32(18492u, 1u)], 1)), global4[_wgslsmith_index_u32(countOneBits(0u), 1u)] >> (((0u << (global1.x % 32u)) >> (arg_0.a % 32u)) % 32u));
            var var_3 = -427.0;
        }
    }
    switch (reverseBits(_wgslsmith_mult_i32(-(19014 & func_4(511.0, u_input.b, global4[_wgslsmith_index_u32(4294967295u, 1u)], vec4<f32>(301.0, var_0.d, 210.0, var_0.d)).e.x), (u_input.a.x << (~var_0.a % 32u)) >> ((4294967295u >> (min(79288u, 24964u) % 32u)) % 32u)))) {
        case 2613: {
            let var_1 = func_5(func_9(func_8(_wgslsmith_f_op_vec4_f32(vec4<f32>(454.0, 417.0, arg_0.d, -899.0) - vec4<f32>(-106.0, 503.0, arg_0.d, 881.0)), func_8(vec4<f32>(arg_0.d, var_0.d, -1450.0, var_0.d), func_8(vec4<f32>(497.0, arg_0.d, arg_0.d, var_0.d), arg_0))))).d;
        }
        case -1: {
            var var_1 = arg_0;
            var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-877.0), _wgslsmith_f_op_f32(-var_1.d)));
        }
        case -43451: {
            global4 = array<i32, 1>();
        }
        case -71820: {
            global3 = all(vec4<bool>(var_0.a < ~(~var_0.a), firstTrailingBit(u_input.a.x) < func_5(arg_0).c.x, func_9(arg_0).b.x, arg_0.b.x));
            var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d)) - 979.0) + var_0.d)));
            global4 = array<i32, 1>();
            return arg_0;
        }
        default: {
            switch (u_input.a.x) {
                case -22368: {
                }
                case 66668: {
                    var_0 = arg_0;
                    let var_1 = select(arg_0.b.x, var_0.b.x, !(-840.0 == _wgslsmith_f_op_f32(-271.0 + arg_0.d)) | func_8(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.d, arg_0.d, 584.0, arg_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 2039.0, 661.0, -442.0)), !global0[_wgslsmith_index_u32(global1.x, 28u)])), arg_0).b.x);
                    global2 = array<vec3<i32>, 2>();
                }
                case -2147483648: {
                    return arg_0;
                }
                case 2147483647: {
                    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(390.0)), _wgslsmith_f_op_f32(step(1588.0, 1487.0)), -153.0)))));
                }
                default: {
                }
            }
            var var_1 = !arg_0.b.yz;
            global0 = array<vec4<bool>, 28>();
        }
    }
    let var_1 = Struct_1(var_0.a, select(!arg_0.b, !arg_0.b, var_0.b.x), -var_0.c, -120.0, max(~vec4<i32>(u_input.a.x, u_input.a.x >> (global1.x % 32u), _wgslsmith_div_i32(15275, -7711), 2147483647), -vec4<i32>(i32(-1) * -69372, countOneBits(2147483647), u_input.a.x, -2266)));
    var var_2 = ~(-(var_1.e.x ^ _wgslsmith_dot_vec2_i32(func_9(Struct_1(1u, arg_0.b, var_0.e, -1000.0, arg_0.c)).e.yy, func_9(arg_0).e.zx)));
    return func_9(func_8(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_0.d, _wgslsmith_f_op_f32(f32(-1.0) * -407.0), func_5(var_1).d)), arg_0));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = func_11(func_4(2142.0, abs(~(~57107u)), _wgslsmith_sub_i32(~(-5916) | firstTrailingBit(global4[_wgslsmith_index_u32(29963u, 1u)]), _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(global1.x << (1u % 32u), 1u)], ~20351)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1884.0, arg_0.x, -1087.0, -656.0) + vec4<f32>(-270.0, arg_0.x, arg_0.x, arg_0.x)))), all(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(19428u, 1u, u_input.d, 34931u), vec4<u32>(u_input.c, 1u, 74978u, u_input.b)), u_input.b), 28u)]) & select(!select(true, false, false), true, ~0u > (u_input.d >> (u_input.c % 32u))));
    loop {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
    }
    return func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-155.0, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(var_0.d - 1268.0), _wgslsmith_f_op_f32(-946.0)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1101.0, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(489.0)), -2431.0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 1512.0, 354.0, -940.0)), true))), Struct_1(u_input.c, !var_0.b, _wgslsmith_add_vec4_i32(var_0.e, vec4<i32>(i32(-1) * -15701, _wgslsmith_dot_vec4_i32(var_0.c, var_0.e), min(26323, 15840), ~global4[_wgslsmith_index_u32(global1.x, 1u)])), _wgslsmith_div_f32(572.0, var_0.d), _wgslsmith_mod_vec4_i32(vec4<i32>(-39686 ^ u_input.a.x, _wgslsmith_add_i32(-32653, -1), -3706, _wgslsmith_div_i32(63068, u_input.a.x)), vec4<i32>(func_9(Struct_1(0u, var_0.b, vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], var_0.e.x, -2147483648, 2147483647), arg_0.x, vec4<i32>(global4[_wgslsmith_index_u32(4488u, 1u)], 59806, u_input.a.x, var_0.e.x))).c.x, 16588, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.x, global4[_wgslsmith_index_u32(u_input.d, 1u)]), vec2<i32>(var_0.e.x, -2147483648)), 7289 & global4[_wgslsmith_index_u32(0u, 1u)])))).b;
}

fn func_2() -> u32 {
    if (false) {
    }
    loop {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
    }
    var var_0 = !vec2<bool>(all(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1159.0, 699.0), vec2<f32>(-912.0, -670.0))))), true);
    var var_1 = select(func_8(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(408.0, 1544.0, -453.0, 704.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-423.0, -1234.0, -1000.0, 109.0) - vec4<f32>(371.0, 280.0, -178.0, 283.0))))), func_8(_wgslsmith_div_vec4_f32(vec4<f32>(802.0, -289.0, 678.0, 776.0), _wgslsmith_div_vec4_f32(vec4<f32>(-1095.0, -329.0, -793.0, 1355.0), vec4<f32>(-839.0, -634.0, 1474.0, -234.0))), func_5(func_4(357.0, u_input.c, 39781, vec4<f32>(-194.0, -790.0, 174.0, -1194.0))))).c.zzx, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -vec4<i32>(global4[_wgslsmith_index_u32(u_input.c, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(global1.x, 1u)], 0)), -u_input.a.x), u_input.a.x >> (~global1.x % 32u), 53134), all(vec3<bool>(!true, var_0.x, !var_0.x)));
    global4 = array<i32, 1>();
    return ~(~460u);
}

fn func_12(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    switch (2147483647) {
        case -2147483648: {
            switch (_wgslsmith_add_i32(u_input.a.x, u_input.a.x)) {
                default: {
                    var var_0 = Struct_1(1u, arg_2.b, -func_11(func_9(arg_2), true).e, arg_2.d, vec4<i32>(arg_0.x, ~(-16522) | countOneBits(-2147483647), _wgslsmith_dot_vec2_i32(arg_0.yy, ~func_4(975.0, global1.x, 5246, vec4<f32>(524.0, 420.0, 597.0, arg_2.d)).e.zz), firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_2.c.wx, -arg_0.zz))));
                    let var_1 = !vec2<bool>(!false, true);
                }
            }
            loop {
                if (LOOP_COUNTERS[30u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
            }
            global1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(func_9(arg_2).a, _wgslsmith_add_u32(_wgslsmith_add_u32(1100u, global1.x), ~0u)), _wgslsmith_mult_u32((arg_2.a << (25079u % 32u)) >> (_wgslsmith_clamp_u32(2698u, arg_1.a, 62022u) % 32u), ~1u)), ~arg_2.a);
            switch (~(-_wgslsmith_div_i32(arg_1.c.x, u_input.a.x << (4294967295u % 32u)) & global4[_wgslsmith_index_u32(select(1u, 83680u, 41895u > 4294967295u) << (max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_2.a, global1.x)), 1u) % 32u), 1u)])) {
                case 2152: {
                    let var_0 = func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, arg_2.d, arg_2.d, -885.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, arg_2.d, arg_2.d, -1121.0) - vec4<f32>(arg_1.d, arg_1.d, arg_1.d, arg_1.d))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-297.0, 413.0, arg_1.d, arg_1.d) * vec4<f32>(arg_1.d, arg_2.d, arg_2.d, -1000.0)))))), arg_2);
                }
                case 6255: {
                    global3 = func_6().x;
                    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1120.0, func_8(vec4<f32>(1972.0, -1431.0, arg_1.d, 1000.0), arg_2).d, _wgslsmith_f_op_f32(trunc(arg_2.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.d, arg_1.d, -323.0))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-251.0, 372.0, arg_1.d))), func_10(arg_2, vec2<u32>(1u, u_input.b), arg_2, u_input.a.xy))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000.0, arg_1.d, 368.0), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, -1103.0, arg_1.d) + vec3<f32>(-320.0, -812.0, arg_1.d))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-658.0))), func_11(func_11(Struct_1(14956u, arg_1.b, vec4<i32>(-2147483648, arg_0.x, global4[_wgslsmith_index_u32(u_input.c, 1u)], 42671), arg_1.d, arg_1.e), arg_2.b.x), arg_0.x >= arg_1.c.x).d, -778.0) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.d, arg_2.d, -770.0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-384.0, arg_1.d, -1245.0)))))), vec3<bool>(select(_wgslsmith_div_i32(arg_0.x, arg_0.x), _wgslsmith_clamp_i32(8620, 1, global4[_wgslsmith_index_u32(global1.x, 1u)]), arg_1.b.x) == global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, firstTrailingBit(37062u)), 1u)], !(!false) | func_7(!vec4<bool>(false, true, arg_2.b.x, arg_1.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1236.0, 1857.0) + vec2<f32>(arg_2.d, 634.0)), vec2<u32>(global1.x, 4294967295u) >> (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u)), arg_1).x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(6209u, arg_2.a), u_input.c) < reverseBits(func_11(arg_2, arg_2.b.x).a))));
                    var var_1 = _wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(abs(arg_1.d)))));
                }
                case -36946: {
                    let var_0 = arg_1.d;
                    return Struct_1(u_input.d, vec3<bool>(true && arg_1.b.x, false, func_5(func_8(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000.0, 1000.0, 1469.0, 1000.0)), func_4(arg_1.d, global1.x, 0, vec4<f32>(var_0, arg_1.d, 484.0, arg_1.d)))).b.x), firstTrailingBit(arg_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1051.0) + _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(-arg_1.d), u_input.d, 0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, -2015.0, arg_2.d, arg_2.d))).d)), -(arg_1.c ^ max(vec4<i32>(1, arg_2.e.x, 1, 19220), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.x, arg_0.x, -1, -2147483648), vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], 17082, arg_0.x, 67414)))));
                }
                default: {
                    global0 = array<vec4<bool>, 28>();
                    let var_0 = 0u;
                    global2 = array<vec3<i32>, 2>();
                }
            }
        }
        case 1946: {
            let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d), 1510.0, arg_2.d))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1350.0)) + _wgslsmith_f_op_f32(-arg_2.d)), -1411.0, -737.0)) + vec3<f32>(649.0, 103.0, 479.0));
        }
        case -29879: {
            loop {
                if (LOOP_COUNTERS[31u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
                var var_0 = Struct_1(~arg_1.a ^ 4294967295u, arg_1.b, select(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 863), func_9(arg_1).c.x | arg_1.e.x, arg_2.c.x, arg_0.x), vec4<i32>(-2147483648 >> (~arg_2.a % 32u), max(i32(-1) * -38684, u_input.a.x), -58713, func_8(vec4<f32>(arg_2.d, arg_2.d, 1000.0, 812.0), Struct_1(4294967295u, arg_2.b, arg_1.e, 1000.0, vec4<i32>(-4675, u_input.a.x, arg_2.e.x, -4497))).c.x), vec4<bool>(!arg_1.b.x, all(vec4<bool>(true, false, true, arg_1.b.x)) && false, true && true, func_6().x)), 398.0, arg_1.c);
                var var_1 = arg_1.e | vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_clamp_i32(0, -2147483648, -26636)), 1), arg_2.e.x, -func_11(func_8(vec4<f32>(arg_1.d, arg_2.d, 878.0, arg_2.d), arg_2), false).e.x, 18063);
                var var_2 = arg_0.x;
            }
            switch (-_wgslsmith_mod_i32(93203, ~54712)) {
                case 0: {
                }
                case -37126: {
                    let var_0 = ~12336;
                    let var_1 = Struct_1(0u, !vec3<bool>(false, any(!global0[_wgslsmith_index_u32(41697u, 28u)]), true), min(_wgslsmith_add_vec4_i32(min(-arg_1.e, vec4<i32>(global4[_wgslsmith_index_u32(arg_2.a, 1u)], var_0, -21748, -7168)), ~vec4<i32>(-2147483648, -38623, global4[_wgslsmith_index_u32(1u, 1u)], 1)), arg_1.c), _wgslsmith_f_op_f32(exp2(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d * 826.0)), ~(~arg_2.a), 2147483647, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, 305.0, arg_2.d, -393.0) * vec4<f32>(arg_2.d, arg_1.d, -144.0, 369.0))).d)), vec4<i32>(-2147483647 | -(0 | -29100), -2147483648 << (~3378u % 32u), u_input.a.x, 1));
                    var var_2 = reverseBits(abs(reverseBits(vec4<u32>(arg_2.a & arg_1.a, 38408u, _wgslsmith_mult_u32(32696u, global1.x), 48990u))));
                    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.d))) + var_1.d) - var_1.d)));
                    return var_1;
                }
                default: {
                    let var_0 = -2147483648;
                    global4 = array<i32, 1>();
                    global2 = array<vec3<i32>, 2>();
                    global2 = array<vec3<i32>, 2>();
                }
            }
            loop {
                if (LOOP_COUNTERS[32u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
                global1 = vec2<u32>(global1.x, arg_1.a);
                continue;
            }
            switch (arg_0.x ^ -1) {
                default: {
                    global3 = arg_2.b.x;
                    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-326.0, _wgslsmith_f_op_f32(f32(-1.0) * -2796.0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(exp2(arg_2.d))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.d, arg_2.d))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, arg_1.d) * vec2<f32>(-873.0, 256.0)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(606.0, 949.0), vec2<f32>(413.0, -416.0))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-386.0, -1248.0), vec2<f32>(arg_2.d, arg_1.d))), !arg_1.b.zy))))));
                    global0 = array<vec4<bool>, 28>();
                    var var_1 = arg_1;
                }
            }
            switch (global4[_wgslsmith_index_u32(global1.x, 1u)]) {
                case 37121: {
                    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1231.0, -477.0), vec2<f32>(arg_1.d, arg_2.d)))))))));
                    global0 = array<vec4<bool>, 28>();
                    var var_1 = arg_1;
                    global3 = !(!(true & arg_2.b.x));
                }
                case 16825: {
                    global4 = array<i32, 1>();
                    global3 = ~_wgslsmith_div_u32(~31184u, ~(~2114u)) < 52802u;
                }
                default: {
                    global1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(47651u, func_9(Struct_1(0u, arg_1.b, vec4<i32>(arg_1.e.x, arg_1.c.x, arg_1.c.x, global4[_wgslsmith_index_u32(24431u, 1u)]), arg_2.d, vec4<i32>(2147483647, -25091, arg_2.c.x, arg_0.x))).a), vec2<u32>(global1.x, abs(~arg_2.a)));
                    let var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -1479.0);
                    let var_1 = firstTrailingBit(vec2<u32>(arg_2.a, 27314u));
                    global4 = array<i32, 1>();
                }
            }
        }
        case -2724: {
            var var_0 = func_8(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-711.0)))), arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(828.0)) + _wgslsmith_f_op_f32(floor(602.0))), _wgslsmith_f_op_f32(trunc(func_4(arg_2.d, arg_1.a, 2147483647, vec4<f32>(arg_2.d, arg_2.d, 463.0, arg_2.d)).d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(630.0, arg_2.d, -970.0, arg_1.d)) - vec4<f32>(arg_1.d, arg_1.d, -1000.0, -1272.0)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(188.0, -1210.0, 865.0, arg_2.d) - vec4<f32>(arg_2.d, arg_1.d, -1000.0, arg_2.d)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.d, 280.0, arg_2.d, arg_2.d), vec4<f32>(arg_2.d, -1032.0, -372.0, arg_2.d))))))), func_4(-411.0, ~u_input.c, -10556, _wgslsmith_f_op_vec4_f32(vec4<f32>(844.0, arg_2.d, _wgslsmith_f_op_f32(round(arg_2.d)), _wgslsmith_f_op_f32(f32(-1.0) * -930.0)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.d, 172.0, -259.0, -1842.0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, arg_2.d, arg_2.d, arg_1.d) * vec4<f32>(-1088.0, 1019.0, 1625.0, arg_2.d)))))));
        }
        default: {
            let var_0 = vec2<i32>(-1, -2147483648);
            switch (reverseBits(-(arg_0.x | -32145))) {
                case -2182: {
                    return func_11(arg_1, any(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 59381u), 28u)]));
                }
                case 17274: {
                    global2 = array<vec3<i32>, 2>();
                    var var_1 = func_4(-1110.0, func_4(arg_2.d, select(19159u, countOneBits(~global1.x), arg_1.b.x), ~arg_2.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1168.0, arg_1.d, -612.0, arg_2.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, 1000.0, arg_1.d, -1436.0) - vec4<f32>(599.0, arg_1.d, -142.0, -170.0))))).a, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(5852u & global1.x), global1.x, arg_2.a), 1u)] >> (1u % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, -1311.0, func_11(arg_1, false).d, _wgslsmith_div_f32(arg_2.d, -1293.0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(271.0, arg_2.d, arg_2.d, 1000.0))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1803.0, -365.0, arg_1.d, -1000.0) + vec4<f32>(arg_1.d, 155.0, arg_2.d, -899.0)))))));
                    let var_2 = Struct_1(arg_2.a, vec3<bool>(!(_wgslsmith_sub_i32(10074, 1) > _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, -25748), u_input.a.zy)), !true, false | arg_2.b.x), select(vec4<i32>(-global4[_wgslsmith_index_u32(23994u, 1u)], func_4(-274.0, 1u, global4[_wgslsmith_index_u32(global1.x, 1u)], vec4<f32>(-722.0, 1722.0, -998.0, 1000.0)).e.x, -2147483647, _wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(arg_2.a, 1u)], var_1.e.x, var_1.c.x, arg_0.x), vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], -1, 0, arg_2.e.x))) | arg_1.e, max(vec4<i32>(arg_0.x, 62481, -6737, -2147483648), var_1.c) | arg_1.e, select(vec4<bool>(true && arg_1.b.x, arg_1.b.x || false, arg_1.b.x, func_4(var_1.d, 26275u, 31171, vec4<f32>(arg_2.d, 1555.0, -1406.0, var_1.d)).b.x), select(vec4<bool>(arg_1.b.x, true, arg_2.b.x, false), !vec4<bool>(arg_1.b.x, true, arg_2.b.x, arg_2.b.x), func_8(vec4<f32>(738.0, arg_1.d, -689.0, arg_2.d), arg_1).b.x), func_6())), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(227.0, 1000.0, var_1.b.x)) - _wgslsmith_div_f32(var_1.d, arg_1.d))), var_1.a, -1750, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.d, arg_2.d, -300.0, var_1.d), vec4<f32>(-1634.0, -949.0, 281.0, -1200.0))), vec4<f32>(arg_1.d, -1998.0, var_1.d, 671.0), global0[_wgslsmith_index_u32(~u_input.b, 28u)])) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-270.0, var_1.d, arg_2.d, arg_2.d))))).d, firstLeadingBit(arg_1.e));
                }
                case 2147483647: {
                    let var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a, 1u, global1.x, 23630u), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.a, global1.x, global1.x), vec4<u32>(31421u, u_input.c, 1u, arg_1.a)), ~vec4<u32>(global1.x, 24922u, 1u, global1.x))), ~reverseBits(~4294967295u)), func_9(arg_2).b, -vec4<i32>(arg_2.e.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, 0, var_0.x), 1, arg_2.e.x), -2147483648, 1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) - arg_2.d), func_8(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, arg_1.d, arg_2.d, arg_2.d)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.d, -210.0, arg_1.d, 640.0), vec4<f32>(-668.0, arg_1.d, arg_1.d, arg_1.d))))), func_11(Struct_1(arg_2.a, vec3<bool>(arg_1.b.x, arg_2.b.x, arg_1.b.x), arg_1.e, -499.0, arg_1.c), true)).d), ~vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, -1)), -(arg_1.e.x ^ 0), arg_1.c.x, arg_0.x));
                    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1169.0, _wgslsmith_f_op_f32(-1000.0))));
                }
                default: {
                    let var_1 = arg_1;
                }
            }
            loop {
                if (LOOP_COUNTERS[33u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
            }
        }
    }
    for (var var_0 = select(u_input.a.x, _wgslsmith_div_i32(global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(118479u, 11516u), 41816u ^ 0u), 1u)], (i32(-1) * -arg_2.c.x) | 0), !(8440u == arg_1.a)); var_0 > -1; ) {
        if (LOOP_COUNTERS[34u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[34u] = LOOP_COUNTERS[34u] + 1u;
        switch (_wgslsmith_dot_vec3_i32(vec3<i32>(-1, min(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(u_input.b, 1u)], arg_0.x), arg_0.x), arg_2.c.x >> (func_5(Struct_1(u_input.c, arg_2.b, vec4<i32>(arg_2.e.x, arg_0.x, -6008, u_input.a.x), 1790.0, arg_1.c)).a % 32u)), (arg_1.e.xzw | arg_1.e.yxx) >> (~select(vec3<u32>(global1.x, 58610u, 0u), ~vec3<u32>(4294967295u, arg_2.a, arg_1.a), vec3<bool>(arg_1.b.x, false, arg_2.b.x)) % vec3<u32>(32u)))) {
            case 909: {
                break;
            }
            case 1: {
                global1 = vec2<u32>(u_input.d, firstTrailingBit(~global1.x));
                continue;
            }
            case 11113: {
            }
            case 0: {
                var var_1 = arg_2;
                let var_2 = 13000;
                let var_3 = _wgslsmith_div_f32(452.0, 1367.0) >= arg_1.d;
                continue;
            }
            default: {
                break;
            }
        }
        continue;
    }
    let var_0 = ~(~(~reverseBits(_wgslsmith_add_u32(global1.x, u_input.c))));
    return arg_2;
}

fn func_13(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    for (var var_0 = global4[_wgslsmith_index_u32(func_8(vec4<f32>(func_12(vec3<i32>(1498, -arg_1.c.x, _wgslsmith_add_i32(global4[_wgslsmith_index_u32(arg_0.a, 1u)], arg_0.e.x)), arg_0, arg_0).d, func_12(-global2[_wgslsmith_index_u32(arg_1.a >> (1673u % 32u), 2u)], func_4(_wgslsmith_f_op_f32(1532.0 * arg_0.d), arg_1.a, -1, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d, arg_0.d, arg_1.d, 876.0), vec4<f32>(-1740.0, 1159.0, arg_0.d, arg_0.d), vec4<bool>(arg_0.b.x, true, true, arg_1.b.x)))), Struct_1(func_4(344.0, 20652u, global4[_wgslsmith_index_u32(arg_0.a, 1u)], vec4<f32>(-1295.0, arg_1.d, arg_0.d, arg_1.d)).a, func_6().xwx, ~arg_0.c, arg_0.d, vec4<i32>(u_input.a.x, 22253, 2147483647, 1))).d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d), -1263.0)), -553.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_9(arg_0).d))), func_9(arg_0)).a, 1u)]; !arg_2.x; var_0 -= 1) {
        if (LOOP_COUNTERS[35u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[35u] = LOOP_COUNTERS[35u] + 1u;
        if (!((_wgslsmith_add_i32(arg_0.e.x, arg_0.c.x) & -1) != _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, 0, arg_1.e.x), -vec3<i32>(global4[_wgslsmith_index_u32(arg_1.a, 1u)], 42370, -1))) != true) {
            break;
        }
    }
    global1 = ~vec2<u32>(0u, _wgslsmith_sub_u32(0u, 11085u));
    global3 = func_12(vec3<i32>(18873, -firstLeadingBit(_wgslsmith_sub_i32(-8729, u_input.a.x)), ~u_input.a.x), Struct_1(~abs(~arg_0.a), func_7(select(global0[_wgslsmith_index_u32(func_11(Struct_1(0u, arg_0.b, arg_0.c, -928.0, vec4<i32>(-1, arg_1.e.x, 2147483647, global4[_wgslsmith_index_u32(arg_1.a, 1u)])), false).a, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], select(vec4<bool>(arg_2.x, arg_1.b.x, true, arg_2.x), vec4<bool>(arg_0.b.x, true, arg_1.b.x, arg_2.x), arg_1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.d)), _wgslsmith_f_op_f32(1000.0 + arg_0.d)), vec2<u32>(4294967295u, 0u << (4294967295u % 32u)), arg_0), select(vec4<i32>(u_input.a.x, i32(-1) * -2147483648, _wgslsmith_add_i32(arg_0.c.x, 2147483647), _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(arg_0.a, 1u)], u_input.a.x)), abs(arg_0.e >> (vec4<u32>(0u, 1u, 16282u, 13714u) % vec4<u32>(32u))), !(!vec4<bool>(false, arg_2.x, arg_1.b.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-131.0)) + arg_1.d), vec4<i32>(arg_1.e.x, -32284, global4[_wgslsmith_index_u32(arg_0.a ^ global1.x, 1u)] & (1 ^ -36027), func_4(_wgslsmith_f_op_f32(-arg_1.d), reverseBits(0u), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d, -415.0, 243.0, arg_1.d)))).e.x)), arg_1).b.x;
    for (; ; ) {
        if (LOOP_COUNTERS[36u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[36u] = LOOP_COUNTERS[36u] + 1u;
    }
    var var_0 = all(select(vec4<bool>(true | arg_0.b.x, arg_0.b.x, false || arg_1.b.x, all(arg_0.b.yz)), vec4<bool>(arg_0.b.x, -18529 <= arg_1.e.x, arg_2.x, !false), global0[_wgslsmith_index_u32(27779u, 28u)])) && arg_0.b.x;
    return func_11(Struct_1(min(~countOneBits(arg_0.a), abs(~arg_1.a)), !func_6().zzz, arg_1.c, arg_1.d, ~vec4<i32>(func_8(vec4<f32>(524.0, arg_0.d, arg_0.d, arg_0.d), Struct_1(4294967295u, vec3<bool>(arg_1.b.x, arg_2.x, arg_2.x), arg_1.e, -1000.0, arg_1.e)).e.x, 2147483647 & global4[_wgslsmith_index_u32(global1.x, 1u)], arg_1.e.x, ~(-1))), !(~firstLeadingBit(arg_0.a) != ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 89641u, arg_0.a, global1.x), vec4<u32>(1u, 1u, arg_0.a, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(222.0, 475.0, -343.0, 718.0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-117.0, 236.0, -954.0, -1281.0) - vec4<f32>(-260.0, 1151.0, 208.0, 1000.0))))))));
    let var_1 = vec4<u32>(~(~u_input.d), min(~func_1(Struct_1(0u, vec3<bool>(true, false, false), vec4<i32>(-1, -48090, 14952, 1), -672.0, vec4<i32>(-1, 2147483647, global4[_wgslsmith_index_u32(30514u, 1u)], 0))), u_input.c | ~global1.x), 76888u, 20113u);
    global2 = array<vec3<i32>, 2>();
    var var_2 = func_13(Struct_1(2468u, vec3<bool>(!(true == true), !(!false), -408.0 > 718.0), ~_wgslsmith_add_vec4_i32(vec4<i32>(24426, u_input.a.x, 0, 4916), vec4<i32>(-11336, global4[_wgslsmith_index_u32(u_input.c, 1u)], 14331, -17474)), 851.0, vec4<i32>(abs(26268), 2197 | global4[_wgslsmith_index_u32(var_1.x, 1u)], 22259, firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 1u)])) ^ min(~vec4<i32>(u_input.a.x, -8348, global4[_wgslsmith_index_u32(var_1.x, 1u)], 41123), -vec4<i32>(-4170, global4[_wgslsmith_index_u32(0u, 1u)], -24706, u_input.a.x))), func_12(vec3<i32>(-927, u_input.a.x, 41684), Struct_1(~func_2(), !vec3<bool>(false, false, false), -func_8(vec4<f32>(var_0.x, 1000.0, -642.0, var_0.x), Struct_1(u_input.d, vec3<bool>(false, false, true), vec4<i32>(global4[_wgslsmith_index_u32(3085u, 1u)], 5300, -2147483648, u_input.a.x), -1530.0, vec4<i32>(global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(u_input.b, 1u)], global4[_wgslsmith_index_u32(global1.x, 1u)], 0))).e, var_0.x, -vec4<i32>(2147483647, u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 1u)]) | vec4<i32>(-2147483648, u_input.a.x, -30125, u_input.a.x)), func_8(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0, var_0)), _wgslsmith_f_op_vec4_f32(-var_0)), func_9(func_4(-1000.0, 4984u, u_input.a.x, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), vec2<bool>(all(!global0[_wgslsmith_index_u32(min(global1.x, 4294967295u), 28u)]), (u_input.a.x >> ((u_input.b | global1.x) % 32u)) < ((global4[_wgslsmith_index_u32(58551u, 1u)] >> (18161u % 32u)) & (1 << (4294967295u % 32u)))));
    let var_3 = Struct_1(var_2.a, var_2.b, var_2.c, 307.0, var_2.e);
    switch (~select(_wgslsmith_dot_vec4_i32(-var_3.c | ~vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 1u)], -25115, 24065, u_input.a.x), abs(abs(vec4<i32>(2147483647, global4[_wgslsmith_index_u32(1u, 1u)], var_3.c.x, -2147483648)))), _wgslsmith_sub_i32(66048, -var_3.c.x) & (-global4[_wgslsmith_index_u32(15562u, 1u)] << (func_11(Struct_1(var_3.a, vec3<bool>(true, var_2.b.x, var_3.b.x), var_2.e, -446.0, vec4<i32>(2147483647, var_2.c.x, 35294, -1397)), false).a % 32u)), !any(!var_2.b))) {
        case 1: {
            loop {
                if (LOOP_COUNTERS[37u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[37u] = LOOP_COUNTERS[37u] + 1u;
                return;
            }
        }
        case 0: {
        }
        case -612: {
            loop {
                if (LOOP_COUNTERS[38u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[38u] = LOOP_COUNTERS[38u] + 1u;
                var var_4 = ~vec4<u32>(_wgslsmith_mult_u32(global1.x, ~_wgslsmith_mod_u32(10634u, 52037u)), _wgslsmith_mod_u32(3195u, ~(~u_input.b)), var_2.a, ~(~u_input.d));
                var var_5 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_3.d, -409.0, var_3.b.x)), _wgslsmith_f_op_f32(exp2(var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(753.0 * -689.0), var_3.d) + var_3.d)), _wgslsmith_f_op_vec2_f32(-var_0.zx));
                let var_6 = Struct_1(_wgslsmith_dot_vec3_u32(var_1.wzx, ~select(reverseBits(vec3<u32>(104505u, global1.x, 27978u)), ~vec3<u32>(14475u, 4294967295u, 31365u), false)), !var_3.b, vec4<i32>(var_3.c.x, u_input.a.x, 0, global4[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_f32(exp2(func_4(1020.0, 4294967295u, _wgslsmith_dot_vec4_i32(-var_2.e, var_2.c), vec4<f32>(var_2.d, var_0.x, _wgslsmith_f_op_f32(f32(-1.0) * -445.0), 934.0)).d)), vec4<i32>(~(-u_input.a.x), -12713, abs(~(-1)) & var_2.e.x, ~(~20830) | -(u_input.a.x << (global1.x % 32u))));
                let var_7 = select(func_6(), vec4<bool>(!(!(1u == 24163u)), _wgslsmith_sub_i32(~40571, global4[_wgslsmith_index_u32(2332u, 1u)] << (var_1.x % 32u)) != -(i32(-1) * -7790), true == (!var_6.b.x || true), any(vec3<bool>(!var_2.b.x, true, all(global0[_wgslsmith_index_u32(var_1.x, 28u)])))), select(vec4<bool>(func_9(Struct_1(59487u, var_3.b, vec4<i32>(26315, -1, -11695, 1), 578.0, var_6.e)).b.x, !(var_2.c.x <= var_2.e.x), (global4[_wgslsmith_index_u32(91738u, 1u)] < var_2.c.x) || true, var_3.b.x), !global0[_wgslsmith_index_u32(~var_4.x, 28u)], func_10(func_8(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1303.0, -1074.0, -1000.0, -245.0)), var_6), ~vec2<u32>(23449u, var_2.a), Struct_1(func_13(var_6, Struct_1(var_6.a, vec3<bool>(var_2.b.x, var_6.b.x, false), vec4<i32>(global4[_wgslsmith_index_u32(80045u, 1u)], var_6.c.x, var_6.c.x, 0), 182.0, vec4<i32>(var_3.c.x, var_2.c.x, global4[_wgslsmith_index_u32(u_input.c, 1u)], -18301)), var_3.b.xz).a, !var_6.b, _wgslsmith_mult_vec4_i32(var_6.c, vec4<i32>(2147483647, u_input.a.x, -82094, u_input.a.x)), _wgslsmith_f_op_f32(-1293.0 - 1256.0), func_13(var_3, Struct_1(4294967295u, var_2.b, vec4<i32>(16819, global4[_wgslsmith_index_u32(u_input.b, 1u)], global4[_wgslsmith_index_u32(var_4.x, 1u)], 2147483647), var_3.d, var_2.e), vec2<bool>(var_2.b.x, var_2.b.x)).e), firstLeadingBit(func_12(vec3<i32>(global4[_wgslsmith_index_u32(var_2.a, 1u)], 62383, var_3.c.x), var_6, Struct_1(global1.x, var_3.b, vec4<i32>(var_2.e.x, -2147483648, 1, -23206), var_6.d, vec4<i32>(37268, -1673, u_input.a.x, 1))).e.wz)).x));
            }
            let var_4 = var_1;
        }
        default: {
            switch (~2147483647) {
                case 2147483647: {
                    let var_4 = var_0.zy;
                    global2 = array<vec3<i32>, 2>();
                }
                default: {
                }
            }
            var var_4 = u_input.a.x;
            for (var var_5 = 1; !false; global2 = array<vec3<i32>, 2>()) {
                if (LOOP_COUNTERS[39u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[39u] = LOOP_COUNTERS[39u] + 1u;
                var var_6 = var_3;
                global1 = ~abs(vec2<u32>(~(~var_2.a), var_3.a << (_wgslsmith_mod_u32(var_2.a, var_1.x) % 32u)));
                let var_7 = _wgslsmith_mod_u32(func_2(), ~4294967295u);
                let var_8 = Struct_1(var_6.a, var_6.b, func_5(func_13(var_3, Struct_1(u_input.b, vec3<bool>(var_2.b.x, var_6.b.x, false), vec4<i32>(global4[_wgslsmith_index_u32(12246u, 1u)], 8044, global4[_wgslsmith_index_u32(7442u, 1u)], var_3.e.x), -158.0, var_2.e), var_2.b.zx)).e >> (var_1 % vec4<u32>(32u)), var_6.d, func_9(Struct_1(76276u >> (17876u % 32u), vec3<bool>(var_6.b.x, var_3.b.x, var_2.b.x), -vec4<i32>(u_input.a.x, var_3.c.x, -13857, var_2.c.x), func_4(var_0.x, u_input.b, 39834, var_0).d, vec4<i32>(global4[_wgslsmith_index_u32(var_2.a, 1u)], -36520, var_6.e.x, 6203) << (var_1 % vec4<u32>(32u)))).e >> ((vec4<u32>(u_input.d, 0u, var_1.x, func_9(var_3).a) | var_1) % vec4<u32>(32u)));
                let var_9 = func_9(Struct_1(0u, func_12(vec3<i32>(-2147483648, var_6.e.x, var_3.e.x), func_12(-var_3.e.zyy, Struct_1(var_1.x, var_2.b, var_6.c, var_3.d, var_2.e), Struct_1(68857u, var_6.b, vec4<i32>(-30760, var_3.c.x, var_3.c.x, 51988), -395.0, vec4<i32>(1, 33135, 2147483647, var_2.c.x))), Struct_1(var_8.a, !vec3<bool>(false, var_6.b.x, var_6.b.x), ~vec4<i32>(-29880, 1, -7731, global4[_wgslsmith_index_u32(49168u, 1u)]), var_3.d, _wgslsmith_sub_vec4_i32(vec4<i32>(1, 0, -68007, var_3.e.x), vec4<i32>(-1, -51983, 36881, 19282)))).b, -var_8.e, var_6.d, abs(var_2.c)));
            }
            let var_5 = vec4<f32>(-990.0, var_2.d, _wgslsmith_f_op_f32(-var_2.d), var_2.d);
            global1 = ~var_1.xw;
        }
    }
    var var_4 = _wgslsmith_f_op_f32(-var_3.d);
    loop {
        if (LOOP_COUNTERS[40u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[40u] = LOOP_COUNTERS[40u] + 1u;
        global2 = array<vec3<i32>, 2>();
        continue;
    }
    let x = u_input.a;
    s_output = StorageBuffer(func_11(var_3, !any(var_2.b) | (!false | !true)).e.yz, vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483648, var_2.c.x, 2147483647) & abs(vec3<i32>(global4[_wgslsmith_index_u32(var_2.a, 1u)], 2147483647, global4[_wgslsmith_index_u32(global1.x, 1u)])), u_input.a), _wgslsmith_mod_i32(0, ~(-8753) | (-1 << (var_2.a % 32u))), var_3.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(3412, global4[_wgslsmith_index_u32(6175u, 1u)], abs(45399) >> (49872u % 32u)), min(firstLeadingBit(vec3<i32>(46269, -52102, var_2.e.x)), ~vec3<i32>(-35172, -22316, 0))));
}

