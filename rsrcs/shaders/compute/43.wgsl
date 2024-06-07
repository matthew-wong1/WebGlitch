// {"0:0":[64,244,243,14,87,252,7,200]}
// Seed: 10707603977414485374

struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

var<private> global1: Struct_1;

var<private> LOOP_COUNTERS: array<u32, 31>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn func_6() -> u32 {
    var var_0 = select(vec3<bool>(global1.a.x, !(!(u_input.a != 0)), global1.a.x), global1.a, vec3<bool>(!(!(global1.a.x | global1.a.x)), any(global1.a.yx), !(!false)));
    for (; ; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            global0 = array<vec4<f32>, 31>();
            continue;
        }
        for (var var_1 = u_input.a; true; ) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var_0 = vec3<bool>(select(select((u_input.a & -1) == min(u_input.a, -2147483648), !(!global1.a.x), !global1.a.x), select(var_0.x, false, false), select(var_0.x, _wgslsmith_f_op_f32(-1259.0 - 507.0) >= _wgslsmith_f_op_f32(exp2(-2329.0)), global1.a.x)), 2147483647 >= countOneBits(~(~(-2147483648))), !all(select(!vec2<bool>(true, global1.a.x), global1.a.yx, any(global1.a))));
            var var_2 = Struct_2(Struct_1(select(global1.a, vec3<bool>(4294967295u > u_input.b, true | false, false != true), (var_0.x | false) || true), global1.b, _wgslsmith_add_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(47968u, 4294967295u, global1.c, 0u), vec4<u32>(global1.c, 18400u, 48434u, 45047u))), ~(~43010u))), Struct_1(select(!select(global1.a, vec3<bool>(var_0.x, false, global1.a.x), global1.a), !vec3<bool>(false, true, false), global1.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(34372u ^ u_input.b, global1.c, 1u), vec3<u32>(1u, 2064u, ~global1.b.x)), global1.b.x));
        }
        let var_1 = false;
    }
    if (u_input.a <= (-10212 | -2147483648)) {
        if (!any(select(!select(vec4<bool>(global1.a.x, true, global1.a.x, false), vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, global1.a.x, var_0.x, var_0.x)), select(!vec4<bool>(true, true, false, false), vec4<bool>(global1.a.x, true, true, global1.a.x), any(vec3<bool>(global1.a.x, global1.a.x, false))), true))) {
            global0 = array<vec4<f32>, 31>();
        }
        switch (abs(u_input.a)) {
            case -21115: {
                let var_1 = vec3<i32>(-(firstLeadingBit(-12883) >> (1u % 32u)) ^ 0, 60253, 0);
                let var_2 = vec4<bool>(false, true, !var_0.x, !(!(!global1.a.x)));
                var var_3 = -var_1;
                var var_4 = Struct_2(Struct_1(!vec3<bool>(!global1.a.x, !global1.a.x, false), _wgslsmith_add_vec3_u32(global1.b, _wgslsmith_mult_vec3_u32(global1.b, ~global1.b)), u_input.b | u_input.b), Struct_1(!vec3<bool>(!var_2.x, !false, !true), global1.b, ~global1.c));
            }
            case -2215: {
                global0 = array<vec4<f32>, 31>();
                var_0 = select(global1.a, global1.a, global1.a.x);
            }
            default: {
            }
        }
        var_0 = vec3<bool>(!global1.a.x, global1.c < 61293u, (!(-1398.0 > -1000.0) & all(vec4<bool>(false, global1.a.x, var_0.x, false))) & var_0.x);
    }
    var_0 = select(vec3<bool>(!global1.a.x, true, false), vec3<bool>(global1.a.x, true, global1.a.x && (2061.0 >= _wgslsmith_f_op_f32(-413.0))), !vec3<bool>(false, global1.a.x, true));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(128.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -242.0)))))))));
    return u_input.b;
}

