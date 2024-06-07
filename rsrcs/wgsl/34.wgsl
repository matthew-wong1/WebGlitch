// {"0:0":[16,89,27,178,155,155,18,191,40,64,67,225,202,23,224,55,216,227,149,130,30,8,88,48,79,13,110,148,184,37,13,244,246,49,188,22,224,89,204,255,4,109,249,201,45,155,118,144]}
// Seed: 16799260024618024503

struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(1, 70088, 38027), vec3<i32>(-38744, 1, -31165), vec3<i32>(16184, -46370, 40434), vec3<i32>(-28280, -1, 1), vec3<i32>(0, -1, -2147483648), vec3<i32>(-2147483648, -26133, -2147483648), vec3<i32>(-1, 2147483647, -31384), vec3<i32>(1, 23714, 11181), vec3<i32>(2147483647, 1, 0), vec3<i32>(48186, 0, 2147483647), vec3<i32>(-23565, 2147483647, 45890), vec3<i32>(8061, 2147483647, 1), vec3<i32>(-2147483648, -53500, 29499), vec3<i32>(14147, -5708, -105506), vec3<i32>(-2147483648, 1, 54050), vec3<i32>(-13823, -36167, 2997), vec3<i32>(10610, -2147483648, -1));

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(-14028, -37325, -56489, 2147483647), vec4<i32>(31499, 2147483647, -79554, -2147483648), vec4<i32>(1, -16625, -74953, -1), vec4<i32>(1, -17763, -1912, 56997), vec4<i32>(3514, -1, 6391, -1), vec4<i32>(-30423, -2147483648, 2147483647, 0), vec4<i32>(20000, 1, 32229, 1), vec4<i32>(48710, 22844, 46476, -2147483648), vec4<i32>(1, -1200, 0, 0), vec4<i32>(-8312, -2147483648, -9812, -2950), vec4<i32>(-2147483648, 4324, -42610, 46541), vec4<i32>(14680, 393, 1, 1), vec4<i32>(-35642, -2147483648, -1, -9598), vec4<i32>(21258, -13778, -2147483648, 1), vec4<i32>(0, -14653, 2147483647, -6089), vec4<i32>(0, 37685, -2147483648, -2147483648), vec4<i32>(-2147483648, -1, -1, 1), vec4<i32>(0, -25829, 1, -12584), vec4<i32>(10695, 32841, 3946, 1), vec4<i32>(2147483647, 35256, -40045, -2147483648), vec4<i32>(-2147483648, -10324, -1, 3773), vec4<i32>(-7115, 59648, -38794, -1), vec4<i32>(-1, 2147483647, -2147483648, -2147483648), vec4<i32>(-12250, 0, 7863, -27300), vec4<i32>(-39473, -1, 66543, -56124), vec4<i32>(-2147483648, 2147483647, 2147483647, 13031), vec4<i32>(-25484, 17320, -47428, -2147483648), vec4<i32>(15746, -2147483648, 1857, 20519));

var<private> global2: f32 = 894.0;

var<private> global3: vec4<i32> = vec4<i32>(-58953, -897, -39793, 0);

var<private> global4: Struct_1;

var<private> LOOP_COUNTERS: array<u32, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn func_6(arg_0: vec3<bool>) -> bool {
    var var_0 = 42645;
    global0 = array<vec3<i32>, 17>();
    var_0 = firstTrailingBit(u_input.b.x);
    if (global4.a | any(!arg_0.zx)) {
    }
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        for (var var_1 = 28035; var_1 < -8398; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            break;
        }
        var var_1 = select(select(!vec2<bool>(global4.a, false), select(select(vec2<bool>(false, global4.a), !arg_0.zz, arg_0.x && arg_0.x), vec2<bool>(false, global4.a), true), false), !arg_0.zy, !(!arg_0.x));
        var var_2 = Struct_5(36426u, ~countOneBits(-vec2<i32>(u_input.b.x, global3.x)), arg_0.yx, select(select(arg_0.yy, select(!arg_0.yz, select(vec2<bool>(var_1.x, global4.a), arg_0.xx, var_1.x), !arg_0.x), !select(vec2<bool>(true, false), arg_0.zz, arg_0.xz)), vec2<bool>(~1u == 26888u, !(!arg_0.x)), arg_0.zy));
    }
    return !global4.a;
}

