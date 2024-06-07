// {"0:0":[232,77,83,226,120,204,33,139,134,122,131,101,225,191,42,201,46,211,231,16,182,98,73,135,42,249,225,119,17,195,248,12]}
// Seed: 9336330305561754470

struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
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

var<private> global0: Struct_3 = Struct_3(vec2<f32>(1008.0, -380.0), vec4<i32>(4970, -61373, 2147483647, -1), vec4<bool>(false, false, true, true), vec2<u32>(0u, 1u), vec4<i32>(-1, 1, 0, 24444));

var<private> global1: i32 = -1;

var<private> global2: array<u32, 25>;

var<private> global3: array<u32, 6>;

var<private> LOOP_COUNTERS: array<u32, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_3(arg_2.a, abs(reverseBits(vec4<i32>(_wgslsmith_div_i32(-9931, 0), arg_2.e.x & arg_2.b.x, abs(global0.e.x), _wgslsmith_add_i32(arg_2.b.x, -11166)))), select(global0.c, vec4<bool>(all(!global0.c), false || (true & false), !(!arg_2.c.x), any(arg_2.c.xxw)), true), arg_2.d << (_wgslsmith_mod_vec2_u32((arg_3.zy & global0.d) | arg_3.yz, ~(vec2<u32>(0u, arg_3.x) << (global0.d % vec2<u32>(32u)))) % vec2<u32>(32u)), arg_2.e);
    switch (abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-36216, global0.e.x, global0.e.x, arg_2.e.x), ~vec4<i32>(arg_1.b.b.x, arg_1.b.b.x, 2147483647, 0)), -2147483648) << (countOneBits(40279u) % 32u))) {
        case -20851: {
            global0 = Struct_3(var_0.a, vec4<i32>(arg_1.b.b.x, _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b.b.x, arg_2.e.x, var_0.e.x), vec3<i32>(global0.b.x, 0, arg_2.e.x))), arg_2.e.yxy), countOneBits(var_0.b.x), ~(~35128 & global0.b.x)), !var_0.c, u_input.a.zx, firstTrailingBit(max(global0.e | _wgslsmith_div_vec4_i32(global0.e, arg_2.b), vec4<i32>(global0.e.x, arg_1.b.b.x, max(40697, 0), ~(-1)))));
        }
        default: {
            switch (arg_1.b.b.x) {
                default: {
                    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a.x, -1266.0, 635.0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1338.0, global0.a.x, 234.0) * vec3<f32>(arg_2.a.x, arg_2.a.x, var_0.a.x)), vec3<f32>(var_0.a.x, arg_2.a.x, 702.0)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, var_0.a.x, global0.a.x) + vec3<f32>(-1271.0, 1143.0, -550.0)))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-173.0 * -671.0), global0.a.x), _wgslsmith_f_op_f32(select(369.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(778.0)) - _wgslsmith_f_op_f32(-1661.0 * 258.0)), all(arg_2.c.xw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1612.0 - -1000.0) + 621.0))));
                    var var_2 = u_input.a;
                    global1 = arg_2.b.x;
                }
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    for (var var_1 = -26710; var_1 < 2147483647; var_1 -= 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        for (var var_2 = -1; ; var_2 -= 1) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            break;
        }
    }
    var var_1 = vec4<bool>(arg_0.x != ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, arg_3.x, 20939u)), vec3<u32>(1u, 4294967295u, u_input.b.x)), (_wgslsmith_sub_i32(-15424 & global0.e.x, _wgslsmith_mod_i32(arg_1.b.b.x, 31354)) | -51328) == (i32(-1) * -arg_2.e.x), true, false);
    return global0.b & arg_2.e;
}

