// {"0:0":[18,244,206,118,115,76,107,221,188,202,182,55,249,244,87,93,91,118,2,88,126,76,137,131]}
// Seed: 14936064445618053579

struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(90359u, 58225u), vec2<u32>(87954u, 0u), vec2<u32>(4294967295u, 1u));

var<private> global1: array<bool, 21> = array<bool, 21>(false, false, false, true, false, false, true, true, false, false, false, true, true, false, false, false, false, false, true, false, false);

var<private> global2: u32;

var<private> global3: array<bool, 23> = array<bool, 23>(false, true, false, true, true, false, false, true, false, true, false, true, false, true, false, false, false, true, true, false, true, true, true);

var<private> LOOP_COUNTERS: array<u32, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> bool {
    switch (~(-1)) {
        case 2147483647: {
            let var_0 = select(vec2<u32>(~(~u_input.a.x), 46694u), vec2<u32>(1u << (~u_input.b % 32u), firstLeadingBit(u_input.d)), arg_2.d.b.x) & ~arg_2.a.yx;
        }
        case -1: {
            var var_0 = arg_2.d;
            switch (i32(-1) * -1) {
                default: {
                    let var_1 = Struct_3(select(!select(select(vec2<bool>(false, true), arg_2.d.b, global1[_wgslsmith_index_u32(u_input.d, 21u)]), var_0.b, !vec2<bool>(var_0.b.x, false)), !vec2<bool>(!arg_2.d.b.x, false), select(arg_2.d.b, vec2<bool>(false, all(vec2<bool>(true, var_0.b.x))), arg_2.d.b)), _wgslsmith_mod_u32(var_0.a, 0u) & 40105u);
                    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2.a.yz & ~vec2<u32>(var_1.b, 4294967295u), vec2<u32>(~0u >> (var_0.a % 32u), arg_2.d.a)), _wgslsmith_add_u32(_wgslsmith_mod_u32(14865u, _wgslsmith_clamp_u32(u_input.d, arg_2.b >> (var_0.a % 32u), _wgslsmith_div_u32(44805u, 0u))), ~(~var_1.b) >> (arg_2.a.x % 32u)));
                    global0 = array<vec2<u32>, 3>();
                    let var_3 = 747.0;
                }
            }
            for (; false; ) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                var var_1 = vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(46575u, 0u), 0u), ~countOneBits(vec2<u32>(var_0.a, 4294967295u))), 1u);
                return global3[_wgslsmith_index_u32(arg_2.b, 23u)];
            }
            switch (u_input.c) {
                case 0: {
                    let var_1 = -u_input.c;
                    let var_2 = select(!select(select(!vec3<bool>(false, true, false), vec3<bool>(var_0.b.x, true, arg_2.d.b.x), var_0.b.x || true), !select(vec3<bool>(true, arg_2.d.b.x, global3[_wgslsmith_index_u32(var_0.a, 23u)]), vec3<bool>(global3[_wgslsmith_index_u32(66657u, 23u)], true, false), vec3<bool>(false, true, var_0.b.x)), any(var_0.b)), vec3<bool>(!arg_2.d.b.x, arg_2.d.b.x, !true), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(-450.0, 1463.0)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(324.0, arg_1)))));
                    var var_3 = vec3<bool>(select(all(select(select(var_2, var_2, true), select(var_2, vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], false, false), vec3<bool>(true, false, global3[_wgslsmith_index_u32(var_0.a, 23u)])), select(var_2, var_2, var_2))), false, !(!true)), var_0.b.x, all(vec3<bool>(true, !true, _wgslsmith_mult_u32(60375u, u_input.b) <= _wgslsmith_clamp_u32(4294967295u, 1u, u_input.a.x))));
                    global3 = array<bool, 23>();
                    var_0 = arg_2.d;
                }
                case -1: {
                    global3 = array<bool, 23>();
                    global0 = array<vec2<u32>, 3>();
                    let var_1 = arg_0;
                    let var_2 = Struct_2(~arg_2.a, 4294967295u, 312.0, arg_2.d, _wgslsmith_dot_vec3_u32(arg_2.a, _wgslsmith_div_vec3_u32(arg_2.a, select(arg_2.a, vec3<u32>(8950u, u_input.d, var_0.a), arg_2.d.b.x))) & var_0.a);
                }
                default: {
                    var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(4294967295u, 45058u, var_0.a), ~vec3<u32>(9054u, 4294967295u, 7559u)), abs(vec3<u32>(0u, 0u, u_input.a.x))), 57553u), select(var_0.b, !select(var_0.b, arg_2.d.b, var_0.b.x), vec2<bool>(false, arg_2.d.b.x)));
                    global3 = array<bool, 23>();
                }
            }
            var var_1 = Struct_1(58512u, select(vec2<bool>(!(arg_2.d.b.x && global3[_wgslsmith_index_u32(1292u, 23u)]), false), var_0.b, !vec2<bool>(false, true)));
        }
        case 23337: {
        }
        default: {
            switch (24954) {
                case 33255: {
                    global1 = array<bool, 21>();
                    let var_0 = u_input.c;
                    let var_1 = arg_2;
                    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1109.0), -1206.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647.0 + var_1.c) * _wgslsmith_f_op_f32(step(1423.0, _wgslsmith_f_op_f32(select(arg_1, arg_2.c, global1[_wgslsmith_index_u32(arg_2.b, 21u)]))))))));
                }
                case -1: {
                    global2 = 1u;
                }
                case 68241: {
                    var var_0 = -1167.0;
                    let var_1 = !(u_input.b <= ~arg_2.a.x);
                    global1 = array<bool, 21>();
                }
                default: {
                    global3 = array<bool, 23>();
                    var var_0 = Struct_1(28325u << (arg_2.b % 32u), vec2<bool>(true, !(arg_2.c > _wgslsmith_f_op_f32(floor(arg_2.c)))));
                    var var_1 = arg_2.d;
                    global1 = array<bool, 21>();
                }
            }
        }
    }
    switch (-_wgslsmith_mult_i32(u_input.c, u_input.c)) {
        case -1: {
            var var_0 = Struct_2(arg_2.a, _wgslsmith_mult_u32(2800u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(11199u, arg_2.d.a), 20493u, ~4294967295u), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d, 11768u, 37889u), ~vec3<u32>(arg_2.b, u_input.d, u_input.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_2.c), arg_2.d, _wgslsmith_mult_u32(arg_2.b, _wgslsmith_mod_u32(firstTrailingBit(u_input.b), 1u)));
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                continue;
            }
            if (!(global1[_wgslsmith_index_u32(~(~0u), 21u)] && false)) {
                global3 = array<bool, 23>();
                var var_1 = Struct_3(arg_2.d.b, ~((min(1u, 23327u) ^ (arg_2.b << (0u % 32u))) & (~u_input.d | ~u_input.b)));
            }
            let var_1 = (~1u ^ 1u) | 4294967295u;
            global2 = 1u;
        }
        case 2147483647: {
        }
        case -2147483648: {
            global2 = select(43242u, arg_2.d.a, any(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(9224u, 21u)], arg_2.d.b.x, global1[_wgslsmith_index_u32(1u, 21u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(18739u, 23u)], global3[_wgslsmith_index_u32(13793u, 23u)], false), true), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_2.a.x, 21u)], false, global1[_wgslsmith_index_u32(arg_2.a.x, 21u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_2.e, 21u)], false, false, global3[_wgslsmith_index_u32(53931u, 23u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(arg_2.b, 23u)], true), global3[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(33689u, 21u)], false, false, global3[_wgslsmith_index_u32(2934u, 23u)])), select(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 23u)], arg_2.d.b.x, arg_2.d.b.x), select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 23u)], false, arg_2.d.b.x, false), vec4<bool>(global1[_wgslsmith_index_u32(29686u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(arg_2.a.x, 21u)]), arg_2.d.b.x)))));
            let var_0 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, ~1u, 44461u, _wgslsmith_mod_u32(arg_2.d.a, u_input.a.x)), ~(vec4<u32>(u_input.a.x, arg_2.e, u_input.b, 0u) & vec4<u32>(arg_2.d.a, arg_2.b, arg_2.b, 9757u))));
            var var_1 = min(~vec2<u32>(_wgslsmith_clamp_u32(countOneBits(arg_2.d.a), select(4294967295u, u_input.a.x, global3[_wgslsmith_index_u32(0u, 23u)]), countOneBits(6066u)), _wgslsmith_add_u32(24140u, u_input.a.x) >> ((1u | var_0.x) % 32u)), max(~vec2<u32>(0u, ~var_0.x), vec2<u32>(~(~arg_2.e), 10039u)));
            let var_2 = arg_2;
            switch (-2147483648) {
                case 1: {
                    let var_3 = Struct_3(select(!vec2<bool>(all(vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), var_2.d.b.x), arg_2.d.b, all(select(vec3<bool>(arg_2.d.b.x, global3[_wgslsmith_index_u32(0u, 23u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(21951u, 21u)], false), vec3<bool>(global3[_wgslsmith_index_u32(var_2.d.a, 23u)], var_2.d.b.x, false), var_2.d.b.x), select(vec3<bool>(global3[_wgslsmith_index_u32(arg_2.e, 23u)], true, global3[_wgslsmith_index_u32(var_1.x, 23u)]), vec3<bool>(var_2.d.b.x, global3[_wgslsmith_index_u32(0u, 23u)], false), global1[_wgslsmith_index_u32(var_2.e, 21u)])))), 1u);
                }
                case -2147483648: {
                    var var_3 = select(-vec3<i32>(_wgslsmith_sub_i32(-u_input.c, 50070), -20104, u_input.c | _wgslsmith_div_i32(u_input.c, 100005)), select(abs(~(~vec3<i32>(0, u_input.c, -9108))), _wgslsmith_div_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(0, 13620, u_input.c), vec3<i32>(-2147483648, u_input.c, u_input.c)), min(vec3<i32>(2147483647, u_input.c, 0), vec3<i32>(55981, u_input.c, u_input.c)), arg_2.d.b.x), (vec3<i32>(-34624, 2147483647, 73743) | vec3<i32>(u_input.c, 2147483647, u_input.c)) | -vec3<i32>(1, u_input.c, 186)), global3[_wgslsmith_index_u32(~(~(~0u)), 23u)]), !vec3<bool>(!false, any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(arg_2.a.x, 21u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), !(739.0 >= -301.0)));
                    global0 = array<vec2<u32>, 3>();
                }
                case 3926: {
                    global1 = array<bool, 21>();
                    let var_3 = vec4<u32>(27733u, 1u, ~9270u, max(var_1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(25732u, 18592u, 114580u, var_0.x), ~vec4<u32>(31699u, var_1.x, var_2.d.a, 14110u)))) >> (vec4<u32>(~arg_2.a.x, var_1.x, 5148u, 4294967295u) % vec4<u32>(32u));
                    let var_4 = ~(~_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c, u_input.c, u_input.c), max(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, -2147483648, 5531)))) ^ vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647, u_input.c), min(-2147483647, 2147483647), ~(u_input.c >> (var_1.x % 32u))), 21529, ~u_input.c);
                }
                default: {
                }
            }
        }
        case 24136: {
            global0 = array<vec2<u32>, 3>();
            var var_0 = arg_2.d;
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            }
            for (var var_1 = -1; ; global2 = arg_2.b ^ ((~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.a, 0u, 1u), vec4<u32>(arg_2.b, 1u, arg_2.d.a, u_input.d)) << (_wgslsmith_div_u32(u_input.d, abs(27971u)) % 32u)) | var_0.a)) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var var_2 = -2147483648;
                let var_3 = _wgslsmith_f_op_f32(abs(arg_2.c));
                break;
            }
            let var_1 = Struct_3(select(vec2<bool>(!var_0.b.x, !arg_2.d.b.x), select(!(!arg_2.d.b), select(select(var_0.b, arg_2.d.b, var_0.b.x), select(vec2<bool>(false, false), vec2<bool>(true, var_0.b.x), var_0.b), !global1[_wgslsmith_index_u32(u_input.d, 21u)]), !(true && true)), vec2<bool>(false, u_input.c >= -1)), 17726u);
        }
        default: {
            var var_0 = Struct_2(abs(~(~(~arg_2.a))), 32381u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(440.0 * arg_2.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), Struct_1(4294967295u, !vec2<bool>(any(vec2<bool>(true, true)), !false)), 49293u);
            let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1615.0) * var_0.c)))), _wgslsmith_f_op_f32(step(-685.0, var_0.c)));
        }
    }
    for (var var_0 = 1; var_0 != -2147483648; ) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_1 = true;
        let var_2 = min(vec2<u32>(arg_2.e, 25201u), _wgslsmith_clamp_vec2_u32(vec2<u32>(~68728u, _wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(0u, 3u)], vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.d.a, u_input.b), u_input.a) ^ _wgslsmith_div_vec2_u32(vec2<u32>(343u, arg_2.a.x), abs(vec2<u32>(108543u, 3252u))), countOneBits(u_input.a)));
        var var_3 = 55385u;
    }
    let var_0 = abs(firstLeadingBit(~5448u) | _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_2.b, u_input.a.x, 31196u), vec4<u32>(4294967295u, arg_2.b, 1u, u_input.d)), ~vec4<u32>(u_input.d, 4294967295u, 0u, u_input.a.x)), vec4<u32>(u_input.d, _wgslsmith_mod_u32(arg_2.e, arg_2.b), ~u_input.a.x, arg_2.a.x)));
    var var_1 = vec4<i32>(abs(max(~(-1), ~29738 >> (arg_2.d.a % 32u))), 16157 >> (_wgslsmith_div_u32(~arg_2.e >> (~1u % 32u), u_input.d) % 32u), -26509 << (_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0, u_input.d, 56265u), vec3<u32>(arg_2.a.x, var_0, arg_2.d.a)), ~vec3<u32>(arg_2.b, 45312u, 2724u)) % 32u), 0);
    return true;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<u32>) -> u32 {
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_0 = true && func_6(_wgslsmith_f_op_f32(-692.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * 102.0)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, 992.0), _wgslsmith_f_op_f32(max(1368.0, _wgslsmith_f_op_f32(arg_0 - arg_0))))), Struct_2(max(~vec3<u32>(48850u, arg_2.x, 23211u), vec3<u32>(33844u, 1u, 9418u)), max(0u, ~74777u), _wgslsmith_f_op_f32(arg_0 - arg_0), Struct_1(653u, select(arg_1.zy, arg_1.wz, vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2.x, 21u)]))), _wgslsmith_mod_u32(firstLeadingBit(arg_2.x), ~arg_2.x)));
        let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(select(-679.0, -641.0, global3[_wgslsmith_index_u32(1u, 23u)]))))))));
        global3 = array<bool, 23>();
        let var_2 = Struct_3(!select(select(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, false), global3[_wgslsmith_index_u32(arg_2.x, 23u)]), arg_1.yw, all(arg_1.wxw)), arg_1.zw, select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 23u)], false), !arg_1.xy, select(arg_1.wz, arg_1.xy, arg_1.ww))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(reverseBits(0u | 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, u_input.d, 23885u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, u_input.b, u_input.d, 20271u), vec4<u32>(arg_2.x, u_input.d, arg_2.x, arg_2.x)))), 2993u));
        for (; true; ) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            continue;
        }
    }
    var var_0 = u_input.c;
    let var_1 = all(!arg_1);
    global2 = ~(~_wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_2.x, u_input.a.x, 0u), vec4<u32>(65654u, arg_2.x, u_input.d, u_input.a.x))), 34424u));
    var var_2 = Struct_1(72462u, vec2<bool>(arg_1.x, true));
    return 4294967295u;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>) -> u32 {
    for (; global3[_wgslsmith_index_u32(82714u, 23u)]; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        if (!(abs(_wgslsmith_clamp_u32(u_input.b, u_input.d, ~u_input.d)) <= (u_input.b ^ ~41501u))) {
            let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(730.0, 542.0, 423.0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-882.0, -2151.0, 977.0), vec3<f32>(-426.0, -2288.0, -179.0))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(688.0, -2284.0, -858.0) * vec3<f32>(292.0, 1000.0, -1409.0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(107.0, -235.0, -721.0) * vec3<f32>(-868.0, 1000.0, -733.0)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(913.0, 302.0, -1446.0), vec3<f32>(1611.0, -1249.0, 1616.0)))))))));
            global1 = array<bool, 21>();
            break;
        }
    }
    global2 = u_input.a.x;
    if (any(!vec3<bool>(global1[_wgslsmith_index_u32(~func_5(570.0, vec4<bool>(global3[_wgslsmith_index_u32(34696u, 23u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true), u_input.a), 21u)], u_input.b < u_input.d, global3[_wgslsmith_index_u32(61131u, 23u)]))) {
        let var_0 = _wgslsmith_mult_u32(u_input.d, u_input.a.x);
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        }
    }
    global3 = array<bool, 23>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1753.0) + _wgslsmith_div_f32(-1170.0, 677.0)))))));
    return u_input.b;
}

