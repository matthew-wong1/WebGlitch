// {"0:0":[84,97,93,165,43,144,56,180]}
// Seed: 9754266114077339316

struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(vec3<u32>(4294967295u, 4294967295u, 1209u), false, vec3<bool>(false, false, false), Struct_2(vec2<f32>(-842.0, 1000.0), vec3<u32>(57694u, 13348u, 0u)), Struct_3(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(false, true), vec4<bool>(true, false, true, false), Struct_1(vec3<bool>(false, false, true)), vec2<i32>(1028, 2147483647))), Struct_5(vec3<u32>(4879u, 11291u, 0u), false, vec3<bool>(false, false, true), Struct_2(vec2<f32>(919.0, -1301.0), vec3<u32>(1u, 45430u, 19911u)), Struct_3(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(false, true), vec4<bool>(false, true, false, false), Struct_1(vec3<bool>(true, false, false)), vec2<i32>(-26702, 1))), Struct_5(vec3<u32>(0u, 4294967295u, 5076u), false, vec3<bool>(true, false, true), Struct_2(vec2<f32>(-135.0, 290.0), vec3<u32>(124181u, 8928u, 89885u)), Struct_3(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(false, false), vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(false, true, true)), vec2<i32>(-2147483648, -17276))), Struct_5(vec3<u32>(4294967295u, 4294967295u, 54286u), false, vec3<bool>(false, true, false), Struct_2(vec2<f32>(-1548.0, 290.0), vec3<u32>(4294967295u, 0u, 1u)), Struct_3(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(true, false), vec4<bool>(false, true, true, true), Struct_1(vec3<bool>(false, true, false)), vec2<i32>(43362, -42466))), Struct_5(vec3<u32>(4721u, 0u, 4294967295u), true, vec3<bool>(true, true, false), Struct_2(vec2<f32>(-936.0, 1609.0), vec3<u32>(72051u, 0u, 118989u)), Struct_3(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(true, false), vec4<bool>(true, true, false, false), Struct_1(vec3<bool>(true, false, true)), vec2<i32>(-39939, 1))), Struct_5(vec3<u32>(11215u, 60469u, 4294967295u), true, vec3<bool>(false, true, true), Struct_2(vec2<f32>(-1142.0, 554.0), vec3<u32>(58224u, 26493u, 1u)), Struct_3(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(true, false), vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(true, false, true)), vec2<i32>(-1, 2147483647))), Struct_5(vec3<u32>(0u, 4294967295u, 0u), false, vec3<bool>(false, false, true), Struct_2(vec2<f32>(-2338.0, 176.0), vec3<u32>(84639u, 0u, 50440u)), Struct_3(Struct_1(vec3<bool>(true, true, false)), vec2<bool>(false, true), vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(true, true, true)), vec2<i32>(-2147483648, -2147483648))));

var<private> LOOP_COUNTERS: array<u32, 21>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn func_6(arg_0: u32, arg_1: vec4<i32>) -> vec2<f32> {
    var var_0 = vec4<bool>(true, select(!any(vec4<bool>(false, false, false, false)) & true, ~(i32(-1) * -1) <= arg_1.x, false), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), !true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(any(vec2<bool>(false, false)), !false))), !true);
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        break;
    }
    for (var var_1 = 24816; var_1 < -1473; var_1 += 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        switch (1) {
            default: {
                let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(259.0, _wgslsmith_f_op_f32(-920.0))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-251.0)))), 197.0)), vec2<f32>(_wgslsmith_f_op_f32(275.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-376.0, 1000.0), -619.0, any(!vec3<bool>(var_0.x, true, var_0.x))))), false));
            }
        }
        if (!any(!var_0.zy)) {
        }
    }
    if (any(select(select(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, true), false), select(vec3<bool>(var_0.x, var_0.x, true), var_0.wxx, var_0.yzw), var_0.x), var_0.xzw, !select(var_0.xwy, var_0.xwy, var_0.yxz)), vec3<bool>(var_0.x, all(var_0.xz), _wgslsmith_f_op_f32(sign(308.0)) < 1206.0), true))) {
        var var_1 = Struct_3(Struct_1(vec3<bool>(true, _wgslsmith_f_op_f32(-1000.0) != _wgslsmith_f_op_f32(-1000.0), !(var_0.x | false))), select(var_0.xz, vec2<bool>(var_0.x, all(vec3<bool>(false, var_0.x, var_0.x))), !(arg_0 < 4294967295u)), select(vec4<bool>(false, var_0.x, any(var_0.zxy), any(vec3<bool>(var_0.x, true, var_0.x)) && all(vec3<bool>(var_0.x, var_0.x, var_0.x))), select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, false, false, var_0.x), !vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<bool>(false, arg_0 > u_input.b, false || var_0.x, -324.0 > -1061.0)), select(select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, true, var_0.x), !vec4<bool>(true, var_0.x, true, true)), select(vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x)), ~(-1) > _wgslsmith_add_i32(arg_1.x, 28664))), Struct_1(vec3<bool>(-634.0 != 390.0, !(var_0.x || var_0.x), false)), arg_1.zw);
    }
    var_0 = vec4<bool>(var_0.x, !(!true), select(abs(~arg_1.x) != arg_1.x, !(_wgslsmith_f_op_f32(select(-1322.0, -981.0, var_0.x)) <= _wgslsmith_f_op_f32(-685.0)), any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !var_0.x);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1000.0)), _wgslsmith_f_op_f32(round(440.0))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1000.0, -1000.0)), _wgslsmith_f_op_f32(step(-2377.0, _wgslsmith_f_op_f32(-2299.0)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(859.0, 1000.0)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1398.0, -900.0))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1756.0, 1000.0) + vec2<f32>(-951.0, 423.0))))));
}

