// {"0:0":[192,234,126,114,158,55,234,40,192,193,221,45]}
// Seed: 1399880729694674455

struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> LOOP_COUNTERS: array<u32, 24>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn func_6() -> vec3<i32> {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    let var_0 = true;
    global0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1) * -global0.a.xz, ~(~global0.a.wx)), _wgslsmith_mult_i32(select(45798, -2147483648, 0 >= 2147483647), countOneBits(reverseBits(global0.a.x))), ~1, global0.a.x), false, _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(f32(-1.0) * -687.0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.e.x, global0.c, _wgslsmith_f_op_f32(global0.c * global0.c), _wgslsmith_div_f32(-1476.0, 2212.0)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.d.x, global0.d.x, 613.0, global0.c))), select(vec4<bool>(true, var_0, global0.b, false), !vec4<bool>(global0.b, var_0, true, false), false | global0.b))) - global0.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(676.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(906.0, global0.e.x)))) * global0.d.zz));
    var var_1 = ~countOneBits(firstTrailingBit(_wgslsmith_div_i32(u_input.c, -14019)) ^ -max(14475, u_input.c));
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c | select(~u_input.c, global0.a.x, var_0), min(37954, global0.a.x), -20331, global0.a.x), abs(-global0.a));
    return vec3<i32>(max(u_input.c, _wgslsmith_mod_i32(u_input.c, (i32(-1) * -33823) >> (firstLeadingBit(u_input.a) % 32u))), firstTrailingBit(~(-u_input.c) | -14138), ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, 55487, -2068, u_input.c), ~vec4<i32>(-35579, u_input.c, u_input.c, global0.a.x)), ~(-2147483648)));
}

fn func_5(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a);
    let var_1 = _wgslsmith_clamp_u32(u_input.b, ~0u, var_0.x);
    var_0 = vec4<u32>(~1u, var_1, ~u_input.a, firstLeadingBit(4294967295u) & ~1u);
    let var_2 = Struct_3(~(~(countOneBits(u_input.a) >> ((4294967295u >> (var_0.x % 32u)) % 32u))), vec2<i32>(max(u_input.c, -global0.a.x), 0) & global0.a.xy, any(!(!(!vec3<bool>(global0.b, global0.b, false)))), vec3<u32>(0u, ~(~u_input.a), 1u) | ~select(var_0.yzz, vec3<u32>(31561u, var_1, 1u), global0.b | global0.b), Struct_2(Struct_1(vec4<i32>(-global0.a.x, _wgslsmith_dot_vec2_i32(global0.a.xy, global0.a.yy), _wgslsmith_mod_i32(global0.a.x, u_input.c), 2147483647), !global0.b || !global0.b, _wgslsmith_f_op_f32(-789.0 + _wgslsmith_f_op_f32(select(-1000.0, -550.0, global0.b))), global0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(564.0, 1064.0)) - _wgslsmith_f_op_vec2_f32(arg_0.xz - vec2<f32>(arg_0.x, 239.0)))), Struct_1(select(firstTrailingBit(global0.a), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, 2147483647, 2147483647), global0.a), !vec4<bool>(false, false, false, true)), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, 718.0, 903.0, global0.d.x) - vec4<f32>(578.0, arg_0.x, 890.0, 1058.0))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.zx)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-1066.0), _wgslsmith_f_op_f32(ceil(-1829.0)), _wgslsmith_f_op_f32(-global0.c))), -(vec3<i32>(global0.a.x, -2147483648, -20864) & func_6()), global0.a.yww));
    switch (0) {
        default: {
        }
    }
    return var_2.e;
}

fn func_7(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = Struct_1(vec4<i32>(func_6().x, global0.a.x, u_input.c, global0.a.x), select(true, select(-arg_3.b.a.x != _wgslsmith_div_i32(global0.a.x, 763), all(!vec4<bool>(arg_2.b, arg_0.a.b, true, arg_0.b.b)), global0.b), !(!select(true, true, arg_0.b.b))), arg_3.b.d.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.d + vec4<f32>(-283.0, global0.d.x, global0.d.x, 1377.0)), _wgslsmith_f_op_vec4_f32(arg_0.c + vec4<f32>(arg_3.a.c, arg_2.d.x, arg_0.b.e.x, arg_3.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(arg_0.b.d.yx))))));
    var var_0 = _wgslsmith_clamp_i32(firstLeadingBit(-1), i32(-1) * -2147483648, 17367) & -2147483648;
    let var_1 = !(!vec2<bool>(select(false, arg_2.b == true, !false), arg_2.b));
    let var_2 = _wgslsmith_mod_u32(~countOneBits(arg_1.x), arg_1.x);
    let var_3 = select(vec2<i32>(reverseBits(u_input.c) ^ (u_input.c >> (2598u % 32u)), u_input.c), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, _wgslsmith_f_op_f32(arg_0.a.d.x * -1285.0), _wgslsmith_div_f32(arg_3.b.d.x, 628.0)))).b.a.wz, select(var_1, var_1, !(!select(vec2<bool>(false, true), var_1, vec2<bool>(false, arg_2.b)))));
    return Struct_1(-(~arg_0.a.a), select(arg_2.b, arg_0.b.b, false), _wgslsmith_f_op_f32(-arg_0.c.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_2.c, -1317.0, global0.b)))), _wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(arg_0.c.x * -663.0))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.e.x, arg_3.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.d.x)) * _wgslsmith_f_op_f32(sign(arg_2.d.x))))), 1700.0, arg_0.a.e.x), _wgslsmith_f_op_vec2_f32(global0.e * vec2<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(-arg_3.a.d.x))));
}

