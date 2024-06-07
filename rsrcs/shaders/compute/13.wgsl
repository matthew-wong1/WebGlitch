// {"0:0":[206,88,100,172,215,58,114,60,241,230,102,181,133,240,84,155,1,21,117,150,115,147,95,81,62,64,143,18,29,166,43,39]}
// Seed: 755380849191859291

struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: array<vec3<i32>, 25>;

var<private> global2: array<bool, 9> = array<bool, 9>(false, true, true, false, false, false, true, false, false);

var<private> global3: Struct_2;

var<private> LOOP_COUNTERS: array<u32, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn func_6(arg_0: bool, arg_1: f32) -> vec4<i32> {
    for (var var_0: i32; ; var_0 += 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global0 = array<Struct_3, 8>();
        let var_1 = global3.e.x;
        global3 = Struct_2(global3.d, ~u_input.c.x, vec4<i32>(~global3.e.x, ~_wgslsmith_sub_i32(global3.c.x, ~global3.e.x), -1, _wgslsmith_div_i32(i32(-1) * 0, _wgslsmith_mod_i32(0, global3.e.x) | max(global3.e.x, global3.e.x))), Struct_1(!select(global3.d.a, vec3<bool>(false, true, global2[_wgslsmith_index_u32(global3.b, 9u)]), arg_0)), global3.c.wxx);
        let var_2 = Struct_2(global3.d, global3.b, ~_wgslsmith_add_vec4_i32(global3.c, ~min(vec4<i32>(global3.e.x, global3.e.x, global3.e.x, -16040), vec4<i32>(2147483647, global3.c.x, 2147483647, global3.c.x))), Struct_1(vec3<bool>(!true, false, global3.a.a.x)), ~(global3.c.yzy | select(global3.e, select(vec3<i32>(-2147483648, global3.e.x, 71846), vec3<i32>(2147483647, global3.c.x, global3.e.x), global3.a.a.x), !arg_0)));
        break;
    }
    let var_0 = Struct_4(~_wgslsmith_mult_i32(~global3.c.x, global3.e.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(arg_1, 1075.0)) - vec2<f32>(445.0, -419.0))))), global3.a.a, select(~(~vec4<u32>(global3.b, global3.b, 0u, global3.b)), vec4<u32>(select(4294967295u, u_input.d, global2[_wgslsmith_index_u32(u_input.d, 9u)]), 0u, u_input.c.x, ~global3.b), !(_wgslsmith_f_op_f32(abs(343.0)) >= -598.0)), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1.0) * -926.0), 554.0) + vec3<f32>(-1070.0, _wgslsmith_f_op_f32(-arg_1), 737.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-742.0 + 1700.0) - _wgslsmith_f_op_f32(sign(arg_1))) + 701.0), ~abs(global3.c)));
    switch (5896) {
        case 17183: {
            var var_1 = !(!var_0.c.yz);
            global1 = array<vec3<i32>, 25>();
            global2 = array<bool, 9>();
        }
        default: {
            switch (var_0.e.c.x) {
                case -30410: {
                }
                case 1: {
                    let var_1 = Struct_2(global3.d, ~(firstLeadingBit(~4294967295u) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 22419u, 0u, 35153u), var_0.d) | var_0.d.x)), countOneBits(vec4<i32>(1, ~(-2147483648 >> (global3.b % 32u)), (var_0.e.c.x >> (global3.b % 32u)) & 0, select(i32(-1) * -9457, _wgslsmith_sub_i32(global3.c.x, -2147483648), all(vec3<bool>(global3.a.a.x, false, arg_0))))), global3.d, -vec3<i32>(_wgslsmith_dot_vec4_i32(var_0.e.c << (vec4<u32>(u_input.c.x, 1u, var_0.d.x, 0u) % vec4<u32>(32u)), countOneBits(vec4<i32>(-1, -9191, var_0.e.c.x, 1))), -37200, var_0.a));
                    var var_2 = global3.e;
                    var var_3 = arg_1;
                }
                default: {
                }
            }
            var var_1 = !(0u != firstLeadingBit(firstTrailingBit(countOneBits(1u))));
            for (var var_2 = var_0.e.c.x; all(vec2<bool>(!any(var_0.c.zx), any(vec3<bool>(var_0.c.x, true, global3.d.a.x)))); ) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                let var_3 = _wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.d.zxx, u_input.c) & ~var_0.d.x, 25u)], firstTrailingBit(_wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(var_0.d.x, 25u)], vec3<i32>(1006, global3.c.x, global3.c.x)) << (select(vec3<u32>(3012u, var_0.d.x, var_0.d.x), vec3<u32>(global3.b, u_input.b, global3.b), arg_0) % vec3<u32>(32u)))) ^ var_0.e.c.zyy;
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    for (var var_1 = var_0.e.c.x; var_1 != -4876; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        var var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(746.0, _wgslsmith_f_op_f32(-686.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), var_0.b.x)));
        for (; any(vec4<bool>(true, all(vec3<bool>(true, arg_0, arg_0)), _wgslsmith_mult_u32(28035u, var_0.d.x) < _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, var_0.d.x, global3.b), vec3<u32>(1u, var_0.d.x, 2302u)), !false)) || any(var_0.c.zx); ) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_3 = Struct_4(~(-_wgslsmith_div_i32(-3826, 77919)), vec2<f32>(-1657.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434.0 + arg_1)) * _wgslsmith_div_f32(-875.0, _wgslsmith_f_op_f32(select(607.0, -565.0, true))))), select(var_0.c, var_0.c, !(!select(vec3<bool>(true, false, true), vec3<bool>(var_0.c.x, false, global3.d.a.x), global3.a.a.x))), vec4<u32>(_wgslsmith_mult_u32(global3.b, _wgslsmith_div_u32(4294967295u & global3.b, 4294967295u)), ~4294967295u, ~_wgslsmith_mult_u32(firstLeadingBit(1u), ~var_0.d.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), _wgslsmith_mult_vec2_u32(u_input.c.yx, u_input.c.yz)), 1u)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.e.a - var_0.e.a) + vec3<f32>(-185.0, 1047.0, -1102.0))), arg_1, max(countOneBits(global3.c), abs(var_0.e.c) | global3.c)));
            continue;
        }
        var_1 = var_0.a;
    }
    return reverseBits(-vec4<i32>(-var_0.a, i32(-1) * -12196, firstLeadingBit(global3.e.x), _wgslsmith_clamp_i32(-1, var_0.e.c.x, var_0.e.c.x)) >> (~vec4<u32>(global3.b >> (var_0.d.x % 32u), countOneBits(u_input.d), 1u, _wgslsmith_add_u32(var_0.d.x, u_input.d)) % vec4<u32>(32u)));
}

