// {"0:0":[192,47,170,209,81,157,253,211,28,169,190,53,206,102,237,154,222,121,229,194,111,78,211,79,120,8,21,110,213,194,240,52,145,78,145,158,112,53,8,192,64,101,216,27,152,239,158,144,177,155,216,120,227,191,255,123,114,105,206,30,66,129,241,7]}
// Seed: 4664953763738169571

struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
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

var<private> LOOP_COUNTERS: array<u32, 43>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        switch (arg_2) {
            default: {
                var var_0 = Struct_3(select(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(1u), ~u_input.e.x, ~u_input.e.x, 0u), vec4<u32>(arg_0.d << (u_input.e.x % 32u), ~25524u, 0u, u_input.e.x >> (arg_0.d % 32u))), ~vec4<u32>(abs(16607u), reverseBits(arg_0.d), arg_0.b.x, 14212u), false), Struct_2(arg_0.b, arg_0.c, !select(select(vec2<bool>(false, arg_0.c.d), vec2<bool>(false, false), arg_0.c.d), vec2<bool>(arg_1.d, true), !vec2<bool>(arg_0.c.d, false)), Struct_1(arg_0.c.a, vec4<i32>(u_input.a.x | arg_2, -35264, arg_0.c.b.x, arg_0.a.x), -_wgslsmith_add_i32(1, 1), select(false && arg_1.d, true && false, arg_1.d)), ~select(arg_0.b, u_input.e, arg_0.c.d)), arg_0.c, arg_0.c.a.x);
                var_0 = Struct_3(~abs(var_0.a), var_0.b, arg_1, _wgslsmith_f_op_f32(1000.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a.x) - arg_0.c.a.x))));
                let var_1 = !vec4<bool>(arg_0.c.d, all(select(vec3<bool>(false, arg_0.c.d, true), select(vec3<bool>(true, arg_0.c.d, false), vec3<bool>(var_0.c.d, arg_1.d, var_0.b.b.d), vec3<bool>(var_0.b.c.x, false, true)), var_0.b.b.d)), !false, !(!(!true)));
                var var_2 = !var_1.x | true;
            }
        }
        var var_0 = Struct_1(arg_0.c.a, -arg_0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.x, u_input.a.x, arg_1.c), vec3<i32>(arg_1.b.x, u_input.b.x, 1), vec3<i32>(-1, u_input.c, arg_2)), abs(vec3<i32>(arg_1.b.x, -2147483648, arg_1.c))), select(vec3<i32>(-1, -1, arg_2), ~vec3<i32>(2147483647, arg_1.b.x, u_input.a.x), !vec3<bool>(false, true, arg_0.c.d))), arg_1.b.wyw), !arg_1.d);
    }
    return select(~_wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(u_input.e.x, 26541u, arg_0.d, u_input.e.x)), vec4<u32>(countOneBits(arg_0.b.x), abs(arg_0.d), u_input.e.x, ~u_input.e.x)), vec4<u32>(u_input.e.x, ~(~firstLeadingBit(u_input.e.x)), u_input.e.x, arg_0.d), false);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    let var_0 = 19880;
    let var_1 = -(arg_0.d.b.x ^ ~69627);
    if (arg_1.c.d) {
        let var_2 = Struct_2(abs(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 6359u), ~u_input.e), vec3<u32>(arg_1.b.x, u_input.e.x, 13271u))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.x), arg_0.b.a.x, 134.0, arg_0.d.a.x), arg_1.c.b, 15752, !(!arg_1.c.d)), select(!select(select(vec2<bool>(arg_1.c.d, arg_1.c.d), arg_0.c, false), arg_0.c, true), arg_0.c, arg_0.c), arg_0.b, u_input.e);
        let var_3 = false;
    }
    var var_2 = 4294967295u;
    let var_3 = Struct_3(func_6(Struct_4(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d, arg_1.a.wx), var_0, ~arg_0.d.b.x, min(arg_0.d.b.x, -20644)), select(vec3<u32>(1u, 0u, arg_0.e.x), ~u_input.e, arg_1.c.d != arg_1.c.d), arg_1.c, _wgslsmith_add_u32(~1u, arg_0.e.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(500.0, arg_1.c.a.x, -1668.0, arg_1.c.a.x)), _wgslsmith_mod_vec4_i32(arg_1.a, max(vec4<i32>(u_input.d.x, 7222, -23059, 6491), vec4<i32>(51069, 0, var_1, var_1))), abs(min(-2147483648, 0)), arg_0.d.d), _wgslsmith_mult_i32(-(~arg_0.b.c), 15245)), arg_0, Struct_1(vec4<f32>(-660.0, arg_0.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.a.x))), _wgslsmith_f_op_f32(max(arg_0.d.a.x, _wgslsmith_f_op_f32(-arg_1.c.a.x)))), arg_1.a, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -1, arg_1.c.b.x, u_input.d.x), min(u_input.a, arg_0.d.b))), arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.x)));
    return Struct_4(u_input.a, _wgslsmith_div_vec3_u32(firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(30106u, var_3.b.e.x, 55456u), vec3<u32>(arg_1.d, arg_1.d, u_input.e.x))), arg_0.e), arg_0.d, 1u);
}

fn func_7(arg_0: Struct_4, arg_1: f32) -> Struct_4 {
    let var_0 = Struct_2(~(~reverseBits(u_input.e)), Struct_1(vec4<f32>(-1069.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2527.0, -1442.0))), arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), arg_0.c.a.x))), min(vec4<i32>(arg_0.c.c, u_input.c, -23551, 1) ^ -arg_0.a, u_input.a | vec4<i32>(arg_0.a.x, 0, arg_0.a.x, -2147483648)), _wgslsmith_add_i32(arg_0.a.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(27894, u_input.d.x, 1, 2147483647), arg_0.a)), !(u_input.e.x <= 0u) || any(select(vec2<bool>(true, arg_0.c.d), vec2<bool>(arg_0.c.d, false), vec2<bool>(false, true)))), select(!vec2<bool>(!true, u_input.d.x > u_input.d.x), !vec2<bool>(true, !arg_0.c.d), !arg_0.c.d), arg_0.c, countOneBits(select(~(~vec3<u32>(14760u, 0u, arg_0.b.x)), func_5(Struct_2(arg_0.b, Struct_1(arg_0.c.a, vec4<i32>(u_input.c, -20048, arg_0.c.b.x, arg_0.c.c), 15924, arg_0.c.d), vec2<bool>(arg_0.c.d, true), Struct_1(vec4<f32>(202.0, -387.0, 423.0, arg_0.c.a.x), u_input.a, -2147483648, false), arg_0.b), func_5(Struct_2(arg_0.b, arg_0.c, vec2<bool>(false, arg_0.c.d), Struct_1(vec4<f32>(arg_1, 556.0, 1174.0, arg_0.c.a.x), vec4<i32>(-1, -1, u_input.d.x, arg_0.c.c), -2147483648, arg_0.c.d), vec3<u32>(4294967295u, 43841u, 98026u)), arg_0)).b, !(-1431.0 == arg_0.c.a.x))));
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
    }
    switch (var_0.d.c) {
        case -10881: {
            if (false) {
                let var_1 = -(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-52892, 0), i32(-1) * -42063) | 16588);
            }
        }
        case -1: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                let var_1 = !true;
                let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(22703u, ~(var_0.a.x ^ 4294967295u)), 1u), ~vec3<u32>(~u_input.e.x | reverseBits(1u), arg_0.d, ~_wgslsmith_clamp_u32(arg_0.d, var_0.e.x, arg_0.b.x)));
                let var_3 = var_0;
            }
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_1 = countOneBits(21036);
                var var_2 = Struct_3(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 57702u, arg_0.d, 0u), vec4<u32>(1u, u_input.e.x, arg_0.b.x, u_input.e.x)), ~vec4<u32>(52569u, 13589u, u_input.e.x, var_0.a.x), vec4<u32>(var_0.e.x, _wgslsmith_clamp_u32(42836u, 32085u, u_input.e.x), var_0.e.x, arg_0.d)) >> (vec4<u32>(var_0.e.x, arg_0.d, var_0.e.x, arg_0.b.x) % vec4<u32>(32u)), Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 46748u), vec4<u32>(arg_0.d, 61645u, arg_0.d, u_input.e.x) << (vec4<u32>(0u, 0u, u_input.e.x, 1u) % vec4<u32>(32u))), 4294967295u, 15753u), var_0.b, var_0.c, arg_0.c, vec3<u32>(17798u, abs(u_input.e.x), u_input.e.x ^ ~1u)), arg_0.c, -1000.0);
            }
            var var_1 = Struct_3(~(~countOneBits(max(vec4<u32>(5921u, 0u, arg_0.d, 18132u), vec4<u32>(44426u, var_0.e.x, 4294967295u, 9734u)))), var_0, func_5(Struct_2(firstTrailingBit(~vec3<u32>(41725u, var_0.e.x, u_input.e.x)), var_0.d, vec2<bool>(select(false, true, var_0.b.d), arg_0.c.d), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.c.a), vec4<i32>(-55356, 1, var_0.b.c, u_input.b.x), var_0.b.b.x ^ 2147483647, !arg_0.c.d), vec3<u32>(124588u, _wgslsmith_dot_vec2_u32(arg_0.b.yx, vec2<u32>(71340u, u_input.e.x)), 24259u ^ 32822u)), arg_0).c, _wgslsmith_f_op_f32(-730.0));
            for (; all(vec2<bool>(var_1.c.d, var_0.b.d)); ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var_1 = Struct_3(func_6(func_5(Struct_2(~var_1.b.a, var_1.b.b, var_1.b.c, Struct_1(vec4<f32>(-1087.0, 948.0, -547.0, 1102.0), vec4<i32>(-25596, 64618, -19038, -66469), 28006, arg_0.c.d), vec3<u32>(4294967295u, 20162u, 6034u) | vec3<u32>(arg_0.d, arg_0.d, 4294967295u)), func_5(var_0, func_5(var_0, arg_0))), var_0.b, arg_0.c.b.x), var_0, func_5(Struct_2(vec3<u32>(~1u, var_0.a.x, var_0.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1413.0, 1186.0, 1210.0, arg_0.c.a.x))), vec4<i32>(arg_0.c.c, -1, 4342, var_1.b.d.c), var_0.b.b.x, true), var_0.c, func_5(Struct_2(vec3<u32>(87797u, arg_0.b.x, 44597u), arg_0.c, var_1.b.c, var_1.c, var_1.a.zxx), arg_0).c, vec3<u32>(27387u, arg_0.b.x, 52725u)), arg_0).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577.0 + _wgslsmith_div_f32(var_0.b.a.x, arg_1)))));
            }
            var_1 = Struct_3(var_1.a ^ vec4<u32>(1u, 1u, abs(var_0.a.x), ~32746u), var_0, func_5(Struct_2(vec3<u32>(select(1u, 1u, arg_0.c.d), 1u, _wgslsmith_add_u32(var_1.a.x, var_0.a.x)), arg_0.c, !(!var_0.c), arg_0.c, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 15139u, 4294967295u), _wgslsmith_sub_vec3_u32(var_1.a.xyw, u_input.e))), func_5(Struct_2(min(vec3<u32>(u_input.e.x, arg_0.d, 18465u), vec3<u32>(33244u, var_0.a.x, arg_0.b.x)), Struct_1(var_1.c.a, vec4<i32>(arg_0.c.b.x, -2147483648, arg_0.c.b.x, 1), -42504, var_0.b.d), vec2<bool>(true, var_1.b.c.x), func_5(Struct_2(vec3<u32>(var_0.a.x, arg_0.b.x, 1u), var_1.c, vec2<bool>(var_1.b.c.x, false), Struct_1(var_0.d.a, var_1.c.b, var_0.d.c, true), var_1.b.a), arg_0).c, var_1.b.e), Struct_4(select(u_input.a, vec4<i32>(-17762, 2147483647, 0, arg_0.a.x), vec4<bool>(arg_0.c.d, true, true, true)), var_1.a.zxz, Struct_1(vec4<f32>(var_0.b.a.x, arg_0.c.a.x, -2049.0, -403.0), var_0.b.b, -2147483648, false), select(4294967295u, var_0.a.x, arg_0.c.d)))).c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * var_1.b.b.a.x) * arg_0.c.a.x) * _wgslsmith_f_op_f32(f32(-1.0) * -489.0)))));
        }
        case -2147483648: {
        }
        case 2147483647: {
            for (var var_1 = -1; ; var_1 += 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_2 = var_0.c.x;
            }
        }
        default: {
        }
    }
    var var_1 = ~func_5(var_0, arg_0).c.c;
    let var_2 = func_5(Struct_2(vec3<u32>(func_5(var_0, func_5(Struct_2(u_input.e, var_0.b, vec2<bool>(var_0.d.d, arg_0.c.d), Struct_1(vec4<f32>(arg_0.c.a.x, -1372.0, 1657.0, arg_0.c.a.x), vec4<i32>(arg_0.a.x, 1, -418, -8926), arg_0.c.c, arg_0.c.d), arg_0.b), Struct_4(vec4<i32>(var_0.b.c, var_0.d.b.x, -2147483648, arg_0.c.c), arg_0.b, arg_0.c, 4294967295u))).b.x, _wgslsmith_add_u32(~u_input.e.x, 52453u), 6089u), func_5(Struct_2(~var_0.e, Struct_1(vec4<f32>(128.0, -1425.0, var_0.b.a.x, 1000.0), u_input.a, 0, true), !vec2<bool>(arg_0.c.d, arg_0.c.d), func_5(var_0, Struct_4(var_0.b.b, vec3<u32>(13852u, var_0.e.x, 80200u), Struct_1(var_0.d.a, arg_0.c.b, u_input.d.x, false), 4294967295u)).c, ~vec3<u32>(4294967295u, 0u, var_0.a.x)), Struct_4(max(vec4<i32>(2147483647, var_0.b.c, u_input.c, 0), vec4<i32>(-12512, arg_0.c.b.x, 1, arg_0.c.c)), func_6(arg_0, var_0.b, arg_0.c.c).yxw, func_5(Struct_2(var_0.e, Struct_1(vec4<f32>(var_0.d.a.x, arg_0.c.a.x, -589.0, arg_0.c.a.x), u_input.a, 1, var_0.d.d), var_0.c, Struct_1(arg_0.c.a, u_input.a, -2147483648, true), vec3<u32>(u_input.e.x, 4294967295u, var_0.a.x)), Struct_4(u_input.a, arg_0.b, Struct_1(arg_0.c.a, arg_0.a, var_0.d.c, var_0.d.d), 41809u)).c, _wgslsmith_dot_vec2_u32(var_0.e.yx, var_0.e.zy))).c, var_0.c, var_0.d, ~_wgslsmith_sub_vec3_u32(~var_0.e, ~u_input.e)), func_5(Struct_2(reverseBits(vec3<u32>(arg_0.d, arg_0.b.x, 6506u) << (var_0.a % vec3<u32>(32u))), func_5(Struct_2(vec3<u32>(var_0.e.x, u_input.e.x, 0u), Struct_1(vec4<f32>(678.0, -302.0, -154.0, 1344.0), arg_0.c.b, 0, arg_0.c.d), var_0.c, Struct_1(vec4<f32>(-439.0, var_0.b.a.x, -475.0, -225.0), var_0.d.b, var_0.b.b.x, false), vec3<u32>(1u, var_0.a.x, 114475u)), Struct_4(vec4<i32>(arg_0.a.x, u_input.b.x, -2147483648, var_0.d.b.x), var_0.a, Struct_1(arg_0.c.a, u_input.a, 25679, var_0.d.d), 6367u)).c, !select(vec2<bool>(arg_0.c.d, true), var_0.c, arg_0.c.d), var_0.b, ~vec3<u32>(25230u, arg_0.d, 28574u)), arg_0));
    return var_2;
}

fn func_8(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    switch (arg_1.c.c) {
        case -2759: {
        }
        case 24033: {
            let var_0 = _wgslsmith_f_op_f32(ceil(arg_1.b.b.a.x));
        }
        default: {
        }
    }
    switch (arg_1.c.b.x) {
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
            let var_0 = !all(vec3<bool>(!false, -756.0 <= 1054.0, all(vec4<bool>(false, false, true, false)))) & arg_0.c.d;
            var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(arg_1.b, arg_0).c.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(162.0, 1293.0, 649.0, 819.0) + arg_2.c.a)))), -vec4<i32>(27923, ~abs(-38125), _wgslsmith_sub_i32(-arg_1.c.c, _wgslsmith_sub_i32(arg_1.c.c, arg_0.a.x)), max(arg_2.b.b.b.x, 47452)), arg_1.b.b.b.x, true);
        }
        case -2147483648: {
        }
        case -1611: {
        }
        default: {
            var var_0 = vec3<bool>(arg_2.c.d, arg_2.b.b.d, any(select(select(vec3<bool>(true, false, arg_2.b.d.d), vec3<bool>(arg_2.b.b.d, arg_0.c.d, true), arg_1.c.d), select(select(vec3<bool>(arg_2.c.d, true, arg_0.c.d), vec3<bool>(true, arg_2.c.d, true), false), !vec3<bool>(false, true, arg_2.b.b.d), false), arg_0.c.d || arg_2.b.d.d)));
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            }
            let var_1 = func_7(Struct_4(arg_0.c.b, arg_1.a.xyy, func_5(arg_1.b, func_7(Struct_4(vec4<i32>(28948, 1, u_input.c, arg_1.c.c), vec3<u32>(arg_1.b.a.x, 42290u, 24736u), Struct_1(vec4<f32>(-1288.0, 1320.0, arg_2.c.a.x, 195.0), vec4<i32>(-1, arg_2.c.c, 71293, arg_0.a.x), -1, arg_0.c.d), u_input.e.x), arg_0.c.a.x)).c, 1u), _wgslsmith_f_op_f32(f32(-1.0) * -589.0));
            var var_2 = vec4<u32>(~(~0u) ^ min(~reverseBits(0u), 4294967295u), ~u_input.e.x, 58296u, func_5(Struct_2(arg_2.a.yzy & ~u_input.e, Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.b.b.a + vec4<f32>(472.0, var_1.c.a.x, arg_0.c.a.x, arg_1.b.b.a.x)), arg_0.a, arg_2.c.b.x, any(vec3<bool>(arg_0.c.d, var_0.x, arg_2.c.d))), select(select(var_0.zz, vec2<bool>(false, var_0.x), vec2<bool>(arg_0.c.d, false)), vec2<bool>(arg_2.b.c.x, false), any(arg_1.b.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.b.d.a), func_7(var_1, -1226.0).c.b, 2147483647, !false), ~_wgslsmith_clamp_vec3_u32(arg_0.b, vec3<u32>(arg_2.a.x, 13636u, 0u), vec3<u32>(arg_0.b.x, 90955u, 27926u))), func_5(arg_2.b, Struct_4(vec4<i32>(u_input.b.x, var_1.a.x, arg_2.b.b.b.x, -5572), u_input.e, arg_2.b.d, _wgslsmith_clamp_u32(0u, 4294967295u, var_1.d)))).b.x);
            var_0 = !(!vec3<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), all(vec4<bool>(arg_1.c.d, var_1.c.d, var_1.c.d, arg_0.c.d)), arg_0.c.d));
        }
    }
    var var_0 = firstTrailingBit(1u);
    var var_1 = arg_0.c.a.x;
    var_0 = ~arg_0.b.x;
    return 7725;
}

