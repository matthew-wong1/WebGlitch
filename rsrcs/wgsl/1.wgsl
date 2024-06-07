// {"0:0":[103,211,153,215,148,232,215,4,233,50,215,92,238,11,50,112,41,247,237,254,215,28,244,146,160,251,105,210,82,4,211,121,65,37,96,115,204,23,207,63,19,141,2,3,245,107,174,75]}
// Seed: 4184324733923736331

struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    let var_0 = vec2<bool>(all(!select(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(arg_0.b.a.x, false, false, true), vec4<bool>(true, global0.x, true, arg_0.e.a.x)), vec4<bool>(arg_0.b.a.x, true, false, arg_0.e.a.x), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, false, true, true), true))), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x + -1010.0))) == _wgslsmith_f_op_f32(-1355.0)));
    for (; var_0.x; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global0 = select(!vec2<bool>((arg_1.x >> (12571u % 32u)) >= 0u, u_input.a.x < (u_input.a.x << (arg_1.x % 32u))), select(!(!(!vec2<bool>(false, true))), !select(vec2<bool>(false, arg_0.e.a.x), !vec2<bool>(true, var_0.x), vec2<bool>(false, true)), vec2<bool>(select(!true, all(vec3<bool>(global0.x, false, global0.x)), var_0.x), arg_0.c.a.x)), false);
        var var_1 = false;
        let var_2 = Struct_1(select(select(vec2<bool>(!true, true), arg_0.c.a, var_0), select(arg_0.c.a, !arg_0.e.a, vec2<bool>(false, all(vec2<bool>(arg_0.e.a.x, global0.x)))), !all(select(vec4<bool>(true, global0.x, arg_0.e.a.x, false), vec4<bool>(var_0.x, arg_0.e.a.x, false, var_0.x), vec4<bool>(global0.x, true, var_0.x, var_0.x)))));
        var var_3 = !any(!select(!vec3<bool>(false, var_0.x, arg_0.c.a.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(arg_0.b.a.x, true, false), vec3<bool>(true, global0.x, true)), false));
    }
    switch (-u_input.a.x | abs(2147483647)) {
        case -22569: {
            return countOneBits(1u);
        }
        default: {
            global0 = !vec2<bool>(global0.x, any(vec2<bool>(false, true && global0.x)));
            if (global0.x) {
                var var_1 = Struct_2(vec3<f32>(-920.0, 1182.0, _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, 393.0)))), arg_0.e, Struct_1(vec2<bool>(any(var_0), false)), arg_0.a, arg_0.e);
                var_1 = arg_0;
                let var_2 = arg_0;
            }
            var var_1 = 4294967295u;
            let var_2 = _wgslsmith_mult_vec2_u32(select(~vec2<u32>(u_input.b.x, 1u) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, arg_1.x) >> (vec2<u32>(u_input.d, arg_1.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(arg_1.yx, arg_1.yy)), _wgslsmith_div_vec2_u32(u_input.c | ~vec2<u32>(4294967295u, 36175u), ~arg_1.xx), true), ~arg_1.yx);
        }
    }
    var var_1 = vec4<f32>(arg_0.d.x, _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.d.x, arg_0.d.x);
    if (all(vec4<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1354.0, 734.0))) <= _wgslsmith_f_op_f32(-arg_0.d.x), !(!(!true)), (0 ^ (u_input.a.x >> (arg_1.x % 32u))) <= -2147483648))) {
        var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.yy)) * _wgslsmith_f_op_vec2_f32(-arg_0.d.xz)), vec2<f32>(_wgslsmith_f_op_f32(round(161.0)), arg_0.d.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.xy + _wgslsmith_f_op_vec2_f32(var_1.wy - var_1.yz)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1149.0, arg_0.d.x))), vec2<f32>(arg_0.a.x, -1503.0), select(var_0, vec2<bool>(false, true), var_0))))), var_1.ww));
        for (var var_3 = 0; var_3 <= 0; var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-var_2.x)))), 623.0, 980.0)) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            global0 = !(!arg_0.c.a);
            var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, var_2.x))))))));
            var_3 = 1;
            var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x - 1912.0), arg_0.d.x))))), 523.0);
        }
        if ((select(false, var_0.x, !true & true) && (reverseBits(select(arg_1.x, 0u, var_0.x)) <= _wgslsmith_mod_u32(0u & arg_1.x, 878u))) & !(any(!vec4<bool>(var_0.x, arg_0.e.a.x, arg_0.c.a.x, true)) && (_wgslsmith_f_op_f32(abs(698.0)) >= _wgslsmith_f_op_f32(arg_0.d.x - var_2.x)))) {
        }
        if (!(0u >= u_input.b.x)) {
            global0 = vec2<bool>(var_0.x, !false);
            var_2 = _wgslsmith_f_op_vec2_f32(arg_0.d.xx * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -799.0), 1000.0))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x))), global0.x)));
            let var_3 = !(true | any(vec4<bool>(select(global0.x, global0.x, false), true, any(vec4<bool>(global0.x, true, global0.x, true)), !arg_0.e.a.x)));
            global0 = select(!arg_0.c.a, arg_0.b.a, !var_0.x);
        }
    }
    return ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~arg_1, _wgslsmith_div_vec3_u32(arg_1, vec3<u32>(64142u, 82466u, 43860u))), vec3<u32>(13293u, arg_1.x, u_input.b.x));
}

