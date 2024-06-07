// {"0:0":[67,181,116,60,131,24,52,152,119,120,45,246,33,138,179,101]}
// Seed: 11742350124315687965

struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

var<private> global1: Struct_1 = Struct_1(1000.0);

var<private> global2: vec3<u32>;

var<private> global3: array<f32, 24> = array<f32, 24>(542.0, 445.0, 748.0, 1299.0, 1696.0, 698.0, -180.0, -1000.0, -946.0, 415.0, 141.0, 157.0, 731.0, 425.0, 916.0, -318.0, 503.0, 236.0, -1185.0, 679.0, 1405.0, 895.0, 193.0, -592.0);

var<private> LOOP_COUNTERS: array<u32, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    for (var var_0 = 0; !true; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        if (true) {
            continue;
        }
        var_0 = 2147483647;
    }
    global0 = array<vec4<f32>, 14>();
    let var_0 = global1.a;
    global0 = array<vec4<f32>, 14>();
    switch (-1) {
        default: {
            global1 = Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a.x, abs(4294967295u)), 24u)]));
        }
    }
    return ~1u;
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<f32>, 14>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1143u << (~(~1u) % 32u), 24u)]));
    global0 = array<vec4<f32>, 14>();
    var var_2 = vec2<u32>(~u_input.a.x, func_3(select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 27649u, 4294967295u), vec3<u32>(4923u, global2.x, 19049u)), vec3<u32>(1u, 1u, 75247u), var_0))) ^ global2.xy;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-694.0))))));
}

fn func_6(arg_0: bool) -> vec4<bool> {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 24u)] - -348.0)));
    global0 = array<vec4<f32>, 14>();
    for (var var_0 = -2147483648; var_0 <= 2147483647; var_0 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        return select(!vec4<bool>(!arg_0, !false, arg_0, !any(vec4<bool>(arg_0, false, false, false))), select(vec4<bool>(!arg_0, abs(-35521) <= u_input.c, true, arg_0), select(vec4<bool>(true, true, false, !arg_0), select(!vec4<bool>(false, arg_0, false, true), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, true, true, false), arg_0), !vec4<bool>(arg_0, arg_0, arg_0, true)), select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, true), true), !vec4<bool>(false, arg_0, arg_0, arg_0), arg_0 & false)), vec4<bool>(all(!vec2<bool>(false, arg_0)), arg_0, !arg_0 && !arg_0, any(vec3<bool>(arg_0, true, false)) || all(vec3<bool>(arg_0, arg_0, arg_0)))), select(select(!vec4<bool>(arg_0, arg_0, arg_0, false), select(select(vec4<bool>(false, false, arg_0, true), vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, true, arg_0)), !vec4<bool>(arg_0, arg_0, true, true), false == arg_0), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, arg_0, false), vec4<bool>(true, true, arg_0, arg_0))), !vec4<bool>(false, false || arg_0, false, all(vec4<bool>(true, false, arg_0, arg_0))), !false));
    }
    global0 = array<vec4<f32>, 14>();
    global2 = min(abs(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(u_input.b, u_input.a.x, 4294967295u), true), min(vec3<u32>(16545u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 0u))) << (firstLeadingBit(~vec3<u32>(global2.x, 4294967295u, 104772u)) % vec3<u32>(32u))), reverseBits(min(~abs(vec3<u32>(u_input.b, 30095u, 34247u)), firstLeadingBit(~vec3<u32>(u_input.b, 38661u, 0u)))));
    return select(vec4<bool>(any(!vec4<bool>(false, arg_0, arg_0, false)), any(vec2<bool>(false | false, !false)), arg_0, 1 < (u_input.c << (_wgslsmith_mod_u32(u_input.a.x, 73800u) % 32u))), select(!(!select(vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), true)), vec4<bool>(arg_0, all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0))), true, !true), arg_0), !false);
}

