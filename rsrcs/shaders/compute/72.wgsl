// {"0:0":[238,35,164,41]}
// Seed: 15730660790508788034

struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(-947.0, -373.0, -695.0), vec4<f32>(-160.0, 2115.0, -423.0, -332.0), 4294967295u), Struct_1(vec3<f32>(982.0, 1258.0, 863.0), vec4<f32>(-841.0, 2447.0, -1012.0, 1648.0), 0u), Struct_1(vec3<f32>(327.0, -233.0, 668.0), vec4<f32>(-1490.0, 875.0, 1492.0, -1335.0), 15300u), Struct_1(vec3<f32>(1000.0, -663.0, 1601.0), vec4<f32>(-1985.0, -724.0, -446.0, -424.0), 18107u), Struct_1(vec3<f32>(473.0, -206.0, -1084.0), vec4<f32>(1407.0, 839.0, -167.0, 771.0), 4294967295u), Struct_1(vec3<f32>(-305.0, -742.0, 1000.0), vec4<f32>(-594.0, 561.0, 813.0, -612.0), 0u), Struct_1(vec3<f32>(806.0, 678.0, 175.0), vec4<f32>(-455.0, -1713.0, 386.0, 703.0), 75700u), Struct_1(vec3<f32>(190.0, 391.0, -629.0), vec4<f32>(-522.0, -771.0, -303.0, 1187.0), 1u), Struct_1(vec3<f32>(1362.0, 112.0, -1000.0), vec4<f32>(832.0, 803.0, 1000.0, 664.0), 0u), Struct_1(vec3<f32>(-999.0, 153.0, 374.0), vec4<f32>(-478.0, -407.0, -346.0, -1358.0), 4294967295u), Struct_1(vec3<f32>(1058.0, -959.0, -201.0), vec4<f32>(211.0, 390.0, -1000.0, 638.0), 0u), Struct_1(vec3<f32>(231.0, -854.0, 493.0), vec4<f32>(-121.0, 770.0, -244.0, 810.0), 81282u), Struct_1(vec3<f32>(-211.0, 863.0, 403.0), vec4<f32>(-1017.0, 1530.0, -650.0, 452.0), 6460u));

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-256.0, 907.0, 492.0), vec4<f32>(-932.0, -319.0, 679.0, -727.0), 24478u);

var<private> global4: f32;

