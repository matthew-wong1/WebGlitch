// {"0:0":[8,207,123,30,197,37,117,163,142,241,67,236,198,144,184,54,197,87,203,162,97,141,160,177,100,217,231,115,192,74,53,192,87,131,13,228,159,187,162,52,215,94,42,117,114,103,21,219,45,123,255,252,136,59,152,197,153,63,38,126,250,146,175,35]}
// Seed: 7372051399460702861

struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 38>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn func_6(arg_0: vec3<u32>) -> u32 {
    switch (65007) {
        case 7760: {
            var var_0 = Struct_1(vec2<i32>(firstTrailingBit(u_input.d), (-53651 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(4294967295u, 693u)) % 32u)) & u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1411.0, 660.0, 224.0)))))), -657.0, vec4<u32>(12669u, abs(arg_0.x), _wgslsmith_sub_u32(~arg_0.x, ~(~arg_0.x)), u_input.c));
            for (var var_1 = 1; var_1 > -2147483648; var_1 += 1) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                continue;
            }
        }
        case 2147483647: {
        }
        default: {
            if (true | all(select(!(!vec3<bool>(true, false, false)), !vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), !vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))))) {
                var var_0 = ~select(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a >> (u_input.a % vec4<u32>(32u)), vec4<u32>(58545u, 31197u, 4294967295u, arg_0.x) ^ u_input.a), _wgslsmith_div_u32(max(8849u, arg_0.x), ~64047u), _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(arg_0.x, u_input.a.x), ~u_input.c)), u_input.b, !select(false, true, true) || !any(vec4<bool>(true, false, false, false)));
                var_0 = ~(~(~vec3<u32>(_wgslsmith_clamp_u32(37965u, u_input.a.x, 1u), countOneBits(1u), u_input.c)));
            }
            for (var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.e, u_input.e, abs(min(vec3<i32>(17218, u_input.d, u_input.e.x), u_input.e))), reverseBits(reverseBits(max(u_input.e, vec3<i32>(u_input.d, 0, -2147483648))))), u_input.d); !false; var_0 -= 1) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var_0 = -_wgslsmith_sub_i32(u_input.d, 49320);
                var var_1 = u_input.e.yx;
                break;
            }
        }
    }
    for (var var_0 = u_input.d; u_input.e.x >= abs(u_input.d); var_0 += 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-485.0));
    switch (_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(u_input.d, -19815, 4301, u_input.e.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 3616, 0, -44408), vec4<i32>(u_input.e.x, 37899, 7527, -89))), ~(vec4<i32>(9717, u_input.d, u_input.e.x, -24918) >> (u_input.a % vec4<u32>(32u)))), ~(-select(-1, u_input.e.x, true))), reverseBits(_wgslsmith_dot_vec3_i32(u_input.e, -u_input.e)))) {
        case 2147483647: {
            let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), 977.0), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2622.0, 425.0)))))), vec2<f32>(var_0.a, var_0.a)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, 810.0))))) * vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), var_0.a)))));
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var var_2 = select(!(!(!(!vec2<bool>(true, false)))), select(select(vec2<bool>(arg_0.x <= 1u, !false), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), vec2<bool>(false, false), vec2<bool>(!(!false), false)), !(_wgslsmith_f_op_f32(-704.0 * -1138.0) < _wgslsmith_f_op_f32(-var_0.a)));
            }
            if (!any(!vec2<bool>(true, any(vec4<bool>(false, false, true, true))))) {
                let var_2 = ~select(vec3<u32>(4294967295u, 97773u, select(~arg_0.x, 4294967295u << (0u % 32u), any(vec4<bool>(false, true, true, true)))), reverseBits(arg_0), vec3<bool>(!(false | true), !(!false), _wgslsmith_mult_i32(u_input.e.x, u_input.e.x) <= u_input.e.x));
            }
            for (; arg_0.x > _wgslsmith_clamp_u32(u_input.c, firstLeadingBit(~105036u), firstTrailingBit(u_input.b.x) << (_wgslsmith_mod_u32(u_input.a.x, arg_0.x) % 32u)); ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_2 = -(~vec2<i32>(1, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647, 24536), vec3<i32>(2147483647, u_input.d, u_input.e.x))));
            }
            var var_2 = Struct_1(vec2<i32>(-u_input.d, u_input.e.x) ^ _wgslsmith_add_vec2_i32(-vec2<i32>(-2147483648, -29347) >> ((arg_0.zx ^ u_input.a.yx) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.e.xx << (u_input.a.xx % vec2<u32>(32u)), vec2<i32>(-5189, u_input.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -613.0, 891.0)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-593.0, var_0.a, var_1.x)), vec3<f32>(480.0, var_0.a, var_0.a), vec3<bool>(false, false, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-734.0, var_1.x, var_0.a))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -752.0))))))), var_1.x, ~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, 1u), vec3<u32>(81446u, arg_0.x, arg_0.x)), (40968u | 27548u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), arg_0.zz), 13503u, ~max(arg_0.x, 8627u)));
        }
        default: {
            switch (-1) {
                case 0: {
                }
                case -249: {
                    let var_1 = false;
                    let var_2 = -u_input.e.x;
                    let var_3 = select(vec2<bool>(any(select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, false, var_1), vec3<bool>(true, true, var_1))) & !(false && true), all(select(!vec3<bool>(false, var_1, false), select(vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, var_1), true), -2147483648 > var_2))), !vec2<bool>(true, true), var_1);
                    let var_4 = Struct_3(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(16138u, u_input.a.x), u_input.b.yx, arg_0.zx), firstTrailingBit(u_input.a.yx)), ~arg_0.zx), var_1);
                }
                case -22825: {
                    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(-179.0)), !false))))));
                    let var_2 = Struct_3(~vec2<u32>(1u, arg_0.x), !true);
                    return 1u;
                }
                case 14574: {
                    var var_1 = firstTrailingBit(-min(firstTrailingBit(~vec4<i32>(u_input.d, u_input.e.x, u_input.d, 11567)), _wgslsmith_clamp_vec4_i32(vec4<i32>(51100, -10295, u_input.d, 59489), abs(vec4<i32>(-4630, u_input.e.x, u_input.d, u_input.d)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -7858, u_input.e.x, -2147483648), vec4<i32>(u_input.e.x, u_input.d, u_input.d, u_input.d)))));
                    let var_2 = 4294967295u;
                    return 8511u;
                }
                default: {
                    var var_1 = Struct_4(select(select(vec3<bool>(false && true, select(false, true, true), false), !(!vec3<bool>(false, false, false)), select(true && true, !true, false)), !(!(!vec3<bool>(true, true, false))), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-850.0 + 236.0))))), !select(vec3<bool>(false, true, !false), vec3<bool>(!true, all(vec2<bool>(false, true)), !true), false), _wgslsmith_add_vec2_i32(u_input.e.xz, ~abs(_wgslsmith_mult_vec2_i32(vec2<i32>(2916, 2147483647), u_input.e.xx))));
                }
            }
            var var_1 = Struct_3(vec2<u32>(arg_0.x, 12947u), any(select(select(vec4<bool>(false, false, false, true), !vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), select(vec4<bool>(false, true, true, true), !vec4<bool>(true, false, false, false), !true), !(!true))));
        }
    }
    switch (-2147483648) {
        case 1: {
        }
        case -2147483648: {
            switch (_wgslsmith_clamp_i32(min(_wgslsmith_mod_i32(u_input.d >> (49287u % 32u), _wgslsmith_clamp_i32(0, -16564, 32511)), abs(_wgslsmith_mod_i32(-50049, u_input.e.x))), ~(~u_input.e.x), -5980 & _wgslsmith_mult_i32(-1, u_input.d)) ^ u_input.e.x) {
                default: {
                }
            }
            let var_1 = var_0.a;
            switch (_wgslsmith_dot_vec3_i32(~countOneBits(u_input.e), -(-vec3<i32>(u_input.e.x, 1465, -1) ^ _wgslsmith_add_vec3_i32(-vec3<i32>(-16792, 0, 1), ~u_input.e)))) {
                case 21436: {
                    return 0u;
                }
                case 2147483647: {
                    let var_2 = Struct_4(select(select(!vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), !vec3<bool>(true, false, false)), !(!vec3<bool>(true, false, false))), !vec3<bool>(true | true, any(vec4<bool>(true, false, false, true)), false), 44731 < firstTrailingBit(i32(-1) * -5356)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(-2717.0)))))), !vec3<bool>(arg_0.x >= 3781u, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(any(vec4<bool>(true, true, false, false)), false, false)), _wgslsmith_add_vec2_i32(u_input.e.zz, vec2<i32>(-17185, u_input.e.x)) >> (~(~arg_0.zz) % vec2<u32>(32u)));
                    return _wgslsmith_mult_u32(~(~u_input.a.x) | select(_wgslsmith_clamp_u32(1u << (27881u % 32u), arg_0.x, 6510u), ~u_input.a.x, ~0u < _wgslsmith_add_u32(u_input.c, u_input.a.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.c, arg_0.x, 38411u)), ~u_input.a.x, _wgslsmith_dot_vec3_u32(arg_0, arg_0)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 0u, u_input.b.x), vec3<u32>(arg_0.x, u_input.c, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), vec3<u32>(arg_0.x, 0u, 1u)))), ~vec3<u32>(select(61701u, 4688u, var_2.c.x), ~0u, arg_0.x)));
                }
                case -39136: {
                    var var_2 = Struct_4(vec3<bool>(countOneBits(u_input.a.x >> (26789u % 32u)) > 6622u, any(vec4<bool>(false, false, true, true)) == any(vec4<bool>(false, false, false, true)), 2147483647 > countOneBits(2147483647)), -179.0, !(!(!vec3<bool>(false, true, true))), vec2<i32>(u_input.d, ~2147483647));
                }
                case -35879: {
                    var var_2 = abs(u_input.e.yz);
                    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1008.0, _wgslsmith_f_op_f32(max(var_0.a, var_0.a)), 749.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-775.0, _wgslsmith_f_op_f32(select(var_0.a, -887.0, false)))) + _wgslsmith_f_op_f32(f32(-1.0) * -550.0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_1, -322.0, 1428.0)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392.0 - -1754.0)), _wgslsmith_f_op_f32(-590.0 - var_0.a), var_1, var_1)));
                    let var_4 = Struct_4(vec3<bool>(true, 2401.0 > var_1, all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), !vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))), var_0.a, select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, !false, !false), vec3<bool>(false, !true, 31667u != u_input.a.x)), !vec3<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, false, false)), true), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), _wgslsmith_sub_vec2_i32(u_input.e.zz, u_input.e.yy));
                    var_2 = select(-u_input.e.xz, ~(vec2<i32>(-40153, -2147483647) | min(abs(var_4.d), -var_4.d)), !select(var_4.a.yx, var_4.c.yz, true));
                    var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1186.0), _wgslsmith_f_op_f32(-1000.0 * var_4.b), -279.0, var_1);
                }
                default: {
                    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-121.0)) * _wgslsmith_f_op_f32(round(var_0.a)))), var_0.a);
                    let var_3 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1081.0 - 1919.0) + 383.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -564.0), _wgslsmith_f_op_f32(-var_2.x)))) * _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 * var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) + _wgslsmith_f_op_f32(-1429.0))))));
                    let var_4 = 0;
                    let var_5 = arg_0.xx;
                    var var_6 = var_4 << (4294967295u % 32u);
                }
            }
        }
        case 0: {
            switch (u_input.d) {
                case 1: {
                    var var_1 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, arg_0.x, u_input.b.x, 1u)) ^ (u_input.a & vec4<u32>(u_input.a.x, 4294967295u, 0u, arg_0.x)), firstTrailingBit(vec4<u32>(1u, arg_0.x, u_input.a.x, u_input.c)))), vec4<u32>(arg_0.x, 4294967295u, max(abs(42935u), arg_0.x) ^ abs(0u), arg_0.x));
                    var_1 = u_input.a.x;
                    var_1 = _wgslsmith_sub_u32(40638u, 48685u) >> (_wgslsmith_mult_u32(arg_0.x, arg_0.x) % 32u);
                }
                case -2147483648: {
                    var var_1 = vec2<i32>(u_input.e.x, -u_input.e.x);
                }
                default: {
                    let var_1 = _wgslsmith_div_u32(arg_0.x, 27082u);
                    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1311.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1897.0)) - 1000.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(floor(var_0.a)), true | false)) + 912.0)), _wgslsmith_f_op_f32(trunc(var_0.a)));
                }
            }
            if (any(!select(vec2<bool>(true, !false), !vec2<bool>(true, true), true))) {
                let var_1 = Struct_4(select(select(vec3<bool>(all(vec4<bool>(false, true, false, false)), all(vec4<bool>(false, true, false, false)), true & false), vec3<bool>(false, !false, any(vec3<bool>(false, false, true))), vec3<bool>(all(vec4<bool>(true, false, false, true)), false, all(vec3<bool>(true, true, true)))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), all(vec3<bool>(true, false, false))), !(!vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), select(false, false, false))), select(select(vec3<bool>(true, false, false), !vec3<bool>(true, true, false), !true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), !all(vec2<bool>(true, true)))), -1727.0, !(!vec3<bool>(true && false, true & false, false)), _wgslsmith_sub_vec2_i32(-u_input.e.yz, vec2<i32>(-1 ^ abs(u_input.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1, 2147483647, u_input.e.x), vec3<i32>(u_input.d, u_input.e.x, u_input.e.x)) ^ (i32(-1) * -1))));
                let var_2 = 4294967295u;
                var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-209.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-820.0), _wgslsmith_f_op_f32(-var_0.a))))) - var_1.b));
                var_3 = Struct_2(var_1.b);
                let var_4 = var_0;
            }
            var var_1 = Struct_4(vec3<bool>(false, !true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, -1473.0)))))), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), select(vec3<bool>(true || false, false, false), !(!vec3<bool>(false, false, true)), !false == any(vec2<bool>(false, false))), false), _wgslsmith_mult_vec2_i32(firstLeadingBit(-max(vec2<i32>(2147483647, -28742), u_input.e.yz)), firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.e.zy, vec2<i32>(2938, 1))))));
            if (!var_1.c.x) {
                let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, var_1.b))), var_1.b)), 1632.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-131.0))))), var_1.b));
                var var_3 = Struct_3(u_input.a.xz, !(_wgslsmith_f_op_f32(-var_1.b) < var_0.a) & !false);
                var var_4 = !var_1.c.x;
                var var_5 = Struct_1(vec2<i32>(1, var_1.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1017.0, _wgslsmith_f_op_f32(exp2(1389.0)), _wgslsmith_f_op_f32(-var_1.b)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.yzx))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.yyx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0.a, 441.0)))))), 164.0, u_input.a);
                let var_6 = Struct_4(vec3<bool>(select(!var_3.b, var_3.b | (u_input.c >= u_input.a.x), var_1.a.x), all(!select(vec2<bool>(var_3.b, var_3.b), vec2<bool>(true, var_3.b), var_1.c.zy)), !var_3.b), 697.0, var_1.a, vec2<i32>(-2147483648, i32(-1) * -32564));
            }
            if (!select(!(-243.0 >= _wgslsmith_f_op_f32(exp2(var_1.b))), !(!(true && var_1.a.x)), false)) {
                var_1 = Struct_4(var_1.a, _wgslsmith_f_op_f32(step(388.0, _wgslsmith_f_op_f32(step(-1000.0, var_1.b)))), !select(!vec3<bool>(var_1.a.x, false, var_1.a.x), var_1.c, vec3<bool>(false || true, false & var_1.a.x, var_1.a.x)), vec2<i32>(~2147483647, var_1.d.x) | (vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.e, u_input.e), 1) & abs(_wgslsmith_mod_vec2_i32(var_1.d, vec2<i32>(var_1.d.x, u_input.d)))));
            }
        }
        default: {
        }
    }
    return ~_wgslsmith_sub_u32(4294967295u, abs(_wgslsmith_mult_u32(u_input.c, arg_0.x >> (arg_0.x % 32u))));
}

