// {"0:0":[30,243,193,253,192,114,119,144,190,156,194,108,212,240,65,242,102,198,135,233,212,14,94,130,254,103,223,91,128,130,181,80,32,234,79,222,146,234,150,96,109,177,40,108,8,122,164,16]}
// Seed: 16644064001565649211

struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1199.0;

var<private> global1: array<Struct_1, 26>;

var<private> global2: Struct_1;

var<private> LOOP_COUNTERS: array<u32, 13>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_6(arg_0: Struct_1) -> bool {
    switch (u_input.b >> (countOneBits(_wgslsmith_dot_vec3_u32(~u_input.c.xwx, ~(u_input.c.xyx ^ vec3<u32>(u_input.c.x, 4294967295u, 1u)))) % 32u)) {
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                global2 = arg_0;
            }
            var var_0 = Struct_5(~0u, Struct_2(arg_0.b.wwy, arg_0), _wgslsmith_f_op_vec3_f32(exp2(global2.b.xwz)), reverseBits((vec4<i32>(-1) * -vec4<i32>(arg_0.d, -32878, global2.c, 4755)) << (max(u_input.c | u_input.c, min(vec4<u32>(4294967295u, 0u, 90643u, u_input.c.x), vec4<u32>(u_input.d, 35711u, u_input.c.x, u_input.c.x))) % vec4<u32>(32u))));
            var var_1 = global2.a;
        }
        case 50358: {
            global2 = global1[_wgslsmith_index_u32(~62944u, 26u)];
            switch (arg_0.d) {
                case -2147483648: {
                    var var_0 = arg_0;
                    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(global2.b.wxy));
                }
                case 2901: {
                    let var_0 = arg_0;
                    let var_1 = firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(11545u, 12827u, u_input.c.x), vec3<u32>(u_input.c.x, 4294967295u, 1u), vec3<bool>(false, false, true)), u_input.c.xyw, u_input.c.yyx >> (u_input.c.xwy % vec3<u32>(32u))) ^ u_input.c.wyz, vec3<u32>(u_input.d, _wgslsmith_mult_u32(select(u_input.c.x, u_input.d, true), u_input.d), ~46250u ^ (1u ^ u_input.c.x))));
                    var var_2 = countOneBits(countOneBits(vec2<i32>(-2147483648, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.d, var_0.d, 77107), u_input.a, u_input.a), ~u_input.a))));
                    global2 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-arg_0.b), 43521, 2351);
                }
                case -40331: {
                    global2 = arg_0;
                    global1 = array<Struct_1, 26>();
                    let var_0 = (arg_0.a > _wgslsmith_f_op_f32(min(global2.a, 1112.0))) & true;
                    global2 = global1[_wgslsmith_index_u32(u_input.d, 26u)];
                }
                default: {
                    global1 = array<Struct_1, 26>();
                }
            }
            global2 = Struct_1(arg_0.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.b), global2.b, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(-182.0, 362.0)), _wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(max(global2.a, arg_0.b.x)), global2.a)))), firstTrailingBit(-(~global2.c)) & ~u_input.a.x, arg_0.d);
        }
        case -880: {
            var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(global2.b.x + -959.0), _wgslsmith_f_op_f32(min(-579.0, _wgslsmith_f_op_f32(-arg_0.a)))), Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global2.b, global2.b)))), _wgslsmith_clamp_i32(-reverseBits(u_input.a.x), 28032, 0), global2.c));
            var var_1 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, u_input.b, -33462, global2.d), countOneBits(vec4<i32>(u_input.a.x, -1, -1539, var_0.b.c))), abs(var_0.b.d) ^ _wgslsmith_div_i32(-7509, arg_0.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global2.c, global2.d), vec3<i32>(var_0.b.c, arg_0.c, -49762)), abs(u_input.a.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647, global2.c, 0, 0), _wgslsmith_mod_vec4_i32(vec4<i32>(-28413, global2.d, arg_0.d, u_input.a.x), vec4<i32>(arg_0.c, 2066, var_0.b.d, 0))) | abs(_wgslsmith_add_vec4_i32(vec4<i32>(-9713, 6083, 29370, 1), vec4<i32>(arg_0.c, -2147483648, 2147483647, -65841)))));
            let var_2 = vec4<i32>(_wgslsmith_div_i32(i32(-1) * -1, -1), i32(-1) * -(~(-arg_0.c)), ~u_input.b, firstLeadingBit(-1));
            switch (u_input.b) {
                case -70498: {
                    return select(!false, false, (~(u_input.d & 0u) >= 1u) | ((~u_input.d << (~123425u % 32u)) == u_input.d));
                }
                case -2147483648: {
                    let var_3 = -1000.0;
                    var var_4 = !((u_input.c.x > _wgslsmith_mod_u32(~u_input.d, ~27529u)) && false);
                    var var_5 = vec2<i32>(-2147483648, arg_0.d);
                    let var_6 = vec2<i32>(_wgslsmith_mod_i32(var_1.x | _wgslsmith_div_i32(var_5.x, arg_0.c), 2147483647), var_5.x);
                }
                case -1444: {
                    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(-139.0)), -1869.0));
                    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * var_0.a.x))));
                    let var_4 = vec4<bool>(!((false != false) & (4294967295u == u_input.c.x)) || false, ~max(_wgslsmith_mult_u32(u_input.c.x, 53401u), u_input.c.x ^ u_input.c.x) < 1u, true, !(!(!(!false))));
                    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2179.0 + _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-var_0.b.a))) - _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1204.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1258.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-250.0 * var_3) + _wgslsmith_f_op_f32(abs(var_0.a.x))))))));
                }
                default: {
                }
            }
            switch (-_wgslsmith_clamp_i32(2147483647, 0, -u_input.b)) {
                case 1: {
                    var var_3 = u_input.c.zy;
                    global0 = 408.0;
                    var var_4 = u_input.b;
                    var_3 = reverseBits(~vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(var_3.x, 45909u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.x, u_input.d, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, 27949u, 4294967295u, 16079u), vec4<u32>(var_3.x, 1u, 0u, u_input.c.x)))));
                }
                case -26112: {
                    global1 = array<Struct_1, 26>();
                }
                case -1: {
                    let var_3 = i32(-1) * -1;
                    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b.xxz + vec3<f32>(var_0.a.x, global2.a, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-941.0, 1133.0, 589.0) - _wgslsmith_f_op_vec3_f32(arg_0.b.wyz + global2.b.xxy))), _wgslsmith_f_op_vec3_f32(arg_0.b.yxy * vec3<f32>(_wgslsmith_f_op_f32(-1355.0), _wgslsmith_div_f32(729.0, 212.0), _wgslsmith_f_op_f32(min(-358.0, 1083.0)))), (_wgslsmith_add_u32(u_input.c.x, 0u) << (54725u % 32u)) < u_input.d)), var_0.b);
                    let var_4 = 24606u;
                    var var_5 = _wgslsmith_mult_i32(var_3, ~var_2.x) > 2147483647;
                }
                case -107061: {
                    global0 = 1397.0;
                }
                default: {
                    global1 = array<Struct_1, 26>();
                    var var_3 = Struct_1(_wgslsmith_div_f32(-2331.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-832.0) * arg_0.a)))), global2.b, -_wgslsmith_mod_i32(var_1.x, 2147483647) << (_wgslsmith_div_u32(u_input.d, 4294967295u) % 32u), _wgslsmith_clamp_i32(var_0.b.c, arg_0.d, _wgslsmith_sub_i32(~44451 >> (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u), 8171)));
                    var_0 = Struct_2(vec3<f32>(-1000.0, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(floor(1481.0)))), var_0.b);
                    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a))), global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * _wgslsmith_f_op_f32(select(-1000.0, global2.b.x, true))))), Struct_1(global2.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 212.0, _wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_div_f32(global2.b.x, arg_0.a))), u_input.b, i32(-1) * -369));
                }
            }
        }
        case 2147483647: {
            global0 = -805.0;
            var var_0 = arg_0.b.x;
        }
        default: {
            global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b.x))))));
            let var_0 = vec3<i32>(_wgslsmith_mod_i32(~50479, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(3632, 2147483647, -24892, global2.d)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a.x, u_input.b, -14265, 2147483647), -vec4<i32>(-2147483648, arg_0.d, -23279, 23920)))), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-1), _wgslsmith_mod_i32(28266, ~u_input.a.x), ~global2.d), u_input.a), u_input.a.x);
        }
    }
    switch (max(_wgslsmith_div_i32(~global2.d, _wgslsmith_clamp_i32(0, arg_0.c, i32(-1) * -75948)), _wgslsmith_sub_i32(-((44670 | 2147483647) ^ u_input.b), countOneBits(31614)))) {
        default: {
            let var_0 = _wgslsmith_add_vec3_i32(~(-u_input.a ^ (_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.d, 2147483647, -7929), u_input.a, u_input.a) ^ -u_input.a)), vec3<i32>(countOneBits(_wgslsmith_div_i32(54397, -2147483648)), u_input.b, -20427));
            switch (~global2.c) {
                case -1: {
                    global1 = array<Struct_1, 26>();
                    global1 = array<Struct_1, 26>();
                }
                case 8466: {
                    let var_1 = vec2<i32>(i32(-1) * -1389, arg_0.c);
                    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1755.0, _wgslsmith_f_op_f32(-global2.b.x), true)) - _wgslsmith_f_op_f32(-370.0 + 1329.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-374.0) * _wgslsmith_f_op_f32(step(2095.0, _wgslsmith_f_op_f32(-517.0 - global2.a)))), _wgslsmith_f_op_f32(global2.a + arg_0.b.x)), global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(92511u << (u_input.c.x % 32u), ~u_input.d)), 26u)]);
                    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, -569.0, arg_0.a, -663.0))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, var_2.a.x, var_2.b.a, arg_0.b.x) * vec4<f32>(arg_0.a, -261.0, arg_0.a, arg_0.b.x))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, arg_0.b.x, -1337.0, global2.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(step(1000.0, -1318.0)), global2.b.x, _wgslsmith_f_op_f32(f32(-1.0) * -660.0), var_2.a.x)))));
                    var var_4 = select(~vec3<u32>(u_input.c.x, max(~u_input.c.x, 0u), _wgslsmith_div_u32(~u_input.d, ~1u)), u_input.c.yzz, !select(select(!vec3<bool>(true, false, true), !vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, true), !vec3<bool>(false, false, false), !true), select(var_3.x < arg_0.a, all(vec3<bool>(true, true, false)), false)));
                    let var_5 = vec4<bool>((select(!false, any(vec4<bool>(false, true, false, false)), true) | select(all(vec3<bool>(true, false, true)), -988.0 <= var_3.x, false)) & true, !(!(!(!false))), true, any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))) && false);
                }
                default: {
                    var var_1 = min(u_input.b, -1) | ~_wgslsmith_mod_i32(-66260 >> (u_input.d % 32u), var_0.x);
                    let var_2 = all(!vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, false));
                    var var_3 = global2.d > ~arg_0.d;
                }
            }
        }
    }
    var var_0 = !(!vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.d), vec4<u32>(u_input.d, 68770u, u_input.c.x, 1u)) < ~u_input.c.x, !(true & true)));
    switch (~(i32(-1) * -(-8662 >> (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u)))) {
        case -29056: {
            var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2076.0, -447.0, arg_0.a)))), arg_0.b.ywx));
            for (var var_2 = -42191; var_2 >= -1; ) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            }
            var var_2 = abs(u_input.c.x);
            var var_3 = u_input.c.zyy;
        }
        case 35082: {
            let var_1 = (vec4<i32>(2147483647, countOneBits(~(-1)), _wgslsmith_mult_i32(-8663, ~arg_0.c), abs(~1)) & -abs(min(vec4<i32>(arg_0.c, 1, arg_0.c, global2.d), vec4<i32>(u_input.a.x, -42165, u_input.a.x, 2147483647)))) & _wgslsmith_div_vec4_i32(firstTrailingBit((vec4<i32>(global2.d, 1, arg_0.d, 0) >> (u_input.c % vec4<u32>(32u))) << (u_input.c % vec4<u32>(32u))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647, u_input.b, 6455, global2.d), vec4<i32>(13224, arg_0.c, arg_0.d, 0)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c, 15911, u_input.a.x, -2147483648), vec4<i32>(30968, 20423, -40621, arg_0.c)), false) ^ countOneBits(~vec4<i32>(-16108, u_input.a.x, arg_0.c, 15410)));
            var var_2 = vec3<u32>(u_input.d, ~u_input.d ^ ~u_input.c.x, abs(u_input.d));
            global1 = array<Struct_1, 26>();
            let var_3 = var_1;
            switch (var_3.x) {
                case 51900: {
                    var var_4 = !vec3<bool>(!false, -1330.0 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * -1519.0)), var_0.x);
                    var var_5 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, u_input.c.x, u_input.c.x)), u_input.c.yyw) >> (u_input.c.zxz % vec3<u32>(32u));
                }
                case 2147483647: {
                    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -1334.0), _wgslsmith_f_op_f32(-arg_0.b.x), var_0.x | var_0.x)))));
                }
                case 0: {
                    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a, arg_0.b.x, arg_0.a, arg_0.b.x))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global2.b + global2.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1823.0, -2268.0, global2.a, -655.0)))));
                    var_0 = vec2<bool>(-1101.0 >= _wgslsmith_div_f32(-266.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4.x * arg_0.b.x), _wgslsmith_f_op_f32(f32(-1.0) * -2060.0), any(vec2<bool>(true, true))))), (u_input.c.x < 1u) && any(vec2<bool>(!false, true)));
                    var_4 = arg_0.b;
                }
                case 18701: {
                    let var_4 = var_1.x;
                    let var_5 = var_0.x;
                }
                default: {
                    global0 = _wgslsmith_f_op_f32(step(-324.0, 136.0));
                    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1821.0, arg_0.a)))), -1505.0, _wgslsmith_f_op_f32(abs(global2.b.x))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1685.0, 1395.0)) * _wgslsmith_f_op_f32(419.0 - arg_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 2112.0, 1184.0, 862.0)))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1255.0, arg_0.b.x, global2.b.x, arg_0.b.x)))), -1, i32(-1) * -firstLeadingBit(u_input.b)));
                    let var_5 = !(!select(select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, true, false), vec3<bool>(false, var_0.x, false))), vec3<bool>(-752.0 < -1123.0, false, !var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, true, var_0.x), false), vec3<bool>(var_0.x, false, var_0.x))));
                    var var_6 = Struct_3(u_input.c, var_5.yx, var_4.b, _wgslsmith_mult_vec3_i32(var_1.zzw, vec3<i32>(max(-5658, select(var_3.x, -45450, true)), global2.d | (-1 >> (u_input.d % 32u)), _wgslsmith_sub_i32(~var_3.x, ~arg_0.c))));
                    let var_7 = _wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.c), u_input.c);
                }
            }
        }
        case -8892: {
            let var_1 = vec2<bool>(var_0.x || ((2147483647 <= (global2.d >> (u_input.c.x % 32u))) | true), var_0.x);
            var var_2 = ~(0 >> (59260u % 32u));
            let var_3 = -(~min(min(15712, arg_0.c), -(arg_0.c | global2.c)));
            for (var var_4 = -2147483648; all(!var_1); ) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                continue;
            }
            global2 = Struct_1(arg_0.b.x, global2.b, select(~_wgslsmith_mult_i32(select(global2.c, -29990, true), -16779), 0, any(select(select(vec4<bool>(true, var_0.x, var_1.x, false), vec4<bool>(var_0.x, var_0.x, true, true), var_1.x), !vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, true, false, false)))), 0);
        }
        case -17178: {
        }
        default: {
            switch (_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(1, -1, 32355, arg_0.c) >> (firstTrailingBit(vec4<u32>(u_input.c.x, 4448u, u_input.c.x, 32111u)) % vec4<u32>(32u)), vec4<i32>(-arg_0.c, 2147483647, abs(-1), countOneBits(u_input.a.x))), vec4<i32>(_wgslsmith_div_i32(2147483647, 0), 2147483647, global2.d, _wgslsmith_clamp_i32(i32(-1) * -8829, i32(-1) * -28644, _wgslsmith_mult_i32(-24129, global2.c))) & select(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.c, arg_0.c, global2.c, 12248), vec4<i32>(60788, u_input.a.x, global2.d, global2.d)) ^ vec4<i32>(15962, -38192, u_input.a.x, arg_0.c), vec4<i32>(1, 36779, 24491, 0) >> ((u_input.c & vec4<u32>(4294967295u, 4294u, 0u, 0u)) % vec4<u32>(32u)), ~u_input.a.x > arg_0.d))) {
                case 16871: {
                }
                case 40513: {
                    var var_1 = Struct_2(arg_0.b.wyz, arg_0);
                    let var_2 = vec3<i32>(u_input.a.x, 42388, reverseBits(u_input.a.x) ^ ~(-global2.d));
                    var var_3 = Struct_4(Struct_3(~max(vec4<u32>(u_input.d, 24938u, u_input.c.x, u_input.c.x) << (u_input.c % vec4<u32>(32u)), vec4<u32>(0u, 58533u, 1u, u_input.c.x)), !(!(!vec2<bool>(false, var_0.x))), Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -1146.0), global2.b, 23432, -(~u_input.b)), vec3<i32>(_wgslsmith_mult_i32(1, _wgslsmith_add_i32(u_input.b, global2.d)), select(reverseBits(global2.d), -17708, var_0.x), -24589)));
                }
                default: {
                    global1 = array<Struct_1, 26>();
                    let var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-(vec2<i32>(global2.d, 13798) ^ u_input.a.xy), vec2<i32>(-12844, ~global2.d)), ~(_wgslsmith_mod_i32(4355, global2.c) | (i32(-1) * -4164))), _wgslsmith_mult_i32(~1, _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b, u_input.a.x, -1, arg_0.c), vec4<i32>(-28239, global2.c, global2.d, u_input.a.x)) << (countOneBits(u_input.c) % vec4<u32>(32u)), firstTrailingBit(select(vec4<i32>(-1, 0, 16110, arg_0.d), vec4<i32>(-16635, u_input.a.x, -32174, arg_0.c), vec4<bool>(var_0.x, false, true, var_0.x))))), -1, ~_wgslsmith_div_i32(arg_0.d, _wgslsmith_mod_i32(1, u_input.b) | -1));
                }
            }
            var var_1 = global2.c;
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                return any(vec2<bool>(!all(!vec3<bool>(var_0.x, var_0.x, true)), !(!(505.0 < -112.0))));
            }
            let var_2 = Struct_5(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, firstLeadingBit(~1u))), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(global2.b.yzy)), global1[_wgslsmith_index_u32(0u, 26u)]), global2.b.xyz, vec4<i32>(global2.d, u_input.b, 0, -_wgslsmith_add_i32(_wgslsmith_add_i32(-4527, -1), reverseBits(-71808))));
        }
    }
    global0 = _wgslsmith_f_op_f32(-arg_0.a);
    return var_0.x;
}

