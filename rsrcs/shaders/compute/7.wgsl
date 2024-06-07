// {"0:0":[74,217,200,221,183,42,172,57,193,177,150,254,176,176,213,70,237,220,8,212]}
// Seed: 4705492904916111499

struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_6(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> i32 {
    return _wgslsmith_dot_vec4_i32(~select(vec4<i32>(-40020, 11648 ^ arg_1, _wgslsmith_div_i32(7852, u_input.b), 0 >> (arg_0.x % 32u)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483648, u_input.a, global1.c.x), vec4<i32>(1, 0, -14434, arg_1)), !(!false)), (countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 19985, u_input.b, arg_1), vec4<i32>(-1, 1, u_input.b, -64759))) | countOneBits(~vec4<i32>(u_input.b, -53596, arg_1, -2147483648))) >> ((select(vec4<u32>(u_input.c, global0.x, 1u, arg_0.x) | arg_0, arg_0, !vec4<bool>(true, false, false, true)) >> (vec4<u32>(1u << (58978u % 32u), _wgslsmith_mult_u32(33263u, u_input.e), firstTrailingBit(global0.x), _wgslsmith_dot_vec3_u32(global1.a.xwz, global0.wwz)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(func_6(global1.a, arg_1.c.x, arg_1.b), func_6(vec4<u32>(global0.x, arg_1.a.x, global0.x, global1.a.x), 0, -1768.0), -11906), vec3<i32>(_wgslsmith_add_i32(arg_0, global1.c.x), arg_1.c.x, u_input.b)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-global1.c.x, _wgslsmith_clamp_i32(2147483647, global1.c.x, arg_1.c.x)), firstLeadingBit(~global1.c.zz)), abs(arg_0));
    let var_1 = _wgslsmith_sub_vec3_i32(select(max(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, global1.c.x, 2147483647), global1.c), global1.c), -arg_1.c, !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))) << (min(vec3<u32>(_wgslsmith_mod_u32(7108u, 0u), ~arg_1.a.x, ~4294967295u), select(vec3<u32>(51134u, global0.x, 1559u), firstLeadingBit(global0.yww), !false)) % vec3<u32>(32u)), -(~(-(vec3<i32>(arg_1.c.x, 1, global1.c.x) >> (global1.a.wyx % vec3<u32>(32u))))));
    for (; _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1420.0))) * _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(global1.b - arg_1.b))), arg_1.b) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(460.0)))) - _wgslsmith_f_op_f32(max(-552.0, global1.b))); ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global1 = Struct_1(global1.a, 511.0, abs(reverseBits(global1.c)));
        let var_2 = global0.x;
        let var_3 = _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(439.0, 840.0), arg_1.b)) * arg_1.b));
        if (false) {
            global0 = arg_1.a;
            break;
        }
    }
    if (_wgslsmith_f_op_f32(-global1.b) <= _wgslsmith_f_op_f32(-arg_1.b)) {
        let var_2 = 4294967295u;
        let var_3 = !(!select(select(!vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), !false), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), all(vec2<bool>(true, true))));
        global1 = arg_1;
        switch (~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-var_0, arg_0 & -17190, var_0, var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_0, -23507, u_input.b), select(vec4<i32>(arg_0, var_0, 11985, arg_0), vec4<i32>(arg_0, arg_0, arg_1.c.x, u_input.b), vec4<bool>(true, var_3.x, true, false)))), func_6(_wgslsmith_mult_vec4_u32(~vec4<u32>(5761u, arg_1.a.x, global0.x, 4294967295u), min(global1.a, arg_1.a)), ~(-var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b * arg_1.b)))))) {
            default: {
            }
        }
    }
    let var_2 = u_input.b;
    return firstTrailingBit(select(arg_1.a, _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, global1.a.x, 0u), ~arg_1.a), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true)) << (vec4<u32>(~_wgslsmith_sub_u32(0u, 13368u), 64172u, (88441u ^ 4294967295u) >> (~55565u % 32u), 4294967295u) % vec4<u32>(32u)));
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = 15120;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.b, -637.0), 182.0, true && true)), -138.0) + vec2<f32>(_wgslsmith_f_op_f32(sign(447.0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b), arg_0.b))))));
    global0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>((27212u >> (arg_0.a.x % 32u)) & _wgslsmith_sub_u32(1u, 27427u), arg_0.a.x, 36089u, countOneBits(_wgslsmith_sub_u32(4294967295u, 40487u))), (firstLeadingBit(vec4<u32>(global1.a.x, 0u, global0.x, global0.x)) ^ min(arg_0.a, arg_0.a)) << ((~vec4<u32>(global0.x, global0.x, 0u, 17912u) << (~vec4<u32>(global0.x, 6185u, global0.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            break;
        }
        var_0 = arg_0.c.x;
        continue;
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    return arg_0;
}

fn func_4(arg_0: i32) -> Struct_1 {
    switch (-1) {
        case 3567: {
            global0 = vec4<u32>(0u, ~global1.a.x, ~(~(~3402u)) << (~global0.x % 32u), 1u);
            if (false) {
                let var_0 = reverseBits(_wgslsmith_div_vec2_u32(global1.a.wx, ~vec2<u32>(4294967295u, u_input.e)));
                global1 = func_7(Struct_1(_wgslsmith_clamp_vec4_u32(max(global1.a, ~global1.a), func_5(_wgslsmith_div_i32(3576, global1.c.x), Struct_1(global1.a, -1130.0, vec3<i32>(-35462, global1.c.x, -1))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1u, global1.a.x, global1.a.x), global1.a, vec4<u32>(36281u, 32139u, 4294967295u, 63055u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - -1761.0)), _wgslsmith_f_op_f32(1196.0 + _wgslsmith_f_op_f32(select(global1.b, global1.b, false))))), vec3<i32>(-_wgslsmith_mod_i32(global1.c.x, u_input.b), -global1.c.x | (i32(-1) * -18939), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 28202, global1.c.x, -14960), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global1.c.x, -1, -9240), vec4<i32>(1, arg_0, -2147483648, arg_0))))), _wgslsmith_mod_i32(~arg_0, firstLeadingBit(u_input.a)), 2147483647 | 0, true);
                global0 = min(abs(vec4<u32>(~global0.x, func_5(-18277, Struct_1(vec4<u32>(1u, global1.a.x, 18454u, 47344u), 742.0, global1.c)).x, 1u, 1u & u_input.e)) | global1.a, vec4<u32>(0u, countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(16975u, var_0.x, 72596u, 47306u)), firstLeadingBit(vec4<u32>(0u, 4294967295u, 18284u, 21171u)))), 51231u, _wgslsmith_div_u32(~13262u, global0.x << (~4294967295u % 32u))));
                global1 = func_7(Struct_1(global1.a, _wgslsmith_f_op_f32(global1.b * func_7(func_7(Struct_1(vec4<u32>(0u, global0.x, 46746u, var_0.x), global1.b, vec3<i32>(2147483647, global1.c.x, 1522)), 2147483647, 0, true), firstLeadingBit(18523), u_input.b, true).b), ~vec3<i32>(global1.c.x & 2147483647, global1.c.x, arg_0 | -1)), _wgslsmith_div_i32(firstTrailingBit(u_input.a >> (global0.x % 32u)) | _wgslsmith_div_i32(~(-1), -2147483647), -1), _wgslsmith_mult_i32(arg_0 & _wgslsmith_mod_i32(8851 ^ 15072, abs(global1.c.x)), 0), false);
            }
            if (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.b)))) >= -878.0) {
            }
            let var_0 = vec4<i32>(firstTrailingBit(-975), 36611, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, 1, -2147483648, -1) | vec4<i32>(-31665, -11689, 0, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(0, 56082, -1, global1.c.x), vec4<i32>(global1.c.x, u_input.b, u_input.b, u_input.a))), global1.c.x ^ (arg_0 & _wgslsmith_mod_i32(-1704, global1.c.x))) | _wgslsmith_sub_vec4_i32(vec4<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-38757, -38332, arg_0, -2147483648), vec4<i32>(1, u_input.b, -2147483648, global1.c.x)), max(19146, global1.c.x)), ~arg_0, arg_0 & u_input.b, _wgslsmith_div_i32(-1, global1.c.x ^ -4480)), -firstLeadingBit(vec4<i32>(-24127, 21539, u_input.a, global1.c.x)));
        }
        case 0: {
            let var_0 = Struct_1(global1.a, global1.b, firstTrailingBit(global1.c));
            let var_1 = ~(global0.x | var_0.a.x);
        }
        case 17032: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                continue;
            }
            global1 = Struct_1(~(~global1.a << ((global1.a << (vec4<u32>(global1.a.x, 4294967295u, 0u, global0.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(f32(-1.0) * -1207.0))))), vec3<i32>(arg_0, reverseBits(firstLeadingBit(global1.c.x)) >> (firstTrailingBit(u_input.d) % 32u), -countOneBits(-13412 >> (9756u % 32u))));
            if (false) {
                var var_0 = func_7(Struct_1(abs(~global1.a >> (~global1.a % vec4<u32>(32u))), func_7(func_7(Struct_1(global1.a, 593.0, global1.c), countOneBits(1), arg_0, false == true), arg_0, max(-global1.c.x, -22841), true).b, _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~global1.c, global1.c & vec3<i32>(u_input.a, -1, 2147483647)), _wgslsmith_add_vec3_i32(-vec3<i32>(40745, -1, -1), ~global1.c))), countOneBits(arg_0), -abs(-32066), any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
            }
            global1 = func_7(Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000.0)) + _wgslsmith_f_op_f32(round(736.0))), firstTrailingBit(vec3<i32>(u_input.a, global1.c.x, 1697))), 2147483647, _wgslsmith_sub_i32(countOneBits((i32(-1) * -2147483648) >> (u_input.c % 32u)), reverseBits(min(14152, -10887))), false);
        }
        default: {
            switch (_wgslsmith_mult_i32(2147483647 ^ -52128, -countOneBits(abs(_wgslsmith_mult_i32(u_input.a, -32853))))) {
                case -1: {
                    return Struct_1(~(~func_5(global1.c.x & arg_0, func_7(Struct_1(global1.a, -1512.0, vec3<i32>(0, global1.c.x, -13174)), global1.c.x, u_input.a, false))), global1.b, _wgslsmith_mod_vec3_i32(vec3<i32>(-72858, i32(-1) * -48841, global1.c.x), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(6633, global1.c.x), global1.c.xz), abs(_wgslsmith_add_i32(1, 7617)), ~(-35231) >> ((global0.x & u_input.d) % 32u))));
                }
                case 5404: {
                    let var_0 = func_7(func_7(Struct_1(vec4<u32>(u_input.e, 9290u, global0.x, global0.x) | ~vec4<u32>(0u, 9649u, global0.x, 8504u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1, 0, -2147483648), global1.c), global1.c.x, arg_0)), _wgslsmith_clamp_i32(15013, 1, i32(-1) * -14691), arg_0, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)) == !any(vec4<bool>(false, false, true, true))), firstLeadingBit(select(~(-42306 >> (global1.a.x % 32u)), arg_0, all(!vec4<bool>(false, false, false, true)))), max(-(~_wgslsmith_mod_i32(u_input.b, 10466)), func_7(Struct_1(firstLeadingBit(global1.a), _wgslsmith_f_op_f32(global1.b + 1220.0), global1.c >> (vec3<u32>(u_input.c, global1.a.x, u_input.c) % vec3<u32>(32u))), 38183, -63278, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true))).c.x), select(any(!(!vec3<bool>(true, false, false))), !(!(!true)), true));
                    global0 = var_0.a;
                    var var_1 = true;
                    let var_2 = func_7(func_7(func_7(Struct_1(vec4<u32>(var_0.a.x, global1.a.x, 0u, u_input.c), var_0.b, -vec3<i32>(arg_0, arg_0, -2147483648)), firstLeadingBit(func_7(var_0, -81126, global1.c.x, false).c.x), -u_input.a, true), abs(u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.c.x, global1.c.x, -2438), vec3<i32>(-1, global1.c.x, arg_0)), vec3<i32>(17874, var_0.c.x, var_0.c.x) | vec3<i32>(-11655, u_input.b, var_0.c.x)) << (global0.x % 32u), false), -(~global1.c.x), u_input.b & func_7(var_0, firstLeadingBit(max(global1.c.x, -1)), -2147483647, countOneBits(-47506) <= _wgslsmith_mult_i32(var_0.c.x, -2147483648)).c.x, select(!(50131u >= 60467u) || !(!false), any(select(!vec2<bool>(false, false), vec2<bool>(true, true), var_0.b == 1436.0)), true));
                    var var_3 = func_7(var_2, arg_0, -2147483648, !(!(_wgslsmith_dot_vec3_i32(vec3<i32>(0, 0, -1), vec3<i32>(global1.c.x, arg_0, u_input.a)) > firstTrailingBit(-1))));
                }
                case -2185: {
                    var var_0 = vec3<i32>(-1, _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(-1, 2147483647), _wgslsmith_mod_i32(global1.c.x, u_input.b) | _wgslsmith_sub_i32(-2147483648, 22116), -func_6(global1.a, 14517, global1.b)), vec3<i32>(_wgslsmith_div_i32(i32(-1) * -9696, _wgslsmith_mod_i32(1, 4102)), -1786 >> (_wgslsmith_clamp_u32(18173u, global0.x, u_input.c) % 32u), u_input.a | func_7(Struct_1(global1.a, global1.b, vec3<i32>(arg_0, -1, 2147483647)), u_input.b, -10717, false).c.x)), 46661 | -select(~29066, min(global1.c.x, 14895), select(true, false, true)));
                    var_0 = global1.c;
                }
                default: {
                    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)));
                    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(714.0, 243.0)) + global1.b)))), _wgslsmith_f_op_f32(-1000.0 * 762.0));
                    global0 = vec4<u32>(func_5(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1, global1.c.x, arg_0, -1), vec4<i32>(27573, 1, -1, u_input.b)), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, 33662u, global0.x, 40894u), global1.a), _wgslsmith_div_f32(-1354.0, 482.0), _wgslsmith_add_vec3_i32(global1.c, global1.c))).x & 36901u, _wgslsmith_add_u32(~15304u << (10378u % 32u), 10829u), 30075u, _wgslsmith_div_u32(23021u, countOneBits(global1.a.x & global1.a.x)) << (0u % 32u));
                }
            }
            switch (i32(-1) * -(~(i32(-1) * -11738))) {
                case 11027: {
                    global0 = vec4<u32>(u_input.d, (~(~0u) << (global1.a.x % 32u)) & u_input.c, abs(_wgslsmith_mult_u32(~1u, func_5(firstLeadingBit(u_input.b), Struct_1(vec4<u32>(global1.a.x, u_input.d, global0.x, global0.x), global1.b, vec3<i32>(30714, arg_0, global1.c.x))).x)), _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 21002u, 0u), vec3<u32>(0u, u_input.e, global0.x))) << (~func_7(Struct_1(vec4<u32>(74493u, global1.a.x, u_input.c, 65957u), 1046.0, global1.c), -73190, arg_0, false).a.ywx % vec3<u32>(32u)), global0.xxw));
                    let var_0 = Struct_1(_wgslsmith_sub_vec4_u32(global1.a, func_7(Struct_1(global1.a, global1.b, vec3<i32>(-72537, -2147483648, -1)), 0, -19354 | 2147483647, 1 == -2147483648).a) << (global1.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(global1.b * global1.b), -global1.c);
                }
                default: {
                    let var_0 = !(!vec2<bool>(all(!vec2<bool>(false, true)), !(false || true)));
                    global0 = ~(~vec4<u32>(global0.x, ~(~global1.a.x), u_input.e, global0.x));
                    global1 = func_7(func_7(func_7(Struct_1(vec4<u32>(4157u, 19495u, global1.a.x, 4294967295u), -384.0, firstTrailingBit(vec3<i32>(u_input.a, 2147483647, 0))), func_6(vec4<u32>(global0.x, global0.x, u_input.e, u_input.d), 2147483647, global1.b) >> ((0u >> (1036u % 32u)) % 32u), min(abs(63387), countOneBits(0)), any(!var_0)), ~_wgslsmith_clamp_i32(global1.c.x, ~u_input.a, global1.c.x & global1.c.x), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_clamp_i32(u_input.a, -1, arg_0)), select(u_input.b, global1.c.x, any(vec4<bool>(true, false, var_0.x, var_0.x)))), !(!var_0.x)), _wgslsmith_clamp_i32(-((global1.c.x | global1.c.x) ^ abs(arg_0)), -_wgslsmith_mult_i32(1 ^ global1.c.x, 2147483647), _wgslsmith_div_i32(abs(u_input.a ^ 1), firstTrailingBit(firstTrailingBit(-10658)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1.c.yz, vec2<i32>(arg_0, -88684) << (vec2<u32>(14171u, 922u) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -47076), vec2<i32>(global1.c.x, u_input.a))) & _wgslsmith_clamp_i32(~firstLeadingBit(0), 29204, -15876), true);
                }
            }
            global1 = func_7(func_7(func_7(Struct_1(global1.a, 860.0, vec3<i32>(u_input.a, global1.c.x, u_input.a) & global1.c), abs(arg_0), abs(u_input.a) & u_input.a, all(!vec2<bool>(false, true))), _wgslsmith_sub_i32(~3569, arg_0), arg_0, !false), _wgslsmith_mult_i32(u_input.b, u_input.a), func_7(Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(972.0))), _wgslsmith_sub_vec3_i32(-global1.c, -global1.c)), arg_0, 12880, 1u <= 35266u).c.x, !(!any(vec3<bool>(true, true, true))) | (_wgslsmith_mult_i32(u_input.b, global1.c.x) >= global1.c.x));
            let var_0 = ~abs(~vec4<u32>(1u, global0.x, 0u, 1u) ^ vec4<u32>(~61144u, u_input.d, func_5(u_input.b, Struct_1(global1.a, -349.0, vec3<i32>(-1, 0, 22140))).x, abs(4294967295u)));
        }
    }
    for (var var_0 = 2147483647; false; ) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        let var_1 = global0.wy & ~global1.a.xw;
        if (-194.0 < _wgslsmith_f_op_f32(exp2(global1.b))) {
            let var_2 = Struct_1(global1.a, global1.b, global1.c);
            global1 = func_7(var_2, _wgslsmith_mod_i32(_wgslsmith_div_i32(max(u_input.a, max(global1.c.x, 1)), -60059), u_input.b), -3051, !(!(!false && !false)));
            var var_3 = vec4<i32>(min(-(~arg_0), 8490), -1, max(abs(firstTrailingBit(reverseBits(var_2.c.x))), func_6(select(vec4<u32>(1u, var_1.x, 4294967295u, var_2.a.x), ~vec4<u32>(0u, 1u, u_input.e, 34429u), false), -2147483648, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(424.0 * 609.0) * _wgslsmith_f_op_f32(min(var_2.b, -1306.0))))), 2147483647);
            var var_4 = -1;
            let var_5 = var_2.c.x;
        }
    }
    let var_0 = !(!select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true), all(vec4<bool>(true, true, false, false))), !(!vec4<bool>(false, false, false, false)), _wgslsmith_div_u32(1u, global0.x) <= (20866u << (4294967295u % 32u))));
    let var_1 = -644.0;
    for (var var_2 = -2147483648; (i32(-1) * -abs(_wgslsmith_mult_i32(-2147483648, u_input.b))) <= (16930 & _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 1, u_input.b, 8002), vec4<i32>(u_input.a, -1, 0, 32833) << (global1.a % vec4<u32>(32u))), -(~arg_0))); var_2 -= 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_3 = !vec3<bool>(var_0.x, _wgslsmith_mult_i32(i32(-1) * -2147483648, ~global1.c.x) < arg_0, 1 <= -2147483648);
        var_3 = var_0.zyz;
        global0 = ~vec4<u32>(_wgslsmith_add_u32(7905u, global0.x | select(u_input.d, 53774u, true)), 1u, func_5(u_input.a ^ 63177, Struct_1(vec4<u32>(global0.x, 1u, u_input.d, u_input.c), -781.0, vec3<i32>(1, -30440, arg_0))).x << (u_input.c % 32u), ~_wgslsmith_mult_u32(~global0.x, global0.x));
        var var_4 = _wgslsmith_f_op_f32(-1154.0);
    }
    return Struct_1(func_5(_wgslsmith_div_i32(arg_0, _wgslsmith_mult_i32(global1.c.x, -1)), Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))), global1.c)), _wgslsmith_f_op_f32(-global1.b), global1.c ^ global1.c);
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    global0 = ~vec4<u32>(global1.a.x, u_input.d, u_input.c, ~1u);
    global0 = ~min(global1.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(37668u, global1.a.x, 0u, global0.x), global1.a));
    let var_0 = func_4(_wgslsmith_sub_i32(_wgslsmith_mod_i32(~global1.c.x, ~(global1.c.x >> (1u % 32u))), ~_wgslsmith_sub_i32(~2147483647, -global1.c.x)));
    let var_1 = global1.a.x;
    var var_2 = func_7(func_7(func_7(func_4(global1.c.x ^ u_input.a), -2147483648, _wgslsmith_mod_i32(-global1.c.x, _wgslsmith_mod_i32(var_0.c.x, u_input.a)), true), ~(~(i32(-1) * -2147483648)), select(global1.c.x | func_4(-2147483648).c.x, -28144, any(vec2<bool>(true, true))), !false && false), 6807, ~2147483647, true);
    return var_0.c.x ^ _wgslsmith_dot_vec4_i32(~(-vec4<i32>(25551, 12490, var_2.c.x, -53981)), ~(~(-vec4<i32>(var_2.c.x, -22452, 17924, 0))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global1.a, global1.b, vec3<i32>(-28620, _wgslsmith_clamp_i32(2147483647, ~(-22993), global1.c.x), global1.c.x) & global1.c);
    switch (abs(-99152)) {
        case 13760: {
            let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.b), -283.0);
            var var_2 = 1614.0;
        }
        default: {
            var var_1 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(select(global1.c.x, -26360, true), -var_0.c.x), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -410.0))), countOneBits(var_0.c.x), 0), _wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(global1.c.x, -2147483648, var_0.c.x, global1.c.x)), ~(vec4<i32>(25274, global1.c.x, global1.c.x, var_0.c.x) | vec4<i32>(1, -57919, 26387, -550))));
            for (var var_2 = -4507; all(!vec3<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), any(!vec4<bool>(false, true, true, true)), !true)); var_2 -= 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                continue;
            }
            var_1 = vec4<i32>(~u_input.b, var_0.c.x | _wgslsmith_add_i32(func_4(33116).c.x, 1), -14392, abs(_wgslsmith_mult_i32(-2147483648 << (0u % 32u), 2147483647))) | min(_wgslsmith_add_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-20264, var_0.c.x, u_input.b, var_1.x), vec4<i32>(-51048, u_input.b, -2147483648, u_input.a))), countOneBits(countOneBits(vec4<i32>(u_input.a, var_0.c.x, var_0.c.x, 32119)))), ((vec4<i32>(-1, -91746, 1, 29116) << (vec4<u32>(var_0.a.x, 17629u, 77185u, global1.a.x) % vec4<u32>(32u))) ^ (vec4<i32>(7976, var_1.x, var_0.c.x, 72802) ^ vec4<i32>(-1, u_input.b, var_1.x, 1))) >> (global1.a % vec4<u32>(32u)));
            var_1 = ~(~_wgslsmith_add_vec4_i32(reverseBits(~vec4<i32>(var_1.x, var_0.c.x, global1.c.x, global1.c.x)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(2147483647, 1, 2833, 66709)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, global1.c.x, 0), vec4<i32>(26650, var_1.x, -3109, 0)))));
            var var_2 = min(_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.x, 13290u, global1.a.x, 21399u), ~var_0.a), vec4<u32>(global0.x >> ((57775u & global1.a.x) % 32u), global1.a.x, countOneBits(var_0.a.x), ~34633u) ^ ~vec4<u32>(var_0.a.x, _wgslsmith_sub_u32(u_input.c, 90329u), firstLeadingBit(30218u), 4294967295u | 61110u));
        }
    }
    global1 = func_7(func_4(~_wgslsmith_add_i32(~var_0.c.x, -10614)), global1.c.x, max(63108, _wgslsmith_clamp_i32(i32(-1) * -2147483647, ~(-global1.c.x), var_0.c.x)), true);
    switch (var_0.c.x >> ((11036u ^ var_0.a.x) % 32u)) {
        case 0: {
            var var_1 = Struct_1(~vec4<u32>(global0.x, _wgslsmith_mod_u32(70762u, ~19895u), min(~global1.a.x, global1.a.x), 2267u), _wgslsmith_f_op_f32(ceil(global1.b)), var_0.c);
        }
        case -2147483648: {
            switch (_wgslsmith_mod_i32(func_7(Struct_1(global1.a, _wgslsmith_f_op_f32(-func_4(1).b), vec3<i32>(global1.c.x, ~global1.c.x, _wgslsmith_dot_vec2_i32(global1.c.yx, vec2<i32>(1, 2147483647)))), -31450, var_0.c.x, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)))).c.x, -2147483648)) {
                default: {
                }
            }
            switch (var_0.c.x) {
                default: {
                    let var_1 = var_0;
                    let var_2 = var_1;
                    let var_3 = _wgslsmith_div_u32(~(~17476u), _wgslsmith_add_u32(1u, global0.x));
                    var var_4 = var_2.a >> (var_2.a % vec4<u32>(32u));
                }
            }
            global1 = var_0;
            global1 = Struct_1(global1.a >> (~vec4<u32>(func_5(0, var_0).x, 1u, min(1u, u_input.c), var_0.a.x) % vec4<u32>(32u)), func_4(5746).b, vec3<i32>(func_6(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d, 0u, u_input.e), var_0.a & vec4<u32>(4294967295u, global1.a.x, u_input.d, 44185u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1, u_input.b, global1.c.x, global1.c.x), vec4<i32>(var_0.c.x, 1, -2147483648, 2147483647)), -2147483648), var_0.b), abs(select(35867, max(global1.c.x, global1.c.x), any(vec3<bool>(true, true, false)))), var_0.c.x));
            var var_1 = -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1 & global1.c.x, _wgslsmith_mod_i32(var_0.c.x, u_input.a), ~global1.c.x, -u_input.a), _wgslsmith_mult_vec4_i32(-vec4<i32>(14307, 0, 6857, 2147483647), _wgslsmith_add_vec4_i32(vec4<i32>(global1.c.x, global1.c.x, 13521, var_0.c.x), vec4<i32>(global1.c.x, var_0.c.x, 0, u_input.b)))), ~(u_input.b ^ func_4(-16248).c.x));
        }
        case -1: {
            global1 = var_0;
            global1 = var_0;
            var var_1 = vec2<bool>(any(!vec2<bool>(false, true)) & ((~global1.c.x << ((global1.a.x ^ 4294967295u) % 32u)) > _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.c, vec3<i32>(-96470, 1, var_0.c.x)), global1.c)), !all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), !vec3<bool>(false, true, true), !vec3<bool>(false, true, false))));
            let var_2 = vec4<f32>(var_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000.0 * var_0.b), _wgslsmith_f_op_f32(step(-1309.0, 463.0))), var_0.b)))), _wgslsmith_f_op_f32(abs(-2223.0)), 956.0);
        }
        default: {
            global1 = Struct_1(var_0.a & countOneBits(var_0.a), _wgslsmith_f_op_f32(-global1.b), var_0.c);
            var var_1 = firstTrailingBit(2147483647);
        }
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    return var_0;
}