fn func_7(arg_0: vec2<bool>, arg_1: u32, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = !vec2<bool>(true, true);
    switch (abs(reverseBits(-15494))) {
        case -1: {
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                break;
            }
        }
        case 1: {
            if (arg_0.x | !true) {
            }
            let var_1 = Struct_3(vec2<u32>(~0u, min(_wgslsmith_mod_u32(~arg_2, 21625u), firstLeadingBit(~1u))), false);
            return _wgslsmith_mult_u32(~0u << (4294967295u % 32u), arg_3);
        }
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
            if (arg_0.x == var_0.x) {
            }
            if (arg_0.x) {
                let var_1 = -921.0;
            }
            let var_1 = u_input.e.x;
        }
        default: {
            let var_1 = select(!(!vec2<bool>(arg_0.x, var_0.x && var_0.x)), vec2<bool>(var_0.x, var_0.x), arg_0.x);
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                break;
            }
        }
    }
    if (all(arg_0) & (!(!(!false)) | !false)) {
        let var_1 = Struct_4(select(vec3<bool>(arg_0.x != !false, all(select(vec4<bool>(var_0.x, arg_0.x, var_0.x, var_0.x), vec4<bool>(arg_0.x, true, arg_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false))), !all(vec4<bool>(false, arg_0.x, arg_0.x, true))), vec3<bool>(!arg_0.x || !var_0.x, arg_0.x, all(!vec3<bool>(true, false, true))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1230.0))), select(select(vec3<bool>(any(vec4<bool>(arg_0.x, var_0.x, true, true)), false, var_0.x), !select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, var_0.x), var_0.x), !(!vec3<bool>(false, true, true))), !vec3<bool>(arg_0.x, all(vec2<bool>(var_0.x, true)), u_input.e.x < u_input.d), vec3<bool>(true, all(select(vec4<bool>(var_0.x, false, arg_0.x, true), vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, arg_0.x, false, false))), any(!vec2<bool>(var_0.x, var_0.x)))), max(u_input.e.zx, -(u_input.e.xy & vec2<i32>(u_input.d, -1))) | (countOneBits(reverseBits(vec2<i32>(15081, -9214))) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, 66980u, 33333u), vec4<u32>(42050u, 0u, u_input.b.x, arg_1)), ~1u) % vec2<u32>(32u))));
        var var_2 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~94754u, 50791u), ~0u, ~u_input.a.x);
        switch (-(_wgslsmith_mult_i32(abs(-1), ~2060) | var_1.d.x)) {
            case 2147483647: {
                return u_input.c;
            }
            default: {
                var_2 = ~firstTrailingBit(0u);
                let var_3 = vec4<u32>(_wgslsmith_div_u32(~reverseBits(4294967295u), _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, 4294967295u | 1u), 0u)), ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(func_6(u_input.b), _wgslsmith_mod_u32(1u, arg_2)), 1u), arg_1, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_3, 2023u | 67502u), u_input.c));
                var_2 = 16923u;
            }
        }
        switch (select(u_input.d, var_1.d.x, !(!false))) {
            case 1: {
                var_2 = _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x, arg_3)) | ~arg_1, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_2, 38507u, u_input.c, arg_3)), _wgslsmith_dot_vec3_u32(u_input.b, u_input.a.zwx)), ~arg_2)), 4294967295u);
            }
            case -17444: {
                var var_3 = vec2<f32>(1000.0, 1611.0);
                let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(185.0, var_3.x, 1000.0, -836.0)), vec4<f32>(var_3.x, 1464.0, var_1.b, -1000.0)), vec4<f32>(_wgslsmith_f_op_f32(exp2(-1247.0)), _wgslsmith_f_op_f32(-194.0), -383.0, _wgslsmith_f_op_f32(756.0 * var_1.b))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000.0, _wgslsmith_f_op_f32(-var_3.x), var_1.b, -886.0))), select(arg_2 == countOneBits(7030u), var_0.x, all(var_1.a.zz)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 821.0, var_3.x, var_3.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(797.0, var_1.b, 814.0, var_1.b))))));
                var var_5 = vec4<u32>(~((26952u | 0u) & (~1u >> (max(1u, 4294967295u) % 32u))), ~(~(0u | 1u)), _wgslsmith_add_u32(select(u_input.a.x, func_6(u_input.a.zzy), any(var_1.c)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(10156u, arg_2), ~arg_2), _wgslsmith_dot_vec3_u32(vec3<u32>(35989u, 58981u, 79034u), _wgslsmith_mult_vec3_u32(u_input.a.ywx, u_input.a.zyz)))), reverseBits(_wgslsmith_dot_vec2_u32(~(u_input.b.zz >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))), u_input.a.zz)));
                var var_6 = 4294967295u;
                let var_7 = var_3.x;
            }
            default: {
                var_2 = arg_1;
                let var_3 = Struct_2(-359.0);
                let var_4 = 32495u == abs(5354u);
            }
        }
    }
    var var_1 = Struct_2(-1109.0);
    var_1 = Struct_2(-485.0);
    return u_input.b.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(12068u, ~44282u) & _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 32259u), 4294967295u), 4294967295u & arg_3), min(u_input.b.xz, u_input.b.zx), vec2<u32>(~max(abs(56243u), _wgslsmith_dot_vec3_u32(u_input.a.xzy, u_input.a.yxy)), _wgslsmith_mult_u32(func_7(select(vec2<bool>(arg_0.x, true), arg_0.xz, true), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 80987u, 17821u, arg_3), arg_2), func_6(vec3<u32>(58999u, 4294967295u, arg_2.x)), 0u), ~_wgslsmith_add_u32(arg_1.a.x, arg_2.x))));
    let var_1 = select(select(!vec2<bool>(!arg_1.b, u_input.d < 0), !vec2<bool>(!false, u_input.e.x < -2147483648), vec2<bool>(!false, any(!arg_0))), !select(!vec2<bool>(true, arg_1.b), vec2<bool>(any(vec2<bool>(arg_1.b, arg_0.x)), var_0.x < 46502u), !(!arg_1.b)), any(arg_0.xy));
    var var_2 = abs(vec4<u32>(~4294967295u, _wgslsmith_sub_u32(func_6(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(arg_2.x, 113710u, var_0.x))), firstLeadingBit(~23726u)), ~arg_3 >> (_wgslsmith_div_u32(arg_3, _wgslsmith_add_u32(1230u, 5578u)) % 32u), var_0.x));
    var var_3 = Struct_2(-1418.0);
    var_2 = vec4<u32>(1u, func_6(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~arg_3, ~var_2.x), vec3<u32>(44436u, 2990u, 0u) << (arg_2.zxw % vec3<u32>(32u)))), ~(~0u), 1u);
    return _wgslsmith_sub_u32(~_wgslsmith_add_u32(1u, func_6(arg_2.wyx)), _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a.zxw), ~var_2.ywy));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: i32) -> vec2<bool> {
    var var_0 = reverseBits(~(-1));
    for (var var_1 = 0; arg_1.c.x; var_0 = 0 << (u_input.b.x % 32u)) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        var var_2 = min(_wgslsmith_mod_i32(~2147483647, arg_2), u_input.d);
        let var_3 = vec4<u32>(1u, func_5(!select(select(vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec3<bool>(false, arg_1.c.x, arg_1.a.x), arg_1.c.x), arg_1.a, arg_1.c), Struct_3(~u_input.a.zx, -2956.0 <= _wgslsmith_f_op_f32(-313.0 + 1085.0)), vec4<u32>(u_input.c ^ u_input.a.x, 1u, countOneBits(15571u) | _wgslsmith_add_u32(0u, u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(65972u, u_input.c), firstTrailingBit(33585u), ~458u)), 4294967295u ^ ~(~u_input.b.x)), ~_wgslsmith_add_u32(4294967295u, 3942u), 4044u);
        let var_4 = Struct_2(1711.0);
        let var_5 = u_input.e.yy >> (~vec2<u32>(var_3.x, 0u) % vec2<u32>(32u));
        var_0 = -2147483648 << (abs(~_wgslsmith_add_u32(1u, u_input.a.x) >> (_wgslsmith_add_u32(~var_3.x, _wgslsmith_sub_u32(1u, var_3.x)) % 32u)) % 32u);
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    switch (abs(-1)) {
        case 2147483647: {
            var_0 = ~(~firstTrailingBit(arg_2));
            var var_1 = !arg_1.c.xz;
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-706.0 * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(trunc(-1000.0))));
                let var_3 = Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(37154, 40703), vec2<i32>(arg_1.d.x, firstLeadingBit(arg_1.d.x))), vec2<i32>(countOneBits(arg_1.d.x), ~u_input.e.x)), _wgslsmith_f_op_vec3_f32(-arg_0.xwz), _wgslsmith_f_op_f32(exp2(arg_0.x)), ~u_input.a);
            }
            let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x)))) + _wgslsmith_f_op_f32(-780.0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -1194.0)))));
            var_0 = -21869;
        }
        case 0: {
            var_0 = firstLeadingBit(_wgslsmith_div_i32(arg_1.d.x, arg_2));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                var var_1 = Struct_1(-arg_1.d, arg_0.xxy, _wgslsmith_f_op_f32(-919.0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-857.0))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.b, 409.0))))), vec4<u32>(1u, _wgslsmith_clamp_u32(16236u, func_6(_wgslsmith_sub_vec3_u32(u_input.a.zzz, vec3<u32>(48958u, 1u, u_input.b.x))), u_input.a.x), u_input.c, 7756u));
                let var_2 = _wgslsmith_div_i32(arg_2, _wgslsmith_add_i32(arg_1.d.x, var_1.a.x));
            }
        }
    }
    var_0 = arg_1.d.x;
    return vec2<bool>(all(select(!vec2<bool>(false, false), !select(vec2<bool>(arg_1.c.x, arg_1.c.x), vec2<bool>(false, arg_1.a.x), arg_1.c.x), !select(arg_1.c.zx, arg_1.c.zy, true))), all(!arg_1.a));
}

