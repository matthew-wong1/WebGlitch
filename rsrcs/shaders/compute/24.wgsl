// {"0:0":[237,108,178,80,236,165,233,100,12,233,24,132,168,63,10,191,204,140,150,53,123,192,235,184,123,104,178,97,151,192,134,154]}
// Seed: 13477523398337668211

struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 33>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn func_6(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4, arg_3: vec3<bool>) -> u32 {
    let var_0 = arg_3.x;
    let var_1 = 31688u ^ abs(_wgslsmith_dot_vec3_u32(~(vec3<u32>(arg_1, u_input.a.x, arg_2.b.a.x) >> (u_input.a.www % vec3<u32>(32u))), ~abs(vec3<u32>(u_input.a.x, arg_2.a.x, arg_2.b.a.x))));
    var var_2 = 125112u;
    switch (u_input.b) {
        default: {
            let var_3 = arg_2.b.b << (arg_1 % 32u);
        }
    }
    let var_3 = -435.0;
    return ~(~arg_2.a.x);
}

fn func_7(arg_0: Struct_4, arg_1: bool) -> vec4<u32> {
    for (var var_0 = 9733; var_0 != -1; var_0 = 12511) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var_0 = 0;
        if (true) {
            var_0 = ~max(_wgslsmith_div_i32(0, ~u_input.b), -53320);
            var var_1 = Struct_3(Struct_2(min(select(u_input.a, u_input.a, arg_1), max(~vec4<u32>(arg_0.b.a.x, 4294967295u, u_input.d, arg_0.a.x), arg_0.b.a)), arg_0.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1042.0, arg_0.b.c.x, arg_0.b.c.x)) + arg_0.b.c), select(!vec3<bool>(true, true, true), vec3<bool>(arg_1, arg_1, false), arg_1 != arg_1)))), -vec2<i32>(i32(-1) * -1416, -21865 << (5088u % 32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, 36084, u_input.b, -2147483648) << ((u_input.a | u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(35236, u_input.b, u_input.b, -20000), vec4<i32>(1, u_input.b, u_input.b, 0)) | abs(vec4<i32>(-29571, -1, -14306, u_input.b))), firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -2147483648, u_input.b, 2990), vec4<i32>(36864, 0, u_input.b, 2147483647)))), Struct_2(~(~max(vec4<u32>(67185u, u_input.d, 3071u, 36670u), vec4<u32>(0u, arg_0.b.a.x, u_input.c, u_input.a.x))), 86460u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(arg_0.b.c, vec3<f32>(arg_0.b.c.x, -1498.0, -251.0))))))), -1);
        }
    }
    var var_0 = u_input.a.xz ^ min(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_0.b.a.x, 1u)), _wgslsmith_div_u32(u_input.d, 1u)), vec2<u32>(~44708u, _wgslsmith_sub_u32(1u, 0u))), vec2<u32>(firstLeadingBit(81108u), min(arg_0.a.x, _wgslsmith_mod_u32(u_input.d, 24122u))));
    var var_1 = firstTrailingBit(u_input.b) & abs(i32(-1) * -1);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b.c.x, _wgslsmith_f_op_f32(-138.0 + arg_0.b.c.x)), _wgslsmith_div_f32(-310.0, 857.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c.x + -288.0) + -1141.0)), _wgslsmith_f_op_f32(-478.0)));
    return _wgslsmith_sub_vec4_u32(arg_0.b.a, ~min(~(u_input.a ^ arg_0.b.a), ~u_input.a));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = arg_0.a.c.x;
    let var_1 = func_7(Struct_4(vec2<u32>(4294967295u, func_6(!vec2<bool>(false, arg_1.c), 11899u, Struct_4(arg_3.wy, arg_0.a), vec3<bool>(true, true, true))), arg_0.d), all(vec3<bool>(_wgslsmith_f_op_f32(select(-2598.0, -1000.0, false)) != _wgslsmith_f_op_f32(exp2(arg_0.d.c.x)), any(vec3<bool>(arg_1.c, false, true)) && arg_1.c, arg_1.d.x == _wgslsmith_sub_i32(u_input.b, u_input.b))));
    switch (-1) {
        case 0: {
            switch (u_input.b) {
                case -8054: {
                    var var_2 = arg_1.b;
                }
                default: {
                    let var_2 = Struct_1(func_7(Struct_4(countOneBits(vec2<u32>(u_input.a.x, 26u)), arg_0.a), any(!vec4<bool>(arg_1.c, arg_1.c, false, arg_1.c))).x, ((_wgslsmith_sub_vec2_u32(vec2<u32>(43935u, u_input.c), arg_0.a.a.xx) & vec2<u32>(0u, arg_1.a)) & ~arg_3.xy) ^ vec2<u32>(arg_1.b.x, ~arg_3.x), !any(vec3<bool>(arg_1.c, all(vec2<bool>(arg_1.c, arg_1.c)), !arg_1.c)), ~vec4<i32>(-arg_0.c.x, -1077, -24887, -u_input.b));
                    var var_3 = _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(firstTrailingBit(arg_1.d.x), _wgslsmith_dot_vec2_i32(arg_1.d.wz, vec2<i32>(-6651, 1))), _wgslsmith_dot_vec2_i32(arg_0.b, ~arg_0.c.yy), 1)), firstLeadingBit(-29628 << (44590u % 32u)));
                    var var_4 = Struct_2(select(vec4<u32>(_wgslsmith_mod_u32(arg_3.x, arg_1.a), 1u, abs(func_6(vec2<bool>(false, false), 1u, Struct_4(var_2.b, arg_0.d), vec3<bool>(true, arg_1.c, var_2.c))), arg_0.d.b), select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, arg_3.x, 0u, 62638u), vec4<u32>(23412u, 1u, var_1.x, var_2.b.x)) ^ _wgslsmith_clamp_vec4_u32(arg_0.d.a, arg_0.a.a, vec4<u32>(52499u, var_1.x, 1u, var_2.b.x)), u_input.a, min(1u, var_1.x) > ~0u), false), reverseBits(var_1.x), arg_0.d.c);
                    var var_5 = abs(abs(countOneBits(73742u)) << (~select(~arg_1.b.x, countOneBits(arg_2), var_2.c) % 32u));
                }
            }
        }
        case 46922: {
            if (arg_1.c) {
                var var_2 = select(u_input.a.xyy, countOneBits(vec3<u32>(max(1u, func_7(Struct_4(u_input.a.xy, Struct_2(vec4<u32>(50036u, u_input.a.x, 0u, var_1.x), arg_3.x, vec3<f32>(-321.0, arg_0.d.c.x, -192.0))), true).x), arg_3.x, arg_0.a.b)), !vec3<bool>(true, ~5011u <= var_1.x, !arg_1.c));
            }
            switch (-u_input.b & _wgslsmith_clamp_i32(-1, ~u_input.b, 27340)) {
                case 14731: {
                    let var_2 = select(arg_1.c, any(!(!vec2<bool>(false, arg_1.c))), arg_1.c);
                    var var_3 = Struct_4(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~(arg_3.wx >> (var_1.zx % vec2<u32>(32u))), countOneBits(arg_0.a.a.xz)), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.d.a.x, 26825u), max(_wgslsmith_sub_vec2_u32(u_input.a.xx, arg_0.d.a.xy), u_input.a.xy))), Struct_2(~(~var_1), 22204u, vec3<f32>(-282.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214.0) * arg_0.d.c.x), _wgslsmith_f_op_f32(276.0 - _wgslsmith_f_op_f32(-844.0 * 511.0)))));
                }
                case 1: {
                    var var_2 = select(vec3<bool>(false, !(!(!false)), true), !vec3<bool>(_wgslsmith_f_op_f32(-1445.0) < _wgslsmith_f_op_f32(max(-1897.0, 489.0)), false, !(arg_1.d.x == 23773)), arg_1.c);
                    var_0 = _wgslsmith_f_op_f32(arg_0.d.c.x - -318.0);
                    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(726.0, _wgslsmith_f_op_f32(-arg_0.a.c.x))) * 181.0);
                }
                case -2147483648: {
                    var var_2 = _wgslsmith_add_vec3_u32(~u_input.a.yzy, ~(~arg_0.a.a.wwx));
                    var var_3 = _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(~5800, abs(u_input.b)) ^ vec2<i32>(-arg_1.d.x, ~u_input.b)), select(~vec2<i32>(-7754 ^ u_input.b, ~2147483647), -arg_1.d.zz, !any(select(vec2<bool>(arg_1.c, false), vec2<bool>(arg_1.c, false), false))));
                    let var_4 = Struct_3(arg_0.a, arg_1.d.wx, vec4<i32>(-1) * -arg_1.d, Struct_2(vec4<u32>(func_7(Struct_4(var_2.zx, Struct_2(arg_0.d.a, 61877u, vec3<f32>(221.0, -1759.0, -2517.0))), arg_1.c | false).x, ~(~110194u), var_2.x, firstLeadingBit(_wgslsmith_clamp_u32(arg_0.a.a.x, 87696u, 1u))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_1.x, arg_2))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, arg_0.d.c.x, 1224.0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c.x, arg_0.a.c.x, -1000.0) * arg_0.a.c))))), firstTrailingBit(7306));
                }
                case -1: {
                    var var_2 = arg_0.b.x ^ _wgslsmith_div_i32(_wgslsmith_mult_i32(firstLeadingBit(-arg_0.e), -_wgslsmith_clamp_i32(0, 31483, arg_1.d.x)), min(abs(-arg_1.d.x), -_wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(arg_1.d.x, arg_0.b.x, arg_0.b.x, u_input.b))));
                    var var_3 = Struct_2(vec4<u32>(0u, abs((6505u >> (arg_2 % 32u)) | 39570u), ~arg_3.x, 0u), ~(_wgslsmith_div_u32(80704u, arg_2) >> (func_6(vec2<bool>(false, arg_1.c), 63089u, Struct_4(vec2<u32>(arg_3.x, 39469u), arg_0.a), vec3<bool>(arg_1.c, true, arg_1.c)) % 32u)) ^ 0u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.a.c - vec3<f32>(arg_0.a.c.x, arg_0.d.c.x, 1595.0))))))));
                }
                default: {
                    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c.x) + _wgslsmith_f_op_f32(-524.0 - arg_0.a.c.x))));
                    let var_3 = vec3<u32>(_wgslsmith_mod_u32(arg_0.a.b, var_1.x), arg_1.a, ~_wgslsmith_div_u32(arg_1.b.x & 19696u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.b.x, arg_1.a, 4294967295u), u_input.a)) << (~max(arg_3.x >> (arg_3.x % 32u), abs(0u)) % 32u));
                    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1112.0 * -1495.0) - _wgslsmith_f_op_f32(ceil(-517.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.c.x * arg_0.a.c.x))));
                    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(min(-1089.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2047.0 * _wgslsmith_f_op_f32(-arg_0.a.c.x))))), _wgslsmith_f_op_f32(ceil(arg_0.d.c.x)));
                }
            }
            var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-574.0) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.c.x), arg_0.d.c.x)));
            var var_2 = 1244.0;
            var_0 = arg_0.d.c.x;
        }
        default: {
            var_0 = arg_0.d.c.x;
            let var_2 = _wgslsmith_clamp_u32(arg_2, 0u, arg_2);
            var var_3 = select(select(!vec4<bool>(arg_1.c, !true, false != arg_1.c, true | arg_1.c), !select(vec4<bool>(false, true, arg_1.c, arg_1.c), select(vec4<bool>(false, false, arg_1.c, false), vec4<bool>(false, arg_1.c, true, arg_1.c), vec4<bool>(true, arg_1.c, arg_1.c, false)), !vec4<bool>(false, true, false, true)), 156.0 == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2469.0), _wgslsmith_f_op_f32(select(arg_0.a.c.x, arg_0.a.c.x, arg_1.c))))), vec4<bool>(u_input.c > _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_3, arg_0.a.a), vec4<u32>(4294967295u, u_input.d, arg_1.b.x, 34671u)), arg_0.a.b > countOneBits(~59513u), true, any(select(!vec3<bool>(arg_1.c, arg_1.c, arg_1.c), !vec3<bool>(arg_1.c, arg_1.c, true), all(vec2<bool>(false, false))))), vec4<bool>(false, false & arg_1.c, all(select(select(vec2<bool>(true, arg_1.c), vec2<bool>(arg_1.c, true), vec2<bool>(true, false)), vec2<bool>(arg_1.c, true), select(vec2<bool>(arg_1.c, false), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, true)))), true));
            var var_4 = var_3.x;
        }
    }
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.c.x)))));
    var var_2 = arg_1.d.x;
    return Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(22795u, arg_3.x), vec2<u32>(min(arg_1.a, ~32332u), 4294967295u)), Struct_2(~vec4<u32>(~40080u, 4294967295u, 1678u, ~var_1.x), arg_1.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.c.x, -214.0, 1450.0), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c.x, arg_0.d.c.x, arg_0.a.c.x) - vec3<f32>(1001.0, arg_0.a.c.x, arg_0.d.c.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-658.0, arg_0.d.c.x, 1071.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, arg_0.d.c.x, arg_0.d.c.x))))));
}

fn func_8(arg_0: Struct_4, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    var var_0 = ~vec3<i32>(_wgslsmith_sub_i32(68857 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(17572u, 1u, u_input.d), u_input.a.xyy) % 32u), _wgslsmith_add_i32(-28189, -u_input.b)), _wgslsmith_add_i32(u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b)) | _wgslsmith_mod_i32(~(-1), u_input.b), -1);
    var_0 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(_wgslsmith_add_i32(2147483647, var_0.x), -1918, 2147483647)), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(61303, u_input.b, 2147483647)), vec3<i32>(u_input.b | 1, 0, u_input.b)), firstLeadingBit(~(~vec3<i32>(u_input.b, 1, 32996)))) << (~u_input.a.xyz % vec3<u32>(32u));
    var_0 = vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.b), 1), u_input.b, -10699);
    let var_1 = -1 >> (select(abs(~71693u), func_5(Struct_3(arg_0.b, var_0.zx, ~vec4<i32>(var_0.x, u_input.b, var_0.x, 19011), arg_0.b, -var_0.x), Struct_1(_wgslsmith_add_u32(arg_0.a.x, arg_0.a.x), ~u_input.a.yy, all(vec4<bool>(false, false, false, false)), -vec4<i32>(-2147483648, var_0.x, 0, 1742)), _wgslsmith_dot_vec4_u32(func_5(Struct_3(Struct_2(vec4<u32>(4294967295u, arg_0.a.x, 65507u, 1u), u_input.d, vec3<f32>(arg_1, arg_0.b.c.x, arg_2.x)), var_0.zx, vec4<i32>(-22939, var_0.x, u_input.b, u_input.b), Struct_2(u_input.a, 1u, vec3<f32>(1841.0, -781.0, -1000.0)), var_0.x), Struct_1(4294967295u, u_input.a.wz, false, vec4<i32>(var_0.x, 0, var_0.x, u_input.b)), u_input.c, vec4<u32>(u_input.a.x, arg_0.b.b, arg_0.b.a.x, arg_0.b.b)).b.a, _wgslsmith_mult_vec4_u32(vec4<u32>(32508u, arg_0.b.a.x, 1u, u_input.a.x), vec4<u32>(arg_0.a.x, 6914u, 107974u, 0u))), ~u_input.a | u_input.a).b.a.x, all(vec3<bool>(false && true, !false, true))) % 32u);
    var var_2 = Struct_3(Struct_2(~firstTrailingBit(vec4<u32>(arg_0.a.x, 0u, u_input.d, arg_0.a.x)), 0u, arg_0.b.c), var_0.xy, -vec4<i32>(-u_input.b, -11555, ~countOneBits(-82), -(31855 & var_1)), func_5(Struct_3(Struct_2(u_input.a, 4294967295u << (11917u % 32u), vec3<f32>(arg_1, arg_2.x, arg_2.x)), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-23636, 0)), var_0.zx), firstLeadingBit(firstLeadingBit(vec4<i32>(45708, 15136, 45360, -41943))), func_5(Struct_3(arg_0.b, var_0.xy, vec4<i32>(var_0.x, var_0.x, var_1, var_1), Struct_2(u_input.a, 1u, arg_2.zww), -1), Struct_1(19344u, u_input.a.yz, false, vec4<i32>(13124, var_0.x, 79588, -1)), select(arg_0.a.x, 44774u, true), _wgslsmith_mult_vec4_u32(vec4<u32>(32129u, u_input.a.x, arg_0.b.b, u_input.a.x), vec4<u32>(arg_0.a.x, 0u, 78646u, 55263u))).b, var_0.x), Struct_1(countOneBits(0u) << (~4294967295u % 32u), countOneBits(u_input.a.yy), !true, -(~vec4<i32>(38862, 1, var_1, 8569))), ~arg_0.b.b, reverseBits(~(u_input.a & vec4<u32>(arg_0.a.x, arg_0.b.b, 1u, 79271u)))).b, 2147483647);
    return _wgslsmith_sub_i32(var_2.c.x, (var_1 >> (_wgslsmith_clamp_u32(var_2.a.b, 36023u, 1u) % 32u)) << (((1u | var_2.d.b) | select(var_2.d.a.x, 4294967295u, true)) % 32u)) << (92220u % 32u);
}

