// {"0:0":[249,191,187,151]}
// Seed: 12101766024751567483

struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(63345u, 1u), vec2<u32>(0u, 1u), vec2<u32>(20081u, 11530u), vec2<u32>(9486u, 9480u), vec2<u32>(16420u, 59909u), vec2<u32>(25126u, 4294967295u), vec2<u32>(30560u, 1u), vec2<u32>(0u, 0u), vec2<u32>(90u, 1u), vec2<u32>(20656u, 20071u), vec2<u32>(1u, 29110u));

var<private> global2: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-994.0, -787.0, 980.0), vec3<f32>(483.0, -729.0, 845.0), vec3<f32>(-2177.0, 304.0, -627.0));

var<private> LOOP_COUNTERS: array<u32, 24>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn func_6() -> bool {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    var var_0 = !(!true);
    var var_1 = Struct_3(vec4<u32>(0u >> ((u_input.a ^ ~u_input.a) % 32u), abs(0u), global0.x, 0u));
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
    }
    if (!(!(!(!true || (-1152.0 >= 837.0))))) {
        var_1 = Struct_3(min(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global0.x, global0.x, 4294967295u, 111211u), ~var_1.a), vec4<u32>(~42689u, var_1.a.x ^ 23691u, ~1u, min(global0.x, 0u))), abs(var_1.a)));
        if (-583.0 != -880.0) {
            global1 = array<vec2<u32>, 11>();
            var var_2 = u_input.a;
            global1 = array<vec2<u32>, 11>();
        }
        if (any(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), false), any(!vec2<bool>(true, true))), vec2<bool>(false, !(!true)), select(!vec2<bool>(false, true), !vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))))))) {
            global0 = (~_wgslsmith_div_vec4_u32(vec4<u32>(39060u, u_input.a, 8661u, 0u), abs(var_1.a)) & var_1.a) << (vec4<u32>(u_input.a & ~(~0u), _wgslsmith_sub_u32(var_1.a.x << (global0.x % 32u), u_input.a) & 0u, ~11665u, ~93146u) % vec4<u32>(32u));
            global2 = array<vec3<f32>, 3>();
            return true;
        }
        switch (~(-(_wgslsmith_sub_i32(-39072, 0) << (global0.x % 32u)))) {
            case 0: {
                let var_2 = vec4<u32>(((abs(2517u) & min(global0.x, global0.x)) & abs(101443u)) ^ firstTrailingBit(abs(4294967295u) | (var_1.a.x ^ global0.x)), u_input.a, _wgslsmith_dot_vec2_u32(~min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.a.xxz, vec3<u32>(u_input.a, 0u, 0u)), 11u)], ~global0.wx), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(6155u, 0u), var_1.a.x << (0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), global0.wxy) >> (var_1.a.x % 32u))), (0u & ~(~var_1.a.x)) & (107354u | 1u));
                global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~var_1.a.x, 0u, firstLeadingBit(abs(~1u)), 23598u), vec4<u32>(~(~(~var_2.x)), 1u, select(max(countOneBits(4294967295u), 1u), (0u << (4294967295u % 32u)) ^ ~global0.x, any(vec2<bool>(false, false)) == select(false, false, true)), countOneBits(69530u)), vec4<u32>(_wgslsmith_sub_u32(var_2.x, var_2.x), var_2.x, var_2.x, ~(~_wgslsmith_mod_u32(2314u, 4294967295u))));
                let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000.0, -1334.0, 1000.0, 922.0) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-475.0, 1881.0, 778.0, 413.0), vec4<f32>(1301.0, 978.0, -1583.0, 1000.0)))))))));
                let var_4 = reverseBits(_wgslsmith_clamp_i32(-12011, 2147483647 ^ ~4066, firstTrailingBit(0))) == 1;
            }
            case 38465: {
                var_1 = Struct_3(min(~firstTrailingBit(_wgslsmith_add_vec4_u32(var_1.a, var_1.a)), min(~vec4<u32>(var_1.a.x, u_input.a, u_input.a, global0.x), vec4<u32>(33729u, u_input.a, 74472u, u_input.a)) >> (~var_1.a % vec4<u32>(32u))));
                global0 = firstLeadingBit(firstTrailingBit(vec4<u32>(var_1.a.x, u_input.a, _wgslsmith_mult_u32(52105u, u_input.a), _wgslsmith_mod_u32(0u, ~var_1.a.x))));
                let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -881.0)), vec3<bool>(!true, false, (true || true) | !false)), (4294967295u << (~u_input.a % 32u)) << (5854u % 32u));
            }
            case 1: {
                let var_2 = global1[_wgslsmith_index_u32(global0.x, 11u)];
                let var_3 = 67995u;
                let var_4 = u_input.a;
                var var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -1734.0))) * _wgslsmith_f_op_f32(f32(-1.0) * -831.0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2056.0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-310.0, 1540.0)))))));
                var var_6 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497.0 * -225.0) - _wgslsmith_f_op_f32(f32(-1.0) * -571.0))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 38611u, 1u, 0u), vec4<u32>(var_4 ^ var_3, global0.x, _wgslsmith_add_u32(var_2.x, 1u), var_4 ^ 26003u)) >> (~(~var_3) % 32u));
            }
            case -36461: {
                let var_2 = 24619u;
            }
            default: {
            }
        }
    }
    return all(!vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), !(!true), false));
}

