// {"0:0":[124,190,219,52,145,15,92,100,224,72,179,193,225,205,174,24,136,161,158,59,211,132,154,76,251,209,34,139,101,165,149,134,165,35,254,150,69,109,195,68,72,65,195,214,34,234,115,106]}
// Seed: 12177267381836339111

struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(26274, -2147483648, 2147483647), 1329.0, true);

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(-2147483648, 0, 38383), -1584.0, false), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(-7794, 51124, 0), -842.0, false), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(1, 8487, 27768), 135.0, false), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(12616, 0, 2147483647), -1805.0, false), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-26256, -6126, 0), -693.0, false));

var<private> global3: array<i32, 22> = array<i32, 22>(-2147483648, 1, 2147483647, 56169, -2147483648, 41881, 0, 18408, 17793, -1, -36922, 2147483647, 948, 0, 3499, 28776, 1, -8717, 8944, -12849, 15334, 2147483647);

var<private> LOOP_COUNTERS: array<u32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> Struct_2 {
    let var_0 = global0.a.x;
    if (global0.d) {
        global1 = array<Struct_1, 11>();
    }
    global3 = array<i32, 22>();
    global3 = array<i32, 22>();
    var var_1 = false;
    return Struct_2(Struct_1(!(!select(vec4<bool>(false, global0.a.x, global0.d, true), global0.a, vec4<bool>(true, global0.d, true, global0.a.x))), u_input.b, -726.0, all(!global0.a)), global1[_wgslsmith_index_u32(min(abs(~_wgslsmith_add_u32(0u, arg_0)), arg_2), 11u)], 1u, global2[_wgslsmith_index_u32(arg_2, 5u)], abs(reverseBits(~(38650 >> (23962u % 32u)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<u32>) -> vec2<i32> {
    if (!((select(0 < u_input.b.x, select(global0.a.x, false, true), !true) & global0.a.x) | (global0.d & any(global0.a.wx)))) {
    }
    for (; arg_0.x; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        continue;
    }
    global3 = array<i32, 22>();
    var var_0 = func_5(min(~_wgslsmith_div_u32(reverseBits(arg_2), arg_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(24493u ^ u_input.c.x, max(arg_3.x, 0u)), ~(~arg_3.xx))), abs(vec4<u32>(arg_2, ~(~arg_2), ~0u, ~(16844u ^ 10569u))), ~arg_2);
    let var_1 = -2147483648;
    return vec2<i32>(13597, 2147483647) >> (min(~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, arg_2), vec2<u32>(arg_2, 0u))), ~(reverseBits(arg_3.zz) >> (arg_3.zz % vec2<u32>(32u)))) % vec2<u32>(32u));
}

fn func_6() -> f32 {
    global2 = array<Struct_1, 5>();
    global0 = global1[_wgslsmith_index_u32(1u, 11u)];
    let var_0 = true;
    var var_1 = Struct_1(global0.a, _wgslsmith_div_vec3_i32((vec3<i32>(-1, global3[_wgslsmith_index_u32(1u, 22u)], u_input.a.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(29224u, 58560u, u_input.c.x), u_input.c.wxz, u_input.c.wzw) % vec3<u32>(32u))) ^ ~reverseBits(vec3<i32>(global0.b.x, 12553, u_input.a.x)), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647, -13836, -1), vec3<i32>(~global3[_wgslsmith_index_u32(u_input.c.x, 22u)], abs(-35173), min(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], u_input.b.x)))), global0.c, -1693 <= firstTrailingBit(_wgslsmith_sub_i32(0, 28535)));
    for (var var_2 = 38499; ; var_2 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        continue;
    }
    return _wgslsmith_f_op_f32(select(func_5(3808u, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 37255u, u_input.c.x), vec4<u32>(0u, 74743u, u_input.c.x, u_input.c.x), u_input.c)), reverseBits(~_wgslsmith_div_u32(0u, 1u))).a.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c))), true));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_1(vec4<bool>(!((true || false) && !true), !any(vec3<bool>(false, true, true)) | all(!global0.a.yyy), global0.d, global0.d), vec3<i32>(firstTrailingBit(-7589), -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, -27638), global0.b), global0.b), _wgslsmith_mod_i32(abs(-1), _wgslsmith_dot_vec2_i32(u_input.b.xy, func_4(vec2<bool>(false, false), vec2<f32>(global0.c, global0.c), 1u, u_input.c.wyy)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-896.0 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(792.0 - 110.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6())))), all(select(select(!global0.a, !global0.a, global0.d), global0.a, select(global0.a, !vec4<bool>(true, false, global0.d, global0.d), true))));
    var var_0 = false;
    for (var var_1 = -u_input.a.x; ; global2 = array<Struct_1, 5>()) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    switch (-1) {
        case 2161: {
            return !(!global0.a.xw);
        }
        case 17930: {
            global0 = func_5(~_wgslsmith_clamp_u32(0u, (u_input.c.x | u_input.c.x) & (47357u << (1u % 32u)), _wgslsmith_sub_u32(34013u, 25767u)), u_input.c, func_5(u_input.c.x, vec4<u32>(abs(u_input.c.x), 31122u, u_input.c.x, _wgslsmith_mult_u32(3373u, 19536u)) >> (vec4<u32>(~9906u, countOneBits(u_input.c.x), ~5760u, ~73907u) % vec4<u32>(32u)), _wgslsmith_dot_vec3_u32(u_input.c.xwz, u_input.c.zyx)).c).b;
            if (select(global0.a.x, global0.d, !true)) {
                let var_1 = global1[_wgslsmith_index_u32(8243u >> (_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mod_u32(func_5(0u, ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), 52508u).c, 1u), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(104812u, 0u), ~u_input.c.x)) % 32u), 11u)];
                global2 = array<Struct_1, 5>();
                let var_2 = Struct_1(select(select(func_5(u_input.c.x, vec4<u32>(0u, 33149u, 38534u, 126269u), 1u | 0u).a.a, !var_1.a, !vec4<bool>(true, var_1.d, false, true)), !(!select(vec4<bool>(true, true, var_1.d, var_1.a.x), global0.a, true)), !any(!vec3<bool>(global0.d, false, false))), global0.b, global0.c, global0.d);
            }
        }
        case -1: {
            let var_1 = 0;
        }
        default: {
            switch (-1) {
                default: {
                    global3 = array<i32, 22>();
                    var var_1 = global1[_wgslsmith_index_u32(~u_input.c.x, 11u)];
                    let var_2 = true;
                }
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        return vec2<bool>(~44287u > (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 0u, u_input.c.x, 103659u)), u_input.c.x) & ~u_input.c.x), !global0.d);
    }
    return global0.a.wz;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -1099.0);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(~u_input.c.wzz, _wgslsmith_add_vec3_u32(vec3<u32>(~0u, u_input.c.x, 29586u), ~u_input.c.wxx))), 5u)];
    var var_2 = select(var_1.a.zw, !(!var_1.a.xy), select(var_1.a.wx, select(func_3(), !select(var_1.a.ww, vec2<bool>(global0.a.x, global0.d), var_1.d), !all(var_1.a)), global3[_wgslsmith_index_u32(0u, 22u)] < _wgslsmith_add_i32(~1, firstTrailingBit(global0.b.x))));
    var_2 = func_5(~(~(0u ^ ~u_input.c.x)), _wgslsmith_mult_vec4_u32(~u_input.c, u_input.c), ~16506u).b.a.yz;
    global3 = array<i32, 22>();
    return Struct_2(Struct_1(vec4<bool>(var_1.d, false, !(!global0.a.x), true), u_input.b, 1328.0, !false), func_5(u_input.c.x, countOneBits((u_input.c >> (vec4<u32>(u_input.c.x, 75204u, 4294967295u, 0u) % vec4<u32>(32u))) >> (~u_input.c % vec4<u32>(32u))), countOneBits(firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x, 1u)))).d, u_input.c.x, Struct_1(func_5(~u_input.c.x, vec4<u32>(18706u, 0u, 10026u, 1u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u), 88586u)).b.a, var_1.b, func_5(abs(reverseBits(u_input.c.x)), ~(vec4<u32>(0u, 4294967295u, u_input.c.x, 4294967295u) & u_input.c), 1u).d.c, any(!vec2<bool>(true, var_1.d))), select(-u_input.b.x, global0.b.x, var_1.a.x));
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    switch (max(_wgslsmith_dot_vec4_i32(select(~firstLeadingBit(vec4<i32>(-28109, global0.b.x, 53111, u_input.b.x)), countOneBits(vec4<i32>(15689, -84583, global3[_wgslsmith_index_u32(arg_1.c, 22u)], 24169)) >> (vec4<u32>(u_input.c.x, 4294967295u, 11887u, u_input.c.x) % vec4<u32>(32u)), true), firstTrailingBit(~vec4<i32>(arg_1.d.b.x, global0.b.x, global0.b.x, 9048) | ~vec4<i32>(global0.b.x, global0.b.x, arg_1.a.b.x, 41115))), abs(global0.b.x))) {
        case -1: {
            global3 = array<i32, 22>();
        }
        case -2147483648: {
            if (!(!(0u >= max(u_input.c.x >> (u_input.c.x % 32u), _wgslsmith_div_u32(0u, u_input.c.x))))) {
                global1 = array<Struct_1, 11>();
                global0 = func_5(abs(func_2().c), _wgslsmith_sub_vec4_u32(~(~firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, arg_1.c, u_input.c.x))), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, 6348u, u_input.c.x)), firstLeadingBit(u_input.c) << (vec4<u32>(4294967295u, 58943u, arg_1.c, 1u) % vec4<u32>(32u)))), 31254u).d;
            }
            var var_0 = _wgslsmith_f_op_f32(-func_2().b.c);
        }
        case 25741: {
            for (; ; ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                let var_0 = vec3<f32>(-750.0, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(214.0 + -189.0)))) * 1663.0));
                global0 = func_2().d;
                var var_1 = func_2().a;
            }
            let var_0 = arg_1.c;
            return func_2().a;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                global3 = array<i32, 22>();
                global3 = array<i32, 22>();
                let var_0 = vec4<bool>(global0.d, !true, arg_1.c > 1u, global0.a.x);
                continue;
            }
            let var_0 = !(_wgslsmith_f_op_f32(-arg_0) == -184.0);
        }
    }
    global2 = array<Struct_1, 5>();
    let var_0 = !vec2<bool>(true, func_3().x);
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        if (var_0.x) {
        }
        var var_1 = -(~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(28095, -13521, global0.b.x, -24802), vec4<i32>(global3[_wgslsmith_index_u32(66651u, 22u)], -57590, 2147483647, 29282) & vec4<i32>(-46574, global0.b.x, 6150, global0.b.x)), vec4<i32>(0, ~0, 1 >> (34946u % 32u), -2147483648 | -2147483648)));
        let var_2 = vec3<bool>(!any(vec2<bool>(false, var_0.x)), all(!select(global0.a.wyx, !vec3<bool>(false, true, false), func_2().a.a.yzx)), u_input.c.x >= _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.c), ~vec4<u32>(1u, u_input.c.x, 53394u, 3200u)));
        let var_3 = !(!func_2().a.a.zz);
        continue;
    }
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -1253.0), arg_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, -1000.0), _wgslsmith_div_f32(1457.0, 1051.0))) - global0.c)));
    return global2[_wgslsmith_index_u32(min(_wgslsmith_div_u32(9632u, max(~(~0u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(24458u, 30383u, u_input.c.x), u_input.c.wxw)))), ~41191u), 5u)];
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_1, 5>();
    global0 = Struct_1(global0.a, u_input.b, -1483.0, any(!vec4<bool>(global0.c == global0.c, true, all(vec4<bool>(false, false, global0.d, false)), !true)));
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 5u)], Struct_1(global0.a, _wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.b), vec3<i32>(u_input.a.x << (41563u % 32u), 33820, _wgslsmith_dot_vec4_i32(vec4<i32>(-15925, u_input.a.x, 2147483647, u_input.a.x), vec4<i32>(global0.b.x, 0, global3[_wgslsmith_index_u32(1u, 22u)], u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c, global0.c)) + 1179.0)), !(_wgslsmith_f_op_f32(-global0.c) <= _wgslsmith_f_op_f32(-global0.c))), _wgslsmith_sub_u32(~(firstTrailingBit(u_input.c.x) | 5630u), u_input.c.x >> (min(u_input.c.x, ~u_input.c.x) % 32u)), Struct_1(vec4<bool>(global0.a.x, false, any(!global0.a.wxw), true), vec3<i32>(~52942, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global0.b, u_input.b), global3[_wgslsmith_index_u32(~12788u, 22u)]), 1), _wgslsmith_f_op_f32(f32(-1.0) * -1073.0), false), u_input.b.x);
    switch (_wgslsmith_mult_i32(_wgslsmith_add_i32(global0.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.b.x, 1142, global3[_wgslsmith_index_u32(21538u, 22u)]), vec4<i32>(-25807, global0.b.x, global3[_wgslsmith_index_u32(1u, 22u)], global0.b.x)) & ~global3[_wgslsmith_index_u32(u_input.c.x, 22u)], -8961)), -2147483648)) {
        case -21420: {
            var var_1 = Struct_2(func_7(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1529.0), _wgslsmith_f_op_f32(floor(367.0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-143.0))))), func_2(), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(577.0, var_0.b.c, var_0.d.c, var_0.d.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, global0.c, global0.c, global0.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(831.0, global0.c, -1214.0, -1000.0) - vec4<f32>(global0.c, var_0.a.c, global0.c, 263.0)))))), func_2().d, var_0.c, Struct_1(var_0.a.a, vec3<i32>(0, func_4(global0.a.yz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1247.0, 765.0), vec2<f32>(global0.c, 1490.0), global0.a.xz)), u_input.c.x, vec3<u32>(0u, u_input.c.x, var_0.c)).x, ~(21957 ^ var_0.e)), 357.0, var_0.b.d), -1);
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var_1 = func_5(var_1.c, ~vec4<u32>(1u << (_wgslsmith_div_u32(var_0.c, var_0.c) % 32u), ~4294967295u, var_1.c, 61593u), var_0.c);
                continue;
            }
        }
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        continue;
    }
    return Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~var_0.c, _wgslsmith_dot_vec2_u32(u_input.c.zw, u_input.c.xy)), 5u)], Struct_1(global0.a, u_input.b, var_0.d.c, var_0.b.d != global0.a.x), u_input.c.x, var_0.d, ~(~u_input.a.x));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    for (var var_0 = 0; true; var_0 -= 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    for (var var_0 = arg_2.e; (i32(-1) * -6903) <= 16129; global3 = array<i32, 22>()) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_1 = u_input.c.zxz;
        let var_2 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 5u)], Struct_1(select(vec4<bool>(!arg_1.a.d, func_5(arg_2.c, u_input.c, u_input.c.x).a.d, any(vec3<bool>(false, arg_1.d.d, arg_2.d.d)), any(vec4<bool>(false, false, arg_1.b.a.x, arg_2.b.a.x))), func_1().d.a, vec4<bool>(global0.a.x || arg_1.a.d, true | arg_0.a.a.x, arg_1.c <= 7707u, arg_2.a.a.x)), -vec3<i32>(max(0, u_input.b.x), global3[_wgslsmith_index_u32(abs(u_input.c.x), 22u)], _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.b.x, -13897, arg_2.d.b.x, arg_0.b.b.x), vec4<i32>(u_input.a.x, -71244, arg_2.d.b.x, 1))), 258.0, false), firstTrailingBit(u_input.c.x), func_1().d, arg_1.a.b.x);
        for (var var_3 = 1; arg_1.b.a.x; var_3 += 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        }
        var var_3 = arg_2.d;
        var var_4 = arg_1.a.a.x;
    }
    var var_0 = arg_0.c;
    if (!all(arg_1.a.a.zzw)) {
        global2 = array<Struct_1, 5>();
    }
    let var_1 = vec4<bool>(all(select(func_5(u_input.c.x, ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, arg_1.c), arg_1.c).a.a, arg_2.a.a, select(arg_0.b.a.x, !false, !global0.a.x))), !func_2().d.a.x, false, global0.d);
    return Struct_1(vec4<bool>(11281 == func_5(arg_0.c & 16546u, min(u_input.c, u_input.c), ~u_input.c.x).d.b.x, true, true, all(!global0.a.wy)), vec3<i32>(-_wgslsmith_mult_i32(arg_0.d.b.x, -arg_1.a.b.x), (2147483647 >> (func_1().c % 32u)) ^ global0.b.x, func_1().e), -1000.0, arg_1.b.a.x & arg_2.d.a.x);
}