var<private> LOOP_COUNTERS: array<u32, 21>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = global0[_wgslsmith_index_u32(~arg_1.d.c, 21u)] || false;
    for (var var_1 = -1; var_1 > -50147; global2 = arg_1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    global2 = Struct_2(global2.a, _wgslsmith_clamp_i32(arg_0, abs(arg_1.b) ^ abs(~(-16373)), ~(-arg_0)), -24589, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(~4294967295u, countOneBits(global2.d.c)), firstLeadingBit(12009u) << ((arg_1.d.c & 23250u) % 32u)), 13u)]);
    var var_1 = 9151;
    if (select(~36534u, u_input.a, ~(~u_input.a) <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.c, 44809u, 18358u, 0u), vec4<u32>(global3.c, arg_1.d.c, 0u, arg_1.d.c))) > 0u) {
        for (var var_2 = 1196; var_2 >= -24971; global4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.d.b.x))))) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        }
        if (false) {
            global4 = 326.0;
        }
        let var_2 = global2.d.b;
        let var_3 = ~arg_1.d.c;
    }
    return arg_1.d.b.xyw;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.a.x, 1405.0)), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(ceil(-542.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(-2147483648, arg_0)) * global3.a)))) - vec3<f32>(-681.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)), _wgslsmith_f_op_f32(step(arg_0.d.b.x, _wgslsmith_f_op_f32(trunc(1535.0)))))), _wgslsmith_f_op_f32(-1000.0 + arg_0.d.a.x)));
    var var_1 = 1;
    let var_2 = countOneBits(countOneBits(vec4<u32>(~global2.d.c, 4294967295u, ~(51655u & 41324u), global2.d.c)));
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        for (var var_3 = 0; var_3 < -2147483648; ) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            global2 = arg_0;
            continue;
        }
        switch (i32(-1) * -37427) {
            case -2147483648: {
                var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(~global2.c, ~(~(-36204 << (1u % 32u)))), vec2<i32>(_wgslsmith_div_i32(arg_0.c, abs(-2147483647)), -_wgslsmith_sub_i32(arg_0.b, global2.c)));
                var var_4 = arg_1;
                global1 = array<Struct_1, 13>();
                break;
            }
            default: {
                break;
            }
        }
        for (; false && global2.a; ) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        }
        switch (_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(~vec2<i32>(1, 1), max(vec2<i32>(arg_0.b, 0) | vec2<i32>(global2.b, -97235), vec2<i32>(global2.c, -24324)))), -min(vec2<i32>(global2.c, _wgslsmith_sub_i32(arg_0.b, global2.b)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.c, global2.c), vec2<i32>(21674, arg_0.c)))))) {
            case -1: {
                global4 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-344.0, arg_1.a.x)));
                global0 = array<bool, 21>();
                var var_3 = arg_0;
                break;
            }
            case 18208: {
            }
            default: {
                let var_3 = arg_0;
                global1 = array<Struct_1, 13>();
                var var_4 = !select(select(!vec4<bool>(global2.a, global0[_wgslsmith_index_u32(u_input.a, 21u)], false, true), select(!vec4<bool>(false, global2.a, true, arg_0.a), vec4<bool>(global2.a, false, var_3.a, false), !vec4<bool>(var_3.a, arg_0.a, arg_0.a, true)), all(select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(global2.a, false, arg_0.a), true))), !select(select(vec4<bool>(var_3.a, false, true, var_3.a), vec4<bool>(true, true, false, var_3.a), vec4<bool>(true, true, var_3.a, true)), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(var_3.d.c, 21u)], false, true), global2.a), !(!global0[_wgslsmith_index_u32(~u_input.a, 21u)]));
                let var_5 = vec2<i32>(-countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-17725, arg_0.c) ^ vec2<i32>(global2.c, arg_0.b), -vec2<i32>(var_3.c, var_3.c))), ~select(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_3.b, global2.c), _wgslsmith_sub_i32(-37050, global2.b)), firstTrailingBit(global2.b | 51945), global3.b.x > _wgslsmith_f_op_f32(arg_0.d.b.x + arg_1.b.x)));
                var var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(648.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_f32(-484.0)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 187.0, 1054.0, arg_0.d.b.x), vec4<f32>(479.0, 102.0, arg_0.d.a.x, var_0.x)), arg_1.b, vec4<bool>(global2.a, true, true, global2.a)))))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~var_2, select(vec4<u32>(arg_1.c, var_3.d.c, 22410u, arg_1.c), vec4<u32>(u_input.a, arg_1.c, 4294967295u, arg_0.d.c), global2.a)), var_2));
            }
        }
    }
    if (global2.a) {
        for (var var_3 = -31756; var_3 == 2147483647; ) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            continue;
        }
        var var_3 = firstTrailingBit(global3.c);
    }
    return ~(-global2.c);
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_2(true, global2.c, ~(~_wgslsmith_add_i32(func_5(Struct_2(true, 76564, global2.c, global1[_wgslsmith_index_u32(4294967295u, 13u)]), global1[_wgslsmith_index_u32(global3.c, 13u)]), -17524)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(713.0)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000.0, arg_0.x))), 518.0), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1081.0, 902.0, -815.0, global2.d.b.x), arg_0)), _wgslsmith_sub_u32(~firstTrailingBit(0u), min(0u, _wgslsmith_sub_u32(15920u, global3.c)))));
    let var_1 = vec3<bool>(false, !global2.a, _wgslsmith_f_op_f32(-global2.d.a.x) > -648.0);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d.b.x * _wgslsmith_f_op_f32(exp2(1419.0))), 1384.0)) <= var_0.d.a.x, global2.b, -1, Struct_1(arg_0.zzy, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(_wgslsmith_f_op_f32(round(global2.d.a.x)), global2.d.a.x, arg_0.x, _wgslsmith_f_op_f32(-125.0 * arg_0.x)))), _wgslsmith_clamp_u32(reverseBits(abs(0u)), _wgslsmith_mult_u32(~1u, _wgslsmith_mod_u32(var_0.d.c, var_0.d.c)), 13156u)));
    let var_3 = abs(vec4<i32>(_wgslsmith_mult_i32(2276 << (20470u % 32u), ~(-50257)) << (var_2.d.c % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, -global2.b), countOneBits(vec2<i32>(var_2.b, -2147483648))), 2147483647, global2.b));
    var var_4 = var_0.d;
    return min(select(0u, 1u, !(~4294967295u >= _wgslsmith_sub_u32(global2.d.c, 15695u))), countOneBits(global2.d.c << (3546u % 32u)));
}

