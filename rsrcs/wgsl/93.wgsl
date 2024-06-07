// {"0:0":[186,86,198,216,224,150,98,34,230,18,130,62,46,115,76,127,172,239,227,249,86,232,10,175,122,86,58,114,123,31,40,54,65,183,215,141,154,220,156,98,71,48,31,42,104,171,75,208]}
// Seed: 9513640880850913860

struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> LOOP_COUNTERS: array<u32, 22>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = arg_3.c;
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        let var_1 = select(vec4<bool>(arg_1.b.x, false, true, any(select(arg_3.b, arg_2.xxw, !false))), vec4<bool>(arg_2.x, !false, true, true), select(arg_3.e, vec4<bool>(false, all(arg_2.wz), true, false), !any(!vec3<bool>(arg_3.e.x, true, false))));
        continue;
    }
    global0 = array<vec3<f32>, 19>();
    var var_1 = arg_3.e.wy;
    global1 = array<vec3<bool>, 5>();
    return countOneBits(arg_1.d >> (~max(abs(u_input.b), u_input.b) % vec4<u32>(32u)));
}

fn func_6(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    if (4294967295u != 46740u) {
        let var_0 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~38749u, 19u)]);
        var var_1 = arg_2;
    }
    let var_0 = Struct_1(arg_2.a, select(!select(arg_2.e.zzw, vec3<bool>(true, arg_2.e.x, arg_2.e.x), !vec3<bool>(true, arg_2.b.x, true)), arg_2.b, !vec3<bool>(false, false, false)), vec3<u32>(arg_2.c.x, 1u, 4294967295u), -vec4<i32>(countOneBits(firstTrailingBit(2147483647)), 1, _wgslsmith_mult_i32(-889, _wgslsmith_add_i32(arg_1.x, 0)), arg_1.x), vec4<bool>(true, abs(47059u << (arg_2.c.x % 32u)) < ~(~39567u), arg_2.a, arg_2.b.x));
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        var var_1 = arg_2;
        global1 = array<vec3<bool>, 5>();
        var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(338.0 - -167.0)), arg_3)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * 1279.0) * 257.0), vec3<bool>(var_1.e.x, true, arg_3 <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-174.0 * arg_3), _wgslsmith_f_op_f32(exp2(arg_3)))), ~firstTrailingBit(min(abs(arg_2.c), _wgslsmith_mod_vec3_u32(var_0.c, arg_2.c))), var_1.d, select(!select(vec4<bool>(var_1.a, var_0.b.x, arg_2.a, false), select(var_0.e, vec4<bool>(false, var_1.a, true, false), var_0.a), vec4<bool>(false, var_1.a, arg_2.b.x, true)), vec4<bool>(false, true & any(arg_2.e), !any(vec3<bool>(true, var_1.a, true)), any(vec4<bool>(arg_2.e.x, var_0.a, var_0.a, true))), !false));
        var var_2 = vec4<u32>(arg_2.c.x, u_input.d, min(firstTrailingBit(54788u), 58875u), 23574u);
    }
    var var_1 = select(vec4<bool>(!(true == arg_2.e.x) || (arg_3 <= _wgslsmith_f_op_f32(-1571.0)), !(_wgslsmith_mult_u32(0u, 0u) >= 0u), var_0.e.x, select(all(var_0.e.zwy), any(arg_2.b), var_0.a)), vec4<bool>(!any(vec4<bool>(false, arg_2.a, true, var_0.a)) & (any(var_0.b) && arg_2.b.x), var_0.a, var_0.e.x, false), var_0.e);
    for (var var_2 = arg_2.d.x; var_2 == -2147483648; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        let var_3 = vec2<i32>(i32(-1) * -11775, -2929 >> (96397u % 32u));
        var_2 = _wgslsmith_mod_i32(u_input.a, ~10802);
        let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-875.0), arg_3, arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, arg_3) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3)))) + 364.0));
        switch (53067) {
            case -2147483648: {
                var var_5 = select(select(arg_2.e.wz, vec2<bool>(select(var_0.b.x, select(true, arg_2.a, var_0.e.x), false), !var_1.x), select(arg_2.b.zx, select(vec2<bool>(var_0.e.x, arg_2.a), arg_2.e.yx, arg_2.a), false != !true)), select(vec2<bool>(!var_0.a, !any(vec2<bool>(arg_2.e.x, true))), vec2<bool>(!select(false, arg_2.b.x, var_1.x), false), !select(vec2<bool>(true, true), select(var_1.wx, vec2<bool>(false, var_1.x), vec2<bool>(arg_2.a, arg_2.b.x)), vec2<bool>(var_1.x, var_1.x))), -516.0 >= var_4.x);
                break;
            }
            case -17387: {
                var var_5 = var_0;
                var var_6 = abs(arg_2.d.x);
                var var_7 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.x, -2251.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) + _wgslsmith_f_op_f32(trunc(-1163.0))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_3))), var_4.x)));
            }
            case 0: {
                return i32(-1) * -(1 << (~arg_2.c.x % 32u));
            }
            default: {
            }
        }
        continue;
    }
    return u_input.a;
}

fn func_4() -> bool {
    for (var var_0: i32; !(!(!all(!vec2<bool>(true, true)))); ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            let var_1 = 0 >> (_wgslsmith_sub_u32(u_input.c.x, u_input.b.x) % 32u);
            var var_2 = -(~func_6(-2084 & u_input.a, func_5(u_input.c, Struct_1(true, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], vec3<u32>(u_input.b.x, u_input.d, u_input.d), vec4<i32>(22226, 2147483647, var_1, var_1), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, false), Struct_1(false, global1[_wgslsmith_index_u32(u_input.d, 5u)], vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x), vec4<i32>(var_1, -1, 2147483647, -5120), vec4<bool>(true, true, false, false))), Struct_1(false, global1[_wgslsmith_index_u32(150479u, 5u)], vec3<u32>(u_input.c.x, u_input.b.x, u_input.b.x), vec4<i32>(4784, -10117, 2147483647, var_1), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(286.0 * -126.0))) > ~var_1;
            var var_3 = countOneBits(firstTrailingBit(abs(vec4<i32>(_wgslsmith_mult_i32(var_1, 9439), -7322 >> (u_input.b.x % 32u), countOneBits(-13254), func_6(u_input.a, vec4<i32>(72768, 1, var_1, 2147483647), Struct_1(false, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], vec3<u32>(19597u, u_input.d, 1u), vec4<i32>(1, u_input.a, -1, 16000), vec4<bool>(false, true, false, false)), -396.0)))));
        }
        var var_1 = Struct_1(3031.0 == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-951.0 * 570.0) + 410.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -874.0) - 751.0)), select(!select(!vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), true), vec3<bool>(false, !true, true), select(!(!false), any(!vec3<bool>(false, false, true)), true)), _wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.c.x, 1u), ~vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, u_input.d, 59319u)), u_input.b.wwx, select(!vec3<bool>(false, true, true), !global1[_wgslsmith_index_u32(u_input.c.x, 5u)], !vec3<bool>(false, false, true))), vec3<u32>(68857u, (1u << (4294967295u % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(22127u, 20510u, u_input.d, 13147u), u_input.b) % 32u), ~_wgslsmith_mod_u32(0u, u_input.b.x))), vec4<i32>(-1) * -max(select(vec4<i32>(u_input.a, u_input.a, u_input.a, -14618), vec4<i32>(u_input.a, u_input.a, -33741, 2147483647), vec4<bool>(true, true, false, true)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483648, 63118), vec4<i32>(-38190, 1, 20057, -1))), select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), !vec4<bool>(true, false, false, true)), !true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(false, true, false, false), !vec4<bool>(true, false, true, true)), select(!vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), any(global1[_wgslsmith_index_u32(u_input.c.x, 5u)])), vec4<bool>(all(global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), !false, 761.0 > 1629.0, any(vec2<bool>(false, false)))), true));
        let var_2 = any(!vec3<bool>(!(13135u > 86286u), false, true));
        let var_3 = Struct_1(var_2, global1[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_mod_u32(abs(u_input.c.x), _wgslsmith_sub_u32(0u, u_input.c.x)))), 5u)], ~reverseBits(~vec3<u32>(var_1.c.x, var_1.c.x, var_1.c.x)), firstLeadingBit(-(~(-var_1.d))), var_1.e);
        global0 = array<vec3<f32>, 19>();
    }
    let var_0 = Struct_1(true, select(!select(!global1[_wgslsmith_index_u32(1u, 5u)], vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(~u_input.b.x, 5u)]), vec3<bool>(!(!false), select(false, false, false) | (u_input.c.x >= 1u), true), true), _wgslsmith_add_vec3_u32(reverseBits(min(u_input.b.zyw, vec3<u32>(u_input.c.x, u_input.d, u_input.d)) << (u_input.b.yyz % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(u_input.c.x), 29497u, 1u), vec3<u32>(min(0u, 61997u), ~0u, u_input.b.x))), vec4<i32>(u_input.a ^ ~(2147483647 >> (u_input.c.x % 32u)), u_input.a, firstTrailingBit(_wgslsmith_mult_i32(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1, u_input.a, -35200, u_input.a), vec4<i32>(u_input.a, u_input.a, 3483, 0)))), -1), !(!(!(!vec4<bool>(false, false, true, false)))));
    var var_1 = global0[_wgslsmith_index_u32(~16974u, 19u)];
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
    }
    if (true) {
        global1 = array<vec3<bool>, 5>();
        let var_2 = var_0;
    }
    return any(global1[_wgslsmith_index_u32(0u, 5u)]);
}