fn func_8(arg_0: vec2<bool>, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> bool {
    for (var var_0 = 16609; !all(vec4<bool>(all(vec3<bool>(arg_2, false, arg_2)), !(!arg_0.x), arg_0.x, arg_2)); var_0 = 2147483647) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        break;
    }
    for (; ; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        if (arg_0.x) {
            var var_0 = Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>((67732u & 3822u) ^ min(26362u, 43508u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.b.x, u_input.c), vec4<u32>(u_input.b.x, u_input.a.x, 84723u, u_input.c))), u_input.b.yx), arg_2 & arg_2);
            var_0 = Struct_3(var_0.a, any(vec4<bool>(all(select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(true, var_0.b, false, arg_0.x), vec4<bool>(true, arg_2, true, var_0.b))), !arg_2, all(!vec3<bool>(arg_0.x, var_0.b, var_0.b)), arg_1 != _wgslsmith_dot_vec3_i32(u_input.e, u_input.e))));
            continue;
        }
        for (var var_0 = 0; var_0 > 14134; var_0 = -2147483648) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            var_0 = ~_wgslsmith_div_i32(_wgslsmith_mult_i32(38834, arg_1), ~(~_wgslsmith_dot_vec2_i32(u_input.e.yy, u_input.e.xz)));
        }
        switch (arg_1) {
            case -22769: {
            }
            case 4185: {
                var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-665.0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000.0, -1119.0)))))));
                var_0 = Struct_2(-420.0);
                var_0 = Struct_2(-293.0);
            }
            case 1: {
                let var_0 = Struct_3(min(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_3.x, 1u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_3.x, u_input.a.x), abs(vec2<u32>(33706u, arg_3.x)))), vec2<u32>(arg_3.x, u_input.a.x)), false);
            }
            case -26719: {
            }
            default: {
                let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167.0 * -1000.0) * _wgslsmith_f_op_f32(f32(-1.0) * -197.0)), -1073.0), 1367.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1719.0) * 657.0), _wgslsmith_f_op_f32(-295.0 * -592.0))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-782.0, 742.0, 1000.0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(876.0, 469.0, 1062.0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(182.0, -1736.0, -609.0) - vec3<f32>(-676.0, 157.0, -1128.0))))));
                break;
            }
        }
        var var_0 = _wgslsmith_f_op_f32(-513.0);
    }
    if (!(arg_0.x || arg_2)) {
        for (; any(!vec3<bool>(true, true || arg_0.x, ~4294967295u < (27565u ^ u_input.c))); ) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1255.0, _wgslsmith_f_op_f32(-1275.0), !(!(!arg_2)))), _wgslsmith_f_op_f32(-934.0));
            var var_1 = _wgslsmith_div_u32(u_input.b.x, 89934u);
            let var_2 = Struct_2(var_0);
        }
        switch (_wgslsmith_sub_i32(select(reverseBits(u_input.d ^ arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647, 0, -15729, arg_1), vec4<i32>(1, 1, arg_1, u_input.d)), true) & (i32(-1) * -u_input.e.x), firstLeadingBit(-(max(32311, arg_1) >> (0u % 32u))))) {
            case 0: {
                var var_0 = Struct_3(vec2<u32>(func_7(vec2<bool>(true, false), 53689u, 0u, func_6(vec3<u32>(u_input.c, arg_3.x, 30086u)) >> (func_5(vec3<bool>(arg_0.x, true, arg_0.x), Struct_3(vec2<u32>(24882u, 19103u), arg_2), arg_3, arg_3.x) % 32u)), 0u), false);
                var_0 = Struct_3(arg_3.zx, arg_2);
                var var_1 = Struct_3(_wgslsmith_mod_vec2_u32(~vec2<u32>(45045u, var_0.a.x) ^ vec2<u32>(28222u, u_input.a.x), u_input.a.ww), arg_2);
            }
            case 1: {
                let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(827.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630.0 * -706.0) - _wgslsmith_f_op_f32(-1136.0)), -1118.0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, 513.0, -1000.0) + vec3<f32>(-689.0, 1526.0, 696.0))))))));
            }
            case 13326: {
                let var_0 = Struct_1(select(_wgslsmith_mult_vec2_i32(-vec2<i32>(arg_1, -7236), min(_wgslsmith_mult_vec2_i32(u_input.e.xz, u_input.e.xy), abs(vec2<i32>(u_input.e.x, -41157)))), abs(abs(u_input.e.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -646.0)) > _wgslsmith_f_op_f32(round(545.0))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(845.0, _wgslsmith_f_op_f32(min(-985.0, _wgslsmith_f_op_f32(min(-806.0, -584.0)))), _wgslsmith_f_op_f32(-827.0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(237.0, 549.0, 1151.0) * vec3<f32>(-953.0, 867.0, -121.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1509.0, -555.0, 335.0) * vec3<f32>(-973.0, 1014.0, 879.0)))))), 529.0, u_input.a);
                let var_1 = Struct_2(-207.0);
            }
            case -1: {
                var var_0 = arg_3.yyy;
                let var_1 = vec2<bool>(false, true);
                var var_2 = Struct_1(vec2<i32>(arg_1, u_input.e.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1260.0) * _wgslsmith_f_op_f32(sign(2174.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1837.0)) + -1468.0) + _wgslsmith_f_op_f32(f32(-1.0) * -1538.0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-606.0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000.0 + 1485.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1162.0, _wgslsmith_f_op_f32(f32(-1.0) * -322.0)))), arg_3);
            }
            default: {
                var var_0 = u_input.e.zz;
                var_0 = vec2<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.e.x, var_0.x), countOneBits(35238), _wgslsmith_div_i32(~7236, arg_1))), countOneBits(_wgslsmith_mod_i32(-2147483647, u_input.d << (arg_3.x % 32u)) ^ 2147483647));
                var_0 = ~vec2<i32>(arg_1, u_input.d);
            }
        }
    }
    var var_0 = Struct_4(vec3<bool>(false || (_wgslsmith_f_op_f32(trunc(863.0)) <= _wgslsmith_f_op_f32(floor(-621.0))), min(1u & arg_3.x, 28223u) <= _wgslsmith_mult_u32(1u, 4294967295u), !all(!vec4<bool>(arg_0.x, arg_2, arg_2, arg_2))), _wgslsmith_f_op_f32(f32(-1.0) * -1767.0), vec3<bool>(false || ((arg_0.x | true) & !arg_0.x), false, any(arg_0)), u_input.e.xy);
    var_0 = Struct_4(select(!var_0.a, var_0.c, !var_0.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.b)), -1000.0, !(!true))), select(var_0.c, !select(!var_0.a, var_0.c, !arg_0.x), var_0.a), -((vec2<i32>(-1) * -vec2<i32>(u_input.e.x, var_0.d.x)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(20733, u_input.d), vec2<i32>(u_input.d, arg_1) & vec2<i32>(var_0.d.x, var_0.d.x), vec2<i32>(arg_1, arg_1))));
    return var_0.a.x;
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> f32 {
    if (arg_0.c.x) {
        if (all(vec3<bool>(-(u_input.e.x & -42975) == _wgslsmith_div_i32(i32(-1) * -23301, min(13545, arg_0.d.x)), func_8(select(func_4(vec4<f32>(arg_0.b, -170.0, -2025.0, -402.0), arg_0, 42254), !vec2<bool>(arg_0.c.x, arg_0.a.x), vec2<bool>(arg_0.a.x, arg_0.a.x)), -1, _wgslsmith_div_f32(arg_1, -1035.0) > arg_1, abs(vec4<u32>(0u, 1u, u_input.c, u_input.b.x))), !(!(!true))))) {
            var var_0 = ~_wgslsmith_add_i32(reverseBits((arg_0.d.x | 2147483647) >> (firstLeadingBit(u_input.b.x) % 32u)), ~_wgslsmith_clamp_i32(arg_0.d.x, -40759, 0) | (-u_input.e.x | _wgslsmith_sub_i32(-17750, u_input.d)));
            let var_1 = arg_0;
            let var_2 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1067.0) * arg_0.b)), !select(vec3<bool>(arg_0.a.x, all(vec4<bool>(var_1.a.x, arg_0.c.x, var_1.c.x, arg_0.a.x)), arg_0.c.x), select(!vec3<bool>(false, false, arg_0.c.x), !arg_0.a, false), !select(vec3<bool>(true, arg_0.a.x, true), var_1.a, var_1.c.x)), -vec2<i32>(-1, _wgslsmith_clamp_i32(abs(var_1.d.x), ~u_input.e.x, -u_input.e.x)));
            var var_3 = vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))), var_1.b, all(vec4<bool>(var_2.c.x, false, false, var_1.a.x)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624.0)), false, select(false, true, false));
        }
        switch (-(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -4709, arg_0.d.x, arg_0.d.x), ~select(vec4<i32>(arg_0.d.x, 0, 11842, arg_0.d.x), vec4<i32>(0, 4794, -1, u_input.d), false)))) {
            case -31627: {
                let var_0 = vec3<i32>(-49054, arg_0.d.x, -2147483648);
                return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1133.0))), arg_1, !(!true))))));
            }
            case -1: {
                let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - arg_0.b)), _wgslsmith_f_op_f32(-157.0 * _wgslsmith_f_op_f32(-1171.0)), arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(floor(-391.0))))))));
                let var_1 = Struct_4(!vec3<bool>(arg_0.c.x, func_4(_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(-836.0, arg_1, -301.0, -443.0), vec4<bool>(true, true, false, arg_0.a.x))), arg_0, u_input.d).x, _wgslsmith_f_op_f32(var_0.x + 4102.0) >= _wgslsmith_f_op_f32(-147.0 - arg_1)), arg_1, vec3<bool>(arg_0.c.x, arg_0.c.x, false), vec2<i32>(~arg_0.d.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(abs(arg_0.d.x), select(u_input.e.x, 0, arg_0.a.x)), u_input.d)));
                var var_2 = vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, func_5(select(vec3<bool>(false, false, true), vec3<bool>(false, var_1.a.x, var_1.a.x), vec3<bool>(arg_0.c.x, var_1.c.x, var_1.c.x)), Struct_3(u_input.b.xy, true), vec4<u32>(u_input.c, u_input.c, 80174u, u_input.a.x), _wgslsmith_mult_u32(21633u, 0u)), 4294967295u) << (_wgslsmith_mult_u32(1u, ~u_input.c) % 32u), _wgslsmith_mod_u32(~0u, firstLeadingBit(_wgslsmith_mod_u32(~u_input.a.x, ~9531u))));
                let var_3 = select(!select(vec4<bool>(any(var_1.c.yy), true, func_8(var_1.a.xy, 1, false, u_input.a), !true), !vec4<bool>(arg_0.c.x, true, false, arg_0.c.x), !(!vec4<bool>(arg_0.a.x, false, var_1.c.x, var_1.a.x))), vec4<bool>(arg_0.c.x, !arg_0.a.x, false, all(!(!vec3<bool>(arg_0.a.x, arg_0.c.x, true)))), select(vec4<bool>(!(259.0 <= var_0.x), var_1.c.x, arg_0.c.x, false), vec4<bool>(arg_0.a.x, false, false, any(vec3<bool>(var_1.a.x, arg_0.a.x, arg_0.a.x))), !vec4<bool>(!false, false, false, var_2.x > 1u)));
            }
            case 5512: {
                let var_0 = -29135;
                var var_1 = Struct_4(!select(arg_0.c, !vec3<bool>(true, true, true), !arg_0.c.x), 977.0, select(select(vec3<bool>(any(vec3<bool>(arg_0.a.x, true, false)), arg_0.c.x, true), !arg_0.c, _wgslsmith_sub_i32(2147483647, -72206) >= var_0), select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(false, true, false), !arg_0.a), arg_0.a, !vec3<bool>(true, arg_0.c.x, false)), false), _wgslsmith_clamp_vec2_i32(firstLeadingBit(arg_0.d), u_input.e.yy, vec2<i32>(-var_0 & var_0, u_input.d | arg_0.d.x)));
            }
            case 11413: {
                let var_0 = arg_0;
                let var_1 = Struct_2(arg_1);
            }
            default: {
                return arg_0.b;
            }
        }
        for (var var_0 = 1; var_0 < -33808; var_0 += 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            let var_1 = ~1u ^ 1u;
        }
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        }
        for (var var_0 = -1; arg_0.a.x; var_0 += 1) {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            let var_1 = arg_0.b;
        }
    }
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        if (any(vec4<bool>(false, select(true, !any(vec3<bool>(true, arg_0.c.x, arg_0.c.x)), (arg_0.d.x >= -1) == false), !arg_0.a.x, arg_0.c.x))) {
            var var_0 = ~(~_wgslsmith_clamp_u32(reverseBits(u_input.b.x << (0u % 32u)), u_input.b.x, u_input.a.x));
            var_0 = ~52124u;
            let var_1 = func_8(!(!arg_0.a.yx), 7337, (func_5(!vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), Struct_3(vec2<u32>(u_input.b.x, 4294967295u), arg_0.a.x), u_input.a >> (vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mod_u32(u_input.c, u_input.c)) >> (u_input.c % 32u)) < (u_input.c ^ reverseBits(firstLeadingBit(u_input.c))), reverseBits(u_input.a));
            var var_2 = Struct_4(select(arg_0.a, !(!select(vec3<bool>(false, var_1, true), vec3<bool>(true, var_1, var_1), arg_0.c)), !select(vec3<bool>(true, true, arg_0.c.x), !arg_0.a, !true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * -816.0), _wgslsmith_f_op_f32(ceil(arg_0.b))) * arg_1)), arg_0.a, countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-22090, u_input.e.x) & vec2<i32>(arg_0.d.x, 66795), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.d.x, -65407), vec2<i32>(u_input.e.x, u_input.e.x))) & vec2<i32>(1, 1)));
            var var_3 = 1194.0;
        }
        var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1.0) * -2067.0));
    }
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(284.0, -632.0))) * vec2<f32>(927.0, arg_0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-194.0, -603.0) + vec2<f32>(537.0, arg_0.b))))));
    let var_1 = false;
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        for (var var_2 = 0; var_1; var_2 += 1) {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-186.0))))));
        }
        break;
    }
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_div_f32(var_0.x, arg_1))))), arg_0.b);
}

