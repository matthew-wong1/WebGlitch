// {"0:0":[247,137,58,75,252,162,252,23,35,95,223,200,68,142,194,129,20,16,54,94,27,249,178,26,52,83,203,156,159,135,246,87]}
// Seed: 4264501842021218619

struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 42>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn func_6() -> vec2<f32> {
    for (var var_0 = ~_wgslsmith_dot_vec2_i32(max(-(~u_input.c.yy), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.yx), u_input.c.x & u_input.c.x)), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-4699, u_input.c.x), -u_input.c.x), vec2<i32>(_wgslsmith_sub_i32(-2147483648, u_input.c.x), u_input.c.x))); var_0 != -20843; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        let var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000.0)) - _wgslsmith_div_f32(-1644.0, 1489.0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447.0 + 190.0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1000.0, 141.0)), _wgslsmith_f_op_f32(select(349.0, 2130.0, false))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-121.0, 1761.0))))), Struct_1(reverseBits(_wgslsmith_mod_u32(0u, countOneBits(u_input.b)))), Struct_1(u_input.a));
        break;
    }
    if (!any(select(!(!vec3<bool>(true, false, false)), !(!vec3<bool>(true, false, true)), all(vec4<bool>(true, false, false, false))))) {
        var var_0 = 37432u;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            let var_1 = Struct_1(0u);
        }
    }
    for (var var_0: i32; false; var_0 = -20292) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1350.0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-276.0), _wgslsmith_f_op_f32(f32(-1.0) * -300.0))))));
    }
    let var_0 = Struct_3(Struct_2(-1903.0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(738.0, 941.0)))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(1393.0)), -1523.0)), Struct_1(abs(u_input.b)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.b, 49199u), vec4<u32>(1u, u_input.b, 65383u, u_input.b)) & u_input.b)), -2147483648, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(370.0)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(792.0, 341.0) * vec2<f32>(-1000.0, -613.0)))))), Struct_1(u_input.b), Struct_1(u_input.b | _wgslsmith_mod_u32(34388u, 4294967295u))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0, u_input.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 2147483647, u_input.c.x, -35303), vec4<i32>(u_input.c.x, u_input.c.x, -64829, u_input.c.x)), vec4<i32>(u_input.c.x, 1, u_input.c.x, u_input.c.x)), -reverseBits(u_input.c.x), countOneBits(1) << (_wgslsmith_sub_u32(4868u, 71483u) % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.c.x, -2147483648, u_input.c.x, _wgslsmith_add_i32(u_input.c.x, -2147483648)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647, -1), vec4<i32>(-1, 16695, -1, 4445)), -vec4<i32>(1, u_input.c.x, 41490, u_input.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -1087.0), _wgslsmith_f_op_f32(floor(1000.0)), select(false, true, true))) - _wgslsmith_f_op_f32(step(-1731.0, _wgslsmith_f_op_f32(select(1209.0, 1000.0, false))))) * -917.0));
    let var_1 = -vec3<i32>(-u_input.c.x, 30069, -37552);
    return var_0.c.b;
}

fn func_5() -> vec3<u32> {
    switch (_wgslsmith_div_i32(0 & 16228, u_input.c.x)) {
        case 1: {
            if (!false) {
            }
            var var_0 = _wgslsmith_mod_i32(1, -2147483648);
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            }
        }
        case -28340: {
        }
        default: {
            for (var var_0 = -12348; ; var_0 += 1) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-427.0, -678.0) + -661.0), _wgslsmith_f_op_vec2_f32(func_6()), Struct_1(firstTrailingBit(max(abs(1u), 75810u))), Struct_1(_wgslsmith_mod_u32(1u & ~u_input.a, (u_input.a >> (u_input.b % 32u)) & ~56770u)));
                var_0 = 10824;
                var_0 = u_input.c.x;
                var_0 = u_input.c.x | ~(-1);
            }
            switch (25227) {
                case 4981: {
                    var var_0 = Struct_1(_wgslsmith_sub_u32(firstTrailingBit(u_input.b), 1u));
                    var_0 = Struct_1(abs(31264u) << (1u % 32u));
                    var var_1 = reverseBits(max(vec2<u32>(_wgslsmith_div_u32(var_0.a, u_input.b), _wgslsmith_div_u32(var_0.a, u_input.b)), vec2<u32>(u_input.b, var_0.a) << ((vec2<u32>(var_0.a, 18373u) << (vec2<u32>(21231u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)))) & vec2<u32>(var_0.a, u_input.a);
                }
                case -26823: {
                    let var_0 = vec2<i32>(u_input.c.x ^ u_input.c.x, u_input.c.x);
                    let var_1 = ~_wgslsmith_mult_vec3_i32(select(u_input.c, firstTrailingBit(u_input.c), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !vec3<bool>(false, false, true), vec3<bool>(false, false, false))), ~(~(vec3<i32>(-2147483648, var_0.x, u_input.c.x) ^ u_input.c)));
                }
                default: {
                    var var_0 = Struct_1(u_input.b);
                }
            }
            let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(212.0 + 429.0))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-783.0, -1224.0) * _wgslsmith_div_f32(-1000.0, 119.0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2703.0 * -889.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-591.0, 600.0))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-269.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -207.0)))), -121.0, all(vec3<bool>(false, false, false)) | (u_input.c.x == 2147483647))));
        }
    }
    let var_0 = u_input.b;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1.0) * -154.0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-592.0, _wgslsmith_f_op_f32(-482.0)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(323.0, 354.0))) - vec2<f32>(-377.0, 247.0))), Struct_1(abs(u_input.a)), Struct_1(4595u)), 2147483647, Struct_2(_wgslsmith_f_op_f32(exp2(-697.0)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-148.0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1119.0)), _wgslsmith_f_op_f32(f32(-1.0) * -991.0)))), Struct_1(var_0), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b, var_0), vec3<u32>(1u, 20477u, 1u) & vec3<u32>(u_input.a, 68964u, u_input.a)))), -vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.zy, reverseBits(vec2<i32>(91919, -1))), u_input.c.x, 71696), _wgslsmith_f_op_f32(f32(-1.0) * -424.0));
    var var_2 = var_1.c.c;
    var var_3 = _wgslsmith_f_op_f32(-1000.0);
    return ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0), vec2<u32>(4294967295u, var_2.a)) & min(18992u, var_2.a), u_input.a, 0u) ^ max(~_wgslsmith_mult_vec3_u32(min(vec3<u32>(var_1.a.c.a, var_0, var_0), vec3<u32>(0u, 1u, var_0)), firstTrailingBit(vec3<u32>(var_2.a, var_1.c.c.a, var_0))), vec3<u32>(~(~2052u), reverseBits(0u), _wgslsmith_clamp_u32(13113u, var_0, 0u)));
}