fn func_8(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(func_3(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1.b)))), _wgslsmith_f_op_f32(arg_0.b * arg_0.b))), _wgslsmith_dot_vec4_i32(arg_1, firstLeadingBit(reverseBits(vec4<i32>(u_input.a, arg_1.x, -2942, 25320)))));
    global0 = vec4<u32>(~(~45662u), _wgslsmith_clamp_u32(13440u, u_input.c, 109370u), reverseBits(u_input.d), _wgslsmith_sub_u32(global1.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global0.x, global1.a.x, 4294967295u) ^ global1.a, arg_0.a >> (arg_0.a % vec4<u32>(32u))), 4294967295u)));
    var var_1 = abs(reverseBits(func_4(var_0).c));
    let var_2 = arg_1 << (arg_0.a % vec4<u32>(32u));
    if (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(73918u, u_input.d)), global0.yy), arg_0.a.yz) != u_input.c) {
        if (0u == ~15583u) {
            global0 = _wgslsmith_sub_vec4_u32(select(~reverseBits(vec4<u32>(45205u, global1.a.x, 30980u, u_input.e) & vec4<u32>(7902u, global1.a.x, global0.x, global0.x)), global1.a, vec4<bool>(false, _wgslsmith_div_f32(arg_0.b, 948.0) >= _wgslsmith_f_op_f32(floor(1000.0)), !true, all(vec2<bool>(true, true)))), vec4<u32>(func_2().a.x, u_input.c >> (u_input.c % 32u), u_input.d, 0u));
            var var_3 = arg_1.zyx;
        }
    }
    return arg_0;
}

