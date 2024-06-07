// {"0:0":[128,234,199,128,210,112,205,117,16,158,90,255,203,62,193,151,90,195,124,113,196,139,88,149,245,29,2,58,184,238,74,235]}
// Seed: 3712052555554702107

struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = false;

var<private> global2: vec2<f32> = vec2<f32>(912.0, 1003.0);

var<private> LOOP_COUNTERS: array<u32, 19>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn func_6() -> u32 {
    var var_0 = _wgslsmith_mod_i32(firstLeadingBit(i32(-1) * -_wgslsmith_mod_i32(u_input.a, u_input.a)), countOneBits(-(~12953)));
    switch (u_input.a) {
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                break;
            }
            let var_1 = Struct_4(~min(countOneBits(vec3<u32>(95470u, u_input.b.x, 21187u)), u_input.b.zwy << (u_input.b.xww % vec3<u32>(32u))) ^ u_input.b.xzz, Struct_1(vec2<u32>(~_wgslsmith_mod_u32(0u, u_input.b.x), _wgslsmith_div_u32(u_input.b.x << (1u % 32u), u_input.b.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(737.0, -752.0, -716.0, 552.0), vec4<f32>(global2.x, global2.x, global2.x, global2.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -1016.0, -787.0, 1669.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, -169.0) * vec4<f32>(-922.0, global2.x, 1153.0, -358.0)), !vec4<bool>(true, true, false, false))), !vec4<bool>(false, false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)) == _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(1082.0 * global2.x)), u_input.a | -_wgslsmith_sub_i32(u_input.a, 39445), vec2<bool>(false, all(vec4<bool>(true, false, true, true)) || true)), u_input.b.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1692.0, global2.x, -386.0))))))));
            let var_2 = Struct_5(Struct_2(max(firstTrailingBit(1u), ~firstLeadingBit(var_1.b.a.x)), !var_1.b.c, var_1.b, Struct_1(select(select(vec2<u32>(var_1.a.x, var_1.b.a.x), vec2<u32>(39665u, 1u), var_1.b.e.x), vec2<u32>(1u, 54470u), !var_1.b.c), vec4<f32>(_wgslsmith_div_f32(975.0, var_1.d.x), var_1.d.x, -242.0, -231.0), u_input.b.x > ~1u, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-885, var_1.b.d, u_input.a), vec3<i32>(u_input.a, -2147483648, var_1.b.d)), -2147483648, 2147483647 >> (99538u % 32u)), !var_1.b.e), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -148.0), _wgslsmith_f_op_f32(-1525.0 - global2.x)))));
            global0 = 0;
            var var_3 = !var_1.b.c;
        }
        case -13620: {
            if (any(select(!(!vec3<bool>(true, false, true)), select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true)), select(!vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), false), ((-1 << (u_input.b.x % 32u)) < -1) | true))) {
            }
            if (!false) {
                global0 = u_input.a;
                let var_1 = select(vec3<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)), !true, !(_wgslsmith_mod_u32(15182u, u_input.b.x) <= _wgslsmith_sub_u32(0u, u_input.b.x))), select(select(vec3<bool>(false & false, false || true, all(vec2<bool>(true, true))), select(vec3<bool>(false, true, false), !vec3<bool>(true, false, true), u_input.a >= -4984), !true), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), !vec3<bool>(true, false, false), !(!true)), !vec3<bool>(false, !false, any(vec4<bool>(false, true, true, true)))), vec3<bool>(any(vec3<bool>(true, true, false)) & false, true, any(vec2<bool>(false, all(vec2<bool>(true, true))))));
                let var_2 = !select(vec2<bool>(var_1.x, var_1.x), !vec2<bool>(false, !true), !var_1.zx);
                var var_3 = global2.x;
                let var_4 = var_2.x;
            }
        }
        case -2147483648: {
            var var_1 = vec2<i32>(-2147483648, firstTrailingBit(min(u_input.a, -u_input.a) & u_input.a));
            return 0u;
        }
        case 51313: {
            var_0 = ~(-2147483648);
            let var_1 = Struct_5(Struct_2(~_wgslsmith_mod_u32(4294967295u, u_input.b.x) | ~firstTrailingBit(1u), any(vec4<bool>(!true, 1u == 30777u, !false, 1u < u_input.b.x)), Struct_1(u_input.b.wy, vec4<f32>(_wgslsmith_f_op_f32(1000.0 * global2.x), _wgslsmith_f_op_f32(1000.0 - global2.x), _wgslsmith_f_op_f32(round(global2.x)), global2.x), false, abs(81198), vec2<bool>(!false, any(vec4<bool>(true, true, false, true)))), Struct_1(vec2<u32>(u_input.b.x, _wgslsmith_div_u32(1u, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1238.0, -610.0, 1765.0, 715.0)))), false, u_input.a, vec2<bool>(!false, true)), global2.x));
        }
        default: {
            var var_1 = Struct_5(Struct_2(4294967295u, all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), Struct_1(vec2<u32>(~21009u, u_input.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 564.0, global2.x, 1360.0)), vec4<f32>(global2.x, global2.x, global2.x, -838.0), vec4<bool>(true, true, false, true))), all(!vec3<bool>(true, true, false)), _wgslsmith_mult_i32(firstLeadingBit(-2147483648), ~u_input.a), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), Struct_1(vec2<u32>(~u_input.b.x, max(23688u, u_input.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1160.0, 422.0, global2.x, global2.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, global2.x, global2.x, global2.x), vec4<f32>(1743.0, global2.x, -545.0, 305.0)))), all(!vec4<bool>(false, false, false, true)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 1, u_input.a), vec3<i32>(u_input.a, -1, -2147483648)), !(!vec2<bool>(true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1424.0) - -1291.0) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x * global2.x))))));
        }
    }
    let var_1 = 2376;
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        break;
    }
    for (var var_2 = -4828; var_2 == -21304; var_2 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        continue;
    }
    return u_input.b.x;
}

