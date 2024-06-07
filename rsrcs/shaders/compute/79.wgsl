// {"0:0":[137,164,73,1,100,28,77,234,241,112,216,72,81,226,180,133,160,133,155,8,107,198,119,68,1,1,175,170,19,75,127,132]}
// Seed: 7945407307322671332

struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    for (; ; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var var_0 = !(-14187 < ~(~(-arg_0.a.a.x)));
        var_0 = any(!(!(!(!vec3<bool>(true, true, true)))));
        if (select(_wgslsmith_add_u32(u_input.c.x, 4294967295u) > _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) | 4294967295u, 1u, 1u), true, !((false & (u_input.c.x > u_input.c.x)) | !all(vec3<bool>(false, false, true))))) {
            break;
        }
        var_0 = ~(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 12132u)), 3167u) << (u_input.c.x % 32u)) > _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(75825u, u_input.c.x) >> (vec2<u32>(u_input.c.x, 1469u) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, 12595u)), vec2<u32>(15768u, ~0u), select(true, false, false) & true), u_input.c.zx | vec2<u32>(~1u, 79975u));
    }
    return _wgslsmith_f_op_f32(f32(-1.0) * -2533.0);
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    switch (u_input.a) {
        default: {
            for (var var_0 = 7589; ; ) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            }
        }
    }
    switch (_wgslsmith_div_i32(u_input.a, _wgslsmith_mod_i32(~countOneBits(u_input.b), ~reverseBits(firstLeadingBit(2147483647))))) {
        case 0: {
            var var_0 = arg_0;
            switch (-1) {
                case 1: {
                    var var_1 = arg_2.a.a;
                    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.b * _wgslsmith_f_op_f32(select(arg_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(799.0 * arg_2.b.x)), arg_0))), arg_2.a.b);
                    var_0 = arg_0;
                    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(Struct_2(arg_2.a, vec4<f32>(arg_2.a.b, var_2.x, arg_2.a.b, _wgslsmith_f_op_f32(-551.0 + var_2.x))), arg_2)) + var_2.x);
                    var var_4 = arg_2.b.x;
                }
                default: {
                    let var_1 = Struct_2(arg_2.a, arg_2.b);
                }
            }
            let var_1 = arg_2;
            var_0 = false;
        }
        case -2147483648: {
            switch (firstLeadingBit(~(-2147483648))) {
                case 0: {
                    let var_0 = arg_2.a;
                    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(arg_2.a.a.x, max(-12174, u_input.b))), max(var_0.a, _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.a, var_0.a.x)), var_0.a, arg_2.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))));
                    let var_2 = vec4<u32>(_wgslsmith_sub_u32(~u_input.c.x & reverseBits(_wgslsmith_clamp_u32(107684u, u_input.c.x, arg_1.x)), firstLeadingBit(u_input.c.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(1u), ~arg_1.x, arg_1.x), ~firstLeadingBit(vec3<u32>(0u, arg_1.x, u_input.c.x))), u_input.c.x, firstLeadingBit(u_input.c.x));
                }
                case -8949: {
                    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b.x))), _wgslsmith_f_op_f32(trunc(-597.0)));
                    let var_1 = select(abs(vec4<u32>(0u, 15101u, abs(~78610u), ~u_input.c.x)), ~(countOneBits(vec4<u32>(4294967295u, 7621u, arg_1.x, 1u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(33349u, arg_1.x, 4294967295u, u_input.c.x), vec4<u32>(6421u, arg_1.x, u_input.c.x, 1u)) % vec4<u32>(32u))) >> (abs(~abs(vec4<u32>(39637u, arg_1.x, 1u, arg_1.x))) % vec4<u32>(32u)), vec4<bool>(true, arg_0, all(vec3<bool>(all(vec4<bool>(false, arg_0, arg_0, arg_0)), true, arg_0)), arg_0));
                    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(682.0 + _wgslsmith_f_op_f32(f32(-1.0) * -1205.0)))));
                }
                case 32558: {
                    var var_0 = arg_1.yy;
                    var_0 = ~vec2<u32>(firstTrailingBit(u_input.c.x), reverseBits(u_input.c.x));
                    var_0 = ~reverseBits(select(vec2<u32>(arg_1.x, 44167u) ^ vec2<u32>(39402u, 1u), u_input.c.zy >> (u_input.c.yx % vec2<u32>(32u)), !false) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 3520u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 96681u), u_input.c.xy)));
                    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.b + -398.0)))), arg_2.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.b.x, -732.0)))))));
                    var var_2 = arg_2;
                }
                case 9149: {
                }
                default: {
                    let var_0 = arg_2.a;
                    var var_1 = vec4<i32>(abs(-_wgslsmith_div_i32(var_0.a.x >> (4294967295u % 32u), abs(-36608))), arg_2.a.a.x, _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(~arg_2.a.a, abs(vec2<i32>(arg_2.a.a.x, -4843))), 18834), _wgslsmith_clamp_i32(abs(23711), ~firstLeadingBit(-var_0.a.x), countOneBits(max(-4409, 1))));
                    var_1 = _wgslsmith_add_vec4_i32(select(-(~vec4<i32>(u_input.a, u_input.a, var_0.a.x, u_input.a)), min(vec4<i32>(countOneBits(1), u_input.b, -var_1.x, -18796), ~vec4<i32>(var_0.a.x, u_input.a, 1, 18963)), !(!(!vec4<bool>(arg_0, true, arg_0, false)))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a, var_1.xw), var_0.a.x, 2147483647, -34660));
                }
            }
        }
        case -15021: {
            for (var var_0 = 32825; var_0 > 1; var_0 -= 1) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.b, 502.0) * vec2<f32>(arg_2.b.x, -173.0)) + _wgslsmith_f_op_vec2_f32(-arg_2.b.yw))) * arg_2.b.ww));
                continue;
            }
            let var_0 = arg_1.x;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_0 = !all(vec4<bool>(arg_0, any(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, false, arg_0), true)), arg_0 & !arg_0, all(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, true, arg_0, arg_0)))));
                let var_1 = arg_2.a;
                let var_2 = abs(countOneBits(arg_1));
                let var_3 = !(!var_0);
            }
            let var_0 = Struct_1(vec2<i32>(arg_2.a.a.x, arg_2.a.a.x), arg_2.b.x);
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                let var_1 = Struct_1(-_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a, -arg_2.a.a), ~(var_0.a ^ vec2<i32>(0, 0))), _wgslsmith_f_op_f32(-2289.0));
                let var_2 = _wgslsmith_div_vec4_f32(arg_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(256.0, -323.0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.b, arg_2.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))), arg_2.a.b) + _wgslsmith_f_op_vec4_f32(abs(arg_2.b))));
                let var_3 = -(abs(_wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(0, -6535))) << (_wgslsmith_clamp_u32((arg_1.x ^ 79135u) | (u_input.c.x ^ 0u), _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), arg_1)), ~abs(0u)) % 32u));
                var var_4 = arg_2.a;
                let var_5 = _wgslsmith_dot_vec2_i32(abs(var_1.a) | select(vec2<i32>(1, 16632), vec2<i32>(arg_2.a.a.x, var_1.a.x), !vec2<bool>(false, true)), vec2<i32>(u_input.a, var_3)) > var_0.a.x;
            }
            for (var var_1 = 0; var_1 != -18485; var_1 = _wgslsmith_dot_vec4_i32(-select(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-48727, u_input.b, u_input.b, -2147483648)), vec4<i32>(-1, 0, u_input.b, u_input.a) & vec4<i32>(2147483647, 8809, 52769, var_0.a.x), vec4<i32>(-2147483648, -22713, 17069, 0) ^ vec4<i32>(2147483647, -24203, 1, arg_2.a.a.x)), vec4<i32>(var_0.a.x, -2147483648, countOneBits(var_0.a.x), _wgslsmith_add_i32(var_0.a.x, 1)), !(!vec4<bool>(true, arg_0, true, true))), vec4<i32>(-2147483648, 1, _wgslsmith_sub_i32(57071, 1), _wgslsmith_div_i32(-2147483648, -7521) & var_0.a.x))) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                break;
            }
            switch (u_input.a) {
                case -2147483648: {
                    var var_1 = 0;
                    var_1 = firstTrailingBit(0) ^ _wgslsmith_clamp_i32(~(-55906), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.a.x, arg_2.a.a.x, 1, 1), firstLeadingBit(vec4<i32>(0, var_0.a.x, -1, -1))), arg_2.a.a.x), u_input.b);
                    let var_2 = select(select(select(vec2<bool>(false, u_input.b < 1), select(!vec2<bool>(true, arg_0), !vec2<bool>(false, false), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), true)), select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), arg_0)), !(!(!vec2<bool>(true, true))), any(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, true)))), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), true), vec2<bool>(true, false))), vec2<bool>(arg_0, false));
                    let var_3 = Struct_1(firstTrailingBit(var_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(313.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313.0 * _wgslsmith_f_op_f32(1063.0 - arg_2.b.x))), true)));
                    var var_4 = arg_2;
                }
                case -19002: {
                    let var_1 = arg_2;
                    var var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(var_1.a.a.x, -7320), -1, ~26330, abs(-26906)), vec4<i32>(max(_wgslsmith_add_i32(arg_2.a.a.x, u_input.b), -10306), abs(var_0.a.x), u_input.a, -max(var_0.a.x, var_0.a.x))), ~(~(~var_0.a.x)));
                    let var_3 = ~_wgslsmith_add_vec4_i32(abs(~vec4<i32>(var_0.a.x, var_0.a.x, -1, -46919)) >> (vec4<u32>(~u_input.c.x, u_input.c.x, firstTrailingBit(1u), arg_1.x >> (0u % 32u)) % vec4<u32>(32u)), min(select(vec4<i32>(var_0.a.x, 0, var_0.a.x, arg_2.a.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.a.x, arg_2.a.a.x, 8325, 244), vec4<i32>(16679, var_1.a.a.x, 3073, -2147483648), vec4<i32>(2147483647, 49584, u_input.a, 2147483647)), vec4<bool>(false, true, true, false)), _wgslsmith_div_vec4_i32(vec4<i32>(-46331, var_0.a.x, arg_2.a.a.x, var_1.a.a.x) ^ vec4<i32>(-52866, var_0.a.x, -5330, -2147483648), vec4<i32>(var_1.a.a.x, u_input.a, u_input.b, u_input.b))));
                }
                case 1: {
                }
                default: {
                    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.b.xxy * _wgslsmith_f_op_vec3_f32(arg_2.b.wyy * vec3<f32>(-798.0, var_0.b, -1788.0)))))));
                    var var_2 = arg_2;
                }
            }
        }
    }
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-192.0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_2.a.b))))))) * vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x - -1064.0), 920.0));
    for (; u_input.b <= u_input.b; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        break;
    }
    var var_1 = ~(select(~_wgslsmith_dot_vec3_u32(arg_1, arg_1), ~arg_1.x, !false) << (_wgslsmith_clamp_u32(~(~u_input.c.x), abs(4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(2076u, arg_1.x, 0u), arg_1), u_input.c.x)) % 32u));
    return arg_2;
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = ~reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.c.x, u_input.c.x), u_input.c)) >> (_wgslsmith_mult_u32(u_input.c.x, 4294967295u) % 32u);
    let var_1 = func_5(false, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(26510u, u_input.c.x, 6735u), u_input.c), vec3<u32>(reverseBits(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), u_input.c.x, 39978u)), func_5(arg_2.x != _wgslsmith_f_op_f32(392.0 - arg_1.a.b), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 34929u, u_input.c.x) | vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), func_5(false && arg_3.x, ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), func_5(!arg_3.x, ~vec3<u32>(79574u, u_input.c.x, u_input.c.x), func_5(arg_3.x, vec3<u32>(u_input.c.x, 93832u, u_input.c.x), Struct_2(Struct_1(arg_1.a.a, -212.0), vec4<f32>(1000.0, 523.0, arg_1.b.x, arg_1.a.b)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_2.zy);
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(func_5(!(!arg_3.x), u_input.c, func_5(!arg_3.x, u_input.c, Struct_2(var_1.a, vec4<f32>(var_1.a.b, var_2.x, -817.0, arg_0)))).b.wz)));
        for (var var_3 = 2147483647; ; var_0 = u_input.c.x) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.b.zy))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.wx)));
            let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -451.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1190.0 * arg_2.x) * _wgslsmith_f_op_f32(round(-594.0))))));
            var var_5 = _wgslsmith_mult_vec3_i32(vec3<i32>(~arg_1.a.a.x << (u_input.c.x % 32u), -(i32(-1) * -2147483648), -1), vec3<i32>(_wgslsmith_mod_i32(2147483647, 2147483647), ~52403, 1 | u_input.b) | ~(~vec3<i32>(arg_1.a.a.x, u_input.b, arg_1.a.a.x))) >> (u_input.c % vec3<u32>(32u));
        }
        switch (6060) {
            case 0: {
                let var_3 = !(!((i32(-1) * -2147483648) < ~var_1.a.a.x) & false);
                let var_4 = vec3<u32>(u_input.c.x, 39607u, ~reverseBits(u_input.c.x));
            }
            case -32055: {
                var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-741.0, -1000.0), arg_1.b.wx) * vec2<f32>(arg_0, 166.0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(170.0, arg_2.x), vec2<f32>(arg_0, 198.0))) - arg_1.b.zx)));
                var_0 = ~78960u;
                let var_3 = func_5(arg_3.x, u_input.c, arg_1);
            }
            case 1: {
            }
            default: {
            }
        }
    }
    for (var var_3: i32; var_3 != -1; var_3 += 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        continue;
    }
    return ~(~1u) << (0u % 32u);
}

