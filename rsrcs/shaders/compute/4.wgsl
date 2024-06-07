// {"0:0":[133,154,216,110,183,228,18,254,77,159,7,198,172,27,121,249]}
// Seed: 18340260825332580390

struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: array<u32, 16> = array<u32, 16>(1u, 20258u, 71487u, 1u, 16675u, 0u, 85582u, 44590u, 4294967295u, 0u, 1u, 28507u, 10289u, 31996u, 0u, 4294967295u);

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(1, 0, -8798), vec3<i32>(-1, -1, 6368), vec3<i32>(2147483647, 2147483647, -61623), vec3<i32>(3048, -1, 16317), vec3<i32>(-35345, 2147483647, 19177), vec3<i32>(-17746, -73006, 25051), vec3<i32>(-1, -2147483648, -2147483648), vec3<i32>(30918, 0, 4008), vec3<i32>(-2147483648, 1972, 1), vec3<i32>(-2147483648, 1, 36507), vec3<i32>(19523, 56555, -11825), vec3<i32>(0, -1, -1268), vec3<i32>(21265, -2147483648, -1));

var<private> global4: Struct_5 = Struct_5(true);

var<private> LOOP_COUNTERS: array<u32, 22>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> bool {
    global3 = array<vec3<i32>, 13>();
    let var_0 = Struct_4(645.0);
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    let var_1 = global2[_wgslsmith_index_u32(~1u, 4u)];
    for (var var_2 = 28532; all(global0[_wgslsmith_index_u32(~var_1.b, 16u)]); var_2 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        return global4.a;
    }
    return !false;
}

fn func_6(arg_0: vec3<bool>) -> vec4<u32> {
    for (var var_0 = -41264; var_0 <= 1; var_0 += 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        return _wgslsmith_clamp_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(5819u, 51970u, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 16u)]) ^ vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 11988u, 29868u, 8246u), _wgslsmith_add_vec4_u32(vec4<u32>(683u, u_input.b, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec4<u32>(u_input.b, u_input.b, 57194u, 0u)))), (~select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66121u, 16u)], 16u)], global1[_wgslsmith_index_u32(94932u, 16u)], u_input.b, 86525u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 111287u, global1[_wgslsmith_index_u32(u_input.b, 16u)], u_input.b), global0[_wgslsmith_index_u32(u_input.b, 16u)]) ^ (select(vec4<u32>(1u, 4294967295u, 1u, 7448u), vec4<u32>(4294967295u, u_input.b, 48975u, 71441u), false) >> ((vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(18576u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], 0u) << (vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22514u, 16u)], 16u)], u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)))) ^ _wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3568u, 16u)], 16u)], 85385u, 0u), firstTrailingBit(vec4<u32>(31278u, 117088u, global1[_wgslsmith_index_u32(44909u, 16u)], 52759u)), global0[_wgslsmith_index_u32(4294967295u, 16u)]), min(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 22032u, u_input.b, u_input.b) ^ vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 44164u, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 16u)]), select(vec4<u32>(88204u, 1u, u_input.b, 17738u), vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.b), arg_0.x))), vec4<u32>(u_input.b, select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(1555u, 16u)], u_input.b), vec4<u32>(4294967295u, 1u, 40995u, 4294967295u)), u_input.b, !global4.a), ~8282u, _wgslsmith_mult_u32(~1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(56316u, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)])), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 100798u), vec2<u32>(0u, global1[_wgslsmith_index_u32(36267u, 16u)]), vec2<u32>(11345u, 121215u))), 16u)], 16u)])));
    }
    let var_0 = Struct_1(~_wgslsmith_mod_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1, -2147483648, u_input.a.x, 1), vec4<i32>(u_input.a.x, 19712, -12015, 2147483647)), ~(-2147483648)), u_input.a.x), ~global1[_wgslsmith_index_u32(0u, 16u)], vec2<i32>(-1, u_input.a.x));
    var var_1 = vec2<f32>(-167.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-457.0) + _wgslsmith_f_op_f32(666.0 * -1237.0))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1426.0))), var_1.x);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266.0)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(2234.0 * 493.0)))));
    return vec4<u32>(u_input.b, var_0.b, 7913u, ~59393u) & _wgslsmith_mod_vec4_u32(abs(firstLeadingBit(vec4<u32>(var_0.b, 28608u, u_input.b, global1[_wgslsmith_index_u32(15313u, 16u)]) ^ vec4<u32>(44932u, 0u, global1[_wgslsmith_index_u32(4620u, 16u)], 0u))), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(72156u, 16u)], 1216u, 8125u, global1[_wgslsmith_index_u32(4294967295u, 16u)]) >> (vec4<u32>(90398u, 1u, 1u, 4294967295u) % vec4<u32>(32u))) << (~(~vec4<u32>(1u, u_input.b, 1u, 4294967295u)) % vec4<u32>(32u)));
}

