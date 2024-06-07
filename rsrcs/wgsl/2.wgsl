// {"0:0":[181,86,85,66]}
// Seed: 14659256646626562799

struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-554.0, 1958.0);

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: u32 = 21413u;

var<private> LOOP_COUNTERS: array<u32, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn func_6() -> vec4<bool> {
    let var_0 = Struct_1(~firstLeadingBit(global1.a));
    global2 = -176.0;
    for (var var_1 = 2147483647; var_1 == 2147483647; global2 = 768.0) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        break;
    }
    global1 = Struct_1(var_0.a);
    global3 = 88260u;
    return !select(select(select(vec4<bool>(false, true, true, false), !vec4<bool>(false, false, true, false), 1000.0 >= global0.x), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), any(vec4<bool>(false, true, true, false))), vec4<bool>(u_input.a > u_input.a, -1787.0 == -1590.0, false, !true)), vec4<bool>(any(vec4<bool>(true, false, true, true)), all(vec3<bool>(true, true, true)) | true, any(vec3<bool>(false, false, false)), true), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 2147483647, global1.a.x) & vec3<i32>(global1.a.x, 2147483647, var_0.a.x), var_0.a.yzx & var_0.a.xyx) <= 1);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        if (false) {
            var var_0 = all(func_6()) | false;
            var var_1 = Struct_1(arg_1.a);
        }
        continue;
    }
    global0 = arg_0.zz;
    for (; ; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        let var_0 = ~reverseBits(~(~reverseBits(-2147483648)));
        continue;
    }
    var var_0 = Struct_1(global1.a);
    var var_1 = _wgslsmith_mult_vec4_u32((~vec4<u32>(4294967295u, u_input.a, u_input.a, 0u) >> (~vec4<u32>(4294967295u, u_input.a, 1u, u_input.a) % vec4<u32>(32u))) >> (~(_wgslsmith_mult_vec4_u32(vec4<u32>(883u, 1u, 4294967295u, 63498u), vec4<u32>(4294967295u, 1u, 0u, u_input.a)) | abs(vec4<u32>(4294967295u, u_input.a, 47444u, u_input.a))) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, 1u), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(9302u, 87045u, u_input.a, u_input.a))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))));
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = -_wgslsmith_clamp_i32(arg_0.a.x << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.a, u_input.a, 1u), vec4<u32>(82746u, u_input.a, u_input.a, 0u), true), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) % 32u), arg_0.a.x, arg_1.a.x);
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(43458, arg_1.a.x, arg_0.a.x, 1), _wgslsmith_clamp_vec4_i32(~arg_1.a, _wgslsmith_mod_vec4_i32(arg_0.a, arg_1.a), abs(global1.a)) << (reverseBits(countOneBits(vec4<u32>(7091u, 0u, 4294967295u, 1u))) % vec4<u32>(32u))));
    var var_2 = abs(u_input.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(round(global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
    return all(vec3<bool>(all(vec4<bool>(!true, !true, select(true, true, false), arg_1.a.x <= arg_1.a.x)), -1137.0 > 1782.0, true));
}

fn func_8(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(-_wgslsmith_div_i32(-67147 & global1.a.x, reverseBits(1)), select(global1.a.x, max(2147483647, global1.a.x | -27508), all(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)))) != _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(reverseBits(~global1.a), ~_wgslsmith_add_vec4_i32(global1.a, global1.a)), -1 << (_wgslsmith_sub_u32(min(20886u, 53117u), 34939u) % 32u));
    if (!all(vec4<bool>(!(false && arg_0), false, true, false))) {
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            global0 = arg_1.zx;
        }
        switch (~(-14050)) {
            case -50892: {
                let var_1 = func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, arg_1.x))) - global0.x), arg_1.x, -123.0), func_5(_wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1)))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-24771, -26914, -13820, global1.a.x), global1.a)), 2147483647, arg_1.xx), global1.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-400.0, -1616.0)))), vec2<f32>(345.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))))));
            }
            case 2147483647: {
                var var_1 = func_5(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, arg_1.x, -408.0))))))), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -123.0), global0.x, _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1034.0, -408.0)), _wgslsmith_f_op_vec3_f32(abs(arg_1)), true))), func_5(_wgslsmith_f_op_vec3_f32(-arg_1), Struct_1(global1.a), _wgslsmith_mod_i32(reverseBits(global1.a.x), -1), vec2<f32>(789.0, _wgslsmith_f_op_f32(min(-518.0, arg_1.x)))), -59187, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(arg_1.yx))))), 2147483647, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yy)))));
                var var_2 = func_5(arg_1, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1, vec3<f32>(global0.x, global0.x, -1004.0)) * arg_1)), func_5(vec3<f32>(_wgslsmith_f_op_f32(-893.0), -1280.0, _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(var_1.a), (global1.a.x ^ -21964) << (_wgslsmith_div_u32(16842u, 33541u) % 32u), _wgslsmith_f_op_vec2_f32(-arg_1.xz)), ~(~global1.a.x), arg_1.yx), -4496, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-arg_1.x)) - vec2<f32>(_wgslsmith_f_op_f32(max(-461.0, global0.x)), _wgslsmith_f_op_f32(arg_1.x + 168.0)))));
                global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.yx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(664.0, _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 272.0) + arg_1.zy), _wgslsmith_f_op_vec2_f32(-arg_1.xy)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(863.0, _wgslsmith_f_op_f32(select(global0.x, arg_1.x, arg_0))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(879.0, arg_1.x))), vec2<f32>(global0.x, arg_1.x))))), vec2<bool>(arg_0 & true, any(func_6().yxy))));
            }
            default: {
                var_0 = arg_0;
                var var_1 = vec3<f32>(-510.0, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1233.0)));
            }
        }
        for (; ~global1.a.x == -global1.a.x; ) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.yx, vec2<f32>(565.0, global0.x))) + arg_1.zx))));
        }
        let var_1 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1000.0, arg_1.x)), _wgslsmith_f_op_f32(f32(-1.0) * -376.0), _wgslsmith_f_op_f32(-arg_1.x))), vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1.0) * -586.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1231.0 + global0.x) - arg_1.x), 184.0)), Struct_1(abs(global1.a | ~global1.a)), i32(-1) * 0, vec2<f32>(_wgslsmith_f_op_f32(-1337.0 - _wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_f_op_f32(round(arg_1.x))));
    }
    let var_1 = global1.a.x;
    let var_2 = ~global1.a.xx;
    switch (var_2.x) {
        case 2147483647: {
            switch (var_2.x) {
                case -1: {
                    let var_3 = func_7(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -268.0, 2416.0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2442.0, arg_1.x, 747.0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) - arg_1)), Struct_1(countOneBits(global1.a)), ~(-11795), arg_1.xx), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * arg_1) - vec3<f32>(-473.0, _wgslsmith_f_op_f32(ceil(452.0)), global0.x)), Struct_1(global1.a), 1, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-503.0 * -217.0)) - arg_1.xy)));
                    var var_4 = vec4<i32>(-global1.a.x, func_5(vec3<f32>(_wgslsmith_div_f32(942.0, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-998.0), -1452.0, true)), global0.x), func_5(arg_1, Struct_1(select(global1.a, vec4<i32>(-3423, global1.a.x, var_2.x, 0), vec4<bool>(true, false, false, false))), ~(-1), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.zx * arg_1.xz)))), 12129, _wgslsmith_div_vec2_f32(arg_1.xx, vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - 110.0), _wgslsmith_f_op_f32(-232.0)))).a.x, 1, _wgslsmith_dot_vec4_i32(vec4<i32>(~countOneBits(28117), ~(-30881), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, 13018, 0) ^ vec3<i32>(var_2.x, global1.a.x, -54645), ~global1.a.yxz), _wgslsmith_sub_i32(2147483647, global1.a.x)), global1.a));
                    let var_5 = _wgslsmith_div_i32(~abs(2147483647) << (~max(max(arg_2, arg_2), u_input.a) % 32u), -1);
                    let var_6 = Struct_1(global1.a);
                    let var_7 = func_5(vec3<f32>(_wgslsmith_f_op_f32(select(1448.0, -509.0, var_3)), arg_1.x, arg_1.x), func_5(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-677.0)))), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(step(657.0, 643.0))), Struct_1(_wgslsmith_div_vec4_i32(reverseBits(var_6.a), var_6.a)), var_4.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.zz - arg_1.zx), arg_1.xx)))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, -2147483648), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_6.a.x, var_6.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(0, 2147483647), var_6.a.xx)), ~vec2<i32>(global1.a.x, var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(345.0 - global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1565.0), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1604.0))))));
                }
                case 0: {
                }
                case -17888: {
                    let var_3 = global1.a.x;
                }
                default: {
                    let var_3 = func_5(arg_1, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(316.0, 527.0, 440.0)), Struct_1(_wgslsmith_sub_vec4_i32(global1.a, global1.a)), var_2.x, _wgslsmith_div_vec2_f32(arg_1.zx, _wgslsmith_f_op_vec2_f32(arg_1.yy * vec2<f32>(global0.x, global0.x)))), i32(-1) * -2147483648, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1809.0, global0.x)) + _wgslsmith_f_op_f32(886.0 - global0.x)), _wgslsmith_f_op_f32(-458.0))), -1, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(arg_1.zz, vec2<f32>(_wgslsmith_f_op_f32(global0.x * arg_1.x), _wgslsmith_div_f32(global0.x, arg_1.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1220.0, arg_1.x))), arg_1.xy))));
                    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1360.0 - _wgslsmith_f_op_f32(-1901.0 * _wgslsmith_f_op_f32(-1924.0 * -976.0)))), global0.x));
                    var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.x, global0.x))))) - -671.0)));
                }
            }
            let var_3 = Struct_1(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(6630, global1.a.x, 4450, 0), vec4<i32>(global1.a.x, 2147483647, -1, -38311), vec4<i32>(global1.a.x, 8431, 8157, 1)), global1.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, 2147483647, global1.a.x, global1.a.x), global1.a, vec4<i32>(0, global1.a.x, var_2.x, var_2.x))) ^ (vec4<i32>(var_2.x, global1.a.x, 50872, global1.a.x) & (vec4<i32>(var_2.x, -1, global1.a.x, global1.a.x) ^ vec4<i32>(var_2.x, 51566, var_2.x, global1.a.x))), global1.a, vec4<bool>(!all(vec2<bool>(arg_0, false)), arg_1.x == _wgslsmith_f_op_f32(arg_1.x + global0.x), arg_0 | !false, global0.x <= _wgslsmith_f_op_f32(-global0.x))));
        }
        case 34: {
            let var_3 = Struct_1(-(~(global1.a & reverseBits(global1.a))));
            let var_4 = countOneBits(reverseBits(~_wgslsmith_add_i32(-14374, 0)));
            let var_5 = func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-625.0 - 835.0), _wgslsmith_f_op_f32(-arg_1.x)))), arg_1)), Struct_1(_wgslsmith_div_vec4_i32(reverseBits(global1.a), vec4<i32>(var_3.a.x, 27713, -1, 4535)) << (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(1u, 88255u, 37448u, 38264u)), max(vec4<u32>(69859u, arg_2, u_input.a, 11706u), vec4<u32>(u_input.a, 122779u, u_input.a, arg_2))) % vec4<u32>(32u))), reverseBits(func_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, global0.x, 575.0))))), func_5(arg_1, Struct_1(vec4<i32>(-2147483648, 18465, -4602, 60820)), i32(-1) * -8096, arg_1.yz), -1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 982.0))).a.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-809.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129.0 + global0.x))))));
        }
        default: {
            global3 = arg_2;
            for (var var_3 = 55128; any(func_6()) || false; var_0 = arg_0) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var var_4 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(1, 0), i32(-1) * -27963));
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var_0 = arg_0;
                global3 = ~(29003u | _wgslsmith_mult_u32(countOneBits(_wgslsmith_div_u32(23611u, arg_2)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(5899u, 53104u, 0u, 32052u), vec4<u32>(arg_2, 30853u, 19532u, arg_2)), ~vec4<u32>(u_input.a, arg_2, u_input.a, 1u))));
                var var_3 = func_5(_wgslsmith_f_op_vec3_f32(-arg_1), func_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1, vec3<f32>(global0.x, arg_1.x, arg_1.x)))))), Struct_1(vec4<i32>(global1.a.x, global1.a.x, 14452, 2147483647) & max(vec4<i32>(-1, -2147483648, global1.a.x, global1.a.x), vec4<i32>(var_2.x, global1.a.x, 0, global1.a.x))), firstTrailingBit(~_wgslsmith_mod_i32(-30790, var_2.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yy + arg_1.zy), vec2<f32>(-688.0, -1472.0)), _wgslsmith_f_op_vec2_f32(step(arg_1.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, global0.x))))))), global1.a.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x) + arg_1.xy))));
                break;
            }
        }
    }
    return Struct_1((global1.a << ((~vec4<u32>(22226u, u_input.a, u_input.a, 4294967295u) << (vec4<u32>(86227u, 0u, arg_2, 5317u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ ~global1.a);
}

fn func_4() -> Struct_1 {
    if (true) {
        let var_0 = func_8(select(any(!(!vec4<bool>(true, false, false, true))), func_7(func_5(vec3<f32>(-220.0, global0.x, -1378.0), Struct_1(vec4<i32>(global1.a.x, global1.a.x, -19264, -43279)), 0, vec2<f32>(-852.0, 1298.0)), Struct_1(global1.a)) | !true, !false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 246.0)), _wgslsmith_f_op_f32(max(-704.0, global0.x))))), max(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(28834u, u_input.a), vec2<u32>(u_input.a, 130901u), vec2<bool>(true, true)), vec2<u32>(u_input.a, 0u)), ~(~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_clamp_u32(4294967295u, u_input.a, ~1472u)));
        switch (abs(min(_wgslsmith_clamp_i32(abs(0), -12529, select(func_5(vec3<f32>(-485.0, 1648.0, global0.x), Struct_1(vec4<i32>(global1.a.x, global1.a.x, var_0.a.x, -1)), -40225, vec2<f32>(global0.x, global0.x)).a.x, _wgslsmith_dot_vec2_i32(var_0.a.wx, global1.a.wy), any(vec3<bool>(false, true, false)))), i32(-1) * -func_8(false, vec3<f32>(global0.x, global0.x, global0.x), u_input.a).a.x))) {
            case -1: {
                global2 = _wgslsmith_f_op_f32(-725.0);
                global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x))));
            }
            case 65939: {
            }
            default: {
                let var_1 = global1.a.x << (~(~(select(u_input.a, 1u, false) & 64547u)) % 32u);
                let var_2 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-686.0, global0.x, global0.x), vec3<f32>(-1022.0, global0.x, global0.x)))))), var_0, -(~(-16654)), vec2<f32>(global0.x, -1579.0));
                global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) * vec2<f32>(global0.x, global0.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x)))))));
                let var_3 = Struct_1(vec4<i32>(-1) * -vec4<i32>(18878, _wgslsmith_div_i32(var_2.a.x, var_0.a.x), var_1, _wgslsmith_dot_vec2_i32(global1.a.zx, var_0.a.zz)));
            }
        }
        let var_1 = any(func_6().yw);
        var var_2 = var_0;
        let var_3 = vec4<bool>(func_7(var_0, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1405.0, -881.0)), var_0, _wgslsmith_mult_i32(-global1.a.x, _wgslsmith_add_i32(38980, var_0.a.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, 562.0)))))), var_1, false, all(!select(vec3<bool>(var_1, var_1, true), select(vec3<bool>(false, false, var_1), vec3<bool>(false, var_1, false), var_1), !vec3<bool>(var_1, false, true))));
    }
    let var_0 = global1.a.x;
    global3 = ~_wgslsmith_dot_vec4_u32(select(~(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) ^ vec4<u32>(u_input.a, 0u, u_input.a, 48270u)), vec4<u32>(25596u, 13704u, 4294967295u, 4294967295u) >> (~vec4<u32>(1u, u_input.a, u_input.a, 0u) % vec4<u32>(32u)), !func_6()), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), ~vec4<u32>(u_input.a, 999u, 12855u, 9222u)));
    global0 = vec2<f32>(global0.x, 780.0);
    let var_1 = Struct_1(vec4<i32>(global1.a.x, 28179 & global1.a.x, global1.a.x >> (~13898u % 32u), -(-26415 >> (~21454u % 32u))));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> i32 {
    switch (-global1.a.x) {
        case 2147483647: {
            global1 = arg_0;
            let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-710.0, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(595.0 - global0.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, 544.0)), _wgslsmith_f_op_f32(min(global0.x, 747.0)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000.0, global0.x, 100.0))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, 803.0)))))));
            if (all(select(select(!vec3<bool>(false, arg_2, true), !vec3<bool>(arg_2, arg_2, true), arg_2), !vec3<bool>(arg_2, false, arg_2), !(!true))) | arg_2) {
                let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.xx);
                let var_2 = func_4();
                let var_3 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * global0.x), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1148.0, 1553.0))), var_1.x)), var_2, (_wgslsmith_mod_i32(-2147483648, abs(arg_0.a.x)) << (56665u % 32u)) | ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, var_2.a.x), arg_0.a.wz), vec2<f32>(416.0, _wgslsmith_f_op_f32(-var_1.x)));
            }
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -995.0)));
                var var_2 = arg_0;
                let var_3 = var_1;
                let var_4 = select(max(firstLeadingBit(countOneBits(vec3<u32>(0u, arg_1, 0u))), min(min(vec3<u32>(0u, u_input.a, 25292u), vec3<u32>(arg_1, u_input.a, 4294967295u)) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, arg_1), vec3<u32>(1u, 1u, arg_1)), ~select(vec3<u32>(arg_1, u_input.a, 4294967295u), vec3<u32>(1u, 22506u, 0u), vec3<bool>(arg_2, true, arg_2)))), ~select(select(vec3<u32>(1u, 107131u, 35657u), vec3<u32>(u_input.a, 0u, 65598u), vec3<bool>(false, arg_2, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(40395u, arg_1, u_input.a), vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(76088u, 36460u, 4294967295u)), vec3<bool>(arg_2, false, true)) ^ vec3<u32>(abs(~0u), u_input.a, 65726u), (true && !all(vec4<bool>(arg_2, true, false, false))) || func_6().x);
                break;
            }
            global1 = arg_0;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            }
            var var_0 = Struct_1(firstLeadingBit(~global1.a));
            var var_1 = arg_0;
            let var_2 = !(!vec3<bool>(true, (arg_2 && true) && false, true));
            global1 = func_8((func_7(arg_0, func_4()) | (true || (true && true))) | func_6().x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 174.0, 551.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, 985.0, -326.0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1687.0, 1124.0)))))), arg_1);
        }
    }
    for (var var_0 = arg_0.a.x; ; var_0 = global1.a.x) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        continue;
    }
    var var_0 = vec2<i32>(~global1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(select(39262, 0, arg_2), ~(-3637), ~arg_0.a.x, 27005 ^ arg_0.a.x) | -(~global1.a), func_4().a));
    let var_1 = Struct_1(~(-_wgslsmith_clamp_vec4_i32(~arg_0.a, abs(vec4<i32>(67338, global1.a.x, var_0.x, global1.a.x)), firstTrailingBit(global1.a))));
    global3 = 4294967295u;
    return 0;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, -(global1.a.x >> (0u % 32u)), _wgslsmith_dot_vec2_i32(select(global1.a.yz, vec2<i32>(global1.a.x, 41745), false), vec2<i32>(0, arg_0) | vec2<i32>(global1.a.x, global1.a.x)), global1.a.x), global1.a ^ vec4<i32>(_wgslsmith_mod_i32(0, -38372), -46985, _wgslsmith_dot_vec2_i32(global1.a.wx, global1.a.zx), -35652), vec4<i32>(-1, _wgslsmith_add_i32(~2147483647, arg_0), 0, global1.a.x)));
    for (var var_0 = 2147483647; ; var_0 -= 1) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(570.0, -114.0, 890.0) - vec3<f32>(global0.x, global0.x, 768.0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(411.0, global0.x, global0.x))) * vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(select(-1006.0, global0.x, true)), _wgslsmith_f_op_f32(ceil(-1146.0)))))));
    }
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0 - -1372.0))))));
    var var_1 = any(!vec2<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), true));
    for (var var_2 = 23250; !(!(global0.x < global0.x) && true) | true; var_2 += 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        var_2 = ~_wgslsmith_add_i32(global1.a.x, ~arg_0);
        switch (global1.a.x) {
            default: {
                let var_3 = Struct_1(vec4<i32>(global1.a.x, func_3(Struct_1(vec4<i32>(arg_0, -26918, arg_0, 7619)), ~arg_1.x, false) | _wgslsmith_mult_i32(arg_0 ^ 2147483647, -11733), -14855, 3091));
                global3 = 4294967295u;
                break;
            }
        }
    }
    return func_8(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(630.0 * _wgslsmith_f_op_f32(-258.0 * global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x))), 33540u);
}

