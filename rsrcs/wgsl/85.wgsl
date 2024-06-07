// {"0:0":[223,155,53,11,98,174,125,55,185,67,36,120,250,163,63,115,184,93,122,148,239,112,128,242]}
// Seed: 7881340110782244566

struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> LOOP_COUNTERS: array<u32, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_6() -> bool {
    if (all(!select(vec2<bool>(!true, 4467 == 29327), select(!vec2<bool>(false, true), !vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), any(vec4<bool>(true, true, true, false))))) {
        let var_0 = !vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1000.0)), -825.0)) != _wgslsmith_f_op_f32(f32(-1.0) * -802.0), (-u_input.a | (u_input.d & -10522)) > ~u_input.a, true, _wgslsmith_f_op_f32(exp2(610.0)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604.0)));
        let var_1 = var_0.x;
        loop {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            global0 = array<vec3<bool>, 4>();
            var var_2 = select(-_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(11647, -4521, -2147483648, -13) << (vec4<u32>(u_input.c.x, 29745u, u_input.c.x, 18491u) % vec4<u32>(32u)), ~vec4<i32>(-2147483648, u_input.a, 0, -47318)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.b, -2147483648), vec4<i32>(1, 67913, u_input.b, -2147483648))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(36748, i32(-1) * -38165, u_input.d), vec3<i32>(~u_input.b, 0, 25527)), firstTrailingBit(u_input.d) << (42669u % 32u), 0, (u_input.b ^ min(-27132, 54696)) | _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 17356), -vec2<i32>(31685, 0))), var_0);
            var var_3 = reverseBits(~_wgslsmith_div_u32(firstLeadingBit(~u_input.c.x), ~0u));
            break;
        }
        switch (~(-36121)) {
            case -15111: {
                let var_2 = _wgslsmith_f_op_f32(1000.0 * _wgslsmith_f_op_f32(-2418.0));
                let var_3 = !var_0.zw;
                let var_4 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2, _wgslsmith_div_f32(-1011.0, -1886.0), _wgslsmith_f_op_f32(-451.0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(218.0, var_2)), var_2))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), -1679.0)))))));
            }
            case -12915: {
                global0 = array<vec3<bool>, 4>();
                return !var_0.x;
            }
            case 2147483647: {
                var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(-656.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1607.0) * _wgslsmith_f_op_f32(-923.0)))), -769.0), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-363.0, _wgslsmith_f_op_f32(trunc(519.0)))), 742.0, _wgslsmith_f_op_f32(-1279.0)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-705.0, 1265.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634.0) + _wgslsmith_f_op_f32(abs(103.0))), 2012.0)), vec3<bool>(var_0.x, (true | false) & var_0.x, !false)));
                let var_3 = true;
            }
            default: {
                let var_2 = abs(vec3<u32>(90010u, u_input.c.x, ~(~0u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u | 8461u, _wgslsmith_sub_u32(82306u, 4294967295u), ~1u) | abs(~vec3<u32>(u_input.c.x, u_input.c.x, 53854u)), abs(~(vec3<u32>(u_input.c.x, 1u, u_input.c.x) & vec3<u32>(52863u, u_input.c.x, u_input.c.x))), _wgslsmith_div_vec3_u32(vec3<u32>(14853u, u_input.c.x, u_input.c.x), max(vec3<u32>(u_input.c.x, 1u, 138192u), vec3<u32>(22827u, 13554u, 0u))) ^ vec3<u32>(u_input.c.x & 1u, _wgslsmith_mult_u32(0u, u_input.c.x), ~5199u)) % vec3<u32>(32u));
            }
        }
        global0 = array<vec3<bool>, 4>();
    }
    global0 = array<vec3<bool>, 4>();
    let var_0 = Struct_3(1u, any(select(!vec2<bool>(false, false), select(!vec2<bool>(true, false), !vec2<bool>(false, false), !vec2<bool>(false, false)), select(!vec2<bool>(false, true), !vec2<bool>(false, false), !vec2<bool>(true, true)))), vec3<bool>(true, all(!(!vec2<bool>(false, false))), !false), !vec2<bool>(_wgslsmith_add_i32(u_input.d, u_input.b) > 0, !(!true)), u_input.c.x);
    for (var var_1 = -1; false; var_1 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.d), vec3<i32>(0, -14382, u_input.b)), -(~vec3<i32>(u_input.d, 26406, u_input.b))), (vec3<i32>(-20334, u_input.d, 25970) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-14061, u_input.a, 1), select(vec3<i32>(-1, -13226, 7564), vec3<i32>(0, u_input.b, -2630), var_0.d.x))) >> ((~reverseBits(vec3<u32>(0u, var_0.a, 39830u)) >> (vec3<u32>(max(var_0.e, u_input.c.x), ~u_input.c.x, var_0.e) % vec3<u32>(32u))) % vec3<u32>(32u)));
        let var_2 = var_0;
        var var_3 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(select(u_input.d, u_input.b, false), u_input.b, select(-34800, -13823, var_0.d.x), -u_input.a)) >> (~(~vec4<u32>(0u, u_input.c.x, var_2.e, 0u) & vec4<u32>(0u, 7184u, u_input.c.x, var_2.a)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1) * -vec4<i32>(1, 30241, u_input.b, 29103), min(~vec4<i32>(u_input.b, u_input.a, u_input.b, -412), reverseBits(vec4<i32>(u_input.a, -2147483648, u_input.a, 0))) & vec4<i32>(u_input.a, i32(-1) * -39479, u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.d))));
        continue;
    }
    if (var_0.c.x) {
    }
    return select(var_0.d.x, var_0.d.x, var_0.c.x);
}