fn func_4() -> Struct_1 {
    switch (_wgslsmith_add_i32(u_input.d.x, _wgslsmith_clamp_i32(~_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, -32201, u_input.a.x), -u_input.d.x), -u_input.d.x, u_input.a.x))) {
        case 30951: {
            var var_0 = u_input.e.x;
        }
        case -2147483648: {
            let var_0 = ~u_input.d.x;
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                continue;
            }
            if (!false) {
                let var_1 = u_input.a.x;
                let var_2 = 1 >= ~func_8(func_7(func_5(Struct_2(vec3<u32>(u_input.e.x, 45189u, u_input.e.x), Struct_1(vec4<f32>(-119.0, -455.0, 2456.0, 352.0), u_input.a, u_input.a.x, false), vec2<bool>(true, true), Struct_1(vec4<f32>(-155.0, 1145.0, -1019.0, -302.0), u_input.a, 1, false), vec3<u32>(15881u, u_input.e.x, u_input.e.x)), Struct_4(vec4<i32>(var_1, 1, -65668, -2147483648), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(899.0, 1152.0, 507.0, -674.0), vec4<i32>(u_input.b.x, 0, var_1, var_1), u_input.c, false), u_input.e.x)), _wgslsmith_f_op_f32(step(-170.0, -680.0))), Struct_3(countOneBits(vec4<u32>(1u, u_input.e.x, u_input.e.x, 32080u)), Struct_2(vec3<u32>(7026u, u_input.e.x, 19445u), Struct_1(vec4<f32>(-242.0, -241.0, 187.0, 916.0), u_input.a, var_0, true), vec2<bool>(true, false), Struct_1(vec4<f32>(478.0, 655.0, 115.0, -876.0), vec4<i32>(var_0, u_input.a.x, var_0, u_input.c), u_input.a.x, true), u_input.e), Struct_1(vec4<f32>(-1000.0, -1055.0, 1467.0, -1092.0), u_input.a, var_1, true), _wgslsmith_f_op_f32(464.0 * 415.0)), Struct_3(~vec4<u32>(4294967295u, 4080u, 22724u, 0u), Struct_2(u_input.e, Struct_1(vec4<f32>(-920.0, 1096.0, -759.0, 130.0), vec4<i32>(var_1, -1, u_input.a.x, var_0), -2147483648, true), vec2<bool>(true, false), Struct_1(vec4<f32>(1021.0, 222.0, -147.0, 435.0), vec4<i32>(u_input.c, var_1, 2147483647, 53391), -1, false), vec3<u32>(6820u, u_input.e.x, 4294967295u)), func_7(Struct_4(vec4<i32>(6066, var_1, var_0, u_input.a.x), u_input.e, Struct_1(vec4<f32>(-831.0, -593.0, 1051.0, -372.0), vec4<i32>(u_input.d.x, -2147483648, 2147483647, 36175), var_0, true), 14312u), 173.0).c, _wgslsmith_f_op_f32(-229.0 * -1172.0)));
                let var_3 = _wgslsmith_f_op_f32(-707.0);
                var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1785.0, -994.0, var_3, 1000.0), vec4<f32>(645.0, var_3, 382.0, var_3), false))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, -1000.0, -306.0) * vec4<f32>(var_3, 1373.0, var_3, var_3)))), vec4<f32>(_wgslsmith_f_op_f32(select(var_3, -146.0, false)), _wgslsmith_f_op_f32(-var_3), var_3, var_3))), vec4<i32>(0, ~abs(_wgslsmith_mod_i32(-42296, var_1)), u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(var_1, ~var_1), !var_2);
                var_4 = func_7(Struct_4(-vec4<i32>(select(2147483647, -1, false), 22606, -11374, 2147483647 ^ var_4.c), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.e.x, u_input.e.x, ~1u), vec3<u32>(u_input.e.x, 52757u, countOneBits(4294967295u))), Struct_1(var_4.a, u_input.a, var_0, var_2), 140283u >> (~_wgslsmith_div_u32(u_input.e.x, 12161u) % 32u)), _wgslsmith_f_op_f32(1220.0 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1312.0))))))).c;
            }
            var var_1 = func_5(Struct_2(vec3<u32>(_wgslsmith_mult_u32(0u, 22292u), 32191u, 0u), func_7(Struct_4(vec4<i32>(-35652, var_0, var_0, u_input.d.x), u_input.e, func_7(Struct_4(vec4<i32>(-2147483648, -1, u_input.a.x, -1), vec3<u32>(86021u, u_input.e.x, 0u), Struct_1(vec4<f32>(435.0, -865.0, 106.0, -725.0), u_input.a, 2147483647, true), 14372u), 402.0).c, _wgslsmith_div_u32(4294967295u, u_input.e.x)), _wgslsmith_f_op_f32(abs(358.0))).c, select(vec2<bool>(any(vec3<bool>(false, true, false)), true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), _wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, 4294967295u) >= max(26425u, u_input.e.x)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-675.0, 139.0, 495.0, 168.0) + vec4<f32>(-750.0, -848.0, -1000.0, -2889.0)), u_input.a >> (vec4<u32>(u_input.e.x, 94045u, 4294967295u, 4294967295u) % vec4<u32>(32u)), -2147483648, !func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(2049.0, 1000.0, -1072.0, -1437.0), vec4<i32>(-2147483648, 2610, var_0, 52622), var_0, false), u_input.e.x), -1224.0).c.d), u_input.e), func_5(Struct_2(~u_input.e << (vec3<u32>(u_input.e.x, u_input.e.x, 16743u) % vec3<u32>(32u)), func_7(func_7(Struct_4(vec4<i32>(18958, var_0, -1, -7346), u_input.e, Struct_1(vec4<f32>(-1008.0, 732.0, 1296.0, 593.0), vec4<i32>(u_input.b.x, u_input.d.x, 0, 1), u_input.d.x, true), u_input.e.x), 926.0), _wgslsmith_f_op_f32(floor(1086.0))).c, vec2<bool>(8337u < u_input.e.x, !false), func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(-2211.0, 363.0, -685.0, 1255.0), u_input.a, 12961, false), vec2<bool>(true, true), Struct_1(vec4<f32>(702.0, 427.0, -502.0, -1279.0), vec4<i32>(u_input.d.x, 1, u_input.d.x, 29302), -942, false), vec3<u32>(19991u, 1u, 19234u)), Struct_4(vec4<i32>(var_0, -2147483648, 0, u_input.d.x), u_input.e, Struct_1(vec4<f32>(-604.0, 1447.0, 1486.0, 1531.0), vec4<i32>(var_0, var_0, u_input.c, -57755), 1, false), 82627u)).c, u_input.e), Struct_4(vec4<i32>(~(-37764), select(-1, u_input.d.x, true), abs(var_0), ~var_0), ~_wgslsmith_sub_vec3_u32(vec3<u32>(98502u, 53572u, u_input.e.x), vec3<u32>(27509u, u_input.e.x, u_input.e.x)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-810.0, 944.0, -108.0, 994.0) * vec4<f32>(1363.0, -1590.0, 1433.0, 193.0)), _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(var_0, -2147483648, var_0, -2147483648)), 1, false), 14107u))).c;
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var_1 = func_7(Struct_4(-_wgslsmith_div_vec4_i32(func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(var_1.a.x, 2090.0, 421.0, var_1.a.x), vec4<i32>(u_input.c, -10924, -31685, -17758), 1, false), vec2<bool>(false, var_1.d), Struct_1(var_1.a, u_input.a, 2147483647, var_1.d), vec3<u32>(7014u, 57585u, 1u)), Struct_4(vec4<i32>(var_0, -40040, var_1.c, 0), u_input.e, Struct_1(vec4<f32>(1000.0, -789.0, -2491.0, var_1.a.x), vec4<i32>(u_input.b.x, u_input.c, var_0, var_1.c), 43682, var_1.d), u_input.e.x)).a, vec4<i32>(var_0, var_1.b.x, -2147483648, 28036)), u_input.e, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -1224.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, 314.0, var_1.a.x, var_1.a.x)))), -u_input.a, select(min(var_1.b.x, var_1.c), _wgslsmith_add_i32(var_1.c, -522), false || false), true), firstLeadingBit(11172u)), 678.0).c;
                let var_2 = 23542;
                var_1 = Struct_1(var_1.a, func_7(func_7(func_7(func_5(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, 47895u), Struct_1(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -102.0), vec4<i32>(-4304, var_1.c, u_input.d.x, u_input.d.x), -26397, true), vec2<bool>(var_1.d, true), Struct_1(var_1.a, u_input.a, u_input.c, var_1.d), u_input.e), Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(371.0, var_1.a.x, var_1.a.x, var_1.a.x), u_input.a, var_1.c, true), 117600u)), func_5(Struct_2(u_input.e, Struct_1(var_1.a, u_input.a, u_input.a.x, var_1.d), vec2<bool>(var_1.d, var_1.d), Struct_1(var_1.a, vec4<i32>(var_2, var_1.b.x, var_1.b.x, -1), -48421, false), vec3<u32>(u_input.e.x, 54455u, u_input.e.x)), Struct_4(vec4<i32>(1, var_1.c, 2147483647, var_1.c), u_input.e, Struct_1(vec4<f32>(var_1.a.x, 849.0, var_1.a.x, 754.0), u_input.a, 40563, true), u_input.e.x)).c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(817.0)))), 953.0).c.b, -u_input.d.x, var_1.d);
            }
        }
        case -1: {
            for (var var_0 = 4591; var_0 <= 82254; ) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(490.0))));
                var_0 = firstLeadingBit(-(i32(-1) * -46308));
                let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_7(Struct_4(vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, -2147483648), u_input.e, Struct_1(vec4<f32>(var_1, var_1, var_1, var_1), vec4<i32>(5105, u_input.a.x, u_input.d.x, 1), u_input.b.x, true), 0u), _wgslsmith_f_op_f32(-208.0 - -496.0)).c.a)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, 149.0) + vec4<f32>(1202.0, -931.0, 1661.0, -568.0))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1) - vec4<f32>(var_1, var_1, var_1, 2994.0)), vec4<f32>(1000.0, var_1, var_1, -612.0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-647.0, 194.0, var_1, -455.0), vec4<i32>(u_input.c, 0, -30645, u_input.b.x), 1, true), u_input.e.x), var_1).c.a - vec4<f32>(-232.0, 133.0, var_1, var_1)))));
                let var_3 = vec2<bool>(select(false && false, 75318u > 4294967295u, !any(vec3<bool>(true, false, false))), (~(-1) << (u_input.e.x % 32u)) < -22864);
                var_0 = u_input.a.x;
            }
            switch (u_input.b.x ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(reverseBits(func_5(Struct_2(vec3<u32>(1u, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-780.0, -395.0, -1212.0, -1531.0), vec4<i32>(-21631, u_input.a.x, 30425, u_input.c), u_input.c, true), vec2<bool>(false, true), Struct_1(vec4<f32>(1234.0, -1503.0, -637.0, -161.0), u_input.a, 16371, false), u_input.e), Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-1989.0, -576.0, -1103.0, -869.0), vec4<i32>(-46588, u_input.d.x, 2147483647, -2147483648), 1, true), 72909u)).c.b.x), ~u_input.c >> (35691u % 32u)), -u_input.b.x)) {
                case -10891: {
                    let var_0 = func_7(func_5(Struct_2(u_input.e, func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(749.0, -579.0, 1218.0, -167.0), vec4<i32>(u_input.d.x, u_input.b.x, 2147483647, 31161), u_input.b.x, false), 0u), 2089.0).c, select(!vec2<bool>(true, true), !vec2<bool>(false, true), true || false), func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(-789.0, -1448.0, 2074.0, 2097.0), vec4<i32>(17310, u_input.b.x, u_input.a.x, 1), u_input.b.x, false), vec2<bool>(false, false), Struct_1(vec4<f32>(636.0, 862.0, -2375.0, -1452.0), u_input.a, u_input.a.x, false), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), Struct_4(u_input.a, vec3<u32>(1u, 1u, 0u), Struct_1(vec4<f32>(112.0, -1070.0, -291.0, 1635.0), u_input.a, 5115, true), 47302u)).c, _wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, 1u, u_input.e.x), vec3<u32>(24265u, 0u, 15769u)) & ~vec3<u32>(0u, u_input.e.x, 4294967295u)), func_7(Struct_4(vec4<i32>(11129, u_input.d.x, u_input.b.x, 9495), u_input.e ^ vec3<u32>(86447u, 28470u, u_input.e.x), Struct_1(vec4<f32>(-321.0, -974.0, 1198.0, -889.0), vec4<i32>(u_input.d.x, u_input.d.x, 0, u_input.a.x), -1, false), u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-818.0) + 1143.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -193.0), _wgslsmith_f_op_f32(trunc(1820.0)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-970.0))), _wgslsmith_f_op_f32(trunc(func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(745.0, -229.0, -338.0, -224.0), u_input.a, u_input.a.x, false), u_input.e.x), -470.0).c.a.x))))));
                    let var_1 = vec3<u32>(~(~u_input.e.x), ((~var_0.b.x | var_0.b.x) >> ((~4294967295u ^ _wgslsmith_div_u32(0u, 95452u)) % 32u)) ^ 4294967295u, var_0.b.x);
                    var var_2 = func_7(var_0, _wgslsmith_f_op_f32(-var_0.c.a.x)).c;
                    let var_3 = 2420.0;
                    let var_4 = var_0.c.c;
                }
                case 24440: {
                    var var_0 = _wgslsmith_dot_vec3_u32(u_input.e, ~countOneBits(~(u_input.e << (u_input.e % vec3<u32>(32u)))));
                    var_0 = _wgslsmith_mult_u32(u_input.e.x, ~1u);
                }
                case 30757: {
                    var var_0 = select(all(!(!vec3<bool>(false, false, true))), false, any(vec4<bool>(true, false, false && (false & true), _wgslsmith_f_op_f32(sign(1160.0)) != _wgslsmith_div_f32(456.0, -469.0))));
                    let var_1 = Struct_3(vec4<u32>(max(18514u, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)), 4294967295u, 142u, u_input.e.x), Struct_2(_wgslsmith_add_vec3_u32(reverseBits(func_7(Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.d.x, u_input.b.x), u_input.e, Struct_1(vec4<f32>(-2891.0, -306.0, -1570.0, -150.0), vec4<i32>(48432, 7532, u_input.c, u_input.b.x), u_input.c, true), u_input.e.x), 846.0).b), ~vec3<u32>(u_input.e.x, 1u, 68419u)), func_7(Struct_4(vec4<i32>(1, u_input.b.x, -3853, 3130), u_input.e | u_input.e, Struct_1(vec4<f32>(1000.0, -229.0, 433.0, 805.0), vec4<i32>(u_input.d.x, u_input.b.x, -53505, -739), 53295, true), ~0u), 913.0).c, !vec2<bool>(all(vec3<bool>(true, false, false)), 1000.0 < 115.0), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072.0, -584.0, 1000.0, 863.0)))), vec4<i32>(2272, -u_input.a.x, countOneBits(u_input.b.x), countOneBits(u_input.c)), -59199, func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(-601.0, 1741.0, 583.0, -812.0), u_input.a, u_input.a.x, false), vec2<bool>(true, true), Struct_1(vec4<f32>(774.0, 1502.0, -840.0, 1109.0), u_input.a, 73017, false), vec3<u32>(1u, u_input.e.x, 1u)), func_7(Struct_4(vec4<i32>(-52686, u_input.d.x, u_input.b.x, -51132), vec3<u32>(u_input.e.x, 35462u, u_input.e.x), Struct_1(vec4<f32>(1156.0, 1999.0, 530.0, 821.0), u_input.a, -2147483648, false), u_input.e.x), -1043.0)).c.d), u_input.e), Struct_1(vec4<f32>(-659.0, _wgslsmith_f_op_f32(exp2(1138.0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-950.0)), _wgslsmith_f_op_f32(floor(862.0)), true && false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -1183.0)))), vec4<i32>(-u_input.b.x, 2147483647 ^ 2147483647, u_input.a.x, u_input.b.x) ^ vec4<i32>(-u_input.b.x, u_input.b.x, max(u_input.c, u_input.c), firstTrailingBit(u_input.b.x)), u_input.c, !true), 1016.0);
                    var_0 = !(0u < 1978u);
                    var var_2 = _wgslsmith_f_op_f32(max(-487.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208.0 + 249.0))), _wgslsmith_div_f32(var_1.c.a.x, _wgslsmith_f_op_f32(-var_1.d))))));
                    var var_3 = select(select(select(!vec4<bool>(true, true, var_1.b.c.x, var_1.c.d), !(!vec4<bool>(var_1.b.b.d, true, var_1.b.d.d, false)), var_1.b.d.d), !vec4<bool>(func_5(var_1.b, Struct_4(vec4<i32>(-1652, var_1.c.b.x, var_1.c.b.x, -2147483648), vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), Struct_1(vec4<f32>(var_1.c.a.x, 477.0, var_1.c.a.x, var_1.d), vec4<i32>(u_input.d.x, u_input.b.x, -15995, u_input.b.x), -2147483648, true), u_input.e.x)).c.d, false, 1u == 8114u, all(vec4<bool>(false, true, false, var_1.b.d.d))), select(vec4<bool>(any(var_1.b.c), var_1.b.b.d, 5960 <= var_1.b.d.b.x, var_1.b.c.x), !vec4<bool>(var_1.c.d, var_1.c.d, var_1.c.d, var_1.c.d), select(!vec4<bool>(var_1.c.d, true, var_1.c.d, false), select(vec4<bool>(var_1.c.d, var_1.b.d.d, var_1.c.d, false), vec4<bool>(false, var_1.c.d, var_1.b.b.d, var_1.c.d), false), var_1.c.d))), select(vec4<bool>(var_1.b.d.d, true, !(1u <= u_input.e.x), var_1.b.d.d), !vec4<bool>(true, all(vec4<bool>(var_1.b.b.d, var_1.c.d, var_1.b.c.x, var_1.b.d.d)), var_1.a.x >= u_input.e.x, 22864 < u_input.b.x), !select(select(vec4<bool>(true, var_1.b.b.d, true, false), vec4<bool>(var_1.b.c.x, var_1.c.d, true, var_1.c.d), vec4<bool>(var_1.c.d, var_1.b.d.d, true, var_1.c.d)), vec4<bool>(false, var_1.c.d, false, var_1.b.c.x), select(vec4<bool>(var_1.c.d, false, true, var_1.c.d), vec4<bool>(true, var_1.b.c.x, var_1.c.d, var_1.c.d), vec4<bool>(false, var_1.c.d, false, true)))), select(vec4<bool>(false, select(var_1.b.d.d, !true, !var_1.b.d.d), false, true), select(select(select(vec4<bool>(false, var_1.b.b.d, true, false), vec4<bool>(false, var_1.b.d.d, var_1.b.b.d, true), true), vec4<bool>(true, true, true, true), var_1.b.b.d), !vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, var_1.c.d), select(vec4<bool>(true, var_1.b.c.x, var_1.b.c.x, var_1.b.c.x), vec4<bool>(true, var_1.c.d, var_1.b.c.x, var_1.c.d), vec4<bool>(var_1.b.c.x, false, var_1.b.b.d, true)), vec4<bool>(var_1.c.d, var_1.c.d, var_1.c.d, true))), !var_1.b.c.x));
                }
                default: {
                    var var_0 = ~26615u >> (_wgslsmith_mult_u32(u_input.e.x, 57689u) % 32u);
                    return func_7(Struct_4(vec4<i32>(reverseBits(u_input.a.x), firstLeadingBit(-73390), _wgslsmith_mod_i32(u_input.b.x, u_input.a.x), ~(-38724)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 46840u, u_input.e.x)) % vec4<u32>(32u)), u_input.e, func_7(func_5(Struct_2(vec3<u32>(u_input.e.x, 1u, u_input.e.x), Struct_1(vec4<f32>(1000.0, -562.0, -1000.0, -141.0), vec4<i32>(24014, u_input.a.x, u_input.a.x, 0), -17636, true), vec2<bool>(true, false), Struct_1(vec4<f32>(570.0, -698.0, 844.0, 685.0), vec4<i32>(u_input.c, u_input.a.x, -2147483648, u_input.d.x), u_input.b.x, false), vec3<u32>(35371u, 0u, u_input.e.x)), func_7(Struct_4(vec4<i32>(-33138, -2147483648, u_input.c, u_input.d.x), vec3<u32>(u_input.e.x, u_input.e.x, 14125u), Struct_1(vec4<f32>(-104.0, -1275.0, -1000.0, -1117.0), u_input.a, -2147483648, false), u_input.e.x), 2114.0)), _wgslsmith_f_op_f32(max(2034.0, _wgslsmith_f_op_f32(exp2(-346.0))))).c, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.e.x, 0u), 39145u ^ 81160u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0))).c;
                }
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                break;
            }
            let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(vec3<u32>(u_input.e.x, 0u, u_input.e.x), Struct_1(vec4<f32>(504.0, -1482.0, 1094.0, -1384.0), vec4<i32>(u_input.d.x, 0, -1, u_input.d.x), 14049, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec4<f32>(683.0, 386.0, -621.0, 267.0), u_input.a, -7244, false), ~vec3<u32>(109308u, 115353u, 47941u)), func_5(Struct_2(vec3<u32>(0u, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-1587.0, -512.0, 1271.0, 753.0), vec4<i32>(1375, u_input.d.x, u_input.a.x, u_input.d.x), u_input.a.x, true), vec2<bool>(true, true), Struct_1(vec4<f32>(-824.0, -389.0, -818.0, 1440.0), vec4<i32>(u_input.a.x, u_input.a.x, 13714, u_input.a.x), u_input.d.x, true), vec3<u32>(78863u, u_input.e.x, 1u)), Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-615.0, -778.0, 2006.0, 665.0), u_input.a, 0, false), 69773u))).c.a.x - func_7(func_5(Struct_2(vec3<u32>(4294967295u, 4294967295u, 25125u), Struct_1(vec4<f32>(994.0, 152.0, -996.0, 1000.0), vec4<i32>(u_input.c, u_input.b.x, 2147483647, -57425), u_input.d.x, false), vec2<bool>(true, true), Struct_1(vec4<f32>(451.0, 740.0, 944.0, 1401.0), u_input.a, u_input.b.x, true), vec3<u32>(23285u, 39593u, u_input.e.x)), Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(1640.0, -978.0, -1439.0, -1421.0), u_input.a, u_input.d.x, false), u_input.e.x)), _wgslsmith_f_op_f32(225.0 * 1410.0)).c.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1415.0))))));
        }
        case 19738: {
            var var_0 = Struct_3(_wgslsmith_mod_vec4_u32(max(select(vec4<u32>(4294967295u, u_input.e.x, 1u, u_input.e.x) | vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 0u), vec4<u32>(u_input.e.x, 81580u, 8300u, 53228u), !false), ~vec4<u32>(18137u, u_input.e.x, 44204u, u_input.e.x)), vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(23747u, 10379u)), 28414u, ~0u, _wgslsmith_mod_u32(34348u, 3829u))), Struct_2(~(~(~u_input.e)), func_5(Struct_2(vec3<u32>(0u, 1u, 4294967295u), func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(-428.0, 526.0, -2113.0, -243.0), u_input.a, -1, false), vec2<bool>(false, false), Struct_1(vec4<f32>(1428.0, -911.0, 1160.0, 167.0), u_input.a, u_input.b.x, true), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x)), Struct_4(vec4<i32>(-2147483648, u_input.b.x, -14811, u_input.b.x), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(1012.0, -1076.0, -2049.0, -432.0), u_input.a, -31360, false), u_input.e.x)).c, !vec2<bool>(true, false), Struct_1(vec4<f32>(1250.0, -984.0, -623.0, 320.0), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, -2147483648), 2147483647, false), ~u_input.e), Struct_4(-u_input.a, countOneBits(u_input.e), Struct_1(vec4<f32>(-1039.0, -591.0, -1138.0, -2028.0), u_input.a, u_input.c, true), 4294967295u)).c, vec2<bool>(_wgslsmith_div_u32(u_input.e.x, u_input.e.x) > u_input.e.x, false), Struct_1(func_7(func_7(Struct_4(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-328.0, 150.0, 811.0, 210.0), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -2976), u_input.d.x, true), u_input.e.x), -1000.0), _wgslsmith_f_op_f32(floor(-1359.0))).c.a, vec4<i32>(-u_input.c, -21661, u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-10681, u_input.c, u_input.d.x), u_input.b)), firstLeadingBit(-2147483648), false), _wgslsmith_div_vec3_u32(u_input.e >> (select(u_input.e, vec3<u32>(28503u, u_input.e.x, 1u), true) % vec3<u32>(32u)), u_input.e & countOneBits(vec3<u32>(22879u, u_input.e.x, 1u)))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1795.0, -1461.0, 193.0, -540.0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1136.0, -1364.0, 379.0, -1642.0) - vec4<f32>(297.0, 830.0, 866.0, 229.0))))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(12659, u_input.c, -13537, -20213), u_input.a) ^ (vec4<i32>(-84746, 9243, u_input.a.x, 13036) << (vec4<u32>(u_input.e.x, 0u, u_input.e.x, 4294967295u) % vec4<u32>(32u))), ~u_input.a), 1, !true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1604.0 * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2168.0, 261.0)))))));
            if (!(!var_0.b.c.x)) {
                let var_1 = Struct_4(var_0.b.d.b ^ -(~u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(~var_0.a.x), u_input.e.x, 1u), max(vec3<u32>(68961u >> (var_0.b.e.x % 32u), firstLeadingBit(var_0.a.x), _wgslsmith_add_u32(var_0.a.x, 38629u)), ~vec3<u32>(u_input.e.x, u_input.e.x, var_0.a.x))), Struct_1(vec4<f32>(var_0.b.b.a.x, _wgslsmith_f_op_f32(floor(-839.0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-720.0, -242.0, true)))), -553.0), ~var_0.c.b, -2147483647 | var_0.b.d.c, false), _wgslsmith_clamp_u32(~func_7(Struct_4(vec4<i32>(17510, -76651, -15291, u_input.c), vec3<u32>(var_0.b.a.x, var_0.b.e.x, 22767u), var_0.b.d, var_0.a.x), func_5(Struct_2(vec3<u32>(var_0.a.x, var_0.a.x, 27459u), Struct_1(vec4<f32>(-255.0, var_0.d, 1000.0, var_0.c.a.x), vec4<i32>(-27635, 1, 1, u_input.d.x), 54552, false), var_0.b.c, Struct_1(var_0.b.d.a, var_0.b.d.b, 2147483647, var_0.b.b.d), var_0.b.a), Struct_4(var_0.b.d.b, u_input.e, var_0.c, var_0.b.e.x)).c.a.x).d, _wgslsmith_mod_u32(84110u, ~(~0u)), 66485u));
                let var_2 = var_1.c;
                var var_3 = Struct_3(firstLeadingBit(abs(vec4<u32>(1u, var_1.b.x, _wgslsmith_add_u32(u_input.e.x, u_input.e.x), firstLeadingBit(0u)))), var_0.b, func_5(Struct_2(vec3<u32>(40789u, 52562u & u_input.e.x, var_0.b.e.x), var_2, var_0.b.c, var_1.c, _wgslsmith_add_vec3_u32(var_1.b, firstTrailingBit(u_input.e))), func_7(Struct_4(~vec4<i32>(0, u_input.a.x, -1353, var_2.c), max(var_0.b.e, vec3<u32>(1u, var_0.a.x, var_1.d)), var_0.b.b, 0u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d + var_0.c.a.x), _wgslsmith_f_op_f32(ceil(var_0.b.d.a.x)))))).c, _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1167.0, 1332.0) + _wgslsmith_f_op_f32(step(-571.0, 1000.0))))));
            }
            let var_1 = firstLeadingBit(u_input.e.x);
            for (var var_2 = -1; var_2 != -15597; var_2 -= 1) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                let var_3 = vec4<f32>(-1245.0, _wgslsmith_f_op_f32(-603.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2468.0) * 1012.0), 182.0);
                break;
            }
        }
        default: {
            switch (u_input.c) {
                case -2147483648: {
                    var var_0 = 1;
                }
                case 17657: {
                    var var_0 = ~u_input.e.x;
                    let var_1 = !(!select(vec3<bool>(true, !false, 0 > u_input.b.x), !vec3<bool>(true, true, true), !(868 <= u_input.b.x)));
                    var var_2 = Struct_4(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(-u_input.b.yy, _wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(-658, 0))), -u_input.a.x, -(-15742 & -2147483648), reverseBits(u_input.d.x))), min(firstLeadingBit(abs(u_input.e)), ~max(vec3<u32>(4294967295u, u_input.e.x, u_input.e.x) & u_input.e, vec3<u32>(u_input.e.x, u_input.e.x, 1u))), func_7(Struct_4(vec4<i32>(i32(-1) * -26620, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), u_input.a.x & u_input.b.x, u_input.a.x), u_input.e ^ select(u_input.e, vec3<u32>(u_input.e.x, 34477u, u_input.e.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1629.0, -107.0, -1735.0, -1182.0))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -2462, u_input.b.x, u_input.b.x), vec4<i32>(-67776, -137, 25395, -1)), _wgslsmith_mod_i32(1, -2147483648), !false), 0u), 1145.0).c, 93770u);
                    let var_3 = -var_2.c.b;
                }
                default: {
                    var var_0 = Struct_2(reverseBits(~vec3<u32>(39891u, reverseBits(6009u), ~u_input.e.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-207.0, 945.0, 286.0, 795.0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2048.0, -644.0, -1343.0, 935.0))))), func_7(func_7(func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-2139.0, -344.0, 1904.0, 1000.0), vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.b.x), u_input.b.x, true), u_input.e.x), -1781.0), 2288.0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(371.0 + -140.0)))).a, -35318, !func_7(func_7(Struct_4(vec4<i32>(u_input.c, u_input.a.x, u_input.c, 38907), u_input.e, Struct_1(vec4<f32>(-1884.0, 551.0, 2610.0, 1693.0), u_input.a, 21147, true), 4294967295u), -704.0), _wgslsmith_f_op_f32(select(828.0, -255.0, true))).c.d), !select(select(!vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(true, true, true)), vec2<bool>(false, -376.0 >= 1000.0), any(!vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2048.0, -928.0, -1168.0, -630.0))) - func_7(func_7(Struct_4(u_input.a, vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), Struct_1(vec4<f32>(841.0, 312.0, 673.0, -1315.0), u_input.a, -63157, false), u_input.e.x), 1116.0), _wgslsmith_f_op_f32(select(1637.0, 1000.0, true))).c.a), _wgslsmith_clamp_vec4_i32(~u_input.a, ~select(u_input.a, u_input.a, false), firstLeadingBit(~u_input.a)), u_input.a.x, (-544.0 > _wgslsmith_f_op_f32(ceil(-1122.0))) || (all(vec4<bool>(true, false, false, false)) || !true)), u_input.e);
                    var var_1 = Struct_2(~u_input.e, func_5(Struct_2(~func_7(Struct_4(vec4<i32>(u_input.c, -1, var_0.b.b.x, var_0.b.b.x), var_0.a, var_0.d, 69588u), var_0.d.a.x).b, Struct_1(vec4<f32>(var_0.b.a.x, 681.0, var_0.b.a.x, var_0.b.a.x), abs(var_0.d.b), max(var_0.d.b.x, 0), false), !var_0.c, Struct_1(vec4<f32>(var_0.b.a.x, var_0.d.a.x, var_0.d.a.x, -2118.0), -var_0.b.b, var_0.b.b.x, any(vec3<bool>(false, var_0.c.x, var_0.d.d))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<u32>(1u, 4294967295u, var_0.e.x), u_input.e)), func_7(Struct_4(select(u_input.a, vec4<i32>(15028, var_0.b.b.x, -1, -3167), vec4<bool>(var_0.d.d, var_0.b.d, true, var_0.d.d)), vec3<u32>(u_input.e.x, 0u, 0u), var_0.d, u_input.e.x >> (52311u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)))).c, !select(vec2<bool>(false, var_0.d.d), select(var_0.c, select(var_0.c, var_0.c, var_0.c), var_0.c), select(!var_0.c, select(var_0.c, vec2<bool>(var_0.d.d, true), var_0.c.x), select(vec2<bool>(var_0.b.d, var_0.d.d), vec2<bool>(true, true), var_0.b.d))), var_0.b, min(u_input.e, _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, u_input.e.x), u_input.e), _wgslsmith_add_vec3_u32(~var_0.a, vec3<u32>(41350u, var_0.e.x, u_input.e.x)))));
                    var var_2 = func_7(func_7(func_7(func_5(Struct_2(var_1.a, var_1.d, vec2<bool>(false, true), Struct_1(vec4<f32>(var_0.d.a.x, 364.0, var_1.b.a.x, var_1.b.a.x), vec4<i32>(23777, var_1.d.c, 1, 42363), 1929, var_0.d.d), vec3<u32>(var_1.a.x, 75071u, 78884u)), Struct_4(u_input.a, vec3<u32>(54624u, 21499u, 58603u), Struct_1(var_0.d.a, vec4<i32>(7156, var_1.d.b.x, -1, var_0.b.b.x), 34476, false), 8354u)), 224.0), var_1.d.a.x), var_0.b.a.x);
                }
            }
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            }
            let var_0 = Struct_2(u_input.e, Struct_1(vec4<f32>(_wgslsmith_div_f32(1123.0, _wgslsmith_f_op_f32(-1082.0)), _wgslsmith_div_f32(_wgslsmith_div_f32(1985.0, -678.0), -1448.0), 1138.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(973.0 * -2373.0))), vec4<i32>(u_input.c, abs(~24060), func_7(Struct_4(vec4<i32>(-21309, u_input.a.x, u_input.c, u_input.b.x), u_input.e, Struct_1(vec4<f32>(1027.0, -248.0, -1117.0, 1496.0), vec4<i32>(0, 2147483647, 1, u_input.a.x), -20087, false), 64363u), _wgslsmith_f_op_f32(-144.0 * 2362.0)).a.x, _wgslsmith_div_i32(u_input.c, func_7(Struct_4(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-932.0, -203.0, 517.0, 784.0), vec4<i32>(0, u_input.b.x, 1, 15247), u_input.d.x, true), u_input.e.x), -1000.0).c.c)), -_wgslsmith_div_i32(-u_input.b.x, u_input.c), all(vec2<bool>(!false, func_7(Struct_4(vec4<i32>(-64632, u_input.d.x, 3485, -2147483648), vec3<u32>(11422u, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(1000.0, 932.0, 1075.0, 301.0), vec4<i32>(0, -1, -32799, 1), u_input.c, false), 4243u), 206.0).c.d))), !(!vec2<bool>(false, !true)), func_7(Struct_4(abs(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 0u), vec3<u32>(31172u, 13690u, u_input.e.x)), u_input.e), func_7(func_5(Struct_2(vec3<u32>(4294967295u, 4478u, 26702u), Struct_1(vec4<f32>(261.0, -1000.0, 205.0, -102.0), u_input.a, u_input.d.x, false), vec2<bool>(false, true), Struct_1(vec4<f32>(-391.0, -3032.0, 1028.0, 181.0), u_input.a, 1, true), vec3<u32>(u_input.e.x, 71707u, 26031u)), Struct_4(vec4<i32>(-2765, 1, 4734, 1), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(545.0, 1158.0, 1432.0, 2020.0), vec4<i32>(u_input.d.x, 0, u_input.c, u_input.d.x), -51160, false), u_input.e.x)), _wgslsmith_f_op_f32(min(391.0, -1650.0))).c, _wgslsmith_sub_u32(20270u, func_6(Struct_4(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(990.0, 319.0, 1000.0, -990.0), vec4<i32>(1, 2147483647, 2147483647, u_input.c), u_input.a.x, false), 1u), Struct_1(vec4<f32>(1000.0, 635.0, 626.0, -894.0), vec4<i32>(u_input.d.x, -2147483648, -8279, 33135), -21628, true), -74144).x)), 641.0).c, u_input.e >> (vec3<u32>(_wgslsmith_dot_vec3_u32(~u_input.e, ~vec3<u32>(u_input.e.x, u_input.e.x, 35795u)), func_6(Struct_4(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, 25608u), Struct_1(vec4<f32>(-933.0, -1483.0, -1247.0, 1404.0), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b.x, u_input.c), u_input.a.x, true), 1u), func_5(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, 0u), Struct_1(vec4<f32>(597.0, 1336.0, 1000.0, -1549.0), u_input.a, u_input.b.x, false), vec2<bool>(false, true), Struct_1(vec4<f32>(-1138.0, -1029.0, -545.0, -753.0), u_input.a, -13009, true), vec3<u32>(1u, u_input.e.x, u_input.e.x)), Struct_4(u_input.a, vec3<u32>(u_input.e.x, 21259u, u_input.e.x), Struct_1(vec4<f32>(-1442.0, 469.0, -878.0, -332.0), u_input.a, u_input.b.x, true), u_input.e.x)).c, func_8(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-490.0, -1144.0, -1308.0, -783.0), vec4<i32>(-1, -1, u_input.b.x, u_input.d.x), u_input.a.x, false), 97997u), Struct_3(vec4<u32>(85245u, u_input.e.x, u_input.e.x, 6203u), Struct_2(vec3<u32>(u_input.e.x, 10586u, 0u), Struct_1(vec4<f32>(-660.0, 463.0, -203.0, 225.0), u_input.a, 2147483647, false), vec2<bool>(false, false), Struct_1(vec4<f32>(-1000.0, -2083.0, -468.0, 1000.0), u_input.a, u_input.c, true), u_input.e), Struct_1(vec4<f32>(1297.0, -478.0, -869.0, 1037.0), u_input.a, u_input.c, false), 2015.0), Struct_3(vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.e.x), Struct_2(u_input.e, Struct_1(vec4<f32>(-1417.0, 1013.0, 124.0, -1554.0), u_input.a, u_input.a.x, true), vec2<bool>(true, false), Struct_1(vec4<f32>(254.0, 1982.0, 913.0, 846.0), vec4<i32>(u_input.a.x, -1, u_input.d.x, u_input.d.x), u_input.b.x, false), vec3<u32>(34489u, 1u, 4294967295u)), Struct_1(vec4<f32>(-799.0, 1409.0, 457.0, 705.0), u_input.a, u_input.b.x, false), 1372.0))).x, ~(~u_input.e.x)) % vec3<u32>(32u)));
            if (all(vec3<bool>(var_0.c.x, !((var_0.d.b.x & u_input.a.x) >= abs(var_0.d.b.x)), all(!(!vec3<bool>(true, false, false)))))) {
                var var_1 = func_5(Struct_2(_wgslsmith_div_vec3_u32(~(~u_input.e), max(vec3<u32>(13748u, u_input.e.x, var_0.e.x), var_0.e)), var_0.b, var_0.c, func_5(Struct_2(~var_0.a, var_0.d, select(vec2<bool>(false, false), var_0.c, var_0.d.d), func_5(Struct_2(u_input.e, var_0.d, var_0.c, Struct_1(vec4<f32>(1185.0, var_0.d.a.x, 1909.0, var_0.d.a.x), var_0.d.b, u_input.a.x, false), u_input.e), Struct_4(vec4<i32>(u_input.d.x, u_input.d.x, -1, var_0.b.b.x), var_0.e, Struct_1(vec4<f32>(738.0, 1589.0, -1000.0, 859.0), vec4<i32>(u_input.d.x, 1, 6674, -32553), 21460, var_0.d.d), var_0.e.x)).c, _wgslsmith_mod_vec3_u32(u_input.e, var_0.a)), Struct_4(vec4<i32>(var_0.b.c, u_input.b.x, 60338, 2147483647) & u_input.a, vec3<u32>(4294967295u, var_0.e.x, 25882u), var_0.d, _wgslsmith_mult_u32(u_input.e.x, var_0.a.x))).c, vec3<u32>(_wgslsmith_add_u32(~u_input.e.x, u_input.e.x), func_6(func_5(var_0, Struct_4(vec4<i32>(1, var_0.d.b.x, -2147483648, -8182), u_input.e, var_0.b, var_0.a.x)), var_0.b, ~(-2147483648)).x, 1u)), Struct_4(reverseBits(u_input.a & vec4<i32>(-6088, 17036, var_0.d.b.x, var_0.b.b.x)), select(vec3<u32>(var_0.e.x >> (0u % 32u), _wgslsmith_mult_u32(var_0.e.x, 0u), min(var_0.e.x, u_input.e.x)), ~_wgslsmith_mult_vec3_u32(var_0.e, u_input.e), any(vec3<bool>(true, var_0.c.x, true))), func_7(func_7(func_7(Struct_4(vec4<i32>(0, 9989, var_0.d.b.x, 18459), vec3<u32>(u_input.e.x, u_input.e.x, 0u), Struct_1(var_0.b.a, vec4<i32>(var_0.b.c, -2147483648, 2147483647, u_input.a.x), u_input.b.x, false), var_0.e.x), var_0.d.a.x), _wgslsmith_f_op_f32(-882.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) * _wgslsmith_f_op_f32(round(-694.0)))).c, ~43459u));
            }
            if (var_0.b.d) {
                var var_1 = abs(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.a.zwx), vec3<i32>(-2147483648, -1, -1)), var_0.d.c, var_0.d.b.x)) | ~vec3<i32>((-2147483648 | 2147483647) >> (firstTrailingBit(1u) % 32u), func_7(func_7(Struct_4(u_input.a, vec3<u32>(8088u, u_input.e.x, u_input.e.x), var_0.b, u_input.e.x), var_0.d.a.x), _wgslsmith_f_op_f32(abs(var_0.d.a.x))).a.x, func_8(Struct_4(u_input.a, vec3<u32>(72977u, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-2058.0, var_0.d.a.x, 1743.0, var_0.b.a.x), vec4<i32>(5918, -1, var_0.b.c, var_0.b.b.x), u_input.a.x, var_0.c.x), 71713u), Struct_3(vec4<u32>(35687u, 94215u, var_0.a.x, u_input.e.x), Struct_2(vec3<u32>(var_0.e.x, var_0.a.x, var_0.e.x), var_0.d, vec2<bool>(var_0.b.d, var_0.d.d), var_0.b, vec3<u32>(0u, u_input.e.x, u_input.e.x)), var_0.d, var_0.b.a.x), Struct_3(vec4<u32>(1u, 4294967295u, var_0.e.x, 1u), var_0, Struct_1(var_0.b.a, u_input.a, 0, var_0.c.x), 870.0)) | -47678);
                var var_2 = Struct_4(vec4<i32>(var_1.x, func_5(Struct_2(func_5(var_0, Struct_4(vec4<i32>(2147483647, var_1.x, -1, 13239), var_0.e, Struct_1(vec4<f32>(133.0, var_0.d.a.x, -2089.0, 617.0), var_0.b.b, -16587, var_0.b.d), u_input.e.x)).b, Struct_1(var_0.b.a, vec4<i32>(2147483647, 1, u_input.b.x, u_input.c), var_1.x, var_0.c.x), var_0.c, func_5(Struct_2(var_0.a, Struct_1(vec4<f32>(275.0, var_0.d.a.x, var_0.d.a.x, 553.0), var_0.d.b, 1, false), vec2<bool>(true, var_0.b.d), var_0.b, u_input.e), Struct_4(vec4<i32>(37415, -2147483648, 1, var_0.b.b.x), vec3<u32>(var_0.e.x, 97700u, var_0.a.x), Struct_1(vec4<f32>(-2419.0, var_0.d.a.x, var_0.d.a.x, 137.0), var_0.d.b, var_1.x, var_0.c.x), var_0.e.x)).c, ~vec3<u32>(u_input.e.x, u_input.e.x, var_0.e.x)), func_5(Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), var_0.b, vec2<bool>(false, var_0.b.d), var_0.d, var_0.a), func_7(Struct_4(u_input.a, u_input.e, var_0.d, u_input.e.x), var_0.d.a.x))).a.x, var_1.x, u_input.b.x), ~(~select(vec3<u32>(1u, u_input.e.x, u_input.e.x), ~u_input.e, var_0.b.d)), Struct_1(vec4<f32>(1450.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a.x + 829.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(597.0)) * var_0.b.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(func_8(Struct_4(vec4<i32>(1, -28531, var_0.d.b.x, u_input.a.x), var_0.e, Struct_1(vec4<f32>(-1000.0, -396.0, var_0.d.a.x, -1109.0), u_input.a, -1, false), 4294967295u), Struct_3(vec4<u32>(u_input.e.x, var_0.e.x, u_input.e.x, var_0.a.x), var_0, var_0.d, -658.0), Struct_3(vec4<u32>(0u, 62144u, 19620u, u_input.e.x), Struct_2(vec3<u32>(0u, 80151u, 1u), Struct_1(var_0.d.a, var_0.b.b, var_0.d.c, false), var_0.c, Struct_1(var_0.b.a, vec4<i32>(u_input.c, var_0.d.b.x, 58691, -56829), -43185, false), vec3<u32>(0u, 71111u, 24241u)), Struct_1(var_0.d.a, u_input.a, -7466, true), 1000.0)), 2147483647, var_1.x, var_0.b.c >> (0u % 32u)), ~(u_input.a >> (vec4<u32>(u_input.e.x, var_0.a.x, u_input.e.x, u_input.e.x) % vec4<u32>(32u)))), var_1.x, var_0.d.d), _wgslsmith_dot_vec3_u32(~vec3<u32>(func_5(var_0, Struct_4(u_input.a, var_0.a, var_0.d, u_input.e.x)).b.x, 1u, reverseBits(1u)), _wgslsmith_div_vec3_u32(var_0.a, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.e.x, 4294967295u, 4773u) & var_0.e, max(u_input.e, u_input.e)))));
            }
        }
    }
    if (func_5(Struct_2(min(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 12579u, 1u), vec3<u32>(1u, 1u, 0u)) << (vec3<u32>(1u, u_input.e.x, 7013u) % vec3<u32>(32u)), vec3<u32>(~37814u, ~4294967295u, reverseBits(u_input.e.x))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-432.0, 1710.0, 597.0, -1826.0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1761.0, -299.0, -481.0, -191.0)))), _wgslsmith_mod_vec4_i32(u_input.a, u_input.a >> (vec4<u32>(17360u, u_input.e.x, 62490u, u_input.e.x) % vec4<u32>(32u))), u_input.b.x, select(!false, true & true, !false)), select(vec2<bool>(true, !true), !(!vec2<bool>(false, true)), vec2<bool>(false, any(vec4<bool>(true, false, true, false)))), func_5(Struct_2(firstTrailingBit(u_input.e), Struct_1(vec4<f32>(-249.0, 720.0, -556.0, 645.0), u_input.a, u_input.d.x, true), vec2<bool>(true, false), Struct_1(vec4<f32>(-776.0, -1468.0, -1088.0, -283.0), vec4<i32>(41250, -2147483648, u_input.b.x, u_input.d.x), u_input.a.x, false), vec3<u32>(486u, 9616u, 50577u) << (vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x) % vec3<u32>(32u))), func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(1762.0, -1151.0, 176.0, 1646.0), u_input.a, u_input.d.x, true), vec2<bool>(false, true), Struct_1(vec4<f32>(156.0, 565.0, -3128.0, 1867.0), vec4<i32>(5516, u_input.b.x, u_input.d.x, 0), -1, false), u_input.e), func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(-197.0, -1000.0, 1000.0, 359.0), u_input.a, -2147483648, true), vec2<bool>(false, true), Struct_1(vec4<f32>(690.0, 200.0, 353.0, -750.0), vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, 1), u_input.d.x, true), vec3<u32>(u_input.e.x, 0u, 0u)), Struct_4(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -14950), u_input.e, Struct_1(vec4<f32>(2912.0, -528.0, 124.0, 984.0), u_input.a, u_input.a.x, true), u_input.e.x)))).c, func_6(func_7(func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(214.0, 263.0, -1427.0, -1682.0), vec4<i32>(-2147483648, -38907, -7077, 31450), -2147483648, true), vec2<bool>(true, false), Struct_1(vec4<f32>(680.0, -1193.0, 178.0, -499.0), vec4<i32>(u_input.d.x, u_input.c, u_input.c, -9727), u_input.d.x, false), u_input.e), Struct_4(u_input.a, vec3<u32>(20562u, 38240u, 6230u), Struct_1(vec4<f32>(-117.0, 1071.0, 686.0, -428.0), vec4<i32>(-2147483648, -2147483648, u_input.c, 0), u_input.d.x, true), 4294967295u)), _wgslsmith_f_op_f32(min(-1000.0, 403.0))), Struct_1(func_5(Struct_2(vec3<u32>(97630u, u_input.e.x, 1u), Struct_1(vec4<f32>(-2222.0, 707.0, -365.0, 458.0), vec4<i32>(7512, u_input.d.x, u_input.c, u_input.a.x), u_input.c, true), vec2<bool>(false, true), Struct_1(vec4<f32>(-889.0, -2525.0, -816.0, 187.0), vec4<i32>(u_input.c, u_input.a.x, u_input.d.x, u_input.c), u_input.c, true), u_input.e), Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(1787.0, 1000.0, 832.0, -937.0), u_input.a, u_input.d.x, false), 0u)).c.a, u_input.a, u_input.c, any(vec3<bool>(false, false, false))), -1).zzw), Struct_4(u_input.a, select(~vec3<u32>(u_input.e.x, 8703u, 1u), vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), func_7(Struct_4(u_input.a, vec3<u32>(11574u, 6992u, 78624u), Struct_1(vec4<f32>(1891.0, -161.0, 1082.0, -1018.0), u_input.a, 2147483647, false), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(418.0, 738.0))).c, 80514u)).c.d) {
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-280.0 + _wgslsmith_f_op_f32(-123.0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-156.0, -1217.0)) + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-529.0 + -280.0))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1361.0), _wgslsmith_f_op_f32(-981.0))), -212.0));
        }
        var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(449.0, 1147.0, 1109.0, 292.0), u_input.a, u_input.a.x, true), vec2<bool>(true, true), Struct_1(vec4<f32>(158.0, 403.0, 122.0, -330.0), u_input.a, -25511, true), vec3<u32>(1u, 1u, u_input.e.x)), Struct_4(u_input.a, vec3<u32>(u_input.e.x, 61628u, u_input.e.x), Struct_1(vec4<f32>(1766.0, -722.0, 180.0, -455.0), u_input.a, 5181, true), u_input.e.x)).c.a.x - _wgslsmith_f_op_f32(205.0 - -722.0))), func_7(func_7(Struct_4(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(406.0, -257.0, 826.0, -173.0), u_input.a, u_input.d.x, true), u_input.e.x), 169.0), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-203.0, 419.0)))).c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(489.0)), _wgslsmith_f_op_f32(175.0 - 557.0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-783.0, -370.0)) - _wgslsmith_f_op_f32(-1723.0 - 148.0)))));
        let var_1 = vec4<bool>(func_7(Struct_4(~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(25301, 8823, u_input.b.x, u_input.a.x)), u_input.e, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -595.0) * vec4<f32>(1168.0, var_0.x, var_0.x, -592.0)), vec4<i32>(-18775, u_input.d.x, u_input.c, -2147483648), -2147483648 >> (u_input.e.x % 32u), true), _wgslsmith_add_u32(u_input.e.x, 27350u) | u_input.e.x), -2653.0).c.d, !(!true & all(!vec4<bool>(false, true, false, true))), true, !(!(!true && any(vec2<bool>(true, true)))));
    }
    var var_0 = u_input.a.yy;
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        for (var var_1: i32; var_1 > -52182; var_1 -= 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_2 = min(vec4<u32>(1u, ~(~func_6(Struct_4(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(316.0, -184.0, -252.0, -625.0), u_input.a, -434, true), 4294967295u), Struct_1(vec4<f32>(974.0, -1044.0, -957.0, -1000.0), vec4<i32>(var_0.x, u_input.a.x, var_0.x, 43899), u_input.c, false), 0).x), func_7(Struct_4(vec4<i32>(-8802, var_0.x, var_0.x, 1), vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u) | vec3<u32>(u_input.e.x, 128045u, 1u), Struct_1(vec4<f32>(-150.0, -532.0, -1092.0, 914.0), u_input.a, var_0.x, true), firstTrailingBit(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363.0 + -987.0))).b.x, 45804u), _wgslsmith_clamp_vec4_u32(~abs(abs(vec4<u32>(u_input.e.x, u_input.e.x, 40779u, 1u))), vec4<u32>(~(0u ^ u_input.e.x), ~28288u, ~_wgslsmith_mult_u32(25018u, 49117u), ~(~4294967295u)), min(max(abs(vec4<u32>(u_input.e.x, u_input.e.x, 1370u, 12627u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 4294967295u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 0u))), ~(~vec4<u32>(1u, 7592u, 1u, u_input.e.x)))));
            let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(137.0, _wgslsmith_f_op_f32(747.0 - 1057.0)))))));
            var_2 = ~(~(firstTrailingBit(vec4<u32>(4294967295u, var_2.x, 46137u, u_input.e.x)) >> (abs(vec4<u32>(var_2.x, 1u, 0u, 4294967295u)) % vec4<u32>(32u)))) | ~_wgslsmith_clamp_vec4_u32(reverseBits(select(vec4<u32>(u_input.e.x, 1u, u_input.e.x, 71402u), vec4<u32>(14584u, var_2.x, u_input.e.x, var_2.x), vec4<bool>(true, false, true, false))), func_6(Struct_4(u_input.a, var_2.zwy, Struct_1(vec4<f32>(1527.0, -679.0, var_3.x, 1000.0), u_input.a, u_input.c, true), var_2.x), Struct_1(vec4<f32>(var_3.x, -1000.0, 880.0, 1111.0), vec4<i32>(var_0.x, u_input.d.x, -1, 1), -2147483648, true), u_input.c) | (vec4<u32>(0u, 152108u, 27850u, 4294967295u) & vec4<u32>(85519u, var_2.x, 17156u, 28833u)), abs(~vec4<u32>(4294967295u, 83976u, u_input.e.x, 4294967295u)));
        }
        var_0 = u_input.b.xz;
        switch (~_wgslsmith_add_i32(u_input.c, u_input.b.x)) {
            case -29204: {
                var_0 = u_input.b.yz;
            }
            case -32679: {
            }
            case 1: {
                var_0 = max(u_input.b.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(-1) * -abs(vec2<i32>(var_0.x, -2147483648)), ~_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(19469, u_input.b.x), vec2<i32>(30846, u_input.a.x)), vec2<i32>(var_0.x, var_0.x))));
                var var_1 = -countOneBits((vec3<i32>(-1) * -vec3<i32>(u_input.c, 0, var_0.x)) | (vec3<i32>(-1, var_0.x, -1) ^ u_input.a.zyy));
            }
            default: {
                var var_1 = Struct_4(_wgslsmith_add_vec4_i32(max(abs(vec4<i32>(-34322, 1, -2147483648, -10463)), -vec4<i32>(2292, var_0.x, var_0.x, -2147483648)) >> (~vec4<u32>(1u, 1u, u_input.e.x, u_input.e.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(-15012, 1), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.x, -20671), _wgslsmith_div_i32(u_input.a.x, 33364), var_0.x), max(~(-39844), reverseBits(var_0.x)), abs(func_7(Struct_4(u_input.a, vec3<u32>(u_input.e.x, 27537u, 0u), Struct_1(vec4<f32>(-2083.0, 1937.0, -1012.0, -742.0), u_input.a, -2147483648, true), 73595u), 613.0).a.x))), firstTrailingBit(vec3<u32>(u_input.e.x >> (func_7(Struct_4(vec4<i32>(-1, 2147483647, u_input.a.x, -1), vec3<u32>(u_input.e.x, 0u, u_input.e.x), Struct_1(vec4<f32>(-1256.0, 955.0, 787.0, 261.0), vec4<i32>(53560, 8450, var_0.x, u_input.b.x), u_input.b.x, true), u_input.e.x), 529.0).d % 32u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.e.x, 23980u), ~0u, 0u), u_input.e.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135.0, -1149.0, 1000.0, -409.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000.0, 442.0, -1022.0, -1106.0) + vec4<f32>(-1000.0, -1000.0, 133.0, 909.0)))), u_input.a, -2147483648, select(false, select(19805u > u_input.e.x, true, any(vec4<bool>(false, true, false, false))), false)), ~u_input.e.x);
                break;
            }
        }
        if (func_7(Struct_4(min(vec4<i32>(0, 6046, u_input.c, u_input.b.x) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483648, -70558, -1, 449), vec4<i32>(-6609, var_0.x, var_0.x, u_input.b.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a.zyx, u_input.a.zyx), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.d.x, -20955), vec3<i32>(var_0.x, var_0.x, var_0.x)))), func_6(func_7(Struct_4(u_input.a, vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), Struct_1(vec4<f32>(971.0, -1000.0, 1551.0, -387.0), u_input.a, var_0.x, true), 12313u), _wgslsmith_f_op_f32(sign(-965.0))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(198.0, -1100.0, 218.0, 418.0)), u_input.a, -1, false), u_input.b.x ^ _wgslsmith_mult_i32(1, u_input.b.x)).zzy, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1294.0, 987.0, 591.0, -151.0))), vec4<i32>(2147483647, select(u_input.a.x, u_input.c, true), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_0.x, -1, u_input.a.x, -54840)), abs(-2147483648)), firstTrailingBit(612 << (19850u % 32u)), _wgslsmith_f_op_f32(min(-652.0, 1411.0)) > 589.0), u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(465.0 + 512.0), _wgslsmith_f_op_f32(-1398.0 + -1000.0))), _wgslsmith_f_op_f32(round(1837.0))) + 1000.0)).c.d) {
            var var_1 = !any(select(select(vec4<bool>(false, true, false, false), !vec4<bool>(false, true, true, false), -824.0 > -148.0), vec4<bool>(true == true, any(vec3<bool>(false, true, false)), true != false, !false), _wgslsmith_f_op_f32(f32(-1.0) * -179.0) >= _wgslsmith_div_f32(-650.0, -1188.0)));
            var_1 = true;
            let var_2 = u_input.a.xzw | max(-vec3<i32>(15207, -1, -102), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, -26317), u_input.b >> (vec3<u32>(u_input.e.x, 44210u, u_input.e.x) % vec3<u32>(32u))), -vec3<i32>(u_input.d.x, u_input.c, 11053) ^ select(vec3<i32>(u_input.b.x, u_input.a.x, 2147483647), vec3<i32>(-10292, u_input.a.x, var_0.x), true)));
        }
    }
    switch (~var_0.x) {
        default: {
            var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(max(u_input.e.x, 70321u), ~u_input.e.x) | u_input.e.x, 4294967295u);
            if (true) {
                var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(472.0, -390.0, 1000.0)), _wgslsmith_div_vec3_f32(vec3<f32>(-872.0, 240.0, 1772.0), vec3<f32>(641.0, 931.0, -1192.0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-928.0, -1110.0, 1254.0), vec3<f32>(-1072.0, 1000.0, 976.0))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-485.0, -820.0, -372.0))), vec3<f32>(849.0, 460.0, -483.0), !false)))));
                var_1 = 4294967295u;
            }
            var var_2 = vec2<bool>(false, select(128246u, ~_wgslsmith_add_u32(u_input.e.x, 2142u), !all(vec2<bool>(false, false))) < _wgslsmith_sub_u32(func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(1598.0, -595.0, 160.0, 108.0), vec4<i32>(2147483647, var_0.x, var_0.x, u_input.d.x), -1, true), u_input.e.x), _wgslsmith_f_op_f32(abs(375.0))).b.x, firstTrailingBit(u_input.e.x)));
            var var_3 = Struct_4(~(-(~u_input.a) >> (~(~vec4<u32>(47446u, u_input.e.x, u_input.e.x, 1u)) % vec4<u32>(32u))), vec3<u32>(reverseBits(1u), u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(func_5(Struct_2(vec3<u32>(u_input.e.x, 1u, u_input.e.x), Struct_1(vec4<f32>(-1266.0, 704.0, -1376.0, 531.0), u_input.a, 0, false), vec2<bool>(var_2.x, var_2.x), Struct_1(vec4<f32>(-1000.0, -973.0, -131.0, -594.0), u_input.a, 7636, var_2.x), u_input.e), func_5(Struct_2(vec3<u32>(33057u, 0u, u_input.e.x), Struct_1(vec4<f32>(236.0, -1000.0, 321.0, -729.0), vec4<i32>(u_input.d.x, var_0.x, u_input.b.x, 0), u_input.d.x, true), vec2<bool>(false, false), Struct_1(vec4<f32>(-1684.0, -396.0, 1400.0, 590.0), u_input.a, u_input.d.x, var_2.x), vec3<u32>(1u, 1u, 1u)), Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-636.0, 1000.0, -1444.0, -1415.0), u_input.a, var_0.x, false), 4294967295u))).c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-350.0))), -640.0, _wgslsmith_f_op_f32(trunc(540.0))), vec4<i32>(-var_0.x, u_input.d.x, u_input.b.x, abs(var_0.x >> (0u % 32u))), max(-var_0.x, _wgslsmith_add_i32(-26416, 0)) & select(u_input.a.x, -30455, false), all(select(vec2<bool>(false, true), vec2<bool>(var_2.x, true), select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, false))))), 1505u);
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            }
        }
    }
    return func_7(Struct_4(-u_input.a, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.e, ~vec3<u32>(u_input.e.x, 49899u, 16279u)), firstTrailingBit(vec3<u32>(4885u, 4294967295u, u_input.e.x)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e.x, 0u, u_input.e.x), u_input.e) % vec3<u32>(32u))), func_5(Struct_2(vec3<u32>(u_input.e.x, 0u, u_input.e.x), func_7(Struct_4(vec4<i32>(-16097, -25970, u_input.c, -1), vec3<u32>(u_input.e.x, u_input.e.x, 155844u), Struct_1(vec4<f32>(183.0, -367.0, 809.0, -716.0), vec4<i32>(var_0.x, -30002, 0, 2994), u_input.a.x, false), 4294967295u), -910.0).c, select(vec2<bool>(false, true), vec2<bool>(true, false), true), Struct_1(vec4<f32>(-263.0, -616.0, 383.0, -724.0), vec4<i32>(u_input.d.x, -1, u_input.c, 15190), var_0.x, false), max(vec3<u32>(u_input.e.x, 1u, 53401u), u_input.e)), func_7(func_5(Struct_2(vec3<u32>(u_input.e.x, 99093u, 46099u), Struct_1(vec4<f32>(561.0, -241.0, -815.0, -1317.0), vec4<i32>(u_input.a.x, -2147483648, 2147483647, 61190), -1, false), vec2<bool>(true, true), Struct_1(vec4<f32>(1603.0, -1000.0, -699.0, 1387.0), vec4<i32>(var_0.x, u_input.d.x, var_0.x, u_input.c), u_input.a.x, true), u_input.e), Struct_4(u_input.a, vec3<u32>(107712u, u_input.e.x, 3292u), Struct_1(vec4<f32>(-1518.0, 718.0, -1188.0, -2215.0), vec4<i32>(0, 1495, var_0.x, 2147483647), u_input.a.x, true), 6481u)), -924.0)).c, ~_wgslsmith_dot_vec4_u32(func_6(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(354.0, 1008.0, -359.0, 1000.0), vec4<i32>(20281, var_0.x, -1, u_input.c), u_input.b.x, true), u_input.e.x), Struct_1(vec4<f32>(-910.0, -112.0, 1115.0, 823.0), u_input.a, u_input.b.x, false), 37913), vec4<u32>(4294967295u, 1u, u_input.e.x, u_input.e.x))), -899.0).c;
}

