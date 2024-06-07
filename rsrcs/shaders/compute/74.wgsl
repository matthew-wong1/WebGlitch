// {"0:0":[137,102,185,250,130,137,104,16,23,131,97,175]}
// Seed: 10310160132606296350

struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: Struct_3;

var<private> global3: u32;

var<private> global4: bool;

var<private> LOOP_COUNTERS: array<u32, 25>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_6() -> u32 {
    global1 = global2.a.b;
    for (; ; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global0 = global2.a.c;
        switch (global2.c.b.x) {
            case -4171: {
                continue;
            }
            default: {
            }
        }
        global0 = u_input.a;
        continue;
    }
    var var_0 = vec4<f32>(1000.0, _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_f32(-149.0), global2.c.a.x);
    let var_1 = _wgslsmith_div_i32(global1.b.x, ~firstTrailingBit(_wgslsmith_div_i32(global2.a.b.b.x, global2.e))) < ~(-(~min(-2147483648, -76979)));
    return ~20367u;
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: f32) -> vec4<i32> {
    for (var var_0: i32; any(!select(!vec2<bool>(false, false), arg_1.yz, vec2<bool>(true, true))); ) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        let var_1 = _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(0u, func_6(), ~u_input.a, ~global2.a.c)), ~abs(countOneBits(abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.b)))));
        return -(~vec4<i32>(1, 0, _wgslsmith_dot_vec2_i32(vec2<i32>(0, -39459), global1.b.zz), ~global2.e) | _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(20141, global1.b.x, global1.b.x), -2466 << (u_input.c % 32u), i32(-1) * -6054, abs(global1.b.x)), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(global2.c.b.x, global2.c.b.x, global2.c.b.x, global1.b.x)), vec4<i32>(global2.c.b.x, global2.e, global1.b.x, global1.b.x))));
    }
    global4 = arg_1.x;
    global2 = Struct_3(Struct_2(-2052.0, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global1.a, global1.a))), ~min(global1.b, vec3<i32>(1, global1.b.x, -2147483648)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b.a.x, global1.c.x, -269.0, -933.0) - vec4<f32>(global1.a.x, 283.0, 1918.0, 359.0))))), u_input.c), global2.b, global2.c, vec3<bool>(true, !global2.d.x, any(vec3<bool>(any(arg_1), arg_1.x, !false))), -12161);
    var var_0 = Struct_1(vec4<f32>(global2.a.b.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a.x, arg_2)) - _wgslsmith_f_op_f32(-arg_2)), -1005.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -365.0) * global1.c.x) * 2518.0), _wgslsmith_f_op_f32(max(-338.0, global2.c.a.x))), firstTrailingBit(global2.a.b.b), vec4<f32>(-1014.0, _wgslsmith_f_op_f32(round(392.0)), _wgslsmith_f_op_f32(exp2(427.0)), _wgslsmith_f_op_f32(abs(arg_2))));
    switch (14221) {
        case 0: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                global2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * var_0.a.x) - arg_2)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059.0, var_0.c.x, var_0.a.x, var_0.c.x)), global1.b | abs(vec3<i32>(32233, var_0.b.x, 2147483647)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2457.0, -1000.0, 1000.0, -739.0)) + vec4<f32>(801.0, global1.a.x, 787.0, global1.a.x))), arg_0.a.x), _wgslsmith_f_op_f32(max(-623.0, _wgslsmith_f_op_f32(-151.0 + -1025.0))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-509.0) - arg_2)), global2.a.b, select(select(!select(vec3<bool>(false, arg_1.x, global2.b), arg_1, false), vec3<bool>(any(vec3<bool>(arg_1.x, global2.d.x, arg_1.x)), arg_1.x, all(vec2<bool>(global2.d.x, arg_1.x))), vec3<bool>(global2.d.x, false && arg_1.x, true)), global2.d, global2.d.x), _wgslsmith_dot_vec2_i32(var_0.b.zz, -_wgslsmith_clamp_vec2_i32(~var_0.b.yx, var_0.b.yy, _wgslsmith_mult_vec2_i32(var_0.b.zx, global1.b.yz))));
                let var_1 = firstLeadingBit(-(~(-global2.c.b.x)));
                continue;
            }
            let var_1 = global2.a;
        }
        default: {
            global3 = select(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(abs(arg_0.a), arg_0.a), ~(~18340u) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.a.c, 3194u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 4294967295u, arg_0.a.x)) % 32u)), arg_0.a.x, select(!true, all(select(select(vec4<bool>(global2.b, global2.b, global2.b, false), vec4<bool>(arg_1.x, global2.d.x, arg_1.x, true), global2.b), vec4<bool>(global2.d.x, false, arg_1.x, global2.d.x), false)), false));
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var_0 = global2.c;
                global4 = true;
            }
            let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.c.a.xyz), _wgslsmith_f_op_vec3_f32(global1.c.www + var_0.a.wzz), global2.b))) - _wgslsmith_f_op_vec3_f32(round(global2.a.b.c.zwz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 772.0, -1000.0), vec3<f32>(-178.0, global2.c.c.x, -2577.0))) + vec3<f32>(-584.0, _wgslsmith_f_op_f32(var_0.c.x * global1.c.x), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(global2.c.a.yzw)), vec3<f32>(global2.a.a, -1000.0, var_0.a.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000.0, -685.0, -610.0))), !(!false)))), !arg_1.x));
        }
    }
    return _wgslsmith_sub_vec4_i32(~max(vec4<i32>(min(-2147483648, -1), _wgslsmith_sub_i32(-23173, var_0.b.x), var_0.b.x, _wgslsmith_mod_i32(global1.b.x, global2.a.b.b.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(global2.a.b.b, var_0.b), _wgslsmith_clamp_i32(var_0.b.x, -18516, global1.b.x), 16225 << (52327u % 32u), var_0.b.x)), abs(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b.x, 0, -7881, -39718), countOneBits(vec4<i32>(global2.a.b.b.x, global2.c.b.x, 0, 1))), ~(~var_0.b.x), -1, _wgslsmith_div_i32(abs(global1.b.x), -global1.b.x))));
}