fn func_5(arg_0: vec4<bool>) -> Struct_5 {
    let var_0 = select(select(arg_0.wy, select(vec2<bool>(arg_0.x, u_input.b.x >= global3.x), arg_0.xy, !func_6(vec3<bool>(true, true, global4.a))), func_6(!arg_0.xyz) & global4.a), vec2<bool>(any(!arg_0.xwz), true | ((1510.0 < global4.c.x) && (u_input.c.x == u_input.c.x))), false);
    let var_1 = _wgslsmith_f_op_f32(floor(global4.c.x));
    let var_2 = Struct_1(arg_0.x, global4.b, global4.c);
    var var_3 = !true;
    let var_4 = 1;
    return Struct_5(firstTrailingBit(~(_wgslsmith_clamp_u32(u_input.c.x, 1u, 0u) >> (global4.b % 32u))), vec2<i32>(_wgslsmith_mult_i32(~105406, abs(~1)), i32(-1) * -_wgslsmith_mult_i32(-16219, 1)), select(select(!vec2<bool>(false, false), var_0, !var_2.a), !vec2<bool>(true | var_0.x, true), all(!arg_0.zx)), arg_0.wz);
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = func_5(vec4<bool>(select(false, global4.b <= _wgslsmith_div_u32(u_input.d, arg_0.x), global4.a), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 104635u, 0u, u_input.c.x) ^ vec4<u32>(21064u, u_input.d, 0u, arg_0.x), firstLeadingBit(vec4<u32>(0u, 4294967295u, global4.b, global4.b))) < ~_wgslsmith_dot_vec4_u32(vec4<u32>(9485u, 1u, 6441u, u_input.d), vec4<u32>(u_input.c.x, arg_0.x, global4.b, 24043u)), global4.a && !false, all(vec2<bool>(-26055 >= -66161, global4.a))));
    for (var var_1 = -50017; ; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        global2 = _wgslsmith_f_op_f32(-869.0);
        let var_2 = global4.c;
        for (var var_3 = 10038; func_5(!select(vec4<bool>(func_5(vec4<bool>(true, true, var_0.c.x, global4.a)).d.x, all(vec4<bool>(true, var_0.d.x, true, true)), var_0.c.x, global4.a), vec4<bool>(false, global4.a || global4.a, !true, 1u <= arg_0.x), vec4<bool>(true, var_0.c.x, false && var_0.d.x, any(var_0.d)))).c.x; var_3 -= 1) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            var var_4 = select(!select(vec2<bool>(any(vec4<bool>(global4.a, var_0.d.x, false, false)), !true), func_5(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true)).d, !(!false)), !select(var_0.c, vec2<bool>(any(vec2<bool>(false, var_0.c.x)), !false), var_0.c), !func_5(!vec4<bool>(var_0.c.x, false, false, true)).c);
            global3 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>((i32(-1) * -21497) & var_0.b.x, firstLeadingBit(u_input.a.x), var_0.b.x & firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(-1, var_0.b.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 0, u_input.a.x, -2147483648), global1[_wgslsmith_index_u32(global4.b, 28u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 15642, var_0.b.x, u_input.b.x), vec4<i32>(var_0.b.x, u_input.a.x, u_input.a.x, 2147483647))), vec4<i32>(u_input.b.x, i32(-1) * -17173, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483648, u_input.b.x, -41130, var_0.b.x), global1[_wgslsmith_index_u32(var_0.a, 28u)]), ~(-53352)))));
            global4 = Struct_1(any(!select(select(vec3<bool>(var_0.c.x, true, var_4.x), vec3<bool>(var_0.d.x, var_0.c.x, var_0.d.x), vec3<bool>(true, false, false)), vec3<bool>(true, var_0.c.x, global4.a), !vec3<bool>(var_4.x, global4.a, false))), _wgslsmith_add_u32(arg_0.x, ~arg_0.x | u_input.d), global4.c);
            continue;
        }
        for (var var_3 = -1; ; global3 = vec4<i32>(max(1, u_input.a.x & min(select(u_input.b.x, global3.x, true), firstTrailingBit(global3.x))), -38531, u_input.b.x, select(u_input.b.x, abs(_wgslsmith_dot_vec3_i32(abs(u_input.b.yzx), reverseBits(global3.wwx))), false))) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            return Struct_1(all(var_0.d), ~(arg_0.x << (~arg_0.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2.x, 705.0))))), global4.c.x, 580.0));
        }
        var var_3 = Struct_1(false, _wgslsmith_dot_vec3_u32(arg_0, firstLeadingBit(min(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 0u, global4.b), arg_0), vec3<u32>(u_input.c.x, 2075u, 43613u)))), global4.c);
    }
    var_0 = Struct_5(~max(54486u, reverseBits(6427u & 1u)), _wgslsmith_sub_vec2_i32(var_0.b, firstTrailingBit(~_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.b.x, var_0.b.x)))), var_0.c, var_0.c);
    if (false && (_wgslsmith_f_op_f32(global4.c.x * global4.c.x) >= _wgslsmith_f_op_f32(143.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935.0 * 1622.0))))) {
    }
    let var_1 = vec3<bool>(true, global4.a, ((~59484u ^ _wgslsmith_div_u32(global4.b, 0u)) | u_input.c.x) <= 3192u);
    return Struct_1(any(vec3<bool>((-45170 ^ var_0.b.x) <= _wgslsmith_div_i32(-2147483648, global3.x), false, func_5(vec4<bool>(var_0.d.x, true, global4.a, true)).d.x)), max(select(countOneBits(abs(18173u)), global4.b, var_0.d.x & !var_0.d.x), ~arg_0.x), global4.c);
}

