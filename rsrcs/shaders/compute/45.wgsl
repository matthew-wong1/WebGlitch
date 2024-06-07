// {"0:0":[73,106,250,247,31,29,109,185,147,58,230,119,117,9,151,131,78,54,210,246,129,136,59,240,52,70,196,157,138,85,29,0,183,98,243,3,198,66,5,80,87,157,140,218,224,95,107,101]}
// Seed: 9411773166575526153

struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

var<private> global1: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(112731u, 8108u));

var<private> global2: u32;

var<private> LOOP_COUNTERS: array<u32, 23>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~abs(reverseBits(~(~u_input.c.yyx)));
    global0 = array<vec4<u32>, 26>();
    global2 = u_input.c.x;
    var var_1 = !arg_2.e.a.zzw;
    global2 = select(0u, u_input.d, !(~15093u < 13309u));
    return arg_2.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    if (true) {
        for (var var_0 = 2147483647; any(vec3<bool>(!arg_2.b.a.x, false, true)); ) {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            continue;
        }
        switch (_wgslsmith_mod_i32(_wgslsmith_mod_i32(-arg_2.a.e.b.x, abs(~arg_0.b.x)), _wgslsmith_mod_i32(-arg_2.b.b.x << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c.xzw, u_input.c.xzx), 46212u ^ 73551u) % 32u), -41406))) {
            case 1: {
                global0 = array<vec4<u32>, 26>();
                var var_0 = arg_1.a.x;
            }
            case 2723: {
                var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1095.0)));
            }
            case 0: {
                var var_0 = u_input.c.zzx;
                var var_1 = arg_3.x;
                var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~firstTrailingBit(var_0.x), ~4294967295u, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.a.d, 4294967295u), 4294967295u)), u_input.c.wxy);
                var_1 = _wgslsmith_f_op_f32(-arg_3.x);
            }
            case 2147483647: {
                let var_0 = min(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a.d, 0u), vec2<u32>(firstTrailingBit(arg_2.a.d), 29817u)) << (global1[_wgslsmith_index_u32(arg_2.a.d, 1u)] % vec2<u32>(32u)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(0u), ~arg_2.a.d), vec2<u32>(arg_2.a.d, 4294967295u))));
                let var_1 = global0[_wgslsmith_index_u32(arg_2.a.d, 26u)];
                let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(-824.0)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(176.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3.x)), _wgslsmith_f_op_f32(sign(arg_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b.x * _wgslsmith_f_op_f32(arg_2.a.b.x * arg_3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(517.0)))))));
                var var_3 = Struct_3(Struct_2(func_4(any(!arg_1.a.wx), (arg_2.c.x & arg_1.a.x) || all(arg_2.a.a.a.wzz), arg_2.a), vec2<f32>(arg_3.x, arg_2.a.b.x), vec3<bool>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(69378u, 26u)], vec4<u32>(u_input.a.x, 4294967295u, var_0.x, 27941u)) != 78445u, any(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_2.c.x)), true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2.a.d), var_1.yz) >> (~742u % 32u), Struct_1(select(arg_0.a, arg_1.a, arg_2.c.x), select(vec3<i32>(15469, -2147483648, 2147483647), arg_1.b, vec3<bool>(true, arg_2.c.x, false)))), Struct_1(func_4(false, true, Struct_2(func_4(false, arg_2.c.x, arg_2.a), _wgslsmith_div_vec2_f32(arg_2.a.b, arg_2.a.b), !arg_0.a.zxy, ~var_1.x, func_4(true, arg_0.a.x, arg_2.a))).a, arg_1.b >> (~vec3<u32>(arg_2.a.d, var_1.x, var_1.x) % vec3<u32>(32u))), select(arg_1.a, !vec4<bool>(false || arg_1.a.x, arg_0.a.x, all(vec2<bool>(arg_2.c.x, false)), !true), arg_0.a));
                let var_4 = false;
            }
            default: {
                let var_0 = u_input.c.yxw ^ (vec3<u32>(u_input.a.x, 0u, _wgslsmith_add_u32(69442u, 1u)) & min(u_input.c.wyy, min(u_input.c.wzz, u_input.c.www)));
                global0 = array<vec4<u32>, 26>();
                var var_1 = arg_2.b;
                let var_2 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158.0 * -1396.0)), arg_3.x) != arg_2.a.b.x, arg_0.a.x);
                global2 = select(u_input.c.x, 0u, all(var_1.a));
            }
        }
        global1 = array<vec2<u32>, 1>();
        let var_0 = Struct_1(!func_4((true & arg_2.c.x) || !arg_0.a.x, !false, arg_2.a).a, arg_1.b);
        return 1885.0;
    }
    for (var var_0 = 22633; ; global2 = ~_wgslsmith_sub_u32(reverseBits(_wgslsmith_div_u32(u_input.b, u_input.a.x)), 4294967295u)) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        global0 = array<vec4<u32>, 26>();
        return _wgslsmith_f_op_f32(max(346.0, arg_2.a.b.x));
    }
    switch (arg_2.b.b.x) {
        case -1: {
        }
        case -2147483648: {
            let var_0 = Struct_3(Struct_2(func_4(arg_0.a.x, false, Struct_2(Struct_1(vec4<bool>(arg_0.a.x, arg_2.a.e.a.x, true, true), vec3<i32>(arg_2.b.b.x, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.b.x, arg_3.x) - vec2<f32>(arg_3.x, -1000.0)), vec3<bool>(arg_1.a.x, arg_0.a.x, true), ~arg_2.a.d, func_4(arg_2.b.a.x, false, Struct_2(Struct_1(arg_1.a, arg_0.b), arg_3.yy, vec3<bool>(arg_1.a.x, arg_0.a.x, arg_0.a.x), 34333u, arg_1)))), _wgslsmith_f_op_vec2_f32(arg_3.yx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.zy) - _wgslsmith_f_op_vec2_f32(-arg_2.a.b))), func_4(any(vec4<bool>(false, arg_1.a.x, false, true)), all(arg_1.a.yxz), arg_2.a).a.yyz, _wgslsmith_dot_vec3_u32(min(~vec3<u32>(arg_2.a.d, arg_2.a.d, arg_2.a.d), ~vec3<u32>(4294967295u, 77549u, 90479u)), countOneBits(u_input.c.zxy)), arg_2.b), func_4(arg_0.a.x, arg_2.a.b.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -350.0)), Struct_2(arg_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.b.x, arg_3.x) - arg_3.xz) + _wgslsmith_f_op_vec2_f32(max(arg_3.zz, vec2<f32>(-1404.0, 1000.0)))), arg_2.a.a.a.wyx, ~_wgslsmith_mult_u32(98192u, 1u), arg_1)), select(vec4<bool>(!(!arg_0.a.x), !arg_2.c.x, all(!vec4<bool>(false, false, arg_2.c.x, true)), !(!false)), arg_2.b.a, true));
        }
        case 0: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                break;
            }
            let var_0 = Struct_2(Struct_1(vec4<bool>(!false, true, any(arg_2.b.a.ww), !arg_2.c.x), vec3<i32>(~arg_0.b.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(56179, 1, arg_0.b.x, arg_2.b.b.x), vec4<i32>(28881, 1, arg_2.b.b.x, arg_0.b.x))), ~arg_1.b.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_2.a.b * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(258.0, 546.0) - arg_2.a.b) * vec2<f32>(464.0, 162.0))))), vec3<bool>(!any(select(vec4<bool>(true, true, true, true), arg_0.a, vec4<bool>(arg_2.b.a.x, false, true, arg_2.c.x))), any(!vec3<bool>(arg_2.b.a.x, arg_0.a.x, arg_0.a.x)), !((arg_2.a.d <= 85001u) | false)), ~0u >> (34640u % 32u), arg_1);
            switch (-16042) {
                case -1: {
                }
                case -2147483648: {
                    let var_1 = vec3<u32>(max(arg_2.a.d, u_input.c.x), ~(~u_input.a.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(~(var_0.d | var_0.d), 60906u << (u_input.b % 32u)), ~u_input.c.x));
                    var var_2 = ~(abs(u_input.d) << (69637u % 32u));
                    var_2 = 0u;
                    global1 = array<vec2<u32>, 1>();
                }
                default: {
                    global1 = array<vec2<u32>, 1>();
                    let var_1 = arg_1;
                }
            }
            switch (arg_2.a.a.b.x) {
                default: {
                    var var_1 = arg_2.a.b.x;
                    global0 = array<vec4<u32>, 26>();
                    let var_2 = 49916u;
                    global2 = u_input.b;
                }
            }
            var var_1 = -max(vec4<i32>(arg_2.a.e.b.x, arg_0.b.x, (-1389 | 1) >> (~u_input.b % 32u), ~(-arg_1.b.x)), ~vec4<i32>(arg_1.b.x, _wgslsmith_mult_i32(arg_2.a.a.b.x, 1), arg_2.a.e.b.x | -2147483648, reverseBits(-22992)));
        }
        default: {
        }
    }
    if (arg_2.b.a.x) {
        for (; ; ) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            global2 = 0u;
            global0 = array<vec4<u32>, 26>();
            break;
        }
        switch (_wgslsmith_mult_i32(i32(-1) * -1, arg_0.b.x)) {
            case -1: {
                global1 = array<vec2<u32>, 1>();
            }
            case -56357: {
                let var_0 = firstTrailingBit(~arg_2.a.a.b.x);
                global2 = firstLeadingBit(max(u_input.a.x, max(_wgslsmith_mod_u32(3845u, 4294967295u) << (_wgslsmith_mult_u32(0u, 1u) % 32u), 0u)));
                global1 = array<vec2<u32>, 1>();
                var var_1 = !vec2<bool>(arg_0.a.x, -1 != 0);
            }
            case -2147483648: {
            }
            default: {
                let var_0 = ~arg_2.a.d;
                let var_1 = -vec2<i32>(arg_0.b.x, _wgslsmith_mod_i32(2147483647, _wgslsmith_div_i32(arg_1.b.x, 15837)) | arg_1.b.x);
            }
        }
        var var_0 = _wgslsmith_dot_vec3_u32(~min(reverseBits(_wgslsmith_add_vec3_u32(u_input.c.www, vec3<u32>(arg_2.a.d, 0u, u_input.d))), reverseBits(abs(u_input.c.wxw))), u_input.c.xyw);
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            global1 = array<vec2<u32>, 1>();
            continue;
        }
        for (var var_1 = 0; arg_0.a.x; var_1 = 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            break;
        }
    }
    global2 = u_input.a.x;
    return _wgslsmith_f_op_f32(step(1064.0, -382.0));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    switch (_wgslsmith_div_i32(arg_0.b.x, _wgslsmith_mult_i32(arg_0.b.x, min(~arg_0.b.x, -1))) | -18520) {
        case 49450: {
            for (var var_0: i32; firstLeadingBit(arg_0.b.x) < func_4(arg_0.a.x, func_4(all(vec2<bool>(false, true)), any(vec3<bool>(arg_0.a.x, true, arg_0.a.x)), Struct_2(Struct_1(vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.b), vec2<f32>(-353.0, -1531.0), arg_0.a.xyw, 1u, arg_0)).a.x, Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256.0, -1208.0))), select(vec3<bool>(false, arg_0.a.x, false), !vec3<bool>(arg_0.a.x, arg_0.a.x, true), any(arg_0.a.xw)), _wgslsmith_div_u32(u_input.c.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(4294967295u, u_input.a.x))), arg_0)).b.x; var_0 += 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
            var var_0 = Struct_1(arg_0.a, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_0.b.x, arg_0.b.x), abs(arg_0.b.x), arg_0.b.x), 1, arg_0.b.x >> (u_input.b % 32u)) << (u_input.c.zxx % vec3<u32>(32u)));
            var var_1 = arg_0.b.yz;
        }
        case 2147483647: {
            switch (arg_0.b.x) {
                case -16906: {
                    var var_0 = u_input.c.wyz;
                    var_0 = vec3<u32>(46168u, 2331u, 4294967295u);
                    var var_1 = Struct_2(Struct_1(!arg_0.a, arg_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-193.0, -636.0), _wgslsmith_f_op_f32(337.0 + -1650.0)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-251.0, -1192.0)))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(563.0 + 500.0))), _wgslsmith_f_op_f32(func_6(func_4(true, false, Struct_2(Struct_1(vec4<bool>(false, false, true, arg_0.a.x), vec3<i32>(arg_0.b.x, arg_0.b.x, -1)), vec2<f32>(1078.0, -1284.0), vec3<bool>(true, true, arg_0.a.x), var_0.x, arg_0)), func_4(false, arg_0.a.x, Struct_2(arg_0, vec2<f32>(-844.0, 314.0), arg_0.a.yxz, u_input.b, Struct_1(arg_0.a, arg_0.b))), Struct_3(Struct_2(Struct_1(arg_0.a, vec3<i32>(arg_0.b.x, -7415, arg_0.b.x)), vec2<f32>(1344.0, 1000.0), arg_0.a.zwy, 1u, arg_0), arg_0, vec4<bool>(true, arg_0.a.x, arg_0.a.x, false)), vec3<f32>(427.0, 1425.0, -1291.0))))), select(vec3<bool>(false, arg_0.a.x, false && arg_0.a.x), vec3<bool>(_wgslsmith_f_op_f32(f32(-1.0) * -303.0) >= _wgslsmith_f_op_f32(f32(-1.0) * -1353.0), false, arg_0.a.x), arg_0.a.x && (arg_0.a.x || (true | false))), _wgslsmith_clamp_u32(var_0.x, ~(u_input.a.x & ~u_input.a.x), countOneBits(firstLeadingBit(0u))), Struct_1(!vec4<bool>(u_input.d >= 71566u, true, false, any(arg_0.a.wwx)), -vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.b.x), vec2<i32>(0, arg_0.b.x)), arg_0.b.x << (u_input.c.x % 32u), ~0)));
                }
                case -2147483648: {
                    var var_0 = u_input.a.x;
                    var var_1 = -227.0;
                    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1370.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-768.0), _wgslsmith_f_op_f32(-1866.0))) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-182.0 * 459.0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(470.0, 1060.0)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -857.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551.0))));
                }
                case 70580: {
                    let var_0 = Struct_3(Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1037.0, 1000.0) - vec2<f32>(-1309.0, -1000.0))))), vec3<bool>(!arg_0.a.x, true, false), _wgslsmith_clamp_u32(49356u, _wgslsmith_clamp_u32(~u_input.b, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 37632u, u_input.c.x), u_input.c.wxy)), select(max(0u, 9044u), u_input.a.x, !false)), arg_0), Struct_1(!(!vec4<bool>(true, false, false, false)), _wgslsmith_div_vec3_i32(-vec3<i32>(arg_0.b.x, -1, 3038), arg_0.b << (vec3<u32>(33949u, 1u, u_input.a.x) % vec3<u32>(32u))) | -arg_0.b), arg_0.a);
                }
                case 2147483647: {
                    var var_0 = u_input.b;
                    var var_1 = abs(vec4<u32>(u_input.d, firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(46409u, 72248u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.d, 26171u))), countOneBits(max(_wgslsmith_clamp_u32(u_input.c.x, 59903u, u_input.d), u_input.c.x | 323u)), u_input.c.x));
                    let var_2 = Struct_3(Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1414.0, -1000.0) + vec2<f32>(627.0, 1929.0)) + vec2<f32>(191.0, 922.0))), vec3<bool>(any(select(arg_0.a, arg_0.a, vec4<bool>(true, arg_0.a.x, arg_0.a.x, false))), all(select(arg_0.a.zx, vec2<bool>(true, arg_0.a.x), arg_0.a.yw)), (arg_0.a.x && arg_0.a.x) == false), _wgslsmith_clamp_u32(u_input.b, ~(~26118u), var_1.x), func_4(arg_0.a.x, true, Struct_2(func_4(true, arg_0.a.x, Struct_2(arg_0, vec2<f32>(-871.0, 120.0), vec3<bool>(arg_0.a.x, true, false), 74543u, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1240.0, 1948.0)), arg_0.a.xwz, 1u, func_4(false, false, Struct_2(Struct_1(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), arg_0.b), vec2<f32>(-1000.0, 1636.0), arg_0.a.yxx, u_input.a.x, arg_0))))), Struct_1(!(!(!arg_0.a)), (~vec3<i32>(arg_0.b.x, -5479, 5872) | -vec3<i32>(arg_0.b.x, -16571, arg_0.b.x)) >> (~(u_input.c.wwz & vec3<u32>(0u, u_input.d, 30104u)) % vec3<u32>(32u))), !arg_0.a);
                    var_0 = ~(~0u);
                }
                default: {
                    let var_0 = select(countOneBits(arg_0.b.xy), vec2<i32>(-arg_0.b.x, ~(-1) >> (_wgslsmith_sub_u32(12854u, 4294967295u) % 32u)), !(abs(u_input.c.x) == _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, 29526u), u_input.a.x)));
                    global2 = abs(0u >> (0u % 32u));
                    global2 = 17471u;
                    global2 = u_input.a.x;
                    var var_1 = true;
                }
            }
            if (!any(vec3<bool>((arg_0.a.x & arg_0.a.x) & (u_input.c.x <= u_input.c.x), !false, any(!vec2<bool>(arg_0.a.x, false))))) {
                var var_0 = select(-_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.b.x, 17813, -2147483648, arg_0.b.x), max(vec4<i32>(5795, -2147483648, 1, arg_0.b.x), vec4<i32>(1, arg_0.b.x, 19141, arg_0.b.x))), _wgslsmith_add_vec4_i32(vec4<i32>(51414, 11821, arg_0.b.x, -8079) | vec4<i32>(arg_0.b.x, arg_0.b.x, -44578, 2147483647), -min(vec4<i32>(-15301, -2147483648, arg_0.b.x, arg_0.b.x), vec4<i32>(19948, arg_0.b.x, -18148, arg_0.b.x))), vec4<bool>(!(!true), arg_0.a.x, _wgslsmith_f_op_f32(abs(-674.0)) >= _wgslsmith_f_op_f32(f32(-1.0) * -694.0), arg_0.a.x)) & ((-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, 2147483647, 1), vec4<i32>(20581, arg_0.b.x, -28022, 1)) | reverseBits(~vec4<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))) ^ reverseBits(vec4<i32>(arg_0.b.x & -66776, firstTrailingBit(66799), arg_0.b.x, arg_0.b.x)));
            }
            if (16222u <= abs(u_input.c.x)) {
                let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(-1106.0)))), 310.0))));
                let var_1 = Struct_3(Struct_2(func_4(all(select(vec2<bool>(arg_0.a.x, true), vec2<bool>(arg_0.a.x, true), arg_0.a.x)), !(false && false), Struct_2(arg_0, var_0, select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.a.ywx, arg_0.a.xyw), u_input.b ^ 4294967295u, Struct_1(arg_0.a, arg_0.b))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_0.x, var_0.x)))), select(select(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), select(vec3<bool>(false, true, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a.zzw), arg_0.a.wxx), arg_0.a.ywy, arg_0.a.x), u_input.d, func_4(arg_0.a.x, arg_0.a.x, Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1165.0) * vec2<f32>(var_0.x, -1065.0)), vec3<bool>(true, false, false), 6411u, arg_0))), func_4(select(arg_0.a.x, !all(vec3<bool>(true, true, arg_0.a.x)), false), true, Struct_2(func_4(true, arg_0.a.x, Struct_2(arg_0, var_0, arg_0.a.yxw, u_input.b, Struct_1(arg_0.a, arg_0.b))), vec2<f32>(-162.0, _wgslsmith_div_f32(-2056.0, var_0.x)), select(arg_0.a.xwy, vec3<bool>(true, true, arg_0.a.x), !arg_0.a.zzy), u_input.d, func_4(var_0.x >= -1071.0, !true, Struct_2(arg_0, vec2<f32>(var_0.x, var_0.x), vec3<bool>(true, arg_0.a.x, arg_0.a.x), u_input.a.x, arg_0)))), !vec4<bool>(false, func_4(true, arg_0.a.x, Struct_2(arg_0, var_0, arg_0.a.xzz, u_input.a.x, Struct_1(vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), vec3<i32>(arg_0.b.x, arg_0.b.x, 2147483647)))).a.x & true, !(!false), !(!arg_0.a.x)));
                let var_2 = var_1.a.e.b.zx;
                global0 = array<vec4<u32>, 26>();
                var var_3 = ~(-(arg_0.b.x << (max(_wgslsmith_sub_u32(u_input.d, 4294967295u), u_input.a.x) % 32u)));
            }
            if (all(vec3<bool>(all(vec2<bool>(!arg_0.a.x, !arg_0.a.x)), arg_0.a.x | select(false, arg_0.a.x, !arg_0.a.x), any(!(!arg_0.a.xy))))) {
                let var_0 = Struct_3(Struct_2(Struct_1(arg_0.a, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, -2147483648, 46337), vec3<i32>(-1, -76887, arg_0.b.x)), min(arg_0.b.x, arg_0.b.x), ~arg_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(374.0, -1000.0))))), vec3<bool>(func_4(!arg_0.a.x, arg_0.a.x, Struct_2(arg_0, vec2<f32>(153.0, 1000.0), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), 23612u, Struct_1(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<i32>(arg_0.b.x, 2147483647, -20712)))).a.x, any(select(arg_0.a.yy, arg_0.a.ww, false)), arg_0.a.x), 0u, Struct_1(!vec4<bool>(arg_0.a.x, true, true, true), arg_0.b)), arg_0, vec4<bool>(!arg_0.a.x | arg_0.a.x, all(!(!vec3<bool>(arg_0.a.x, true, true))), !all(vec3<bool>(true, arg_0.a.x, arg_0.a.x)), (firstTrailingBit(u_input.b) | ~u_input.b) == reverseBits(12111u)));
                let var_1 = var_0;
            }
            global1 = array<vec2<u32>, 1>();
        }
        case -1: {
            let var_0 = Struct_3(Struct_2(func_4(any(!vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), true, Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-208.0, -798.0), vec2<f32>(1023.0, -294.0))), select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.a.zwx), u_input.c.x, func_4(arg_0.a.x, true, Struct_2(arg_0, vec2<f32>(455.0, -398.0), arg_0.a.wzw, u_input.d, Struct_1(arg_0.a, arg_0.b))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1043.0, 986.0))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -680.0), _wgslsmith_f_op_f32(-1942.0))), select(func_4(u_input.b != 1u, any(vec3<bool>(true, true, false)), Struct_2(arg_0, vec2<f32>(212.0, -175.0), arg_0.a.wzz, 1u, arg_0)).a.yzy, !(!arg_0.a.xzz), true), _wgslsmith_add_u32(1u, u_input.b | ~u_input.d), Struct_1(arg_0.a, ~firstTrailingBit(vec3<i32>(-42069, arg_0.b.x, -39113)))), Struct_1(select(func_4(!true, arg_0.a.x, Struct_2(arg_0, vec2<f32>(-1000.0, 326.0), vec3<bool>(true, true, true), 1u, arg_0)).a, vec4<bool>(arg_0.a.x, arg_0.a.x, all(arg_0.a), true), vec4<bool>(arg_0.a.x, arg_0.a.x, any(vec2<bool>(true, true)), 674.0 > 1157.0)), arg_0.b), select(arg_0.a, select(!(!vec4<bool>(false, false, arg_0.a.x, true)), vec4<bool>(2147483647 > -28601, true, arg_0.a.x, 2181.0 < 240.0), !vec4<bool>(false, arg_0.a.x, arg_0.a.x, true)), arg_0.a.x));
            let var_1 = 0;
            var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(var_0.a.d), 17089u & 0u, countOneBits(var_0.a.d), reverseBits(u_input.b)), _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(13025u, 26u)], ~global0[_wgslsmith_index_u32(u_input.c.x, 26u)])), ~(_wgslsmith_sub_u32(var_0.a.d, 4294967295u) >> ((1u ^ 64124u) % 32u)), 0u), max(_wgslsmith_div_vec4_u32(vec4<u32>(2306u, 7751u, u_input.a.x, 3571u), vec4<u32>(u_input.b, u_input.d, u_input.d, ~var_0.a.d)), ~(~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(var_0.a.d, 26u)], global0[_wgslsmith_index_u32(44584u, 26u)]))));
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_3 = ~1u;
                let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1545.0, var_0.a.b.x, 438.0, -1000.0), vec4<f32>(var_0.a.b.x, -275.0, var_0.a.b.x, var_0.a.b.x))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -610.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), _wgslsmith_f_op_f32(-268.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_6(Struct_1(var_0.b.a, arg_0.b), Struct_1(vec4<bool>(var_0.b.a.x, var_0.c.x, true, var_0.c.x), arg_0.b), var_0, vec3<f32>(var_0.a.b.x, -1536.0, var_0.a.b.x))), var_0.a.b.x, !var_0.c.x)))));
                break;
            }
        }
        case -7028: {
            if (arg_0.b.x < -2147483648) {
                let var_0 = func_4(!any(vec2<bool>(all(vec2<bool>(arg_0.a.x, arg_0.a.x)), arg_0.a.x)), !(true || (true == (arg_0.a.x & arg_0.a.x))), Struct_2(Struct_1(!vec4<bool>(false, arg_0.a.x, false, true), ~(-vec3<i32>(0, arg_0.b.x, 5471))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(249.0, -970.0) + vec2<f32>(-1552.0, 1158.0)), vec2<f32>(551.0, 1761.0)))), arg_0.a.zxw, _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(178u, 26u)], vec4<u32>(u_input.b, 1u, 1u, u_input.c.x)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 721u), 26u)])), func_4(func_4(72738u < u_input.b, true, Struct_2(arg_0, vec2<f32>(736.0, -240.0), arg_0.a.xwy, u_input.a.x, Struct_1(arg_0.a, vec3<i32>(arg_0.b.x, -2727, arg_0.b.x)))).a.x, arg_0.a.x, Struct_2(Struct_1(arg_0.a, vec3<i32>(2147483647, -23106, arg_0.b.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-763.0, 574.0), vec2<f32>(131.0, -674.0)), !arg_0.a.yyz, ~u_input.a.x, Struct_1(arg_0.a, arg_0.b)))));
            }
            var var_0 = func_4(!(!(_wgslsmith_f_op_f32(max(-391.0, 1426.0)) > _wgslsmith_f_op_f32(select(-2031.0, -2039.0, false)))), !(!(!arg_0.a.x)) || !any(arg_0.a.zxz), Struct_2(Struct_1(func_4(1u <= u_input.a.x, true, Struct_2(arg_0, vec2<f32>(681.0, 1000.0), vec3<bool>(arg_0.a.x, arg_0.a.x, false), 1u, Struct_1(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), vec3<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))).a, -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, 3822), arg_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000.0, 967.0) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000.0, 796.0), vec2<f32>(1001.0, 555.0))))), vec3<bool>(all(select(arg_0.a.xyy, arg_0.a.yyz, arg_0.a.yww)), _wgslsmith_dot_vec3_i32(vec3<i32>(1, 1, arg_0.b.x), arg_0.b) < (arg_0.b.x >> (1u % 32u)), false), u_input.c.x, arg_0));
            var var_1 = vec2<i32>(_wgslsmith_mult_i32(7342, var_0.b.x), var_0.b.x);
        }
        default: {
            var var_0 = Struct_3(Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(560.0, 575.0) - vec2<f32>(780.0, -1219.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-312.0, -1571.0))))), !vec3<bool>(!true, all(arg_0.a.xyw), 20419u < 23990u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c.xzz, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4728u), u_input.c.yyx)), u_input.c.wyw), Struct_1(arg_0.a, _wgslsmith_clamp_vec3_i32(abs(arg_0.b), arg_0.b, arg_0.b))), Struct_1(arg_0.a, arg_0.b), arg_0.a);
        }
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        break;
    }
    let var_0 = 751.0;
    let var_1 = Struct_2(func_4(true, false, Struct_2(Struct_1(func_4(arg_0.a.x, arg_0.a.x, Struct_2(Struct_1(arg_0.a, vec3<i32>(-73054, arg_0.b.x, 1)), vec2<f32>(var_0, var_0), vec3<bool>(arg_0.a.x, false, arg_0.a.x), u_input.d, Struct_1(arg_0.a, arg_0.b))).a, _wgslsmith_sub_vec3_i32(arg_0.b, arg_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1329.0))), func_4(all(arg_0.a.yy), u_input.b != 50906u, Struct_2(arg_0, vec2<f32>(var_0, var_0), arg_0.a.zzw, u_input.b, Struct_1(arg_0.a, vec3<i32>(-6310, 2147483647, arg_0.b.x)))).a.zxy, 20976u, Struct_1(vec4<bool>(false, true, true, false), -vec3<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(563.0, -2313.0))), func_4(arg_0.a.x, true, Struct_2(Struct_1(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<i32>(-44875, 48847, arg_0.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1549.0, var_0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1026.0, var_0), vec2<f32>(var_0, 551.0), arg_0.a.x))), arg_0.a.yyw, ~(~43464u), arg_0)).a.xxz, select(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(75893u, u_input.b, u_input.d, u_input.a.x), firstLeadingBit(vec4<u32>(0u, u_input.a.x, 4294967295u, 34461u)))), 5956u, !false), Struct_1(!arg_0.a, -arg_0.b));
    global0 = array<vec4<u32>, 26>();
    return func_4(arg_0.a.x || false, select(any(func_4(!true, arg_0.a.x, Struct_2(Struct_1(arg_0.a, var_1.e.b), var_1.b, vec3<bool>(var_1.c.x, false, arg_0.a.x), u_input.a.x, arg_0)).a.wy), arg_0.a.x, func_4(!(var_1.d <= 1u), all(arg_0.a.zy), var_1).a.x), var_1);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = ~(~(_wgslsmith_add_vec3_i32(abs(arg_0.b), vec3<i32>(0, arg_2.b.b.x, 44032)) | vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-19012, arg_0.b.x, -1), arg_1.b), arg_0.b.x, arg_2.a.a.b.x)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-447.0 * _wgslsmith_f_op_f32(-155.0 * arg_2.a.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(763.0)) - 475.0) * -699.0)));
    for (var var_2 = 1; arg_0.a.x; var_2 = i32(-1) * -abs(arg_1.b.x)) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        var var_3 = select(func_5(Struct_1(func_4(arg_2.c.x, false, Struct_2(arg_2.b, vec2<f32>(1261.0, -1364.0), vec3<bool>(true, arg_1.a.x, arg_1.a.x), arg_2.a.d, arg_2.a.e)).a, func_5(Struct_1(arg_0.a, vec3<i32>(-1, -24023, 2147483647))).b)).a.zxw, arg_0.a.zyw, arg_0.a.wyw);
        for (var var_4 = -26039; ; var_4 += 1) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            global2 = ~(~u_input.c.x) ^ u_input.c.x;
            break;
        }
        let var_4 = true;
        global0 = array<vec4<u32>, 26>();
    }
    global2 = 23590u;
    global2 = abs(max(u_input.d, select(arg_2.a.d, ~u_input.c.x, all(func_5(Struct_1(arg_0.a, vec3<i32>(0, arg_0.b.x, var_0.x))).a))));
    return Struct_1(vec4<bool>(!arg_0.a.x, any(!arg_2.c), arg_0.a.x, arg_0.a.x), vec3<i32>(-_wgslsmith_mod_i32(arg_0.b.x, -2147483648), arg_1.b.x, 2147483647));
}