fn func_4(arg_0: vec2<bool>) -> i32 {
    let var_0 = select(~16467 << (firstTrailingBit(~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.a)) % 32u), 1, global0.b);
    for (var var_1 = -1; var_1 <= 20882; global0 = func_7(func_5(_wgslsmith_f_op_vec3_f32(-global0.d.zzx)), countOneBits(max(~(vec4<u32>(u_input.b, 1u, u_input.b, 15578u) << (vec4<u32>(42171u, u_input.a, u_input.b, 0u) % vec4<u32>(32u))), ~vec4<u32>(u_input.a, 27523u, u_input.a, 61697u))), func_5(global0.d.yxx).a, func_5(global0.d.xyy))) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        let var_2 = global0.a;
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            let var_3 = Struct_3(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(select(u_input.a, u_input.a, global0.b), countOneBits(u_input.b))) & ~abs(_wgslsmith_mod_u32(1u, u_input.a)), global0.a.zw, countOneBits(_wgslsmith_sub_i32(global0.a.x, func_7(Struct_2(Struct_1(vec4<i32>(u_input.c, 37235, global0.a.x, var_2.x), true, -775.0, global0.d, global0.e), Struct_1(global0.a, false, -2059.0, global0.d, vec2<f32>(-2168.0, global0.e.x)), global0.d, global0.a.wyy, vec3<i32>(14275, 2147483647, -7867)), vec4<u32>(1u, 0u, 59106u, u_input.b), Struct_1(vec4<i32>(var_2.x, u_input.c, var_0, var_2.x), arg_0.x, -463.0, global0.d, vec2<f32>(-1586.0, global0.c)), Struct_2(Struct_1(vec4<i32>(var_0, var_2.x, global0.a.x, -2147483648), true, -1898.0, global0.d, vec2<f32>(global0.e.x, -3857.0)), Struct_1(global0.a, global0.b, -921.0, vec4<f32>(1209.0, global0.d.x, global0.c, global0.e.x), vec2<f32>(-946.0, -748.0)), global0.d, var_2.wwy, vec3<i32>(var_0, -31478, var_0))).a.x)) != 2147483647, vec3<u32>(_wgslsmith_add_u32(~(~1541u), 32339u), min(_wgslsmith_div_u32(u_input.b, u_input.a), _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)) | 1u, 81589u), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2006.0, global0.c, 2067.0))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, global0.d.x, global0.d.x)))))));
            continue;
        }
        var_1 = var_2.x;
    }
    global0 = Struct_1(max(-global0.a, abs(func_7(Struct_2(Struct_1(vec4<i32>(-11306, global0.a.x, u_input.c, 20695), arg_0.x, global0.e.x, global0.d, global0.e), Struct_1(global0.a, arg_0.x, -1612.0, global0.d, vec2<f32>(global0.c, global0.c)), global0.d, vec3<i32>(global0.a.x, -2147483648, global0.a.x), vec3<i32>(var_0, var_0, u_input.c)), vec4<u32>(4294967295u, u_input.a, u_input.b, 4294967295u), Struct_1(vec4<i32>(-20841, 2147483647, var_0, var_0), false, global0.d.x, vec4<f32>(136.0, global0.c, -1000.0, global0.e.x), vec2<f32>(-264.0, global0.e.x)), func_5(global0.d.wzw)).a)), !global0.b, global0.e.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2033.0 * -221.0) - 122.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.d.x)) - global0.e.x) + _wgslsmith_div_f32(func_5(global0.d.yzy).a.c, _wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(488.0, global0.d.x, true)) + global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - global0.c) - _wgslsmith_f_op_f32(abs(-613.0))))), global0.e);
    var var_1 = -vec4<i32>(abs(_wgslsmith_mod_i32(56325, -2147483648)) >> (_wgslsmith_add_u32(u_input.a & u_input.a, 115333u) % 32u), u_input.c, firstLeadingBit(func_6().x), ~abs(global0.a.x) >> (~u_input.b % 32u));
    if (!any(vec2<bool>(arg_0.x, 24267u > u_input.b))) {
        for (var var_2 = 0; arg_0.x; global0 = Struct_1(global0.a, !(!(firstLeadingBit(global0.a.x) >= var_0)), global0.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, 1127.0, global0.e.x, 294.0) + global0.d)), vec4<f32>(1813.0, _wgslsmith_f_op_f32(-709.0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-102.0 + global0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1594.0)) * 1371.0)))), global0.d.yy)) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            let var_3 = Struct_3(u_input.b, vec2<i32>(reverseBits(global0.a.x), var_0), 120.0 != global0.e.x, vec3<u32>(35914u << (~31466u % 32u), u_input.a, abs(abs(1u))), func_5(vec3<f32>(_wgslsmith_f_op_f32(floor(-458.0)), _wgslsmith_f_op_f32(-func_7(Struct_2(Struct_1(vec4<i32>(global0.a.x, 4877, global0.a.x, var_1.x), arg_0.x, global0.e.x, global0.d, global0.d.zy), Struct_1(vec4<i32>(global0.a.x, var_0, u_input.c, var_1.x), true, global0.e.x, vec4<f32>(1331.0, 344.0, global0.d.x, global0.c), vec2<f32>(global0.d.x, global0.c)), global0.d, vec3<i32>(var_0, var_1.x, 34067), global0.a.zzw), vec4<u32>(6921u, 1u, 1u, u_input.b), Struct_1(global0.a, arg_0.x, global0.d.x, vec4<f32>(-1145.0, 247.0, global0.d.x, global0.e.x), global0.e), Struct_2(Struct_1(vec4<i32>(var_1.x, global0.a.x, var_0, var_1.x), true, 197.0, vec4<f32>(global0.e.x, global0.c, global0.c, -805.0), global0.e), Struct_1(vec4<i32>(-6213, var_1.x, 0, -28411), false, -162.0, global0.d, global0.e), global0.d, global0.a.xxz, vec3<i32>(10799, var_0, var_0))).d.x), -2799.0)));
            var var_4 = Struct_2(Struct_1(~vec4<i32>(var_3.e.a.a.x, -2147483648, ~var_0, 2147483647), !(var_3.c && select(false, true, false)), 383.0, global0.d, vec2<f32>(_wgslsmith_f_op_f32(min(736.0, 413.0)), global0.e.x)), var_3.e.a, _wgslsmith_f_op_vec4_f32(var_3.e.a.d - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1842.0, _wgslsmith_f_op_f32(-1457.0 - global0.c), _wgslsmith_f_op_f32(2242.0 * -361.0), 420.0)))), vec3<i32>(~(~(-2147483648)), var_1.x, -_wgslsmith_sub_i32(global0.a.x, 2147483647)) & var_3.e.b.a.yxz, func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.d.wwx, _wgslsmith_f_op_vec3_f32(select(var_3.e.b.d.xyx, vec3<f32>(global0.c, 1085.0, var_3.e.b.c), true))))).e);
        }
        var var_2 = ~reverseBits(countOneBits(abs(min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.a, 114585u)))));
    }
    return _wgslsmith_mod_i32(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(~23081, ~var_0), -var_0), 0);
}

