// {"0:0":[24,164,49,142,228,12,140,228]}
// Seed: 15064432972454423268

struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(-5588, -21240, 2147483647, -2147483648), vec4<i32>(21009, -13968, -34289, -21311), vec4<i32>(2147483647, 51730, 1, 2147483647), vec4<i32>(-55867, 559, 0, 32186), vec4<i32>(-2147483648, -666, -17025, -35872), vec4<i32>(1, -1, 22233, 1), vec4<i32>(39597, 5886, 0, 2147483647), vec4<i32>(17, -85303, 0, 1), vec4<i32>(1, -2147483648, 26300, 350), vec4<i32>(-46535, -2147483648, -2147483648, -1), vec4<i32>(2147483647, 1, -30286, -31350), vec4<i32>(49510, -6938, 1, 1), vec4<i32>(-2147483648, -4127, -31766, -1), vec4<i32>(25339, -2147483648, 40126, -19029), vec4<i32>(-1, 16641, 1, 4601), vec4<i32>(-22794, 1634, 0, 13005), vec4<i32>(-25207, -39133, 1, 9775), vec4<i32>(34520, 2452, 37081, -2147483648), vec4<i32>(1, 1, -2147483648, 0), vec4<i32>(-22266, 13457, -12098, -37418), vec4<i32>(-25596, 0, 0, -2147483648), vec4<i32>(0, -24359, -30275, 1), vec4<i32>(1, 1, -2147483648, -2147483648), vec4<i32>(4256, 0, 0, 0), vec4<i32>(-26622, 8136, 1, -2147483648));

var<private> global2: array<Struct_1, 28>;

var<private> global3: Struct_1;

var<private> global4: u32;

var<private> LOOP_COUNTERS: array<u32, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    var var_0 = 168.0;
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        continue;
    }
    let var_1 = false;
    return select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.x, arg_1.x), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)]), arg_1.yx), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], arg_2))) | (40948u & firstTrailingBit(4294967295u)), 3u)], ~_wgslsmith_div_u32(arg_2 & (41966u | arg_1.x), ~global0[_wgslsmith_index_u32(countOneBits(107012u), 3u)]), false);
}