fn func_9(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = false;
    var var_1 = vec4<u32>(abs(1u), ~((func_6(Struct_4(vec4<i32>(u_input.d.x, arg_2.c.c, 1, 2394), arg_2.a.wyz, Struct_1(arg_3.a, vec4<i32>(-43019, arg_2.b.d.b.x, arg_3.b.x, arg_2.b.d.c), u_input.c, true), 13484u), Struct_1(arg_1.a, vec4<i32>(u_input.b.x, 1, 0, -4860), -9601, arg_2.b.b.d), 2147483647).x & 1u) >> (arg_2.a.x % 32u)), ~(~u_input.e.x) << (2354u % 32u), 50260u);
    let var_2 = _wgslsmith_div_u32(21642u, ~firstTrailingBit(u_input.e.x));
    for (var var_3: i32; arg_2.c.d; var_3 -= 1) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        var var_4 = Struct_3(arg_2.a, arg_2.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(-arg_3.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a - arg_3.a), arg_2.b.d.a)), min(arg_3.b, vec4<i32>(arg_1.b.x, arg_3.c, arg_0.c, u_input.c)), -_wgslsmith_clamp_i32(2147483647, ~arg_0.c, _wgslsmith_clamp_i32(arg_0.c, arg_3.c, 28072)), all(!select(vec4<bool>(arg_3.d, true, arg_1.d, arg_1.d), vec4<bool>(false, arg_3.d, arg_2.c.d, arg_2.b.d.d), true))), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-func_5(arg_2.b, func_7(Struct_4(arg_2.c.b, vec3<u32>(arg_2.a.x, 1u, 12091u), Struct_1(arg_2.b.d.a, vec4<i32>(arg_3.c, arg_2.c.b.x, 2147483647, -1), arg_0.c, false), var_1.x), arg_2.c.a.x)).c.a.x)));
        var var_5 = ~vec2<i32>(0, ~(arg_2.c.c << (0u % 32u)) ^ ((u_input.a.x | 0) >> (~var_2 % 32u)));
        var var_6 = firstTrailingBit(-47269) >> ((~var_4.a.x | arg_2.b.e.x) % 32u);
        var_6 = _wgslsmith_mult_i32(~(-1), arg_1.b.x);
    }
    var var_3 = _wgslsmith_mod_u32(~(~4294967295u), 25743u) | 1u;
    return arg_0.a.x;
}