fn func_8(arg_0: vec4<bool>, arg_1: i32) -> bool {
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            var var_0 = select(select(vec3<bool>((global0.a.x >= 21749) && select(false, false, true), u_input.c != _wgslsmith_div_i32(u_input.c, u_input.c), func_5(vec3<f32>(-706.0, 372.0, global0.c)).c.x >= _wgslsmith_f_op_f32(global0.d.x * 1291.0)), !arg_0.zxz, !(!arg_0.x)), arg_0.wzw, !all(!select(arg_0.wyw, arg_0.xxw, vec3<bool>(arg_0.x, global0.b, global0.b))));
            global0 = func_5(_wgslsmith_f_op_vec3_f32(-global0.d.zwz)).b;
            var_0 = !select(vec3<bool>(func_5(_wgslsmith_f_op_vec3_f32(step(global0.d.xzw, global0.d.xyz))).a.b, false, false), !(!select(arg_0.xwy, vec3<bool>(global0.b, var_0.x, global0.b), vec3<bool>(false, global0.b, global0.b))), !all(arg_0));
            let var_1 = func_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(327.0 + -1814.0))), _wgslsmith_f_op_f32(-1563.0 - func_5(global0.d.yyz).c.x), global0.d.x)).a;
        }
        var var_0 = func_5(global0.d.yxx);
        var var_1 = Struct_1(var_0.a.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213.0 * _wgslsmith_f_op_f32(exp2(global0.e.x)))), global0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -951.0)), -1000.0) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1941.0 * -529.0) - _wgslsmith_f_op_f32(292.0 + var_0.b.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(620.0 - -657.0))))));
        break;
    }
    let var_0 = 268.0;
    if (global0.b) {
        switch (-(-firstTrailingBit(-1) ^ firstTrailingBit(0)) & global0.a.x) {
            case 1: {
                global0 = func_7(func_5(vec3<f32>(_wgslsmith_f_op_f32(var_0 + 1179.0), global0.e.x, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 1u), ~vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a))) << (_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.b), vec4<u32>(8680u, 35084u, u_input.b, u_input.a)) << ((vec4<u32>(53424u, u_input.b, u_input.b, 0u) | vec4<u32>(0u, u_input.b, u_input.a, u_input.a)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b, u_input.b, 13780u, 64084u))) % vec4<u32>(32u)), func_7(Struct_2(func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.e.x, global0.e.x, 496.0), vec3<f32>(652.0, 445.0, var_0), false))).b, func_5(_wgslsmith_f_op_vec3_f32(-global0.d.zyw)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, -1731.0, global0.c, -137.0) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 115.0, var_0, 919.0) + global0.d)), abs(global0.a.zxx), _wgslsmith_add_vec3_i32(global0.a.zyx, -vec3<i32>(-3323, 1, global0.a.x))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 1u, 54828u, 17375u), select(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.a, 60549u, 39036u, u_input.b), vec4<bool>(global0.b, global0.b, arg_0.x, arg_0.x))) << (~(~vec4<u32>(u_input.a, u_input.b, 42343u, 49290u)) % vec4<u32>(32u)), Struct_1(-func_5(global0.d.yww).b.a, select(global0.b, arg_0.x, false) & any(vec4<bool>(true, true, global0.b, global0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x * global0.c), 1088.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1975.0, -1202.0, var_0, var_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, var_0, var_0, global0.d.x) + vec4<f32>(266.0, 412.0, global0.d.x, -1000.0))), func_7(func_5(global0.d.zxx), vec4<u32>(0u, 1u, 7019u, u_input.a), Struct_1(global0.a, global0.b, -524.0, vec4<f32>(-708.0, var_0, var_0, global0.e.x), vec2<f32>(global0.c, 362.0)), Struct_2(Struct_1(global0.a, true, var_0, global0.d, global0.e), Struct_1(vec4<i32>(1, -5553, global0.a.x, 2147483647), arg_0.x, -1547.0, global0.d, global0.d.zz), global0.d, global0.a.zzw, vec3<i32>(-4423, 2147483647, global0.a.x))).e), Struct_2(Struct_1(vec4<i32>(arg_1, 1, u_input.c, u_input.c), any(arg_0), global0.c, global0.d, _wgslsmith_f_op_vec2_f32(exp2(global0.d.xw))), func_5(global0.d.zwz).b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(global0.d)))), vec3<i32>(1, -2147483648, 2147483647), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(global0.a.xxz, global0.a.ywz), vec3<i32>(-5225, global0.a.x, 2147483647)))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.d.zwx))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.xxz - global0.d.wxz)))));
                global0 = func_7(func_5(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(-global0.e.x), 980.0), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(141.0, var_0, var_0))))))), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.b | u_input.a, _wgslsmith_sub_u32(8972u, u_input.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(897u, 30028u, 7739u, 0u), vec4<u32>(1u, u_input.b, u_input.a, u_input.b))), func_7(func_5(vec3<f32>(_wgslsmith_div_f32(var_0, global0.e.x), -1161.0, -1000.0)), _wgslsmith_div_vec4_u32(firstTrailingBit(max(vec4<u32>(u_input.a, 0u, 94190u, 1u), vec4<u32>(u_input.b, 52697u, 39836u, u_input.a))), vec4<u32>(u_input.b, 0u, 38786u, _wgslsmith_div_u32(7588u, u_input.b))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1808.0, -1786.0))).a, Struct_2(Struct_1(select(global0.a, vec4<i32>(global0.a.x, u_input.c, u_input.c, arg_1), false), func_5(vec3<f32>(var_0, global0.d.x, var_0)).b.b, _wgslsmith_f_op_f32(sign(1000.0)), _wgslsmith_f_op_vec4_f32(global0.d + global0.d), vec2<f32>(var_0, 733.0)), Struct_1(~vec4<i32>(global0.a.x, 57593, u_input.c, u_input.c), global0.b & false, _wgslsmith_f_op_f32(global0.d.x * global0.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, -619.0, global0.e.x, var_0))), _wgslsmith_f_op_vec2_f32(global0.d.zy - global0.e)), _wgslsmith_f_op_vec4_f32(max(global0.d, _wgslsmith_f_op_vec4_f32(-global0.d))), ~(global0.a.zwz >> (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(global0.a.xyx, max(global0.a.xwz, global0.a.yxx)))), func_5(vec3<f32>(_wgslsmith_f_op_f32(max(596.0, var_0)), 1677.0, global0.e.x)));
                var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.zwz - global0.d.yxy));
                var var_2 = arg_0.zyy;
            }
            case -2147483648: {
                let var_1 = Struct_2(func_7(func_5(_wgslsmith_f_op_vec3_f32(trunc(global0.d.wxz))), vec4<u32>(u_input.a, _wgslsmith_mod_u32(max(1u, 8604u), _wgslsmith_mod_u32(1u, u_input.b)), u_input.a, u_input.b), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 912.0)))).b, Struct_2(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-244.0, global0.c, -925.0) - global0.d.zwz)).b, Struct_1(firstLeadingBit(global0.a), true, _wgslsmith_f_op_f32(global0.d.x - 136.0), _wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(-620.0, -190.0, -1012.0, -553.0)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.e.x, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000.0, var_0, var_0)) - vec4<f32>(970.0, var_0, var_0, var_0)), global0.a.zyz, global0.a.wzz)), Struct_1(~((vec4<i32>(global0.a.x, u_input.c, global0.a.x, 1755) & vec4<i32>(-4349, -1, arg_1, arg_1)) | global0.a), func_7(Struct_2(Struct_1(global0.a, false, 303.0, vec4<f32>(var_0, -1000.0, 187.0, var_0), global0.e), Struct_1(vec4<i32>(8415, -46216, global0.a.x, u_input.c), arg_0.x, -302.0, vec4<f32>(-965.0, 180.0, global0.e.x, -170.0), vec2<f32>(var_0, 230.0)), global0.d, global0.a.yzz, global0.a.wxx >> (vec3<u32>(0u, u_input.a, 0u) % vec3<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.b, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(41232u, 1u, 1u, 31289u), vec4<u32>(u_input.a, u_input.b, u_input.b, 4294967295u))), func_7(Struct_2(Struct_1(global0.a, false, 778.0, global0.d, global0.d.yx), Struct_1(global0.a, arg_0.x, -1509.0, global0.d, vec2<f32>(1018.0, -797.0)), global0.d, vec3<i32>(global0.a.x, global0.a.x, -2147483648), global0.a.zxw), ~vec4<u32>(u_input.a, u_input.b, u_input.a, 0u), Struct_1(global0.a, true, -778.0, global0.d, global0.e), func_5(global0.d.yxx)), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global0.e.x, 1411.0) - vec3<f32>(var_0, -101.0, 1026.0)))).b, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.d + vec4<f32>(-577.0, global0.d.x, var_0, var_0)), _wgslsmith_f_op_vec4_f32(-global0.d), func_5(global0.d.wxw).b.b)) + _wgslsmith_f_op_vec4_f32(ceil(global0.d))), global0.e), _wgslsmith_div_vec4_f32(global0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.d, _wgslsmith_f_op_vec4_f32(global0.d + vec4<f32>(global0.d.x, -2346.0, -1953.0, var_0))))), global0.a.yzw, ~global0.a.xyz);
                let var_2 = false;
                let var_3 = Struct_3(~min(0u & select(u_input.b, 4294967295u, false), u_input.b), -reverseBits(global0.a.zy), ~24276u <= _wgslsmith_mult_u32(1982u, countOneBits(countOneBits(u_input.a))), firstLeadingBit(select(~vec3<u32>(9716u, u_input.b, u_input.a), firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.b)), !arg_0.zwx)) << (vec3<u32>(u_input.a, u_input.a, 10257u) % vec3<u32>(32u)), func_5(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.c.x)), 137.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1122.0) - _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))));
                let var_4 = vec4<f32>(global0.d.x, -314.0, 2472.0, _wgslsmith_f_op_f32(abs(-2234.0)));
                let var_5 = true;
            }
            default: {
            }
        }
    }
    if ((!true == all(select(!arg_0.zz, arg_0.yx, !arg_0.wz))) || true) {
    }
    let var_1 = Struct_3(~u_input.b, vec2<i32>(abs(firstLeadingBit(0)), firstTrailingBit(59849)), false, vec3<u32>(firstTrailingBit(~reverseBits(31371u)), u_input.b, u_input.a), func_5(global0.d.zwx));
    return any(vec2<bool>(true, all(vec3<bool>(true, select(var_1.c, false, arg_0.x), all(arg_0.xyy)))));
}

