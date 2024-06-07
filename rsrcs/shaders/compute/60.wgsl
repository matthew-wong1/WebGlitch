// {"0:0":[239,142,208,0,184,221,130,201,115,169,196,109,221,73,42,146,41,94,203,117,46,191,51,247,153,108,8,238,33,36,147,172]}
// Seed: 12172566986843097428

struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(-30708, 42248, -1223.0), Struct_2(4768, -27292, 398.0), Struct_2(26357, -2147483648, 250.0), Struct_2(-30952, -1, -438.0), Struct_2(2147483647, -1, 737.0), Struct_2(2147483647, 39813, 198.0), Struct_2(20030, -19553, 209.0), Struct_2(-15154, 32423, 1765.0), Struct_2(-17570, 1, -1278.0), Struct_2(11809, 5682, -852.0), Struct_2(32248, 1, 1253.0), Struct_2(2147483647, 2147483647, 870.0), Struct_2(-19593, -19716, -1571.0), Struct_2(16629, 19112, 2317.0), Struct_2(-1, 2122, -227.0), Struct_2(-2147483648, -16276, 989.0), Struct_2(-30852, 0, 738.0), Struct_2(-698, 22491, -686.0), Struct_2(1, -1, 335.0), Struct_2(13491, 1, 492.0), Struct_2(-12023, 29712, 1279.0), Struct_2(-25925, 20134, -435.0), Struct_2(34564, 0, 399.0), Struct_2(-1, 1, -1172.0), Struct_2(-27134, -66514, -1000.0), Struct_2(87138, 2147483647, 441.0));

var<private> global2: array<f32, 21>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)));

var<private> LOOP_COUNTERS: array<u32, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_6() -> f32 {
    for (var var_0 = -1; var_0 >= 2147483647; var_0 -= 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var var_1 = vec4<i32>(-11628, _wgslsmith_dot_vec4_i32(vec4<i32>(-reverseBits(-21107), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483648, 1067, -31319, 27256), ~vec4<i32>(-12415, -24938, 48601, 1)), 8736, min(39013 ^ -18096, -25970)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-76571, 10106, 2147483647, -33277), vec4<i32>(2147483647, -4810, 10314, 3178)) ^ vec4<i32>(0 & 0, _wgslsmith_div_i32(1, -41089), _wgslsmith_mult_i32(-37741, 45350), ~2147483647)), abs(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, 1), vec2<i32>(20214, 17525)))) << (_wgslsmith_add_u32(39589u, u_input.b.x >> (_wgslsmith_dot_vec3_u32(u_input.b.yyz, vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)) % 32u)) % 32u), -28504);
        global2 = array<f32, 21>();
        break;
    }
    var var_0 = vec4<bool>(!global0.x, false, false, global0.x);
    let var_1 = !all(!vec2<bool>(true, any(vec2<bool>(var_0.x, false))));
    var_0 = vec4<bool>(!var_1, var_0.x, select(!all(var_0.yy), !true & all(var_0.xxy), (-374.0 > 669.0) == var_0.x) || all(select(select(vec4<bool>(var_1, global0.x, true, true), vec4<bool>(true, true, var_0.x, false), var_1), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x), select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x))), var_0.x);
    global2 = array<f32, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], _wgslsmith_f_op_f32(abs(865.0)))) * global2[_wgslsmith_index_u32(min(countOneBits(u_input.a) << (~u_input.b.x % 32u), 0u), 21u)]) * 1000.0);
}

