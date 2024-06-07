// {"0:0":[234,79,52,203,156,100,198,215,184,53,63,233,247,228,185,45,149,186,52,50,83,190,147,49]}
// Seed: 3347506573721477610

struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, true, true)), -1, vec4<f32>(-1660.0, 3121.0, 555.0, 250.0)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, false, true)), 21569, vec4<f32>(-1171.0, 861.0, -202.0, 2250.0)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, true, false)), 1, vec4<f32>(1100.0, -473.0, 676.0, -374.0)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, true, true)), -1, vec4<f32>(518.0, -649.0, 160.0, -1000.0)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, true, false)), -75806, vec4<f32>(262.0, 2533.0, 1401.0, 630.0)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, true)), 22325, vec4<f32>(-418.0, 218.0, 929.0, 923.0)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, true, false)), -1, vec4<f32>(657.0, 648.0, -448.0, 1261.0)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, false, false)), -60513, vec4<f32>(-393.0, -1205.0, -1000.0, 126.0)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, false, false)), -40206, vec4<f32>(-1899.0, -1000.0, 722.0, -820.0)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true)), 0, vec4<f32>(852.0, -414.0, 1140.0, 445.0)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, true)), 53682, vec4<f32>(1657.0, 203.0, -1295.0, -934.0)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, false, true)), -1, vec4<f32>(196.0, -1255.0, -1201.0, -2736.0)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, false, true)), -6869, vec4<f32>(1000.0, -100.0, 169.0, -755.0)));

var<private> global1: f32 = 530.0;

var<private> global2: array<vec3<bool>, 18>;

var<private> global3: f32 = -703.0;

var<private> global4: i32 = 31322;

