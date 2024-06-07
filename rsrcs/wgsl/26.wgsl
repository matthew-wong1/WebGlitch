// {"0:0":[25,1,33,151,125,203,187,188]}
// Seed: 644180263433536015

struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-135.0, -1000.0, -372.0, -1108.0), vec4<f32>(-1103.0, 1691.0, 1000.0, -436.0), vec4<f32>(1254.0, -718.0, -325.0, -1379.0), vec4<f32>(-755.0, -1215.0, 1508.0, -408.0), vec4<f32>(1020.0, 255.0, -736.0, -190.0));

var<private> global1: array<vec3<bool>, 28>;

var<private> global2: array<bool, 26>;

var<private> global3: array<vec2<bool>, 2>;

var<private> global4: array<u32, 25> = array<u32, 25>(0u, 81188u, 76239u, 19459u, 23514u, 4294967295u, 10544u, 19184u, 31157u, 4294967295u, 4294967295u, 0u, 17004u, 0u, 4294967295u, 1u, 27007u, 40386u, 0u, 2233u, 46177u, 14774u, 105122u, 47839u, 1u);

var<private> LOOP_COUNTERS: array<u32, 11>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn func_6(arg_0: Struct_1) -> bool {
    if (all(select(vec4<bool>(!global2[_wgslsmith_index_u32(69632u, 26u)], all(vec4<bool>(global2[_wgslsmith_index_u32(7714u, 26u)], false, false, false)), global2[_wgslsmith_index_u32(34487u, 26u)], global2[_wgslsmith_index_u32(u_input.b | 4294967295u, 26u)]), !vec4<bool>(global2[_wgslsmith_index_u32(80426u, 26u)], true, global2[_wgslsmith_index_u32(arg_0.a.x, 26u)], global2[_wgslsmith_index_u32(99170u, 26u)]), all(global3[_wgslsmith_index_u32(arg_0.a.x, 2u)]))) != select(true, select(_wgslsmith_f_op_f32(max(arg_0.b, 540.0)) >= -1000.0, global2[_wgslsmith_index_u32(~33501u & _wgslsmith_div_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], global4[_wgslsmith_index_u32(0u, 25u)]), 26u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, global4[_wgslsmith_index_u32(4294967295u, 25u)]), 28531u), 26u)]), global2[_wgslsmith_index_u32(58217u, 26u)])) {
        let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(sign(arg_0.b)))))));
        for (var var_1 = 20558; ; var_1 += 1) {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            var var_2 = var_0.xy;
            break;
        }
        switch (47552) {
            case -1: {
                var var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, ~arg_0.a.x, 24989u, reverseBits(u_input.a)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 25u)], 25u)], 46431u, global4[_wgslsmith_index_u32(arg_0.a.x, 25u)]), vec4<u32>(arg_0.a.x, arg_0.d.x, 4294967295u, u_input.a)))) << (_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(16989u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13071u, 25u)], 25u)], 25u)], u_input.a, arg_0.a.x))), vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(24575u, 25u)], global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(101995u, global4[_wgslsmith_index_u32(u_input.b, 25u)]), 25u)], global4[_wgslsmith_index_u32(min(firstTrailingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10481u, 25u)], 25u)]), global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(48205u, 25u)], 25u)], 25u)], 25u)]), 25u)])) % vec4<u32>(32u));
                global0 = array<vec4<f32>, 5>();
                global2 = array<bool, 26>();
            }
            case -2147483648: {
                global3 = array<vec2<bool>, 2>();
                let var_1 = -_wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(49318, 1), arg_0.c, -18302), select(vec3<i32>(abs(-65804), -2147483647, max(2888, -50834)), vec3<i32>(arg_0.c, arg_0.c, -2147483648), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(4294967295u), 1u ^ global4[_wgslsmith_index_u32(4294967295u, 25u)]), 26u)]));
                global4 = array<u32, 25>();
                global3 = array<vec2<bool>, 2>();
                let var_2 = arg_0;
            }
            default: {
            }
        }
        for (; ~_wgslsmith_mod_i32(arg_0.c, -2147483648) >= ((arg_0.c & -abs(arg_0.c)) >> (min(~arg_0.d.x, global4[_wgslsmith_index_u32(min(34216u, 0u) ^ ~0u, 25u)]) % 32u)); ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            let var_1 = false;
            let var_2 = arg_0;
            var var_3 = Struct_1(abs(abs(_wgslsmith_mult_vec3_u32(var_2.a, select(var_2.a, var_2.a, global2[_wgslsmith_index_u32(var_2.a.x, 26u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-448.0, 670.0)))), var_2.b)), 2147483647, arg_0.d);
            global3 = array<vec2<bool>, 2>();
            global0 = array<vec4<f32>, 5>();
        }
    }
    let var_0 = global2[_wgslsmith_index_u32(1u, 26u)] && (_wgslsmith_div_f32(-227.0, arg_0.b) > -671.0);
    let var_1 = max(_wgslsmith_dot_vec2_u32(arg_0.a.zz & arg_0.a.zy, max(~(~arg_0.a.xx), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_0.d.x), arg_0.a.zy) >> (vec2<u32>(arg_0.a.x, 43189u) % vec2<u32>(32u)))), 12337u);
    var var_2 = arg_0;
    var var_3 = Struct_1(~min(var_2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(54977u, 3067u, 4294967295u), vec3<u32>(11786u, u_input.a, arg_0.a.x)) | arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -184.0)))), -1, arg_0.a.xz);
    return global2[_wgslsmith_index_u32(2989u, 26u)];
}

