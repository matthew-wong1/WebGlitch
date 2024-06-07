// {"0:0":[44,204,0,234,203,233,128,118,109,158,243,185,196,161,19,173,165,174,0,115,201,147,75,213,133,89,152,25,221,241,72,51,18,250,141,238,139,207,215,156,10,133,69,20,221,0,165,60]}
// Seed: 17723977757768177921

struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: Struct_2;

var<private> global2: array<vec4<i32>, 25>;

var<private> global3: array<i32, 26>;

var<private> global4: array<f32, 3>;

var<private> LOOP_COUNTERS: array<u32, 16>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_6() -> u32 {
    let var_0 = Struct_2(~max(~_wgslsmith_mult_vec3_i32(global1.c.b, global1.a), vec3<i32>(_wgslsmith_add_i32(u_input.b.x, global3[_wgslsmith_index_u32(42426u, 26u)]), 1, global1.a.x)), 1645.0, Struct_1(-(global3[_wgslsmith_index_u32(~u_input.d, 26u)] | global3[_wgslsmith_index_u32(1u, 26u)]), global1.a));
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global1 = var_0;
        switch (global1.a.x) {
            case 0: {
                var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, 1299.0, var_0.b, global1.b))), vec4<f32>(-156.0, 637.0, 803.0, 376.0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, global1.b, 1006.0, var_0.b)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1595.0, var_0.b, -396.0, var_0.b)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(549.0, 489.0, var_0.b, global1.b))), vec4<f32>(-349.0, -1884.0, global1.b, 951.0), !vec4<bool>(true, true, false, false))))), !false));
                global3 = array<i32, 26>();
                break;
            }
            case 71535: {
            }
            case -52718: {
                global2 = array<vec4<i32>, 25>();
                continue;
            }
            default: {
                global3 = array<i32, 26>();
                break;
            }
        }
        global0 = array<u32, 5>();
    }
    if (!any(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(!vec3<bool>(true, true, false), vec3<bool>(false, false, false), !vec3<bool>(false, false, true)), 1261.0 < _wgslsmith_f_op_f32(sign(531.0))))) {
        var var_1 = -2147483648;
        if (!false || !false) {
            var var_2 = abs(firstTrailingBit(-_wgslsmith_div_i32(abs(global3[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_mod_i32(-2147483648, var_0.c.b.x))));
            let var_3 = Struct_4(Struct_2(vec3<i32>(_wgslsmith_mod_i32(global1.a.x | 2147483647, global3[_wgslsmith_index_u32(14779u, 26u)] >> (56934u % 32u)), firstLeadingBit(1), countOneBits(_wgslsmith_mod_i32(34848, u_input.b.x))), global4[_wgslsmith_index_u32(u_input.d << (10219u % 32u), 3u)], Struct_1(24759 >> (_wgslsmith_dot_vec3_u32(u_input.a.wzy, u_input.a.wyy) % 32u), -(global1.a & vec3<i32>(var_0.a.x, global1.c.a, global1.c.a)))), select(vec4<bool>((false | true) && all(vec2<bool>(false, true)), !(!true), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true)), (global0[_wgslsmith_index_u32(u_input.e, 5u)] == global0[_wgslsmith_index_u32(1u, 5u)]) || !true), vec4<bool>(select(false, false, false) && true, false, all(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true))), !(4022u > u_input.a.x) || any(vec3<bool>(true, false, true))), Struct_3(global1.c, ~_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(global0[_wgslsmith_index_u32(65883u, 5u)], u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(global1.c.a, _wgslsmith_sub_i32(-1, var_0.c.a), ~var_0.a.x), ~global1.c.b & vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], var_0.a.x, var_0.a.x))));
            let var_4 = var_3.a;
            var var_5 = var_3.a.b;
        }
        global3 = array<i32, 26>();
    }
    var var_1 = Struct_4(Struct_2(global1.a, 734.0, Struct_1(~(-78483), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.x, -15995, global1.a.x) & vec3<i32>(-9917, global1.c.b.x, global1.c.b.x), min(var_0.c.b, global1.a)))), select(!(!(!vec4<bool>(false, true, false, true))), !vec4<bool>(!true, global0[_wgslsmith_index_u32(26553u, 5u)] > 4294967295u, false & true, select(true, true, true)), !vec4<bool>(false & false, any(vec4<bool>(false, true, false, true)), select(false, false, true), !true)), Struct_3(var_0.c, 40206u, var_0.c.b));
    var var_2 = var_1.c;
    return ~var_2.b;
}

fn func_5(arg_0: Struct_4) -> i32 {
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        var var_0 = arg_0.b;
        continue;
    }
    if (arg_0.b.x) {
        for (var var_0 = -1; ; ) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        }
        switch (1) {
            case 2147483647: {
                global3 = array<i32, 26>();
                global2 = array<vec4<i32>, 25>();
                let var_0 = arg_0.c.a;
            }
            case -1: {
                var var_0 = vec3<i32>(_wgslsmith_sub_i32(-2147483648, arg_0.c.a.a), arg_0.c.a.a, arg_0.a.a.x);
                var var_1 = all(vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(135.0 + 1121.0), _wgslsmith_f_op_f32(arg_0.a.b * global1.b)) == global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_6(), 5u)], 3u)], false, true));
                let var_2 = -_wgslsmith_div_i32(-7354, firstTrailingBit(_wgslsmith_clamp_i32(u_input.c.x, -2147483648, var_0.x)) & -u_input.b.x);
                var var_3 = select(u_input.c.x, select(i32(-1) * -u_input.c.x, 18834, arg_0.b.x & (arg_0.b.x || arg_0.b.x)), false) & _wgslsmith_sub_i32(i32(-1) * -_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-5389, var_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(~global1.a.x, global1.a.x), u_input.b));
                var var_4 = u_input.c.x;
            }
            case -2147483648: {
                let var_0 = arg_0.b.x;
                var var_1 = arg_0.c.a;
                let var_2 = Struct_4(Struct_2(~global1.c.b, _wgslsmith_f_op_f32(177.0 * _wgslsmith_f_op_f32(step(global1.b, -882.0))), arg_0.a.c), !select(select(arg_0.b, !vec4<bool>(var_0, true, true, false), true), vec4<bool>(select(var_0, arg_0.b.x, arg_0.b.x), true, all(vec3<bool>(var_0, arg_0.b.x, arg_0.b.x)), -1 > -2147483648), vec4<bool>(!false, 33756 < var_1.b.x, arg_0.b.x, all(vec4<bool>(false, false, true, arg_0.b.x)))), arg_0.c);
            }
            default: {
                let var_0 = vec4<u32>(70196u, ~arg_0.c.b, global0[_wgslsmith_index_u32(0u & 31699u, 5u)], max(countOneBits(~(~arg_0.c.b)), global0[_wgslsmith_index_u32(arg_0.c.b, 5u)]));
            }
        }
    }
    switch (_wgslsmith_add_i32(~arg_0.c.c.x, ~(-15878))) {
        case -17195: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_0 = Struct_4(arg_0.a, arg_0.b, arg_0.c);
                global2 = array<vec4<i32>, 25>();
                global4 = array<f32, 3>();
            }
            let var_0 = 1000.0;
        }
        case 0: {
            for (; ; ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                continue;
            }
            let var_0 = Struct_3(global1.c, 4294967295u & (22331u ^ ~115059u), _wgslsmith_clamp_vec3_i32(global1.a, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, global1.c.b.x, 0), vec3<i32>(global1.a.x, global1.a.x, 1)), -vec3<i32>(-u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(53488, global3[_wgslsmith_index_u32(4294967295u, 26u)], 1), global1.a), global3[_wgslsmith_index_u32(func_6(), 26u)])));
            switch (abs(i32(-1) * -arg_0.c.c.x)) {
                case 10292: {
                    global3 = array<i32, 26>();
                    var var_1 = _wgslsmith_f_op_f32(f32(-1.0) * -921.0);
                    global3 = array<i32, 26>();
                }
                case 1: {
                    var var_1 = arg_0.b.x;
                    global3 = array<i32, 26>();
                    global1 = Struct_2(_wgslsmith_mod_vec3_i32(max(_wgslsmith_add_vec3_i32(~arg_0.c.c, vec3<i32>(-28014, global3[_wgslsmith_index_u32(0u, 26u)], 0)), abs(vec3<i32>(u_input.c.x, 1, 2147483647)) >> (_wgslsmith_mult_vec3_u32(u_input.a.zwx, vec3<u32>(13284u, 1u, 36604u)) % vec3<u32>(32u))), vec3<i32>(0, -1 & _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, -36171, u_input.b.x), global1.a), abs(i32(-1) * -59136))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) + arg_0.a.b), global1.c);
                }
                default: {
                    var var_1 = 4294967295u;
                    global1 = Struct_2(reverseBits(arg_0.c.a.b) << ((vec3<u32>(global0[_wgslsmith_index_u32(var_0.b, 5u)], 4294967295u, u_input.a.x) | (max(u_input.a.ywy, vec3<u32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], var_0.b, 67714u)) << (~vec3<u32>(u_input.e, 43765u, u_input.e) % vec3<u32>(32u)))) % vec3<u32>(32u)), 226.0, var_0.a);
                    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0, u_input.c.x), arg_0.a.a.xz)), global3[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.c.b, u_input.a.x), 5u)], 42012u), 26u)]), global1.a.x), var_0.a.b.zz);
                }
            }
            if (false) {
                let var_1 = _wgslsmith_add_vec4_u32(countOneBits(u_input.a), _wgslsmith_mod_vec4_u32((u_input.a | _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(arg_0.c.b, 4294967295u, 1u, arg_0.c.b), vec4<u32>(1u, 4294967295u, arg_0.c.b, var_0.b))) & vec4<u32>(1u, ~0u, ~global0[_wgslsmith_index_u32(arg_0.c.b, 5u)], func_6()), vec4<u32>(u_input.e, ~(~arg_0.c.b), _wgslsmith_div_u32(~var_0.b, firstTrailingBit(4294967295u)), _wgslsmith_mod_u32(~126252u, ~global0[_wgslsmith_index_u32(4294967295u, 5u)]))));
            }
        }
        case 2147483647: {
        }
        default: {
            switch (-min(-1, ~arg_0.c.c.x) | reverseBits(arg_0.a.c.a)) {
                case 19142: {
                    var var_0 = Struct_1(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(0u, 26u)], -min(_wgslsmith_add_i32(arg_0.a.a.x, -22443), global3[_wgslsmith_index_u32(1u, 26u)]), min(_wgslsmith_mod_i32(global1.a.x, ~arg_0.c.c.x), u_input.c.x ^ reverseBits(u_input.b.x))), firstTrailingBit(arg_0.c.c));
                    let var_1 = arg_0.c.b;
                    global4 = array<f32, 3>();
                }
                default: {
                    var var_0 = ~(~4294967295u);
                    let var_1 = vec4<u32>(0u, arg_0.c.b, ~min(1u, u_input.d) ^ _wgslsmith_div_u32(u_input.d & u_input.d, max(1u, 65344u)), _wgslsmith_mult_u32(reverseBits(_wgslsmith_add_u32(u_input.a.x, arg_0.c.b)), abs(u_input.e))) ^ vec4<u32>(abs(arg_0.c.b | ~0u), 5891u, ~0u, _wgslsmith_add_u32(7208u, _wgslsmith_mult_u32(~86358u, _wgslsmith_mod_u32(32065u, 0u))));
                    var_0 = select(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.c.b, arg_0.c.b), ~global0[_wgslsmith_index_u32(u_input.d, 5u)]), 0u), 5u)], min(~arg_0.c.b, _wgslsmith_div_u32(arg_0.c.b, arg_0.c.b))), 0u, false);
                    var var_2 = abs(var_1.x);
                }
            }
            let var_0 = arg_0;
            let var_1 = !arg_0.b.yxw;
            if (arg_0.b.x) {
            }
            global1 = arg_0.a;
        }
    }
    var var_0 = !(26526u <= global0[_wgslsmith_index_u32(1u & _wgslsmith_mult_u32(arg_0.c.b, 0u), 5u)]);
    let var_1 = ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(u_input.d, 19150u) << (~u_input.d % 32u), countOneBits(func_6())), 5u)];
    return u_input.b.x;
}