fn func_5() -> vec2<bool> {
    var var_0 = -(~(~1));
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))))));
    let var_1 = Struct_3(vec2<bool>(true, u_input.b.x <= firstTrailingBit(func_6())), min(~u_input.b.xzx >> (~vec3<u32>(u_input.b.x, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(63337u, 4294967295u, u_input.b.x) ^ vec3<u32>(0u, 14612u, 4294967295u), _wgslsmith_add_vec3_u32(u_input.b.zyz, u_input.b.yyy)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.wyw, vec3<u32>(40923u, u_input.b.x, u_input.b.x)), ~u_input.b.zzy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1399.0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-503.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -397.0) * -561.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -158.0) - -202.0))));
    if (!var_1.a.x) {
        var var_2 = ~0u;
        let var_3 = Struct_3(vec2<bool>(all(vec3<bool>(all(vec3<bool>(var_1.a.x, false, var_1.a.x)), var_1.a.x, all(vec4<bool>(true, false, var_1.a.x, true)))), !any(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x))), var_1.b, var_1.d.zy, var_1.d);
        let var_4 = any(select(vec3<bool>(false, !(!var_1.a.x), false), select(vec3<bool>(var_3.a.x, true, var_1.a.x && true), select(vec3<bool>(var_3.a.x, false, false), select(vec3<bool>(true, true, true), vec3<bool>(var_3.a.x, true, var_3.a.x), vec3<bool>(true, var_1.a.x, var_3.a.x)), global2.x > -396.0), !vec3<bool>(true, var_3.a.x, true)), false));
        switch (_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a, -5347, 2147483647, -1), vec4<i32>(u_input.a, 1, 29320, u_input.a)), vec4<i32>(-u_input.a, u_input.a, 1, 4903)), vec4<i32>(-1, -2147483648, abs(-u_input.a), min(0, ~u_input.a))), select(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-29131, u_input.a, -6206, u_input.a)), vec4<i32>(-53464, -8852, u_input.a, u_input.a) & vec4<i32>(-1, 9626, 17632, u_input.a)), _wgslsmith_clamp_i32(1, ~1, min(u_input.a, u_input.a)), true) & u_input.a)) {
            case 45602: {
                var var_5 = Struct_1(~vec2<u32>(~_wgslsmith_mod_u32(47179u, u_input.b.x), _wgslsmith_mod_u32(4294967295u, ~var_3.b.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 501.0, global2.x, -516.0)))))), var_1.d.x == 206.0, 35366, vec2<bool>(false, false));
            }
            case 1: {
                var var_5 = max(vec2<i32>(38086, 38132 << (~var_1.b.x % 32u)), vec2<i32>(~_wgslsmith_mod_i32(-2147483648, u_input.a) | select(-u_input.a, u_input.a, !var_1.a.x), u_input.a));
                var var_6 = Struct_4(_wgslsmith_mod_vec3_u32(min(vec3<u32>(24481u, var_3.b.x >> (113134u % 32u), u_input.b.x), ~vec3<u32>(0u, 22378u, var_1.b.x)), firstTrailingBit(firstLeadingBit(~u_input.b.zyx))), Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_1.b.zx, vec2<u32>(0u, var_3.b.x)), var_3.b.xx) << (vec2<u32>(var_1.b.x, var_3.b.x ^ var_3.b.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, global2.x, var_1.c.x, var_1.d.x) + vec4<f32>(var_1.c.x, var_3.d.x, -1277.0, 1504.0)))), any(vec4<bool>(true && true, !var_4, any(var_3.a), !false)), min(-2147483648, var_5.x), vec2<bool>(!any(vec3<bool>(var_3.a.x, true, var_3.a.x)), all(select(vec3<bool>(var_3.a.x, false, true), vec3<bool>(var_1.a.x, var_4, true), vec3<bool>(false, true, true))))), reverseBits(1u), vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_div_f32(489.0, -211.0)));
                let var_7 = (0 >> (_wgslsmith_add_u32(min(~u_input.b.x, _wgslsmith_mult_u32(0u, 68766u)), 8703u) % 32u)) | u_input.a;
                let var_8 = all(vec4<bool>(all(select(!var_6.b.e, vec2<bool>(false, true), var_6.b.e)), false, true, var_3.a.x));
                global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-726.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1085.0), _wgslsmith_f_op_f32(170.0 * global2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427.0)))));
            }
            case -1: {
                let var_5 = var_3.d;
            }
            case -7904: {
                var_2 = ~var_3.b.x;
                var_0 = min(2147483647 & -27936, ~(-u_input.a));
                global0 = _wgslsmith_sub_i32(-reverseBits(0) >> (reverseBits(var_3.b.x) % 32u), -firstLeadingBit(abs(0)));
                var var_5 = ~(~(~(~(~21283u))));
                let var_6 = !vec3<bool>(all(!vec4<bool>(true, true, true, false)) | var_3.a.x, any(select(vec2<bool>(var_1.a.x, var_3.a.x), select(vec2<bool>(true, var_4), var_3.a, var_1.a.x), vec2<bool>(true, var_4))), all(vec2<bool>(true, var_4)));
            }
            default: {
                var var_5 = Struct_4(var_1.b, Struct_1(min(~var_1.b.xz, vec2<u32>(u_input.b.x << (4294967295u % 32u), ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, 320.0, var_3.d.x, 264.0))))), ~(~var_1.b.x) != ~abs(var_3.b.x), -(~u_input.a) << (_wgslsmith_add_u32(61048u >> (4294967295u % 32u), ~u_input.b.x) % 32u), !(!(!var_3.a))), reverseBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, var_1.b.x), u_input.b.x, 27762u) >> (_wgslsmith_mult_u32(~40468u, ~0u) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1520.0, -382.0, -668.0), var_3.d)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_3.d + var_3.d)))));
                var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(309.0 + 874.0)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.x)))) * _wgslsmith_f_op_f32(1859.0 * 148.0)));
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        continue;
    }
    return vec2<bool>(!(!var_1.a.x), false || var_1.a.x);
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    global1 = all(func_5());
    var var_0 = -countOneBits(u_input.a) ^ 1;
    global1 = arg_0.x;
    var var_1 = max(abs(0u), 0u) & _wgslsmith_clamp_u32(0u, func_6(), u_input.b.x);
    var var_2 = Struct_4(reverseBits(u_input.b.wxw), Struct_1(min(~u_input.b.yx, firstLeadingBit(~vec2<u32>(u_input.b.x, 16527u))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1315.0, global2.x)) * _wgslsmith_f_op_f32(f32(-1.0) * -415.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1203.0 + -1407.0))), false, u_input.a, !(!vec2<bool>(false, false))), 48785u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) - vec3<f32>(1262.0, 1782.0, global2.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-372.0, 572.0, global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(363.0, -1160.0, 1336.0) + vec3<f32>(-348.0, -1845.0, global2.x)), any(vec4<bool>(arg_0.x, true, true, false))))))));
    return ~(~var_2.c);
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_3(arg_3.xz, _wgslsmith_mult_vec3_u32(u_input.b.zyy, _wgslsmith_div_vec3_u32(firstTrailingBit(select(vec3<u32>(0u, 4294967295u, 1u), u_input.b.yxw, arg_3.x)), firstTrailingBit(u_input.b.zzx ^ u_input.b.yzy))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x) * arg_1.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1723.0, -1403.0, 433.0), vec3<f32>(arg_1.b.x, arg_1.b.x, global2.x)) - arg_1.b.xxw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, -585.0, -943.0), arg_1.b.xwx)) * _wgslsmith_f_op_vec3_f32(step(arg_1.b.zxw, vec3<f32>(464.0, global2.x, arg_1.b.x)))))))));
    let var_1 = Struct_5(Struct_2(~var_0.b.x, var_0.a.x, Struct_1(vec2<u32>(u_input.b.x, 88275u) << (abs(u_input.b.xw) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b.x, 902.0, -466.0, global2.x)))), !false, _wgslsmith_add_i32(-u_input.a, abs(arg_1.d)), arg_3.zx), Struct_1(~(~vec2<u32>(0u, arg_1.a.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), arg_1.b.x, _wgslsmith_f_op_f32(-1629.0), _wgslsmith_f_op_f32(-global2.x)), select(arg_1.c, !true, arg_3.x), arg_1.d, vec2<bool>(false, 23435u > u_input.b.x)), global2.x));
    switch ((-(~88735) ^ _wgslsmith_mult_i32(6714, abs(~arg_1.d))) << (~arg_1.a.x % 32u)) {
        case -1: {
            switch (-abs(u_input.a)) {
                case 44311: {
                    global1 = true;
                    var var_2 = firstLeadingBit(u_input.b.wyw);
                }
                case 1: {
                    global1 = func_5().x;
                    var var_2 = var_1.a;
                }
                case -1: {
                    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.b.x, -604.0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.d.b.wy)));
                }
                default: {
                    var var_2 = var_1;
                    global2 = vec2<f32>(871.0, _wgslsmith_f_op_f32(f32(-1.0) * -828.0));
                    let var_3 = u_input.b.x;
                }
            }
            return ~select(vec2<i32>(-2147483648, _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.d, arg_1.d, var_1.a.c.d), ~(-17377))), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(u_input.a, -37115)), ~vec2<i32>(u_input.a, -21352), select(vec2<i32>(var_1.a.d.d, arg_1.d), vec2<i32>(12866, var_1.a.d.d), arg_1.e)) ^ min(vec2<i32>(0, 0), _wgslsmith_mult_vec2_i32(vec2<i32>(-43587, arg_1.d), vec2<i32>(var_1.a.d.d, -50123))), firstLeadingBit(arg_1.a.x ^ 0u) >= arg_2);
        }
        case -27973: {
            for (var var_2 = -39078; var_2 <= -1; var_2 += 1) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                break;
            }
            var var_2 = arg_1.b;
            switch (_wgslsmith_sub_i32(-26134, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1, -5316, _wgslsmith_mod_i32(-41947, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(24440 >> (var_1.a.a % 32u), var_1.a.c.d << (1u % 32u), -var_1.a.c.d), vec3<i32>(0, -37200 | 2147483647, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, 2147483647), vec2<i32>(-1, arg_1.d))))))) {
                case 0: {
                    let var_3 = var_1.a;
                    var_2 = arg_1.b;
                }
                case 2147483647: {
                    var var_3 = var_1;
                }
                default: {
                    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * var_2.x) + 1000.0), 329.0));
                }
            }
        }
        default: {
        }
    }
    let var_2 = var_1;
    for (var var_3: i32; var_3 > -46591; ) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        let var_4 = min(20792u, _wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_mult_u32(arg_0, ~1552u))) << ((countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.a.d.a, vec2<u32>(4294967295u, arg_1.a.x)), reverseBits(34412u))) & arg_2) % 32u);
        let var_5 = !(!(!arg_3.x));
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.c.b.x + var_2.a.d.b.x), 1869.0), _wgslsmith_f_op_f32(f32(-1.0) * -580.0))), 429.0);
            var_0 = Struct_3(!var_1.a.c.e, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), var_0.b ^ vec3<u32>(0u, 0u, arg_2)) >> (~_wgslsmith_mod_vec3_u32(var_0.b, u_input.b.wzx) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(var_2.a.c.a.x, arg_0, u_input.b.x) ^ (vec3<u32>(4294967295u, 1u, 1u) >> (vec3<u32>(4294967295u, arg_0, var_4) % vec3<u32>(32u))))), _wgslsmith_div_vec2_f32(arg_1.b.xw, vec2<f32>(global2.x, -936.0)), vec3<f32>(208.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c.b.x))), _wgslsmith_f_op_f32(-107.0)));
            var var_6 = select(!select(select(!vec4<bool>(arg_3.x, var_0.a.x, arg_1.c, var_0.a.x), vec4<bool>(var_0.a.x, false, var_2.a.d.e.x, var_5), any(var_2.a.c.e)), !(!vec4<bool>(true, var_2.a.d.e.x, true, arg_1.c)), !vec4<bool>(true, false, true, true)), select(vec4<bool>(true, !var_1.a.c.e.x, var_2.a.d.c, true), !select(select(vec4<bool>(true, false, true, arg_3.x), vec4<bool>(arg_3.x, true, false, true), true), vec4<bool>(var_1.a.b, false, var_5, true), !var_1.a.b), true), vec4<bool>(arg_1.c | (var_2.a.d.e.x && !arg_1.c), all(select(vec4<bool>(false, true, arg_1.e.x, arg_3.x), !vec4<bool>(var_1.a.d.e.x, var_1.a.b, arg_3.x, true), all(vec2<bool>(arg_1.e.x, arg_1.e.x)))), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x))) > arg_1.b.x));
        }
        var var_6 = Struct_1(_wgslsmith_sub_vec2_u32(select(vec2<u32>(42140u << (arg_1.a.x % 32u), var_0.b.x & 73808u), firstTrailingBit(~var_2.a.d.a), select(select(var_1.a.c.e, vec2<bool>(true, true), var_1.a.c.e), func_5(), arg_3.yx)), vec2<u32>(4294967295u, max(~var_0.b.x, ~95959u))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(800.0, global2.x)))))), 1395.0, var_2.a.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.c.b.x - -854.0))))), false, -(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, 27578), -vec2<i32>(0, var_1.a.c.d)) & -(~u_input.a)), vec2<bool>(true, all(!vec2<bool>(var_2.a.b, true))));
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            break;
        }
    }
    return vec2<i32>(abs(1111), ~_wgslsmith_mod_i32(~2147483647 << (37841u % 32u), var_2.a.d.d));
}