fn func_4() -> i32 {
    for (var var_0 = u_input.b; var_0 == 10321; var_0 += 1) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_1 = ~max(~select(31811, 17968, true) ^ u_input.b, u_input.a);
        loop {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            let var_2 = vec2<u32>(~func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000.0 - -978.0)), func_5(false, u_input.c, Struct_2(Struct_1(vec2<i32>(3709, var_1), -1177.0), vec4<f32>(1000.0, -1000.0, 1105.0, -2019.0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(584.0, -606.0, 856.0, 180.0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(533.0, 1876.0, 2179.0, -1471.0) + vec4<f32>(234.0, 2516.0, 1000.0, -495.0))), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), u_input.c.x);
            return 6468;
        }
    }
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        continue;
    }
    let var_0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c.x << ((86264u ^ 0u) % 32u), u_input.c.x, 7959u), u_input.c, vec3<u32>(0u, reverseBits(u_input.c.x), ~(~1u)));
    let var_1 = ~(u_input.c.x | ~(~var_0.x)) <= min(19763u, min(_wgslsmith_sub_u32(u_input.c.x, 7200u & u_input.c.x), func_7(_wgslsmith_f_op_f32(923.0 * 783.0), func_5(true, vec3<u32>(var_0.x, u_input.c.x, 43504u), Struct_2(Struct_1(vec2<i32>(u_input.b, 7579), -824.0), vec4<f32>(361.0, -1136.0, -1103.0, 256.0))), _wgslsmith_div_vec4_f32(vec4<f32>(584.0, -1834.0, 170.0, 1022.0), vec4<f32>(471.0, 838.0, 949.0, 1855.0)), !vec2<bool>(true, false))));
    for (var var_2 = 7197; false; var_2 = -_wgslsmith_clamp_i32(~(-2147483648) | -u_input.b, 52559, ~(-u_input.b)) ^ reverseBits(~(-1))) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        var var_3 = func_5(var_1, ~min(var_0, var_0), func_5(!(_wgslsmith_f_op_f32(f32(-1.0) * -419.0) <= _wgslsmith_f_op_f32(f32(-1.0) * -1272.0)), vec3<u32>(var_0.x, u_input.c.x, var_0.x), func_5(all(!vec4<bool>(var_1, true, true, var_1)), var_0, Struct_2(Struct_1(vec2<i32>(47047, 24119), 884.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(181.0, 1865.0, 612.0, 1222.0) - vec4<f32>(-996.0, -961.0, 1889.0, 1416.0))))));
        var_3 = func_5(all(vec4<bool>(max(-2147483648, 0) == abs(47658), var_1, !false, false)), u_input.c, func_5(any(!select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(true, true, false, var_1), var_1)), var_0, func_5(!var_1 || !var_1, _wgslsmith_add_vec3_u32(~var_0, firstLeadingBit(vec3<u32>(16451u, 32665u, 1u))), func_5(var_1, vec3<u32>(1u, u_input.c.x, var_0.x) | vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), func_5(true, vec3<u32>(var_0.x, u_input.c.x, u_input.c.x), Struct_2(Struct_1(vec2<i32>(37156, u_input.b), var_3.a.b), vec4<f32>(248.0, -1000.0, var_3.b.x, var_3.b.x)))))));
        var_3 = Struct_2(var_3.a, vec4<f32>(_wgslsmith_f_op_f32(max(var_3.a.b, 339.0)), 1399.0, -629.0, var_3.b.x));
        switch (_wgslsmith_mult_i32(42606, u_input.a)) {
            default: {
                var var_4 = vec2<u32>(~_wgslsmith_add_u32(~u_input.c.x, _wgslsmith_div_u32(u_input.c.x, _wgslsmith_div_u32(0u, var_0.x))), u_input.c.x);
            }
        }
    }
    return u_input.b;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    for (var var_0 = -46536; var_0 == 26715; var_0 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        return Struct_1(-(vec2<i32>(_wgslsmith_sub_i32(-2147483648, -1), 1) | vec2<i32>(~(-1791), arg_1.a.a.x)), arg_1.b.x);
    }
    switch (func_4()) {
        case 17950: {
            var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_1.a.b)), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.b, -1142.0)))))));
            let var_1 = arg_1.a;
        }
        default: {
            let var_0 = func_5(!(!false), vec3<u32>(_wgslsmith_mult_u32(149071u, ~64714u) & 14419u, max(u_input.c.x, 20417u), ~reverseBits(u_input.c.x)), func_5((i32(-1) * -u_input.a) == (firstLeadingBit(arg_1.a.a.x) & _wgslsmith_div_i32(-2147483648, 19216)), ~vec3<u32>(0u, firstLeadingBit(1u), _wgslsmith_mult_u32(u_input.c.x, 27504u)), arg_1)).a;
        }
    }
    switch (_wgslsmith_dot_vec3_i32(vec3<i32>(-20881, -2147483648 << (arg_0 % 32u), ~arg_1.a.a.x), _wgslsmith_div_vec3_i32(~(~vec3<i32>(-89037, u_input.b, u_input.b)) >> (~_wgslsmith_sub_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u)), vec3<i32>((i32(-1) * -20581) ^ 1, 2147483647, _wgslsmith_mult_i32(0, -u_input.a))))) {
        case 21801: {
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                break;
            }
            var var_0 = _wgslsmith_clamp_i32(min(u_input.a, _wgslsmith_mod_i32(-1, 36643) >> (~0u % 32u)), u_input.a ^ u_input.a, arg_1.a.a.x);
            var var_1 = func_5(arg_2.x, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.c.x), ~2609u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 18893u, u_input.c.x), u_input.c >> (u_input.c % vec3<u32>(32u)))), 1u, ~u_input.c.x), arg_1);
        }
        case 2147483647: {
        }
        case 7011: {
            switch (_wgslsmith_dot_vec4_i32(~(-vec4<i32>(func_4(), -9914, u_input.a & 22380, _wgslsmith_dot_vec2_i32(arg_1.a.a, vec2<i32>(arg_1.a.a.x, -8699)))), vec4<i32>(2147483647, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.a.x, 27211), arg_1.a.a | arg_1.a.a) ^ -_wgslsmith_sub_i32(u_input.a, u_input.a), 6253, _wgslsmith_dot_vec3_i32(vec3<i32>(36814, 19331, _wgslsmith_sub_i32(-39478, u_input.b)), vec3<i32>(-1) * -vec3<i32>(arg_1.a.a.x, -25724, -1))))) {
                case -21792: {
                }
                case 2147483647: {
                }
                default: {
                }
            }
            if (!all(!select(!vec4<bool>(false, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, true, arg_2.x)))) {
                let var_0 = arg_1.a.a;
                var var_1 = ~_wgslsmith_mult_u32((~u_input.c.x >> (reverseBits(0u) % 32u)) | 0u, 46173u);
                var var_2 = !select(!(!vec4<bool>(false, false, arg_2.x, true)), !(!vec4<bool>(arg_2.x, false, arg_2.x, false)), vec4<bool>(arg_2.x, all(select(arg_2.xy, arg_2.yy, arg_2.zx)), arg_2.x, 44229u == func_7(arg_1.b.x, arg_1, arg_1.b, vec2<bool>(true, true))));
                var_2 = select(vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b.x * -588.0))) <= arg_1.a.b, var_2.x, !arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684.0 - 1451.0) * _wgslsmith_f_op_f32(-arg_1.b.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1203.0))), select(!(!(!vec4<bool>(var_2.x, var_2.x, arg_2.x, var_2.x))), !(!(!vec4<bool>(var_2.x, false, false, arg_2.x))), vec4<bool>(!false, any(select(arg_2.xx, vec2<bool>(true, arg_2.x), arg_2.x)), !(!arg_2.x), !(1150.0 <= arg_1.b.x))), !vec4<bool>(_wgslsmith_f_op_f32(exp2(arg_1.a.b)) == arg_1.b.x, -734.0 > _wgslsmith_f_op_f32(trunc(arg_1.a.b)), var_2.x, any(select(vec3<bool>(false, false, var_2.x), arg_2, var_2.x))));
            }
            var var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -262.0), _wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(max(-1442.0, 1430.0)), _wgslsmith_f_op_f32(-arg_1.b.x)))));
        }
        default: {
        }
    }
    var var_0 = func_5((32264 < ~u_input.a) != ((_wgslsmith_add_i32(-1, 1) ^ -2147483648) == ~u_input.a), u_input.c, func_5(all(vec3<bool>(arg_2.x, !arg_2.x, 422.0 >= 794.0)), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(~33690u, 53386u, ~arg_0)), Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b, -1104.0, -894.0, -1527.0) * vec4<f32>(arg_1.a.b, 851.0, 646.0, 1235.0)) - vec4<f32>(388.0, arg_1.b.x, 926.0, arg_1.a.b))))).a;
    var_0 = func_5(false, vec3<u32>(0u | ~_wgslsmith_div_u32(u_input.c.x, 29461u), u_input.c.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, 52734u, 0u, arg_0) | vec4<u32>(6471u, arg_0, 63253u, 0u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0, u_input.c.x), vec4<u32>(1u, u_input.c.x, arg_0, 17438u))))), arg_1).a;
    return arg_1.a;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b * _wgslsmith_div_f32(arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * 550.0), _wgslsmith_f_op_f32(-887.0 + arg_1.b)))) - -803.0);
    if (false) {
        for (; arg_2; ) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var_0 = 463.0;
            return arg_1;
        }
        switch (arg_1.a.x) {
            case -71131: {
                let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-857.0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(921.0 + -1058.0), _wgslsmith_div_f32(-365.0, -495.0))))));
                var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b, var_1, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + var_1)))))));
                let var_3 = _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_u32(~(~u_input.c), min(vec3<u32>(70036u, 69002u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(35535u, u_input.c.x, u_input.c.x), u_input.c))), 14013u));
            }
            case -1: {
                var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1373.0, arg_0.b))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) + vec2<f32>(-775.0, -1033.0))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1303.0, -1180.0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-425.0, 531.0))))));
                var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362.0) + _wgslsmith_f_op_f32(select(-864.0, 633.0, arg_2)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -337.0) + func_5(any(vec3<bool>(arg_2, false, true)), vec3<u32>(8591u, 29899u, u_input.c.x), func_5(true, u_input.c, Struct_2(arg_0, vec4<f32>(arg_3.b, arg_0.b, -1161.0, -1000.0)))).a.b)));
                var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-498.0, 1291.0), vec2<f32>(var_1.x, 1002.0))))))))));
                let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_3.b, 969.0, var_1.x))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-831.0)), _wgslsmith_f_op_f32(-224.0 - _wgslsmith_f_op_f32(var_1.x + 717.0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(616.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))) - vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-2649.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)), 191.0)), _wgslsmith_f_op_f32(-arg_3.b)));
            }
            case 9659: {
                var var_1 = -495.0;
                var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1047.0 * _wgslsmith_f_op_f32(exp2(arg_1.b))), _wgslsmith_f_op_f32(-arg_0.b));
                var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(892.0)));
                let var_3 = ~(select(max(-vec3<i32>(arg_0.a.x, -2147483648, u_input.a), vec3<i32>(arg_3.a.x, -1, 7486) << (u_input.c % vec3<u32>(32u))), vec3<i32>(~arg_3.a.x, 2147483647, -55023 & 16920), arg_3.b > _wgslsmith_f_op_f32(round(165.0))) & reverseBits(vec3<i32>(2147483647, -40951, -34966 >> (54926u % 32u))));
            }
            case -20433: {
                var var_1 = reverseBits(select(~arg_3.a, ~vec2<i32>(arg_3.a.x ^ u_input.b, firstTrailingBit(2147483647)), arg_2));
                let var_2 = 1539.0;
                var var_3 = false;
                var var_4 = -reverseBits(vec2<i32>(-1) * -arg_0.a) & arg_0.a;
            }
            default: {
                var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.b + arg_1.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1381.0, arg_3.b)))) + arg_3.b) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b, arg_3.b)))));
                let var_2 = _wgslsmith_add_vec2_i32(abs(~(abs(vec2<i32>(arg_0.a.x, arg_3.a.x)) >> (reverseBits(vec2<u32>(24673u, u_input.c.x)) % vec2<u32>(32u)))), arg_3.a);
                var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) * _wgslsmith_f_op_f32(ceil(-1202.0))) + arg_0.b);
                var_0 = _wgslsmith_f_op_f32(-473.0 + arg_0.b);
            }
        }
        switch (func_4()) {
            case 11260: {
            }
            case 15820: {
                let var_1 = !((!all(vec4<bool>(false, false, false, arg_2)) | any(!vec4<bool>(false, true, true, arg_2))) || (~u_input.c.x != 4294967295u));
                return Struct_1(vec2<i32>(reverseBits(~_wgslsmith_sub_i32(-1, arg_3.a.x)), -arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(482.0 + _wgslsmith_f_op_f32(exp2(-289.0)))));
            }
            case -1: {
                var_0 = 468.0;
            }
            case 1: {
                var_0 = arg_3.b;
                let var_1 = Struct_1(_wgslsmith_div_vec2_i32(arg_0.a, select(_wgslsmith_add_vec2_i32(-vec2<i32>(1, -2147483648), ~vec2<i32>(arg_1.a.x, arg_1.a.x)), arg_3.a, false)), arg_3.b);
                var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1471.0, arg_3.b))) + arg_1.b)));
            }
            default: {
                var var_1 = arg_3;
            }
        }
        let var_1 = -1810;
        let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.b, -215.0))), 1326.0)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000.0, 629.0, arg_2))), arg_3.b))), -795.0);
    }
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(156.0, _wgslsmith_f_op_f32(-arg_0.b))) - arg_1.b);
    for (var var_1 = 2147483647; select(!all(select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, true, false))), any(vec3<bool>(false || arg_2, all(vec2<bool>(arg_2, arg_2)), true)), false) | !(~(~0u) == (u_input.c.x & _wgslsmith_mod_u32(96863u, 2421u))); ) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000.0)) * _wgslsmith_f_op_f32(func_6(func_5(-18372 <= arg_0.a.x, countOneBits(vec3<u32>(4294967295u, 39266u, u_input.c.x)), Struct_2(arg_3, vec4<f32>(arg_0.b, -2038.0, 581.0, arg_0.b))), func_5(u_input.c.x >= u_input.c.x, firstLeadingBit(u_input.c), Struct_2(arg_0, vec4<f32>(197.0, arg_0.b, 1000.0, -848.0))))))));
    return arg_1;
}