fn func_5(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec4<f32>(arg_2, _wgslsmith_f_op_f32(round(344.0)), arg_3.x, -1044.0);
    for (; func_6(Struct_1(vec3<u32>(12686u, ~(47985u | 0u), firstLeadingBit(_wgslsmith_sub_u32(146816u, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -287.0)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x + -788.0)))), ~(i32(-1) * -27108), arg_1)); ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        continue;
    }
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0)));
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(9836u, u_input.b, arg_1.x) | vec3<u32>(0u, 34916u, 1u)), min(vec3<u32>(arg_1.x, 12889u, 0u), vec3<u32>(arg_1.x, arg_1.x, global4[_wgslsmith_index_u32(89772u, 25u)])) ^ ~vec3<u32>(4308u, 0u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1259.0) - _wgslsmith_f_op_f32(sign(arg_3.x)))), countOneBits(_wgslsmith_dot_vec2_i32(~min(vec2<i32>(2557, -1), vec2<i32>(-11760, 0)), _wgslsmith_sub_vec2_i32(-vec2<i32>(18366, 891), ~vec2<i32>(29567, -2147483648)))), vec2<u32>(~(global4[_wgslsmith_index_u32(countOneBits(u_input.a), 25u)] | u_input.a), 28880u));
    global3 = array<vec2<bool>, 2>();
    return ~select(firstTrailingBit(4294967295u), arg_1.x, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> f32 {
    let var_0 = Struct_1(max(vec3<u32>(func_5(vec4<bool>(global2[_wgslsmith_index_u32(60185u, 26u)], arg_0.x, global2[_wgslsmith_index_u32(u_input.a, 26u)], false), _wgslsmith_div_vec2_u32(vec2<u32>(43447u, u_input.a), arg_1.d), _wgslsmith_f_op_f32(arg_1.b - 1049.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, -620.0, 307.0) + vec4<f32>(arg_1.b, arg_1.b, arg_1.b, -1529.0))), _wgslsmith_sub_u32(arg_1.a.x, 1u) << (~6789u % 32u), 4294967295u), vec3<u32>(global4[_wgslsmith_index_u32(~(35184u >> (arg_1.d.x % 32u)), 25u)], 44375u, ~arg_1.d.x)), arg_1.b, -46580, arg_1.d);
    let var_1 = false & (u_input.b <= ~(~global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], var_0.d.x), 25u)]));
    let var_2 = _wgslsmith_div_u32(var_0.a.x, var_0.d.x);
    let var_3 = arg_0.zz;
    var var_4 = ~8618u;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(179.0)), arg_1.b))));
}

