// {"0:0":[244,66,225,25,203,232,237,101]}
// Seed: 11287719104914616500

struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 17>;

var<private> global2: array<f32, 21>;

var<private> global3: u32 = 0u;

var<private> LOOP_COUNTERS: array<u32, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    let var_0 = arg_0.c;
    global1 = array<bool, 17>();
    global3 = abs(_wgslsmith_mod_u32(17353u, ~global0.b.x));
    let var_1 = arg_0;
    var var_2 = var_0;
    return _wgslsmith_sub_i32(~18607, -(-(~0) | (-1 << (_wgslsmith_add_u32(4294967295u, 1718u) % 32u))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = global0.b;
    global1 = array<bool, 17>();
    if (any(!select(!(!vec4<bool>(arg_2.a, true, true, arg_1)), select(vec4<bool>(false, arg_1, true, arg_1), !vec4<bool>(arg_0.a, global1[_wgslsmith_index_u32(40686u, 17u)], arg_1, arg_1), false), !select(vec4<bool>(arg_0.a, global1[_wgslsmith_index_u32(global0.b.x, 17u)], arg_1, false), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.b.x, 17u)], global1[_wgslsmith_index_u32(31016u, 17u)], false), global1[_wgslsmith_index_u32(1u, 17u)])))) {
        loop {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            break;
        }
        let var_1 = _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 21u)]));
        let var_2 = 1;
    }
    for (var var_1 = 49862; var_1 <= -55169; var_1 += 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        global3 = _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(44069u, arg_0.b.x, u_input.b, 1u), vec4<u32>(4294967295u, 1u, 1u, arg_2.b.b.x))) ^ _wgslsmith_dot_vec3_u32(~global0.b, min(vec3<u32>(20781u, global0.b.x, 1u) >> (arg_2.c.b % vec3<u32>(32u)), global0.b)), ~(~(~reverseBits(u_input.b))), countOneBits(1u));
        var var_2 = all(vec2<bool>(false, arg_0.a));
    }
    global1 = array<bool, 17>();
    return ~reverseBits(abs(~(vec4<u32>(43004u, global0.b.x, 17788u, 86340u) << (vec4<u32>(arg_2.c.b.x, arg_2.c.b.x, 5299u, var_0.x) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> f32 {
    global3 = u_input.b;
    for (var var_0 = 17368; ; var_0 += 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        for (var var_1 = 2147483647 ^ (abs(abs(-2147483648)) ^ countOneBits(func_5(arg_2, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000.0, arg_1), vec2<f32>(arg_1, global2[_wgslsmith_index_u32(global0.b.x, 21u)]), global1[_wgslsmith_index_u32(68447u, 17u)]))))); ; var_1 -= 1) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            let var_2 = arg_2.b;
            continue;
        }
        var var_1 = Struct_1(false, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.b.x, _wgslsmith_mod_u32(1u, 55105u), _wgslsmith_mult_u32(arg_0.b.x, arg_2.b.b.x)), _wgslsmith_add_vec3_u32(countOneBits(arg_2.c.b), reverseBits(arg_0.b))));
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        }
        if (((-(0 | -48483) << (~_wgslsmith_div_u32(var_1.b.x, 31703u) % 32u)) >> (~64161u % 32u)) < ~0) {
            let var_2 = Struct_1(false, vec3<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(76807u, global0.b.x, var_1.b.x, 4294967295u), vec4<u32>(arg_2.c.b.x, global0.b.x, var_1.b.x, global0.b.x))), countOneBits(~max(4294967295u, 34251u)), _wgslsmith_dot_vec4_u32((vec4<u32>(58684u, 63557u, arg_2.c.b.x, arg_2.b.b.x) >> (vec4<u32>(0u, 1u, var_1.b.x, 0u) % vec4<u32>(32u))) & ~vec4<u32>(global0.b.x, arg_2.b.b.x, arg_0.b.x, 4294967295u), ~func_6(Struct_1(false, vec3<u32>(0u, 59893u, global0.b.x)), false, arg_2))));
            var var_3 = ~vec3<u32>(arg_0.b.x, var_1.b.x, 4294967295u);
            let var_4 = Struct_2(any(select(vec4<bool>(var_1.a, !var_1.a, all(vec3<bool>(global0.a, true, arg_0.a)), true != var_1.a), vec4<bool>(true, global0.a, arg_2.b.a, any(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 17u)], arg_2.b.a))), select(select(vec4<bool>(global0.a, var_1.a, var_1.a, global0.a), vec4<bool>(false, arg_2.c.a, false, global0.a), arg_2.a), !vec4<bool>(false, global0.a, var_2.a, true), true))), Struct_1(any(select(vec3<bool>(arg_2.b.a, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)]), select(vec3<bool>(false, true, global0.a), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], arg_0.a, true), vec3<bool>(true, arg_0.a, arg_2.c.a)), false)), vec3<u32>(arg_0.b.x, 0u, _wgslsmith_div_u32(arg_2.b.b.x, arg_0.b.x))), Struct_1(global0.a, ~global0.b));
            var var_5 = Struct_2(!true, arg_0, var_4.b);
            var_0 = 52040;
        }
        var var_2 = 4294967295u;
    }
    let var_0 = Struct_1(all(vec4<bool>(!any(vec4<bool>(true, global1[_wgslsmith_index_u32(117391u, 17u)], true, false)), select(false & global0.a, global1[_wgslsmith_index_u32(~43662u, 17u)], true), false, select(arg_2.b.a, arg_2.b.a, arg_1 != global2[_wgslsmith_index_u32(1u, 21u)]))), arg_2.c.b);
    if (arg_0.a) {
        let var_1 = -2147483648;
        global3 = ~(~global0.b.x) ^ firstLeadingBit(~_wgslsmith_mult_u32(abs(arg_2.b.b.x), ~arg_0.b.x));
        let var_2 = Struct_2(var_0.a != arg_2.a, arg_0, Struct_1(!(!(true & arg_0.a)), min(~global0.b, global0.b)));
        let var_3 = Struct_1(!(1589.0 <= _wgslsmith_f_op_f32(arg_1 + -458.0)), vec3<u32>(arg_2.c.b.x, abs(arg_0.b.x << ((var_0.b.x ^ global0.b.x) % 32u)), 13410u));
        global1 = array<bool, 17>();
    }
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(firstLeadingBit(~arg_2.c.b.x), 21u)])) * _wgslsmith_f_op_f32(-463.0 * -1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-882.0)) * _wgslsmith_f_op_f32(sign(arg_1))) * -127.0))));
}