fn func_9(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = Struct_1(vec4<bool>(arg_3.d.a.x, !func_1().b.a.x, !(!global0.d), !(arg_1.c < _wgslsmith_div_f32(-182.0, arg_3.a.c))), vec3<i32>(-33443, 36316, _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(~(1u ^ 50843u), 22u)], (2147483647 | arg_2.b.x) >> (func_2().c % 32u), func_2().a.b.x)), -1463.0, all(!(!arg_2.a.xzw)));
    var_0 = func_7(1504.0, func_5(1u, u_input.c, arg_3.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-951.0, global0.c, 1354.0, var_0.c))))));
    let var_1 = Struct_2(func_2().b, func_8(Struct_2(func_7(arg_2.c, arg_3, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(158.0, 1000.0, 695.0, 1359.0)))), Struct_1(!vec4<bool>(arg_1.a.x, false, false, false), _wgslsmith_mod_vec3_i32(arg_1.b, global0.b), _wgslsmith_f_op_f32(step(arg_1.c, -1000.0)), !true), ~(arg_3.c >> (0u % 32u)), Struct_1(!vec4<bool>(false, var_0.d, arg_3.d.d, true), func_1().d.b, -982.0, u_input.c.x > arg_3.c), arg_1.b.x >> (15503u % 32u)), Struct_2(global2[_wgslsmith_index_u32(arg_3.c & _wgslsmith_add_u32(u_input.c.x, arg_3.c), 5u)], Struct_1(var_0.a, func_2().a.b, _wgslsmith_f_op_f32(-220.0 - arg_3.b.c), func_2().d.d), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_3.c), reverseBits(vec2<u32>(27881u, u_input.c.x))), func_8(func_1(), Struct_2(Struct_1(global0.a, arg_1.b, 2329.0, true), global2[_wgslsmith_index_u32(arg_3.c, 5u)], 4294967295u, arg_1, arg_1.b.x), arg_3), 8420), func_2()), arg_3.c, func_7(_wgslsmith_f_op_f32(var_0.c * -773.0), arg_3, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-286.0 - var_0.c), func_2().a.c, _wgslsmith_f_op_f32(-474.0 - arg_3.b.c), _wgslsmith_f_op_f32(344.0 - -138.0)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.c, 1816.0, 1502.0, arg_3.d.c), vec4<f32>(arg_1.c, 291.0, arg_2.c, arg_3.a.c))))), -arg_1.b.x >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(u_input.c.zyw), u_input.c.yyy)) % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256.0 * 188.0))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -512.0), _wgslsmith_f_op_f32(-arg_2.c)), !var_0.a.xx)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1547.0, var_0.c))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(583.0, 622.0)))) * vec2<f32>(1000.0, _wgslsmith_f_op_f32(-global0.c)))));
    var var_3 = var_2.x;
    return _wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), vec4<u32>(_wgslsmith_clamp_u32(arg_3.c, var_1.c, 44338u), _wgslsmith_div_u32(33310u, 40213u), 46193u, 47842u), (0u ^ u_input.c.x) <= 121416u) >> (vec4<u32>(~1u, 34556u, reverseBits(_wgslsmith_mult_u32(63669u, var_1.c)), _wgslsmith_sub_u32(~4294967295u, ~u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(var_1.c, var_1.c, min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, arg_3.c), vec2<u32>(13890u, arg_3.c)) << (firstTrailingBit(u_input.c.x) % 32u), ~(~4294967295u)), firstLeadingBit(u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = 14939; var_0 <= -2147483648; var_0 -= 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        return;
    }
    global2 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(func_9(vec3<i32>(u_input.b.x, ~(global0.b.x >> (0u % 32u)), firstTrailingBit(global0.b.x)), global1[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(23u, 5u)], Struct_2(func_8(Struct_2(global2[_wgslsmith_index_u32(0u, 5u)], Struct_1(global0.a, vec3<i32>(17408, u_input.b.x, -31954), 625.0, true), u_input.c.x, global1[_wgslsmith_index_u32(33427u, 11u)], u_input.a.x), func_1(), func_2()), Struct_1(!global0.a, u_input.b, _wgslsmith_f_op_f32(1000.0 * 1464.0), !global0.a.x), 1u, global2[_wgslsmith_index_u32(firstLeadingBit(~0u), 5u)], 106169)));
}