fn func_4() -> f32 {
    global4 = array<f32, 3>();
    switch (-1) {
        case -41295: {
            global0 = array<u32, 5>();
            let var_0 = Struct_3(global1.c, _wgslsmith_mod_u32(1u & _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 2940u)), ~67135u), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.a.x, 0, global3[_wgslsmith_index_u32(u_input.e, 26u)], 2147483647), countOneBits(global2[_wgslsmith_index_u32(0u, 25u)])), global1.c.a, global1.c.b.x | -42206) >> (~vec3<u32>(~4294967295u, _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(79416u, 5u)]), u_input.e) % vec3<u32>(32u)));
            global4 = array<f32, 3>();
        }
        default: {
            var var_0 = Struct_1(abs(func_5(Struct_4(Struct_2(vec3<i32>(u_input.b.x, -1, -40949), -734.0, Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31342u, 5u)], 26u)], vec3<i32>(-1, -2147483648, global3[_wgslsmith_index_u32(34080u, 26u)]))), !vec4<bool>(true, true, true, false), Struct_3(global1.c, u_input.a.x, global1.a)))), select(vec3<i32>(u_input.c.x, 1, -1) ^ global1.a, vec3<i32>(-1, select(-2147483648, -14587, false), 0), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))) << (_wgslsmith_div_vec3_u32(~(~u_input.a.yyw), select(select(vec3<u32>(0u, global0[_wgslsmith_index_u32(33149u, 5u)], global0[_wgslsmith_index_u32(15928u, 5u)]), u_input.a.zxz, true), u_input.a.zwz, all(vec3<bool>(false, true, true)))) % vec3<u32>(32u)));
            let var_1 = Struct_4(Struct_2(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-42633, 2147483647, u_input.c.x), vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(u_input.e, 26u)], -13379)), var_0.b, vec3<bool>(true, true, false)) << (_wgslsmith_sub_vec3_u32(u_input.a.xyx, ~u_input.a.xxy) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(0u, 3u)]))), global1.c), vec4<bool>(!(false && true), false || (u_input.c.x <= _wgslsmith_mult_i32(0, -2147483648)), false || ((66408u | global0[_wgslsmith_index_u32(4294967295u, 5u)]) >= global0[_wgslsmith_index_u32(1u, 5u)]), !all(vec4<bool>(false, true, false, true))), Struct_3(Struct_1(u_input.b.x, ~(~var_0.b)), ~(countOneBits(17932u) >> (1u % 32u)), vec3<i32>(u_input.c.x, 22349, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-34458, global1.a.x, 1)) << (~0u % 32u))));
            var var_2 = vec2<bool>(!false, !(!(false | var_1.b.x)) & all(select(select(var_1.b.yx, var_1.b.zx, var_1.b.wx), var_1.b.zw, vec2<bool>(false, var_1.b.x))));
            var var_3 = select(~select(firstTrailingBit(vec3<u32>(13646u, var_1.c.b, var_1.c.b)), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51145u, 5u)], 5u)], 46586u), select(var_1.b.zyw, var_1.b.zwx, var_1.b.xyz)), abs(select(~vec3<u32>(var_1.c.b, var_1.c.b, 1u), vec3<u32>(u_input.d, 0u, 51908u), any(var_1.b))), var_1.b.xzz) & reverseBits(_wgslsmith_mod_vec3_u32(u_input.a.zxz, vec3<u32>(u_input.e, 0u, global0[_wgslsmith_index_u32(~var_1.c.b, 5u)])));
        }
    }
    global1 = Struct_2(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(4312, -1, u_input.c.x), -global1.c.b, vec3<i32>(-44798, 0, -global1.c.b.x)), global4[_wgslsmith_index_u32(func_6(), 3u)], Struct_1(u_input.c.x, select(global1.a, global1.a, !all(vec2<bool>(false, true)))));
    for (var var_0 = -1; var_0 == 0; var_0 += 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        continue;
    }
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-1, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.b, ~u_input.b, vec2<i32>(-2147483648, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 26u)]) | u_input.c), ~(~vec2<i32>(global3[_wgslsmith_index_u32(u_input.e, 26u)], u_input.c.x)))), reverseBits(global1.c.b.xy));
    return 922.0;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> bool {
    global0 = array<u32, 5>();
    for (; false; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        continue;
    }
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4()), _wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-113.0 + global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_add_vec2_u32(u_input.a.yw, u_input.a.wy)), 3u)]), global4[_wgslsmith_index_u32(~0u, 3u)]), 685.0);
    return !true;
}

fn func_7(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    let var_0 = firstTrailingBit(abs(u_input.a.zxx));
    return arg_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    global0 = array<u32, 5>();
    let var_0 = func_7(Struct_4(Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.zw, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 5039), vec2<i32>(-1, -43370)), -43116 | 1), 138.0, Struct_1(-2147483648, global1.a)), select(vec4<bool>(!false, func_3(vec3<f32>(667.0, 1336.0, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64193u, 5u)], 3u)]), vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(75310u, 5u)]), u_input.c.x, global1.c), false, func_3(vec3<f32>(arg_1, 214.0, -146.0), u_input.a.zz, global3[_wgslsmith_index_u32(1u, 26u)], global1.c)), !vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, false), !vec4<bool>(false, false, false, true), !vec4<bool>(true, false, false, true))), Struct_3(global1.c, 44735u, -vec3<i32>(arg_0.x, global1.a.x, 0))), Struct_3(global1.c, 0u, -abs(_wgslsmith_clamp_vec3_i32(arg_0.zwz, global1.a, arg_0.zzx))), Struct_2(countOneBits(arg_0.yyx), 2671.0, global1.c), abs(_wgslsmith_add_i32(~(-48764), arg_0.x)) != _wgslsmith_dot_vec2_i32(-vec2<i32>(global1.c.a, 12949), _wgslsmith_mult_vec2_i32(-vec2<i32>(global1.c.b.x, global3[_wgslsmith_index_u32(1u, 26u)]), countOneBits(arg_0.xw))));
    switch (~(-var_0.c.a.b.x)) {
        case 0: {
            global1 = var_0.a;
            switch (u_input.b.x) {
                default: {
                }
            }
            return _wgslsmith_div_f32(1000.0, -440.0);
        }
        default: {
        }
    }
    global0 = array<u32, 5>();
    global4 = array<f32, 3>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-916.0, -1260.0)), global1.b)) + 723.0)), _wgslsmith_f_op_f32(step(425.0, global4[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(u_input.d, 1268u) ^ select(36975u, u_input.e, false)), 3u)])), var_0.b.x));
}

