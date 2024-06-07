// {"0:0":[31,91,187,29,32,21,18,181,123,135,169,58,32,192,117,61]}
// Seed: 5772736344454133322

struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(23100u, 0u, 1u, 35114u, 18566u, 81465u, 0u, 0u, 23113u, 1u, 0u, 23400u, 14645u, 4294967295u, 48681u, 4294967295u, 31332u, 71970u, 0u, 64051u, 1u, 0u, 751u, 0u, 19323u, 0u, 529u, 28077u);

var<private> global1: bool;

var<private> global2: f32 = -1000.0;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(1, 49216)), Struct_1(vec2<i32>(0, 0)), Struct_1(vec2<i32>(-41356, 1)), Struct_1(vec2<i32>(-41373, -15963)), Struct_1(vec2<i32>(23860, 63863)), Struct_1(vec2<i32>(-2147483648, -1)), Struct_1(vec2<i32>(22579, -1)), Struct_1(vec2<i32>(0, 34817)), Struct_1(vec2<i32>(-31741, 14997)), Struct_1(vec2<i32>(2235, 34161)), Struct_1(vec2<i32>(-8859, 0)), Struct_1(vec2<i32>(-1, -1)), Struct_1(vec2<i32>(-29454, 12712)), Struct_1(vec2<i32>(-50808, -2147483648)), Struct_1(vec2<i32>(-29949, -1)), Struct_1(vec2<i32>(2147483647, 42545)), Struct_1(vec2<i32>(49425, -1)), Struct_1(vec2<i32>(1, -1)), Struct_1(vec2<i32>(-1, -93843)), Struct_1(vec2<i32>(-1, -56643)), Struct_1(vec2<i32>(-2147483648, 12092)), Struct_1(vec2<i32>(30487, 24949)), Struct_1(vec2<i32>(-29132, -40883)), Struct_1(vec2<i32>(1, 40909)), Struct_1(vec2<i32>(1, -31499)), Struct_1(vec2<i32>(1, 2147483647)), Struct_1(vec2<i32>(18528, 49655)), Struct_1(vec2<i32>(26831, -12259)), Struct_1(vec2<i32>(-126266, -51545)));

var<private> LOOP_COUNTERS: array<u32, 21>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn func_6(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = Struct_4(Struct_3(vec2<bool>(!true, _wgslsmith_f_op_f32(f32(-1.0) * -817.0) == _wgslsmith_f_op_f32(-arg_1)), Struct_2(vec3<i32>(u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.c), _wgslsmith_add_i32(u_input.c, u_input.b)), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.b, -32620))), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~70394u), 28u)], 29u)], select(vec4<u32>(0u, u_input.a, 7432u, global0[_wgslsmith_index_u32(1u, 28u)]), vec4<u32>(32529u, u_input.d, 36029u, 0u) & vec4<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(1u, 28u)], 4294967295u), vec4<bool>(true, arg_0, true, false))), Struct_2(vec3<i32>(~u_input.b, u_input.b, _wgslsmith_mult_i32(6878, -2147483648)), Struct_1(vec2<i32>(u_input.b, -1)), global3[_wgslsmith_index_u32(110712u, 29u)], vec4<u32>(~u_input.d, u_input.d, 0u, select(u_input.d, 20013u, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1000.0, -1095.0)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, 126.0, -1016.0, -305.0), vec4<f32>(674.0, arg_1, 735.0, arg_1))))), select(!select(false, true, arg_0), arg_1 != _wgslsmith_div_f32(arg_1, 243.0), arg_0)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(113740u, 28u)]) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(10148u, u_input.d, 31214u), vec3<u32>(4294967295u, 1u, 44719u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 11097u, 27886u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.d, 28u)]), ~vec3<u32>(15529u, 0u, 9778u))), _wgslsmith_clamp_u32(1u, firstTrailingBit(~43628u), ~(~1u))), 29u)]);
    let var_1 = Struct_4(var_0.a, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(6152u, 29801u), 29u)]);
    switch (1) {
        case -14189: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                global3 = array<Struct_1, 29>();
                let var_2 = -firstLeadingBit(var_1.a.b.a | var_0.a.c.a);
            }
            let var_2 = ~_wgslsmith_mod_u32(reverseBits(~1u) >> (~abs(var_0.a.c.d.x) % 32u), ~global0[_wgslsmith_index_u32(~var_0.a.b.d.x, 28u)]);
            global0 = array<u32, 28>();
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var var_3 = var_1.a.a.x;
                break;
            }
            return _wgslsmith_sub_u32(countOneBits(firstLeadingBit(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(18587u, 28u)], 0u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~firstTrailingBit(var_1.a.c.d.yw), select(min(var_1.a.c.d.yz, var_0.a.b.d.yx), vec2<u32>(var_2, 1u), any(vec3<bool>(var_0.a.e, false, arg_0)))), firstLeadingBit(vec2<u32>(~70150u, u_input.a))));
        }
        default: {
            let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.d.x)))));
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                continue;
            }
            var_0 = var_1;
        }
    }
    switch (-2147483648) {
        case 1: {
            for (var var_2 = 3196; !(!(-212.0 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -580.0)))); global0 = array<u32, 28>()) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                continue;
            }
            let var_2 = vec4<bool>(!(var_1.a.b.c.a.x < -1), all(vec3<bool>(all(vec3<bool>(true, true, true)), !(!false), any(!vec4<bool>(false, false, arg_0, arg_0)))), all(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(select(vec3<bool>(arg_0, var_0.a.a.x, var_0.a.a.x), vec3<bool>(true, var_0.a.e, arg_0), vec3<bool>(var_1.a.e, var_0.a.a.x, false)), vec3<bool>(arg_0, var_1.a.a.x, arg_0), vec3<bool>(false, var_0.a.e, false)), !vec3<bool>(arg_0, arg_0, var_0.a.a.x))), var_0.a.a.x);
            var var_3 = var_0.a;
        }
        case 34497: {
        }
        case -22839: {
            switch (u_input.b) {
                default: {
                    var_0 = Struct_4(var_1.a, var_1.b);
                }
            }
            global2 = _wgslsmith_f_op_f32(-var_0.a.d.x);
            var var_2 = !vec4<bool>(false, var_0.a.a.x, arg_0, !(_wgslsmith_f_op_f32(max(var_0.a.d.x, arg_1)) < var_1.a.d.x));
            let var_3 = var_0.a.c.d.zz;
            var var_4 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1, var_0.b.a.x, -42749, 14242), vec4<i32>(u_input.c, 0, -5796, u_input.c)) >> (vec4<u32>(var_3.x, 47646u, var_0.a.b.d.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-vec4<i32>(-2147483648, var_0.b.a.x, 0, 0), -vec4<i32>(-47383, 2147483647, var_0.b.a.x, u_input.c)), abs(-vec4<i32>(var_0.b.a.x, u_input.b, u_input.c, var_1.a.b.c.a.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-871, 0, u_input.c)), _wgslsmith_add_vec3_i32(var_0.a.b.a, vec3<i32>(1, 0, var_0.b.a.x))), var_0.b.a.x, ~var_1.a.b.a.x, -var_0.b.a.x & select(var_0.a.b.b.a.x, var_1.b.a.x, var_0.a.a.x)), vec4<i32>(~0, u_input.c ^ -21980, _wgslsmith_mult_i32(20143, 75606), var_1.a.b.a.x) << (firstTrailingBit(~var_0.a.b.d) % vec4<u32>(32u)));
        }
        case 1124: {
            let var_2 = var_0.a;
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            }
            for (; ; ) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
        }
        default: {
            let var_2 = -427.0;
        }
    }
    var var_2 = !(!(!any(select(vec4<bool>(var_0.a.a.x, false, arg_0, false), vec4<bool>(var_0.a.a.x, true, var_1.a.e, arg_0), false))));
    return 60977u;
}

