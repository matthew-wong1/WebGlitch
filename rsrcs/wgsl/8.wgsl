// {"0:0":[93,90,240,204,118,105,109,84]}
// Seed: 564391755311276500

struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 4>;

var<private> LOOP_COUNTERS: array<u32, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            break;
        }
    }
    var var_0 = 657.0;
    let var_1 = -1026.0;
    let var_2 = global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 1u, 37988u, 0u)), vec4<u32>(_wgslsmith_clamp_u32(global1.c, 4294967295u, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.c, u_input.a), vec3<u32>(u_input.b, u_input.b, global1.b)), abs(global1.b), ~1u)), u_input.b), ~u_input.a >> (~(~u_input.b) % 32u)), 4u)];
    global1 = Struct_1(-global1.a, global1.b ^ global1.b, firstLeadingBit(0u | 4294967295u), global1.d);
    return _wgslsmith_mult_u32(reverseBits(~0u), 18475u);
}

fn func_4() -> Struct_1 {
    for (var var_0 = -8981; var_0 <= 1307; var_0 += 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var var_1 = global2[_wgslsmith_index_u32(48247u, 4u)];
        break;
    }
    return global2[_wgslsmith_index_u32(reverseBits(4294967295u), 4u)];
}

fn func_3() -> vec3<f32> {
    if (global0[_wgslsmith_index_u32(u_input.a, 31u)]) {
        for (var var_0 = 1; ; var_0 += 1) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            continue;
        }
        global0 = array<bool, 31>();
        let var_0 = func_4();
    }
    let var_0 = ~4294967295u;
    let var_1 = _wgslsmith_sub_vec3_i32(~(-vec3<i32>(_wgslsmith_dot_vec3_i32(global1.a, global1.a), 0, 38247)), ~reverseBits(global1.a));
    global1 = global2[_wgslsmith_index_u32(~func_1(), 4u)];
    let var_2 = global1.a.x;
    return vec3<f32>(global1.d.x, global1.d.x, _wgslsmith_f_op_f32(abs(global1.d.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = true;
    global1 = func_4();
    var var_1 = ~(func_4().b >> (45290u % 32u));
    let var_2 = arg_2.c;
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        switch (-13219) {
            case 10271: {
                var_1 = arg_3.b;
                global0 = array<bool, 31>();
                break;
            }
            case 13273: {
                var_1 = ~51771u;
                continue;
            }
            case 0: {
                global2 = array<Struct_1, 4>();
            }
            default: {
                global1 = arg_0;
            }
        }
        continue;
    }
    return Struct_1(-global1.a, u_input.a, max(4294967295u, select(3874u, arg_3.b, true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global1.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, -657.0, arg_1.d.x) - vec3<f32>(-339.0, 327.0, 1458.0)) - global1.d)), _wgslsmith_f_op_vec3_f32(func_3()))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global1 = Struct_1(abs(min(vec3<i32>(2147483647, global1.a.x, -47488), max(vec3<i32>(-2147483648, 33085, arg_0.a.x), vec3<i32>(arg_0.a.x, arg_0.a.x, 36088))) ^ _wgslsmith_mod_vec3_i32(func_4().a, func_4().a)), firstTrailingBit(global1.b), u_input.a, vec3<f32>(1968.0, 150.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -649.0), _wgslsmith_f_op_f32(-arg_0.d.x))) + global1.d.x)));
    global0 = array<bool, 31>();
    switch (abs(firstTrailingBit(firstLeadingBit(1 >> (u_input.a % 32u))))) {
        case -13656: {
            if (any(select(select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 31u)], false, false)), !select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 31u)], true), vec4<bool>(global0[_wgslsmith_index_u32(5463u, 31u)], global0[_wgslsmith_index_u32(30204u, 31u)], false, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1.c, 31u)], global0[_wgslsmith_index_u32(58857u, 31u)])), vec4<bool>(!global0[_wgslsmith_index_u32(12204u, 31u)], !true, select(global0[_wgslsmith_index_u32(global1.c, 31u)], global0[_wgslsmith_index_u32(arg_0.b, 31u)], global0[_wgslsmith_index_u32(arg_0.b, 31u)]), !global0[_wgslsmith_index_u32(50505u, 31u)])), vec4<bool>(false, !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.c, u_input.a), 31u)], ~u_input.a < 4294967295u, all(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.b, 31u)]), global0[_wgslsmith_index_u32(u_input.a, 31u)]))), !vec4<bool>(true, global0[_wgslsmith_index_u32(~u_input.b, 31u)], any(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 31u)])), arg_0.a.x != global1.a.x)))) {
                var var_0 = select(global0[_wgslsmith_index_u32(global1.c, 31u)], !false, !(!false));
                var var_1 = func_5(Struct_1(~global1.a ^ vec3<i32>(-arg_0.a.x, global1.a.x, select(-30255, global1.a.x, global0[_wgslsmith_index_u32(0u, 31u)])), u_input.b, ~arg_0.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -234.0))), arg_0.d.x, func_4().d.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(1u, 1u), ~arg_0.b, _wgslsmith_mod_u32(5239u, arg_0.c)), vec3<u32>(abs(1u | arg_0.b), arg_0.b, _wgslsmith_div_u32(4294967295u ^ 4927u, ~arg_0.c))), 4u)], func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(4294967295u, 49234u), firstLeadingBit(vec2<u32>(1u, 4294967295u)), true), ~vec2<u32>(global1.c, arg_0.c)), 4u)], Struct_1(_wgslsmith_div_vec3_i32(func_4().a, global1.a), _wgslsmith_div_u32(~arg_0.c, global1.c), func_4().c, arg_0.d), arg_0, func_4()), Struct_1((vec3<i32>(58230, arg_0.a.x, -2147483648) << (abs(vec3<u32>(arg_0.b, global1.c, arg_0.b)) % vec3<u32>(32u))) << (max(vec3<u32>(arg_0.c, arg_0.c, arg_0.b), vec3<u32>(arg_0.c, arg_0.c, 1u)) % vec3<u32>(32u)), arg_0.c, _wgslsmith_mult_u32(func_1(), ~91201u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(467.0, arg_0.d.x, global1.d.x) - _wgslsmith_f_op_vec3_f32(floor(arg_0.d))))));
                global2 = array<Struct_1, 4>();
            }
            switch (arg_0.a.x) {
                case -4304: {
                    global0 = array<bool, 31>();
                    return global2[_wgslsmith_index_u32(arg_0.b, 4u)];
                }
                case -1: {
                }
                case -2147483648: {
                    global1 = func_5(Struct_1(vec3<i32>(~_wgslsmith_div_i32(0, -49261), global1.a.x, _wgslsmith_dot_vec2_i32(global1.a.zz, global1.a.xz)), u_input.b, reverseBits(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, u_input.b), vec2<u32>(4689u, 1u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.d)))), func_4(), arg_0, arg_0);
                }
                default: {
                    global2 = array<Struct_1, 4>();
                    return func_4();
                }
            }
            global1 = arg_0;
        }
        default: {
        }
    }
    let var_0 = (firstLeadingBit(1) <= -abs(func_4().a.x)) && (func_5(Struct_1(arg_0.a, select(45553u, 1u, true), ~4294967295u, _wgslsmith_f_op_vec3_f32(-global1.d)), func_4(), arg_0, func_4()).a.x > func_4().a.x);
    var var_1 = true;
    return Struct_1(vec3<i32>(arg_0.a.x, _wgslsmith_mult_i32(-41765, 2147483647) ^ -20061, -arg_0.a.x), _wgslsmith_dot_vec4_u32(~firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 4294967295u, arg_0.c, 108198u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.c, 8692u, u_input.a, arg_0.c), _wgslsmith_add_vec4_u32(vec4<u32>(global1.b, 59857u, u_input.a, 1u), ~vec4<u32>(u_input.b, u_input.b, global1.c, arg_0.c)), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(9091u, 4294967295u, 0u, u_input.b), vec4<u32>(arg_0.c, 82269u, u_input.a, 1u))))), 1u, _wgslsmith_f_op_vec3_f32(func_4().d + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d * vec3<f32>(-1000.0, -1073.0, arg_0.d.x)), vec3<f32>(-1580.0, arg_0.d.x, 1000.0)), arg_0.d))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    global0 = array<bool, 31>();
    global1 = arg_2;
    for (var var_0 = 36670; var_0 <= -2147483648; var_0 -= 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        break;
    }
    for (var var_0 = -2147483648; !arg_0.x; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_1 = ~vec4<u32>(arg_3 ^ u_input.a, arg_3, 4294967295u, ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_3, 0u, 1u), ~21415u, 1u));
        var var_2 = func_6(func_5(Struct_1(arg_2.a, ~arg_3, var_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-140.0, global1.d.x, global1.d.x) - _wgslsmith_f_op_vec3_f32(arg_2.d + arg_2.d))), arg_2, Struct_1(max(-vec3<i32>(arg_1.a.x, arg_2.a.x, arg_1.a.x), _wgslsmith_mod_vec3_i32(arg_1.a, vec3<i32>(arg_2.a.x, -2147483648, -1))), ~(~1u), firstTrailingBit(arg_2.c ^ arg_3), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, 1556.0, 1415.0) - vec3<f32>(1403.0, global1.d.x, global1.d.x)))), Struct_1(-(vec3<i32>(arg_2.a.x, 0, -1) | vec3<i32>(0, arg_2.a.x, 1094)), _wgslsmith_dot_vec3_u32(var_1.xyx, vec3<u32>(0u, var_1.x, 1u)), var_1.x, _wgslsmith_f_op_vec3_f32(func_3()))));
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            var var_3 = func_5(func_6(Struct_1(min(vec3<i32>(-22450, arg_2.a.x, -16529), arg_1.a), ~(global1.b ^ u_input.b), ~1u, _wgslsmith_f_op_vec3_f32(-var_2.d))), func_5(arg_2, func_4(), arg_2, global2[_wgslsmith_index_u32(~arg_1.c, 4u)]), Struct_1(~abs(arg_2.a >> (vec3<u32>(arg_3, global1.b, arg_2.b) % vec3<u32>(32u))), ~countOneBits(1u), global1.b, vec3<f32>(func_5(Struct_1(vec3<i32>(-24404, 0, arg_2.a.x), global1.b, arg_1.b, vec3<f32>(arg_2.d.x, 1000.0, global1.d.x)), arg_1, arg_1, arg_2).d.x, global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) + _wgslsmith_f_op_f32(-234.0 + 269.0)))), arg_1);
            var var_4 = _wgslsmith_f_op_f32(-func_6(Struct_1(vec3<i32>(_wgslsmith_sub_i32(2147483647, 2147483647), -37813, -2147483648 ^ 30490), 0u, 28673u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.d, vec3<f32>(-909.0, -677.0, 697.0), true)), vec3<f32>(var_2.d.x, var_2.d.x, 1456.0)))).d.x);
            break;
        }
        if (all(!vec4<bool>(true, any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), arg_0.x, false))) {
            var var_3 = 1;
            var var_4 = _wgslsmith_div_i32(arg_1.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, 40352, 33658, global1.a.x), vec4<i32>(-2147483648, arg_2.a.x, 15395, var_2.a.x)), reverseBits(global1.a.x), _wgslsmith_clamp_i32(arg_2.a.x, arg_2.a.x, 0)), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a.x, arg_1.a.x, var_2.a.x, -2147483648), vec4<i32>(global1.a.x, var_2.a.x, -1, -1))), arg_1.a.x);
            var_2 = Struct_1(firstLeadingBit(-arg_1.a), ~global1.c << ((func_6(global2[_wgslsmith_index_u32(var_2.c, 4u)]).b >> (1u % 32u)) % 32u), global1.b, global1.d);
            var_2 = func_4();
        }
    }
    global0 = array<bool, 31>();
    return StorageBuffer(firstTrailingBit(abs(countOneBits(vec4<u32>(1u, u_input.b, 0u, arg_3)))), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    global1 = global2[_wgslsmith_index_u32(global1.b, 4u)];
    global2 = array<Struct_1, 4>();
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let x = u_input.a;
    s_output = func_2(vec3<bool>(func_1() != 60644u, true && false, !global0[_wgslsmith_index_u32(global1.b, 31u)]), global2[_wgslsmith_index_u32(~(~10977u), 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], 4294967295u >> (~67437u % 32u));
}