fn func_8(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_3 {
    switch (-64975) {
        case -1: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                break;
            }
            let var_0 = _wgslsmith_f_op_f32(arg_1.b.x + -693.0);
        }
        case 1: {
            global2 = _wgslsmith_add_u32(countOneBits(_wgslsmith_add_u32(20042u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 21687u), vec4<u32>(arg_1.d, 0u, arg_3.x, 44153u))) >> (4294967295u % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u & arg_3.x, _wgslsmith_div_u32(arg_1.d, 27809u)), ~global1[_wgslsmith_index_u32(select(~arg_3.x, arg_3.x, true), 1u)]));
            let var_0 = Struct_2(arg_1.a, arg_1.b, !func_7(arg_2, Struct_1(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.e.a.x, true), arg_2.b), Struct_3(Struct_2(arg_2, vec2<f32>(-2227.0, arg_1.b.x), vec3<bool>(arg_2.a.x, arg_2.a.x, false), u_input.b, arg_1.e), func_5(arg_1.a), select(vec4<bool>(arg_1.c.x, arg_1.e.a.x, arg_2.a.x, arg_1.e.a.x), arg_1.e.a, arg_2.a))).a.zwz, ~51859u, Struct_1(select(!select(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_2.a.x, arg_1.a.a.x), arg_2.a, arg_1.a.a), select(vec4<bool>(true, true, false, true), func_5(arg_2).a, select(arg_1.e.a, vec4<bool>(true, true, false, false), vec4<bool>(false, false, arg_1.e.a.x, arg_1.a.a.x))), arg_2.a), vec3<i32>(_wgslsmith_sub_i32(0, -arg_1.a.b.x), func_7(Struct_1(arg_2.a, vec3<i32>(arg_1.e.b.x, arg_1.a.b.x, arg_1.a.b.x)), func_5(Struct_1(vec4<bool>(arg_2.a.x, false, arg_1.c.x, false), vec3<i32>(arg_1.a.b.x, -2147483648, 20722))), Struct_3(arg_1, Struct_1(arg_2.a, vec3<i32>(arg_1.a.b.x, arg_0, -39193)), vec4<bool>(arg_2.a.x, true, false, false))).b.x, -2147483648)));
            global1 = array<vec2<u32>, 1>();
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var var_1 = Struct_2(Struct_1(func_4(true, arg_2.a.x, Struct_2(func_7(Struct_1(arg_1.a.a, arg_2.b), Struct_1(vec4<bool>(false, false, arg_1.a.a.x, false), vec3<i32>(-29128, arg_0, 1)), Struct_3(Struct_2(Struct_1(arg_2.a, arg_1.a.b), vec2<f32>(607.0, 2032.0), vec3<bool>(arg_1.a.a.x, var_0.c.x, false), arg_3.x, Struct_1(arg_1.e.a, vec3<i32>(-21089, arg_0, var_0.a.b.x))), Struct_1(vec4<bool>(false, arg_2.a.x, true, true), arg_2.b), arg_2.a)), vec2<f32>(-1177.0, -1218.0), vec3<bool>(var_0.e.a.x, arg_2.a.x, false), 1u, func_4(arg_1.c.x, false, var_0))).a, arg_2.b), var_0.b, !arg_2.a.zzz, u_input.a.x, var_0.a);
                let var_2 = false;
                var var_3 = abs(~(i32(-1) * -(~var_0.a.b.x)));
                let var_4 = func_4(!false, all(!func_7(var_0.e, func_7(Struct_1(var_1.a.a, arg_1.e.b), Struct_1(arg_2.a, arg_2.b), Struct_3(arg_1, Struct_1(arg_1.a.a, arg_1.a.b), vec4<bool>(var_2, var_0.a.a.x, false, var_2))), Struct_3(Struct_2(arg_1.e, vec2<f32>(var_0.b.x, var_1.b.x), vec3<bool>(false, false, false), var_0.d, Struct_1(arg_1.e.a, arg_1.a.b)), arg_1.e, vec4<bool>(true, true, false, arg_2.a.x))).a), Struct_2(arg_2, arg_1.b, arg_1.a.a.xyw, 1331u, Struct_1(!select(vec4<bool>(arg_1.e.a.x, var_0.a.a.x, arg_2.a.x, false), arg_2.a, var_0.e.a.x), arg_2.b)));
                break;
            }
            switch (_wgslsmith_dot_vec2_i32(~(arg_2.b.xy | vec2<i32>(-1, arg_2.b.x << (arg_3.x % 32u))), func_4(var_0.c.x, (arg_1.d <= var_0.d) && true, Struct_2(func_7(Struct_1(arg_1.a.a, arg_1.a.b), Struct_1(vec4<bool>(arg_2.a.x, true, var_0.a.a.x, true), var_0.e.b), Struct_3(Struct_2(Struct_1(vec4<bool>(true, arg_2.a.x, arg_1.a.a.x, arg_1.e.a.x), arg_2.b), vec2<f32>(-155.0, arg_1.b.x), vec3<bool>(arg_1.c.x, false, arg_2.a.x), 0u, Struct_1(vec4<bool>(var_0.a.a.x, arg_1.c.x, arg_2.a.x, true), vec3<i32>(-2147483648, arg_1.e.b.x, 4541))), var_0.e, vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, arg_1.b.x) + vec2<f32>(-936.0, -1125.0)), arg_2.a.zwz, ~76715u, func_7(Struct_1(arg_1.a.a, arg_2.b), arg_1.a, Struct_3(Struct_2(Struct_1(vec4<bool>(true, arg_1.c.x, true, true), vec3<i32>(arg_2.b.x, arg_0, 54126)), var_0.b, vec3<bool>(true, true, arg_2.a.x), arg_3.x, var_0.a), arg_2, vec4<bool>(arg_2.a.x, false, false, false))))).b.yy | func_7(func_7(arg_1.a, Struct_1(arg_1.a.a, arg_2.b), Struct_3(arg_1, Struct_1(vec4<bool>(arg_1.a.a.x, var_0.a.a.x, var_0.c.x, false), vec3<i32>(-4129, arg_2.b.x, -1)), arg_1.a.a)), func_5(arg_1.e), Struct_3(Struct_2(Struct_1(vec4<bool>(false, arg_1.a.a.x, var_0.c.x, true), vec3<i32>(arg_1.e.b.x, 2147483647, arg_2.b.x)), arg_1.b, vec3<bool>(false, arg_1.a.a.x, var_0.a.a.x), arg_3.x, Struct_1(vec4<bool>(arg_1.e.a.x, false, var_0.a.a.x, arg_1.c.x), vec3<i32>(arg_0, var_0.a.b.x, arg_1.e.b.x))), Struct_1(vec4<bool>(var_0.a.a.x, var_0.c.x, arg_1.c.x, true), vec3<i32>(var_0.a.b.x, arg_2.b.x, arg_0)), vec4<bool>(false, arg_2.a.x, true, true))).b.xz)) {
                case 76997: {
                }
                case 49930: {
                    let var_1 = Struct_1(func_4(var_0.a.b.x > arg_1.a.b.x, var_0.e.a.x, Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.b))), vec3<bool>(func_7(var_0.a, Struct_1(vec4<bool>(true, arg_2.a.x, var_0.c.x, arg_1.c.x), vec3<i32>(arg_0, arg_1.e.b.x, -62472)), Struct_3(var_0, arg_2, vec4<bool>(true, true, var_0.c.x, true))).a.x, any(var_0.a.a.zw), false), 4294967295u, Struct_1(arg_1.e.a, var_0.e.b))).a, vec3<i32>(arg_0, _wgslsmith_div_i32(func_5(Struct_1(vec4<bool>(arg_2.a.x, arg_1.c.x, false, false), vec3<i32>(arg_2.b.x, 7471, arg_1.a.b.x))).b.x, ~var_0.e.b.x) | min(arg_1.e.b.x & 2147483647, arg_1.a.b.x), var_0.a.b.x));
                    global0 = array<vec4<u32>, 26>();
                    global1 = array<vec2<u32>, 1>();
                    global2 = ~arg_3.x;
                    global2 = select(~_wgslsmith_dot_vec3_u32(u_input.c.wwz, arg_3.yxx), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_3.yzy) >> (~u_input.c.xyw % vec3<u32>(32u)), u_input.c.wzx) << (_wgslsmith_div_u32(~_wgslsmith_sub_u32(arg_3.x, u_input.a.x), var_0.d) % 32u), all(vec2<bool>(false, true)));
                }
                default: {
                    let var_1 = vec3<bool>(arg_2.a.x, arg_1.a.a.x, !(countOneBits(arg_1.e.b.x) >= _wgslsmith_dot_vec3_i32(reverseBits(arg_1.e.b), vec3<i32>(arg_2.b.x, -2147483648, arg_2.b.x))));
                    return Struct_3(var_0, func_5(arg_2), arg_2.a);
                }
            }
        }
        case -2147483648: {
        }
        default: {
            let var_0 = -abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(-38623, 2875, arg_1.e.b.x, 31094), firstLeadingBit(vec4<i32>(arg_1.a.b.x, arg_0, 1, 29804))));
            global1 = array<vec2<u32>, 1>();
            for (var var_1 = 0; func_7(arg_2, func_4(arg_1.e.a.x, false, arg_1), Struct_3(arg_1, Struct_1(arg_2.a, vec3<i32>(-5314, 6910, arg_2.b.x) << (~arg_3.yww % vec3<u32>(32u))), vec4<bool>(true, arg_2.a.x, any(arg_2.a.yz), all(select(vec4<bool>(false, arg_2.a.x, arg_1.e.a.x, true), vec4<bool>(true, arg_2.a.x, false, false), arg_2.a.x))))).a.x; ) {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            }
        }
    }
    global1 = array<vec2<u32>, 1>();
    let var_0 = Struct_2(Struct_1(arg_1.a.a, vec3<i32>(-1) * -arg_1.e.b), arg_1.b, func_4(false | true, all(arg_2.a), Struct_2(Struct_1(select(arg_2.a, arg_1.e.a, arg_2.a.x), -arg_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b, arg_1.b)), select(vec3<bool>(arg_2.a.x, false, arg_1.a.a.x), !arg_1.e.a.wyy, !arg_1.c), u_input.b, arg_2)).a.ywy, ~arg_1.d, arg_2);
    global0 = array<vec4<u32>, 26>();
    let var_1 = func_4(var_0.e.b.x != _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0, 2147483647, arg_1.a.b.x, arg_2.b.x), vec4<i32>(var_0.e.b.x, -2147483648, arg_2.b.x, arg_1.e.b.x)), var_0.e.b.x), arg_2.b.x), false, Struct_2(Struct_1(vec4<bool>(func_5(Struct_1(vec4<bool>(var_0.c.x, false, arg_1.c.x, var_0.e.a.x), vec3<i32>(-2147483648, -1, 38843))).a.x, !false, var_0.d > var_0.d, false | arg_2.a.x), vec3<i32>(_wgslsmith_add_i32(arg_0, arg_1.e.b.x), ~2147483647, _wgslsmith_dot_vec3_i32(vec3<i32>(17966, 18951, 42310), arg_1.e.b))), vec2<f32>(arg_1.b.x, var_0.b.x), vec3<bool>(func_4(false, false, Struct_2(Struct_1(arg_1.e.a, vec3<i32>(0, -2147483648, arg_2.b.x)), arg_1.b, vec3<bool>(true, false, true), 67523u, arg_1.e)).a.x | var_0.a.a.x, all(!vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_1.c.x)), var_0.e.a.x), arg_3.x, Struct_1(func_4(false & true, arg_1.a.a.x, arg_1).a, var_0.e.b)));
    return Struct_3(Struct_2(Struct_1(!arg_1.a.a, ~countOneBits(arg_2.b)), _wgslsmith_f_op_vec2_f32(round(var_0.b)), !func_4(arg_1.e.a.x, any(vec2<bool>(arg_2.a.x, false)), var_0).a.zyx, ~arg_1.d, arg_2), func_7(func_7(var_0.e, Struct_1(vec4<bool>(arg_2.a.x, true, true, true), -arg_1.a.b), Struct_3(Struct_2(var_1, arg_1.b, vec3<bool>(var_0.a.a.x, arg_1.a.a.x, arg_2.a.x), 14199u, arg_1.a), arg_1.e, func_7(Struct_1(vec4<bool>(var_0.a.a.x, arg_1.e.a.x, false, false), var_1.b), var_0.a, Struct_3(Struct_2(var_1, var_0.b, vec3<bool>(arg_2.a.x, var_0.a.a.x, false), 1u, var_0.a), var_1, var_0.e.a)).a)), func_4(false, !true, var_0), Struct_3(var_0, func_4(select(true, true, true), !var_0.e.a.x, Struct_2(Struct_1(arg_2.a, var_1.b), var_0.b, var_0.c, var_0.d, Struct_1(vec4<bool>(var_1.a.x, false, true, false), arg_1.e.b))), var_1.a)), !var_1.a);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> Struct_3 {
    return func_8(-21909, Struct_2(func_7(Struct_1(arg_2, _wgslsmith_add_vec3_i32(vec3<i32>(arg_3, -27609, arg_3), vec3<i32>(8378, arg_3, arg_3))), func_5(func_4(false, true, Struct_2(Struct_1(vec4<bool>(false, arg_2.x, false, arg_2.x), vec3<i32>(arg_3, 0, -4532)), vec2<f32>(arg_0, arg_1), arg_2.xww, u_input.c.x, Struct_1(arg_2, vec3<i32>(arg_3, arg_3, arg_3))))), Struct_3(Struct_2(Struct_1(arg_2, vec3<i32>(arg_3, arg_3, arg_3)), vec2<f32>(1000.0, arg_0), vec3<bool>(true, true, arg_2.x), 67460u, Struct_1(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec3<i32>(33294, arg_3, arg_3))), func_5(Struct_1(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec3<i32>(arg_3, arg_3, 3438))), vec4<bool>(false, false, arg_2.x, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(2134.0, -311.0))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 610.0), vec2<f32>(arg_1, 1287.0), func_4(arg_2.x, true, Struct_2(Struct_1(vec4<bool>(true, false, arg_2.x, arg_2.x), vec3<i32>(1, arg_3, -2147483648)), vec2<f32>(arg_1, 1000.0), arg_2.wxz, u_input.a.x, Struct_1(vec4<bool>(arg_2.x, arg_2.x, true, true), vec3<i32>(3228, 1, arg_3)))).a.x))), arg_2.ywx, min(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), 31817u), func_4(false, all(!vec2<bool>(false, arg_2.x)), Struct_2(func_7(Struct_1(arg_2, vec3<i32>(-1, arg_3, 79674)), Struct_1(vec4<bool>(arg_2.x, false, true, arg_2.x), vec3<i32>(arg_3, arg_3, 31183)), Struct_3(Struct_2(Struct_1(vec4<bool>(arg_2.x, true, true, arg_2.x), vec3<i32>(arg_3, arg_3, -1)), vec2<f32>(951.0, -1000.0), vec3<bool>(true, false, arg_2.x), 13134u, Struct_1(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec3<i32>(13033, arg_3, 1))), Struct_1(arg_2, vec3<i32>(61082, arg_3, 23786)), arg_2)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, -2010.0), vec2<f32>(-643.0, arg_1))), vec3<bool>(arg_2.x, true, arg_2.x), u_input.d, Struct_1(arg_2, vec3<i32>(arg_3, arg_3, 2147483647))))), Struct_1(func_4(false, false, Struct_2(func_5(Struct_1(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec3<i32>(arg_3, arg_3, arg_3))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-831.0, arg_1)), !arg_2.zyy, 1u, func_4(false, false, Struct_2(Struct_1(arg_2, vec3<i32>(arg_3, 60596, arg_3)), vec2<f32>(-618.0, arg_0), arg_2.yzw, u_input.c.x, Struct_1(arg_2, vec3<i32>(arg_3, 26810, arg_3)))))).a, vec3<i32>(abs(8490), arg_3, i32(-1) * -arg_3)), _wgslsmith_clamp_vec4_u32(vec4<u32>(7389u, ~4294967295u, 12112u, ~4294967295u), max(~global0[_wgslsmith_index_u32(u_input.a.x, 26u)], vec4<u32>(14086u, 38140u, 7749u, u_input.b)), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.c.x)) | firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec4_u32(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 26u)]))));
}

