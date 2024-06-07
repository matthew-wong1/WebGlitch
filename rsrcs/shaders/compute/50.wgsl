// {"0:0":[198,130,142,80,28,235,167,81,247,219,22,129,84,33,201,41,169,234,127,52,128,11,160,51]}
// Seed: 9073209346269968188

struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: f32 = -843.0;

var<private> global2: Struct_3;

var<private> global3: Struct_1;

var<private> LOOP_COUNTERS: array<u32, 13>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn func_6() -> vec3<bool> {
    let var_0 = global0.xy;
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var var_1 = select(vec3<bool>(global0.x, true, var_0.x), !vec3<bool>(var_0.x, global0.x, !(global2.b >= global2.c.x)), 0u != firstLeadingBit(7622u));
        global2 = Struct_3(global3.b.x, -48442, vec2<i32>(~(-u_input.c.x), u_input.c.x));
    }
    for (; global0.x; ) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        break;
    }
    var var_1 = all(vec2<bool>(false, false));
    let var_2 = u_input.b.x;
    return !(!select(select(!vec3<bool>(false, false, false), !vec3<bool>(true, false, var_0.x), var_0.x && global0.x), select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(global0.x, global3.a.x, global3.a.x), vec3<bool>(global3.a.x, global0.x, true), false), !vec3<bool>(true, true, var_0.x)), vec3<bool>(1000.0 <= 1470.0, !global0.x, !true)));
}

fn func_5() -> vec3<bool> {
    var var_0 = vec3<u32>(~(~global3.b.x), 73995u, _wgslsmith_mult_u32(1u, abs(global2.a)));
    let var_1 = vec4<u32>(~global3.b.x, 1u, ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(70351u, u_input.b.x, global3.b.x, global2.a), vec4<u32>(29480u, 56205u, 54422u, var_0.x)), 20258u, abs(28303u))), ~(~u_input.b.x));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-260.0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -406.0))))))));
    switch (global2.b) {
        case 1: {
        }
        case 2147483647: {
        }
        case 31175: {
            global0 = !func_6();
            for (var var_2: i32; var_2 >= -2147483648; global2 = Struct_3(~0u, -2147483648, reverseBits(~select(u_input.c, vec2<i32>(5781, -36344), !vec2<bool>(false, global0.x))))) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000.0))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429.0 - -516.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(393.0, 282.0)))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-538.0))), _wgslsmith_div_f32(508.0, _wgslsmith_f_op_f32(f32(-1.0) * -1121.0)))))));
                var var_3 = Struct_2(Struct_1(!global0.yz, vec3<u32>(var_0.x, ~_wgslsmith_div_u32(global3.b.x, var_1.x), var_0.x)));
                let var_4 = 21426u;
                global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1152.0)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(480.0, _wgslsmith_f_op_f32(ceil(-1107.0)))))));
            }
            global3 = Struct_1(!global3.a, ~vec3<u32>(firstTrailingBit(48189u), 0u, 88256u));
        }
        case 46694: {
            let var_2 = (vec4<i32>(min(u_input.c.x, 0) >> (global2.a % 32u), _wgslsmith_mod_i32(reverseBits(global2.c.x), global2.c.x), _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647, 21920), -2147483648), firstTrailingBit(u_input.c.x)) ^ _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-15062, global2.b, 12641, 2147483647), vec4<i32>(-1, global2.b, u_input.c.x, u_input.a)), select(vec4<i32>(u_input.c.x, 15369, 2147483647, -33644), vec4<i32>(-77721, -1, global2.c.x, global2.b), global0.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647, -1, -16331, 0), vec4<i32>(2147483647, global2.c.x, u_input.a, u_input.a)), vec4<i32>(global2.b, u_input.c.x, u_input.a, -29567) ^ vec4<i32>(u_input.c.x, -6853, u_input.c.x, u_input.c.x)))) & _wgslsmith_sub_vec4_i32(vec4<i32>(~(-2147483648), u_input.c.x, _wgslsmith_sub_i32(~1, firstTrailingBit(u_input.a)), _wgslsmith_mod_i32(13741, ~global2.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(~global2.b, global2.b, u_input.a, ~(-486)), abs(-vec4<i32>(u_input.c.x, -13951, 2147483647, u_input.c.x))));
        }
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        if (false) {
            var var_2 = Struct_2(Struct_1(vec2<bool>(all(select(global3.a, vec2<bool>(true, global0.x), false)), global0.x), ~var_1.wxx));
        }
    }
    return select(func_6(), !func_6(), !vec3<bool>(true, 34687u < ~76559u, all(!global0.xz)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    if (true) {
    }
    global0 = func_5();
    let var_0 = arg_0;
    global2 = arg_1;
    var var_1 = Struct_1(!vec2<bool>(!(376.0 == 809.0), !(!global0.x)), ~max(vec3<u32>(49146u, u_input.b.x, global3.b.x) | ~vec3<u32>(global3.b.x, 84697u, 0u), var_0.yxw));
    return Struct_1(global3.a, ~vec3<u32>(_wgslsmith_add_u32(u_input.b.x, global2.a), abs(13315u), _wgslsmith_dot_vec4_u32(vec4<u32>(74592u, global2.a, 11661u, global3.b.x), var_0)) ^ vec3<u32>(58323u, _wgslsmith_mod_u32(4294967295u >> (11640u % 32u), 52303u), _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0.wyz), select(global3.b, var_0.xxw, vec3<bool>(true, var_1.a.x, global0.x)))));
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = Struct_3(0u, _wgslsmith_div_i32(global2.c.x << (~(~4294967295u) % 32u), ~u_input.c.x), ~arg_0);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(201.0, 1866.0, -1506.0), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461.0 - 619.0) - 1037.0), -197.0, -302.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1463.0), _wgslsmith_f_op_f32(-846.0 * 217.0), 1298.0), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000.0, 1397.0, -484.0), vec3<f32>(-237.0, -871.0, -952.0)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2111.0, -433.0, -2252.0)))), !vec3<bool>(false, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, _wgslsmith_f_op_f32(ceil(559.0)), _wgslsmith_f_op_f32(f32(-1.0) * -799.0)))));
}