fn func_3(arg_0: vec3<bool>) -> Struct_3 {
    switch (~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c, _wgslsmith_add_i32(u_input.a.x >> (4294967295u % 32u), u_input.c >> (1u % 32u))), -37306)) {
        default: {
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(694.0)), _wgslsmith_f_op_f32(trunc(588.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_9(func_4(), func_5(Struct_2(vec3<u32>(39962u, 25382u, u_input.e.x), Struct_1(vec4<f32>(-374.0, -1056.0, -386.0, 188.0), vec4<i32>(u_input.a.x, u_input.d.x, u_input.a.x, u_input.b.x), 2147483647, true), arg_0.zx, Struct_1(vec4<f32>(2300.0, -170.0, -241.0, 342.0), vec4<i32>(u_input.c, -2147483648, u_input.b.x, u_input.d.x), 1653, false), u_input.e), Struct_4(vec4<i32>(u_input.c, u_input.b.x, 0, u_input.b.x), u_input.e, Struct_1(vec4<f32>(-819.0, 1275.0, 721.0, -1000.0), u_input.a, -38836, arg_0.x), 4294967295u)).c, Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 63121u, 3900u, u_input.e.x), vec4<u32>(27869u, u_input.e.x, u_input.e.x, 31686u)), Struct_2(vec3<u32>(4294967295u, 1u, u_input.e.x), Struct_1(vec4<f32>(598.0, -295.0, 719.0, 528.0), vec4<i32>(-34849, 33955, u_input.c, u_input.d.x), -3505, arg_0.x), arg_0.xy, Struct_1(vec4<f32>(1147.0, 107.0, 231.0, 1266.0), vec4<i32>(u_input.b.x, u_input.c, u_input.a.x, 76075), -27089, arg_0.x), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), func_7(Struct_4(vec4<i32>(u_input.d.x, u_input.c, 0, -1), u_input.e, Struct_1(vec4<f32>(319.0, 1446.0, -1471.0, -890.0), u_input.a, u_input.d.x, arg_0.x), u_input.e.x), 347.0).c, _wgslsmith_f_op_f32(-1000.0 - -1060.0)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1415.0, 1417.0, 384.0, -176.0)), ~u_input.a, ~0, true != arg_0.x)))));
            }
            if (!(!any(vec3<bool>(false, false, !arg_0.x)))) {
            }
            if (arg_0.x) {
            }
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                continue;
            }
            var var_0 = Struct_2(u_input.e, func_5(Struct_2(max(_wgslsmith_div_vec3_u32(u_input.e, u_input.e), ~vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), func_4(), arg_0.yx, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(701.0, -299.0, 714.0, -1734.0)), u_input.a, func_5(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-1000.0, -322.0, -769.0, -1253.0), u_input.a, u_input.a.x, false), arg_0.yx, Struct_1(vec4<f32>(-1365.0, -1657.0, -522.0, 2156.0), vec4<i32>(u_input.c, 2147483647, 7943, 0), u_input.a.x, true), u_input.e), Struct_4(vec4<i32>(u_input.b.x, 29903, u_input.d.x, 1), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-1722.0, -143.0, 569.0, 644.0), u_input.a, 0, false), u_input.e.x)).a.x, -1381.0 <= -1095.0), vec3<u32>(u_input.e.x, abs(u_input.e.x), 4294967295u)), Struct_4(~u_input.a, abs(vec3<u32>(35489u, 47767u, u_input.e.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1025.0, 311.0, 581.0, 927.0)), vec4<i32>(u_input.c, u_input.c, 1, -1), _wgslsmith_dot_vec3_i32(u_input.b, u_input.a.yzz), !arg_0.x), func_5(Struct_2(vec3<u32>(u_input.e.x, 38860u, 1u), Struct_1(vec4<f32>(525.0, -960.0, 877.0, -433.0), u_input.a, -2147483648, arg_0.x), arg_0.zy, Struct_1(vec4<f32>(303.0, -795.0, 1000.0, -185.0), u_input.a, -6716, true), u_input.e), Struct_4(u_input.a, vec3<u32>(1u, u_input.e.x, 229u), Struct_1(vec4<f32>(-388.0, -269.0, 1000.0, -713.0), vec4<i32>(20422, u_input.c, u_input.a.x, -3410), u_input.a.x, arg_0.x), u_input.e.x)).b.x)).c, vec2<bool>(!(!all(vec2<bool>(arg_0.x, false))), !arg_0.x), func_7(func_7(func_5(Struct_2(vec3<u32>(6272u, 4294967295u, u_input.e.x), Struct_1(vec4<f32>(-1000.0, -1042.0, -528.0, -794.0), u_input.a, u_input.a.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), Struct_1(vec4<f32>(-1000.0, 413.0, -638.0, 1363.0), vec4<i32>(u_input.d.x, 2147483647, 1, u_input.b.x), u_input.d.x, arg_0.x), vec3<u32>(4294967295u, 32714u, 85374u)), Struct_4(u_input.a, vec3<u32>(u_input.e.x, 55824u, 1438u), Struct_1(vec4<f32>(-866.0, -1000.0, 1000.0, -1033.0), vec4<i32>(u_input.b.x, 26290, -53932, u_input.d.x), u_input.d.x, false), 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(235.0)), _wgslsmith_f_op_f32(1750.0 + -1795.0))), _wgslsmith_f_op_f32(exp2(-1000.0))).c, vec3<u32>(4294967295u, countOneBits(4294967295u), ~max(u_input.e.x, 1u) ^ func_7(Struct_4(vec4<i32>(u_input.b.x, -2147483648, u_input.a.x, 12854), vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), Struct_1(vec4<f32>(530.0, -1760.0, -187.0, 1569.0), u_input.a, 26679, arg_0.x), 43674u), _wgslsmith_f_op_f32(-1317.0 + 284.0)).b.x));
        }
    }
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 4294967295u) & vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x), vec4<u32>(1u, 66467u, 9404u, u_input.e.x)), ~vec4<u32>(0u, u_input.e.x, 1u, u_input.e.x)), vec4<u32>(~(43454u & 1u), u_input.e.x, func_5(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(2362.0, -757.0, 1562.0, -1731.0), vec4<i32>(u_input.a.x, -2147483648, 1, u_input.a.x), -2147483648, arg_0.x), arg_0.xz, Struct_1(vec4<f32>(387.0, 729.0, 1147.0, -784.0), u_input.a, 36726, arg_0.x), u_input.e), Struct_4(vec4<i32>(u_input.d.x, u_input.c, 2175, u_input.c), vec3<u32>(u_input.e.x, 4294967295u, 7186u), Struct_1(vec4<f32>(-484.0, 2149.0, 455.0, 1233.0), vec4<i32>(2147483647, -21701, u_input.b.x, 1), -26768, arg_0.x), 10499u)).d, func_6(Struct_4(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, 2010u), Struct_1(vec4<f32>(1286.0, -260.0, 1582.0, -1320.0), u_input.a, 1, arg_0.x), 65108u), Struct_1(vec4<f32>(1507.0, 1690.0, 223.0, 600.0), vec4<i32>(u_input.a.x, 19316, -26945, u_input.a.x), u_input.c, arg_0.x), u_input.d.x).x << (u_input.e.x % 32u))), _wgslsmith_div_vec4_u32(min(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 7924u, 4294967295u), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 58795u), vec4<u32>(u_input.e.x, 58591u, 18413u, u_input.e.x)), !vec4<bool>(arg_0.x, true, true, false)), vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x) << (vec4<u32>(1u, u_input.e.x, 0u, u_input.e.x) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(4294967295u, 29666u, 1u, u_input.e.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(0u, u_input.e.x, u_input.e.x, u_input.e.x)))));
    for (; ; ) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        continue;
    }
    switch (-8852) {
        case -60365: {
            var var_1 = _wgslsmith_dot_vec2_u32(var_0.wz, vec2<u32>(_wgslsmith_add_u32(29909u, 1u) & ~(u_input.e.x | u_input.e.x), (43961u << ((var_0.x >> (var_0.x % 32u)) % 32u)) ^ _wgslsmith_div_u32(~77488u, _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(1u, u_input.e.x, 4294967295u, 4294967295u)))));
            var var_2 = abs(6724);
            let var_3 = Struct_3(var_0, Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x << (4294967295u % 32u), 12920u, func_6(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-169.0, -314.0, -761.0, 1470.0), u_input.a, -20955, false), 48779u), Struct_1(vec4<f32>(-518.0, 1000.0, 610.0, -595.0), vec4<i32>(20829, -30668, -15952, u_input.a.x), 42906, true), 28722).x), var_0.zwx), Struct_1(vec4<f32>(_wgslsmith_div_f32(155.0, 545.0), -1692.0, _wgslsmith_f_op_f32(-869.0), 106.0), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.c) | u_input.a, vec4<i32>(u_input.b.x, u_input.d.x, -2147483648, -28190)), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1, -58851, 31697, -809)), func_5(Struct_2(var_0.yxx, Struct_1(vec4<f32>(1003.0, -644.0, 373.0, -582.0), vec4<i32>(-17158, 2147483647, 5592, u_input.a.x), u_input.a.x, false), arg_0.yz, Struct_1(vec4<f32>(676.0, -1879.0, 399.0, 889.0), u_input.a, u_input.b.x, true), var_0.www), Struct_4(vec4<i32>(-1, 22057, u_input.d.x, u_input.c), u_input.e, Struct_1(vec4<f32>(-769.0, 1177.0, 230.0, -702.0), u_input.a, u_input.a.x, arg_0.x), 1u)).c.d), arg_0.zz, Struct_1(vec4<f32>(1794.0, -1637.0, _wgslsmith_f_op_f32(f32(-1.0) * -537.0), _wgslsmith_f_op_f32(exp2(-1126.0))), -_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(1, u_input.b.x, 2147483647, u_input.a.x)), max(u_input.c, -4071 ^ u_input.d.x), arg_0.x), vec3<u32>(0u, 4294967295u, 0u)), func_7(func_7(Struct_4(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), ~var_0.wyw, Struct_1(vec4<f32>(789.0, 950.0, -794.0, 944.0), u_input.a, u_input.a.x, true), ~u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607.0) + -332.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -666.0))).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_9(func_4(), Struct_1(vec4<f32>(338.0, 1230.0, -775.0, -1000.0), u_input.a, u_input.b.x, arg_0.x), Struct_3(vec4<u32>(var_0.x, u_input.e.x, u_input.e.x, var_0.x), Struct_2(var_0.yyw, Struct_1(vec4<f32>(1000.0, 447.0, 1197.0, -386.0), vec4<i32>(u_input.c, u_input.c, u_input.c, 1), u_input.a.x, arg_0.x), vec2<bool>(true, arg_0.x), Struct_1(vec4<f32>(-1995.0, 1311.0, 168.0, -1492.0), vec4<i32>(29940, u_input.a.x, u_input.b.x, u_input.b.x), u_input.c, arg_0.x), u_input.e), Struct_1(vec4<f32>(-509.0, -813.0, -775.0, -1136.0), vec4<i32>(u_input.b.x, u_input.c, -22509, 1), u_input.c, arg_0.x), 266.0), func_5(Struct_2(vec3<u32>(var_0.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-595.0, -335.0, 994.0, -203.0), u_input.a, 38942, false), arg_0.yx, Struct_1(vec4<f32>(-262.0, -107.0, -414.0, 223.0), vec4<i32>(u_input.d.x, u_input.d.x, -1, 24993), -5665, arg_0.x), vec3<u32>(1u, var_0.x, 1u)), Struct_4(vec4<i32>(-7482, u_input.b.x, -1, -71109), vec3<u32>(var_0.x, 47709u, u_input.e.x), Struct_1(vec4<f32>(1000.0, -1000.0, -340.0, 790.0), vec4<i32>(-1, u_input.a.x, -52335, 1), 1, arg_0.x), u_input.e.x)).c)))), -1000.0));
        }
        case -1: {
            let var_1 = func_7(Struct_4(vec4<i32>(func_8(Struct_4(u_input.a, var_0.yxy, Struct_1(vec4<f32>(1299.0, 1699.0, -276.0, -787.0), vec4<i32>(u_input.a.x, -1, u_input.a.x, u_input.a.x), u_input.a.x, false), var_0.x), Struct_3(var_0, Struct_2(vec3<u32>(var_0.x, var_0.x, var_0.x), Struct_1(vec4<f32>(679.0, 298.0, -136.0, -901.0), vec4<i32>(-2147483648, u_input.c, -1, 0), -9311, arg_0.x), arg_0.zx, Struct_1(vec4<f32>(776.0, 636.0, 902.0, -1506.0), vec4<i32>(1, u_input.c, -21981, 18935), 44923, arg_0.x), u_input.e), Struct_1(vec4<f32>(795.0, -428.0, 827.0, 1532.0), vec4<i32>(u_input.d.x, 11113, u_input.c, -20827), u_input.c, arg_0.x), -1106.0), Struct_3(vec4<u32>(28933u, u_input.e.x, u_input.e.x, var_0.x), Struct_2(var_0.ywy, Struct_1(vec4<f32>(-269.0, 2160.0, -119.0, 144.0), u_input.a, -2147483648, false), vec2<bool>(arg_0.x, true), Struct_1(vec4<f32>(-910.0, -944.0, 1410.0, 656.0), u_input.a, -2147483648, arg_0.x), vec3<u32>(1u, 12755u, 1u)), Struct_1(vec4<f32>(-625.0, 1740.0, -802.0, -783.0), vec4<i32>(-57031, -483, u_input.c, u_input.c), u_input.d.x, arg_0.x), -1348.0)), u_input.b.x, countOneBits(2147483647), _wgslsmith_add_i32(u_input.a.x, -31164)) & -abs(vec4<i32>(-57228, u_input.d.x, -46657, u_input.c)), ~(countOneBits(var_0.www) << (u_input.e % vec3<u32>(32u))), func_5(Struct_2(reverseBits(vec3<u32>(39521u, var_0.x, u_input.e.x)), Struct_1(vec4<f32>(-124.0, 1475.0, 1000.0, 448.0), u_input.a, 59893, true), arg_0.zx, Struct_1(vec4<f32>(950.0, -977.0, 1080.0, 2792.0), u_input.a, u_input.c, true), u_input.e), func_7(Struct_4(u_input.a, vec3<u32>(u_input.e.x, 1u, u_input.e.x), Struct_1(vec4<f32>(556.0, -511.0, 1411.0, 587.0), vec4<i32>(u_input.c, u_input.d.x, -1, u_input.b.x), u_input.c, false), u_input.e.x), _wgslsmith_f_op_f32(floor(383.0)))).c, 1u), 1190.0);
            var var_2 = !vec3<bool>(any(!vec4<bool>(true, var_1.c.d, false, true)) && func_4().d, any(select(select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, true, true, false), arg_0.x), select(vec4<bool>(false, var_1.c.d, true, false), vec4<bool>(false, false, arg_0.x, var_1.c.d), var_1.c.d), vec4<bool>(false, var_1.c.d, arg_0.x, true))), !false);
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                let var_3 = vec4<bool>(var_0.x < 1u, false, arg_0.x, !func_5(Struct_2(u_input.e | u_input.e, var_1.c, !vec2<bool>(arg_0.x, false), Struct_1(vec4<f32>(var_1.c.a.x, var_1.c.a.x, var_1.c.a.x, var_1.c.a.x), u_input.a, -1, false), ~var_1.b), func_5(Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(var_1.c.a, u_input.a, var_1.c.c, var_1.c.d), var_2.xx, var_1.c, vec3<u32>(var_0.x, u_input.e.x, u_input.e.x)), var_1)).c.d);
                let var_4 = -firstTrailingBit(-vec2<i32>(-43914, var_1.a.x) | vec2<i32>(i32(-1) * -1, u_input.c));
                var_2 = select(var_3.zyy, vec3<bool>(var_2.x, (!var_3.x || (arg_0.x & var_2.x)) && select(all(vec2<bool>(true, var_2.x)), any(vec2<bool>(false, true)), false), arg_0.x), arg_0);
                var var_5 = Struct_3(var_0, Struct_2(select(var_0.wyw, var_1.b, all(vec4<bool>(false, arg_0.x, var_2.x, false))), var_1.c, vec2<bool>((true && var_3.x) != !true, false), var_1.c, ~u_input.e), func_5(Struct_2(vec3<u32>(4294967295u, var_0.x, 36021u), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1030.0, var_1.c.a.x, 814.0, 330.0), vec4<f32>(var_1.c.a.x, 933.0, -1087.0, 2062.0)), vec4<i32>(var_4.x, u_input.d.x, u_input.b.x, var_4.x) & u_input.a, ~49086, var_3.x), select(var_3.yw, select(vec2<bool>(var_2.x, true), arg_0.zz, vec2<bool>(var_1.c.d, var_3.x)), !arg_0.zx), var_1.c, ~(~var_0.zzx)), Struct_4(func_5(Struct_2(var_1.b, var_1.c, vec2<bool>(false, var_2.x), Struct_1(var_1.c.a, vec4<i32>(var_1.a.x, var_4.x, u_input.b.x, 0), -1, var_2.x), vec3<u32>(0u, 22013u, u_input.e.x)), func_5(Struct_2(u_input.e, var_1.c, vec2<bool>(true, false), var_1.c, vec3<u32>(0u, 88731u, u_input.e.x)), Struct_4(u_input.a, var_0.yyz, var_1.c, var_1.d))).a, ~u_input.e, Struct_1(_wgslsmith_f_op_vec4_f32(var_1.c.a + var_1.c.a), vec4<i32>(45640, -30014, var_4.x, u_input.b.x), firstTrailingBit(2147483647), !true), 0u)).c, _wgslsmith_f_op_f32(-487.0 - _wgslsmith_f_op_f32(step(var_1.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(322.0, 615.0))))));
                break;
            }
            for (var var_3 = 2147483647; var_3 != 11161; var_2 = !arg_0) {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                var var_4 = var_1;
                continue;
            }
            var_2 = arg_0;
        }
        case 29642: {
            var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, _wgslsmith_mult_u32(4294967295u, 4294967295u), select(_wgslsmith_add_u32(~57265u, func_6(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-2588.0, 129.0, 1440.0, -1000.0), u_input.a, u_input.c, false), u_input.e.x), Struct_1(vec4<f32>(-1452.0, -1602.0, -1260.0, -1913.0), vec4<i32>(u_input.a.x, u_input.b.x, -1, 0), u_input.d.x, arg_0.x), u_input.d.x).x), ~(~4294967295u), all(!vec4<bool>(false, arg_0.x, true, false)))), ~(~var_0));
            switch (30318) {
                case 1: {
                    let var_2 = -u_input.c;
                    return Struct_3(vec4<u32>(0u, abs(_wgslsmith_mod_u32(var_1.x >> (var_0.x % 32u), ~var_1.x)), func_7(Struct_4(~vec4<i32>(var_2, var_2, u_input.d.x, 1), u_input.e >> (var_0.zyz % vec3<u32>(32u)), func_4(), abs(1u)), _wgslsmith_f_op_f32(-261.0 * _wgslsmith_div_f32(2250.0, -946.0))).d, _wgslsmith_dot_vec2_u32(~(~u_input.e.zx), var_1.xw)), Struct_2(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(336u, var_0.x, 10370u), vec3<u32>(4294967295u, var_0.x, var_0.x)), ~vec3<u32>(25315u, 4294967295u, var_1.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-898.0 + -1938.0), _wgslsmith_f_op_f32(350.0 * 1372.0), -372.0, _wgslsmith_f_op_f32(trunc(-407.0))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-46598, var_2, -1, var_2), u_input.a), ~0, 0 | u_input.b.x, -var_2), 1, all(vec3<bool>(arg_0.x, arg_0.x, false)) & (1458.0 >= 1440.0)), vec2<bool>(!true & all(arg_0), !(!true)), func_7(func_5(Struct_2(var_1.yzx, Struct_1(vec4<f32>(-1784.0, -1000.0, -1619.0, 1599.0), u_input.a, -2147483648, arg_0.x), arg_0.yx, Struct_1(vec4<f32>(-514.0, 1221.0, 1305.0, 1614.0), u_input.a, var_2, false), var_1.zzw), func_7(Struct_4(vec4<i32>(-16992, -1, -2147483648, var_2), vec3<u32>(24911u, var_0.x, 19587u), Struct_1(vec4<f32>(1171.0, 2145.0, -2075.0, -590.0), u_input.a, var_2, arg_0.x), var_0.x), 139.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(552.0)) * 1588.0)).c, ~abs(countOneBits(vec3<u32>(460u, var_0.x, var_1.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-func_7(func_7(Struct_4(u_input.a, var_0.xyz, Struct_1(vec4<f32>(167.0, 1375.0, 824.0, -1721.0), vec4<i32>(-1, var_2, u_input.b.x, -24273), var_2, true), u_input.e.x), -637.0), _wgslsmith_f_op_f32(f32(-1.0) * -129.0)).c.a), -(select(u_input.a, vec4<i32>(var_2, u_input.a.x, var_2, 37642), vec4<bool>(false, false, false, true)) >> (var_0 % vec4<u32>(32u))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(func_7(Struct_4(vec4<i32>(-31364, -1, var_2, -2147483648), vec3<u32>(123625u, 0u, 4294967295u), Struct_1(vec4<f32>(374.0, 419.0, 461.0, 1256.0), u_input.a, 44205, arg_0.x), 16073u), 1737.0).a, vec4<i32>(u_input.a.x, var_2, var_2, var_2)), -2147483648), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386.0 * _wgslsmith_f_op_f32(func_9(Struct_1(vec4<f32>(1186.0, -424.0, -689.0, 581.0), vec4<i32>(-21502, u_input.b.x, u_input.b.x, var_2), u_input.b.x, arg_0.x), func_4(), Struct_3(var_0, Struct_2(var_1.zzz, Struct_1(vec4<f32>(883.0, 893.0, 801.0, 1000.0), u_input.a, -30412, false), arg_0.zx, Struct_1(vec4<f32>(-506.0, 1340.0, 169.0, -1533.0), u_input.a, u_input.b.x, true), var_0.wzw), Struct_1(vec4<f32>(-1766.0, -872.0, 332.0, -666.0), u_input.a, 18467, true), -1000.0), Struct_1(vec4<f32>(-979.0, 438.0, -1055.0, 1381.0), vec4<i32>(-2147483648, -1, 39158, u_input.b.x), var_2, arg_0.x))))));
                }
                default: {
                    return Struct_3(var_0, Struct_2(var_0.wyy, func_5(Struct_2(~var_1.xxy, func_5(Struct_2(vec3<u32>(119973u, var_0.x, var_0.x), Struct_1(vec4<f32>(-522.0, -1000.0, 1667.0, -821.0), vec4<i32>(0, 0, 63234, u_input.c), -33561, false), vec2<bool>(arg_0.x, true), Struct_1(vec4<f32>(-365.0, -1000.0, 1402.0, -1034.0), vec4<i32>(26655, u_input.d.x, u_input.d.x, -1), -8197, arg_0.x), var_1.wzx), Struct_4(vec4<i32>(22046, u_input.a.x, u_input.a.x, -1), u_input.e, Struct_1(vec4<f32>(295.0, -1000.0, -198.0, -305.0), vec4<i32>(-2147483648, u_input.d.x, -2147483648, u_input.a.x), 14270, arg_0.x), 0u)).c, select(arg_0.yy, vec2<bool>(arg_0.x, false), false), func_4(), u_input.e >> (u_input.e % vec3<u32>(32u))), func_7(Struct_4(vec4<i32>(1, 1, 69985, -1), vec3<u32>(1u, var_1.x, 77444u), Struct_1(vec4<f32>(-239.0, -964.0, 1142.0, -1035.0), vec4<i32>(u_input.b.x, -1, u_input.a.x, 2147483647), -13937, true), var_0.x), _wgslsmith_f_op_f32(687.0 - -561.0))).c, vec2<bool>(func_5(Struct_2(vec3<u32>(var_1.x, 1u, var_1.x), Struct_1(vec4<f32>(-858.0, -277.0, 397.0, 998.0), u_input.a, 24635, arg_0.x), arg_0.xy, Struct_1(vec4<f32>(920.0, 1026.0, -255.0, -1000.0), u_input.a, u_input.a.x, arg_0.x), vec3<u32>(u_input.e.x, u_input.e.x, 0u)), Struct_4(u_input.a, var_1.yyx, Struct_1(vec4<f32>(1033.0, 123.0, -465.0, 513.0), u_input.a, u_input.b.x, true), 0u)).c.d, arg_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-741.0, 2548.0, 205.0, 1000.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(219.0, -914.0, -1000.0, -1152.0)), false)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b.x, 12632, -1, -1)), func_5(Struct_2(vec3<u32>(u_input.e.x, 1u, u_input.e.x), Struct_1(vec4<f32>(-1381.0, 1081.0, 1000.0, -1000.0), u_input.a, -1, false), arg_0.yy, Struct_1(vec4<f32>(2004.0, 1590.0, -438.0, -113.0), u_input.a, u_input.a.x, arg_0.x), vec3<u32>(var_0.x, var_1.x, var_0.x)), Struct_4(vec4<i32>(u_input.c, -38483, u_input.b.x, 14005), vec3<u32>(51070u, var_1.x, u_input.e.x), Struct_1(vec4<f32>(740.0, 1805.0, -1085.0, -360.0), vec4<i32>(2147483647, 24558, 0, u_input.d.x), 2147483647, true), var_1.x)).a), u_input.c, var_1.x < ~u_input.e.x), ~select(var_0.zyx, ~var_0.wwy, arg_0)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -164.0) + _wgslsmith_div_f32(-1027.0, 691.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-2189.0, -873.0)), 864.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1598.0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(136.0, -762.0) - 2291.0)), vec4<i32>(u_input.a.x, firstLeadingBit(u_input.d.x << (15060u % 32u)), -1, u_input.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, countOneBits(u_input.a), u_input.a), u_input.a), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(460.0 * 339.0))))));
                }
            }
            var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1548.0 - _wgslsmith_f_op_f32(-348.0 + -1329.0))), _wgslsmith_f_op_f32(-959.0), -857.0) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014.0, _wgslsmith_f_op_f32(step(-307.0, 1274.0)), _wgslsmith_f_op_f32(step(519.0, 1917.0))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-766.0, 516.0, -388.0)), vec3<f32>(712.0, -303.0, -103.0))) + func_7(Struct_4(vec4<i32>(-2147483648, 45853, 9489, u_input.a.x), ~vec3<u32>(0u, var_1.x, u_input.e.x), func_4(), _wgslsmith_mod_u32(4294967295u, 8885u)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1005.0, -459.0)))).c.a.xwx));
        }
        default: {
        }
    }
    for (var var_1 = reverseBits(59304); ; var_1 += 1) {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        var_1 = 1;
        var_1 = ~_wgslsmith_dot_vec3_i32(u_input.a.wwy, vec3<i32>(u_input.c, -u_input.a.x, _wgslsmith_add_i32(u_input.d.x, u_input.d.x)) << (u_input.e % vec3<u32>(32u)));
    }
    return Struct_3(_wgslsmith_mod_vec4_u32(~vec4<u32>(~u_input.e.x, 45265u, var_0.x, var_0.x), _wgslsmith_mult_vec4_u32(var_0, var_0)), Struct_2(_wgslsmith_add_vec3_u32(~func_5(Struct_2(vec3<u32>(4294967295u, 0u, 27838u), Struct_1(vec4<f32>(2406.0, 1000.0, -886.0, 1000.0), vec4<i32>(-2147483648, u_input.a.x, 47188, 0), -37087, arg_0.x), arg_0.xx, Struct_1(vec4<f32>(-1490.0, -476.0, 1696.0, -1413.0), vec4<i32>(u_input.b.x, -10216, -33444, 2147483647), u_input.a.x, true), var_0.wwz), Struct_4(vec4<i32>(-1, u_input.b.x, 1, u_input.a.x), u_input.e, Struct_1(vec4<f32>(223.0, -283.0, 1000.0, 195.0), u_input.a, u_input.a.x, arg_0.x), 4294967295u)).b, vec3<u32>(29114u, 0u, _wgslsmith_mult_u32(u_input.e.x, var_0.x))), Struct_1(vec4<f32>(-1542.0, _wgslsmith_f_op_f32(f32(-1.0) * -565.0), _wgslsmith_f_op_f32(select(678.0, 141.0, arg_0.x)), _wgslsmith_f_op_f32(-542.0 - -347.0)), -(~u_input.a), u_input.d.x, true), arg_0.zz, Struct_1(vec4<f32>(_wgslsmith_div_f32(-215.0, 566.0), _wgslsmith_f_op_f32(-2005.0 - 1194.0), _wgslsmith_f_op_f32(f32(-1.0) * -1307.0), _wgslsmith_f_op_f32(-841.0 + 637.0)), func_4().b, reverseBits(-10491), false), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 42383u, 34921u), vec3<u32>(41262u, 0u, 1u)) | countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 14276u), vec3<u32>(0u, var_0.x, 1u)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1139.0, -1370.0, 1066.0, -1356.0)))) + func_7(Struct_4(vec4<i32>(u_input.b.x, -22589, 61276, u_input.c), u_input.e, Struct_1(vec4<f32>(502.0, -2135.0, -1568.0, -1296.0), vec4<i32>(75108, 0, 23271, -2147483648), 0, true), 17448u), _wgslsmith_f_op_f32(ceil(-639.0))).c.a), -func_7(Struct_4(u_input.a, vec3<u32>(1u, u_input.e.x, 1882u), Struct_1(vec4<f32>(-357.0, 487.0, 520.0, -2078.0), u_input.a, -54070, true), u_input.e.x), 487.0).c.b >> (~var_0 % vec4<u32>(32u)), u_input.a.x, arg_0.x), 634.0);
}