fn func_3() -> Struct_3 {
    var var_0 = ~u_input.a;
    if (global0.b) {
        for (var var_1 = -35706; any(vec3<bool>(!global0.b || (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global0.a.x, global0.a.x), vec3<i32>(global0.a.x, u_input.c, -16992)) < 1685), global0.b, global0.b)); var_0 = 12361u) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            break;
        }
        var var_1 = -(~(((global0.a.x | 0) << (u_input.b % 32u)) & u_input.c));
        if (!(!global0.b | func_8(vec4<bool>(false, global0.e.x > -2674.0, any(vec2<bool>(global0.b, true)), false), func_4(vec2<bool>(false, false))))) {
            let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(select(vec2<u32>(u_input.a, 10843u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, global0.b)) ^ vec2<u32>(1u, 66243u)), ~vec2<u32>(u_input.b, u_input.a)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(11094u | 21098u, u_input.b ^ 11469u), (vec2<u32>(u_input.b, u_input.a) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) ^ vec2<u32>(u_input.b, 27682u), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, u_input.a)))));
            var var_3 = Struct_3(_wgslsmith_mod_u32(~(~u_input.a), _wgslsmith_mod_u32(1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, var_2), vec3<u32>(33055u, 1u, var_2))))), global0.a.yy, func_5(global0.d.zyy).a.b, select(firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4686u, 112665u, 4294967295u), vec3<u32>(1u, var_2, 16293u)), vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, var_2, var_2))), vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, var_2), ~vec2<u32>(u_input.b, 39233u)), 4676u >> (u_input.a % 32u)), select(select(!vec3<bool>(false, global0.b, global0.b), vec3<bool>(true, false, false), select(vec3<bool>(true, global0.b, false), vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, global0.b, false))), !select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(true, false, global0.b), false), !select(vec3<bool>(global0.b, false, false), vec3<bool>(false, global0.b, global0.b), true))), func_5(_wgslsmith_f_op_vec3_f32(global0.d.xzx - vec3<f32>(524.0, _wgslsmith_f_op_f32(floor(-736.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1466.0)))));
            var var_4 = func_7(func_5(func_7(var_3.e, _wgslsmith_div_vec4_u32(vec4<u32>(var_3.d.x, 4294967295u, 41967u, 84297u), vec4<u32>(u_input.a, 0u, var_2, var_2)), Struct_1(-vec4<i32>(3839, var_3.b.x, u_input.c, -37468), !false, global0.e.x, var_3.e.a.d, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-397.0, -293.0)))), Struct_2(var_3.e.a, func_5(global0.d.wxx).a, _wgslsmith_f_op_vec4_f32(ceil(var_3.e.b.d)), ~vec3<i32>(var_3.e.a.a.x, 21251, 2147483647), reverseBits(vec3<i32>(var_3.b.x, -29606, -2147483648)))).d.yzz), vec4<u32>(~(select(4294967295u, 0u, global0.b) & countOneBits(var_3.d.x)), var_2, 1u, var_2), var_3.e.b, func_5(global0.d.yww));
        }
        var var_2 = Struct_1(vec4<i32>(-1) * -global0.a, !global0.b, _wgslsmith_f_op_f32(-func_5(func_7(func_5(global0.d.zzz), select(vec4<u32>(u_input.b, 52328u, u_input.a, 35566u), vec4<u32>(9321u, 97650u, u_input.a, 0u), vec4<bool>(true, global0.b, global0.b, true)), Struct_1(vec4<i32>(u_input.c, -2147483648, 9018, 1), false, 710.0, global0.d, vec2<f32>(global0.d.x, global0.e.x)), func_5(global0.d.yyx)).d.wxy).c.x), vec4<f32>(-893.0, global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * 1274.0), -1474.0), global0.d.yy);
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var_0 = _wgslsmith_clamp_u32(u_input.b, 30521u, u_input.a);
            let var_1 = _wgslsmith_f_op_vec3_f32(func_7(func_5(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.e.x)), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1.0) * -829.0))), select(vec4<u32>(u_input.a, u_input.a, u_input.b, 0u), _wgslsmith_div_vec4_u32(~vec4<u32>(62433u, u_input.a, 17557u, u_input.a), ~vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b)), vec4<bool>(global0.b && global0.b, global0.b, global0.b, !global0.b)), func_7(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, 1000.0, global0.c) * global0.d.yxy)), ~vec4<u32>(u_input.b, u_input.b, u_input.a, 33338u), func_7(Struct_2(Struct_1(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, u_input.c), true, global0.d.x, vec4<f32>(global0.e.x, global0.d.x, -211.0, 154.0), global0.e), Struct_1(global0.a, global0.b, global0.e.x, global0.d, vec2<f32>(global0.c, -858.0)), global0.d, global0.a.wxw, global0.a.xxx), ~vec4<u32>(1u, 1u, 4294967295u, 4294967295u), Struct_1(global0.a, true, 1110.0, vec4<f32>(1000.0, global0.c, global0.e.x, -344.0), vec2<f32>(652.0, 1101.0)), func_5(vec3<f32>(global0.c, -399.0, global0.c))), func_5(vec3<f32>(global0.c, global0.d.x, -131.0))), func_5(global0.d.yxx)).d.ywy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d.wyx - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.e.x, -685.0, 1000.0)))) - global0.d.wwy)));
            var var_2 = Struct_2(Struct_1(global0.a, u_input.c >= _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-2147483648, 2147483647, -17971)), -global0.a.xzx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(592.0 - var_1.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d), vec4<f32>(var_1.x, -885.0, 841.0, -855.0)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1.0) * -515.0), _wgslsmith_f_op_f32(515.0 * global0.e.x), -790.0))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1102.0, 2713.0) + _wgslsmith_div_vec2_f32(vec2<f32>(3296.0, 1738.0), global0.d.ww))))), func_5(_wgslsmith_f_op_vec3_f32(-var_1)).a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-693.0, 716.0, global0.d.x, global0.e.x) - global0.d))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1378.0, _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-global0.e.x), 385.0)))), -(global0.a.yyx >> ((~vec3<u32>(u_input.b, u_input.b, 1u) & vec3<u32>(u_input.a, u_input.b, 16691u)) % vec3<u32>(32u))), select(vec3<i32>(global0.a.x | (i32(-1) * -33204), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483648, u_input.c, -1), 0 & 62659), u_input.c), -(vec3<i32>(0, 2344, u_input.c) ^ max(vec3<i32>(21053, u_input.c, u_input.c), global0.a.zxw)), !(_wgslsmith_f_op_f32(select(-2414.0, var_1.x, global0.b)) != global0.d.x)));
            continue;
        }
        switch (-37576) {
            case -2147483648: {
            }
            default: {
            }
        }
        switch (u_input.c << (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(139940u, 4294967295u)), vec2<u32>(1u, ~_wgslsmith_div_u32(u_input.b, 4294967295u))) % 32u)) {
            case -55844: {
                continue;
            }
            case 2147483647: {
            }
            case 40294: {
                break;
            }
            case 15336: {
                break;
            }
            default: {
                global0 = Struct_1(countOneBits(vec4<i32>(-34053, -2890 ^ ~76830, ~(~u_input.c), -global0.a.x)), global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1831.0 * global0.d.x)), _wgslsmith_f_op_f32(-func_5(global0.d.xwy).a.c)) - func_7(func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.e.x, global0.c, -178.0), vec3<f32>(2149.0, -465.0, global0.d.x), true))), abs(~vec4<u32>(u_input.a, 1u, 0u, u_input.b)), Struct_1(global0.a, u_input.a != u_input.b, _wgslsmith_f_op_f32(trunc(-2395.0)), global0.d, _wgslsmith_f_op_vec2_f32(-global0.e)), func_5(_wgslsmith_f_op_vec3_f32(global0.d.zyz + global0.d.wyz))).d.x), global0.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(func_7(Struct_2(Struct_1(vec4<i32>(1, global0.a.x, 10105, -60348), true, global0.d.x, vec4<f32>(global0.c, global0.e.x, global0.d.x, 878.0), global0.e), Struct_1(global0.a, global0.b, 102.0, global0.d, vec2<f32>(global0.c, global0.e.x)), vec4<f32>(478.0, -1000.0, global0.d.x, global0.e.x), vec3<i32>(global0.a.x, 0, -13037), vec3<i32>(1, -2147483648, -1)), ~vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), func_7(Struct_2(Struct_1(global0.a, global0.b, -1016.0, vec4<f32>(global0.e.x, global0.c, -328.0, global0.d.x), global0.e), Struct_1(vec4<i32>(-10099, -1, 0, -22368), false, 1341.0, global0.d, vec2<f32>(global0.c, global0.e.x)), global0.d, global0.a.wwy, vec3<i32>(12052, 19565, u_input.c)), vec4<u32>(19749u, u_input.a, 26382u, u_input.a), Struct_1(vec4<i32>(0, 0, 3010, u_input.c), global0.b, global0.d.x, global0.d, vec2<f32>(-393.0, global0.d.x)), Struct_2(Struct_1(vec4<i32>(global0.a.x, u_input.c, 29025, global0.a.x), true, global0.e.x, global0.d, global0.d.yz), Struct_1(global0.a, true, -1000.0, global0.d, vec2<f32>(873.0, 790.0)), vec4<f32>(global0.c, -897.0, global0.c, 335.0), vec3<i32>(-46993, u_input.c, global0.a.x), vec3<i32>(global0.a.x, 0, 1))), func_5(global0.d.wyy)).d.yy, global0.d.yw))));
            }
        }
        for (var var_1 = func_4(select(select(vec2<bool>(all(vec2<bool>(global0.b, global0.b)), !true), select(!vec2<bool>(false, false), !vec2<bool>(false, global0.b), !vec2<bool>(true, true)), true), select(vec2<bool>(0u > 0u, !global0.b), select(vec2<bool>(global0.b, global0.b), vec2<bool>(true, true), vec2<bool>(true, true)), func_7(func_5(global0.d.yxy), ~vec4<u32>(u_input.a, u_input.a, 0u, 9998u), Struct_1(global0.a, global0.b, global0.e.x, vec4<f32>(898.0, 1406.0, global0.d.x, 837.0), vec2<f32>(global0.e.x, -1057.0)), Struct_2(Struct_1(vec4<i32>(global0.a.x, global0.a.x, -2147483648, global0.a.x), global0.b, -453.0, vec4<f32>(-2121.0, global0.d.x, 875.0, -652.0), vec2<f32>(393.0, global0.e.x)), Struct_1(global0.a, true, -181.0, global0.d, global0.e), global0.d, global0.a.xwy, vec3<i32>(u_input.c, -2147483648, 1785))).b), !(!(!vec2<bool>(global0.b, global0.b))))); 0 < _wgslsmith_add_i32(firstTrailingBit(~func_7(Struct_2(Struct_1(global0.a, false, global0.d.x, vec4<f32>(global0.e.x, 672.0, 2146.0, -359.0), global0.d.yx), Struct_1(global0.a, global0.b, global0.e.x, global0.d, global0.e), vec4<f32>(-298.0, -364.0, 2833.0, global0.d.x), vec3<i32>(global0.a.x, u_input.c, -43891), vec3<i32>(-16735, -1, 83)), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), Struct_1(vec4<i32>(global0.a.x, 1, u_input.c, global0.a.x), true, -1237.0, vec4<f32>(global0.e.x, -1000.0, global0.c, global0.d.x), global0.e), Struct_2(Struct_1(vec4<i32>(global0.a.x, global0.a.x, u_input.c, global0.a.x), true, -1858.0, global0.d, vec2<f32>(-742.0, -1241.0)), Struct_1(vec4<i32>(u_input.c, 1, global0.a.x, -7808), false, -944.0, vec4<f32>(global0.e.x, -1000.0, 2179.0, global0.e.x), vec2<f32>(global0.c, global0.d.x)), vec4<f32>(1067.0, global0.c, -1157.0, global0.d.x), global0.a.wwy, global0.a.zxy)).a.x), ~(~_wgslsmith_sub_i32(global0.a.x, global0.a.x))); ) {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        }
        var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(global0.a.x), global0.a.x, global0.a.x), global0.a.yyy);
    }
    var_0 = 17825u;
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        break;
    }
    return Struct_3(max(u_input.a, u_input.b), vec2<i32>(27127, 1), ((1 ^ max(u_input.c, u_input.c)) ^ (~9490 & 0)) <= max(-1, global0.a.x), vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.a), reverseBits(~reverseBits(39368u)), abs(_wgslsmith_div_u32(~17965u, 46669u))), func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(global0.c * global0.d.x), -1159.0), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1263.0, 500.0, -109.0), _wgslsmith_div_vec3_f32(vec3<f32>(global0.e.x, global0.e.x, global0.e.x), vec3<f32>(-1899.0, -1271.0, -929.0)), vec3<bool>(global0.b, false, global0.b))), true))));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        if (global0.b) {
            let var_0 = func_3();
            let var_1 = _wgslsmith_mult_vec3_u32(~var_0.d, ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(arg_0.x, 4294967295u, 38658u), vec3<u32>(4294967295u, var_0.d.x, arg_0.x)), vec3<u32>(arg_0.x, 4294967295u, arg_0.x))) >> (~_wgslsmith_div_vec3_u32(~var_0.d, _wgslsmith_mod_vec3_u32(~arg_0.xxx, ~var_0.d)) % vec3<u32>(32u));
            continue;
        }
        break;
    }
    if (!(false && ((i32(-1) * -1) <= -1))) {
        return ~(countOneBits(_wgslsmith_sub_u32(arg_0.x, u_input.a) << ((37698u & arg_0.x) % 32u)) | reverseBits(~reverseBits(12026u)));
    }
    global0 = Struct_1(_wgslsmith_mult_vec4_i32(min(_wgslsmith_div_vec4_i32(global0.a, vec4<i32>(-68093, global0.a.x, u_input.c, 2147483647)), vec4<i32>(8272, -9925, u_input.c, u_input.c) | global0.a), global0.a) >> (_wgslsmith_mod_vec4_u32(abs(arg_0), select(arg_0, arg_0, vec4<bool>(true, global0.b, true, global0.b)) << (_wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(u_input.b, 0u, 0u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), !global0.b, func_3().e.a.e.x, global0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(floor(global0.e.x)))))));
    var var_0 = global0.a.xzx;
    var_0 = -global0.a.wyw;
    return ~56373u;
}