fn func_3() -> Struct_2 {
    if (all(global3.a)) {
    }
    for (; ; ) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-529.0, -320.0, -677.0), vec3<f32>(-1168.0, -1939.0, -498.0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-546.0, -1400.0, -1236.0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, -201.0, -567.0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-352.0, 313.0, -588.0)))) - _wgslsmith_f_op_vec3_f32(func_7(_wgslsmith_mult_vec2_i32(vec2<i32>(-36210, 1), _wgslsmith_sub_vec2_i32(vec2<i32>(-42057, 1), u_input.c)), Struct_2(func_4(vec4<u32>(global3.b.x, 1u, 1u, u_input.b.x), Struct_3(u_input.b.x, u_input.a, vec2<i32>(-1, 2147483647)))), Struct_3(_wgslsmith_mult_u32(4294967295u, global3.b.x), global2.c.x, ~vec2<i32>(global2.b, 39330))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1131.0 + -180.0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-802.0, -747.0)), _wgslsmith_f_op_vec3_f32(func_7(vec2<i32>(0, 21857), Struct_2(Struct_1(global0.yz, vec3<u32>(0u, global2.a, global2.a))), Struct_3(global3.b.x, global2.b, vec2<i32>(-2147483648, -12672)))).x)), func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(18279u, global3.b.x ^ 1u, ~1u, max(42114u, 0u)), ~vec4<u32>(59937u, global2.a, u_input.b.x, 12554u)), Struct_3(global2.a, 44141, _wgslsmith_add_vec2_i32(vec2<i32>(-28799, u_input.a), firstLeadingBit(vec2<i32>(u_input.c.x, global2.c.x))))).a.x));
        global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_7(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, u_input.c, vec2<i32>(9936, 7888)), reverseBits(u_input.c)), Struct_2(Struct_1(vec2<bool>(global0.x, global3.a.x), global3.b)), Struct_3(_wgslsmith_dot_vec2_u32(global3.b.zx, vec2<u32>(4294967295u, 43239u)), global2.c.x ^ global2.c.x, global2.c))).x)), -534.0);
        global1 = _wgslsmith_f_op_f32(-674.0 - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    }
    if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1814.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)) * _wgslsmith_div_f32(1000.0, -145.0))) >= -222.0) {
        var var_0 = Struct_2(Struct_1(func_5().xx, ~global3.b));
        global0 = vec3<bool>(!all(vec4<bool>(all(var_0.a.a), func_4(vec4<u32>(u_input.b.x, var_0.a.b.x, global2.a, u_input.b.x), Struct_3(var_0.a.b.x, u_input.c.x, vec2<i32>(-2147483648, u_input.a))).a.x, all(vec4<bool>(global0.x, true, var_0.a.a.x, true)), var_0.a.a.x)), global0.x, !false);
        global2 = Struct_3(_wgslsmith_mod_u32(countOneBits(var_0.a.b.x), var_0.a.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, select(u_input.a, select(global2.c.x, 2147483647, true), var_0.a.a.x), min(_wgslsmith_mod_i32(global2.c.x, global2.b), min(1, global2.c.x)), u_input.a << (1u % 32u)), min(~select(vec4<i32>(1, global2.b, 2147483647, u_input.a), vec4<i32>(-56725, u_input.a, global2.c.x, global2.b), false), min(vec4<i32>(global2.b, -10594, 2147483647, u_input.c.x), -vec4<i32>(global2.b, -33813, u_input.a, 7571)))), -(vec2<i32>(-1) * -global2.c));
        if (func_5().x) {
            let var_1 = vec4<bool>(true, all(func_5()), !(false && false), !func_5().x);
            var var_2 = global2.c;
            let var_3 = false;
        }
    }
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        switch (global2.c.x) {
            case -17391: {
            }
            case -2147483648: {
                var var_0 = Struct_3(~u_input.b.x, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(1, global2.b) << (vec2<u32>(global3.b.x, global2.a) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(u_input.c, countOneBits(~u_input.c))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x >> (1u % 32u), -2147483647), global2.c, -vec2<i32>(0, 1) | _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(-2147483648, -42975)))));
            }
            case 27672: {
                break;
            }
            default: {
                var var_0 = global3.b;
                var var_1 = Struct_3(4135u | _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, 0u), global2.a), abs(u_input.a & _wgslsmith_div_i32(u_input.a, i32(-1) * -1)), ~global2.c);
                let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(169.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -266.0))), func_5().x | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1056.0 * 501.0)))));
            }
        }
        global2 = Struct_3(global3.b.x, u_input.a, -(firstTrailingBit(u_input.c) | vec2<i32>(74039, _wgslsmith_mult_i32(u_input.c.x, -1))));
        switch (firstTrailingBit(_wgslsmith_clamp_i32(-1, -2147483648, abs(~(u_input.a | global2.c.x))))) {
            case 57002: {
                continue;
            }
            default: {
                break;
            }
        }
    }
    global1 = _wgslsmith_f_op_vec3_f32(func_7(u_input.c >> (~vec2<u32>(~4294967295u, ~5210u) % vec2<u32>(32u)), Struct_2(Struct_1(vec2<bool>(all(vec3<bool>(global0.x, global3.a.x, global3.a.x)), global0.x), abs(countOneBits(global3.b)))), Struct_3(4294967295u, global2.b, vec2<i32>(_wgslsmith_sub_i32(34268, u_input.c.x), 19259) & ~_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(u_input.a, -13384))))).x;
    return Struct_2(func_4(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(global2.a, global2.a), global3.b.x), ~_wgslsmith_add_u32(global3.b.x, 21649u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global3.b, vec3<u32>(u_input.b.x, global2.a, 4294967295u)), select(global3.b, global3.b, global3.a.x)), 31959u), Struct_3((4294967295u ^ global2.a) << (0u % 32u), _wgslsmith_mult_i32(max(global2.b, u_input.c.x), _wgslsmith_div_i32(-2147483648, u_input.c.x)), vec2<i32>(-2147483648, ~global2.b))));
}