fn func_8(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<i32>) -> i32 {
    for (; ; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(856.0, global2.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(831.0)) * 232.0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000.0 * global2.x)))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(208.0, -1000.0, -1000.0) + vec3<f32>(var_0.x, global2.x, global2.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 484.0, 384.0))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1193.0, global2.x)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1189.0, 305.0, global2.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, var_0.x, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1975.0, 1327.0, global2.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(752.0, var_0.x, 1529.0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-943.0, 1109.0, 485.0) - vec3<f32>(-1167.0, 604.0, 219.0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-803.0)), _wgslsmith_f_op_f32(-563.0 - -1000.0), _wgslsmith_f_op_f32(trunc(global2.x))))));
    switch (_wgslsmith_div_i32(u_input.a, -2147483648)) {
        case 1: {
            for (var var_1 = 7519; var_1 < 43077; var_1 -= 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var var_2 = Struct_4(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~firstTrailingBit(u_input.b.zxw), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u), countOneBits(min(u_input.b.yyy, u_input.b.zwz))), max(u_input.b.yzz, u_input.b.yxw)), Struct_1(vec2<u32>(firstLeadingBit(u_input.b.x), func_6()) >> (u_input.b.xx % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_0.x, 751.0, global2.x) - vec4<f32>(-1332.0, 1097.0, var_0.x, 1227.0))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -2161.0), _wgslsmith_f_op_f32(-522.0 + 1000.0), global2.x, _wgslsmith_f_op_f32(-270.0))), !(all(vec3<bool>(false, false, false)) & !false), 1, !select(!vec2<bool>(true, false), !vec2<bool>(true, false), func_5().x)), firstTrailingBit(_wgslsmith_div_u32(1u, arg_2 | _wgslsmith_mod_u32(u_input.b.x, 4294967295u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(114.0 - global2.x), global2.x, -1378.0), vec3<f32>(822.0, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(787.0))))))));
                let var_3 = 587.0;
                var_1 = arg_1.x & -_wgslsmith_clamp_i32(arg_1.x, 20411, -var_2.b.d);
                var var_4 = !func_5().x;
            }
            var var_1 = Struct_5(Struct_2(58368u, any(!vec3<bool>(false, true, true)), Struct_1(u_input.b.zw, vec4<f32>(_wgslsmith_div_f32(2364.0, global2.x), var_0.x, global2.x, -894.0), false, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_3.yz, vec2<i32>(22469, arg_1.x)), vec2<i32>(u_input.a, u_input.a)), !(!vec2<bool>(false, true))), Struct_1(~vec2<u32>(26202u, 5526u) ^ _wgslsmith_div_vec2_u32(u_input.b.yw, u_input.b.wy), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1000.0, global2.x, 752.0, global2.x), vec4<f32>(846.0, global2.x, 159.0, -291.0)))), !all(vec2<bool>(false, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647, arg_0.x, 1, 4344), vec4<i32>(u_input.a, -19470, -2147483648, 2090)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, global2.x))))));
            var var_2 = Struct_5(Struct_2(~_wgslsmith_sub_u32(~var_1.a.d.a.x, 47798u), var_1.a.b, var_1.a.c, Struct_1(~(~vec2<u32>(var_1.a.a, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_1.a.c.b)) + var_1.a.d.b), func_5().x, u_input.a, vec2<bool>(false & var_1.a.b, var_1.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), 1445.0)) - var_0.x)));
            var_2 = Struct_5(Struct_2(14693u, true, var_1.a.d, Struct_1(vec2<u32>(4294967295u & 66280u, 40599u), vec4<f32>(_wgslsmith_f_op_f32(abs(-130.0)), _wgslsmith_f_op_f32(var_2.a.d.b.x * global2.x), -1012.0, var_1.a.d.b.x), var_1.a.b, abs(_wgslsmith_sub_i32(arg_3.x, -9284)), vec2<bool>(var_2.a.b || var_1.a.d.e.x, !true)), var_2.a.d.b.x));
        }
        default: {
            global0 = func_7(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(u_input.b), u_input.b), ~countOneBits(vec4<u32>(4294967295u, 1u, 22900u, u_input.b.x)))), Struct_1(~countOneBits(vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1504.0, global2.x, var_0.x, -826.0))))), !(!false), reverseBits(32806), select(select(func_5(), !vec2<bool>(true, true), false), !vec2<bool>(false, false), vec2<bool>(u_input.b.x <= u_input.b.x, true && true))), _wgslsmith_clamp_u32(23613u, ~(u_input.b.x & u_input.b.x), u_input.b.x), select(vec3<bool>(!true, !(true && false), !(false & true)), vec3<bool>(all(vec3<bool>(false, true, true)), any(!vec4<bool>(false, true, true, false)), false), !select(vec3<bool>(true, true, false), !vec3<bool>(false, true, true), false))).x;
        }
    }
    return _wgslsmith_clamp_i32(abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.x, arg_1.x) ^ ~arg_1.x, 1)), _wgslsmith_clamp_i32(-1, 1, arg_1.x), 1);
}