fn func_5() -> Struct_1 {
    global0 = vec4<u32>(~reverseBits(~global0.x), 45196u, ~57657u | (firstTrailingBit(u_input.a) & global0.x), global0.x);
    global1 = array<vec2<u32>, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-155.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) - _wgslsmith_f_op_f32(f32(-1.0) * -428.0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1204.0, 946.0, true))))), !select(select(!vec3<bool>(false, false, true), vec3<bool>(true, false, true), !true), vec3<bool>(true, 0 != -46371, func_6()), any(vec2<bool>(false, true)) | !true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1625.0) + _wgslsmith_f_op_f32(-1280.0)) + _wgslsmith_f_op_f32(ceil(var_0.a)))) - var_0.a);
    var var_2 = var_0.b;
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a)))))), var_0.b);
}

fn func_7(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = select(arg_2.b, !arg_2.b, _wgslsmith_f_op_f32(-1031.0 + arg_2.a) < _wgslsmith_f_op_f32(abs(arg_2.a)));
    global0 = ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(7140u, 29531u, 1u, global0.x)) ^ firstLeadingBit(vec4<u32>(0u, 28906u, global0.x, u_input.a)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, arg_0), vec4<u32>(arg_0, u_input.a, 34803u, 110032u))));
    for (var var_1 = -10414; arg_3.x; global0 = ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 1685u, u_input.a, 69583u), vec4<u32>(14662u, u_input.a, 1u, u_input.a))) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(66938u, 39633u, 88757u, 17858u), vec4<u32>(23985u, arg_0, arg_0, 4294967295u)), arg_0, 0u, 464u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 45199u, arg_0), firstLeadingBit(vec4<u32>(global0.x, arg_0, u_input.a, 1u))) ^ reverseBits(reverseBits(vec4<u32>(arg_0, 4294967295u, global0.x, global0.x))))) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            var var_2 = Struct_1(326.0, !func_5().b);
            let var_3 = Struct_2(_wgslsmith_mod_vec2_u32(~(~(vec2<u32>(0u, arg_0) >> (vec2<u32>(39925u, 0u) % vec2<u32>(32u)))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(113320u, 0u), vec2<u32>(41535u, 0u), global0.wz) >> (global0.xz % vec2<u32>(32u))), ~(~_wgslsmith_clamp_u32(0u, u_input.a, ~arg_0)), arg_2);
            continue;
        }
        switch (-_wgslsmith_add_i32(_wgslsmith_add_i32(1, 2147483647) >> (_wgslsmith_clamp_u32(0u, 8114u, 1u) % 32u), _wgslsmith_sub_i32(-55637, -47251) | _wgslsmith_div_i32(0, -27606)) ^ _wgslsmith_mod_i32(-1, _wgslsmith_sub_i32(-2147483647, _wgslsmith_mult_i32(-63970, 1)) ^ countOneBits(_wgslsmith_div_i32(33392, 1)))) {
            case 13998: {
                var_0 = vec3<bool>(~reverseBits(14420u << (36383u % 32u)) == u_input.a, (var_0.x & arg_3.x) & (_wgslsmith_mod_i32(1, _wgslsmith_mult_i32(-3766, 1)) <= firstTrailingBit(1 | -1)), arg_3.x);
                let var_2 = _wgslsmith_div_vec4_u32(select(vec4<u32>(~global0.x & _wgslsmith_mult_u32(u_input.a, 12795u), 45950u, u_input.a, 4294967295u), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, 63569u, 4294967295u, 29614u), min(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, global0.x, global0.x, 4294967295u))), !(~u_input.a >= firstTrailingBit(u_input.a))), vec4<u32>(u_input.a, ~63212u, min(~(u_input.a >> (40989u % 32u)), arg_0 << (firstTrailingBit(9726u) % 32u)), abs(~(~arg_0))));
                break;
            }
            case 2147483647: {
                break;
            }
            case -1: {
                continue;
            }
            default: {
                continue;
            }
        }
        var_0 = !select(select(select(arg_3, vec3<bool>(false, false, false), !arg_2.b), select(vec3<bool>(var_0.x, var_0.x, arg_2.b.x), arg_2.b, !arg_3), !func_5().b), func_5().b, !vec3<bool>(false, !false, true | arg_2.b.x));
        let var_2 = vec4<bool>(select(func_6(), func_5().b.x, func_6()), func_5().b.x, false, (-1 >> ((6771u << (_wgslsmith_div_u32(0u, 1u) % 32u)) % 32u)) > ~_wgslsmith_sub_i32(firstLeadingBit(-14315), 2147483647 << (arg_0 % 32u)));
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        switch (_wgslsmith_mult_i32(~min(_wgslsmith_mult_i32(i32(-1) * -30988, _wgslsmith_mod_i32(1, -2147483648)), ~(-13165)), -34556)) {
            case -2147483648: {
                break;
            }
            case 19434: {
                return Struct_3(countOneBits(~vec4<u32>(~arg_0, 68359u, _wgslsmith_mod_u32(4294967295u, global0.x), ~26706u)));
            }
            default: {
                var var_1 = arg_2.a;
                var var_2 = Struct_3(min((select(vec4<u32>(arg_0, u_input.a, arg_0, 0u), vec4<u32>(31380u, arg_0, 0u, 28236u), vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_1)) << (~vec4<u32>(4294967295u, u_input.a, global0.x, 14016u) % vec4<u32>(32u))) << (~(~vec4<u32>(1u, u_input.a, 44380u, u_input.a)) % vec4<u32>(32u)), ~vec4<u32>(global0.x, ~1u, arg_0, 11816u)));
                let var_3 = Struct_2(vec2<u32>(global0.x ^ _wgslsmith_div_u32(~65427u, _wgslsmith_mod_u32(var_2.a.x, arg_0)), 82208u), _wgslsmith_add_u32(abs(var_2.a.x), _wgslsmith_mod_u32(45690u, 34195u)), arg_2);
                var var_4 = Struct_3(vec4<u32>(~(~(~4294967295u)), global0.x, _wgslsmith_mult_u32(select(0u, 0u, !false), ~_wgslsmith_mult_u32(1u, 29030u)), _wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(65475u, var_2.a.x, var_3.a.x, var_3.a.x) ^ vec4<u32>(arg_0, 4294967295u, 31569u, arg_0)) & 13869u));
            }
        }
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            var var_1 = func_5();
            global2 = array<vec3<f32>, 3>();
            var_1 = arg_2;
            let var_2 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(u_input.a, 11u)] << (~(vec2<u32>(18086u, 0u) ^ global1[_wgslsmith_index_u32(global0.x, 11u)]) % vec2<u32>(32u)), ~vec2<u32>(countOneBits(u_input.a), u_input.a)), 11u)], arg_0, Struct_1(_wgslsmith_f_op_f32(-1165.0 - 383.0), arg_2.b));
        }
        global0 = firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(~50851u, u_input.a), 15369u, min(~global0.x, select(4294967295u, global0.x, var_0.x)), _wgslsmith_clamp_u32(arg_0 << (1u % 32u), arg_0 << (arg_0 % 32u), ~arg_0))) >> (~(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 35371u, 2783u), vec4<u32>(global0.x, 4294967295u, 1u, 1u))) ^ countOneBits(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 13165u) << (vec4<u32>(1u, arg_0, 82912u, 19577u) % vec4<u32>(32u)))) % vec4<u32>(32u));
        switch (45795) {
            case 2147483647: {
                continue;
            }
            case 42032: {
                let var_1 = arg_2;
                return Struct_3(~vec4<u32>(~u_input.a, firstLeadingBit(29282u), abs(~u_input.a), global0.x));
            }
            case 40072: {
                break;
            }
            case -43740: {
                var var_1 = Struct_4(arg_2, 4294967295u);
                break;
            }
            default: {
                let var_1 = 0;
                global0 = _wgslsmith_mod_vec4_u32(min(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 71540u, global0.x, u_input.a), firstLeadingBit(vec4<u32>(u_input.a, arg_0, 89332u, global0.x)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, u_input.a), vec4<u32>(global0.x, 4294967295u, 31223u, 45463u))), vec4<u32>(4294967295u, u_input.a >> (global0.x % 32u), 4294967295u, 42389u))), vec4<u32>(abs(arg_0 | 264u) & u_input.a, ~27830u << (arg_0 % 32u), 0u, 4294967295u));
                break;
            }
        }
    }
    return Struct_3(firstLeadingBit(~vec4<u32>(_wgslsmith_sub_u32(52727u, 4294967295u), _wgslsmith_clamp_u32(global0.x, 4294967295u, 62215u), global0.x, _wgslsmith_mod_u32(4294967295u, global0.x))));
}