fn func_5() -> vec4<u32> {
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(func_6(global3.a, vec3<u32>(u_input.a.x, 58016u, u_input.a.x), 4294967295u), _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(3687u, 3u)])) ^ abs(u_input.a), vec2<u32>(~47116u, 100960u) & vec2<u32>(max(u_input.a.x, 0u), 35957u << (0u % 32u))), 4294967295u), 28u)];
    if (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))))) > 162.0) {
        let var_0 = -_wgslsmith_mult_i32(61756, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-5037, -1)), vec2<i32>(-8934, 23308) << (u_input.a % vec2<u32>(32u))) >> (~0u % 32u));
        if (select(false, global3.d.x, !(!true))) {
            let var_1 = Struct_2(global2[_wgslsmith_index_u32(36710u, 28u)], Struct_1(global3.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.a.x)), _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.b)))), vec2<bool>(any(!vec4<bool>(global3.c.x, global3.c.x, false, true)), all(vec2<bool>(global3.d.x, global3.c.x))), global3.d), global3.d, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global3.b, 528.0, -128.0, global3.a.x), vec4<f32>(494.0, global3.b, -277.0, global3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1342.0, global3.b, global3.a.x, 1336.0))))))), (all(select(vec3<bool>(global3.c.x, false, global3.d.x), vec3<bool>(global3.c.x, true, false), global3.d.x)) | !all(global3.d)) || true);
        }
        let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-627.0 * -1000.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a.x - -503.0), global3.b)) + 212.0) * -922.0));
        for (var var_2 = 38987; ; var_2 += 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            continue;
        }
    }
    var var_0 = Struct_2(Struct_1(global3.a, -1787.0, select(!global3.d, global3.d, _wgslsmith_f_op_f32(global3.b * 1000.0) >= _wgslsmith_f_op_f32(max(global3.b, -2618.0))), !global3.c), Struct_1(global3.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -776.0), _wgslsmith_f_op_f32(-global3.a.x))), global3.c, select(select(global3.c, select(global3.d, vec2<bool>(global3.d.x, true), vec2<bool>(global3.d.x, global3.d.x)), false), select(select(vec2<bool>(false, false), vec2<bool>(global3.d.x, true), true), select(vec2<bool>(true, true), vec2<bool>(false, global3.c.x), global3.c.x), vec2<bool>(global3.d.x, global3.c.x)), global3.c)), vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(global3.c.x, false, true), vec3<bool>(false, false, global3.c.x))) || !global3.c.x, !(!(!global3.c.x))), vec4<f32>(-1065.0, _wgslsmith_f_op_f32(round(global3.b)), 632.0, 1780.0), !false);
    global3 = var_0.a;
    if (true) {
        if (!((all(select(vec3<bool>(false, false, false), vec3<bool>(global3.c.x, var_0.e, true), vec3<bool>(var_0.a.c.x, false, false))) && select(!global3.d.x, true || global3.d.x, false)) | select(false, !(var_0.d.x != var_0.a.a.x), 4294967295u <= select(global0[_wgslsmith_index_u32(0u, 3u)], 0u, true)))) {
            var_0 = Struct_2(var_0.b, global2[_wgslsmith_index_u32(~1u, 28u)], global3.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, var_0.a.a.x, 1109.0, -639.0))))))), select(select(!(var_0.c.x && false), all(!vec4<bool>(var_0.e, var_0.e, var_0.e, false)), _wgslsmith_f_op_f32(-1090.0) <= var_0.b.a.x), global3.d.x, !(1 <= (20926 ^ -16035))));
            let var_1 = !vec4<bool>(global3.d.x, all(vec4<bool>(!false, true, any(vec4<bool>(true, var_0.a.c.x, true, true)), var_0.e)), true | global3.c.x, 53941u >= (global0[_wgslsmith_index_u32(68180u | 1u, 3u)] ^ global0[_wgslsmith_index_u32(~0u, 3u)]));
            var var_2 = var_0.a.a.zzw;
            global3 = var_0.b;
        }
        switch (_wgslsmith_mod_i32(0, -9547) ^ (-2147483648 >> (~25987u % 32u))) {
            case 39627: {
                global3 = global2[_wgslsmith_index_u32((~(~(44848u << (global0[_wgslsmith_index_u32(u_input.a.x, 3u)] % 32u))) | reverseBits(4294967295u)) ^ _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(36102u, u_input.a.x, global0[_wgslsmith_index_u32(0u, 3u)])), vec3<u32>(1u, ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.a.x), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 4294967295u, 29587u), vec3<u32>(40140u, 17156u, 17948u)), 3u)], 37904u))), 28u)];
                var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(global3.a.x, 628.0), var_0.b.a.x, _wgslsmith_f_op_f32(-338.0), _wgslsmith_div_f32(global3.a.x, 1251.0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.a - vec4<f32>(-878.0, -563.0, -1552.0, global3.a.x)), vec4<f32>(2030.0, 1550.0, 2302.0, -1000.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.b)) * _wgslsmith_f_op_f32(trunc(global3.a.x)))), select(global3.c, var_0.c, select(select(vec2<bool>(var_0.e, false), vec2<bool>(global3.c.x, global3.c.x), true), var_0.a.d, !vec2<bool>(var_0.e, true))), global3.c), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-429.0, -2504.0, 628.0, -1108.0), global3.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.d.x)), _wgslsmith_f_op_f32(-var_0.a.a.x)), global3.c, !select(!vec2<bool>(var_0.c.x, global3.c.x), !global3.d, global3.d.x & false)), var_0.b.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -180.0), global3.a.x, var_0.a.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(2203.0)), -1561.0, !global3.d.x))))), all(vec4<bool>(1 != (i32(-1) * -2147483648), false, !global3.d.x | (global3.d.x && true), !var_0.b.c.x)));
                var var_1 = 299.0;
            }
            case -1: {
                var var_1 = max(vec2<i32>(2147483647, -2147483648 & firstTrailingBit(_wgslsmith_mod_i32(0, -1))), abs(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1, -2147483648), vec2<i32>(-2147483648, -4950), vec2<i32>(13119, 36722)) << (~(~vec2<u32>(7766u, 86813u)) % vec2<u32>(32u))));
                global2 = array<Struct_1, 28>();
            }
            default: {
                let var_1 = Struct_2(Struct_1(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268.0 * 176.0) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d.x + global3.a.x)))), vec2<bool>(-1 != -10583, any(select(vec4<bool>(false, global3.c.x, false, global3.c.x), vec4<bool>(false, var_0.e, true, true), vec4<bool>(global3.d.x, true, global3.c.x, var_0.e)))), var_0.b.d), global2[_wgslsmith_index_u32(53644u, 28u)], vec2<bool>(!any(vec3<bool>(global3.c.x, var_0.a.d.x, var_0.e)), _wgslsmith_f_op_f32(exp2(var_0.d.x)) == 211.0), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.a.a.x)), _wgslsmith_f_op_f32(1114.0 * _wgslsmith_f_op_f32(f32(-1.0) * -1486.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a.x, -1000.0))), _wgslsmith_f_op_f32(ceil(777.0))), var_0.b.a.x), !false == var_0.e);
                var var_2 = !vec2<bool>(var_1.e, !global3.c.x);
                var var_3 = ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(15121u, 3u)], 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 72742u, global0[_wgslsmith_index_u32(0u, 3u)], 36310u)), 3u)], _wgslsmith_div_u32(max(3164u, 0u), ~global0[_wgslsmith_index_u32(4294967295u, 3u)]), ~_wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], global0[_wgslsmith_index_u32(76966u, 3u)])), 3u)], u_input.a.x);
            }
        }
        let var_1 = var_0.b;
        for (var var_2 = 5277; !all(vec2<bool>(any(!vec3<bool>(var_1.d.x, true, var_0.e)), global3.c.x)); ) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(max(countOneBits(vec2<i32>(-1, 22544)), firstTrailingBit(vec2<i32>(-8969, 0)))), vec2<i32>(~41592, _wgslsmith_sub_i32(-1, 0))), max(firstLeadingBit(15370), 0 & ((i32(-1) * -35477) & (-3774 ^ 613))), -(~(-(~(-2147483648)))));
            let var_4 = Struct_1(_wgslsmith_div_vec4_f32(var_0.a.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(global3.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -528.0, 508.0, -1722.0)) * _wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(global3.b, 637.0, -1000.0, 1000.0)))))), _wgslsmith_f_op_f32(max(1893.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -656.0))), 167.0, global3.d.x)))), select(vec2<bool>(all(vec2<bool>(global3.c.x, var_1.d.x)), select(true, false, true)), select(!(!vec2<bool>(var_1.d.x, var_0.b.d.x)), vec2<bool>(!var_1.d.x, global3.d.x), !select(global3.c, vec2<bool>(false, true), vec2<bool>(var_0.a.d.x, global3.d.x))), var_0.a.c.x), var_1.c);
            let var_5 = Struct_2(var_4, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, var_1.b, var_0.a.a.x, var_0.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 497.0, 1507.0, 787.0) * var_0.b.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-289.0, var_1.a.x, global3.b, global3.b) - vec4<f32>(-1388.0, -1073.0, -268.0, -1000.0)))), var_4.b, !vec2<bool>(var_4.d.x, false), select(!(!vec2<bool>(false, var_1.d.x)), !select(var_1.c, vec2<bool>(var_0.c.x, true), true), vec2<bool>(2147483647 != -15482, global3.c.x))), global3.c, vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(ceil(var_1.a.x)), global3.b, _wgslsmith_div_f32(186.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(-940.0)), -367.0))), all(!(!vec4<bool>(false, false, var_1.c.x, false))));
            var_2 = ~(-1);
        }
    }
    return vec4<u32>(48428u, 42200u, 0u, min(global0[_wgslsmith_index_u32(~(u_input.a.x | ~27201u), 3u)], ~(~(0u & u_input.a.x))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<u32>) -> vec3<u32> {
    if ((global3.d.x && !false) != false) {
        for (var var_0 = 2147483647; ; var_0 -= 1) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1 | _wgslsmith_sub_i32(arg_0, 10530), arg_0, 15805, countOneBits(arg_0)), ~(~global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 25u)] >> (firstTrailingBit(vec4<u32>(0u, 1u, 47877u, 41545u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-28767, -61675, arg_0, arg_0), vec4<i32>(arg_0, 72955, arg_0, 1)), abs(vec4<i32>(arg_0, 0, arg_0, arg_0))), global1[_wgslsmith_index_u32(13307u & ~global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 25u)])), reverseBits(abs(global1[_wgslsmith_index_u32(arg_2.x, 25u)] ^ abs(global1[_wgslsmith_index_u32(11696u, 25u)]))));
            global1 = array<vec4<i32>, 25>();
            var var_2 = _wgslsmith_f_op_vec2_f32(global3.a.yz * _wgslsmith_f_op_vec2_f32(-global3.a.zw));
            var_0 = ~_wgslsmith_mod_i32(1, var_1.x);
        }
        var var_0 = global0[_wgslsmith_index_u32(36685u, 3u)] <= ~_wgslsmith_div_u32(select(arg_2.x << (arg_2.x % 32u), ~u_input.a.x, -471.0 != global3.a.x), 29696u);
        let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a.xxz) + vec3<f32>(_wgslsmith_f_op_f32(327.0 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.a.x + -635.0), 676.0))), 445.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-729.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), global3.b)), !(global3.a.x == 722.0)))));
    }
    global1 = array<vec4<i32>, 25>();
    var var_0 = !false;
    for (var var_1: i32; var_1 < -6518; global2 = array<Struct_1, 28>()) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        if (global3.d.x) {
            continue;
        }
        var var_2 = func_5();
        var var_3 = all(!vec3<bool>(!select(global3.c.x, false, arg_1), ~global0[_wgslsmith_index_u32(1258u, 3u)] >= min(21526u, arg_2.x), !all(vec4<bool>(false, false, true, arg_1))));
    }
    global3 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 28u)];
    return (~(~_wgslsmith_sub_vec3_u32(vec3<u32>(80885u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45265u, 3u)], 3u)], global0[_wgslsmith_index_u32(57477u, 3u)]), vec3<u32>(0u, 4294967295u, 0u))) | (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(arg_2.x, 1u, global0[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 3u)], u_input.a.x, 45994u), vec3<u32>(0u, 31995u, 4294967295u))) | _wgslsmith_div_vec3_u32(vec3<u32>(22819u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 3u)], 3u)], 23782u), ~vec3<u32>(4294967295u, u_input.a.x, arg_2.x)))) ^ vec3<u32>(func_5().x, global0[_wgslsmith_index_u32(~78323u, 3u)], ~reverseBits(4294967295u));
}