fn func_7(arg_0: Struct_1) -> i32 {
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        switch (-(firstLeadingBit(arg_0.d.x) & u_input.a) | (-2147483648 >> ((u_input.c.x >> (arg_0.c.x % 32u)) % 32u))) {
            case 0: {
                let var_0 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(59808u, 22175u, arg_0.c.x, 9548u) & u_input.b, u_input.b), u_input.b), _wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(countOneBits(u_input.c.x), arg_0.c.x, ~u_input.d)), arg_0.a);
                let var_1 = arg_0.d.yyx;
            }
            case 1: {
                var var_0 = u_input.a;
                continue;
            }
            case -10954: {
                global1 = array<vec3<bool>, 5>();
                var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(921.0, -109.0)) - vec2<f32>(-328.0, 489.0)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(263.0, -641.0), vec2<f32>(2389.0, 1052.0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(338.0, -110.0)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(519.0, 1000.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-332.0, 539.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1061.0, 476.0) * vec2<f32>(893.0, -1034.0)))))));
            }
            default: {
                global1 = array<vec3<bool>, 5>();
                global1 = array<vec3<bool>, 5>();
            }
        }
        switch (1) {
            case 31636: {
                global1 = array<vec3<bool>, 5>();
                var var_0 = Struct_1(!true, arg_0.b, ~_wgslsmith_mult_vec3_u32(~arg_0.c, _wgslsmith_mult_vec3_u32(u_input.b.zzy >> (vec3<u32>(arg_0.c.x, 27382u, 0u) % vec3<u32>(32u)), vec3<u32>(1u, arg_0.c.x, 1u))), vec4<i32>(-52921, 2147483647, -2147483648, 0), vec4<bool>(1956.0 == _wgslsmith_f_op_f32(_wgslsmith_div_f32(-604.0, 1000.0) - _wgslsmith_f_op_f32(2344.0 * 509.0)), !any(vec3<bool>(false, arg_0.b.x, arg_0.b.x)), true && !(u_input.d >= u_input.d), false));
                global1 = array<vec3<bool>, 5>();
                var var_1 = select(vec2<bool>(false, any(vec2<bool>(-1032.0 == 1000.0, false))), vec2<bool>(false, !arg_0.b.x), select(!select(select(vec2<bool>(false, arg_0.a), var_0.b.xx, arg_0.b.x), !var_0.e.zx, all(var_0.e.yx)), select(vec2<bool>(any(arg_0.e), !arg_0.b.x), !vec2<bool>(false, var_0.a), arg_0.b.x), arg_0.b.zy));
                let var_2 = !select(arg_0.e.zy, arg_0.b.zz, select(var_0.e.wz, !vec2<bool>(arg_0.e.x, var_1.x), !arg_0.e.x));
            }
            case 2147483647: {
                continue;
            }
            default: {
                global1 = array<vec3<bool>, 5>();
                continue;
            }
        }
        global1 = array<vec3<bool>, 5>();
    }
    let var_0 = 8064u;
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var var_1 = Struct_1(any(select(select(select(vec2<bool>(false, arg_0.b.x), vec2<bool>(arg_0.b.x, false), arg_0.b.x), vec2<bool>(arg_0.e.x, false), arg_0.e.zx), vec2<bool>(10219u > u_input.d, arg_0.a), arg_0.b.zz)), vec3<bool>(!arg_0.a, func_4(), !all(!global1[_wgslsmith_index_u32(arg_0.c.x, 5u)])), ~u_input.b.zzx, reverseBits(vec4<i32>(u_input.a, -_wgslsmith_mod_i32(arg_0.d.x, arg_0.d.x), func_6(~(-24543), vec4<i32>(arg_0.d.x, -6132, u_input.a, arg_0.d.x), arg_0, _wgslsmith_f_op_f32(exp2(1161.0))), func_5(vec2<u32>(arg_0.c.x, 0u), Struct_1(false, arg_0.b, vec3<u32>(arg_0.c.x, 30924u, u_input.c.x), arg_0.d, arg_0.e), arg_0.e, arg_0).x >> ((31926u ^ 1u) % 32u))), arg_0.e);
        var_1 = arg_0;
        var var_2 = !(!((var_1.d.x < -u_input.a) || var_1.e.x));
        break;
    }
    var var_1 = arg_0;
    if (arg_0.e.x) {
        switch (_wgslsmith_mult_i32(-(var_1.d.x >> (arg_0.c.x % 32u)), 13612)) {
            case 1: {
                global0 = array<vec3<f32>, 19>();
                let var_2 = false;
            }
            default: {
                let var_2 = _wgslsmith_div_vec2_i32(-(~(vec2<i32>(-1) * -vec2<i32>(-2478, var_1.d.x))), ~vec2<i32>(~max(var_1.d.x, 1), i32(-1) * -u_input.a));
                global0 = array<vec3<f32>, 19>();
                let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(0u, 19u)] * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(330.0, -624.0, 1177.0)), global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1552.0) * 1043.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1056.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1754.0 * -2999.0), _wgslsmith_f_op_f32(-482.0 * 1714.0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000.0, 370.0)) * _wgslsmith_f_op_f32(1175.0 * 399.0))))));
            }
        }
        var var_2 = arg_0;
        var var_3 = !(!var_1.b);
    }
    return u_input.a;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    if (false) {
        let var_0 = ~3908;
        let var_1 = arg_0;
        switch (func_7(Struct_1(-28528 <= _wgslsmith_dot_vec3_i32(arg_0.d.zzw, ~vec3<i32>(var_0, 62333, 24790)), vec3<bool>(true, false, func_4()), ~u_input.b.xzy & firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c.x, 1254u), vec3<u32>(78809u, 77883u, 1u), vec3<u32>(4294967295u, arg_0.c.x, arg_0.c.x))), min(firstLeadingBit(vec4<i32>(37977, arg_0.d.x, var_0, u_input.a)), vec4<i32>(-2147483648, -13829, u_input.a, arg_0.d.x) << (u_input.b % vec4<u32>(32u))), !var_1.e))) {
            case 42975: {
                let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -1332.0), _wgslsmith_div_f32(470.0, 588.0))) + -269.0), _wgslsmith_f_op_f32(469.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1116.0 * 225.0) + _wgslsmith_f_op_f32(1729.0 - -1049.0))))));
                var var_3 = var_1.d.x;
                let var_4 = 0u;
                var_3 = 75808;
                var var_5 = !(!select(var_1.e.yzx, vec3<bool>(var_1.a, var_1.e.x, true), false));
            }
            case -6760: {
                global1 = array<vec3<bool>, 5>();
            }
            default: {
                global0 = array<vec3<f32>, 19>();
            }
        }
    }
    if (arg_0.b.x) {
        let var_0 = Struct_1(select(all(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(u_input.c.x, 53278u)), 5u)]), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1602.0) - _wgslsmith_f_op_f32(f32(-1.0) * -1400.0)) >= -1675.0), select(global1[_wgslsmith_index_u32(abs(78799u), 5u)], !select(select(vec3<bool>(true, arg_0.a, arg_0.e.x), vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.e.x, arg_0.b.x, arg_0.b.x)), !vec3<bool>(arg_0.b.x, false, arg_0.b.x), !vec3<bool>(true, false, false)), -1 > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, arg_0.d.x, -14918), -vec4<i32>(arg_0.d.x, u_input.a, arg_0.d.x, -1))), min(arg_0.c, vec3<u32>(_wgslsmith_clamp_u32(22516u, ~u_input.c.x, ~0u), _wgslsmith_div_u32(arg_0.c.x << (u_input.d % 32u), _wgslsmith_sub_u32(4294967295u, 28014u)), _wgslsmith_mod_u32(~u_input.b.x, 1u))), ~vec4<i32>(_wgslsmith_mult_i32(-2147483647, -5110), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-40788, arg_0.d.x, arg_0.d.x), arg_0.d.x), 17330, u_input.a), arg_0.e);
        switch (firstTrailingBit(var_0.d.x) >> (~17158u % 32u)) {
            case -25094: {
                let var_1 = var_0.c.x;
                var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1443.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-846.0, 406.0)))), -335.0));
                var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, 559.0), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + vec2<f32>(var_2.x, -1468.0))), var_0.e.zz)) - vec2<f32>(_wgslsmith_f_op_f32(984.0 + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-1017.0)))));
                let var_3 = arg_0.d;
            }
            case -28533: {
                var var_1 = Struct_1(func_4(), !select(var_0.e.xyx, !vec3<bool>(false, arg_0.b.x, var_0.e.x), !(!var_0.e.wxz)), reverseBits(vec3<u32>(arg_0.c.x, 15500u << (1797u % 32u), _wgslsmith_mult_u32(4294967295u, arg_0.c.x)) | var_0.c), _wgslsmith_add_vec4_i32(vec4<i32>(-11924, ~arg_0.d.x, ~(-2147483648), 1), arg_0.d) >> (vec4<u32>(0u, _wgslsmith_sub_u32(u_input.d, arg_0.c.x << (0u % 32u)), 23933u, 51297u) % vec4<u32>(32u)), select(select(select(!vec4<bool>(true, var_0.a, false, var_0.a), !vec4<bool>(var_0.a, false, arg_0.a, true), !true), select(select(var_0.e, vec4<bool>(arg_0.b.x, var_0.a, var_0.e.x, arg_0.b.x), arg_0.e), !vec4<bool>(false, var_0.b.x, false, arg_0.a), arg_0.b.x || false), arg_0.e), select(select(var_0.e, var_0.e, var_0.b.x), !(!vec4<bool>(true, var_0.b.x, var_0.e.x, arg_0.a)), !select(var_0.e, vec4<bool>(true, false, true, true), arg_0.b.x)), var_0.e));
                var var_2 = _wgslsmith_add_i32(arg_0.d.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-32601 | arg_0.d.x, ~u_input.a, u_input.a), 2147483647) << (countOneBits(~_wgslsmith_mult_u32(18172u, 24222u)) % 32u));
                var var_3 = select(arg_0.b.zy, select(select(select(!var_1.b.yy, !arg_0.b.yz, select(vec2<bool>(arg_0.a, true), arg_0.e.zy, arg_0.b.zy)), var_1.b.yz, select(!vec2<bool>(var_0.e.x, arg_0.a), select(arg_0.e.zx, var_0.e.yx, false), !false)), arg_0.b.yx, any(!var_1.e)), !vec2<bool>(var_0.e.x, arg_0.b.x));
            }
            case 0: {
                let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1601.0) - -1046.0) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000.0, 116.0) - _wgslsmith_div_f32(-329.0, -1323.0)))))));
                global1 = array<vec3<bool>, 5>();
                let var_2 = vec3<i32>(-reverseBits(i32(-1) * -2147483648), _wgslsmith_mod_i32(-17390, _wgslsmith_mod_i32(2147483647 << ((u_input.c.x << (arg_0.c.x % 32u)) % 32u), ~arg_0.d.x)), func_6(func_7(Struct_1(var_0.e.x, vec3<bool>(var_0.b.x, arg_0.e.x, false), vec3<u32>(1u, 41340u, 1u), vec4<i32>(u_input.a, var_0.d.x, arg_0.d.x, -1), var_0.e)) | firstLeadingBit(arg_0.d.x), var_0.d, var_0, -1007.0));
            }
            case 9489: {
                let var_1 = Struct_1(~(-u_input.a) != -(~(-29472)), select(select(!select(arg_0.b, global1[_wgslsmith_index_u32(1u, 5u)], arg_0.e.x), vec3<bool>(var_0.e.x && arg_0.a, var_0.e.x, 1109.0 < -1889.0), arg_0.e.x), !var_0.e.zzx, select(select(vec3<bool>(var_0.b.x, arg_0.b.x, false), arg_0.b, true & false), !select(vec3<bool>(true, false, arg_0.e.x), var_0.e.zwx, true), global1[_wgslsmith_index_u32(5280u << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, var_0.c.x), vec2<u32>(36093u, arg_0.c.x)) % 32u), 5u)])), countOneBits(~vec3<u32>(~37611u, ~arg_0.c.x, 82949u)), abs(max(arg_0.d, arg_0.d)) ^ _wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483648, u_input.a, u_input.a, -45536), vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, arg_0.d.x)), ~arg_0.d), vec4<bool>(any(select(select(vec2<bool>(false, false), arg_0.b.yx, false), var_0.e.yx, select(vec2<bool>(true, false), var_0.e.wz, arg_0.a))), !false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000.0))) != 3344.0, false || !(arg_0.d.x < arg_0.d.x)));
            }
            default: {
            }
        }
        let var_1 = !select(select(!arg_0.b.zy, select(select(arg_0.e.xy, vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, true)), vec2<bool>(arg_0.e.x, false), func_4()), _wgslsmith_f_op_f32(abs(845.0)) <= _wgslsmith_f_op_f32(f32(-1.0) * -755.0)), select(vec2<bool>(arg_0.d.x >= u_input.a, false), vec2<bool>(!var_0.e.x, true && var_0.a), !select(vec2<bool>(var_0.b.x, true), arg_0.e.xx, false)), vec2<bool>(var_0.b.x, var_0.e.x));
        return arg_0.b;
    }
    let var_0 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, arg_0.d.x), ~arg_0.d.zw), u_input.a, abs(43292)), -_wgslsmith_div_vec3_i32(~vec3<i32>(0, -17966, u_input.a), vec3<i32>(-26600, u_input.a, u_input.a)), ~u_input.a >= (-2147483648 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 11604u, arg_0.c.x, 1u), vec4<u32>(4294967295u, u_input.d, 54322u, arg_0.c.x)) % 32u))), arg_0.d.wzx);
    var var_1 = -func_6((_wgslsmith_sub_i32(arg_0.d.x, arg_0.d.x) >> (~u_input.c.x % 32u)) << (~2089u % 32u), arg_0.d, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-448.0, 1362.0)) - 101.0)));
    return !global1[_wgslsmith_index_u32(~(~firstLeadingBit(0u & 14639u)), 5u)];
}