fn func_5() -> Struct_2 {
    for (var var_0: i32; var_0 < 0; var_0 -= 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
    }
    global1 = ~global0[_wgslsmith_index_u32(~(~abs(619u)), 28u)] < ~select(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(u_input.d, 28u)], select(1u, 58825u, true)), func_6(u_input.c <= u_input.b, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(657.0)) * _wgslsmith_f_op_f32(236.0 * 799.0)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-407.0)) - _wgslsmith_f_op_f32(-129.0 + -1080.0)) - 1769.0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-547.0))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124.0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -105.0), _wgslsmith_f_op_f32(f32(-1.0) * -601.0)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000.0)), 293.0) + -1270.0)));
    global0 = array<u32, 28>();
    let var_1 = !select(true, false, 11723u <= global0[_wgslsmith_index_u32(abs(func_6(true, 915.0)), 28u)]);
    return Struct_2(vec3<i32>(3491, ~u_input.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0, u_input.c), vec4<i32>(u_input.b, 23792, 0, u_input.c))) ^ abs(vec3<i32>(-1, -40806, 2147483647) ^ vec3<i32>(34167, 1, -17758)), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 29u)], global3[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(select(0u, 1u, var_1), 1u) | 25376u), 29u)], vec4<u32>(~u_input.a, u_input.a, _wgslsmith_div_u32(~u_input.d, global0[_wgslsmith_index_u32(42510u, 28u)]), 51547u));
}

fn func_7(arg_0: Struct_3, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_2(-select(arg_0.b.a, arg_0.b.a, select(arg_1, select(arg_1, arg_1, arg_1), false)), Struct_1(~arg_0.c.b.a), func_5().c, arg_0.c.d & _wgslsmith_mult_vec4_u32(reverseBits(~arg_0.b.d), arg_0.b.d));
    for (; ; ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            let var_1 = select(arg_1.yx, vec2<bool>(!(!arg_0.e), true), arg_1.zx);
            global1 = arg_0.e;
            let var_2 = Struct_4(arg_0, arg_0.b.b);
            let var_3 = var_2.a.a;
            break;
        }
        let var_1 = -369.0;
        break;
    }
    if (!(!arg_0.a.x) || any(vec3<bool>(all(select(vec4<bool>(arg_0.a.x, arg_1.x, arg_0.a.x, arg_1.x), vec4<bool>(true, false, true, arg_1.x), vec4<bool>(false, arg_1.x, arg_0.a.x, arg_0.a.x))), !arg_0.e, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_0.b.d.x, 28u)], 17227u) >= u_input.d))) {
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            let var_1 = var_0.c.a;
            global2 = arg_0.d.x;
            var var_2 = -arg_0.c.a.x;
        }
        var var_1 = func_5().b;
        var var_2 = arg_0.b;
        var var_3 = 0;
        if (arg_0.e) {
            let var_4 = arg_0.d;
            global2 = -338.0;
            let var_5 = Struct_4(Struct_3(vec2<bool>(!arg_0.e && true, !arg_0.a.x), func_5(), func_5(), vec4<f32>(_wgslsmith_f_op_f32(select(var_4.x, _wgslsmith_f_op_f32(-749.0 + arg_0.d.x), all(arg_0.a))), _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(var_4.x + 1869.0)), _wgslsmith_f_op_f32(f32(-1.0) * -245.0), _wgslsmith_f_op_f32(select(-885.0, _wgslsmith_f_op_f32(min(440.0, var_4.x)), true && arg_1.x))), func_5().c.a.x != (reverseBits(-29858) ^ ~66427)), Struct_1(-select(var_0.c.a, var_1.a, !vec2<bool>(false, true))));
            let var_6 = ~(~vec2<u32>(4294967295u | var_5.a.b.d.x, var_5.a.b.d.x) << (vec2<u32>(_wgslsmith_div_u32(func_6(false, var_4.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.c.d.x, var_2.d.x, 1u), var_0.d)), countOneBits(u_input.d)) % vec2<u32>(32u)));
        }
    }
    let var_1 = var_0;
    var var_2 = ~4294967295u;
    return _wgslsmith_f_op_f32(floor(423.0));
}

