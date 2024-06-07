// {"0:0":[100,144,153,126,105,210,29,180,223,239,220,245,232,235,232,142]}
// Seed: 17656458345062522342

struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-174.0, 328.0), vec2<f32>(456.0, -378.0), vec2<f32>(500.0, 1334.0), vec2<f32>(2611.0, 277.0), vec2<f32>(-757.0, 1075.0));

var<private> global1: array<f32, 12>;

var<private> global2: Struct_3 = Struct_3(false, vec2<u32>(55926u, 77081u), false, vec4<u32>(48772u, 4294967295u, 1u, 49072u), Struct_2(Struct_1(vec2<f32>(-1196.0, -1000.0), vec3<u32>(130702u, 1u, 21210u), 4294967295u, vec3<i32>(-41813, 1, 2147483647), vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<f32>(290.0, 236.0, -400.0), vec2<u32>(4294967295u, 38004u), Struct_1(vec2<f32>(-272.0, 1589.0), vec3<u32>(1u, 5143u, 35606u), 0u, vec3<i32>(-5346, 31180, -46872), vec3<u32>(4294967295u, 37897u, 0u))));

var<private> LOOP_COUNTERS: array<u32, 12>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var var_0 = arg_2.c.d.xx;
            var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(781.0, arg_3.a.x, -156.0));
            continue;
        }
        continue;
    }
    let var_0 = abs(abs(arg_2.b.e.d.d.yz));
    for (var var_1 = 45664; var_1 < 17335; var_1 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            var var_2 = vec2<i32>(var_0.x >> (arg_1.b.x % 32u), -u_input.b) >> (arg_1.b.yz % vec2<u32>(32u));
            var var_3 = arg_2.b.e.d;
        }
        global1 = array<f32, 12>();
        continue;
    }
    if (all(select(vec3<bool>(global2.a, any(!arg_0.zw), !all(arg_0.zw)), vec3<bool>(false, arg_1.a.x >= _wgslsmith_f_op_f32(round(-606.0)), _wgslsmith_add_i32(global2.e.a.d.x, arg_3.d.x) <= ~u_input.b), arg_2.c.e.a.d.x > 0))) {
    }
    var var_1 = arg_0.yww;
    return select((arg_1.a.x != arg_1.a.x) | !(!any(vec2<bool>(global2.c, false))), _wgslsmith_mult_i32(abs(arg_3.d.x), global2.e.d.d.x & 1) <= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.d.x, var_0.x, arg_3.d.x, arg_3.d.x) << (arg_2.b.d % vec4<u32>(32u)), min(vec4<i32>(arg_1.d.x, 0, 27137, global2.e.a.d.x), vec4<i32>(0, 1, arg_2.b.e.a.d.x, -56217))), -select(vec4<i32>(-5123, 1022, var_0.x, 2147483647), vec4<i32>(arg_1.d.x, arg_1.d.x, -2147483648, arg_2.c.e.a.d.x), vec4<bool>(var_1.x, arg_2.c.c, true, var_1.x))), false);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: f32) -> u32 {
    global2 = Struct_3(-6025 < global2.e.d.d.x, ~(~arg_2.e.a.b.zx), all(select(vec4<bool>(5094u > global2.d.x, false, false, func_6(vec4<bool>(false, arg_1.x, arg_2.c, true), global2.e.d, Struct_4(vec2<u32>(arg_2.b.x, 1u), Struct_3(global2.c, global2.d.yx, global2.a, vec4<u32>(arg_2.d.x, 5590u, 4294967295u, global2.b.x), arg_2.e), arg_2, global2.e, vec4<f32>(arg_3, arg_2.e.b.x, 999.0, global2.e.d.a.x)), global2.e.d)), !(!vec4<bool>(true, false, false, arg_1.x)), _wgslsmith_f_op_f32(floor(arg_2.e.d.a.x)) <= _wgslsmith_f_op_f32(f32(-1.0) * -314.0))), firstTrailingBit(vec4<u32>(0u, u_input.a.x >> (29537u % 32u), abs(47775u), ~arg_2.b.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(10432u, 23396u, 30116u, u_input.a.x) | global2.d, ~arg_2.d)), Struct_2(global2.e.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.e.b)) + _wgslsmith_f_op_vec3_f32(round(arg_2.e.b)))), min(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 0u), ~arg_2.e.d.b.x), ~u_input.a.zz), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(arg_2.e.b.x, 2096.0)), _wgslsmith_f_op_f32(-arg_3)), firstLeadingBit(u_input.a) >> (countOneBits(arg_2.e.d.b) % vec3<u32>(32u)), _wgslsmith_sub_u32(min(arg_2.d.x, u_input.a.x), 50580u), abs(~vec3<i32>(44120, -43053, arg_2.e.a.d.x)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.d.x, 57247u, 69699u)), select(u_input.a, vec3<u32>(4294967295u, global2.d.x, u_input.a.x), global2.c)))));
    global2 = arg_2;
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_0 = Struct_4(~abs(~select(arg_2.b, global2.e.c, true)), Struct_3(!true, countOneBits(abs(vec2<u32>(arg_2.b.x, u_input.a.x))), arg_1.x, ~(~vec4<u32>(0u, 1u, u_input.a.x, arg_2.b.x)), global2.e), arg_2, global2.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e.b.x, _wgslsmith_f_op_f32(round(-801.0)), _wgslsmith_f_op_f32(select(2844.0, global2.e.d.a.x, global2.a)), _wgslsmith_div_f32(1000.0, global2.e.a.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-1724.0 - _wgslsmith_f_op_f32(f32(-1.0) * -1476.0)), _wgslsmith_f_op_f32(select(global2.e.b.x, global1[_wgslsmith_index_u32(select(0u, arg_2.e.d.e.x, arg_2.a), 12u)], arg_2.d.x != 18659u)), _wgslsmith_f_op_f32(ceil(global2.e.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_3, arg_3)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)] + 1420.0)))), !(!(!vec4<bool>(arg_2.c, arg_2.a, false, global2.a))))));
        return var_0.c.d.x;
    }
    var var_0 = arg_2;
    let var_1 = 2147483647;
    return 1u;
}