fn func_5(arg_0: Struct_5) -> vec3<u32> {
    if (false) {
        let var_0 = _wgslsmith_f_op_vec2_f32(func_6(~_wgslsmith_div_u32(1u, ~arg_0.a.x), -max(vec4<i32>(-1, -1, arg_0.e.e.x, -38879) << (~vec4<u32>(arg_0.d.b.x, 26085u, 4294967295u, u_input.a) % vec4<u32>(32u)), ~vec4<i32>(13170, arg_0.e.e.x, arg_0.e.e.x, -16965))));
    }
    if (arg_0.e.c.x) {
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_0 = ~arg_0.a.x;
            break;
        }
    }
    switch (~(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(51509, arg_0.e.e.x, arg_0.e.e.x, arg_0.e.e.x)), ~vec4<i32>(arg_0.e.e.x, arg_0.e.e.x, arg_0.e.e.x, -38828)), vec4<i32>(-1) * -vec4<i32>(arg_0.e.e.x, arg_0.e.e.x, 1, -1)) >> (countOneBits(_wgslsmith_dot_vec2_u32(arg_0.a.xx, abs(vec2<u32>(22026u, u_input.a)))) % 32u))) {
        case 2147483647: {
            switch (abs(_wgslsmith_mult_i32(i32(-1) * -5354, arg_0.e.e.x) >> ((_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a, 0u, 1u, 1u)), vec4<u32>(44775u, 103638u, arg_0.a.x, u_input.b)) ^ (~4294967295u << (~u_input.a % 32u))) % 32u))) {
                case 36113: {
                    var var_0 = arg_0.c.x;
                    global0 = array<Struct_5, 7>();
                    var_0 = !any(!(!(!arg_0.e.c)));
                    let var_1 = min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, 0u, arg_0.d.b.x & 4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_0.d.b, arg_0.a), firstTrailingBit(arg_0.a.x))), select(~(~vec4<u32>(35667u, 3219u, arg_0.d.b.x, 0u)), ~vec4<u32>(arg_0.d.b.x, 0u, 0u, 51842u), arg_0.e.c)), ~vec4<u32>(select(0u, 75936u, arg_0.b) << (~arg_0.d.b.x % 32u), 39472u, 33151u, 18430u));
                    global0 = array<Struct_5, 7>();
                }
                case -33093: {
                    let var_0 = firstLeadingBit(vec3<i32>(~_wgslsmith_dot_vec4_i32(min(vec4<i32>(1, arg_0.e.e.x, arg_0.e.e.x, arg_0.e.e.x), vec4<i32>(0, 12241, -2147483648, -2147483648)), ~vec4<i32>(0, arg_0.e.e.x, arg_0.e.e.x, 0)), arg_0.e.e.x, arg_0.e.e.x));
                    global0 = array<Struct_5, 7>();
                    global0 = array<Struct_5, 7>();
                    global0 = array<Struct_5, 7>();
                }
                default: {
                    let var_0 = Struct_4(_wgslsmith_div_u32((firstLeadingBit(60820u) ^ firstTrailingBit(u_input.a)) ^ 1u, 0u), firstTrailingBit(arg_0.d.b), ~vec3<u32>(23169u, _wgslsmith_add_u32(~1u, abs(arg_0.a.x)), min(1u, 0u)), vec3<f32>(_wgslsmith_div_f32(-1037.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(721.0))))), _wgslsmith_f_op_f32(-1489.0), -310.0));
                    return vec3<u32>(countOneBits(u_input.b), ~(~(0u & select(10505u, 1u, arg_0.b))), 64848u);
                }
            }
            global0 = array<Struct_5, 7>();
            var var_0 = arg_0.e.a;
            var_0 = arg_0.e.d;
        }
        case 48562: {
        }
        case -4667: {
            for (; true; ) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                continue;
            }
        }
        default: {
            let var_0 = Struct_4(0u, ~_wgslsmith_sub_vec3_u32(vec3<u32>(~79u, ~u_input.b, arg_0.d.b.x), arg_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(5839u, reverseBits(68741u), ~_wgslsmith_mod_u32(1u, 8259u)), select(arg_0.d.b, select(max(vec3<u32>(arg_0.d.b.x, arg_0.a.x, 1u), vec3<u32>(18529u, u_input.b, 61468u)), vec3<u32>(373u, u_input.a, u_input.a), !arg_0.c), all(!vec4<bool>(true, true, arg_0.b, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a.x, 1136.0, _wgslsmith_f_op_f32(arg_0.d.a.x * -1095.0)))));
            var var_1 = var_0.d.x;
            global0 = array<Struct_5, 7>();
            var_1 = 767.0;
            switch (arg_0.e.e.x) {
                case -49083: {
                    var var_2 = Struct_2(arg_0.d.a, (~_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(var_0.a, var_0.c.x, var_0.b.x)) << (firstTrailingBit(~vec3<u32>(0u, 1u, 4294967295u)) % vec3<u32>(32u))) | vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 10470u), var_0.c.zx), _wgslsmith_sub_u32(var_0.c.x << (arg_0.a.x % 32u), ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(85499u, u_input.b), vec2<u32>(1667u, 13332u)) ^ ~0u));
                    global0 = array<Struct_5, 7>();
                    var var_3 = arg_0;
                }
                case 0: {
                    let var_2 = ~(~(-arg_0.e.e.x | 14935) | _wgslsmith_sub_i32(~(-1) | arg_0.e.e.x, arg_0.e.e.x));
                    var var_3 = var_0;
                    var var_4 = var_3.c.xy;
                }
                case -1: {
                    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972.0) * _wgslsmith_f_op_f32(-arg_0.d.a.x)));
                    var var_2 = arg_0.d;
                    let var_3 = -(~vec2<i32>(arg_0.e.e.x, -arg_0.e.e.x));
                    var var_4 = vec4<u32>(u_input.b, var_0.b.x, ~select(47930u, 0u, any(arg_0.e.a.a)), 59981u);
                    let var_5 = Struct_1(select(!vec3<bool>(all(arg_0.e.c), all(arg_0.e.c), !arg_0.c.x), vec3<bool>((0u == 4294967295u) || (-1 >= 45717), any(vec2<bool>(true, arg_0.b)), arg_0.c.x), vec3<bool>(false, all(!arg_0.c.zy), -23841 <= -13144)));
                }
                case 15553: {
                    var var_2 = abs(1u);
                }
                default: {
                }
            }
        }
    }
    global0 = array<Struct_5, 7>();
    let var_0 = arg_0.a.x;
    return arg_0.d.b;
}