fn func_7(arg_0: f32, arg_1: f32) -> vec2<i32> {
    if (!(!(!(453.0 >= arg_1)) | all(select(vec3<bool>(global1[_wgslsmith_index_u32(global0.b.x, 17u)], global0.a, global1[_wgslsmith_index_u32(38701u, 17u)]), !vec3<bool>(global0.a, global0.a, true), !vec3<bool>(true, global0.a, false))))) {
        for (var var_0 = 53154; ; global3 = global0.b.x) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            let var_1 = Struct_2(global0.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1169.0) + _wgslsmith_f_op_f32(exp2(arg_0))) <= arg_1, select(~vec3<u32>(1u, u_input.b, global0.b.x), min(global0.b, select(global0.b, global0.b, vec3<bool>(false, global1[_wgslsmith_index_u32(global0.b.x, 17u)], true))), !(!vec3<bool>(global1[_wgslsmith_index_u32(23077u, 17u)], true, global1[_wgslsmith_index_u32(global0.b.x, 17u)])))), Struct_1(true, vec3<u32>(~4294967295u, global0.b.x, 24097u >> (u_input.b % 32u))));
            let var_2 = (vec4<u32>((0u & global0.b.x) ^ _wgslsmith_mult_u32(u_input.b, 4294967295u), ~global0.b.x, 4294967295u, firstLeadingBit(~15580u)) >> (func_6(var_1.c, true, Struct_2(false, var_1.c, Struct_1(true, vec3<u32>(u_input.b, var_1.b.b.x, 0u)))) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(~(1u | 23459u), min(~0u, ~74005u), firstTrailingBit(~var_1.c.b.x), _wgslsmith_dot_vec2_u32(var_1.c.b.yy << (vec2<u32>(u_input.a, var_1.c.b.x) % vec2<u32>(32u)), vec2<u32>(u_input.b, global0.b.x) >> (vec2<u32>(1u, global0.b.x) % vec2<u32>(32u)))), vec4<u32>(u_input.a, (global0.b.x ^ global0.b.x) << (max(global0.b.x, 8355u) % 32u), ~var_1.c.b.x, global0.b.x), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(var_1.c.b.x, 14265u, 1u, u_input.b), vec4<u32>(21080u, 0u, global0.b.x, u_input.b), global1[_wgslsmith_index_u32(var_1.b.b.x, 17u)]), vec4<u32>(54147u, 83028u, u_input.b, var_1.c.b.x)));
            global0 = var_1.b;
            break;
        }
        global2 = array<f32, 21>();
        global1 = array<bool, 17>();
        let var_0 = global2[_wgslsmith_index_u32(~(min(u_input.a, ~firstLeadingBit(u_input.b)) << (~(u_input.a ^ u_input.a) % 32u)), 21u)];
        return max(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(27108 ^ 0, i32(-1) * -352), countOneBits(vec2<i32>(0, 2147483647)) & -vec2<i32>(-1, 42060)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483648, 0, 1), vec3<i32>(27524, 1, -34205)), -2147483648)), -vec2<i32>(~(2659 << (global0.b.x % 32u)), 0));
    }
    if (global1[_wgslsmith_index_u32(15964u << (u_input.a % 32u), 17u)]) {
    }
    switch (-1) {
        case 40243: {
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            }
        }
        case 11979: {
            switch (0) {
                default: {
                }
            }
            let var_0 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstLeadingBit(~global0.b.x), reverseBits(_wgslsmith_clamp_u32(5860u, u_input.b, global0.b.x)), 1u), _wgslsmith_sub_u32(1u >> (~16872u % 32u), _wgslsmith_mult_u32(45232u << (1u % 32u), select(79105u, 14887u, global0.a)))), 17u)], vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(34897u), 4294967295u, ~global0.b.x, 4294967295u), vec4<u32>(countOneBits(global0.b.x), abs(46359u), 966u, ~global0.b.x)), ~_wgslsmith_add_u32(firstTrailingBit(1u), _wgslsmith_mod_u32(u_input.a, 42221u)), 17888u));
            for (var var_1 = -6917; var_1 == 2147483647; ) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            }
            global1 = array<bool, 17>();
        }
        default: {
        }
    }
    for (var var_0 = -50301; var_0 == 16428; var_0 += 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        var var_1 = Struct_1(true, ~global0.b);
        if (any(vec3<bool>(!all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)])), !select(true, !false, -2147483648 <= -15284), !(!var_1.a)))) {
            let var_2 = Struct_2(var_1.a, Struct_1(any(!select(vec2<bool>(var_1.a, true), vec2<bool>(true, global1[_wgslsmith_index_u32(72069u, 17u)]), true)), ~var_1.b), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(4294967295u) & 59410u, ~firstTrailingBit(var_1.b.x)), 17u)], vec3<u32>(1u, _wgslsmith_mult_u32(0u, var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 36614u, 4294967295u), vec3<u32>(global0.b.x, global0.b.x, 46747u))) >> (vec3<u32>(_wgslsmith_mod_u32(var_1.b.x, 1u), abs(0u), 0u) % vec3<u32>(32u))));
            break;
        }
        var_0 = -40890;
    }
    switch (20188 | 19317) {
        case -1: {
            var var_0 = Struct_1(all(vec4<bool>(global0.a, any(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global1[_wgslsmith_index_u32(4294967295u, 17u)]), true)), global0.a, true)), reverseBits(vec3<u32>(~global0.b.x, 4294967295u, max(global0.b.x, 0u))) << (~global0.b % vec3<u32>(32u)));
            var var_1 = arg_1;
        }
        case 61912: {
        }
        case 18888: {
            var var_0 = -2147483647;
            var_0 = _wgslsmith_dot_vec4_i32(-(~(vec4<i32>(-1, -5161, 0, 1) << (firstTrailingBit(vec4<u32>(0u, u_input.a, global0.b.x, 0u)) % vec4<u32>(32u)))), -vec4<i32>(~abs(2147483647), (2147483647 | -14937) << (1u % 32u), 0, min(-18929, _wgslsmith_mult_i32(38046, -46576))));
        }
        default: {
            var var_0 = Struct_1(true | (_wgslsmith_f_op_f32(exp2(-632.0)) > global2[_wgslsmith_index_u32(u_input.a, 21u)]), global0.b);
            if (-42781 != _wgslsmith_sub_i32(firstLeadingBit(-5013), firstLeadingBit(i32(-1) * -58584))) {
                let var_1 = Struct_1(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, global0.b.x, 5431u, 61013u), func_6(Struct_1(global1[_wgslsmith_index_u32(global0.b.x, 17u)], vec3<u32>(94173u, var_0.b.x, 0u)), false, Struct_2(global0.a, Struct_1(false, vec3<u32>(u_input.b, 25903u, global0.b.x)), Struct_1(false, vec3<u32>(4294967295u, 0u, u_input.b)))))) < ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 78725u, 26831u)), vec3<u32>(var_0.b.x, var_0.b.x, u_input.a)), vec3<u32>(1u, global0.b.x, u_input.b));
                global0 = var_1;
            }
            global0 = Struct_1(select(!(-62624 < -18484), global1[_wgslsmith_index_u32(14844u, 17u)], true) | all(select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 17u)], false, global1[_wgslsmith_index_u32(4294967295u, 17u)], var_0.a), vec4<bool>(var_0.a, false, false, global1[_wgslsmith_index_u32(global0.b.x, 17u)]), global0.a || true)), var_0.b);
            for (; true; ) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1954.0), global2[_wgslsmith_index_u32(8441u, 21u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(-952.0))))), select(all(select(!vec4<bool>(false, var_0.a, var_0.a, global0.a), vec4<bool>(false, global0.a, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(26830u, 17u)], var_0.a, global1[_wgslsmith_index_u32(global0.b.x, 17u)]), vec4<bool>(var_0.a, global1[_wgslsmith_index_u32(4294967295u, 17u)], false, false), vec4<bool>(true, true, global0.a, false)))), true && ((4294967295u >= 34697u) & global0.a), select(arg_1 > 360.0, all(vec4<bool>(true, true, true, false)), 28195 < -2147483648) || !(!global1[_wgslsmith_index_u32(0u, 17u)]))));
                let var_2 = Struct_2(global0.a, Struct_1(!false, firstTrailingBit(vec3<u32>(select(4294967295u, 18194u, var_0.a), var_0.b.x, 1u >> (u_input.b % 32u)))), Struct_1(all(!(!vec3<bool>(global0.a, global1[_wgslsmith_index_u32(global0.b.x, 17u)], true))), ~vec3<u32>(~global0.b.x, var_0.b.x & global0.b.x, global0.b.x)));
                var var_3 = Struct_1(!((global1[_wgslsmith_index_u32(~1u, 17u)] & (1 > 1)) && global0.a), firstLeadingBit(select(_wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(global0.b.x, 14679u, var_2.b.b.x)), var_0.b >> (var_2.b.b % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~var_2.c.b.x, 17u)])) & ~vec3<u32>(~27898u, ~var_0.b.x, firstTrailingBit(1u)));
            }
        }
    }
    return -vec2<i32>(firstTrailingBit(-(~2147483647)), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-25378), 15225 << (0u % 32u), i32(-1) * -1, countOneBits(-19065)), reverseBits(reverseBits(vec4<i32>(-24735, -21538, 0, 43512)))));
}