fn func_7(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> vec2<bool> {
    for (; global0.x; ) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        if (global0.x) {
            global3 = array<Struct_1, 14>();
            let var_0 = Struct_1(vec2<bool>(global0.x, any(vec4<bool>(arg_0 >= arg_0, !true, any(vec3<bool>(global0.x, true, global0.x)), global0.x || true))));
            var var_1 = true;
            let var_2 = _wgslsmith_dot_vec2_u32(u_input.b.xz, ~u_input.b.xx) | _wgslsmith_mod_u32(arg_1, 107385u);
        }
    }
    switch (arg_0) {
        case 31231: {
        }
        case 0: {
            var var_0 = global3[_wgslsmith_index_u32(16581u, 14u)];
            global0 = vec2<bool>(select(false, true, !(_wgslsmith_f_op_f32(-651.0) < _wgslsmith_f_op_f32(exp2(arg_3.x)))), global0.x);
            let var_1 = Struct_1(var_0.a);
        }
        default: {
            let var_0 = Struct_3(global1[_wgslsmith_index_u32(firstTrailingBit(~arg_1), 26u)], 420.0, _wgslsmith_dot_vec2_u32(~u_input.b.yx, firstLeadingBit(u_input.b.zy)), countOneBits(select(vec4<i32>(_wgslsmith_mod_i32(arg_2, 46512), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_2, arg_2), vec3<i32>(arg_2, arg_0, arg_0)), arg_2, _wgslsmith_mult_i32(-2147483648, -2147483648)), ~(~vec4<i32>(arg_2, arg_0, arg_2, 25813)), select(global0.x, global0.x, global0.x) | true)), _wgslsmith_dot_vec2_u32(~u_input.b.xz, ~u_input.b.zw));
        }
    }
    return !(!(!(!vec2<bool>(true, true))));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.b.x), ~u_input.b.x), 14u)];
    var var_1 = Struct_1(func_7(-(~countOneBits(2147483647)), u_input.a, 0, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6())), 360.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(387.0 - 773.0) + _wgslsmith_div_f32(1038.0, 1818.0)))));
    var var_2 = Struct_2(-85914, (i32(-1) * -60034) << (firstTrailingBit(u_input.b.x) % 32u), _wgslsmith_f_op_f32(-447.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 21u)] - 1305.0), _wgslsmith_f_op_f32(-arg_1.x))))));
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        let var_3 = 2579;
        var_2 = Struct_2(~0, firstLeadingBit(2147483647), 932.0);
        switch (42539) {
            case -17896: {
                break;
            }
            case -16302: {
                let var_4 = global0.x;
                var var_5 = Struct_3(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], -316.0, u_input.b.x, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483648, _wgslsmith_dot_vec4_i32(vec4<i32>(11434, 47546, 4094, 0), _wgslsmith_div_vec4_i32(vec4<i32>(25189, var_3, -7384, var_3), vec4<i32>(30369, var_2.b, 0, var_2.a))), 0, 0), -abs(~vec4<i32>(-30688, 2147483647, 1, -1))), reverseBits(min(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a, u_input.b.x, u_input.a, 4294967295u)), u_input.b.x)) | firstLeadingBit(4294967295u));
                let var_6 = 0u;
                global2 = array<f32, 21>();
            }
            case -14075: {
                break;
            }
            case 2147483647: {
                var_1 = Struct_1(var_1.a);
                break;
            }
            default: {
            }
        }
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            var var_4 = Struct_2(-3898 & _wgslsmith_sub_i32((i32(-1) * -11899) << (0u % 32u), _wgslsmith_sub_i32(var_3, var_2.b)), _wgslsmith_dot_vec2_i32(select(-abs(vec2<i32>(-1, -2284)), firstTrailingBit(vec2<i32>(var_2.b, 0)), all(vec4<bool>(var_0.a.x, var_1.a.x, true, var_1.a.x)) || !true), vec2<i32>(var_2.a, var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6()))))));
            var var_5 = Struct_3(global1[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))), u_input.b.x, (vec4<i32>(0, _wgslsmith_dot_vec2_i32(vec2<i32>(67216, 30219), vec2<i32>(var_3, 1)), _wgslsmith_clamp_i32(var_3, var_3, 1), -42758) ^ ~max(vec4<i32>(var_4.b, var_2.a, 0, 37595), vec4<i32>(var_4.a, var_4.b, var_3, -35841))) | -(~vec4<i32>(var_4.a, 1, 1, var_4.b)), u_input.a);
            var var_6 = Struct_2(-(i32(-1) * -57351), ~47910, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1737.0 - _wgslsmith_f_op_f32(abs(arg_0))) + 867.0));
        }
    }
    var var_3 = u_input.a;
    return -var_2.a;
}