fn func_3() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global3.b.wyx, global3.a), global2.d.a, global2.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d.b.xwy)))), vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.b.x)), global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.b.x, _wgslsmith_f_op_f32(-687.0)) - _wgslsmith_f_op_f32(round(-136.0)))), ~29837u);
    if (all(vec4<bool>(false, select(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~7134u, ~global2.d.c), 21u)], !any(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 21u)], false))), -(~2147483647) <= global2.b, false))) {
        let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1000.0);
        if ((_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 51214u, u_input.a, u_input.a), vec4<u32>(4568u, 96145u, u_input.a, 4294967295u)), vec4<u32>(global2.d.c, global2.d.c, 0u, 59586u) << (vec4<u32>(global2.d.c, 13410u, 59157u, u_input.a) % vec4<u32>(32u))), vec4<u32>(global3.c, func_4(vec4<f32>(global2.d.b.x, global2.d.a.x, -826.0, var_1.x)), select(global3.c, global3.c, global0[_wgslsmith_index_u32(1u, 21u)]), abs(var_0.c))) ^ ~_wgslsmith_mult_u32(38509u, 0u)) >= (var_0.c | 6135u)) {
            var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~global3.c << (var_0.c % 32u), global2.d.c ^ var_0.c), min(vec2<u32>(24028u << (global3.c % 32u), abs(global2.d.c)) << (select(vec2<u32>(1u, global3.c), vec2<u32>(var_0.c, 58767u), select(vec2<bool>(false, global2.a), vec2<bool>(global0[_wgslsmith_index_u32(13716u, 21u)], true), global0[_wgslsmith_index_u32(18833u, 21u)])) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_mod_u32(0u, u_input.a), global3.c ^ global3.c)));
            var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-514.0, -1303.0, var_0.a.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(global2.d.b.x, -496.0, _wgslsmith_f_op_f32(round(global3.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527.0, -360.0, 454.0)) - vec3<f32>(var_0.b.x, 1521.0, -949.0))), select(vec3<bool>(false, any(vec2<bool>(global2.a, global2.a)), any(vec2<bool>(true, true))), !vec3<bool>(false, true, false), true))), var_0.b, ~var_0.c);
            let var_3 = Struct_1(global2.d.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-945.0, var_0.a.x)), -261.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))))), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 54964u, global3.c, 27410u), ~vec4<u32>(0u, 0u, 1u, global2.d.c)) | _wgslsmith_mult_u32(~6161u, func_4(global3.b))));
            global2 = Struct_2(false, global2.c, _wgslsmith_mod_i32(-select(select(global2.b, -1, true), func_5(Struct_2(global2.a, 1, global2.b, Struct_1(vec3<f32>(global3.b.x, -831.0, 1109.0), global2.d.b, 0u)), Struct_1(var_3.a, vec4<f32>(946.0, var_3.b.x, var_1.x, global2.d.a.x), 0u)), false), i32(-1) * -(~(-1))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(141.0, global2.d.b.x, 1516.0) * global3.a))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -927.0), -322.0, _wgslsmith_f_op_f32(min(global2.d.b.x, _wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-395.0, -420.0)))), ~firstTrailingBit(~var_3.c)));
        }
        let var_2 = global2.d;
        return Struct_2(true, ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-global2.b, global2.c, i32(-1) * -16670), ~reverseBits(-1)), ~(-(i32(-1) * -global2.b)), global2.d);
    }
    if (256.0 == -323.0) {
        global1 = array<Struct_1, 13>();
        global0 = array<bool, 21>();
        if (!(!global0[_wgslsmith_index_u32(var_0.c, 21u)]) || !(global0[_wgslsmith_index_u32(~var_0.c, 21u)] && !(!global2.a))) {
        }
        var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1037.0, var_0.a.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.d.a.x, var_0.a.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.b.x), _wgslsmith_f_op_f32(max(global2.d.b.x, 495.0)))), vec3<f32>(1000.0, _wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(-1154.0 - 812.0)), 1482.0)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-153.0, -781.0, -1776.0, 220.0))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, var_0.b.x, -758.0, global3.a.x)), global2.d.b, select(vec4<bool>(true, false, global2.a, true), vec4<bool>(global2.a, false, false, true), global0[_wgslsmith_index_u32(global2.d.c, 21u)])))))), global2.d.c);
    }
    global0 = array<bool, 21>();
    switch (func_5(Struct_2(global0[_wgslsmith_index_u32(~((u_input.a | global2.d.c) ^ ~31048u), 21u)], min(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, 2147483647, global2.c, -1), vec4<i32>(2147483647, global2.b, 2147483647, global2.c)), -global2.b) & (i32(-1) * -2147483648), -(firstTrailingBit(global2.c) | -28245), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(global3.b, var_0.b)))), var_0.c)), global2.d)) {
        case -1: {
            if (any(select(!vec4<bool>(global2.a != false, global0[_wgslsmith_index_u32(global3.c, 21u)], any(vec2<bool>(false, true)), all(vec3<bool>(global0[_wgslsmith_index_u32(global3.c, 21u)], true, global0[_wgslsmith_index_u32(global2.d.c, 21u)]))), select(select(select(vec4<bool>(false, true, true, global2.a), vec4<bool>(global0[_wgslsmith_index_u32(134713u, 21u)], global0[_wgslsmith_index_u32(global3.c, 21u)], false, false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(global3.c, 21u)], true)), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], false, global2.a, global2.a), global2.a), !select(vec4<bool>(global0[_wgslsmith_index_u32(global3.c, 21u)], true, global2.a, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), global2.a), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(17105u, 21u)], global2.a, global2.a, global2.a), global2.a), vec4<bool>(global2.a, true, false, global2.a), global2.a), select(select(vec4<bool>(global2.a, true, false, global2.a), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.c, 21u)], global0[_wgslsmith_index_u32(global3.c, 21u)], true), global2.a), !vec4<bool>(false, global2.a, false, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(true, true, global2.a, true)), vec4<bool>(global0[_wgslsmith_index_u32(~var_0.c, 21u)], true != false, true, global0[_wgslsmith_index_u32(var_0.c, 21u)]))))) {
                global1 = array<Struct_1, 13>();
                global2 = Struct_2(!(!global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a) & ~u_input.a, 21u)]), func_5(Struct_2(any(select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(global2.d.c, 21u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.c, 21u)], global0[_wgslsmith_index_u32(global3.c, 21u)], true), vec4<bool>(false, false, global2.a, global0[_wgslsmith_index_u32(36924u, 21u)]))), ~(~12347), abs(global2.b), global2.d), global2.d), ~global2.b, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(global3.b.x, global3.b.x)), _wgslsmith_div_f32(1142.0, 525.0), _wgslsmith_div_f32(global3.a.x, global3.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1479.0, var_0.b.x, -668.0, global2.d.b.x), var_0.b)), 1u & 0u));
                var var_1 = Struct_2(global2.a, ~(~global2.b), max(select(-1, _wgslsmith_dot_vec2_i32(-vec2<i32>(global2.c, 5679), vec2<i32>(0, 0) | vec2<i32>(-2314, 3008)), !(!global0[_wgslsmith_index_u32(384u, 21u)])), _wgslsmith_mod_i32(-2147483648, _wgslsmith_mult_i32(~0, global2.c))), Struct_1(_wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_div_i32(min(global2.b, global2.b), 1 & global2.c), Struct_2(global2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, global2.b), vec2<i32>(global2.c, 32545)), 2147483647, global1[_wgslsmith_index_u32(~13629u, 13u)]))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1975.0), _wgslsmith_f_op_f32(select(-122.0, var_0.a.x, true)), -391.0, 1000.0))), 1u));
                global4 = _wgslsmith_f_op_f32(-global2.d.b.x);
            }
            var var_1 = Struct_2(global0[_wgslsmith_index_u32(var_0.c, 21u)], abs(max(-(~0), global2.b)), firstTrailingBit(global2.c), Struct_1(global3.b.wyz, var_0.b, global2.d.c));
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
        }
        case -24129: {
            for (var var_1 = global2.b; var_1 >= -2147483648; var_1 += 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200.0))), var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-global2.d.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.b.x + -1133.0) * _wgslsmith_f_op_f32(min(global2.d.b.x, -553.0))), true)), -541.0));
                var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1920.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.d.b.x)) * _wgslsmith_f_op_f32(-global2.d.a.x)), _wgslsmith_f_op_f32(-1199.0)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -279.0), var_0.a.x, 420.0, _wgslsmith_f_op_f32(772.0 * 552.0)) - vec4<f32>(global2.d.a.x, 1000.0, _wgslsmith_f_op_f32(floor(1598.0)), 898.0)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, var_0.c, 4294967295u), reverseBits(min(vec3<u32>(global2.d.c, u_input.a, global3.c), vec3<u32>(var_0.c, global3.c, 35052u)))), ~vec3<u32>(global2.d.c, u_input.a, 3550u) ^ _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(global2.d.c, global3.c, global3.c)), vec3<u32>(50727u, 0u, 4294967295u), ~vec3<u32>(var_0.c, u_input.a, var_0.c))));
                var_1 = ~min(global2.b, -9218);
            }
            let var_1 = ~vec3<u32>(~firstTrailingBit(32710u), global3.c, u_input.a);
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                continue;
            }
        }
        case 0: {
        }
        case -9428: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
        }
        default: {
        }
    }
    return Struct_2(32057 == 3011, _wgslsmith_div_i32(-(~0), global2.b), global2.b, Struct_1(_wgslsmith_f_op_vec3_f32(-global2.d.b.yxw), vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -738.0), _wgslsmith_f_op_f32(select(global2.d.b.x, global2.d.a.x, true)), _wgslsmith_f_op_f32(global2.d.b.x + _wgslsmith_f_op_f32(abs(-391.0))), 852.0), 1u << (u_input.a % 32u)));
}