fn func_10(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = u_input.b.zx;
    loop {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        var_0 = -vec2<i32>(var_0.x, arg_1.c.c);
    }
    var var_1 = vec3<bool>(!(_wgslsmith_div_f32(-205.0, _wgslsmith_f_op_f32(arg_1.d + arg_1.b.b.a.x)) > _wgslsmith_f_op_f32(-arg_1.d)), !(!(_wgslsmith_f_op_f32(f32(-1.0) * -134.0) != _wgslsmith_f_op_f32(floor(618.0)))), !(var_0.x < -1));
    let var_2 = arg_1.c;
    var_0 = var_2.b.ww;
    return var_2;
}

fn func_11(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(vec4<bool>(func_4().d, ~min(92168u, 12879u) == u_input.e.x, !(!func_10(u_input.e.xy, Struct_3(vec4<u32>(1u, 0u, u_input.e.x, 21740u), Struct_2(vec3<u32>(41553u, u_input.e.x, u_input.e.x), arg_3, vec2<bool>(arg_3.d, true), arg_1, vec3<u32>(30622u, 4294967295u, 4294967295u)), arg_1, 1228.0), vec3<u32>(56341u, u_input.e.x, u_input.e.x), u_input.e.x).d), true), select(!vec4<bool>(!arg_1.d, false && false, true, !arg_3.d), select(!vec4<bool>(arg_3.d, arg_1.d, true, true), vec4<bool>(any(vec3<bool>(false, false, true)), any(vec2<bool>(arg_3.d, true)), !false, func_10(vec2<u32>(1u, 1u), Struct_3(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 36639u), Struct_2(u_input.e, Struct_1(vec4<f32>(arg_3.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<i32>(arg_2, -5454, arg_0, arg_0), 2147483647, arg_1.d), vec2<bool>(arg_1.d, false), arg_1, u_input.e), arg_3, -495.0), vec3<u32>(0u, u_input.e.x, u_input.e.x), u_input.e.x).d), !vec4<bool>(arg_3.d, arg_1.d, true, false)), select(vec4<bool>(arg_3.d && arg_3.d, arg_1.d, select(false, arg_3.d, false), func_7(Struct_4(vec4<i32>(26497, u_input.d.x, arg_2, u_input.a.x), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), arg_1, u_input.e.x), arg_3.a.x).c.d), !vec4<bool>(false, true, false, arg_1.d), vec4<bool>(true, !arg_3.d, 3851 <= arg_0, !arg_1.d))), !vec4<bool>(func_7(func_5(Struct_2(vec3<u32>(28547u, 1u, u_input.e.x), Struct_1(arg_1.a, arg_1.b, u_input.d.x, arg_3.d), vec2<bool>(true, true), arg_3, vec3<u32>(u_input.e.x, 33108u, 839u)), Struct_4(vec4<i32>(arg_2, -30534, arg_1.c, 1), u_input.e, Struct_1(vec4<f32>(arg_3.a.x, arg_1.a.x, -211.0, arg_3.a.x), u_input.a, arg_1.c, arg_3.d), 1u)), _wgslsmith_f_op_f32(-arg_3.a.x)).c.d, arg_3.d, true, any(vec2<bool>(arg_1.d, arg_1.d))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a)))), arg_3.a);
    var var_2 = arg_3;
    switch (-2147483648) {
        case -2147483648: {
            var var_3 = Struct_2((func_6(func_7(Struct_4(arg_3.b, u_input.e, Struct_1(vec4<f32>(var_1.x, arg_3.a.x, 484.0, 699.0), u_input.a, arg_0, false), u_input.e.x), arg_3.a.x), Struct_1(arg_3.a, var_2.b, arg_3.c, false), ~(-1)).wzz | abs(_wgslsmith_add_vec3_u32(u_input.e, u_input.e))) ^ ~u_input.e, func_10(~_wgslsmith_add_vec2_u32(~u_input.e.yx, u_input.e.yy & u_input.e.xz), Struct_3(countOneBits(vec4<u32>(4294967295u, 68811u, 6137u, u_input.e.x)), func_3(select(var_0.yxz, vec3<bool>(true, arg_3.d, false), var_0.wxx)).b, func_7(Struct_4(vec4<i32>(arg_1.c, arg_1.b.x, arg_3.c, 2147483647), u_input.e, arg_1, u_input.e.x), var_2.a.x).c, _wgslsmith_f_op_f32(var_1.x + var_1.x)), countOneBits(max(func_5(Struct_2(vec3<u32>(64417u, 4632u, u_input.e.x), Struct_1(var_1, vec4<i32>(-28190, -71002, arg_2, 21245), -16526, arg_1.d), var_0.zz, Struct_1(vec4<f32>(arg_1.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x), arg_3.b, 24518, true), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), Struct_4(u_input.a, u_input.e, arg_3, 0u)).b, u_input.e)), reverseBits(u_input.e.x)), select(!var_0.wy, var_0.zw, !arg_3.d), Struct_1(arg_3.a, arg_1.b, select(arg_0, ~func_5(Struct_2(u_input.e, arg_3, var_0.zz, arg_1, u_input.e), Struct_4(vec4<i32>(var_2.c, arg_2, arg_0, arg_1.b.x), vec3<u32>(4294967295u, 1u, 16590u), arg_1, u_input.e.x)).a.x, !any(var_0)), var_2.d), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 10765u, u_input.e.x), u_input.e >> (vec3<u32>(28727u, 1u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.e.x, 44873u, u_input.e.x)) >> (vec3<u32>(9188u | firstTrailingBit(686u), abs(firstLeadingBit(0u)), ~5929u) % vec3<u32>(32u)));
        }
        case -1: {
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
                var var_3 = func_3(select(!(!var_0.wwz), select(var_0.zyy, !select(vec3<bool>(var_2.d, arg_1.d, true), var_0.zzx, false), !vec3<bool>(var_0.x, false, false)), var_0.yxx)).b;
                var_2 = Struct_1(var_2.a, func_3(!select(var_0.xzx, vec3<bool>(var_3.b.d, false, true), arg_1.d)).b.b.b, -22706, false);
                var var_4 = !(!(!(34860u != 1u))) & func_5(func_3(select(!vec3<bool>(var_3.d.d, var_2.d, arg_3.d), !var_0.xxy, !false)).b, Struct_4(~func_4().b, select(u_input.e, u_input.e, var_0.zzx), func_3(var_0.wxz).b.b, 4294967295u)).c.d;
            }
            var_2 = arg_1;
            var var_3 = vec2<u32>(u_input.e.x, ~(~(~u_input.e.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.e.x, 35297u), vec4<u32>(1u, 4294967295u, u_input.e.x, u_input.e.x)))));
            let var_4 = func_7(func_5(Struct_2(~(~vec3<u32>(25680u, var_3.x, var_3.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_3.a), u_input.a, arg_2, var_0.x || var_2.d), func_3(select(var_0.yww, var_0.wwx, var_0.x)).b.c, arg_1, vec3<u32>(u_input.e.x, u_input.e.x, _wgslsmith_add_u32(u_input.e.x, var_3.x))), Struct_4(arg_3.b, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.e.x, 21594u), u_input.e) >> ((vec3<u32>(71567u, 0u, u_input.e.x) | u_input.e) % vec3<u32>(32u)), arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(5168u, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(0u, u_input.e.x, var_3.x, var_3.x)))), _wgslsmith_f_op_f32(419.0 + -1000.0));
        }
        case 47966: {
            var var_3 = var_0;
            let var_4 = func_3(var_3.wyw).b.d;
        }
        case 31232: {
            switch (-47611) {
                default: {
                    var_2 = arg_1;
                    var_2 = arg_1;
                }
            }
            var_2 = func_7(func_5(Struct_2(~(vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x) >> (u_input.e % vec3<u32>(32u))), arg_1, var_0.zz, func_5(Struct_2(u_input.e, Struct_1(arg_1.a, var_2.b, u_input.a.x, true), var_0.wx, Struct_1(vec4<f32>(var_2.a.x, 414.0, arg_1.a.x, arg_1.a.x), u_input.a, arg_0, var_0.x), u_input.e), Struct_4(vec4<i32>(arg_0, 0, arg_1.c, 1031), u_input.e, Struct_1(vec4<f32>(1059.0, -1000.0, -674.0, -878.0), vec4<i32>(arg_2, arg_2, 1, 0), -36640, arg_3.d), u_input.e.x)).c, u_input.e), Struct_4(select(~u_input.a, var_2.b, !arg_1.d), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(19852u, 289u, u_input.e.x)), vec3<u32>(u_input.e.x, u_input.e.x, 42643u)), arg_3, 10339u)), _wgslsmith_f_op_f32(-arg_3.a.x)).c;
        }
        default: {
            var var_3 = ~(~4294967295u);
            switch (var_2.c) {
                case -1: {
                    var var_4 = Struct_3(~(~min(reverseBits(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)), ~vec4<u32>(u_input.e.x, 62083u, 44648u, 11452u))), Struct_2(~func_6(func_7(Struct_4(u_input.a, u_input.e, arg_1, u_input.e.x), arg_1.a.x), arg_3, -53914 >> (u_input.e.x % 32u)).zwz, Struct_1(_wgslsmith_f_op_vec4_f32(step(var_1, vec4<f32>(arg_3.a.x, arg_1.a.x, 1000.0, var_2.a.x))), arg_3.b, u_input.c, func_3(select(vec3<bool>(var_2.d, arg_1.d, true), vec3<bool>(arg_1.d, false, true), true)).c.d), vec2<bool>(var_2.d, func_5(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, 37207u), arg_1, vec2<bool>(var_2.d, true), arg_1, u_input.e), Struct_4(arg_3.b, vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), arg_3, 28843u)).c.d), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(332.0, var_2.a.x, -1960.0, var_1.x)))), firstTrailingBit(~u_input.a), (0 >> (1u % 32u)) ^ _wgslsmith_mod_i32(2147483647, arg_2), false), vec3<u32>(96462u, 16649u, u_input.e.x)), func_10(func_7(func_5(func_3(vec3<bool>(arg_3.d, var_2.d, false)).b, Struct_4(arg_1.b, u_input.e, arg_3, u_input.e.x)), 2061.0).b.yx, func_3(!var_0.xww), abs(u_input.e), u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-592.0)) - -1306.0));
                    let var_5 = !(!var_0.wwx);
                    var var_6 = 24247;
                }
                case -24428: {
                    var_3 = 1u;
                    var_2 = func_4();
                    var var_4 = var_0.x;
                    var_3 = u_input.e.x;
                }
                case -3620: {
                    var_3 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 25693u, _wgslsmith_dot_vec2_u32(u_input.e.zx, u_input.e.zx)), vec3<u32>(_wgslsmith_sub_u32(u_input.e.x, 72937u << (4294967295u % 32u)), _wgslsmith_dot_vec3_u32(~u_input.e, ~vec3<u32>(u_input.e.x, 4565u, 1u)), _wgslsmith_add_u32(~1u, ~1u)));
                    let var_4 = func_10(vec2<u32>(_wgslsmith_dot_vec3_u32(~(u_input.e | u_input.e), _wgslsmith_sub_vec3_u32(u_input.e << (vec3<u32>(62702u, 29847u, 34441u) % vec3<u32>(32u)), u_input.e)), u_input.e.x), Struct_3(func_3(!var_0.yxw).a, Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.e.x, u_input.e.x), vec3<u32>(u_input.e.x, u_input.e.x, 44024u)), arg_3, var_0.zw, arg_3, min(select(vec3<u32>(32138u, 1u, 0u), vec3<u32>(107449u, u_input.e.x, u_input.e.x), false), ~u_input.e)), func_3(select(vec3<bool>(arg_1.d, true, false), select(vec3<bool>(false, arg_3.d, var_2.d), vec3<bool>(var_2.d, false, false), vec3<bool>(true, true, true)), any(var_0.wx))).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -636.0), -1000.0)), u_input.e, 30558u).a;
                    var_3 = ~0u ^ 21129u;
                }
                default: {
                }
            }
            let var_4 = min(var_2.c, _wgslsmith_add_i32(0, ~(-arg_3.c) & 1));
        }
    }
    var var_3 = func_7(Struct_4(-firstLeadingBit(~u_input.a), u_input.e, arg_1, ~39165u), func_4().a.x);
    return var_3.c;
}