fn func_4() -> i32 {
    global1 = Struct_1(global2.c.c, ~(~(~_wgslsmith_mod_vec3_i32(global2.a.b.b, vec3<i32>(25840, 1, 0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(722.0, -1352.0, 262.0, global2.a.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(758.0, 234.0, global2.c.a.x, global1.a.x), vec4<f32>(-1260.0, global2.a.b.c.x, global2.a.b.c.x, 591.0)))), !(!select(vec4<bool>(global2.d.x, true, true, global2.d.x), vec4<bool>(global2.d.x, true, false, true), false)))));
    var var_0 = 1u;
    for (var var_1 = 22709; var_1 != -2147483648; ) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            break;
        }
        var var_2 = countOneBits(-44334) < global1.b.x;
        switch (firstTrailingBit(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.x, 25057, -1, global1.b.x), vec4<i32>(global1.b.x, -1, global2.a.b.b.x, 30362)) ^ func_5(Struct_4(vec3<u32>(17329u, u_input.c, 4294967295u)), global2.d, 414.0)), ~reverseBits(max(vec4<i32>(global1.b.x, -31874, global2.a.b.b.x, global1.b.x), vec4<i32>(20156, 51716, -69161, global1.b.x)))))) {
            case -31562: {
                var_0 = ~firstLeadingBit(~abs(0u));
                global4 = global2.b;
                var var_3 = _wgslsmith_f_op_f32(exp2(global2.c.a.x));
                let var_4 = global2.a.b;
            }
            default: {
                break;
            }
        }
    }
    if (any(!global2.d)) {
        switch ((_wgslsmith_div_i32(global1.b.x, -1) >> (global2.a.c % 32u)) ^ abs(select(-global2.e, countOneBits(0), false))) {
            case 2147483647: {
                let var_1 = global1.c;
                var var_2 = global2.a;
                var var_3 = all(global2.d);
                let var_4 = reverseBits(vec3<u32>(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(56367u, global2.a.c), ~var_2.c), _wgslsmith_add_u32(54642u, min(var_2.c, global2.a.c)), 52815u), firstLeadingBit(45587u) ^ var_2.c));
                let var_5 = min(~(~vec4<u32>(var_4.x, _wgslsmith_dot_vec3_u32(var_4, var_4), firstLeadingBit(var_4.x), ~30591u)), ~vec4<u32>(_wgslsmith_sub_u32(var_2.c | var_4.x, 5116u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_4.x, u_input.c, 4294967295u, 83459u)), min(vec4<u32>(var_2.c, 4294967295u, global2.a.c, var_2.c), vec4<u32>(0u, 0u, 4294967295u, var_2.c))), 4294967295u, _wgslsmith_div_u32(var_2.c, var_4.x) ^ ~59397u));
            }
            case 0: {
                var var_1 = Struct_3(Struct_2(_wgslsmith_div_f32(-411.0, global1.a.x), global2.c, reverseBits(global2.a.c | 4294967295u)), all(select(global2.d, vec3<bool>(all(global2.d.yz), global2.b || global2.b, !true), !global2.d)), Struct_1(global1.c, global1.b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(245.0)), _wgslsmith_f_op_f32(f32(-1.0) * -462.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1947.0) - _wgslsmith_f_op_f32(f32(-1.0) * -453.0)), -765.0, -961.0)), select(select(global2.d, select(vec3<bool>(true, false, true), global2.d, global2.d), any(select(global2.d, global2.d, true))), select(vec3<bool>(global2.a.c == 0u, false, !global2.d.x), !global2.d, _wgslsmith_f_op_f32(global1.c.x + -150.0) < _wgslsmith_f_op_f32(round(global1.c.x))), any(select(select(vec4<bool>(true, false, global2.b, true), vec4<bool>(global2.b, global2.d.x, global2.d.x, global2.d.x), true), select(vec4<bool>(global2.d.x, global2.d.x, true, global2.d.x), vec4<bool>(false, false, global2.d.x, true), vec4<bool>(global2.d.x, global2.d.x, true, false)), global2.b))), ~0 ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.b.x, _wgslsmith_mod_i32(-32513, global2.c.b.x), global2.c.b.x, select(-25341, global1.b.x, true)), vec4<i32>(_wgslsmith_add_i32(-24593, global2.c.b.x), global2.e, 1 & global2.c.b.x, -39374)));
            }
            case 8830: {
                var var_1 = Struct_3(global2.a, false, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1113.0, global1.c.x, global2.c.c.x, 168.0) - vec4<f32>(global1.c.x, 761.0, 1647.0, global1.c.x)))), vec3<i32>(_wgslsmith_mult_i32(-2147483648, 0), global2.c.b.x, -15953), vec4<f32>(global2.c.c.x, -1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a.a, 2310.0))), global1.a.x)), select(global2.d, select(select(!vec3<bool>(true, global2.d.x, global2.d.x), vec3<bool>(global2.b, global2.d.x, global2.d.x), global2.b), vec3<bool>(!global2.b, true & false, !false), -2147483648 <= global1.b.x), true), 1);
                let var_2 = global2.c.b.x;
                let var_3 = false;
                global3 = reverseBits(_wgslsmith_clamp_u32(var_1.a.c, ~global2.a.c, global2.a.c));
                let var_4 = Struct_4(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(18943u, u_input.b, 4294967295u), vec3<u32>(174u, 1u, 20032u)), vec3<u32>(u_input.b, u_input.b, global2.a.c) ^ vec3<u32>(var_1.a.c, 1u, 15764u)) | (~(~vec3<u32>(global2.a.c, var_1.a.c, global2.a.c)) >> (vec3<u32>(_wgslsmith_div_u32(21254u, 71925u), select(var_1.a.c, 0u, var_3), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.c), vec3<u32>(51579u, 12474u, 18675u))) % vec3<u32>(32u))));
            }
            case -62316: {
                global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(global2.a.b.c.x, global2.a.b.a.x, -1010.0, global2.a.b.c.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.c.x, -237.0, -1530.0, -1547.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a, global2.a.b.a.x, global1.a.x, global2.c.c.x) * vec4<f32>(global2.c.a.x, global1.a.x, global2.c.c.x, -1124.0)))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.a.x)), global1.c.x, 988.0, _wgslsmith_f_op_f32(-1000.0 + 376.0)))), countOneBits(_wgslsmith_div_vec3_i32(select(~global1.b, vec3<i32>(2147483647, -2147483648, global2.e), !global2.b), global2.c.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global2.c.c + global2.c.a), vec4<f32>(536.0, global1.c.x, -1152.0, -1061.0))), global2.a.b.a)) + global1.c));
            }
            default: {
                let var_1 = global2.a;
                let var_2 = select(select(select(select(!vec4<bool>(global2.b, global2.d.x, global2.d.x, true), !vec4<bool>(global2.d.x, false, false, global2.d.x), global2.b), select(select(vec4<bool>(global2.d.x, false, false, false), vec4<bool>(global2.b, global2.d.x, global2.b, true), true), vec4<bool>(true, global2.b, global2.d.x, global2.d.x), false), !select(vec4<bool>(global2.d.x, global2.b, false, global2.b), vec4<bool>(global2.d.x, global2.d.x, true, false), vec4<bool>(global2.d.x, true, global2.d.x, false))), select(vec4<bool>(true, any(global2.d), global2.b, true & global2.d.x), !(!vec4<bool>(global2.b, global2.b, global2.d.x, false)), global2.d.x), vec4<bool>(!(global1.c.x < -935.0), all(vec2<bool>(global2.b, global2.b)), !all(vec4<bool>(true, global2.b, false, false)), any(select(vec2<bool>(global2.d.x, true), vec2<bool>(global2.d.x, true), global2.d.zz)))), !select(select(vec4<bool>(false, global2.d.x, global2.b, global2.d.x), !vec4<bool>(global2.b, true, true, true), global2.d.x), select(select(vec4<bool>(global2.d.x, global2.b, true, global2.d.x), vec4<bool>(global2.d.x, true, global2.b, global2.b), global2.b), !vec4<bool>(false, global2.b, true, false), vec4<bool>(false, global2.d.x, global2.d.x, global2.d.x)), vec4<bool>(true, u_input.b <= global2.a.c, !false, !global2.d.x)), !true);
                let var_3 = global1.b.yx;
            }
        }
        let var_1 = min(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, global2.a.c) ^ vec2<u32>(global2.a.c, 37907u)), min(~vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(u_input.a, 25568u)) << ((vec2<u32>(4294967295u, global2.a.c) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(17646u, u_input.b), vec2<u32>(u_input.b, global2.a.c))) % vec2<u32>(32u))), countOneBits(_wgslsmith_mod_vec2_u32(~max(vec2<u32>(global2.a.c, 0u), vec2<u32>(1u, 0u)), vec2<u32>(u_input.c, abs(u_input.c)))));
        for (; select(!global2.d.x, global2.b, true); ) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            global2 = Struct_3(global2.a, global2.d.x, global2.c, global2.d, global2.a.b.b.x);
            let var_2 = vec3<i32>(16857, _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, -2147483648, global2.c.b.x, global1.b.x) | vec4<i32>(global1.b.x, -1, 2147483647, 9168), vec4<i32>(global1.b.x, global1.b.x, 15877, global2.a.b.b.x) & vec4<i32>(global2.a.b.b.x, -24437, global1.b.x, global1.b.x)), countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(global1.b.x, -2147483648, global2.e, global2.c.b.x), -vec4<i32>(global2.c.b.x, 2147483647, global1.b.x, global1.b.x)))), 1);
            let var_3 = global2.d.x;
        }
        let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global2.a.b.c + _wgslsmith_f_op_vec4_f32(-global1.c)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1021.0)), global1.c.x, global1.c.x, global1.a.x))), global1.b | global2.a.b.b, _wgslsmith_f_op_vec4_f32(abs(global1.a)));
        let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000.0, global1.a.x, var_2.a.x)))))));
    }
    for (var var_1 = 0; !false; var_1 -= 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    return firstLeadingBit(-10342);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))));
    }
    let var_0 = select(-(-firstTrailingBit(global2.e) ^ -func_4()), 1, true);
    global4 = select(!(!true), !(!(!any(vec2<bool>(global2.b, true)))), true);
    let var_1 = global2.a;
    return _wgslsmith_f_op_f32(f32(-1.0) * -708.0);
}