fn func_4() -> bool {
    var var_0 = min(vec3<u32>(_wgslsmith_add_u32(u_input.a, ~u_input.a), 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(10123u, 28u)], u_input.a, 1u, global0[_wgslsmith_index_u32(36838u, 28u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(64162u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)]), vec4<u32>(1u, 4294967295u, 25198u, 4294967295u))), ~(~u_input.a))), vec3<u32>(u_input.a, ~(~(~4294967295u)), reverseBits(_wgslsmith_div_u32(4294967295u, 13544u)) | 18806u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_7(Struct_3(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_5(), Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.c, u_input.c), vec3<i32>(0, u_input.c, u_input.b)), global3[_wgslsmith_index_u32(22512u, 29u)], global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 28u)], 29u)], ~vec4<u32>(22480u, global0[_wgslsmith_index_u32(0u, 28u)], 1u, 0u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(888.0, -841.0, -199.0, 1057.0), vec4<f32>(-166.0, -967.0, 317.0, 435.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-350.0, 1822.0, -611.0, -3290.0)))), all(!vec4<bool>(true, false, false, true))), !vec3<bool>(!false, 1 >= -27987, !true))), 346.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -619.0))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_7(Struct_3(vec2<bool>(false, true), Struct_2(vec3<i32>(2923, 0, u_input.c), Struct_1(vec2<i32>(u_input.b, u_input.b)), Struct_1(vec2<i32>(u_input.c, -1)), vec4<u32>(u_input.a, 28243u, u_input.a, 1u)), Struct_2(vec3<i32>(u_input.c, u_input.b, u_input.b), Struct_1(vec2<i32>(u_input.b, u_input.b)), Struct_1(vec2<i32>(u_input.b, -38146)), vec4<u32>(25459u, var_0.x, global0[_wgslsmith_index_u32(9895u, 28u)], var_0.x)), vec4<f32>(-698.0, -225.0, 1275.0, 1140.0), true), vec3<bool>(true, true, false))), -1347.0)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-190.0) + _wgslsmith_f_op_f32(f32(-1.0) * -797.0))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -267.0), _wgslsmith_f_op_f32(-1372.0), false || true)) + -503.0))));
    global1 = false;
    var var_2 = countOneBits(~(~(~vec3<u32>(var_0.x, 41528u, 35150u)))) >> (~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(11106u, 1u, u_input.d), vec3<u32>(4294967295u, 11788u, 1u)))) % vec3<u32>(32u));
    global0 = array<u32, 28>();
    return all(vec3<bool>(!all(vec2<bool>(true, false)), all(select(!vec3<bool>(false, false, true), !vec3<bool>(true, true, false), vec3<bool>(false, true, true))), false));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    global1 = func_4();
    let var_0 = Struct_4(Struct_3(!vec2<bool>(!arg_0, all(vec3<bool>(arg_0, arg_0, arg_0))), func_5(), Struct_2(arg_2.zxz << ((vec3<u32>(global0[_wgslsmith_index_u32(14204u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a) & vec3<u32>(1121u, u_input.a, 1u)) % vec3<u32>(32u)), Struct_1(abs(arg_1.a)), func_5().c, abs(vec4<u32>(u_input.a, 126109u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], u_input.d))), vec4<f32>(-209.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -566.0), 1338.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1298.0 - 1000.0) * _wgslsmith_div_f32(1126.0, -426.0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-829.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1218.0) * 1484.0) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1119.0, -586.0)))), arg_1);
    switch (firstLeadingBit(u_input.b)) {
        case 0: {
            let var_1 = vec2<i32>(_wgslsmith_mod_i32(u_input.c, i32(-1) * -firstLeadingBit(u_input.c)), func_5().a.x);
            global1 = !func_4();
            var var_2 = Struct_3(select(vec2<bool>(any(var_0.a.a), arg_0), !vec2<bool>(var_0.a.d.x <= 1000.0, all(vec3<bool>(arg_0, arg_0, true))), vec2<bool>(arg_0, !any(var_0.a.a))), Struct_2(firstTrailingBit(-arg_2.wxz), Struct_1(arg_1.a), var_0.a.b.c, _wgslsmith_sub_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.a.b.d.x, 65043u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7062u, 28u)], 28u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u, u_input.a, 36213u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(9421u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], 1u, global0[_wgslsmith_index_u32(u_input.d, 28u)]), var_0.a.c.d)), vec4<u32>(1u, ~u_input.d, ~4294967295u, global0[_wgslsmith_index_u32(80191u, 28u)] >> (var_0.a.b.d.x % 32u)))), Struct_2(var_0.a.b.a, func_5().b, Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(0, 1) << (vec2<u32>(0u, u_input.d) % vec2<u32>(32u)), vec2<i32>(-908, 1))), ~var_0.a.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(508.0, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x))))), !(_wgslsmith_f_op_f32(-var_0.a.d.x) < var_0.a.d.x));
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                global3 = array<Struct_1, 29>();
                break;
            }
            if (any(!select(vec3<bool>(false & true, !false, !true), !select(vec3<bool>(true, arg_0, false), vec3<bool>(false, var_0.a.e, var_2.a.x), vec3<bool>(true, true, arg_0)), !vec3<bool>(false, arg_0, arg_0)))) {
                global3 = array<Struct_1, 29>();
                global1 = !false;
                global0 = array<u32, 28>();
                global0 = array<u32, 28>();
                var var_3 = func_5().a;
            }
        }
        default: {
            global1 = any(!(!select(!vec3<bool>(false, arg_0, var_0.a.e), vec3<bool>(arg_0, arg_0, false), !vec3<bool>(true, var_0.a.a.x, arg_0))));
            global0 = array<u32, 28>();
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            }
            global3 = array<Struct_1, 29>();
            let var_1 = _wgslsmith_f_op_f32(func_7(Struct_3(select(select(var_0.a.a, !var_0.a.a, vec2<bool>(false, var_0.a.a.x)), var_0.a.a, var_0.a.a), var_0.a.c, func_5(), var_0.a.d, !all(vec3<bool>(arg_0, false, true))), !(!select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(true, false, var_0.a.e), false & true))));
        }
    }
    return var_0.a.b;
}

fn func_8(arg_0: Struct_3) -> i32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1130.0));
    for (var var_0: i32; ; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        global3 = array<Struct_1, 29>();
    }
    global2 = 567.0;
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        continue;
    }
    global0 = array<u32, 28>();
    return ~2147483647;
}

