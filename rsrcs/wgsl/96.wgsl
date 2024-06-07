// {"0:0":[200,119,78,146,168,218,77,101,211,42,177,113,119,11,21,152]}
// Seed: 9373115901605073762

struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(0u, 0u, 1u, 32111u, 0u, 1u, 4294967295u, 76747u, 1u, 12669u, 1u, 16056u, 0u, 43339u, 1u, 4294967295u, 4294967295u, 4294967295u, 1u, 4294967295u, 51370u, 0u, 60909u, 1u);

var<private> LOOP_COUNTERS: array<u32, 15>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
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

fn func_6(arg_0: vec2<bool>, arg_1: vec4<f32>) -> vec2<f32> {
    switch (u_input.b) {
        case 21577: {
            let var_0 = vec4<i32>(_wgslsmith_mod_i32(abs(i32(-1) * -2147483648), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-1, u_input.b, -1)), ~vec3<i32>(-2147483648, u_input.a.x, u_input.a.x))), u_input.b, reverseBits(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), -15277) << (_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41407u, 24u)], 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], 11671u) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 18796u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30768u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u, 5556u, 28556u), vec4<u32>(15179u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65461u, 24u)], 24u)], 75208u)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 10878u, 0u, 72106u)), select((vec4<u32>(710u, 60743u, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)]) | vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74021u, 24u)], 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)])) | _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(13692u, 24u)], 4294967295u, 24289u, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14039u, 24u)], 24u)], 24u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)])), ~reverseBits(vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 24u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(126230u, 24u)], 24u)])), !vec4<bool>(false, false, true, arg_0.x))) % vec4<u32>(32u));
            let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.xz);
            global0 = array<u32, 24>();
            global0 = array<u32, 24>();
        }
        default: {
            switch (1) {
                case 10617: {
                }
                default: {
                    let var_0 = !(!select(vec2<bool>(arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, false, true))), vec2<bool>(all(arg_0), !true), select(arg_0, vec2<bool>(false, arg_0.x), !arg_0.x)));
                    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1.0) * -662.0), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-862.0, arg_1.x, -632.0, arg_1.x))))));
                }
            }
            switch (~(~(~(-2147483648)) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(~0u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74344u, 24u)], 24u)], 24u)]), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(51607u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(89364u, 24u)], 24u)], 24u)]) | _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(33512u, 24u)], global0[_wgslsmith_index_u32(14364u, 24u)])) % 32u))) {
                case -24834: {
                }
                case -22493: {
                    global0 = array<u32, 24>();
                    global0 = array<u32, 24>();
                }
                case -2147483648: {
                    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x))), arg_1.x));
                    var var_1 = _wgslsmith_f_op_f32(-630.0 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1183.0)) + _wgslsmith_f_op_f32(floor(-1157.0)))))));
                    global0 = array<u32, 24>();
                }
                case 7434: {
                    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(round(572.0)), _wgslsmith_f_op_f32(-arg_1.x))), ~(~vec2<u32>(3541u, 18801u >> (global0[_wgslsmith_index_u32(69275u, 24u)] % 32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, arg_1.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(11614u, 24u)] & 4294967295u, global0[_wgslsmith_index_u32(~4294967295u, 24u)], _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(22726u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31304u, 24u)], 24u)]), 20406u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(32332u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37426u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 56665u), max(vec4<u32>(856u, 1u, 74201u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4637u, 24u)], 24u)], 0u, global0[_wgslsmith_index_u32(0u, 24u)], 0u)), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u, 2944u)))));
                }
                default: {
                    var var_0 = abs(countOneBits(~min(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 0u, global0[_wgslsmith_index_u32(0u, 24u)]), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(132517u, 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(15774u, 24u)]))));
                    global0 = array<u32, 24>();
                    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1248.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), -248.0, arg_1.x);
                    var_0 = abs(~(vec3<u32>(26444u, 33182u, 9343u) >> (~vec3<u32>(0u, var_0.x, 1u) % vec3<u32>(32u)))) << (_wgslsmith_add_vec3_u32(select(select(vec3<u32>(var_0.x, 4294967295u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(5627u, 24u)], var_0.x, 41326u), true), vec3<u32>(77884u, 0u, 15576u), false) << (vec3<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(37350u, 4294967295u), vec2<u32>(var_0.x, 4294967295u)), 28439u) % vec3<u32>(32u)), vec3<u32>(31313u & var_0.x, ~0u, var_0.x) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 1u, 42983u), vec3<u32>(99879u, 33848u, var_0.x))) % vec3<u32>(32u));
                    global0 = array<u32, 24>();
                }
            }
            var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)));
            let var_1 = arg_0;
            switch (_wgslsmith_div_i32(~u_input.b ^ ~u_input.b, _wgslsmith_dot_vec4_i32(firstLeadingBit(firstTrailingBit(~vec4<i32>(-1, u_input.b, 1836, u_input.a.x))), vec4<i32>(-2382, u_input.b | u_input.a.x, 0, _wgslsmith_mod_i32(0, 2147483647)) & -_wgslsmith_div_vec4_i32(vec4<i32>(-4101, u_input.a.x, 1376, u_input.b), vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, -2147483648))))) {
                case -45647: {
                    var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -577.0);
                    let var_2 = Struct_2(arg_1.x, vec4<f32>(1098.0, 872.0, _wgslsmith_f_op_f32(-arg_1.x), -2303.0));
                    global0 = array<u32, 24>();
                    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -623.0))) * -517.0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)));
                }
                case 2147483647: {
                    let var_2 = var_1;
                    var_0 = arg_1.x;
                    var var_3 = ~countOneBits(~(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)]) >> (vec2<u32>(81218u, 32772u) % vec2<u32>(32u)))) | vec2<u32>(107105u, global0[_wgslsmith_index_u32(countOneBits(~(~0u)), 24u)]);
                    var_3 = ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.x, 0u), select(vec2<u32>(0u, 1u), vec2<u32>(var_3.x, var_3.x), var_1.x))));
                }
                default: {
                    var_0 = -423.0;
                    global0 = array<u32, 24>();
                    let var_2 = 1131.0 >= 863.0;
                }
            }
        }
    }
    var var_0 = select(~(-firstLeadingBit(-u_input.a.x)), _wgslsmith_dot_vec4_i32(select(min(vec4<i32>(0, 32540, u_input.b, 11550), vec4<i32>(730, u_input.b, u_input.b, u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(-3101, u_input.b, 0, u_input.b), vec4<i32>(-5328, -10353, 2147483647, u_input.a.x)), vec4<bool>(any(vec4<bool>(true, arg_0.x, true, false)), !arg_0.x, true, select(arg_0.x, arg_0.x, arg_0.x))), select(-firstTrailingBit(vec4<i32>(u_input.a.x, 1, u_input.b, 29855)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, 2506u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64740u, 24u)], 24u)], 24u)], 24u)], 24u)], 0u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.a.x, 43862, u_input.a.x, u_input.b)), vec4<i32>(2958, 0, u_input.b, u_input.a.x) | vec4<i32>(22470, u_input.a.x, 27501, u_input.b)), all(vec2<bool>(arg_0.x, arg_0.x)))), arg_0.x);
    global0 = array<u32, 24>();
    var_0 = (-1 >> ((global0[_wgslsmith_index_u32(43100u, 24u)] << (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]) % 32u)) % 32u)) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(82744u, 24u)], 24u)], global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 24u)]), 24u)] | ~(~global0[_wgslsmith_index_u32(0u, 24u)]), 24u)] % 32u);
    var var_1 = all(vec2<bool>(!(!false), arg_0.x));
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x - -683.0))))), -1706.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -774.0))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_div_vec2_f32(arg_2.b.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 24u)] >= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)]), arg_2.b))));
    global0 = array<u32, 24>();
    var var_1 = -1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 535.0, -1792.0), arg_2.b.xwx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, -302.0, arg_2.b.x)) - vec3<f32>(arg_1, -112.0, arg_2.b.x)), !false)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.b.x, var_0.x, arg_0.b.x))) * _wgslsmith_f_op_vec3_f32(-arg_2.b.yzy)) * vec3<f32>(arg_1, _wgslsmith_f_op_f32(322.0 + arg_0.a), _wgslsmith_f_op_f32(-arg_1)))), vec2<u32>(~global0[_wgslsmith_index_u32(max(4294967295u, global0[_wgslsmith_index_u32(abs(1u), 24u)]), 24u)], firstLeadingBit(4294967295u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1.0) * -445.0)) + _wgslsmith_div_f32(arg_2.a, 1857.0)))), 91651u);
    global0 = array<u32, 24>();
    return vec4<u32>(var_2.d, select(var_2.d, 23484u, ~var_2.b.x < _wgslsmith_add_u32(_wgslsmith_div_u32(42309u, 4294967295u), 0u)), ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~76428u), _wgslsmith_mult_u32(1u | 1u, 1u)), 24u)], ~(~var_2.d));
}

