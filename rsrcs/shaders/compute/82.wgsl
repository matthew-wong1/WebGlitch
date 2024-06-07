// {"0:0":[8,147,153,171,152,66,239,181,99,113,253,143,202,77,159,211,240,135,52,119,217,221,213,108,96,162,183,143,136,145,3,254]}
// Seed: 8057237701716571621

struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(1, -31065, 2147483647, -1, 2147483647, -4489, 81671);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: bool;

var<private> global4: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> LOOP_COUNTERS: array<u32, 16>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = select(vec4<bool>(global1.b.x, global2.a.x < ~(~4294967295u), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, global2.b.x, arg_1.b.x), global4[_wgslsmith_index_u32(global2.a.x, 5u)])), !arg_1.b.x), vec4<bool>(global1.b.x, !global2.b.x, true, !any(!vec3<bool>(false, false, false))), !select(vec4<bool>(global2.b.x, !var_0.b.x, !var_0.b.x, !global1.b.x), vec4<bool>(all(vec2<bool>(var_0.b.x, arg_1.b.x)), false, false, false), select(select(vec4<bool>(true, global1.b.x, false, global1.b.x), vec4<bool>(global2.b.x, false, arg_1.b.x, true), vec4<bool>(false, global1.b.x, arg_1.b.x, global1.b.x)), !vec4<bool>(global1.b.x, true, false, arg_1.b.x), !vec4<bool>(arg_1.b.x, global2.b.x, true, global2.b.x))));
    if (var_0.b.x) {
        var var_2 = 559.0;
        if (all(vec2<bool>(all(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~87100u), 5u)]), false))) {
            let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.d.xy, _wgslsmith_f_op_vec2_f32(-global2.d.yz), !vec2<bool>(arg_1.b.x | true, false))));
        }
        var var_3 = -2147483648;
        var var_4 = -177.0;
    }
    let var_2 = !(!select(vec4<bool>(all(vec4<bool>(var_0.b.x, false, var_0.b.x, global2.b.x)), any(vec2<bool>(true, global2.b.x)), global1.b.x, !false), vec4<bool>(!false, !global2.b.x, global1.b.x, global1.d.x >= global2.d.x), !(!vec4<bool>(var_1.x, var_0.b.x, true, var_1.x))));
    global1 = Struct_1(vec3<u32>(50098u << (global1.a.x % 32u), 4294967295u, 1u), select(select(!vec3<bool>(false, var_1.x, arg_1.b.x), vec3<bool>(var_1.x, all(vec3<bool>(var_1.x, var_1.x, true)), false), !(!false)), var_1.xzx, !vec3<bool>(all(var_2), !global1.b.x, !true)), var_0.c, vec3<f32>(1082.0, -992.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.d.x)))), _wgslsmith_f_op_f32(-909.0 - global2.d.x))));
    return _wgslsmith_f_op_f32(-563.0);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = Struct_1(vec3<u32>(global1.a.x, global1.a.x, 1u), global4[_wgslsmith_index_u32(~(u_input.c.x >> ((max(4294967295u, var_0.a.x) >> (~72732u % 32u)) % 32u)), 5u)], select(var_0.c, vec4<i32>(-u_input.d, global1.c.x, reverseBits(~arg_0.x), 0), vec4<bool>(_wgslsmith_mult_i32(arg_0.x, var_0.c.x) < var_0.c.x, var_0.b.x, ~4294967295u != 0u, global2.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(func_6(vec2<i32>(i32(-1) * -19539, ~global2.c.x), arg_1)), _wgslsmith_f_op_f32(f32(-1.0) * -865.0)));
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global0 = array<i32, 7>();
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        }
        break;
    }
    var_0 = Struct_1(arg_1.a, vec3<bool>(global2.b.x, any(!global2.b), var_0.d.x > -1139.0), vec4<i32>(-var_0.c.x, arg_1.c.x, ~(-(global0[_wgslsmith_index_u32(global1.a.x, 7u)] >> (10026u % 32u))), _wgslsmith_clamp_i32(2147483647, 1, 2147483647)), global2.d);
    var var_2 = false;
    return vec3<u32>(var_0.a.x & ~_wgslsmith_div_u32(9834u ^ global2.a.x, ~4294967295u), select(countOneBits(_wgslsmith_clamp_u32(0u, arg_1.a.x, 4294967295u) ^ (0u | 4294967295u)), 1u ^ min(~u_input.c.x, var_0.a.x >> (global1.a.x % 32u)), false), ~_wgslsmith_div_u32(min(arg_1.a.x & u_input.c.x, 4294967295u), _wgslsmith_add_u32(~1u, _wgslsmith_add_u32(var_0.a.x, u_input.c.x))));
}

