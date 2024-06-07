// {"0:0":[162,150,245,228,78,48,18,213,162,0,173,22,40,225,251,13,161,199,36,41,146,122,104,194,35,119,156,241,175,89,62,150,176,143,37,11,19,54,193,125,59,142,122,160,78,173,97,139,170,12,68,101,31,30,38,30,3,54,81,190,36,75,95,106]}
// Seed: 4645127671134344345

struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> LOOP_COUNTERS: array<u32, 32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = Struct_1(firstTrailingBit(4294967295u), all(!vec4<bool>(!false, !false, arg_1, arg_1)), 27945u, vec2<f32>(_wgslsmith_f_op_f32(exp2(1483.0)), _wgslsmith_f_op_f32(526.0 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -540.0))))));
    var var_1 = u_input.b;
    var_1 = ~var_0.a;
    global0 = firstTrailingBit(~(~var_0.c)) ^ min(var_0.c, ~u_input.a);
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    return _wgslsmith_mult_u32(reverseBits(var_0.c), min(u_input.a, var_0.c));
}

fn func_6(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1850.0, 1347.0, 112.0, 199.0) - vec4<f32>(841.0, -811.0, 1147.0, 1556.0)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1965.0, 115.0, -1648.0, 1761.0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(497.0, -584.0, 579.0, 716.0))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(358.0, -577.0))))), 1441.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1308.0)) * _wgslsmith_f_op_f32(1618.0 * _wgslsmith_f_op_f32(f32(-1.0) * -1402.0))), 892.0)));
    global0 = abs(u_input.a >> (4294967295u % 32u));
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        var var_1 = _wgslsmith_div_u32(4646u, _wgslsmith_add_u32(u_input.e.x, u_input.a));
        let var_2 = Struct_3(Struct_1(firstLeadingBit(~83299u), _wgslsmith_mod_u32(48255u, min(u_input.a, u_input.e.x)) < abs(reverseBits(u_input.e.x)), 30725u, vec2<f32>(-963.0, var_0.x)), vec3<i32>(-18068, 56632, -firstLeadingBit(reverseBits(arg_0))));
        global0 = _wgslsmith_add_u32(4294967295u, ((u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.a, u_input.a), vec2<u32>(var_2.a.a, 4294967295u)) % 32u)) & u_input.a) | 1u);
        var var_3 = firstTrailingBit(max(abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647, u_input.d, -2147483648, arg_0), vec4<i32>(-1, var_2.b.x, -59009, arg_0))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, var_2.b.x, -1, 30306), vec4<i32>(2147483647, arg_0, arg_0, var_2.b.x)), select(vec4<i32>(u_input.d, -13254, 2147483647, var_2.b.x), vec4<i32>(-8160, 1, u_input.d, -2147483648), var_2.a.b)), reverseBits(firstLeadingBit(vec4<i32>(arg_0, 1, -2147483648, var_2.b.x))))));
        continue;
    }
    switch (_wgslsmith_dot_vec4_i32(~countOneBits(max(reverseBits(vec4<i32>(-8416, -24164, arg_0, u_input.d)), vec4<i32>(-30518, arg_0, 39737, -2147483648))), ~firstLeadingBit(~(~vec4<i32>(1, 10367, u_input.d, arg_0))))) {
        case 33701: {
            let var_1 = min(firstTrailingBit(max(firstLeadingBit(select(vec3<i32>(-1, arg_0, -2147483648), vec3<i32>(arg_0, u_input.d, arg_0), true)), vec3<i32>(-u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(arg_0, u_input.d, 2147483647)), arg_0))), -((vec3<i32>(arg_0, -13221, arg_0) ^ select(vec3<i32>(arg_0, arg_0, u_input.d), vec3<i32>(arg_0, 1, u_input.d), vec3<bool>(false, true, true))) << (u_input.e % vec3<u32>(32u))));
        }
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                continue;
            }
            global0 = ~16910u;
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(min(max(u_input.b, u_input.c.x) | 4294967295u, _wgslsmith_clamp_u32(~28222u, ~51752u, _wgslsmith_add_u32(36212u, u_input.c.x))), ~u_input.a, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.a, ~u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 6786u), vec2<u32>(u_input.a, 0u)))), ~u_input.c);
                global0 = var_1;
                continue;
            }
            switch (arg_0 ^ u_input.d) {
                case 9232: {
                    global0 = _wgslsmith_div_u32(55678u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 36647u, 0u), ~u_input.c.wzz), ~func_1(u_input.d, false)), 17969u));
                    global0 = 4294967295u;
                }
                case -1867: {
                }
                case 29854: {
                    let var_1 = vec2<i32>(_wgslsmith_sub_i32(-1, min(select(u_input.d, 18877, true), _wgslsmith_dot_vec2_i32(vec2<i32>(0, arg_0), vec2<i32>(u_input.d, -2147483648)))) >> (u_input.a % 32u), select(u_input.d, -29376, select(!true, !(1782.0 <= var_0.x), false)));
                    return !true;
                }
                case 18639: {
                    global0 = u_input.c.x & u_input.a;
                    var var_1 = Struct_1(_wgslsmith_sub_u32(1u, 76745u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1385.0) + _wgslsmith_f_op_f32(-var_0.x)), 716.0)) > -1107.0, ~u_input.b, var_0.xw);
                }
                default: {
                    var var_1 = Struct_2(-u_input.d, !select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, any(vec4<bool>(true, false, false, false)), true), vec3<bool>(all(vec2<bool>(false, false)), 0u < u_input.e.x, true)), Struct_1(_wgslsmith_mod_u32(select(~u_input.b, 1u | 27572u, false), 0u), true, 3400u, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(sign(616.0))), _wgslsmith_div_vec2_f32(vec2<f32>(1151.0, var_0.x), vec2<f32>(-106.0, var_0.x)))), Struct_1(_wgslsmith_mod_u32(~(~u_input.b), u_input.a), !(!true), firstTrailingBit(u_input.a), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, -703.0, all(vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(ceil(var_0.x))))), Struct_1(~(~u_input.e.x), all(vec3<bool>(!true, var_0.x == 1583.0, false)), u_input.e.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(var_0.ww, var_0.wz)), _wgslsmith_f_op_vec2_f32(var_0.ww * vec2<f32>(406.0, 485.0))))));
                    var var_2 = _wgslsmith_add_vec4_u32(~(~_wgslsmith_mult_vec4_u32(u_input.c, abs(vec4<u32>(0u, u_input.b, 18319u, 39352u)))), u_input.c << (~u_input.c % vec4<u32>(32u)));
                    var_1 = Struct_2(firstTrailingBit(~(~(-4570)) << (~func_1(var_1.a, var_1.b.x) % 32u)), !var_1.b, var_1.d, Struct_1(_wgslsmith_mod_u32(var_2.x, var_1.e.c), var_1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~23361u, ~var_2.x), firstLeadingBit(vec2<u32>(var_1.d.a, var_2.x)) << (~vec2<u32>(4294967295u, 55374u) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-252.0, 270.0))), var_1.c.d), var_1.c.d))), var_1.c);
                }
            }
            var var_1 = Struct_3(Struct_1(abs(~(u_input.b & u_input.e.x)), !false, u_input.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xw - var_0.zy)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.yx * vec2<f32>(565.0, var_0.x)))), true))), firstTrailingBit(-(~vec3<i32>(-1, -3842, 0)) & vec3<i32>(u_input.d, u_input.d, u_input.d << (u_input.a % 32u))));
        }
        default: {
            if (false) {
                global0 = abs(u_input.b << (max(reverseBits(61616u), ~(~u_input.c.x)) % 32u));
                global0 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x, 4506u), func_1(2147483647 & 45760, false)) & 1u;
                let var_1 = Struct_5(countOneBits(u_input.c.x), _wgslsmith_f_op_vec3_f32(-var_0.zxy), u_input.c.x);
                global0 = 11677u;
                global0 = 57559u;
            }
            let var_1 = u_input.c.wyx;
        }
    }
    global0 = u_input.c.x;
    return true;
}

