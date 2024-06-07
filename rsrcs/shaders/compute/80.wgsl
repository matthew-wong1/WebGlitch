// {"0:0":[207,199,85,63,88,46,88,129,48,152,183,255,40,219,82,177,254,64,243,59,161,154,102,212,43,7,181,184,168,30,21,84,92,176,105,141,12,236,129,18,41,119,199,81,95,239,139,93]}
// Seed: 16502783299697150986

struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_3, 18>;

var<private> global3: bool;

var<private> LOOP_COUNTERS: array<u32, 24>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn func_6() -> vec2<bool> {
    let var_0 = global1.wx;
    if (global1.x) {
        loop {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(-1769.0)), firstLeadingBit(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) | vec4<u32>(u_input.b.x, 4153u, 0u, 4294967295u)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)) ^ vec4<u32>(u_input.b.x, 0u, u_input.b.x, 3944u)) % vec4<u32>(32u)), ~(0u | 1u) == u_input.b.x, -235.0), vec4<u32>(4294967295u, 4294967295u, 4294967295u, ~reverseBits(u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-global0.x)))), (vec4<u32>(u_input.b.x, 45386u, 4294967295u, u_input.b.x) << (firstLeadingBit(vec4<u32>(u_input.b.x, 15465u, u_input.b.x, 9222u)) % vec4<u32>(32u))) & select(vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(1u, 1u, 43532u, 0u) | vec4<u32>(1u, u_input.b.x, 51650u, u_input.b.x), false || var_0.x), any(select(vec4<bool>(var_0.x, false, var_0.x, global1.x), !vec4<bool>(true, true, false, false), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, true, global1.x, var_0.x), var_0.x))), 227.0));
        }
        if (global1.x) {
            let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x), global0.xx);
            var var_2 = any(select(!select(!vec2<bool>(false, var_0.x), select(global1.wz, vec2<bool>(global1.x, global1.x), false), vec2<bool>(true, true)), !(!select(vec2<bool>(true, false), global1.wy, global1.zy)), vec2<bool>(var_0.x, false)));
            global3 = any(select(!select(select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, false, global1.x, false), global1.x), select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(false, false, false, global1.x)), !vec4<bool>(global1.x, global1.x, global1.x, false)), vec4<bool>(!(u_input.a != 7502), global1.x, false || true, true), vec4<bool>(!true, global1.x, !true, false)));
            global2 = array<Struct_3, 18>();
        }
    }
    global2 = array<Struct_3, 18>();
    switch (firstLeadingBit(~u_input.a)) {
        case 2162: {
            let var_1 = var_0.x;
            global1 = select(!select(select(select(vec4<bool>(global1.x, true, var_0.x, global1.x), vec4<bool>(true, global1.x, var_0.x, var_0.x), true), select(vec4<bool>(true, false, global1.x, false), vec4<bool>(false, var_0.x, false, true), vec4<bool>(global1.x, var_0.x, global1.x, true)), select(vec4<bool>(true, global1.x, true, true), vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, true, false, var_0.x))), vec4<bool>(true, true, false, var_0.x), vec4<bool>(!true, any(vec3<bool>(true, true, var_0.x)), false, false)), vec4<bool>(any(global1.yxz), !false, all(select(select(vec4<bool>(false, var_0.x, var_0.x, global1.x), vec4<bool>(true, global1.x, var_0.x, true), vec4<bool>(var_0.x, false, true, var_0.x)), !vec4<bool>(var_0.x, false, true, false), true)), select(!var_0.x | global1.x, true, ~u_input.b.x < u_input.b.x)), false);
            var var_2 = global1.xyx;
            if (any(!(!(!(!vec3<bool>(false, false, global1.x)))))) {
            }
        }
        case 55104: {
            var var_1 = abs(reverseBits(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483648)), abs(vec4<i32>(u_input.c.x, 37516, u_input.c.x, u_input.c.x))))) >> (vec4<u32>(1u, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 72540u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 110655u, u_input.b.x), u_input.b), _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(36368u, 4294967295u)), vec2<u32>(u_input.b.x, 69446u))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, 4294967295u), 4294967295u)) % vec4<u32>(32u));
            switch (5925) {
                default: {
                    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.yxy))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1753.0) + _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-622.0))))));
                }
            }
            let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(432.0, _wgslsmith_f_op_f32(trunc(-114.0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(376.0)))) * global0.x), ~vec4<u32>(abs(~1u), ~10584u, ~(u_input.b.x >> (u_input.b.x % 32u)), _wgslsmith_sub_u32(21043u, reverseBits(u_input.b.x))), all(global1.xzz), _wgslsmith_f_op_f32(-global0.x));
        }
        default: {
            var var_1 = i32(-1) * -994;
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                let var_2 = max(vec3<i32>(countOneBits(u_input.a), -14076, 0) ^ (u_input.c | u_input.c), (min(u_input.c, countOneBits(vec3<i32>(u_input.c.x, u_input.a, u_input.a))) << (((u_input.b | u_input.b) >> (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<i32>(u_input.c.x, i32(-1) * -2147483648, u_input.c.x));
            }
            if (1000.0 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -663.0), _wgslsmith_f_op_f32(-467.0))))) {
            }
            var var_2 = 301.0;
        }
    }
    var var_1 = Struct_1(global0.x, _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(u_input.b.x, 0u, 21392u, 1u)) | min(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), ~vec4<u32>(u_input.b.x, 1u, 14293u, u_input.b.x)), abs(~vec4<u32>(u_input.b.x, 0u, 71757u, 25410u))), any(select(!select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, true), true), !select(vec4<bool>(var_0.x, global1.x, global1.x, false), vec4<bool>(true, global1.x, var_0.x, var_0.x), var_0.x), select(select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, global1.x, global1.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1359.0))));
    return !global1.xx;
}

