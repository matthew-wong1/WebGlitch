// {"0:0":[185,43,190,157,90,166,14,68,199,146,27,192,184,204,128,34]}
// Seed: 245697963605269865

struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 0u), false, vec3<u32>(22388u, 31993u, 0u), 0, 16528u);

var<private> global1: vec4<i32>;

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>) -> bool {
    let var_0 = Struct_1(countOneBits(global0.c.xy), !(!all(select(vec4<bool>(false, arg_0.b, false, arg_0.b), vec4<bool>(false, global0.b, true, global0.b), vec4<bool>(true, arg_0.b, arg_0.b, global0.b)))), arg_0.c, select(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, -9275), vec2<i32>(2396, arg_0.d)), arg_2.x), ~_wgslsmith_mult_i32(global1.x & global0.d, -1), global0.b), _wgslsmith_add_u32(0u, arg_0.e));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-407.0), arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), 263.0) - arg_1)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(600.0, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 114.0, 192.0) - arg_1) * arg_1), false))));
    for (var var_2 = 0; var_2 != 0; var_2 -= 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1743.0, var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -340.0), _wgslsmith_f_op_f32(-arg_1.x))))));
            let var_4 = any(!(!select(!vec3<bool>(arg_0.b, false, false), vec3<bool>(var_0.b, var_0.b, global0.b), global0.b)));
            var_2 = ~_wgslsmith_sub_i32(-89063, _wgslsmith_dot_vec3_i32(global1.xxy, firstLeadingBit(global1.yyw) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 2054u), arg_0.c, vec3<u32>(4294967295u, 0u, var_0.a.x)) % vec3<u32>(32u))));
            let var_5 = arg_0;
            continue;
        }
    }
    var var_2 = var_0;
    var var_3 = arg_0;
    return !all(vec2<bool>(false, var_0.b || var_3.b));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec3<u32> {
    let var_0 = u_input.a.x;
    var var_1 = !vec4<bool>(!(!arg_0.b), !(!func_6(Struct_1(vec2<u32>(global0.e, 0u), arg_0.b, global0.c, global1.x, 0u), vec3<f32>(arg_1, 775.0, 1601.0), vec4<i32>(arg_0.d, 16766, -8188, -1))), global0.b, !(!all(vec2<bool>(arg_0.b, true))));
    var var_2 = -(global0.d & max(global1.x, global0.d));
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var_1 = vec4<bool>(select((reverseBits(53060) != global0.d) || !global0.b, !(1149.0 <= _wgslsmith_f_op_f32(exp2(1475.0))), false), _wgslsmith_dot_vec4_u32(vec4<u32>(16924u, ~0u, 4294967295u, 34055u), u_input.a) == ~(~(1u >> (var_0 % 32u))), !var_1.x || func_6(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000.0, arg_2, 683.0), vec3<f32>(-822.0, arg_1, arg_2))), vec4<i32>(arg_0.d, arg_0.d & 4945, global1.x, _wgslsmith_mult_i32(global0.d, 990))), global0.b);
        global1 = countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483648, 21820, global1.x, -2147483648) << (u_input.a % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, global1.x, arg_0.d, global0.d), vec4<i32>(-36871, arg_0.d, -15449, arg_0.d)), select(-5423, 8670, arg_0.b), arg_0.d, ~global0.d), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, -8887, global0.d, global1.x), vec4<i32>(-21117, arg_0.d, global1.x, 0)), reverseBits(global1.x), global1.x, -1)), ~(vec4<i32>(-1) * -vec4<i32>(global1.x, global0.d, global0.d, -1))));
        let var_3 = arg_0;
        let var_4 = var_1.xy;
    }
    for (var var_3 = 41306; var_3 > -43413; global1 = vec4<i32>(-1, abs(firstTrailingBit(countOneBits(firstLeadingBit(0)))), abs(-2147483648), reverseBits(max(34138, _wgslsmith_div_i32(global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0, global1.x), vec2<i32>(global1.x, arg_0.d))))))) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        switch (abs(-24079)) {
            case -5453: {
                global0 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(959u, ~(~0u)), select(~abs(vec2<u32>(var_0, global0.e)), (vec2<u32>(arg_0.e, 65u) ^ vec2<u32>(var_0, 10288u)) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), !var_1.xy)), !(true || any(select(vec2<bool>(false, global0.b), vec2<bool>(false, global0.b), vec2<bool>(true, true)))), max(countOneBits(select(u_input.a.zxz | arg_0.c, vec3<u32>(88580u, arg_0.a.x, 1u) << (arg_0.c % vec3<u32>(32u)), 4294967295u < var_0)), vec3<u32>(32825u, arg_0.a.x, ~53212u)), _wgslsmith_mod_i32(global0.d, min(76731, max(_wgslsmith_mod_i32(0, global1.x), -global0.d))), countOneBits(0u));
                var var_4 = arg_0;
            }
            case 2147483647: {
                global0 = arg_0;
                global0 = Struct_1(vec2<u32>(_wgslsmith_div_u32(1u, var_0) << (u_input.a.x % 32u), ~_wgslsmith_mod_u32(u_input.a.x, 4294967295u)) ^ min(_wgslsmith_div_vec2_u32(vec2<u32>(54465u, 104207u), abs(vec2<u32>(u_input.a.x, 4294967295u))), _wgslsmith_mod_vec2_u32(min(vec2<u32>(arg_0.e, 46184u), global0.a), global0.a)), all(!select(var_1.xz, !var_1.xw, var_1.yy)), ~(~global0.c), -21998, u_input.a.x);
            }
            default: {
                var_2 = ~(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1, arg_0.d, global1.x, global0.d), vec4<i32>(2043, 1, -4644, 42321)), max(vec4<i32>(global0.d, 10026, -1, 51030), vec4<i32>(2147483647, -22713, 2147483647, 62450))), -6472));
                let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-2360.0))))), 559.0) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000.0 + arg_1), -493.0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -695.0)) * vec2<f32>(arg_1, arg_1))), !var_1.x)));
            }
        }
        var var_4 = global1.yzz;
    }
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(var_0, 48251u, var_0)), ~(~u_input.a.wzy), select(_wgslsmith_clamp_vec3_u32(global0.c, vec3<u32>(global0.c.x, u_input.a.x, var_0), vec3<u32>(4294967295u, 0u, u_input.a.x)), vec3<u32>(0u, var_0, 11993u), -26143 <= arg_0.d)) | u_input.a.zyz, vec3<u32>(~(46368u & 4294967295u), _wgslsmith_dot_vec3_u32(max(~u_input.a.xwx, ~vec3<u32>(23517u, 0u, arg_0.e)), ~select(global0.c, arg_0.c, var_1.x)), _wgslsmith_mod_u32(firstTrailingBit(u_input.a.x << (arg_0.c.x % 32u)), arg_0.e)), _wgslsmith_mult_vec3_u32(u_input.a.xwx, abs(~_wgslsmith_mult_vec3_u32(u_input.a.wzy, vec3<u32>(global0.e, arg_0.c.x, u_input.a.x)))));
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -1591.0))) - arg_0);
    var var_1 = _wgslsmith_mod_u32(u_input.a.x, 4294967295u) & _wgslsmith_dot_vec3_u32(~(~global0.c) << ((~u_input.a.xxz << (func_5(Struct_1(vec2<u32>(25347u, u_input.a.x), arg_1, global0.c, global1.x, 43220u), arg_0, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~(u_input.a.xxy >> (vec3<u32>(u_input.a.x, 15747u, 1u) % vec3<u32>(32u)))));
    let var_2 = countOneBits(0u);
    var var_3 = Struct_1(abs(select(u_input.a.zy, u_input.a.yw >> (vec2<u32>(0u, var_2) % vec2<u32>(32u)), !true)) >> (func_5(Struct_1(global0.c.yx & global0.c.zy, false && true, ~global0.c, global1.x, var_2), _wgslsmith_div_f32(arg_0, arg_0), -1442.0).yx % vec2<u32>(32u)), true, u_input.a.wyy, global1.x, u_input.a.x);
    var var_4 = ~(~(~(min(var_3.c, vec3<u32>(u_input.a.x, var_3.e, u_input.a.x)) & ~u_input.a.zww)));
    return Struct_1(reverseBits(vec2<u32>(min(u_input.a.x, max(u_input.a.x, 1u)), u_input.a.x)), !(true & arg_1), ~global0.c, global1.x | _wgslsmith_mod_i32(global1.x, 1326), ~0u);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: bool) -> vec4<i32> {
    let var_0 = vec2<bool>(global0.b, global0.b);
    var var_1 = 561.0 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(318.0)) + _wgslsmith_f_op_f32(ceil(440.0)))));
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
        break;
    }
    let var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104.0 * -204.0)), false);
    return vec4<i32>(-1) * -vec4<i32>(arg_0, _wgslsmith_add_i32(_wgslsmith_mult_i32(global0.d, 0), arg_1.x), _wgslsmith_sub_i32(-57126, ~global1.x), abs(arg_0) | 1);
}

