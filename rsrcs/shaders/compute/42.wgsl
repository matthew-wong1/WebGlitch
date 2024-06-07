// {"0:0":[42,47,135,209,11,59,17,236,10,8,232,252,79,98,77,199,246,91,144,217,211,27,231,185,118,172,116,167,13,235,120,85,72,56,68,241,52,97,36,16,107,15,252,185,198,114,157,77,205,255,139,188,76,190,38,126,159,5,5,171,53,229,2,136]}
// Seed: 11015178066832728675

struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> LOOP_COUNTERS: array<u32, 31>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn func_6() -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310.0 - 484.0))), _wgslsmith_f_op_f32(sign(-598.0))));
    if (true | false) {
        let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-923.0, 724.0, 985.0, -2140.0))))), _wgslsmith_f_op_f32(-258.0) < 1980.0, abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, 48654u, 85847u, 11055u), firstLeadingBit(vec4<u32>(u_input.e, u_input.b, 0u, u_input.d.x)))) << (vec4<u32>(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_mult_u32(u_input.e, u_input.b)), max(firstLeadingBit(6662u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.d.x), vec3<u32>(64373u, 1u, 1u))), ~(~0u), ~0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-173.0, -3001.0, 267.0, 917.0)))))));
        for (var var_1 = -25155; var_1 <= 0; var_1 += 1) {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        }
        for (var var_1 = -2147483648; var_1 > -15769; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            let var_2 = 4294967295u;
            var_1 = 14249;
            global0 = -559.0;
        }
        let var_1 = ~var_0.c.ywy;
        for (; ; ) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            break;
        }
    }
    var var_0 = Struct_4(any(!(!vec4<bool>(false, false, true, false))), ~(-u_input.c.zz));
    let var_1 = ~u_input.d.x;
    for (var var_2 = -2147483648; var_2 > 96707; var_2 += 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        switch (var_0.b.x) {
            case -18974: {
            }
            case -54022: {
                var_0 = Struct_4(all(vec3<bool>(any(vec3<bool>(true, false, var_0.a)), true, true)), abs(var_0.b) | _wgslsmith_sub_vec2_i32(var_0.b, firstTrailingBit(~vec2<i32>(u_input.c.x, -28159))));
                continue;
            }
            case -16696: {
            }
            case -17622: {
                var var_3 = _wgslsmith_add_i32(var_0.b.x, 33796 ^ var_0.b.x);
                var var_4 = Struct_5(15556u & 4294967295u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(798.0, 521.0))) + -1350.0), vec3<i32>(i32(-1) * -37790, -26114 | var_0.b.x, -var_0.b.x) >> (vec3<u32>(u_input.b, ~1u, countOneBits(var_1)) % vec3<u32>(32u)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) != -1000.0, true, true | any(vec2<bool>(false, var_0.a)), _wgslsmith_dot_vec3_i32(u_input.a.wyx, u_input.c.xxz) <= 2147483647), -1000.0, vec2<bool>(select(!var_0.a, -240.0 > -1692.0, all(vec3<bool>(true, false, false))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(710.0)) * 1158.0))), 475.0, _wgslsmith_f_op_vec4_f32(vec4<f32>(2067.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -2292.0) - _wgslsmith_f_op_f32(1608.0 + -689.0)), -1151.0, 765.0) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -240.0), 1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(886.0 - 457.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(233.0, 555.0)) * _wgslsmith_f_op_f32(min(1000.0, 1257.0))))));
                let var_5 = ~(-select((vec3<i32>(u_input.a.x, var_4.b.b.x, u_input.a.x) | u_input.a.xxx) ^ -u_input.c.zyy, firstLeadingBit(~vec3<i32>(1, -2147483648, 12362)), vec3<bool>(var_0.a, !true, !true)));
                continue;
            }
            default: {
                var_2 = 5;
                global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-912.0, -2275.0, var_0.a)), _wgslsmith_f_op_f32(min(1422.0, -698.0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-838.0 + -356.0), 288.0, 32095u >= 4326u)), 832.0))));
            }
        }
        break;
    }
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1355.0 + 1200.0)))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        for (var var_0: i32; 1u <= reverseBits(_wgslsmith_div_u32(9609u, max(_wgslsmith_clamp_u32(1u, arg_2.x, 63208u), arg_2.x))); var_0 -= 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            break;
        }
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            let var_0 = true;
            global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -813.0) * 1728.0);
        }
    }
    global0 = _wgslsmith_f_op_f32(func_6());
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2133.0)))))), -(~vec3<i32>(-25373, firstLeadingBit(arg_3), _wgslsmith_mod_i32(arg_0.x, 3252))), vec4<bool>(true, true, all(vec4<bool>(!false, false, arg_1.x >= arg_0.x, true)), true || !(!false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-572.0) + 1288.0) * _wgslsmith_f_op_f32(step(1678.0, 312.0)))), !select(!vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !(!vec2<bool>(false, false))));
        for (var var_1: i32; any(!vec3<bool>(var_0.e.x, var_0.e.x & false, var_0.e.x)) || all(var_0.c); global0 = 1386.0) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            global0 = var_0.a;
        }
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            continue;
        }
    }
    switch (-8054) {
        case -1: {
            global0 = _wgslsmith_f_op_f32(-531.0);
        }
        default: {
            let var_0 = Struct_4(all(vec2<bool>(true | true, true)), vec2<i32>(~u_input.a.x & _wgslsmith_clamp_i32(arg_3, arg_0.x, -arg_0.x), _wgslsmith_dot_vec2_i32(arg_1.wz, vec2<i32>(15299, u_input.a.x))));
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -184.0)))))));
            var var_1 = select(vec3<bool>(!var_0.a, !true || false, false), vec3<bool>(any(select(vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a)) & (_wgslsmith_dot_vec2_i32(vec2<i32>(0, 1), vec2<i32>(var_0.b.x, u_input.c.x)) >= min(arg_0.x, 1)), true, false), !(!vec3<bool>(!var_0.a, !true, !true)));
            var var_2 = !vec2<bool>(false, true);
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                break;
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
    }
    return _wgslsmith_f_op_f32(f32(-1.0) * -577.0);
}

