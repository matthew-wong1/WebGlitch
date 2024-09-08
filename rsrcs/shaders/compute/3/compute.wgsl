// {"0:0":[165,81,143,254,108,33,218,212,6,11,229,40,51,251,101,43]}
// Seed: 13940537664595175736

struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_1(vec2<i32>(1i, 1i)), i32(-2147483648), Struct_1(vec2<i32>(2147483647i, 49723i))), Struct_3(Struct_1(vec2<i32>(2147483647i, 1i)), 20429i, Struct_1(vec2<i32>(i32(-2147483648), 1i))), Struct_3(Struct_1(vec2<i32>(-21946i, 27951i)), 7101i, Struct_1(vec2<i32>(2147483647i, -22712i))), Struct_3(Struct_1(vec2<i32>(-34890i, -39106i)), 1i, Struct_1(vec2<i32>(2147483647i, 1i))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 1i)), 2147483647i, Struct_1(vec2<i32>(i32(-2147483648), 56424i))), Struct_3(Struct_1(vec2<i32>(-30469i, 54113i)), 1i, Struct_1(vec2<i32>(30193i, -14787i))), Struct_3(Struct_1(vec2<i32>(44459i, 1i)), -38559i, Struct_1(vec2<i32>(11884i, -11017i))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 31121i)), 23733i, Struct_1(vec2<i32>(i32(-2147483648), 3882i))), Struct_3(Struct_1(vec2<i32>(0i, 1i)), i32(-2147483648), Struct_1(vec2<i32>(0i, -56492i))), Struct_3(Struct_1(vec2<i32>(26184i, -994i)), 4852i, Struct_1(vec2<i32>(23226i, 22059i))), Struct_3(Struct_1(vec2<i32>(-39418i, 11362i)), 1i, Struct_1(vec2<i32>(0i, -18118i))), Struct_3(Struct_1(vec2<i32>(6143i, i32(-2147483648))), 1i, Struct_1(vec2<i32>(0i, -32713i))), Struct_3(Struct_1(vec2<i32>(6309i, 1i)), -14097i, Struct_1(vec2<i32>(1729i, -7752i))), Struct_3(Struct_1(vec2<i32>(11565i, 25246i)), -7038i, Struct_1(vec2<i32>(-1i, i32(-2147483648)))), Struct_3(Struct_1(vec2<i32>(48121i, -28533i)), 4161i, Struct_1(vec2<i32>(i32(-2147483648), -16225i))), Struct_3(Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), 8843i, Struct_1(vec2<i32>(-1i, -1i))), Struct_3(Struct_1(vec2<i32>(-28209i, 2147483647i)), -1i, Struct_1(vec2<i32>(27904i, -1i))), Struct_3(Struct_1(vec2<i32>(-21562i, i32(-2147483648))), 1i, Struct_1(vec2<i32>(-1i, 0i))));

