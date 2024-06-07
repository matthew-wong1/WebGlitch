// {"0:0":[13,215,189,221]}
// Seed: 10420783439153003674

struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(1, -2147483648, 10470, 2147483647), 4294967295u, -641.0);

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<i32>(-29188, -32257, -11958, 1), 4294967295u, 2655.0), Struct_1(vec4<i32>(1, 20961, -16373, -49553), 1u, -1515.0), Struct_1(vec4<i32>(2147483647, -27318, 1, 0), 54329u, -612.0), Struct_1(vec4<i32>(1, 33574, -13208, 27130), 7168u, -885.0), Struct_1(vec4<i32>(1, -2147483648, 1, 37569), 7786u, -620.0), Struct_1(vec4<i32>(12283, -18076, -32022, 31247), 20552u, -288.0), Struct_1(vec4<i32>(-2147483648, -18978, -1, 1), 51809u, -1000.0), Struct_1(vec4<i32>(1, -34533, 1, 15253), 4294967295u, 2190.0), Struct_1(vec4<i32>(-48681, -1, -2147483648, 70604), 1u, -217.0), Struct_1(vec4<i32>(1202, 1, 1, 40903), 1u, 1408.0), Struct_1(vec4<i32>(2147483647, -2147483648, -50844, -1956), 1u, 349.0), Struct_1(vec4<i32>(8684, -6284, -47546, -1), 9373u, 610.0), Struct_1(vec4<i32>(-43679, -7482, 1, -29139), 48658u, 1311.0), Struct_1(vec4<i32>(1, 0, -32557, -36682), 4294967295u, 309.0), Struct_1(vec4<i32>(-2147483648, -2172, -8076, -2147483648), 1u, 535.0), Struct_1(vec4<i32>(-1, -1, 24265, 0), 27243u, -1274.0), Struct_1(vec4<i32>(41581, 16884, 0, 15952), 78729u, -293.0), Struct_1(vec4<i32>(-56207, -1, -2147483648, 1), 0u, 448.0), Struct_1(vec4<i32>(2147483647, -15866, 2147483647, 0), 26860u, 811.0), Struct_1(vec4<i32>(111440, -27933, -1, -2147483648), 25012u, -244.0), Struct_1(vec4<i32>(11551, -31330, 38679, -1675), 22689u, -1077.0));