fn func_5(arg_0: bool) -> u32 {
    switch (u_input.c.x) {
        case 26218: {
            let var_0 = Struct_2(_wgslsmith_sub_vec4_u32((_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(4294967295u, u_input.b.x, 1u, 0u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 10483u, 0u, 40657u), vec4<u32>(118659u, 18969u, u_input.b.x, 35325u))) ^ min(select(vec4<u32>(u_input.b.x, u_input.b.x, 23939u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), false), vec4<u32>(u_input.b.x, 21435u, u_input.b.x, u_input.b.x)), min(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), vec4<u32>(77078u, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(77891u, u_input.b.x, 35360u, u_input.b.x)) << (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(32342u, u_input.b.x, 4294967295u, 1u)), ~vec4<u32>(u_input.b.x, 9907u, 17684u, 1u)) % vec4<u32>(32u))), ~(~(~max(u_input.b.xz, u_input.b.yz))), select(vec2<bool>(!(global0.x > 889.0), !false), global1.xx, select(select(!vec2<bool>(false, true), !vec2<bool>(true, arg_0), !false), func_6(), arg_0 != any(vec3<bool>(global1.x, arg_0, false)))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0.x, -415.0, arg_0)))))), vec4<u32>(42441u, 0u, ~u_input.b.x, _wgslsmith_clamp_u32(firstLeadingBit(33925u), ~0u, 1u)), false, _wgslsmith_f_op_f32(-927.0)));
            var var_1 = var_0;
        }
        case 2147483647: {
            if (-235.0 > 499.0) {
                global2 = array<Struct_3, 18>();
                global3 = global1.x | global1.x;
                var var_0 = _wgslsmith_mod_u32(u_input.b.x, ~(~(~u_input.b.x) ^ u_input.b.x));
                return min(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~68264u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(7560u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 8102u, u_input.b.x, 58655u)), ~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u)), max(~u_input.b.x, 0u ^ u_input.b.x), u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 9962u, u_input.b.x, 4294967295u), reverseBits(vec4<u32>(u_input.b.x, 105746u, 11117u, 8571u)), ~vec4<u32>(4294967295u, 55100u, 0u, u_input.b.x)) ^ (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) >> (vec4<u32>(u_input.b.x, 21262u, 1u, u_input.b.x) % vec4<u32>(32u)))), ~(~(32153u >> (u_input.b.x % 32u))));
            }
            for (var var_0 = -2147483648; var_0 < 9957; var_0 += 1) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                break;
            }
            global3 = false;
            var var_0 = vec2<u32>(u_input.b.x, ~8918u);
        }
        default: {
            global2 = array<Struct_3, 18>();
            var var_0 = 2147483647;
        }
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-194.0, global0.x, -2170.0, -1563.0) + vec4<f32>(global0.x, global0.x, global0.x, 378.0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -804.0, -1000.0, 202.0), vec4<f32>(global0.x, -2164.0, global0.x, 1678.0), vec4<bool>(arg_0, true, arg_0, arg_0)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(522.0, global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(183.0, global0.x, global0.x, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -306.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000.0, -1000.0)), _wgslsmith_f_op_f32(-1247.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-847.0) + _wgslsmith_f_op_f32(global0.x * global0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -268.0) - _wgslsmith_f_op_f32(-321.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))));
            var var_0 = 587.0;
            global0 = vec4<f32>(global0.x, 350.0, global0.x, global0.x);
            let var_1 = Struct_2(reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, ~u_input.b.zy), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x) & (u_input.b.x | 110967u), 88466u, u_input.b.x)), u_input.b.xy, global1.yz, Struct_1(global0.x, ~firstLeadingBit(~vec4<u32>(1u, 57823u, u_input.b.x, u_input.b.x)), !(!(!true)), 655.0));
        }
        let var_0 = vec2<bool>(global1.x, !true);
        break;
    }
    var var_0 = global1.zyw;
    global3 = true;
    switch (-u_input.c.x) {
        case 82591: {
            global2 = array<Struct_3, 18>();
            switch (u_input.c.x) {
                case 21866: {
                }
                case 0: {
                    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, -192.0, any(!vec2<bool>(global1.x, var_0.x)))));
                    global2 = array<Struct_3, 18>();
                    let var_2 = min(u_input.c.yx, vec2<i32>(-(~u_input.a), u_input.a));
                    var var_3 = _wgslsmith_f_op_vec2_f32(select(global0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, -319.0))), vec2<f32>(1000.0, 487.0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000.0, 1694.0)), global0.xz), vec2<bool>(true, true)))), true));
                }
                case 2251: {
                    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(819.0, -1915.0, -277.0, 1000.0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1331.0, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, 1056.0, -2249.0)))))));
                    var var_1 = Struct_3(Struct_1(-142.0, select(~vec4<u32>(u_input.b.x, 66468u, 14265u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 7928u), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), false), func_6().x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x))), ~vec4<u32>(u_input.b.x, ~(u_input.b.x & u_input.b.x), ~1u, ~abs(4294967295u)), Struct_1(-1111.0, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 35422u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 35559u, 0u), vec4<u32>(u_input.b.x, 4294967295u, 41090u, u_input.b.x))), false, 1111.0));
                }
                default: {
                    var_0 = select(global1.zxz, global1.xww, global1.yxy);
                    let var_1 = u_input.c;
                }
            }
            global3 = all(global1.xz);
            switch (u_input.a) {
                case -43972: {
                    let var_1 = Struct_1(-188.0, ~reverseBits(vec4<u32>(2967u, u_input.b.x, u_input.b.x & u_input.b.x, 85242u)), !global1.x, global0.x);
                    global2 = array<Struct_3, 18>();
                    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.a), u_input.c.xx), u_input.c.zy);
                }
                case 38173: {
                    var var_1 = Struct_3(Struct_1(-534.0, vec4<u32>(48306u, u_input.b.x, u_input.b.x, ~1u), (_wgslsmith_clamp_i32(2147483647, 24692, 19536) | u_input.c.x) >= u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1605.0))), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 75706u, u_input.b.x), vec4<u32>(u_input.b.x, 57878u, 4294967295u, 5274u)) | reverseBits(vec4<u32>(4294967295u, 21423u, 0u, u_input.b.x)), ~vec4<u32>(0u, 1u, u_input.b.x, 6072u), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, false, var_0.x)))), Struct_1(global0.x, vec4<u32>(~1u, 1u, u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) << (~select(vec4<u32>(u_input.b.x, u_input.b.x, 20283u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u), vec4<bool>(var_0.x, false, false, var_0.x)) % vec4<u32>(32u)), true, global0.x));
                    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1198.0, _wgslsmith_f_op_f32(var_1.c.a + _wgslsmith_f_op_f32(1286.0 + 1279.0)), 750.0, 747.0) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -461.0) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.d)))), _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-976.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(exp2(global0.x)))) - _wgslsmith_f_op_f32(461.0 * _wgslsmith_f_op_f32(-var_1.a.a)))));
                    global3 = any(!vec3<bool>(true, arg_0, false));
                    var_2 = vec4<f32>(264.0, global0.x, 1357.0, -499.0);
                    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~firstLeadingBit(~(~u_input.b.x)), 0u), 18u)];
                }
                case -1: {
                    global1 = vec4<bool>(true, true, !true, global1.x && false);
                    return u_input.b.x;
                }
                case 3135: {
                    var var_1 = vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.a), u_input.c.x) >> (vec2<u32>(u_input.b.x, ~4294967295u) % vec2<u32>(32u));
                    global2 = array<Struct_3, 18>();
                }
                default: {
                    let var_1 = -vec4<i32>(~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -19698, -1), vec3<i32>(u_input.c.x, u_input.a, 2147483647) >> (u_input.b % vec3<u32>(32u))), countOneBits(u_input.a), _wgslsmith_dot_vec3_i32(select(vec3<i32>(15663, 12585, -2147483648), vec3<i32>(u_input.c.x, -14418, u_input.c.x) >> (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), !global1.zwx), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483648, 1, u_input.c.x), vec3<i32>(-2147483648, u_input.c.x, 1))), u_input.c.x);
                    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, 776.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-165.0 * -812.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -578.0))))));
                }
            }
        }
        case -1: {
            var var_1 = Struct_2(vec4<u32>(firstTrailingBit(~57760u), ~15219u, min(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x), u_input.b.x) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(61398u, 11218u, 1u, 67709u) >> (vec4<u32>(4294967295u, 58765u, 28480u, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(0u, 4294967295u, 31544u, u_input.b.x)) % vec4<u32>(32u)), abs(u_input.b.yy >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(99253u, 0u), u_input.b.yz) % vec2<u32>(32u))), vec2<bool>(!(!true != true), arg_0), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1216.0, -1540.0)))) + 192.0), ~(~vec4<u32>(7073u, u_input.b.x, 18630u, u_input.b.x) >> ((vec4<u32>(14498u, u_input.b.x, 0u, 1u) << (vec4<u32>(0u, u_input.b.x, 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), (419.0 > 1018.0) && var_0.x, -393.0));
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var var_2 = var_1.d.c;
                var_1 = Struct_2(vec4<u32>(_wgslsmith_div_u32(~4294967295u, _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u)) ^ ~min(u_input.b.x, u_input.b.x), u_input.b.x, var_1.b.x, var_1.b.x), ~_wgslsmith_sub_vec2_u32(u_input.b.zx, ~var_1.b), vec2<bool>(var_0.x, !true), Struct_1(376.0, var_1.a, var_1.d.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1925.0 + 1335.0) * _wgslsmith_f_op_f32(-140.0))))));
                global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d.d, var_1.d.d, 186.0, var_1.d.a)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1744.0), -624.0, 436.0, _wgslsmith_f_op_f32(-var_1.d.d)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.a, -1755.0, global0.x, var_1.d.a), vec4<f32>(var_1.d.a, var_1.d.a, var_1.d.a, var_1.d.d)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.d.d, var_1.d.a, var_1.d.d, -353.0), vec4<f32>(-341.0, global0.x, 1020.0, global0.x)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.a), -1272.0, 1382.0, var_1.d.a)))));
            }
        }
        default: {
            if (any(vec4<bool>(true, !arg_0, arg_0, !false))) {
                var var_1 = !(!(!(!(!true))));
                global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, global0.x, _wgslsmith_f_op_f32(abs(567.0)));
                var_1 = global1.x;
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var var_1 = _wgslsmith_f_op_f32(-1222.0 - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x * global0.x))));
                global0 = vec4<f32>(-291.0, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-251.0))) - _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(global0.x, -1000.0)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), global0.x)));
                var var_2 = vec4<u32>(~0u, ~_wgslsmith_clamp_u32(max(u_input.b.x, 21257u), 21333u << (min(4294967295u, 0u) % 32u), u_input.b.x), 38289u, 0u);
                global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(930.0, global0.x, _wgslsmith_f_op_f32(1062.0 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x))), -1154.0));
            }
        }
    }
    return u_input.b.x;
}

