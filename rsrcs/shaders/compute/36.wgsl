// {"0:0":[140,38,250,64,248,63,6,135]}
// Seed: 7090602073051499757

struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = !(_wgslsmith_f_op_f32(ceil(arg_0)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-597.0, 587.0, true)))) != arg_2;
    return vec3<bool>((_wgslsmith_f_op_f32(-_wgslsmith_div_f32(333.0, -173.0)) == -595.0) || false, 1704.0 >= -2031.0, false);
}

fn func_5(arg_0: i32, arg_1: vec4<bool>) -> bool {
    for (var var_0 = -2147483648; var_0 > 1; var_0 += 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var var_1 = arg_1.xww;
        var var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)) >> (vec2<u32>(72004u, u_input.b) % vec2<u32>(32u)), vec2<u32>(abs(select(min(22188u, 95716u), abs(71122u), var_1.x | var_1.x)), 25796u));
    }
    for (var var_0 = 0; var_0 < -2147483648; var_0 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
    }
    return false;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        let var_0 = _wgslsmith_f_op_f32(-arg_0);
        switch (countOneBits(u_input.a)) {
            case -22603: {
                var var_1 = vec4<i32>(_wgslsmith_mult_i32(-firstTrailingBit(2147483647), -_wgslsmith_clamp_i32(u_input.a, u_input.a, -9670)), -1, u_input.a, 2147483647 | firstLeadingBit(-32731));
                var var_2 = vec3<bool>(arg_1.b, any(vec2<bool>(!arg_1.b, arg_1.a)), all(!vec3<bool>(true & arg_1.a, true, !true)));
                var var_3 = ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(4571u, 34281u, 66387u, arg_2)) ^ ~vec4<u32>(0u, arg_2, 1u, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, ~1u, 16020u), vec4<u32>(countOneBits(25514u), 50822u, arg_2, arg_2), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_2, u_input.b, 22957u, 4294967295u), reverseBits(vec4<u32>(0u, arg_2, 67098u, 0u)))));
                continue;
            }
            case 1: {
                break;
            }
            default: {
                let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -1627.0)), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(select(arg_0, arg_0, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317.0))), vec3<f32>(_wgslsmith_f_op_f32(trunc(721.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2221.0)), -794.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -119.0))))));
                continue;
            }
        }
    }
    var var_0 = true;
    for (var var_1 = -1; arg_3.a; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        if (select(false, arg_3.b, !false)) {
        }
        var_0 = all(!select(vec2<bool>(false | false, 37939 < -1), select(select(vec2<bool>(false, true), vec2<bool>(arg_1.b, arg_1.a), arg_1.a), !vec2<bool>(true, false), true), select(-2147483648 < u_input.a, arg_3.a, -1000.0 != -469.0)));
        if (all(!select(!vec3<bool>(arg_1.b, false, false), select(vec3<bool>(true, false, false), !vec3<bool>(arg_3.a, false, true), !vec3<bool>(true, arg_1.a, arg_3.a)), arg_1.a))) {
            break;
        }
        break;
    }
    for (var var_1 = -2147483648; false; var_1 += 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_2 = ~firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(67107u, arg_2) | 46510u, arg_2, 7841u));
    }
    let var_1 = Struct_1(arg_1.b, arg_1.b);
    return select(!(!vec4<bool>(all(vec2<bool>(arg_3.a, false)), var_1.a & false, var_1.b || var_1.a, arg_3.b)), select(vec4<bool>(arg_1.b, arg_3.a == false, false, !true | true), vec4<bool>(true, !true & var_1.a, !var_1.b, false), select(vec4<bool>(arg_0 < arg_0, var_1.b, !false, !true), !select(vec4<bool>(var_1.a, arg_1.b, arg_3.a, false), vec4<bool>(false, true, false, arg_1.a), true), select(vec4<bool>(arg_3.b, true, arg_1.b, true), vec4<bool>(true, true, arg_1.b, var_1.a), !arg_3.a))), !(!vec4<bool>(arg_1.a, !arg_3.a, true, func_3(arg_0, arg_1, true).x)));
}