fn func_5() -> f32 {
    let var_0 = 2147483647;
    for (; false && !any(vec2<bool>(func_6(-22619), all(vec2<bool>(false, true)))); ) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        continue;
    }
    if ((9246 != var_0) | all(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(1017.0 <= 748.0, false), false))) {
        return _wgslsmith_f_op_f32(max(-1901.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-934.0 * _wgslsmith_f_op_f32(abs(1000.0))), _wgslsmith_div_f32(1767.0, _wgslsmith_f_op_f32(f32(-1.0) * -276.0)))))));
    }
    let var_1 = vec2<bool>(all(!vec4<bool>(false, true, true, true)) | !func_6(u_input.d), u_input.d >= _wgslsmith_sub_i32(u_input.d, 2147483647));
    global0 = 1u;
    return _wgslsmith_f_op_f32(round(-1153.0));
}

fn func_4() -> vec3<bool> {
    for (var var_0 = -30250; false; global0 = _wgslsmith_dot_vec4_u32(u_input.c << (~(~(~u_input.c)) % vec4<u32>(32u)), vec4<u32>(~19186u & 61817u, reverseBits(u_input.b) ^ u_input.a, u_input.a, u_input.c.x))) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_5()), _wgslsmith_f_op_f32(exp2(578.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(862.0 + 202.0), _wgslsmith_f_op_f32(-420.0 * 1146.0))))));
        switch (~u_input.d) {
            case 0: {
                var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - -370.0), _wgslsmith_f_op_f32(-var_1.x), -256.0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000.0, 1537.0, -1000.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, var_1.x, 890.0)))))));
                global0 = 34854u;
                var var_2 = vec2<u32>(select(~(~u_input.c.x), (0u >> (u_input.b % 32u)) & 1u, 545.0 > -176.0), reverseBits(u_input.a)) ^ (~vec2<u32>(102736u, u_input.b) | vec2<u32>(~u_input.c.x, u_input.a));
                continue;
            }
            case 1: {
                let var_2 = ~u_input.a;
                var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-269.0, var_1.x, -297.0)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-869.0, var_1.x, var_1.x))))) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-486.0), _wgslsmith_f_op_f32(-392.0 + var_1.x))), var_1.x, 1000.0)));
                var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) + var_1.x);
            }
            case -1: {
                let var_2 = Struct_4(u_input.d, Struct_2((min(u_input.d, u_input.d) & 2147483647) | u_input.d, !vec3<bool>(true & false, false, false), Struct_1(_wgslsmith_clamp_u32(u_input.c.x, 1u, 6775u), _wgslsmith_f_op_f32(-var_1.x) >= var_1.x, ~u_input.b, var_1.yy), Struct_1(countOneBits(0u) | 0u, !(!false), _wgslsmith_dot_vec3_u32(countOneBits(u_input.e), vec3<u32>(u_input.e.x, u_input.e.x, 1u) >> (u_input.c.yzx % vec3<u32>(32u))), var_1.xz), Struct_1(_wgslsmith_add_u32(u_input.e.x, 0u), any(!vec3<bool>(false, true, false)), countOneBits(39484u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000.0, -821.0), var_1.zx)))))), Struct_2(i32(-1) * -2147483648, !vec3<bool>(!true, all(vec2<bool>(true, false)), !true), Struct_1(~abs(u_input.a), all(!vec2<bool>(false, false)), _wgslsmith_mult_u32(41143u >> (1u % 32u), ~u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yx))), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.e.x, 5588u), u_input.c), false, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.e.x), vec2<u32>(0u, u_input.b)), ~vec2<u32>(u_input.b, u_input.b)), var_1.zx), Struct_1(u_input.e.x, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, 1u), u_input.e.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - var_1.zz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1049.0, var_1.x))))));
            }
            default: {
                continue;
            }
        }
        switch (u_input.d) {
            default: {
                let var_2 = Struct_5(abs(u_input.c.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-267.0, 1209.0, -1000.0) + vec3<f32>(var_1.x, 266.0, var_1.x))), vec3<f32>(var_1.x, var_1.x, 1916.0), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))))))), 26297u);
                break;
            }
        }
        continue;
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_0 = Struct_1(69942u, !false, 1u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-748.0, 1000.0, true)), _wgslsmith_f_op_f32(223.0 - -1078.0)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(894.0, 2627.0) * vec2<f32>(206.0, -666.0))))))));
        var var_1 = _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(floor(-606.0)));
        var_0 = Struct_1(24132u, !func_6(u_input.d), min(u_input.a, 0u), var_0.d);
        var var_2 = Struct_1(_wgslsmith_mod_u32(1u, ~(~u_input.c.x)), var_0.b, var_0.c, var_0.d);
    }
    global0 = _wgslsmith_add_u32(1u, u_input.a);
    switch (abs(i32(-1) * -(firstLeadingBit(u_input.d) >> (firstTrailingBit(u_input.c.x) % 32u)))) {
        case -1: {
            global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(28205u, u_input.e.x, u_input.a) | vec3<u32>(u_input.c.x, 4294967295u, 0u)), abs(u_input.c.zwy) ^ vec3<u32>(abs(74767u), _wgslsmith_clamp_u32(u_input.e.x, u_input.c.x, u_input.b), ~u_input.a)), u_input.e);
            switch (u_input.d) {
                case -1048: {
                    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, ~u_input.a, ((u_input.c.x & u_input.e.x) & (u_input.b & u_input.b)) >> (func_1(reverseBits(2147483647), false | true) % 32u)), vec4<u32>(23042u, ~(~3900u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.e.x), vec2<u32>(1u, u_input.b))), _wgslsmith_add_u32(77376u, _wgslsmith_add_u32(u_input.a, u_input.b)), _wgslsmith_div_u32(~reverseBits(4294967295u), 43231u)));
                    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-195.0 * -743.0), _wgslsmith_f_op_f32(abs(-1064.0))));
                    global0 = countOneBits(var_0.x);
                }
                case 1: {
                    let var_0 = countOneBits(-54930);
                    global0 = ~(~(~72157u));
                    var var_1 = Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(firstTrailingBit(u_input.a)), firstLeadingBit(u_input.b), u_input.b << (_wgslsmith_dot_vec3_u32(u_input.e, u_input.e) % 32u), 21967u), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 15653u, u_input.a), u_input.c)) ^ vec4<u32>(95827u & u_input.a, reverseBits(u_input.e.x), u_input.b, 0u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-855.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(261.0 - -1343.0), _wgslsmith_f_op_f32(f32(-1.0) * -227.0)), -2063.0))), ~_wgslsmith_add_u32(0u, ~(~82493u)));
                    global0 = u_input.b;
                    var_1 = Struct_5(1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.b), var_1.b))), var_1.b), _wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.a, 69751u, 4294967295u) << (u_input.c.yxz % vec3<u32>(32u)))), u_input.e));
                }
                case 4592: {
                    global0 = ~33824u;
                    var var_0 = -7933;
                }
                case -1: {
                    global0 = ~(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(min(34456u, 43947u), ~u_input.e.x), abs(u_input.e.x << (u_input.a % 32u))));
                    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136.0)), -874.0, _wgslsmith_f_op_f32(func_5())));
                    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1000.0) + vec3<f32>(708.0, var_0.x, 865.0)))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-364.0, var_0.x, 385.0)))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(924.0))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-184.0, -565.0, var_0.x))))))));
                }
                default: {
                    global0 = ~reverseBits(firstTrailingBit(~(~4159u)));
                }
            }
            for (var var_0 = 0; all(!(!(!vec2<bool>(false, true)))); var_0 += 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_1 = Struct_4(-50979, Struct_2(-1 ^ countOneBits(u_input.d), select(vec3<bool>(false, false, false | false), vec3<bool>(false, 4294967295u <= u_input.a, true && true), true), Struct_1(~firstLeadingBit(4294967295u), !(u_input.d != u_input.d), ~45742u, vec2<f32>(_wgslsmith_f_op_f32(-210.0 * -1000.0), _wgslsmith_f_op_f32(abs(438.0)))), Struct_1(u_input.b, all(!vec4<bool>(false, false, true, true)), reverseBits(select(1u, 1u, false)), vec2<f32>(_wgslsmith_f_op_f32(1069.0 + 1000.0), _wgslsmith_f_op_f32(floor(327.0)))), Struct_1(reverseBits(1u), true, min(~4294967295u, 1u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-1363.0, -518.0), vec2<f32>(-158.0, -819.0)))))), Struct_2(0, select(vec3<bool>(any(vec2<bool>(true, true)), false, !true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), !vec3<bool>(true, false, true)), all(vec4<bool>(false, false, true, false))), Struct_1(u_input.b, false & all(vec2<bool>(false, false)), ~4294967295u << (31156u % 32u), vec2<f32>(-821.0, _wgslsmith_f_op_f32(-1000.0))), Struct_1(reverseBits(1u) & u_input.e.x, any(vec4<bool>(true, true, false, true)), abs(4294967295u & 92932u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(128.0, -915.0))), Struct_1(u_input.c.x, !false == !true, ~min(u_input.e.x, 1u), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-612.0, -1449.0))))));
                var_1 = Struct_4(509, var_1.b, Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1, 1374, 0), vec3<i32>(var_1.c.a, u_input.d, -1)), vec3<i32>(var_1.a, 59272, u_input.d)), vec3<i32>(firstLeadingBit(var_1.b.a), ~u_input.d, var_1.b.a)), var_1.b.b, Struct_1(max(60090u, 1u), true, 1u, var_1.c.d.d), Struct_1(4294967295u, !var_1.c.e.b, _wgslsmith_mult_u32(var_1.c.c.c ^ u_input.b, _wgslsmith_div_u32(0u, 4294967295u)), var_1.b.e.d), Struct_1(_wgslsmith_mult_u32(max(42049u, var_1.b.c.a), max(4294967295u, 14893u)), var_1.c.d.b, _wgslsmith_sub_u32(_wgslsmith_add_u32(28855u, 6633u), 450u), var_1.b.d.d)));
                var_1 = Struct_4(-(~var_1.b.a), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a, 2147483647), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-3837, -606), vec2<i32>(var_1.a, u_input.d)), -vec2<i32>(-1, var_1.c.a), max(vec2<i32>(var_1.b.a, 238), vec2<i32>(u_input.d, u_input.d)))), !select(select(var_1.b.b, var_1.b.b, var_1.b.e.b), var_1.c.b, func_6(0)), Struct_1(firstTrailingBit(var_1.b.d.c), true, _wgslsmith_clamp_u32(var_1.c.d.a, ~4294967295u, 30699u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.d.d * var_1.b.e.d) + _wgslsmith_f_op_vec2_f32(-var_1.b.e.d))), Struct_1(~var_1.b.e.c, true, _wgslsmith_dot_vec2_u32(vec2<u32>(76465u, var_1.c.c.c) | vec2<u32>(4294967295u, var_1.b.d.c), ~u_input.e.yz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.d.d) + var_1.b.e.d)), Struct_1(reverseBits(~u_input.b), !true != !var_1.b.b.x, (var_1.c.c.c & var_1.b.e.a) | ~var_1.c.c.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.c.d * var_1.c.e.d), var_1.b.e.d))), var_1.b);
                let var_2 = var_1.c.d;
                var var_3 = var_1.b;
            }
            var var_0 = 1000.0;
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            }
        }
        case 22195: {
        }
        case 0: {
            let var_0 = vec2<f32>(-2653.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(613.0, -481.0)))) * _wgslsmith_f_op_f32(1644.0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -574.0) * _wgslsmith_div_f32(-893.0, 1788.0)))));
            switch (abs(-2147483648)) {
                case 7705: {
                    var var_1 = Struct_5(~(~(~26515u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-225.0 - 785.0), _wgslsmith_f_op_f32(round(761.0))))), u_input.e.x);
                }
                case 2147483647: {
                }
                case -69274: {
                    global0 = 1u;
                    var var_1 = select(53755u < (4656u << (firstTrailingBit(firstLeadingBit(u_input.b)) % 32u)), true, true);
                    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2422.0)) * var_0.x), 222.0);
                }
                case -2147483648: {
                    let var_1 = _wgslsmith_div_u32(~(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.c.x, u_input.e.x, 1u)), vec4<u32>(53713u, u_input.a, u_input.c.x, u_input.a)) ^ 4294967295u), u_input.a);
                    global0 = 106u & (~var_1 >> ((36470u ^ ~(var_1 >> (22130u % 32u))) % 32u));
                }
                default: {
                    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-897.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1297.0) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), 367.0), true));
                    var var_2 = -(-2147483648 >> (u_input.e.x % 32u));
                    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(2682, 2147483647), vec2<i32>(u_input.d, u_input.d) ^ vec2<i32>(u_input.d, 0), vec2<i32>(-40309, 20607)) | -firstTrailingBit(vec2<i32>(u_input.d, u_input.d)), _wgslsmith_div_vec2_i32(~select(vec2<i32>(0, u_input.d), vec2<i32>(u_input.d, 2147483647), vec2<bool>(false, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(-36262, u_input.d), -vec2<i32>(u_input.d, 1)))) & u_input.d;
                    var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(abs(vec3<i32>(2147483647, 2147483647, u_input.d))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1, i32(-1) * -1, ~6413), max(-vec3<i32>(-10422, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d) << (vec3<u32>(u_input.c.x, 0u, u_input.a) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(2147483647, u_input.d), abs(-3303), ~1)), -min(countOneBits(vec3<i32>(0, u_input.d, 0)), -vec3<i32>(-1, -1, u_input.d))), countOneBits(vec3<i32>(1 << (1u % 32u), firstLeadingBit(u_input.d), u_input.d)) ^ (max(select(vec3<i32>(-2147483648, 3201, u_input.d), vec3<i32>(-2147483648, u_input.d, 31843), vec3<bool>(false, true, false)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.d, 18863), vec3<i32>(u_input.d, 0, u_input.d))) | firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, -44281), vec3<i32>(u_input.d, 9465, 46869)))));
                }
            }
        }
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        if (true) {
        }
        var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.c.xyx, abs(~vec3<u32>(u_input.a, 4294967295u, u_input.e.x) | u_input.e)), !(!(!(true & false))), _wgslsmith_mult_u32(37868u, ~(1u ^ u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1705.0, _wgslsmith_f_op_f32(102.0 + 1454.0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2117.0, -409.0) + vec2<f32>(702.0, 545.0))))));
    }
    return !(!(!select(!vec3<bool>(false, true, false), vec3<bool>(false, true, false), select(true, false, true))));
}

