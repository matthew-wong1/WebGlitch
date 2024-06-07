// {"0:0":[0,56,97,83,22,100,41,68,169,215,6,158,143,71,181,85,158,121,106,174,176,64,233,212,82,130,43,39,195,225,119,86,37,130,12,73,173,131,50,147,117,196,173,88,11,246,63,38,235,102,219,242,162,37,7,173,249,137,35,86,128,21,110,19]}
// Seed: 17039951156309066316

struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec2<bool>(false, true), -892.0, Struct_1(true, 8794, 0), Struct_2(vec2<u32>(1u, 4294967295u), 1u, -2147483648, -1)), Struct_3(vec2<bool>(true, false), -1144.0, Struct_1(false, -2147483648, 31619), Struct_2(vec2<u32>(47464u, 4294967295u), 0u, 0, -1)), Struct_3(vec2<bool>(true, false), -1294.0, Struct_1(false, 37149, -2147483648), Struct_2(vec2<u32>(0u, 25230u), 4294967295u, -1, 2147483647)), Struct_3(vec2<bool>(true, false), 1095.0, Struct_1(true, 0, 40012), Struct_2(vec2<u32>(4294967295u, 10999u), 45473u, -2147483648, 40347)), Struct_3(vec2<bool>(true, false), -757.0, Struct_1(false, -18976, 2147483647), Struct_2(vec2<u32>(4294967295u, 34264u), 7056u, -58791, -36309)), Struct_3(vec2<bool>(false, false), -132.0, Struct_1(true, 1, -1), Struct_2(vec2<u32>(1u, 72397u), 1u, -1, -28978)), Struct_3(vec2<bool>(false, true), 794.0, Struct_1(false, 2147483647, -2147483648), Struct_2(vec2<u32>(0u, 17690u), 0u, -48153, 1)), Struct_3(vec2<bool>(true, false), -1000.0, Struct_1(true, 7921, -2147483648), Struct_2(vec2<u32>(91203u, 1u), 1u, -40851, 2147483647)), Struct_3(vec2<bool>(true, true), 1258.0, Struct_1(true, 61143, -2147483648), Struct_2(vec2<u32>(0u, 60052u), 9004u, 53481, -1)), Struct_3(vec2<bool>(false, true), -596.0, Struct_1(true, 1, 44450), Struct_2(vec2<u32>(26802u, 4294967295u), 1u, 0, 38150)), Struct_3(vec2<bool>(false, true), -959.0, Struct_1(true, -1, 13887), Struct_2(vec2<u32>(1396u, 4294967295u), 0u, -1, -1)), Struct_3(vec2<bool>(false, true), 534.0, Struct_1(true, -2147483648, 1), Struct_2(vec2<u32>(0u, 4294967295u), 1u, -1232, -15357)), Struct_3(vec2<bool>(true, false), 1344.0, Struct_1(false, 21451, -4421), Struct_2(vec2<u32>(84503u, 6736u), 1u, 6073, 2147483647)), Struct_3(vec2<bool>(false, false), -1299.0, Struct_1(true, -786, 2147483647), Struct_2(vec2<u32>(38998u, 0u), 41843u, -47052, -1)), Struct_3(vec2<bool>(true, true), -426.0, Struct_1(false, 63540, 6050), Struct_2(vec2<u32>(0u, 0u), 1u, 0, 31071)), Struct_3(vec2<bool>(false, true), -1316.0, Struct_1(true, -13112, 4450), Struct_2(vec2<u32>(48709u, 4294967295u), 11003u, 1, 2147483647)), Struct_3(vec2<bool>(false, true), 1166.0, Struct_1(false, -8489, 0), Struct_2(vec2<u32>(71543u, 1u), 41666u, 1, 2147483647)));