fn func_5() -> vec2<f32> {
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 42281u, global3[_wgslsmith_index_u32(27321u, 6u)], global0.d.x), vec4<u32>(4294967295u, 0u, global3[_wgslsmith_index_u32(1u, 6u)], 0u))) > ~_wgslsmith_sub_u32(_wgslsmith_add_u32(5714u & 129599u, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(36201u, 6u)], 0u)), _wgslsmith_mod_u32(select(global2[_wgslsmith_index_u32(17572u, 25u)], 12616u, global0.c.x), countOneBits(22742u)));
            global1 = firstLeadingBit(reverseBits(global0.b.x) << (~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11332u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 25u)], 6u)], 6u)], global3[_wgslsmith_index_u32(60270u, 6u)], 25785u), u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], global3[_wgslsmith_index_u32(u_input.a.x, 6u)], 0u, 4294967295u), u_input.a)) % 32u));
            global2 = array<u32, 25>();
            let var_1 = Struct_4(_wgslsmith_sub_vec4_u32(reverseBits(firstTrailingBit(u_input.a | vec4<u32>(1u, global0.d.x, u_input.a.x, 4294967295u))), u_input.a), !vec3<bool>(!(0u == 64797u), any(select(vec3<bool>(false, true, global0.c.x), vec3<bool>(global0.c.x, true, global0.c.x), global0.c.x)), true), (~(~1u) << (global0.d.x % 32u)) & _wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 13456u), -(~(-max(vec3<i32>(global0.e.x, -1, 1), vec3<i32>(-2147483648, global0.e.x, -4206)))));
            var var_2 = abs(57550u);
        }
        global0 = Struct_3(global0.a, global0.b, global0.c, ~(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.x, 41786u), vec2<u32>(global0.d.x, global3[_wgslsmith_index_u32(1u, 6u)]))) | (global0.d ^ ~vec2<u32>(50837u, 1u))), min(firstTrailingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(global0.e.x, global0.e.x, -2043, 0), func_6(vec2<u32>(u_input.b.x, u_input.a.x), Struct_2(u_input.a.x, Struct_1(global0.d.x, global0.b.ywz)), Struct_3(vec2<f32>(global0.a.x, -1838.0), global0.e, global0.c, u_input.b.zy, global0.b), vec3<u32>(61497u, 1u, 15674u)))), countOneBits(min(global0.b, global0.b))));
        let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(643.0)), _wgslsmith_f_op_f32(sign(-1000.0))) + vec2<f32>(1208.0, _wgslsmith_f_op_f32(ceil(global0.a.x))))), global0.b, global0.c, select(reverseBits(vec2<u32>(u_input.a.x | 50083u, ~4294967295u)), global0.d, global0.c.wz), func_6(u_input.b.zx, Struct_2(_wgslsmith_div_u32(~global2[_wgslsmith_index_u32(1u, 25u)], ~global0.d.x), Struct_1(countOneBits(85558u), global0.b.yyw)), Struct_3(global0.a, ~global0.b & ~vec4<i32>(-62700, global0.b.x, -1, global0.b.x), vec4<bool>(true, all(vec4<bool>(false, global0.c.x, false, false)), all(vec2<bool>(false, true)), global0.c.x), ~_wgslsmith_div_vec2_u32(u_input.a.wy, vec2<u32>(43416u, 36460u)), abs(global0.b ^ vec4<i32>(global0.b.x, global0.b.x, 52363, 1))), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(62861u, global2[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a.x), u_input.b, u_input.a.yyx), ~u_input.a.zxw)));
    }
    var var_0 = global0.d.x;
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-531.0, 1716.0), global0.a, global0.c.xx)), global0.a)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1302.0, global0.a.x))))), ~(~global0.b), vec4<bool>(global0.c.x, false, false, false), ~(~(~(vec2<u32>(13179u, 85255u) & vec2<u32>(4294967295u, u_input.a.x)))), _wgslsmith_mod_vec4_i32(~firstTrailingBit(vec4<i32>(global0.e.x, -13862, 10117, global0.e.x)), global0.e));
    if (!true) {
        if (!(-601.0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))) {
        }
        let var_1 = -461.0;
        for (; ; ) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            global3 = array<u32, 6>();
            break;
        }
        global2 = array<u32, 25>();
    }
    global2 = array<u32, 25>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a * global0.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-444.0, global0.a.x) + global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(global0.a)))))));
}