fn func_3() -> Struct_4 {
    for (; u_input.d != 0; ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        global0 = reverseBits(u_input.e.x);
        global0 = abs(53020u);
        for (var var_0 = 2147483647; false; var_0 -= 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            continue;
        }
        if ((-15508 & -1) >= -2147483648) {
            var var_0 = abs(~(-(~u_input.d)));
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        }
        global0 = _wgslsmith_sub_u32(~u_input.c.x, 0u);
        var var_0 = 710.0;
        if (!(!(!(select(u_input.a, u_input.b, true) < ~u_input.a)))) {
            var var_1 = Struct_4(29265, Struct_2(u_input.d, func_4(), Struct_1(~(0u ^ u_input.a), true, reverseBits(1u), _wgslsmith_div_vec2_f32(vec2<f32>(-2084.0, -791.0), _wgslsmith_f_op_vec2_f32(vec2<f32>(406.0, -1055.0) + vec2<f32>(-310.0, 1295.0)))), Struct_1(_wgslsmith_sub_u32(u_input.e.x << (u_input.e.x % 32u), 0u), (true | false) == any(vec4<bool>(true, true, false, true)), u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1394.0, -1163.0) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(574.0, -2311.0))))), Struct_1(u_input.e.x, all(vec4<bool>(false, false, true, false)), 65801u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-215.0, -132.0) * vec2<f32>(1641.0, -156.0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(674.0, 908.0) + vec2<f32>(-925.0, 609.0))))), Struct_2(max(2147483647, u_input.d), !vec3<bool>(func_4().x, !true, select(true, false, true)), Struct_1(u_input.b, func_4().x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.a), vec3<u32>(u_input.c.x, u_input.e.x, u_input.e.x)), _wgslsmith_dot_vec3_u32(u_input.c.xzz, u_input.e)), vec2<f32>(_wgslsmith_f_op_f32(floor(1000.0)), -130.0)), Struct_1(firstTrailingBit(reverseBits(6082u)), all(vec2<bool>(false, true)), _wgslsmith_sub_u32(abs(u_input.c.x), u_input.b ^ u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1156.0, -1000.0), vec2<f32>(693.0, -745.0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1153.0, 1094.0) * vec2<f32>(-423.0, 1000.0)))), Struct_1((4294967295u ^ 1u) << (abs(u_input.c.x) % 32u), false, abs(_wgslsmith_mod_u32(177633u, u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-519.0, -891.0)) * _wgslsmith_div_vec2_f32(vec2<f32>(413.0, 238.0), vec2<f32>(940.0, -432.0))))));
            global0 = 1u;
            var var_2 = Struct_1(~0u, false, u_input.e.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1686.0, 606.0)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.c.c.d + var_1.c.e.d)))))));
        }
    }
    for (var var_0 = u_input.d; func_6(-firstLeadingBit(2147483647)) && (~(~_wgslsmith_clamp_u32(4294967295u, 12307u, u_input.e.x)) <= 35146u); var_0 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
    }
    for (; false; ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            let var_0 = ~3089u;
        }
        if (!false) {
            let var_0 = _wgslsmith_div_i32(u_input.d, -u_input.d);
            continue;
        }
    }
    var var_0 = Struct_3(Struct_1(4294967295u, !all(vec3<bool>(true, false, false)), abs(_wgslsmith_div_u32(u_input.c.x, max(3176u, u_input.c.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1290.0, -1538.0)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1518.0, -154.0))))))), reverseBits(vec3<i32>(abs(-28488), u_input.d, -1469)));
    return Struct_4(~firstTrailingBit(_wgslsmith_mult_i32(var_0.b.x, -2168)), Struct_2(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-24482, u_input.d, u_input.d, var_0.b.x), vec4<i32>(u_input.d, u_input.d, u_input.d, 52601))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, var_0.b.x, u_input.d, u_input.d), vec4<i32>(13531, var_0.b.x, var_0.b.x, -2147483648), vec4<i32>(u_input.d, var_0.b.x, -2147483648, -2147483648)))), select(select(vec3<bool>(false, var_0.a.b, var_0.a.b), !vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), select(vec3<bool>(true, true, var_0.a.b), vec3<bool>(false, var_0.a.b, true), var_0.a.b)), !func_4(), all(!vec3<bool>(true, var_0.a.b, false))), var_0.a, var_0.a, var_0.a), Struct_2(~(i32(-1) * -19980), !vec3<bool>(var_0.a.b | false, var_0.a.d.x == var_0.a.d.x, false), Struct_1(~u_input.b, _wgslsmith_f_op_f32(var_0.a.d.x * var_0.a.d.x) != _wgslsmith_f_op_f32(f32(-1.0) * -727.0), var_0.a.a, vec2<f32>(423.0, _wgslsmith_div_f32(var_0.a.d.x, var_0.a.d.x))), Struct_1(32585u, any(vec2<bool>(var_0.a.b, false)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0.a.c, var_0.a.c, u_input.c.x, u_input.a)), 1u), var_0.a.d), Struct_1(41825u, all(vec4<bool>(var_0.a.b, true, var_0.a.b, false)) | var_0.a.b, var_0.a.a, var_0.a.d)));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: u32) -> vec3<i32> {
    for (; arg_2; ) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    if (!false) {
        for (var var_0 = 1; false; var_0 -= 1) {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            let var_1 = u_input.d;
        }
        return _wgslsmith_mult_vec3_i32(vec3<i32>(-1, u_input.d | u_input.d, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d, 1), abs(-32481))) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.yxw, vec3<u32>(arg_3, u_input.b, u_input.e.x)), u_input.e << (u_input.e % vec3<u32>(32u))), vec3<u32>(arg_3, arg_3, arg_3)) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-22089, u_input.d) | vec2<i32>(u_input.d, 5831), countOneBits(vec2<i32>(u_input.d, u_input.d))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, u_input.d, -50036), firstTrailingBit(vec3<i32>(-1, u_input.d, -1))), 2147483647)));
    }
    global0 = u_input.b;
    var var_0 = func_3();
    for (; (4294967295u >> ((abs(~arg_3) ^ ~_wgslsmith_add_u32(4294967295u, u_input.c.x)) % 32u)) <= ~select(0u, ~reverseBits(1u), arg_2); ) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
    }
    return max(reverseBits(((vec3<i32>(0, 1, 1) ^ vec3<i32>(var_0.c.a, 22829, 2147483647)) << (abs(vec3<u32>(10895u, 1u, 1u)) % vec3<u32>(32u))) & vec3<i32>(var_0.c.a, 78777, var_0.b.a)), vec3<i32>((u_input.d >> (func_3().b.d.c % 32u)) & var_0.a, -19503, u_input.d));
}