fn func_5() -> Struct_1 {
    var var_0 = select(true, global0.x, global0.x);
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(u_input.d, abs(func_6(Struct_2(vec3<f32>(208.0, -1355.0, -1476.0), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(global0.x, false)), vec3<f32>(1221.0, 1389.0, -566.0), Struct_1(vec2<bool>(false, global0.x))), vec3<u32>(u_input.b.x, u_input.b.x, u_input.d)) ^ u_input.b.x)), u_input.d & _wgslsmith_add_u32(_wgslsmith_mod_u32(1354u, ~u_input.b.x), ~(u_input.b.x ^ u_input.b.x)));
    switch (~min(-52177, u_input.a.x)) {
        case -2147483648: {
            var_1 = u_input.c;
            global0 = select(vec2<bool>(min(u_input.a.x, i32(-1) * -47560) <= max(-u_input.a.x, ~0), global0.x), !select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), !(true | global0.x)), select(vec2<bool>(any(!vec4<bool>(global0.x, global0.x, global0.x, false)), false), select(select(select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), true), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(false, global0.x))), !vec2<bool>(global0.x, global0.x), any(vec2<bool>(true, true)) || any(vec4<bool>(global0.x, global0.x, false, false))), vec2<bool>(all(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x))), true)));
        }
        case 14940: {
            if (any(select(vec3<bool>(!global0.x, !global0.x, all(vec3<bool>(true, false, global0.x))), select(vec3<bool>(!global0.x, all(vec4<bool>(global0.x, global0.x, global0.x, false)), any(vec2<bool>(global0.x, global0.x))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, true)), vec3<bool>(global0.x, global0.x, global0.x), global0.x & false), vec3<bool>(all(vec3<bool>(global0.x, global0.x, false)), !true, !global0.x)), all(!vec2<bool>(false, global0.x))))) {
                var var_2 = !true;
            }
            global0 = !select(vec2<bool>(!false, !(!false)), vec2<bool>(false || !global0.x, !(96549 <= 20907)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x && global0.x), vec2<bool>(any(vec2<bool>(true, global0.x)), !global0.x), select(!vec2<bool>(global0.x, false), select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
            global0 = !vec2<bool>(false, false);
            var var_2 = u_input.a;
        }
        case 1: {
            for (var var_2 = 29914; false; var_2 -= 1) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                let var_3 = select(vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(-1135 ^ u_input.a.x, -15968)), firstTrailingBit(vec2<i32>(~reverseBits(0), select(u_input.a.x, countOneBits(u_input.a.x), !false))), vec2<bool>(global0.x, select(all(!vec3<bool>(global0.x, false, false)), global0.x, true)));
                let var_4 = Struct_1(select(!select(vec2<bool>(global0.x, true), !vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, false)), !(!vec2<bool>(false, global0.x)), false));
                return var_4;
            }
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000.0 - 1511.0), _wgslsmith_f_op_f32(605.0 - -411.0), _wgslsmith_f_op_f32(max(1000.0, 1923.0))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1631.0, 1090.0, 1193.0) * vec3<f32>(1400.0, -1588.0, -989.0))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(768.0, -279.0, -416.0)))))), Struct_1(select(!(!vec2<bool>(true, true)), vec2<bool>(global0.x, global0.x | global0.x), vec2<bool>(select(global0.x, false, true), all(vec3<bool>(true, global0.x, true))))), Struct_1(vec2<bool>(global0.x & global0.x, true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188.0, _wgslsmith_f_op_f32(abs(-1557.0)), _wgslsmith_f_op_f32(step(-939.0, 840.0)))))), Struct_1(!select(select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false))));
            }
            for (; ; ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                break;
            }
            switch (abs(u_input.a.x)) {
                case 3293: {
                    let var_2 = u_input.a.x;
                    global0 = vec2<bool>(select(!all(vec4<bool>(false, global0.x, global0.x, true)), true, false) || (((i32(-1) * -2147483648) > u_input.a.x) & (~var_2 <= 21901)), true);
                }
                case 1: {
                    var var_2 = vec3<bool>(any(vec4<bool>(false || !global0.x, !(!global0.x), global0.x, all(vec3<bool>(true, global0.x, global0.x)) && global0.x)), true, global0.x);
                    global0 = select(select(!select(select(vec2<bool>(true, false), vec2<bool>(global0.x, false), var_2.xx), var_2.yx, global0.x), vec2<bool>(u_input.b.x != ~74392u, global0.x), all(vec3<bool>(false, false, any(vec3<bool>(var_2.x, global0.x, true))))), vec2<bool>(true, false), select(select(vec2<bool>(false, all(vec3<bool>(global0.x, var_2.x, var_2.x))), var_2.yz, all(select(vec2<bool>(global0.x, global0.x), var_2.yz, var_2.x))), select(var_2.yz, var_2.xx, var_2.yy), true));
                    var var_3 = u_input.d;
                    var var_4 = _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(min(vec3<u32>(4294967295u, u_input.b.x, var_1.x), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, u_input.d, 50747u), vec3<u32>(var_1.x, 14329u, var_1.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, u_input.d), vec3<u32>(var_1.x, u_input.d, u_input.d))), _wgslsmith_mult_vec3_u32(vec3<u32>(36026u, abs(_wgslsmith_div_u32(74363u, 4294967295u)), countOneBits(countOneBits(var_1.x))), vec3<u32>(_wgslsmith_clamp_u32(2010u, ~73996u, 38870u), 1u, 4294967295u)), vec3<u32>(~_wgslsmith_mod_u32(23598u, var_1.x), u_input.b.x ^ u_input.d, 1u));
                    let var_5 = _wgslsmith_mod_i32(-1, reverseBits(-(-1 | 1) >> (44830u % 32u)));
                }
                case 14511: {
                }
                default: {
                    global0 = vec2<bool>(global0.x, false);
                    var_0 = !any(vec4<bool>(global0.x, 1080.0 == _wgslsmith_f_op_f32(-951.0), all(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, false))), any(vec4<bool>(global0.x, global0.x, global0.x, true)) | global0.x));
                    var_1 = u_input.c;
                    let var_2 = u_input.a.x;
                }
            }
            var var_2 = vec3<f32>(222.0, 1519.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(337.0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1815.0 * 520.0), _wgslsmith_f_op_f32(702.0 * 620.0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(397.0)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000.0, -734.0)))));
        }
        case -23043: {
            if (!false) {
                var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -1042.0)))))) < _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1268.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -499.0) + 510.0))));
                var var_2 = _wgslsmith_div_vec3_i32(select(-reverseBits(abs(vec3<i32>(-2147483648, u_input.a.x, u_input.a.x))), ~(-(~u_input.a)), vec3<bool>(!(-63086 < -2147483648), ~var_1.x < 0u, !any(vec2<bool>(global0.x, false)))), ~(-((vec3<i32>(u_input.a.x, u_input.a.x, 1) << (vec3<u32>(u_input.d, var_1.x, 66803u) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.d, 63143u, u_input.b.x) % vec3<u32>(32u)))));
            }
            for (var var_2 = -1; false; var_2 += 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var_0 = global0.x;
                let var_3 = Struct_1(select(select(!vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true), select(vec2<bool>(any(vec2<bool>(global0.x, global0.x)), -985.0 != 986.0), vec2<bool>(true, !false), _wgslsmith_f_op_f32(exp2(1036.0)) < _wgslsmith_f_op_f32(-482.0 + 1730.0)), !(!(!vec2<bool>(global0.x, global0.x)))));
                var var_4 = 1115.0;
                return var_3;
            }
            var_1 = u_input.c;
            global0 = !select(!(!vec2<bool>(true, true)), !select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), true), !vec2<bool>(false, global0.x), true), any(select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x))));
        }
        default: {
            var_1 = u_input.c;
            switch (countOneBits(~u_input.a.x)) {
                case -2147483648: {
                    var var_2 = ~abs(vec2<u32>(max(4294967295u, u_input.d) >> (abs(var_1.x) % 32u), _wgslsmith_sub_u32(var_1.x >> (3704u % 32u), _wgslsmith_div_u32(0u, u_input.b.x))));
                    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-602.0)), _wgslsmith_f_op_f32(exp2(1000.0))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-508.0))))) - _wgslsmith_f_op_f32(-129.0)));
                }
                default: {
                }
            }
            let var_2 = Struct_1(select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(global0.x, global0.x & true), vec2<bool>(global0.x, !global0.x)), select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, false)), vec2<bool>(false, false), vec2<bool>(global0.x, false)), vec2<bool>(-158.0 > 1592.0, !global0.x), !vec2<bool>(false, false)), vec2<bool>(any(vec3<bool>(global0.x, true, false)), false)));
        }
    }
    for (var var_2 = 2147483647; false; var_2 += 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        break;
    }
    var_1 = u_input.b;
    return Struct_1(!select(!(!vec2<bool>(false, false)), select(vec2<bool>(false, global0.x), !vec2<bool>(global0.x, false), true), vec2<bool>(false, !global0.x)));
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = -(min(vec3<i32>(u_input.a.x, 14276, -2147483648), -u_input.a) ^ ~(-u_input.a)) | u_input.a;
    var var_1 = func_5();
    var var_2 = select(!(!select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, global0.x), true), !vec3<bool>(true, var_1.a.x, false), select(false, arg_0, global0.x))), vec3<bool>(false, global0.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(4015u, 99121u), reverseBits(u_input.b)) >= _wgslsmith_mod_u32(u_input.d, arg_1)), vec3<bool>(var_1.a.x, global0.x, arg_0));
    global0 = !(!var_2.zx);
    var_2 = !(!select(vec3<bool>(global0.x, !global0.x, !true), vec3<bool>(global0.x, any(vec2<bool>(arg_0, var_1.a.x)), true | false), vec3<bool>(true, true | false, 194.0 >= -358.0)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-2057.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-961.0) - _wgslsmith_f_op_f32(640.0 * 999.0)), _wgslsmith_f_op_f32(floor(-783.0)))), Struct_1(!func_5().a), Struct_1(vec2<bool>(var_0.x >= -1, any(select(var_2.xz, vec2<bool>(global0.x, global0.x), vec2<bool>(true, false))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1149.0)), -185.0)), _wgslsmith_f_op_f32(-229.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000.0 - -705.0) * _wgslsmith_f_op_f32(-1364.0 * -1475.0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1382.0))))), Struct_1(var_1.a));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = !arg_0.b.a;
    let var_0 = Struct_1(arg_0.e.a);
    let var_1 = _wgslsmith_f_op_f32(-459.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)));
    var var_2 = func_4(var_0.a.x, ~1u).c;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(-646.0, 130.0)), -426.0), arg_1.a.xy)))) - arg_1.a.xy);
    return Struct_1(!(!vec2<bool>(arg_0.c.a.x, all(arg_2.e.a))));
}

