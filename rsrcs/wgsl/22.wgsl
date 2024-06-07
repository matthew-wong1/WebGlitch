// {"0:0":[127,93,96,213]}
// Seed: 8570038444293138932

struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(false, vec4<bool>(true, true, false, false)), Struct_1(false, vec4<bool>(true, true, false, false)), Struct_1(false, vec4<bool>(true, false, false, false))), Struct_2(Struct_1(false, vec4<bool>(true, true, true, false)), Struct_1(true, vec4<bool>(true, false, false, true)), Struct_1(false, vec4<bool>(true, false, true, false))));

var<private> global1: array<vec2<i32>, 23>;

var<private> global2: f32;

var<private> LOOP_COUNTERS: array<u32, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_6() -> i32 {
    if (!((_wgslsmith_add_u32(0u, 0u) <= min(0u, 1u)) | false) & (countOneBits(reverseBits(~(-570))) < min(i32(-1) * -u_input.a, u_input.a))) {
        for (var var_0 = 2147483647; all(vec2<bool>(!all(!vec2<bool>(false, true)), !true)); ) {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            let var_1 = select(!select(vec2<bool>(!false, !false), vec2<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, false))), vec2<bool>(true, !false)), vec2<bool>(!(true & (1212.0 > -248.0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1164.0, -275.0)))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000.0)))), !vec2<bool>(false, true));
            var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-300.0, -2383.0)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-988.0, 466.0)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -336.0), _wgslsmith_f_op_f32(min(-1000.0, -423.0)))), vec2<bool>(var_1.x, false)))));
            var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -550.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)), var_2.x))));
            var var_3 = (i32(-1) * -2147483648) & ~_wgslsmith_clamp_i32(-48226 | min(2147483647, -21635), 14882, _wgslsmith_dot_vec3_i32(-vec3<i32>(-9197, -1, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 0, 1), vec3<i32>(u_input.a, 1, -1))));
            return 1;
        }
        for (var var_0 = 13009; all(select(vec2<bool>(!(true & true), false), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), 13983u == 49086u), vec2<bool>(select(true, false, true), !true), (29033 & 45978) == (-16145 >> (80602u % 32u))), false)); global1 = array<vec2<i32>, 23>()) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var var_1 = vec4<i32>(_wgslsmith_add_i32(i32(-1) * -u_input.a, _wgslsmith_mod_i32(~u_input.a, reverseBits(-2147483648))), -1, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a, 31036, abs(50940)), vec4<i32>(u_input.a, -59504, ~u_input.a, u_input.a)), -34085) & _wgslsmith_div_vec4_i32(min(-countOneBits(vec4<i32>(-38100, 27613, u_input.a, 35746)), reverseBits(~vec4<i32>(2147483647, 0, u_input.a, 0))), _wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.a, 1, 12849, u_input.a)), vec4<i32>(~56046, _wgslsmith_sub_i32(u_input.a, u_input.a), 19042 >> (0u % 32u), u_input.a)));
            let var_2 = global0[_wgslsmith_index_u32(1u & _wgslsmith_div_u32(firstTrailingBit(20998u), ~_wgslsmith_add_u32(4294967295u, 66289u) & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30409u, 0u, 0u), vec3<u32>(40313u, 26772u, 41403u)), max(0u, 9772u))), 2u)];
        }
    }
    let var_0 = Struct_1((select(485.0 >= -827.0, !false, all(vec4<bool>(true, false, false, false))) & select(60415u >= 4294967295u, !true, false)) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2014.0) + _wgslsmith_f_op_f32(f32(-1.0) * -1601.0)) < 811.0), select(vec4<bool>(!(!false), (u_input.a > u_input.a) && any(vec2<bool>(true, true)), u_input.a > ~(-2950), all(vec2<bool>(false, false))), select(vec4<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, true))), vec4<bool>(!true, true, !false, select(false, false, false)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)), any(!(!vec3<bool>(false, false, true)))));
    var var_1 = global0[_wgslsmith_index_u32(66248u, 2u)];
    switch (~(-18628)) {
        case -8650: {
            global0 = array<Struct_2, 2>();
            let var_2 = vec4<f32>(-543.0, _wgslsmith_f_op_f32(sign(672.0)), 273.0, _wgslsmith_f_op_f32(min(1052.0, _wgslsmith_f_op_f32(-333.0))));
            global2 = var_2.x;
        }
        case 21568: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(259.0, -1247.0), vec2<f32>(-981.0, 882.0), var_1.c.b.x)))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -145.0), -1827.0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(830.0, 210.0), vec2<f32>(-302.0, 1000.0), true))))))));
                return countOneBits(_wgslsmith_div_i32(-2147483648, -_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, 1, u_input.a), vec3<i32>(-4473, -1, u_input.a)), ~vec3<i32>(u_input.a, -13479, u_input.a))));
            }
            let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(522.0)) * _wgslsmith_f_op_f32(round(248.0))), -1546.0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -265.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198.0))))));
            global1 = array<vec2<i32>, 23>();
        }
        default: {
            switch (_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, 1), u_input.a)) {
                case 16005: {
                    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 2u)];
                    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(40402u, 46751u) << (vec2<u32>(43463u, 111008u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 43069u)) == select(~0u, countOneBits(27231u), var_0.a), select(!(!vec4<bool>(var_2.b.b.x, false, false, false)), select(vec4<bool>(false, var_2.a.b.x, false, var_0.a), vec4<bool>(var_1.a.a, var_2.c.b.x, true, false), vec4<bool>(false, var_2.a.b.x, true, var_1.a.b.x)), var_2.a.b)), var_1.b, Struct_1((-662 <= 30982) | true, vec4<bool>(all(select(vec2<bool>(var_0.b.x, var_2.c.a), vec2<bool>(false, true), true)), !all(vec3<bool>(true, var_2.b.a, true)), !false, false)));
                    let var_4 = Struct_1(false, var_3.c.b);
                    return ~(~(~_wgslsmith_add_i32(abs(u_input.a), u_input.a | 1)));
                }
                case 29356: {
                    global2 = _wgslsmith_f_op_f32(f32(-1.0) * -643.0);
                    var var_2 = global0[_wgslsmith_index_u32(59941u, 2u)];
                }
                default: {
                }
            }
        }
    }
    if (true) {
        var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -2431.0), _wgslsmith_f_op_f32(-736.0)))) * 125.0);
        let var_3 = (0u >> (~select(79249u, 1u, var_1.a.a) % 32u)) != abs(countOneBits(select(reverseBits(4294967295u), ~95441u, false)));
        global1 = array<vec2<i32>, 23>();
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245.0 + -400.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-305.0, -748.0)))) + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)));
            break;
        }
    }
    return u_input.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    for (var var_0 = 11037; var_0 > 1; var_0 += 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        global0 = array<Struct_2, 2>();
        continue;
    }
    if (false) {
        if (all(vec3<bool>(arg_1.a, !arg_1.b.x, !arg_1.a))) {
        }
    }
    switch (-1) {
        case 1: {
            for (; ; ) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                global2 = arg_0.x;
                var var_0 = arg_0.wz;
                break;
            }
            var var_0 = -(~_wgslsmith_clamp_i32(func_6(), 2147483647, u_input.a));
            if (!arg_1.a) {
                var var_1 = ~1u;
                var_0 = -2147483648;
                global0 = array<Struct_2, 2>();
            }
        }
        case 18990: {
            global1 = array<vec2<i32>, 23>();
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_0 = select(arg_1.b.zw, arg_1.b.zx, arg_1.a);
                continue;
            }
            var var_0 = Struct_1(arg_1.a, vec4<bool>(!true, true, !any(!vec4<bool>(false, true, false, arg_1.a)), arg_1.b.x));
            if (arg_1.a) {
                var_0 = Struct_1(false, vec4<bool>(all(arg_1.b.wz), select(var_0.a || var_0.a, true, any(!vec2<bool>(false, arg_1.a))), all(select(vec3<bool>(false, true, var_0.b.x), arg_1.b.yzz, true)), -1 > _wgslsmith_sub_i32(-u_input.a, ~(-45385))));
                return arg_1.b.x;
            }
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            }
        }
        default: {
        }
    }
    return !(!(!(!(true || true))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<bool> {
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            let var_0 = Struct_1(!(!false) & !(_wgslsmith_f_op_f32(-256.0 + -1000.0) != _wgslsmith_div_f32(356.0, -751.0)), vec4<bool>((1u > (52710u << (4294967295u % 32u))) & arg_1.a.a, false, any(arg_1.b.b.yzz) && arg_0.b.x, arg_0.b.x));
            let var_1 = Struct_2(Struct_1(!true, vec4<bool>(true, ~(-1) == u_input.a, !(var_0.a & false), any(vec3<bool>(false, true, false)))), arg_0, Struct_1(false, arg_0.b));
            let var_2 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u & 37579u, 85947u << (43289u % 32u)), _wgslsmith_mod_u32(1u, abs(1u))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 24042u, 21681u, 4294967295u) << (vec4<u32>(15886u, 4294967295u, 5593u, 61818u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, 118710u, 33781u, 13474u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 49455u, 0u), vec4<u32>(1266u, 5554u, 41954u, 0u))))) ^ ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 33311u), vec2<u32>(11977u, 17484u)), countOneBits(vec2<u32>(43687u, 39043u)), vec2<u32>(4388u, 24551u)), ~(~vec2<u32>(29029u, 0u)));
            global1 = array<vec2<i32>, 23>();
        }
    }
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(194.0 + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), 843.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1638.0 + -1916.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1210.0 + -451.0)))));
    if (!(-64269 >= abs(countOneBits(51504)))) {
        for (var var_1: i32; ~67180u >= select(0u, 12686u, true); var_1 += 1) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        }
        loop {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            let var_1 = ~vec2<u32>(~0u, abs(_wgslsmith_add_u32(3739u, 70467u)) >> (_wgslsmith_mod_u32(select(0u, 49865u, arg_1.b.a), 79310u) % 32u));
            global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
            var var_2 = global0[_wgslsmith_index_u32(countOneBits(reverseBits(70698u)), 2u)];
            let var_3 = select(vec4<bool>(!(-12032 == -59884) | !all(vec2<bool>(false, false)), all(select(vec2<bool>(arg_0.b.x, true), !var_2.c.b.wx, !vec2<bool>(var_2.c.a, false))), !(arg_0.a && arg_0.a) && true, !false), select(vec4<bool>(!false, !true, !(!arg_1.a.a), -488.0 >= _wgslsmith_f_op_f32(var_0.x - 537.0)), var_2.c.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.x, 203.0)), _wgslsmith_f_op_f32(1103.0 + -321.0))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)) * 1000.0)), arg_0.b.x);
        }
        return vec3<bool>(-437.0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-921.0))), !(_wgslsmith_div_u32(~34997u, firstLeadingBit(35921u)) >= _wgslsmith_mult_u32(firstLeadingBit(34214u), abs(31343u))), any(select(arg_0.b.wy, arg_1.a.b.xy, true)));
    }
    var var_1 = arg_1.c;
    var var_2 = arg_1;
    return !vec3<bool>(false, false, arg_1.c.a);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: u32) -> vec4<bool> {
    let var_0 = -359.0;
    for (var var_1 = -2147483648; var_1 <= -9861; global2 = 413.0) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        let var_2 = func_7(Struct_1(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1145.0, 209.0, var_0, var_0)))), Struct_1(any(vec3<bool>(arg_1, false, arg_1)), !vec4<bool>(true, true, false, false))), vec4<bool>(!arg_1, false, func_5(vec4<f32>(-945.0, var_0, var_0, var_0), Struct_1(arg_1, vec4<bool>(false, true, arg_1, arg_1))), arg_1)), global0[_wgslsmith_index_u32(0u, 2u)], ~select(vec3<i32>(u_input.a, u_input.a, u_input.a), firstLeadingBit(select(vec3<i32>(0, u_input.a, u_input.a), vec3<i32>(7975, u_input.a, -36737), vec3<bool>(arg_1, true, false))), arg_1));
        for (var var_3 = 104179; ; var_3 -= 1) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            var_1 = u_input.a;
            var var_4 = select(select(vec4<bool>(_wgslsmith_f_op_f32(sign(1581.0)) <= _wgslsmith_f_op_f32(403.0 - 1467.0), false, true, var_2.x), select(vec4<bool>(1120.0 < var_0, !false, false, !var_2.x), vec4<bool>(!true, false, true && true, !arg_1), !arg_1), !(!(!vec4<bool>(true, var_2.x, false, true)))), vec4<bool>(u_input.a < 25275, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0, arg_2, arg_3, 35808u), vec4<u32>(arg_0, 614u, arg_2, 25718u), arg_1), vec4<u32>(arg_0, arg_0, arg_3, 11993u)) >= 99228u, true, -_wgslsmith_sub_i32(u_input.a, -46699) < 24019), !(_wgslsmith_f_op_f32(f32(-1.0) * -1049.0) == var_0));
        }
        continue;
    }
    for (; arg_1; ) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        switch (-17115) {
            case 32577: {
                var var_1 = max(vec2<u32>(4294967295u, arg_0), ~vec2<u32>(4294967295u, ~abs(42266u)));
                continue;
            }
            case 1: {
                break;
            }
            default: {
                var var_1 = arg_2;
                let var_2 = -(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1, u_input.a, 2147483647, 1), vec4<i32>(u_input.a, 22551, u_input.a, u_input.a))) | _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(0, -2147483648, -2147483648, u_input.a)), select(abs(vec4<i32>(u_input.a, u_input.a, 2147483647, 47739)), max(vec4<i32>(-49641, -17803, 0, 2147483647), vec4<i32>(u_input.a, u_input.a, u_input.a, -15324)), true)));
            }
        }
        break;
    }
    let var_1 = !false;
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1792.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -367.0) + _wgslsmith_f_op_f32(1177.0 - 907.0))))));
    return vec4<bool>(true, arg_1, false, !true);
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-392.0) - 1468.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(812.0 * 257.0) - -182.0), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))))), -124.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(441.0))));
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
    }
    global0 = array<Struct_2, 2>();
    for (var var_0 = ~u_input.a; false | (u_input.a > _wgslsmith_div_i32(~(u_input.a >> (36329u % 32u)), _wgslsmith_sub_i32(41630, _wgslsmith_mod_i32(2147483647, u_input.a)))); ) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -610.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175.0) * 1000.0), _wgslsmith_div_f32(812.0, _wgslsmith_f_op_f32(-1108.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-613.0, _wgslsmith_f_op_f32(max(1409.0, 291.0)))))));
        var var_1 = Struct_1(true, !func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(84156u, 4294967295u, 1u, 3873u), vec4<u32>(2337u, 0u, 1u, 4294967295u)) >> (~9749u % 32u), true, ~_wgslsmith_mult_u32(59869u, 1u), _wgslsmith_add_u32(0u, 1u) | 33126u));
    }
    let var_0 = Struct_1(firstLeadingBit(firstLeadingBit(-2147483648)) >= countOneBits(-2147483648), select(select(vec4<bool>(true, all(vec2<bool>(false, false)), 1048.0 == -609.0, false), vec4<bool>(false & true, any(vec3<bool>(true, false, false)), !true, all(vec4<bool>(true, false, true, false))), vec4<bool>(any(vec2<bool>(true, true)), select(true, false, true), -359.0 < 1064.0, !false)), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), false));
    return _wgslsmith_f_op_f32(abs(-358.0));
}