fn func_4(arg_0: i32) -> Struct_2 {
    global2 = array<f32, 21>();
    let var_0 = reverseBits(vec4<u32>(firstLeadingBit(14206u), 11227u, 0u, u_input.b.x));
    switch (countOneBits(_wgslsmith_add_i32(func_5(global2[_wgslsmith_index_u32(~12060u, 21u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1471.0, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(1632u, 21u)]))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], -435.0, -1000.0), vec3<f32>(762.0, global2[_wgslsmith_index_u32(var_0.x, 21u)], -524.0)))), -175.0), ~arg_0))) {
        case 1: {
            for (var var_1: i32; global0.x; var_1 -= 1) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                global3 = array<Struct_1, 14>();
                global0 = vec2<bool>(select((_wgslsmith_div_u32(0u, var_0.x) < var_0.x) && false, 1u >= ~var_0.x, false), all(select(select(!vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(true, false, false), vec3<bool>(global0.x, true, false), false), false), select(select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), false), !vec3<bool>(global0.x, true, global0.x), global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), !vec3<bool>(global0.x, true, true)))));
            }
            var var_1 = ~(~78109u);
            let var_2 = vec2<f32>(global2[_wgslsmith_index_u32(~(~(~u_input.b.x)), 21u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-514.0), global2[_wgslsmith_index_u32(~(~0u), 21u)]));
            var var_3 = ~vec4<i32>(~(-7784), -11296, -(~reverseBits(arg_0)), -2147483648);
            global3 = array<Struct_1, 14>();
        }
        case 2147483647: {
            global3 = array<Struct_1, 14>();
            global3 = array<Struct_1, 14>();
            global3 = array<Struct_1, 14>();
        }
        case 16461: {
            if (true) {
                return Struct_2(-32732, arg_0, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 21u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 21u)] + global2[_wgslsmith_index_u32(~var_0.x, 21u)]) + global2[_wgslsmith_index_u32(4294967295u & _wgslsmith_mult_u32(4294967295u, u_input.b.x), 21u)])));
            }
        }
        default: {
            for (var var_1: i32; !any(!(!vec4<bool>(global0.x, false, global0.x, global0.x))) && any(!vec2<bool>(all(vec2<bool>(true, global0.x)), all(vec3<bool>(global0.x, global0.x, false)))); var_1 -= 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(2083u, u_input.a), 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 21u)] - global2[_wgslsmith_index_u32(1u, 21u)])) - global2[_wgslsmith_index_u32(4294967295u, 21u)]), ~54869u, firstLeadingBit(select(_wgslsmith_add_vec4_i32(vec4<i32>(11701, arg_0, 2147483647, arg_0) & vec4<i32>(arg_0, arg_0, -15393, -2147483648), vec4<i32>(arg_0, arg_0, arg_0, arg_0)), vec4<i32>(_wgslsmith_clamp_i32(-1, arg_0, arg_0), 0 >> (var_0.x % 32u), abs(arg_0), ~arg_0), global0.x)), ~(~abs(_wgslsmith_sub_u32(var_0.x, 3363u))));
                var var_3 = global2[_wgslsmith_index_u32(var_0.x, 21u)];
                var_2 = Struct_3(Struct_2((_wgslsmith_dot_vec4_i32(var_2.d, var_2.d) | var_2.d.x) & _wgslsmith_sub_i32(var_2.d.x, -19393 | -2147483648), var_2.a.a, global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(countOneBits(u_input.b.ww), var_0.zx)), 21u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.c, _wgslsmith_f_op_f32(f32(-1.0) * -1061.0)))), var_0.x, select(vec4<i32>(i32(-1) * -13407, -(-2147483648 << (1u % 32u)), var_2.d.x, _wgslsmith_clamp_i32(-27396, _wgslsmith_sub_i32(var_2.a.b, 43563), _wgslsmith_mult_i32(arg_0, -11036))), abs(vec4<i32>(var_2.d.x, 28067, arg_0, i32(-1) * -26505)), all(vec4<bool>(35244u != var_2.c, false, all(vec2<bool>(false, true)), !global0.x))), ~(var_2.e ^ 1u));
                var_3 = 1358.0;
                let var_4 = !false;
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_1 = global3[_wgslsmith_index_u32(71060u & 48168u, 14u)];
                global2 = array<f32, 21>();
                var var_2 = Struct_2(-arg_0, -_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(arg_0, -2147483648)), -vec2<i32>(arg_0, -29132)), global2[_wgslsmith_index_u32(~0u, 21u)]);
                global0 = !select(!select(!vec2<bool>(var_1.a.x, var_1.a.x), !vec2<bool>(var_1.a.x, var_1.a.x), var_1.a), vec2<bool>(!var_1.a.x, var_1.a.x), var_1.a);
            }
            if (global0.x) {
                let var_1 = arg_0;
                var var_2 = ~(~(~u_input.b.wx));
                return Struct_2(-2147483648, arg_0, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~u_input.b)), vec4<u32>(_wgslsmith_div_u32(var_2.x, var_2.x), var_2.x, ~(0u | 4294967295u), var_0.x >> ((var_2.x ^ var_0.x) % 32u))), 21u)]);
            }
            if (any(func_7(select(abs(1), arg_0, max(1u, 13887u) == _wgslsmith_mult_u32(4294967295u, 91490u)), (~22544u >> (_wgslsmith_sub_u32(40664u, var_0.x) % 32u)) << (~0u % 32u), ~(-1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2122.0, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_0.x), 21u)], global2[_wgslsmith_index_u32(var_0.x, 21u)]))))) {
                let var_1 = u_input.b.x;
                let var_2 = vec2<bool>(var_1 < var_1, !all(vec4<bool>(false != true, all(vec2<bool>(false, true)), global0.x, global0.x)));
                global1 = array<Struct_2, 26>();
                let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]) * global2[_wgslsmith_index_u32(~5103u, 21u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1204.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(70037u, 21u)]), 1000.0), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~u_input.b.x, 21u)], 1255.0)))));
            }
        }
    }
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(~u_input.b.x, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 4294967295u), 1u << (var_0.x % 32u)), global0.x), 6031u), 26u)];
    global3 = array<Struct_1, 14>();
    return Struct_2(var_1.b, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-32902 | arg_0, 2147483647, ~arg_0), -_wgslsmith_mod_vec3_i32(vec3<i32>(-1, arg_0, var_1.b), vec3<i32>(2147483647, 0, 1)))), global2[_wgslsmith_index_u32(abs(reverseBits(var_0.x)) & u_input.a, 21u)]);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_mult_i32(~(firstLeadingBit(-40064 >> (43841u % 32u)) & 0), firstTrailingBit(~(i32(-1) * -24230) >> (abs(abs(u_input.b.x)) % 32u)));
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        continue;
    }
    for (var var_1 = 22794; var_1 == -1; var_1 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        if (global0.x) {
            let var_2 = func_4(27598);
            global2 = array<f32, 21>();
            continue;
        }
        var var_2 = Struct_3(Struct_2(0 & func_4(-2147483648).a, ~(~_wgslsmith_add_i32(1, 17502)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(-1438.0)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 21u)] - -602.0)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(75494u, 21u)] * global2[_wgslsmith_index_u32(70668u, 21u)]), func_4(2147483647).c)))), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(0u, 21u)])), ~u_input.b.x, firstLeadingBit(vec4<i32>(1 ^ -42461, ~(-38307), -8590, -10997 >> (4294967295u % 32u))) & _wgslsmith_div_vec4_i32(firstLeadingBit(select(vec4<i32>(-2147483648, 7527, 0, 1), vec4<i32>(-1139, 1, 0, -26973), global0.x)), ~vec4<i32>(0, 1, -2147483648, -23649) & _wgslsmith_mod_vec4_i32(vec4<i32>(-46252, 970, 2147483647, -13588), vec4<i32>(48854, -28470, 1, 46819))), ~(~u_input.a));
    }
    let var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 61229u), _wgslsmith_mod_u32(5555u & u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26267u, u_input.a, u_input.b.x), u_input.b)), u_input.b.x, 72482u >> (~4294967295u % 32u)), vec4<u32>(reverseBits(min(u_input.a, 68861u)), u_input.a | ~25009u, u_input.a, 48864u));
    global2 = array<f32, 21>();
    return max(~abs(~(~(-12022))), countOneBits(2147483647));
}

