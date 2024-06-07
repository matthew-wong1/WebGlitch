// {"0:0":[152,126,172,30,117,34,145,123,129,224,109,197,131,52,77,251,238,68,117,30,184,122,161,182,243,121,119,66,251,207,5,163]}
// Seed: 17838809594674501891

struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: array<f32, 14> = array<f32, 14>(501.0, -1123.0, -1198.0, 213.0, -1261.0, 480.0, 578.0, 948.0, -719.0, -692.0, -1000.0, -766.0, 365.0, 177.0);

var<private> global2: vec4<f32> = vec4<f32>(1081.0, 577.0, -1000.0, 438.0);

var<private> LOOP_COUNTERS: array<u32, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<u32>) -> i32 {
    if (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-928.0) * global2.x) >= global2.x) {
        let var_0 = vec2<u32>(~abs(1u), u_input.c) << (~(~(_wgslsmith_add_vec2_u32(arg_3.zz, vec2<u32>(arg_3.x, 1u)) >> (vec2<u32>(87187u, 1u) % vec2<u32>(32u)))) % vec2<u32>(32u));
        global0 = array<vec4<i32>, 24>();
        let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-814.0, -171.0, 437.0) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(1000.0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-373.0), 1458.0)), -667.0))));
        var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(var_1))));
        if (all(!select(select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, false), vec3<bool>(arg_0, arg_0, true)), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0), arg_0), vec3<bool>(arg_0, all(vec3<bool>(arg_0, false, arg_0)), -1637.0 >= 709.0), arg_0))) {
            var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-451.0), var_1.x, global1[_wgslsmith_index_u32(u_input.c ^ var_0.x, 14u)])) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1132.0, -151.0, var_2.x, -1363.0))))));
            var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -641.0) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, 1499.0))), _wgslsmith_f_op_f32(round(425.0))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 14u)]), global1[_wgslsmith_index_u32((0u << (10074u % 32u)) ^ var_0.x, 14u)]);
        }
    }
    if (arg_0) {
        var var_0 = 8529;
        loop {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        }
        global1 = array<f32, 14>();
        global2 = vec4<f32>(_wgslsmith_f_op_f32(-952.0), -1950.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~abs(30285u), 14u)], global1[_wgslsmith_index_u32(4294967295u | ~u_input.c, 14u)])), 1021.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-821.0))));
    }
    for (var var_0 = -2147483648; var_0 > 0; ) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
    }
    global2 = vec4<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-286.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164.0) * _wgslsmith_f_op_f32(1159.0 * global1[_wgslsmith_index_u32(0u, 14u)])))), 883.0, -2149.0, global1[_wgslsmith_index_u32(arg_3.x, 14u)]);
    for (var var_0 = -21222; var_0 < -35972; var_0 = firstTrailingBit(arg_2.x)) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    return max(1, _wgslsmith_div_i32(i32(-1) * -23957, _wgslsmith_sub_i32(arg_1 << ((arg_3.x & arg_3.x) % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_2.zxy, arg_2.wxx), arg_1))));
}