fn func_4(arg_0: f32) -> vec3<i32> {
    let var_0 = 656.0;
    if (global0.c.x) {
    }
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        for (var var_1 = -22939; true; var_1 -= 1) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            let var_2 = _wgslsmith_f_op_f32(sign(-913.0));
            let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5()), _wgslsmith_f_op_vec2_f32(ceil(global0.a))), false)), global0.e, vec4<bool>(global0.c.x, global0.c.x, ~global2[_wgslsmith_index_u32(37013u, 25u)] >= global3[_wgslsmith_index_u32(reverseBits(0u ^ 0u), 6u)], false), vec2<u32>(abs(global0.d.x), global3[_wgslsmith_index_u32(global0.d.x, 6u)]), global0.e);
            let var_4 = !var_3.c.yw;
            let var_5 = Struct_4(u_input.a, vec3<bool>(var_4.x, false, !(!(!false))), ~u_input.a.x << (~global0.d.x % 32u), -vec3<i32>(_wgslsmith_add_i32(abs(global0.b.x), var_3.b.x), ~abs(var_3.b.x), -var_3.e.x));
        }
        var var_1 = vec3<i32>(reverseBits(global0.e.x), -2147483648, _wgslsmith_dot_vec3_i32(global0.e.zyz, max(~global0.e.xzy << ((vec3<u32>(27642u, 1u, global0.d.x) >> (u_input.a.xzz % vec3<u32>(32u))) % vec3<u32>(32u)), max(abs(global0.e.wxx), global0.b.wyy))));
        continue;
    }
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(global0.a)), select(_wgslsmith_sub_vec4_i32(abs(~vec4<i32>(global0.e.x, 34886, global0.e.x, global0.b.x)), global0.e << (~u_input.a % vec4<u32>(32u))), select(func_6(max(u_input.b.zy, vec2<u32>(0u, global3[_wgslsmith_index_u32(global0.d.x, 6u)])), Struct_2(global2[_wgslsmith_index_u32(8757u, 25u)], Struct_1(0u, vec3<i32>(-1, 27165, 1))), Struct_3(vec2<f32>(898.0, 784.0), vec4<i32>(global0.b.x, global0.e.x, -1, global0.e.x), vec4<bool>(false, global0.c.x, false, false), global0.d, global0.b), select(u_input.a.zxy, vec3<u32>(0u, 2512u, 0u), vec3<bool>(global0.c.x, false, global0.c.x))), vec4<i32>(~0, global0.e.x, global0.e.x, global0.b.x), !(global0.c.x | global0.c.x)), global0.c.x), !(!global0.c), countOneBits(vec2<u32>(global3[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(global0.d.x, 25u)] & 49721u), 6u)], reverseBits(29557u))), select(vec4<i32>(min(0 | global0.b.x, func_6(vec2<u32>(0u, global2[_wgslsmith_index_u32(1u, 25u)]), Struct_2(1u, Struct_1(4989u, vec3<i32>(2147483647, global0.b.x, global0.e.x))), Struct_3(vec2<f32>(global0.a.x, 1725.0), vec4<i32>(0, -23125, -39508, 56447), vec4<bool>(false, true, global0.c.x, global0.c.x), vec2<u32>(global0.d.x, 4294967295u), global0.b), u_input.b).x), firstLeadingBit(-12818), global0.b.x, ~(-19977)), global0.b, global0.c));
    if (firstLeadingBit(firstTrailingBit(-14390)) != global0.e.x) {
    }
    return _wgslsmith_mod_vec3_i32(reverseBits(~firstTrailingBit(vec3<i32>(-1, global0.b.x, global0.e.x))), vec3<i32>(func_6(~global0.d >> (vec2<u32>(0u, global0.d.x) % vec2<u32>(32u)), Struct_2(global3[_wgslsmith_index_u32(18056u >> (86764u % 32u), 6u)], Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<i32>(global0.e.x, global0.e.x, 0))), Struct_3(_wgslsmith_f_op_vec2_f32(-global0.a), vec4<i32>(global0.b.x, 29496, global0.e.x, global0.b.x), global0.c, vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 25u)]), global0.e), vec3<u32>(u_input.b.x, global0.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 1u), u_input.b))).x, reverseBits(_wgslsmith_add_i32(35635, global0.e.x)) << (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(27378u, u_input.b.x) | vec2<u32>(4294967295u, 35071u), u_input.a.xy), 6u)] % 32u), _wgslsmith_add_i32(global0.e.x, -global0.e.x)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(firstTrailingBit(~1u), 36785u)), func_4(755.0));
    global3 = array<u32, 6>();
    for (var var_1: i32; ; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        switch (arg_1.b.x) {
            case -1: {
                let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, arg_2.x))))), -vec4<i32>(arg_1.b.x | -46617, var_0.b.x, _wgslsmith_clamp_i32(-31510, 17365, var_0.b.x), 2147483647) | ~(~countOneBits(global0.e)), global0.c, _wgslsmith_add_vec2_u32(u_input.b.xz, vec2<u32>(global2[_wgslsmith_index_u32(36338u, 25u)], ~_wgslsmith_div_u32(22999u, global2[_wgslsmith_index_u32(4294967295u, 25u)]))), global0.e);
                break;
            }
            case 0: {
                var var_2 = vec2<i32>(global0.e.x, -1);
                var var_3 = Struct_4(abs(select(abs(u_input.a), abs(vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19795u, 6u)], 25u)], var_0.a, 67776u)), vec4<bool>(false, false, true, global0.c.x))) & ~(~u_input.a), global0.c.wzy, global0.d.x, (vec3<i32>(arg_1.b.x, min(2147483647, -2147483648), 16507) >> (~u_input.b % vec3<u32>(32u))) << (firstLeadingBit(u_input.b ^ (u_input.b << (vec3<u32>(0u, 2165u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 6u)]) % vec3<u32>(32u)))) % vec3<u32>(32u)));
                var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(-arg_2.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1364.0 - -1227.0), _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)))))));
                continue;
            }
            case 34914: {
                let var_2 = Struct_1(global0.d.x, _wgslsmith_div_vec3_i32(~reverseBits(global0.e.www), ~global0.b.xwz) | _wgslsmith_div_vec3_i32(~(arg_0.b >> (vec3<u32>(0u, 0u, 91915u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1, arg_0.b.x, 2147483647, var_0.b.x), global0.b), i32(-1) * -1, arg_0.b.x >> (1u % 32u))));
                global3 = array<u32, 6>();
                return _wgslsmith_f_op_f32(sign(-172.0));
            }
            default: {
                let var_2 = vec2<bool>(!(!(!(arg_2.x != 258.0))), false);
            }
        }
        let var_2 = Struct_4(u_input.a, select(global0.c.xzy, vec3<bool>(any(global0.c), false, true), select(vec3<bool>(all(global0.c), global0.c.x, all(vec2<bool>(global0.c.x, false))), select(select(global0.c.zwx, vec3<bool>(false, global0.c.x, global0.c.x), vec3<bool>(false, global0.c.x, true)), vec3<bool>(global0.c.x, global0.c.x, global0.c.x), true), global0.c.x)), 43572u, arg_0.b);
        var var_3 = Struct_2(countOneBits(arg_1.a), Struct_1(4529u, -func_4(706.0)));
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            break;
        }
        global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), -1104.0)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(max(2147483647, var_0.b.x), ~(-2147483648), ~global0.b.x, 49407), _wgslsmith_mult_vec4_i32(global0.e, global0.e)), -vec4<i32>(var_0.b.x, var_0.b.x, 28424, global0.b.x) >> (max(reverseBits(u_input.a), vec4<u32>(1u, 0u, var_0.a, 38244u)) % vec4<u32>(32u))), vec4<bool>(any(global0.c.zw), !(false | (-2147483648 >= 18858)), !(true && global0.c.x), global0.c.x), _wgslsmith_mod_vec2_u32(u_input.b.zz, select(vec2<u32>(u_input.b.x, arg_1.a), ~global0.d, vec2<bool>(false, global0.c.x)) ^ ~abs(vec2<u32>(25275u, 4294967295u))), vec4<i32>(~select(_wgslsmith_clamp_i32(1, 54317, -2147483648), _wgslsmith_dot_vec2_i32(var_0.b.xy, vec2<i32>(-17421, 1)), global0.d.x >= var_0.a), -(~(-1)), ~(~_wgslsmith_dot_vec3_i32(arg_0.b, vec3<i32>(arg_0.b.x, -1, var_0.b.x))), global0.b.x));
        switch (_wgslsmith_div_i32(~2147483647, var_0.b.x)) {
            case 2147483647: {
                global3 = array<u32, 6>();
                let var_1 = global0.a.x;
                global1 = -46018;
            }
            case 3744: {
                continue;
            }
            case 14232: {
                global1 = firstTrailingBit(firstLeadingBit(arg_0.b.x));
                global0 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.a))), global0.e, vec4<bool>(global0.b.x == -2147483648, !(arg_1.a < ~87442u), !((arg_1.b.x ^ 1) >= -16541), !(!(false && true))), vec2<u32>(_wgslsmith_mult_u32(~firstLeadingBit(var_0.a), ~var_0.a), 31220u), -vec4<i32>(-1, -(12337 >> (arg_0.a % 32u)), _wgslsmith_mult_i32(~(-1), -arg_1.b.x), abs(38383) ^ (global0.b.x >> (arg_0.a % 32u))));
                break;
            }
            default: {
            }
        }
    }
    var var_1 = Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 36087u, (16475u ^ 1u) & (global3[_wgslsmith_index_u32(1u, 6u)] | 54091u), 20691u), u_input.a), vec3<bool>(!any(!vec3<bool>(global0.c.x, false, false)), global0.c.x, !false), 1740u, func_4(1221.0));
    return 751.0;
}

