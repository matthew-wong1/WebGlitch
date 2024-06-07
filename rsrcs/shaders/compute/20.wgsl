// {"0:0":[48,54,227,116,173,137,193,214,183,202,125,127,70,82,179,191]}
// Seed: 14260623415297663871

struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(577.0, 474.0, 999.0, -2136.0, 1644.0);

var<private> global1: bool;

var<private> global2: Struct_3;

var<private> LOOP_COUNTERS: array<u32, 25>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn func_6(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> bool {
    for (; ; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        let var_0 = ~arg_2.a.yy;
        global0 = array<f32, 5>();
    }
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
    }
    switch (i32(-1) * -11268) {
        case -1: {
            let var_0 = reverseBits(select(select(global2.b.yx & _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(1, 6750)), u_input.b, !select(vec2<bool>(false, true), vec2<bool>(false, false), false)), _wgslsmith_sub_vec2_i32(vec2<i32>(-11407, global2.b.x), _wgslsmith_sub_vec2_i32(global2.b.yx, u_input.b)) & min(~vec2<i32>(global2.b.x, global2.e), global2.b.yz), false));
            var var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(trunc(969.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a.b.x)) - arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_2.a.x, 5u)]))), _wgslsmith_f_op_f32(floor(1043.0)));
        }
        case 0: {
            var var_0 = min(~(global2.b.zy & u_input.b), ~(countOneBits(countOneBits(vec2<i32>(17624, global2.b.x))) | vec2<i32>(firstLeadingBit(arg_2.b), arg_2.b ^ 0)));
        }
        default: {
            global2 = Struct_3(global2.a, -vec3<i32>(reverseBits(abs(global2.e)), -24762, -_wgslsmith_clamp_i32(global2.e, global2.b.x, -1)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.a * global0[_wgslsmith_index_u32(arg_0, 5u)]) + _wgslsmith_div_f32(global2.c.x, 319.0))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 5u)]), arg_1.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.d + global2.c) - vec4<f32>(_wgslsmith_f_op_f32(step(467.0, global0[_wgslsmith_index_u32(u_input.a, 5u)])), global0[_wgslsmith_index_u32(u_input.a, 5u)], arg_1.x, _wgslsmith_f_op_f32(f32(-1.0) * -2501.0))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(2344.0, 1200.0, arg_1.x, 380.0) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(379.0, global2.d.x, arg_1.x, 1000.0)))))))), _wgslsmith_add_i32(~global2.b.x, countOneBits(~(0))));
            switch (~countOneBits(arg_2.b)) {
                case -21795: {
                    return true;
                }
                default: {
                    var var_0 = select(vec3<bool>(global2.b.x <= min(_wgslsmith_sub_i32(u_input.b.x, -47399), arg_2.b & -1), false && false, false), vec3<bool>(!(!true) || !any(vec4<bool>(false, true, false, false)), true, false), _wgslsmith_div_i32(reverseBits(firstLeadingBit(-1)), _wgslsmith_mult_i32(2147483647 ^ global2.e, 12043)) < select((17162 >> (22118u % 32u)) ^ arg_2.b, _wgslsmith_mod_i32(~(-2147483648), _wgslsmith_mult_i32(global2.b.x, arg_2.b)), reverseBits(global2.b.x) < u_input.b.x));
                    let var_1 = ~(-(vec4<i32>(2147483647, u_input.b.x, firstLeadingBit(global2.e), arg_2.b << (0u % 32u)) & vec4<i32>(arg_2.b << (1u % 32u), firstLeadingBit(arg_2.b), -2147483647, -arg_2.b)));
                    var var_2 = select(abs(vec4<u32>(0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 108651u), arg_2.a.xz) % 32u), _wgslsmith_mult_u32(~u_input.a, 82638u), 4294967295u, firstLeadingBit(~u_input.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.a >> (arg_2.a % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a.x, 1u, 72926u), vec3<u32>(4294967295u, 4294967295u, 0u))), (1u | 21141u) | ~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 0u, u_input.a, arg_0), vec4<u32>(arg_2.a.x, u_input.a, 36999u, 4294967295u)), 0u), _wgslsmith_add_vec4_u32(vec4<u32>(1u & 1u, 25284u, arg_2.a.x, abs(4764u)), firstLeadingBit(vec4<u32>(arg_0, arg_2.a.x, 84759u, arg_2.a.x)))), any(select(select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, var_0.x, true, var_0.x), all(vec2<bool>(var_0.x, var_0.x))), vec4<bool>(var_0.x || var_0.x, var_0.x, -960.0 >= arg_1.x, -328.0 > 465.0), select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, false, false, var_0.x)), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), false), !vec4<bool>(true, false, true, var_0.x)))));
                }
            }
            var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-880.0, -378.0, global2.a.a) + arg_1) - vec3<f32>(arg_1.x, global0[_wgslsmith_index_u32(arg_2.a.x, 5u)], -251.0)), _wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_f_op_vec3_f32(trunc(arg_1))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_f_op_vec3_f32(-global2.c.yyw)))));
            var var_1 = arg_2;
            switch (-20252) {
                case -26480: {
                    var var_2 = var_1.a;
                    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global2.c.wz, vec2<f32>(-1000.0, global2.a.b.x), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 5u)], -1417.0)))), global2.d.yz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(8086u, 5u)], 1000.0, 1000.0) - _wgslsmith_f_op_vec3_f32(floor(global2.c.zxz))))), global2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -330.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), -556.0, arg_1.x)), vec4<f32>(-313.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-167.0, 909.0)), global2.a.b.x) * 2936.0), arg_1.x, _wgslsmith_f_op_f32(sign(210.0))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(~global2.e, _wgslsmith_div_i32(arg_2.b, arg_2.b), abs(arg_2.b), -23946), max(-vec4<i32>(-42467, u_input.b.x, var_1.b, 40429), ~vec4<i32>(1, var_1.b, arg_2.b, -18845))));
                    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -674.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) + global2.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1108.0)))));
                }
                case -47308: {
                    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 5u)])), arg_1.x)), global0[_wgslsmith_index_u32(57040u, 5u)], 1000.0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(618.0, 1436.0, var_0.x)), any(vec2<bool>(true, true)))), false)));
                }
                default: {
                    let var_2 = Struct_3(global2.a, global2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-664.0, _wgslsmith_f_op_f32(478.0 - _wgslsmith_div_f32(global2.a.c.x, -946.0)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(global2.c.x))), global0[_wgslsmith_index_u32(u_input.a, 5u)])), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2.c * global2.d))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_1.a.x, 5u)])), _wgslsmith_f_op_f32(floor(-514.0)), global2.a.b.x, var_0.x)))), ~(~(-3784)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1 >> (arg_2.a.x % 32u), ~1), vec2<i32>(var_1.b, -13068 << (arg_2.a.x % 32u))));
                }
            }
        }
    }
    global0 = array<f32, 5>();
    global2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_vec2_f32(-arg_1.xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global2.c.xyy))) - vec3<f32>(_wgslsmith_f_op_f32(-global2.a.a), _wgslsmith_div_f32(arg_1.x, -1690.0), arg_1.x))), vec3<i32>(_wgslsmith_add_i32(2368, _wgslsmith_add_i32(countOneBits(1931), ~2147483647)), -32891, min(0, arg_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 107.0, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 5u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.d.x), 646.0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1407.0, 460.0, arg_1.x, global0[_wgslsmith_index_u32(u_input.a, 5u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(857.0, arg_1.x, -1076.0, global2.a.b.x)))), !all(vec3<bool>(false, true, true)))), ~(~global2.b.x));
    return !(!any(!vec2<bool>(false, true))) & false;
}