fn func_4() -> bool {
    switch (u_input.a) {
        case -10468: {
            var var_0 = Struct_1(func_5(u_input.a, !(!(!vec4<bool>(false, true, true, true)))), false);
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var_0 = Struct_1(var_0.b, !var_0.a);
                var var_1 = !select(select(!vec4<bool>(true, var_0.b, false, true), func_6(-941.0, Struct_1(var_0.a, true), ~u_input.b, Struct_1(var_0.b, var_0.b)), !vec4<bool>(true, true, var_0.a, var_0.a)), vec4<bool>(!var_0.b, var_0.a, any(func_6(-767.0, Struct_1(true, var_0.a), 0u, Struct_1(var_0.b, var_0.a)).wz), false), !vec4<bool>(var_0.a || true, !var_0.b, var_0.b, var_0.b));
                var_0 = Struct_1(all(!var_1.wx), !var_1.x);
                let var_2 = reverseBits(u_input.b);
                break;
            }
            let var_1 = !(!select(!select(vec4<bool>(true, false, var_0.a, false), vec4<bool>(var_0.a, false, false, var_0.a), var_0.b), vec4<bool>(func_6(-643.0, Struct_1(var_0.a, true), 111732u, Struct_1(var_0.a, true)).x, false || true, !false, var_0.a), vec4<bool>(false, var_0.a, true, false)));
            let var_2 = select(vec4<bool>(!var_0.b, var_0.a, !true, -636.0 <= -1494.0), vec4<bool>(!true || var_1.x, false, _wgslsmith_mult_i32(15562 ^ -1, -1224) >= -(~u_input.a), any(!vec3<bool>(var_1.x, true, var_0.b))), ~(_wgslsmith_sub_u32(0u, u_input.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(49613u, 33670u, 1346u), vec3<u32>(u_input.b, 9060u, u_input.b))) == u_input.b);
            var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-2498.0, -1720.0, 132.0, -360.0), vec4<f32>(-1000.0, -664.0, 350.0, -394.0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-324.0, 913.0, 1182.0, -1016.0), vec4<f32>(557.0, -1824.0, -317.0, -834.0))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1068.0, -330.0, -1540.0, 1000.0)) + vec4<f32>(-613.0, 404.0, -271.0, -1000.0))))));
        }
        case -5730: {
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_0 = _wgslsmith_f_op_f32(-1464.0);
                break;
            }
        }
        default: {
        }
    }
    for (var var_0 = 1; var_0 > -2147483648; var_0 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        continue;
    }
    switch (21014) {
        case 13743: {
            let var_0 = Struct_1(!(false | any(vec2<bool>(true, true))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-373.0 * -1000.0))), Struct_1((1026.0 <= 1438.0) || !true, true), (select(false, true, true) | !true) != all(func_6(-106.0, Struct_1(false, false), 0u, Struct_1(true, true)))).x);
            let var_1 = -1767.0;
            var var_2 = u_input.b < ~(~((38898u >> (49241u % 32u)) ^ 630u));
        }
        default: {
            if (false) {
                var var_0 = Struct_1(!(!(all(vec3<bool>(true, true, true)) | true)), 0u < 51646u);
                var var_1 = Struct_1(!(false != any(func_6(-598.0, Struct_1(true, var_0.a), 4294967295u, Struct_1(var_0.a, var_0.a)))), 4294967295u > u_input.b);
                var_1 = Struct_1(false, !(40306u <= (abs(980u) | u_input.b)));
            }
        }
    }
    switch (_wgslsmith_mod_i32(u_input.a, u_input.a)) {
        case 10857: {
            let var_0 = Struct_1(false && false, false);
            for (; ; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                let var_1 = var_0;
                var var_2 = var_1.a;
            }
        }
        case -1: {
            return all(vec2<bool>(!true, false || (true & true))) | any(vec2<bool>(!func_5(u_input.a, vec4<bool>(true, false, true, false)), false));
        }
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
            switch (firstLeadingBit(max(~(~(-17543)), min(u_input.a, u_input.a)))) {
                case 0: {
                    let var_0 = Struct_1(true, select(!(!func_3(1341.0, Struct_1(true, true), false).x), ((u_input.a & 33414) | u_input.a) >= (u_input.a >> (~1u % 32u)), true));
                }
                case -15720: {
                    return func_6(1000.0, Struct_1(all(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false), 1u, Struct_1(func_6(_wgslsmith_f_op_f32(-860.0), Struct_1(false, true), ~1u, Struct_1(true, false)).x & (firstLeadingBit(16876) == _wgslsmith_clamp_i32(u_input.a, 0, 1)), all(vec4<bool>(!true, u_input.a > u_input.a, any(vec2<bool>(true, true)), u_input.a == u_input.a)))).x;
                }
                case -2147483648: {
                    var var_0 = Struct_1(true, true);
                }
                default: {
                    var var_0 = ~(~(~8534));
                    var_0 = -5261;
                    var_0 = 2147483647;
                    var var_1 = all(select(select(!func_3(-1412.0, Struct_1(true, true), false).zy, func_6(254.0, Struct_1(false, true), 6974u, Struct_1(false, true)).zx, !(!vec2<bool>(false, false))), select(vec2<bool>(-1000.0 >= 360.0, true & false), !vec2<bool>(false, true), !false), !(!true)));
                }
            }
            switch (u_input.a) {
                case -1: {
                    let var_0 = vec4<i32>(~u_input.a, (2147483647 << (u_input.b % 32u)) | min(u_input.a ^ 0, abs(~u_input.a)), i32(-1) * -u_input.a, abs(u_input.a));
                    let var_1 = 0u;
                }
                default: {
                }
            }
        }
        default: {
            var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-371.0)));
        }
    }
    switch (-1) {
        case -36570: {
            switch (~_wgslsmith_mult_i32(select(_wgslsmith_clamp_i32(u_input.a, u_input.a, abs(2147483647)), countOneBits(0), 1u > 0u), _wgslsmith_mod_i32(2147483647, _wgslsmith_mod_i32(u_input.a ^ 48622, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a))))) {
                case -43126: {
                }
                case 0: {
                    var var_0 = _wgslsmith_mult_i32(1, _wgslsmith_div_i32(_wgslsmith_add_i32(~(-7535 | -38319), u_input.a), ~u_input.a));
                    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-765.0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-940.0)))))));
                    var_1 = _wgslsmith_f_op_f32(f32(-1.0) * -393.0);
                }
                case -20328: {
                    var var_0 = Struct_1(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-190.0)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(478.0, 1218.0) + _wgslsmith_f_op_f32(min(154.0, -126.0)))), Struct_1(func_5(75135, select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)), _wgslsmith_sub_u32(1u, 32816u) > 1u), !(!false)).x, false);
                    var var_1 = !var_0.a;
                }
                default: {
                    let var_0 = vec2<bool>(false, 24159 != -u_input.a);
                }
            }
            if (func_5(-(~abs(-1)), func_6(_wgslsmith_f_op_f32(f32(-1.0) * -1668.0), Struct_1(true, !false), (1u | u_input.b) | _wgslsmith_div_u32(94667u, u_input.b), Struct_1(!false, !false))) != !true) {
                var var_0 = Struct_1(true, !any(vec4<bool>(u_input.b == u_input.b, false & false, 2147483647 >= u_input.a, true)));
                let var_1 = Struct_1(all(!(!(!vec4<bool>(true, var_0.a, true, var_0.a)))), true);
                var var_2 = Struct_1(var_1.a, !(!var_0.a));
            }
            var var_0 = Struct_1(all(vec3<bool>(any(vec4<bool>(false, true, true, true)), false != false, any(vec2<bool>(true, true)))) != true, func_5(u_input.a, !vec4<bool>(false | false, any(vec4<bool>(false, true, false, false)), true && true, all(vec4<bool>(true, false, false, false)))));
            var var_1 = Struct_1(false, func_3(1714.0, Struct_1(!any(vec4<bool>(false, var_0.a, false, var_0.b)), func_3(185.0, Struct_1(var_0.a, false), var_0.b).x), true).x);
        }
        case 12468: {
            if ((~40217u ^ (u_input.b & 28296u)) < u_input.b) {
                let var_0 = Struct_1(func_3(1343.0, Struct_1(!(u_input.a > -693), false), ~44386u <= 1u).x, -u_input.a > -u_input.a);
                var var_1 = _wgslsmith_mod_u32(u_input.b, ~select(~_wgslsmith_mult_u32(4294967295u, 34901u), select(_wgslsmith_mult_u32(42207u, 24678u), 91038u, !var_0.b), var_0.b));
                var var_2 = var_0;
            }
            var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125.0)) + 1665.0);
        }
        case 25330: {
        }
        case -1: {
            var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2142.0) - _wgslsmith_div_f32(-676.0, 1423.0))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -850.0), _wgslsmith_f_op_f32(trunc(114.0))))), !(!all(vec2<bool>(false, false)) && (-u_input.a >= 2147483647)));
            switch (-21244) {
                case -5049: {
                    let var_1 = _wgslsmith_f_op_f32(max(756.0, _wgslsmith_f_op_f32(f32(-1.0) * -1876.0)));
                }
                case 2147483647: {
                    let var_1 = Struct_1(true, _wgslsmith_sub_u32(min(12171u, u_input.b), max(0u & u_input.b, 4080u)) == u_input.b);
                }
                case -1: {
                    var_0 = Struct_1(false, false & ((_wgslsmith_f_op_f32(abs(759.0)) > _wgslsmith_f_op_f32(-1925.0)) || (_wgslsmith_f_op_f32(-668.0) >= _wgslsmith_f_op_f32(max(-1432.0, 1251.0)))));
                }
                case -11374: {
                    let var_1 = Struct_1(all(vec3<bool>(!(!var_0.b), _wgslsmith_f_op_f32(floor(1000.0)) < _wgslsmith_f_op_f32(f32(-1.0) * -362.0), select(var_0.a, var_0.b || true, true))), var_0.a);
                    var_0 = var_1;
                    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-732.0, 744.0, -186.0)))))));
                }
                default: {
                    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1011.0), _wgslsmith_f_op_f32(-1045.0), _wgslsmith_f_op_f32(floor(-1598.0)), _wgslsmith_div_f32(-964.0, -173.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(885.0, 910.0, 1000.0, 848.0), vec4<f32>(1000.0, -831.0, 374.0, 1070.0)))))));
                    let var_2 = vec3<i32>(4558 << (u_input.b % 32u), 2147483647, _wgslsmith_dot_vec3_i32(-(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 6929), vec3<i32>(u_input.a, -2147483648, 2147483647)) | vec3<i32>(u_input.a, u_input.a, -1)), _wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(u_input.a, -2147483648, u_input.a)), -firstTrailingBit(vec3<i32>(-11581, u_input.a, u_input.a)))));
                    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)));
                    var_0 = Struct_1(!false, func_3(1000.0, Struct_1(select(!var_0.a, var_1.x <= var_1.x, func_3(var_1.x, Struct_1(true, true), true).x), var_0.a), all(!(!vec2<bool>(var_0.b, var_0.b)))).x);
                    var var_4 = vec4<bool>(!false, !func_6(var_1.x, Struct_1(var_0.b, false), max(~u_input.b, ~u_input.b), Struct_1(var_1.x < var_1.x, var_0.b)).x, true, func_5(_wgslsmith_mod_i32(~var_2.x, u_input.a), vec4<bool>(var_1.x != -671.0, any(vec2<bool>(var_0.b, false)), firstLeadingBit(34240u) < reverseBits(239u), var_0.a)));
                }
            }
            let var_1 = ~abs(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-12017, u_input.a, u_input.a, -15850) & vec4<i32>(15213, 42653, u_input.a, 3009)), firstLeadingBit(vec4<i32>(u_input.a, -5993, u_input.a, u_input.a))));
            var var_2 = Struct_1((~_wgslsmith_mult_i32(42506, u_input.a) & -u_input.a) == abs(-(~var_1)), any(select(select(func_6(-610.0, Struct_1(false, true), 0u, Struct_1(false, true)), select(vec4<bool>(var_0.a, false, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, false, var_0.a), true), true), vec4<bool>(var_0.b, any(vec4<bool>(true, var_0.b, true, var_0.b)), any(vec3<bool>(var_0.b, var_0.b, var_0.a)), any(vec2<bool>(var_0.b, var_0.a))), !false)));
        }
        default: {
            let var_0 = u_input.b;
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_1 = Struct_1(!(firstTrailingBit(14197u) <= var_0), _wgslsmith_f_op_f32(407.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1661.0) * -809.0)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-663.0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(991.0 + -592.0)))));
                let var_2 = Struct_1(false, select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-292.0))), Struct_1(!false, func_5(0, vec4<bool>(false, false, true, false))), !(!true)).x, !(!(!false)), var_1.a));
                var var_3 = Struct_1(var_1.a, ((348.0 <= _wgslsmith_f_op_f32(step(-1611.0, 533.0))) & !var_1.a) && ((select(14712, u_input.a, var_2.b) | u_input.a) != 0));
                var var_4 = var_2;
            }
        }
    }
    return select(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-810.0) + _wgslsmith_f_op_f32(-482.0 * 448.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000.0, 2121.0)))), Struct_1(any(vec4<bool>(false, false, false, false)), true), ~(45095u << (_wgslsmith_dot_vec3_u32(vec3<u32>(71743u, 59343u, u_input.b), vec3<u32>(u_input.b, 8236u, u_input.b)) % 32u)), Struct_1(func_5(-71039 >> (u_input.b % 32u), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))))).x, !select(!(!true), false, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), false);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = min(vec2<i32>(-600, max(u_input.a, firstLeadingBit(u_input.a))), vec2<i32>(-1, -2147483648));
    let var_1 = Struct_1(any(!func_3(arg_0, Struct_1(false, true), select(true, false, false))), func_4());
    let var_2 = vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1081.0 - 146.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_1.a)));
    var var_3 = Struct_1(var_1.b, var_1.b);
    let var_4 = var_1;
    return var_4;
}