var<private> LOOP_COUNTERS: array<u32, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_6(arg_0: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec2_u32(reverseBits(~min(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 1u)) >> ((vec2<u32>(arg_0, 75821u) | (vec2<u32>(7416u, 72476u) | vec2<u32>(arg_0, arg_0))) % vec2<u32>(32u))), max(min(countOneBits(vec2<u32>(43367u, arg_0)), ~vec2<u32>(1u, arg_0)), ~_wgslsmith_add_vec2_u32(vec2<u32>(23075u, arg_0), vec2<u32>(1u, 1u))) | vec2<u32>(~60444u, _wgslsmith_add_u32(arg_0, ~34743u)));
    global4 = u_input.b.x;
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        let var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~select(arg_0, 1u, false), 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<u32>(33546u, 76596u, arg_0, arg_0)), ~arg_0)) ^ firstLeadingBit(~(1u << (0u % 32u)))), 13u)];
    }
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.c.x, 39079), u_input.b.x);
    for (var var_2: i32; all(select(vec4<bool>(!(1911.0 > -507.0), !(4294967295u == var_0.x), select(false, !true, false), !(!false)), vec4<bool>(select(var_0.x, var_0.x, false) > max(var_0.x, var_0.x), true, true, all(vec3<bool>(false, true, false))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, true), !vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)), !(!vec4<bool>(true, true, true, false))))); var_2 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        global4 = abs(1) & _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1, u_input.a.x, -2792, u_input.a.x) >> ((vec4<u32>(var_0.x, 0u, var_0.x, arg_0) | vec4<u32>(18331u, arg_0, 51771u, 34136u)) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, i32(-1) * -25174, u_input.a.x, countOneBits(-6578))), vec4<i32>(~(~55925), ~_wgslsmith_div_i32(u_input.b.x, -1), u_input.a.x, -28698));
        var_1 = u_input.c.x;
    }
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(229.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1123.0), _wgslsmith_f_op_f32(min(278.0, -1019.0))), all(vec4<bool>(true, false, false, true)))), 866.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-528.0) + _wgslsmith_f_op_f32(f32(-1.0) * -677.0)) - 1013.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-890.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1312.0))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -611.0))), 257.0)));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(arg_0.a.a, select(!select(vec4<bool>(arg_0.a.a.x, arg_0.a.b.x, arg_0.a.a.x, false), arg_0.a.b, arg_0.a.b.x), !select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.b.x, arg_0.a.a.x), arg_0.a.b, vec4<bool>(false, false, arg_0.a.a.x, true)), arg_0.a.b)), i32(-1) * -arg_1, arg_0.c);
    if (!any(select(!vec4<bool>(false, arg_0.a.a.x, var_0.a.b.x, var_0.a.b.x), var_0.a.b, true))) {
        if ((1u == 32460u) && (var_0.a.a.x || (~_wgslsmith_mod_u32(4294967295u, 4294967295u) != 0u))) {
            let var_1 = _wgslsmith_div_f32(arg_0.c.x, 1152.0);
            global4 = ~(~u_input.c.x);
            let var_2 = arg_0;
            let var_3 = _wgslsmith_f_op_vec3_f32(func_6(~(~32084u)));
            let var_4 = select(!vec2<bool>(false, -637.0 > -1740.0), select(vec2<bool>(arg_0.a.b.x, arg_0.a.a.x), var_2.a.b.wx, vec2<bool>(any(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(10692u, 4294967295u), 18u)]), var_0.a.b.x)), any(vec3<bool>(var_2.a.b.x, var_0.a.b.x, arg_0.a.b.x || false)));
        }
        global2 = array<vec3<bool>, 18>();
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            let var_1 = Struct_1(!select(select(vec2<bool>(arg_0.a.b.x, arg_0.a.a.x), vec2<bool>(true, false), false), var_0.a.b.xy, !false), !arg_0.a.b);
        }
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        }
    }
    var var_1 = var_0.c.x;
    switch (countOneBits(1)) {
        case 10404: {
        }
        default: {
            let var_2 = min(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(85121u, 45597u, 25357u, 32216u)), vec4<u32>(23407u, abs(4294967295u), 0u, reverseBits(4294967295u)), vec4<u32>(49521u, 1u | 0u, 9518u & 17553u, 1u)), min(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 63128u, 26978u, 137084u) & vec4<u32>(98936u, 15179u, 1u, 3214u), max(vec4<u32>(17202u, 12948u, 76477u, 39148u), vec4<u32>(59648u, 90313u, 1u, 13345u))), ~vec4<u32>(4294967295u, 3502u, 0u, 0u))) << (abs(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 28699u, 4294967295u), vec4<u32>(1u, 26235u, 36094u, 39254u)) ^ vec4<u32>(449u, 1u, 45357u, 4294967295u))) % vec4<u32>(32u));
            switch (_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-875, _wgslsmith_mod_i32(firstTrailingBit(1), u_input.a.x), -(var_0.b ^ -34577), arg_1), abs(vec4<i32>(_wgslsmith_mod_i32(19238, var_0.b), -48428, arg_0.b, arg_1))), countOneBits(reverseBits(~(u_input.b.x >> (var_2.x % 32u)))))) {
                case 2147483647: {
                    var_1 = 404.0;
                    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)));
                    let var_3 = ~countOneBits(select(~(vec4<u32>(15409u, 1u, 0u, var_2.x) >> (vec4<u32>(var_2.x, var_2.x, var_2.x, 1u) % vec4<u32>(32u))), reverseBits(~var_2), vec4<bool>(any(vec2<bool>(var_0.a.b.x, true)), arg_0.a.b.x, var_2.x <= 0u, true)));
                    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c.x, -1178.0), _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250.0 * arg_0.c.x) - -1538.0))))), _wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814.0)), _wgslsmith_f_op_f32(-1966.0))), arg_0.c.x);
                    var var_5 = var_0.a;
                }
                case -13516: {
                }
                case 35819: {
                    global2 = array<vec3<bool>, 18>();
                    var var_3 = Struct_1(arg_0.a.a, !var_0.a.b);
                }
                default: {
                }
            }
            let var_3 = _wgslsmith_clamp_u32(firstLeadingBit(reverseBits(~47479u)), 2102u, var_2.x);
            for (var var_4 = -1; var_3 >= _wgslsmith_sub_u32(~var_3, ~(10556u ^ 4294967295u) ^ select(~20386u, ~0u, !true)); global3 = var_0.c.x) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_5 = ~vec3<u32>(~1u << (abs(var_2.x) % 32u), var_3, var_3) ^ countOneBits(vec3<u32>(countOneBits(~17477u), abs(5496u), _wgslsmith_dot_vec2_u32(~var_2.wz, ~var_2.ww)));
                var var_6 = arg_1;
                var var_7 = select(var_0.a.b.wy, var_0.a.a, var_0.a.a.x);
            }
        }
    }
    var var_2 = arg_0.a.b.x;
    return reverseBits(select(~max(vec2<u32>(107632u, 336u), vec2<u32>(46031u, 70696u)), ~(firstTrailingBit(vec2<u32>(39384u, 37727u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(45910u, 0u))), vec2<bool>(true, arg_0.b == _wgslsmith_div_i32(38458, 14459))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec2<i32> {
    let var_0 = _wgslsmith_add_vec2_u32(~(~func_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(20927u, 36125u), 13u)], u_input.b.x & -2147483648)), func_5(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(39772u & abs(4294967295u), 31994u), 13u)], u_input.c.x | firstLeadingBit(_wgslsmith_div_i32(1, u_input.b.x))));
    global0 = array<Struct_2, 13>();
    let var_1 = !select(select(vec3<bool>(-2147483648 > u_input.c.x, !true, false != false), select(!vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(global2[_wgslsmith_index_u32(var_0.x, 18u)], global2[_wgslsmith_index_u32(1u | 8101u, 18u)], vec3<bool>(false, true, true))), select(vec3<bool>(u_input.b.x <= u_input.b.x, false | false, !false), !select(global2[_wgslsmith_index_u32(var_0.x, 18u)], vec3<bool>(true, false, false), true), true), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), !vec4<bool>(false, false, false, true), false)));
    switch (u_input.a.x) {
        case -1: {
            var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-223.0, _wgslsmith_f_op_vec3_f32(func_6(var_0.x)).x, -238.0) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(var_0.x)) - vec3<f32>(arg_1.x, -178.0, 1347.0)))) - _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(floor(arg_1.wwz))));
        }
        case 2147483647: {
        }
        case 1: {
            let var_2 = Struct_2(Struct_1(select(select(!var_1.yy, !vec2<bool>(var_1.x, var_1.x), true), !select(var_1.xy, vec2<bool>(false, true), var_1.x), !var_1.x), vec4<bool>(all(vec3<bool>(var_1.x, true, var_1.x)), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(43315, -15284)) != u_input.c.x, !true, select(all(var_1.xx), true, !var_1.x))), select(u_input.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647, 41484, u_input.a.x, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(1, 0, 46232, u_input.a.x), vec4<i32>(-10274, -1, u_input.a.x, -35839))), all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, false), var_1.x))) ^ u_input.b.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-301.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x), -1273.0, -926.0), _wgslsmith_f_op_vec4_f32(-arg_1), vec4<bool>(true, !(false || false), false, any(select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x, true, false)))))));
        }
        case 32013: {
        }
        default: {
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
            if (false) {
                return vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, -36518), ~u_input.a.x), -78210 | u_input.b.x);
            }
            global4 = -48970 >> (1u % 32u);
            let var_2 = Struct_1(!vec2<bool>((4294967295u ^ var_0.x) < var_0.x, 1u >= (var_0.x | 4294967295u)), !vec4<bool>(all(!var_1.xx), any(var_1.yy), _wgslsmith_f_op_f32(-156.0) <= _wgslsmith_div_f32(-183.0, arg_1.x), 9431u < abs(2054u)));
        }
    }
    var var_2 = Struct_2(Struct_1(vec2<bool>(false, false), select(vec4<bool>(!false, var_1.x, var_1.x, any(var_1)), vec4<bool>(any(vec2<bool>(true, true)), !false, select(var_1.x, var_1.x, var_1.x), false), var_1.x)), u_input.c.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(arg_0.x, 740.0, arg_1.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(select(arg_1, vec4<f32>(arg_1.x, 474.0, 1000.0, arg_1.x), true)))))));
    return vec2<i32>(var_2.b, -33115);
}