fn func_7(arg_0: Struct_5) -> Struct_2 {
    let var_0 = 4294967295u;
    for (var var_1 = -1; _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -1631.0))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - 1396.0) * global1.c.x))); var_1 += 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        var var_2 = Struct_3(global2.a, global2.b, global2.a.b, !(!global2.d), ~_wgslsmith_clamp_i32(global1.b.x, 0, ~(-2147483648 >> (0u % 32u))));
        return Struct_2(_wgslsmith_f_op_f32(max(global2.c.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(698.0)))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2255.0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.a.a - 1205.0))), -327.0), -vec3<i32>(-54937, _wgslsmith_sub_i32(-33397, var_2.e), abs(var_2.e)), _wgslsmith_f_op_vec4_f32(-global2.c.a)), 4294967295u);
    }
    global4 = select(global1.b.x != global2.c.b.x, !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, global2.b, global2.b), global2.d.x)), any(!(!vec3<bool>(global2.b, global2.b, global2.b))));
    global0 = 4294967295u;
    global0 = min(global2.a.c, ~4294967295u);
    return global2.a;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    global2 = Struct_3(func_7(Struct_5(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec2<u32>(30695u, 17622u))), -638.0, _wgslsmith_f_op_f32(floor(-1549.0))))), global2.b, global2.a.b, select(vec3<bool>(false, global2.b, !all(global2.d)), vec3<bool>(!(!false), global2.b, global2.b), all(!global2.d)), abs(_wgslsmith_mult_i32(func_5(Struct_4(vec3<u32>(43171u, global2.a.c, 1u)), !vec3<bool>(false, true, global2.d.x), 228.0).x, countOneBits(0))));
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        switch (~(-1)) {
            case -29103: {
                break;
            }
            default: {
                let var_0 = _wgslsmith_f_op_f32(-455.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2141.0) - -808.0)));
            }
        }
        let var_0 = Struct_2(_wgslsmith_f_op_f32(-1000.0), global2.a.b, func_6());
    }
    let var_0 = global1.c.www;
    global4 = global2.b;
    if (global2.d.x) {
        var var_1 = global2.c.b;
        var var_2 = select(vec4<bool>(false, any(global2.d), !(!global2.b && global2.d.x), all(!select(vec4<bool>(global2.b, global2.b, true, global2.d.x), vec4<bool>(false, true, false, global2.d.x), global2.b))), vec4<bool>(select(true, global2.d.x, true), global2.b, global2.d.x, !(!true)), vec4<bool>(!any(global2.d), !(!(global2.b && global2.d.x)), !all(!vec4<bool>(true, true, true, global2.d.x)), _wgslsmith_f_op_f32(exp2(575.0)) <= 1000.0));
        for (var var_3 = 1; var_3 > -52163; global3 = global2.a.c) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            global3 = 10027u >> (abs(~(~min(arg_0, arg_0))) % 32u);
        }
    }
    return -(i32(-1) * -11232);
}