fn func_2(arg_0: f32) -> bool {
    if (!any(!(!vec3<bool>(false, true, false)))) {
        var var_0 = ~vec4<u32>(u_input.e.x, ~4294967295u, ~u_input.e.x, countOneBits(_wgslsmith_mod_u32(4294967295u, u_input.e.x) << (4294967295u % 32u)));
        var var_1 = Struct_2(vec3<u32>(~(5074u >> (var_0.x % 32u)), _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.e.x, u_input.e.x), 4294967295u), ~(~(~4294967295u))), func_11(1, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 354.0, arg_0) + vec4<f32>(arg_0, 498.0, -2502.0, -204.0)) + vec4<f32>(arg_0, arg_0, -1323.0, -145.0)), -_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.d.x, u_input.a.x, u_input.c, -2147483648)), u_input.a.x, u_input.c != -2891), countOneBits(-2147483648), func_10(~select(u_input.e.yx, var_0.xy, vec2<bool>(false, false)), func_3(vec3<bool>(true, false, false)), u_input.e, _wgslsmith_add_u32(var_0.x, u_input.e.x))), vec2<bool>(false, (_wgslsmith_clamp_u32(1u, var_0.x, var_0.x) < var_0.x) && !any(vec3<bool>(true, true, true))), func_11(abs(u_input.c), Struct_1(vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 - -1140.0), 568.0, _wgslsmith_f_op_f32(-arg_0)), vec4<i32>(u_input.c, -1 & u_input.d.x, 2147483647 & -2147483648, 68492), -2147483648, true), ~0, func_4()), func_7(Struct_4(vec4<i32>(-27843, -2147483648, 0, 2147483647), abs(u_input.e), func_10(vec2<u32>(u_input.e.x, var_0.x), Struct_3(vec4<u32>(111588u, 0u, 5632u, 29387u), Struct_2(var_0.zyx, Struct_1(vec4<f32>(1158.0, -192.0, arg_0, -731.0), vec4<i32>(u_input.a.x, u_input.d.x, 0, 2147483647), 1, true), vec2<bool>(false, true), Struct_1(vec4<f32>(arg_0, arg_0, arg_0, 462.0), u_input.a, u_input.b.x, false), var_0.xyz), Struct_1(vec4<f32>(arg_0, -960.0, arg_0, arg_0), u_input.a, u_input.d.x, false), 1146.0), vec3<u32>(u_input.e.x, u_input.e.x, 0u), 242u), 40370u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))).b >> ((func_7(Struct_4(u_input.a, vec3<u32>(var_0.x, u_input.e.x, 0u), Struct_1(vec4<f32>(-1276.0, 1734.0, arg_0, arg_0), u_input.a, u_input.d.x, true), 0u), 163.0).b ^ var_0.wyw) % vec3<u32>(32u)));
        var_0 = min(vec4<u32>(4294967295u, select(24224u, firstTrailingBit(u_input.e.x >> (u_input.e.x % 32u)), select(!true, -40039 == u_input.b.x, var_1.c.x)), 4294967295u, 1u), vec4<u32>(abs(4294967295u), 61875u, func_3(vec3<bool>(var_1.d.d & var_1.c.x, true, all(vec2<bool>(true, false)))).b.e.x, abs(19857u << (1u % 32u))));
    }
    let var_0 = u_input.c;
    if (true) {
        loop {
            if (LOOP_COUNTERS[28u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            return u_input.e.x >= ~firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(43773u, 61510u, 1u, 26089u), vec4<u32>(56979u, 75194u, 71391u, u_input.e.x)), abs(u_input.e.x)));
        }
        loop {
            if (LOOP_COUNTERS[29u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            break;
        }
        switch (i32(-1) * -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(select(u_input.b, u_input.b, false), vec3<i32>(-2147483648, u_input.d.x, u_input.a.x)), 1701)) {
            case 12959: {
            }
            default: {
                let var_1 = var_0;
                let var_2 = u_input.a.zzy;
                let var_3 = func_4().b.xz;
                var var_4 = select(select(!vec4<bool>(!true, true, true, true), !(!vec4<bool>(false, true, false, true)), vec4<bool>(func_4().d, !(var_2.x >= -20370), false, any(vec2<bool>(true, true)))), vec4<bool>(true, func_10(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 57248u), max(u_input.e.yx, vec2<u32>(2183u, u_input.e.x))), func_3(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), ~(vec3<u32>(4294967295u, u_input.e.x, 0u) | u_input.e), 1u).d, false, u_input.e.x < u_input.e.x), vec4<bool>(func_7(Struct_4(u_input.a, u_input.e | u_input.e, Struct_1(vec4<f32>(arg_0, -678.0, 1000.0, 253.0), vec4<i32>(1, 25069, var_0, -32564), 2147483647, true), 34424u), 330.0).c.d, true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)) & (_wgslsmith_f_op_f32(-arg_0) < arg_0), false));
                var var_5 = vec2<i32>(0, var_1) | (~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, var_0), u_input.b.yz) ^ vec2<i32>(54339, var_1));
            }
        }
        let var_1 = func_5(func_3(vec3<bool>(!func_4().d, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), !false && !true)).b, func_7(Struct_4(u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 15256u, 36676u), u_input.e), func_5(func_3(vec3<bool>(false, true, false)).b, func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(arg_0, 1000.0, -328.0, arg_0), vec4<i32>(0, 496, var_0, 701), -4727, false), u_input.e.x), -1195.0)).c, 141030u), _wgslsmith_f_op_f32(sign(arg_0)))).c.d;
    }
    for (var var_1 = 2147483647; !(u_input.e.x > u_input.e.x); ) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
    }
    let var_1 = func_5(func_3(vec3<bool>(func_4().d, !(!false), func_5(Struct_2(vec3<u32>(u_input.e.x, 9050u, u_input.e.x), Struct_1(vec4<f32>(843.0, -1323.0, 894.0, arg_0), u_input.a, 0, true), vec2<bool>(true, true), Struct_1(vec4<f32>(420.0, arg_0, 1661.0, -139.0), vec4<i32>(var_0, var_0, -1, u_input.c), var_0, true), u_input.e), Struct_4(u_input.a, vec3<u32>(u_input.e.x, u_input.e.x, 79071u), Struct_1(vec4<f32>(arg_0, 2119.0, arg_0, -901.0), u_input.a, 2147483647, false), 4294967295u)).c.a.x <= _wgslsmith_f_op_f32(abs(arg_0)))).b, Struct_4(vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(var_0), -var_0), -37243, -21177, abs(func_4().b.x)), min(_wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(4294967295u, 0u, u_input.e.x)) & vec3<u32>(0u, u_input.e.x, u_input.e.x), firstTrailingBit(countOneBits(u_input.e))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(162.0, arg_0, 803.0, -944.0), vec4<f32>(-218.0, 947.0, 875.0, -576.0), false)))), ~(~vec4<i32>(-2147483648, 1, u_input.c, var_0)), var_0, !(false | true)), u_input.e.x)).b.zz;
    return !all(select(vec4<bool>(true, !false, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), !any(vec4<bool>(false, true, true, false))));
}