fn func_2() -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        switch (_wgslsmith_sub_i32(global2.c, global2.c)) {
            case -3703: {
                let var_0 = func_3();
            }
            case 1421: {
                let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, -323.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_6(0, Struct_2(global2.a, -2147483648, -54506, global1[_wgslsmith_index_u32(1u, 13u)]))).x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global3.b))), func_4(vec4<f32>(105.0, _wgslsmith_div_f32(-686.0, _wgslsmith_f_op_f32(-250.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b.x)) - _wgslsmith_f_op_f32(-177.0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, 1140.0) - _wgslsmith_f_op_f32(945.0 + global3.b.x)))));
                global0 = array<bool, 21>();
            }
            default: {
            }
        }
    }
    switch ((global2.b & (-25523 ^ _wgslsmith_sub_i32(i32(-1) * -2147483648, -global2.c))) | 2147483647) {
        case 6369: {
            var var_0 = -(~(~(~global2.c)));
            for (var var_1 = -2147483648; global2.a; global1 = array<Struct_1, 13>()) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                var_1 = 419;
                break;
            }
            return global2.d;
        }
        case -1: {
            let var_0 = Struct_2(any(!select(select(vec4<bool>(global2.a, global2.a, global2.a, true), vec4<bool>(false, true, false, global2.a), vec4<bool>(global2.a, false, true, false)), vec4<bool>(true, global0[_wgslsmith_index_u32(global3.c, 21u)], true, false), global2.d.a.x != global3.a.x)), 16672, global2.c, global2.d);
        }
        case -17360: {
        }
        default: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                continue;
            }
            if ((global2.d.c == (u_input.a ^ ~(u_input.a | u_input.a))) || (!(func_3().d.b.x > global3.b.x) || false)) {
                var var_0 = func_3();
                var_0 = Struct_2(((_wgslsmith_dot_vec4_i32(vec4<i32>(-1, -10897, var_0.b, global2.c), vec4<i32>(4411, -1, global2.b, -42617)) | _wgslsmith_sub_i32(12568, var_0.b)) > var_0.c) && (global2.a | !true), -select(_wgslsmith_sub_i32(max(40138, global2.b), 22333), firstLeadingBit(var_0.b), !var_0.a), func_3().c, Struct_1(global2.d.a, _wgslsmith_f_op_vec4_f32(round(global2.d.b)), max(select(~u_input.a, var_0.d.c, select(false, var_0.a, false)), (global2.d.c << (var_0.d.c % 32u)) << (var_0.d.c % 32u))));
                let var_1 = func_3();
                var var_2 = select(!vec4<bool>(all(vec4<bool>(true, false, var_0.a, var_0.a)), true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.c, 49295u, var_0.d.c), vec3<u32>(var_1.d.c, var_0.d.c, 16999u)), ~25295u), 21u)], select(false, false, global0[_wgslsmith_index_u32(31075u, 21u)]) & true), select(select(!vec4<bool>(true, false, global2.a, true), select(vec4<bool>(var_1.a, var_1.a, global2.a, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, var_0.a, false, var_0.a), var_1.a), select(vec4<bool>(false, global2.a, var_1.a, true), vec4<bool>(var_0.a, false, true, false), vec4<bool>(false, var_1.a, var_0.a, var_0.a))), global2.a), select(vec4<bool>(false, all(vec4<bool>(global2.a, true, global2.a, var_1.a)), any(vec3<bool>(global2.a, var_1.a, global2.a)), true | true), !vec4<bool>(global2.a, global2.a, true, global2.a), !true), select(!(!vec4<bool>(true, true, true, var_0.a)), vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], var_1.a, true, global2.a || false), !vec4<bool>(var_1.a, global0[_wgslsmith_index_u32(4294967295u, 21u)], false, false))), !(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(global3.c, 21u)], var_0.a, global0[_wgslsmith_index_u32(0u, 21u)], global2.a), vec4<bool>(var_0.a, var_1.a, var_0.a, false), vec4<bool>(var_1.a, var_0.a, false, false)))));
                var_2 = !select(!(!select(vec4<bool>(true, global2.a, false, false), vec4<bool>(false, var_1.a, false, global0[_wgslsmith_index_u32(global2.d.c, 21u)]), vec4<bool>(var_1.a, true, true, var_1.a))), vec4<bool>((var_1.a == global2.a) != (true && global0[_wgslsmith_index_u32(var_1.d.c, 21u)]), any(var_2.xy), countOneBits(var_0.b) <= -global2.c, _wgslsmith_f_op_f32(-1253.0 + 1000.0) > _wgslsmith_f_op_f32(max(var_0.d.b.x, 214.0))), any(var_2.wyw));
            }
            let var_0 = ~u_input.a;
        }
    }
    let var_0 = global2.d.b;
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, -276.0, -333.0) + global3.a))), vec4<f32>(_wgslsmith_div_f32(538.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.a.x - global2.d.b.x))), _wgslsmith_f_op_f32(-154.0 * global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(779.0 + -579.0)))), 596.0), global2.d.c);
    global1 = array<Struct_1, 13>();
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(22294u, ~1u), 13u)];
}