fn func_8(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    global0 = array<vec3<f32>, 19>();
    if (any(!select(vec4<bool>(true, true || true, select(arg_0.x, arg_0.x, true), any(arg_0.zy)), vec4<bool>(any(arg_0.zx), all(vec4<bool>(true, arg_0.x, arg_0.x, false)), arg_0.x, arg_0.x), arg_0.x))) {
        let var_0 = -_wgslsmith_mult_vec4_i32((vec4<i32>(-1) * -vec4<i32>(u_input.a, u_input.a, -2147483648, -7425)) ^ ~vec4<i32>(u_input.a, u_input.a, 13106, u_input.a), vec4<i32>(u_input.a, (i32(-1) * -31897) & u_input.a, 0 >> (u_input.b.x % 32u), -_wgslsmith_add_i32(u_input.a, -2147483648)));
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            global1 = array<vec3<bool>, 5>();
            let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(-989.0)), arg_1, _wgslsmith_f_op_f32(842.0 + arg_1), arg_1);
            var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(100059u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, 14090u), vec3<u32>(4294967295u, u_input.c.x, 73611u))), _wgslsmith_dot_vec3_u32(~u_input.b.yzw, vec3<u32>(u_input.b.x, u_input.b.x, 27512u)), _wgslsmith_add_u32(4294967295u ^ 1u, 74816u)), min(~firstLeadingBit(u_input.b.yzy), select(~u_input.b.yyw, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x), u_input.b.zwz), arg_0.x))), vec3<u32>(reverseBits(countOneBits(68027u)) >> (29184u % 32u), 16530u, _wgslsmith_mod_u32(u_input.b.x, reverseBits(~99472u))));
            let var_3 = Struct_1(arg_0.x, arg_0, u_input.b.xzy, var_0, vec4<bool>(u_input.a > _wgslsmith_div_i32(-2845, -22180), false && arg_0.x, false, true));
            let var_4 = func_3(var_3).zz;
        }
        global1 = array<vec3<bool>, 5>();
    }
    global0 = array<vec3<f32>, 19>();
    if (!true) {
    }
    global0 = array<vec3<f32>, 19>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -470.0) + _wgslsmith_f_op_f32(f32(-1.0) * -1520.0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), !any(vec2<bool>(arg_0.x, false))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    var var_0 = -1337.0;
    if (!arg_3.x) {
        var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_8(func_3(Struct_1(!arg_3.x, arg_3.yzz, ~u_input.b.yxz, vec4<i32>(-2147483648, 1, 2147483647, arg_0.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 111650u, 4294967295u) % vec4<u32>(32u)), arg_3)), _wgslsmith_f_op_f32(round(arg_1)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(sign(1000.0)))))), arg_1, -992.0);
        for (var var_2 = arg_0.x; var_2 > -2147483648; ) {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        }
        var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-895.0, -289.0), 947.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
        let var_2 = Struct_1(all(!vec2<bool>(true, arg_3.x)), vec3<bool>(arg_3.x, any(arg_3), arg_3.x), u_input.b.xyw, arg_0, arg_3);
    }
    for (var var_1 = -1; !arg_3.x; var_1 += 1) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        continue;
    }
    var var_1 = Struct_1(!(arg_1 > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * arg_1)))), !select(func_3(Struct_1(true, vec3<bool>(arg_3.x, arg_3.x, arg_3.x), u_input.b.ywy, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.a), arg_3)), select(vec3<bool>(arg_3.x, true, arg_3.x), func_3(Struct_1(true, vec3<bool>(arg_3.x, arg_3.x, arg_3.x), u_input.b.yxz, arg_0, arg_3)), !false), global1[_wgslsmith_index_u32(4294967295u, 5u)]), u_input.b.yyx, firstTrailingBit(reverseBits(vec4<i32>(_wgslsmith_mult_i32(arg_0.x, 25424), -50770, arg_2 ^ 78547, -5383))), select(vec4<bool>(true, !(!false), !false & (2147483647 > arg_0.x), all(vec4<bool>(false, arg_3.x, false, false))), vec4<bool>(!arg_3.x & true, all(vec4<bool>(arg_3.x, true, false, arg_3.x)), !true, false), false));
    var var_2 = ~min(~_wgslsmith_mult_vec3_u32(u_input.b.zzx, var_1.c) | vec3<u32>(1u >> (53443u % 32u), var_1.c.x, 65555u), ~reverseBits(u_input.b.zyx));
    return var_2.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    switch (-19135) {
        case -2147483648: {
            var var_0 = Struct_1(arg_2.x, !vec3<bool>(all(select(arg_3.e, arg_3.e, arg_3.e)), !(!true), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_1, countOneBits(arg_3.c.x)), reverseBits(reverseBits(54568u)), func_2(vec4<i32>(arg_3.d.x, arg_3.d.x, 0, u_input.a), _wgslsmith_f_op_f32(min(679.0, 897.0)), arg_3.d.x, arg_3.e)), abs(vec3<u32>(0u, ~17135u, _wgslsmith_dot_vec3_u32(u_input.b.xwx, arg_3.c))), firstTrailingBit(~vec3<u32>(64415u, 0u, arg_0.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.d.x | _wgslsmith_mult_i32(arg_3.d.x, arg_3.d.x), firstLeadingBit(arg_3.d.x), ~u_input.a ^ arg_3.d.x, abs(u_input.a)), arg_3.d), !arg_3.e);
            switch (~(-1)) {
                case 30863: {
                }
                case -2147483648: {
                    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-116.0, -677.0)), _wgslsmith_f_op_f32(round(-249.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1000.0)) * -565.0))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1068.0)))), 272.0)));
                    global1 = array<vec3<bool>, 5>();
                    let var_2 = arg_3;
                    let var_3 = vec3<bool>(arg_3.e.x & arg_2.x, arg_2.x, _wgslsmith_f_op_f32(1000.0 * var_1.x) == _wgslsmith_f_op_f32(exp2(-369.0)));
                }
                case -1: {
                    global0 = array<vec3<f32>, 19>();
                }
                case 1: {
                }
                default: {
                }
            }
            if (var_0.b.x) {
                let var_1 = Struct_1(true, select(select(vec3<bool>(all(vec4<bool>(true, var_0.e.x, true, arg_2.x)), any(var_0.e), true), !func_3(arg_3), -42402 >= -2147483648), !global1[_wgslsmith_index_u32(~arg_1, 5u)], global1[_wgslsmith_index_u32(~12646u, 5u)]), _wgslsmith_clamp_vec3_u32(var_0.c, u_input.b.zxz, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.c.x, 16474u), var_0.c, arg_0), ~vec3<u32>(4294967295u, 13665u, 4294967295u)), vec3<u32>(_wgslsmith_mult_u32(arg_1, 98830u), 125412u, ~20092u), vec3<u32>(max(24322u, arg_1), 1u << (51582u % 32u), ~arg_0.x))), _wgslsmith_mod_vec4_i32(vec4<i32>((-1 | -2147483648) & ~u_input.a, func_5(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, arg_3.c.x), arg_0.xy), arg_3, vec4<bool>(var_0.b.x, arg_2.x, false, arg_3.e.x), arg_3).x, _wgslsmith_mult_i32(~29995, ~(-25494)), 0), vec4<i32>(_wgslsmith_add_i32(arg_3.d.x, -1), ~_wgslsmith_mult_i32(-6482, 0), func_6(11420, reverseBits(vec4<i32>(-32300, 2147483647, arg_3.d.x, 0)), Struct_1(false, arg_2, arg_3.c, vec4<i32>(-1, u_input.a, 0, 1), var_0.e), _wgslsmith_f_op_f32(f32(-1.0) * -881.0)), ~u_input.a)), select(var_0.e, vec4<bool>(!true, !true, (1204.0 != 940.0) | (1000.0 < -528.0), arg_2.x), false));
                var var_2 = ~arg_3.d.x;
                var var_3 = -arg_3.d.zx;
                return arg_3;
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                continue;
            }
            if (func_4()) {
                var var_1 = Struct_1(var_0.d.x >= -1, vec3<bool>(any(func_3(Struct_1(var_0.a, vec3<bool>(var_0.b.x, true, arg_3.e.x), vec3<u32>(9140u, arg_0.x, arg_0.x), vec4<i32>(-2721, 9423, var_0.d.x, arg_3.d.x), vec4<bool>(false, var_0.a, true, arg_2.x)))), true, 33395 < 2147483647), abs(~(~u_input.b.yxx) >> (arg_3.c % vec3<u32>(32u))), arg_3.d, !select(!vec4<bool>(arg_2.x, var_0.b.x, arg_2.x, var_0.b.x), select(!arg_3.e, !var_0.e, var_0.e), arg_3.e));
                global1 = array<vec3<bool>, 5>();
                var var_2 = Struct_1(func_4(), var_1.e.xyx, ~(~(~(arg_3.c ^ arg_3.c))), _wgslsmith_mult_vec4_i32(vec4<i32>(-30013, -2147483648, func_5(~arg_0.xy, arg_3, select(vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, var_0.e.x, false, true), var_1.e), arg_3).x, reverseBits(0)), vec4<i32>(arg_3.d.x, ~(arg_3.d.x ^ u_input.a), 2147483647, _wgslsmith_sub_i32(-49163, i32(-1) * -2147483648))), vec4<bool>(!true, var_1.e.x, any(vec3<bool>(77670u < 28831u, select(var_1.b.x, true, arg_3.e.x), !false)), 630.0 <= _wgslsmith_f_op_f32(f32(-1.0) * -1175.0)));
                global1 = array<vec3<bool>, 5>();
                var_1 = Struct_1(false, vec3<bool>(any(!select(var_1.b.yz, vec2<bool>(false, false), vec2<bool>(false, false))), false, all(select(var_0.b, select(vec3<bool>(true, true, false), vec3<bool>(var_2.e.x, var_2.e.x, false), var_0.b.x), vec3<bool>(true, var_1.b.x, arg_3.e.x)))), firstTrailingBit(select(abs(arg_3.c) | var_2.c, u_input.b.wwx, func_3(arg_3))), _wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-53800, 5939, 1, -2147483648), arg_3.d), vec4<i32>(abs(-1), 0, ~32363, 0)) | (~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647, 34728, 2147483647, var_0.d.x), vec4<i32>(var_2.d.x, -11974, 15933, 0), var_1.d) & (reverseBits(vec4<i32>(u_input.a, 2147483647, -10177, var_1.d.x)) | _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.d.x, arg_3.d.x, var_0.d.x, 28907), vec4<i32>(var_0.d.x, arg_3.d.x, -10479, var_2.d.x)))), vec4<bool>(true, !(-2147483648 <= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, -10056, -2147483648, -2147483648), arg_3.d)), var_0.a, !all(global1[_wgslsmith_index_u32(44904u, 5u)]) & false));
            }
        }
        case 27984: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                global1 = array<vec3<bool>, 5>();
                let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(188.0, -1000.0))))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -648.0), _wgslsmith_f_op_f32(ceil(-942.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236.0 + _wgslsmith_f_op_f32(f32(-1.0) * -1425.0)))));
                let var_1 = arg_3;
                continue;
            }
            if (arg_2.x) {
                let var_0 = all(select(!vec2<bool>(!true, arg_2.x), arg_3.e.wx, arg_3.a));
                let var_1 = Struct_1(arg_0.x > ~19295u, func_3(Struct_1(u_input.a == _wgslsmith_dot_vec3_i32(vec3<i32>(-19622, -1, -34406), arg_3.d.ywz), select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 0u), 5u)], arg_2, 440.0 <= -301.0), arg_0, _wgslsmith_add_vec4_i32(arg_3.d, select(vec4<i32>(3705, arg_3.d.x, 45517, u_input.a), vec4<i32>(-34790, arg_3.d.x, 3559, -1), vec4<bool>(true, true, var_0, arg_2.x))), vec4<bool>(arg_3.a, 699.0 > 680.0, true, false))), arg_3.c, _wgslsmith_mult_vec4_i32(-func_5(arg_0.xx, arg_3, vec4<bool>(arg_3.e.x, true, var_0, arg_3.b.x), Struct_1(false, vec3<bool>(true, true, var_0), vec3<u32>(4294967295u, 31528u, u_input.c.x), vec4<i32>(0, arg_3.d.x, -38339, u_input.a), vec4<bool>(arg_2.x, arg_3.b.x, true, arg_3.b.x))), -arg_3.d), select(vec4<bool>(false, any(!arg_2.xy), (arg_3.e.x | false) && arg_3.b.x, select(arg_2.x != arg_3.a, var_0 || true, 1 != -2147483648)), select(!arg_3.e, arg_3.e, arg_3.e), all(!vec3<bool>(false, false, true))));
                let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(508.0, -1166.0)) - _wgslsmith_f_op_f32(min(969.0, 216.0)))))));
                var var_3 = ~select(~vec2<u32>(arg_0.x, u_input.d), ~var_1.c.zy, !(!select(vec2<bool>(true, arg_3.b.x), vec2<bool>(var_0, var_1.e.x), var_1.e.x)));
                global1 = array<vec3<bool>, 5>();
            }
            var var_0 = !arg_2.xy;
        }
        case -1: {
            let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(584.0, -210.0), vec2<f32>(-770.0, -606.0), vec2<bool>(true, false))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2114.0, -210.0), vec2<f32>(-338.0, -662.0)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(550.0, 1051.0), vec2<f32>(-384.0, 1537.0), arg_2.x))))), vec2<f32>(554.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(543.0 - 1545.0), _wgslsmith_f_op_f32(f32(-1.0) * -652.0)))), arg_3.e.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1129.0, -1000.0), vec2<f32>(349.0, 1569.0)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2017.0, 1958.0) - vec2<f32>(778.0, -250.0)), vec2<f32>(-767.0, 1302.0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1072.0, -581.0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-773.0, -1000.0))))))));
            if (false) {
                global1 = array<vec3<bool>, 5>();
                let var_1 = 0;
            }
        }
        default: {
        }
    }
    global0 = array<vec3<f32>, 19>();
    var var_0 = arg_3;
    global0 = array<vec3<f32>, 19>();
    let var_1 = !select(select(select(global1[_wgslsmith_index_u32(abs(arg_3.c.x), 5u)], vec3<bool>(arg_3.b.x, true, var_0.b.x), var_0.e.xxz), global1[_wgslsmith_index_u32(arg_3.c.x, 5u)], vec3<bool>(select(arg_2.x, var_0.b.x, arg_2.x), !arg_3.a, 4294967295u <= 90729u)), !arg_2, var_0.b);
    return arg_3;
}

