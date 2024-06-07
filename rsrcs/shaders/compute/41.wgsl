// {"0:0":[72,223,7,227,47,242,195,4,33,112,138,236,147,96,255,156,207,109,55,115,179,87,196,12,16,208,125,190,100,9,173,110,255,115,212,69,248,162,62,193,213,150,87,190,171,199,199,159]}
// Seed: 13218343040946837214

struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-464.0, 1202.0, 833.0), vec3<f32>(-827.0, 1776.0, 904.0), vec3<f32>(-1369.0, 830.0, -1703.0), vec3<f32>(-314.0, -354.0, -846.0), vec3<f32>(151.0, -728.0, -527.0), vec3<f32>(276.0, 1227.0, -859.0));

var<private> LOOP_COUNTERS: array<u32, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_5(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-299.0, -503.0, arg_0.x, 328.0) + vec4<f32>(-669.0, 669.0, 1644.0, arg_0.x))))));
    let var_1 = var_0.b;
    var var_2 = ~(~_wgslsmith_clamp_vec4_u32(min(abs(vec4<u32>(u_input.b.x, 56584u, 1u, 0u)), vec4<u32>(4294967295u, 11453u, 55652u, 17884u)), vec4<u32>(countOneBits(1u), 63770u, max(80156u, u_input.a), 4294967295u), ~vec4<u32>(u_input.b.x, 17835u, 1u, 54773u)));
    for (; ; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var var_3 = var_0.b.a.x == -1991.0;
        }
        var var_3 = -(~(-(~(~u_input.c.x))));
        break;
    }
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a, var_1.a, vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-212.0, 451.0, 939.0, var_1.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_1.a.x, var_1.a.x, var_0.b.a.x), var_0.b.a, false))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1879.0, -250.0, false)), _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-1217.0 + var_1.a.x)))));
    return -u_input.c.x;
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = -1;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2207.0))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1371.0, 1191.0, 923.0, 1342.0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1880.0, 286.0, -666.0, 280.0) + vec4<f32>(920.0, -439.0, -688.0, 199.0))))));
    switch (~max(max(func_5(var_1.b.a.yw), -countOneBits(-33152)), -(i32(-1) * 0))) {
        default: {
            let var_2 = u_input.c.wwz;
            let var_3 = var_1.b.a;
            var_1 = Struct_4(_wgslsmith_f_op_f32(min(-690.0, _wgslsmith_f_op_f32(ceil(2138.0)))), var_1.b);
            var var_4 = _wgslsmith_f_op_f32(654.0 - var_3.x);
        }
    }
    global0 = array<vec3<f32>, 6>();
    global0 = array<vec3<f32>, 6>();
    return var_1.b;
}

fn func_6(arg_0: Struct_1) -> Struct_4 {
    switch (_wgslsmith_mod_i32(u_input.c.x, -21825)) {
        case 45801: {
        }
        default: {
        }
    }
    return Struct_4(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2301.0)))), func_4(vec3<bool>(!(!true), any(vec4<bool>(true, true, false, true)) || !true, false)));
}