fn func_3(arg_0: f32, arg_1: f32) -> Struct_3 {
    for (; !all(select(vec3<bool>(false, global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 23u)], !false), vec3<bool>(all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), global3[_wgslsmith_index_u32(60585u, 23u)], !global3[_wgslsmith_index_u32(u_input.b, 23u)]), !(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 23u)], false, global3[_wgslsmith_index_u32(u_input.d, 23u)])))); ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            continue;
        }
        switch (~_wgslsmith_mod_i32(u_input.c, u_input.c)) {
            case 7090: {
                continue;
            }
            case 8510: {
                let var_0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(1195.0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)) - -1865.0)));
                global2 = reverseBits(~((u_input.a.x ^ func_4(vec2<i32>(-1, u_input.c), vec2<i32>(1, 15436))) << (21386u % 32u)));
                global3 = array<bool, 23>();
                global3 = array<bool, 23>();
                var var_1 = Struct_1(u_input.b, select(!vec2<bool>(!true, -24853 >= u_input.c), !vec2<bool>(false, false), !vec2<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 21u)], func_6(arg_1, -397.0, Struct_2(vec3<u32>(0u, u_input.a.x, 12997u), 4294967295u, arg_0, Struct_1(u_input.d, vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 23u)])), 1u)))));
            }
            case -1: {
                continue;
            }
            case -24788: {
                global2 = u_input.a.x;
                var var_0 = -vec2<i32>((-1 ^ u_input.c) & (-u_input.c ^ u_input.c), min(countOneBits(0) | u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647, u_input.c), vec4<i32>(-1, u_input.c, u_input.c, -1)), min(vec4<i32>(-30416, 2147483647, u_input.c, 1), vec4<i32>(2147483647, 1, u_input.c, u_input.c)))));
                break;
            }
            default: {
                var var_0 = ~countOneBits(select(firstTrailingBit(1u), u_input.a.x >> (u_input.b % 32u), !false) ^ ~func_4(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2147483648, -22735)));
                continue;
            }
        }
        var var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 1475.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) * _wgslsmith_div_f32(756.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(524.0 + 734.0)))), Struct_2(_wgslsmith_add_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, 15399u), vec3<u32>(u_input.a.x, u_input.d, 66823u)), ~vec3<u32>(54000u, u_input.d, u_input.a.x), global1[_wgslsmith_index_u32(u_input.d, 21u)] != false), ~countOneBits(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x))), 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -804.0), 1000.0)), Struct_1(u_input.b, !select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), u_input.d));
        break;
    }
    var var_0 = vec3<i32>(u_input.c, u_input.c, -2147483647);
    for (var var_1 = 0; var_1 == -1; var_1 = -2147483648) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        var_0 = ~_wgslsmith_div_vec3_i32(vec3<i32>(-1) * -vec3<i32>(14234, -29356, 48301), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1, var_0.x, var_0.x), vec3<i32>(44581, -16379, u_input.c)), vec3<i32>(u_input.c, 10508, 30164))) ^ firstTrailingBit(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-57626, var_0.x, 11615, -1), vec4<i32>(var_0.x, var_0.x, var_0.x, 35047)), 1, _wgslsmith_mod_i32(var_0.x, var_0.x)));
        if (!(!false) | all(select(vec4<bool>(!global3[_wgslsmith_index_u32(43867u, 23u)], global1[_wgslsmith_index_u32(~u_input.a.x, 21u)], !false, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global3[_wgslsmith_index_u32(23589u, 23u)], false, global1[_wgslsmith_index_u32(u_input.b, 21u)]))), vec4<bool>(u_input.a.x >= u_input.d, false, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], true), !vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(u_input.a.x, 23u)])))) {
            global0 = array<vec2<u32>, 3>();
            let var_2 = firstTrailingBit(select(~var_0.xx >> (~vec2<u32>(u_input.b, u_input.d) % vec2<u32>(32u)), var_0.xx, !vec2<bool>(!global3[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.c == var_0.x)));
            return Struct_3(vec2<bool>(u_input.c != (-u_input.c ^ -21614), !(!true)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(~vec4<u32>(u_input.a.x, 4294967295u, u_input.d, u_input.d), ~vec4<u32>(73201u, 97098u, 1u, 1u)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.b, u_input.b), 31255u, ~4294967295u)), abs(vec4<u32>(0u, 22427u, 13464u, 65010u)) & vec4<u32>(min(3743u, u_input.a.x), ~18576u, ~24209u, reverseBits(u_input.d))));
        }
        global1 = array<bool, 21>();
        return Struct_3(vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4636u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), u_input.a), vec2<u32>(u_input.a.x, 0u) << (vec2<u32>(319u, u_input.b) % vec2<u32>(32u)))), 23u)], true), abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.a.x, 1613u)), _wgslsmith_sub_u32(abs(u_input.d), u_input.b))));
    }
    var var_1 = Struct_3(vec2<bool>(true, false), ~(~(3363u ^ u_input.b)));
    switch (var_0.x) {
        case -22580: {
            var var_2 = Struct_1(~(17334u | var_1.b), vec2<bool>(false, false));
        }
        case 13004: {
            var var_2 = Struct_3(vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 21u)], false), 0u);
            global3 = array<bool, 23>();
            switch (-1) {
                default: {
                    var_0 = ~(-_wgslsmith_add_vec3_i32(abs(vec3<i32>(-1, var_0.x, var_0.x) ^ vec3<i32>(0, var_0.x, 1)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-22700, 416, u_input.c), vec3<i32>(13337, 2147483647, u_input.c))));
                    let var_3 = Struct_1(~55437u, vec2<bool>(false, true));
                    let var_4 = Struct_2(min(~max(vec3<u32>(4294967295u, u_input.d, var_2.b), ~vec3<u32>(u_input.d, 60191u, var_1.b)), vec3<u32>(max(0u, ~u_input.a.x), var_2.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b, 47592u, u_input.b, var_1.b), vec4<u32>(0u, var_1.b, var_3.a, 28950u)), vec4<u32>(var_3.a, 4294967295u, 0u, 1u)))), 55017u, -607.0, Struct_1(~var_3.a, !select(select(var_2.a, var_3.b, var_3.b.x), vec2<bool>(var_3.b.x, var_2.a.x), global3[_wgslsmith_index_u32(reverseBits(var_1.b), 23u)])), ~var_1.b);
                    global0 = array<vec2<u32>, 3>();
                }
            }
        }
        case -2147483648: {
            var var_2 = ~_wgslsmith_sub_u32(var_1.b, _wgslsmith_add_u32(reverseBits(var_1.b) & 94249u, var_1.b));
            var var_3 = vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, abs(max(global0[_wgslsmith_index_u32(24920u, 3u)], vec2<u32>(4294967295u, u_input.d)))), vec2<u32>(u_input.a.x, ~u_input.a.x) & ~(~vec2<u32>(0u, 19804u))), 21u)], global1[_wgslsmith_index_u32(0u ^ ~(min(u_input.d, 0u) & _wgslsmith_mod_u32(var_1.b, 5010u)), 21u)]);
            var var_4 = select(false, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000.0)) * _wgslsmith_div_f32(arg_1, -1092.0)) > arg_0) & var_1.a.x, var_0.x >= 1);
            loop {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var var_5 = ~_wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 5578u, 16673u))), vec3<u32>(u_input.a.x, func_5(_wgslsmith_f_op_f32(-arg_0), !vec4<bool>(var_1.a.x, false, true, false), vec2<u32>(var_1.b, 39088u)), _wgslsmith_mod_u32(~var_1.b, u_input.a.x)), ~vec3<u32>(var_1.b, abs(0u), ~10235u));
                var var_6 = Struct_3(!var_1.a, 4294967295u);
                var_6 = Struct_3(var_1.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_6.b, var_1.b, var_6.b, 86306u), min(vec4<u32>(u_input.b, 1u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.d, 1u))) << (0u % 32u), 70841u));
                let var_7 = !select(vec4<bool>(func_6(-288.0, _wgslsmith_f_op_f32(arg_1 * arg_1), Struct_2(vec3<u32>(1u, 0u, var_5.x), u_input.a.x, 1000.0, Struct_1(var_5.x, vec2<bool>(var_6.a.x, false)), var_6.b)), all(select(vec2<bool>(false, global3[_wgslsmith_index_u32(var_5.x, 23u)]), vec2<bool>(true, false), var_1.a.x)), any(vec3<bool>(var_3.x, false, false)), u_input.b > 4294967295u), vec4<bool>(!(!false), all(vec4<bool>(var_1.a.x, var_3.x, false, global1[_wgslsmith_index_u32(4294967295u, 21u)])), !true, all(!var_6.a)), select(vec4<bool>(u_input.c >= 23027, var_3.x | global3[_wgslsmith_index_u32(33262u, 23u)], !var_3.x, false), vec4<bool>(false, !false, func_6(arg_0, arg_0, Struct_2(vec3<u32>(0u, 69527u, u_input.a.x), var_1.b, -257.0, Struct_1(var_6.b, var_6.a), var_1.b)), true), global1[_wgslsmith_index_u32(~var_6.b, 21u)]));
                var_5 = (vec3<u32>(firstTrailingBit(31164u), ~4294967295u, _wgslsmith_mult_u32(var_5.x, u_input.d >> (var_5.x % 32u))) & (vec3<u32>(u_input.a.x, ~var_6.b, _wgslsmith_div_u32(var_1.b, 1u)) | min(~vec3<u32>(94358u, var_1.b, 0u), vec3<u32>(var_1.b, var_5.x, 39703u) & vec3<u32>(u_input.d, var_6.b, 25024u)))) << (~vec3<u32>(_wgslsmith_dot_vec2_u32(abs(global0[_wgslsmith_index_u32(16971u, 3u)]), global0[_wgslsmith_index_u32(var_6.b & 1u, 3u)]), var_6.b >> (~u_input.d % 32u), ~(~var_5.x)) % vec3<u32>(32u));
            }
            switch (-1) {
                case 2147483647: {
                    var var_5 = Struct_3(var_1.a, 77801u);
                    var var_6 = arg_1;
                }
                case 10725: {
                }
                case 10015: {
                    global2 = 16116u;
                    let var_5 = vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(9218u, _wgslsmith_mod_u32(1u, 1u)), 21u)], var_3.x, _wgslsmith_sub_u32(abs(~var_1.b), _wgslsmith_add_u32(~u_input.d, ~u_input.b)) > max(~_wgslsmith_add_u32(var_1.b, 68828u), var_1.b));
                }
                case -2147483648: {
                    return Struct_3(!var_1.a, 67429u);
                }
                default: {
                    var var_5 = all(!select(select(select(vec3<bool>(var_1.a.x, var_1.a.x, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], false, true), var_3.x), select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(42419u, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(18663u, 21u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(44744u, 21u)], true, false)), select(vec3<bool>(var_3.x, false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], false), global1[_wgslsmith_index_u32(4294967295u, 21u)])), select(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(11909u, 21u)]), !vec3<bool>(false, var_3.x, false), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], var_1.a.x, global3[_wgslsmith_index_u32(var_1.b, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_1.b, 21u)], false, false), vec3<bool>(var_3.x, var_1.a.x, var_3.x))), var_3.x || var_1.a.x));
                    let var_6 = Struct_2(_wgslsmith_mod_vec3_u32(~abs(reverseBits(vec3<u32>(2088u, var_1.b, 1u))), ~(~vec3<u32>(var_1.b, 84516u, u_input.b)) | _wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.a.x, var_1.b, u_input.d), vec3<u32>(u_input.d, u_input.a.x, 20418u)), vec3<u32>(u_input.b, 73431u, u_input.d) ^ vec3<u32>(u_input.a.x, 0u, u_input.b))), ~u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1319.0))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-907.0))), _wgslsmith_div_f32(_wgslsmith_div_f32(-327.0, arg_0), _wgslsmith_f_op_f32(129.0 - 347.0)))), Struct_1(_wgslsmith_sub_u32(abs(~var_1.b), u_input.b), !var_1.a), u_input.b | u_input.d);
                }
            }
        }
        case 2147483647: {
            let var_2 = var_1.b;
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var_0 = -(firstLeadingBit(-vec3<i32>(0, var_0.x, var_0.x) & reverseBits(vec3<i32>(var_0.x, var_0.x, 1))) & select(-vec3<i32>(var_0.x, -2147483648, -65163), _wgslsmith_div_vec3_i32(-vec3<i32>(var_0.x, 31560, 1), -vec3<i32>(1, var_0.x, u_input.c)), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.b, 21u)], var_1.a.x, true), vec3<bool>(false, var_1.a.x, global1[_wgslsmith_index_u32(u_input.d, 21u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(var_1.b, 21u)], true))));
            }
            let var_3 = Struct_3(vec2<bool>(true, any(!var_1.a)), 4294967295u);
            let var_4 = Struct_3(!(!vec2<bool>(0 <= u_input.c, func_6(arg_1, -226.0, Struct_2(vec3<u32>(var_1.b, u_input.d, 0u), 4294967295u, arg_0, Struct_1(u_input.d, vec2<bool>(var_3.a.x, global1[_wgslsmith_index_u32(34021u, 21u)])), 44811u)))), var_1.b);
            global1 = array<bool, 21>();
        }
        default: {
            var_0 = -vec3<i32>(_wgslsmith_clamp_i32(-7736, -4655, max(_wgslsmith_mult_i32(-2147483648, -1), -2147483648)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -20703, var_0.x) & vec3<i32>(var_0.x, u_input.c, -2147483648), vec3<i32>(1, -4060, u_input.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1, 2147483647, -1) & vec3<i32>(2147483647, u_input.c, var_0.x), ~vec3<i32>(28916, -1, u_input.c))), -(~(0)));
            var var_2 = 17936 << (43784u % 32u);
            var var_3 = ~1u;
            return Struct_3(!select(vec2<bool>(true & false, func_6(arg_1, 710.0, Struct_2(vec3<u32>(53309u, var_1.b, 63948u), 8693u, 1552.0, Struct_1(4294967295u, var_1.a), var_1.b))), select(vec2<bool>(false, global1[_wgslsmith_index_u32(49618u, 21u)]), var_1.a, true), select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 21u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_1.b, 21u)], var_1.a.x), true)), ~(4294967295u & 1u));
        }
    }
    return Struct_3(select(!(!vec2<bool>(false, global3[_wgslsmith_index_u32(36265u, 23u)])), var_1.a, !select(!var_1.a, var_1.a, var_1.a)), 1u ^ var_1.b);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec2_u32(abs(~countOneBits(global0[_wgslsmith_index_u32(arg_0.b, 3u)])), ~global0[_wgslsmith_index_u32(arg_1.b, 3u)], _wgslsmith_div_vec2_u32(max(~vec2<u32>(4294967295u, 27926u), u_input.a & global0[_wgslsmith_index_u32(arg_1.b, 3u)]), ~u_input.a)) & vec2<u32>(select(~arg_1.b, arg_0.b, func_6(_wgslsmith_f_op_f32(f32(-1.0) * -1678.0), _wgslsmith_f_op_f32(-1764.0), Struct_2(vec3<u32>(arg_1.b, arg_0.b, arg_1.b), 80857u, 360.0, Struct_1(arg_1.b, vec2<bool>(false, false)), 4294967295u))), ~arg_1.b);
    var var_1 = func_3(-962.0, _wgslsmith_f_op_f32(f32(-1.0) * -1947.0));
    if (!(!arg_0.a.x || any(vec4<bool>(!true, 1u <= 4294967295u, all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], var_1.a.x, global3[_wgslsmith_index_u32(0u, 23u)])), var_1.a.x)))) {
        switch (u_input.c) {
            default: {
                let var_2 = Struct_1(var_0.x, arg_1.a);
                return func_3(106.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(273.0 - _wgslsmith_f_op_f32(select(-1168.0, 661.0, global1[_wgslsmith_index_u32(575u, 21u)]))), _wgslsmith_f_op_f32(-531.0 + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(760.0)))));
            }
        }
        var var_2 = Struct_3(select(!(!arg_1.a), var_1.a, false), (func_4(firstTrailingBit(vec2<i32>(u_input.c, -1)), ~vec2<i32>(1, 0)) << (var_1.b % 32u)) & var_0.x);
        global3 = array<bool, 23>();
    }
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~(~arg_1.b), ~countOneBits(var_1.b), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.b, var_1.b, 0u)), ~vec3<u32>(1u, arg_1.b, 61241u))), ~countOneBits(vec3<u32>(arg_0.b, arg_0.b, 1u))), ~arg_1.b, -1114.0, Struct_1(~27035u, vec2<bool>(func_3(_wgslsmith_f_op_f32(min(1060.0, 103.0)), 1000.0).a.x, true)), var_0.x);
    var_1 = func_3(685.0, var_2.c);
    return func_3(_wgslsmith_f_op_f32(var_2.c * var_2.c), _wgslsmith_f_op_f32(-var_2.c));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    let var_0 = 23064u;
    let var_1 = func_7(func_3(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 455.0))), _wgslsmith_div_f32(413.0, _wgslsmith_div_f32(arg_1.x, 1000.0))), arg_1.x));
    if (func_7(func_3(-200.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 1165.0))) - _wgslsmith_f_op_f32(-1130.0))), var_1).a.x) {
        global0 = array<vec2<u32>, 3>();
    }
    if (var_1.a.x) {
        let var_2 = vec4<u32>(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(794.0 + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000.0, arg_1.x)), arg_1.x)), arg_1.x).b, ~u_input.a.x, 0u, min(~u_input.a.x, _wgslsmith_mod_u32(u_input.d & 56018u, 53687u)) & var_1.b);
        global3 = array<bool, 23>();
        switch (-(~_wgslsmith_clamp_i32(-u_input.c, u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, -2147483648, u_input.c, -1), -vec4<i32>(0, 1, arg_0, 24242))))) {
            case 2147483647: {
                var var_3 = Struct_3(vec2<bool>(any(!(!var_1.a)), all(vec4<bool>(all(var_1.a), 482.0 < arg_1.x, 1157.0 == arg_1.x, !true))), 4294967295u);
                let var_4 = vec2<u32>(abs(func_7(func_3(_wgslsmith_f_op_f32(exp2(arg_1.x)), -654.0), func_7(func_3(824.0, arg_1.x), var_1)).b), var_0);
                let var_5 = -987.0;
            }
            default: {
                var var_3 = !select(!select(!vec4<bool>(true, var_1.a.x, true, var_1.a.x), !vec4<bool>(false, global3[_wgslsmith_index_u32(51662u, 23u)], true, false), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 23u)], true, false)), !(!(!vec4<bool>(global3[_wgslsmith_index_u32(22964u, 23u)], false, var_1.a.x, true))), false);
                global2 = u_input.d;
                var var_4 = Struct_3(select(func_7(var_1, var_1).a, vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_2.x, 1u ^ 4294967295u), 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), select(var_1.a, !var_3.xz, !true)), _wgslsmith_mod_u32(0u & var_0, _wgslsmith_div_u32(var_0, var_2.x)));
                var var_5 = _wgslsmith_mult_i32(countOneBits(countOneBits(~u_input.c)), arg_0);
                let var_6 = var_1;
            }
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_2 = vec2<i32>(arg_0, firstTrailingBit(-arg_0) << ((var_0 << (~u_input.a.x % 32u)) % 32u));
        switch (u_input.c) {
            case -1: {
                return func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), 558.0), arg_1.x).b;
            }
            case 2147483647: {
            }
            case 0: {
                continue;
            }
            case 38742: {
                let var_3 = vec4<i32>(_wgslsmith_mod_i32(arg_0, 33479), 55270, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1, -23060, u_input.c, -1) << (vec4<u32>(10194u, u_input.d, var_1.b, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0, var_2.x, arg_0, arg_0), vec4<i32>(30528, var_2.x, -54338, 0))), -(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), -vec4<i32>(countOneBits(-56999), -1 & arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-1, var_2.x, -52684), vec3<i32>(u_input.c, -2147483648, arg_0)), i32(-1) * -15385)), i32(-1) * -arg_0);
            }
            default: {
                var var_3 = select(select(!vec3<bool>(global3[_wgslsmith_index_u32(var_0, 23u)], func_7(var_1, Struct_3(vec2<bool>(false, true), var_0)).a.x, true), !(!vec3<bool>(var_1.a.x, var_1.a.x, true)), select(select(!vec3<bool>(var_1.a.x, true, var_1.a.x), !vec3<bool>(global3[_wgslsmith_index_u32(2492u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], true), global3[_wgslsmith_index_u32(firstTrailingBit(20585u), 23u)]), vec3<bool>(var_1.a.x | true, any(vec4<bool>(global1[_wgslsmith_index_u32(var_1.b, 21u)], true, var_1.a.x, false)), func_7(Struct_3(var_1.a, 16608u), var_1).a.x), var_1.a.x)), select(select(vec3<bool>(true, global3[_wgslsmith_index_u32(~u_input.d, 23u)], false), vec3<bool>(global1[_wgslsmith_index_u32(func_5(arg_1.x, vec4<bool>(var_1.a.x, var_1.a.x, false, false), u_input.a), 21u)], true, !true), (arg_1.x <= -490.0) && var_1.a.x), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.a.x, false), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0, 21u)], var_1.a.x)), vec3<bool>(true, true, var_1.a.x || true), select(!vec3<bool>(global1[_wgslsmith_index_u32(17144u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 21u)], true, true), !vec3<bool>(global1[_wgslsmith_index_u32(var_0, 21u)], false, false))), any(vec3<bool>(!false, 22282 >= 1, true))), vec3<bool>(arg_0 != ~var_2.x, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(var_1.b), 11310u), 23u)], !false));
                global3 = array<bool, 23>();
                let var_4 = Struct_3(func_7(Struct_3(vec2<bool>(true, any(var_1.a)), ~_wgslsmith_sub_u32(11189u, var_0)), Struct_3(vec2<bool>(arg_1.x == arg_1.x, var_3.x), ~(~u_input.a.x))).a, 0u);
                var var_5 = Struct_1(55750u, !vec2<bool>(var_4.a.x, !(!var_1.a.x)));
            }
        }
    }
    return ~_wgslsmith_dot_vec3_u32(~firstTrailingBit(max(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(var_0, 0u, var_0))), select(max(min(vec3<u32>(41684u, 4294967295u, 23491u), vec3<u32>(u_input.d, u_input.d, 2621u)), vec3<u32>(var_1.b, var_1.b, 1u) & vec3<u32>(99215u, 81331u, var_1.b)), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_1.b, 0u), countOneBits(vec3<u32>(38062u, 4294967295u, var_0))), vec3<bool>(!global3[_wgslsmith_index_u32(u_input.b, 23u)], true, any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], true)))));
}

