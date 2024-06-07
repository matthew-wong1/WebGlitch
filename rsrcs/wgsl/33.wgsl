// {"0:0":[141,139,21,242,125,253,190,113,122,48,232,124,211,239,161,20,3,127,202,121,44,136,201,123,253,80,11,5,202,60,23,81,143,128,7,69,187,70,20,233,141,104,68,44,69,40,186,91,170,229,204,131,235,252,248,72,249,14,224,2,180,188,136,195,48,72,4,230,210,247,56,50,24,74,202,78,215,5,179,17]}
// Seed: 3835199250340050254

struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(138.0, -222.0, -385.0, -1065.0, 1304.0, -783.0, 714.0, -359.0, -1000.0, -422.0, 777.0, -813.0, 445.0, 321.0, -1232.0, -1042.0, -396.0, 754.0, 285.0, 471.0, -1273.0, -1046.0);

var<private> global1: array<vec2<i32>, 16>;

var<private> global2: array<vec2<i32>, 29>;

var<private> LOOP_COUNTERS: array<u32, 8>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = true;
    var var_1 = !vec2<bool>(true, false);
    return var_1.x && var_1.x;
}

fn func_2() -> u32 {
    var var_0 = all(!(!select(vec3<bool>(true, true, true), !vec3<bool>(true, false, true), !vec3<bool>(true, true, false))));
    let var_1 = _wgslsmith_f_op_f32(-885.0);
    if (func_3()) {
        let var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 22u)]);
        if (_wgslsmith_div_u32(4294967295u << (u_input.c.x % 32u), u_input.c.x) == ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 34058u, u_input.c.x, 4294967295u), vec4<u32>(u_input.e.x, 29975u, u_input.c.x, u_input.c.x)) ^ u_input.b.x)) {
        }
    }
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var_0 = any(vec2<bool>(!(_wgslsmith_f_op_f32(f32(-1.0) * -1266.0) > -395.0), _wgslsmith_add_i32(~u_input.a, u_input.a & -44190) != u_input.a));
        break;
    }
    var_0 = ~u_input.c.x > _wgslsmith_mod_u32(u_input.b.x, 57657u);
    return ~(~(~4294967295u));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = true;
    global1 = array<vec2<i32>, 16>();
    global2 = array<vec2<i32>, 29>();
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        break;
    }
    let var_1 = arg_1.zyw;
    return vec4<u32>(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.b.x, u_input.b.x, 37449u)), u_input.b), ~1672u >> ((u_input.b.x << (((arg_2 & 9140u) ^ arg_2) % 32u)) % 32u), u_input.b.x, 36095u);
}