fn func_8(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-1499.0) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(763.0)))))), !(!(!false)), !(_wgslsmith_dot_vec4_u32(max(arg_2.a, vec4<u32>(0u, 94827u, global0.x, arg_2.a.x)), arg_2.a) >= select(_wgslsmith_clamp_u32(u_input.a, 4294967295u, global0.x), global0.x, true)));
        global1 = array<vec2<u32>, 11>();
        if (!var_0.x) {
            global2 = array<vec3<f32>, 3>();
            var_0 = !vec3<bool>(((18211u == global0.x) & !var_0.x) & !(!var_0.x), false, all(!(!vec4<bool>(var_0.x, false, var_0.x, true))));
        }
        let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-289.0)))) * _wgslsmith_f_op_f32(-294.0)), _wgslsmith_f_op_f32(f32(-1.0) * -120.0), 883.0);
    }
    if (all(!select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true)), select(!vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), !false)))) {
        let var_0 = all(vec2<bool>(~select(global0.x, 84117u, false) <= _wgslsmith_mult_u32(min(global0.x, 12636u), _wgslsmith_add_u32(21727u, u_input.a)), ~arg_0.x > max(38725 >> (98940u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-16413, arg_0.x, arg_1.x), vec3<i32>(19697, arg_1.x, -2147483648)))));
        var var_1 = global0.x;
        var var_2 = Struct_4(func_5(), ~47244u);
    }
    switch (arg_0.x) {
        default: {
        }
    }
    var var_0 = any(select(select(!vec3<bool>(true, true, false), !(!vec3<bool>(false, true, true)), !(!false)), !vec3<bool>(select(true, true, true), func_6(), func_6()), !false));
    for (var var_1 = -24241; var_1 == 0; var_1 += 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_2 = Struct_3(arg_2.a);
        var var_3 = all(select(!(!vec4<bool>(false, true, false, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(!false, false, any(vec3<bool>(false, false, false)), true | true)), true));
    }
    return Struct_1(1828.0, !select(vec3<bool>(!true, true, 868.0 > 734.0), !vec3<bool>(true, false, false), !(global0.x != global0.x)));
}