fn func_3() -> Struct_1 {
    var var_0 = -20768;
    var var_1 = u_input.b.x;
    var var_2 = ~0u;
    var_0 = -u_input.a;
    if (false) {
        switch (func_8(abs(func_7(func_4(vec3<bool>(true, true, true)), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), vec4<f32>(-164.0, -299.0, 216.0, -858.0), true, u_input.a, vec2<bool>(false, false)), u_input.b.x >> (47797u % 32u), !vec3<bool>(true, true, true))) << (vec2<u32>(62834u, 55110u) % vec2<u32>(32u)), select(vec3<i32>(18912, u_input.a, u_input.a), vec3<i32>(~(~(-1)), select(u_input.a >> (4294967295u % 32u), -25316, true & false), u_input.a), false), 0u, vec4<i32>(func_7(firstTrailingBit(u_input.b.x), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(global2.x, global2.x, global2.x, -847.0), true, -1, vec2<bool>(true, false)), 14218u, vec3<bool>(false, false, false)).x, max(1, u_input.a) ^ firstLeadingBit(u_input.a), u_input.a, firstTrailingBit(i32(-1) * -2147483648)) & (vec4<i32>(~u_input.a, u_input.a, _wgslsmith_sub_i32(-45574, -1), abs(u_input.a)) >> (select(max(vec4<u32>(u_input.b.x, 0u, 88334u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true)) % vec4<u32>(32u))))) {
            case -1: {
                global1 = true;
                var var_3 = 42242u >> ((67772u >> ((firstTrailingBit(_wgslsmith_add_u32(1u, u_input.b.x)) & ~5015u) % 32u)) % 32u);
                let var_4 = Struct_1(vec2<u32>(min(~(u_input.b.x >> (1u % 32u)), 83953u), _wgslsmith_div_u32(u_input.b.x, countOneBits(74869u))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1018.0, _wgslsmith_f_op_f32(f32(-1.0) * -641.0), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1334.0 * global2.x))))), all(!(!(!vec3<bool>(false, true, false)))), u_input.a, func_5());
                var var_5 = Struct_2(~1u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)))) == _wgslsmith_f_op_f32(trunc(1451.0)), Struct_1(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_4.a.x, 4294967295u), abs(u_input.b.xz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.x, 493.0, -459.0, var_4.b.x))))), u_input.b.x >= ~u_input.b.x, _wgslsmith_sub_i32(var_4.d, max(~var_4.d, _wgslsmith_sub_i32(0, -1))), var_4.e), var_4, 462.0);
            }
            case 0: {
                var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-10877, _wgslsmith_add_i32(_wgslsmith_clamp_i32(0, u_input.a, 2147483647), _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), i32(-1) * -14394) ^ max(firstLeadingBit(vec3<i32>(-2147483648, 2147483647, u_input.a)), ~vec3<i32>(-2147483648, 1, 44967) & firstLeadingBit(vec3<i32>(2147483647, 35849, u_input.a))), max(-vec3<i32>(abs(u_input.a), func_8(vec2<i32>(u_input.a, 1), vec3<i32>(18727, -2147483648, u_input.a), 4294967295u, vec4<i32>(-2147483648, 5045, u_input.a, 1)), reverseBits(u_input.a)), select(firstTrailingBit(vec3<i32>(-58326, -4581, u_input.a)), ~min(vec3<i32>(u_input.a, 2147483647, -2147483648), vec3<i32>(u_input.a, u_input.a, u_input.a)), true)), -firstTrailingBit(firstLeadingBit(~vec3<i32>(u_input.a, u_input.a, -1))));
            }
            case -8545: {
                global0 = 0;
                var_0 = ~u_input.a ^ u_input.a;
            }
            case -2147483648: {
                let var_3 = any(select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true), !vec4<bool>(true, false, true, false)), vec4<bool>(any(vec4<bool>(true, false, false, false)), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false)), _wgslsmith_mult_i32(u_input.a, 1) >= -28994, !false), 1u != _wgslsmith_add_u32(u_input.b.x ^ u_input.b.x, ~41746u)));
                var var_4 = Struct_3(!select(vec2<bool>(var_3, !var_3), !select(vec2<bool>(true, true), vec2<bool>(var_3, false), var_3), all(select(vec4<bool>(var_3, false, var_3, var_3), vec4<bool>(var_3, false, true, var_3), vec4<bool>(false, var_3, var_3, false)))), u_input.b.wxz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-728.0, -117.0), vec2<f32>(709.0, global2.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1045.0, global2.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-600.0, -616.0) * vec2<f32>(-209.0, -388.0)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, 104.0))), !vec2<bool>(var_3, var_3)))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(781.0, global2.x, _wgslsmith_f_op_f32(-409.0)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) + vec3<f32>(268.0, global2.x, -914.0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) + vec3<f32>(global2.x, global2.x, -326.0)), vec3<f32>(global2.x, global2.x, -1000.0), vec3<bool>(var_3, false, var_3))))))));
                let var_5 = ~max(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a);
            }
            default: {
                var_1 = select(~4294967295u, 0u, true);
                var var_3 = vec3<bool>(firstTrailingBit(func_4(!vec3<bool>(false, true, false))) != (u_input.b.x << (u_input.b.x % 32u)), !(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), false);
                var var_4 = vec3<bool>(func_5().x, !var_3.x, var_3.x);
                global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-841.0 * 448.0))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-481.0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(298.0, -545.0)) + _wgslsmith_f_op_f32(316.0 + global2.x))), 2291.0)));
            }
        }
        let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-758.0, -1239.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-927.0, -1649.0))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -590.0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-271.0, 351.0))) * vec2<f32>(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(346.0 * global2.x)))));
        var var_4 = Struct_4(abs(vec3<u32>(u_input.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(98635u, u_input.b.x, 0u), vec3<u32>(36746u, u_input.b.x, u_input.b.x)) % 32u), _wgslsmith_add_u32(7415u, u_input.b.x), u_input.b.x)), Struct_1(~select(u_input.b.ww, vec2<u32>(6238u, u_input.b.x), vec2<bool>(true, true)) | vec2<u32>(_wgslsmith_div_u32(114398u, 1u), 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1198.0, 648.0, -670.0, -176.0) - _wgslsmith_div_vec4_f32(vec4<f32>(-713.0, var_3.x, var_3.x, 1000.0), vec4<f32>(global2.x, global2.x, -1000.0, var_3.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-300.0, global2.x, var_3.x, -1905.0), vec4<f32>(-183.0, global2.x, global2.x, var_3.x), vec4<bool>(true, true, true, true))))), !false, u_input.a, vec2<bool>(global2.x < var_3.x, !(false != false))), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + 628.0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x), _wgslsmith_f_op_f32(global2.x * global2.x))))));
        let var_5 = _wgslsmith_add_i32(2147483647, max(_wgslsmith_sub_i32(u_input.a << (var_4.b.a.x % 32u), max(59812, -3964)), ~max(u_input.a, ~(-1))));
    }
    return Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(257u, u_input.b.x), reverseBits(u_input.b.xx), ~u_input.b.yy >> (_wgslsmith_mod_vec2_u32(u_input.b.ww, _wgslsmith_div_vec2_u32(vec2<u32>(26042u, u_input.b.x), u_input.b.zy)) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(317.0, global2.x)), _wgslsmith_div_f32(global2.x, -626.0)), _wgslsmith_f_op_f32(max(743.0, _wgslsmith_f_op_f32(-global2.x))), (true & true) | func_5().x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000.0))), 881.0, global2.x), !true, abs(i32(-1) * -15675) >> (~(firstLeadingBit(4294967295u) & reverseBits(4294967295u)) % 32u), select(func_5(), select(!(!vec2<bool>(true, true)), !vec2<bool>(false, false), !(true | false)), !vec2<bool>(true, all(vec4<bool>(false, true, false, false)))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(37911u, countOneBits(~(reverseBits(u_input.b.x) | u_input.b.x)));
    for (var var_1 = -1; var_1 != 8195; var_1 += 1) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        if (any(vec2<bool>(arg_0.x, false))) {
            var var_2 = func_3();
            break;
        }
        switch (-2147483648) {
            case -13173: {
                break;
            }
            default: {
                var var_2 = false;
            }
        }
        var_0 = _wgslsmith_sub_u32(u_input.b.x, (reverseBits(4294967295u) >> (func_6() % 32u)) & u_input.b.x);
        let var_2 = func_3();
        var_0 = var_2.a.x;
    }
    if (false) {
    }
    let var_1 = ~min(vec4<i32>(-_wgslsmith_sub_i32(2147483647, -17501), ~(~u_input.a), ~(-6213), ~(-7751)), reverseBits(vec4<i32>(-1) * -vec4<i32>(1, u_input.a, u_input.a, -18187)));
    var_0 = u_input.b.x;
    return Struct_2(_wgslsmith_div_u32(4294967295u, min(firstTrailingBit(1u), 4294967295u)), true, func_3(), Struct_1(u_input.b.ww, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1235.0, global2.x, 2937.0, -280.0)))), all(func_3().e), -102806, arg_0.xy), global2.x);
}