fn func_4(arg_0: f32) -> Struct_3 {
    let var_0 = max(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)) ^ ~(~u_input.b.x)), ~func_5(!false));
    var var_1 = 31828u;
    let var_2 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(30897u, u_input.b.x), u_input.b.zx), u_input.b.x);
    let var_3 = Struct_2(vec4<u32>(4294967295u << (62371u % 32u), u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2, u_input.b.x, 0u, 9785u), vec4<u32>(var_0, var_2, 1u, 29534u), false), ~vec4<u32>(0u, var_0, var_0, u_input.b.x)), 7205u), ~var_2), ~abs(u_input.b.yx), func_6(), Struct_1(-1000.0, reverseBits(firstLeadingBit(vec4<u32>(64407u, var_2, 1u, 0u))), !any(!global1.zz), arg_0));
    let var_4 = global2[_wgslsmith_index_u32(reverseBits(1u), 18u)];
    return Struct_3(var_4.a, select(reverseBits(var_4.a.b), var_3.d.b, all(select(vec3<bool>(var_4.a.c, true, false), !vec3<bool>(var_3.c.x, true, false), !global1.zzy))), Struct_1(var_4.a.d, _wgslsmith_add_vec4_u32(~vec4<u32>(var_3.d.b.x, 138724u, var_0, var_4.c.b.x) >> (vec4<u32>(0u, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)), var_3.a), false, _wgslsmith_f_op_f32(-690.0)));
}