fn func_7(arg_0: u32, arg_1: u32) -> u32 {
    if (!(!(!false))) {
    }
    if (!global1.a.x) {
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            var var_0 = -select(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a, -1), -(vec2<i32>(-1378, u_input.a) >> (vec2<u32>(arg_1, u_input.b) % vec2<u32>(32u)))), select(~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647, u_input.a), vec2<bool>(false, global1.a.x)), vec2<i32>(~0, ~(-1)), all(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false))), global1.a.x);
            global1 = Struct_1(global1.a, (~select(vec3<u32>(arg_0, arg_0, 53387u), global1.b, false) | (vec3<u32>(u_input.b, u_input.b, u_input.b) & select(global1.b, global1.b, vec3<bool>(true, true, false)))) & (global1.b << (abs(vec3<u32>(arg_0, arg_1, arg_1)) % vec3<u32>(32u))), 23094u);
            global0 = array<vec4<f32>, 31>();
            return u_input.b;
        }
    }
    global0 = array<vec4<f32>, 31>();
    var var_0 = 59415u;
    var_0 = u_input.b;
    return 50459u;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    global1 = Struct_1(!select(!(!global1.a), vec3<bool>(!global1.a.x, global1.b.x >= 4294967295u, any(vec2<bool>(false, true))), !(!vec3<bool>(arg_0.a.x, false, global1.a.x))), abs(_wgslsmith_mult_vec3_u32(~(arg_0.b | arg_0.b), global1.b & abs(global1.b))), func_7(func_6(), _wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(arg_0.c, 28939u >> (13113u % 32u)), ~arg_0.b.x << (global1.b.x % 32u))));
    var var_0 = select(-vec2<i32>(-1, firstTrailingBit(-2147483648) << (u_input.b % 32u)), vec2<i32>(2147483647, firstTrailingBit(i32(-1) * -u_input.a)), false);
    let var_1 = Struct_2(Struct_1(vec3<bool>(arg_0.a.x, false, _wgslsmith_f_op_f32(f32(-1.0) * -425.0) < _wgslsmith_f_op_f32(trunc(1508.0))), countOneBits(global1.b), arg_0.c), arg_0);
    var var_2 = _wgslsmith_f_op_f32(abs(-131.0));
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_3 = arg_0;
        switch (-_wgslsmith_dot_vec2_i32(~vec2<i32>(~19013, u_input.a), -countOneBits(vec2<i32>(var_0.x, var_0.x) ^ vec2<i32>(u_input.a, u_input.a)))) {
            case 21974: {
                let var_4 = true;
                let var_5 = select(select(select(vec4<bool>(any(vec4<bool>(arg_1.x, true, true, arg_0.a.x)), !true, !false, !true), vec4<bool>(false, arg_1.x, false || true, arg_0.a.x && true), vec4<bool>(select(false, false, true), true, any(arg_0.a), 1294.0 > -192.0)), select(select(select(vec4<bool>(false, arg_0.a.x, arg_1.x, global1.a.x), vec4<bool>(false, arg_0.a.x, false, global1.a.x), global1.a.x), select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(var_3.a.x, true, false, false), vec4<bool>(false, var_3.a.x, true, true)), arg_0.a.x || arg_1.x), !select(vec4<bool>(true, arg_0.a.x, var_3.a.x, true), vec4<bool>(arg_0.a.x, true, var_4, arg_1.x), arg_0.a.x), (var_3.a.x || global1.a.x) | !var_1.b.a.x), !all(!vec2<bool>(false, arg_1.x))), vec4<bool>(all(select(vec4<bool>(arg_1.x, true, false, var_3.a.x), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, arg_1.x), vec4<bool>(var_3.a.x, false, true, true)), var_4 || false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-1414.0))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(822.0))), true, var_4), true);
                var var_6 = vec4<bool>(true, func_7(_wgslsmith_mod_u32(var_1.a.b.x, global1.c | 72197u), _wgslsmith_mult_u32(u_input.b, 4294967295u)) != u_input.b, any(var_5), !(!(!(!true))));
                var var_7 = Struct_1(!(!vec3<bool>(true, all(vec4<bool>(var_5.x, false, arg_1.x, true)), var_5.x)), vec3<u32>(_wgslsmith_sub_u32(~0u, firstTrailingBit(~var_1.b.c)), ~(~(~var_3.b.x)), _wgslsmith_mod_u32(u_input.b, global1.c)), var_3.b.x);
                var_7 = var_1.b;
            }
            case -39512: {
                break;
            }
            case -2147483648: {
            }
            default: {
                var_3 = arg_0;
                break;
            }
        }
        break;
    }
    return u_input.b;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> vec2<i32> {
    global1 = Struct_1(arg_1.a.a, ~select(firstTrailingBit(vec3<u32>(69801u, u_input.b, u_input.b)), ~(~arg_1.b.b), select(select(global1.a, vec3<bool>(arg_1.b.a.x, global1.a.x, false), true), select(arg_1.a.a, global1.a, global1.a), vec3<bool>(true, true, global1.a.x))), 14814u);
    if (all(vec4<bool>(global1.a.x, min(~0u, 26932u) < 4294967295u, ~_wgslsmith_mult_u32(u_input.b, 0u) <= ~u_input.b, arg_1.a.a.x))) {
        global1 = arg_1.b;
        var var_0 = _wgslsmith_mult_u32(~min(u_input.b, _wgslsmith_dot_vec2_u32(global1.b.xx, arg_1.a.b.xx)), (38216u ^ ~(0u & u_input.b)) ^ u_input.b);
        switch (u_input.a) {
            case -5977: {
                var var_1 = abs(_wgslsmith_div_u32(_wgslsmith_add_u32(~arg_1.b.b.x, u_input.b), func_5(Struct_1(vec3<bool>(arg_1.a.a.x, global1.a.x, true), ~vec3<u32>(global1.c, u_input.b, arg_1.b.b.x), u_input.b), arg_1.b.a.yy)));
                var_0 = 10736u;
                let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1462.0)))) * _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(f32(-1.0) * -1007.0), ~u_input.a == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647), vec3<i32>(2147483647, -6316, -2147483648))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-920.0))) - _wgslsmith_f_op_f32(-915.0 - _wgslsmith_f_op_f32(-arg_0)))), 56102u > select(reverseBits(27793u >> (4294967295u % 32u)), ~0u, _wgslsmith_add_i32(u_input.a, 0) < countOneBits(u_input.a))));
            }
            case 0: {
            }
            default: {
            }
        }
        var var_1 = -561.0;
    }
    for (; ; ) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        for (var var_0 = ~0; ; var_0 = -16812) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            continue;
        }
        global1 = arg_1.a;
    }
    switch (_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(0, firstTrailingBit(1)), u_input.a), -u_input.a)) {
        case 1: {
            global1 = Struct_1(vec3<bool>(arg_1.a.a.x, any(select(select(vec2<bool>(arg_1.b.a.x, global1.a.x), global1.a.xz, arg_1.a.a.x), !global1.a.yz, global1.a.x)), !(!any(global1.a.xy))), vec3<u32>(u_input.b, ~(~(~4294967295u)), ~countOneBits(func_7(0u, arg_1.b.c))), ~global1.b.x);
        }
        case -11890: {
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            }
            let var_0 = Struct_2(Struct_1(global1.a, arg_1.a.b >> (_wgslsmith_div_vec3_u32(~global1.b, vec3<u32>(u_input.b, 55763u, u_input.b) & vec3<u32>(global1.b.x, global1.b.x, u_input.b)) % vec3<u32>(32u)), ~0u), Struct_1(arg_1.a.a, vec3<u32>(abs(0u), _wgslsmith_mult_u32(~120063u, arg_1.a.c), min(u_input.b, u_input.b)), u_input.b));
        }
        case -1: {
            var var_0 = _wgslsmith_f_op_f32(abs(arg_0));
        }
        default: {
            var var_0 = -max(~vec4<i32>(u_input.a, -1, u_input.a, u_input.a), vec4<i32>(-23191, ~1, -16160, 4233)) | vec4<i32>(-15425, _wgslsmith_mult_i32(~(-u_input.a), abs(-u_input.a)), max(-2147483648, u_input.a), abs(u_input.a));
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_1 = -max(var_0.xx, -var_0.xy);
                var var_2 = arg_1;
                let var_3 = Struct_1(select(select(select(var_2.b.a, vec3<bool>(true, false, true), var_2.b.a), !global1.a, global1.a.x), !vec3<bool>(var_2.a.a.x, false | true, !true), global1.a.x), vec3<u32>(0u, ~arg_1.b.c, 13092u), 7591u);
                var var_4 = arg_1;
                let var_5 = var_3.a.x;
            }
            var var_1 = 7756 & ~var_0.x;
            return select(vec2<i32>(_wgslsmith_sub_i32(max(var_0.x, -1), var_0.x) << (0u % 32u), 4024), abs(abs(reverseBits(vec2<i32>(var_0.x, u_input.a) & vec2<i32>(-2906, -1)))), all(vec4<bool>(all(vec4<bool>(false, global1.a.x, global1.a.x, true)), !true && global1.a.x, ~1u < min(0u, 6141u), false)));
        }
    }
    for (var var_0: i32; ; var_0 -= 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        for (var var_1 = 1; true; global1 = Struct_1(vec3<bool>(arg_1.b.a.x & false, !(!(!false)), true), ~max(global1.b, select(abs(global1.b), select(vec3<u32>(1u, 1u, 0u), vec3<u32>(u_input.b, arg_1.a.c, 2822u), true), all(vec3<bool>(global1.a.x, false, arg_1.b.a.x)))), ~(global1.c << (~25477u % 32u)) >> (u_input.b % 32u))) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            global1 = Struct_1(global1.a, vec3<u32>(~0u, 43429u, _wgslsmith_mod_u32(firstTrailingBit(arg_1.a.b.x), 4294967295u)), _wgslsmith_clamp_u32(45389u, firstTrailingBit(4294967295u >> (min(29441u, arg_1.a.c) % 32u)), global1.c));
            var var_2 = arg_1.a;
            let var_3 = arg_1;
        }
    }
    return vec2<i32>((firstTrailingBit(-5810) << (arg_1.b.b.x % 32u)) << (select(~global1.b.x, max(11274u, _wgslsmith_sub_u32(u_input.b, 0u)), !(!arg_1.b.a.x)) % 32u), u_input.a ^ (-2411 | -min(u_input.a, -25157)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    global0 = array<vec4<f32>, 31>();
    let var_0 = -_wgslsmith_dot_vec4_i32(abs(max(vec4<i32>(u_input.a, 2147483647, arg_0, arg_0), -vec4<i32>(u_input.a, arg_0, arg_0, arg_0))), vec4<i32>(-1) * -(~vec4<i32>(-35901, 51074, 4925, u_input.a)));
    var var_1 = max(~2147483647, _wgslsmith_add_i32(i32(-1) * -12215, -2147483648)) ^ ~max(arg_0, i32(-1) * -arg_0);
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        if (all(vec4<bool>((false || global1.a.x) || arg_1.a.x, arg_1.a.x, false, global1.a.x))) {
            break;
        }
        if (true || (select(~(-2147483648 ^ -19028), _wgslsmith_dot_vec2_i32(func_4(1863.0, Struct_2(Struct_1(global1.a, arg_1.b, 1u), Struct_1(arg_1.a, arg_1.b, global1.b.x)), arg_2.x, global0[_wgslsmith_index_u32(1u, 31u)]), select(vec2<i32>(var_0, arg_0), vec2<i32>(-48276, -2147483648), false)), !(6747u == u_input.b)) >= _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0, var_0), -8324))) {
            let var_2 = _wgslsmith_dot_vec4_i32(~(-(~(-vec4<i32>(-45419, arg_0, 14055, 63849)))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(~26031, var_0, 0, -1)), _wgslsmith_mult_vec4_i32(abs(-vec4<i32>(arg_0, 2147483647, 2147483647, -72375)), vec4<i32>(-1) * -vec4<i32>(arg_0, 2147483647, 0, 8097))));
            global0 = array<vec4<f32>, 31>();
            global1 = Struct_1(!arg_1.a, vec3<u32>(20970u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~79799u, 13042u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, global1.b.x, 0u), vec4<u32>(46054u, global1.b.x, 64443u, global1.c)), _wgslsmith_div_u32(1u, func_6())), 19956u), firstTrailingBit(0u));
            let var_3 = !select(select(global1.a.yy, select(!vec2<bool>(true, true), !vec2<bool>(true, true), !vec2<bool>(true, true)), select(global1.a.xz, arg_1.a.zy, !vec2<bool>(false, arg_1.a.x))), vec2<bool>((u_input.b == arg_1.b.x) || (true & arg_1.a.x), false), vec2<bool>(!(0u > 1u), arg_1.a.x));
        }
        switch (arg_0) {
            case 23204: {
                global0 = array<vec4<f32>, 31>();
            }
            case -1: {
                continue;
            }
            case 2147483647: {
                break;
            }
            default: {
                return Struct_1(!vec3<bool>(arg_1.a.x, all(!vec4<bool>(true, global1.a.x, true, global1.a.x)), !all(global1.a)), vec3<u32>(_wgslsmith_clamp_u32(abs(40726u), ~_wgslsmith_mod_u32(u_input.b, u_input.b), reverseBits(~65565u)), ~arg_1.b.x, 47507u), min(~4294967295u, u_input.b));
            }
        }
        for (var var_2 = 2147483647; var_2 < -14918; var_1 = u_input.a) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            break;
        }
    }
    var var_2 = arg_1.a.x;
    return arg_1;
}