fn func_7(arg_0: Struct_1) -> bool {
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        continue;
    }
    let var_0 = !arg_0.b;
    switch (-1) {
        case -33479: {
            let var_1 = arg_0;
        }
        case 44473: {
            var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-938.0))), 1946.0), _wgslsmith_div_f32(422.0, 812.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-553.0))))));
            let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -462.0) * _wgslsmith_f_op_f32(f32(-1.0) * -1887.0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(575.0 - var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - _wgslsmith_f_op_f32(exp2(893.0))), var_1.x)))));
        }
        case 1: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                break;
            }
            var var_1 = vec3<bool>(!any(vec3<bool>(any(vec2<bool>(arg_0.b, true)), false, -220.0 < -193.0)), !(!all(vec2<bool>(false, true))), func_4());
        }
        case 22038: {
            var var_1 = func_4();
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1846.0))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1616.0))))));
                return any(!vec2<bool>(func_3(_wgslsmith_f_op_f32(round(-369.0)), Struct_1(false, false), all(vec2<bool>(var_0, var_0))).x, !(!var_0)));
            }
            var var_2 = 41367u;
            switch (~1 >> (_wgslsmith_clamp_u32(~(~32920u), min(reverseBits(u_input.b), ~(~u_input.b)), ~108967u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u) << (vec3<u32>(u_input.b, 44290u, 4796u) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.b, u_input.b))) % 32u)) {
                case 2147483647: {
                    var_1 = func_3(_wgslsmith_div_f32(178.0, 1307.0), arg_0, all(!(!func_6(1528.0, Struct_1(arg_0.b, false), 416u, Struct_1(true, var_0))))).x;
                    var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(466.0))))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1183.0 - -361.0))), 245.0)).a | func_6(_wgslsmith_f_op_f32(1650.0 + _wgslsmith_f_op_f32(388.0 - 709.0)), arg_0, ~(firstTrailingBit(0u) & ~69640u), Struct_1(false, !func_2(-1244.0, vec2<f32>(-1751.0, -1434.0)).b)).x;
                    let var_3 = Struct_1(_wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(u_input.b, 46581u)), ~u_input.b) != 0u, all(vec2<bool>(!(-1117.0 <= -743.0), arg_0.a)));
                    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1682.0) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), -1143.0))) + -921.0), _wgslsmith_f_op_f32(floor(908.0)), func_5(0, !func_6(_wgslsmith_f_op_f32(round(-829.0)), arg_0, _wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b), func_2(-1387.0, vec2<f32>(294.0, -1000.0))))));
                    var var_5 = vec4<u32>(u_input.b, 38513u & 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(select(vec3<u32>(18273u, 21670u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b), var_3.b), abs(vec3<u32>(u_input.b, 11042u, u_input.b)))), ~(~vec3<u32>(4294967295u, u_input.b, 14802u))), _wgslsmith_div_u32(_wgslsmith_div_u32(~(~0u), u_input.b), _wgslsmith_mod_u32(countOneBits(abs(4294967295u)), abs(~u_input.b))));
                }
                case 1: {
                    var var_3 = func_2(_wgslsmith_f_op_f32(261.0 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(817.0 * _wgslsmith_f_op_f32(round(-347.0)))))), vec2<f32>(_wgslsmith_f_op_f32(-1000.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-582.0 - 503.0))), _wgslsmith_f_op_f32(f32(-1.0) * -2220.0)));
                    let var_4 = arg_0;
                    var var_5 = firstTrailingBit(abs(_wgslsmith_mult_vec3_i32(~(vec3<i32>(-35336, -9516, u_input.a) | vec3<i32>(-28589, u_input.a, 2147483647)), -select(vec3<i32>(u_input.a, u_input.a, -15634), vec3<i32>(12958, -41364, -35883), vec3<bool>(var_4.b, true, false)))));
                }
                case 29556: {
                    let var_3 = select(vec3<bool>(false, arg_0.b, var_0), !(!vec3<bool>(true, !var_0, true && true)), select(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1297.0, -2304.0)) + _wgslsmith_f_op_f32(367.0 - -1733.0)), Struct_1(false, !false), select(arg_0.b, !true, 150.0 >= 860.0)), !(!vec3<bool>(false, arg_0.a, true)), select(!func_3(-759.0, Struct_1(false, true), true), select(select(vec3<bool>(false, arg_0.a, var_0), vec3<bool>(arg_0.a, arg_0.b, true), true), select(vec3<bool>(false, true, arg_0.a), vec3<bool>(true, false, var_0), true), 1 <= u_input.a), false)));
                    var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(25237u, ~u_input.b), vec2<u32>(9302u, ~(~25830u))) >> (1u % 32u);
                    var var_4 = func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-536.0, 653.0)) + -1737.0))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(299.0, 788.0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1406.0, -287.0) * vec2<f32>(-1814.0, -541.0)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-602.0, -1033.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1379.0, -965.0)), var_3.x)))), !var_0).x;
                }
                case 4256: {
                    var var_3 = u_input.a;
                    var_3 = 2147483647;
                    var var_4 = Struct_1(var_0 | (16458u <= 31648u), func_4());
                    var_1 = arg_0.a;
                }
                default: {
                    let var_3 = arg_0;
                    let var_4 = vec3<i32>(u_input.a, u_input.a, ~u_input.a);
                    var_1 = false;
                    var var_5 = func_2(-1924.0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336.0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1323.0), _wgslsmith_f_op_f32(-575.0)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-132.0, -1293.0)), _wgslsmith_f_op_f32(exp2(-1127.0))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1609.0)), _wgslsmith_f_op_f32(f32(-1.0) * -185.0)), false))));
                    var var_6 = -2147483648;
                }
            }
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var_1 = !arg_0.b;
                let var_3 = any(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
                let var_4 = 72339u;
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                let var_1 = vec4<i32>(u_input.a, 88344, select(~(u_input.a ^ 0), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-22848, -2147483648, u_input.a), vec3<i32>(u_input.a, u_input.a, -5673)), _wgslsmith_mod_vec3_i32(vec3<i32>(-30259, -2147483648, u_input.a), vec3<i32>(u_input.a, 2147483647, u_input.a))), !(u_input.b >= 1u)) ^ -12765, u_input.a | u_input.a);
            }
            switch (-3261) {
                case -27426: {
                    var var_1 = var_0;
                }
                default: {
                    var var_1 = ~select(~(0u << (35168u % 32u)), ~11387u, true);
                    let var_2 = func_3(1673.0, arg_0, true != var_0);
                    return var_2.x;
                }
            }
            for (var var_1 = -20733; var_1 < -1; ) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            }
        }
    }
    if (false) {
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            break;
        }
        let var_1 = vec3<i32>(firstLeadingBit(u_input.a), 18403 >> (((~u_input.b >> (103686u % 32u)) ^ max(~3534u, ~4294967295u)) % 32u), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(u_input.a, 12594), u_input.a));
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            let var_2 = Struct_1(!var_0 | all(vec2<bool>(true, arg_0.a | false)), ~firstLeadingBit(45401u) < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 53514u ^ u_input.b, 4294967295u), abs(vec3<u32>(0u, 4294967295u, 39593u))));
        }
    }
    for (var var_1: i32; var_1 == -45654; ) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
    }
    return false;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
    }
    let var_0 = arg_1;
    let var_1 = arg_3.xy;
    if (var_0.b | func_7(func_2(_wgslsmith_div_f32(132.0, _wgslsmith_f_op_f32(-1235.0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.zz) * arg_3.yy)))) {
        let var_2 = Struct_1(arg_0.x, any(arg_0.yx) | select(!(!arg_0.x), var_0.a, true));
        var var_3 = arg_0.zz;
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            break;
        }
        var_3 = select(!select(vec2<bool>(arg_2.x != -18094, func_2(var_1.x, vec2<f32>(var_1.x, 1178.0)).b), vec2<bool>(false & true, arg_0.x), arg_0.zx), !arg_0.zx, !select(arg_0.xy, vec2<bool>(false, true), !all(arg_0)));
    }
    for (var var_2 = reverseBits(u_input.a) >> ((14171u >> (abs(~4294967295u) % 32u)) % 32u); var_2 < -12608; var_2 += 1) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(495.0 + arg_3.x))), arg_3.x)) - arg_3.x);
        loop {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            var var_4 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(32632u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 6781u, 1u, 4294967295u))), u_input.b, ~35515u, abs(u_input.b))), firstTrailingBit(~(~(vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u) ^ vec4<u32>(24893u, 4294967295u, u_input.b, u_input.b)))), vec4<u32>(48655u, ~firstLeadingBit(_wgslsmith_sub_u32(67909u, 4294967295u)), u_input.b ^ u_input.b, 29376u));
            var var_5 = func_2(-1128.0, var_1);
        }
    }
    return Struct_1(false, u_input.a > _wgslsmith_mod_i32(arg_2.x, firstTrailingBit(_wgslsmith_mod_i32(arg_2.x, u_input.a))));
}