fn func_8(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> Struct_3 {
    switch (countOneBits(_wgslsmith_add_i32(_wgslsmith_add_i32(i32(-1) * -u_input.c.x, -u_input.a & -18594), u_input.c.x))) {
        case 5079: {
        }
        case 1: {
        }
        default: {
            global2 = Struct_3(~1u ^ arg_0.a.b.x, ~_wgslsmith_div_i32(~(-u_input.a), _wgslsmith_div_i32(2147483647, global2.b) ^ 2147483647), countOneBits(~global2.c));
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
            switch (global2.c.x) {
                default: {
                }
            }
        }
    }
    global3 = Struct_1(global0.xy, ~(~firstLeadingBit(vec3<u32>(37860u, 0u, 2186u))) & ~vec3<u32>(0u, arg_2, reverseBits(14085u)));
    if (false) {
        for (var var_0: i32; all(select(!(!func_5()), !(!(!vec3<bool>(false, true, global3.a.x))), vec3<bool>(!global3.a.x | global3.a.x, all(func_4(vec4<u32>(global3.b.x, global3.b.x, 30867u, arg_0.a.b.x), Struct_3(12206u, u_input.c.x, global2.c)).a), true))); var_0 += 1) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        }
        var var_0 = arg_0.a;
        var var_1 = 119.0;
    }
    switch (13099) {
        case -17868: {
        }
        case 1: {
            var var_0 = ~(~_wgslsmith_add_vec3_u32(~min(global3.b, arg_0.a.b), global3.b));
            var var_1 = Struct_3(_wgslsmith_div_u32(u_input.b.x, arg_0.a.b.x), 1, ~(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(global2.c, vec2<i32>(global2.b, -1)), u_input.c) >> (_wgslsmith_div_vec2_u32(vec2<u32>(32481u, arg_0.a.b.x), select(vec2<u32>(1u, 4294967295u), vec2<u32>(18200u, 16539u), vec2<bool>(true, arg_1.x))) % vec2<u32>(32u))));
            for (var var_2 = -2147483648; all(!select(select(vec3<bool>(true, arg_0.a.a.x, global3.a.x), vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(global3.a.x, global3.a.x, false)), vec3<bool>(true, true, arg_0.a.a.x), false)) && (_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-320.0), _wgslsmith_f_op_f32(1639.0 - -728.0)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -294.0), _wgslsmith_f_op_f32(-1000.0)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(750.0, 662.0)) + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -923.0), -565.0))); var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(~1877u, ~_wgslsmith_add_u32(0u, global2.a), 69709u), ~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.a.b.x, 39878u), vec3<u32>(global2.a, 4294967295u, 30349u)), _wgslsmith_add_u32(abs(4294967295u), func_4(vec4<u32>(101559u, var_1.a, u_input.b.x, 4294967295u), Struct_3(var_0.x, u_input.c.x, vec2<i32>(0, 2147483647))).b.x), min(~39868u, 71971u >> (arg_0.a.b.x % 32u))))) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                return Struct_3(~(~(~_wgslsmith_div_u32(arg_2, 0u))), i32(-1) * -15350, select((global2.c >> (u_input.b % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(-var_1.c, abs(global2.c)), var_1.c, vec2<bool>(!(!true), global0.x || true)));
            }
            var_1 = Struct_3(~var_0.x, ~abs(u_input.c.x), -vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(52808, u_input.c.x), vec2<i32>(var_1.c.x, 2147483647)), 22114));
        }
        case -40404: {
            let var_0 = Struct_3(arg_2, -global2.c.x, u_input.c);
            switch (abs(~(-64523 | -(i32(-1) * -1)))) {
                case -1: {
                    let var_1 = arg_0.a;
                    var var_2 = Struct_3(func_3().a.b.x, global2.c.x, select(_wgslsmith_mod_vec2_i32(u_input.c, ~vec2<i32>(7741, 4246)), var_0.c, !arg_1.x));
                    var var_3 = vec4<u32>(56409u, ~(~select(_wgslsmith_add_u32(global3.b.x, 4942u), var_0.a, global3.a.x)), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2, global2.a, 71529u, global2.a), vec4<u32>(var_0.a, u_input.b.x, global3.b.x, arg_2)), ~4294967295u), 4294967295u);
                }
                case -66385: {
                    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -793.0))) * 2379.0), 1372.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-342.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696.0)));
                }
                default: {
                    let var_1 = arg_0;
                    var var_2 = var_1.a;
                    let var_3 = Struct_2(Struct_1(select(!vec2<bool>(true, global0.x), global0.yy, global3.a.x), var_1.a.b));
                    let var_4 = _wgslsmith_sub_u32(1u, firstLeadingBit(~var_2.b.x)) == ~(~select(arg_2, var_0.a, false) ^ (_wgslsmith_add_u32(58333u, arg_2) << ((0u & var_0.a) % 32u)));
                    var var_5 = 21793u;
                }
            }
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
        }
        case 2147483647: {
            global3 = func_4(vec4<u32>(max(u_input.b.x, 44500u), arg_0.a.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 10836u), u_input.b), vec2<u32>(44125u, 4294967295u) << (u_input.b % vec2<u32>(32u))), ~(94940u >> (global3.b.x % 32u))) | reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(global3.b.x, 4294967295u, global3.b.x, arg_0.a.b.x), reverseBits(vec4<u32>(1u, 0u, global2.a, 0u)))), Struct_3(4294967295u ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(36127u, 1u), ~19816u), -1, countOneBits(-(global2.c & vec2<i32>(global2.b, global2.c.x)))));
            var var_0 = Struct_3(arg_2, -1, ~u_input.c);
            var var_1 = any(vec4<bool>(!(!all(arg_1)), all(arg_0.a.a), !true, global0.x));
            var var_2 = func_3().a;
        }
        default: {
            switch (abs(abs(u_input.a))) {
                case -1: {
                    var var_0 = global2.b;
                }
                case 0: {
                    global3 = Struct_1(arg_1, func_4(~abs(vec4<u32>(1u, arg_0.a.b.x, 0u, u_input.b.x)), Struct_3(global2.a, select(-35140, global2.b, false), _wgslsmith_mod_vec2_i32(global2.c, global2.c))).b >> ((~(~vec3<u32>(arg_2, u_input.b.x, 14289u)) | _wgslsmith_div_vec3_u32(max(vec3<u32>(0u, 1u, u_input.b.x), vec3<u32>(31666u, global3.b.x, global3.b.x)), reverseBits(vec3<u32>(arg_0.a.b.x, 1u, global3.b.x)))) % vec3<u32>(32u)));
                    var var_0 = vec2<i32>(u_input.c.x, firstTrailingBit(36215));
                    global2 = Struct_3(firstLeadingBit(~_wgslsmith_mod_u32(arg_0.a.b.x, ~arg_0.a.b.x)), 3666, u_input.c & u_input.c);
                    let var_1 = vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(~55433u, _wgslsmith_clamp_u32(19254u, 4294967295u, global2.a)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2, global2.a, 56123u), vec4<u32>(1u, global3.b.x, global2.a, 71488u)), arg_0.a.b.x, false)), arg_0.a.b.x, 1u >> (reverseBits(_wgslsmith_clamp_u32(firstLeadingBit(arg_2), ~arg_2, ~79514u)) % 32u), func_3().a.b.x);
                    var_0 = global2.c;
                }
                case -2147483648: {
                    let var_0 = arg_0.a.b.zz;
                    let var_1 = Struct_2(arg_0.a);
                }
                case -54802: {
                    let var_0 = all(vec2<bool>(firstLeadingBit(max(1, u_input.c.x)) > 2147483647, func_5().x));
                    global0 = !(!select(select(!vec3<bool>(false, true, true), select(vec3<bool>(true, global3.a.x, true), vec3<bool>(false, var_0, true), vec3<bool>(false, true, arg_1.x)), var_0), vec3<bool>(false, arg_0.a.a.x, select(global0.x, false, arg_1.x)), !select(vec3<bool>(global0.x, arg_0.a.a.x, global3.a.x), vec3<bool>(true, var_0, true), arg_0.a.a.x)));
                    global1 = _wgslsmith_f_op_f32(abs(-285.0));
                    var var_1 = arg_2;
                    var_1 = arg_0.a.b.x;
                }
                default: {
                    global3 = Struct_1(vec2<bool>(true, (select(-10169, 0, global3.a.x) > u_input.c.x) | func_4(firstTrailingBit(vec4<u32>(13115u, arg_2, 1u, arg_0.a.b.x)), Struct_3(47528u, global2.b, vec2<i32>(u_input.a, 5788))).a.x), select(firstTrailingBit(min(vec3<u32>(u_input.b.x, arg_0.a.b.x, 0u), global3.b)) | (~arg_0.a.b << (global3.b % vec3<u32>(32u))), ~global3.b, vec3<bool>(global3.a.x, (arg_0.a.b.x << (global3.b.x % 32u)) > 23156u, !arg_0.a.a.x && false)));
                    global2 = Struct_3(abs(global2.a), ~(~0), abs(vec2<i32>(u_input.a, u_input.a | -1)) & -global2.c);
                    var var_0 = Struct_3(_wgslsmith_clamp_u32(abs(4294967295u) | func_3().a.b.x, ~(~(~u_input.b.x)), ~(~global3.b.x) & _wgslsmith_mod_u32(global2.a, _wgslsmith_mod_u32(u_input.b.x, 43658u))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1, -555 << (4294967295u % 32u), ~global2.b, 26844), select(-vec4<i32>(global2.b, 0, 30538, global2.c.x), reverseBits(vec4<i32>(2147483647, -9159, u_input.a, u_input.a)), !vec4<bool>(false, false, true, true))), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.b, -2147483648), select(vec2<i32>(global2.b, -1), select(firstTrailingBit(u_input.c), vec2<i32>(u_input.a, 53923), func_5().yy), func_5().xy)));
                }
            }
            let var_0 = global2.b;
            switch (~(-4694)) {
                case 1: {
                    var var_1 = 61113u;
                    var var_2 = func_3().a.b;
                    var_2 = firstLeadingBit(_wgslsmith_sub_vec3_u32(select(arg_0.a.b, select(arg_0.a.b, arg_0.a.b, !vec3<bool>(false, arg_1.x, true)), !select(vec3<bool>(false, global3.a.x, true), vec3<bool>(false, false, false), arg_0.a.a.x)), countOneBits(arg_0.a.b)));
                }
                case 12438: {
                    global0 = select(vec3<bool>(!global3.a.x, false, arg_1.x), !select(!func_5(), func_6(), !(!arg_1.x)), !func_6().x);
                }
                case 45503: {
                    let var_1 = Struct_3(arg_0.a.b.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a, 13329, u_input.a) & firstTrailingBit(vec3<i32>(global2.b, 1, global2.b))), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.c.x, abs(global2.c.x), _wgslsmith_mod_i32(global2.c.x, u_input.a)), -(vec3<i32>(11057, 18656, -2147483648) ^ vec3<i32>(u_input.a, -11907, global2.b)))), u_input.c >> (arg_0.a.b.xy % vec2<u32>(32u)));
                    return var_1;
                }
                case -1: {
                    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1526.0, 1081.0)))));
                }
                default: {
                }
            }
        }
    }
    global0 = func_6();
    return Struct_3(60764u, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(1, global2.c.x, 15317, 0), vec4<i32>(countOneBits(2147483647), _wgslsmith_add_i32(u_input.c.x, global2.c.x), u_input.a, ~u_input.c.x))), -(min(select(vec2<i32>(0, 24963), vec2<i32>(-18585, u_input.a), vec2<bool>(false, false)), global2.c) << (~(~global3.b.zy) % vec2<u32>(32u))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<i32>(0, 44552, u_input.c.x) ^ ~_wgslsmith_div_vec3_i32(reverseBits(~vec3<i32>(21249, u_input.c.x, global2.b)), -vec3<i32>(0, u_input.c.x, u_input.c.x));
    var var_1 = ~_wgslsmith_mod_i32(var_0.x, u_input.c.x);
    if (false) {
        let var_2 = func_8(func_3(), !func_6().xx, u_input.b.x);
        global3 = func_4(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(31807u, u_input.b.x, global2.a, 1u), vec4<u32>(9890u, global3.b.x, 1u, 1u)), vec4<u32>(global3.b.x, 14920u, 33703u, 43037u)) >> (min(vec4<u32>(~global2.a, firstLeadingBit(var_2.a), global3.b.x ^ global2.a, 5780u), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, global3.b.x, 53034u, u_input.b.x), vec4<u32>(global2.a, global3.b.x, 0u, 28786u) & vec4<u32>(u_input.b.x, 4294967295u, var_2.a, 1u))) % vec4<u32>(32u)), Struct_3(global3.b.x >> (_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 74920u, u_input.b.x), vec3<u32>(4294967295u, var_2.a, global2.a))) % 32u), 6877, _wgslsmith_clamp_vec2_i32(-vec2<i32>(-21215, -36640) >> (u_input.b % vec2<u32>(32u)), min(vec2<i32>(var_2.b, global2.b), var_0.zx) ^ var_0.yy, var_0.xy)));
    }
    var var_2 = 0u;
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        continue;
    }
    return func_3();
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(966.0 - 519.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(791.0, -516.0)), -972.0))));
    if (any(global3.a)) {
        loop {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            global0 = vec3<bool>(any(!vec3<bool>(any(global0.zz), global0.x, !true)), !any(!select(vec4<bool>(true, false, global0.x, false), vec4<bool>(global3.a.x, global3.a.x, global3.a.x, true), vec4<bool>(global0.x, false, global3.a.x, global3.a.x))), global3.a.x);
            var var_0 = ~(-2147483648 ^ _wgslsmith_mult_i32(u_input.c.x, 2147483647));
            global3 = func_1(Struct_2(Struct_1(vec2<bool>(0 < 19822, !true), _wgslsmith_add_vec3_u32(vec3<u32>(10939u, u_input.b.x, 54307u), vec3<u32>(7050u, u_input.b.x, 43094u)))));
            var var_1 = Struct_2(func_3().a);
            let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-1, 18943, u_input.c.x) >> (vec3<u32>(global3.b.x, 4294967295u, 0u) % vec3<u32>(32u))), vec3<i32>(global2.b << (13940u % 32u), ~global2.c.x, global2.b)) >> (global3.b % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(45697, -(~global2.b)), ~_wgslsmith_div_i32(global2.b, global2.c.x), _wgslsmith_add_i32(~abs(69290), _wgslsmith_sub_i32(-u_input.a, -global2.b))), ~_wgslsmith_add_vec3_i32(~(vec3<i32>(44338, 7287, global2.b) >> (vec3<u32>(var_1.a.b.x, 0u, 4294967295u) % vec3<u32>(32u))), vec3<i32>(u_input.c.x, ~(-10636), _wgslsmith_sub_i32(u_input.c.x, u_input.a))));
        }
        var var_0 = func_1(func_2());
        let var_1 = ~vec3<i32>(1, -1, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, u_input.c.x, global2.b, 2147483647), vec4<i32>(global2.c.x, 1, -58436, global2.c.x)));
    }
    var var_0 = !global0.x != global0.x;
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        if (!global3.a.x) {
        }
    }
    global3 = Struct_1(select(!global0.xz, !select(global3.a, global0.yx, func_5().x), !func_2().a.a.x), vec3<u32>(abs(1u), 1u, reverseBits(_wgslsmith_sub_u32(global2.a, 39499u)) ^ global2.a));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(173.0)) - 1000.0)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a | global2.a, 8702, u_input.b.x);
}