fn func_4() -> vec2<bool> {
    global3 = array<vec3<i32>, 13>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(112.0, 718.0, -358.0)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-152.0, -1457.0, 920.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1035.0, -1100.0, 143.0)), all(vec4<bool>(false, global4.a, global4.a, global4.a)))), _wgslsmith_div_vec3_f32(vec3<f32>(-610.0, -869.0, -355.0), vec3<f32>(-911.0, -1055.0, 1407.0)), func_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2501.0, -1607.0, 1864.0))), Struct_3(vec3<f32>(679.0, 1168.0, -1245.0), vec2<u32>(41590u, 30626u)), false && false, vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10602u, 16u)], 16u)], 27754u) & vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 33054u, 35341u)))))), ~select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, 1u)) << ((vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 5699u) ^ vec2<u32>(54030u, global1[_wgslsmith_index_u32(2897u, 16u)])) % vec2<u32>(32u)), vec2<u32>(global1[_wgslsmith_index_u32(abs(4294967295u), 16u)], 28552u), !global4.a));
    switch (-u_input.a.x) {
        case 25181: {
            let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1043.0) + var_0.a.x));
            var var_2 = abs(~max(max(vec4<u32>(63087u, var_0.b.x, 12063u, 4294967295u), vec4<u32>(33225u, var_0.b.x, u_input.b, 0u) ^ vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(var_0.b.x, 16u)], var_0.b.x, 1u)), max(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 77040u, 1u, u_input.b), func_6(vec3<bool>(false, true, global4.a)))));
            let var_3 = Struct_5(~23525u <= _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u << (4294967295u % 32u), ~global1[_wgslsmith_index_u32(18489u, 16u)], var_2.x), var_0.b.x << (firstTrailingBit(0u) % 32u)));
        }
        case 9819: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                return !select(vec2<bool>(global4.a, _wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(-1167.0)), vec2<bool>(firstLeadingBit(96205u) <= 4294967295u, any(select(vec2<bool>(global4.a, true), vec2<bool>(false, global4.a), vec2<bool>(false, global4.a)))), select(vec2<bool>(global4.a, any(global0[_wgslsmith_index_u32(4294967295u, 16u)])), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(global4.a, global4.a)), !global4.a), !false));
            }
        }
        default: {
            if (!(!(global4.a | false))) {
                var var_1 = Struct_3(var_0.a, var_0.b);
                var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(204.0, -1000.0, 137.0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_0.a.x, 386.0) - var_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 646.0, -1000.0)))), var_0.b);
                var var_2 = Struct_4(var_0.a.x);
            }
            var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a)), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(41841u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)]) << (~u_input.b % 32u)));
            switch (_wgslsmith_clamp_i32(~(-1), ~(-(~firstLeadingBit(u_input.a.x))), 2147483647 & _wgslsmith_clamp_i32(1, max(2147483647 ^ -2147483648, u_input.a.x), -2147483648))) {
                case 49126: {
                    let var_1 = ~_wgslsmith_dot_vec3_u32(min(reverseBits(~vec3<u32>(var_0.b.x, var_0.b.x, 1u)), vec3<u32>(78873u, _wgslsmith_mult_u32(u_input.b, 17453u), u_input.b)), vec3<u32>(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 16u)], 1u, var_0.b.x));
                    let var_2 = select(!vec4<bool>(all(vec4<bool>(global4.a, false, false, false)), any(!vec4<bool>(global4.a, global4.a, true, global4.a)), false, false), !global0[_wgslsmith_index_u32(~reverseBits(59873u | var_0.b.x), 16u)], vec4<bool>(true, !global4.a, !false, all(!(!global0[_wgslsmith_index_u32(15752u, 16u)]))));
                    var var_3 = var_0.a;
                    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a)))) + var_0.a), ~(var_0.b << (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(var_0.b.x, u_input.b)) % vec2<u32>(32u))));
                }
                case -2147483648: {
                }
                default: {
                    let var_1 = i32(-1) * -1;
                    let var_2 = 2147483647;
                    global4 = Struct_5(global4.a);
                }
            }
            global3 = array<vec3<i32>, 13>();
        }
    }
    if (all(vec2<bool>(any(!vec4<bool>(global4.a, true, false, true)), true)) || any(vec4<bool>(false, global4.a, any(!vec2<bool>(global4.a, global4.a)), 10638 >= _wgslsmith_mult_i32(47911, -2147483648)))) {
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            continue;
        }
        for (var var_1: i32; false; var_1 -= 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            continue;
        }
    }
    let var_1 = vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1) * -vec4<i32>(u_input.a.x, u_input.a.x, -2147483648, u_input.a.x), vec4<i32>(-9841, abs(u_input.a.x), -u_input.a.x, u_input.a.x)) > u_input.a.x, true, all(!select(vec2<bool>(true, false), vec2<bool>(false, global4.a), global1[_wgslsmith_index_u32(u_input.b, 16u)] <= 54961u)), !(!(abs(global1[_wgslsmith_index_u32(4294967295u, 16u)]) <= (2883u | 16910u))));
    return var_1.xz;
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = func_4();
    switch (48944) {
        case 1: {
            for (var var_1 = 0; !var_0.x; var_1 += 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_2 = arg_0;
                let var_3 = ~_wgslsmith_mod_u32(~1u, min(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)] | 0u, 4294967295u), max(0u, ~global1[_wgslsmith_index_u32(57671u, 16u)])));
            }
        }
        case 0: {
            var var_1 = vec3<bool>(false == global4.a, global4.a | (abs(global1[_wgslsmith_index_u32(~u_input.b, 16u)]) <= 0u), global4.a);
        }
        case -5021: {
            let var_1 = global1[_wgslsmith_index_u32(1u, 16u)];
            switch (u_input.a.x) {
                case 2147483647: {
                    global4 = Struct_5(false);
                    let var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u & ~6071u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 1u), 16u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(44248u, 16u)], 0u))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], u_input.b)), 16u)]), 4u)]);
                    let var_3 = abs(-abs(-vec2<i32>(u_input.a.x, -14605)) << (max(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(global1[_wgslsmith_index_u32(67451u, 16u)], u_input.b)), func_6(vec3<bool>(false, var_0.x, var_0.x)).yz), ~(~vec2<u32>(0u, 1u))) % vec2<u32>(32u)));
                }
                case 1472: {
                    let var_2 = vec3<bool>(global4.a, 14704u > ~global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48216u, 16u)], 16u)]), 16u)], all(!global0[_wgslsmith_index_u32(max(~43003u, _wgslsmith_sub_u32(115829u, 4294967295u)), 16u)]));
                    var_0 = select(var_2.xx, var_2.zy, vec2<bool>(all(!select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55955u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], var_0.x)), !(!(!false))));
                }
                case 0: {
                    let var_2 = !select(select(select(!vec3<bool>(true, false, true), vec3<bool>(true, true, var_0.x), global4.a != global4.a), vec3<bool>(all(global0[_wgslsmith_index_u32(1u, 16u)]), 0 >= u_input.a.x, true), global4.a), !select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), global4.a), !(!(!global4.a)));
                    var var_3 = func_6(!vec3<bool>(var_2.x, !true, any(var_2))).zwz;
                    let var_4 = u_input.a.zz << (~(var_3.yy ^ countOneBits(vec2<u32>(u_input.b, u_input.b) >> (var_3.zx % vec2<u32>(32u)))) % vec2<u32>(32u));
                }
                default: {
                    global4 = Struct_5(all(select(select(func_4(), vec2<bool>(var_0.x, var_0.x), !vec2<bool>(false, false)), select(select(vec2<bool>(true, var_0.x), vec2<bool>(global4.a, global4.a), true), !vec2<bool>(true, global4.a), false), func_4())));
                }
            }
            switch (_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647, u_input.a.x), vec2<i32>(u_input.a.x, -21101), !true) >> (~select(vec2<u32>(67147u, u_input.b), vec2<u32>(58670u, 1u), vec2<bool>(global4.a, false)) % vec2<u32>(32u)), ~firstTrailingBit(abs(vec2<i32>(u_input.a.x, u_input.a.x)))))) {
                case 2147483647: {
                    global3 = array<vec3<i32>, 13>();
                }
                case -2147483648: {
                    global3 = array<vec3<i32>, 13>();
                }
                case 36110: {
                    global2 = array<Struct_1, 4>();
                }
                default: {
                    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(28569u, ~(~u_input.b) & 36402u, 4294967295u >> (34955u % 32u), 5563u), select(abs(~(~vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(13305u, 16u)], 22053u, 4294967295u))), vec4<u32>(func_6(select(vec3<bool>(false, global4.a, global4.a), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)).x, 45832u ^ (4294967295u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)]), ~86882u, 1u), any(vec4<bool>(arg_0.a == arg_0.a, true && false, !global4.a, !true))));
                }
            }
            var_0 = !func_4();
        }
        case -1: {
        }
        default: {
            var var_1 = global2[_wgslsmith_index_u32(4294967295u, 4u)];
            let var_2 = Struct_4(_wgslsmith_f_op_f32(min(210.0, arg_0.a)));
            var var_3 = max(abs(firstTrailingBit(vec3<u32>(4294967295u, 56365u, u_input.b))) | ~(~vec3<u32>(global1[_wgslsmith_index_u32(var_1.b, 16u)], 49463u, 4294967295u)), _wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(48043u, 20697u, 24143u), vec3<u32>(6437u, var_1.b, 48431u), vec3<u32>(u_input.b, var_1.b, 14900u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(88351u, 1u, 47566u), ~vec3<u32>(global1[_wgslsmith_index_u32(var_1.b, 16u)], global1[_wgslsmith_index_u32(var_1.b, 16u)], 1u)))) >> (vec3<u32>(8969u, 0u, 110800u ^ u_input.b) % vec3<u32>(32u));
            let var_4 = arg_0;
        }
    }
    let var_1 = -abs(u_input.a);
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        break;
    }
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~1u), u_input.b), 13u)];
    return firstLeadingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31185u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(17550u, 16u)], 25297u)), 16u)], 16u)], 16u)]) >= abs(global1[_wgslsmith_index_u32(~firstTrailingBit(~u_input.b), 16u)]);
}