fn func_4(arg_0: vec2<i32>) -> vec4<bool> {
    global1 = Struct_1(func_5(global1.c ^ abs(_wgslsmith_mult_vec4_i32(vec4<i32>(78614, 20669, global2.c.x, -1), vec4<i32>(global2.c.x, 2147483647, 0, -39623))), Struct_1(u_input.c & global1.a, vec3<bool>(-183.0 == -655.0, true || false, false), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.x, -37638, u_input.d, arg_0.x) | vec4<i32>(-51516, 2147483647, global2.c.x, global1.c.x), max(global1.c, vec4<i32>(1, global1.c.x, u_input.a, -2147483648))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, -1830.0, global2.d.x), global2.d))), global4[_wgslsmith_index_u32(global1.a.x, 5u)], ~(abs(-vec4<i32>(global2.c.x, 72765, global0[_wgslsmith_index_u32(global2.a.x, 7u)], arg_0.x)) ^ -(vec4<i32>(arg_0.x, global0[_wgslsmith_index_u32(global2.a.x, 7u)], 0, 8826) ^ global1.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1.d)), vec3<f32>(_wgslsmith_f_op_f32(floor(1220.0)), global2.d.x, -1252.0)));
    var var_0 = Struct_1(select(~abs(vec3<u32>(u_input.c.x, u_input.c.x, global2.a.x)), _wgslsmith_mod_vec3_u32(~global2.a, vec3<u32>(0u >> (global2.a.x % 32u), abs(global1.a.x), 24706u)), !vec3<bool>(all(vec4<bool>(global2.b.x, true, global1.b.x, global1.b.x)), false, true)), select(!vec3<bool>(!global1.b.x, false & global2.b.x, true), vec3<bool>(!(!false), all(select(global1.b.xy, vec2<bool>(true, true), global2.b.zx)), false), true), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], select(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global2.a.x, 7u)], 2147483647), vec2<i32>(-43974, -1) & arg_0), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-92875, global0[_wgslsmith_index_u32(global2.a.x, 7u)]), min(-2147483648, -2147483648)), 192.0 < -648.0), _wgslsmith_dot_vec2_i32(global2.c.xy << (global2.a.zz % vec2<u32>(32u)), global2.c.yx), i32(-1) * -_wgslsmith_dot_vec4_i32(global2.c, vec4<i32>(-1, -1, -1, 2147483647))), _wgslsmith_f_op_vec3_f32(global2.d * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-113.0, global1.d.x, -2085.0)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.x, global2.d.x, global1.d.x), vec3<f32>(292.0, global1.d.x, global2.d.x), global4[_wgslsmith_index_u32(1u, 5u)])))))));
    global4 = array<vec3<bool>, 5>();
    for (; ; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    switch (-2147483648) {
        case 1: {
            switch (_wgslsmith_dot_vec3_i32(select(global2.c.wwy, -firstTrailingBit(select(vec3<i32>(-1, -58525, global0[_wgslsmith_index_u32(global2.a.x, 7u)]), vec3<i32>(global2.c.x, 0, 2147483647), global4[_wgslsmith_index_u32(2107u, 5u)])), select(vec3<bool>(any(var_0.b), global2.b.x, !true), vec3<bool>(true, !global1.b.x, all(vec2<bool>(var_0.b.x, false))), !global1.b.x)), vec3<i32>(-arg_0.x >> (~abs(70367u) % 32u), arg_0.x >> (global2.a.x % 32u), ~(-_wgslsmith_mod_i32(global1.c.x, -6883))))) {
                case 1: {
                    var var_1 = vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(step(var_0.d.x, -906.0)));
                    global4 = array<vec3<bool>, 5>();
                }
                case -34118: {
                    let var_1 = Struct_1(u_input.c, global2.b, abs(_wgslsmith_mult_vec4_i32(var_0.c, _wgslsmith_clamp_vec4_i32(global1.c, vec4<i32>(u_input.a, var_0.c.x, -7874, arg_0.x) ^ var_0.c, min(vec4<i32>(-2147483648, -2147483648, global1.c.x, global2.c.x), vec4<i32>(global2.c.x, arg_0.x, -1, u_input.b.x))))), global1.d);
                    global0 = array<i32, 7>();
                }
                default: {
                }
            }
        }
        case 14599: {
            let var_1 = 72584u;
        }
        case 63799: {
            var var_1 = Struct_1(vec3<u32>(var_0.a.x, global2.a.x, _wgslsmith_mult_u32(~(~0u), countOneBits(min(var_0.a.x, global1.a.x)))), global4[_wgslsmith_index_u32(u_input.c.x, 5u)], vec4<i32>(global0[_wgslsmith_index_u32(~(25275u | global2.a.x), 7u)], ~firstLeadingBit(-2147483648 >> (32023u % 32u)), global0[_wgslsmith_index_u32(73197u, 7u)], select(~(-2147483648), 61577, global1.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, global1.d.x, 946.0))), _wgslsmith_f_op_vec3_f32(-global2.d), select(global2.b.x, !global2.b.x | !true, !var_0.b.x))));
            let var_2 = select(!select(select(vec4<bool>(true, var_0.b.x, var_0.b.x, false), vec4<bool>(false, global1.b.x, global1.b.x, global2.b.x), vec4<bool>(var_1.b.x, false, var_0.b.x, global2.b.x)), !select(vec4<bool>(global1.b.x, global1.b.x, var_0.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, global1.b.x, var_0.b.x), var_0.b.x), select(vec4<bool>(global2.b.x, false, global2.b.x, false), select(vec4<bool>(true, false, var_0.b.x, false), vec4<bool>(true, true, var_1.b.x, var_0.b.x), vec4<bool>(global2.b.x, global2.b.x, true, false)), any(var_0.b.xx))), !(!vec4<bool>(global2.b.x, true, !false, true)), vec4<bool>(true, !global1.b.x, -1315.0 <= -907.0, !(reverseBits(34263u) != (var_1.a.x | global2.a.x))));
            switch (-var_0.c.x << (62660u % 32u)) {
                case -1: {
                    var_0 = Struct_1(vec3<u32>(~global1.a.x, ~(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, global1.a.x, var_1.a.x, var_0.a.x), vec4<u32>(global1.a.x, 4294967295u, 0u, global1.a.x))) | reverseBits(func_5(global1.c, Struct_1(var_1.a, vec3<bool>(true, true, false), vec4<i32>(-24839, u_input.d, -2147483648, 1), var_1.d)) << ((u_input.c >> (var_0.a % vec3<u32>(32u))) % vec3<u32>(32u))), select(var_1.b, select(vec3<bool>(any(vec4<bool>(false, var_2.x, false, true)), any(vec3<bool>(true, global2.b.x, var_0.b.x)), -2147483648 < global2.c.x), select(select(var_2.xyw, global1.b, vec3<bool>(global1.b.x, false, true)), global1.b, var_0.b), !vec3<bool>(global2.b.x, false, var_0.b.x)), var_1.b), ~firstLeadingBit(abs(global1.c) << (select(vec4<u32>(var_1.a.x, var_0.a.x, var_1.a.x, 4294967295u), vec4<u32>(1u, var_0.a.x, var_1.a.x, var_1.a.x), var_2) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.d.x, global2.d.x, _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -773.0, -1243.0)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.d.x)) - _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1726.0))), _wgslsmith_f_op_f32(f32(-1.0) * -1579.0))));
                    var var_3 = Struct_1(global1.a, var_1.b, abs(firstLeadingBit(countOneBits(vec4<i32>(43127, -17221, 12340, -17537)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global2.d.x, _wgslsmith_f_op_f32(round(868.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.x, 1263.0, true))), var_0.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000.0, global1.d.x, 364.0), global1.d, vec3<bool>(false, true, global2.b.x))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(304.0, -164.0, -1273.0)))))));
                }
                case -8175: {
                    global2 = Struct_1(var_1.a, vec3<bool>(true, true, !global1.b.x | var_2.x), vec4<i32>(-min(arg_0.x, -1) | ~(-25698), 2147483647, 3647, global2.c.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_0.d)), vec3<f32>(global2.d.x, var_1.d.x, 1389.0), !var_1.b))))));
                    var var_3 = Struct_1(~global1.a, var_1.b, min(~vec4<i32>(0, ~1, -2147483648, u_input.a), var_0.c), global1.d);
                    var var_4 = global2.d.x;
                }
                case -6849: {
                    var var_3 = Struct_1(~_wgslsmith_add_vec3_u32(global2.a >> (~global2.a % vec3<u32>(32u)), var_0.a), var_1.b, var_0.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1079.0, 1000.0, 215.0), _wgslsmith_f_op_vec3_f32(-global1.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.d, _wgslsmith_f_op_vec3_f32(-global1.d), global2.d.x == -1000.0)) - _wgslsmith_f_op_vec3_f32(var_0.d - vec3<f32>(-2469.0, global2.d.x, global2.d.x)))));
                    var_0 = Struct_1(~(vec3<u32>(u_input.c.x, ~0u, var_3.a.x) | _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(1u, var_0.a.x, global2.a.x)), ~var_1.a)), vec3<bool>(global2.b.x, true, !(!global1.b.x)), vec4<i32>(-countOneBits(-20002), -15280, ~_wgslsmith_div_i32(0, -2147483648), var_3.c.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(182.0, 1421.0, 1948.0))), var_3.d))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(184.0 * var_1.d.x), _wgslsmith_f_op_f32(-943.0 + var_3.d.x), -1026.0))))));
                    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, global1.d.x, global1.d.x, var_3.d.x) + vec4<f32>(var_1.d.x, 3427.0, global1.d.x, 196.0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, var_1.d.x, -574.0, 1180.0) * vec4<f32>(var_3.d.x, -417.0, -1100.0, var_3.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1184.0, 556.0, global1.d.x, 322.0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(435.0, var_1.d.x, -1000.0, 1066.0) + vec4<f32>(var_0.d.x, -307.0, global2.d.x, 608.0))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-642.0 - var_1.d.x), var_3.d.x, _wgslsmith_div_f32(global1.d.x, -399.0), 659.0)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1485.0, global1.d.x, -1000.0, -1029.0))), vec4<f32>(global2.d.x, -1345.0, 1074.0, var_0.d.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1110.0, global2.d.x, 1544.0, global2.d.x))))))))));
                    var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1025.0, var_3.d.x, 194.0, var_0.d.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(-var_3.d.x), 579.0)))));
                }
                case -17404: {
                    var var_3 = Struct_1(vec3<u32>(min(abs(_wgslsmith_sub_u32(0u, u_input.c.x)), ~126u), ~_wgslsmith_dot_vec2_u32(~global2.a.zx, _wgslsmith_clamp_vec2_u32(var_0.a.yy, u_input.c.yz, vec2<u32>(100273u, u_input.c.x))), global1.a.x << (var_1.a.x % 32u)), select(vec3<bool>(4294967295u <= ~0u, all(global2.b.zx), !global1.b.x), !vec3<bool>(!var_1.b.x, 19581 >= global0[_wgslsmith_index_u32(global1.a.x, 7u)], !global1.b.x), !global2.b.x), -global1.c, vec3<f32>(var_0.d.x, var_1.d.x, global1.d.x));
                    var_1 = Struct_1(_wgslsmith_div_vec3_u32(~(~(~vec3<u32>(global2.a.x, 4294967295u, global2.a.x))), vec3<u32>(firstTrailingBit(~var_3.a.x), firstTrailingBit(var_1.a.x & 4294967295u), 4294967295u)), select(var_3.b, var_2.xyw, all(vec3<bool>(global2.b.x, false, global1.a.x <= 4294967295u))), vec4<i32>(var_1.c.x, -1689, select(-2147483648, firstLeadingBit(-arg_0.x), !false), ~(-1)), vec3<f32>(529.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1776.0), 148.0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.d.x + -973.0), _wgslsmith_f_op_f32(global2.d.x - -1379.0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-422.0), -1463.0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(684.0))))));
                }
                default: {
                    global2 = Struct_1(global2.a, vec3<bool>(false, !global2.b.x, all(global1.b.xy)), global2.c, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-810.0))), _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), global2.d.x)), var_0.d.x));
                    var var_3 = Struct_1(vec3<u32>(global1.a.x, global1.a.x, ~_wgslsmith_div_u32(7181u, _wgslsmith_add_u32(var_0.a.x, global2.a.x))), !(!var_2.xzz), firstLeadingBit(global2.c), _wgslsmith_f_op_vec3_f32(sign(var_0.d)));
                    global1 = Struct_1(_wgslsmith_mod_vec3_u32((~vec3<u32>(15841u, var_0.a.x, 23384u) | _wgslsmith_add_vec3_u32(global2.a, vec3<u32>(var_3.a.x, global1.a.x, 53503u))) & u_input.c, ~(~var_0.a << (firstTrailingBit(vec3<u32>(79491u, var_3.a.x, u_input.c.x)) % vec3<u32>(32u)))), vec3<bool>(!(!var_2.x | (-1118.0 != var_3.d.x)), all(vec4<bool>(!false, all(vec3<bool>(var_2.x, var_3.b.x, true)), var_3.b.x, global1.b.x)), -1 < ~(-1)), abs(vec4<i32>(var_3.c.x, ~(-u_input.b.x), max(0, -65185), global2.c.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(1084.0)), _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(579.0 - -197.0)));
                    global2 = Struct_1(~select(~vec3<u32>(4294967295u, global1.a.x, 4294967295u), global1.a, u_input.c.x < firstLeadingBit(5423u)), var_1.b, countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-30552, reverseBits(global1.c.x), max(global1.c.x, -2147483648), global2.c.x), _wgslsmith_div_vec4_i32(var_0.c, _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c.x, -11529, -40162, -2147483648), vec4<i32>(u_input.d, 1, 2147483647, 57580))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-535.0), var_1.d.x, -1041.0) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d))));
                }
            }
            switch (var_1.c.x) {
                case 7470: {
                    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(func_6(arg_0, Struct_1(var_1.a, var_2.wwy, global1.c, var_1.d))) >= _wgslsmith_div_f32(var_1.d.x, 161.0), var_0.b.x, select(!var_0.b.x, var_0.b.x, !(var_1.d.x > 1000.0)), true);
                    let var_4 = Struct_1(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(countOneBits(u_input.c.x), var_1.a.x >> (4294967295u % 32u)), min(_wgslsmith_div_u32(0u, var_0.a.x), 17639u)), var_1.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(var_0.a.x & 6633u, 4294967295u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(58545u, 42343u, 0u, 51349u), vec4<u32>(var_1.a.x, 4294967295u, u_input.c.x, var_0.a.x)), ~var_0.a.x))), var_3.xyx, -min(firstTrailingBit(vec4<i32>(86700, 2147483647, u_input.b.x, global1.c.x)) ^ vec4<i32>(-2147483648, 43571, global2.c.x, 0), -(global2.c ^ vec4<i32>(u_input.d, global1.c.x, -15641, global1.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d)));
                    var var_5 = var_0.d.x;
                    global2 = var_4;
                    global3 = -(~(~(~global2.c.x))) == _wgslsmith_clamp_i32(var_0.c.x, min(~(-1), var_1.c.x), arg_0.x);
                }
                case -2147483648: {
                    let var_3 = false;
                }
                case -1: {
                    let var_3 = var_0.c;
                    var var_4 = _wgslsmith_add_vec3_i32(global1.c.wyy ^ global2.c.xzw, min(~vec3<i32>(_wgslsmith_sub_i32(arg_0.x, var_0.c.x), 1, arg_0.x), vec3<i32>(-2147483648, global1.c.x, ~global1.c.x)));
                    var var_5 = 0;
                    var var_6 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x ^ global2.a.x, global1.a.x, 2760u), _wgslsmith_add_vec3_u32(global2.a, firstTrailingBit(_wgslsmith_add_vec3_u32(func_5(var_0.c, Struct_1(var_0.a, vec3<bool>(global2.b.x, var_1.b.x, var_2.x), global1.c, var_0.d)), global2.a))));
                    let var_7 = Struct_1(~(~(~select(vec3<u32>(global2.a.x, 0u, var_6.x), vec3<u32>(var_0.a.x, 4294967295u, global1.a.x), true))), global1.b, var_1.c, var_1.d);
                }
                case -4768: {
                }
                default: {
                    let var_3 = global1.a.x;
                    var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(var_0.a ^ u_input.c, var_1.a, min(abs(vec3<u32>(u_input.c.x, global1.a.x, global1.a.x)), ~vec3<u32>(0u, var_0.a.x, 1u))) >> (firstTrailingBit(global2.a) % vec3<u32>(32u)), vec3<bool>(global2.b.x, false, global1.d.x >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.d.x + 175.0)))), reverseBits(vec4<i32>(abs(var_0.c.x), _wgslsmith_sub_i32(-15530, _wgslsmith_mod_i32(global1.c.x, arg_0.x)), -(-1 | arg_0.x), ~(-2147483648))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-773.0), _wgslsmith_div_f32(-2601.0, var_0.d.x), _wgslsmith_f_op_f32(min(1000.0, var_0.d.x)))))));
                    global0 = array<i32, 7>();
                }
            }
        }
        case -45169: {
            let var_1 = Struct_1(vec3<u32>(~_wgslsmith_mult_u32(var_0.a.x, firstTrailingBit(1u)), 0u, countOneBits(32096u)), !select(!select(vec3<bool>(true, true, var_0.b.x), global4[_wgslsmith_index_u32(0u, 5u)], vec3<bool>(var_0.b.x, false, global1.b.x)), var_0.b, select(vec3<bool>(true, global2.b.x, false), select(global1.b, vec3<bool>(global2.b.x, global2.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, global1.b.x)), select(vec3<bool>(global1.b.x, true, global2.b.x), global1.b, vec3<bool>(global2.b.x, false, global1.b.x)))), vec4<i32>(global2.c.x, 86987, _wgslsmith_div_i32(abs(~global0[_wgslsmith_index_u32(54185u, 7u)]), ~(i32(-1) * -10168)), 0), vec3<f32>(_wgslsmith_f_op_f32(-global2.d.x), global2.d.x, _wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(-613.0))));
        }
        default: {
        }
    }
    return select(!(!vec4<bool>(var_0.b.x, any(vec3<bool>(global1.b.x, global2.b.x, true)), var_0.a.x > global1.a.x, !false)), select(vec4<bool>(any(vec2<bool>(global1.b.x, true)), all(!vec4<bool>(true, true, true, global1.b.x)), true, global1.b.x), select(vec4<bool>(false, global1.b.x, var_0.b.x, global2.b.x == global2.b.x), !(!vec4<bool>(true, false, false, global1.b.x)), 20580 >= select(-12214, global2.c.x, false)), true), vec4<bool>(var_0.b.x, global1.b.x, any(vec4<bool>(!var_0.b.x, !true, false, all(var_0.b.zy))), global2.b.x));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_1 {
    switch (-32527) {
        case 8106: {
            var var_0 = select(!(!func_4(firstTrailingBit(global2.c.zy))), vec4<bool>(!global1.b.x, true & global1.b.x, global2.b.x, !(!select(true, global1.b.x, global1.b.x))), !func_4(global1.c.xy));
            if (func_4(vec2<i32>(-1, global1.c.x)).x) {
                global2 = Struct_1(global2.a, vec3<bool>(!true, !(_wgslsmith_mod_i32(u_input.d, -33691) > abs(-1)), var_0.x), countOneBits(global2.c), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2.d.x, 140.0)), 615.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x * global1.d.x)), false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_6(select(vec2<i32>(global0[_wgslsmith_index_u32(global1.a.x, 7u)], 0), u_input.b, true), Struct_1(vec3<u32>(global2.a.x, 0u, 90787u), global2.b, vec4<i32>(global1.c.x, u_input.d, global0[_wgslsmith_index_u32(global2.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), vec3<f32>(520.0, -519.0, global2.d.x)))))), -725.0));
                return Struct_1(vec3<u32>((4294967295u | (0u << (arg_1.x % 32u))) & 1u, max(_wgslsmith_clamp_u32(u_input.c.x, 1u, 66260u), 71162u) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(37060u, arg_1.x, arg_2.x), arg_1.yxw)), abs(~(~global2.a.x))), var_0.wwx, select(vec4<i32>(~global1.c.x, _wgslsmith_mod_i32(abs(1), global1.c.x << (global2.a.x % 32u)), ~min(39202, global1.c.x), ~global0[_wgslsmith_index_u32(62430u, 7u)] & 9142), reverseBits(vec4<i32>(-2147483647, global2.c.x, abs(global2.c.x), -global1.c.x)), !vec4<bool>(all(var_0.wx), true, any(global4[_wgslsmith_index_u32(39785u, 5u)]), var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, -489.0, 1386.0) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, global1.d.x, global2.d.x))))));
            }
            var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.d.xy) - global1.d.zy), vec2<f32>(-1149.0, _wgslsmith_f_op_f32(813.0 - -432.0)))));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(select(arg_1.zyx, arg_2.xxz, global1.b), (vec3<u32>(global2.a.x, u_input.c.x, 82971u) ^ u_input.c) >> (~(~arg_2.wwx) % vec3<u32>(32u))), !(!(!global4[_wgslsmith_index_u32(~70830u, 5u)])), -abs(firstTrailingBit(_wgslsmith_sub_vec4_i32(global2.c, vec4<i32>(1597, global0[_wgslsmith_index_u32(0u, 7u)], -2147483648, u_input.b.x)))), global2.d);
            }
            if (!func_4(firstLeadingBit(~vec2<i32>(128, 2147483647))).x) {
                var var_0 = min(global1.a.yy, vec2<u32>(4294967295u, ~(1u & _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, global2.a.x, arg_0.x), vec3<u32>(1u, 35823u, 1u)))));
                global4 = array<vec3<bool>, 5>();
                global1 = Struct_1(select(arg_1.wwy, vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(var_0.x), arg_1.x), arg_0.x, func_5(select(vec4<i32>(1, -2147483648, global2.c.x, global1.c.x), vec4<i32>(2147483647, global1.c.x, -2147483648, global1.c.x), true), Struct_1(arg_2.wxw, vec3<bool>(false, false, false), global1.c, vec3<f32>(1006.0, global2.d.x, global1.d.x))).x), !select(!vec3<bool>(false, true, global2.b.x), global4[_wgslsmith_index_u32(arg_0.x, 5u)], vec3<bool>(global1.b.x, false, true))), select(select(vec3<bool>(global2.b.x != global2.b.x, global1.b.x, global2.b.x), !(!global4[_wgslsmith_index_u32(global1.a.x, 5u)]), true), select(global2.b, select(func_4(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -2147483648)).xwx, global2.b, true == true), global2.b.x), global2.b), -vec4<i32>(_wgslsmith_mult_i32(global1.c.x, global2.c.x & u_input.a), ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(63197u, 7u)], global1.c.x, global1.c.x), select(2147483647, select(-2147483648, 0, global2.b.x), !false), select(u_input.a ^ global1.c.x, _wgslsmith_dot_vec3_i32(global2.c.zzz, global1.c.wxz), false)), global2.d);
                global0 = array<i32, 7>();
            }
            var var_0 = -global2.c;
            let var_1 = global1.d;
            var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.d.x)) - var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1456.0) * _wgslsmith_f_op_f32(select(-814.0, var_1.x, (i32(-1) * -39190) <= _wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 7u)], -53524)))));
        }
    }
    let var_0 = Struct_1(vec3<u32>(~(~_wgslsmith_dot_vec2_u32(arg_2.zy, global1.a.zx)), ~9287u, global1.a.x), func_4(u_input.b).wxx, global2.c, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(global1.d.x, -304.0, global1.b.x | false)), global1.d.x, -1918.0))));
    let var_1 = select(vec4<bool>(false, !(!global1.b.x), all(global2.b.yx), any(func_4(u_input.b))), !(!(!select(vec4<bool>(var_0.b.x, true, true, var_0.b.x), vec4<bool>(global2.b.x, global2.b.x, true, global1.b.x), vec4<bool>(false, global1.b.x, false, global1.b.x)))), global1.b.x);
    if (false) {
    }
    let var_2 = var_0;
    return var_2;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = arg_0;
    global1 = func_3(vec2<u32>(u_input.c.x, var_0.a.x), vec4<u32>(_wgslsmith_mod_u32(37494u, arg_0.a.x), 1u, _wgslsmith_add_u32(u_input.c.x, ~max(u_input.c.x, 0u)), 1u), ~(~(~countOneBits(vec4<u32>(3439u, arg_0.a.x, 26197u, u_input.c.x)))));
    global1 = Struct_1(~vec3<u32>(global1.a.x, _wgslsmith_dot_vec3_u32(arg_0.a << (arg_0.a % vec3<u32>(32u)), reverseBits(vec3<u32>(1u, 0u, 63512u))), (4294967295u >> (0u % 32u)) & countOneBits(u_input.c.x)), arg_0.b, var_0.c, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -435.0))), _wgslsmith_f_op_f32(-1000.0 * _wgslsmith_div_f32(1000.0, -1088.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1117.0)))));
    for (var var_1 = 2147483647; var_1 >= 1; var_1 -= 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        switch (-49225) {
            case 36705: {
                let var_2 = !select(var_0.b, select(arg_0.b, !(!global4[_wgslsmith_index_u32(arg_0.a.x, 5u)]), global4[_wgslsmith_index_u32(~60365u, 5u)]), !var_0.b);
            }
            case -1: {
                let var_2 = ~(~var_0.a.x);
                var var_3 = -16542;
                var var_4 = global1.b;
                global3 = true;
                var var_5 = func_3(~arg_0.a.xy, ~vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, var_2), arg_0.a.x), 4294967295u, 1u << (_wgslsmith_mult_u32(29469u, 4294967295u) % 32u), ~arg_0.a.x), vec4<u32>(~func_5(vec4<i32>(-27376, -1, 3639, u_input.d), var_0).x, arg_0.a.x, _wgslsmith_sub_u32(abs(var_2), 47153u), global1.a.x));
            }
            case 2147483647: {
                global2 = func_3(~max(~vec2<u32>(var_0.a.x, 51891u), global2.a.yy), vec4<u32>(4294967295u, ~_wgslsmith_sub_u32(var_0.a.x << (global2.a.x % 32u), ~54190u), ~(~_wgslsmith_clamp_u32(global1.a.x, var_0.a.x, 4294967295u)), select(arg_0.a.x, 13048u, global1.b.x)), min(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 1849u, arg_0.a.x, 87464u), ~vec4<u32>(0u, 3755u, 17116u, u_input.c.x), min(vec4<u32>(global1.a.x, 416u, 47991u, arg_0.a.x), vec4<u32>(global2.a.x, 0u, 7932u, var_0.a.x))), ~min(vec4<u32>(var_0.a.x, 0u, global2.a.x, 4294967295u), vec4<u32>(arg_0.a.x, 1u, arg_0.a.x, 0u)), ~vec4<u32>(global2.a.x, var_0.a.x, 0u, 10709u)), ((vec4<u32>(25508u, global1.a.x, arg_0.a.x, 1u) & vec4<u32>(arg_0.a.x, arg_0.a.x, 4294967295u, 44373u)) | _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, var_0.a.x, 3887u, 4294967295u), vec4<u32>(global1.a.x, 1u, arg_0.a.x, 0u))) >> (select(countOneBits(vec4<u32>(u_input.c.x, var_0.a.x, 1u, 1u)), vec4<u32>(0u, 4294967295u, 26400u, global1.a.x) & vec4<u32>(global1.a.x, u_input.c.x, u_input.c.x, 0u), func_4(vec2<i32>(global1.c.x, -49279))) % vec4<u32>(32u))));
                global1 = var_0;
                global0 = array<i32, 7>();
                let var_2 = select(select(func_3(arg_0.a.yz, countOneBits(vec4<u32>(u_input.c.x, var_0.a.x, u_input.c.x, global2.a.x) & vec4<u32>(u_input.c.x, var_0.a.x, u_input.c.x, global2.a.x)), (vec4<u32>(2827u, var_0.a.x, 0u, 7987u) << (vec4<u32>(arg_0.a.x, 4294967295u, 4294967295u, 23692u) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, arg_0.a.x, global1.a.x, 1u) % vec4<u32>(32u))).b, !vec3<bool>(global1.c.x < 1, all(vec3<bool>(arg_0.b.x, false, false)), true), global1.b.x), !var_0.b, var_0.b);
                return func_3(vec2<u32>(_wgslsmith_add_u32(52968u, global2.a.x), 11041u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, var_0.a.x, 45811u, global1.a.x), vec4<u32>(global1.a.x, global2.a.x, 36655u, arg_0.a.x)) % 32u)), vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(global2.a.x, select(0u, u_input.c.x, global2.b.x))), u_input.c.x, (~var_0.a.x & (1u & global2.a.x)) ^ _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.a.x, 18796u, 4294967295u, var_0.a.x)), vec4<u32>(global2.a.x, 4294967295u, 10435u, 1u) >> (vec4<u32>(var_0.a.x, global1.a.x, global2.a.x, global1.a.x) % vec4<u32>(32u))), firstTrailingBit(min(global2.a.x, arg_0.a.x >> (7453u % 32u)))), vec4<u32>(5531u, 112548u, global1.a.x, ~global2.a.x));
            }
            default: {
                continue;
            }
        }
        var var_2 = vec4<bool>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(17496u, 0u, u_input.c.x, var_0.a.x) & vec4<u32>(10610u, 1u, var_0.a.x, 22191u), ~vec4<u32>(21319u, global2.a.x, 4294967295u, global1.a.x))) > 83537u, func_4(-arg_0.c.wz).x, var_0.b.x, false && !(!(!var_0.b.x)));
        var_1 = ~(-2147483648);
    }
    let var_1 = vec2<bool>(!any(vec4<bool>(!global1.b.x, func_3(var_0.a.xy, vec4<u32>(0u, 26297u, 4294967295u, 1u), vec4<u32>(u_input.c.x, 14910u, arg_0.a.x, 51474u)).b.x, func_3(global2.a.zz, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(arg_0.a.x, 7038u, 1u, global1.a.x)).b.x, var_0.b.x & true)), arg_0.b.x | global2.b.x);
    return Struct_1(~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, global2.a.x, 826u), ~global1.a)), vec3<bool>(all(vec2<bool>(global1.b.x, false)) | select(false, arg_0.b.x, false), !all(vec4<bool>(var_1.x, global1.b.x, false, arg_0.b.x)), all(var_0.b.xy)), var_0.c, vec3<f32>(_wgslsmith_div_f32(574.0, var_0.d.x), _wgslsmith_f_op_f32(sign(arg_1.x)), 1000.0));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<i32, 7>();
    var var_0 = arg_2;
    global3 = var_0.b.x;
    var var_1 = 14912u > (_wgslsmith_mult_u32(arg_2.a.x, var_0.a.x) >> (arg_0.a.x % 32u));
    return Struct_1(var_0.a, !(!global1.b), arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.d.x * _wgslsmith_f_op_f32(-1043.0)), _wgslsmith_f_op_f32(max(1000.0, func_3(arg_0.a.xx, vec4<u32>(u_input.c.x, global1.a.x, 29714u, global1.a.x), vec4<u32>(global2.a.x, 2585u, arg_1.x, 1u)).d.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1639.0 + -2047.0)), _wgslsmith_f_op_f32(-110.0), !(true & true))), _wgslsmith_f_op_f32(f32(-1.0) * -1057.0)));
}

