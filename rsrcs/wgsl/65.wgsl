// {"0:0":[137,43,229,38,28,150,59,85,151,154,109,131,128,224,31,207,22,189,169,190,9,50,233,223,83,69,190,231,42,195,118,210,178,138,123,10,88,95,83,77,5,42,193,162,166,144,83,54,42,223,14,22,144,122,178,155,86,89,172,218,81,84,206,238]}
// Seed: 12432117112679144753

struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 93862u);

var<private> global1: array<vec3<f32>, 20>;

var<private> global2: i32 = -22285;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, vec4<bool>(true, false, false, false), 22766u), Struct_1(true, vec4<bool>(true, true, false, false), 1u), Struct_1(true, vec4<bool>(true, false, false, false), 0u), Struct_1(false, vec4<bool>(true, true, false, false), 1u), Struct_1(false, vec4<bool>(false, false, true, true), 4294967295u), Struct_1(true, vec4<bool>(false, true, true, false), 1u), Struct_1(true, vec4<bool>(true, true, false, true), 45201u), Struct_1(false, vec4<bool>(false, false, true, false), 1u), Struct_1(true, vec4<bool>(false, true, true, false), 31821u), Struct_1(true, vec4<bool>(true, true, true, false), 0u), Struct_1(true, vec4<bool>(false, true, false, false), 14979u));