fn func_2(arg_0: vec3<bool>) -> vec3<u32> {
    let var_0 = ~u_input.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-674.0 + -833.0));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(423.0 - 350.0) + _wgslsmith_f_op_f32(func_3(Struct_4(vec3<bool>(arg_0.x, false, arg_0.x), -1352.0, vec3<bool>(arg_0.x, arg_0.x, true), vec2<i32>(u_input.d, 1)), -1452.0))), 1297.0))));
    switch (u_input.e.x >> (~(~min(_wgslsmith_mult_u32(24587u, u_input.a.x), firstTrailingBit(51946u))) % 32u)) {
        case 5760: {
            let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(597.0, var_2.a))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(-var_2.a)))), var_2.a));
            let var_4 = _wgslsmith_mult_vec4_u32(countOneBits(~(u_input.a | vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, var_0))), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x), _wgslsmith_mod_u32(95027u, var_0)), select(~var_0 | _wgslsmith_mult_u32(2179u, u_input.a.x), u_input.b.x, all(arg_0.xz)), 33813u, ~_wgslsmith_div_u32(select(4294967295u, u_input.a.x, arg_0.x), 13501u)));
            for (var var_5 = 33633; var_5 <= 1; var_1 = var_3.x) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                var var_6 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_clamp_vec3_i32(u_input.e, u_input.e, u_input.e)), u_input.d & (i32(-1) * -1)) >> (~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(var_4.x, 27579u)), select(vec2<u32>(93955u, u_input.b.x), vec2<u32>(var_0, var_4.x), vec2<bool>(arg_0.x, false))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2436.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - -1098.0) - -1626.0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 1105.0, _wgslsmith_f_op_f32(-444.0 * -295.0)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1287.0, var_3.x, var_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -313.0, var_3.x) * vec3<f32>(var_2.a, var_2.a, var_2.a))))), _wgslsmith_f_op_f32(var_3.x - var_3.x), var_4);
                var_6 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(abs(max(1, u_input.e.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(u_input.d, -2147483648)), var_6.a.x)), u_input.d), _wgslsmith_div_vec3_f32(var_6.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_3.x, 616.0, false)), _wgslsmith_f_op_f32(trunc(-1474.0)), _wgslsmith_f_op_f32(-var_3.x)) + var_6.b)), var_3.x, u_input.a ^ vec4<u32>((17802u >> (0u % 32u)) << ((35558u << (13362u % 32u)) % 32u), _wgslsmith_mult_u32(458u, var_4.x) & ~var_6.d.x, ~_wgslsmith_mult_u32(var_4.x, 88411u), _wgslsmith_dot_vec4_u32(vec4<u32>(53747u, 36914u, u_input.a.x, 0u), ~vec4<u32>(u_input.b.x, var_4.x, 55142u, var_0))));
                break;
            }
        }
        case 0: {
            let var_3 = !select(arg_0, arg_0, !((u_input.e.x == 41984) | (-42599 == -21950)));
            var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000.0 + -257.0))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(-151.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), false)));
            loop {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                var var_4 = Struct_3(_wgslsmith_clamp_vec2_u32(~(~max(u_input.b.xz, u_input.b.zz)), firstLeadingBit(~firstLeadingBit(u_input.b.xy)), firstTrailingBit(u_input.a.xx)), abs(select(u_input.a.x, u_input.c, -1408.0 >= -610.0)) != (abs(u_input.a.x) ^ _wgslsmith_dot_vec3_u32(abs(u_input.b), u_input.a.yzw)));
            }
            for (var var_4 = firstTrailingBit(reverseBits(i32(-1) * -1677)); arg_0.x; var_4 = _wgslsmith_div_i32(abs(~(-(u_input.e.x & u_input.e.x))), -u_input.e.x)) {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                let var_5 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-393.0)), _wgslsmith_f_op_f32(-var_2.a)))));
            }
            for (var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.d & (1 << (u_input.a.x % 32u)), u_input.e.x), _wgslsmith_sub_i32(1, -2147483648)), abs(~(-vec2<i32>(-21099, 2147483647)))); var_4 > -36828; var_4 -= 1) {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                return _wgslsmith_add_vec3_u32(~vec3<u32>(0u, 23643u, 53688u), vec3<u32>(_wgslsmith_mult_u32(u_input.c, ~(~28051u)), abs(~(~var_0)), _wgslsmith_mult_u32(countOneBits(u_input.a.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.c, 79405u), vec4<u32>(0u, 34520u, u_input.a.x, 359u)) % 32u), ~min(u_input.c, var_0))));
            }
        }
        case 25180: {
            let var_3 = Struct_4(!vec3<bool>(-308.0 < _wgslsmith_f_op_f32(-var_2.a), any(arg_0.xx), !true), var_2.a, vec3<bool>(!false && false, !(u_input.d > (-2147483648 << (73692u % 32u))), all(!(!vec4<bool>(false, true, false, arg_0.x)))), u_input.e.zx);
            if (!func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, var_3.b) * var_2.a), -1101.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(909.0 - -538.0), var_2.a)), var_2.a), Struct_4(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1074.0)) - _wgslsmith_f_op_f32(f32(-1.0) * -1014.0)), vec3<bool>(!false, arg_0.x, var_3.c.x), ~u_input.e.yx), var_3.d.x).x) {
                var var_4 = arg_0;
                var var_5 = _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-138.0))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(-946.0)) * _wgslsmith_f_op_f32(ceil(-1660.0)));
                var var_6 = _wgslsmith_f_op_f32(floor(var_2.a));
                let var_7 = var_2;
            }
            var var_4 = Struct_3(abs(vec2<u32>(4294967295u, select(_wgslsmith_mult_u32(29662u, 64171u), 1u, -214.0 >= 1083.0))), !all(vec3<bool>(func_8(vec2<bool>(arg_0.x, var_3.c.x), var_3.d.x, var_3.c.x, vec4<u32>(u_input.a.x, 4294967295u, 55066u, var_0)), var_3.a.x, false)));
            for (var var_5 = -10972; var_5 > 2147483647; var_5 -= 1) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                var_1 = _wgslsmith_f_op_f32(-1108.0);
                var var_6 = _wgslsmith_clamp_u32(~4294967295u, ~_wgslsmith_mod_u32(u_input.b.x, countOneBits(4294967295u)), 17598u);
            }
            switch (var_3.d.x) {
                default: {
                    var_1 = _wgslsmith_f_op_f32(round(var_3.b));
                    var var_5 = select(select(!func_8(select(arg_0.yz, vec2<bool>(false, false), arg_0.zx), select(var_3.d.x, var_3.d.x, false), arg_0.x, u_input.a), true, any(vec4<bool>(!true, var_3.c.x, !true, !arg_0.x))), arg_0.x, any(vec2<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(false, false, var_3.c.x, false))))));
                    let var_6 = !true;
                }
            }
        }
        case 1: {
            var var_3 = Struct_3(~vec2<u32>(~_wgslsmith_add_u32(u_input.c, u_input.c), ~var_0), ~(~(u_input.c ^ 17021u)) < ~0u);
            var var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 1948.0, -906.0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + -296.0)), _wgslsmith_f_op_f32(ceil(var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-var_2.a))))));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            }
            if (u_input.d == 2147483647) {
                let var_3 = ~max((u_input.d ^ -u_input.e.x) ^ -1, -15121);
                var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -1585.0)));
                var_1 = _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-219.0 + 840.0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -384.0) + var_2.a))))));
            }
            var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000.0)), _wgslsmith_div_f32(-1021.0, var_2.a))));
        }
    }
    loop {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
    }
    return firstTrailingBit(u_input.a.wzw);
}