fn func_9(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> vec3<i32> {
    var var_0 = min(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -1, 2147483647, global1.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(1, 16326, 0, arg_0.c.x), vec4<i32>(64046, global1.c.x, 2147483647, u_input.b))) | ~select(vec4<i32>(u_input.b, -28188, -2147483648, u_input.b), vec4<i32>(global1.c.x, global1.c.x, -54672, arg_0.c.x), vec4<bool>(arg_1.x, arg_1.x, false, true))), -(_wgslsmith_sub_vec4_i32(-vec4<i32>(1, 2147483647, arg_0.c.x, -16783), vec4<i32>(31991, u_input.a, global1.c.x, 17202)) << (arg_0.a % vec4<u32>(32u))));
    let var_1 = arg_0;
    global1 = arg_0;
    global1 = Struct_1(vec4<u32>(115989u, _wgslsmith_mult_u32(~10691u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u) ^ vec2<u32>(4294967295u, 44932u), vec2<u32>(global0.x, arg_2.x))), func_8(arg_0, countOneBits(-vec4<i32>(-1, u_input.a, 2147483647, var_1.c.x))).a.x, func_4(6953).a.x), _wgslsmith_f_op_f32(var_1.b - global1.b), ~_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(2147483647, u_input.b, u_input.b)), global1.c));
    var_0 = firstTrailingBit(vec4<i32>(2147483647, arg_0.c.x, var_0.x, _wgslsmith_mult_i32(~_wgslsmith_add_i32(var_0.x, 1), countOneBits(_wgslsmith_sub_i32(20141, var_0.x)))));
    return ~(-select(var_0.zyw, vec3<i32>(0 | global1.c.x, i32(-1) * -20395, _wgslsmith_dot_vec3_i32(vec3<i32>(1, global1.c.x, var_1.c.x), global1.c)), arg_0.c.x > 0));
}

