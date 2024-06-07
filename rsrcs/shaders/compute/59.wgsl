// {"0:0":[96,136,0,46,166,23,146,191,174,54,44,163,25,194,204,217,27,132,198,10,48,39,104,10,210,164,138,143,201,154,185,115,125,188,232,211,199,95,196,154,193,136,237,84,87,250,117,157]}
// Seed: 18373981112028679225

struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(288.0, -463.0, 1000.0, 2608.0);

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 14>;

var<private> global3: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(1000.0, 202.0), vec2<f32>(311.0, -577.0), vec2<f32>(1032.0, -968.0), vec2<f32>(-627.0, 1264.0), vec2<f32>(-1328.0, -695.0), vec2<f32>(709.0, 159.0), vec2<f32>(-1029.0, 367.0), vec2<f32>(215.0, -1823.0), vec2<f32>(-1000.0, 727.0), vec2<f32>(282.0, -1101.0), vec2<f32>(-1194.0, 917.0), vec2<f32>(-520.0, 299.0), vec2<f32>(313.0, 1000.0), vec2<f32>(1450.0, -739.0), vec2<f32>(1299.0, -976.0), vec2<f32>(-182.0, 1000.0), vec2<f32>(565.0, 272.0), vec2<f32>(2047.0, -761.0), vec2<f32>(-987.0, 587.0), vec2<f32>(-128.0, 602.0), vec2<f32>(380.0, 1839.0), vec2<f32>(-945.0, -1078.0), vec2<f32>(-1174.0, -435.0), vec2<f32>(1179.0, -1353.0), vec2<f32>(1000.0, 460.0), vec2<f32>(348.0, 159.0), vec2<f32>(-183.0, 458.0), vec2<f32>(-611.0, -1000.0), vec2<f32>(-1130.0, -772.0), vec2<f32>(-828.0, 349.0), vec2<f32>(-2327.0, 1439.0));

var<private> global4: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<i32>(-1, 0, -1), Struct_1(-409.0, 12012u), Struct_1(-1330.0, 1u), Struct_1(427.0, 0u)), Struct_2(vec3<i32>(0, 2147483647, -1), Struct_1(1793.0, 4294967295u), Struct_1(-1150.0, 4294967295u), Struct_1(2306.0, 1u)), Struct_2(vec3<i32>(-2147483648, 1, -21186), Struct_1(-1964.0, 4294967295u), Struct_1(-475.0, 17412u), Struct_1(320.0, 4294967295u)), Struct_2(vec3<i32>(-1, -12450, -45660), Struct_1(811.0, 0u), Struct_1(646.0, 54529u), Struct_1(-1820.0, 52758u)), Struct_2(vec3<i32>(-13152, 15344, -1), Struct_1(-1208.0, 40562u), Struct_1(-530.0, 78926u), Struct_1(1635.0, 26100u)), Struct_2(vec3<i32>(-1, 17105, 1), Struct_1(215.0, 19368u), Struct_1(421.0, 1u), Struct_1(-425.0, 4294967295u)), Struct_2(vec3<i32>(-4841, 0, 2147483647), Struct_1(-896.0, 0u), Struct_1(240.0, 98785u), Struct_1(459.0, 1u)), Struct_2(vec3<i32>(44347, 26492, -12816), Struct_1(-1883.0, 30952u), Struct_1(343.0, 0u), Struct_1(798.0, 28946u)), Struct_2(vec3<i32>(-3320, 28275, 26070), Struct_1(-183.0, 0u), Struct_1(635.0, 0u), Struct_1(-834.0, 41030u)));

var<private> LOOP_COUNTERS: array<u32, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> bool {
    global4 = array<Struct_2, 9>();
    var var_0 = Struct_1(global0.x, 35324u);
    global3 = array<vec2<f32>, 31>();
    global1 = ~4294967295u;
    global4 = array<Struct_2, 9>();
    return false;
}