var<private> LOOP_COUNTERS: array<u32, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn func_6(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.yx);
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b, 24u)], 24u)], 24u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1u)), max(36384u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(588u, 52180u), 24u)], 24u)])), 21u)];
    global2 = Struct_1(vec4<i32>(~58866, var_1.a.x, -u_input.a, select(~reverseBits(global2.a.x), ~(-1), false)), ~firstLeadingBit(countOneBits(1u)), _wgslsmith_f_op_f32(max(188.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + _wgslsmith_f_op_f32(ceil(-824.0))), 237.0))));
    switch (~((~u_input.a | var_1.a.x) ^ ~reverseBits(1))) {
        case 1: {
            global3 = array<Struct_1, 21>();
            global0 = array<u32, 24>();
        }
        default: {
            global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(137.0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1000.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c)) + _wgslsmith_f_op_f32(select(-430.0, global1.x, arg_0)))))), global1.x);
            var var_2 = true;
            global3 = array<Struct_1, 21>();
            var var_3 = _wgslsmith_f_op_f32(ceil(global1.x));
            for (var var_4 = -2147483648; ; ) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                let var_5 = ~(~select(vec2<u32>(abs(global2.b), var_1.b), _wgslsmith_mod_vec2_u32(min(vec2<u32>(global0[_wgslsmith_index_u32(24303u, 24u)], var_1.b), vec2<u32>(4294967295u, var_1.b)), firstTrailingBit(vec2<u32>(0u, global0[_wgslsmith_index_u32(global2.b, 24u)]))), select(vec2<bool>(false, arg_1), vec2<bool>(false, false), !false)));
                let var_6 = -220.0;
            }
        }
    }
    var var_2 = Struct_1(vec4<i32>(~var_1.a.x, ~max(35751, global2.a.x), ~(~_wgslsmith_mod_i32(24074, var_1.a.x)), var_1.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(var_1.b, 24u)], global0[_wgslsmith_index_u32(var_1.b, 24u)], 4294967295u, global2.b), vec4<u32>(global2.b, 0u, var_1.b, global0[_wgslsmith_index_u32(var_1.b, 24u)])) % 32u)), ~global0[_wgslsmith_index_u32(firstTrailingBit(~var_1.b), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    return -1;
}

fn func_5(arg_0: bool) -> vec4<bool> {
    if ((u_input.a <= u_input.a) != !(arg_0 || (_wgslsmith_f_op_f32(trunc(global2.c)) >= _wgslsmith_f_op_f32(-global2.c)))) {
        switch (func_6(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global2.b, 44u), vec2<u32>(global0[_wgslsmith_index_u32(global2.b, 24u)], global2.b)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], global2.b)), ~(~0u)) < global2.b, true & true)) {
            case 16187: {
                global2 = global3[_wgslsmith_index_u32(13093u | 4294967295u, 21u)];
                let var_0 = Struct_1(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(0, -59316, global2.a.x, 26609), max(vec4<i32>(31223, global2.a.x, u_input.a, 5971), vec4<i32>(20995, 13834, u_input.a, 24823))) ^ global2.a), firstTrailingBit(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, global2.b, 56147u, 3254u)), _wgslsmith_sub_vec4_u32(vec4<u32>(16976u, 4294967295u, 1u, 14075u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74863u, 24u)], 24u)], global0[_wgslsmith_index_u32(global2.b, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b, 24u)], 24u)])))), _wgslsmith_f_op_f32(select(-544.0, _wgslsmith_f_op_f32(f32(-1.0) * -506.0), !(!arg_0))));
                var var_1 = select(!vec2<bool>(all(vec4<bool>(arg_0, false, arg_0, false)), !select(arg_0, false, false)), select(vec2<bool>((global2.b < global2.b) && !arg_0, all(vec3<bool>(false, false, true))), vec2<bool>(true, false), vec2<bool>(!(!arg_0), all(vec2<bool>(arg_0, false)))), !false);
                global1 = vec3<f32>(global2.c, -328.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-622.0 + global1.x) + global2.c));
            }
            case 1: {
                var var_0 = global3[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(1u, max(_wgslsmith_add_u32(global2.b, 80620u), 1u)) & abs(_wgslsmith_div_u32(33724u, _wgslsmith_mod_u32(global2.b, global0[_wgslsmith_index_u32(global2.b, 24u)])))), 21u)];
            }
            case 41311: {
                var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.c, -326.0, 1116.0, global2.c)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 879.0, global2.c, -1781.0), vec4<f32>(-321.0, global1.x, 1000.0, global1.x))))));
                var var_1 = !any(select(vec3<bool>(false, !true, arg_0), !vec3<bool>(arg_0, true, arg_0), global2.c < -186.0));
                let var_2 = min(16029u, ~11636u);
                let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(-104.0), arg_0 && !false));
                var var_4 = select(firstTrailingBit(-_wgslsmith_sub_vec3_i32(-vec3<i32>(global2.a.x, u_input.a, u_input.a), select(vec3<i32>(global2.a.x, u_input.a, u_input.a), global2.a.xyw, vec3<bool>(arg_0, false, false)))), min(global2.a.wyw >> ((~vec3<u32>(var_2, 4294967295u, global2.b) | ~vec3<u32>(25678u, 38436u, var_2)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, global2.a.x, -1), vec3<i32>(u_input.a, u_input.a, -5903)) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(58536u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78110u, 24u)], 24u)], 28912u), vec4<u32>(1u, global2.b, var_2, global2.b)), firstTrailingBit(11971u), global0[_wgslsmith_index_u32(~var_2, 24u)]) % vec3<u32>(32u))), select(select(!select(vec3<bool>(arg_0, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true)), arg_0), vec3<bool>(!false, true, arg_0), all(vec4<bool>(any(vec3<bool>(true, arg_0, arg_0)), false, all(vec4<bool>(false, true, arg_0, arg_0)), 1u >= var_2))));
            }
            default: {
                var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~(~global2.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u >> ((4294967295u >> (1u % 32u)) % 32u), ~0u), firstLeadingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(global2.b, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(108996u, 24u)], global2.b))))), 21u)];
                var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + _wgslsmith_f_op_f32(global1.x * var_0.c))), _wgslsmith_f_op_f32(var_0.c * -2032.0)));
                let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(global2.b, global0[_wgslsmith_index_u32(var_0.b, 24u)], global0[_wgslsmith_index_u32(var_0.b, 24u)])), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(11330u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b, 24u)], 24u)], global2.b), vec3<u32>(var_0.b, 60465u, global0[_wgslsmith_index_u32(var_0.b, 24u)])), abs(vec3<u32>(global2.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(94374u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(1u, 24u)])))) >> (~abs(abs(vec3<u32>(1u, global2.b, 0u))) % vec3<u32>(32u)), reverseBits(vec3<u32>(max(global2.b ^ var_0.b, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.b, 24u)], 1601u)), var_0.b, ~global2.b)));
                let var_3 = global3[_wgslsmith_index_u32(global2.b, 21u)];
                return select(vec4<bool>(true, !arg_0, select(!false, arg_0 | arg_0, !true) || (_wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(round(var_0.c))), arg_0), !(!(!vec4<bool>(arg_0, true, arg_0, arg_0))), vec4<bool>(!all(vec2<bool>(false, false)), arg_0 & (_wgslsmith_f_op_f32(-950.0) < _wgslsmith_f_op_f32(max(var_0.c, global1.x))), !arg_0, !false));
            }
        }
        global3 = array<Struct_1, 21>();
        var var_0 = global2.a.x;
    }
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        switch (firstTrailingBit(global2.a.x)) {
            case -1: {
            }
            case -58098: {
                var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x)))) + global1.x);
                var var_1 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96990u, 24u)], 21u)];
                var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~min(global0[_wgslsmith_index_u32(~var_1.b, 24u)], ~0u), reverseBits(_wgslsmith_add_u32(~var_1.b, countOneBits(global2.b)))), 21u)];
                continue;
            }
            default: {
                let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 0u), vec2<u32>(4294967295u, global2.b), vec2<u32>(75040u, global0[_wgslsmith_index_u32(26182u, 24u)])), _wgslsmith_div_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22170u, 24u)], 24u)], global2.b)), max(vec2<u32>(global0[_wgslsmith_index_u32(global2.b, 24u)], global2.b) | vec2<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<u32>(0u, 25139u) << (vec2<u32>(global2.b, 4294967295u) % vec2<u32>(32u))))) >> (_wgslsmith_mod_u32(abs(global2.b) >> (_wgslsmith_add_u32(~68608u, ~73499u) % 32u), _wgslsmith_add_u32(~countOneBits(global2.b), max(global0[_wgslsmith_index_u32(countOneBits(59888u), 24u)], global2.b))) % 32u), 21u)];
                global2 = Struct_1(select(~min(vec4<i32>(var_0.a.x, 2147483647, global2.a.x, var_0.a.x), var_0.a), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, var_0.a.x, u_input.a, 25233), _wgslsmith_sub_vec4_i32(global2.a, vec4<i32>(global2.a.x, -2147483648, 12627, 0))), vec4<bool>(arg_0, true, false, true)) << (min(vec4<u32>(~global2.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)] | global2.b, 0u, 1u ^ global2.b), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.b, 1u, global2.b, global2.b), vec4<u32>(0u, var_0.b, var_0.b, global2.b))) % vec4<u32>(32u)), abs(global0[_wgslsmith_index_u32(var_0.b >> (6190u % 32u), 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1297.0, global1.x) + _wgslsmith_f_op_f32(step(104.0, _wgslsmith_f_op_f32(sign(global2.c))))) - global2.c));
                var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-450.0, 987.0, 1176.0)))), vec3<f32>(-1000.0, var_0.c, 545.0))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, global2.c, global2.c)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 793.0, global2.c) - vec3<f32>(290.0, 728.0, 1217.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, var_0.c, var_0.c) - vec3<f32>(global2.c, 325.0, global2.c)))), vec3<f32>(var_0.c, -1599.0, -645.0))));
                let var_2 = Struct_1(select(var_0.a, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.x, -65237, global2.a.x), global2.a.ywx) << ((12284u << (160352u % 32u)) % 32u), u_input.a, min(2384, _wgslsmith_dot_vec4_i32(var_0.a, global2.a)), var_0.a.x), arg_0 | arg_0), 1u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(356.0, -919.0)))), _wgslsmith_f_op_f32(-global2.c))));
                break;
            }
        }
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(floor(-779.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * 1146.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-global2.c))) + _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000.0 + -153.0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(176.0)) - _wgslsmith_f_op_f32(global2.c * global1.x))))));
            global3 = array<Struct_1, 21>();
            global3 = array<Struct_1, 21>();
            continue;
        }
        let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(global2.a.zwx, global2.a.zyx) ^ _wgslsmith_div_i32(4942, global2.a.x), _wgslsmith_div_i32(min(global2.a.x, 28550), -2147483648), select(0, global2.a.x, arg_0), ~(global2.a.x >> (0u % 32u))), vec4<i32>(-37825, select(min(global2.a.x, global2.a.x), _wgslsmith_add_i32(-18659, u_input.a), select(false, false, arg_0)), abs(_wgslsmith_sub_i32(32956, global2.a.x)), u_input.a)) | (global2.a >> (vec4<u32>(~abs(global0[_wgslsmith_index_u32(4294967295u, 24u)]), select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)] | 11499u, global0[_wgslsmith_index_u32(32206u, 24u)], any(vec2<bool>(arg_0, false))), global0[_wgslsmith_index_u32(global2.b, 24u)], global2.b) % vec4<u32>(32u)));
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            continue;
        }
        global3 = array<Struct_1, 21>();
    }
    var var_0 = Struct_1(global2.a, _wgslsmith_mult_u32(6360u, global2.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(-524.0)), global2.c));
    global2 = global3[_wgslsmith_index_u32(~0u, 21u)];
    var var_1 = global3[_wgslsmith_index_u32(~global2.b, 21u)];
    return vec4<bool>(!any(!select(vec2<bool>(false, false), vec2<bool>(arg_0, false), true)), arg_0, true, arg_0 == ((_wgslsmith_f_op_f32(-global1.x) != var_1.c) & (false && any(vec2<bool>(true, arg_0)))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = 73554u;
    var var_1 = !select(func_5(!false), !vec4<bool>(!arg_0.x, !arg_0.x, arg_0.x, global1.x < global2.c), func_5(all(vec3<bool>(arg_0.x, true, arg_0.x))));
    var var_2 = ~(~global2.a.wz);
    if (_wgslsmith_f_op_f32(sign(1755.0)) == -425.0) {
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global2.b, 24u)], 1u)) ^ global0[_wgslsmith_index_u32(15983u, 24u)], ~(~global2.b), _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(73352u, 24u)])), vec2<u32>(5661u, abs(global2.b)))), vec3<u32>(~global0[_wgslsmith_index_u32(~global2.b, 24u)], global0[_wgslsmith_index_u32(~(0u & 0u), 24u)], 27703u) << ((vec3<u32>(130362u, _wgslsmith_add_u32(4294967295u, 16333u), _wgslsmith_mod_u32(69045u, 21285u)) ^ ~firstLeadingBit(vec3<u32>(29813u, 4294967295u, 1u))) % vec3<u32>(32u))), 21u)];
        }
    }
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.a, 22105), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(global2.a.x, 666), global2.a.ww), vec2<i32>(global2.a.x, firstLeadingBit(0))), (vec2<i32>(var_2.x, u_input.a) | _wgslsmith_sub_vec2_i32(global2.a.zx, vec2<i32>(-1, -52450))) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(global2.b, 4294967295u), vec2<u32>(global2.b, global2.b)) % vec2<u32>(32u)), vec2<i32>(u_input.a, ~(-2147483648)) & countOneBits(global2.a.yy)));
    return Struct_1(global2.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], global2.b), vec3<u32>(0u, global0[_wgslsmith_index_u32(21944u, 24u)], 4294967295u) ^ vec3<u32>(0u, 46857u, 54825u)) & (countOneBits(31729u) << (39001u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 879.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    switch (~(~u_input.a)) {
        case 0: {
            switch (15149) {
                case 2147483647: {
                    var var_0 = -2147483648;
                    var var_1 = func_4(!vec3<bool>(true, ~global0[_wgslsmith_index_u32(0u, 24u)] > 0u, any(!vec3<bool>(true, false, true))));
                }
                case -2147483648: {
                    var var_0 = ~(~firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(26727u, 24u)]), 4294967295u, 17297u << (0u % 32u), 9968u)));
                    global3 = array<Struct_1, 21>();
                    let var_1 = ~(~global0[_wgslsmith_index_u32(~min(global2.b, global2.b) << (~(arg_0.b ^ global0[_wgslsmith_index_u32(arg_0.b, 24u)]) % 32u), 24u)]);
                    let var_2 = func_4(!vec3<bool>(all(!vec2<bool>(true, false)), !(!false), true));
                    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1102.0, global1.x, var_2.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(1022.0, global2.c, 1322.0) * vec3<f32>(arg_1, arg_1, -608.0)), true))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-248.0 + var_2.c))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(-625.0, -1750.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2247.0, -1547.0, false)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588.0 + 862.0))), _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.c)) * 316.0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-1168.0))))));
                }
                case -1: {
                    global3 = array<Struct_1, 21>();
                    var var_0 = !func_5(any(!vec2<bool>(false, false)) & !(!false)).zy;
                    var_0 = select(func_5(var_0.x).zz, select(vec2<bool>(!select(var_0.x, var_0.x, var_0.x), !(24535 <= global2.a.x)), select(select(!vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), any(vec3<bool>(false, true, var_0.x))), func_5(true).yy, !var_0.x), vec2<bool>(func_5(arg_0.c != 855.0).x, false)), !any(!(!vec4<bool>(var_0.x, true, var_0.x, var_0.x))));
                    var var_1 = global3[_wgslsmith_index_u32(min(abs(4294967295u), abs(countOneBits(global0[_wgslsmith_index_u32(27241u, 24u)]))), 21u)];
                }
                default: {
                    var var_0 = select(select(!vec3<bool>(arg_0.a.x <= -34189, false | false, any(vec3<bool>(false, true, true))), func_5(!true).wzy, !func_5(any(vec3<bool>(true, false, true))).xww), select(func_5(all(vec3<bool>(false, true, false)) & false).yyw, vec3<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), !(false | true)), any(select(vec4<bool>(false, true, true, false), !vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)))), !(!func_5(!false).zwz));
                }
            }
        }
        default: {
            if (all(vec2<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), !(true || all(vec4<bool>(false, false, true, true)))))) {
                var var_0 = Struct_1(vec4<i32>(11632, _wgslsmith_sub_i32(-1758, _wgslsmith_sub_i32(2147483647, abs(2147483647))), max(_wgslsmith_add_i32(0, arg_0.a.x) ^ u_input.a, func_4(vec3<bool>(true, false, true)).a.x), func_4(vec3<bool>(!true, 669.0 == 1000.0, !true)).a.x), select(abs(~(global2.b << (1u % 32u))), func_4(!vec3<bool>(true, true, true)).b, true), -1099.0);
                var var_1 = !select(!select(func_5(true).zwz, select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), !false), !vec3<bool>(all(vec2<bool>(false, false)), true == false, true & true), !vec3<bool>(!false, true, !false));
                global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-649.0, arg_1, -504.0) + vec3<f32>(global1.x, arg_0.c, arg_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -498.0, global1.x) - vec3<f32>(982.0, var_0.c, arg_0.c)))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1131.0, global2.c, 281.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1511.0, -1499.0, 621.0) + vec3<f32>(-1244.0, 1098.0, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, arg_0.c, 528.0)))))));
                global2 = Struct_1(vec4<i32>(func_4(vec3<bool>(arg_0.b < global2.b, var_1.x, false)).a.x, -1, _wgslsmith_add_i32(-global2.a.x, arg_0.a.x) & global2.a.x, _wgslsmith_clamp_i32(-5730, countOneBits(-39405), -global2.a.x) | u_input.a), 5944u, _wgslsmith_f_op_f32(892.0 * _wgslsmith_f_op_f32(f32(-1.0) * -399.0)));
            }
            let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.c)), arg_0.c);
            switch (~(i32(-1) * -_wgslsmith_add_i32(2147483647, ~(-22060)))) {
                case 67710: {
                    let var_1 = !func_5(func_5(all(func_5(false).wz)).x);
                    let var_2 = countOneBits(vec4<u32>(global2.b, _wgslsmith_clamp_u32(firstLeadingBit(arg_0.b >> (arg_0.b % 32u)), ~arg_0.b, 5710u), arg_0.b, max(global2.b, 1u & (0u | 40846u))));
                    let var_3 = countOneBits(_wgslsmith_clamp_vec3_u32(reverseBits(abs(var_2.wzx)), firstLeadingBit(max(var_2.wxw, vec3<u32>(arg_0.b, arg_0.b, global0[_wgslsmith_index_u32(1u, 24u)]) >> (var_2.xzx % vec3<u32>(32u)))), min(var_2.xwz, firstLeadingBit(_wgslsmith_add_vec3_u32(var_2.ywz, vec3<u32>(var_2.x, 4294967295u, var_2.x))))));
                    var var_4 = 55237;
                }
                case 9699: {
                    var var_1 = global3[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(34922u, 24u)] >> (4294967295u % 32u)), 21u)];
                    let var_2 = func_4(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.c))) < _wgslsmith_f_op_f32(-global1.x), !(false == (0 <= 2147483647))));
                    let var_3 = select(!select(vec3<bool>(true & true, !false, select(true, true, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), !vec3<bool>(true, true, false), func_5(true).wxx), 44213 > global2.a.x), vec3<bool>(false, !(!true), arg_1 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237.0) + _wgslsmith_f_op_f32(var_2.c + global2.c))), !(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), all(vec2<bool>(false, true)))));
                }
                case -5542: {
                    let var_1 = max(vec3<u32>(46770u, 0u, ~select(arg_0.b, 4294967295u, true)), (vec3<u32>(40634u, ~global0[_wgslsmith_index_u32(4294967295u, 24u)], 0u << (4294967295u % 32u)) ^ ~(vec3<u32>(arg_0.b, arg_0.b, global2.b) >> (vec3<u32>(89878u, global0[_wgslsmith_index_u32(0u, 24u)], global2.b) % vec3<u32>(32u)))) | firstLeadingBit(vec3<u32>(29881u, 0u >> (arg_0.b % 32u), min(global2.b, 6065u))));
                    global0 = array<u32, 24>();
                }
                case 1: {
                    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~((arg_0.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(53438u, 57078u, global2.b), vec3<u32>(global0[_wgslsmith_index_u32(global2.b, 24u)], 1u, arg_0.b)) % 32u)) << (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(countOneBits(76132u), 24u)], min(30962u, 41318u)) % 32u)), ~4294967295u, ~53325u), 21u)];
                    var var_2 = arg_1;
                    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-890.0, -366.0, var_0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -945.0, _wgslsmith_f_op_f32(ceil(510.0))) + vec3<f32>(_wgslsmith_f_op_f32(floor(839.0)), -480.0, var_0))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(915.0, var_1.c, true))), -108.0, var_1.c), vec3<f32>(_wgslsmith_f_op_f32(arg_1 - var_1.c), var_0, 836.0)));
                }
                default: {
                }
            }
            global2 = func_4(!vec3<bool>(~global2.b <= (0u << (0u % 32u)), false & !false, !(global0[_wgslsmith_index_u32(global2.b, 24u)] == 0u)));
        }
    }
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    global2 = func_4(vec3<bool>(any(vec2<bool>(377u != global2.b, false)), false, false));
    let var_0 = !(~global2.a.x <= ~(i32(-1) * -arg_0.a.x));
    return 57784u;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> bool {
    var var_0 = func_4(func_5(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))).wyw);
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1038.0 * -322.0), _wgslsmith_f_op_f32(trunc(-278.0)), _wgslsmith_div_f32(global2.c, global2.c)), arg_3.zww), _wgslsmith_f_op_vec3_f32(arg_3.xwy * vec3<f32>(-1000.0, _wgslsmith_f_op_f32(-122.0), _wgslsmith_f_op_f32(max(arg_3.x, arg_0.c)))))), _wgslsmith_div_vec3_f32(arg_3.yxw, _wgslsmith_f_op_vec3_f32(arg_3.xwy - arg_3.zyw))));
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_1 = !true;
    }
    global1 = arg_3.zyw;
    let var_1 = !(!select(!(!vec2<bool>(false, true)), vec2<bool>(-62910 >= -6378, any(vec4<bool>(true, true, true, true))), any(vec3<bool>(false, true, true)) == false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * global2.c)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -2296.0), _wgslsmith_f_op_f32(-1570.0)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> i32 {
    global3 = array<Struct_1, 21>();
    if (func_7(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b, 24u)], 21u)], vec4<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 24u)], global0[_wgslsmith_index_u32(reverseBits(global2.b), 24u)], ~_wgslsmith_mult_u32(7992u, global2.b) & reverseBits(func_3(Struct_1(vec4<i32>(-1, arg_2, global2.a.x, global2.a.x), 13074u, 184.0), 1028.0)), 0u), _wgslsmith_div_vec3_u32(vec3<u32>(global2.b, countOneBits(arg_0), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1u)), _wgslsmith_add_vec3_u32(firstTrailingBit(abs(vec3<u32>(arg_0, 0u, 4294967295u))), vec3<u32>(arg_0, ~global2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(arg_0, 24u)], 1u, 1u), vec4<u32>(22838u, 5777u, arg_0, 4294967295u))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), 3292.0, _wgslsmith_f_op_f32(-1784.0 + global2.c), _wgslsmith_f_op_f32(func_4(!vec3<bool>(true, true, false)).c + global2.c)))) {
        var var_0 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(1785u, arg_0, global2.b, 60378u), ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 24u)], global2.b, 4294967295u, 4294967295u) ^ countOneBits(vec4<u32>(global2.b, global0[_wgslsmith_index_u32(4294967295u, 24u)], global2.b, 1u))) & _wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, arg_0, arg_0, 1u)) << (((vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 24u)], global2.b, 36566u, arg_0) | vec4<u32>(arg_0, 57746u, arg_0, global2.b)) << (select(vec4<u32>(global2.b, 10229u, global2.b, 28685u), vec4<u32>(4294967295u, 0u, 13483u, 1u), false) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(28927u, arg_0, _wgslsmith_add_u32(arg_0, ~23519u), abs(~80121u)));
        let var_1 = global2.b;
        let var_2 = arg_0;
        for (var var_3 = u_input.a; !(-20506 != global2.a.x); global2 = func_4(!(!vec3<bool>(!false, !true, arg_2 < global2.a.x)))) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            var_3 = arg_2;
            continue;
        }
    }
    for (var var_0 = 5436; var_0 >= 2147483647; global0 = array<u32, 24>()) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        for (var var_1 = -40167; var_1 < 45099; global1 = vec3<f32>(global2.c, 692.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(938.0)) - 1053.0))))) {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647, -6605, u_input.a, -1) << (vec4<u32>(30829u, arg_0, global2.b, 41868u) % vec4<u32>(32u)), -vec4<i32>(-2147483648, 3014, arg_2, -56513)), _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(global2.a.zz, vec2<i32>(-2147483648, 1)), -1)), ~min(vec2<i32>(10413, global2.a.x) ^ abs(global2.a.zx), _wgslsmith_clamp_vec2_i32(abs(global2.a.yz), max(global2.a.xz, vec2<i32>(-22354, arg_2)), abs(vec2<i32>(-1, 40218)))));
            global3 = array<Struct_1, 21>();
            var_0 = i32(-1) * -arg_2;
        }
        continue;
    }
    global1 = vec3<f32>(arg_1, global1.x, -413.0);
    let var_0 = vec2<bool>(false, any(vec4<bool>(!(-1018.0 > -752.0), !all(vec3<bool>(true, true, false)), func_5(false).x, !func_7(Struct_1(global2.a, arg_0, global1.x), vec4<u32>(22537u, global0[_wgslsmith_index_u32(55877u, 24u)], arg_0, 42711u), vec3<u32>(53575u, 0u, 4294967295u), vec4<f32>(global2.c, 1754.0, 436.0, -420.0)))));
    return firstLeadingBit(func_4(select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), var_0.x && true)).a.x | (1 << (global2.b % 32u)));
}

