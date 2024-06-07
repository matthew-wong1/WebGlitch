// {"0:0":[230,214,78,52,85,234,88,56]}
// Seed: 12208219375783986190

struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
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

var<private> global0: array<f32, 2>;

var<private> global1: array<vec4<bool>, 21>;

var<private> LOOP_COUNTERS: array<u32, 37>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_6(arg_0: vec3<i32>, arg_1: i32) -> bool {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        return select(~(abs(63473u) >> (~u_input.a % 32u)) < _wgslsmith_dot_vec3_u32(min(~vec3<u32>(13693u, 34114u, 4294967295u), min(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<u32>(max(u_input.a, 71811u), ~18884u, 4294967295u << (u_input.a % 32u))), select(!false, !(global0[_wgslsmith_index_u32(u_input.a, 2u)] < global0[_wgslsmith_index_u32(u_input.a, 2u)]) || !all(global1[_wgslsmith_index_u32(0u, 21u)]), any(select(vec3<bool>(true, false, false), !vec3<bool>(false, false, true), true))), all(vec3<bool>(false, !all(vec4<bool>(false, false, false, true)), !any(vec2<bool>(true, true)))));
    }
    global0 = array<f32, 2>();
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(-711.0)), global0[_wgslsmith_index_u32(~u_input.a >> (u_input.a % 32u), 2u)]);
    }
    for (; (i32(-1) * -(~(-arg_0.x))) >= 1; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        global0 = array<f32, 2>();
        global0 = array<f32, 2>();
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        }
        var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1093.0, 710.0, 709.0)), vec3<f32>(-2188.0, -871.0, global0[_wgslsmith_index_u32(u_input.a, 2u)])))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-761.0, global0[_wgslsmith_index_u32(3425u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-795.0, global0[_wgslsmith_index_u32(1u, 2u)], 152.0) - vec3<f32>(global0[_wgslsmith_index_u32(15528u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], -1265.0))))))));
        var var_1 = Struct_1((~vec2<u32>(51826u, 72269u) | ~(vec2<u32>(u_input.a, 0u) & vec2<u32>(u_input.a, 11595u))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), min(~vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(u_input.a, 0u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(61358u, 2u)], -1181.0)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), global0[_wgslsmith_index_u32(u_input.a, 2u)], -359.0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], -1471.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1216.0) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1046.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 2u)]))))), 0u, vec2<bool>(false, any(!vec3<bool>(false, false, false))), all(global1[_wgslsmith_index_u32(~12718u, 21u)]));
    }
    let var_0 = Struct_1(~(~(~(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(1u, u_input.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(102253u, 2u)], -788.0, 362.0, global0[_wgslsmith_index_u32(u_input.a, 2u)]) + vec4<f32>(1696.0, 492.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])) - vec4<f32>(778.0, global0[_wgslsmith_index_u32(59115u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(8512u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], 1522.0, global0[_wgslsmith_index_u32(68125u, 2u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], -240.0, -1666.0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-232.0, global0[_wgslsmith_index_u32(47940u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])))))), 12652u, !vec2<bool>(!true, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(75626u, 2u)])) == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] - global0[_wgslsmith_index_u32(18673u, 2u)])), false);
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 2u)] - var_0.b.x) != _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-587.0));
}