fn func_7(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_1 {
    for (var var_0 = -21219; var_0 == -1; var_0 -= 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        break;
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
    }
    var var_0 = ~15140u;
    let var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(u_input.c.x, 36485), _wgslsmith_clamp_i32(u_input.c.x, 28869, -33020)), vec2<i32>(u_input.c.x, _wgslsmith_clamp_i32(-u_input.c.x, -u_input.c.x, -1))), u_input.c.zy);
    let var_2 = vec2<f32>(-2005.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))));
    return Struct_1(30978u);
}

fn func_8(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 0u) & ~u_input.a, arg_1.a));
    if (true) {
    }
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -386.0))) + _wgslsmith_f_op_vec2_f32(func_6()).x));
    for (var var_2 = 13608; ; var_2 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        break;
    }
    switch (-25675) {
        case 63995: {
            for (var var_2: i32; ; var_2 = -reverseBits(_wgslsmith_sub_i32(-15898, u_input.c.x ^ -1))) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_3 = u_input.c.x;
                var var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(70039u, arg_1.a), arg_0.x, ~(64858u >> (u_input.b % 32u))) & arg_0, _wgslsmith_div_vec3_u32(~vec3<u32>(reverseBits(arg_1.a), arg_1.a, ~arg_1.a), ~select(vec3<u32>(var_0.a, arg_0.x, 9328u), _wgslsmith_sub_vec3_u32(arg_0, arg_0), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
            }
            let var_2 = select(u_input.a, _wgslsmith_mult_u32(arg_1.a, ~(~func_5().x)), any(select(!(!vec4<bool>(false, false, false, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true | false, false, !false, u_input.c.x <= u_input.c.x))));
            let var_3 = arg_1;
        }
        case -47720: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
            let var_2 = -u_input.c.x | _wgslsmith_clamp_i32(20190 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, var_0.a, 26272u) >> (vec4<u32>(var_0.a, arg_0.x, var_0.a, var_0.a) % vec4<u32>(32u)), vec4<u32>(var_0.a, 11672u, 0u, arg_0.x)) % 32u), countOneBits(firstTrailingBit(46580)), u_input.c.x >> (~min(arg_1.a, arg_1.a) % 32u));
        }
        case -27804: {
            var var_2 = select(!(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), !vec4<bool>(false, true, true, false))), !vec4<bool>(true, false, !false && !false, any(!vec2<bool>(true, true))), !(!false));
        }
        default: {
        }
    }
    return ~32922u;
}

fn func_9(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    switch (-(~2147483647)) {
        case 1: {
            switch (-26029) {
                case -5896: {
                    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-282.0, 199.0, 1553.0, _wgslsmith_f_op_f32(-923.0))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-362.0, arg_2, false)) + _wgslsmith_f_op_f32(f32(-1.0) * -700.0)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-973.0 + arg_2) + _wgslsmith_f_op_f32(round(510.0))), _wgslsmith_f_op_f32(trunc(arg_2)))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(abs(-1120.0)), true)))));
                }
                default: {
                    return Struct_2(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1446.0)), arg_2)), arg_1, func_7(vec3<u32>(~(~24525u), ~1u, arg_1.a), ~abs(abs(vec3<u32>(12144u, 4294967295u, u_input.a)))));
                }
            }
            switch (arg_0) {
                case 47225: {
                    let var_0 = arg_1;
                    var var_1 = Struct_1(~arg_1.a);
                    let var_2 = func_7(vec3<u32>(8146u, arg_1.a, u_input.a) ^ _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.a, var_0.a), vec3<u32>(2879u, 1u, u_input.b), vec3<u32>(arg_1.a, 0u, var_0.a)), vec3<u32>(21335u, 0u, arg_1.a), select(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(0u, var_1.a, u_input.b), vec3<bool>(false, true, true)) ^ ~vec3<u32>(30496u, 0u, 68627u)), min(vec3<u32>(arg_1.a, _wgslsmith_mult_u32(countOneBits(4294967295u), var_0.a << (var_1.a % 32u)), 22141u), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16935u, u_input.b, 4294967295u), vec3<u32>(u_input.b, arg_1.a, var_1.a)), arg_1.a), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(33137u, 0u, 45820u), vec3<u32>(var_1.a, 4294967295u, 14649u), vec3<u32>(996u, u_input.a, var_0.a)), vec3<u32>(var_1.a, arg_1.a, var_1.a) | vec3<u32>(1u, var_0.a, var_0.a)), var_1.a)));
                }
                case -1: {
                    var var_0 = u_input.c.x;
                }
                case -22262: {
                }
                default: {
                }
            }
        }
        case -26244: {
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_0 = abs(arg_1.a);
            }
            var var_0 = vec2<i32>(_wgslsmith_sub_i32(~countOneBits(-16175), reverseBits(14595) >> (~countOneBits(arg_1.a) % 32u)), ~arg_0 << ((37619u | 62796u) % 32u));
            var_0 = -(u_input.c.yx << ((_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a, 34612u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(4012u, arg_1.a)) & vec2<u32>(reverseBits(arg_1.a), 0u)) % vec2<u32>(32u)));
            let var_1 = ~(~(~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1, -1, 52458, u_input.c.x), vec4<i32>(var_0.x, 11221, var_0.x, -45251)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, arg_0, -2147483648, -48774), vec4<i32>(-1, 61382, 0, 0)))));
        }
        case -2147483648: {
            var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2));
            var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(882.0 - 1493.0)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2, arg_2)))), _wgslsmith_f_op_f32(step(arg_2, 427.0))), func_7(~(~(vec3<u32>(u_input.b, u_input.a, 1u) & vec3<u32>(57624u, 0u, 4294967295u))), vec3<u32>(~u_input.b, ~u_input.a & abs(34679u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, u_input.a), 36208u >> (16606u % 32u)))), Struct_1(~u_input.b));
            for (; ; ) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_2 = ~min(~arg_1.a, u_input.a);
                continue;
            }
            if (true) {
                let var_2 = Struct_1(1u);
                return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541.0 * _wgslsmith_f_op_f32(f32(-1.0) * -2092.0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1000.0))))), Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_1.a, arg_1.a) & _wgslsmith_mult_u32(arg_1.a, var_1.d.a), ~72529u)), var_1.d);
            }
        }
        case -14842: {
            var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2, -622.0))))));
        }
        default: {
        }
    }
    let var_0 = firstTrailingBit(countOneBits(min(vec4<u32>(u_input.b, 4294967295u, 1u, 4294967295u) & abs(vec4<u32>(arg_1.a, arg_1.a, u_input.a, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(40614u, u_input.b, arg_1.a, u_input.b), vec4<u32>(0u, 14907u, arg_1.a, 62439u)) | abs(vec4<u32>(arg_1.a, 0u, arg_1.a, 33835u)))));
    return Struct_2(_wgslsmith_f_op_f32(-951.0 - 169.0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -1000.0) + vec2<f32>(arg_2, arg_2)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, 341.0), vec2<f32>(arg_2, -563.0), true))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-567.0, arg_2), vec2<f32>(arg_2, arg_2)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, -465.0), vec2<f32>(-465.0, arg_2)))), vec2<f32>(arg_2, arg_2)))), func_7(~var_0.zyy, vec3<u32>(~(1u | arg_1.a), u_input.a, ~_wgslsmith_div_u32(4137u, arg_1.a))), func_7((vec3<u32>(var_0.x, 1u, 62527u) >> (select(var_0.ywx, vec3<u32>(11438u, u_input.a, var_0.x), vec3<bool>(true, false, true)) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 10924u, arg_1.a), firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, var_0.x))) % vec3<u32>(32u)), ~(vec3<u32>(0u, u_input.b, 1u) << (firstLeadingBit(var_0.xyz) % vec3<u32>(32u)))));
}

