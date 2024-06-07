// {"0:0":[10,247,56,111,88,93,136,60,1,248,38,232,95,7,6,14,94,25,85,126,21,100,225,10,5,35,60,171,166,244,94,230]}
// Seed: 11152900991358514227

struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 30>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn func_6(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    if ((arg_2.a > _wgslsmith_f_op_f32(arg_1 + arg_1)) || !arg_2.b) {
    }
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a)))) + 468.0), arg_2.d, Struct_1(false, -19820, arg_0.zy), arg_2.c.a);
    switch (2147483647) {
        case 1: {
            var var_1 = -13525 & var_0.c.b;
            var_0 = arg_2;
            switch (arg_2.c.b) {
                case -19971: {
                    var var_2 = Struct_1(any(vec4<bool>(false, !true, !var_0.c.a, false)), 3241, select(vec2<u32>(70074u, ~reverseBits(1u)), vec2<u32>(1u, countOneBits(18453u)), arg_2.d));
                    var_1 = reverseBits(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483648, var_0.c.b), vec2<i32>(-20078, arg_2.c.b)) >> (_wgslsmith_add_vec2_u32(select(arg_0.xx, vec2<u32>(0u, 4294967295u), vec2<bool>(true, var_2.a)), u_input.b) % vec2<u32>(32u)), ~firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(0, u_input.d), vec2<i32>(var_2.b, var_0.c.b)))));
                    var var_3 = _wgslsmith_f_op_f32(-arg_1);
                }
                default: {
                    let var_2 = select(!(!select(!vec4<bool>(var_0.b, true, var_0.d, true), vec4<bool>(arg_2.d, arg_2.b, arg_2.b, var_0.c.a), !vec4<bool>(var_0.b, arg_2.c.a, var_0.b, arg_2.c.a))), select(vec4<bool>(var_0.b, false, !all(vec4<bool>(arg_2.d, false, false, true)), false), select(!vec4<bool>(arg_2.d, arg_2.c.a, true, false), select(vec4<bool>(true, arg_2.d, var_0.c.a, true), vec4<bool>(false, true, false, arg_2.b), select(vec4<bool>(var_0.c.a, false, true, true), vec4<bool>(false, arg_2.b, arg_2.b, false), var_0.b)), select(vec4<bool>(false, true, arg_2.b, var_0.c.a), select(vec4<bool>(arg_2.b, false, true, true), vec4<bool>(false, var_0.c.a, true, false), vec4<bool>(var_0.c.a, true, arg_2.b, var_0.c.a)), any(vec2<bool>(var_0.b, arg_2.d)))), vec4<bool>(arg_2.b, all(vec4<bool>(var_0.d, var_0.c.a, var_0.b, true)), (4294967295u ^ arg_2.c.c.x) >= _wgslsmith_dot_vec2_u32(arg_2.c.c, arg_0.yx), arg_2.b)), select(true, any(select(select(vec3<bool>(var_0.c.a, true, arg_2.b), vec3<bool>(arg_2.b, true, true), vec3<bool>(arg_2.d, false, true)), !vec3<bool>(var_0.b, arg_2.c.a, arg_2.d), var_0.c.a)), !(true & !var_0.b)));
                    var_0 = Struct_2(arg_1, var_2.x | var_0.d, Struct_1(!any(vec2<bool>(true, true)), arg_2.c.b, (min(arg_0.yy, u_input.b) << (~arg_0.xx % vec2<u32>(32u))) & firstTrailingBit(var_0.c.c)), var_2.x);
                    let var_3 = vec2<i32>(reverseBits(u_input.d), _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_2.c.b, ~9075), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.b, 0, -2147483648, arg_2.c.b), ~vec4<i32>(var_0.c.b, u_input.d, u_input.d, 0))));
                    var_0 = Struct_2(arg_2.a, !(!(arg_2.d & true)) & all(vec3<bool>(!arg_2.b, !var_0.d, !true)), Struct_1(!((-506.0 == -585.0) & false), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(71191, arg_2.c.b, arg_2.c.b)), reverseBits(vec3<i32>(-2147483648, var_0.c.b, var_3.x))), max(vec2<u32>(var_0.c.c.x, arg_0.x) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), arg_0.zx) >> (_wgslsmith_sub_vec2_u32(arg_2.c.c, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.c.c.x, u_input.b.x), vec2<u32>(0u, arg_2.c.c.x))) % vec2<u32>(32u))), true);
                }
            }
        }
        case 27824: {
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                return vec3<i32>(_wgslsmith_sub_i32(10612, ~(-1)), var_0.c.b, u_input.d);
            }
        }
        default: {
            var_0 = arg_2;
            var_0 = arg_2;
            var var_1 = var_0.c.c;
        }
    }
    switch (arg_2.c.b) {
        case -40521: {
            if (arg_2.c.a) {
                var var_1 = firstLeadingBit(90265u);
                let var_2 = -2147483648;
                var var_3 = Struct_1(arg_2.c.a, min(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d, var_0.c.b, -11188), _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.c.b, 1, u_input.d), vec3<i32>(2675, -2147483648, u_input.d))) >> (arg_0.x % 32u), var_0.c.b & -arg_2.c.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_2.c.c.x, arg_0.x ^ arg_2.c.c.x), vec2<u32>(~1u, ~42575u), max(abs(vec2<u32>(arg_2.c.c.x, 104762u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.c.c.x, arg_0.x), arg_0.yx))) ^ vec2<u32>(68079u & var_0.c.c.x, 0u));
                var var_4 = var_0.c;
                var_4 = Struct_1(!var_3.a, var_4.b, u_input.a.zx);
            }
            var var_1 = Struct_2(var_0.a, any(!(!vec3<bool>(true, false, arg_2.c.a))) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-999.0, 1051.0)) - _wgslsmith_f_op_f32(sign(arg_2.a))) >= 1022.0), var_0.c, arg_2.b);
            var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-881.0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049.0) * _wgslsmith_f_op_f32(-2038.0 + var_0.a))) - arg_2.a), !all(vec4<bool>(!var_1.c.a, 3668 <= var_0.c.b, var_0.b != false, select(true, true, arg_2.b))), Struct_1(false, _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(var_1.c.b, 0)), vec2<i32>(9279, var_1.c.b) | reverseBits(vec2<i32>(u_input.d, var_1.c.b))), ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_0.c.c.x, arg_2.c.c.x)), select(vec2<u32>(35032u, var_1.c.c.x), vec2<u32>(arg_0.x, 1u), var_1.c.a))), arg_2.d);
            for (var var_2 = -2147483648; true & !false; var_1 = arg_2) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_3 = Struct_1(!((_wgslsmith_clamp_i32(0, var_0.c.b, u_input.d) <= var_1.c.b) | (-861.0 >= 742.0)), max(firstLeadingBit(_wgslsmith_div_i32(max(0, 2147483647), ~32658)), -1), vec2<u32>(_wgslsmith_mod_u32(0u | u_input.a.x, arg_0.x), countOneBits(18201u)) << (countOneBits((var_1.c.c << (arg_2.c.c % vec2<u32>(32u))) & max(vec2<u32>(var_0.c.c.x, 9162u), vec2<u32>(arg_0.x, var_1.c.c.x))) % vec2<u32>(32u)));
                var_0 = arg_2;
                var var_4 = Struct_1(!true, 10827, ~(~max(firstTrailingBit(var_3.c), vec2<u32>(var_1.c.c.x, var_3.c.x) << (vec2<u32>(arg_2.c.c.x, 4294967295u) % vec2<u32>(32u)))));
            }
        }
        case 0: {
            var_0 = arg_2;
            if (all(select(vec3<bool>(~32648u <= u_input.c, true, var_0.b), vec3<bool>(all(!vec4<bool>(false, true, arg_2.b, false)), !(!true), !(!arg_2.d)), false))) {
                let var_1 = max(~16626u, 0u) <= u_input.a.x;
                var var_2 = _wgslsmith_f_op_f32(round(918.0));
                var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-1000.0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -556.0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - arg_1) * _wgslsmith_f_op_f32(f32(-1.0) * -810.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1027.0 * 831.0) * _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(282.0 + _wgslsmith_f_op_f32(-1043.0)))));
                var_2 = arg_2.a;
                var var_4 = Struct_1(any(vec3<bool>(var_0.b, all(select(vec2<bool>(false, var_1), vec2<bool>(var_1, arg_2.b), vec2<bool>(true, false))), var_1)), -47658, _wgslsmith_add_vec2_u32(arg_0.zy, var_0.c.c));
            }
            var var_1 = ~abs(~(arg_2.c.c.x & _wgslsmith_dot_vec4_u32(vec4<u32>(17014u, arg_0.x, u_input.c, arg_2.c.c.x), vec4<u32>(u_input.a.x, 56669u, 13641u, 39153u))));
        }
        default: {
            if (!(46543 <= _wgslsmith_add_i32(i32(-1) * -1, 2147483647))) {
                let var_1 = Struct_2(930.0, all(vec2<bool>(any(vec3<bool>(false, true, false)), arg_2.c.b <= (u_input.d & u_input.d))), Struct_1(!arg_2.c.a, -10297, arg_2.c.c), all(select(vec2<bool>(arg_2.d, !true), select(!vec2<bool>(var_0.d, arg_2.d), vec2<bool>(var_0.b, arg_2.b), var_0.c.a), vec2<bool>(any(vec4<bool>(arg_2.d, arg_2.b, false, arg_2.d)), true))));
                var_0 = arg_2;
            }
            for (; any(vec4<bool>(true, all(!vec4<bool>(var_0.d, arg_2.c.a, false, arg_2.d)), var_0.d, !true & arg_2.b)); ) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                continue;
            }
            var var_1 = Struct_2(1401.0, var_0.b, Struct_1(select(any(vec2<bool>(var_0.d, var_0.c.a)), any(select(vec4<bool>(var_0.d, arg_2.c.a, arg_2.c.a, arg_2.c.a), vec4<bool>(arg_2.b, var_0.c.a, true, true), vec4<bool>(true, false, true, false))), true), -select(max(-89394, arg_2.c.b), select(1, 1, false), 813.0 < 1000.0), _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(var_0.c.c.x, _wgslsmith_sub_u32(1u, 39802u)))), !(!(!(!true))));
        }
    }
    return _wgslsmith_add_vec3_i32((select(vec3<i32>(arg_2.c.b, arg_2.c.b, var_0.c.b) & vec3<i32>(arg_2.c.b, -27813, -2147483648), vec3<i32>(19543, var_0.c.b, 1665) & vec3<i32>(arg_2.c.b, var_0.c.b, 0), !vec3<bool>(arg_2.d, var_0.d, false)) << (u_input.a % vec3<u32>(32u))) << (arg_0 % vec3<u32>(32u)), vec3<i32>(-arg_2.c.b, arg_2.c.b, i32(-1) * -arg_2.c.b));
}