fn func_9(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<bool>) -> Struct_4 {
    if (any(select(!(!(!vec2<bool>(true, arg_2.x))), !arg_2, arg_2.x))) {
    }
    loop {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
    }
    let var_0 = Struct_3(_wgslsmith_sub_vec2_u32(arg_0.zz, vec2<u32>(10466u, 0u)), select(all(arg_2), !(true & (false | true)), true));
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-996.0 * _wgslsmith_f_op_f32(f32(-1.0) * -790.0))), arg_1));
    let var_2 = vec3<f32>(arg_1, -660.0, arg_1);
    return Struct_4(select(vec3<bool>(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(0u, arg_0.x, 0u)) != 0u, !true & (arg_0.x == var_0.a.x), arg_2.x), vec3<bool>(!true, all(vec3<bool>(var_0.b, arg_2.x, var_0.b)), all(vec4<bool>(var_0.b, var_0.b, arg_2.x, arg_2.x))), select(vec3<bool>(!var_0.b, var_0.b, all(vec2<bool>(var_0.b, var_0.b))), vec3<bool>(any(vec2<bool>(true, var_0.b)), var_0.b, false), any(!vec4<bool>(false, false, arg_2.x, false)))), _wgslsmith_div_f32(-910.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), vec3<bool>(var_0.b, !any(arg_2), false), u_input.e.yz);
}