var<private> LOOP_COUNTERS: array<u32, 29>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>, arg_3: f32) -> vec3<u32> {
    for (var var_0 = i32(-1) * -1; var_0 >= -3958; var_0 += 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    let var_0 = _wgslsmith_f_op_f32(round(731.0));
    switch (1) {
        case 1: {
            global3 = array<Struct_1, 11>();
            global1 = array<vec3<f32>, 20>();
            let var_1 = 20803u | 0u;
            let var_2 = Struct_3(~vec2<u32>(53087u, firstLeadingBit(arg_2.x)) << (_wgslsmith_mod_vec2_u32(~arg_2.xx ^ ~arg_2.xw, vec2<u32>(arg_2.x, var_1)) % vec2<u32>(32u)), Struct_1(!true, select(select(select(arg_0.c.a.b, vec4<bool>(true, true, true, false), false), arg_0.b.b, select(arg_0.b.b, arg_0.b.b, arg_0.b.b)), arg_0.c.a.b, select(select(vec4<bool>(false, arg_0.b.b.x, false, arg_0.c.a.a), arg_0.c.a.b, false), vec4<bool>(arg_0.c.a.b.x, arg_0.c.a.b.x, arg_0.c.a.b.x, arg_0.c.a.b.x), vec4<bool>(arg_0.c.a.b.x, false, arg_0.c.a.b.x, true))), ~arg_2.x), arg_0.c);
            let var_3 = u_input.c.x;
        }
        case 0: {
            for (var var_1 = -1; ; var_1 += 1) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var var_2 = arg_0.c.a.b.zw;
            }
            var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-147.0, arg_3, false)) + -722.0))), -104.0)), _wgslsmith_f_op_f32(-558.0 - var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))));
        }
        case 2147483647: {
            for (var var_1: i32; ; global0 = u_input.e.xy) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_2 = vec4<f32>(290.0, var_0, 1304.0, 137.0);
                let var_3 = vec3<u32>(~_wgslsmith_mult_u32(abs(28371u), ~(~arg_0.a.x)), 4294967295u, arg_2.x);
                break;
            }
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                global2 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-4906, arg_1) & firstLeadingBit(u_input.a.xy), select(~u_input.a.yz, u_input.b, vec2<bool>(arg_0.b.b.x, false))), ~(-u_input.c.x) ^ ~(-4494), -15220), vec4<i32>(-1, -19379, max(_wgslsmith_div_i32(arg_1, -29125), -arg_1) >> (~4294967295u % 32u), 2147483647));
                global2 = -_wgslsmith_sub_i32(min(firstTrailingBit(-49307), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 13691, 1), vec4<i32>(arg_1, arg_1, arg_1, u_input.a.x) & vec4<i32>(-16526, 1, 47519, arg_1))), arg_1);
            }
            let var_1 = _wgslsmith_dot_vec3_u32(~select(abs(vec3<u32>(global0.x, arg_0.b.c, 24061u)), ~vec3<u32>(4294967295u, arg_2.x, u_input.d.x), _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(44409u, global0.x, 28398u, global0.x)) > ~1u), min(~(~abs(u_input.e.wyw)), _wgslsmith_clamp_vec3_u32(~arg_2.zxx, countOneBits(arg_2.wyz), _wgslsmith_mult_vec3_u32(vec3<u32>(9047u, u_input.e.x, u_input.e.x), ~arg_2.yxy))));
            for (; any(!(!(!select(arg_0.b.b.wz, arg_0.b.b.zy, true)))); ) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                break;
            }
            let var_2 = arg_0.c;
        }
        default: {
            switch (arg_1) {
                case -21018: {
                    let var_1 = vec4<i32>(arg_1, u_input.c.x, arg_1, -25716);
                    var var_2 = Struct_3(~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x, 7178u), arg_0.a))), Struct_1(u_input.c.x != -min(u_input.c.x, var_1.x), arg_0.b.b, abs(~arg_0.b.c)), arg_0.c);
                    return select(vec3<u32>(firstLeadingBit(arg_2.x), firstTrailingBit(14358u), ~(abs(global0.x) & _wgslsmith_add_u32(global0.x, arg_2.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(~37898u), 26686u & u_input.e.x, firstLeadingBit(_wgslsmith_add_u32(38846u, 4294967295u))), u_input.e.xxw), any(vec3<bool>(4294967295u > (10304u | global0.x), !any(var_2.c.a.b.xzy), !(arg_1 != 2147483647))));
                }
                case -35275: {
                    global1 = array<vec3<f32>, 20>();
                }
                case 30035: {
                    global2 = min(2147483647, max(countOneBits(arg_1), u_input.b.x)) >> (abs(arg_0.a.x) % 32u);
                    var var_1 = vec2<i32>(i32(-1) * -_wgslsmith_mod_i32(countOneBits(u_input.a.x), _wgslsmith_clamp_i32(u_input.c.x, -2147483648, 21023)), abs(_wgslsmith_add_i32(abs(_wgslsmith_sub_i32(arg_1, arg_1)), 28916)));
                    var_1 = u_input.c;
                    let var_2 = _wgslsmith_dot_vec4_i32(-(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647, -25602, u_input.b.x, 18135), select(vec4<i32>(u_input.c.x, 1, -1, -2147483648), vec4<i32>(arg_1, u_input.a.x, 2147483647, arg_1), vec4<bool>(arg_0.c.a.a, false, arg_0.b.a, arg_0.c.a.b.x))) | _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 1, -2147483648, u_input.b.x), vec4<i32>(u_input.c.x, -76598, 7562, u_input.a.x)), reverseBits(vec4<i32>(28819, -2147483648, -3351, arg_1)))), vec4<i32>(-45243, u_input.c.x, -arg_1, var_1.x));
                    global0 = firstLeadingBit(~arg_0.a);
                }
                default: {
                    let var_1 = global1[_wgslsmith_index_u32(1u, 20u)];
                    var var_2 = firstTrailingBit(46400);
                    return _wgslsmith_sub_vec3_u32(~select(select(min(arg_2.xyy, vec3<u32>(u_input.d.x, arg_2.x, u_input.e.x)), vec3<u32>(0u, global0.x, 1u), !true), vec3<u32>(4294967295u ^ u_input.e.x, global0.x, 1u), !(!true)), vec3<u32>(~countOneBits(firstLeadingBit(u_input.d.x)), 63129u, _wgslsmith_mult_u32(6560u << (arg_0.a.x % 32u), arg_2.x) >> (arg_2.x % 32u)));
                }
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
        }
    }
    let var_1 = global3[_wgslsmith_index_u32(69377u, 11u)];
    switch (-1) {
        case 31627: {
            global2 = arg_1;
        }
        case 52791: {
            global0 = reverseBits(vec2<u32>(firstTrailingBit(abs(u_input.d.x)) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 32144u, arg_2.x, arg_0.a.x), vec4<u32>(4294967295u, var_1.c, 4294967295u, u_input.d.x)), global0.x));
        }
        case 3865: {
            let var_2 = true;
            global1 = array<vec3<f32>, 20>();
            for (var var_3 = -43603; !(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 11011u), vec2<u32>(75604u, 16876u)) << ((global0.x >> (arg_0.b.c % 32u)) % 32u)) == (2722u ^ _wgslsmith_dot_vec4_u32(u_input.e & vec4<u32>(4294967295u, 35404u, global0.x, var_1.c), _wgslsmith_sub_vec4_u32(vec4<u32>(58880u, arg_0.c.a.c, var_1.c, var_1.c), arg_2)))); var_3 += 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                global0 = ~(~abs(arg_2.zy));
            }
            for (var var_3 = -1; var_3 <= -47214; var_3 += 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                let var_4 = Struct_1(true, !vec4<bool>(true, !var_1.b.x, false, var_2), _wgslsmith_sub_u32(var_1.c, _wgslsmith_add_u32(0u, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(29035u, 33819u)))));
                global3 = array<Struct_1, 11>();
                global3 = array<Struct_1, 11>();
                break;
            }
        }
        case -2147483648: {
            global3 = array<Struct_1, 11>();
        }
        default: {
            let var_2 = var_1.b.x;
        }
    }
    return arg_2.ywz;
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(func_6(Struct_3(vec2<u32>(5334u, 14307u), Struct_1(arg_1, arg_0.a.b, global0.x), arg_0), -2147483648, vec4<u32>(4294967295u, global0.x, 4294967295u, global0.x), 1208.0) & ~vec3<u32>(u_input.e.x, u_input.d.x, 0u), u_input.e.wxz & u_input.d), _wgslsmith_mult_u32(max(~28333u, ~global0.x), (0u | 4294967295u) & global0.x)), Struct_1(arg_1, !(!(!arg_0.a.b)), ((u_input.e.x >> (global0.x % 32u)) | abs(1u)) >> (~1u % 32u)), arg_0);
    for (var var_1 = 40521; all(vec3<bool>(arg_1, false, ~max(33450u, arg_0.a.c) != ~(15261u << (1u % 32u)))); global1 = array<vec3<f32>, 20>()) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        global3 = array<Struct_1, 11>();
        var var_2 = Struct_2(arg_0.a);
        var var_3 = -_wgslsmith_clamp_i32(-u_input.c.x, u_input.b.x, _wgslsmith_mult_i32(2147483647, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.b.x), ~(-2147483648))));
    }
    switch (u_input.b.x) {
        case 1: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1028.0 - 230.0)))) + -1000.0);
            }
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                continue;
            }
            if (!(1u >= 17979u)) {
                let var_1 = -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-10087, u_input.c.x, 1480, u_input.b.x), vec4<i32>(u_input.b.x, 1, 36024, u_input.b.x), vec4<i32>(-646, u_input.b.x, -3911, u_input.b.x)), -vec4<i32>(1, 1, -38217, -2147483648)), vec4<i32>(u_input.b.x, u_input.b.x, -816, u_input.b.x) & vec4<i32>(2147483647, 0, 0, u_input.a.x)), countOneBits(reverseBits(~vec4<i32>(u_input.a.x, u_input.b.x, u_input.c.x, u_input.b.x))));
                var var_2 = !(!var_0.b.b);
                global0 = ~vec2<u32>(900u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a.x, 0u), firstTrailingBit(4740u)));
                var var_3 = -52425 | _wgslsmith_mult_i32(abs(u_input.b.x) & -37000, ~(-2147483648 | u_input.a.x));
            }
            switch (-(~15277)) {
                case -293: {
                    global0 = u_input.d.zx;
                    global1 = array<vec3<f32>, 20>();
                    let var_1 = Struct_2(var_0.b);
                    let var_2 = Struct_1(!(!(arg_0.a.a & !var_1.a.a)), vec4<bool>(var_0.b.b.x, any(vec4<bool>(false, arg_1, !arg_0.a.a, !false)), arg_1, arg_0.a.b.x), 3354u);
                    global1 = array<vec3<f32>, 20>();
                }
                case 21121: {
                    global1 = array<vec3<f32>, 20>();
                    return arg_0;
                }
                default: {
                    global2 = u_input.c.x;
                    var var_1 = false;
                }
            }
            if (any(vec2<bool>(var_0.c.a.b.x, _wgslsmith_div_i32(2147483647, u_input.c.x) < _wgslsmith_div_i32(-13477, _wgslsmith_dot_vec2_i32(u_input.b, u_input.c))))) {
                return Struct_2(Struct_1(false, vec4<bool>(any(select(vec2<bool>(true, var_0.b.b.x), vec2<bool>(var_0.b.a, arg_0.a.b.x), vec2<bool>(false, false))), !any(vec4<bool>(arg_0.a.b.x, arg_0.a.a, false, arg_0.a.b.x)), any(!arg_0.a.b.zy), false), max(countOneBits(u_input.e.x), _wgslsmith_add_u32(global0.x, arg_0.a.c)) >> (~(~arg_0.a.c) % 32u)));
            }
        }
        case -2147483648: {
            if (!select(_wgslsmith_dot_vec4_i32(-vec4<i32>(1, u_input.b.x, u_input.c.x, 4852), vec4<i32>(u_input.b.x, u_input.b.x, 1, u_input.c.x) & vec4<i32>(u_input.a.x, 2147483647, -2147483648, 2147483647)) < ~(i32(-1) * -7739), true, var_0.b.b.x)) {
            }
            global2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-firstTrailingBit(min(u_input.a, vec3<i32>(25248, 43229, u_input.c.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c.x), -u_input.b.x, ~(-25425)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x)), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(-2542, 2147483647, u_input.c.x))))), 30692);
            if (select(any(select(arg_0.a.b, vec4<bool>(!true, !false, true && true, arg_1), !arg_0.a.b.x != (arg_0.a.a && false))), (arg_1 && !(!arg_0.a.b.x)) & true, select(select(countOneBits(arg_0.a.c), ~global0.x, true) >= abs(_wgslsmith_clamp_u32(var_0.b.c, var_0.a.x, arg_0.a.c)), (_wgslsmith_f_op_f32(round(-794.0)) <= _wgslsmith_f_op_f32(-1875.0)) | all(select(vec4<bool>(var_0.c.a.b.x, var_0.b.b.x, true, var_0.c.a.b.x), var_0.b.b, true)), all(arg_0.a.b.zw)))) {
                global1 = array<vec3<f32>, 20>();
            }
            if (!var_0.c.a.a) {
                var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(998.0 + -213.0) - 1183.0);
                global0 = u_input.e.zy;
                return var_0.c;
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_1 = vec2<i32>(2147483647, _wgslsmith_mod_i32(-u_input.b.x, -(~reverseBits(u_input.b.x))));
            }
        }
        case -60185: {
            let var_1 = false;
            let var_2 = Struct_1(true, !(!vec4<bool>(true, var_0.c.a.a & false, !false, !true)), 1u);
            if (false) {
                let var_3 = false;
                global1 = array<vec3<f32>, 20>();
            }
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                global3 = array<Struct_1, 11>();
                var var_3 = ~abs(~(~var_0.b.c));
                break;
            }
        }
        default: {
            var var_1 = Struct_1(all(!(!vec3<bool>(arg_0.a.a, arg_0.a.a, true))), !var_0.c.a.b, countOneBits(~(abs(var_0.c.a.c) ^ arg_0.a.c)));
            for (; _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(u_input.d >> (vec3<u32>(arg_0.a.c, var_1.c, 26820u) % vec3<u32>(32u))), ~(~vec3<u32>(var_1.c, 0u, var_0.b.c))), arg_0.a.c) < _wgslsmith_dot_vec2_u32(u_input.e.xy, var_0.a << (~abs(vec2<u32>(12552u, u_input.d.x)) % vec2<u32>(32u))); ) {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(~u_input.e.ww) << (~_wgslsmith_add_vec2_u32(var_0.a, u_input.d.xy) % vec2<u32>(32u)), u_input.e.zx), ~0u), 11u)];
                continue;
            }
            global2 = ~2147483647;
        }
    }
    switch (u_input.c.x) {
        case -1: {
            global3 = array<Struct_1, 11>();
            var var_1 = arg_0.a;
            global0 = ~vec2<u32>(var_1.c, ~(global0.x << (arg_0.a.c % 32u)));
        }
        case 1: {
        }
        case 0: {
            if (any(select(var_0.c.a.b.ww, select(!vec2<bool>(true, arg_0.a.b.x), select(!vec2<bool>(true, var_0.c.a.b.x), select(var_0.c.a.b.xw, vec2<bool>(true, false), arg_1), arg_1), ~global0.x == abs(arg_0.a.c)), !select(!vec2<bool>(false, arg_1), !vec2<bool>(true, var_0.c.a.b.x), !vec2<bool>(arg_1, false))))) {
                let var_1 = var_0.c.a;
                let var_2 = min(i32(-1) * -u_input.a.x, ~u_input.c.x);
                let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1386.0, -1291.0)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2121.0, 555.0)))))))), vec2<f32>(-448.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-762.0, 787.0), _wgslsmith_f_op_f32(trunc(1000.0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-756.0 * 124.0) * _wgslsmith_f_op_f32(-1257.0)))));
                global3 = array<Struct_1, 11>();
            }
        }
        case -2147483648: {
            var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-563.0, 503.0)), -966.0))));
        }
        default: {
            for (var var_1 = u_input.a.x; var_1 < 1; var_1 += 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                break;
            }
            global0 = u_input.e.wy ^ min(vec2<u32>(_wgslsmith_mult_u32(74766u, _wgslsmith_mod_u32(global0.x, var_0.c.a.c)), var_0.b.c), var_0.a);
            if ((2147483647 << (~u_input.e.x % 32u)) < 1) {
                var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(-(~u_input.a), vec3<i32>(48103, -26490, -1)), u_input.a.x >> (34232u % 32u)), abs(vec3<i32>(u_input.a.x, -53574, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -47310, 1), u_input.a)))));
            }
            let var_1 = var_0.b.b.x;
            var var_2 = _wgslsmith_div_i32(u_input.a.x, -2147483648 | -33766);
        }
    }
    if (any(arg_0.a.b.xy)) {
        switch (_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-(~vec4<i32>(-1, u_input.c.x, u_input.b.x, -1)), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(27367, u_input.b.x), max(u_input.c, vec2<i32>(-2147483648, u_input.b.x))), _wgslsmith_div_i32(-u_input.b.x, 9033), _wgslsmith_mod_i32(max(u_input.a.x, -1), -31790 & 2147483647), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.c.x, 24042, u_input.a.x)), vec4<i32>(u_input.a.x, 82252, u_input.b.x, u_input.c.x)))), vec4<i32>(u_input.c.x, ~u_input.a.x, -1 | -18081, firstTrailingBit(_wgslsmith_mult_i32(firstTrailingBit(u_input.c.x), u_input.b.x))))) {
            case 1: {
                let var_1 = Struct_2(Struct_1(firstLeadingBit(-2147483648) <= abs(u_input.b.x), var_0.c.a.b, 4294967295u));
                global1 = array<vec3<f32>, 20>();
            }
            case -23012: {
                global3 = array<Struct_1, 11>();
                var var_1 = ~abs(vec4<i32>(u_input.a.x, select(u_input.a.x, u_input.b.x, arg_1), u_input.c.x, -u_input.c.x)) ^ (vec4<i32>(u_input.c.x, -countOneBits(-2147483648), u_input.a.x, select(-2147483648, u_input.c.x | u_input.a.x, true)) ^ vec4<i32>(-37036, 607, _wgslsmith_div_i32(_wgslsmith_div_i32(177, u_input.b.x), abs(1)), 0));
                global0 = vec2<u32>(abs(4661u), ~(~countOneBits(1u)) ^ ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 0u), arg_0.a.c));
                let var_2 = select(var_0.c.a.a, arg_1 & !(!(-1022.0 == -1386.0)), any(!vec3<bool>(var_0.c.a.b.x, select(var_0.b.b.x, arg_0.a.b.x, arg_0.a.b.x), !true)));
                var var_3 = global0.x;
            }
            case -52739: {
                var var_1 = func_6(Struct_3(abs(firstLeadingBit(var_0.a)), Struct_1(all(!arg_0.a.b.xyx), arg_0.a.b, 59810u), Struct_2(var_0.c.a)), -countOneBits(u_input.c.x), ~u_input.e & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~global0.x, abs(global0.x), abs(19358u)), firstLeadingBit(u_input.e), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.c, var_0.c.a.c, 36825u, global0.x), vec4<u32>(67490u, 4294967295u, 1u, arg_0.a.c), vec4<u32>(var_0.a.x, 20998u, 1u, 0u))), 1000.0).x;
                global1 = array<vec3<f32>, 20>();
                let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2018.0))));
                let var_3 = var_0.c;
                var var_4 = vec3<bool>(4294967295u < var_3.a.c, true, true);
            }
            default: {
                global1 = array<vec3<f32>, 20>();
                let var_1 = global0.x;
                var var_2 = var_0.c;
            }
        }
    }
    return Struct_2(arg_0.a);
}