fn func_9(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> vec4<u32> {
    for (var var_0 = 2425; var_0 == -2147483648; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        let var_1 = global1[_wgslsmith_index_u32(~0u, 11u)];
    }
    switch (arg_1) {
        case 55293: {
        }
        default: {
            var var_0 = 234.0;
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_1 = Struct_3(~_wgslsmith_mod_vec4_u32(vec4<u32>(max(76704u, 0u), _wgslsmith_mod_u32(4294967295u, arg_2.b), u_input.a, 0u & 0u), max(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, 75430u), vec4<u32>(50165u, 1u, arg_2.b, 68473u)), vec4<u32>(29042u, global0.x, 1u, 0u) >> (vec4<u32>(1u, u_input.a, 1u, global0.x) % vec4<u32>(32u)))));
                let var_2 = -2147483647;
            }
            global0 = vec4<u32>(_wgslsmith_dot_vec3_u32(global0.xxx, abs(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 24548u, arg_0.b), vec3<u32>(141021u, global0.x, 61269u)), max(vec3<u32>(arg_0.b, 4157u, arg_2.b), vec3<u32>(arg_0.b, 27566u, u_input.a))))), _wgslsmith_mult_u32(~51579u, 48858u), _wgslsmith_add_u32(func_7(~arg_2.b & arg_2.b, arg_2.a.b.x, func_5(), func_5().b).a.x, 12710u >> (59363u % 32u)), arg_2.b);
            let var_1 = 2147483647;
            if (!all(func_5().b)) {
                let var_2 = vec2<bool>(false, all(!select(select(vec4<bool>(false, arg_0.a.b.x, false, arg_0.a.b.x), vec4<bool>(arg_2.a.b.x, true, arg_0.a.b.x, arg_0.a.b.x), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, true)), !vec4<bool>(false, arg_0.a.b.x, arg_2.a.b.x, arg_2.a.b.x), !true)));
                var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(116.0))))));
                var var_3 = select(func_7(global0.x, false, arg_0.a, vec3<bool>(arg_0.a.b.x, !(!var_2.x), !(!var_2.x))).a.ywy, vec3<u32>(~0u, reverseBits(u_input.a), ~_wgslsmith_mult_u32(~4294967295u, 86684u)), arg_0.a.b);
                var_3 = abs(vec3<u32>(~reverseBits(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(global0.x, 11u)], vec2<u32>(1u, 1u))) << (global0.x % 32u), 69069u));
                var_3 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(~arg_0.b << (global0.x % 32u), ~68598u << ((51998u ^ u_input.a) % 32u), arg_2.b), global0.yyz, var_2.x), firstLeadingBit(select(global0.zww, global0.xzz, func_6()) >> (firstLeadingBit(vec3<u32>(u_input.a, arg_0.b, 30346u) | vec3<u32>(var_3.x, arg_2.b, var_3.x)) % vec3<u32>(32u))));
            }
        }
    }
    var var_0 = arg_1;
    let var_1 = countOneBits(_wgslsmith_sub_vec3_u32(global0.xzy, vec3<u32>(arg_0.b, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 19623u), ~23659u), 78069u)));
    var var_2 = _wgslsmith_clamp_i32(-38218, -arg_1, _wgslsmith_sub_i32(arg_1, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1, -47568)), ~vec2<i32>(arg_1, 1))));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, _wgslsmith_mult_u32(arg_2.b, arg_2.b), ~_wgslsmith_mult_u32(1u, 86071u), arg_0.b), firstLeadingBit(vec4<u32>(72663u, ~global0.x, firstTrailingBit(var_1.x), 21570u))), ~abs(select(~vec4<u32>(global0.x, u_input.a, 4294967295u, 24911u), vec4<u32>(arg_0.b, 4294967295u, var_1.x, u_input.a) ^ vec4<u32>(19346u, u_input.a, arg_0.b, arg_2.b), select(vec4<bool>(arg_0.a.b.x, arg_2.a.b.x, arg_2.a.b.x, false), vec4<bool>(arg_2.a.b.x, false, true, arg_2.a.b.x), arg_2.a.b.x))));
}