fn func_1() -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u, 24u)];
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_1 = -_wgslsmith_sub_i32(-global2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(8969, 1, -74893, u_input.a), vec4<i32>(u_input.a, global2.a.x, -40209, u_input.a)) & _wgslsmith_mult_i32(u_input.a, global2.a.x)) ^ func_2(~global0[_wgslsmith_index_u32(71409u, 24u)], _wgslsmith_f_op_f32(-global2.c), ~1);
        for (; any(select(!vec2<bool>(global2.b <= 4294967295u, !true), vec2<bool>(func_5(!false).x, false), func_5(_wgslsmith_div_i32(u_input.a, -2147483648) <= ~(-4003)).xy)); ) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            global2 = Struct_1(select(global2.a, _wgslsmith_add_vec4_i32(global2.a, firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1, var_1, var_1), vec4<i32>(1, var_1, u_input.a, -10764), global2.a))), false), 5363u, -603.0);
            let var_2 = global1.x;
        }
        break;
    }
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(func_4(!vec3<bool>(true, false, true)).c, global2.c, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-542.0)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-210.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1736.0 + -619.0) - global1.x), global2.c)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_div_f32(530.0, global2.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1637.0), -113.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -634.0))))), all(vec4<bool>(!(false || false), any(!vec4<bool>(false, false, false, true)), false, func_5(true).x))));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        continue;
    }
    var var_2 = _wgslsmith_add_i32(~reverseBits(func_2(62287u, var_1.x, -26371)), -u_input.a) >> (global2.b % 32u);
    return ~vec3<u32>(704u, global0[_wgslsmith_index_u32(~(~global2.b), 24u)], ~(~(~global0[_wgslsmith_index_u32(21678u, 24u)])));
}