fn func_7(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = Struct_4(412.0);
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    global0 = array<vec4<bool>, 16>();
    switch (19884) {
        case -1: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var var_1 = Struct_5(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, 51924u), 16u)], _wgslsmith_clamp_u32(firstLeadingBit(9249u), global1[_wgslsmith_index_u32(0u, 16u)], arg_3.b.x >> (25619u % 32u))) >= ~(~7663u << (0u % 32u)));
                var var_2 = global4.a;
            }
            var var_1 = ~(~min(vec4<u32>(15517u, global1[_wgslsmith_index_u32(1u, 16u)], u_input.b, global1[_wgslsmith_index_u32(1u, 16u)]) >> (vec4<u32>(28915u, u_input.b, 24970u, u_input.b) % vec4<u32>(32u)), vec4<u32>(5804u, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(1u, 1u, 1u, global1[_wgslsmith_index_u32(88147u, 16u)])) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(global1[_wgslsmith_index_u32(3552u, 16u)], global1[_wgslsmith_index_u32(2341u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], 23781u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 0u, arg_3.b.x, u_input.b), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44244u, 16u)], 16u)], u_input.b, 1u, u_input.b))) % vec4<u32>(32u)));
            var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(arg_3.b, ~vec2<u32>(global1[_wgslsmith_index_u32(27228u, 16u)], 40261u)), ~(~(~u_input.b)), ~arg_3.b.x & _wgslsmith_clamp_u32(~4294967295u, 1u >> (1u % 32u), var_1.x), _wgslsmith_clamp_u32(arg_3.b.x, global1[_wgslsmith_index_u32(1u, 16u)], u_input.b)) | abs(vec4<u32>(arg_3.b.x, u_input.b, 209u, 0u));
            var var_3 = select(firstLeadingBit(max(vec4<i32>(0, 13034, -27191, 4590), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483648) & vec4<i32>(u_input.a.x, u_input.a.x, -34004, u_input.a.x))), vec4<i32>(~(-1) << (firstTrailingBit(66236u) % 32u), _wgslsmith_add_i32(-u_input.a.x & _wgslsmith_sub_i32(u_input.a.x, 41951), ~(u_input.a.x << (1u % 32u))), u_input.a.x, u_input.a.x), all(select(!arg_2, arg_2, select(select(arg_2, arg_2, arg_2), arg_2, arg_2))));
        }
        default: {
            switch (0) {
                default: {
                    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~abs(4294967295u << (~1u % 32u)), 4u)]);
                    let var_2 = true;
                }
            }
            var var_1 = max(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 16u)], 1u) & vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 16u)], 1u), abs(vec3<u32>(1u, global1[_wgslsmith_index_u32(arg_3.b.x, 16u)], 0u))) ^ 0u, reverseBits(20147u));
        }
    }
    let var_1 = select(arg_3.b, ~func_6(arg_2).wz, !(!select(vec2<bool>(arg_2.x, false), arg_0, true))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(func_6(vec3<bool>(arg_2.x, false, arg_2.x)).x, ~_wgslsmith_sub_u32(0u, 85607u)), vec2<u32>(4294967295u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(arg_3.b.x, 16u)], 4294967295u, global1[_wgslsmith_index_u32(arg_3.b.x, 16u)]) << (1u % 32u)));
    return vec4<i32>(~(select(2147483647, 0, arg_2.x) >> (50073u % 32u)), -abs(~(-1)) >> (var_1.x % 32u), 2147483647, 2147483647);
}