fn func_1() -> bool {
    for (var var_0 = 5124; ; ) {
        if (LOOP_COUNTERS[31u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
        for (var var_1: i32; !((any(!vec4<bool>(false, false, false, false)) & select(any(vec4<bool>(true, true, true, false)), u_input.e.x <= u_input.e.x, false)) && func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-347.0))))); var_1 = u_input.a.x) {
            if (LOOP_COUNTERS[32u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
            continue;
        }
    }
    for (var var_0: i32; var_0 <= -86512; var_0 += 1) {
        if (LOOP_COUNTERS[33u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
        switch (_wgslsmith_mod_i32(u_input.b.x, -2147483648)) {
            case 0: {
                var_0 = u_input.a.x;
                var var_1 = Struct_4(u_input.a, ~u_input.e, func_10(u_input.e.zy, func_3(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), !vec3<bool>(false, false, true), select(true, true, false))), vec3<u32>(_wgslsmith_mod_u32(8431u, u_input.e.x), 5256u, u_input.e.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.e.x, 4294967295u)) >> (25232u % 32u)), ~(~abs(~4294967295u)));
                var var_2 = Struct_3(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.e.x, 4294967295u) >> (vec4<u32>(var_1.d, 0u, u_input.e.x, 27146u) % vec4<u32>(32u)), ~vec4<u32>(17784u, 0u, 4294967295u, u_input.e.x))), Struct_2(func_7(func_5(Struct_2(u_input.e, Struct_1(vec4<f32>(var_1.c.a.x, -690.0, var_1.c.a.x, var_1.c.a.x), u_input.a, 1, var_1.c.d), vec2<bool>(true, var_1.c.d), Struct_1(var_1.c.a, var_1.a, -2147483648, var_1.c.d), var_1.b), func_5(Struct_2(var_1.b, Struct_1(var_1.c.a, vec4<i32>(var_1.c.c, -2147483648, 0, u_input.b.x), -32482, false), vec2<bool>(false, var_1.c.d), Struct_1(vec4<f32>(-473.0, 536.0, var_1.c.a.x, var_1.c.a.x), u_input.a, -1, false), vec3<u32>(var_1.d, 0u, 29609u)), Struct_4(vec4<i32>(var_1.c.b.x, u_input.c, -2147483648, u_input.a.x), vec3<u32>(27594u, 4294967295u, var_1.b.x), Struct_1(var_1.c.a, vec4<i32>(u_input.c, 12346, var_1.a.x, var_1.c.c), -32144, true), u_input.e.x))), _wgslsmith_f_op_f32(func_7(Struct_4(vec4<i32>(-16967, var_1.c.b.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.e.x, 1u), var_1.c, 0u), var_1.c.a.x).c.a.x * var_1.c.a.x)).b, func_11(~u_input.a.x, func_7(func_7(Struct_4(vec4<i32>(var_1.a.x, u_input.b.x, -10310, var_1.c.c), vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), Struct_1(vec4<f32>(var_1.c.a.x, var_1.c.a.x, 227.0, var_1.c.a.x), vec4<i32>(1424, var_1.c.c, var_1.c.c, u_input.b.x), 34806, var_1.c.d), 0u), var_1.c.a.x), 1432.0).c, -1, var_1.c), func_3(!vec3<bool>(var_1.c.d, var_1.c.d, var_1.c.d)).b.c, func_10(min(vec2<u32>(var_1.b.x, u_input.e.x), var_1.b.xy | var_1.b.zx), func_3(select(vec3<bool>(false, var_1.c.d, var_1.c.d), vec3<bool>(false, false, var_1.c.d), false)), u_input.e, _wgslsmith_mult_u32(4294967295u << (var_1.b.x % 32u), func_6(Struct_4(vec4<i32>(var_1.a.x, -1985, 2147483647, 2900), var_1.b, var_1.c, 1u), var_1.c, u_input.c).x)), vec3<u32>(~3165u, func_7(func_5(Struct_2(vec3<u32>(0u, 76761u, u_input.e.x), var_1.c, vec2<bool>(var_1.c.d, true), var_1.c, var_1.b), Struct_4(var_1.a, vec3<u32>(1u, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(var_1.c.a.x, -506.0, var_1.c.a.x, var_1.c.a.x), u_input.a, -23530, false), 4294967295u)), _wgslsmith_f_op_f32(-816.0)).d, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 31923u, 83450u), ~vec3<u32>(u_input.e.x, 1u, 0u)))), var_1.c, _wgslsmith_f_op_f32(ceil(var_1.c.a.x)));
                var var_3 = vec4<i32>(var_1.c.b.x, i32(-1) * -(~var_2.b.d.c), _wgslsmith_add_i32(33053, -var_1.c.c), ~(~var_1.a.x)) ^ func_5(func_3(!vec3<bool>(var_2.c.d, var_1.c.d, true)).b, Struct_4(_wgslsmith_sub_vec4_i32(u_input.a, countOneBits(vec4<i32>(u_input.c, -2147483648, 2147483647, -2147483648))), ~reverseBits(vec3<u32>(4294967295u, 12584u, var_1.b.x)), var_1.c, 1u)).c.b;
                var_2 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_2.a.x, u_input.e.x), vec2<u32>(var_1.d, 4294967295u)), var_1.b.zy) | (0u >> (countOneBits(0u) % 32u)), min(~4294967295u, ~_wgslsmith_sub_u32(28045u, var_2.b.a.x)), func_7(func_7(func_5(var_2.b, Struct_4(vec4<i32>(-29013, u_input.a.x, var_2.c.c, 1), u_input.e, Struct_1(vec4<f32>(var_2.c.a.x, var_1.c.a.x, var_2.b.d.a.x, 816.0), vec4<i32>(var_1.a.x, var_1.a.x, var_3.x, u_input.d.x), var_3.x, var_2.b.c.x), 59402u)), _wgslsmith_f_op_f32(round(-579.0))), -255.0).d, ~(~abs(0u))), func_3(vec3<bool>(func_10(max(var_1.b.zx, vec2<u32>(28769u, 0u)), func_3(vec3<bool>(true, true, var_1.c.d)), vec3<u32>(1u, 11128u, 46521u), var_1.b.x).d, var_2.d >= _wgslsmith_f_op_f32(-var_2.c.a.x), var_2.b.d.d)).b, func_7(Struct_4(u_input.a, ~_wgslsmith_mult_vec3_u32(vec3<u32>(27165u, 4294967295u, 27579u), var_2.a.ywz), func_7(func_5(Struct_2(var_2.b.e, Struct_1(var_2.b.b.a, vec4<i32>(var_3.x, 48104, var_2.c.b.x, var_2.c.b.x), var_3.x, false), var_2.b.c, Struct_1(vec4<f32>(-373.0, var_2.c.a.x, var_1.c.a.x, var_2.d), u_input.a, var_2.c.c, var_2.b.d.d), vec3<u32>(var_1.b.x, var_2.b.e.x, 68213u)), Struct_4(var_2.b.b.b, vec3<u32>(23137u, u_input.e.x, 65946u), Struct_1(var_2.b.d.a, vec4<i32>(var_3.x, -76505, var_2.c.b.x, -1), var_1.c.b.x, var_1.c.d), var_1.b.x)), _wgslsmith_f_op_f32(select(-867.0, var_1.c.a.x, var_1.c.d))).c, var_1.b.x), _wgslsmith_f_op_f32(-881.0 * var_1.c.a.x)).c, 151.0);
            }
            case -18169: {
                let var_1 = ~u_input.e;
                break;
            }
            default: {
                continue;
            }
        }
    }
    var var_0 = func_3(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), false || true)));
    loop {
        if (LOOP_COUNTERS[34u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[34u] = LOOP_COUNTERS[34u] + 1u;
        var_0 = Struct_3(var_0.a, var_0.b, var_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.d)) * 407.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-147.0))))));
        switch (firstTrailingBit(_wgslsmith_mod_i32(-(~(-1)), var_0.c.c))) {
            case -6487: {
                let var_1 = -849.0;
                break;
            }
            case -2147483648: {
            }
            default: {
                var var_1 = -2410;
            }
        }
        var_0 = Struct_3(firstTrailingBit(vec4<u32>(var_0.a.x, 42909u, 1u, ~3799u & ~u_input.e.x)), var_0.b, func_3(!vec3<bool>(true | false, var_0.c.d, true)).c, func_5(func_3(!select(vec3<bool>(false, true, var_0.c.d), vec3<bool>(false, var_0.c.d, true), vec3<bool>(true, var_0.c.d, false))).b, func_5(var_0.b, func_5(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, var_0.b.a.x), var_0.c, var_0.b.c, Struct_1(var_0.b.d.a, vec4<i32>(u_input.c, var_0.b.d.b.x, u_input.a.x, -2147483648), 24109, var_0.c.d), var_0.b.a), func_5(var_0.b, Struct_4(var_0.c.b, vec3<u32>(58784u, var_0.b.e.x, u_input.e.x), var_0.c, 28878u))))).c.a.x);
    }
    switch (_wgslsmith_add_i32(-(~1), ~u_input.c)) {
        case 59743: {
            if (!(~func_10(vec2<u32>(4294967295u, var_0.b.a.x), func_3(vec3<bool>(false, false, false)), vec3<u32>(0u, 21773u, var_0.a.x), 0u).c != u_input.c)) {
                return any(vec2<bool>(false, all(!select(vec3<bool>(var_0.c.d, false, false), vec3<bool>(true, var_0.b.b.d, true), vec3<bool>(var_0.c.d, false, var_0.b.b.d)))));
            }
        }
        case 1: {
            for (var var_1 = -1; var_1 < 44818; var_1 -= 1) {
                if (LOOP_COUNTERS[35u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[35u] = LOOP_COUNTERS[35u] + 1u;
                var var_2 = u_input.a.wx;
            }
            switch (_wgslsmith_dot_vec2_i32(select(-vec2<i32>(var_0.c.b.x, u_input.a.x), vec2<i32>(_wgslsmith_sub_i32(u_input.c, var_0.c.c), var_0.c.b.x), !vec2<bool>(true, true)) >> (vec2<u32>(~0u, func_3(vec3<bool>(false, var_0.b.d.d, true)).b.a.x) % vec2<u32>(32u)), -(~(var_0.b.d.b.yz >> (u_input.e.xx % vec2<u32>(32u))) >> (var_0.b.a.yy % vec2<u32>(32u))))) {
                default: {
                    let var_1 = ~u_input.d;
                    var var_2 = var_0.c.a;
                    var_2 = func_3(select(!(!vec3<bool>(var_0.c.d, var_0.c.d, var_0.c.d)), select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(var_0.c.d, var_0.b.d.d, true), var_0.b.b.d), !true), select(select(vec3<bool>(var_0.b.d.d, true, var_0.b.b.d), vec3<bool>(var_0.b.c.x, var_0.b.c.x, false), false), select(vec3<bool>(true, var_0.c.d, var_0.b.d.d), vec3<bool>(false, true, false), false), !vec3<bool>(true, var_0.c.d, var_0.c.d)), all(!vec4<bool>(true, var_0.c.d, var_0.c.d, var_0.b.c.x))), all(!var_0.b.c))).b.b.a;
                    var_0 = func_3(vec3<bool>(!true, var_0.b.c.x, true));
                    var_0 = Struct_3(var_0.a, Struct_2(var_0.b.e >> (~reverseBits(vec3<u32>(11686u, u_input.e.x, 1u)) % vec3<u32>(32u)), func_5(func_3(!vec3<bool>(var_0.b.c.x, true, var_0.b.d.d)).b, func_7(Struct_4(var_0.b.d.b, u_input.e, Struct_1(vec4<f32>(-188.0, var_2.x, 1066.0, -1337.0), u_input.a, 0, true), 13318u), var_0.c.a.x)).c, !vec2<bool>(any(vec2<bool>(var_0.b.c.x, true)), false), func_4(), firstTrailingBit(u_input.e)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(277.0, _wgslsmith_div_f32(var_0.c.a.x, var_0.c.a.x)), _wgslsmith_f_op_f32(round(var_0.b.d.a.x))), var_0.c.b, var_1.x, true), 606.0);
                }
            }
        }
        case 3397: {
            for (var var_1 = 22064; ; var_1 += 1) {
                if (LOOP_COUNTERS[36u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[36u] = LOOP_COUNTERS[36u] + 1u;
                var var_2 = 0;
                let var_3 = var_0.b.d.a.x;
                break;
            }
            switch (u_input.c) {
                case 7067: {
                    let var_1 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-921.0))))) != _wgslsmith_f_op_f32(-func_5(var_0.b, Struct_4(var_0.c.b, u_input.e, var_0.c, var_0.a.x)).c.a.x));
                }
                default: {
                    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.c.a.x + 434.0), -735.0, -1427.0, var_0.b.b.a.x);
                }
            }
            if (var_0.c.d) {
            }
            switch (_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-func_8(Struct_4(vec4<i32>(1103, var_0.c.c, var_0.c.b.x, 0), vec3<u32>(var_0.a.x, var_0.b.a.x, 0u), Struct_1(vec4<f32>(var_0.c.a.x, var_0.c.a.x, -874.0, var_0.d), var_0.b.b.b, var_0.b.d.b.x, var_0.b.d.d), 22556u), Struct_3(var_0.a, var_0.b, var_0.c, var_0.b.b.a.x), Struct_3(var_0.a, var_0.b, var_0.b.b, -369.0)), _wgslsmith_mult_i32(-27199, var_0.b.b.b.x << (1u % 32u))), 0, 0) | _wgslsmith_div_i32(func_10(~u_input.e.yz, func_3(vec3<bool>(var_0.c.d, var_0.b.b.d, true)), vec3<u32>(1u, ~41704u, 12291u), ~firstLeadingBit(var_0.b.a.x)).b.x, var_0.b.d.c)) {
                case 1: {
                    let var_1 = vec3<bool>(!(func_7(func_7(Struct_4(u_input.a, vec3<u32>(4294967295u, 50335u, 4294967295u), Struct_1(vec4<f32>(var_0.d, -174.0, var_0.d, var_0.d), u_input.a, 1, false), var_0.a.x), -710.0), var_0.d).c.d & var_0.c.d), var_0.b.d.d, var_0.b.b.d || var_0.b.d.d);
                    let var_2 = 3691 << (_wgslsmith_sub_u32(func_5(var_0.b, func_5(func_3(vec3<bool>(false, false, var_1.x)).b, func_5(Struct_2(vec3<u32>(var_0.b.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(261.0, var_0.d, var_0.c.a.x, 1243.0), vec4<i32>(12626, var_0.b.d.b.x, var_0.c.c, var_0.b.d.b.x), u_input.b.x, var_1.x), vec2<bool>(true, var_0.b.d.d), Struct_1(var_0.c.a, u_input.a, var_0.b.d.b.x, true), u_input.e), Struct_4(vec4<i32>(-49586, 73275, var_0.b.d.b.x, var_0.c.b.x), vec3<u32>(u_input.e.x, 34770u, 63227u), Struct_1(vec4<f32>(184.0, var_0.c.a.x, var_0.c.a.x, var_0.d), u_input.a, var_0.b.b.c, var_0.b.d.d), 4294967295u)))).b.x, func_7(Struct_4(vec4<i32>(u_input.b.x, var_0.b.d.b.x, 2147483647, -2147483648), vec3<u32>(u_input.e.x, 1u, 105973u), var_0.b.b, min(4294967295u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.b.a.x)))).d) % 32u);
                    var_0 = Struct_3(firstLeadingBit(vec4<u32>(39039u, 1u, select(0u, ~u_input.e.x, true != var_0.c.d), ~4294967295u)), var_0.b, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.d.a.x), _wgslsmith_f_op_f32(var_0.d - 772.0), -2048.0, _wgslsmith_f_op_f32(-var_0.c.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2379.0, 538.0, var_0.c.a.x, var_0.c.a.x)), _wgslsmith_f_op_vec4_f32(select(var_0.c.a, vec4<f32>(var_0.d, var_0.d, var_0.d, 568.0), var_1.x))))), _wgslsmith_add_vec4_i32(-countOneBits(vec4<i32>(-61077, var_0.c.c, 1, u_input.d.x)), vec4<i32>(var_2, ~52635, func_10(vec2<u32>(38562u, 1933u), Struct_3(var_0.a, Struct_2(var_0.b.e, var_0.c, var_0.b.c, var_0.c, u_input.e), Struct_1(vec4<f32>(2112.0, var_0.c.a.x, 1149.0, -554.0), u_input.a, var_0.c.c, true), 2726.0), var_0.a.wxy, var_0.b.a.x).c, ~var_2)), var_2, var_1.x), var_0.d);
                }
                case -16392: {
                    var var_1 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(func_11(-1, func_5(var_0.b, Struct_4(u_input.a, var_0.a.xww, var_0.b.b, 41370u)).c, var_0.c.b.x, var_0.b.b).b.xxy, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.b.x, u_input.c, -26817), vec3<i32>(28076, var_0.b.d.c, 2147483647))), firstTrailingBit(select(-var_0.b.d.b.wyy, var_0.c.b.wyx, select(vec3<bool>(true, false, var_0.b.b.d), vec3<bool>(var_0.b.c.x, true, false), true))));
                    let var_2 = func_3(!vec3<bool>(func_2(func_10(vec2<u32>(0u, 0u), Struct_3(var_0.a, Struct_2(vec3<u32>(var_0.b.a.x, u_input.e.x, 80923u), var_0.c, vec2<bool>(true, var_0.b.d.d), var_0.b.d, u_input.e), Struct_1(vec4<f32>(var_0.d, var_0.c.a.x, var_0.d, var_0.c.a.x), var_0.b.b.b, -20987, true), var_0.c.a.x), var_0.b.a, 1u).a.x), func_11(u_input.c, func_3(vec3<bool>(false, var_0.b.b.d, true)).b.d, u_input.d.x, Struct_1(var_0.c.a, u_input.a, -1, var_0.c.d)).d, !var_0.b.b.d));
                }
                default: {
                    var var_1 = vec2<bool>(!(!func_10(~u_input.e.yy, Struct_3(var_0.a, Struct_2(vec3<u32>(4294967295u, var_0.a.x, 22900u), Struct_1(vec4<f32>(var_0.d, var_0.c.a.x, -146.0, var_0.d), vec4<i32>(u_input.a.x, var_0.c.c, var_0.b.d.c, var_0.b.b.c), u_input.c, false), vec2<bool>(var_0.c.d, false), Struct_1(vec4<f32>(-476.0, -606.0, var_0.b.b.a.x, var_0.b.d.a.x), vec4<i32>(u_input.a.x, 30894, u_input.a.x, var_0.b.b.c), 0, var_0.b.c.x), vec3<u32>(u_input.e.x, 1u, 14213u)), Struct_1(vec4<f32>(var_0.c.a.x, -565.0, -968.0, var_0.d), vec4<i32>(var_0.c.c, u_input.d.x, var_0.b.d.c, u_input.c), var_0.c.b.x, var_0.b.d.d), 1314.0), ~vec3<u32>(0u, u_input.e.x, 45101u), ~23969u).d), var_0.c.d);
                    var var_2 = func_3(!select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, true, var_0.b.d.d), var_1.x), select(vec3<bool>(var_0.c.d, var_1.x, false), select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_0.b.b.d, true, true), var_1.x), !var_0.b.b.d), !select(vec3<bool>(true, var_0.c.d, true), vec3<bool>(var_1.x, var_0.b.d.d, false), vec3<bool>(false, false, true)))).b;
                    var_0 = Struct_3(vec4<u32>(~var_2.a.x, 33213u, _wgslsmith_mult_u32(53976u | var_0.b.e.x, ~var_0.a.x | u_input.e.x), 23876u), var_0.b, Struct_1(var_0.b.d.a, func_4().b, func_8(func_5(var_0.b, Struct_4(u_input.a, var_0.a.zzx, var_2.d, 30492u)), func_3(vec3<bool>(true, true, var_1.x)), func_3(vec3<bool>(true, var_2.b.d, true))), var_2.c.x), 105.0);
                    return !func_3(vec3<bool>(!var_2.c.x || (var_0.c.b.x < -1), false, false)).c.d;
                }
            }
            switch (u_input.c) {
                case -1: {
                }
                case 2147483647: {
                    let var_1 = Struct_3(select(var_0.a, var_0.a, var_0.c.d), func_3(!select(vec3<bool>(var_0.c.d, var_0.b.c.x, true), !vec3<bool>(false, var_0.b.b.d, false), var_0.c.d)).b, var_0.c, _wgslsmith_f_op_f32(func_9(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1077.0), var_0.d, _wgslsmith_f_op_f32(var_0.c.a.x + 1767.0), 320.0), ~(-u_input.a), -u_input.c >> (func_5(var_0.b, Struct_4(vec4<i32>(var_0.b.b.c, var_0.b.d.b.x, var_0.b.d.b.x, u_input.a.x), vec3<u32>(12606u, u_input.e.x, var_0.b.a.x), Struct_1(var_0.b.b.a, vec4<i32>(-9065, -2147483648, -16961, 0), var_0.b.b.c, var_0.c.d), 0u)).d % 32u), var_0.b.c.x), func_10(var_0.b.e.zy, func_3(vec3<bool>(var_0.c.d, var_0.b.b.d, var_0.b.b.d)), _wgslsmith_add_vec3_u32(var_0.a.zzy, var_0.b.e), func_3(!vec3<bool>(var_0.c.d, var_0.b.b.d, var_0.b.b.d)).a.x), Struct_3(~vec4<u32>(var_0.b.a.x, var_0.b.a.x, 49415u, 31737u), func_3(!vec3<bool>(false, false, var_0.c.d)).b, func_5(var_0.b, func_5(Struct_2(vec3<u32>(4294967295u, 62729u, 6105u), var_0.c, var_0.b.c, var_0.c, vec3<u32>(var_0.a.x, 30891u, 36328u)), Struct_4(vec4<i32>(u_input.a.x, u_input.a.x, -25172, -34391), vec3<u32>(var_0.a.x, 17425u, 16781u), Struct_1(vec4<f32>(var_0.d, var_0.b.b.a.x, var_0.b.b.a.x, -265.0), u_input.a, 1, true), 0u))).c, 1128.0), Struct_1(var_0.c.a, u_input.a, u_input.a.x, var_0.b.d.d))));
                    var_0 = var_1;
                    let var_2 = func_5(func_3(vec3<bool>(1u < 64211u, -1081.0 >= var_0.d, all(vec4<bool>(true, true, false, var_0.c.d)))).b, func_7(func_5(Struct_2(vec3<u32>(3725u, 0u, 35492u), var_1.c, var_0.b.c, Struct_1(vec4<f32>(var_1.d, var_1.b.d.a.x, -1034.0, var_0.c.a.x), var_1.b.d.b, u_input.a.x, var_0.c.d), var_0.a.zwx), Struct_4(u_input.a, vec3<u32>(u_input.e.x, 42276u, u_input.e.x), var_0.c, 78449u)), _wgslsmith_f_op_f32(-func_7(Struct_4(u_input.a, var_0.b.a, var_1.b.b, var_0.b.e.x), var_1.c.a.x).c.a.x))).c.d || !func_4().d;
                    var_0 = func_3(!vec3<bool>(func_11(-20861, func_5(Struct_2(var_1.b.a, Struct_1(var_0.c.a, u_input.a, var_1.c.c, true), var_0.b.c, var_1.b.b, vec3<u32>(0u, var_1.b.a.x, u_input.e.x)), Struct_4(vec4<i32>(var_1.b.b.c, u_input.d.x, -2147483648, -1), vec3<u32>(var_0.b.e.x, 4294967295u, var_0.a.x), Struct_1(var_1.b.d.a, var_1.c.b, var_1.b.d.c, var_0.c.d), 4294967295u)).c, _wgslsmith_add_i32(var_1.c.b.x, var_1.b.b.c), var_0.b.b).d, var_1.b.d.d, false));
                }
                case 1: {
                }
                case 0: {
                    var_0 = Struct_3(max(vec4<u32>(u_input.e.x, ~(~58185u), reverseBits(4294967295u), u_input.e.x), _wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(0u, u_input.e.x, reverseBits(u_input.e.x), ~23340u))), var_0.b, var_0.c, _wgslsmith_f_op_f32(-func_10(~u_input.e.xz, func_3(!vec3<bool>(false, var_0.b.d.d, var_0.b.c.x)), u_input.e, _wgslsmith_add_u32(46342u, reverseBits(0u))).a.x));
                    var_0 = func_3(!vec3<bool>(func_3(!vec3<bool>(true, false, var_0.c.d)).c.d, all(!vec3<bool>(var_0.b.d.d, var_0.b.c.x, var_0.b.d.d)), any(vec4<bool>(true, var_0.b.c.x, false, true))));
                    let var_1 = vec4<i32>(var_0.c.c, var_0.b.d.c, i32(-1) * -(~var_0.b.b.c), ~36235);
                    let var_2 = 1u | u_input.e.x;
                }
                default: {
                    var var_1 = _wgslsmith_add_vec4_i32(~firstLeadingBit(func_4().b), vec4<i32>(12694, ~2322 << (~u_input.e.x % 32u), -18192, _wgslsmith_mod_i32(max(u_input.b.x, 1), _wgslsmith_add_i32(-2147483648, var_0.c.b.x))) >> (_wgslsmith_div_vec4_u32(var_0.a, ~(var_0.a << (var_0.a % vec4<u32>(32u)))) % vec4<u32>(32u)));
                    var var_2 = all(!select(vec4<bool>(var_0.c.d, false, !false, !var_0.c.d), vec4<bool>(func_10(vec2<u32>(42830u, u_input.e.x), Struct_3(vec4<u32>(25796u, u_input.e.x, 21923u, 1u), Struct_2(vec3<u32>(1u, 34247u, var_0.a.x), Struct_1(var_0.c.a, var_0.b.b.b, -8806, false), vec2<bool>(var_0.b.c.x, false), var_0.c, vec3<u32>(var_0.b.e.x, u_input.e.x, 17996u)), var_0.b.d, var_0.d), vec3<u32>(var_0.b.a.x, var_0.b.a.x, 1u), u_input.e.x).d, var_0.c.d, var_0.c.d, !var_0.b.d.d), !var_0.c.d));
                    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.d.c, -select(func_11(2505, Struct_1(var_0.b.d.a, vec4<i32>(var_1.x, var_1.x, 10086, u_input.a.x), 42407, var_0.c.d), -2147483648, Struct_1(vec4<f32>(-430.0, var_0.c.a.x, -1081.0, 568.0), vec4<i32>(2316, 22297, u_input.d.x, var_0.b.d.c), -2147483648, true)).b.x, -1546, var_0.b.d.d), func_7(Struct_4(vec4<i32>(u_input.a.x, -1315, var_0.c.c, 0) >> (vec4<u32>(0u, var_0.b.a.x, 64176u, var_0.a.x) % vec4<u32>(32u)), u_input.e, var_0.c, var_0.b.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.b.b.a.x, -710.0)))).a.x, func_7(Struct_4(vec4<i32>(u_input.a.x, var_1.x, 1, var_1.x), var_0.a.zxw, var_0.b.b, ~u_input.e.x), -404.0).a.x), abs(~u_input.a));
                    let var_4 = _wgslsmith_clamp_u32(~u_input.e.x, func_5(func_3(vec3<bool>(false, var_0.b.b.d, !var_0.c.d)).b, func_7(Struct_4(vec4<i32>(19329, -71957, 1, 26684), var_0.a.xxz | vec3<u32>(u_input.e.x, 47340u, 56880u), func_5(Struct_2(vec3<u32>(78430u, u_input.e.x, var_0.a.x), var_0.c, var_0.b.c, Struct_1(vec4<f32>(-1498.0, var_0.b.b.a.x, -656.0, -1668.0), vec4<i32>(-24176, -58769, 37851, -2147483648), 66220, false), vec3<u32>(4294967295u, 60267u, 29288u)), Struct_4(var_3, u_input.e, Struct_1(var_0.b.d.a, vec4<i32>(-2147483648, var_0.b.d.b.x, -22501, 1), var_1.x, false), 4294967295u)).c, ~13761u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-var_0.c.a.x)))).b.x, 0u);
                    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.c.a.x)) * _wgslsmith_f_op_f32(trunc(-463.0)))));
                }
            }
        }
        default: {
        }
    }
    return func_5(var_0.b, Struct_4(var_0.c.b | (vec4<i32>(-32086, 1, 34398, var_0.b.d.c) >> (vec4<u32>(1u, 1u, var_0.b.a.x, var_0.a.x) % vec4<u32>(32u))), vec3<u32>(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), ~u_input.e.x, ~0u), func_7(Struct_4(var_0.b.d.b, vec3<u32>(u_input.e.x, 1u, 4294967295u), var_0.b.d, var_0.b.a.x), -1015.0).c, 30134u)).c.d || !var_0.b.d.d;
}