fn func_4() -> bool {
    switch (u_input.c.x) {
        case -27382: {
            switch (-abs(~abs(u_input.c.x))) {
                case 4809: {
                    let var_0 = func_9(_wgslsmith_div_i32(~(~36441), -(_wgslsmith_mod_i32(-25890, u_input.c.x) >> ((u_input.a ^ u_input.b) % 32u))), Struct_1(func_8(vec3<u32>(4294967295u, u_input.b, u_input.b) << (vec3<u32>(19544u, u_input.a, 4294967295u) % vec3<u32>(32u)), func_7(func_5(), ~vec3<u32>(u_input.a, u_input.a, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-520.0, _wgslsmith_div_f32(1941.0, 2196.0)))));
                }
                default: {
                    let var_0 = u_input.c.x;
                    let var_1 = countOneBits(vec2<i32>(select(firstTrailingBit(countOneBits(u_input.c.x)), -18420 << (~u_input.a % 32u), true | all(vec4<bool>(false, false, false, false))), firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, var_0), vec2<i32>(var_0, 20953)))));
                    var var_2 = u_input.b;
                    var_2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, func_8(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 18090u, u_input.a) >> (vec3<u32>(1u, 1u, u_input.b) % vec3<u32>(32u)), vec3<u32>(46107u, u_input.b, u_input.b) & vec3<u32>(18788u, 0u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.a)), func_7(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(0u, 14907u, u_input.b)), ~vec3<u32>(u_input.b, 42579u, u_input.a)))), 1u);
                }
            }
        }
        case 25011: {
            return true;
        }
        case -26469: {
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_9(u_input.c.x, Struct_1(u_input.b), _wgslsmith_f_op_f32(abs(-1000.0))).a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-514.0 - 496.0) + _wgslsmith_f_op_f32(f32(-1.0) * -1351.0)))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(513.0, _wgslsmith_f_op_f32(893.0 + _wgslsmith_f_op_f32(118.0 + -802.0))) * -1000.0);
                var_0 = u_input.c.x != u_input.c.x;
            }
        }
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -1599.0);
                continue;
            }
            let var_0 = Struct_3(func_9(firstLeadingBit(u_input.c.x), func_7(~vec3<u32>(u_input.b, 1u, 3610u), ~vec3<u32>(12998u, 42905u, u_input.a) & (vec3<u32>(22235u, u_input.a, 0u) | vec3<u32>(u_input.a, 0u, 10049u))), -526.0), ~(-abs(1)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-418.0 + -3171.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000.0, -2332.0) * vec2<f32>(-1220.0, 270.0)))), Struct_1(u_input.b), func_9((u_input.c.x & -1) | -6679, func_7(vec3<u32>(u_input.a, u_input.a, u_input.b), max(vec3<u32>(u_input.b, u_input.a, u_input.b), vec3<u32>(1u, 10659u, 9029u))), -1152.0).d), -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.c.x, 2147483647, -40521, -33905) & vec4<i32>(-33607, u_input.c.x, -56064, u_input.c.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 43886, u_input.c.x, -2147483648), vec4<i32>(u_input.c.x, u_input.c.x, -20134, u_input.c.x))), _wgslsmith_f_op_f32(-864.0));
        }
        default: {
            for (var var_0 = -38309; ; var_0 -= 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                continue;
            }
            for (var var_0: i32; var_0 >= -2081; var_0 -= 1) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            }
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                break;
            }
            for (var var_0 = -2147483648; var_0 > 1; var_0 -= 1) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-107.0, 629.0) + _wgslsmith_f_op_f32(992.0 * 686.0)))), -997.0));
                var_0 = ~abs(-17739);
                var var_2 = Struct_2(_wgslsmith_f_op_f32(var_1.x - 378.0), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), _wgslsmith_f_op_f32(var_1.x + var_1.x), true)), _wgslsmith_f_op_f32(-1735.0 - _wgslsmith_f_op_f32(-810.0))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -3481.0) + _wgslsmith_f_op_f32(max(var_1.x, -299.0))), 1085.0)), func_9((i32(-1) * -u_input.c.x) ^ _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c.x, 0, 0), countOneBits(-408)), func_7(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(71793u, u_input.b, 0u), vec3<u32>(u_input.a, 1u, 4294967295u)), vec3<u32>(0u, u_input.b, u_input.a)), vec3<u32>(u_input.b >> (u_input.b % 32u), ~4294967295u, 4294967295u)), _wgslsmith_f_op_f32(f32(-1.0) * -911.0)).d, func_9(countOneBits(_wgslsmith_mult_i32(-2147483648 >> (40475u % 32u), -4063)), func_9(~u_input.c.x ^ 2147483647, Struct_1(u_input.b), -2463.0).c, -148.0).d);
                return !((24528 <= -1) & (false & !any(vec3<bool>(false, true, false))));
            }
            for (var var_0 = 48038; var_0 != 0; var_0 -= 1) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                let var_1 = func_9(-42465, func_9(-_wgslsmith_clamp_i32(-63090, min(-28094, -40617), -37698), Struct_1(u_input.b), _wgslsmith_f_op_f32(-586.0 * -1724.0)).c, 132.0).c;
                var var_2 = Struct_2(-1000.0, vec2<f32>(1559.0, -1121.0), Struct_1(64704u), var_1);
                let var_3 = func_9(5561, var_2.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1016.0))))));
            }
        }
    }
    var var_0 = select(u_input.c.x, 9802 >> (~(~(~4029u)) % 32u), any(select(vec2<bool>(379.0 <= 638.0, true), select(!vec2<bool>(true, false), vec2<bool>(false, false), u_input.b != u_input.a), false)));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(213.0, _wgslsmith_f_op_f32(f32(-1.0) * -319.0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-775.0, 502.0)))), Struct_1(min(u_input.a, reverseBits(u_input.b))), func_7(~vec3<u32>(u_input.a, 54544u, 1u) | ~vec3<u32>(u_input.a, u_input.a, 4438u), _wgslsmith_mult_vec3_u32(min(vec3<u32>(5321u, u_input.b, u_input.a), vec3<u32>(u_input.b, 0u, 3538u)), vec3<u32>(65327u, 0u, 38311u)))), u_input.c.x, Struct_2(-1486.0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-650.0 - 760.0) * _wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_f32(-939.0)), Struct_1(0u), func_9(-_wgslsmith_add_i32(u_input.c.x, u_input.c.x), func_7(_wgslsmith_div_vec3_u32(vec3<u32>(4522u, u_input.b, u_input.a), vec3<u32>(0u, 38u, u_input.a)), ~vec3<u32>(0u, 1u, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-217.0), _wgslsmith_f_op_f32(f32(-1.0) * -834.0), !true))).d), -(~select(vec4<i32>(21841, -1945, -58465, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -1), false) << (vec4<u32>(1u, func_7(vec3<u32>(52875u, u_input.b, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.b)).a, ~12665u, abs(u_input.b)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(522.0)), _wgslsmith_f_op_f32(ceil(-722.0))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1005.0), _wgslsmith_f_op_f32(f32(-1.0) * -947.0), all(vec4<bool>(false, true, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-120.0, _wgslsmith_f_op_f32(-1006.0))))));
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        var_0 = _wgslsmith_sub_i32(abs(~_wgslsmith_clamp_i32(var_1.d.x, var_1.b, u_input.c.x) << (4294967295u % 32u)), var_1.d.x);
        break;
    }
    var var_2 = Struct_1(u_input.a);
    return _wgslsmith_f_op_f32(var_1.c.b.x * _wgslsmith_f_op_vec2_f32(func_6()).x) == 817.0;
}