fn func_8(arg_0: vec4<i32>) -> Struct_3 {
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    switch (0) {
        case 1: {
            switch (firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1) * -u_input.a.xz, vec2<i32>(abs(arg_0.x), u_input.a.x)), arg_0.x))) {
                case 1: {
                }
                case 35494: {
                    global1 = array<u32, 16>();
                    var var_0 = 25523;
                    let var_1 = !select(!func_4(), vec2<bool>(false, false), global4.a);
                }
                default: {
                    global0 = array<vec4<bool>, 16>();
                }
            }
            for (var var_0 = 1; any(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(54561u, 240u, u_input.b, 38850u), vec4<u32>(u_input.b, 25741u, global1[_wgslsmith_index_u32(u_input.b, 16u)], 21442u)), vec4<u32>(u_input.b, 56504u, 11660u, u_input.b)), 45459u), 16u)]); var_0 -= 1) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_1 = select(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, 5313u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~u_input.b, 16u)], 16u)], 16u)] ^ min(1u, 65319u)), _wgslsmith_mod_vec2_u32(~select(vec2<u32>(17556u, u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(16255u, 36151u), vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(14470u, 16u)])), vec2<bool>(global4.a, true)), ~func_6(!vec3<bool>(global4.a, true, global4.a)).wx), ~(~global1[_wgslsmith_index_u32(93375u, 16u)]) == 4294967295u);
                continue;
            }
        }
        default: {
            if (any(vec4<bool>(func_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(269.0, -585.0, -1000.0))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1164.0, -1553.0, 525.0)), abs(vec2<u32>(4294967295u, 60683u))), true, _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b))), global4.a, all(func_4()), func_3(Struct_4(_wgslsmith_f_op_f32(floor(549.0))))))) {
                var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505.0));
                var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, min(4294967295u, 0u)), 16u)];
                let var_2 = global4.a;
            }
            var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-347.0, 1000.0, -1000.0) + vec3<f32>(1633.0, -863.0, -909.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-874.0, 1625.0, -1116.0) - vec3<f32>(-1403.0, 1000.0, 103.0)), global4.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(401.0, 1254.0, -545.0), vec3<f32>(-454.0, 1037.0, 967.0)))) + vec3<f32>(_wgslsmith_f_op_f32(593.0 - 651.0), _wgslsmith_f_op_f32(329.0 + 130.0), _wgslsmith_f_op_f32(-500.0)))), ~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), _wgslsmith_add_u32(u_input.b, 0u), firstTrailingBit(4294967295u)), ~_wgslsmith_mult_u32(u_input.b, global1[_wgslsmith_index_u32(8769u, 16u)])));
            let var_1 = !(true && true);
        }
    }
    var var_0 = _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(81065u, 16u)], select(~(~u_input.b), ~reverseBits(43955u) ^ global1[_wgslsmith_index_u32(~max(u_input.b, global1[_wgslsmith_index_u32(3837u, 16u)]), 16u)], true));
    switch (firstTrailingBit(-38261)) {
        default: {
            for (var var_1 = -13961; var_1 != 42555; var_1 -= 1) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            }
            var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(28409u, firstLeadingBit(15232u)), 4u)];
            let var_2 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(881.0, -330.0, 938.0), vec3<f32>(-957.0, 230.0, 831.0))), _wgslsmith_div_vec3_f32(vec3<f32>(-737.0, 912.0, 1196.0), vec3<f32>(-635.0, -920.0, -473.0))))), Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(629.0, -1000.0, 1014.0))))), _wgslsmith_div_vec2_u32(~select(vec2<u32>(29066u, 57607u), vec2<u32>(4294967295u, 54923u), vec2<bool>(global4.a, global4.a)), ~(vec2<u32>(78143u, 4294967295u) << (vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(68346u, 16u)]) % vec2<u32>(32u))))), !(var_1.a == _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, var_1.c.x), _wgslsmith_mult_vec2_i32(arg_0.zy, arg_0.yz))), ~vec3<u32>(_wgslsmith_mult_u32(reverseBits(u_input.b), firstLeadingBit(14339u)), _wgslsmith_sub_u32(~1u, countOneBits(16899u)), ~_wgslsmith_mod_u32(67829u, 25930u)));
            global4 = Struct_5(true);
        }
    }
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(3118.0))) - 123.0), _wgslsmith_f_op_f32(1000.0 - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1106.0, 2203.0) + _wgslsmith_f_op_f32(1000.0 + 639.0))), -230.0), select(vec2<u32>(func_6(vec3<bool>(true, false, false)).x << (~global1[_wgslsmith_index_u32(1u, 16u)] % 32u), 1u), firstLeadingBit(firstLeadingBit(vec2<u32>(1u, 21521u) & vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(42899u, 16u)]))), select(vec2<bool>(false, !global4.a), !vec2<bool>(true, true), global4.a)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> vec4<u32> {
    for (var var_0 = -1; var_0 != -1; var_0 += 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var var_1 = func_8(func_7(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -454.0)) - 253.0), vec3<bool>(arg_2.x, true, !func_3(Struct_4(-892.0))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(123.0, -1000.0, 635.0), vec3<f32>(-761.0, 658.0, 1623.0)))), ~vec2<u32>(arg_0.a.b, 0u))));
        var var_2 = 1u;
    }
    for (var var_0 = -18307; ; var_0 -= 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        if (global4.a) {
            global3 = array<vec3<i32>, 13>();
            continue;
        }
        break;
    }
    var var_0 = Struct_4(1349.0);
    switch ((~(~0 | countOneBits(-16187)) & firstLeadingBit(firstLeadingBit(9191))) ^ u_input.a.x) {
        case 2147483647: {
            for (var var_1 = 23931; var_1 >= 2147483647; var_1 = ~0) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_2 = Struct_2(arg_0.a);
                continue;
            }
        }
        case -32200: {
            var var_1 = Struct_5(arg_2.x);
            global3 = array<vec3<i32>, 13>();
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            }
        }
        default: {
            global4 = Struct_5(false);
            let var_1 = select(~(-vec2<i32>(~37433, -4653)), ~vec2<i32>(i32(-1) * -u_input.a.x, _wgslsmith_sub_i32(-94820, _wgslsmith_mult_i32(57211, 0))), !arg_2.x);
            var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052.0 - var_0.a))) * -503.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -212.0)));
        }
    }
    loop {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
    }
    return vec4<u32>(~(~(~arg_1)), ~(firstTrailingBit(4294967295u) >> (func_8(vec4<i32>(-81686, 2147483647, u_input.a.x, 3044)).b.x % 32u)), _wgslsmith_div_u32((arg_0.a.b >> (arg_1 % 32u)) ^ ~arg_0.a.b, u_input.b), abs(u_input.b)) & ~(~vec4<u32>(_wgslsmith_sub_u32(u_input.b, 13563u), arg_1, ~36595u, arg_0.a.b | global1[_wgslsmith_index_u32(4294967295u, 16u)]));
}

