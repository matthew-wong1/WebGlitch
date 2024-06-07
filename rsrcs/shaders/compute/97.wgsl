// {"0:0":[65,233,224,83,169,210,42,93,121,143,26,64,10,54,10,74,241,124,106,132,112,236,73,9,253,30,245,156,229,186,142,13,157,8,105,57,217,239,253,72,14,64,86,242,114,6,225,36]}
// Seed: 14590014483456074766

struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1624.0;

var<private> global1: array<Struct_2, 29>;

var<private> LOOP_COUNTERS: array<u32, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn func_6(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000.0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -234.0))))));
    let var_0 = global1[_wgslsmith_index_u32(arg_2.x, 29u)];
    if (!any(!select(select(vec3<bool>(var_0.a.e, false, true), vec3<bool>(var_0.a.e, false, true), vec3<bool>(arg_1, var_0.a.e, arg_1)), vec3<bool>(arg_1, false, var_0.a.e), true))) {
        if (u_input.e.x >= min(~(~arg_2.x), arg_2.x)) {
            let var_1 = select(!(!vec2<bool>(arg_1, all(vec3<bool>(arg_1, var_0.a.e, false)))), select(!(!vec2<bool>(true, false)), !select(vec2<bool>(var_0.a.e, false), select(vec2<bool>(var_0.a.e, false), vec2<bool>(false, arg_1), vec2<bool>(arg_1, var_0.a.e)), true), var_0.a.e), any(!(!vec4<bool>(var_0.a.e, arg_1, arg_1, true))));
            let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(abs(var_0.a.c.x)), all(vec2<bool>(true, arg_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-748.0))))));
            let var_3 = var_0.a.c.xz;
            global0 = _wgslsmith_f_op_f32(sign(var_0.a.d));
            global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-295.0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_2.x)), 603.0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_f32(284.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1275.0) * var_3.x))))));
        }
        let var_1 = 849.0;
        var var_2 = !all(vec4<bool>(true, true, select(arg_1, all(vec2<bool>(true, arg_1)), false), (u_input.a.x << (4294967295u % 32u)) == arg_0.x));
    }
    if (var_0.a.e) {
        global0 = _wgslsmith_f_op_f32(f32(-1.0) * -573.0);
        let var_1 = abs(_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(u_input.c, var_0.a.a.x, -2147483648, arg_0.x)), min(abs(vec4<i32>(20435, 24370, 13059, 24296)), _wgslsmith_mult_vec4_i32(arg_0, arg_0))) & -vec4<i32>(firstTrailingBit(0), -1, countOneBits(arg_0.x), ~1));
    }
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            break;
        }
        global1 = array<Struct_2, 29>();
        var var_1 = 25487;
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        }
    }
    return ~((~67634u >> (~u_input.e.x % 32u)) >> (firstLeadingBit(arg_2.x << (select(1u, u_input.b, false) % 32u)) % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(u_input.b, (firstTrailingBit(u_input.e.x) & (86907u ^ u_input.d)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.e.x, 4294967295u, 4294967295u), ~vec4<u32>(u_input.b, 0u, 4294967295u, 50257u)) % 32u)));
    global1 = array<Struct_2, 29>();
    var var_1 = vec2<bool>(arg_0.e, _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1) * -34014, select(arg_2.x, arg_0.a.x, arg_3.e), u_input.c, arg_0.a.x), -arg_2) >= firstLeadingBit(63218));
    global1 = array<Struct_2, 29>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.c.x, arg_0.b)))))), -847.0, _wgslsmith_f_op_f32(arg_0.c.x + 272.0));
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(46340u, min(u_input.d & func_6(reverseBits(vec4<i32>(1, arg_3.a.x, arg_1.x, 1)), all(vec3<bool>(var_1.x, false, arg_3.e)), vec4<u32>(38714u, u_input.e.x, u_input.b, u_input.d)), u_input.b)), 29u)];
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = Struct_2(func_5(Struct_1(vec4<i32>(_wgslsmith_mod_i32(arg_0.a.x, u_input.a.x), abs(0), arg_0.a.x, ~u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(806.0 + var_0.d) - _wgslsmith_f_op_f32(select(arg_0.b, 952.0, var_0.e))), var_0.c, arg_1.b, false), var_0.a.wwx, vec4<i32>(-7502, select(-36182, firstLeadingBit(-20360), false), 18206, _wgslsmith_sub_i32(var_0.a.x, arg_1.a.a.x)), Struct_1(~(~arg_1.a.a), _wgslsmith_f_op_f32(exp2(111.0)), _wgslsmith_f_op_vec3_f32(arg_1.a.c - vec3<f32>(var_0.d, arg_0.d, arg_0.c.x)), 330.0, _wgslsmith_mult_u32(arg_2.x, 8293u) != u_input.e.x)).a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-431.0)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(711.0, var_0.b, 591.0, var_1.a.d))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.c.x, -576.0, -1549.0, 1273.0))))))));
    var var_3 = -821.0;
    if (var_1.a.e) {
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            let var_4 = var_0;
            let var_5 = !arg_1.a.e;
            global1 = array<Struct_2, 29>();
            break;
        }
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        }
        var_3 = var_1.a.b;
    }
    return vec3<bool>(!true, !(any(select(vec4<bool>(false, true, true, arg_0.e), vec4<bool>(arg_1.a.e, false, var_1.a.e, true), false)) == (_wgslsmith_f_op_f32(-var_0.c.x) != _wgslsmith_f_op_f32(-var_1.a.b))), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-(2147483647 | -1) << (~firstLeadingBit(16979u) % 32u), u_input.a.x, abs(arg_1.x) >> (countOneBits(~4294967295u) % 32u)), arg_1);
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(531.0 + _wgslsmith_f_op_f32(f32(-1.0) * -208.0)) * _wgslsmith_f_op_f32(abs(-1124.0))) + -523.0);
        let var_1 = select(!select(func_7(Struct_1(vec4<i32>(-18584, -8277, 1, -35484), 869.0, vec3<f32>(453.0, -1613.0, 1208.0), 2108.0, false), func_5(Struct_1(vec4<i32>(arg_1.x, 27821, u_input.a.x, arg_0.x), -759.0, vec3<f32>(978.0, 272.0, -1000.0), 938.0, true), arg_1, vec4<i32>(arg_1.x, u_input.a.x, var_0.x, -1), Struct_1(vec4<i32>(arg_0.x, var_0.x, -16813, var_0.x), 772.0, vec3<f32>(672.0, 114.0, 566.0), 118.0, false)), ~vec4<u32>(0u, 4294967295u, 0u, u_input.d)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), false), !(!(!vec3<bool>(false, false, true))), func_7(Struct_1(func_5(Struct_1(vec4<i32>(u_input.c, arg_1.x, -39656, u_input.a.x), -1000.0, vec3<f32>(707.0, 1183.0, 388.0), 1000.0, false), var_0, vec4<i32>(-1701, 21558, var_0.x, arg_0.x), Struct_1(vec4<i32>(1, -18640, var_0.x, arg_1.x), 941.0, vec3<f32>(-200.0, -1732.0, 806.0), -1000.0, true)).a.a ^ vec4<i32>(-26955, 2147483647, arg_0.x, u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1075.0 + 126.0), _wgslsmith_f_op_f32(-1421.0 * 346.0))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -1368.0), 2695.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-254.0, -355.0)), 1000.0, false | true)), any(!vec4<bool>(true, true, false, false))), Struct_2(func_5(func_5(Struct_1(vec4<i32>(arg_1.x, 0, var_0.x, u_input.a.x), -985.0, vec3<f32>(-289.0, 1671.0, -326.0), -1092.0, true), arg_1, vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_0.x), Struct_1(vec4<i32>(var_0.x, -2147483648, 1, 33263), 140.0, vec3<f32>(1400.0, 1000.0, -386.0), -1370.0, true)).a, select(vec3<i32>(u_input.c, var_0.x, arg_1.x), vec3<i32>(var_0.x, 0, arg_0.x), vec3<bool>(true, false, false)), vec4<i32>(var_0.x, var_0.x, 50869, 0), func_5(Struct_1(vec4<i32>(arg_1.x, var_0.x, var_0.x, 1), -305.0, vec3<f32>(-1542.0, -484.0, 1732.0), -393.0, false), vec3<i32>(1, 2147483647, u_input.a.x), vec4<i32>(var_0.x, 1, 23706, -2147483648), Struct_1(vec4<i32>(var_0.x, u_input.a.x, -1, arg_0.x), 1168.0, vec3<f32>(-1365.0, -1781.0, -731.0), -690.0, false)).a).a, 1079.0), ~(vec4<u32>(u_input.e.x, 0u, u_input.e.x, 26087u) ^ ~vec4<u32>(u_input.d, 31492u, 21468u, 20937u))));
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        if (func_5(Struct_1(select(vec4<i32>(-23298, _wgslsmith_dot_vec2_i32(vec2<i32>(-1, var_0.x), vec2<i32>(-1, 0)), -2147483648, _wgslsmith_sub_i32(var_0.x, u_input.a.x)), -vec4<i32>(-2229, arg_1.x, var_0.x, var_0.x), vec4<bool>(true == true, !false, false || false, u_input.e.x > u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(546.0, -1000.0)) * 1000.0) - _wgslsmith_f_op_f32(f32(-1.0) * -673.0)), vec3<f32>(232.0, _wgslsmith_div_f32(613.0, _wgslsmith_f_op_f32(trunc(435.0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1040.0))))), _wgslsmith_div_f32(2311.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1732.0)))), !(_wgslsmith_add_i32(41738, 2147483647) < select(-20887, arg_0.x, true))), vec3<i32>(i32(-1) * -_wgslsmith_div_i32(-13640, arg_1.x), _wgslsmith_sub_i32(arg_0.x, arg_0.x), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(25110, 12100, arg_1.x, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, -56424, -2147483648), false), reverseBits(vec4<i32>(0, -2147483648, 31740, var_0.x)))), select(vec4<i32>(-arg_0.x, max(-3893, arg_1.x), 18723, -29089), vec4<i32>(_wgslsmith_sub_i32(1, 70558), 0, arg_1.x, arg_1.x), true) << (~(~(~vec4<u32>(u_input.e.x, 0u, 17516u, u_input.d))) % vec4<u32>(32u)), func_5(Struct_1(vec4<i32>(-1) * -vec4<i32>(1, arg_0.x, var_0.x, 23578), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1693.0)), _wgslsmith_f_op_vec3_f32(func_5(Struct_1(vec4<i32>(-20268, arg_1.x, arg_1.x, -22069), -1000.0, vec3<f32>(1023.0, 1637.0, -340.0), 134.0, true), vec3<i32>(-3164, arg_0.x, 8219), vec4<i32>(arg_1.x, u_input.c, var_0.x, var_0.x), Struct_1(vec4<i32>(arg_1.x, -35548, u_input.c, -27235), -1160.0, vec3<f32>(-1000.0, -1904.0, 534.0), -138.0, false)).a.c * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1185.0, 816.0, -739.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(232.0))), !(true & false)), (vec3<i32>(0, arg_1.x, 12659) & vec3<i32>(-2147483648, u_input.c, -12916)) & vec3<i32>(select(-12066, 964, false), i32(-1) * -2147483648, ~19765), _wgslsmith_mod_vec4_i32(abs(-vec4<i32>(-2147483648, 0, arg_0.x, 0)), vec4<i32>(_wgslsmith_add_i32(-4268, -5385), 5948, -1448, arg_0.x)), Struct_1((vec4<i32>(var_0.x, u_input.c, 1, -47585) ^ vec4<i32>(arg_1.x, -15365, -2432, 2147483647)) | firstTrailingBit(vec4<i32>(-5977, var_0.x, 5465, 11389)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1137.0, 1129.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1872.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-747.0, -389.0, 1000.0)), 659.0, false)).a).a.e) {
        }
        var var_1 = var_0.x;
        break;
    }
    let var_1 = u_input.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000.0)));
}