fn func_3() -> vec3<f32> {
    for (var var_0 = -13425; true; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        var var_1 = 6738u | _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(25278u, 25u)], ~u_input.a);
        return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-969.0 * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(831.0 - -1219.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -403.0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868.0 + 1000.0))), _wgslsmith_f_op_f32(f32(-1.0) * -675.0)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(!vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(58136u, 26u)]), Struct_1(vec3<u32>(u_input.b, u_input.b, 12320u), -1041.0, 0, vec2<u32>(1u, global4[_wgslsmith_index_u32(0u, 25u)])), 32713, i32(-1) * -16710)) * _wgslsmith_f_op_f32(trunc(-1000.0))), _wgslsmith_f_op_f32(abs(-1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-899.0, 718.0, global2[_wgslsmith_index_u32(25133u, 26u)]))))));
    }
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 25u)], 4294967295u, 9255u, global4[_wgslsmith_index_u32(4294967295u, 25u)]), max(~vec4<u32>(7228u, 1u, 19861u, 51125u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 0u, 0u, global4[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<u32>(80477u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 104191u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 25u)], 25u)]), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 25u)], 25u)], global4[_wgslsmith_index_u32(48386u, 25u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], global4[_wgslsmith_index_u32(u_input.a, 25u)])))) >> (vec4<u32>(firstLeadingBit(u_input.a), global4[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_sub_u32(1u, global4[_wgslsmith_index_u32(48907u, 25u)] & 4294967295u), u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.a, 1u, firstTrailingBit(0u)), select(vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 25u)], 1u, 1u, u_input.b) << (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 25u)], 25u)], 4294967295u, u_input.b, global4[_wgslsmith_index_u32(4294967295u, 25u)]) % vec4<u32>(32u)), countOneBits(vec4<u32>(u_input.b, u_input.a, global4[_wgslsmith_index_u32(u_input.b, 25u)], u_input.a)), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], false, false, global2[_wgslsmith_index_u32(37183u, 26u)])), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(1565u, 25u)], 37602u, global4[_wgslsmith_index_u32(4294967295u, 25u)], global4[_wgslsmith_index_u32(49616u, 25u)]), vec4<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 25u)], 25u)], 0u, 35009u))), ~(~max(vec4<u32>(global4[_wgslsmith_index_u32(u_input.b, 25u)], 1u, 1906u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 25u)], 25u)]), vec4<u32>(55115u, 0u, 5118u, 4294967295u))), vec4<u32>(~(u_input.a | u_input.b), 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(71993u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], u_input.a), ~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 25u)], 25u)], global4[_wgslsmith_index_u32(u_input.b, 25u)], 4294967295u)), (28497u | u_input.a) ^ (3147u << (11222u % 32u))))), 26u)];
    let var_1 = Struct_1(~vec3<u32>(global4[_wgslsmith_index_u32(reverseBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 1u), 25u)], 25u)]), 25u)], abs(reverseBits(4294967295u)), abs(58450u & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 25u)])), _wgslsmith_f_op_f32(-607.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-752.0 * -154.0)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1449.0 + 826.0))))), ~(-5969), ~vec2<u32>(u_input.a, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49u, 25u)], 25u)], 25u)], 25u)]) & ~vec2<u32>(0u, 1u));
    if (global2[_wgslsmith_index_u32(~var_1.d.x, 26u)]) {
        var var_2 = vec4<u32>(0u, min(~3648u, 66709u), u_input.a, global4[_wgslsmith_index_u32(26215u, 25u)]);
    }
    var var_2 = Struct_1(vec3<u32>(global4[_wgslsmith_index_u32(u_input.b, 25u)], 52064u, var_1.a.x), _wgslsmith_div_f32(-1736.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1108.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000.0)) + var_1.b))), _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(var_1.c, var_1.c)), -21421), vec2<i32>(var_1.c, -1)), var_1.a.zy ^ ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(var_1.d.x, 4294967295u), vec2<u32>(u_input.a, var_1.a.x), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19847u, 25u)], 26u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), var_1.d)));
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(707.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-905.0 + var_2.b), _wgslsmith_f_op_f32(abs(867.0))))), var_1.b);
}

