// {"0:0":[56,6,61,103,173,119,66,161,157,189,15,108,128,151,124,42,199,110,235,85,130,135,91,122,61,95,15,165,120,168,23,185,136,96,160,90,44,240,49,169,254,100,205,46,128,139,120,110,244,75,88,32,175,116,84,190,119,159,107,56,175,21,162,82]}
// Seed: 12521312770510455069

struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: i32 = 6476;

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-1, 0, 1, -1), vec4<i32>(-13782, -22237, 2147483647, -2376));

var<private> global3: Struct_1;

var<private> global4: i32;

var<private> LOOP_COUNTERS: array<u32, 13>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(u_input.d.zy, ~u_input.d.xx, ~vec2<u32>(abs(u_input.d.x), 1u));
    if (arg_1.b.x) {
        loop {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            global3 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(~arg_0.a.x, _wgslsmith_div_i32(-2147483648, 0)) << (select(vec2<u32>(96178u, var_0.x) << (vec2<u32>(53144u, u_input.a) % vec2<u32>(32u)), vec2<u32>(4294967295u, 1u), true) % vec2<u32>(32u)), arg_0.a), arg_1.b);
            global3 = Struct_1(global3.a, !arg_1.b);
        }
        var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-298.0)) + -1000.0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344.0 - -734.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1215.0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(704.0))))));
        var var_2 = -(~(~(-arg_0.a))) | max(-vec2<i32>(-57722, u_input.c) & vec2<i32>(arg_2.x, 1), u_input.b.zx);
        for (var var_3 = -20884; var_3 < -2147483648; global4 = arg_1.a.x) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            break;
        }
    }
    if (any(select(vec2<bool>(_wgslsmith_f_op_f32(round(-288.0)) > _wgslsmith_f_op_f32(-577.0), arg_0.b.x), select(!vec2<bool>(false, false), vec2<bool>(-881.0 > 1259.0, false), global3.b), any(vec3<bool>(true, global3.b.x, -1 <= u_input.c))))) {
        global1 = u_input.b.x;
        for (var var_1 = -29096; all(vec4<bool>(!false, !false, false & true, arg_0.b.x)); global3 = arg_1) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var_1 = 0;
            global2 = array<vec4<i32>, 2>();
            var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(207.0 + -549.0)))) - -790.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(167.0)) + -602.0))) + _wgslsmith_f_op_f32(select(1217.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(-124.0)), _wgslsmith_f_op_f32(177.0 * -235.0))), any(arg_1.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-390.0 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(313.0, 1283.0)), _wgslsmith_f_op_f32(-433.0), arg_0.b.x))))));
        }
        switch (-2147483648) {
            case 56550: {
                global3 = arg_1;
                global3 = arg_0;
                let var_1 = !all(!(!select(vec4<bool>(arg_0.b.x, true, false, global3.b.x), vec4<bool>(arg_1.b.x, false, true, global3.b.x), false)));
                let var_2 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.a, ~countOneBits(vec2<i32>(arg_2.x, -665))), countOneBits(-1 >> (~u_input.a % 32u)), global3.a.x, -1);
                global4 = max(-(~_wgslsmith_clamp_i32(abs(2147483647), ~global3.a.x, -1)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global3.a.x, 331, global3.a.x, u_input.c)), vec4<i32>(27055, i32(-1) * -1224, -2147483648, 2147483647)), var_2.x));
            }
            case 0: {
                global2 = array<vec4<i32>, 2>();
                return select(!(!select(vec4<bool>(true, false, false, global3.b.x), select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, true), vec4<bool>(arg_0.b.x, global3.b.x, false, arg_1.b.x), true), arg_0.b.x & arg_0.b.x)), !vec4<bool>(!(!arg_0.b.x), false, false, select(arg_0.b.x, arg_0.b.x, true) || !global3.b.x), vec4<bool>(!true, any(vec3<bool>(global3.b.x | true, false, all(vec4<bool>(true, global3.b.x, arg_1.b.x, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1910.0 - -2337.0))) >= -1000.0, arg_1.b.x));
            }
            case -1: {
                global2 = array<vec4<i32>, 2>();
                var var_1 = ~(-1);
                var var_2 = arg_0.a.x << (~u_input.d.x % 32u);
                var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2189.0 - 559.0)))))));
                global3 = Struct_1(countOneBits(vec2<i32>(select(-49491, -1, any(vec2<bool>(global3.b.x, true))), -10228)), !(!(!select(global3.b, vec2<bool>(false, global3.b.x), vec2<bool>(global3.b.x, arg_0.b.x)))));
            }
            case 52062: {
                var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(~(-8059), arg_0.a.x), -arg_2.x);
                let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.x, -arg_0.a.x, 5136), arg_2.zyy), 0), select(!global3.b, select(select(vec2<bool>(false, arg_1.b.x), vec2<bool>(true, arg_1.b.x), vec2<bool>(arg_1.b.x, global3.b.x)), select(select(arg_0.b, arg_1.b, false), select(vec2<bool>(arg_1.b.x, false), vec2<bool>(global3.b.x, true), global3.b), arg_0.b.x), !vec2<bool>(true, false)), select(vec2<bool>(arg_1.b.x, any(vec2<bool>(arg_1.b.x, arg_0.b.x))), arg_0.b, !true)));
            }
            default: {
                let var_1 = vec3<bool>(global3.b.x, var_0.x == (_wgslsmith_dot_vec2_u32(var_0, _wgslsmith_clamp_vec2_u32(u_input.d.zy, u_input.d.xw, vec2<u32>(var_0.x, u_input.a))) ^ 0u), true);
                global2 = array<vec4<i32>, 2>();
            }
        }
        if (true) {
            let var_1 = countOneBits(_wgslsmith_mult_u32(var_0.x, ~30907u));
            let var_2 = _wgslsmith_f_op_f32(sign(-323.0));
            global2 = array<vec4<i32>, 2>();
        }
        return vec4<bool>(!any(!arg_1.b), all(!arg_1.b), arg_1.b.x, arg_1.b.x);
    }
    var var_1 = u_input.d;
    switch (countOneBits(-global3.a.x)) {
        case -7592: {
            var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -227.0));
            let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(480.0, 1305.0)), -251.0, _wgslsmith_div_f32(704.0, 108.0)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2638.0, 1241.0, -1000.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2404.0, 331.0, 1870.0)), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(907.0, 399.0, 305.0))) + vec3<f32>(-325.0, 1000.0, 678.0))))));
            var_2 = _wgslsmith_f_op_f32(-var_3.x);
            switch (~1) {
                case -51865: {
                }
                case -34861: {
                    var var_4 = u_input.b.x;
                }
                default: {
                }
            }
        }
        case 1: {
        }
        case 3649: {
            let var_2 = arg_0.b.x;
            for (var var_3: i32; var_3 <= -1; var_3 += 1) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                break;
            }
        }
        case 14571: {
            if (arg_1.b.x) {
                let var_2 = false;
                var var_3 = Struct_2(1u, 1u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(683.0, -818.0)))) + -2147.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-850.0, 694.0)))));
            }
            var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2466.0 + -856.0)))))) * _wgslsmith_f_op_f32(f32(-1.0) * -1000.0));
            let var_3 = reverseBits(~vec4<i32>(-(i32(-1) * -6753), -(arg_0.a.x >> (65457u % 32u)), _wgslsmith_mult_i32(-1, i32(-1) * -1), -countOneBits(4640)));
            global2 = array<vec4<i32>, 2>();
            var var_4 = Struct_2(_wgslsmith_mod_u32(~(~(~var_1.x)), 2909u), 4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-769.0 + 543.0), -1686.0)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-567.0, -1482.0), vec2<f32>(1000.0, -1467.0))) + vec2<f32>(-569.0, -1310.0)))));
        }
        default: {
            let var_2 = u_input.d.xxy;
            for (var var_3: i32; var_3 != 1; ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                break;
            }
            var var_3 = Struct_1(reverseBits((vec2<i32>(0, -2147483648) << (vec2<u32>(4294967295u, var_1.x) % vec2<u32>(32u))) & vec2<i32>(arg_2.x, global3.a.x)) ^ ~_wgslsmith_mult_vec2_i32(vec2<i32>(-2898, -72350), vec2<i32>(0, -1)), select(!vec2<bool>(any(vec3<bool>(arg_1.b.x, true, global3.b.x)), any(global0[_wgslsmith_index_u32(var_1.x, 18u)])), !vec2<bool>(-929.0 < 1118.0, false), !(false == (arg_0.a.x >= arg_2.x))));
            var var_4 = arg_0;
            if (!var_4.b.x) {
                return vec4<bool>(true, !var_3.b.x, arg_1.b.x, all(vec3<bool>(all(arg_1.b), !arg_1.b.x, false)));
            }
        }
    }
    return vec4<bool>(all(!vec3<bool>(any(vec4<bool>(global3.b.x, false, arg_1.b.x, arg_0.b.x)), arg_1.b.x, all(vec4<bool>(true, global3.b.x, arg_1.b.x, true)))), arg_0.b.x, arg_0.b.x, !(!(!(arg_1.b.x | arg_0.b.x))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = !(!any(vec2<bool>(false, all(vec4<bool>(global3.b.x, true, global3.b.x, false)))));
    var var_1 = select(select(!vec4<bool>(all(global0[_wgslsmith_index_u32(80328u, 18u)]), !var_0, !global3.b.x, 11381u >= 16450u), vec4<bool>(!(true & var_0), (i32(-1) * -34515) <= select(arg_0.x, 1, global3.b.x), !true || all(vec2<bool>(var_0, var_0)), false), true), func_6(Struct_1(_wgslsmith_mult_vec2_i32(global3.a, vec2<i32>(global3.a.x, u_input.c)) >> (abs(vec2<u32>(0u, u_input.d.x)) % vec2<u32>(32u)), select(select(vec2<bool>(false, true), global3.b, global3.b), vec2<bool>(var_0, false), !vec2<bool>(global3.b.x, true))), Struct_1(vec2<i32>(-41594, _wgslsmith_add_i32(-43972, 1)), !vec2<bool>(var_0, var_0)), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.x, u_input.b.x), vec2<i32>(global3.a.x, -9185)), -38882, global3.a.x, -(-5529 | global3.a.x))), global3.b.x);
    var_1 = !select(vec4<bool>(global3.b.x, var_0, var_1.x, !false), func_6(Struct_1(vec2<i32>(12854, arg_0.x), !var_1.zw), Struct_1(u_input.b.zz, !vec2<bool>(true, var_1.x)), ~(vec4<i32>(arg_0.x, global3.a.x, -1, arg_0.x) | vec4<i32>(arg_0.x, global3.a.x, global3.a.x, arg_0.x))), !vec4<bool>(!var_0, false, !global3.b.x, !var_1.x));
    if (any(!vec4<bool>(!false || !var_0, !(!var_0), var_1.x, !(var_0 && var_0)))) {
        let var_2 = Struct_2(arg_2.x, _wgslsmith_dot_vec3_u32(u_input.d.yxw, arg_2 & ~u_input.d.xwz), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-724.0, arg_1.x)))), _wgslsmith_f_op_vec2_f32(trunc(arg_1.zy))))));
    }
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(u_input.b.zw & ~arg_0, ~(vec2<i32>(-30070, u_input.c) ^ vec2<i32>(global3.a.x, arg_0.x))) << (countOneBits(reverseBits(arg_2.zz ^ arg_2.zy)) % vec2<u32>(32u)), select(!func_6(Struct_1(vec2<i32>(-19632, global3.a.x), vec2<bool>(true, var_0)), Struct_1(arg_0, vec2<bool>(false, global3.b.x)), global2[_wgslsmith_index_u32(min(arg_3, arg_2.x), 2u)]).xz, !select(!vec2<bool>(var_1.x, false), !global3.b, var_1.yw), vec2<bool>(arg_1.x != _wgslsmith_f_op_f32(-arg_1.x), arg_1.x <= _wgslsmith_f_op_f32(-arg_1.x))));
    return Struct_1(-_wgslsmith_sub_vec2_i32(u_input.b.yz, vec2<i32>(global3.a.x, 39933 >> (u_input.a % 32u))), select(global3.b, vec2<bool>(false, ~global3.a.x >= firstLeadingBit(-38322)), var_1.x));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<u32>) -> f32 {
    switch (~(_wgslsmith_clamp_i32(-(~(-2147483648)), _wgslsmith_clamp_i32(-u_input.c, _wgslsmith_div_i32(u_input.c, u_input.b.x), countOneBits(-2147483648)), -17999) >> (~(~(4294967295u ^ u_input.a)) % 32u))) {
        case -19685: {
            switch (_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(64415, u_input.c, 0)), vec3<i32>(-8589, -(1 >> (u_input.a % 32u)), _wgslsmith_mod_i32(u_input.c, -2147483648))) | global3.a.x) {
                case 1: {
                    let var_0 = Struct_2(~_wgslsmith_add_u32(arg_3.x, firstLeadingBit(1784u)), ~(~420u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129.0 + 1206.0)), _wgslsmith_f_op_f32(arg_1.c.x - arg_2.x))));
                    let var_1 = u_input.b.xxx;
                    var var_2 = func_5(countOneBits(~(~max(global3.a, vec2<i32>(global3.a.x, var_1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, arg_1.c.x, -1371.0)))), vec4<f32>(-871.0, _wgslsmith_f_op_f32(-904.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c.x, arg_2.x, arg_0))), arg_1.c.x)), u_input.d.zzy, abs(_wgslsmith_mod_u32(u_input.d.x, 4294967295u)));
                    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))))));
                    global0 = array<vec3<bool>, 18>();
                }
                case -1: {
                    global0 = array<vec3<bool>, 18>();
                }
                default: {
                    return -2121.0;
                }
            }
        }
        case 0: {
            global2 = array<vec4<i32>, 2>();
        }
        case 2147483647: {
            for (var var_0 = -12781; var_0 < 2147483647; var_0 += 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
            let var_0 = -1728.0;
        }
        default: {
            var var_0 = vec2<f32>(-529.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1469.0))))));
            return _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1009.0)))));
        }
    }
    if (!(!(false || !(!global3.b.x)))) {
        switch (u_input.c) {
            case -30302: {
                let var_0 = ~select(_wgslsmith_add_vec2_u32(arg_3.zy, vec2<u32>(~31541u, 0u)), _wgslsmith_div_vec2_u32(countOneBits(arg_3.yx), vec2<u32>(arg_3.x, ~arg_3.x)), func_5(_wgslsmith_clamp_vec2_i32(u_input.b.wx & vec2<i32>(-1, -2147483648), ~global3.a, _wgslsmith_div_vec2_i32(vec2<i32>(global3.a.x, u_input.b.x), vec2<i32>(-63320, u_input.b.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1430.0, -1764.0, -1959.0, -164.0))), min(vec3<u32>(1u, 1u, 4294967295u), abs(arg_3)), ~(0u | 49559u)).b.x);
            }
            case 26804: {
                let var_0 = arg_1;
                let var_1 = var_0.c;
            }
            case 3705: {
                let var_0 = abs(u_input.d);
                var var_1 = -1111.0;
                var var_2 = Struct_2(arg_3.x, abs(_wgslsmith_mod_u32(var_0.x, u_input.d.x)), _wgslsmith_f_op_vec2_f32(select(arg_2.zz, _wgslsmith_f_op_vec2_f32(-arg_2.zz), global3.b)));
            }
            default: {
                let var_0 = arg_1;
                global3 = Struct_1(vec2<i32>(((i32(-1) * -2147483648) | (-1 & global3.a.x)) >> (~reverseBits(84424u) % 32u), 0), global3.b);
                let var_1 = i32(-1) * -max(global3.a.x, _wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(global3.a, vec2<i32>(-39076, 1))));
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        continue;
    }
    for (var var_0 = 0; arg_0; var_0 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        if (false) {
        }
        if (true) {
            var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(464.0, arg_1.c.x) * vec2<f32>(1000.0, arg_1.c.x))) * _wgslsmith_f_op_vec2_f32(-arg_2.zy)))));
            global0 = array<vec3<bool>, 18>();
            break;
        }
        for (var var_1 = global3.a.x; var_1 > -2147483648; ) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var var_2 = Struct_2(13059u, ~(~4294967295u) & ~0u, arg_2.zz);
        }
        switch (abs(5817)) {
            case -13770: {
                global3 = Struct_1(global3.a, global3.b);
                break;
            }
            case 2147483647: {
                var var_1 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - 455.0), _wgslsmith_f_op_f32(ceil(arg_1.c.x))))));
                var_0 = ~(~(~(-u_input.b.x)) >> ((~max(0u, 11606u) & (~arg_1.b ^ u_input.a)) % 32u));
                let var_2 = select(u_input.b.zwx, abs(~u_input.b.zzy << (arg_3 % vec3<u32>(32u))) & u_input.b.xxx, !(!func_6(func_5(global3.a, vec4<f32>(807.0, arg_1.c.x, -874.0, -846.0), vec3<u32>(1u, 0u, 0u), u_input.a), Struct_1(vec2<i32>(u_input.b.x, u_input.c), global3.b), abs(vec4<i32>(0, -35750, 0, global3.a.x))).zzy));
                global1 = -2163;
                break;
            }
            default: {
                global3 = func_5(_wgslsmith_mod_vec2_i32(u_input.b.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(-19215 >> (0u % 32u), reverseBits(47042)), u_input.b.zx)), vec4<f32>(_wgslsmith_f_op_f32(-404.0 + arg_2.x), _wgslsmith_f_op_f32(step(-117.0, 517.0)), arg_2.x, 920.0), select(u_input.d.xyw, u_input.d.zyz, !(!(!true))), 28980u);
            }
        }
        let var_1 = u_input.d.xx ^ (reverseBits(vec2<u32>(countOneBits(u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 57717u, 4294967295u, u_input.a), vec4<u32>(4294967295u, u_input.a, arg_3.x, arg_3.x)))) | u_input.d.wx);
    }
    switch (abs(firstTrailingBit(_wgslsmith_clamp_i32(-28252, u_input.b.x, 2147483647)))) {
        case -2147483648: {
            switch (30749) {
                default: {
                    global4 = _wgslsmith_mod_i32(~(-2147483648), -(~(~(u_input.b.x | u_input.c))));
                    global1 = abs(firstTrailingBit(_wgslsmith_mult_i32(-20149, 0)));
                    global4 = u_input.c;
                    var var_0 = Struct_1(~vec2<i32>(-(~(-5456)), -32243 << (min(arg_3.x, arg_1.a) % 32u)), select(global3.b, vec2<bool>(!(!arg_0), !(199.0 >= -1645.0)), global3.b));
                    global0 = array<vec3<bool>, 18>();
                }
            }
        }
        default: {
            global2 = array<vec4<i32>, 2>();
            let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) + vec3<f32>(-1960.0, arg_1.c.x, arg_1.c.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_1.c.x, 744.0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_2))), vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.x, 341.0)), _wgslsmith_f_op_f32(trunc(127.0)), _wgslsmith_f_op_f32(247.0 - 1006.0))))), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -958.0)) * arg_1.c.x), 749.0)));
            global3 = func_5(~vec2<i32>(_wgslsmith_mult_i32(~2147483647, 23630), ~(u_input.c >> (6773u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1839.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1199.0)) + _wgslsmith_f_op_f32(step(var_0.x, 961.0))), _wgslsmith_div_f32(1667.0, _wgslsmith_f_op_f32(max(619.0, _wgslsmith_f_op_f32(744.0 - var_0.x))))), select(vec3<u32>(35579u, arg_3.x, 1u), abs(vec3<u32>(21415u, 45377u, 4294967295u)), vec3<bool>(!(!arg_0), arg_0, all(select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(true, arg_0, false, arg_0), true)))), arg_3.x >> ((reverseBits(1u) & 118448u) % 32u));
            global2 = array<vec4<i32>, 2>();
        }
    }
    return _wgslsmith_f_op_f32(-arg_1.c.x);
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    if (select(false, arg_2.b.x, !(!true && !arg_2.b.x))) {
    }
    var var_0 = _wgslsmith_f_op_f32(-1235.0 * arg_3.c.x);
    let var_1 = func_6(Struct_1(vec2<i32>(arg_1.a.x << (26898u % 32u), ~15782 ^ 0), vec2<bool>(global3.b.x, false)), arg_1, u_input.b).wyx;
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        global2 = array<vec4<i32>, 2>();
        if (all(vec2<bool>(!(arg_1.b.x || any(vec3<bool>(arg_1.b.x, arg_1.b.x, false))), false))) {
            global4 = arg_1.a.x ^ min(56145 ^ -(-821 | global3.a.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.a.x, u_input.b.x, u_input.c, -2147483648), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, -2147483648), vec3<i32>(arg_1.a.x, -36363, arg_1.a.x)), reverseBits(2147483647), u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, u_input.b.x), vec2<i32>(global3.a.x, global3.a.x)))));
            break;
        }
        for (; ; ) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            var var_2 = 0u;
            continue;
        }
    }
    var var_2 = arg_3;
    return _wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(select(13656u, 50262u, var_1.x), arg_3.a, arg_3.a ^ u_input.d.x) >> ((~arg_3.a >> (select(45858u, 0u, arg_2.b.x) % 32u)) % 32u)), ~countOneBits(_wgslsmith_dot_vec2_u32(u_input.d.yw, u_input.d.yw & u_input.d.zz)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = all(vec4<bool>(global3.b.x && global3.b.x, global3.b.x, global3.b.x, false));
    var var_1 = !global3.b.x;
    let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.a, 4294967295u, 4294967295u >> (arg_2.b % 32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(u_input.d.ywy), vec3<u32>(48598u, arg_2.b, 9339u)), min(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d.x, arg_2.b), vec3<u32>(4294967295u, arg_0.a, arg_0.a)), select(u_input.d.zwx, vec3<u32>(56118u, arg_2.b, 4294967295u), vec3<bool>(var_0, true, false))))), 73929u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, 1074.0) + _wgslsmith_f_op_vec2_f32(-arg_0.c)), vec2<bool>(global3.b.x != global3.b.x, global3.b.x)))));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mod_u32(reverseBits(34480u), select(4294967295u, arg_2.a, any(global0[_wgslsmith_index_u32(~arg_0.b, 18u)]))), arg_2.a);
    let var_4 = arg_0;
    return func_7(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.x, 681.0, 1000.0, var_4.c.x) - vec4<f32>(arg_2.c.x, 490.0, var_2.c.x, arg_2.c.x))) - vec4<f32>(_wgslsmith_f_op_f32(func_4(global3.b.x, Struct_2(var_4.a, 321u, arg_2.c), vec3<f32>(1490.0, var_2.c.x, 862.0), vec3<u32>(var_2.b, arg_2.a, 45353u))), _wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(step(178.0, arg_2.c.x)), _wgslsmith_f_op_f32(arg_0.c.x * var_4.c.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(615.0, _wgslsmith_f_op_f32(-arg_0.c.x), -575.0, _wgslsmith_f_op_f32(-var_2.c.x)))), func_5(abs(vec2<i32>(_wgslsmith_mod_i32(0, -59955), -15492)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.c.x, arg_2.c.x, -1587.0, var_2.c.x))))), select(~(u_input.d.xww & u_input.d.wyx), vec3<u32>(0u, 1u, var_2.a), vec3<bool>(!global3.b.x, global3.b.x, arg_3 > u_input.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(39088u << (1u % 32u), 1u | 1u), ~u_input.d.zy)), func_5(vec2<i32>(~(arg_1.x ^ arg_1.x), arg_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(1059.0, _wgslsmith_f_op_f32(max(-726.0, 198.0)), _wgslsmith_f_op_f32(step(720.0, var_4.c.x)), _wgslsmith_f_op_f32(f32(-1.0) * -332.0)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.c.x, -423.0, 524.0, -920.0)))), vec3<u32>(4294967295u, reverseBits(firstTrailingBit(var_4.b)), arg_2.a), ~_wgslsmith_dot_vec3_u32(~u_input.d.yzw, ~vec3<u32>(arg_0.a, u_input.a, var_4.a))), var_4);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        for (var var_0: i32; var_0 != -11878; global0 = array<vec3<bool>, 18>()) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            continue;
        }
        let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.yz, _wgslsmith_f_op_vec2_f32(max(arg_1.yy, arg_1.xy)))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1287.0) + _wgslsmith_f_op_f32(arg_1.x - 555.0)) - arg_1.x), _wgslsmith_f_op_f32(max(arg_1.x, -1829.0))));
        global2 = array<vec4<i32>, 2>();
    }
    var var_0 = ~(~(~vec3<u32>(~68394u, func_3(Struct_2(4294967295u, u_input.d.x, vec2<f32>(arg_1.x, arg_1.x)), u_input.b.xz, Struct_2(u_input.d.x, u_input.a, vec2<f32>(arg_1.x, -183.0)), u_input.c), ~48337u)));
    switch (_wgslsmith_mult_i32(global3.a.x, -global3.a.x >> (_wgslsmith_dot_vec3_u32(u_input.d.yyy, u_input.d.wzy) % 32u))) {
        case -52804: {
            global4 = -max(-_wgslsmith_mod_i32(u_input.b.x >> (14824u % 32u), ~u_input.b.x), u_input.b.x);
        }
        case 1: {
        }
        default: {
            global3 = func_5(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-44750, min(global3.a.x, global3.a.x))), -(vec2<i32>(-1) * -u_input.b.xw)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_div_f32(830.0, -975.0), _wgslsmith_f_op_f32(arg_1.x + arg_1.x), arg_1.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -1000.0, arg_1.x) + vec4<f32>(arg_1.x, arg_1.x, -248.0, arg_1.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-1649.0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1516.0, -1296.0, true)))), -120.0, -1477.0)), ~_wgslsmith_sub_vec3_u32(u_input.d.xwz, vec3<u32>(4294967295u, 35114u | u_input.d.x, _wgslsmith_sub_u32(18269u, var_0.x))), 30706u ^ 1u);
            switch (u_input.b.x << ((~u_input.a >> ((var_0.x >> (_wgslsmith_clamp_u32(abs(var_0.x), ~0u, var_0.x & 48089u) % 32u)) % 32u)) % 32u)) {
                case 7498: {
                    var_0 = select(~select(vec3<u32>(1u, 4294967295u, countOneBits(1u)), u_input.d.yzz & abs(vec3<u32>(u_input.a, var_0.x, 4294967295u)), select(vec3<bool>(global3.b.x, false, global3.b.x), global0[_wgslsmith_index_u32(1u ^ 21987u, 18u)], any(vec2<bool>(false, global3.b.x)))), ~vec3<u32>(~(~110592u), 63597u & (63374u ^ u_input.a), abs(var_0.x | u_input.d.x)), global0[_wgslsmith_index_u32(var_0.x, 18u)]);
                    global3 = func_5(-vec2<i32>(global3.a.x, global3.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1145.0, arg_1.x, arg_1.x, 207.0), vec4<f32>(544.0, -2256.0, 505.0, 1248.0), false)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 802.0, -1000.0), vec4<f32>(-1635.0, -1095.0, arg_1.x, arg_1.x)))))), u_input.d.xzy, ~abs(min(9872u, firstTrailingBit(20515u))));
                    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, var_0.x, 20666u)), u_input.d.wwz | u_input.d.zzz)), abs(select(u_input.d.wzy, select(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(var_0.x, 0u, 4294967295u), vec3<bool>(true, arg_0, false)), !global3.b.x))), ~(~(~(~4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(887.0))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.x))))), 785.0));
                    let var_2 = Struct_1(vec2<i32>(u_input.c, global3.a.x), global3.b);
                    let var_3 = 1u;
                }
                case 15700: {
                    global3 = func_5(reverseBits(~vec2<i32>(select(23626, 29222, true), global3.a.x)), vec4<f32>(_wgslsmith_f_op_f32(850.0 * arg_1.x), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-1370.0)), vec3<u32>(_wgslsmith_add_u32(~(~9040u), _wgslsmith_clamp_u32(u_input.d.x << (var_0.x % 32u), 116928u, 0u & var_0.x)), 26856u, var_0.x), ~(~var_0.x));
                    global3 = Struct_1(-func_5(global3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1439.0, 1875.0, -1000.0, arg_1.x)))), vec3<u32>(4294967295u, u_input.d.x, var_0.x), var_0.x).a, vec2<bool>(all(!(!vec4<bool>(false, global3.b.x, global3.b.x, arg_0))), !(!select(false, global3.b.x, false))));
                    var var_1 = Struct_1(~(global3.a & u_input.b.xy), !global3.b);
                }
                case 1: {
                    let var_1 = !((all(global3.b) || (all(vec2<bool>(true, global3.b.x)) && func_6(Struct_1(vec2<i32>(1, -42244), vec2<bool>(arg_0, true)), Struct_1(vec2<i32>(-1, global3.a.x), global3.b), vec4<i32>(-51903, 1, 25483, -2147483648)).x)) || !((false & false) || !false));
                    global1 = global3.a.x;
                    let var_2 = Struct_2(var_0.x, ~reverseBits(u_input.a), _wgslsmith_f_op_vec2_f32(arg_1.yz - arg_1.yx));
                    var var_3 = vec4<i32>(global3.a.x, ~1, -(~(-33789)), -u_input.c);
                }
                case -2147483648: {
                    let var_1 = arg_1.zz;
                    var var_2 = func_5(~vec2<i32>(-1, _wgslsmith_mult_i32(-14972, abs(43943))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(637.0, -2062.0, -100.0, arg_1.x) * vec4<f32>(504.0, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-381.0, var_1.x, 497.0, arg_1.x)))))), _wgslsmith_sub_vec3_u32(~(~u_input.d.zxx), vec3<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.d.x), func_7(_wgslsmith_f_op_vec4_f32(vec4<f32>(114.0, 316.0, arg_1.x, var_1.x) + vec4<f32>(1000.0, 1039.0, var_1.x, var_1.x)), func_5(vec2<i32>(1, u_input.b.x), vec4<f32>(arg_1.x, 814.0, -1394.0, arg_1.x), vec3<u32>(0u, 1u, 47100u), var_0.x), func_5(global3.a, vec4<f32>(arg_1.x, var_1.x, arg_1.x, var_1.x), u_input.d.www, u_input.a), Struct_2(0u, 25817u, var_1)), func_7(vec4<f32>(var_1.x, -732.0, arg_1.x, var_1.x), Struct_1(u_input.b.zy, vec2<bool>(true, arg_0)), Struct_1(vec2<i32>(2147483647, -1), vec2<bool>(false, global3.b.x)), Struct_2(u_input.d.x, 1u, var_1)))), reverseBits(countOneBits(~_wgslsmith_sub_u32(u_input.a, var_0.x))));
                    var_2 = func_5(_wgslsmith_div_vec2_i32((max(vec2<i32>(1, -71455), vec2<i32>(var_2.a.x, u_input.b.x)) >> (~var_0.zx % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(~u_input.b.xz, var_2.a & vec2<i32>(u_input.c, -2147483648)), _wgslsmith_mult_vec2_i32(var_2.a, _wgslsmith_div_vec2_i32(~u_input.b.wz, vec2<i32>(global3.a.x, 0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1674.0, var_1.x)) * var_1.x), -1000.0, _wgslsmith_f_op_f32(-1732.0), _wgslsmith_f_op_f32(trunc(1360.0)))), vec3<u32>(75712u, u_input.d.x, var_0.x), _wgslsmith_mod_u32(0u, func_3(Struct_2(~var_0.x, u_input.a, vec2<f32>(-150.0, arg_1.x)), vec2<i32>(_wgslsmith_add_i32(4941, global3.a.x), reverseBits(global3.a.x)), Struct_2(firstTrailingBit(14475u), u_input.d.x | 0u, vec2<f32>(arg_1.x, 1000.0)), var_2.a.x)));
                    global1 = ~_wgslsmith_mult_i32(18496, 0 >> (var_0.x % 32u));
                    let var_3 = Struct_2(var_0.x, 46390u << (_wgslsmith_clamp_u32(~var_0.x, select(58329u, u_input.d.x, false), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 11236u), _wgslsmith_sub_vec3_u32(u_input.d.yxy, vec3<u32>(4294967295u, var_0.x, u_input.a)))) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-224.0, -492.0) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -660.0)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402.0, arg_1.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000.0, 1811.0) * var_1)), _wgslsmith_f_op_vec2_f32(max(var_1, vec2<f32>(var_1.x, 311.0))))));
                }
                default: {
                    var_0 = u_input.d.yxw;
                    return _wgslsmith_f_op_f32(trunc(arg_1.x));
                }
            }
        }
    }
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(arg_1.x * arg_1.x), -449.0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000.0, arg_1.x, -1641.0, arg_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(885.0, -844.0, arg_1.x, arg_1.x), vec4<f32>(1474.0, arg_1.x, -1000.0, -207.0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -534.0)))), !(!(-35348 < u_input.b.x) || true)));
    let var_2 = Struct_2(var_0.x, 36849u, _wgslsmith_f_op_vec2_f32(-var_1.wy));
    return _wgslsmith_f_op_f32(trunc(-372.0));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = vec4<bool>(!(!(arg_1.x != _wgslsmith_f_op_f32(func_2(arg_2.b.x, vec3<f32>(arg_3.c.x, arg_1.x, arg_1.x))))), global3.b.x, true, !all(global3.b));
    global1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(~(-34990), ~arg_2.a.x)), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_sub_i32(global3.a.x, select(2147483647, 0, true)))), global3.a.x, -15334);
    global3 = func_5(max(vec2<i32>(global3.a.x, _wgslsmith_add_i32(u_input.c, u_input.c)), _wgslsmith_div_vec2_i32(~(-vec2<i32>(-2147483648, u_input.c)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.a, vec2<i32>(-1, -2147483648)), select(vec2<i32>(global3.a.x, -60922), arg_2.a, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(277.0, -2512.0, arg_1.x, -1708.0)))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.c.x, arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-150.0, arg_3.c.x, arg_3.c.x, 963.0) * vec4<f32>(arg_1.x, arg_3.c.x, arg_3.c.x, -243.0)) * vec4<f32>(arg_1.x, -1274.0, arg_1.x, arg_3.c.x)))), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 52564u) & u_input.d.zxz, firstTrailingBit(u_input.d.wzw))), ~4294967295u);
    let var_1 = min(vec3<u32>(u_input.a ^ (42013u << (reverseBits(arg_3.b) % 32u)), ~arg_3.a, 0u), ~(~select(u_input.d.wwz, u_input.d.www, !vec3<bool>(var_0.x, global3.b.x, global3.b.x))));
    let var_2 = var_1;
    return abs(_wgslsmith_sub_vec2_i32(select(firstTrailingBit(~vec2<i32>(arg_2.a.x, 1)), -(~arg_2.a), !(!arg_2.b)), u_input.b.xy));
}