fn func_5(arg_0: Struct_4) -> vec3<bool> {
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    let var_0 = arg_0;
    global0 = array<vec4<i32>, 24>();
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    switch (-31725) {
        case -1: {
            switch (~min(countOneBits(-2147483648), -(~func_6(arg_0.b, var_0.a, vec4<i32>(arg_0.a, var_0.a, var_0.a, -2147483648), vec4<u32>(arg_0.d, arg_0.d, 4294967295u, u_input.c))))) {
                case 2147483647: {
                }
                case 1: {
                }
                case -1: {
                }
                case 0: {
                    let var_1 = ~(-1880);
                    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, min(~51837u, 0u), 4294967295u, ~_wgslsmith_mod_u32(u_input.c, 0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.e.x, arg_0.e.x, 23369u, u_input.c), vec4<u32>(1u, 15686u, 38156u, 31768u), vec4<bool>(var_0.b, false, var_0.b, false)), vec4<u32>(14755u, u_input.c, 22221u, u_input.c)), abs(1u) >> (u_input.c % 32u), _wgslsmith_clamp_u32(firstLeadingBit(u_input.c), ~arg_0.d, ~1u), ~_wgslsmith_div_u32(4294967295u, arg_0.d))), _wgslsmith_sub_u32(~(arg_0.e.x | ~0u), 49068u));
                    global0 = array<vec4<i32>, 24>();
                    var var_3 = var_0.b;
                    var var_4 = select(!select(select(select(vec2<bool>(false, var_0.b), vec2<bool>(false, arg_0.b), vec2<bool>(var_0.b, arg_0.b)), select(vec2<bool>(var_0.b, arg_0.b), vec2<bool>(true, var_0.b), false), true), select(select(vec2<bool>(var_0.b, arg_0.b), vec2<bool>(false, var_0.b), arg_0.b), vec2<bool>(var_0.b, true), !vec2<bool>(false, var_0.b)), !vec2<bool>(arg_0.b, arg_0.b)), !select(!(!vec2<bool>(false, arg_0.b)), vec2<bool>(true || var_0.b, !arg_0.b), !(1 <= arg_0.a)), select(select(vec2<bool>(true, any(vec4<bool>(true, true, var_0.b, false))), vec2<bool>(all(vec3<bool>(false, var_0.b, false)), !true), true), select(select(vec2<bool>(arg_0.b, var_0.b), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(var_0.b, var_0.b)), vec2<bool>(arg_0.b, arg_0.b)), select(vec2<bool>(var_0.b, arg_0.b), vec2<bool>(true, var_0.b), select(arg_0.b, false, true)), _wgslsmith_sub_u32(83860u, 1u) != reverseBits(7229u)), select(vec2<bool>(var_2.b < var_0.d, -1 == u_input.a), select(select(vec2<bool>(arg_0.b, true), vec2<bool>(true, true), false), !vec2<bool>(var_0.b, arg_0.b), select(vec2<bool>(true, true), vec2<bool>(false, arg_0.b), arg_0.b)), vec2<bool>(arg_0.b, var_0.b))));
                }
                default: {
                }
            }
            var var_1 = vec2<bool>(true, !select(!(!var_0.b), !false, true));
            for (var var_2 = 6119; ; var_1 = vec2<bool>(var_1.x, var_1.x)) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var var_3 = Struct_1(~var_0.e, -_wgslsmith_add_i32(-var_0.a, u_input.d.x) == ~u_input.d.x, !(!(!(!vec4<bool>(true, var_0.b, false, var_0.b)))), _wgslsmith_f_op_f32(ceil(-102.0)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-345.0, global1[_wgslsmith_index_u32(arg_0.e.x, 14u)], var_0.c, global1[_wgslsmith_index_u32(var_0.e.x, 14u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0.c, 630.0, arg_0.c)))), vec4<f32>(global2.x, 574.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - -110.0), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 14u)])), arg_0.c))));
                var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, u_input.d.x, 13914, 2147483647), global0[_wgslsmith_index_u32(3074u, 24u)], vec4<i32>(u_input.d.x, -1, u_input.a, -1)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e.x, u_input.c, var_0.d, var_0.d), vec4<u32>(arg_0.d, var_3.a.x, 0u, u_input.c)) % vec4<u32>(32u))), -max(~global0[_wgslsmith_index_u32(58295u, 24u)], min(vec4<i32>(arg_0.a, u_input.a, 1, arg_0.a), vec4<i32>(arg_0.a, -2147483648, arg_0.a, var_0.a)))), ~_wgslsmith_mult_vec4_i32(countOneBits(select(vec4<i32>(1, u_input.a, 0, 1), global0[_wgslsmith_index_u32(var_3.a.x, 24u)], vec4<bool>(var_1.x, false, true, true))), global0[_wgslsmith_index_u32(22305u, 24u)]));
                var var_4 = Struct_1(arg_0.e, true, select(!(!vec4<bool>(var_1.x, arg_0.b, true, var_1.x)), vec4<bool>((arg_0.c != -973.0) | (0 < var_0.a), !false, var_3.b, any(select(var_3.c.ywy, vec3<bool>(false, var_1.x, var_0.b), true))), !var_3.b), _wgslsmith_f_op_f32(-1296.0), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(var_3.e)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(51527u, 14u)], arg_0.c, global1[_wgslsmith_index_u32(arg_0.e.x, 14u)], -242.0) * vec4<f32>(143.0, global1[_wgslsmith_index_u32(100741u, 14u)], var_3.e.x, global1[_wgslsmith_index_u32(var_3.a.x, 14u)])) + _wgslsmith_f_op_vec4_f32(floor(var_3.e)))))));
                let var_5 = u_input.d;
            }
            let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.zwz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-625.0, -290.0, global2.x))), all(!vec3<bool>(var_0.b, true, arg_0.b))))));
            if (!var_0.b) {
                var var_3 = all(vec4<bool>(any(vec3<bool>(false, false, any(vec2<bool>(var_1.x, var_1.x)))), false, !(!arg_0.b), all(!(!vec4<bool>(var_1.x, false, var_1.x, var_0.b)))));
                let var_4 = 1;
            }
        }
        case 21700: {
            if (var_0.b) {
            }
            for (var var_1 = 0; var_1 > 36197; var_1 += 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
            let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1333.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(f32(-1.0) * -448.0))))));
        }
        case 17980: {
            var var_1 = u_input.a;
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                continue;
            }
            switch (~(-1)) {
                case -1: {
                    var var_2 = arg_0.a;
                    var var_3 = (_wgslsmith_mod_vec2_i32(min(vec2<i32>(0, 2147483647), vec2<i32>(u_input.b, u_input.a)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(18561u, arg_0.d), arg_0.e) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_i32(u_input.d.yy, u_input.d.zz, u_input.d.yx)) ^ (vec2<i32>(var_0.a, ~0) << (reverseBits(_wgslsmith_add_vec2_u32(arg_0.e, vec2<u32>(var_0.e.x, 93270u))) % vec2<u32>(32u)))) << (_wgslsmith_add_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.d, 13u), _wgslsmith_div_vec2_u32(arg_0.e, vec2<u32>(var_0.e.x, var_0.e.x))), ~arg_0.e), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.c, arg_0.d)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, arg_0.e.x), vec2<u32>(var_0.d, 18068u), vec2<u32>(arg_0.d, 1u))))) % vec2<u32>(32u));
                    let var_4 = _wgslsmith_f_op_f32(exp2(arg_0.c));
                    global1 = array<f32, 14>();
                }
                case -40940: {
                }
                case 1: {
                    var var_2 = Struct_4(_wgslsmith_sub_i32(-1, u_input.a), true, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(0u), 14u)] * -182.0), 0u, vec2<u32>(select(u_input.c & ~0u, arg_0.e.x, !any(vec2<bool>(false, true))), 29822u));
                    let var_3 = Struct_1(firstLeadingBit(~vec2<u32>(~arg_0.e.x, reverseBits(arg_0.e.x))), all(!(!vec4<bool>(false, arg_0.b, false, var_2.b))), vec4<bool>(all(select(select(vec3<bool>(var_2.b, true, false), vec3<bool>(arg_0.b, var_0.b, var_2.b), vec3<bool>(true, var_2.b, var_2.b)), !vec3<bool>(var_2.b, true, var_2.b), any(vec4<bool>(var_2.b, true, var_2.b, var_0.b)))), var_2.b, !(_wgslsmith_f_op_f32(exp2(global2.x)) >= -740.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1412.0 + global1[_wgslsmith_index_u32(arg_0.d, 14u)])) < -182.0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))), _wgslsmith_f_op_f32(-348.0 - 938.0))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(var_2.e.x, 14u)], 251.0, arg_0.c, var_0.c), vec4<f32>(global2.x, var_0.c, 1927.0, -1351.0), vec4<bool>(true, false, var_2.b, false))) + vec4<f32>(global2.x, 2248.0, var_2.c, 1800.0)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(114522u, 14u)], -1020.0, 384.0, -1060.0)))), vec4<f32>(var_0.c, _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(floor(-1577.0)), _wgslsmith_f_op_f32(exp2(-439.0)))))));
                    let var_4 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.c, u_input.c), ~arg_0.d, abs(1u), _wgslsmith_mult_u32(29575u, 0u)), vec4<u32>(~var_2.d, var_2.d, var_3.a.x, 44595u)), ~(~vec4<u32>(4294967295u, var_2.e.x, arg_0.e.x, arg_0.d))), countOneBits(abs(arg_0.d)));
                    var var_5 = ~(-1);
                    var var_6 = ~firstTrailingBit(vec2<i32>(var_2.a, 8301));
                }
                default: {
                    let var_2 = select(!vec4<bool>(arg_0.b, !any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), true, true), select(select(!(!vec4<bool>(var_0.b, false, var_0.b, true)), select(select(vec4<bool>(arg_0.b, var_0.b, var_0.b, false), vec4<bool>(false, false, var_0.b, var_0.b), true), !vec4<bool>(true, arg_0.b, var_0.b, arg_0.b), select(vec4<bool>(var_0.b, arg_0.b, arg_0.b, false), vec4<bool>(arg_0.b, false, true, true), true)), !(!vec4<bool>(true, arg_0.b, var_0.b, arg_0.b))), !vec4<bool>(true, var_0.b, var_0.b, true), true), var_0.b);
                    var var_3 = var_2;
                    let var_4 = ~(0u >> (var_0.d % 32u));
                    global2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, -604.0, -2428.0, global1[_wgslsmith_index_u32(7144u, 14u)]))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, 228.0, global1[_wgslsmith_index_u32(1u, 14u)], -797.0)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.d, 14u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(66306u, 14u)]), -578.0, -451.0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(946.0, -1881.0, var_0.c, global2.x)), vec4<bool>(any(vec3<bool>(true, var_0.b, true)), false, all(var_3.zx), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1000.0, global1[_wgslsmith_index_u32(47182u, 14u)], var_0.c)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000.0, var_0.c, -937.0, 573.0)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(229.0, -698.0, global1[_wgslsmith_index_u32(1u, 14u)], var_0.c)))) + vec4<f32>(_wgslsmith_f_op_f32(step(1616.0, -229.0)), var_0.c, _wgslsmith_f_op_f32(-331.0), _wgslsmith_f_op_f32(1287.0 - global1[_wgslsmith_index_u32(4294967295u, 14u)]))))));
                    var var_5 = abs(reverseBits(abs(~vec4<u32>(var_0.d, 94516u, var_0.d, var_4))) >> (vec4<u32>(_wgslsmith_add_u32(var_4 ^ 1u, 0u), var_4, ~abs(arg_0.d), ~(~23889u)) % vec4<u32>(32u)));
                }
            }
        }
        case 1: {
            if (arg_0.b) {
                var var_1 = vec2<i32>(23649, arg_0.a);
            }
            var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(global2.yzw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.zwz, global2.zzw))));
            global0 = array<vec4<i32>, 24>();
        }
        default: {
            let var_1 = Struct_5(global2.www);
            if (any(select(select(!vec3<bool>(true, true, arg_0.b), vec3<bool>(false, true, true), !true), !(!(!vec3<bool>(true, true, arg_0.b))), true))) {
            }
            var var_2 = Struct_3(~countOneBits(~(~vec4<u32>(80760u, u_input.c, var_0.d, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, 1035.0, -882.0, -1069.0))), vec4<f32>(-680.0, var_0.c, arg_0.c, -186.0))))), Struct_1(_wgslsmith_div_vec2_u32(max(arg_0.e, var_0.e), select(var_0.e, var_0.e, true)) & firstTrailingBit(var_0.e), false, !(!(!vec4<bool>(var_0.b, arg_0.b, false, true))), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1195.0, -1239.0, var_0.c, global2.x))))))));
            var_2 = Struct_3(_wgslsmith_mod_vec4_u32(select(vec4<u32>(~u_input.c, arg_0.e.x, 53183u | 1u, abs(4294967295u)), ~(var_2.a << (var_2.a % vec4<u32>(32u))), !any(vec3<bool>(var_2.c.b, arg_0.b, var_0.b))), _wgslsmith_div_vec4_u32(var_2.a, vec4<u32>(_wgslsmith_sub_u32(var_0.e.x, u_input.c), abs(40151u), var_0.d, 16160u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26229u, 14u)]) * _wgslsmith_f_op_f32(f32(-1.0) * -921.0)), global2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c.d), _wgslsmith_f_op_f32(f32(-1.0) * -760.0))), -402.0)), var_2.c);
        }
    }
    return select(select(select(vec3<bool>(all(vec2<bool>(var_0.b, arg_0.b)), 329.0 > global1[_wgslsmith_index_u32(0u, 14u)], true), vec3<bool>(4998 < 454, var_0.b | arg_0.b, !false), select(select(vec3<bool>(var_0.b, true, false), vec3<bool>(false, var_0.b, arg_0.b), false), vec3<bool>(var_0.b, arg_0.b, true), !true)), vec3<bool>(_wgslsmith_f_op_f32(480.0 + -1293.0) > global2.x, !(!var_0.b), false), !false), !select(vec3<bool>(arg_0.b, 2147483647 > -1, var_0.b), select(vec3<bool>(false, false, arg_0.b), select(vec3<bool>(var_0.b, true, true), vec3<bool>(var_0.b, true, false), vec3<bool>(false, false, var_0.b)), vec3<bool>(arg_0.b, arg_0.b, false)), !vec3<bool>(true, true, true)), !true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_2.wyw * vec3<f32>(arg_2.x, global1[_wgslsmith_index_u32(0u, 14u)], 2344.0)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(global2.wwy)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 157.0, global2.x), vec3<f32>(-274.0, 2158.0, arg_2.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_2.wzz))), vec3<f32>(-906.0, _wgslsmith_f_op_f32(-778.0), _wgslsmith_div_f32(-2181.0, -1444.0))))) + global2.wwz);
    var var_1 = ~select(u_input.d.zz, vec2<i32>(max(abs(u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, -8251)), _wgslsmith_div_i32(min(2147483647, 60953), u_input.b)), all(func_5(Struct_4(u_input.a, arg_1.x, -240.0, 10898u, vec2<u32>(arg_3, 13864u)))) == false);
    global0 = array<vec4<i32>, 24>();
    for (var var_2: i32; var_2 == 2147483647; var_2 = u_input.a) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        for (var var_3 = -8338; any(select(vec2<bool>(any(vec3<bool>(arg_1.x, true, false)) && (arg_1.x & false), arg_1.x), select(select(select(arg_1, arg_1, vec2<bool>(arg_1.x, arg_1.x)), arg_1, func_5(Struct_4(u_input.a, true, var_0.x, 21356u, vec2<u32>(0u, u_input.c))).zz), func_5(Struct_4(1, arg_1.x, 1045.0, 40181u, arg_0.a.zy)).xz, (81442 <= 6931) | (-675.0 > -375.0)), select(!arg_1, select(arg_1, vec2<bool>(arg_1.x, arg_1.x), arg_1), _wgslsmith_sub_u32(0u, arg_0.b) > ~17873u))); var_3 -= 1) {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        }
    }
    var var_2 = _wgslsmith_f_op_f32(f32(-1.0) * -238.0);
    return Struct_3(abs(min(abs(vec4<u32>(arg_3, 2737u, 0u, 83248u)) & arg_0.a, arg_0.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_2 - vec4<f32>(1119.0, 1086.0, var_0.x, -944.0))))))), Struct_1(arg_0.a.wy, all(!vec3<bool>(true, false, arg_1.x)), select(select(select(vec4<bool>(arg_1.x, false, true, true), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, false)), vec4<bool>(arg_1.x, true, arg_1.x, true), true), !(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), vec4<bool>(false, !false, arg_1.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * global1[_wgslsmith_index_u32(0u ^ 14429u, 14u)]) - 397.0), _wgslsmith_f_op_vec4_f32(-arg_2)));
}