fn func_3() -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -443.0)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-269.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1879.0))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(global0.x).a.d))));
    for (var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.c.x ^ reverseBits(u_input.a), ~(-u_input.c.x)), -_wgslsmith_sub_i32(u_input.a, -1) | _wgslsmith_sub_i32(-2147483647, -2147483648), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483648, u_input.c.x), vec3<i32>(2147483647, u_input.a, u_input.c.x))), u_input.a), ~vec4<i32>(63688 << (func_4(1005.0).c.b.x % 32u), u_input.c.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a), -(u_input.a | u_input.a))); countOneBits(4294967295u) == 24920u; var_2 -= 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        continue;
    }
    switch (~firstLeadingBit(_wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(-u_input.c.x, -52117)))) {
        case -1: {
            let var_2 = var_1;
        }
        case 46491: {
            let var_2 = global0.x;
            var var_3 = Struct_2(var_0.a.b, vec2<u32>(u_input.b.x, u_input.b.x), global1.zw, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1004.0))).a);
            let var_4 = vec2<u32>(~_wgslsmith_div_u32(10033u, 1u), ~countOneBits(~(~1u)));
            var var_5 = Struct_2(abs(select(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, var_4.x), u_input.b.x, var_0.a.b.x, 52721u), vec4<u32>(var_3.a.x, ~var_0.b.x, min(17963u, var_0.a.b.x), 50191u), !(!vec4<bool>(false, var_3.c.x, true, true)))), ~_wgslsmith_clamp_vec2_u32(u_input.b.zz, var_4, max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(66157u, var_4.x)), min(vec2<u32>(9929u, u_input.b.x), vec2<u32>(var_3.d.b.x, var_4.x)))), select(select(vec2<bool>(!global1.x, any(vec2<bool>(true, var_0.a.c))), !(!vec2<bool>(var_0.a.c, global1.x)), all(select(vec4<bool>(var_3.c.x, global1.x, false, false), vec4<bool>(global1.x, false, global1.x, global1.x), var_3.d.c))), vec2<bool>(!var_3.c.x, false), !vec2<bool>(63683u != 1u, !var_3.c.x)), var_0.a);
            let var_6 = Struct_2(var_3.d.b, _wgslsmith_add_vec2_u32(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(38554u, var_3.b.x), vec2<u32>(33010u, 1705u), var_4) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(55845u, 87795u), vec2<u32>(13812u, u_input.b.x)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(var_5.a.zx, var_0.c.b.zw >> (var_0.a.b.wx % vec2<u32>(32u)))), !vec2<bool>(global1.x, any(vec2<bool>(var_0.c.c, true))), Struct_1(3049.0, _wgslsmith_add_vec4_u32(var_5.d.b, abs(abs(vec4<u32>(1u, var_5.a.x, var_3.a.x, u_input.b.x)))), any(vec3<bool>(var_5.d.c, !global1.x, true || false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-594.0, -1432.0), 345.0))));
        }
        case -2147483648: {
        }
        case -83705: {
            global0 = _wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 1561.0, global0.x, -1083.0))))))));
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_2 = vec4<i32>(-(~_wgslsmith_mult_i32(16350, u_input.c.x)), u_input.a, u_input.a, u_input.c.x);
                let var_3 = !(!all(vec4<bool>(true, true, var_0.c.c, global1.x)) && var_0.c.c);
                var var_4 = func_4(var_1.x);
                let var_5 = !vec4<bool>((reverseBits(1u) << (48007u % 32u)) < var_4.a.b.x, var_0.c.c, var_0.a.c, !global1.x);
            }
            let var_2 = global1.x;
        }
        default: {
            let var_2 = 1u;
            let var_3 = ~49572u;
            for (var var_4 = ~(~(_wgslsmith_add_i32(u_input.c.x, u_input.c.x) >> (4294967295u % 32u))) & u_input.c.x; var_4 < -40026; ) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_5 = Struct_1(var_1.x, func_4(_wgslsmith_f_op_f32(var_0.c.d + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(725.0, global0.x)))).c.b, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
                let var_6 = select(!select(select(vec4<bool>(var_5.c, false, true, var_0.c.c), select(vec4<bool>(false, var_5.c, true, global1.x), vec4<bool>(global1.x, var_0.a.c, global1.x, global1.x), vec4<bool>(true, true, var_5.c, global1.x)), true), !vec4<bool>(true, var_0.a.c, false, false), select(vec4<bool>(true, var_5.c, var_5.c, true), !vec4<bool>(global1.x, false, var_5.c, false), global1.x)), !vec4<bool>(!true, false, !(global1.x | var_5.c), true), all(!global1.zyz));
            }
            let var_4 = vec4<u32>(max(~u_input.b.x & ~4294967295u, ~_wgslsmith_div_u32(var_2, u_input.b.x)), u_input.b.x, _wgslsmith_mult_u32(var_3, var_0.a.b.x), _wgslsmith_div_u32(var_2 & 68187u, 13156u) & (firstLeadingBit(0u) >> ((u_input.b.x >> (62063u % 32u)) % 32u))) | _wgslsmith_mult_vec4_u32((min(var_0.c.b, var_0.b) ^ select(vec4<u32>(var_3, 4294967295u, 1u, var_0.a.b.x), var_0.c.b, true)) >> (vec4<u32>(min(var_3, 4294967295u), ~var_2, _wgslsmith_mod_u32(var_2, var_0.a.b.x), 19702u) % vec4<u32>(32u)), func_4(_wgslsmith_f_op_f32(-761.0)).a.b);
            var var_5 = select(u_input.a, 60944, 8786 != ~(-u_input.a));
        }
    }
    return u_input.a;
}