fn func_8(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = -324.0;
    if (all(global1.a.xy)) {
        switch (i32(-1) * -_wgslsmith_clamp_i32(u_input.a, 2147483647, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0, 1, u_input.a), vec3<i32>(u_input.a, u_input.a, 2147483647)))) {
            case -35284: {
                let var_1 = Struct_2(Struct_1(arg_1.a, ~vec3<u32>(countOneBits(37492u), u_input.b, 0u >> (89696u % 32u)), arg_1.c), Struct_1(vec3<bool>(all(arg_1.a), !all(arg_2.a), arg_1.a.x), arg_1.b, select(_wgslsmith_div_u32(~arg_2.c, ~33724u), 22984u, true)));
                var var_2 = arg_1.a.x && (true | (~(~1u) != abs(var_1.b.b.x)));
                var var_3 = var_1.b;
            }
            default: {
                var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1050.0, _wgslsmith_f_op_f32(209.0 * 472.0))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(116.0 - _wgslsmith_f_op_f32(-338.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1088.0))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2089.0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(116.0)))));
                let var_1 = arg_1;
                global0 = array<vec4<f32>, 31>();
                var var_2 = func_3(i32(-1) * -min(-u_input.a, u_input.a), func_3(-_wgslsmith_mult_i32(~0, u_input.a), func_3(select(3457, u_input.a, arg_0.x) & select(-48190, -8635, true), arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-161.0, -255.0, -401.0) + vec3<f32>(-287.0, 779.0, -1000.0)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -694.0), _wgslsmith_f_op_f32(-408.0 - 2541.0), _wgslsmith_f_op_f32(f32(-1.0) * -856.0)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1560.0, -468.0, 355.0))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2460.0, -921.0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000.0, -102.0) * _wgslsmith_f_op_f32(1082.0 * -882.0)))), 1083.0, _wgslsmith_div_f32(-2261.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1454.0)) + _wgslsmith_f_op_f32(1000.0 * 834.0)))));
                var var_3 = Struct_2(func_3(-41600, arg_2, vec3<f32>(-704.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514.0 + 1092.0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1388.0)))))), Struct_1(global1.a, _wgslsmith_mod_vec3_u32(vec3<u32>(~arg_2.b.x, 53262u | arg_2.b.x, _wgslsmith_add_u32(var_1.c, arg_1.c)), var_2.b), 4294967295u));
            }
        }
    }
    switch (u_input.a) {
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                continue;
            }
            for (var var_1 = 2147483647; var_1 <= 0; global0 = array<vec4<f32>, 31>()) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            }
            let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u, (u_input.b ^ arg_1.c) >> (0u % 32u)), arg_1.b.zx);
            switch (_wgslsmith_mod_i32(_wgslsmith_div_i32(firstLeadingBit(30560), -78918), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1223.0, 575.0, arg_2.a.x)), 133.0), Struct_2(func_3(u_input.a, Struct_1(arg_2.a, vec3<u32>(0u, u_input.b, var_1.x), 35177u), vec3<f32>(556.0, -1000.0, -769.0)), func_3(0, Struct_1(arg_2.a, vec3<u32>(1u, arg_2.b.x, 48598u), 45512u), vec3<f32>(331.0, 388.0, -186.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2446.0)) + _wgslsmith_f_op_f32(abs(351.0))), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~4294967295u, 31u)] - vec4<f32>(1376.0, 858.0, 1403.0, 235.0))).x << (_wgslsmith_div_u32(select(4294967295u, firstLeadingBit(4294967295u), global1.a.x), _wgslsmith_mult_u32(36382u, func_6())) % 32u))) {
                case 1: {
                    return global1.a;
                }
                default: {
                    global0 = array<vec4<f32>, 31>();
                    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1161.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(408.0))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-488.0, -1351.0) - 446.0)), _wgslsmith_f_op_f32(f32(-1.0) * -396.0));
                }
            }
            let var_2 = max(countOneBits(-_wgslsmith_mult_i32(u_input.a, u_input.a)), 23785);
        }
        default: {
            var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1374.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1234.0, -1112.0))))));
            if (arg_0.x) {
                var var_2 = 28316u;
                let var_3 = any(vec2<bool>(_wgslsmith_f_op_f32(-341.0) < 1000.0, u_input.a >= abs(~1)));
                global0 = array<vec4<f32>, 31>();
            }
            var var_2 = Struct_2(Struct_1(vec3<bool>(-1007.0 > 912.0, global1.a.x, !true), vec3<u32>(~1u, ~4294967295u, _wgslsmith_add_u32(1u, u_input.b)), _wgslsmith_sub_u32(94217u & 4294967295u, func_7(global1.b.x, u_input.b) & ~76740u)), func_3(u_input.a, func_3(_wgslsmith_mult_i32(~56000, reverseBits(u_input.a)), arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1447.0, -672.0, -1000.0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, 795.0, -553.0)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1289.0, _wgslsmith_f_op_f32(-424.0), _wgslsmith_f_op_f32(306.0 + 144.0)), vec3<f32>(_wgslsmith_f_op_f32(-1379.0), 1172.0, _wgslsmith_f_op_f32(f32(-1.0) * -133.0))))));
            let var_3 = Struct_1(!select(select(vec3<bool>(true, global1.a.x, false), func_3(u_input.a, Struct_1(var_2.b.a, vec3<u32>(4294967295u, u_input.b, 4294967295u), global1.c), vec3<f32>(913.0, -314.0, 1939.0)).a, !var_2.b.a), func_3(_wgslsmith_clamp_i32(0, -2796, u_input.a), Struct_1(vec3<bool>(false, true, true), vec3<u32>(4294967295u, 34822u, 17426u), 9336u), _wgslsmith_f_op_vec3_f32(vec3<f32>(438.0, -2290.0, -1218.0) - vec3<f32>(1923.0, -783.0, -861.0))).a, !select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_1.a.x, arg_1.a.x, false), global1.a)), ~(_wgslsmith_sub_vec3_u32(var_2.b.b, _wgslsmith_div_vec3_u32(arg_2.b, arg_1.b)) ^ ~vec3<u32>(global1.c, 64069u, var_2.b.c)), ~(~(~128284u) | var_2.b.c));
        }
    }
    switch (-firstLeadingBit(0)) {
        case -7538: {
            for (var var_1 = 14885; arg_0.x; var_1 += 1) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                continue;
            }
            if (!(func_3(~(-2147483647), func_3(abs(u_input.a), arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-851.0, 1601.0, -1000.0))), vec3<f32>(_wgslsmith_f_op_f32(-216.0 - 851.0), -845.0, _wgslsmith_f_op_f32(-224.0))).a.x | arg_2.a.x)) {
                var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1157.0) + _wgslsmith_f_op_f32(step(1867.0, -536.0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663.0 - 204.0))), -172.0));
                var var_1 = vec4<u32>(_wgslsmith_div_u32(func_6(), 4294967295u), global1.c, global1.c, _wgslsmith_add_u32(0u, func_3(u_input.a >> (1u % 32u), arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1380.0, 739.0, -789.0))).b.x ^ global1.b.x));
                var var_2 = Struct_2(func_3(u_input.a, arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1034.0, -340.0, -526.0), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-225.0, -2090.0, 149.0), vec3<f32>(713.0, -2381.0, 1000.0))), arg_0.x)))), arg_1);
            }
            for (; ; ) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                continue;
            }
            let var_1 = arg_1.c >> (_wgslsmith_add_u32(0u, func_6()) % 32u);
            var var_2 = -(~(-_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(1, -3302, u_input.a, -44134)), ~vec4<i32>(-43159, u_input.a, u_input.a, 5329))));
        }
        case 29940: {
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                break;
            }
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                break;
            }
            var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -884.0)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1567.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1229.0)), true | (19032 <= 9799)))), -1741.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-469.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -2460.0), _wgslsmith_div_f32(-868.0, -1000.0), !arg_2.a.x)))))));
        }
        default: {
            for (; ; ) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                let var_1 = Struct_2(func_3(abs((u_input.a & u_input.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1247u, 36666u), vec2<u32>(1u, 1u)) % 32u)), Struct_1(!arg_2.a, arg_2.b | ~vec3<u32>(global1.c, 4294967295u, global1.c), 58787u), _wgslsmith_div_vec3_f32(vec3<f32>(-895.0, _wgslsmith_f_op_f32(ceil(424.0)), _wgslsmith_f_op_f32(min(-1921.0, 926.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1534.0, 1611.0, -984.0), vec3<f32>(1250.0, -230.0, 596.0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(226.0, -949.0, -1031.0))))), func_3(-2147483648, Struct_1(vec3<bool>(func_3(-2147483648, Struct_1(vec3<bool>(arg_0.x, false, arg_2.a.x), arg_2.b, u_input.b), vec3<f32>(459.0, -1645.0, 392.0)).a.x, arg_1.a.x, all(arg_2.a)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.c, u_input.b, 79413u), vec3<u32>(arg_2.b.x, 0u, arg_1.b.x)), _wgslsmith_add_u32(65719u ^ arg_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.b.x, 32845u, u_input.b), vec4<u32>(global1.b.x, arg_2.b.x, 28333u, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(525.0, 963.0, -535.0)), vec3<f32>(1806.0, -1339.0, -264.0))))));
            }
            if (true) {
                var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-897.0))) - -674.0));
                var var_1 = Struct_2(Struct_1(vec3<bool>(all(vec4<bool>(true, global1.a.x, arg_1.a.x, false)), (global1.b.x != 37819u) && !false, true), ~(~(global1.b >> (global1.b % vec3<u32>(32u)))), abs(16587u & ~u_input.b)), arg_2);
                let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-582.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -324.0))))));
                var_1 = Struct_2(arg_2, arg_2);
                global1 = arg_2;
            }
            switch (37649) {
                case -1: {
                    global1 = Struct_1(!func_3(~u_input.a, arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1194.0, 368.0, 1801.0))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-414.0, -1000.0, 672.0), vec3<f32>(-1000.0, -336.0, -266.0))))).a, global1.b, u_input.b);
                    let var_1 = vec3<u32>(~u_input.b, _wgslsmith_sub_u32(firstLeadingBit(~1u), 1u), ~arg_1.c ^ max(reverseBits(~global1.b.x), ~(25681u << (arg_1.c % 32u))));
                    global0 = array<vec4<f32>, 31>();
                    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-48972, 1), firstLeadingBit(-2147483648 >> (arg_2.b.x % 32u)) << (~arg_2.c % 32u), ~u_input.a);
                }
                case 2147483647: {
                }
                case -2147483648: {
                    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1120.0, -111.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-540.0))), _wgslsmith_f_op_f32(-1007.0 + _wgslsmith_div_f32(-1000.0, 1323.0)))));
                    var var_2 = _wgslsmith_f_op_f32(f32(-1.0) * -857.0);
                    global0 = array<vec4<f32>, 31>();
                    let var_3 = var_1.x;
                    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -310.0)));
                }
                case 9198: {
                    var var_1 = Struct_2(func_3(25435, func_3(u_input.a, func_3(-2147483647, Struct_1(arg_2.a, vec3<u32>(global1.c, 28840u, global1.c), u_input.b), vec3<f32>(-363.0, -491.0, 553.0)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(575.0, 1165.0, 1205.0)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000.0, 1137.0, 194.0) + vec3<f32>(121.0, -1122.0, -355.0)))))), func_3(abs(u_input.a), arg_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-808.0))), _wgslsmith_f_op_f32(ceil(-1108.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(884.0 + 601.0), _wgslsmith_f_op_f32(-271.0 * -570.0)))));
                    var_0 = 1000.0;
                    let var_2 = arg_1;
                }
                default: {
                    global0 = array<vec4<f32>, 31>();
                    let var_1 = 319.0;
                    global1 = arg_1;
                    global0 = array<vec4<f32>, 31>();
                }
            }
            var_0 = 1006.0;
        }
    }
    let var_1 = vec4<bool>(any(vec2<bool>(arg_1.a.x, !any(vec4<bool>(arg_2.a.x, false, arg_0.x, true)))), !(!func_3(firstLeadingBit(u_input.a), arg_2, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-312.0, 1000.0, 291.0)))).a.x), true & (_wgslsmith_mod_i32(0, _wgslsmith_div_i32(0, -55914)) > min(~u_input.a, ~u_input.a)), all(!global1.a));
    return !func_3(_wgslsmith_sub_i32(u_input.a, -u_input.a), arg_2, vec3<f32>(_wgslsmith_f_op_f32(select(-951.0, _wgslsmith_f_op_f32(sign(141.0)), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-250.0, 467.0) * _wgslsmith_f_op_f32(ceil(-121.0))), -481.0)).a;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> vec3<bool> {
    switch (i32(-1) * -(~u_input.a >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, u_input.b, arg_0.b.b.x, arg_0.b.c), vec4<u32>(u_input.b, u_input.b, global1.c, arg_2)) % 32u))) {
        default: {
            global0 = array<vec4<f32>, 31>();
            switch (_wgslsmith_add_i32(firstLeadingBit(abs(6580 ^ 1)), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1) * -20103, -2147483647, abs(41210), abs(u_input.a)), vec4<i32>(u_input.a, -1, u_input.a >> (24330u % 32u), firstTrailingBit(u_input.a)))) ^ -u_input.a) {
                default: {
                    var var_0 = u_input.a;
                    var var_1 = reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a, 0, 19468 >> (global1.c % 32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1), -vec3<i32>(u_input.a, -2147483648, u_input.a))), u_input.a));
                    var var_2 = select(select(arg_1.xyz, global1.a, !func_8(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0.a.a.x, true), vec3<bool>(global1.a.x, false, false)), func_3(0, Struct_1(arg_0.b.a, global1.b, arg_2), vec3<f32>(-1000.0, -285.0, -777.0)), func_3(-2147483648, arg_0.a, vec3<f32>(-1000.0, -2525.0, -809.0)))), global1.a, select(arg_1.zwy, !(!select(global1.a, vec3<bool>(arg_1.x, arg_1.x, true), arg_0.a.a)), _wgslsmith_f_op_f32(step(122.0, _wgslsmith_f_op_f32(706.0 - -217.0))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-449.0)))));
                }
            }
            switch (countOneBits(_wgslsmith_dot_vec3_i32(firstLeadingBit(firstLeadingBit(firstLeadingBit(vec3<i32>(-1, 1, u_input.a)))), firstLeadingBit(-vec3<i32>(-28326, u_input.a, 0) & (vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, 33011, 2147483647)))))) {
                case 497: {
                    global1 = arg_0.b;
                }
                default: {
                }
            }
        }
    }
    var var_0 = func_3(_wgslsmith_clamp_i32(u_input.a, -_wgslsmith_mult_i32(~(-2147483648), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1), vec3<i32>(u_input.a, u_input.a, u_input.a))), u_input.a), func_3(-1 ^ ~u_input.a, arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-719.0, 304.0, 1000.0)), _wgslsmith_div_vec3_f32(vec3<f32>(686.0, 2072.0, 1846.0), vec3<f32>(960.0, -1000.0, 1446.0)), arg_1.ywx)))), _wgslsmith_div_vec3_f32(vec3<f32>(-836.0, -547.0, 1402.0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(527.0, 2011.0, 1000.0))))));
    var var_1 = u_input.a;
    switch (u_input.a) {
        default: {
            let var_2 = !true;
            let var_3 = arg_2;
            var_1 = _wgslsmith_dot_vec2_i32(~(vec2<i32>(-116, -2147483648) ^ -vec2<i32>(57489, -31537)) & ((vec2<i32>(-2147483648, u_input.a) >> (_wgslsmith_add_vec2_u32(arg_0.b.b.zz, arg_0.a.b.xx) % vec2<u32>(32u))) << (var_0.b.xz % vec2<u32>(32u))), -vec2<i32>(-13930, 14630));
            switch (u_input.a) {
                case -14602: {
                    return !select(!select(func_3(6533, Struct_1(global1.a, var_0.b, arg_2), vec3<f32>(-672.0, -1931.0, 787.0)).a, var_0.a, !false), func_8(vec3<bool>(var_0.a.x && arg_0.a.a.x, var_0.a.x, any(var_0.a.zz)), Struct_1(var_0.a, _wgslsmith_sub_vec3_u32(vec3<u32>(10339u, arg_0.b.b.x, 52419u), vec3<u32>(var_3, var_3, arg_0.a.b.x)), 5358u << (4294967295u % 32u)), func_3(-8378, arg_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2481.0, -458.0, -1000.0) + vec3<f32>(-832.0, -1000.0, 404.0)))), vec3<bool>(any(func_8(var_0.a, arg_0.a, arg_0.a).xx), arg_0.a.a.x, !global1.a.x & true));
                }
                default: {
                }
            }
            var_1 = firstTrailingBit(u_input.a);
        }
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        var var_2 = any(!(!arg_0.b.a.xz));
        var var_3 = arg_0.a;
        var var_4 = Struct_2(Struct_1(func_8(vec3<bool>(true, any(arg_1.wy), 487.0 >= -1446.0), Struct_1(vec3<bool>(arg_0.b.a.x, false, true), select(arg_0.b.b, arg_0.b.b, arg_1.x), ~4294967295u), Struct_1(vec3<bool>(true, true, var_0.a.x), global1.b << (vec3<u32>(17086u, arg_2, 1u) % vec3<u32>(32u)), arg_0.a.b.x)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(0u, arg_0.b.c, 4294967295u), ~var_0.b, arg_0.b.a.x || false), select(firstTrailingBit(vec3<u32>(1u, arg_0.b.c, arg_0.b.c)), vec3<u32>(var_3.b.x, u_input.b, 4294967295u), -685.0 == -345.0)), 1u), Struct_1(vec3<bool>(!any(global1.a), true, all(vec2<bool>(global1.a.x, global1.a.x))), ~(vec3<u32>(4294967295u, var_0.b.x, global1.c) >> (vec3<u32>(var_3.c, arg_2, u_input.b) % vec3<u32>(32u))) | global1.b, arg_2));
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            break;
        }
    }
    return func_3(u_input.a, func_3(_wgslsmith_sub_i32(max(firstTrailingBit(u_input.a), ~u_input.a), -13730), Struct_1(select(arg_0.a.a, vec3<bool>(true, true, var_0.a.x), select(var_0.a.x, false, arg_1.x)), ~vec3<u32>(0u, var_0.c, 1u), min(0u, _wgslsmith_clamp_u32(u_input.b, var_0.c, global1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -327.0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(710.0 * 1332.0))), _wgslsmith_f_op_f32(round(-134.0)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(353.0, _wgslsmith_f_op_f32(exp2(601.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1498.0, _wgslsmith_f_op_f32(-1000.0 + 1104.0), arg_0.a.a.x))), _wgslsmith_f_op_f32(-1000.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000.0)))))).a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    switch (2147483647) {
        default: {
            global1 = arg_0;
            switch (~u_input.a) {
                default: {
                }
            }
            var var_0 = false;
            if (global1.a.x) {
                var var_1 = arg_0.a.x;
                global1 = Struct_1(select(func_2(Struct_2(Struct_1(arg_0.a, vec3<u32>(0u, arg_0.c, arg_0.c), global1.c), Struct_1(global1.a, global1.b, arg_0.c)), select(vec4<bool>(global1.a.x, arg_0.a.x, false, false), select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), vec4<bool>(arg_0.a.x, true, false, global1.a.x), global1.a.x), select(vec4<bool>(global1.a.x, false, true, false), vec4<bool>(global1.a.x, false, true, true), vec4<bool>(arg_0.a.x, true, arg_0.a.x, true))), ~global1.c), vec3<bool>(!(2147483647 > 0), true, !(!true)), global1.a), abs(vec3<u32>(_wgslsmith_div_u32(1u, 1u << (global1.c % 32u)), ~1u, 0u)), ~u_input.b);
                var var_2 = arg_0;
            }
            for (; global1.a.x; ) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                global1 = func_3(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1) & vec3<i32>(u_input.a, -20176, 1), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0, -2147483648), vec3<i32>(u_input.a, u_input.a, 0))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647, -62992, u_input.a), vec3<i32>(1, u_input.a, 2147483647)), vec3<i32>(u_input.a, 1, -2147483648) >> (arg_0.b % vec3<u32>(32u))) & (-vec3<i32>(0, u_input.a, -13906) >> (~vec3<u32>(arg_0.b.x, 92509u, 1u) % vec3<u32>(32u)))), func_3(30598, func_3(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-11275, 48002, -1), _wgslsmith_add_i32(u_input.a, 33441)), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1383.0, -332.0, 1344.0) * vec3<f32>(647.0, -2546.0, 2128.0)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1427.0, _wgslsmith_f_op_f32(abs(-763.0)), 1343.0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1784.0, -800.0, -659.0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-160.0, -433.0, -1509.0))) + vec3<f32>(_wgslsmith_f_op_f32(-929.0 * 351.0), _wgslsmith_f_op_f32(-429.0), -123.0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1229.0, 414.0, -1000.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, 1044.0, -336.0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-127.0, -940.0, 416.0), vec3<f32>(-290.0, -191.0, 787.0))))));
            }
        }
    }
    switch (countOneBits(_wgslsmith_add_i32(40710, _wgslsmith_clamp_i32(countOneBits(-1 | 26492), abs(u_input.a), 36121)))) {
        case -50247: {
        }
        case 41056: {
            let var_0 = arg_0;
            let var_1 = 1400.0;
            var var_2 = !func_2(Struct_2(func_3(_wgslsmith_mult_i32(-1, u_input.a), Struct_1(global1.a, global1.b, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-355.0, var_1, var_1) - vec3<f32>(var_1, var_1, var_1))), func_3(u_input.a | 1, arg_0, vec3<f32>(var_1, 1223.0, -1000.0))), !vec4<bool>(!arg_0.a.x, var_0.a.x, !true, arg_0.a.x && false), var_0.c).x;
        }
        default: {
            global0 = array<vec4<f32>, 31>();
            global1 = Struct_1(vec3<bool>(select(arg_0.a.x, func_3(firstTrailingBit(u_input.a), func_3(1672, Struct_1(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<u32>(global1.c, 31536u, 4294967295u), u_input.b), vec3<f32>(1000.0, -660.0, -434.0)), vec3<f32>(1458.0, 318.0, -2350.0)).a.x, !(-39481 < u_input.a)), global1.a.x, global1.a.x), arg_0.b, max(23498u, 4612u) >> (~_wgslsmith_mult_u32(select(u_input.b, arg_0.c, false), ~global1.b.x) % 32u));
            let var_0 = vec2<f32>(-1070.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(238.0)), 913.0)) - _wgslsmith_f_op_f32(-468.0 - _wgslsmith_f_op_f32(-444.0))) - -1351.0));
        }
    }
    var var_0 = vec2<i32>(-6942, u_input.a);
    var var_1 = any(!vec4<bool>(func_2(Struct_2(Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<u32>(u_input.b, 1u, 4294967295u), u_input.b), Struct_1(vec3<bool>(false, global1.a.x, false), vec3<u32>(global1.c, u_input.b, 0u), global1.b.x)), vec4<bool>(arg_0.a.x, global1.a.x, global1.a.x, global1.a.x), 0u).x, any(vec3<bool>(true, false, arg_0.a.x)), !(111686u >= u_input.b), global1.a.x));
    for (var var_2 = 1; false | !global1.a.x; var_2 = countOneBits(-592)) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        var var_3 = Struct_1(vec3<bool>(u_input.b > global1.c, true, !(_wgslsmith_f_op_f32(trunc(149.0)) < _wgslsmith_f_op_f32(f32(-1.0) * -333.0))), vec3<u32>(~(~(1u ^ 73755u)), ~(~4294967295u), ~firstTrailingBit(26458u)), ~(_wgslsmith_mult_u32(19944u, ~global1.c) >> ((_wgslsmith_div_u32(global1.b.x, arg_0.b.x) >> (7330u % 32u)) % 32u)));
        for (var var_4 = 0; ; var_4 += 1) {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            var var_5 = vec4<bool>(false, all(func_3(_wgslsmith_sub_i32(-1, _wgslsmith_add_i32(0, var_0.x)), Struct_1(!var_3.a, vec3<u32>(89996u, 39654u, var_3.c), func_6()), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, -1259.0, 320.0))))).a.xx), true, false);
            continue;
        }
        continue;
    }
    return func_3(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), abs(vec3<i32>(2147483647, 1189, 46349)))), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-552.0, -1294.0, -1005.0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1627.0, 1368.0, 939.0)))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-472.0)), _wgslsmith_f_op_f32(ceil(-1088.0)), !global1.a.x)), 1129.0, _wgslsmith_f_op_f32(min(493.0, _wgslsmith_f_op_f32(f32(-1.0) * -273.0))))));
}