fn func_8(arg_0: vec2<i32>) -> bool {
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
    }
    for (var var_0 = -28736; var_0 != 53670; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        switch (-arg_0.x) {
            default: {
                continue;
            }
        }
        continue;
    }
    var var_0 = Struct_2(true, Struct_1(any(vec2<bool>(global1[_wgslsmith_index_u32(~u_input.a, 17u)], 0u < global0.b.x)), reverseBits(max(vec3<u32>(u_input.b, 4294967295u, 9864u), min(vec3<u32>(0u, 4294967295u, 52981u), vec3<u32>(2443u, 48899u, u_input.b))))), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 17u)], ~(~vec3<u32>(global0.b.x, u_input.b, u_input.a))));
    var var_1 = Struct_2(!(!(_wgslsmith_mod_i32(arg_0.x, arg_0.x) == ~arg_0.x)), Struct_1(!all(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<bool>(true, var_0.b.a, global0.a), global1[_wgslsmith_index_u32(u_input.a, 17u)])), ~var_0.c.b), Struct_1(true, _wgslsmith_mult_vec3_u32(min(_wgslsmith_mult_vec3_u32(global0.b, global0.b), vec3<u32>(u_input.b, var_0.b.b.x, 57398u) << (vec3<u32>(u_input.a, 27809u, 19516u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 2305u, var_0.b.b.x), vec3<u32>(47865u, 4294967295u, global0.b.x) >> (vec3<u32>(global0.b.x, u_input.a, u_input.b) % vec3<u32>(32u))))));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var var_2 = select(vec3<bool>(!(!(!global0.a)), all(select(vec2<bool>(var_1.b.a, false), vec2<bool>(global0.a, true), var_0.c.a)) && !true, !var_1.c.a), vec3<bool>(false, !(!all(vec3<bool>(var_1.b.a, false, true))), false), !vec3<bool>(true, any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], false)), false && (false | global1[_wgslsmith_index_u32(0u, 17u)])));
        var var_3 = var_1.c;
    }
    return global0.a;
}