var<private> LOOP_COUNTERS: array<u32, 14>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = any(select(select(vec4<bool>(u_input.a.x == -3643i, false, false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), false), vec4<bool>(true, true, true, true), true));
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global0 = array<Struct_3, 18>();
        var var_1 = arg_1;
    }
    let var_1 = arg_2;
    switch (2147483647i) {
        case 2147483647i: {
            let var_2 = Struct_4(arg_0, 1f);
            var_0 = 995f == var_2.b;
            var var_3 = select(vec3<i32>(firstTrailingBit(i32(-1i) * -22322i), var_2.a.a.x, -1i), -(~select(~u_input.a, abs(u_input.a), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), all(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))));
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                let var_4 = global0[_wgslsmith_index_u32(~19268u, 18u)];
                var var_5 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, var_1) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -588f) + vec2<f32>(arg_2, var_1))))))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), min(~vec2<u32>(19931u, 18950u), vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u)));
            }
            var_0 = u_input.a.x != -arg_0.a.x;
        }
        case i32(-2147483648): {
            global0 = array<Struct_3, 18>();
        }
        case 0i: {
            let var_2 = 1i;
            var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1684f, 692f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-192f, arg_2)))), select(false, false, false) && true)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1195f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(921f, -131f))))))), vec2<u32>(~abs(select(9180u, 85762u, true)), 74921u));
            var var_4 = Struct_4(Struct_1(u_input.a.zx), _wgslsmith_f_op_f32(round(-891f)));
        }
        case -40462i: {
            var_0 = any(select(!vec3<bool>(false, 2702f >= arg_2, true), !vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, false)), true), any(vec2<bool>(select(true, true, false), true))));
        }
        default: {
            var var_2 = true;
        }
    }
    if (all(!(!vec4<bool>(all(vec4<bool>(true, false, true, false)), true, false, true)))) {
        let var_2 = _wgslsmith_f_op_f32(-var_1);
    }
    return abs(firstLeadingBit(~0u));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        return arg_1.a.x;
    }
    var var_0 = global0[_wgslsmith_index_u32(arg_1.b.x, 18u)];
    let var_1 = _wgslsmith_mult_u32(select(~firstLeadingBit(arg_1.b.x), _wgslsmith_mult_u32(~1u, func_6(Struct_1(u_input.a.xx), Struct_1(var_0.a.a), -600f)), !arg_0.x && !all(vec3<bool>(true, arg_0.x, false))), ~(~max(0u, _wgslsmith_dot_vec2_u32(arg_1.b, vec2<u32>(arg_1.b.x, 0u)))));
    if (arg_0.x) {
    }
    for (var var_2 = 2147483647i; any(select(vec3<bool>(false, false, arg_0.x), select(!vec3<bool>(arg_0.x, false, true), !select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, true), vec3<bool>(false, arg_0.x, true)), arg_0.x), true)); var_2 -= 1i) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        var var_3 = func_6(Struct_1(_wgslsmith_sub_vec2_i32(-(u_input.a.zy ^ var_0.c.a), var_0.a.a)), var_0.c, arg_1.a.x);
    }
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.x, -596f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + 1121f) + _wgslsmith_f_op_f32(-1231f * arg_1.a.x)))))));
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = array<Struct_3, 18>();
    for (var var_0 = -46788i; ; var_0 += 1i) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var_0 = _wgslsmith_clamp_i32(16493i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, arg_0.b), 0i), arg_0.b) ^ firstLeadingBit(arg_0.b);
        for (var var_1 = -32216i; !(143f == _wgslsmith_f_op_f32(func_5(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-704f, 1873f)), ~vec2<u32>(63043u, 62426u))))); var_1 -= 1i) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, ~_wgslsmith_clamp_u32(22693u, 23022u, 1u), 0u), firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u))), ~(~_wgslsmith_clamp_u32(~0u, 1u, _wgslsmith_sub_u32(4294967295u, 65371u))), min(15915u, ~(~0u) << (select(4294967295u, ~48490u, all(vec4<bool>(true, false, true, false))) % 32u)), 0u);
            var_1 = 1i;
            let var_3 = i32(-2147483648);
        }
        break;
    }
    switch (_wgslsmith_clamp_i32(7489i, -_wgslsmith_dot_vec4_i32(max(~vec4<i32>(u_input.a.x, 0i, -38816i, 15592i), max(vec4<i32>(arg_0.c.a.x, i32(-2147483648), u_input.a.x, 0i), vec4<i32>(72370i, 2147483647i, 0i, u_input.a.x))), vec4<i32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.c.a.x, arg_0.b) ^ ~vec4<i32>(2147483647i, 2147483647i, -1251i, 1i)), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.a, vec3<i32>(4014i, -9134i, u_input.a.x)), vec3<i32>(12454i, 33742i, u_input.a.x))))) {
        case -17741i: {
            for (var var_0 = 1i; ; global0 = array<Struct_3, 18>()) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_1 = -(~(-1i));
                global0 = array<Struct_3, 18>();
                continue;
            }
            switch (35463i) {
                default: {
                    let var_0 = vec2<i32>(1i, 1i) | u_input.a.xy;
                    let var_1 = vec4<bool>(true, true, false, !(all(vec3<bool>(true, true, true)) & !select(false, false, false)));
                    let var_2 = min(~vec4<u32>(4294967295u, ~abs(4294967295u), 1u, ~select(1u, 15358u, false)), reverseBits(~vec4<u32>(1u, 1u, 1u, 1u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_div_u32(8266u, 1u), _wgslsmith_sub_u32(24740u, 5853u), _wgslsmith_div_u32(57350u, 4294967295u)), ~reverseBits(vec4<u32>(23347u, 79170u, 0u, 17316u)), vec4<u32>(~271u, _wgslsmith_div_u32(4294967295u, 4294967295u), 4294967295u, 1u)));
                    let var_3 = ~var_2.x;
                }
            }
            switch (-1i) {
                case 1i: {
                    var var_0 = -1i;
                }
                case 30420i: {
                    var var_0 = arg_0.c;
                    let var_1 = Struct_4(Struct_1(-abs(vec2<i32>(u_input.a.x, 0i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(func_5(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_2(vec2<f32>(-1000f, 446f), reverseBits(vec2<u32>(14830u, 0u)))))));
                }
                default: {
                }
            }
            var var_0 = ~abs(vec2<u32>(~0u, 7608u));
        }
        case 24834i: {
            var var_0 = 1u;
            var_0 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24853u), vec2<u32>(1u, 1u)), select(1u, ~0u, true))) ^ 0u;
        }
        default: {
            global0 = array<Struct_3, 18>();
        }
    }
    let var_0 = Struct_3(Struct_1(u_input.a.zy), 0i, Struct_1(_wgslsmith_add_vec2_i32(-abs(vec2<i32>(23714i, i32(-2147483648))), abs(vec2<i32>(arg_0.a.a.x, u_input.a.x)))));
    let var_1 = Struct_1(~(-vec2<i32>(1i, 1i)));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(~770u), 28465u), vec3<u32>(1u, ~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 6622u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))), 1u);
}