fn func_5(arg_0: f32, arg_1: vec2<u32>) -> i32 {
    for (var var_0 = -24514; ; global1 = func_2()) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        for (var var_1: i32; false; var_1 -= 1) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            continue;
        }
        continue;
    }
    var var_0 = Struct_4(Struct_3(-16307), !(!func_6(all(vec3<bool>(false, false, false)))));
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        for (var var_1: i32; var_1 <= 24697; global3 = array<f32, 24>()) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            global1 = Struct_1(global1.a);
            global0 = array<vec4<f32>, 14>();
            let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.x, 24u)] + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(4294967295u, 24u)], 1501.0))), _wgslsmith_div_f32(-1000.0, 1155.0))))));
            continue;
        }
        for (; _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1144.0))) < -517.0; ) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            var var_1 = ~min(30388u << (~(~arg_1.x) % 32u), 0u);
            global3 = array<f32, 24>();
            let var_2 = var_0.b.x;
            let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global1.a, global3[_wgslsmith_index_u32(~(~firstLeadingBit(u_input.b)), 24u)]));
        }
        for (; true; ) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            break;
        }
        return u_input.c;
    }
    if (true) {
        let var_1 = ~global2.zy;
        switch (u_input.c) {
            default: {
                var var_2 = Struct_1(func_2().a);
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    return ~_wgslsmith_add_i32(var_0.a.a, _wgslsmith_add_i32(select(min(var_0.a.a, var_0.a.a), _wgslsmith_mult_i32(0, u_input.c), func_6(true).x), -(var_0.a.a & -1)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = i32(-1) * -1;
    for (var var_1 = u_input.c; var_1 < -1; global0 = array<vec4<f32>, 14>()) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        if (true || (!(!(true & true)) | (~(~global2.x) <= ~u_input.b))) {
            global3 = array<f32, 24>();
            var_1 = func_5(296.0, _wgslsmith_div_vec2_u32(global2.xx ^ firstLeadingBit(vec2<u32>(0u, 43258u)), vec2<u32>(global2.x, 1u) >> (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))) << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u);
            var var_2 = 32235 != 6141;
            var var_3 = arg_0;
        }
        continue;
    }
    global0 = array<vec4<f32>, 14>();
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        break;
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        global0 = array<vec4<f32>, 14>();
    }
    return vec3<u32>(~(~_wgslsmith_mod_u32(u_input.a.x, ~u_input.b)), ~_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(9220u, 4294967295u, 0u)), ~vec3<u32>(0u, u_input.b, u_input.a.x)), u_input.b);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> Struct_4 {
    global3 = array<f32, 24>();
    switch (arg_2.a.a) {
        default: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var var_0 = _wgslsmith_sub_u32(firstTrailingBit(arg_3), global2.x);
            }
            global2 = ~(~vec3<u32>(~arg_3, _wgslsmith_div_u32(arg_0, 0u), ~arg_3)) << (func_4(func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_0, 14u)]) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-377.0, global3[_wgslsmith_index_u32(1u, 24u)], arg_1, arg_1)))))) % vec3<u32>(32u));
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                global3 = array<f32, 24>();
                global0 = array<vec4<f32>, 14>();
                break;
            }
            let var_0 = arg_2.b.x;
        }
    }
    var var_0 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(15109, -5362), ~(-2147483647)), -vec2<i32>(-2147483648, 65433 >> (81003u % 32u))));
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        for (var var_1 = -2147483648; _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(242.0 + _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global2.x, 24u)], -1977.0))) * _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(global2.x, 24u)]))) > 482.0; var_1 = _wgslsmith_clamp_i32(u_input.c, 13525 ^ max(var_0.a, arg_2.a.a), ~(arg_2.a.a & (~(-45981) & max(arg_2.a.a, var_0.a))))) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            var var_2 = any(!(!select(select(arg_2.b, vec4<bool>(false, arg_2.b.x, arg_2.b.x, true), vec4<bool>(false, false, false, false)), !vec4<bool>(false, arg_2.b.x, false, arg_2.b.x), any(arg_2.b.zzx))));
            var var_3 = select(vec2<u32>(abs(~1u ^ _wgslsmith_mult_u32(46391u, global2.x)), 0u), vec2<u32>(0u, _wgslsmith_add_u32(min(arg_3, 0u), func_4(Struct_1(global3[_wgslsmith_index_u32(arg_0, 24u)]), vec4<f32>(global1.a, 886.0, 3366.0, global3[_wgslsmith_index_u32(93686u, 24u)])).x) & firstTrailingBit(~31238u)), vec2<bool>(true, !(!(false || arg_2.b.x))));
            var var_4 = Struct_2(arg_2.b.x | any(select(!vec3<bool>(false, arg_2.b.x, arg_2.b.x), select(vec3<bool>(arg_2.b.x, true, false), vec3<bool>(false, arg_2.b.x, arg_2.b.x), false), select(vec3<bool>(false, arg_2.b.x, false), arg_2.b.yxz, arg_2.b.wzz))), !false);
        }
    }
    let var_1 = arg_2.a.a;
    return arg_2;
}