fn func_7(arg_0: vec4<i32>) -> vec4<bool> {
    for (var var_0 = 0; var_0 >= 5733; var_0 += 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        switch (_wgslsmith_dot_vec2_i32(-abs(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, arg_0.xyw), _wgslsmith_dot_vec4_i32(vec4<i32>(0, arg_0.x, 0, 2147483647), arg_0))), vec2<i32>(-u_input.a.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -15650) | _wgslsmith_mult_i32(-24896, 1))))) {
            case -20862: {
                var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-831.0))), _wgslsmith_f_op_f32(982.0 + _wgslsmith_f_op_f32(-932.0 - 1630.0)), -814.0))), ~(~abs(vec2<u32>(19374u, 4303u)) << (vec2<u32>(~751u, global0[_wgslsmith_index_u32(7205u, 24u)] | global0[_wgslsmith_index_u32(0u, 24u)]) % vec2<u32>(32u))), _wgslsmith_f_op_f32(trunc(-748.0)), 0u);
                var var_2 = !true;
            }
            case -23651: {
                break;
            }
            case -2147483648: {
                let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-218.0, -1707.0)), _wgslsmith_div_f32(666.0, -735.0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000.0 + 465.0), _wgslsmith_f_op_f32(590.0 - 442.0))), -130.0)), vec2<u32>(_wgslsmith_add_u32(45321u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~126665u, 24u)], 24u)], 24u)]), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1163.0)), ~(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32128u, 24u)], 24u)], 24u)], 24u)] << (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15943u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)] % 32u)) ^ _wgslsmith_add_u32(5265u, 1u | global0[_wgslsmith_index_u32(~0u, 24u)]));
                return vec4<bool>(true, !true, false, select(!(!false), !(!(false & false)), false));
            }
            case 1: {
                let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2284.0, 977.0, 315.0, 161.0)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-225.0, -123.0, -1000.0, -591.0)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1466.0, -1017.0, 262.0, -320.0)))))));
                continue;
            }
            default: {
                let var_1 = countOneBits(~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(17736u, 60259u, 1u)), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 0u, 1u))) & min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15295u >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)] % 32u), 24u)], 24u)], ~(~0u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(41439u, global0[_wgslsmith_index_u32(150219u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72546u, 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79270u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(14228u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35419u, 24u)], 24u)], 24u)], 24u)], 24u)])), abs(vec3<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 13166u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)])))), ~min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(3666u, 24u)], global0[_wgslsmith_index_u32(12163u, 24u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(40626u, global0[_wgslsmith_index_u32(1u, 24u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(32244u, 24u)], 19899u, global0[_wgslsmith_index_u32(6830u, 24u)]))));
                global0 = array<u32, 24>();
            }
        }
        break;
    }
    for (var var_0: i32; ; var_0 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1166.0, -1404.0, -1410.0)))) + vec3<f32>(_wgslsmith_f_op_f32(max(253.0, 112.0)), _wgslsmith_f_op_f32(1000.0 * 773.0), _wgslsmith_f_op_f32(-966.0))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1781.0, 726.0, -670.0))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-765.0, -545.0, -572.0))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(-179.0)), _wgslsmith_f_op_f32(-287.0), _wgslsmith_f_op_f32(sign(-298.0)))))), !any(!vec3<bool>(false, true, false))));
            var_0 = max(_wgslsmith_mod_i32(-58404, ~2147483647), firstTrailingBit(max(countOneBits(arg_0.x), _wgslsmith_mult_i32(~arg_0.x, arg_0.x << (global0[_wgslsmith_index_u32(0u, 24u)] % 32u)))));
            var_0 = 2147483647;
        }
        let var_1 = 19937u ^ global0[_wgslsmith_index_u32(~0u, 24u)];
        var var_2 = u_input.a.yx;
    }
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    return select(select(select(vec4<bool>(true == true, any(vec4<bool>(false, false, true, false)), !false, all(vec3<bool>(false, true, true))), vec4<bool>(false, true, !false, !false), !true), !(!vec4<bool>(true, false, false, false)), vec4<bool>(false, all(!vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-1071.0 * 1722.0) < _wgslsmith_f_op_f32(round(-2226.0)), !all(vec4<bool>(true, true, false, true)))), !select(!vec4<bool>(false, false, false, true), vec4<bool>(!true, all(vec4<bool>(false, false, false, false)), true, true | true), _wgslsmith_sub_u32(0u, 84908u) <= global0[_wgslsmith_index_u32(1u ^ 1u, 24u)]), select(!vec4<bool>(!false, any(vec3<bool>(false, true, true)), any(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, true))), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), !false), true));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    if (true) {
    }
    var var_0 = max(countOneBits(-2147483648) << (~select(global0[_wgslsmith_index_u32(arg_1.b.x, 24u)], 1u, false) % 32u), ~firstLeadingBit(_wgslsmith_div_i32(u_input.b, u_input.a.x))) >> (~reverseBits(countOneBits(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91552u, 24u)], 24u)], 24u)], 24u)], 24u)])) % 32u);
    global0 = array<u32, 24>();
    for (; _wgslsmith_f_op_f32(ceil(-1552.0)) > -787.0; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    global0 = array<u32, 24>();
    return select(func_7(~(vec4<i32>(-1, u_input.a.x, -12633, 1) >> (vec4<u32>(arg_1.b.x, 4294967295u, arg_1.d, arg_1.d) % vec4<u32>(32u))) >> (~func_5(Struct_2(arg_2, vec4<f32>(arg_2, -1224.0, arg_1.a.x, -436.0)), arg_2, Struct_2(arg_1.c, vec4<f32>(-538.0, -743.0, arg_1.a.x, arg_1.a.x))) % vec4<u32>(32u))), vec4<bool>(true, !false, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), select(global0[_wgslsmith_index_u32(arg_1.d, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], true)) >= _wgslsmith_sub_u32(func_5(Struct_2(1815.0, vec4<f32>(arg_0.x, 1017.0, arg_1.c, 1083.0)), arg_2, Struct_2(758.0, arg_0)).x, ~arg_1.d), -30279 <= (6576 ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483648, -1, 68935), vec4<i32>(0, u_input.b, u_input.a.x, 0)))), vec4<bool>(true, (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 37307u, 0u, global0[_wgslsmith_index_u32(arg_1.b.x, 24u)]), vec4<u32>(global0[_wgslsmith_index_u32(arg_1.d, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], arg_1.b.x, 0u)) > arg_1.b.x) || any(func_7(vec4<i32>(1, u_input.a.x, 6799, u_input.b)).xxy), !(!(!true)), any(!func_7(vec4<i32>(u_input.a.x, 1, u_input.b, u_input.b)).zy)));
}