fn func_10(arg_0: vec3<i32>, arg_1: f32) -> u32 {
    global0 = _wgslsmith_sub_vec4_u32(global1.a, global1.a);
    let var_0 = global0.x;
    if (!select(any(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(any(vec2<bool>(true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), all(!vec3<bool>(true, false, false))), !any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)))) {
    }
    switch (-2147483648) {
        case 1: {
            if (false) {
                global0 = global1.a;
                global0 = select(global1.a, vec4<u32>(~(~global0.x), 3488u, 1u, global1.a.x), 897.0 != global1.b) | vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), ~15284u), u_input.e, 0u, abs(~(~4294967295u)));
                global1 = func_4(-1556);
                let var_1 = func_8(func_7(func_2(), arg_0.x << (func_4(_wgslsmith_sub_i32(arg_0.x, u_input.a)).a.x % 32u), 0, true), vec4<i32>(abs(_wgslsmith_clamp_i32(global1.c.x, countOneBits(global1.c.x), -24480)), 776, u_input.a, arg_0.x));
            }
            var var_1 = Struct_1(~_wgslsmith_mod_vec4_u32(countOneBits(global1.a), vec4<u32>(func_5(17240, Struct_1(global1.a, -1000.0, global1.c)).x, func_7(Struct_1(global1.a, arg_1, vec3<i32>(global1.c.x, arg_0.x, -27925)), arg_0.x, 0, true).a.x, firstTrailingBit(1u), ~global1.a.x)), func_2().b, vec3<i32>(0, u_input.b, -select(6578, global1.c.x, false)) ^ vec3<i32>(u_input.a, 0 << (_wgslsmith_clamp_u32(u_input.d, u_input.d, 1u) % 32u), -22136));
            switch (min(func_6(vec4<u32>(1u & func_8(Struct_1(global1.a, global1.b, global1.c), vec4<i32>(1, global1.c.x, arg_0.x, u_input.b)).a.x, ~15976u | reverseBits(22411u), func_5(~31149, func_2()).x, u_input.e), 20043, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 1418.0)))), arg_0.x)) {
                case -27869: {
                    global1 = func_8(Struct_1(var_1.a, arg_1, -vec3<i32>(_wgslsmith_mod_i32(global1.c.x, -1), arg_0.x, 45793 << (55032u % 32u))), -(~(~(vec4<i32>(u_input.a, 2147483647, global1.c.x, -17172) & vec4<i32>(u_input.a, global1.c.x, arg_0.x, 1)))));
                    var var_2 = 0u;
                }
                default: {
                    let var_2 = func_2();
                    var var_3 = var_2;
                    let var_4 = ~_wgslsmith_div_i32(-(~(-15483)), var_1.c.x) << (u_input.c % 32u);
                    var var_5 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324.0, -657.0, global1.b, global1.b)), vec4<f32>(-251.0, 278.0, var_1.b, -1530.0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_3.b, global1.b, var_3.b)), vec4<f32>(var_3.b, 1041.0, global1.b, var_3.b))), all(vec2<bool>(true, false)) & true))));
                }
            }
            switch (~(-19182)) {
                default: {
                    global0 = firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(~countOneBits(32575u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.a.zz, global0.yx), vec2<u32>(u_input.e, 21661u) ^ vec2<u32>(u_input.c, 4294967295u)), ~33880u, ~_wgslsmith_mult_u32(var_1.a.x, u_input.c)), ~(global1.a >> (var_1.a % vec4<u32>(32u))) & ~global1.a));
                    global0 = ~_wgslsmith_sub_vec4_u32(var_1.a, _wgslsmith_div_vec4_u32(vec4<u32>(global1.a.x, u_input.e, global1.a.x, 1u), _wgslsmith_clamp_vec4_u32(global1.a, vec4<u32>(4294967295u, u_input.c, 35294u, 0u), global1.a)) >> (_wgslsmith_mod_vec4_u32(abs(var_1.a), _wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(85945u, global0.x, global0.x, 4294967295u), var_1.a)) % vec4<u32>(32u)));
                }
            }
        }
        default: {
            global0 = ~abs(vec4<u32>(reverseBits(u_input.c), _wgslsmith_sub_u32(1u, 1u), u_input.c & 31211u, 1u) << (~global1.a % vec4<u32>(32u)));
            if (global0.x > 1u) {
                global1 = func_4(arg_0.x);
                global1 = func_4(arg_0.x);
                var var_1 = func_8(Struct_1(func_2().a, arg_1, _wgslsmith_mod_vec3_i32(~global1.c, vec3<i32>(1, ~(-2147483648), arg_0.x >> (global0.x % 32u)))), vec4<i32>(_wgslsmith_div_i32(min(32032, _wgslsmith_dot_vec2_i32(vec2<i32>(0, global1.c.x), vec2<i32>(u_input.a, u_input.a))), 9092), ~11388, -arg_0.x, _wgslsmith_sub_i32(global1.c.x, global1.c.x)));
            }
            let var_1 = select(true, !true, true);
        }
    }
    return ~abs(_wgslsmith_sub_u32(~global1.a.x | 24212u, abs(29297u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec3<f32> {
    for (; ; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        let var_0 = Struct_1(~select(global1.a >> (global1.a % vec4<u32>(32u)), vec4<u32>(0u, 0u, ~global0.x, 4294967295u), false), _wgslsmith_f_op_f32(step(-1152.0, global1.b)), ~arg_1.xww);
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            continue;
        }
        loop {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            global0 = _wgslsmith_mod_vec4_u32(global1.a, firstTrailingBit(~var_0.a));
            global0 = vec4<u32>(countOneBits(select(firstTrailingBit(117702u), u_input.e ^ global0.x, select(false, -1102.0 <= -1000.0, global1.b >= global1.b))), func_10(func_9(func_8(func_2(), ~vec4<i32>(arg_1.x, arg_0.x, 1, u_input.a)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))), ~vec4<u32>(0u, global1.a.x, global0.x, 1u), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), !vec4<bool>(true, true, true, true), -274.0 < -180.0)), global1.b), u_input.c, func_2().a.x);
            break;
        }
    }
    if (all(!(!vec3<bool>(false, global1.b >= 933.0, false)))) {
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            continue;
        }
        var var_0 = global0.x;
        global1 = func_7(Struct_1(~countOneBits(select(vec4<u32>(25266u, global1.a.x, 1u, 0u), global1.a, false)), -1209.0, ~func_2().c), firstTrailingBit(max(reverseBits(func_8(Struct_1(global1.a, 834.0, arg_1.xzx), arg_1).c.x), firstLeadingBit(-2147483648))), global1.c.x, true);
    }
    for (var var_0 = 2147483647; var_0 == -1135; global1 = func_2()) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_1 = func_2();
        let var_2 = func_2();
    }
    switch (u_input.b) {
        default: {
            switch (~abs(-24793) | u_input.b) {
                case 2320: {
                    let var_0 = func_4((arg_0.x | firstLeadingBit(-1)) & (select(57367, func_8(Struct_1(vec4<u32>(4294967295u, global1.a.x, u_input.d, 54836u), 1385.0, global1.c), arg_1).c.x, !true) & -global1.c.x));
                    global0 = func_5(~_wgslsmith_mod_i32(abs(62548), -select(-32703, u_input.a, false)), var_0);
                    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(1193.0 + var_0.b), _wgslsmith_mod_vec3_i32(-global1.c, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(51736, arg_1.x, arg_0.x), arg_1.zww), -vec3<i32>(arg_1.x, arg_1.x, arg_0.x)), func_8(Struct_1(vec4<u32>(global1.a.x, var_0.a.x, 0u, global0.x), var_0.b, arg_1.www), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647, u_input.a, -1, 39781), arg_0)).c)));
                }
                default: {
                }
            }
            if (!select(!(!false), !select(false || true, true, false), !(!any(vec2<bool>(false, true))))) {
                let var_0 = func_4(u_input.a);
                var var_1 = any(vec3<bool>((countOneBits(144755u) >> (_wgslsmith_mult_u32(var_0.a.x, 0u) % 32u)) >= global0.x, select(false, select(all(vec3<bool>(false, true, true)), !true, false), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), false));
                let var_2 = ~func_2().a.zy;
            }
            global0 = global1.a;
        }
    }
    switch (1) {
        default: {
        }
    }
    return vec3<f32>(-1212.0, 287.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000.0, _wgslsmith_f_op_f32(-720.0 + global1.b)) * _wgslsmith_f_op_f32(f32(-1.0) * -2020.0))));
}