fn func_7(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_4) -> f32 {
    let var_0 = -_wgslsmith_sub_i32(-1, ~(-(~(-7897))));
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        break;
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    let var_1 = abs(-71111);
    if (all(!(!vec2<bool>(4294967295u > 18911u, all(vec2<bool>(false, true)))))) {
        for (var var_2 = -22852; false; global0 = array<vec3<f32>, 6>()) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            let var_3 = _wgslsmith_mod_vec3_u32(arg_0, abs(min(vec3<u32>(1u, 26961u, 0u), vec3<u32>(0u, 1u, u_input.a)) | arg_0)) << (arg_0 % vec3<u32>(32u));
        }
        return -1642.0;
    }
    return _wgslsmith_f_op_f32(-arg_2.b.a.x);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<u32>) -> f32 {
    global0 = array<vec3<f32>, 6>();
    let var_0 = ~arg_3.x << (arg_0 % 32u);
    global0 = array<vec3<f32>, 6>();
    var var_1 = ~(-23160);
    var_1 = -53196;
    return _wgslsmith_f_op_f32(func_7(reverseBits(~(~(~vec3<u32>(var_0, var_0, 4294967295u)))), arg_1.a.x, func_6(func_4(!(!vec3<bool>(false, false, true))))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_sub_u32(4294967295u, ~107649u) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~0u, u_input.b.x), ~_wgslsmith_mult_vec3_u32(u_input.b, u_input.b)));
    var var_1 = 12597;
    global0 = array<vec3<f32>, 6>();
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        switch (firstTrailingBit(0)) {
            case -2147483648: {
                let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(var_0.a, Struct_1(vec4<f32>(222.0, arg_0, -1536.0, arg_0)), vec4<f32>(-229.0, 728.0, arg_0, -1000.0), u_input.b.zx))))), _wgslsmith_f_op_f32(func_7(~abs(u_input.b), arg_0, Struct_4(_wgslsmith_f_op_f32(step(arg_0, arg_0)), func_6(Struct_1(vec4<f32>(2157.0, arg_0, -413.0, arg_0))).b))), func_4(!(!vec3<bool>(false, true, true))).a.x, _wgslsmith_f_op_f32(func_3(4294967295u, func_6(func_6(Struct_1(vec4<f32>(178.0, 1238.0, arg_0, 985.0))).b).b, vec4<f32>(_wgslsmith_f_op_f32(sign(117.0)), _wgslsmith_div_f32(314.0, arg_0), _wgslsmith_f_op_f32(-686.0), _wgslsmith_f_op_f32(ceil(arg_0))), u_input.b.xz))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -1577.0), arg_0)), arg_0))));
                let var_3 = all(select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), !vec2<bool>(true, false), !vec2<bool>(false, false)), select(vec2<bool>(all(vec3<bool>(true, true, true)), true), select(!vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), !vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !select(!vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))));
                break;
            }
            case -1: {
            }
            default: {
                continue;
            }
        }
        var var_2 = Struct_1(vec4<f32>(func_4(vec3<bool>(false, !false, all(vec3<bool>(false, false, false)))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_7(vec3<u32>(0u, u_input.b.x, var_0.a), arg_0, Struct_4(-496.0, Struct_1(vec4<f32>(450.0, 657.0, arg_0, arg_0))))), _wgslsmith_f_op_f32(exp2(arg_0))))), 1602.0));
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        continue;
    }
    return _wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(-31175, max(1, arg_1.x))), -countOneBits(u_input.c.xx) >> (vec2<u32>(0u, var_0.a) % vec2<u32>(32u)));
}

fn func_8(arg_0: bool) -> i32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_mod_u32(u_input.b.x, 49588u), ~u_input.b.x, u_input.b.x & 0u)), select(vec4<u32>(u_input.b.x, u_input.a, 44176u, 0u) | firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 40957u)), (vec4<u32>(u_input.b.x, 32047u, 1u, 71130u) & vec4<u32>(123190u, u_input.a, 0u, 1u)) ^ (vec4<u32>(112211u, 32633u, u_input.a, 103903u) | vec4<u32>(21995u, 4294967295u, u_input.b.x, u_input.b.x)), !select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0))), firstTrailingBit(_wgslsmith_add_i32(func_2(_wgslsmith_f_op_f32(-128.0), u_input.c.wy), 2147483647)), func_6(Struct_1(vec4<f32>(_wgslsmith_div_f32(-199.0, 238.0), _wgslsmith_f_op_f32(-505.0), _wgslsmith_f_op_f32(-468.0), _wgslsmith_f_op_f32(920.0 * 1340.0)))).b);
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        continue;
    }
    let var_1 = var_0.a;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_div_i32((~countOneBits(-1) | 58547) >> (_wgslsmith_dot_vec2_u32(u_input.b.yy, _wgslsmith_clamp_vec2_u32(u_input.b.zy | vec2<u32>(var_0.a, 66270u), u_input.b.yy, _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(var_0.a, 4294967295u)))) % 32u), (reverseBits(countOneBits(u_input.c.x)) << (0u % 32u)) >> (u_input.b.x % 32u));
    return select(2147483647, _wgslsmith_sub_i32(~u_input.c.x, u_input.c.x), var_2);
}