var<private> LOOP_COUNTERS: array<u32, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    if (false) {
    }
    switch (u_input.a.x) {
        case -36827: {
            for (var var_0 = max(u_input.c.x, _wgslsmith_div_i32(~(arg_1.c | u_input.c.x), u_input.a.x)); var_0 >= -1; ) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                global0 = array<Struct_3, 17>();
                return arg_0.a;
            }
        }
        default: {
            var var_0 = Struct_2(vec2<u32>(0u, u_input.b.x), _wgslsmith_sub_u32(85125u, 28571u), 7826, -13279);
            for (var var_1 = 2147483647; !any(select(vec2<bool>(!true, arg_0.c.a), select(arg_0.a, select(vec2<bool>(arg_0.c.a, arg_0.a.x), arg_0.a, arg_0.c.a), select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(arg_0.c.a, false), arg_0.a)), arg_0.a)); ) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                global0 = array<Struct_3, 17>();
                var var_2 = arg_0.c.a;
            }
            var var_1 = vec2<f32>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214.0) * arg_0.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1654.0, -379.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-571.0 * arg_0.b) + _wgslsmith_f_op_f32(f32(-1.0) * -1843.0))))));
            let var_2 = abs(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(arg_0.d.a), reverseBits(~vec2<u32>(arg_1.b, 89866u))), ~u_input.b.x));
            return arg_0.a;
        }
    }
    if (!(!arg_0.c.a)) {
        global0 = array<Struct_3, 17>();
        global0 = array<Struct_3, 17>();
        if (false) {
            let var_0 = u_input.b;
            global0 = array<Struct_3, 17>();
        }
        var var_0 = arg_0.c;
    }
    var var_0 = Struct_3(select(select(vec2<bool>(arg_0.a.x, false), select(!vec2<bool>(false, arg_0.a.x), arg_0.a, !vec2<bool>(arg_0.c.a, arg_0.c.a)), _wgslsmith_div_f32(174.0, arg_0.b) > _wgslsmith_f_op_f32(-arg_0.b)), vec2<bool>(true, !(arg_0.c.b == u_input.c.x)), !any(select(arg_0.a, arg_0.a, arg_0.a.x))), _wgslsmith_f_op_f32(step(-611.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-795.0 + arg_0.b) + arg_0.b)))), Struct_1(!(!false) | (-105323 >= _wgslsmith_mod_i32(u_input.c.x, -39179)), arg_1.d, _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, 0), u_input.a), arg_0.d.c), -1 | max(arg_0.c.b, -74962))), Struct_2(~vec2<u32>(~arg_1.b, 1u), arg_1.a.x, -_wgslsmith_dot_vec3_i32(u_input.c.wzy, u_input.c.ywz), arg_1.c));
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        continue;
    }
    return vec2<bool>(var_0.c.a, false);
}

fn func_5() -> f32 {
    if (true) {
        for (; true; ) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            break;
        }
        global0 = array<Struct_3, 17>();
        switch (u_input.a.x) {
            default: {
                global0 = array<Struct_3, 17>();
            }
        }
        global0 = array<Struct_3, 17>();
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        switch (abs(u_input.c.x)) {
            case 2147483647: {
                global0 = array<Struct_3, 17>();
                var var_0 = Struct_3(!func_6(Struct_3(vec2<bool>(false, false), _wgslsmith_div_f32(1934.0, 3251.0), Struct_1(false, u_input.c.x, -13181), Struct_2(u_input.d, u_input.b.x, -2147483648, 0)), Struct_2(u_input.b.xy, ~u_input.d.x, u_input.c.x, -8247)), _wgslsmith_div_f32(1230.0, _wgslsmith_f_op_f32(step(-1260.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1630.0)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-871.0, -562.0))) <= _wgslsmith_f_op_f32(-1000.0), u_input.c.x & ((u_input.a.x >> (4294967295u % 32u)) & ~773), -17736), Struct_2(firstTrailingBit(~(u_input.d ^ vec2<u32>(0u, u_input.b.x))), ~(~_wgslsmith_mod_u32(1u, u_input.b.x)), _wgslsmith_mod_i32(i32(-1) * -2147483648, _wgslsmith_div_i32(i32(-1) * -2147483648, -1)), ~(-u_input.c.x) >> (25914u % 32u)));
                var var_1 = _wgslsmith_div_u32(~(~var_0.d.a.x), 0u);
            }
            case 1: {
                continue;
            }
            case -1: {
                global0 = array<Struct_3, 17>();
                let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1239.0 * _wgslsmith_f_op_f32(max(-958.0, 607.0))), _wgslsmith_f_op_f32(-281.0 - _wgslsmith_div_f32(988.0, 382.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522.0 + -1000.0) + _wgslsmith_f_op_f32(f32(-1.0) * -262.0))));
                let var_1 = vec2<bool>(any(select(!(!vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true)), true);
                let var_2 = 0u;
            }
            case -2147483648: {
                break;
            }
            default: {
                global0 = array<Struct_3, 17>();
                var var_0 = Struct_1(true, ~(-_wgslsmith_mult_i32(max(2147483647, -51407), _wgslsmith_mult_i32(0, 1))), ~(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.ywx, vec3<i32>(u_input.c.x, 1, u_input.c.x)), firstTrailingBit(vec3<i32>(0, -273, u_input.a.x))) >> (~_wgslsmith_mod_u32(u_input.d.x, 22445u) % 32u)));
                global0 = array<Struct_3, 17>();
                continue;
            }
        }
        global0 = array<Struct_3, 17>();
        global0 = array<Struct_3, 17>();
    }
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    return _wgslsmith_f_op_f32(-3242.0);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    for (var var_0 = -3762; var_0 == -1513; ) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5()) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -1965.0), _wgslsmith_f_op_f32(ceil(503.0)), !false))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1735.0, 516.0))))));
        continue;
    }
    let var_0 = -max(_wgslsmith_mult_i32(max(_wgslsmith_div_i32(29721, 0), ~arg_0.d), u_input.c.x), _wgslsmith_sub_i32(-arg_1.x << (abs(19676u) % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(16706, arg_0.d, 1), u_input.c.yzw)));
    let var_1 = _wgslsmith_mult_i32(select(max(0, abs(1)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, -2147483648 & arg_1.x, 18374, _wgslsmith_mod_i32(0, arg_1.x)), _wgslsmith_clamp_vec4_i32(~u_input.c, abs(u_input.c), select(u_input.c, u_input.c, vec4<bool>(true, true, false, true)))), true), 0);
    global0 = array<Struct_3, 17>();
    global0 = array<Struct_3, 17>();
    return false;
}