fn func_2() -> i32 {
    global1 = -1;
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x)))), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1136.0))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1247.0)), _wgslsmith_f_op_f32(global0.a.x * global0.a.x))))));
    if (global0.c.x) {
        let var_1 = select(~(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(72628u, 4294967295u)), abs(global0.d)) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(46567u, global2[_wgslsmith_index_u32(4294967295u, 25u)]), u_input.a.zw)), reverseBits(~(~vec2<u32>(u_input.b.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7935u, 6u)], 6u)], 25u)]))) | u_input.b.xx, global0.c.zw);
    }
    global3 = array<u32, 6>();
    switch (~_wgslsmith_dot_vec4_i32(global0.b, -vec4<i32>(select(0, global0.b.x, true), global0.b.x, _wgslsmith_clamp_i32(global0.e.x, global0.b.x, global0.b.x), -1))) {
        case 2147483647: {
        }
        case -16733: {
            var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x), vec4<i32>(global0.e.x, _wgslsmith_clamp_i32(global0.b.x, _wgslsmith_add_i32(~global0.b.x, -1), global0.e.x >> (global2[_wgslsmith_index_u32(30365u >> (0u % 32u), 25u)] % 32u)), ~(_wgslsmith_div_i32(global0.b.x, -2147483648) ^ -2147483648), max(_wgslsmith_clamp_i32(2147483647, global0.e.x >> (0u % 32u), i32(-1) * -56045), global0.e.x)), !select(vec4<bool>(global0.c.x, true, global0.c.x && global0.c.x, global0.c.x), !select(global0.c, vec4<bool>(global0.c.x, true, global0.c.x, false), global0.c.x), !vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false)), max(~vec2<u32>(~67330u, global2[_wgslsmith_index_u32(~20183u, 25u)]), u_input.a.yx), global0.e);
            let var_2 = 24218u;
            switch (35742) {
                case 0: {
                    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(22295u, vec3<i32>(-8531, global0.e.x, 1)), Struct_1(global2[_wgslsmith_index_u32(27609u, 25u)], vec3<i32>(0, -2147483648, var_1.e.x)), vec3<f32>(var_1.a.x, -916.0, 1000.0)))))) * global0.a.x), _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
                    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-241.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1277.0 + var_1.a.x)))))), var_1.a.x);
                }
                case -2147483648: {
                    let var_3 = Struct_1(firstTrailingBit(0u), _wgslsmith_mod_vec3_i32(-abs(var_1.e.zxz), ~var_1.b.yxw));
                }
                case -9228: {
                }
                default: {
                }
            }
        }
        case 1: {
            let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1471.0, 1079.0)))))), global0.b, !vec4<bool>(!any(global0.c.xxw), false, any(!vec2<bool>(true, false)), false), min(vec2<u32>(~2247u, ~4980u) | countOneBits(u_input.a.wx), vec2<u32>(~(u_input.b.x << (u_input.a.x % 32u)), abs(~u_input.a.x))), global0.b);
            var var_2 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~abs(vec4<i32>(-51881, global0.b.x, var_1.b.x, var_1.e.x)), global0.b), max(global0.e, global0.e ^ ~vec4<i32>(-13896, -1, global0.b.x, 14049)));
            global2 = array<u32, 25>();
            switch (-(~global0.e.x)) {
                case 35316: {
                    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)) - _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.a.x, global0.a.x)), _wgslsmith_f_op_f32(-1293.0 - 369.0)))), var_1.e, select(vec4<bool>(true & (false || true), !(!var_1.c.x), any(!global0.c.yy), 0u <= ~86028u), vec4<bool>(-55766 != countOneBits(-2147483648), var_1.c.x, any(!var_1.c.yzz), !var_1.c.x), select(!(!var_1.c), var_1.c, false)), vec2<u32>(~(1u & countOneBits(global0.d.x)), countOneBits(~0u)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(global0.e, vec4<i32>(var_1.e.x, global0.e.x, 1, var_1.e.x), vec4<i32>(var_1.e.x, 2147483647, var_1.e.x, global0.e.x)), select(-vec4<i32>(-19817, var_1.b.x, var_1.e.x, -2173), vec4<i32>(-6884, var_1.b.x, 110, global0.e.x), !global0.c.x)), vec4<i32>(abs(-1891), _wgslsmith_clamp_i32(max(27248, -30854), 0, func_6(u_input.a.zy, Struct_2(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], Struct_1(global2[_wgslsmith_index_u32(0u, 25u)], var_1.e.zyx)), var_1, vec3<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 25u)])).x), var_1.e.x, -1)));
                    let var_4 = Struct_2(global2[_wgslsmith_index_u32(~(4294967295u >> (1u % 32u)), 25u)], Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.d.x, global0.d.x, u_input.a.x), vec4<u32>(global2[_wgslsmith_index_u32(~4294967295u, 25u)], reverseBits(global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), firstTrailingBit(global0.d.x), _wgslsmith_mult_u32(1u, 0u))), ~global0.b.www));
                }
                case 0: {
                    var var_3 = min(global0.d, abs(select(_wgslsmith_add_vec2_u32(vec2<u32>(77090u, var_1.d.x), vec2<u32>(global0.d.x, 0u)), _wgslsmith_div_vec2_u32(u_input.b.zz, u_input.a.wz), false))) >> (~vec2<u32>(35097u >> (~u_input.b.x % 32u), ~u_input.b.x) % vec2<u32>(32u));
                    global0 = Struct_3(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, 358.0)))), firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.e.x, global0.b.x, var_1.e.x, var_1.e.x) >> (_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, var_1.d.x, 1u, 131468u)) % vec4<u32>(32u)), -global0.e & _wgslsmith_add_vec4_i32(var_1.e, var_1.e))), vec4<bool>(4294967295u != firstLeadingBit(4294967295u), !false, global0.c.x, global0.c.x), var_1.d, ~_wgslsmith_mod_vec4_i32(abs(select(global0.e, var_1.b, false)), abs(abs(var_1.e))));
                    let var_4 = var_0.x;
                    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) - _wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(-1769.0, 714.0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(603.0, global0.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(-477.0, var_4)), var_1.a, !true))), true)), _wgslsmith_mod_vec4_i32(select(abs(vec4<i32>(-15592, global0.b.x, 1, var_1.b.x) >> (vec4<u32>(0u, 61116u, u_input.a.x, global0.d.x) % vec4<u32>(32u))), vec4<i32>(func_6(vec2<u32>(1u, 1u), Struct_2(10392u, Struct_1(41505u, vec3<i32>(-45062, global0.e.x, -2147483648))), Struct_3(vec2<f32>(-1305.0, var_0.x), var_1.e, var_1.c, vec2<u32>(15335u, 1u), vec4<i32>(-33103, var_1.e.x, var_1.b.x, var_1.b.x)), u_input.b).x, 0 & var_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-19016, 1, 7160), var_1.b.wxz), 81542), var_1.c.x && all(var_1.c)), ~(-_wgslsmith_mult_vec4_i32(global0.b, vec4<i32>(2147483647, global0.b.x, -3266, var_1.b.x)))), global0.c, _wgslsmith_mod_vec2_u32(firstLeadingBit(~_wgslsmith_clamp_vec2_u32(global0.d, var_1.d, vec2<u32>(1u, 0u))), max(countOneBits(vec2<u32>(var_3.x, global0.d.x)), ~vec2<u32>(var_1.d.x, 17051u))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(~var_1.e.x, -1 & var_1.b.x, _wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(var_1.b.x, var_1.b.x, 0, -376)), ~13049), -vec4<i32>(_wgslsmith_sub_i32(global0.b.x, -35487), reverseBits(var_1.e.x), var_1.e.x, global0.b.x), global0.e));
                    global2 = array<u32, 25>();
                }
                case -15134: {
                    let var_3 = Struct_4(~(~vec4<u32>(var_1.d.x, ~53310u, _wgslsmith_sub_u32(global0.d.x, u_input.a.x), 0u)), vec3<bool>((_wgslsmith_f_op_f32(global0.a.x - -1031.0) == var_0.x) & !(1497.0 > -1278.0), all(!select(vec4<bool>(true, true, false, var_1.c.x), global0.c, var_1.c)), var_1.c.x), ~(~global3[_wgslsmith_index_u32(~global0.d.x, 6u)]), -vec3<i32>(-2147483648, _wgslsmith_add_i32(-2147483648, 113), -reverseBits(-27334)));
                }
                default: {
                    let var_3 = Struct_4(~countOneBits(~(vec4<u32>(global0.d.x, var_1.d.x, global3[_wgslsmith_index_u32(44755u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 25u)]) | vec4<u32>(0u, 65748u, 45844u, 1u))), select(var_1.c.zxz, select(!vec3<bool>(global0.c.x, var_1.c.x, var_1.c.x), vec3<bool>(global0.c.x, all(vec3<bool>(global0.c.x, false, global0.c.x)), var_1.c.x & false), !vec3<bool>(var_1.c.x, false, false)), !false), _wgslsmith_div_u32(abs(select(global0.d.x, 1u, true)), ~_wgslsmith_mult_u32(global0.d.x, global3[_wgslsmith_index_u32(var_1.d.x, 6u)])) | (~select(var_1.d.x, global2[_wgslsmith_index_u32(12187u, 25u)], global0.c.x) << (var_1.d.x % 32u)), vec3<i32>(-2147483647, _wgslsmith_dot_vec2_i32(global0.e.yx, vec2<i32>(-global0.b.x, ~6012)), max(-15082, ~(-1))));
                    global0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_1.a.x)))))), var_1.a), vec4<i32>(~(0 & 3664) ^ (-2147483647 >> (46063u % 32u)), abs(i32(-1) * -var_1.e.x), i32(-1) * -_wgslsmith_dot_vec4_i32(global0.e, global0.b), _wgslsmith_add_i32(var_3.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global0.b.zxy, var_1.e.yxz), firstTrailingBit(var_3.d.x)))), vec4<bool>(!all(var_3.b), true, all(select(select(global0.c.zwy, global0.c.yxx, false), var_3.b, !var_3.b)), true), u_input.a.zz, vec4<i32>(max(abs(var_1.b.x), global0.e.x), ~36950, _wgslsmith_sub_i32(abs(global0.b.x), var_1.e.x), _wgslsmith_mult_i32(var_1.e.x & -1, ~global0.b.x) & var_1.e.x));
                }
            }
            if (all(var_1.c.wzy)) {
                return var_1.e.x;
            }
        }
        default: {
            global3 = array<u32, 6>();
        }
    }
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(~(~global0.b.x), _wgslsmith_sub_i32(~(~(-2147483648)), -min(global0.e.x, global0.e.x))), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647, global0.e.x), global0.b.xy)), reverseBits(vec2<i32>(-1) * -vec2<i32>(global0.b.x, global0.e.x))));
}