fn func_1() -> Struct_1 {
    let var_0 = 252.0;
    switch (func_8(-2147483648 > _wgslsmith_mult_i32(~(u_input.c.x ^ u_input.c.x), ~func_2(var_0, vec2<i32>(u_input.c.x, -11534))))) {
        default: {
            let var_1 = Struct_2(_wgslsmith_mod_u32(u_input.a, (2317u | ~u_input.a) << (((u_input.b.x << (1u % 32u)) & ~u_input.a) % 32u)));
        }
    }
    if (all(!vec2<bool>(any(!vec3<bool>(false, false, true)), !(!false)))) {
        let var_1 = !(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true || true), vec2<bool>(true, true & false), vec2<bool>(true, !false)));
        var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(~(firstTrailingBit(1) >> (u_input.a % 32u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(-23425, u_input.c.x)), _wgslsmith_div_i32(-1, u_input.c.x)) << (~(~36483u) % 32u)), vec2<i32>(1, 8945));
        global0 = array<vec3<f32>, 6>();
        for (var var_3 = -2147483648; var_3 < -72198; ) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var var_4 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_7(vec3<u32>(0u, 4294967295u, 5998u), var_0, func_6(Struct_1(vec4<f32>(-341.0, -955.0, -1188.0, 1032.0))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-559.0, -183.0, false)) + 214.0) * 606.0)));
            var_3 = var_2.x;
            var var_5 = _wgslsmith_f_op_f32(min(-899.0, _wgslsmith_f_op_f32(ceil(818.0))));
            let var_6 = vec2<i32>(2147483647 | (_wgslsmith_dot_vec4_i32(~u_input.c, vec4<i32>(var_2.x, -2824, -1, 2147483647)) >> (0u % 32u)), u_input.c.x);
        }
    }
    if (select(false, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), !(!true))) {
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            global0 = array<vec3<f32>, 6>();
        }
    }
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-259.0, _wgslsmith_f_op_f32(-var_0), 1327.0, _wgslsmith_f_op_f32(f32(-1.0) * -1287.0))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(798.0, var_0, var_0, -169.0))) + vec4<f32>(-387.0, var_0, 1994.0, var_0))))))));
    return func_4(!vec3<bool>(true, !(!false), any(vec3<bool>(true, false, true))));
}