fn func_8(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32((reverseBits(_wgslsmith_div_vec2_u32(u_input.e.zx, vec2<u32>(76930u, 4294967295u))) >> (vec2<u32>(1u, ~u_input.d) % vec2<u32>(32u))) >> (vec2<u32>(~(u_input.d >> (34689u % 32u)), ~_wgslsmith_mult_u32(42408u, 19319u)) % vec2<u32>(32u)), vec2<u32>(~(abs(u_input.b) << (u_input.b % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), 1u, 26522u) >> (_wgslsmith_clamp_u32(u_input.e.x, 4294967295u & u_input.d, abs(51980u)) % 32u)));
    switch (12969) {
        case -612: {
            global1 = array<Struct_2, 29>();
        }
        case -32216: {
            var var_1 = global1[_wgslsmith_index_u32(29098u, 29u)];
            global1 = array<Struct_2, 29>();
            let var_2 = var_1.a;
            var var_3 = var_2.c.x;
            let var_4 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(~arg_0.a.a.x, -1) | -vec2<i32>(22470, -11574), -reverseBits(abs(var_1.a.a.yw)));
        }
        case -9665: {
            var var_1 = func_5(arg_0.a, arg_0.a.a.xxy, _wgslsmith_sub_vec4_i32(-(~arg_0.a.a), vec4<i32>(arg_0.a.a.x, (i32(-1) * -1) | -arg_0.a.a.x, i32(-1) * -1, ~(-63758))), Struct_1(-_wgslsmith_mod_vec4_i32(arg_0.a.a, arg_0.a.a), arg_2, vec3<f32>(-285.0, 482.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(min(493.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(arg_0.a.c.x - arg_2)))), _wgslsmith_mod_u32(abs(40715u), var_0) >= u_input.d));
            let var_2 = global1[_wgslsmith_index_u32(~0u, 29u)];
        }
        default: {
            let var_1 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(-arg_2));
            switch (1) {
                case -8104: {
                    global1 = array<Struct_2, 29>();
                    let var_2 = _wgslsmith_f_op_f32(f32(-1.0) * -1248.0);
                    let var_3 = var_1.a.c.zy;
                }
                default: {
                    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(max(var_1.a.a.x, -28467), 1, arg_0.a.a.x, 1), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647, arg_0.a.a.x, 86818, 2147483647) << (vec4<u32>(var_0, var_0, 14817u, u_input.e.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, var_1.a.a.x, -1, -2147483648))), arg_0.a.a), var_1.a.a);
                    var var_3 = vec3<i32>((2147483647 << ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b, var_0), vec4<u32>(1u, 4294967295u, 8600u, 53470u)) & 1u) % 32u)) & abs(countOneBits(abs(var_2.x))), -1, ~1);
                    var var_4 = func_5(func_5(var_1.a, max(max(vec3<i32>(var_3.x, var_1.a.a.x, var_2.x), vec3<i32>(25267, 0, arg_0.a.a.x)), -(var_2.wwx << (vec3<u32>(u_input.d, u_input.b, 53746u) % vec3<u32>(32u)))), vec4<i32>(~(-2147483648), ~firstTrailingBit(var_3.x), ~8951, var_2.x), arg_0.a).a, vec3<i32>(max(arg_0.a.a.x, 34973) ^ select(var_3.x, ~0, all(vec2<bool>(true, false))), 0, _wgslsmith_div_i32(-1 & _wgslsmith_mod_i32(var_1.a.a.x, u_input.a.x), arg_0.a.a.x)), abs(var_2), arg_0.a).a;
                    var var_5 = arg_0.a;
                    return var_5.e;
                }
            }
            for (var var_2: i32; var_2 >= -35432; var_2 += 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(abs(_wgslsmith_add_i32(u_input.a.x, 1)), ~(-32430), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.a.a, arg_0.a.a), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.a.x, arg_0.a.a.x, 45202, arg_0.a.a.x), arg_0.a.a))) ^ vec3<i32>(~(i32(-1) * -26792), ~0, -14248), var_1.a.a.zwy);
            }
        }
    }
    for (var var_1 = 0; false; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_2 = !arg_1.x | func_7(Struct_1(-max(arg_0.a.a, vec4<i32>(arg_0.a.a.x, -79366, u_input.c, 7031)), arg_2, arg_0.a.c, arg_0.b, all(!vec2<bool>(false, false))), Struct_2(arg_0.a, arg_0.b), ~vec4<u32>(1u, 52901u, 4294967295u, 56679u) >> (firstTrailingBit(firstLeadingBit(vec4<u32>(10496u, 10514u, 34550u, var_0))) % vec4<u32>(32u))).x;
        var var_3 = var_2;
        if (!(!(!false))) {
        }
        var var_4 = arg_0.a;
        if (any(select(vec4<bool>(any(select(vec3<bool>(var_4.e, true, true), vec3<bool>(false, true, true), true)), var_4.e, true, !(22813u <= 31921u)), vec4<bool>(!true, any(vec2<bool>(arg_1.x, arg_1.x)), _wgslsmith_add_u32(26414u, 106087u) != ~var_0, arg_0.a.a.x != (i32(-1) * -2147483648)), vec4<bool>(func_5(func_5(Struct_1(vec4<i32>(var_4.a.x, var_4.a.x, u_input.a.x, 26929), -1000.0, var_4.c, -2315.0, var_2), vec3<i32>(u_input.a.x, -71932, var_4.a.x), vec4<i32>(u_input.a.x, var_4.a.x, -2147483648, 1), Struct_1(arg_0.a.a, -663.0, arg_0.a.c, var_4.b, true)).a, ~vec3<i32>(var_4.a.x, 47422, 2147483647), arg_0.a.a, func_5(arg_0.a, arg_0.a.a.xyw, var_4.a, arg_0.a).a).a.e, func_7(Struct_1(vec4<i32>(-25901, u_input.c, -2147483648, arg_0.a.a.x), arg_0.a.d, vec3<f32>(2647.0, arg_2, arg_0.b), 301.0, var_2), Struct_2(Struct_1(vec4<i32>(var_4.a.x, var_4.a.x, u_input.c, u_input.a.x), arg_2, vec3<f32>(982.0, arg_0.a.b, -169.0), 522.0, true), 145.0), vec4<u32>(1u, 6477u, var_0, 19691u)).x, func_5(arg_0.a, vec3<i32>(0, -1, 22440), var_4.a >> (vec4<u32>(4294967295u, 0u, 0u, 0u) % vec4<u32>(32u)), Struct_1(vec4<i32>(-1, arg_0.a.a.x, -67912, 60643), arg_0.a.d, vec3<f32>(var_4.c.x, arg_2, 154.0), -1154.0, false)).a.e, true)))) {
            global1 = array<Struct_2, 29>();
        }
    }
    let var_1 = func_5(func_5(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1582.0), _wgslsmith_f_op_f32(-arg_0.a.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.c - vec3<f32>(2041.0, -1301.0, 569.0))), 176.0, !(false && arg_1.x)), vec3<i32>(0, _wgslsmith_mod_i32(firstTrailingBit(27555), -u_input.a.x), ~(-arg_0.a.a.x)), arg_0.a.a, Struct_1(~vec4<i32>(u_input.a.x, -1, 26194, u_input.c), 479.0, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.d, arg_0.b, arg_0.b), arg_0.a.c))), arg_2, true)).a, arg_0.a.a.yxz, _wgslsmith_sub_vec4_i32(vec4<i32>(-(~(-33994)), -abs(26169), firstTrailingBit(~58718), -14986), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-11077, -9289, 2147483647, -38270), vec4<i32>(0, u_input.c, 0, arg_0.a.a.x)), ~36166, 0, _wgslsmith_dot_vec3_i32(arg_0.a.a.xwy, -vec3<i32>(-24629, 60163, u_input.c)))), func_5(arg_0.a, vec3<i32>(62142, -reverseBits(arg_0.a.a.x), ~(~(-600))), vec4<i32>(select(arg_0.a.a.x, ~u_input.a.x, false), 29077, ~(~u_input.c), arg_0.a.a.x), Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1763.0, -281.0))), vec3<f32>(-959.0, _wgslsmith_f_op_f32(floor(arg_0.a.d)), _wgslsmith_f_op_f32(round(arg_0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(948.0)) * _wgslsmith_f_op_f32(-167.0)), !(true || arg_1.x))).a).a;
    if (!var_1.e) {
        if (false) {
            let var_2 = Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(var_1.c, vec3<f32>(-854.0, 119.0, -540.0))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.c, arg_0.a.c, vec3<bool>(false, var_1.e, arg_0.a.e))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(506.0, -353.0, arg_2), vec3<f32>(-372.0, 425.0, arg_2), true)))), _wgslsmith_f_op_f32(sign(480.0)), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000.0 - -1848.0), arg_2, arg_0.a.e))))));
        }
    }
    return !arg_1.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global0 = 1161.0;
    for (; ; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        let var_0 = vec3<i32>(2147483647, 19147, -_wgslsmith_mod_i32(-36736, ~_wgslsmith_sub_i32(61789, arg_1.a.x)));
        global1 = array<Struct_2, 29>();
        global1 = array<Struct_2, 29>();
        for (var var_1 = 42188; var_1 != 0; var_1 += 1) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            var var_2 = _wgslsmith_f_op_vec3_f32(arg_1.c + arg_1.c);
            let var_3 = !vec4<bool>(func_8(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b, u_input.b, 24531u), vec4<u32>(u_input.d, 73703u, u_input.e.x, 4792u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 14947u, u_input.d), vec4<u32>(4294967295u, 0u, u_input.e.x, 0u))), 29u)], vec2<bool>(any(vec4<bool>(arg_1.e, arg_1.e, arg_1.e, arg_1.e)), arg_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0.yz, var_0)))), arg_1.e, ~18525 <= 17861, all(select(select(vec3<bool>(arg_1.e, false, false), vec3<bool>(arg_1.e, arg_1.e, false), arg_1.e), vec3<bool>(true, arg_1.e, arg_1.e), false)));
        }
        return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-343.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(961.0)) + -131.0));
    }
    switch (reverseBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1, -8588, 2147483647) >> (_wgslsmith_mult_u32(u_input.e.x, u_input.b) % 32u), _wgslsmith_add_i32(u_input.a.x, -1 >> (85941u % 32u))), u_input.c))) {
        case 0: {
            global0 = arg_0.x;
            switch (u_input.a.x) {
                case -5806: {
                    let var_0 = arg_1;
                }
                default: {
                    let var_0 = _wgslsmith_f_op_f32(-func_5(arg_1, vec3<i32>(arg_1.a.x | u_input.c, arg_1.a.x, -905), abs(arg_1.a), func_5(Struct_1(-arg_1.a, _wgslsmith_f_op_f32(-2182.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-387.0, 1000.0, 1363.0)), _wgslsmith_f_op_f32(ceil(-610.0)), arg_1.e), vec3<i32>(u_input.a.x, i32(-1) * -18383, _wgslsmith_mod_i32(u_input.c, -2147483648)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 51080), vec4<i32>(arg_1.a.x, 11351, arg_1.a.x, arg_1.a.x)), 1, func_5(Struct_1(vec4<i32>(706, arg_1.a.x, u_input.c, arg_1.a.x), arg_0.x, vec3<f32>(-633.0, 1690.0, -170.0), -205.0, true), vec3<i32>(arg_1.a.x, arg_1.a.x, 1), arg_1.a, arg_1).a.a.x, 17098), arg_1).a).a.c.x);
                    global0 = arg_0.x;
                }
            }
            global0 = 753.0;
        }
        case 2147483647: {
            let var_0 = u_input.a.x;
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_1 = arg_1;
                let var_2 = -187.0;
                break;
            }
            let var_1 = vec4<i32>(~(abs(0) >> (~(~6659u) % 32u)), var_0, ~_wgslsmith_clamp_i32(u_input.c & u_input.c, u_input.a.x, var_0) ^ -2147483648, 5218);
            var var_2 = arg_1;
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                let var_3 = all(!vec3<bool>(false, !(!arg_1.e), !(36342u >= 0u)));
            }
        }
        default: {
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2806.0));
            switch (-1) {
                case 27246: {
                    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2280.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000.0, -834.0), _wgslsmith_f_op_f32(exp2(2652.0)))))), arg_1.d);
                }
                case 13835: {
                    let var_0 = u_input.e.zy;
                    var var_1 = abs(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(70771u, var_0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e.yy, u_input.e.xy), min(u_input.e.xx, var_0))), ~(var_0.x ^ ~u_input.e.x), 1u, _wgslsmith_mult_u32(abs(~var_0.x), firstLeadingBit(4294967295u >> (0u % 32u)))));
                    let var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.x)), arg_0.x), _wgslsmith_f_op_f32(trunc(535.0)))), _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-146.0 * arg_1.d) - arg_1.c.x) + -1247.0)), any(func_7(arg_1, global1[_wgslsmith_index_u32(~(~11998u), 29u)], ~vec4<u32>(31200u, var_1.x, 76054u, var_0.x) | abs(vec4<u32>(29091u, 1u, var_0.x, 14659u)))));
                    var var_3 = max(-26560, var_2.a.x);
                }
                case 2147483647: {
                    var var_0 = func_5(func_5(arg_1, ~min(abs(arg_1.a.xyx), countOneBits(arg_1.a.zyy)), arg_1.a ^ (vec4<i32>(arg_1.a.x, u_input.c, arg_1.a.x, arg_1.a.x) >> (vec4<u32>(u_input.e.x, 0u, 4294967295u, u_input.e.x) % vec4<u32>(32u))), func_5(Struct_1(vec4<i32>(-2147483648, 6774, u_input.c, u_input.c), -565.0, _wgslsmith_f_op_vec3_f32(trunc(arg_0.www)), arg_1.c.x, false), abs(vec3<i32>(-9012, 26675, -1)), countOneBits(~arg_1.a), func_5(func_5(arg_1, arg_1.a.xwx, arg_1.a, arg_1).a, arg_1.a.yww, max(vec4<i32>(-2147483648, arg_1.a.x, arg_1.a.x, 0), arg_1.a), func_5(arg_1, arg_1.a.wwx, arg_1.a, arg_1).a).a).a).a, ~arg_1.a.xxy, reverseBits(arg_1.a), arg_1).a;
                    var var_1 = var_0.a.yx;
                    var_0 = func_5(Struct_1(vec4<i32>(~1, firstLeadingBit(-1 ^ 1), i32(-1) * -9375, var_0.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-712.0 + -717.0))), 1569.0, arg_1.e || var_0.e)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.d, -742.0, arg_1.c.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_1.b)), select(true, true, true)), firstLeadingBit(vec3<i32>(~0, -1, -(var_0.a.x | 36549))), vec4<i32>(var_1.x, _wgslsmith_div_i32(-28546, -2147483648), min(select(abs(0), firstLeadingBit(1), true), _wgslsmith_sub_i32(0, -2147483648) & countOneBits(u_input.c)), -(i32(-1) * -2881)), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(29194, 1, u_input.c, -5906), _wgslsmith_div_vec4_i32(var_0.a, arg_1.a), ~vec4<i32>(-1, 1, 1, -1)) & (_wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(-7627, 7325, arg_1.a.x, -9944)) & arg_1.a), 532.0, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), var_0.b, _wgslsmith_f_op_f32(f32(-1.0) * -1290.0)))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d + -154.0), _wgslsmith_f_op_f32(f32(-1.0) * -175.0)))), arg_1.e)).a;
                }
                default: {
                }
            }
        }
    }
    if (all(!(!vec2<bool>(false, arg_1.e))) && (abs(-arg_1.a.x) > min(~(u_input.c ^ arg_1.a.x), 2147483647))) {
        if (false) {
            global1 = array<Struct_2, 29>();
            global0 = 1721.0;
            var var_0 = -565.0;
            var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a.x, ~(-57372)) << ((vec2<u32>(~u_input.d, _wgslsmith_clamp_u32(59513u, u_input.d, u_input.d)) << (_wgslsmith_mult_vec2_u32(abs(u_input.e.yy), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(vec2<i32>(~(-10438 >> (u_input.e.x % 32u)), 0)), min(_wgslsmith_mod_vec2_i32(arg_1.a.wx, u_input.a) ^ abs(vec2<i32>(arg_1.a.x, arg_1.a.x)), arg_1.a.yz));
        }
        var var_0 = arg_1.a.x;
    }
    switch (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, -8788, arg_1.a.x), vec3<i32>(~_wgslsmith_clamp_i32(5288, arg_1.a.x >> (u_input.b % 32u), arg_1.a.x), -2147483648, u_input.c))) {
        case -25072: {
            global1 = array<Struct_2, 29>();
            global0 = _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -339.0), _wgslsmith_f_op_f32(293.0 * 787.0)))));
            switch (arg_1.a.x >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~u_input.e, select(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(1u, 10530u, 59910u), arg_1.e)), ~max(min(vec3<u32>(u_input.e.x, 1374u, u_input.d), vec3<u32>(4294967295u, 1u, 1u)), firstTrailingBit(vec3<u32>(1u, 4294967295u, 4294967295u)))) % 32u)) {
                case 1: {
                }
                case -23059: {
                    global1 = array<Struct_2, 29>();
                    global0 = _wgslsmith_f_op_f32(-444.0 - -1391.0);
                    var var_0 = u_input.c;
                    var_0 = -1;
                    global0 = arg_1.b;
                }
                case 15903: {
                    let var_0 = arg_1;
                    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170.0))), var_0.b, any(func_7(arg_1, Struct_2(Struct_1(var_0.a, arg_0.x, arg_0.xwy, -1042.0, var_0.e), arg_0.x), vec4<u32>(4294967295u, 0u, u_input.e.x, u_input.e.x)).zy))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(exp2(936.0))));
                    global0 = _wgslsmith_f_op_f32(f32(-1.0) * -134.0);
                }
                default: {
                    global1 = array<Struct_2, 29>();
                    var var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.d, 0u, u_input.d)), 41970u, 0u), ~(~vec4<u32>(76289u, u_input.e.x, 32334u, 0u))), ~u_input.e.x, ~_wgslsmith_div_u32(~u_input.b, reverseBits(0u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.d, 0u, 42882u, u_input.b), vec4<u32>(4294967295u, 16774u, u_input.b, 4294967295u)), ~vec4<u32>(37366u, 11157u, u_input.e.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.d, u_input.b, u_input.d)) ^ ~vec4<u32>(38814u, u_input.b, u_input.e.x, 27102u)));
                    global0 = arg_1.c.x;
                    var_0 = vec4<u32>(u_input.e.x, min(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 17540u), var_0.yz), 4294967295u), 33764u), var_0.x, _wgslsmith_mod_u32(28159u, _wgslsmith_sub_u32(var_0.x, var_0.x)));
                }
            }
        }
        case 1: {
            if (false) {
            }
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1467.0));
            var var_0 = firstLeadingBit(vec4<i32>(~u_input.a.x, ~_wgslsmith_dot_vec3_i32(-arg_1.a.xyy, arg_1.a.wyy), max(_wgslsmith_add_i32(0 >> (u_input.d % 32u), _wgslsmith_div_i32(-32891, arg_1.a.x)), _wgslsmith_mult_i32(arg_1.a.x & 6499, -1)), 1));
            global1 = array<Struct_2, 29>();
            if (func_8(global1[_wgslsmith_index_u32(abs(6868u), 29u)], vec2<bool>(arg_1.e, arg_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-495.0)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123.0 + arg_0.x) + func_5(arg_1, vec3<i32>(2147483647, -22956, var_0.x), arg_1.a, Struct_1(vec4<i32>(-2147483648, arg_1.a.x, arg_1.a.x, -75978), arg_0.x, vec3<f32>(arg_1.d, 2110.0, -792.0), arg_0.x, arg_1.e)).a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))))) {
                global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(arg_1.c.x * -1403.0)), arg_1.b)));
                let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
                var_0 = vec4<i32>(reverseBits(_wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(u_input.c, -1)), countOneBits(~(-56758)))), _wgslsmith_mult_i32(~var_0.x, _wgslsmith_mult_i32(arg_1.a.x, -17753)), u_input.c, abs(~(~arg_1.a.x)) << (9006u % 32u));
            }
        }
        default: {
            var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_1.b, -891.0, arg_0.x) * arg_0))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0 * arg_0))), all(vec4<bool>(arg_1.e, false, arg_1.e, arg_1.e))))), vec4<f32>(_wgslsmith_f_op_f32(-893.0), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-169.0 - 527.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))) * arg_1.d))));
        }
    }
    return arg_1.c.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1026.0, 1264.0, 2133.0) - vec4<f32>(215.0, -1000.0, -1115.0, 687.0))), Struct_1(~vec4<i32>(-8522, u_input.c, 0, 11297), arg_1, vec3<f32>(arg_1, 639.0, -1000.0), _wgslsmith_f_op_f32(-1736.0 * arg_1), false & true))), _wgslsmith_f_op_f32(-299.0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1)))), -889.0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(766.0, -111.0, -953.0, arg_1) - vec4<f32>(149.0, -702.0, arg_1, 1669.0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1370.0, 485.0, arg_1) * vec4<f32>(-666.0, 659.0, arg_1, arg_1)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, 1000.0) * vec4<f32>(376.0, 1267.0, -687.0, arg_1))))));
    for (var var_1 = 1; var_1 < 1; var_1 += 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_2 = true;
        var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(442.0 - -671.0), arg_1)));
    }
    var var_1 = _wgslsmith_mod_u32(abs(arg_0.x), ~(~arg_0.x));
    if (true) {
    }
    switch (u_input.a.x) {
        case -15238: {
            var var_2 = ~firstTrailingBit(vec4<u32>(0u, 1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, arg_0.x), u_input.d), u_input.d));
        }
        case 10002: {
            var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(534.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(787.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -168.0) * _wgslsmith_f_op_f32(func_3(vec4<f32>(var_0.x, -421.0, var_0.x, -271.0), Struct_1(vec4<i32>(u_input.a.x, u_input.c, u_input.c, -18289), 1240.0, vec3<f32>(1576.0, arg_1, -590.0), -143.0, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-721.0) - _wgslsmith_f_op_f32(-arg_1))))));
            let var_2 = abs(abs(min(vec3<u32>(arg_0.x | 3108u, ~11997u, ~u_input.e.x), ~arg_0)));
        }
        case -22724: {
        }
        case 2147483647: {
            var var_2 = abs(u_input.e);
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -527.0), _wgslsmith_f_op_f32(-1000.0 - -886.0));
            }
            return func_5(Struct_1(vec4<i32>(-u_input.a.x, ~u_input.a.x, -(-2147483648 & u_input.c), 2147483647), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.zww) * _wgslsmith_f_op_vec3_f32(var_0.zyz * vec3<f32>(1177.0, 1000.0, 663.0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.xyz + vec3<f32>(var_0.x, arg_1, -1247.0)) - _wgslsmith_f_op_vec3_f32(-var_0.wzy))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(min(-408.0, _wgslsmith_f_op_f32(var_0.x * 224.0))))), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false))), ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 0, 57895), vec3<i32>(20634, -2249, 0) | vec3<i32>(-72502, 3496, 1))), min(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, -1, u_input.a.x, u_input.c) & vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.a.x)), vec4<i32>(u_input.a.x, ~u_input.a.x, u_input.a.x, u_input.c)), -abs(max(vec4<i32>(2147483647, u_input.a.x, 1, u_input.a.x), vec4<i32>(u_input.c, u_input.c, -53150, 2147483647)))), Struct_1(vec4<i32>(_wgslsmith_add_i32(2147483647, _wgslsmith_mult_i32(1, u_input.a.x)), -464, firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, -38567)), -502), arg_1, vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1.0) * -419.0), _wgslsmith_f_op_f32(exp2(arg_1))), func_5(func_5(Struct_1(vec4<i32>(u_input.c, u_input.a.x, 20760, u_input.a.x), var_0.x, vec3<f32>(var_0.x, -710.0, -1307.0), 771.0, false), abs(vec3<i32>(1, -1, -2147483648)), ~vec4<i32>(2147483647, 2147483647, u_input.a.x, 0), func_5(Struct_1(vec4<i32>(0, -25163, u_input.c, -23251), 857.0, var_0.yzx, 133.0, false), vec3<i32>(u_input.a.x, -56170, 2147483647), vec4<i32>(u_input.a.x, -10558, u_input.c, -1), Struct_1(vec4<i32>(10950, 878, -1, 39159), var_0.x, var_0.wyx, 380.0, true)).a).a, _wgslsmith_mod_vec3_i32(vec3<i32>(-9167, -2147483648, -1), reverseBits(vec3<i32>(u_input.a.x, -2147483648, u_input.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x), reverseBits(vec4<i32>(-64021, u_input.a.x, 1, u_input.a.x))), func_5(Struct_1(vec4<i32>(u_input.c, u_input.a.x, u_input.c, u_input.a.x), var_0.x, vec3<f32>(arg_1, 1277.0, -1334.0), 182.0, false), vec3<i32>(u_input.a.x, u_input.a.x, -6242) | vec3<i32>(u_input.a.x, 12685, u_input.c), vec4<i32>(-2147483648, 2147483647, u_input.a.x, -2147483648), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), arg_1, var_0.yyw, -1629.0, true)).a).a.b, func_7(Struct_1(vec4<i32>(-40575, 1, u_input.a.x, u_input.c), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1209.0)), arg_1, true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b ^ 1u, ~0u), 29u)], ~max(vec4<u32>(u_input.d, u_input.b, 1u, 0u), vec4<u32>(1u, 11641u, arg_0.x, u_input.e.x))).x)).a;
        }
        default: {
        }
    }
    return func_5(Struct_1(max(-vec4<i32>(-19748, u_input.c, u_input.c, 5366), -vec4<i32>(-2147483648, 0, u_input.a.x, u_input.c)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, -25347, u_input.a.x), -vec4<i32>(2147483647, -38696, -2147483648, u_input.c), countOneBits(vec4<i32>(u_input.a.x, u_input.c, u_input.c, -18686))), -344.0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(var_0.wzw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1246.0, 866.0, 324.0)), !vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(func_4(u_input.a, abs(-vec3<i32>(u_input.a.x, -1, u_input.a.x)))), !false), ~select(countOneBits(~vec3<i32>(u_input.a.x, 11953, u_input.c)), vec3<i32>(_wgslsmith_add_i32(u_input.c, -71215), 0 >> (arg_0.x % 32u), u_input.a.x), true), func_5(Struct_1(abs(vec4<i32>(u_input.c, 24273, u_input.a.x, u_input.a.x) | vec4<i32>(8916, u_input.a.x, 2147483647, 23071)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.yyx - var_0.zyw))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1029.0, 579.0, false)) - _wgslsmith_f_op_f32(-var_0.x)), false), -vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.c), u_input.c, u_input.a.x), -select(vec4<i32>(u_input.c, -13897, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.a.x, -1, 27180) ^ vec4<i32>(u_input.c, u_input.c, 1, 2147483647), !vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(-1, u_input.c, 0, -1) << (~vec4<u32>(5352u, 6840u, arg_0.x, 69656u) % vec4<u32>(32u)), arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1311.0, -1026.0, arg_1)), var_0.x, func_7(Struct_1(vec4<i32>(1, u_input.c, 1, -22956), 853.0, vec3<f32>(516.0, var_0.x, -674.0), arg_1, false), Struct_2(Struct_1(vec4<i32>(89426, -32213, -1, u_input.a.x), -925.0, var_0.xxx, var_0.x, true), -2242.0), select(vec4<u32>(6905u, u_input.d, u_input.b, 59958u), vec4<u32>(51949u, u_input.d, 17682u, 1u), false)).x)).a.a, func_5(Struct_1(vec4<i32>(23036, 5280, i32(-1) * -1, u_input.a.x), var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wxz + vec3<f32>(-763.0, 1427.0, -934.0))), 1000.0, !(u_input.c < -66152)), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(u_input.a.x), u_input.a.x, -39707 | -1), countOneBits(select(vec3<i32>(-37131, u_input.c, 60548), vec3<i32>(u_input.c, 17007, u_input.c), true))), _wgslsmith_mod_vec4_i32(abs(firstLeadingBit(vec4<i32>(u_input.a.x, 1, u_input.a.x, 45109))), ~(-vec4<i32>(1, u_input.a.x, u_input.a.x, -2147483648))), func_5(func_5(func_5(Struct_1(vec4<i32>(-32012, u_input.c, u_input.a.x, u_input.a.x), -624.0, vec3<f32>(arg_1, -347.0, arg_1), -512.0, false), vec3<i32>(u_input.c, u_input.c, -46559), vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, -1), Struct_1(vec4<i32>(u_input.c, 2147483647, 28614, u_input.c), var_0.x, var_0.zwy, var_0.x, false)).a, max(vec3<i32>(2147483647, -44138, -41093), vec3<i32>(u_input.a.x, u_input.c, u_input.a.x)), vec4<i32>(u_input.c, 2147483647, -12428, -49330) & vec4<i32>(-1, -1, -1, 39712), Struct_1(vec4<i32>(u_input.a.x, 5116, 8840, u_input.c), arg_1, vec3<f32>(916.0, arg_1, var_0.x), var_0.x, true)).a, _wgslsmith_mult_vec3_i32(func_5(Struct_1(vec4<i32>(u_input.c, -2147483648, 19791, 0), -1680.0, vec3<f32>(-1000.0, arg_1, arg_1), arg_1, false), vec3<i32>(-2147483648, 2147483647, 27838), vec4<i32>(u_input.a.x, -11743, u_input.a.x, u_input.a.x), Struct_1(vec4<i32>(-8699, u_input.c, u_input.c, u_input.a.x), -1000.0, var_0.yxx, var_0.x, true)).a.a.zzz, vec3<i32>(u_input.c, -1, 33235) << (vec3<u32>(u_input.d, arg_0.x, 1686u) % vec3<u32>(32u))), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x), vec4<i32>(u_input.c, -45166, u_input.c, u_input.c)), func_5(Struct_1(vec4<i32>(u_input.a.x, 0, u_input.c, -2147483648), arg_1, var_0.wyz, -560.0, false), abs(vec3<i32>(u_input.a.x, -2147483648, -2147483648)), vec4<i32>(2147483647, u_input.c, -1, u_input.a.x), Struct_1(vec4<i32>(0, u_input.a.x, u_input.c, -2147483648), var_0.x, vec3<f32>(var_0.x, var_0.x, 1275.0), 1339.0, false)).a).a).a).a;
}