fn func_5(arg_0: i32) -> bool {
    if (~arg_0 <= -1) {
        let var_0 = ((arg_0 >> (~(~55707u) % 32u)) != ~(~(i32(-1) * -1))) & func_6(vec3<i32>(6622, u_input.b, arg_0), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 1, arg_0, -2147483648) | vec4<i32>(-6569, u_input.b, u_input.b, -8082), abs(countOneBits(vec4<i32>(-1, -2147483648, -18259, -1)))));
        let var_1 = select(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-12126, 0) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<i32>(arg_0, arg_0)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -1), vec2<i32>(49265, -1)), select(vec2<i32>(0, u_input.b), vec2<i32>(3911, arg_0), var_0), vec2<bool>(var_0, false)), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0, u_input.b), -vec2<i32>(u_input.b, 16028))), -min(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, -74164), vec2<i32>(-2147483648, 39772)), _wgslsmith_mod_vec2_i32(vec2<i32>(2179, 0), vec2<i32>(arg_0, arg_0)))), u_input.b, var_0);
    }
    switch (-firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0 | arg_0, ~(-35210)), -13397))) {
        case 1: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            }
        }
        case 46762: {
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_0 = all(select(!select(select(global1[_wgslsmith_index_u32(44638u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(54746u, 21u)]), vec4<bool>(false, false, true, false), false), global1[_wgslsmith_index_u32(u_input.a, 21u)], all(global1[_wgslsmith_index_u32(u_input.a, 21u)])));
                var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)]))), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(min(31730u, 11226u) | u_input.a, ~_wgslsmith_sub_u32(u_input.a, 1u))), 2u)]);
                var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - global0[_wgslsmith_index_u32(u_input.a, 2u)]), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 2u)], var_1.x))))), _wgslsmith_f_op_f32(f32(-1.0) * -652.0))));
                let var_2 = Struct_1(countOneBits(~(min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 10729u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) - vec4<f32>(var_1.x, 1000.0, 1000.0, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.a), 2u)]))), ~_wgslsmith_add_u32(_wgslsmith_add_u32(1u >> (19171u % 32u), 4294967295u | u_input.a), 0u), !vec2<bool>(func_6(vec3<i32>(u_input.b, 2147483647, 1) >> (vec3<u32>(38869u, u_input.a, 1381u) % vec3<u32>(32u)), _wgslsmith_clamp_i32(1, arg_0, u_input.b)), false), !false);
                break;
            }
            let var_0 = _wgslsmith_f_op_f32(-877.0 * global0[_wgslsmith_index_u32(~u_input.a, 2u)]);
            switch (abs(arg_0)) {
                case -22536: {
                    var var_1 = !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(20775u), abs(u_input.a)), 21u)];
                    let var_2 = vec4<i32>(firstLeadingBit(u_input.b), countOneBits(2147483647), -2147483647, 13566);
                    let var_3 = firstTrailingBit(var_2.xz >> (max(~(vec2<u32>(u_input.a, 7026u) & vec2<u32>(u_input.a, 30972u)), ~reverseBits(vec2<u32>(u_input.a, 57003u))) % vec2<u32>(32u)));
                    let var_4 = countOneBits(_wgslsmith_mult_u32(0u, u_input.a << (u_input.a % 32u)));
                    var_1 = vec4<bool>(false, !true, false, var_1.x);
                }
                case 32855: {
                    global1 = array<vec4<bool>, 21>();
                    global0 = array<f32, 2>();
                    return false;
                }
                case 66912: {
                    let var_1 = select(vec3<bool>(false, !false, all(select(!vec2<bool>(true, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 2u)] >= 212.0))), vec3<bool>(true, false, select(all(vec2<bool>(true, true)), !false, !false) & all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false))), 37100 > _wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, u_input.b, 1), vec3<i32>(0, u_input.b, u_input.b)), ~2147483647));
                    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1534.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(438.0, 1277.0, var_1.x)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a, 2u)], var_0)))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a | u_input.a, 2u)]))), -758.0, 130.0), Struct_1(vec2<u32>(48521u, u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(611.0, var_0, global0[_wgslsmith_index_u32(u_input.a, 2u)], 158.0), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], -1169.0, -2075.0, var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1694.0, global0[_wgslsmith_index_u32(2886u, 2u)], 249.0, 1518.0), vec4<f32>(2248.0, global0[_wgslsmith_index_u32(40063u, 2u)], var_0, global0[_wgslsmith_index_u32(0u, 2u)]), false)) * vec4<f32>(-211.0, global0[_wgslsmith_index_u32(4294967295u, 2u)], var_0, -1696.0))), u_input.a, var_1.xx, true), _wgslsmith_f_op_f32(f32(-1.0) * -1091.0));
                }
                case -1: {
                    let var_1 = Struct_2(636.0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, 1024.0, -391.0, 1734.0)))) - vec4<f32>(_wgslsmith_div_f32(var_0, -858.0), 949.0, _wgslsmith_f_op_f32(1000.0 - global0[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] - var_0)))), Struct_1(vec2<u32>(~(~u_input.a), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1527.0, -1000.0, var_0, 748.0), vec4<f32>(1000.0, -232.0, -1115.0, 1024.0))))), u_input.a, !vec2<bool>(false, any(vec3<bool>(false, false, false))), any(vec4<bool>(false, !false, any(vec2<bool>(false, false)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(u_input.a, 9416u, false), 2u)]), _wgslsmith_div_f32(-479.0, _wgslsmith_f_op_f32(f32(-1.0) * -502.0)), false)) - -902.0));
                    let var_2 = vec4<i32>(reverseBits(arg_0 & abs(arg_0)), -reverseBits(-2147483648) << (17126u % 32u), arg_0 ^ 16401, -1);
                    let var_3 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(countOneBits(min(vec2<u32>(4294967295u, 4294967295u), var_1.c.a)), var_1.c.a), countOneBits(select(vec2<u32>(4294967295u << (4294967295u % 32u), _wgslsmith_mod_u32(u_input.a, u_input.a)), var_1.c.a, var_1.c.d)));
                }
                default: {
                    let var_1 = select(countOneBits(vec3<u32>(u_input.a, abs(~u_input.a), 4294967295u)), ~vec3<u32>(_wgslsmith_div_u32(reverseBits(1u), min(4294967295u, u_input.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 38101u), vec4<u32>(u_input.a, 1u, 40359u, u_input.a)), ~vec4<u32>(34876u, 27458u, 16335u, u_input.a)), 1u), all(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(!false, !true), select(vec2<bool>(false, false), !vec2<bool>(false, true), !vec2<bool>(true, false)))));
                    let var_2 = -1;
                    global0 = array<f32, 2>();
                    var var_3 = vec2<i32>(~_wgslsmith_clamp_i32(max(arg_0, u_input.b), arg_0, i32(-1) * -13960), _wgslsmith_div_i32(-1, _wgslsmith_mod_i32(-12024 << (var_1.x % 32u), var_2 & arg_0))) & ~vec2<i32>(~var_2 | 55295, ~2147483647);
                }
            }
        }
        case 41991: {
            let var_0 = countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647, ~abs(55435), u_input.b, reverseBits(firstTrailingBit(arg_0))), select(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, 2147483647, arg_0, 18688), vec4<i32>(arg_0, arg_0, arg_0, arg_0), true), vec4<i32>(-1, -2147483648, u_input.b, arg_0) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))), reverseBits(~vec4<i32>(arg_0, arg_0, 14050, -2147483648)), all(!vec2<bool>(true, false)))));
            for (var var_1 = 0; ; global0 = array<f32, 2>()) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_2 = u_input.a;
                return !(!true);
            }
        }
        case 42239: {
            var var_0 = Struct_1(firstTrailingBit(vec2<u32>(1u, 37322u)), vec4<f32>(-2261.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -288.0)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(u_input.a, 83233u), _wgslsmith_mult_u32(u_input.a, 1u) << (39259u % 32u)), 2u)], _wgslsmith_f_op_f32(f32(-1.0) * -596.0)), 2013u, vec2<bool>(((u_input.b | 1) > ~u_input.b) || false, !(_wgslsmith_f_op_f32(trunc(-3621.0)) >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 2u)] * -514.0))), all(vec4<bool>(!(!true), false, false, !true || true)));
            let var_1 = 969.0;
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                global0 = array<f32, 2>();
            }
            var_0 = Struct_1(~max(vec2<u32>(_wgslsmith_div_u32(4294967295u, var_0.c), u_input.a), var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 + var_1), 1200.0, _wgslsmith_f_op_f32(1461.0 + 1840.0), -619.0)) + vec4<f32>(-152.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(957.0)) + -212.0), -293.0, 816.0)), var_0.c, var_0.d, all(select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.e, var_0.d.x, true, true), global1[_wgslsmith_index_u32(abs(u_input.a), 21u)])) && var_0.e);
            let var_2 = Struct_1(~(~(vec2<u32>(13446u, 4294967295u) << (vec2<u32>(4294967295u, 89070u) % vec2<u32>(32u)))) & ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.a.x), vec2<u32>(var_0.a.x, 12469u)), var_0.a, var_0.d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-212.0, var_1, 724.0, 1381.0)) - vec4<f32>(var_1, 1416.0, -1241.0, var_0.b.x))), vec4<f32>(-1202.0, -2274.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(265.0, var_1, var_0.e)) + 967.0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x)))), global1[_wgslsmith_index_u32(26075u, 21u)])), ~_wgslsmith_dot_vec4_u32(vec4<u32>(30614u, u_input.a, ~4294967295u, var_0.c), ~vec4<u32>(u_input.a, 9276u, var_0.c, u_input.a)), !vec2<bool>(!select(var_0.e, true, true), false), !(!any(select(vec4<bool>(false, false, var_0.e, var_0.e), global1[_wgslsmith_index_u32(9283u, 21u)], false))));
        }
        default: {
        }
    }
    if (func_6(~(~_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, u_input.b, -9096), ~vec3<i32>(-54956, arg_0, -29790))), 0 & -4723)) {
        global1 = array<vec4<bool>, 21>();
    }
    let var_0 = select(1, arg_0, !false);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] * _wgslsmith_f_op_f32(max(-1517.0, global0[_wgslsmith_index_u32(u_input.a, 2u)]))) * global0[_wgslsmith_index_u32(4294967295u, 2u)]) - global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 2u)])));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = select(select(vec4<bool>(arg_0.x || any(arg_0), select(arg_0.x, arg_2.x, arg_2.x) || !true, arg_2.x, true), arg_2, arg_2.x || arg_2.x), vec4<bool>(false, func_5(~(-u_input.b)), 4294967295u <= ((u_input.a << (u_input.a % 32u)) & _wgslsmith_sub_u32(u_input.a, 17735u)), firstTrailingBit(u_input.a) == ~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), arg_2.x);
    global0 = array<f32, 2>();
    var var_1 = vec3<bool>(true, var_0.x, arg_2.x);
    switch (_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b, ~(-68891)) >> (66955u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -6981, 68217), vec3<i32>(0, u_input.b, u_input.b)) ^ vec3<i32>(-1, 1, u_input.b), -vec3<i32>(u_input.b, u_input.b, u_input.b) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u)))) | ~u_input.b) {
        case -2147483648: {
            let var_2 = any(!select(!(!var_0), !vec4<bool>(arg_2.x, false, arg_2.x, var_0.x), var_0.x));
            global0 = array<f32, 2>();
            let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(377.0, 2610.0, -297.0, global0[_wgslsmith_index_u32(u_input.a, 2u)])))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, 951.0, arg_1.x, arg_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(select(384.0, _wgslsmith_f_op_f32(-637.0), true)), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 345.0))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 915.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global0[_wgslsmith_index_u32(1u, 2u)], arg_1.x, -1628.0))))));
            let var_4 = 1u;
        }
        case -1: {
            if (false) {
                let var_2 = -select(-(u_input.b ^ u_input.b) ^ -29776, ~2147483647, !(!true));
            }
            global1 = array<vec4<bool>, 21>();
        }
        case 44768: {
        }
        case -35341: {
            for (var var_2 = -24649; var_2 >= -49997; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                continue;
            }
            global1 = array<vec4<bool>, 21>();
            for (var var_2 = -58249; var_2 < 1; var_2 -= 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var_2 = u_input.b;
                var var_3 = -38095 & u_input.b;
                break;
            }
            var var_2 = !select(!select(!vec4<bool>(var_0.x, var_0.x, true, true), !vec4<bool>(true, false, var_0.x, arg_0.x), vec4<bool>(arg_2.x, false, var_0.x, false)), global1[_wgslsmith_index_u32(u_input.a, 21u)], !all(select(vec2<bool>(var_0.x, true), vec2<bool>(arg_0.x, false), vec2<bool>(var_1.x, var_0.x))));
        }
        default: {
            let var_2 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647, 19936, 1)), vec3<i32>(u_input.b, -2147483648, 23883)), abs(vec3<i32>(u_input.b, -2147483648, u_input.b) ^ vec3<i32>(u_input.b, -2147483648, u_input.b)), ~vec3<i32>(u_input.b, u_input.b, -1)) ^ abs(vec3<i32>(-1) * -vec3<i32>(u_input.b, u_input.b, -2147483648)));
            return max(var_2.x, ~reverseBits(-34058)) >> (u_input.a % 32u);
        }
    }
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(19075u, 2u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_1.x, -1169.0, 1269.0)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(288.0, 616.0), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_f_op_f32(arg_1.x - arg_1.x), arg_1.x))), Struct_1(firstLeadingBit(vec2<u32>(u_input.a, 18609u | u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1082.0) - _wgslsmith_f_op_f32(658.0 - arg_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), any(vec3<bool>(var_1.x, true, var_1.x)))), -715.0, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(reverseBits(77783u), 2u)], -1000.0)), 4294967295u, select(!arg_0.yx, vec2<bool>(false, any(vec3<bool>(var_1.x, false, arg_2.x))), false), _wgslsmith_add_u32(~0u, _wgslsmith_add_u32(u_input.a, 4294967295u)) > u_input.a), _wgslsmith_f_op_f32(-arg_1.x));
    return -30294;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<bool> {
    switch (~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, u_input.b), u_input.b), 40342, func_4(vec3<bool>(arg_2.c.d.x, arg_0, true), arg_2.c.b.wzy, select(global1[_wgslsmith_index_u32(u_input.a, 21u)], vec4<bool>(arg_2.c.e, true, arg_0, true), arg_1.e)), 2147483647), (vec4<i32>(-1) * -vec4<i32>(u_input.b, 54916, 2147483647, u_input.b)) & (-vec4<i32>(8985, -1, u_input.b, u_input.b) >> (vec4<u32>(u_input.a, 32848u, arg_2.c.c, arg_2.c.c) % vec4<u32>(32u))))) {
        case -17222: {
            var var_0 = arg_2.c;
            if (false) {
                var var_1 = !arg_2.c.d;
                var var_2 = arg_2;
                let var_3 = !(!all(select(!vec2<bool>(false, var_2.c.d.x), !vec2<bool>(false, false), all(vec2<bool>(false, arg_0)))));
            }
            let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(trunc(486.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.b.x))) * global0[_wgslsmith_index_u32(u_input.a, 2u)])));
        }
        case 62788: {
            global1 = array<vec4<bool>, 21>();
        }
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] - _wgslsmith_f_op_f32(step(arg_2.c.b.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42821u, 50612u, 4294967295u, arg_2.c.a.x) & vec4<u32>(arg_3.x, 8140u, arg_2.c.c, 76546u), ~vec4<u32>(1u, 1u, 71821u, arg_1.c)), 2u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1493.0), arg_1.b.x) * _wgslsmith_f_op_f32(min(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)))) - arg_2.b.x));
                global1 = array<vec4<bool>, 21>();
            }
            let var_0 = arg_2;
            let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(var_0.c.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.c.c, 2u)] - arg_2.c.b.x) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(91345u, 2u)])) - arg_2.c.b.x)), arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1420.0 + -1000.0), _wgslsmith_f_op_f32(arg_1.b.x * arg_2.c.b.x))) + global0[_wgslsmith_index_u32((0u << (54057u % 32u)) & _wgslsmith_mod_u32(4294967295u, 55426u), 2u)]), arg_2.c.b.x));
        }
        case 0: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            }
            switch (select(-2147483648, u_input.b, !(true | any(!vec3<bool>(true, arg_2.c.e, arg_2.c.d.x))))) {
                case 1: {
                    global0 = array<f32, 2>();
                }
                case 2147483647: {
                    let var_0 = Struct_1(~arg_2.c.a ^ (select(~arg_3.zz, vec2<u32>(arg_2.c.a.x, u_input.a) >> (vec2<u32>(arg_3.x, 1u) % vec2<u32>(32u)), !arg_0) >> (~(~arg_2.c.a) % vec2<u32>(32u))), vec4<f32>(-355.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(-1479.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 2u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)))), u_input.a >> (min(arg_2.c.c ^ (arg_2.c.a.x & 61447u), 5683u) % 32u), arg_2.c.d, arg_2.c.d.x);
                    var var_1 = arg_1.b;
                }
                case 0: {
                    let var_0 = arg_2;
                    var var_1 = vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.c.a.x, 2u)], -330.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 2u)]))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1294.0 - arg_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(496.0, global0[_wgslsmith_index_u32(arg_3.x, 2u)]))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(335.0 * arg_1.b.x), _wgslsmith_f_op_f32(abs(arg_1.b.x)))))));
                    let var_2 = arg_2;
                }
                case 34880: {
                    var var_0 = arg_2;
                }
                default: {
                    var var_0 = true && arg_1.e;
                    global1 = array<vec4<bool>, 21>();
                }
            }
            global0 = array<f32, 2>();
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(479.0)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] * arg_1.b.x)), 313.0)) - _wgslsmith_f_op_f32(min(arg_1.b.x, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, arg_1.a.x, arg_1.a.x), 2u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], arg_1.b.x, 434.0, global0[_wgslsmith_index_u32(arg_1.a.x, 2u)]))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(936.0, -1749.0)) - -729.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2179.0, arg_1.b.x)), _wgslsmith_f_op_f32(ceil(arg_2.d))))), Struct_1(vec2<u32>(4294967295u, 5148u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.x, 780.0, 616.0, 1063.0), arg_2.c.b)))), vec4<f32>(_wgslsmith_f_op_f32(step(-130.0, arg_2.b.x)), 639.0, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 2u)], -417.0), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 2u)]))), arg_3.x << (~(~arg_1.a.x) % 32u), !vec2<bool>(all(arg_1.d), false), true), arg_2.c.b.x);
                var var_1 = abs(reverseBits(_wgslsmith_div_i32(2147483647, u_input.b)));
                continue;
            }
        }
        default: {
            let var_0 = arg_2;
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            }
            global1 = array<vec4<bool>, 21>();
            var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -139.0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c.b), _wgslsmith_f_op_vec4_f32(arg_1.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * arg_2.b) + _wgslsmith_f_op_vec4_f32(var_0.c.b + var_0.c.b)))), Struct_1(vec2<u32>(~(arg_1.a.x << (1u % 32u)), 75113u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-123.0, -1605.0, arg_2.d, global0[_wgslsmith_index_u32(u_input.a, 2u)]) * vec4<f32>(610.0, arg_2.b.x, 1784.0, -481.0))))), ~0u, !var_0.c.d, !(!(!arg_2.c.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -156.0))));
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_2 = 78379u;
                break;
            }
        }
    }
    global0 = array<f32, 2>();
    global1 = array<vec4<bool>, 21>();
    switch (~2147483647) {
        case 0: {
        }
        default: {
            var var_0 = 9685u;
            var var_1 = Struct_1(arg_3.yx, arg_1.b, 732u, vec2<bool>(arg_2.c.d.x && !arg_1.e, !(arg_1.e == false)), !true);
            var_0 = max(countOneBits(max(u_input.a & 1u, arg_2.c.c)), var_1.c) & 1u;
            if (all(select(vec3<bool>(arg_1.e, var_1.d.x, -666.0 == _wgslsmith_f_op_f32(-arg_1.b.x)), vec3<bool>(var_1.e, !(!arg_0), false), !select(select(vec3<bool>(false, arg_0, arg_1.e), vec3<bool>(arg_2.c.d.x, var_1.d.x, true), true), select(vec3<bool>(arg_2.c.e, arg_1.d.x, true), vec3<bool>(true, false, true), vec3<bool>(arg_2.c.d.x, true, true)), select(vec3<bool>(true, arg_1.d.x, arg_1.e), vec3<bool>(true, false, false), vec3<bool>(arg_2.c.e, arg_2.c.d.x, arg_2.c.d.x)))))) {
                let var_2 = arg_1.c <= arg_2.c.c;
                let var_3 = arg_2;
                var_0 = arg_2.c.a.x;
                let var_4 = false || !(!true);
            }
            var var_2 = arg_2;
        }
    }
    for (var var_0: i32; !any(!select(vec2<bool>(true, true), !arg_2.c.d, select(arg_1.d, arg_1.d, arg_1.d))); ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var var_1 = Struct_1(vec2<u32>(0u, ~reverseBits(arg_3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b - _wgslsmith_f_op_vec4_f32(floor(arg_1.b)))) - vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 2u)] * _wgslsmith_f_op_f32(arg_1.b.x + arg_2.a)), global0[_wgslsmith_index_u32(~(~4294967295u), 2u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a + arg_1.b.x), _wgslsmith_f_op_f32(275.0 * global0[_wgslsmith_index_u32(0u, 2u)]))), -282.0)), u_input.a, !vec2<bool>(arg_2.c.d.x, arg_2.c.e), arg_2.c.e);
        var var_2 = _wgslsmith_f_op_vec4_f32(arg_1.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a), -254.0, var_1.b.x, 1933.0)))));
    }
    return !arg_1.d;
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    for (var var_0 = u_input.b; ; ) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        for (var var_1 = -91058; all(!(!vec2<bool>(981.0 == arg_0.x, false))); var_0 = u_input.b >> ((u_input.a << ((reverseBits(48574u | 8435u) >> (~4294967295u % 32u)) % 32u)) % 32u)) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            global0 = array<f32, 2>();
            continue;
        }
    }
    global0 = array<f32, 2>();
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        loop {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.zy);
            var_0 = arg_0.xz;
        }
        return 2147483647;
    }
    for (var var_0 = 1; !all(!vec2<bool>(true, true)); var_0 += 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        global0 = array<f32, 2>();
        if (!((true || !all(vec3<bool>(false, true, true))) | !(5479u >= u_input.a))) {
            break;
        }
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        }
        return u_input.b;
    }
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        let var_0 = reverseBits(24670u);
        let var_1 = !select(!select(func_3(true, Struct_1(vec2<u32>(145483u, var_0), vec4<f32>(-654.0, global0[_wgslsmith_index_u32(var_0, 2u)], -788.0, global0[_wgslsmith_index_u32(var_0, 2u)]), 12299u, vec2<bool>(false, true), true), Struct_2(1000.0, vec4<f32>(-916.0, arg_0.x, 906.0, global0[_wgslsmith_index_u32(u_input.a, 2u)]), Struct_1(vec2<u32>(u_input.a, 10295u), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1355.0), var_0, vec2<bool>(false, false), true), arg_0.x), vec3<u32>(38320u, 1u, u_input.a)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), func_3(true, Struct_1(vec2<u32>(0u, var_0), vec4<f32>(-1093.0, 1191.0, 1076.0, 1300.0), 75496u, vec2<bool>(false, false), false), Struct_2(global0[_wgslsmith_index_u32(var_0, 2u)], vec4<f32>(-643.0, -930.0, arg_0.x, global0[_wgslsmith_index_u32(43625u, 2u)]), Struct_1(vec2<u32>(u_input.a, u_input.a), vec4<f32>(arg_0.x, global0[_wgslsmith_index_u32(65783u, 2u)], arg_0.x, -1466.0), 1u, vec2<bool>(true, true), false), global0[_wgslsmith_index_u32(33171u, 2u)]), vec3<u32>(var_0, 4294967295u, 103876u)).x), vec2<bool>(!func_6(vec3<i32>(-50041, 1, 56916), -7344), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), !(!func_6(vec3<i32>(u_input.b, -1, 0), u_input.b)));
    }
    return -2147483648;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> vec4<u32> {
    let var_0 = arg_0.a.x;
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        global1 = array<vec4<bool>, 21>();
        var var_1 = min(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(42071, -2147483648)) << (vec2<u32>(52731u << (61170u % 32u), ~1u) % vec2<u32>(32u)), vec2<i32>(~func_2(vec3<f32>(1196.0, arg_1, -426.0)), -4872)), vec2<i32>(abs(abs(-9188)) ^ -(~21781), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-665, u_input.b), vec2<i32>(-9093, -41275))), vec2<i32>(firstLeadingBit(u_input.b), 29094))));
        var var_2 = -43408;
        var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-1, u_input.b), vec2<i32>(-1, u_input.b)) | vec2<i32>(abs(-8203), -3892 & -2147483648), -vec2<i32>(var_1.x, -68) | (vec2<i32>(u_input.b, u_input.b) & ~vec2<i32>(-1297, -67324))), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.b, var_1.x) | vec2<i32>(-5982, 13880)), -select(vec2<i32>(1, 49900), vec2<i32>(u_input.b, 20612), arg_0.e)) << (arg_2.c.a % vec2<u32>(32u)), vec2<i32>(-(~2147483647), -1));
        var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(1676, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1, var_1.x, var_1.x), vec3<i32>(u_input.b, var_1.x, 5000)))), ~(-vec2<i32>(2147483647, abs(-2147483648))));
    }
    if (all(!arg_2.c.d)) {
        global0 = array<f32, 2>();
    }
    switch (-func_4(select(select(vec3<bool>(arg_0.e, true, true), vec3<bool>(arg_2.c.e, true, arg_0.e), arg_0.e), select(vec3<bool>(arg_0.e, false, arg_0.d.x), vec3<bool>(false, arg_0.d.x, arg_2.c.d.x), vec3<bool>(arg_2.c.d.x, true, false)), vec3<bool>(false, arg_2.c.e, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 1327.0, -721.0) + vec3<f32>(-693.0, global0[_wgslsmith_index_u32(arg_0.c, 2u)], 1648.0)), select(!global1[_wgslsmith_index_u32(2842u, 21u)], !global1[_wgslsmith_index_u32(arg_2.c.c, 21u)], select(false, arg_2.c.d.x, false))) << (max(firstTrailingBit(var_0), 55574u << (4294967295u % 32u)) % 32u)) {
        case -13680: {
            var var_1 = Struct_1(~vec2<u32>(54490u, ~_wgslsmith_sub_u32(arg_2.c.c, var_0)), vec4<f32>(_wgslsmith_f_op_f32(step(-1000.0, _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(max(-1648.0, 103.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000.0 + _wgslsmith_f_op_f32(601.0 * arg_1)) - _wgslsmith_f_op_f32(-535.0)), 266.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * _wgslsmith_f_op_f32(arg_2.c.b.x * -1310.0)))), u_input.a & ~(arg_0.a.x & 1u), vec2<bool>(!arg_2.c.e, all(arg_2.c.d) || (51804u <= 4294967295u)), arg_2.c.d.x);
        }
        case -21274: {
            switch (-1) {
                case 2147483647: {
                    global1 = array<vec4<bool>, 21>();
                }
                case 8018: {
                    global1 = array<vec4<bool>, 21>();
                    var var_1 = arg_2.c.a;
                    var var_2 = arg_2;
                }
                default: {
                    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_2.b.wzy);
                    global1 = array<vec4<bool>, 21>();
                    global1 = array<vec4<bool>, 21>();
                    var var_2 = Struct_2(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-324.0, _wgslsmith_div_f32(arg_0.b.x, -250.0), _wgslsmith_f_op_f32(select(arg_0.b.x, -179.0, true)), _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1760.0, arg_2.b.x, 261.0), arg_2.b), _wgslsmith_f_op_vec4_f32(trunc(arg_0.b)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(arg_0.b, vec4<f32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(arg_0.a.x, 2u)], 295.0, -602.0), true))))), Struct_1(_wgslsmith_div_vec2_u32(~arg_0.a, _wgslsmith_mult_vec2_u32(arg_0.a & vec2<u32>(arg_0.a.x, var_0), arg_0.a)), vec4<f32>(747.0, -768.0, arg_3, -979.0), select(reverseBits(4294967295u), ~arg_0.c, func_5(u_input.b)) ^ ~30101u, !vec2<bool>(arg_0.d.x, arg_2.c.e), false), var_1.x);
                }
            }
            let var_1 = true;
        }
        default: {
            let var_1 = arg_2;
            let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1171.0, arg_3, -622.0, 1079.0))))), var_1.c.a.x, select(!select(!vec2<bool>(arg_2.c.e, arg_2.c.e), !vec2<bool>(var_1.c.e, true), var_1.c.e), select(vec2<bool>(func_5(-1), var_1.c.e), vec2<bool>(true, arg_0.d.x), vec2<bool>(true, arg_2.c.d.x)), arg_0.d), !(!true));
            if (!func_3(!all(vec3<bool>(var_1.c.d.x, var_1.c.e, arg_0.e)), arg_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 2u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.b.x, -250.0, arg_1, arg_3) + arg_0.b), var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.b.x + -1248.0), _wgslsmith_f_op_f32(-380.0)))), vec3<u32>(arg_0.c, abs(~arg_2.c.c), arg_0.c)).x) {
                global0 = array<f32, 2>();
                var var_3 = vec3<i32>(u_input.b, countOneBits(firstTrailingBit(-19382)), -9476);
                global1 = array<vec4<bool>, 21>();
            }
            var var_3 = Struct_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 14572u, 11182u, 76782u), max(vec4<u32>(arg_2.c.a.x, arg_0.a.x, var_1.c.c, 24579u), vec4<u32>(13503u, 0u, arg_2.c.a.x, 4294967295u))), reverseBits(var_0) ^ 4294967295u), ~(var_0 | var_0) >> ((firstTrailingBit(var_0) | _wgslsmith_clamp_u32(1u, 41825u, var_0)) % 32u)), _wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(-2149.0, 1244.0, arg_3, 842.0))))), arg_2.c.e)), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c, u_input.a, arg_0.c), vec3<u32>(var_1.c.c, 1u, var_2.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, var_0), vec3<u32>(var_0, 4294967295u, 0u), vec3<u32>(19719u, 7526u, 60159u))), (var_2.c | arg_0.a.x) ^ arg_0.a.x)), !var_2.d, true && var_2.d.x);
        }
    }
    switch (_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-3001, 2147483647, -2147483648, u_input.b), select(_wgslsmith_div_vec4_i32(vec4<i32>(28353, u_input.b, 2147483647, -21593), vec4<i32>(u_input.b, -2147483648, u_input.b, u_input.b)), -vec4<i32>(19013, -2147483648, 26942, u_input.b), select(global1[_wgslsmith_index_u32(var_0, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], false))), u_input.b) << (~_wgslsmith_mult_u32(57945u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), vec2<u32>(var_0, arg_2.c.c))) % 32u)) {
        case 1: {
            let var_1 = arg_2.c;
            global1 = array<vec4<bool>, 21>();
            let var_2 = u_input.b;
        }
        case 2147483647: {
            if (any(vec3<bool>((arg_2.c.d.x & arg_0.d.x) & !all(global1[_wgslsmith_index_u32(144182u, 21u)]), select(true, false & arg_2.c.d.x, arg_2.c.d.x), true))) {
                let var_1 = Struct_2(_wgslsmith_f_op_f32(-135.0 - _wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_vec4_f32(floor(arg_0.b)), arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_2.c.a.x, 2u)])), 1096.0)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1000.0))))));
                var var_2 = Struct_1(abs(var_1.c.a) ^ abs(arg_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.b, vec4<f32>(global0[_wgslsmith_index_u32(arg_2.c.a.x | 0u, 2u)], -1692.0, var_1.c.b.x, _wgslsmith_f_op_f32(-arg_1)), !vec4<bool>(true, false, false, arg_2.c.e))) - vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.b.x)), _wgslsmith_f_op_f32(-arg_3), 1523.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -1992.0))))), select(arg_0.a.x ^ ((4294967295u << (u_input.a % 32u)) >> (_wgslsmith_mod_u32(var_0, 57404u) % 32u)), select(arg_2.c.c, _wgslsmith_add_u32(~arg_0.c, ~4294967295u), !arg_2.c.e), !func_5(func_2(vec3<f32>(-1251.0, 858.0, arg_2.c.b.x)))), var_1.c.d, var_1.c.d.x);
                var var_3 = vec4<u32>(max(~(~(~u_input.a)), arg_0.c >> (_wgslsmith_add_u32(var_0, 1u) % 32u)), var_1.c.a.x, arg_0.c, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(39611u, 9831u), abs(vec2<u32>(1u, 5896u))), _wgslsmith_sub_vec2_u32(var_2.a, vec2<u32>(var_2.c, 1u))));
                var_2 = arg_0;
                var var_4 = _wgslsmith_sub_i32(u_input.b, 5166);
            }
            var var_1 = arg_2;
            for (; any(!vec3<bool>(true, arg_0.d.x, !arg_0.e)); ) {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                var var_2 = _wgslsmith_div_vec3_f32(var_1.c.b.zwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.zww)) - var_1.c.b.xxy)));
                var var_3 = arg_2;
                var var_4 = arg_2.b.wx;
                var var_5 = vec3<f32>(137.0, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1491.0))), var_1.d))), _wgslsmith_f_op_f32(-var_4.x));
                break;
            }
            for (var var_2 = -6254; var_2 >= 1; var_1 = arg_2) {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            }
        }
        case 51577: {
            for (; all(select(vec3<bool>(arg_0.e, reverseBits(42097u) > firstLeadingBit(0u), false), select(!vec3<bool>(true, true, true), vec3<bool>(!true, any(global1[_wgslsmith_index_u32(arg_0.a.x, 21u)]), arg_1 != -586.0), !true), vec3<bool>(!(-1 == -1), all(vec2<bool>(arg_2.c.d.x, false)), any(!vec3<bool>(arg_0.d.x, false, true))))); ) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            }
            for (var var_1 = 1; ; ) {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            }
            switch (i32(-1) * -u_input.b) {
                case -1: {
                    var var_1 = arg_2.c;
                    var var_2 = ~(~_wgslsmith_dot_vec2_u32(arg_2.c.a, ~_wgslsmith_div_vec2_u32(arg_2.c.a, arg_2.c.a)));
                    var var_3 = reverseBits(vec3<u32>(reverseBits(var_0), 6843u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.c.c), arg_0.a))));
                    let var_4 = ~vec3<i32>(~max(_wgslsmith_mod_i32(-2147483648, 58598), func_2(vec3<f32>(456.0, arg_3, arg_1))), i32(-1) * -47965, 14190);
                    var var_5 = vec3<i32>(-39667, -12888 & ~(~(-1 >> (arg_2.c.c % 32u))), 0);
                }
                case -43288: {
                    global0 = array<f32, 2>();
                    return firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(34832u, ~_wgslsmith_div_u32(arg_2.c.a.x, 0u), (arg_0.c | 28690u) >> (arg_0.c % 32u)), select(u_input.a, var_0, ~u_input.a < _wgslsmith_dot_vec3_u32(vec3<u32>(65352u, var_0, u_input.a), vec3<u32>(var_0, arg_2.c.a.x, arg_2.c.a.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.a), firstLeadingBit(4294967295u)), ~(~arg_2.c.a.x)), var_0));
                }
                case 0: {
                    var var_1 = arg_2;
                    let var_2 = arg_2;
                    var_1 = var_2;
                }
                case 574: {
                    let var_1 = !(!(1764.0 >= 710.0));
                    global0 = array<f32, 2>();
                    let var_2 = ~(vec3<u32>(~_wgslsmith_add_u32(20157u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, arg_0.a.x), vec3<u32>(4294967295u, u_input.a, 1u)), max(~25987u, arg_0.c & arg_2.c.c)) & min(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_0, 52783u), vec3<u32>(arg_0.c, 51366u, 1u)), ~vec3<u32>(arg_0.c, var_0, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 30991u, arg_2.c.c), vec3<u32>(53227u, 0u, var_0))), vec3<u32>(65414u, select(0u, var_0, false), 9408u << (arg_2.c.c % 32u))));
                }
                default: {
                    global1 = array<vec4<bool>, 21>();
                    let var_1 = Struct_2(global0[_wgslsmith_index_u32(u_input.a, 2u)], arg_2.b, arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1963.0)));
                }
            }
        }
        case -37666: {
            if (arg_0.d.x && (arg_0.c < var_0)) {
                global0 = array<f32, 2>();
                var var_1 = arg_2.c;
                var var_2 = (4294967295u ^ (max(8170u, 105456u | arg_2.c.a.x) ^ ~(~u_input.a))) << (~0u % 32u);
                var_2 = _wgslsmith_mod_u32(~7131u, 0u);
                var var_3 = any(!vec4<bool>(u_input.a == abs(1u), _wgslsmith_f_op_f32(f32(-1.0) * -1610.0) <= _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(48u, 2u)], 997.0)), !(!true), u_input.b < -u_input.b));
            }
            var var_1 = firstTrailingBit(0u);
        }
        default: {
            for (var var_1 = 15298; ; ) {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
                global0 = array<f32, 2>();
                let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-585.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1069.0 + _wgslsmith_f_op_f32(-arg_3))))));
                continue;
            }
            switch (countOneBits(_wgslsmith_sub_i32(select(-2147483648, u_input.b, arg_0.e) >> (abs(1u) % 32u), _wgslsmith_mod_i32(43132, abs(-27376 ^ 0))))) {
                default: {
                    let var_1 = arg_2;
                    let var_2 = vec4<u32>(u_input.a, _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(~0u, 4294967295u)), 4294967295u), 29633u, min(~(~(~45390u)), arg_2.c.c));
                    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_0.b.zwy);
                    global1 = array<vec4<bool>, 21>();
                }
            }
            loop {
                if (LOOP_COUNTERS[29u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
                global1 = array<vec4<bool>, 21>();
                let var_1 = Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.b, arg_0.b)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(arg_2.b)))))), Struct_1(firstTrailingBit(vec2<u32>(arg_0.c, 30219u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.b.x, 1263.0, arg_2.c.d.x)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 2u)], 349.0), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0, 2u)])), arg_1) - vec4<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_f_op_f32(sign(arg_1)), -1102.0, _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_2.c.a.x, 2u)])))), u_input.a | min(abs(arg_2.c.c), 901u), arg_0.d, -1952.0 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + -911.0)), 1337.0);
                return _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0, u_input.a, 0u, u_input.a)), ~vec4<u32>(1u, var_0, 18398u, arg_2.c.c), ~(~vec4<u32>(var_0, var_1.c.c, arg_2.c.a.x, 63794u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(arg_2.c.c, var_1.c.c, var_1.c.c, var_0), vec4<u32>(1u, 0u, arg_2.c.a.x, arg_2.c.a.x)), vec4<u32>(0u, arg_0.c, var_1.c.c, 4294967295u)), ~vec4<u32>(var_0, 30830u, arg_2.c.a.x, 1u)) << (~(firstTrailingBit(vec4<u32>(31630u, 15580u, var_1.c.a.x, var_0)) << (vec4<u32>(u_input.a, 4294967295u, arg_0.a.x, var_1.c.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
            }
            var var_1 = arg_2;
        }
    }
    return _wgslsmith_mult_vec4_u32(min(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 50430u, var_0, 102451u), vec4<u32>(var_0, arg_0.a.x, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, arg_0.c, arg_2.c.c, 26048u)), max(vec4<u32>(22622u, 0u, 0u, 4294967295u), vec4<u32>(0u, 53831u, 0u, 1u))), vec4<u32>(_wgslsmith_sub_u32(var_0, arg_0.c), 50050u << (arg_0.a.x % 32u), max(36351u, 13313u), _wgslsmith_clamp_u32(u_input.a, arg_0.a.x, 1u))), _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(arg_0.c, arg_2.c.a.x, arg_2.c.a.x, 34634u), ~vec4<u32>(arg_2.c.c, 24446u, u_input.a, 16093u), all(arg_0.d)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(107685u, 4294967295u, arg_0.c, 67695u)), _wgslsmith_add_vec4_u32(vec4<u32>(23797u, arg_2.c.c, 3413u, 0u), vec4<u32>(47236u, 32503u, arg_0.c, arg_2.c.a.x))), abs(vec4<u32>(4294967295u, 2723u, 40647u, 24675u) | vec4<u32>(4294967295u, 3299u, arg_0.a.x, 1u)))), select(vec4<u32>(~(arg_0.c >> (1223u % 32u)), 4294967295u >> (arg_2.c.c % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c, 68495u), arg_2.c.a)), _wgslsmith_mult_u32(8928u & arg_0.a.x, u_input.a)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_0, var_0, arg_0.c, u_input.a)), abs(vec4<u32>(14467u, 55800u, arg_0.c, 1u)), vec4<u32>(4294967295u, 1u, arg_2.c.c, 284u)) & reverseBits(vec4<u32>(51124u, arg_2.c.a.x, u_input.a, u_input.a) | vec4<u32>(arg_2.c.a.x, arg_2.c.c, 0u, arg_0.a.x)), -449.0 > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1591.0)), arg_0.b.x)));
}