fn func_8(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        let var_0 = vec2<bool>(all(!select(!vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a), !vec2<bool>(arg_0.b, false))), func_3(arg_3, Struct_1(func_7(Struct_1(arg_2.a, true)), arg_2.b), any(vec4<bool>(-19076 < -5736, 1 >= u_input.a, arg_0.a, arg_2.b))).x);
        let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1067.0))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(419.0, arg_3), vec2<f32>(arg_3, arg_3), var_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-461.0, 685.0)))))));
        let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1752.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-159.0), _wgslsmith_f_op_f32(arg_3 + arg_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-211.0), _wgslsmith_f_op_f32(143.0 - -148.0)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768.0 - 214.0) + arg_3))), _wgslsmith_f_op_f32(step(182.0, _wgslsmith_f_op_f32(1000.0 - _wgslsmith_f_op_f32(select(arg_3, arg_3, var_1.a))))))));
    }
    var var_0 = _wgslsmith_div_vec2_u32(~(~abs(vec2<u32>(1u, 4294967295u)) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(85306u, arg_1, arg_1), vec3<u32>(1u, u_input.b, arg_1)), arg_1) % vec2<u32>(32u))), abs(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 12939u), vec2<u32>(0u, u_input.b), vec2<u32>(arg_1, u_input.b)) << (~vec2<u32>(arg_1, 72937u) % vec2<u32>(32u)))));
    if (false) {
        let var_1 = func_1(!(!vec3<bool>(false, !false, arg_2.a)), Struct_1(!arg_2.b, _wgslsmith_mult_u32(countOneBits(26721u), ~31692u) >= (min(arg_1, var_0.x) ^ ~u_input.b)), vec3<i32>(-9152, ~_wgslsmith_add_i32(~(-10989), 1), ~2147483647), _wgslsmith_div_vec3_f32(vec3<f32>(-1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(554.0 + 1767.0)), -152.0), vec3<f32>(_wgslsmith_f_op_f32(ceil(653.0)), -1086.0, 586.0)));
    }
    for (var var_1 = select(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 14357), vec2<i32>(-48648, u_input.a)) << (~vec2<u32>(81548u, 75556u) % vec2<u32>(32u)), vec2<i32>(-27621 ^ -14073, u_input.a)), _wgslsmith_mod_i32(firstLeadingBit(u_input.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 128)), u_input.a))), 2147483647, !((arg_2.b && true) & true)); !arg_2.a; var_0 = _wgslsmith_sub_vec2_u32(~abs(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(0u, 21371u)), abs(vec2<u32>(u_input.b, 15563u)))), vec2<u32>(0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(19419u, arg_1), vec2<u32>(20502u, var_0.x) >> (vec2<u32>(var_0.x, arg_1) % vec2<u32>(32u))), 34588u | 4294967295u))) {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        loop {
            if (LOOP_COUNTERS[26u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            var var_2 = Struct_1(false, arg_2.b);
            var var_3 = _wgslsmith_f_op_f32(-arg_3);
            var var_4 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1667.0 + _wgslsmith_f_op_f32(f32(-1.0) * -222.0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_3 + -1000.0)), vec2<f32>(_wgslsmith_f_op_f32(883.0 - 273.0), arg_3), !func_3(476.0, arg_0, arg_0.a).yx)) * vec2<f32>(arg_3, 1405.0)));
            var_4 = func_1(!(!vec3<bool>(!var_4.b, var_2.b != true, any(vec2<bool>(false, arg_2.a)))), func_1(func_6(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(arg_3 + 647.0)), func_2(_wgslsmith_f_op_f32(min(arg_3, -789.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1278.0, -657.0))), 5180u, arg_0).xwz, arg_2, firstTrailingBit(vec3<i32>(2147483647, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -14288), vec2<i32>(-1, 2147483647)))), vec3<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, 363.0) - _wgslsmith_f_op_f32(452.0 + -500.0)), 850.0)), vec3<i32>(u_input.a ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 15111, 2147483647, -30827), vec4<i32>(u_input.a, u_input.a, u_input.a, 49170)), max(~(-1), i32(-1) * -u_input.a), 1 >> (26038u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, -2598.0, _wgslsmith_f_op_f32(trunc(arg_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 202.0, 1692.0))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(395.0, arg_3, arg_3), vec3<f32>(-733.0, arg_3, arg_3))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-480.0, 1173.0, -643.0)))), vec3<bool>(arg_2.b, var_2.b, true)))));
            var_1 = u_input.a;
        }
        var var_2 = arg_2;
        let var_3 = u_input.b;
        break;
    }
    var_0 = vec2<u32>(firstTrailingBit(~_wgslsmith_mod_u32(var_0.x, 0u)), u_input.b) >> (firstTrailingBit(~abs(~vec2<u32>(u_input.b, arg_1))) % vec2<u32>(32u));
    return !(!vec3<bool>(arg_0.b, false, ~4294967295u > var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    switch (-u_input.a) {
        default: {
            switch (1) {
                default: {
                    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1290.0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2206.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))), 360.0, _wgslsmith_f_op_f32(ceil(445.0)));
                    var var_1 = vec4<bool>(true, any(!(!vec4<bool>(false, true, true, false))), all(select(vec3<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)), !true), func_8(func_1(vec3<bool>(true, false, true), Struct_1(false, true), vec3<i32>(2147483647, u_input.a, -18810), var_0), u_input.b, func_1(vec3<bool>(false, true, false), Struct_1(false, true), vec3<i32>(u_input.a, u_input.a, u_input.a), var_0), _wgslsmith_f_op_f32(var_0.x * 178.0)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), true | (true & func_5(2147483647, !vec4<bool>(true, false, false, true))));
                    let var_2 = Struct_1(!var_1.x, false);
                }
            }
            if (~(-(min(u_input.a, -2367) >> (39859u % 32u))) < (i32(-1) * -(~abs(u_input.a)))) {
                var var_0 = 155.0;
            }
            loop {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                var var_0 = Struct_1(func_6(_wgslsmith_f_op_f32(-811.0), Struct_1(!func_8(Struct_1(true, false), u_input.b, Struct_1(false, false), 287.0).x, func_2(_wgslsmith_f_op_f32(step(-1054.0, 450.0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1027.0, 618.0) * vec2<f32>(-1000.0, 642.0))).b), ~_wgslsmith_div_u32(~35488u, u_input.b), func_2(-427.0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(623.0, 138.0)) + vec2<f32>(-1892.0, 833.0)))).x, true);
            }
            for (var var_0 = 3366; var_0 > 41706; var_0 += 1) {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
                let var_1 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1028.0) * -311.0))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(363.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1258.0))))));
            }
        }
    }
    var var_0 = true;
    for (var var_1 = 0; var_1 > -2147483648; var_1 = -(~_wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 63127, 1), _wgslsmith_div_vec4_i32(vec4<i32>(-24969, u_input.a, 1, u_input.a), vec4<i32>(-34556, u_input.a, 21684, -49493)))))) {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
        break;
    }
    var_0 = all(vec3<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, u_input.b), vec4<u32>(1u, 19598u, 43469u, 1u)), vec4<u32>(u_input.b, 4647u, 4294967295u, u_input.b) & vec4<u32>(0u, 2858u, u_input.b, u_input.b)) < ~u_input.b, false, !true));
    if (true) {
    }
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 370.0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1570.0)), _wgslsmith_f_op_f32(-640.0), -346.0) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-153.0, 1034.0, 1528.0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1287.0, -1356.0, 539.0)))), select(vec3<bool>(false, true, false), !vec3<bool>(false, false, false), !true)))), vec2<f32>(_wgslsmith_f_op_f32(752.0 + _wgslsmith_f_op_f32(select(1000.0, 696.0, func_4()))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(605.0)), _wgslsmith_f_op_f32(exp2(-2006.0))))))));
}