fn func_9(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + _wgslsmith_f_op_f32(f32(-1.0) * -751.0))), true)), _wgslsmith_f_op_f32(round(-1000.0))));
    var var_1 = func_1(max(~select(select(vec3<u32>(arg_2.c.x, 7450u, u_input.b.x), u_input.b.yxw, arg_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 96287u), vec3<u32>(arg_0.c.x, 40678u, u_input.b.x)), any(vec3<bool>(arg_2.e.x, arg_0.e.x, arg_2.a))), vec3<u32>(_wgslsmith_sub_u32(20769u, arg_0.c.x), _wgslsmith_dot_vec3_u32(arg_2.c, ~u_input.b.wyw), func_1(vec3<u32>(4294967295u, arg_0.c.x, 0u) >> (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)), ~arg_0.c.x, arg_0.b, Struct_1(true, global1[_wgslsmith_index_u32(22403u, 5u)], vec3<u32>(u_input.c.x, 31845u, arg_2.c.x), arg_2.d, vec4<bool>(arg_0.b.x, arg_0.b.x, true, false))).c.x)), ~(~_wgslsmith_sub_u32(arg_0.c.x, arg_0.c.x)), arg_0.e.xzw, arg_2);
    switch (u_input.a) {
        case 0: {
            var_1 = func_1(vec3<u32>(min(func_1(vec3<u32>(arg_0.c.x, arg_0.c.x, arg_2.c.x), var_1.c.x, select(vec3<bool>(arg_0.b.x, true, arg_2.b.x), arg_0.e.xwz, var_1.b.x), func_1(vec3<u32>(20901u, u_input.d, 42312u), arg_0.c.x, arg_2.e.yyz, arg_0)).c.x, _wgslsmith_div_u32(_wgslsmith_div_u32(45412u, arg_2.c.x), ~1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_1.c.x, 52593u), 0u), arg_2.c.zy), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_1.c.x, var_1.c.x), arg_0.c))), 57461u, vec3<bool>(func_4(), !true, all(arg_0.e) && (_wgslsmith_f_op_f32(1000.0 - arg_1.x) <= _wgslsmith_f_op_f32(-arg_1.x))), arg_2);
            let var_2 = func_3(func_1(vec3<u32>(u_input.b.x, ~(89776u >> (4942u % 32u)), ~(~1u)), var_1.c.x, func_3(arg_2), func_1(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(4294967295u, 5555u, 4294967295u)), arg_0.c), ~93910u, select(!vec3<bool>(var_1.b.x, true, false), vec3<bool>(var_1.e.x, arg_2.a, var_1.a), arg_2.e.yww), Struct_1(func_3(arg_2).x, !vec3<bool>(true, arg_0.b.x, var_1.a), _wgslsmith_add_vec3_u32(u_input.b.zxy, vec3<u32>(var_1.c.x, 0u, u_input.c.x)), select(vec4<i32>(var_1.d.x, var_1.d.x, -15890, u_input.a), vec4<i32>(39867, 1, 0, u_input.a), var_1.e), select(arg_2.e, var_1.e, vec4<bool>(true, var_1.a, true, false)))))).x;
            for (var var_3 = 37250; true && !var_1.a; ) {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var var_4 = -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.d.x, ~(arg_2.d.x ^ arg_2.d.x), _wgslsmith_dot_vec4_i32(arg_2.d, _wgslsmith_mod_vec4_i32(var_1.d, vec4<i32>(2147483647, arg_2.d.x, arg_0.d.x, arg_0.d.x)))), ~vec3<i32>(arg_0.d.x << (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(arg_2.d.yww, vec3<i32>(1, arg_2.d.x, arg_0.d.x)), _wgslsmith_mod_i32(arg_2.d.x, 2147483647)));
            }
            global1 = array<vec3<bool>, 5>();
            let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(trunc(-1378.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-113.0, 1000.0, arg_1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -523.0, 1332.0)))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-1249.0, arg_1.x)), _wgslsmith_f_op_f32(f32(-1.0) * -976.0), _wgslsmith_f_op_f32(arg_1.x - 235.0)))))));
        }
        case 1: {
            global1 = array<vec3<bool>, 5>();
            var_1 = Struct_1(false, arg_2.b, select(arg_2.c & vec3<u32>(var_1.c.x, 1u, arg_0.c.x << (var_1.c.x % 32u)), u_input.b.wzw, arg_2.b), arg_2.d, vec4<bool>(all(vec3<bool>(!true, false, arg_1.x == -315.0)), false, arg_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-155.0)) - _wgslsmith_f_op_f32(floor(arg_1.x))), !any(select(arg_2.e.xw, vec2<bool>(arg_0.b.x, false), vec2<bool>(true, var_1.b.x)))));
            let var_2 = _wgslsmith_div_f32(216.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(ceil(-567.0)))));
        }
        case -19593: {
            var var_2 = ~(~(arg_2.c ^ _wgslsmith_add_vec3_u32(arg_0.c, ~vec3<u32>(0u, var_1.c.x, 4294967295u))));
            global0 = array<vec3<f32>, 19>();
        }
        case 22219: {
            var_0 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -1000.0) + arg_1.x)))));
            if (!all(!(!vec4<bool>(arg_2.e.x, true, var_1.e.x, arg_0.b.x)))) {
                let var_2 = Struct_1(true, func_1(vec3<u32>(max(var_1.c.x, 1u), u_input.c.x, max(arg_2.c.x, 4294967295u)) | select(vec3<u32>(u_input.b.x, 21587u, arg_0.c.x) | vec3<u32>(26289u, 20353u, 56914u), ~u_input.b.wxy, var_1.b.x), _wgslsmith_mod_u32(arg_0.c.x, ~123946u) << (~_wgslsmith_div_u32(0u, arg_2.c.x) % 32u), vec3<bool>(-812 == (34340 ^ 5423), !(!arg_2.b.x), true), func_1(_wgslsmith_mult_vec3_u32(abs(arg_0.c), vec3<u32>(var_1.c.x, 1u, u_input.c.x)), ~abs(arg_0.c.x), arg_2.b, arg_0)).b, arg_0.c, arg_2.d, func_1(countOneBits(~vec3<u32>(arg_2.c.x, 17826u, u_input.c.x)), firstTrailingBit(1u), vec3<bool>(!var_1.a, false, func_4()), func_1(~u_input.b.yzx, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.d), arg_0.c.x), !var_1.e.xxy, arg_0)).e);
            }
        }
        default: {
            let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-756.0))));
            global0 = array<vec3<f32>, 19>();
        }
    }
    switch (~(-2147483648 | (-u_input.a >> (_wgslsmith_sub_u32(~arg_0.c.x, ~arg_2.c.x) % 32u)))) {
        case 2147483647: {
            var_0 = -434.0;
            for (var var_2 = -1395; var_2 < 7918; var_2 -= 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                let var_3 = ~(~_wgslsmith_mult_vec3_i32(-arg_0.d.zwz, _wgslsmith_div_vec3_i32(~arg_2.d.wwy, firstTrailingBit(vec3<i32>(-1, arg_0.d.x, arg_2.d.x)))));
            }
            var_1 = Struct_1(arg_0.e.x, var_1.b, u_input.b.zyx, _wgslsmith_mult_vec4_i32(firstTrailingBit(abs(~arg_0.d)), -(~func_5(vec2<u32>(u_input.c.x, 1u), arg_0, arg_0.e, arg_2))), arg_0.e);
            var_1 = arg_2;
        }
        case -2147483648: {
            var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
            for (var var_3 = 1; ; var_3 -= 1) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                global0 = array<vec3<f32>, 19>();
                var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x))));
                let var_4 = Struct_1(arg_1.x >= arg_1.x, !var_1.e.yxz, firstLeadingBit(arg_0.c), arg_2.d, vec4<bool>(!var_1.e.x, var_1.a | all(select(vec3<bool>(arg_0.b.x, arg_2.e.x, arg_2.e.x), global1[_wgslsmith_index_u32(u_input.b.x, 5u)], vec3<bool>(false, arg_2.b.x, var_1.e.x))), !(!arg_0.a), !false));
                var var_5 = arg_0;
            }
            var var_3 = func_1(vec3<u32>(19468u, arg_0.c.x, ~arg_2.c.x << (_wgslsmith_mod_u32(0u >> (var_1.c.x % 32u), min(u_input.b.x, u_input.d)) % 32u)), 4294967295u, vec3<bool>(arg_1.x > 543.0, all(!(!vec4<bool>(var_1.e.x, var_1.e.x, var_1.a, false))), false), Struct_1(!(!(var_1.b.x | true)), !arg_0.e.xxx, vec3<u32>(0u, 0u, ~(~110484u)), abs(vec4<i32>(arg_0.d.x, -2147483648, -1, 0) & _wgslsmith_mult_vec4_i32(vec4<i32>(1, 54739, 0, -1), vec4<i32>(1, 1, arg_2.d.x, 13812))), select(arg_2.e, select(select(vec4<bool>(false, var_1.b.x, var_1.a, var_1.a), vec4<bool>(var_1.a, false, true, false), vec4<bool>(arg_0.b.x, var_1.e.x, var_1.b.x, false)), !arg_0.e, vec4<bool>(arg_2.e.x, arg_2.e.x, var_1.b.x, arg_2.b.x)), select(1u, 4294967295u, arg_2.b.x) <= firstTrailingBit(6967u))));
        }
        case -27077: {
            let var_2 = !var_1.e;
            let var_3 = arg_1.x;
            for (var var_4: i32; var_4 != -12456; var_4 += 1) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                let var_5 = arg_0.d.yzx;
                global0 = array<vec3<f32>, 19>();
                var var_6 = arg_2;
                global0 = array<vec3<f32>, 19>();
            }
            for (var var_4 = -2147483648; true != arg_2.e.x; var_4 -= 1) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                continue;
            }
        }
        case 33336: {
        }
        default: {
            switch (func_1(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.c.x, arg_0.c.x, u_input.d), vec3<u32>(~0u, 24052u, abs(arg_2.c.x))), max(~var_1.c.x, 5884u), !func_1(abs(vec3<u32>(0u, u_input.b.x, arg_0.c.x)), ~34207u ^ ~arg_2.c.x, var_1.b, func_1(vec3<u32>(arg_0.c.x, 57527u, 31647u), _wgslsmith_dot_vec3_u32(var_1.c, vec3<u32>(72164u, 79954u, arg_0.c.x)), vec3<bool>(false, false, arg_0.b.x), Struct_1(var_1.e.x, vec3<bool>(var_1.e.x, true, arg_2.b.x), vec3<u32>(arg_2.c.x, 0u, var_1.c.x), vec4<i32>(-1, u_input.a, u_input.a, 20825), arg_0.e))).e.zxw, arg_0).d.x) {
                case 2147483647: {
                    let var_2 = arg_0;
                    let var_3 = func_1(vec3<u32>(arg_0.c.x, _wgslsmith_mult_u32(7703u, 22537u), abs(func_1(var_2.c, countOneBits(0u), func_3(Struct_1(false, vec3<bool>(true, arg_2.a, var_2.e.x), vec3<u32>(16087u, arg_2.c.x, 12028u), arg_0.d, vec4<bool>(arg_2.a, true, var_2.e.x, arg_2.a))), func_1(arg_2.c, 0u, vec3<bool>(false, arg_0.e.x, true), arg_0)).c.x)), ~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 49622u), _wgslsmith_mod_u32(8419u, var_1.c.x))), var_1.e.wxx, arg_0);
                }
                case 44901: {
                    global0 = array<vec3<f32>, 19>();
                }
                default: {
                    var var_2 = func_1(~arg_0.c, min(_wgslsmith_mod_u32(~var_1.c.x, arg_0.c.x), 4294967295u), !vec3<bool>(_wgslsmith_f_op_f32(-2269.0 + 1002.0) > _wgslsmith_f_op_f32(floor(arg_1.x)), !(-1000.0 <= arg_1.x), false), Struct_1((any(vec2<bool>(false, true)) || (arg_2.e.x & var_1.e.x)) | all(vec3<bool>(arg_0.e.x, false, false)), !var_1.e.wwx, countOneBits(~func_1(vec3<u32>(40360u, 4294967295u, arg_0.c.x), 4294967295u, vec3<bool>(arg_2.a, true, arg_2.e.x), arg_2).c), vec4<i32>(firstLeadingBit(func_5(u_input.c, Struct_1(arg_2.e.x, arg_0.e.yyz, u_input.b.wzy, arg_0.d, vec4<bool>(arg_0.b.x, true, true, arg_2.b.x)), arg_2.e, Struct_1(true, vec3<bool>(false, true, arg_2.b.x), u_input.b.wwz, arg_2.d, arg_0.e)).x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, 1), vec2<i32>(arg_2.d.x, u_input.a)), _wgslsmith_div_i32(u_input.a, arg_0.d.x) & arg_2.d.x, _wgslsmith_mod_i32(-46970, u_input.a)), !(!func_1(vec3<u32>(0u, u_input.d, 88234u), u_input.d, vec3<bool>(true, var_1.b.x, arg_2.b.x), Struct_1(var_1.a, vec3<bool>(false, arg_2.e.x, true), vec3<u32>(28952u, arg_0.c.x, 1u), vec4<i32>(arg_2.d.x, var_1.d.x, 23354, var_1.d.x), vec4<bool>(false, true, true, arg_2.b.x))).e)));
                    let var_3 = vec2<i32>(func_6(37019, -reverseBits(arg_2.d), func_1(_wgslsmith_sub_vec3_u32(var_1.c, var_2.c), _wgslsmith_mult_u32(23587u, 38291u), var_2.e.yzy, Struct_1(var_2.a, var_1.e.wyw, vec3<u32>(var_2.c.x, 4294967295u, 4294967295u), vec4<i32>(24287, arg_0.d.x, 2147483647, 20950), vec4<bool>(arg_2.e.x, arg_2.e.x, true, arg_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -266.0))), -42485) << (select(~vec2<u32>(~var_2.c.x, abs(38794u)), ~func_1(vec3<u32>(var_1.c.x, 1u, arg_2.c.x), var_1.c.x, vec3<bool>(var_2.a, false, var_1.e.x), arg_0).c.xz | ~vec2<u32>(4294967295u, arg_2.c.x), false) % vec2<u32>(32u));
                    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) * -281.0);
                }
            }
            let var_2 = arg_2;
            if (false) {
                var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -1715.0);
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        var_1 = Struct_1(arg_2.b.x, vec3<bool>(true, any(arg_0.e.zy), var_1.b.x), vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, var_1.c.x, _wgslsmith_mult_u32(57878u, arg_0.c.x), ~1u)), var_1.c.x, arg_0.c.x), vec4<i32>(-u_input.a << (_wgslsmith_sub_u32(arg_2.c.x << (var_1.c.x % 32u), 29836u) % 32u), func_1(reverseBits(~u_input.b.zzy), 1u, arg_0.b, func_1(~vec3<u32>(21399u, u_input.c.x, 43152u), arg_2.c.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(16288u, 0u), arg_2.c.zx), 5u)], Struct_1(false, arg_0.e.www, vec3<u32>(u_input.d, 0u, arg_2.c.x), vec4<i32>(-2147483648, var_1.d.x, -1, u_input.a), var_1.e))).d.x, abs(var_1.d.x) << (arg_0.c.x % 32u), func_6(arg_2.d.x >> (func_2(arg_2.d, arg_1.x, -2147483648, var_1.e) % 32u), arg_0.d, func_1(var_1.c, 1u >> (0u % 32u), vec3<bool>(var_1.b.x, var_1.b.x, true), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617.0)))), vec4<bool>(select(_wgslsmith_f_op_f32(select(606.0, -178.0, arg_0.b.x)) < _wgslsmith_f_op_f32(-1564.0 + 199.0), all(!vec3<bool>(true, true, true)), !(false | false)), true, any(select(arg_2.e, var_1.e, arg_2.e)) || (func_3(Struct_1(true, arg_2.e.yxy, vec3<u32>(35901u, arg_2.c.x, var_1.c.x), arg_2.d, arg_0.e)).x & (3609u > arg_0.c.x)), arg_2.b.x));
        var var_2 = vec4<i32>(select(-countOneBits(var_1.d.x >> (4294967295u % 32u)), func_1(firstTrailingBit(vec3<u32>(u_input.c.x, arg_2.c.x, 1u)) ^ arg_0.c, abs(4294967295u) ^ 33893u, !vec3<bool>(false, true, arg_0.b.x), arg_0).d.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(max(~(-3257), 1087), -12708, ~1, firstLeadingBit(i32(-1) * -5514)), -vec4<i32>(u_input.a, ~(-11528), abs(-2520), firstTrailingBit(var_1.d.x))), firstTrailingBit(_wgslsmith_dot_vec2_i32(~(-arg_2.d.yw), vec2<i32>(max(2147483647, 37197), select(-32336, -2147483648, arg_2.e.x)))), countOneBits(~arg_0.d.x));
        var_1 = arg_0;
        continue;
    }
    return vec3<i32>(arg_2.d.x, _wgslsmith_sub_i32(arg_2.d.x, ~func_6(u_input.a, vec4<i32>(arg_0.d.x, var_1.d.x, 2147483647, u_input.a), Struct_1(arg_2.e.x, var_1.e.xyy, arg_2.c, vec4<i32>(arg_2.d.x, u_input.a, 0, -37529), vec4<bool>(var_1.e.x, var_1.b.x, arg_0.b.x, arg_2.a)), 954.0)) | ~func_7(arg_0), ~arg_2.d.x);
}