fn func_7(arg_0: Struct_2) -> bool {
    if (arg_0.c.e) {
        switch (func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_0.b.yww - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.c.c, 2u)], global0[_wgslsmith_index_u32(20261u, 2u)], arg_0.d), vec3<f32>(global0[_wgslsmith_index_u32(44634u, 2u)], -719.0, -596.0))))))))) {
            case -21157: {
                global1 = array<vec4<bool>, 21>();
                global1 = array<vec4<bool>, 21>();
            }
            case 1: {
                var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(241.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_0.c.a.x, 2u)], global0[_wgslsmith_index_u32(30753u, 2u)], 867.0, global0[_wgslsmith_index_u32(11881u, 2u)]))))), Struct_1(vec2<u32>(_wgslsmith_div_u32(u_input.a & arg_0.c.a.x, reverseBits(60986u)), arg_0.c.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.b, arg_0.c.b)) + vec4<f32>(arg_0.d, global0[_wgslsmith_index_u32(5791u, 2u)], -1000.0, -621.0))), min(arg_0.c.a.x, countOneBits(24872u)), arg_0.c.d, arg_0.c.d.x), _wgslsmith_f_op_f32(-arg_0.b.x));
                global0 = array<f32, 2>();
            }
            case -1: {
                let var_0 = ~reverseBits(_wgslsmith_mult_u32(u_input.a, 4959u));
                let var_1 = -2147483648;
                var var_2 = vec3<i32>(~u_input.b, -1, -41887 ^ var_1);
            }
            default: {
                let var_0 = Struct_1(_wgslsmith_mult_vec2_u32(min(func_1(Struct_1(arg_0.c.a, vec4<f32>(411.0, arg_0.b.x, global0[_wgslsmith_index_u32(arg_0.c.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), 48725u, vec2<bool>(arg_0.c.d.x, arg_0.c.e), true), _wgslsmith_f_op_f32(-1965.0 * -114.0), Struct_2(709.0, arg_0.b, arg_0.c, global0[_wgslsmith_index_u32(83974u, 2u)]), _wgslsmith_f_op_f32(trunc(-1000.0))).wz, ~firstTrailingBit(vec2<u32>(4294967295u, u_input.a))), arg_0.c.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), arg_0.c.c, vec2<bool>(arg_0.c.e, 2147483647 == ((0 >> (1u % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -30152, u_input.b)))), arg_0.c.e);
                global1 = array<vec4<bool>, 21>();
                global0 = array<f32, 2>();
                global1 = array<vec4<bool>, 21>();
                let var_1 = var_0;
            }
        }
        var var_0 = -abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-1939, ~(-1)), vec2<i32>(_wgslsmith_mod_i32(1, 2147483647), i32(-1) * -4246)));
        global0 = array<f32, 2>();
        let var_1 = -(~(vec2<i32>(-11187, u_input.b) << (vec2<u32>(u_input.a, max(arg_0.c.a.x, arg_0.c.c)) % vec2<u32>(32u))));
    }
    global0 = array<f32, 2>();
    for (; !arg_0.c.e; ) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[31u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
        var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u & 5048u, arg_0.c.c) >> (firstTrailingBit(~(vec2<u32>(u_input.a, arg_0.c.a.x) >> (vec2<u32>(1u, 44311u) % vec2<u32>(32u)))) % vec2<u32>(32u)), vec2<u32>(arg_0.c.c, 15027u));
        var var_1 = !func_3(arg_0.c.e, arg_0.c, Struct_2(_wgslsmith_f_op_f32(-383.0 + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(368u, 2u)] - global0[_wgslsmith_index_u32(arg_0.c.c, 2u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -1665.0, global0[_wgslsmith_index_u32(arg_0.c.c, 2u)], arg_0.a) - vec4<f32>(arg_0.b.x, 313.0, global0[_wgslsmith_index_u32(0u, 2u)], -338.0)))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346.0))), ~(~vec3<u32>(arg_0.c.c, u_input.a, 1u)));
        continue;
    }
    loop {
        if (LOOP_COUNTERS[32u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
        let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -659.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.d)) - _wgslsmith_f_op_f32(-arg_0.c.b.x)));
    }
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    for (; ; ) {
        if (LOOP_COUNTERS[33u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
        break;
    }
    global1 = array<vec4<bool>, 21>();
    switch (u_input.b) {
        case 11156: {
            if (func_7(Struct_2(-185.0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-720.0, 811.0, 429.0, global0[_wgslsmith_index_u32(u_input.a, 2u)])), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a & u_input.a, 2u)], _wgslsmith_f_op_f32(-319.0), _wgslsmith_f_op_f32(363.0 * -171.0), -1102.0))), Struct_1(~(~vec2<u32>(7096u, u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-185.0, 1230.0, global0[_wgslsmith_index_u32(1u, 2u)], 178.0)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-243.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], 1661.0, 886.0)))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 1u, 0u)), func_1(Struct_1(vec2<u32>(u_input.a, u_input.a), vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], -1641.0), 1u, vec2<bool>(true, false), true), -802.0, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 2u)], vec4<f32>(-1000.0, -494.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], 568.0), Struct_1(vec2<u32>(u_input.a, 25677u), vec4<f32>(-646.0, global0[_wgslsmith_index_u32(20793u, 2u)], -847.0, 835.0), u_input.a, vec2<bool>(true, true), true), -540.0), global0[_wgslsmith_index_u32(57256u, 2u)])), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), !true | true), _wgslsmith_f_op_f32(-1300.0)))) {
                var var_0 = -firstLeadingBit(i32(-1) * -u_input.b) << (~(~_wgslsmith_mult_u32(reverseBits(u_input.a), u_input.a)) % 32u);
                let var_1 = Struct_1(reverseBits(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, 64047u), _wgslsmith_sub_u32(4294967295u, u_input.a)), 2u)], -548.0, 1051.0, global0[_wgslsmith_index_u32(~u_input.a, 2u)]) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(38541u, 2u)]))), _wgslsmith_f_op_f32(-661.0 - _wgslsmith_f_op_f32(-422.0 - global0[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_f_op_f32(exp2(-1583.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -545.0), global0[_wgslsmith_index_u32(u_input.a, 2u)]))), reverseBits(firstLeadingBit(_wgslsmith_mod_u32(max(u_input.a, u_input.a), u_input.a))), vec2<bool>(false, true), true);
                return;
            }
            global1 = array<vec4<bool>, 21>();
            let var_0 = false;
            global0 = array<f32, 2>();
            var var_1 = var_0;
        }
        case -32964: {
            global1 = array<vec4<bool>, 21>();
            loop {
                if (LOOP_COUNTERS[34u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[34u] = LOOP_COUNTERS[34u] + 1u;
                global1 = array<vec4<bool>, 21>();
                let var_0 = Struct_2(-126.0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1457.0 - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(17183u, 2u)]))), global0[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(50043u, u_input.a))), 2u)], 639.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 2u)] + 215.0), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(18669u, 2u)], -109.0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-999.0, 859.0, 997.0, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<f32>(-785.0, -1000.0, global0[_wgslsmith_index_u32(0u, 2u)], 1000.0), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(337.0, -551.0, global0[_wgslsmith_index_u32(18505u, 2u)], global0[_wgslsmith_index_u32(64959u, 2u)]))), select(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.a, 21u)]))))), Struct_1(~reverseBits(vec2<u32>(u_input.a, 0u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(30050u, 2u)], -147.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])))), vec4<f32>(global0[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_f32(-1082.0), _wgslsmith_f_op_f32(-501.0)))), u_input.a << (countOneBits(u_input.a) % 32u), func_3(func_6(abs(vec3<i32>(u_input.b, u_input.b, 4558)), u_input.b | u_input.b), Struct_1(vec2<u32>(4294967295u, u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(747.0, -303.0, global0[_wgslsmith_index_u32(120389u, 2u)], 115.0), vec4<f32>(-517.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], 849.0)), abs(80273u), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), Struct_2(_wgslsmith_f_op_f32(-749.0), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(30918u, 2u)], 760.0), vec4<f32>(-220.0, -730.0, -810.0, global0[_wgslsmith_index_u32(u_input.a, 2u)]))), Struct_1(vec2<u32>(u_input.a, 53280u), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], -1269.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], 503.0), u_input.a, vec2<bool>(false, false), true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(36599u, u_input.a), 2u)]), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(29423u, 39802u, 0u))), !(!(!true))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~firstTrailingBit(countOneBits(70995u)), 2u)]));
                let var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 0u), 2u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-350.0 + -394.0) * _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(22017u, 2u)]))), var_0.d, var_0.b.x, var_0.c.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~1u, 2u)], -1001.0, _wgslsmith_f_op_f32(floor(487.0)), global0[_wgslsmith_index_u32(1u << (1u % 32u), 2u)]))), Struct_1(reverseBits(countOneBits(~vec2<u32>(var_0.c.c, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(342.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], 966.0, var_0.b.x))), _wgslsmith_f_op_vec4_f32(-var_0.b), !vec4<bool>(false, var_0.c.e, true, true))) + var_0.c.b), ~(abs(9921u) | u_input.a), vec2<bool>(var_0.c.e, _wgslsmith_sub_i32(u_input.b, u_input.b) == 1728), all(global1[_wgslsmith_index_u32(u_input.a, 21u)])), 717.0);
            }
            loop {
                if (LOOP_COUNTERS[35u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[35u] = LOOP_COUNTERS[35u] + 1u;
                let var_0 = _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~37851u), u_input.a), 2u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~20410u, 2u)]))));
                global1 = array<vec4<bool>, 21>();
            }
        }
        default: {
            let var_0 = Struct_1(countOneBits(~(~(~vec2<u32>(25037u, 0u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-834.0, 1247.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])) - vec4<f32>(global0[_wgslsmith_index_u32(59798u, 2u)], 510.0, 1150.0, global0[_wgslsmith_index_u32(1u, 2u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(7068u, 2u)], global0[_wgslsmith_index_u32(16569u, 2u)], 1858.0, 588.0)))), u_input.a, !select(vec2<bool>(u_input.a >= u_input.a, all(vec3<bool>(false, false, true))), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_3(false, Struct_1(vec2<u32>(24024u, u_input.a), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], -837.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], -466.0), 9651u, vec2<bool>(true, false), false), Struct_2(-1619.0, vec4<f32>(1646.0, 1000.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], 868.0), Struct_1(vec2<u32>(u_input.a, u_input.a), vec4<f32>(595.0, -273.0, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), u_input.a, vec2<bool>(false, false), false), global0[_wgslsmith_index_u32(14646u, 2u)]), vec3<u32>(u_input.a, u_input.a, u_input.a))), false);
            var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(~1u, var_0.c) & 0u, 2u)]));
            loop {
                if (LOOP_COUNTERS[36u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[36u] = LOOP_COUNTERS[36u] + 1u;
            }
        }
    }
    global1 = array<vec4<bool>, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337.0 * global0[_wgslsmith_index_u32(1u, 2u)]))), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000.0, global0[_wgslsmith_index_u32(37888u, 2u)])) + -930.0)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(0u, 2u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(reverseBits(23666), 2147483647, -2147483648, i32(-1) * -15897) >> (~vec4<u32>(u_input.a, 4294967295u, ~u_input.a, 1u) % vec4<u32>(32u)), abs(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 45534u, 14145u), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(20637u, 9033u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)))) | ~vec3<u32>(54686u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 20924u), vec4<u32>(53731u, u_input.a, u_input.a, 23297u)), _wgslsmith_dot_vec2_u32(vec2<u32>(34764u, 68533u), vec2<u32>(u_input.a, u_input.a))), u_input.b, 1u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2080.0, 107.0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1009.0)))), _wgslsmith_f_op_f32(trunc(1079.0))));
}