fn func_9(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> bool {
    global0 = array<vec3<f32>, 6>();
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        return select(0, (-42723 << (u_input.b.x % 32u)) & u_input.c.x, !(!false)) <= arg_2;
    }
    var var_0 = _wgslsmith_f_op_f32(-func_4(!vec3<bool>(select(true, true, true), false, all(vec3<bool>(true, true, true)))).a.x);
    global0 = array<vec3<f32>, 6>();
    switch (func_5(_wgslsmith_f_op_vec2_f32(select(arg_0.a.wx, arg_0.a.wz, any(vec2<bool>(all(vec2<bool>(false, false)), arg_2 > -38638)))))) {
        case 19259: {
            if (true) {
                var var_1 = _wgslsmith_add_vec4_u32(~firstLeadingBit(~vec4<u32>(35511u, 12097u, 0u, 4294967295u)) ^ _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b.x, 0u, 55794u, 25169u)), ~vec4<u32>(u_input.a, 58488u, 18926u, 16259u)), _wgslsmith_sub_vec4_u32(~max(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, 57248u, u_input.a)), ~((vec4<u32>(u_input.b.x, 14794u, u_input.a, u_input.b.x) ^ vec4<u32>(58100u, 34009u, u_input.b.x, 36328u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(60050u, u_input.b.x, u_input.a, 19044u)))));
                let var_2 = arg_1.b;
                global0 = array<vec3<f32>, 6>();
            }
            if (true) {
            }
            global0 = array<vec3<f32>, 6>();
            global0 = array<vec3<f32>, 6>();
        }
        case 2147483647: {
            var var_1 = _wgslsmith_dot_vec2_u32(u_input.b.zz, select(vec2<u32>(~u_input.b.x, 1u) >> (u_input.b.zx % vec2<u32>(32u)), u_input.b.xx, vec2<bool>(all(vec2<bool>(true, false)), true)));
            if (false) {
                var var_2 = arg_1.b;
                let var_3 = func_6(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-948.0)))), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(func_4(vec3<bool>(false, false, false)).a.x * var_2.a.x), _wgslsmith_f_op_f32(func_7(reverseBits(u_input.b), _wgslsmith_f_op_f32(sign(var_2.a.x)), func_6(arg_1.b)))))).b;
                global0 = array<vec3<f32>, 6>();
            }
            if (!true) {
                var_0 = _wgslsmith_f_op_f32(ceil(-733.0));
                var var_2 = ~(~select(~select(u_input.b.xx, u_input.b.zz, false), vec2<u32>(firstTrailingBit(1u), u_input.a), false));
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_1.b.a.x, -1517.0, arg_0.a.x) + vec4<f32>(1000.0, -952.0, arg_0.a.x, arg_0.a.x))))));
                var_1 = ~(~u_input.a);
            }
        }
        case 1818: {
            var var_1 = select(vec4<bool>(false || (_wgslsmith_f_op_f32(-806.0) >= _wgslsmith_f_op_f32(-254.0)), any(select(vec3<bool>(false, false, false), !vec3<bool>(true, true, false), vec3<bool>(false, true, false))), all(vec2<bool>(false, !false)), arg_1.b.a.x < _wgslsmith_f_op_f32(trunc(471.0))), select(!(!vec4<bool>(true, false, true, true)), select(!(!vec4<bool>(true, false, true, false)), vec4<bool>(false, !true, any(vec4<bool>(false, true, false, true)), false), select(!vec4<bool>(true, true, false, false), !vec4<bool>(true, false, false, true), true)), !false), select(!select(vec4<bool>(false, true, false, true), !vec4<bool>(true, true, false, false), false), vec4<bool>(true, all(!vec2<bool>(true, false)), all(!vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, true))), select(!vec4<bool>(false, true, false, true), !(!vec4<bool>(false, false, false, true)), true)));
            var_0 = -1149.0;
        }
        default: {
            var_0 = _wgslsmith_f_op_f32(round(542.0));
            var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1751.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.a.wx - arg_1.b.a.xw))));
            let var_2 = vec4<bool>(max(u_input.c.x, _wgslsmith_sub_i32(31250, 25920)) < _wgslsmith_sub_i32(_wgslsmith_mod_i32(-arg_2, arg_2 >> (u_input.b.x % 32u)), 2147483647), all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), u_input.a == 13600u), !vec3<bool>(false, false, false), select(!vec3<bool>(false, true, false), !vec3<bool>(true, true, true), !vec3<bool>(false, true, true)))), all(!(!vec2<bool>(true, true))) && all(vec3<bool>(true && true, !false, false)), false);
        }
    }
    return !false;
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = 0; var_0 < 2147483647; var_0 += 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        global0 = array<vec3<f32>, 6>();
    }
    var var_0 = Struct_2(36555u);
    if (func_9(func_1(), func_6(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1029.0, 339.0, 400.0, 928.0)))))), ~u_input.c.x)) {
    }
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(max(_wgslsmith_mult_i32(u_input.c.x, 16660), _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), u_input.c.x), u_input.c.x, u_input.c.x, _wgslsmith_div_i32(u_input.c.x, -1 | ~(~(-2147483648))));
    global0 = array<vec3<f32>, 6>();
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        continue;
    }
    let var_2 = vec2<i32>(countOneBits(1 & func_2(1716.0, var_1.wz)) | func_8(!(!true)), ~(_wgslsmith_sub_i32(i32(-1) * -1, u_input.c.x) | ~abs(-2147483648)));
    for (var var_3 = -(var_2.x << (u_input.a % 32u)) | 53; !false; ) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        continue;
    }
    global0 = array<vec3<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, -reverseBits(~u_input.c.xy));
}