fn func_7(arg_0: vec4<i32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = select(!(!vec4<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, true)), true | true, any(vec4<bool>(false, false, true, true)))), !vec4<bool>(any(vec4<bool>(true, true, false, true)), false, all(!vec4<bool>(true, false, true, false)), !true), (_wgslsmith_clamp_i32(-10305 | -48723, -2147483648, arg_1.x >> (u_input.b.x % 32u)) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 4294967295u) % 32u)) != 1);
    var_0 = !(!(!select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(true, false, var_0.x, true), !vec4<bool>(var_0.x, false, true, false))));
    var_0 = !(!select(vec4<bool>(var_0.x, u_input.d <= 596, 15662 == -42888, any(vec2<bool>(var_0.x, true))), !(!vec4<bool>(var_0.x, false, var_0.x, true)), vec4<bool>(!false, true, var_0.x, var_0.x)));
    return 506.0;
}

fn func_5() -> Struct_2 {
    let var_0 = Struct_1(~max(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, 408u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, 21562u), u_input.a)) > _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x << (41375u % 32u), u_input.b.x), 33366u), -_wgslsmith_clamp_i32(-998, -1, _wgslsmith_sub_i32(u_input.d, _wgslsmith_div_i32(-1, u_input.d))), _wgslsmith_add_vec2_u32(vec2<u32>(88402u, 9295u >> (_wgslsmith_add_u32(4294967295u, 18895u) % 32u)), firstTrailingBit(firstLeadingBit(u_input.a.xy << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))))));
    if (_wgslsmith_div_f32(262.0, _wgslsmith_f_op_f32(func_7(vec4<i32>(-7888, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 0), vec2<i32>(var_0.b, -23606)), -2147483648 ^ -10955, u_input.d), func_6(~vec3<u32>(25791u, u_input.c, 55940u), _wgslsmith_div_f32(-558.0, -1701.0), Struct_2(1968.0, var_0.a, Struct_1(var_0.a, -47448, u_input.a.xz), true))))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -302.0))), -1012.0)) {
        let var_1 = Struct_1(!(-1412.0 != _wgslsmith_f_op_f32(floor(1673.0))), var_0.b, select(~(~(~vec2<u32>(var_0.c.x, var_0.c.x))), var_0.c, 0 == firstLeadingBit(19250)));
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            break;
        }
        let var_2 = var_1.c.x;
    }
    let var_1 = ~(~select(_wgslsmith_mod_u32(u_input.c, 17922u) << ((4162u & 4742u) % 32u), _wgslsmith_mod_u32(~var_0.c.x, u_input.a.x), true));
    var var_2 = vec2<bool>(abs(~74273u << (4294967295u % 32u)) >= ~abs(3859u), !false);
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_3 = ~abs(~(~vec2<i32>(var_0.b, var_0.b)) << (firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(56151u, 0u), vec2<u32>(var_0.c.x, 4294967295u))) % vec2<u32>(32u)));
    }
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(594.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1356.0))))), false, var_0, var_0.c.x <= _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.b.x, var_0.c.x), ~u_input.b), var_0.c));
}