fn func_1() -> u32 {
    global3 = array<u32, 6>();
    let var_0 = global0.e.x;
    var var_1 = _wgslsmith_f_op_f32(select(-1588.0, 2206.0, any(!select(!global0.c.wz, vec2<bool>(global0.c.x, false), all(global0.c)))));
    let var_2 = Struct_3(vec2<f32>(-1620.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1126.0)) - global0.a.x))), vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(global0.e.x), _wgslsmith_add_i32(global0.b.x, 12117) >> (_wgslsmith_dot_vec3_u32(u_input.a.xzy, vec3<u32>(global0.d.x, 96018u, 1u)) % 32u)), 34549 >> ((global0.d.x << (abs(global2[_wgslsmith_index_u32(global0.d.x, 25u)]) % 32u)) % 32u), global0.e.x, func_2()), vec4<bool>(true, global0.c.x, global0.c.x, !(global0.c.x & select(true, false, global0.c.x))), vec2<u32>(4294967295u, max(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(84540u, 26020u, global3[_wgslsmith_index_u32(1u, 6u)], global0.d.x), u_input.a))), vec4<i32>(-1) * -_wgslsmith_mult_vec4_i32(global0.b, global0.e));
    for (var var_3 = var_2.e.x; var_3 != 8579; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        }
    }
    return firstTrailingBit(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, global2[_wgslsmith_index_u32(~(~countOneBits(4294967295u)), 25u)], _wgslsmith_sub_u32(_wgslsmith_sub_u32(90558u << (4294967295u % 32u), ~global3[_wgslsmith_index_u32(global0.d.x, 6u)]), firstLeadingBit(u_input.b.x)), 1u), u_input.a << (max(~(~vec4<u32>(0u, 6034u, 4294967295u, 88569u)), _wgslsmith_mod_vec4_u32(~u_input.a, vec4<u32>(global0.d.x, 15499u, global3[_wgslsmith_index_u32(1u, 6u)], 4294967295u) >> (u_input.a % vec4<u32>(32u)))) % vec4<u32>(32u)));
    if (!any(!(!select(global0.c.wwx, vec3<bool>(global0.c.x, global0.c.x, global0.c.x), global0.c.x)))) {
        for (var var_1 = -61821; ; var_1 += 1) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            global1 = -6388;
            break;
        }
        if (false) {
        }
        var var_1 = global0.c.xyw;
    }
    let var_1 = 4294967295u >= ~func_1();
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_2 = !all(select(!(!vec4<bool>(var_1, true, false, true)), global0.c, var_1));
    }
    var var_2 = global0.a.x;
    for (var var_3: i32; var_3 == -8338; ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        break;
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.a));
}