fn func_3() -> Struct_2 {
    var var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(78853u, 17u)], global1[_wgslsmith_index_u32(global0.b.x, 17u)], !(global1[_wgslsmith_index_u32(u_input.b << (u_input.a % 32u), 17u)] == !true), func_8(func_7(_wgslsmith_f_op_f32(func_4(Struct_1(global0.a, vec3<u32>(u_input.a, 1u, 8934u)), -203.0, Struct_2(global0.a, Struct_1(false, global0.b), Struct_1(false, vec3<u32>(2478u, global0.b.x, global0.b.x))))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0.b.x, 21u)], -1586.0)))), select(!(!vec4<bool>(global0.a, true, true, global0.a)), vec4<bool>(!(global2[_wgslsmith_index_u32(u_input.b, 21u)] > 742.0), !false, false, false), select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(23872u, 17u)], false, true)), vec4<bool>(any(vec3<bool>(global0.a, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])), false | true, !false, global1[_wgslsmith_index_u32(global0.b.x, 17u)]), any(!vec3<bool>(global0.a, global0.a, global0.a)))), global1[_wgslsmith_index_u32(~global0.b.x, 17u)]);
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        if (true | any(vec3<bool>(!var_0.x || false, var_0.x, !false && (var_0.x || false)))) {
            var_0 = select(!select(vec4<bool>(global0.a, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(93486u, global0.b.x), 17u)], !global0.a, var_0.x & true), vec4<bool>(!true, true | false, !global1[_wgslsmith_index_u32(4294967295u, 17u)], 49159u < global0.b.x), all(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0.b.x, 17u)]))), !select(!select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], false, true, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0.b.x, 17u)], true), vec4<bool>(var_0.x, false, false, false)), vec4<bool>(!global0.a, false, 2147483647 <= 11886, -547.0 == global2[_wgslsmith_index_u32(1u, 21u)]), !vec4<bool>(false, var_0.x, var_0.x, true)), !(!(!false) | true));
            continue;
        }
        let var_1 = Struct_1(all(select(!var_0.zxw, !vec3<bool>(var_0.x, global0.a, global0.a), func_8(vec2<i32>(23150, 1)))) & (~abs(13038) == func_5(Struct_2(true, Struct_1(global0.a, vec3<u32>(6848u, global0.b.x, 0u)), Struct_1(global0.a, vec3<u32>(9940u, global0.b.x, 1u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(29511u, 21u)], global2[_wgslsmith_index_u32(54418u, 21u)]) * vec2<f32>(-232.0, global2[_wgslsmith_index_u32(46983u, 21u)])))), global0.b);
        if (41502 >= (func_7(980.0, -502.0).x & ~0)) {
            var var_2 = vec2<u32>(_wgslsmith_div_u32(reverseBits(u_input.a), 31836u), 1u);
            var var_3 = var_1;
            var_2 = global0.b.xy;
            let var_4 = Struct_2(false, var_1, Struct_1(true, vec3<u32>(var_1.b.x, ~(~4294967295u), var_3.b.x)));
            var var_5 = var_4;
        }
        var var_2 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483648, 0) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(38784u, 0u), global0.b.zz) % vec2<u32>(32u))) | vec2<i32>(15024, -14525), select(vec2<i32>(_wgslsmith_add_i32(1, _wgslsmith_mod_i32(-1, -47320)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1, -1300, 1) << (vec3<u32>(4294967295u, u_input.a, u_input.b) % vec3<u32>(32u)), ~vec3<i32>(-4607, -7004, 1))), vec2<i32>(~(-15493), 1), !(-22666 < _wgslsmith_add_i32(-1, -2147483648))));
        var var_3 = 1905u;
    }
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        global3 = firstLeadingBit(~global0.b.x);
        continue;
    }
    if (!true) {
    }
    if (global1[_wgslsmith_index_u32(1u, 17u)]) {
        var_0 = select(select(select(vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], true, true)), false, -23678 > 1, global0.a), !(!vec4<bool>(false, var_0.x, true, true)), select(vec4<bool>(var_0.x, true, false, false), select(vec4<bool>(var_0.x, var_0.x, global0.a, true), vec4<bool>(global0.a, global1[_wgslsmith_index_u32(661u, 17u)], var_0.x, false), vec4<bool>(true, true, true, false)), true)), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(33831u, 17u)], false), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 17u)], true, true), !select(vec4<bool>(var_0.x, global0.a, false, var_0.x), vec4<bool>(true, global0.a, global1[_wgslsmith_index_u32(global0.b.x, 17u)], var_0.x), true)), !global1[_wgslsmith_index_u32(select(abs(47782u), global0.b.x & 50947u, var_0.x), 17u)]), vec4<bool>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(18585u, 21u)] * 231.0) == -1412.0, !((global0.a == global1[_wgslsmith_index_u32(14132u, 17u)]) | false), false, !true), select(select(!(!vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(1u, 17u)])), !(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(global0.b.x, 17u)], var_0.x)), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(104979u, 17u)], all(vec4<bool>(true, global0.a, true, var_0.x)), 976.0 >= global2[_wgslsmith_index_u32(global0.b.x, 21u)])), vec4<bool>(all(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(66916u, 17u)], var_0.x, global0.a, true), vec4<bool>(false, global0.a, global1[_wgslsmith_index_u32(2990u, 17u)], false))), global0.a, !global1[_wgslsmith_index_u32(~u_input.a, 17u)], any(select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(false, true, false, false), true))), vec4<bool>(false, !any(vec4<bool>(false, true, var_0.x, false)), !(!global0.a), global0.a)));
        let var_1 = global2[_wgslsmith_index_u32(~u_input.a, 21u)];
    }
    return Struct_2(true, Struct_1(true, ~(~select(global0.b, vec3<u32>(32044u, 4294967295u, u_input.b), vec3<bool>(global0.a, false, var_0.x)))), Struct_1(all(vec2<bool>(true, !true)), global0.b));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = array<bool, 17>();
    let var_0 = func_3();
    switch (0) {
        default: {
            return func_3().c;
        }
    }
    global1 = array<bool, 17>();
    let var_1 = vec4<f32>(global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 11269u), vec2<u32>(12978u, var_0.b.b.x)) >> (1u % 32u)) ^ 11692u, 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1205.0, -1340.0, !true)) - global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(9289u, ~6018u), 21u)]) * 179.0), global2[_wgslsmith_index_u32(~max(~var_0.c.b.x, 4294967295u), 21u)], 100.0);
    return arg_1;
}