fn func_7(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_4) -> i32 {
    let var_0 = Struct_4(Struct_3(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(1304, -2035, u_input.c, arg_3.a.a), vec4<i32>(17127, 30238, 1, -17998), false), firstLeadingBit(vec4<i32>(2147483647, -2147483648, 1, 2147483647)))), vec4<bool>(((arg_3.a.a >> (4294967295u % 32u)) < -arg_3.a.a) & (_wgslsmith_sub_i32(arg_0.a.a, -66468) != countOneBits(80998)), func_6(!arg_0.b.x | true).x, true, false != func_6(all(vec3<bool>(arg_0.b.x, arg_3.b.x, true))).x));
    var var_1 = -253.0;
    var var_2 = u_input.c;
    let var_3 = _wgslsmith_f_op_f32(-arg_1.a);
    global3 = array<f32, 24>();
    return -_wgslsmith_sub_i32(reverseBits(22729), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    if (firstLeadingBit(global2.x) >= _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.x, u_input.a.x), 30538u)) {
        for (var var_0 = 1; var_0 != 7666; var_0 += 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            global3 = array<f32, 24>();
            let var_1 = -vec3<i32>(func_7(func_1(global2.x, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28661u, u_input.b, 0u), 24u)], Struct_4(Struct_3(2147483647), vec4<bool>(true, false, false, true)), 18718u), Struct_1(func_2().a), _wgslsmith_mult_vec2_u32(global2.zy, firstTrailingBit(u_input.a)), func_1(_wgslsmith_clamp_u32(39845u, u_input.b, 4294967295u), 1188.0, func_1(global2.x, global3[_wgslsmith_index_u32(72426u, 24u)], Struct_4(Struct_3(u_input.c), vec4<bool>(false, false, true, false)), u_input.b), abs(1u))), ~u_input.c, -(i32(-1) * -1));
            break;
        }
        var var_0 = global1.a;
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        }
    }
    global2 = vec3<u32>(_wgslsmith_div_u32(func_4(Struct_1(global1.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(0u, 14u)], vec4<f32>(global3[_wgslsmith_index_u32(97823u, 24u)], global1.a, global3[_wgslsmith_index_u32(29804u, 24u)], 481.0)), global0[_wgslsmith_index_u32(u_input.a.x, 14u)]))).x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b & global2.x, ~17923u), ~(vec3<u32>(global2.x, global2.x, u_input.b) | vec3<u32>(global2.x, 57470u, 23465u)))), abs(max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 20080u, 0u), vec3<u32>(4294967295u, u_input.a.x, global2.x)) ^ u_input.a.x, u_input.b)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(1u), ~22531u), 2401u), _wgslsmith_add_u32(global2.x, _wgslsmith_div_u32(max(25794u, 76612u), 0u << (global2.x % 32u)))));
    global0 = array<vec4<f32>, 14>();
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        global3 = array<f32, 24>();
    }
    let var_0 = 9694u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0) - func_2().a) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -726.0), -1578.0, true | false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000.0, -1127.0, false)), global3[_wgslsmith_index_u32(global2.x, 24u)]))))), -1219.0);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483648, func_4(Struct_1(_wgslsmith_f_op_f32(-var_1.x)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 46480u, 4294967295u, 5272u) & vec4<u32>(var_0, u_input.a.x, 49419u, u_input.b), vec4<u32>(var_0, 31831u, 60048u, u_input.a.x) | vec4<u32>(global2.x, u_input.a.x, 1u, 4294967295u)), ~_wgslsmith_mod_u32(7876u, global2.x)), 14u)]).zz, vec3<f32>(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, 25984u), 24u)] + _wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(max(-972.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1607.0) + _wgslsmith_f_op_f32(1000.0 - var_1.x))))));
}