fn func_5(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(vec3<u32>(~4294967295u, arg_0.x, _wgslsmith_mult_u32(8220u, ~arg_0.x)), u_input.b.x);
    global0 = array<f32, 5>();
    if (!true) {
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_1 = Struct_4(vec2<f32>(879.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.c.x + 496.0))), 329.0)));
            let var_2 = select(vec2<bool>(any(vec4<bool>(global2.d.x < -1479.0, !false, any(vec3<bool>(true, true, false)), !true)), !func_6(73u, vec3<f32>(1901.0, -443.0, global2.c.x), Struct_2(var_0.a, global2.e))), select(!vec2<bool>(any(vec2<bool>(false, true)), false), !vec2<bool>(true && true, func_6(66359u, vec3<f32>(-1600.0, global0[_wgslsmith_index_u32(22295u, 5u)], global2.a.a), var_0)), !select(var_0.a.x >= 11811u, !false, any(vec4<bool>(false, false, false, false)))), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false), select(true, true, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), !(!vec2<bool>(true, true))));
            global1 = func_6(~(~_wgslsmith_mod_u32(42756u, 43169u ^ 0u)), global2.c.yzx, Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(33759u, 1u, var_0.a.x), var_0.a << (var_0.a % vec3<u32>(32u))), abs(countOneBits(_wgslsmith_clamp_i32(-20288, var_0.b, -1)))));
        }
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            continue;
        }
        if (!(!true)) {
            global2 = Struct_3(global2.a, ~global2.b, _wgslsmith_div_vec4_f32(global2.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global2.d)))))), _wgslsmith_f_op_vec4_f32(select(global2.d, _wgslsmith_f_op_vec4_f32(-global2.d), !vec4<bool>(false, false, 4294967295u > var_0.a.x, any(vec2<bool>(false, false))))), u_input.b.x);
        }
        let var_1 = ~u_input.a;
        var var_2 = vec4<bool>(func_6(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.a.x, firstTrailingBit(u_input.a), _wgslsmith_sub_u32(var_1, arg_0.x), u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_1, 438u, 4294967295u), vec4<u32>(4624u, var_1, var_1, arg_0.x))), global2.a.c, Struct_2(var_0.a, _wgslsmith_add_i32(-17583, 44457))), !true, !false, !false);
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_1 = var_0;
        continue;
    }
    for (var var_1 = -max(0, global2.e); func_6(4294967295u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.a.c.x - -2018.0)))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(var_0.a.zz, vec2<u32>(var_0.a.x, u_input.a)) << (abs(9467u) % 32u)), 5u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 5u)])))))), var_0); var_1 -= 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        break;
    }
    return var_0;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<f32>) -> i32 {
    switch (-1) {
        case -2147483648: {
            var var_0 = func_5(vec3<u32>(~abs(u_input.a ^ 32409u), abs(71436u), 68080u));
            global2 = Struct_3(Struct_1(963.0, _wgslsmith_f_op_vec2_f32(-global2.d.yy), arg_1.yyz), ~countOneBits(~vec3<i32>(global2.e, var_0.b, global2.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) - global2.c), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(arg_2))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.d.x, global0[_wgslsmith_index_u32(16645u, 5u)], -654.0, -183.0), vec4<f32>(arg_2.x, -375.0, arg_1.x, global2.a.a))) * arg_2) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global2.c, arg_1)), vec4<f32>(-1789.0, 977.0, -1000.0, arg_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -137.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-1477.0 * global0[_wgslsmith_index_u32(15460u, 5u)])), global2.c.x)), -14210);
        }
        case 6990: {
            if (!false) {
            }
            let var_0 = func_5(~func_5(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 1u, 7373u), vec3<u32>(45605u, 44911u, u_input.a))).a);
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            }
            global1 = all(select(!(!vec3<bool>(true, false, false)), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), !vec3<bool>(true, false, true)), vec3<bool>(!false, false & true, !false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), !(min(u_input.a, 0u) >= 50176u)));
        }
        case 0: {
            let var_0 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, 2168u), ~_wgslsmith_sub_u32(~arg_0 >> (func_5(vec3<u32>(1u, u_input.a, 1u)).a.x % 32u), ~17227u));
            let var_1 = global2.b.x;
            var var_2 = 1106.0;
            switch (_wgslsmith_div_i32(max(-1, 16662), _wgslsmith_mod_i32(global2.e, i32(-1) * -global2.b.x)) | -26327) {
                case -45622: {
                    global1 = !any(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), !vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), true));
                    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_2 - global2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-145.0, global0[_wgslsmith_index_u32(arg_0, 5u)], -1545.0, 1000.0) - arg_1))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(232.0, arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]) * global2.d))))));
                    global1 = _wgslsmith_mod_i32(global2.b.x, 2147483647) >= -20720;
                }
                case 3929: {
                    let var_3 = Struct_3(global2.a, ~vec3<i32>(-1, -35892, ~global2.b.x) >> (~min(~vec3<u32>(3922u, u_input.a, 0u), firstTrailingBit(vec3<u32>(4294967295u, var_0, u_input.a))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -802.0, global2.a.a, 225.0) * vec4<f32>(arg_2.x, -1300.0, arg_1.x, global2.a.a)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_2, global2.c)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(615.0, arg_1.x, arg_1.x, -498.0))))))), 9714);
                    let var_4 = ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, ~21541u), _wgslsmith_mult_u32(u_input.a, var_0));
                }
                case -3078: {
                    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-495.0), global0[_wgslsmith_index_u32(~min(18661u, var_0), 5u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * 122.0), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.x), 907.0), -141.0, !false)));
                    global1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245.0)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-550.0)) + _wgslsmith_f_op_f32(trunc(arg_2.x))))));
                    global2 = Struct_3(global2.a, _wgslsmith_add_vec3_i32(vec3<i32>(~_wgslsmith_clamp_i32(global2.b.x, u_input.b.x, u_input.b.x), countOneBits(global2.e), global2.e), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -2147483648), 2147483647), global2.b)), vec4<f32>(_wgslsmith_f_op_f32(1706.0 * global2.a.a), _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x + 638.0))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), global0[_wgslsmith_index_u32(reverseBits(var_0), 5u)]), 482.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.x, -1520.0))))), vec4<f32>(var_3.x, global0[_wgslsmith_index_u32(~(~107405u), 5u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(171.0))) * 646.0), arg_2.x), u_input.b.x);
                    global0 = array<f32, 5>();
                }
                default: {
                    let var_3 = Struct_4(arg_2.wx);
                    var var_4 = ~func_5(reverseBits(firstLeadingBit(vec3<u32>(52678u, 4294967295u, u_input.a))) >> (vec3<u32>(_wgslsmith_sub_u32(var_0, 31624u), var_0 ^ var_0, ~0u) % vec3<u32>(32u))).b;
                }
            }
        }
        case 53382: {
            global1 = select(false, all(vec2<bool>(any(vec3<bool>(false, false, false)), !false)), !all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
        }
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        global0 = array<f32, 5>();
    }
    if (false) {
        switch (26338) {
            case -37697: {
                let var_0 = vec4<i32>(-12951, global2.e, i32(-1) * -u_input.b.x, _wgslsmith_dot_vec2_i32(min(~select(vec2<i32>(1, 0), vec2<i32>(u_input.b.x, global2.b.x), false), -vec2<i32>(2147483647, global2.e)), vec2<i32>(-firstLeadingBit(28858), _wgslsmith_sub_i32(global2.e ^ u_input.b.x, func_5(vec3<u32>(arg_0, 48595u, arg_0)).b))));
                global0 = array<f32, 5>();
                var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, ~arg_0, 0u | arg_0, 46284u), reverseBits(~_wgslsmith_mult_vec4_u32(~vec4<u32>(45831u, 57122u, arg_0, u_input.a), ~vec4<u32>(0u, u_input.a, u_input.a, arg_0))));
            }
            case -5436: {
                var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.zzy - vec3<f32>(1219.0, 2214.0, 706.0)) - global2.a.c))) - global2.d.zwy)));
                global2 = Struct_3(global2.a, _wgslsmith_add_vec3_i32(global2.b, select(vec3<i32>(-9908, _wgslsmith_clamp_i32(61638, 0, -7268), -1), ~(-global2.b), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), global0[_wgslsmith_index_u32(0u, 5u)] > 304.0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_2))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -997.0, -979.0, arg_1.x) - arg_1), vec4<f32>(442.0, arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], global2.a.b.x)), arg_2)), _wgslsmith_mod_i32(global2.b.x, -(~reverseBits(global2.e))));
                var var_1 = vec3<bool>(!(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 14118u), vec2<u32>(0u, 7321u)), vec2<u32>(u_input.a, u_input.a)) <= u_input.a), false, all(!vec3<bool>(false || false, all(vec3<bool>(true, false, true)), false && false)));
            }
            case -1: {
                global0 = array<f32, 5>();
                var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-168.0 * -827.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-468.0) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 5u)] - 1210.0))), _wgslsmith_f_op_f32(1718.0 * arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x - 1095.0), _wgslsmith_f_op_f32(482.0 + arg_1.x))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733.0 * arg_2.x))))));
            }
            default: {
                var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1), arg_1) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(-258.0, arg_2.x, global2.a.b.x, global0[_wgslsmith_index_u32(arg_0, 5u)])) - _wgslsmith_f_op_vec4_f32(trunc(global2.d)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(global2.c.x, -322.0), _wgslsmith_f_op_f32(abs(-1555.0)), 100.0, 598.0))))));
                global2 = Struct_3(global2.a, vec3<i32>(_wgslsmith_mult_i32(~0, 1) ^ _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), u_input.b.x, 0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262.0) + _wgslsmith_f_op_f32(global2.c.x + 533.0))), global0[_wgslsmith_index_u32(14924u, 5u)], global0[_wgslsmith_index_u32(countOneBits(~(u_input.a << (u_input.a % 32u))), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(var_0.x * var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-240.0)))), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-936.0 + _wgslsmith_f_op_f32(-702.0 * var_0.x)), 1000.0), 1);
            }
        }
        return abs(~reverseBits(global2.b.x));
    }
    var var_0 = -25110;
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1547.0), 473.0)))));
    return -_wgslsmith_mod_i32(1, _wgslsmith_mod_i32(~u_input.b.x, global2.b.x));
}

