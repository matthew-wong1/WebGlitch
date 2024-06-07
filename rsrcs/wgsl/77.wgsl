// {"0:0":[245,100,254,255,67,163,73,30,68,10,97,190,14,197,52,180,11,218,147,232,8,0,62,247,170,58,91,192,32,179,236,208,200,79,101,165,22,233,57,209,117,63,224,42,111,116,237,152]}
// Seed: 9644701927600523427

struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000.0;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(2147483647, -26451), vec2<i32>(40059, 10584), vec2<i32>(-67471, 0), vec2<i32>(0, -2147483648), vec2<i32>(-2147483648, 0), vec2<i32>(2147483647, 17962), vec2<i32>(2147483647, -14546));

var<private> global2: Struct_2;

var<private> LOOP_COUNTERS: array<u32, 19>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_i32(-2147483648, -1);
    global1 = array<vec2<i32>, 7>();
    global1 = array<vec2<i32>, 7>();
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global2 = Struct_2(all(vec3<bool>(!(!global2.d.c.x), _wgslsmith_f_op_f32(global2.c.x * -631.0) < _wgslsmith_f_op_f32(round(global2.c.x)), !global2.a)), global2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global2.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.c * global2.c) * vec4<f32>(_wgslsmith_f_op_f32(-928.0), 1146.0, _wgslsmith_f_op_f32(global2.c.x - -351.0), _wgslsmith_f_op_f32(344.0 * -1574.0)))), global2.b);
    }
    var_0 = u_input.c.x;
    return global2.c;
}