fn func_1() -> f32 {
    switch (25252) {
        case 1: {
            if (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.d, u_input.a.x) | abs(vec3<u32>(90070u, 4294967295u, 1u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, u_input.b, 22360u), firstLeadingBit(reverseBits(vec3<u32>(0u, 4294967295u, 56902u)))), vec3<u32>(~_wgslsmith_sub_u32(u_input.d, u_input.b), ~(~4294967295u), ~u_input.d | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, 74514u, u_input.b), vec4<u32>(10032u, u_input.b, 5322u, u_input.b)))), firstTrailingBit(vec3<u32>(firstLeadingBit(u_input.a.x), func_2(-15684 >> (u_input.d % 32u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-470.0, -1015.0), vec2<f32>(1136.0, 369.0), true))), u_input.b))), 23u)]) {
                global3 = array<bool, 23>();
                let var_0 = Struct_2(vec3<u32>(abs(u_input.b), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, abs(u_input.d)), u_input.b), u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), -1485.0, Struct_1(u_input.a.x, !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(68771u, 23u)])), _wgslsmith_add_u32(u_input.a.x, 1u));
                let var_1 = !global1[_wgslsmith_index_u32(u_input.d, 21u)];
                var var_2 = ~(-(i32(-1) * -10508) << (24757u % 32u));
                let var_3 = func_7(Struct_3(!func_7(func_3(2595.0, 756.0), Struct_3(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 21u)], var_1), 3459u)).a, abs(~func_2(u_input.c, vec2<f32>(670.0, var_0.c)))), func_7(Struct_3(select(var_0.d.b, vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 21u)], false), false & false), _wgslsmith_mult_u32(var_0.a.x, ~4294967295u)), func_7(func_3(-764.0, var_0.c), Struct_3(var_0.d.b, 0u))));
            }
            global2 = 59514u;
        }
        case 25632: {
        }
        case -82839: {
            let var_0 = u_input.c;
            let var_1 = func_7(Struct_3(vec2<bool>(!(!false), firstLeadingBit(4294967295u) <= 1u), 51479u), func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-576.0 * -1000.0)), _wgslsmith_f_op_f32(max(1089.0, -2301.0)))));
        }
        default: {
            for (var var_0 = 1; ; ) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            }
            var var_0 = ~(_wgslsmith_add_i32(u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c)) ^ -_wgslsmith_mod_i32(_wgslsmith_mult_i32(0, -1), firstTrailingBit(u_input.c)));
            switch (u_input.c) {
                default: {
                    global2 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a.x, 43909u) & u_input.a)) ^ 58971u;
                }
            }
        }
    }
    if (all(select(select(vec4<bool>(global3[_wgslsmith_index_u32(42530u, 23u)], !false, global3[_wgslsmith_index_u32(~u_input.b, 23u)], global3[_wgslsmith_index_u32(u_input.a.x >> (4294967295u % 32u), 23u)]), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 21u)], global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(u_input.d, 23u)], global3[_wgslsmith_index_u32(13123u, 23u)], false), all(vec3<bool>(global3[_wgslsmith_index_u32(2630u, 23u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 23u)]))), !func_7(Struct_3(vec2<bool>(true, global1[_wgslsmith_index_u32(46878u, 21u)]), u_input.b), Struct_3(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 23u)], true), 43076u)).a.x), !select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), true), global1[_wgslsmith_index_u32(firstLeadingBit(func_2(~u_input.c, vec2<f32>(-946.0, 399.0))), 21u)]))) {
        let var_0 = 4294967295u;
        if (!false) {
            var var_1 = -1;
            let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-255.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(654.0 * 893.0) * _wgslsmith_f_op_f32(657.0 * 1000.0))) - -215.0)));
            let var_3 = firstLeadingBit(select(_wgslsmith_div_i32(select(0, -1, true), -49421), 1, !(!true))) << (_wgslsmith_add_u32(func_7(func_7(Struct_3(vec2<bool>(false, global3[_wgslsmith_index_u32(var_0, 23u)]), 1u), Struct_3(vec2<bool>(false, true), var_0)), Struct_3(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], true), u_input.b & 0u)).b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0, 0u), 49011u)) % 32u);
            global0 = array<vec2<u32>, 3>();
            let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1000.0, var_2)))))));
        }
        let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-934.0))) - _wgslsmith_f_op_f32(round(947.0)))));
    }
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(0, _wgslsmith_clamp_i32(u_input.c, u_input.c, _wgslsmith_div_i32(u_input.c, ~u_input.c)), ~(~(u_input.c >> (u_input.b % 32u))), 1), ~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-52085, u_input.c, 32576, u_input.c), vec4<i32>(u_input.c, u_input.c, 1, 2147483647), min(vec4<i32>(u_input.c, u_input.c, -2147483648, u_input.c), vec4<i32>(u_input.c, u_input.c, 22094, u_input.c)))), -(-vec4<i32>(32416, u_input.c, u_input.c, -1) & vec4<i32>(i32(-1) * -24084, u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c), -30315)));
    switch (-var_0.x) {
        default: {
            let var_1 = select(vec4<bool>(true, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_3(-1954.0, 2058.0).b, reverseBits(27558u)), 21u)], all(select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 23u)], global3[_wgslsmith_index_u32(u_input.a.x, 23u)], false, global3[_wgslsmith_index_u32(u_input.b, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(26922u, 23u)], false, global3[_wgslsmith_index_u32(1u, 23u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(3439u, 23u)], true, true)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], global3[_wgslsmith_index_u32(54981u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 23u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], true))), !(!false)), vec4<bool>(global3[_wgslsmith_index_u32(~(~1u >> (_wgslsmith_mult_u32(29353u, u_input.b) % 32u)), 23u)], any(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, u_input.b, u_input.a.x), vec4<u32>(u_input.b, 1u, 4294967295u, 488u)), 21u)], func_6(1000.0, 958.0, Struct_2(vec3<u32>(44842u, 1u, 4294967295u), u_input.d, -974.0, Struct_1(u_input.d, vec2<bool>(false, global3[_wgslsmith_index_u32(76668u, 23u)])), 1u)))), any(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 21u)], false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], true, false), global3[_wgslsmith_index_u32(u_input.d << (u_input.a.x % 32u), 23u)])), global3[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(4294967295u, 1u)), 23u)]), global3[_wgslsmith_index_u32(64999u, 23u)]);
        }
    }
    loop {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        break;
    }
    return -1216.0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec4<i32>(u_input.c, -1, u_input.c, _wgslsmith_mult_i32(-64136 << (4294967295u % 32u), _wgslsmith_mod_i32(42054, u_input.c)) & ~52955), ~vec4<i32>(i32(-1) * -18221, ~u_input.c, max(2147483647, u_input.c), -2147483648 << (1u % 32u)) ^ -(~firstLeadingBit(vec4<i32>(-69276, -1, u_input.c, 0))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-666.0)) - _wgslsmith_f_op_f32(509.0 - -1182.0))))), _wgslsmith_f_op_f32(f32(-1.0) * -944.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-116.0, -1601.0) * _wgslsmith_f_op_f32(f32(-1.0) * -335.0))))));
    switch (_wgslsmith_dot_vec4_i32(vec4<i32>(0, var_0.x, select(_wgslsmith_mult_i32(-5770 << (21766u % 32u), -var_0.x), 1, false), reverseBits(-33805) ^ _wgslsmith_dot_vec2_i32(~var_0.yx, var_0.zx)), vec4<i32>(var_0.x, u_input.c, max(-1, -1), 28890) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-27314, -18941, u_input.c, 15472), vec4<i32>(var_0.x, var_0.x, 2147483647, -7853)), _wgslsmith_mult_i32(u_input.c & var_0.x, -2147483648), u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 180u, u_input.b), vec3<u32>(u_input.d, 4294967295u, 32675u)) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, 47446, var_0.x), vec4<i32>(u_input.c, 21400, u_input.c, u_input.c)), select(vec4<i32>(var_0.x, 3364, var_0.x, -1), vec4<i32>(-1, -1, u_input.c, u_input.c), vec4<bool>(false, global1[_wgslsmith_index_u32(24817u, 21u)], global3[_wgslsmith_index_u32(u_input.d, 23u)], global3[_wgslsmith_index_u32(35700u, 23u)])))))) {
        case 2147483647: {
        }
        case 1: {
            let var_2 = !any(func_7(Struct_3(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 21u)]), u_input.d), func_3(_wgslsmith_f_op_f32(floor(var_1.x)), 1972.0)).a);
        }
        default: {
            var var_2 = Struct_3(!(!vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 1u), 21u)], !true)), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-862.0, 298.0)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-2095.0 * _wgslsmith_f_op_f32(var_1.x + var_1.x))), select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], false, global1[_wgslsmith_index_u32(4294967295u, 21u)], false), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.d, 21u)], global3[_wgslsmith_index_u32(u_input.d, 23u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 21u)], true, global1[_wgslsmith_index_u32(u_input.d, 21u)], true), global1[_wgslsmith_index_u32(u_input.d, 21u)]), !vec4<bool>(global3[_wgslsmith_index_u32(73106u, 23u)], true, true, true)), !select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], true, global1[_wgslsmith_index_u32(u_input.d, 21u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 23u)], true, global1[_wgslsmith_index_u32(u_input.d, 21u)], true)), !(global1[_wgslsmith_index_u32(u_input.b, 21u)] & global1[_wgslsmith_index_u32(u_input.a.x, 21u)])), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(44243u, 29049u) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(34190u, 9284u)), u_input.a >> (u_input.a % vec2<u32>(32u)))));
            var_0 = countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1, var_0.x), var_0.x), ~_wgslsmith_div_i32(var_0.x, -5631), 49861, u_input.c), vec4<i32>(var_0.x, max(abs(u_input.c), abs(u_input.c)), max(select(u_input.c, -5137, true), firstLeadingBit(var_0.x)), ~(-2147483648))));
        }
    }
    let var_2 = (1 & min(_wgslsmith_clamp_i32(var_0.x, var_0.x, 2147483647), -19518)) & var_0.x;
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1392.0, _wgslsmith_f_op_f32(f32(-1.0) * -140.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1773.0, var_1.x)))), -1606.0));
    global2 = _wgslsmith_dot_vec2_u32(~(~max(global0[_wgslsmith_index_u32(u_input.d, 3u)], u_input.a) ^ ~global0[_wgslsmith_index_u32(~u_input.b, 3u)]), max(_wgslsmith_mult_vec2_u32(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 3u)], ~min(global0[_wgslsmith_index_u32(40192u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)])), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.d), u_input.d), ~u_input.d)));
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        global3 = array<bool, 23>();
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            break;
        }
        switch (var_2) {
            case 3941: {
                continue;
            }
            case -3952: {
                var var_3 = u_input.b;
                var_0 = _wgslsmith_mod_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, -14800, u_input.c, 2147483647), vec4<i32>(u_input.c, -2147483648, var_2, 2147483647), vec4<i32>(9172, 35484, 49830, var_2) ^ vec4<i32>(u_input.c, -2147483648, u_input.c, 0))) & vec4<i32>(var_2, ~(~var_0.x), -27006, 23489), ~_wgslsmith_div_vec4_i32(select(reverseBits(vec4<i32>(32053, -5948, var_2, -14574)), ~vec4<i32>(u_input.c, -1, var_0.x, var_0.x), vec4<bool>(false, false, true, true)), vec4<i32>(_wgslsmith_mult_i32(var_2, u_input.c), _wgslsmith_div_i32(u_input.c, 1), -16150, -2147483648 << (0u % 32u))));
                global1 = array<bool, 21>();
                break;
            }
            case 0: {
                let var_3 = select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], func_3(var_1.x, -287.0).a.x, false && !global1[_wgslsmith_index_u32(u_input.b, 21u)], all(select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<bool>(true, false, false), u_input.a.x == u_input.b))), vec4<bool>(false, true, !global1[_wgslsmith_index_u32(min(56559u & u_input.a.x, _wgslsmith_div_u32(1u, u_input.b)), 21u)], false), !any(!func_7(Struct_3(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)]), u_input.a.x), Struct_3(vec2<bool>(global1[_wgslsmith_index_u32(15226u, 21u)], false), u_input.a.x)).a));
            }
            case -42734: {
                var_0 = reverseBits(vec4<i32>(~abs(~(-2147483648)), var_2, ~_wgslsmith_clamp_i32(countOneBits(13358), -32250, _wgslsmith_dot_vec3_i32(var_0.yww, var_0.xwz)), min(u_input.c, -(1 ^ 0))));
            }
            default: {
                let var_3 = _wgslsmith_div_i32(-(~_wgslsmith_add_i32(36558 ^ var_0.x, _wgslsmith_dot_vec2_i32(var_0.zw, vec2<i32>(1, var_0.x)))), select(firstTrailingBit(-2147483648), _wgslsmith_mod_i32(var_0.x, -_wgslsmith_clamp_i32(var_2, var_0.x, 0)), false));
            }
        }
        let var_3 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-var_1.x))) - 318.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487.0))))));
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(2671.0)), u_input.d, select(-vec3<i32>(u_input.c & 32908, var_0.x, -33910), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, var_0.x), var_0.yzz), var_0.ywz), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(12677u, 21u)]))), max(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_2, -19795, var_2), 0), i32(-1) * -22249), firstLeadingBit(var_0.zy)));
}