fn func_9(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = ~5220u | ~1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - arg_0.b));
    let var_2 = u_input.c.xx;
    if (any(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, false)), !(!false)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), select(vec3<bool>(any(vec3<bool>(true, false, true)), 44171 > 2147483647, true), vec3<bool>(true & false, true | false, !true), any(vec3<bool>(false, true, true)))))) {
        switch (countOneBits(-(~(39059 << (u_input.c.x % 32u))))) {
            case 16134: {
                return arg_1;
            }
            case 1: {
                let var_3 = u_input.b >= ~_wgslsmith_dot_vec2_i32(abs(select(arg_2.ww, vec2<i32>(arg_0.a.x, -1), vec2<bool>(true, false))), vec2<i32>(_wgslsmith_dot_vec3_i32(arg_2.xxw, arg_2.wxy), _wgslsmith_mult_i32(u_input.a, 1)));
                var_0 = firstTrailingBit(~var_2.x ^ var_2.x);
                let var_4 = ~_wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, vec3<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~(~1u)));
                let var_5 = countOneBits(var_4.zy);
                let var_6 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000.0, arg_0.b, 199.0, 553.0) - vec4<f32>(440.0, arg_0.b, arg_0.b, -243.0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, arg_0.b, -942.0, arg_0.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-251.0, 872.0, arg_1.b, 608.0) + vec4<f32>(arg_1.b, var_1, -587.0, 790.0))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1118.0, arg_0.b, arg_1.b, -1016.0))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(968.0, -985.0, 869.0, var_1))))))))));
            }
            case 30922: {
                var var_3 = arg_1;
            }
            case 0: {
                var var_3 = ~_wgslsmith_clamp_vec2_u32(~(abs(vec2<u32>(var_2.x, var_2.x)) | min(vec2<u32>(4294967295u, 0u), vec2<u32>(var_2.x, 1u))), u_input.c.zy, _wgslsmith_sub_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 32777u), vec2<u32>(103724u, u_input.c.x)), var_2), var_2));
                var var_4 = arg_0;
                let var_5 = Struct_1(vec2<i32>(firstLeadingBit(arg_1.a.x), arg_1.a.x), _wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b)) * _wgslsmith_f_op_f32(ceil(var_1))))));
                var_0 = firstLeadingBit(~3286u);
            }
            default: {
                let var_3 = !vec3<bool>(!(!any(vec3<bool>(true, false, false))), !false, _wgslsmith_f_op_f32(-arg_1.b) <= arg_0.b);
                var_0 = u_input.c.x;
            }
        }
        switch (u_input.b) {
            case -32145: {
                let var_3 = func_3(~(~(~var_2.x)), func_5(select(false, (false & false) | any(vec3<bool>(false, true, true)), true), u_input.c << (vec3<u32>(select(32067u, u_input.c.x, true), var_2.x | 18755u, _wgslsmith_sub_u32(u_input.c.x, 19995u)) % vec3<u32>(32u)), func_5(_wgslsmith_f_op_f32(-1346.0) > func_5(false, vec3<u32>(110537u, 58797u, u_input.c.x), Struct_2(Struct_1(arg_2.yz, var_1), vec4<f32>(941.0, -2522.0, arg_0.b, -930.0))).b.x, vec3<u32>(reverseBits(u_input.c.x), u_input.c.x, 59515u >> (var_2.x % 32u)), Struct_2(Struct_1(vec2<i32>(0, -2147483648), 161.0), vec4<f32>(163.0, arg_0.b, var_1, -301.0)))), vec3<bool>(!(!all(vec3<bool>(false, true, true))), !all(vec4<bool>(true, false, false, true)) & !(!true), true));
            }
            case 2147483647: {
                var_0 = 1379u;
            }
            case 21290: {
                var_0 = abs(51974u >> (u_input.c.x % 32u));
                var_0 = 71087u & (u_input.c.x ^ ~_wgslsmith_mod_u32(firstTrailingBit(1u), select(30736u, 79416u, true)));
                var_0 = select(_wgslsmith_dot_vec2_u32(u_input.c.xx, ~var_2) << (4294967295u % 32u), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(1u, var_2.x), 0u, ~reverseBits(min(var_2.x, 24959u))), !(!any(vec4<bool>(true, true, true, false))));
            }
            default: {
                var var_3 = vec3<f32>(321.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(395.0 + 297.0), -344.0))))), arg_1.b);
                var var_4 = arg_0;
            }
        }
    }
    if (true) {
    }
    return arg_0;
}