fn func_8(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    return 0;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_add_i32(arg_1, _wgslsmith_clamp_i32(func_8(Struct_2(_wgslsmith_f_op_f32(-177.0 + arg_3.a), arg_3.b), _wgslsmith_f_op_f32(-2141.0), select(vec4<bool>(false, true, true, false), func_4(arg_3.b, arg_0, arg_3.b.x), !true)), firstLeadingBit(-13577), ~(~u_input.a.x)));
    let var_1 = ~(~countOneBits(u_input.a.yx));
    var var_2 = arg_3;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(func_6(vec2<bool>(!(global0[_wgslsmith_index_u32(arg_0.d, 24u)] <= arg_2.x), !any(vec3<bool>(true, true, false))), _wgslsmith_f_op_vec4_f32(-arg_3.b))).x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1766.0, -604.0, -1266.0, 942.0))) - arg_3.b)))));
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_4 = Struct_1(arg_3.b.wyx, firstLeadingBit(vec2<u32>(firstTrailingBit(arg_0.d), 0u ^ 1u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.x, 15067u) >> (arg_0.b % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(arg_2, arg_0.b))), var_3.b.x, min(arg_2.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~4294967295u, 36800u), _wgslsmith_sub_u32(~arg_2.x, arg_0.d)), 24u)]));
        break;
    }
    return 884.0;
}