fn func_4() -> i32 {
    let var_0 = false;
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        continue;
    }
    global0 = 584.0;
    let var_1 = vec3<bool>(var_0, !any(vec3<bool>(var_0, true, all(vec4<bool>(false, var_0, var_0, var_0)))), var_0);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(select(vec3<i32>(46332, u_input.a.x, u_input.c.x), u_input.c.wwx, vec3<bool>(var_0, var_1.x, var_1.x)), ~vec4<i32>(u_input.c.x, -2147483648, u_input.a.x, u_input.c.x), firstLeadingBit(vec4<u32>(1u, 47818u, 0u, u_input.e)), reverseBits(0)))))) - -553.0);
    return -31483;
}

fn func_3() -> bool {
    let var_0 = reverseBits(4294967295u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1634.0), _wgslsmith_f_op_f32(1000.0 + 1224.0)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-786.0)))));
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_1 = ~(~vec4<u32>(_wgslsmith_div_u32(u_input.b, 0u), 16042u ^ var_0, 0u, abs(4294967295u)) >> (~(~(vec4<u32>(var_0, var_0, 350u, u_input.b) >> (vec4<u32>(13865u, 51283u, u_input.d.x, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
        let var_2 = func_4();
        let var_3 = 1u;
        var var_4 = all(vec2<bool>(false, true)) || (!all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)) & any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))));
    }
    for (var var_1 = 24304; true; var_1 += 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        var var_2 = vec2<i32>(~((u_input.a.x >> (~var_0 % 32u)) >> (abs(~u_input.e) % 32u)), -8351);
        switch (_wgslsmith_div_i32(_wgslsmith_mod_i32(-13571 | var_2.x, -32580 ^ 2147483647), _wgslsmith_div_i32(~u_input.a.x >> (_wgslsmith_add_u32(var_0, 56311u) % 32u), 2147483647)) & _wgslsmith_mod_i32(firstTrailingBit(-37670) >> (~1u % 32u), u_input.c.x)) {
            default: {
                var_1 = ~(-u_input.a.x << (u_input.b % 32u));
            }
        }
        for (var var_3: i32; var_3 <= 17515; var_3 -= 1) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            let var_4 = vec3<f32>(-155.0, _wgslsmith_div_f32(502.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482.0 + -270.0)) - _wgslsmith_f_op_f32(-794.0 * _wgslsmith_f_op_f32(-860.0)))), -911.0);
            var var_5 = _wgslsmith_mod_i32(0, -u_input.c.x);
        }
    }
    for (var var_1 = 65480; ; var_1 -= 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        var var_2 = select(abs(min(0, -2147483648)), u_input.a.x, any(!select(!vec2<bool>(true, true), vec2<bool>(false, false), !true)));
        let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(-290.0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-952.0), 881.0)), -893.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-170.0 - -193.0) - _wgslsmith_f_op_f32(func_5(u_input.a.ywx, u_input.c, vec4<u32>(var_0, 1u, 27340u, 1u), 1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(456.0, -1626.0)) + 276.0)) == _wgslsmith_f_op_f32(f32(-1.0) * -796.0), _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, var_0, u_input.d.x, u_input.d.x)), firstLeadingBit(vec4<u32>(var_0, var_0, 0u, 0u)) & firstTrailingBit(vec4<u32>(var_0, var_0, 0u, 1u))) ^ vec4<u32>(_wgslsmith_div_u32(1u, 100741u), ~(~30750u), _wgslsmith_div_u32(~var_0, ~91188u), ~(~1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1000.0 * -665.0), _wgslsmith_f_op_f32(-307.0 - 176.0), -980.0, _wgslsmith_f_op_f32(326.0 * -385.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(187.0, 234.0, 1927.0, -2242.0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1960.0, 1263.0, -642.0, 407.0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(414.0, -717.0, -776.0, 283.0)))))));
        break;
    }
    return any(select(vec3<bool>(select(false & true, true || false, any(vec3<bool>(true, false, false))), !(!true), all(!vec2<bool>(false, true))), select(vec3<bool>(all(vec4<bool>(false, true, false, true)), !true, all(vec4<bool>(false, false, true, false))), !(!vec3<bool>(true, true, true)), (var_0 == 4294967295u) || any(vec4<bool>(false, false, true, false))), -(~u_input.a.x) < -u_input.a.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec4<u32> {
    for (var var_0 = -43741; true; var_0 -= 1) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(f32(-1.0) * -493.0)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)), false)) - -1000.0));
    switch (-40565) {
        case -23917: {
            for (var var_0 = 2147483647; !all(!vec3<bool>(!true, 859.0 > 571.0, !false)); var_0 += 1) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(231.0 - -214.0), _wgslsmith_f_op_f32(793.0 + -667.0)))), u_input.a.xxy, !(!vec4<bool>(false | true, 43521 == u_input.a.x, all(vec3<bool>(false, true, false)), false)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * _wgslsmith_f_op_f32(f32(-1.0) * -1678.0))))), vec2<bool>(!func_3(), true));
            }
            switch (reverseBits(u_input.c.x)) {
                case -2147483648: {
                    global0 = _wgslsmith_f_op_f32(-arg_0.x);
                    return ~abs(abs(vec4<u32>(0u, _wgslsmith_mult_u32(u_input.b, u_input.b), 27948u, 40107u)));
                }
                case 1: {
                    global0 = _wgslsmith_f_op_f32(-arg_1.x);
                    return countOneBits(~countOneBits(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(68256u, 35719u, u_input.b, 1u), vec4<u32>(19282u, 1u, u_input.b, u_input.e)))));
                }
                case 13910: {
                }
                case 2147483647: {
                    global0 = 1900.0;
                    let var_0 = arg_1.x;
                    var var_1 = Struct_1(arg_0.x, vec3<i32>(_wgslsmith_mult_i32(-27990, u_input.c.x), 2147483647, ~(~reverseBits(-1))), !(!select(vec4<bool>(true, true, false, false), !vec4<bool>(false, false, false, false), any(vec3<bool>(true, false, true)))), 1512.0, !vec2<bool>(false, any(!vec3<bool>(true, true, true))));
                }
                default: {
                }
            }
        }
        case -42486: {
            let var_0 = Struct_3(u_input.a);
            var var_1 = Struct_5(_wgslsmith_sub_u32(max(76938u, _wgslsmith_div_u32(u_input.e ^ u_input.e, 38064u)), u_input.e), Struct_1(-334.0, -(~vec3<i32>(-2147483648, var_0.a.x, var_0.a.x)) ^ u_input.c.yyy, select(!vec4<bool>(false, false, false, true), vec4<bool>(true | true, true & false, !true, u_input.c.x <= u_input.c.x), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false == false)), -2430.0, select(!(!vec2<bool>(true, true)), select(!vec2<bool>(true, false), vec2<bool>(false, true), all(vec4<bool>(false, false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec3<bool>(false, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_1.x, arg_1);
            var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.e), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1351.0), _wgslsmith_f_op_f32(-573.0), _wgslsmith_div_f32(arg_1.x, var_1.d), -168.0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, var_1.c, -471.0, arg_0.x), vec4<f32>(arg_1.x, arg_1.x, arg_0.x, arg_1.x))))))), true, vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, 1u, var_1.a, u_input.b), abs(vec4<u32>(4294967295u, 1u, var_1.a, 40734u))), ~vec4<u32>(0u, u_input.d.x, 15826u, 4294967295u)), 0u, ~_wgslsmith_div_u32(max(1u, var_1.a), firstLeadingBit(84917u)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.a, var_1.a, var_1.a, 0u), vec4<u32>(var_1.a, u_input.d.x, u_input.b, 2690u), var_1.b.c.x) ^ ~vec4<u32>(u_input.e, var_1.a, 24185u, u_input.e), vec4<u32>(8924u, _wgslsmith_mult_u32(var_1.a, u_input.b), firstTrailingBit(4294967295u), ~u_input.e))), vec4<f32>(1539.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1557.0), _wgslsmith_f_op_f32(sign(var_1.b.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(203.0, arg_0.x)) + _wgslsmith_f_op_f32(-1418.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617.0)))));
            global0 = var_2.d.x;
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                let var_3 = Struct_2(var_2.d, func_3(), reverseBits(vec4<u32>(var_2.c.x, countOneBits(0u), var_1.a, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, var_1.a)), vec2<u32>(u_input.b, var_1.a)))), var_1.e);
                continue;
            }
        }
        case 14077: {
        }
        default: {
            global0 = arg_1.x;
        }
    }
    let var_0 = 1;
    for (var var_1: i32; all(!(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))))); var_1 -= 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        let var_2 = ~(countOneBits(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, u_input.b, 4294967295u), vec3<u32>(u_input.e, u_input.d.x, 0u), vec3<u32>(u_input.d.x, 0u, 19956u)), vec3<u32>(u_input.b, u_input.d.x, 56731u) & vec3<u32>(u_input.e, 0u, 0u))) >> (vec3<u32>(~1u, 4294967295u, u_input.d.x) % vec3<u32>(32u)));
        let var_3 = -2147483647;
        var var_4 = abs(var_2.x) << (47474u % 32u);
    }
    return abs(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.e, u_input.e, 27971u), max(vec4<u32>(1u, u_input.e, 1u, u_input.d.x), vec4<u32>(u_input.b, u_input.e, 0u, 66369u)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool) -> bool {
    switch (firstTrailingBit(min(-arg_1.b.x, -_wgslsmith_mult_i32(-2147483648, -arg_1.b.x)))) {
        case 2147483647: {
            let var_0 = ~(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1482.0, -719.0, 757.0)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-641.0, 946.0, -1154.0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1993.0, 1236.0, -468.0, 1911.0), vec4<f32>(-1236.0, 2615.0, -888.0, 1187.0))))) | firstTrailingBit(~vec4<u32>(u_input.e, u_input.b, 0u, 1u)));
        }
        case -2147483648: {
            let var_0 = select(!vec2<bool>(true, any(vec3<bool>(false, true, arg_1.a)) | (773.0 < -1550.0)), select(!(!(!vec2<bool>(false, arg_1.a))), vec2<bool>(arg_2, arg_2), arg_2), any(!vec2<bool>(all(vec2<bool>(arg_2, arg_2)), arg_1.a)));
            let var_1 = arg_0;
            switch (countOneBits(arg_0.a.x) << (u_input.d.x % 32u)) {
                case -670: {
                    let var_2 = Struct_5(~abs(_wgslsmith_mod_u32(1u | 4294967295u, u_input.e)), Struct_1(292.0, reverseBits(-u_input.c.xzw << (~vec3<u32>(32399u, u_input.b, u_input.b) % vec3<u32>(32u))), !vec4<bool>(true, all(vec3<bool>(true, true, arg_1.a)), arg_2, all(vec2<bool>(arg_2, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1272.0)), vec2<bool>(u_input.e > ~42663u, !var_0.x | arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(-1921.0)))), _wgslsmith_f_op_f32(max(-2567.0, _wgslsmith_f_op_f32(exp2(414.0)))))), _wgslsmith_div_f32(-348.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(120.0, -715.0)), _wgslsmith_div_f32(1695.0, 287.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -485.0) - -2395.0) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(171.0, -1000.0) * _wgslsmith_div_f32(-877.0, -656.0))) - 1642.0), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(408.0, -734.0, 221.0, -676.0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, 1861.0, -1610.0, -403.0) * vec4<f32>(1000.0, -419.0, 1323.0, 2336.0))) - vec4<f32>(_wgslsmith_f_op_f32(sign(359.0)), 714.0, _wgslsmith_f_op_f32(-699.0 * 1000.0), -408.0)))));
                    let var_3 = true;
                }
                case -2147483648: {
                }
                default: {
                }
            }
            var var_2 = ~(~(max(u_input.d, u_input.d | u_input.d) | u_input.d));
            var var_3 = Struct_3(min(vec4<i32>(abs(0), reverseBits(36777), arg_1.b.x | arg_0.a.x, 0), abs(~vec4<i32>(2147483647, -50576, 0, var_1.a.x))) ^ ~(~var_1.a));
        }
        case 3542: {
            global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-391.0, _wgslsmith_f_op_f32(-693.0 * _wgslsmith_f_op_f32(1000.0 - 1000.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1505.0)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(493.0 - 1041.0), _wgslsmith_f_op_f32(round(542.0)))))));
            var var_0 = 0u;
            var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-418.0 + -628.0) + _wgslsmith_f_op_f32(-1116.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285.0 - -1358.0))), _wgslsmith_f_op_f32(f32(-1.0) * -820.0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1089.0), _wgslsmith_f_op_f32(abs(-148.0)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1339.0 * _wgslsmith_f_op_f32(max(-423.0, -702.0)))))), any(vec2<bool>(false, true)), vec4<u32>(_wgslsmith_mod_u32(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-284.0, -1349.0, 1509.0), vec3<f32>(105.0, -514.0, -1236.0)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(845.0, -1000.0, -1037.0, 970.0)))).x, ~4294967295u), 5454u, func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-488.0, -1483.0, 582.0)), vec3<f32>(-1416.0, -1735.0, 1000.0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1212.0, -123.0, 113.0, 938.0) * vec4<f32>(-479.0, -1729.0, 2003.0, -204.0)))).x, ~(~0u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(140.0))))), 1042.0, _wgslsmith_f_op_f32(trunc(-1181.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1288.0) + _wgslsmith_f_op_f32(f32(-1.0) * -193.0)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(305.0)), _wgslsmith_f_op_f32(sign(-115.0))))));
        }
        default: {
            let var_0 = 14589;
        }
    }
    switch (~arg_0.a.x) {
        case -1: {
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(~vec3<i32>(~(-2147483648), reverseBits(arg_0.a.x), -1), vec4<i32>(-53133 >> (u_input.e % 32u), u_input.c.x, ~(-u_input.a.x), 1), vec4<u32>(0u, ~u_input.d.x, ~0u, 53499u) ^ vec4<u32>(4294967295u, 54778u, abs(9654u), ~u_input.d.x), 23706)));
            let var_0 = _wgslsmith_sub_vec4_u32(func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1049.0, 1177.0, 2391.0), vec3<f32>(1673.0, -217.0, -1270.0), vec3<bool>(arg_2, arg_1.a, arg_2))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(478.0, -670.0, 318.0, 1000.0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-543.0, 600.0, -199.0, -349.0)))) << (((max(vec4<u32>(0u, 0u, u_input.d.x, u_input.b), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.b)) >> (vec4<u32>(u_input.d.x, 4294967295u, u_input.e, 0u) % vec4<u32>(32u))) | (max(vec4<u32>(u_input.b, 1u, u_input.e, u_input.b), vec4<u32>(46160u, u_input.e, u_input.d.x, 4594u)) & vec4<u32>(u_input.d.x, 4294967295u, u_input.e, u_input.e))) % vec4<u32>(32u)), (vec4<u32>(max(u_input.b, 1u), min(4702u, 4294967295u), _wgslsmith_add_u32(21934u, 1u), u_input.e) >> ((firstTrailingBit(vec4<u32>(u_input.e, 44118u, u_input.e, 19601u)) >> (~vec4<u32>(u_input.b, 72735u, 18132u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<u32>(u_input.e, ~u_input.d.x >> (1u % 32u), func_2(vec3<f32>(-341.0, 157.0, 904.0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, 1769.0, -2052.0, -1637.0))).x, ~(u_input.e >> (34074u % 32u))));
            if (!false) {
                let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(872.0 - -817.0) - 787.0) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(369.0, 1197.0) - -1000.0)), _wgslsmith_f_op_f32(func_6()), 1204.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(604.0))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(687.0, 411.0, -354.0, -1159.0))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-175.0, -705.0, -1016.0, 1000.0))))))))));
                let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.xxz + vec3<f32>(_wgslsmith_f_op_f32(func_6()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x - -316.0))), var_1.x)));
                global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_1.x);
            }
            let var_1 = _wgslsmith_f_op_f32(414.0 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(u_input.c.xzx, -_wgslsmith_div_vec4_i32(arg_0.a, vec4<i32>(-2147483648, arg_1.b.x, -2147483648, arg_1.b.x)), var_0 << (var_0 % vec4<u32>(32u)), _wgslsmith_div_i32(firstTrailingBit(0), ~arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -940.0)))), !(!(!arg_1.a)))));
            let var_2 = 4294967295u;
        }
        case 1: {
            if (arg_2) {
            }
            loop {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                var var_0 = vec2<u32>(u_input.d.x, ~4294967295u);
                var var_1 = Struct_1(-1687.0, select(arg_0.a.xzx, vec3<i32>(-43833, abs(arg_0.a.x), abs(arg_0.a.x)), true), vec4<bool>(arg_2, false, select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 50138u, 1u), vec3<u32>(0u, var_0.x, 154322u)), ~u_input.b, 13620u >= var_0.x) > 4294967295u, !(!any(vec2<bool>(arg_2, arg_1.a)))), _wgslsmith_f_op_f32(abs(493.0)), !(!(!(!vec2<bool>(arg_1.a, false)))));
                var_0 = ~(~u_input.d);
            }
            var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(-1576.0)) * _wgslsmith_f_op_f32(f32(-1.0) * -1630.0))), _wgslsmith_f_op_f32(-522.0 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(696.0, -1523.0))))), _wgslsmith_f_op_f32(1000.0 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -855.0), _wgslsmith_f_op_f32(sign(444.0)), false))), _wgslsmith_f_op_f32(func_6())), !all(select(!vec3<bool>(false, arg_2, false), !vec3<bool>(true, true, arg_2), select(vec3<bool>(arg_2, true, false), vec3<bool>(false, true, true), arg_1.a))), ~(~vec4<u32>(0u, 1u, u_input.d.x, firstTrailingBit(7457u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(600.0, 1000.0, -499.0, 1117.0), vec4<f32>(-315.0, -195.0, 1474.0, -1265.0)))))));
            var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(1448.0, _wgslsmith_f_op_f32(1270.0 + var_0.a.x), 447.0, var_0.a.x)), !(!(!any(vec4<bool>(true, true, false, arg_1.a)))), vec4<u32>(reverseBits(102315u), u_input.b >> (~1u % 32u), 15385u, 1u), var_0.d);
        }
        case -71853: {
            global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(245.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6())))) * 675.0);
            var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-595.0, 1115.0, true)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -1453.0), _wgslsmith_f_op_f32(f32(-1.0) * -981.0), !false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6()))), firstLeadingBit(select(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647, -2147483648, arg_1.b.x), arg_0.a.xzy), firstLeadingBit(vec3<i32>(0, u_input.c.x, -63099)), func_3())), vec4<bool>(arg_1.a, all(select(select(vec2<bool>(false, arg_2), vec2<bool>(arg_1.a, true), vec2<bool>(false, false)), !vec2<bool>(true, false), all(vec4<bool>(arg_2, true, arg_2, arg_1.a)))), false, false), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), vec2<bool>(!func_3(), false));
        }
        default: {
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1069.0));
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            }
        }
    }
    let var_0 = select(!(!select(vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_1.a, arg_1.a), 161.0 >= -389.0)), select(!(!vec2<bool>(arg_1.a, arg_2)), !select(vec2<bool>(arg_2, true), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, false), true), arg_1.a), true), arg_2);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -611.0) - _wgslsmith_f_op_f32(func_6())), 842.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-849.0 + -539.0), _wgslsmith_f_op_f32(-2570.0 * -1628.0), arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -118.0))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1583.0, -1424.0, -494.0, -399.0) - vec4<f32>(-1110.0, 1237.0, -540.0, -777.0)), _wgslsmith_div_vec4_f32(vec4<f32>(-581.0, -421.0, -1018.0, -1000.0), vec4<f32>(-943.0, -371.0, -222.0, -1776.0)), all(var_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-309.0, -1792.0, 826.0, -1000.0)))))));
    for (; _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1417.0)), -163.0)))) < var_1.x; ) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        continue;
    }
    return any(vec3<bool>(!any(select(vec2<bool>(var_0.x, true), vec2<bool>(true, arg_1.a), vec2<bool>(var_0.x, false))), !false, !true));
}