fn func_5() -> u32 {
    if (!select(global2.d.c.x, global2.a, select(true, true, !any(vec3<bool>(global2.b.c.x, false, global2.b.c.x))))) {
    }
    return 4294967295u;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> vec3<bool> {
    if (false) {
        var var_0 = Struct_2(true | arg_1.b.c.x, Struct_1(abs(0), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1.b.b.x, u_input.d), arg_0.b.b) >> (arg_1.b.d.xyz % vec3<u32>(32u)), !select(vec2<bool>(arg_1.a, arg_1.b.c.x), select(arg_1.d.c, global2.b.c, arg_1.d.c), arg_1.b.c.x), arg_0.d.d, firstTrailingBit(24585)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(1u, _wgslsmith_clamp_u32(~arg_1.d.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 34501u, 4994u), global2.d.d), ~4294967295u), _wgslsmith_f_op_f32(min(-1000.0, global2.c.x)))))), Struct_1(2147483647, abs(global2.d.b), arg_2, _wgslsmith_div_vec4_u32((arg_1.b.d & global2.d.d) | select(arg_1.b.d, arg_0.b.d, vec4<bool>(false, arg_0.a, global2.b.c.x, false)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 22882u, 44879u, 21118u) | global2.b.d, ~vec4<u32>(1u, arg_0.d.b.x, u_input.d, u_input.d))), abs(_wgslsmith_add_i32(arg_0.b.a << (8345u % 32u), arg_0.b.a << (u_input.d % 32u)))));
        global2 = Struct_2(!arg_1.d.c.x, global2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 356.0, 1635.0, 1043.0))))), Struct_1(-59281, select(~arg_0.b.b, var_0.b.b, select(!vec3<bool>(arg_2.x, var_0.a, true), select(vec3<bool>(true, global2.d.c.x, arg_0.d.c.x), vec3<bool>(global2.a, arg_0.d.c.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), !true)), !vec2<bool>(var_0.b.c.x, !var_0.a), vec4<u32>(arg_1.d.d.x, _wgslsmith_mult_u32(33551u, arg_0.b.b.x) ^ u_input.d, _wgslsmith_clamp_u32(arg_1.d.d.x, global2.b.b.x, arg_0.b.d.x) & 102412u, 0u), ~abs(abs(global2.d.e))));
        if (!false) {
            var var_1 = arg_1;
            global1 = array<vec2<i32>, 7>();
            var var_2 = vec3<bool>(!true, !var_1.d.c.x, var_1.d.b.x > ~arg_1.b.d.x);
        }
        global1 = array<vec2<i32>, 7>();
    }
    switch (_wgslsmith_add_i32(~(-max(arg_0.b.a, arg_0.d.e)) << (arg_0.d.b.x % 32u), ~global2.d.e)) {
        case 14174: {
            global0 = _wgslsmith_div_f32(-317.0, -2509.0);
            switch (2147483647) {
                default: {
                }
            }
            let var_0 = vec3<u32>(_wgslsmith_clamp_u32(global2.b.d.x, ~1u, ~global2.d.d.x & 4294967295u), ~1u, ~_wgslsmith_mult_u32(~func_5(), 0u));
        }
        case 36823: {
            switch (_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~(u_input.c.zy >> (global2.d.d.xz % vec2<u32>(32u))), vec2<i32>(0, 15201)), ~arg_1.d.e)) {
                default: {
                }
            }
        }
        case -1: {
            var var_0 = vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) * _wgslsmith_div_f32(arg_1.c.x, arg_1.c.x))), arg_1.c.x)), global2.c.x, _wgslsmith_f_op_f32(f32(-1.0) * -1779.0));
            global2 = arg_1;
        }
        default: {
        }
    }
    global0 = -1879.0;
    switch (-_wgslsmith_clamp_i32(global2.d.a, u_input.a, -795)) {
        case 67939: {
            global0 = -120.0;
            if (arg_1.a) {
                let var_0 = Struct_2(!(!global2.b.c.x), arg_1.d, global2.c, Struct_1(~(~2858), global2.b.d.ywx, select(vec2<bool>(!false, true), global2.d.c, vec2<bool>(all(vec4<bool>(arg_2.x, global2.a, arg_0.b.c.x, false)), -22461 > global2.d.e)), ~firstTrailingBit(vec4<u32>(arg_0.b.d.x, arg_1.b.b.x, arg_1.b.d.x, 0u)) & ~arg_0.d.d, -9183 >> (66156u % 32u)));
                var var_1 = false;
                global1 = array<vec2<i32>, 7>();
                var var_2 = firstLeadingBit(_wgslsmith_div_i32(1878, var_0.b.e));
            }
        }
        default: {
            global2 = Struct_2(!any(vec3<bool>(!global2.b.c.x, arg_2.x, arg_1.b.c.x)), global2.d, vec4<f32>(_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(trunc(-1000.0))), _wgslsmith_f_op_f32(-332.0), arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * -1016.0)))), global2.d);
            global1 = array<vec2<i32>, 7>();
            var var_0 = min(select(arg_0.b.d.x, _wgslsmith_dot_vec3_u32(~(vec3<u32>(12062u, 0u, 4294967295u) >> (global2.b.d.xyy % vec3<u32>(32u))), firstLeadingBit(abs(vec3<u32>(82765u, global2.b.b.x, arg_0.b.b.x)))), !any(select(vec4<bool>(global2.a, arg_1.b.c.x, global2.a, true), vec4<bool>(arg_0.d.c.x, arg_1.a, true, true), vec4<bool>(arg_2.x, arg_2.x, arg_1.d.c.x, true)))), ~(63372u << (4294967295u % 32u)));
            let var_1 = arg_0.c.x;
            global1 = array<vec2<i32>, 7>();
        }
    }
    global1 = array<vec2<i32>, 7>();
    return select(select(vec3<bool>(arg_0.d.c.x, global2.b.c.x | global2.b.c.x, true), vec3<bool>(false, arg_0.d.c.x, arg_1.d.c.x), vec3<bool>((arg_0.d.d.x & u_input.d) < ~30582u, arg_1.a, arg_0.a)), vec3<bool>(all(select(!vec4<bool>(true, arg_0.d.c.x, false, arg_1.b.c.x), !vec4<bool>(true, arg_0.b.c.x, true, true), select(vec4<bool>(arg_1.d.c.x, false, true, arg_1.b.c.x), vec4<bool>(true, false, global2.d.c.x, arg_0.b.c.x), arg_2.x))), all(!vec4<bool>(true, true, arg_0.a, true)) & select(select(global2.d.c.x, global2.b.c.x, false), false, arg_1.a), any(arg_2)), select(select(vec3<bool>(any(vec3<bool>(arg_1.a, false, true)), !arg_0.d.c.x, !true), vec3<bool>(false, false, !global2.d.c.x), !select(vec3<bool>(arg_1.b.c.x, false, false), vec3<bool>(true, true, arg_0.d.c.x), vec3<bool>(arg_1.a, true, true))), select(vec3<bool>(true, true, !true), vec3<bool>(arg_0.a, !global2.a, true), vec3<bool>(!arg_2.x, any(vec2<bool>(global2.a, true)), 52304u >= global2.d.d.x)), !vec3<bool>(arg_1.d.c.x, select(true, true, arg_1.d.c.x), select(arg_1.b.c.x, true, arg_2.x))));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_2 {
    for (var var_0 = 1; var_0 >= -18110; var_0 += 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        global0 = -543.0;
    }
    let var_0 = min(_wgslsmith_sub_i32(global2.d.e, global2.d.a << (min(~1u, arg_1.d.d.x) % 32u)), _wgslsmith_dot_vec3_i32(u_input.c.zxz, select(u_input.c.yzx, select(firstTrailingBit(u_input.c.yyz), ~u_input.c.ywx, !arg_3), vec3<bool>(true | true, global2.b.c.x, arg_3.x | false))));
    switch (select(_wgslsmith_dot_vec2_i32(vec2<i32>(select(~u_input.c.x, abs(-2147483648), arg_1.c.x <= arg_1.c.x), -2147483648), global1[_wgslsmith_index_u32(u_input.d, 7u)]), _wgslsmith_add_i32(2458, _wgslsmith_mult_i32(u_input.b, -min(arg_1.b.a, arg_1.d.e))), !(-1 < -5895))) {
        case 0: {
            let var_1 = global2.b;
            global1 = array<vec2<i32>, 7>();
            var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global2.c.xw - _wgslsmith_f_op_vec2_f32(global2.c.zy * vec2<f32>(arg_2.x, -796.0))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-871.0 - global2.c.x), arg_2.x))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(360.0, _wgslsmith_f_op_f32(558.0 + arg_1.c.x)))))));
        }
        default: {
            let var_1 = u_input.d;
            let var_2 = global2.b;
            switch (var_2.a) {
                case -1: {
                    let var_3 = arg_2.yx;
                    var var_4 = _wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(0u, countOneBits(global2.b.d.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1, 4294967295u), arg_1.b.b.zz) << (_wgslsmith_mod_vec2_u32(vec2<u32>(global2.d.b.x, 0u), var_2.d.zw) % vec2<u32>(32u))), ~(max(global2.b.d.xz, vec2<u32>(37463u, arg_0.x)) & global2.d.d.wy), var_2.c), vec2<u32>(arg_1.d.d.x, ~24404u), arg_1.d.b.yy);
                }
                case 9413: {
                    var var_3 = _wgslsmith_mod_u32(16789u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, var_2.d.x), global2.b.d.x, 4294967295u), abs(~(~vec3<u32>(38288u, var_2.b.x, 10561u)))));
                    let var_4 = abs(-2147483648);
                    var var_5 = !select(select(!vec4<bool>(global2.a, arg_1.d.c.x, false, global2.a), !select(vec4<bool>(var_2.c.x, arg_1.a, arg_3.x, false), vec4<bool>(global2.d.c.x, arg_3.x, var_2.c.x, true), arg_3.x), _wgslsmith_mod_i32(-1, global2.b.a) > 1), select(vec4<bool>(true, !global2.d.c.x, all(vec4<bool>(arg_3.x, false, false, arg_3.x)), global2.d.c.x), vec4<bool>(false, false, !var_2.c.x, arg_1.a), select(!vec4<bool>(arg_3.x, true, arg_3.x, var_2.c.x), select(vec4<bool>(true, true, global2.d.c.x, arg_1.d.c.x), vec4<bool>(true, true, false, arg_3.x), vec4<bool>(true, global2.d.c.x, true, false)), vec4<bool>(arg_3.x, arg_1.d.c.x, arg_1.a, true))), (!false || arg_3.x) || global2.d.c.x);
                    let var_6 = Struct_1(-2147483648, arg_1.b.b, arg_3.zz, ~vec4<u32>(_wgslsmith_clamp_u32(1u, 11543u, 60630u), var_2.d.x, 1u, reverseBits(~0u)), global2.b.a);
                    var_5 = select(vec4<bool>(!true, false, select(!(false & var_6.c.x), true, func_6(Struct_2(global2.a, var_6, vec4<f32>(arg_1.c.x, 916.0, -1191.0, global2.c.x), Struct_1(var_4, vec3<u32>(0u, arg_1.b.b.x, 44511u), vec2<bool>(var_6.c.x, var_5.x), var_2.d, -2147483648)), arg_1, !var_2.c).x), var_5.x), vec4<bool>((_wgslsmith_f_op_f32(-720.0 - arg_2.x) >= _wgslsmith_f_op_f32(-global2.c.x)) && var_5.x, any(var_5.wzw), arg_3.x, any(vec4<bool>(!arg_1.a, -2147483648 <= 1, all(vec3<bool>(false, true, arg_3.x)), arg_0.x <= u_input.d))), !select(vec4<bool>(true, all(arg_3), var_5.x & arg_3.x, false), select(vec4<bool>(true, false, true, arg_1.d.c.x), !vec4<bool>(false, false, global2.d.c.x, true), false), select(!vec4<bool>(arg_1.a, true, true, arg_3.x), select(vec4<bool>(true, global2.a, arg_1.b.c.x, var_6.c.x), vec4<bool>(true, var_6.c.x, true, var_6.c.x), false), vec4<bool>(false, var_6.c.x, true, true))));
                }
                default: {
                    var var_3 = max(global2.b.b, vec3<u32>(60981u | (4294967295u | arg_1.b.d.x), ~arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 22700u), vec2<u32>(arg_0.x, arg_1.b.d.x)))) ^ global2.d.d.wxy);
                }
            }
        }
    }
    global2 = arg_1;
    var var_1 = vec2<bool>(arg_1.b.c.x, false);
    return arg_1;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global2 = func_7(vec3<u32>(func_5(), 12976u, ~(u_input.d ^ ~87163u)), Struct_2(firstLeadingBit(_wgslsmith_add_u32(u_input.d, global2.b.b.x)) == 43014u, arg_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c), global2.c)), global2.b), _wgslsmith_f_op_vec3_f32(global2.c.wxy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.c.yyy, _wgslsmith_f_op_vec3_f32(select(global2.c.zwz, vec3<f32>(-401.0, arg_0.c.x, arg_0.c.x), vec3<bool>(false, true, true)))))), !vec3<bool>(!true, !(global2.a | false), all(func_6(Struct_2(false, arg_0.b, global2.c, arg_0.d), arg_0, vec2<bool>(true, true)))));
    var var_0 = global2.b.e;
    var var_1 = ~arg_0.b.d.xyy >> (~countOneBits(~(vec3<u32>(u_input.d, 89922u, 1u) << (global2.d.b % vec3<u32>(32u)))) % vec3<u32>(32u));
    for (var var_2 = 43884; false; var_2 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        let var_3 = 4294967295u;
        var var_4 = _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(var_3, 7u)], ~vec2<i32>(global2.d.e, (0 >> (71161u % 32u)) >> (34653u % 32u)));
        break;
    }
    if (false) {
        for (var var_2 = -55236; var_2 <= 5607; var_2 += 1) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        }
        switch (global2.d.e) {
            case 8140: {
                global1 = array<vec2<i32>, 7>();
                let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(var_1.x, 41661u, arg_0.d.d.x)), _wgslsmith_add_vec3_u32(~(vec3<u32>(53664u, 14240u, 1u) >> (vec3<u32>(0u, global2.b.b.x, global2.d.b.x) % vec3<u32>(32u))), arg_0.d.d.zxx)), 1u, u_input.d, _wgslsmith_add_u32(0u, firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.zy >> (var_1.xy % vec2<u32>(32u)), select(var_1.zz, vec2<u32>(u_input.d, 22148u), vec2<bool>(arg_0.d.c.x, false))))));
            }
            case 44934: {
                var var_2 = select(select(vec2<bool>(457.0 < _wgslsmith_f_op_f32(step(arg_0.c.x, -413.0)), !false), func_7(~vec3<u32>(1u, 90408u, 1u), Struct_2(func_7(vec3<u32>(var_1.x, 1u, 16493u), arg_0, vec3<f32>(1335.0, 840.0, 1937.0), vec3<bool>(false, true, arg_0.a)).d.c.x, arg_0.d, _wgslsmith_div_vec4_f32(vec4<f32>(734.0, arg_0.c.x, global2.c.x, global2.c.x), arg_0.c), func_7(vec3<u32>(var_1.x, var_1.x, 49331u), Struct_2(arg_0.d.c.x, global2.d, vec4<f32>(arg_0.c.x, global2.c.x, 374.0, 469.0), Struct_1(1, vec3<u32>(96878u, 85271u, 59201u), arg_0.d.c, vec4<u32>(4706u, var_1.x, u_input.d, global2.b.d.x), 1)), global2.c.zzx, vec3<bool>(global2.d.c.x, arg_0.b.c.x, global2.b.c.x)).d), vec3<f32>(_wgslsmith_div_f32(-217.0, 213.0), global2.c.x, -1053.0), vec3<bool>(!global2.a, false, func_7(vec3<u32>(var_1.x, u_input.d, 18745u), arg_0, vec3<f32>(arg_0.c.x, -529.0, arg_0.c.x), vec3<bool>(arg_0.a, arg_0.a, arg_0.b.c.x)).d.c.x)).d.c, select(global2.d.c, global2.b.c, any(vec3<bool>(global2.d.c.x, arg_0.d.c.x, global2.a)))), select(!global2.d.c, vec2<bool>(~(-32359) <= -global2.b.e, arg_0.b.c.x), !any(select(vec4<bool>(false, global2.b.c.x, true, global2.d.c.x), vec4<bool>(global2.a, false, arg_0.b.c.x, false), arg_0.d.c.x))), select(func_6(arg_0, arg_0, !(!arg_0.d.c)).zy, vec2<bool>(true, func_7(vec3<u32>(var_1.x, var_1.x, var_1.x), func_7(vec3<u32>(arg_0.d.b.x, 0u, arg_0.b.d.x), Struct_2(false, Struct_1(u_input.b, global2.d.d.yzy, arg_0.b.c, vec4<u32>(u_input.d, 18443u, 0u, global2.b.b.x), -1), global2.c, global2.d), arg_0.c.ywx, vec3<bool>(arg_0.b.c.x, false, global2.b.c.x)), arg_0.c.zyz, select(vec3<bool>(arg_0.a, global2.d.c.x, global2.b.c.x), vec3<bool>(true, true, false), false)).a), global2.d.e < -63153));
                return func_7(arg_0.d.d.xwz ^ ~(~global2.d.b), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.c.xyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, arg_0.c.x, 1000.0))))), !(!(!func_6(Struct_2(false, global2.d, arg_0.c, global2.b), arg_0, vec2<bool>(global2.b.c.x, true))))).b;
            }
            case 55883: {
                var var_2 = global2.c.x;
                let var_3 = firstLeadingBit(u_input.c.xwx);
            }
            default: {
                let var_2 = select(_wgslsmith_add_vec3_u32(~firstLeadingBit(_wgslsmith_mult_vec3_u32(global2.d.d.zxw, global2.d.d.xwy)), vec3<u32>(arg_0.b.b.x, abs(1u), 67190u)), select(_wgslsmith_div_vec3_u32(select(~global2.d.d.zxx, ~global2.b.b, global2.b.c.x != global2.b.c.x), ~vec3<u32>(1u, 0u, u_input.d)), ~vec3<u32>(0u, global2.b.b.x, arg_0.b.d.x | arg_0.b.d.x), vec3<bool>(!(global2.d.c.x && false), !false, arg_0.d.c.x)), !vec3<bool>(!any(vec3<bool>(global2.d.c.x, global2.d.c.x, global2.d.c.x)), !(!global2.d.c.x), all(global2.b.c)));
                var var_3 = func_7(~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), arg_0.b.b))), arg_0, vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)))), select(vec3<bool>(global2.a, false, false), vec3<bool>(arg_0.a, !global2.d.c.x, all(vec3<bool>(global2.a, arg_0.b.c.x, arg_0.b.c.x))), func_6(func_7(vec3<u32>(global2.d.b.x, arg_0.b.b.x, 1u), arg_0, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(346.0, global2.c.x, global2.c.x))), select(vec3<bool>(global2.d.c.x, true, arg_0.d.c.x), vec3<bool>(false, true, arg_0.d.c.x), true)), func_7(var_2, func_7(arg_0.d.d.wyx, arg_0, vec3<f32>(1000.0, arg_0.c.x, arg_0.c.x), vec3<bool>(false, global2.a, true)), global2.c.zzy, select(vec3<bool>(global2.a, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, false), false)), !func_7(var_2, Struct_2(arg_0.d.c.x, Struct_1(global2.b.a, vec3<u32>(var_2.x, arg_0.d.b.x, var_2.x), vec2<bool>(arg_0.d.c.x, false), arg_0.b.d, global2.b.e), global2.c, global2.b), vec3<f32>(arg_0.c.x, 1373.0, -201.0), vec3<bool>(arg_0.a, true, arg_0.a)).d.c))).d;
                var var_4 = arg_0.b;
                let var_5 = Struct_2(var_3.c.x, func_7(~var_4.d.zxz, func_7(select(abs(var_4.d.yzy), vec3<u32>(var_1.x, 4294967295u, 1u), !false), Struct_2(!arg_0.b.c.x, Struct_1(-1, vec3<u32>(0u, 4294967295u, 60375u), global2.d.c, vec4<u32>(var_4.d.x, 7676u, var_2.x, u_input.d), arg_0.d.a), _wgslsmith_f_op_vec4_f32(-global2.c), Struct_1(-2147483648, arg_0.b.b, vec2<bool>(arg_0.d.c.x, global2.b.c.x), var_3.d, var_4.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1142.0, 2015.0, arg_0.c.x) + vec3<f32>(-978.0, -551.0, global2.c.x)))), vec3<bool>(func_7(vec3<u32>(var_2.x, global2.b.d.x, var_2.x), arg_0, vec3<f32>(-215.0, arg_0.c.x, 1111.0), vec3<bool>(false, arg_0.d.c.x, false)).d.c.x, all(vec2<bool>(false, global2.a)), func_7(var_2, Struct_2(false, arg_0.b, global2.c, global2.b), vec3<f32>(257.0, 1728.0, 299.0), vec3<bool>(arg_0.a, var_3.c.x, var_4.c.x)).a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(global2.c.xwz)), vec3<f32>(global2.c.x, arg_0.c.x, -101.0)))), select(select(!vec3<bool>(var_4.c.x, global2.d.c.x, true), !vec3<bool>(global2.d.c.x, false, var_4.c.x), !vec3<bool>(false, global2.b.c.x, var_4.c.x)), vec3<bool>(var_4.c.x, global2.b.c.x, var_4.c.x), vec3<bool>(!var_4.c.x, !false, true))).d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, -1345.0, arg_0.c.x, -589.0), vec4<f32>(1539.0, arg_0.c.x, arg_0.c.x, -613.0)))) - _wgslsmith_f_op_vec4_f32(max(func_7(_wgslsmith_add_vec3_u32(arg_0.d.b, vec3<u32>(21413u, 4294967295u, arg_0.d.b.x)), Struct_2(var_3.c.x, Struct_1(arg_0.b.e, vec3<u32>(var_2.x, 0u, 1u), vec2<bool>(true, false), var_4.d, var_4.e), global2.c, arg_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1811.0, 902.0, 1152.0)), select(vec3<bool>(false, false, global2.b.c.x), vec3<bool>(arg_0.d.c.x, false, true), false)).c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-947.0, global2.c.x, arg_0.c.x, global2.c.x)) + _wgslsmith_f_op_vec4_f32(exp2(global2.c)))))), func_7(~select(~vec3<u32>(arg_0.d.d.x, arg_0.d.d.x, u_input.d), vec3<u32>(arg_0.d.d.x, 31744u, 117144u), u_input.b >= 0), Struct_2(!func_6(arg_0, Struct_2(global2.a, Struct_1(0, vec3<u32>(var_4.d.x, 4294967295u, u_input.d), var_4.c, vec4<u32>(1u, arg_0.d.b.x, u_input.d, var_2.x), 1), global2.c, Struct_1(-1, vec3<u32>(0u, 0u, 4294967295u), vec2<bool>(false, var_4.c.x), vec4<u32>(arg_0.b.d.x, u_input.d, 0u, u_input.d), var_4.e)), vec2<bool>(false, arg_0.b.c.x)).x, global2.d, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), -328.0, _wgslsmith_f_op_f32(arg_0.c.x * -769.0), _wgslsmith_f_op_f32(-arg_0.c.x)), func_7(_wgslsmith_div_vec3_u32(global2.b.b, arg_0.d.d.wwx), Struct_2(true, Struct_1(3457, vec3<u32>(1u, 41615u, 1u), vec2<bool>(var_3.c.x, global2.b.c.x), vec4<u32>(1u, var_3.d.x, u_input.d, 4073u), -25957), global2.c, arg_0.b), _wgslsmith_f_op_vec3_f32(arg_0.c.xyy * global2.c.xxz), !vec3<bool>(false, true, global2.d.c.x)).d), _wgslsmith_f_op_vec3_f32(-arg_0.c.yxz), select(select(select(vec3<bool>(global2.b.c.x, true, arg_0.d.c.x), vec3<bool>(true, var_3.c.x, false), true), select(vec3<bool>(var_4.c.x, global2.b.c.x, false), vec3<bool>(true, global2.b.c.x, true), arg_0.d.c.x), vec3<bool>(var_4.c.x, arg_0.b.c.x, false)), vec3<bool>(all(vec4<bool>(var_3.c.x, global2.a, false, true)), !var_3.c.x, false), global2.a)).b);
            }
        }
        for (var var_2 = -1; ; var_2 += 1) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_3 = arg_0.d.a;
            var var_4 = global2.d;
        }
    }
    return Struct_1(global2.d.a & ~0, arg_0.b.d.xyy, !vec2<bool>(~u_input.c.x != firstLeadingBit(2147483647), _wgslsmith_f_op_f32(1631.0 - 195.0) <= -1438.0), ~(~reverseBits(arg_0.d.d | vec4<u32>(0u, 4294967295u, var_1.x, arg_0.d.d.x))), arg_0.d.a);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> vec4<u32> {
    global1 = array<vec2<i32>, 7>();
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        continue;
    }
    if (false) {
        global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.c.x)));
        var var_0 = func_4(arg_0);
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_0 = arg_0;
        global2 = func_7(~vec3<u32>(48150u, 0u, 49945u), Struct_2(true, Struct_1(_wgslsmith_mult_i32(arg_1.x, _wgslsmith_dot_vec3_i32(u_input.c.yxz, vec3<i32>(var_0.b.e, 52495, arg_0.d.e))), _wgslsmith_div_vec3_u32(var_0.b.d.xyz, vec3<u32>(global2.b.d.x, var_0.d.d.x, 4294967295u)) & reverseBits(var_0.d.d.wwy), arg_0.b.c, global2.d.d, -_wgslsmith_add_i32(global2.d.e, global2.d.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-264.0), var_0.c.x, global2.c.x, _wgslsmith_f_op_f32(-var_0.c.x))), Struct_1(~(-1), _wgslsmith_mult_vec3_u32(var_0.b.b, vec3<u32>(1u, u_input.d, var_0.d.b.x)) >> ((global2.b.b >> (vec3<u32>(25873u, 52370u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), !global2.d.c, var_0.b.d, _wgslsmith_sub_i32(-46895, arg_0.b.a) << (16393u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-256.0), _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(f32(-1.0) * -473.0), _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-565.0 - -285.0))), vec3<bool>(func_6(var_0, arg_0, vec2<bool>(var_0.d.c.x, var_0.d.c.x)).x, any(vec4<bool>(var_0.a, false, arg_0.b.c.x, false)) & (_wgslsmith_f_op_f32(select(1113.0, global2.c.x, false)) < 1000.0), false));
        switch (-15772) {
            case 2172: {
                break;
            }
            case 2147483647: {
                continue;
            }
            case -1: {
                var var_1 = func_7(_wgslsmith_mod_vec3_u32(global2.d.b ^ select(vec3<u32>(0u, u_input.d, 1u), vec3<u32>(arg_0.b.d.x, 0u, arg_0.d.b.x), arg_0.d.c.x), vec3<u32>(4294967295u & 48506u, ~28353u, 54085u)) & global2.b.b, func_7(vec3<u32>(firstTrailingBit(~65402u), (u_input.d >> (53497u % 32u)) << ((u_input.d & 1u) % 32u), var_0.d.b.x), func_7(vec3<u32>(~4294967295u, arg_0.b.d.x, var_0.d.d.x), func_7(var_0.b.b, Struct_2(var_0.a, arg_0.d, vec4<f32>(arg_0.c.x, -822.0, -1007.0, global2.c.x), var_0.b), vec3<f32>(global2.c.x, var_0.c.x, arg_0.c.x), select(vec3<bool>(true, true, false), vec3<bool>(var_0.d.c.x, true, arg_0.b.c.x), vec3<bool>(var_0.d.c.x, false, true))), _wgslsmith_f_op_vec4_f32(func_2(6044u, 25858u, arg_0.c.x)).ywy, vec3<bool>(all(vec2<bool>(false, arg_0.b.c.x)), arg_2, -1 == -2147483648)), arg_0.c.wyy, vec3<bool>(arg_0.b.c.x, select(all(vec2<bool>(arg_2, false)), true, arg_2 && arg_0.d.c.x), true)), vec3<f32>(-1140.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.x))), var_0.c.x), !func_6(Struct_2(false, func_4(Struct_2(arg_0.a, Struct_1(-2147483648, vec3<u32>(21984u, u_input.d, arg_0.b.b.x), var_0.d.c, vec4<u32>(90144u, global2.d.b.x, 85936u, global2.b.b.x), arg_0.b.a), vec4<f32>(global2.c.x, arg_0.c.x, -301.0, -2417.0), arg_0.b)), _wgslsmith_f_op_vec4_f32(step(global2.c, vec4<f32>(405.0, 279.0, arg_0.c.x, -421.0))), arg_0.d), var_0, !var_0.b.c));
                global1 = array<vec2<i32>, 7>();
            }
            default: {
                global2 = Struct_2(global2.a, Struct_1(func_7(~(~vec3<u32>(44866u, var_0.d.b.x, u_input.d)), Struct_2(var_0.d.c.x, func_7(var_0.b.d.xxx, Struct_2(arg_0.d.c.x, Struct_1(var_0.b.e, vec3<u32>(1u, 0u, var_0.b.d.x), global2.b.c, vec4<u32>(u_input.d, 4294967295u, arg_0.d.b.x, 0u), 2147483647), var_0.c, var_0.b), global2.c.wyy, vec3<bool>(true, true, arg_2)).b, _wgslsmith_f_op_vec4_f32(exp2(global2.c)), Struct_1(2147483647, arg_0.d.d.xzz, vec2<bool>(false, true), var_0.d.d, 2147483647)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c.yxy)), !(!vec3<bool>(false, var_0.b.c.x, false))).b.e, arg_0.b.b, select(vec2<bool>(!true, all(vec3<bool>(true, true, global2.b.c.x))), vec2<bool>(arg_0.a, arg_2), func_4(arg_0).c), max(global2.d.d, arg_0.d.d), 1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-160.0, 1832.0, -1018.0, -383.0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2(global2.d.b.x, 1u, arg_0.c.x)), vec4<f32>(-567.0, -1123.0, arg_0.c.x, 663.0))) - _wgslsmith_f_op_vec4_f32(arg_0.c + _wgslsmith_f_op_vec4_f32(sign(arg_0.c))))), Struct_1(36213, abs(~global2.b.b) | ~select(vec3<u32>(0u, global2.b.b.x, arg_0.b.b.x), vec3<u32>(45419u, 4294967295u, 0u), vec3<bool>(false, false, true)), !vec2<bool>(!var_0.a, var_0.b.c.x), vec4<u32>(_wgslsmith_add_u32(min(var_0.b.b.x, u_input.d), global2.b.d.x), func_5(), func_4(Struct_2(true, global2.b, var_0.c, Struct_1(u_input.a, vec3<u32>(5883u, u_input.d, 43414u), global2.b.c, vec4<u32>(global2.b.b.x, u_input.d, 0u, 14805u), -1))).d.x, func_5() & _wgslsmith_sub_u32(u_input.d, 16933u)), 2873));
                continue;
            }
        }
        break;
    }
    var var_0 = arg_1.x;
    return vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(global2.d.d.x, arg_0.d.b.x), 1u), global2.d.d.x), ~(_wgslsmith_sub_u32(arg_0.d.d.x, arg_0.d.d.x) | ~0u) & func_5(), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~24964u, 4294967295u & 60981u, min(arg_0.d.d.x, 40111u)), max(~arg_0.b.b, arg_0.b.d.xzy)), ~_wgslsmith_div_u32(u_input.d, u_input.d));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    if (true && ((((false || arg_0.c.x) == (global2.d.e == arg_0.e)) & arg_0.c.x) || !arg_2)) {
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            var var_0 = arg_0.c;
            let var_1 = global2.c.x;
        }
        for (var var_0 = 0; var_0 == 1; var_0 = arg_0.a) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        }
        var var_0 = Struct_2(false, global2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_0.b.x, arg_1, _wgslsmith_f_op_f32(-global2.c.x))) * vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(exp2(2079.0)), _wgslsmith_f_op_f32(-global2.c.x), global2.c.x))), global2.b);
        for (var var_1 = -13870; ; ) {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            var var_2 = Struct_2(global2.b.c.x, var_0.b, _wgslsmith_f_op_vec4_f32(global2.c * var_0.c), Struct_1(-2147483648, _wgslsmith_mod_vec3_u32(global2.d.b, vec3<u32>(arg_1, 14615u, ~1u)), global2.b.c, abs(var_0.d.d), -min(1, arg_0.a)));
            global1 = array<vec2<i32>, 7>();
            break;
        }
    }
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        switch (_wgslsmith_add_i32(u_input.c.x, global2.b.e)) {
            case 2147483647: {
                continue;
            }
            case -1: {
                global0 = _wgslsmith_div_f32(514.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.c.x)), _wgslsmith_f_op_f32(sign(743.0))))));
                let var_0 = Struct_2(false, Struct_1(global2.d.e, ~vec3<u32>(~arg_1, ~arg_0.b.x, 1u), vec2<bool>(!any(vec4<bool>(arg_2, true, false, arg_2)), all(select(vec3<bool>(true, arg_0.c.x, true), vec3<bool>(true, arg_2, true), vec3<bool>(arg_0.c.x, global2.a, arg_2)))), ~func_3(Struct_2(false, global2.d, global2.c, Struct_1(-3556, arg_0.d.zxz, vec2<bool>(true, global2.a), global2.d.d, 30853)), _wgslsmith_sub_vec2_i32(u_input.c.xw, vec2<i32>(-2147483648, arg_0.a)), false), _wgslsmith_dot_vec2_i32(vec2<i32>(-1, arg_0.e), vec2<i32>(global2.d.e, reverseBits(1)))), global2.c, Struct_1(62182 | ~30112, max(global2.d.d.ywx, _wgslsmith_mult_vec3_u32(firstTrailingBit(arg_0.b), arg_0.d.ywx)), !global2.d.c, arg_0.d, ((global2.d.e << (global2.b.d.x % 32u)) >> (~483u % 32u)) ^ -(~arg_0.e)));
                var var_1 = func_7(countOneBits(vec3<u32>(_wgslsmith_div_u32(~0u, arg_0.d.x), ~var_0.d.d.x, ~global2.d.b.x)), func_7(var_0.d.b | vec3<u32>(23972u, global2.d.d.x, ~6836u), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.c.x, -1290.0, -531.0), vec3<f32>(1063.0, var_0.c.x, 999.0))))), !vec3<bool>(false, any(vec4<bool>(arg_2, var_0.a, arg_0.c.x, true)), false)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, global2.c.x, var_0.c.x) - vec3<f32>(-823.0, global2.c.x, 205.0)))), _wgslsmith_div_vec3_f32(var_0.c.wzy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, -325.0, global2.c.x)) + _wgslsmith_f_op_vec3_f32(min(global2.c.wxz, vec3<f32>(-1000.0, global2.c.x, 1000.0))))))), func_6(var_0, func_7(~arg_0.b, Struct_2(!false, func_7(arg_0.b, Struct_2(false, global2.d, global2.c, var_0.b), vec3<f32>(-440.0, -1306.0, global2.c.x), vec3<bool>(true, var_0.b.c.x, arg_0.c.x)).b, _wgslsmith_div_vec4_f32(global2.c, global2.c), global2.d), _wgslsmith_f_op_vec3_f32(-var_0.c.yyy), vec3<bool>(any(vec3<bool>(global2.d.c.x, arg_0.c.x, var_0.d.c.x)), any(vec3<bool>(false, arg_2, arg_2)), 40755u <= 4294967295u)), func_6(Struct_2(arg_2, func_4(Struct_2(global2.d.c.x, Struct_1(33037, vec3<u32>(53606u, var_0.b.d.x, 49551u), vec2<bool>(false, var_0.a), vec4<u32>(var_0.d.d.x, arg_1, arg_0.d.x, arg_0.d.x), 0), var_0.c, var_0.d)), vec4<f32>(-1454.0, -580.0, 655.0, -160.0), arg_0), var_0, vec2<bool>(35029u <= u_input.d, all(vec3<bool>(arg_2, var_0.b.c.x, arg_0.c.x)))).xy));
                break;
            }
            default: {
                global1 = array<vec2<i32>, 7>();
                let var_0 = arg_0.d;
                var var_1 = func_7(vec3<u32>(arg_0.b.x, arg_0.d.x, global2.d.d.x) | ~(~var_0.zww), func_7(~(~max(vec3<u32>(u_input.d, u_input.d, 0u), vec3<u32>(1u, global2.d.d.x, global2.b.b.x))), func_7(var_0.xwx, Struct_2(true, func_4(Struct_2(true, global2.d, vec4<f32>(global2.c.x, -159.0, global2.c.x, -187.0), Struct_1(global2.d.e, vec3<u32>(var_0.x, 0u, 5443u), vec2<bool>(arg_0.c.x, global2.a), vec4<u32>(arg_0.b.x, var_0.x, global2.b.b.x, 1858u), arg_0.e))), global2.c, Struct_1(2147483647, vec3<u32>(1u, 19127u, 1u), arg_0.c, var_0, 0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, -126.0, 482.0)) - _wgslsmith_f_op_vec3_f32(-global2.c.wzx)), !vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_vec3_f32(global2.c.www - vec3<f32>(_wgslsmith_f_op_f32(530.0 * global2.c.x), _wgslsmith_f_op_f32(global2.c.x + global2.c.x), global2.c.x)), !(!select(vec3<bool>(arg_2, arg_0.c.x, false), vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, true, arg_2)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(step(-1729.0, global2.c.x)), _wgslsmith_f_op_f32(f32(-1.0) * -566.0)) * global2.c.xwz) - global2.c.yzx), vec3<bool>(_wgslsmith_f_op_f32(exp2(global2.c.x)) >= _wgslsmith_f_op_f32(-476.0 - -841.0), false, arg_2 && arg_2));
                global1 = array<vec2<i32>, 7>();
            }
        }
        continue;
    }
    let var_0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, 68448u, global2.d.b.x) << (abs(global2.b.b) % vec3<u32>(32u)), abs(arg_0.d.zzz) ^ ~vec3<u32>(arg_0.d.x, arg_1, 5620u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(979.0, -572.0, -1000.0)))), func_7(func_3(func_7(global2.d.b, Struct_2(true, global2.b, vec4<f32>(562.0, -662.0, 1554.0, global2.c.x), arg_0), vec3<f32>(181.0, 459.0, global2.c.x), vec3<bool>(true, global2.d.c.x, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.d.e, 25449), vec2<i32>(arg_0.a, u_input.b)), true).wwy, func_7(~arg_0.b, Struct_2(arg_2, Struct_1(arg_0.e, arg_0.b, vec2<bool>(false, true), vec4<u32>(var_0.x, arg_1, arg_1, var_0.x), arg_0.e), vec4<f32>(global2.c.x, -1605.0, 770.0, global2.c.x), global2.d), _wgslsmith_f_op_vec3_f32(global2.c.www * vec3<f32>(global2.c.x, global2.c.x, -400.0)), vec3<bool>(global2.a, arg_0.c.x, arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.c.zyw, vec3<f32>(global2.c.x, global2.c.x, -272.0)) * vec3<f32>(global2.c.x, -614.0, -347.0)), select(select(vec3<bool>(false, arg_0.c.x, arg_2), vec3<bool>(false, arg_0.c.x, false), arg_2), !vec3<bool>(true, arg_2, false), select(vec3<bool>(arg_0.c.x, true, true), vec3<bool>(arg_2, global2.b.c.x, true), vec3<bool>(false, global2.a, false)))).c.zyy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1318.0)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global2.c.x, global2.c.x)))))));
    for (; ; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        for (var var_2 = ~(-25477); var_2 == 0; var_2 += 1) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            global1 = array<vec2<i32>, 7>();
            let var_3 = arg_0.a;
            let var_4 = 1382.0;
            var var_5 = func_7(_wgslsmith_mod_vec3_u32(countOneBits((vec3<u32>(1u, arg_0.d.x, arg_0.b.x) << (vec3<u32>(arg_0.d.x, 1u, 1u) % vec3<u32>(32u))) << (var_0 % vec3<u32>(32u))), vec3<u32>(firstLeadingBit(~u_input.d), 16616u, func_4(Struct_2(true, Struct_1(-2147483648, vec3<u32>(global2.d.d.x, 18500u, var_0.x), vec2<bool>(false, arg_2), arg_0.d, 52744), vec4<f32>(global2.c.x, 574.0, -466.0, var_4), arg_0)).b.x)), func_7(vec3<u32>(firstLeadingBit(~4294967295u), ~var_0.x, var_0.x), func_7(global2.d.d.yzz, Struct_2(select(global2.a, false, arg_0.c.x), Struct_1(0, vec3<u32>(u_input.d, 38418u, 30027u), vec2<bool>(global2.b.c.x, arg_2), global2.d.d, arg_0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, 710.0, global2.c.x, -2421.0) - vec4<f32>(-108.0, var_1.x, -160.0, 635.0)), func_4(Struct_2(true, arg_0, vec4<f32>(global2.c.x, -511.0, -263.0, var_4), Struct_1(-1, arg_0.d.wxx, vec2<bool>(false, true), vec4<u32>(arg_1, 19893u, 11896u, var_0.x), -8565)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1554.0), -1000.0, _wgslsmith_f_op_f32(max(852.0, -579.0))), !select(vec3<bool>(global2.a, global2.d.c.x, true), vec3<bool>(true, false, true), vec3<bool>(global2.d.c.x, false, true))), var_1, func_6(func_7(arg_0.d.zzx, func_7(arg_0.b, Struct_2(true, arg_0, global2.c, arg_0), vec3<f32>(-208.0, 187.0, -795.0), vec3<bool>(arg_0.c.x, arg_0.c.x, global2.d.c.x)), var_1, vec3<bool>(true, true, global2.b.c.x)), func_7(abs(global2.d.b), func_7(global2.b.b, Struct_2(true, Struct_1(-1, vec3<u32>(arg_0.d.x, u_input.d, 4294967295u), vec2<bool>(true, false), arg_0.d, global2.d.e), vec4<f32>(-109.0, 152.0, -1000.0, 1360.0), global2.b), vec3<f32>(var_4, var_4, var_4), vec3<bool>(false, false, arg_2)), vec3<f32>(var_1.x, global2.c.x, 1041.0), !vec3<bool>(false, true, false)), arg_0.c)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - var_4), 2253.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(f32(-1.0) * -1399.0), !true))), func_6(Struct_2(!false, Struct_1(_wgslsmith_div_i32(-2147483648, 10531), countOneBits(vec3<u32>(global2.b.b.x, arg_0.d.x, 67360u)), vec2<bool>(false, arg_0.c.x), vec4<u32>(arg_1, 0u, 1u, var_0.x) ^ vec4<u32>(arg_0.d.x, global2.d.b.x, arg_1, 1392u), arg_0.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1386.0, 1000.0, var_4) * vec4<f32>(1352.0, 2005.0, var_4, var_4)), Struct_1(global2.b.a, firstLeadingBit(vec3<u32>(4294967295u, arg_1, 0u)), arg_0.c, ~arg_0.d, ~var_3)), func_7(arg_0.d.zxx, Struct_2(4294967295u >= var_0.x, func_4(Struct_2(arg_2, arg_0, vec4<f32>(-217.0, -1423.0, var_4, var_1.x), global2.b)), _wgslsmith_f_op_vec4_f32(-global2.c), arg_0), vec3<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(select(global2.c.x, global2.c.x, arg_0.c.x)), 368.0), vec3<bool>(arg_2, arg_2, arg_2 & true)), global2.b.c));
        }
    }
    return global2.b;
}