fn func_1() -> vec2<bool> {
    let var_0 = ~2147483647;
    var var_1 = ~(~_wgslsmith_div_vec2_u32((u_input.b.xy >> (vec2<u32>(35946u, 23739u) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x)) % vec2<u32>(32u)), u_input.b.xx));
    let var_2 = 4294967295u;
    for (var var_3 = 0; var_3 != 1; var_3 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        global1 = all(!vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), ~var_2 > ~24335u, true));
        let var_4 = func_2(vec3<bool>(!((4294967295u | var_1.x) < 0u), 44160u == var_2, false));
        let var_5 = var_0 != func_8(_wgslsmith_mod_vec2_i32(min(~vec2<i32>(-1, var_0), vec2<i32>(var_0, -2147483648) >> (vec2<u32>(u_input.b.x, var_1.x) % vec2<u32>(32u))), select(select(vec2<i32>(17971, var_0), vec2<i32>(-68410, -35563), false), abs(vec2<i32>(var_0, u_input.a)), vec2<bool>(var_4.b, var_4.c.c))), -vec3<i32>(-20885 >> (4294967295u % 32u), i32(-1) * -1, 2147483647), u_input.b.x, firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1, 1, var_0, u_input.a), vec4<i32>(2147483647, u_input.a, -8501, u_input.a)), vec4<i32>(var_0, var_0, 40654, u_input.a))));
    }
    global0 = -var_0;
    return func_5();
}