fn func_8(arg_0: Struct_2, arg_1: vec3<f32>) -> i32 {
    for (var var_0 = 2147483647; var_0 == -1; var_0 -= 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        break;
    }
    let var_0 = vec3<u32>(~(~(1u >> (~47854u % 32u))), select(_wgslsmith_dot_vec2_u32(min(vec2<u32>(17767u, 1u) << (u_input.a.xy % vec2<u32>(32u)), ~vec2<u32>(arg_0.c.c.x, arg_0.c.c.x)), ~u_input.a.zz), u_input.a.x, !(!(!false))), u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(exp2(907.0));
    var var_2 = firstLeadingBit(_wgslsmith_sub_i32(~_wgslsmith_add_i32(21451, max(u_input.d, u_input.d)), u_input.d));
    for (; ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        let var_3 = ~(i32(-1) * -arg_0.c.b);
        var_2 = ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_3, (arg_0.c.b ^ -53754) & _wgslsmith_sub_i32(-1, 2147483647)), ~_wgslsmith_sub_i32(var_3, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.b, u_input.d, -1, 1), vec4<i32>(var_3, u_input.d, 1, -2147483648))));
        continue;
    }
    return u_input.d;
}

fn func_4() -> Struct_2 {
    var var_0 = max(~u_input.d, func_8(func_5(), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(450.0, -100.0, -656.0)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), func_5().a, _wgslsmith_f_op_f32(f32(-1.0) * -750.0))))));
    if (true) {
        var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-711.0, 1000.0) - _wgslsmith_f_op_f32(-343.0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1195.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -436.0)));
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_1 = _wgslsmith_f_op_f32(abs(1107.0));
        continue;
    }
    for (var var_1 = -(590 >> (func_5().c.c.x % 32u)); var_1 <= 0; var_0 = ~select(u_input.d, (~u_input.d | 2147483647) & _wgslsmith_mult_i32(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -53967), vec3<i32>(1, u_input.d, 2147483647))), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))))) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        for (var var_2 = -37988; (_wgslsmith_add_i32(~u_input.d, _wgslsmith_dot_vec2_i32(-vec2<i32>(-16842, 41663), ~vec2<i32>(-2147483648, u_input.d))) >= u_input.d) & true; var_2 -= 1) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            break;
        }
        var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(248.0))) != _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_div_i32(max(44606, -48363), _wgslsmith_add_i32(~9880, _wgslsmith_clamp_i32(u_input.d, ~u_input.d, i32(-1) * -2147483648))), countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), u_input.a.xz), 24731u)));
    }
    var var_1 = func_5();
    return Struct_2(var_1.a, true, var_1.c, var_1.c.a);
}

fn func_9(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = 1907.0;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1737.0), _wgslsmith_f_op_f32(round(arg_3.x)));
    for (var var_1 = 23600; var_1 == -25805; var_1 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
    }
    switch (-(-1 ^ select(arg_2, -1, arg_1.d || arg_1.d))) {
        case -2147483648: {
            if (arg_1.b) {
                var var_1 = !select(!vec4<bool>(arg_1.d, 38417u > 0u, !arg_1.d, any(vec3<bool>(false, true, arg_1.d))), !select(select(vec4<bool>(arg_1.d, arg_1.d, false, arg_1.d), vec4<bool>(true, arg_1.d, true, arg_1.c.a), false), !vec4<bool>(arg_1.c.a, arg_1.c.a, false, arg_1.b), vec4<bool>(arg_1.c.a, false, arg_1.c.a, arg_1.b)), select(vec4<bool>(select(arg_1.b, arg_1.d, true), false, arg_1.c.a, all(vec2<bool>(false, arg_1.c.a))), vec4<bool>(arg_1.c.a, func_4().b, 1u > arg_0.x, !arg_1.d), arg_1.d));
                var var_2 = ~vec4<u32>(arg_0.x, ~4294967295u, _wgslsmith_add_u32(u_input.b.x, 54888u | 0u) << ((~arg_0.x << (firstTrailingBit(209u) % 32u)) % 32u), arg_1.c.c.x);
                let var_3 = arg_1;
                let var_4 = -1;
            }
            for (var var_1 = 1656; var_1 > -22996; var_1 += 1) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var var_2 = !select(select(!select(vec2<bool>(true, arg_1.b), vec2<bool>(arg_1.c.a, true), arg_1.b), vec2<bool>(arg_1.c.a && false, all(vec2<bool>(false, arg_1.b))), any(select(vec2<bool>(arg_1.c.a, true), vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, arg_1.c.a)))), select(!vec2<bool>(arg_1.c.a, false), !select(vec2<bool>(arg_1.d, true), vec2<bool>(false, false), true), !vec2<bool>(false, arg_1.d)), vec2<bool>(!false, all(vec2<bool>(true, arg_1.c.a)) || !arg_1.b));
                var var_3 = !(false & arg_1.c.a);
                var var_4 = Struct_2(_wgslsmith_f_op_f32(round(arg_1.a)), false, func_4().c, any(!vec4<bool>(!var_2.x, true, true, arg_1.c.b <= 0)));
                continue;
            }
        }
        case 1: {
            let var_1 = arg_1.c.b >> (firstTrailingBit(u_input.c) % 32u);
        }
        default: {
            var var_1 = arg_1.c;
        }
    }
    for (var var_1 = -2147483648; !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(851.0, arg_3.x))) != _wgslsmith_f_op_f32(abs(arg_3.x))); var_1 += 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
    }
    return func_4().c;
}

