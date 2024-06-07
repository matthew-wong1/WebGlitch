// {"0:0":[72,94,103,74,171,210,119,229,216,162,210,125,58,147,108,135,30,240,26,248,60,32,87,68,142,166,199,18,198,114,97,215]}
// Seed: 14797811941316293242

struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: f32 = -223.0;

var<private> global2: vec3<u32> = vec3<u32>(74987u, 4294967295u, 1u);

var<private> LOOP_COUNTERS: array<u32, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global1 = arg_0.c.a;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.b + arg_0.c.b), -1346.0) - 342.0))), arg_0.c.a, !vec3<bool>(all(!vec4<bool>(true, true, true, true)), all(!vec4<bool>(false, false, arg_0.b.x, false)), all(select(arg_0.b, arg_0.b, arg_0.c.c.yz))), !(-995.0 != 574.0));
    switch (arg_0.a.x) {
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    let var_1 = ~firstLeadingBit(max(select(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global2.x, 27u)], global0[_wgslsmith_index_u32(4543u, 27u)], 0u), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(23060u, 27u)], u_input.c.x)), _wgslsmith_div_vec3_u32(u_input.c.zxy, vec3<u32>(0u, global2.x, global0[_wgslsmith_index_u32(global2.x, 27u)])), var_0.c), u_input.c.yzx));
    return ~min(37501u, global2.x) << (firstTrailingBit(global0[_wgslsmith_index_u32(min(~25744u, _wgslsmith_dot_vec3_u32(~u_input.c.zyy, ~vec3<u32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23662u, 27u)], 27u)]))), 27u)]) % 32u);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> i32 {
    global2 = vec3<u32>((_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(29340u, 27u)]), global2.x, ~global2.x) << (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 27774u), 27u)] % 32u)) >> (firstLeadingBit(_wgslsmith_clamp_u32(1u, min(43851u, 1u), max(40764u, global2.x))) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(15139u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(15519u, 27u)], 0u), _wgslsmith_add_u32(0u, 110304u), 1u << (0u % 32u))) & 0u, 27u)], ~_wgslsmith_add_u32(global2.x, ~firstTrailingBit(6133u)));
    for (; ; ) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            let var_0 = arg_0.c.c.x;
            var var_1 = Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.a, vec3<i32>(48047, 24824, arg_0.a.x)), countOneBits(-vec3<i32>(0, -20622, -1))), ~min(countOneBits(vec3<i32>(arg_2, arg_2, 1)), arg_0.a)), select(vec2<bool>(~u_input.a > global2.x, var_0), arg_0.b, vec2<bool>(any(vec2<bool>(false, var_0)), arg_1)), Struct_1(_wgslsmith_f_op_f32(-1694.0), _wgslsmith_f_op_f32(arg_0.c.a + _wgslsmith_f_op_f32(arg_0.c.b * arg_0.c.a)), vec3<bool>(false, !true, arg_1), var_0));
            let var_2 = arg_0;
        }
        global1 = -2498.0;
    }
    for (var var_0 = 1; any(!(!vec4<bool>(arg_1, !arg_0.c.c.x, u_input.a <= u_input.a, arg_1))); var_0 += 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        switch (-_wgslsmith_mult_i32(-1, -abs(42821)) | ~(arg_0.a.x << (global2.x % 32u))) {
            case 12701: {
            }
            case 6616: {
                global2 = vec3<u32>(~0u & global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(~abs(reverseBits(_wgslsmith_div_u32(4294967295u, global2.x))), 27u)], ~u_input.b);
                break;
            }
            case 1: {
                var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a * -1527.0) + _wgslsmith_f_op_f32(ceil(arg_0.c.b)))))));
                var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1065.0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b)))), 418.0, -3174.0) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b, -152.0, arg_0.c.b, -1344.0) + vec4<f32>(arg_0.c.a, arg_0.c.b, 852.0, arg_0.c.b)), vec4<f32>(204.0, -2926.0, arg_0.c.a, -2721.0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.b, 1283.0, -2006.0, 327.0), vec4<f32>(arg_0.c.a, arg_0.c.b, 1655.0, arg_0.c.a))), true)))));
                var var_3 = 47332;
            }
            case 2147483647: {
                var var_1 = Struct_2(vec3<i32>(5532, arg_2, i32(-1) * -60465), select(arg_0.c.c.zz, arg_0.c.c.zz, arg_0.b), arg_0.c);
                break;
            }
            default: {
                let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.a, 650.0, arg_0.c.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.a)))))), vec4<f32>(_wgslsmith_div_f32(-1168.0, _wgslsmith_f_op_f32(-arg_0.c.b)), arg_0.c.b, -2106.0, arg_0.c.b));
                let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.b * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(select(-1588.0, var_1.x, all(!vec3<bool>(arg_0.c.d, arg_0.c.c.x, true))))) >= _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1267.0, var_1.x))))));
                let var_3 = arg_0;
                continue;
            }
        }
        for (var var_1 = _wgslsmith_add_i32(-_wgslsmith_clamp_i32(abs(firstLeadingBit(0)), 2556, firstTrailingBit(i32(-1) * -1)), -1); select(false, (53591u << (~(~1u) % 32u)) <= reverseBits(global2.x), false); global2 = vec3<u32>(global2.x, global2.x, 1u)) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_2 = arg_0.c;
            let var_3 = Struct_2(arg_0.a, var_2.c.xz, Struct_1(_wgslsmith_f_op_f32(step(1000.0, _wgslsmith_f_op_f32(-arg_0.c.b))), -195.0, arg_0.c.c, !arg_1));
            let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(ceil(-916.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.b + -169.0), -364.0)), _wgslsmith_f_op_f32(-1154.0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-182.0, arg_0.c.b, arg_0.c.a, -1084.0), vec4<f32>(arg_0.c.b, -393.0, -1000.0, var_3.c.a), vec4<bool>(arg_1, arg_1, arg_0.b.x, var_3.c.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, arg_0.c.b, -693.0, var_2.a) + vec4<f32>(arg_0.c.a, 1297.0, arg_0.c.a, arg_0.c.a))))))));
            let var_5 = reverseBits(vec2<i32>(arg_0.a.x, -abs(~0)));
            var var_6 = ((vec3<u32>(~53910u, global0[_wgslsmith_index_u32(5561u, 27u)], ~27639u) | firstLeadingBit(abs(vec3<u32>(6604u, 39758u, 4294967295u)))) | u_input.c.zwx) ^ abs(u_input.c.wxy);
        }
        var var_1 = _wgslsmith_div_vec2_i32(~arg_0.a.zx, ~arg_0.a.yx);
    }
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b)))) + 425.0);
    if (true) {
        let var_0 = u_input.c.x;
    }
    return ~0;
}