fn func_3(arg_0: vec2<u32>) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        var var_0 = u_input.c.x;
        var var_1 = !vec2<bool>(!func_4(), false);
    }
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        let var_0 = 4294967295u;
        var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(266.0 - 843.0), _wgslsmith_f_op_f32(-973.0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(310.0, 3236.0))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(476.0, -753.0) + vec2<f32>(156.0, -318.0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1131.0, 159.0) + vec2<f32>(-1857.0, 675.0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1324.0, 677.0))))))), Struct_1(func_8(~vec3<u32>(32184u, u_input.b, 1u), Struct_1(4294967295u))), func_9(u_input.c.x, Struct_1(_wgslsmith_clamp_u32(40355u, ~var_0, arg_0.x)), 335.0).d);
        switch (abs(~_wgslsmith_add_i32(u_input.c.x, 0))) {
            case 34000: {
            }
            case 5086: {
                var_1 = func_9(~(-_wgslsmith_mult_i32(0, -28678)), Struct_1(abs(4294967295u ^ _wgslsmith_mult_u32(var_0, 361u))), 1718.0);
                var var_2 = Struct_3(func_9(i32(-1) * -6347, func_7(vec3<u32>(abs(4294967295u), _wgslsmith_add_u32(var_0, arg_0.x), 70476u), vec3<u32>(94195u, ~1u, var_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1573.0, var_1.b.x)))))), u_input.c.x, func_9(0, var_1.c, var_1.a), vec4<i32>(abs(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x)), u_input.c.x, u_input.c.x, _wgslsmith_clamp_i32(-31457 ^ u_input.c.x, _wgslsmith_sub_i32(37186, -36664), u_input.c.x)) & countOneBits(~vec4<i32>(98225, u_input.c.x, u_input.c.x, 0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a)))))));
                var var_3 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(min(vec4<u32>(u_input.a, 85655u, var_2.a.d.a, var_1.c.a), vec4<u32>(u_input.b, var_1.c.a, 1u, 1u))), vec4<u32>(~22344u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0, 65486u), vec3<u32>(0u, arg_0.x, var_0)), ~55782u, 0u & var_2.c.c.a)), ~vec4<u32>(u_input.a ^ var_0, u_input.a, select(17351u, 4294967295u, true), ~var_1.c.a));
                var var_4 = u_input.c.x;
            }
            default: {
                var var_2 = !all(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))));
                var var_3 = -((i32(-1) * -(u_input.c.x << (var_1.d.a % 32u))) & 7735);
            }
        }
        var_1 = func_9(u_input.c.x, var_1.d, _wgslsmith_f_op_f32(-var_1.b.x));
        for (var var_2: i32; all(select(vec2<bool>(~18203 <= u_input.c.x, func_4()), select(vec2<bool>(!false, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, true), 46585u > 3273u), ~5059u > var_1.c.a), !vec2<bool>(!false, all(vec2<bool>(false, true))))); var_2 -= 1) {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            continue;
        }
    }
    switch (0) {
        case -5349: {
            return func_9(u_input.c.x, Struct_1(4294967295u), _wgslsmith_f_op_vec2_f32(func_6()).x).d;
        }
        case -1: {
            let var_0 = func_9(27478, func_9(12553, Struct_1(133308u), _wgslsmith_f_op_f32(sign(1167.0))).d, 999.0).d;
            var var_1 = ~u_input.c.yy;
            var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1026.0, 312.0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000.0, -1218.0) * vec2<f32>(-372.0, -108.0))), _wgslsmith_f_op_vec2_f32(func_6()))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000.0, 310.0) - vec2<f32>(-1073.0, -635.0))))));
        }
        case 1: {
            loop {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                break;
            }
            let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_6()).x, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_6()).x, _wgslsmith_f_op_f32(-1781.0))))));
            let var_1 = ~(~func_8(abs(~vec3<u32>(arg_0.x, 0u, arg_0.x)), func_9(u_input.c.x, Struct_1(arg_0.x), var_0.x).c));
            loop {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                continue;
            }
            var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2104.0, var_0.x, var_0.x, 1928.0))))));
        }
        case 37372: {
            var var_0 = func_9(abs(-2147483648 | 0) & 2147483647, func_9(-1, func_9(-1, func_7(abs(vec3<u32>(u_input.a, u_input.b, arg_0.x)), vec3<u32>(u_input.a, u_input.b, arg_0.x) | vec3<u32>(arg_0.x, arg_0.x, 4294967295u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1388.0, 619.0))))).c, -627.0).d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-322.0, -1280.0))))))));
            var var_1 = func_9(u_input.c.x, func_9(_wgslsmith_mod_i32(-16176, -2147483648), Struct_1(71365u), func_9(i32(-1) * -14256, var_0.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-819.0)))).a).d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -809.0), _wgslsmith_div_f32(func_9(-20501, var_0.d, var_0.b.x).b.x, var_0.a))), _wgslsmith_f_op_f32(-584.0)))).c;
            switch (424) {
                case 58062: {
                }
                default: {
                    var var_2 = 2147483647;
                    let var_3 = ((false & ((arg_0.x <= u_input.b) | (var_0.a >= -876.0))) | any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), true))) && func_4();
                }
            }
        }
        default: {
            let var_0 = Struct_1(arg_0.x);
            switch (~0 & max(_wgslsmith_dot_vec3_i32(vec3<i32>(-62672, firstTrailingBit(0), u_input.c.x), vec3<i32>(u_input.c.x, -2147483648, abs(u_input.c.x))), ~1)) {
                case -2147483648: {
                    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1272.0 - 188.0)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1210.0, 1695.0, true))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-986.0, _wgslsmith_f_op_f32(f32(-1.0) * -1234.0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-664.0))))))))));
                }
                case 1: {
                    var var_1 = _wgslsmith_mod_u32(abs(u_input.b), ~abs(arg_0.x)) <= _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.b, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(26518u, 1u, 7808u, u_input.a), vec4<u32>(4294967295u, var_0.a, var_0.a, 51394u))), _wgslsmith_add_u32(~var_0.a, 9658u ^ 0u), countOneBits(1u) & 42397u), ~vec3<u32>(29613u, arg_0.x, arg_0.x));
                }
                default: {
                    var var_1 = _wgslsmith_div_i32(select(~min(u_input.c.x, -14871), 8186, !(!false)), 2147483647) | abs(1);
                    let var_2 = vec4<i32>(19245, u_input.c.x, abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 11526) >> (vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a) % vec4<u32>(32u)), -vec4<i32>(u_input.c.x, u_input.c.x, -1, u_input.c.x)), reverseBits(max(vec4<i32>(-31530, u_input.c.x, 2147483647, 38074), vec4<i32>(u_input.c.x, -2147483648, 4280, u_input.c.x))))), u_input.c.x);
                    let var_3 = Struct_3(func_9(-1, Struct_1(arg_0.x), -1000.0), ~(-u_input.c.x << (_wgslsmith_sub_u32(6124u, u_input.a) % 32u)) >> (1u % 32u), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(-822.0, -1200.0), _wgslsmith_f_op_f32(f32(-1.0) * -609.0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000.0, -931.0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000.0, -479.0)))), Struct_1(4294967295u), Struct_1(24709u)), firstLeadingBit(_wgslsmith_mod_vec4_i32(var_2, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 14293, -24517, 8449), var_2))) & (var_2 & -(vec4<i32>(-6972, -1, 0, var_2.x) ^ var_2)), 632.0);
                }
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        var var_0 = ~arg_0;
    }
    return Struct_1(func_9(u_input.c.x, Struct_1(~(~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2142.0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-643.0) - _wgslsmith_f_op_f32(-742.0 + -230.0)))).d.a);
}