fn func_2() -> vec3<bool> {
    switch (func_8(Struct_3(vec2<bool>((66184u <= 150284u) & all(vec3<bool>(true, false, true)), !(!false)), func_3(!false, global3[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9369u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.d, 28u)], u_input.d, 0u)), 28u)]), 29u)], -(vec4<i32>(-28994, u_input.b, u_input.c, 0) ^ vec4<i32>(-2147483648, u_input.c, u_input.c, u_input.c))), func_3(!(!true), func_3(false, global3[_wgslsmith_index_u32(u_input.d, 29u)], vec4<i32>(u_input.c, u_input.c, u_input.c, -6722)).b, abs(vec4<i32>(u_input.b, u_input.b, u_input.b, -7356))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739.0 - 790.0) * _wgslsmith_f_op_f32(f32(-1.0) * -2701.0)), _wgslsmith_f_op_f32(-574.0 + 1712.0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000.0, -528.0)), _wgslsmith_f_op_f32(-510.0 - _wgslsmith_f_op_f32(trunc(-191.0)))), !(all(vec3<bool>(false, true, true)) && (0 == 2147483647))))) {
        case -14897: {
            switch (~2147483647) {
                case 2147483647: {
                    let var_0 = false;
                    let var_1 = !select(!select(!vec3<bool>(true, var_0, false), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, false), vec3<bool>(true, false, var_0)), any(vec3<bool>(var_0, var_0, var_0))), select(!vec3<bool>(var_0, var_0, var_0), vec3<bool>(!false, u_input.c >= u_input.c, !var_0), true), !(all(vec4<bool>(var_0, true, var_0, var_0)) || var_0));
                    let var_2 = -1 << (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~14762u), firstTrailingBit(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 28u)], 9126u, 4294967295u))), 28u)], ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(43947u, 28u)], abs(u_input.d))) % 32u);
                    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1804.0))) < -451.0;
                    var var_3 = _wgslsmith_f_op_f32(max(1590.0, -1000.0));
                }
                case 71074: {
                    let var_0 = -countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483648, u_input.b, u_input.b, 2147483647), vec4<i32>(u_input.b, 0, -1, u_input.b)) & vec4<i32>(u_input.b << (30922u % 32u), u_input.b, _wgslsmith_mod_i32(u_input.c, -23816), u_input.c));
                    var var_1 = any(!(!vec2<bool>(!true, all(vec4<bool>(false, true, true, true)))));
                    let var_2 = func_3(any(select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), -1538.0 <= -2171.0), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, true, false))), Struct_1(_wgslsmith_div_vec2_i32(abs(var_0.wz), -vec2<i32>(var_0.x, -2147483648) ^ _wgslsmith_div_vec2_i32(vec2<i32>(1, u_input.b), var_0.zw))), countOneBits(vec4<i32>(max(var_0.x >> (1u % 32u), -2147483648), 5401, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.yx), vec2<i32>(-3411, u_input.c)), abs(-17201))));
                }
                case 1: {
                    let var_0 = Struct_3(vec2<bool>(false | (select(false, false, true) || !true), !false), func_5(), Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1, u_input.c, 12279), vec3<i32>(-34985, u_input.b, u_input.b)), firstTrailingBit(vec3<i32>(u_input.b, u_input.c, -40092)), -vec3<i32>(u_input.b, u_input.c, 23007)), vec3<i32>(u_input.b, u_input.c, u_input.c)), global3[_wgslsmith_index_u32(~(~69224u ^ 4294967295u), 29u)], Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-732, u_input.c), vec2<i32>(-26271, u_input.c)), -vec2<i32>(2147483647, -15092))), vec4<u32>(u_input.d, u_input.d, ~0u, 4294967295u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(762.0, 1000.0, 175.0, 450.0) * vec4<f32>(-2649.0, 759.0, -876.0, 693.0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-280.0, -453.0, 270.0, -620.0) * vec4<f32>(1000.0, 1287.0, 320.0, 435.0)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272.0 * 1000.0)), -1034.0, -1809.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0) - _wgslsmith_f_op_f32(-1629.0))), select(select(!vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(any(vec3<bool>(false, false, true)), !true, !false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)] >= 4294967295u), all(vec4<bool>(false, true, true, false)) | all(vec2<bool>(false, false))))), !(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.c, 0), vec3<i32>(1, u_input.b, 0)), func_3(true, global3[_wgslsmith_index_u32(0u, 29u)], vec4<i32>(-24544, u_input.b, -37482, u_input.b)).a) >= u_input.c));
                    global3 = array<Struct_1, 29>();
                    var var_1 = ~_wgslsmith_mult_i32(-18864, u_input.c);
                }
                case 0: {
                }
                default: {
                    global3 = array<Struct_1, 29>();
                }
            }
            switch (u_input.c ^ -1) {
                default: {
                    var var_0 = (u_input.b >> (4294967295u % 32u)) | 1842;
                }
            }
            var var_0 = Struct_4(Struct_3(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)] == 0u), vec2<bool>(false & true, false), !(!true)), func_5(), func_5(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-703.0 + 2317.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(Struct_3(vec2<bool>(true, true), Struct_2(vec3<i32>(u_input.c, 25246, -5195), Struct_1(vec2<i32>(u_input.c, -2147483648)), Struct_1(vec2<i32>(25544, 2147483647)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 28u)], 4294967295u, 4014u, 9320u)), Struct_2(vec3<i32>(36602, -468, u_input.c), global3[_wgslsmith_index_u32(u_input.d, 29u)], Struct_1(vec2<i32>(u_input.c, u_input.b)), vec4<u32>(72067u, 1u, 43482u, 25577u)), vec4<f32>(-268.0, -1008.0, 149.0, -1000.0), false), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272.0 * -1000.0)), 2309.0), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), !vec4<bool>(true, false, false, true)))), func_3(all(select(!vec3<bool>(true, false, true), !vec3<bool>(true, true, true), false)), global3[_wgslsmith_index_u32(~(~u_input.a), 29u)], min(firstLeadingBit(-vec4<i32>(u_input.c, -472, -168, u_input.c)), ~vec4<i32>(-2147483648, -43359, 6112, u_input.b))).b);
            global0 = array<u32, 28>();
            var var_1 = ~_wgslsmith_mod_i32(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(19731, -14226), var_0.b.a.x), 25055);
        }
        default: {
            let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, ~_wgslsmith_sub_u32(13312u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~5349u, 28u)], 28u)]), ~global0[_wgslsmith_index_u32(u_input.d, 28u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(u_input.a, 28u)] ^ 116390u, abs(u_input.d), global0[_wgslsmith_index_u32(38073u, 28u)] << (select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24114u, 28u)], 28u)], 916u, false) % 32u)), ~func_5().d.yzy));
            global1 = !(!true);
            var var_1 = u_input.c;
            switch (~(~7581)) {
                case -2147483648: {
                    let var_2 = vec2<i32>(-max(min(min(1, -2147483648), select(2147483647, 29680, false)), -_wgslsmith_add_i32(17931, -1)), 18539);
                    var var_3 = _wgslsmith_mult_u32(23848u, ~(~(0u | ~4294967295u)));
                    var_1 = min(select(~(-_wgslsmith_clamp_i32(var_2.x, var_2.x, u_input.c)), var_2.x, any(vec2<bool>(true, true)) || (0 < (i32(-1) * -33634))), i32(-1) * -55129);
                }
                case -22062: {
                    global2 = -813.0;
                    var_1 = select(-17667, -2147483648, true);
                    let var_2 = global3[_wgslsmith_index_u32(countOneBits(var_0.x), 29u)];
                }
                default: {
                    var var_2 = Struct_2(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-41052, u_input.c, u_input.b)) << (var_0 % vec3<u32>(32u)), vec3<i32>(firstLeadingBit(2147483647) ^ u_input.c, -34383, -46638), ~_wgslsmith_clamp_vec3_i32(~vec3<i32>(0, -2147483648, 1), vec3<i32>(u_input.c, u_input.c, u_input.b) << (var_0 % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-1, -27384, 2147483647)))), func_3(true, global3[_wgslsmith_index_u32(4317u, 29u)], abs(-(~vec4<i32>(u_input.c, -1, u_input.c, u_input.b)))).b, global3[_wgslsmith_index_u32(u_input.a, 29u)], max(~vec4<u32>(_wgslsmith_dot_vec3_u32(var_0, var_0), 0u, global0[_wgslsmith_index_u32(var_0.x, 28u)], ~global0[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 28u)], u_input.d, u_input.d, ~0u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 55745u, 1u, 74245u), vec4<u32>(1u, var_0.x, u_input.d, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(71243u, 0u, u_input.a, var_0.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 28u)], 28u)], var_0.x, global0[_wgslsmith_index_u32(u_input.d, 28u)], global0[_wgslsmith_index_u32(1986u, 28u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48696u, 28u)], 28u)], 0u, 0u, var_0.x))))));
                    global0 = array<u32, 28>();
                    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(504.0 - -198.0)));
                    let var_4 = Struct_2(_wgslsmith_sub_vec3_i32(var_2.a | vec3<i32>(_wgslsmith_div_i32(var_2.c.a.x, var_2.b.a.x), func_3(true, var_2.b, vec4<i32>(37391, 2147483647, var_2.a.x, var_2.b.a.x)).c.a.x, u_input.c), countOneBits(vec3<i32>(var_2.a.x, 46452, 65590)) >> (var_2.d.wzw % vec3<u32>(32u))), func_5().c, func_5().b, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(var_2.d, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 53018u, var_0.x, 10091u), vec4<u32>(var_0.x, var_0.x, u_input.a, var_2.d.x))), var_2.d) ^ var_2.d);
                    var_3 = 363.0;
                }
            }
        }
    }
    switch (-func_5().c.a.x) {
        case 3266: {
            switch (6353) {
                case 0: {
                    let var_0 = vec2<f32>(917.0, _wgslsmith_f_op_f32(step(-447.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(Struct_3(vec2<bool>(false, true), Struct_2(vec3<i32>(-17066, u_input.b, -2147483648), Struct_1(vec2<i32>(2147483647, -1)), global3[_wgslsmith_index_u32(0u, 29u)], vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 28u)], 50899u, u_input.d, 27106u)), Struct_2(vec3<i32>(0, u_input.c, u_input.b), global3[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(vec2<i32>(0, u_input.c)), vec4<u32>(u_input.d, 25457u, 41815u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49075u, 28u)], 28u)])), vec4<f32>(-897.0, -2421.0, -678.0, 194.0), false), vec3<bool>(false, false, true))) - 825.0))))));
                    global1 = true || true;
                    return !select(select(!(!vec3<bool>(true, true, false)), vec3<bool>(false, false && false, all(vec2<bool>(true, true))), any(!vec4<bool>(false, true, false, true))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), 4294967295u == 51167u), !vec3<bool>(false, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), false);
                }
                case -11465: {
                    global3 = array<Struct_1, 29>();
                    global0 = array<u32, 28>();
                }
                case -2147483648: {
                    var var_0 = select(!vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !true, all(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, true))), select(!vec4<bool>(true, false != true, !true, !false), select(!vec4<bool>(true, false, false, true), !(!vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true && true)), !select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), all(vec2<bool>(true, false)))), !false);
                    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1056.0 + _wgslsmith_f_op_f32(-393.0)) - -334.0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1058.0 - -912.0) - -806.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(120.0, 266.0, var_0.x)) * _wgslsmith_f_op_f32(-758.0 - -1383.0)))));
                    var var_1 = 0 | u_input.b;
                }
                case -26984: {
                    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(211.0, 1085.0)))))));
                    let var_0 = _wgslsmith_f_op_f32(select(-1382.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-106.0, _wgslsmith_div_f32(362.0, 1052.0)), _wgslsmith_f_op_f32(-266.0))) + -1000.0), true));
                }
                default: {
                    let var_0 = vec3<i32>(2147483647, 60325, u_input.c);
                    var var_1 = Struct_4(Struct_3(vec2<bool>(func_4(), !(true | false)), func_3(all(vec3<bool>(false, true, false)), global3[_wgslsmith_index_u32(reverseBits(1u), 29u)], ~vec4<i32>(29717, -2147483648, var_0.x, -61)), func_5(), vec4<f32>(_wgslsmith_f_op_f32(-384.0 + 942.0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-433.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435.0 * -447.0) * -2223.0), -1055.0), _wgslsmith_dot_vec2_u32(vec2<u32>(17394u, 4294967295u) ^ vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.d, 4294967295u)) == _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(7576u, global0[_wgslsmith_index_u32(u_input.a, 28u)], u_input.d), vec3<u32>(u_input.d, 4294967295u, 4294967295u)), vec3<u32>(4294967295u, 9760u, 0u))), global3[_wgslsmith_index_u32(~1u & 12435u, 29u)]);
                    let var_2 = ~30778u >= ~firstLeadingBit(~1u);
                }
            }
            global0 = array<u32, 28>();
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            }
        }
        case -35504: {
            switch (_wgslsmith_add_i32(1, _wgslsmith_dot_vec3_i32(vec3<i32>(-41006, u_input.b, -20313 & 32502), ~(~vec3<i32>(u_input.c, u_input.c, u_input.b)))) | func_3(!false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5734u, 28u)], 28u)], 29u)], vec4<i32>(u_input.c, -(~(-78459)), min(0, -u_input.c), u_input.c)).b.a.x) {
                case 2147483647: {
                    global3 = array<Struct_1, 29>();
                    let var_0 = Struct_2(reverseBits(countOneBits(select(-vec3<i32>(-46131, 1, -1), vec3<i32>(-1, u_input.c, u_input.b), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))))), global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(98452u >> (4294967295u % 32u), ~9391u), u_input.d), func_6(all(vec4<bool>(false, false, true, true)) == !true, 1105.0)), 29u)], vec4<u32>(func_3(!(!true), func_5().b, ~(~vec4<i32>(2147483647, 2147483647, u_input.c, 12677))).d.x, _wgslsmith_div_u32((u_input.d | u_input.d) & ~23316u, 49226u), 1u, ~(~_wgslsmith_mod_u32(u_input.d, u_input.a))));
                    var var_1 = Struct_3(select(select(vec2<bool>(select(true, true, true), var_0.d.x >= 4294967295u), select(!vec2<bool>(true, false), vec2<bool>(false, true), !vec2<bool>(false, true)), vec2<bool>(false, true)), vec2<bool>(!any(vec3<bool>(true, false, true)), !(0u <= global0[_wgslsmith_index_u32(var_0.d.x, 28u)])), select(select(!vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !vec2<bool>(false, false), any(vec3<bool>(true, false, true)))), var_0, var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(149.0, -1595.0, 103.0, 784.0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1497.0, 1106.0, -2773.0, -945.0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-969.0, -983.0, 645.0, -280.0))), select(!vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), false)))), !(!all(!vec2<bool>(false, true))));
                    let var_2 = ~(~vec3<u32>(~global0[_wgslsmith_index_u32(reverseBits(var_1.b.d.x), 28u)], abs(20551u) >> ((u_input.d & u_input.a) % 32u), abs(1u)));
                }
                case 11323: {
                    let var_0 = func_5().b;
                    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-292.0 - -823.0), 192.0)))));
                }
                case -2147483648: {
                    let var_0 = func_3(!(28596u != _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(15482u, 28u)] ^ 24037u, u_input.d)), func_3(false, Struct_1(~countOneBits(vec2<i32>(0, u_input.c))), vec4<i32>(u_input.c, countOneBits(u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.c, 48473)), u_input.b)).c, vec4<i32>(~12130, -43384, u_input.b, u_input.b));
                    var var_1 = 47997u;
                    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1038.0, 681.0, -311.0))))), vec3<f32>(2308.0, 583.0, 1593.0))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_7(Struct_3(vec2<bool>(true, false), Struct_2(vec3<i32>(-13880, 2147483647, 52229), Struct_1(var_0.b.a), global3[_wgslsmith_index_u32(6595u, 29u)], var_0.d), Struct_2(vec3<i32>(7485, u_input.b, var_0.c.a.x), Struct_1(vec2<i32>(49285, -1)), var_0.c, var_0.d), vec4<f32>(129.0, 1125.0, -227.0, -1000.0), false), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(step(1000.0, 1966.0)), _wgslsmith_f_op_f32(-1103.0 + -1000.0)))))), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(!vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(true, false, true)), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))))));
                    let var_3 = vec4<u32>(~(global0[_wgslsmith_index_u32(4294967295u, 28u)] >> (_wgslsmith_mod_u32(var_0.d.x, ~35798u) % 32u)), ~(~_wgslsmith_dot_vec3_u32(var_0.d.xyw, vec3<u32>(0u, 25484u, global0[_wgslsmith_index_u32(var_0.d.x, 28u)]))), _wgslsmith_div_u32(abs(~105354u), 22383u), _wgslsmith_mult_u32(~_wgslsmith_add_u32(~u_input.a, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 42195u, u_input.a, 1u), select(var_0.d, vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 49203u, u_input.d, global0[_wgslsmith_index_u32(1u, 28u)]), vec4<bool>(true, true, true, false))) << (_wgslsmith_dot_vec3_u32(var_0.d.yxz, var_0.d.wwy) % 32u)));
                    var var_4 = !vec3<bool>(any(vec3<bool>(-1626 < 1, -417.0 <= var_2.x, var_3.x < global0[_wgslsmith_index_u32(0u, 28u)])), false, func_4());
                }
                default: {
                    var var_0 = !vec4<bool>(!select(all(vec2<bool>(true, false)), u_input.c > u_input.b, -2147483648 > u_input.c), !select(true, all(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true))), (~global0[_wgslsmith_index_u32(u_input.a, 28u)] & abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54161u, 28u)], 28u)])) != abs(~78823u), !(!true));
                    global1 = !var_0.x;
                }
            }
            switch (u_input.c) {
                default: {
                    global0 = array<u32, 28>();
                    let var_0 = Struct_4(Struct_3(!vec2<bool>(func_4(), select(false, false, true)), func_5(), Struct_2(max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -1, u_input.c), vec3<i32>(25407, -2147483648, 0)), countOneBits(vec3<i32>(u_input.b, u_input.b, 14533))), func_3(!true, func_5().b, ~vec4<i32>(0, 5998, u_input.b, u_input.b)).c, func_3(true | false, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1910u, global0[_wgslsmith_index_u32(u_input.d, 28u)]), 29u)], vec4<i32>(-62974, -1, -1, u_input.c)).b, vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 28u)], 17725u, u_input.d) | abs(vec4<u32>(global0[_wgslsmith_index_u32(34344u, 28u)], global0[_wgslsmith_index_u32(17583u, 28u)], 34221u, u_input.d))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1088.0, -1000.0, 970.0, 2390.0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1278.0, 1293.0, 710.0, -1620.0) + vec4<f32>(-284.0, 836.0, 952.0, 1232.0))))), !((false | true) & (false & false))), func_5().b);
                    var var_1 = select(any(select(!select(vec4<bool>(var_0.a.e, var_0.a.e, var_0.a.a.x, var_0.a.e), vec4<bool>(var_0.a.e, var_0.a.a.x, var_0.a.e, var_0.a.e), vec4<bool>(var_0.a.e, var_0.a.a.x, var_0.a.e, var_0.a.e)), !(!vec4<bool>(var_0.a.a.x, true, false, var_0.a.a.x)), var_0.a.e)), !false, all(!vec3<bool>(var_0.a.e || var_0.a.e, false, var_0.a.a.x)));
                    let var_2 = Struct_4(Struct_3(var_0.a.a, var_0.a.c, Struct_2(vec3<i32>(var_0.b.a.x, countOneBits(var_0.b.a.x), 5764 << (u_input.d % 32u)), func_3(var_0.a.d.x < var_0.a.d.x, func_5().c, vec4<i32>(0, 1, u_input.b, var_0.a.b.c.a.x)).b, global3[_wgslsmith_index_u32(0u, 29u)], firstLeadingBit(vec4<u32>(u_input.d, 0u, global0[_wgslsmith_index_u32(74065u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]) | vec4<u32>(1u, 0u, 17760u, u_input.d))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) * var_0.a.d.x), var_0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.x - var_0.a.d.x))), any(vec3<bool>(var_0.a.d.x == var_0.a.d.x, false, !false))), var_0.a.b.c);
                }
            }
        }
        default: {
            global1 = ~31193u > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~1u, 28u)], ~global0[_wgslsmith_index_u32(u_input.a, 28u)])), 28u)], 28u)];
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                var var_0 = 14298;
                global3 = array<Struct_1, 29>();
                var var_1 = u_input.c;
            }
        }
    }
    if (all(select(vec2<bool>(select(false, false, true) && !true, false), !select(!vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true)), !vec2<bool>(true, select(false, true, false))))) {
        switch (func_8(Struct_3(select(select(!vec2<bool>(false, false), !vec2<bool>(true, false), !true), !vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), false)), Struct_2(vec3<i32>(_wgslsmith_clamp_i32(-6445, -1, -1), u_input.c, u_input.b), func_3(!true, func_3(true, Struct_1(vec2<i32>(u_input.b, u_input.b)), vec4<i32>(-10736, -1, u_input.c, u_input.b)).c, select(vec4<i32>(-13320, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.b, u_input.c, 1), vec4<bool>(true, true, false, true))).b, global3[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(u_input.a, 28u)] >> (u_input.d % 32u), _wgslsmith_clamp_u32(4079u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17544u, 28u)], 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)])), 29u)], _wgslsmith_div_vec4_u32(vec4<u32>(14517u, 4294967295u, u_input.d, u_input.a) << (vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(0u, 28u)], 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 28u)]) % vec4<u32>(32u)), ~vec4<u32>(global0[_wgslsmith_index_u32(0u, 28u)], u_input.d, u_input.a, u_input.d))), Struct_2(min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 41554, u_input.c), vec3<i32>(u_input.c, u_input.c, -26361)), ~vec3<i32>(15194, u_input.c, -1)), Struct_1(~vec2<i32>(u_input.b, -26652)), func_3(1 >= u_input.c, global3[_wgslsmith_index_u32(~66799u, 29u)], vec4<i32>(u_input.c, u_input.c, u_input.c, 17580)).c, min(~vec4<u32>(0u, 4294967295u, 1u, u_input.d), min(vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], u_input.d, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(11072u, 28u)], 5426u, global0[_wgslsmith_index_u32(u_input.d, 28u)], 1u)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-799.0, 193.0, -688.0, 709.0))))), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))))) {
            case 0: {
                var var_0 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 55847u), u_input.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, global0[_wgslsmith_index_u32(84366u, 28u)]), vec3<u32>(113779u, 0u, 1u)), global0[_wgslsmith_index_u32(u_input.a, 28u)] << (u_input.a % 32u)), !any(vec4<bool>(true, true, true, false))), u_input.d), 28u)], func_5().d.x), 28u)], 29u)];
                var var_1 = vec3<bool>(select(all(vec2<bool>(false || true, 395.0 >= 560.0)), true, !true), !any(vec2<bool>(false, true)) || func_4(), var_0.a.x <= _wgslsmith_sub_i32(-1, 1));
                var var_2 = Struct_3(select(!select(!vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, true), var_1.yx), vec2<bool>(any(vec4<bool>(true, var_1.x, var_1.x, var_1.x)) | func_4(), !func_4()), !(!any(vec3<bool>(false, var_1.x, false)))), func_5(), Struct_2(vec3<i32>(-1, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(0, u_input.b, var_0.a.x), 32382), -1), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(u_input.b, var_0.a.x, var_0.a.x), u_input.b)), Struct_1(~var_0.a), min(select(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 4294967295u, 4294967295u, u_input.a), vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(36105u, 28u)], global0[_wgslsmith_index_u32(u_input.d, 28u)]), var_1.x & false), ~vec4<u32>(global0[_wgslsmith_index_u32(0u, 28u)], u_input.a, u_input.a, u_input.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1000.0, -1000.0, -549.0, -935.0), vec4<f32>(-2449.0, -925.0, 576.0, -1196.0)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(1000.0)), _wgslsmith_f_op_f32(-1807.0), _wgslsmith_f_op_f32(f32(-1.0) * -1354.0), _wgslsmith_f_op_f32(-1628.0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1197.0, 1314.0, 133.0, 1069.0))))), true);
            }
            case -6282: {
                var var_0 = _wgslsmith_mult_i32(-2147483648, firstTrailingBit(-u_input.b));
                var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1098.0, 796.0, -2373.0), _wgslsmith_div_vec3_f32(vec3<f32>(433.0, 1313.0, 619.0), vec3<f32>(-438.0, 1000.0, 1000.0)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(823.0, 732.0, 1139.0), vec3<f32>(2624.0, -493.0, 203.0))))))));
            }
            default: {
            }
        }
        var var_0 = Struct_3(vec2<bool>(select(!false, !true, func_4()) | any(vec4<bool>(true, false, true, true)), false), Struct_2(vec3<i32>(-32313, -2147483648, -1), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45679u, 28u)], 28u)]) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)] % 32u)), 28u)], 29u)], Struct_1(vec2<i32>(u_input.c, u_input.c & 1)), vec4<u32>(~0u | abs(global0[_wgslsmith_index_u32(30547u, 28u)]), 0u, reverseBits(~11349u), _wgslsmith_clamp_u32(44081u, firstLeadingBit(u_input.d), global0[_wgslsmith_index_u32(0u, 28u)] ^ global0[_wgslsmith_index_u32(4294967295u, 28u)]))), func_3(!(!true), func_3(false, func_5().b, countOneBits(vec4<i32>(3561, -20470, 30013, u_input.b)) & -vec4<i32>(u_input.b, 2147483647, u_input.b, u_input.b)).c, -abs(vec4<i32>(u_input.c, -33495, -1, u_input.b) ^ vec4<i32>(u_input.b, 0, 22401, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-852.0), 1541.0, _wgslsmith_f_op_f32(850.0 * 270.0), _wgslsmith_f_op_f32(max(-1061.0, -177.0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-749.0, 705.0, -534.0, 332.0) - vec4<f32>(1822.0, 700.0, 1351.0, -1012.0))))), !(~u_input.d > 4294967295u) | !all(!vec2<bool>(true, true)));
        var var_1 = var_0.e;
    }
    if (!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-577.0, -280.0), _wgslsmith_f_op_f32(exp2(1380.0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(494.0 * 2199.0) - _wgslsmith_f_op_f32(step(144.0, -853.0)))) <= 139.0)) {
        global3 = array<Struct_1, 29>();
        switch (~(-max(49724, -_wgslsmith_sub_i32(u_input.c, u_input.c)))) {
            case -12249: {
                let var_0 = !select(all(vec3<bool>(true || false, !true, true)), false, any(!(!vec2<bool>(true, true))));
                global2 = -1681.0;
                let var_1 = true;
                var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(~u_input.d, 28u)], 4294967295u ^ global0[_wgslsmith_index_u32(30040u, 28u)], ~u_input.a, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 28u)], u_input.a)), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(122418u, global0[_wgslsmith_index_u32(99475u, 28u)], 4294967295u, 39478u), vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 28u)], 27789u, 1u)))), 28u)];
            }
            case -1: {
                let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-557.0), _wgslsmith_f_op_f32(-383.0), _wgslsmith_f_op_f32(max(-735.0, 645.0)), _wgslsmith_f_op_f32(-1089.0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(281.0, -1148.0, 306.0, -1194.0))) + vec4<f32>(993.0, -491.0, 1307.0, -3096.0)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-224.0, 1136.0, 830.0, 1124.0) * vec4<f32>(1787.0, 466.0, -295.0, -986.0)) - vec4<f32>(723.0, 1099.0, -506.0, 1507.0)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-457.0, -745.0, 722.0, 478.0), vec4<f32>(-786.0, -326.0, 532.0, 1216.0)))))))));
                var var_1 = u_input.c ^ u_input.b;
                let var_2 = _wgslsmith_mod_u32((_wgslsmith_add_u32(42502u, func_5().d.x) << (~func_3(false, Struct_1(vec2<i32>(u_input.c, u_input.c)), vec4<i32>(64071, u_input.c, u_input.c, -67015)).d.x % 32u)) ^ _wgslsmith_div_u32(1u >> (_wgslsmith_add_u32(53270u, 42974u) % 32u), ~23558u), u_input.a | ~(61879u & max(0u, 1u)));
                var var_3 = func_5();
                global1 = all(select(vec2<bool>(!any(vec3<bool>(true, false, false)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), !select(!vec2<bool>(true, true), !vec2<bool>(false, false), !vec2<bool>(true, false)), all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
            }
            case 0: {
                var var_0 = ~0u;
            }
            case 2147483647: {
                global3 = array<Struct_1, 29>();
            }
            default: {
                var var_0 = Struct_4(Struct_3(!(!(!vec2<bool>(true, true))), func_5(), Struct_2(vec3<i32>(-1) * -vec3<i32>(u_input.c, u_input.b, u_input.b), global3[_wgslsmith_index_u32(70346u, 29u)], func_5().b, ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(u_input.d, 28u)], 4294967295u), vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(66455u, 28u)], u_input.a))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1578.0 + 1099.0), _wgslsmith_div_f32(-751.0, -1130.0)), -346.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000.0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(548.0, -1000.0)))), any(vec3<bool>(true, all(vec2<bool>(true, false)), !false))), global3[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(54683u, u_input.d), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(22475u, 28u)]), false), select(vec2<u32>(u_input.d, u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(9359u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), vec2<bool>(false, true)))), 29u)]);
                var var_1 = min(vec3<i32>(~(-15141 << (~0u % 32u)), u_input.b, ~(~var_0.a.b.c.a.x ^ -var_0.a.b.c.a.x)), vec3<i32>((u_input.b ^ 2147483647) << (max(92247u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(73452u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18541u, 28u)], 28u)])) % 32u), -var_0.a.b.a.x, max(u_input.c, 2147483647) << (~(~0u) % 32u)));
                global1 = !var_0.a.a.x;
                var var_2 = var_0.a;
            }
        }
    }
    let var_0 = 4294967295u;
    return vec3<bool>(true, !any(select(vec4<bool>(false, false, false, false), !vec4<bool>(true, false, true, true), !vec4<bool>(true, true, true, true))), all(select(!vec3<bool>(true, true, false), vec3<bool>(true | true, false, 1249.0 != 506.0), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    if (any(select(func_2(), vec3<bool>(!(-1380.0 == 561.0), !(arg_2.x <= 16750), all(vec4<bool>(true, true, true, true))), select(246.0 >= 1468.0, !false, arg_0 <= arg_0) & (!true | (true == false))))) {
        global2 = _wgslsmith_f_op_f32(-1232.0);
    }
    let var_0 = select(arg_1.d | (abs(reverseBits(vec4<u32>(0u, 6483u, arg_1.d.x, arg_1.d.x))) & ~(~vec4<u32>(1u, 77824u, 13480u, u_input.d))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.d.x, arg_1.d.x, ~33086u, reverseBits(4167u)), arg_1.d, _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.d.x, abs(u_input.a), func_6(true, 1071.0), ~global0[_wgslsmith_index_u32(92487u, 28u)]), arg_1.d)), !(!vec4<bool>(!true, !true, any(vec4<bool>(false, true, true, true)), !true)));
    if (any(!(!(!(!vec3<bool>(true, true, false)))))) {
        if (false) {
            let var_1 = -firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(-2147483647, ~(-1542)), func_8(Struct_3(vec2<bool>(true, false), arg_1, Struct_2(vec3<i32>(1, -1912, 34172), Struct_1(vec2<i32>(-16354, arg_1.b.a.x)), arg_1.c, vec4<u32>(arg_1.d.x, u_input.d, 0u, global0[_wgslsmith_index_u32(0u, 28u)])), vec4<f32>(-1000.0, -1381.0, -721.0, -1017.0), false)), _wgslsmith_sub_i32(arg_2.x, u_input.c)));
            global1 = !false;
            var var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1242.0) * _wgslsmith_f_op_f32(-266.0))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-111.0)))), any(select(vec4<bool>(!false, true, 2147483647 >= -1, !false), select(vec4<bool>(false, false, false, false), !vec4<bool>(false, false, false, false), !vec4<bool>(true, false, false, false)), vec4<bool>(false, 40593u == 73743u, !true, any(vec3<bool>(false, false, true))))), true, true);
        }
        for (var var_1 = i32(-1) * -15443; var_1 < 9726; var_1 += 1) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
        let var_1 = 16665u;
    }
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    global3 = array<Struct_1, 29>();
    return 19618u;
}