fn func_7(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2) -> i32 {
    switch (-18652) {
        case -21962: {
            for (; !arg_1; ) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_0 = arg_2.b;
                let var_1 = select(!(!select(!vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), arg_1)), select(select(!(!vec2<bool>(true, true)), vec2<bool>(true, arg_1 == arg_1), any(!global0[_wgslsmith_index_u32(u_input.c.x, 4u)])), !(!vec2<bool>(true, arg_1)), arg_1), !vec2<bool>(arg_1, arg_1 == any(vec4<bool>(false, true, arg_1, arg_1))));
            }
        }
        case 41551: {
            return -17760;
        }
        case 2147483647: {
            let var_0 = vec4<bool>(false, all(vec3<bool>(arg_1, all(!vec2<bool>(arg_1, true)), any(vec2<bool>(arg_1, true)))), false, any(!(!global0[_wgslsmith_index_u32(u_input.c.x, 4u)])));
            let var_1 = ~(_wgslsmith_mod_i32(arg_2.b.b, u_input.a) & u_input.b);
            var var_2 = !(!(1743.0 <= arg_2.a.x)) || all(var_0);
            if (!(arg_1 && false)) {
                let var_3 = -2147483648;
                var var_4 = select(!vec3<bool>(all(!vec3<bool>(arg_1, false, false)), all(vec2<bool>(false, false)), all(!var_0)), var_0.wzw, false | true);
                let var_5 = vec2<i32>(-2147483648, var_3);
            }
            var var_3 = arg_2.b;
        }
        default: {
        }
    }
    global0 = array<vec3<bool>, 4>();
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        if (all(!vec3<bool>(false, !false, !arg_1))) {
            let var_0 = vec2<bool>(arg_1, !(!false));
        }
    }
    if (arg_1) {
    }
    global0 = array<vec3<bool>, 4>();
    return _wgslsmith_add_i32(~(i32(-1) * -2147483648), -2147483648);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_0 = arg_1.b;
        continue;
    }
    switch (0) {
        case 69141: {
            switch (i32(-1) * -1) {
                default: {
                    global0 = array<vec3<bool>, 4>();
                }
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_0 = _wgslsmith_f_op_f32(-1095.0);
                var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(func_7(max(vec4<u32>(u_input.c.x, 41559u, 16888u, 17549u), ~vec4<u32>(4294967295u, 60550u, u_input.c.x, u_input.c.x)), func_6(), Struct_2(arg_1.a, Struct_1(arg_1.a, -26885))), 48128, arg_1.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(21231, 1), vec2<i32>(-2147483648, -29974)), vec2<i32>(arg_1.b, 8718)), _wgslsmith_mult_vec2_i32(vec2<i32>(-12610, arg_1.b), -vec2<i32>(16621, 0)))), -abs(firstTrailingBit(vec4<i32>(u_input.b, 5989, 1, arg_1.b))));
                var var_2 = vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))) & !false, func_6());
            }
        }
        case -11613: {
            if (all(select(select(vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), true), !vec4<bool>(false, u_input.c.x <= u_input.c.x, true, select(true, true, true)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true))))) {
                var var_0 = _wgslsmith_dot_vec4_i32(-firstTrailingBit(abs(vec4<i32>(-2147483648, 0, 43604, arg_1.b)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(39621u, 1u, 1710u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 28490u)) % vec4<u32>(32u))), max(~select(vec4<i32>(0, -1, u_input.d, arg_1.b), firstTrailingBit(vec4<i32>(-17900, u_input.b, u_input.b, -2147483648)), all(vec2<bool>(true, false))), select(-vec4<i32>(arg_1.b, arg_1.b, u_input.d, -1), abs(abs(vec4<i32>(-2660, u_input.d, 2147483647, arg_1.b))), all(vec2<bool>(false, false)))));
            }
            var var_0 = arg_1;
            var var_1 = !select(!(!global0[_wgslsmith_index_u32(27463u, 4u)]), global0[_wgslsmith_index_u32(~select(~u_input.c.x, u_input.c.x, -27017 <= 0), 4u)], vec3<bool>(!false, !false, u_input.b < 2147483647));
        }
        case 1: {
            global0 = array<vec3<bool>, 4>();
            global0 = array<vec3<bool>, 4>();
            global0 = array<vec3<bool>, 4>();
            let var_0 = arg_1;
            let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(359.0 * arg_0))), _wgslsmith_f_op_f32(arg_0 - -283.0), !false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a.x))), _wgslsmith_f_op_f32(trunc(arg_1.a.x)), 933.0), Struct_1(var_0.a, -(arg_1.b & ~arg_1.b)));
        }
        case -7125: {
            var var_0 = arg_1;
        }
        default: {
        }
    }
    global0 = array<vec3<bool>, 4>();
    for (var var_0 = -1; var_0 == 7456; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_1 = 23483u;
        continue;
    }
    if (select(!all(select(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)], vec3<bool>(false, false, false))) && ((!false || false) & (any(vec2<bool>(true, true)) && select(true, false, true))), true, any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))))) {
        let var_0 = Struct_3(u_input.c.x, true, !vec3<bool>(27196u >= ~u_input.c.x, countOneBits(u_input.c.x) < 1u, select(true, false, false) || !true), vec2<bool>(select(!(!true), !(32423u < u_input.c.x), func_6()), -57058 == -6371), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.c.x, 18828u), u_input.c.x, 5949u));
    }
    return Struct_3(firstTrailingBit(1u), func_6(), global0[_wgslsmith_index_u32(4294967295u, 4u)], select(select(select(!vec2<bool>(true, false), !vec2<bool>(true, false), !vec2<bool>(false, true)), vec2<bool>(true, !false), !false), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), !vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(vec2<bool>(true, false), vec2<bool>(false, false), false | true), false), !any(!vec2<bool>(true, false))), u_input.c.x);
}

