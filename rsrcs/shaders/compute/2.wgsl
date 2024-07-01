// {"0:0":[10,21,6,214,32,74,60,166,83,182,171,120,69,178,27,22]}
// Seed: 4160520136757298765

struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -557.0;

var<private> global1: array<f32, 1> = array<f32, 1>(-1427.0);

var<private> global2: Struct_3 = Struct_3(Struct_2(vec4<u32>(16857u, 73543u, 4294967295u, 1u)), 320.0);

var<private> global3: Struct_2 = Struct_2(vec4<u32>(48950u, 11515u, 60281u, 68482u));

var<private> LOOP_COUNTERS: array<u32, 15>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn func_6(arg_0: f32) -> bool {
    global1 = array<f32, 1>();
    switch (u_input.a.x) {
        case 0: {
            for (var var_0 = -33125; -max(u_input.a.x << (global3.a.x % 32u), min(-53673, u_input.a.x)) < (~(-2147483648) ^ 18292); global1 = array<f32, 1>()) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                break;
            }
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a.a.x & u_input.b, ~1033u), 1u)]))));
            if (any(select(vec4<bool>((0u > global3.a.x) & all(vec4<bool>(true, true, false, true)), !false, !(!true), all(!vec2<bool>(false, true))), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), !vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, select(false, true, false), 2147483647 != u_input.a.x, !true), !true), all(vec2<bool>(false, true)) & !(arg_0 <= 1740.0)))) {
                let var_0 = Struct_2(abs(global2.a.a));
                var var_1 = -1545;
            }
        }
        case 28299: {
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var var_0 = Struct_3(global2.a, 1000.0);
                global1 = array<f32, 1>();
                let var_1 = Struct_4(Struct_2(vec4<u32>(abs(firstTrailingBit(global2.a.a.x)), _wgslsmith_dot_vec4_u32(global3.a, countOneBits(vec4<u32>(28978u, var_0.a.a.x, var_0.a.a.x, 4294967295u))), ~(~global2.a.a.x), max(45995u, global3.a.x) ^ var_0.a.a.x)), Struct_3(var_0.a, -1252.0));
                global2 = var_1.b;
                continue;
            }
        }
        case -2147483648: {
            let var_0 = Struct_3(Struct_2(_wgslsmith_div_vec4_u32(global3.a, countOneBits(vec4<u32>(4294967295u, u_input.b, global3.a.x, 76570u))) ^ vec4<u32>(1u, abs(4294967295u), ~4294967295u, ~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(560.0, 516.0) + 458.0));
            global2 = Struct_3(Struct_2(~abs(global3.a) ^ global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-829.0)) * global2.b) - var_0.b));
            var var_1 = u_input.a.zz;
            var var_2 = select(abs(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, global2.a.a.x | 8890u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, 0u), global2.a.a.xy))), _wgslsmith_mod_u32(~(~4294967295u | ~var_0.a.a.x), ~abs(firstLeadingBit(71954u))), true);
        }
        default: {
            for (; ; ) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                continue;
            }
            let var_0 = _wgslsmith_mod_vec4_u32(min(global3.a | vec4<u32>(global2.a.a.x, global3.a.x, 2692u, u_input.b), global2.a.a) | ~_wgslsmith_div_vec4_u32(~global2.a.a, vec4<u32>(global2.a.a.x, 1928u, u_input.b, 0u) ^ global3.a), global3.a);
            if (false) {
                let var_1 = Struct_1(var_0.x, vec4<f32>(global2.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(506.0)))), 481.0, -451.0), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(~u_input.b, _wgslsmith_mod_u32(global3.a.x, global2.a.a.x)) ^ abs(5839u), 1u)]));
                global3 = global2.a;
                let var_2 = 0u;
                var var_3 = all(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))) | true;
            }
            if (!(_wgslsmith_f_op_f32(1210.0 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(145.0 - arg_0)))) != -102.0)) {
                var var_1 = Struct_3(Struct_2(vec4<u32>(global3.a.x, 0u, global2.a.a.x, _wgslsmith_div_u32(8696u, 4799u))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~75042u, 1u)]));
                var var_2 = Struct_4(Struct_2(global2.a.a), Struct_3(var_1.a, _wgslsmith_f_op_f32(global2.b * var_1.b)));
                let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.b.b, var_2.b.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global1[_wgslsmith_index_u32(global3.a.x, 1u)]) * vec2<f32>(-548.0, global2.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(65657u, 1u)], global2.b)), vec2<f32>(_wgslsmith_f_op_f32(-405.0 + -316.0), _wgslsmith_f_op_f32(ceil(arg_0))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-775.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(521.0 - var_2.b.b) + global1[_wgslsmith_index_u32(11554u, 1u)])), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global3.a.x, 1u)])), _wgslsmith_f_op_f32(floor(519.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(global2.a.a.x, 1u)], -257.0, true)), _wgslsmith_f_op_f32(step(var_1.b, global1[_wgslsmith_index_u32(73297u, 1u)])))))));
                let var_4 = Struct_4(Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(global2.a.a, vec4<u32>(global2.a.a.x, global3.a.x, global3.a.x, 1u)) >> (_wgslsmith_clamp_vec4_u32(global3.a, vec4<u32>(var_2.b.a.a.x, var_0.x, 0u, 9887u), vec4<u32>(var_2.b.a.a.x, 18809u, 20470u, 4294967295u)) % vec4<u32>(32u)), var_0)), Struct_3(var_1.a, var_1.b));
                let var_5 = false;
            }
        }
    }
    for (var var_0 = 17450; var_0 > 20962; var_0 = select(~min(-u_input.a.x, abs(0)), 2196, !all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))) | true)) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        break;
    }
    global2 = Struct_3(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-427.0))));
    global1 = array<f32, 1>();
    return all(vec2<bool>(any(!(!vec4<bool>(false, true, false, true))), global3.a.x != 0u));
}