fn func_7(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = false;
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(842.0, _wgslsmith_f_op_f32(-1000.0 + _wgslsmith_f_op_f32(-1130.0)), -140.0) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -244.0)), _wgslsmith_f_op_f32(sign(-1396.0)), _wgslsmith_f_op_f32(f32(-1.0) * -258.0)))));
        switch ((abs(~abs(u_input.a.x)) << (1u % 32u)) << (~firstLeadingBit(23804u) % 32u)) {
            case -3634: {
                var var_2 = vec3<bool>(true, all(vec2<bool>(arg_0.a.a || arg_0.a.b.x, false)) & (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, u_input.e.x), u_input.d), vec3<u32>(u_input.e.x, 4294967295u, global0.x) ^ u_input.d) != arg_0.a.c), func_5(Struct_2(arg_0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1, -36484, u_input.b.x), vec3<i32>(35212, 0, -1)) > 2147483647).a.b.x);
                let var_3 = abs(_wgslsmith_mult_u32(global0.x, u_input.e.x));
            }
            default: {
                let var_2 = arg_0.a.a;
                let var_3 = arg_0;
                let var_4 = firstTrailingBit(arg_0.a.c);
                continue;
            }
        }
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            let var_2 = Struct_1(true, select(select(vec4<bool>(var_1.x == var_1.x, false, true, arg_0.a.a), !select(vec4<bool>(true, arg_0.a.a, false, arg_0.a.a), vec4<bool>(false, true, arg_0.a.a, arg_0.a.a), true), 988.0 < var_1.x), arg_0.a.b, func_5(Struct_2(arg_0.a), any(vec2<bool>(arg_0.a.a, arg_0.a.b.x))).a.a), u_input.e.x);
            let var_3 = ~select(~u_input.e.xx, vec2<u32>(max(29795u, ~4294967295u), u_input.e.x), var_2.b.yz);
            var_0 = false;
        }
        let var_2 = ~vec2<u32>(select((u_input.e.x >> (6511u % 32u)) & reverseBits(u_input.d.x), _wgslsmith_add_u32(1u, ~32236u), arg_0.a.a), _wgslsmith_mod_u32(arg_0.a.c, arg_0.a.c));
    }
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        break;
    }
    let var_1 = Struct_2(Struct_1(all(!select(vec4<bool>(false, arg_0.a.b.x, true, arg_0.a.b.x), vec4<bool>(arg_0.a.a, false, arg_0.a.b.x, arg_0.a.a), arg_0.a.a)), vec4<bool>(true, min(u_input.b.x, u_input.c.x) < -1, false, false), 1u));
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        if (!(!(!(!(!arg_0.a.a))))) {
            break;
        }
    }
    return !(!(!var_1.a.b));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    global2 = -2147483648;
    switch (1) {
        default: {
            let var_0 = arg_1;
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                let var_1 = _wgslsmith_mult_i32(u_input.c.x, u_input.a.x);
                break;
            }
            for (var var_1 = 26192; arg_1.b.x || !false; global3 = array<Struct_1, 11>()) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            }
            global0 = firstTrailingBit(~vec2<u32>(var_0.c, 4294967295u));
        }
    }
    let var_0 = Struct_1(!true | (-1 != _wgslsmith_mod_i32(countOneBits(2147483647), ~(-72375))), func_7(func_5(Struct_2(arg_1), false)), 43749u);
    var var_1 = _wgslsmith_f_op_f32(-232.0);
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        switch (~1 ^ (-18064 & select(u_input.a.x, 30286, false))) {
            case 56292: {
                break;
            }
            case -25489: {
                let var_2 = firstLeadingBit(max(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c, var_0.c), u_input.d.yz)), u_input.d.zy) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(~1u, 0u), ~_wgslsmith_div_vec2_u32(u_input.e.xz, vec2<u32>(11650u, var_0.c))));
                let var_3 = func_5(func_5(Struct_2(Struct_1(false, var_0.b, ~global0.x)), false), arg_1.b.x).a.b;
                break;
            }
            default: {
            }
        }
        continue;
    }
    return select(~firstLeadingBit(_wgslsmith_mult_u32(arg_1.c, _wgslsmith_mult_u32(global0.x, 4294967295u))), 19695u, !(abs(countOneBits(arg_1.c)) < u_input.d.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = arg_2.x;
    let var_1 = vec3<bool>(arg_1.x, all(!vec2<bool>(false, arg_0.x)) && false, all(!arg_0));
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        global1 = array<vec3<f32>, 20>();
        global3 = array<Struct_1, 11>();
        let var_2 = arg_2.x;
    }
    global2 = -45040;
    if (!arg_0.x) {
        loop {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            global0 = vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.e.zz ^ ~vec2<u32>(u_input.e.x, 745u), u_input.d.zx), ~u_input.e.x);
            var var_2 = Struct_3(vec2<u32>(~max(~u_input.e.x, _wgslsmith_clamp_u32(global0.x, 33443u, 4294967295u)), 0u), Struct_1(true, select(arg_0, vec4<bool>(var_1.x, !false, any(arg_0), select(arg_1.x, true, false)), vec4<bool>(!false, any(var_1), !true, true)), firstLeadingBit(~func_4(arg_2.x, global3[_wgslsmith_index_u32(1u, 11u)]))), func_5(Struct_2(Struct_1(!arg_0.x, func_7(Struct_2(Struct_1(arg_1.x, arg_0, 1u))), u_input.e.x)), false));
            var var_3 = Struct_3(vec2<u32>(~(var_2.b.c | 33422u), reverseBits(24186u)) << (~(~(~var_2.a)) % vec2<u32>(32u)), global3[_wgslsmith_index_u32(0u, 11u)], func_5(Struct_2(func_5(func_5(Struct_2(Struct_1(true, arg_0, global0.x)), arg_0.x), !arg_1.x).a), !(!(!arg_1.x))));
        }
        switch (~u_input.a.x) {
            case -2147483648: {
                var var_2 = arg_2.x;
                let var_3 = ~func_6(Struct_3(~vec2<u32>(global0.x, global0.x), global3[_wgslsmith_index_u32(69209u, 11u)], func_5(Struct_2(Struct_1(arg_1.x, vec4<bool>(true, false, false, arg_1.x), 57686u)), arg_0.x)), -firstLeadingBit(u_input.a.x), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e.yz, vec2<u32>(4294967295u, 2275u)), reverseBits(74634u), ~1u, 5484u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1351.0)) * _wgslsmith_f_op_f32(trunc(3122.0)))).x << (global0.x % 32u);
            }
            case -45439: {
            }
            case -50901: {
                var var_2 = arg_2.x;
                var_0 = arg_2.x;
            }
            case 2147483647: {
                let var_2 = Struct_3(u_input.d.yy >> (u_input.d.xy % vec2<u32>(32u)), func_5(func_5(func_5(func_5(Struct_2(Struct_1(false, arg_0, global0.x)), false), true), func_7(func_5(Struct_2(global3[_wgslsmith_index_u32(u_input.e.x, 11u)]), false)).x), _wgslsmith_div_u32(_wgslsmith_add_u32(44750u, 1u), _wgslsmith_mod_u32(u_input.d.x, 0u)) <= _wgslsmith_div_u32(~10114u, global0.x)).a, func_5(func_5(func_5(func_5(Struct_2(Struct_1(false, arg_0, 1u)), true), !false), var_1.x), true));
                var var_3 = var_2;
            }
            default: {
                let var_2 = _wgslsmith_add_u32(select(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.x, 0u), _wgslsmith_sub_u32(global0.x << (4294967295u % 32u), u_input.e.x)), ~_wgslsmith_div_u32(global0.x, 4294967295u), true), _wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.x, global0.x, 0u, 0u), vec4<u32>(1u, global0.x, 4294967295u, 10371u)), u_input.e) | _wgslsmith_div_u32(~global0.x, 1u));
                var_0 = 245.0;
            }
        }
        let var_2 = _wgslsmith_clamp_vec2_u32(u_input.e.wy, firstLeadingBit(u_input.d.zz) | (u_input.d.xy >> (max(u_input.d.yy, u_input.d.xx) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(select(u_input.d.xy, vec2<u32>(0u, 0u), arg_0.yw), ~vec2<u32>(43546u, u_input.d.x))) & func_6(Struct_3(~_wgslsmith_sub_vec2_u32(u_input.d.xx, vec2<u32>(global0.x, 4294967295u)), func_5(Struct_2(global3[_wgslsmith_index_u32(0u, 11u)]), !false).a, Struct_2(func_5(Struct_2(global3[_wgslsmith_index_u32(51167u, 11u)]), true).a)), ~u_input.c.x, ~reverseBits(u_input.e) << (countOneBits(u_input.e) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(arg_2.x))).yz;
        loop {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            global2 = ~(~(-5965));
            return _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-(~(75613 & u_input.a.x)), u_input.c.x, _wgslsmith_dot_vec3_i32(countOneBits(select(vec3<i32>(-48645, -1, u_input.c.x), vec3<i32>(1, 0, -2147483648), true)), vec3<i32>(u_input.c.x, 1 >> (4294967295u % 32u), abs(2147483647)))));
        }
        let var_3 = abs(~_wgslsmith_mult_u32(func_6(Struct_3(var_2, Struct_1(arg_0.x, vec4<bool>(arg_1.x, arg_0.x, arg_1.x, var_1.x), u_input.d.x), Struct_2(Struct_1(false, vec4<bool>(true, arg_0.x, arg_0.x, false), u_input.d.x))), -6399, vec4<u32>(global0.x, 4294967295u, var_2.x, u_input.d.x), -385.0).x, ~56028u) << (max(countOneBits(54986u), ~61075u) % 32u));
    }
    return u_input.a;
}