fn func_3() -> vec4<i32> {
    if (!global4.a) {
        switch (-2147483648) {
            case 0: {
                let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) - _wgslsmith_f_op_f32(1123.0 - 1273.0)) * _wgslsmith_f_op_f32(-global4.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(437.0 - global4.c.x))), 801.0);
            }
            case 2147483647: {
                var var_0 = Struct_5(~(~(~1u ^ _wgslsmith_mod_u32(u_input.d, 1u))), -_wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(global3.wx, vec2<i32>(u_input.b.x, 0)), vec2<i32>(~global3.x, countOneBits(-1))), !select(vec2<bool>(global4.a, false), !vec2<bool>(global4.a, global4.a), !select(vec2<bool>(global4.a, global4.a), vec2<bool>(true, true), vec2<bool>(global4.a, global4.a))), !select(vec2<bool>(true, global4.a), select(!vec2<bool>(global4.a, false), !vec2<bool>(global4.a, global4.a), vec2<bool>(global4.a, global4.a)), true));
                global4 = func_4(u_input.c);
            }
            default: {
                global0 = array<vec3<i32>, 17>();
                var var_0 = Struct_4(vec4<i32>(-(-19915 & 2147483647), -(global3.x << (abs(u_input.d) % 32u)), 62015, global3.x), Struct_1(false, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.b, 36694u, 46489u, u_input.d), vec4<u32>(global4.b, u_input.c.x, 72082u, global4.b)), ~u_input.d, 4294967295u, ~2546u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 21137u, 114434u, 6670u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 43839u, 0u), vec4<u32>(global4.b, 4294967295u, u_input.d, 42077u)))), global4.c), -2147483648, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -704.0), global4.c.x), false)), global4.c.x));
            }
        }
    }
    let var_0 = Struct_5(~(0u | 4294967295u), ~func_5(vec4<bool>(global4.a, global4.a, global4.a, u_input.d <= 24848u)).b, !(!vec2<bool>(global4.a, select(true, global4.a, global4.a))), vec2<bool>(global4.a, select(func_6(vec3<bool>(global4.a, true, true)), global4.a, _wgslsmith_f_op_f32(f32(-1.0) * -165.0) >= _wgslsmith_f_op_f32(f32(-1.0) * -1117.0))));
    if (true) {
        for (; func_6(select(vec3<bool>(-1495.0 != global4.c.x, var_0.c.x, false), !vec3<bool>(false, false, global4.a), true)) | (any(var_0.d) || func_4(~(~vec3<u32>(var_0.a, 1u, 72193u))).a); ) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            global3 = vec4<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1, reverseBits(var_0.b.x), 2147483647 ^ u_input.a.x), select(vec3<i32>(u_input.b.x, -1, u_input.b.x), vec3<i32>(1, 0, 2147483647), var_0.c.x) << (vec3<u32>(global4.b, global4.b, 4685u) % vec3<u32>(32u))), -2147483648), -countOneBits(-50031), -18098, i32(-1) * -2147483648);
        }
    }
    global0 = array<vec3<i32>, 17>();
    let var_1 = global4.c.x;
    return global1[_wgslsmith_index_u32(23493u, 28u)];
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_5) -> vec4<f32> {
    var var_0 = vec4<i32>(-1) * -firstTrailingBit(~vec4<i32>(-2147483648, global3.x, global3.x, arg_2.b.x));
    for (; ; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
    }
    switch (-_wgslsmith_sub_i32(arg_2.b.x, reverseBits(~var_0.x))) {
        case -1: {
            switch (u_input.b.x) {
                case 1: {
                }
                default: {
                    var var_1 = abs(var_0.wxz | var_0.wwx);
                    let var_2 = vec2<u32>(~(~0u), (reverseBits(_wgslsmith_div_u32(arg_1.x, u_input.c.x)) | _wgslsmith_div_u32(4751u, 4294967295u)) >> (abs(30127u) % 32u));
                    var var_3 = Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.a.x, _wgslsmith_sub_i32(global3.x, ~u_input.a.x), ~u_input.b.x | -arg_2.b.x, arg_2.b.x), func_3() | vec4<i32>(global3.x, u_input.a.x | global3.x, 2147483647, 1)), Struct_1(func_5(select(!vec4<bool>(arg_2.c.x, false, false, false), !vec4<bool>(arg_0, false, false, true), !vec4<bool>(true, false, true, false))).c.x, 0u, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global4.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x * global4.c.x)), global4.c.x)), 0, -145.0);
                    var_1 = global3.wxy;
                }
            }
            if (arg_0) {
            }
            let var_1 = _wgslsmith_f_op_vec2_f32(-global4.c.xz);
        }
        case -896: {
            switch (64318) {
                case 33708: {
                }
                case 51438: {
                    let var_1 = Struct_2(global1[_wgslsmith_index_u32(34286u, 28u)]);
                }
                case -2147483648: {
                }
                case 44036: {
                    var_0 = vec4<i32>(-_wgslsmith_add_i32(-_wgslsmith_div_i32(u_input.a.x, var_0.x), 12167), ~60896, global3.x, -76850);
                    let var_1 = -2147483648;
                }
                default: {
                    let var_1 = global4.c.x;
                    var var_2 = global4.c.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1978.0)) + global4.c.x);
                    var var_3 = Struct_1(all(vec4<bool>(arg_2.d.x, !arg_0 | (global4.c.x > global4.c.x), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), global4.a)), arg_0)), ~4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, -728.0, global4.c.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.c.x, 151.0, global4.c.x)))))));
                    let var_4 = Struct_1(arg_0, 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.c))));
                }
            }
            global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-482.0)), func_4(~vec3<u32>(u_input.c.x, u_input.c.x, arg_2.a)).c.x)) - -201.0)));
            if (arg_0) {
                var var_1 = vec3<bool>(-2031.0 != global4.c.x, all(vec3<bool>(false, global4.a, ~global4.b < arg_2.a)), !(!global4.a));
                return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.x, -718.0, -206.0, -1470.0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2103.0, 1396.0, global4.c.x, 732.0))), vec4<f32>(_wgslsmith_f_op_f32(min(global4.c.x, 540.0)), global4.c.x, _wgslsmith_f_op_f32(floor(global4.c.x)), _wgslsmith_f_op_f32(max(global4.c.x, global4.c.x))), !all(vec3<bool>(arg_2.c.x, false, arg_0))))));
            }
            switch (-arg_2.b.x ^ arg_2.b.x) {
                case -34948: {
                    var var_1 = Struct_2(-global1[_wgslsmith_index_u32(1u & ~_wgslsmith_mod_u32(u_input.c.x, 11430u), 28u)]);
                    global0 = array<vec3<i32>, 17>();
                    let var_2 = Struct_5(u_input.d, abs(vec2<i32>(arg_2.b.x, arg_2.b.x) << (max(vec2<u32>(0u, 0u), arg_1.zy) % vec2<u32>(32u))) | vec2<i32>(39870, select(u_input.a.x, 0, true)), arg_2.d, arg_2.d);
                }
                default: {
                    var_0 = u_input.b;
                    let var_1 = select(!select(!select(vec4<bool>(global4.a, true, arg_0, true), vec4<bool>(arg_2.d.x, false, false, false), arg_0), vec4<bool>(global4.a, 17731u <= 4294967295u, arg_2.d.x, all(vec4<bool>(arg_2.d.x, true, arg_0, global4.a))), !select(vec4<bool>(false, arg_2.c.x, global4.a, false), vec4<bool>(true, global4.a, global4.a, global4.a), global4.a)), !vec4<bool>(all(!arg_2.d), !global4.a, func_4(vec3<u32>(arg_1.x, arg_1.x, 4294967295u) & u_input.c).a, all(vec4<bool>(true, global4.a, global4.a, false))), select(select(select(!vec4<bool>(false, false, arg_2.d.x, arg_0), vec4<bool>(arg_0, false, global4.a, global4.a), !global4.a), select(vec4<bool>(false, false, arg_2.d.x, arg_0), !vec4<bool>(arg_0, false, true, false), !vec4<bool>(arg_0, false, arg_0, arg_0)), !vec4<bool>(true, arg_2.c.x, arg_0, false)), vec4<bool>(false, false, false, func_6(vec3<bool>(global4.a, false, arg_2.d.x))), any(!vec4<bool>(global4.a, false, true, global4.a)) && !select(false, global4.a, arg_0)));
                }
            }
            global3 = ~global1[_wgslsmith_index_u32(u_input.c.x, 28u)];
        }
        case -10912: {
            for (; ; ) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                global4 = func_4(_wgslsmith_sub_vec3_u32(~u_input.c, _wgslsmith_div_vec3_u32(countOneBits(u_input.c), ~firstLeadingBit(vec3<u32>(1u, 1u, u_input.d)))));
                var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(841.0, global4.c.x) - global4.c.xy)) + global4.c.yy))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, 327.0)))), _wgslsmith_f_op_vec2_f32(-global4.c.xx)), 36909 < -2147483648));
                var var_2 = Struct_3(Struct_2(abs(u_input.b)), arg_1);
                global3 = vec4<i32>(-2147483648, -min(_wgslsmith_mult_i32(min(var_0.x, -23861), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), -1), 25088, var_2.a.a.x);
            }
            let var_1 = any(select(func_5(!select(vec4<bool>(false, false, false, global4.a), vec4<bool>(arg_2.d.x, global4.a, arg_0, true), false)).d, func_5(select(vec4<bool>(global4.a, arg_2.d.x, true, arg_2.c.x), !vec4<bool>(arg_2.c.x, global4.a, true, global4.a), -1000.0 != 829.0)).d, !select(!vec2<bool>(global4.a, arg_2.d.x), select(arg_2.d, arg_2.c, true), arg_2.d)));
            var var_2 = arg_2.d;
        }
        case 0: {
            for (var var_1 = -13732; arg_0; var_0 = vec4<i32>(-countOneBits(-global3.x), ~countOneBits(_wgslsmith_mod_i32(~u_input.b.x, -5133)), -arg_2.b.x, _wgslsmith_sub_i32(~(-4290) | ~(~arg_2.b.x), -17306 >> ((27663u & _wgslsmith_mod_u32(1u, 0u)) % 32u)))) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(543.0, global4.c.x, false)), global4.c.x) + _wgslsmith_f_op_f32(global4.c.x * _wgslsmith_f_op_f32(-1035.0 + global4.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-276.0 + _wgslsmith_f_op_f32(step(global4.c.x, global4.c.x))))), global4.c.x, _wgslsmith_f_op_f32(-global4.c.x)));
            }
        }
        default: {
            if (true) {
                global4 = Struct_1((global4.a || arg_0) || true, 20896u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global4.c.x)), _wgslsmith_div_f32(-1000.0, global4.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.x, 1000.0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.c))));
                var var_1 = func_4(vec3<u32>(~(~1u), arg_1.x, ~(arg_2.a >> (firstLeadingBit(0u) % 32u))));
                let var_2 = func_5(vec4<bool>(any(select(vec4<bool>(false, false, true, global4.a), vec4<bool>(false, global4.a, true, false), vec4<bool>(arg_2.d.x, arg_0, false, global4.a))), true | (1000.0 <= 1038.0), arg_0, false)).d.x || !(all(vec2<bool>(arg_0, false)) & false);
            }
            let var_1 = select(!select(select(vec4<bool>(true, arg_2.c.x, global4.a, false), vec4<bool>(false, false, false, arg_0), arg_2.d.x), !(!vec4<bool>(false, false, false, global4.a)), vec4<bool>(true, any(vec4<bool>(global4.a, global4.a, global4.a, global4.a)), arg_2.a != 111486u, global4.a)), vec4<bool>(false, !false, !(!(global4.a && arg_2.d.x)), !(!select(global4.a, global4.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global4.c.x, -501.0), global4.c.x)) != global4.c.x);
        }
    }
    switch (_wgslsmith_add_i32(~_wgslsmith_clamp_i32(_wgslsmith_div_i32(~global3.x, 2147483647), u_input.b.x, ~(-47903) | ~37406), global3.x & var_0.x)) {
        case 16840: {
            let var_1 = arg_1.x;
            if (true) {
                global0 = array<vec3<i32>, 17>();
                let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global4.c - vec3<f32>(global4.c.x, global4.c.x, _wgslsmith_f_op_f32(-global4.c.x))))), global4.c));
                global1 = array<vec4<i32>, 28>();
                var var_3 = Struct_5(_wgslsmith_div_u32(~var_1, _wgslsmith_sub_u32(55236u, reverseBits(arg_2.a)) << (var_1 % 32u)), -(~(-vec2<i32>(-34758, 15961))) & vec2<i32>(9881, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.x, global3.x, var_0.x), func_3().wyz)), !vec2<bool>(!true, all(select(vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, global4.a), vec4<bool>(global4.a, false, false, arg_2.c.x), arg_0))), vec2<bool>(!(!(u_input.b.x <= 74395)), func_5(vec4<bool>(false, true, global4.a, global4.a)).c.x && (0u < firstTrailingBit(arg_1.x))));
                let var_4 = _wgslsmith_f_op_f32(-global4.c.x);
            }
        }
        default: {
            global3 = ~global1[_wgslsmith_index_u32(88514u, 28u)];
            var_0 = max(u_input.b, -(~vec4<i32>(var_0.x, i32(-1) * -7891, 32956, u_input.b.x)));
            switch (_wgslsmith_mult_i32(abs(-1), _wgslsmith_sub_i32((i32(-1) * -11892) << (1u % 32u), u_input.b.x)) | -_wgslsmith_add_i32(~arg_2.b.x, -func_5(vec4<bool>(false, arg_0, false, false)).b.x)) {
                case -2147483648: {
                    global2 = -216.0;
                    var var_1 = Struct_4(~vec4<i32>(~arg_2.b.x, ~var_0.x, _wgslsmith_sub_i32(-23136, var_0.x), -6397) << (firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(arg_1.x, global4.b), firstLeadingBit(16716u), ~0u, 1u | 14008u)) % vec4<u32>(32u)), func_4(_wgslsmith_sub_vec3_u32(u_input.c, ~vec3<u32>(13422u, u_input.d, 49390u)) << ((~u_input.c >> (_wgslsmith_div_vec3_u32(arg_1, vec3<u32>(9641u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-849.0)))))));
                    var var_2 = firstTrailingBit(-(~u_input.b.zwx) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 4294967295u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, var_1.b.b), u_input.c, u_input.c) % vec3<u32>(32u)), vec3<u32>(global4.b << (4294967295u % 32u), ~33037u, arg_1.x), u_input.c) % vec3<u32>(32u)));
                }
                default: {
                    var var_1 = _wgslsmith_mult_u32(14476u, 4294967295u);
                    var var_2 = _wgslsmith_f_op_vec3_f32(-global4.c);
                    var var_3 = select(select(!select(!vec3<bool>(true, true, arg_2.d.x), !vec3<bool>(arg_0, global4.a, true), !vec3<bool>(false, arg_2.d.x, arg_2.d.x)), vec3<bool>(reverseBits(u_input.a.x) != ~global3.x, all(!vec3<bool>(true, arg_0, arg_2.c.x)), arg_0), false), !vec3<bool>(arg_0, arg_0, 2147483647 > (-2147483648 ^ arg_2.b.x)), vec3<bool>(!(!(!arg_0)), select(arg_0, var_2.x != 541.0, true), true));
                    global4 = func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, arg_2.a, _wgslsmith_clamp_u32(73074u >> (4294967295u % 32u), ~13725u, 4294967295u)), countOneBits(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(48570u, arg_2.a, global4.b)), u_input.c))));
                    global1 = array<vec4<i32>, 28>();
                }
            }
        }
    }
    var var_1 = firstTrailingBit(~(~firstTrailingBit(vec2<i32>(u_input.a.x, -6043))) << (((~arg_1.yz << (abs(u_input.c.zy) % vec2<u32>(32u))) >> ((vec2<u32>(u_input.c.x, arg_1.x) ^ vec2<u32>(u_input.d, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182.0, 1000.0, global4.c.x, -1881.0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1651.0, global4.c.x, global4.c.x, -1000.0)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(ceil(global4.c.x)), _wgslsmith_f_op_f32(f32(-1.0) * -438.0), _wgslsmith_f_op_f32(abs(201.0))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2095.0, 795.0, global4.c.x, -1163.0))) * vec4<f32>(global4.c.x, global4.c.x, global4.c.x, global4.c.x))))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    global1 = array<vec4<i32>, 28>();
    global2 = global4.c.x;
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global4.c.x)), -484.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-479.0 - 362.0), _wgslsmith_f_op_f32(937.0 + global4.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.c.x - -1298.0), -1024.0)) - 556.0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(false, vec3<u32>(0u, global4.b, 4294967295u), Struct_5(global4.b, vec2<i32>(1, -44227), arg_0.yy, arg_0.zw))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(445.0, -1152.0, 1085.0, global4.c.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(302.0, -749.0, 954.0, global4.c.x) - vec4<f32>(-3390.0, global4.c.x, global4.c.x, global4.c.x)))));
    for (var var_1 = -1; var_1 == 11813; var_1 += 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        switch (_wgslsmith_add_i32(global3.x, _wgslsmith_sub_i32(-1, 0))) {
            default: {
                var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(0u, 1u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, global4.b, 0u), arg_0), min(vec4<u32>(61687u, 55672u, global4.b, 15595u), vec4<u32>(u_input.c.x, 4294967295u, 90604u, 0u) >> (vec4<u32>(global4.b, 0u, 67303u, global4.b) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, global4.b), 44028u, firstTrailingBit(u_input.c.x), u_input.c.x), min(vec4<u32>(global4.b, u_input.d, 1u, 1u), vec4<u32>(u_input.c.x, global4.b, global4.b, 27543u) << (vec4<u32>(4294967295u, u_input.d, u_input.c.x, 4294967295u) % vec4<u32>(32u))))) | vec4<u32>(~_wgslsmith_add_u32(u_input.c.x, 31660u) ^ ~4294967295u, reverseBits(abs(0u)), 1u, 4294967295u);
                let var_3 = func_4(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.c, vec3<u32>(58409u, 0u, 67516u)), vec3<u32>(47816u, _wgslsmith_clamp_u32(4294967295u, 45506u, u_input.d), var_2.x)));
                let var_4 = func_4(u_input.c);
            }
        }
        var var_2 = Struct_5(1u, vec2<i32>(-_wgslsmith_clamp_i32(-1, 1, global3.x) & (i32(-1) * -19844), ~u_input.a.x), arg_0.wy, arg_0.yx);
        var var_3 = global4.c.x;
        return Struct_4(global1[_wgslsmith_index_u32(global4.b, 28u)], func_4(vec3<u32>(~(32807u ^ global4.b), 33189u, ~max(global4.b, 81411u))), u_input.a.x, -2297.0);
    }
    let var_1 = Struct_5(4294967295u, u_input.a, select(vec2<bool>(global4.a, all(vec2<bool>(arg_0.x, true))), vec2<bool>(true, global4.b != ~35923u), func_5(!select(vec4<bool>(global4.a, global4.a, false, arg_0.x), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(global4.a, false, true, global4.a))).c), !vec2<bool>(true, global4.a));
    return Struct_4(-(~vec4<i32>(abs(-74719), -var_1.b.x, reverseBits(0), -1)), Struct_1(false, _wgslsmith_div_u32(var_1.a, 4294967295u), vec3<f32>(532.0, _wgslsmith_f_op_f32(global4.c.x - var_0.x), global4.c.x)), 30826, _wgslsmith_f_op_f32(-557.0));
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = 1; !global4.a; var_0 += 1) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        var var_1 = func_1(select(vec4<bool>(true, !(!true), true, all(select(vec3<bool>(true, global4.a, global4.a), vec3<bool>(global4.a, false, global4.a), global4.a))), select(vec4<bool>(!false, any(vec3<bool>(global4.a, true, global4.a)), !global4.a, !false), !select(vec4<bool>(true, false, global4.a, false), vec4<bool>(global4.a, true, global4.a, false), vec4<bool>(global4.a, true, global4.a, global4.a)), global4.a), !select(vec4<bool>(true, false, global4.a, true), !vec4<bool>(false, global4.a, true, false), true)));
        break;
    }
    let var_0 = 12253u;
    let var_1 = Struct_3(Struct_2(vec4<i32>(-1) * -_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(97860u, 28u)], vec4<i32>(2147483647, 28756, global3.x, global3.x))), u_input.c);
    var var_2 = var_1.a;
    var var_3 = true;
    let var_4 = var_1;
    let var_5 = func_5(!select(!(!vec4<bool>(global4.a, true, true, true)), select(select(vec4<bool>(false, global4.a, false, global4.a), vec4<bool>(false, false, global4.a, global4.a), false), select(vec4<bool>(global4.a, false, global4.a, false), vec4<bool>(global4.a, false, global4.a, true), false), true), vec4<bool>(select(global4.a, true, false), any(vec4<bool>(global4.a, global4.a, global4.a, global4.a)), true, global4.a)));
    let var_6 = -(~_wgslsmith_mult_i32(64737, -49007 ^ -2147483648));
    global4 = Struct_1(false, func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(~var_1.b.x, u_input.d, var_0), _wgslsmith_mult_vec3_u32(vec3<u32>(47782u, 28367u, u_input.d), vec3<u32>(global4.b, var_1.b.x, 0u)) | ~vec3<u32>(var_1.b.x, global4.b, 35210u), vec3<u32>(1u, 1333u, 1u | global4.b))).b, vec3<f32>(_wgslsmith_f_op_f32(step(func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_5.a, 23847u, 4294967295u), var_1.b, u_input.c)).c.x, _wgslsmith_f_op_f32(global4.c.x + _wgslsmith_f_op_f32(-global4.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(918.0 + 604.0) + global4.c.x), global4.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d), _wgslsmith_f_op_vec2_f32(abs(func_1(select(vec4<bool>(var_5.d.x, global4.a, var_5.c.x, var_5.c.x), vec4<bool>(false, var_5.d.x, false, var_5.d.x), false)).b.c.zz)));
}