fn func_7(arg_0: vec2<bool>, arg_1: bool, arg_2: u32) -> i32 {
    let var_0 = all(vec2<bool>(!arg_0.x, arg_0.x));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), u_input.b.zx), _wgslsmith_mult_u32(50043u, u_input.d.x), arg_2), u_input.b) << (_wgslsmith_dot_vec2_u32(vec2<u32>(77900u, arg_2), vec2<u32>(_wgslsmith_sub_u32(0u, 4294967295u), 82992u)) % 32u), 1u, abs(~arg_2), arg_2);
    if (var_0) {
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        for (var var_2 = -6243; var_2 > 58902; var_1 = (vec4<u32>(0u, ~1u, _wgslsmith_div_u32(75472u, arg_2), 3809u) | ~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(arg_2, var_1.x, 95175u, arg_2)), abs(vec4<u32>(122018u, 4294967295u, 13415u, var_1.x)))) | countOneBits(select(~vec4<u32>(u_input.d.x, 3908u, arg_2, arg_2), select(vec4<u32>(0u, 31749u, 0u, 30586u) << (vec4<u32>(var_1.x, 4294967295u, u_input.d.x, var_1.x) % vec4<u32>(32u)), vec4<u32>(47934u, 60629u, 81952u, u_input.d.x) & vec4<u32>(arg_2, arg_2, 4294967295u, 4294967295u), select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, false, var_0, true))), vec4<bool>(any(vec3<bool>(true, false, arg_1)), false, func_6(global0[_wgslsmith_index_u32(var_1.x, 17u)], Struct_2(vec2<u32>(1u, arg_2), 1u, u_input.a.x, u_input.a.x)).x, !false)))) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            continue;
        }
    }
    switch (_wgslsmith_dot_vec2_i32(vec2<i32>(-1) * -u_input.a, vec2<i32>(-(~firstTrailingBit(-37815)), u_input.c.x))) {
        case -13692: {
            let var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 17u)];
        }
        case 11028: {
            if (!(!true)) {
            }
            for (; ; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                global0 = array<Struct_3, 17>();
                continue;
            }
            if (arg_1) {
                var var_2 = select(!vec4<bool>(any(select(vec2<bool>(arg_1, false), arg_0, arg_0)), false, arg_1, _wgslsmith_f_op_f32(715.0 - -1000.0) <= _wgslsmith_f_op_f32(min(-321.0, 1000.0))), select(select(select(vec4<bool>(true, false, var_0, var_0), select(vec4<bool>(arg_1, var_0, var_0, arg_0.x), vec4<bool>(arg_1, true, arg_1, var_0), arg_0.x), 23396u < var_1.x), !vec4<bool>(true, true, arg_0.x, true), true), vec4<bool>(_wgslsmith_mod_i32(1, 0) > u_input.a.x, any(arg_0), arg_1, any(!arg_0)), arg_1), vec4<bool>(!false, !all(!vec4<bool>(false, false, false, true)), !(false & true) != false, !(false || !var_0)));
                var_2 = !select(select(vec4<bool>(true, false, any(vec4<bool>(true, arg_0.x, arg_1, true)), 4294967295u == 1u), !select(vec4<bool>(var_2.x, false, var_2.x, arg_0.x), vec4<bool>(arg_0.x, false, false, true), var_2.x), vec4<bool>(func_6(global0[_wgslsmith_index_u32(var_1.x, 17u)], Struct_2(var_1.xw, 1687u, 2147483647, 19606)).x, arg_0.x, arg_1, func_6(Struct_3(arg_0, 919.0, Struct_1(false, u_input.c.x, u_input.c.x), Struct_2(u_input.b.xx, arg_2, 1, u_input.a.x)), Struct_2(vec2<u32>(77370u, 4294967295u), arg_2, u_input.a.x, -27198)).x)), vec4<bool>(var_0, !(!arg_0.x), true, arg_0.x), all(select(var_2.zxy, var_2.wzw, arg_0.x)));
            }
            var var_2 = Struct_1(var_0, -u_input.a.x, select(abs(u_input.c.x), -35266 ^ ~select(u_input.a.x, u_input.c.x, arg_0.x), all(vec4<bool>(arg_0.x, var_0, arg_0.x, !var_0))));
        }
        case 31351: {
        }
        default: {
            var var_2 = Struct_2(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 41481u), abs(vec3<u32>(10013u, arg_2, var_1.x))), arg_2), 41144u, (-_wgslsmith_sub_i32(-40391, 31387) | u_input.c.x) << (~_wgslsmith_clamp_u32(~31414u, _wgslsmith_mult_u32(9284u, u_input.b.x), 94026u << (u_input.b.x % 32u)) % 32u), i32(-1) * -2578);
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var var_3 = global0[_wgslsmith_index_u32(1u, 17u)];
                var_3 = global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.yyw, vec3<u32>(var_2.b, 982u, 45636u)), var_1.x)) | u_input.d.x, 17u)];
                break;
            }
        }
    }
    return u_input.c.x;
}

