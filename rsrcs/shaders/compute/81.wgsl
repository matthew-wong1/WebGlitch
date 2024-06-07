// {"0:0":[31,74,78,236,182,116,228,149,215,107,186,232,2,110,114,76,7,147,117,12,199,38,230,226,177,65,246,218,51,130,40,10]}
// Seed: 7019365662522340471

struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-192.0, 1627.0, 194.0);

var<private> global1: array<i32, 29> = array<i32, 29>(2147483647, -36707, -1, -40575, 1, -1, -7890, 9855, 1, 1, 1, -38775, 0, -4619, 2147483647, -15862, 4912, 2147483647, 65603, 0, -2147483648, 19231, 26451, -1, -20583, 1, 1, 0, -9833);

var<private> global2: vec3<bool>;

var<private> LOOP_COUNTERS: array<u32, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn func_6() -> f32 {
    global1 = array<i32, 29>();
    var var_0 = vec4<i32>(-(~(-25599)) >> (u_input.b.x % 32u), _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-700, 19019, u_input.a), u_input.a), abs(u_input.a), global1[_wgslsmith_index_u32(~(u_input.b.x >> ((59736u | 64591u) % 32u)), 29u)]) >> (min(vec4<u32>(1u, ~u_input.b.x, firstTrailingBit(24990u), 0u), vec4<u32>(_wgslsmith_div_u32(u_input.b.x >> (66634u % 32u), 34282u), u_input.b.x, u_input.b.x, _wgslsmith_div_u32(firstLeadingBit(u_input.b.x), u_input.b.x))) % vec4<u32>(32u));
    var var_1 = -_wgslsmith_mod_i32(_wgslsmith_div_i32(~select(-60749, var_0.x, false), global1[_wgslsmith_index_u32(max(u_input.b.x, _wgslsmith_add_u32(1u, 308u)), 29u)]), global1[_wgslsmith_index_u32(~7257u, 29u)] | _wgslsmith_div_i32(var_0.x, firstLeadingBit(u_input.a)));
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -681.0, global0.x))))))));
    var var_2 = Struct_2(global2.x, Struct_1(var_0.x ^ 0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1753.0, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2598.0, 910.0, global0.x, 530.0) * vec4<f32>(-563.0, global0.x, 340.0, -353.0)), select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(true, global2.x, true, global2.x), true)))), -20612, global2.x, select(select(vec4<bool>(false, true, true, global2.x), select(vec4<bool>(false, false, false, false), vec4<bool>(global2.x, global2.x, global2.x, false), true), vec4<bool>(false, global2.x, true, global2.x)), !select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, false, global2.x, global2.x), global2.x), select(vec4<bool>(global2.x, true, true, false), !vec4<bool>(true, global2.x, true, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, global2.x)))), global0.xx);
    return _wgslsmith_f_op_f32(267.0 + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(arg_3.a, vec4<f32>(_wgslsmith_f_op_f32(func_6()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -161.0))) + _wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(-840.0 - 400.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-588.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.c.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(arg_0.c.x + 306.0)))), 43412 ^ global1[_wgslsmith_index_u32(select(~abs(u_input.b.x), u_input.b.x, select(false, any(arg_3.e.zzx), any(vec2<bool>(arg_2.x, true)))), 29u)], all(vec2<bool>((false != true) | false, false)), !select(vec4<bool>(false, any(vec2<bool>(true, false)), true, 24510u <= u_input.b.x), select(select(vec4<bool>(false, false, global2.x, arg_3.e.x), vec4<bool>(global2.x, true, true, true), arg_3.d), vec4<bool>(global2.x, arg_3.d, false, arg_1.b.e.x), select(vec4<bool>(false, true, global2.x, true), vec4<bool>(false, true, arg_1.a, arg_0.b.d), arg_1.b.e)), arg_0.b.e));
    switch (_wgslsmith_mod_i32(-51919, ~(i32(-1) * -23001))) {
        case 4344: {
            let var_1 = Struct_2(abs(~(~u_input.b.x)) < firstTrailingBit(u_input.b.x), Struct_1(_wgslsmith_mod_i32(-15899, abs(arg_3.a)), arg_0.b.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 29u)], -34728, -1, -2147483648), countOneBits(vec4<i32>(u_input.a, 1, u_input.a, 50222))), !(!global2.x), vec4<bool>(!(!true), all(vec2<bool>(arg_1.a, true)), any(select(var_0.e, vec4<bool>(false, false, arg_3.e.x, var_0.e.x), false)), var_0.e.x)), vec2<f32>(-1000.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - arg_0.b.b.x)))));
            global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.yzz) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(var_1.b.b.yyw, arg_3.b.xwz))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-578.0), _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_div_f32(var_1.c.x, 1000.0))), arg_1.c.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(963.0, var_0.b.x, arg_3.b.x)))));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            }
            let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.x, 1379.0, 1152.0, arg_1.b.b.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(var_0.b, arg_1.b.b)))), _wgslsmith_f_op_vec4_f32(-arg_1.b.b))))));
            global0 = vec3<f32>(var_1.x, arg_0.b.b.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1373.0)), _wgslsmith_f_op_f32(2429.0 - arg_3.b.x))))));
            let var_2 = Struct_2(all(vec2<bool>(true, any(arg_0.b.e.wxz))), arg_3, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), global0.x) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.x))), arg_1.b.b.x)));
        }
    }
    if (_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(153.0)), _wgslsmith_f_op_f32(max(arg_3.b.x, var_0.b.x)))))) < _wgslsmith_f_op_f32(2226.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.b.x)))))) {
    }
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_6()), arg_0.c.x), _wgslsmith_f_op_vec2_f32(-arg_1.c));
    for (var var_2 = 0; var_2 > -40546; var_2 += 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        if (true) {
            global2 = !vec3<bool>(arg_3.d, all(arg_3.e.zw), (_wgslsmith_f_op_f32(-1340.0 * 1209.0) != _wgslsmith_f_op_f32(573.0 * arg_0.c.x)) != (global0.x < _wgslsmith_f_op_f32(-arg_3.b.x)));
            continue;
        }
    }
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<f32> {
    if (any(vec3<bool>(all(vec3<bool>(arg_1.a | global2.x, !arg_1.b.e.x, true)), !false, !((true || arg_0.e.x) || func_5(Struct_2(false, arg_0, vec2<f32>(1000.0, 1000.0)), Struct_2(global2.x, arg_0, global0.zx), arg_0.e.zy, Struct_1(u_input.a, vec4<f32>(-1417.0, -594.0, arg_0.b.x, -120.0), 13629, true, vec4<bool>(global2.x, true, arg_0.e.x, arg_1.a))))))) {
    }
    switch (20874 & _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647, arg_1.b.c, u_input.a, -12593), _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483648, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], -9995, 6784), -vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], u_input.a, -34116, 2147483647))), ~arg_1.b.c)) {
        case 39199: {
            global1 = array<i32, 29>();
            var var_0 = Struct_2(func_5(Struct_2(_wgslsmith_f_op_f32(-660.0) < _wgslsmith_f_op_f32(1607.0 + -1333.0), Struct_1(_wgslsmith_add_i32(59258, 17881), vec4<f32>(-1574.0, global0.x, 914.0, -542.0), _wgslsmith_div_i32(0, arg_0.c), all(vec2<bool>(arg_1.b.d, arg_1.b.d)), arg_1.b.e), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1000.0)), arg_0.b.wz, global2.xy))), arg_1, !select(vec2<bool>(global2.x, false), global2.xx, !global2.x), Struct_1(arg_1.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(315.0, global0.x, arg_0.b.x, arg_0.b.x) - vec4<f32>(-1268.0, 923.0, global0.x, arg_0.b.x))), ~arg_1.b.c << (0u % 32u), true, !select(vec4<bool>(false, arg_1.a, arg_0.e.x, true), arg_1.b.e, arg_0.d))), arg_1.b, _wgslsmith_f_op_vec2_f32(global0.xz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(795.0, global0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.b.b.x, arg_0.b.x))) + global0.xy))));
        }
        case -15515: {
        }
        case -73579: {
            if (all(!vec2<bool>(all(arg_1.b.e.xxw), true))) {
                global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_0.b.x, global0.x)), vec3<f32>(arg_1.b.b.x, 936.0, global0.x)), _wgslsmith_f_op_vec3_f32(-arg_0.b.wwy), arg_0.e.yww)) + arg_0.b.yxx));
                let var_0 = Struct_2(any(!select(!global2.yz, vec2<bool>(arg_1.a, arg_1.b.d), !arg_1.a)), Struct_1(arg_1.b.a, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1126.0, -1020.0)), arg_1.c.x)), _wgslsmith_f_op_f32(abs(1613.0)), _wgslsmith_f_op_f32(func_6()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(314.0, 1078.0)))), ~u_input.a, u_input.b.x == _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(u_input.b.x, 17629u)), !vec4<bool>(all(vec3<bool>(arg_0.d, global2.x, false)), all(vec3<bool>(arg_0.e.x, arg_1.a, arg_1.a)), all(vec2<bool>(true, global2.x)), arg_0.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_1.c, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(324.0, global0.x))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.b.yw + vec2<f32>(-242.0, 2093.0)) - vec2<f32>(1119.0, 1603.0)), select(select(vec2<bool>(false, false), vec2<bool>(arg_1.a, arg_0.d), vec2<bool>(arg_1.b.d, global2.x)), global2.zz, vec2<bool>(arg_0.e.x, true))))));
            }
            var var_0 = 20086u;
            switch (u_input.a) {
                default: {
                    var_0 = 1u;
                    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.b.yxw), vec3<f32>(arg_1.c.x, 291.0, global0.x), func_5(arg_1, Struct_2(true, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], arg_0.b, arg_1.b.a, global2.x, arg_0.e), vec2<f32>(global0.x, arg_1.b.b.x)), arg_1.b.e.wz, Struct_1(-24890, arg_1.b.b, 0, true, arg_0.e))))), arg_0.b.yyz))));
                }
            }
        }
        default: {
        }
    }
    global2 = select(!(!(!vec3<bool>(true, true, global2.x))), !vec3<bool>(global2.x, any(select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, arg_0.d), false)), global2.x), arg_1.a && select(any(!arg_1.b.e), global2.x | all(arg_0.e.zwz), ~u_input.b.x <= 33093u));
    for (var var_0 = ~(i32(-1) * -countOneBits(u_input.a)); true; var_0 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        let var_1 = any(select(!select(select(global2.yy, global2.xz, true), !vec2<bool>(false, false), global2.xz), global2.xx, arg_1.b.e.yw));
    }
    global1 = array<i32, 29>();
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(452.0, _wgslsmith_f_op_f32(-arg_1.b.b.x), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_6()), _wgslsmith_f_op_f32(1581.0 - global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.x)) - -816.0)), -963.0)));
}