fn func_2() -> f32 {
    global2 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -1), -vec3<i32>(0, u_input.c.x, 647)), vec3<i32>(u_input.a.x, 56057, u_input.b.x) & u_input.a), firstLeadingBit(func_3(vec4<bool>(true, true, false, false), vec2<bool>(false, true), _wgslsmith_div_vec4_f32(vec4<f32>(-785.0, -430.0, 518.0, 390.0), vec4<f32>(173.0, 1000.0, -1000.0, -107.0)))));
    for (var var_0: i32; var_0 <= -18786; var_0 += 1) {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        break;
    }
    let var_0 = global3[_wgslsmith_index_u32(global0.x, 11u)];
    let var_1 = Struct_2(func_5(func_5(func_5(Struct_2(Struct_1(var_0.a, var_0.b, 1u)), select(var_0.a, var_0.a, true)), var_0.a), var_0.a).a);
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
    }
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-906.0)) - _wgslsmith_f_op_f32(trunc(158.0))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1107.0, 724.0) + _wgslsmith_f_op_f32(step(-849.0, 1098.0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1815.0, 2156.0) + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), 421.0))))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    switch (arg_0) {
        case -1: {
            let var_0 = true;
            var var_1 = _wgslsmith_f_op_f32(func_2());
        }
        case -37044: {
            loop {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                let var_0 = Struct_3(vec2<u32>(1u, u_input.d.x), global3[_wgslsmith_index_u32(u_input.d.x, 11u)], Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x & global0.x, func_4(-1000.0, Struct_1(false, vec4<bool>(true, true, true, false), global0.x))), 11u)]));
                continue;
            }
        }
        case -2147483648: {
            var var_0 = ~u_input.a.xz;
            var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(-select(func_3(vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec4<f32>(-110.0, 1061.0, -1205.0, 1443.0)), vec3<i32>(u_input.b.x, u_input.b.x, -20306), !true), _wgslsmith_add_vec3_i32(firstLeadingBit(u_input.a), u_input.a & u_input.a) ^ u_input.a), 29532);
        }
        default: {
            global2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-36647, 32489, -2147483648, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1, arg_0, arg_0, 30014), reverseBits(vec4<i32>(-26478, u_input.a.x, -28665, 2147483647))), ~countOneBits(48452), ~u_input.c.x)), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(arg_0, arg_0, 2147483647, 22155)), vec4<i32>(func_3(func_5(Struct_2(global3[_wgslsmith_index_u32(u_input.e.x, 11u)]), true).a.b, !vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(274.0, 772.0, 2683.0, 773.0))).x, 2147483647, (arg_0 >> (26646u % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e.x, global0.x), vec3<u32>(9901u, 4294967295u, u_input.d.x)) % 32u), arg_0 & (arg_0 << (u_input.e.x % 32u)))));
            let var_0 = func_5(func_5(func_5(func_5(Struct_2(Struct_1(true, vec4<bool>(true, false, true, true), 1u)), !false), -322.0 <= _wgslsmith_f_op_f32(max(-610.0, -1000.0))), true), 1000.0 > 181.0);
            if (true) {
                var var_1 = select(arg_0, 2147483647, !func_5(func_5(func_5(Struct_2(global3[_wgslsmith_index_u32(global0.x, 11u)]), var_0.a.a), 1u >= var_0.a.c), !true).a.a);
                global1 = array<vec3<f32>, 20>();
            }
        }
    }
    var var_0 = !func_5(func_5(Struct_2(Struct_1(true, vec4<bool>(true, false, false, false), 21414u)), true), 24305 <= u_input.b.x).a.a;
    global3 = array<Struct_1, 11>();
    var_0 = reverseBits(1u) > global0.x;
    switch (_wgslsmith_sub_i32(~(~_wgslsmith_div_i32(_wgslsmith_div_i32(-47773, arg_0), firstLeadingBit(19530))), arg_0)) {
        case 2147483647: {
            let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1504.0) * -1359.0);
            let var_2 = u_input.e;
            return StorageBuffer(vec4<f32>(1537.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * 737.0) * _wgslsmith_div_f32(-113.0, 376.0)))), 1894.0, _wgslsmith_f_op_f32(max(1759.0, 517.0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(var_1, var_1), 745.0, _wgslsmith_f_op_f32(-1122.0), _wgslsmith_f_op_f32(ceil(-677.0))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1055.0, 1000.0, -643.0, var_1)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, 1385.0, -1020.0, var_1), vec4<f32>(1532.0, -757.0, -142.0, var_1)))), (-17716 == arg_0) && func_7(Struct_2(Struct_1(false, vec4<bool>(false, false, true, false), 1u))).x)))), _wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(12224, u_input.a.x, arg_0, -17343), firstLeadingBit(vec4<i32>(-13608, arg_0, u_input.a.x, arg_0))), vec4<i32>(arg_0, arg_0, ~(~0), arg_0)));
        }
        case 37377: {
            var var_1 = Struct_3(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e.x, firstTrailingBit(52370u)), global0.x), _wgslsmith_mult_u32(46931u, 1u)), Struct_1(true, select(select(!vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), !vec4<bool>(true, true, false, true)), func_5(func_5(Struct_2(global3[_wgslsmith_index_u32(4294967295u, 11u)]), true), true == true).a.b, any(!vec3<bool>(true, false, false))), 1u << (25063u % 32u)), Struct_2(func_5(Struct_2(func_5(Struct_2(global3[_wgslsmith_index_u32(global0.x, 11u)]), true).a), true).a));
            global2 = firstLeadingBit(abs(u_input.a.x));
            let var_2 = ~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-(vec4<i32>(52214, arg_0, u_input.c.x, -17830) & vec4<i32>(2147483647, u_input.c.x, 2147483647, -2147483648)), ~(~vec4<i32>(u_input.c.x, 2147483647, 6031, -1))), vec4<i32>(_wgslsmith_add_i32(52417, u_input.a.x), arg_0 | -23406, func_3(var_1.b.b, vec2<bool>(var_1.b.b.x, var_1.c.a.b.x), vec4<f32>(867.0, 909.0, 1857.0, -576.0)).x, -1) >> (abs(u_input.e) % vec4<u32>(32u)));
            var_0 = var_1.b.a == false;
            loop {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
                let var_3 = 1u;
            }
        }
        case 40701: {
            global3 = array<Struct_1, 11>();
            var var_1 = vec3<u32>((global0.x & ~func_6(Struct_3(vec2<u32>(0u, 4294967295u), global3[_wgslsmith_index_u32(47644u, 11u)], Struct_2(Struct_1(false, vec4<bool>(true, true, false, true), u_input.d.x))), 33470, u_input.e, -199.0).x) & ~_wgslsmith_mult_u32(4294967295u >> (4294967295u % 32u), ~0u), global0.x, firstLeadingBit(u_input.e.x) ^ (firstLeadingBit(15718u) << (global0.x % 32u)));
            var var_2 = Struct_3(vec2<u32>(4294967295u, 53396u), func_5(func_5(func_5(Struct_2(global3[_wgslsmith_index_u32(global0.x, 11u)]), !true), !all(vec3<bool>(true, true, false))), !(true | false)).a, Struct_2(func_5(Struct_2(func_5(Struct_2(Struct_1(false, vec4<bool>(true, true, true, true), 34144u)), true).a), (1u <= global0.x) & (1u <= 0u)).a));
        }
        case 1: {
        }
        default: {
            global0 = vec2<u32>(u_input.d.x, u_input.d.x);
            var_0 = false;
            var var_1 = Struct_2(Struct_1(!(all(vec3<bool>(true, true, false)) == (-1260.0 != 627.0)), !func_5(func_5(Struct_2(global3[_wgslsmith_index_u32(2265u, 11u)]), false), true || false).a.b, ~global0.x));
            if (var_1.a.a) {
                return StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1224.0, 219.0, -1000.0, -1173.0) + vec4<f32>(-616.0, -2006.0, 642.0, -1860.0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1707.0, 1116.0, -372.0, -593.0))))), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-254.0 - 333.0))), -727.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-946.0) + _wgslsmith_f_op_f32(819.0 * -1636.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1784.0 + 204.0))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1070.0, -724.0, 472.0, -514.0) * vec4<f32>(2325.0, -284.0, -1000.0, 1722.0)))))), (-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 7428, -1912, 1), vec4<i32>(1, -13946, arg_0, -3748)) >> (u_input.e % vec4<u32>(32u))) >> (u_input.e % vec4<u32>(32u)));
            }
            global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32((vec2<u32>(global0.x, var_1.a.c) ^ u_input.e.zy) & firstTrailingBit(u_input.d.zx), vec2<u32>(var_1.a.c, ~global0.x)) >> (vec2<u32>(~(~u_input.d.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.e, u_input.e), firstLeadingBit(vec4<u32>(18070u, 64442u, 0u, 63704u)))) % vec2<u32>(32u)), u_input.d.yy);
        }
    }
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(341.0, -215.0, -1339.0, -490.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(1759.0, -1410.0, 291.0, -634.0) - vec4<f32>(1113.0, 606.0, -1357.0, -2638.0)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1165.0, 548.0, -1296.0, 305.0) + vec4<f32>(-1000.0, -1000.0, 1000.0, 234.0)))), vec4<bool>(!true, 1u < 35454u, any(vec2<bool>(false, true)), !false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(-799.0)), _wgslsmith_f_op_f32(f32(-1.0) * -519.0), _wgslsmith_div_f32(-1000.0, 1884.0), _wgslsmith_f_op_f32(f32(-1.0) * -725.0)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(240.0, -366.0, -1307.0, -980.0))))))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, arg_0, u_input.c.x, arg_0), vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.a.x), vec4<i32>(9580, -51601, -2147483648, arg_0)), firstLeadingBit(~vec4<i32>(arg_0, arg_0, -54951, arg_0))), _wgslsmith_div_vec4_i32(vec4<i32>(-9305, i32(-1) * -48294, ~u_input.a.x, -u_input.b.x), vec4<i32>(~u_input.c.x, 2147483647, u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, 0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.c.x);
}