fn func_4(arg_0: vec2<u32>) -> f32 {
    if (!(1865.0 != _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) {
    }
    global0 = array<vec3<bool>, 4>();
    let var_0 = func_5(1311.0, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-188.0, _wgslsmith_f_op_f32(f32(-1.0) * -1338.0), _wgslsmith_f_op_f32(-1307.0), _wgslsmith_f_op_f32(sign(-1040.0))))), _wgslsmith_div_i32(u_input.a, u_input.d)));
    switch (u_input.a) {
        default: {
            global0 = array<vec3<bool>, 4>();
        }
    }
    switch (u_input.d) {
        case -1: {
            global0 = array<vec3<bool>, 4>();
        }
        default: {
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                continue;
            }
            for (; ; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353.0) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(928.0, 112.0)))))), _wgslsmith_f_op_f32(step(-1275.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -450.0)))))));
                var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(702.0, var_1, !var_0.c.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)))) >= _wgslsmith_f_op_f32(-670.0);
                continue;
            }
            var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -841.0)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1214.0 * -1129.0), _wgslsmith_f_op_f32(f32(-1.0) * -1270.0))))));
            if (!true) {
                var var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1342.0 * -775.0), 263.0)) + -204.0), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, -120.0, 947.0, 1030.0)) + _wgslsmith_div_vec4_f32(vec4<f32>(950.0, -1989.0, 638.0, -2070.0), vec4<f32>(1464.0, -1136.0, 446.0, 285.0)))), ~0));
                let var_3 = vec2<i32>(abs(26734), -1) >> (~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.x, 1u), var_2.e), _wgslsmith_clamp_u32(~1u, 30769u, 66206u << (u_input.c.x % 32u))) % vec2<u32>(32u));
                global0 = array<vec3<bool>, 4>();
                let var_4 = var_0;
            }
            var var_2 = -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b ^ u_input.b, u_input.b) & ~abs(vec2<i32>(-1, u_input.b)), vec2<i32>(firstTrailingBit(0), i32(-1) * -47490));
        }
    }
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -468.0))) - -1062.0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(728.0)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(653.0 + -655.0))))), _wgslsmith_div_f32(-1212.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(249.0 + _wgslsmith_f_op_f32(-696.0))))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> Struct_2 {
    global0 = array<vec3<bool>, 4>();
    if (any(select(vec4<bool>(false, true, !(!false), !false), !vec4<bool>(false, any(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)), !false), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), !vec4<bool>(false, false, false, true), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(arg_1, 4u)])))))) {
        var var_0 = global0[_wgslsmith_index_u32(~(~arg_1), 4u)];
        let var_1 = !(!vec3<bool>((arg_1 | u_input.c.x) > reverseBits(u_input.c.x), !(var_0.x | var_0.x), !(!var_0.x)));
    }
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -1341.0)))), _wgslsmith_f_op_f32(func_4(vec2<u32>(firstTrailingBit(arg_1), u_input.c.x >> (u_input.c.x % 32u)))), _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.x, 267.0)) * -586.0)))), arg_0);
    switch (~min(arg_0.b, var_0.b.b)) {
        case -1: {
            var var_1 = var_0.b;
            global0 = array<vec3<bool>, 4>();
            var_1 = arg_0;
        }
        case 20792: {
            global0 = array<vec3<bool>, 4>();
            let var_1 = Struct_2(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1115.0))), arg_0);
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var_0 = Struct_2(arg_0.a, var_0.b);
                break;
            }
            global0 = array<vec3<bool>, 4>();
            let var_2 = abs(vec3<u32>(1u, firstTrailingBit(1u >> (arg_1 % 32u)), u_input.c.x));
        }
        case 37615: {
            global0 = array<vec3<bool>, 4>();
            if (false) {
            }
            let var_1 = ~firstLeadingBit(u_input.c) << (_wgslsmith_add_vec2_u32(reverseBits(~vec2<u32>(1u, 37622u) >> (~vec2<u32>(u_input.c.x, 41244u) % vec2<u32>(32u))), u_input.c) % vec2<u32>(32u));
            var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), 645.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), 1860.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -520.0)))))), arg_2);
        }
        default: {
        }
    }
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), var_0.a.x, _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(-var_0.b.a.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false)), _wgslsmith_f_op_f32(var_0.b.a.x - var_0.b.a.x), _wgslsmith_f_op_f32(1139.0 * var_0.b.a.x), _wgslsmith_f_op_f32(395.0 + var_0.b.a.x)))), var_0.b);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-619.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1451.0 + -595.0))), arg_0.a.x, 870.0)), Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.b.a, arg_0.a, vec4<bool>(true, -1000.0 == 1000.0, !true, !true))), _wgslsmith_add_i32(arg_0.b, u_input.d)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_0 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-216.0, 707.0, 364.0, 1084.0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1404.0, 712.0, -334.0, 1073.0)))), i32(-1) * -(i32(-1) * -2147483648)), u_input.c.x, u_input.b);
    }
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-450.0, 1000.0, 1036.0, -1523.0))))))), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(1, 2147483647, -47686), abs(vec3<i32>(-1, u_input.d, 38047)))));
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), 0);
        global0 = array<vec3<bool>, 4>();
        let var_1 = vec2<i32>(u_input.a, i32(-1) * -12967);
        return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(func_4(vec2<u32>(20298u, u_input.c.x)))))))))));
    }
    var var_1 = ((firstTrailingBit(~vec2<u32>(u_input.c.x, u_input.c.x)) ^ vec2<u32>(u_input.c.x, reverseBits(5566u))) | firstLeadingBit(u_input.c)) << (u_input.c % vec2<u32>(32u));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        let var_2 = func_5(196.0, func_3(func_3(Struct_1(var_0.a, 21356 & 1), u_input.c.x, func_7(vec4<u32>(4294967295u, u_input.c.x, var_1.x, var_1.x), arg_0, Struct_2(var_0.a, Struct_1(var_0.a, u_input.b)))).b, countOneBits(_wgslsmith_mod_u32(~65807u, ~u_input.c.x)), var_0.b & u_input.a).b);
        continue;
    }
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-396.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309.0 * _wgslsmith_f_op_f32(-var_0.a.x)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> bool {
    global0 = array<vec3<bool>, 4>();
    for (; ; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-566.0, -558.0, _wgslsmith_f_op_f32(func_2(true, vec4<bool>(false, arg_0.x, arg_0.x, true))), _wgslsmith_f_op_f32(-1534.0))))), -19396 >> (41728u % 32u));
    }
    if (arg_0.x) {
        if (arg_0.x) {
            let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-618.0)), 478.0, _wgslsmith_f_op_f32(f32(-1.0) * -386.0), _wgslsmith_f_op_f32(130.0 - 301.0)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -891.0), _wgslsmith_f_op_f32(1285.0 + -875.0), _wgslsmith_f_op_f32(360.0 + -341.0), _wgslsmith_f_op_f32(-1497.0))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1564.0, -849.0, -441.0, -1000.0) + vec4<f32>(244.0, 235.0, 138.0, 816.0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-740.0, -1380.0, 240.0, 809.0))))), _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -2147483648, -49747), vec3<i32>(-31071, u_input.d, -17809)), vec3<i32>(21842, 1720, u_input.a) & vec3<i32>(u_input.a, u_input.a, arg_1.x)), -vec3<i32>(-u_input.b, arg_1.x, -37682)));
            global0 = array<vec3<bool>, 4>();
            let var_1 = !vec2<bool>(62155 < (var_0.b & _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, var_0.b, -2147483648), vec3<i32>(var_0.b, 66098, u_input.d))), true);
            var var_2 = Struct_3(select(~(~(u_input.c.x ^ u_input.c.x)), u_input.c.x, arg_0.x), !(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(9678u, u_input.c.x)) <= _wgslsmith_mult_u32(1u, ~2326u)), select(select(!func_5(var_0.a.x, var_0).c, vec3<bool>(!var_1.x, !false, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c.x, 16146u, 4294967295u)), vec3<u32>(u_input.c.x, arg_2.x, arg_2.x)), 4u)]), global0[_wgslsmith_index_u32(u_input.c.x, 4u)], vec3<bool>(all(select(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], vec3<bool>(var_1.x, false, true), global0[_wgslsmith_index_u32(0u, 4u)])), false, false)), func_5(_wgslsmith_f_op_f32(f32(-1.0) * -1302.0), var_0).d, countOneBits(4294967295u));
        }
        global0 = array<vec3<bool>, 4>();
        var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-244.0, 605.0) - vec2<f32>(-470.0, -1858.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1308.0, 472.0))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_4(arg_2.zy)), _wgslsmith_f_op_f32(max(247.0, -700.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2483.0, -376.0) + vec2<f32>(573.0, 1645.0)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1572.0 + -579.0), -1269.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1185.0 - -1912.0))), _wgslsmith_f_op_f32(212.0 + _wgslsmith_div_f32(516.0, _wgslsmith_f_op_f32(f32(-1.0) * -127.0)))));
        let var_1 = u_input.b;
    }
    global0 = array<vec3<bool>, 4>();
    for (var var_0 = 0; var_0 >= 27301; var_0 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            break;
        }
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            global0 = array<vec3<bool>, 4>();
        }
        switch (i32(-1) * -2147483648) {
            case 12960: {
                break;
            }
            default: {
            }
        }
        break;
    }
    return true;
}