fn func_10(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = !vec2<bool>(!any(!vec3<bool>(false, true, true)), false);
    if (var_0.x) {
        let var_1 = Struct_3(func_9(-4734, arg_0.c, arg_1.x), ~(-21773) << ((16826u & _wgslsmith_mod_u32(11734u, ~4294967295u)) % 32u), Struct_2(-1455.0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -282.0) * vec2<f32>(929.0, arg_0.a))), Struct_1(_wgslsmith_div_u32(10985u, countOneBits(20093u))), Struct_1(arg_0.d.a)), abs(~vec4<i32>(0, -14078, 2147483647, min(-1, 2147483647))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), arg_1.x))));
        let var_2 = var_1.c.d.a & ~func_9(countOneBits(-var_1.d.x), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 1216.0) + -1104.0)).c.a;
        for (var var_3 = -20888; var_3 <= 2147483647; var_3 += 1) {
            if (LOOP_COUNTERS[27u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            let var_4 = vec4<i32>(u_input.c.x, ~(-1), _wgslsmith_dot_vec4_i32(var_1.d, -vec4<i32>(-u_input.c.x, var_1.d.x, -var_1.b, reverseBits(var_1.b))), reverseBits(u_input.c.x));
            var_3 = var_1.b;
        }
        var var_3 = u_input.a;
        loop {
            if (LOOP_COUNTERS[28u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            continue;
        }
    }
    var var_1 = _wgslsmith_sub_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, countOneBits(1u)), ~vec2<u32>(arg_3.x, 1u)), u_input.a), ~arg_2.a);
    if (var_0.x) {
        return func_7((vec3<u32>(32119u, ~27655u, _wgslsmith_div_u32(1u, arg_3.x)) ^ arg_3.xww) & select(vec3<u32>(~4294967295u, arg_2.a, ~arg_3.x), ~vec3<u32>(4294967295u, arg_3.x, 32126u), !(!vec3<bool>(true, true, var_0.x))), ~(~abs(select(arg_3.xwz, arg_3.xzz, vec3<bool>(true, true, false)))));
    }
    var var_2 = func_9(~(-_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_div_i32(u_input.c.x, -31849))), arg_0.c, 451.0);
    return func_3(func_5().zx);
}