fn func_3(arg_0: u32, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(1, vec4<f32>(765.0, -906.0, global0.x, 1000.0), -50734, false, vec4<bool>(global2.x, global2.x, true, true)), Struct_2(false, Struct_1(8448, vec4<f32>(1058.0, 1416.0, 522.0, 1202.0), u_input.a, global2.x, vec4<bool>(false, true, true, global2.x)), vec2<f32>(206.0, -728.0)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2856.0, 177.0, 811.0), vec3<f32>(global0.x, global0.x, global0.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_6()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-515.0 * global0.x), _wgslsmith_f_op_f32(-global0.x))), -522.0)));
    global1 = array<i32, 29>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1778.0, global0.x, -238.0))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(1291.0, 1130.0, global0.x), global2.x))) - vec3<f32>(global0.x, 533.0, -1000.0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(321.0, global0.x, 115.0)), _wgslsmith_div_vec3_f32(vec3<f32>(-942.0, global0.x, -295.0), vec3<f32>(global0.x, 1000.0, global0.x))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1021.0, global0.x, global0.x) - vec3<f32>(2029.0, global0.x, 1202.0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -427.0) - vec3<f32>(-1000.0, 710.0, global0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-115.0, -550.0, -711.0))) + vec3<f32>(global0.x, -1370.0, -120.0)))));
    let var_0 = 35322u >> (((arg_0 >> (0u % 32u)) & max(u_input.b.x, 1u)) % 32u);
    if (select(false, true, select(!(!false), false, !(!global2.x))) & !true) {
        let var_1 = Struct_1(-1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + -1305.0), global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(544.0 - 1224.0)))), arg_1, global2.x, select(!(!(!vec4<bool>(true, true, true, global2.x))), !vec4<bool>(u_input.b.x == 47570u, all(global2.yy), !global2.x, true), any(!vec2<bool>(true, global2.x))));
    }
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(select(-2147483648, -40479, false) << (~var_0 % 32u), 0), abs(1)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 553.0, -962.0, -1680.0), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(675.0, 883.0, global0.x, -884.0))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1388.0, 819.0, 193.0, -175.0) - vec4<f32>(1347.0, -706.0, -368.0, -1063.0))))))), _wgslsmith_dot_vec2_i32(vec2<i32>(31257, 0 & 0), ~select(vec2<i32>(global1[_wgslsmith_index_u32(17661u, 29u)], u_input.a), vec2<i32>(-80449, -1), global2.xx)) ^ ~(-1), !false, select(!vec4<bool>(global2.x, func_5(Struct_2(false, Struct_1(u_input.a, vec4<f32>(global0.x, -827.0, global0.x, 815.0), -2147483648, global2.x, vec4<bool>(global2.x, global2.x, global2.x, true)), vec2<f32>(-1197.0, -1552.0)), Struct_2(false, Struct_1(arg_1, vec4<f32>(global0.x, 137.0, -1102.0, global0.x), arg_1, global2.x, vec4<bool>(true, false, global2.x, global2.x)), global0.xx), vec2<bool>(global2.x, global2.x), Struct_1(arg_1, vec4<f32>(601.0, global0.x, global0.x, 2025.0), -1, global2.x, vec4<bool>(true, global2.x, false, true))), global2.x, !global2.x), select(vec4<bool>(!global2.x, true, !true, all(vec2<bool>(true, true))), !(!vec4<bool>(global2.x, false, global2.x, false)), global2.x), true));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = vec3<u32>(arg_0.x, max(1u, ~1u) >> (min(max(0u, _wgslsmith_div_u32(u_input.b.x, 1u)), 22267u) % 32u), min(u_input.b.x, _wgslsmith_mod_u32(~arg_3.x, min(_wgslsmith_add_u32(1u, 4294967295u), 87137u))));
    let var_1 = func_3(firstLeadingBit(var_0.x), global1[_wgslsmith_index_u32(1u, 29u)]);
    switch (-countOneBits(arg_1.x)) {
        default: {
        }
    }
    if (false | global2.x) {
        var var_2 = -806.0;
        for (var var_3 = -2147483648; func_5(Struct_2(true, var_1, vec2<f32>(var_1.b.x, global0.x)), Struct_2(var_1.d, var_1, var_1.b.wx), vec2<bool>(func_5(Struct_2(true, func_3(55554u, 2147483647), vec2<f32>(arg_2, arg_2)), Struct_2(-58527 < arg_1.x, Struct_1(51156, vec4<f32>(global0.x, var_1.b.x, var_1.b.x, 1000.0), 1, global2.x, vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-245.0, var_1.b.x))), select(select(vec2<bool>(true, false), var_1.e.zy, var_1.e.ww), vec2<bool>(true, var_1.d), var_1.e.yy), func_3(~0u, -2147483648)), true), Struct_1(i32(-1) * -firstLeadingBit(1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(global0.x, -1532.0, global0.x, -708.0)) - var_1.b), _wgslsmith_add_i32(arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-5782, u_input.a, arg_1.x, -5901) << (vec4<u32>(u_input.b.x, 33339u, 0u, 32982u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 29u)], var_1.c, 0, 8377), vec4<i32>(arg_1.x, -24467, u_input.a, 0)))), true & select(!var_1.e.x, 60025u <= u_input.b.x, global0.x <= -155.0), !var_1.e)); var_3 -= 1) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            let var_4 = 0;
            continue;
        }
        switch (var_1.a) {
            case -30425: {
                var var_3 = Struct_2(!(!global2.x), Struct_1(2147483647 << (u_input.b.x % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-646.0, var_1.b.x, -1000.0, arg_2)) + _wgslsmith_f_op_vec4_f32(-var_1.b))), global1[_wgslsmith_index_u32(arg_0.x, 29u)], var_1.d, select(select(func_3(var_0.x, -1).e, select(var_1.e, var_1.e, true), var_1.e), vec4<bool>(!var_1.d, !var_1.d, func_5(Struct_2(global2.x, var_1, vec2<f32>(var_1.b.x, var_1.b.x)), Struct_2(var_1.e.x, var_1, global0.xz), vec2<bool>(false, var_1.e.x), Struct_1(global1[_wgslsmith_index_u32(arg_3.x, 29u)], vec4<f32>(var_1.b.x, -521.0, 979.0, global0.x), var_1.c, global2.x, var_1.e)), true), (1710.0 <= -1296.0) || var_1.d)), vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x));
                var_2 = arg_2;
            }
            case 11114: {
                var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * -2199.0)))), var_1.d || global2.x)));
                let var_4 = var_1.e.zy;
            }
            case 49713: {
                var var_3 = vec2<i32>(_wgslsmith_sub_i32(countOneBits(-var_1.a), _wgslsmith_add_i32(arg_1.x, ~var_1.a)), global1[_wgslsmith_index_u32(u_input.b.x, 29u)]) >> (vec2<u32>(u_input.b.x, var_0.x) % vec2<u32>(32u));
                var var_4 = var_1.e.x;
                let var_5 = Struct_1(countOneBits(_wgslsmith_mult_i32(i32(-1) * 0, 2147483647)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1045.0, -512.0, arg_2))))), -36753, !false, var_1.e);
            }
            case -2147483648: {
                global1 = array<i32, 29>();
                var var_3 = max(-_wgslsmith_mult_i32(min(var_1.c, arg_1.x), 2147483647 >> (33134u % 32u)) << ((37607u >> (26124u % 32u)) % 32u), firstLeadingBit(firstTrailingBit(max(71550, _wgslsmith_mult_i32(39814, arg_1.x)))));
                var var_4 = Struct_1(u_input.a, var_1.b, ~(-8970), any(vec3<bool>((arg_2 < -1521.0) & global2.x, !global2.x, select(global2.x, var_1.d, false) & !false)), var_1.e);
            }
            default: {
                var_2 = 1079.0;
                var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2)));
                var var_3 = Struct_2(_wgslsmith_mod_u32(arg_0.x, _wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(arg_3.x, arg_3.x))) > reverseBits(_wgslsmith_div_u32(62321u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_0.x, 1u, u_input.b.x, 64233u)))), Struct_1(global1[_wgslsmith_index_u32(min(~0u, 14708u), 29u)], _wgslsmith_f_op_vec4_f32(-var_1.b), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(58537u, arg_0.x, 37497u, 49043u), reverseBits(arg_0)) > var_0.x, vec4<bool>(global2.x, ~arg_3.x >= 8900u, !var_1.e.x, var_1.e.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.xz) + _wgslsmith_f_op_vec2_f32(-func_3(~arg_0.x, u_input.a).b.xy)));
                var var_4 = func_3(~_wgslsmith_div_u32(~78830u, var_0.x & ~var_0.x), _wgslsmith_add_i32(-global1[_wgslsmith_index_u32(~arg_0.x, 29u)], _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(1 & -42846, -6731))));
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    return Struct_2(any(!(!func_3(u_input.b.x, -1).e.xzw)), var_1, vec2<f32>(global0.x, _wgslsmith_f_op_f32(-arg_2)));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(~u_input.b.x << (~arg_1.x % 32u), u_input.b.x);
    var var_1 = Struct_2(select(true && arg_2.e.x, select(arg_2.e.x, true, all(vec3<bool>(arg_0.b.d, false, arg_2.d)) & any(arg_2.e)), arg_2.e.x), Struct_1(_wgslsmith_add_i32(52827, func_2(vec4<u32>(38707u, arg_1.x, u_input.b.x, 7236u), ~vec2<i32>(arg_3, u_input.a), _wgslsmith_f_op_f32(global0.x * 1000.0), u_input.b.yw).b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.b))), 6748, any(func_2(u_input.b, vec2<i32>(2147483647, 6982), _wgslsmith_f_op_f32(floor(arg_0.b.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 7213u), vec2<u32>(u_input.b.x, arg_1.x))).b.e.wwz), arg_0.b.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_2.b.x)), vec2<f32>(1175.0, _wgslsmith_f_op_f32(-arg_0.c.x)))));
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_2 = -1000.0;
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(294.0, _wgslsmith_f_op_f32(global0.x + 1126.0), arg_2.b.x));
            var var_4 = false;
            var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + -2023.0) * arg_2.b.x) * _wgslsmith_f_op_f32(801.0 * -1000.0)), global0.x));
            var var_6 = arg_2.d;
        }
        var var_3 = vec2<f32>(-1352.0, _wgslsmith_f_op_f32(1324.0 * global0.x));
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            let var_4 = true;
            continue;
        }
    }
    var var_2 = Struct_1(_wgslsmith_mod_i32(min(i32(-1) * -1, -2147483648) >> (u_input.b.x % 32u), -25422), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(409.0))), 316.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.b.x), 1544.0) * -607.0)), -31941, var_0 >= (~(~arg_1.x) | 4294967295u), vec4<bool>(!any(!vec4<bool>(true, arg_0.a, arg_0.b.d, false)), false, !false, true | (!false & all(vec3<bool>(false, arg_2.d, var_1.a)))));
    var var_3 = select(max(-(vec4<i32>(18270, arg_3, -2147483648, arg_2.c) & max(vec4<i32>(var_1.b.a, -29791, u_input.a, arg_3), vec4<i32>(-4495, arg_3, arg_0.b.c, var_2.c))), vec4<i32>(-arg_2.a, _wgslsmith_mult_i32(abs(-2147483648), ~(-2147483648)), 59034, var_1.b.c)), ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_1.x, 29u)], 5901, 0, arg_3), ~vec4<i32>(var_2.a, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], arg_2.c, var_2.a)), ~select(vec4<i32>(arg_2.a, arg_3, arg_2.c, -2147483648), vec4<i32>(var_2.a, arg_3, -23951, 20111), arg_0.b.e.x)), _wgslsmith_div_f32(var_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -223.0))) - global0.x));
    return arg_2;
}