fn func_4(arg_0: vec4<bool>) -> vec2<bool> {
    global2 = Struct_3(all(arg_0), select((global2.b | u_input.a.xz) << (vec2<u32>(func_5(u_input.b, arg_0.xw, Struct_3(false, u_input.a.zx, arg_0.x, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), global2.e), global1[_wgslsmith_index_u32(global2.b.x, 12u)]), ~55510u) % vec2<u32>(32u)), ~u_input.a.yy, select(!(!vec2<bool>(false, global2.c)), !arg_0.yy, select(vec2<bool>(true, true), vec2<bool>(true, false), select(arg_0.zz, vec2<bool>(arg_0.x, arg_0.x), arg_0.ww)))), true | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669.0 + global1[_wgslsmith_index_u32(4294967295u, 12u)])) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-274.0))))), global2.d, global2.e);
    let var_0 = ((reverseBits(0) & ~_wgslsmith_mod_i32(u_input.b, global2.e.a.d.x)) ^ ~_wgslsmith_add_i32(-94640, max(13353, 2147483647))) != countOneBits(u_input.b);
    return arg_0.zw;
}

fn func_3(arg_0: u32) -> Struct_2 {
    let var_0 = ~_wgslsmith_mod_vec4_i32(-(~vec4<i32>(global2.e.d.d.x, u_input.b, global2.e.a.d.x, global2.e.a.d.x)) | _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-17247, global2.e.a.d.x, global2.e.a.d.x, global2.e.d.d.x), vec4<i32>(global2.e.a.d.x, global2.e.d.d.x, -2147483648, 0)), vec4<i32>(global2.e.d.d.x, global2.e.d.d.x, u_input.b, 1)), -(vec4<i32>(u_input.b, -93101, u_input.b, 43964) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 60411, global2.e.d.d.x, -2147483648), vec4<i32>(2147483647, u_input.b, u_input.b, 2147483647))));
    switch (~(u_input.b | global2.e.a.d.x)) {
        default: {
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
            if (all(select(!vec4<bool>(!false, !global2.c, !false, global2.a), !vec4<bool>(!true, any(vec3<bool>(global2.a, global2.a, global2.c)), !false, true), global2.a))) {
                let var_1 = !vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(global2.c, global2.a), vec2<bool>(true, global2.c))), global2.c, any(func_4(select(vec4<bool>(true, true, global2.a, global2.a), vec4<bool>(global2.a, global2.c, global2.a, global2.a), vec4<bool>(true, true, true, false)))), select(true, true, true) | (func_4(vec4<bool>(true, true, false, false)).x && (826.0 != 2002.0)));
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_1 = Struct_3(global2.a, ~(global2.d.yw ^ abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(32605u, 4294967295u)))), false, ~global2.d, Struct_2(global2.e.d, _wgslsmith_f_op_vec3_f32(-global2.e.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(0u, arg_0)), ~(vec2<u32>(4294967295u, 30453u) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), u_input.a.yx), global2.e.d));
                let var_2 = select(vec2<bool>(true, !true), select(!(!(!vec2<bool>(false, false))), vec2<bool>(false, !any(vec2<bool>(global2.c, false))), !vec2<bool>(var_1.c, var_1.c && false)), !select(!vec2<bool>(false, global2.a), !(!vec2<bool>(false, false)), !(!vec2<bool>(global2.a, false))));
                let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.e.b.xx + _wgslsmith_f_op_vec2_f32(global2.e.b.zy - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e.d.a.x, -1597.0) * global0[_wgslsmith_index_u32(global2.e.c.x, 5u)]))))) + _wgslsmith_f_op_vec2_f32(floor(var_1.e.a.a)));
            }
            var var_1 = select(select(vec3<bool>(true, !(global2.e.d.d.x != global2.e.d.d.x), all(vec2<bool>(global2.a, global2.c))), vec3<bool>(true, !(!global2.c), any(!vec4<bool>(global2.a, global2.c, global2.a, false))), select(select(select(vec3<bool>(true, false, global2.c), vec3<bool>(global2.c, false, false), false), !vec3<bool>(global2.c, global2.a, true), vec3<bool>(false, global2.c, global2.c)), vec3<bool>(!true, false != true, global2.a), !global2.c)), select(vec3<bool>(global2.c, all(!vec4<bool>(true, false, global2.a, global2.c)), true), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), global2.a)), select(!(!vec3<bool>(global2.c, true, global2.c)), vec3<bool>(true, true, false), !vec3<bool>(true, global2.a, false))), func_4(!vec4<bool>(!global2.a, true, global1[_wgslsmith_index_u32(72756u, 12u)] >= 495.0, true)).x);
            switch (firstTrailingBit(-var_0.x)) {
                default: {
                    var var_2 = vec4<i32>(reverseBits(global2.e.d.d.x), global2.e.a.d.x ^ global2.e.d.d.x, min(u_input.b, -reverseBits(21497)) | global2.e.d.d.x, -_wgslsmith_mult_i32(u_input.b, global2.e.d.d.x));
                    var var_3 = ~select(~(~global2.d.xx), vec2<u32>(~global2.e.a.e.x, _wgslsmith_sub_u32(1u, 19649u)), var_1.xy);
                    let var_4 = func_4(select(vec4<bool>(false, global2.a, true, false), select(vec4<bool>(true, all(vec2<bool>(global2.a, global2.a)), var_2.x >= -2147483648, !global2.a), vec4<bool>(global2.a, all(vec4<bool>(true, global2.c, global2.c, global2.c)), any(vec3<bool>(global2.a, false, global2.c)), 4294967295u < arg_0), vec4<bool>(global2.a, true, select(true, false, true), var_1.x && global2.c)), select(vec4<bool>(!var_1.x, !global2.a, true, !false), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)), !vec4<bool>(global2.c, false, var_1.x, true))));
                    var_3 = select(vec2<u32>(1u, ~13103u), global2.d.zw, !vec2<bool>(!any(var_1.zy), false));
                }
            }
        }
    }
    var var_1 = global2.e.d.a.x;
    var var_2 = -121.0;
    global2 = Struct_3(func_4(select(!vec4<bool>(true, global2.a, global2.a, false), vec4<bool>(global2.c, global2.a, true, global2.c), !select(vec4<bool>(true, global2.c, global2.c, false), vec4<bool>(global2.c, global2.c, false, global2.c), false))).x, ~firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(2350u, 4294967295u), reverseBits(u_input.a.zx))), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(9094u, u_input.a.x, 0u, 1u), vec4<u32>(4294967295u, u_input.a.x, 1u, 1067u)), global2.d)) >= global2.d.x, _wgslsmith_clamp_vec4_u32(~(~global2.d), global2.d, vec4<u32>(func_5(var_0.x, vec2<bool>(global2.c, true), Struct_3(global2.c, vec2<u32>(arg_0, 34817u), true, global2.d, Struct_2(global2.e.a, global2.e.b, global2.d.zz, Struct_1(global0[_wgslsmith_index_u32(32219u, 5u)], vec3<u32>(6211u, arg_0, 2075u), 53415u, vec3<i32>(-25910, global2.e.d.d.x, -1), vec3<u32>(6946u, u_input.a.x, 113336u)))), -158.0), ~3227u, 7816u >> (32673u % 32u), 21463u >> (25900u % 32u))) ^ vec4<u32>(max(74739u | 0u, 4294967295u | 7376u), ~(~u_input.a.x), global2.b.x, (u_input.a.x ^ 0u) | ~arg_0), global2.e);
    return Struct_2(global2.e.d, _wgslsmith_f_op_vec3_f32(select(global2.e.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2.e.b - vec3<f32>(global1[_wgslsmith_index_u32(global2.d.x, 12u)], global2.e.d.a.x, -1593.0)), _wgslsmith_f_op_vec3_f32(-global2.e.b), !(!vec3<bool>(false, true, true)))), any(!(!vec3<bool>(global2.c, global2.c, false))))), u_input.a.yx, global2.e.d);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = func_3(arg_1.e.c.x);
    global0 = array<vec2<f32>, 5>();
    var var_1 = !select(vec4<bool>(!(!global2.c), true, func_6(vec4<bool>(global2.a, false, global2.a, global2.c), Struct_1(global2.e.a.a, vec3<u32>(global2.e.a.e.x, arg_0.c.d.x, var_0.a.e.x), 4294967295u, var_0.a.d, vec3<u32>(4384u, 76103u, 6472u)), Struct_4(vec2<u32>(4764u, global2.e.c.x), Struct_3(arg_0.b.a, u_input.a.xz, false, vec4<u32>(0u, 46681u, var_0.a.c, 1u), global2.e), arg_0.b, arg_1.e, vec4<f32>(-1328.0, arg_0.e.x, arg_1.e.b.x, global2.e.a.a.x)), Struct_1(global0[_wgslsmith_index_u32(global2.b.x, 5u)], arg_0.c.e.d.b, arg_0.b.d.x, vec3<i32>(-29041, -26758, arg_3.x), arg_0.c.e.a.e)), !global2.c & global2.a), select(!(!vec4<bool>(arg_0.b.c, global2.a, global2.a, arg_1.c)), select(select(vec4<bool>(global2.c, true, false, true), vec4<bool>(true, arg_1.a, false, global2.a), vec4<bool>(global2.c, arg_0.c.c, arg_0.b.c, false)), vec4<bool>(true, arg_1.a, arg_0.c.a, true), arg_1.a), vec4<bool>(all(vec3<bool>(true, arg_1.a, true)), true == arg_0.c.a, true, false)), arg_1.a & arg_0.c.a);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-878.0 * _wgslsmith_f_op_f32(sign(arg_1.e.b.x)))))), -378.0);
    var_1 = vec4<bool>(false, _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(2147483647, u_input.b, 2147483647, -1)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, 0, -2147483648, global2.e.d.d.x), vec4<i32>(0, -2147483648, -20139, 2890))) >= u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.a.a.x) - _wgslsmith_f_op_f32(1237.0 + 1273.0)) + -104.0) <= global2.e.b.x, global2.a);
    return arg_0.b.d;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_3 {
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    global1 = array<f32, 12>();
    global0 = array<vec2<f32>, 5>();
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        for (var var_0 = -14008; ; var_0 += 1) {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            break;
        }
    }
    global0 = array<vec2<f32>, 5>();
    return Struct_3(false, ~(firstLeadingBit(vec2<u32>(u_input.a.x, 47956u) << (vec2<u32>(0u, global2.b.x) % vec2<u32>(32u))) << (~(~vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))), false, vec4<u32>(~_wgslsmith_mult_u32(4138u, 2195u), ~_wgslsmith_div_u32(global2.d.x, global2.b.x), min(_wgslsmith_sub_u32(30173u, global2.b.x), ~31459u), 42251u) | ~(abs(global2.d) & func_2(Struct_4(u_input.a.xx, Struct_3(global2.c, u_input.a.yx, true, global2.d, Struct_2(global2.e.d, vec3<f32>(654.0, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(32978u, 12u)]), vec2<u32>(global2.b.x, 1u), Struct_1(vec2<f32>(1774.0, -1029.0), vec3<u32>(global2.d.x, u_input.a.x, 47013u), global2.e.a.e.x, vec3<i32>(global2.e.d.d.x, arg_2.x, global2.e.a.d.x), vec3<u32>(global2.b.x, 56566u, u_input.a.x)))), Struct_3(global2.c, vec2<u32>(global2.d.x, global2.d.x), global2.a, global2.d, Struct_2(global2.e.a, vec3<f32>(arg_0.x, global1[_wgslsmith_index_u32(global2.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), u_input.a.zz, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.a, 0u, arg_2, u_input.a))), global2.e, vec4<f32>(713.0, global2.e.d.a.x, -1000.0, 969.0)), Struct_3(global2.a, u_input.a.zx, false, global2.d, global2.e), u_input.a, arg_2.yz)), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.e.d.a.x, arg_0.x), vec2<f32>(1388.0, global1[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(global2.a, global2.c))), vec2<f32>(278.0, arg_0.x)), ~vec3<u32>(38471u, 22557u, u_input.a.x), u_input.a.x, vec3<i32>(max(arg_2.x, arg_1), u_input.b, i32(-1) * -13579), select(max(vec3<u32>(0u, global2.b.x, 43788u), vec3<u32>(global2.e.a.e.x, 9359u, u_input.a.x)), func_3(60000u).d.e, !vec3<bool>(global2.a, global2.a, global2.a))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -739.0), func_3(global2.d.x).b.x)), global2.e.b.x, arg_0.x), select(vec2<u32>(u_input.a.x ^ 1u, u_input.a.x & global2.e.d.e.x), global2.e.d.b.zy & vec2<u32>(4294967295u, 1u), vec2<bool>(!global2.c, true)), global2.e.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(319.0, -1395.0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), _wgslsmith_f_op_f32(round(2090.0))))), i32(-1) * -1, global2.e.d.d);
    var var_1 = Struct_4(max(~vec2<u32>(u_input.a.x << (1u % 32u), 0u), vec2<u32>(~(~global2.e.a.b.x), ~0u | ~global2.d.x)), var_0, var_0, Struct_2(func_3(~global2.b.x).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1926.0, var_0.e.a.a.x, -121.0)), func_1(_wgslsmith_f_op_vec2_f32(trunc(var_0.e.b.xz)), -(global2.e.a.d.x & global2.e.a.d.x), var_0.e.d.d ^ vec3<i32>(u_input.b, global2.e.a.d.x, -1)).b, func_3(abs(1u)).a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-718.0), global2.e.d.a.x, func_3(func_2(Struct_4(global2.d.zw, Struct_3(false, vec2<u32>(0u, 0u), true, var_0.d, Struct_2(var_0.e.a, var_0.e.b, var_0.e.a.e.zy, Struct_1(vec2<f32>(-115.0, global2.e.d.a.x), global2.d.zxx, 20272u, vec3<i32>(23328, -2147483648, u_input.b), global2.e.a.b))), Struct_3(true, global2.e.c, var_0.c, vec4<u32>(26u, 0u, global2.e.a.b.x, 1u), Struct_2(Struct_1(vec2<f32>(global2.e.b.x, 1123.0), u_input.a, var_0.e.c.x, vec3<i32>(2147483647, 4855, -20608), global2.d.zww), global2.e.b, u_input.a.zx, global2.e.d)), Struct_2(Struct_1(global2.e.a.a, var_0.e.a.e, u_input.a.x, vec3<i32>(18792, global2.e.a.d.x, 6657), vec3<u32>(14721u, 30255u, var_0.e.a.b.x)), var_0.e.b, var_0.e.d.e.zx, global2.e.a), vec4<f32>(-416.0, 1584.0, var_0.e.a.a.x, global2.e.b.x)), Struct_3(true, vec2<u32>(1u, u_input.a.x), global2.c, global2.d, Struct_2(var_0.e.d, vec3<f32>(global1[_wgslsmith_index_u32(28567u, 12u)], global1[_wgslsmith_index_u32(61293u, 12u)], 1114.0), var_0.e.d.b.zy, var_0.e.a)), vec3<u32>(u_input.a.x, 4294967295u, 0u), var_0.e.a.d.zy).x).a.a.x, global2.e.a.a.x), vec4<f32>(957.0, _wgslsmith_f_op_f32(var_0.e.d.a.x - _wgslsmith_f_op_f32(-404.0 - -327.0)), global2.e.d.a.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a.x, 12u)])))));
    global2 = Struct_3(var_0.a, var_0.e.a.b.xx, !(false == any(select(vec4<bool>(var_1.c.c, false, global2.a, global2.a), vec4<bool>(true, var_0.a, true, false), false))), reverseBits(vec4<u32>(~4294967295u << (var_1.a.x % 32u), 1u, ~1u >> (func_2(Struct_4(var_0.e.d.b.zz, Struct_3(false, var_0.d.yy, var_1.b.a, var_0.d, Struct_2(Struct_1(var_1.d.d.a, vec3<u32>(4294967295u, 4294967295u, var_1.b.d.x), var_0.e.c.x, global2.e.a.d, var_0.d.zzw), vec3<f32>(global1[_wgslsmith_index_u32(global2.d.x, 12u)], var_0.e.b.x, var_0.e.b.x), var_0.b, var_0.e.a)), var_0, var_1.b.e, vec4<f32>(1000.0, var_1.e.x, global2.e.d.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)])), Struct_3(true, vec2<u32>(1u, var_0.b.x), false, vec4<u32>(64923u, var_1.a.x, 1u, 19070u), var_1.b.e), var_0.e.a.b, var_1.c.e.d.d.xx).x % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, var_1.b.d.x), reverseBits(vec3<u32>(33957u, 4294967295u, global2.e.d.c))))), Struct_2(var_0.e.d, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-312.0, -295.0, _wgslsmith_f_op_f32(trunc(-1196.0))))), ~vec2<u32>(firstTrailingBit(global2.e.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.d.x, 4294967295u), global2.d.yw)), var_1.d.d));
    let var_2 = select(vec4<i32>(var_1.c.e.d.d.x, ~(-var_0.e.a.d.x), -39260, abs(var_0.e.a.d.x)), _wgslsmith_div_vec4_i32(max(abs(vec4<i32>(2147483647, -1, 17531, 16703)) | ~vec4<i32>(u_input.b, var_1.d.a.d.x, var_0.e.d.d.x, -1), abs(vec4<i32>(var_1.c.e.d.d.x, -161, -26939, var_1.d.d.d.x))), firstTrailingBit(abs(vec4<i32>(40437, u_input.b, var_1.d.d.d.x, var_1.d.d.d.x)) | vec4<i32>(global2.e.d.d.x, var_1.b.e.a.d.x, var_0.e.d.d.x, global2.e.d.d.x))), !(!(!(!vec4<bool>(true, true, var_0.c, var_1.c.c)))));
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        continue;
    }
    var_1 = Struct_4(u_input.a.zz, var_0, func_1(func_3(~(var_0.d.x >> (var_1.c.d.x % 32u))).a.a, var_1.b.e.a.d.x & 2147483647, func_1(_wgslsmith_f_op_vec2_f32(ceil(var_1.e.xz)), -func_3(0u).a.d.x, -global2.e.a.d).e.d.d), func_3(u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1384.0, var_1.e.x, -732.0, _wgslsmith_f_op_f32(select(283.0, _wgslsmith_f_op_f32(select(1385.0, -1047.0, var_1.b.c)), var_1.c.a)))));
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1052.0, -1980.0), _wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 5u)])))) + vec2<f32>(_wgslsmith_f_op_f32(1000.0 - var_0.e.b.x), _wgslsmith_f_op_f32(-400.0 * var_1.b.e.d.a.x)))), -29256, var_1.b.e.d.d).e.a;
    switch (-44414) {
        case 0: {
        }
        case -2147483648: {
            let var_4 = min(var_0.e.a.d.x, 28305);
        }
        case -25283: {
            var_3 = var_0.e.a;
            var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1276.0)), global2.e.d.a.x) * vec2<f32>(_wgslsmith_f_op_f32(-795.0 + global1[_wgslsmith_index_u32(abs(1u), 12u)]), func_3(0u).a.a.x)), firstTrailingBit(u_input.a), ~76893u & max(var_0.e.a.e.x, var_0.e.a.e.x), -vec3<i32>(var_3.d.x, global2.e.a.d.x ^ 20559, var_0.e.d.d.x) >> (global2.e.d.e % vec3<u32>(32u)), ~abs(global2.d.xwx));
            var_3 = func_1(_wgslsmith_div_vec2_f32(var_0.e.b.zz, vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -748.0), var_0.e.d.a.x)), 9385, select(vec3<i32>(global2.e.a.d.x, _wgslsmith_dot_vec3_i32(func_1(global2.e.b.xx, global2.e.a.d.x, vec3<i32>(17387, 28211, 0)).e.d.d, vec3<i32>(-1, 2147483647, -9924) ^ var_2.xww), 2147483647), abs(~(~var_2.wxx)), ~func_3(7066u).d.e.x != var_1.b.e.c.x)).e.a;
            var var_4 = _wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(var_0.d.x), 4584u), firstTrailingBit(4294967295u)), vec2<u32>(~global2.b.x, 39381u << (max(~u_input.a.x, ~4294967295u) % 32u)));
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_5 = select(!(!vec4<bool>(false, !var_0.c, var_0.a, var_0.a & global2.a)), !vec4<bool>(!false, func_6(!vec4<bool>(false, global2.a, false, var_1.b.c), Struct_1(vec2<f32>(var_0.e.b.x, var_3.a.x), global2.d.zzw, u_input.a.x, vec3<i32>(global2.e.a.d.x, var_2.x, var_2.x), vec3<u32>(1u, var_1.d.a.e.x, 28012u)), Struct_4(global2.e.a.e.xy, var_1.c, Struct_3(var_1.c.c, var_3.e.xx, false, vec4<u32>(1u, 4294967295u, 4294967295u, 1u), var_0.e), Struct_2(Struct_1(var_0.e.d.a, vec3<u32>(var_0.b.x, global2.d.x, var_1.d.d.c), 4294967295u, vec3<i32>(11025, var_0.e.a.d.x, var_2.x), vec3<u32>(1u, var_0.d.x, var_3.e.x)), var_1.b.e.b, vec2<u32>(1u, var_3.e.x), Struct_1(vec2<f32>(-1516.0, var_3.a.x), global2.e.d.b, var_0.d.x, vec3<i32>(2147483647, 1, var_0.e.d.d.x), var_0.e.d.e)), vec4<f32>(global1[_wgslsmith_index_u32(var_0.b.x, 12u)], var_0.e.d.a.x, var_3.a.x, var_0.e.a.a.x)), var_1.b.e.a), all(!vec2<bool>(global2.a, true)), !select(var_0.c, true, var_0.c)), any(!(!vec4<bool>(var_1.b.c, var_1.b.c, global2.a, true))));
                var var_6 = vec3<bool>(true, _wgslsmith_div_i32(var_1.c.e.d.d.x, -var_2.x) != firstTrailingBit(firstLeadingBit(max(var_3.d.x, var_0.e.a.d.x))), true);
            }
        }
        case 8809: {
            let var_4 = i32(-1) * -35505;
        }
        default: {
        }
    }
    var_1 = Struct_4(~(~firstTrailingBit(var_1.c.d.yz) ^ (~var_1.a & vec2<u32>(var_0.b.x, 51061u))), Struct_3(true, _wgslsmith_div_vec2_u32(~(~vec2<u32>(var_0.e.c.x, var_3.c)), abs(var_0.b)), true && !func_4(vec4<bool>(true, global2.c, true, true)).x, reverseBits(vec4<u32>(global2.e.a.b.x, u_input.a.x, var_1.d.d.b.x, 4294967295u) & reverseBits(global2.d)), Struct_2(var_0.e.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.e.b))), func_2(Struct_4(var_1.d.c, var_1.c, Struct_3(true, global2.b, false, var_1.c.d, Struct_2(var_1.b.e.d, vec3<f32>(global1[_wgslsmith_index_u32(25324u, 12u)], var_0.e.b.x, 760.0), vec2<u32>(var_1.c.b.x, 1u), var_1.d.d)), global2.e, vec4<f32>(global2.e.b.x, var_1.e.x, -1316.0, var_0.e.b.x)), var_0, var_0.e.a.b, min(var_3.d.zy, vec2<i32>(var_3.d.x, global2.e.d.d.x))).wy, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.e.d.a.x, var_3.a.x) * vec2<f32>(-322.0, var_1.d.d.a.x)), var_3.d.x, select(vec3<i32>(var_3.d.x, 9303, -1), var_0.e.a.d, false)).e.d)), var_1.b, Struct_2(var_0.e.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(728.0, 1675.0, global1[_wgslsmith_index_u32(4294967295u, 12u)]) * _wgslsmith_f_op_vec3_f32(var_0.e.b - vec3<f32>(global1[_wgslsmith_index_u32(19024u, 12u)], global2.e.d.a.x, 1877.0))))), ~vec2<u32>(4294967295u, countOneBits(u_input.a.x)), func_1(vec2<f32>(_wgslsmith_f_op_f32(-741.0 + 168.0), _wgslsmith_f_op_f32(abs(647.0))), var_2.x, firstTrailingBit(-global2.e.d.d)).e.d), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(142.0 * var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.e.b.x, -228.0, var_1.b.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(162.0 - global1[_wgslsmith_index_u32(1u, 12u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~67680u | _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), global2.d.www), var_0.d.x), 12u)])));
}