fn func_7(arg_0: Struct_4) -> Struct_3 {
    global0 = array<Struct_5, 7>();
    switch (~(-2147483648 << (firstTrailingBit(firstLeadingBit(~u_input.a)) % 32u))) {
        case -3400: {
            var var_0 = arg_0.d.x;
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                let var_1 = !select(!vec2<bool>(!false, false), vec2<bool>(false, !true | any(vec3<bool>(true, true, true))), false);
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                global0 = array<Struct_5, 7>();
                let var_1 = min(~min(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(60538u, arg_0.a, u_input.a, arg_0.a), vec4<u32>(arg_0.b.x, 27023u, 49427u, arg_0.b.x), vec4<u32>(2943u, u_input.a, u_input.b, 8111u)), ~vec4<u32>(4599u, 54900u, 52447u, arg_0.b.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), vec4<u32>(18169u, arg_0.c.x, 8453u, arg_0.b.x) & ~vec4<u32>(arg_0.c.x, arg_0.a, arg_0.c.x, arg_0.b.x)), vec4<u32>(u_input.b, firstTrailingBit(arg_0.a), 4294967295u, 30875u & ~arg_0.c.x));
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var_0 = arg_0.d.x;
                global0 = array<Struct_5, 7>();
                continue;
            }
            let var_1 = ~(~(20450 >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, arg_0.c.x), ~arg_0.c.x) % 32u)));
        }
        case -1: {
            return Struct_3(Struct_1(select(select(vec3<bool>(false, false, false), !vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !(!vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-491.0) >= _wgslsmith_f_op_f32(max(arg_0.d.x, arg_0.d.x)))), vec2<bool>(!(!all(vec3<bool>(true, false, true))), true), select(vec4<bool>(!all(vec2<bool>(true, true)), false, true, all(!vec2<bool>(false, true))), !(!(!vec4<bool>(false, true, false, true))), true), Struct_1(select(vec3<bool>(true, true || true, false | false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), !vec3<bool>(false, false, false)), select(!vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), !true))), vec2<i32>(i32(-1) * -2147483648, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1, 2147483647), vec2<i32>(1373, -1))) ^ select(_wgslsmith_add_i32(-2147483648, -25744), -2147483648, true)));
        }
        case -8438: {
            let var_0 = Struct_3(Struct_1(vec3<bool>(true, all(vec2<bool>(false, false)) && any(vec3<bool>(false, true, false)), any(vec2<bool>(false, false)))), vec2<bool>(all(vec2<bool>(!false, arg_0.d.x != arg_0.d.x)), false), select(!vec4<bool>(true, !true, !true, !true), !(!(!vec4<bool>(false, true, false, true))), vec4<bool>(any(vec2<bool>(true, true)), !any(vec3<bool>(true, false, false)), all(!vec4<bool>(true, true, false, false)), !(false || false))), Struct_1(!select(!vec3<bool>(false, true, true), !vec3<bool>(false, true, true), !vec3<bool>(false, true, true))), -select(~vec2<i32>(0, 27953), -vec2<i32>(-19790, 9786), false) >> (vec2<u32>(_wgslsmith_mult_u32(20366u, arg_0.a), 47440u) % vec2<u32>(32u)));
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                global0 = array<Struct_5, 7>();
                continue;
            }
            let var_1 = var_0.e.x;
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            }
            if (select(-1410.0 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x) + _wgslsmith_f_op_f32(-arg_0.d.x)), all(!var_0.c) && !var_0.d.a.x, false) & true) {
                global0 = array<Struct_5, 7>();
                let var_2 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
                global0 = array<Struct_5, 7>();
                var var_3 = min(~(-(~vec4<i32>(17940, -17570, 1, var_2.e.e.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(46569u, arg_0.b.x, 0u, var_2.d.b.x), vec4<u32>(0u, 33079u, 1u, 1u), vec4<u32>(var_2.d.b.x, 52274u, 4294967295u, u_input.b)) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mult_i32(countOneBits(var_0.e.x), reverseBits(-2147483648)), i32(-1) * -var_0.e.x, i32(-1) * 0, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-4093, 58975, var_0.e.x, 1)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.e.x, var_1, 64045, -16415), vec4<i32>(28662, var_1, var_2.e.e.x, var_1))), -(-45266 >> (u_input.a % 32u)), -(1 ^ 33305))));
                global0 = array<Struct_5, 7>();
            }
        }
        default: {
            for (var var_0 = 1660; var_0 <= 20248; ) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                global0 = array<Struct_5, 7>();
                global0 = array<Struct_5, 7>();
                break;
            }
        }
    }
    let var_0 = Struct_3(Struct_1(vec3<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(false, true, false, false)), !(false | false))), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), !vec2<bool>(false, true), false || true), !vec2<bool>(false, false), vec2<bool>(1 != 2147483647, !false)), vec2<bool>(!(!false), all(!vec2<bool>(true, false)))), !(!vec4<bool>(false, !true, all(vec3<bool>(true, false, false)), true)), Struct_1(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), !vec3<bool>(true, false, false), vec3<bool>(true, true, true))), firstTrailingBit(-vec2<i32>(_wgslsmith_mult_i32(44723, 33669), -1)));
    let var_1 = min(var_0.e.x, _wgslsmith_dot_vec2_i32(-select(vec2<i32>(2147483647, var_0.e.x) & var_0.e, _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.e.x, 2147483647), vec2<i32>(2147483647, var_0.e.x)), vec2<bool>(var_0.c.x, var_0.c.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1) * -var_0.e, ~(~var_0.e))));
    var var_2 = var_0.b;
    return Struct_3(Struct_1(var_0.d.a), var_0.b, vec4<bool>(true, var_2.x & !(u_input.b < 90866u), !var_0.c.x, false), var_0.d, vec2<i32>(reverseBits(var_1), var_0.e.x));
}