fn func_4() -> Struct_4 {
    for (var var_0 = 42115; ; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
    }
    var var_0 = func_9(Struct_4(Struct_1(2561.0, vec3<bool>(!false, !false, all(vec4<bool>(true, true, false, false)))), 1300u), 1, Struct_4(func_8(vec2<i32>(110116, 15245) >> (global0.zz % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(~vec2<i32>(7061, -1), ~vec2<i32>(-2147483648, 61120)), func_7(~0u, false, func_5(), vec3<bool>(false, true, false))), ~global0.x));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        continue;
    }
    var var_1 = 16676;
    global2 = array<vec3<f32>, 3>();
    return Struct_4(Struct_1(-886.0, !vec3<bool>(all(vec3<bool>(true, false, false)), !true, false != true)), _wgslsmith_sub_u32(~abs(38658u), ~_wgslsmith_mod_u32(var_0.x, u_input.a)));
}

fn func_10(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_1.a.b.zy;
    let var_1 = func_4();
    for (var var_2 = -1; ; var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(min(-vec2<i32>(-22654, 1), vec2<i32>(2147483647, 23854)), _wgslsmith_sub_vec2_i32(vec2<i32>(6166, -58362) & vec2<i32>(1, -19406), min(vec2<i32>(-2147483648, -2147483648), vec2<i32>(-57862, -43016))), var_1.a.b.x), -firstLeadingBit(vec2<i32>(1, 44223) >> (global1[_wgslsmith_index_u32(global0.x, 11u)] % vec2<u32>(32u)))), ~reverseBits(-vec2<i32>(-1, -2147483648)))) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        var var_3 = func_9(func_4(), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1) * -vec2<i32>(-48014, 11069), vec2<i32>(-20970, ~0), arg_2.b.yy), -firstLeadingBit(vec2<i32>(1, -1) ^ vec2<i32>(1982, 18621))), var_1).x;
        let var_4 = ~_wgslsmith_mult_u32(17136u, global0.x);
    }
    global2 = array<vec3<f32>, 3>();
    global0 = vec4<u32>(1u ^ _wgslsmith_sub_u32(reverseBits(~4294967295u), func_4().b), max(~(~(u_input.a | 4294967295u)), ~((global0.x << (4294967295u % 32u)) | ~var_1.b)), u_input.a, var_1.b);
    return Struct_2(~(~global0.zx) | select(min(global0.zy, _wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], vec2<u32>(var_1.b, var_1.b))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global0.yz, vec2<u32>(1u, 13668u)), global0.wx, vec2<u32>(global0.x, var_1.b)), arg_1.a.b.zx), firstTrailingBit(4294967295u) << (~global0.x % 32u), var_1.a);
}

