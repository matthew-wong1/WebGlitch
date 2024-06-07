// {"0:0":[94,155,217,254,237,226,147,28,155,243,7,19,145,179,203,91,212,100,224,21,93,118,157,132,87,77,215,74,82,133,119,96,215,171,65,189,98,217,230,136,218,144,32,234,202,168,15,72]}
// Seed: 8403692719317187426

struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = true;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> LOOP_COUNTERS: array<u32, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn func_6(arg_0: vec4<i32>) -> vec4<f32> {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        let var_0 = -1;
    }
    var var_0 = Struct_1(vec4<i32>(-1) * -arg_0, 21015u, u_input.b.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000.0 + 1435.0), 350.0, _wgslsmith_f_op_f32(-163.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -880.0), _wgslsmith_f_op_f32(1000.0 - -825.0), true && true)) * 1743.0)));
    var var_1 = u_input.c;
    if (any(select(!(!(!vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(false, true, false)), true), firstLeadingBit(-u_input.a.x) <= -20385))) {
    }
    for (var var_2 = -69415; min(_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(u_input.b.x), ~93339u), u_input.c), ~(~(~0u))) == var_0.b; var_2 += 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        global2 = var_0.c;
        break;
    }
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(262.0)))), 1707.0, -712.0)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    let var_0 = Struct_1(vec4<i32>(arg_0.a.x, arg_2.x, arg_0.a.x, -arg_0.a.x), 23599u >> (7819u % 32u), arg_0.c, arg_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(438.0, _wgslsmith_f_op_f32(abs(arg_0.d.x)))), -1026.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1246.0))));
    global0 = -35232;
    global2 = ~arg_0.c;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(130.0, -336.0, -521.0, arg_0.d.x), vec4<f32>(-304.0, arg_0.d.x, -252.0, var_0.d.x)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(633.0, var_0.d.x, var_0.d.x, 1000.0), _wgslsmith_f_op_vec4_f32(func_6(var_0.a))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.d.x, -1725.0, -479.0))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.e, var_0.e, var_0.e))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(func_6(arg_0.a)).x, var_0.d.x, 929.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1020.0, 985.0, var_0.d.x, -1155.0))))))));
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var var_2 = 2147483647;
        break;
    }
    return arg_2.x;
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-931.0 * -526.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1908.0 * 245.0) - _wgslsmith_f_op_f32(f32(-1.0) * -258.0))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(282.0, 532.0) + vec2<f32>(960.0, -937.0))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(307.0, 1727.0) * vec2<f32>(1083.0, 1682.0)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-398.0)), _wgslsmith_f_op_f32(max(-417.0, 1757.0))))))));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    let var_1 = u_input.a.xyy;
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        switch (abs((abs(30715) | countOneBits(-2147483648 << (global2.x % 32u))) << (min(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(global2.x, global2.x)), ~(~global2.x)) % 32u))) {
            case 2147483647: {
            }
            case -2147483648: {
                var var_2 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(~(-36179), ~0) | 35974, ~countOneBits(-67839), u_input.a.x, -12295), u_input.b.x, ~u_input.b.wy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1602.0), -557.0)), _wgslsmith_f_op_f32(f32(-1.0) * -465.0)), _wgslsmith_f_op_f32(step(146.0, _wgslsmith_f_op_f32(176.0 + var_0.x))));
                let var_3 = Struct_1(_wgslsmith_mult_vec4_i32(var_2.a >> (abs(vec4<u32>(27954u, var_2.c.x, u_input.c, var_2.c.x)) % vec4<u32>(32u)), ~(-u_input.a)), _wgslsmith_dot_vec2_u32(var_2.c, (u_input.b.zx ^ vec2<u32>(0u, u_input.b.x)) & ~u_input.b.zy) ^ ~4294967295u, select(~u_input.b.zw, var_2.c, (!false || any(vec3<bool>(false, arg_0, arg_0))) & true), var_2.d, var_0.x);
                var var_4 = !(!vec3<bool>(arg_0, arg_0, !true));
            }
            case -9905: {
                global1 = _wgslsmith_mult_i32(abs(var_1.x), u_input.a.x) >= (i32(-1) * -24468);
                break;
            }
            default: {
                global0 = ~func_5(Struct_1(u_input.a, abs(52182u) & ~82963u, reverseBits(u_input.b.xy) | ~u_input.b.wz, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1802.0, var_0.x, var_0.x) * vec3<f32>(var_0.x, -1064.0, 1354.0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(546.0, 1103.0, -648.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(971.0)))), false, vec2<i32>(_wgslsmith_mult_i32(20515, _wgslsmith_sub_i32(1, u_input.a.x)), -2147483648));
            }
        }
        global2 = u_input.b.yw;
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            let var_2 = all(select(vec3<bool>(!(!false), select(arg_0, arg_0, arg_0), false & true), vec3<bool>(false, !arg_0, any(vec4<bool>(arg_0, true, arg_0, true))), !any(!vec4<bool>(false, arg_0, false, false))));
            continue;
        }
        if (all(!(!select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)), true)))) {
        }
    }
    switch (reverseBits(u_input.a.x)) {
        default: {
            let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 499.0, -2257.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(305.0, -1000.0, 1053.0)), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), arg_0))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1588.0, var_0.x, -824.0)))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), var_0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -473.0, var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-748.0) * _wgslsmith_f_op_f32(min(var_0.x, -253.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-1000.0))));
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_3 = Struct_1(~u_input.a, global2.x, ~(~(~countOneBits(u_input.b.ww))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_2.x * -1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -286.0))), var_2, !true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_6(vec4<i32>(firstTrailingBit(u_input.a.x), -1, max(var_1.x, 2147483647), _wgslsmith_mult_i32(u_input.a.x, var_1.x)))).x));
                var var_4 = Struct_1(u_input.a, firstTrailingBit(30398u), vec2<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, var_3.b, global2.x, 98197u), vec4<u32>(4612u, u_input.b.x, u_input.c, 4294967295u)), ~u_input.c), var_3.c.x) ^ vec2<u32>(~_wgslsmith_mult_u32(4294967295u, 27311u), ~reverseBits(35461u)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_3.e + _wgslsmith_f_op_f32(min(var_0.x, -1000.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.d.x, var_2.x, var_3.e))))), vec3<f32>(-468.0, _wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(var_3.e - 996.0)), vec3<bool>(false && arg_0, var_0.x < var_2.x, any(vec4<bool>(false, true, true, arg_0))))))), -949.0);
                var_4 = Struct_1(~u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(10664u, var_3.c.x), vec2<u32>(14430u, 4294967295u)), ~vec2<u32>(4294967295u, var_4.b)), ~_wgslsmith_div_vec2_u32(u_input.b.zw, vec2<u32>(36042u, var_3.c.x))), 3994u), u_input.b.wx, vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -430.0, var_4.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_6(u_input.a << (vec4<u32>(u_input.b.x, 0u, 90585u, 1u) % vec4<u32>(32u)))).x - _wgslsmith_f_op_f32(-950.0 + var_4.e)))));
                global1 = !any(select(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, false), arg_0), vec3<bool>(arg_0, false & arg_0, arg_0), false));
                var_4 = var_3;
            }
            if (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_0.x) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1274.0 + 1418.0) + _wgslsmith_f_op_f32(-var_2.x))))) {
                var var_3 = u_input.b;
                var_0 = var_2.yz;
            }
            let var_3 = arg_0;
            for (; true; ) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                continue;
            }
        }
    }
    return Struct_1(u_input.a, countOneBits(min(0u, _wgslsmith_div_u32(4294967295u, u_input.b.x) >> (0u % 32u))), ~_wgslsmith_mod_vec2_u32(~max(u_input.b.xw, vec2<u32>(u_input.b.x, 4294967295u)), ~u_input.b.wy), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(527.0 - _wgslsmith_div_f32(var_0.x, var_0.x)), var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(floor(var_0.x)), -885.0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(618.0, -1231.0, var_0.x) - vec3<f32>(var_0.x, -1872.0, 862.0)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.x)))), 861.0)) + _wgslsmith_f_op_f32(ceil(-813.0))));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_add_vec2_i32(-(countOneBits(u_input.a.wz) | u_input.a.zx), select(vec2<i32>(36632, 0), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_2.a.zx, arg_0.a.xy), reverseBits(0)), arg_2.a.x), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, -1132.0 >= arg_2.d.x), !(!vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_dot_vec3_u32(~u_input.b.wxy, u_input.b.yzz);
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        continue;
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)), 1008.0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e + -1000.0)), -1000.0, arg_0.e, _wgslsmith_f_op_f32(select(arg_2.d.x, _wgslsmith_f_op_f32(1443.0 - 1122.0), any(vec2<bool>(true, false))))), !select(vec4<bool>(true, false, false, true), !vec4<bool>(true, false, true, true), !false))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000.0, arg_1.x))), arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-332.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(arg_0.d.x - arg_2.e)))), -103.0)));
            var var_3 = -func_4(true).a.x;
            break;
        }
        for (var var_2: i32; !(!true); var_2 -= 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            break;
        }
        var var_2 = _wgslsmith_f_op_f32(2322.0 * _wgslsmith_f_op_f32(-885.0));
    }
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-259.0, -1376.0)));
    return arg_0.d.x;
}