fn func_10(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    for (var var_0 = 1; all(!vec4<bool>(true, false, !(1450.0 > -172.0), false)); ) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        let var_1 = arg_1.x;
        loop {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            var var_2 = -47680;
            var_2 = _wgslsmith_add_i32(-1, -56171);
            break;
        }
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            let var_2 = Struct_1(func_3(func_1(vec3<u32>(~56011u, 1893u | 0u, select(10905u, 17994u, true)), u_input.c.x, !arg_1, Struct_1(false, vec3<bool>(var_1, true, arg_1.x), max(vec3<u32>(47663u, 4294967295u, 1u), vec3<u32>(u_input.d, 4294967295u, u_input.c.x)), -vec4<i32>(arg_2.x, 23432, -42713, -1), func_1(u_input.b.wxx, 55048u, vec3<bool>(arg_1.x, true, true), Struct_1(false, vec3<bool>(true, true, var_1), u_input.b.xxz, vec4<i32>(arg_0.x, -1, -30582, 47112), vec4<bool>(arg_1.x, false, false, arg_1.x))).e))).x, !vec3<bool>((1000.0 < -1650.0) || func_3(Struct_1(var_1, arg_1, u_input.b.xwx, vec4<i32>(38084, 2946, arg_0.x, -21645), vec4<bool>(arg_1.x, false, var_1, var_1))).x, arg_1.x, arg_1.x), u_input.b.zww, -vec4<i32>(arg_0.x, -arg_2.x, _wgslsmith_sub_i32(10345, u_input.a), -u_input.a) | _wgslsmith_add_vec4_i32(vec4<i32>(-1 >> (1u % 32u), 18411, arg_2.x, -5633), vec4<i32>(-7059, _wgslsmith_dot_vec2_i32(arg_0.xy, arg_0.zy), -1, ~u_input.a)), vec4<bool>(func_3(func_1(~vec3<u32>(4294967295u, 10626u, u_input.d), 1u, !vec3<bool>(var_1, var_1, arg_1.x), func_1(vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], Struct_1(true, global1[_wgslsmith_index_u32(u_input.d, 5u)], u_input.b.zyw, vec4<i32>(-56952, -1, 19641, arg_0.x), vec4<bool>(false, false, true, false))))).x, !(abs(u_input.a) > 2147483647), any(vec2<bool>(!var_1, var_1)), var_1));
            global1 = array<vec3<bool>, 5>();
        }
        if (true) {
            var var_2 = !arg_1.x;
            var var_3 = abs(arg_0.xx);
            let var_4 = Struct_1(!var_1, vec3<bool>(!false, !(var_3.x > var_3.x), !(!var_1) || ((83629u > 1u) | all(arg_1.yy))), vec3<u32>(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), ~(~vec2<u32>(u_input.b.x, u_input.b.x))), firstLeadingBit(0u)), abs(vec4<i32>(-2147483648, 2147483647 & var_3.x, select(arg_2.x, -var_3.x, var_1), ~_wgslsmith_mod_i32(var_3.x, arg_0.x))), select(func_1(abs(~vec3<u32>(u_input.d, 4294967295u, u_input.d)), 64338u, select(vec3<bool>(false, var_1, arg_1.x), !vec3<bool>(var_1, arg_1.x, true), true), Struct_1(arg_1.x, arg_1, func_1(vec3<u32>(u_input.b.x, u_input.c.x, 0u), u_input.d, arg_1, Struct_1(var_1, vec3<bool>(false, arg_1.x, false), u_input.b.wwx, vec4<i32>(var_3.x, -17314, var_3.x, 8252), vec4<bool>(false, true, var_1, true))).c, vec4<i32>(-9801, -12615, arg_2.x, arg_0.x), !vec4<bool>(false, false, arg_1.x, true))).e, select(vec4<bool>(true, var_1 || arg_1.x, arg_1.x, any(vec4<bool>(var_1, arg_1.x, true, false))), select(!vec4<bool>(false, true, arg_1.x, true), select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, true), var_1), u_input.b.x > 1u), select(vec4<bool>(var_1, false, true, false), select(vec4<bool>(arg_1.x, true, false, true), vec4<bool>(false, arg_1.x, true, false), var_1), vec4<bool>(true, var_1, arg_1.x, false))), select(!select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(true, arg_1.x, false, false), arg_1.x), vec4<bool>(!var_1, var_1, true, arg_1.x), !(!false))));
            var_0 = countOneBits(firstLeadingBit(-_wgslsmith_mult_i32(u_input.a, reverseBits(0))));
            let var_5 = var_4;
        }
    }
    var var_0 = !all(select(arg_1.yx, vec2<bool>(any(vec4<bool>(true, true, true, false)), all(arg_1.zz)), true));
    var var_1 = firstLeadingBit(vec2<u32>(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x) & func_2(vec4<i32>(26272, u_input.a, arg_0.x, arg_0.x), _wgslsmith_f_op_f32(func_8(vec3<bool>(arg_1.x, arg_1.x, false), -1000.0)), 0, vec4<bool>(false, arg_1.x, arg_1.x, true)), firstLeadingBit(0u)));
    var_1 = u_input.b.yw;
    if (arg_1.x) {
        let var_2 = func_1(vec3<u32>(11940u, ~18271u, u_input.d), 0u, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.x, 28923u, var_1.x) ^ u_input.b, u_input.b), u_input.b), 5u)], Struct_1(func_3(Struct_1(!arg_1.x, vec3<bool>(arg_1.x, arg_1.x, true), vec3<u32>(31244u, 4294967295u, u_input.b.x), func_1(vec3<u32>(var_1.x, var_1.x, 28083u), var_1.x, vec3<bool>(arg_1.x, arg_1.x, true), Struct_1(arg_1.x, vec3<bool>(arg_1.x, true, arg_1.x), vec3<u32>(u_input.b.x, u_input.b.x, 53600u), vec4<i32>(arg_0.x, arg_2.x, arg_0.x, u_input.a), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x))).d, vec4<bool>(arg_1.x, true, true, true))).x, func_1(~(u_input.b.xxy ^ u_input.b.ywz), 1816u, !select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1, vec3<bool>(true, false, arg_1.x)), func_1(~u_input.b.wyw, _wgslsmith_mult_u32(83699u, u_input.c.x), vec3<bool>(true, false, true), func_1(vec3<u32>(var_1.x, var_1.x, var_1.x), 1u, vec3<bool>(false, arg_1.x, arg_1.x), Struct_1(true, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], vec3<u32>(var_1.x, 12124u, u_input.c.x), vec4<i32>(30923, -1, 56526, u_input.a), vec4<bool>(arg_1.x, false, true, true))))).e.zxz, vec3<u32>(16529u, ~(~4294967295u), _wgslsmith_clamp_u32(4294967295u, u_input.c.x, 45276u) & var_1.x), vec4<i32>(u_input.a, 35176, -7607, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(arg_0.x, arg_2.x)), vec2<i32>(arg_0.x, arg_2.x))), vec4<bool>(arg_1.x, func_1(firstTrailingBit(u_input.b.xwy), 1u, select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), arg_1.x), func_1(u_input.b.yxx, u_input.c.x, global1[_wgslsmith_index_u32(59047u, 5u)], Struct_1(true, vec3<bool>(false, arg_1.x, arg_1.x), u_input.b.zww, vec4<i32>(5149, -37877, u_input.a, -2147483648), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)))).e.x, any(!vec3<bool>(arg_1.x, false, arg_1.x)), all(arg_1))));
        return Struct_1(any(func_3(func_1(u_input.b.yxw, var_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], func_1(vec3<u32>(var_2.c.x, 1u, 62002u), var_2.c.x, vec3<bool>(var_2.e.x, true, false), Struct_1(var_2.e.x, arg_1, vec3<u32>(var_2.c.x, 0u, u_input.c.x), vec4<i32>(-1, -3696, u_input.a, 2147483647), vec4<bool>(var_2.b.x, arg_1.x, true, arg_1.x))))).zz), vec3<bool>(true, true, arg_2.x <= -(i32(-1) * -2147483648)), _wgslsmith_sub_vec3_u32(~u_input.b.wxw, ~vec3<u32>(0u, ~var_1.x, 129396u)), ~(-vec4<i32>(_wgslsmith_mult_i32(arg_2.x, var_2.d.x), func_5(u_input.b.wy, var_2, var_2.e, Struct_1(arg_1.x, arg_1, var_2.c, var_2.d, vec4<bool>(false, var_2.b.x, arg_1.x, var_2.b.x))).x, 21024, countOneBits(0))), !var_2.e);
    }
    return Struct_1(func_4(), func_1(reverseBits(firstTrailingBit(u_input.b.xyy << (u_input.b.xyw % vec3<u32>(32u)))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b.xxx, u_input.b.zzz), 4294967295u), func_1(u_input.b.yww, ~_wgslsmith_mult_u32(u_input.b.x, 97184u), !select(arg_1, vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x)), Struct_1(arg_1.x, arg_1, u_input.b.wyw, firstTrailingBit(vec4<i32>(arg_2.x, -33984, arg_0.x, 2147483647)), !vec4<bool>(false, false, true, true))).e.wxy, Struct_1(any(func_3(Struct_1(arg_1.x, vec3<bool>(false, arg_1.x, arg_1.x), vec3<u32>(4294967295u, 87383u, u_input.b.x), vec4<i32>(u_input.a, arg_0.x, arg_0.x, arg_2.x), vec4<bool>(true, true, true, arg_1.x))).yx), func_1(max(vec3<u32>(72768u, 1u, 0u), vec3<u32>(36334u, 4294967295u, u_input.c.x)), 48490u, select(vec3<bool>(true, arg_1.x, arg_1.x), arg_1, arg_1.x), Struct_1(arg_1.x, vec3<bool>(arg_1.x, true, true), vec3<u32>(76362u, 64614u, u_input.c.x), vec4<i32>(u_input.a, 56594, u_input.a, 12274), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))).e.ywz, ~vec3<u32>(0u, u_input.c.x, var_1.x), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, 25151, -3946), ~vec4<i32>(9313, arg_0.x, u_input.a, 33053)), select(func_1(u_input.b.zyx, 32983u, arg_1, Struct_1(arg_1.x, arg_1, u_input.b.xyy, vec4<i32>(0, u_input.a, 0, 1), vec4<bool>(true, arg_1.x, true, true))).e, select(vec4<bool>(true, true, true, arg_1.x), vec4<bool>(true, arg_1.x, false, false), arg_1.x), !arg_1.x))).e.xwy, min(reverseBits(abs(u_input.b.yzx) >> (~u_input.b.zww % vec3<u32>(32u))), vec3<u32>(_wgslsmith_sub_u32(u_input.d, 0u ^ u_input.c.x), reverseBits(min(var_1.x, 58518u)), _wgslsmith_mod_u32(var_1.x, select(var_1.x, 4294967295u, true)))), _wgslsmith_div_vec4_i32(~countOneBits(vec4<i32>(-25529, arg_0.x, -1, -2147483648)), abs(vec4<i32>(arg_0.x, -1, u_input.a, -15706))), func_1(max(vec3<u32>(select(4294967295u, 36063u, false), ~var_1.x, _wgslsmith_mult_u32(15980u, 4294967295u)), max(max(u_input.b.xww, u_input.b.xzy), select(vec3<u32>(u_input.c.x, 34874u, 4294967295u), u_input.b.www, vec3<bool>(arg_1.x, true, true)))), ~var_1.x, global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(~35742u, 4294967295u), reverseBits(~65064u)), 5u)], func_1(abs(u_input.b.zww), 6262u >> (4294967295u % 32u), vec3<bool>(!arg_1.x, !arg_1.x, arg_1.x), Struct_1(arg_1.x, !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), ~vec3<u32>(var_1.x, u_input.d, u_input.d), -vec4<i32>(2147483647, 1, 2147483647, arg_0.x), !vec4<bool>(true, false, false, true)))).e);
}