fn func_7(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = select(vec3<u32>(12449u, countOneBits(func_4(_wgslsmith_f_op_vec4_f32(-global3.b))), 4294967295u << (global2.d.c % 32u)), max(vec3<u32>(1u, 1u, 41673u), abs(vec3<u32>(0u, arg_2.c, 1u))), all(select(vec3<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.c, 21u)], false, true)), true & true, global0[_wgslsmith_index_u32(~4294967295u, 21u)]), vec3<bool>(1u == arg_0.c, global3.b.x > -2661.0, true), true)));
    switch (min(global2.c, abs(-2147483648)) >> (global3.c % 32u)) {
        case -30022: {
            for (var var_1 = -1; global0[_wgslsmith_index_u32(~(~(~44278u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1028u, 11686u, 1u, 12401u), ~vec4<u32>(440u, 0u, global2.d.c, arg_2.c)) % 32u))), 21u)]; var_1 += 1) {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            }
            global0 = array<bool, 21>();
            if (global0[_wgslsmith_index_u32(~0u, 21u)]) {
            }
            global3 = Struct_1(global3.a, arg_0.b, func_3().d.c);
        }
        default: {
            global1 = array<Struct_1, 13>();
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                global4 = arg_1.x;
                let var_1 = func_3().d;
                var var_2 = arg_0;
            }
            let var_1 = true;
            var var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(47384u ^ arg_0.c, ~56255u) ^ ~(~arg_0.c), 21u)], 0, _wgslsmith_div_i32(func_3().c, ~(-2147483648)), Struct_1(func_2().b.wwz, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.d.b.x)) - _wgslsmith_f_op_f32(arg_0.b.x * arg_2.b.x)), global3.a.x, _wgslsmith_f_op_f32(670.0 - arg_1.x)), global3.c));
        }
    }
    if (global0[_wgslsmith_index_u32(var_0.x, 21u)]) {
        var_0 = vec3<u32>(~1u, ~15937u, ~(48774u >> (u_input.a % 32u)));
        global3 = func_3().d;
    }
    switch (global2.b) {
        case -2147483648: {
        }
        case 7160: {
            for (var var_1 = -38712; var_1 > -1; ) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                global2 = Struct_2(!all(select(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(56192u, 21u)], global2.a), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.c, 21u)], true, global0[_wgslsmith_index_u32(arg_0.c, 21u)]), false), vec4<bool>(global2.a, true, global2.a, true), vec4<bool>(false, global0[_wgslsmith_index_u32(2974u, 21u)], false, global2.a))), global2.b, func_3().b, func_2());
                let var_2 = all(!(!vec4<bool>(any(vec3<bool>(true, global2.a, global0[_wgslsmith_index_u32(arg_2.c, 21u)])), 975.0 < global2.d.a.x, arg_1.x >= global3.b.x, select(false, true, false))));
            }
            global3 = arg_2;
            if (!any(!(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(10787u, 21u)])))) {
                global3 = func_2();
                var var_1 = 0u;
                let var_2 = 52567u;
                var_0 = _wgslsmith_add_vec3_u32(reverseBits(countOneBits(~(vec3<u32>(u_input.a, global3.c, global3.c) & vec3<u32>(u_input.a, var_0.x, 1u)))), min(~(~select(vec3<u32>(global3.c, var_2, 8920u), vec3<u32>(global3.c, var_0.x, 22021u), vec3<bool>(true, global2.a, false))), ~vec3<u32>(~arg_2.c, 1u, var_0.x)));
            }
            global2 = func_3();
        }
        case -17345: {
            return 45148u;
        }
        default: {
            for (; global0[_wgslsmith_index_u32(0u, 21u)]; ) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                let var_1 = func_3().d;
                var var_2 = vec2<f32>(-161.0, 235.0);
                return _wgslsmith_dot_vec4_u32(firstLeadingBit(min(vec4<u32>(abs(global2.d.c), _wgslsmith_mult_u32(var_0.x, 11901u), var_1.c, global2.d.c), ~vec4<u32>(global3.c, u_input.a, 38799u, global2.d.c) << (_wgslsmith_mod_vec4_u32(vec4<u32>(15600u, global2.d.c, global2.d.c, arg_2.c), vec4<u32>(860u, var_1.c, 1u, arg_2.c)) % vec4<u32>(32u)))), countOneBits(vec4<u32>(1u, min(0u, global3.c), ~41705u << (4294967295u % 32u), _wgslsmith_sub_u32(4294967295u << (1u % 32u), var_0.x))));
            }
            var var_1 = firstTrailingBit(43541);
        }
    }
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(global2.d.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779.0) + _wgslsmith_f_op_f32(f32(-1.0) * -1146.0)))));
    return ~global3.c;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = ~vec3<u32>(global3.c, ~1u, _wgslsmith_mod_u32(0u, firstTrailingBit(_wgslsmith_mult_u32(global2.d.c, 29783u))));
    if (global2.a) {
    }
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
    }
    switch (global2.c) {
        case 8373: {
            if (global2.a) {
                var var_1 = global2.d.b;
                let var_2 = global3.b.x;
            }
            let var_1 = global0[_wgslsmith_index_u32(func_7(func_2(), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1121.0, global2.d.a.x)) * _wgslsmith_f_op_f32(global3.b.x * 461.0)), 694.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2().a.x))), _wgslsmith_f_op_f32(1000.0 * 660.0)), global2.d), 21u)];
            global3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.d.b.zzw), global2.d.b.zxw, all(!select(vec4<bool>(true, arg_0.x, false, global2.a), vec4<bool>(global2.a, true, global2.a, global0[_wgslsmith_index_u32(20302u, 21u)]), vec4<bool>(global2.a, global0[_wgslsmith_index_u32(4294967295u, 21u)], global2.a, global0[_wgslsmith_index_u32(0u, 21u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.b.x, _wgslsmith_f_op_f32(trunc(1261.0)), _wgslsmith_f_op_f32(global3.a.x + global2.d.b.x), global3.b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1272.0, -1232.0, global2.d.b.x, global3.b.x)) * vec4<f32>(global3.a.x, global2.d.b.x, global2.d.a.x, 1843.0)))), 25866u);
            let var_2 = func_3();
            switch (1) {
                default: {
                    let var_3 = Struct_2(global2.a, _wgslsmith_dot_vec4_i32(countOneBits((vec4<i32>(var_2.b, global2.c, var_2.c, global2.c) << (vec4<u32>(global2.d.c, global3.c, global2.d.c, u_input.a) % vec4<u32>(32u))) | -vec4<i32>(var_2.b, 62689, var_2.c, -4060)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(32644, global2.b, var_2.b, -14543)), vec4<i32>(-2147483648, var_2.c, 1, 26789)), abs(vec4<i32>(21700, 4141, 63483, var_2.b) ^ vec4<i32>(6501, -1, 2147483647, global2.b)))), -(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, 2147483647) & vec2<i32>(global2.c, global2.c), _wgslsmith_div_vec2_i32(vec2<i32>(global2.b, 2147483647), vec2<i32>(global2.c, -33357))) & func_5(Struct_2(arg_0.x, -2147483648, -2147483648, global1[_wgslsmith_index_u32(global3.c, 13u)]), func_3().d)), func_3().d);
                    global2 = func_3();
                    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.d.b.x, global3.a.x)), _wgslsmith_f_op_f32(-1097.0))) + _wgslsmith_f_op_f32(-var_2.d.a.x))));
                    let var_5 = global0[_wgslsmith_index_u32(var_3.d.c, 21u)];
                    var var_6 = -894.0;
                }
            }
        }
        case -555: {
            for (var var_1 = -15318; any(!(!select(vec3<bool>(arg_0.x, false, false), !vec3<bool>(true, arg_0.x, false), !false))); var_1 -= 1) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                let var_2 = !all(vec2<bool>(!(global0[_wgslsmith_index_u32(4294967295u, 21u)] | arg_0.x), false));
                var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(274.0 * -237.0), _wgslsmith_div_f32(global2.d.b.x, global3.b.x), func_2().a.x)) * global2.d.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_6(1, Struct_2(var_2, global2.b, global2.c, global2.d))).x), _wgslsmith_f_op_f32(f32(-1.0) * -2099.0), 477.0, global2.d.b.x))), _wgslsmith_clamp_u32(func_3().d.c, 1u, select(var_0.x, _wgslsmith_mod_u32(29415u, u_input.a >> (var_0.x % 32u)), (global2.c >> (u_input.a % 32u)) == reverseBits(13934))));
                break;
            }
        }
        case 2147483647: {
            return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_6(abs(-2147483648), Struct_2(global2.a, global2.c, 728, global2.d))).x)));
        }
        case -1: {
            if (true) {
                let var_1 = Struct_2(!all(arg_0), ~(~_wgslsmith_div_i32(global2.b, ~global2.c)), _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(abs(0), global2.c)), -1), Struct_1(global2.d.b.zxz, global3.b, ~global3.c));
                var var_2 = 198.0;
                var_0 = vec3<u32>(var_1.d.c, 96006u, max(4294967295u, max(1u, var_1.d.c)) & ~0u);
                var_0 = vec3<u32>(firstTrailingBit(0u) ^ (func_2().c | _wgslsmith_dot_vec3_u32(vec3<u32>(global3.c, u_input.a, 6099u), vec3<u32>(var_1.d.c, 4294967295u, global3.c))), _wgslsmith_add_u32(func_7(func_2(), global3.a, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.d.c, global2.d.c), 13u)]), global3.c), reverseBits(var_0.x)) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(14074u, 26754u, 13757u), vec3<u32>(var_0.x, 5847u, 0u), firstTrailingBit(countOneBits(vec3<u32>(36060u, var_0.x, 5415u))));
                var var_3 = ~(vec3<u32>(_wgslsmith_sub_u32(u_input.a, abs(u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, var_1.d.c, var_1.d.c), vec4<u32>(var_1.d.c, global3.c, 0u, global2.d.c)), func_2().c) >> (~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.c, var_1.d.c, global3.c), vec3<u32>(81129u, 1u, global3.c)), vec3<u32>(var_1.d.c, var_1.d.c, var_1.d.c)) % vec3<u32>(32u)));
            }
            var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(global2.b, _wgslsmith_clamp_i32(global2.b, global2.b, -12550)), vec2<i32>(~1, ~(~global2.b))), func_3().b);
            var var_2 = func_2();
        }
        default: {
            for (; !(!global0[_wgslsmith_index_u32(var_0.x, 21u)]); ) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            }
        }
    }
    return _wgslsmith_f_op_f32(exp2(global3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(vec2<bool>(!(any(vec4<bool>(global0[_wgslsmith_index_u32(13029u, 21u)], global0[_wgslsmith_index_u32(19418u, 21u)], true, global2.a)) != false), !(!all(vec3<bool>(global2.a, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(vec3<i32>(countOneBits(global2.c), 28421, 37018)));
}