fn func_3(arg_0: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_div_u32(~(~49000u), ~4294967295u) >> (_wgslsmith_mult_u32(~1u, _wgslsmith_clamp_u32(~11622u, 31970u, _wgslsmith_mod_u32(~1u, 22301u))) % 32u);
    global2 = array<vec3<bool>, 18>();
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1532.0, -1353.0, -1110.0), vec3<f32>(394.0, -3050.0, 1000.0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(449.0, 931.0, -284.0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-407.0, -260.0, -550.0) - vec3<f32>(-463.0, 1039.0, 1103.0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-731.0, 1547.0, 105.0, -486.0) * vec4<f32>(541.0, -2517.0, -1245.0, 683.0))))) << (select(vec2<u32>(abs(20567u), max(var_0, 1u)), ~vec2<u32>(var_0, var_0) ^ min(~vec2<u32>(var_0, var_0), countOneBits(vec2<u32>(4294967295u, 4294967295u))), select(!vec2<bool>(true, false), vec2<bool>(false || false, all(vec2<bool>(false, true))), arg_0 <= (arg_0 | 0))) % vec2<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    if (~(-(i32(-1) * -2147483648)) >= firstTrailingBit(u_input.c.x)) {
        let var_0 = ~arg_0;
        let var_1 = ~func_3(select(-10812 >> ((4118u ^ arg_0) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, u_input.b.x) >> (vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)), ~vec3<i32>(10792, 2147483647, u_input.c.x)), arg_1));
    }
    return Struct_1(!(!(!vec2<bool>(false, arg_1))), vec4<bool>(arg_1 & all(select(vec4<bool>(false, true, false, arg_1), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, false, false, arg_1))), true, true, false || false));
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(22573u, 13u)];
    global0 = array<Struct_2, 13>();
    var var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(-var_0.c.x) <= 978.0);
    switch (u_input.b.x) {
        default: {
        }
    }
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.c.zw)));
    return _wgslsmith_f_op_f32(min(1803.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * -747.0))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-512.0), _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x)))) * arg_0.c.x), _wgslsmith_f_op_f32(604.0 + _wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.a.a.x));
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(40943u, 4294967295u, 9931u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 1u, arg_1.x)), ~vec4<u32>(arg_1.x, 1u, arg_1.x, arg_1.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x), vec4<u32>(39900u, max(arg_1.x, arg_1.x), 143u | 71571u, ~1u))), select(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(arg_1.x, 15563u, 43854u), 0u >> (arg_1.x % 32u)), min(arg_1.x, arg_1.x) >> (~arg_1.x % 32u), false)), 13u)];
    var var_1 = _wgslsmith_f_op_f32(-455.0 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -863.0), _wgslsmith_f_op_f32(-var_0.c.x))), -614.0)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, var_0.c.x));
    var var_3 = !var_0.a.a;
    return _wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(func_7(!false, Struct_1(arg_2.b.wz, !arg_2.b), func_2(arg_1.x | 1u, arg_0.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(11484u, 13u)];
    for (; ; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_1 = var_0.a;
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            global0 = array<Struct_2, 13>();
            continue;
        }
    }
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -1308.0))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(func_1(Struct_2(var_0.a, var_0.b, var_0.c), vec3<u32>(4294967295u, 1u, 0u), Struct_1(var_0.a.a, var_0.a.b)))) * _wgslsmith_div_f32(-120.0, _wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x)))))));
    let var_1 = false;
    var var_2 = _wgslsmith_div_vec4_u32(~vec4<u32>(1u, _wgslsmith_add_u32(13403u, 6214u) >> (2409u % 32u), abs(_wgslsmith_div_u32(0u, 0u)), 0u), _wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 7635u), 0u, 4294967295u, ~26594u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 91683u, 8813u, 16798u), vec4<u32>(4294967295u, 50085u, 0u, 1u)) >> (vec4<u32>(35755u, 1u, 1u, 4294967295u) % vec4<u32>(32u)), var_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(39268u, 4294967295u, 0u, 0u) & vec4<u32>(107988u, 71853u, 90485u, 46420u), vec4<u32>(24642u, 47778u, 4294967295u, 59870u), ~vec4<u32>(11459u, 3941u, 0u, 1u)) | vec4<u32>(114960u, abs(9544u), 16460u, _wgslsmith_mod_u32(15243u, 0u))));
    for (var var_3 = 40780; ; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        var var_4 = var_0.c.x;
        var var_5 = global0[_wgslsmith_index_u32(var_2.x, 13u)];
        break;
    }
    for (var var_3 = -9596; ; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)), var_0.c.x) * var_0.c.zy)));
    }
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1, ~firstLeadingBit(-2147483648), var_0.b, -2147483648), vec4<i32>(_wgslsmith_clamp_i32(-2147483648, 2147483647, ~(-46678)), var_0.b, -var_0.b, select(-1, (i32(-1) * -1) | var_0.b, var_0.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, 1u);
}