fn func_1() -> vec3<f32> {
    let var_0 = -global1[_wgslsmith_index_u32(9215u, 29u)];
    let var_1 = func_7(func_2(select(~u_input.b, ~vec4<u32>(u_input.b.x, u_input.b.x, 38809u, u_input.b.x), !true) >> (vec4<u32>(abs(u_input.b.x), u_input.b.x & 1u, 15660u | u_input.b.x, ~u_input.b.x) % vec4<u32>(32u)), ~abs(-vec2<i32>(-2201, 7453)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1055.0))), u_input.b.wz), firstLeadingBit(vec2<u32>(u_input.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(0u, 1u, u_input.b.x, 1u)) % 32u), 0u)), func_2(~(~firstTrailingBit(u_input.b)), abs(vec2<i32>(global1[_wgslsmith_index_u32(~u_input.b.x, 29u)], -27300 ^ global1[_wgslsmith_index_u32(40766u, 29u)])), _wgslsmith_f_op_f32(f32(-1.0) * -1289.0), abs(_wgslsmith_div_vec2_u32(u_input.b.wz << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(66563u, u_input.b.x) | vec2<u32>(37315u, u_input.b.x)))).b, -379);
    if (true) {
        var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, 3848u, u_input.b.x, u_input.b.x), u_input.b);
        switch ((func_2(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 68515u), _wgslsmith_mult_u32(var_2.x, 0u), var_2.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), _wgslsmith_add_vec2_i32(~vec2<i32>(var_1.a, global1[_wgslsmith_index_u32(33612u, 29u)]), -vec2<i32>(1216, global1[_wgslsmith_index_u32(u_input.b.x, 29u)])), 781.0, firstTrailingBit(u_input.b.zy | var_2.ww)).b.a & -6449) | (~(-countOneBits(global1[_wgslsmith_index_u32(u_input.b.x, 29u)])) & -u_input.a)) {
            case 32586: {
                let var_3 = !false;
                global0 = _wgslsmith_f_op_vec3_f32(-var_1.b.yxw);
                var var_4 = u_input.b.yxz;
                var var_5 = vec2<bool>(!(!global2.x), !var_3 & global2.x);
            }
            case -2147483648: {
                var var_3 = func_7(Struct_2(var_1.e.x, var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_7(Struct_2(true, var_1, vec2<f32>(var_1.b.x, var_1.b.x)), u_input.b.wx, Struct_1(var_0, vec4<f32>(-1482.0, global0.x, global0.x, var_1.b.x), global1[_wgslsmith_index_u32(67299u, 29u)], true, var_1.e), var_1.c).b.wy - func_7(Struct_2(true, Struct_1(2147483647, var_1.b, var_1.a, false, vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, false)), global0.xz), u_input.b.yx, Struct_1(18725, vec4<f32>(-210.0, global0.x, -530.0, global0.x), var_1.c, global2.x, var_1.e), -2147483648).b.ww) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yy + vec2<f32>(970.0, global0.x)) - _wgslsmith_f_op_vec2_f32(-var_1.b.ww)))), (abs(u_input.b.yx ^ vec2<u32>(15546u, u_input.b.x)) | abs(var_2.xx)) & ~(~_wgslsmith_add_vec2_u32(var_2.xw, vec2<u32>(var_2.x, 89025u))), func_2(u_input.b, countOneBits(firstTrailingBit(-vec2<i32>(20136, var_0))), 1460.0, select(countOneBits(u_input.b.wy | u_input.b.ww), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.wx, vec2<u32>(u_input.b.x, 6608u)), ~var_2.zz, !var_1.e.zw), !vec2<bool>(true, false))).b, u_input.a).c;
                let var_4 = -1000.0;
                var var_5 = Struct_2(var_1.e.x, func_7(Struct_2(func_3(82916u, -15312).d, var_1, _wgslsmith_f_op_vec2_f32(-global0.xx)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 1374u), abs(vec2<u32>(53329u, 1u))), func_2(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(var_2.x, 74696u, var_2.x, var_2.x)) << (~u_input.b % vec4<u32>(32u)), abs(vec2<i32>(var_0, 0)) << ((vec2<u32>(u_input.b.x, 1u) >> (u_input.b.yx % vec2<u32>(32u))) % vec2<u32>(32u)), var_4, firstTrailingBit(vec2<u32>(12075u, var_2.x))).b, -1), global0.yy);
                global2 = vec3<bool>(global2.x && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) != var_4), var_5.b.e.x, !(u_input.b.x == (~26953u ^ ~var_2.x)));
                var var_6 = Struct_1(func_2(abs(vec4<u32>(4294967295u, 2054u, u_input.b.x, ~u_input.b.x)), vec2<i32>(7724, var_5.b.c >> (~u_input.b.x % 32u)), -425.0, vec2<u32>(abs(firstLeadingBit(129147u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_2.zzw, vec3<u32>(var_2.x, u_input.b.x, 82308u)), 4294967295u))).b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_5.b.b.x, global0.x, 837.0)))), var_1.a, !(~abs(var_2.x) < 0u), var_1.e);
            }
            case -40342: {
                global2 = !select(vec3<bool>(false, true, _wgslsmith_f_op_f32(f32(-1.0) * -234.0) > _wgslsmith_f_op_f32(-1280.0)), func_2(u_input.b, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647, var_1.a), vec2<i32>(global1[_wgslsmith_index_u32(var_2.x, 29u)], global1[_wgslsmith_index_u32(var_2.x, 29u)]) >> (vec2<u32>(1u, var_2.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), ~(~vec2<u32>(44282u, u_input.b.x))).b.e.xwz, !vec3<bool>(true, true, global2.x));
                let var_3 = var_1.e.xx;
            }
            case -1: {
                let var_3 = func_2(~u_input.b ^ u_input.b, firstTrailingBit(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_2.x, 29u)], -1), ~vec2<i32>(-8372, global1[_wgslsmith_index_u32(u_input.b.x, 29u)])))), 446.0, ~(vec2<u32>(16494u, ~6468u) | ~u_input.b.xz));
                global1 = array<i32, 29>();
                let var_4 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, 14424u, 0u & 1u) & ~1u, abs(countOneBits(_wgslsmith_mult_u32(u_input.b.x, 4294967295u))), 0u, ~abs(firstLeadingBit(var_2.x))), max(u_input.b, u_input.b));
                var_2 = select(u_input.b, ~(~min(var_4, vec4<u32>(u_input.b.x, var_2.x, 0u, 0u))), func_5(var_3, var_3, func_2(var_4, vec2<i32>(-54190, u_input.a), global0.x, vec2<u32>(9735u, var_4.x)).b.e.zz, var_1)) & ~(~vec4<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), _wgslsmith_mod_u32(0u, 29597u), select(33228u, var_2.x, false), 32234u));
                let var_5 = var_1.c & (0 ^ global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(var_2.x), max(reverseBits(var_2.x), 8235u >> (var_2.x % 32u)), _wgslsmith_sub_u32(var_2.x, 17637u)), 29u)]);
            }
            default: {
                var_2 = vec4<u32>(_wgslsmith_div_u32(var_2.x, _wgslsmith_sub_u32(~(1u | var_2.x), var_2.x)), countOneBits(u_input.b.x), ~(~1u), var_2.x);
                return vec3<f32>(-1893.0, _wgslsmith_f_op_f32(global0.x - global0.x), var_1.b.x);
            }
        }
        switch (2147483647) {
            case 2147483647: {
            }
            default: {
                let var_3 = func_7(func_2(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_2.x, u_input.b.x, u_input.b.x), u_input.b) >> (~u_input.b % vec4<u32>(32u))), firstLeadingBit(abs(vec2<i32>(var_0, var_1.a))) & vec2<i32>(2147483647, ~var_0), global0.x, vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(u_input.b.xxx, u_input.b.wxz)) >> (vec2<u32>(abs(u_input.b.x), ~4294967295u) % vec2<u32>(32u))), var_2.zy ^ u_input.b.wz, var_1, 25450);
                global0 = _wgslsmith_f_op_vec3_f32(-var_1.b.yzz);
            }
        }
        global2 = select(var_1.e.yzx, func_2(u_input.b, vec2<i32>(u_input.a >> (abs(u_input.b.x) % 32u), u_input.a), var_1.b.x, ~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(44647u, 4294967295u)), ~u_input.b.zw)).b.e.xwx, var_1.e.zzy);
        global2 = var_1.e.yxw;
    }
    let var_2 = func_7(func_2(countOneBits(_wgslsmith_mult_vec4_u32(~u_input.b, ~vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x))), -((vec2<i32>(var_0, u_input.a) << (u_input.b.wy % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.zw) % vec2<u32>(32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), vec2<u32>(54202u, 57635u)), u_input.b.wx, Struct_1(-324, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(144.0 + 1191.0), _wgslsmith_f_op_f32(-1067.0), 1074.0, _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 373.0, -1000.0, -1250.0)))), _wgslsmith_sub_i32(~(-1), 42426), var_1.d, !func_7(Struct_2(true, Struct_1(0, vec4<f32>(global0.x, var_1.b.x, 634.0, -214.0), var_1.c, var_1.e.x, var_1.e), var_1.b.yy), select(u_input.b.xx, u_input.b.xz, false), var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0, var_1.a), vec3<i32>(var_1.c, global1[_wgslsmith_index_u32(22080u, 29u)], 2147483647))).e), _wgslsmith_div_i32(-firstTrailingBit(var_0), var_1.c));
    switch (-20610) {
        case 61836: {
            var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-256.0), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-604.0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.wx)), func_2(vec4<u32>(1u >> (reverseBits(0u) % 32u), u_input.b.x, _wgslsmith_mult_u32(4294967295u, abs(u_input.b.x)), _wgslsmith_div_u32(countOneBits(21974u), u_input.b.x)), ~vec2<i32>(-82036, -1) & select(_wgslsmith_div_vec2_i32(vec2<i32>(0, 0), vec2<i32>(var_2.c, 2147483647)), select(vec2<i32>(-1, var_2.a), vec2<i32>(-10366, global1[_wgslsmith_index_u32(u_input.b.x, 29u)]), var_1.e.zx), vec2<bool>(true, var_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1.0) * -726.0))), vec2<u32>(u_input.b.x, reverseBits(u_input.b.x))).b.d));
        }
        case 2372: {
            var var_3 = -vec4<i32>(-41329, ~abs(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(40148u, 29u)], var_0)), -32601, firstTrailingBit(countOneBits(abs(var_0))));
        }
        case -1: {
            switch (var_2.c) {
                case -1: {
                    let var_3 = u_input.b.xyw;
                }
                case 13775: {
                    var var_3 = Struct_2(!(!false) && !var_2.e.x, func_2(_wgslsmith_div_vec4_u32(select(u_input.b, ~u_input.b, var_2.d & global2.x), ~(~vec4<u32>(u_input.b.x, u_input.b.x, 47435u, u_input.b.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(~80771u, 29u)], i32(-1) * -50449), _wgslsmith_add_vec2_i32(abs(vec2<i32>(-1, u_input.a)), vec2<i32>(2147483647, var_0))), -1102.0, _wgslsmith_mod_vec2_u32(vec2<u32>(90591u << (1u % 32u), 1214u), u_input.b.wy)).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(347.0, -153.0) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -475.0))) * vec2<f32>(var_2.b.x, -255.0)));
                }
                default: {
                    global0 = _wgslsmith_f_op_vec3_f32(step(var_2.b.xyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.b.xyx))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, global0.x, -768.0)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_1.b.zzy, var_2.b.zyy), var_2.b.wzy))))));
                }
            }
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                global0 = var_2.b.yzw;
            }
            var var_3 = func_2(vec4<u32>(abs(select(1u, 13724u, global2.x)), u_input.b.x, u_input.b.x, u_input.b.x) | min(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, 4294967295u), u_input.b) & firstTrailingBit(vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x))), -reverseBits(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], var_0), vec2<i32>(-23288, var_0), vec2<i32>(0, -1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-1000.0 - 1073.0))) * global0.x), u_input.b.xz);
        }
        default: {
            for (var var_3 = -2147483648; ; ) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
        }
    }
    return func_2(min(u_input.b, vec4<u32>(0u | 64820u, ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x ^ u_input.b.x) ^ firstLeadingBit(select(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), true))), abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483648, var_1.a), vec2<i32>(2147483647, -1229)), select(vec2<i32>(-1, var_0), vec2<i32>(-19059, -1), true), -vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], 1))) ^ -reverseBits(vec2<i32>(u_input.a, 1)), var_2.b.x, u_input.b.zz).b.b.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(52654u, select(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(4294967295u, 3642u, firstTrailingBit(u_input.b.x), 1u | 10369u)), ~(~(~u_input.b.x)), global2.x & any(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, false, global2.x), true))), 1u);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())));
    if (global2.x) {
        let var_1 = func_7(func_2(vec4<u32>(4294967295u, 17671u ^ u_input.b.x, ~(~0u), ~countOneBits(u_input.b.x)), ~reverseBits(vec2<i32>(35617, -10906)), _wgslsmith_f_op_f32(-812.0), vec2<u32>(u_input.b.x, ~4294967295u)), ~(var_0.xy >> (vec2<u32>(~30829u, 1u) % vec2<u32>(32u))), Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 323.0) * _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1835.0 * global0.x) - _wgslsmith_f_op_f32(f32(-1.0) * -520.0)), _wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) * _wgslsmith_div_f32(-856.0, -1858.0))), select(0 >> (u_input.b.x % 32u), _wgslsmith_add_i32(_wgslsmith_add_i32(-10784, u_input.a), u_input.a), select(var_0.x >= u_input.b.x, global2.x, !true)), global2.x, vec4<bool>(false && func_5(Struct_2(true, Struct_1(-2147483648, vec4<f32>(-2209.0, global0.x, global0.x, 1497.0), 1, global2.x, vec4<bool>(true, true, global2.x, global2.x)), vec2<f32>(global0.x, global0.x)), Struct_2(global2.x, Struct_1(1, vec4<f32>(global0.x, 435.0, 809.0, global0.x), global1[_wgslsmith_index_u32(20207u, 29u)], true, vec4<bool>(false, global2.x, global2.x, true)), global0.xz), vec2<bool>(true, global2.x), Struct_1(10586, vec4<f32>(global0.x, 1221.0, global0.x, 1291.0), u_input.a, global2.x, vec4<bool>(global2.x, global2.x, false, false))), _wgslsmith_f_op_f32(-global0.x) < -772.0, u_input.b.x <= ~4294967295u, true)), global1[_wgslsmith_index_u32(countOneBits(28408u), 29u)]).e.wzx;
    }
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_1 = Struct_2(global2.x, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1860.0, global0.x, global0.x)) - vec4<f32>(557.0, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 701.0, 873.0)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1237.0, 431.0, global0.x, 181.0), vec4<f32>(198.0, -743.0, 743.0, 1143.0))))), 17739, global0.x <= global0.x, select(vec4<bool>(false, func_5(Struct_2(global2.x, Struct_1(u_input.a, vec4<f32>(global0.x, -1139.0, global0.x, global0.x), global1[_wgslsmith_index_u32(u_input.b.x, 29u)], global2.x, vec4<bool>(false, true, global2.x, global2.x)), vec2<f32>(global0.x, -869.0)), Struct_2(global2.x, Struct_1(44263, vec4<f32>(global0.x, 246.0, -388.0, global0.x), -2147483648, global2.x, vec4<bool>(global2.x, global2.x, false, false)), global0.xy), global2.xy, Struct_1(20431, vec4<f32>(global0.x, 474.0, global0.x, global0.x), u_input.a, true, vec4<bool>(false, true, false, true))), global0.x <= 757.0, false), select(!vec4<bool>(true, false, false, false), select(vec4<bool>(global2.x, false, false, true), vec4<bool>(global2.x, false, global2.x, true), true), !global2.x), !(u_input.b.x >= 66311u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1173.0))) - func_7(Struct_2(global2.x, Struct_1(global1[_wgslsmith_index_u32(var_0.x, 29u)], vec4<f32>(global0.x, global0.x, 860.0, -1410.0), -7574, false, vec4<bool>(global2.x, false, global2.x, global2.x)), global0.xx), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 22984u), vec2<u32>(var_0.x, u_input.b.x)), func_2(u_input.b, vec2<i32>(-29588, global1[_wgslsmith_index_u32(u_input.b.x, 29u)]), global0.x, vec2<u32>(4294967295u, u_input.b.x)).b, ~4734).b.wx)));
    }
    global1 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_i32(~func_3(u_input.b.x, u_input.a).a, i32(-1) * -2147483647)), abs(~var_0.x), vec2<u32>(~23452u >> (var_0.x % 32u), _wgslsmith_div_u32(_wgslsmith_div_u32(abs(u_input.b.x), 31945u >> (u_input.b.x % 32u)), abs(4080u))));
}