fn func_11(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    switch (~(~u_input.c.x << (~arg_0.a % 32u))) {
        case -1: {
            loop {
                if (LOOP_COUNTERS[29u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
                var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(632.0)), -836.0) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(332.0 - 1404.0)))) - _wgslsmith_f_op_f32(-440.0)));
                var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x + 1000.0)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000.0, arg_1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * 639.0), _wgslsmith_f_op_f32(floor(509.0)))))));
                continue;
            }
            switch (u_input.c.x) {
                case 0: {
                    let var_0 = all(!(!select(vec2<bool>(true, true), !vec2<bool>(false, true), vec2<bool>(true, false))));
                }
                case -15917: {
                    let var_0 = arg_1.x;
                    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-835.0)))), 1402.0) <= var_0;
                }
                default: {
                    let var_0 = func_3(~(vec2<u32>(func_5().x, ~44757u) >> (abs(~vec2<u32>(1u, arg_0.a)) % vec2<u32>(32u))));
                    let var_1 = _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(~(-3244), u_input.c.x >> (6951u % 32u))) | u_input.c.xx, -vec2<i32>(-1, u_input.c.x));
                    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, var_1.x), select(~_wgslsmith_sub_vec2_i32(var_1, var_1), abs(firstTrailingBit(var_1)), vec2<bool>(!false, func_4()))), _wgslsmith_dot_vec2_i32(~var_1, ~var_1), _wgslsmith_dot_vec3_i32(u_input.c, -u_input.c));
                    let var_3 = select(vec3<bool>(!(1u < arg_0.a), all(select(!vec2<bool>(true, false), !vec2<bool>(false, true), true)), !all(vec4<bool>(true, true, false, true))), vec3<bool>(false, !(!(1000.0 != -996.0)), true), !all(vec4<bool>(var_2 > u_input.c.x, !false, false & false, !false)));
                }
            }
        }
        case 74453: {
            let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + arg_1.yw) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1572.0, arg_1.x))))));
        }
        case -22092: {
            let var_0 = any(select(!(!vec2<bool>(false, false)), select(vec2<bool>(208.0 >= arg_1.x, true), !vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), false && true));
            let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
            let var_2 = Struct_3(Struct_2(151.0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-var_1)), var_0)), arg_0, arg_0), u_input.c.x >> ((~(~4294967295u) << (max(~arg_0.a, ~17479u) % 32u)) % 32u), func_9(_wgslsmith_mod_i32(12669, -7586), func_7(countOneBits(vec3<u32>(u_input.a, arg_0.a, 1u)), abs(max(vec3<u32>(u_input.b, arg_0.a, u_input.b), vec3<u32>(u_input.a, u_input.a, u_input.a)))), 1000.0), min(~countOneBits(vec4<i32>(u_input.c.x, 6784, u_input.c.x, -5674)), min(-vec4<i32>(u_input.c.x, 1, -32289, u_input.c.x), vec4<i32>(-5747, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(1u, 5534u, 1u, arg_0.a) % vec4<u32>(32u)))) ^ _wgslsmith_mod_vec4_i32(-vec4<i32>(-59669, -68010, 824, u_input.c.x), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c.x, 0, -13083, u_input.c.x), max(vec4<i32>(0, u_input.c.x, -2431, -1), vec4<i32>(u_input.c.x, 14235, u_input.c.x, u_input.c.x)))), -431.0);
            var var_3 = arg_0;
        }
        default: {
            var var_0 = firstTrailingBit(-6274) < -(-u_input.c.x << ((~arg_0.a & func_10(Struct_2(2909.0, arg_1.xw, arg_0, arg_0), vec2<f32>(arg_1.x, arg_1.x), Struct_1(u_input.b), vec4<u32>(0u, 61124u, 78346u, 1u)).a) % 32u));
            loop {
                if (LOOP_COUNTERS[30u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
                var_0 = any(select(!select(vec2<bool>(false, true), !vec2<bool>(true, true), vec2<bool>(false, true)), !vec2<bool>(u_input.c.x <= -32364, !true), !((true != true) || (1 == 0))));
                continue;
            }
            let var_1 = Struct_2(970.0, _wgslsmith_div_vec2_f32(arg_1.zy, arg_1.yw), arg_0, Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.a) | vec4<u32>(1u, 23287u, 58606u, 1u)), max(~vec4<u32>(1u, 5449u, 44045u, u_input.a), max(vec4<u32>(arg_0.a, u_input.b, arg_0.a, u_input.b), vec4<u32>(1u, arg_0.a, u_input.a, u_input.b))))));
            loop {
                if (LOOP_COUNTERS[31u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
                let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-479.0) + var_1.a), 1000.0, _wgslsmith_f_op_f32(-var_1.b.x), 1000.0)));
                let var_3 = all(vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), !vec2<bool>(false, true), !vec2<bool>(false, false))), any(vec2<bool>(select(true, false, false), func_4())), true, any(!(!vec4<bool>(false, false, false, false)))));
                break;
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[32u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
        var var_0 = Struct_2(arg_1.x, arg_1.yw, func_10(func_9(13603, func_3(vec2<u32>(94087u, 1u)), -311.0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.zw)) - vec2<f32>(_wgslsmith_f_op_vec2_f32(func_6()).x, _wgslsmith_f_op_f32(-arg_1.x))), Struct_1(~(~1u)), vec4<u32>(~arg_0.a, countOneBits(~arg_0.a), ~max(arg_0.a, 32306u), ~(4294967295u << (0u % 32u)))), func_10(Struct_2(arg_1.x, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, 744.0), _wgslsmith_div_vec2_f32(vec2<f32>(372.0, -396.0), arg_1.zx)), func_7(select(vec3<u32>(arg_0.a, u_input.a, 3083u), vec3<u32>(u_input.a, 1u, 1u), false), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_0.a, arg_0.a), vec3<u32>(u_input.a, 4294967295u, 4294967295u))), arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), -218.0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yy * vec2<f32>(arg_1.x, arg_1.x)))), func_10(Struct_2(arg_1.x, _wgslsmith_div_vec2_f32(arg_1.yx, arg_1.yz), arg_0, arg_0), vec2<f32>(-517.0, _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), Struct_1(u_input.a), ~vec4<u32>(5535u, 4294967295u, arg_0.a, 6678u)), vec4<u32>(u_input.a, u_input.a, arg_0.a, reverseBits(1u))));
    }
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~func_5().x, u_input.a, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 27413u), vec3<u32>(arg_0.a, arg_0.a, 85519u)) >> (_wgslsmith_mod_u32(arg_0.a, u_input.b) % 32u)), reverseBits(reverseBits(~vec4<u32>(1u, 0u, 59089u, 5631u)))) << ((vec4<u32>(func_8(~vec3<u32>(47333u, 0u, 4294967295u), func_9(u_input.c.x, Struct_1(u_input.b), arg_1.x).d), ~(~119796u), 0u, _wgslsmith_add_u32(u_input.a, u_input.a)) ^ _wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 0u, u_input.a, arg_0.a)), countOneBits(~vec4<u32>(u_input.a, 37601u, 54735u, arg_0.a)))) % vec4<u32>(32u));
    loop {
        if (LOOP_COUNTERS[33u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
        var var_1 = arg_0;
        var var_2 = false;
    }
    var_0 = _wgslsmith_sub_vec4_u32(~max(vec4<u32>(1u, 1u, 4294967295u, arg_0.a) ^ vec4<u32>(arg_0.a, 0u, u_input.b, 47197u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, u_input.a, arg_0.a, 529u), vec4<u32>(0u, arg_0.a, var_0.x, 16427u))), min(~vec4<u32>(37552u, 4294967295u, 31867u, u_input.b), countOneBits(vec4<u32>(112756u, 50058u, var_0.x, var_0.x))) | (~vec4<u32>(var_0.x, 0u, 4294967295u, var_0.x) >> (vec4<u32>(20089u, var_0.x, u_input.b, u_input.a) % vec4<u32>(32u)))) ^ vec4<u32>(~(~1u), ~(~(u_input.a ^ u_input.b)), u_input.b, 181u);
    return Struct_1(~(~1u));
}