fn func_5(arg_0: i32) -> Struct_4 {
    for (var var_0 = -33394; var_0 == -1; var_0 += 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        global3 = Struct_2(global3.d, 62092u, min(global3.c, func_6(global2[_wgslsmith_index_u32(50744u, 9u)] != global2[_wgslsmith_index_u32(11574u, 9u)], _wgslsmith_div_f32(1070.0, 195.0)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(global3.b, global3.b, u_input.b, 1u), reverseBits(vec4<u32>(u_input.d, global3.b, 78275u, global3.b))) % vec4<u32>(32u))), Struct_1(global3.a.a), ~_wgslsmith_mult_vec3_i32(-vec3<i32>(65563, 1, global3.e.x), global3.e));
        continue;
    }
    var var_0 = _wgslsmith_mult_vec3_i32(global3.e, global1[_wgslsmith_index_u32(abs(abs(_wgslsmith_clamp_u32(0u, 1u, ~u_input.c.x))), 25u)]);
    global3 = Struct_2(Struct_1(!vec3<bool>(-154.0 < -1083.0, global3.a.a.x || true, !global3.d.a.x)), abs(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(global3.b, 4126u, 27650u)), vec3<u32>(43695u, u_input.b, 29995u))), global3.c, global3.a, global3.e);
    var var_1 = Struct_2(global3.a, ~(0u ^ select(countOneBits(10790u), 57751u << (122899u % 32u), select(global2[_wgslsmith_index_u32(25424u, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)], global3.d.a.x))), firstTrailingBit(global3.c), global3.d, ~vec3<i32>(-1, _wgslsmith_sub_i32(max(17733, var_0.x), var_0.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.yx, vec2<i32>(arg_0, var_0.x)), firstTrailingBit(vec2<i32>(arg_0, arg_0)))));
    var var_2 = !select(vec4<bool>(all(vec4<bool>(true, global3.a.a.x, false, true)), !(!false), global2[_wgslsmith_index_u32(var_1.b, 9u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(~global3.b, 9u)], any(select(vec4<bool>(true, false, global3.a.a.x, false), vec4<bool>(global3.d.a.x, false, false, false), global3.a.a.x)), false), select(!vec4<bool>(true, false, true, false), !(!vec4<bool>(true, false, true, var_1.d.a.x)), any(select(vec4<bool>(true, var_1.d.a.x, true, global2[_wgslsmith_index_u32(39873u, 9u)]), vec4<bool>(var_1.a.a.x, true, false, global2[_wgslsmith_index_u32(global3.b, 9u)]), global3.a.a.x))));
    return Struct_4(_wgslsmith_div_i32(arg_0, -2147483648), vec2<f32>(1043.0, -951.0), !var_1.d.a, vec4<u32>(28128u, ~(~(~var_1.b)), ~u_input.d, 107416u), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(227.0, 760.0, -959.0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-486.0, -315.0, 267.0))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1054.0, -1973.0, -244.0) + vec3<f32>(172.0, 801.0, -363.0)))), -1550.0, vec4<i32>(reverseBits(0), firstLeadingBit(2147483647), global3.e.x ^ var_1.e.x, var_1.c.x) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(15733u, 24948u)), global3.b, global3.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.b, global3.b), u_input.c)) % vec4<u32>(32u))));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    switch (firstLeadingBit(70412)) {
        case -2147483648: {
            return -1000.0;
        }
        case 2147483647: {
            let var_0 = Struct_1(!func_5(countOneBits(global3.c.x)).c);
            global3 = Struct_2(var_0, arg_2.x, -global3.c, arg_1, (vec3<i32>(2147483647, arg_0.e.c.x & global3.e.x, ~1) << (arg_0.d.wyw % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(arg_0.a, arg_0.a, global3.c.x) & global3.e), vec3<i32>(~arg_0.a, i32(-1) * -14571, -global3.e.x)));
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
        }
        case -48555: {
            var var_0 = vec4<bool>(true, any(func_5(global3.e.x).c), arg_0.c.x, true);
            let var_1 = vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(28944u, ~u_input.a, _wgslsmith_div_u32(~59886u, arg_0.d.x | arg_0.d.x) << (~1u % 32u)));
        }
        default: {
            global2 = array<bool, 9>();
        }
    }
    let var_0 = firstLeadingBit(vec2<u32>(arg_2.x, ~(firstLeadingBit(0u) & _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, 0u, global3.b)))));
    var var_1 = global3.e.x;
    var_1 = arg_0.e.c.x;
    var var_2 = 55001u;
    return arg_0.e.a.x;
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    if (false) {
        var var_0 = global3.d;
        let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1336.0, -407.0)) * 1649.0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-624.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398.0) * 2147.0))));
        var_0 = global3.d;
    }
    if (false) {
    }
    var var_0 = u_input.d;
    switch (~(global3.e.x ^ -1)) {
        case 1: {
        }
        case -2147483648: {
        }
        case -27336: {
        }
        default: {
            var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -509.0))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-459.0 - -107.0), 864.0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(258.0)), _wgslsmith_div_f32(846.0, -142.0), all(arg_0.yy))))), _wgslsmith_f_op_f32(func_7(func_5(~global3.e.x), global3.d, ~u_input.c.yz, global2[_wgslsmith_index_u32(max(0u, global3.b | u_input.a), 9u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(603.0 + 206.0) * _wgslsmith_f_op_f32(f32(-1.0) * -1509.0)), vec4<i32>(global3.c.x, _wgslsmith_mod_i32(abs(firstTrailingBit(15354)), global3.c.x), ~firstTrailingBit(~5853), -(select(77358, global3.c.x, global2[_wgslsmith_index_u32(4294967295u, 9u)]) & reverseBits(-8228))));
            global1 = array<vec3<i32>, 25>();
        }
    }
    global2 = array<bool, 9>();
    return Struct_2(global3.d, ~firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global3.b, 1477u), u_input.c), func_5(global3.c.x).d.x)), ~vec4<i32>(i32(-1) * -3530, _wgslsmith_mult_i32(-1, -46105 ^ global3.e.x), -(-1 ^ global3.e.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(0, global3.e.x), 2147483647, abs(1))), global3.a, global3.e);
}