fn func_2() -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1044.0, _wgslsmith_f_op_f32(func_3()), firstTrailingBit(0u) <= 4294967295u))) + _wgslsmith_f_op_f32(floor(250.0)));
    let var_0 = global0[_wgslsmith_index_u32(~(~select(_wgslsmith_clamp_u32(max(1145u, 14809u), 44976u, ~1u), 0u, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-679.0, 339.0, 3412.0, 777.0) - vec4<f32>(-1428.0, 801.0, -899.0, 1843.0)), Struct_1(false, vec4<bool>(false, true, false, false))))), 2u)];
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        let var_1 = ~abs(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 755) >> (~15509u % 32u), -(~u_input.a)));
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            var var_2 = false;
            var_2 = var_0.b.b.x;
        }
        for (var var_2 = -1; var_2 >= 2147483647; var_2 -= 1) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            continue;
        }
    }
    var var_1 = var_0.a;
    global0 = array<Struct_2, 2>();
    return Struct_2(Struct_1(any(vec3<bool>(false, var_1.a, false && true)), !var_1.b), var_0.b, Struct_1(var_1.b.x, vec4<bool>(all(!vec2<bool>(var_1.b.x, true)), _wgslsmith_div_f32(1325.0, 305.0) <= _wgslsmith_f_op_f32(-565.0), !(!var_0.c.b.x), var_1.a)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = func_2();
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        continue;
    }
    if (arg_0.x || true) {
        switch (-2147483648) {
            case -23947: {
                global2 = arg_1.x;
                global2 = 650.0;
            }
            case 1: {
                let var_1 = -17745;
                var var_2 = vec3<u32>(31964u, 0u, ~(~(~_wgslsmith_div_u32(1u, 4294967295u))));
                var var_3 = var_2.x;
            }
            case 23414: {
                var_0 = global0[_wgslsmith_index_u32(min(countOneBits(abs(_wgslsmith_clamp_u32(25524u | 4294967295u, ~2191u, ~9287u))), ~_wgslsmith_mult_u32(49561u, _wgslsmith_mult_u32(_wgslsmith_add_u32(9814u, 12063u), 4294967295u))), 2u)];
                var var_1 = func_2();
                var_1 = global0[_wgslsmith_index_u32(4294967295u, 2u)];
            }
            default: {
                let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1826.0 + arg_1.x), _wgslsmith_f_op_f32(362.0 * _wgslsmith_f_op_f32(449.0 * -516.0)), true)), _wgslsmith_f_op_f32(-1920.0), _wgslsmith_f_op_f32(-916.0 * -445.0));
                var var_2 = Struct_2(var_0.c, Struct_1(arg_0.x || all(select(arg_0.zy, vec2<bool>(true, var_0.a.b.x), var_0.c.a)), var_0.c.b), Struct_1(~(-14328 >> (123708u % 32u)) > reverseBits(u_input.a), func_2().c.b));
                let var_3 = 2167.0;
                let var_4 = _wgslsmith_add_u32(4294967295u, ~_wgslsmith_mult_u32(~0u | 24641u, _wgslsmith_add_u32(3607u, _wgslsmith_mult_u32(43254u, 0u))));
            }
        }
        global1 = array<vec2<i32>, 23>();
        var var_1 = true;
    }
    let var_1 = vec2<u32>(firstTrailingBit(4294967295u), abs(_wgslsmith_mult_u32(1u, 11778u | _wgslsmith_div_u32(1u, 1u))));
    var var_2 = true;
    return func_2();
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        let var_0 = arg_0.a.b;
        let var_1 = -2147483648;
        var var_2 = 65895u;
    }
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        loop {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            return _wgslsmith_clamp_u32(max(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 2518u), vec3<u32>(19153u, 8814u, 14185u)), ~5869u), firstTrailingBit(~35039u)) << (reverseBits(115313u) % 32u), ~abs(~(0u | 1u)), 29779u);
        }
        for (var var_0: i32; ; global0 = array<Struct_2, 2>()) {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1338.0, 233.0)) + vec2<f32>(2251.0, 1246.0)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-484.0 + 406.0), -1359.0)))));
            global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
            var var_2 = Struct_1(arg_0.a.a, arg_1.c.b);
            var var_3 = arg_1.c.b.xxz;
        }
    }
    let var_0 = 1u;
    for (var var_1 = 21023; _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1713.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(407.0 + -1580.0)))) != 239.0; global0 = array<Struct_2, 2>()) {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        continue;
    }
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        continue;
    }
    return _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(14194u, ~14661u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~(~func_8(func_1(vec3<bool>(false, true, true), vec2<f32>(636.0, 294.0)), global0[_wgslsmith_index_u32(12260u, 2u)])) | 64700u, 2u)];
    var var_1 = Struct_2(Struct_1(false, vec4<bool>(!all(var_0.c.b), abs(4294967295u) != _wgslsmith_clamp_u32(22613u, 4294967295u, 1u), !var_0.b.b.x, true)), func_1(select(!(!var_0.a.b.yxz), var_0.a.b.wzz, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(979.0, -1041.0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(889.0, -1163.0)), var_0.b.b.xz))))).c, func_2().b);
    let var_2 = -2196.0;
    global2 = 331.0;
    var var_3 = -u_input.a;
    global0 = array<Struct_2, 2>();
    loop {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
        let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(-var_2))));
        var var_5 = _wgslsmith_add_vec4_i32(~(~firstTrailingBit(vec4<i32>(1, 1, u_input.a, -1))), ~(~(-vec4<i32>(u_input.a, u_input.a, 0, u_input.a))));
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0, u_input.a, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(34403u, 60433u), vec2<u32>(0u, 48368u)) << (_wgslsmith_div_u32(4294967295u, 47035u) % 32u), 23u)], vec2<i32>(-35140, min(u_input.a, u_input.a))), countOneBits(-29039 & (-1 >> (0u % 32u)))), _wgslsmith_mod_i32(~(~_wgslsmith_mult_i32(-28486, -38134)), firstTrailingBit(-_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(60148u, 23u)]))), vec2<u32>(_wgslsmith_add_u32(15371u, 41248u), min(~20293u, _wgslsmith_mod_u32(1u, ~48488u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -2847.0, _wgslsmith_f_op_f32(max(var_2, -222.0)))));
}