fn func_3(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1000.0)), _wgslsmith_div_f32(835.0, _wgslsmith_f_op_f32(trunc(-1000.0)))));
    switch (_wgslsmith_sub_i32(_wgslsmith_add_i32(-35511, 0 & ~2147483647), 1 & -_wgslsmith_mod_i32(-2147483648, -21185)) & reverseBits(-2147483648)) {
        case 2147483647: {
            var var_1 = ~max(-51, i32(-1) * -_wgslsmith_add_i32(-52464, -8210));
            if (all(!(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))))) {
                global2 = array<vec3<f32>, 3>();
                global1 = array<vec2<u32>, 11>();
                let var_2 = ~global0.x;
            }
            for (var var_2 = -2147483648; var_2 >= 57414; var_2 += 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            }
            var var_2 = _wgslsmith_sub_i32(firstLeadingBit(19521 ^ -5944), max(1, -51988));
        }
        default: {
            for (var var_1: i32; ; var_1 += 1) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                let var_2 = !vec4<bool>(arg_0.x, arg_0.x, _wgslsmith_mult_i32(2147483647, -2147483648 ^ 2147483647) >= -2147483648, !false);
                global1 = array<vec2<u32>, 11>();
            }
        }
    }
    var var_1 = all(arg_0);
    var var_2 = Struct_3(~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(38848u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, global0.x, u_input.a)), vec4<u32>(global0.x, 4294967295u, global0.x, global0.x) >> (vec4<u32>(2190u, 33188u, 47643u, 1u) % vec4<u32>(32u)), vec4<u32>(global0.x, u_input.a, 1u, u_input.a))));
    let var_3 = func_10(Struct_1(_wgslsmith_f_op_f32(var_0.x * var_0.x), vec3<bool>(any(!vec4<bool>(false, false, false, true)), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true)), func_4(), Struct_1(func_4().a.a, vec3<bool>(u_input.a <= global0.x, true, func_4().a.b.x)));
    return var_3;
}