fn func_1(arg_0: Struct_5, arg_1: vec3<i32>) -> Struct_4 {
    if (arg_0.a) {
        var var_0 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(423.0, 1000.0)) + 286.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-445.0) + -824.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-701.0 + 2230.0))))));
        let var_1 = vec4<i32>(~(-2147483648), -2147483648, -_wgslsmith_add_i32(-u_input.a.x, arg_1.x << (4294967295u % 32u)), arg_1.x) >> (func_2(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 4u)]), ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(135u, 16u)] << (20254u % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74365u, 16u)], 16u)] & global1[_wgslsmith_index_u32(67616u, 16u)]), vec2<bool>(global4.a, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(27683u, 30269u), 16u)] <= u_input.b)) % vec4<u32>(32u));
        if (global4.a) {
            let var_2 = vec2<i32>(u_input.a.x, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yx) & _wgslsmith_sub_i32(23851, -1), -var_1.x));
            var var_3 = any(select(!vec3<bool>(all(vec3<bool>(arg_0.a, true, false)), !false, any(global0[_wgslsmith_index_u32(2215u, 16u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)] < global1[_wgslsmith_index_u32(1u, 16u)], false | false, false), vec3<bool>(global4.a || false, all(vec4<bool>(false, true, false, arg_0.a)), -18882 > var_2.x), !global4.a), false));
            let var_4 = Struct_4(_wgslsmith_f_op_f32(-var_0.a));
        }
    }
    let var_0 = arg_1.xz;
    global3 = array<vec3<i32>, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1730.0 - 1307.0) + _wgslsmith_f_op_f32(-1425.0)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-692.0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-470.0))), (i32(-1) * -1) == 60634)), _wgslsmith_f_op_f32(-140.0), 459.0));
    for (var var_2 = -16643; !func_5(var_1.ywx, Struct_3(vec3<f32>(var_1.x, 2390.0, _wgslsmith_div_f32(2256.0, -688.0)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(741u, 16u)]), vec2<u32>(96961u, 64521u))), ~_wgslsmith_div_i32(u_input.a.x, var_0.x) > _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, -2147483648, var_0.x, arg_1.x), vec4<i32>(1, u_input.a.x, u_input.a.x, u_input.a.x)), -vec4<i32>(-29973, var_0.x, -26617, -1)), vec3<u32>(1u >> (4294967295u % 32u), 4294967295u, global1[_wgslsmith_index_u32(1u, 16u)] & global1[_wgslsmith_index_u32(74094u, 16u)])); ) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        continue;
    }
    return Struct_4(_wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = 2147483647; ; var_0 -= 1) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        if (global4.a) {
            let var_1 = all(select(select(!(!vec3<bool>(global4.a, global4.a, global4.a)), !(!vec3<bool>(global4.a, global4.a, false)), any(vec4<bool>(false, global4.a, false, global4.a))), vec3<bool>(true, any(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b), 16u)]), !global4.a), select(!vec3<bool>(global4.a, true, global4.a), vec3<bool>(!global4.a, !global4.a, false), vec3<bool>(global4.a, any(vec2<bool>(global4.a, global4.a)), global4.a))));
            global2 = array<Struct_1, 4>();
            let var_2 = func_1(Struct_5(all(vec2<bool>(!global4.a, var_1))), vec3<i32>(0, i32(-1) * -u_input.a.x, 0));
        }
        var var_1 = _wgslsmith_mod_i32(-4270, -2147483648 << (((u_input.b >> (u_input.b % 32u)) ^ _wgslsmith_add_u32(max(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)]), func_2(Struct_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 4u)]), u_input.b, vec2<bool>(global4.a, global4.a)).x)) % 32u));
        let var_2 = firstLeadingBit(firstTrailingBit(~57179u));
        for (var var_3: i32; ; global3 = array<vec3<i32>, 13>()) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            break;
        }
        if (func_8(max(vec4<i32>(u_input.a.x, min(u_input.a.x, -41491), i32(-1) * -1747, _wgslsmith_mod_i32(-1, u_input.a.x)), func_7(vec2<bool>(true, global4.a), -1545.0, vec3<bool>(true, false, global4.a), Struct_3(vec3<f32>(-794.0, 999.0, 135.0), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(23660u, 16u)]))) & vec4<i32>(2147483647, -32554, u_input.a.x, u_input.a.x))).a.x == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -354.0))) + 1144.0)))) {
            let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(55343, ~(~u_input.a.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(~u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), vec2<i32>(reverseBits(-1), abs(0)) & u_input.a.yx));
            var_0 = var_3.x;
            return;
        }
    }
    global4 = Struct_5(!all(vec3<bool>(global4.a & false, !global4.a, true && true)));
    for (var var_0 = -15805; global4.a || true; var_0 += 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            continue;
        }
        if (any(!vec3<bool>(global4.a, !global4.a, any(vec2<bool>(false, global4.a))))) {
            let var_1 = 32347;
            var var_2 = !(!(!select(!vec3<bool>(false, global4.a, true), vec3<bool>(global4.a, global4.a, global4.a), !global4.a)));
        }
        switch (~1 << (func_8(vec4<i32>(-(~49560), 479, (7176 << (15661u % 32u)) | countOneBits(u_input.a.x), abs(_wgslsmith_mod_i32(u_input.a.x, 1)))).b.x % 32u)) {
            default: {
                break;
            }
        }
        return;
    }
    let var_0 = -14283;
    if (true) {
        let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.zz), u_input.a.x);
        switch ((~111749 << (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], _wgslsmith_sub_u32(1u, ~u_input.b)) % 32u)) << (_wgslsmith_dot_vec3_u32(reverseBits(func_6(select(vec3<bool>(global4.a, global4.a, false), vec3<bool>(global4.a, global4.a, true), false)).xzy), vec3<u32>(4294967295u, ~u_input.b, ~(~4294967295u))) % 32u)) {
            case 5317: {
            }
            case -2147483648: {
                var var_2 = abs(global3[_wgslsmith_index_u32(5937u, 13u)]);
                var var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(func_1(Struct_5(4294967295u != u_input.b), vec3<i32>(1535, -7236, 5433 | u_input.a.x)).a, 1781.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1430.0, _wgslsmith_f_op_f32(floor(-1534.0)), global4.a || global4.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2409.0))))), _wgslsmith_div_vec4_f32(vec4<f32>(1637.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000.0 * 1040.0), _wgslsmith_f_op_f32(1130.0 * 841.0))), 145.0, func_1(Struct_5(true), vec3<i32>(var_0, u_input.a.x, 2147483647)).a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-430.0, 1584.0, 223.0, -1364.0) - vec4<f32>(-899.0, 726.0, 1000.0, -671.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-410.0, 120.0, 326.0, -1176.0) - vec4<f32>(3520.0, 154.0, -177.0, 1000.0))))))));
                let var_4 = func_1(Struct_5(!true), ~global3[_wgslsmith_index_u32(firstLeadingBit(~abs(48062u)), 13u)]);
            }
            default: {
                var var_2 = !vec3<bool>(true, (0 & var_1.x) > -5867, !(!global4.a));
                var var_3 = Struct_2(Struct_1(-(var_1.x | (var_1.x | var_0)), min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)] ^ global1[_wgslsmith_index_u32(50475u, 16u)], 16u)], u_input.b) << (select(u_input.b & global1[_wgslsmith_index_u32(59588u, 16u)], ~global1[_wgslsmith_index_u32(4294967295u, 16u)], false) % 32u), var_1));
                let var_4 = !(!select(!select(vec3<bool>(var_2.x, true, false), vec3<bool>(global4.a, var_2.x, true), true), select(!vec3<bool>(var_2.x, var_2.x, global4.a), select(vec3<bool>(global4.a, false, global4.a), vec3<bool>(var_2.x, true, global4.a), vec3<bool>(var_2.x, false, false)), !var_2.x), !var_2.x));
                let var_5 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(max(2147483647, 0), -var_0), _wgslsmith_mult_vec2_i32(vec2<i32>(0, 0), var_1)), _wgslsmith_div_i32(u_input.a.x, -2147483648) ^ _wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.a, 1, 8284, var_1.x), vec4<i32>(var_0, -55927, var_1.x, var_3.a.c.x)) ^ ~u_input.a.x));
            }
        }
    }
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1321.0), _wgslsmith_f_op_f32(371.0 - -903.0)), _wgslsmith_f_op_f32(sign(690.0)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -2408.0, var_1.a, var_1.a), vec4<f32>(var_1.a, var_1.a, 1363.0, var_1.a))))))), ~vec3<i32>(-var_0 ^ 0, i32(-1) * -var_0, -var_0), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-533.0, _wgslsmith_f_op_f32(-1087.0 - var_1.a)), 368.0), var_1.a, var_1.a), _wgslsmith_clamp_u32(~11016u, _wgslsmith_div_u32(~0u, u_input.b), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)]) & ~u_input.b), 7484);
}