fn func_4(arg_0: vec2<f32>) -> bool {
    global0 = array<Struct_5, 7>();
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        switch (-max(-14145, 29649) >> (21568u % 32u)) {
            case -2147483648: {
                let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.a), 7u)];
                global0 = array<Struct_5, 7>();
            }
            case -1: {
                global0 = array<Struct_5, 7>();
            }
            case 6645: {
                var var_0 = func_7(Struct_4(_wgslsmith_dot_vec3_u32(func_5(global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec3<u32>(77461u, u_input.a, 0u) | _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(0u, u_input.a, 40u))), vec3<u32>(~67479u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 63172u), vec3<u32>(1u, u_input.b, 4294967295u))) ^ vec3<u32>(~0u, 1u, 22116u), vec3<u32>(u_input.b, u_input.a, 0u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(803.0, 1660.0, -1410.0))), vec3<f32>(_wgslsmith_f_op_f32(max(1294.0, -210.0)), _wgslsmith_f_op_f32(step(arg_0.x, -149.0)), _wgslsmith_f_op_f32(trunc(arg_0.x)))))));
                let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
                var var_2 = Struct_3(Struct_1(!var_0.c.yzy), func_7(Struct_4(min(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(1u, u_input.b, u_input.b))), ~countOneBits(vec3<u32>(3689u, u_input.b, u_input.b)), (vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(u_input.b, u_input.a, u_input.b)) & vec3<u32>(17219u, u_input.a, 2601u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 206.0, var_1))))).d.a.xx, func_7(Struct_4(u_input.b, vec3<u32>(u_input.a, 4294967295u, u_input.b) ^ countOneBits(vec3<u32>(1u, u_input.a, u_input.b)), countOneBits(~vec3<u32>(u_input.a, 1u, u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(var_1 - arg_0.x), _wgslsmith_f_op_f32(floor(-672.0)), _wgslsmith_f_op_f32(324.0 * arg_0.x)))).c, Struct_1(!(!(!var_0.c.wyw))), var_0.e);
                let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + arg_0) - arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 403.0)), any(vec2<bool>(!true, false)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-924.0) - _wgslsmith_f_op_f32(step(269.0, arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1993.0 + arg_0.x), 2355.0))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) + 534.0), _wgslsmith_f_op_f32(sign(arg_0.x))), func_7(Struct_4(reverseBits(u_input.a), ~vec3<u32>(u_input.a, 4294967295u, 16044u), select(vec3<u32>(15351u, 29517u, 1u), vec3<u32>(92138u, 0u, u_input.b), var_2.d.a), vec3<f32>(878.0, -175.0, 217.0))).b)), !vec2<bool>(func_7(Struct_4(26221u, vec3<u32>(u_input.b, u_input.a, 1u), vec3<u32>(11082u, u_input.a, 4294967295u), vec3<f32>(var_1, arg_0.x, arg_0.x))).a.a.x, !true)));
                continue;
            }
            case 14539: {
                global0 = array<Struct_5, 7>();
            }
            default: {
                break;
            }
        }
    }
    global0 = array<Struct_5, 7>();
    if (_wgslsmith_add_i32(-(~(88253 & 43850)), 11666) <= 220) {
        global0 = array<Struct_5, 7>();
        for (; (any(select(!vec2<bool>(false, true), vec2<bool>(true, true), false || true)) && select(select(!false, !true, 2147483647 <= 33072), !all(vec3<bool>(true, true, true)), func_7(Struct_4(4294967295u, vec3<u32>(1u, 1u, 0u), vec3<u32>(31105u, 68104u, u_input.a), vec3<f32>(arg_0.x, arg_0.x, arg_0.x))).b.x)) & any(vec4<bool>(any(vec4<bool>(true, false, false, true)), (arg_0.x != arg_0.x) | (true | true), max(50105u, 4294967295u) == _wgslsmith_div_u32(4294967295u, u_input.a), !func_7(Struct_4(u_input.b, vec3<u32>(40411u, 4294967295u, 35169u), vec3<u32>(31891u, u_input.b, 22749u), vec3<f32>(arg_0.x, arg_0.x, arg_0.x))).d.a.x)); ) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            continue;
        }
    }
    for (var var_0: i32; !(!(!(!false || all(vec3<bool>(false, true, true))))); ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
    }
    return func_7(Struct_4(select(~abs(u_input.b), ~u_input.b, !true != (true & true)), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.a, 4294967295u)) | ~vec3<u32>(u_input.b, u_input.b, 46297u), abs(vec3<u32>(u_input.a, u_input.a, u_input.b) ^ vec3<u32>(0u, u_input.b, u_input.a))), vec3<u32>(1u >> (61642u % 32u), 1u, u_input.a << (u_input.b % 32u)) >> (max(~vec3<u32>(4294967295u, 1u, 0u), ~vec3<u32>(34558u, 1u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -618.0, arg_0.x) + vec3<f32>(1091.0, -1827.0, arg_0.x)))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-723.0), _wgslsmith_f_op_f32(floor(arg_0.x))))))).a.a.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2) -> vec2<i32> {
    global0 = array<Struct_5, 7>();
    var var_0 = any(!arg_0.d.a);
    global0 = array<Struct_5, 7>();
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        var var_1 = Struct_5(firstLeadingBit(reverseBits(~arg_2.b)), any(vec3<bool>(_wgslsmith_mult_u32(u_input.a, u_input.b) >= ~1u, !(arg_0.d.a.x == arg_0.a.a.x), false)), select(vec3<bool>(!arg_0.a.a.x, func_4(_wgslsmith_f_op_vec2_f32(-arg_2.a)), (arg_0.d.a.x | true) || (arg_2.a.x <= 1026.0)), vec3<bool>(false, true, all(!arg_0.c)), vec3<bool>(false, false, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, -118.0))))), Struct_2(arg_2.a, firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(21289u, 4294967295u), abs(4294967295u), _wgslsmith_clamp_u32(u_input.a, u_input.b, u_input.a)))), arg_0);
    }
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-118.0 * arg_2.a.x), arg_2.a.x)))) + 344.0);
            global0 = array<Struct_5, 7>();
        }
    }
    return _wgslsmith_div_vec2_i32(arg_1.xz, arg_1.zx >> (arg_2.b.yx % vec2<u32>(32u)));
}