fn func_5() -> Struct_3 {
    for (var var_0 = abs(-13641); ; ) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_1 = vec4<i32>(2147483647, _wgslsmith_mod_i32(1, _wgslsmith_add_i32(-37773, ~u_input.a.x)), ~0, u_input.a.x) & vec4<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-27956, u_input.a.x, u_input.a.x, 55333), select(vec4<i32>(2147483647, -3689, u_input.a.x, 81319), vec4<i32>(33930, u_input.a.x, -20285, u_input.a.x), false)), u_input.a.x), ~(-27947), min(i32(-1) * -u_input.a.x, 0), ~(-76790));
        if (any(!(!vec3<bool>(true, !true, func_6(global2.b))))) {
        }
        global1 = array<f32, 1>();
        var var_2 = vec2<bool>(!(!(!(var_1.x > 2147483647))), any(vec3<bool>(any(vec4<bool>(false, true, false, true)), true | false, !false)) || false);
        if (all(select(select(vec2<bool>(!true, !var_2.x), vec2<bool>(func_6(-1000.0), !var_2.x), var_2.x), select(!vec2<bool>(false, var_2.x), select(!vec2<bool>(false, var_2.x), !vec2<bool>(false, true), vec2<bool>(var_2.x, var_2.x)), false), var_2.x))) {
            var var_3 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.a.a.x, global2.a.a.x), ~vec2<u32>(46110u, 4294967295u)), 4294967295u, 4294967295u, countOneBits(17167u) << (min(4294967295u, global2.a.a.x) % 32u)), max(abs(global3.a), ~reverseBits(global3.a)));
            break;
        }
    }
    if (!true) {
        var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-358.0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global2.a.a.x, 1u)])), global2.b)))));
    }
    var var_0 = Struct_3(Struct_2(_wgslsmith_add_vec4_u32(global3.a, (global3.a << (global3.a % vec4<u32>(32u))) ^ (vec4<u32>(u_input.b, u_input.b, 1u, global3.a.x) & vec4<u32>(4294967295u, 1u, global2.a.a.x, u_input.b)))), _wgslsmith_f_op_f32(f32(-1.0) * -740.0));
    var var_1 = Struct_1(global2.a.a.x, vec4<f32>(860.0, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1892.0 + -1131.0)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b), global1[_wgslsmith_index_u32(28213u, 1u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b, _wgslsmith_div_f32(1271.0, -1045.0))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1136.0, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(7488u, 1u)])), 451.0, all(select(!vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), !vec4<bool>(false, true, true, true))))));
    if (true) {
        let var_2 = Struct_1(~(~select(~u_input.b, ~global3.a.x, func_6(var_0.b))), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 1u)] - 1261.0) * _wgslsmith_f_op_f32(-var_0.b)))) - _wgslsmith_f_op_f32(max(var_0.b, global2.b))));
        global2 = Struct_3(Struct_2(~(_wgslsmith_sub_vec4_u32(global3.a, global2.a.a) ^ global2.a.a)), 2109.0);
    }
    return Struct_3(Struct_2(global3.a), 806.0);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_2 {
    global2 = func_5();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-478.0, _wgslsmith_f_op_f32(global2.b + -1189.0), all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(step(arg_0, 212.0)), 155.0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1481.0, global1[_wgslsmith_index_u32(87819u, 1u)], 1636.0) + vec3<f32>(arg_3.b, global2.b, -913.0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656.0)), -324.0)));
    switch (_wgslsmith_mod_i32(-(i32(-1) * -_wgslsmith_dot_vec2_i32(u_input.a.yz, arg_2.zz)), -select(1378, _wgslsmith_div_i32(arg_2.x, 0) ^ ~1, _wgslsmith_f_op_f32(arg_3.b + -191.0) <= arg_0))) {
        case 30588: {
            if (all(vec4<bool>(select(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true)), (false || true) & true, false), ~u_input.a.x != ~2147483647, !all(!vec4<bool>(false, false, false, true)), all(select(vec4<bool>(false, true, false, false), !vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))))) {
                global3 = Struct_2(firstTrailingBit(arg_3.a.a));
                global1 = array<f32, 1>();
                var var_1 = Struct_1(global2.a.a.x, vec4<f32>(-530.0, var_0.x, 271.0, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -300.0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(floor(1000.0))))));
                global2 = func_5();
            }
            global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~(~0u), 1u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-554.0 - -432.0))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -673.0))), 2241.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-359.0) * arg_0)))));
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
            let var_1 = Struct_4(global2.a, func_5());
        }
        case -1: {
            var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(global2.b, global2.b, !true)), -322.0, 610.0), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.b, global1[_wgslsmith_index_u32(4294967295u, 1u)], 666.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(498.0, global1[_wgslsmith_index_u32(0u, 1u)], arg_3.b)), !false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, 1000.0, arg_3.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.b, global2.b) + vec3<f32>(global2.b, 240.0, 1680.0))) - vec3<f32>(_wgslsmith_f_op_f32(895.0 - global2.b), _wgslsmith_f_op_f32(f32(-1.0) * -1224.0), _wgslsmith_f_op_f32(ceil(arg_1))))))));
            global1 = array<f32, 1>();
        }
        case -118004: {
            var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -331.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, global1[_wgslsmith_index_u32(42412u, 1u)], false))), _wgslsmith_f_op_f32(778.0 * arg_1)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.b, _wgslsmith_f_op_f32(min(1804.0, -357.0)), _wgslsmith_f_op_f32(-284.0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -312.0) + vec3<f32>(960.0, global1[_wgslsmith_index_u32(4294967295u, 1u)], arg_1))))), vec3<bool>(!false && false, false, select(-14686, arg_2.x, false) > -44328))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - -1000.0) + _wgslsmith_f_op_f32(-arg_3.b)), 663.0))));
            var var_1 = vec3<f32>(-1752.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 1000.0))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31661u, 1u)] - global2.b));
            var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-667.0, 234.0, global2.b, var_0.x)) - vec4<f32>(850.0, var_1.x, -300.0, 701.0)))), _wgslsmith_f_op_f32(-func_5().b));
            if (!(!all(vec4<bool>(true && true, all(vec4<bool>(true, false, true, true)), !true, any(vec2<bool>(false, true)))))) {
                var var_3 = 1u;
                var var_4 = func_5();
                global2 = func_5();
                let var_5 = !func_6(global1[_wgslsmith_index_u32(func_5().a.a.x, 1u)]);
                var var_6 = select(!var_5 | false, !var_5, any(!select(select(vec2<bool>(var_5, true), vec2<bool>(true, var_5), var_5), select(vec2<bool>(var_5, false), vec2<bool>(var_5, var_5), vec2<bool>(var_5, var_5)), any(vec2<bool>(false, var_5)))));
            }
        }
        default: {
        }
    }
    global1 = array<f32, 1>();
    let var_1 = vec4<i32>(u_input.a.x, 1, 1, _wgslsmith_dot_vec2_i32(~(-firstTrailingBit(vec2<i32>(1, 1))), -arg_2.xx));
    return arg_3.a;
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> bool {
    global0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(~_wgslsmith_clamp_u32(4294967295u & u_input.b, arg_2, 1u), select(1u, (arg_0.a.a.x << (41708u % 32u)) >> (min(global3.a.x, 10031u) % 32u), arg_1)), 1u)] + -459.0);
    if (reverseBits(8287) < -(~u_input.a.x)) {
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        }
        var var_0 = Struct_3(func_4(-1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2, 1u)])), -_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, -3705)), vec3<i32>(u_input.a.x, u_input.a.x, -1)), Struct_3(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), 1511.0);
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            continue;
        }
    }
    let var_0 = Struct_1(global2.a.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.a.a.x, 1u)], global1[_wgslsmith_index_u32(arg_0.a.a.x, 1u)], global2.b, 1000.0) + vec4<f32>(global2.b, -1927.0, 105.0, arg_0.b)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global2.b)), global2.b, 315.0, _wgslsmith_f_op_f32(select(2438.0, -690.0, arg_1)))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6914u, 1u)]));
    global2 = arg_0;
    let var_1 = 1000.0;
    return any(select(select(select(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, false, arg_1, false)), !vec4<bool>(arg_1, arg_1, true, arg_1), !arg_1), !select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(false, arg_1, false, true), vec4<bool>(arg_1, arg_1, true, arg_1)), vec4<bool>(arg_1 | true, all(vec3<bool>(arg_1, arg_1, true)), 43937u >= 3585u, arg_1)), vec4<bool>(!all(vec4<bool>(arg_1, arg_1, false, true)), !false, true, false), all(!vec4<bool>(true, false, false, false))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(arg_0.a.a), arg_0);
    let var_1 = all(!(!select(!vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), -654.0 >= global2.b)));
    var var_2 = select(select(!vec2<bool>(u_input.a.x <= -2147483648, true), vec2<bool>(func_3(var_0.b, all(vec4<bool>(var_1, var_1, false, false)), _wgslsmith_dot_vec4_u32(arg_0.a.a, global3.a)), any(select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, true, var_1, true)))), var_1), !(!select(vec2<bool>(true, var_1), !vec2<bool>(true, false), vec2<bool>(var_1, var_1))), false);
    for (; false; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    if (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.a.x, 1u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.a.a.x, 1u)]))) - _wgslsmith_f_op_f32(-global2.b)) >= 1073.0) {
        global0 = var_0.b.b;
    }
    return func_5();
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_4 {
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    for (var var_0 = -6405; var_0 < -4040; global2 = Struct_3(arg_1, 320.0)) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        global2 = func_2(Struct_3(arg_1, -373.0), ~vec2<u32>((24426u >> (3477u % 32u)) ^ 6141u, (arg_1.a.x ^ 4294967295u) >> (~0u % 32u)));
        var var_1 = abs(~((vec2<u32>(1u, arg_1.a.x) | vec2<u32>(arg_1.a.x, global3.a.x)) & max(global3.a.yz, global2.a.a.xy)) ^ abs(~vec2<u32>(1u, global3.a.x)));
        global1 = array<f32, 1>();
        let var_2 = global1[_wgslsmith_index_u32(0u, 1u)];
    }
    var var_0 = Struct_4(func_2(func_5(), global3.a.zy).a, func_5());
    if (true) {
        let var_1 = ~vec3<u32>(~(~4294967295u), global3.a.x, _wgslsmith_mod_u32(37847u, 99375u) | func_2(var_0.b, var_0.b.a.a.yz).a.a.x) ^ vec3<u32>(~1u << (abs(firstTrailingBit(120800u)) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2.a.a.wxx, vec3<u32>(4294967295u, 23371u, 0u)), vec3<u32>(func_5().a.a.x, arg_1.a.x, ~25370u)), 1u);
        if (false) {
            var var_2 = _wgslsmith_sub_u32(1u, ~(var_1.x & min(var_0.a.a.x, ~arg_1.a.x)));
            var_2 = ~(~1u);
            var var_3 = Struct_2(vec4<u32>(4294967295u, u_input.b, select(abs(var_1.x & global2.a.a.x), func_5().a.a.x, -73748 < _wgslsmith_mult_i32(2147483647, -16582)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(arg_1.a.x, u_input.b)), ~(7341u ^ 30690u))));
        }
        let var_2 = !(true && true);
        switch (_wgslsmith_mult_i32(_wgslsmith_mult_i32(i32(-1) * -2147483648, u_input.a.x), min(_wgslsmith_sub_i32(-2147483648, arg_0), firstTrailingBit(2691) & ~u_input.a.x)) | 68344) {
            case 1: {
                let var_3 = !var_2;
                let var_4 = Struct_2(~(func_4(var_0.b.b, _wgslsmith_f_op_f32(-global2.b), -u_input.a, Struct_3(Struct_2(global3.a), var_0.b.b)).a & ~(~vec4<u32>(global3.a.x, 0u, var_0.b.a.a.x, global2.a.a.x))));
            }
            default: {
            }
        }
    }
    let var_1 = 4294967295u;
    return Struct_4(func_5().a, func_5());
}