fn func_9(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    global0 = u_input.a;
    let var_0 = u_input.b.x;
    var var_1 = max((~(vec3<i32>(1, 2147483647, 0) & vec3<i32>(26560, 1, 13154)) | -vec3<i32>(-9658, u_input.a, u_input.a)) >> (~_wgslsmith_clamp_vec3_u32(select(u_input.b.ywy, vec3<u32>(21116u, arg_2.b.x, var_0), vec3<bool>(false, arg_1, true)), firstTrailingBit(vec3<u32>(0u, 4294967295u, 11246u)), min(vec3<u32>(u_input.b.x, var_0, var_0), u_input.b.zxy)) % vec3<u32>(32u)), max(-vec3<i32>(1, -1, u_input.a) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -8743, u_input.a), vec3<i32>(u_input.a, 0, -8824)), abs(-vec3<i32>(u_input.a, -46701, 0))) << (select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b.x, 30631u), u_input.b.yyz), u_input.b.zyw, !(!arg_1)) % vec3<u32>(32u)));
    switch (~(i32(-1) * -18209)) {
        case 2210: {
            let var_2 = ~u_input.b.x;
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            }
            let var_3 = Struct_2(~_wgslsmith_mult_u32(1u, func_3().a.x), 52437u == var_0, func_2(select(select(vec3<bool>(true, arg_2.a.x, arg_2.a.x), vec3<bool>(arg_1, true, false), true), select(select(vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_1, true)), vec3<bool>(arg_0, true, false), vec3<bool>(arg_1, false, arg_2.a.x)), vec3<bool>(select(arg_2.a.x, true, true), u_input.a < u_input.a, arg_0 & true))).d, Struct_1(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x, var_2), u_input.b.ww), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1617.0, global2.x, global2.x, -244.0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-890.0, -1696.0, 1000.0, 1000.0))))), true, -(~_wgslsmith_clamp_i32(var_1.x, u_input.a, var_1.x)), !vec2<bool>(any(vec3<bool>(false, arg_1, arg_1)), !arg_2.a.x)), _wgslsmith_f_op_f32(global2.x * global2.x));
        }
        default: {
            let var_2 = u_input.b.x;
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_2.d.xy))));
                let var_3 = Struct_4(vec3<u32>(func_6(), ~(4294967295u ^ 4294967295u) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(32631u, var_0), reverseBits(4294967295u)) % 32u), func_3().a.x), func_3(), func_2(select(!(!vec3<bool>(false, false, arg_1)), vec3<bool>(arg_0, any(vec2<bool>(arg_2.a.x, false)), false & true), !false | arg_1)).a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-789.0), _wgslsmith_f_op_f32(min(-254.0, arg_2.c.x)))))));
                global0 = 13717;
                continue;
            }
            global0 = var_1.x;
        }
    }
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-797.0 * _wgslsmith_f_op_f32(arg_2.c.x + -781.0)))) - 271.0);
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(false, !all(select(vec2<bool>(true, false), !vec2<bool>(false, false), !vec2<bool>(true, false))), Struct_3(select(vec2<bool>(u_input.b.x < 0u, 3026u > 1u), !vec2<bool>(true, true), select(!vec2<bool>(true, false), func_1(), -1522.0 >= global2.x)), u_input.b.zyw, vec2<f32>(_wgslsmith_f_op_f32(min(1081.0, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_div_f32(global2.x, global2.x))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000.0, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, -2341.0, global2.x), vec3<f32>(-928.0, 1437.0, -181.0)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, -973.0, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(769.0, global2.x, global2.x) * vec3<f32>(-1288.0, global2.x, global2.x)))))));
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        return;
    }
    let var_1 = Struct_5(func_2(!(!vec3<bool>(true, false, true))));
    for (; ; ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        let var_2 = var_0;
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            continue;
        }
    }
    global0 = -36200;
    global1 = !((_wgslsmith_mult_i32(5986, u_input.a) < -1856) && (0u != firstTrailingBit(43979u))) & (-(countOneBits(var_0.d) << (var_1.a.d.a.x % 32u)) < var_1.a.d.d);
    global1 = false;
    if (var_0.e.x) {
        for (var var_2 = -1; var_2 < -1; var_2 -= 1) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        }
        for (; ; ) {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            break;
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, firstLeadingBit(var_1.a.c.a));
}