fn func_6() -> i32 {
    for (var var_0 = -85483; all(select(!(!(!vec4<bool>(false, false, true, false))), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(!false, global0.x < global0.x, true, !true), !false), !select(!vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, false, false)))); ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    global4 = array<Struct_2, 9>();
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
    }
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 552.0), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-625.0)), 312.0, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(327.0 - global0.x)), _wgslsmith_f_op_f32(exp2(global0.x)), any(!vec3<bool>(false, false, true)))))));
    if (!(~_wgslsmith_mod_i32(min(1, u_input.d), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], vec4<i32>(43313, -49338, u_input.c, u_input.c))) <= -21255)) {
        global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0, var_0) - _wgslsmith_f_op_vec4_f32(ceil(var_0)));
        for (var var_1 = -2147483648; var_1 == 20088; var_1 += 1) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            break;
        }
    }
    return -u_input.d;
}

fn func_5() -> u32 {
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    switch (firstTrailingBit(func_6())) {
        case -1: {
            global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1486.0, 511.0, global0.x, 710.0))), vec4<f32>(-1710.0, 556.0, 1000.0, global0.x)))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0) * _wgslsmith_div_f32(-226.0, global0.x)), global0.x), -1000.0, global0.x, 416.0));
            var var_0 = vec2<f32>(-594.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-307.0)))))));
            let var_1 = firstLeadingBit(~vec2<u32>(~4294967295u, u_input.b.x)) >> (~min(u_input.b.zy, u_input.b.zz) % vec2<u32>(32u));
            if (!any(select(select(vec3<bool>(true, false, true), !vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !true), all(!vec3<bool>(false, true, false))))) {
                global1 = ~4294967295u;
                let var_2 = ~(-(~(u_input.a ^ u_input.e)));
                let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000.0 + global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -430.0), _wgslsmith_f_op_f32(trunc(658.0)))) * global0.x))));
                let var_4 = ~_wgslsmith_add_vec3_u32(countOneBits(~countOneBits(u_input.b.zwz)), ~firstLeadingBit(u_input.b.zzx | u_input.b.zzy));
                let var_5 = Struct_2(firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(-16261, -7232, 4541), vec3<i32>(-1, -49008, var_2)) & vec3<i32>(max(var_2, 46544), ~u_input.d, min(2501, -64456))), Struct_1(_wgslsmith_f_op_f32(-var_0.x), ~1u), Struct_1(504.0, 54414u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + global0.x), var_0.x), abs(4294967295u)));
            }
        }
        case -2147483648: {
            switch (u_input.c) {
                case 2147483647: {
                    let var_0 = u_input.b.wx;
                }
                case -18920: {
                    var var_0 = global4[_wgslsmith_index_u32(1u, 9u)];
                    var var_1 = all(select(!(!vec2<bool>(true, true)), vec2<bool>(!(!false), any(vec4<bool>(false, true, true, false))), !(!vec2<bool>(true, false))));
                    let var_2 = vec3<i32>(-43310 << (_wgslsmith_dot_vec3_u32(u_input.b.ywy, ~(~u_input.b.xyw)) % 32u), -2147483648, _wgslsmith_div_i32(var_0.a.x, abs(select(countOneBits(u_input.e), u_input.e, !false))));
                }
                case -16004: {
                    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(firstTrailingBit(u_input.b.x) & u_input.b.x), u_input.b.x, u_input.b.x), 9u)];
                    global2 = array<vec4<i32>, 14>();
                    let var_1 = var_0.b;
                    var var_2 = ~vec3<u32>(u_input.b.x, 4294967295u, 2765u);
                    let var_3 = u_input.a;
                }
                default: {
                    var var_0 = Struct_1(1000.0, ~_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 28872u, 0u), firstLeadingBit(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b.x)))));
                    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~(min(11580u, _wgslsmith_mod_u32(47479u, u_input.b.x)) ^ var_0.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(countOneBits(56745u), ~3897u), firstTrailingBit(~select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<bool>(false, false))))), 9u)];
                    let var_2 = var_1.a;
                }
            }
            for (var var_0: i32; var_0 != 10648; global2 = array<vec4<i32>, 14>()) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            }
        }
        case 2147483647: {
        }
        case -5560: {
        }
        default: {
            if (false) {
                global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000.0, global0.x, 855.0, -194.0) * vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, -869.0, global0.x, -1597.0)) - vec4<f32>(global0.x, global0.x, global0.x, global0.x)), !any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(104.0, global0.x, 953.0, -917.0), vec4<f32>(global0.x, 1636.0, 2001.0, 1000.0)), vec4<f32>(1147.0, 1754.0, global0.x, 807.0))))));
                let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.x)))));
                var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(673.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445.0))) + _wgslsmith_f_op_f32(-global0.x)), u_input.b.x);
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_0 = Struct_1(global0.x, ~u_input.b.x);
                let var_1 = Struct_2(vec3<i32>(-(u_input.c & _wgslsmith_sub_i32(-1, -67430)), _wgslsmith_mod_i32(-7302, firstTrailingBit(-82151) ^ (0 << (4294967295u % 32u))), ~reverseBits(1) ^ u_input.d), Struct_1(var_0.a, 16342u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(842.0)) + _wgslsmith_f_op_f32(-var_0.a))), 156490u), Struct_1(1000.0, var_0.b));
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_0 = vec4<bool>(all(select(!(!vec4<bool>(false, false, true, false)), !vec4<bool>(false, false, true, true), false)), firstLeadingBit(u_input.d) >= (~u_input.c & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.c), vec2<i32>(u_input.d, -21966))), !any(vec4<bool>(false, true, true, false)) && true, func_1(u_input.b.zyz, ~select(vec2<u32>(8321u, u_input.b.x), u_input.b.zw, true | true)));
                break;
            }
        }
    }
    return 43130u;
}