fn func_8(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = 2755;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1105.0 - -711.0), -923.0, -1546.0, _wgslsmith_f_op_f32(-698.0 + 1101.0)) - vec4<f32>(-2172.0, _wgslsmith_f_op_f32(f32(-1.0) * -1004.0), _wgslsmith_f_op_f32(-475.0 + -283.0), _wgslsmith_f_op_f32(224.0 + -1314.0))))));
    var var_2 = func_7(Struct_4(~(~abs(10202u)), max(vec3<u32>(u_input.b, ~4294967295u, 1u), min(~vec3<u32>(u_input.b, u_input.a, u_input.b), ~vec3<u32>(4294967295u, 97052u, 1u))), vec3<u32>(~u_input.a, _wgslsmith_add_u32(16685u, u_input.a) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, 1u, u_input.b), vec4<u32>(11371u, 4294967295u, u_input.b, 56119u)), u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-206.0), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -248.0), -518.0)))).c.xy;
    let var_3 = _wgslsmith_div_vec4_u32(~firstLeadingBit(firstTrailingBit(vec4<u32>(0u, u_input.b, u_input.a, u_input.b)) | ~vec4<u32>(u_input.a, 1u, 16738u, u_input.b)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, _wgslsmith_add_u32(1u, u_input.a), func_5(global0[_wgslsmith_index_u32(1u, 7u)]).x, abs(26848u)), vec4<u32>(0u, u_input.b, ~4294967295u, u_input.a)), _wgslsmith_mult_u32(u_input.a, u_input.a | u_input.a), ~(~u_input.b), (firstLeadingBit(4294967295u) << (~28117u % 32u)) << (~(~1u) % 32u)));
    var var_4 = ~(-arg_2.x);
    return arg_0;
}