fn func_10(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_3, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1000.0, 268.0, 393.0, arg_2.b), vec4<f32>(-2241.0, arg_3.b, -825.0, -1322.0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, 1000.0, -407.0, arg_3.b) * vec4<f32>(1139.0, -1653.0, arg_2.b, arg_2.b)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -264.0), _wgslsmith_div_f32(1093.0, 1696.0)), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_f_op_f32(-arg_3.b))));
    let var_1 = arg_2;
    var var_2 = var_0.a.a.x;
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        loop {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            break;
        }
        var_2 = u_input.a;
        break;
    }
    var var_3 = func_8(func_5((_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.a.x, 0), vec2<i32>(7997, 32216)) > _wgslsmith_mod_i32(u_input.b, u_input.b)) && false, arg_0.www & ~select(u_input.c, vec3<u32>(1976u, 0u, arg_0.x), vec3<bool>(false, true, true)), var_0).a, Struct_1(~arg_3.a, func_9(Struct_1(vec2<i32>(arg_2.a.x, var_0.a.a.x), arg_3.b), arg_2, ~reverseBits(vec4<i32>(var_1.a.x, -6633, 1, -38309))).b), !false, func_3(~4294967295u, Struct_2(Struct_1(vec2<i32>(var_0.a.a.x, -1619), _wgslsmith_f_op_f32(func_6(Struct_2(var_0.a, vec4<f32>(var_1.b, -588.0, -681.0, arg_3.b)), var_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.b, arg_2.b, arg_2.b, var_1.b))), vec4<f32>(-703.0, var_0.a.b, 405.0, 699.0))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), !vec3<bool>(false, true, true))));
    return var_0.a.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_10(vec4<u32>(countOneBits(5928u), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_0.x), u_input.c >> (vec3<u32>(26560u, u_input.c.x, 1u) % vec3<u32>(32u))), 1u << (u_input.c.x % 32u)), vec4<u32>(~(~83304u), 4294967295u, arg_0.x, arg_0.x), Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.a, u_input.b), _wgslsmith_add_i32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -230.0))), func_9(func_8(Struct_1(vec2<i32>(u_input.a, -2147483648), -1427.0), func_3(arg_0.x, Struct_2(Struct_1(vec2<i32>(u_input.a, 2147483647), 1171.0), vec4<f32>(-1214.0, -118.0, 1051.0, -815.0)), arg_1.wxy), any(vec3<bool>(arg_1.x, arg_1.x, false)), Struct_1(vec2<i32>(22183, u_input.b), 1000.0)), func_8(Struct_1(vec2<i32>(-41644, -47129), -242.0), Struct_1(vec2<i32>(u_input.b, u_input.b), 1753.0), arg_1.x, func_5(arg_1.x, vec3<u32>(u_input.c.x, 20413u, u_input.c.x), Struct_2(Struct_1(vec2<i32>(u_input.b, u_input.b), -935.0), vec4<f32>(695.0, 116.0, -1020.0, 481.0))).a), vec4<i32>(_wgslsmith_add_i32(u_input.a, u_input.b), -32410, func_8(Struct_1(vec2<i32>(4456, 0), 881.0), Struct_1(vec2<i32>(u_input.a, -2147483648), -218.0), arg_1.x, Struct_1(vec2<i32>(u_input.b, u_input.b), 1865.0)).a.x, u_input.a >> (arg_0.x % 32u))))));
    let var_1 = Struct_2(Struct_1(func_3(1u, func_5(true, ~u_input.c, func_5(true, u_input.c, Struct_2(Struct_1(vec2<i32>(1, -5757), -365.0), vec4<f32>(401.0, 1404.0, -1576.0, -359.0)))), select(!vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, true, arg_1.x), arg_1.x)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(631.0, 208.0)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-513.0 + 1387.0), -358.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1826.0 - -536.0)), 1397.0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(268.0, -1267.0, 1467.0, -769.0), vec4<f32>(746.0, 490.0, -1000.0, -910.0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1276.0, 1761.0, 1852.0, -280.0), vec4<f32>(-1121.0, 374.0, -148.0, 345.0))), select(vec4<bool>(false, false, true, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), arg_1.x)))))));
    switch (-_wgslsmith_sub_i32(-1159, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstLeadingBit(var_1.a.a.x), u_input.b), _wgslsmith_mod_i32(-var_1.a.a.x, 0), var_1.a.a.x))) {
        case -2147483648: {
            var var_2 = var_1.a;
            var var_3 = Struct_1(var_2.a, var_1.a.b);
            switch (_wgslsmith_add_i32(var_1.a.a.x, _wgslsmith_mod_i32(func_5(arg_1.x, u_input.c, Struct_2(Struct_1(vec2<i32>(var_1.a.a.x, var_1.a.a.x), var_2.b), func_5(true, u_input.c, Struct_2(Struct_1(vec2<i32>(var_3.a.x, -36770), 1923.0), vec4<f32>(var_1.a.b, var_1.b.x, var_1.b.x, var_1.b.x))).b)).a.a.x, u_input.b))) {
                case 11413: {
                    let var_4 = Struct_1(vec2<i32>(-1) * -firstLeadingBit(vec2<i32>(-9922, var_3.a.x)), _wgslsmith_f_op_f32(sign(var_1.b.x)));
                }
                default: {
                    var_0 = var_2.b;
                }
            }
        }
        case 2147483647: {
            var_0 = var_1.b.x;
            let var_2 = select(vec4<bool>(!(any(vec2<bool>(true, true)) || select(arg_1.x, arg_1.x, true)), arg_1.x, _wgslsmith_div_i32(var_1.a.a.x, var_1.a.a.x) == 2147483647, any(!arg_1.yzw)), select(select(select(arg_1, arg_1, !vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), !select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(false, arg_1.x, false, false), false), vec4<bool>(false, false || true, true, 62206u != 25005u)), vec4<bool>(!arg_1.x, !(!arg_1.x), arg_1.x, !arg_1.x), !select(vec4<bool>(arg_1.x, true, false, arg_1.x), select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), arg_1.x), arg_1.x)), arg_1);
            var_0 = _wgslsmith_f_op_f32(func_6(Struct_2(func_5(any(vec3<bool>(false, false, var_2.x)), arg_0.wzw, var_1).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1591.0, var_1.a.b, var_1.a.b, var_1.a.b))) * vec4<f32>(var_1.b.x, _wgslsmith_div_f32(var_1.b.x, -1398.0), _wgslsmith_f_op_f32(1320.0 + var_1.b.x), _wgslsmith_f_op_f32(1124.0 + -1812.0)))), func_5(!false, vec3<u32>(4294967295u, _wgslsmith_add_u32(25931u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(19651u, 31835u, 52517u))), abs(4294967295u << (0u % 32u))), func_5(!(var_1.a.a.x == u_input.b), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), arg_0.wzz), Struct_2(func_3(27096u, Struct_2(var_1.a, var_1.b), vec3<bool>(true, false, var_2.x)), var_1.b)))));
            var var_3 = Struct_2(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.b, var_1.a.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-592.0)) + var_1.a.b)), _wgslsmith_f_op_f32(round(var_1.b.x)), var_1.a.b, _wgslsmith_div_f32(func_5(u_input.b == 2147483647, ~vec3<u32>(4294967295u, arg_0.x, arg_0.x), Struct_2(Struct_1(vec2<i32>(1, var_1.a.a.x), var_1.b.x), var_1.b)).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) - -348.0))));
            var var_4 = func_5(-1 <= 0, vec3<u32>(~(_wgslsmith_div_u32(4294967295u, 54070u) & 8364u), 1u, (select(1u, 76542u, var_2.x) & 0u) | (u_input.c.x >> (~arg_0.x % 32u))), var_1);
        }
        case -14279: {
            let var_2 = var_1;
            var_0 = var_1.a.b;
            switch (2147483647) {
                case 0: {
                    var_0 = var_2.a.b;
                    var_0 = var_1.b.x;
                    var var_3 = var_1.a;
                    let var_4 = var_2;
                    var var_5 = func_3(33490u, Struct_2(Struct_1(vec2<i32>(var_4.a.a.x, func_9(var_4.a, Struct_1(var_2.a.a, 697.0), vec4<i32>(9742, var_4.a.a.x, var_3.a.x, var_2.a.a.x)).a.x), _wgslsmith_f_op_f32(ceil(var_2.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(950.0, 1000.0, _wgslsmith_f_op_f32(var_3.b + var_2.b.x), _wgslsmith_f_op_f32(abs(875.0))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.b, var_2.a.b, 1799.0, 528.0))))), select(arg_1.yxx, !vec3<bool>(arg_1.x, arg_0.x == 657u, arg_1.x), !false));
                }
                case 55605: {
                }
                case 25542: {
                    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(var_1.b.zy));
                }
                case 1: {
                    var_0 = -117.0;
                    var_0 = -807.0;
                    let var_3 = Struct_2(Struct_1(~abs(max(var_1.a.a, vec2<i32>(var_1.a.a.x, u_input.a))), var_1.a.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1607.0), _wgslsmith_f_op_f32(-func_8(Struct_1(vec2<i32>(var_2.a.a.x, u_input.a), var_2.b.x), Struct_1(vec2<i32>(var_1.a.a.x, 1), var_1.a.b), arg_1.x, Struct_1(vec2<i32>(var_1.a.a.x, var_1.a.a.x), -267.0)).b), var_1.a.b, -826.0)));
                    let var_4 = var_3.a.a.x | -(i32(-1) * -(~42671));
                }
                default: {
                    var_0 = _wgslsmith_div_f32(func_5(!(-u_input.b != _wgslsmith_add_i32(-22449, 2147483647)), ~max(vec3<u32>(4294967295u, 0u, 26849u), vec3<u32>(65232u, arg_0.x, 1u)) | firstLeadingBit(~arg_0.zww), var_2).a.b, func_9(var_1.a, func_5(true, vec3<u32>(arg_0.x, arg_0.x | 4294967295u, 0u), var_1).a, vec4<i32>(func_5(u_input.a > 17107, u_input.c, var_2).a.a.x, abs(-var_1.a.a.x), -56892, firstTrailingBit(var_2.a.a.x))).b);
                    let var_3 = min(1 << (14570u % 32u), 1);
                    var_0 = func_3(~3812u, var_1, vec3<bool>(arg_1.x, false, true)).b;
                }
            }
            let var_3 = -(i32(-1) * -66205);
        }
        default: {
        }
    }
    switch (~func_5(!(!arg_1.x), ~(vec3<u32>(115321u, 56024u, arg_0.x) & u_input.c), var_1).a.a.x) {
        case -37066: {
            if (arg_1.x != !(!arg_1.x)) {
                var var_2 = _wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(_wgslsmith_div_u32(0u, arg_0.x), 40479u, ~44471u, min(u_input.c.x, select(arg_0.x, 4294967295u, arg_1.x)))) ^ ~(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, 0u), arg_0, vec4<u32>(u_input.c.x, arg_0.x, u_input.c.x, arg_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, arg_0.x, 4294967295u, 8307u), arg_0)) << (arg_0 % vec4<u32>(32u)));
                var var_3 = -1;
            }
            var var_2 = 85303u;
            let var_3 = func_9(Struct_1(var_1.a.a, _wgslsmith_f_op_f32(var_1.b.x - -166.0)), Struct_1(~reverseBits(func_9(var_1.a, var_1.a, vec4<i32>(-2147483648, 2147483647, u_input.b, 1)).a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2721.0))))), vec4<i32>(-var_1.a.a.x, -u_input.b, -15443, func_5(all(vec3<bool>(arg_1.x, true, true)), vec3<u32>(_wgslsmith_mod_u32(arg_0.x, arg_0.x), _wgslsmith_sub_u32(4294967295u, 49877u), 1u), var_1).a.a.x));
            let var_4 = var_3;
        }
        case -2147483648: {
            if (false) {
                var var_2 = Struct_2(func_3(firstTrailingBit(firstLeadingBit(~44385u)), Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1365.0, -683.0, -537.0, var_1.b.x)) + vec4<f32>(-1303.0, -141.0, 702.0, 170.0))), arg_1.ywz), var_1.b);
                var var_3 = func_3(_wgslsmith_mod_u32(arg_0.x, u_input.c.x), func_5(!true, vec3<u32>(0u, ~(1u ^ 4294967295u), _wgslsmith_div_u32(u_input.c.x >> (4294967295u % 32u), arg_0.x)), Struct_2(func_9(var_1.a, var_2.a, countOneBits(vec4<i32>(var_2.a.a.x, var_1.a.a.x, 39560, var_1.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b * var_2.b)))), select(!(!(!arg_1.xwx)), arg_1.zzy, select(select(select(vec3<bool>(arg_1.x, false, true), vec3<bool>(false, arg_1.x, false), false), arg_1.wxz, arg_1.xxw), select(vec3<bool>(false, false, arg_1.x), select(arg_1.xzx, vec3<bool>(true, true, false), vec3<bool>(true, true, false)), var_2.a.b < var_1.a.b), arg_1.x)));
                let var_4 = select(arg_1, vec4<bool>(any(vec2<bool>(true, false)) || all(select(vec4<bool>(arg_1.x, false, false, arg_1.x), arg_1, true)), false, any(vec2<bool>(!false, !arg_1.x)), all(vec3<bool>(select(true, arg_1.x, arg_1.x), any(vec3<bool>(true, arg_1.x, arg_1.x)), true))), vec4<bool>(true, (true & false) & all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), any(vec2<bool>(false, true)) != (_wgslsmith_dot_vec4_u32(arg_0, arg_0) > ~arg_0.x), !all(!vec2<bool>(arg_1.x, false))));
                let var_5 = reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(30008u ^ (u_input.c.x >> (4294967295u % 32u)), ~(~7051u), 4294967295u, 62034u), ~(~min(vec4<u32>(41924u, arg_0.x, 4520u, 4294967295u), arg_0))));
                var_2 = Struct_2(func_5(var_4.x, countOneBits(_wgslsmith_div_vec3_u32(~vec3<u32>(67474u, 0u, 3965u), vec3<u32>(u_input.c.x, 30036u, 29681u) << (vec3<u32>(1u, 16912u, u_input.c.x) % vec3<u32>(32u)))), func_5(any(vec4<bool>(false, var_4.x, true, var_4.x)), vec3<u32>(reverseBits(var_5.x), 1u, ~7576u), Struct_2(func_5(var_4.x, vec3<u32>(67318u, 50175u, 1u), Struct_2(var_2.a, var_1.b)).a, vec4<f32>(var_3.b, var_2.a.b, -1222.0, var_3.b)))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(176.0 * var_3.b), 453.0, _wgslsmith_f_op_f32(-143.0 + var_3.b), _wgslsmith_f_op_f32(var_3.b * var_3.b)))));
            }
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.b + _wgslsmith_div_f32(-248.0, _wgslsmith_f_op_f32(func_10(firstTrailingBit(vec4<u32>(54019u, arg_0.x, u_input.c.x, 29914u)), ~arg_0, Struct_1(var_1.a.a, -934.0), var_1.a)))), _wgslsmith_div_f32(var_1.a.b, _wgslsmith_f_op_f32(-func_8(Struct_1(vec2<i32>(var_1.a.a.x, 31117), var_1.a.b), Struct_1(vec2<i32>(-36558, 3635), -1000.0), true, Struct_1(vec2<i32>(49022, -1), 221.0)).b)));
            }
            let var_2 = func_3(arg_0.x, func_5(true, u_input.c, var_1), !vec3<bool>(all(vec4<bool>(arg_1.x, false, true, false)), false, false)).a.x;
            if (!false) {
            }
            let var_3 = func_3(u_input.c.x, func_5(!true, u_input.c, func_5(all(vec4<bool>(false, arg_1.x, arg_1.x, false)), arg_0.wxx, var_1)), vec3<bool>(all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), 22451u != abs(firstTrailingBit(arg_0.x)), arg_1.x));
        }
        case -1: {
            loop {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                var var_2 = var_1.a;
                var_2 = var_1.a;
                var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -502.0)), _wgslsmith_f_op_f32(117.0 + var_2.b))));
            }
            var var_2 = func_5(!(abs(4294967295u) <= func_7(_wgslsmith_f_op_f32(-var_1.b.x), var_1, func_5(arg_1.x, arg_0.zwz, Struct_2(Struct_1(var_1.a.a, -2665.0), var_1.b)).b, vec2<bool>(arg_1.x, false))), ~arg_0.wxw, Struct_2(Struct_1(vec2<i32>(u_input.b, u_input.a), func_8(func_9(var_1.a, Struct_1(vec2<i32>(u_input.a, -26945), var_1.a.b), vec4<i32>(u_input.b, -12535, u_input.a, 5282)), func_8(Struct_1(vec2<i32>(0, u_input.a), 2312.0), Struct_1(var_1.a.a, var_1.a.b), true, var_1.a), !false, func_3(1u, Struct_2(Struct_1(vec2<i32>(-1, var_1.a.a.x), var_1.a.b), vec4<f32>(-208.0, 514.0, 718.0, -1119.0)), vec3<bool>(true, true, false))).b), var_1.b));
            if (arg_1.x) {
                let var_3 = func_8(func_5(true, vec3<u32>(u_input.c.x, u_input.c.x, ~_wgslsmith_add_u32(4294967295u, arg_0.x)), Struct_2(var_1.a, _wgslsmith_f_op_vec4_f32(trunc(var_2.b)))).a, Struct_1(vec2<i32>(firstLeadingBit(firstLeadingBit(var_1.a.a.x)), var_1.a.a.x), func_5(!false, firstLeadingBit(u_input.c), var_1).b.x), true, Struct_1((_wgslsmith_clamp_vec2_i32(var_1.a.a, var_1.a.a, var_1.a.a) >> (~vec2<u32>(arg_0.x, 1u) % vec2<u32>(32u))) << (u_input.c.yy % vec2<u32>(32u)), _wgslsmith_f_op_f32(586.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.b, var_1.a.b, arg_1.x)) - 120.0))));
                var var_4 = ~(~_wgslsmith_sub_u32(func_7(var_2.b.x, Struct_2(var_3, vec4<f32>(var_2.a.b, var_2.a.b, -1000.0, -705.0)), var_2.b, arg_1.wy), firstTrailingBit(1u))) >> (_wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 4294967295u, u_input.c.x, u_input.c.x >> (23420u % 32u)), select(vec4<u32>(50371u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, u_input.c.x, 8088u, arg_0.x), false))) % 32u);
                var_2 = var_1;
                let var_5 = var_1;
            }
            var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(464.0, var_2.a.b))), var_1.a.b))));
            var_0 = func_5(!true, u_input.c, func_5(!false, abs(abs(~vec3<u32>(28257u, arg_0.x, 19734u))), Struct_2(Struct_1(max(vec2<i32>(61544, u_input.b), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(-1000.0)), var_2.b))).b.x;
        }
        default: {
            var_0 = 1357.0;
            if (true) {
                var_0 = _wgslsmith_f_op_f32(-var_1.b.x);
                let var_2 = vec3<i32>(_wgslsmith_clamp_i32(-41814, -1, 0), -_wgslsmith_clamp_i32(-u_input.b, _wgslsmith_clamp_i32(u_input.b, 2147483647, var_1.a.a.x), var_1.a.a.x) >> (abs(select(~1u, 4294967295u, all(arg_1.zyw))) % 32u), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(countOneBits(u_input.a), _wgslsmith_add_i32(u_input.b, -2147483648), 0 ^ -2147483648) << (~(~u_input.c.x) % 32u), ~(-firstTrailingBit(-97467)), -2147483648));
                var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(max(~vec4<i32>(2147483647, 1, var_2.x, var_2.x) ^ min(vec4<i32>(-5565, -2147483648, 29567, var_2.x), vec4<i32>(-24996, u_input.b, 2893, 1)), reverseBits(-vec4<i32>(-1, -19196, var_2.x, u_input.b))), abs(-vec4<i32>(-1, var_1.a.a.x, var_2.x, -2147483648)) & -(~vec4<i32>(2147483647, -37081, var_1.a.a.x, u_input.a))), max(~countOneBits(vec4<i32>(0, u_input.b, var_2.x, 16232)), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(0, var_2.x, var_2.x, var_1.a.a.x), vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.b)))));
                let var_4 = _wgslsmith_div_i32(var_1.a.a.x, -min(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, -1), vec2<i32>(-1, var_3.x)))) == func_4();
                var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(abs(abs(firstLeadingBit(vec4<i32>(var_1.a.a.x, -1, u_input.a, 0)))), _wgslsmith_mult_vec4_i32(select(countOneBits(vec4<i32>(var_1.a.a.x, u_input.a, var_3.x, 16525)), max(vec4<i32>(-2147483648, var_3.x, var_2.x, -49367), vec4<i32>(0, var_3.x, 2147483647, -24861)), !arg_1.x), vec4<i32>(var_1.a.a.x ^ var_3.x, var_3.x, 0, firstLeadingBit(-1)))), abs(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_3.x, var_3.x, var_2.x, -57707) | vec4<i32>(26313, -36446, 1, var_3.x)), vec4<i32>(~var_2.x, _wgslsmith_dot_vec3_i32(var_3.wxw, var_3.zxw), var_1.a.a.x ^ var_1.a.a.x, var_1.a.a.x))), countOneBits(firstLeadingBit(-vec4<i32>(-2147483648, u_input.b, 49790, u_input.a))) >> (arg_0 % vec4<u32>(32u)));
            }
            var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))));
        }
    }
    var var_2 = u_input.c.zy;
    return min(u_input.a, u_input.a) << (~u_input.c.x % 32u);
}