fn func_5() -> f32 {
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a, global2.a, func_6(Struct_1(1247.0, vec4<f32>(-1093.0, global2.b.x, -208.0, -832.0), global2.d, u_input.b))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(-433.0)) * global2.b.x), global2.a, global2.b.x, global2.a), u_input.a.x, firstTrailingBit(global2.d));
    global0 = -574.0;
    let var_0 = _wgslsmith_f_op_f32(global2.b.x * -636.0);
    var var_1 = select(!vec4<bool>(true, any(!vec2<bool>(true, false)), 948.0 != _wgslsmith_f_op_f32(-var_0), select(func_6(Struct_1(var_0, vec4<f32>(1584.0, global2.a, global2.a, 1296.0), u_input.a.x, global2.c)), -18365 != global2.c, true)), vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), !vec2<bool>(false, false))), false, !all(!vec2<bool>(true, true)), any(vec3<bool>(true, true, true)) | !(!true)), select(vec4<bool>(!(!false), func_6(global1[_wgslsmith_index_u32(~u_input.d, 26u)]), !(!false), !(2534u < u_input.c.x)), select(vec4<bool>(all(vec3<bool>(false, true, false)), !false, !false, !false), !(!vec4<bool>(false, true, true, false)), false), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), !vec4<bool>(false, true, true, false), !vec4<bool>(false, true, false, true))));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, global2.d, _wgslsmith_mod_i32(global2.d, _wgslsmith_mod_i32(-1, global2.d)) ^ u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global2.c, -1205, u_input.a.x, 1), vec4<i32>(2147483647, -25565, 2147483647, u_input.b) ^ vec4<i32>(u_input.b, global2.c, u_input.b, -43300)), u_input.b, u_input.b), abs(abs(max(u_input.a, u_input.a)))));
    return 928.0;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> bool {
    global2 = global1[_wgslsmith_index_u32(0u, 26u)];
    switch (2147483647) {
        default: {
            global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.b.a - _wgslsmith_f_op_f32(f32(-1.0) * -558.0)), _wgslsmith_f_op_f32(func_5())));
            let var_0 = -2147483648;
            switch (-arg_1) {
                case 1: {
                    let var_1 = arg_2;
                    global2 = Struct_1(arg_2.b.a, arg_2.b.b, arg_2.b.d, max(-28434, ~(~(0 ^ var_1.b.d))));
                    let var_2 = !(!(!(arg_0.b.x != all(vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x)))));
                }
                case -3669: {
                    let var_1 = Struct_2(arg_2.b.b.xzy, arg_0.c);
                    let var_2 = vec4<bool>(false == arg_0.b.x, false, arg_0.b.x, true);
                }
                case -41976: {
                    global0 = -486.0;
                    let var_1 = arg_0;
                    let var_2 = select(~(~firstLeadingBit(-vec4<i32>(1, -2147483648, arg_2.b.d, var_1.d.x))), -(-vec4<i32>(1, global2.d, arg_0.c.d, arg_1) ^ select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.d.x, 2147483647, var_1.d.x, arg_1), vec4<i32>(var_0, arg_0.d.x, u_input.a.x, 2147483647), vec4<i32>(u_input.b, -873, global2.d, -41702)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, arg_1, var_1.d.x), vec4<i32>(2147483647, arg_1, -69038, 0)), select(true, true, true))), !vec4<bool>(all(!var_1.b), var_1.b.x & false, arg_0.b.x, arg_0.b.x));
                    let var_3 = var_1.c;
                    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(488.0)), 1300.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a)) + arg_0.c.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a, 961.0, -286.0)))))), select(arg_0.b.x, var_1.b.x, false))), Struct_1(var_1.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-676.0, 1000.0, -1590.0, var_3.a)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-348.0, 398.0, var_1.c.b.x, -1008.0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.b.x, -440.0, -819.0, -199.0)), var_1.b.x))), var_1.c.d >> ((_wgslsmith_add_u32(80392u, u_input.c.x) ^ _wgslsmith_add_u32(1u, arg_0.a.x)) % 32u), abs(arg_0.c.c)));
                }
                case -2147483648: {
                    return arg_0.b.x;
                }
                default: {
                    let var_1 = arg_2;
                    var var_2 = false;
                }
            }
            switch (u_input.a.x) {
                case 2147483647: {
                    var var_1 = 399.0;
                    var var_2 = false;
                    global1 = array<Struct_1, 26>();
                }
                case 465: {
                    global0 = _wgslsmith_f_op_f32(1698.0 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) * _wgslsmith_f_op_f32(-364.0)))));
                    global2 = global1[_wgslsmith_index_u32(u_input.d, 26u)];
                    var var_1 = -292.0;
                }
                default: {
                    var var_1 = (abs(_wgslsmith_div_u32(u_input.d, u_input.d) >> (arg_0.a.x % 32u)) | ~(~(~1u))) ^ (min(96498u, arg_0.a.x) >> (~u_input.d % 32u));
                    let var_2 = Struct_4(Struct_3(select(u_input.c, ~firstLeadingBit(vec4<u32>(arg_0.a.x, 1u, 13373u, u_input.c.x)), vec4<bool>(all(vec2<bool>(arg_0.b.x, arg_0.b.x)), true, !true, true)), select(arg_0.b, select(!arg_0.b, vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(arg_0.b.x, true)), any(!vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), Struct_1(global2.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1561.0, arg_2.a.x, -962.0, global2.b.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000.0, arg_0.c.b.x, global2.b.x, -1000.0)))), -2000, -1), vec3<i32>(global2.d, u_input.a.x, ~var_0) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 107272u, 1u) ^ vec3<u32>(arg_0.a.x, 0u, 23611u), vec3<u32>(arg_0.a.x, 10768u, 22089u)) % vec3<u32>(32u))));
                    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(212.0, var_2.a.c.b.x, 921.0 <= _wgslsmith_f_op_f32(func_5())))));
                }
            }
        }
    }
    var var_0 = Struct_4(Struct_3(vec4<u32>(~arg_0.a.x ^ arg_0.a.x, _wgslsmith_div_u32(212u, 44856u), 4294967295u, ~4294967295u), arg_0.b, Struct_1(_wgslsmith_f_op_f32(min(-1146.0, _wgslsmith_f_op_f32(exp2(global2.a)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b.a, global2.a, arg_0.c.a, -937.0))), global2.c, _wgslsmith_mod_i32(~global2.d, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), firstTrailingBit(~(arg_0.d | vec3<i32>(u_input.a.x, -2147483648, arg_2.b.d)))));
    let var_1 = Struct_5(min(~25350u, ~abs(~arg_0.a.x)), arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a.c.b.wyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b.b.xxx * vec3<f32>(-1600.0, 294.0, 644.0)) - vec3<f32>(arg_2.a.x, 1000.0, -984.0)), select(select(vec3<bool>(var_0.a.b.x, false, arg_0.b.x), vec3<bool>(arg_0.b.x, true, false), vec3<bool>(arg_0.b.x, false, true)), vec3<bool>(true, true, var_0.a.b.x), true))) + arg_0.c.b.zyx), -vec4<i32>(_wgslsmith_mult_i32(var_0.a.c.c, -arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.d.x, 1, -8081, 3038) >> (u_input.c % vec4<u32>(32u)), ~vec4<i32>(arg_0.d.x, 4643, arg_2.b.d, 5948)), min(-4659, -1), ~(~(-2147483648))));
    let var_2 = _wgslsmith_f_op_f32(floor(519.0));
    return all(vec4<bool>(var_0.a.b.x, any(vec3<bool>(false, all(vec4<bool>(arg_0.b.x, true, var_0.a.b.x, arg_0.b.x)), any(vec2<bool>(arg_0.b.x, arg_0.b.x)))), false, arg_0.b.x));
}