fn func_2(arg_0: f32) -> Struct_2 {
    switch (_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647, func_3()), 0)) {
        default: {
            var var_0 = 1000.0;
            let var_1 = vec3<u32>(~(14300u | _wgslsmith_mult_u32(u_input.b.x >> (16796u % 32u), select(17330u, u_input.a, false))), 27607u, ~u_input.a);
            var var_2 = vec3<bool>(!global0.x, any(select(select(!vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, global0.x), false), vec3<bool>(global0.x, !true, global0.x & global0.x), !(!vec3<bool>(global0.x, true, global0.x)))), !true);
            return global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1192u, 1u, var_1.x, 1u) ^ vec4<u32>(var_1.x, u_input.b.x, var_1.x, 4854u)), u_input.b)), 26u)];
        }
    }
    global1 = array<Struct_2, 26>();
    global3 = array<Struct_1, 14>();
    global3 = array<Struct_1, 14>();
    if (!global0.x) {
        global1 = array<Struct_2, 26>();
        var var_0 = countOneBits(u_input.b.x);
        global0 = select(vec2<bool>(global0.x, true & global0.x), !(!(!vec2<bool>(true, global0.x))), func_7(((2147483647 ^ -2147483648) << (4294967295u % 32u)) | countOneBits(-39206), ~abs(8749u ^ 0u), 0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000.0, arg_0, -1009.0) + vec3<f32>(global2[_wgslsmith_index_u32(17067u, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)], 252.0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1481.0, -3745.0, -323.0) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-757.0, global2[_wgslsmith_index_u32(u_input.a, 21u)], 1030.0) + vec3<f32>(arg_0, global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)]))))));
        let var_1 = Struct_3(func_4(func_4((i32(-1) * -18698) << (57948u % 32u)).b), _wgslsmith_f_op_f32(-211.0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2127.0, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], global0.x)) + _wgslsmith_f_op_f32(f32(-1.0) * -990.0)), 129.0))), ~(~(28451u >> (~27634u % 32u))), vec4<i32>(-1) * -vec4<i32>(abs(-1), ~64800, 2295 >> (17021u % 32u), func_4(3656).a), _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_mod_u32(13903u, u_input.a)));
        for (var var_2 = -19049; global0.x & (1137.0 == -876.0); global1 = array<Struct_2, 26>()) {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        }
    }
    return func_4(_wgslsmith_dot_vec3_i32(max(~_wgslsmith_clamp_vec3_i32(vec3<i32>(7462, -41634, 4502), vec3<i32>(-2147483648, -65022, 41953), vec3<i32>(-2147483648, 53700, -75353)), ~vec3<i32>(-3073, 2147483647, -27237)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-17263, 24191, 12025), countOneBits(vec3<i32>(14600, -9559, -2147483648))), ~firstLeadingBit(vec3<i32>(0, 2147483647, 2147483647)))));
}