fn func_7(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_4 {
    global0 = u_input.e.x;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3, arg_1)) - _wgslsmith_f_op_f32(arg_3 - arg_3)) + _wgslsmith_f_op_f32(round(arg_1)))));
    var_0 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3 * 486.0))))));
    switch (-12559) {
        case 0: {
            var var_1 = func_3().b;
            let var_2 = Struct_3(var_1.d, vec3<i32>(u_input.d, 0, 25863 << ((0u & 53161u) % 32u)));
            switch (arg_0.x) {
                case 0: {
                    var_0 = _wgslsmith_f_op_f32(arg_3 - 439.0);
                    var var_3 = func_3().b.d;
                    var var_4 = Struct_4(i32(-1) * -reverseBits(u_input.d), func_3().b, func_3().c);
                }
                case -8741: {
                    let var_3 = vec3<u32>(_wgslsmith_clamp_u32(~abs(61296u), firstTrailingBit(~(~4294967295u)), ~var_1.c.a), _wgslsmith_dot_vec4_u32(~u_input.c, ~u_input.c), ~var_1.c.c);
                    var_1 = Struct_2(u_input.d & ~(reverseBits(arg_0.x) | _wgslsmith_clamp_i32(var_2.b.x, var_2.b.x, -1)), var_1.b, Struct_1(var_3.x, true, abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~47946u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 793.0), var_1.d.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3, -744.0))) - _wgslsmith_f_op_vec2_f32(floor(var_1.c.d)))))), func_3().b.d, Struct_1(var_3.x, false, ~(~0u) << (arg_2 % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_2.a.d, _wgslsmith_f_op_vec2_f32(var_2.a.d * vec2<f32>(arg_3, arg_3)))))));
                    let var_4 = var_1.b.xz;
                }
                case 16769: {
                    let var_3 = var_2;
                    let var_4 = ~(-27261);
                    var var_5 = var_2.a.d.x;
                    let var_6 = _wgslsmith_add_i32(22696, arg_0.x & _wgslsmith_sub_i32(var_3.b.x, u_input.d));
                    var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1117.0)))) * var_1.d.d.x), _wgslsmith_f_op_f32(-arg_1), select(!var_1.e.b, false, !(!var_3.a.b))));
                }
                default: {
                    var var_3 = func_3();
                    global0 = _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(15325u, 72834u)), 1u);
                }
            }
            return Struct_4(24445, func_3().b, func_3().c);
        }
        case -1: {
            for (; select(!any(vec2<bool>(!true, false & true)), !false, true); ) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                var var_1 = arg_0.yx << (vec2<u32>(reverseBits(~(2438u | arg_2)), _wgslsmith_sub_u32(~(u_input.e.x << (4294967295u % 32u)), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c.xyx, u_input.c.yyx)))) % vec2<u32>(32u));
            }
            var_0 = arg_1;
            var var_1 = Struct_4(u_input.d, Struct_2(-18415, select(!vec3<bool>(false, true, false), vec3<bool>(!true, !false, true | false), func_6(abs(-2147483648))), Struct_1(arg_2, !(u_input.d != arg_0.x), ~34397u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, arg_1), vec2<f32>(-1000.0, 932.0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(115.0, arg_1)))), func_3().c.c, Struct_1(4294967295u, true, ~(~27892u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1993.0, -943.0))))), Struct_2(_wgslsmith_dot_vec4_i32(min(select(vec4<i32>(u_input.d, arg_0.x, arg_0.x, -3888), vec4<i32>(2147483647, 0, 2147483647, arg_0.x), vec4<bool>(true, true, true, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, arg_0.x, arg_0.x, 2147483647), vec4<i32>(-86312, -2147483648, arg_0.x, arg_0.x), vec4<i32>(u_input.d, 17160, -33859, u_input.d))), ~max(vec4<i32>(19357, 1, u_input.d, arg_0.x), vec4<i32>(-952, -1, 0, u_input.d))), select(!func_4(), func_4(), true), func_3().b.e, Struct_1(arg_2, func_3().c.e.b, arg_2, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_3)))))), Struct_1(abs(_wgslsmith_mult_u32(u_input.a, arg_2)), true | (true || false), u_input.b, vec2<f32>(633.0, 780.0))));
        }
        case -46178: {
            var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647, arg_0.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(62864, firstTrailingBit(arg_0.x)), arg_0.x), ~(-arg_0.x)), countOneBits(firstTrailingBit(-vec4<i32>(arg_0.x, 1, arg_0.x, u_input.d))), _wgslsmith_add_vec4_i32(vec4<i32>(0 >> (u_input.e.x % 32u), 0, countOneBits(u_input.d), u_input.d | arg_0.x), vec4<i32>(-1, arg_0.x, 0, _wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(36572, -2147483648)))) >> (firstLeadingBit(u_input.c) % vec4<u32>(32u)));
            var_1 = ~(-(~select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1, 28268, arg_0.x, var_1.x), vec4<i32>(-2147483648, var_1.x, u_input.d, var_1.x)), ~vec4<i32>(arg_0.x, -2147483648, u_input.d, arg_0.x), all(vec3<bool>(false, false, false)))));
        }
        default: {
            let var_1 = select(0, arg_0.x, (!func_4().x || select(true, true & true, true)) & false);
            let var_2 = !false;
            global0 = reverseBits(min(reverseBits(u_input.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, 64001u, 10597u)), arg_2 << (arg_2 % 32u)), 1u)));
        }
    }
    switch (-firstTrailingBit(u_input.d)) {
        case -40900: {
            let var_1 = func_3().b.c;
        }
        case 6922: {
            if (!(!true)) {
                let var_1 = Struct_3(func_3().b.e, arg_0);
                var var_2 = func_3().b.d.b;
                let var_3 = !(!any(vec3<bool>(var_1.a.b, var_1.a.b, false)) & false);
            }
            if (any(select(select(vec4<bool>(!false, !false, any(vec4<bool>(false, true, true, true)), !true), select(vec4<bool>(false, false, false, true), !vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), select(!vec4<bool>(false, false, true, false), !vec4<bool>(false, true, false, false), false & false)), vec4<bool>(all(!vec4<bool>(false, true, false, false)), func_6(abs(u_input.d)), any(vec2<bool>(true, true)), !true && !false), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), !vec4<bool>(false, true, true, false))))) {
                var var_1 = _wgslsmith_f_op_f32(func_5());
            }
            for (var var_1 = abs(_wgslsmith_add_i32(-(37961 & select(arg_0.x, -10689, true)), firstTrailingBit(_wgslsmith_add_i32(-65906, arg_0.x)))); ; global0 = 23803u) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                continue;
            }
            let var_1 = !(max((arg_2 >> (arg_2 % 32u)) << (~1931u % 32u), u_input.e.x) >= (u_input.b | _wgslsmith_clamp_u32(1u << (0u % 32u), firstLeadingBit(0u), ~28277u)));
            global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u | ~_wgslsmith_mult_u32(u_input.c.x, arg_2), u_input.c.x, arg_2, 4126u), vec4<u32>(~(~4294967295u) << (39236u % 32u), ~min(u_input.a, abs(1u)), 17710u, select(~min(arg_2, 0u), countOneBits(~arg_2), false)));
        }
        default: {
            for (; ~(-2147483648) < (-25974 ^ _wgslsmith_mod_i32(arg_0.x | _wgslsmith_div_i32(36495, 1), _wgslsmith_div_i32(18518, arg_0.x) ^ -arg_0.x)); ) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                var var_1 = !(!(!false));
                break;
            }
            var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 - -114.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500.0)), true))));
            var var_2 = vec4<f32>(296.0, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(f32(-1.0) * -313.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(-782.0))))))));
            for (var var_3 = 46162; ; var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5()))) {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                var var_4 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(0, 0), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, arg_0.x, -2147483648, u_input.d) | vec4<i32>(2340, arg_0.x, 1, u_input.d), vec4<i32>(39829, -2147483648, -2147483648, 2147483647)), ~u_input.d)), vec3<bool>(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), arg_3 == arg_3, !all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false))), Struct_1(4294967295u & ((1u ^ 0u) >> ((u_input.e.x | u_input.a) % 32u)), select(42038u >= 37242u, true, !false) == (~arg_0.x < _wgslsmith_div_i32(2147483647, 2147483647)), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.e.xz, u_input.e.yz), _wgslsmith_mult_u32(arg_2, arg_2) << (min(arg_2, 0u) % 32u)), vec2<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_3 - 1198.0)))), Struct_1(func_1(arg_0.x << (arg_2 % 32u), u_input.b == arg_2) ^ ~select(u_input.b, arg_2, true), !all(vec4<bool>(true, true, false, false)), _wgslsmith_div_u32(firstLeadingBit(firstLeadingBit(34443u)), firstTrailingBit(4897u)), var_2.zy), func_3().b.e);
            }
        }
    }
    return Struct_4(~u_input.d >> (~_wgslsmith_mult_u32(8763u, _wgslsmith_mult_u32(4294967295u, 0u)) % 32u), Struct_2(u_input.d, !(!func_4()), Struct_1(69833u, func_4().x, u_input.e.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-335.0, arg_3))), func_3().c.c, Struct_1(u_input.c.x, arg_2 == _wgslsmith_mod_u32(3293u, u_input.e.x), ~_wgslsmith_mult_u32(u_input.a, u_input.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1000.0) * vec2<f32>(-1804.0, 1000.0)))))), Struct_2(arg_0.x, !(!func_4()), func_3().b.e, func_3().b.d, Struct_1(u_input.b, !any(vec4<bool>(true, true, false, false)), u_input.b | _wgslsmith_mod_u32(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(645.0, 592.0)))));
}