fn func_8(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_3.b.a);
    var_0 = func_5();
    for (var var_1 = -2147483648; ; var_1 -= 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        break;
    }
    var var_1 = func_4(!false, 16031u << (arg_0 % 32u));
    return arg_3.c;
}

fn func_3() -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2304.0, 1215.0, 386.0))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1934.0, 1000.0, -745.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1718.0, -622.0, -673.0)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-343.0, 1024.0, 282.0))))), Struct_1(vec2<bool>(false, true)), func_8(u_input.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-247.0 + 390.0), _wgslsmith_div_f32(-437.0, 362.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-590.0 * 668.0)))), ~(i32(-1) * -37239), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1429.0, -794.0, 1789.0))), func_7(func_4(global0.x, u_input.d), Struct_2(vec3<f32>(130.0, -350.0, 1287.0), Struct_1(vec2<bool>(true, global0.x)), Struct_1(vec2<bool>(true, false)), vec3<f32>(1169.0, -1081.0, 687.0), Struct_1(vec2<bool>(true, false))), Struct_2(vec3<f32>(-1808.0, 508.0, 1598.0), Struct_1(vec2<bool>(true, global0.x)), Struct_1(vec2<bool>(global0.x, true)), vec3<f32>(-256.0, -1064.0, 766.0), Struct_1(vec2<bool>(true, global0.x)))), func_4(true, firstTrailingBit(0u)).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(505.0, 890.0, 123.0))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1330.0, -1903.0, 185.0)))), func_7(func_4(false, u_input.d), func_4(global0.x, 4294967295u), Struct_2(vec3<f32>(-1008.0, 1344.0, 848.0), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(global0.x, global0.x)), vec3<f32>(1251.0, 572.0, -623.0), Struct_1(vec2<bool>(false, global0.x)))))), vec3<f32>(_wgslsmith_f_op_f32(step(-2349.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000.0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-519.0, -244.0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-213.0), _wgslsmith_f_op_f32(round(-952.0)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -690.0))), Struct_1(func_5().a));
}