fn func_8(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = -4776;
    return select(global3.b, 0u, false);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec3<bool> {
    global1 = array<vec3<i32>, 25>();
    for (; all(global3.a.a); ) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_0 = select(u_input.c, u_input.c, select(vec3<bool>(!true, arg_2.x != -410.0, arg_1.x), arg_0.www, vec3<bool>(any(vec3<bool>(global3.a.a.x, global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(global3.b, 9u)])), global3.d.a.x, arg_2.x != 1000.0))) >> ((vec3<u32>(95063u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d, 15386u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(global3.b, global3.b, u_input.a, 51710u), vec4<u32>(10121u, u_input.b, u_input.a, global3.b))), func_8(func_4(vec3<bool>(true, false, arg_0.x)), 4294967295u)) ^ u_input.c) % vec3<u32>(32u));
        global3 = func_4(select(vec3<bool>(any(arg_0.xww), all(func_4(vec3<bool>(false, true, arg_0.x)).d.a.zx), global3.d.a.x), !global3.d.a, !(!arg_0.wzy)));
        switch (_wgslsmith_add_i32(-10574, global3.e.x ^ max(_wgslsmith_add_i32(global3.e.x, global3.e.x & global3.e.x), _wgslsmith_div_i32(1, select(global3.e.x, -2147483648, global3.d.a.x))))) {
            case -29770: {
                global3 = func_4(select(global3.d.a, global3.d.a, false));
                global2 = array<bool, 9>();
                global2 = array<bool, 9>();
            }
            case 2147483647: {
                let var_1 = -global3.c.x;
                let var_2 = true;
            }
            case 21997: {
                global2 = array<bool, 9>();
                let var_1 = vec4<bool>(all(vec2<bool>(all(vec4<bool>(false, false, arg_1.x, global2[_wgslsmith_index_u32(u_input.c.x, 9u)])), (global3.c.x >= global3.e.x) && select(true, arg_1.x, false))), true, global2[_wgslsmith_index_u32(~u_input.b, 9u)], true);
                let var_2 = Struct_2(Struct_1(arg_0.wzz), _wgslsmith_dot_vec2_u32(vec2<u32>(78647u, ~func_5(-2147483648).d.x), _wgslsmith_mult_vec2_u32(u_input.c.xz << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, var_0.x), var_0.zz) % vec2<u32>(32u)), vec2<u32>(var_0.x, ~u_input.a))), global3.c, func_4(!global3.a.a).a, countOneBits(-countOneBits(abs(global3.c.zyz))));
            }
            case -24256: {
                global3 = func_4(select(vec3<bool>(!(global2[_wgslsmith_index_u32(12056u, 9u)] & false), !global3.a.a.x, true), global3.d.a, true));
                var var_1 = !(!arg_0.wx);
                let var_2 = func_4(vec3<bool>(true, !var_1.x, true != select(select(true, var_1.x, var_1.x), var_0.x != u_input.d, any(arg_0.yw)))).a;
                continue;
            }
            default: {
            }
        }
        switch (_wgslsmith_div_i32(18624, global3.c.x)) {
            default: {
                continue;
            }
        }
        let var_1 = global0[_wgslsmith_index_u32(0u, 8u)];
    }
    let var_0 = _wgslsmith_div_vec4_i32(reverseBits(global3.c), max(vec4<i32>(-15713 & global3.c.x, 1, -1, func_5(global3.c.x).e.c.x) & _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647, global3.c.x, 1, 39563), vec4<i32>(global3.c.x, -39935, global3.e.x, global3.e.x)), -global3.c));
    global3 = func_4(func_4(func_4(vec3<bool>(arg_0.x, arg_1.x, true & false)).d.a).d.a);
    return !vec3<bool>(!(!(!global2[_wgslsmith_index_u32(1u, 9u)])), any(arg_0.xw), false);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(select(arg_0.wyy, !global3.d.a, !func_3(select(vec4<bool>(global3.d.a.x, false, global3.a.a.x, false), arg_0, arg_0), !global3.a.a.xx, vec4<f32>(-163.0, -1354.0, 1542.0, -1155.0))));
    global0 = array<Struct_3, 8>();
    var var_1 = func_4(vec3<bool>(false && global3.a.a.x, false || (-1 <= abs(2147483647)), !all(arg_0)));
    global3 = func_4(vec3<bool>((true & true) || (var_1.b <= ~u_input.c.x), !(!false), true));
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        global2 = array<bool, 9>();
        if (global3.a.a.x) {
        }
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            break;
        }
    }
    return var_0;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_4) -> f32 {
    for (; ; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        break;
    }
    global3 = Struct_2(func_2(select(!vec4<bool>(false, arg_3.c.x, true, true), vec4<bool>(!global3.d.a.x, false, any(vec2<bool>(false, global3.d.a.x)), select(false, true, global3.d.a.x)), true)), u_input.a, firstTrailingBit(~global3.c), Struct_1(!arg_3.c), reverseBits(~firstLeadingBit(arg_2.xwy)));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        }
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            continue;
        }
        let var_0 = arg_1;
        let var_1 = func_4(func_3(!(!(!vec4<bool>(false, global3.a.a.x, global2[_wgslsmith_index_u32(4294967295u, 9u)], true))), vec2<bool>(func_3(vec4<bool>(arg_3.c.x, global2[_wgslsmith_index_u32(global3.b, 9u)], arg_3.c.x, true), func_3(vec4<bool>(false, true, global2[_wgslsmith_index_u32(global3.b, 9u)], arg_3.c.x), global3.d.a.xx, vec4<f32>(-1061.0, arg_3.b.x, arg_3.e.a.x, -2061.0)).yx, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.b.x, -202.0, arg_3.e.b, 104.0)))).x, func_4(!arg_3.c).d.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, 1000.0, -217.0, -424.0)))))));
        let var_2 = !arg_3.c.xx;
    }
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        continue;
    }
    var var_0 = _wgslsmith_f_op_f32(2002.0 + _wgslsmith_f_op_f32(ceil(-1337.0)));
    return 883.0;
}