fn func_8(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = arg_1.x;
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        return select(global1.c.b, global1.c.b, select(!func_7(Struct_4(Struct_2(global1.c.b, 1351.0, Struct_1(global3[_wgslsmith_index_u32(6420u, 26u)], global1.c.b)), vec4<bool>(false, true, true, false), Struct_3(global1.c, 0u, vec3<i32>(22758, -1, -43548))), Struct_3(global1.c, 1u, vec3<i32>(global1.a.x, 485, u_input.c.x)), Struct_2(global1.c.b, global4[_wgslsmith_index_u32(var_0, 3u)], Struct_1(-14624, vec3<i32>(global1.a.x, 65234, u_input.b.x))), arg_2.x).b.wzz, !func_7(Struct_4(Struct_2(global1.c.b, 1590.0, global1.c), vec4<bool>(false, false, arg_2.x, false), Struct_3(global1.c, var_0, vec3<i32>(-19542, global1.c.a, u_input.b.x))), Struct_3(global1.c, global0[_wgslsmith_index_u32(var_0, 5u)], global1.c.b), Struct_2(global1.a, global1.b, Struct_1(u_input.c.x, global1.c.b)), false).b.xzx, any(!arg_2))) & min(~_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a.x, u_input.b.x, 13621), select(global1.c.b, global1.a, true)), select(~select(global1.a, vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(0u, 26u)], u_input.b.x), true), _wgslsmith_sub_vec3_i32(-vec3<i32>(global3[_wgslsmith_index_u32(11437u, 26u)], u_input.c.x, global3[_wgslsmith_index_u32(31937u, 26u)]), vec3<i32>(0, 24934, global1.c.a)), !(!arg_2.x)));
    }
    global3 = array<i32, 26>();
    let var_1 = _wgslsmith_div_i32(countOneBits(global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u >> (73377u % 32u), 5u)], arg_1.x | 65659u)), 26u)]), 0);
    switch (0) {
        default: {
            var var_2 = abs(vec3<i32>(~(-1), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~18277u, 5u)], 26u)], _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(~8078u, 26u)] >> (countOneBits(88976u) % 32u), 33244)));
            return global1.c.b;
        }
    }
    return _wgslsmith_sub_vec3_i32(firstLeadingBit(countOneBits(vec3<i32>(1, _wgslsmith_div_i32(u_input.c.x, 2147483647), -19824))), _wgslsmith_sub_vec3_i32(global1.a, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1, -10752, global3[_wgslsmith_index_u32(6109u, 26u)]), vec3<i32>(40859, 0, global3[_wgslsmith_index_u32(arg_1.x, 26u)])), ~(global1.c.b ^ vec3<i32>(0, global3[_wgslsmith_index_u32(var_0, 26u)], u_input.c.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    switch (_wgslsmith_clamp_i32(74917, ~46801, arg_2)) {
        default: {
            var var_0 = ~global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e | arg_0.x, reverseBits(arg_0.x), u_input.d), arg_0.x), 5u)];
            var var_1 = ~func_8(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(10950u, 3u)]), _wgslsmith_f_op_f32(func_2(vec4<i32>(1, global1.c.a, 42667, arg_1), -966.0)), 330.0 == global1.b))), u_input.a.ww, !(!(!vec2<bool>(true, true))));
            switch (_wgslsmith_mod_i32(-func_8(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 3u)], global4[_wgslsmith_index_u32(u_input.a.x, 3u)]) * _wgslsmith_div_f32(global4[_wgslsmith_index_u32(arg_0.x, 3u)], global4[_wgslsmith_index_u32(arg_0.x, 3u)])), firstTrailingBit(min(arg_0, arg_0)), !(!vec2<bool>(true, true))).x, 10681)) {
                case 1: {
                    var var_2 = _wgslsmith_f_op_f32(515.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-544.0)))))));
                }
                default: {
                    return global1.c;
                }
            }
        }
    }
    var var_0 = func_7(func_7(Struct_4(Struct_2(-global1.c.b, 966.0, global1.c), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), func_7(Struct_4(Struct_2(global1.a, global1.b, global1.c), vec4<bool>(true, false, true, true), Struct_3(global1.c, global0[_wgslsmith_index_u32(arg_0.x, 5u)], vec3<i32>(arg_1, global1.c.b.x, arg_1))), Struct_3(Struct_1(global1.c.b.x, vec3<i32>(u_input.b.x, arg_1, 17798)), global0[_wgslsmith_index_u32(4294967295u, 5u)], global1.c.b), func_7(Struct_4(Struct_2(vec3<i32>(u_input.c.x, arg_2, u_input.c.x), global1.b, global1.c), vec4<bool>(false, true, false, false), Struct_3(Struct_1(global3[_wgslsmith_index_u32(arg_0.x, 26u)], global1.a), u_input.a.x, vec3<i32>(0, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 26u)], u_input.c.x))), Struct_3(global1.c, arg_0.x, global1.c.b), Struct_2(vec3<i32>(2147483647, global1.a.x, arg_1), global4[_wgslsmith_index_u32(u_input.d, 3u)], Struct_1(42204, vec3<i32>(6331, -1, arg_2))), false).a, all(vec3<bool>(true, false, true))).c), func_7(func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_1(arg_1, global1.a)), vec4<bool>(false, true, true, false), Struct_3(global1.c, arg_0.x, vec3<i32>(-22370, 0, global3[_wgslsmith_index_u32(arg_0.x, 26u)]))), Struct_3(Struct_1(2147483647, global1.a), arg_0.x, global1.c.b), Struct_2(vec3<i32>(-1, arg_2, arg_1), global4[_wgslsmith_index_u32(arg_0.x, 3u)], global1.c), true), func_7(func_7(Struct_4(Struct_2(global1.a, global4[_wgslsmith_index_u32(arg_0.x, 3u)], Struct_1(17563, vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 26u)], -79971, 0))), vec4<bool>(false, true, false, true), Struct_3(Struct_1(-1, vec3<i32>(global1.c.b.x, arg_1, -33217)), arg_0.x, global1.a)), Struct_3(Struct_1(0, vec3<i32>(11639, 0, arg_1)), arg_0.x, vec3<i32>(global1.c.b.x, 1, 19727)), Struct_2(global1.c.b, -774.0, global1.c), true), func_7(Struct_4(Struct_2(global1.c.b, 391.0, global1.c), vec4<bool>(false, false, true, false), Struct_3(global1.c, u_input.e, global1.c.b)), Struct_3(Struct_1(2147483647, vec3<i32>(global3[_wgslsmith_index_u32(arg_0.x, 26u)], arg_1, global1.c.b.x)), 37762u, vec3<i32>(2147483647, -17379, -1)), Struct_2(vec3<i32>(arg_2, -2147483648, 1), global1.b, global1.c), true).c, Struct_2(vec3<i32>(-1438, global3[_wgslsmith_index_u32(33427u, 26u)], u_input.c.x), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 3u)], Struct_1(global3[_wgslsmith_index_u32(69698u, 26u)], vec3<i32>(arg_1, -21352, arg_2))), false).c, Struct_2(reverseBits(vec3<i32>(global1.c.a, -26133, 0)), _wgslsmith_f_op_f32(min(global1.b, -1696.0)), global1.c), (280.0 != -388.0) & (false && true)).c, func_7(func_7(Struct_4(Struct_2(vec3<i32>(arg_2, -2147483648, -1), global1.b, global1.c), vec4<bool>(false, true, false, true), Struct_3(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 26u)], vec3<i32>(arg_2, -1, global3[_wgslsmith_index_u32(arg_0.x, 26u)])), global0[_wgslsmith_index_u32(1u, 5u)], vec3<i32>(arg_2, -2992, -2147483648))), func_7(Struct_4(Struct_2(global1.a, global4[_wgslsmith_index_u32(4294967295u, 3u)], global1.c), vec4<bool>(false, false, false, false), Struct_3(global1.c, 124177u, global1.c.b)), Struct_3(global1.c, global0[_wgslsmith_index_u32(arg_0.x, 5u)], global1.c.b), Struct_2(global1.c.b, -376.0, global1.c), false).c, func_7(Struct_4(Struct_2(vec3<i32>(-1, u_input.c.x, arg_1), 1000.0, global1.c), vec4<bool>(true, true, true, false), Struct_3(global1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], global1.a)), Struct_3(Struct_1(global3[_wgslsmith_index_u32(36326u, 26u)], vec3<i32>(38719, arg_2, arg_2)), 4294967295u, vec3<i32>(arg_2, -26039, arg_1)), Struct_2(global1.a, -953.0, Struct_1(arg_2, global1.c.b)), true).a, !true), Struct_3(Struct_1(global3[_wgslsmith_index_u32(1u, 26u)], vec3<i32>(2147483647, -13872, 0)), _wgslsmith_add_u32(u_input.e, u_input.e), -vec3<i32>(arg_2, global3[_wgslsmith_index_u32(0u, 26u)], -2147483648)), Struct_2(global1.c.b, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), Struct_1(7463, vec3<i32>(global1.c.a, arg_1, global1.a.x))), any(func_7(Struct_4(Struct_2(global1.a, global4[_wgslsmith_index_u32(u_input.e, 3u)], Struct_1(2511, global1.a)), vec4<bool>(false, false, false, true), Struct_3(global1.c, 6065u, vec3<i32>(global3[_wgslsmith_index_u32(1644u, 26u)], arg_2, 1))), Struct_3(Struct_1(44650, vec3<i32>(arg_2, 1, global1.a.x)), global0[_wgslsmith_index_u32(4294967295u, 5u)], global1.a), Struct_2(vec3<i32>(global1.a.x, 52938, -22101), global4[_wgslsmith_index_u32(arg_0.x, 3u)], global1.c), false).b.ww)).a, false), func_7(func_7(Struct_4(Struct_2(global1.c.b, global1.b, Struct_1(-1, vec3<i32>(-9189, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 5u)], 5u)], 26u)], -2147483648))), !vec4<bool>(true, false, true, false), Struct_3(global1.c, 33253u, vec3<i32>(2147483647, arg_2, 0))), Struct_3(global1.c, abs(global0[_wgslsmith_index_u32(2547u, 5u)]), global1.c.b), func_7(Struct_4(Struct_2(global1.a, 1225.0, global1.c), vec4<bool>(false, true, false, false), Struct_3(global1.c, 24081u, global1.c.b)), func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(arg_0.x, 3u)], Struct_1(u_input.c.x, vec3<i32>(-27816, global3[_wgslsmith_index_u32(u_input.d, 26u)], -84289))), vec4<bool>(true, true, false, true), Struct_3(Struct_1(arg_2, global1.a), 16306u, vec3<i32>(global1.a.x, -52634, 1562))), Struct_3(global1.c, 29146u, vec3<i32>(0, -10041, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 5u)], 26u)])), Struct_2(vec3<i32>(-2147483648, u_input.c.x, -2147483648), global4[_wgslsmith_index_u32(1u, 3u)], Struct_1(u_input.b.x, vec3<i32>(2147483647, 897, global1.c.a))), true).c, Struct_2(global1.c.b, 509.0, global1.c), false).a, !false & all(vec3<bool>(true, false, false))), func_7(func_7(Struct_4(Struct_2(global1.a, -2384.0, Struct_1(1, vec3<i32>(0, -1, -2147483648))), vec4<bool>(true, false, true, false), Struct_3(global1.c, global0[_wgslsmith_index_u32(arg_0.x, 5u)], vec3<i32>(arg_1, -68284, 32266))), Struct_3(Struct_1(51096, global1.c.b), 3523u, global1.a), func_7(Struct_4(Struct_2(global1.c.b, global1.b, global1.c), vec4<bool>(false, true, true, true), Struct_3(Struct_1(global1.a.x, global1.c.b), arg_0.x, global1.a)), Struct_3(global1.c, 1u, global1.c.b), Struct_2(global1.c.b, 1714.0, global1.c), false).a, !true), Struct_3(func_7(Struct_4(Struct_2(vec3<i32>(global1.a.x, 54060, -40242), -1435.0, global1.c), vec4<bool>(false, false, false, true), Struct_3(Struct_1(-19694, global1.a), u_input.d, global1.a)), Struct_3(global1.c, 32359u, global1.a), Struct_2(vec3<i32>(arg_1, -2147483648, arg_2), -524.0, Struct_1(5461, global1.a)), false).a.c, 4294967295u, _wgslsmith_mod_vec3_i32(global1.a, global1.c.b)), func_7(Struct_4(Struct_2(global1.a, -2211.0, Struct_1(1, vec3<i32>(u_input.b.x, 16511, global1.a.x))), vec4<bool>(true, false, true, false), Struct_3(global1.c, arg_0.x, vec3<i32>(2147483647, arg_2, -1))), func_7(Struct_4(Struct_2(vec3<i32>(2147483647, u_input.c.x, global1.a.x), 1101.0, Struct_1(2147483647, vec3<i32>(0, arg_2, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49827u, 5u)], 26u)]))), vec4<bool>(true, false, false, true), Struct_3(global1.c, 37623u, vec3<i32>(global1.c.b.x, 2147483647, 1))), Struct_3(global1.c, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global1.a), Struct_2(vec3<i32>(arg_1, arg_2, 17709), global1.b, Struct_1(0, global1.c.b)), false).c, func_7(Struct_4(Struct_2(global1.c.b, global1.b, Struct_1(1, global1.c.b)), vec4<bool>(false, false, false, true), Struct_3(global1.c, global0[_wgslsmith_index_u32(arg_0.x, 5u)], vec3<i32>(1, -2752, global1.a.x))), Struct_3(global1.c, 68400u, global1.c.b), Struct_2(global1.a, -362.0, Struct_1(arg_2, vec3<i32>(1, arg_1, 1))), false).a, true || false).a, all(func_7(Struct_4(Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(arg_0.x, 26u)], 0, global1.a.x), global1.b, Struct_1(arg_2, vec3<i32>(arg_2, arg_1, -6926))), vec4<bool>(false, false, false, true), Struct_3(global1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 5u)], 5u)], vec3<i32>(global3[_wgslsmith_index_u32(arg_0.x, 26u)], arg_1, 1))), Struct_3(global1.c, 1u, global1.a), Struct_2(global1.a, global1.b, Struct_1(-2147483648, global1.a)), true).b.wx)).c, Struct_2(global1.a, global4[_wgslsmith_index_u32(~(~1u), 3u)], global1.c), true | !true).c, func_7(func_7(func_7(func_7(Struct_4(Struct_2(global1.a, 1092.0, Struct_1(0, global1.a)), vec4<bool>(false, false, false, true), Struct_3(global1.c, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global1.a)), Struct_3(global1.c, global0[_wgslsmith_index_u32(0u, 5u)], global1.a), Struct_2(global1.c.b, global1.b, global1.c), true), Struct_3(Struct_1(-17199, global1.a), 4294967295u, global1.c.b), func_7(Struct_4(Struct_2(global1.c.b, global1.b, global1.c), vec4<bool>(true, false, false, false), Struct_3(Struct_1(12063, vec3<i32>(3183, global1.a.x, 48546)), 1u, global1.c.b)), Struct_3(Struct_1(arg_2, vec3<i32>(arg_1, u_input.b.x, arg_1)), u_input.a.x, global1.c.b), Struct_2(global1.c.b, 571.0, Struct_1(0, global1.c.b)), true).a, !false), Struct_3(global1.c, arg_0.x, global1.a), func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 5u)], 3u)], global1.c), vec4<bool>(false, true, false, false), Struct_3(Struct_1(5147, vec3<i32>(9591, 205, 25343)), 0u, global1.a)), func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(0u, 3u)], Struct_1(1, global1.c.b)), vec4<bool>(false, false, true, true), Struct_3(global1.c, 0u, global1.c.b)), Struct_3(Struct_1(-19087, global1.a), 38680u, vec3<i32>(global1.c.a, -1, -28061)), Struct_2(global1.a, global1.b, Struct_1(1, global1.c.b)), true).c, Struct_2(global1.a, -952.0, global1.c), false).a, _wgslsmith_f_op_f32(global1.b * global1.b) > 502.0), func_7(Struct_4(Struct_2(global1.c.b, 1000.0, global1.c), vec4<bool>(true, false, false, false), Struct_3(Struct_1(0, vec3<i32>(arg_1, global3[_wgslsmith_index_u32(u_input.d, 26u)], arg_1)), arg_0.x, vec3<i32>(arg_1, u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 26u)]))), Struct_3(Struct_1(2147483647, vec3<i32>(arg_2, arg_1, 1)), _wgslsmith_add_u32(u_input.d, 34142u), firstLeadingBit(global1.c.b)), func_7(func_7(Struct_4(Struct_2(global1.a, 1658.0, global1.c), vec4<bool>(false, true, false, true), Struct_3(Struct_1(-2147483648, global1.c.b), u_input.a.x, vec3<i32>(arg_1, 1, 1))), Struct_3(Struct_1(global3[_wgslsmith_index_u32(28969u, 26u)], vec3<i32>(arg_1, arg_1, global3[_wgslsmith_index_u32(57738u, 26u)])), 4294967295u, global1.a), Struct_2(global1.a, global1.b, global1.c), true), func_7(Struct_4(Struct_2(vec3<i32>(2147483647, u_input.c.x, arg_1), global4[_wgslsmith_index_u32(26767u, 3u)], global1.c), vec4<bool>(true, false, true, true), Struct_3(global1.c, u_input.a.x, vec3<i32>(global1.c.b.x, 1, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 26u)]))), Struct_3(global1.c, arg_0.x, global1.a), Struct_2(vec3<i32>(u_input.c.x, arg_1, arg_1), global1.b, global1.c), true).c, func_7(Struct_4(Struct_2(global1.a, -1125.0, Struct_1(-2147483648, vec3<i32>(46801, -1, global1.a.x))), vec4<bool>(true, false, false, true), Struct_3(global1.c, global0[_wgslsmith_index_u32(u_input.e, 5u)], vec3<i32>(2147483647, -1, u_input.c.x))), Struct_3(Struct_1(u_input.b.x, global1.c.b), 0u, vec3<i32>(arg_2, u_input.c.x, u_input.c.x)), Struct_2(vec3<i32>(2147483647, arg_2, arg_2), 1283.0, global1.c), true).a, true != true).a, true).c, Struct_2(firstTrailingBit(_wgslsmith_mult_vec3_i32(global1.a, vec3<i32>(38745, -82085, -14324))), -664.0, func_7(Struct_4(Struct_2(vec3<i32>(0, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 26u)], -2147483648), global1.b, Struct_1(-1, vec3<i32>(-76296, 1, arg_2))), vec4<bool>(true, false, true, true), Struct_3(Struct_1(-867, global1.c.b), 46215u, vec3<i32>(31115, global3[_wgslsmith_index_u32(16021u, 26u)], global1.c.b.x))), func_7(Struct_4(Struct_2(global1.c.b, 640.0, Struct_1(arg_1, global1.c.b)), vec4<bool>(true, false, true, false), Struct_3(global1.c, 27376u, vec3<i32>(-2147483648, u_input.b.x, arg_2))), Struct_3(global1.c, u_input.e, vec3<i32>(u_input.b.x, 1, 37044)), Struct_2(vec3<i32>(14718, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 26u)], 6199), global4[_wgslsmith_index_u32(31657u, 3u)], global1.c), false).c, Struct_2(vec3<i32>(arg_2, global3[_wgslsmith_index_u32(259u, 26u)], 2147483647), -1736.0, Struct_1(37371, global1.c.b)), all(vec4<bool>(true, true, true, false))).a.c), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), !vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)))).a, !(!func_3(vec3<f32>(1040.0, -829.0, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 3u)]), arg_0, arg_2, global1.c) | !(true & true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 256.0) * vec2<f32>(785.0, 889.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(351.0, -548.0)))) - _wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 5u)] ^ 865u, 3u)], _wgslsmith_f_op_f32(f32(-1.0) * -752.0)), vec2<f32>(_wgslsmith_f_op_f32(-280.0 - global4[_wgslsmith_index_u32(2115u, 3u)]), _wgslsmith_f_op_f32(max(-869.0, global1.b))))));
    let var_2 = vec2<bool>(any(!vec4<bool>(!true, true, var_0.b.x, any(vec4<bool>(var_0.b.x, true, false, false)))), true);
    global0 = array<u32, 5>();
    return Struct_1(-(~abs(-2147483648)) << (~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, arg_0.x, 0u), vec3<u32>(24266u, var_0.c.b, arg_0.x)), 5u)] % 32u), var_0.a.c.b & min(var_0.a.a, global1.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~58536u;
    for (; ; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        var var_1 = Struct_3(func_1(u_input.a.yy, _wgslsmith_dot_vec2_i32(vec2<i32>(5178, ~(-695)), -(u_input.c & vec2<i32>(-17458, global3[_wgslsmith_index_u32(0u, 26u)]))), ~8895), ~select(0u, ~(~u_input.e), !(!false)), func_7(func_7(func_7(func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5250u, 5u)], 5u)], 3u)], global1.c), vec4<bool>(true, false, true, true), Struct_3(Struct_1(-15716, global1.a), 17413u, vec3<i32>(11057, global1.a.x, u_input.c.x))), Struct_3(Struct_1(global3[_wgslsmith_index_u32(u_input.d, 26u)], vec3<i32>(global3[_wgslsmith_index_u32(1u, 26u)], global1.c.a, 18085)), 102473u, global1.c.b), Struct_2(global1.c.b, -418.0, global1.c), true), func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 3u)], Struct_1(2147483647, global1.c.b)), vec4<bool>(true, true, false, false), Struct_3(Struct_1(5013, vec3<i32>(global1.a.x, -24582, global1.c.b.x)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 5u)], vec3<i32>(global1.a.x, 38966, global3[_wgslsmith_index_u32(u_input.d, 26u)]))), Struct_3(global1.c, 0u, global1.a), Struct_2(vec3<i32>(2147483647, 0, u_input.b.x), 443.0, global1.c), true).c, func_7(Struct_4(Struct_2(vec3<i32>(1, 2147483647, u_input.b.x), global1.b, global1.c), vec4<bool>(false, true, true, true), Struct_3(Struct_1(global1.c.a, global1.c.b), 0u, global1.c.b)), Struct_3(global1.c, u_input.e, global1.c.b), Struct_2(vec3<i32>(0, -2147483648, -1), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 3u)], global1.c), false).a, false), func_7(func_7(Struct_4(Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(19819u, 26u)], 2147483647, global1.a.x), -1049.0, global1.c), vec4<bool>(false, false, true, false), Struct_3(global1.c, 4294967295u, global1.a)), Struct_3(global1.c, 52811u, vec3<i32>(global3[_wgslsmith_index_u32(u_input.e, 26u)], 5079, -2147483648)), Struct_2(vec3<i32>(global1.c.b.x, u_input.b.x, u_input.b.x), global1.b, Struct_1(-57482, global1.c.b)), true), Struct_3(global1.c, global0[_wgslsmith_index_u32(64676u, 5u)], vec3<i32>(u_input.c.x, 11564, global3[_wgslsmith_index_u32(u_input.d, 26u)])), func_7(Struct_4(Struct_2(global1.a, 1366.0, global1.c), vec4<bool>(true, true, false, true), Struct_3(global1.c, u_input.d, global1.c.b)), Struct_3(Struct_1(global3[_wgslsmith_index_u32(1u, 26u)], global1.a), 58181u, global1.a), Struct_2(vec3<i32>(0, 2147483647, global1.c.a), global4[_wgslsmith_index_u32(5907u, 3u)], Struct_1(u_input.b.x, global1.a)), false).a, false).c, func_7(Struct_4(Struct_2(vec3<i32>(global1.c.b.x, global1.c.a, 2147483647), global4[_wgslsmith_index_u32(0u, 3u)], Struct_1(global1.a.x, global1.a)), vec4<bool>(false, true, false, false), Struct_3(Struct_1(global1.a.x, global1.c.b), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 5u)], vec3<i32>(-10032, -37342, u_input.c.x))), func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30186u, 5u)], 3u)], global1.c), vec4<bool>(true, false, true, true), Struct_3(Struct_1(u_input.c.x, vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 26u)], global1.a.x, global1.c.b.x)), u_input.a.x, global1.a)), Struct_3(Struct_1(1, vec3<i32>(-60361, u_input.c.x, u_input.c.x)), u_input.a.x, global1.c.b), Struct_2(vec3<i32>(1, 25871, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 5u)], 5u)], 5u)], 26u)]), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 3u)], Struct_1(u_input.b.x, global1.c.b)), false).c, Struct_2(vec3<i32>(7284, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 1), global4[_wgslsmith_index_u32(4294967295u, 3u)], global1.c), !true).a, !(35423u <= 1u)), Struct_3(global1.c, u_input.d, min(global1.a, vec3<i32>(-8604, 1, global1.c.a))), func_7(Struct_4(Struct_2(vec3<i32>(global1.a.x, 1, 22853), 1000.0, Struct_1(global3[_wgslsmith_index_u32(25078u, 26u)], global1.c.b)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), Struct_3(global1.c, 0u, vec3<i32>(-1, global1.c.b.x, global1.a.x))), Struct_3(Struct_1(u_input.c.x, global1.c.b), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 1u), 5u)], 5u)], select(global1.a, global1.c.b, true)), func_7(Struct_4(Struct_2(vec3<i32>(u_input.b.x, 4941, global3[_wgslsmith_index_u32(17337u, 26u)]), global1.b, Struct_1(global3[_wgslsmith_index_u32(u_input.e, 26u)], global1.c.b)), vec4<bool>(true, true, true, true), Struct_3(Struct_1(global3[_wgslsmith_index_u32(u_input.e, 26u)], vec3<i32>(-9742, -47429, 37059)), u_input.a.x, global1.a)), func_7(Struct_4(Struct_2(vec3<i32>(-12422, 4532, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 26u)]), -648.0, Struct_1(-29873, global1.c.b)), vec4<bool>(true, false, false, false), Struct_3(global1.c, 17381u, global1.a)), Struct_3(Struct_1(u_input.b.x, global1.c.b), u_input.a.x, global1.a), Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(19204u, 26u)], u_input.b.x, global1.a.x), 1000.0, Struct_1(12729, vec3<i32>(global1.c.a, 13089, -1))), false).c, Struct_2(global1.c.b, 1000.0, Struct_1(22562, vec3<i32>(u_input.b.x, 2147483647, u_input.c.x))), !false).a, (false == false) == true).a, !(_wgslsmith_f_op_f32(1125.0 + global1.b) == _wgslsmith_div_f32(133.0, global1.b))).a.c.b);
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            var_0 = min(~62442u, _wgslsmith_mod_u32(var_1.b, var_1.b));
        }
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        }
        for (var var_2 = -1; var_2 != 10774; var_2 -= 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            let var_3 = global1.a.xy;
            continue;
        }
        global4 = array<f32, 3>();
    }
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var var_1 = func_7(func_7(Struct_4(Struct_2(-vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(u_input.e, 26u)], global1.a.x), _wgslsmith_f_op_f32(floor(801.0)), global1.c), select(!vec4<bool>(false, true, true, false), !vec4<bool>(false, false, true, true), false), func_7(func_7(Struct_4(Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(u_input.e, 26u)], global1.c.b.x, -1), global1.b, Struct_1(19279, global1.c.b)), vec4<bool>(true, true, true, true), Struct_3(global1.c, 61327u, global1.a)), Struct_3(Struct_1(0, global1.c.b), global0[_wgslsmith_index_u32(0u, 5u)], vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1093u, 5u)], 26u)], 0, u_input.c.x)), Struct_2(global1.a, global1.b, Struct_1(u_input.b.x, vec3<i32>(-2147483648, global3[_wgslsmith_index_u32(55491u, 26u)], -23314))), true), Struct_3(Struct_1(2147483647, global1.c.b), u_input.a.x, vec3<i32>(u_input.b.x, global1.c.b.x, u_input.b.x)), func_7(Struct_4(Struct_2(global1.a, 417.0, Struct_1(u_input.b.x, global1.c.b)), vec4<bool>(true, false, false, false), Struct_3(Struct_1(global1.c.b.x, vec3<i32>(u_input.c.x, 28853, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10592u, 5u)], 26u)])), 7489u, vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 25864))), Struct_3(global1.c, global0[_wgslsmith_index_u32(82731u, 5u)], vec3<i32>(global3[_wgslsmith_index_u32(u_input.d, 26u)], u_input.c.x, 33395)), Struct_2(global1.a, global4[_wgslsmith_index_u32(0u, 3u)], global1.c), true).a, false).c), Struct_3(func_7(Struct_4(Struct_2(global1.a, -740.0, global1.c), vec4<bool>(true, true, true, false), Struct_3(Struct_1(global1.a.x, vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.d, 26u)], global3[_wgslsmith_index_u32(1u, 26u)])), u_input.a.x, vec3<i32>(global3[_wgslsmith_index_u32(1u, 26u)], 0, 2147483647))), func_7(Struct_4(Struct_2(global1.c.b, 176.0, Struct_1(u_input.c.x, vec3<i32>(0, u_input.c.x, u_input.c.x))), vec4<bool>(true, true, false, true), Struct_3(Struct_1(u_input.c.x, vec3<i32>(19023, global1.c.b.x, -41422)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32402u, 5u)], 5u)], vec3<i32>(-1, 37321, global1.c.a))), Struct_3(Struct_1(global3[_wgslsmith_index_u32(u_input.e, 26u)], global1.a), u_input.d, global1.c.b), Struct_2(vec3<i32>(-1, global1.a.x, global1.c.a), 684.0, global1.c), true).c, Struct_2(vec3<i32>(28766, 2147483647, 13013), 1018.0, global1.c), any(vec4<bool>(false, false, false, false))).a.c, global0[_wgslsmith_index_u32(~1u, 5u)], -global1.a), func_7(Struct_4(Struct_2(vec3<i32>(global1.a.x, 53193, global3[_wgslsmith_index_u32(4294967295u, 26u)]), 1000.0, global1.c), vec4<bool>(false, false, true, false), func_7(Struct_4(Struct_2(vec3<i32>(u_input.b.x, u_input.c.x, global3[_wgslsmith_index_u32(91029u, 26u)]), 1013.0, Struct_1(-21910, global1.c.b)), vec4<bool>(false, true, false, false), Struct_3(global1.c, 1u, vec3<i32>(2147483647, u_input.c.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 26u)]))), Struct_3(global1.c, u_input.d, global1.a), Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], u_input.b.x, -2147483648), -1237.0, global1.c), false).c), func_7(func_7(Struct_4(Struct_2(vec3<i32>(-17261, 3329, -53069), -228.0, Struct_1(global1.a.x, vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 26u)], -1))), vec4<bool>(true, false, true, false), Struct_3(global1.c, 1u, global1.c.b)), Struct_3(global1.c, global0[_wgslsmith_index_u32(0u, 5u)], global1.c.b), Struct_2(vec3<i32>(global1.c.a, 1, -33662), global1.b, Struct_1(25252, global1.c.b)), true), Struct_3(Struct_1(u_input.b.x, vec3<i32>(u_input.b.x, -43139, global3[_wgslsmith_index_u32(1u, 26u)])), 1u, global1.a), Struct_2(vec3<i32>(u_input.c.x, -2147483648, global1.c.a), global1.b, Struct_1(1, vec3<i32>(-11805, 0, u_input.c.x))), !false).c, Struct_2(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), _wgslsmith_f_op_f32(global1.b - global1.b), global1.c), (true | true) & false).a, !(!all(vec2<bool>(false, true)))), Struct_3(global1.c, ~4294967295u, vec3<i32>(func_1(u_input.a.yy, -1, -1).b.x << (0u % 32u), _wgslsmith_div_i32(1, 1), -732)), Struct_2(~global1.a, func_7(func_7(Struct_4(Struct_2(global1.a, global4[_wgslsmith_index_u32(4294967295u, 3u)], Struct_1(-31393, vec3<i32>(u_input.c.x, -21570, global1.c.a))), vec4<bool>(false, true, true, true), Struct_3(Struct_1(global3[_wgslsmith_index_u32(5930u, 26u)], global1.a), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], vec3<i32>(22141, 1, 0))), func_7(Struct_4(Struct_2(global1.a, global4[_wgslsmith_index_u32(4294967295u, 3u)], global1.c), vec4<bool>(true, true, false, false), Struct_3(global1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], vec3<i32>(2147483647, global3[_wgslsmith_index_u32(u_input.e, 26u)], global1.a.x))), Struct_3(global1.c, 4294967295u, global1.a), Struct_2(vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(1274u, 26u)], global1.a.x), -461.0, global1.c), true).c, func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(u_input.e, 3u)], Struct_1(global1.a.x, global1.a)), vec4<bool>(true, true, false, true), Struct_3(global1.c, 12271u, vec3<i32>(1, 0, -1))), Struct_3(Struct_1(0, vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(0u, 26u)], u_input.c.x)), 1u, vec3<i32>(-1, 88088, global1.a.x)), Struct_2(vec3<i32>(global1.c.a, global3[_wgslsmith_index_u32(27712u, 26u)], 0), -1026.0, Struct_1(global1.c.b.x, global1.a)), true).a, all(vec2<bool>(false, true))), Struct_3(global1.c, _wgslsmith_div_u32(22887u, 1u), vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 26u)], -6349, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 26u)])), Struct_2(vec3<i32>(1, u_input.b.x, global1.a.x), _wgslsmith_f_op_f32(-742.0 - global1.b), global1.c), all(vec4<bool>(true, true, true, false))).a.b, Struct_1(global1.c.b.x, abs(max(vec3<i32>(global1.a.x, global1.c.b.x, u_input.b.x), global1.a)))), !false).a;
        for (var var_2 = 1; ; var_2 += 1) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            global1 = Struct_2(global1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(8557u, 3u)]) - 1117.0)), Struct_1(countOneBits(global3[_wgslsmith_index_u32(u_input.e, 26u)]), abs(var_1.a ^ -var_1.c.b)));
        }
        var var_2 = ~(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~64636u), ~(~0u), ~u_input.e), 5u)] ^ 1u);
        if (!any(func_7(Struct_4(Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79337u, 5u)], 26u)], var_1.c.a, global1.a.x), 1709.0, var_1.c), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), Struct_3(Struct_1(1, vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], -2147483648, global1.c.b.x)), 4294967295u, var_1.c.b)), Struct_3(func_1(u_input.a.wx, var_1.c.a, var_1.c.b.x), u_input.a.x, var_1.c.b), Struct_2(var_1.c.b, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 5u)], 5u)], 5u)], 3u)]), Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 26u)], vec3<i32>(-35623, -23470, 2147483647))), func_7(func_7(Struct_4(Struct_2(global1.a, global1.b, global1.c), vec4<bool>(false, true, false, false), Struct_3(global1.c, 0u, var_1.a)), Struct_3(Struct_1(var_1.a.x, vec3<i32>(global1.c.a, u_input.b.x, global1.a.x)), 0u, vec3<i32>(u_input.c.x, 2147483647, -1315)), Struct_2(global1.c.b, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 3u)], Struct_1(u_input.c.x, vec3<i32>(0, u_input.c.x, 1))), false), Struct_3(global1.c, 4294967295u, vec3<i32>(63904, global3[_wgslsmith_index_u32(34838u, 26u)], global3[_wgslsmith_index_u32(u_input.e, 26u)])), Struct_2(vec3<i32>(0, global1.a.x, 2147483647), var_1.b, Struct_1(0, var_1.c.b)), !true).b.x).b)) {
            let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(155.0, -327.0)), _wgslsmith_f_op_f32(475.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.b, global1.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -601.0)))));
            let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-1566.0), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-428.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.e, 3u)] + _wgslsmith_f_op_f32(-1085.0)) * 2222.0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_3.x)))));
            var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-292.0, _wgslsmith_f_op_f32(max(-1491.0, global4[_wgslsmith_index_u32(1u, 3u)]))), vec2<f32>(1803.0, _wgslsmith_div_f32(909.0, 895.0)), any(!vec3<bool>(false, true, true)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.x - 366.0), _wgslsmith_f_op_f32(abs(var_4.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec4<i32>(-63205, -5098, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)], 26u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 26u)]), 579.0)), -678.0)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.x, var_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-376.0, 727.0), var_4.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_1.b)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(163.0, var_4.x)))))));
            let var_6 = func_7(func_7(Struct_4(Struct_2(vec3<i32>(-2147483648, u_input.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), _wgslsmith_f_op_f32(min(1000.0, -1058.0)), global1.c), vec4<bool>(any(vec4<bool>(false, true, false, true)), !true, 4294967295u <= global0[_wgslsmith_index_u32(u_input.d, 5u)], !false), func_7(func_7(Struct_4(Struct_2(var_1.a, var_1.b, var_1.c), vec4<bool>(false, false, false, false), Struct_3(Struct_1(global1.a.x, vec3<i32>(-27204, u_input.b.x, 1141)), global0[_wgslsmith_index_u32(u_input.d, 5u)], var_1.c.b)), Struct_3(Struct_1(0, var_1.c.b), 58289u, var_1.c.b), Struct_2(global1.c.b, 1000.0, var_1.c), false), Struct_3(Struct_1(global3[_wgslsmith_index_u32(12197u, 26u)], var_1.c.b), 0u, var_1.a), Struct_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), var_1.b, Struct_1(0, var_1.c.b)), true).c), Struct_3(func_1(vec2<u32>(0u, u_input.d), _wgslsmith_sub_i32(10504, 2147483647), -2147483648), u_input.e & _wgslsmith_clamp_u32(0u, 24434u, u_input.e), ~_wgslsmith_mult_vec3_i32(global1.a, global1.a)), Struct_2(-firstLeadingBit(vec3<i32>(2147483647, var_1.c.b.x, -1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(-938.0)), global1.c), true), func_7(func_7(Struct_4(func_7(Struct_4(Struct_2(global1.c.b, 566.0, Struct_1(-1, vec3<i32>(51507, -33205, global1.c.b.x))), vec4<bool>(false, false, true, false), Struct_3(Struct_1(u_input.c.x, var_1.c.b), 44455u, vec3<i32>(global3[_wgslsmith_index_u32(36553u, 26u)], 40462, 23308))), Struct_3(var_1.c, global0[_wgslsmith_index_u32(u_input.d, 5u)], global1.a), Struct_2(var_1.c.b, global1.b, Struct_1(1, vec3<i32>(1, 50535, -26343))), false).a, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), Struct_3(var_1.c, u_input.d, vec3<i32>(40794, 20826, u_input.c.x))), Struct_3(Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49584u, 5u)], 26u)], vec3<i32>(-1, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 26u)], 15533)), 4294967295u, countOneBits(global1.c.b)), func_7(func_7(Struct_4(Struct_2(var_1.a, 405.0, global1.c), vec4<bool>(true, false, false, true), Struct_3(var_1.c, 3993u, vec3<i32>(-11293, var_1.a.x, 53477))), Struct_3(var_1.c, global0[_wgslsmith_index_u32(19152u, 5u)], global1.a), Struct_2(vec3<i32>(19042, 0, global1.a.x), global4[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_1(-11913, vec3<i32>(31635, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 97907))), true), func_7(Struct_4(Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(11201u, 26u)], -1, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), var_3.x, var_1.c), vec4<bool>(true, false, false, false), Struct_3(Struct_1(12523, vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 26u)], -1, global1.c.a)), 4294967295u, vec3<i32>(global1.c.b.x, u_input.b.x, 17449))), Struct_3(global1.c, u_input.e, vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 26u)], -2147483648, u_input.c.x)), Struct_2(vec3<i32>(global1.c.b.x, -23925, 34886), var_3.x, Struct_1(global1.c.a, vec3<i32>(-12610, global3[_wgslsmith_index_u32(60692u, 26u)], 4788))), true).c, Struct_2(var_1.c.b, 2416.0, global1.c), global0[_wgslsmith_index_u32(1u, 5u)] < 25575u).a, 211.0 == var_4.x), func_7(func_7(Struct_4(Struct_2(var_1.a, var_3.x, global1.c), vec4<bool>(true, false, false, true), Struct_3(global1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], vec3<i32>(u_input.b.x, var_1.a.x, u_input.c.x))), func_7(Struct_4(Struct_2(var_1.a, -1124.0, Struct_1(global3[_wgslsmith_index_u32(1u, 26u)], global1.a)), vec4<bool>(true, true, true, true), Struct_3(Struct_1(2147483647, vec3<i32>(1, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 26u)], global3[_wgslsmith_index_u32(52875u, 26u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], vec3<i32>(global1.c.a, 2147483647, -42759))), Struct_3(global1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], vec3<i32>(var_1.a.x, 4677, global1.a.x)), Struct_2(global1.a, var_3.x, Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 26u)], global1.c.b)), false).c, Struct_2(vec3<i32>(10597, 13319, global3[_wgslsmith_index_u32(9083u, 26u)]), -688.0, var_1.c), func_3(vec3<f32>(var_4.x, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41914u, 5u)], 3u)], -498.0), u_input.a.yx, 0, var_1.c)), func_7(func_7(Struct_4(Struct_2(global1.c.b, 1439.0, Struct_1(30279, var_1.c.b)), vec4<bool>(true, true, false, true), Struct_3(Struct_1(global1.a.x, var_1.c.b), global0[_wgslsmith_index_u32(u_input.d, 5u)], vec3<i32>(-2147483648, -2147483648, 1))), Struct_3(Struct_1(0, global1.c.b), 29455u, vec3<i32>(-1, global1.a.x, global3[_wgslsmith_index_u32(u_input.d, 26u)])), Struct_2(vec3<i32>(1006, global3[_wgslsmith_index_u32(7458u, 26u)], u_input.b.x), global4[_wgslsmith_index_u32(0u, 3u)], Struct_1(1, vec3<i32>(u_input.c.x, var_1.c.a, 48754))), true), func_7(Struct_4(Struct_2(var_1.a, 316.0, var_1.c), vec4<bool>(true, true, true, false), Struct_3(Struct_1(-2147483648, vec3<i32>(var_1.c.b.x, global1.a.x, u_input.c.x)), u_input.d, vec3<i32>(-8705, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 26u)], -2147483648))), Struct_3(global1.c, 4294967295u, vec3<i32>(u_input.c.x, -48775, global1.c.a)), Struct_2(global1.a, global4[_wgslsmith_index_u32(u_input.d, 3u)], global1.c), false).c, func_7(Struct_4(Struct_2(var_1.a, global1.b, var_1.c), vec4<bool>(false, false, true, true), Struct_3(var_1.c, u_input.a.x, global1.c.b)), Struct_3(var_1.c, global0[_wgslsmith_index_u32(4294967295u, 5u)], vec3<i32>(u_input.b.x, 0, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47905u, 5u)], 26u)])), Struct_2(global1.c.b, global4[_wgslsmith_index_u32(28536u, 3u)], Struct_1(var_1.c.a, global1.c.b)), true).a, global3[_wgslsmith_index_u32(u_input.a.x, 26u)] < -29658).c, Struct_2(vec3<i32>(2147483647, -27049, 0), _wgslsmith_f_op_f32(var_5.x * 471.0), Struct_1(1, vec3<i32>(2147483647, 0, u_input.b.x))), !(!false)).c, func_7(func_7(func_7(Struct_4(Struct_2(vec3<i32>(global1.c.b.x, global1.a.x, var_1.c.a), -223.0, var_1.c), vec4<bool>(false, true, false, false), Struct_3(Struct_1(var_1.c.b.x, var_1.a), global0[_wgslsmith_index_u32(1u, 5u)], vec3<i32>(13804, u_input.b.x, -2147483648))), Struct_3(global1.c, 1u, vec3<i32>(86552, global1.a.x, u_input.c.x)), Struct_2(global1.c.b, var_1.b, var_1.c), true), func_7(Struct_4(Struct_2(vec3<i32>(1, 20293, -28484), var_3.x, var_1.c), vec4<bool>(true, false, false, false), Struct_3(global1.c, 0u, vec3<i32>(-1, 1, 2147483647))), Struct_3(Struct_1(-1, var_1.c.b), 4294967295u, var_1.a), Struct_2(vec3<i32>(-17909, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 26u)], 43046), -630.0, Struct_1(global3[_wgslsmith_index_u32(26872u, 26u)], vec3<i32>(0, u_input.c.x, 2147483647))), true).c, Struct_2(var_1.c.b, 534.0, global1.c), any(vec3<bool>(false, true, true))), Struct_3(func_1(vec2<u32>(82033u, 66746u), global3[_wgslsmith_index_u32(u_input.d, 26u)], global1.c.b.x), u_input.a.x, _wgslsmith_add_vec3_i32(vec3<i32>(var_1.c.a, global3[_wgslsmith_index_u32(0u, 26u)], 1), var_1.a)), Struct_2(-global1.a, 1320.0, func_1(vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], 4294967295u), global1.c.a, -17752)), true).a, true).c, func_7(func_7(func_7(func_7(Struct_4(Struct_2(vec3<i32>(-2147483648, 0, var_1.a.x), -134.0, Struct_1(global1.c.a, vec3<i32>(-9522, u_input.c.x, -42431))), vec4<bool>(true, true, true, false), Struct_3(Struct_1(global1.a.x, var_1.c.b), 28471u, vec3<i32>(global1.c.b.x, u_input.c.x, 18089))), Struct_3(Struct_1(u_input.c.x, vec3<i32>(-24400, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10759u, 5u)], 26u)], 50880)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6333u, 5u)], 5u)], 5u)], vec3<i32>(-37074, 9463, global3[_wgslsmith_index_u32(18637u, 26u)])), Struct_2(vec3<i32>(-43021, global3[_wgslsmith_index_u32(40079u, 26u)], 2147483647), var_5.x, global1.c), true), Struct_3(global1.c, 23891u, vec3<i32>(21829, global1.c.b.x, 18666)), func_7(Struct_4(Struct_2(var_1.a, -715.0, global1.c), vec4<bool>(true, true, true, false), Struct_3(var_1.c, global0[_wgslsmith_index_u32(0u, 5u)], vec3<i32>(var_1.a.x, 1, var_1.a.x))), Struct_3(var_1.c, 4294967295u, var_1.c.b), Struct_2(vec3<i32>(global1.c.a, -1700, 9821), var_1.b, Struct_1(2147483647, var_1.c.b)), false).a, !true), func_7(func_7(Struct_4(Struct_2(vec3<i32>(global1.c.a, 57998, global3[_wgslsmith_index_u32(4294967295u, 26u)]), var_4.x, Struct_1(46001, var_1.c.b)), vec4<bool>(true, true, false, true), Struct_3(Struct_1(var_1.c.a, var_1.c.b), u_input.d, vec3<i32>(1940, global3[_wgslsmith_index_u32(0u, 26u)], var_1.a.x))), Struct_3(global1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57732u, 5u)], 5u)], 5u)], var_1.c.b), Struct_2(global1.a, var_1.b, var_1.c), false), func_7(Struct_4(Struct_2(global1.c.b, var_1.b, Struct_1(-20133, var_1.c.b)), vec4<bool>(false, true, true, true), Struct_3(global1.c, global0[_wgslsmith_index_u32(4294967295u, 5u)], vec3<i32>(-1, global1.a.x, 1))), Struct_3(Struct_1(1, global1.c.b), 19886u, global1.c.b), Struct_2(var_1.a, var_1.b, var_1.c), true).c, Struct_2(global1.c.b, global4[_wgslsmith_index_u32(1u, 3u)], Struct_1(1, vec3<i32>(var_1.c.b.x, 69418, -2840))), !true).c, func_7(func_7(Struct_4(Struct_2(vec3<i32>(-1, 50260, 1), -309.0, var_1.c), vec4<bool>(true, true, false, true), Struct_3(global1.c, 29570u, global1.c.b)), Struct_3(var_1.c, u_input.a.x, global1.c.b), Struct_2(var_1.a, -352.0, global1.c), true), Struct_3(Struct_1(2147483647, vec3<i32>(global1.c.b.x, var_1.a.x, u_input.c.x)), 39958u, global1.a), Struct_2(var_1.c.b, global4[_wgslsmith_index_u32(20773u, 3u)], Struct_1(global1.a.x, var_1.a)), !true).a, false), Struct_3(var_1.c, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 4294967295u), 5u)], firstTrailingBit(12318u)), 5u)], vec3<i32>(global3[_wgslsmith_index_u32(0u, 26u)], ~global1.a.x, -2147483648)), Struct_2(var_1.c.b >> (select(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 0u), u_input.a.zww, vec3<bool>(false, true, false)) % vec3<u32>(32u)), -877.0, Struct_1(-u_input.c.x, select(var_1.c.b, vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], u_input.c.x, -43066), false))), false).a, true).c.a;
            break;
        }
    }
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_1 = all(!(!(!(!vec4<bool>(true, true, true, true)))));
    }
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0 - global4[_wgslsmith_index_u32(13001u, 3u)])), 1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(633.0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(310.0, 1893.0, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 3u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b, global4[_wgslsmith_index_u32(46295u, 3u)], -127.0), vec3<f32>(-1179.0, global1.b, 1306.0)) * vec3<f32>(global1.b, -1000.0, global1.b))))));
    var_0 = ~(_wgslsmith_dot_vec4_u32(u_input.a, ~(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63735u, 5u)], 5u)], global0[_wgslsmith_index_u32(1u, 5u)], 1u) & vec4<u32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], u_input.a.x, 0u))) & 1u);
    let var_2 = _wgslsmith_f_op_f32(sign(var_1.x));
    for (var var_3 = 0; true; global2 = array<vec4<i32>, 25>()) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var var_4 = 5780 | -(_wgslsmith_mult_i32(u_input.b.x, -1) | func_8(_wgslsmith_div_f32(var_1.x, -609.0), min(vec2<u32>(0u, 14318u), vec2<u32>(u_input.a.x, u_input.d)), !vec2<bool>(false, true)).x);
        let var_5 = Struct_2(-_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483648, 1, -1), countOneBits(global1.a)), -(~vec3<i32>(-1, global3[_wgslsmith_index_u32(u_input.e, 26u)], global1.c.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(558.0)))), Struct_1(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(14191, global3[_wgslsmith_index_u32(0u, 26u)], u_input.b.x), vec3<i32>(global3[_wgslsmith_index_u32(u_input.d, 26u)], -2147483648, 54729))), _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1) * -11006, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 26u)], global3[_wgslsmith_index_u32(u_input.e, 26u)]), global1.a)));
    }
    switch (i32(-1) * -u_input.c.x) {
        case 0: {
        }
        case -23823: {
            return;
        }
        case 39747: {
            switch (global1.a.x ^ 0) {
                case 1: {
                    let var_3 = u_input.b.x;
                }
                case 2147483647: {
                    let var_3 = ~(~u_input.a.zx);
                    let var_4 = vec3<u32>(11524u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(26291u, var_3.x, global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, u_input.d, 4294967295u), u_input.a.yxz, vec3<u32>(var_3.x, 24069u, var_3.x))), vec3<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 5u)]), 4294967295u, reverseBits(4294967295u))), 79521u), u_input.a.x);
                }
                case -19335: {
                    var var_3 = _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(89138u, 5u)], ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(129653u >> (0u % 32u), 5u)], u_input.a.x << (20319u % 32u)), ~0u, _wgslsmith_dot_vec4_u32(u_input.a, countOneBits(u_input.a) | _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(13692u, u_input.d, 30782u, 32752u)))), vec4<u32>(u_input.e, 4294967295u, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(1u, 4294967295u << (26884u % 32u))), u_input.d));
                    var var_4 = Struct_4(func_7(func_7(Struct_4(Struct_2(global1.a, global1.b, Struct_1(-2147483648, global1.c.b)), func_7(Struct_4(Struct_2(vec3<i32>(global1.c.b.x, 21276, global3[_wgslsmith_index_u32(34468u, 26u)]), var_1.x, Struct_1(2147483647, global1.c.b)), vec4<bool>(true, true, true, true), Struct_3(global1.c, 64777u, vec3<i32>(18967, -31482, 2147483647))), Struct_3(global1.c, 0u, vec3<i32>(0, 1, global3[_wgslsmith_index_u32(var_3.x, 26u)])), Struct_2(global1.c.b, -1363.0, Struct_1(u_input.c.x, vec3<i32>(u_input.c.x, 0, 20438))), false).b, Struct_3(global1.c, 10063u, vec3<i32>(2147483647, -1, u_input.c.x))), func_7(func_7(Struct_4(Struct_2(vec3<i32>(global1.a.x, u_input.b.x, global1.a.x), global1.b, global1.c), vec4<bool>(true, true, false, true), Struct_3(global1.c, 102586u, vec3<i32>(u_input.c.x, global1.a.x, 52957))), Struct_3(Struct_1(global1.a.x, vec3<i32>(global1.c.b.x, global1.c.a, global1.a.x)), u_input.d, vec3<i32>(-811, global1.a.x, u_input.b.x)), Struct_2(global1.a, global4[_wgslsmith_index_u32(0u, 3u)], global1.c), true), Struct_3(Struct_1(-2147483648, vec3<i32>(global1.a.x, -47803, -2147483648)), var_3.x, vec3<i32>(global1.a.x, global3[_wgslsmith_index_u32(47687u, 26u)], global1.c.a)), Struct_2(vec3<i32>(-7362, 2005, global1.c.a), 826.0, global1.c), true).c, Struct_2(-vec3<i32>(-23688, 5784, global1.a.x), _wgslsmith_f_op_f32(-105.0), func_7(Struct_4(Struct_2(global1.a, var_2, Struct_1(u_input.c.x, global1.c.b)), vec4<bool>(true, true, true, true), Struct_3(global1.c, var_3.x, vec3<i32>(global1.a.x, u_input.b.x, 2147483647))), Struct_3(Struct_1(global1.a.x, vec3<i32>(2147483647, 2147483647, u_input.c.x)), 0u, vec3<i32>(global3[_wgslsmith_index_u32(var_3.x, 26u)], 0, -1)), Struct_2(global1.a, -1000.0, global1.c), false).a.c), !false), Struct_3(global1.c, var_3.x, select(firstTrailingBit(global1.c.b), global1.c.b, false)), func_7(Struct_4(Struct_2(global1.c.b, global4[_wgslsmith_index_u32(u_input.a.x, 3u)], global1.c), !vec4<bool>(true, true, false, false), Struct_3(Struct_1(u_input.b.x, vec3<i32>(0, 1, u_input.b.x)), 66067u, vec3<i32>(16414, 13680, -2147483648))), Struct_3(Struct_1(global1.a.x, global1.c.b), global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -global1.a), Struct_2(abs(vec3<i32>(20640, -1, 30504)), _wgslsmith_div_f32(-244.0, var_1.x), global1.c), !(true == false)).a, u_input.b.x != func_5(func_7(Struct_4(Struct_2(global1.a, -1404.0, global1.c), vec4<bool>(true, false, false, true), Struct_3(Struct_1(global1.a.x, global1.c.b), 91741u, vec3<i32>(-1, -1, 7714))), Struct_3(Struct_1(22144, vec3<i32>(global1.a.x, -2147483648, -2147483648)), 1u, vec3<i32>(u_input.c.x, u_input.b.x, -2147483648)), Struct_2(vec3<i32>(-27680, -2692, 1), -215.0, Struct_1(2147483647, vec3<i32>(global1.a.x, 37076, 49570))), true))).a, vec4<bool>(func_3(vec3<f32>(_wgslsmith_f_op_f32(-994.0 + var_1.x), 287.0, _wgslsmith_f_op_f32(-817.0 * global1.b)), ~vec2<u32>(u_input.a.x, 4294967295u), -2147483648, Struct_1(-global1.a.x, ~vec3<i32>(u_input.c.x, 2147483647, u_input.c.x))), false, !((true || true) != !false), !all(vec2<bool>(false, true)) || true), Struct_3(Struct_1(reverseBits(~u_input.b.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(0, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 26u)], -51091), global1.a)), var_3.x, vec3<i32>(global1.a.x, countOneBits(global3[_wgslsmith_index_u32(firstLeadingBit(0u), 26u)]), ~(-31768))));
                    return;
                }
                case -1: {
                    return;
                }
                default: {
                    global0 = array<u32, 5>();
                    global3 = array<i32, 26>();
                    var_0 = u_input.d;
                    let var_3 = u_input.a & (vec4<u32>(4749u, countOneBits(_wgslsmith_mod_u32(46175u, 29934u)), u_input.a.x, _wgslsmith_mod_u32(u_input.d, 41816u)) >> (u_input.a % vec4<u32>(32u)));
                    let var_4 = Struct_1(func_8(var_1.x, vec2<u32>(func_6(), global0[_wgslsmith_index_u32(var_3.x, 5u)]), !vec2<bool>(any(vec3<bool>(true, false, true)), !true)).x, global1.a);
                }
            }
            var var_3 = var_1.x;
            var var_4 = ~countOneBits(vec3<u32>(u_input.d, _wgslsmith_clamp_u32(u_input.e, min(2143u, u_input.e), 27160u), u_input.d));
        }
        case 34020: {
            switch (global1.c.b.x) {
                case 2147483647: {
                    global4 = array<f32, 3>();
                }
                case 0: {
                    global4 = array<f32, 3>();
                    var_0 = _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], ~(~40580u));
                    var var_3 = vec3<bool>(func_7(Struct_4(func_7(func_7(Struct_4(Struct_2(global1.a, 2070.0, global1.c), vec4<bool>(true, false, true, true), Struct_3(Struct_1(5349, vec3<i32>(-30851, u_input.c.x, -2147483648)), global0[_wgslsmith_index_u32(1u, 5u)], global1.a)), Struct_3(global1.c, 18090u, global1.a), Struct_2(vec3<i32>(global1.a.x, 0, global3[_wgslsmith_index_u32(4294967295u, 26u)]), var_1.x, global1.c), false), Struct_3(Struct_1(-2147483648, global1.a), global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global1.a), Struct_2(global1.c.b, global4[_wgslsmith_index_u32(0u, 3u)], global1.c), 1000.0 != var_1.x).a, func_7(func_7(Struct_4(Struct_2(global1.a, 127.0, Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54436u, 5u)], 26u)], global1.a)), vec4<bool>(true, false, true, true), Struct_3(Struct_1(global1.a.x, global1.c.b), 1u, global1.c.b)), Struct_3(global1.c, 42661u, vec3<i32>(global3[_wgslsmith_index_u32(53235u, 26u)], -18300, global1.a.x)), Struct_2(vec3<i32>(u_input.b.x, -2645, 1), 1038.0, Struct_1(-2147483648, vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.c.x, 2147483647))), true), func_7(Struct_4(Struct_2(global1.c.b, -2205.0, Struct_1(87868, global1.c.b)), vec4<bool>(false, false, true, false), Struct_3(Struct_1(2147483647, vec3<i32>(51525, u_input.c.x, global1.c.a)), global0[_wgslsmith_index_u32(36570u, 5u)], global1.c.b)), Struct_3(Struct_1(-19302, vec3<i32>(-2147483648, u_input.c.x, 1)), 31424u, global1.a), Struct_2(global1.a, var_1.x, Struct_1(u_input.c.x, global1.a)), false).c, func_7(Struct_4(Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(1u, 26u)], u_input.c.x, 6160), -327.0, Struct_1(u_input.c.x, vec3<i32>(global1.a.x, 3345, u_input.c.x))), vec4<bool>(false, false, false, true), Struct_3(Struct_1(-2147483648, vec3<i32>(2147483647, global1.a.x, global3[_wgslsmith_index_u32(u_input.d, 26u)])), 4294967295u, global1.c.b)), Struct_3(Struct_1(global1.c.b.x, vec3<i32>(global1.c.a, 0, u_input.c.x)), 4294967295u, vec3<i32>(53811, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40029u, 5u)], 26u)], 1)), Struct_2(vec3<i32>(u_input.c.x, global1.a.x, u_input.c.x), var_1.x, global1.c), false).a, all(vec4<bool>(false, true, true, false))).b, func_7(Struct_4(Struct_2(vec3<i32>(47745, -2147483648, u_input.b.x), -1000.0, Struct_1(2147483647, global1.a)), vec4<bool>(true, true, true, false), Struct_3(global1.c, 7037u, vec3<i32>(-1, 48081, -2147483648))), func_7(Struct_4(Struct_2(global1.a, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 3u)], Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global1.a)), vec4<bool>(true, false, true, true), Struct_3(global1.c, u_input.e, global1.a)), Struct_3(Struct_1(u_input.b.x, global1.c.b), u_input.e, global1.a), Struct_2(vec3<i32>(u_input.b.x, -40495, -1), -1971.0, global1.c), true).c, Struct_2(global1.c.b, 1030.0, global1.c), any(vec2<bool>(false, false))).c), func_7(Struct_4(Struct_2(vec3<i32>(-39698, u_input.c.x, u_input.b.x), global1.b, Struct_1(2147483647, vec3<i32>(-22904, u_input.c.x, 12480))), vec4<bool>(true, false, true, false), func_7(Struct_4(Struct_2(vec3<i32>(global1.c.b.x, 1, 2147483647), -1335.0, global1.c), vec4<bool>(true, false, false, false), Struct_3(Struct_1(u_input.b.x, global1.a), u_input.e, global1.a)), Struct_3(Struct_1(u_input.b.x, vec3<i32>(1, global1.a.x, -1)), 1u, global1.c.b), Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(0u, 26u)], -2147483648, global1.a.x), global1.b, global1.c), true).c), Struct_3(func_7(Struct_4(Struct_2(vec3<i32>(1, 44963, -55798), 642.0, Struct_1(global1.c.a, global1.a)), vec4<bool>(false, true, false, false), Struct_3(global1.c, 97659u, vec3<i32>(global3[_wgslsmith_index_u32(u_input.e, 26u)], global3[_wgslsmith_index_u32(39310u, 26u)], -28297))), Struct_3(Struct_1(u_input.c.x, vec3<i32>(0, 36970, 1)), 4294967295u, global1.c.b), Struct_2(global1.a, var_1.x, global1.c), false).a.c, abs(8954u), vec3<i32>(global3[_wgslsmith_index_u32(4597u, 26u)], -12783, global1.a.x)), func_7(func_7(Struct_4(Struct_2(global1.c.b, var_2, Struct_1(1, global1.c.b)), vec4<bool>(true, false, true, false), Struct_3(global1.c, 31202u, global1.a)), Struct_3(global1.c, u_input.a.x, global1.a), Struct_2(global1.c.b, global4[_wgslsmith_index_u32(4294967295u, 3u)], Struct_1(17777, global1.c.b)), true), func_7(Struct_4(Struct_2(vec3<i32>(u_input.c.x, -2147483648, global3[_wgslsmith_index_u32(1u, 26u)]), -1831.0, Struct_1(0, global1.a)), vec4<bool>(true, true, false, true), Struct_3(global1.c, 4294967295u, global1.a)), Struct_3(global1.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 5u)], global1.c.b), Struct_2(vec3<i32>(global1.a.x, 2147483647, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 26u)]), 1833.0, global1.c), false).c, func_7(Struct_4(Struct_2(vec3<i32>(-33042, 2147483647, 13419), -803.0, Struct_1(-9838, vec3<i32>(-7797, -2147483648, u_input.b.x))), vec4<bool>(true, true, true, false), Struct_3(global1.c, 4294967295u, global1.c.b)), Struct_3(Struct_1(global1.a.x, global1.c.b), 100827u, global1.a), Struct_2(vec3<i32>(-2147483648, -2147483648, -28101), global4[_wgslsmith_index_u32(4294967295u, 3u)], Struct_1(global1.c.b.x, vec3<i32>(global1.c.b.x, -18358, -1))), true).a, func_7(Struct_4(Struct_2(vec3<i32>(62521, global1.c.a, -17646), 199.0, global1.c), vec4<bool>(false, false, false, true), Struct_3(Struct_1(0, vec3<i32>(-1, 40947, -63497)), 4294967295u, global1.c.b)), Struct_3(global1.c, 46323u, vec3<i32>(1, global3[_wgslsmith_index_u32(54425u, 26u)], -16589)), Struct_2(vec3<i32>(-2147483648, -1, -2078), global1.b, Struct_1(4248, global1.c.b)), false).b.x).a, -7767 >= global3[_wgslsmith_index_u32(~0u, 26u)]).c, func_7(Struct_4(Struct_2(vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(46043u, 26u)], global1.a.x), global4[_wgslsmith_index_u32(3916u, 3u)], global1.c), !vec4<bool>(true, true, true, true), Struct_3(global1.c, u_input.e, vec3<i32>(2147483647, 51469, u_input.c.x))), Struct_3(func_1(u_input.a.xx, u_input.c.x, 2147483647), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 1923u), 5u)], countOneBits(global1.c.b)), Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], -34369), vec3<i32>(2147483647, global1.c.a, -30387), vec3<i32>(-7661, global3[_wgslsmith_index_u32(u_input.e, 26u)], -7780)), global1.b, global1.c), true).a, any(select(!vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), false & false))).b.x, (-firstLeadingBit(-30642) >= firstTrailingBit(1)) && (u_input.e != max(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(38998u, 5u)], u_input.a.x, u_input.a.x), u_input.a.x)), 8224u <= 4294967295u);
                }
                default: {
                    var var_3 = global1.c;
                    var var_4 = 4294967295u;
                }
            }
            if (true & any(!(!func_7(Struct_4(Struct_2(vec3<i32>(-2147483648, u_input.b.x, global3[_wgslsmith_index_u32(1u, 26u)]), var_2, global1.c), vec4<bool>(true, true, false, true), Struct_3(Struct_1(u_input.c.x, vec3<i32>(global1.a.x, u_input.b.x, -99087)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 5u)], vec3<i32>(-1, -52633, global1.c.a))), Struct_3(global1.c, 41210u, global1.a), Struct_2(global1.a, -462.0, global1.c), true).b.ywx))) {
                var_0 = ~(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 5u)], u_input.a.x), vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53019u, 5u)], 5u)], u_input.e), func_7(Struct_4(Struct_2(vec3<i32>(-1, -2147483648, 1), -242.0, Struct_1(0, vec3<i32>(u_input.b.x, -1, global3[_wgslsmith_index_u32(u_input.d, 26u)]))), vec4<bool>(true, true, false, false), Struct_3(Struct_1(-28399, global1.a), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52072u, 5u)], 5u)], vec3<i32>(global1.c.b.x, 58976, 31148))), Struct_3(global1.c, u_input.d, global1.c.b), Struct_2(global1.a, var_1.x, global1.c), false).b.zyy), firstTrailingBit(u_input.a.wzx | u_input.a.zxy)) | _wgslsmith_add_u32(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(1u, 5u)] >> (global0[_wgslsmith_index_u32(u_input.e, 5u)] % 32u), ~4247u), 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)]));
                let var_3 = global0[_wgslsmith_index_u32(1u, 5u)];
                var var_4 = func_7(Struct_4(Struct_2(-_wgslsmith_add_vec3_i32(global1.a, vec3<i32>(-1, -2147483648, -1)), 722.0, Struct_1(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 26u)], 0), -global1.a)), select(vec4<bool>(func_3(var_1, vec2<u32>(29718u, 4294967295u), 2147483647, global1.c), true & false, 568.0 != var_1.x, all(vec4<bool>(false, true, true, false))), select(!vec4<bool>(true, true, true, false), !vec4<bool>(true, true, true, false), any(vec2<bool>(false, false))), !(!true)), func_7(Struct_4(Struct_2(global1.c.b, global1.b, Struct_1(0, global1.a)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), Struct_3(global1.c, 2075u, vec3<i32>(global3[_wgslsmith_index_u32(42841u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)], -1))), func_7(Struct_4(Struct_2(vec3<i32>(3343, u_input.c.x, -2147483648), 1000.0, global1.c), vec4<bool>(false, false, false, false), Struct_3(Struct_1(u_input.b.x, vec3<i32>(global1.c.a, 0, global1.a.x)), global0[_wgslsmith_index_u32(1u, 5u)], vec3<i32>(u_input.c.x, global1.c.a, -8181))), Struct_3(global1.c, u_input.a.x, vec3<i32>(global3[_wgslsmith_index_u32(165u, 26u)], 1, -17686)), func_7(Struct_4(Struct_2(vec3<i32>(u_input.c.x, -1, u_input.c.x), 1384.0, Struct_1(global1.c.a, global1.c.b)), vec4<bool>(true, true, true, false), Struct_3(Struct_1(global1.a.x, global1.c.b), u_input.d, global1.a)), Struct_3(global1.c, global0[_wgslsmith_index_u32(4294967295u, 5u)], global1.c.b), Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(u_input.d, 26u)], 0, -15997), 283.0, global1.c), true).a, any(vec3<bool>(false, false, false))).c, Struct_2(vec3<i32>(u_input.c.x, 1, 23397), _wgslsmith_f_op_f32(-825.0 - -459.0), Struct_1(global1.a.x, global1.a)), true).c), Struct_3(Struct_1(~(-43961), vec3<i32>(abs(global1.c.b.x), -1, u_input.c.x)), min(u_input.e, 59619u), ~_wgslsmith_sub_vec3_i32(global1.c.b, select(global1.a, vec3<i32>(0, -63326, global3[_wgslsmith_index_u32(u_input.e, 26u)]), true))), func_7(func_7(Struct_4(Struct_2(vec3<i32>(global1.a.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 26u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 26u)]), 787.0, global1.c), vec4<bool>(false, false, false, false), func_7(Struct_4(Struct_2(global1.c.b, 129.0, Struct_1(global1.a.x, global1.c.b)), vec4<bool>(true, false, false, false), Struct_3(Struct_1(-35690, global1.c.b), 1u, vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 26u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 5u)], 26u)], u_input.b.x))), Struct_3(global1.c, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(1u, 26u)], 2147483647)), Struct_2(global1.a, var_1.x, global1.c), false).c), func_7(func_7(Struct_4(Struct_2(global1.a, global1.b, Struct_1(u_input.b.x, vec3<i32>(global3[_wgslsmith_index_u32(u_input.e, 26u)], -1, 5878))), vec4<bool>(false, false, false, false), Struct_3(Struct_1(global1.c.b.x, vec3<i32>(76977, global3[_wgslsmith_index_u32(25285u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)])), global0[_wgslsmith_index_u32(1u, 5u)], vec3<i32>(2147483647, global3[_wgslsmith_index_u32(18916u, 26u)], u_input.c.x))), Struct_3(global1.c, u_input.d, global1.a), Struct_2(vec3<i32>(9583, u_input.c.x, global3[_wgslsmith_index_u32(1u, 26u)]), var_2, Struct_1(58233, global1.a)), false), Struct_3(global1.c, global0[_wgslsmith_index_u32(10294u, 5u)], vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 26u)], u_input.c.x)), Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 26u)], 27179, 13423), var_1.x, global1.c), !true).c, func_7(Struct_4(Struct_2(vec3<i32>(-2147483648, 1, 2147483647), global4[_wgslsmith_index_u32(0u, 3u)], global1.c), vec4<bool>(true, false, false, true), Struct_3(Struct_1(u_input.c.x, global1.c.b), 25971u, global1.a)), Struct_3(global1.c, u_input.d, vec3<i32>(global3[_wgslsmith_index_u32(u_input.d, 26u)], u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 26u)])), func_7(Struct_4(Struct_2(vec3<i32>(u_input.b.x, 0, global3[_wgslsmith_index_u32(4294967295u, 26u)]), var_2, global1.c), vec4<bool>(true, true, false, false), Struct_3(Struct_1(0, global1.a), u_input.e, global1.c.b)), Struct_3(Struct_1(global1.a.x, vec3<i32>(0, -13861, 43589)), 4294967295u, global1.a), Struct_2(global1.c.b, global4[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_1(-19822, global1.c.b)), false).a, !true).a, false), Struct_3(Struct_1(global3[_wgslsmith_index_u32(~95911u, 26u)], vec3<i32>(33179, -2147483648, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(u_input.e, 5u)], 1u) % vec3<u32>(32u))), abs(~1u), -(~vec3<i32>(global1.a.x, 0, 1))), Struct_2(func_7(Struct_4(Struct_2(global1.a, var_1.x, global1.c), vec4<bool>(true, false, true, true), Struct_3(global1.c, 1u, vec3<i32>(u_input.b.x, -16856, u_input.b.x))), Struct_3(Struct_1(-1, global1.a), 42987u, global1.a), Struct_2(vec3<i32>(u_input.b.x, -29539, 2147483647), 988.0, global1.c), true || true).a.a, _wgslsmith_f_op_f32(exp2(110.0)), global1.c), !(var_1.x != var_2)).a, all(vec2<bool>(false, false))).a;
                let var_5 = !(true && false);
                global2 = array<vec4<i32>, 25>();
            }
            global2 = array<vec4<i32>, 25>();
        }
        default: {
            global0 = array<u32, 5>();
            var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(reverseBits(abs(~17985u)) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 5u)], 5u)], 0u), 5u)], ~u_input.e), 10388u) % 32u)), 5u)];
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(4294967295u, 26u)], ~_wgslsmith_clamp_u32(~17153u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~83841u, 5u)], ~u_input.d, global0[_wgslsmith_index_u32(4294967295u & u_input.e, 5u)]), _wgslsmith_mult_u32(~25497u, min(global0[_wgslsmith_index_u32(4294967295u, 5u)], 0u))), min(vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, 2147483647), 2147483647, ~global3[_wgslsmith_index_u32(u_input.d, 26u)], -5959) << (u_input.a % vec4<u32>(32u)), -vec4<i32>(~global1.a.x, _wgslsmith_add_i32(u_input.b.x, -15394), _wgslsmith_sub_i32(-1, global3[_wgslsmith_index_u32(28834u, 26u)]), min(global3[_wgslsmith_index_u32(u_input.e, 26u)], global1.a.x))), vec3<i32>(1, _wgslsmith_div_i32(~2147483647, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~38532u, 5u)], 26u)]), _wgslsmith_add_i32(-(-1 | 0), abs(_wgslsmith_add_i32(9124, 20251)))), -2147483648);
}