fn func_9(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = select(vec2<bool>(arg_1, arg_1), select(func_6().wz, vec2<bool>(arg_1, true), vec2<bool>(arg_1, !any(vec2<bool>(false, arg_1)))), vec2<bool>(!((global0.x != 335.0) && !false), true));
    var var_1 = abs(func_4().a.x);
    let var_2 = vec3<i32>(15236, arg_2.a.x, global1.a.x);
    var var_3 = arg_3;
    var var_4 = vec4<bool>(false, !arg_1, !all(vec4<bool>(true, arg_1, all(vec3<bool>(var_0.x, true, true)), all(vec2<bool>(false, false)))), all(!select(vec4<bool>(arg_1, true, false, true), vec4<bool>(var_0.x, var_0.x, false, arg_1), !false)));
    return max(~(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) ^ vec4<u32>(abs(~u_input.a), 27100u, 38442u, u_input.a), vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(~arg_0.xy, ~vec2<u32>(78310u, u_input.a))), 1u, ~select(3569u, u_input.a, select(var_4.x, arg_1, false)), firstLeadingBit(~(~u_input.a))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    let var_0 = func_9(~firstTrailingBit(vec3<u32>(38271u, 0u, u_input.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(u_input.a, 34664u, u_input.a))) != ~(~36224u), func_2(5924 ^ -1, vec4<u32>(82094u, u_input.a, 6630u, 12535u) << (max(vec4<u32>(u_input.a, u_input.a, u_input.a, 90064u), vec4<u32>(1u, 0u, u_input.a, 1u)) % vec4<u32>(32u))), Struct_1(global1.a)) >> (vec4<u32>(~107991u, reverseBits(40835u), reverseBits(_wgslsmith_add_u32(u_input.a, firstLeadingBit(0u))), 66914u) % vec4<u32>(32u));
    global3 = ~7892u;
    for (var var_1 = arg_2.a.x; var_1 < -1; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        let var_2 = ~vec3<u32>(u_input.a, 1u, ~func_9(vec3<u32>(var_0.x, var_0.x, var_0.x), !arg_3, func_8(arg_3, vec3<f32>(arg_0, global0.x, -852.0), 87664u), arg_2).x);
        var var_3 = Struct_1(-firstLeadingBit(func_2(~1, _wgslsmith_mod_vec4_u32(var_0, vec4<u32>(var_0.x, 23017u, u_input.a, 3251u))).a));
        var var_4 = func_8(!any(!vec4<bool>(arg_3, false, false, true)), vec3<f32>(-2694.0, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1350.0, arg_0, false)) * global0.x)), _wgslsmith_f_op_f32(ceil(arg_0))), var_0.x);
        var var_5 = abs(var_3.a & vec4<i32>(var_4.a.x, 1, -(i32(-1) * -28912), var_4.a.x));
    }
    global3 = var_0.x;
    var var_1 = var_0;
    return !vec2<bool>(all(select(!vec2<bool>(true, true), !vec2<bool>(arg_3, true), !vec2<bool>(arg_3, false))), !true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)) | 4294967295u, ~59559u >> (firstTrailingBit(45448u) % 32u), firstLeadingBit(u_input.a), abs(4294967295u)) >> (vec4<u32>(firstTrailingBit(u_input.a), ~_wgslsmith_sub_u32(u_input.a, u_input.a), 10351u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 903u) % vec2<u32>(32u)), select(vec2<u32>(0u, 42817u), vec2<u32>(4294967295u, 1u), false))) % vec4<u32>(32u)));
    var var_1 = any(select(!(!vec2<bool>(true, false)), !(!func_1(1251.0, Struct_1(global1.a), Struct_1(vec4<i32>(-46512, 8645, 1, global1.a.x)), false)), vec2<bool>(!false, func_1(_wgslsmith_f_op_f32(min(100.0, global0.x)), Struct_1(global1.a), Struct_1(vec4<i32>(-21528, global1.a.x, global1.a.x, 36836)), all(vec4<bool>(true, false, true, true))).x)));
    let var_2 = !(!select(!vec3<bool>(true, false, false), vec3<bool>(func_6().x, !false, u_input.a >= var_0.x), -185 == abs(0)));
    for (; ; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            continue;
        }
        var var_3 = vec2<bool>(var_2.x, false);
        switch (_wgslsmith_sub_i32(-_wgslsmith_div_i32((0 >> (var_0.x % 32u)) & 0, -2147483648), global1.a.x)) {
            case -3446: {
                continue;
            }
            case 2147483647: {
                var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(101.0)))) < _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199.0 + _wgslsmith_f_op_f32(exp2(-1201.0)))));
                var var_5 = vec4<bool>(!true, false, var_3.x, false);
                global3 = 1u;
                var_4 = !var_2.x;
                var var_6 = vec4<u32>(~var_0.x, var_0.x, u_input.a, _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.a, var_0.x)), vec2<u32>(~1u, 0u))) ^ ~max(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, 0u, var_0.x, u_input.a), vec4<u32>(var_0.x, var_0.x, 1u, u_input.a) & vec4<u32>(3715u, 44497u, var_0.x, u_input.a)), ~vec4<u32>(0u, var_0.x, 0u, 0u));
            }
            case -1: {
                break;
            }
            case -48585: {
            }
            default: {
                var var_4 = Struct_1(min(global1.a, func_8(!true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -2309.0) + vec3<f32>(-1000.0, -435.0, 573.0)), vec3<f32>(global0.x, global0.x, -169.0), false)), 26251u).a));
            }
        }
        let var_4 = var_2;
    }
    var var_3 = _wgslsmith_f_op_f32(-global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2080.0, 1286.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(-848.0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-121.0, -1907.0, -741.0, global0.x), vec4<f32>(global0.x, -1757.0, global0.x, -1000.0))))))), -2147483648, global1.a.x);
}

