// {"0:0":[100,96,56,49,59,239,13,27,247,193,24,90,122,224,161,251,169,241,201,188,119,253,3,37,45,250,63,11,55,105,19,34,246,169,60,126,85,178,55,36,51,180,53,15,243,99,51,90,136,233,253,95,12,192,214,28,107,244,7,6,26,187,130,38,82,98,83,189,80,186,44,138,234,8,177,48,20,104,14,144]}
// Seed: 16742856765218001435

struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_6(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    if (false) {
        let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1573.0, -1533.0)))) - vec2<f32>(_wgslsmith_f_op_f32(round(602.0)), _wgslsmith_f_op_f32(f32(-1.0) * -2370.0))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-949.0, 2293.0)))))), vec4<i32>(_wgslsmith_add_i32((2147483647 ^ 5686) & min(u_input.d.x, 0), firstLeadingBit(abs(-2147483648))), arg_1.x, max(-2566, 26592), -abs(i32(-1) * -1)), Struct_1(~_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.e, u_input.e), ~20173u), 3263, abs(abs(-7582)), vec4<bool>(!all(vec2<bool>(true, true)), all(!vec4<bool>(false, true, true, true)), any(vec4<bool>(true, false, false, false)), !(664.0 <= -783.0))));
        for (var var_1 = 27978; var_1 < 32698; var_1 -= 1) {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        }
        var var_1 = Struct_1(reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c | u_input.c), ~(~u_input.c))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(u_input.d), ~(-u_input.d)), _wgslsmith_dot_vec2_i32(~var_0.b.ww, arg_1.zy)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, -1, var_0.c.c, var_0.c.c)) >> ((vec4<u32>(4294967295u, 1u, var_0.c.a, u_input.a) | vec4<u32>(13461u, var_0.c.a, 1u, 52859u)) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.d.x, arg_1.x, 2147483647, -54254))) >> (4294967295u % 32u), select(!select(select(vec4<bool>(var_0.c.d.x, false, var_0.c.d.x, true), var_0.c.d, vec4<bool>(true, true, false, var_0.c.d.x)), var_0.c.d, vec4<bool>(var_0.c.d.x, false, var_0.c.d.x, var_0.c.d.x)), !var_0.c.d, !all(!vec4<bool>(false, var_0.c.d.x, var_0.c.d.x, true))));
        var var_2 = ~abs(var_0.c.a << (_wgslsmith_div_u32(62690u, var_0.c.a) % 32u));
    }
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -677.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471.0)))) - 345.0) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * 1441.0) * -529.0)), 1036.0));
    let var_1 = u_input.d.x;
    let var_2 = !true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1474.0 * -1055.0), _wgslsmith_f_op_f32(ceil(252.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1354.0)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -1936.0))), _wgslsmith_f_op_f32(trunc(754.0))))));
    return 42376;
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = countOneBits(-22376);
    var var_1 = -min(3988, -1);
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.b, min(_wgslsmith_mod_i32(arg_2, _wgslsmith_add_i32(arg_2, 2147483647)), -u_input.b.x)), -vec2<i32>(_wgslsmith_mod_i32(select(-15530, 2147483647, arg_0.a.d.x), u_input.d.x), ~1882));
    if (true) {
        switch (-23571) {
            case 17524: {
                var var_3 = arg_0.a.d.x;
                var var_4 = !vec2<bool>(all(!vec2<bool>(arg_0.a.d.x, arg_0.a.d.x)), -374.0 == arg_3);
                let var_5 = arg_0.a;
            }
            case -5580: {
                let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
                var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-13751, _wgslsmith_dot_vec3_i32(u_input.d.zww, u_input.d.yzx)), vec2<i32>(var_2.x | 1, -arg_0.a.c), vec2<i32>(_wgslsmith_sub_i32(~(arg_0.a.c >> (u_input.e % 32u)), -38452), var_0));
                var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483648, ~(~u_input.d.x)), vec2<i32>(max(33908, func_6(arg_0.a.c, u_input.b)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zx, u_input.b.xz), select(vec2<i32>(u_input.b.x, 1), u_input.d.wx, arg_0.a.d.xz))) >> (vec2<u32>(arg_0.a.a, _wgslsmith_div_u32(~0u, ~4294967295u)) % vec2<u32>(32u)));
                let var_4 = -1873.0;
                let var_5 = min(reverseBits(firstLeadingBit(_wgslsmith_div_u32(~u_input.e, ~4294967295u))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, arg_0.a.a), vec2<u32>(arg_0.a.a, arg_0.a.a)), vec2<u32>(u_input.c.x, 5585u)), u_input.a), vec2<u32>(_wgslsmith_div_u32(35815u, 25936u), u_input.e)));
            }
            default: {
                var var_3 = select(u_input.b.x, reverseBits(arg_2), arg_0.a.d.x);
                let var_4 = arg_3;
                var_2 = vec2<i32>(countOneBits(func_6(u_input.b.x, reverseBits(vec3<i32>(var_0, arg_2, -2147483648)))), 8849 << (u_input.e % 32u));
                var_2 = u_input.d.xw;
            }
        }
        if (all(arg_0.a.d.xyy)) {
            var var_3 = 1u;
        }
        var var_3 = Struct_3(Struct_1(42793u | (4294967295u >> (u_input.a % 32u)), arg_0.a.c, abs(-(~0)), vec4<bool>(any(!arg_0.a.d.xx), select(arg_0.a.d.x, arg_0.a.d.x, !arg_0.a.d.x), false, -1 >= var_0)), Struct_2(_wgslsmith_mult_i32(-var_0, var_0), vec3<u32>(~0u, 9148u, u_input.c.x), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_3, arg_3, arg_3))))), ~_wgslsmith_clamp_i32(9482 >> (arg_0.a.a % 32u), 2147483647, _wgslsmith_clamp_i32(arg_2, arg_2, -18898))), Struct_2(arg_2, _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.a, 1u, arg_0.a.a), vec3<u32>(arg_0.a.a, 26894u, arg_0.a.a)), ~select(vec3<u32>(1u, arg_0.a.a, u_input.c.x), vec3<u32>(1683u, 0u, arg_0.a.a), arg_0.a.d.x)), ~arg_0.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -483.0), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-1334.0 + 698.0))), -53234));
        for (var var_4 = 20790; arg_0.a.a <= ~_wgslsmith_mod_u32(abs(~arg_0.a.a), _wgslsmith_mult_u32(min(4294967295u, 335u), 0u)); var_4 -= 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            let var_5 = select(select(vec4<bool>(all(arg_0.a.d), !(var_3.a.d.x && arg_0.a.d.x), false | arg_0.a.d.x, !all(vec2<bool>(var_3.a.d.x, var_3.a.d.x))), vec4<bool>(any(vec2<bool>(true, arg_0.a.d.x)), arg_0.a.d.x || any(vec2<bool>(arg_0.a.d.x, true)), !(-2147483648 != var_2.x), true), any(!vec3<bool>(true, var_3.a.d.x, arg_0.a.d.x))), vec4<bool>(any(var_3.a.d.yw), var_3.a.d.x, !(!any(arg_0.a.d.wwz)), 23997u == ~abs(u_input.c.x)), select(!arg_0.a.d.x, !all(select(vec4<bool>(false, arg_0.a.d.x, arg_0.a.d.x, var_3.a.d.x), arg_0.a.d, var_3.a.d)), !(!arg_0.a.d.x | select(arg_0.a.d.x, true, true))));
        }
    }
    var_1 = _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(_wgslsmith_mult_i32(arg_0.a.b, 1), arg_0.a.b << (1u % 32u), ~(-2147483648), -9212)), vec4<i32>(~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b << (vec3<u32>(1u, u_input.a, 1u) % vec3<u32>(32u))), 12380 >> (countOneBits(firstLeadingBit(59075u)) % 32u), -(~(~arg_0.a.b)), ~arg_0.a.b << (~1u % 32u)));
    return arg_0.a.a;
}