fn func_3(arg_0: vec2<u32>) -> vec4<bool> {
    var var_0 = func_7(select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<bool>(!(-1213.0 <= 189.0), !true || func_4(Struct_2(vec2<u32>(0u, u_input.b.x), u_input.d.x, 0, u_input.c.x), vec2<i32>(-17721, -2147483648))), !false), !(-1369.0 >= -723.0), u_input.b.x);
    var_0 = firstTrailingBit(~2147483647);
    global0 = array<Struct_3, 17>();
    for (var var_1 = 2147483647; var_1 != 44532; var_0 = reverseBits(~_wgslsmith_mult_i32(37695, 2147483647))) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        global0 = array<Struct_3, 17>();
        var_1 = _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(countOneBits(u_input.c), vec4<i32>(u_input.c.x, u_input.a.x, -27477, 29369))), abs(firstLeadingBit(-1)), u_input.a.x));
        continue;
    }
    return !vec4<bool>(!(!true), !false, !true | (_wgslsmith_f_op_f32(-796.0) != _wgslsmith_f_op_f32(657.0 + -424.0)), !func_4(Struct_2(u_input.d, u_input.d.x, 4669, 2147483647), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 17>();
    for (var var_0 = 36811; var_0 <= -23593; var_0 += 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_1 = vec3<bool>(true, (u_input.d.x | 62679u) < u_input.d.x, false & !any(vec2<bool>(true, true)));
        break;
    }
    if (any(select(!vec4<bool>(false, u_input.d.x < u_input.b.x, 1313.0 > -1000.0, false), select(vec4<bool>(false | true, true, !false, !false), !func_3(u_input.d), func_6(global0[_wgslsmith_index_u32(~u_input.d.x, 17u)], Struct_2(u_input.b.xx, 103594u, -1, -20287)).x), select(false, !(!false), true)))) {
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            break;
        }
        for (var var_0 = 0; var_0 != 39448; var_0 -= 1) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5())))));
            let var_2 = u_input.b.x > ~(~(~u_input.d.x));
        }
        let var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(abs(~u_input.d), reverseBits(vec2<u32>(u_input.b.x, 0u)))), 17u)];
        let var_1 = global0[_wgslsmith_index_u32(~1u, 17u)];
        global0 = array<Struct_3, 17>();
    }
    let var_0 = !vec4<bool>(u_input.d.x != 1u, !false, !true, func_3(u_input.d ^ (u_input.d | vec2<u32>(4294967295u, 25181u))).x);
    if (~_wgslsmith_dot_vec3_u32(max(~u_input.b, vec3<u32>(4294967295u, 4294967295u, 0u) ^ vec3<u32>(8774u, u_input.d.x, u_input.b.x)), select(u_input.b, ~vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), !false)) > ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d.x, 54958u, u_input.b.x)), firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b)))) {
        var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1168.0, 1000.0), _wgslsmith_f_op_f32(min(-151.0, -1122.0))))))));
        var_1 = -196.0;
    }
    return Struct_2(~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.b.x, 0u))), ~(~abs(u_input.b.x & 24167u)), select(u_input.a.x, i32(-1) * -51973, var_0.x), _wgslsmith_mod_i32(firstTrailingBit(abs(reverseBits(u_input.c.x))), 0));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    var var_0 = func_2();
    var var_1 = !((false && false) && !arg_2.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_3.b)), 858.0, arg_1.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-850.0, arg_1.b, arg_3.b) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000.0, arg_3.b, arg_3.b), vec3<f32>(-1254.0, arg_1.b, arg_3.b))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.b, arg_1.b, -589.0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1962.0, arg_1.b, -419.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, arg_3.b, -105.0))))));
    switch ((abs(arg_2.c) ^ arg_1.c.b) & _wgslsmith_mult_i32(arg_1.d.c, 1)) {
        default: {
            global0 = array<Struct_3, 17>();
            return true;
        }
    }
    if (arg_1.c.c > 2147483647) {
        for (var var_3 = 1092; ; var_1 = !(!arg_1.c.a)) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        }
        var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-584.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.b, -1651.0, any(vec4<bool>(arg_3.c.a, arg_1.c.a, arg_1.c.a, arg_3.c.a)))))));
    }
    return any(arg_3.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    if (func_8(func_2(), global0[_wgslsmith_index_u32(6494u, 17u)], arg_1, global0[_wgslsmith_index_u32(u_input.b.x | ~(23089u << (~u_input.d.x % 32u)), 17u)])) {
    }
    var var_0 = 0;
    global0 = array<Struct_3, 17>();
    var var_1 = Struct_1(any(!func_3(vec2<u32>(19060u, u_input.b.x) << (vec2<u32>(u_input.b.x, u_input.d.x) % vec2<u32>(32u))).wz), abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(-arg_1.b, -arg_1.b), ~(i32(-1) * -34318))), arg_1.c);
    for (var var_2 = -13785; var_2 > 0; global0 = array<Struct_3, 17>()) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var var_3 = !(-1 != u_input.c.x);
        for (var var_4 = -33222; var_4 < -20870; var_4 -= 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
        var var_4 = select(_wgslsmith_sub_vec2_i32(-u_input.c.zw, u_input.c.xy), max(abs(u_input.c.yz), u_input.a), !(!any(select(vec2<bool>(var_1.a, arg_1.a), vec2<bool>(true, false), true))));
    }
    return _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(-800.0, 1152.0));
}