fn func_8(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    var var_0 = arg_1.b.x;
    if (true || all(vec4<bool>(all(vec2<bool>(global2.d.c.x, false)), !(!global2.d.c.x), !global2.a, !(arg_1.c.x == arg_1.c.x)))) {
        global1 = array<vec2<i32>, 7>();
    }
    let var_1 = (!arg_1.c.x | func_4(Struct_2(true != false, global2.b, global2.c, arg_1)).c.x) || false;
    for (var var_2 = abs(func_1(func_4(Struct_2(false, Struct_1(-35217, vec3<u32>(1u, 53943u, global2.b.d.x), arg_1.c, arg_1.d, 21633), vec4<f32>(global2.c.x, -466.0, arg_0.x, 601.0), Struct_1(2147483647, vec3<u32>(88u, 4294967295u, 0u), vec2<bool>(var_1, true), arg_1.d, 0))), ~global2.b.d.x, arg_1.e == _wgslsmith_sub_i32(u_input.b, u_input.a)).a | -abs(min(u_input.b, 8533))); var_2 == 0; var_2 += 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
    }
    if (func_4(func_7(_wgslsmith_clamp_vec3_u32(~global2.d.b, global2.b.d.wwz << (vec3<u32>(22022u, 20263u, 18985u) % vec3<u32>(32u)), reverseBits(arg_1.b) >> (~vec3<u32>(83991u, 15661u, arg_1.d.x) % vec3<u32>(32u))), Struct_2(true, func_4(Struct_2(global2.a, arg_1, vec4<f32>(arg_0.x, global2.c.x, 1724.0, -1486.0), Struct_1(arg_1.e, vec3<u32>(u_input.d, arg_1.b.x, arg_1.d.x), vec2<bool>(true, false), global2.b.d, -39349))), _wgslsmith_f_op_vec4_f32(-global2.c), Struct_1(1 << (arg_1.b.x % 32u), ~arg_1.d.xwx, vec2<bool>(global2.a, global2.a), ~global2.d.d, ~arg_1.e)), _wgslsmith_f_op_vec3_f32(select(global2.c.yxz, global2.c.yzz, any(vec3<bool>(false, false, true)))), !select(!vec3<bool>(false, global2.d.c.x, var_1), select(vec3<bool>(false, arg_1.c.x, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(false, true, false)), !vec3<bool>(true, false, false)))).c.x) {
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            let var_2 = select(!select(select(vec4<bool>(var_1, false, global2.d.c.x, global2.d.c.x), !vec4<bool>(arg_1.c.x, true, true, var_1), -2147483648 >= arg_1.a), vec4<bool>(false, !var_1, arg_0.x <= 1338.0, true), select(!vec4<bool>(global2.a, global2.b.c.x, true, true), vec4<bool>(true, false, var_1, false), vec4<bool>(true, false, var_1, global2.b.c.x))), !select(vec4<bool>(false, arg_1.c.x, global2.a, global2.b.c.x), vec4<bool>(!true, !true, arg_1.c.x, 1u < 4294967295u), false), _wgslsmith_div_i32(_wgslsmith_add_i32(12541, arg_1.a) | select(9102, global2.b.a, false), abs(u_input.a & -33537)) < ~(~func_1(arg_1, 4294967295u, true).a));
            var var_3 = global2.d;
            break;
        }
        switch (20038) {
            case -1: {
            }
            case -12870: {
                var_0 = _wgslsmith_clamp_u32(~abs(reverseBits(firstLeadingBit(arg_1.b.x))), max(_wgslsmith_sub_u32(~firstLeadingBit(0u), 0u), arg_1.d.x), 72846u);
                let var_2 = vec4<u32>(firstTrailingBit(~4294967295u), abs(~(~1u)) << ((1u << (global2.d.b.x % 32u)) % 32u), ~arg_1.d.x, countOneBits(4294967295u));
                var var_3 = u_input.c.zz;
            }
            case 0: {
                var var_2 = ~arg_1.d.yw >> (global2.b.d.xx % vec2<u32>(32u));
                let var_3 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_add_u32(~global2.d.b.x, ~(~_wgslsmith_mult_u32(arg_1.d.x, global2.b.d.x))), ~_wgslsmith_mod_u32(u_input.d, ~26300u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.x, arg_0.x) + global2.c.x)));
            }
            default: {
            }
        }
        let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) + global2.c.x), arg_0.x));
    }
    return !all(vec4<bool>(all(arg_1.c), func_1(arg_1, 48667u, true).c.x, true, arg_1.c.x)) & !false;
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = 2147483647; ; var_0 -= 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
    }
    var var_0 = global2.c.x;
    for (var var_1 = -4915; all(select(vec3<bool>(func_8(global2.c.xz, func_1(global2.b, u_input.d, global2.a)), any(select(vec4<bool>(true, global2.d.c.x, global2.b.c.x, global2.d.c.x), vec4<bool>(true, false, global2.b.c.x, global2.b.c.x), global2.b.c.x)), func_7(global2.d.d.xzx, Struct_2(global2.d.c.x, global2.d, vec4<f32>(747.0, global2.c.x, global2.c.x, 642.0), global2.b), global2.c.ywz, vec3<bool>(global2.a, false, global2.a)).b.b.x > u_input.d), func_6(func_7(abs(vec3<u32>(global2.d.b.x, 42115u, 1u)), func_7(vec3<u32>(0u, u_input.d, 0u), Struct_2(global2.b.c.x, Struct_1(-1, global2.b.d.xyx, global2.d.c, global2.d.d, -29465), global2.c, Struct_1(-2147483648, vec3<u32>(34732u, u_input.d, 1u), vec2<bool>(global2.a, global2.d.c.x), vec4<u32>(1u, u_input.d, 0u, global2.b.b.x), -1)), global2.c.zzz, vec3<bool>(true, global2.b.c.x, global2.b.c.x)), global2.c.xzy, !vec3<bool>(global2.d.c.x, global2.a, global2.a)), func_7(vec3<u32>(0u, 20454u, 4294967295u) | vec3<u32>(u_input.d, 10660u, 45374u), func_7(vec3<u32>(6142u, 1u, u_input.d), Struct_2(global2.a, Struct_1(global2.d.a, global2.d.d.yxw, vec2<bool>(true, global2.d.c.x), vec4<u32>(u_input.d, 36824u, u_input.d, u_input.d), global2.b.a), global2.c, global2.b), vec3<f32>(global2.c.x, -1000.0, -557.0), vec3<bool>(global2.d.c.x, true, true)), _wgslsmith_f_op_vec3_f32(max(global2.c.wwz, global2.c.zzy)), func_6(Struct_2(true, global2.b, vec4<f32>(-302.0, global2.c.x, global2.c.x, 2014.0), global2.d), Struct_2(false, global2.b, vec4<f32>(global2.c.x, global2.c.x, global2.c.x, 1095.0), global2.b), global2.d.c)), !global2.d.c), !select(!vec3<bool>(true, true, global2.d.c.x), select(vec3<bool>(global2.a, true, global2.b.c.x), vec3<bool>(global2.d.c.x, false, false), vec3<bool>(false, global2.a, false)), global2.d.c.x))); var_1 += 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        global1 = array<vec2<i32>, 7>();
        global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2686.0));
        var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -2085.0)), _wgslsmith_f_op_f32(-1050.0))))));
    }
    let var_1 = vec2<u32>(~u_input.d, 8698u) ^ _wgslsmith_mod_vec2_u32(global2.d.b.xy, vec2<u32>(125924u, ~abs(0u)));
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        var var_2 = false;
    }
    var_0 = 261.0;
    switch (_wgslsmith_sub_i32(~_wgslsmith_sub_i32(_wgslsmith_add_i32(func_4(Struct_2(global2.a, Struct_1(global2.d.e, global2.b.b, global2.b.c, global2.d.d, 14341), global2.c, global2.b)).e, func_4(Struct_2(false, global2.b, global2.c, global2.b)).a), _wgslsmith_div_i32(~2147483647, u_input.b)), firstLeadingBit(u_input.a))) {
        case -57172: {
            global1 = array<vec2<i32>, 7>();
            switch (-2147483647) {
                default: {
                    let var_2 = global2.b;
                    var var_3 = !select(!select(select(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x), vec4<bool>(global2.b.c.x, global2.b.c.x, global2.b.c.x, var_2.c.x), vec4<bool>(var_2.c.x, true, true, var_2.c.x)), !vec4<bool>(global2.d.c.x, false, false, global2.b.c.x), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, global2.d.c.x, global2.b.c.x), vec4<bool>(false, false, false, var_2.c.x))), !vec4<bool>(select(false, false, var_2.c.x), var_2.c.x, !false, 1u >= 1u), all(select(select(vec4<bool>(var_2.c.x, global2.d.c.x, var_2.c.x, false), vec4<bool>(false, global2.b.c.x, var_2.c.x, false), global2.a), vec4<bool>(var_2.c.x, false, var_2.c.x, global2.d.c.x), func_6(Struct_2(global2.b.c.x, Struct_1(10381, vec3<u32>(var_1.x, 5463u, var_2.d.x), global2.b.c, global2.d.d, -52162), global2.c, Struct_1(var_2.a, vec3<u32>(1u, global2.d.d.x, var_2.d.x), vec2<bool>(var_2.c.x, var_2.c.x), global2.b.d, 19191)), Struct_2(false, global2.b, global2.c, global2.b), var_2.c).x)));
                    global2 = func_7(global2.d.d.zwy, Struct_2(!false, Struct_1(var_2.a, ~var_2.b, !var_2.c, _wgslsmith_add_vec4_u32(func_3(Struct_2(true, Struct_1(-1, global2.b.b, vec2<bool>(true, false), global2.d.d, 1), global2.c, global2.d), vec2<i32>(u_input.b, var_2.e), true), _wgslsmith_add_vec4_u32(global2.d.d, vec4<u32>(var_2.b.x, global2.b.b.x, 41546u, 4294967295u))), -34450 ^ ~(-2147483648)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-541.0, -1941.0, 976.0, global2.c.x))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global2.c - global2.c)))), global2.d), global2.c.xwz, select(!select(select(vec3<bool>(false, false, true), vec3<bool>(var_2.c.x, false, global2.a), var_3.wwz), vec3<bool>(global2.d.c.x, var_3.x, true), var_3.wzz), select(!var_3.wxz, var_3.ywy, vec3<bool>(2147483647 <= -7803, global2.a, false || var_2.c.x)), !vec3<bool>(!false, u_input.a == 1, func_7(global2.b.d.wzx, Struct_2(true, global2.b, global2.c, global2.b), global2.c.xxw, var_3.yzy).a)));
                    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), global2.c.x)));
                    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), global2.c.x) - vec2<f32>(-348.0, -1438.0)));
                }
            }
            var var_2 = Struct_1(~2290, reverseBits(~vec3<u32>(_wgslsmith_dot_vec2_u32(var_1, var_1), _wgslsmith_div_u32(1u, global2.d.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.d.d.x, 17973u), var_1))), vec2<bool>(select(!(!global2.a), global2.b.c.x, all(global2.b.c)), !global2.d.c.x), vec4<u32>(~global2.b.d.x, 4294967295u, 0u, 40600u), ~(~(~40282 | max(-50346, 35803))));
        }
        case 1: {
            var var_2 = global2.d.c.x;
            if (global2.a) {
                var var_3 = global2.b.c.x;
            }
        }
        default: {
            global1 = array<vec2<i32>, 7>();
            if (!(!all(vec4<bool>(any(vec3<bool>(true, false, global2.d.c.x)), all(vec3<bool>(global2.a, false, global2.b.c.x)), any(vec4<bool>(global2.a, global2.d.c.x, global2.a, global2.a)), global2.d.c.x)))) {
                let var_2 = func_7(func_1(global2.b, global2.d.b.x, global2.d.c.x).b, Struct_2(global2.a, Struct_1(-global2.b.e, vec3<u32>(global2.b.d.x, 4294967295u, ~1u), select(select(global2.d.c, global2.d.c, vec2<bool>(true, global2.a)), func_4(Struct_2(global2.d.c.x, global2.d, vec4<f32>(1009.0, global2.c.x, global2.c.x, -868.0), Struct_1(u_input.b, vec3<u32>(u_input.d, var_1.x, u_input.d), vec2<bool>(true, global2.a), global2.d.d, -30842))).c, !false), countOneBits(~vec4<u32>(33465u, 41082u, 4294967295u, global2.d.d.x)), _wgslsmith_clamp_i32(u_input.c.x ^ u_input.c.x, func_4(Struct_2(global2.d.c.x, global2.d, vec4<f32>(global2.c.x, 1846.0, global2.c.x, 380.0), global2.d)).e, -2147483647)), global2.c, func_7(~global2.b.b, Struct_2(!false, func_7(global2.d.d.wyx, Struct_2(global2.d.c.x, Struct_1(4599, global2.b.d.wxy, vec2<bool>(true, global2.d.c.x), global2.b.d, -15282), global2.c, global2.d), vec3<f32>(-550.0, 259.0, global2.c.x), vec3<bool>(global2.a, global2.d.c.x, false)).d, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, global2.c.x, global2.c.x) + vec4<f32>(-1000.0, -655.0, 611.0, -885.0)), global2.d), _wgslsmith_f_op_vec3_f32(global2.c.www * global2.c.zzy), !vec3<bool>(global2.d.c.x, global2.a, false)).b), _wgslsmith_f_op_vec3_f32(global2.c.wxy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(824.0, global2.c.x, global2.c.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(170.0, -603.0, 646.0), vec3<f32>(-1889.0, 1954.0, global2.c.x)))))), select(vec3<bool>(false, func_1(global2.b, 0u, global2.d.c.x).c.x | all(vec3<bool>(true, false, global2.a)), global2.a), !func_6(func_7(global2.b.d.zyz, Struct_2(true, Struct_1(2147483647, vec3<u32>(global2.d.d.x, 19589u, 0u), global2.d.c, vec4<u32>(global2.d.b.x, 1u, 24567u, 6208u), global2.d.e), vec4<f32>(global2.c.x, global2.c.x, global2.c.x, global2.c.x), global2.b), global2.c.zyw, vec3<bool>(global2.a, true, false)), func_7(vec3<u32>(global2.d.b.x, 4294967295u, u_input.d), Struct_2(false, Struct_1(1, global2.b.b, global2.d.c, vec4<u32>(global2.d.d.x, 69878u, global2.b.d.x, 57194u), global2.d.e), vec4<f32>(global2.c.x, global2.c.x, -2071.0, global2.c.x), global2.b), vec3<f32>(global2.c.x, global2.c.x, global2.c.x), vec3<bool>(global2.a, true, global2.a)), global2.d.c), vec3<bool>(global2.d.c.x, all(select(vec2<bool>(global2.d.c.x, false), vec2<bool>(true, true), global2.a)), true)));
            }
            if ((_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.wyz, u_input.c.xyy), vec3<i32>(u_input.c.x, 1, -1)), u_input.c.xyw) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.b.x, 46667u), vec2<u32>(9454u, 0u)) >> (~(4294967295u << (var_1.x % 32u)) % 32u)) % 32u)) >= 2147483647) {
                var var_2 = func_1(func_4(func_7(global2.b.d.wxy, func_7(global2.b.b, func_7(global2.b.d.wxx, Struct_2(global2.a, global2.d, vec4<f32>(global2.c.x, 1006.0, global2.c.x, -1577.0), Struct_1(global2.d.e, vec3<u32>(10223u, u_input.d, global2.b.d.x), global2.b.c, vec4<u32>(var_1.x, 8414u, 0u, 4294967295u), 9533)), vec3<f32>(-1272.0, -1069.0, global2.c.x), vec3<bool>(true, global2.a, false)), vec3<f32>(1134.0, global2.c.x, -781.0), select(vec3<bool>(global2.b.c.x, false, global2.d.c.x), vec3<bool>(false, false, true), vec3<bool>(global2.d.c.x, false, global2.b.c.x))), vec3<f32>(_wgslsmith_f_op_f32(-1086.0), global2.c.x, -1792.0), func_6(Struct_2(global2.d.c.x, Struct_1(0, global2.d.d.xwz, global2.d.c, vec4<u32>(25826u, global2.d.b.x, 1u, 1u), global2.d.e), global2.c, global2.d), Struct_2(global2.a, global2.d, global2.c, global2.b), global2.d.c))), 108963u, -1457.0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -154.0)));
            }
            let var_2 = ~(~36710u);
            let var_3 = (~global2.d.d & ~vec4<u32>(var_2, ~var_1.x, ~global2.b.d.x, func_7(global2.d.d.www, Struct_2(false, Struct_1(u_input.b, global2.d.b, global2.d.c, vec4<u32>(4294967295u, 1u, 0u, 26196u), global2.b.a), global2.c, Struct_1(global2.b.a, global2.b.d.wzw, vec2<bool>(true, true), global2.b.d, -7639)), vec3<f32>(-230.0, global2.c.x, global2.c.x), vec3<bool>(global2.a, global2.d.c.x, false)).b.b.x)) << (firstTrailingBit(func_3(Struct_2(global2.b.c.x, Struct_1(2147483647, global2.d.b, vec2<bool>(global2.d.c.x, true), vec4<u32>(u_input.d, 1u, global2.d.b.x, 75681u), u_input.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1043.0, 611.0, 481.0, global2.c.x) + global2.c), global2.b), u_input.c.zz, select(global2.a, true, false) & false)) % vec4<u32>(32u));
        }
    }
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        var_0 = _wgslsmith_f_op_f32(sign(991.0));
        var var_2 = func_7(global2.b.d.xzw, func_7(_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(75113u, var_1.x), vec2<u32>(8720u, 1u)), ~1u), firstTrailingBit(~vec3<u32>(var_1.x, var_1.x, 59458u))), func_7(global2.b.d.zyx, Struct_2(true, global2.b, _wgslsmith_f_op_vec4_f32(global2.c * vec4<f32>(-334.0, 1252.0, global2.c.x, 753.0)), Struct_1(-1, global2.b.b, vec2<bool>(global2.a, global2.a), global2.b.d, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c.yxx)), select(!vec3<bool>(global2.a, true, global2.a), vec3<bool>(true, true, global2.d.c.x), !vec3<bool>(true, false, global2.d.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c.xxz - vec3<f32>(global2.c.x, 612.0, global2.c.x)) - vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(global2.b.b.x, 4294967295u, -995.0)).x, 1039.0, -1120.0)), select(vec3<bool>(u_input.b != global2.d.a, false, !global2.a), vec3<bool>(false, true, global2.d.c.x), all(!global2.b.c))), global2.c.yzz, vec3<bool>(select(global2.b.c.x, all(vec4<bool>(false, global2.b.c.x, true, global2.d.c.x)), func_4(func_7(vec3<u32>(u_input.d, u_input.d, global2.d.b.x), Struct_2(global2.b.c.x, Struct_1(-55622, vec3<u32>(var_1.x, 1u, u_input.d), vec2<bool>(false, global2.a), global2.b.d, u_input.c.x), global2.c, global2.b), global2.c.yww, vec3<bool>(global2.a, global2.a, false))).c.x), true, !false));
        var var_3 = -309.0;
    }
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~global2.d.b.yx), _wgslsmith_div_vec2_u32(vec2<u32>(global2.b.b.x, u_input.d) << (vec2<u32>(0u, global2.b.b.x) % vec2<u32>(32u)), firstTrailingBit(var_1))) & var_1);
}