@compute
@workgroup_size(1)
fn main() {
    switch (-1) {
        case -26779: {
            loop {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, 776.0, -1658.0, 1000.0) + vec4<f32>(-1282.0, 329.0, -1955.0, 1772.0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(268.0, -1000.0, -262.0, 449.0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(593.0, 1065.0, -143.0, -374.0) + vec4<f32>(-1312.0, -527.0, 2392.0, -777.0)), u_input.a.x != u_input.a.x))))))));
                let var_1 = !select(!select(!vec3<bool>(true, true, true), vec3<bool>(false, false, true), !vec3<bool>(true, false, false)), vec3<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)), select(func_1(Struct_3(u_input.c), Struct_4(false, u_input.c.ww), false), 6062u >= 19053u, true & true), !(!true)), select(vec3<bool>(false, !true, !true), !(!vec3<bool>(false, true, false)), vec3<bool>(false, 1 <= -1, !false)));
                break;
            }
            for (var var_0 = select(-83637, u_input.c.x, true); true; ) {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                break;
            }
        }
        case -1: {
            for (var var_0 = 1; var_0 > 1; var_0 += 1) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                let var_1 = Struct_1(_wgslsmith_f_op_f32(-625.0), ~vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483648, 68773, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0)), u_input.a.x & 1), -u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.c.x, -6210 >> (u_input.d.x % 32u))), select(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), !vec4<bool>(true, true, true, true), !vec4<bool>(true, false, true, true)), select(!vec4<bool>(true, true, false, true), !(!vec4<bool>(false, false, true, true)), func_1(Struct_3(vec4<i32>(-1, 1, u_input.c.x, -20043)), Struct_4(true, u_input.a.xx), all(vec2<bool>(true, true)))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1180.0), _wgslsmith_f_op_f32(floor(-1002.0)), !false)) * _wgslsmith_f_op_f32(1144.0 * _wgslsmith_f_op_f32(-621.0)))), !select(vec2<bool>(func_1(Struct_3(vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.c.x)), Struct_4(true, vec2<i32>(u_input.a.x, u_input.c.x)), true), true && false), vec2<bool>(!true, any(vec4<bool>(true, true, false, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !vec2<bool>(true, false), true)));
                let var_2 = Struct_4(var_1.c.x, var_1.b.zy);
                let var_3 = _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d.x >> (~u_input.e % 32u), 46316u, u_input.b), ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(1u, u_input.e, u_input.d.x)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 16526u), vec3<u32>(u_input.b, 4294967295u, 4294967295u)), vec3<u32>(max(u_input.b, 11190u), u_input.b, u_input.d.x)));
            }
        }
        case -15103: {
            global0 = 102.0;
            loop {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-508.0) - -1145.0) + 1116.0);
                var var_0 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(u_input.c.xyx), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), vec3<i32>(-1, -19131, 11348))), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-60639, u_input.c.x, u_input.a.x), u_input.c.www), _wgslsmith_dot_vec2_i32(vec2<i32>(23372, u_input.a.x), vec2<i32>(-39473, u_input.c.x)))), firstLeadingBit(-(~1)));
                var var_1 = select(func_3(), !(!(!true) || (~0 <= u_input.a.x)), _wgslsmith_f_op_f32(func_6()) >= 427.0);
            }
        }
        default: {
            let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(500.0, 719.0, -328.0, -344.0)))), vec4<f32>(-1017.0, _wgslsmith_f_op_f32(f32(-1.0) * -787.0), 1132.0, -241.0))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-587.0)), _wgslsmith_f_op_f32(-1000.0))), -586.0, -1237.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(213.0, -1625.0))))))));
            for (var var_1 = -2147483648; true; var_1 -= 1) {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
                let var_2 = select(vec4<bool>(!(_wgslsmith_add_i32(-2147483648, u_input.c.x) <= u_input.a.x), !(!(!true)), (u_input.d.x <= (u_input.b & u_input.d.x)) && (~u_input.e < _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8111u, u_input.e, 0u), vec4<u32>(0u, 2359u, 0u, u_input.b))), func_1(Struct_3(vec4<i32>(u_input.a.x, -56278, u_input.c.x, 2147483647)), Struct_4(any(vec3<bool>(true, false, false)), _wgslsmith_mult_vec2_i32(u_input.a.wx, vec2<i32>(1, -2147483648))), true)), vec4<bool>(!true, _wgslsmith_add_i32(i32(-1) * -30298, countOneBits(1)) > -1, all(vec3<bool>(true | true, -1 <= u_input.c.x, true)), countOneBits(u_input.e) >= select(27201u, u_input.b, any(vec3<bool>(false, false, true)))), !vec4<bool>(!(1167.0 >= var_0.x), ~u_input.b <= ~u_input.b, _wgslsmith_f_op_f32(-var_0.x) >= -930.0, true));
                continue;
            }
            if (var_0.x == _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(ceil(var_0.x)))) {
                let var_1 = Struct_3(~select(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, 11330), vec4<i32>(59400, u_input.c.x, u_input.a.x, -2147483648)), u_input.c, !vec4<bool>(true, false, false, false)), vec4<i32>(-u_input.c.x, abs(2147483647), -1 >> (7931u % 32u), max(u_input.c.x, 66463)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), !vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))));
                var var_2 = var_0;
            }
        }
    }
    var var_0 = 2147483647;
    var_0 = -24736 ^ countOneBits(-1);
    let var_1 = abs(~(~u_input.d.x));
    for (var var_2 = -1; ; ) {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
        let var_3 = countOneBits(~u_input.c);
        loop {
            if (LOOP_COUNTERS[30u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
            var var_4 = Struct_4(!((-2783.0 >= _wgslsmith_f_op_f32(680.0 - -1450.0)) && false), vec2<i32>(-var_3.x, 1));
        }
        var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-233.0, -150.0, 833.0, -1301.0) * vec4<f32>(-1669.0, 2679.0, 766.0, 612.0)))))))), false, ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1 << (u_input.e % 32u), u_input.e << (u_input.b % 32u), reverseBits(1u), var_1), firstTrailingBit(~vec4<u32>(var_1, 4294967295u, 0u, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1224.0, -167.0, -727.0, 300.0)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-158.0, -1939.0, -1440.0, -549.0), vec4<f32>(-313.0, 1520.0, -599.0, 150.0), true)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -703.0), _wgslsmith_f_op_f32(select(-1384.0, -1000.0, true)), 215.0, _wgslsmith_f_op_f32(f32(-1.0) * -206.0)))));
        var var_5 = u_input.a.x;
        switch (u_input.a.x) {
            case -27589: {
                let var_6 = Struct_5(firstLeadingBit(var_4.c.x), Struct_1(_wgslsmith_f_op_f32(184.0 - 1000.0), u_input.a.xwz, vec4<bool>(false, any(vec3<bool>(true, false, true)), select(!false, !false, var_4.b), any(vec4<bool>(var_4.b, var_4.b, var_4.b, var_4.b))), 470.0, vec2<bool>(false, select(false, true, false) || false)), -1042.0, _wgslsmith_f_op_f32(floor(859.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.d.x, -936.0, -517.0, -1021.0) - var_4.a), var_4.a, !true))))));
            }
            case 2147483647: {
                continue;
            }
            default: {
                let var_6 = Struct_5(_wgslsmith_div_u32(u_input.d.x, ~(1u & 1u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), select(vec3<i32>(var_3.x, _wgslsmith_add_i32(u_input.c.x, u_input.a.x), 9775), u_input.c.yzx, all(vec2<bool>(false, var_4.b))), vec4<bool>(func_1(Struct_3(u_input.c), Struct_4(false, vec2<i32>(41621, 0)), true || false), all(select(vec4<bool>(var_4.b, true, var_4.b, true), vec4<bool>(false, false, true, true), var_4.b)), false | true, all(vec3<bool>(var_4.b, false, true)) != (var_4.b | true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_4.a.x, var_4.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-932.0 - var_4.a.x)), false)), select(!(!vec2<bool>(var_4.b, var_4.b)), vec2<bool>(true, true), !vec2<bool>(false, true))), var_4.a.x, var_4.a.x, var_4.a);
                continue;
            }
        }
    }
    var_0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(floor(-210.0)), i32(-1) * -88751, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(953.0 - -155.0) - _wgslsmith_f_op_f32(exp2(239.0))), _wgslsmith_f_op_f32(840.0 - _wgslsmith_f_op_f32(-385.0 + -1528.0)), _wgslsmith_f_op_f32(-1156.0 - _wgslsmith_f_op_f32(-570.0)), 1141.0)));
}