fn func_4(arg_0: f32) -> bool {
    let var_0 = 20417;
    var var_1 = vec2<i32>(u_input.d.x, var_0);
    var var_2 = Struct_2(-2546, reverseBits(vec3<u32>(firstTrailingBit(u_input.c.x), _wgslsmith_div_u32(~u_input.c.x, reverseBits(18930u)), u_input.e)), abs(~min(0u, func_5(Struct_5(Struct_1(8487u, 0, var_0, vec4<bool>(false, true, true, true))), arg_0, -1, 253.0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1711.0), _wgslsmith_f_op_f32(190.0 * arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(-arg_0)))), 36186);
    for (var var_3 = 2147483647; select(!any(!vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(sign(-701.0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -281.0), _wgslsmith_f_op_f32(exp2(var_2.d.x))))), true); var_1 = -(~(~(~vec2<i32>(u_input.d.x, 0) << (abs(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)))))) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        let var_4 = Struct_1(~32666u & _wgslsmith_sub_u32(1u, ~(~35715u)), -41194, (var_1.x ^ _wgslsmith_mult_i32(abs(var_1.x), _wgslsmith_add_i32(var_2.a, 34817))) & _wgslsmith_mult_i32(1, _wgslsmith_dot_vec2_i32(u_input.d.zw | u_input.b.zx, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, -2147483648), u_input.b.xy))), vec4<bool>(any(!(!vec3<bool>(true, true, false))), true, false, false));
        if (true) {
            let var_5 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(368.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x * var_2.d.x))), _wgslsmith_f_op_f32(-451.0 - _wgslsmith_f_op_f32(trunc(1232.0))));
            var var_6 = Struct_2(_wgslsmith_mult_i32(-1, _wgslsmith_add_i32(_wgslsmith_sub_i32(max(-13965, -1), -20421), reverseBits(func_6(var_2.a, u_input.b)))), ~(~(~(~var_2.b))), 35412u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(537.0)), _wgslsmith_f_op_f32(314.0 * -1000.0), _wgslsmith_div_f32(var_2.d.x, 1112.0), 597.0))), ~var_0);
            var_3 = u_input.d.x;
        }
    }
    let var_3 = var_2.e;
    return all(select(vec2<bool>(!(!true), false), vec2<bool>(!(4294967295u <= 4294967295u), true), !vec2<bool>(!true, var_2.d.x <= arg_0)));
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = any(!select(select(!vec3<bool>(false, false, arg_0.c.d.x), arg_0.c.d.zww, true && true), arg_0.c.d.yxx, false));
    let var_1 = 1;
    switch (u_input.b.x) {
        default: {
            var_0 = arg_0.c.d.x;
            let var_2 = !false;
            var_0 = select(false, !(!true), var_2);
            var_0 = all(vec3<bool>(arg_0.c.d.x, func_4(arg_0.a.x), 1u >= arg_0.c.a));
        }
    }
    switch (_wgslsmith_mult_i32(622 | min(_wgslsmith_clamp_i32(-29007, -1, 0), ~(-u_input.d.x)), 0)) {
        case -2147483648: {
            if (!(!func_4(1280.0)) | !arg_0.c.d.x) {
                let var_2 = ~(~(~vec4<i32>(-71906, 22264, -47710, -arg_0.b.x)));
                let var_3 = firstTrailingBit(_wgslsmith_add_i32(53134 ^ _wgslsmith_dot_vec2_i32(select(arg_0.b.wy, vec2<i32>(11440, var_1), vec2<bool>(false, arg_0.c.d.x)), arg_0.b.xw), u_input.b.x));
            }
            var var_2 = Struct_3(arg_0.c, Struct_2(u_input.b.x, vec3<u32>(35594u, arg_0.c.a, 0u & max(61863u, arg_0.c.a)), 58218u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1844.0, arg_0.a.x, -612.0, arg_0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(693.0, -112.0, arg_0.a.x, -932.0)))), 43067), Struct_2(u_input.b.x, select(min(vec3<u32>(53598u, arg_0.c.a, 68504u), vec3<u32>(u_input.e, 0u, arg_0.c.a)), ~vec3<u32>(u_input.e, arg_0.c.a, 35383u), all(arg_0.c.d.zxz)), _wgslsmith_mult_u32(~(~48010u), _wgslsmith_sub_u32(abs(20684u), 1u << (4294967295u % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -322.0, -136.0, arg_0.a.x) - vec4<f32>(-440.0, arg_0.a.x, arg_0.a.x, arg_0.a.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000.0, -1000.0, arg_0.a.x, 123.0), vec4<f32>(664.0, arg_0.a.x, 1202.0, -410.0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -710.0, arg_0.a.x, arg_0.a.x)))), 19708));
            let var_3 = any(select(select(vec2<bool>(!true, any(vec4<bool>(true, arg_0.c.d.x, true, arg_0.c.d.x))), vec2<bool>(!false, false), var_2.a.d.x), select(!select(var_2.a.d.yy, arg_0.c.d.xy, vec2<bool>(false, var_2.a.d.x)), vec2<bool>(func_4(1757.0), !true), vec2<bool>(!false, !arg_0.c.d.x)), !true));
            var_2 = Struct_3(arg_0.c, Struct_2(func_6(35602, _wgslsmith_mod_vec3_i32(arg_0.b.zyy, u_input.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.c.a, u_input.e), u_input.c), ~34355u, firstLeadingBit(4294967295u >> (4294967295u % 32u))), var_2.c.b.x, vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - 229.0), _wgslsmith_div_f32(-1063.0, _wgslsmith_f_op_f32(select(1154.0, -550.0, arg_0.c.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(select(var_2.c.d.x, 1309.0, false))), _wgslsmith_f_op_f32(ceil(252.0))), 0), Struct_2(-2189, var_2.c.b, arg_0.c.a >> (var_2.a.a % 32u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(max(577.0, var_2.c.d.x))), var_2.c.d.x, _wgslsmith_f_op_f32(f32(-1.0) * -1343.0), _wgslsmith_f_op_f32(min(var_2.b.d.x, _wgslsmith_div_f32(722.0, var_2.b.d.x)))), firstTrailingBit(-_wgslsmith_mod_i32(0, var_2.c.a))));
        }
        case 1: {
            var var_2 = !select(select(vec3<bool>(29227u <= u_input.e, false, true), !arg_0.c.d.zxw, arg_0.c.d.x), !vec3<bool>(any(arg_0.c.d.yy), !true, arg_0.c.d.x), arg_0.c.d.x);
        }
        case -49802: {
        }
        case 2147483647: {
            var var_2 = _wgslsmith_f_op_f32(abs(arg_0.a.x));
        }
        default: {
        }
    }
    var var_2 = arg_0.c.a;
    return true;
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<bool>(!(!(52611u >= 1602u)) || select((321.0 < -107.0) || (1 > u_input.d.x), !any(vec2<bool>(false, true)), !true | all(vec3<bool>(true, false, false))), any(vec2<bool>(any(!vec4<bool>(true, true, false, false)), func_3(Struct_4(vec2<f32>(1416.0, -332.0), vec4<i32>(2091, u_input.d.x, u_input.b.x, u_input.d.x), Struct_1(u_input.c.x, -13118, 1, vec4<bool>(true, false, true, true)))))), !(!true), !all(vec3<bool>(false && true, true | true, false)));
    switch (-1) {
        case 18520: {
        }
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            }
        }
        case 1: {
            let var_1 = Struct_1(~(~50904u), u_input.b.x, u_input.b.x, !vec4<bool>(!true & var_0.x, func_3(Struct_4(vec2<f32>(-823.0, -808.0), vec4<i32>(u_input.d.x, u_input.b.x, -1, 0), Struct_1(u_input.e, 1, u_input.d.x, vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), !false | all(var_0.yw), var_0.x));
        }
        case -19095: {
            let var_1 = _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u ^ 4294967295u, 4294967295u, ~u_input.c.x, ~u_input.a)), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c.x, 54815u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.c.x, 7955u, 29318u))), vec4<u32>(u_input.e, u_input.e, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.e, 4294967295u)) >> (u_input.c.x % 32u), ~(u_input.c.x >> (0u % 32u)))));
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            }
        }
        default: {
            switch (-2147483648) {
                case 22724: {
                    var var_1 = Struct_3(Struct_1(abs(4294967295u), ~u_input.b.x, ~(~select(u_input.b.x, u_input.d.x, var_0.x)), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(!false, !false, !true, any(vec3<bool>(false, true, true))), var_0.x)), Struct_2(-34522, ~(~(~vec3<u32>(u_input.a, u_input.e, u_input.c.x))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, u_input.c.x, 43051u), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<bool>(var_0.x, false, var_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.e, 1u), vec3<u32>(0u, 1u, u_input.c.x))) & _wgslsmith_sub_u32(func_5(Struct_5(Struct_1(588u, 2147483647, -1, vec4<bool>(var_0.x, true, true, var_0.x))), 1802.0, u_input.d.x, -329.0), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(141.0, -322.0, -1028.0, 520.0))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2334.0, -332.0, -993.0, -1000.0), vec4<f32>(-715.0, -720.0, -1620.0, -459.0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000.0, -732.0, -1602.0, -1826.0))))), -2147483648), Struct_2(-_wgslsmith_add_i32(firstTrailingBit(-38549), abs(u_input.d.x)), vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), select(18838u, u_input.a, var_0.x)), ~u_input.a, ~58741u), func_5(Struct_5(Struct_1(0u, -2147483648, 1, vec4<bool>(true, var_0.x, var_0.x, false))), _wgslsmith_div_f32(-542.0, _wgslsmith_f_op_f32(1015.0 - -199.0)), u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488.0 * 677.0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(311.0, 424.0, -392.0, 472.0))))), 0));
                    var var_2 = vec4<i32>(-37197, -_wgslsmith_clamp_i32(var_1.a.b, _wgslsmith_add_i32(u_input.d.x << (0u % 32u), var_1.c.e), 46181), var_1.a.b, abs(_wgslsmith_add_i32(1, countOneBits(28595 >> (1u % 32u)))));
                }
                case -25498: {
                    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_u32(min(~u_input.a, max(u_input.a, 27377u)), countOneBits(~4294967295u)), ~u_input.b.x, _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_mult_i32(-23818, -1)), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, false), var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, false, true), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true)), Struct_2(_wgslsmith_mod_i32(func_6(u_input.d.x, vec3<i32>(u_input.b.x, u_input.d.x, u_input.b.x)) >> (5832u % 32u), _wgslsmith_clamp_i32(10229, _wgslsmith_clamp_i32(u_input.b.x, -31107, 1), i32(-1) * -1)), ~select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 2523u), vec3<u32>(u_input.c.x, 40097u, 45745u)), ~vec3<u32>(33573u, 43229u, 4294967295u), !var_0.x), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(614.0, -236.0, -1476.0, 321.0))))), ~(-22608)), Struct_2(u_input.d.x, vec3<u32>(firstLeadingBit(abs(u_input.e)), firstTrailingBit(firstTrailingBit(1u)), 1u), ~_wgslsmith_sub_u32(u_input.c.x, ~1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(185.0, 2392.0, -1774.0, 1000.0))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(669.0, -1961.0, 269.0, 1000.0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-176.0, 666.0, -344.0, -530.0), vec4<f32>(-366.0, 283.0, -2131.0, -1331.0), var_0.x)))), _wgslsmith_sub_i32(u_input.d.x, u_input.d.x)));
                }
                case -24758: {
                    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x | u_input.a, abs(firstLeadingBit(1202u)), 73259u) >> (max(~vec3<u32>(u_input.e, 37444u, u_input.a) | (vec3<u32>(4294967295u, u_input.c.x, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, 43311u) % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(0u, 0u, u_input.a)) | ~vec3<u32>(u_input.a, u_input.e, u_input.c.x)) % vec3<u32>(32u)), firstTrailingBit(~(~vec3<u32>(92204u, u_input.a, 55476u))) & _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.e, u_input.a, 1u)), select(vec3<u32>(11508u, u_input.c.x, u_input.a) | vec3<u32>(27367u, 76528u, u_input.c.x), ~vec3<u32>(48512u, 4294967295u, 14022u), var_0.yzx)), _wgslsmith_mult_vec3_u32(~vec3<u32>(min(1u, 4294967295u), min(u_input.a, u_input.c.x), min(u_input.a, u_input.a)), vec3<u32>(u_input.c.x, select(max(u_input.e, u_input.c.x), _wgslsmith_div_u32(u_input.e, u_input.a), var_0.x & false), u_input.e)));
                }
                case 2147483647: {
                    var_0 = select(!select(select(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, false)), !vec4<bool>(false, false, true, true), !vec4<bool>(true, var_0.x, true, var_0.x)), vec4<bool>(!var_0.x, true || true, 3061.0 < -1261.0, !false), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(false, true, var_0.x, true), func_4(-597.0))), vec4<bool>(any(select(vec4<bool>(false, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), var_0.x)), all(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), true)) || !func_4(333.0), _wgslsmith_sub_i32(-3050, _wgslsmith_div_i32(u_input.d.x, 57076)) == (-u_input.d.x >> (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)), !false), !false);
                    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-23793), ~_wgslsmith_mod_i32(-1, u_input.b.x), abs(50981)), abs(_wgslsmith_mod_vec3_i32(u_input.b, -u_input.d.yyy))), vec3<u32>(min(u_input.e, ~countOneBits(u_input.a)), ~38178u, (u_input.e ^ 23620u) << (u_input.e % 32u)), u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(678.0, 1666.0, -1618.0, 270.0)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1481.0, 594.0, -388.0, 1074.0)))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, 10203, 2147483647)), min(-41666, -47883))), ~0));
                    let var_2 = var_1;
                }
                default: {
                    let var_1 = Struct_1(~(~88724u >> (u_input.a % 32u)) | (~u_input.a | firstTrailingBit(_wgslsmith_div_u32(u_input.e, u_input.c.x))), -2147483648, select(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0), vec4<i32>(u_input.b.x, -1, 0, 0)), -7066), u_input.b.x, var_0.x), vec4<bool>(!all(vec2<bool>(var_0.x, var_0.x)) | (any(var_0.wwx) & true), var_0.x, any(var_0.xz), !true));
                }
            }
            let var_1 = all(!vec4<bool>(-u_input.b.x <= -2147483648, var_0.x, true, false));
            var_0 = vec4<bool>(var_0.x, var_0.x, any(var_0.zw), abs(u_input.a) <= u_input.a);
            if (~53390u > _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 0u, 46036u)), ~vec3<u32>(18436u, u_input.a, u_input.a)), u_input.e)) {
                var var_2 = !(!vec2<bool>(_wgslsmith_f_op_f32(663.0 * 511.0) < _wgslsmith_f_op_f32(-1106.0), true));
                var_2 = !var_0.yx;
            }
        }
    }
    let var_1 = firstTrailingBit(((i32(-1) * -u_input.d.x) | 2147483647) << (u_input.e % 32u));
    var var_2 = -vec2<i32>(firstLeadingBit(var_1), var_1);
    let var_3 = Struct_5(Struct_1(u_input.e, ~var_1, -((u_input.d.x << (u_input.e % 32u)) & abs(var_1)), vec4<bool>(true, !(187.0 <= -650.0), true, true)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1023.0, -737.0)), -(~(-u_input.d)), Struct_1(u_input.a, _wgslsmith_div_i32(~(-2147483648), 17284), var_3.a.b & 28190, var_3.a.d));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    switch (-firstTrailingBit(u_input.b.x)) {
        default: {
        }
    }
    if (any(vec2<bool>(all(vec3<bool>(any(vec3<bool>(true, false, true)), !true, true)), !(!(7576 > u_input.d.x))))) {
        var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1105.0 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-770.0)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1218.0), 2254.0));
        if (false) {
            var var_1 = -10335;
        }
        var var_1 = vec3<bool>(false, !(false || !(u_input.c.x >= 4591u)), !all(select(!vec3<bool>(false, false, true), vec3<bool>(true, true, false), false && true)));
        var_0 = 1098.0;
    }
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -556.0), _wgslsmith_f_op_f32(-492.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1307.0))))))));
    for (var var_1 = -34140; any(select(!(!vec4<bool>(true, true, true, true)), select(!(!vec4<bool>(false, false, true, false)), vec4<bool>(46376u == 35153u, 0 < -1, u_input.c.x > arg_0.x, any(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), !vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false))), true)); ) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_2 = func_2();
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            var var_3 = func_2();
            let var_4 = u_input.b.yx;
            let var_5 = abs(arg_1) ^ 0u;
            var_3 = Struct_4(var_3.a, u_input.d | var_2.b, func_2().c);
        }
        let var_3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(max(vec4<u32>(var_2.c.a, 4294967295u, arg_0.x, 4841u), vec4<u32>(arg_0.x, 1u, 1u, var_2.c.a)), ~vec4<u32>(arg_1, 1u, 4294967295u, 60116u), func_3(Struct_4(var_2.a, vec4<i32>(u_input.b.x, 29756, -14245, u_input.b.x), Struct_1(4294967295u, -4415, var_2.b.x, var_2.c.d)))), vec4<u32>(_wgslsmith_mult_u32(33126u, 1u), 1u, 0u, _wgslsmith_sub_u32(36406u, 4294967295u))) ^ ~(~_wgslsmith_clamp_u32(33133u, var_2.c.a, arg_1)), arg_0.x);
        var var_4 = Struct_5(var_2.c);
        let var_5 = var_4.a.d.x;
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        let var_1 = Struct_3(func_2().c, Struct_2(-firstTrailingBit(u_input.b.x) | u_input.b.x, select(vec3<u32>(~33617u, 30821u, ~arg_1), max(vec3<u32>(46455u, arg_0.x, 7071u), _wgslsmith_sub_vec3_u32(vec3<u32>(37982u, 4294967295u, u_input.e), vec3<u32>(32634u, 7844u, u_input.e))), !func_2().c.d.yww), 4294967295u ^ 12671u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1796.0, 1899.0))), u_input.b.x), Struct_2(u_input.d.x, _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, u_input.c.x, u_input.e)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u)), arg_1, arg_0.x)), arg_0.x >> (~(~0u) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-591.0), -1985.0, _wgslsmith_f_op_f32(exp2(1720.0)), var_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -937.0))), -(~(-13811))));
    }
    return -u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    if (select(true, func_1(u_input.c << (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u)), firstTrailingBit(3069u >> (4294967295u % 32u))) != ~_wgslsmith_sub_i32(max(-7764, u_input.d.x), countOneBits(u_input.b.x)), !false)) {
        switch (2147483647) {
            case 52099: {
                let var_0 = 110.0;
                var var_1 = vec3<i32>(-2147483648, countOneBits(countOneBits(10491 & 0)), func_1(max(firstLeadingBit(vec2<u32>(12094u, 14473u)), vec2<u32>(12589u, ~1u)), 4294967295u));
                let var_2 = Struct_2(55380, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, 1u, 6642u)) ^ ~vec3<u32>(u_input.a, 57665u, 4294967295u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(7786u, 4294967295u, u_input.e), vec3<u32>(u_input.c.x, 4388u, u_input.a))) >> (min(vec3<u32>(select(0u, 0u, true), 46580u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(1u, u_input.c.x, u_input.e)) | ~vec3<u32>(4294967295u, u_input.a, 47775u)) % vec3<u32>(32u)), func_2().c.a, vec4<f32>(-315.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-225.0))) - -816.0), var_0, 710.0), func_2().b.x);
                var var_3 = u_input.b & max(-vec3<i32>(-52465, i32(-1) * -32108, 20107 & 1), vec3<i32>(u_input.d.x, 0, -var_1.x >> (11629u % 32u)));
            }
            case -2580: {
                let var_0 = ~31860u;
            }
            case -47449: {
                var var_0 = !(!select(func_2().c.d.ywz, vec3<bool>(false, !false, true), false));
                var_0 = select(func_2().c.d.wzw, select(vec3<bool>(true | !var_0.x, var_0.x, var_0.x), select(vec3<bool>(all(vec2<bool>(false, true)), var_0.x & true, any(vec3<bool>(var_0.x, true, false))), vec3<bool>(1000.0 <= -430.0, 359.0 <= -1328.0, true), !func_3(Struct_4(vec2<f32>(258.0, -1000.0), u_input.d, Struct_1(u_input.c.x, u_input.d.x, u_input.d.x, vec4<bool>(false, true, var_0.x, var_0.x))))), !(!func_2().c.d.zyx)), !select(!(!vec3<bool>(true, false, true)), func_2().c.d.wyy, true));
            }
            case 0: {
                var var_0 = firstTrailingBit(abs(vec4<u32>(reverseBits(4294967295u), u_input.a, _wgslsmith_clamp_u32(u_input.e, u_input.c.x, 1064u), _wgslsmith_dot_vec3_u32(vec3<u32>(19036u, 4294967295u, 1u), vec3<u32>(4294967295u, u_input.a, u_input.a)))) << ((vec4<u32>(u_input.c.x, 19142u, 38707u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(7026u, u_input.e, u_input.c.x, u_input.e), firstLeadingBit(vec4<u32>(65935u, u_input.a, 0u, 1874u)))) % vec4<u32>(32u)));
                let var_1 = !(!func_2().c.d);
                let var_2 = Struct_2(u_input.d.x, ~reverseBits(~vec3<u32>(4294967295u, u_input.c.x, 416u)) << (var_0.wzw % vec3<u32>(32u)), 972u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(936.0, -1237.0, -543.0, -535.0), vec4<f32>(1153.0, 395.0, 1000.0, 654.0)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-468.0) - 1438.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-655.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-844.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1825.0)), -1151.0)), -max(25932, -61129));
            }
            default: {
                let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-738.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1469.0))) + _wgslsmith_f_op_f32(trunc(842.0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2178.0, 948.0), _wgslsmith_f_op_f32(f32(-1.0) * -339.0))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -439.0) + _wgslsmith_f_op_f32(trunc(-712.0))), -544.0);
                var var_1 = func_2().c;
                let var_2 = vec3<bool>(true, true, true);
                let var_3 = 2147483647;
                let var_4 = var_0.xxw;
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