fn func_3() -> vec3<u32> {
    let var_0 = !any(!vec3<bool>(false && true, true, false));
    switch (func_4(u_input.a, _wgslsmith_f_op_vec4_f32(round(global2.d)), vec4<f32>(-244.0, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-773.0, global0[_wgslsmith_index_u32(~4294967295u, 5u)]), _wgslsmith_f_op_f32(-global2.a.b.x), var_0)), -1268.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 5u)]) - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(20417u, 5u)]))))))) {
        case -1: {
            let var_1 = min(0u, ~_wgslsmith_add_u32(0u, select(~u_input.a, u_input.a, !false)));
            let var_2 = global2.b.xz;
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                global2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -552.0) + _wgslsmith_f_op_f32(trunc(443.0))), global2.c.zy, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], 685.0, global0[_wgslsmith_index_u32(4294967295u, 5u)]) - global2.a.c)))), global2.b & max(min(global2.b, vec3<i32>(global2.b.x, var_2.x, 0) & vec3<i32>(u_input.b.x, -35842, global2.b.x)), vec3<i32>(-33525, u_input.b.x, var_2.x) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(43906u, 67347u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.d.x, -467.0, 3386.0, global0[_wgslsmith_index_u32(u_input.a, 5u)]))) - global2.d), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 5u)] * global2.a.c.x), _wgslsmith_f_op_f32(-global2.a.b.x), _wgslsmith_f_op_f32(global2.a.c.x + -112.0), _wgslsmith_f_op_f32(global2.d.x + -1459.0)), vec4<bool>(var_0, var_0, true, var_0)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1000.0, _wgslsmith_f_op_f32(f32(-1.0) * -345.0))), 482.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1150.0)), 855.0), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-411.0, -871.0)) * _wgslsmith_f_op_f32(global2.a.a * 1775.0)), 840.0, global0[_wgslsmith_index_u32(19025u, 5u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a.a * global2.d.x))))), global2.e);
            }
        }
        case -24705: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                continue;
            }
            let var_1 = global2.b.x;
            switch (_wgslsmith_add_i32(global2.b.x, firstTrailingBit(~(~(-global2.e))))) {
                case 8127: {
                    let var_2 = global2.a;
                    let var_3 = -firstLeadingBit(~(-(global2.b.x & 1)));
                    global0 = array<f32, 5>();
                    var var_4 = false;
                    var var_5 = Struct_3(global2.a, select(global2.b, global2.b & ~(vec3<i32>(u_input.b.x, u_input.b.x, -15483) & global2.b), any(!vec2<bool>(var_0, var_0))), global2.d, global2.c, 2714 >> (~min(0u, firstTrailingBit(4294967295u)) % 32u));
                }
                case -2147483648: {
                }
                case -84533: {
                    let var_2 = Struct_1(223.0, _wgslsmith_f_op_vec2_f32(-global2.a.c.xy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-406.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(469.0 - -370.0)), -1388.0)));
                    let var_3 = _wgslsmith_f_op_f32(step(505.0, var_2.b.x));
                    var var_4 = Struct_2(max(~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 29920u, 4294967295u), select(vec3<u32>(0u, u_input.a, 27022u), vec3<u32>(4494u, u_input.a, u_input.a), vec3<bool>(var_0, var_0, var_0))) % vec3<u32>(32u)), select(firstLeadingBit(vec3<u32>(10348u, 97246u, 43205u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 6022u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), var_0) | vec3<u32>(u_input.a << (0u % 32u), 16775u, 48408u)), min(~(countOneBits(-1) & -u_input.b.x), -1));
                }
                case 2147483647: {
                    let var_2 = Struct_4(global2.d.ww);
                    global2 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000.0, var_2.a.x) + vec2<f32>(var_2.a.x, -731.0)) + _wgslsmith_f_op_vec2_f32(max(var_2.a, var_2.a)))), global2.a.c), global2.b, global2.c, global2.c, u_input.b.x);
                }
                default: {
                    global2 = Struct_3(Struct_1(global2.c.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global2.d.yz))))), global2.c.xww), max(_wgslsmith_div_vec3_i32(vec3<i32>(0, 0, u_input.b.x), -global2.b) ^ select(global2.b, vec3<i32>(u_input.b.x, 1, -10293) | global2.b, false), _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(15752, u_input.b.x, 15427), vec3<i32>(-30658, -8726, u_input.b.x))), min(vec3<i32>(-10033, u_input.b.x, -52550), _wgslsmith_sub_vec3_i32(global2.b, vec3<i32>(2147483647, -52066, 48655))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13974u, 5u)]), _wgslsmith_f_op_f32(sign(global2.d.x)), _wgslsmith_f_op_f32(-1149.0)))), global2.c, u_input.b.x);
                    global2 = Struct_3(global2.a, vec3<i32>(-1) * -_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b.x, -2147483648, 3640), global2.b, -global2.b), vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 5u)], 995.0)), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(u_input.a), u_input.a), 5u)])), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), ~4294967295u), 5u)]), global2.c, 6082);
                    let var_2 = vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mod_u32(~59894u | firstTrailingBit(u_input.a), ~4294967295u), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 94766u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))) ^ ~0u), _wgslsmith_div_u32(~reverseBits(4294967295u), u_input.a) << (59549u % 32u));
                    global1 = var_0;
                    global2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 14185u), vec2<u32>(u_input.a, 26808u)), 5u)])), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 5u)]), global2.d.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(514.0, global2.a.b.x, 942.0)))))), vec3<i32>(u_input.b.x, _wgslsmith_add_i32(-31802 >> (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u), -13630 & _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), ~(-1)), _wgslsmith_f_op_vec4_f32(-global2.c), _wgslsmith_f_op_vec4_f32(sign(global2.c)), -global2.e);
                }
            }
        }
        case 20619: {
        }
        default: {
            switch (_wgslsmith_mult_i32(u_input.b.x | func_5(abs(~vec3<u32>(24749u, 0u, 0u))).b, ~global2.b.x)) {
                case 2147483647: {
                    let var_1 = vec3<u32>(u_input.a, 24286u, _wgslsmith_sub_u32((_wgslsmith_mult_u32(u_input.a, 10410u) << (4294967295u % 32u)) ^ ~u_input.a, _wgslsmith_div_u32(min(4294967295u, 1u), ~0u << (~32567u % 32u))));
                }
                case -2147483648: {
                }
                default: {
                    var var_1 = _wgslsmith_mod_vec4_i32(max(-vec4<i32>(-1, _wgslsmith_div_i32(global2.e, global2.e), _wgslsmith_sub_i32(u_input.b.x, global2.b.x), max(-1, global2.b.x)), vec4<i32>(global2.e, -(u_input.b.x | 0), 1, ~(global2.e | 1))), -reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-53446, -2147483648, global2.e, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(41350, -1, 0, global2.b.x), vec4<i32>(u_input.b.x, -2147483648, u_input.b.x, global2.b.x)))));
                    var_1 = ~vec4<i32>(_wgslsmith_mod_i32(var_1.x | global2.b.x, 7330) | ((u_input.b.x >> (u_input.a % 32u)) << (_wgslsmith_mult_u32(u_input.a, 52271u) % 32u)), -30779, u_input.b.x, i32(-1) * -14036);
                }
            }
            let var_1 = false;
            let var_2 = global2.a;
        }
    }
    global1 = any(select(!select(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, var_0, var_0, false), var_0), vec4<bool>(false, false, var_0, var_0), !true), !(!vec4<bool>(false, var_0, var_0, false)), !select(vec4<bool>(var_0, var_0, false, false), !vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, false, var_0, var_0))));
    global2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1364.0))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-734.0 - global2.c.x))), 1770.0), global2.a.c), global2.b, _wgslsmith_div_vec4_f32(global2.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2688.0), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(47215u, 5u)]), global0[_wgslsmith_index_u32(func_5(vec3<u32>(0u, u_input.a, 1u)).a.x, 5u)], _wgslsmith_f_op_f32(-global2.a.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c + _wgslsmith_f_op_vec4_f32(global2.c + _wgslsmith_f_op_vec4_f32(-global2.c)))), ~max(global2.b.x << (1u % 32u), firstTrailingBit(i32(-1) * -1)));
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        if (false) {
            let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global2.d.x, global0[_wgslsmith_index_u32(1u, 5u)], false)), 151.0)) * _wgslsmith_f_op_vec2_f32(global2.d.wx * global2.a.c.xz)));
            var var_2 = func_5(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 1u)) | ~u_input.a, u_input.a, 1u));
            let var_3 = vec4<bool>(!var_0, !true, var_0, any(select(select(!vec4<bool>(false, false, true, var_0), !vec4<bool>(true, true, true, var_0), all(vec3<bool>(false, false, true))), !vec4<bool>(true, false, var_0, var_0), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, false), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, false, false, false))))));
            var var_4 = any(vec3<bool>(any(var_3), true, var_3.x));
        }
        if (!any(!select(select(vec4<bool>(true, true, var_0, false), vec4<bool>(false, var_0, false, var_0), true), vec4<bool>(true, true, var_0, true), select(var_0, var_0, var_0)))) {
            let var_1 = func_5(~(~select(firstLeadingBit(vec3<u32>(81417u, u_input.a, 38099u)), ~vec3<u32>(64484u, u_input.a, 96372u), false))).a.x;
            let var_2 = ~global2.b;
            continue;
        }
        for (var var_1 = -58033; var_1 >= -2147483648; var_1 += 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            let var_2 = ~(func_5(~firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, u_input.a))).a & max(max(vec3<u32>(u_input.a, 35143u, u_input.a), vec3<u32>(0u, 50968u, 0u)) & ~vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, ~2652u, _wgslsmith_dot_vec4_u32(vec4<u32>(40842u, 27815u, 45780u, u_input.a), vec4<u32>(u_input.a, 79808u, u_input.a, u_input.a)))));
        }
        var var_1 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~(u_input.a ^ u_input.a)), max(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 62144u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) >> (min(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u)));
    }
    return _wgslsmith_add_vec3_u32(abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, 15115u), reverseBits(vec3<u32>(u_input.a, 1u, u_input.a)))), _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(34154u, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a), min(vec3<u32>(u_input.a, 32978u, u_input.a), vec3<u32>(1u, u_input.a, 0u))), ~vec3<u32>(~u_input.a, ~10322u, u_input.a)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    for (var var_0 = -1; 401.0 != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 5u)] + -224.0) * global2.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-841.0 - -1220.0)))); var_0 -= 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        break;
    }
    for (var var_0 = 353; 4294967295u != 33793u; var_0 += 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        switch (_wgslsmith_dot_vec3_i32(vec3<i32>(~(-abs(-27220)), 2147483647, u_input.b.x), global2.b)) {
            case 15701: {
            }
            case 35372: {
                continue;
            }
            default: {
                global2 = arg_1;
            }
        }
        break;
    }
    var var_0 = Struct_2(func_3(), ~_wgslsmith_sub_i32(0, ~0) & (~(-67671 << (u_input.a % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0, u_input.b.x, u_input.b.x, 0) | vec4<i32>(global2.b.x, global2.b.x, global2.e, 20124), vec4<i32>(10052, u_input.b.x, 24049, 15638))));
    var var_1 = vec2<f32>(798.0, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-507.0 + global2.c.x)))));
    let var_2 = !(!(!vec2<bool>(true, arg_0)));
    return arg_1.a;
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-145.0, 186.0), global2.a.b, true)))) - _wgslsmith_f_op_vec2_f32(-arg_0.a.c.xy))));
    var var_1 = ~u_input.a;
    switch (u_input.b.x) {
        case 43435: {
            if (true | !true) {
                let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(103.0 + -126.0), var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, arg_0.c.x, global2.c.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, arg_0.c.x, -396.0)))) + vec3<f32>(global2.c.x, var_0.a.x, var_0.a.x))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483648, 50675), global2.b.zy), ~global2.b.x, select(arg_0.e, 12846, false)), -vec3<i32>(2147483647, -2147483648, 30784), ~arg_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, arg_0.d.x, global0[_wgslsmith_index_u32(1u, 5u)], -601.0) + vec4<f32>(global0[_wgslsmith_index_u32(39511u, 5u)], 444.0, var_0.a.x, 1224.0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, arg_0.c.x, 163.0, var_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, global0[_wgslsmith_index_u32(u_input.a, 5u)], arg_0.c.x, 341.0))))) - vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105.0 + global2.a.c.x)), _wgslsmith_f_op_f32(-1894.0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(989.0 * var_0.a.x))))), -2147483648);
                var_1 = u_input.a;
                let var_3 = Struct_2(firstLeadingBit(~(~vec3<u32>(34096u, u_input.a, u_input.a))) & vec3<u32>(u_input.a, ~1u, ~firstLeadingBit(u_input.a)), arg_0.b.x);
            }
            global0 = array<f32, 5>();
            var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 15466u)), firstTrailingBit(1u)), vec2<u32>(~0u, reverseBits(4294967295u))), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, ~0u, ~69841u), 0u)), ~select(_wgslsmith_add_vec2_u32(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, u_input.a))), ~(~vec2<u32>(0u, 0u)), _wgslsmith_div_i32(-1, -32997) < abs(global2.e)));
            for (var var_2 = 1; ; ) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                let var_3 = _wgslsmith_f_op_f32(f32(-1.0) * -1070.0);
                var_2 = _wgslsmith_dot_vec2_i32(arg_0.b.yz, ~arg_0.b.xx);
            }
        }
        default: {
            switch (global2.e) {
                default: {
                    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, arg_0.c.x))), arg_0.d.zy)));
                    let var_3 = var_0;
                    global2 = Struct_3(func_2(all(select(vec2<bool>(false, false), vec2<bool>(false, true), u_input.a <= u_input.a)), Struct_3(func_2(!false, Struct_3(Struct_1(arg_0.d.x, vec2<f32>(1000.0, 714.0), vec3<f32>(1289.0, global0[_wgslsmith_index_u32(u_input.a, 5u)], var_2.a.x)), arg_0.b, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], -214.0, 2018.0, arg_0.c.x), global2.c, arg_0.e), 508.0, func_2(true, Struct_3(arg_0.a, global2.b, vec4<f32>(-192.0, 810.0, 266.0, 395.0), vec4<f32>(1972.0, -1212.0, var_0.a.x, arg_0.d.x), 36282), global0[_wgslsmith_index_u32(u_input.a, 5u)], global2.a)), (global2.b << (vec3<u32>(37340u, u_input.a, 23680u) % vec3<u32>(32u))) & (vec3<i32>(arg_0.e, -44885, 2147483647) & global2.b), _wgslsmith_f_op_vec4_f32(max(arg_0.c, arg_0.d)), global2.d, arg_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)) + var_0.a.x), Struct_1(_wgslsmith_f_op_f32(-342.0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.a.c.yz, var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1094.0)), global2.d.x, _wgslsmith_div_f32(1511.0, -1000.0)))), ~countOneBits(~arg_0.b), vec4<f32>(_wgslsmith_f_op_f32(-229.0), 672.0, _wgslsmith_f_op_f32(arg_0.a.c.x * 892.0), var_0.a.x), global2.d, ~2147483647);
                    global1 = any(select(vec4<bool>(!all(vec2<bool>(false, false)), false, reverseBits(global2.b.x) >= firstLeadingBit(0), true), vec4<bool>((true || true) && true, false, !any(vec2<bool>(true, true)), !false & !false), true));
                }
            }
        }
    }
    var var_2 = func_2(!true, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.a.a, _wgslsmith_f_op_f32(global2.a.a + -1163.0))), -101.0, true))), Struct_1(1000.0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, 872.0) + arg_0.c.zz), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(529.0, var_0.a.x), global2.d.yy)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-259.0, -549.0), _wgslsmith_f_op_vec2_f32(var_0.a * arg_0.a.b))), !(!vec2<bool>(true, false)))), vec3<f32>(_wgslsmith_f_op_f32(func_2(false, arg_0, 341.0, arg_0.a).a * _wgslsmith_f_op_f32(2887.0 + -132.0)), _wgslsmith_f_op_f32(-1044.0 * _wgslsmith_f_op_f32(select(-1128.0, arg_0.c.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - -2175.0)))));
    switch (~abs(19290)) {
        case 0: {
            global1 = false;
            var var_3 = select(!vec4<bool>(false, any(!vec4<bool>(true, false, false, false)), !true || any(vec2<bool>(true, true)), !(!false)), !select(vec4<bool>(func_6(u_input.a, vec3<f32>(var_0.a.x, var_0.a.x, 499.0), Struct_2(vec3<u32>(13228u, 4294967295u, 1u), global2.e)), true | true, !false, any(vec2<bool>(false, false))), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, false, false, true)), select(true, true, true)), all(vec3<bool>(true, false, false))), u_input.a >= 1u);
            return Struct_1(var_2.b.x, global2.c.yz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 605.0, _wgslsmith_f_op_f32(-445.0 * var_2.b.x)))));
        }
        case 17294: {
            var var_3 = vec3<u32>(~max(func_3().x, func_5(vec3<u32>(u_input.a, u_input.a, 1u)).a.x >> (0u % 32u)), u_input.a, _wgslsmith_clamp_u32(abs(0u) << ((u_input.a & ~u_input.a) % 32u), _wgslsmith_div_u32(u_input.a, min(u_input.a, _wgslsmith_add_u32(11856u, 67388u))), 4294967295u));
            let var_4 = u_input.a;
            var var_5 = abs(global2.b.xy);
            for (var var_6 = -28345; ; ) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                continue;
            }
        }
        case 1: {
            if (all(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))))) {
                let var_3 = select(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_0.e, global2.b.x), global2.b.x, 19753 >> (39844u % 32u)), -global2.e), u_input.b, all(vec2<bool>(!true, true))) << (reverseBits(_wgslsmith_mod_vec2_u32(reverseBits(firstTrailingBit(vec2<u32>(u_input.a, 3305u))), reverseBits(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(51564u, 8712u), vec2<bool>(false, false))))) % vec2<u32>(32u));
                let var_4 = ~(~vec4<i32>(firstTrailingBit(var_3.x), 0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e, global2.e, arg_0.b.x, var_3.x), vec4<i32>(0, 64785, 1, u_input.b.x)) >> (0u % 32u), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_3.x, global2.e, arg_0.b.x), vec4<i32>(-15114, var_3.x, u_input.b.x, 45352)))));
            }
            let var_3 = vec2<bool>(!true == true, select(all(vec2<bool>(!false, !false)), var_0.a.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1199.0 + global2.a.a) + _wgslsmith_f_op_f32(-arg_0.a.c.x)), 1 < (~34583 >> (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u))));
            let var_4 = ~(-u_input.b.x);
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                let var_5 = var_3.x;
                let var_6 = global2.a;
                var var_7 = var_5;
            }
            if (!(!(~u_input.a > _wgslsmith_div_u32(u_input.a >> (u_input.a % 32u), 1283u)))) {
                var_1 = ~(u_input.a >> ((1u | _wgslsmith_div_u32(u_input.a, u_input.a)) % 32u)) | ~_wgslsmith_mult_u32(~(~4294967295u), ~u_input.a);
                global0 = array<f32, 5>();
                let var_5 = ~vec3<i32>(-19786, _wgslsmith_mult_i32(~2147483647, arg_0.b.x), global2.e);
                let var_6 = !(!(u_input.b.x != countOneBits(~(-2147483648))));
            }
        }
        case 7041: {
            for (var var_3 = 2147483647; false; var_3 += 1) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                var_2 = func_2(any(vec2<bool>(func_5(vec3<u32>(0u, 1u, 1u)).b == arg_0.e, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))), Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(-217.0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, -1000.0) + vec2<f32>(global0[_wgslsmith_index_u32(36936u, 5u)], var_2.c.x)), vec3<f32>(-1053.0, _wgslsmith_f_op_f32(-var_0.a.x), 190.0)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(select(arg_0.b, vec3<i32>(global2.e, -17838, -1), vec3<bool>(true, false, true)), arg_0.b, -global2.b), vec3<i32>(abs(-2147483648), 25960, 2147483647)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c))), arg_0.c, -6887), 207.0, arg_0.a);
                let var_4 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -274.0), _wgslsmith_f_op_f32(-1167.0 + _wgslsmith_f_op_f32(-arg_0.c.x)), all(vec4<bool>(false, true, true, true)))), _wgslsmith_div_f32(global2.a.a, _wgslsmith_f_op_f32(ceil(arg_0.c.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), func_2(any(vec2<bool>(true, true)), Struct_3(Struct_1(-820.0, vec2<f32>(-1000.0, -854.0), var_2.c), vec3<i32>(global2.b.x, -21360, 1507), vec4<f32>(var_0.a.x, 731.0, global2.d.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<f32>(var_2.b.x, -217.0, -1125.0, var_0.a.x), global2.b.x), 516.0, arg_0.a).c.x), _wgslsmith_f_op_f32(-arg_0.c.x))), arg_0.d.x);
                global2 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(459.0 * global2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, var_0.a.x) - _wgslsmith_f_op_f32(-465.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2.d.xz)))), arg_0.a.c), arg_0.b, _wgslsmith_f_op_vec4_f32(-global2.c), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(409.0, 441.0)))))), 2264.0, _wgslsmith_f_op_f32(-564.0), _wgslsmith_f_op_f32(-var_0.a.x)), firstTrailingBit(global2.b.x));
            }
            if (!(!select(true, true, !(!false)))) {
                var var_3 = Struct_3(global2.a, _wgslsmith_add_vec3_i32(vec3<i32>(global2.e, arg_0.e, ~0), arg_0.b) >> ((vec3<u32>(u_input.a, 4294967295u, 1u) >> (~countOneBits(vec3<u32>(u_input.a, 4294967295u, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<f32>(1025.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 5u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 5u)] + -459.0))), _wgslsmith_f_op_f32(floor(-563.0)), arg_0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.d, global2.d)), vec4<f32>(_wgslsmith_f_op_f32(step(-740.0, 1594.0)), global2.c.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(arg_0.d.x * -998.0))) - vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(trunc(var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), -227.0)), ~u_input.b.x);
            }
        }
        default: {
            for (var var_3 = 17242; false; var_3 += 1) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                var var_4 = _wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 31865u), vec2<u32>(u_input.a, 1u)), reverseBits(vec2<u32>(u_input.a, u_input.a)))) >> ((~abs(vec2<u32>(u_input.a, u_input.a)) << (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(vec2<u32>(55238u, u_input.a)));
            }
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_3 = arg_0;
                var_3 = arg_0;
                break;
            }
            let var_3 = min(~_wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 1u, u_input.a, 28561u), false), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 64846u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a ^ 53536u, u_input.a & 27807u, u_input.a, u_input.a), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 0u), abs(vec4<u32>(119428u, 4294967295u, u_input.a, u_input.a))))));
            if (true) {
            }
        }
    }
    return func_2(!(select(true, 476.0 != global2.c.x, !false) && all(vec4<bool>(true, true, true, true))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-1137.0), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1111.0, var_0.a.x), _wgslsmith_f_op_vec2_f32(min(arg_0.c.xw, global2.d.yx)), func_6(17620u, vec3<f32>(1000.0, -529.0, var_2.c.x), Struct_2(vec3<u32>(u_input.a, u_input.a, u_input.a), global2.b.x)))), global2.d.wwz), vec3<i32>(-1 | 2658, -arg_0.b.x, _wgslsmith_dot_vec2_i32(~u_input.b, _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, vec2<i32>(global2.e, -75740)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(118591u, 5u)]))), _wgslsmith_f_op_f32(-682.0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-942.0, 1618.0)))), var_2.a), global2.d, u_input.b.x), func_2((~(-34830) ^ (2147483647 | global2.b.x)) <= _wgslsmith_mod_i32(select(-2147483648, global2.b.x, false), _wgslsmith_mult_i32(u_input.b.x, -44348)), arg_0, 348.0, global2.a).a, Struct_1(global2.d.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-598.0, -1466.0) + vec2<f32>(global2.c.x, var_0.a.x))), var_2.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), 246.0, _wgslsmith_f_op_f32(step(-1260.0, -1279.0))))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<u32>) -> f32 {
    global1 = any(!vec3<bool>(!(false & true), !(arg_1.a.x <= global2.d.x), true));
    let var_0 = func_5(~arg_2.www);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a)), global2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-675.0, _wgslsmith_f_op_f32(min(arg_1.a.x, arg_0.b.x))))))));
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
    }
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3().x, u_input.a, ~max(_wgslsmith_div_u32(0u, 0u), arg_2.x)), 5u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.yx - _wgslsmith_f_op_vec2_f32(-arg_1.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(371.0, -290.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(470.0, arg_1.a.x)))), global2.c.xy)), func_7(Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(1018.0)), _wgslsmith_f_op_vec2_f32(exp2(global2.c.wx)), global2.d.wwx), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(global2.e, -2147483648, 15955)), vec3<i32>(var_0.b, var_0.b, var_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d) - _wgslsmith_f_op_vec4_f32(global2.d * global2.d)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global2.c), vec4<f32>(global2.d.x, arg_0.b.x, var_1.x, var_1.x))), global2.e)).c);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), -172.0)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = array<f32, 5>();
    if (arg_2) {
        global0 = array<f32, 5>();
        var var_0 = _wgslsmith_mult_vec4_u32(firstTrailingBit(min(vec4<u32>(u_input.a, 5067u, 0u, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, 29339u, u_input.a))) & vec4<u32>(0u, 4294967295u, ~(u_input.a << (0u % 32u)), 108559u), countOneBits(~(~vec4<u32>(0u, u_input.a, 4294967295u, 15414u))) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), abs(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), ~vec4<u32>(29820u, u_input.a, u_input.a, 53803u)) % vec4<u32>(32u)));
        var var_1 = Struct_1(_wgslsmith_f_op_f32(func_8(func_7(Struct_3(func_2(false, Struct_3(global2.a, global2.b, global2.d, global2.d, global2.e), arg_1, global2.a), countOneBits(arg_0), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(304.0, global2.a.a, 697.0, global2.c.x))), global2.c, -1)), Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], -1206.0) * global2.a.b), vec2<f32>(-561.0, arg_1), select(vec2<bool>(false, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2))))), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), vec4<u32>(0u, u_input.a, var_0.x, u_input.a)), _wgslsmith_dot_vec2_u32(abs(var_0.wy), vec2<u32>(7262u, 1u)), _wgslsmith_dot_vec2_u32(func_5(vec3<u32>(4314u, u_input.a, u_input.a)).a.xz, var_0.zx)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-594.0 - -1854.0), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(11359u, 5u)], 1881.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779.0 - 801.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.b) + _wgslsmith_f_op_vec2_f32(-global2.a.b))))), vec3<f32>(func_2(all(select(vec2<bool>(false, true), vec2<bool>(true, arg_2), vec2<bool>(arg_2, true))), Struct_3(Struct_1(global2.c.x, vec2<f32>(1000.0, -1149.0), global2.a.c), vec3<i32>(1, global2.b.x, 55829), _wgslsmith_f_op_vec4_f32(-global2.d), _wgslsmith_f_op_vec4_f32(-global2.c), -18031), global0[_wgslsmith_index_u32(u_input.a, 5u)], Struct_1(1000.0, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, 423.0) + global2.c.zy), _wgslsmith_f_op_vec3_f32(global2.d.yxz + global2.a.c))).c.x, -115.0, 1280.0));
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            continue;
        }
    }
    var var_0 = arg_0;
    let var_1 = arg_0.xz;
    var var_2 = all(select(select(select(select(vec4<bool>(false, true, arg_2, true), vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(arg_2, false, arg_2, true)), !vec4<bool>(arg_2, false, arg_2, arg_2), !vec4<bool>(arg_2, arg_2, arg_2, arg_2)), !select(vec4<bool>(false, arg_2, true, false), vec4<bool>(false, true, arg_2, false), vec4<bool>(true, arg_2, arg_2, false)), false), !vec4<bool>(true | arg_2, all(vec4<bool>(true, arg_2, arg_2, arg_2)), all(vec2<bool>(arg_2, true)), arg_2), select(vec4<bool>(2924u >= 28327u, true, false, true), select(select(vec4<bool>(false, arg_2, false, false), vec4<bool>(arg_2, true, false, arg_2), arg_2), vec4<bool>(true, arg_2, true, false), !vec4<bool>(true, false, false, false)), false)));
    return func_7(Struct_3(global2.a, arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -165.0, -664.0, global0[_wgslsmith_index_u32(u_input.a, 5u)]) + vec4<f32>(-334.0, 1000.0, global0[_wgslsmith_index_u32(61063u, 5u)], 418.0)), _wgslsmith_f_op_vec4_f32(global2.c - vec4<f32>(arg_1, 512.0, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global2.c + vec4<f32>(1043.0, -424.0, arg_1, arg_1)), vec4<f32>(global2.a.b.x, global2.a.c.x, arg_1, -525.0), global0[_wgslsmith_index_u32(25371u, 5u)] < 929.0)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(411.0, 554.0, -1131.0, -561.0))))), arg_2)), -4114));
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = 19198; var_0 >= -2147483648; var_0 += 1) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        let var_1 = vec3<u32>(u_input.a, 4294967295u & (u_input.a | u_input.a), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~u_input.a, 131u ^ u_input.a, u_input.a ^ u_input.a), ~(~vec4<u32>(u_input.a, 4294967295u, 8788u, 4294967295u))), u_input.a));
        for (; any(!(!select(!vec4<bool>(true, true, false, true), !vec4<bool>(false, false, true, false), !vec4<bool>(false, true, true, false)))); ) {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            global0 = array<f32, 5>();
            global0 = array<f32, 5>();
            var var_2 = func_1(_wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(90782), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, global2.e, u_input.b.x), vec3<i32>(global2.e, 37387, global2.b.x)), 42844), global2.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656.0)), global2.d.x, !false)), global2.c.x)), (~abs(-25973) | u_input.b.x) >= _wgslsmith_add_i32(-2147483648, -(~global2.b.x)));
            var var_3 = !all(!select(!vec4<bool>(false, false, true, false), !vec4<bool>(true, false, true, false), !vec4<bool>(true, true, true, false)));
        }
        let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(-1007.0 - -565.0))) * -1498.0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1110.0 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.b.x, -339.0))) * 1770.0));
        let var_3 = _wgslsmith_f_op_vec2_f32(trunc(global2.c.xz));
        continue;
    }
    global0 = array<f32, 5>();
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        break;
    }
    var var_0 = max(-(vec4<i32>(-1) * -vec4<i32>(-1, 30395, global2.e, global2.e)), -firstTrailingBit(vec4<i32>(func_5(vec3<u32>(4294967295u, u_input.a, u_input.a)).b, i32(-1) * -9791, global2.e, -global2.b.x)));
    let var_1 = Struct_4(global2.d.zz);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.zz);
}