fn func_2(arg_0: bool) -> Struct_2 {
    return func_3();
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(!global0.x);
    if (any(vec3<bool>(func_2(!true).e.a.x, global0.x, all(vec4<bool>(false, false, false, global0.x)) && true)) && true) {
    }
    global0 = vec2<bool>(global0.x, global0.x);
    global0 = !(!vec2<bool>(!func_5().a.x, var_0.e.a.x));
    var_0 = Struct_2(var_0.d, Struct_1(!var_0.e.a), func_2(!(1u > _wgslsmith_div_u32(0u, u_input.d))).e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.d.x), _wgslsmith_f_op_f32(-1369.0 + var_0.a.x)), _wgslsmith_f_op_f32(round(-1633.0)), 830.0)), func_7(func_2(true), Struct_2(_wgslsmith_f_op_vec3_f32(sign(var_0.d)), Struct_1(var_0.e.a), Struct_1(func_2(false).e.a), vec3<f32>(var_0.d.x, func_4(var_0.c.a.x, u_input.b.x).d.x, _wgslsmith_f_op_f32(-var_0.a.x)), Struct_1(var_0.c.a)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(exp2(509.0)), var_0.d.x), var_0.e, var_0.c, _wgslsmith_f_op_vec3_f32(-func_2(var_0.b.a.x).d), var_0.c)));
    return func_4(true, ~(~max(~42666u, u_input.c.x | u_input.b.x))).e;
}