fn func_3() -> Struct_2 {
    let var_0 = ~_wgslsmith_div_u32(abs(max(u_input.c.x, 1u)), ~0u);
    switch (_wgslsmith_mod_i32(global2.c, -8763 >> (_wgslsmith_clamp_u32(var_0, ~var_0, ~4294967295u >> (_wgslsmith_mult_u32(u_input.c.x, u_input.d) % 32u)) % 32u))) {
        case -50046: {
            if ((any(vec4<bool>(select(true, true, false), !true, any(vec2<bool>(false, false)), func_4(Struct_3(u_input.c, vec2<bool>(true, true), Struct_1(-1186.0, global2.b, global2.c, -2147483648), u_input.a), u_input.b, Struct_2(global2.b.zyz, Struct_1(1000.0, global2.b, global2.d, -2147483648))))) & false) | func_6(global1[_wgslsmith_index_u32(var_0, 26u)])) {
                global1 = array<Struct_1, 26>();
                let var_1 = global2.d <= (min(~(~global2.d), 34030) | reverseBits(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(16191, -21619, 1025), vec3<i32>(63054, -5151, u_input.b)))));
                global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(-1268.0))) * _wgslsmith_f_op_f32(f32(-1.0) * -187.0)), global2.b, 52142, -_wgslsmith_mod_i32(-(-2147483648 | -2147483648), global2.c));
                var var_2 = Struct_5(u_input.d, Struct_2(global2.b.yxw, Struct_1(_wgslsmith_div_f32(-1035.0, global2.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, 730.0, global2.b.x)), _wgslsmith_f_op_vec4_f32(-global2.b)), i32(-1) * -global2.d, global2.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.a - -255.0), _wgslsmith_div_f32(global2.b.x, 469.0), _wgslsmith_f_op_f32(-1000.0)))), ~(~reverseBits(countOneBits(vec4<i32>(-36370, global2.c, -33761, u_input.a.x)))));
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_1 = Struct_5(min(var_0, _wgslsmith_clamp_u32(firstTrailingBit(min(40425u, 11278u)), var_0, 18962u)), Struct_2(_wgslsmith_f_op_vec3_f32(max(global2.b.yyw, vec3<f32>(629.0, _wgslsmith_f_op_f32(f32(-1.0) * -1222.0), global2.b.x))), Struct_1(global2.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-458.0, global2.b.x, 777.0, -2573.0), global2.b, vec4<bool>(true, false, false, true))), vec4<f32>(global2.b.x, global2.b.x, global2.b.x, 158.0), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true))), global2.c ^ ~(-1), -_wgslsmith_sub_i32(-1, -13319))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b.x, -745.0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -760.0))))), reverseBits(max(vec4<i32>(~(-2147483648), global2.c & 0, -19059, ~u_input.a.x), vec4<i32>(1, 2147483647, _wgslsmith_dot_vec4_i32(vec4<i32>(63385, 2147483647, global2.c, u_input.b), vec4<i32>(-55134, -85889, -1, global2.c)), ~global2.c))));
                break;
            }
        }
    }
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 26u)];
    var var_2 = _wgslsmith_mod_i32(var_1.d, global2.c);
    switch (_wgslsmith_add_i32(var_1.c, ~(~var_1.c))) {
        case 0: {
        }
        default: {
        }
    }
    return Struct_2(_wgslsmith_f_op_vec3_f32(global2.b.yzx + vec3<f32>(var_1.b.x, 695.0, var_1.b.x)), Struct_1(_wgslsmith_f_op_f32(var_1.b.x - -445.0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x))), -152.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * global2.a) - _wgslsmith_f_op_f32(-var_1.b.x)), 168.0), u_input.b, global2.c));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1155.0), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(582.0 - arg_3.b.b.x)), _wgslsmith_f_op_vec3_f32(select(arg_3.b.b.wyz, _wgslsmith_f_op_vec3_f32(select(arg_3.a, vec3<f32>(-761.0, arg_2, global2.b.x), arg_1.a.b.x)), arg_1.a.b.x | true)), _wgslsmith_sub_i32(2147483647, arg_1.a.d.x) < ~1)))), func_3().b);
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(trunc(arg_2.a.c.a));
    switch (_wgslsmith_mod_i32(_wgslsmith_div_i32(-reverseBits(~arg_0.b.c), _wgslsmith_dot_vec2_i32(select(_wgslsmith_clamp_vec2_i32(u_input.a.zz, vec2<i32>(global2.d, -3890), u_input.a.zx), abs(u_input.a.yy), arg_2.a.b), u_input.a.xx)), ~max(~abs(arg_1.b.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1, -2147483648), -vec3<i32>(arg_0.b.d, 2147483647, u_input.a.x))))) {
        case -20165: {
            if (28744u < arg_2.a.a.x) {
                let var_0 = Struct_5(arg_2.a.a.x, func_3(), _wgslsmith_f_op_vec3_f32(exp2(arg_0.b.b.zzz)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(0, global2.c, 20477, 34049), vec4<i32>(64179, 21890, arg_2.a.c.d, arg_1.b.c)), -vec4<i32>(0, -2147483648, arg_0.b.d, 2147483647) >> (~vec4<u32>(4294967295u, u_input.c.x, 0u, 52278u) % vec4<u32>(32u))) & -(-vec4<i32>(-3867, u_input.a.x, -2147483648, global2.c) & (vec4<i32>(arg_2.a.c.c, u_input.a.x, 19248, arg_1.b.d) >> (vec4<u32>(arg_2.a.a.x, 4172u, 30228u, 1u) % vec4<u32>(32u)))));
                let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(arg_2.a.c.a, 1030.0))))), var_0.b.b.b, global2.c, var_0.d.x);
                return func_3().a;
            }
            if (false) {
                global2 = func_7(_wgslsmith_clamp_vec4_i32(~(~(~vec4<i32>(arg_1.b.d, arg_2.a.d.x, global2.d, -2147483648))), vec4<i32>(~arg_1.b.c, u_input.a.x << (u_input.c.x % 32u), arg_2.a.c.c, _wgslsmith_dot_vec2_i32(-u_input.a.zx, _wgslsmith_mult_vec2_i32(u_input.a.xz, arg_2.a.d.zy))), max(-vec4<i32>(u_input.b, 30635, arg_2.a.d.x, u_input.b), vec4<i32>(-394, arg_1.b.d, -5976, 22250)) ^ vec4<i32>(func_7(vec4<i32>(-5640, u_input.a.x, 26828, global2.c), Struct_4(Struct_3(vec4<u32>(50255u, u_input.c.x, u_input.d, 79304u), arg_2.a.b, arg_1.b, arg_2.a.d)), 1813.0, Struct_2(vec3<f32>(arg_2.a.c.b.x, 1069.0, arg_0.b.a), Struct_1(122.0, vec4<f32>(-1000.0, arg_0.b.b.x, -2201.0, global2.b.x), arg_1.b.c, -10810))).b.c, -2147483648, global2.d ^ u_input.a.x, min(u_input.a.x, -2147483648))), arg_2, _wgslsmith_f_op_f32(-global2.a), arg_0).b;
                let var_0 = Struct_1(global2.a, arg_2.a.c.b, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.a.d.xz, vec2<i32>(global2.c, -1)), u_input.a.yx), -(i32(-1) * -2147483648), -global2.c), arg_2.a.c.d, -arg_2.a.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1) * -vec4<i32>(arg_1.b.c, arg_1.b.d, u_input.b, -8050), vec4<i32>(~arg_0.b.d, arg_1.b.d | u_input.b, 2147483647 >> (u_input.c.x % 32u), arg_1.b.c)) ^ -arg_1.b.d);
                let var_1 = Struct_5(u_input.c.x, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2064.0 + 924.0)), global2.a), func_3().b), _wgslsmith_f_op_vec3_f32(max(arg_2.a.c.b.wwz, var_0.b.xww)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, var_0.d), vec2<i32>(0, -2147483648)) ^ (-61924 | arg_2.a.d.x), u_input.b), global2.c, _wgslsmith_mod_i32(1, i32(-1) * -var_0.d), select(var_0.d, 2147483647, arg_2.a.b.x)));
                var var_2 = !(!(!select(select(vec3<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x), vec3<bool>(false, arg_2.a.b.x, false), vec3<bool>(true, arg_2.a.b.x, arg_2.a.b.x)), !vec3<bool>(true, false, arg_2.a.b.x), false)));
            }
            for (var var_0 = u_input.b; var_0 > -6392; global2 = Struct_1(_wgslsmith_f_op_f32(func_5()), _wgslsmith_f_op_vec4_f32(step(global2.b, vec4<f32>(arg_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -542.0), _wgslsmith_f_op_f32(round(global2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -264.0) - _wgslsmith_f_op_f32(-128.0 * -1338.0)), _wgslsmith_f_op_f32(-arg_1.b.b.x)))), -1, _wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(63109, arg_1.b.d, 2147483647) << (vec3<u32>(4294967295u, arg_2.a.a.x, arg_2.a.a.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.c, 1, -2147483648), u_input.a) >> (vec3<u32>(u_input.d, arg_2.a.a.x, 1u) % vec3<u32>(32u)), ~arg_2.a.d)))) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                global2 = arg_2.a.c;
                var var_1 = arg_0.a.x;
                return arg_0.a;
            }
            global1 = array<Struct_1, 26>();
        }
        case 0: {
            var var_0 = vec2<bool>(arg_2.a.b.x, all(vec3<bool>(false, all(!vec4<bool>(arg_2.a.b.x, true, arg_2.a.b.x, arg_2.a.b.x)), any(!vec3<bool>(false, arg_2.a.b.x, true)))));
            let var_1 = ~u_input.c.x;
        }
        default: {
        }
    }
    global2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -428.0)), -1748.0, !arg_2.a.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-775.0, func_3().b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a.c.b.x, -559.0))), _wgslsmith_div_f32(-975.0, -969.0))), 0, ~reverseBits(arg_1.b.c));
    let var_0 = (arg_2.a.c.c >> (min(countOneBits(u_input.d) & _wgslsmith_add_u32(arg_2.a.a.x, arg_2.a.a.x), u_input.c.x) % 32u)) <= ~0;
    let var_1 = _wgslsmith_dot_vec2_i32((~vec2<i32>(3909, 1) >> (firstLeadingBit(~u_input.c.yw) % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(firstLeadingBit(~vec2<i32>(global2.c, arg_2.a.d.x)), u_input.a.yz), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(min(arg_2.a.d.x, arg_2.a.c.c), 12647), 0), global2.c));
    return arg_1.a;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(global2.b.yyx + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_8(func_7(-vec4<i32>(-4928, global2.c, global2.c, -11735), Struct_4(Struct_3(u_input.c, arg_2.yx, Struct_1(1599.0, vec4<f32>(-927.0, -1673.0, -1859.0, 1000.0), u_input.a.x, u_input.a.x), u_input.a)), _wgslsmith_f_op_f32(round(arg_1)), func_3()), Struct_2(vec3<f32>(global2.a, -1065.0, arg_1), func_3().b), Struct_4(Struct_3(u_input.c, vec2<bool>(arg_2.x, false), global1[_wgslsmith_index_u32(1u, 26u)], vec3<i32>(u_input.b, u_input.b, 2147483647))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1993.0, arg_1)) - _wgslsmith_f_op_vec3_f32(-global2.b.zxx)), vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(func_5()), global2.b.x), arg_2.x)))));
    var var_1 = ~_wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(~arg_0), ~_wgslsmith_add_u32(arg_0, u_input.d), ~_wgslsmith_mod_u32(53938u, u_input.c.x)), ~(vec3<u32>(113708u, arg_0, u_input.d) & select(u_input.c.xwy, u_input.c.yxx, arg_2.x)));
    global1 = array<Struct_1, 26>();
    switch (_wgslsmith_dot_vec3_i32(-countOneBits(reverseBits(select(u_input.a, u_input.a, vec3<bool>(true, arg_2.x, arg_2.x)))), vec3<i32>(-38959, -2147483648, _wgslsmith_dot_vec4_i32(vec4<i32>(27236, global2.d, global2.c, global2.c) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(global2.c, u_input.b, global2.d, -12599), vec4<i32>(16859, 60714, 19461, u_input.b)), ~vec4<i32>(u_input.b, 0, 1, global2.c))))) {
        case 1: {
            global0 = func_7(vec4<i32>(firstLeadingBit(~34847) & _wgslsmith_clamp_i32(global2.d, u_input.a.x, -global2.c), _wgslsmith_dot_vec2_i32(-vec2<i32>(1, 5763), vec2<i32>(global2.d, 39904)), global2.c, -33658), Struct_4(Struct_3(vec4<u32>(_wgslsmith_div_u32(1u, u_input.c.x), 30082u, u_input.c.x, ~1u), select(!vec2<bool>(arg_2.x, arg_2.x), select(arg_2.wz, arg_2.xw, arg_2.zx), arg_2.x), Struct_1(_wgslsmith_f_op_f32(global2.a * -1282.0), vec4<f32>(1000.0, -1963.0, 1481.0, 1168.0), u_input.a.x, _wgslsmith_add_i32(global2.c, -45638)), vec3<i32>(2147483647 | 5121, 7320, _wgslsmith_mult_i32(u_input.b, -1)))), _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(max(var_0.x, -1025.0))), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.b.x), arg_1, global2.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1001.0, 1085.0, -283.0))) - _wgslsmith_f_op_vec3_f32(-global2.b.yxy))), func_3().b)).b.b.x;
            if (abs(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-14940, u_input.b, -3769, 0), ~vec4<i32>(u_input.a.x, global2.c, u_input.b, u_input.b))) < ~u_input.a.x) {
                let var_2 = reverseBits(_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, var_1.x, 1u), u_input.c.zww), ~vec3<u32>(u_input.c.x, 4238u, u_input.c.x)) ^ u_input.c.xyy);
            }
            if (arg_2.x) {
                var var_2 = global2.b;
                global2 = Struct_1(-805.0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(-742.0)), _wgslsmith_div_f32(global2.a, -555.0), 2110.0), vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), -389.0, _wgslsmith_f_op_f32(exp2(arg_1)), global2.b.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global2.b)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -746.0, var_0.x, arg_1) * vec4<f32>(var_2.x, 392.0, 965.0, var_2.x)), _wgslsmith_f_op_vec4_f32(step(global2.b, global2.b)))))), ~24954, global2.c);
                let var_3 = Struct_4(Struct_3(~(~u_input.c ^ u_input.c), !vec2<bool>(any(arg_2), false), func_3().b, -select(countOneBits(vec3<i32>(global2.c, global2.d, global2.c)), u_input.a, !vec3<bool>(true, true, false))));
            }
            var var_2 = u_input.a.zx << (u_input.c.wy % vec2<u32>(32u));
        }
        case -2147483648: {
            global1 = array<Struct_1, 26>();
            let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.d >> (_wgslsmith_div_u32(firstTrailingBit(117712u), 0u) % 32u), global2.c, _wgslsmith_sub_i32(-21690, func_7(~vec4<i32>(u_input.a.x, -4697, -54707, u_input.b), Struct_4(Struct_3(vec4<u32>(u_input.d, var_1.x, var_1.x, 26058u), vec2<bool>(arg_2.x, true), global1[_wgslsmith_index_u32(4294967295u, 26u)], vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_f32(max(-1000.0, var_0.x)), Struct_2(var_0, global1[_wgslsmith_index_u32(43716u, 26u)])).b.d)), ~firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647, u_input.a.x, global2.c), u_input.a)), u_input.a);
            return global2.b;
        }
        case -15930: {
            global2 = func_7(_wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(global2.d, u_input.b, -2147483648, global2.c)) >> (max(u_input.c, max(vec4<u32>(arg_0, arg_0, arg_0, u_input.d), u_input.c)) % vec4<u32>(32u)), ~vec4<i32>(0 << (0u % 32u), global2.d, -u_input.b, global2.c >> (arg_0 % 32u)), vec4<i32>(min(-u_input.a.x, -11510), countOneBits(~(-2147483648)), _wgslsmith_sub_i32(37679, _wgslsmith_mod_i32(global2.d, -42965)), _wgslsmith_clamp_i32(~global2.d, abs(u_input.a.x), ~global2.d))), Struct_4(Struct_3(~select(vec4<u32>(1851u, 75134u, 1437u, 64885u), vec4<u32>(u_input.d, 1u, 0u, arg_0), vec4<bool>(arg_2.x, arg_2.x, true, true)), arg_2.yx, global1[_wgslsmith_index_u32(~51588u, 26u)], countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, global2.c, u_input.a.x), u_input.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)))))), func_3()).b;
        }
        case 15489: {
            global1 = array<Struct_1, 26>();
            switch (_wgslsmith_sub_i32(u_input.a.x, global2.c)) {
                case -2147483648: {
                    global2 = func_3().b;
                    let var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.yz, ~var_1.xy), vec2<u32>(~firstTrailingBit(~90614u), 39895u));
                    var var_3 = 160.0;
                    let var_4 = Struct_4(Struct_3(~(abs(u_input.c) & u_input.c), vec2<bool>(!arg_2.x != arg_2.x, any(select(arg_2.xxz, arg_2.xwy, arg_2.x))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(round(global2.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global2.b, global2.b)), _wgslsmith_f_op_vec4_f32(abs(global2.b))), -_wgslsmith_dot_vec2_i32(vec2<i32>(0, global2.c), u_input.a.xz), _wgslsmith_clamp_i32(global2.c, u_input.b, func_7(vec4<i32>(global2.d, global2.d, -31999, global2.c), Struct_4(Struct_3(u_input.c, arg_2.zw, global1[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a)), global2.a, Struct_2(global2.b.yzw, global1[_wgslsmith_index_u32(var_1.x, 26u)])).b.d)), u_input.a));
                }
                case 2147483647: {
                    let var_2 = arg_2.xzw;
                    var var_3 = var_1.x;
                    var var_4 = Struct_1(1000.0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-497.0 - -111.0), -428.0, arg_1)) + func_7(~max(vec4<i32>(-43087, global2.d, -37004, 35682), vec4<i32>(u_input.b, -3936, 0, -2997)), Struct_4(Struct_3(vec4<u32>(1u, 35163u, u_input.d, 2465u), arg_2.yz, Struct_1(arg_1, global2.b, -48092, u_input.a.x), vec3<i32>(u_input.b, 490, u_input.a.x))), var_0.x, func_7(countOneBits(vec4<i32>(-21429, -1, -52230, global2.d)), Struct_4(Struct_3(u_input.c, var_2.xz, global1[_wgslsmith_index_u32(var_1.x, 26u)], u_input.a)), _wgslsmith_f_op_f32(min(542.0, -159.0)), func_3())).b.b), u_input.a.x, select(-2147483648, u_input.a.x, true));
                    var var_5 = arg_2;
                    let var_6 = Struct_1(global2.a, func_3().b.b, reverseBits(var_4.d), i32(-1) * -1);
                }
                case -16888: {
                    global0 = arg_1;
                    let var_2 = _wgslsmith_f_op_f32(-1536.0);
                    var var_3 = Struct_5(60956u, Struct_2(global2.b.xwz, Struct_1(-107.0, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, var_2, -105.0, global2.b.x))))), global2.d, max(~u_input.a.x, -2147483648))), global2.b.wxw, vec4<i32>(~(~(~global2.d)), _wgslsmith_mod_i32(u_input.a.x, u_input.b), max(-1 | _wgslsmith_div_i32(u_input.a.x, 837), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1, 7616, 2147483647, u_input.a.x), vec4<i32>(global2.c, u_input.b, global2.c, global2.d)), select(vec4<i32>(-1, global2.d, -2147483648, -36587), vec4<i32>(global2.d, u_input.b, 0, global2.d), false))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(abs(u_input.a.x), -2147483648), reverseBits(global2.c) << (1u % 32u))));
                    let var_4 = func_7(vec4<i32>(u_input.a.x, 16463, reverseBits(_wgslsmith_add_i32(~(-1), max(-2147483648, 48488))), global2.d), Struct_4(Struct_3((vec4<u32>(arg_0, 63813u, 1u, var_1.x) | vec4<u32>(var_3.a, var_3.a, u_input.d, var_3.a)) << (u_input.c % vec4<u32>(32u)), vec2<bool>(func_4(Struct_3(u_input.c, vec2<bool>(arg_2.x, true), var_3.b.b, u_input.a), var_3.d.x, Struct_2(vec3<f32>(arg_1, arg_1, global2.a), var_3.b.b)), true), global1[_wgslsmith_index_u32(~var_1.x, 26u)], vec3<i32>(-var_3.d.x, reverseBits(-43503), u_input.a.x))), var_2, var_3.b).b;
                    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_4.b, global2.b)) + _wgslsmith_f_op_vec4_f32(var_3.b.b.b * vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(trunc(-116.0))))));
                }
                case -1: {
                    global0 = _wgslsmith_f_op_f32(-arg_1);
                    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1) * -1, reverseBits(-(u_input.a.x & 31630)), global2.d, -global2.d), abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(global2.d, 1, global2.d, u_input.b), vec4<i32>(global2.d, u_input.b, global2.d, u_input.b)) | -(vec4<i32>(-75005, global2.d, 1, -61218) << (vec4<u32>(u_input.d, 50258u, u_input.c.x, 0u) % vec4<u32>(32u)))));
                    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) * _wgslsmith_f_op_f32(var_0.x + 847.0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b) + global2.b), vec4<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(func_8(func_3(), func_3(), Struct_4(Struct_3(u_input.c, vec2<bool>(false, arg_2.x), Struct_1(-1878.0, global2.b, var_2.x, -47244), vec3<i32>(global2.d, u_input.a.x, var_2.x))))).x, var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.b.x, global2.b.x), _wgslsmith_f_op_f32(step(arg_1, arg_1))))), select(arg_2, arg_2, !(u_input.b < global2.c)))), global2.d, -16729);
                    let var_4 = Struct_3(~(reverseBits(~u_input.c) | ~(vec4<u32>(arg_0, 4294967295u, 75795u, arg_0) | vec4<u32>(var_1.x, u_input.d, arg_0, arg_0))), !select(vec2<bool>(arg_2.x, all(vec4<bool>(false, arg_2.x, true, false))), select(vec2<bool>(arg_2.x, arg_2.x), !vec2<bool>(arg_2.x, true), vec2<bool>(true, arg_2.x)), arg_2.x), global1[_wgslsmith_index_u32(min(~(~0u), 82880u) >> (var_1.x % 32u), 26u)], vec3<i32>(0, ~46659, _wgslsmith_dot_vec4_i32(select(var_2, var_2, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_mod_vec4_i32(var_2, vec4<i32>(1, 10819, 31000, 22901)))) >> (vec3<u32>((0u ^ var_1.x) << ((1u & 5652u) % 32u), arg_0, 47852u) % vec3<u32>(32u)));
                }
                default: {
                    global2 = func_3().b;
                    global1 = array<Struct_1, 26>();
                }
            }
            var var_2 = vec2<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 0u, arg_0), u_input.c.yyx));
            switch (0) {
                default: {
                }
            }
            let var_3 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(arg_0, 1u, u_input.d, var_2.x))), _wgslsmith_dot_vec4_u32(~u_input.c, min(vec4<u32>(4294967295u, var_1.x, arg_0, 4294967295u), u_input.c))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(24172u, 3880u, 4294967295u), vec3<u32>(var_2.x, u_input.c.x, 3195u)) >> ((26978u << (var_1.x % 32u)) % 32u), ~u_input.d, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(5110u, u_input.c.x), ~arg_0, _wgslsmith_mod_u32(u_input.c.x, arg_0))));
        }
        default: {
            var_1 = _wgslsmith_mod_vec3_u32(u_input.c.zzz, ~reverseBits(_wgslsmith_clamp_vec3_u32(max(u_input.c.xzz, u_input.c.yyy), abs(vec3<u32>(10451u, 1u, var_1.x)), min(u_input.c.yyx, vec3<u32>(0u, u_input.d, 0u)))));
            let var_2 = Struct_4(Struct_3(vec4<u32>(10609u, u_input.c.x, abs(~u_input.c.x), ~_wgslsmith_div_u32(34314u, var_1.x)), vec2<bool>(all(vec2<bool>(arg_2.x, false)), _wgslsmith_f_op_f32(ceil(-120.0)) >= _wgslsmith_f_op_f32(sign(153.0))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(51068u, _wgslsmith_add_u32(var_1.x, 0u)) | ~arg_0, 26u)], select(countOneBits(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), ~vec3<i32>(global2.c, u_input.a.x, u_input.b), arg_2.ywx)));
            var var_3 = Struct_3(~var_2.a.a, var_2.a.b, Struct_1(_wgslsmith_f_op_f32(step(494.0, func_7(~vec4<i32>(38420, u_input.a.x, global2.c, var_2.a.d.x), Struct_4(Struct_3(vec4<u32>(59472u, var_1.x, arg_0, 1u), vec2<bool>(true, false), Struct_1(1567.0, global2.b, u_input.b, 12338), u_input.a)), _wgslsmith_f_op_f32(-var_2.a.c.b.x), func_7(vec4<i32>(u_input.b, 0, var_2.a.d.x, global2.c), var_2, global2.a, Struct_2(vec3<f32>(global2.b.x, 2070.0, var_2.a.c.a), var_2.a.c))).a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global2.b))), -16212, _wgslsmith_dot_vec4_i32(min(vec4<i32>(global2.c, -1, global2.c, -7305), vec4<i32>(57964, u_input.a.x, u_input.b, 2147483647)), ~vec4<i32>(3045, var_2.a.c.d, var_2.a.d.x, -2147483648)) | -func_7(vec4<i32>(global2.c, 0, var_2.a.c.c, -2147483648), Struct_4(var_2.a), -523.0, Struct_2(vec3<f32>(global2.a, 1000.0, var_2.a.c.b.x), var_2.a.c)).b.d), var_2.a.d);
            var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2.b, vec4<f32>(499.0, -176.0, var_0.x, var_3.c.a)) * var_3.c.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b * var_3.c.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-881.0, 378.0, global2.a, -200.0)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-601.0 + -137.0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_2.a.c.b.x, var_0.x)), _wgslsmith_f_op_f32(-global2.a))))), _wgslsmith_f_op_f32(-var_2.a.c.b.x), var_0.x)));
            var_3 = Struct_3(_wgslsmith_mod_vec4_u32(u_input.c << (abs(var_2.a.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 409u), vec2<u32>(u_input.c.x, var_1.x)), 4294967295u, 2392u | u_input.c.x, 74213u)), vec2<bool>(true, !(~var_2.a.a.x < _wgslsmith_sub_u32(16295u, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.c.b.x), arg_1)) * -1274.0), _wgslsmith_f_op_vec4_f32(-global2.b), u_input.b, 30959), ~_wgslsmith_div_vec3_i32(abs(vec3<i32>(-2147483648, 4347, global2.d)), vec3<i32>(i32(-1) * -94865, _wgslsmith_div_i32(-53842, 0), 2147483647)));
        }
    }
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(func_5()), _wgslsmith_f_op_f32(arg_1 - arg_1));
    return _wgslsmith_f_op_vec4_f32(-global2.b);
}