fn func_1(arg_0: Struct_5, arg_1: i32) -> u32 {
    switch (-arg_1) {
        case 17263: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var var_0 = 0 & (_wgslsmith_dot_vec4_i32(~(-vec4<i32>(arg_1, global2.c.b.x, arg_1, global2.e)), vec4<i32>(-2147483648, -2159, 2147483647, func_2(1u, 55549u, vec4<i32>(1, -2147483648, global2.c.b.x, 53950)))) & ~(-_wgslsmith_mult_i32(global1.b.x, 3164)));
                var_0 = global2.a.b.b.x;
                let var_1 = vec3<u32>(~max(~global2.a.c, 37053u), ~u_input.c, 5646u ^ u_input.a);
                continue;
            }
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var var_0 = func_7(arg_0).b;
                let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, var_0.c.x, global1.c.x), var_0.c.xxx, true)) + vec3<f32>(global1.a.x, -423.0, var_0.c.x))))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-881.0 - global2.a.b.a.x), 262.0, _wgslsmith_f_op_f32(trunc(569.0))), arg_0.a)));
                let var_2 = Struct_2(530.0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.b.a + _wgslsmith_f_op_vec4_f32(global2.a.b.c * vec4<f32>(var_1.x, global1.c.x, global1.c.x, 363.0)))), ~vec3<i32>(global1.b.x, _wgslsmith_clamp_i32(global2.a.b.b.x, var_0.b.x, global1.b.x), arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1.a, vec4<f32>(var_1.x, 1103.0, -909.0, global1.c.x)))) + var_0.c)), _wgslsmith_div_u32(73167u, ~18366u));
            }
            let var_0 = Struct_5(global1.a.ywx);
            switch (i32(-1) * -77341) {
                default: {
                }
            }
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                let var_1 = abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-36240, global1.b.x, -33270) << (abs(~vec3<u32>(u_input.b, global2.a.c, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(-vec3<i32>(-1, 0, global2.a.b.b.x), reverseBits(func_7(var_0).b.b)), global2.a.b.b));
            }
        }
        default: {
            var var_0 = firstLeadingBit(abs(11816u));
            var var_1 = 1133.0;
        }
    }
    for (var var_0 = 1; all(select(vec4<bool>(!true, !(!false), any(select(global2.d.zx, global2.d.zz, global2.d.x)), global2.d.x), select(vec4<bool>(arg_0.a.x == -1101.0, !false, false, global1.c.x == global2.a.a), select(!vec4<bool>(global2.d.x, global2.b, true, true), !vec4<bool>(global2.b, global2.b, global2.d.x, true), !true), all(!global2.d)), global2.d.x & (select(global2.b, true, false) != !global2.d.x))); var_0 += 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
    }
    let var_0 = global2.c.a.ww;
    global0 = 1u;
    var var_1 = all(!select(select(!vec4<bool>(true, global2.b, global2.d.x, false), !vec4<bool>(global2.b, global2.b, global2.d.x, false), select(global2.b, true, global2.d.x)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), _wgslsmith_f_op_f32(ceil(global1.a.x)) == _wgslsmith_f_op_f32(-global1.a.x)));
    return select(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.c, global2.a.c, 28685u, 1u) >> (vec4<u32>(u_input.c, u_input.c, 70963u, 93624u) % vec4<u32>(32u))) | reverseBits(~vec4<u32>(37560u, global2.a.c, global2.a.c, u_input.c)), ~(~(vec4<u32>(u_input.a, 0u, global2.a.c, 1u) | vec4<u32>(u_input.a, 31322u, 12859u, 30209u)))), max(select(global2.a.c ^ ~0u, firstLeadingBit(abs(global2.a.c)), global2.a.c >= reverseBits(54205u)), abs(~4294967295u) & u_input.a), any(global2.d.yy));
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = -2147483648; ; var_0 += 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        global0 = _wgslsmith_clamp_u32(abs(u_input.a), _wgslsmith_sub_u32(global2.a.c, global2.a.c) >> (~(func_1(Struct_5(global1.c.wwz), 4996) << (_wgslsmith_add_u32(global2.a.c, 15050u) % 32u)) % 32u), firstTrailingBit(global2.a.c));
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        }
        var var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(abs(abs(vec3<u32>(1u, 4294967295u, 30174u)))), max(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.a.c, global2.a.c, global2.a.c), firstLeadingBit(vec3<u32>(60179u, 0u, 36139u))), vec3<u32>(abs(56815u), 1u, ~u_input.a)), max(~vec3<u32>(57950u, 19954u, u_input.c), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 18704u, global2.a.c), vec3<u32>(1u, global2.a.c, 0u)))), ~(~(~(~vec3<u32>(4294967295u, global2.a.c, 10422u)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~func_1(Struct_5(vec3<f32>(-658.0, 750.0, -604.0)), 1), ~u_input.b, u_input.b >> ((u_input.c << (u_input.c % 32u)) % 32u)), ~(vec3<u32>(global2.a.c, u_input.c, global2.a.c) & vec3<u32>(53645u, u_input.c, global2.a.c)) & ~firstTrailingBit(vec3<u32>(u_input.b, global2.a.c, 0u)), ~select(vec3<u32>(u_input.b, 1u, 62410u) & vec3<u32>(0u, 93269u, global2.a.c), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, global2.a.c, global2.a.c), vec3<u32>(global2.a.c, 2971u, global2.a.c)), vec3<bool>(global2.d.x, true, false))));
        var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-global2.c.a.wzw));
        global4 = _wgslsmith_mult_i32(-max(global1.b.x, 28026), 10754) < global1.b.x;
    }
    for (var var_0 = i32(-1) * -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(2147483647, -1146), countOneBits(44267), -1, countOneBits(-18058)), max(vec4<i32>(global2.c.b.x, 68682, 1, -5400), vec4<i32>(global2.e, 1, global1.b.x, global2.a.b.b.x))); all(vec4<bool>(true, global2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000.0 * 150.0), global1.c.x)) > _wgslsmith_f_op_f32(func_3(vec2<u32>(global2.a.c, global2.a.c))), select(any(vec3<bool>(global2.d.x, global2.b, true)), global2.b, any(select(vec4<bool>(true, true, global2.b, true), vec4<bool>(true, true, true, true), vec4<bool>(global2.d.x, false, global2.d.x, true)))))); global4 = true) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        global0 = reverseBits(~_wgslsmith_clamp_u32(u_input.c, global2.a.c, global2.a.c));
        break;
    }
    var var_0 = !(all(!vec4<bool>(global2.b, true, true, global2.b)) && (global2.a.a <= 1274.0)) | all(global2.d);
    if (!false) {
        for (var var_1 = 0; global2.a.b.c.x >= 139.0; var_1 -= 1) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            var var_2 = ~u_input.c;
            var var_3 = select(select(select(!(!vec4<bool>(true, true, true, global2.b)), vec4<bool>(!false, false, !global2.b, global2.d.x), !select(vec4<bool>(false, true, global2.d.x, true), vec4<bool>(global2.d.x, true, global2.d.x, true), vec4<bool>(true, true, true, global2.d.x))), select(select(select(vec4<bool>(false, global2.b, global2.b, true), vec4<bool>(global2.d.x, true, false, global2.d.x), vec4<bool>(global2.b, false, true, false)), vec4<bool>(global2.b, global2.d.x, global2.d.x, global2.b), !vec4<bool>(global2.b, global2.b, global2.b, global2.d.x)), select(vec4<bool>(global2.d.x, true, false, global2.b), select(vec4<bool>(true, global2.d.x, true, global2.d.x), vec4<bool>(global2.b, false, true, global2.b), vec4<bool>(global2.d.x, false, global2.d.x, false)), !vec4<bool>(true, global2.d.x, true, true)), select(!vec4<bool>(false, false, global2.b, global2.b), select(vec4<bool>(global2.b, global2.b, false, global2.d.x), vec4<bool>(global2.b, global2.b, true, false), global2.b), vec4<bool>(true, global2.b, true, global2.b))), vec4<bool>(all(vec3<bool>(false, global2.b, global2.b)), true, global2.b, ~u_input.b <= ~15948u)), select(vec4<bool>(global2.d.x, global2.b, true, !global2.b), select(vec4<bool>(any(vec2<bool>(global2.b, false)), 2147483647 == global1.b.x, global2.b, false == global2.b), select(!vec4<bool>(true, true, global2.b, global2.b), vec4<bool>(global2.d.x, true, true, false), !false), !vec4<bool>(false, global2.d.x, global2.b, global2.d.x)), global2.b), all(!vec2<bool>(any(global2.d.xy), !global2.d.x)));
            break;
        }
        var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.b.a - _wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(_wgslsmith_f_op_f32(select(111.0, global1.a.x, true)), global2.c.a.x, 235.0, _wgslsmith_f_op_f32(global1.c.x - 189.0)))));
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        for (var var_1 = 1; ; var_1 += 1) {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            global1 = func_7(Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(global1.a.zyy)), vec3<f32>(115.0, global2.c.c.x, 136.0), global2.d)) * global2.c.c.zzy))).b;
            break;
        }
    }
    switch (func_5(Struct_4(abs(vec3<u32>(global2.a.c, 35218u, 22813u)) >> (abs(vec3<u32>(global2.a.c, u_input.c, u_input.a)) % vec3<u32>(32u))), select(vec3<bool>(any(global2.d.xy), false, !global2.d.x), global2.d, vec3<bool>(global2.b, all(vec4<bool>(false, global2.d.x, false, false)), any(vec2<bool>(global2.b, true)))), -1670.0).x >> (_wgslsmith_sub_u32((global2.a.c | ~0u) & firstTrailingBit(4294967295u), func_1(Struct_5(_wgslsmith_f_op_vec3_f32(-global2.a.b.a.zwz)), global2.a.b.b.x)) % 32u)) {
        case 0: {
            var var_1 = Struct_4(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, 73014u, u_input.a, 43630u), vec4<u32>(u_input.b, u_input.a, 0u, 4294967295u), false), abs(vec4<u32>(0u, u_input.a, u_input.c, global2.a.c)) >> (~vec4<u32>(4294967295u, u_input.c, u_input.a, u_input.b) % vec4<u32>(32u))), 23139u));
            for (var var_2: i32; ; global3 = max(0u, 4294967295u)) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            }
            let var_2 = global2.c;
            let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global2.c.c.x, -964.0))))))));
        }
        default: {
            switch (25352) {
                case -2147483648: {
                    return;
                }
                default: {
                    var var_1 = global2.d.x;
                }
            }
            global0 = u_input.a;
            let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_7(Struct_5(vec3<f32>(global1.c.x, 572.0, 1252.0))).b.a))), func_5(Struct_4(vec3<u32>(~36576u, ~global2.a.c, ~0u)), !select(select(global2.d, global2.d, vec3<bool>(true, false, global2.d.x)), global2.d, global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1051.0))))).xzw, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(493.0, global2.a.a, 276.0, 301.0), vec4<f32>(-806.0, 300.0, 530.0, global2.a.b.a.x)))))));
            let var_2 = Struct_4(_wgslsmith_add_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(global2.a.c, global2.a.c, 3578u))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, global2.a.c, 25937u) & vec3<u32>(global2.a.c, 1u, 0u), ~vec3<u32>(56509u, u_input.a, 0u)) << (select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a.c, 51484u, 1u), vec3<u32>(global2.a.c, u_input.b, 49073u), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(1u, global2.a.c, 48901u), all(vec3<bool>(global2.b, false, false))) % vec3<u32>(32u))));
            if (abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(44564, -32537 | global2.a.b.b.x), var_1.b.x | global1.b.x)) >= min(min(global1.b.x, global1.b.x), var_1.b.x)) {
                global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(-136.0, global2.c.a.x, 1817.0, var_1.c.x), vec4<f32>(var_1.c.x, -445.0, 509.0, global1.c.x)), true)))), ~vec3<i32>(global2.c.b.x, _wgslsmith_mult_i32(abs(var_1.b.x), -3100), ~global1.b.x << (u_input.b % 32u)), func_7(Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, var_1.a.x, global1.c.x) * var_1.a.zww)))).b.c);
                var var_3 = min(vec2<u32>(~_wgslsmith_dot_vec2_u32(max(var_2.a.yz, vec2<u32>(var_2.a.x, global2.a.c)), vec2<u32>(global2.a.c, var_2.a.x)), ~(0u ^ var_2.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(67322u, 4294967295u), ~(~var_2.a.zx)));
                global0 = ~var_2.a.x | ~_wgslsmith_dot_vec3_u32(var_2.a, var_2.a);
            }
        }
    }
    global3 = 0u >> (global2.a.c % 32u);
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        global2 = Struct_3(global2.a, all(select(global2.d, vec3<bool>(global1.b.x >= 2147483647, all(global2.d.zy), !false), !select(vec3<bool>(global2.d.x, true, global2.d.x), vec3<bool>(global2.d.x, global2.d.x, true), global2.d.x))), func_7(Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-344.0, 561.0, -1120.0) - vec3<f32>(-325.0, global1.a.x, global1.a.x))))).b, vec3<bool>(!(_wgslsmith_div_f32(1523.0, global1.c.x) == _wgslsmith_f_op_f32(step(global1.a.x, -150.0))), all(!global2.d), !false), _wgslsmith_sub_i32(-(~min(global1.b.x, 1)), global2.c.b.x));
        for (var var_1: i32; ; var_1 += 1) {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            global4 = true;
            continue;
        }
        global2 = Struct_3(func_7(Struct_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -388.0), _wgslsmith_f_op_f32(step(global2.c.a.x, global2.c.c.x)), 335.0))), false, func_7(Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a.b.a.wwy - global2.a.b.c.www)))).b, select(vec3<bool>(global2.d.x, !global2.d.x, true), select(global2.d, !global2.d, !(!vec3<bool>(false, global2.d.x, false))), select(global2.d, vec3<bool>(global2.d.x, global2.d.x, global2.b), all(!global2.d.xz))), 1);
    }
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1) * -23722, _wgslsmith_sub_u32(5093u, 0u));
}