fn func_7(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = arg_2.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.b.yw)));
    for (var var_2 = 15051; ; global2 = _wgslsmith_f_op_vec4_f32(-arg_1.c.e)) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        var var_3 = false;
        loop {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            var var_4 = Struct_4(max(-(~0), arg_3.x & -_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(arg_3.x, 1, u_input.b))), 16697u > _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(arg_2.x, arg_1.a.x)), ~arg_2.yw), -1000.0, 4294967295u, vec2<u32>(arg_2.x, countOneBits(arg_1.c.a.x) ^ ~7561u) | abs(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1.c.a.x, 37253u)), ~vec2<u32>(var_0, u_input.c))));
        }
        var var_4 = countOneBits(-20292);
        let var_5 = u_input.d.yx;
    }
    var var_2 = 70003u ^ _wgslsmith_mult_u32(~reverseBits(4294967295u), ~arg_1.c.a.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-253.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000.0))), _wgslsmith_f_op_f32(1000.0 * _wgslsmith_f_op_f32(select(-1211.0, _wgslsmith_div_f32(var_1.x, 244.0), !false))), global1[_wgslsmith_index_u32(49150u, 14u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-878.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * global1[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.x * -227.0), _wgslsmith_f_op_f32(trunc(1793.0)), arg_1.c.c.x)), -707.0) - arg_1.b), arg_1.c.b));
    return ~_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_1.a.zw), vec2<u32>(~(1u & u_input.c), 16167u));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec3<bool> {
    var var_0 = global2.xy;
    let var_1 = countOneBits(~(~4294967295u)) & _wgslsmith_mult_u32(arg_1, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(65810u, 0u, 7210u, arg_1), vec4<u32>(39228u, arg_1, 0u, 27342u)), firstLeadingBit(vec4<u32>(arg_1, u_input.c, u_input.c, 11663u))));
    let var_2 = ~(func_7(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1351.0, 1211.0, 2138.0))), func_4(Struct_2(vec4<u32>(var_1, 16734u, u_input.c, u_input.c), u_input.c), !vec2<bool>(true, false), vec4<f32>(-2267.0, global1[_wgslsmith_index_u32(arg_1, 14u)], -1117.0, -1920.0), ~13755u), vec4<u32>(arg_1, arg_1, abs(var_1), ~u_input.c), vec2<i32>(-1) * -vec2<i32>(2147483647, 1)) & ~(arg_1 << (~1u % 32u)));
    var var_3 = func_4(Struct_2(min(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, var_1, 4294967295u), vec4<u32>(1u, var_2, 38894u, var_2)), vec4<u32>(var_1, 84543u, 4294967295u, var_1)) & ~vec4<u32>(69897u, var_1, 4294967295u, 126733u), countOneBits(~0u)), !select(vec2<bool>(true, func_5(Struct_4(arg_0.x, true, global1[_wgslsmith_index_u32(arg_1, 14u)], 4294967295u, vec2<u32>(0u, var_1))).x), vec2<bool>(true, all(vec4<bool>(false, false, false, false))), !select(vec2<bool>(true, true), vec2<bool>(false, false), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), -550.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -802.0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_1, 14u)], global2.x)))))), abs(arg_1)).c;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_2(vec4<u32>(0u, 86021u, 1u, u_input.c), var_1), vec2<bool>(false, var_3.b), _wgslsmith_f_op_vec4_f32(var_3.e + vec4<f32>(159.0, 1516.0, 1327.0, var_0.x)), 0u).c.e.x)), _wgslsmith_f_op_f32(step(global2.x, -566.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 14u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -704.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -1000.0)) * var_3.e.x)) - _wgslsmith_f_op_f32(-global2.x)));
    return var_3.c.yzz;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: Struct_5) -> Struct_5 {
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        for (var var_0 = 2147483647; select(any(vec2<bool>(false, arg_1.c.b)), !(select(false && arg_0, !false, true) & any(!vec3<bool>(arg_0, arg_0, false))), arg_1.c.b); var_0 -= 1) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            break;
        }
        if (false) {
            global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global1[_wgslsmith_index_u32(1u, 14u)], arg_1.c.d, -387.0) + vec4<f32>(arg_3.a.x, -838.0, arg_3.a.x, arg_3.a.x)))));
            var var_0 = arg_3;
            continue;
        }
    }
    var var_0 = vec3<bool>(all(select(func_3(vec2<i32>(-2147483648, -1), ~4294967295u), vec3<bool>(arg_1.c.b, false, arg_1.c.b), !vec3<bool>(arg_0, arg_1.c.b, arg_1.c.c.x))), arg_1.c.c.x, true);
    var var_1 = func_4(Struct_2(arg_1.a, ~u_input.c), !vec2<bool>(!arg_1.c.c.x, !false), _wgslsmith_div_vec4_f32(arg_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.c.e * vec4<f32>(1536.0, -771.0, global1[_wgslsmith_index_u32(u_input.c, 14u)], 114.0)))))), 46321u).c.c;
    for (var var_2 = -25185; var_2 <= -4251; var_0 = func_3(u_input.d.zz, _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_add_u32(u_input.c, 4294967295u)))) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        switch (u_input.a) {
            case 1: {
                break;
            }
            case 42743: {
                global0 = array<vec4<i32>, 24>();
                var_2 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~global0[_wgslsmith_index_u32(arg_2, 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)]) ^ (~1 << (arg_1.a.x % 32u)), 21247, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, u_input.a), ~0) >> (~min(arg_2, arg_2) % 32u));
            }
            default: {
                let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052.0 + -515.0)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(65113u, 14u)], global2.x, false)), -388.0))) + global2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.a.x, 14u)]))))));
                let var_4 = _wgslsmith_f_op_f32(min(1615.0, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)));
                var_1 = !func_4(Struct_2(~(~vec4<u32>(0u, 4294967295u, arg_2, 79652u)), _wgslsmith_div_u32(1u, arg_2 & 33901u)), vec2<bool>(false, false), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 14u)] + _wgslsmith_f_op_f32(-arg_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 + 1000.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1480.0, -1000.0)) - global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 1u), 14u)]), 1000.0), arg_2).c.c;
                let var_5 = 0u;
                continue;
            }
        }
    }
    var_1 = !vec4<bool>(var_0.x, func_4(Struct_2(min(arg_1.a, vec4<u32>(arg_2, 12959u, 4294967295u, arg_2)), 105545u), var_0.xy, vec4<f32>(_wgslsmith_f_op_f32(2888.0 - 880.0), _wgslsmith_f_op_f32(arg_1.c.d - global1[_wgslsmith_index_u32(arg_1.c.a.x, 14u)]), arg_1.b.x, arg_1.c.e.x), ~min(arg_2, u_input.c)).c.c.x, any(func_4(Struct_2(arg_1.a, u_input.c), !vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1833.0, arg_1.b.x, global1[_wgslsmith_index_u32(arg_2, 14u)], global1[_wgslsmith_index_u32(16492u, 14u)])), _wgslsmith_add_u32(62104u, arg_2)).c.c), min(u_input.a ^ u_input.d.x, u_input.a) <= _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483648, -2147483648), -u_input.d.x));
    return arg_3;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_5) -> f32 {
    var var_0 = arg_1;
    let var_1 = Struct_2(~((~vec4<u32>(u_input.c, 1799u, 67849u, arg_0.a.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.a.x, u_input.c, u_input.c), vec4<u32>(0u, 0u, 39793u, 1u))) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 1462u, u_input.c, 17346u), reverseBits(vec4<u32>(1u, arg_0.a.x, u_input.c, 1u)))), _wgslsmith_mod_u32(~arg_0.a.x, 0u));
    let var_2 = 45719u;
    var var_3 = -1476.0;
    let var_4 = func_3(vec2<i32>(u_input.b, ~(~reverseBits(0))), 6696u).x;
    return var_0.a.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    global0 = array<vec4<i32>, 24>();
    for (var var_0 = 2147483647; false; var_0 -= 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        global2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-410.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), 1000.0)))) + global2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1906.0 + -379.0), _wgslsmith_f_op_f32(func_8(arg_3, func_2(true, Struct_3(vec4<u32>(4294967295u, arg_3.a.x, u_input.c, u_input.c), arg_3.e, Struct_1(vec2<u32>(arg_3.a.x, 81218u), arg_2.x, arg_3.c, arg_0, vec4<f32>(-2003.0, global2.x, global2.x, global1[_wgslsmith_index_u32(u_input.c, 14u)]))), 23258u, Struct_5(vec3<f32>(2281.0, arg_3.d, -1000.0))))))), 1411.0)), -1511.0);
        switch (u_input.a) {
            case -2147483648: {
                var var_1 = func_4(Struct_2(vec4<u32>(_wgslsmith_div_u32(1u, u_input.c), ~1u >> (0u % 32u), _wgslsmith_add_u32(arg_3.a.x, 2363u), ~4294967295u), _wgslsmith_dot_vec4_u32(func_4(Struct_2(vec4<u32>(arg_3.a.x, arg_3.a.x, 22296u, arg_3.a.x), arg_3.a.x), arg_3.c.zx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1[_wgslsmith_index_u32(arg_3.a.x, 14u)], -1244.0, global2.x)), ~15537u).a, ~(~vec4<u32>(u_input.c, 35076u, u_input.c, u_input.c)))), !vec2<bool>(any(arg_2), arg_3.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.e - vec4<f32>(-333.0, global2.x, global1[_wgslsmith_index_u32(arg_3.a.x, 14u)], arg_3.d)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_3.e), _wgslsmith_f_op_vec4_f32(-arg_3.e)))) + _wgslsmith_div_vec4_f32(arg_3.e, _wgslsmith_f_op_vec4_f32(-arg_3.e))), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, 4294967295u) >> (_wgslsmith_dot_vec2_u32(min(arg_3.a, vec2<u32>(60260u, 33167u)), arg_3.a | arg_3.a) % 32u), abs(_wgslsmith_div_u32(0u, 0u))));
            }
            case 0: {
                continue;
            }
            case 25144: {
                let var_1 = -arg_1;
                let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_4(Struct_2(vec4<u32>(0u, 20136u, arg_3.a.x, arg_3.a.x), 62776u), vec2<bool>(true, false), arg_3.e, ~0u).c.e)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 14u)] * arg_3.d)), arg_3.d, _wgslsmith_f_op_f32(1000.0 - 111.0), -1489.0)));
                var var_3 = u_input.c;
                global0 = array<vec4<i32>, 24>();
                var var_4 = func_3(-u_input.d.yz, select(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(4294967295u, arg_3.a.x, arg_3.a.x), vec3<u32>(arg_3.a.x, arg_3.a.x, arg_3.a.x)), ~(~vec3<u32>(4802u, 30743u, 0u))), arg_3.a.x, arg_3.b & arg_3.c.x)).x;
            }
            case 657: {
                let var_1 = 1104.0;
                let var_2 = _wgslsmith_f_op_f32(678.0 - -1066.0);
                let var_3 = vec2<f32>(2795.0, global2.x);
            }
            default: {
                break;
            }
        }
        break;
    }
    let var_0 = func_4(Struct_2(vec4<u32>(u_input.c, ~_wgslsmith_mod_u32(15969u, u_input.c), 58961u, arg_3.a.x), reverseBits(_wgslsmith_mod_u32(72417u, ~arg_3.a.x))), func_3(~(u_input.d.zx << (arg_3.a % vec2<u32>(32u))), ~(~arg_3.a.x)).xy, arg_3.e, arg_3.a.x);
    loop {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        switch (countOneBits(21173)) {
            case -31867: {
                let var_1 = global1[_wgslsmith_index_u32(280u, 14u)];
                continue;
            }
            case 17175: {
                var var_1 = !func_5(Struct_4(reverseBits(-u_input.d.x), func_3(countOneBits(vec2<i32>(9104, 1)), _wgslsmith_dot_vec2_u32(var_0.a.yy, vec2<u32>(var_0.c.a.x, 9824u))).x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(25815u, 14u)] + _wgslsmith_f_op_f32(-arg_3.d)), _wgslsmith_sub_u32(abs(u_input.c), u_input.c), ~arg_3.a));
                global1 = array<f32, 14>();
                global1 = array<f32, 14>();
                return arg_3.e.x;
            }
            case 0: {
                var var_1 = Struct_4(_wgslsmith_sub_i32(~0 & select(abs(-1), -8950, var_0.c.c.x), arg_1), var_0.c.c.x, _wgslsmith_f_op_f32(-global2.x), 4294967295u, min(vec2<u32>(0u, ~0u), vec2<u32>(~(~25448u), 1u)));
                var_1 = Struct_4(arg_1, !func_4(Struct_2(abs(var_0.a), firstLeadingBit(33074u)), arg_2.yz, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_3.e - vec4<f32>(var_1.c, global2.x, 739.0, global1[_wgslsmith_index_u32(u_input.c, 14u)])))), 1u).c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1570.0, -1934.0))), arg_3.a.x, arg_3.a);
                var var_2 = ~vec2<u32>(countOneBits(~_wgslsmith_div_u32(54344u, 105779u)), 46039u);
                continue;
            }
            case -1: {
                var var_1 = Struct_2(select(var_0.a, vec4<u32>(0u, _wgslsmith_div_u32(0u, 1u), (var_0.a.x | 17062u) << (~1u % 32u), arg_3.a.x), vec4<bool>(func_5(Struct_4(1, true, var_0.c.e.x, arg_3.a.x, var_0.c.a)).x, func_4(Struct_2(var_0.a, 36728u), vec2<bool>(arg_2.x, arg_3.c.x), vec4<f32>(global2.x, arg_3.e.x, global1[_wgslsmith_index_u32(arg_3.a.x, 14u)], 983.0), arg_3.a.x).c.b && arg_3.b, true, !false)), 0u);
            }
            default: {
                var var_1 = Struct_1(max(var_0.a.ww, _wgslsmith_mult_vec2_u32(max(arg_3.a, vec2<u32>(arg_3.a.x, u_input.c)), arg_3.a) ^ vec2<u32>(arg_3.a.x, ~u_input.c)), all(func_4(Struct_2(var_0.a & vec4<u32>(0u, arg_3.a.x, arg_3.a.x, u_input.c), 1u), !func_4(Struct_2(var_0.a, 11230u), vec2<bool>(arg_3.b, false), vec4<f32>(var_0.b.x, global2.x, arg_0, arg_3.d), 4007u).c.c.yz, arg_3.e, _wgslsmith_sub_u32(abs(arg_3.a.x), _wgslsmith_div_u32(var_0.c.a.x, var_0.c.a.x))).c.c.ww), select(!vec4<bool>(arg_3.c.x, u_input.a > 1676, func_4(Struct_2(var_0.a, 0u), vec2<bool>(arg_2.x, false), vec4<f32>(var_0.b.x, global2.x, 244.0, 1498.0), u_input.c).c.c.x, any(var_0.c.c)), select(select(vec4<bool>(var_0.c.b, var_0.c.c.x, arg_3.c.x, true), !vec4<bool>(arg_3.b, arg_3.c.x, false, arg_2.x), true || false), arg_3.c, !vec4<bool>(true, arg_2.x, false, var_0.c.b)), arg_2.x), 402.0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-895.0), var_0.b.x, _wgslsmith_f_op_f32(ceil(-1344.0)), _wgslsmith_f_op_f32(min(756.0, arg_3.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-927.0, 381.0, -664.0, 1704.0)), any(vec4<bool>(arg_2.x, true, false, var_0.c.c.x)))) + var_0.c.e));
                global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1303.0), global1[_wgslsmith_index_u32(abs(u_input.c), 14u)], arg_3.d, 632.0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-858.0, -2719.0, arg_3.e.x, 1163.0))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(f32(-1.0) * -490.0), _wgslsmith_f_op_f32(f32(-1.0) * -331.0), global1[_wgslsmith_index_u32(u_input.c, 14u)]))), var_1.e, all(vec2<bool>(arg_2.x, countOneBits(u_input.a) <= u_input.a))));
            }
        }
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            break;
        }
    }
    var var_1 = func_4(Struct_2(vec4<u32>(~(~var_0.a.x), 50515u, _wgslsmith_dot_vec2_u32(arg_3.a, _wgslsmith_mod_vec2_u32(var_0.c.a, var_0.a.zx)), min(var_0.a.x, arg_3.a.x)), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_3.a.x, 28582u, arg_3.a.x, u_input.c), var_0.a, select(vec4<bool>(true, arg_2.x, true, true), vec4<bool>(true, arg_3.b, arg_2.x, true), false)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, 1u, arg_3.a.x, 1u), var_0.a))), !(!(!arg_2.xy)), _wgslsmith_f_op_vec4_f32(-var_0.c.e), 0u).c;
    return _wgslsmith_f_op_f32(sign(var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        var var_0 = 27683u;
        if (!(!any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), true)))) {
            let var_1 = -57045;
            let var_2 = Struct_4(-1, global2.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(15587u, 14u)], u_input.a, vec3<bool>(true, true, false), Struct_1(vec2<u32>(u_input.c, u_input.c), false, vec4<bool>(false, true, true, true), global2.x, vec4<f32>(737.0, 964.0, 1105.0, -201.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(938.0 - 316.0), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.c, 14u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1148.0)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 14u)] - _wgslsmith_f_op_f32(f32(-1.0) * -571.0))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.c), ~u_input.c, _wgslsmith_sub_u32(abs(u_input.c), 13051u)), vec3<u32>(~5563u, (u_input.c ^ 0u) << (~1528u % 32u), u_input.c)), ~_wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 65647u), vec2<u32>(4294967295u, u_input.c))), max(~vec2<u32>(u_input.c, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 33210u), vec2<u32>(u_input.c, u_input.c)))));
            let var_3 = abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_div_i32(-2147483648, var_1)) | func_6(!false, firstTrailingBit(var_2.a), min(vec4<i32>(-2147483648, var_1, 6206, 2147483647), global0[_wgslsmith_index_u32(var_2.e.x, 24u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.d, u_input.c, 20469u, 51613u), vec4<u32>(var_2.e.x, var_2.d, var_2.e.x, 4294967295u))), 5299));
        }
        continue;
    }
    var var_0 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, func_4(Struct_2(vec4<u32>(0u, u_input.c, 4294967295u, u_input.c), 0u), vec2<bool>(false, false), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(10389u, 14u)], -1000.0, global1[_wgslsmith_index_u32(u_input.c, 14u)]), u_input.c | 8128u).c.a.x, 4294967295u)), vec3<u32>(~(~u_input.c), _wgslsmith_mult_u32(u_input.c, u_input.c & 5292u), func_4(Struct_2(~vec4<u32>(u_input.c, u_input.c, 20419u, u_input.c), 4294967295u), !(!vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-366.0, global1[_wgslsmith_index_u32(u_input.c, 14u)], global2.x, -1804.0))), 4294967295u & 24670u).c.a.x));
    switch (i32(-1) * -39175) {
        case 0: {
        }
        case 1: {
            global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 150.0, global2.x) * vec4<f32>(global2.x, -1575.0, -1000.0, global1[_wgslsmith_index_u32(0u, 14u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(172.0, 1349.0, global1[_wgslsmith_index_u32(15868u, 14u)], 1028.0) * vec4<f32>(-1013.0, -243.0, global1[_wgslsmith_index_u32(1u, 14u)], 662.0)), !vec4<bool>(true, false, true, false))) * vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1.0) * -696.0), _wgslsmith_f_op_f32(ceil(-655.0)), global2.x))));
            for (var var_1 = 28265; all(!(!vec4<bool>(select(true, true, true), 1632.0 >= global1[_wgslsmith_index_u32(1u, 14u)], u_input.c != 1u, true))); var_0 = 0u) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_2 = func_4(Struct_2(_wgslsmith_div_vec4_u32(~select(vec4<u32>(61499u, u_input.c, 50436u, u_input.c), vec4<u32>(50153u, u_input.c, u_input.c, 1u), false), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ (vec4<u32>(36782u, u_input.c, 4294967295u, 65110u) ^ vec4<u32>(43159u, u_input.c, 32012u, u_input.c))), 30244u), vec2<bool>(true, true), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(1329.0)), -438.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1216.0))), -363.0)), _wgslsmith_div_u32(~reverseBits(~4294967295u), u_input.c)).c;
                var_2 = func_4(Struct_2(~(~select(vec4<u32>(4294967295u, 4294967295u, var_2.a.x, 40405u), vec4<u32>(u_input.c, 4294967295u, var_2.a.x, var_2.a.x), vec4<bool>(true, var_2.c.x, false, var_2.c.x))), _wgslsmith_mod_u32(6019u, 0u)), var_2.c.wz, var_2.e, ~u_input.c).c;
            }
            var var_1 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.c, _wgslsmith_mod_u32(14470u, 98054u), ~11101u), vec3<u32>(66252u, ~(u_input.c | u_input.c), func_4(Struct_2(vec4<u32>(0u, 4150u, u_input.c, u_input.c), 29541u), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(210.0, 621.0, global2.x, -1000.0) - vec4<f32>(2421.0, -1233.0, global2.x, 187.0)), 55013u).c.a.x), false), ~vec3<u32>(~(u_input.c & 4294967295u), ~_wgslsmith_add_u32(u_input.c, u_input.c), 0u));
            global0 = array<vec4<i32>, 24>();
        }
        case -2824: {
            var var_1 = (u_input.c ^ _wgslsmith_mult_u32(~abs(1u), 32115u & ~u_input.c)) << (0u % 32u);
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                global0 = array<vec4<i32>, 24>();
            }
            for (var var_2 = 63232; ; var_2 += 1) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                global2 = vec4<f32>(1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_2(vec4<u32>(10749u, u_input.c, 1u, u_input.c), u_input.c), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)], -437.0, 1000.0))), u_input.c).b.x)), _wgslsmith_f_op_f32(f32(-1.0) * -1988.0), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(0u), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.c, 4294967295u, 4294967295u), vec3<u32>(u_input.c, 111908u, 4294967295u) ^ vec3<u32>(1u, u_input.c, 4294967295u), !vec3<bool>(true, false, true)), vec3<u32>(1u, u_input.c, select(u_input.c, 0u, false)))), 14u)]);
            }
            switch (u_input.d.x) {
                case 11945: {
                }
                default: {
                    var var_2 = Struct_3(~(~vec4<u32>(~68425u, 4294967295u | u_input.c, ~4294967295u, 69463u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1354.0, 2026.0, global2.x, global1[_wgslsmith_index_u32(64914u, 14u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, -751.0, global2.x, global2.x), vec4<f32>(-393.0, global1[_wgslsmith_index_u32(0u, 14u)], 478.0, -1000.0))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(544.0, -1324.0, 1374.0, 419.0), vec4<f32>(global1[_wgslsmith_index_u32(28062u, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(20978u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), vec4<bool>(false, false, false, true)))), all(!vec2<bool>(false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -505.0, global1[_wgslsmith_index_u32(28550u, 14u)], 1253.0), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global2.x, -276.0, -107.0)))), func_4(Struct_2(firstLeadingBit(~vec4<u32>(1u, 0u, 61419u, 101328u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) ^ vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), ~vec4<u32>(u_input.c, 4294967295u, 0u, u_input.c))), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(771.0, 555.0, global2.x, global1[_wgslsmith_index_u32(u_input.c, 14u)])))))), firstTrailingBit(u_input.c)).c);
                }
            }
        }
        case 2607: {
            for (var var_1 = -43006; var_1 >= -45705; var_1 -= 1) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), global2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 14u)] * global1[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 14u)]))) + _wgslsmith_f_op_f32(trunc(global2.x))), global2.x);
                let var_2 = vec2<f32>(357.0, -810.0);
                continue;
            }
            if ((true && false) || !(!(!(-391 < -66715)))) {
                global2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 667.0, 156.0, -757.0) - vec4<f32>(global2.x, global2.x, -588.0, 958.0)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global2.x, 375.0, global1[_wgslsmith_index_u32(u_input.c, 14u)]) + vec4<f32>(global1[_wgslsmith_index_u32(103446u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)], -1786.0))) + vec4<f32>(1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(969.0, u_input.d.x, vec3<bool>(true, false, false), Struct_1(vec2<u32>(48678u, 33256u), true, vec4<bool>(false, false, true, true), global2.x, vec4<f32>(-1014.0, global2.x, 2182.0, 204.0)))) - _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(76116u, 14u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 14u)] * global1[_wgslsmith_index_u32(u_input.c, 14u)])), global1[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-281.0, global1[_wgslsmith_index_u32(20281u, 14u)], global2.x, -330.0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-117.0, global1[_wgslsmith_index_u32(4294967295u, 14u)], global2.x, global1[_wgslsmith_index_u32(15820u, 14u)]))))));
                let var_1 = Struct_4(u_input.d.x, false || true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-667.0, -1111.0))), u_input.c, countOneBits(min(~(vec2<u32>(16838u, u_input.c) ^ vec2<u32>(1u, u_input.c)), min(func_4(Struct_2(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), 41264u), vec2<bool>(true, false), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(0u, 14u)], 371.0, -214.0), 7059u).a.xy, ~vec2<u32>(18221u, u_input.c)))));
                var_0 = u_input.c;
            }
            switch (~((0 | min(-2147483648, ~u_input.d.x)) | u_input.b)) {
                default: {
                    let var_1 = select(!(!vec4<bool>(func_4(Struct_2(vec4<u32>(4294967295u, u_input.c, 4294967295u, u_input.c), u_input.c), vec2<bool>(false, true), vec4<f32>(1286.0, global2.x, global1[_wgslsmith_index_u32(13454u, 14u)], global1[_wgslsmith_index_u32(19941u, 14u)]), u_input.c).c.c.x, 2147483647 >= -39741, all(vec2<bool>(true, false)), !true)), !(!vec4<bool>(!true, true, func_3(u_input.d.xy, 20838u).x, func_5(Struct_4(1986, true, 275.0, 16542u, vec2<u32>(59432u, u_input.c))).x)), vec4<bool>(all(!(!vec4<bool>(true, false, false, false))), false, !(u_input.c <= ~8925u), !(!any(vec3<bool>(false, true, true)))));
                    var var_2 = vec4<f32>(-660.0, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1166.0 + global2.x), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_2(func_5(Struct_4(-2147483648, var_1.x, global2.x, u_input.c, vec2<u32>(1u, 22359u))).x, func_4(Struct_2(vec4<u32>(u_input.c, u_input.c, u_input.c, 4287u), 1u), var_1.wx, vec4<f32>(-1482.0, global2.x, -514.0, -656.0), 33248u), ~4294967295u, Struct_5(global2.wyy)).a.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-352.0))))), _wgslsmith_f_op_f32(floor(1278.0)));
                    let var_3 = vec3<u32>(func_4(Struct_2(~vec4<u32>(0u, u_input.c, u_input.c, 72880u), ~(~76442u)), !var_1.wx, vec4<f32>(-195.0, 191.0, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + var_2.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12740u, 4294967295u) | vec3<u32>(u_input.c, 27595u, 17662u), ~vec3<u32>(144352u, u_input.c, 4294967295u)), u_input.c, _wgslsmith_div_u32(4294967295u, 16221u))).c.a.x, ~0u, ~u_input.c);
                }
            }
            let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global1[_wgslsmith_index_u32(1u, 14u)]) * func_4(Struct_2(vec4<u32>(u_input.c, 0u, 47468u, u_input.c), u_input.c), vec2<bool>(false, false), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], 504.0, 442.0, global1[_wgslsmith_index_u32(1u, 14u)]), u_input.c).b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(2129.0, u_input.d.x, vec3<bool>(true, true, false), Struct_1(vec2<u32>(64825u, u_input.c), false, vec4<bool>(false, false, false, false), -684.0, vec4<f32>(-2146.0, global1[_wgslsmith_index_u32(u_input.c, 14u)], -564.0, global2.x)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1185u, 14u)] - -1000.0)))))) + _wgslsmith_f_op_f32(func_2(false, Struct_3(vec4<u32>(u_input.c, u_input.c, 28635u, u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], 118.0)), func_4(Struct_2(vec4<u32>(48441u, 33630u, 1u, 0u), u_input.c), vec2<bool>(true, true), vec4<f32>(global2.x, -1037.0, global2.x, 1472.0), 1u).c), _wgslsmith_sub_u32(0u, u_input.c ^ 0u), Struct_5(vec3<f32>(287.0, 995.0, global2.x))).a.x * _wgslsmith_f_op_f32(floor(692.0))));
            let var_2 = !true;
        }
        default: {
            let var_1 = vec3<bool>(all(!func_4(Struct_2(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), 0u), !vec2<bool>(false, true), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 120.0, global1[_wgslsmith_index_u32(4294967295u, 14u)], 313.0), vec4<f32>(-1006.0, 1129.0, -1169.0, -747.0)), u_input.c).c.c), func_3(u_input.d.xx, u_input.c).x, !false);
            for (var var_2 = 2147483647; var_2 != -1; global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], 1141.0, global2.x, global2.x) + vec4<f32>(913.0, global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)], global2.x))))))))) {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                continue;
            }
            global0 = array<vec4<i32>, 24>();
            var var_2 = Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(~u_input.c, max(11022u, 4294967295u), u_input.c, u_input.c), vec4<u32>(_wgslsmith_clamp_u32(u_input.c, 64199u, u_input.c), ~12889u, 3020u, u_input.c | 7543u) | vec4<u32>(u_input.c << (u_input.c % 32u), u_input.c, countOneBits(1u), u_input.c)), u_input.c);
        }
    }
    let var_1 = ~u_input.d.zx;
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        continue;
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-708.0 - global2.x)), global1[_wgslsmith_index_u32(u_input.c, 14u)]));
}