fn func_9(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    switch (-1) {
        case 38613: {
        }
        case 0: {
            let var_0 = min(max(17629u, func_6(arg_2, global1[_wgslsmith_index_u32(8953u, 17u)], Struct_2(arg_0.x >= arg_0.x, Struct_1(global1[_wgslsmith_index_u32(global0.b.x, 17u)], arg_2.b), arg_2)).x), reverseBits(~4294967295u));
        }
        case -2147483648: {
            let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1730.0) + _wgslsmith_f_op_f32(1000.0 + -1000.0))))), global2[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_f32(step(1194.0, global2[_wgslsmith_index_u32(u_input.b, 21u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(24758u, 21u)])) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 21u)])))), -706.0));
        }
        case 11106: {
            switch (arg_0.x) {
                default: {
                    let var_0 = func_3();
                    global2 = array<f32, 21>();
                    let var_1 = global0.a;
                    var var_2 = arg_0.x;
                }
            }
        }
        default: {
            var var_0 = (vec4<i32>(-arg_0.x, arg_0.x << (arg_2.b.x % 32u), func_5(func_3(), _wgslsmith_div_vec2_f32(vec2<f32>(-1026.0, -503.0), vec2<f32>(922.0, global2[_wgslsmith_index_u32(arg_1, 21u)]))), 37702) | vec4<i32>(2147483647, arg_0.x, -abs(19835), 25031)) | arg_0;
            var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(24889u, 21u)], _wgslsmith_f_op_f32(f32(-1.0) * -1063.0)), _wgslsmith_f_op_f32(floor(-1281.0)), !(-281.0 < global2[_wgslsmith_index_u32(arg_2.b.x, 21u)])))) - global2[_wgslsmith_index_u32(0u, 21u)]);
            var var_2 = -(~vec4<i32>(-31428, func_5(Struct_2(true, arg_2, arg_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(-746.0, global2[_wgslsmith_index_u32(1u, 21u)]) * vec2<f32>(global2[_wgslsmith_index_u32(0u, 21u)], 225.0))), ~var_0.x, -2147483648));
            switch (72081) {
                case -37079: {
                    global3 = ~arg_1;
                    global3 = func_6(func_2(-31241, func_2(var_2.x, func_3().c, ~(~global0.b.x)), ~(~0u)), false, Struct_2(arg_2.a, Struct_1((global0.b.x >> (0u % 32u)) > ~arg_1, vec3<u32>(u_input.b, 87691u, 18693u)), Struct_1(!(!true), vec3<u32>(~global0.b.x, 71725u & 86071u, ~18363u)))).x;
                    var var_3 = all(select(vec3<bool>(select(arg_2.a, false, func_8(vec2<i32>(0, var_0.x))), !any(vec4<bool>(false, false, global0.a, true)), true != true), !vec3<bool>(!global1[_wgslsmith_index_u32(global0.b.x, 17u)], true | global1[_wgslsmith_index_u32(4294967295u, 17u)], true), !(!func_2(-42919, arg_2, 36906u).a)));
                }
                case 27531: {
                    global0 = func_3().c;
                }
                case -24228: {
                    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(arg_2.b), select(arg_2.b, arg_2.b, arg_2.a)), 21u)] - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_2.b.x, 21u)], _wgslsmith_f_op_f32(406.0 - 899.0)))));
                }
                case -26831: {
                    let var_3 = _wgslsmith_f_op_f32(exp2(-340.0));
                    var var_4 = func_3().c;
                    let var_5 = !(!(!select(false, var_4.a, select(false, true, var_4.a))));
                    var var_6 = ~vec4<i32>(firstLeadingBit(abs(-1 & var_0.x)), -(~_wgslsmith_clamp_i32(0, -37426, 0)), ~(~_wgslsmith_mod_i32(27628, arg_0.x)), ~_wgslsmith_mult_i32(-var_2.x, 20453 >> (1u % 32u)));
                }
                default: {
                    global1 = array<bool, 17>();
                    var var_3 = vec3<i32>(13618, -var_2.x, arg_0.x);
                    var var_4 = max(28415, _wgslsmith_dot_vec4_i32(arg_0, arg_0));
                    var var_5 = !any(!vec3<bool>(global0.a | true, arg_2.a, -779.0 <= global2[_wgslsmith_index_u32(u_input.b, 21u)]));
                }
            }
            switch (countOneBits(var_2.x)) {
                case 2147483647: {
                    var var_3 = vec4<f32>(global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(arg_2.b.x, countOneBits(arg_1) << (global0.b.x % 32u))), 21u)], _wgslsmith_f_op_f32(-235.0), global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(4294967295u >> (arg_1 % 32u), 4294967295u)) >> ((~arg_1 << (~firstTrailingBit(arg_2.b.x) % 32u)) % 32u), 21u)], _wgslsmith_f_op_f32(func_4(Struct_1(!func_3().c.a, ~(global0.b | global0.b)), -1357.0, func_3())));
                    let var_4 = Struct_1(!any(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], true), vec2<bool>(true, arg_2.a), vec2<bool>(global0.a, true))), arg_2.b);
                    global0 = Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, global0.a), global0.a | false)) || (~global0.b.x <= 74283u), ~(~vec3<u32>(max(u_input.a, var_4.b.x), var_4.b.x, u_input.a)));
                }
                case -2147483648: {
                    return global0.b.x;
                }
                default: {
                }
            }
        }
    }
    var var_0 = arg_2;
    let var_1 = arg_2.b.x;
    if (!true) {
    }
    for (var var_2 = -1; var_2 <= 0; var_2 += 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            var var_3 = Struct_2(true, arg_2, arg_2);
            var_3 = Struct_2(all(vec3<bool>(false, any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], false, var_3.a, false), vec4<bool>(global1[_wgslsmith_index_u32(global0.b.x, 17u)], false, true, arg_2.a), vec4<bool>(false, true, false, false))), arg_2.a)), func_3().b, arg_2);
            var_3 = func_3();
            let var_4 = func_3().c;
            global2 = array<f32, 21>();
        }
        let var_3 = vec4<f32>(_wgslsmith_f_op_f32(294.0 * 1328.0), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(112306u, 21u)], -1129.0), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~select(~0u, _wgslsmith_sub_u32(u_input.a, 0u), global1[_wgslsmith_index_u32(global0.b.x, 17u)]), 21u)])), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(28167u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, arg_1, arg_2.b.x, var_0.b.x), ~vec4<u32>(global0.b.x, var_0.b.x, 1u, arg_1))), 21u)])));
        for (; select(global1[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_mult_u32(~(~u_input.a), arg_1), 17u)], !true && (any(vec4<bool>(arg_2.a, global1[_wgslsmith_index_u32(4294967295u, 17u)], true, true)) != !select(true, true, false)), global1[_wgslsmith_index_u32(global0.b.x, 17u)]); ) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        }
    }
    return 21036u;
}