fn func_5(arg_0: bool) -> Struct_1 {
    global2 = array<vec2<i32>, 29>();
    switch (~(-u_input.a)) {
        case 0: {
            var var_0 = Struct_1(-1, ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.e.x, u_input.e.x, u_input.e.x), func_6(Struct_1(-2147483648, vec4<u32>(2463u, 22768u, 1u, u_input.b.x), vec3<f32>(-1057.0, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), u_input.e.x, vec4<bool>(true, false, arg_0, arg_0)), vec4<f32>(145.0, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], -344.0, global0[_wgslsmith_index_u32(2620u, 22u)]), u_input.b.x, vec2<bool>(false, arg_0)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 12286u), vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.c.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(446.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(13112u, 22u)] + global0[_wgslsmith_index_u32(62268u, 22u)]))), _wgslsmith_f_op_f32(-106.0 + 913.0))), 0u, select(!select(vec4<bool>(false, true, true, arg_0), select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(true, arg_0, false, true)), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0), true)), vec4<bool>(arg_0, arg_0, all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), arg_0)), !any(vec3<bool>(arg_0, false, false))), false));
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~max(~59475u, 4294967295u), 22u)] + _wgslsmith_f_op_f32(-var_0.c.x)) + global0[_wgslsmith_index_u32(4294967295u, 22u)]);
                break;
            }
            if (_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -338.0) - -463.0), -1185.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(f32(-1.0) * -457.0)) + global0[_wgslsmith_index_u32(~4294967295u & ~var_0.b.x, 22u)])) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(314.0, var_0.c.x)))) - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_0.b.x, 22u)], global0[_wgslsmith_index_u32(17093u, 22u)])))) {
                return Struct_1(u_input.a, select(min(var_0.b & ~var_0.b, select(var_0.b, _wgslsmith_mult_vec4_u32(var_0.b, vec4<u32>(4294967295u, 1u, u_input.b.x, var_0.b.x)), true)), select(~var_0.b, var_0.b, !var_0.e.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d, 10232u, 0u, 15968u) | vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(var_0.d, 0u, u_input.b.x, 1u)), ~vec4<u32>(46849u, u_input.b.x, u_input.c.x, u_input.b.x)) % vec4<u32>(32u)), !vec4<bool>(arg_0, arg_0, any(vec3<bool>(false, arg_0, true)), !true)), _wgslsmith_f_op_vec3_f32(-var_0.c), max(func_2(), func_2()) ^ ~0u, var_0.e);
            }
        }
        default: {
            global1 = array<vec2<i32>, 16>();
        }
    }
    global0 = array<f32, 22>();
    for (var var_0 = -10417; var_0 >= -1; global2 = array<vec2<i32>, 29>()) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        break;
    }
    let var_0 = ~func_6(Struct_1(u_input.d.x, countOneBits(~vec4<u32>(4801u, 67007u, u_input.b.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 22u)], 555.0, global0[_wgslsmith_index_u32(u_input.c.x, 22u)]) - vec3<f32>(-1289.0, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]))), u_input.e.x, select(!vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, false, true, arg_0), arg_0)), vec4<f32>(1333.0, -932.0, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)] + global0[_wgslsmith_index_u32(max(0u, u_input.b.x), 22u)]), _wgslsmith_f_op_f32(-651.0 - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 22u)]))), firstTrailingBit(~4294967295u << (~u_input.c.x % 32u)), !(!vec2<bool>(true, arg_0)));
    return Struct_1(~_wgslsmith_sub_i32(reverseBits(~(-2147483648)), ~(u_input.a ^ u_input.a)), _wgslsmith_mod_vec4_u32(firstTrailingBit(var_0 & ~vec4<u32>(0u, 1u, 67809u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 30843u, 133859u, 8327u) & countOneBits(var_0), vec4<u32>(~1u, var_0.x, var_0.x, u_input.e.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 22u)]))), 1552.0), global0[_wgslsmith_index_u32(~u_input.c.x, 22u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-735.0), 575.0)), 48138u, vec4<bool>(false, !any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, false), arg_0)), true, true));
}