fn func_2() -> Struct_1 {
    var var_0 = ~2147483647;
    let var_1 = reverseBits(~firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 3885u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), vec3<u32>(global0[_wgslsmith_index_u32(75183u, 24u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]))));
    var_0 = u_input.a.x;
    if (any(!(!(!(!vec2<bool>(true, true)))))) {
        var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1080.0))) - 1000.0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1242.0) + _wgslsmith_f_op_f32(max(540.0, -330.0)))))));
        var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -561.0)), 1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-771.0) + _wgslsmith_f_op_f32(-788.0 + -2506.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(261.0, 990.0, -185.0) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(286.0, -1713.0, -3268.0), vec3<f32>(-1548.0, -240.0, 1328.0), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-365.0, 505.0, -381.0)))))), var_1.yz, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(264.0, 184.0, 2096.0)), var_1.xy, _wgslsmith_f_op_f32(ceil(1139.0)), _wgslsmith_dot_vec3_u32(var_1, _wgslsmith_sub_vec3_u32(var_1, vec3<u32>(global0[_wgslsmith_index_u32(var_1.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u)))), u_input.b, reverseBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 24u)])), Struct_2(_wgslsmith_f_op_f32(f32(-1.0) * -690.0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1212.0, 193.0, -1000.0, -919.0)))))), _wgslsmith_sub_u32(6755u, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(50136u), select(var_1.x, global0[_wgslsmith_index_u32(46865u, 24u)], false)), vec2<u32>(~11886u, max(var_1.x, global0[_wgslsmith_index_u32(0u, 24u)])))));
        var var_4 = u_input.b | -2147483648;
        switch (-2147483648) {
            case -9796: {
                var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.c, var_3.c))), var_3.a.x) - _wgslsmith_f_op_vec3_f32(-var_3.a)), select(min(select(func_5(Struct_2(1484.0, vec4<f32>(-1535.0, -510.0, 378.0, -1103.0)), 418.0, Struct_2(-107.0, vec4<f32>(var_3.a.x, var_3.c, var_3.a.x, -1000.0))).yy, ~var_1.yy, true), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 24u)]), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(var_1.x, 24u)], 119145u)))), vec2<u32>(select(~var_1.x, _wgslsmith_dot_vec3_u32(var_1, var_1), select(true, false, false)), reverseBits(12715u | 4294967295u)), vec2<bool>(any(func_7(vec4<i32>(40926, u_input.b, u_input.b, 2147483647)).zxw), func_7(-vec4<i32>(u_input.b, u_input.b, -36975, 1)).x)), _wgslsmith_f_op_f32(ceil(1000.0)), 0u | _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.d, 24u)] >> (var_3.d % 32u), 24u)] << (global0[_wgslsmith_index_u32(1u << (var_3.b.x % 32u), 24u)] % 32u)));
            }
            case 58663: {
            }
            case 1: {
                var var_5 = (57089u << (var_3.d % 32u)) ^ _wgslsmith_mult_u32(50398u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_3.d, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 24u)], 24u)], 24u)]), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 0u), ~45609u)));
                var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, var_3.c, 103.0) + var_3.a) * vec3<f32>(var_3.a.x, var_3.c, var_3.c)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_3.a, vec3<f32>(434.0, var_3.a.x, 377.0)), vec3<f32>(2894.0, 1535.0, 560.0), !true)))), vec2<u32>(var_1.x, _wgslsmith_mod_u32(4294967295u, ~(~1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3.c)), _wgslsmith_f_op_f32(select(var_3.a.x, var_3.c, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1244.0), _wgslsmith_f_op_f32(abs(var_3.c))))))), _wgslsmith_dot_vec3_u32(countOneBits(~func_5(Struct_2(531.0, vec4<f32>(826.0, var_3.c, var_3.a.x, -175.0)), 280.0, Struct_2(var_3.a.x, vec4<f32>(439.0, var_3.c, -723.0, 156.0))).yzw), var_1));
                var_5 = ~(_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(var_3.d, global0[_wgslsmith_index_u32(var_1.x, 24u)] ^ 4294967295u)) | firstTrailingBit(var_1.x));
            }
            default: {
                global0 = array<u32, 24>();
                let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a)))), ~var_3.b | abs(~vec2<u32>(global0[_wgslsmith_index_u32(32111u, 24u)], var_1.x)), _wgslsmith_f_op_f32(-var_3.c), ~(~0u));
                let var_6 = var_5;
                var_0 = _wgslsmith_dot_vec3_i32(u_input.a, u_input.a);
                let var_7 = firstTrailingBit(countOneBits(u_input.a.x));
            }
        }
    }
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1802.0)) * _wgslsmith_f_op_f32(-1556.0 * _wgslsmith_f_op_f32(f32(-1.0) * -1301.0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1083.0 * -590.0) - _wgslsmith_f_op_f32(-1456.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -110.0)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(139.0 - 802.0))))), 853.0)), u_input.a.x <= ~(-u_input.a.x)));
    return Struct_1(vec3<f32>(var_2, _wgslsmith_f_op_f32(1438.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1786.0))), _wgslsmith_f_op_f32(f32(-1.0) * -774.0)), ~((var_1.yz & ~var_1.xy) >> (var_1.yz % vec2<u32>(32u))), var_2, ~_wgslsmith_mod_u32(max(abs(4294967295u), 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.x, var_1.x), ~global0[_wgslsmith_index_u32(0u, 24u)])));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    switch (-2147483648) {
        case -45585: {
            return func_2();
        }
        default: {
            let var_0 = func_2();
        }
    }
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        switch (func_8(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(583.0, _wgslsmith_f_op_f32(select(333.0, 1566.0, true))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(113.0, -430.0, -1066.0, 1981.0), vec4<f32>(858.0, 1696.0, 1516.0, -162.0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1073.0, 448.0, 1378.0, 963.0))) * _wgslsmith_div_vec4_f32(vec4<f32>(-206.0, -468.0, 839.0, 1150.0), vec4<f32>(-2927.0, -1214.0, -1107.0, -546.0))), (false | true) && !true))), _wgslsmith_f_op_f32(floor(-2518.0)), !vec4<bool>(!(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31812u, 24u)], 24u)], 24u)], 24u)] <= global0[_wgslsmith_index_u32(1u, 24u)]), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), !func_7(vec4<i32>(arg_1, -19596, arg_0, -5917)).x, any(vec2<bool>(true, true))))) {
            case -56880: {
            }
            default: {
                break;
            }
        }
        global0 = array<u32, 24>();
        if (any(select(vec2<bool>(false, false), !(!(!vec2<bool>(true, false))), func_4(vec4<f32>(_wgslsmith_f_op_f32(-1005.0 - 2335.0), _wgslsmith_div_f32(952.0, 824.0), 1241.0, -532.0), Struct_1(vec3<f32>(-969.0, -1148.0, 368.0), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 4294967295u), _wgslsmith_f_op_f32(f32(-1.0) * -1445.0), func_2().b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366.0 - 609.0) * _wgslsmith_f_op_f32(f32(-1.0) * -688.0))).ww))) {
            global0 = array<u32, 24>();
            let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000.0)) + _wgslsmith_f_op_f32(f32(-1.0) * -1023.0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(129.0, -1111.0, 667.0, 1000.0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-518.0, 555.0, 1505.0, -1000.0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(184.0, 1801.0, 839.0, -603.0), vec4<f32>(1453.0, 1000.0, -987.0, 572.0))))));
            global0 = array<u32, 24>();
        }
        global0 = array<u32, 24>();
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        switch (_wgslsmith_mult_i32((2147483647 | func_8(Struct_2(-2043.0, vec4<f32>(421.0, 610.0, 3122.0, 268.0)), _wgslsmith_f_op_f32(-1960.0 + 896.0), !vec4<bool>(false, true, true, false))) | -25371, arg_1)) {
            case 1: {
                break;
            }
            case -18439: {
                global0 = array<u32, 24>();
                break;
            }
            default: {
                let var_0 = 0u;
                var var_1 = ~_wgslsmith_mod_vec4_u32((~vec4<u32>(22997u, 1u, 1u, 27960u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_0, global0[_wgslsmith_index_u32(27775u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], 1008u), vec4<u32>(var_0, var_0, 4294967295u, var_0))) & firstTrailingBit(func_5(Struct_2(-803.0, vec4<f32>(-509.0, 171.0, 115.0, -269.0)), -1448.0, Struct_2(-1826.0, vec4<f32>(215.0, -926.0, 1000.0, 430.0)))), vec4<u32>(~var_0, var_0, global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(var_0, 24u)]), 24u)], ~(~4006u)));
                let var_2 = vec2<i32>(u_input.b >> (50654u % 32u), countOneBits(arg_1));
            }
        }
        switch (min(min(countOneBits(arg_1), arg_1), -8926)) {
            case -15755: {
                global0 = array<u32, 24>();
                global0 = array<u32, 24>();
            }
            default: {
                var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(229.0)) + -411.0);
                global0 = array<u32, 24>();
                var var_1 = 1 & ~arg_1;
            }
        }
    }
    switch (0) {
        case -11887: {
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1447.0)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(454.0, 1461.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567.0 + 1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(340.0, 154.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117.0))))));
                let var_1 = abs(min(firstTrailingBit(max(_wgslsmith_clamp_vec2_i32(u_input.a.yz, u_input.a.zx, vec2<i32>(arg_0, u_input.b)), ~vec2<i32>(arg_1, u_input.b))), _wgslsmith_sub_vec2_i32(u_input.a.xy | ~u_input.a.zz, vec2<i32>(-12110, _wgslsmith_mult_i32(1, u_input.b)))));
                continue;
            }
        }
        case -14334: {
            for (var var_0 = 2147483647; var_0 < 1; var_0 += 1) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_1 = arg_1;
                break;
            }
        }
        case -90759: {
            let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -581.0)) - -813.0)), _wgslsmith_f_op_f32(1718.0 * -755.0), _wgslsmith_f_op_f32(round(-568.0)), _wgslsmith_f_op_f32(min(-100.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-784.0)), -1000.0)))));
        }
        case -1: {
            let var_0 = arg_0;
        }
        default: {
            var var_0 = vec3<u32>(57738u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~85493u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)] ^ 1u), 24u)], min(~12903u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)])), _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(~4294967295u, 24u)], 109223u), vec2<u32>(_wgslsmith_sub_u32(1u, 72564u), 29317u))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(44275u, 4294967295u), 24u)] | 33574u), 24u)], 24u)], 24u)], 24u)]);
            let var_1 = false;
            var var_2 = 19525u;
            for (var var_3 = -36560; ; var_3 -= 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_0 = func_2();
        var var_1 = -16399;
        global0 = array<u32, 24>();
    }
    return func_2();
}