fn func_9(arg_0: Struct_3, arg_1: vec3<bool>) -> i32 {
    switch (~arg_0.a.a.b.x) {
        default: {
            for (var var_0: i32; var_0 > -58985; var_0 -= 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                let var_1 = Struct_3(Struct_2(arg_0.a.a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-803.0), _wgslsmith_f_op_f32(arg_0.a.b.x - arg_0.a.b.x)))), !select(!vec3<bool>(arg_1.x, arg_1.x, false), arg_0.a.c, arg_0.c.x), 1u, Struct_1(func_3(_wgslsmith_f_op_f32(func_6(Struct_1(arg_0.a.e.a, arg_0.a.a.b), Struct_1(arg_0.b.a, vec3<i32>(0, arg_0.b.b.x, -37392)), Struct_3(Struct_2(Struct_1(vec4<bool>(arg_1.x, true, false, arg_0.b.a.x), arg_0.b.b), arg_0.a.b, arg_1, 4294967295u, Struct_1(arg_0.c, vec3<i32>(arg_0.b.b.x, arg_0.b.b.x, -8106))), arg_0.a.e, vec4<bool>(false, arg_1.x, arg_0.a.e.a.x, false)), vec3<f32>(arg_0.a.b.x, -1148.0, 1020.0))), arg_0.a.b.x, func_3(1000.0, 2587.0, vec4<bool>(arg_0.c.x, arg_0.b.a.x, true, true), 1).a.a.a, ~arg_0.b.b.x).a.a.a, vec3<i32>(func_5(arg_0.b).b.x, arg_0.b.b.x << (3489u % 32u), func_5(arg_0.b).b.x))), Struct_1(vec4<bool>(all(!vec4<bool>(arg_0.a.a.a.x, arg_1.x, false, false)), !(arg_0.a.b.x == 1000.0), _wgslsmith_f_op_f32(trunc(arg_0.a.b.x)) <= _wgslsmith_f_op_f32(round(arg_0.a.b.x)), all(arg_1.xy)), vec3<i32>(0, countOneBits(arg_0.b.b.x), 41351) ^ arg_0.a.a.b), select(select(!(!vec4<bool>(true, true, true, true)), arg_0.c, arg_0.b.a.x), arg_0.c, !arg_0.b.a));
                global0 = array<vec4<u32>, 26>();
                let var_2 = func_8(-var_1.b.b.x, func_3(arg_0.a.b.x, _wgslsmith_f_op_f32(-194.0), !func_4(false, true, Struct_2(Struct_1(arg_0.c, vec3<i32>(-1, arg_0.b.b.x, arg_0.a.e.b.x)), arg_0.a.b, var_1.c.yxx, var_1.a.d, Struct_1(arg_0.c, arg_0.a.e.b))).a, ~abs(_wgslsmith_div_i32(11260, var_1.a.e.b.x))).a, Struct_1(vec4<bool>(!true, true, arg_1.x, true), select(vec3<i32>(arg_0.a.e.b.x, _wgslsmith_sub_i32(arg_0.b.b.x, -2147483648), func_8(-35109, Struct_2(arg_0.b, vec2<f32>(702.0, 1000.0), arg_0.c.yxx, 35381u, Struct_1(vec4<bool>(false, true, arg_0.a.e.a.x, arg_0.b.a.x), var_1.b.b)), var_1.b, vec4<u32>(u_input.c.x, 36368u, 0u, var_1.a.d)).b.b.x), select(var_1.b.b, arg_0.a.a.b, vec3<bool>(false, arg_0.b.a.x, var_1.a.e.a.x)), !(!var_1.c.x))), u_input.c | countOneBits(max(global0[_wgslsmith_index_u32(4294967295u, 26u)], countOneBits(u_input.c))));
                var_0 = var_2.a.a.b.x;
            }
            var var_0 = _wgslsmith_f_op_f32(min(func_8(_wgslsmith_mod_i32(arg_0.a.a.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.b.x, arg_0.a.a.b.x) ^ arg_0.b.b.zx, arg_0.a.a.b.xx)), func_8(arg_0.b.b.x, arg_0.a, func_3(499.0, _wgslsmith_f_op_f32(floor(arg_0.a.b.x)), vec4<bool>(arg_0.b.a.x, arg_1.x, true, true), -arg_0.a.e.b.x).b, abs(global0[_wgslsmith_index_u32(93849u, 26u)])).a, func_3(_wgslsmith_f_op_f32(f32(-1.0) * -226.0), _wgslsmith_f_op_f32(f32(-1.0) * -1187.0), vec4<bool>(arg_0.a.a.a.x, !false, arg_1.x, false), -2147483648).b, countOneBits(global0[_wgslsmith_index_u32(arg_0.a.d, 26u)])).a.b.x, _wgslsmith_f_op_f32(arg_0.a.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x + _wgslsmith_f_op_f32(max(arg_0.a.b.x, -1383.0)))))));
        }
    }
    switch (arg_0.b.b.x) {
        default: {
        }
    }
    for (var var_0 = 1; select(arg_1.x, true, func_4(2147483647 >= ~(~(-1114)), true, arg_0.a).a.x); global0 = array<vec4<u32>, 26>()) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_1 = func_8(_wgslsmith_div_i32(arg_0.b.b.x, arg_0.a.e.b.x), func_8(arg_0.b.b.x, arg_0.a, func_3(-177.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(353.0)), 1173.0)), func_8(arg_0.a.e.b.x, arg_0.a, func_7(Struct_1(arg_0.b.a, vec3<i32>(arg_0.a.a.b.x, arg_0.b.b.x, -1)), Struct_1(arg_0.c, arg_0.a.e.b), Struct_3(Struct_2(arg_0.a.e, arg_0.a.b, arg_0.a.a.a.zyz, 1u, Struct_1(vec4<bool>(true, arg_1.x, false, arg_1.x), arg_0.a.a.b)), Struct_1(arg_0.a.e.a, vec3<i32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.a.a.b.x)), vec4<bool>(false, true, arg_1.x, arg_1.x))), vec4<u32>(arg_0.a.d, u_input.a.x, 21287u, 3412u)).a.a.a, (2147483647 & arg_0.a.a.b.x) << (_wgslsmith_mult_u32(u_input.d, 15528u) % 32u)).a.e, global0[_wgslsmith_index_u32(~(4294967295u >> (arg_0.a.d % 32u)) ^ 4294967295u, 26u)]).a, func_8(_wgslsmith_mod_i32(func_4(true == arg_0.c.x, true, func_3(arg_0.a.b.x, 481.0, vec4<bool>(arg_0.b.a.x, arg_1.x, arg_1.x, arg_0.b.a.x), arg_0.b.b.x).a).b.x, -19872), arg_0.a, func_7(arg_0.b, func_8(select(arg_0.a.e.b.x, arg_0.b.b.x, arg_1.x), arg_0.a, Struct_1(vec4<bool>(arg_1.x, false, arg_0.a.e.a.x, false), vec3<i32>(arg_0.b.b.x, -25635, -1)), vec4<u32>(arg_0.a.d, 77282u, arg_0.a.d, 24828u) >> (vec4<u32>(0u, 30748u, arg_0.a.d, arg_0.a.d) % vec4<u32>(32u))).b, func_3(_wgslsmith_f_op_f32(sign(1143.0)), 582.0, func_3(-1258.0, 580.0, vec4<bool>(arg_1.x, false, arg_1.x, true), -2147483648).a.a.a, arg_0.b.b.x & 12651)), (~global0[_wgslsmith_index_u32(0u, 26u)] | vec4<u32>(39629u, arg_0.a.d, 1u, arg_0.a.d)) >> (firstTrailingBit(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(53053u, 26u)], vec4<u32>(arg_0.a.d, arg_0.a.d, u_input.c.x, 9929u))) % vec4<u32>(32u))).a.e, abs(~(u_input.c | select(u_input.c, vec4<u32>(1u, arg_0.a.d, u_input.b, u_input.b), arg_0.b.a.x))));
        }
        for (var var_1: i32; var_1 != 2147483647; var_1 -= 1) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            continue;
        }
        global2 = ~u_input.a.x;
        switch (arg_0.b.b.x) {
            case 0: {
                global0 = array<vec4<u32>, 26>();
                let var_1 = _wgslsmith_f_op_f32(func_6(Struct_1(!arg_0.c, arg_0.b.b), arg_0.b, Struct_3(Struct_2(func_3(_wgslsmith_f_op_f32(step(arg_0.a.b.x, arg_0.a.b.x)), -564.0, arg_0.c, _wgslsmith_div_i32(arg_0.a.a.b.x, arg_0.a.a.b.x)).a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.a.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, arg_0.a.b.x))), arg_1, arg_0.a.d, Struct_1(arg_0.c, func_7(arg_0.b, arg_0.b, Struct_3(arg_0.a, Struct_1(arg_0.b.a, vec3<i32>(0, arg_0.a.e.b.x, 2155)), arg_0.a.e.a)).b)), arg_0.a.a, vec4<bool>(arg_0.a.c.x, arg_1.x, arg_1.x, any(vec3<bool>(true, arg_0.c.x, arg_0.a.e.a.x)) && !true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a.b.x, -1513.0)), _wgslsmith_f_op_f32(max(-2414.0, arg_0.a.b.x))) * -1320.0), 934.0, _wgslsmith_div_f32(100.0, 3331.0))));
                let var_2 = _wgslsmith_clamp_u32(4294967295u | (_wgslsmith_clamp_u32(~102618u, ~arg_0.a.d, _wgslsmith_add_u32(u_input.a.x, 68735u)) >> (countOneBits(1u >> (57937u % 32u)) % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, global0[_wgslsmith_index_u32(arg_0.a.d, 26u)]), firstTrailingBit((67091u << (u_input.a.x % 32u)) ^ _wgslsmith_add_u32(arg_0.a.d, arg_0.a.d))), reverseBits(_wgslsmith_add_u32(4294967295u, u_input.d)));
                global0 = array<vec4<u32>, 26>();
                var var_3 = func_3(_wgslsmith_f_op_f32(-1032.0), 610.0, !vec4<bool>((true == arg_0.a.e.a.x) & (var_1 > -246.0), arg_0.c.x, false, true), 36478);
            }
            case -13608: {
            }
            case -15881: {
                break;
            }
            case 39927: {
                let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785.0 + _wgslsmith_f_op_f32(abs(-483.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -253.0), _wgslsmith_f_op_f32(1997.0 - 2586.0)), _wgslsmith_f_op_f32(-arg_0.a.b.x), select(arg_0.b.a.x, !arg_0.b.a.x, arg_0.c.x)))), arg_0.a.e.a, i32(-1) * 0).a.a.b.yz;
                let var_2 = _wgslsmith_div_i32(func_5(Struct_1(func_4(false, arg_0.c.x, arg_0.a).a, arg_0.b.b)).b.x, ~func_5(Struct_1(arg_0.b.a, arg_0.a.a.b)).b.x ^ _wgslsmith_mod_i32(var_1.x, select(arg_0.b.b.x & var_1.x, -var_1.x, arg_0.a.a.a.x & false)));
                break;
            }
            default: {
                continue;
            }
        }
    }
    global1 = array<vec2<u32>, 1>();
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        if (!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.b.x, arg_0.a.b.x))) == func_3(func_8(_wgslsmith_clamp_i32(8618, arg_0.b.b.x, arg_0.a.e.b.x), Struct_2(arg_0.a.a, vec2<f32>(-300.0, -1722.0), arg_0.b.a.zyy, arg_0.a.d, Struct_1(vec4<bool>(arg_1.x, false, arg_1.x, true), arg_0.b.b)), func_5(Struct_1(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), arg_0.a.e.b)), ~vec4<u32>(97042u, 1u, 4294967295u, arg_0.a.d)).a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(337.0, arg_0.a.b.x))), arg_0.b.a, 19826).a.b.x)) {
            var var_0 = reverseBits(arg_0.a.e.b.x);
            break;
        }
        let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.a.b + vec2<f32>(-393.0, -278.0));
        continue;
    }
    return -func_3(arg_0.a.b.x, _wgslsmith_f_op_f32(arg_0.a.b.x * 164.0), vec4<bool>(!arg_0.c.x, 1000.0 != _wgslsmith_f_op_f32(round(-399.0)), true, false), arg_0.b.b.x).a.a.b.x;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    let var_0 = vec4<bool>(!(!(!any(vec4<bool>(false, false, true, false)))), !(u_input.c.x < _wgslsmith_clamp_u32(arg_0.x, 4500u, u_input.a.x)) == all(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !true, false);
    if (true) {
        global1 = array<vec2<u32>, 1>();
        let var_1 = vec3<bool>(true || var_0.x, !(!((true && false) || all(vec2<bool>(var_0.x, var_0.x)))), !false);
        let var_2 = -func_9(func_3(-198.0, _wgslsmith_f_op_f32(max(1796.0, _wgslsmith_f_op_f32(f32(-1.0) * -332.0))), var_0, ~(-58892 | -21372)), !var_0.zwy);
        var var_3 = Struct_3(func_8(firstLeadingBit(-1), func_8((i32(-1) * -16912) & ~var_2, Struct_2(func_4(true, var_1.x, Struct_2(Struct_1(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec3<i32>(var_2, -1, var_2)), vec2<f32>(-2357.0, 1334.0), var_0.zxx, arg_0.x, Struct_1(var_0, vec3<i32>(2147483647, var_2, var_2)))), vec2<f32>(408.0, -299.0), !vec3<bool>(false, false, true), select(arg_0.x, 0u, false), Struct_1(vec4<bool>(false, var_1.x, true, var_1.x), vec3<i32>(29699, -2255, var_2))), func_8(_wgslsmith_mod_i32(var_2, var_2), func_3(-974.0, 896.0, var_0, var_2).a, Struct_1(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec3<i32>(2147483647, var_2, 0)), firstLeadingBit(vec4<u32>(arg_0.x, 50855u, arg_0.x, 16336u))).b, ~vec4<u32>(u_input.a.x, 4600u, 0u, 4294967295u)).a, Struct_1(vec4<bool>(false, !false, false, var_0.x), min(~vec3<i32>(var_2, 5075, var_2), vec3<i32>(var_2, -34243, var_2))), abs(~global0[_wgslsmith_index_u32(59087u, 26u)])).a, func_5(Struct_1(!func_5(Struct_1(vec4<bool>(var_1.x, var_0.x, var_1.x, var_0.x), vec3<i32>(-2147483648, 16388, 1))).a, -(vec3<i32>(var_2, var_2, var_2) & vec3<i32>(-4076, 1, 1)))), vec4<bool>((10987 & ~var_2) >= 0, var_0.x, select(var_1.x, !true, true), !(!var_0.x)));
    }
    global0 = array<vec4<u32>, 26>();
    var var_1 = false;
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        break;
    }
    return var_0.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> bool {
    global0 = array<vec4<u32>, 26>();
    switch (-2147483648) {
        default: {
            for (var var_0: i32; true; var_0 += 1) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                let var_1 = !(!select(!arg_3, arg_3, func_2(vec3<u32>(1u, 40761u, arg_2.x))));
                let var_2 = func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) - arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1327.0 + _wgslsmith_f_op_f32(arg_0.x + 444.0)))), func_7(Struct_1(!func_8(2147483647, Struct_2(Struct_1(vec4<bool>(arg_1.x, false, var_1.x, arg_1.x), vec3<i32>(-2147483648, 13423, -18078)), vec2<f32>(arg_0.x, arg_0.x), vec3<bool>(arg_3.x, false, false), 47106u, Struct_1(arg_3, vec3<i32>(0, 14045, 1300))), Struct_1(var_1, vec3<i32>(-2147483648, 2147483647, 1)), global0[_wgslsmith_index_u32(u_input.d, 26u)]).a.a.a, _wgslsmith_add_vec3_i32(vec3<i32>(29842, 1, -1), -vec3<i32>(3739, -47716, 0))), func_8(_wgslsmith_mod_i32(17111 ^ -6072, ~53679), func_3(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)), vec4<bool>(false, arg_3.x, true, true), reverseBits(15328)).a, Struct_1(select(arg_3, vec4<bool>(false, true, var_1.x, true), var_1.x), ~vec3<i32>(2147483647, 0, 20180)), vec4<u32>(1u, ~u_input.b, reverseBits(4294967295u), ~arg_2.x)).a.a, func_3(func_8(firstTrailingBit(-1), Struct_2(Struct_1(vec4<bool>(true, false, false, arg_1.x), vec3<i32>(2147483647, 3952, 0)), arg_0.wy, arg_1, u_input.d, Struct_1(vec4<bool>(true, false, arg_3.x, arg_3.x), vec3<i32>(0, 0, 9968))), Struct_1(vec4<bool>(false, var_1.x, arg_1.x, false), vec3<i32>(-1, 12039, -32478)), global0[_wgslsmith_index_u32(~arg_2.x, 26u)]).a.b.x, _wgslsmith_f_op_f32(-258.0 * arg_0.x), select(func_4(false, arg_1.x, Struct_2(Struct_1(var_1, vec3<i32>(8217, -2147483648, 1)), vec2<f32>(arg_0.x, arg_0.x), arg_3.xxw, u_input.a.x, Struct_1(var_1, vec3<i32>(-2147483648, 43448, 27507)))).a, select(var_1, vec4<bool>(false, true, true, var_1.x), vec4<bool>(arg_3.x, false, arg_3.x, false)), var_1), 2147483647)).a, _wgslsmith_div_i32(~firstLeadingBit(2147483647) & -1, 0)).b;
            }
        }
    }
    var var_0 = vec2<u32>(u_input.c.x, countOneBits(_wgslsmith_mod_u32(max(4294967295u | u_input.d, ~u_input.b), u_input.d << (_wgslsmith_add_u32(60678u, u_input.b) % 32u))));
    global1 = array<vec2<u32>, 1>();
    switch (-_wgslsmith_dot_vec3_i32(vec3<i32>(38780, abs(~53898), -33284), ~((vec3<i32>(0, 0, -1678) | vec3<i32>(-1, 0, -13652)) << ((u_input.c.xxz << (vec3<u32>(1u, 0u, arg_2.x) % vec3<u32>(32u))) % vec3<u32>(32u))))) {
        case 15230: {
            var_0 = vec2<u32>(23649u, firstLeadingBit(u_input.c.x));
            if (false) {
                var var_1 = arg_0.xx;
                let var_2 = ~vec3<u32>(~firstLeadingBit(u_input.c.x) >> (3701u % 32u), ~10309u, _wgslsmith_clamp_u32(u_input.b, ~(~0u), _wgslsmith_add_u32(1u, max(36390u, 32658u))));
                let var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(select(-2147483648, -1, arg_3.x), ~(-1))), ~(i32(-1) * -2147483647)), ~(i32(-1) * -func_7(Struct_1(arg_3, vec3<i32>(-1, -1, -1)), Struct_1(vec4<bool>(false, true, arg_1.x, arg_1.x), vec3<i32>(-18906, 42780, -25150)), Struct_3(Struct_2(Struct_1(arg_3, vec3<i32>(0, -1838, -1)), arg_0.zz, arg_1, var_2.x, Struct_1(vec4<bool>(true, true, arg_1.x, false), vec3<i32>(53876, 16141, 4485))), Struct_1(vec4<bool>(arg_1.x, false, arg_3.x, arg_3.x), vec3<i32>(43103, -1, -25816)), arg_3)).b.x));
            }
            var var_1 = Struct_3(func_8(~(-(~(-36097))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -546.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1308.0))), func_7(Struct_1(vec4<bool>(arg_1.x, false, true, arg_3.x), vec3<i32>(-2147483648, 0, 28726)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(12715, 0, -1)), func_8(2147483647, Struct_2(Struct_1(arg_3, vec3<i32>(2147483647, 2147483647, 2147483647)), arg_0.yw, arg_3.www, 1637u, Struct_1(vec4<bool>(arg_1.x, true, true, false), vec3<i32>(2147483647, 21192, -20585))), Struct_1(arg_3, vec3<i32>(39513, 0, -1)), global0[_wgslsmith_index_u32(1u, 26u)])).a, -(40993 >> (12068u % 32u))).a, Struct_1(func_8(select(1, -13882, arg_1.x), func_3(arg_0.x, 595.0, vec4<bool>(arg_1.x, arg_1.x, true, false), -1).a, Struct_1(vec4<bool>(arg_1.x, arg_1.x, true, arg_3.x), vec3<i32>(26571, 1, 1)), countOneBits(vec4<u32>(u_input.b, u_input.d, 6375u, arg_2.x))).b.a, ~func_5(Struct_1(arg_3, vec3<i32>(1, 10900, -14847))).b), _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.x, 122983u, 1u, var_0.x)), global0[_wgslsmith_index_u32(27692u, 26u)])).a, Struct_1(func_3(_wgslsmith_f_op_f32(func_6(Struct_1(vec4<bool>(arg_3.x, true, arg_3.x, true), vec3<i32>(5726, -13375, 1)), func_8(1, Struct_2(Struct_1(vec4<bool>(false, arg_3.x, true, arg_3.x), vec3<i32>(11923, 8827, 0)), vec2<f32>(arg_0.x, -205.0), vec3<bool>(arg_1.x, false, false), 10535u, Struct_1(vec4<bool>(arg_1.x, arg_3.x, arg_3.x, arg_3.x), vec3<i32>(2147483647, -5465, -1))), Struct_1(arg_3, vec3<i32>(-27523, 31617, 46574)), vec4<u32>(23568u, 18205u, var_0.x, u_input.a.x)).a.e, func_3(arg_0.x, arg_0.x, arg_3, -2147483648), arg_0.wwx)), arg_0.x, !arg_3, ~select(2147483647, -53383, arg_1.x)).b.a, vec3<i32>(_wgslsmith_div_i32(abs(3117), _wgslsmith_mod_i32(-7203, -30925)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1, 2147483647, 18839), vec3<i32>(1, 7975, 7941)), ~4638), 4956)), arg_3);
            var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000.0, arg_0.x) - _wgslsmith_f_op_vec2_f32(round(arg_0.wy)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1139.0, 166.0) * _wgslsmith_f_op_vec2_f32(exp2(var_1.a.b))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(664.0)), _wgslsmith_f_op_f32(var_1.a.b.x * -2316.0)));
        }
        case -2147483648: {
            var_0 = ~countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, _wgslsmith_sub_u32(2154u, var_0.x)) << (var_0.x % 32u), 1u)]);
            var var_1 = func_4((_wgslsmith_dot_vec3_i32(vec3<i32>(10625, -2147483648, -15441) & vec3<i32>(-18760, -2147483648, -42091), vec3<i32>(0, -1, 0)) ^ -32096) != ((_wgslsmith_dot_vec3_i32(vec3<i32>(30228, 2147483647, -1), vec3<i32>(-1, 8131, 84465)) << (36719u % 32u)) ^ (i32(-1) * 0)), !any(!(!vec3<bool>(arg_3.x, arg_1.x, true))), func_8(~(~(i32(-1) * -9165)), Struct_2(func_7(func_8(-1, Struct_2(Struct_1(arg_3, vec3<i32>(-1, -3467, 23627)), arg_0.wz, vec3<bool>(true, arg_1.x, false), arg_2.x, Struct_1(arg_3, vec3<i32>(-3610, -15725, 31534))), Struct_1(arg_3, vec3<i32>(-73838, -2147483648, -9372)), vec4<u32>(arg_2.x, var_0.x, 22796u, u_input.c.x)).b, func_4(false, false, Struct_2(Struct_1(vec4<bool>(arg_3.x, arg_3.x, false, true), vec3<i32>(1, 0, 38838)), arg_0.zy, vec3<bool>(arg_3.x, false, false), 60782u, Struct_1(vec4<bool>(false, arg_3.x, false, arg_3.x), vec3<i32>(-2147483648, 0, -1)))), func_3(arg_0.x, 878.0, vec4<bool>(arg_3.x, false, false, arg_3.x), 1)), _wgslsmith_f_op_vec2_f32(arg_0.xz * _wgslsmith_f_op_vec2_f32(arg_0.yy + arg_0.yy)), !arg_3.yxw, max(1u, arg_2.x), Struct_1(arg_3, _wgslsmith_mod_vec3_i32(vec3<i32>(0, 9987, 37794), vec3<i32>(1, -2147483648, 1)))), Struct_1(func_4(true, 45252 <= 24662, Struct_2(Struct_1(arg_3, vec3<i32>(-1, 8649, -2147483648)), vec2<f32>(-1261.0, -1242.0), arg_3.ywz, u_input.b, Struct_1(vec4<bool>(arg_3.x, false, true, arg_1.x), vec3<i32>(27552, 0, -21312)))).a, abs(-vec3<i32>(27691, 49582, -1))), _wgslsmith_sub_vec4_u32(~arg_2, vec4<u32>(83816u, u_input.a.x, arg_2.x, var_0.x)) >> (((vec4<u32>(var_0.x, var_0.x, arg_2.x, 100454u) >> (vec4<u32>(37352u, 1u, arg_2.x, u_input.d) % vec4<u32>(32u))) & firstLeadingBit(u_input.c)) % vec4<u32>(32u))).a);
            var var_2 = vec3<u32>(_wgslsmith_sub_u32(1u, 4294967295u) << (_wgslsmith_div_u32(u_input.c.x, 32487u) % 32u), func_3(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 218.0) - _wgslsmith_f_op_f32(f32(-1.0) * -524.0)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - -396.0)))), vec4<bool>(func_9(Struct_3(Struct_2(Struct_1(var_1.a, vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x)), vec2<f32>(arg_0.x, arg_0.x), arg_3.zxx, 4294967295u, Struct_1(vec4<bool>(true, true, arg_3.x, false), var_1.b)), Struct_1(vec4<bool>(arg_1.x, false, var_1.a.x, false), var_1.b), var_1.a), vec3<bool>(arg_1.x, arg_3.x, arg_1.x)) != _wgslsmith_sub_i32(var_1.b.x, var_1.b.x), !func_2(u_input.c.ywx), arg_1.x, _wgslsmith_div_f32(arg_0.x, arg_0.x) < _wgslsmith_div_f32(734.0, -1000.0)), (i32(-1) * -3396) ^ _wgslsmith_mod_i32(var_1.b.x, ~var_1.b.x)).a.d, var_0.x);
            var_1 = Struct_1(var_1.a, vec3<i32>(var_1.b.x, -31403, var_1.b.x));
        }
        case -16862: {
            global0 = array<vec4<u32>, 26>();
        }
        default: {
            global2 = 31815u;
        }
    }
    return (-1 >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(33950u), 4294967295u ^ 27492u, ~1u), 19871u) % 32u)) < _wgslsmith_add_i32(reverseBits(-2288 << (u_input.a.x % 32u)), ~func_3(406.0, 2445.0, vec4<bool>(false, arg_3.x, arg_3.x, true), 0).a.e.b.x ^ (i32(-1) * -2147483648));
}