fn func_9(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> f32 {
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        global1 = array<Struct_1, 26>();
    }
    if (!true) {
        let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a, arg_0, arg_1.x))), _wgslsmith_f_op_vec3_f32(-global2.b.zww))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, arg_1.x, -118.0), vec3<f32>(arg_1.x, arg_2.x, 1741.0))))), global1[_wgslsmith_index_u32(4294967295u, 26u)]);
    }
    for (var var_0 = -2790; var_0 != 0; global1 = array<Struct_1, 26>()) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        global0 = _wgslsmith_f_op_f32(f32(-1.0) * -364.0);
        if (false) {
            var var_1 = func_7(reverseBits(((vec4<i32>(u_input.b, -2579, u_input.a.x, global2.d) >> (vec4<u32>(6864u, 99870u, u_input.c.x, 4294967295u) % vec4<u32>(32u))) >> (~u_input.c % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(~u_input.c, u_input.c & vec4<u32>(36042u, u_input.c.x, u_input.c.x, 28269u)) % vec4<u32>(32u))), Struct_4(Struct_3(~(~vec4<u32>(u_input.c.x, 0u, u_input.c.x, 66529u)), vec2<bool>(!false, true), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), 26u)], u_input.a)), _wgslsmith_f_op_f32(ceil(-785.0)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global2.b.xxx, global2.b.wxw), _wgslsmith_f_op_vec3_f32(-arg_1.ywz), true))), func_7(_wgslsmith_mod_vec4_i32(vec4<i32>(-17418, 23230, arg_3.x, global2.c), vec4<i32>(global2.d, 21435, u_input.a.x, arg_3.x)) << (~vec4<u32>(u_input.d, 62274u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), Struct_4(Struct_3(u_input.c, vec2<bool>(false, true), Struct_1(-1319.0, global2.b, arg_3.x, 2147483647), vec3<i32>(1, u_input.a.x, -12351))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(f32(-1.0) * -908.0), true)), func_3()).b)).b;
            let var_2 = select(select(select(vec4<bool>(select(true, false, true), func_6(Struct_1(var_1.a, vec4<f32>(var_1.a, -875.0, 412.0, -491.0), 2147483647, -36806)), !false, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), !vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), var_1.a == -1820.0)), vec4<bool>(!any(vec2<bool>(true, false)), !true, ~u_input.c.x > u_input.d, (-1876.0 >= -486.0) || all(vec3<bool>(false, true, true))), select(!(!vec4<bool>(false, true, true, true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), !func_6(Struct_1(arg_0, vec4<f32>(854.0, arg_1.x, -216.0, global2.a), -36742, var_1.d)))), !(!select(!vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false), !false)), !true);
            var_1 = func_7(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c, arg_3.x, var_1.d, 2147483647), vec4<i32>(var_1.c, 2147483647, 10753, var_1.d))), Struct_4(Struct_3(u_input.c, var_2.yz, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.yz | vec2<u32>(3936u, u_input.c.x), vec2<u32>(4975u, 14275u)), 26u)], vec3<i32>(var_1.d, func_7(vec4<i32>(arg_3.x, 1, u_input.a.x, -1), Struct_4(Struct_3(u_input.c, var_2.yx, Struct_1(arg_1.x, vec4<f32>(2146.0, -435.0, arg_1.x, 2008.0), 15271, 1), u_input.a)), 789.0, Struct_2(vec3<f32>(arg_1.x, var_1.a, global2.b.x), global1[_wgslsmith_index_u32(18531u, 26u)])).b.c, abs(-18784)))), 334.0, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(func_3().b.b.ywy, arg_1.zyz)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, arg_1.x, global2.a) * vec3<f32>(arg_1.x, 1194.0, arg_1.x)))), func_3().b)).b;
            continue;
        }
        var var_1 = select(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), !vec2<bool>(true, false)), !vec2<bool>(false, true), !vec2<bool>(false, false)), !(!vec2<bool>(any(vec3<bool>(true, false, false)), !false)), false);
        break;
    }
    switch (_wgslsmith_mod_i32(-1, arg_3.x)) {
        case -5712: {
            if (false || (~_wgslsmith_clamp_u32(max(36122u, u_input.c.x), u_input.d ^ u_input.d, u_input.c.x) != ~u_input.c.x)) {
            }
        }
        case 1: {
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_0 = global1[_wgslsmith_index_u32(~reverseBits(4294967295u) & 79523u, 26u)];
                var var_1 = ~(~arg_3.x);
            }
            if (func_4(Struct_3(firstTrailingBit(u_input.c), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5())), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, 272.0, arg_0, -1010.0), global2.b) * func_7(vec4<i32>(-42066, arg_3.x, u_input.b, u_input.a.x), Struct_4(Struct_3(u_input.c, vec2<bool>(false, true), Struct_1(arg_2.x, vec4<f32>(-1249.0, arg_1.x, arg_2.x, 798.0), u_input.b, u_input.b), vec3<i32>(arg_3.x, 5269, 2147483647))), -581.0, Struct_2(arg_1.yyx, global1[_wgslsmith_index_u32(1u, 26u)])).b.b), _wgslsmith_mod_i32(countOneBits(0), abs(global2.c)), global2.c), u_input.a), max(u_input.a.x, select(_wgslsmith_add_i32(~2147483647, ~u_input.b), _wgslsmith_mult_i32(u_input.b << (1u % 32u), global2.d), !true)), Struct_2(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(arg_0 - arg_1.x)), func_7(abs(vec4<i32>(arg_3.x, 1, global2.d, 1)), Struct_4(Struct_3(u_input.c, vec2<bool>(true, false), Struct_1(-905.0, arg_1, 0, -41053), u_input.a)), global2.b.x, Struct_2(vec3<f32>(-1000.0, arg_0, arg_1.x), global1[_wgslsmith_index_u32(abs(u_input.d), 26u)])).b))) {
                var var_0 = Struct_4(Struct_3(~u_input.c, !vec2<bool>(all(vec2<bool>(true, true)), global2.a > -931.0), func_3().b, reverseBits(u_input.a)));
                var var_1 = u_input.a.x;
            }
            global1 = array<Struct_1, 26>();
            switch (12805) {
                case -54805: {
                    global0 = global2.a;
                    let var_0 = select(vec2<bool>(false, !(arg_0 > 600.0)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), false), !vec2<bool>(true, false), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)))), vec2<bool>(all(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec3_f32(func_8(Struct_2(global2.b.wxy, global1[_wgslsmith_index_u32(1u, 26u)]), Struct_2(arg_1.zwz, global1[_wgslsmith_index_u32(50996u, 26u)]), Struct_4(Struct_3(u_input.c, vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.d, 26u)], vec3<i32>(-12604, -2147483648, 0))))).x >= _wgslsmith_f_op_f32(-global2.b.x)), func_4(Struct_3(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)), select(vec2<bool>(true, false), vec2<bool>(false, false), false), global1[_wgslsmith_index_u32(26150u, 26u)], u_input.a), -2147483648, func_3())), select(select(vec2<bool>(!true, all(vec4<bool>(false, false, true, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, true), vec2<bool>(true, true))), !(!vec2<bool>(false, false)), func_6(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.c.x) ^ u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(75992u, 1u, 69185u, u_input.d), u_input.c)), 26u)])));
                    global1 = array<Struct_1, 26>();
                    global2 = global1[_wgslsmith_index_u32(reverseBits(0u), 26u)];
                }
                default: {
                    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(976.0, arg_0)), -1000.0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652.0 - -1130.0)))), 121.0);
                    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-879.0) + _wgslsmith_f_op_f32(-global2.b.x)) - -1531.0), 946.0)));
                }
            }
        }
        case 83148: {
        }
        default: {
            global0 = arg_0;
            if (true) {
            }
            return global2.b.x;
        }
    }
    let var_0 = Struct_4(Struct_3(max(select(select(u_input.c, u_input.c, vec4<bool>(true, true, true, true)), firstTrailingBit(vec4<u32>(u_input.c.x, 73155u, 75880u, u_input.d)), false), ~vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.d)), !select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), !true), func_3().b, vec3<i32>(abs(0), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(7388, 15711, u_input.b, 0), vec4<i32>(u_input.a.x, global2.d, 2147483647, -1)), arg_3.x << (u_input.c.x % 32u), select(u_input.b, global2.c, true)), 0)));
    return arg_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    switch (-firstTrailingBit(_wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(arg_3, u_input.a), i32(-1) * -u_input.b))) {
        case -59984: {
        }
        case 2147483647: {
            if (!(false | !false)) {
            }
        }
        default: {
            global2 = Struct_1(_wgslsmith_f_op_f32(min(-588.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.x, -698.0) + _wgslsmith_f_op_f32(max(487.0, global2.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1160.0 + _wgslsmith_f_op_f32(round(global2.b.x))))), _wgslsmith_f_op_f32(-1628.0), _wgslsmith_f_op_f32(sign(global2.a)), _wgslsmith_f_op_f32(func_9(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -400.0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_2, -2362.0, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), global2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.b.yz))), arg_3.zx))), -2147483647, 8871 >> (arg_0.x % 32u));
            switch (global2.d) {
                case -2147483648: {
                    var var_0 = _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.c.zy, arg_0.zz, vec2<u32>(1u, 12032u)) << (firstLeadingBit(u_input.c.xw) % vec2<u32>(32u)), vec2<u32>(max(~4294967295u, _wgslsmith_clamp_u32(arg_2, u_input.d, arg_2)), _wgslsmith_sub_u32(u_input.d, 46849u) & max(66045u, 103972u))) | u_input.c.zy;
                }
                default: {
                    var var_0 = Struct_3(select(select(vec4<u32>(arg_2, _wgslsmith_mult_u32(4294967295u, u_input.c.x), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.c.yw, arg_0.yy)), min(~u_input.c, vec4<u32>(0u, u_input.d, u_input.c.x, arg_0.x) | u_input.c), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), ~((vec4<u32>(arg_0.x, arg_0.x, 0u, 1u) & u_input.c) & u_input.c), !select(!vec4<bool>(true, false, true, true), !vec4<bool>(false, arg_1.x, true, arg_1.x), arg_1.x && true)), arg_1.zz, Struct_1(_wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_vec3_f32(func_8(func_3(), func_3(), Struct_4(Struct_3(u_input.c, arg_1.yx, global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_3)))).x, false && (-1384.0 < -748.0))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(900.0 + -576.0), global2.a, false)), _wgslsmith_f_op_f32(round(539.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(global2.b.x * 1353.0)), global2.b.x), 12774, global2.c), arg_3);
                }
            }
            if (all(vec3<bool>(func_6(Struct_1(func_3().b.b.x, global2.b, -u_input.a.x, u_input.b)), !(!(u_input.c.x != arg_0.x)), true))) {
            }
            global1 = array<Struct_1, 26>();
        }
    }
    global1 = array<Struct_1, 26>();
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    return global1[_wgslsmith_index_u32(arg_0.x, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(~select(u_input.c, u_input.c, !vec4<bool>(false, false, true, true)), vec2<bool>(!(!true), any(vec3<bool>(true, false, false)) == true), func_1(u_input.c.xxx, vec3<bool>(1168.0 >= -317.0, true, false & false), u_input.c.x, -(~vec3<i32>(2147483647, -1, -13666))), ~u_input.a));
    if (all(vec2<bool>(var_0.a.a.x < _wgslsmith_mult_u32(var_0.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(var_0.a.a.x, u_input.c.x))), false))) {
        let var_1 = Struct_5(~_wgslsmith_clamp_u32(~0u | 29363u, _wgslsmith_dot_vec2_u32(min(u_input.c.ww, u_input.c.yy), reverseBits(vec2<u32>(var_0.a.a.x, var_0.a.a.x))), 0u), func_7(min(reverseBits(vec4<i32>(2147483647, 24442, 20130, global2.d) >> (vec4<u32>(u_input.c.x, var_0.a.a.x, 15246u, u_input.c.x) % vec4<u32>(32u))), reverseBits(select(vec4<i32>(2147483647, -2060, -2147483648, u_input.b), vec4<i32>(-1, -19513, -2147483648, global2.c), vec4<bool>(false, true, var_0.a.b.x, var_0.a.b.x)))), Struct_4(var_0.a), _wgslsmith_f_op_f32(abs(1536.0)), func_3()), global2.b.wxx, -(((vec4<i32>(var_0.a.c.c, var_0.a.c.c, -21564, -3297) | vec4<i32>(41812, u_input.a.x, -16663, global2.c)) >> (reverseBits(vec4<u32>(36029u, 1u, u_input.d, 60326u)) % vec4<u32>(32u))) | min(_wgslsmith_div_vec4_i32(vec4<i32>(39165, var_0.a.d.x, global2.d, u_input.a.x), vec4<i32>(-6454, 11122, global2.d, 0)), -vec4<i32>(-36962, u_input.a.x, -16447, 1))));
    }
    let var_1 = var_0.a.b.x;
    switch (var_0.a.d.x) {
        default: {
            let var_2 = ~u_input.a;
            var var_3 = !(!select(select(vec3<bool>(true, var_0.a.b.x, true), vec3<bool>(false, true, false), select(vec3<bool>(var_0.a.b.x, false, var_0.a.b.x), vec3<bool>(false, var_0.a.b.x, var_0.a.b.x), true)), vec3<bool>(false, var_0.a.b.x, var_0.a.b.x), !vec3<bool>(false, true, var_0.a.b.x)));
            let var_4 = !(!vec3<bool>(true, _wgslsmith_f_op_f32(global2.b.x * -877.0) == _wgslsmith_f_op_f32(global2.a - 854.0), var_3.x));
            let var_5 = Struct_5(u_input.d, Struct_2(var_0.a.c.b.xxz, func_1(vec3<u32>(~var_0.a.a.x, firstLeadingBit(35493u), var_0.a.a.x), var_4, 0u, reverseBits(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-33067, -1, 3056))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_7(~vec4<i32>(-2147483648, u_input.b, -1, global2.c), Struct_4(Struct_3(var_0.a.a, vec2<bool>(false, var_3.x), Struct_1(-1076.0, vec4<f32>(-552.0, -1114.0, var_0.a.c.a, global2.a), -15596, -31364), var_2)), 146.0, func_7(vec4<i32>(3428, -20711, global2.c, var_0.a.d.x), Struct_4(var_0.a), var_0.a.c.b.x, Struct_2(vec3<f32>(var_0.a.c.b.x, -1000.0, -1000.0), Struct_1(-494.0, vec4<f32>(var_0.a.c.a, 208.0, global2.b.x, -912.0), global2.c, -17060)))).a.x, _wgslsmith_f_op_f32(var_0.a.c.b.x * func_7(vec4<i32>(u_input.a.x, global2.c, -1, global2.d), Struct_4(Struct_3(var_0.a.a, var_4.zx, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], vec3<i32>(-9321, -52408, 0))), -482.0, Struct_2(vec3<f32>(var_0.a.c.a, var_0.a.c.b.x, var_0.a.c.a), Struct_1(global2.b.x, vec4<f32>(-863.0, 725.0, var_0.a.c.a, var_0.a.c.b.x), global2.c, u_input.a.x))).a.x), _wgslsmith_div_f32(-1654.0, _wgslsmith_f_op_f32(-899.0))))), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.a.d.x, var_0.a.d.x, 0, 0) | vec4<i32>(-2147483648, -1, 0, -u_input.b), vec4<i32>(max(~global2.d, 0), ~_wgslsmith_mult_i32(u_input.a.x, var_0.a.d.x), -min(-1, global2.c), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1), vec2<i32>(23823, -17989)))));
            var var_6 = Struct_3(vec4<u32>(21283u, _wgslsmith_dot_vec4_u32(u_input.c, firstTrailingBit(countOneBits(u_input.c))), ~max(_wgslsmith_clamp_u32(34254u, 15649u, 1u), _wgslsmith_mod_u32(46742u, var_0.a.a.x)), firstTrailingBit(1u)), vec2<bool>(false, any(select(select(vec4<bool>(var_0.a.b.x, var_4.x, var_0.a.b.x, true), vec4<bool>(var_3.x, true, true, var_3.x), true), vec4<bool>(var_3.x, var_3.x, false, false), false))), Struct_1(_wgslsmith_f_op_f32(-func_3().b.b.x), global2.b, -1, _wgslsmith_div_i32(global2.c, -func_1(u_input.c.yxw, var_4, 0u, vec3<i32>(-19310, var_0.a.d.x, 2147483647)).d)), var_0.a.d);
        }
    }
    global1 = array<Struct_1, 26>();
    for (var var_2 = -2147483648; var_0.a.b.x; var_2 -= 1) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        if (reverseBits(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(var_0.a.a.xzw, u_input.c.yxz), vec3<u32>(var_0.a.a.x, var_0.a.a.x, 10930u) ^ var_0.a.a.zxx)) >= ~u_input.d) {
            continue;
        }
    }
    switch (firstLeadingBit(-var_0.a.d.x)) {
        default: {
            if (all(select(!var_0.a.b, !(!var_0.a.b), !(!(!var_0.a.b.x))))) {
                let var_2 = Struct_4(Struct_3(~var_0.a.a, select(!var_0.a.b, select(vec2<bool>(var_0.a.b.x, var_0.a.b.x), select(var_0.a.b, var_0.a.b, false), var_0.a.a.x < u_input.c.x), vec2<bool>(true && false, false)), func_3().b, select(~_wgslsmith_div_vec3_i32(var_0.a.d, vec3<i32>(u_input.b, -2147483648, -85801)), ~_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), vec3<bool>(true && var_0.a.b.x, func_4(var_0.a, 55700, Struct_2(vec3<f32>(610.0, global2.a, global2.b.x), global1[_wgslsmith_index_u32(94345u, 26u)])), -2147483648 != var_0.a.d.x))));
                let var_3 = max(abs(var_0.a.d.yx), vec2<i32>(2147483647 ^ -2147483648, global2.c));
                let var_4 = true;
                let var_5 = Struct_4(Struct_3(~select(vec4<u32>(26252u, 0u, 48852u, u_input.d), vec4<u32>(var_2.a.a.x, var_0.a.a.x, 1u, 1u), select(vec4<bool>(false, true, true, true), vec4<bool>(true, var_2.a.b.x, true, false), vec4<bool>(true, var_2.a.b.x, true, var_4))), !var_0.a.b, var_0.a.c, max(u_input.a ^ firstTrailingBit(vec3<i32>(global2.c, -23276, global2.d)), countOneBits(vec3<i32>(-11271, -2147483648, -2147483648)))));
                let var_6 = 635.0;
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            }
            for (; ; ) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                let var_2 = select(!select(vec4<bool>(var_0.a.b.x, !var_0.a.b.x, true, !var_0.a.b.x), vec4<bool>(global2.d > var_0.a.c.c, any(var_0.a.b), !true, var_0.a.b.x), var_0.a.b.x), !(!vec4<bool>(false, var_0.a.b.x, func_6(var_0.a.c), var_0.a.b.x)), select(vec4<bool>(_wgslsmith_f_op_f32(step(var_0.a.c.b.x, 994.0)) >= _wgslsmith_f_op_f32(abs(520.0)), select(true, true, false), var_0.a.b.x, !(var_0.a.b.x && var_0.a.b.x)), select(select(select(vec4<bool>(false, false, var_0.a.b.x, var_0.a.b.x), vec4<bool>(false, true, var_0.a.b.x, var_0.a.b.x), var_0.a.b.x), !vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, false), !vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, var_0.a.b.x)), !select(vec4<bool>(false, false, var_0.a.b.x, var_0.a.b.x), vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<bool>(true, true, var_0.a.b.x, var_0.a.b.x)), select(!vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, true), vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, true), vec4<bool>(false, var_0.a.b.x, false, false))), any(select(!vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, var_0.a.b.x), !vec4<bool>(true, var_0.a.b.x, true, var_0.a.b.x), vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)))));
                var var_3 = func_7(_wgslsmith_sub_vec4_i32(vec4<i32>(7735, var_0.a.d.x, abs(~1), 1), reverseBits(abs(select(vec4<i32>(u_input.b, 2147483647, -29353, global2.c), vec4<i32>(var_0.a.c.d, var_0.a.c.d, u_input.a.x, -34041), var_2.x)))), Struct_4(var_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -424.0))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.a)), _wgslsmith_f_op_f32(-func_7(vec4<i32>(global2.c, global2.c, u_input.b, global2.c), Struct_4(var_0.a), 1000.0, Struct_2(global2.b.xww, Struct_1(-1380.0, global2.b, -2147483648, 2147483647))).b.b.x), 1053.0), global1[_wgslsmith_index_u32(var_0.a.a.x, 26u)]));
                let var_4 = vec2<u32>(~(~(countOneBits(1u) << (63325u % 32u))), ~u_input.d);
                var var_5 = var_0.a.d.x;
                let var_6 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2018.0 + 1261.0) - _wgslsmith_f_op_f32(-2028.0)), var_3.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1688.0 + 1081.0) * _wgslsmith_f_op_f32(-var_0.a.c.b.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c.a, global2.b.x, _wgslsmith_f_op_f32(-global2.b.x)) - global2.b.xzx)), func_7(_wgslsmith_mod_vec4_i32(vec4<i32>(1, _wgslsmith_sub_i32(20206, 0), u_input.a.x, reverseBits(2147483647)), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_0.a.d.x, u_input.a.x, global2.c, u_input.a.x), abs(vec4<i32>(64826, 2147483647, -1, -2147483648)))), Struct_4(Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 0u, var_0.a.a.x), var_0.a.a), select(vec2<bool>(true, var_0.a.b.x), vec2<bool>(false, var_2.x), vec2<bool>(var_0.a.b.x, var_0.a.b.x)), var_0.a.c, vec3<i32>(var_0.a.d.x, var_3.b.c, 34601))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(486.0)) - _wgslsmith_f_op_f32(-global2.b.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-global2.b.wzz), var_3.b)).b);
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global2.b.x * global2.a));
}