fn func_7(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), vec2<f32>(_wgslsmith_f_op_f32(min(237.0, 856.0)), _wgslsmith_f_op_f32(func_4(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(136735u, 25u)], 26u)]), Struct_1(arg_0.yyw, arg_2, 2147483647, arg_0.zy), 29950, 2147483647))))));
    let var_1 = Struct_1(select(~vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 809u, arg_1), ~27132u, ~1u), vec3<u32>(0u, max(11579u | arg_0.x, u_input.a | 60451u), ~(arg_0.x >> (arg_0.x % 32u))), !(!(!global1[_wgslsmith_index_u32(18531u, 28u)]))), _wgslsmith_f_op_f32(abs(arg_2)), min(_wgslsmith_dot_vec3_i32(~vec3<i32>(-38020, 0, -65562) & firstLeadingBit(vec3<i32>(-17893, 0, -50698)), vec3<i32>(0 << (u_input.a % 32u), _wgslsmith_div_i32(1, 35463), 0)), 3953), arg_0.wy);
    if ((var_1.a.x != ~(~(~var_1.a.x))) & !true) {
        for (var var_2 = 16387; var_2 != 1; var_2 -= 1) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            break;
        }
    }
    let var_2 = arg_0.zx;
    var var_3 = var_1;
    return var_1;
}