fn func_3(arg_0: bool) -> vec2<i32> {
    let var_0 = countOneBits(~_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d, u_input.d, u_input.d) << (~vec3<u32>(u_input.c, 0u, u_input.c) % vec3<u32>(32u)), -vec3<i32>(0, 2147483647, -26872)));
    let var_1 = func_9(vec2<u32>(~(_wgslsmith_sub_u32(4294967295u, 68747u) >> (u_input.b.x % 32u)), ~_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(0u, 18750u)) ^ ~u_input.c), func_4(), u_input.d >> (firstLeadingBit(66469u) % 32u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000.0), func_4().a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) - _wgslsmith_f_op_f32(-1348.0)), _wgslsmith_f_op_f32(-1000.0 + -610.0), -433.0))));
    let var_2 = func_4();
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        for (var var_3 = 2147483647; var_3 < 12873; var_3 -= 1) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            continue;
        }
    }
    let var_3 = 2147483647 >= u_input.d;
    return select(abs(vec2<i32>(-1, -1)), ~vec2<i32>(var_2.c.b, -(i32(-1) * -2147483648)), vec2<bool>(arg_0, select(!arg_0 || false, var_2.c.b == u_input.d, !(!var_2.c.a))));
}

fn func_10(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<bool>(false, any(!select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true))));
    let var_1 = func_4().c;
    var var_2 = -var_1.b;
    if (~(1u >> ((1u & max(var_1.c.x, u_input.b.x)) % 32u)) <= 4294967295u) {
        return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-885.0 * -241.0)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000.0 + 169.0), _wgslsmith_f_op_f32(-628.0 + 265.0))), _wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(1049.0 * -778.0))))), var_1.a, Struct_1(var_1.a, -firstLeadingBit(var_1.b), u_input.a.zy), false);
    }
    var_2 = func_9(var_1.c, func_5(), ~_wgslsmith_mult_i32(2147483647 & firstTrailingBit(arg_0.x), _wgslsmith_mult_i32(~(-2147483648), u_input.d | 2147483647)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -565.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(888.0 * 2124.0) * _wgslsmith_f_op_f32(-285.0 + 1278.0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), _wgslsmith_f_op_f32(round(-1225.0)))))).b;
    return func_4();
}

fn func_2() -> Struct_2 {
    var var_0 = func_10(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-47671, 62830), ~11920), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-193, u_input.d)), func_3(true), -vec2<i32>(-13641, u_input.d))) >> (~vec2<u32>(1u << (u_input.c % 32u), ~u_input.c) % vec2<u32>(32u)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-121.0), !any(vec4<bool>(false, !var_0.d, any(vec2<bool>(var_0.c.a, var_0.d)), !false)), var_0.c, any(!vec2<bool>(var_0.c.a, var_0.d)));
    var_0 = func_5();
    var var_2 = ~_wgslsmith_mod_u32(4294967295u, var_0.c.c.x);
    let var_3 = true;
    return func_5();
}