@compute
@workgroup_size(1)
fn main() {
    switch (u_input.a) {
        default: {
            switch (u_input.b) {
                case -1: {
                    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -426.0) + 1937.0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(449.0, global1.b, global1.b)) * _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(global1.c.x, u_input.a, -27394, 2147483647), vec4<i32>(global1.c.x, u_input.a, 2147483647, -2147483648))))) * vec3<f32>(-1000.0, _wgslsmith_div_f32(1554.0, _wgslsmith_f_op_f32(-910.0)), _wgslsmith_f_op_f32(select(-1000.0, _wgslsmith_f_op_f32(-global1.b), false)))), false));
                    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 141.0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(1701.0 + 264.0)) * func_4(global1.c.x).b)), _wgslsmith_f_op_vec3_f32(func_1(reverseBits(~vec4<i32>(-2147483648, -8693, 0, u_input.a)) ^ select(-vec4<i32>(1, -85722, 0, global1.c.x), vec4<i32>(global1.c.x, 1, u_input.b, -22775) ^ vec4<i32>(u_input.b, u_input.b, global1.c.x, global1.c.x), global1.c.x > -22590), _wgslsmith_add_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(global1.c.x, global1.c.x, -2147483648, u_input.b), vec4<i32>(u_input.b, u_input.b, -1, -1))), max(vec4<i32>(global1.c.x, 30858, 1, 55521), _wgslsmith_sub_vec4_i32(vec4<i32>(16026, 34270, u_input.b, 10796), vec4<i32>(global1.c.x, -24558, 0, 1)))))).x, _wgslsmith_f_op_f32(-var_0.x));
                    return;
                }
                case 44145: {
                    global1 = Struct_1(global1.a, func_8(Struct_1(vec4<u32>(34635u, global1.a.x, ~global1.a.x, global0.x), _wgslsmith_f_op_f32(-global1.b), global1.c), countOneBits(-vec4<i32>(-43701, global1.c.x, global1.c.x, -1)) ^ _wgslsmith_mult_vec4_i32(max(vec4<i32>(-1, u_input.a, u_input.a, u_input.b), vec4<i32>(1890, global1.c.x, -3313, global1.c.x)), abs(vec4<i32>(global1.c.x, 0, -2147483648, global1.c.x)))).b, global1.c);
                }
                default: {
                    global0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.d, u_input.d) | vec3<u32>(u_input.c, global1.a.x, 0u), global0.yzw), _wgslsmith_mod_u32(global1.a.x, _wgslsmith_div_u32(0u, u_input.c)), ~global1.a.x | global1.a.x, ~(~22804u)), select(firstTrailingBit(func_7(Struct_1(vec4<u32>(global0.x, 0u, 4294967295u, global0.x), 1396.0, global1.c), 13326, -10905, false).a), vec4<u32>(3190u, 1u, 4294967295u, global0.x | global1.a.x), false));
                }
            }
            if (_wgslsmith_dot_vec2_i32(~vec2<i32>(0, ~3057), -(vec2<i32>(-45952, 0) | min(vec2<i32>(0, u_input.b), global1.c.yy))) >= (_wgslsmith_dot_vec2_i32(-func_8(Struct_1(global1.a, 271.0, vec3<i32>(u_input.b, global1.c.x, u_input.b)), vec4<i32>(-20178, 9388, 2147483647, 0)).c.xz, global1.c.yy) ^ -global1.c.x)) {
                global1 = Struct_1(~firstTrailingBit(vec4<u32>(1u, ~29750u, _wgslsmith_mult_u32(global1.a.x, u_input.e), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1984.0))))), vec3<i32>(min(2147483647, ~u_input.a) << (~(~4294967295u) % 32u), func_2().c.x & -func_7(Struct_1(global1.a, 786.0, vec3<i32>(u_input.b, global1.c.x, 0)), u_input.a, global1.c.x, false).c.x, u_input.b));
                let var_0 = func_4(u_input.b).c.x;
            }
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_0 = vec3<i32>(u_input.a & u_input.b, func_9(Struct_1(func_7(func_8(Struct_1(vec4<u32>(global1.a.x, 0u, global0.x, 37054u), global1.b, global1.c), vec4<i32>(1, global1.c.x, global1.c.x, u_input.b)), _wgslsmith_sub_i32(global1.c.x, -65059), 19040, select(false, true, false)).a, 1000.0, func_2().c), !vec4<bool>(false, u_input.e < global1.a.x, any(vec4<bool>(false, true, false, true)), true), vec4<u32>(func_5(max(u_input.a, u_input.a), func_8(Struct_1(vec4<u32>(55426u, global0.x, global0.x, global1.a.x), 2580.0, vec3<i32>(u_input.b, 2147483647, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.b, -15791))).x, select(global0.x >> (u_input.e % 32u), firstTrailingBit(4294967295u), false), _wgslsmith_mult_u32(u_input.c, u_input.e), firstLeadingBit(~4294967295u)), !vec4<bool>(true, true, true && true, false)).x, (abs(global1.c.x) & ~(-2910)) | global1.c.x);
            }
        }
    }
    var var_0 = Struct_1(~global1.a, 1618.0, global1.c & vec3<i32>(-1, -9676, global1.c.x));
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var_0 = func_8(func_2(), _wgslsmith_mod_vec4_i32((-vec4<i32>(3212, global1.c.x, -2147483648, global1.c.x) >> (func_5(global1.c.x, Struct_1(var_0.a, 1000.0, vec3<i32>(u_input.b, -527, -17066))) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-1, global1.c.x, -2147483648, -23593), firstLeadingBit(vec4<i32>(-204, 1187, var_0.c.x, var_0.c.x))), abs(select(vec4<i32>(-38385, global1.c.x, var_0.c.x, global1.c.x), -vec4<i32>(var_0.c.x, -7636, global1.c.x, 0), !vec4<bool>(true, true, true, true)))));
        let var_1 = firstLeadingBit(global1.c ^ abs(_wgslsmith_mod_vec3_i32(vec3<i32>(0, var_0.c.x, 2147483647), var_0.c)));
        continue;
    }
    switch (12906) {
        case 0: {
        }
        case -46345: {
        }
        case -8067: {
            global1 = func_8(func_2(), -(max(vec4<i32>(25843, 1, -49657, 27214), max(vec4<i32>(1, var_0.c.x, var_0.c.x, 6477), vec4<i32>(global1.c.x, -1, global1.c.x, 0))) ^ abs(reverseBits(vec4<i32>(26134, var_0.c.x, -1644, global1.c.x)))));
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                continue;
            }
        }
        default: {
            let var_1 = Struct_1(vec4<u32>(~(~1u) ^ 0u, _wgslsmith_mult_u32(abs(func_4(u_input.a).a.x), 1u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.d, 1u, var_0.a.x), _wgslsmith_mult_u32(global0.x, global1.a.x)) & global0.x, _wgslsmith_add_u32(var_0.a.x, _wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_add_u32(1u, 6901u)))), func_2().b, firstLeadingBit(global1.c));
            switch ((((firstTrailingBit(var_1.c.x) & global1.c.x) | 1) & 2147483647) | reverseBits(-_wgslsmith_sub_i32(-1, var_1.c.x))) {
                case 46183: {
                    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().b * _wgslsmith_f_op_f32(trunc(global1.b)))), var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-165.0, global1.b)))))));
                    var_0 = Struct_1(firstTrailingBit(abs(var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + var_0.b) - var_2.x)) * global1.b), var_0.c);
                    var var_3 = 31414u;
                    var_3 = 61307u;
                    global0 = func_2().a;
                }
                case -20952: {
                    var var_2 = !select(!false, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), true);
                    var var_3 = Struct_1(func_2().a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))))), var_0.c);
                    var var_4 = var_1;
                }
                case 1: {
                    let var_2 = var_1.a.x;
                    var var_3 = vec2<i32>(-31326, 0);
                    var var_4 = global1.a;
                }
                case 0: {
                    let var_2 = select(select(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)), select(vec4<bool>(any(vec3<bool>(false, false, false)), true, !false, false && true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(!true, true, global1.a.x < 0u, any(vec2<bool>(false, false)))), false), vec4<bool>(true, all(vec4<bool>(any(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, false)), false, true)), false, !(!any(vec3<bool>(false, true, true)))), !(!vec4<bool>(false, true || true, true, !true)));
                    global1 = func_7(Struct_1(~_wgslsmith_mult_vec4_u32(global1.a >> (vec4<u32>(47192u, global1.a.x, global1.a.x, 12179u) % vec4<u32>(32u)), ~vec4<u32>(0u, u_input.c, 0u, 10902u)), global1.b, -firstLeadingBit(global1.c >> (var_0.a.wxw % vec3<u32>(32u)))), func_9(var_1, vec4<bool>(all(var_2) && false, true, any(!vec2<bool>(false, false)), true), _wgslsmith_clamp_vec4_u32(~select(global1.a, vec4<u32>(global0.x, 17810u, global1.a.x, 1u), vec4<bool>(true, false, true, false)), ~var_1.a | ~var_1.a, _wgslsmith_mod_vec4_u32(global1.a, vec4<u32>(global0.x, u_input.c, global0.x, global0.x))), !select(vec4<bool>(false, false, var_2.x, var_2.x), !var_2, vec4<bool>(false, var_2.x, var_2.x, var_2.x))).x, max(u_input.a, 17532), !true);
                    let var_3 = var_1;
                    var_0 = var_3;
                    let var_4 = Struct_1(vec4<u32>(101537u, _wgslsmith_mult_u32(func_2().a.x, 4294967295u | var_0.a.x), var_3.a.x, 62053u), global1.b, func_4(firstTrailingBit(global1.c.x)).c);
                }
                default: {
                    return;
                }
            }
            switch (select(-12001, _wgslsmith_mult_i32(25770, -2147483647), all(vec4<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true)), !false, true, false)))) {
                default: {
                    var_0 = func_7(Struct_1(~func_7(var_1, global1.c.x, -2147483648, !true).a, var_1.b, vec3<i32>(-(~(-41667)), _wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(var_1.c.x, 0, global1.c.x)) ^ -16300, _wgslsmith_mod_i32(global1.c.x, -var_0.c.x))), ~global1.c.x, max(22517, ~(i32(-1) * -u_input.b)), !(var_0.c.x > -1011));
                    var_0 = var_1;
                    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(22105u, 0u), 4294967295u), ~global1.a.x, u_input.e), func_2().a.yzw);
                }
            }
            let var_2 = any(select(vec4<bool>(select(false, any(vec2<bool>(true, true)), false), !(!true), !any(vec2<bool>(false, true)), firstTrailingBit(0u) >= 0u), !(!(!vec4<bool>(false, true, false, true))), false));
            var var_3 = var_0.b;
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(1, func_4(0 | -_wgslsmith_mod_i32(global1.c.x, 0)).a.x, vec4<i32>(-2147483648, -15900, func_6(vec4<u32>(func_10(var_0.c, 319.0), _wgslsmith_sub_u32(global1.a.x, u_input.d), u_input.e, 58615u & global0.x), func_6(vec4<u32>(107058u, var_0.a.x, global0.x, var_0.a.x), 2147483647, _wgslsmith_f_op_f32(-var_0.b)), -429.0), ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1.c.zz, vec2<i32>(u_input.b, u_input.a)), 0)), var_0.c.x >> (4294967295u % 32u), _wgslsmith_div_u32(var_0.a.x, _wgslsmith_clamp_u32(1u & _wgslsmith_add_u32(32744u, 4294967295u), u_input.e, var_0.a.x)));
}