fn func_4() -> u32 {
    var var_0 = -884.0;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1496.0))));
    for (var var_2 = 2147483647; var_2 < 2147483647; var_0 = _wgslsmith_f_op_f32(ceil(var_1))) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        var var_3 = u_input.c;
        switch (_wgslsmith_dot_vec3_i32(~(-(_wgslsmith_mult_vec3_i32(vec3<i32>(26786, u_input.b, 15483), vec3<i32>(-14027, -15147, -2147483648)) << (vec3<u32>(u_input.c, u_input.c, u_input.d) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_add_i32(~(0 | u_input.b), func_8(func_5(Struct_3(Struct_2(u_input.a, 22345u, vec3<f32>(-551.0, var_1, -1822.0)), vec2<i32>(-1, -32699), vec4<i32>(1, u_input.b, 1, -13675), Struct_2(vec4<u32>(u_input.a.x, 37538u, u_input.a.x, u_input.d), 45226u, vec3<f32>(-243.0, var_1, 269.0)), 0), Struct_1(2640u, vec2<u32>(u_input.a.x, 1u), false, vec4<i32>(u_input.b, u_input.b, -1, u_input.b)), u_input.c, vec4<u32>(u_input.a.x, u_input.d, 41500u, u_input.c)), _wgslsmith_f_op_f32(-625.0), vec4<f32>(var_1, var_1, var_1, var_1))), 0, u_input.b))) {
            case 30194: {
                continue;
            }
            case 2147483647: {
                let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000.0, var_1)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-984.0, var_1) - vec2<f32>(-1530.0, -935.0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 848.0))))));
            }
            default: {
                continue;
            }
        }
        let var_4 = min(2147483647, ~_wgslsmith_div_i32(u_input.b, -2147483648 & (18085 & 0)));
    }
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    for (var var_2 = -11558; var_2 < 1903; var_2 += 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        return u_input.c;
    }
    return 29851u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = u_input.a << (vec4<u32>(~(~(~0u)), ~func_4(), 4294967295u, func_5(Struct_3(Struct_2(vec4<u32>(14666u, 50771u, u_input.d, arg_0.b.x), arg_0.b.x, vec3<f32>(528.0, 1737.0, -647.0)), arg_0.d.zz, ~vec4<i32>(u_input.b, arg_2.x, 0, 9108), func_5(Struct_3(Struct_2(vec4<u32>(1u, 0u, 6571u, arg_0.b.x), 12800u, vec3<f32>(529.0, 524.0, -1000.0)), arg_0.d.ww, vec4<i32>(-77293, u_input.b, -2147483648, arg_2.x), Struct_2(vec4<u32>(u_input.d, 25085u, 16203u, 4294967295u), u_input.d, vec3<f32>(-1172.0, -453.0, 2430.0)), -69172), Struct_1(36388u, vec2<u32>(arg_0.b.x, arg_0.a), false, vec4<i32>(-27604, -1, 15071, arg_2.x)), 71676u, vec4<u32>(arg_0.b.x, 1u, 48492u, 1u)).b, select(arg_2.x, arg_2.x, false)), arg_0, 22450u, vec4<u32>(~1u, arg_0.a, 104575u, arg_0.b.x)).a.x) % vec4<u32>(32u));
    let var_1 = vec3<i32>(51785, arg_2.x >> (10002u % 32u), -(~_wgslsmith_mult_i32(i32(-1) * -6035, arg_0.d.x)));
    for (var var_2 = 9532; var_2 > 35156; var_2 += 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_3 = func_5(Struct_3(func_5(Struct_3(func_5(Struct_3(Struct_2(vec4<u32>(50330u, arg_0.a, var_0.x, arg_0.a), 0u, vec3<f32>(-841.0, 690.0, 2059.0)), arg_0.d.yx, vec4<i32>(2147483647, 74719, -13404, var_1.x), Struct_2(var_0, u_input.c, vec3<f32>(1312.0, 179.0, -1764.0)), 55851), arg_0, 64856u, vec4<u32>(u_input.a.x, 55686u, arg_0.a, var_0.x)).b, arg_0.d.wz, ~vec4<i32>(arg_2.x, 51792, arg_0.d.x, var_1.x), func_5(Struct_3(Struct_2(u_input.a, 0u, vec3<f32>(-901.0, 901.0, -1000.0)), vec2<i32>(-1, 19338), arg_0.d, Struct_2(vec4<u32>(arg_0.a, 0u, 0u, u_input.c), 4294967295u, vec3<f32>(-867.0, -1040.0, 1043.0)), var_1.x), arg_0, 7010u, vec4<u32>(19562u, 20743u, 0u, var_0.x)).b, 17051), arg_0, var_0.x, ~u_input.a).b, vec2<i32>(_wgslsmith_div_i32(var_1.x & arg_0.d.x, -2147483648), min(arg_0.d.x, 1)), ((arg_0.d >> (u_input.a % vec4<u32>(32u))) << (select(vec4<u32>(var_0.x, u_input.d, u_input.a.x, u_input.a.x), vec4<u32>(145261u, var_0.x, u_input.c, 46544u), false) % vec4<u32>(32u))) << (~max(u_input.a, vec4<u32>(arg_0.a, 36777u, 732u, var_0.x)) % vec4<u32>(32u)), func_5(Struct_3(Struct_2(vec4<u32>(44553u, 4294967295u, 4659u, 4294967295u), 19332u, vec3<f32>(983.0, 209.0, 410.0)), vec2<i32>(arg_0.d.x, var_1.x), vec4<i32>(u_input.b, 0, -1, u_input.b), Struct_2(var_0, 4294967295u, vec3<f32>(-1132.0, -1163.0, 738.0)), ~(-11043)), Struct_1(func_5(Struct_3(Struct_2(vec4<u32>(0u, 57944u, var_0.x, arg_0.a), 55604u, vec3<f32>(-2606.0, -588.0, 230.0)), vec2<i32>(u_input.b, var_1.x), arg_0.d, Struct_2(vec4<u32>(37037u, 0u, 85710u, arg_0.b.x), var_0.x, vec3<f32>(1401.0, -388.0, -344.0)), -25995), Struct_1(1u, vec2<u32>(1u, 1u), arg_0.c, arg_0.d), var_0.x, vec4<u32>(35083u, var_0.x, u_input.a.x, u_input.d)).b.b, ~var_0.yz, !arg_0.c, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, arg_0.d.x, 8312, arg_2.x), vec4<i32>(-8071, u_input.b, arg_0.d.x, -1))), u_input.c, max(min(u_input.a, vec4<u32>(4294967295u, 2560u, var_0.x, 13797u)), ~u_input.a)).b, -3966), arg_0, ~arg_0.a, u_input.a);
        for (var var_4 = 73406; ; var_4 -= 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            var var_5 = !arg_1.x;
        }
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_2 = Struct_2(var_0 | ~min(u_input.a, abs(vec4<u32>(var_0.x, u_input.d, var_0.x, u_input.a.x))), ~u_input.d, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_5(Struct_3(Struct_2(var_0, u_input.a.x, vec3<f32>(191.0, -341.0, -576.0)), vec2<i32>(1, arg_0.d.x), arg_0.d, Struct_2(u_input.a, 1u, vec3<f32>(-1000.0, -171.0, 835.0)), arg_2.x), arg_0, u_input.d, var_0).b.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(951.0, 507.0, -1029.0))))));
        break;
    }
    switch (var_1.x) {
        case 1: {
        }
        case 2147483647: {
        }
        case -2147483648: {
            if (select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493.0 + -767.0) - _wgslsmith_f_op_f32(-2389.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1021.0))) <= 972.0, false, all(arg_1))) {
                let var_2 = max(var_0.xzw, vec3<u32>(~(~firstLeadingBit(70515u)), func_7(Struct_4(~vec2<u32>(18830u, u_input.c), func_5(Struct_3(Struct_2(u_input.a, 26473u, vec3<f32>(-509.0, 1443.0, -2400.0)), arg_0.d.wx, arg_0.d, Struct_2(vec4<u32>(u_input.d, 0u, 1u, 4294967295u), u_input.c, vec3<f32>(2092.0, 377.0, 431.0)), 1), arg_0, 1u, vec4<u32>(1u, u_input.d, var_0.x, arg_0.b.x)).b), false).x, 1u));
                let var_3 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, arg_0.a), vec2<u32>(var_0.x, 11808u), u_input.a.zx);
            }
            let var_2 = vec2<f32>(681.0, _wgslsmith_f_op_f32(f32(-1.0) * -1388.0));
            for (var var_3 = 811; var_3 != -2147483648; ) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var_3 = 2147483647;
                let var_4 = ~(~arg_2.x);
            }
            return vec3<u32>(_wgslsmith_add_u32(u_input.d, u_input.d) | 0u, func_7(func_5(Struct_3(Struct_2(u_input.a, u_input.c, vec3<f32>(var_2.x, 777.0, 983.0)), vec2<i32>(0, arg_2.x), -vec4<i32>(-10310, arg_2.x, var_1.x, u_input.b), Struct_2(vec4<u32>(u_input.d, 4294967295u, 61449u, arg_0.a), 25955u, vec3<f32>(var_2.x, var_2.x, 363.0)), -5257), arg_0, ~(4294967295u & var_0.x), ~vec4<u32>(u_input.c, u_input.d, 44409u, 12909u)), !(!(!arg_0.c))).x, arg_0.a);
        }
        case -30454: {
            switch (select(0, var_1.x, true)) {
                case 1: {
                    var var_2 = func_5(Struct_3(func_5(Struct_3(func_5(Struct_3(Struct_2(u_input.a, u_input.c, vec3<f32>(-671.0, -512.0, 1472.0)), var_1.yy, arg_0.d, Struct_2(vec4<u32>(4294967295u, 5460u, 0u, var_0.x), 51883u, vec3<f32>(234.0, 293.0, -1296.0)), arg_2.x), Struct_1(0u, var_0.wz, true, vec4<i32>(arg_0.d.x, 2147483647, arg_0.d.x, arg_0.d.x)), 23939u, u_input.a).b, arg_0.d.zx, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d.x, u_input.b, arg_0.d.x, arg_0.d.x), vec4<i32>(-1, 1, -37374, 45873), arg_0.d), Struct_2(var_0, 5886u, vec3<f32>(315.0, -505.0, 131.0)), var_1.x | arg_0.d.x), Struct_1(~4294967295u, _wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.a.yz), all(arg_1), arg_0.d), ~u_input.d, _wgslsmith_mult_vec4_u32(var_0 >> (u_input.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(4294967295u, arg_0.a, u_input.c, 4294967295u)))).b, select(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, var_1.x), -vec2<i32>(-2147483648, arg_2.x)), -var_1.xz, true), arg_0.d, func_5(Struct_3(func_5(Struct_3(Struct_2(u_input.a, var_0.x, vec3<f32>(-280.0, -1038.0, 179.0)), arg_0.d.xz, arg_0.d, Struct_2(u_input.a, 63306u, vec3<f32>(-152.0, 778.0, 437.0)), -32674), arg_0, 40146u, var_0).b, vec2<i32>(-12460, arg_2.x), -arg_0.d, func_5(Struct_3(Struct_2(vec4<u32>(u_input.d, 1u, arg_0.b.x, u_input.d), 0u, vec3<f32>(389.0, 164.0, -1477.0)), vec2<i32>(u_input.b, 0), vec4<i32>(25914, arg_0.d.x, 2147483647, u_input.b), Struct_2(var_0, arg_0.b.x, vec3<f32>(-1609.0, 1717.0, -929.0)), -80157), arg_0, 0u, vec4<u32>(arg_0.b.x, 33770u, 4123u, 0u)).b, firstTrailingBit(0)), arg_0, _wgslsmith_div_u32(arg_0.a, ~u_input.a.x), u_input.a).b, -43311), Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(select(arg_0.a, 82826u, arg_0.c), 4294967295u), ~arg_0.b.x), ~(~arg_0.b), false, arg_0.d), 11309u, u_input.a).b;
                    var var_3 = func_5(Struct_3(Struct_2(var_2.a, var_2.a.x, var_2.c), reverseBits(~min(vec2<i32>(1, arg_2.x), vec2<i32>(-1, 15797))), vec4<i32>(-2147483648, var_1.x, ~1 | -u_input.b, 12022 << (15782u % 32u)), func_5(Struct_3(func_5(Struct_3(Struct_2(var_0, var_0.x, vec3<f32>(-281.0, var_2.c.x, var_2.c.x)), var_1.xx, arg_0.d, Struct_2(var_2.a, var_0.x, vec3<f32>(-455.0, var_2.c.x, 236.0)), u_input.b), arg_0, var_2.b, vec4<u32>(var_2.b, 0u, arg_0.a, 0u)).b, arg_0.d.zx, abs(vec4<i32>(4553, arg_2.x, -78196, var_1.x)), Struct_2(vec4<u32>(0u, var_2.a.x, arg_0.b.x, 19495u), 36223u, vec3<f32>(var_2.c.x, var_2.c.x, var_2.c.x)), -27436), Struct_1(func_4(), u_input.a.wz, any(arg_1), -vec4<i32>(-2147483648, arg_2.x, arg_0.d.x, var_1.x)), 34716u, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(65396u, u_input.d, 1u, var_0.x), vec4<u32>(0u, 1u, 1u, arg_0.b.x)), func_7(Struct_4(var_0.zx, Struct_2(vec4<u32>(0u, var_0.x, 41225u, arg_0.a), 19736u, var_2.c)), arg_1.x))).b, 0), arg_0, firstTrailingBit(~_wgslsmith_mod_u32(abs(8690u), func_5(Struct_3(Struct_2(var_0, arg_0.a, var_2.c), vec2<i32>(2147483647, u_input.b), arg_0.d, Struct_2(var_0, 0u, vec3<f32>(var_2.c.x, 533.0, 586.0)), arg_2.x), Struct_1(var_2.a.x, vec2<u32>(arg_0.a, var_0.x), arg_1.x, vec4<i32>(1, 0, arg_0.d.x, -1)), var_2.a.x, var_2.a).b.b)), vec4<u32>(var_2.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 12710u), func_7(func_5(Struct_3(Struct_2(var_0, 0u, var_2.c), var_1.xz, vec4<i32>(arg_0.d.x, arg_0.d.x, -33665, -1), Struct_2(u_input.a, 0u, vec3<f32>(547.0, var_2.c.x, var_2.c.x)), 1), arg_0, 79905u, var_0), 4294967295u < var_0.x).wz), 28776u, ~firstTrailingBit(4294967295u))).b;
                    var var_4 = firstLeadingBit(vec2<u32>(6883u >> (_wgslsmith_add_u32(14055u, 31595u) % 32u), 4294967295u));
                }
                case -2147483648: {
                }
                default: {
                    var var_2 = any(arg_1);
                    var_2 = arg_1.x;
                }
            }
            switch (-1) {
                case -51663: {
                    var var_2 = func_5(Struct_3(Struct_2(vec4<u32>(4294967295u ^ 0u, _wgslsmith_sub_u32(1u, var_0.x), _wgslsmith_mult_u32(11886u, 0u), u_input.a.x), 4294967295u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(813.0, -735.0, -136.0) + vec3<f32>(-118.0, 248.0, -877.0))))), vec2<i32>(max(_wgslsmith_div_i32(arg_0.d.x, -2147483648), _wgslsmith_sub_i32(arg_2.x, arg_2.x)), u_input.b), arg_0.d, Struct_2(vec4<u32>(~var_0.x, _wgslsmith_mod_u32(4294967295u, arg_0.b.x), ~arg_0.a, _wgslsmith_sub_u32(u_input.c, 1u)), u_input.a.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(686.0, -194.0, -604.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-221.0, 2527.0, 1158.0))))), arg_2.x), arg_0, u_input.d | 0u, u_input.a).b;
                }
                case -44750: {
                    var var_2 = !(!vec2<bool>(arg_1.x, all(select(arg_1, arg_1, arg_1))));
                    var_2 = arg_1;
                }
                case 0: {
                    let var_2 = func_5(Struct_3(Struct_2(vec4<u32>(arg_0.b.x, firstLeadingBit(var_0.x), _wgslsmith_div_u32(var_0.x, 106748u), countOneBits(u_input.c)), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, -892.0, 1383.0)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(897.0, 2178.0, 519.0))))), -select(select(var_1.zy, vec2<i32>(arg_0.d.x, 1), true), ~var_1.xx, !arg_1.x), min(-max(vec4<i32>(u_input.b, 11091, var_1.x, u_input.b), vec4<i32>(-1, 2147483647, var_1.x, -25029)), ~vec4<i32>(24307, -32928, 2147483647, 5812)), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 1524u), var_0) & vec4<u32>(24105u, 1u, 12790u, 1u), max(var_0.x, ~71555u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-172.0, -593.0, -1000.0))))), i32(-1) * -1), arg_0, ~_wgslsmith_div_u32(arg_0.b.x, firstLeadingBit(u_input.c)), var_0);
                }
                default: {
                    var var_2 = arg_0;
                }
            }
            if (false) {
            }
        }
        default: {
            switch (reverseBits(u_input.b | -arg_0.d.x) ^ (i32(-1) * -25637)) {
                case 0: {
                    let var_2 = Struct_2(reverseBits(min(u_input.a, var_0)), _wgslsmith_dot_vec4_u32(((u_input.a << (var_0 % vec4<u32>(32u))) ^ vec4<u32>(arg_0.a, arg_0.b.x, 0u, 9688u)) >> (vec4<u32>(_wgslsmith_add_u32(var_0.x, arg_0.a), abs(var_0.x), u_input.d, u_input.d) % vec4<u32>(32u)), reverseBits(vec4<u32>(~u_input.d, 4294967295u ^ 23221u, 6099u, _wgslsmith_mult_u32(u_input.d, 87475u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-346.0, 410.0, 2486.0) * vec3<f32>(-1000.0, 948.0, -131.0)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -470.0), 207.0, _wgslsmith_f_op_f32(floor(274.0)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1483.0), _wgslsmith_f_op_f32(-216.0), 1300.0))));
                    let var_3 = Struct_3(func_5(Struct_3(Struct_2(vec4<u32>(var_2.b, arg_0.b.x, u_input.c, 46320u) | u_input.a, _wgslsmith_add_u32(13635u, var_2.a.x), var_2.c), var_1.xy, vec4<i32>(u_input.b, arg_2.x, -1, arg_2.x) & -arg_0.d, var_2, arg_0.d.x), arg_0, 58925u, abs(var_2.a ^ ~vec4<u32>(arg_0.b.x, var_0.x, 28718u, 60919u))).b, vec2<i32>(-87936, 0), arg_0.d, func_5(Struct_3(Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(3443u, 47032u, arg_0.b.x, var_0.x), var_2.a), u_input.d, _wgslsmith_f_op_vec3_f32(-var_2.c)), _wgslsmith_mod_vec2_i32(abs(arg_2), ~vec2<i32>(arg_2.x, 5102)), vec4<i32>(-arg_0.d.x, _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(u_input.b, 17315, u_input.b)), -2147483648 ^ 33583, -3841 << (4294967295u % 32u)), Struct_2(~vec4<u32>(u_input.a.x, 4294967295u, var_0.x, var_0.x), ~var_2.b, _wgslsmith_f_op_vec3_f32(trunc(var_2.c))), 12731), arg_0, reverseBits(u_input.d), ~vec4<u32>(var_2.b, 0u, var_2.a.x, 1u) << (var_2.a % vec4<u32>(32u))).b, firstTrailingBit(reverseBits(23182)));
                    var var_4 = _wgslsmith_div_i32(-1, 0);
                }
                case 15085: {
                    let var_2 = arg_1.x;
                }
                default: {
                    let var_2 = -2147483647;
                }
            }
            if (any(!vec3<bool>(false, !false, 2000.0 >= _wgslsmith_f_op_f32(ceil(-699.0))))) {
                let var_2 = false;
                let var_3 = -_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647, 45360), arg_0.d.x) & _wgslsmith_mod_i32(-33229, arg_2.x);
                let var_4 = _wgslsmith_f_op_vec2_f32(-func_5(Struct_3(func_5(Struct_3(Struct_2(var_0, arg_0.a, vec3<f32>(-716.0, -1000.0, 663.0)), vec2<i32>(-2147483648, 1), vec4<i32>(u_input.b, var_1.x, arg_0.d.x, -2147483648), Struct_2(vec4<u32>(u_input.c, 1u, 1u, u_input.a.x), 1u, vec3<f32>(-1173.0, -863.0, -171.0)), arg_2.x), Struct_1(1u, arg_0.b, arg_0.c, arg_0.d), 4294967295u, select(vec4<u32>(32980u, u_input.a.x, arg_0.b.x, u_input.c), u_input.a, var_2)).b, vec2<i32>(2147483647, -8267), ~arg_0.d, Struct_2(u_input.a, arg_0.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(192.0, 2553.0, 274.0), vec3<f32>(-173.0, 1000.0, 616.0), false))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-18897, u_input.b, arg_2.x, var_1.x), arg_0.d), vec4<i32>(arg_0.d.x, var_3, 0, arg_0.d.x))), Struct_1(u_input.d, vec2<u32>(5907u, var_0.x) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), true, vec4<i32>(_wgslsmith_mod_i32(var_1.x, -1), _wgslsmith_sub_i32(1, u_input.b), ~u_input.b, abs(50217))), 19305u, _wgslsmith_add_vec4_u32(u_input.a, var_0)).b.c.zx);
                var var_5 = abs(_wgslsmith_sub_u32(var_0.x, 4294967295u & (11730u >> (50933u % 32u)))) | ~arg_0.a;
                let var_6 = ~var_0.zy;
            }
            var var_2 = Struct_2(func_5(Struct_3(func_5(Struct_3(Struct_2(var_0, 17307u, vec3<f32>(-527.0, 1000.0, 1441.0)), arg_0.d.xw, arg_0.d, Struct_2(var_0, arg_0.a, vec3<f32>(-1646.0, -1000.0, -993.0)), 0), arg_0, 4294967295u, var_0).b, arg_0.d.yw, ~vec4<i32>(-1, 1, -38400, arg_2.x), Struct_2(u_input.a, 4294967295u, vec3<f32>(766.0, -752.0, 1125.0)), -2147483648), Struct_1(~u_input.d, vec2<u32>(5267u, 17709u), 4294967295u > var_0.x, arg_0.d), arg_0.b.x, u_input.a).b.a & _wgslsmith_mod_vec4_u32(var_0, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 71510u, arg_0.b.x, 0u), ~u_input.a)), _wgslsmith_dot_vec3_u32(countOneBits(~func_5(Struct_3(Struct_2(vec4<u32>(35542u, 39953u, var_0.x, var_0.x), 1u, vec3<f32>(1153.0, -736.0, 1435.0)), vec2<i32>(-158, -1), vec4<i32>(-2147483648, 16945, arg_0.d.x, u_input.b), Struct_2(u_input.a, 4294967295u, vec3<f32>(406.0, 319.0, 1527.0)), -2147483648), arg_0, u_input.a.x, u_input.a).b.a.wxz), var_0.wxz | vec3<u32>(u_input.c, ~1u, arg_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1014.0 - -609.0)), _wgslsmith_f_op_f32(max(-154.0, _wgslsmith_f_op_f32(-1289.0 - 162.0))), 381.0) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-862.0))), _wgslsmith_f_op_f32(-760.0 + _wgslsmith_f_op_f32(step(-922.0, 725.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-504.0) + _wgslsmith_f_op_f32(max(-112.0, -698.0))))));
            switch (_wgslsmith_mod_i32(1, firstTrailingBit(0) | (-max(1, 21110) << (_wgslsmith_clamp_u32(~66624u, 51700u | 0u, ~64519u) % 32u)))) {
                case -1: {
                    var_2 = Struct_2(~countOneBits(var_2.a), ~var_0.x, var_2.c);
                    var var_3 = Struct_4(~vec2<u32>(4294967295u, 4294967295u), Struct_2(firstTrailingBit(vec4<u32>(firstLeadingBit(var_2.a.x), 0u << (var_0.x % 32u), var_0.x, func_7(Struct_4(vec2<u32>(66571u, arg_0.a), Struct_2(var_0, var_2.a.x, vec3<f32>(var_2.c.x, -158.0, -544.0))), false).x)), var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1479.0, _wgslsmith_f_op_f32(var_2.c.x + var_2.c.x), _wgslsmith_f_op_f32(var_2.c.x * 1358.0)))));
                }
                case 9936: {
                    var_2 = func_5(Struct_3(func_5(Struct_3(func_5(Struct_3(Struct_2(var_0, var_2.a.x, vec3<f32>(var_2.c.x, 1104.0, 722.0)), vec2<i32>(var_1.x, arg_2.x), vec4<i32>(-12666, 0, arg_2.x, var_1.x), Struct_2(var_0, arg_0.a, var_2.c), var_1.x), Struct_1(40288u, var_0.zy, arg_1.x, vec4<i32>(var_1.x, 1, 34165, -1)), 4294967295u, vec4<u32>(var_2.a.x, var_0.x, var_2.b, 4294967295u)).b, select(arg_2, vec2<i32>(1, 3966), vec2<bool>(false, arg_1.x)), firstTrailingBit(vec4<i32>(arg_0.d.x, arg_0.d.x, 0, -443)), Struct_2(vec4<u32>(0u, var_0.x, arg_0.a, 51871u), 0u, var_2.c), var_1.x), arg_0, _wgslsmith_mod_u32(func_7(Struct_4(vec2<u32>(var_0.x, 1u), Struct_2(var_2.a, 28962u, var_2.c)), true).x, 25584u), select(vec4<u32>(2784u, var_2.b, var_2.b, 38770u), select(vec4<u32>(21915u, 1u, var_2.a.x, 57379u), vec4<u32>(arg_0.a, arg_0.b.x, 4294967295u, 4294967295u), vec4<bool>(true, arg_0.c, true, true)), select(vec4<bool>(arg_1.x, true, false, arg_0.c), vec4<bool>(false, arg_1.x, arg_1.x, arg_0.c), vec4<bool>(true, arg_0.c, true, arg_1.x)))).b, vec2<i32>(_wgslsmith_add_i32(i32(-1) * -2147483648, 2147483647), i32(-1) * -arg_0.d.x), ~max(arg_0.d << (var_0 % vec4<u32>(32u)), arg_0.d), Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 57192u, arg_0.a, arg_0.a), vec4<u32>(var_0.x, var_2.a.x, 4294967295u, 3897u)), var_0.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -170.0), _wgslsmith_f_op_f32(f32(-1.0) * -431.0), var_2.c.x)), abs(arg_2.x)), Struct_1(13731u, abs(abs(vec2<u32>(22530u, 36162u)) | u_input.a.wy), true, vec4<i32>(-11060, ~2147483647, arg_0.d.x, ~arg_0.d.x | (arg_2.x ^ -14434))), ~(~arg_0.b.x), var_0).b;
                }
                default: {
                    let var_3 = Struct_3(Struct_2(var_0, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, arg_0.b.x) & abs(var_2.b), arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(356.0, var_2.c.x, var_2.c.x) * vec3<f32>(1482.0, -224.0, 750.0)), vec3<f32>(-210.0, var_2.c.x, var_2.c.x), all(vec3<bool>(arg_0.c, false, arg_1.x)))))), _wgslsmith_div_vec2_i32(select(~(-vec2<i32>(57049, -2147483648)), vec2<i32>(min(-19261, 31368), firstLeadingBit(arg_0.d.x)), false), -var_1.yx), abs(-arg_0.d), Struct_2(vec4<u32>(_wgslsmith_mod_u32(~u_input.c, var_2.a.x), var_0.x, select(_wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(u_input.a.x, 8839u)), func_7(Struct_4(vec2<u32>(63253u, var_2.b), Struct_2(var_0, 4294967295u, var_2.c)), arg_0.c).x, all(vec3<bool>(false, false, false))), ~(~0u)), _wgslsmith_dot_vec3_u32(u_input.a.yxy, vec3<u32>(var_2.b, 2584u, u_input.d) >> (~var_0.wxx % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401.0 * 855.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x + 389.0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.x))))), ~arg_2.x);
                }
            }
            if (-7692 < countOneBits(-(~(-22479)))) {
                var var_3 = func_5(Struct_3(Struct_2(max(vec4<u32>(5810u, 0u, 1u, 4294967295u), vec4<u32>(var_0.x, 1u, var_2.a.x, u_input.c)), var_2.b, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1036.0, var_2.c.x, 215.0)))), _wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.x, arg_0.d.x), vec2<i32>(arg_2.x, arg_2.x)), abs(arg_0.d.xw), _wgslsmith_clamp_vec2_i32(arg_2, arg_0.d.wz, firstLeadingBit(var_1.zz))), ~_wgslsmith_sub_vec4_i32(~arg_0.d, arg_0.d), func_5(Struct_3(Struct_2(vec4<u32>(0u, 4294967295u, 0u, arg_0.b.x), 67903u, vec3<f32>(-2751.0, var_2.c.x, 186.0)), ~var_1.xx, _wgslsmith_clamp_vec4_i32(vec4<i32>(-76142, arg_0.d.x, -43342, -2147483648), vec4<i32>(var_1.x, var_1.x, var_1.x, arg_0.d.x), arg_0.d), Struct_2(u_input.a, u_input.d, vec3<f32>(139.0, -841.0, -1177.0)), 1 >> (var_2.a.x % 32u)), arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(24381u, var_0.x, 4294967295u), _wgslsmith_mult_vec3_u32(u_input.a.yxw, u_input.a.zyw)), var_0).b, arg_0.d.x), arg_0, 40606u, vec4<u32>(~(~u_input.c), _wgslsmith_add_u32(u_input.c, var_0.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_2.b, u_input.d, var_0.x), ~var_2.a), 35698u), select(var_0.x, var_0.x << (var_2.b % 32u), arg_0.c))).b;
            }
        }
    }
    return var_0.wxz;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = abs(~(~_wgslsmith_dot_vec3_u32(func_3(Struct_1(arg_1.a.x, vec2<u32>(u_input.c, 0u), false, vec4<i32>(-15707, arg_0, 1, u_input.b)), vec2<bool>(true, true), vec2<i32>(0, -1)), u_input.a.wxz)));
    var var_1 = vec2<i32>(reverseBits(~reverseBits(59270) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(0, 2147483647, -15768, u_input.b), ~vec4<i32>(u_input.b, 1, 2147483647, -2147483648))), _wgslsmith_sub_i32(arg_0, min(u_input.b, ~arg_0) << (~func_5(Struct_3(arg_1, vec2<i32>(arg_0, 10755), vec4<i32>(arg_0, u_input.b, -1, arg_0), Struct_2(vec4<u32>(var_0, var_0, u_input.a.x, var_0), 99867u, vec3<f32>(1482.0, arg_1.c.x, -1185.0)), 0), Struct_1(4546u, arg_1.a.yw, false, vec4<i32>(arg_0, 1, arg_0, 0)), 737u, u_input.a).a.x % 32u)));
    return func_5(Struct_3(func_5(Struct_3(arg_1, _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, var_1.x)), vec4<i32>(u_input.b, 2147483647, 2147483647, 0), Struct_2(u_input.a, arg_1.b, arg_1.c), var_1.x), Struct_1(var_0, u_input.a.xy ^ vec2<u32>(68440u, 64146u), false, firstTrailingBit(vec4<i32>(arg_0, var_1.x, var_1.x, -2147483648))), ~u_input.a.x, u_input.a).b, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(2147483647, u_input.b), ~42887), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(arg_0, 2147483647))), ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1, -2147483648, 21857, -2147483648), vec4<i32>(56217, arg_0, 1, -1690))), func_5(Struct_3(Struct_2(vec4<u32>(41133u, arg_1.b, 4294967295u, 40697u), 0u, arg_1.c), abs(vec2<i32>(-7976, 1)), -vec4<i32>(1, var_1.x, arg_0, var_1.x), func_5(Struct_3(Struct_2(u_input.a, 0u, vec3<f32>(arg_1.c.x, arg_1.c.x, -960.0)), vec2<i32>(var_1.x, u_input.b), vec4<i32>(var_1.x, -2147483648, 1, var_1.x), arg_1, -21151), Struct_1(52150u, vec2<u32>(5625u, u_input.c), false, vec4<i32>(2147483647, arg_0, -19002, u_input.b)), 16422u, vec4<u32>(var_0, 75723u, u_input.d, u_input.d)).b, arg_0), Struct_1(reverseBits(43363u), select(vec2<u32>(arg_1.b, 75468u), u_input.a.xy, false), true, vec4<i32>(1, 0, var_1.x, arg_0)), ~_wgslsmith_mult_u32(21468u, 1u), func_5(Struct_3(arg_1, vec2<i32>(var_1.x, u_input.b), vec4<i32>(u_input.b, -1, u_input.b, -36548), Struct_2(u_input.a, 0u, vec3<f32>(arg_1.c.x, -537.0, arg_1.c.x)), 49386), Struct_1(var_0, vec2<u32>(var_0, var_0), false, vec4<i32>(u_input.b, u_input.b, u_input.b, -1)), 4294967295u, arg_1.a).b.a | func_5(Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.d, 4294967295u, 4294967295u), 1u, vec3<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x)), vec2<i32>(-2147483648, -7468), vec4<i32>(-26634, 0, var_1.x, u_input.b), Struct_2(vec4<u32>(0u, 30387u, 31982u, arg_1.a.x), 1046u, vec3<f32>(arg_1.c.x, arg_1.c.x, -1000.0)), arg_0), Struct_1(4595u, u_input.a.yw, true, vec4<i32>(arg_0, arg_0, u_input.b, arg_0)), 4294967295u, arg_1.a).b.a).b, min(func_8(Struct_4(arg_1.a.wx, Struct_2(vec4<u32>(var_0, u_input.c, arg_1.a.x, 20622u), u_input.d, vec3<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x))), arg_1.c.x, vec4<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, 698.0)), abs(-41413))), Struct_1(31399u, ~_wgslsmith_mod_vec2_u32(arg_1.a.zx | arg_1.a.yw, vec2<u32>(0u, arg_1.a.x)), !false != any(!vec3<bool>(true, true, true)), reverseBits(-(~vec4<i32>(0, arg_0, arg_0, var_1.x)))), min(abs(func_3(Struct_1(0u, vec2<u32>(33420u, u_input.d), true, vec4<i32>(-56438, 1, arg_0, 32172)), !vec2<bool>(true, false), -vec2<i32>(34826, -21445)).x), ~(~u_input.a.x) & 1u), ~(~func_7(func_5(Struct_3(Struct_2(vec4<u32>(u_input.c, arg_1.b, arg_1.b, 47374u), var_0, vec3<f32>(-364.0, arg_1.c.x, arg_1.c.x)), vec2<i32>(arg_0, 1), vec4<i32>(var_1.x, -34392, var_1.x, -2147483648), arg_1, u_input.b), Struct_1(var_0, vec2<u32>(u_input.a.x, var_0), true, vec4<i32>(1, -81890, 0, -39169)), 0u, vec4<u32>(u_input.d, 4294967295u, u_input.a.x, 4294967295u)), any(vec3<bool>(true, true, true))))).b;
}