fn func_2() -> f32 {
    switch (~5491 & -1) {
        case 1: {
            let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), vec4<u32>(u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.yx, _wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(1u, 0u))), 47521u << (u_input.b.x % 32u)), !global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-516.0), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(round(-567.0)))))));
            let var_1 = var_0;
            switch (func_3()) {
                case 49196: {
                    let var_2 = Struct_3(Struct_1(629.0, vec4<u32>(_wgslsmith_clamp_u32(abs(0u), 3756u, 0u), reverseBits(0u << (91568u % 32u)), min(_wgslsmith_div_u32(var_0.b.x, u_input.b.x), abs(var_1.b.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(3793u, u_input.b.x, var_0.b.x), vec3<u32>(var_0.b.x, var_1.b.x, 17907u))), !(!(-538.0 != -830.0)), var_1.a), vec4<u32>(10884u, 1u, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(var_0.b, var_0.b), ~max(var_0.b, var_1.b)), ~select(var_1.b.x, 0u << (4294967295u % 32u), u_input.a != -54270)), func_4(_wgslsmith_f_op_f32(exp2(-775.0))).c);
                    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x)));
                }
                default: {
                    global2 = array<Struct_3, 18>();
                    let var_2 = -715.0;
                }
            }
        }
        case -2147483648: {
            for (var var_0: i32; var_0 >= -62362; var_0 += 1) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                global2 = array<Struct_3, 18>();
                break;
            }
            let var_0 = _wgslsmith_f_op_vec2_f32(floor(global0.ww));
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))), ~(~reverseBits(vec4<u32>(29887u, u_input.b.x, u_input.b.x, u_input.b.x))), global1.x, _wgslsmith_f_op_f32(floor(var_0.x))), select(vec4<u32>(_wgslsmith_mult_u32(~1u, ~1394u), 33286u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 0u, 4294967295u), vec4<u32>(1u, 11208u, u_input.b.x, 15761u))), max(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 937u), vec4<u32>(4294967295u, 0u, 45352u, 1u))), vec4<u32>(u_input.b.x, abs(u_input.b.x), 30512u << (u_input.b.x % 32u), 9541u)), !select(!vec4<bool>(true, global1.x, false, global1.x), !vec4<bool>(false, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, true)))), Struct_1(var_0.x, vec4<u32>((u_input.b.x | u_input.b.x) >> (select(u_input.b.x, u_input.b.x, false) % 32u), u_input.b.x, ~4294967295u, _wgslsmith_mod_u32(66152u, u_input.b.x | u_input.b.x)), global1.x, 282.0));
                continue;
            }
        }
        default: {
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        }
        continue;
    }
    let var_0 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(ceil(global0.x))))));
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~u_input.b.x) & firstLeadingBit(u_input.b.x), 18u)];
    }
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(482.0, -2143.0, -501.0, 875.0))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-322.0, -1306.0, global0.x, 676.0)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 1278.0, 653.0, -681.0), _wgslsmith_div_vec4_f32(vec4<f32>(-185.0, var_0.c.d, -824.0, global0.x), vec4<f32>(global0.x, var_0.a.a, var_0.c.a, var_0.a.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-520.0, _wgslsmith_f_op_f32(abs(233.0)), 522.0, _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(275.0, -871.0, var_0.c.d, var_0.c.d) - vec4<f32>(-1000.0, var_0.a.a, 345.0, var_0.a.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.a.d, -247.0, var_0.a.d))))), select(vec4<bool>(!func_4(-2287.0).a.c, global1.x, false, all(global1.yw)), select(!(!vec4<bool>(false, true, false, false)), !select(vec4<bool>(global1.x, true, true, false), vec4<bool>(var_0.a.c, var_0.a.c, false, var_0.a.c), global1.x), vec4<bool>(var_0.c.a > var_0.a.d, false, !global1.x, !var_0.c.c)), -23102 >= u_input.c.x)));
    return var_0.a.a;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    if (arg_1.d.c) {
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            continue;
        }
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
        var var_0 = u_input.a;
        var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zw - global0.xz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000.0, arg_0.d.d) + vec2<f32>(1500.0, arg_0.d.d)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(673.0, arg_1.d.a)));
        var var_2 = firstTrailingBit(vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_mod_u32(120965u << (u_input.b.x % 32u), 11962u), 1u, 1u) | vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4768u), vec2<u32>(u_input.b.x, 42131u)), 4294967295u, ~1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(arg_0.d.b), max(arg_1.d.b, arg_0.d.b))));
    }
    let var_0 = func_4(1575.0).a.c;
    if ((1084.0 == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-390.0 * arg_1.d.d), _wgslsmith_f_op_f32(round(-1608.0))))) && ((~arg_0.d.b.x << (reverseBits(~arg_0.a.x) % 32u)) != _wgslsmith_mod_u32(firstTrailingBit(~u_input.b.x), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 17132u, 0u), vec4<u32>(37731u, u_input.b.x, 101689u, arg_0.a.x)), arg_0.a.x)))) {
        var var_1 = global2[_wgslsmith_index_u32(1u, 18u)];
        for (var var_2 = -1; ; var_2 += 1) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            break;
        }
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            var var_2 = -1;
            continue;
        }
    }
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        if (!(countOneBits(abs(firstTrailingBit(-1))) == 1)) {
            let var_1 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(firstTrailingBit(arg_0.a.x), firstLeadingBit(arg_0.d.b.x), ~u_input.b.x)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, ~vec3<u32>(0u, arg_0.b.x, arg_0.b.x)), ~_wgslsmith_mult_vec3_u32(arg_1.a.wzx & arg_1.a.wwy, arg_1.d.b.zww)));
            var var_2 = vec2<bool>((((arg_1.a.x << (4294967295u % 32u)) <= arg_0.b.x) | !all(vec4<bool>(true, false, true, false))) || ((_wgslsmith_f_op_f32(exp2(2721.0)) > _wgslsmith_f_op_f32(155.0 - -746.0)) & !(4294967295u != 19909u)), global1.x);
            return func_4(359.0);
        }
    }
    let var_1 = arg_0;
    return Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1237.0, _wgslsmith_f_op_f32(-271.0 - var_1.d.d)))).a, arg_1.a | vec4<u32>(firstLeadingBit(~arg_0.d.b.x), ~(~u_input.b.x), var_1.a.x, 20358u), func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1307.0 + -1178.0), _wgslsmith_f_op_f32(-555.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1108.0) + _wgslsmith_div_f32(arg_1.d.a, -1824.0)))).a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_7(Struct_2(_wgslsmith_mod_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 51662u, u_input.b.x, u_input.b.x))), ~vec4<u32>(47044u, u_input.b.x, u_input.b.x, u_input.b.x)), ~(~(u_input.b.yz >> (u_input.b.zx % vec2<u32>(32u)))), !select(!global1.yz, global1.yx, !true), Struct_1(_wgslsmith_f_op_f32(func_2()), vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u), func_4(-358.0).b.x, 0u, ~u_input.b.x), any(!vec3<bool>(false, true, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - _wgslsmith_f_op_f32(-global0.x)))), Struct_2(select(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u), max(reverseBits(vec4<u32>(u_input.b.x, 57265u, u_input.b.x, 13888u)), vec4<u32>(1u, 9191u, 30232u, u_input.b.x) ^ vec4<u32>(u_input.b.x, 14698u, u_input.b.x, u_input.b.x)), vec4<bool>(!false, global1.x, global1.x, true)), u_input.b.zx, global1.ww, func_4(-756.0).a));
    for (var var_1 = -66502; var_1 < -1; var_1 += 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        var var_2 = 524.0 >= _wgslsmith_f_op_f32(-var_0.a.a);
    }
    if (var_0.a.c) {
        if (var_0.c.c) {
            let var_1 = -2147483647;
            let var_2 = global2[_wgslsmith_index_u32(var_0.c.b.x, 18u)];
            var var_3 = ~(var_2.b.x << ((~var_0.c.b.x << (51722u % 32u)) % 32u));
        }
        global2 = array<Struct_3, 18>();
        let var_1 = func_7(Struct_2(var_0.b, var_0.b.xz, global1.wy, var_0.c), Struct_2(var_0.b, _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, 59225u)), var_0.c.b.xy) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), global1.yw, var_0.a)).c;
    }
    switch (abs(~u_input.c.x)) {
        case 985: {
            let var_1 = func_7(Struct_2(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, var_0.b.x, u_input.b.x), vec4<u32>(4294967295u, var_0.a.b.x, u_input.b.x, u_input.b.x))), reverseBits(vec2<u32>(~1u, 3332u)), vec2<bool>((global0.x >= -802.0) && (u_input.c.x > -2147483648), true), var_0.a), Struct_2(abs(var_0.b), func_4(_wgslsmith_f_op_f32(round(global0.x))).b.xx, select(select(!vec2<bool>(true, false), select(global1.wz, global1.wx, global1.yz), vec2<bool>(false, false)), func_6(), func_6()), var_0.a));
            switch (abs(u_input.a)) {
                case 42723: {
                    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(u_input.a, -2147483648, u_input.a, u_input.a))), ~vec4<i32>(u_input.c.x, -34115, u_input.c.x, 0) >> (~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 67656u) % vec4<u32>(32u))), select(vec4<i32>(_wgslsmith_div_i32(2147483647, 1), u_input.a, -1 ^ u_input.a, 0), select(vec4<i32>(u_input.a, 0, -2147483648, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.a), vec4<i32>(29450, u_input.a, u_input.c.x, u_input.c.x)), vec4<bool>(false, var_1.a.c, false, var_0.a.c)), !(!vec4<bool>(false, true, true, true)))), reverseBits(-abs(countOneBits(vec4<i32>(1, 1, u_input.c.x, -1)))));
                    var_0 = func_4(_wgslsmith_f_op_f32(-558.0 - -1000.0));
                    global3 = func_7(Struct_2(vec4<u32>(countOneBits(~u_input.b.x), (var_1.c.b.x << (0u % 32u)) ^ (0u << (1u % 32u)), u_input.b.x, ~(~1u)), vec2<u32>(_wgslsmith_clamp_u32(var_1.c.b.x, var_0.a.b.x, 0u) | 1u, ~_wgslsmith_sub_u32(var_0.a.b.x, var_1.b.x)), global1.yw, func_4(var_0.c.a).a), Struct_2(func_4(-113.0).a.b, _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.a.b.x, 137892u), ~var_0.a.b.xy), func_6(), func_4(var_0.c.d).a)).a.c;
                    var var_3 = 405.0;
                }
                default: {
                    global1 = !vec4<bool>(-u_input.a < u_input.c.x, !any(!vec4<bool>(false, true, true, var_1.a.c)), global1.x, var_0.a.c);
                    var var_2 = func_7(Struct_2(var_0.b << (~firstTrailingBit(vec4<u32>(var_1.a.b.x, var_1.c.b.x, 62483u, 1u)) % vec4<u32>(32u)), u_input.b.zz ^ _wgslsmith_mod_vec2_u32(~u_input.b.zy, _wgslsmith_sub_vec2_u32(var_1.c.b.xz, var_0.c.b.xw)), global1.zy, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(193.0, var_1.c.a)), -293.0), ~var_0.b, !true, var_0.c.a)), Struct_2(abs(vec4<u32>(var_0.a.b.x, var_1.a.b.x, u_input.b.x, 88116u)) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(var_0.b, var_0.c.b), var_0.b), _wgslsmith_mult_vec2_u32(var_0.c.b.xy, ~_wgslsmith_mod_vec2_u32(var_1.a.b.zy, vec2<u32>(38380u, var_1.b.x))), vec2<bool>(-u_input.c.x > (-557 >> (33823u % 32u)), all(select(vec3<bool>(var_0.c.c, var_1.a.c, false), global1.zyz, global1.zwz))), var_0.c)).b;
                    let var_3 = vec4<bool>(all(global1.xw), !(_wgslsmith_clamp_i32(u_input.c.x, abs(27291), u_input.a) <= u_input.c.x), false, _wgslsmith_dot_vec4_u32(select(vec4<u32>(52259u, 62229u, var_1.a.b.x, 1u) << (var_0.c.b % vec4<u32>(32u)), vec4<u32>(1u, var_1.c.b.x, 4294967295u, 1u), vec4<bool>(var_0.a.c, var_0.c.c, false, true)), ~_wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, u_input.b.x, var_2.x, var_0.a.b.x))) <= ~(~(~1u)));
                }
            }
            return Struct_1(var_1.a.d, vec4<u32>(var_0.c.b.x ^ func_7(Struct_2(vec4<u32>(1u, var_0.b.x, u_input.b.x, var_1.a.b.x), var_1.a.b.zw, vec2<bool>(var_1.a.c, false), var_1.c), Struct_2(var_0.c.b, vec2<u32>(var_1.b.x, 1u), global1.zw, var_1.a)).c.b.x, 4294967295u, u_input.b.x, firstTrailingBit(max(1u, u_input.b.x))) | ~vec4<u32>(var_0.c.b.x, 1u, 85899u | u_input.b.x, var_0.a.b.x ^ var_1.b.x), select(global1.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-38933, u_input.c.x), vec2<i32>(46512, 28723))) < 26325, !global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1127.0))));
        }
        case -2147483648: {
        }
        case 1: {
            for (var var_1 = 17483; var_1 > -22951; var_1 -= 1) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                continue;
            }
            let var_1 = u_input.a;
        }
        default: {
            var_0 = global2[_wgslsmith_index_u32(44569u, 18u)];
            global1 = select(vec4<bool>(!all(global1.zz), !(!false), var_0.c.c, func_7(Struct_2(var_0.b, abs(vec2<u32>(57132u, 63638u)), select(vec2<bool>(var_0.c.c, false), global1.xx, var_0.a.c), var_0.a), Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(55051u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 15333u, u_input.b.x, var_0.c.b.x)), firstTrailingBit(u_input.b.zz), !global1.wz, func_4(global0.x).a)).c.c), !select(select(!vec4<bool>(global1.x, var_0.c.c, false, false), !vec4<bool>(true, var_0.a.c, true, true), true), vec4<bool>(func_6().x, !var_0.a.c, true | true, !false), vec4<bool>(var_0.c.c != global1.x, var_0.c.c == true, global1.x, var_0.c.c)), !(!var_0.c.c) && !(global1.x & any(vec3<bool>(var_0.a.c, global1.x, var_0.a.c))));
        }
    }
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        global3 = func_7(Struct_2(var_0.a.b, select(vec2<u32>(~var_0.a.b.x, var_0.b.x), vec2<u32>(u_input.b.x | 43092u, max(0u, u_input.b.x)), true), vec2<bool>(any(!vec4<bool>(false, var_0.c.c, var_0.c.c, var_0.c.c)), all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.d)) - _wgslsmith_f_op_f32(ceil(-309.0))), vec4<u32>(firstLeadingBit(u_input.b.x), min(32961u, var_0.c.b.x), ~var_0.a.b.x, 1u), var_0.c.c, 469.0)), Struct_2(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, 50943u, var_0.c.b.x, 7316u)), var_0.b) | firstTrailingBit(var_0.c.b), _wgslsmith_div_vec2_u32(~var_0.b.xy, ~max(vec2<u32>(11851u, 1u), vec2<u32>(u_input.b.x, 4294967295u))), global1.yw, Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -1345.0), var_0.c.b, var_0.c.c == (false & global1.x), global0.x))).a.c;
        if (false) {
        }
        var var_1 = Struct_2(var_0.c.b, ~vec2<u32>(max(23644u, var_0.a.b.x) ^ ~var_0.c.b.x, min(var_0.c.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(42138u, u_input.b.x, var_0.a.b.x)))), !select(global1.zx, vec2<bool>(!true, var_0.c.c), !var_0.c.c), var_0.c);
        switch (_wgslsmith_mult_i32(793, -7503)) {
            case 571: {
                var var_2 = abs(firstLeadingBit(abs(~(~4294967295u))));
                var_0 = global2[_wgslsmith_index_u32(~max(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, var_0.a.b.x, var_1.a.x), vec4<u32>(4294967295u, var_1.d.b.x, 31687u, var_1.a.x)), ~_wgslsmith_mod_u32(0u, 37526u)) >> (u_input.b.x % 32u), 18u)];
                global1 = select(select(vec4<bool>(!false, true, !func_4(-575.0).a.c, false), vec4<bool>(var_1.d.c, any(select(var_1.c, global1.zz, false)), select(false, all(vec2<bool>(global1.x, var_1.d.c)), var_0.a.c), var_1.d.c), all(!vec3<bool>(false, var_1.d.c, true))), !select(vec4<bool>(false, !false, false, all(global1.wyz)), !(!vec4<bool>(true, false, global1.x, var_0.c.c)), select(!vec4<bool>(global1.x, global1.x, true, var_0.c.c), select(vec4<bool>(global1.x, false, true, false), vec4<bool>(global1.x, true, false, false), var_1.c.x), select(vec4<bool>(false, var_1.d.c, false, global1.x), vec4<bool>(true, false, true, false), true))), vec4<bool>(func_6().x, var_0.c.c, var_1.d.c, !(!true)));
                var_0 = global2[_wgslsmith_index_u32(16306u, 18u)];
                continue;
            }
            default: {
                global2 = array<Struct_3, 18>();
            }
        }
    }
    return func_4(451.0).c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 18>();
    var var_0 = func_1();
    if (!false) {
        let var_1 = Struct_2(~_wgslsmith_mult_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, var_0.b.x, u_input.b.x, var_0.b.x)) & ~min(var_0.b, var_0.b), var_0.b.wy, vec2<bool>(var_0.c, all(vec4<bool>(u_input.b.x >= 1u, global1.x, all(vec4<bool>(true, var_0.c, false, var_0.c)), true))), func_7(Struct_2(firstTrailingBit(vec4<u32>(var_0.b.x, var_0.b.x, 4294967295u, 1u)) ^ var_0.b, vec2<u32>(~0u, 1u), !(!global1.wx), func_4(_wgslsmith_f_op_f32(global0.x - 1175.0)).a), Struct_2(vec4<u32>(38987u, ~u_input.b.x, firstLeadingBit(0u), u_input.b.x), _wgslsmith_div_vec2_u32(u_input.b.yx, u_input.b.yy) ^ ~vec2<u32>(1u, 0u), vec2<bool>(global1.x, true), Struct_1(-1327.0, ~var_0.b, func_6().x, _wgslsmith_f_op_f32(min(var_0.a, 402.0))))).a);
        loop {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            var var_2 = _wgslsmith_mult_vec2_i32(u_input.c.zz, u_input.c.xz & vec2<i32>(-4627, -u_input.a));
        }
        var var_2 = vec2<u32>(_wgslsmith_sub_u32(var_1.b.x, func_7(Struct_2(vec4<u32>(var_1.a.x, var_0.b.x, var_1.d.b.x, 52155u), vec2<u32>(var_1.a.x, var_1.a.x), vec2<bool>(false, true), var_1.d), Struct_2(var_0.b, vec2<u32>(var_0.b.x, u_input.b.x), var_1.c, var_1.d)).a.b.x), ~23443u) | ~vec2<u32>(u_input.b.x, 3624u);
        if (all(select(select(vec4<bool>(true, !var_0.c, func_7(var_1, var_1).a.c, -499.0 > -1037.0), !select(vec4<bool>(false, var_1.c.x, false, var_1.d.c), vec4<bool>(global1.x, false, true, true), global1.x), vec4<bool>(func_1().c, all(vec4<bool>(var_0.c, true, true, global1.x)), var_0.a >= -461.0, global1.x)), select(select(!vec4<bool>(global1.x, var_1.c.x, true, true), vec4<bool>(global1.x, var_1.d.c, true, false), !var_1.c.x), select(select(vec4<bool>(false, true, true, false), vec4<bool>(global1.x, global1.x, false, var_0.c), vec4<bool>(var_0.c, var_1.d.c, false, var_1.c.x)), !vec4<bool>(true, true, true, var_1.d.c), !vec4<bool>(var_1.d.c, false, var_1.d.c, true)), vec4<bool>(true, !var_0.c, any(vec4<bool>(var_1.c.x, false, global1.x, false)), !false)), !select(select(vec4<bool>(var_1.c.x, var_1.d.c, false, false), vec4<bool>(false, var_0.c, var_0.c, true), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)), !vec4<bool>(false, true, true, var_1.d.c), !global1.x)))) {
            var var_3 = var_1.a.yw;
        }
        switch (~6410) {
            case 58284: {
                let var_3 = var_1.d;
                var var_4 = ~(~u_input.b.x);
            }
            case 27837: {
            }
            case 37418: {
                global3 = var_1.d.c;
                let var_3 = vec4<bool>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~var_1.a.zz, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, var_0.b.x), u_input.b.zy)), ~(1u ^ u_input.b.x)) < var_1.d.b.x, false, all(global1.yx), !global1.x);
                global3 = !(global0.x == _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.d)), func_7(Struct_2(var_1.a, vec2<u32>(1u, u_input.b.x), vec2<bool>(true, var_0.c), var_1.d), var_1).a.a))));
                let var_4 = _wgslsmith_sub_u32(22016u, ~(~_wgslsmith_mult_u32(0u, var_1.d.b.x)) | ~func_1().b.x);
            }
            case 1: {
                var_2 = vec2<u32>(~(~_wgslsmith_clamp_u32(1u, 6805u, var_0.b.x)), (1u >> (_wgslsmith_div_u32(var_1.a.x, var_2.x) % 32u)) << (34401u % 32u)) << (vec2<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(24855u, u_input.b.x, var_2.x), var_0.b.xzy)), func_7(Struct_2(~var_1.d.b, ~var_1.b, vec2<bool>(global1.x, var_1.c.x), var_1.d), var_1).c.b.x) % vec2<u32>(32u));
            }
            default: {
                let var_3 = Struct_2(vec4<u32>(select(func_5(!true), _wgslsmith_clamp_u32(~var_0.b.x, var_1.b.x, 4294967295u & 4294967295u), var_0.c), ~116142u, select(var_2.x, ~_wgslsmith_mult_u32(42371u, 1u), all(select(vec3<bool>(var_1.d.c, global1.x, global1.x), vec3<bool>(true, var_1.c.x, true), false))), 1u), vec2<u32>(func_4(var_1.d.a).c.b.x, _wgslsmith_dot_vec3_u32(min(func_1().b.zzy, var_0.b.yyw), vec3<u32>(38762u, ~var_0.b.x, ~63804u))), global1.xx, func_1());
            }
        }
    }
    let var_1 = _wgslsmith_f_op_f32(exp2(global0.x));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(var_0.a, -432.0)), var_0.a), _wgslsmith_f_op_f32(var_0.a - var_1), _wgslsmith_f_op_f32(func_1().d - _wgslsmith_f_op_f32(func_2())), global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(ceil(853.0)), global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d - global0.x), _wgslsmith_f_op_f32(ceil(591.0)))))), !true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_div_vec4_i32(vec4<i32>(1, -2147483648 ^ ~(-5345), func_3(), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.c.x), vec4<i32>(-9565, -1, 6996, u_input.c.x), global1.x), ~vec4<i32>(2147483647, 16957, u_input.a, u_input.a))), vec4<i32>(u_input.c.x, -29378, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 28731, 19785, u_input.c.x), vec4<i32>(1, u_input.a, u_input.a, u_input.c.x)) | u_input.a, u_input.a)));
}