@compute
@workgroup_size(1)
fn main() {
    if (!(!any(select(!vec2<bool>(false, true), !vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))))) {
        global0 = array<vec4<u32>, 26>();
        global2 = ~(~u_input.c.x);
    }
    var var_0 = vec3<u32>(firstTrailingBit(u_input.a.x), reverseBits(_wgslsmith_sub_u32(1u, u_input.c.x)) ^ ~60429u, 7196u) >> (~(~countOneBits(firstTrailingBit(u_input.c.yxy))) % vec3<u32>(32u));
    var var_1 = !(!(!true || func_1(vec4<f32>(120.0, 228.0, -157.0, -1194.0), vec3<bool>(true, true, false), u_input.c, vec4<bool>(true, false, true, true))) | ((_wgslsmith_clamp_u32(25988u, 1u, var_0.x) >> (var_0.x % 32u)) != (var_0.x >> (countOneBits(u_input.b) % 32u))));
    switch (0) {
        default: {
            for (var var_2: i32; var_2 <= -2147483648; ) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                var var_3 = _wgslsmith_f_op_f32(f32(-1.0) * -824.0);
            }
            var var_2 = min(_wgslsmith_clamp_vec2_i32(-select(vec2<i32>(11098, -11392), vec2<i32>(10306, -40186), vec2<bool>(true, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(-17811, 1), func_4(true, true, Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(-4740, 0, -2214)), vec2<f32>(-793.0, -347.0), vec3<bool>(false, true, false), var_0.x, Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(-26795, -18649, 29865)))).b.zx), ~(vec2<i32>(1, 0) | vec2<i32>(-6030, -2147483648))), -(~(~vec2<i32>(1, -2147483648)))) >> (max(~u_input.a, var_0.zx) % vec2<u32>(32u));
            global1 = array<vec2<u32>, 1>();
            if (any(select(select(select(vec4<bool>(false, false, false, false), !vec4<bool>(true, false, false, false), !vec4<bool>(false, true, true, true)), !vec4<bool>(true, false, true, true), 29323 < var_2.x), vec4<bool>(func_8(-26957, func_3(1161.0, 1645.0, vec4<bool>(true, true, false, false), var_2.x).a, func_8(var_2.x, Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(var_2.x, var_2.x, var_2.x)), vec2<f32>(-779.0, 398.0), vec3<bool>(true, true, true), var_0.x, Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(var_2.x, 0, 1))), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(var_2.x, -1, 22617)), global0[_wgslsmith_index_u32(u_input.b, 26u)]).a.a, ~u_input.c).a.a.a.x, func_7(func_8(var_2.x, Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(1, var_2.x, -2147483648)), vec2<f32>(-1000.0, -203.0), vec3<bool>(false, true, false), 0u, Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(1371, -1, 2147483647))), Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(var_2.x, var_2.x, var_2.x)), vec4<u32>(1u, var_0.x, u_input.c.x, 32033u)).b, Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(17621, -23519, var_2.x)), func_8(2147483647, Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(var_2.x, -46611, -8807)), vec2<f32>(-407.0, -387.0), vec3<bool>(true, true, true), var_0.x, Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(50104, var_2.x, var_2.x))), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(-870, 86830, var_2.x)), vec4<u32>(u_input.a.x, 58383u, u_input.a.x, var_0.x))).a.x, !(true & false), func_7(func_8(0, Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(-32993, 1, -34736)), vec2<f32>(-1593.0, -203.0), vec3<bool>(false, true, true), 4294967295u, Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-1, 2932, 2147483647))), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(2147483647, var_2.x, 0)), vec4<u32>(u_input.b, var_0.x, u_input.a.x, 1u)).b, Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(3312, var_2.x, var_2.x)), func_8(2147483647, Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(var_2.x, var_2.x, var_2.x)), vec2<f32>(-1453.0, 376.0), vec3<bool>(true, true, false), u_input.d, Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(var_2.x, var_2.x, var_2.x))), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(var_2.x, var_2.x, var_2.x)), u_input.c)).a.x), select(func_4(false, !true, func_8(-1, Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(var_2.x, 0, var_2.x)), vec2<f32>(-674.0, 1044.0), vec3<bool>(false, false, true), 0u, Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(var_2.x, 30559, -33135))), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(var_2.x, 12732, var_2.x)), u_input.c).a).a, !(!vec4<bool>(true, false, true, false)), func_8(_wgslsmith_div_i32(1, 2147483647), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(var_2.x, var_2.x, 1)), vec2<f32>(-505.0, -267.0), vec3<bool>(false, false, false), var_0.x, Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(14712, 2507, var_2.x))), func_3(819.0, -343.0, vec4<bool>(true, true, true, false), var_2.x).a.e, global0[_wgslsmith_index_u32(10728u >> (u_input.a.x % 32u), 26u)]).a.e.a)))) {
                let var_3 = Struct_2(Struct_1(vec4<bool>(var_2.x <= var_2.x, any(vec3<bool>(true, false, false)) && all(vec4<bool>(false, true, true, true)), any(!vec3<bool>(true, true, true)), func_3(-835.0, _wgslsmith_f_op_f32(-107.0 - 104.0), vec4<bool>(true, false, true, true), var_2.x).c.x), firstLeadingBit(firstTrailingBit(vec3<i32>(var_2.x, 1, var_2.x)))), func_8(var_2.x, Struct_2(Struct_1(!vec4<bool>(true, true, true, false), firstLeadingBit(vec3<i32>(0, -20303, 1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(133.0, 765.0)), vec3<bool>(func_2(u_input.c.zzz), false | false, !false), u_input.b, Struct_1(func_5(Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(var_2.x, var_2.x, var_2.x))).a, _wgslsmith_sub_vec3_i32(vec3<i32>(-21300, var_2.x, -2147483648), vec3<i32>(var_2.x, 1, var_2.x)))), Struct_1(vec4<bool>(true, true && true, 35811u < u_input.a.x, any(vec3<bool>(false, false, true))), (vec3<i32>(4507, var_2.x, -2147483648) << (u_input.c.wyw % vec3<u32>(32u))) & -vec3<i32>(2144, 0, var_2.x)), global0[_wgslsmith_index_u32(~var_0.x, 26u)]).a.b, func_4(!(!true & true), !true, Struct_2(Struct_1(vec4<bool>(true, false, false, false), -vec3<i32>(var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000.0, 755.0) + vec2<f32>(-274.0, 254.0)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(275.0, -1451.0), vec2<f32>(1926.0, -1040.0))))), !vec3<bool>(true, false, false), u_input.b, Struct_1(vec4<bool>(false, false, true, false), countOneBits(vec3<i32>(-32280, -2147483648, 0))))).a.xzw, u_input.b, Struct_1(select(vec4<bool>(!true, !false, 4294967295u >= var_0.x, 202.0 > 578.0), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), false && false), vec4<bool>(!false, all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)), false & false)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, var_2.x, 9012), reverseBits(vec3<i32>(-8362, var_2.x, -29146))), vec3<i32>(i32(-1) * -49563, i32(-1) * -1, 2147483647))));
                var var_4 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(Struct_1(var_3.a.a, var_3.e.b)), func_3(_wgslsmith_div_f32(var_3.b.x, var_3.b.x), _wgslsmith_f_op_f32(-1883.0 - -828.0), var_3.a.a, -1 ^ 21124).a.a, Struct_3(func_3(1666.0, 304.0, vec4<bool>(false, var_3.c.x, false, var_3.a.a.x), 2147483647).a, func_3(var_3.b.x, 1833.0, vec4<bool>(false, var_3.c.x, false, true), -19406).a.a, func_8(0, Struct_2(Struct_1(var_3.e.a, var_3.e.b), var_3.b, vec3<bool>(var_3.e.a.x, true, false), u_input.a.x, var_3.e), var_3.a, u_input.c).b.a), vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x - -1135.0), var_3.b.x, _wgslsmith_f_op_f32(var_3.b.x - 1640.0))))), 1000.0, !select(vec4<bool>(func_8(var_3.e.b.x, Struct_2(var_3.e, vec2<f32>(444.0, var_3.b.x), var_3.e.a.wzx, 0u, var_3.e), Struct_1(vec4<bool>(false, false, true, true), var_3.e.b), vec4<u32>(1u, 1649u, u_input.c.x, 1u)).c.x, !var_3.a.a.x, true && true, var_3.c.x & var_3.a.a.x), var_3.a.a, false), var_3.e.b.x);
                var var_5 = !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-919.0)) * _wgslsmith_f_op_f32(ceil(var_3.b.x))) >= _wgslsmith_f_op_f32(step(var_4.a.b.x, _wgslsmith_f_op_f32(335.0 * 1202.0)))) | ((u_input.a.x == var_4.a.d) && false));
                var var_6 = Struct_1(var_3.a.a, func_7(func_5(Struct_1(vec4<bool>(var_4.c.x, true, var_4.c.x, var_4.a.a.a.x), vec3<i32>(var_3.e.b.x, var_2.x, -2147483648) ^ var_3.e.b)), var_3.a, func_8((i32(-1) * -1) & _wgslsmith_clamp_i32(17551, var_3.a.b.x, var_2.x), Struct_2(Struct_1(var_4.b.a, vec3<i32>(0, var_2.x, var_4.b.b.x)), var_4.a.b, !var_3.c, var_4.a.d, func_8(var_4.a.e.b.x, var_3, var_4.a.e, global0[_wgslsmith_index_u32(11621u, 26u)]).a.a), Struct_1(vec4<bool>(var_4.c.x, false, true, false), func_8(-1693, var_4.a, var_4.b, vec4<u32>(u_input.c.x, u_input.b, 53551u, var_0.x)).b.b), vec4<u32>(abs(0u), 4294967295u, ~var_3.d, ~1u))).b);
            }
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                global0 = array<vec4<u32>, 26>();
                continue;
            }
        }
    }
    var var_2 = vec4<f32>(374.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -647.0))) * _wgslsmith_f_op_f32(trunc(1324.0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331.0 + _wgslsmith_f_op_f32(-1168.0 + -2139.0)) + 1098.0)), _wgslsmith_f_op_f32(f32(-1.0) * -405.0), 903.0);
    let x = u_input.a;
    s_output = StorageBuffer(1154.0, _wgslsmith_div_i32((i32(-1) * 0) & ~_wgslsmith_dot_vec4_i32(vec4<i32>(0, -2147483648, -1, -369), vec4<i32>(76806, -30768, 2147483647, 4072)), _wgslsmith_add_i32(_wgslsmith_mult_i32(firstLeadingBit(0), max(1722, 62702)), 791)), ~(~u_input.c.wyw), _wgslsmith_f_op_f32(abs(var_2.x)));
}