fn func_3() -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_0 = global1[_wgslsmith_index_u32(abs(37144u), 25u)];
        var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], ~1u), 25u)];
        var_0 = -(~min(abs(_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33117u, 3u)], 25u)], global1[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(~1u, 25u)], _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(1u, 25u)], vec4<i32>(var_0.x, var_0.x, var_0.x, 42108)))));
    }
    let var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -1000.0);
    switch (i32(-1) * -11555) {
        case 2147483647: {
            let var_1 = u_input.a.x | 4294967295u;
            global4 = 1u;
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                global1 = array<vec4<i32>, 25>();
                continue;
            }
        }
        case -5868: {
            global1 = array<vec4<i32>, 25>();
            global2 = array<Struct_1, 28>();
        }
        default: {
            var var_1 = 33432;
        }
    }
    var var_1 = abs(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(func_4(-2147483648, true, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<u32>(58504u, global0[_wgslsmith_index_u32(11906u, 3u)], 1u))), ~vec3<u32>(4294967295u, 21969u, 61400u) & vec3<u32>(44990u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 3u)], u_input.a.x), ~select(vec3<u32>(global0[_wgslsmith_index_u32(0u, 3u)], 4294967295u, u_input.a.x), vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(global3.c.x, global3.c.x, false))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(19494u, 10984u, global0[_wgslsmith_index_u32(522u, 3u)]), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)], 55442u)), ~vec3<u32>(44926u, 38723u, global0[_wgslsmith_index_u32(69728u, 3u)]))));
    switch (_wgslsmith_sub_i32(~37660, _wgslsmith_clamp_i32(0, 1, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-27991, 2147483647, -2147483648), ~vec3<i32>(-2147483648, -2147483648, 49353)), 44137)))) {
        case -13137: {
        }
        default: {
            for (var var_2 = reverseBits(-(-24740 >> ((global0[_wgslsmith_index_u32(countOneBits(0u), 3u)] >> ((30495u & u_input.a.x) % 32u)) % 32u))); any(select(!vec4<bool>(var_1.x > global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global3.d.x, all(vec2<bool>(false, true)), !global3.d.x), vec4<bool>(false & all(vec4<bool>(global3.c.x, false, global3.d.x, global3.d.x)), false, all(vec2<bool>(true, true)), any(select(vec3<bool>(global3.c.x, false, true), vec3<bool>(global3.c.x, global3.c.x, true), false))), true)); ) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_3 = !(!true);
                global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_f_op_f32(ceil(global3.b)), global3.c, !global3.d);
                continue;
            }
            switch (firstLeadingBit(0)) {
                default: {
                    var_1 = func_5().wwz;
                }
            }
        }
    }
    return global2[_wgslsmith_index_u32(4294967295u, 28u)];
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 28>();
    let var_0 = min(u_input.a ^ (vec2<u32>(arg_0 | u_input.a.x, 1u) << (_wgslsmith_sub_vec2_u32(vec2<u32>(105747u, 4294967295u), ~u_input.a) % vec2<u32>(32u))), ~vec2<u32>(max(_wgslsmith_sub_u32(u_input.a.x, arg_0), _wgslsmith_mod_u32(arg_0, arg_0)), ~4294967295u));
    switch (-_wgslsmith_add_i32(_wgslsmith_add_i32(~(-2147483648), -33425), _wgslsmith_mod_i32(_wgslsmith_sub_i32(0, -2147483648), _wgslsmith_clamp_i32(-39919, 31932, 34590))) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(var_0.x, 0u, u_input.a.x, var_0.x), vec4<u32>(1u, 3726u, u_input.a.x, var_0.x)), countOneBits(vec4<u32>(53800u, 39024u, u_input.a.x, 4294967295u))) << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a.x, 25735u, 1u, 50206u)), firstTrailingBit(vec4<u32>(1u, var_0.x, var_0.x, u_input.a.x))) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(13509u, 15460u, var_0.x, 1u), vec4<u32>(4294967295u, 68457u, 48254u, u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 4294967295u, 1u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(54620u, global0[_wgslsmith_index_u32(var_0.x, 3u)], u_input.a.x, 36381u), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(12860u, 3u)], arg_0, 74037u))), ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 3u)], 3u)], 45621u), !select(vec4<bool>(arg_1.c.x, arg_2.c.x, global3.d.x, true), vec4<bool>(false, arg_2.c.x, arg_1.e, arg_1.b.c.x), true))) % 32u)) {
        case 22839: {
            global0 = array<u32, 3>();
            let var_1 = global3.a.yww;
        }
        case 26316: {
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                let var_1 = select(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(max(vec3<i32>(1, -19975, -2147483648), vec3<i32>(-19822, -42941, -27139))), vec3<i32>(0, select(2147483647, 30072, arg_2.d.x), ~(-13751)), abs(~vec3<i32>(0, -28433, -7230))), -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647, -45899, -3271), vec3<i32>(-45585, -3146, -2147483648), vec3<i32>(1, -2147483648, 2147483647)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1, 0, 1), vec3<i32>(4552, -1, 1), vec3<i32>(34972, 2147483647, -63297)))), vec3<i32>(-select(-59201, 43936, !arg_1.b.d.x), reverseBits(firstLeadingBit(~0)), ~26466), !(!(!(!vec3<bool>(arg_2.d.x, true, global3.d.x)))));
                global4 = 0u;
            }
            let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global3.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(174.0, -836.0, -736.0, -176.0), vec4<f32>(1000.0, 182.0, arg_2.a.x, arg_2.b))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1624.0, global3.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x), _wgslsmith_f_op_f32(step(arg_2.b, arg_1.a.a.x)), arg_2.c.x)))), vec2<bool>(abs(~14008u) < (max(52888u, 1u) ^ abs(0u)), global3.d.x), select(arg_1.c, arg_1.b.c, !(func_3().c.x || false)));
            if (all(var_1.c)) {
                global1 = array<vec4<i32>, 25>();
            }
            let var_2 = vec4<bool>(select(arg_1.c.x, any(vec2<bool>(true, !arg_1.e)), !(!(!arg_1.b.c.x))), all(!select(select(var_1.c, arg_1.a.d, var_1.c.x), vec2<bool>(true, true), any(vec3<bool>(true, true, true)))), !func_3().d.x, any(!select(select(vec4<bool>(global3.d.x, arg_2.d.x, arg_2.d.x, false), vec4<bool>(false, false, true, arg_1.a.d.x), true), vec4<bool>(global3.d.x, arg_1.b.c.x, true, true), vec4<bool>(arg_1.b.d.x, false, true, arg_1.c.x))));
        }
        case 45665: {
        }
        default: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-317.0, 875.0), _wgslsmith_f_op_vec2_f32(global3.a.wz + arg_2.a.zz), global3.d))), arg_1.b.a.wx, !(!select(vec2<bool>(false, false), arg_1.c, vec2<bool>(global3.c.x, arg_1.a.d.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1233.0, 425.0))))) * vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1414.0 + -1685.0))), _wgslsmith_f_op_f32(-131.0))));
                break;
            }
            if (global3.c.x) {
                let var_1 = ~var_0;
                let var_2 = _wgslsmith_f_op_f32(arg_1.b.a.x * _wgslsmith_f_op_f32(round(arg_2.b)));
                global4 = abs(var_0.x);
                var var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_f_op_vec4_f32(-global3.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a) - vec4<f32>(arg_1.d.x, 1000.0, global3.b, var_2))))), 279.0, select(vec2<bool>(!(u_input.a.x >= 4294967295u), _wgslsmith_f_op_f32(-477.0 + -1015.0) != _wgslsmith_f_op_f32(max(-141.0, 619.0))), vec2<bool>(all(!vec3<bool>(true, true, arg_2.d.x)), !true), !vec2<bool>(!true, true)), !(!global3.c));
            }
            global2 = array<Struct_1, 28>();
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_1 = arg_2.b;
                global2 = array<Struct_1, 28>();
                continue;
            }
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_1 = func_3();
        for (var var_2 = -18159; var_2 == -2147483648; var_2 += 1) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            global2 = array<Struct_1, 28>();
            return func_3();
        }
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            var var_2 = select(all(select(select(vec4<bool>(arg_1.b.d.x, var_1.d.x, arg_2.c.x, false), select(vec4<bool>(false, arg_1.c.x, var_1.c.x, arg_2.d.x), vec4<bool>(var_1.d.x, arg_2.c.x, var_1.d.x, true), vec4<bool>(arg_2.d.x, false, global3.d.x, false)), func_3().d.x), !select(vec4<bool>(true, true, var_1.c.x, arg_2.d.x), vec4<bool>(global3.c.x, true, var_1.c.x, global3.c.x), true), select(select(vec4<bool>(arg_1.e, arg_1.c.x, arg_1.c.x, var_1.d.x), vec4<bool>(false, false, true, global3.d.x), vec4<bool>(false, var_1.d.x, var_1.d.x, false)), select(vec4<bool>(global3.c.x, global3.d.x, global3.c.x, var_1.d.x), vec4<bool>(arg_1.b.c.x, arg_1.a.d.x, true, global3.d.x), vec4<bool>(true, true, var_1.c.x, arg_1.b.d.x)), select(vec4<bool>(var_1.d.x, true, var_1.d.x, arg_2.c.x), vec4<bool>(arg_1.e, arg_2.d.x, false, true), vec4<bool>(var_1.d.x, arg_1.a.c.x, false, true))))), global3.b != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * 1015.0) * _wgslsmith_div_f32(-821.0, 831.0)) - _wgslsmith_f_op_f32(477.0 + arg_2.a.x)), var_1.d.x);
            var_2 = !true;
            global3 = arg_2;
            var_2 = all(!select(!select(vec3<bool>(false, global3.d.x, global3.d.x), vec3<bool>(arg_2.d.x, var_1.d.x, arg_2.c.x), global3.c.x), select(!vec3<bool>(global3.c.x, false, false), vec3<bool>(true, arg_2.c.x, global3.c.x), select(vec3<bool>(arg_2.c.x, false, true), vec3<bool>(arg_2.c.x, arg_1.b.d.x, true), vec3<bool>(arg_2.c.x, true, var_1.c.x))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, global3.d.x), vec3<bool>(global3.c.x, arg_2.d.x, arg_1.c.x)), any(vec3<bool>(arg_1.b.c.x, global3.d.x, false)))));
        }
        if (all(select(!vec4<bool>(false, true, 15637 < 0, arg_1.d.x < arg_1.a.b), select(vec4<bool>(global3.d.x, var_1.c.x, arg_2.c.x != true, true), !vec4<bool>(arg_1.e, false, arg_2.c.x, var_1.d.x), select(!vec4<bool>(arg_2.d.x, true, global3.d.x, arg_1.a.c.x), vec4<bool>(arg_2.d.x, global3.c.x, arg_2.d.x, arg_2.d.x), false & var_1.c.x)), global3.d.x && (~(-2147483648) < (1 & -1))))) {
            global0 = array<u32, 3>();
            var var_2 = -35469;
        }
        let var_2 = u_input.a.x;
    }
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.a.wxw, arg_2.a.zyy));
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000.0, 1424.0, 1187.0, arg_2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(2156.0, 191.0, arg_2.b, arg_1.b.a.x) - global3.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.a, vec4<f32>(-100.0, arg_2.b, 1989.0, 487.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_2.a.x)))) - -640.0) + global3.a.x), !(!func_3().c), vec2<bool>(any(!(!vec3<bool>(false, arg_2.d.x, false))), false));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec4<u32> {
    for (var var_0: i32; var_0 == 1; var_0 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        global2 = array<Struct_1, 28>();
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            let var_1 = func_7(countOneBits(abs(~1u) | ~select(0u, 100380u, false)), Struct_2(Struct_1(vec4<f32>(1105.0, global3.a.x, global3.a.x, _wgslsmith_f_op_f32(-248.0)), _wgslsmith_f_op_f32(floor(707.0)), !global3.d, global3.c), global2[_wgslsmith_index_u32(~(~1u) >> (51039u % 32u), 28u)], global3.d, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x - global3.a.x) + _wgslsmith_f_op_f32(round(-1000.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1037.0))), 2575.0, 1557.0), all(select(!vec4<bool>(true, false, arg_0, true), vec4<bool>(true, global3.d.x, global3.c.x, true), vec4<bool>(true, global3.c.x, true, global3.d.x)))), func_3());
        }
    }
    for (var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(9638 ^ ~(~(-2147483648)), -12979 << ((func_5().x | ~104263u) % 32u)), countOneBits(firstTrailingBit(-1847 >> (48358u % 32u)) & -22529)); ; var_0 -= 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
    }
    var var_0 = !(!vec4<bool>(!false == any(vec3<bool>(global3.d.x, false, global3.d.x)), max(0, -2147483648) < 8521, !(!arg_1.x), func_7(func_4(-22410, global3.c.x, vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17153u, 3u)], 3u)])).x, Struct_2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 28u)], Struct_1(global3.a, global3.a.x, vec2<bool>(arg_0, true), arg_1), global3.d, global3.a, true), func_7(22845u, Struct_2(Struct_1(vec4<f32>(global3.a.x, 1228.0, -636.0, global3.b), global3.a.x, arg_1, vec2<bool>(false, true)), global2[_wgslsmith_index_u32(52098u, 28u)], global3.c, global3.a, true), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66033u, 3u)], 3u)], 3u)], 28u)])).d.x));
    for (var var_1: i32; global3.d.x; global0 = array<u32, 3>()) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        let var_2 = ~(~_wgslsmith_clamp_u32(~1u, abs(countOneBits(u_input.a.x)), 93441u));
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            return ~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, u_input.a.x, 26153u, var_2), vec4<u32>(1u, 60389u, global0[_wgslsmith_index_u32(4294967295u, 3u)], 0u))) >> (select(vec4<u32>(~_wgslsmith_clamp_u32(var_2, 22547u, u_input.a.x), 1u, 65762u, max(firstTrailingBit(var_2), 7138u & u_input.a.x)), firstLeadingBit(~(~vec4<u32>(var_2, var_2, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 17528u))), !vec4<bool>(false, arg_1.x & arg_1.x, true, !true)) % vec4<u32>(32u));
        }
        let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global3.a)) + _wgslsmith_f_op_vec4_f32(global3.a - vec4<f32>(551.0, -1441.0, global3.b, -1596.0))))), global3.a)), _wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(sign(408.0))), select(!(!vec2<bool>(var_0.x, false)), !vec2<bool>(!arg_1.x, global3.c.x), var_0.xy), global3.c);
    }
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(721.0, -652.0, global3.a.x, 1000.0) * _wgslsmith_div_vec4_f32(global3.a, global3.a)) - global3.a), _wgslsmith_f_op_vec4_f32(global3.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, 1322.0, global3.b, global3.b))), vec4<bool>(!arg_1.x, !arg_0, global3.c.x, _wgslsmith_f_op_f32(global3.a.x - global3.a.x) <= global3.b))));
    return vec4<u32>(global0[_wgslsmith_index_u32(firstTrailingBit(func_6(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, -254.0, var_1.x, -330.0) - vec4<f32>(var_1.x, global3.a.x, global3.a.x, var_1.x))), ~vec3<u32>(20654u, u_input.a.x, 22020u), ~14822u)), 3u)], u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, abs(global0[_wgslsmith_index_u32(~10317u, 3u)])), ~abs(u_input.a)), _wgslsmith_add_u32(u_input.a.x, ~24574u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>) -> u32 {
    switch (arg_0.x) {
        default: {
            for (var var_0 = -2147483648; false; global3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(func_2(false, !select(vec2<bool>(arg_1.x, false), vec2<bool>(true, true), vec2<bool>(arg_1.x, false))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 24738u, global0[_wgslsmith_index_u32(41255u, 3u)], u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u))))), vec4<u32>(u_input.a.x, ~(~u_input.a.x), func_6(vec4<f32>(-456.0, global3.a.x, 150.0, 615.0), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], u_input.a.x), _wgslsmith_add_u32(69237u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 0u) | _wgslsmith_mod_u32(u_input.a.x, 0u)) >> ((~vec4<u32>(0u, u_input.a.x, 21163u, 33371u) << (func_2(arg_0.x == 31263, vec2<bool>(global3.c.x, false)) % vec4<u32>(32u))) % vec4<u32>(32u))), 28u)]) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                global3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(sign(global3.b)), _wgslsmith_f_op_f32(trunc(-2061.0)), _wgslsmith_f_op_f32(-global3.b))) - global3.a), 1000.0, !func_3().d, arg_1.xz);
                break;
            }
            let var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~((4294967295u | global0[_wgslsmith_index_u32(u_input.a.x, 3u)]) | 33678u), u_input.a.x), 4294967295u);
        }
    }
    var var_0 = reverseBits(global0[_wgslsmith_index_u32(113828u, 3u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(898.0, _wgslsmith_f_op_f32(global3.a.x * global3.a.x), 2801.0));
    let var_2 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 3u)], 28u)];
    var var_3 = vec4<f32>(var_1.x, global3.a.x, var_2.a.x, 1000.0);
    return 54927u | global0[_wgslsmith_index_u32(min(u_input.a.x, select(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 3u)], 44459u)), 3u)], u_input.a.x, false)), 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_mult_u32(func_1(-select(_wgslsmith_add_vec2_i32(vec2<i32>(1, 2147483647), vec2<i32>(0, -1)), -vec2<i32>(-2147483648, -33313), !global3.d.x), vec3<bool>(false, !(!false), select(global3.d.x, 1709.0 != -248.0, false))), u_input.a.x);
    var var_0 = !any(!(!select(vec4<bool>(global3.d.x, true, global3.c.x, global3.d.x), vec4<bool>(false, false, false, global3.d.x), vec4<bool>(true, global3.d.x, true, global3.c.x))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-411.0, -830.0), _wgslsmith_f_op_f32(-247.0), -1623.0, _wgslsmith_f_op_f32(exp2(global3.a.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-387.0, global3.b, -1036.0, global3.a.x)))), _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(select(1707.0, 239.0, false))), !global3.c, vec2<bool>(func_7(func_4(-59700, false, u_input.a).x, Struct_2(global2[_wgslsmith_index_u32(90831u, 28u)], Struct_1(vec4<f32>(global3.a.x, -1460.0, global3.b, global3.a.x), 1415.0, global3.d, global3.d), vec2<bool>(true, global3.c.x), global3.a, true), global2[_wgslsmith_index_u32(u_input.a.x & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 3u)], 28u)]).d.x, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], vec4<i32>(8497, -1, -2147483648, 0)) != 1)), Struct_1(vec4<f32>(global3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1577.0 * global3.b), _wgslsmith_f_op_f32(global3.b + 376.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.a.x, -246.0)) - _wgslsmith_f_op_f32(sign(global3.a.x))), _wgslsmith_f_op_f32(step(global3.a.x, _wgslsmith_f_op_f32(step(global3.a.x, global3.a.x))))), _wgslsmith_f_op_f32(714.0 + _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(max(-878.0, 816.0)))), vec2<bool>(false, global3.d.x), !func_3().d), global3.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a * global3.a), _wgslsmith_f_op_vec4_f32(-global3.a))) + _wgslsmith_f_op_vec4_f32(-global3.a)), !(!global3.d.x));
    for (var var_2 = 2147483647; !(!false); var_2 -= 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        for (var var_3 = 2147483647; var_3 == 0; global4 = u_input.a.x) {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        }
        var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112.0) - _wgslsmith_f_op_f32(-var_1.b.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-824.0), 680.0));
    }
    var var_2 = global3.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_div_f32(var_1.b.a.x, func_7(1u, var_1, Struct_1(global3.a, 1730.0, global3.d, vec2<bool>(var_1.b.d.x, var_1.e))).b)));
    var var_3 = vec4<bool>(all(vec3<bool>(select(4294967295u >= 0u, any(vec3<bool>(global3.c.x, false, var_1.b.d.x)), any(vec2<bool>(true, var_1.a.d.x))), global3.d.x, _wgslsmith_f_op_f32(-1986.0 * var_1.b.a.x) != var_1.d.x)), select(u_input.a.x, func_2(var_1.c.x, var_1.a.c).x ^ (33825u | 1u), countOneBits(-2147483648) != -1) != ~(~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20787u, 3u)], 3u)], 3u)])), !var_1.b.d.x, !false);
    let var_4 = var_1.a.a.xzy;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(((i32(-1) * -2147483648) >> (0u % 32u)) >> (~u_input.a.x % 32u), 0, _wgslsmith_dot_vec3_i32(firstLeadingBit(max(vec3<i32>(-2147483648, 35568, 43720), vec3<i32>(63506, 2147483647, 0))), (vec3<i32>(1, 2147483647, 1) ^ vec3<i32>(-2147483648, 2147483647, 1)) << ((vec3<u32>(4294967295u, 4294967295u, u_input.a.x) ^ vec3<u32>(52670u, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 1u)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-393.0), var_1.d.x, func_7(u_input.a.x >> (0u % 32u), Struct_2(var_1.b, Struct_1(var_1.b.a, 1119.0, var_1.b.d, vec2<bool>(true, true)), vec2<bool>(var_3.x, true), vec4<f32>(var_4.x, global3.a.x, 439.0, var_4.x), false), func_7(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], var_1, Struct_1(global3.a, var_4.x, vec2<bool>(global3.d.x, global3.c.x), var_1.c))).a.x)), 45050u, -420.0);
}