fn func_9(arg_0: Struct_3) -> u32 {
    for (var var_0 = -11981; var_0 > -1; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
    }
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~arg_0.d.x, 4294967295u, 1u, _wgslsmith_mod_u32(arg_0.a ^ u_input.a, arg_0.d.x | u_input.b)), ~vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(49321u, 1u)), 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, arg_0.a), vec4<u32>(53053u, 4294967295u, 4294967295u, u_input.a)), ~vec4<u32>(0u, 2050u, 4294967295u, 53630u)), func_2(vec4<u32>(u_input.a, arg_0.d.x, 50724u, arg_0.a))));
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        switch (_wgslsmith_sub_i32(-43038, _wgslsmith_dot_vec4_i32(max(select(arg_0.e.b.a, arg_0.e.b.a, vec4<bool>(false, global0.b, arg_0.c, true)), _wgslsmith_clamp_vec4_i32(arg_0.e.a.a, vec4<i32>(global0.a.x, -1, -22545, 33532), arg_0.e.a.a)) >> (max(firstTrailingBit(vec4<u32>(1u, 4294967295u, 58752u, 0u)), firstLeadingBit(vec4<u32>(arg_0.a, u_input.a, 1u, arg_0.d.x))) % vec4<u32>(32u)), arg_0.e.a.a))) {
            default: {
                global0 = arg_0.e.b;
                global0 = Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.b.x, abs(71868), abs(0), -50273), -max(arg_0.e.b.a, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.e.e.x, -2147483648, 0, -11037), vec4<i32>(1, arg_0.e.d.x, -39695, arg_0.b.x)))), false, func_7(func_5(arg_0.e.c.wzx), vec4<u32>(arg_0.a, arg_0.a, _wgslsmith_div_u32(abs(var_0), u_input.b & arg_0.a), (37959u << (0u % 32u)) << (var_0 % 32u)), arg_0.e.b, arg_0.e).e.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.e.b.c, 1015.0, _wgslsmith_f_op_f32(arg_0.e.b.e.x + 696.0), arg_0.e.b.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.e.c.x, 1000.0, global0.c, -1264.0), arg_0.e.b.d, vec4<bool>(arg_0.c, arg_0.e.b.b, false, false))), global0.d, !arg_0.e.a.b))))), arg_0.e.a.d.xx);
            }
        }
    }
    var var_1 = !global0.b;
    for (var var_2 = -2147483648; true; var_2 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        var_1 = !(!(!all(vec3<bool>(arg_0.e.b.b, false, global0.b)) & any(vec3<bool>(arg_0.c, arg_0.e.b.b, true))));
        switch (global0.a.x & u_input.c) {
            case 2147483647: {
                var_2 = ~(~arg_0.b.x);
                let var_3 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.e.c.yxz)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.zwz))), !select(!vec3<bool>(global0.b, false, global0.b), select(vec3<bool>(false, arg_0.c, arg_0.e.a.b), vec3<bool>(global0.b, arg_0.c, global0.b), vec3<bool>(true, global0.b, global0.b)), vec3<bool>(true, global0.b, true)))));
                let var_4 = Struct_1(abs(~(firstTrailingBit(vec4<i32>(u_input.c, 7119, var_3.a.a.x, arg_0.e.d.x)) | global0.a)), true, -1478.0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(506.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), var_3.c.x, -593.0)), arg_0.e.b.d.zx);
                let var_5 = func_3().e;
            }
            case 1: {
            }
            case -1: {
                var var_3 = Struct_2(func_5(arg_0.e.c.yzw).b, func_3().e.a, vec4<f32>(_wgslsmith_f_op_f32(-1700.0), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d.x, global0.e.x)))), arg_0.e.c.x), reverseBits(-arg_0.e.d), arg_0.e.d);
                var_2 = -global0.a.x;
                let var_4 = global0.a.x;
                let var_5 = _wgslsmith_add_i32(-u_input.c, ~1435);
            }
            default: {
                continue;
            }
        }
        continue;
    }
    return 21563u;
}