fn func_2(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = func_7(_wgslsmith_div_vec4_u32(reverseBits(~(~vec4<u32>(4294967295u, 5648u, 1u, 26888u))), min(max(vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a, 66623u), vec4<u32>(global4[_wgslsmith_index_u32(3532u, 25u)], 42957u, 32242u, 28964u) & vec4<u32>(global4[_wgslsmith_index_u32(u_input.b, 25u)], global4[_wgslsmith_index_u32(0u, 25u)], 4294967295u, u_input.b)), ~(~vec4<u32>(25616u, u_input.a, 59137u, global4[_wgslsmith_index_u32(u_input.b, 25u)])))), global4[_wgslsmith_index_u32(abs(~global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30769u, 25u)], 25u)], 46920u), 25u)]), 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-576.0))))) - -1044.0), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1126.0, -163.0, 533.0)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1261.0), _wgslsmith_f_op_f32(func_4(vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47151u, 25u)], 26u)], arg_1, arg_0), Struct_1(vec3<u32>(61380u, 4294967295u, global4[_wgslsmith_index_u32(39944u, 25u)]), 236.0, 0, vec2<u32>(1u, u_input.a)), 33732, 1)), -1000.0))))));
    var var_1 = ~vec2<i32>(-7658, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483648, var_0.c, -1), -vec3<i32>(var_0.c, -9219, var_0.c)));
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(4282u & ~_wgslsmith_mod_u32(4294967295u, 72671u)), ~0u), 25u)];
    for (var var_3 = -45017; arg_0; var_3 -= 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        continue;
    }
    global1 = array<vec3<bool>, 28>();
    return global4[_wgslsmith_index_u32(u_input.a, 25u)];
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> i32 {
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        switch (arg_0.c) {
            case 2147483647: {
            }
            default: {
                break;
            }
        }
        if (countOneBits(max(~(~arg_0.d.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(15763u, arg_0.d.x), _wgslsmith_sub_u32(1u, 67890u)))) > ~_wgslsmith_sub_u32(~(~1u), _wgslsmith_clamp_u32(func_2(global2[_wgslsmith_index_u32(43847u, 26u)], true), 17861u, arg_0.d.x))) {
            break;
        }
    }
    let var_0 = Struct_1(~(arg_0.a & vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.xy, arg_0.d), u_input.a ^ 18407u, ~arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1109.0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(step(arg_0.b, arg_0.b)))), _wgslsmith_mult_i32(max(arg_0.c, -24091), abs(43571)), ~arg_0.d);
    global4 = array<u32, 25>();
    for (var var_1 = -16205; u_input.b < func_5(vec4<bool>(!(true || false), arg_1, arg_1, global2[_wgslsmith_index_u32(~abs(arg_0.d.x), 26u)]), vec2<u32>(4294967295u ^ var_0.a.x, ~abs(global4[_wgslsmith_index_u32(var_0.a.x, 25u)])), 367.0, global0[_wgslsmith_index_u32(~abs(1u), 5u)]); var_1 -= 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        global3 = array<vec2<bool>, 2>();
    }
    switch (1) {
        case -1: {
            global2 = array<bool, 26>();
            let var_1 = firstLeadingBit(73706u);
            var var_2 = select(select(vec4<bool>(true, all(vec4<bool>(true, false, false, arg_1)), arg_1, global2[_wgslsmith_index_u32(~1222u, 26u)]), vec4<bool>(arg_1 && false, !any(global1[_wgslsmith_index_u32(u_input.a, 28u)]), !(!false), false), select(!select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_1, 26u)], global2[_wgslsmith_index_u32(29273u, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], arg_1, false, true), false), !vec4<bool>(false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 25u)], 26u)], false, arg_1), global2[_wgslsmith_index_u32(arg_0.d.x, 26u)])), vec4<bool>(!global2[_wgslsmith_index_u32(var_0.a.x, 26u)] == false, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(var_1, 0u)), 26u)], select(arg_1, true, false)), !vec4<bool>(_wgslsmith_add_u32(1u, 1u) != _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 25u)], 25u)], var_1, var_0.d.x, arg_0.a.x), vec4<u32>(0u, var_0.a.x, 57196u, arg_0.a.x)), !(true != global2[_wgslsmith_index_u32(1u, 26u)]), !(true & arg_1), true));
        }
        default: {
            if (false) {
                var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b, 933.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -1443.0)), arg_1)), vec2<f32>(var_0.b, -470.0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()).zz)))), any(select(!vec4<bool>(arg_1, true, arg_1, false), select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_0.a.x, 26u)], true), vec4<bool>(false, arg_1, global2[_wgslsmith_index_u32(arg_0.d.x, 26u)], global2[_wgslsmith_index_u32(arg_0.a.x, 26u)]), arg_1), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], false, arg_1, false))) != true));
                let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 1000.0))), arg_0.b) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-883.0, arg_0.b))), vec2<f32>(var_0.b, -1000.0)) - vec2<f32>(642.0, _wgslsmith_f_op_f32(max(-1503.0, -378.0)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130.0 - var_1.x) * _wgslsmith_f_op_f32(f32(-1.0) * -192.0)), 858.0)));
                var var_3 = false;
                return _wgslsmith_div_i32(countOneBits(-(~_wgslsmith_mult_i32(-1, 1))), abs(i32(-1) * -34714));
            }
            var var_1 = 18577u;
        }
    }
    return ~(-abs(arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    switch (~(~(firstLeadingBit(-35101 & 2147483647) | _wgslsmith_sub_i32(0, -2147483648)))) {
        case 228: {
            let var_0 = u_input.b;
            global3 = array<vec2<bool>, 2>();
            var var_1 = ~(~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(var_0, 4294967295u, u_input.b)), 25u)], global4[_wgslsmith_index_u32(~(~8332u), 25u)]));
            let var_2 = -321.0;
            global4 = array<u32, 25>();
        }
        case -53135: {
        }
        default: {
            global3 = array<vec2<bool>, 2>();
            if (false) {
                var var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, (1u << (0u % 32u)) | ~u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(u_input.b, 25u)], u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 25u)]), vec3<u32>(3779u, 57901u, u_input.b)), vec3<u32>(global4[_wgslsmith_index_u32(51508u, 25u)], global4[_wgslsmith_index_u32(59217u, 25u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 25u)], 25u)])), _wgslsmith_add_u32(59358u ^ 48742u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 25u)], 25u)] & 4294967295u)), ~(~(vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 25u)], 25u)], u_input.b, u_input.b) << (vec4<u32>(59731u, 101104u, u_input.a, global4[_wgslsmith_index_u32(u_input.b, 25u)]) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.b, global4[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<u32>(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(u_input.b, 25u)], 4294967295u, u_input.b), 7987u, ~global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(u_input.b >> (0u % 32u), 25u)]))));
                let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-964.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-778.0 * _wgslsmith_f_op_f32(-1893.0)) + 1370.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1027.0));
                let var_2 = select(vec3<bool>(_wgslsmith_clamp_i32(func_1(Struct_1(var_0.xxw, -906.0, -2147483648, vec2<u32>(4294967295u, u_input.a)), false), _wgslsmith_add_i32(-22229, 29371), firstLeadingBit(2147483647)) >= ~20439, !(!(!global2[_wgslsmith_index_u32(4294967295u, 26u)])), u_input.b > 4294967295u), global1[_wgslsmith_index_u32(~47806u << (min(countOneBits(107906u), u_input.a) % 32u), 28u)], !true);
                global3 = array<vec2<bool>, 2>();
                let var_3 = vec3<u32>(u_input.a, 102982u, u_input.b);
            }
            var var_0 = _wgslsmith_f_op_f32(sign(1000.0));
        }
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    for (var var_0 = -9359; ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(countOneBits(vec3<u32>(global4[_wgslsmith_index_u32(u_input.a, 25u)], 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 25u)], 25u)])), countOneBits(vec3<u32>(4294967295u, 1u, 0u)), vec3<bool>(global2[_wgslsmith_index_u32(6479u, 26u)], global2[_wgslsmith_index_u32(5997u, 26u)], true)), ~(~vec3<u32>(global4[_wgslsmith_index_u32(u_input.b, 25u)], global4[_wgslsmith_index_u32(0u, 25u)], 45074u))), 25u)] < max(min(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], ~func_5(vec4<bool>(true, global2[_wgslsmith_index_u32(188022u, 26u)], true, global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<u32>(78812u, u_input.b), -1086.0, vec4<f32>(-568.0, 1600.0, 550.0, 902.0))), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 59074u), vec2<u32>(1u, u_input.b)), func_5(vec4<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 25u)], 26u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(122582u, 25u)], 25u)], 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(97252u, 25u)], 26u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(93007u, 25u)], 25u)], 25u)], global4[_wgslsmith_index_u32(u_input.a, 25u)]), 2453.0, global0[_wgslsmith_index_u32(0u, 5u)])), ~27639u)); var_0 += 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        switch (min(countOneBits(~(-65105)), min(~_wgslsmith_sub_i32(2147483647, -36509) & firstTrailingBit(0), max(-47086, 2147483647)))) {
            case -2147483648: {
                continue;
            }
            case -38087: {
                global4 = array<u32, 25>();
                global3 = array<vec2<bool>, 2>();
                continue;
            }
            case -22322: {
                var_0 = firstTrailingBit(~_wgslsmith_mod_i32(0, _wgslsmith_div_i32(func_1(Struct_1(vec3<u32>(u_input.a, global4[_wgslsmith_index_u32(u_input.b, 25u)], 4294967295u), 282.0, -12753, vec2<u32>(10868u, global4[_wgslsmith_index_u32(0u, 25u)])), false), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, 0, 1), vec3<i32>(22256, 35928, 0)))));
                let var_1 = !(!(!(!(!global2[_wgslsmith_index_u32(1u, 26u)]))));
                var_0 = _wgslsmith_sub_i32(0, _wgslsmith_dot_vec2_i32(-vec2<i32>(43534, 1), reverseBits(vec2<i32>(-4376, 0) & vec2<i32>(-15945, -1))) ^ -reverseBits(~(-19821)));
            }
            default: {
                var var_1 = -abs(-abs(vec4<i32>(2147483647, -1, 2147483647, -1)));
                var var_2 = vec2<i32>(-7694, firstTrailingBit(_wgslsmith_mod_i32(21787, _wgslsmith_div_i32(8868, 2147483647))));
                var var_3 = ~var_1.wyw;
                break;
            }
        }
        if (any(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16082u, 25u)], 26u)]), false), global1[_wgslsmith_index_u32(~4294967295u, 28u)], !global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 28u)])) && (func_6(func_7(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.a), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33309u, 25u)], 25u)], global4[_wgslsmith_index_u32(4294967295u, 25u)], 4294967295u, 11370u)), _wgslsmith_add_u32(u_input.a, 1u), -698.0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1466.0, 1245.0, -535.0)))) != true)) {
            var_0 = _wgslsmith_dot_vec4_i32(((firstLeadingBit(vec4<i32>(-6790, 1, -2147483648, 7203)) & ~vec4<i32>(42160, -1, 1, -2147483648)) | min(-vec4<i32>(-21306, 52028, -36229, 1), vec4<i32>(1, 52714, 46097, 10984))) >> (firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, 18176u, global4[_wgslsmith_index_u32(u_input.a, 25u)])) % vec4<u32>(32u)), vec4<i32>(select(i32(-1) * -17819, select(1, 23814, true), 1 != 10667), ~(-35826 & -2147483648), func_1(func_7(vec4<u32>(1u, global4[_wgslsmith_index_u32(56914u, 25u)], u_input.a, global4[_wgslsmith_index_u32(u_input.a, 25u)]), 25431u, 1000.0, vec3<f32>(295.0, -203.0, -507.0)), 4294967295u >= 0u), firstTrailingBit(34103)) ^ vec4<i32>(_wgslsmith_div_i32(~26220, max(0, -1)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647, 26350), vec2<i32>(1, 65416)), vec2<i32>(15522, 14925) | vec2<i32>(2147483647, -2147483648)), -58840, _wgslsmith_add_i32(abs(63555), i32(-1) * -36820)));
            global4 = array<u32, 25>();
        }
        for (; ; ) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            var var_1 = u_input.a;
        }
        global3 = array<vec2<bool>, 2>();
    }
    var var_0 = Struct_1(reverseBits(~vec3<u32>(4294967295u, 1u, global4[_wgslsmith_index_u32(u_input.b, 25u)]) | _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 48297u, 19113u), min(vec3<u32>(13583u, u_input.a, global4[_wgslsmith_index_u32(u_input.a, 25u)]), vec3<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5162u, 25u)], 25u)], 25u)], global4[_wgslsmith_index_u32(u_input.b, 25u)])))), _wgslsmith_f_op_f32(f32(-1.0) * -999.0), _wgslsmith_div_i32(0, -firstLeadingBit(i32(-1) * -53541)), vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(1u, 25u)], 15858u), 1u), 4294967295u));
    var_0 = func_7(~(~vec4<u32>(0u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 39058u, u_input.b), vec3<u32>(var_0.d.x, 117148u, 4294967295u)), ~0u)), 78720u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-525.0, 1449.0)) - _wgslsmith_f_op_f32(abs(var_0.b)))))), vec3<f32>(-306.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))), 1234.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b)))));
    var var_1 = 467.0;
    var var_2 = -vec2<i32>(~27868, _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, var_0.c, var_0.c, -2147483648), vec4<i32>(var_0.c, -88417, 11929, 1))), ~vec4<i32>(var_0.c, var_0.c, -35004, 54322) ^ -vec4<i32>(var_0.c, var_0.c, 13257, -6416)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b)) + 165.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)))), var_0.b)));
}