fn func_4(arg_0: f32) -> u32 {
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        continue;
    }
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        }
    }
    let var_0 = Struct_1(~(-2147483648), vec4<u32>(~(~7629u ^ ~u_input.c.x), _wgslsmith_div_u32(u_input.c.x, ~(~10654u)), u_input.b.x, 60851u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 22u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])))), _wgslsmith_f_op_f32(-arg_0)))), u_input.c.x, !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, false), true && false)));
    var var_1 = select(vec4<i32>(5958, ~2147483647, i32(-1) * -2147483648, u_input.d.x), ~vec4<i32>(u_input.d.x, 1, _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483648, var_0.a), -60093), -(var_0.a | -19784)), !select(select(vec4<bool>(var_0.e.x, false, false, var_0.e.x), vec4<bool>(var_0.e.x, true, false, var_0.e.x), select(true, false, var_0.e.x)), select(!var_0.e, vec4<bool>(var_0.e.x, var_0.e.x, true, false), any(vec2<bool>(false, var_0.e.x))), var_0.e));
    if (!(!all(select(select(vec2<bool>(var_0.e.x, true), var_0.e.zx, var_0.e.x), select(vec2<bool>(true, false), var_0.e.xy, vec2<bool>(true, true)), !var_0.e.yw)))) {
        let var_2 = func_5(var_0.e.x);
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, -1137.0, -849.0, -1623.0))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(66594u, 22u)], var_2.c.x, var_0.c.x, var_0.c.x), vec4<f32>(arg_0, var_2.c.x, -759.0, global0[_wgslsmith_index_u32(var_0.b.x, 22u)]), false))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, arg_0, arg_0, var_2.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(27731u, 22u)], var_2.c.x, -149.0, var_2.c.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, -943.0, -1833.0, arg_0) * vec4<f32>(var_2.c.x, var_2.c.x, global0[_wgslsmith_index_u32(6089u, 22u)], 617.0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(132.0, var_2.c.x, var_2.c.x, var_2.c.x) + vec4<f32>(134.0, global0[_wgslsmith_index_u32(var_2.b.x, 22u)], var_0.c.x, 1496.0)) - vec4<f32>(327.0, -463.0, arg_0, -1149.0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1182.0, arg_0, var_0.c.x, -1742.0)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(u_input.e.x, 22u)], arg_0, 1066.0), vec4<f32>(-1061.0, var_0.c.x, 879.0, global0[_wgslsmith_index_u32(var_0.b.x, 22u)])))))));
            var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-377.0))))))));
            global2 = array<vec2<i32>, 29>();
        }
    }
    return _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 0u), func_6(var_0, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000.0, 1115.0, var_0.c.x, _wgslsmith_f_op_f32(-282.0)))), 1u, var_0.e.xy).yw);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    if (all(vec3<bool>(false, arg_0, arg_0)) | false) {
        var var_0 = ~vec3<u32>(firstTrailingBit(func_2()), ~arg_1, 0u) ^ ~(reverseBits(firstTrailingBit(u_input.c)) << (u_input.c % vec3<u32>(32u)));
        let var_1 = _wgslsmith_sub_u32(21385u, abs(func_4(global0[_wgslsmith_index_u32(0u, 22u)])));
    }
    global1 = array<vec2<i32>, 16>();
    let var_0 = Struct_1(u_input.a, ~reverseBits(~vec4<u32>(arg_1, 4294967295u, u_input.b.x, arg_1) | (vec4<u32>(60070u, 0u, arg_1, 59534u) | vec4<u32>(6642u, 0u, 0u, u_input.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(arg_0).c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2512.0, global0[_wgslsmith_index_u32(43941u, 22u)], -628.0))) * vec3<f32>(_wgslsmith_f_op_f32(237.0 * global0[_wgslsmith_index_u32(arg_1, 22u)]), _wgslsmith_f_op_f32(1328.0 + 1266.0), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 22u)], arg_2))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(func_5(false).c)), _wgslsmith_f_op_vec3_f32(trunc(func_5(arg_0).c))), vec3<bool>(!arg_0, false, arg_0))), 0u, vec4<bool>(~(~arg_3.x) < _wgslsmith_mod_i32(-1, 1931), !arg_0, !(!(arg_0 && true)), func_3()));
    global0 = array<f32, 22>();
    let var_1 = var_0.e;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    if (!true) {
        var var_0 = func_1(0u >= ~0u, 19379u, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1142.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -608.0), _wgslsmith_f_op_f32(min(-585.0, global0[_wgslsmith_index_u32(u_input.b.x, 22u)])))), -1000.0)), -(u_input.d.xy >> (vec2<u32>(4294967295u, u_input.e.x) % vec2<u32>(32u))) ^ u_input.d.xx);
        var var_1 = var_0.c.x;
        var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(353.0)))) - -386.0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, global0[_wgslsmith_index_u32(var_0.d, 22u)]) + _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1690.0, 507.0), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(65982u, 22u)]))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -370.0), -888.0)))));
        switch (_wgslsmith_add_i32(~(0), _wgslsmith_mod_i32(~var_0.a, countOneBits(-1)))) {
            case 5017: {
                global2 = array<vec2<i32>, 29>();
                let var_3 = ~u_input.d;
            }
            case 44856: {
                var var_3 = all(!var_0.e) | var_0.e.x;
                let var_4 = -abs(~((vec4<i32>(u_input.d.x, var_0.a, 38307, var_0.a) >> (var_0.b % vec4<u32>(32u))) ^ -vec4<i32>(0, 0, var_0.a, -19582)));
                return;
            }
            case 0: {
                var_1 = func_1(!(!var_0.e.x), func_5(false).b.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(~4294967295u | _wgslsmith_sub_u32(32435u, 53718u)), 22u)] + 148.0), vec2<i32>(2147483647, 1)).c.x;
                var var_3 = func_1(var_0.e.x, func_6(Struct_1(countOneBits(var_0.a), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.b, var_0.b), vec4<u32>(34346u, 12187u, 0u, u_input.e.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(var_0.c.x, var_0.c.x, 1603.0)))), abs(4294967295u & 43664u), vec4<bool>(true, all(var_0.e.zww), all(var_0.e), 17748 <= 2147483647)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(476.0, var_0.c.x, -110.0, -624.0) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2049.0, global0[_wgslsmith_index_u32(14944u, 22u)], 358.0, -234.0) * vec4<f32>(var_0.c.x, global0[_wgslsmith_index_u32(7904u, 22u)], -431.0, global0[_wgslsmith_index_u32(0u, 22u)])))), ~u_input.e.x, func_5(all(var_0.e)).e.wy).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1238.0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(73948u, 22u)] + 445.0) * var_0.c.x)), _wgslsmith_f_op_f32(trunc(var_0.c.x))), ~vec2<i32>(firstTrailingBit(abs(u_input.d.x)), _wgslsmith_mod_i32(var_0.a, ~2147483647))).e.wwx;
                var var_4 = func_5(true);
                let var_5 = !vec2<bool>(!func_1(false, 13699u, global0[_wgslsmith_index_u32(var_4.b.x, 22u)], vec2<i32>(var_0.a, var_0.a)).e.x || (~13855u < 27765u), func_3());
                let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.c.xx - var_4.c.xy) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.c.x, var_0.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.c.x)) + var_4.c.x)), -1622.0));
            }
            default: {
                let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2147483647, 2147483647), ~(-1), i32(-1) * -23579), _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.d), -vec3<i32>(2147483647, u_input.a, u_input.a))), vec3<i32>(_wgslsmith_mod_i32(u_input.d.x, var_0.a << (var_0.b.x % 32u)), _wgslsmith_mod_i32(0, _wgslsmith_mult_i32(var_0.a, u_input.d.x)), var_0.a)), ~var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), ~4294967295u, func_1(!(!(true && true)), var_0.d | func_4(_wgslsmith_f_op_f32(ceil(-633.0))), _wgslsmith_div_f32(245.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-311.0)))), -(vec2<i32>(-1) * -u_input.d.xx)).e);
            }
        }
    }
    if (false) {
        global2 = array<vec2<i32>, 29>();
        global1 = array<vec2<i32>, 16>();
        var var_0 = func_5(u_input.a < u_input.d.x);
        var var_1 = var_0.e.x;
    }
    var var_0 = ~u_input.e.x;
    var var_1 = 1;
    var var_2 = Struct_1(1, select(min(_wgslsmith_mult_vec4_u32(vec4<u32>(48614u, 52219u, 2185u, 30547u), func_6(Struct_1(u_input.a, vec4<u32>(0u, 1u, u_input.b.x, 4294967295u), vec3<f32>(1025.0, 854.0, global0[_wgslsmith_index_u32(70536u, 22u)]), u_input.e.x, vec4<bool>(true, false, false, false)), vec4<f32>(global0[_wgslsmith_index_u32(22568u, 22u)], -487.0, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), 58182u, vec2<bool>(true, true))), firstTrailingBit(vec4<u32>(50736u, u_input.c.x, 1u, 4294967295u))), vec4<u32>(select(~u_input.b.x, _wgslsmith_clamp_u32(50596u, u_input.e.x, 15440u), true), firstTrailingBit(~u_input.b.x), 62781u, countOneBits(abs(u_input.b.x))), !vec4<bool>(false, all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, true, false, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(1u & 0u, 22u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), _wgslsmith_f_op_f32(-146.0)), vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.e.x), 22u)], _wgslsmith_f_op_f32(1531.0 * global0[_wgslsmith_index_u32(4294967295u, 22u)]), global0[_wgslsmith_index_u32(u_input.c.x, 22u)]))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(938.0, -612.0, global0[_wgslsmith_index_u32(10899u, 22u)])))), u_input.e.x, select(!vec4<bool>(false && false, func_5(false).e.x, false || false, true), func_5(func_5(func_5(false).e.x).e.x).e, !(global0[_wgslsmith_index_u32(40704u, 22u)] != _wgslsmith_f_op_f32(f32(-1.0) * -508.0))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(~reverseBits(var_2.d), u_input.e.x), vec2<u32>(42474u, u_input.c.x));
}