fn func_9(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    for (var var_0 = -42708; var_0 == 2147483647; var_0 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        global0 = array<u32, 24>();
    }
    switch (max(2356, max(u_input.b, func_8(Struct_2(arg_0.c, vec4<f32>(362.0, arg_0.c, -1059.0, 1601.0)), 821.0, !vec4<bool>(false, false, false, false))) & u_input.a.x)) {
        case -1: {
            if (true) {
                var var_0 = Struct_2(569.0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-310.0), -3574.0, _wgslsmith_f_op_f32(arg_1 * 878.0)), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, -199.0, false)), _wgslsmith_f_op_f32(trunc(-501.0)), _wgslsmith_f_op_f32(step(2993.0, arg_1)), -249.0), any(!vec2<bool>(false, false)))) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.c - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(764.0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1548.0, -652.0)), -791.0)));
                var var_1 = !vec2<bool>(!(true || true), !true || !true);
                global0 = array<u32, 24>();
                let var_2 = arg_0.b;
                var var_3 = _wgslsmith_f_op_vec4_f32(-var_0.b);
            }
        }
        case 2147483647: {
            var var_0 = u_input.b;
        }
        default: {
            var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a, arg_0.a)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.x, arg_0.d), vec2<u32>(global0[_wgslsmith_index_u32(21861u, 24u)], 3835u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648.0) + func_2().a.x), _wgslsmith_div_u32(53137u, 4294967295u)), u_input.a.x, vec2<u32>(func_1(u_input.b, _wgslsmith_add_i32(-21342, u_input.a.x)).b.x, global0[_wgslsmith_index_u32(17730u, 24u)]), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 954.0)), vec4<f32>(_wgslsmith_f_op_vec2_f32(func_6(vec2<bool>(true, false), vec4<f32>(398.0, arg_0.a.x, 577.0, 530.0))).x, 843.0, -1113.0, arg_1)))));
            let var_1 = (61528u << (arg_0.b.x % 32u)) ^ _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~arg_0.b.x, 24u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.b.x, arg_0.d), arg_0.b), 109564u), 24u)], 24u)], 24u)], (_wgslsmith_add_u32(1u, arg_0.d) & min(1u, global0[_wgslsmith_index_u32(1u, 24u)])) ^ func_5(Struct_2(457.0, vec4<f32>(arg_0.a.x, arg_1, 1597.0, arg_1)), arg_0.c, Struct_2(arg_0.c, vec4<f32>(arg_0.a.x, arg_1, arg_0.a.x, arg_1))).x);
            let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(-50230) >> (14995u % 32u), u_input.b & _wgslsmith_mult_i32(-2147483648, u_input.b)) ^ vec2<i32>(-39309, 10229), u_input.a.zz);
        }
    }
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        }
        var var_0 = func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(arg_0.a.x, arg_1), _wgslsmith_f_op_f32(-174.0 + arg_1), arg_1, _wgslsmith_f_op_f32(trunc(607.0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(909.0, arg_0.c)), arg_0.c, -847.0, _wgslsmith_f_op_f32(arg_0.c + 1000.0))))), arg_0, -384.0);
    }
    global0 = array<u32, 24>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1, -1172.0, false)))) - arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 205.0, -1455.0, 1110.0))))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - 1767.0), arg_0.a.x)), arg_0.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x | -2147483648, 8110), vec3<i32>(reverseBits(-22075), max(41363, u_input.b), min(15027, u_input.b))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(38142u, 24u)], arg_0.d, 65134u)) ^ vec3<u32>(arg_0.b.x >> (0u % 32u), 94373u | 17634u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79562u, 24u)], 24u)], 24u)]), firstLeadingBit(select(select(vec3<u32>(9866u, 67750u, arg_0.d), vec3<u32>(arg_0.b.x, 3117u, 71003u), vec3<bool>(false, false, true)), select(vec3<u32>(37290u, arg_0.d, arg_0.b.x), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0.d, 24u)], arg_0.d), vec3<bool>(false, false, true)), false))), ~((_wgslsmith_div_u32(arg_0.d, arg_0.b.x) | abs(79183u)) >> (global0[_wgslsmith_index_u32(select(~arg_0.b.x, ~48484u, false), 24u)] % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(479.0, -191.0, 1260.0), vec3<f32>(-578.0, 1716.0, -1073.0))))))) - vec3<f32>(_wgslsmith_f_op_f32(-2000.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-888.0 + -2034.0) + -482.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-276.0, -1011.0)), _wgslsmith_f_op_f32(1030.0 + _wgslsmith_f_op_f32(f32(-1.0) * -1125.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000.0, -1000.0)) - _wgslsmith_f_op_f32(-1657.0 + -145.0)))));
        var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1008.0, 1000.0, 394.0)) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -157.0, _wgslsmith_f_op_f32(-957.0))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1004.0, 186.0, var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 527.0, var_0.x) * vec3<f32>(-486.0, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1.0) * -2729.0))))));
        if (true) {
        }
        return;
    }
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = func_9(func_1(~_wgslsmith_add_i32(-24123, _wgslsmith_mod_i32(u_input.a.x, -1)), -40825), 419.0);
}