fn func_2() -> f32 {
    for (; !(!false || any(!vec2<bool>(true, true))); ) {
        if (LOOP_COUNTERS[34u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[34u] = LOOP_COUNTERS[34u] + 1u;
        continue;
    }
    let var_0 = vec2<bool>(_wgslsmith_mod_i32(0, _wgslsmith_mod_i32(u_input.c.x << (u_input.a % 32u), u_input.c.x)) != 13351, false || false);
    let var_1 = 1u;
    if (33080 == u_input.c.x) {
        var var_2 = !(!var_0.x);
        let var_3 = func_11(func_10(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0) - _wgslsmith_f_op_f32(-697.0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(741.0, -1914.0) + vec2<f32>(1066.0, 666.0)), func_3(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u), var_0)), func_3(~vec2<u32>(var_1, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6())), func_3((vec2<u32>(u_input.b, var_1) >> (vec2<u32>(u_input.b, 61863u) % vec2<u32>(32u))) & abs(vec2<u32>(34492u, u_input.b))), ~vec4<u32>(var_1, 1u, 37709u, 4294967295u) ^ vec4<u32>(94924u << (1u % 32u), 18765u, var_1, 1u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-405.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1028.0)) + _wgslsmith_f_op_f32(-132.0)), _wgslsmith_f_op_f32(340.0 * 336.0), -652.0))));
        var_2 = var_0.x;
        loop {
            if (LOOP_COUNTERS[35u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[35u] = LOOP_COUNTERS[35u] + 1u;
            continue;
        }
        var_2 = any(var_0);
    }
    loop {
        if (LOOP_COUNTERS[36u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[36u] = LOOP_COUNTERS[36u] + 1u;
        var var_2 = func_10(func_9(~u_input.c.x, func_3(_wgslsmith_add_vec2_u32(max(vec2<u32>(20058u, 23979u), vec2<u32>(u_input.a, 1u)), firstLeadingBit(vec2<u32>(var_1, var_1)))), -1363.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1663.0)), _wgslsmith_div_f32(-247.0, -1000.0))), Struct_1(u_input.a), firstTrailingBit(~countOneBits(vec4<u32>(0u, 1u, var_1, 12469u))));
        break;
    }
    return _wgslsmith_f_op_vec2_f32(func_6()).x;
}