fn func_5() -> f32 {
    loop {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-279.0), -688.0)));
        }
        var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -226.0), _wgslsmith_f_op_f32(ceil(-556.0)))), -1000.0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-729.0), _wgslsmith_f_op_f32(-1000.0 - -1369.0), all(vec2<bool>(false, true)))))));
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            global2 = firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(func_1(Struct_2(vec3<i32>(-2147483648, 0, -1), vec2<bool>(false, true), Struct_1(2547.0, 1000.0, vec3<bool>(false, false, false), false))), reverseBits(global2.x), 0u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 17993u, u_input.a), u_input.c.yyw)));
            let var_1 = u_input.c;
            var_0 = -1283.0;
            global2 = u_input.c.xyz;
            var var_2 = vec4<bool>(!(func_6(Struct_2(vec3<i32>(7247, 0, -62387), vec2<bool>(true, false), Struct_1(-1345.0, -1162.0, vec3<bool>(true, true, true), true)), false, 9851) < ~37737), _wgslsmith_mod_i32(0, 1) > (_wgslsmith_clamp_i32(22134 << (1u % 32u), 1874, abs(16353)) & max(_wgslsmith_add_i32(36311, 8869), 0)), any(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, false), !true), -1 < _wgslsmith_sub_i32(32501, 9689))), all(vec2<bool>(!all(vec4<bool>(true, true, false, false)), false)));
        }
        break;
    }
    let var_0 = true;
    let var_1 = false;
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(abs(-620.0)))))))));
    global2 = _wgslsmith_mult_vec3_u32(u_input.c.wzz, vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(13088u, 7882u, 27006u), u_input.c.zzw), ~4294967295u, 0u));
    return _wgslsmith_f_op_f32(f32(-1.0) * -197.0);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5())));
    for (var var_1 = -1; false; var_1 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        switch (arg_2.x) {
            case 36240: {
                global2 = min(~_wgslsmith_div_vec3_u32(u_input.c.xwx, u_input.c.zyx), u_input.c.ywy);
                break;
            }
            case 37197: {
            }
            default: {
                let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(529.0, arg_1.b) - vec2<f32>(-1343.0, arg_1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 2017.0)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(128.0, 392.0), vec2<f32>(arg_1.a, arg_1.b)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-263.0, 354.0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 2128.0) + vec2<f32>(293.0, 1000.0)), !vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(trunc(108.0)), arg_1.a))))));
                break;
            }
        }
        global2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, ~u_input.b), 27u)], ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 27u)] & 0u, _wgslsmith_mult_u32(global2.x, 31049u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(global2.x, 27u)], 14589u), global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(1u, 27u)]) << (abs(0u) % 32u), 27u)])), vec3<u32>(_wgslsmith_mod_u32(global2.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 19716u), 27u)]), 86486u, 54066u) << (u_input.c.xwz % vec3<u32>(32u)), u_input.c.xzz);
        break;
    }
    let var_1 = -(~arg_2.x);
    if (select(true, arg_0.x, true)) {
        let var_2 = ~1;
        switch (_wgslsmith_add_i32(_wgslsmith_mod_i32(var_2 >> (min(_wgslsmith_sub_u32(u_input.c.x, 0u), ~0u) % 32u), ~(firstLeadingBit(0) & countOneBits(var_2))), var_2)) {
            case 1: {
                let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -151.0)), _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -239.0))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-712.0 - arg_1.a)))), -140.0), vec3<bool>(arg_1.c.x, false, (global0[_wgslsmith_index_u32(global2.x, 27u)] >= (global0[_wgslsmith_index_u32(1u, 27u)] & 15301u)) | any(vec3<bool>(false, true, arg_1.c.x))), all(vec2<bool>(global2.x != 4294967295u, !true)));
                var var_4 = u_input.c.zzz;
                var var_5 = Struct_1(_wgslsmith_f_op_f32(func_5()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2942.0))) - -1473.0) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.b)) - _wgslsmith_f_op_f32(-793.0))))), vec3<bool>(arg_1.d, var_3.c.x, !(!true)), var_3.b <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.b)), 515.0, arg_1.a >= var_3.b)));
                var_0 = _wgslsmith_f_op_f32(-2231.0);
                var_0 = -377.0;
            }
            default: {
            }
        }
    }
    global1 = arg_1.b;
    return vec2<bool>(select(all(select(vec4<bool>(true, arg_1.d, true, arg_0.x), vec4<bool>(false, false, arg_1.d, arg_0.x), !true)), arg_1.d, arg_1.b >= 1307.0), !arg_1.c.x & true);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583.0 - 878.0)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * 1434.0)) {
        var var_0 = arg_2;
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        }
    }
    if (all(arg_0.c.c.yx)) {
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * 2086.0);
            global1 = _wgslsmith_f_op_f32(step(436.0, _wgslsmith_f_op_f32(f32(-1.0) * -108.0)));
            break;
        }
        global2 = ~u_input.c.xxw;
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_0 = Struct_1(_wgslsmith_f_op_f32(func_5()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5()), _wgslsmith_f_op_f32(-arg_2.b))), select(!vec3<bool>(true && arg_2.d, select(true, arg_2.c.x, arg_0.b.x), 35882 <= -1), arg_0.c.c, !(!select(arg_0.c.c, vec3<bool>(arg_0.b.x, false, true), arg_0.c.c))), arg_2.d);
        var var_1 = arg_0.c;
        let var_2 = -102.0;
        var var_3 = var_0;
        for (var var_4 = _wgslsmith_mult_i32(func_6(Struct_2(arg_0.a, select(!vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_3.c.x, true)), Struct_1(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(f32(-1.0) * -232.0), vec3<bool>(arg_2.c.x, false, false), var_0.c.x && false)), var_3.c.x, reverseBits(_wgslsmith_add_i32(66835, _wgslsmith_div_i32(1, arg_1.x)))), ~1); !(!var_1.c.x); var_4 -= 1) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            global1 = _wgslsmith_f_op_f32(sign(1473.0));
            var var_5 = countOneBits(-arg_0.a);
            continue;
        }
    }
    if ((2147483647 >= _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.x, 36678), arg_0.a.yx), arg_0.a.xx)) || all(arg_2.c.xz)) {
        global0 = array<u32, 27>();
    }
    var var_0 = arg_0.c.a;
    return 1644.0;
}