fn func_2() -> vec3<u32> {
    let var_0 = func_8(Struct_3(Struct_1(vec3<bool>(false, all(vec3<bool>(true, false, true)), !false)), vec2<bool>(true, false), select(vec4<bool>(false, select(false, true, true), true, select(false, true, false)), vec4<bool>(!true, true, u_input.b >= 1u, 596.0 > 572.0), !(true | true)), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), _wgslsmith_mult_vec2_i32(vec2<i32>(~(-2147483648), -2147483648), abs(func_3(Struct_3(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(true, true), vec4<bool>(true, true, false, false), Struct_1(vec3<bool>(false, false, true)), vec2<i32>(-2147483648, 2147483647)), vec3<i32>(-5038, 96, 1), Struct_2(vec2<f32>(-960.0, 1000.0), vec3<u32>(901u, u_input.a, 1u)))))), ~_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(27308, 0)), vec2<i32>(_wgslsmith_sub_i32(2147483647, -65156), 8540)), func_3(Struct_3(Struct_1(vec3<bool>(true, false, false)), !func_7(Struct_4(u_input.b, vec3<u32>(99377u, u_input.a, u_input.b), vec3<u32>(18871u, 7744u, 84054u), vec3<f32>(-1530.0, 516.0, -241.0))).c.ww, vec4<bool>(!true, all(vec3<bool>(false, true, true)), true || false, 12592 == -2147483648), Struct_1(vec3<bool>(false, true, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647, -2147483648) | vec2<i32>(2147483647, -1), -vec2<i32>(2147483647, 1))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1) * -vec3<i32>(-2147483648, 26445, 0), _wgslsmith_mod_vec3_i32(-vec3<i32>(-8120, 6477, 0), vec3<i32>(-38084, -54550, -1) & vec3<i32>(-17353, 1561, -2147483648))), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1512.0, -369.0), vec2<f32>(815.0, -884.0), vec2<bool>(false, true))))), vec3<u32>(0u, 4294967295u, ~0u))));
    let var_1 = u_input.a;
    global0 = array<Struct_5, 7>();
    if (true) {
        var var_2 = Struct_3(var_0.d, !var_0.c.ww, !(!select(func_7(Struct_4(var_1, vec3<u32>(30993u, u_input.a, var_1), vec3<u32>(53359u, 1u, var_1), vec3<f32>(-352.0, -386.0, -1167.0))).c, var_0.c, !var_0.c)), func_7(Struct_4(29347u, firstTrailingBit(vec3<u32>(1u, 0u, u_input.a) & vec3<u32>(u_input.b, u_input.b, u_input.b)), ~select(vec3<u32>(u_input.b, 30094u, 46214u), vec3<u32>(48336u, u_input.b, u_input.a), var_0.c.xxz), _wgslsmith_div_vec3_f32(vec3<f32>(307.0, -1363.0, -811.0), _wgslsmith_f_op_vec3_f32(vec3<f32>(705.0, 367.0, -140.0) - vec3<f32>(-241.0, -1570.0, -1000.0))))).d, vec2<i32>(-var_0.e.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, 55440), vec4<i32>(1, 0, 2147483647, 1) >> (vec4<u32>(var_1, 42564u, 0u, 4294967295u) % vec4<u32>(32u))))));
        let var_3 = Struct_4(~_wgslsmith_mult_u32(0u ^ (var_1 << (11077u % 32u)), u_input.b), ~firstTrailingBit(~vec3<u32>(u_input.a, var_1, u_input.b) >> (abs(vec3<u32>(11707u, u_input.b, u_input.a)) % vec3<u32>(32u))), func_5(global0[_wgslsmith_index_u32(0u, 7u)]) << ((vec3<u32>(countOneBits(var_1), ~34712u, min(4294967295u, 1u)) & vec3<u32>(u_input.b, func_5(global0[_wgslsmith_index_u32(u_input.b, 7u)]).x, ~var_1)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(224.0)), _wgslsmith_f_op_f32(trunc(1683.0)), -382.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(303.0, -254.0, -794.0))))));
        switch (~(~0)) {
            case -22676: {
                var_2 = func_7(var_3);
                var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1543.0, 596.0)), _wgslsmith_f_op_f32(round(1987.0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d.x, 1790.0)) + _wgslsmith_f_op_vec2_f32(floor(var_3.d.xy))))), var_3.c);
                var var_5 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(~var_2.e.x, i32(-1) * -1, var_0.e.x)), vec3<i32>(abs(_wgslsmith_mod_i32(-1, ~(-1))), _wgslsmith_mod_i32(-14538, 4015), 1));
                var var_6 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
                return var_4.b;
            }
            case 2147483647: {
                var_2 = func_7(Struct_4(_wgslsmith_dot_vec3_u32(var_3.b, _wgslsmith_mod_vec3_u32(min(vec3<u32>(29322u, 20238u, 0u), vec3<u32>(14539u, u_input.a, u_input.b)), var_3.c)), vec3<u32>(48144u, var_1, reverseBits(~4294967295u)), firstLeadingBit(vec3<u32>(var_3.b.x, var_1 & 4294967295u, _wgslsmith_dot_vec2_u32(var_3.b.zx, var_3.b.zx))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_3.d)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.x, var_3.d.x, var_3.d.x)))))));
                var var_4 = Struct_4(1u, var_3.c, select(max(~var_3.c, vec3<u32>(~u_input.b, var_1 ^ 35543u, _wgslsmith_mod_u32(62946u, u_input.a))), ~select(select(vec3<u32>(u_input.b, 32837u, u_input.a), vec3<u32>(0u, 4294967295u, var_3.b.x), vec3<bool>(var_2.b.x, var_2.a.a.x, true)), vec3<u32>(u_input.b, 57844u, 2788u), vec3<bool>(var_0.d.a.x, var_2.d.a.x, false)), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.x, var_3.d.x, -1279.0)) * vec3<f32>(var_3.d.x, var_3.d.x, 1047.0))))));
            }
            case 0: {
            }
            default: {
            }
        }
        switch (_wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.e.x, -32624), firstTrailingBit(func_3(var_0, vec3<i32>(var_0.e.x, 22632, var_0.e.x), Struct_2(vec2<f32>(var_3.d.x, var_3.d.x), vec3<u32>(4294967295u, u_input.b, u_input.b))).x)), min(var_0.e.x, ~select(var_2.e.x, 21063, true)))) {
            case -24790: {
                let var_4 = func_8(var_0, select(_wgslsmith_add_vec2_i32(firstLeadingBit(min(vec2<i32>(-43308, 1), var_2.e)), -abs(var_0.e)), _wgslsmith_clamp_vec2_i32(vec2<i32>(max(2147483647, var_0.e.x), var_2.e.x), var_0.e, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, var_2.e.x, var_2.e.x, var_0.e.x), vec4<i32>(var_0.e.x, 2147483647, var_0.e.x, -1)), min(-1, var_0.e.x))), var_2.d.a.x), vec2<i32>(var_2.e.x, -2147483647));
                let var_5 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.d.zz, vec2<f32>(var_3.d.x, 1000.0))))))), vec3<u32>(var_1, ~(~var_1), var_3.a));
            }
            case -1: {
                var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.d.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(701.0, -651.0)))));
                let var_5 = var_3.c.x;
                let var_6 = var_2.e;
                var var_7 = 1;
            }
            case 1: {
                var var_4 = var_0;
                let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_3.d))));
                let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -643.0));
                let var_7 = 28347 > 33783;
                var_4 = func_8(var_0, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(1, 2147483647) >> (var_3.b.x % 32u), countOneBits(38823)), reverseBits(var_4.e), (~var_4.e & vec2<i32>(var_2.e.x, var_0.e.x)) | vec2<i32>(~41326, -2147483648 & 1)), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-64980, var_0.e.x, var_4.e.x), vec3<i32>(var_4.e.x, 2147483647, var_0.e.x)), var_2.e.x) << (var_3.c.xz % vec2<u32>(32u)));
            }
            default: {
                let var_4 = -1442.0;
            }
        }
    }
    global0 = array<Struct_5, 7>();
    return vec3<u32>(_wgslsmith_clamp_u32(~(_wgslsmith_mod_u32(var_1, 25408u) ^ ~var_1), var_1, 13415u), _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1, 39344u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1, var_1), _wgslsmith_div_vec3_u32(vec3<u32>(92576u, 16188u, var_1), vec3<u32>(var_1, u_input.b, 12609u))))), 20364u);
}