fn func_9(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1513.0)) + -247.0), _wgslsmith_f_op_f32(-1429.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1669.0) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-871.0 + 516.0), _wgslsmith_f_op_f32(345.0 + 1966.0)))))));
    var var_1 = arg_3.a.a;
    loop {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -961.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(366.0 - 396.0)))))));
    }
    var var_2 = !false;
    if (!any(vec3<bool>(arg_2.a.x, false, true))) {
        var var_3 = ~vec3<i32>(2462, _wgslsmith_sub_i32(_wgslsmith_add_i32(~arg_0, 47650), arg_0), u_input.a);
        var_3 = -vec3<i32>(_wgslsmith_sub_i32(u_input.a, ~u_input.a << (func_6() % 32u)), i32(-1) * -4541, ~0);
        loop {
            if (LOOP_COUNTERS[26u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            global1 = Struct_1(vec3<bool>(arg_2.a.x, false, ~1u == ~_wgslsmith_mult_u32(62456u, 10694u)), _wgslsmith_sub_vec3_u32(arg_1, arg_2.b), arg_3.b.c);
            var var_4 = vec4<bool>(!all(vec2<bool>(false, var_1.x)) || global1.a.x, !false, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367.0))) > 1346.0);
            let var_5 = arg_3;
            continue;
        }
    }
    return Struct_2(arg_3.a, Struct_1(!vec3<bool>(690.0 <= -587.0, !false, all(var_1.zx)), _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(global1.b, vec3<u32>(arg_2.c, 4294967295u, 61666u)), global1.b), _wgslsmith_sub_u32(~abs(4294967295u), _wgslsmith_div_u32(~1u, _wgslsmith_div_u32(arg_2.c, arg_2.b.x)))));
}