fn func_3() -> bool {
    global0 = array<Struct_3, 18>();
    if (!all(vec2<bool>(true, any(vec2<bool>(false, false))))) {
    }
    let var_0 = Struct_1(~max(vec2<i32>(-1i) * -u_input.a.zz, _wgslsmith_sub_vec2_i32(u_input.a.xy, max(vec2<i32>(-1i, 1i), u_input.a.yx))));
    return ~1u > _wgslsmith_mult_u32(~min(4294967295u, func_4(Struct_3(Struct_1(var_0.a), var_0.a.x, var_0))), max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_3, 18>();
    for (var var_0 = 1i; all(select(vec2<bool>(func_3(), arg_0 | arg_1), select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(true, arg_1)), true)) && arg_0; global0 = array<Struct_3, 18>()) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            global0 = array<Struct_3, 18>();
            break;
        }
        continue;
    }
    switch (u_input.a.x) {
        case 0i: {
            var var_0 = 0u;
            var var_1 = Struct_4(Struct_1(arg_2.a), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-962f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-200f, 596f)))))));
            var var_2 = Struct_4(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-780f, var_1.b)) * -487f)) - 1939f));
            var_2 = Struct_4(var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(min(var_2.b, 226f)), arg_1)))), var_1.b));
        }
        case 10063i: {
        }
        default: {
            if (func_3()) {
            }
            if (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1016f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f) - 675f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(472f, 805f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1615f)) * _wgslsmith_f_op_f32(func_5(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_0, false), arg_0), Struct_2(vec2<f32>(-463f, -203f), vec2<u32>(67494u, 1u))))))) {
                global0 = array<Struct_3, 18>();
                var var_0 = 56029i;
                let var_1 = !arg_1;
                var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(271f, -727f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2509f, -307f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, -726f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(830f, -392f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1805f, 203f) - vec2<f32>(-1036f, 780f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(315f, 276f)))))), select(vec2<u32>(1u, 1u) >> (vec2<u32>(28880u, func_4(global0[_wgslsmith_index_u32(4294967295u, 18u)])) % vec2<u32>(32u)), vec2<u32>(55582u, min(16205u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 55985u, 1u, 1u), vec4<u32>(1u, 1u, 13792u, 0u)))), arg_1));
                var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-816f, var_2.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1575f, 928f)))), ~vec2<u32>(firstLeadingBit(var_2.b.x), ~0u) & select(var_2.b, reverseBits(var_2.b), all(vec4<bool>(false, arg_1, true, var_1))));
            }
            switch (-(abs(2147483647i) & -(~_wgslsmith_mod_i32(1i, arg_2.a.x)))) {
                case 1i: {
                    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1509f))) * 484f)), _wgslsmith_f_op_f32(-2339f), _wgslsmith_f_op_f32(-1320f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1742f - -1556f), _wgslsmith_f_op_f32(-1001f * -131f)))))), -1084f);
                    global0 = array<Struct_3, 18>();
                    var var_1 = _wgslsmith_mult_vec3_i32(firstLeadingBit(-u_input.a) << (firstLeadingBit(select(~vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), select(vec3<bool>(false, false, arg_0), vec3<bool>(true, true, arg_1), arg_1))) % vec3<u32>(32u)), min(u_input.a, u_input.a));
                }
                case -1i: {
                }
                case 6831i: {
                }
                case 39149i: {
                    var var_0 = u_input.a.yy;
                    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)))))));
                    global0 = array<Struct_3, 18>();
                }
                default: {
                    let var_0 = Struct_4(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.a.x, i32(-2147483648)) & arg_2.a, _wgslsmith_add_vec2_i32(vec2<i32>(-44282i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(35579i, u_input.a.x), u_input.a.zx, vec2<i32>(-23745i, -27072i))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -122f))), _wgslsmith_f_op_f32(2468f - _wgslsmith_f_op_f32(func_5(vec2<bool>(arg_0, arg_1), Struct_2(vec2<f32>(866f, -503f), vec2<u32>(1u, 27799u)))))))));
                    global0 = array<Struct_3, 18>();
                    global0 = array<Struct_3, 18>();
                }
            }
            if (!arg_0) {
                global0 = array<Struct_3, 18>();
            }
        }
    }
    let var_0 = false;
    global0 = array<Struct_3, 18>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-339f, 402f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<i32>) -> f32 {
    global0 = array<Struct_3, 18>();
    switch (1i) {
        case -1i: {
        }
        case -34889i: {
            var var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-24826i, 2147483647i), select(reverseBits(arg_0.c.a.x), i32(-2147483648), arg_1.x));
            global0 = array<Struct_3, 18>();
            switch (_wgslsmith_mult_i32(reverseBits(-abs(arg_0.a.a.x & -55194i)), arg_0.a.a.x)) {
                case 2147483647i: {
                    let var_1 = 1217f;
                }
                case 1i: {
                    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-673f) + _wgslsmith_f_op_f32(-1956f * 2587f)), -236f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-570f, -228f))))), _wgslsmith_sub_vec2_u32(~(~firstTrailingBit(vec2<u32>(17955u, 1u))), _wgslsmith_sub_vec2_u32(~select(vec2<u32>(1u, 32679u), vec2<u32>(6033u, 40653u), false), ~vec2<u32>(1u, 1u))));
                    let var_2 = var_1.b.x;
                    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - var_1.a.x)))) + _wgslsmith_f_op_f32(-313f));
                }
                case 61444i: {
                    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1153f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1912f + -1265f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2953f)) - -1861f))) + vec3<f32>(1f, 1f, 1f));
                    let var_2 = any(!(!select(vec3<bool>(arg_1.x, false, arg_1.x), !vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x))));
                    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(true, arg_1.x && arg_1.x, arg_0.a)))))) + var_1.x);
                }
                default: {
                    let var_1 = _wgslsmith_add_u32(1u, ~_wgslsmith_clamp_u32(select(15099u, 19964u, arg_1.x), 0u, 73443u >> (1u % 32u))) == ~4294967295u;
                    var_0 = 42825i;
                }
            }
            for (var var_1 = 13219i; ; var_1 -= 1i) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                continue;
            }
        }
        default: {
            if (!(!(!all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))))) {
            }
            var var_0 = all(select(arg_1, vec2<bool>(true, false), !all(vec2<bool>(arg_1.x, arg_1.x))));
            if (false) {
            }
            switch (_wgslsmith_div_i32(-(~60632i), u_input.a.x)) {
                case i32(-2147483648): {
                    let var_1 = !(!vec4<bool>(arg_1.x, arg_1.x, func_3(), arg_1.x));
                }
                case 53152i: {
                    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2000f, 559f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(355f, -1494f) + vec2<f32>(1000f, 1123f)) * _wgslsmith_div_vec2_f32(vec2<f32>(1687f, 2001f), vec2<f32>(776f, -1561f))) - vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1201f, -517f)), 2515f))));
                }
                case 2147483647i: {
                }
                case 0i: {
                }
                default: {
                    let var_1 = any(vec2<bool>(!(arg_1.x == false), true));
                }
            }
            var var_1 = ~4294967295u;
        }
    }
    if (true) {
        for (; arg_1.x; ) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            let var_0 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(-1086f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(903f)))));
            let var_1 = 1u;
            global0 = array<Struct_3, 18>();
            break;
        }
        if (!((true || any(vec3<bool>(false, arg_1.x, arg_1.x))) && (1u <= func_6(arg_0.c, Struct_1(vec2<i32>(27554i, -1i)), -1019f)))) {
        }
        let var_0 = abs(~max(0u, ~(~74914u)));
    }
    global0 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 983f, 970f), vec3<f32>(-1719f, 1097f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(175f, -259f, -182f))) * vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(502f, 1179f, 320f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, 230f, 331f)), arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2282f, -2217f, -1220f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-839f), _wgslsmith_f_op_f32(-1362f + -1008f), _wgslsmith_f_op_f32(-291f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1124f, -484f, 1037f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f) - var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    switch (-(~u_input.a.x)) {
        case 1i: {
            let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(163f, -1235f) - vec2<f32>(-1497f, -1317f))) - vec2<f32>(_wgslsmith_f_op_f32(-405f * 1016f), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(u_input.a.zy), -12650i, Struct_1(u_input.a.yx)), vec2<bool>(false, false), vec3<i32>(u_input.a.x, -1i, 15464i)))))), vec2<f32>(2841f, _wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, 1095f)), vec2<u32>(1u, 1u))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true)))));
            for (var var_1: i32; ; ) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                continue;
            }
            var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec2<bool>(true, false), Struct_2(var_0, vec2<u32>(117673u, 1u)))) * 1099f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(var_0.x - var_0.x)))));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                let var_0 = ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~func_6(Struct_1(u_input.a.zz), Struct_1(vec2<i32>(u_input.a.x, 7889i)), 1436f), ~59996u, ~22761u, 53225u));
                break;
            }
            var var_0 = false;
            global0 = array<Struct_3, 18>();
            switch (select(i32(-1i) * -abs(~2147483647i), ~1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(873f))))) >= _wgslsmith_f_op_f32(-555f))) {
                case 60429i: {
                    return;
                }
                default: {
                }
            }
            var_0 = true;
        }
    }
    global0 = array<Struct_3, 18>();
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        var var_0 = Struct_4(Struct_1(u_input.a.xz), 1000f);
        if (select(any(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))), false, true)) {
            var_0 = Struct_4(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, ~(-1i)), var_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2288f + _wgslsmith_f_op_f32(var_0.b - var_0.b)), var_0.b)) * _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + var_0.b))));
            continue;
        }
        var_0 = Struct_4(Struct_1(~firstLeadingBit(vec2<i32>(50744i, 0i))), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(func_1(Struct_3(var_0.a, 30718i, Struct_1(vec2<i32>(2147483647i, -1i))), vec2<bool>(true, false), -u_input.a)), all(vec3<bool>(false, false, true))))));
        continue;
    }
    let var_0 = ~39600i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, ~(~_wgslsmith_sub_i32(i32(-2147483648), var_0)), ~(-var_0 & _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), _wgslsmith_div_i32(0i, u_input.a.x << (~5948u % 32u))), select(var_0, -var_0, true), ~abs(~vec4<u32>(1u, 1u, 1u, 1u)), vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f))));
}