fn func_8(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<i32> {
    switch (~min(func_5(global2[_wgslsmith_index_u32(min(5629u, 4294967295u) >> (abs(u_input.b.x) % 32u), 21u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379.0, 510.0, -844.0)))), arg_0.c), ~arg_1.x)) {
        case -29020: {
            let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 21u)]));
            for (; ; ) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_1 = 4294967295u;
                global2 = array<f32, 21>();
                continue;
            }
            let var_1 = reverseBits(~39524u);
            let var_2 = vec3<bool>(!true, any(vec3<bool>(global0.x, !global0.x, !(!global0.x))), any(!(!select(vec2<bool>(true, false), vec2<bool>(global0.x, false), global0.x))));
            for (var var_3 = -1; var_2.x; ) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                var var_4 = all(var_2);
                var var_5 = !vec4<bool>(arg_1.x > arg_0.b, !false, false, func_7(-49832, _wgslsmith_sub_u32(max(var_1, u_input.a), _wgslsmith_clamp_u32(1u, var_1, 29973u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-14478, arg_1.x, 36086, arg_1.x), arg_1), firstLeadingBit(vec4<i32>(arg_0.b, arg_0.a, arg_0.b, -39936))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2141.0, 1152.0, global2[_wgslsmith_index_u32(u_input.a, 21u)]) - vec3<f32>(409.0, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], -1226.0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 360.0, var_0) + vec3<f32>(235.0, -586.0, global2[_wgslsmith_index_u32(88715u, 21u)])))).x);
                var var_6 = arg_1.x;
                var_3 = _wgslsmith_add_i32(0, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(717.0 * arg_0.c), _wgslsmith_f_op_f32(-534.0)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(~var_1, 21u)], arg_0.c, _wgslsmith_div_f32(arg_0.c, arg_0.c)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.c + arg_0.c), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-218.0 + -599.0)), vec3<bool>(false, true, !false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-477.0, -798.0, false)) + _wgslsmith_f_op_f32(-arg_0.c)))));
                var_6 = ~(-2147483647);
            }
        }
        default: {
            var var_0 = func_4(2147483647);
        }
    }
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        let var_0 = any(select(!vec4<bool>(all(vec2<bool>(global0.x, false)), !global0.x, 1u == u_input.b.x, false & false), !vec4<bool>(select(false, false, global0.x), true, arg_1.x != 9257, false), vec4<bool>(false, true, global0.x, (true && true) && !true)));
        let var_1 = Struct_1(select(select(vec2<bool>(var_0, true), !select(vec2<bool>(var_0, true), vec2<bool>(true, global0.x), vec2<bool>(var_0, false)), !select(vec2<bool>(var_0, true), vec2<bool>(var_0, false), vec2<bool>(true, false))), vec2<bool>(false, !(!false)), all(select(!vec4<bool>(true, var_0, var_0, true), select(vec4<bool>(var_0, false, false, false), vec4<bool>(false, var_0, global0.x, false), vec4<bool>(var_0, false, true, false)), var_0))));
        let var_2 = any(!(!select(!vec4<bool>(false, false, var_0, var_0), select(vec4<bool>(false, global0.x, var_1.a.x, var_1.a.x), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(false, global0.x, var_0, false)), var_0)));
        global2 = array<f32, 21>();
        let var_3 = Struct_3(Struct_2(-25663, -8973, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), -1210.0, 0u, ~vec4<i32>(1, 2147483647, ~(-31030), _wgslsmith_dot_vec2_i32(arg_1.yw, arg_1.yx)) & vec4<i32>(11120, -56958 >> (27498u % 32u), ~2147483647, ~17746), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 10286u), u_input.b.xzw), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u)) >> (min(u_input.b.x, u_input.a) % 32u));
    }
    let var_0 = u_input.b.xxz;
    var var_1 = Struct_3(arg_0, -1443.0, firstLeadingBit(~4294967295u) | 4294967295u, vec4<i32>(arg_0.a ^ countOneBits(func_3()), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483648, arg_1.x, arg_1.x), -vec3<i32>(-2147483648, -1, arg_0.a)), countOneBits(_wgslsmith_add_i32(arg_1.x, 25862)) & -1, select(_wgslsmith_mult_i32(countOneBits(arg_0.b), ~(-64827)), min(arg_0.b, -3511) << (u_input.b.x % 32u), (i32(-1) * -1) >= 34433)), 19180u);
    if (global0.x) {
        let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b, -1670.0)));
        let var_3 = func_7(abs(-(i32(-1) * -1)) | func_5(_wgslsmith_f_op_f32(max(305.0, _wgslsmith_f_op_f32(774.0 + -418.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.c, var_2.x, 389.0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, arg_0.c, var_1.a.c) + vec3<f32>(var_1.b, -1487.0, -557.0))), _wgslsmith_f_op_f32(func_6())), var_1.c, _wgslsmith_mod_i32(abs(~(~arg_0.b)), arg_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.c, -622.0, var_1.b)))) + vec3<f32>(401.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 21u)], var_1.a.c) * global2[_wgslsmith_index_u32(var_1.c & u_input.b.x, 21u)]), 169.0)));
        var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, firstLeadingBit(~(~vec2<u32>(14295u, var_1.c) << (vec2<u32>(var_1.e, 1u) % vec2<u32>(32u))))), 14u)];
        global1 = array<Struct_2, 26>();
        let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b))) * var_2.x);
    }
    return vec4<i32>(~arg_0.a, abs(arg_1.x) ^ -45887, -(-1 >> (u_input.a % 32u)), _wgslsmith_add_i32(-1, _wgslsmith_sub_i32(abs(-46075), (14571 & arg_1.x) | firstTrailingBit(48718))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32) -> Struct_2 {
    for (var var_0 = 31124; true; var_0 += 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            global3 = array<Struct_1, 14>();
            global1 = array<Struct_2, 26>();
            global3 = array<Struct_1, 14>();
        }
        if (!any(vec3<bool>(global0.x & true, ~arg_0.d.x >= arg_2, false))) {
            let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(ceil(-1873.0)), _wgslsmith_f_op_f32(min(235.0, _wgslsmith_f_op_f32(-1063.0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], 743.0, -451.0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-934.0, global2[_wgslsmith_index_u32(16639u, 21u)], -509.0) + vec3<f32>(1140.0, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], -261.0))))));
            let var_2 = ~func_8(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1613.0, arg_0.b)) + 185.0)), ~arg_0.d);
        }
        var var_1 = arg_2;
    }
    if (!global0.x) {
        switch (-_wgslsmith_add_i32(-abs(func_4(arg_0.a.a).a), ~(_wgslsmith_dot_vec3_i32(arg_0.d.wxw, vec3<i32>(-44221, arg_0.a.a, arg_2)) << (~arg_0.c % 32u)))) {
            default: {
                global2 = array<f32, 21>();
                var var_0 = 243.0;
                var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(max(_wgslsmith_clamp_u32(arg_0.c, arg_0.c, arg_0.c), ~arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e, 4294967295u), u_input.b.zx), ~reverseBits(arg_0.e), countOneBits(reverseBits(4294967295u))), select(u_input.b, vec4<u32>(~u_input.a, arg_1.x << (4294967295u % 32u), 28362u, countOneBits(arg_0.c)), !(!vec4<bool>(true, global0.x, global0.x, global0.x)))) ^ min(abs(u_input.b | (u_input.b >> (u_input.b % vec4<u32>(32u)))), vec4<u32>(arg_0.e, arg_1.x, (arg_1.x << (1u % 32u)) << (7542u % 32u), 24212u));
                let var_2 = ~20323u;
            }
        }
        global1 = array<Struct_2, 26>();
    }
    if (true) {
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            global1 = array<Struct_2, 26>();
        }
        if (!false) {
            var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(46335u, abs(~1u), 1u), ~countOneBits(~u_input.b.zyz));
            var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-139.0, 597.0, arg_0.b, global2[_wgslsmith_index_u32(97890u, 21u)]) - vec4<f32>(global2[_wgslsmith_index_u32(1u, 21u)], arg_0.a.c, global2[_wgslsmith_index_u32(0u, 21u)], -455.0)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1916.0, global2[_wgslsmith_index_u32(474u, 21u)], -128.0, -767.0) - vec4<f32>(arg_0.a.c, 394.0, -1135.0, global2[_wgslsmith_index_u32(arg_0.e, 21u)])) + vec4<f32>(-294.0, arg_0.b, 1361.0, global2[_wgslsmith_index_u32(var_0.x, 21u)]))))));
            var var_2 = var_0.yz;
            global0 = !vec2<bool>(!global0.x, 33134u >= u_input.b.x);
        }
        var var_0 = Struct_3(arg_0.a, func_4(arg_0.d.x).c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1.x & u_input.a), vec2<u32>(4294967295u, arg_0.e)), abs(-(~(-vec4<i32>(arg_0.a.a, 56964, 28199, 31409)))), arg_0.c);
        for (var var_1: i32; ; var_1 += 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_2 = any(select(vec4<bool>(!all(vec3<bool>(false, true, global0.x)), any(vec2<bool>(true, global0.x)), true, all(select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, false), vec3<bool>(true, false, global0.x)))), vec4<bool>(false, any(vec3<bool>(true, global0.x, false)), func_7(arg_0.d.x, ~53559u, arg_0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c, 197.0, var_0.a.c))).x, true), !global0.x));
            break;
        }
        let var_1 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 42591u), 21u)]));
    }
    if (all(select(!vec3<bool>(48258 == 1, any(vec4<bool>(global0.x, true, true, false)), global0.x), select(select(vec3<bool>(global0.x, true, true), !vec3<bool>(true, false, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, global0.x), global0.x)), !vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true | global0.x, any(vec3<bool>(true, false, global0.x)))), select(vec3<bool>(any(vec4<bool>(true, true, global0.x, global0.x)), all(vec4<bool>(true, global0.x, global0.x, false)), global0.x), !select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), select(vec3<bool>(true, global0.x, global0.x), !vec3<bool>(true, global0.x, global0.x), !vec3<bool>(true, true, false)))))) {
        global1 = array<Struct_2, 26>();
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            break;
        }
    }
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
    }
    return global1[_wgslsmith_index_u32(arg_1.x, 26u)];
}