fn func_11(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> bool {
    switch (11646) {
        default: {
            global0 = vec4<u32>(global0.x, _wgslsmith_mod_u32(0u, u_input.a), ~40393u, ~25836u);
            let var_0 = !select(!vec4<bool>(!true, !false, -646.0 > 1000.0, !false), select(select(!vec4<bool>(arg_1, arg_1, arg_2, arg_0.c.b.x), !vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_2, arg_2, arg_1, true)), vec4<bool>(func_10(arg_0.c, Struct_4(Struct_1(arg_0.c.a, arg_0.c.b), 4294967295u), arg_0.c).c.b.x, true, true, arg_2), !vec4<bool>(arg_0.c.b.x, arg_2, false, arg_0.c.b.x)), !select(vec4<bool>(arg_0.c.b.x, arg_1, arg_2, arg_0.c.b.x), vec4<bool>(arg_2, false, false, arg_1), vec4<bool>(true, true, false, true)));
            var var_1 = 1u;
        }
    }
    for (var var_0 = 0; ; var_0 -= 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        let var_1 = func_7(global0.x, arg_0.c.b.x, func_5(), func_8((vec2<i32>(3482, -13488) << (arg_0.a % vec2<u32>(32u))) >> (~global0.ww % vec2<u32>(32u)), ~(-vec2<i32>(1, 2147483647)), func_7(0u, arg_2, arg_0.c, vec3<bool>(!arg_1, false, all(vec2<bool>(arg_2, false))))).b);
        let var_2 = _wgslsmith_f_op_f32(step(func_8(reverseBits(select(~vec2<i32>(-28246, 0), vec2<i32>(-37241, -1), vec2<bool>(arg_2, arg_2))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0, 2147483647, -1) & vec3<i32>(-2147483648, 1, -2147483648), vec3<i32>(43121, 0, -1)), (-2147483648 >> (1u % 32u)) & (i32(-1) * -4144)), func_7(5908u, !true, Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -746.0), func_8(vec2<i32>(-40509, -22228), vec2<i32>(43966, 12329), var_1).b), func_3(!arg_0.c.b).c.b)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) * func_4().a.a)));
    }
    global2 = array<vec3<f32>, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(783.0, 605.0), vec2<f32>(-1076.0, -321.0)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(859.0, 1176.0)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(-194.0)), func_8(vec2<i32>(39175, 2147483647), vec2<i32>(-1, -35069), Struct_3(vec4<u32>(global0.x, u_input.a, arg_0.b, global0.x))).a))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-294.0 - arg_0.c.a), _wgslsmith_f_op_f32(-arg_0.c.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.a, arg_0.c.a), vec2<f32>(718.0, -518.0), func_10(arg_0.c, Struct_4(Struct_1(arg_0.c.a, arg_0.c.b), arg_0.b), Struct_1(2690.0, arg_0.c.b)).c.b.yy)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.a, arg_0.c.a) + vec2<f32>(-1000.0, arg_0.c.a))))), !arg_2)));
    global0 = ~(~firstLeadingBit(~vec4<u32>(arg_0.b, 4294967295u, 23303u, u_input.a)));
    return !func_3(!(!select(arg_0.c.b, vec3<bool>(true, true, arg_1), true))).c.b.x;
}

fn func_12(arg_0: vec2<bool>) -> Struct_3 {
    if (false) {
    }
    global1 = array<vec2<u32>, 11>();
    var var_0 = vec4<u32>(func_4().b, u_input.a | ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 33497u), global1[_wgslsmith_index_u32(global0.x, 11u)]), _wgslsmith_div_u32(u_input.a, u_input.a)), ~u_input.a, _wgslsmith_mult_u32(4294967295u, global0.x));
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        switch (min(0, reverseBits(~0) << (~4294967295u % 32u))) {
            case -2147483648: {
                var_0 = vec4<u32>(reverseBits(_wgslsmith_mod_u32(~(var_0.x | 96554u), ~_wgslsmith_mod_u32(var_0.x, u_input.a))), 1u, (107478u | global0.x) | _wgslsmith_dot_vec3_u32(global0.ywz, func_9(Struct_4(Struct_1(-173.0, vec3<bool>(arg_0.x, false, arg_0.x)), global0.x), 5040, func_4()).xwy), ~(~var_0.x));
                global1 = array<vec2<u32>, 11>();
                var var_1 = func_4();
            }
            case 24646: {
                global1 = array<vec2<u32>, 11>();
                continue;
            }
            default: {
                let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-171.0), vec3<bool>(false, !any(vec3<bool>(false, true, true)), !true)), ~firstTrailingBit(select(_wgslsmith_mod_u32(var_0.x, 4294967295u), firstTrailingBit(global0.x), 52748u > var_0.x)));
            }
        }
        global1 = array<vec2<u32>, 11>();
    }
    global2 = array<vec3<f32>, 3>();
    return Struct_3(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(global0.x, u_input.a) >> (_wgslsmith_mult_u32(global0.x, 19440u) % 32u), _wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(var_0.x, var_0.x)) | ~var_0.x), ~(~(~0u)), ~countOneBits(var_0.x) ^ firstLeadingBit(_wgslsmith_add_u32(u_input.a, var_0.x)), _wgslsmith_sub_u32(~(~14835u), reverseBits(30654u))));
}