fn func_11(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = vec4<bool>(-1579.0 >= _wgslsmith_div_f32(func_3(67984u, Struct_2(Struct_1(arg_1.a, arg_0.x), vec4<f32>(-1000.0, arg_0.x, -494.0, -1000.0)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))).b, arg_0.x), !(_wgslsmith_f_op_f32(-arg_1.b) != _wgslsmith_f_op_f32(func_8(Struct_1(vec2<i32>(arg_2, -1), -964.0), arg_1, false, arg_1).b - arg_1.b)), 389.0 == arg_1.b, !(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))) || all(vec4<bool>(false, true, true, true))));
    let var_1 = func_5(true, abs(vec3<u32>(~u_input.c.x, ~firstTrailingBit(1u), max(4294967295u, arg_3.x))), Struct_2(arg_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)), -190.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-645.0)))), arg_0.x)));
    let var_2 = -firstTrailingBit(u_input.a);
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        for (var var_3 = -2147483648; ; var_3 += 1) {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            continue;
        }
        loop {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            var var_3 = min(vec3<i32>(_wgslsmith_div_i32(6635, -(~u_input.b)), (-14115 & arg_1.a.x) ^ _wgslsmith_mod_i32(1, -1), 44533), ~min(~vec3<i32>(var_2, u_input.b, -19597), vec3<i32>(-9429, abs(arg_1.a.x), -34367)));
        }
    }
    loop {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        switch (~((arg_2 >> (_wgslsmith_dot_vec4_u32(arg_3, abs(arg_3)) % 32u)) ^ var_1.a.a.x)) {
            default: {
                let var_3 = _wgslsmith_f_op_f32(-819.0);
            }
        }
        if (false) {
            let var_3 = -1454.0;
            let var_4 = 4294967295u;
            let var_5 = vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)))), 634.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-787.0, _wgslsmith_f_op_f32(func_10(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_3.x, 1u, arg_3.x), arg_3), arg_3, Struct_1(var_1.a.a, -519.0), func_3(25096u, var_1, vec3<bool>(var_0.x, var_0.x, var_0.x))))))));
        }
        let var_3 = func_5(true, vec3<u32>(arg_3.x, min(20204u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, u_input.c.x, arg_3.x), arg_3.yxx)), arg_3.x), func_5(var_0.x, vec3<u32>(1u, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_3.x, arg_3.x, arg_3.x), ~arg_3)), Struct_2(Struct_1(arg_1.a << (vec2<u32>(11091u, 27527u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(-740.0, var_1.b.x))), var_1.b)));
    }
    return vec4<i32>(-1) * -_wgslsmith_add_vec4_i32(-vec4<i32>(1, u_input.b, -38426, u_input.b), reverseBits(vec4<i32>(-2147483648, 10308, var_2, var_2)));
}