fn func_9(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_3 {
    for (var var_0 = -43929; var_0 < 2147483647; var_0 += 1) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        break;
    }
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(39583u, 0u, 33948u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.a), vec3<u32>(1u, u_input.a, 0u)))), vec3<u32>(countOneBits(9876u), u_input.d, firstTrailingBit(u_input.d)) ^ vec3<u32>(global0[_wgslsmith_index_u32(4294967295u ^ global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 0u >> (41627u % 32u), func_1(-3900, Struct_2(vec3<i32>(arg_2.x, arg_2.x, -39560), Struct_1(vec2<i32>(-101038, u_input.c)), Struct_1(arg_2.zy), vec4<u32>(u_input.a, 1u, 0u, global0[_wgslsmith_index_u32(0u, 28u)])), vec4<i32>(arg_0, u_input.b, 11877, arg_2.x)))), abs(_wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31228u, 28u)], 28u)]))), _wgslsmith_sub_u32(73537u, u_input.a ^ 4294967295u))));
    global1 = all(!(!func_2().xx));
    let var_1 = 1u & (~global0[_wgslsmith_index_u32(var_0.x, 28u)] | ~(~(98383u | 42685u)));
    if (arg_1) {
        loop {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            var var_2 = max(_wgslsmith_add_u32(_wgslsmith_sub_u32((global0[_wgslsmith_index_u32(36506u, 28u)] << (9964u % 32u)) & firstTrailingBit(var_1), ~1u), var_1), max(4294967295u, abs(0u) ^ _wgslsmith_add_u32(firstLeadingBit(u_input.d), _wgslsmith_dot_vec2_u32(var_0, var_0))));
            global0 = array<u32, 28>();
            let var_3 = 0u;
            break;
        }
        for (var var_2 = 23567; var_2 > 2147483647; ) {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1807.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -502.0) - _wgslsmith_f_op_f32(f32(-1.0) * -434.0))) - _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))));
            continue;
        }
        var var_2 = Struct_4(Struct_3(vec2<bool>(arg_1, !arg_1 && true), func_5(), Struct_2(func_5().a, Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(0, u_input.c), arg_3.a)), Struct_1(vec2<i32>(arg_3.a.x, arg_3.a.x)), ~vec4<u32>(1u, 49468u, 1u, global0[_wgslsmith_index_u32(15571u, 28u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-486.0, -967.0, _wgslsmith_f_op_f32(-1995.0), -1465.0) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000.0, -626.0, -351.0, 451.0))))), !true), func_3(any(vec3<bool>(!false, any(vec4<bool>(false, arg_1, arg_1, arg_1)), func_4())), func_5().c, ~(firstLeadingBit(vec4<i32>(0, u_input.b, arg_0, -19179)) << (select(vec4<u32>(var_1, var_1, 94685u, 30574u), vec4<u32>(u_input.a, var_0.x, u_input.a, 7206u), arg_1) % vec4<u32>(32u)))).c);
        let var_3 = func_2();
        var_2 = Struct_4(Struct_3(func_2().yx, func_5(), func_5(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.d.x, 980.0, -713.0, -1092.0))), select(_wgslsmith_f_op_f32(-var_2.a.d.x) >= _wgslsmith_div_f32(var_2.a.d.x, var_2.a.d.x), var_2.a.e, func_2().x)), Struct_1(arg_2.zx));
    }
    return Struct_3(select(!(!(!vec2<bool>(arg_1, arg_1))), vec2<bool>(arg_1, (arg_3.a.x < arg_3.a.x) & true), any(!vec2<bool>(true, false)) == arg_1), Struct_2(arg_2, Struct_1(~vec2<i32>(21937, arg_2.x)), func_3(select(1000.0 <= -652.0, !arg_1, !false), arg_3, -(vec4<i32>(arg_3.a.x, u_input.b, -1688, -29861) & vec4<i32>(arg_0, arg_2.x, 0, 54910))).c, ~vec4<u32>(1u, var_1, 1u, 0u) | reverseBits(vec4<u32>(2075u, 28571u, var_0.x, 15557u))), Struct_2(-arg_2, Struct_1(~(vec2<i32>(47838, 72830) ^ arg_3.a)), func_5().c, ~vec4<u32>(func_3(arg_1, arg_3, vec4<i32>(arg_0, -3828, 1, arg_3.a.x)).d.x, func_6(false, 415.0), func_6(false, 1445.0), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 28u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-765.0, _wgslsmith_f_op_f32(f32(-1.0) * -686.0), 391.0, 1000.0))), any(!(!(!vec3<bool>(false, arg_1, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_9(u_input.b, max(31682u, func_1(u_input.b, Struct_2(vec3<i32>(1, 21849, u_input.b), Struct_1(vec2<i32>(u_input.c, -1)), Struct_1(vec2<i32>(0, u_input.c)), vec4<u32>(10098u, 1426u, u_input.a, u_input.a)), vec4<i32>(u_input.b, -21954, 49970, 51690))) == global0[_wgslsmith_index_u32(24891u, 28u)], func_3(!false != (true == false), global3[_wgslsmith_index_u32(func_5().d.x, 29u)], ~(vec4<i32>(-29107, 4803, 15806, 59158) >> (vec4<u32>(u_input.a, u_input.d, 9005u, 1u) % vec4<u32>(32u)))).a, global3[_wgslsmith_index_u32(1u, 29u)]), Struct_1(vec2<i32>(-(17575 | -1), i32(-1) * -32245)));
    let var_1 = var_0.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-345.0)), 513.0) * 1791.0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(891.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.a.d.x)))) + var_0.a.d.x)));
}