fn func_3() -> vec3<f32> {
    global1 = global2.x == _wgslsmith_add_u32(_wgslsmith_mod_u32(~min(u_input.b.x, u_input.b.x), ~(global2.x ^ 4294967295u)), ~(reverseBits(u_input.b.x) >> (global2.x % 32u)));
    var var_0 = Struct_1(u_input.a, global2.x, u_input.b.yx, vec3<f32>(_wgslsmith_f_op_f32(-964.0), -332.0, _wgslsmith_f_op_f32(step(-552.0, -2086.0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1756.0 + 1002.0)))), _wgslsmith_f_op_f32(func_7(func_4(all(vec4<bool>(false, true, true, false))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(-1006.0), 1000.0, _wgslsmith_f_op_f32(-340.0)), func_4(!false))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(596.0 * -795.0))), var_0.e), -863.0, 305.0)));
    let var_2 = any(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)));
    if (1266.0 <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_6(u_input.a)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_f_op_f32(min(var_1.x, -651.0)), -20792 < u_input.a.x)))))) {
        let var_3 = Struct_1(select(min(max(vec4<i32>(2147483647, 27079, -248, u_input.a.x), vec4<i32>(5534, 3906, u_input.a.x, 30037)), var_0.a), -var_0.a, select(select(!vec4<bool>(false, false, var_2, true), vec4<bool>(true, var_2, var_2, var_2), !vec4<bool>(var_2, false, var_2, var_2)), vec4<bool>(!true, all(vec4<bool>(false, var_2, false, var_2)), var_2, var_2 || var_2), var_2)), firstLeadingBit(global2.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, u_input.c ^ 1018u, global2.x), ~(~u_input.b.wwx)) % 32u), reverseBits(var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(494.0, var_0.e, var_0.e)), var_1) * vec3<f32>(1933.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)), -1000.0)), _wgslsmith_f_op_f32(1450.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -903.0) + _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)))));
    }
    return _wgslsmith_f_op_vec3_f32(var_0.d * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(Struct_1(vec4<i32>(u_input.a.x, var_0.a.x, var_0.a.x, 26440), global2.x, u_input.b.ww, vec3<f32>(-2536.0, 1021.0, var_0.e), -409.0), vec4<f32>(829.0, -174.0, 890.0, var_0.d.x), Struct_1(vec4<i32>(-895, var_0.a.x, 2147483647, -2147483648), 27719u, u_input.b.wy, vec3<f32>(var_0.d.x, var_1.x, -1143.0), var_1.x))) - _wgslsmith_f_op_f32(round(-968.0)))), _wgslsmith_f_op_f32(var_0.e + 1000.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1423.0)) + 480.0)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), -591.0))));
    global0 = _wgslsmith_mult_i32(u_input.a.x, -56021) & u_input.a.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
    switch (_wgslsmith_sub_i32(u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(countOneBits(u_input.a.zyy), vec3<i32>(-1, -u_input.a.x, abs(-1)))))) {
        case -1: {
        }
        case 0: {
            global2 = u_input.b.zz ^ _wgslsmith_mult_vec2_u32(u_input.b.zx, vec2<u32>(u_input.b.x, ~u_input.c));
            var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-534.0))) + _wgslsmith_f_op_f32(func_7(func_4(false), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-401.0, 980.0, 1417.0, arg_0.x), vec4<f32>(var_0.x, -690.0, arg_0.x, 551.0))), Struct_1(u_input.a, 0u, vec2<u32>(global2.x, u_input.c), arg_0, arg_2)))) * arg_2));
            var var_2 = u_input.b.x;
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                break;
            }
        }
        case 2147483647: {
            global1 = global2.x < _wgslsmith_clamp_u32(24243u, _wgslsmith_sub_u32(u_input.c, countOneBits(~44654u)), 661u);
            let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, var_0.x), arg_1)), vec2<f32>(arg_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1536.0, arg_2))) + arg_1))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(128.0, -1000.0))));
            if (!(~9935u < ~u_input.c)) {
                global1 = (i32(-1) * -42343) < u_input.a.x;
                let var_2 = func_4(select(false, 0u < 0u, func_5(func_4(false), all(vec2<bool>(false, false)), vec2<i32>(u_input.a.x, -2147483648)) >= (1 & u_input.a.x)));
                return _wgslsmith_f_op_f32(-666.0);
            }
        }
        case 1: {
        }
        default: {
            if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -733.0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x)) {
                global0 = -21727;
                var var_1 = Struct_1(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, -2147483648), u_input.a.xw) | 14226, ~u_input.a.x, -2147483648, u_input.a.x), 0u, u_input.b.wx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1040.0, arg_2)), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + arg_2) * _wgslsmith_f_op_f32(arg_2 + var_0.x)) + _wgslsmith_f_op_f32(func_7(Struct_1(u_input.a, 5189u, u_input.b.xx, arg_0, 1167.0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-902.0, arg_1.x, arg_2, arg_2), vec4<f32>(arg_2, -1345.0, arg_2, -1109.0), true)), func_4(false))))));
                global2 = var_1.c;
                global0 = select(abs(3136), var_1.a.x, !(_wgslsmith_f_op_f32(-arg_0.x) >= arg_2)) ^ abs(1);
                var_1 = func_4(!true);
            }
            let var_1 = ~vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, -28865), vec2<i32>(213, u_input.a.x)), 9967 ^ -13500, -237.0 >= 675.0) >> (4294967295u % 32u), 3591);
            return _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_0.x - arg_2));
        }
    }
    global2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(28715u, (1u | global2.x) << (_wgslsmith_sub_u32(global2.x, 0u) % 32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.c, 1u), abs(u_input.c)), ~(~vec2<u32>(u_input.b.x, global2.x))));
    return _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(ceil(arg_1.x)));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-918.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(345.0, 165.0, -147.0), vec3<f32>(143.0, -1163.0, 1767.0), vec3<bool>(true, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(560.0, 739.0))), _wgslsmith_f_op_f32(-823.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -178.0), _wgslsmith_f_op_f32(-460.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -393.0) * _wgslsmith_f_op_f32(1358.0 - 814.0))) * _wgslsmith_f_op_vec4_f32(func_6(firstLeadingBit(u_input.a << (u_input.b % vec4<u32>(32u))))).x)));
    var var_1 = Struct_1(~vec4<i32>(countOneBits(u_input.a.x >> (1u % 32u)), 18668, abs(~(-7378)), ~(-u_input.a.x)), ~_wgslsmith_add_u32(0u | _wgslsmith_clamp_u32(global2.x, global2.x, global2.x), ~_wgslsmith_clamp_u32(4294967295u, 0u, 0u)), vec2<u32>(~(~u_input.c), ~_wgslsmith_mod_u32(75452u, 887u)) << (~_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(40287u, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, global2.x), u_input.b.xw)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(132.0 * -590.0), _wgslsmith_f_op_f32(-410.0)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000.0, -1374.0, var_0), vec3<f32>(-706.0, 1322.0, var_0), false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    var var_2 = Struct_1(~var_1.a, ~var_1.c.x, u_input.b.zz, vec3<f32>(1159.0, var_0, -3048.0), var_1.e);
    var var_3 = _wgslsmith_f_op_f32(-1913.0);
    global1 = true;
    return -2298.0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 8318;
    switch (1) {
        case -2147483648: {
            let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(vec2<bool>(true, true), vec2<bool>(true, false), true))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-531.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1125.0, -1750.0), _wgslsmith_f_op_f32(-393.0 + -368.0)))), _wgslsmith_f_op_f32(f32(-1.0) * -876.0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -445.0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(740.0, -1301.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407.0) - -2035.0))));
            let var_1 = func_4(0u <= ~75503u).c.x;
            var var_2 = ~max(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1, var_1, 53535u, var_1), select(u_input.b, vec4<u32>(global2.x, 1u, u_input.c, 79869u), true)) << (((u_input.b << (u_input.b % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(u_input.b, u_input.b)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(46124u, u_input.c, u_input.b.x, u_input.b.x), u_input.b, ~vec4<u32>(var_1, var_1, 51409u, var_1)), u_input.b));
            var_2 = ~u_input.b;
        }
        case -61191: {
            var var_0 = Struct_1(u_input.a, countOneBits(u_input.c), _wgslsmith_mod_vec2_u32(u_input.b.wx, vec2<u32>(~1u >> ((u_input.c ^ 1u) % 32u), global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(1295.0)), _wgslsmith_f_op_f32(344.0 * -756.0), _wgslsmith_f_op_f32(select(-837.0, -850.0, true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1226.0, 283.0, -266.0))))))), -293.0);
            switch (var_0.a.x) {
                default: {
                }
            }
            if (any(!vec3<bool>(false, true, !(!false)))) {
                let var_1 = var_0.c;
            }
        }
        case -2377: {
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                break;
            }
            let var_0 = _wgslsmith_f_op_f32(-func_4(abs(~global2.x) != 2001u).e);
            for (var var_1 = -1; var_1 <= -1; var_1 -= 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_2 = Struct_1(func_4(true).a, 1u, reverseBits(func_4(all(vec2<bool>(true, true))).c << ((u_input.b.xw << ((u_input.b.yz ^ vec2<u32>(8314u, global2.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(219.0, var_0, var_0) + vec3<f32>(var_0, 1000.0, -722.0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1405.0, var_0, -549.0) * vec3<f32>(857.0, 1180.0, -674.0)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, 642.0, 2066.0), vec3<f32>(-322.0, 109.0, var_0)))), true)), _wgslsmith_f_op_f32(func_7(Struct_1(~u_input.a, ~0u, _wgslsmith_div_vec2_u32(u_input.b.wx, reverseBits(u_input.b.xw)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-648.0, -377.0, 333.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))), var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 + 403.0), _wgslsmith_div_f32(var_0, 111.0), _wgslsmith_f_op_f32(var_0 - 1929.0), var_0)), func_4(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))))));
            }
        }
        default: {
            global1 = firstTrailingBit(~(~_wgslsmith_add_u32(u_input.b.x, 271u))) != ~(select(reverseBits(9830u), ~0u, true && false) ^ _wgslsmith_sub_u32(abs(u_input.b.x), reverseBits(0u)));
        }
    }
    if ((-2147483648 ^ u_input.a.x) > u_input.a.x) {
        if ((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761.0)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_7(Struct_1(u_input.a, 52902u, u_input.b.wz, vec3<f32>(-2875.0, 913.0, 1493.0), -1000.0), vec4<f32>(-926.0, 988.0, -444.0, 157.0), Struct_1(u_input.a, global2.x, vec2<u32>(global2.x, 96425u), vec3<f32>(1101.0, 928.0, 787.0), -1070.0))), _wgslsmith_f_op_f32(-334.0)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1120.0, -846.0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1386.0)))))) | false) {
            let var_0 = ~select(u_input.b.ywz | u_input.b.wwx, vec3<u32>(1u, firstLeadingBit(global2.x), 1u), !true);
            global2 = select(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, u_input.c), ~(~vec2<u32>(var_0.x, 23071u))), ~_wgslsmith_sub_vec2_u32(var_0.yy, _wgslsmith_div_vec2_u32(var_0.xz, func_4(true).c)), (0u >= var_0.x) & (!(true || false) || false));
        }
    }
    for (var var_0 = -2147483648; ; var_0 += 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        break;
    }
    global2 = ~vec2<u32>(reverseBits(1566u), max(reverseBits(u_input.c | 8877u), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.a.x, func_5(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 36125, 54993), 4294967295u, ~vec2<u32>(global2.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-263.0, 563.0, -236.0) - vec3<f32>(-1522.0, 1123.0, -1497.0)), -1000.0), true, ~u_input.a.yw << (_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, u_input.c), vec2<u32>(1u, 19195u)) % vec2<u32>(32u)))), ~abs(~53853u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-699.0, 883.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -519.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271.0 * _wgslsmith_f_op_vec3_f32(func_3()).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1245.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -496.0))))));
}