fn func_4() -> Struct_2 {
    let var_0 = Struct_1(-349.0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(29297u, 20627u, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 20308u, 22435u, u_input.b.x), u_input.b)) ^ 0u);
    if (!(select(max(17449u, var_0.b) >> (u_input.b.x % 32u), func_5(), (9804u >> (52764u % 32u)) <= abs(u_input.b.x)) >= _wgslsmith_sub_u32(~_wgslsmith_mod_u32(0u, var_0.b), countOneBits(38298u)))) {
        if (true) {
            var var_1 = min(max(vec3<i32>(select(-u_input.d, countOneBits(u_input.e), false), -45045, -(-1 << (0u % 32u))), select(_wgslsmith_add_vec3_i32(vec3<i32>(-43895, 41002, 0), vec3<i32>(u_input.a, u_input.a, -1)) << (~u_input.b.xyz % vec3<u32>(32u)), select(vec3<i32>(1, u_input.e, u_input.e) << (vec3<u32>(32487u, 7430u, 1u) % vec3<u32>(32u)), vec3<i32>(u_input.c, u_input.d, u_input.e), !false), select(vec3<bool>(true, true, true), !vec3<bool>(true, false, false), !true))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -14597), vec2<i32>(59706, u_input.a)) >> (1u % 32u), -20267, u_input.d), min(select(-vec3<i32>(u_input.c, 11398, 36397), ~vec3<i32>(0, -30355, 1), !vec3<bool>(true, false, true)), vec3<i32>(~(-30955), ~1, _wgslsmith_div_i32(u_input.a, u_input.e))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e, -637, -11870), -(vec3<i32>(-2147483648, u_input.d, u_input.d) >> (vec3<u32>(10452u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), vec3<i32>(u_input.e, _wgslsmith_div_i32(-29334, u_input.c), 33164))));
            global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1543.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))), 162.0, _wgslsmith_f_op_f32(sign(-269.0))) - vec4<f32>(-728.0, _wgslsmith_f_op_f32(select(-712.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))))), 147.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))))));
            var var_2 = ~(~(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b, u_input.b.x), _wgslsmith_div_u32(36924u, var_0.b)) >> (~1u % 32u)));
        }
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            var var_1 = abs(~(-_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d, 26845), vec2<i32>(u_input.c, -15973))));
            break;
        }
    }
    let var_1 = global4[_wgslsmith_index_u32(func_5() << (_wgslsmith_dot_vec2_u32(vec2<u32>(min(19661u, var_0.b) | var_0.b, (21857u << (var_0.b % 32u)) | 1u), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(0u, u_input.b.x)))) % 32u), 9u)];
    var var_2 = Struct_2(countOneBits(-var_1.a), var_1.d, var_1.b, Struct_1(var_0.a, 18039u));
    if (!(!true)) {
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            break;
        }
    }
    return global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.c.b, 48970u), var_0.b), 9u)];
}