fn func_8(arg_0: f32) -> u32 {
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -1192.0), _wgslsmith_f_op_f32(-1705.0 + arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(exp2(1319.0))))), !vec3<bool>(false, true, select(any(vec4<bool>(false, true, false, false)), true == true, all(vec4<bool>(false, true, false, false)))), !(any(!vec3<bool>(true, true, true)) && false));
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        switch (-23754) {
            case 1: {
                global0 = array<u32, 27>();
                var var_1 = Struct_2(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1, 10211, -14487), vec3<i32>(1, -15898, -2147483648))) >> (~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 27u)], 1u), u_input.c.zww ^ u_input.c.wxy) % vec3<u32>(32u)), !(!select(var_0.c.zy, select(var_0.c.xz, vec2<bool>(true, var_0.c.x), vec2<bool>(true, var_0.d)), all(vec2<bool>(var_0.d, var_0.d)))), Struct_1(arg_0, arg_0, select(select(select(vec3<bool>(false, var_0.d, true), var_0.c, vec3<bool>(var_0.d, false, var_0.d)), !vec3<bool>(false, true, false), select(vec3<bool>(false, true, var_0.d), var_0.c, vec3<bool>(var_0.d, false, true))), select(var_0.c, var_0.c, 57829u < 1u), !vec3<bool>(false, var_0.d, var_0.d)), var_0.c.x));
                break;
            }
            default: {
                continue;
            }
        }
        var var_1 = Struct_1(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))), !vec3<bool>(var_0.c.x, false, var_0.d), func_4(select(var_0.c, vec3<bool>(var_0.d, any(vec3<bool>(var_0.d, false, var_0.c.x)), any(vec4<bool>(true, false, true, false))), !var_0.d || !false), var_0, -_wgslsmith_clamp_vec3_i32(min(vec3<i32>(2147483647, -2147483648, 28411), vec3<i32>(-11226, -1, -2147483648)), ~vec3<i32>(0, 1, 13336), abs(vec3<i32>(1, -1, -62318)))).x);
        global0 = array<u32, 27>();
        var var_2 = var_0;
    }
    let var_1 = var_0;
    let var_2 = var_1;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-121.0 + var_0.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.a)), _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.a, var_1.b), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, arg_0), vec2<f32>(var_2.b, arg_0))))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, 498.0), vec2<f32>(-2234.0, var_0.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 1000.0) + vec2<f32>(var_2.b, 355.0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1394.0, var_1.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(779.0, 268.0), vec2<f32>(429.0, -733.0))), false)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 221.0))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1207.0, 862.0))))));
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(~(~66733u)), 27u)], 27u)], u_input.a | ~firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 27u)])), _wgslsmith_mod_u32(56429u << (min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57039u, 27u)], 27u)] << (1u % 32u), countOneBits(27788u)) % 32u), ~(global2.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), u_input.c.xz) % 32u))), ~u_input.c.x);
}

fn func_3() -> vec3<bool> {
    let var_0 = -(select(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-40860, 30963), vec2<i32>(0, 67911)), vec2<i32>(0, 1) ^ vec2<i32>(18573, 25866)), 27275 >> (u_input.c.x % 32u), !true) & -_wgslsmith_mult_i32(~1, -2147483647));
    let var_1 = func_8(_wgslsmith_f_op_f32(func_7(Struct_2(vec3<i32>(_wgslsmith_mod_i32(0, -29998), 2147483647, -10264), !func_4(vec3<bool>(false, false, false), Struct_1(-422.0, -260.0, vec3<bool>(false, true, true), false), vec3<i32>(var_0, var_0, var_0)), Struct_1(-887.0, _wgslsmith_f_op_f32(trunc(-155.0)), vec3<bool>(false, true, false), false)), _wgslsmith_mod_vec3_i32(abs(reverseBits(vec3<i32>(var_0, var_0, -15714))), vec3<i32>(-1, 2147483647, var_0) << (vec3<u32>(28997u, global2.x, 29933u) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-154.0 + _wgslsmith_div_f32(-1952.0, -146.0)), -1245.0, vec3<bool>(!true, all(vec2<bool>(false, true)), u_input.c.x >= global0[_wgslsmith_index_u32(u_input.b, 27u)]), !false))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_7(Struct_2(min(vec3<i32>(0, 36184, var_0) | vec3<i32>(-2147483648, var_0, var_0), max(vec3<i32>(var_0, -34477, 1), vec3<i32>(-546, var_0, var_0))), !vec2<bool>(false, true), Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -1269.0), _wgslsmith_f_op_f32(661.0 - -700.0), vec3<bool>(false, true, false), false && true)), vec3<i32>(24713, max(-2147483648, -10274), -firstTrailingBit(1)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-708.0, -1446.0))), 1057.0, select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(false, false, false), vec3<bool>(false, true, true)), !(!false))))));
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        break;
    }
    global2 = abs(vec3<u32>(~firstTrailingBit(0u), 46082u & (global0[_wgslsmith_index_u32(~u_input.a, 27u)] ^ 4294967295u), _wgslsmith_div_u32(var_1, global2.x)));
    return !(!vec3<bool>(true, all(!vec2<bool>(false, true)), func_4(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), Struct_1(-440.0, -438.0, vec3<bool>(false, false, true), true), vec3<i32>(var_0, -37096, var_0) | vec3<i32>(-949, var_0, -597)).x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = firstTrailingBit(arg_0.a.xx);
    switch (-2147483648) {
        case -1: {
            global1 = _wgslsmith_f_op_f32(floor(-223.0));
            for (var var_1 = 2147483647; var_1 != -62811; ) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                global0 = array<u32, 27>();
            }
        }
        default: {
        }
    }
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -670.0) - 660.0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.c.b))) + -1539.0)), arg_0.c.b, func_3(), !false);
    let var_2 = select(func_3(), var_1.c, true);
    switch (21026) {
        case 0: {
            var_0 = -vec2<i32>(18122, arg_1.a.x);
            var var_3 = arg_0.c;
        }
        default: {
            return arg_0.c;
        }
    }
    return Struct_1(_wgslsmith_f_op_f32(abs(arg_1.c.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - -805.0) - arg_1.c.a))), arg_0.c.a), select(select(!(!vec3<bool>(arg_0.c.c.x, true, arg_1.c.d)), !vec3<bool>(var_2.x, true, var_2.x), var_1.d), arg_1.c.c, var_2.x), func_3().x);
}