fn func_9(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> Struct_2 {
    for (var var_0 = 2147483647; arg_2 == (u_input.b.x >= firstTrailingBit(abs(arg_3.x))); var_0 -= 1) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        var_0 = -u_input.a.x;
    }
    switch (_wgslsmith_dot_vec4_i32(-(~u_input.c), u_input.c)) {
        case 1: {
            if (!false) {
                var var_0 = 1u;
                let var_1 = vec3<u32>(firstTrailingBit(~(~(~1u))), ~arg_1.d.b, _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 4294967295u, 4294967295u), vec3<u32>(arg_3.x, 860u, 51909u)), countOneBits(29887u << (4294967295u % 32u))), abs(max(~u_input.b.x, _wgslsmith_dot_vec3_u32(arg_3, u_input.b)))));
                global0 = array<Struct_3, 17>();
                global0 = array<Struct_3, 17>();
                var var_2 = vec4<u32>((~_wgslsmith_div_u32(34081u, 4294967295u) >> (1u % 32u)) ^ 0u, 19721u, ~17036u, arg_1.d.a.x);
            }
            global0 = array<Struct_3, 17>();
            global0 = array<Struct_3, 17>();
            switch (func_7(!(!(!arg_1.a)), any(func_3(vec2<u32>(1u, abs(0u)))), 0u)) {
                case 1: {
                    var var_0 = select(!(!(!vec3<bool>(arg_2, arg_2, arg_2))), !vec3<bool>(arg_1.a.x, arg_2, true), true);
                    let var_1 = arg_1.c;
                }
                default: {
                    let var_0 = arg_1.a;
                    var var_1 = arg_1.c;
                    var var_2 = ~(~_wgslsmith_mod_u32(~arg_1.d.a.x, _wgslsmith_mod_u32(267u, ~64586u)));
                    var var_3 = arg_1.d.a;
                    let var_4 = !func_3(u_input.b.zz).zyx;
                }
            }
        }
        case 0: {
            var var_0 = ~vec4<i32>(1, 23056 ^ _wgslsmith_dot_vec4_i32(-u_input.c, u_input.c), countOneBits(_wgslsmith_dot_vec2_i32(-u_input.a, vec2<i32>(u_input.c.x, u_input.c.x) ^ arg_0)), _wgslsmith_div_i32(12318, -17680 | 1) << (firstLeadingBit(firstTrailingBit(arg_1.d.a.x)) % 32u));
            var_0 = ~_wgslsmith_mod_vec4_i32(max(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(0, arg_0.x, 0, var_0.x)), -27, ~var_0.x, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(-37638, -2147483648, 5561, -1) & vec4<i32>(arg_0.x, var_0.x, arg_1.d.c, arg_0.x), u_input.c)), vec4<i32>(arg_0.x, -1, ~u_input.c.x, reverseBits(_wgslsmith_sub_i32(20243, 0))));
            for (; ; ) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                global0 = array<Struct_3, 17>();
                var var_1 = u_input.c;
                var var_2 = i32(-1) * -47370;
                var_1 = u_input.c;
                var_2 = var_0.x;
            }
        }
        case 49282: {
            if (!(!(false | arg_2) | func_3(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.d.b, 4294967295u), reverseBits(vec2<u32>(44667u, arg_1.d.b)))).x)) {
                global0 = array<Struct_3, 17>();
                let var_0 = arg_1.d;
            }
        }
        default: {
            var var_0 = 0u;
        }
    }
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1249.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-748.0))))), _wgslsmith_div_f32(2097.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2936.0 * 549.0))))));
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        switch (firstLeadingBit(_wgslsmith_div_i32(reverseBits(arg_1.d.c), ~(-2147483648)))) {
            default: {
            }
        }
        continue;
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, _wgslsmith_f_op_f32(f32(-1.0) * -1488.0), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b)))), arg_1.b));
        var var_2 = vec4<bool>(any(!select(arg_1.a, arg_1.a, vec2<bool>(false, arg_2))) & ((min(74063u, arg_1.d.b) | 0u) <= arg_3.x), true, !func_6(arg_1, arg_1.d).x, arg_1.c.a);
        let var_3 = arg_1.c;
        var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) + vec4<f32>(-285.0, 892.0, -739.0, -676.0)) * vec4<f32>(1180.0, _wgslsmith_div_f32(var_0.x, -318.0), var_1.x, _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000.0, var_0.x, var_0.x)))))))));
        let var_5 = select(vec3<bool>(!(!var_3.a), select(false, false, func_3(vec2<u32>(4294967295u, arg_1.d.a.x)).x) && false, false), var_2.zwx, !vec3<bool>(arg_1.a.x, false != false, func_6(arg_1, arg_1.d).x));
    }
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 17>();
    var var_0 = func_9(-_wgslsmith_clamp_vec2_i32(u_input.a, min(u_input.c.xx, -u_input.c.zx), u_input.c.yz), global0[_wgslsmith_index_u32(~u_input.d.x, 17u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-826.0 + -1154.0), _wgslsmith_f_op_f32(func_1(vec3<f32>(2022.0, -931.0, 209.0), Struct_1(false, u_input.a.x, -34277), Struct_1(true, u_input.c.x, u_input.a.x))))), -694.0) >= -445.0, vec3<u32>(_wgslsmith_add_u32(~u_input.d.x, u_input.b.x), ~_wgslsmith_mult_u32(~18163u, 0u), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(abs(u_input.d), countOneBits(u_input.b.yx)))));
    switch (_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(u_input.c.x, u_input.a.x, var_0.d), _wgslsmith_sub_i32(countOneBits(2888), 2147483647))) {
        case 2147483647: {
            for (var var_1: i32; var_1 >= 11619; ) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            }
            var var_1 = !vec4<bool>(all(vec4<bool>(!false, 982.0 <= -242.0, true | true, any(vec3<bool>(true, true, true)))), !true, func_4(Struct_2(var_0.a, _wgslsmith_mod_u32(39488u, 1u), -2147483648, abs(u_input.c.x)), u_input.a), func_6(Struct_3(!vec2<bool>(false, false), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), Struct_1(true, u_input.c.x, 33987), Struct_2(var_0.a, u_input.d.x, var_0.d, u_input.a.x)), Struct_2(vec2<u32>(110801u, u_input.d.x), 0u, _wgslsmith_mult_i32(var_0.c, 11823), u_input.a.x & var_0.d)).x);
        }
        case -21057: {
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                global0 = array<Struct_3, 17>();
                return;
            }
            for (var var_1 = -33057; var_1 != 29858; ) {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                global0 = array<Struct_3, 17>();
                global0 = array<Struct_3, 17>();
                var var_2 = global0[_wgslsmith_index_u32(~var_0.a.x, 17u)];
                continue;
            }
            loop {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                var_0 = func_9(-_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(select(u_input.c.yw, u_input.a, vec2<bool>(false, false)), countOneBits(vec2<i32>(30471, u_input.a.x)), firstLeadingBit(vec2<i32>(2147483647, u_input.a.x))), u_input.a), global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(var_0.b, _wgslsmith_sub_u32(var_0.a.x, 4294967295u))), 17u)], func_8(Struct_2(var_0.a, var_0.b, func_9(vec2<i32>(u_input.a.x, 23662), Struct_3(vec2<bool>(false, false), -770.0, Struct_1(false, var_0.d, 0), Struct_2(vec2<u32>(u_input.d.x, 89474u), var_0.a.x, -2147483648, 0)), false, vec3<u32>(4294967295u, 57318u, 0u)).c ^ (i32(-1) * -1), u_input.c.x), global0[_wgslsmith_index_u32(u_input.d.x ^ abs(~1u), 17u)], Struct_1(true | !false, var_0.c, reverseBits(~var_0.d)), Struct_3(select(!vec2<bool>(true, false), !vec2<bool>(true, false), func_3(vec2<u32>(10959u, u_input.b.x)).yz), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-204.0 * -234.0), _wgslsmith_f_op_f32(f32(-1.0) * -441.0))), Struct_1(false, max(1, 0), _wgslsmith_div_i32(u_input.c.x, 34847)), Struct_2(vec2<u32>(1u, var_0.a.x), 0u, -18636 >> (0u % 32u), -6737 ^ 7004))), vec3<u32>(firstTrailingBit(reverseBits(1u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b, var_0.a.x), 1u), func_9(u_input.a, Struct_3(vec2<bool>(true, false), 703.0, Struct_1(true, -19389, u_input.a.x), Struct_2(var_0.a, 4294967295u, var_0.d, u_input.c.x)), 1065.0 >= -363.0, ~vec3<u32>(0u, var_0.b, u_input.b.x)).b, var_0.b), ~(var_0.a.x << (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 4294967295u, u_input.b.x)) % 32u))));
                var_0 = Struct_2(u_input.d, _wgslsmith_add_u32(func_2().b, countOneBits(u_input.d.x ^ ~0u)), ~u_input.c.x, u_input.a.x);
                break;
            }
        }
        default: {
            for (; ; ) {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(countOneBits(var_0.a.x)), firstLeadingBit(1u)), 17u)];
                let var_2 = ~abs(_wgslsmith_div_vec3_u32(min(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(42315u, 3089u, var_0.b), vec3<u32>(0u, 20660u, var_0.b)), vec3<u32>(var_1.d.a.x, var_1.d.a.x, u_input.d.x)), u_input.b));
            }
            if (min(10418, max(_wgslsmith_div_i32(select(var_0.d, 7433, false), 2147483647), ~(i32(-1) * -46846))) < firstLeadingBit(var_0.d)) {
            }
            switch (var_0.d) {
                case 1713: {
                    var_0 = Struct_2(_wgslsmith_div_vec2_u32(u_input.b.yz, select(_wgslsmith_div_vec2_u32(select(var_0.a, vec2<u32>(var_0.a.x, var_0.a.x), vec2<bool>(false, true)), vec2<u32>(var_0.a.x, 90129u)), vec2<u32>(_wgslsmith_add_u32(u_input.d.x, 10973u), var_0.b), vec2<bool>(false, false))), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, ~5125u), 1u), _wgslsmith_mod_i32(var_0.d, 2147483647), var_0.d);
                    var var_1 = _wgslsmith_div_f32(1581.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1046.0, 733.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-369.0))))));
                    var_1 = 1168.0;
                }
                case 1: {
                    let var_1 = 29841u;
                    var_0 = Struct_2(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b & u_input.b, vec3<u32>(var_0.a.x, var_0.b, var_0.a.x))), 1u), u_input.b.x, -27244, 28653);
                    var var_2 = Struct_2(~_wgslsmith_mult_vec2_u32(firstLeadingBit(var_0.a), _wgslsmith_clamp_vec2_u32(select(u_input.d, vec2<u32>(4294967295u, 29657u), vec2<bool>(true, false)), _wgslsmith_mult_vec2_u32(var_0.a, vec2<u32>(var_0.b, 4294967295u)), vec2<u32>(1u, 26872u))), countOneBits(1u) ^ (abs(~47867u) >> (abs(func_2().b) % 32u)), 56202, var_0.c);
                    let var_3 = Struct_3(vec2<bool>(_wgslsmith_div_f32(-1276.0, -1547.0) <= _wgslsmith_f_op_f32(-1070.0), func_4(func_2(), min(_wgslsmith_mod_vec2_i32(u_input.c.zz, vec2<i32>(-8572, 70049)), u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1755.0, -1000.0, -618.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-431.0, 451.0, -286.0)))), Struct_1(!true, ~33495, -var_0.d), Struct_1(func_6(Struct_3(vec2<bool>(true, false), -1499.0, Struct_1(true, 1, 33688), Struct_2(vec2<u32>(u_input.b.x, 1u), u_input.b.x, -1, 1)), Struct_2(var_2.a, var_1, 1, -51142)).x, ~(-53096), var_2.d ^ u_input.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(483.0 + -1208.0) + _wgslsmith_f_op_f32(-741.0)), 763.0))), Struct_1(any(vec2<bool>(!false, !true)), u_input.c.x, var_0.c), func_9(vec2<i32>(var_0.d, (-1 | -16178) | var_0.d), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b >> (vec3<u32>(15182u, var_0.b, var_0.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.d.x, 0u, var_1))), ~vec3<u32>(63422u, var_1, 38891u)), 17u)], true, vec3<u32>(reverseBits(~var_1), ~0u, 35164u)));
                }
                case -2147483648: {
                    let var_1 = var_0.d;
                    global0 = array<Struct_3, 17>();
                }
                case -64577: {
                    var var_1 = ~(~(~firstTrailingBit(vec4<u32>(u_input.b.x, 20154u, var_0.a.x, 68128u) << (vec4<u32>(var_0.b, 16699u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))));
                    var_1 = vec4<u32>(func_9(countOneBits(u_input.c.zy), global0[_wgslsmith_index_u32(~0u, 17u)], !true, select(vec3<u32>(1u, 4294967295u, 55382u), u_input.b, false)).a.x >> (~firstLeadingBit(var_0.b) % 32u), ~(~(var_1.x | var_0.a.x)), 0u, var_0.a.x & func_2().a.x) ^ vec4<u32>(~var_1.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.x, 46268u, var_0.a.x, 1u)), vec4<u32>(_wgslsmith_sub_u32(0u, 4294967295u), var_0.b, ~var_1.x, ~var_0.b)), 16204u, 28395u);
                }
                default: {
                    global0 = array<Struct_3, 17>();
                }
            }
            global0 = array<Struct_3, 17>();
            loop {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                let var_1 = u_input.d.x;
            }
        }
    }
    if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5())) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -701.0) - -1586.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(920.0 - -132.0) - _wgslsmith_f_op_f32(sign(2500.0)))))) {
        loop {
            if (LOOP_COUNTERS[27u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            continue;
        }
        let var_1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(max(var_0.a.x, 1u), 23088u), reverseBits(func_2().a.x), (0u | var_0.b) & ~u_input.b.x, ~0u << ((u_input.b.x >> (280u % 32u)) % 32u)), select(firstLeadingBit(vec4<u32>(var_0.a.x, var_0.b, 25893u, 0u)) ^ vec4<u32>(u_input.d.x, u_input.d.x, var_0.a.x, 1u), min(vec4<u32>(36689u, u_input.d.x, var_0.b, 34180u) | vec4<u32>(u_input.b.x, 1u, 1u, var_0.a.x), vec4<u32>(u_input.d.x, var_0.a.x, 57092u, 0u)), !vec4<bool>(true, true, true, false)))), 17u)];
        switch (24543) {
            case 1: {
                return;
            }
            default: {
                let var_2 = vec2<bool>(!(!(-1 == -35671)), true);
                var var_3 = Struct_1(!((_wgslsmith_mult_u32(var_1.d.b, var_1.d.a.x) << (reverseBits(50397u) % 32u)) < var_0.a.x), var_0.d | -31276, i32(-1) * -31736);
                let var_4 = -vec2<i32>(abs(0), _wgslsmith_add_i32(_wgslsmith_mult_i32(firstLeadingBit(-1), _wgslsmith_clamp_i32(var_3.c, 1988, -1)), var_0.d));
                var var_5 = var_1.d;
                let var_6 = !var_1.a;
            }
        }
    }
    let var_1 = select(vec4<bool>(false, all(!(!vec2<bool>(true, false))), select(!(true && true), true, select(any(vec2<bool>(false, false)), true | false, true & false)), func_6(global0[_wgslsmith_index_u32(~reverseBits(var_0.b), 17u)], func_2()).x), !(!vec4<bool>(true || false, any(vec3<bool>(true, true, false)), !false, false)), true | any(func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(16559u, 5182u), vec2<u32>(0u, 74543u)))));
    var_0 = func_9(~select(min(vec2<i32>(var_0.c, 22401), u_input.a), ~(vec2<i32>(-7030, u_input.a.x) >> (u_input.d % vec2<u32>(32u))), _wgslsmith_f_op_f32(-1000.0) > _wgslsmith_f_op_f32(f32(-1.0) * -909.0)), Struct_3(!select(!vec2<bool>(false, var_1.x), func_6(global0[_wgslsmith_index_u32(var_0.b, 17u)], Struct_2(vec2<u32>(var_0.a.x, var_0.b), u_input.b.x, -1, var_0.d)), true), _wgslsmith_f_op_f32(-676.0 + -1136.0), Struct_1(!any(var_1), ~1748, -u_input.a.x ^ u_input.c.x), Struct_2(~abs(vec2<u32>(1u, var_0.b)), countOneBits(u_input.b.x) ^ ~1u, 0, u_input.a.x & -2147483648)), true, firstLeadingBit(vec3<u32>(~(var_0.b ^ 22506u), _wgslsmith_div_u32(0u & var_0.a.x, ~30897u), ~var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(u_input.c.yzy, firstTrailingBit(vec3<i32>(1, -2147483648, var_0.c)) << (~(~u_input.b) % vec3<u32>(32u))), _wgslsmith_sub_i32(~var_0.d, countOneBits(_wgslsmith_div_i32(1, var_0.c >> (var_0.b % 32u)))));
}