fn func_8(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, 205.0, global1.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.c, 552.0, global1.x))) + vec3<f32>(arg_1.c, 895.0, global2.c)))));
    if (select(false, (_wgslsmith_div_f32(var_0.x, var_0.x) >= _wgslsmith_f_op_f32(arg_2.c - 856.0)) || all(vec4<bool>(true, false, true, false)), any(!vec4<bool>(true, true, false, true))) & false) {
    }
    var var_1 = arg_2.a.zy;
    var var_2 = ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b, 4294967295u, ~3581u, 0u), ~vec4<u32>(firstLeadingBit(1u), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_2.b, 24u)], 39213u), 0u, arg_1.b)), 24u)];
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        break;
    }
    return firstTrailingBit(0 ^ reverseBits(reverseBits(27900)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-global2.a, 0u, global1.x);
    let var_1 = Struct_1((~(~vec4<i32>(var_0.a.x, 0, -4370, global2.a.x)) >> ((vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35344u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global2.b, 24u)]) & firstTrailingBit(vec4<u32>(global2.b, 0u, var_0.b, global0[_wgslsmith_index_u32(var_0.b, 24u)]))) % vec4<u32>(32u))) ^ vec4<i32>(0, global2.a.x, _wgslsmith_sub_i32(~global2.a.x, min(17276, var_0.a.x)), global2.a.x), 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(475.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * global1.x) - -488.0))), _wgslsmith_f_op_f32(global1.x + 1568.0)));
    let var_2 = Struct_1(vec4<i32>(var_0.a.x, _wgslsmith_sub_i32(func_8(func_1(), Struct_1(global2.a, var_1.b, 2326.0), var_0), 27732 | -1), _wgslsmith_add_i32(69393, global2.a.x), ~(~firstTrailingBit(-2147483648))), 15490u, 795.0);
    var var_3 = Struct_1(var_0.a, reverseBits(abs(var_1.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global2.c)))))));
    var var_4 = var_2.a;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c - 1417.0) * -1471.0), 1, -global2.a, 0 & (_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, -28826, var_1.a.x, global2.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1, 0, 1, var_4.x), var_3.a)) << (~1u % 32u)), 8876);
}