fn func_9(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    switch (-1) {
        case 10159: {
            for (var var_0: i32; ; var_0 -= 1) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_1 = 1u;
                let var_2 = -2147483648;
            }
            switch (arg_2.x) {
                case -2147483648: {
                    var var_0 = arg_2.x;
                    global0 = func_5().a;
                    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, 19301u, u_input.b.x), vec4<u32>(arg_1, 21625u, u_input.b.x, u_input.c.x)), min(abs(vec4<u32>(u_input.c.x, 11657u, 1u, 41963u) | vec4<u32>(0u, u_input.c.x, 1u, 0u)), max(vec4<u32>(u_input.d, u_input.c.x, 0u, 4294967295u), vec4<u32>(51989u, u_input.d, arg_1, 1u) & vec4<u32>(u_input.d, 41503u, arg_1, u_input.d)))), 4294967295u, (_wgslsmith_clamp_u32(~u_input.c.x, 1u, 4294967295u >> (0u % 32u)) & 1u) | ~1u);
                    var_1 = _wgslsmith_div_vec3_u32(max(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.c.x, var_1.x, u_input.c.x)), ~min(vec3<u32>(var_1.x, arg_1, 4294967295u), vec3<u32>(arg_1, u_input.b.x, 1u)), ~select(vec3<u32>(arg_1, 45934u, var_1.x), vec3<u32>(8453u, var_1.x, arg_1), false)), ~(~vec3<u32>(var_1.x, u_input.c.x, arg_1))), ~(~firstLeadingBit(~vec3<u32>(6382u, 63532u, 56021u))));
                }
                case 0: {
                    return Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000.0, func_3().a.x, _wgslsmith_f_op_f32(-2293.0 + -1339.0)), vec3<f32>(_wgslsmith_div_f32(596.0, -1034.0), _wgslsmith_f_op_f32(select(821.0, 780.0, true)), 427.0), global0.x)))), arg_0, Struct_1(arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(908.0, 2841.0, -1327.0) * vec3<f32>(-1423.0, -385.0, -1342.0)) + vec3<f32>(1241.0, -466.0, -409.0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-315.0, 227.0, -1291.0) - _wgslsmith_f_op_vec3_f32(vec3<f32>(681.0, 765.0, -1064.0) + vec3<f32>(674.0, 1149.0, 1000.0)))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(func_4(arg_0.a.x, u_input.b.x).d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-736.0, 1808.0, -569.0) * vec3<f32>(-564.0, 1557.0, -1000.0))), vec3<f32>(_wgslsmith_f_op_f32(1448.0 * -517.0), 260.0, func_4(true, u_input.c.x).d.x))), arg_0);
                }
                default: {
                    global0 = !arg_0.a;
                    var var_0 = select(abs(select(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.c.x, 1u), vec3<u32>(arg_1, u_input.c.x, 1u)), firstTrailingBit(vec3<u32>(0u, arg_1, arg_1))), vec3<u32>(firstTrailingBit(u_input.c.x), 483u, arg_1 << (u_input.c.x % 32u)), any(vec2<bool>(arg_0.a.x, false)))), vec3<u32>(~1u, _wgslsmith_mod_u32(arg_1, 22279u), _wgslsmith_mod_u32(u_input.d, max(u_input.b.x, 0u) | u_input.d)), vec3<bool>(false & (-946.0 != _wgslsmith_f_op_f32(-194.0 + -799.0)), arg_0.a.x, any(func_1().a)));
                    global0 = arg_0.a;
                    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-323.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(744.0 + 1000.0) + _wgslsmith_f_op_f32(step(122.0, -1612.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541.0 + -1797.0)))), func_1(), arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-681.0 + -708.0), _wgslsmith_div_f32(-1114.0, -510.0), _wgslsmith_f_op_f32(f32(-1.0) * -1207.0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1205.0, 1483.0, -1353.0)))))), func_4(arg_0.a.x, ~func_6(Struct_2(vec3<f32>(1247.0, -2656.0, 772.0), Struct_1(vec2<bool>(arg_0.a.x, arg_0.a.x)), Struct_1(vec2<bool>(false, true)), vec3<f32>(-893.0, -551.0, 203.0), Struct_1(vec2<bool>(true, false))), vec3<u32>(arg_1, 1u, var_0.x)) << (u_input.d % 32u)).c);
                    var_0 = vec3<u32>(~max(_wgslsmith_sub_u32(7921u, 4294967295u), 25501u), _wgslsmith_mod_u32(arg_1, var_0.x), _wgslsmith_add_u32(abs(~u_input.c.x ^ max(arg_1, 1u)), abs(~arg_1)));
                }
            }
            for (; arg_0.a.x; ) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_0 = !arg_0.a;
                continue;
            }
            switch (-(~min(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, arg_2.x), i32(-1) * -1), arg_2.x & 17944))) {
                default: {
                    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1142.0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -983.0) + _wgslsmith_div_f32(-792.0, -108.0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-733.0), _wgslsmith_f_op_f32(max(639.0, 869.0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1690.0)) * _wgslsmith_f_op_f32(-819.0 * 107.0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(748.0 + -1746.0)))))));
                    global0 = !vec2<bool>(false, arg_0.a.x);
                    global0 = !arg_0.a;
                }
            }
            switch (2147483647) {
                case 0: {
                    global0 = arg_0.a;
                    let var_0 = select(!vec3<bool>(!(!arg_0.a.x), all(!arg_0.a), !global0.x & true), vec3<bool>(!(!global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994.0) * _wgslsmith_f_op_f32(max(-1000.0, -825.0))) >= -399.0, false), select(!select(select(vec3<bool>(false, arg_0.a.x, global0.x), vec3<bool>(arg_0.a.x, global0.x, global0.x), arg_0.a.x), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), global0.x), !true), select(select(select(vec3<bool>(false, arg_0.a.x, global0.x), vec3<bool>(arg_0.a.x, arg_0.a.x, true), arg_0.a.x), vec3<bool>(global0.x, arg_0.a.x, arg_0.a.x), global0.x), !(!vec3<bool>(true, false, global0.x)), vec3<bool>(false, !true, arg_0.a.x)), vec3<bool>(false, func_5().a.x, !func_5().a.x)));
                    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000.0 - 499.0), _wgslsmith_f_op_f32(max(-283.0, 1643.0)), _wgslsmith_f_op_f32(-2052.0 * -1615.0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1301.0, -1078.0, 770.0))))), func_5(), func_1(), vec3<f32>(-1331.0, -115.0, -1205.0), Struct_1(vec2<bool>(16106 < reverseBits(arg_2.x), !global0.x)));
                    let var_2 = func_4(any(var_0), 17007u);
                    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(var_2.d - var_2.a), var_2.e, var_2.b, var_1.a, arg_0);
                }
                default: {
                }
            }
        }
        case 1: {
            switch (-1) {
                default: {
                    var var_0 = u_input.b.x;
                }
            }
            for (var var_0 = 0; var_0 < 2147483647; var_0 += 1) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_1 = func_2(u_input.a.x <= ((arg_2.x << (4294967295u % 32u)) ^ _wgslsmith_mult_i32(-1, -25998)));
                var var_2 = var_1.e;
                continue;
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            }
            let var_0 = abs(u_input.a.x);
        }
        case 7854: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                global0 = func_3().b.a;
                global0 = func_3().b.a;
            }
            global0 = vec2<bool>(true, false);
        }
        default: {
            if (func_7(func_3(), func_4(arg_0.a.x, _wgslsmith_sub_u32(23891u, arg_1) ^ u_input.d), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1676.0, 683.0, 156.0), vec3<f32>(308.0, 194.0, 1881.0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, 2580.0, -771.0))))), Struct_1(arg_0.a), func_4(!(!arg_0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(63150u, 83988u, u_input.b.x), max(vec3<u32>(arg_1, u_input.d, 4294967295u), vec3<u32>(46810u, u_input.d, arg_1)))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(632.0, 144.0, -356.0))))), arg_0)).a.x) {
                var var_0 = func_3().a;
                var var_1 = _wgslsmith_mod_u32(1u, u_input.b.x);
            }
            for (var var_0 = -2147483648; func_2(any(vec4<bool>(func_5().a.x, arg_0.a.x, true, arg_0.a.x))).b.a.x; var_0 -= 1) {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var var_1 = arg_2.xz >> (max(select(u_input.c, u_input.b, global0.x), _wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(13634u, 1u)), select(countOneBits(vec2<u32>(u_input.d, arg_1)), max(u_input.c, u_input.b), false))) % vec2<u32>(32u));
                let var_2 = firstTrailingBit(-29863);
                let var_3 = select(!select(vec3<bool>(u_input.c.x >= 0u, arg_0.a.x, false), select(select(vec3<bool>(global0.x, arg_0.a.x, global0.x), vec3<bool>(true, true, global0.x), global0.x), vec3<bool>(false, true, arg_0.a.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, true), true)), !(!vec3<bool>(true, arg_0.a.x, arg_0.a.x))), !vec3<bool>(func_8(u_input.c.x, -1987.0, var_2, Struct_2(vec3<f32>(850.0, 1075.0, 297.0), arg_0, arg_0, vec3<f32>(-1048.0, 479.0, 1362.0), Struct_1(vec2<bool>(true, false)))).a.x, arg_0.a.x, func_1().a.x), (_wgslsmith_sub_i32(~10717, arg_2.x ^ u_input.a.x) >> (47839u % 32u)) > var_2);
            }
        }
    }
    let var_0 = arg_1;
    global0 = func_8(48104u, _wgslsmith_f_op_f32(f32(-1.0) * -1273.0), reverseBits(_wgslsmith_dot_vec3_i32(~max(vec3<i32>(1, 32038, -2147483648), vec3<i32>(arg_2.x, arg_2.x, -11289)), ~(vec3<i32>(u_input.a.x, u_input.a.x, 33469) ^ arg_2))), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1681.0, -1000.0, 566.0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, -198.0, -1058.0))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-298.0, 1310.0, -1022.0))), !vec3<bool>(false, true, global0.x))), func_3().b, arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-120.0, -146.0, 2104.0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(409.0, -279.0, -1952.0) * vec3<f32>(-868.0, -858.0, -711.0)))), Struct_1(!vec2<bool>(global0.x, arg_0.a.x)))).a;
    for (var var_1 = -2147483648; global0.x; ) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2105.0, _wgslsmith_f_op_f32(trunc(2364.0))))));
        continue;
    }
    if (false) {
    }
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(123.0 * 829.0)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-506.0)) - _wgslsmith_f_op_f32(-2290.0 + 229.0))));
    if (!(!any(select(vec3<bool>(global0.x, true, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(false, false, var_0.a.x)))) & !(!(25981 < 50118) & var_0.a.x)) {
        let var_1 = func_9(func_1(), firstTrailingBit(reverseBits(u_input.b.x)), _wgslsmith_mod_vec3_i32(-(~(~vec3<i32>(-13823, u_input.a.x, 45904))), vec3<i32>(select(27112, -25501 >> (47100u % 32u), var_0.a.x & global0.x), max(~0, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))));
        global0 = select(!vec2<bool>((true | var_1.e.a.x) || select(global0.x, true, false), true), var_1.e.a, select(vec2<bool>(false, !any(var_1.e.a)), var_0.a, func_4(!(false & true), ~(u_input.d << (u_input.c.x % 32u))).e.a));
        var var_2 = func_2(func_8(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.b.x, 1u, 1u)), select(vec4<u32>(u_input.d, 1u, u_input.c.x, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, 5485u, u_input.d), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 1u)), !false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1309.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, var_1.d.x)) - _wgslsmith_f_op_f32(-var_1.d.x))), u_input.a.x | firstTrailingBit(-1 ^ u_input.a.x), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), -469.0, _wgslsmith_f_op_f32(1027.0 - 1063.0)), var_0, func_8(~5234u, _wgslsmith_f_op_f32(exp2(var_1.a.x)), 0, var_1), _wgslsmith_f_op_vec3_f32(-var_1.d), func_7(var_1, var_1, var_1))).a.x).b;
    }
    global0 = !vec2<bool>(true, !(!any(vec4<bool>(true, var_0.a.x, false, global0.x))));
    for (var var_1 = -2147483648; func_8(abs(abs(u_input.c.x)), _wgslsmith_f_op_f32(231.0 + func_9(Struct_1(func_9(var_0, 41097u, vec3<i32>(u_input.a.x, 2147483647, u_input.a.x)).c.a), 4869u, -max(vec3<i32>(u_input.a.x, u_input.a.x, 50459), vec3<i32>(38528, 3284, u_input.a.x))).a.x), u_input.a.x, func_4(false, firstLeadingBit(u_input.c.x))).a.x; var_1 = reverseBits(60417)) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        break;
    }
    let var_1 = 2147483647;
    switch (0) {
        case 0: {
            switch (3890) {
                case 2147483647: {
                    var var_2 = func_3();
                    var var_3 = func_2(1000.0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * var_2.d.x));
                    let var_4 = _wgslsmith_mult_i32(var_1, -abs(_wgslsmith_clamp_i32(0, 2147483647, -2147483648)));
                }
                case 31152: {
                    var var_2 = vec4<bool>(!select(!false, func_1().a.x, select(u_input.b.x < 0u, true, var_0.a.x)), global0.x, ~u_input.a.x < _wgslsmith_mult_i32(i32(-1) * -1, -var_1 & (i32(-1) * -1)), func_5().a.x && (~u_input.a.x >= -2147483648));
                }
                case -2147483648: {
                    let var_2 = 0u;
                    global0 = var_0.a;
                }
                case 1: {
                    let var_2 = Struct_1(!vec2<bool>(true, u_input.b.x == ~4294967295u));
                }
                default: {
                    let var_2 = any(!vec3<bool>(func_8(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5327u, 32133u, 0u), vec4<u32>(0u, u_input.d, 0u, 1u)), _wgslsmith_f_op_f32(f32(-1.0) * -1168.0), -u_input.a.x, Struct_2(vec3<f32>(-385.0, 1303.0, -417.0), var_0, var_0, vec3<f32>(-1149.0, 2941.0, 264.0), Struct_1(vec2<bool>(global0.x, var_0.a.x)))).a.x, func_3().e.a.x, global0.x));
                    var var_3 = func_4(global0.x, u_input.b.x);
                }
            }
        }
        case 2147483647: {
            let var_2 = 4294967295u;
            for (var var_3 = 5422; ; var_3 += 1) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                var var_4 = func_1();
            }
            if (var_0.a.x) {
                let var_3 = 1u;
                global0 = var_0.a;
                global0 = !func_2(any(!select(vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(false, true, global0.x, true)))).c.a;
                global0 = vec2<bool>(func_1().a.x && !any(!vec4<bool>(global0.x, var_0.a.x, var_0.a.x, true)), 1u <= var_3);
            }
        }
        case -1: {
        }
        default: {
            global0 = vec2<bool>(global0.x, global0.x);
            if (all(!select(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, false)), select(vec3<bool>(global0.x, global0.x, var_0.a.x), !vec3<bool>(false, false, true), vec3<bool>(var_0.a.x, true, true)), true))) {
                global0 = !vec2<bool>(any(!var_0.a), global0.x);
                let var_2 = Struct_1(var_0.a);
            }
        }
    }
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1702.0, _wgslsmith_f_op_f32(-737.0)))) + _wgslsmith_div_f32(-2675.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(536.0, -863.0) - _wgslsmith_f_op_f32(abs(-1000.0))))) != _wgslsmith_f_op_f32(100.0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -1157.0))))));
    let var_3 = vec2<u32>(~_wgslsmith_add_u32(5595u, ~u_input.b.x ^ firstTrailingBit(1u)), u_input.b.x);
    let var_4 = vec4<bool>(var_0.a.x, true, var_0.a.x, -10211 < min(u_input.a.x, ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 273.0, _wgslsmith_f_op_f32(-1866.0 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-236.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-727.0) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -833.0))))));
}