fn func_2() -> Struct_2 {
    if (!false) {
        for (var var_0 = 36656; ; ) {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        }
        let var_0 = func_12(vec2<bool>(false | !(!false), all(!vec3<bool>(true, false, true)) && func_11(func_3(vec3<bool>(false, true, false)), !false, true | true)));
        global2 = array<vec3<f32>, 3>();
        for (var var_1 = -1; ; var_1 = -(~(-(~(-1)))) | -15433) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            let var_2 = firstTrailingBit(_wgslsmith_sub_i32(min(_wgslsmith_sub_i32(~1, _wgslsmith_dot_vec2_i32(vec2<i32>(1, 24005), vec2<i32>(2147483647, 1))), -_wgslsmith_div_i32(-41554, -8479)), firstLeadingBit(-28236)));
            continue;
        }
    }
    global2 = array<vec3<f32>, 3>();
    let var_0 = func_12(!vec2<bool>(-2147483648 >= (-2147483648 | 0), false));
    let var_1 = func_7(~var_0.a.x, !func_10(func_3(vec3<bool>(true, true, true)).c, func_4(), func_5()).c.b.x, Struct_1(1234.0, vec3<bool>(func_11(Struct_2(vec2<u32>(4294967295u, 0u), global0.x, Struct_1(327.0, vec3<bool>(false, true, true))), func_6(), all(vec3<bool>(true, true, false))), !(true == true), !(-55491 > 2491))), !func_8(~vec2<i32>(-2147483648, 28847), -vec2<i32>(-39582, 0), Struct_3(var_0.a)).b);
    global1 = array<vec2<u32>, 11>();
    return func_10(func_4().a, Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -409.0) * 426.0), func_10(func_3(vec3<bool>(true, true, false)).c, Struct_4(Struct_1(-615.0, vec3<bool>(false, false, false)), 1u), func_3(vec3<bool>(false, true, true)).c).c.b), 0u), Struct_1(1519.0, !vec3<bool>(func_10(Struct_1(188.0, vec3<bool>(false, false, false)), Struct_4(Struct_1(478.0, vec3<bool>(false, false, true)), var_0.a.x), Struct_1(-1229.0, vec3<bool>(true, false, false))).c.b.x, false, !true)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_mod_u32(~(~firstLeadingBit(11593u)), global0.x);
    var var_1 = func_2();
    global2 = array<vec3<f32>, 3>();
    var_1 = func_2();
    return ~(~410);
}

@compute
@workgroup_size(1)
fn main() {
    switch (func_1()) {
        default: {
            let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~(~4294967295u) | 4294967295u, u_input.a), 11u)];
            for (var var_1 = 36674; var_1 != -1; var_1 += 1) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                continue;
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
    }
    let var_0 = vec3<bool>(false, false, func_2().c.b.x);
    switch (_wgslsmith_mod_i32(2147483647, 0)) {
        case 6573: {
            global2 = array<vec3<f32>, 3>();
        }
        case -1: {
            for (var var_1 = 50806; ; var_1 += 1) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            }
            global2 = array<vec3<f32>, 3>();
            if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_8(vec2<i32>(67365, 0), _wgslsmith_clamp_vec2_i32(vec2<i32>(0, 1), vec2<i32>(-2147483648, -20675), vec2<i32>(32106, -39497)), func_12(var_0.xy)).a, -1144.0))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_10(Struct_1(706.0, var_0), Struct_4(Struct_1(236.0, vec3<bool>(var_0.x, false, var_0.x)), 1u), Struct_1(-1086.0, vec3<bool>(false, false, var_0.x))).c.a + _wgslsmith_f_op_f32(-1555.0)))) + -794.0)) {
            }
            global2 = array<vec3<f32>, 3>();
            let var_1 = var_0.xx;
        }
        case 10338: {
            var var_1 = func_12(!func_3(var_0).c.b.xz);
            return;
        }
        default: {
            let var_1 = func_4().a;
            let var_2 = Struct_4(func_2().c, firstLeadingBit(0u));
        }
    }
    let var_1 = Struct_1(-549.0, vec3<bool>(false, true, 1 != -31977));
    var var_2 = 348.0;
    for (var var_3 = firstLeadingBit(-48265) | _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-47357, -1, -2147483648)), ~vec3<i32>(-32271, 13932, 0)), reverseBits(~vec3<i32>(72072, -1, 11018))), vec3<i32>(max(_wgslsmith_mod_i32(3179, -1), 0), 7157, -50152 & 2147483647)); ; var_3 -= 1) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        return;
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(938.0 - var_1.a), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000.0, var_1.a)))))));
}