fn func_1(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = vec2<bool>(!(!((12047u & global0.b.x) != ~u_input.b)), global1[_wgslsmith_index_u32(func_9(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483648, -15952, -9659, -2147483648), select(vec4<i32>(2147483647, -16180, 39403, -21918), vec4<i32>(2147483647, 0, 2147483647, 40308), global1[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_dot_vec2_u32(reverseBits(global0.b.zx), select(vec2<u32>(u_input.b, global0.b.x), vec2<u32>(global0.b.x, global0.b.x), false)), func_2(-2147483647, Struct_1(true, global0.b), _wgslsmith_sub_u32(0u, u_input.a))) & max(func_9(vec4<i32>(0, 254, 0, -8191), 1u, Struct_1(false, global0.b)), ~(global0.b.x & 0u)), 17u)]);
    switch (~firstLeadingBit(i32(-1) * -7929)) {
        case 2147483647: {
            for (var var_1 = -1; var_1 == 19351; var_1 -= 1) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                var var_2 = vec2<f32>(1469.0, global2[_wgslsmith_index_u32(u_input.a, 21u)]);
                return _wgslsmith_clamp_vec3_i32(vec3<i32>(34002, ~(~_wgslsmith_sub_i32(-14686, -8720)), ~(2147483647 ^ -1) | -abs(0)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1, _wgslsmith_sub_i32(17862, -12548)), -_wgslsmith_mod_i32(10986, 0), ~0 ^ reverseBits(0)), vec3<i32>(2147483647, (i32(-1) * -1) << ((0u & 67454u) % 32u), _wgslsmith_mod_i32(2147483647 ^ -29814, 1))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1, 2147483647, _wgslsmith_div_i32(0, -1)), _wgslsmith_mult_vec3_i32(-vec3<i32>(20933, -2147483648, -9133), vec3<i32>(-39423, 0, 53837) & vec3<i32>(1, -35557, 0))), -(select(vec3<i32>(84867, 0, -1), vec3<i32>(-2147483648, -2147483648, 45319), vec3<bool>(false, true, true)) >> ((vec3<u32>(global0.b.x, global0.b.x, u_input.b) | global0.b) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(1, firstLeadingBit(27462)), _wgslsmith_mult_i32(_wgslsmith_div_i32(-1, 1), -30124), _wgslsmith_dot_vec2_i32(~vec2<i32>(-6278, 4025), ~vec2<i32>(-2147483648, -1)))));
            }
            if (func_8(-_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0, 0), vec2<i32>(-39165, 4771)) >> (~vec2<u32>(26233u, u_input.a) % vec2<u32>(32u)), -_wgslsmith_div_vec2_i32(vec2<i32>(-2147483648, 15703), vec2<i32>(45137, -10445))))) {
                var var_1 = -2124.0;
                var_1 = 637.0;
                global2 = array<f32, 21>();
                var var_2 = ~(~func_7(global2[_wgslsmith_index_u32(~abs(4294967295u), 21u)], -1632.0).x);
                var var_3 = global0.b.x;
            }
            var var_1 = func_2(min(23761, _wgslsmith_mult_i32(~0, _wgslsmith_dot_vec2_i32(func_7(498.0, arg_0.x), _wgslsmith_add_vec2_i32(vec2<i32>(17806, -54150), vec2<i32>(2147483647, -1))))), func_3().b, (u_input.a << (~(global0.b.x ^ 29317u) % 32u)) >> (77788u % 32u));
        }
        default: {
            for (; ; ) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var_0 = !vec2<bool>(all(vec4<bool>(func_2(2147483647, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 17u)], vec3<u32>(global0.b.x, 37918u, u_input.b)), u_input.a).a, global0.a, !false, var_0.x && false)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 13782u, 23287u & global0.b.x), 21u)] <= _wgslsmith_f_op_f32(-985.0));
                global1 = array<bool, 17>();
                var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) * arg_0);
                let var_2 = func_3();
                let var_3 = 1u;
            }
            if (global0.a) {
                var var_1 = global0.b;
                global1 = array<bool, 17>();
                var var_2 = -1635.0;
            }
            var_0 = select(vec2<bool>(global1[_wgslsmith_index_u32(73195u, 17u)], any(select(select(vec3<bool>(global0.a, global1[_wgslsmith_index_u32(u_input.a, 17u)], false), vec3<bool>(global0.a, var_0.x, true), vec3<bool>(global0.a, false, global0.a)), vec3<bool>(true, global0.a, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global0.a, var_0.x)))), vec2<bool>(any(!vec3<bool>(var_0.x, true, global0.a)), abs(u_input.b) >= ~(9617u << (4294967295u % 32u))), global0.a);
            let var_1 = _wgslsmith_f_op_f32(round(arg_0.x));
        }
    }
    for (var var_1 = -2147483648; ; var_1 -= 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        global2 = array<f32, 21>();
    }
    let var_1 = Struct_2(var_0.x, func_3().b, func_3().c);
    if (global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(~67237u), ~4294967295u, 59762u, func_9(vec4<i32>(-2147483648, 50630, -18352, -1), ~var_1.b.b.x, var_1.c)), vec4<u32>(~var_1.b.b.x, var_1.c.b.x, _wgslsmith_mod_u32(u_input.b, 4294967295u), 49519u) >> ((~vec4<u32>(u_input.b, var_1.c.b.x, u_input.a, u_input.a) ^ (vec4<u32>(global0.b.x, 1u, u_input.b, u_input.b) | vec4<u32>(global0.b.x, var_1.c.b.x, global0.b.x, 4294967295u))) % vec4<u32>(32u))), 17u)]) {
        var var_2 = func_3();
        for (; ; ) {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            var var_3 = firstTrailingBit(vec4<u32>(var_1.c.b.x, 45295u, ~(~var_2.b.b.x), _wgslsmith_mod_u32(~4294967295u, reverseBits(0u))) ^ vec4<u32>(~func_9(vec4<i32>(-15491, 2147483647, -2147483648, 33598), var_2.b.b.x, Struct_1(false, vec3<u32>(4294967295u, global0.b.x, 38253u))), func_2(-1, Struct_1(true, var_2.b.b), _wgslsmith_dot_vec3_u32(var_2.c.b, vec3<u32>(global0.b.x, var_1.c.b.x, 87821u))).b.x, ~(~52049u), _wgslsmith_clamp_u32(select(4294967295u, var_1.c.b.x, var_1.b.a), u_input.b, var_2.b.b.x)));
            continue;
        }
    }
    return _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(30910, ~52601), -2147483648), _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(vec4<i32>(34872, -1, -1, 2147483647))), _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647, 2147483647, -21011, 1), max(vec4<i32>(0, 0, -23304, 141), vec4<i32>(23797, -2147483648, 15064, -18742)))), -_wgslsmith_sub_i32(44755, 2147483647) ^ -1), vec3<i32>(-58483, countOneBits(_wgslsmith_add_i32(6219, -1)), -331) | abs(vec3<i32>(-22334, 0, -822)));
}