fn func_7(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: f32) -> bool {
    var var_0 = func_1(-31104, arg_0.a);
    let var_1 = Struct_1(~0u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_0.b.b, global1[_wgslsmith_index_u32(41905u, 1u)], arg_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, 368.0, -126.0, 894.0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-332.0, arg_2, arg_2, -639.0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1838.0, global1[_wgslsmith_index_u32(global3.a.x, 1u)], global1[_wgslsmith_index_u32(var_0.b.a.a.x, 1u)], var_0.b.b))))), arg_0.b.b);
    switch (-34112) {
        case 2147483647: {
            if (func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b)) * _wgslsmith_f_op_f32(f32(-1.0) * -697.0))) * 502.0))) {
                global0 = func_5().b;
                var var_2 = Struct_2(func_5().a.a);
                let var_3 = select(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !vec2<bool>(false, true), false), select(!(!vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec2<bool>(u_input.b >= 61447u, !false)), vec2<bool>(true || !(!false), (arg_0.b.a.a.x >> (1791u % 32u)) > firstLeadingBit(_wgslsmith_sub_u32(arg_0.b.a.a.x, 52959u))), !(false && func_6(_wgslsmith_f_op_f32(exp2(498.0)))));
            }
            var_0 = arg_0;
            for (var var_2: i32; var_2 >= -37758; ) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                var_2 = _wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(_wgslsmith_mod_i32(27896, _wgslsmith_mult_i32(~u_input.a.x, u_input.a.x))));
            }
        }
        case -41057: {
            for (var var_2 = 1; select(select(!false && true, !all(vec2<bool>(false, true)), (arg_1.x <= 4294967295u) | (653.0 != var_0.b.b)), !true, true) != any(select(!vec3<bool>(false, true, false), vec3<bool>(false, !true, true), false)); var_2 += 1) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var var_3 = vec2<bool>(false, !(!(!any(vec3<bool>(false, false, false)))));
                var var_4 = Struct_3(func_4(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, 37041u, 47781u), global2.a.a.yzy), 4294967295u), 1u)])), _wgslsmith_sub_vec3_i32(u_input.a, -(~vec3<i32>(0, u_input.a.x, u_input.a.x))), Struct_3(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1176.0 * 177.0), 127.0))), 1807.0);
                global1 = array<f32, 1>();
                let var_5 = _wgslsmith_div_i32(u_input.a.x & -min(u_input.a.x, -1), u_input.a.x) != -2147483648;
            }
            if (true) {
                var var_2 = var_1;
                var_2 = var_1;
                let var_3 = u_input.a.x;
                global1 = array<f32, 1>();
                let var_4 = Struct_4(Struct_2(vec4<u32>(~global2.a.a.x, _wgslsmith_mod_u32(~70769u, func_5().a.a.x), 8838u, ~var_1.a | global3.a.x)), Struct_3(var_0.a, global1[_wgslsmith_index_u32(countOneBits(~38491u << (func_4(global1[_wgslsmith_index_u32(var_2.a, 1u)], var_1.c, vec3<i32>(var_3, u_input.a.x, u_input.a.x), var_0.b).a.x % 32u)), 1u)]));
            }
        }
        default: {
            return false;
        }
    }
    let var_2 = arg_0.b;
    if (all(!vec2<bool>(true, arg_2 <= _wgslsmith_f_op_f32(f32(-1.0) * -815.0)))) {
        var var_3 = _wgslsmith_f_op_vec4_f32(-var_1.b);
        var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(abs(-1) << (min(0u, 0u) % 32u)), abs(11577 << (74953u % 32u)), (-1 ^ -1) ^ -16100, ~reverseBits(22549 << (arg_1.x % 32u))), -vec4<i32>(~2147483647, u_input.a.x, ~(i32(-1) * -2147483648), reverseBits(u_input.a.x)));
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            break;
        }
        let var_5 = _wgslsmith_f_op_f32(-654.0);
        var var_6 = ~77825u;
    }
    return func_6(global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = -1; all(vec2<bool>(!func_7(func_1(u_input.a.x, Struct_2(global2.a.a)), global3.a & vec4<u32>(1u, global2.a.a.x, 4294967295u, 30421u), _wgslsmith_f_op_f32(f32(-1.0) * -856.0)), func_3(func_1(-u_input.a.x, global2.a).b, func_6(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(25599u, 1u)])), 0u))); var_0 += 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_1 = countOneBits(vec2<u32>(global3.a.x, _wgslsmith_dot_vec3_u32(func_4(global1[_wgslsmith_index_u32(abs(4294967295u), 1u)], global1[_wgslsmith_index_u32(4837u, 1u)], _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647, 34694, u_input.a.x), vec3<i32>(44253, u_input.a.x, u_input.a.x)), func_2(Struct_3(global2.a, global1[_wgslsmith_index_u32(global3.a.x, 1u)]), global2.a.a.wz)).a.zzz, ~(vec3<u32>(global2.a.a.x, global2.a.a.x, global2.a.a.x) >> (vec3<u32>(0u, 38868u, 15605u) % vec3<u32>(32u))))));
        if (true) {
        }
    }
    if (true) {
        let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, _wgslsmith_f_op_f32(global2.b + func_5().b), 1063.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1011.0 - _wgslsmith_f_op_f32(644.0 * global2.b)), global2.b))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-759.0, 883.0, 106.0, 1000.0)), vec4<f32>(205.0, global2.b, global1[_wgslsmith_index_u32(u_input.b, 1u)], -673.0))))));
        let var_1 = 1071.0;
    }
    let var_0 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(~0u, 1u)], _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(global2.b * -1008.0), -898.0) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], 267.0, global2.b)) + vec4<f32>(-1000.0, -622.0, 1381.0, -1356.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), global1[_wgslsmith_index_u32(~24613u, 1u)]) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2.b, global1[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(global3.a.x, 1u)])))))));
    global2 = Struct_3(Struct_2(vec4<u32>(~u_input.b, _wgslsmith_add_u32(var_0.a, 0u) & ~125211u, _wgslsmith_add_u32(68768u, global2.a.a.x) ^ global2.a.a.x, ~firstLeadingBit(global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b)))));
    var var_1 = vec4<u32>(var_0.a, global2.a.a.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(~global3.a.yw), ~vec2<u32>(15518u, 35648u)), ~(global3.a.x & global3.a.x));
    var var_2 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(~global2.a.a.ywy, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 60738u, var_2.a.x), ~vec3<u32>(u_input.b, 1u, 0u)))), 1u)], u_input.a.x, 1, var_0.b.x);
}