@compute
@workgroup_size(1)
fn main() {
    if (!true) {
        loop {
            if (LOOP_COUNTERS[37u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[37u] = LOOP_COUNTERS[37u] + 1u;
            var var_0 = select(!vec2<bool>(~u_input.d.x >= _wgslsmith_div_i32(u_input.a.x, 24945), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true))), vec2<bool>(!(!func_1()), 1 < u_input.c), !vec2<bool>(u_input.e.x > u_input.e.x, (-4786 >> (26224u % 32u)) < (i32(-1) * -2147483648)));
            var_0 = func_3(!(!(!select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x)))).b.c;
        }
        if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-122.0))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1632.0, 1021.0)) * _wgslsmith_f_op_f32(889.0 * -1452.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_9(Struct_1(vec4<f32>(-1207.0, 705.0, -1780.0, 1000.0), u_input.a, u_input.a.x, true), Struct_1(vec4<f32>(657.0, -620.0, -409.0, 347.0), vec4<i32>(u_input.b.x, 1, u_input.c, 2147483647), 22792, false), Struct_3(vec4<u32>(u_input.e.x, 1u, 4294967295u, 1u), Struct_2(vec3<u32>(u_input.e.x, 10857u, u_input.e.x), Struct_1(vec4<f32>(795.0, -595.0, 628.0, -879.0), vec4<i32>(-2147483648, 2147483647, 1, -103197), u_input.c, true), vec2<bool>(true, false), Struct_1(vec4<f32>(-840.0, -888.0, 1755.0, -1068.0), u_input.a, u_input.b.x, false), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), Struct_1(vec4<f32>(1328.0, -368.0, -623.0, 494.0), vec4<i32>(1, -5913, u_input.c, u_input.c), 0, false), -2262.0), Struct_1(vec4<f32>(753.0, -1247.0, 973.0, 1194.0), vec4<i32>(1, -37912, 1, u_input.d.x), -1333, true))) + 314.0)))) {
            var var_0 = func_3(vec3<bool>(false & (_wgslsmith_f_op_f32(-1183.0 + -575.0) > func_3(vec3<bool>(true, false, false)).c.a.x), false, func_4().d)).b.d;
            var_0 = func_3(!select(!(!vec3<bool>(false, true, false)), vec3<bool>(all(vec4<bool>(false, var_0.d, var_0.d, false)), var_0.d, true & false), !vec3<bool>(var_0.d, var_0.d, var_0.d))).c;
        }
        var var_0 = Struct_2(func_7(func_7(Struct_4(func_10(u_input.e.zz, Struct_3(vec4<u32>(u_input.e.x, 18651u, 1u, 37714u), Struct_2(vec3<u32>(u_input.e.x, 28376u, 0u), Struct_1(vec4<f32>(1365.0, 1674.0, -226.0, -364.0), vec4<i32>(-71449, u_input.b.x, -1, u_input.c), u_input.c, false), vec2<bool>(true, false), Struct_1(vec4<f32>(-2036.0, -1274.0, 435.0, 415.0), u_input.a, 22352, true), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x)), Struct_1(vec4<f32>(1881.0, 1511.0, 1306.0, 347.0), u_input.a, u_input.b.x, true), 737.0), u_input.e, u_input.e.x).b, u_input.e, func_5(Struct_2(vec3<u32>(u_input.e.x, 50468u, 0u), Struct_1(vec4<f32>(691.0, 894.0, -319.0, 233.0), vec4<i32>(u_input.c, u_input.c, 13336, -3977), -42383, false), vec2<bool>(true, false), Struct_1(vec4<f32>(-273.0, 118.0, -393.0, 1105.0), vec4<i32>(2147483647, -8883, 2147483647, u_input.c), 1, true), u_input.e), Struct_4(u_input.a, vec3<u32>(u_input.e.x, 31237u, 83168u), Struct_1(vec4<f32>(-578.0, -952.0, -374.0, -361.0), u_input.a, -38162, true), u_input.e.x)).c, ~24970u), _wgslsmith_div_f32(-1028.0, _wgslsmith_f_op_f32(459.0 * -1436.0))), _wgslsmith_f_op_f32(sign(192.0))).b, Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1353.0), -391.0), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, false)).d - _wgslsmith_f_op_f32(ceil(-833.0))), _wgslsmith_f_op_f32(-1963.0), _wgslsmith_f_op_f32(step(517.0, func_7(Struct_4(vec4<i32>(54821, 9860, 30382, 4200), vec3<u32>(4294967295u, u_input.e.x, 3873u), Struct_1(vec4<f32>(1200.0, -360.0, 339.0, -421.0), vec4<i32>(u_input.b.x, -11053, -10001, u_input.a.x), -8455, false), 71148u), -631.0).c.a.x))), vec4<i32>(func_3(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)).b.b.b.x, abs(_wgslsmith_add_i32(-35567, 15702)), -2147483648, _wgslsmith_div_i32(select(u_input.d.x, 0, false), func_8(Struct_4(vec4<i32>(2147483647, -43905, 2147483647, 18131), u_input.e, Struct_1(vec4<f32>(985.0, 1099.0, -1329.0, 1000.0), u_input.a, u_input.c, false), 1u), Struct_3(vec4<u32>(1u, u_input.e.x, u_input.e.x, 8750u), Struct_2(vec3<u32>(0u, 0u, u_input.e.x), Struct_1(vec4<f32>(625.0, -355.0, 779.0, -522.0), vec4<i32>(-2147483648, u_input.a.x, 60460, 0), 2147483647, false), vec2<bool>(false, true), Struct_1(vec4<f32>(637.0, 1025.0, 1000.0, 450.0), u_input.a, u_input.d.x, false), vec3<u32>(4294967295u, u_input.e.x, 0u)), Struct_1(vec4<f32>(-1007.0, 293.0, 1572.0, 298.0), vec4<i32>(u_input.b.x, -1537, u_input.b.x, 65101), 0, true), -339.0), Struct_3(vec4<u32>(32793u, 1u, u_input.e.x, 0u), Struct_2(u_input.e, Struct_1(vec4<f32>(-1000.0, -197.0, -1000.0, 1869.0), vec4<i32>(11530, u_input.d.x, u_input.b.x, -33423), u_input.d.x, false), vec2<bool>(false, true), Struct_1(vec4<f32>(914.0, 331.0, -643.0, 181.0), vec4<i32>(u_input.d.x, u_input.b.x, 0, u_input.b.x), u_input.b.x, true), u_input.e), Struct_1(vec4<f32>(1000.0, 817.0, 1178.0, -310.0), vec4<i32>(12242, -1, u_input.b.x, u_input.b.x), u_input.a.x, false), -1245.0)))), _wgslsmith_mult_i32(1, -(u_input.a.x | 13722)), func_10(~vec2<u32>(u_input.e.x, u_input.e.x), Struct_3(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 65009u), func_3(vec3<bool>(true, true, true)).b, func_3(vec3<bool>(false, true, true)).b.d, _wgslsmith_f_op_f32(-156.0)), ~(~u_input.e), ~1u).d), select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(select(vec2<bool>(true, true), !vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), !(!vec2<bool>(false, true))), select(vec2<bool>(!false, -2147483648 == 16302), !vec2<bool>(false, true), !(!vec2<bool>(true, true)))), func_3(vec3<bool>(!(true || true), func_3(!vec3<bool>(false, false, false)).c.d, false)).b.b, u_input.e);
    }
    var var_0 = -688.0;
    loop {
        if (LOOP_COUNTERS[38u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[38u] = LOOP_COUNTERS[38u] + 1u;
        var var_1 = -338.0;
        switch (-(~_wgslsmith_mult_i32(~_wgslsmith_div_i32(u_input.d.x, -30191), u_input.a.x << (u_input.e.x % 32u)))) {
            default: {
                var var_2 = func_3(!vec3<bool>(!(u_input.e.x < 53339u), true, func_11(u_input.c | 1, func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-1688.0, -508.0, -275.0, -969.0), u_input.a, 4588, true), 0u), 1379.0).c, 9942, func_4()).d)).b;
                continue;
            }
        }
    }
    switch (2147483647) {
        default: {
            var var_1 = false && func_11(u_input.a.x, func_5(Struct_2(vec3<u32>(4294967295u, 41017u, u_input.e.x), Struct_1(vec4<f32>(-230.0, 918.0, -2232.0, 817.0), u_input.a, u_input.d.x, false), vec2<bool>(false, true), Struct_1(vec4<f32>(-149.0, -2910.0, 162.0, -395.0), u_input.a, 3081, false), ~u_input.e), Struct_4(-vec4<i32>(7332, u_input.c, u_input.b.x, 7360), ~u_input.e, func_11(-12412, Struct_1(vec4<f32>(-1075.0, 523.0, -1497.0, -723.0), u_input.a, -7492, true), u_input.d.x, Struct_1(vec4<f32>(1324.0, 1826.0, -780.0, -1127.0), u_input.a, u_input.b.x, true)), ~33937u)).c, _wgslsmith_mult_i32(firstLeadingBit(37623), _wgslsmith_dot_vec3_i32(min(u_input.a.xwx, vec3<i32>(1, u_input.d.x, 24985)), vec3<i32>(u_input.d.x, u_input.c, u_input.d.x))), func_11(-1, Struct_1(vec4<f32>(-854.0, 280.0, 1000.0, -283.0), u_input.a, 0, true), -u_input.d.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(355.0, 480.0, 160.0, 1000.0)), ~u_input.a, -2147483648 | 3233, !true))).d;
            loop {
                if (LOOP_COUNTERS[39u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[39u] = LOOP_COUNTERS[39u] + 1u;
                var_1 = any(select(vec4<bool>(any(func_3(vec3<bool>(true, false, false)).b.c), true, reverseBits(-23636) < firstTrailingBit(1), !(-1000.0 != 343.0)), select(vec4<bool>(!true, any(vec3<bool>(false, false, false)), false, true), select(!vec4<bool>(true, true, true, false), !vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, !false, true, false & false)), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(!false, !false, false | false, any(vec4<bool>(false, true, true, false))), !(-1146.0 <= -1132.0))));
                continue;
            }
            return;
        }
    }
    switch (~_wgslsmith_mod_i32(-1, 18082)) {
        case -1: {
        }
        case -9778: {
            for (var var_1 = -13323; !true && true; var_1 += 1) {
                if (LOOP_COUNTERS[40u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[40u] = LOOP_COUNTERS[40u] + 1u;
                break;
            }
            var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(func_10(u_input.e.xx, Struct_3(vec4<u32>(u_input.e.x, 4294967295u, 0u, 37246u), Struct_2(u_input.e, Struct_1(vec4<f32>(1272.0, 1667.0, -1000.0, 800.0), vec4<i32>(u_input.b.x, -1, u_input.b.x, u_input.b.x), u_input.a.x, false), vec2<bool>(false, false), Struct_1(vec4<f32>(1000.0, -1126.0, 773.0, 338.0), vec4<i32>(u_input.d.x, 19178, 12692, 12055), 0, false), vec3<u32>(28306u, 4294967295u, 0u)), Struct_1(vec4<f32>(-1051.0, 1134.0, -661.0, -779.0), vec4<i32>(-2147483648, -2147483648, 0, u_input.c), -1, true), 576.0), func_7(Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(-1489.0, -1357.0, 586.0, -512.0), vec4<i32>(u_input.a.x, -703, 2147483647, u_input.b.x), u_input.d.x, true), u_input.e.x), 1000.0).b, ~u_input.e.x).a.yxy, vec3<f32>(_wgslsmith_f_op_f32(-2083.0), _wgslsmith_f_op_f32(-1284.0 + -259.0), _wgslsmith_f_op_f32(trunc(805.0))), vec3<bool>(978.0 == 2559.0, !true, func_5(Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), Struct_1(vec4<f32>(594.0, 1519.0, 496.0, 1000.0), u_input.a, u_input.a.x, true), vec2<bool>(false, true), Struct_1(vec4<f32>(-1188.0, 907.0, -606.0, -845.0), vec4<i32>(u_input.a.x, u_input.a.x, -41424, 1), u_input.b.x, true), vec3<u32>(18144u, u_input.e.x, u_input.e.x)), Struct_4(u_input.a, u_input.e, Struct_1(vec4<f32>(436.0, 1000.0, 1349.0, -186.0), vec4<i32>(2147483647, u_input.a.x, -2147483648, u_input.a.x), 2147483647, false), 4294967295u)).c.d)))));
            var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -607.0) + _wgslsmith_f_op_f32(268.0 + -1000.0));
            let var_2 = u_input.d;
            loop {
                if (LOOP_COUNTERS[41u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[41u] = LOOP_COUNTERS[41u] + 1u;
                break;
            }
        }
        default: {
            var var_1 = Struct_2(u_input.e, func_4(), vec2<bool>(any(vec4<bool>(func_5(Struct_2(vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), Struct_1(vec4<f32>(638.0, -686.0, -123.0, -864.0), vec4<i32>(17455, u_input.c, 23854, u_input.c), u_input.c, true), vec2<bool>(false, true), Struct_1(vec4<f32>(1265.0, -1258.0, 693.0, 1000.0), vec4<i32>(u_input.b.x, u_input.d.x, u_input.a.x, u_input.c), u_input.a.x, false), vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x)), Struct_4(u_input.a, vec3<u32>(u_input.e.x, 9702u, 4294967295u), Struct_1(vec4<f32>(-1407.0, 1140.0, -1000.0, -202.0), u_input.a, u_input.c, false), u_input.e.x)).c.d, 0u == 0u, func_4().d, false)), false), func_7(Struct_4(_wgslsmith_div_vec4_i32(~u_input.a, u_input.a & vec4<i32>(-43679, u_input.c, u_input.b.x, u_input.b.x)), ~(~vec3<u32>(68130u, 4294967295u, u_input.e.x)), func_3(vec3<bool>(true, false, true)).c, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000.0 * -2081.0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -137.0)))).c, func_6(func_5(Struct_2(~vec3<u32>(1u, u_input.e.x, u_input.e.x), func_10(vec2<u32>(6325u, u_input.e.x), Struct_3(vec4<u32>(u_input.e.x, 4294967295u, 9835u, u_input.e.x), Struct_2(vec3<u32>(u_input.e.x, u_input.e.x, 1u), Struct_1(vec4<f32>(613.0, 807.0, -213.0, 618.0), u_input.a, u_input.c, true), vec2<bool>(true, false), Struct_1(vec4<f32>(978.0, 950.0, -1048.0, -494.0), u_input.a, u_input.c, true), u_input.e), Struct_1(vec4<f32>(-1355.0, -1334.0, 491.0, 2434.0), vec4<i32>(u_input.b.x, 2147483647, u_input.c, 18365), u_input.a.x, true), -157.0), u_input.e, 1u), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(vec4<f32>(-1243.0, 179.0, -1202.0, -1191.0), vec4<i32>(-1, -2147483648, 17474, u_input.a.x), -62749, false), u_input.e), Struct_4(u_input.a, u_input.e << (u_input.e % vec3<u32>(32u)), func_3(vec3<bool>(true, true, false)).c, ~u_input.e.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1172.0, -1216.0, -1914.0, -757.0) * vec4<f32>(244.0, 714.0, 501.0, -876.0))), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, u_input.b.x, u_input.a.x), vec4<i32>(u_input.a.x, -42625, -2147483648, 2147483647)), min(8956 << (64128u % 32u), u_input.c), true), -100170).zxw);
            let var_2 = func_3(vec3<bool>(true, any(!vec4<bool>(true, var_1.b.d, false, false)), !(!(0u != u_input.e.x)))).b;
            if (false) {
                let var_3 = select(select(!vec3<bool>(-236 <= 2147483647, true, !var_1.b.d), !(!vec3<bool>(true, false, true)), true), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(var_2.d.d, false, var_1.c.x), vec3<bool>(true, false, true))), select(select(!vec3<bool>(true, false, var_1.c.x), select(vec3<bool>(true, var_2.d.d, false), vec3<bool>(var_1.d.d, false, var_2.d.d), var_1.b.d), vec3<bool>(var_2.c.x, true, false)), !vec3<bool>(var_1.b.d, var_2.d.d, var_2.c.x), select(select(vec3<bool>(var_1.c.x, true, true), vec3<bool>(var_2.d.d, var_2.d.d, false), false), vec3<bool>(var_2.c.x, true, var_2.d.d), func_5(Struct_2(u_input.e, var_2.d, vec2<bool>(true, false), var_2.d, vec3<u32>(1u, 0u, u_input.e.x)), Struct_4(var_2.d.b, u_input.e, var_1.d, 69904u)).c.d)), true), !select(!vec3<bool>(true, var_1.d.d, true), vec3<bool>(var_2.c.x, !var_2.b.d, 1035.0 < -1419.0), select(select(vec3<bool>(true, true, var_1.d.d), vec3<bool>(var_2.c.x, var_1.b.d, true), vec3<bool>(var_1.b.d, true, true)), !vec3<bool>(var_1.c.x, true, true), var_1.c.x)));
                let var_4 = var_2.b;
                return;
            }
            for (var var_3 = 17054; var_3 != -2147483648; var_0 = var_1.d.a.x) {
                if (LOOP_COUNTERS[42u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[42u] = LOOP_COUNTERS[42u] + 1u;
                break;
            }
            var_1 = Struct_2(~vec3<u32>(~(~0u), _wgslsmith_clamp_u32(134083u | var_2.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(57899u, 29335u, u_input.e.x, 0u), vec4<u32>(1u, 44461u, var_2.a.x, 1u)), var_1.a.x), 0u), Struct_1(var_2.d.a, vec4<i32>(var_2.d.c, _wgslsmith_mod_i32(var_1.b.c | -20217, 2362), -var_1.d.c, func_7(func_7(Struct_4(vec4<i32>(0, var_2.d.c, -29447, var_1.b.b.x), u_input.e, Struct_1(var_1.d.a, var_2.d.b, 6282, true), 4294967295u), var_2.d.a.x), _wgslsmith_f_op_f32(round(195.0))).c.b.x), 0, var_1.b.d), vec2<bool>(true, var_2.c.x), var_1.d, _wgslsmith_sub_vec3_u32(var_1.a, firstTrailingBit(u_input.e)));
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_11(u_input.a.x, Struct_1(vec4<f32>(-476.0, -316.0, -1314.0, -142.0), vec4<i32>(0, u_input.a.x, -1, u_input.d.x), u_input.d.x, false), -37464, Struct_1(vec4<f32>(366.0, 1253.0, 613.0, -142.0), u_input.a, u_input.d.x, true)).a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(256.0 + -1503.0))))));
}