fn func_9(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = func_2(_wgslsmith_sub_i32(~_wgslsmith_add_i32(u_input.b, arg_0.x), -(~u_input.b)) ^ u_input.b, Struct_2(vec4<u32>(~(~5342u), ~4294967295u >> ((1u >> (117151u % 32u)) % 32u), u_input.d, func_7(arg_1, all(vec2<bool>(true, false))).x), arg_1.a.x, arg_1.b.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(-755.0 * arg_1.b.c.x), _wgslsmith_f_op_f32(var_0.c.x + arg_3.x))), vec3<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -236.0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-732.0, var_0.c.x, 735.0))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(272.0, -718.0, _wgslsmith_f_op_f32(f32(-1.0) * -638.0))))));
    switch (u_input.b) {
        default: {
            let var_2 = (all(vec4<bool>(all(vec3<bool>(true, false, true)), !true, arg_3.x == -663.0, true | true)) == all(vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, false, false))))) & any(vec2<bool>(any(vec4<bool>(false, true, true, false)), select(all(vec2<bool>(true, true)), true, true & true)));
            var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-347.0))));
            var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1661.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(select(-706.0, var_0.c.x, false)))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.c.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x * 307.0), arg_1.b.c.x))))));
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var_0 = func_2(firstTrailingBit(_wgslsmith_mod_i32(0 >> (u_input.d % 32u), ~0)) >> ((func_6(select(vec2<bool>(var_2, var_2), vec2<bool>(false, var_2), vec2<bool>(var_2, var_2)), 75561u, arg_1, vec3<bool>(var_2, var_2, var_2)) << (0u % 32u)) % 32u), func_2(_wgslsmith_dot_vec2_i32(reverseBits(arg_0.yz >> (vec2<u32>(4294967295u, var_0.a.x) % vec2<u32>(32u))), min(-vec2<i32>(-2147483648, -20973), firstLeadingBit(vec2<i32>(2897, -51969)))), Struct_2(~u_input.a, min(u_input.d, ~var_0.a.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1.b.c))))));
            }
            for (var var_4 = 0; var_4 >= -27599; var_4 -= 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                return Struct_4(~(~(_wgslsmith_div_vec2_u32(var_0.a.yx, vec2<u32>(110235u, 110607u)) << (func_3(Struct_1(1u, var_0.a.zy, var_2, vec4<i32>(u_input.b, arg_0.x, arg_0.x, u_input.b)), vec2<bool>(var_2, true), vec2<i32>(arg_0.x, u_input.b)).xx % vec2<u32>(32u)))), func_2(u_input.b, func_2(~(~arg_0.x), arg_1.b)));
            }
        }
    }
    var var_2 = arg_1.b;
    let var_3 = u_input.b & ~arg_0.x;
    return arg_1;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    switch (abs(-1)) {
        case 0: {
            switch (_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647, _wgslsmith_sub_i32(u_input.b | ~u_input.b, -9688), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, -36730, u_input.b), vec4<i32>(-1, 4464, u_input.b, u_input.b)), vec4<i32>(1, 26155, u_input.b, -28876) >> (vec4<u32>(20411u, u_input.c, 4294967295u, arg_0.a.x) % vec4<u32>(32u))), (vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, -18347, u_input.b, -33672)) << (_wgslsmith_mult_vec4_u32(arg_0.b.a, vec4<u32>(u_input.c, 66895u, 0u, arg_0.a.x)) % vec4<u32>(32u)))), _wgslsmith_div_i32(~(-1) ^ ~_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b))) {
                case 1: {
                    let var_0 = _wgslsmith_f_op_f32(2050.0 - _wgslsmith_f_op_f32(round(arg_0.b.c.x)));
                    var var_1 = !true;
                    let var_2 = func_9(vec4<i32>(u_input.b, firstTrailingBit(-(u_input.b & -2147483648)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, ~33318, ~u_input.b), vec3<i32>(-2147483648, u_input.b, -2147483647)), 2147483647), Struct_4(u_input.a.zz, func_2(firstLeadingBit(26980) & ~(-2147483648), arg_0.b)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-193.0)), _wgslsmith_f_op_f32(-502.0))))), arg_0.b.c.xz);
                    var_1 = !true;
                }
                case -1: {
                    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(arg_0.b.c))));
                    let var_1 = countOneBits(~select(vec4<i32>(u_input.b, _wgslsmith_add_i32(-25165, -38072), reverseBits(u_input.b), i32(-1) * -1), abs(countOneBits(vec4<i32>(9774, u_input.b, -38479, u_input.b))), true));
                    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(901.0, _wgslsmith_f_op_f32(f32(-1.0) * -264.0)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.c.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000.0, -1061.0)))), !(!(!vec2<bool>(true, false))))), vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(144.0, 752.0)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000.0 - arg_0.b.c.x)))))));
                    var_2 = vec2<f32>(var_0.x, 785.0);
                }
                case 2147483647: {
                }
                case 0: {
                    var var_0 = arg_0.b;
                    var var_1 = any(!vec2<bool>(false, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)))));
                }
                default: {
                }
            }
        }
        case -16164: {
            let var_0 = select(-func_8(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-665.0 + -877.0), -442.0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, arg_0.b.c.x, arg_0.b.c.x, 1156.0) * vec4<f32>(-1313.0, -1892.0, 489.0, 647.0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1670.0, -248.0, arg_0.b.c.x, arg_0.b.c.x)))), 0, select(!(u_input.d > u_input.d) && select(false, !false, any(vec4<bool>(true, true, false, false))), (!true & (arg_0.b.c.x > arg_0.b.c.x)) & (min(u_input.d, 4296u) < _wgslsmith_sub_u32(4294967295u, 1u)), true));
        }
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                break;
            }
            let var_0 = Struct_2((_wgslsmith_clamp_vec4_u32(~u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.a.x, u_input.c), arg_0.b.a), arg_0.b.a | vec4<u32>(15147u, arg_0.b.b, u_input.c, 0u)) << (~(u_input.a >> (vec4<u32>(arg_0.b.a.x, u_input.d, 0u, arg_0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ func_7(arg_0, all(vec3<bool>(false, false, true))), u_input.a.x >> (countOneBits(u_input.c) % 32u), arg_0.b.c);
            if (firstTrailingBit(-1 ^ (i32(-1) * -u_input.b)) > _wgslsmith_add_i32(_wgslsmith_add_i32(~abs(2147483647), ~(-2147483648)), -21611)) {
            }
        }
        case 39139: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_0 = 1063.0;
                continue;
            }
            let var_0 = ~_wgslsmith_mod_u32(~u_input.c, abs(abs(arg_0.a.x))) == 30104u;
            let var_1 = Struct_2(vec4<u32>(77751u, func_7(Struct_4(vec2<u32>(4294967295u, 2712u), Struct_2(arg_0.b.a, 1u, vec3<f32>(-153.0, arg_0.b.c.x, arg_0.b.c.x))), -638.0 > 1741.0).x >> (func_6(vec2<bool>(false, var_0), func_5(Struct_3(Struct_2(vec4<u32>(24011u, 35359u, arg_0.b.b, arg_0.a.x), arg_0.a.x, arg_0.b.c), vec2<i32>(2147483647, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -1), Struct_2(u_input.a, u_input.a.x, vec3<f32>(-1256.0, arg_0.b.c.x, 580.0)), u_input.b), Struct_1(u_input.d, u_input.a.xz, var_0, vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483648)), 29201u, vec4<u32>(u_input.a.x, arg_0.b.a.x, 1u, arg_0.a.x)).b.a.x, Struct_4(u_input.a.zy, arg_0.b), !vec3<bool>(true, true, var_0)) % 32u), func_5(Struct_3(func_2(11643, Struct_2(arg_0.b.a, u_input.a.x, vec3<f32>(-1000.0, arg_0.b.c.x, -437.0))), vec2<i32>(0, u_input.b) & vec2<i32>(u_input.b, u_input.b), vec4<i32>(u_input.b, 35635, u_input.b, -13060), arg_0.b, max(u_input.b, -2147483648)), Struct_1(arg_0.a.x, ~u_input.a.zy, var_0, _wgslsmith_div_vec4_i32(vec4<i32>(57942, 1018, u_input.b, -10879), vec4<i32>(20421, 0, 24476, u_input.b))), _wgslsmith_sub_u32(u_input.a.x, func_9(vec4<i32>(u_input.b, 0, -1, 9261), Struct_4(u_input.a.xy, arg_0.b), vec2<f32>(941.0, -377.0), vec2<f32>(arg_0.b.c.x, arg_0.b.c.x)).a.x), arg_0.b.a).a.x, ~_wgslsmith_mult_u32(~38571u, _wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(u_input.c, 4294967295u)))), ~abs(abs(_wgslsmith_mult_u32(4077u, u_input.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.c.x, arg_0.b.c.x, arg_0.b.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.b.c, vec3<f32>(-827.0, arg_0.b.c.x, arg_0.b.c.x))))) + _wgslsmith_f_op_vec3_f32(-arg_0.b.c)));
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                let var_2 = Struct_3(var_1, vec2<i32>(2147483647, -12556) ^ min(_wgslsmith_add_vec2_i32(-vec2<i32>(6456, 20846), ~vec2<i32>(u_input.b, -4944)), countOneBits(max(vec2<i32>(u_input.b, -1), vec2<i32>(35387, 1)))), vec4<i32>(func_8(func_5(Struct_3(Struct_2(u_input.a, arg_0.b.a.x, vec3<f32>(1040.0, 486.0, 353.0)), vec2<i32>(u_input.b, u_input.b), vec4<i32>(u_input.b, 3378, 1, u_input.b), arg_0.b, u_input.b), Struct_1(u_input.a.x, var_1.a.zw, var_0, vec4<i32>(-23709, u_input.b, u_input.b, -2147483648)), 24701u, vec4<u32>(u_input.a.x, u_input.d, var_1.b, 1u) & vec4<u32>(arg_0.a.x, 69720u, u_input.d, arg_0.b.b)), var_1.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-775.0, -699.0, -1533.0, var_1.c.x)))), -8420, 2147483647, -80110), func_9(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 16558, 76539, u_input.b) ^ vec4<i32>(-17767, 0, -1, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 68002)), arg_0, var_1.c.yx, arg_0.b.c.xy).b, abs(6571));
                let var_3 = var_1.a.x;
                let var_4 = var_1.c.x;
                var var_5 = Struct_2(var_1.a, func_3(Struct_1(var_1.a.x, arg_0.a, !var_0, vec4<i32>(firstTrailingBit(var_2.b.x), 54091, var_2.e, firstTrailingBit(u_input.b))), vec2<bool>(false, !true), ~_wgslsmith_clamp_vec2_i32(min(var_2.b, vec2<i32>(u_input.b, u_input.b)), ~var_2.b, countOneBits(var_2.b))).x, var_2.a.c);
            }
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                continue;
            }
        }
        default: {
            var var_0 = Struct_3(arg_0.b, ~vec2<i32>(-65924 >> (u_input.d % 32u), -1), abs(vec4<i32>(_wgslsmith_div_i32(-u_input.b, u_input.b), 2147483647, -1, _wgslsmith_sub_i32(u_input.b << (arg_0.b.b % 32u), -10937 << (arg_0.a.x % 32u)))), Struct_2(u_input.a, 1u, arg_0.b.c), _wgslsmith_clamp_i32(-70306, 14400, 1 ^ 20790));
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                break;
            }
            var var_1 = Struct_2(countOneBits(vec4<u32>(0u, ~1717u, min(func_3(Struct_1(var_0.a.b, var_0.d.a.xz, true, var_0.c), vec2<bool>(true, false), vec2<i32>(u_input.b, u_input.b)).x, 1u), 7829u)), ~(u_input.d >> (func_6(vec2<bool>(false, false), var_0.d.b, Struct_4(u_input.a.wx, Struct_2(vec4<u32>(4294967295u, u_input.c, u_input.d, 0u), 1u, arg_0.b.c)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)) % 32u)), arg_0.b.c);
        }
    }
    switch (u_input.b) {
        case -2147483648: {
        }
        case -12803: {
            if (!all(vec4<bool>(any(!vec4<bool>(true, false, true, true)), !true && (true != true), !true, firstTrailingBit(18021) > ~u_input.b))) {
                let var_0 = Struct_3(Struct_2(~select(u_input.a & vec4<u32>(arg_0.b.b, 1u, u_input.c, 4294967295u), ~vec4<u32>(1u, 11111u, 1u, u_input.a.x), !false), _wgslsmith_div_u32(~4294967295u, arg_0.a.x), arg_0.b.c), firstLeadingBit(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(1, -2147483648), vec2<i32>(u_input.b, u_input.b)))) << (max(func_7(Struct_4(arg_0.a, arg_0.b), !false).zy, ~max(vec2<u32>(0u, 52956u), vec2<u32>(1980u, 0u))) % vec2<u32>(32u)), select(select(abs(vec4<i32>(u_input.b, 627, u_input.b, u_input.b)), vec4<i32>(-2546, -2147483648, u_input.b, -1), !vec4<bool>(false, false, false, true)), vec4<i32>(~u_input.b, countOneBits(u_input.b), max(21853, u_input.b), u_input.b), !(!vec4<bool>(true, true, true, true))) << (vec4<u32>(arg_0.b.b, 42826u, ~(~4294967295u), 5840u) % vec4<u32>(32u)), Struct_2(_wgslsmith_mult_vec4_u32(u_input.a, arg_0.b.a), 4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.b.c.x, arg_0.b.c.x), _wgslsmith_f_op_f32(select(arg_0.b.c.x, arg_0.b.c.x, true)), 390.0))), u_input.b);
                var var_1 = func_5(Struct_3(func_5(Struct_3(Struct_2(vec4<u32>(19478u, u_input.c, 84090u, arg_0.a.x), arg_0.a.x, vec3<f32>(-1125.0, -451.0, arg_0.b.c.x)), countOneBits(var_0.b), _wgslsmith_mult_vec4_i32(var_0.c, var_0.c), func_5(Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, 0u, 1u), arg_0.b.b, var_0.d.c), vec2<i32>(u_input.b, -57172), var_0.c, var_0.d, var_0.b.x), Struct_1(u_input.c, vec2<u32>(68205u, arg_0.b.b), false, var_0.c), 20152u, var_0.d.a).b, -var_0.e), Struct_1(~arg_0.a.x, ~vec2<u32>(110113u, arg_0.b.a.x), 0u == u_input.c, var_0.c), ~(~95271u), ~vec4<u32>(0u, 0u, var_0.a.b, 0u)).b, vec2<i32>(15260, var_0.c.x), var_0.c, func_9(select(abs(vec4<i32>(19697, 44045, var_0.e, 92098)), ~var_0.c, any(vec3<bool>(false, false, true))), func_5(var_0, Struct_1(var_0.a.a.x, vec2<u32>(u_input.c, 13489u), true, vec4<i32>(2147483647, -53825, var_0.e, var_0.b.x)), u_input.d << (0u % 32u), u_input.a), _wgslsmith_f_op_vec2_f32(-arg_0.b.c.zz), _wgslsmith_f_op_vec2_f32(floor(arg_0.b.c.yz))).b, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1, 52768), ~(-2147483648), ~(-2147483648))), Struct_1(var_0.d.a.x, u_input.a.wx, !(!(false == true)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-41614, var_0.e, u_input.b, var_0.c.x), vec4<i32>(49462, -1, 70532, 2147483647)) ^ _wgslsmith_clamp_vec4_i32(max(vec4<i32>(29518, 6972, var_0.c.x, u_input.b), var_0.c), var_0.c >> (var_0.d.a % vec4<u32>(32u)), vec4<i32>(-26790, 2147483647, 36481, var_0.e))), _wgslsmith_div_u32(select(var_0.d.a.x << (arg_0.b.a.x % 32u), 105129u, 1 < var_0.e) | func_4(), 1u), arg_0.b.a);
                let var_2 = min(~(~var_0.d.a.zz), var_1.b.a.zx) << (_wgslsmith_sub_vec2_u32(vec2<u32>(func_4(), 23986u), func_5(var_0, Struct_1(var_1.a.x, func_9(vec4<i32>(u_input.b, 0, u_input.b, 17750), Struct_4(vec2<u32>(var_1.a.x, 4294967295u), arg_0.b), vec2<f32>(var_0.a.c.x, 405.0), arg_0.b.c.yy).a, true | false, var_0.c), firstTrailingBit(reverseBits(48831u)), ~(~var_1.b.a)).b.a.xz) % vec2<u32>(32u));
                return Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(var_0.a.b, var_2.x, 42762u), func_4(), ~arg_0.a.x), var_0.d.a.zxw), func_3(Struct_1(arg_0.a.x, vec2<u32>(var_1.a.x & var_1.a.x, 1u), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), var_0.c), !vec2<bool>(!false, any(vec3<bool>(true, true, false))), var_0.c.zw).yy, any(select(!vec2<bool>(true, false), select(!vec2<bool>(false, false), vec2<bool>(false, false), !vec2<bool>(true, false)), !vec2<bool>(true, false))), ~vec4<i32>(u_input.b, var_0.b.x & 1, -u_input.b, 2147483647) >> (vec4<u32>(u_input.c, 0u, ~(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_2.x), var_1.b.a.yyz), var_1.b.a.x)) % vec4<u32>(32u)));
            }
            for (var var_0 = 39950; ; var_0 += 1) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                continue;
            }
            var var_0 = vec2<bool>(!(!(u_input.d >= arg_0.a.x) || !true), all(!vec3<bool>(arg_0.b.c.x == arg_0.b.c.x, !true, any(vec2<bool>(true, true)))));
            if (any(!select(vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.x, var_0.x & var_0.x, arg_0.b.c.x < arg_0.b.c.x), select(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false)), !vec4<bool>(true, false, true, false), true), vec4<bool>(false, all(vec4<bool>(false, var_0.x, true, var_0.x)), all(vec2<bool>(var_0.x, var_0.x)), true)))) {
                var var_1 = u_input.b;
                var_1 = _wgslsmith_mult_i32(-36370, 22715);
                let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.x, -101.0)))) - arg_0.b.c.zy);
                var_0 = select(!select(vec2<bool>(all(vec2<bool>(var_0.x, false)), var_0.x), vec2<bool>(var_0.x, 831.0 <= -1178.0), _wgslsmith_div_u32(4294967295u, 0u) >= ~1u), select(vec2<bool>(var_0.x, any(!vec3<bool>(var_0.x, var_0.x, var_0.x))), vec2<bool>(var_0.x, true), var_0.x), var_0.x);
            }
        }
        case 1: {
            for (var var_0 = -35617; var_0 < 2147483647; var_0 = u_input.b) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            }
            if (((!(!true) && false) || any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !vec3<bool>(false, false, true), !vec3<bool>(true, true, true)))) & !(!(false || all(vec3<bool>(false, false, false))))) {
                let var_0 = arg_0;
                let var_1 = arg_0;
                let var_2 = select(select(vec4<bool>(true, select(true || false, !true, all(vec2<bool>(false, true))), !(false || true), (false || true) & true), !vec4<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, true)), false, true), !vec4<bool>(all(vec4<bool>(false, true, true, true)), var_0.b.c.x != arg_0.b.c.x, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)))), vec4<bool>(!(any(vec3<bool>(false, false, false)) & (var_0.b.c.x < -726.0)), !(true & (10086u < var_1.b.b)), !(!any(vec4<bool>(false, false, true, false))), all(!vec2<bool>(true, false))), vec4<bool>(true, true, all(!vec3<bool>(true, true, true)), !any(!vec4<bool>(false, false, true, true))));
                return Struct_1(func_3(Struct_1(1u, func_3(Struct_1(arg_0.a.x, vec2<u32>(1u, 1u), var_2.x, vec4<i32>(2069, 21432, u_input.b, u_input.b)), vec2<bool>(var_2.x, var_2.x), vec2<i32>(u_input.b, -4557)).xz & (arg_0.b.a.xx << (vec2<u32>(arg_0.b.b, var_1.a.x) % vec2<u32>(32u))), 12095 <= (i32(-1) * -23576), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1, 2147483647) ^ vec4<i32>(u_input.b, 82326, -186, 1), -vec4<i32>(u_input.b, u_input.b, -6491, 7729))), select(var_2.wx, select(vec2<bool>(false, true), vec2<bool>(var_2.x, var_2.x), select(vec2<bool>(false, true), var_2.zw, vec2<bool>(false, true))), _wgslsmith_add_i32(1, 39143) < 50369), firstLeadingBit(abs(vec2<i32>(u_input.b, u_input.b))) | vec2<i32>(u_input.b, 16932)).x, ~var_0.b.a.zz, var_2.x, vec4<i32>(min(8454, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 32167, u_input.b), vec3<i32>(u_input.b, 2147483647, u_input.b)))), u_input.b, u_input.b, 13472));
            }
            var var_0 = arg_0.b.c.x;
            let var_1 = vec4<i32>(max(-1, u_input.b) << (4458u % 32u), -u_input.b ^ ~u_input.b, u_input.b, 1);
        }
        case 31479: {
            let var_0 = arg_0;
            switch (2147483647) {
                case 1: {
                }
                default: {
                }
            }
            if (1432.0 < 836.0) {
            }
            var var_1 = func_5(Struct_3(Struct_2(var_0.b.a, var_0.b.b, vec3<f32>(-443.0, _wgslsmith_f_op_f32(-arg_0.b.c.x), var_0.b.c.x)), ~vec2<i32>(-1, u_input.b), ~vec4<i32>(u_input.b, -u_input.b, countOneBits(2985), min(1, u_input.b)), func_9(~(~vec4<i32>(u_input.b, -2147483648, u_input.b, u_input.b)), Struct_4(arg_0.a, var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.c.zx + vec2<f32>(-2805.0, var_0.b.c.x))), arg_0.b.c.zz).b, 57350), Struct_1(~(~arg_0.a.x), select(countOneBits(var_0.a), func_9(vec4<i32>(u_input.b, -2147483648, -19621, u_input.b) & vec4<i32>(0, 2147483647, -2147483648, 1), func_5(Struct_3(Struct_2(u_input.a, 1u, vec3<f32>(-2047.0, -346.0, arg_0.b.c.x)), vec2<i32>(-1, u_input.b), vec4<i32>(21424, u_input.b, u_input.b, -12190), arg_0.b, u_input.b), Struct_1(19786u, vec2<u32>(u_input.c, var_0.b.a.x), true, vec4<i32>(u_input.b, 28356, 822, 27939)), 49960u, var_0.b.a), arg_0.b.c.xy, _wgslsmith_f_op_vec2_f32(-var_0.b.c.xy)).a, ~u_input.c <= (u_input.d | arg_0.a.x)), true, vec4<i32>(~u_input.b, i32(-1) * 0, _wgslsmith_dot_vec3_i32(vec3<i32>(-7346, u_input.b, -57459) << (vec3<u32>(38686u, 0u, 1u) % vec3<u32>(32u)), vec3<i32>(8965, u_input.b, u_input.b)), u_input.b)), 1u, _wgslsmith_div_vec4_u32(countOneBits(arg_0.b.a) >> (var_0.b.a % vec4<u32>(32u)), vec4<u32>(~arg_0.a.x, firstTrailingBit(6968u), 0u, 4294967295u)) << (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(arg_0.b.a, vec4<u32>(4294967295u, u_input.c, 10465u, u_input.d)) | ~var_0.b.a, min(u_input.a, vec4<u32>(var_0.b.b, u_input.a.x, u_input.a.x, arg_0.a.x)) | arg_0.b.a) % vec4<u32>(32u))).b;
        }
        default: {
            if (arg_0.b.c.x == _wgslsmith_f_op_f32(-2291.0 - 388.0)) {
            }
            for (var var_0 = 4619; any(vec4<bool>(all(!(!vec2<bool>(true, true))), !false, (~u_input.b >> (~arg_0.b.a.x % 32u)) > -1, true)); ) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                continue;
            }
            switch (-u_input.b) {
                case 45731: {
                    var var_0 = arg_0.a.x;
                    let var_1 = Struct_4(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_0.a, vec2<u32>(27711u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0.b.a, vec4<u32>(26434u, 24363u, 4294967295u, u_input.a.x)), func_2(u_input.b, arg_0.b).b)) ^ (~(~vec2<u32>(77803u, 25862u)) | firstTrailingBit(~vec2<u32>(4294967295u, 57515u))), func_2(u_input.b, func_2(reverseBits(_wgslsmith_sub_i32(u_input.b, 2147483647)), arg_0.b)));
                }
                case 1: {
                }
                default: {
                    let var_0 = arg_0;
                    let var_1 = select(vec3<u32>(~(~0u), firstLeadingBit(0u), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.b.b, 1u), func_4())), _wgslsmith_div_vec3_u32(select(var_0.b.a.xyx, vec3<u32>(var_0.a.x << (var_0.b.b % 32u), u_input.d, _wgslsmith_mult_u32(u_input.a.x, 11686u)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), var_0.b.a.zxz), !(!select(false && true, true, all(vec3<bool>(true, false, true)))));
                }
            }
            for (; ; ) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                continue;
            }
            if ((false || ((true && false) & !select(true, false, true))) && any(!vec3<bool>(true & true, !false, arg_0.b.c.x == -779.0))) {
                let var_0 = arg_0.b.a;
                let var_1 = 39481u | func_9(vec4<i32>(_wgslsmith_mult_i32(u_input.b, 1), u_input.b, -18346 >> (u_input.a.x % 32u), -(~16299)), Struct_4(func_2(abs(-8077), arg_0.b).a.zw, Struct_2(var_0, func_9(vec4<i32>(u_input.b, -30196, u_input.b, u_input.b), Struct_4(u_input.a.wx, arg_0.b), vec2<f32>(-692.0, arg_0.b.c.x), vec2<f32>(314.0, arg_0.b.c.x)).b.a.x, _wgslsmith_f_op_vec3_f32(arg_0.b.c - vec3<f32>(-177.0, arg_0.b.c.x, 1587.0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.c.x, 647.0) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1050.0, arg_0.b.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.x, -1082.0)))).a.x;
            }
        }
    }
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(176.0)), arg_0.b.c.x);
    for (var var_1: i32; var_1 == 2147483647; var_1 = firstTrailingBit(u_input.b)) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        var_1 = _wgslsmith_div_i32(2147483647, _wgslsmith_dot_vec2_i32(-vec2<i32>(2076, -1), abs(~select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, false)))));
        let var_2 = arg_0.a.x;
    }
    for (; !(!false); ) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        var var_1 = ~max(select(vec2<u32>(50148u >> (arg_0.b.b % 32u), 24730u & arg_0.b.a.x), arg_0.b.a.zw, !(false || true)), func_3(Struct_1(1u, arg_0.a, true, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), !vec2<bool>(false, true), -vec2<i32>(u_input.b, 1)).zx ^ ~func_5(Struct_3(Struct_2(u_input.a, 42260u, vec3<f32>(1000.0, arg_0.b.c.x, var_0.x)), vec2<i32>(u_input.b, u_input.b), vec4<i32>(u_input.b, 1, -30211, 2147483647), arg_0.b, 2147483647), Struct_1(4294967295u, u_input.a.yy, false, vec4<i32>(13890, 4440, 10998, -26436)), u_input.c, vec4<u32>(arg_0.b.a.x, u_input.d, 32208u, 14138u)).a);
        let var_2 = 1u;
    }
    return Struct_1(~arg_0.b.a.x, ~vec2<u32>(_wgslsmith_clamp_u32(u_input.d, arg_0.a.x, 17367u), ~(~53098u)), all(select(!vec3<bool>(false, true, true), vec3<bool>(!true, !true, false), !any(vec4<bool>(false, false, false, false)))), vec4<i32>(0, u_input.b, -_wgslsmith_mod_i32(firstLeadingBit(u_input.b), u_input.b << (4703u % 32u)), firstLeadingBit(u_input.b)));
}