@compute
@workgroup_size(1)
fn main() {
    if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-614.0)) == 1198.0) {
        if (!(!(!(!true)))) {
            let var_0 = func_10(_wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 1, u_input.a)) >> ((vec3<u32>(u_input.d, 0u, 1u) & u_input.b.yyy) % vec3<u32>(32u))), func_9(Struct_1(true, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 8587u, 0u), u_input.b.www), vec4<i32>(11664, -2147483648, -1, u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 19u)]))), func_1(_wgslsmith_add_vec3_u32(u_input.b.yzw, u_input.b.yww), u_input.b.x, global1[_wgslsmith_index_u32(countOneBits(1u), 5u)], Struct_1(false, global1[_wgslsmith_index_u32(1u, 5u)], u_input.b.zyy, vec4<i32>(30092, -2147483648, u_input.a, 1), vec4<bool>(false, false, true, false))))), !select(global1[_wgslsmith_index_u32(~24232u, 5u)], !global1[_wgslsmith_index_u32(reverseBits(29504u), 5u)], !(!false)), -vec2<i32>(u_input.a | -1, u_input.a));
            global1 = array<vec3<bool>, 5>();
            var var_1 = Struct_1(func_10(firstTrailingBit(vec3<i32>(-15059, 0, _wgslsmith_mod_i32(-47173, -8245))), global1[_wgslsmith_index_u32(firstTrailingBit(~func_1(var_0.c, 42616u, vec3<bool>(true, var_0.b.x, var_0.e.x), var_0).c.x), 5u)], -max(~vec2<i32>(-37468, -49136), var_0.d.yy)).a, select(vec3<bool>(var_0.a, any(!vec2<bool>(false, var_0.a)), var_0.e.x), !(!func_3(Struct_1(true, var_0.b, vec3<u32>(51933u, 4294967295u, 1u), var_0.d, vec4<bool>(var_0.a, var_0.b.x, var_0.b.x, true)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(45925u, abs(10064u))), 5u)]), _wgslsmith_mult_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(63321u, var_0.c.x, 4294967295u), abs(vec3<u32>(var_0.c.x, u_input.b.x, 1u))), _wgslsmith_sub_vec3_u32(~var_0.c, _wgslsmith_clamp_vec3_u32(var_0.c, var_0.c, var_0.c))), vec3<u32>(~41827u, firstLeadingBit(4294967295u), ~(~var_0.c.x))), var_0.d, vec4<bool>(var_0.a, false, !false, true));
            var var_2 = var_0;
            var var_3 = Struct_1(var_2.b.x, select(select(vec3<bool>(u_input.c.x <= 0u, !var_1.e.x, false), var_0.e.zzx, var_0.e.zzz), func_3(func_1(vec3<u32>(0u, var_1.c.x, 0u), 207u, !var_1.e.xzy, var_0)), !var_0.e.zwx), countOneBits(countOneBits(~min(u_input.b.yxy, u_input.b.yxy))), vec4<i32>(_wgslsmith_sub_i32(-(var_0.d.x >> (var_1.c.x % 32u)), var_2.d.x), ~4684, -var_0.d.x, -var_0.d.x), func_10((var_0.d.zzz & (var_1.d.yww ^ vec3<i32>(u_input.a, var_2.d.x, 30002))) & _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(11406, var_0.d.x, 15256), vec3<i32>(var_1.d.x, -1, var_0.d.x), var_0.d.wyx), var_0.d.xxw), vec3<bool>(all(var_1.b.xz) && var_2.e.x, func_10(select(var_0.d.wyz, var_1.d.xxy, vec3<bool>(true, false, false)), !var_0.e.yxx, vec2<i32>(1, var_2.d.x)).a, !(var_0.b.x & true)), -vec2<i32>(min(u_input.a, var_2.d.x), var_0.d.x)).e);
        }
        global0 = array<vec3<f32>, 19>();
        let var_0 = vec4<bool>(!(~1u <= _wgslsmith_dot_vec2_u32(u_input.c | u_input.b.ww, vec2<u32>(3562u, 30772u))), !all(global1[_wgslsmith_index_u32(countOneBits(u_input.b.x), 5u)]), true, false);
        switch (max(func_6(_wgslsmith_mod_i32(-firstLeadingBit(-26114), u_input.a), ~vec4<i32>(0 ^ u_input.a, ~1, reverseBits(-36077), func_1(vec3<u32>(u_input.c.x, 4294967295u, u_input.b.x), 20563u, vec3<bool>(false, false, false), Struct_1(var_0.x, var_0.yxz, u_input.b.wxx, vec4<i32>(u_input.a, u_input.a, -35898, u_input.a), var_0)).d.x), func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(76005u, u_input.b.x, 0u), u_input.b.xxw) ^ (vec3<u32>(22681u, 1u, u_input.d) & u_input.b.wzx), ~u_input.c.x, global1[_wgslsmith_index_u32(0u, 5u)], Struct_1(false | true, !vec3<bool>(var_0.x, var_0.x, var_0.x), func_1(vec3<u32>(u_input.d, 4294967295u, 23983u), u_input.c.x, var_0.ywy, Struct_1(var_0.x, vec3<bool>(var_0.x, false, false), u_input.b.yyx, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), var_0)).c, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(6674, -7155, u_input.a, u_input.a)), var_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1031.0)) - -629.0)))), u_input.a)) {
            case -1: {
                let var_1 = _wgslsmith_mult_i32(firstLeadingBit(func_10(~vec3<i32>(0, 25629, u_input.a), var_0.ywz, select(abs(vec2<i32>(-1820, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483648, u_input.a), vec2<i32>(31731, u_input.a)), !vec2<bool>(var_0.x, var_0.x))).d.x), max(_wgslsmith_clamp_i32(u_input.a, u_input.a, select(u_input.a, 2147483647, false)) | -1, -2147483648));
                let var_2 = select(false, ~1 != abs(i32(-1) * -var_1), all(!vec4<bool>(true, var_0.x & var_0.x, func_3(Struct_1(var_0.x, global1[_wgslsmith_index_u32(u_input.d, 5u)], u_input.b.zxx, vec4<i32>(u_input.a, -37439, -2147483648, u_input.a), var_0)).x, true)));
                let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, select(u_input.b, ~max(vec4<u32>(u_input.c.x, u_input.c.x, 16875u, 57399u), vec4<u32>(u_input.d, u_input.b.x, u_input.d, u_input.c.x)), var_0)), max(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x, firstLeadingBit(u_input.d)), ~vec2<u32>(20871u, u_input.c.x) ^ max(vec2<u32>(1u, 32885u), vec2<u32>(0u, 36718u))), u_input.d));
                global1 = array<vec3<bool>, 5>();
                global1 = array<vec3<bool>, 5>();
            }
            default: {
                global1 = array<vec3<bool>, 5>();
                global0 = array<vec3<f32>, 19>();
                let var_1 = func_10(~(-vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), 9462, func_6(2147483647, vec4<i32>(27481, u_input.a, -2147483648, -2147483648), Struct_1(true, var_0.wxx, u_input.b.wwy, vec4<i32>(-2147483648, -9834, u_input.a, -16000), var_0), 562.0))), global1[_wgslsmith_index_u32(0u, 5u)], ~vec2<i32>(func_5(~u_input.c, func_1(vec3<u32>(u_input.c.x, u_input.b.x, 13661u), 46146u, vec3<bool>(var_0.x, true, var_0.x), Struct_1(var_0.x, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.b.zzz, vec4<i32>(11375, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, false, true))), vec4<bool>(true, false, false, var_0.x), func_10(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, var_0.x), vec2<i32>(-60683, u_input.a))).x, abs(u_input.a)));
                let var_2 = var_1.d.yw;
                global0 = array<vec3<f32>, 19>();
            }
        }
    }
    let var_0 = vec3<u32>(~_wgslsmith_clamp_u32(abs(~1u), min(1u, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), _wgslsmith_mult_u32(u_input.b.x << (14314u % 32u), u_input.d)), 0u, _wgslsmith_dot_vec2_u32(~(~u_input.b.yx), ~vec2<u32>(~u_input.c.x, u_input.d)));
    if (false) {
        global0 = array<vec3<f32>, 19>();
        var var_1 = -2147483648;
    }
    var var_1 = Struct_1(!(min(reverseBits(u_input.a), u_input.a) >= -select(-41480, u_input.a, false)), !func_1(u_input.b.xww, _wgslsmith_div_u32(u_input.b.x, ~0u), vec3<bool>(!true, false, !false), func_10(vec3<i32>(38469, u_input.a, 1) << (var_0 % vec3<u32>(32u)), vec3<bool>(true, true, false), -vec2<i32>(u_input.a, u_input.a))).b, select(select(var_0, var_0, func_1(var_0, 0u, global1[_wgslsmith_index_u32(var_0.x, 5u)], func_10(vec3<i32>(u_input.a, 1, u_input.a), global1[_wgslsmith_index_u32(0u, 5u)], vec2<i32>(2147483647, u_input.a))).b), select(vec3<u32>(4294967295u, 28181u, 62271u), vec3<u32>(u_input.b.x, 87949u, u_input.b.x), global1[_wgslsmith_index_u32(func_10(vec3<i32>(2147483647, -51307, 11261), global1[_wgslsmith_index_u32(var_0.x, 5u)], vec2<i32>(u_input.a, u_input.a)).c.x, 5u)]) ^ ~select(u_input.b.wyx, u_input.b.zzx, vec3<bool>(false, false, false)), !select(select(global1[_wgslsmith_index_u32(var_0.x, 5u)], vec3<bool>(true, true, false), vec3<bool>(true, false, false)), !global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(0u ^ var_0.x, 5u)])), vec4<i32>(14515, i32(-1) * -2147483648, u_input.a, abs(u_input.a) ^ (abs(u_input.a) & (0 << (var_0.x % 32u)))), vec4<bool>(func_3(Struct_1(true, global1[_wgslsmith_index_u32(firstLeadingBit(0u), 5u)], vec3<u32>(1u, 56909u, u_input.d) << (vec3<u32>(54718u, 4294967295u, u_input.b.x) % vec3<u32>(32u)), ~vec4<i32>(u_input.a, 25964, u_input.a, 33194), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)))).x, func_4(), -824.0 != _wgslsmith_f_op_f32(241.0 - _wgslsmith_f_op_f32(f32(-1.0) * -398.0)), all(!(!vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-2147483648, u_input.a), vec3<u32>(~(~u_input.d), 0u, select(~0u, firstLeadingBit(var_1.c.x), var_1.a)), 2147483647, var_1.d, _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(1, 18631), ~var_1.d.x), countOneBits(func_5(_wgslsmith_div_vec2_u32(u_input.c, u_input.b.wz), Struct_1(var_1.b.x, var_1.b, vec3<u32>(var_1.c.x, 22213u, 56240u), var_1.d, var_1.e), func_10(var_1.d.xyz, vec3<bool>(true, var_1.e.x, var_1.b.x), vec2<i32>(var_1.d.x, -26811)).e, Struct_1(var_1.b.x, vec3<bool>(var_1.b.x, true, var_1.b.x), u_input.b.xxz, var_1.d, vec4<bool>(var_1.e.x, var_1.b.x, true, var_1.b.x))).xy)));
}