fn func_10(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    if (!(!func_9(-reverseBits(-2147483648), global1.b << (vec3<u32>(7776u, arg_3.a.b.x, 1u) % vec3<u32>(32u)), arg_3.b, func_9(~(-1), vec3<u32>(u_input.b, 1u, 1u), Struct_1(global1.a, vec3<u32>(u_input.b, arg_3.b.b.x, 1u), 1u), func_9(u_input.a, vec3<u32>(global1.c, global1.b.x, 4294967295u), Struct_1(vec3<bool>(arg_3.a.a.x, true, true), vec3<u32>(1u, 90258u, arg_3.b.b.x), arg_3.b.b.x), Struct_2(arg_3.a, Struct_1(arg_3.a.a, arg_3.a.b, global1.b.x))))).a.a.x)) {
        var var_0 = Struct_1(arg_3.b.a, vec3<u32>(func_3(reverseBits(-u_input.a), Struct_1(arg_3.b.a, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.b.b.x, 0u, global1.c), global1.b), 1u), _wgslsmith_f_op_vec3_f32(arg_1.zzw * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-515.0, 828.0, arg_0.x)))).c, ~_wgslsmith_sub_u32(0u, 50442u) << (u_input.b % 32u), arg_3.a.b.x), _wgslsmith_div_u32(reverseBits(u_input.b), _wgslsmith_mult_u32(arg_3.b.b.x, func_6())));
        let var_1 = firstTrailingBit(func_6());
        let var_2 = _wgslsmith_f_op_vec3_f32(select(arg_1.wxz, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1.0) * -1430.0), -944.0), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + 1000.0), _wgslsmith_f_op_f32(663.0 * _wgslsmith_div_f32(arg_2, -932.0)), 785.0))), vec3<bool>(!var_0.a.x, (false && var_0.a.x) || !(!var_0.a.x), -53849 > -36753)));
    }
    let var_0 = !vec2<bool>(any(arg_3.b.a.zy), arg_3.a.a.x);
    global0 = array<vec4<f32>, 31>();
    var var_1 = func_4(_wgslsmith_f_op_f32(abs(-582.0)), func_9(-2147483647, global1.b, Struct_1(arg_3.a.a, global1.b, ~arg_3.a.c), Struct_2(func_1(arg_3.b), func_3(_wgslsmith_add_i32(u_input.a, u_input.a), arg_3.a, _wgslsmith_f_op_vec3_f32(-arg_1.zyz)))), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-281.0, -1363.0, arg_1.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -749.0, -994.0, arg_2), arg_1))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1)))), vec4<f32>(-675.0, _wgslsmith_f_op_f32(min(arg_0.x, arg_2)), _wgslsmith_f_op_f32(floor(286.0)), _wgslsmith_f_op_f32(ceil(141.0))), vec4<bool>(!(u_input.b <= global1.b.x), any(vec4<bool>(true, global1.a.x, var_0.x, true)), !true, !(1013.0 > arg_2)))));
    switch (var_1.x) {
        case -9485: {
            var_1 = min((~(vec2<i32>(-24859, var_1.x) >> (global1.b.zx % vec2<u32>(32u))) << (vec2<u32>(~u_input.b, ~53250u) % vec2<u32>(32u))) ^ -vec2<i32>(abs(2147483647), var_1.x), _wgslsmith_clamp_vec2_i32(~countOneBits(vec2<i32>(var_1.x, var_1.x)) & vec2<i32>(u_input.a, u_input.a), max(-firstTrailingBit(vec2<i32>(0, var_1.x)), vec2<i32>(-u_input.a, i32(-1) * -28669)), func_4(_wgslsmith_f_op_f32(-639.0), arg_3, _wgslsmith_f_op_f32(-382.0 * arg_1.x), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(58415u << (112258u % 32u), 31u)]))));
        }
        case -12035: {
        }
        case -1: {
        }
        case 2147483647: {
            var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_3.b.b.x, u_input.b), arg_3.a.b.x);
            loop {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                global0 = array<vec4<f32>, 31>();
                var var_3 = func_3(~(firstTrailingBit(i32(-1) * -13171) | var_1.x), func_3(u_input.a, arg_3.a, arg_1.yxw), arg_1.xxz).a;
                var_1 = ~(vec2<i32>(max(_wgslsmith_div_i32(1, var_1.x), var_1.x >> (33644u % 32u)), ~0 << (_wgslsmith_div_u32(global1.c, 4294967295u) % 32u)) | _wgslsmith_div_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -17410), vec2<i32>(-1, 1))), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, var_1.x), vec2<i32>(2147483647, 21495))));
                let var_4 = vec2<i32>(_wgslsmith_dot_vec3_i32(-max(vec3<i32>(1710, 3807, 25416), vec3<i32>(u_input.a, var_1.x, u_input.a)), vec3<i32>(var_1.x, -33576, reverseBits(var_1.x))), u_input.a) | select(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(var_1.x, 2147483647)), firstTrailingBit(vec2<i32>(2876, 1) ^ vec2<i32>(3427, var_1.x)), _wgslsmith_mod_vec2_i32(~vec2<i32>(28032, u_input.a), vec2<i32>(23654, var_1.x))), reverseBits(-vec2<i32>(u_input.a, var_1.x) << (global1.b.yz % vec2<u32>(32u))), !all(!vec4<bool>(arg_3.b.a.x, false, true, false)));
            }
            var_2 = u_input.b;
            for (; ; ) {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            }
        }
        default: {
            global1 = arg_3.b;
            global1 = Struct_1(arg_3.a.a, global1.b, 0u >> (u_input.b % 32u));
            let var_2 = arg_3.a.c;
            let var_3 = func_9(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(32651, -1, 2147483647), vec3<i32>(-2147483648, -51843, var_1.x)) | -var_1.x), _wgslsmith_div_vec3_u32(vec3<u32>(~(~u_input.b), 1u, global1.c), global1.b), func_3(_wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(11980, var_1.x, 31588, var_1.x)), ~vec4<i32>(var_1.x, u_input.a, u_input.a, -1), vec4<bool>(false, global1.a.x, var_0.x, arg_3.b.a.x)), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-77011, var_1.x, 0, 0), vec4<i32>(38651, var_1.x, 11931, u_input.a)))), arg_3.b, arg_0), func_9(var_1.x, select(global1.b, ~vec3<u32>(53087u, 4294967295u, u_input.b), func_1(func_1(Struct_1(vec3<bool>(false, true, true), vec3<u32>(39773u, u_input.b, u_input.b), 1815u))).a.x), Struct_1(!func_1(Struct_1(arg_3.b.a, global1.b, u_input.b)).a, func_3(var_1.x, arg_3.b, _wgslsmith_f_op_vec3_f32(arg_1.xwx - arg_1.zzw)).b, func_7(func_3(20560, Struct_1(vec3<bool>(false, false, var_0.x), global1.b, var_2), arg_0).c, func_3(0, Struct_1(vec3<bool>(true, global1.a.x, global1.a.x), vec3<u32>(var_2, 1u, global1.c), 1u), vec3<f32>(535.0, arg_0.x, arg_1.x)).c)), arg_3));
            var_1 = vec2<i32>(var_1.x, _wgslsmith_sub_i32(~min(~35127, _wgslsmith_mod_i32(var_1.x, 2934)), u_input.a));
        }
    }
    return func_9(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-78190, _wgslsmith_div_i32(var_1.x, -42943), var_1.x, 13230), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_1.x, -34398, -2147483648, var_1.x), vec4<i32>(-27085, var_1.x, var_1.x, -2147483648), true), vec4<i32>(-7384, u_input.a, var_1.x, var_1.x) >> (vec4<u32>(18645u, 45439u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.a, var_1.x, u_input.a, 0))), -18547), _wgslsmith_add_vec3_u32(func_1(func_9(var_1.x, ~vec3<u32>(4294967295u, global1.c, arg_3.b.c), func_3(var_1.x, Struct_1(global1.a, global1.b, global1.b.x), vec3<f32>(arg_2, -2782.0, -820.0)), Struct_2(Struct_1(vec3<bool>(true, var_0.x, global1.a.x), vec3<u32>(7327u, 4294967295u, 0u), arg_3.a.c), Struct_1(arg_3.a.a, vec3<u32>(arg_3.b.b.x, 0u, u_input.b), arg_3.b.b.x))).b).b, _wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(global1.b.x, arg_3.a.c, 14246u)), abs(~global1.b))), Struct_1(func_1(arg_3.b).a, ~arg_3.a.b, ~func_5(func_9(1, arg_3.b.b, arg_3.b, Struct_2(arg_3.b, Struct_1(global1.a, vec3<u32>(1u, 24478u, 17555u), arg_3.b.b.x))).b, var_0)), Struct_2(func_3(_wgslsmith_div_i32(i32(-1) * -10771, firstTrailingBit(u_input.a)), arg_3.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(max(arg_1.wyz, vec3<f32>(arg_0.x, 506.0, arg_2))))), func_9(-45412, vec3<u32>(abs(u_input.b), func_1(Struct_1(global1.a, global1.b, arg_3.a.b.x)).c, _wgslsmith_sub_u32(6269u, u_input.b)), arg_3.b, Struct_2(Struct_1(global1.a, global1.b, 9697u), arg_3.a)).a)).b;
}