fn func_1() -> i32 {
    if (_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1323.0 - -286.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-334.0 * 1786.0) - _wgslsmith_f_op_f32(-1000.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2136.0) - 507.0))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1216.0), _wgslsmith_f_op_f32(trunc(296.0)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157.0 - _wgslsmith_f_op_f32(exp2(-650.0))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -556.0)))))) {
        let var_0 = max(func_11(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100.0 - -650.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1106.0, -1000.0)) * _wgslsmith_f_op_f32(select(-1350.0, -1220.0, false)))), Struct_1(min(_wgslsmith_mod_vec2_i32(vec2<i32>(26257, 2147483647), vec2<i32>(u_input.a, 2147483647)), vec2<i32>(u_input.b, 16049)), _wgslsmith_f_op_f32(min(-575.0, _wgslsmith_f_op_f32(-274.0 + -1199.0)))), func_2(vec4<u32>(firstLeadingBit(1u), ~u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 29269u), countOneBits(4294967295u)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false))), firstTrailingBit(~abs(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 4294967295u)))), vec4<i32>(func_4(), 6826, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-7667, u_input.b ^ 1, 0), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.a), vec3<i32>(2147483647, u_input.b, u_input.a)))));
    }
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-957.0, -1648.0), _wgslsmith_f_op_f32(-1000.0 - -311.0), _wgslsmith_f_op_f32(f32(-1.0) * -197.0)) * func_5(-291.0 >= 462.0, u_input.c, Struct_2(Struct_1(vec2<i32>(u_input.a, -1), 302.0), vec4<f32>(-1372.0, -256.0, -658.0, -227.0))).b.wxz), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(194.0, 335.0, -1435.0), vec3<f32>(-1432.0, -962.0, -379.0), vec3<bool>(false, false, true))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(785.0 + -911.0) * _wgslsmith_f_op_f32(119.0 * -1311.0)), -2582.0, func_8(Struct_1(vec2<i32>(u_input.a, 1), 436.0), func_9(Struct_1(vec2<i32>(u_input.a, -50228), 203.0), Struct_1(vec2<i32>(u_input.b, u_input.b), -312.0), vec4<i32>(-76579, u_input.a, 1, 10764)), false, func_8(Struct_1(vec2<i32>(3287, 13643), 267.0), Struct_1(vec2<i32>(-2147483648, 1), -1019.0), false, Struct_1(vec2<i32>(u_input.a, -1), 1687.0))).b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -999.0), -480.0, var_0.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -278.0, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(338.0, -1396.0, -1093.0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-874.0, var_0.x, 1000.0) + vec3<f32>(var_0.x, var_0.x, var_0.x))))));
    let var_2 = !(!select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, false), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))));
    switch (i32(-1) * -2147483648) {
        default: {
            let var_3 = vec3<i32>(~(-1), i32(-1) * -30870, abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(22189 >> (34827u % 32u), _wgslsmith_add_i32(u_input.b, 2147483647)), func_11(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, -900.0))), func_9(Struct_1(vec2<i32>(1, -2147483648), var_0.x), Struct_1(vec2<i32>(2147483647, 56543), -341.0), vec4<i32>(u_input.b, -1, u_input.a, 8328)), u_input.b, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)).x)));
            if (!all(vec3<bool>(!all(var_2), select(u_input.c.x, 108986u, false) == (u_input.c.x | 32993u), !true))) {
                var_1 = vec3<f32>(var_0.x, 1000.0, 686.0);
                let var_4 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(func_10(vec4<u32>(~(u_input.c.x << (1u % 32u)), ~(u_input.c.x & u_input.c.x), 2616u, countOneBits(~13464u)), firstLeadingBit(~(vec4<u32>(6798u, u_input.c.x, 0u, u_input.c.x) | vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x))), func_8(Struct_1(var_3.xx, _wgslsmith_f_op_f32(-var_1.x)), Struct_1(var_3.yx, _wgslsmith_f_op_f32(-var_0.x)), !(false || true), func_9(func_8(Struct_1(vec2<i32>(var_3.x, u_input.a), var_1.x), Struct_1(var_3.xz, -319.0), var_2.x, Struct_1(vec2<i32>(-38328, var_3.x), var_0.x)), Struct_1(var_3.zx, -1000.0), vec4<i32>(7584, -2147483648, -2147483648, var_3.x))), func_9(func_8(func_5(var_2.x, u_input.c, Struct_2(Struct_1(var_3.yx, 1051.0), vec4<f32>(var_0.x, var_1.x, var_0.x, 698.0))).a, Struct_1(var_3.zy, -489.0), var_2.x, func_9(Struct_1(vec2<i32>(2147483647, 14586), 644.0), Struct_1(var_3.zx, var_1.x), vec4<i32>(var_3.x, 0, 2147483647, -2147483648))), func_5(false, ~vec3<u32>(u_input.c.x, 33846u, 4294967295u), func_5(true, u_input.c, Struct_2(Struct_1(var_3.yz, var_0.x), vec4<f32>(-307.0, 511.0, -326.0, -938.0)))).a, ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, 56506, var_3.x, 20668), vec4<i32>(-2147483648, 37192, -1, 35036))))), func_8(func_5(all(!vec4<bool>(true, true, var_2.x, var_2.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 20541u, u_input.c.x), u_input.c) & ~u_input.c, Struct_2(func_5(var_2.x, u_input.c, Struct_2(Struct_1(vec2<i32>(2147483647, -1), 1049.0), vec4<f32>(-844.0, var_0.x, 780.0, 745.0))).a, vec4<f32>(-1130.0, var_1.x, 362.0, var_1.x))).a, Struct_1(-vec2<i32>(u_input.a, u_input.a) >> (~u_input.c.yz % vec2<u32>(32u)), _wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(var_3.xz, var_0.x), vec4<f32>(var_1.x, 1109.0, -276.0, var_1.x)), func_5(var_2.x, u_input.c, Struct_2(Struct_1(vec2<i32>(u_input.b, 2147483647), -1214.0), vec4<f32>(205.0, var_1.x, -1949.0, var_1.x)))))), false, func_9(Struct_1(_wgslsmith_clamp_vec2_i32(var_3.yx, vec2<i32>(var_3.x, u_input.b), vec2<i32>(var_3.x, 56330)), -1897.0), Struct_1(reverseBits(vec2<i32>(895, u_input.a)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, var_3.x, u_input.a, -2147483648)), vec4<i32>(var_3.x, 43312, -2147483648, u_input.a)))).b);
                var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_4), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4), _wgslsmith_f_op_vec3_f32(var_4 - vec3<f32>(504.0, var_1.x, 1158.0)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(146.0 * var_1.x)), func_9(func_8(Struct_1(var_3.xx, 2702.0), Struct_1(vec2<i32>(30170, -2147483648), var_4.x), var_2.x, Struct_1(vec2<i32>(-12334, -2147483648), 2065.0)), Struct_1(var_3.xy, var_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 2147483647, var_3.x, 2147483647), vec4<i32>(2147483647, u_input.a, var_3.x, var_3.x))).b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -2301.0), _wgslsmith_f_op_f32(max(-885.0, -1000.0))))), var_2.x)), select(select(!(!vec3<bool>(var_2.x, var_2.x, var_2.x)), !vec3<bool>(false, var_2.x, true), select(var_2.x, !var_2.x, any(vec3<bool>(true, false, false)))), !(!vec3<bool>(false, var_2.x, var_2.x)), vec3<bool>(!var_2.x, (true & false) || (var_2.x | true), var_2.x))));
                var var_5 = false == !(!true);
                var_1 = var_4;
            }
            var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(258.0, var_0.x, var_0.x)));
        }
    }
    return u_input.b & u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        loop {
            if (LOOP_COUNTERS[27u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            break;
        }
    }
    loop {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
    }
    switch (_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483648, 52879), func_1())), u_input.b | func_9(Struct_1(vec2<i32>(32430, 1), _wgslsmith_div_f32(-981.0, 492.0)), func_3(55187u, Struct_2(Struct_1(vec2<i32>(-11002, u_input.a), -748.0), vec4<f32>(318.0, 842.0, 488.0, -554.0)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), firstTrailingBit(vec4<i32>(-2147483648, u_input.b, 35117, 2147483647) ^ vec4<i32>(u_input.a, -1, -2147483648, u_input.a))).a.x)) {
        case 0: {
            let var_0 = !(!select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false), !vec4<bool>(true, true, false, true), !any(vec2<bool>(false, false))));
            loop {
                if (LOOP_COUNTERS[29u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            }
        }
        case 24262: {
            let var_0 = all(select(select(vec2<bool>(all(vec2<bool>(true, false)), !false), vec2<bool>(all(vec3<bool>(false, true, true)), false && false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), -1117.0 <= -947.0)), vec2<bool>(any(vec4<bool>(true, true, true, false)) != !false, !true & any(vec2<bool>(false, true))), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false), !vec3<bool>(true, true, true)))));
            if (false || select(false, var_0, !var_0)) {
                var var_1 = 1;
                var_1 = -2147483648;
                var var_2 = vec3<bool>(select(all(!select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, true, true, var_0), vec4<bool>(false, true, false, false))), var_0, ~(u_input.c.x | u_input.c.x) == 4294967295u), -48747 <= select(-u_input.b, func_3(~0u, Struct_2(Struct_1(vec2<i32>(-2147483648, u_input.b), 800.0), vec4<f32>(814.0, 1000.0, 838.0, -869.0)), vec3<bool>(var_0, true, true)).a.x, !(-570.0 < -397.0)), var_0);
            }
            let var_1 = Struct_2(func_5(any(select(select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0)), select(vec4<bool>(true, var_0, true, true), vec4<bool>(true, var_0, var_0, false), vec4<bool>(false, var_0, var_0, true)), !false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~u_input.c.x, 4294967295u >> (u_input.c.x % 32u)), reverseBits(u_input.c), firstTrailingBit(abs(vec3<u32>(48985u, u_input.c.x, u_input.c.x)))), Struct_2(Struct_1(func_11(vec2<f32>(-1000.0, -228.0), Struct_1(vec2<i32>(0, 25443), 1398.0), u_input.a, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 84287u)).zw, _wgslsmith_f_op_f32(min(-1212.0, -899.0))), vec4<f32>(1000.0, 1604.0, func_5(var_0, u_input.c, Struct_2(Struct_1(vec2<i32>(u_input.b, -2147483648), 1339.0), vec4<f32>(-483.0, -754.0, -1000.0, -212.0))).b.x, _wgslsmith_f_op_f32(exp2(-1178.0))))).a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(498.0)), _wgslsmith_f_op_f32(func_10(vec4<u32>(0u, u_input.c.x, 20845u, 10873u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), Struct_1(vec2<i32>(u_input.a, 30889), 1050.0), Struct_1(vec2<i32>(u_input.a, 1), 1121.0))), func_5(var_0, vec3<u32>(u_input.c.x, 121741u, u_input.c.x), Struct_2(Struct_1(vec2<i32>(3856, -2147483648), -184.0), vec4<f32>(194.0, -144.0, -1000.0, 983.0))).a.b, _wgslsmith_f_op_f32(step(1363.0, -347.0))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1114.0 * -1115.0), _wgslsmith_f_op_f32(-1000.0), -1000.0, 1682.0), vec4<f32>(1017.0, 353.0, _wgslsmith_f_op_f32(f32(-1.0) * -1022.0), _wgslsmith_f_op_f32(152.0 * -113.0))))));
            var var_2 = u_input.c.x;
        }
        case -33287: {
            var var_0 = -(~(~vec3<i32>(u_input.a, ~2147483647, 24956)));
            for (var var_1 = 20124; select(any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), !vec2<bool>(true, false)), select(!vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), any(vec3<bool>(true, true, false))), 1272.0 != func_8(Struct_1(var_0.xy, -730.0), Struct_1(var_0.yx, -996.0), false, Struct_1(vec2<i32>(u_input.a, 1), 984.0)).b)), all(select(select(!vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !vec3<bool>(true, false, true)), vec3<bool>(u_input.a >= var_0.x, false, !false), vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true))), false); ) {
                if (LOOP_COUNTERS[30u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
                var var_2 = !(any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), false)) && (!(u_input.c.x > 45023u) && all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)))));
                let var_3 = true;
                break;
            }
        }
        default: {
        }
    }
    var var_0 = vec3<f32>(1456.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_9(Struct_1(vec2<i32>(u_input.b, u_input.a), 997.0), Struct_1(vec2<i32>(2147483647, 12188), -1210.0), _wgslsmith_clamp_vec4_i32(vec4<i32>(-17954, 37323, u_input.a, u_input.b), vec4<i32>(0, u_input.a, u_input.a, u_input.a), vec4<i32>(-18434, u_input.b, u_input.b, 25510))).b + -1367.0))), -309.0);
    let var_1 = select(select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<u32>(u_input.c.x, 45352u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), ~max(u_input.c, u_input.c), !vec3<bool>(false, false, false)) & u_input.c, _wgslsmith_add_vec3_u32(u_input.c, ~u_input.c), u_input.a < func_3(max(firstTrailingBit(u_input.c.x), ~1u), Struct_2(Struct_1(vec2<i32>(u_input.b, -1), var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -646.0, 1000.0, -1000.0) * vec4<f32>(var_0.x, -1000.0, -614.0, var_0.x))), vec3<bool>(!true, 222.0 >= var_0.x, var_0.x < -1000.0)).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(7454u, vec2<i32>(u_input.b ^ func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 80920u, 33149u, 1u), vec4<u32>(u_input.c.x, 20389u, u_input.c.x, 3717u)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), 0 | min(-1, _wgslsmith_mod_i32(2147483647, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1000.0), min(abs(vec4<i32>(-2147483648, func_9(Struct_1(vec2<i32>(-68262, u_input.a), 673.0), Struct_1(vec2<i32>(u_input.b, u_input.b), 213.0), vec4<i32>(-18333, u_input.b, 2147483647, -51549)).a.x, _wgslsmith_div_i32(73563, u_input.a), u_input.a)), -vec4<i32>(func_5(true, var_1, Struct_2(Struct_1(vec2<i32>(-12979, 29999), var_0.x), vec4<f32>(var_0.x, -1017.0, 1480.0, var_0.x))).a.a.x, _wgslsmith_div_i32(u_input.a, u_input.b), 1, 71206)), vec3<i32>(func_4(), func_1(), _wgslsmith_sub_i32(u_input.a << (~u_input.c.x % 32u), ~max(-62580, u_input.a))));
}