fn func_9(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    if ((false & !arg_2.d) && true) {
        for (var var_0: i32; true; var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(abs(vec2<i32>(arg_3, arg_3)), select(vec2<i32>(arg_3, -2177), vec2<i32>(arg_3, arg_3), vec2<bool>(false, arg_2.d)), !arg_2.c.xy), reverseBits(~vec2<i32>(-1, -35035))), vec2<i32>(arg_3 << ((u_input.c.x >> (7789u % 32u)) % 32u), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_3, arg_3, 2147483647), arg_3))))) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            global2 = vec3<u32>(18158u, ~global0[_wgslsmith_index_u32(countOneBits(~(~global2.x)), 27u)], global0[_wgslsmith_index_u32(~0u & global2.x, 27u)]);
            global2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(~firstTrailingBit(vec3<u32>(14357u, global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.c.x))), _wgslsmith_div_vec3_u32(min(vec3<u32>(global0[_wgslsmith_index_u32(global2.x, 27u)], u_input.c.x, 1u), vec3<u32>(0u, 56263u, u_input.c.x)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(86632u, 31208u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 27u)], 27u)]), vec3<u32>(1u, 4294967295u, global2.x), vec3<u32>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global2.x, 27u)], 24540u)), u_input.c.zzz)), vec3<u32>(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(100577u, 27u)], 46242u), 4294967295u, (_wgslsmith_div_u32(u_input.c.x, global2.x) & ~global0[_wgslsmith_index_u32(1u, 27u)]) & global0[_wgslsmith_index_u32(~1u & global0[_wgslsmith_index_u32(countOneBits(u_input.b), 27u)], 27u)]));
            let var_1 = Struct_2(-select(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_3, 22906, arg_3), vec3<i32>(41379, 33268, arg_3)), vec3<i32>(arg_3, _wgslsmith_div_i32(arg_3, 16530), -2147483648), arg_1 || true), select(arg_2.c.yz, arg_2.c.xy, vec2<bool>(all(arg_2.c), true)), func_2(Struct_2(select(_wgslsmith_div_vec3_i32(vec3<i32>(-22562, 29966, arg_3), vec3<i32>(arg_3, -2147483648, arg_3)), vec3<i32>(-8463, arg_3, arg_3), !arg_2.c), vec2<bool>(false, arg_1), arg_2), Struct_2(vec3<i32>(arg_3, arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(39391, 1, arg_3), vec3<i32>(arg_3, arg_3, 25839))), !vec2<bool>(arg_1, true), func_2(Struct_2(vec3<i32>(-2147483648, 1, 40682), arg_2.c.yz, arg_2), Struct_2(vec3<i32>(arg_3, 43725, 75487), arg_2.c.yy, Struct_1(1417.0, -545.0, vec3<bool>(true, true, true), arg_2.d))))));
        }
        switch (-1) {
            case 10: {
                global2 = vec3<u32>(4294967295u, ~(~(~_wgslsmith_div_u32(1u, u_input.b))), select(global2.x, global0[_wgslsmith_index_u32(~37392u, 27u)], arg_2.d));
                var var_0 = func_2(Struct_2(-(~vec3<i32>(-5736, -2246, 2147483647) & vec3<i32>(22263, arg_3, arg_3)), select(!arg_2.c.xy, arg_2.c.zx, !any(vec2<bool>(arg_2.c.x, true))), Struct_1(-1555.0, _wgslsmith_f_op_f32(-181.0 * -825.0), !(!arg_2.c), true)), Struct_2(vec3<i32>(abs(19593), -24087, _wgslsmith_mod_i32(23670, -5682) >> (~global2.x % 32u)), select(arg_2.c.yy, arg_2.c.yz, !(!vec2<bool>(true, arg_1))), func_2(Struct_2(vec3<i32>(arg_3, arg_3, 0), arg_2.c.zz, Struct_1(-390.0, arg_0, vec3<bool>(arg_2.d, arg_2.c.x, false), arg_2.d)), Struct_2(~vec3<i32>(78067, arg_3, 8226), vec2<bool>(arg_1, false), arg_2))));
                var var_1 = _wgslsmith_f_op_f32(-arg_0);
                return vec3<u32>(~12654u, global2.x, select(70715u, countOneBits(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global0[_wgslsmith_index_u32(1u, 27u)], global2.x, 4294967295u, 40290u))), var_0.d));
            }
            case -35284: {
                let var_0 = 1446u != _wgslsmith_mult_u32(~121221u, func_1(Struct_2(vec3<i32>(-1, 24902, arg_3) >> (u_input.c.ywy % vec3<u32>(32u)), func_4(arg_2.c, arg_2, vec3<i32>(-23646, -16714, arg_3)), Struct_1(arg_2.b, -508.0, vec3<bool>(true, arg_1, arg_2.d), arg_2.d))));
                var var_1 = !vec2<bool>(func_8(arg_2.b) > ~(u_input.b | u_input.c.x), !all(!arg_2.c));
            }
            case 21952: {
                global2 = u_input.c.zww;
                let var_0 = !select(!select(vec2<bool>(arg_1, arg_2.d), vec2<bool>(arg_2.d, arg_2.d), !arg_2.c.zy), arg_2.c.xx, func_3().yx);
                global2 = u_input.c.wwz;
                var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0, 1223.0))), arg_0, select(arg_2.c, select(func_3(), arg_2.c, all(var_0)), !any(!arg_2.c.xx)), false);
                global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * var_1.a), arg_0)));
            }
            case 43936: {
                var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_2.b)), -589.0)));
                var var_1 = u_input.c.zwz;
            }
            default: {
                let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b - arg_2.b), 225.0) * vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_2.b), _wgslsmith_f_op_f32(-arg_2.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.b, arg_2.b), vec2<f32>(arg_0, -250.0))) + vec2<f32>(1241.0, 1515.0)) + vec2<f32>(_wgslsmith_f_op_f32(arg_0 + arg_2.b), _wgslsmith_f_op_f32(f32(-1.0) * -447.0))))));
                var var_1 = arg_2;
                return vec3<u32>(109427u, 18027u, global2.x);
            }
        }
        global1 = arg_0;
        global2 = max(_wgslsmith_div_vec3_u32(u_input.c.yyx, _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(23652u, u_input.a, global0[_wgslsmith_index_u32(26032u, 27u)])), u_input.c.xxz << (u_input.c.xwx % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(u_input.c.xxw, _wgslsmith_add_vec3_u32(~u_input.c.wwz, firstTrailingBit(u_input.c.yxx)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, u_input.b)), u_input.c.x | global0[_wgslsmith_index_u32(0u, 27u)], 1u) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, 1u, 72802u), firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(0u, 27u)], u_input.a, u_input.a)))));
    }
    var var_0 = func_2(Struct_2(vec3<i32>(arg_3, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(27940, arg_3, arg_3), vec3<i32>(arg_3, arg_3, 10130)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, -22937, arg_3, arg_3), vec4<i32>(-26338, arg_3, arg_3, arg_3)), _wgslsmith_sub_i32(0, -76782)), _wgslsmith_div_i32(arg_3, ~1)), arg_2.c.xz, arg_2), Struct_2(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_3, 1, -14788), vec3<i32>(arg_3, -31717, -39351)) >> (~(~vec3<u32>(global2.x, global2.x, global0[_wgslsmith_index_u32(u_input.a, 27u)])) % vec3<u32>(32u)), arg_2.c.zy, func_2(Struct_2(vec3<i32>(-40012, arg_3, -1), func_4(vec3<bool>(true, true, false), Struct_1(arg_0, arg_2.b, arg_2.c, true), vec3<i32>(arg_3, -8358, arg_3)), func_2(Struct_2(vec3<i32>(arg_3, arg_3, 0), vec2<bool>(arg_1, arg_2.c.x), Struct_1(arg_2.b, 188.0, arg_2.c, false)), Struct_2(vec3<i32>(arg_3, arg_3, 35399), arg_2.c.zy, Struct_1(1210.0, arg_0, arg_2.c, arg_2.c.x)))), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3, 0, 26030), vec3<i32>(1, arg_3, 2147483647)), arg_2.c.zx, arg_2))));
    var_0 = arg_2;
    global0 = array<u32, 27>();
    let var_1 = u_input.c.x >> (u_input.a % 32u);
    return u_input.c.xzy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (13081u & min(~16566u, func_1(Struct_2(vec3<i32>(1, 11751, -1), vec2<bool>(true, true), Struct_1(-207.0, -1000.0, vec3<bool>(false, false, false), true))))) >> (abs(firstTrailingBit(31944u)) % 32u);
    for (var var_1 = 41640; ; var_1 += 1) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        var_0 = ~_wgslsmith_clamp_u32(global2.x, ~(67337u ^ _wgslsmith_mod_u32(67442u, global2.x)), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 27u)], 1u), 4294967295u));
        global2 = u_input.c.xyz >> ((vec3<u32>(0u, _wgslsmith_clamp_u32(global2.x, ~4294967295u, reverseBits(29439u)), u_input.c.x) | abs(func_9(_wgslsmith_f_op_f32(285.0 + 139.0), true, func_2(Struct_2(vec3<i32>(-3212, -2147483648, 30286), vec2<bool>(false, true), Struct_1(838.0, -101.0, vec3<bool>(false, false, false), false)), Struct_2(vec3<i32>(-18291, -21145, 0), vec2<bool>(true, false), Struct_1(1057.0, 1000.0, vec3<bool>(false, true, false), true))), reverseBits(3652)))) % vec3<u32>(32u));
        let var_2 = !false;
        global2 = u_input.c.zyz;
        for (var var_3 = 2147483647; ; ) {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            continue;
        }
    }
    switch (36717) {
        case -56402: {
            for (var var_1 = 108518; var_1 < -32040; global2 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(func_8(-165.0), u_input.c.x, _wgslsmith_sub_u32(global2.x, u_input.a)), (~u_input.c.zyw & ~u_input.c.zyz) >> (firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 56808u, 1u), u_input.c.wxz)) % vec3<u32>(32u)))) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                let var_2 = func_2(Struct_2((_wgslsmith_mod_vec3_i32(vec3<i32>(0, -1, -24589), vec3<i32>(1, 47251, -1)) & (vec3<i32>(12394, 1, 1) >> (vec3<u32>(global0[_wgslsmith_index_u32(global2.x, 27u)], global2.x, 4294967295u) % vec3<u32>(32u)))) | abs(vec3<i32>(-2147483648, -17511, 1)), select(!(!vec2<bool>(true, true)), select(!vec2<bool>(false, false), vec2<bool>(false, true), !vec2<bool>(true, true)), !(!vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -803.0))), _wgslsmith_f_op_f32(104.0 - _wgslsmith_f_op_f32(f32(-1.0) * -276.0)), func_2(Struct_2(vec3<i32>(2147483647, -561, 2147483647), vec2<bool>(false, false), Struct_1(-591.0, 482.0, vec3<bool>(true, false, true), true)), Struct_2(vec3<i32>(-45110, -4199, 1), vec2<bool>(true, true), Struct_1(-561.0, 2138.0, vec3<bool>(true, true, true), false))).c, false)), Struct_2(~(-vec3<i32>(-38823, 1, -8198)), vec2<bool>(!all(vec3<bool>(true, false, false)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true))), Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -136.0), -219.0, func_2(Struct_2(vec3<i32>(1, 2147483647, 33695), vec2<bool>(true, true), Struct_1(-697.0, 158.0, vec3<bool>(true, false, true), true)), Struct_2(vec3<i32>(13735, 29009, -67264), vec2<bool>(true, false), Struct_1(540.0, -1500.0, vec3<bool>(true, false, false), false))).c, !(!false)))).c;
                var var_3 = Struct_2(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-3904, -41695, -15878), vec3<i32>(25781, 2147483647, 15439)), 30621 << (4294967295u % 32u), 29761 << (7368u % 32u)), (vec3<i32>(-4456, 2147483647, 0) << (u_input.c.yyy % vec3<u32>(32u))) & (vec3<i32>(9314, -3997, 15608) >> (u_input.c.zyy % vec3<u32>(32u))))), !vec2<bool>(var_2.x, var_2.x), func_2(Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-1, -12578, 26717), reverseBits(vec3<i32>(27210, 45155, -2147483648))), select(var_2.yy, vec2<bool>(false, false), !vec2<bool>(var_2.x, false)), Struct_1(_wgslsmith_f_op_f32(-592.0), _wgslsmith_f_op_f32(floor(1292.0)), vec3<bool>(true, false, var_2.x), true & false)), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(34227, 2147483647, -52094), -vec3<i32>(-2147483648, 0, 2147483647)), var_2.xx, Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -1677.0), 135.0, func_2(Struct_2(vec3<i32>(1800, 0, -9057), vec2<bool>(true, var_2.x), Struct_1(122.0, 1534.0, var_2, var_2.x)), Struct_2(vec3<i32>(-28257, 49415, 2147483647), vec2<bool>(var_2.x, var_2.x), Struct_1(-481.0, 306.0, var_2, false))).c, !var_2.x))));
                var var_4 = ~firstTrailingBit(46931);
                let var_5 = _wgslsmith_div_f32(var_3.c.a, var_3.c.a);
                continue;
            }
        }
        case -12086: {
            global0 = array<u32, 27>();
        }
        case -2147483648: {
            let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1000.0, _wgslsmith_f_op_f32(round(1149.0)), _wgslsmith_f_op_f32(min(788.0, -334.0))), vec3<f32>(_wgslsmith_f_op_f32(max(126.0, -892.0)), 217.0, _wgslsmith_f_op_f32(f32(-1.0) * -497.0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-534.0, 1020.0, -597.0), vec3<f32>(2736.0, -919.0, -1095.0))) * _wgslsmith_div_vec3_f32(vec3<f32>(1248.0, 510.0, 707.0), vec3<f32>(-1275.0, 1000.0, -835.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-386.0, -244.0, -1266.0) - vec3<f32>(1258.0, 1354.0, 115.0)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1256.0, 1000.0, 811.0))))))));
            var_0 = 18537u;
            let var_2 = Struct_1(var_1.x, func_2(Struct_2(-vec3<i32>(20451, 17528, 2147483647), func_3().yx, func_2(Struct_2(vec3<i32>(18896, -1, -1), vec2<bool>(false, false), Struct_1(var_1.x, 574.0, vec3<bool>(true, false, false), true)), Struct_2(vec3<i32>(-5304, -40523, 0), vec2<bool>(true, true), Struct_1(var_1.x, var_1.x, vec3<bool>(true, false, false), true)))), Struct_2(vec3<i32>(0, -2147483647, max(-38749, 1)), vec2<bool>(!false, func_3().x), func_2(Struct_2(vec3<i32>(-1, -16182, 2147483647), vec2<bool>(true, true), Struct_1(-1000.0, var_1.x, vec3<bool>(true, true, false), false)), Struct_2(vec3<i32>(-39089, -60266, -4614), vec2<bool>(true, false), Struct_1(-878.0, var_1.x, vec3<bool>(true, false, false), false))))).a, !(!(!func_2(Struct_2(vec3<i32>(-1, -1, 2147483647), vec2<bool>(true, false), Struct_1(var_1.x, -563.0, vec3<bool>(true, false, true), true)), Struct_2(vec3<i32>(1, 2147483647, -2147483648), vec2<bool>(false, false), Struct_1(var_1.x, -1100.0, vec3<bool>(false, false, true), true))).c)), false);
        }
        case 14677: {
            switch (_wgslsmith_mult_i32(-(~max(min(2147483647, -12774), -18624)), max(43266, ~(~(~6058))))) {
                case 29783: {
                    let var_1 = 17133;
                    var var_2 = var_1;
                    let var_3 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(-2147483648 & _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, -57114, var_1), vec3<i32>(var_1, var_1, -2147483648)), min(-6210, _wgslsmith_clamp_i32(4476, -16026, 35263))), -_wgslsmith_mod_i32(~(-45097), -var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(0, ~(-1), -2147483648, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, -1, 0))), select(-vec4<i32>(0, -41928, 1, 2147483647), ~vec4<i32>(5862, -2147483648, -8566, 0), vec4<bool>(true, true, true, true)))), func_4(func_3(), func_2(Struct_2(vec3<i32>(var_1, var_1, var_1) & vec3<i32>(-27347, 0, var_1), !vec2<bool>(false, false), func_2(Struct_2(vec3<i32>(2147483647, var_1, var_1), vec2<bool>(true, true), Struct_1(1029.0, 1000.0, vec3<bool>(true, true, false), false)), Struct_2(vec3<i32>(-2147483648, -1, 2147483647), vec2<bool>(false, false), Struct_1(826.0, -1000.0, vec3<bool>(false, true, false), true)))), Struct_2(vec3<i32>(25699, 50204, var_1), func_2(Struct_2(vec3<i32>(-1, var_1, var_1), vec2<bool>(false, false), Struct_1(-399.0, -1010.0, vec3<bool>(true, true, true), true)), Struct_2(vec3<i32>(64467, var_1, -1), vec2<bool>(true, false), Struct_1(-1064.0, -1072.0, vec3<bool>(true, false, false), true))).c.yz, func_2(Struct_2(vec3<i32>(2147483647, var_1, 38132), vec2<bool>(true, true), Struct_1(-806.0, -1295.0, vec3<bool>(false, false, true), true)), Struct_2(vec3<i32>(2147483647, -16842, var_1), vec2<bool>(true, true), Struct_1(179.0, -957.0, vec3<bool>(true, false, true), true))))), select(~vec3<i32>(0, -71534, var_1), ~vec3<i32>(-2147483648, var_1, 2147483647), !false)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807.0) * _wgslsmith_f_op_f32(floor(371.0)))), _wgslsmith_f_op_f32(func_7(Struct_2(max(vec3<i32>(1, var_1, var_1), vec3<i32>(var_1, var_1, 47156)), !vec2<bool>(true, true), func_2(Struct_2(vec3<i32>(6144, var_1, -37821), vec2<bool>(true, true), Struct_1(888.0, 914.0, vec3<bool>(false, false, false), false)), Struct_2(vec3<i32>(2147483647, var_1, 21006), vec2<bool>(false, false), Struct_1(679.0, 682.0, vec3<bool>(true, true, false), true)))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(10554, 1, var_1), vec3<i32>(var_1, var_1, var_1)), _wgslsmith_clamp_vec3_i32(vec3<i32>(40621, var_1, var_1), vec3<i32>(13274, var_1, var_1), vec3<i32>(-2147483648, 2318, -44496))), func_2(Struct_2(vec3<i32>(var_1, -1, var_1), vec2<bool>(true, false), Struct_1(-1000.0, -793.0, vec3<bool>(true, false, false), true)), Struct_2(vec3<i32>(52553, -2147483648, 0), vec2<bool>(false, true), Struct_1(945.0, 1497.0, vec3<bool>(false, true, true), true))))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), !all(!vec2<bool>(true, true))));
                    let var_4 = 4294967295u;
                }
                default: {
                    var var_1 = abs(max(~1u, 47727u));
                    var var_2 = 4294967295u;
                    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(-2911, -(1 | 1) ^ 1, ~((i32(-1) * -42075) >> ((u_input.c.x >> (global0[_wgslsmith_index_u32(0u, 27u)] % 32u)) % 32u))), abs(abs(vec3<i32>(30859, _wgslsmith_mod_i32(2147483647, 33503), _wgslsmith_add_i32(19007, -16643)))));
                    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5())), -146.0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -887.0)));
                    var var_5 = 1u;
                }
            }
            let var_1 = func_2(Struct_2(firstLeadingBit(-vec3<i32>(26331, -1, 48389)), func_4(func_2(Struct_2(vec3<i32>(1, 1, 15675), vec2<bool>(true, false), Struct_1(126.0, 934.0, vec3<bool>(false, false, true), true)), Struct_2(vec3<i32>(-107, 44945, -2147483648), vec2<bool>(false, true), Struct_1(112.0, -155.0, vec3<bool>(false, false, true), true))).c, Struct_1(-1949.0, _wgslsmith_f_op_f32(794.0 - 883.0), vec3<bool>(true, false, true), true), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(0, 13202, 60412), vec3<i32>(50020, -22310, -2147483648), vec3<i32>(-2147483648, 1, 35262)))), Struct_1(_wgslsmith_f_op_f32(1101.0 * _wgslsmith_f_op_f32(-127.0 - -1862.0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1444.0))), vec3<bool>(false, func_3().x, true), min(-1, -789) < 1)), Struct_2(vec3<i32>(i32(-1) * -1, _wgslsmith_sub_i32(-40111, _wgslsmith_div_i32(0, -22426)), 0), select(!vec2<bool>(true, true), vec2<bool>(!false, false & false), !vec2<bool>(false, true)), func_2(Struct_2(vec3<i32>(1, 31912, 12322) & vec3<i32>(-9460, 0, -1), !vec2<bool>(true, false), Struct_1(515.0, -2082.0, vec3<bool>(false, false, true), true)), Struct_2(vec3<i32>(25246, -2147483648, 0), vec2<bool>(true, true), func_2(Struct_2(vec3<i32>(0, 3325, 0), vec2<bool>(false, false), Struct_1(2551.0, -248.0, vec3<bool>(true, true, true), false)), Struct_2(vec3<i32>(0, 1, 16911), vec2<bool>(false, true), Struct_1(777.0, -1830.0, vec3<bool>(true, true, false), true)))))));
            var var_2 = min(vec2<u32>(global2.x, 0u), ~(vec2<u32>(u_input.b, u_input.b >> (global2.x % 32u)) >> ((firstTrailingBit(vec2<u32>(u_input.a, u_input.a)) >> (global2.zy % vec2<u32>(32u))) % vec2<u32>(32u))));
        }
        default: {
            let var_1 = Struct_2(-firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(32521, 2147483647, 14498), _wgslsmith_mod_vec3_i32(vec3<i32>(51240, 1, 23476), vec3<i32>(32065, 26977, -58945)))), vec2<bool>(true, any(vec3<bool>(1u >= 4294967295u, 320.0 < 1000.0, false != false))), func_2(Struct_2(vec3<i32>(max(-23302, 9141), reverseBits(1), _wgslsmith_mod_i32(-48480, 26744)), vec2<bool>(true, true), func_2(Struct_2(vec3<i32>(-12489, 0, -1), vec2<bool>(false, false), Struct_1(-1045.0, 305.0, vec3<bool>(true, true, false), false)), Struct_2(vec3<i32>(-1, 0, -2147483648), vec2<bool>(false, false), Struct_1(-542.0, 371.0, vec3<bool>(false, true, true), true)))), Struct_2(select(vec3<i32>(-2147483648, 15190, 2147483647), vec3<i32>(29528, 4425, -31146), vec3<bool>(true, false, false)) >> (~u_input.c.zxw % vec3<u32>(32u)), vec2<bool>(select(true, false, true), true), func_2(Struct_2(vec3<i32>(2147483647, -1, -41288), vec2<bool>(false, false), Struct_1(-820.0, 184.0, vec3<bool>(false, false, true), true)), Struct_2(vec3<i32>(-40863, -2147483648, 13640), vec2<bool>(true, false), Struct_1(634.0, -905.0, vec3<bool>(true, false, false), true))))));
            let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2(Struct_2(vec3<i32>(var_1.a.x, 1, var_1.a.x), var_1.b, var_1.c), Struct_2(vec3<i32>(var_1.a.x, -38415, var_1.a.x), var_1.b, Struct_1(-1121.0, 1063.0, vec3<bool>(false, var_1.c.c.x, var_1.c.c.x), true))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1035.0 + var_1.c.b))))), !(!(!vec3<bool>(var_1.b.x, var_1.c.c.x, true))), !var_1.b.x);
        }
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_7(Struct_2(vec3<i32>(reverseBits(16770), 2147483647, 31630), vec2<bool>(false, true), func_2(Struct_2(vec3<i32>(25533, 0, -1), vec2<bool>(true, false), Struct_1(-405.0, 1746.0, vec3<bool>(true, false, true), false)), Struct_2(vec3<i32>(-37140, 30072, 1), vec2<bool>(true, false), Struct_1(-1610.0, -1442.0, vec3<bool>(true, true, true), false)))), ~min(vec3<i32>(0, 66898, -2754) & vec3<i32>(39023, -2147483648, 1220), vec3<i32>(2147483647, -2147483648, -4733)), func_2(Struct_2(abs(vec3<i32>(1, 17413, 20977)), vec2<bool>(false, false), func_2(Struct_2(vec3<i32>(0, 26361, 2147483647), vec2<bool>(true, false), Struct_1(1000.0, 1440.0, vec3<bool>(true, true, true), true)), Struct_2(vec3<i32>(-2101, 0, 1), vec2<bool>(true, false), Struct_1(1000.0, 110.0, vec3<bool>(false, false, false), true)))), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647, -1, -20031), vec3<i32>(39632, -2147483648, 0)), !vec2<bool>(false, false), func_2(Struct_2(vec3<i32>(-5437, 11561, 1), vec2<bool>(true, true), Struct_1(-605.0, 1595.0, vec3<bool>(true, true, true), true)), Struct_2(vec3<i32>(-12200, 2147483647, 54978), vec2<bool>(true, false), Struct_1(-206.0, -820.0, vec3<bool>(true, true, true), false))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-696.0)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483.0 + 593.0)))))));
        let var_2 = Struct_2(min(~max(vec3<i32>(-1, 0, -25769), select(vec3<i32>(20047, 16443, -10938), vec3<i32>(2147483647, 34235, -1), false)), ~(vec3<i32>(-1) * -vec3<i32>(-1, -32578, 30555))), select(select(func_4(!vec3<bool>(true, false, false), Struct_1(1646.0, -271.0, vec3<bool>(false, true, false), true), vec3<i32>(-36710, 2147483647, 2147483647) & vec3<i32>(-3758, 81463, 0)), select(!vec2<bool>(true, true), func_3().zx, !vec2<bool>(true, false)), true), select(func_2(Struct_2(vec3<i32>(24008, 2147483647, -1), vec2<bool>(true, true), Struct_1(-431.0, var_1, vec3<bool>(false, true, false), false)), Struct_2(vec3<i32>(25083, 2147483647, 26910), vec2<bool>(false, false), Struct_1(-795.0, 145.0, vec3<bool>(true, true, true), true))).c.zz, !(!vec2<bool>(true, true)), all(func_3().xy)), !(!vec2<bool>(true, false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), var_1))), -1663.0, select(vec3<bool>(all(vec3<bool>(true, false, false)), true, true), !func_2(Struct_2(vec3<i32>(-1018, 1, -1), vec2<bool>(true, true), Struct_1(var_1, var_1, vec3<bool>(false, false, true), true)), Struct_2(vec3<i32>(71652, 1, -2147483648), vec2<bool>(false, true), Struct_1(146.0, 415.0, vec3<bool>(true, false, true), true))).c, !vec3<bool>(true, true, true)), !(!(true || false))));
        global2 = select(u_input.c.xwz, _wgslsmith_mult_vec3_u32(u_input.c.yyw, vec3<u32>(17170u, global2.x, _wgslsmith_dot_vec3_u32(u_input.c.yzx, u_input.c.wwz))), vec3<bool>(!func_3().x, var_2.b.x, var_2.b.x)) & (u_input.c.yzz ^ u_input.c.wzy);
        let var_3 = ~u_input.c.zzx;
        var var_4 = -abs(var_2.a.x);
    }
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        loop {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            var var_1 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-9351, -1, -14299, -3299), vec4<i32>(0, 0, 27916, -28604)) | vec4<i32>(13826, -2147483648, 1, -24684), (vec4<i32>(-13130, 10276, 5701, 2147483647) | vec4<i32>(-1, -77256, -17582, 2923)) >> (~u_input.c % vec4<u32>(32u))), -1, _wgslsmith_clamp_i32(select(countOneBits(0), _wgslsmith_sub_i32(1, -2147483648), true), ~27654, ~countOneBits(45666))), vec2<bool>(true, ~_wgslsmith_mod_i32(2662, -2147483648) <= -1), func_2(Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(1, 2147483647, -1), vec3<i32>(-44326, -18181, 44450)), !(!vec2<bool>(true, true)), func_2(Struct_2(vec3<i32>(1, 0, 2097), vec2<bool>(true, false), Struct_1(-1000.0, -266.0, vec3<bool>(false, false, false), false)), Struct_2(vec3<i32>(-2147483648, 15064, -38967), vec2<bool>(true, true), Struct_1(-1000.0, -263.0, vec3<bool>(true, true, false), true)))), Struct_2(-vec3<i32>(-1, 2147483647, 1), !vec2<bool>(true, true), func_2(Struct_2(vec3<i32>(-26411, 21891, -13597), vec2<bool>(false, false), Struct_1(1714.0, 151.0, vec3<bool>(false, false, true), false)), Struct_2(vec3<i32>(-58034, 24836, -11451), vec2<bool>(true, true), Struct_1(-1392.0, 436.0, vec3<bool>(true, false, false), false))))));
            let var_2 = var_1.b;
        }
        if (reverseBits(_wgslsmith_div_i32(43505, min(50198, -21008)) << (_wgslsmith_dot_vec4_u32(u_input.c << (u_input.c % vec4<u32>(32u)), u_input.c) % 32u)) > -1) {
            break;
        }
        var_0 = 1u;
        if (!(func_6(Struct_2(-vec3<i32>(-1, 2147483647, -57775), vec2<bool>(false, true), func_2(Struct_2(vec3<i32>(18213, 2147483647, -6849), vec2<bool>(true, false), Struct_1(-343.0, -2099.0, vec3<bool>(false, false, true), true)), Struct_2(vec3<i32>(1, -23974, -2147483648), vec2<bool>(true, true), Struct_1(-377.0, 1283.0, vec3<bool>(true, false, true), false)))), select(!true, false || true, false), -abs(-10533)) != min(abs(1), ~1))) {
        }
        switch (_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647, 4883, -14512), vec3<i32>(-4437, -68613, -535)) >> (76533u % 32u), min(firstLeadingBit(-1), min(-6372, 0) ^ ~(-39750)), _wgslsmith_clamp_i32((-15842 ^ 0) << (~31964u % 32u), -(-2147483648 >> (global2.x % 32u)), -14131), _wgslsmith_div_i32(reverseBits(12170 | 76917), -abs(-54925))), vec4<i32>(24622, 1, countOneBits(0) >> (abs(firstLeadingBit(global2.x)) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0, 22192, -2147483648, 1), vec4<i32>(2147483647, -32975, 32898, -1)) << (abs(u_input.c) % vec4<u32>(32u)), vec4<i32>(~1, -25253, i32(-1) * -1, reverseBits(16476)))))) {
            case -23524: {
                break;
            }
            default: {
                var var_1 = ~0u;
                var_0 = ~_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(max(u_input.c.zy, vec2<u32>(9042u, 258u)), func_9(948.0, false, Struct_1(-276.0, 166.0, vec3<bool>(false, false, false), false), -20067).xy), 19495u >> (~(~u_input.b) % 32u));
                global1 = _wgslsmith_f_op_f32(-632.0);
                var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-539.0 * -322.0), _wgslsmith_f_op_f32(sign(760.0)), all(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1602.0)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(313.0 * -446.0)))), 1000.0));
                let var_3 = func_2(Struct_2(vec3<i32>(0 | (138 & -65447), -31174, 4898), !select(vec2<bool>(false, true), vec2<bool>(true, true), !false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -1000.0)), var_2.x, select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), !vec3<bool>(false, false, true)), false)), Struct_2(~(~(-vec3<i32>(-4230, -33520, 2147483647))), select(func_3().zy, vec2<bool>(true, false), all(vec4<bool>(false, false, true, false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)) - _wgslsmith_f_op_f32(-546.0 - -404.0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(-552.0)), _wgslsmith_div_f32(var_2.x, var_2.x), !true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), (-64731 == 2147483647) & func_4(vec3<bool>(false, false, true), Struct_1(1843.0, 986.0, vec3<bool>(true, false, false), true), vec3<i32>(1, -33592, -5728)).x)));
            }
        }
    }
    let var_1 = func_2(Struct_2(vec3<i32>(-1) * -abs(vec3<i32>(1, 1, -2147483648)), vec2<bool>(func_4(!vec3<bool>(true, true, false), Struct_1(-1185.0, 1000.0, vec3<bool>(true, true, false), false), vec3<i32>(0, 2147483647, 35706) >> (vec3<u32>(4294967295u, 0u, global2.x) % vec3<u32>(32u))).x, false && false), func_2(Struct_2(vec3<i32>(-2147483648, 60452, 16626), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), func_2(Struct_2(vec3<i32>(-1, -8517, -23173), vec2<bool>(true, true), Struct_1(1156.0, 933.0, vec3<bool>(false, true, true), true)), Struct_2(vec3<i32>(-1, 0, -2147483648), vec2<bool>(false, true), Struct_1(-1023.0, -660.0, vec3<bool>(true, true, true), true)))), Struct_2(-vec3<i32>(-1, 1, -23474), select(vec2<bool>(true, false), vec2<bool>(true, false), true), func_2(Struct_2(vec3<i32>(64189, -10789, 6880), vec2<bool>(true, true), Struct_1(-1206.0, -1740.0, vec3<bool>(false, false, true), true)), Struct_2(vec3<i32>(2147483647, -20894, 36611), vec2<bool>(false, true), Struct_1(-1093.0, -867.0, vec3<bool>(true, true, false), false)))))), Struct_2(min(max(-vec3<i32>(-1, -29652, 6808), _wgslsmith_div_vec3_i32(vec3<i32>(70618, -9440, 2147483647), vec3<i32>(-19538, 25644, 6700))), _wgslsmith_add_vec3_i32(select(vec3<i32>(-10021, -20293, -2147483648), vec3<i32>(0, 2147483647, 84723), true), _wgslsmith_mult_vec3_i32(vec3<i32>(17888, -42297, 0), vec3<i32>(35550, 2147483647, 1)))), select(func_4(vec3<bool>(false, false, true), func_2(Struct_2(vec3<i32>(-37588, 620, 0), vec2<bool>(true, false), Struct_1(-2261.0, 875.0, vec3<bool>(true, false, true), false)), Struct_2(vec3<i32>(-1, 15582, -6657), vec2<bool>(false, false), Struct_1(517.0, 626.0, vec3<bool>(false, false, false), false))), ~vec3<i32>(2147483647, 47456, 2147483647)), vec2<bool>(any(vec4<bool>(false, true, false, false)), !false), select(vec2<bool>(true, false), func_4(vec3<bool>(false, false, false), Struct_1(867.0, 499.0, vec3<bool>(false, true, true), true), vec3<i32>(7217, -35020, 2147483647)), -25797 < 9707)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1340.0 + 274.0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-159.0, -1000.0) - -2171.0), !(!vec3<bool>(false, true, true)), !any(vec3<bool>(true, true, true)))));
    let var_2 = _wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1, 1, 0, -42004), vec4<i32>(-1, 1, 2147483647, 2147483647)) & ~17855, -2147483647 >> (u_input.b % 32u)), _wgslsmith_div_vec2_i32(select(-(vec2<i32>(28572, 1) << (u_input.c.yz % vec2<u32>(32u))), vec2<i32>(1, 2147483647), select(func_4(var_1.c, var_1, vec3<i32>(0, -32169, -45453)), select(vec2<bool>(false, false), vec2<bool>(var_1.d, var_1.d), var_1.c.yz), vec2<bool>(var_1.c.x, var_1.d))), vec2<i32>(2147483647, abs(i32(-1) * -2147483648))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(985.0, var_1.b), vec2<f32>(var_1.a, -1000.0))))))), reverseBits(abs(vec3<i32>(~var_2.x, -19025, -4108))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_1.b))))))));
}