fn func_10(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> bool {
    switch (-u_input.b) {
        case -29081: {
            var var_0 = u_input.a.wyy;
            var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(789.0)) + -1000.0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-1914.0))))))));
        }
        case 2147483647: {
            switch (-1) {
                case 1: {
                    let var_0 = _wgslsmith_f_op_f32(step(429.0, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(186.0)) + 1153.0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))))))));
                }
                default: {
                    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784.0 - 1320.0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1483.0, -120.0) * _wgslsmith_f_op_f32(-544.0 * 206.0)), arg_2.c != true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(761.0))))), -101.0, _wgslsmith_f_op_f32(-172.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1185.0 - -406.0), 297.0, arg_0)))));
                    var var_1 = Struct_3(func_9(min(select(arg_2.d, arg_2.d, false), vec4<i32>(4848, 2147483647, arg_2.d.x, 0)) >> (~vec4<u32>(1u, u_input.a.x, u_input.c, 1u) % vec4<u32>(32u)), Struct_4(vec2<u32>(_wgslsmith_add_u32(0u, 0u), 0u >> (arg_1 % 32u)), func_9(arg_2.d, Struct_4(arg_2.b, Struct_2(vec4<u32>(arg_1, 34776u, 0u, arg_1), arg_2.b.x, vec3<f32>(-1515.0, -151.0, 1289.0))), vec2<f32>(var_0.x, 168.0), _wgslsmith_f_op_vec2_f32(-var_0.wz)).b), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2261.0 - 292.0), var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1266.0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(593.0, var_0.x))).b, select(vec2<i32>(-abs(arg_2.d.x), ~1), arg_2.d.xy, !vec2<bool>(arg_2.c, !false)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, arg_2.d.x, u_input.b, -arg_2.d.x), _wgslsmith_add_vec4_i32(~(~arg_2.d), arg_2.d)), Struct_2(func_9(arg_2.d, Struct_4(~vec2<u32>(arg_2.b.x, u_input.a.x), func_5(Struct_3(Struct_2(u_input.a, u_input.d, vec3<f32>(var_0.x, 681.0, -349.0)), arg_2.d.yw, arg_2.d, Struct_2(u_input.a, 0u, vec3<f32>(-1695.0, var_0.x, var_0.x)), u_input.b), arg_2, arg_1, u_input.a).b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.wy)), _wgslsmith_f_op_vec2_f32(var_0.zw * vec2<f32>(var_0.x, -314.0))).b.a, 21892u, var_0.zwy), _wgslsmith_dot_vec4_i32(reverseBits(max(vec4<i32>(-1, -1, -2147483648, arg_2.d.x) ^ vec4<i32>(u_input.b, -30424, u_input.b, -14100), _wgslsmith_mod_vec4_i32(arg_2.d, vec4<i32>(arg_2.d.x, -42496, -2147483648, u_input.b)))), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(1, u_input.b, u_input.b), ~arg_2.d.zyw), ~_wgslsmith_clamp_i32(-33683, -49980, 2147483647), _wgslsmith_add_i32(abs(-3278), 2147483647), ~arg_2.d.x)));
                }
            }
            if (arg_0) {
                let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(631.0, -356.0)), _wgslsmith_f_op_f32(sign(-720.0))), 1308.0)) + _wgslsmith_f_op_f32(ceil(934.0))));
                let var_1 = 16074u;
                var var_2 = arg_2;
                let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(152.0))), _wgslsmith_f_op_f32(-896.0))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000.0), 112.0) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-441.0, -2068.0), vec2<f32>(-658.0, 323.0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -442.0))))))));
            }
            let var_0 = func_9(select(arg_2.d << (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_2.d.x, -17538, 2147483647, arg_2.d.x), vec4<i32>(u_input.b, u_input.b, u_input.b, 0)), -select(arg_2.d, arg_2.d, true)), !(!arg_2.c)), func_5(Struct_3(Struct_2(vec4<u32>(arg_2.a, u_input.d, u_input.c, u_input.d), 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(686.0, 418.0, 361.0) * vec3<f32>(-405.0, -1029.0, -1408.0))), vec2<i32>(arg_2.d.x, max(arg_2.d.x, arg_2.d.x)), vec4<i32>(u_input.b & -87341, _wgslsmith_mult_i32(-36341, 18109), ~arg_2.d.x, -34038 >> (28367u % 32u)), func_5(Struct_3(Struct_2(u_input.a, u_input.a.x, vec3<f32>(-767.0, -893.0, -262.0)), vec2<i32>(arg_2.d.x, u_input.b), arg_2.d, Struct_2(u_input.a, arg_1, vec3<f32>(-1114.0, 248.0, -204.0)), u_input.b), arg_2, ~arg_1, vec4<u32>(arg_1, 4294967295u, u_input.c, 82017u)).b, 0), arg_2, ~_wgslsmith_div_u32(arg_2.a, ~0u), ~(~(~u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1730.0, -1095.0), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2357.0, 138.0))), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(927.0, 499.0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2213.0, 888.0))))));
            loop {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                continue;
            }
        }
        case 1: {
            switch (i32(-1) * -max((u_input.b >> (arg_2.b.x % 32u)) | -u_input.b, reverseBits(arg_2.d.x))) {
                case -2147483648: {
                    var var_0 = !select(!select(!vec2<bool>(false, true), !vec2<bool>(true, arg_2.c), true), select(vec2<bool>(!true, any(vec3<bool>(arg_0, false, true))), select(vec2<bool>(arg_2.c, true), select(vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(arg_0, false), vec2<bool>(false, false)), vec2<bool>(arg_2.c, true)), !(!vec2<bool>(true, true))), true);
                    var var_1 = select(vec2<bool>(select(!(false && true), false, any(vec4<bool>(var_0.x, arg_0, arg_0, true))), !(!(-265.0 == 1386.0))), select(vec2<bool>(16987u <= select(69335u, arg_1, var_0.x), !(false | false)), !select(vec2<bool>(true, false), vec2<bool>(false, arg_0), select(vec2<bool>(arg_2.c, true), vec2<bool>(var_0.x, true), vec2<bool>(arg_2.c, false))), select(select(vec2<bool>(true, true), vec2<bool>(arg_2.c, var_0.x), select(vec2<bool>(arg_0, false), vec2<bool>(true, var_0.x), var_0.x)), vec2<bool>(any(vec3<bool>(false, arg_0, false)), true), !(!vec2<bool>(true, false)))), false);
                    var var_2 = ~_wgslsmith_add_vec4_u32(u_input.a, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 4294967295u, u_input.d, 4294967295u), u_input.a)));
                    var var_3 = _wgslsmith_f_op_f32(-1482.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2168.0 + -480.0)))) - -1325.0));
                    let var_4 = !(!(!select(!vec2<bool>(false, arg_2.c), vec2<bool>(false, var_1.x), all(vec3<bool>(false, arg_0, true)))));
                }
                default: {
                    let var_0 = func_9(arg_2.d, func_5(Struct_3(func_5(Struct_3(Struct_2(vec4<u32>(arg_1, 4294967295u, arg_1, arg_1), 26312u, vec3<f32>(1275.0, -1062.0, -684.0)), arg_2.d.xz, vec4<i32>(arg_2.d.x, u_input.b, u_input.b, arg_2.d.x), Struct_2(u_input.a, arg_2.a, vec3<f32>(-608.0, 226.0, 265.0)), u_input.b), Struct_1(39269u, arg_2.b, arg_2.c, vec4<i32>(1, arg_2.d.x, 1, arg_2.d.x)), 59221u, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 84057u, 64917u, 0u), u_input.a)).b, _wgslsmith_sub_vec2_i32(~arg_2.d.xz, abs(vec2<i32>(u_input.b, arg_2.d.x))), -vec4<i32>(u_input.b, 31146, u_input.b, -13464), func_5(Struct_3(Struct_2(vec4<u32>(u_input.d, arg_2.b.x, arg_2.a, 0u), arg_1, vec3<f32>(1000.0, 235.0, -2005.0)), vec2<i32>(arg_2.d.x, u_input.b), vec4<i32>(1, u_input.b, u_input.b, u_input.b), Struct_2(vec4<u32>(u_input.d, arg_2.b.x, 0u, arg_1), 1u, vec3<f32>(114.0, -310.0, 205.0)), 22773), arg_2, _wgslsmith_div_u32(arg_2.b.x, arg_1), vec4<u32>(arg_2.b.x, arg_2.a, 0u, 17246u)).b, ~arg_2.d.x), func_1(Struct_4(vec2<u32>(arg_2.a, u_input.c), Struct_2(vec4<u32>(1u, 0u, 13121u, 25017u), u_input.a.x, vec3<f32>(1476.0, 579.0, 617.0)))), _wgslsmith_mult_u32(~4294967295u, 4294967295u | (u_input.d | 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(22876u, 1u, arg_1, u_input.c) | vec4<u32>(32694u, 1u, arg_1, u_input.d), u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656.0 * 656.0)))), _wgslsmith_div_f32(-532.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-707.0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-180.0, 1121.0) - vec2<f32>(-1546.0, -103.0)), vec2<f32>(330.0, 1426.0), !vec2<bool>(false, arg_2.c)))))).b;
                    var var_1 = vec2<i32>(~_wgslsmith_add_i32(-2147483648, ~_wgslsmith_dot_vec3_i32(vec3<i32>(50799, u_input.b, arg_2.d.x), arg_2.d.yzz)), 14183);
                    let var_2 = vec3<bool>(any(select(vec3<bool>(true, false, false), select(vec3<bool>(arg_2.c, arg_0, arg_2.c), vec3<bool>(arg_2.c, arg_2.c, true), vec3<bool>(false, arg_0, arg_0)), vec3<bool>(arg_2.c, false, arg_2.c))) & false, all(!select(vec2<bool>(arg_0, arg_2.c), select(vec2<bool>(false, true), vec2<bool>(false, arg_2.c), true), arg_0)), all(vec2<bool>(false, all(!vec4<bool>(arg_2.c, arg_2.c, true, arg_2.c)))));
                    var var_3 = select(!vec4<bool>(!var_2.x != !true, true, arg_0, !true), !vec4<bool>(false, arg_0, false, !(true | arg_2.c)), select(!vec4<bool>(all(vec4<bool>(var_2.x, arg_2.c, arg_0, false)), var_0.b >= 17311u, !arg_2.c, !var_2.x), !select(vec4<bool>(arg_2.c, arg_0, false, true), !vec4<bool>(true, false, false, true), arg_0), !(var_0.a.x <= arg_1)));
                    var_3 = select(select(!(!vec4<bool>(true, false, false, var_3.x)), vec4<bool>(true, true, !arg_0, var_3.x), true), select(select(select(select(vec4<bool>(var_3.x, var_2.x, false, var_3.x), vec4<bool>(var_2.x, true, false, arg_2.c), vec4<bool>(true, arg_0, var_3.x, true)), !vec4<bool>(arg_0, true, false, var_3.x), !vec4<bool>(var_2.x, var_2.x, false, true)), select(!vec4<bool>(var_2.x, false, false, false), !vec4<bool>(arg_0, false, false, false), vec4<bool>(false, true, arg_2.c, var_2.x)), true || false), vec4<bool>(func_8(Struct_4(var_0.a.zx, Struct_2(vec4<u32>(arg_1, arg_1, arg_2.b.x, arg_1), u_input.a.x, vec3<f32>(-273.0, var_0.c.x, var_0.c.x))), var_0.c.x, vec4<f32>(152.0, -201.0, -1000.0, 1441.0)) > (-60753 << (arg_1 % 32u)), false, true, !(!arg_0)), 1u != 0u), any(vec4<bool>(all(vec2<bool>(var_3.x, arg_2.c)) | !true, any(select(vec4<bool>(true, false, arg_2.c, true), vec4<bool>(false, var_3.x, var_2.x, true), arg_0)), arg_2.c, true)));
                }
            }
            if (!arg_2.c) {
                let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(min(abs(u_input.a), vec4<u32>(arg_2.b.x, arg_1, u_input.d, arg_1) ^ vec4<u32>(34278u, arg_2.a, 46027u, arg_1)), ~vec4<u32>(121139u, u_input.c, arg_2.a, 4294967295u) ^ _wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), ~(~u_input.a.yw), false, vec4<i32>(-2147483648, 0 | (arg_2.d.x ^ abs(arg_2.d.x)), _wgslsmith_dot_vec2_i32(func_1(func_5(Struct_3(Struct_2(vec4<u32>(25656u, 0u, arg_1, arg_1), arg_2.b.x, vec3<f32>(-463.0, -1183.0, -144.0)), arg_2.d.ww, arg_2.d, Struct_2(u_input.a, arg_1, vec3<f32>(147.0, 412.0, -301.0)), u_input.b), Struct_1(u_input.d, u_input.a.xz, true, vec4<i32>(arg_2.d.x, 19869, -11803, -41869)), arg_2.b.x, vec4<u32>(4294967295u, 4294967295u, 84277u, 0u))).d.xz, arg_2.d.yw), u_input.b));
            }
        }
        case -1: {
            var var_0 = func_2(-8960, Struct_2(abs(vec4<u32>(~arg_2.a, 1u, firstLeadingBit(arg_1), ~1u)), func_6(vec2<bool>(!false, !false), _wgslsmith_clamp_u32(func_9(arg_2.d, Struct_4(vec2<u32>(u_input.d, arg_2.b.x), Struct_2(u_input.a, arg_1, vec3<f32>(-1305.0, 796.0, -546.0))), vec2<f32>(-256.0, 1206.0), vec2<f32>(854.0, -643.0)).b.a.x, ~4294967295u, _wgslsmith_add_u32(44881u, arg_1)), func_9(max(vec4<i32>(2147483647, 46391, u_input.b, u_input.b), arg_2.d), func_5(Struct_3(Struct_2(u_input.a, 65678u, vec3<f32>(-237.0, 976.0, -844.0)), vec2<i32>(arg_2.d.x, arg_2.d.x), arg_2.d, Struct_2(vec4<u32>(25291u, u_input.a.x, u_input.d, 1u), arg_2.a, vec3<f32>(-927.0, -1677.0, -591.0)), 18502), arg_2, u_input.d, u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-524.0, -458.0) + vec2<f32>(548.0, -1569.0)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1212.0, 500.0), vec2<f32>(-191.0, -404.0), false))), !(!vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(384.0, 1000.0, 951.0) + vec3<f32>(757.0, 131.0, -1664.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(120.0, -1000.0, 2283.0) - vec3<f32>(-223.0, 132.0, -1346.0))) - _wgslsmith_f_op_vec3_f32(min(func_5(Struct_3(Struct_2(vec4<u32>(4294967295u, 4294967295u, u_input.c, 3432u), 4294967295u, vec3<f32>(213.0, 508.0, -883.0)), arg_2.d.zy, vec4<i32>(0, arg_2.d.x, 0, arg_2.d.x), Struct_2(vec4<u32>(u_input.a.x, arg_2.b.x, 0u, arg_1), 78631u, vec3<f32>(-1568.0, 1208.0, -1456.0)), arg_2.d.x), arg_2, 4294967295u, u_input.a).b.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1955.0, -543.0, -559.0)))))));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                break;
            }
            let var_0 = !(func_1(func_9(vec4<i32>(arg_2.d.x, u_input.b, -54716, -1), Struct_4(arg_2.b, Struct_2(vec4<u32>(19470u, arg_2.b.x, arg_2.a, u_input.d), arg_2.b.x, vec3<f32>(364.0, 412.0, -275.0))), vec2<f32>(-1102.0, 279.0), vec2<f32>(-353.0, -478.0))).c & all(select(vec4<bool>(arg_0, false, arg_2.c, false), vec4<bool>(false, arg_2.c, arg_0, arg_2.c), arg_2.c))) || (!arg_0 || !true);
            if (true) {
                return arg_0;
            }
            switch (_wgslsmith_mult_i32(~(firstLeadingBit(u_input.b) | 22387), firstLeadingBit(-1))) {
                default: {
                    var var_1 = arg_2;
                }
            }
        }
    }
    var var_0 = func_5(Struct_3(Struct_2(vec4<u32>(u_input.c, _wgslsmith_div_u32(78101u, 31634u), arg_2.a, abs(arg_2.b.x)), 19181u << (abs(u_input.d) % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000.0, 1570.0, -180.0)))))), -firstLeadingBit(vec2<i32>(38976, arg_2.d.x)), vec4<i32>(arg_2.d.x, _wgslsmith_div_i32(-3376, arg_2.d.x), -23860, ~_wgslsmith_dot_vec3_i32(arg_2.d.xww, vec3<i32>(arg_2.d.x, arg_2.d.x, -2147483648))), func_2(-34425, Struct_2(select(u_input.a, u_input.a, vec4<bool>(arg_2.c, true, arg_0, true)), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-419.0, 477.0, -1243.0)))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-arg_2.d.x, -u_input.b), u_input.b)), func_1(Struct_4(abs(~arg_2.b), Struct_2(vec4<u32>(u_input.d, 50379u, 35444u, 54107u), func_2(43365, Struct_2(vec4<u32>(4294967295u, u_input.a.x, arg_2.b.x, 30570u), 23996u, vec3<f32>(1218.0, -758.0, -716.0))).a.x, vec3<f32>(-2020.0, -1449.0, -1029.0)))), ~_wgslsmith_sub_u32(~(arg_2.a | 3525u), 1u), select(func_7(func_9(arg_2.d, Struct_4(u_input.a.ww, Struct_2(vec4<u32>(u_input.c, u_input.a.x, 1u, arg_1), arg_1, vec3<f32>(960.0, 2116.0, 1295.0))), vec2<f32>(179.0, 295.0), vec2<f32>(-1000.0, -1759.0)), any(vec2<bool>(arg_2.c, false))) >> (u_input.a % vec4<u32>(32u)), min(func_2(-2147483648, Struct_2(vec4<u32>(1u, arg_2.a, arg_2.b.x, arg_1), u_input.c, vec3<f32>(1951.0, -342.0, 123.0))).a << (u_input.a % vec4<u32>(32u)), func_7(Struct_4(arg_2.b, Struct_2(u_input.a, arg_2.a, vec3<f32>(850.0, 363.0, 2453.0))), arg_0 & arg_2.c)), !select(select(vec4<bool>(arg_2.c, arg_2.c, true, false), vec4<bool>(false, arg_2.c, false, true), vec4<bool>(false, false, true, false)), !vec4<bool>(true, true, arg_2.c, arg_0), !vec4<bool>(true, true, arg_0, arg_2.c)))).b;
    switch (-min(1 | (firstLeadingBit(-1) & ~48914), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -arg_2.d.x), _wgslsmith_mult_vec2_i32(arg_2.d.xy, vec2<i32>(u_input.b, 4916))))) {
        case 32798: {
            if (arg_2.c) {
                var_0 = Struct_2(vec4<u32>(func_4(), firstLeadingBit(arg_1), 58622u, 0u), 38515u & ~(~arg_2.a), _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * 2166.0) * _wgslsmith_f_op_f32(sign(1119.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718.0 + 442.0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(623.0, -1000.0)))));
                var var_1 = func_5(Struct_3(func_2(_wgslsmith_mod_i32(arg_2.d.x, u_input.b), Struct_2(vec4<u32>(u_input.d, arg_2.a, 0u, 9793u), ~arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)))), arg_2.d.zy, arg_2.d, func_9(reverseBits(vec4<i32>(u_input.b, 35186, 0, arg_2.d.x)) | -arg_2.d, Struct_4(arg_2.b, func_5(Struct_3(Struct_2(var_0.a, 39155u, var_0.c), arg_2.d.xx, arg_2.d, Struct_2(u_input.a, 61479u, vec3<f32>(-1023.0, 1000.0, -1000.0)), u_input.b), arg_2, var_0.a.x, vec4<u32>(var_0.b, 0u, var_0.b, 9914u)).b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.zx)), vec2<f32>(_wgslsmith_f_op_f32(1780.0 - 269.0), var_0.c.x)).b, u_input.b), arg_2, func_4(), vec4<u32>(min(firstTrailingBit(firstTrailingBit(u_input.c)), 5523u), ~(~_wgslsmith_mod_u32(var_0.a.x, arg_2.b.x)), arg_1, 14159u)).b;
                let var_2 = func_9(_wgslsmith_mult_vec4_i32(vec4<i32>(18343 << (var_0.a.x % 32u), arg_2.d.x, arg_2.d.x, _wgslsmith_clamp_i32(u_input.b, -11453, -16087)), -vec4<i32>(0, u_input.b, -2147483648, -2147483648)) | ~_wgslsmith_mod_vec4_i32(~vec4<i32>(22508, arg_2.d.x, arg_2.d.x, u_input.b), vec4<i32>(u_input.b, arg_2.d.x, 1, 7354)), Struct_4(firstTrailingBit(vec2<u32>(1u, var_0.b)), Struct_2(vec4<u32>(_wgslsmith_div_u32(u_input.d, 1u), func_6(vec2<bool>(true, arg_2.c), u_input.c, Struct_4(vec2<u32>(u_input.d, 1u), Struct_2(vec4<u32>(0u, 0u, 4294967295u, arg_1), 1u, vec3<f32>(var_0.c.x, var_1.c.x, var_0.c.x))), vec3<bool>(arg_2.c, true, true)), var_0.a.x, var_0.b), var_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, 107.0, var_1.c.x), _wgslsmith_f_op_vec3_f32(-var_1.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.c.yy)), var_1.c.yz)) - _wgslsmith_f_op_vec2_f32(step(var_0.c.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.c.xy, vec2<f32>(var_1.c.x, 2647.0)))))), vec2<f32>(-879.0, _wgslsmith_f_op_f32(-func_9(vec4<i32>(arg_2.d.x, u_input.b, u_input.b, 2147483647) ^ vec4<i32>(0, arg_2.d.x, -2147483648, arg_2.d.x), func_9(vec4<i32>(19612, -1, u_input.b, 46986), Struct_4(vec2<u32>(arg_2.a, 4294967295u), Struct_2(var_0.a, var_1.a.x, var_1.c)), var_0.c.xy, var_0.c.xx), func_5(Struct_3(Struct_2(vec4<u32>(var_0.b, 30939u, 113987u, 7200u), 51929u, vec3<f32>(-462.0, -382.0, var_1.c.x)), vec2<i32>(u_input.b, -2147483648), vec4<i32>(-9333, -2147483648, 2147483647, -1), Struct_2(vec4<u32>(var_1.b, var_1.b, 1u, var_1.b), u_input.c, var_1.c), 0), arg_2, 20736u, vec4<u32>(0u, 39204u, 4685u, 0u)).b.c.xy, _wgslsmith_f_op_vec2_f32(vec2<f32>(536.0, var_0.c.x) + vec2<f32>(var_0.c.x, 480.0))).b.c.x))).b.a;
            }
            let var_1 = ~vec4<u32>(4294967295u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x | ~u_input.c, ~(~51229u)), arg_1 | ~var_0.b);
        }
        case -1: {
            var var_1 = func_1(Struct_4(var_0.a.yx, Struct_2(vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.c), arg_2.b.x, var_0.b, ~1u), (4294967295u >> (arg_1 % 32u)) >> (0u % 32u), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(2130.0, 870.0), -627.0))));
            switch (_wgslsmith_mod_i32(-18419, -2147483648)) {
                case 0: {
                    let var_2 = var_1.c;
                }
                case -18813: {
                    var var_2 = var_1.d;
                    let var_3 = firstTrailingBit(1u);
                    var var_4 = ~(var_1.d.x | u_input.b);
                    var_1 = func_1(Struct_4(vec2<u32>(_wgslsmith_mult_u32(u_input.c, 1u) >> (~var_1.a % 32u), _wgslsmith_mult_u32(49293u, ~arg_2.b.x)), Struct_2(~(u_input.a >> (vec4<u32>(u_input.a.x, 0u, var_0.a.x, 61095u) % vec4<u32>(32u))), 44642u, var_0.c)));
                    var var_5 = arg_2.c;
                }
                default: {
                    var var_2 = !any(!(!select(vec4<bool>(var_1.c, arg_0, true, true), vec4<bool>(arg_0, false, true, true), arg_0)));
                    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-507.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(911.0 * func_9(vec4<i32>(4767, var_1.d.x, var_1.d.x, 2147483647), Struct_4(u_input.a.wx, Struct_2(var_0.a, var_1.a, var_0.c)), vec2<f32>(1751.0, -1048.0), var_0.c.zx).b.c.x) * var_0.c.x))));
                    var var_4 = min(var_1.b, _wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, _wgslsmith_sub_u32(arg_2.a, 6575u)), var_1.b, true), ~vec2<u32>(_wgslsmith_mult_u32(4347u, 61355u), func_5(Struct_3(Struct_2(u_input.a, 106138u, var_0.c), arg_2.d.ww, vec4<i32>(arg_2.d.x, -946, 1, u_input.b), Struct_2(var_0.a, 4294967295u, vec3<f32>(-427.0, var_0.c.x, 377.0)), u_input.b), Struct_1(arg_2.a, var_1.b, false, vec4<i32>(-28941, arg_2.d.x, -1, u_input.b)), arg_2.b.x, vec4<u32>(1u, arg_1, arg_2.b.x, 1u)).a.x)));
                    let var_5 = Struct_4(~arg_2.b | ~(vec2<u32>(arg_2.b.x, 4294967295u) & countOneBits(vec2<u32>(4294967295u, 1u))), Struct_2(var_0.a, u_input.a.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + var_0.c)), var_0.c))));
                    let var_6 = arg_2.d;
                }
            }
            switch (abs(arg_2.d.x) | -2147483648) {
                case 2147483647: {
                    var var_2 = func_5(Struct_3(func_9(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.d.x, 21991, u_input.b, 1), ~arg_2.d), func_5(Struct_3(Struct_2(var_0.a, var_0.b, var_0.c), vec2<i32>(arg_2.d.x, 1), vec4<i32>(u_input.b, var_1.d.x, u_input.b, arg_2.d.x), Struct_2(vec4<u32>(1u, 1u, var_1.a, 1u), 55619u, var_0.c), var_1.d.x), func_1(Struct_4(var_1.b, Struct_2(var_0.a, arg_1, vec3<f32>(-1057.0, -277.0, var_0.c.x)))), func_5(Struct_3(Struct_2(vec4<u32>(var_0.b, 0u, u_input.a.x, var_1.b.x), u_input.c, vec3<f32>(var_0.c.x, 1000.0, 1000.0)), arg_2.d.yy, vec4<i32>(u_input.b, var_1.d.x, arg_2.d.x, -37984), Struct_2(u_input.a, u_input.c, var_0.c), -27285), Struct_1(arg_1, vec2<u32>(0u, arg_1), var_1.c, vec4<i32>(var_1.d.x, arg_2.d.x, var_1.d.x, arg_2.d.x)), 1u, u_input.a).a.x, vec4<u32>(34016u, u_input.a.x, var_1.a, 4294967295u) | u_input.a), var_0.c.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1254.0, var_0.c.x))).b, vec2<i32>(u_input.b, countOneBits(arg_2.d.x) << (~var_0.a.x % 32u)), firstLeadingBit(_wgslsmith_sub_vec4_i32(arg_2.d, vec4<i32>(15758, u_input.b, 2147483647, 1))), func_5(Struct_3(Struct_2(vec4<u32>(u_input.c, arg_2.a, var_0.a.x, var_0.a.x), 0u, vec3<f32>(-1404.0, -755.0, -321.0)), reverseBits(vec2<i32>(-15549, -2147483648)), var_1.d, Struct_2(var_0.a, u_input.c, vec3<f32>(252.0, var_0.c.x, 472.0)), -27865 ^ 0), arg_2, _wgslsmith_div_u32(~1u, 0u), _wgslsmith_add_vec4_u32(var_0.a, ~u_input.a)).b, u_input.b), Struct_1(arg_1 << (reverseBits(arg_1) % 32u), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~arg_2.b, _wgslsmith_add_vec2_u32(var_1.b, vec2<u32>(82855u, var_1.a))), vec2<u32>(func_2(arg_2.d.x, Struct_2(var_0.a, 0u, var_0.c)).b, u_input.a.x)), any(!vec3<bool>(arg_2.c, true, arg_0)), vec4<i32>(~var_1.d.x, -max(-1, var_1.d.x), -2924, -1 | 36763)), 0u, u_input.a & var_0.a).b.c.xy;
                }
                case -5677: {
                    var var_2 = arg_2.d;
                    let var_3 = _wgslsmith_mult_u32(~130272u, (arg_1 ^ var_0.b) << (_wgslsmith_mod_u32(var_1.a, var_0.b) % 32u));
                    var var_4 = Struct_3(func_5(Struct_3(func_5(Struct_3(Struct_2(vec4<u32>(var_1.b.x, var_1.a, var_0.a.x, u_input.d), 23855u, var_0.c), vec2<i32>(var_1.d.x, -4225), var_1.d, Struct_2(u_input.a, 48971u, var_0.c), 12853), func_1(Struct_4(vec2<u32>(1u, 0u), Struct_2(vec4<u32>(arg_2.b.x, var_0.b, 0u, var_1.b.x), 28699u, vec3<f32>(-1104.0, -1218.0, var_0.c.x)))), var_3, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_2.b.x, var_1.a, var_1.a), vec4<u32>(u_input.a.x, var_3, 62440u, 25887u), u_input.a)).b, ~var_1.d.xz, var_1.d, Struct_2(vec4<u32>(4294967295u, var_3, 1u, 40777u), _wgslsmith_div_u32(var_0.b, 0u), vec3<f32>(-106.0, var_0.c.x, var_0.c.x)), -1), Struct_1(arg_1, ~u_input.a.wx, any(vec3<bool>(arg_2.c, var_1.c, arg_0)), ~(~var_1.d)), var_3, func_7(Struct_4(vec2<u32>(28226u, var_0.b), func_5(Struct_3(Struct_2(var_0.a, var_3, vec3<f32>(var_0.c.x, -543.0, var_0.c.x)), var_2.yy, vec4<i32>(var_2.x, u_input.b, arg_2.d.x, -11804), Struct_2(var_0.a, var_1.b.x, vec3<f32>(var_0.c.x, var_0.c.x, 619.0)), arg_2.d.x), Struct_1(arg_1, u_input.a.zy, true, vec4<i32>(5004, 1, 97349, -923)), 0u, vec4<u32>(var_0.a.x, var_1.a, 65358u, 4294967295u)).b), all(!vec2<bool>(arg_0, true)))).b, abs(_wgslsmith_mult_vec2_i32(var_1.d.zy, arg_2.d.yx)), ~func_1(func_5(Struct_3(Struct_2(vec4<u32>(var_3, u_input.c, 4294967295u, 81327u), 21184u, vec3<f32>(1211.0, -476.0, var_0.c.x)), vec2<i32>(arg_2.d.x, var_1.d.x), arg_2.d, Struct_2(var_0.a, var_3, vec3<f32>(1047.0, var_0.c.x, var_0.c.x)), 2147483647), arg_2, 51852u, vec4<u32>(0u, arg_1, var_1.a, 1u))).d, Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(~arg_1, 0u, func_7(Struct_4(vec2<u32>(arg_2.a, 60554u), Struct_2(vec4<u32>(var_1.b.x, 4294967295u, 15339u, var_0.a.x), 1u, vec3<f32>(var_0.c.x, 200.0, 908.0))), true).x, 0u), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.d, arg_1), countOneBits(1u), var_3, _wgslsmith_div_u32(var_3, var_3))), 36853u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, 1478.0), vec3<f32>(var_0.c.x, -648.0, var_0.c.x)) * _wgslsmith_f_op_vec3_f32(-var_0.c)) + var_0.c)), -1);
                }
                default: {
                }
            }
        }
        default: {
            var var_1 = var_0.c.x;
            return !any(!vec3<bool>(arg_2.c, all(vec2<bool>(arg_0, arg_2.c)), arg_2.c));
        }
    }
    let var_1 = var_0.c;
    if (arg_0) {
        var var_2 = func_2(u_input.b ^ ~(~(arg_2.d.x & u_input.b)), Struct_2(u_input.a, ~func_2(-1, Struct_2(vec4<u32>(4294967295u, var_0.b, arg_1, u_input.d), var_0.b, vec3<f32>(var_1.x, var_1.x, 273.0))).b ^ func_4(), func_9(arg_2.d, Struct_4(_wgslsmith_mult_vec2_u32(arg_2.b, var_0.a.wy), Struct_2(u_input.a, var_0.a.x, vec3<f32>(var_1.x, -497.0, 228.0))), var_1.xz, _wgslsmith_f_op_vec2_f32(max(var_1.zy, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, 1464.0), var_1.xx)))).b.c));
    }
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        if (true || false) {
            return;
        }
        let var_0 = Struct_4(u_input.a.yy, Struct_2(firstTrailingBit(vec4<u32>(select(13114u, u_input.d, true), ~u_input.d, 115469u, 44894u)), 38711u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-599.0, 416.0, -498.0) + vec3<f32>(1266.0, 186.0, -116.0))))))));
        loop {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            continue;
        }
        let var_1 = -5646;
        switch (select(firstLeadingBit(firstTrailingBit(-2147483648)), 0, all(vec4<bool>(true, true, func_10(!true, u_input.d >> (var_0.b.a.x % 32u), func_1(var_0)), true)))) {
            case 30599: {
                break;
            }
            case 1: {
                let var_2 = u_input.b != ((_wgslsmith_mod_i32(u_input.b, ~u_input.b) | ~(-26739 & u_input.b)) << (55828u % 32u));
                continue;
            }
            case -1: {
                break;
            }
            default: {
                var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.b.c.zx, func_9(abs(~vec4<i32>(u_input.b, u_input.b, -27979, var_1)), Struct_4(vec2<u32>(var_0.a.x, var_0.a.x), var_0.b), vec2<f32>(var_0.b.c.x, var_0.b.c.x), var_0.b.c.zx).b.c.zx)));
                var_2 = vec2<f32>(_wgslsmith_f_op_f32(1828.0 - var_0.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1288.0 * var_0.b.c.x))))));
            }
        }
    }
    let var_0 = Struct_3(Struct_2(u_input.a, u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(582.0, 1382.0, 745.0))))), vec2<i32>(~u_input.b >> (func_6(vec2<bool>(true, true), min(0u, 0u), func_5(Struct_3(Struct_2(u_input.a, u_input.a.x, vec3<f32>(726.0, 1027.0, 102.0)), vec2<i32>(u_input.b, u_input.b), vec4<i32>(-16572, 22024, 2147483647, 35858), Struct_2(vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), 36302u, vec3<f32>(1967.0, -474.0, 961.0)), u_input.b), Struct_1(u_input.c, vec2<u32>(0u, 4294967295u), true, vec4<i32>(67848, -7091, 36931, u_input.b)), 1762u, u_input.a), !vec3<bool>(true, false, false)) % 32u), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647, -2147483648)), select(vec2<i32>(0, u_input.b) & vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, u_input.b), !false))), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, -1)), vec4<i32>(u_input.b, -2147483648, u_input.b, -33919) | vec4<i32>(u_input.b, u_input.b, 2147483647, u_input.b)) | max(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, -1, u_input.b)), vec4<i32>(u_input.b, u_input.b, -10354, -12941)), ~(~vec4<i32>(2147483647, -21209, -1, 15650))), func_2(_wgslsmith_add_i32(-firstLeadingBit(-27780), (u_input.b | u_input.b) ^ u_input.b), Struct_2(vec4<u32>(u_input.c, ~0u, u_input.a.x, _wgslsmith_add_u32(8486u, u_input.c)), u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, 1000.0, 954.0)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(-6699 >> (u_input.d % 32u), countOneBits(0)), -(~u_input.b)) << (countOneBits(~_wgslsmith_mod_u32(0u, 23501u)) % 32u));
    if (!false) {
        for (var var_1 = -32350; _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-879.0)))) + _wgslsmith_f_op_f32(exp2(-1023.0))), var_0.d.c.x)) >= func_2(var_0.c.x, Struct_2(var_0.d.a, 74837u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.a.c))))).c.x; var_1 += 1) {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            continue;
        }
        let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.a.c.xx);
        for (var var_2 = abs(var_0.c.x); ; var_2 -= 1) {
            if (LOOP_COUNTERS[26u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            var_2 = _wgslsmith_dot_vec2_i32(var_0.b, _wgslsmith_add_vec2_i32(-(-var_0.c.zy << (func_7(Struct_4(u_input.a.wz, Struct_2(vec4<u32>(77613u, u_input.c, u_input.c, 20364u), u_input.c, vec3<f32>(var_0.d.c.x, var_0.d.c.x, 1561.0))), true).wy % vec2<u32>(32u))), var_0.b ^ _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, 0), vec2<i32>(-31022, var_0.c.x) >> (vec2<u32>(u_input.c, var_0.d.a.x) % vec2<u32>(32u)))));
            return;
        }
        for (var var_2 = 52859; var_2 >= 0; var_2 += 1) {
            if (LOOP_COUNTERS[27u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            break;
        }
    }
    let var_1 = Struct_1(1314u ^ select(1u, abs(abs(2328u)), false), func_1(Struct_4(var_0.a.a.yz, Struct_2(u_input.a, var_0.a.b, var_0.d.c))).b & vec2<u32>(var_0.a.b & 35201u, 7741u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(775.0)) * _wgslsmith_f_op_f32(f32(-1.0) * -1361.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c.x) - 1698.0)) <= func_5(Struct_3(func_2(var_0.c.x, var_0.a), vec2<i32>(-30555, u_input.b), var_0.c, Struct_2(var_0.a.a, var_0.a.a.x, var_0.a.c), var_0.b.x >> (1u % 32u)), Struct_1(~8610u, var_0.d.a.xw, true, var_0.c), 0u, var_0.a.a).b.c.x, func_1(func_5(var_0, func_1(Struct_4(vec2<u32>(u_input.c, 0u), var_0.a)), firstLeadingBit(_wgslsmith_sub_u32(var_0.d.b, u_input.c)), abs(var_0.a.a | vec4<u32>(92450u, var_0.a.a.x, var_0.a.b, 0u)))).d);
    loop {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
        for (; var_1.c; ) {
            if (LOOP_COUNTERS[29u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            let var_2 = vec3<bool>(!(!(!var_1.c)), func_1(Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.b, var_0.a.b), vec2<u32>(17820u, 5444u)), Struct_2(min(vec4<u32>(4294967295u, var_1.a, var_0.a.a.x, 54327u), u_input.a), firstLeadingBit(0u), _wgslsmith_f_op_vec3_f32(-var_0.a.c)))).c, !var_1.c);
            let var_3 = _wgslsmith_div_u32(var_0.a.a.x, func_5(Struct_3(func_9(vec4<i32>(-1, var_0.c.x, var_1.d.x, 69496), Struct_4(vec2<u32>(1u, u_input.d), var_0.a), vec2<f32>(534.0, 153.0), var_0.a.c.zx).b, firstLeadingBit(vec2<i32>(-37154, 1)), -vec4<i32>(var_1.d.x, 0, 17637, -25652), func_5(var_0, var_1, var_0.d.a.x, u_input.a).b, 15746 >> (1u % 32u)), func_1(Struct_4(vec2<u32>(49484u, 64858u), Struct_2(vec4<u32>(var_0.d.b, 4294967295u, 905u, 10311u), 1u, vec3<f32>(var_0.a.c.x, 441.0, var_0.d.c.x)))), ~20223u, ~vec4<u32>(1u, var_1.b.x, 4294967295u, 4294967295u)).a.x & abs(var_0.d.a.x));
            var var_4 = var_0.a.b;
            continue;
        }
        let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-331.0, var_0.a.c.x)))));
        var var_3 = u_input.b;
        var_3 = func_1(func_5(var_0, var_1, ~(u_input.c | 4294967295u) << (_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, var_0.a.b, 0u, 4294967295u), var_0.a.a), vec4<u32>(u_input.c, 27447u, 30789u, u_input.a.x)) % 32u), ~(func_5(Struct_3(var_0.d, vec2<i32>(-9835, var_1.d.x), var_1.d, var_0.d, var_1.d.x), var_1, 4294967295u, var_0.d.a).b.a << (firstTrailingBit(vec4<u32>(var_0.a.a.x, 0u, var_0.a.b, u_input.c)) % vec4<u32>(32u))))).d.x;
        break;
    }
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(abs(min(_wgslsmith_div_i32(-11304, var_0.c.x), _wgslsmith_sub_i32(u_input.b, 7143))), 36022), _wgslsmith_add_i32(var_1.d.x, var_1.d.x) | u_input.b);
    for (var var_3 = reverseBits(0) >> (~u_input.a.x % 32u); var_3 > -2147483648; var_3 -= 1) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        if (false) {
            var_3 = func_8(func_5(var_0, func_1(func_5(var_0, Struct_1(u_input.d, vec2<u32>(var_1.b.x, u_input.d), var_1.c, vec4<i32>(var_1.d.x, var_2.x, -28583, -62786)), _wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(12100u, var_0.d.b, 39400u, u_input.a.x), vec4<u32>(4294967295u, 0u, 0u, 29432u)))), ~u_input.d, vec4<u32>(~(~30997u), ~(~u_input.a.x), var_1.a, ~var_0.d.a.x)), 1383.0, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a.c.x, var_0.a.c.x)), _wgslsmith_f_op_f32(1335.0 + 1000.0)), var_0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -309.0) - _wgslsmith_f_op_f32(var_0.a.c.x + var_0.d.c.x)), var_0.d.c.x))));
            return;
        }
    }
    loop {
        if (LOOP_COUNTERS[31u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
        var var_3 = Struct_2(abs(~u_input.a), abs(_wgslsmith_mult_u32(~(29919u | u_input.d), ~u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-612.0, -344.0, var_0.a.c.x)) + vec3<f32>(var_0.d.c.x, _wgslsmith_f_op_f32(-var_0.d.c.x), _wgslsmith_f_op_f32(abs(var_0.a.c.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.c.x, var_0.d.c.x, -597.0))))))));
        loop {
            if (LOOP_COUNTERS[32u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
            var_3 = var_0.a;
            var_3 = var_0.d;
            let var_4 = -1;
            let var_5 = _wgslsmith_f_op_vec2_f32(-var_0.a.c.yy);
        }
        var var_4 = func_5(Struct_3(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_3.a.x, 1u, 1u) << (vec4<u32>(0u, 4294967295u, 38553u, 0u) % vec4<u32>(32u)), max(vec4<u32>(u_input.c, u_input.d, var_0.d.b, 52854u), vec4<u32>(0u, 4294967295u, var_3.b, 22967u))), min(func_9(var_1.d, Struct_4(var_0.d.a.zz, Struct_2(vec4<u32>(var_1.a, u_input.c, var_0.a.a.x, var_3.a.x), var_0.a.a.x, vec3<f32>(var_3.c.x, var_0.a.c.x, var_0.a.c.x))), var_0.a.c.yx, vec2<f32>(445.0, 1037.0)).b.a.x, 17469u), _wgslsmith_f_op_vec3_f32(-var_3.c)), vec2<i32>(var_2.x, -min(var_1.d.x, 1)), ~(-var_1.d), var_0.a, var_1.d.x), var_1, func_2(u_input.b, Struct_2(~(~vec4<u32>(var_0.a.a.x, var_3.b, 56380u, 1u)), ~0u, _wgslsmith_f_op_vec3_f32(var_0.d.c * var_3.c))).b, vec4<u32>(var_3.b, ~var_1.b.x, var_0.a.a.x & 47683u, 1u) | max(vec4<u32>(~5425u, 4294967295u ^ 1u, 84737u >> (var_1.a % 32u), var_1.a & var_1.b.x), vec4<u32>(78736u, 0u, u_input.c, _wgslsmith_div_u32(var_3.a.x, var_3.b)))).b;
        var_3 = Struct_2(~_wgslsmith_div_vec4_u32(var_3.a, reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 4294967295u, var_3.b, 1u), var_0.a.a, vec4<u32>(var_0.d.b, 1u, 63500u, 4294967295u)))), _wgslsmith_dot_vec4_u32(var_3.a, _wgslsmith_mod_vec4_u32(var_0.d.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.d.c.x)), var_0.a.c.x), var_0.d.c.x, var_4.c.x)));
        let var_5 = !(!vec4<bool>(_wgslsmith_f_op_f32(2320.0 - var_3.c.x) < -1040.0, var_1.c, var_1.c, !(!true)));
    }
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, func_2(-69014, func_9(_wgslsmith_clamp_vec4_i32(var_0.c, vec4<i32>(51487, 29741, 1, var_1.d.x) >> (var_0.a.a % vec4<u32>(32u)), max(vec4<i32>(76372, var_0.c.x, -148, 1), vec4<i32>(var_2.x, var_2.x, var_0.b.x, -46333))), func_5(var_0, var_1, 1u, abs(var_0.d.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c.x, -363.0) - vec2<f32>(var_0.a.c.x, var_0.d.c.x)) - var_0.d.c.zy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.c.x, var_0.a.c.x) * var_0.d.c.zy), _wgslsmith_f_op_vec2_f32(sign(var_0.d.c.zz)))).b).b, ~(~var_1.a), u_input.a.x, -2147483648);
}