fn func_9(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    switch (8298) {
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            }
            let var_0 = u_input.a;
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                break;
            }
            let var_1 = arg_0.d.zx;
        }
        case -1: {
            if (false) {
                let var_0 = firstTrailingBit(firstLeadingBit(u_input.b ^ ~(vec4<u32>(u_input.b.x, arg_0.e, u_input.b.x, u_input.a) >> (vec4<u32>(1u, arg_0.c, 4294967295u, u_input.a) % vec4<u32>(32u)))));
                global1 = array<Struct_2, 26>();
                var var_1 = arg_0;
                let var_2 = false;
            }
            for (var var_0: i32; any(arg_3); var_0 += 1) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                global0 = vec2<bool>(select(false, !all(vec2<bool>(false, true)), global0.x), true);
            }
            global2 = array<f32, 21>();
            global0 = !func_7(arg_0.d.x, 4294967295u, arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-560.0, 926.0, -738.0) + vec3<f32>(1170.0, 147.0, global2[_wgslsmith_index_u32(u_input.a, 21u)]))));
            let var_0 = arg_0;
        }
        default: {
        }
    }
    if (any(vec4<bool>(!arg_2.a.x, any(func_7(arg_1.a, u_input.b.x, arg_0.d.x, vec3<f32>(-281.0, 525.0, 1000.0))) & select(false, func_7(arg_1.b, 4294967295u, 2034, vec3<f32>(global2[_wgslsmith_index_u32(32423u, 21u)], 1100.0, arg_0.a.c)).x, !arg_3.x), true, global0.x))) {
        for (var var_0 = 2147483647; ; var_0 -= 1) {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            continue;
        }
        global3 = array<Struct_1, 14>();
        global2 = array<f32, 21>();
        var var_0 = ~(u_input.b & ~_wgslsmith_div_vec4_u32(vec4<u32>(22620u, u_input.a, u_input.a, 17242u), u_input.b)) ^ (~vec4<u32>(~19139u, _wgslsmith_dot_vec3_u32(u_input.b.wzz, u_input.b.yzz), arg_0.c >> (u_input.b.x % 32u), 106795u) << (vec4<u32>(abs(~39623u), u_input.b.x, 21443u, 0u) % vec4<u32>(32u)));
    }
    var var_0 = arg_2;
    if (any(arg_3.zx)) {
        var var_1 = -2147483648;
        var var_2 = arg_0;
    }
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(913.0))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(1986u), 21u)] - arg_1.c)))), 345.0, global2[_wgslsmith_index_u32(21428u, 21u)]);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!select(!vec2<bool>(global0.x, false), !vec2<bool>(global0.x, global0.x), !vec2<bool>(true, global0.x)), vec2<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, false, global0.x)))), all(vec4<bool>(all(vec2<bool>(global0.x, global0.x)), any(vec4<bool>(false, global0.x, true, global0.x)), global0.x, global0.x || global0.x))));
    var var_1 = func_9(Struct_3(func_1(Struct_3(global1[_wgslsmith_index_u32(~u_input.b.x, 26u)], _wgslsmith_div_f32(1037.0, global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), u_input.a, max(vec4<i32>(2147483647, 2147483647, -2147483648, -20451), vec4<i32>(10120, -1, 2147483647, 982)), ~4294967295u), select(_wgslsmith_sub_vec3_u32(u_input.b.wxz, vec3<u32>(u_input.b.x, 42294u, 1u)), _wgslsmith_clamp_vec3_u32(u_input.b.zxw, vec3<u32>(29082u, 1u, 38276u), u_input.b.wwz), vec3<bool>(var_0.a.x, true, global0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-30786, 3773, -2147483648), vec3<i32>(0, -6762, 43415)) & 1), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(39115u, 21u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 16974u), ~(~u_input.b.zx)), abs(vec4<i32>(-64945, ~(-8094), -2147483647, _wgslsmith_mod_i32(-1, 1))), u_input.b.x << (u_input.a % 32u)), global1[_wgslsmith_index_u32(19945u | _wgslsmith_dot_vec4_u32((u_input.b | u_input.b) | (u_input.b ^ vec4<u32>(0u, 4294967295u, 1u, u_input.a)), vec4<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(17757u, u_input.b.x, 67448u), vec3<u32>(57260u, u_input.b.x, 0u)), 0u, max(0u, 1u))), 26u)], Struct_1(vec2<bool>(!false, 1724.0 > _wgslsmith_f_op_f32(235.0 - global2[_wgslsmith_index_u32(0u, 21u)]))), vec3<bool>(true, !false, (~50149 != (i32(-1) * -2147483648)) & !(global2[_wgslsmith_index_u32(1u, 21u)] != global2[_wgslsmith_index_u32(u_input.a, 21u)])));
    global3 = array<Struct_1, 14>();
    let var_2 = select(max(max(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.a), _wgslsmith_div_u32(49178u, 4294967295u), u_input.a, abs(u_input.a)), vec4<u32>(~u_input.b.x, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(3782u, 80638u, u_input.a), vec3<u32>(727u, u_input.b.x, 1u)), u_input.b.x)), max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(59498u, u_input.a, u_input.b.x, u_input.a), vec4<u32>(u_input.a, 4294967295u, 0u, u_input.b.x), u_input.b), u_input.b)), ~vec4<u32>(~(~u_input.b.x), ~u_input.b.x, ~4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(8245u, u_input.a, 23524u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a)), ~u_input.b)), !(~_wgslsmith_mod_i32(0, 0) == var_1.a));
    global0 = !func_7(1612, (~u_input.a & (var_2.x | 19095u)) << (reverseBits(var_2.x) % 32u), abs(1), vec3<f32>(func_4(max(var_1.b, -10977)).c, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~10544u, _wgslsmith_dot_vec3_u32(var_2.zyz, var_2.yxz)), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1236.0))));
    global3 = array<Struct_1, 14>();
    if (global0.x) {
        return;
    }
    global0 = select(var_0.a, !vec2<bool>(var_0.a.x, all(var_0.a)), var_0.a.x);
    for (var var_3 = 36038; !all(func_7(var_1.a, select(_wgslsmith_add_u32(u_input.a, var_2.x), ~var_2.x, false), -(~var_1.a), vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(83061u, 21u)]), _wgslsmith_f_op_f32(-var_1.c), var_1.c))); var_3 -= 1) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        var_3 = 9819;
        var var_4 = ~reverseBits(1u ^ (~var_2.x << (firstLeadingBit(var_2.x) % 32u)));
    }
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.c * -818.0), _wgslsmith_f_op_f32(-251.0 * 369.0))), global2[_wgslsmith_index_u32(0u, 21u)], firstLeadingBit(firstTrailingBit(-vec3<i32>(-2147483648, 1, -1))) | reverseBits(max(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647, -1, 1), vec3<i32>(var_1.a, var_1.a, var_1.a)), select(vec3<i32>(var_1.b, 0, var_1.a), vec3<i32>(var_1.a, -1, 7479), vec3<bool>(true, true, global0.x)))));
}