fn func_8(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-217.0, -241.0, _wgslsmith_f_op_f32(-arg_0.b.a.x), arg_0.b.a.x) + arg_0.a))), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(floor(arg_0.a)), -u_input.b >> (26963u % 32u)), 11878u, select(~30275, 0, arg_1 || false) ^ (_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a) << (u_input.c.x % 32u))).b);
    for (var var_1 = -2147483648; var_1 == -2147483648; var_1 -= 1) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        if (arg_3 & arg_1) {
            var var_2 = Struct_3(63351u, false, global0[_wgslsmith_index_u32(arg_2.x, 4u)], !(!vec2<bool>(!true, true)), u_input.c.x << (arg_2.x % 32u));
            var var_3 = func_3(arg_0.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(select(~0u, 99039u, !arg_3), ~arg_2.x), u_input.c.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-11162, -2147483648 | 2147483647, ~(-61397), ~0)), max(~vec4<i32>(var_0.b.b, arg_0.b.b, u_input.b, u_input.d), vec4<i32>(u_input.d, 2147483647, 5694, i32(-1) * -1)))).b;
            var_3 = func_3(var_0.b, ~(~1u), u_input.a).b;
            let var_4 = _wgslsmith_f_op_f32(-arg_0.a.x);
        }
        global0 = array<vec3<bool>, 4>();
    }
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(562.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-643.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.x, 341.0)))));
    var var_3 = _wgslsmith_sub_i32(~arg_0.b.b, 1) << (~(~countOneBits(u_input.c.x)) % 32u);
    return func_3(func_3(arg_0.b, arg_2.x ^ ~(~0u), ~(-38312)).b, reverseBits(select(arg_2.x, arg_2.x, !(!arg_3))), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a, _wgslsmith_mod_i32(var_0.b.b << (u_input.c.x % 32u), 1), -25519, ~2147483647), -(~firstLeadingBit(vec4<i32>(1, -2147483648, 21667, arg_0.b.b))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    switch (~u_input.b) {
        default: {
            let var_0 = u_input.c.x;
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                global0 = array<vec3<bool>, 4>();
                let var_1 = func_8(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-599.0, 477.0, 1351.0, -1000.0) - vec4<f32>(-1348.0, -237.0, -315.0, -105.0))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-915.0, -598.0, 577.0, -409.0) - vec4<f32>(-298.0, 1278.0, -1606.0, 306.0)) - vec4<f32>(1337.0, -1815.0, -364.0, -1329.0)), i32(-1) * -15623)), any(global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<u32>(countOneBits(~18484u << (~0u % 32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, abs(u_input.c.x)), 1u), 0u), func_1(select(!vec2<bool>(false, false), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), !vec2<bool>(true, false)), ~vec2<i32>(-3684 << (u_input.c.x % 32u), u_input.b ^ 2147483647), vec4<u32>(~(11280u ^ 20276u), ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), max(u_input.c.x, abs(u_input.c.x)), ~(~69608u))));
                global0 = array<vec3<bool>, 4>();
            }
            var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_8(Struct_2(vec4<f32>(-1000.0, -1000.0, -287.0, 1413.0), Struct_1(vec4<f32>(293.0, 1502.0, -698.0, 143.0), 1)), func_6(), ~vec3<u32>(34462u, 62943u, 49985u), !true).a)), u_input.d);
            for (; (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, ~8298u, ~var_0, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, 1u, u_input.c.x, 33129u) & vec4<u32>(1u, 28886u, var_0, 1u), vec4<u32>(1u, 38532u, var_0, 16916u))) > ~countOneBits(u_input.c.x)) & !true; ) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var_1 = func_3(func_8(func_3(func_8(func_3(Struct_1(var_1.a, 36378), 1u, 30510), !false, ~vec3<u32>(38438u, var_0, 4294967295u), false), u_input.c.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1, var_1.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -10610), vec2<i32>(-7592, 29808)))), true, select(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_0), vec3<u32>(71748u, 48003u, 94447u)), firstTrailingBit(vec3<u32>(u_input.c.x, u_input.c.x, 57114u)), !(false | false)), func_6()), _wgslsmith_dot_vec2_u32(~u_input.c | vec2<u32>(u_input.c.x, ~0u), countOneBits(vec2<u32>(1u, var_0))), firstTrailingBit(_wgslsmith_div_i32(u_input.d, countOneBits(var_1.b)))).b;
            }
            var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(var_1.a.x - -1369.0)), _wgslsmith_f_op_f32(f32(-1.0) * -407.0), 1019.0, _wgslsmith_f_op_f32(ceil(func_3(Struct_1(var_1.a, 0), 32808u, -2147483648).b.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 1095.0), vec4<f32>(var_1.a.x, var_1.a.x, -1228.0, var_1.a.x))))))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, var_1.b, var_1.b) & vec3<i32>(var_1.b, 0, -35976), abs(vec3<i32>(var_1.b, var_1.b, -2147483648))), ~_wgslsmith_clamp_i32(0, u_input.d, var_1.b), ~(-2147483648) & u_input.d, ~(-8446)), reverseBits(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(2147483647, u_input.a, 0, u_input.b)), vec4<i32>(-2147483648, u_input.a, 25759, -1), vec4<i32>(u_input.b, var_1.b, u_input.a, 49732)))));
        }
    }
    if (!(func_5(1313.0, func_3(Struct_1(vec4<f32>(-1000.0, 287.0, -216.0, -1798.0), 23352), 102433u, u_input.d | 1).b).b || !false)) {
        global0 = array<vec3<bool>, 4>();
        let var_0 = _wgslsmith_div_i32(u_input.b, -2147483648);
    }
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2102.0)), _wgslsmith_f_op_f32(abs(327.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1047.0) - _wgslsmith_div_f32(-1081.0, 1015.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1315.0))))) * -342.0);
    if (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~(~vec2<u32>(u_input.c.x, u_input.c.x)))) - -889.0) < var_0) {
        loop {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            let var_1 = vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.c.x, u_input.c.x, 28399u)), ~(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) << ((vec3<u32>(106815u, u_input.c.x, 42598u) >> (vec3<u32>(0u, 0u, 15289u) % vec3<u32>(32u))) % vec3<u32>(32u)))), ~u_input.c.x);
            var var_2 = Struct_3(min(~(~var_1.x), _wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 3514u), _wgslsmith_mod_u32(var_1.x, _wgslsmith_mult_u32(var_1.x, var_1.x)))), any(vec2<bool>(any(!vec3<bool>(false, true, true)), (46424u >= var_1.x) || true)), func_5(_wgslsmith_f_op_f32(func_4(vec2<u32>(u_input.c.x ^ u_input.c.x, reverseBits(var_1.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -249.0, 119.0, var_0) + vec4<f32>(var_0, -336.0, var_0, -198.0)), u_input.a)).c, select(func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0, var_0)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-227.0, 488.0, -302.0, -1000.0) * vec4<f32>(var_0, 434.0, var_0, var_0)), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.d))).d, vec2<bool>(func_1(vec2<bool>(false, true), vec2<i32>(u_input.a, -14879), ~vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u)), !(!false)), !func_5(_wgslsmith_f_op_f32(func_2(true, vec4<bool>(true, true, true, false))), func_8(Struct_2(vec4<f32>(var_0, -351.0, var_0, var_0), Struct_1(vec4<f32>(var_0, var_0, -443.0, var_0), u_input.b)), false, var_1, false)).c.zz), min(37496u, countOneBits(u_input.c.x)));
            var var_3 = vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(529.0, _wgslsmith_f_op_f32(round(1335.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000.0)) * -731.0));
            continue;
        }
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            break;
        }
        loop {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            let var_1 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(500.0, var_0, 1726.0, var_0) - vec4<f32>(var_0, var_0, var_0, var_0)))), u_input.b), ~(~1u), _wgslsmith_sub_i32(~_wgslsmith_sub_i32(func_8(Struct_2(vec4<f32>(var_0, var_0, var_0, var_0), Struct_1(vec4<f32>(var_0, 332.0, var_0, -514.0), u_input.d)), true, vec3<u32>(u_input.c.x, 1u, 21342u), true).b, -1), _wgslsmith_mod_i32((u_input.d << (u_input.c.x % 32u)) & -35027, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, -1), func_3(Struct_1(vec4<f32>(var_0, var_0, 143.0, -472.0), -1), 51926u, u_input.b).b.b))));
            global0 = array<vec3<bool>, 4>();
            var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483648, 2147483647, 2147483647, -2147483648), vec4<i32>(2147483647, -1, 2147483647, var_1.b.b)), ~vec4<i32>(-2147483648, var_1.b.b, u_input.d, u_input.d))), var_1.b.b, 50619, -1), ~_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(u_input.a, 2147483647, var_1.b.b, 1)), select(vec4<i32>(-4803, u_input.d, var_1.b.b, u_input.d), -vec4<i32>(-1, -772, u_input.b, u_input.a), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), vec4<i32>(u_input.a, ~(-1), 796, _wgslsmith_div_i32(-13896, var_1.b.b))), max(-_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, 1, var_1.b.b, var_1.b.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.b, 2147483647, -13556, 1), vec4<i32>(var_1.b.b, 2147483647, 1, 1), vec4<i32>(-16878, 1057, u_input.a, var_1.b.b))), -(vec4<i32>(u_input.d, 1, var_1.b.b, -26901) & vec4<i32>(-43195, u_input.a, 27876, -16166))));
            var var_3 = -4861;
            break;
        }
        global0 = array<vec3<bool>, 4>();
    }
    let var_1 = _wgslsmith_f_op_f32(ceil(var_0));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5131u, u_input.c.x, u_input.c.x), vec4<u32>(9874u, 4294967295u, 1u, u_input.c.x)) ^ u_input.c.x, ~abs(12527u)), u_input.c.x, 1u, min(~abs(u_input.c.x), u_input.c.x & (4294967295u | 29437u))), _wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(u_input.c.x, u_input.c.x, 54584u, u_input.c.x)), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 0u, 7753u, 6978u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)))) | reverseBits(~(vec4<u32>(u_input.c.x, 33360u, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.c.x, 42597u, 1u, u_input.c.x))));
    global0 = array<vec3<bool>, 4>();
    switch (-(~(~select(u_input.a, func_8(Struct_2(vec4<f32>(-1000.0, -220.0, var_1, -622.0), Struct_1(vec4<f32>(405.0, var_0, var_1, var_0), u_input.a)), true, var_2.wzw, true).b, !false)))) {
        case -12754: {
            let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-913.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(907.0 + 542.0), _wgslsmith_f_op_f32(sign(645.0)), !true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-519.0, -472.0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2459.0, -1097.0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_0) - vec2<f32>(-1000.0, 1265.0)))))));
            global0 = array<vec3<bool>, 4>();
            let var_4 = ~(~4294967295u);
            var var_5 = any(!(!vec4<bool>(!true, true | true, true || true, false)));
            let var_6 = ~_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(20380u, _wgslsmith_mod_u32(var_2.x, u_input.c.x ^ var_2.x), select(4294967295u, var_4, !false)));
        }
        default: {
            return;
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.b), vec4<u32>(_wgslsmith_add_u32(var_2.x << (u_input.c.x % 32u), reverseBits(var_2.x)), 19513u, ~(u_input.c.x | u_input.c.x), ~u_input.c.x), -(~firstLeadingBit(reverseBits(vec3<i32>(1, -37538, 2378)))), select(_wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 32580, u_input.d), vec3<i32>(22996, -1, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483648, -9249, 1), firstLeadingBit(vec3<i32>(-1, -1, -320)))), min(min(min(vec3<i32>(2943, 41710, u_input.b), vec3<i32>(4667, u_input.a, -42417)), vec3<i32>(u_input.d, 2855, 1) | vec3<i32>(-1, u_input.b, u_input.d)), select(-vec3<i32>(-1, u_input.b, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 5738, u_input.a), vec3<i32>(u_input.d, u_input.d, u_input.b)), true)), vec3<bool>(func_1(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<i32>(u_input.a, 52144), countOneBits(var_2)), any(!vec2<bool>(true, true)), true)));
}