@compute
@workgroup_size(1)
fn main() {
    if (true | !false) {
    }
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        var var_0 = func_7(func_2(_wgslsmith_f_op_f32(select(-187.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -2476.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0) > _wgslsmith_f_op_f32(floor(-449.0)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1699.0, 1000.0, false)) + _wgslsmith_f_op_f32(step(606.0, -394.0))), _wgslsmith_div_f32(385.0, _wgslsmith_f_op_f32(sign(-2411.0))), -306.0, 1872.0), !all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), func_1(-1, (-1769.0 < -661.0) || false)), _wgslsmith_f_op_f32(-591.0), _wgslsmith_sub_u32(~(~113527u), 4294967295u), _wgslsmith_f_op_f32(func_3().c.c.d.x * _wgslsmith_f_op_f32(f32(-1.0) * -932.0)));
        for (var var_1: i32; var_1 != 1; var_1 += 1) {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            let var_2 = !var_0.b.b;
            let var_3 = ~select(u_input.c.yy, ~max(vec2<u32>(var_0.c.d.a, 72497u), vec2<u32>(var_0.c.c.a, u_input.a)) & vec2<u32>(32526u, u_input.e.x), select(vec2<bool>(any(vec4<bool>(var_0.c.e.b, false, var_0.b.c.b, true)), all(vec2<bool>(false, true))), select(var_2.zy, !var_2.xx, var_0.b.c.b), func_7(vec3<i32>(var_0.a, 13398, u_input.d) & vec3<i32>(-50330, var_0.b.a, 2147483647), _wgslsmith_f_op_f32(1563.0 + var_0.c.d.d.x), 4294967295u & 3307u, func_7(vec3<i32>(1, u_input.d, -16510), var_0.b.c.d.x, var_0.c.e.c, var_0.c.e.d.x).c.e.d.x).c.d.b));
            break;
        }
        var var_1 = countOneBits(max(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 57687u, u_input.e.x) | vec3<u32>(var_0.b.e.c, 4294967295u, var_0.c.c.a), max(vec3<u32>(var_0.b.e.a, var_0.b.c.c, u_input.c.x), u_input.c.zzy)), u_input.e), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.d.a >> (0u % 32u), 37234u ^ u_input.b, u_input.b), ~firstTrailingBit(u_input.c.xyy))));
        loop {
            if (LOOP_COUNTERS[26u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        }
        loop {
            if (LOOP_COUNTERS[27u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            var var_2 = var_0.c.c.d.x;
            var var_3 = func_3().b.b;
            break;
        }
    }
    loop {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
    }
    let var_0 = ~countOneBits(-(vec2<i32>(u_input.d, 26409) >> (u_input.c.wy % vec2<u32>(32u))) | vec2<i32>(~6046, select(u_input.d, -1, false)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c.xx), select(vec2<u32>(53925u, u_input.e.x), u_input.c.yw, true)) << (countOneBits(u_input.e.x) % 32u), u_input.e.x >= firstTrailingBit(u_input.b), u_input.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(660.0, 1617.0)))))), vec3<i32>(var_0.x, i32(-1) * -29662, u_input.d));
    if (all(!vec2<bool>(var_1.a.b, func_7(vec3<i32>(u_input.d, 0, -7527), var_1.a.d.x, 63797u, -511.0).b.a != var_1.b.x))) {
        loop {
            if (LOOP_COUNTERS[29u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            global0 = 0u;
            global0 = ~60901u;
            return;
        }
        global0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~var_1.a.c, ~_wgslsmith_mult_u32(0u | u_input.a, firstTrailingBit(u_input.b))), 0u);
        let var_2 = func_3();
    }
    for (; !var_1.a.b; ) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        var var_2 = true;
    }
    switch ((u_input.d >> (_wgslsmith_mod_u32(50959u, max(func_1(u_input.d, var_1.a.b), 4294967295u | 1u)) % 32u)) & -1764) {
        default: {
            loop {
                if (LOOP_COUNTERS[31u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
                var var_2 = var_1.a.d.x;
                var var_3 = func_7(vec3<i32>(-_wgslsmith_mod_i32(var_1.b.x, ~var_1.b.x), -8448, reverseBits(~abs(var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.d.x, 144.0)), var_1.a.c, var_1.a.d.x);
                let var_4 = select(var_3.b.b.xx, vec2<bool>(true, all(select(select(vec4<bool>(var_3.b.e.b, true, var_3.c.c.b, true), vec4<bool>(var_3.b.e.b, false, var_1.a.b, false), vec4<bool>(false, true, var_1.a.b, var_3.b.c.b)), vec4<bool>(false, false, false, var_3.b.d.b), vec4<bool>(var_1.a.b, false, false, var_3.b.d.b)))), !(!var_1.a.b));
                let var_5 = Struct_5(abs(_wgslsmith_mod_u32(1u, ~_wgslsmith_add_u32(var_3.b.e.c, u_input.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.d.x, 1099.0, 465.0))))) * vec3<f32>(_wgslsmith_f_op_f32(var_3.c.e.d.x + var_3.b.c.d.x), var_3.b.e.d.x, var_3.b.e.d.x)), abs(firstLeadingBit(var_1.a.c)));
            }
        }
    }
    global0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-((-2147483648 >> (u_input.b % 32u)) ^ var_1.b.x), countOneBits(6076)), 17610u, abs(_wgslsmith_add_i32(2147483647 >> (var_1.a.c % 32u), u_input.d)), -1155.0, _wgslsmith_mod_i32(-1, -1));
}