fn func_1(arg_0: i32) -> i32 {
    if (false) {
        switch (-13256) {
            case 4128: {
                global0 = array<Struct_5, 7>();
                global0 = array<Struct_5, 7>();
                global0 = array<Struct_5, 7>();
            }
            case -1: {
                global0 = array<Struct_5, 7>();
                global0 = array<Struct_5, 7>();
                let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(521.0, -1118.0)))));
                var var_1 = Struct_5(firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), ~vec3<u32>(u_input.a, 47867u, u_input.b)), ~vec3<u32>(1u, u_input.a, 4294967295u))), ~firstLeadingBit(_wgslsmith_sub_i32(2147483647, arg_0)) >= arg_0, vec3<bool>(-_wgslsmith_mod_i32(arg_0, -1) >= -countOneBits(-38096), false, all(select(!vec4<bool>(true, true, false, false), !vec4<bool>(false, false, true, true), true || true))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-1925.0), 1225.0), _wgslsmith_mod_vec3_u32(func_2(), vec3<u32>(u_input.b, u_input.b, u_input.a)) << (((vec3<u32>(5962u, u_input.b, 4178u) ^ vec3<u32>(u_input.b, 1u, u_input.b)) >> (vec3<u32>(51920u, u_input.b, 34072u) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_3(Struct_1(vec3<bool>(var_0 >= 2704.0, !true, true)), select(!vec2<bool>(true, false), !vec2<bool>(false, true), _wgslsmith_f_op_f32(select(var_0, -1000.0, false)) <= _wgslsmith_f_op_f32(abs(var_0))), func_7(Struct_4(u_input.b, vec3<u32>(u_input.a, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.a, 1u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, var_0, var_0), vec3<f32>(153.0, var_0, -810.0))))).c, func_7(Struct_4(select(u_input.b, u_input.a, true), vec3<u32>(u_input.a, 1u, u_input.b), max(vec3<u32>(8079u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 0u, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))).a, _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0, -11709), -(~vec2<i32>(-14098, -2147483648)))));
            }
            default: {
                var var_0 = min(firstTrailingBit(~func_7(Struct_4(u_input.a, vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(51131u, u_input.b, u_input.a), vec3<f32>(1000.0, -571.0, 594.0))).e.x), ~13985);
                var var_1 = 58071;
            }
        }
        global0 = array<Struct_5, 7>();
    }
    switch (~countOneBits(func_8(func_8(Struct_3(Struct_1(vec3<bool>(false, false, true)), vec2<bool>(false, false), vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(false, true, false)), vec2<i32>(arg_0, -2147483648)), vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0)), ~vec2<i32>(-24487, arg_0), _wgslsmith_add_vec2_i32(vec2<i32>(-1, 0), vec2<i32>(arg_0, -46516))).e.x) ^ -2147483648) {
        default: {
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                var var_0 = func_8(func_7(Struct_4(_wgslsmith_mult_u32(func_2().x, _wgslsmith_div_u32(u_input.a, u_input.b)), ~reverseBits(vec3<u32>(u_input.a, u_input.b, 80051u)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(27419u, 88662u, u_input.a), vec3<u32>(1u, u_input.a, 1u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-2279.0, -769.0, 484.0), vec3<f32>(-2290.0, -161.0, -140.0)))))), vec2<i32>(-1) * -select(_wgslsmith_sub_vec2_i32(vec2<i32>(43201, arg_0), vec2<i32>(arg_0, -1)), -vec2<i32>(arg_0, -2147483648), 708.0 < -1000.0), -(~(-(vec2<i32>(2147483647, arg_0) & vec2<i32>(arg_0, arg_0))))).a;
                var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(6821u, u_input.b, 9762u)), min(vec3<u32>(u_input.a, 4294967295u, u_input.b), vec3<u32>(4294967295u, 1u, 4294967295u)) & ~vec3<u32>(43790u, u_input.a, u_input.a)), vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.a), ~u_input.b, func_2().x) & vec3<u32>(_wgslsmith_div_u32(u_input.a, 18854u), countOneBits(u_input.a), ~4294967295u)), vec3<u32>(firstLeadingBit(21778u), u_input.b, min(29326u, ~1u & 28785u)));
                break;
            }
        }
    }
    for (var var_0 = firstLeadingBit(func_3(Struct_3(func_8(func_8(Struct_3(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(true, false), vec4<bool>(true, true, false, true), Struct_1(vec3<bool>(false, true, false)), vec2<i32>(-1, 0)), vec2<i32>(0, arg_0), vec2<i32>(arg_0, arg_0)), select(vec2<i32>(-31488, 2147483647), vec2<i32>(arg_0, arg_0), false), vec2<i32>(36399, -28941)).d, !vec2<bool>(true, false), !(!vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, true, false)), firstTrailingBit(vec2<i32>(-1, -22942)) | _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 2147483647), vec2<i32>(arg_0, 30404))), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, arg_0, -48481, arg_0), vec4<i32>(2147483647, arg_0, -2147483648, -1)), arg_0, arg_0), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-689.0, 1307.0)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(u_input.b, u_input.b, 1u)))).x); var_0 >= -6559; var_0 -= 1) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        let var_1 = true;
    }
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~countOneBits(u_input.b), 48602u, firstTrailingBit(~u_input.b)), ~func_2()), 7u)];
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        break;
    }
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    if (10579 > -_wgslsmith_mult_i32(func_1(_wgslsmith_add_i32(16654, -26993)), 18884)) {
        global0 = array<Struct_5, 7>();
        for (; any(func_7(Struct_4(u_input.b, vec3<u32>(u_input.b, 0u, u_input.a) | vec3<u32>(u_input.b, 14389u, 4294967295u), vec3<u32>(24610u, u_input.a, u_input.a) >> (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(560.0, -1516.0, 211.0), vec3<f32>(-491.0, -689.0, -799.0))))).c.xz) != false; ) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            break;
        }
    }
    var var_0 = Struct_4(u_input.a & ~542u, ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 9981u, u_input.b) | select(vec3<u32>(4294967295u, 0u, 9755u), vec3<u32>(u_input.a, 1u, u_input.b), false), vec3<u32>(u_input.b, u_input.a, 4294967295u)), vec3<u32>(~_wgslsmith_mod_u32(countOneBits(u_input.a), ~u_input.a), _wgslsmith_div_u32(~u_input.b << (_wgslsmith_div_u32(u_input.b, 7685u) % 32u), (u_input.a | u_input.a) ^ (26308u << (u_input.b % 32u))), 37688u << (14769u % 32u)), vec3<f32>(-157.0, _wgslsmith_f_op_vec2_f32(func_6(u_input.a, vec4<i32>(max(44946, 1), -2147483648, ~0, -1 >> (u_input.a % 32u)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-516.0 + -964.0))) + _wgslsmith_f_op_f32(f32(-1.0) * -220.0))));
    switch (~(-(i32(-1) * -_wgslsmith_div_i32(1, -17203)))) {
        case 1: {
            return;
        }
        case -17523: {
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            }
            global0 = array<Struct_5, 7>();
        }
        case 24471: {
            var var_1 = abs(_wgslsmith_div_i32(1, _wgslsmith_mod_i32(0, _wgslsmith_mult_i32(-1110, 6792)) << (firstTrailingBit(_wgslsmith_sub_u32(u_input.b, 1u)) % 32u)));
        }
        default: {
            var var_1 = Struct_4(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(select(~u_input.b, 16556u >> (var_0.a % 32u), false || true), _wgslsmith_div_u32(4294967295u, 20666u)), ~u_input.a, ~0u), ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.b, u_input.b, u_input.b)), var_0.c), ~vec3<u32>(45822u, ~(~var_0.c.x), _wgslsmith_div_u32(1u, 3703u)), var_0.d);
            global0 = array<Struct_5, 7>();
            if (!true) {
                var_1 = Struct_4(~_wgslsmith_dot_vec2_u32(var_0.c.xx, firstLeadingBit(var_1.c.xx)), ~(~(~vec3<u32>(65117u, u_input.b, var_1.b.x))), countOneBits(countOneBits(~(vec3<u32>(var_0.c.x, 1u, var_1.c.x) ^ var_1.b))), var_0.d);
                var var_2 = -2147483648;
                var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~1u), 0u), 7u)];
            }
            if (!(!any(vec4<bool>(true, false, true, true)) & !(!any(vec2<bool>(true, true))))) {
                let var_2 = func_8(Struct_3(func_7(Struct_4(~u_input.a, ~vec3<u32>(var_0.b.x, var_1.a, var_1.a), var_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 1000.0, -1125.0) - var_0.d))).d, !(!vec2<bool>(false, false)), vec4<bool>(!false || (true && true), !false || (true || true), all(!vec4<bool>(false, true, false, true)), any(func_7(Struct_4(40692u, var_0.b, vec3<u32>(var_1.a, 53485u, u_input.a), vec3<f32>(-499.0, 2185.0, 453.0))).b)), func_7(Struct_4(0u, func_5(global0[_wgslsmith_index_u32(32626u, 7u)]), abs(vec3<u32>(38560u, var_0.b.x, var_1.a)), _wgslsmith_f_op_vec3_f32(var_0.d + vec3<f32>(140.0, var_0.d.x, -135.0)))).a, func_7(Struct_4(u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(48924u, 1u, 64569u), var_0.b), ~var_0.b, vec3<f32>(-481.0, -755.0, -1000.0))).e), ~(~(-vec2<i32>(1, -353)) & select(~vec2<i32>(-2147483648, 1), firstTrailingBit(vec2<i32>(-54833, 3332)), 2147483647 <= -2147483648)), ~vec2<i32>(_wgslsmith_sub_i32(1 << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1, 2147483647), vec2<i32>(2147483647, 1))), _wgslsmith_add_i32(abs(1), select(-21145, 2147483647, true)))).c;
                let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(var_0.c.x), 7u)];
                var_0 = Struct_4(func_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x & var_0.b.x, var_3.a.x), vec2<u32>(~0u, 16776u)), 7u)]).x, abs(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(func_5(global0[_wgslsmith_index_u32(1u, 7u)]), vec3<u32>(var_1.a, var_0.c.x, 49518u)), var_1.b)), ~var_0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, 351.0, -720.0)), vec3<f32>(-249.0, var_1.d.x, -1088.0), var_3.c)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.d)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x + var_1.d.x) * _wgslsmith_f_op_f32(var_3.d.a.x + -789.0)), 2065.0, _wgslsmith_f_op_f32(trunc(1000.0)))));
            }
        }
    }
    let var_1 = 0u;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - 1661.0) + _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x)), 1000.0) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.d), var_0.d, !true)) - var_0.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.d)) * vec3<f32>(2021.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1660.0), _wgslsmith_f_op_f32(-1664.0 * 150.0))), 3004.0)));
    var var_3 = var_2.yy;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(15981), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(-1875.0 * var_0.d.x)), 365.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548.0 + -320.0)), -1038.0)));
}