fn func_9(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> Struct_4 {
    for (var var_0 = -37424; var_0 <= -53732; var_0 += 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) + _wgslsmith_f_op_vec3_f32(ceil(arg_0.a)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), -885.0), vec3<f32>(1211.0, _wgslsmith_f_op_f32(-arg_0.b), arg_0.b))) + arg_0.a));
        if (func_4(select(select(!global3.a.a, func_4(!global3.d.a).d.a, arg_1.a), global3.a.a, func_2(vec4<bool>(all(vec3<bool>(arg_1.a.x, true, true)), select(true, true, false), true & global3.a.a.x, global3.a.a.x)).a)).d.a.x) {
            let var_2 = ~(~((select(vec2<i32>(6361, global3.c.x), vec2<i32>(-12269, arg_0.c.x), vec2<bool>(arg_3, global2[_wgslsmith_index_u32(44764u, 9u)])) | _wgslsmith_mult_vec2_i32(arg_0.c.yz, vec2<i32>(1, global3.c.x))) << (~abs(vec2<u32>(arg_2.x, global3.b)) % vec2<u32>(32u))));
            var_1 = arg_0.a;
            let var_3 = func_5(_wgslsmith_clamp_i32(14412, _wgslsmith_dot_vec3_i32(arg_0.c.wyw, arg_0.c.zxw), -49869));
        }
        for (var var_2 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(min(arg_0.c.x, _wgslsmith_dot_vec3_i32(global3.e, vec3<i32>(-80740, arg_0.c.x, 0))), arg_0.c.x), global3.c.x, _wgslsmith_mult_i32(31430, _wgslsmith_add_i32(firstTrailingBit(-2147483648), _wgslsmith_mult_i32(2147483647, arg_0.c.x)))) & _wgslsmith_mult_i32(~min(abs(1), _wgslsmith_div_i32(arg_0.c.x, global3.e.x)), arg_0.c.x); ~(~(~4294967295u)) < 4294967295u; var_2 -= 1) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            continue;
        }
        global1 = array<vec3<i32>, 25>();
        let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.xx, arg_0.a.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.zx * var_1.xz)))), var_1.yx);
    }
    for (var var_0 = -37800; var_0 > 1; var_0 -= 1) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        continue;
    }
    global1 = array<vec3<i32>, 25>();
    switch (select(~(-17668), ~_wgslsmith_div_i32(global3.e.x, -21437 & 0) ^ _wgslsmith_mult_i32(~(arg_0.c.x & global3.e.x), 13480), all(!func_3(vec4<bool>(arg_1.a.x, false, true, global3.d.a.x), vec2<bool>(global3.d.a.x, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(800.0, arg_0.b, -1433.0, arg_0.a.x) - vec4<f32>(-253.0, arg_0.b, arg_0.a.x, arg_0.a.x)))))) {
        default: {
            let var_0 = arg_0.a.xx;
            var var_1 = max(arg_0.c.x, _wgslsmith_dot_vec2_i32(arg_0.c.zy, reverseBits(-global3.c.yx) << (vec2<u32>(~4294967295u, ~global3.b) % vec2<u32>(32u))));
            var var_2 = func_5(reverseBits(abs(_wgslsmith_dot_vec3_i32(countOneBits(global1[_wgslsmith_index_u32(0u, 25u)]), abs(arg_0.c.xzz)))));
            var_1 = arg_0.c.x;
            var_2 = Struct_4(var_2.e.c.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.xx) - var_2.e.a.xz), var_0)), arg_1.a, vec4<u32>(~countOneBits(var_2.d.x), _wgslsmith_mult_u32(6056u, ~4294967295u), 4294967295u, arg_2.x | _wgslsmith_sub_u32(u_input.c.x, global3.b)) << (_wgslsmith_mod_vec4_u32(arg_2 << (_wgslsmith_div_vec4_u32(arg_2, var_2.d) % vec4<u32>(32u)), vec4<u32>(54535u << (arg_2.x % 32u), u_input.b & 0u, reverseBits(28733u), 29984u ^ 70289u)) % vec4<u32>(32u)), var_2.e);
        }
    }
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            var var_0 = firstTrailingBit(1u) > arg_2.x;
        }
        var var_0 = ~(-16372 >> (52155u % 32u));
        if (true) {
            break;
        }
        var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(func_5(arg_0.c.x).b.x, 124.0, arg_0.b) - _wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a)))));
    }
    return Struct_4(~arg_0.c.x, vec2<f32>(583.0, arg_0.b), func_2(vec4<bool>(any(!vec4<bool>(arg_1.a.x, global3.a.a.x, false, global2[_wgslsmith_index_u32(arg_2.x, 9u)])), all(!vec2<bool>(global2[_wgslsmith_index_u32(47248u, 9u)], true)), arg_3, !arg_1.a.x)).a, vec4<u32>(func_5(-global3.e.x).d.x >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.wyx, u_input.c), vec3<u32>(58958u, 68511u, 1u)) % 32u), 75924u, global3.b, func_8(Struct_2(Struct_1(arg_1.a), func_8(Struct_2(global3.a, 0u, global3.c, Struct_1(arg_1.a), global1[_wgslsmith_index_u32(8107u, 25u)]), 4294967295u), -arg_0.c, global3.d, ~vec3<i32>(arg_0.c.x, global3.c.x, global3.c.x)), u_input.d)), Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)), vec3<f32>(-272.0, _wgslsmith_div_f32(arg_0.a.x, arg_0.b), _wgslsmith_f_op_f32(-402.0)))), func_5(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, global3.c.x, -2147483648, -1), vec4<i32>(arg_0.c.x, -1, -2147483648, -2147483648)), 107157)).b.x, global3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_9(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1654.0, -830.0, -379.0)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-450.0, 789.0, 1070.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_u32(global3.b, u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.c.x), global3.c, Struct_4(3089, vec2<f32>(-301.0, -1384.0), global3.a.a, vec4<u32>(1u, 0u, u_input.d, 28093u), global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))) + 2064.0), vec4<i32>(-28096, max(_wgslsmith_clamp_i32(21414, global3.c.x, global3.c.x), ~global3.c.x), _wgslsmith_div_i32(abs(global3.e.x), global3.c.x), global3.e.x)), func_4(global3.a.a).d, vec4<u32>(1u, _wgslsmith_sub_u32(global3.b, global3.b >> (1u % 32u)) << (abs(global3.b) % 32u), ~31489u, 42580u), any(!vec3<bool>(any(vec4<bool>(false, false, global3.a.a.x, false)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, global3.b), 9u)], false)));
    switch (~(-18316)) {
        default: {
        }
    }
    var_0 = func_9(Struct_3(var_0.e.a, _wgslsmith_div_f32(1289.0, _wgslsmith_f_op_f32(-190.0 * _wgslsmith_div_f32(var_0.b.x, 1098.0))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-41316, -42009, var_0.a, global3.c.x)) & -var_0.e.c, _wgslsmith_sub_vec4_i32(var_0.e.c, vec4<i32>(2147483647, var_0.a, global3.e.x, 36995)) ^ global3.c)), Struct_1(vec3<bool>(func_4(vec3<bool>(true, var_0.c.x, true)).d.a.x, ~(-27862) > func_6(global3.a.a.x, var_0.b.x).x, !all(vec3<bool>(true, false, true)))), vec4<u32>(_wgslsmith_clamp_u32(var_0.d.x, ~var_0.d.x, 0u >> (global3.b % 32u)) >> (~4294967295u % 32u), global3.b, ~(~30337u & ~0u), 0u), var_0.c.x);
    global2 = array<bool, 9>();
    global0 = array<Struct_3, 8>();
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        for (var var_1 = 39954; (abs(abs(33945u)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_0.d.zy, vec2<u32>(global3.b, 4294967295u)), _wgslsmith_div_vec2_u32(var_0.d.xy, vec2<u32>(u_input.d, 4294967295u))), u_input.c.zz) % 32u)) == (reverseBits(0u) >> (firstTrailingBit(_wgslsmith_mod_u32(37721u, u_input.a) >> (global3.b % 32u)) % 32u)); var_1 += 1) {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        }
        let var_1 = ~var_0.a;
    }
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