fn func_1() -> vec3<bool> {
    var var_0 = vec4<f32>(435.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -642.0), 1721.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), 790.0, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-417.0) + 601.0)))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-809.0, 365.0, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(251.0)) - var_0.x), var_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(trunc(var_0.x))));
    for (; ; ) {
        if (LOOP_COUNTERS[37u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[37u] = LOOP_COUNTERS[37u] + 1u;
        var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_vec2_f32(func_6()).x), vec4<f32>(var_0.x, 644.0, _wgslsmith_f_op_f32(-var_0.x), 1000.0)));
        var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1275.0)), _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(270.0)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), 1664.0), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1250.0))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 1161.0), var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1123.0, var_0.x, -224.0, var_0.x) * vec4<f32>(var_0.x, 324.0, var_0.x, var_0.x)))))));
    }
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -791.0) - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), -166.0), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, 269.0, _wgslsmith_f_op_f32(exp2(-247.0))))))), (-(u_input.c.x >> (u_input.a % 32u)) >> (u_input.a % 32u)) < u_input.c.x));
    switch (u_input.c.x) {
        case 7497: {
            var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(488.0, 419.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -1232.0))), var_0.x)))));
        }
        case -57767: {
            loop {
                if (LOOP_COUNTERS[38u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[38u] = LOOP_COUNTERS[38u] + 1u;
                var var_1 = Struct_2(var_0.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(1501.0))))), _wgslsmith_f_op_f32(var_0.x * var_0.x)), Struct_1(firstTrailingBit(func_3(~vec2<u32>(u_input.a, 71661u)).a)), Struct_1(~min(select(13570u, 9764u, true), u_input.a)));
                var var_2 = select(_wgslsmith_clamp_vec2_i32(firstTrailingBit(firstTrailingBit(select(vec2<i32>(37023, 1), u_input.c.yz, vec2<bool>(true, true)))), u_input.c.xy, vec2<i32>(~_wgslsmith_add_i32(-3261, u_input.c.x), abs(-10531))), ~firstLeadingBit(abs(countOneBits(vec2<i32>(u_input.c.x, -61565)))), !(!true));
                let var_3 = Struct_3(Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_0.x))), func_11(func_3(vec2<u32>(var_1.d.a, 4294967295u) << (vec2<u32>(0u, var_1.d.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-414.0, -819.0, 3265.0, 2379.0) * vec4<f32>(1754.0, var_0.x, var_0.x, -506.0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1025.0, var_0.x, 1301.0, 300.0)))), Struct_1(u_input.b)), -35332, Struct_2(_wgslsmith_f_op_f32(-151.0 - _wgslsmith_f_op_f32(-var_1.a)), vec2<f32>(-1072.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1098.0)) + -975.0)), var_1.d, func_7(vec3<u32>(u_input.b, ~u_input.b, ~u_input.b), abs(vec3<u32>(var_1.d.a, u_input.a, 1u)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(2870u, 36238u, 1u), vec3<u32>(0u, var_1.d.a, 0u), vec3<u32>(0u, 10249u, u_input.a)))), vec4<i32>(var_2.x, firstTrailingBit(~(-1)) & u_input.c.x, ~0, -(29748 << (var_1.c.a % 32u)) >> (~_wgslsmith_sub_u32(var_1.d.a, 4340u) % 32u)), _wgslsmith_f_op_f32(1218.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
            }
            var var_1 = _wgslsmith_sub_vec2_i32(reverseBits(-u_input.c.zx), vec2<i32>(u_input.c.x, -1));
            if (!(any(select(vec3<bool>(false, true, true), !vec3<bool>(false, true, true), true)) != func_4())) {
                var var_2 = _wgslsmith_f_op_f32(round(-935.0));
            }
            if (false) {
                let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 386.0) - var_0.x))), -288.0)));
            }
            var_1 = u_input.c.yz;
        }
        default: {
            if (any(select(select(!vec3<bool>(true, true, false), vec3<bool>(!false, !true, -23209 <= 7507), firstLeadingBit(u_input.c.x) != -u_input.c.x), !(!(!vec3<bool>(true, true, false))), any(!vec2<bool>(false, false))))) {
                var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 1416.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))))), 796.0, _wgslsmith_f_op_f32(273.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))));
                var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(369.0 + -1096.0) - -918.0) * _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(step(363.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1752.0, var_0.x) - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1000.0))));
                let var_1 = vec4<bool>(func_4(), all(vec4<bool>(false, !all(vec3<bool>(false, false, true)), !all(vec2<bool>(false, true)), all(!vec2<bool>(false, false)))), true, !any(!(!vec2<bool>(false, true))));
            }
            let var_1 = Struct_2(471.0, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(696.0, var_0.x) * 324.0) * _wgslsmith_f_op_f32(-var_0.x)), var_0.x), Struct_1(u_input.a), Struct_1(_wgslsmith_mult_u32(32170u, ~0u)));
            loop {
                if (LOOP_COUNTERS[39u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[39u] = LOOP_COUNTERS[39u] + 1u;
            }
        }
    }
    return select(!select(vec3<bool>(false, true && true, !false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), !vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), vec3<bool>(!false, any(vec4<bool>(true, false, false, true)), !false)), vec3<bool>(!all(!vec2<bool>(false, true)), !(false && true) && func_4(), true), select(vec3<bool>(26080u <= _wgslsmith_div_u32(18664u, u_input.b), _wgslsmith_f_op_f32(-var_0.x) < -660.0, false), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), !vec3<bool>(false, false, false), !vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), !true), vec3<bool>(695.0 < var_0.x, true, func_4())), all(!(!vec3<bool>(false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = -1; ; var_0 += 1) {
        if (LOOP_COUNTERS[40u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[40u] = LOOP_COUNTERS[40u] + 1u;
        break;
    }
    let var_0 = !select(func_1(), vec3<bool>(false, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false))), vec3<bool>(!false, u_input.c.x == (u_input.c.x ^ u_input.c.x), any(vec3<bool>(false, false, true))));
    var var_1 = func_3((select(vec2<u32>(u_input.a, 1u), ~vec2<u32>(u_input.b, u_input.b), false) & vec2<u32>(func_11(Struct_1(u_input.b), vec4<f32>(1000.0, 132.0, 1244.0, -173.0)).a, ~u_input.a)) << (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(73064u, 43008u)), func_5().xx), reverseBits(vec2<u32>(32566u, u_input.b)) | (vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(117503u, u_input.b))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_mult_vec2_u32(~(~(func_5().yx & firstTrailingBit(vec2<u32>(0u, 1u)))), vec2<u32>(u_input.b, abs(4294967295u)));
    var_1 = Struct_1(~4294967295u);
    for (var var_3: i32; var_0.x; ) {
        if (LOOP_COUNTERS[41u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[41u] = LOOP_COUNTERS[41u] + 1u;
        var var_4 = vec2<f32>(-732.0, _wgslsmith_f_op_f32(1971.0 * _wgslsmith_f_op_f32(105.0 - _wgslsmith_f_op_f32(357.0 + 1000.0))));
        if (false) {
        }
    }
    let var_3 = Struct_1(min(_wgslsmith_dot_vec2_u32(var_2, var_2), ~(~_wgslsmith_clamp_u32(46491u, var_2.x, var_2.x))));
    let var_4 = func_9(u_input.c.x, Struct_1(~select(4294967295u, 0u >> (u_input.b % 32u), any(var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-789.0))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(u_input.c, vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), u_input.c.x), var_4.d.a >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.d.a, 1u, 8604u), vec3<u32>(var_2.x, 4294967295u, var_4.d.a)))));
}