fn func_1() -> bool {
    var var_0 = func_2();
    switch (-53398) {
        default: {
            var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, -118.0, 384.0, 776.0)))))));
            var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.a))), 433.0, var_0.a, func_5().a);
            var var_2 = Struct_2(_wgslsmith_f_op_f32(func_7(vec4<i32>(2147483647, -5579 >> (~u_input.a.x % 32u), -countOneBits(u_input.d), var_0.c.b), vec3<i32>(-1, firstTrailingBit(u_input.d), ~var_0.c.b))), true, func_2().c, true);
        }
    }
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(-1000.0)), !func_10(abs(vec2<i32>(-1, 1360) << (vec2<u32>(1u, 94494u) % vec2<u32>(32u)))).c.a, func_5().c, !(!any(vec4<bool>(true, true, false, false))));
    switch (func_8(func_10(-vec2<i32>(var_0.c.b, var_0.c.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, var_0.a, _wgslsmith_f_op_f32(f32(-1.0) * -289.0)))) << ((countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.c.x, 69415u), _wgslsmith_mult_vec2_u32(var_0.c.c, var_1.c.c))) | (~104250u & var_1.c.c.x)) % 32u)) {
        case 2147483647: {
            var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(503.0, var_1.a, -483.0, var_1.a), vec4<f32>(180.0, -631.0, var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a, -1639.0, -349.0, var_0.a))) + vec4<f32>(var_0.a, var_0.a, var_0.a, 1000.0)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 330.0, var_1.a, -261.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-538.0, var_0.a, var_0.a, 367.0) * vec4<f32>(var_0.a, var_1.a, var_1.a, -1000.0))), vec4<f32>(2210.0, var_1.a, _wgslsmith_f_op_f32(-2660.0), var_0.a))));
            for (var var_3 = 0; all(!(!(!vec4<bool>(true, true, var_0.b, false)))); var_3 -= 1) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                continue;
            }
            if (!func_9(~_wgslsmith_add_vec2_u32(u_input.b ^ u_input.b, vec2<u32>(var_1.c.c.x, 30838u)), func_10(_wgslsmith_mod_vec2_i32(vec2<i32>(0, u_input.d) | vec2<i32>(u_input.d, u_input.d), -vec2<i32>(u_input.d, u_input.d))), abs(~_wgslsmith_mod_i32(-29050, -15125)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), func_2().a, _wgslsmith_f_op_f32(func_7(select(vec4<i32>(12649, var_0.c.b, var_0.c.b, u_input.d), vec4<i32>(var_1.c.b, var_1.c.b, var_0.c.b, -31173), vec4<bool>(true, var_0.d, true, var_0.b)), ~vec3<i32>(var_1.c.b, -2147483648, 5106))), _wgslsmith_f_op_f32(-1269.0 + var_2.x))).a) {
                var var_3 = var_1.c;
                var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_7(vec4<i32>(-9497, -9074, var_0.c.b, u_input.d), vec3<i32>(0, var_3.b, var_1.c.b))), -174.0, 260.0, var_1.a)));
                var var_4 = func_2().c;
            }
            return !func_10(_wgslsmith_mod_vec2_i32(~(vec2<i32>(var_0.c.b, var_1.c.b) ^ vec2<i32>(-2147483648, 2147483647)), abs(func_3(var_0.b)))).b;
        }
        case 16200: {
            var_0 = Struct_2(-153.0, var_0.c.a | false, func_10(-vec2<i32>(-var_1.c.b, _wgslsmith_div_i32(-2147483648, 16080))).c, -1186.0 <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_7(-vec4<i32>(var_1.c.b, -1, u_input.d, var_1.c.b), max(vec3<i32>(0, var_0.c.b, -1), vec3<i32>(-5389, -2147483648, u_input.d)))))));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                continue;
            }
            if (false) {
                var_1 = func_4();
            }
            for (var var_2 = -66003; var_2 <= -1; var_2 += 1) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                var_0 = func_4();
                break;
            }
            var_0 = func_10(-vec2<i32>(~_wgslsmith_add_i32(24957, var_0.c.b), var_1.c.b));
        }
    }
    for (var var_2 = -2147483648; var_2 <= 15390; var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(func_5().a)))), func_4().c.a, var_1.c, func_10(func_6(reverseBits(u_input.a), 624.0, Struct_2(_wgslsmith_f_op_f32(max(var_1.a, var_0.a)), var_1.a != 1564.0, func_2().c, true || false)).yx).d)) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        if (var_1.c.a) {
            var_2 = 4061;
            continue;
        }
        let var_3 = func_2().c;
        let var_4 = vec2<bool>(select(!true, !false, !(var_0.d & (var_3.b == u_input.d))), true);
        continue;
    }
    return -(i32(-1) * -(~1)) != var_1.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    switch (_wgslsmith_add_i32(-u_input.d, u_input.d)) {
        case -1549: {
            if (any(vec3<bool>(false, select(2199.0 >= _wgslsmith_f_op_f32(-1242.0), func_1(), (u_input.c != 88043u) == true), select(false, !(-1000.0 < 1464.0), !(u_input.d <= u_input.d))))) {
                var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -170.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1701.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-880.0) * _wgslsmith_f_op_f32(-264.0 - -744.0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(253.0 + _wgslsmith_f_op_f32(f32(-1.0) * -150.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1478.0) - _wgslsmith_f_op_f32(abs(-272.0))))));
                var_0 = vec2<f32>(var_0.x, 1000.0);
                var_0 = vec2<f32>(-2835.0, -1490.0);
                let var_1 = Struct_1(true, func_5().c.b, func_4().c.c);
                var var_2 = ~(~var_1.c.x);
            }
            var var_0 = _wgslsmith_f_op_f32(158.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692.0 * 1336.0) * _wgslsmith_f_op_f32(-3154.0 - 550.0)))));
            switch (select(-abs(u_input.d), ~max(2147483647, 0), true & false)) {
                case 1: {
                    var_0 = _wgslsmith_f_op_f32(trunc(func_2().a));
                    var var_1 = func_4();
                    var_0 = 134.0;
                    var var_2 = func_10(min(reverseBits(vec2<i32>(var_1.c.b, _wgslsmith_sub_i32(61090, u_input.d))), ~_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.d, u_input.d), vec2<i32>(var_1.c.b, 25611))));
                }
                case -26757: {
                    var var_1 = Struct_1(false & !func_9(u_input.b, func_5(), _wgslsmith_mod_i32(u_input.d, u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1780.0, 1000.0, 299.0, 497.0))).a, ~_wgslsmith_mult_i32(~2147483647, func_8(Struct_2(-567.0, true, Struct_1(true, u_input.d, u_input.b), true), vec3<f32>(915.0, -1396.0, 259.0)) ^ func_2().c.b), func_5().c.c);
                    var var_2 = u_input.b.x;
                    var_1 = Struct_1(false, 0, vec2<u32>(var_1.c.x, var_1.c.x));
                    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(var_1.b ^ -32405) & 2147483647, -(~_wgslsmith_mult_i32(u_input.d, u_input.d)), u_input.d), ~vec3<i32>(u_input.d, ~(-u_input.d), -1));
                }
                default: {
                    var_0 = _wgslsmith_f_op_f32(-1237.0 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-973.0, _wgslsmith_f_op_f32(f32(-1.0) * -2092.0)))))));
                    let var_1 = (!any(vec3<bool>(true, false, true)) & (!false && false)) && true;
                    var_0 = 797.0;
                    let var_2 = !vec4<bool>(true, !(func_10(vec2<i32>(-2147483648, u_input.d)).c.c.x < ~u_input.c), (u_input.d == -10186) || all(!vec2<bool>(true, true)), false);
                    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2795.0, _wgslsmith_div_f32(-338.0, -149.0))), 1477.0)), -1871.0));
                }
            }
            let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2296.0 * -2489.0)), -895.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-358.0, 277.0))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(551.0, 1420.0, 1760.0)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-417.0, -1262.0, 381.0), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-982.0, -513.0, 1862.0))), vec3<bool>(true, false, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))))));
        }
        case -1: {
            let var_0 = func_9(u_input.b, func_10((vec2<i32>(u_input.d, -20301) & ~vec2<i32>(10934, u_input.d)) & -reverseBits(vec2<i32>(-1, u_input.d))), 1 ^ u_input.d, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-721.0) - -1000.0), 474.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-604.0))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(709.0 + 261.0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000.0, -446.0)))), !false)))).a;
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-521.0, 1000.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1407.0, -203.0, true)) + 1289.0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(712.0 - 432.0), 1358.0))) - vec3<f32>(704.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-694.0, -1914.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-308.0)) * _wgslsmith_f_op_f32(-867.0)))));
                var var_2 = _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0));
                var var_3 = ~(u_input.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x & 70252u, 4294967295u, ~0u, 4949u), vec4<u32>(u_input.b.x & 4294967295u, ~60953u, firstLeadingBit(u_input.c), 103301u)) % 32u));
                var_2 = var_1.x;
            }
            for (var var_1 = 16178; -64729 > countOneBits(func_9(func_4().c.c, func_5(), -_wgslsmith_dot_vec4_i32(vec4<i32>(-32370, u_input.d, 2147483647, u_input.d), vec4<i32>(-181, u_input.d, u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1161.0, -246.0, 484.0, 271.0))).b); ) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                break;
            }
            if (true) {
                let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -771.0) * _wgslsmith_f_op_f32(213.0 - 573.0)) + _wgslsmith_f_op_f32(f32(-1.0) * -129.0))), !true, func_4().c, !(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.c, 4294967295u, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(64424u, u_input.c, 1u, u_input.a.x), vec4<u32>(20990u, u_input.b.x, 4294967295u, 0u))) != func_2().c.c.x));
                let var_2 = var_1.c;
                var var_3 = 151.0;
                var_3 = -544.0;
                var_3 = -1400.0;
            }
        }
        default: {
            var var_0 = 315.0;
            var var_1 = u_input.a.x;
            var var_2 = func_5().c.b;
            switch (_wgslsmith_mod_i32(42617, u_input.d)) {
                case -1: {
                    var var_3 = vec2<bool>(any(select(select(!vec2<bool>(false, true), !vec2<bool>(true, false), !vec2<bool>(false, true)), vec2<bool>(false, true || false), all(!vec4<bool>(false, true, false, true)))), !all(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), func_9(vec2<u32>(u_input.a.x, u_input.b.x), Struct_2(-837.0, false, Struct_1(true, u_input.d, vec2<u32>(u_input.a.x, 4294967295u)), true), u_input.d, vec4<f32>(1753.0, -309.0, -101.0, 1000.0)).a)));
                    let var_4 = func_5().b;
                    var_1 = 1363u;
                }
                case -16594: {
                }
                default: {
                    var_2 = u_input.d;
                }
            }
        }
    }
    switch (-32189) {
        case 7727: {
            let var_0 = func_10(_wgslsmith_add_vec2_i32(-(_wgslsmith_sub_vec2_i32(vec2<i32>(1, u_input.d), vec2<i32>(2147483647, 0)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-1, -22274), vec2<i32>(0, u_input.d))), _wgslsmith_add_vec2_i32(-vec2<i32>(-1, -1), -vec2<i32>(-69533, u_input.d)) << (func_9(vec2<u32>(0u, 7464u), func_5(), u_input.d, vec4<f32>(-1388.0, 1288.0, -1447.0, -792.0)).c % vec2<u32>(32u))));
            if (false) {
            }
            for (var var_1: i32; ; var_1 -= 1) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                continue;
            }
            var var_1 = func_10(vec2<i32>(~func_9(~vec2<u32>(6305u, 0u), Struct_2(var_0.a, var_0.c.a, Struct_1(true, 0, vec2<u32>(854u, 15931u)), var_0.c.a), -36058 >> (72327u % 32u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, -972.0, 1190.0, var_0.a)))).b, _wgslsmith_div_i32(i32(-1) * -u_input.d, select(13807, func_4().c.b, -2147483648 >= var_0.c.b))));
            switch (_wgslsmith_div_i32(2147483647 >> (4294967295u % 32u), var_1.c.b)) {
                case 40883: {
                    var_1 = var_0;
                    var var_2 = var_1.a;
                    let var_3 = func_2().c;
                    var var_4 = var_0.c;
                }
                case 2147483647: {
                    var var_2 = all(!(!vec3<bool>(true, !true, var_0.d)));
                }
                case -24504: {
                }
                case 1: {
                    let var_2 = select(vec4<bool>(var_1.b, any(!select(vec3<bool>(true, var_1.c.a, var_0.d), vec3<bool>(false, false, false), true)), func_9(countOneBits(vec2<u32>(u_input.b.x, var_0.c.c.x)), var_0, -12470, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, var_0.a, var_1.a, -1959.0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-907.0, 1585.0, 1242.0, 1000.0)))).a, !(!(var_1.c.c.x <= u_input.a.x))), vec4<bool>(!func_1(), any(!vec3<bool>(false, var_0.d, true)), var_0.c.a, !false), all(!vec4<bool>(false, !true, !true, var_1.b)));
                    var var_3 = ~(vec3<u32>(var_0.c.c.x, (0u ^ var_1.c.c.x) & abs(1u), 0u) ^ ~(~(~u_input.a)));
                    var var_4 = var_2.x & (((var_0.c.c.x | firstLeadingBit(var_3.x)) <= ((18735u & u_input.b.x) | 37334u)) && (true & !true));
                }
                default: {
                    var var_2 = var_0;
                    var_1 = func_10(abs(func_6(_wgslsmith_mult_vec3_u32(vec3<u32>(10299u, 1u, 20431u), u_input.a) | _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.c.x, 1849u, 1u), u_input.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_0.a + 1044.0), var_0.d)), Struct_2(-167.0, !var_1.b, Struct_1(var_0.b, -1, vec2<u32>(var_2.c.c.x, 19886u)), true)).zz));
                    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_10(vec2<i32>(var_0.c.b, 2147483647) ^ vec2<i32>(var_2.c.b, var_2.c.b)).a) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(ceil(var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-894.0) * _wgslsmith_f_op_f32(var_2.a + -1220.0))))), all(select(vec3<bool>(false, func_2().b, func_4().d), vec3<bool>(all(vec2<bool>(var_1.b, var_1.b)), var_1.b, 413.0 >= -318.0), !false | (false || false))), func_10(-vec2<i32>(_wgslsmith_mult_i32(var_2.c.b, u_input.d), 59427)).c, false);
                    var var_3 = ~abs(firstTrailingBit(countOneBits(u_input.a) >> (vec3<u32>(var_1.c.c.x, u_input.c, 0u) % vec3<u32>(32u))));
                    var var_4 = Struct_1(var_2.d, ~(-51422), var_1.c.c);
                }
            }
        }
        case 1: {
            if (true) {
                var var_0 = vec4<bool>(true, select(false, 76054u == ~u_input.b.x, true), false, !(!all(vec2<bool>(true, true))));
            }
            switch (-(u_input.d >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 47381u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 883u)) << (~u_input.a.x % 32u)) % 32u)) | -19417) {
                case -2147483648: {
                }
                case 2147483647: {
                    let var_0 = _wgslsmith_f_op_f32(-525.0);
                    var var_1 = vec3<u32>(u_input.c ^ max(firstTrailingBit(49744u), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.b.x), func_9(vec2<u32>(1u, u_input.b.x), Struct_2(var_0, false, Struct_1(false, u_input.d, vec2<u32>(u_input.a.x, 59037u)), false), u_input.d, vec4<f32>(var_0, var_0, 142.0, var_0)).c.x)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.a.x >> (1u % 32u), u_input.a.x)), reverseBits(u_input.a)), select(u_input.b.x, max(~11639u | reverseBits(u_input.c), u_input.c), true));
                    let var_2 = func_5().c;
                    let var_3 = ~(-12758);
                    let var_4 = func_4().c;
                }
                default: {
                    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(897.0, -516.0, 735.0) * vec3<f32>(664.0, -580.0, -2205.0))) * vec3<f32>(_wgslsmith_div_f32(1505.0, -305.0), _wgslsmith_f_op_f32(max(-1747.0, 354.0)), _wgslsmith_f_op_f32(select(764.0, -1198.0, false))))));
                    var var_1 = Struct_1(495.0 == _wgslsmith_f_op_f32(var_0.x + var_0.x), u_input.d, u_input.b >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), reverseBits(vec2<u32>(u_input.c, 4294967295u))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, u_input.a), vec3<u32>(u_input.b.x, 15656u, 0u))) % vec2<u32>(32u)));
                }
            }
            switch (1724) {
                case 1: {
                    let var_0 = func_10(countOneBits(vec2<i32>(9548, u_input.d) >> (func_10(vec2<i32>(u_input.d, u_input.d)).c.c % vec2<u32>(32u))) | -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d)), ~vec2<i32>(29778, u_input.d))).c.c.x;
                    let var_1 = ~(~_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a.x, 6610u, u_input.a.x, u_input.b.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(17722u, 41757u, 1u, u_input.a.x), vec4<u32>(var_0, 1u, 65569u, 4294967295u))));
                    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-369.0)) * _wgslsmith_f_op_f32(func_7(vec4<i32>(2147483647, u_input.d, -25917, u_input.d), vec3<i32>(u_input.d, 42790, u_input.d)))) * -1502.0)), true, Struct_1(func_9(u_input.a.yy, Struct_2(_wgslsmith_f_op_f32(694.0 * -2395.0), !true, Struct_1(false, u_input.d, vec2<u32>(var_1.x, var_0)), all(vec2<bool>(false, true))), -1 >> (var_0 % 32u), vec4<f32>(-303.0, _wgslsmith_f_op_f32(f32(-1.0) * -484.0), -772.0, _wgslsmith_f_op_f32(f32(-1.0) * -1789.0))).a, _wgslsmith_mult_i32(u_input.d, -u_input.d), ~vec2<u32>(4294967295u & 12935u, max(0u, 25320u))), !all(vec3<bool>(true, func_1(), true && false)));
                    let var_3 = func_2();
                }
                case -11778: {
                    var var_0 = func_2();
                    var var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.d, ~2147483647), _wgslsmith_clamp_i32(min(var_0.c.b, u_input.d), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-48870, u_input.d, ~var_0.c.b), _wgslsmith_add_i32(-16162 & 43961, var_0.c.b)), _wgslsmith_mod_i32(firstLeadingBit(var_0.c.b), var_0.c.b) << (~_wgslsmith_mult_u32(1u, u_input.b.x) % 32u)));
                }
                default: {
                    let var_0 = !vec2<bool>(true, !func_1());
                    var var_1 = true;
                    var_1 = var_0.x || !var_0.x;
                    let var_2 = select(!(!(!false & true)), false, func_5().c.a);
                }
            }
        }
        case 18514: {
            let var_0 = !(!false);
            var var_1 = func_2().c;
            var_1 = Struct_1(func_5().c.a, var_1.b, vec2<u32>(u_input.a.x & u_input.b.x, _wgslsmith_mult_u32(~(~u_input.c), func_10(-vec2<i32>(var_1.b, -2147483648)).c.c.x)));
        }
        default: {
            for (var var_0: i32; func_2().c.a; var_0 -= 1) {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            }
            let var_0 = vec2<i32>(max(856, min(min(u_input.d << (u_input.a.x % 32u), _wgslsmith_sub_i32(-1, u_input.d)), u_input.d)), (-(u_input.d & u_input.d) ^ _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 13113), vec2<i32>(-2147483648, u_input.d)), 0)) >> (select(_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), 23021u, func_5().d) % 32u));
        }
    }
    var var_0 = firstLeadingBit(~abs(vec4<i32>(u_input.d, -2147483648, u_input.d, u_input.d)) << (~(vec4<u32>(u_input.a.x, 30109u, u_input.c, 1u) ^ ~vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)));
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        return;
    }
    var_0 = _wgslsmith_sub_vec4_i32(reverseBits((vec4<i32>(-1) * -vec4<i32>(0, var_0.x, -2963, 0)) << (~(~vec4<u32>(0u, u_input.c, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))), abs(-reverseBits(vec4<i32>(2147483647, -2147483648, var_0.x, -18705))));
    loop {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
    }
    var_0 = vec4<i32>(var_0.x, var_0.x, -33638, -75992);
    switch (var_0.x) {
        case 23835: {
            loop {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                let var_1 = 3860u;
                var var_2 = Struct_1(!(!func_5().d), var_0.x, firstTrailingBit(u_input.b));
                continue;
            }
            var_0 = ~vec4<i32>(i32(-1) * -1, func_3(func_10(var_0.yy).b).x, var_0.x, u_input.d | _wgslsmith_mult_i32(-u_input.d, select(38425, -54727, false)));
            for (var var_1 = func_10(~(~var_0.wz)).c.b; var_1 == 16539; var_0 = ~vec4<i32>(-u_input.d | -2147483648, ~_wgslsmith_clamp_i32(0, -1, 0) >> (u_input.b.x % 32u), -_wgslsmith_clamp_i32(func_3(false).x, u_input.d, var_0.x), 0)) {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            }
            var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(508.0, 568.0) * 1580.0)) - 1993.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -911.0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(-353.0)), -799.0)))))));
            switch (-_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-19693, -44787, -1, var_0.x)), -vec4<i32>(-26091, 2147483647, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 5526), vec2<i32>(2147483647, 1)), func_3(false).x))) {
                case 0: {
                }
                default: {
                    var var_2 = ~1;
                }
            }
        }
        case 562: {
            switch (select(0, func_4().c.b, false)) {
                case 1: {
                }
                case 0: {
                    var_0 = select(_wgslsmith_div_vec4_i32(vec4<i32>(func_5().c.b, func_9(u_input.a.xz, Struct_2(-1314.0, true, Struct_1(true, var_0.x, u_input.a.zz), true), -16971, vec4<f32>(-890.0, -101.0, -1086.0, 1132.0)).b, _wgslsmith_sub_i32(-2147483648, var_0.x), i32(-1) * -1) & vec4<i32>(8235, _wgslsmith_clamp_i32(var_0.x, 1, var_0.x), var_0.x, _wgslsmith_add_i32(var_0.x, u_input.d)), select(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.d, 1, -2147483648, var_0.x), -vec4<i32>(u_input.d, -1, -9469, 1)), ~vec4<i32>(u_input.d, var_0.x, 1, var_0.x), _wgslsmith_f_op_f32(-788.0 - 871.0) >= 1613.0)), vec4<i32>(func_6(u_input.a, _wgslsmith_div_f32(-752.0, 413.0), func_5()).x, 1, i32(-1) * -1, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.x, countOneBits(-1)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1, -1, u_input.d), vec3<i32>(2147483647, u_input.d, -6553)) ^ -54543)), !(!(!(!vec4<bool>(true, true, true, true)))));
                }
                case 22358: {
                    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-291.0)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(func_10(vec2<i32>(1, var_0.x)).a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1269.0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1106.0, 1000.0, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-270.0))))), -1360.0, 438.0);
                    var_0 = abs(abs(vec4<i32>((u_input.d | 32987) | 2147483647, _wgslsmith_add_i32(-45051, 1), 24993, u_input.d)));
                    var var_2 = Struct_1(func_2().c.a, u_input.d, ~(~vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 14311u, u_input.a.x), ~u_input.a.x)));
                    var_2 = func_9(_wgslsmith_mod_vec2_u32(var_2.c, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~var_2.c, vec2<u32>(4294967295u, u_input.a.x)), vec2<u32>(var_2.c.x << (50690u % 32u), 1u))), Struct_2(_wgslsmith_f_op_f32(-var_1.x), func_5().c.a, Struct_1(func_5().b, func_10(max(var_0.yx, vec2<i32>(u_input.d, u_input.d))).c.b, var_2.c), all(vec4<bool>(all(vec3<bool>(var_2.a, var_2.a, var_2.a)), all(vec2<bool>(var_2.a, false)), false, !var_2.a))), 0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -363.0) - -1773.0), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-810.0)), 565.0))), -1490.0, -1388.0));
                    let var_3 = Struct_2(1000.0, !(var_2.a != true), func_10(~min(var_0.yy, _wgslsmith_clamp_vec2_i32(vec2<i32>(1, var_2.b), var_0.yy, vec2<i32>(-5561, var_0.x)))).c, any(select(!select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(true, true), var_2.a), select(!vec2<bool>(true, true), select(vec2<bool>(false, var_2.a), vec2<bool>(true, true), vec2<bool>(true, var_2.a)), vec2<bool>(var_2.a, var_2.a)), var_2.a)));
                }
                default: {
                }
            }
            for (var var_1 = 1; func_4().b | false; var_1 -= 1) {
                if (LOOP_COUNTERS[28u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
                var_1 = -3243;
            }
            var var_1 = func_5().c;
            var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -871.0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -158.0)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1596.0))))), _wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(-371.0)), _wgslsmith_f_op_f32(ceil(751.0)));
        }
        case 43911: {
            loop {
                if (LOOP_COUNTERS[29u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
                break;
            }
            var_0 = ~(~vec4<i32>(u_input.d, -1 >> (~u_input.b.x % 32u), 1, 1));
            let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-582.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1611.0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1670.0)))), -960.0));
            var_0 = ~(~max(~vec4<i32>(-19309, var_0.x, u_input.d, var_0.x) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.d, var_0.x, 7969), vec4<i32>(var_0.x, var_0.x, u_input.d, var_0.x), vec4<i32>(var_0.x, u_input.d, -2147483648, 2147483647)), vec4<i32>(2147483647, _wgslsmith_div_i32(var_0.x, 42663), var_0.x, u_input.d)));
            var_0 = vec4<i32>(-1) * -vec4<i32>(var_0.x, var_0.x, _wgslsmith_sub_i32(1, u_input.d), -2855);
        }
        default: {
            var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-12146, countOneBits(0), i32(-1) * -2147483648, u_input.d) & ~(~vec4<i32>(var_0.x, 1, u_input.d, u_input.d)), vec4<i32>(17982, 1, u_input.d, ~(~var_0.x)), _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.d, -10082), vec4<i32>(12369, -2147483648, -1, u_input.d), vec4<i32>(0, u_input.d, 27441, 10497)), abs(vec4<i32>(-51357, -1, -60060, u_input.d)) << (firstTrailingBit(vec4<u32>(4530u, 4294967295u, u_input.b.x, 0u)) % vec4<u32>(32u)))) ^ reverseBits(vec4<i32>(-_wgslsmith_sub_i32(u_input.d, u_input.d), -57202, reverseBits(func_10(var_0.yw).c.b), ~u_input.d));
            switch (~(-10325)) {
                default: {
                }
            }
            var_0 = vec4<i32>(66478, _wgslsmith_add_i32(firstTrailingBit(i32(-1) * -1), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, u_input.d, u_input.d, -1), vec4<i32>(-27819, -1, var_0.x, u_input.d) & vec4<i32>(1, 1, -3960, var_0.x))) >> (u_input.a.x % 32u), func_6(_wgslsmith_add_vec3_u32(countOneBits(u_input.a), vec3<u32>(36284u, u_input.b.x, u_input.b.x)) ^ u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(804.0, -1000.0)), 786.0), func_2()).x, ~_wgslsmith_sub_i32(2147483647, ~_wgslsmith_mult_i32(var_0.x, var_0.x)));
            let var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-928.0, _wgslsmith_f_op_f32(-280.0))))), !false, func_4().c, !(0u >= ~4294967295u));
            var_0 = -countOneBits(~_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, -1, var_1.c.b, var_1.c.b), vec4<i32>(2147483647, u_input.d, -7197, 19887) & vec4<i32>(1, var_0.x, var_1.c.b, u_input.d)));
        }
    }
    var_0 = vec4<i32>(0, var_0.x, func_10(vec2<i32>(func_3(!true).x, ~(-69711))).c.b, func_10(countOneBits(~(var_0.xy & vec2<i32>(19916, -72545)))).c.b);
    let x = u_input.a;
    s_output = StorageBuffer(-366.0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-607.0, -883.0, 328.0), vec3<f32>(-1448.0, -1711.0, 1578.0), vec3<bool>(true, true, false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(199.0, 554.0, -1000.0))))));
}