fn func_9(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        let var_0 = func_5(Struct_1(-(~vec4<i32>(arg_1.a.a.x, u_input.a.x, 32517, 2147483647)), arg_1.b, arg_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, -288.0) * _wgslsmith_f_op_f32(arg_0.a.d - -426.0))), any(vec4<bool>(!false, arg_0.a.e, 29221 < arg_1.a.a.x, false))), func_5(Struct_1(-vec4<i32>(0, -2147483648, u_input.c, u_input.a.x), 1000.0, arg_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - arg_1.a.d) - _wgslsmith_f_op_f32(ceil(211.0))), func_8(func_5(Struct_1(arg_0.a.a, -807.0, arg_1.a.c, arg_0.a.d, arg_0.a.e), vec3<i32>(u_input.a.x, 64765, u_input.a.x), vec4<i32>(arg_1.a.a.x, 67305, -17945, arg_0.a.a.x), arg_1.a), select(vec2<bool>(arg_1.a.e, true), vec2<bool>(arg_0.a.e, true), vec2<bool>(arg_1.a.e, true)), _wgslsmith_f_op_f32(arg_0.b - arg_1.b))), select(~(-vec3<i32>(15560, 52513, arg_1.a.a.x)), arg_0.a.a.xzy, arg_1.a.e), -vec4<i32>(arg_1.a.a.x, u_input.a.x, 2147483647 & 58871, _wgslsmith_dot_vec3_i32(arg_1.a.a.wzz, arg_0.a.a.wzy)), func_5(arg_0.a, vec3<i32>(u_input.c, 25903, u_input.a.x << (u_input.d % 32u)), reverseBits(~vec4<i32>(0, arg_1.a.a.x, 1, -52040)), func_5(arg_0.a, _wgslsmith_div_vec3_i32(arg_0.a.a.zxy, vec3<i32>(12790, arg_0.a.a.x, 1)), ~arg_1.a.a, Struct_1(vec4<i32>(-13748, 1, arg_1.a.a.x, arg_1.a.a.x), -1717.0, vec3<f32>(1354.0, 267.0, arg_1.b), arg_0.a.d, true)).a).a).a.a.xwz, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.a.x, ~(-1), 0, arg_1.a.a.x), _wgslsmith_mult_vec4_i32(arg_0.a.a, ~max(arg_0.a.a, arg_1.a.a))), arg_1.a);
        return var_0.a;
    }
    let var_0 = -((-(~u_input.a.x) & arg_1.a.a.x) << (~_wgslsmith_clamp_u32(abs(u_input.d), 61763u, countOneBits(1u)) % 32u));
    let var_1 = 29861;
    let var_2 = firstLeadingBit(~vec2<u32>(~1u, u_input.d)) & ~(~(~(~u_input.e.yx)));
    global1 = array<Struct_2, 29>();
    return Struct_1(arg_1.a.a, _wgslsmith_f_op_f32(floor(1025.0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.c)), 1870.0, !(firstTrailingBit(var_2.x) < reverseBits(~4294967295u)));
}