fn func_10(arg_0: vec3<i32>, arg_1: vec2<bool>) -> Struct_2 {
    global2 = array<f32, 21>();
    global0 = func_3().c;
    switch (_wgslsmith_dot_vec3_i32(max(-(~(arg_0 >> (vec3<u32>(93280u, 5678u, 55263u) % vec3<u32>(32u)))), countOneBits(vec3<i32>(-1) * -arg_0)), arg_0)) {
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                continue;
            }
        }
        default: {
            global2 = array<f32, 21>();
            global3 = countOneBits(~u_input.a << (~global0.b.x % 32u));
            switch (arg_0.x) {
                case 1: {
                }
                case 2147483647: {
                    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(287.0, 3377.0, -421.0))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-718.0, 258.0, -508.0) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 21u)], -1000.0, -669.0))), vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(abs(1641u), 21u)], -789.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 21u)] + global2[_wgslsmith_index_u32(4294967295u, 21u)])), global2[_wgslsmith_index_u32(~(~0u), 21u)]), !(!vec3<bool>(global1[_wgslsmith_index_u32(66924u, 17u)], arg_1.x, global1[_wgslsmith_index_u32(global0.b.x, 17u)])))));
                    global0 = Struct_1(!(false & (!true != func_3().c.a)), global0.b);
                    var var_1 = Struct_2(func_3().c.a, func_3().b, Struct_1(_wgslsmith_f_op_f32(1628.0 * global2[_wgslsmith_index_u32(~u_input.b, 21u)]) > var_0.x, global0.b));
                    var var_2 = false;
                }
                case -14580: {
                }
                default: {
                    let var_0 = select(!select(vec4<bool>(arg_1.x && global1[_wgslsmith_index_u32(global0.b.x, 17u)], !global0.a, !false, select(true, false, false)), !vec4<bool>(true, false, arg_1.x, global0.a), func_3().b.a), select(vec4<bool>(arg_1.x, !(true & false), any(select(vec4<bool>(global0.a, global0.a, arg_1.x, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global0.a, true, arg_1.x), arg_1.x)), 1 == arg_0.x), !select(select(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, true, global1[_wgslsmith_index_u32(4294967295u, 17u)]), global1[_wgslsmith_index_u32(21923u, 17u)]), select(vec4<bool>(global0.a, true, arg_1.x, global1[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(global0.a, true, true, arg_1.x), false), false | arg_1.x), func_8(~(-arg_0.xx))), select(select(select(select(vec4<bool>(false, false, global0.a, arg_1.x), vec4<bool>(global0.a, false, global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)]), global0.a), !vec4<bool>(global0.a, true, global0.a, true), global1[_wgslsmith_index_u32(0u, 17u)] & true), !(!vec4<bool>(global0.a, arg_1.x, arg_1.x, true)), ~120751u < u_input.a), select(!vec4<bool>(global0.a, false, arg_1.x, arg_1.x), vec4<bool>(!false, false, !false, global0.a), !(!global0.a)), vec4<bool>(arg_1.x, global1[_wgslsmith_index_u32(firstTrailingBit(43725u), 17u)], func_8(abs(arg_0.xx)), false)));
                    var var_1 = func_2(arg_0.x, Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(60051u << (~u_input.b % 32u), global0.b.x), 17u)], ~_wgslsmith_mod_vec3_u32(global0.b << (vec3<u32>(global0.b.x, u_input.b, 1u) % vec3<u32>(32u)), vec3<u32>(global0.b.x, global0.b.x, u_input.b) << (vec3<u32>(1u, 9068u, 0u) % vec3<u32>(32u)))), 18824u);
                }
            }
            var var_0 = arg_0.x;
            switch (arg_0.x) {
                case 2689: {
                    var var_1 = arg_0.xx;
                    var var_2 = arg_0.x;
                    let var_3 = func_3();
                    var var_4 = var_3;
                }
                case -1: {
                    let var_1 = ~(~0);
                }
                case -2147483648: {
                    var var_1 = Struct_1(!true, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, ~1u >> (u_input.b % 32u), u_input.b), vec3<u32>(u_input.a, global0.b.x, 19519u)));
                    var var_2 = Struct_1(var_1.a, ~(~vec3<u32>(~4294967295u, global0.b.x, 4294967295u | 0u)));
                    var var_3 = var_1.b.x | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, min(4294967295u, var_1.b.x), ~u_input.a, 24185u) & _wgslsmith_mult_vec4_u32(func_6(Struct_1(false, global0.b), true, Struct_2(true, Struct_1(false, global0.b), Struct_1(arg_1.x, var_1.b))), reverseBits(vec4<u32>(var_1.b.x, 2758u, 41088u, 1u))), ~vec4<u32>(countOneBits(var_2.b.x), ~u_input.b, abs(var_2.b.x), u_input.b));
                }
                case 2147483647: {
                    let var_1 = _wgslsmith_div_u32(29223u, 116633u);
                }
                default: {
                    global0 = Struct_1(global1[_wgslsmith_index_u32(u_input.b, 17u)], ~(~func_6(Struct_1(true, global0.b), global1[_wgslsmith_index_u32(u_input.a, 17u)], Struct_2(global0.a, Struct_1(true, vec3<u32>(1u, global0.b.x, 70460u)), Struct_1(true, vec3<u32>(global0.b.x, u_input.b, 15400u)))).yxx) << (~global0.b % vec3<u32>(32u)));
                    global0 = func_2(20567, func_3().c, 37543u);
                }
            }
        }
    }
    let var_0 = vec3<bool>(true != !(!func_2(arg_0.x, Struct_1(global0.a, vec3<u32>(global0.b.x, 12463u, u_input.b)), 0u).a), true | (~(~16215u) <= (global0.b.x | _wgslsmith_mod_u32(u_input.b, 64205u))), !func_2(arg_0.x, func_3().c, ~(43145u << (global0.b.x % 32u))).a);
    global2 = array<f32, 21>();
    return Struct_2(func_3().b.a, func_2(arg_0.x, func_3().b, global0.b.x), func_2(abs(arg_0.x), Struct_1(any(var_0.xz), ~vec3<u32>(u_input.a, 14890u, u_input.a)), 19024u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_10(func_1(vec4<f32>(-987.0, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 21u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b << (global0.b.x % 32u), 21u)] * _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(54314u, 21u)]))), _wgslsmith_f_op_f32(abs(-249.0)))), vec2<bool>(global0.a, !(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 21u)]) <= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.b.x, 21u)]))));
    var var_1 = func_10(vec3<i32>(_wgslsmith_add_i32(func_7(1466.0, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(62646u, 21u)] - 564.0)).x, select(0, 34373, var_0.c.a)), ~(-2147483648), _wgslsmith_dot_vec2_i32(-func_7(-497.0, 1379.0), vec2<i32>(~(-17529), firstTrailingBit(2147483647)))), vec2<bool>(select(func_8(vec2<i32>(32174, -1) | vec2<i32>(2147483647, -42624)), func_10(func_1(vec4<f32>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(24095u, 21u)], -2411.0, global2[_wgslsmith_index_u32(global0.b.x, 21u)])), vec2<bool>(var_0.a, true)).c.a, any(select(vec4<bool>(global0.a, true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(global0.b.x, 17u)], var_0.b.a, var_0.b.a, global1[_wgslsmith_index_u32(global0.b.x, 17u)]), vec4<bool>(false, global0.a, false, true)))), var_0.b.a)).c;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0.c, global2[_wgslsmith_index_u32(global0.b.x, 21u)], var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(15388u, 21u)], 122.0))), _wgslsmith_div_f32(-742.0, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 21u)])), 493.0);
    switch (25786) {
        case 0: {
            loop {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                var var_3 = Struct_2(all(vec4<bool>(!var_1.a && !false, all(!vec4<bool>(false, false, var_1.a, true)), !(0u > 1u), var_1.a & !var_1.a)), Struct_1(!((i32(-1) * -2147483648) > min(62132, 1)), ~(~(~vec3<u32>(1u, 3101u, 51536u)))), func_2(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483648, 4991, -1), min(vec3<i32>(19277, 2147483647, 2147483647), -vec3<i32>(1, -36555, 91315))), Struct_1(true, abs(vec3<u32>(0u, 49892u, 5079u))), global0.b.x));
                let var_4 = ~func_2(~26218 | abs(0), Struct_1(all(vec4<bool>(var_3.b.a, global0.a, global1[_wgslsmith_index_u32(4294967295u, 17u)], var_3.a)), var_3.b.b), var_1.b.x).b.zz | (vec2<u32>(~(~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.x, global0.b.x), global0.b.xx), global0.b.yx >> (global0.b.yx % vec2<u32>(32u)))) & _wgslsmith_mod_vec2_u32(vec2<u32>(35491u | 4294967295u, 15586u), select(var_1.b.zy >> (vec2<u32>(var_0.b.b.x, 2636u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 6120u) >> (vec2<u32>(var_3.b.b.x, 50045u) % vec2<u32>(32u)), vec2<bool>(var_1.a, var_3.c.a))));
                global0 = func_2(-47851, func_3().c, _wgslsmith_add_u32(~72511u, ~global0.b.x));
            }
            let var_3 = select(-_wgslsmith_mod_vec3_i32(~vec3<i32>(4079, 42037, 24128), -vec3<i32>(-961, -28451, 2147483647)), vec3<i32>(-19873, -2147483648, ~max(-2147483648, 8702)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, 34806u, 1u, 4294967295u), vec4<u32>(var_1.b.x, var_0.c.b.x, 10363u, 0u)), 21372u) >= 0u) & vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(func_5(var_0, vec2<f32>(-645.0, global2[_wgslsmith_index_u32(global0.b.x, 21u)]))), -(~2147483647)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-30996, -12059), 0, _wgslsmith_add_i32(2775, 1)), 20107), max(_wgslsmith_mult_i32(-1, _wgslsmith_mult_i32(4102, 19404)), 1));
            var var_4 = var_2.x;
        }
        case -2147483648: {
            var var_3 = func_10(_wgslsmith_div_vec3_i32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-257.0, global2[_wgslsmith_index_u32(u_input.a, 21u)], var_2.x, var_2.x))), -(~vec3<i32>(-2147483648, -6264, -56099))), vec2<bool>(false, max(-26587, -2147483647) <= firstTrailingBit(abs(1)))).a;
            global0 = Struct_1(false, select(var_1.b, var_1.b, global0.a));
            global1 = array<bool, 17>();
            var var_4 = Struct_1(false, reverseBits(vec3<u32>(func_6(Struct_1(var_0.a, vec3<u32>(var_1.b.x, u_input.b, 0u)), global0.a, var_0).x, firstTrailingBit(0u & 50423u), var_0.b.b.x)));
        }
        case -26769: {
            let var_3 = _wgslsmith_sub_u32(countOneBits(_wgslsmith_mult_u32(max(max(var_0.b.b.x, var_0.b.b.x), ~0u), ~_wgslsmith_mod_u32(var_0.b.b.x, 4294967295u))), ~4294967295u);
            for (var var_4 = -2147483648; !(!false); ) {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            }
            global0 = Struct_1(!global0.a, var_0.b.b);
        }
        default: {
            if (!any(vec2<bool>(var_1.a, var_0.c.a))) {
                var var_3 = var_0.b;
                var var_4 = func_3().c;
                var var_5 = Struct_1(all(!vec3<bool>(select(global0.a, var_1.a, true), 4294967295u >= u_input.a, var_4.a)), global0.b);
                let var_6 = ~reverseBits(47645);
                global3 = 29750u & var_3.b.x;
            }
            global2 = array<f32, 21>();
            var var_3 = var_2.x;
            var_3 = -766.0;
        }
    }
    global3 = ~4834u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-239.0, global2[_wgslsmith_index_u32(global0.b.x, 21u)])), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(32925, 56246, -2147483648, -34725), vec4<i32>(-1, -45129, 1, -7460)) ^ vec4<i32>(-1, -18547, 11008, 51180), _wgslsmith_mult_vec4_i32(vec4<i32>(1, -56638, 0, -75839), vec4<i32>(-2147483648, -2147483648, 1, 23779)) >> (~vec4<u32>(var_1.b.x, 17971u, u_input.b, global0.b.x) % vec4<u32>(32u))), countOneBits(~(~vec4<i32>(23169, -12887, 2147483647, -62697)))), global0.b.x, ~vec3<i32>(-2147483648, _wgslsmith_dot_vec4_i32(vec4<i32>(-1, 3656, 1, 0), vec4<i32>(0, 44104, 2147483647, -1) >> (vec4<u32>(1u, 0u, var_1.b.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_i32(abs(-10375), -24663 | 29973)), _wgslsmith_mult_i32(-(~_wgslsmith_sub_i32(80785, -2147483648)), ~_wgslsmith_div_i32(2147483647, -44625 | -1)));
}