@compute
@workgroup_size(1)
fn main() {
    switch (u_input.b.x) {
        case 2147483647: {
        }
        default: {
            let var_0 = Struct_1(~((~vec2<i32>(-2147483648, global3.a.x) >> (reverseBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))) & func_1(!vec4<bool>(false, global3.b.x, global3.b.x, global3.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1182.0, 454.0, 319.0)), Struct_1(global3.a, global3.b), Struct_2(60318u, 17737u, vec2<f32>(1063.0, 1904.0)))), !global3.b);
            var var_1 = -abs(reverseBits(max(max(global2[_wgslsmith_index_u32(24251u, 2u)], vec4<i32>(global3.a.x, global3.a.x, u_input.c, 890)), global2[_wgslsmith_index_u32(~u_input.a, 2u)])));
        }
    }
    global4 = _wgslsmith_add_i32(1, -global3.a.x & -12685);
    global2 = array<vec4<i32>, 2>();
    var var_0 = true;
    var var_1 = firstTrailingBit(vec4<u32>(u_input.a, u_input.a, abs(_wgslsmith_mod_u32(u_input.a << (4294967295u % 32u), _wgslsmith_mult_u32(58754u, 5874u))), _wgslsmith_add_u32(44767u, 4294967295u)));
    let var_2 = Struct_2(_wgslsmith_add_u32(13930u, ~(_wgslsmith_mult_u32(4294967295u, var_1.x) ^ 52108u)), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, var_1.x), _wgslsmith_div_u32(77545u, u_input.a)) << (~108060u % 32u), vec2<f32>(-354.0, -764.0));
    let var_3 = Struct_1(~vec2<i32>(~1, abs(func_5(vec2<i32>(u_input.b.x, global3.a.x), vec4<f32>(var_2.c.x, 155.0, var_2.c.x, -1000.0), var_1.wzz, 1u).a.x)), select(func_6(func_5(vec2<i32>(-44067, -2147483648), vec4<f32>(var_2.c.x, var_2.c.x, 1767.0, -1678.0), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.x, var_2.b), u_input.d.xzy), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), Struct_1(u_input.b.xz, vec2<bool>(global3.b.x, global3.b.x)), vec4<i32>(global3.a.x, reverseBits(-2941), -global3.a.x, reverseBits(2591))).xz, global3.b, !select(0u < 6472u, all(vec4<bool>(false, true, global3.b.x, true)), var_2.a >= 4294967295u)));
    let var_4 = reverseBits(~1);
    let var_5 = func_5(vec2<i32>(u_input.c, var_3.a.x) & vec2<i32>(u_input.c, -1), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, -1301.0, -682.0, var_2.c.x) * vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, 484.0, 1396.0, var_2.c.x)) * vec4<f32>(var_2.c.x, 476.0, -223.0, -112.0))))), select(u_input.d.wzw, ~vec3<u32>(22759u, 62524u, var_1.x) & vec3<u32>(0u << (var_2.a % 32u), var_2.b >> (23849u % 32u), 14451u), all(select(!vec3<bool>(var_3.b.x, global3.b.x, false), global0[_wgslsmith_index_u32(var_2.b, 18u)], func_6(Struct_1(vec2<i32>(-25522, var_3.a.x), vec2<bool>(false, var_3.b.x)), Struct_1(vec2<i32>(u_input.c, global3.a.x), vec2<bool>(global3.b.x, false)), vec4<i32>(var_3.a.x, var_3.a.x, var_3.a.x, 0)).x))), _wgslsmith_sub_u32(~(~var_1.x), 0u ^ u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-343.0))));
}