fn func_3() -> i32 {
    for (var var_0 = 9401; ; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        continue;
    }
    global4 = array<Struct_2, 9>();
    let var_0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1.0) * -713.0), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(916.0 + _wgslsmith_f_op_f32(global0.x * -586.0))))));
    switch (u_input.c) {
        case -1: {
            if (!(!(!true || (false & true)) | !all(!vec4<bool>(false, true, true, true)))) {
                var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-669.0 - -427.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(250.0, -1336.0)) - _wgslsmith_f_op_f32(var_0.x - 352.0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), 1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-738.0 + 316.0))))), ~(~u_input.b.x));
                global2 = array<vec4<i32>, 14>();
                let var_2 = func_4();
                return -(0 << (u_input.b.x % 32u));
            }
            for (var var_1 = -159; ; var_1 -= 1) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_2 = func_4().c;
                global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)))));
                let var_3 = 10345;
            }
            if (any(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))))) {
                let var_1 = Struct_1(global0.x, u_input.b.x);
                let var_2 = var_1;
                global3 = array<vec2<f32>, 31>();
            }
            for (var var_1 = 43387; any(vec4<bool>(_wgslsmith_f_op_f32(abs(global0.x)) > global0.x, !(_wgslsmith_f_op_f32(max(global0.x, global0.x)) <= var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - 249.0), global0.x)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.x)), global0.x)), true)); var_1 = u_input.d) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                break;
            }
            global1 = _wgslsmith_mult_u32(u_input.b.x << (_wgslsmith_div_u32(~func_4().b.b, u_input.b.x) % 32u), ~(~_wgslsmith_div_u32(u_input.b.x, 4294967295u)));
        }
        case -48017: {
        }
        case 11751: {
            var var_1 = 2147483647;
        }
        case 0: {
            for (var var_1 = -911; -961.0 < -182.0; var_1 += 1) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                break;
            }
            var var_1 = !false;
            var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, _wgslsmith_div_f32(-489.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-765.0)), _wgslsmith_div_f32(1257.0, 123.0)))), _wgslsmith_f_op_f32(abs(global0.x)), -1000.0), var_0, func_1(vec3<u32>(~u_input.b.x, 123916u, u_input.b.x), u_input.b.yw) & all(select(!vec2<bool>(false, false), vec2<bool>(false, true), !vec2<bool>(true, true)))));
            var var_3 = !any(!(!vec4<bool>(true, false, true, false)));
        }
        default: {
            let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1631.0 + -1110.0) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -960.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1289.0, var_0.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_f32(step(-337.0, -535.0)))));
        }
    }
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.xy - var_0.wy);
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(55916 << (17598u % 32u), u_input.d, ~u_input.e)), -vec3<i32>(_wgslsmith_clamp_i32(u_input.c, -1991, 1), u_input.d | u_input.a, min(u_input.c, 0))), max(_wgslsmith_sub_i32(4803, u_input.c) & (i32(-1) * -4068), -u_input.d));
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = !vec2<bool>(!(arg_0 && (arg_1 < -906.0)), reverseBits(~(-12077)) < _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, u_input.d), vec2<i32>(1, 16957)));
    for (var var_1: i32; ; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
    }
    for (var var_1 = -1; !var_0.x | arg_0; var_1 += 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        var_1 = -2147483648;
        switch (-u_input.c) {
            case -1: {
            }
            case 2103: {
                var var_2 = _wgslsmith_f_op_vec3_f32(global0.xyw + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-123.0, global0.x)) * -1240.0))), -1494.0, global0.x));
            }
            default: {
                break;
            }
        }
        switch (u_input.c | func_3()) {
            case 1: {
                let var_2 = ~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(119262u, u_input.b.x, ~26281u), 0u);
                let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1372.0, arg_1, arg_1, 129.0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 359.0)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, 371.0, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 145.0, 2015.0, -515.0) * vec4<f32>(1700.0, arg_1, -177.0, 495.0)))))));
                let var_4 = func_4();
                global4 = array<Struct_2, 9>();
                var var_5 = vec4<u32>(5755u, u_input.b.x, ~abs(~u_input.b.x), ~var_2) >> (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10015u, 47270u), u_input.b.yx) << (~1u % 32u), u_input.b.x & _wgslsmith_sub_u32(var_2, 1u)), var_2, _wgslsmith_add_u32(_wgslsmith_clamp_u32(max(72230u, u_input.b.x), var_4.b.b, _wgslsmith_div_u32(19008u, 0u)), select(~var_2, abs(var_4.b.b), var_0.x)), _wgslsmith_sub_u32(func_5(), ~_wgslsmith_div_u32(0u, var_4.c.b))) % vec4<u32>(32u));
            }
            case -1: {
            }
            case 50570: {
                var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-447.0 * -1768.0))), u_input.b.x);
                break;
            }
            case 0: {
                break;
            }
            default: {
                break;
            }
        }
        switch (func_3()) {
            case -2147483648: {
                global2 = array<vec4<i32>, 14>();
                var_0 = !(!select(select(select(vec2<bool>(arg_0, var_0.x), vec2<bool>(arg_0, true), vec2<bool>(false, false)), vec2<bool>(var_0.x, true), select(vec2<bool>(false, false), vec2<bool>(arg_0, true), true)), !(!vec2<bool>(var_0.x, false)), vec2<bool>(arg_0, true)));
                break;
            }
            default: {
            }
        }
    }
    let var_1 = true;
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var_0 = select(select(!vec2<bool>(false || false, !var_0.x), !vec2<bool>(arg_0, !var_0.x), vec2<bool>(true, !true & arg_0)), select(vec2<bool>(true, arg_0), !vec2<bool>(!var_1, false), select(select(!vec2<bool>(false, false), !vec2<bool>(false, var_1), !vec2<bool>(false, false)), !(!vec2<bool>(var_0.x, var_1)), select(vec2<bool>(false, false), !vec2<bool>(var_0.x, true), 0 <= u_input.e))), var_0.x);
        let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, 1000.0)), 847.0), ~u_input.b.x);
    }
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-122.0)), -1239.0), -100.0)) + -1339.0), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    if (func_1(u_input.b.wwx, u_input.b.yx) | !(!true)) {
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
        for (var var_0 = 1; select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921.0 - global0.x)) + global0.x) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-2245.0)))), false); var_0 += 1) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            continue;
        }
    }
    for (var var_0 = -1; var_0 > 11190; var_0 -= 1) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        return;
    }
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        global2 = array<vec4<i32>, 14>();
        break;
    }
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -840.0, -1697.0) - vec4<f32>(global0.x, -1000.0, global0.x, global0.x)) - vec4<f32>(220.0, -550.0, 916.0, global0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 546.0, 1000.0, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-516.0, -324.0, 1991.0, global0.x) * vec4<f32>(1000.0, -1323.0, -620.0, global0.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(306.0, global0.x, -1000.0, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -904.0, global0.x, global0.x) + vec4<f32>(global0.x, 2125.0, global0.x, -498.0))) + vec4<f32>(_wgslsmith_f_op_f32(-1151.0), global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(-449.0))))));
    var var_0 = _wgslsmith_f_op_f32(func_2(!(_wgslsmith_f_op_f32(f32(-1.0) * -407.0) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-global0.x)));
    for (var var_1: i32; var_1 <= 0; var_1 += 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        switch (u_input.a) {
            case -10322: {
                global2 = array<vec4<i32>, 14>();
                var var_2 = true;
                global1 = u_input.b.x ^ ~(u_input.b.x >> (104066u % 32u));
            }
            default: {
                break;
            }
        }
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            let var_2 = ~0;
            var var_3 = false;
        }
        global4 = array<Struct_2, 9>();
    }
    let var_1 = Struct_1(global0.x, 1u);
    if (true) {
        let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758.0 - 506.0) - -158.0)))));
    }
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        global3 = array<vec2<f32>, 31>();
        var var_2 = func_4().d;
        var var_3 = vec3<u32>(_wgslsmith_div_u32(0u, ((86151u & 4294967295u) ^ 87276u) | ~(~4294967295u)), 3880u, u_input.b.x);
    }
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_div_f32(global0.x, -766.0), _wgslsmith_f_op_f32(ceil(var_1.a)));
}