fn func_8(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = -1599.0;
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        if (true) {
            var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(func_7(Struct_1(u_input.c, vec3<bool>(false, true, true), vec4<i32>(-2147483648, global1.c.x, arg_3.c.x, arg_3.c.x), vec3<f32>(1135.0, arg_0.d.x, global1.d.x)), vec2<u32>(u_input.c.x, 28981u), Struct_1(u_input.c, arg_3.b, vec4<i32>(0, global1.c.x, 7412, global0[_wgslsmith_index_u32(1914u, 7u)]), vec3<f32>(arg_1, arg_1, arg_3.d.x)), arg_0).d.x, _wgslsmith_f_op_f32(arg_1 + arg_3.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1872.0))), _wgslsmith_f_op_f32(-886.0 - arg_1), -1000.0), vec4<f32>(-144.0, arg_3.d.x, _wgslsmith_f_op_f32(-376.0 - arg_1), arg_1)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.d.x, 888.0)), _wgslsmith_f_op_f32(round(-994.0)), _wgslsmith_f_op_f32(-global2.d.x), global2.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, global2.d.x, -886.0, -1048.0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 2936.0, arg_0.d.x, -135.0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_1, -1000.0, arg_3.d.x) - vec4<f32>(423.0, arg_1, arg_3.d.x, 378.0))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, -2062.0, -749.0, arg_0.d.x)))))))));
            return abs(arg_0.c >> (~abs(vec4<u32>(1u, arg_3.a.x, 17361u, u_input.c.x)) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(1u, 7u)], u_input.d, 2147483647, u_input.a) >> (firstLeadingBit(vec4<u32>(global1.a.x, arg_3.a.x, 1u, 40538u)) % vec4<u32>(32u))), firstLeadingBit(~abs(vec4<i32>(1, 7781, arg_3.c.x, arg_3.c.x))));
        }
    }
    var var_1 = 0u;
    var var_2 = -23457;
    for (var var_3 = -_wgslsmith_mult_i32(-38604, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, arg_0.a.x, 4294967295u), vec4<u32>(4294967295u, arg_2, global1.a.x, 4294967295u)), vec4<u32>(global2.a.x, 11908u, _wgslsmith_div_u32(0u, arg_3.a.x), 4294967295u)), 7u)]); ; var_3 -= 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_4 = arg_3;
        break;
    }
    return min(~(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 35941, global1.c.x, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<i32>(arg_3.c.x, global2.c.x, 1, -21427)))), abs(vec4<i32>(func_7(arg_3, arg_3.a.yy, arg_3, func_3(vec2<u32>(57589u, arg_3.a.x), vec4<u32>(40743u, u_input.c.x, 1u, 26255u), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 1u))).c.x, select(min(-1, 1), -1, true), 2147483647, func_7(arg_0, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(20647u, 121932u)), Struct_1(vec3<u32>(1u, 7770u, global1.a.x), vec3<bool>(global1.b.x, false, false), vec4<i32>(0, u_input.a, 21478, u_input.a), vec3<f32>(1391.0, -288.0, arg_3.d.x)), func_2(Struct_1(global2.a, vec3<bool>(false, true, global1.b.x), vec4<i32>(-56393, global1.c.x, u_input.d, arg_3.c.x), vec3<f32>(-1243.0, arg_1, global1.d.x)), arg_0.d)).c.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global3 = global2.b.x;
    global1 = Struct_1(~global1.a, global1.b, func_8(Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, global2.a.x, arg_3, global2.a.x), vec4<u32>(global2.a.x, global1.a.x, arg_0.a.x, 11714u)), abs(4294967295u), arg_3 & arg_3), vec3<bool>(arg_1, arg_2.b.x, global1.b.x), vec4<i32>(global1.c.x & 29611, min(22848, -2147483648), _wgslsmith_add_i32(-2147483648, global1.c.x), 2639), global2.d), _wgslsmith_f_op_f32(-1252.0), 1550u << (~0u % 32u), func_7(func_2(arg_2, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(281.0, -120.0, global1.d.x)))), arg_0.a.zx, arg_0, Struct_1(vec3<u32>(arg_3, u_input.c.x, 4294967295u) & vec3<u32>(global1.a.x, 0u, 4294967295u), !global2.b, vec4<i32>(1, arg_0.c.x, global1.c.x, -2147483648) | arg_0.c, _wgslsmith_f_op_vec3_f32(round(global1.d))))), func_2(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(func_7(arg_0, global1.a.yz, arg_0, Struct_1(vec3<u32>(59228u, global2.a.x, 1544u), arg_0.b, global2.c, vec3<f32>(global2.d.x, -111.0, 1000.0))).d.x, _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(trunc(-768.0))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.d.x, arg_2.d.x, global1.d.x))))).d);
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        continue;
    }
    if (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_0.a.yz, min(vec4<u32>(arg_2.a.x, 1u, 1u, arg_2.a.x), vec4<u32>(global1.a.x, 0u, global2.a.x, 36817u)), ~vec4<u32>(143809u, 24561u, 6367u, arg_3)).d.x + func_7(func_2(Struct_1(u_input.c, vec3<bool>(arg_2.b.x, arg_0.b.x, global2.b.x), vec4<i32>(arg_2.c.x, 13592, 1, global1.c.x), global2.d), arg_2.d), global2.a.xz ^ vec2<u32>(u_input.c.x, arg_2.a.x), arg_2, Struct_1(vec3<u32>(u_input.c.x, 1u, global2.a.x), vec3<bool>(true, false, global2.b.x), arg_2.c, vec3<f32>(global1.d.x, global1.d.x, arg_2.d.x))).d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(540.0)))), true | false)) <= func_7(Struct_1(~min(global1.a, vec3<u32>(arg_0.a.x, 58268u, u_input.c.x)), arg_2.b, global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-485.0, 651.0, 432.0) - vec3<f32>(global2.d.x, 114.0, -1000.0)))), vec2<u32>(arg_0.a.x, 0u ^ ~arg_0.a.x), arg_2, arg_0).d.x) {
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        }
        let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(sign(arg_2.d.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(-1230.0 - arg_2.d.x))), -617.0)), arg_2.d.x, _wgslsmith_f_op_f32(-1074.0));
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        continue;
    }
    return func_3(arg_2.a.zy, firstTrailingBit(reverseBits(~firstLeadingBit(vec4<u32>(arg_2.a.x, arg_2.a.x, 1u, 0u)))), vec4<u32>(select(arg_0.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(48011u, arg_0.a.x), _wgslsmith_mult_u32(15222u, global1.a.x)), arg_2.b.x), arg_2.a.x | _wgslsmith_clamp_u32(firstLeadingBit(global1.a.x), arg_2.a.x, ~global1.a.x), global1.a.x, _wgslsmith_sub_u32(firstTrailingBit(~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(35551u, 4294967295u), global1.a.zz), ~vec2<u32>(arg_0.a.x, arg_0.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 5>();
    if (false) {
    }
    let var_0 = global2.d;
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        return;
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        global2 = Struct_1(firstLeadingBit(min(vec3<u32>(0u, 0u, _wgslsmith_mult_u32(27215u, global2.a.x)), global2.a)), !(!vec3<bool>(282.0 == -1491.0, global1.b.x, true)), vec4<i32>(~u_input.a, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global1.c, global1.c), global1.c | global1.c), 1, 8841), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, global2.d.x, 2486.0), global1.d)), global1.d));
        for (var var_1 = 2147483647; ; var_1 -= 1) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        }
        global0 = array<i32, 7>();
        let var_1 = Struct_1(u_input.c, global2.b, -vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-40837, global0[_wgslsmith_index_u32(6362u, 7u)], 0, global1.c.x), vec4<i32>(1, u_input.d, global0[_wgslsmith_index_u32(0u, 7u)], global1.c.x)), ~0, 1), -1, -45123, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, 1), vec2<i32>(u_input.a, u_input.a))), vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(-1000.0)), global1.d.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(1000.0, var_0.x), -474.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) + _wgslsmith_div_f32(-101.0, _wgslsmith_f_op_f32(var_0.x - 183.0)))));
        global1 = func_1(var_1, !(!all(vec2<bool>(global2.b.x, true))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(0u), ~4294967295u, global1.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, u_input.c.x, var_1.a.x), min(vec3<u32>(0u, 17731u, global1.a.x), var_1.a))), var_1.b, firstLeadingBit(global2.c), var_1.d), 13469u);
    }
    for (var var_1: i32; var_1 < -16680; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_2 = ~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(reverseBits(global1.a.x), 4294967295u), _wgslsmith_mult_u32(func_5(vec4<i32>(-41620, global0[_wgslsmith_index_u32(77454u, 7u)], -25136, global2.c.x), Struct_1(vec3<u32>(global2.a.x, 0u, 27576u), vec3<bool>(true, true, false), global1.c, vec3<f32>(-211.0, -1275.0, -136.0))).x, 16740u)));
        var_1 = _wgslsmith_add_i32(func_1(func_1(Struct_1(global1.a, global4[_wgslsmith_index_u32(~global1.a.x, 5u)], -global1.c, _wgslsmith_f_op_vec3_f32(-global2.d)), !global1.b.x, func_3(~vec2<u32>(63173u, 1u), vec4<u32>(1u, 35868u, global2.a.x, 0u) & vec4<u32>(u_input.c.x, 4817u, 11131u, 19927u), ~vec4<u32>(73356u, global1.a.x, 1u, var_2)), ~42930u), global2.b.x, Struct_1(_wgslsmith_clamp_vec3_u32(~global2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(global2.a.x, global2.a.x, global1.a.x), global1.a), firstLeadingBit(global2.a)), !global4[_wgslsmith_index_u32(~var_2, 5u)], ~min(global2.c, vec4<i32>(global2.c.x, global1.c.x, global0[_wgslsmith_index_u32(1u, 7u)], -8385)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.d)), _wgslsmith_div_vec3_f32(vec3<f32>(427.0, global2.d.x, -1206.0), global2.d))), 21861u).c.x, reverseBits(-2147483648));
        for (; select(_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647, u_input.b.x), _wgslsmith_mult_i32(-2147483647, 0)) > global0[_wgslsmith_index_u32(0u, 7u)], global2.b.x, ((u_input.d << (func_1(Struct_1(u_input.c, global1.b, global2.c, vec3<f32>(1390.0, global1.d.x, -1467.0)), false, Struct_1(u_input.c, vec3<bool>(false, true, false), global2.c, vec3<f32>(1000.0, 211.0, -355.0)), global2.a.x).a.x % 32u)) & firstTrailingBit(u_input.b.x)) >= _wgslsmith_div_i32((29254 | u_input.d) | ~0, global0[_wgslsmith_index_u32(1u, 7u)])); ) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            var var_3 = func_2(Struct_1(func_7(Struct_1(u_input.c, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(35308u, global2.a.x), 5u)], _wgslsmith_mod_vec4_i32(vec4<i32>(0, -1, global2.c.x, u_input.d), vec4<i32>(global2.c.x, 0, -1, 13843)), global1.d), ~(u_input.c.yz << (global2.a.yx % vec2<u32>(32u))), func_7(func_7(Struct_1(global1.a, vec3<bool>(global2.b.x, false, true), vec4<i32>(1, -2147483648, global2.c.x, u_input.b.x), vec3<f32>(1000.0, global2.d.x, -651.0)), vec2<u32>(u_input.c.x, global1.a.x), Struct_1(vec3<u32>(global2.a.x, global2.a.x, 8726u), global1.b, vec4<i32>(2147483647, global1.c.x, 2147483647, global2.c.x), vec3<f32>(-1000.0, global1.d.x, global1.d.x)), Struct_1(u_input.c, vec3<bool>(true, true, global2.b.x), global2.c, vec3<f32>(-2006.0, global1.d.x, 287.0))), vec2<u32>(u_input.c.x, var_2), func_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 42227u), vec3<bool>(global2.b.x, global1.b.x, global1.b.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global2.a.x, 7u)], 1, global0[_wgslsmith_index_u32(5439u, 7u)]), vec3<f32>(var_0.x, 556.0, global1.d.x)), global2.d), func_1(Struct_1(global2.a, vec3<bool>(global2.b.x, global2.b.x, false), vec4<i32>(21238, -14717, 30466, 1), vec3<f32>(-564.0, global1.d.x, -515.0)), global1.b.x, Struct_1(u_input.c, global4[_wgslsmith_index_u32(global1.a.x, 5u)], global2.c, global1.d), 43571u)), func_1(func_7(Struct_1(global2.a, global4[_wgslsmith_index_u32(global1.a.x, 5u)], global2.c, global2.d), vec2<u32>(global2.a.x, 0u), Struct_1(u_input.c, global1.b, global1.c, global2.d), Struct_1(global2.a, vec3<bool>(global2.b.x, false, false), vec4<i32>(global2.c.x, 5393, -28978, 1), global2.d)), 2147483647 >= 30715, func_3(global2.a.xy, vec4<u32>(global2.a.x, 29658u, u_input.c.x, var_2), vec4<u32>(69503u, 64617u, 4294967295u, var_2)), ~7167u)).a, select(global4[_wgslsmith_index_u32(27784u, 5u)], func_1(func_2(Struct_1(global1.a, global2.b, vec4<i32>(58767, 29254, global0[_wgslsmith_index_u32(global2.a.x, 7u)], global1.c.x), global2.d), vec3<f32>(var_0.x, global1.d.x, -1204.0)), func_7(Struct_1(vec3<u32>(u_input.c.x, var_2, 38439u), vec3<bool>(false, global2.b.x, global1.b.x), global1.c, vec3<f32>(402.0, var_0.x, 786.0)), vec2<u32>(var_2, var_2), Struct_1(global2.a, vec3<bool>(false, false, true), global1.c, vec3<f32>(-649.0, global2.d.x, global1.d.x)), Struct_1(global2.a, global1.b, global2.c, vec3<f32>(global1.d.x, -246.0, -1000.0))).b.x, func_3(vec2<u32>(7936u, 0u), vec4<u32>(13253u, 14948u, 0u, global2.a.x), vec4<u32>(u_input.c.x, var_2, 1u, 0u)), global1.a.x).b, false), _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(-1), firstLeadingBit(global1.c.x), global0[_wgslsmith_index_u32(44219u, 7u)] ^ global1.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(14007u, 26669u), 7u)]), func_1(func_1(Struct_1(global2.a, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(50230u, 7u)], -31349, global0[_wgslsmith_index_u32(global1.a.x, 7u)], -16148), vec3<f32>(var_0.x, 1899.0, -238.0)), true, Struct_1(vec3<u32>(global2.a.x, 1u, 4294967295u), vec3<bool>(true, true, global1.b.x), vec4<i32>(global1.c.x, 1, global0[_wgslsmith_index_u32(global2.a.x, 7u)], u_input.b.x), global1.d), 16597u), select(false, global2.b.x, true), Struct_1(global2.a, vec3<bool>(global1.b.x, true, global1.b.x), vec4<i32>(-15056, 0, -1, -42731), vec3<f32>(-1623.0, global1.d.x, global2.d.x)), ~52043u).c), global1.d), _wgslsmith_f_op_vec3_f32(round(global2.d))).a.zx;
            break;
        }
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            return;
        }
        let var_3 = vec2<bool>(global2.b.x, 868.0 > 934.0);
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(454.0, 457.0));
}