fn func_10(arg_0: Struct_4, arg_1: f32, arg_2: vec2<u32>) -> i32 {
    loop {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        switch (~2147483647) {
            case -2147483648: {
                let var_0 = (i32(-1) * -(~_wgslsmith_add_i32(-1, u_input.e.x))) >> (arg_2.x % 32u);
                let var_1 = Struct_1(u_input.e.yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1075.0, 677.0, 726.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 579.0) + _wgslsmith_f_op_f32(select(arg_1, arg_1, arg_0.c.x))))), ~(~vec4<u32>(u_input.b.x, 1u, 339u, u_input.b.x)) ^ (u_input.a ^ (vec4<u32>(u_input.b.x, 26489u, 0u, 4294967295u) ^ (vec4<u32>(u_input.a.x, u_input.a.x, arg_2.x, 115688u) & u_input.a))));
                var var_2 = -arg_0.d;
            }
            default: {
                var var_0 = ~(~(vec3<u32>(22611u, 0u, 30442u) & u_input.a.yyz) ^ ~(~vec3<u32>(arg_2.x, u_input.c, 0u))) | vec3<u32>(~(~_wgslsmith_clamp_u32(arg_2.x, 1040u, u_input.b.x)), _wgslsmith_add_u32(func_7(arg_0.a.yz, 85669u, max(arg_2.x, 15650u), 98018u), ~(31757u & 4294967295u)), _wgslsmith_mult_u32(~arg_2.x, 83590u));
                var_0 = _wgslsmith_mod_vec3_u32(func_2(select(vec3<bool>(arg_0.a.x, !arg_0.c.x, false), arg_0.a, arg_0.c.x)), min(vec3<u32>(_wgslsmith_add_u32(27335u ^ 4294967295u, ~33157u), select(reverseBits(41830u), arg_2.x | 36010u, arg_0.a.x), 0u), vec3<u32>(1u, var_0.x, u_input.c)));
                let var_1 = arg_0.c;
                continue;
            }
        }
        switch (firstTrailingBit(-(-arg_0.d.x << (1u % 32u)))) {
            case 2147483647: {
                var var_0 = (_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1, 18594), firstTrailingBit(25234), _wgslsmith_mult_i32(arg_0.d.x, u_input.d), -1), ~vec4<i32>(-20876, arg_0.d.x, arg_0.d.x, arg_0.d.x)) ^ countOneBits(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, 1, -2147483648, u_input.e.x), vec4<i32>(0, u_input.e.x, arg_0.d.x, 1))))) & abs(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x) & vec4<i32>(-6114, u_input.d, arg_0.d.x, 13712), -vec4<i32>(-9221, -31724, 10569, -16323))));
                break;
            }
            default: {
                var var_0 = _wgslsmith_sub_u32(204u, _wgslsmith_div_u32(arg_2.x, firstTrailingBit(~arg_2.x)));
                let var_1 = Struct_4(!func_9(firstTrailingBit(vec3<u32>(37716u, 0u, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770.0 * 595.0)), arg_0.c.xz).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-628.0))), select(vec3<bool>(arg_0.c.x, false && (975.0 <= arg_1), func_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1102.0, arg_1, -168.0, -862.0))), arg_0, -u_input.e.x).x), func_9(~u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -515.0)), select(arg_0.c.xx, !arg_0.c.zy, select(arg_0.a.xx, vec2<bool>(arg_0.c.x, arg_0.a.x), arg_0.c.x))).a, arg_0.a.x), arg_0.d);
                var var_2 = Struct_3(arg_2, true);
                continue;
            }
        }
    }
    let var_0 = Struct_1(firstLeadingBit(vec2<i32>(-1, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.e.x, -1), u_input.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(round(-413.0))), arg_0.b, 355.0)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - arg_0.b), arg_0.b) + func_9(~vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), _wgslsmith_f_op_f32(-arg_1), arg_0.a.yx).b)), _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(18932u, 0u, u_input.c, arg_2.x), vec4<u32>(u_input.c, 64384u, 0u, u_input.a.x))), ~countOneBits(u_input.a), ~max(min(u_input.a, u_input.a), ~vec4<u32>(47491u, u_input.a.x, 62001u, arg_2.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.b.zx);
    for (; any(vec3<bool>(var_0.a.x == ~(-1), 2004.0 > -975.0, false || !arg_0.c.x)) || arg_0.c.x; ) {
        if (LOOP_COUNTERS[31u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
        loop {
            if (LOOP_COUNTERS[32u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
            var var_2 = Struct_1(u_input.e.yx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(_wgslsmith_f_op_f32(sign(-1932.0)), _wgslsmith_div_f32(var_0.b.x, var_1.x), _wgslsmith_f_op_f32(-1336.0))), _wgslsmith_f_op_vec3_f32(-var_0.b)), _wgslsmith_f_op_f32(-1000.0), ~(~u_input.a));
            break;
        }
        for (var var_2 = 27540; var_2 == 39367; var_2 -= 1) {
            if (LOOP_COUNTERS[33u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
        }
        if (countOneBits(arg_2.x) >= _wgslsmith_mult_u32(44084u, 92415u)) {
            let var_2 = Struct_2(arg_1);
            continue;
        }
        switch (_wgslsmith_mod_i32(0, countOneBits(var_0.a.x))) {
            default: {
                var var_2 = func_9(~_wgslsmith_clamp_vec3_u32(~max(u_input.b, u_input.a.zzy), vec3<u32>(4294967295u, 7350u << (79197u % 32u), 4294967295u | arg_2.x), _wgslsmith_mod_vec3_u32(var_0.d.wwy & var_0.d.wxx, countOneBits(vec3<u32>(0u, arg_2.x, u_input.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1595.0)))), vec2<bool>(!arg_0.a.x, arg_0.a.x && false));
                continue;
            }
        }
        var var_2 = _wgslsmith_f_op_vec2_f32(-var_1);
    }
    var var_2 = u_input.e.xz;
    return var_0.a.x & countOneBits(-var_0.a.x);
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_clamp_i32(firstTrailingBit(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d, u_input.d), u_input.d)), func_10(func_9(abs(func_2(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(func_3(Struct_4(vec3<bool>(true, true, true), 779.0, vec3<bool>(true, false, true), vec2<i32>(u_input.d, -49599)), _wgslsmith_f_op_f32(trunc(-415.0)))), vec2<bool>(!true, -50424 > u_input.d)), -181.0, u_input.b.zx), -43512);
    let var_1 = u_input.e.x;
    loop {
        if (LOOP_COUNTERS[34u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[34u] = LOOP_COUNTERS[34u] + 1u;
    }
    switch (~(i32(-1) * -1)) {
        case 863: {
            switch (38370) {
                case -1: {
                    var_0 = -(~(-47712));
                    let var_2 = !true;
                    var_0 = -22469;
                    let var_3 = Struct_1(vec2<i32>(countOneBits(~_wgslsmith_sub_i32(-2147483648, 1)), var_1), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(189.0)), _wgslsmith_f_op_f32(func_3(Struct_4(vec3<bool>(var_2, true, true), -1272.0, vec3<bool>(var_2, true, true), u_input.e.xx), -253.0)), _wgslsmith_f_op_f32(-1662.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-433.0 + -1720.0), 1355.0, _wgslsmith_f_op_f32(sign(860.0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, -1308.0, 872.0))))), func_9(vec3<u32>(u_input.a.x, u_input.c, _wgslsmith_clamp_u32(61894u, 4294967295u, 4294967295u) & ~u_input.b.x), 230.0, select(vec2<bool>(-1000.0 < -114.0, !var_2), vec2<bool>(var_2, !var_2), vec2<bool>(var_2, var_2))).b, u_input.a);
                    let var_4 = Struct_2(_wgslsmith_f_op_f32(floor(609.0)));
                }
                case -34065: {
                    var var_2 = firstLeadingBit(u_input.b);
                    var var_3 = -13995;
                    var var_4 = Struct_3(u_input.a.xy, false);
                }
                case 21913: {
                    var_0 = _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.e.x, -1), ~vec3<i32>(var_1, var_1, -1))) ^ u_input.e, u_input.e);
                    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -427.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(-1302.0)) + 360.0))));
                    var var_3 = true;
                    var var_4 = Struct_1(~u_input.e.zx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a, -795.0)) * var_2.a), _wgslsmith_f_op_f32(-446.0))), _wgslsmith_f_op_f32(round(var_2.a)), firstTrailingBit(max(abs(u_input.a), ~u_input.a) ^ ~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u, 65534u, u_input.b.x, 1u))));
                }
                case -2147483648: {
                    var var_2 = Struct_3(u_input.b.yx, false);
                }
                default: {
                    let var_2 = func_9(vec3<u32>(93702u, u_input.b.x, 20318u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(748.0, 1312.0)))), vec2<bool>(all(!vec4<bool>(true, true, true, false)) != func_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(373.0, 1630.0, 1583.0, 793.0))), Struct_4(vec3<bool>(true, true, true), 1000.0, vec3<bool>(true, true, true), u_input.e.yz), -u_input.d).x, true));
                    let var_3 = var_2.d.x;
                }
            }
            if (false) {
                var var_2 = !(_wgslsmith_mult_u32(u_input.c, (u_input.c >> (33312u % 32u)) >> (~u_input.b.x % 32u)) <= u_input.a.x);
                var_2 = all(vec2<bool>(!any(!vec3<bool>(true, false, true)), !(!(!false))));
                var_0 = 2147483647;
            }
            return !(!all(!(!vec4<bool>(true, false, true, false))));
        }
        case -6898: {
            let var_2 = Struct_4(!vec3<bool>(false, false, (828.0 > -1186.0) && false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-345.0) + _wgslsmith_f_op_f32(-414.0 - -636.0))))), vec3<bool>(!func_8(!vec2<bool>(true, true), var_1, 0 > u_input.e.x, min(vec4<u32>(u_input.a.x, u_input.c, 46158u, 24099u), u_input.a)), !true & (~23882u < u_input.b.x), 4294967295u < _wgslsmith_mod_u32(_wgslsmith_add_u32(60055u, 24879u), ~0u)), func_9(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(u_input.c, u_input.b.x, u_input.c)), select(firstLeadingBit(u_input.b.x), u_input.a.x, false), u_input.c ^ 8344u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-333.0), _wgslsmith_f_op_f32(abs(-476.0)), all(vec2<bool>(true, false)))))), select(!vec2<bool>(false, true), !(!vec2<bool>(false, false)), any(func_4(vec4<f32>(1000.0, -1059.0, 984.0, 730.0), Struct_4(vec3<bool>(false, false, false), 395.0, vec3<bool>(false, true, true), vec2<i32>(u_input.e.x, u_input.e.x)), u_input.d)))).d);
            if (false) {
                var_0 = ~(-13638);
                var var_3 = vec2<bool>(false, false);
                var var_4 = vec2<i32>(u_input.d, _wgslsmith_div_i32(firstTrailingBit(1), 1));
            }
            var var_3 = Struct_3(vec2<u32>(~countOneBits(19902u) & 4294967295u, ~u_input.a.x), var_2.c.x);
            var_0 = _wgslsmith_div_i32(select(2147483647, u_input.d, !var_3.b), ~(~(-var_2.d.x)));
            switch (~u_input.e.x) {
                case -2147483648: {
                    var var_4 = u_input.b;
                    var_3 = Struct_3(abs(~reverseBits(max(var_3.a, var_3.a))), !(47860u == u_input.a.x) && (var_3.b || var_2.a.x));
                    var_3 = Struct_3(~(~select(~vec2<u32>(u_input.b.x, u_input.a.x), reverseBits(vec2<u32>(40389u, 0u)), !var_3.b)), false);
                    var_0 = _wgslsmith_add_i32(var_2.d.x, u_input.d);
                }
                default: {
                    let var_4 = func_8(func_9(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), !vec2<bool>(!var_3.b, true)).c.xx, 1, true, u_input.a);
                    let var_5 = reverseBits(min(func_10(func_9(~vec3<u32>(4294967295u, 11883u, var_3.a.x), _wgslsmith_f_op_f32(-623.0), select(vec2<bool>(var_3.b, var_2.c.x), vec2<bool>(var_3.b, var_4), vec2<bool>(true, true))), 230.0, var_3.a), var_1));
                }
            }
        }
        default: {
            var_0 = _wgslsmith_mod_i32(-(firstTrailingBit(u_input.d) | func_9(u_input.a.zwy, _wgslsmith_div_f32(303.0, -1000.0), func_4(vec4<f32>(1334.0, -647.0, -2221.0, -1570.0), Struct_4(vec3<bool>(true, true, false), -1149.0, vec3<bool>(true, true, false), vec2<i32>(0, 23515)), 2147483647)).d.x), -u_input.e.x);
        }
    }
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    if (all(vec2<bool>(true, all(vec3<bool>(true, true, false)) & all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))))) {
        loop {
            if (LOOP_COUNTERS[35u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[35u] = LOOP_COUNTERS[35u] + 1u;
        }
    }
    for (var var_0 = 7360; var_0 == 31468; ) {
        if (LOOP_COUNTERS[36u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[36u] = LOOP_COUNTERS[36u] + 1u;
        var_0 = _wgslsmith_dot_vec2_i32(u_input.e.yy, u_input.e.yz);
    }
    var var_0 = Struct_4(vec3<bool>(true, !func_1(), true), _wgslsmith_f_op_f32(abs(-1023.0)), func_9(vec3<u32>(_wgslsmith_mult_u32(u_input.c, 4294967295u), ~4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 3643u)) ^ _wgslsmith_mod_u32(u_input.a.x, 30739u)), 209.0, !select(func_9(u_input.b, 1173.0, vec2<bool>(true, false)).c.yy, func_9(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c), 604.0, vec2<bool>(true, false)).a.zz, -786.0 < -1241.0)).a, u_input.e.xz);
    var_0 = func_9(u_input.a.wzw, -1422.0, vec2<bool>(false, var_0.a.x));
    var_0 = func_9(~vec3<u32>(u_input.c, _wgslsmith_div_u32(u_input.b.x, 1u), u_input.a.x), 1000.0, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -2923.0, -1573.0, var_0.b))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 1546.0, var_0.b, var_0.b))), Struct_4(select(select(vec3<bool>(true, var_0.c.x, true), vec3<bool>(var_0.c.x, false, false), vec3<bool>(var_0.c.x, var_0.c.x, true)), func_9(u_input.a.yyz, var_0.b, vec2<bool>(var_0.c.x, var_0.a.x)).a, all(vec4<bool>(var_0.a.x, false, var_0.a.x, false))), var_0.b, !(!var_0.c), _wgslsmith_mult_vec2_i32(vec2<i32>(30873, var_0.d.x), _wgslsmith_add_vec2_i32(var_0.d, vec2<i32>(-2155, u_input.e.x)))), 57195));
    var_0 = func_9(min(u_input.a.zzx << (u_input.b % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(u_input.b, abs(vec3<u32>(48952u, u_input.c, 12546u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1043.0 + var_0.b), var_0.b), vec2<bool>(any(!vec4<bool>(true, true, false, true)), !false));
    var var_1 = !var_0.c.x;
    if (var_0.a.x) {
        for (var var_2: i32; true; var_2 -= 1) {
            if (LOOP_COUNTERS[37u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[37u] = LOOP_COUNTERS[37u] + 1u;
        }
        if (u_input.b.x > ((abs(1u ^ 0u) | (u_input.a.x ^ u_input.a.x)) ^ u_input.b.x)) {
            var_1 = !true;
            var_1 = select(false, func_9(u_input.a.zzw, _wgslsmith_f_op_f32(-var_0.b), var_0.a.yx).a.x, false);
        }
        var_1 = true;
        let var_2 = ~(vec4<i32>(-1) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, 25477, 10729, u_input.d), vec4<i32>(44801, 2147483647, 2147483647, -3066) | vec4<i32>(var_0.d.x, u_input.d, 0, -2147483648)));
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-760.0, _wgslsmith_f_op_f32(-1279.0), _wgslsmith_f_op_f32(round(-1757.0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -2578.0, var_0.b)))), 342.0);
}