fn func_10(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    switch (min(abs(u_input.c), ~11669 & (i32(-1) * -971))) {
        case 2147483647: {
        }
        default: {
        }
    }
    if (false) {
    }
    if (false) {
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            let var_0 = select(select(!vec3<bool>(global0.b, all(vec2<bool>(false, true)), all(vec3<bool>(false, true, false))), !select(!vec3<bool>(false, false, true), select(vec3<bool>(false, arg_2.e.b.b, arg_2.e.b.b), vec3<bool>(global0.b, false, true), vec3<bool>(global0.b, global0.b, true)), func_3().c), arg_2.c), vec3<bool>(!(!arg_2.e.a.b), true, select(true, arg_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.x, u_input.c, -2147483648), arg_2.e.a.a.yxy) > ~51263)), vec3<bool>(arg_2.e.a.b, !func_3().c, func_8(vec4<bool>(true, arg_2.e.a.b, arg_2.e.a.b, global0.b), ~2147483647) & false));
            var var_1 = arg_2.e.a.a;
        }
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
        var var_0 = arg_2.e.b.a << (~_wgslsmith_add_vec4_u32(vec4<u32>(43494u, arg_2.a, u_input.b, 95355u) & _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a, 4294967295u, arg_1, 4294967295u), vec4<u32>(19537u, 16866u, arg_2.a, u_input.b)), ~vec4<u32>(68334u, 0u, 40088u, 1u)) % vec4<u32>(32u));
    }
    var var_0 = func_7(arg_2.e, vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(177u, 4152u, arg_2.d.x)), reverseBits(arg_2.d)), func_3().a ^ (func_3().d.x & ~arg_1), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, arg_1, arg_1, 103639u), vec4<u32>(1u, 71172u, 4010u, 35719u) | vec4<u32>(1u, u_input.a, 0u, 1u)), 0u), abs(_wgslsmith_sub_u32(u_input.b | 72511u, arg_2.d.x))), arg_2.e.b, arg_2.e);
    for (var var_1 = 2147483647; true; var_1 -= 1) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        switch (global0.a.x) {
            case -2147483648: {
                let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(round(-551.0)))) * 459.0);
                var_1 = var_0.a.x;
                let var_3 = _wgslsmith_f_op_f32(-1000.0);
                var_0 = arg_2.e.b;
                let var_4 = func_5(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.e.b.e.x, arg_2.e.a.c)) - _wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(991.0 - global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 * var_3))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.c.x + var_0.e.x)))));
            }
            case 2147483647: {
            }
            case 43871: {
                var_0 = arg_2.e.a;
                var var_2 = Struct_1(-firstLeadingBit(global0.a | vec4<i32>(2147483647, -1, arg_2.e.b.a.x, -14988)), arg_2.c, global0.e.x, global0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1646.0, global0.e.x)) + vec2<f32>(var_0.c, arg_2.e.c.x)))));
            }
            case -1: {
            }
            default: {
                var_0 = arg_2.e.a;
                var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.e.b.c)), arg_0, var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-319.0 - -435.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.x + global0.e.x), arg_0, !true)), !false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1365.0))))));
                var_0 = func_3().e.a;
                var var_3 = arg_2.e.a;
                continue;
            }
        }
    }
    return Struct_1(func_7(Struct_2(func_5(arg_2.e.c.wyz).b, Struct_1(vec4<i32>(2665, -20684, -15064, 23858) ^ global0.a, var_0.b | true, global0.d.x, var_0.d, _wgslsmith_f_op_vec2_f32(max(arg_2.e.a.d.xx, vec2<f32>(global0.e.x, 569.0)))), _wgslsmith_f_op_vec4_f32(abs(var_0.d)), abs(vec3<i32>(-1, -10002, -5675)), arg_2.e.b.a.xyx), vec4<u32>(arg_1, _wgslsmith_mult_u32(arg_2.a, u_input.a | arg_1), arg_2.d.x, func_2(abs(vec4<u32>(0u, 1u, arg_1, 0u)))), Struct_1(_wgslsmith_sub_vec4_i32(max(var_0.a, vec4<i32>(2147483647, u_input.c, 33228, 1333)), -var_0.a), -global0.a.x <= ~(-53183), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec4_f32(arg_2.e.b.d - _wgslsmith_div_vec4_f32(arg_2.e.a.d, vec4<f32>(-138.0, 580.0, var_0.c, global0.d.x))), _wgslsmith_f_op_vec2_f32(global0.e - vec2<f32>(arg_0, -656.0))), arg_2.e).a, func_3().b.x >= u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-300.0)) + 522.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-960.0 + arg_0) + _wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1287.0, global0.d.x, -366.0, -797.0))), vec4<f32>(357.0, func_3().e.a.e.x, -115.0, _wgslsmith_f_op_f32(arg_2.e.b.d.x + 466.0)))) - _wgslsmith_f_op_vec4_f32(sign(var_0.d))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1583.0)))) - -843.0), var_0.d.x));
}