fn func_1() -> Struct_2 {
    for (var var_0 = -1; var_0 == -1; var_0 -= 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        let var_1 = func_9(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b << (abs(52390u) % 32u), u_input.d), 29u)], Struct_2(func_2(select(vec3<u32>(4294967295u, u_input.e.x, 20164u), ~u_input.e, false), _wgslsmith_f_op_f32(-246.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000.0))) + -1033.0)));
    }
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        switch ((~(~max(21355, 2147483647)) & u_input.a.x) ^ ~countOneBits(u_input.a.x)) {
            case 0: {
            }
            default: {
                continue;
            }
        }
        let var_0 = Struct_1(abs(vec4<i32>(-19592, 2147483647 | 0, func_5(Struct_1(vec4<i32>(u_input.a.x, 2147483647, 19798, 1), 1109.0, vec3<f32>(-125.0, -1949.0, -1589.0), 276.0, false), vec3<i32>(u_input.a.x, u_input.a.x, u_input.c), vec4<i32>(9160, u_input.c, u_input.c, u_input.a.x), Struct_1(vec4<i32>(1, 0, u_input.c, u_input.c), -333.0, vec3<f32>(-1156.0, -194.0, -478.0), 753.0, false)).a.a.x, ~u_input.a.x)) ^ (_wgslsmith_mult_vec4_i32(-vec4<i32>(0, -1, u_input.c, u_input.c), -vec4<i32>(1, 43988, -44584, u_input.a.x)) ^ -vec4<i32>(-2147483648, -1, u_input.c, u_input.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(607.0 + -1164.0) + _wgslsmith_f_op_f32(min(1703.0, -1000.0))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -564.0), 590.0, true))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-425.0)) + _wgslsmith_div_f32(520.0, 927.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-697.0)), _wgslsmith_f_op_f32(floor(1000.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107.0 + -1429.0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -472.0), _wgslsmith_div_f32(-1365.0, -1427.0), _wgslsmith_f_op_f32(-209.0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-594.0, 245.0, -512.0) * vec3<f32>(112.0, 383.0, 1468.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(u_input.a, vec3<i32>(-6771, -2147483648, 9960))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(418.0)))))), ~((11170u << (u_input.d % 32u)) ^ firstLeadingBit(1u)) != _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(1u, 86787u, _wgslsmith_sub_u32(28310u, u_input.d))));
        let var_1 = Struct_2(Struct_1(-(vec4<i32>(u_input.a.x, 7852, var_0.a.x, u_input.a.x) >> (~vec4<u32>(u_input.e.x, 4294967295u, u_input.b, 0u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-698.0)) + 803.0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(-1143.0, 1340.0, var_0.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-796.0))), !func_9(Struct_2(Struct_1(var_0.a, -1000.0, var_0.c, var_0.b, false), var_0.c.x), Struct_2(var_0, var_0.c.x)).e), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))));
    }
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-103.0, 767.0))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<i32>(2147483647, u_input.c), vec3<i32>(u_input.a.x, u_input.a.x, u_input.c))) + 260.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-544.0)))))));
        for (var var_1 = -(~(~2263)); !(((u_input.a.x == u_input.c) || func_8(Struct_2(Struct_1(vec4<i32>(u_input.c, 2147483647, u_input.c, 2147483647), var_0.x, vec3<f32>(-726.0, -1587.0, -1229.0), -1000.0, false), var_0.x), vec2<bool>(false, false), -136.0)) | true) && !false; var_1 -= 1) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-566.0, -1000.0) + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(763.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689.0 - 1000.0)))));
            let var_2 = ~func_2(~vec3<u32>(u_input.d, 0u, 8039u) | countOneBits(vec3<u32>(u_input.e.x, u_input.b, 0u)), -1777.0).a.x > 18615;
        }
    }
    if (!(!all(vec2<bool>(u_input.e.x >= 14009u, true)))) {
    }
    var var_0 = 44266u;
    return func_5(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, 1), vec3<i32>(-29693, u_input.c, 0)), -28911, ~u_input.c, u_input.a.x), func_2(u_input.e, 1595.0).a & vec4<i32>(-14691, u_input.a.x, 1, 0)), -256.0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-func_2(u_input.e, 721.0).c))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1439.0, -1195.0, -942.0, -503.0))))), Struct_1(~vec4<i32>(9906, u_input.a.x, u_input.a.x, 48976), 180.0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(351.0, -811.0, 1127.0)), _wgslsmith_f_op_f32(-1000.0 - 1042.0), func_9(Struct_2(Struct_1(vec4<i32>(5817, u_input.a.x, u_input.c, u_input.a.x), 756.0, vec3<f32>(-1779.0, 121.0, -307.0), -974.0, true), 374.0), global1[_wgslsmith_index_u32(1u, 29u)]).e))), !(!(!true))), select(func_2(~vec3<u32>(18022u, u_input.b, 59849u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-570.0, 143.0))))).a.zxy, vec3<i32>(u_input.a.x, abs(-u_input.c), -29348), (_wgslsmith_f_op_f32(1000.0 * 536.0) >= _wgslsmith_f_op_f32(-763.0 + 1129.0)) | true), vec4<i32>(-1, u_input.a.x, _wgslsmith_add_i32(max(_wgslsmith_add_i32(-62789, u_input.a.x), u_input.c), ~u_input.c), u_input.c), Struct_1(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, -1, u_input.c, 2147483647) ^ vec4<i32>(13893, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(func_9(global1[_wgslsmith_index_u32(u_input.d, 29u)], Struct_2(Struct_1(vec4<i32>(-6173, u_input.a.x, -1, -1), -505.0, vec3<f32>(-355.0, -117.0, -795.0), -1449.0, true), 834.0)).a.x, func_9(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]).a.x, countOneBits(u_input.c), ~(-17744))), 1000.0, vec3<f32>(1000.0, _wgslsmith_f_op_f32(min(func_5(Struct_1(vec4<i32>(-1, -20626, u_input.c, u_input.c), 2169.0, vec3<f32>(-1370.0, -495.0, -1659.0), 521.0, true), vec3<i32>(-36302, 2147483647, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0, u_input.a.x), Struct_1(vec4<i32>(-10239, u_input.a.x, u_input.c, u_input.a.x), -1000.0, vec3<f32>(-597.0, 221.0, 1064.0), 2035.0, true)).a.b, 853.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-442.0))), -700.0, func_5(func_2(u_input.e, 1216.0), vec3<i32>(-1) * -vec3<i32>(0, 824, u_input.a.x), ~func_5(Struct_1(vec4<i32>(u_input.c, 0, u_input.c, 0), 1538.0, vec3<f32>(-898.0, 897.0, 865.0), -2932.0, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.c), vec4<i32>(2817, -1, -1, u_input.a.x), Struct_1(vec4<i32>(u_input.c, -29823, u_input.c, 1), -315.0, vec3<f32>(950.0, 1000.0, -1513.0), -1000.0, false)).a.a, func_5(func_5(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -2147483648, u_input.a.x), -660.0, vec3<f32>(1410.0, -1000.0, 107.0), -1797.0, true), vec3<i32>(u_input.c, 0, u_input.c), vec4<i32>(13251, u_input.a.x, u_input.a.x, u_input.c), Struct_1(vec4<i32>(u_input.a.x, 1, 17803, u_input.a.x), 908.0, vec3<f32>(-281.0, 1011.0, -139.0), 1492.0, false)).a, ~vec3<i32>(5507, 1, 2147483647), countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.a.x, u_input.c)), Struct_1(vec4<i32>(-2147483648, -15293, u_input.a.x, u_input.c), -514.0, vec3<f32>(143.0, 1416.0, -534.0), 1074.0, true)).a).a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        if (any(vec4<bool>(false, any(vec2<bool>(any(vec3<bool>(false, var_0.a.e, false)), true)), !true, func_8(var_0, vec2<bool>(any(vec3<bool>(false, false, var_0.a.e)), func_8(Struct_2(var_0.a, var_0.b), vec2<bool>(var_0.a.e, false), var_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.a.b)))))) {
        }
        return;
    }
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        var var_1 = -325.0 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-var_0.b)))));
        let var_2 = ~u_input.d;
        var var_3 = func_9(var_0, global1[_wgslsmith_index_u32(max(u_input.d, ~u_input.b << (firstTrailingBit(_wgslsmith_mult_u32(u_input.e.x, u_input.b)) % 32u)), 29u)]);
        loop {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            global1 = array<Struct_2, 29>();
            var_1 = var_0.a.e;
            var var_4 = 19916;
            let var_5 = any(!select(vec3<bool>(false | var_3.e, true, func_5(Struct_1(var_3.a, var_3.c.x, var_0.a.c, var_3.d, true), vec3<i32>(u_input.c, var_3.a.x, 27091), vec4<i32>(var_3.a.x, var_3.a.x, u_input.c, -55486), Struct_1(var_0.a.a, -271.0, vec3<f32>(var_3.b, var_3.b, -1304.0), var_3.b, var_3.e)).a.e), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(select(vec3<bool>(var_0.a.e, var_0.a.e, var_3.e), vec3<bool>(var_0.a.e, true, true), vec3<bool>(var_3.e, var_3.e, false)), vec3<bool>(true, var_0.a.e, var_0.a.e), select(vec3<bool>(var_3.e, true, var_3.e), vec3<bool>(var_3.e, var_0.a.e, true), vec3<bool>(false, true, true)))));
            var var_6 = func_2(max(firstTrailingBit(firstLeadingBit(vec3<u32>(var_2, 0u, 1462u) | u_input.e)), ~u_input.e), var_0.a.b);
        }
    }
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        continue;
    }
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -439.0) - 668.0)));
    var var_2 = var_0.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1201.0)) + -1668.0))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203.0 - var_0.a.b) * var_2.b))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_0.a.c.x, var_1, var_1)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, -238.0, var_0.a.d, var_1)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d * _wgslsmith_f_op_f32(-290.0 + 845.0))), var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(var_0.a, vec3<i32>(31597, var_0.a.a.x, var_0.a.a.x), vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, 34675), Struct_1(vec4<i32>(34190, var_0.a.a.x, -26454, var_2.a.x), var_2.d, vec3<f32>(1413.0, var_1, 104.0), 2028.0, var_2.e)).a.c.x + _wgslsmith_f_op_f32(var_0.b - var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.c.x))))), var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.x);
}