@compute
@workgroup_size(1)
fn main() {
    if (global1.a.x) {
        loop {
            if (LOOP_COUNTERS[29u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            var var_0 = !(!global1.a);
            continue;
        }
        global1 = func_10(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(floor(-1233.0)), _wgslsmith_f_op_f32(step(-1411.0, -224.0))))))), global0[_wgslsmith_index_u32(41615u, 31u)], _wgslsmith_f_op_f32(f32(-1.0) * -1457.0), func_9(1, vec3<u32>(60245u, 0u, abs(firstLeadingBit(global1.b.x))), func_1(Struct_1(!global1.a, _wgslsmith_sub_vec3_u32(global1.b, vec3<u32>(59724u, 4294967295u, 1u)), u_input.b)), Struct_2(func_1(Struct_1(global1.a, global1.b, u_input.b)), func_3(u_input.a, Struct_1(global1.a, global1.b, 4294967295u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(387.0, -658.0, 1164.0)))))));
    }
    if ((all(select(vec4<bool>(false, global1.a.x, false, false), select(vec4<bool>(global1.a.x, false, false, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), global1.a.x), select(vec4<bool>(global1.a.x, false, global1.a.x, false), vec4<bool>(global1.a.x, false, false, global1.a.x), global1.a.x))) & (_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), ~u_input.b) < func_10(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-179.0, 178.0, 319.0)), vec4<f32>(-330.0, -692.0, 1712.0, -1175.0), -1000.0, func_9(u_input.a, global1.b, Struct_1(global1.a, vec3<u32>(111814u, 4294967295u, global1.b.x), global1.c), Struct_2(Struct_1(global1.a, vec3<u32>(u_input.b, global1.b.x, u_input.b), u_input.b), Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.b, u_input.b)))).c)) || !func_9(2147483647, vec3<u32>(global1.b.x, u_input.b, countOneBits(0u)), Struct_1(!vec3<bool>(global1.a.x, true, false), global1.b, global1.b.x), func_9(_wgslsmith_mod_i32(u_input.a, u_input.a), vec3<u32>(1u, u_input.b, global1.c), func_3(24505, Struct_1(vec3<bool>(true, true, global1.a.x), vec3<u32>(1u, 4294967295u, 63209u), 0u), vec3<f32>(-2497.0, -1595.0, -102.0)), func_9(u_input.a, global1.b, Struct_1(global1.a, vec3<u32>(1u, 40268u, u_input.b), u_input.b), Struct_2(Struct_1(global1.a, vec3<u32>(global1.c, global1.b.x, global1.b.x), 0u), Struct_1(vec3<bool>(false, global1.a.x, true), vec3<u32>(1u, global1.c, u_input.b), u_input.b))))).b.a.x) {
    }
    var var_0 = _wgslsmith_f_op_f32(exp2(941.0));
    for (; global1.a.x; ) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-637.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -1984.0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1408.0))), select(_wgslsmith_f_op_f32(f32(-1.0) * -558.0) >= _wgslsmith_f_op_f32(min(590.0, -799.0)), -1000.0 == _wgslsmith_f_op_f32(1340.0 + -2411.0), false)))));
    }
    global1 = func_3(~_wgslsmith_mult_i32(u_input.a, -firstLeadingBit(-28697)), Struct_1(!(!global1.a), _wgslsmith_sub_vec3_u32(~vec3<u32>(21365u, 69651u, u_input.b), global1.b), countOneBits(func_7(0u | u_input.b, 0u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-776.0, 1000.0, -2454.0) - vec3<f32>(-1406.0, -278.0, 159.0)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -185.0), _wgslsmith_f_op_f32(f32(-1.0) * -166.0), -1459.0), global1.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433.0, -153.0, -1000.0)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1266.0, -184.0, -156.0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_10(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1295.0, -616.0), _wgslsmith_f_op_f32(floor(-1088.0)), _wgslsmith_f_op_f32(-910.0)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-554.0, -569.0, 1015.0), vec3<f32>(194.0, 1000.0, 1576.0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(499.0, -1407.0, 1000.0) + vec3<f32>(-1781.0, -1000.0, -1200.0)))), global0[_wgslsmith_index_u32(u_input.b, 31u)], 902.0, func_9(_wgslsmith_sub_i32(~u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, 1)), select(~global1.b, global1.b, vec3<bool>(true, false, global1.a.x)), func_10(vec3<f32>(-2329.0, -643.0, 1000.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(630.0, 667.0, -371.0, -117.0) - global0[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_f32(-2449.0), Struct_2(Struct_1(vec3<bool>(global1.a.x, false, true), global1.b, 1u), Struct_1(vec3<bool>(true, false, false), global1.b, global1.c))), func_9(u_input.a, global1.b, func_3(u_input.a, Struct_1(vec3<bool>(true, global1.a.x, global1.a.x), vec3<u32>(global1.b.x, 0u, 35996u), 1u), vec3<f32>(706.0, 106.0, -1401.0)), func_9(u_input.a, vec3<u32>(0u, global1.b.x, 38799u), Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<u32>(1u, 26698u, u_input.b), 4294967295u), Struct_2(Struct_1(vec3<bool>(global1.a.x, global1.a.x, false), vec3<u32>(global1.b.x, 63040u, 11203u), 15831u), Struct_1(vec3<bool>(true, false, global1.a.x), vec3<u32>(u_input.b, 21604u, 4294967295u), 4294967295u)))))).c);
}