fn func_1(arg_0: u32) -> i32 {
    global0 = func_10(global0.e.x, func_9(Struct_3(~func_2(vec4<u32>(arg_0, arg_0, arg_0, u_input.b)), func_5(global0.d.zxz).b.a.wy, global0.b, (vec3<u32>(u_input.a, arg_0, arg_0) << (vec3<u32>(62995u, 1690u, 56448u) % vec3<u32>(32u))) << (countOneBits(vec3<u32>(1u, arg_0, 16237u)) % vec3<u32>(32u)), func_3().e)), func_3(), _wgslsmith_add_i32(_wgslsmith_sub_i32(func_3().b.x, (1 | -1) & min(global0.a.x, global0.a.x)), 56953));
    for (var var_0 = 1; func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.d.xxy)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.c, global0.e.x)), vec3<f32>(834.0, global0.c, _wgslsmith_f_op_f32(1762.0 - global0.d.x)), !vec3<bool>(global0.b, false, false))))).b.b; var_0 -= 1) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        var var_1 = global0.d.wxy;
        switch (~(~(~func_5(global0.d.yxw).b.a.x)) << (~(~(~_wgslsmith_add_u32(7789u, u_input.b))) % 32u)) {
            default: {
                let var_2 = func_10(global0.e.x, 4294967295u, func_3(), -u_input.c).d.xz;
                var_1 = vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + _wgslsmith_f_op_f32(-var_1.x)))));
            }
        }
        return _wgslsmith_sub_i32(-(~(-2147483648)), global0.a.x);
    }
    global0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(global0.e.x + global0.c), _wgslsmith_f_op_f32(abs(-257.0)), _wgslsmith_f_op_f32(global0.d.x * func_3().e.b.c))).a;
    global0 = func_7(Struct_2(Struct_1(global0.a, !(!false), func_3().e.b.e.x, global0.d, vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(global0.e.x + 1806.0))), Struct_1(~select(vec4<i32>(u_input.c, global0.a.x, global0.a.x, -2147483648), global0.a, vec4<bool>(true, false, global0.b, global0.b)), false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1913.0, 1798.0, 1341.0, global0.d.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1771.0, -999.0, 226.0, global0.c) - vec4<f32>(1206.0, global0.c, 449.0, 406.0))), _wgslsmith_f_op_vec2_f32(-func_3().e.c.yy)), global0.d, reverseBits(global0.a.xyx), global0.a.xzx), ~countOneBits(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_0, 112394u, 66497u, arg_0)), ~vec4<u32>(4294967295u, 1u, 28908u, 0u))), func_5(vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.e.x - global0.c), _wgslsmith_f_op_f32(global0.e.x + 1179.0))), 828.0)).b, Struct_2(func_10(global0.d.x, arg_0, func_3(), firstTrailingBit(reverseBits(0))), func_10(global0.d.x, _wgslsmith_mod_u32(29454u, arg_0), Struct_3(1u, _wgslsmith_add_vec2_i32(vec2<i32>(8065, global0.a.x), global0.a.xx), func_3().c, ~vec3<u32>(76543u, 1u, u_input.a), Struct_2(Struct_1(global0.a, false, global0.d.x, global0.d, global0.d.zw), Struct_1(vec4<i32>(6621, global0.a.x, global0.a.x, 1), false, global0.d.x, global0.d, global0.e), vec4<f32>(global0.d.x, 824.0, 680.0, global0.c), vec3<i32>(14369, u_input.c, u_input.c), global0.a.zxw)), ~(i32(-1) * -71089)), _wgslsmith_f_op_vec4_f32(global0.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d))), vec3<i32>(_wgslsmith_div_i32(~u_input.c, global0.a.x), global0.a.x, u_input.c), max(vec3<i32>(u_input.c << (arg_0 % 32u), _wgslsmith_sub_i32(9792, global0.a.x), _wgslsmith_clamp_i32(u_input.c, u_input.c, -40584)), func_5(_wgslsmith_f_op_vec3_f32(round(global0.d.yyx))).d)));
    switch ((-26599 << (arg_0 % 32u)) & func_3().b.x) {
        case -22778: {
            let var_0 = vec2<bool>(!global0.b, true);
            let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(-global0.e.x))) - 1643.0)));
            for (var var_2 = func_10(-1000.0, 46316u, func_3(), u_input.c).a.x; var_2 < -18923; var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, i32(-1) * -1, global0.a.x, min(global0.a.x, _wgslsmith_add_i32(44827, 0)) | u_input.c), abs(firstLeadingBit(~(global0.a ^ global0.a))))) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_3 = vec3<bool>(!(false != global0.b), true, !(func_8(vec4<bool>(global0.b, var_0.x, global0.b, false), 15945) || any(!vec4<bool>(false, false, false, true))));
                continue;
            }
        }
        case -23919: {
            return global0.a.x;
        }
        case 86061: {
            if (false) {
                var var_0 = true;
            }
            global0 = func_7(Struct_2(Struct_1(global0.a, _wgslsmith_f_op_f32(-584.0) <= -425.0, global0.c, vec4<f32>(-1000.0, -1083.0, func_7(Struct_2(Struct_1(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, u_input.c), true, 172.0, global0.d, vec2<f32>(global0.d.x, global0.e.x)), Struct_1(vec4<i32>(43280, -2147483648, u_input.c, -2147483648), global0.b, global0.e.x, vec4<f32>(global0.d.x, global0.d.x, global0.c, global0.e.x), global0.e), vec4<f32>(-1024.0, -229.0, 1034.0, -1339.0), vec3<i32>(0, u_input.c, u_input.c), vec3<i32>(-38360, global0.a.x, global0.a.x)), vec4<u32>(39810u, 4294967295u, 1167u, u_input.b), Struct_1(global0.a, true, global0.c, global0.d, global0.e), Struct_2(Struct_1(global0.a, global0.b, 123.0, global0.d, global0.d.zx), Struct_1(global0.a, true, -173.0, global0.d, vec2<f32>(1000.0, global0.d.x)), vec4<f32>(-410.0, -218.0, global0.d.x, global0.e.x), global0.a.wxz, global0.a.zxx)).d.x, func_5(vec3<f32>(-675.0, global0.d.x, -883.0)).b.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.zw - global0.e))), func_3().e.b, global0.d, global0.a.xxz, global0.a.wyz), ~abs(select(vec4<u32>(7710u, u_input.b, 4294967295u, u_input.a), vec4<u32>(arg_0, 28587u, u_input.a, 31543u), global0.b) | vec4<u32>(u_input.b, 34093u, 1u, arg_0)), func_5(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -785.0), _wgslsmith_f_op_f32(-764.0 * 615.0), _wgslsmith_f_op_f32(-1244.0)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.d.xwx + vec3<f32>(global0.c, global0.c, global0.d.x))))))).a, Struct_2(func_3().e.b, func_3().e.b, func_3().e.a.d, _wgslsmith_mult_vec3_i32(vec3<i32>(~2147483647, global0.a.x, ~u_input.c), _wgslsmith_sub_vec3_i32(global0.a.ywy, abs(vec3<i32>(9591, u_input.c, 4751)))), vec3<i32>(-1) * -_wgslsmith_add_vec3_i32(vec3<i32>(global0.a.x, 0, -1), vec3<i32>(2147483647, 39053, 2147483647))));
            var var_0 = Struct_3(0u, global0.a.wz, global0.b, select(vec3<u32>(~(~arg_0), 114492u, u_input.b), _wgslsmith_clamp_vec3_u32(max(countOneBits(vec3<u32>(4294967295u, 1u, 0u)), vec3<u32>(arg_0, 36881u, arg_0)), vec3<u32>(~u_input.a, 39688u, 11550u), abs(select(vec3<u32>(u_input.a, arg_0, arg_0), vec3<u32>(51610u, arg_0, 4294967295u), true))), !vec3<bool>(any(vec2<bool>(true, true)), global0.b, global0.b)), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.xxw) * _wgslsmith_div_vec3_f32(vec3<f32>(650.0, 110.0, 1711.0), vec3<f32>(-1828.0, -702.0, -369.0))) * global0.d.zxx)));
            var var_1 = !(_wgslsmith_f_op_f32(876.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * global0.c))) != -249.0);
            for (var var_2 = -2147483648; var_2 > 16219; var_2 += 1) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                var_1 = global0.b;
                var var_3 = var_0.e.a.a;
                let var_4 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-826.0))), var_0.e.a.e.x)));
                continue;
            }
        }
        default: {
            let var_0 = vec2<i32>(u_input.c, -(-(-5875 | u_input.c) ^ -80161));
            global0 = func_5(global0.d.wzy).a;
            let var_1 = _wgslsmith_f_op_f32(110.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(783.0, 223.0)))) * 406.0)));
            var var_2 = func_3().e;
        }
    }
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(global0.a, global0.a), -1, u_input.c, -global0.a.x), countOneBits(vec4<i32>(global0.a.x, global0.a.x, 43507, global0.a.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(41795u, 1u, 1u, arg_0), vec4<u32>(4294967295u, 0u, arg_0, 4294967295u)) % vec4<u32>(32u)))), max(global0.a, global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    if (!(false | any(select(!vec3<bool>(false, false, false), vec3<bool>(global0.b, global0.b, global0.b), select(vec3<bool>(false, true, true), vec3<bool>(global0.b, global0.b, global0.b), global0.b))))) {
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            continue;
        }
    }
    switch (_wgslsmith_mod_i32(global0.a.x, -1)) {
        case -1: {
            let var_0 = u_input.c;
        }
        default: {
            var var_0 = ~firstTrailingBit(~max(-global0.a.zw, _wgslsmith_mod_vec2_i32(vec2<i32>(global0.a.x, u_input.c), global0.a.zx)));
        }
    }
    var var_0 = 109.0;
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        switch (min(u_input.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global0.a.yzx, global0.a.wyy), vec3<i32>(-2147483648, u_input.c, 1)), _wgslsmith_dot_vec2_i32(abs(global0.a.yz), _wgslsmith_div_vec2_i32(vec2<i32>(0, 2147483647), global0.a.yy)))) >> (max(~36310u, 1u) % 32u)) {
            default: {
                continue;
            }
        }
        var var_1 = !(min(u_input.b, ~11443u) < ~u_input.a);
        var var_2 = Struct_3(_wgslsmith_add_u32(u_input.b, select(1u, ~u_input.a, 31784u < 62093u)), vec2<i32>(_wgslsmith_sub_i32(func_1(_wgslsmith_add_u32(u_input.a, u_input.a)), u_input.c), 4653), all(select(!(!vec4<bool>(global0.b, global0.b, global0.b, true)), !select(vec4<bool>(global0.b, global0.b, true, global0.b), vec4<bool>(global0.b, false, global0.b, true), global0.b), ~0u < ~4294967295u)), ~(vec3<u32>(u_input.a & 0u, 97243u << (65456u % 32u), ~u_input.b) | vec3<u32>(_wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_add_u32(u_input.b, u_input.a), u_input.b)), func_3().e);
    }
    for (var var_1: i32; ; var_1 -= 1) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        var var_2 = 55381u;
    }
    let var_1 = Struct_2(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.xwx), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.x, 1083.0, global0.d.x) * global0.d.zxz)))).b, Struct_1(vec4<i32>(_wgslsmith_clamp_i32(u_input.c, -47133, 0), -2147483648, func_7(Struct_2(Struct_1(global0.a, global0.b, 1084.0, global0.d, vec2<f32>(global0.e.x, 717.0)), Struct_1(global0.a, false, global0.e.x, global0.d, global0.e), global0.d, vec3<i32>(global0.a.x, global0.a.x, u_input.c), vec3<i32>(1591, u_input.c, 10023)), vec4<u32>(u_input.a, u_input.b, 0u, u_input.a), Struct_1(vec4<i32>(0, 48192, u_input.c, u_input.c), global0.b, global0.c, global0.d, global0.e), Struct_2(Struct_1(vec4<i32>(u_input.c, -5433, -45601, global0.a.x), global0.b, global0.e.x, global0.d, vec2<f32>(global0.e.x, -361.0)), Struct_1(global0.a, true, global0.d.x, vec4<f32>(1290.0, global0.d.x, global0.d.x, global0.e.x), global0.e), global0.d, vec3<i32>(-7841, -8967, global0.a.x), global0.a.wyw)).a.x & _wgslsmith_mod_i32(u_input.c, u_input.c), abs(~global0.a.x)), false, _wgslsmith_f_op_f32(-global0.c), vec4<f32>(_wgslsmith_f_op_f32(-global0.c), 1536.0, _wgslsmith_f_op_f32(min(global0.e.x, _wgslsmith_f_op_f32(exp2(global0.e.x)))), 1403.0), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.d.xx), global0.e))), global0.d, min(global0.a.yyw & (vec3<i32>(u_input.c, global0.a.x, global0.a.x) & -vec3<i32>(-2147483648, -46477, global0.a.x)), ~func_10(_wgslsmith_f_op_f32(global0.c - global0.c), ~4294967295u, Struct_3(82194u, global0.a.yw, true, vec3<u32>(u_input.b, u_input.a, u_input.a), Struct_2(Struct_1(global0.a, global0.b, global0.e.x, vec4<f32>(global0.e.x, 1188.0, 865.0, -1000.0), vec2<f32>(global0.c, global0.c)), Struct_1(global0.a, false, global0.c, global0.d, vec2<f32>(global0.e.x, 262.0)), global0.d, vec3<i32>(global0.a.x, 1, 1), global0.a.wxw)), -18997).a.ywx), select(vec3<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -2147483648, global0.a.x, -52510) ^ vec4<i32>(-14841, global0.a.x, global0.a.x, -1), ~global0.a), -(global0.a.x ^ 2147483647)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, 1, u_input.c), global0.a.wwx)), _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(f32(-1.0) * -2007.0)) >= _wgslsmith_f_op_f32(-global0.e.x)));
    let var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.x, ~vec2<u32>(36911u, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_7(var_1, ~vec4<u32>(u_input.b, 57516u, 0u, 21823u), var_1.a, Struct_2(var_1.a, var_1.b, global0.d, var_1.d, var_1.e)).c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-753.0), var_1.a.e.x)))), var_1.c.yw, _wgslsmith_sub_i32(8348, countOneBits(0)));
}