fn func_2() -> vec3<u32> {
    for (var var_0: i32; global0.b; var_0 -= 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_1 = 7029;
        for (var var_2 = -61842; var_2 <= -2147483648; var_2 += 1) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            var_1 = reverseBits(global0.d);
            let var_3 = vec4<u32>(~0u, _wgslsmith_clamp_u32(u_input.a.x, ~global0.c.x, abs(firstLeadingBit(35038u)) & abs(firstLeadingBit(0u))), global0.c.x, 1u);
            var_2 = _wgslsmith_clamp_i32(7722, firstTrailingBit(_wgslsmith_mult_i32(-11559, -2976)), -1);
        }
    }
    global1 = ~_wgslsmith_div_vec4_i32(~(vec4<i32>(-1) * -vec4<i32>(global0.d, global0.d, 1, global0.d)), func_3(~(~(-2147483648)), vec4<i32>(-1) * -vec4<i32>(-24445, global0.d, 2147483647, global1.x), !(!true)));
    switch (_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(func_3(global1.x, vec4<i32>(35046, -2147483648, global1.x, global1.x), global0.b), max(vec4<i32>(-1, 2147483647, -2147483648, global1.x), vec4<i32>(global0.d, global1.x, global1.x, global1.x)), vec4<i32>(global0.d, -13776, global0.d, 23411) | vec4<i32>(global1.x, global0.d, -2147483648, -20443)), max(-vec4<i32>(-2147483648, global0.d, -2147483648, global0.d), vec4<i32>(global1.x, global0.d, global0.d, global1.x))), global1.x)) {
        case 1: {
            let var_0 = -1;
            let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1403.0)))) - _wgslsmith_div_f32(-251.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-588.0))))), all(vec2<bool>(!true, !true)));
        }
        case 23507: {
            if (any(!(!(!vec4<bool>(true, global0.b, global0.b, false))))) {
            }
            if (global0.b) {
                var var_0 = func_4(_wgslsmith_f_op_f32(sign(-136.0)), global0.b);
                let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-509.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(522.0)), _wgslsmith_f_op_f32(-2396.0 * -805.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))), var_0.b);
                var var_2 = ~(-vec2<i32>(global0.d, abs(_wgslsmith_div_i32(global0.d, var_0.d))));
                var_2 = vec2<i32>(1, -_wgslsmith_add_i32(var_1.d, global1.x));
                let var_3 = var_1;
            }
        }
        case -96140: {
            if (any(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1333.0))) == _wgslsmith_f_op_f32(f32(-1.0) * -590.0), all(vec2<bool>(global0.b, any(vec4<bool>(global0.b, true, global0.b, global0.b))))))) {
                let var_0 = Struct_1(~max(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.x, u_input.a.x), vec2<u32>(4294967295u, global0.c.x)) | vec2<u32>(18704u, global0.e), vec2<u32>(1u ^ 4294967295u, 94014u)), !(!global0.b) && func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1135.0)))), func_4(_wgslsmith_f_op_f32(f32(-1.0) * -591.0), !global0.b).b).b, u_input.a.zyw, 1, u_input.a.x);
                var var_1 = any(select(vec4<bool>(!(39642 <= -1), false, !global0.b, func_4(_wgslsmith_f_op_f32(round(-901.0)), -7455 == global0.d).b), select(select(!vec4<bool>(global0.b, global0.b, global0.b, var_0.b), !vec4<bool>(var_0.b, var_0.b, global0.b, false), !global0.b), !vec4<bool>(true, global0.b, true, true), select(select(vec4<bool>(global0.b, var_0.b, global0.b, true), vec4<bool>(false, false, var_0.b, true), var_0.b), select(vec4<bool>(global0.b, true, true, false), vec4<bool>(global0.b, true, false, var_0.b), global0.b), func_4(522.0, var_0.b).b)), select(all(vec4<bool>(true, global0.b, var_0.b, true)), true, -9436 != global1.x) & (var_0.d != 1)));
            }
        }
        case -23550: {
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                global1 = _wgslsmith_add_vec4_i32(select(-vec4<i32>(-2147483648, global0.d, global0.d, global0.d), max(func_3(global0.d, vec4<i32>(global1.x, global1.x, 16422, 0), global0.b), ~vec4<i32>(458, global0.d, 2147483647, 0)), global0.b), vec4<i32>(-8676, -(~2147483647), -2147483647, _wgslsmith_mult_i32(max(33471, global1.x), global1.x))) & abs(~(vec4<i32>(-1) * -vec4<i32>(-25166, global1.x, global0.d, -7988)));
                global1 = _wgslsmith_mod_vec4_i32(abs(-(-vec4<i32>(global0.d, -2147483648, -7550, -2147483648) & vec4<i32>(-22368, global1.x, global0.d, 24021))), vec4<i32>(1, min(~_wgslsmith_div_i32(-1, 2147483647), _wgslsmith_mod_i32(global0.d, reverseBits(global1.x))), firstTrailingBit(0), max(global1.x, ~(-19066 << (u_input.a.x % 32u)))));
                global0 = func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-590.0 * _wgslsmith_f_op_f32(trunc(1268.0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-505.0, 787.0), _wgslsmith_f_op_f32(step(1054.0, -1000.0)))))), (false & !true) & !(global0.b || global0.b))), global0.b);
                break;
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(2694.0, 1000.0));
                global1 = -vec4<i32>(global1.x, global1.x, -abs(_wgslsmith_dot_vec3_i32(global1.xyz, global1.wyz)), 1);
                continue;
            }
            for (var var_0: i32; ; ) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1641.0, -1000.0, 1351.0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1084.0, 370.0, 1239.0))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(965.0, 830.0, -827.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, 1387.0, 231.0)), select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(true, global0.b, global0.b), vec3<bool>(global0.b, true, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000.0, -1713.0, 833.0), vec3<f32>(594.0, -1561.0, 1000.0), vec3<bool>(global0.b, global0.b, false))))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(652.0, 813.0, 543.0)))))));
                let var_2 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-var_1.x))))), !(!all(select(vec2<bool>(true, true), vec2<bool>(false, true), global0.b))));
                break;
            }
            let var_0 = -1207.0;
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0), -846.0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1044.0) * _wgslsmith_f_op_f32(round(var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) * _wgslsmith_f_op_f32(var_0 * -232.0))))));
                global0 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1009.0, var_0)))))), false);
                break;
            }
        }
    }
    return global0.c;
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    switch (_wgslsmith_add_i32(global0.d, _wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.d, 23713) & 1, _wgslsmith_mult_i32(i32(-1) * -2147483648, _wgslsmith_mod_i32(2147483647, -2147483648)) & (i32(-1) * -1)))) {
        case 0: {
        }
        case 13671: {
            return ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(func_2(), global0.c >> (vec3<u32>(0u, 110653u, 74235u) % vec3<u32>(32u))), firstTrailingBit(4294967295u)));
        }
        case -1: {
            var var_0 = 383.0;
            let var_1 = _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(~global0.c.x, u_input.a.x), (global0.e ^ u_input.a.x) ^ global0.c.x) >> (~(~_wgslsmith_mult_u32(0u, 48373u)) % 32u));
        }
        case -5650: {
            for (var var_0 = 1; ; global1 = arg_0) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var_0 = ~global0.d;
                let var_1 = ~0u;
            }
            switch (~(-1)) {
                case 1: {
                    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(735.0)) * _wgslsmith_f_op_f32(-238.0 - 101.0)))) + _wgslsmith_f_op_f32(-586.0)), !all(select(select(vec4<bool>(global0.b, global0.b, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, global0.b, global0.b, false), vec4<bool>(global0.b, true, global0.b, true), false), !global0.b)));
                    global0 = func_4(_wgslsmith_div_f32(-854.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-284.0, -412.0)) - _wgslsmith_f_op_f32(f32(-1.0) * -1202.0)))), func_6(Struct_1(u_input.a.xw ^ func_2().yz, true, vec3<u32>(var_0.a.x, ~0u, 30417u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, global1.x, global0.d) ^ arg_0.wxy, _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, -2147483648, global1.x), arg_0.yzy)), abs(global0.c.x) ^ ~u_input.a.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(748.0, 798.0, 146.0), _wgslsmith_div_vec3_f32(vec3<f32>(762.0, -2860.0, 385.0), vec3<f32>(-1083.0, 450.0, 193.0)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-353.0, 874.0, -991.0)))))), vec4<i32>(-9727, global0.d, countOneBits(~0), _wgslsmith_sub_i32(-20227, -1 ^ -2147483648))));
                    let var_1 = vec2<bool>(!var_0.b, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-147.0)))), true).b);
                }
                case -85878: {
                    let var_0 = vec2<i32>(abs(47589), _wgslsmith_mult_i32(countOneBits(max(50157, arg_0.x)) | ~arg_0.x, 21755));
                    var var_1 = vec4<bool>(true, all(select(vec4<bool>(global0.b, !global0.b, !global0.b, true & global0.b), !select(vec4<bool>(true, global0.b, true, global0.b), vec4<bool>(true, global0.b, global0.b, true), vec4<bool>(true, false, true, false)), false)), true, global0.b);
                    global1 = arg_0;
                    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(884.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -506.0) - -669.0), _wgslsmith_f_op_f32(f32(-1.0) * -1368.0))), _wgslsmith_f_op_f32(select(516.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1617.0, -579.0)), _wgslsmith_f_op_f32(1666.0 - -1580.0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(687.0 * 564.0) + 1083.0)), any(var_1.xyy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1040.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) - -1093.0));
                    var var_3 = func_4(var_2.x, global0.b || !(!all(var_1.xx)));
                }
                default: {
                    global0 = Struct_1(vec2<u32>(func_4(279.0, all(select(vec4<bool>(true, true, global0.b, true), vec4<bool>(false, true, true, global0.b), vec4<bool>(true, false, global0.b, global0.b)))).c.x, _wgslsmith_div_u32(1u, u_input.a.x)), global0.b, vec3<u32>(global0.e, _wgslsmith_clamp_u32(abs(34685u), ~countOneBits(global0.a.x), global0.a.x), _wgslsmith_mult_u32(0u & global0.a.x, firstLeadingBit(global0.a.x)) << (~(~34275u) % 32u)), ~(~(-4155)), 4294967295u);
                    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(279.0, 549.0, 166.0, -686.0)) * _wgslsmith_div_vec4_f32(vec4<f32>(303.0, -1354.0, 576.0, 234.0), vec4<f32>(-1336.0, 200.0, -1000.0, 256.0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-589.0, -1233.0, -395.0, -646.0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-758.0, 280.0, 133.0, 128.0)), true | false)))))));
                    let var_1 = vec3<bool>(!true, false, !any(select(select(vec2<bool>(global0.b, false), vec2<bool>(false, false), global0.b), vec2<bool>(global0.b, global0.b), !true)));
                    let var_2 = Struct_1(vec2<u32>(~(~4294967295u | _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), u_input.a.x | _wgslsmith_dot_vec3_u32(func_2(), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, global0.e, u_input.a.x), vec3<u32>(35690u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, global0.a.x)))), var_1.x, _wgslsmith_add_vec3_u32(func_5(Struct_1(vec2<u32>(0u, 662u) << (u_input.a.wy % vec2<u32>(32u)), !true, func_2(), global1.x, global0.a.x), var_0.x, _wgslsmith_f_op_f32(f32(-1.0) * -1149.0)), vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1457u, global0.e), vec4<u32>(u_input.a.x, global0.e, 96301u, u_input.a.x))))), _wgslsmith_sub_i32(i32(-1) * -2147483648, abs(global1.x)), u_input.a.x);
                }
            }
        }
        default: {
            switch (_wgslsmith_div_i32(global0.d, arg_0.x)) {
                case 1: {
                }
                case -2147483648: {
                    global1 = arg_0;
                    var var_0 = -1882.0;
                    var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -193.0);
                    let var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -2322.0))), _wgslsmith_f_op_f32(floor(-1537.0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -990.0) + _wgslsmith_div_f32(1115.0, 808.0))))), global0.b);
                }
                default: {
                    let var_0 = Struct_1(~vec2<u32>(func_5(Struct_1(vec2<u32>(1u, 50909u), global0.b, global0.c, global1.x, 10056u), _wgslsmith_f_op_f32(-571.0 + -2200.0), _wgslsmith_f_op_f32(-141.0 * -2407.0)).x, 24651u), true, ~_wgslsmith_div_vec3_u32(func_4(_wgslsmith_f_op_f32(f32(-1.0) * -138.0), global0.b).c, ~(~vec3<u32>(4294967295u, global0.c.x, global0.c.x))), 2147483647, 52247u);
                    global1 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(abs(var_0.d), -global1.x, _wgslsmith_add_i32(arg_0.x, ~(-15383)), ~arg_0.x), arg_0), vec4<i32>(global0.d, ~firstLeadingBit(~var_0.d), global0.d, ~(~(~var_0.d))));
                    var var_1 = _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(~select(arg_0.xy, global1.xx, true), arg_0.zw), -(~vec2<i32>(_wgslsmith_sub_i32(global0.d, global1.x), -23802)));
                    var var_2 = (!true & !(false & func_6(Struct_1(var_0.c.yz, global0.b, vec3<u32>(4294967295u, 1u, 0u), global0.d, 49245u), vec3<f32>(-1790.0, 784.0, -1103.0), arg_0))) | false;
                }
            }
            if (!false) {
                return ~global0.c.zy;
            }
        }
    }
    if (!(global0.d == -(~(-1)))) {
        var var_0 = global0.d ^ ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-19319 << (global0.e % 32u), ~(-32209), -2147483648), 15175 & -1);
    }
    global1 = arg_0 | countOneBits(~(abs(arg_0) ^ max(arg_0, arg_0)));
    global1 = ~(-arg_0);
    var var_0 = Struct_1(u_input.a.yy, _wgslsmith_f_op_f32(-802.0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-162.0)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -372.0), _wgslsmith_div_f32(1000.0, 1623.0)))), global0.c, (_wgslsmith_sub_i32(global0.d >> (40653u % 32u), global1.x ^ -37449) << (u_input.a.x % 32u)) ^ -1, ~34517u);
    return vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, max(_wgslsmith_add_u32(29806u, global0.a.x), _wgslsmith_div_u32(20380u, 1u))), 0u) << (var_0.c.yy % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -(~max(vec4<i32>(-28752, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, 0, 30920, 3206), vec4<i32>(global1.x, global0.d, global1.x, global0.d)), reverseBits(global1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, global1.x), vec2<i32>(-9195, global1.x))), ~(-vec4<i32>(0, global0.d, 1, 2147483647))));
    switch (_wgslsmith_dot_vec3_i32(vec3<i32>(1, firstTrailingBit(-1), global1.x), -global1.wzy)) {
        case -38609: {
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                break;
            }
            global1 = abs(vec4<i32>(min(-(~(-2147483648)), reverseBits(global1.x)), _wgslsmith_mult_i32(select(global1.x, global0.d, !global0.b), -66263), max(_wgslsmith_mod_i32(global0.d | -1, -1), global1.x), 1141));
            if (min(min(global0.c.x ^ u_input.a.x, _wgslsmith_div_u32(1u, u_input.a.x)), 1u ^ 4294967295u) >= _wgslsmith_add_u32(5648u, select(9477u, _wgslsmith_dot_vec3_u32(u_input.a.wwz, u_input.a.zzx), true) ^ ~18947u)) {
                var var_0 = Struct_1(global0.a, global0.b, abs(firstLeadingBit(~(vec3<u32>(0u, global0.c.x, 1u) >> (u_input.a.xwx % vec3<u32>(32u))))), 2147483647, _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.wz), u_input.a.zz >> (func_1(vec4<i32>(global0.d, global1.x, global0.d, global1.x) & vec4<i32>(global0.d, global1.x, global1.x, global1.x)) % vec2<u32>(32u))));
                var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-648.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(837.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1531.0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1020.0)), 1382.0, !global0.b)))))));
                let var_2 = global0.d;
            }
            if (false) {
            }
            global0 = Struct_1(abs(vec2<u32>(_wgslsmith_sub_u32(54877u ^ global0.c.x, firstTrailingBit(34958u)), ~(~41394u))), !global0.b, select(func_5(func_4(_wgslsmith_f_op_f32(251.0 + 1723.0), select(global0.b, true, global0.b)), -914.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1489.0))), global0.c, select(vec3<bool>(!false, all(vec2<bool>(global0.b, true)), !true), !vec3<bool>(true, true, true), global0.b)), 1, _wgslsmith_sub_u32(u_input.a.x, select(_wgslsmith_mod_u32(~60696u, global0.c.x & 0u), ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 1u, 104791u)), any(select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(false, global0.b, false), vec3<bool>(global0.b, global0.b, true))))));
        }
        case 31866: {
            if (!global0.b) {
                global0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-805.0), _wgslsmith_f_op_f32(609.0 + 1026.0))))), _wgslsmith_f_op_f32(ceil(299.0))), any(select(select(!vec3<bool>(global0.b, true, global0.b), select(vec3<bool>(true, true, global0.b), vec3<bool>(true, true, true), vec3<bool>(global0.b, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, global0.b), global0.b)), vec3<bool>(all(vec3<bool>(false, global0.b, global0.b)), global0.b, !global0.b), select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(true, global0.b, true), global0.b))));
                let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -2704.0))), _wgslsmith_f_op_f32(f32(-1.0) * -2261.0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405.0)), _wgslsmith_f_op_f32(-352.0 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -853.0)))))), -632.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-370.0, _wgslsmith_f_op_f32(floor(1092.0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(392.0 - -474.0) + 428.0)) - _wgslsmith_f_op_f32(-1000.0)));
                global1 = -(~vec4<i32>(7438, global1.x, func_3(func_3(global0.d, vec4<i32>(11947, 7111, -35857, 1), false).x, vec4<i32>(global1.x, global1.x, 2147483647, 1) ^ vec4<i32>(1, -19573, 24630, -2147483648), false).x, -_wgslsmith_add_i32(-2147483648, 1)));
            }
            global1 = ~(~(-vec4<i32>(_wgslsmith_clamp_i32(global1.x, 17944, 34370), global0.d << (44983u % 32u), ~(-9598), ~(-15689))));
            global0 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(global0.e, 22165u)), ~_wgslsmith_div_vec2_u32(global0.c.yz, vec2<u32>(27584u, 52304u))), global0.c.xx), true, _wgslsmith_mod_vec3_u32(vec3<u32>(global0.e, 4294967295u, ~(~u_input.a.x)), u_input.a.wzw), global0.d, 63529u);
        }
        case 0: {
            var var_0 = firstLeadingBit(~select(59671u, ~global0.e, false)) & ~4294967295u;
            return;
        }
        default: {
            var var_0 = vec2<bool>(all(select(select(select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, false, global0.b), true), !vec3<bool>(global0.b, false, global0.b), true), vec3<bool>(all(vec2<bool>(false, global0.b)), !global0.b, global0.b), !vec3<bool>(global0.b, true, true))), min(~(~4294967295u), 4294967295u | 20143u) == global0.c.x);
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                global0 = func_4(851.0, false);
            }
            switch (1) {
                case 2147483647: {
                    global1 = abs(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(61409, 12508, global0.d, global1.x), vec4<i32>(-2147483648, 6107, -7865, 0)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.d, 0, global0.d, global1.x), vec4<i32>(global1.x, global1.x, global0.d, global0.d))) & (~vec4<i32>(global0.d, global1.x, global0.d, global0.d) ^ reverseBits(vec4<i32>(2147483647, -59727, global1.x, global0.d)))) & vec4<i32>(abs(_wgslsmith_div_i32(1, global1.x)) << (7260u % 32u), -9676, global0.d, min(~global0.d, 0));
                    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1055.0)), true);
                }
                case 0: {
                    global0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-992.0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1115.0) - _wgslsmith_f_op_f32(f32(-1.0) * -274.0)) + -617.0)), all(!select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, true), vec2<bool>(var_0.x, global0.b), false), !var_0.x)));
                    let var_1 = Struct_1(abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a.x), global0.a), vec2<u32>(76062u, 55654u)), global0.c.yx | vec2<u32>(4294967295u, 4294967295u), vec2<u32>(46637u & 48327u, 4294967295u))), true, global0.c, global0.d, 0u);
                    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -487.0), _wgslsmith_f_op_f32(sign(403.0)), _wgslsmith_f_op_f32(trunc(274.0))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2768.0, -2333.0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2134.0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -738.0))))), _wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-800.0)) + 1035.0))));
                    let var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), !global0.b);
                    var var_4 = reverseBits(-20837);
                }
                default: {
                    var_0 = select(!select(!select(vec2<bool>(false, var_0.x), vec2<bool>(true, global0.b), vec2<bool>(var_0.x, true)), select(!vec2<bool>(true, true), vec2<bool>(global0.b, true), any(vec3<bool>(false, global0.b, var_0.x))), vec2<bool>(!false, var_0.x)), !select(!select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(true, global0.b)), vec2<bool>(var_0.x | global0.b, any(vec2<bool>(false, var_0.x))), vec2<bool>(var_0.x & var_0.x, true)), !(false || false));
                    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(996.0 + -1000.0) - _wgslsmith_f_op_f32(-694.0)), global0.b);
                    global1 = vec4<i32>(-27348 | -49991, firstLeadingBit(31936), 0, global0.d);
                    let var_2 = ~vec4<u32>(~var_1.e, var_1.a.x, _wgslsmith_add_u32(firstTrailingBit(~1u), u_input.a.x), ~(~_wgslsmith_mod_u32(9426u, 26066u)));
                }
            }
        }
    }
    var var_0 = vec2<u32>(global0.c.x, ~(6290u << (_wgslsmith_mult_u32(~global0.e, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), global0.c)) % 32u)));
    let var_1 = func_4(_wgslsmith_f_op_f32(-1000.0), false);
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            global0 = Struct_1(vec2<u32>(14255u, ~69962u), var_1.b, min(var_1.c, var_1.c), 22037, _wgslsmith_mult_u32(12552u, 10036u));
            continue;
        }
        let var_2 = global0.a.x;
        let var_3 = -_wgslsmith_add_vec4_i32(vec4<i32>(global0.d, var_1.d, func_3(1673, vec4<i32>(global0.d, var_1.d, 0, -71245), var_1.b).x, 0) << (u_input.a % vec4<u32>(32u)), select(~(vec4<i32>(global1.x, global1.x, var_1.d, 11755) & vec4<i32>(14525, -74173, var_1.d, global1.x)), select(max(vec4<i32>(50424, -1, 2147483647, global0.d), vec4<i32>(global0.d, 2147483647, 15911, 1671)), -vec4<i32>(-1383, global1.x, global1.x, var_1.d), !global0.b), !vec4<bool>(true, var_1.b, var_1.b, true)));
    }
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(1, ~(-1)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1674.0, 791.0, -1368.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(140.0, 276.0, -154.0) * vec3<f32>(-221.0, -711.0, -1099.0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-271.0, 676.0, -166.0)))))), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(global0.c.x, var_1.c.x, 1u, 4294967295u)), abs((vec4<u32>(global0.e, global0.e, var_0.x, var_0.x) << (u_input.a % vec4<u32>(32u))) & ~vec4<u32>(u_input.a.x, var_1.a.x, 4294967295u, 34975u))), ~global1.wwx, ~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.x, _wgslsmith_mult_u32(var_1.e, var_0.x)), global0.a));
}

