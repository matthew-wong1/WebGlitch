// {"0:0":[209,163,229,165,9,146,246,69,29,178,93,229,155,243,38,16]}
// Seed: 1623481333468416247

struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-41172, 106992u);

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: array<bool, 10>;

var<private> LOOP_COUNTERS: array<u32, 27>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: f32) -> vec4<i32> {
    for (var var_0 = 9797; any(!(!(!vec3<bool>(true, arg_1.x, arg_0.a.x)))); var_0 -= 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global1 = array<vec2<u32>, 10>();
    }
    var var_0 = Struct_3(abs(min(_wgslsmith_add_i32(~u_input.c, abs(u_input.b)), -1)), _wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(4294967295u, 4294967295u) ^ u_input.a));
    for (var var_1: i32; var_1 < 57157; var_1 += 1) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        var_0 = Struct_3(abs(u_input.b), select(u_input.a, 8007u, true));
        var var_2 = -137.0;
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            global1 = array<vec2<u32>, 10>();
            let var_3 = vec4<bool>(arg_0.a.x, arg_1.x, any(vec3<bool>(arg_0.b.x, any(select(vec3<bool>(false, arg_1.x, global2[_wgslsmith_index_u32(global0.b, 10u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(47387u, 10u)]), false)), true)), any(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false, false), !(!vec3<bool>(true, arg_0.a.x, false)), select(vec3<bool>(arg_1.x, false, global2[_wgslsmith_index_u32(u_input.a, 10u)]), !vec3<bool>(true, arg_0.b.x, true), vec3<bool>(arg_0.a.x, false, false)))));
            let var_4 = Struct_4(arg_2.x, Struct_3(abs(u_input.d ^ _wgslsmith_mult_i32(-32409, 1997)), _wgslsmith_mult_u32(u_input.a, global0.b) & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(62409u, global0.b, 71876u), vec3<u32>(global0.b, u_input.a, 1u)), min(0u, 21253u))), vec4<u32>(~4294967295u, u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.b, 0u, 1u), vec4<u32>(global0.b, 12478u, 0u, 1u)), 43668u), abs(abs(var_0.b))) << (((vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u) & vec4<u32>(var_0.b, u_input.a, 15239u, 1u)) | (abs(vec4<u32>(3435u, u_input.a, 0u, u_input.a)) ^ ~vec4<u32>(u_input.a, var_0.b, 50405u, global0.b))) % vec4<u32>(32u)), arg_1.x);
            var var_5 = Struct_2(true, _wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(0, 1), arg_2.wx)), ~_wgslsmith_clamp_vec2_i32(max(arg_2.xz, vec2<i32>(global0.a, 27486)), arg_2.xz, abs(vec2<i32>(-1, global0.a))), arg_2.yx), var_3);
            var var_6 = arg_0;
        }
    }
    for (var var_1 = -8590; ; var_1 += 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    if (global2[_wgslsmith_index_u32(u_input.a, 10u)]) {
        let var_1 = _wgslsmith_add_i32(u_input.b, global0.a);
    }
    return _wgslsmith_sub_vec4_i32(arg_2, arg_2);
}

fn func_5() -> vec4<i32> {
    global1 = array<vec2<u32>, 10>();
    switch (reverseBits(4072)) {
        case -2147483648: {
            let var_0 = false;
            global1 = array<vec2<u32>, 10>();
            switch (global0.a) {
                case 2147483647: {
                }
                case -2147483648: {
                    global2 = array<bool, 10>();
                    let var_1 = -(~func_6(Struct_1(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], var_0), !vec2<bool>(false, true)), select(!vec2<bool>(true, var_0), vec2<bool>(var_0, global2[_wgslsmith_index_u32(global0.b, 10u)]), vec2<bool>(false, false)), vec4<i32>(u_input.c, -33707, global0.a, 0) >> ((vec4<u32>(4294967295u, u_input.a, 12775u, 35837u) >> (vec4<u32>(u_input.a, global0.b, 1u, global0.b) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-690.0)));
                }
                case 1: {
                    global1 = array<vec2<u32>, 10>();
                    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000.0, 1098.0)))))));
                }
                default: {
                    let var_1 = _wgslsmith_div_f32(-966.0, -2048.0);
                    var var_2 = Struct_1(vec2<bool>(var_1 >= var_1, all(select(vec4<bool>(global2[_wgslsmith_index_u32(135u, 10u)], false, true, false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(39533u, 10u)]), select(false, true, true)))), vec2<bool>(true, !global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 10u)]));
                }
            }
        }
        case 55636: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_0 = abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(~1, u_input.c), func_6(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(true, false)), !vec2<bool>(false, false), vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.c) << (vec4<u32>(1u, global0.b, u_input.a, 33046u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(-1871.0))).zz, -firstTrailingBit(vec2<i32>(-2147483648, -2147483648))));
                return -abs(max(~select(vec4<i32>(2147483647, global0.a, 16541, var_0.x), vec4<i32>(u_input.b, u_input.c, -15691, 1), global2[_wgslsmith_index_u32(global0.b, 10u)]), (vec4<i32>(-22975, global0.a, 2147483647, global0.a) ^ vec4<i32>(-2147483648, u_input.d, u_input.c, global0.a)) >> (select(vec4<u32>(4294967295u, global0.b, 27026u, 0u), vec4<u32>(133540u, u_input.a, 0u, u_input.a), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(u_input.a, 10u)])) % vec4<u32>(32u))));
            }
            var var_0 = ~_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-1) * -vec3<i32>(global0.a, 2147483647, 10767)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(51783, u_input.d, u_input.c), select(vec3<i32>(2147483647, 0, u_input.c), vec3<i32>(u_input.c, u_input.d, global0.a), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 10u)], true))), func_6(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(1u, 10u)], false), vec2<bool>(true, false)), vec2<bool>(false, global2[_wgslsmith_index_u32(global0.b, 10u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, global0.a, 0, global0.a), vec4<i32>(global0.a, -25538, global0.a, global0.a)), _wgslsmith_f_op_f32(-790.0)).yzy));
            let var_1 = 1u;
        }
        default: {
            if (any(select(vec2<bool>(global2[_wgslsmith_index_u32(13194u, 10u)], true), vec2<bool>(!global2[_wgslsmith_index_u32(abs(24038u), 10u)], true), all(select(!vec2<bool>(global2[_wgslsmith_index_u32(47820u, 10u)], global2[_wgslsmith_index_u32(36890u, 10u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec2<bool>(false, true), vec2<bool>(true, true)), true))))) {
                let var_0 = !vec3<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(3893u, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(21161u, 10u)]))), true, !false);
            }
        }
    }
    var var_0 = vec2<f32>(-623.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-606.0)) - _wgslsmith_f_op_f32(f32(-1.0) * -289.0)) - 581.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-353.0), _wgslsmith_f_op_f32(trunc(-927.0))))))));
    global2 = array<bool, 10>();
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-694.0, var_0.x)), vec2<f32>(-321.0, var_0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-811.0), _wgslsmith_f_op_f32(f32(-1.0) * -1167.0))))));
    return ~vec4<i32>(firstTrailingBit(~func_6(Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 10u)])), vec2<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], true), vec4<i32>(-1, u_input.b, 1, global0.a), 691.0).x), func_6(Struct_1(vec2<bool>(false, true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(5759u, 10u)], false), !vec2<bool>(false, true), global2[_wgslsmith_index_u32(0u, 10u)] && false), abs(~vec4<i32>(global0.a, global0.a, global0.a, 1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + -559.0)).x, abs(_wgslsmith_div_i32(global0.a, 43643)) << (31878u % 32u), u_input.b);
}

fn func_4() -> bool {
    switch (firstLeadingBit(~31426)) {
        case 1: {
        }
        case 0: {
            var var_0 = abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -49449, 58814, global0.a) >> ((vec4<u32>(u_input.a, u_input.a, global0.b, 44848u) ^ vec4<u32>(13442u, 1u, 29542u, 1u)) % vec4<u32>(32u)), func_5()));
            let var_1 = vec4<bool>(!(!(global2[_wgslsmith_index_u32(global0.b, 10u)] && !true)), !(!select(true, global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)])) | (firstLeadingBit(u_input.a) > firstLeadingBit(global0.b << (0u % 32u))), !any(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(4569u, 10u)]))), !(!(!(global2[_wgslsmith_index_u32(0u, 10u)] && false))));
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1195.0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), -1128.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-189.0) - _wgslsmith_f_op_f32(f32(-1.0) * -587.0))), 240.0)));
                let var_3 = Struct_1(vec2<bool>(!(!var_1.x), false), var_1.xw);
                let var_4 = global0.a;
                var var_5 = Struct_4(-1, Struct_3(-2147483648, 47378u), ~vec4<u32>(u_input.a, _wgslsmith_clamp_u32(global0.b, 35173u, ~4294967295u), global0.b, firstTrailingBit(global0.b)), var_3.b.x);
                var var_6 = _wgslsmith_f_op_vec2_f32(-var_2.yx);
            }
        }
        case -2147483648: {
            for (var var_0 = -global0.a; ; ) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                global1 = array<vec2<u32>, 10>();
            }
            var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(634.0, -1858.0, -914.0, 704.0)) * _wgslsmith_div_vec4_f32(vec4<f32>(145.0, 417.0, 1159.0, -815.0), vec4<f32>(-510.0, 1903.0, 465.0, -291.0))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(776.0, 412.0, 995.0, 259.0))), select(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(3939u, 10u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(13728u, 10u)], false, global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)]), global2[_wgslsmith_index_u32(1u, 10u)]), any(vec3<bool>(global2[_wgslsmith_index_u32(55621u, 10u)], false, global2[_wgslsmith_index_u32(4294967295u, 10u)]))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(125.0, -1000.0, -917.0, 1000.0))))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -157.0)), _wgslsmith_f_op_f32(trunc(-1809.0)), 858.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(210.0)) - _wgslsmith_f_op_f32(exp2(533.0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))))));
            var var_1 = Struct_2(false, -abs(vec2<i32>(2147483647, abs(global0.a))), vec4<bool>(all(select(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)]), global2[_wgslsmith_index_u32(u_input.a, 10u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false, global2[_wgslsmith_index_u32(109142u, 10u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(19354u, 10u)])), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.b, global0.b), 10u)])), any(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 10u)])), any(!vec4<bool>(true, global2[_wgslsmith_index_u32(18139u, 10u)], false, true)), all(vec2<bool>(true, global2[_wgslsmith_index_u32(87824u, 10u)] && global2[_wgslsmith_index_u32(4294967295u, 10u)]))));
            var var_2 = vec3<bool>(any(var_1.c.wyw), !(any(select(var_1.c.wy, vec2<bool>(global2[_wgslsmith_index_u32(6682u, 10u)], true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], false))) && (false || any(vec2<bool>(var_1.c.x, false)))), !false);
            let var_3 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b ^ select(u_input.a, 20374u, var_2.x), global0.b, _wgslsmith_mod_u32(reverseBits(u_input.a), u_input.a)), ~(vec3<u32>(u_input.a, 4294967295u, 0u) >> (vec3<u32>(3020u, global0.b, u_input.a) % vec3<u32>(32u))) & (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 68774u, u_input.a)) ^ select(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, global0.b), true))), 10u)], select(_wgslsmith_mod_vec2_i32(var_1.b, min(select(vec2<i32>(var_1.b.x, 55952), var_1.b, vec2<bool>(true, var_2.x)), countOneBits(vec2<i32>(-8461, var_1.b.x)))), -abs(var_1.b) >> (select(vec2<u32>(global0.b, 49373u), select(global1[_wgslsmith_index_u32(u_input.a, 10u)], vec2<u32>(global0.b, 56888u), global2[_wgslsmith_index_u32(52250u, 10u)]), select(var_2.xz, var_1.c.xx, global2[_wgslsmith_index_u32(1u, 10u)])) % vec2<u32>(32u)), 20188u > global0.b), vec4<bool>(!(global2[_wgslsmith_index_u32(u_input.a, 10u)] || !var_2.x), true, !(_wgslsmith_clamp_i32(2147483647, 32215, 0) >= global0.a), any(!(!var_1.c))));
        }
        default: {
            switch (-min(func_6(Struct_1(vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], false), _wgslsmith_mod_vec4_i32(vec4<i32>(30696, -1, 2147483647, u_input.d), vec4<i32>(35779, global0.a, u_input.b, -27326)), -418.0).x, -global0.a) & (u_input.d | u_input.b)) {
                case -4850: {
                    let var_0 = vec4<u32>(~firstLeadingBit(27661u), _wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(global0.b, u_input.a, 1u, 1u)), select(~vec4<u32>(u_input.a, 35494u, 1u, 589u), vec4<u32>(20059u, 37404u, u_input.a, global0.b) ^ vec4<u32>(1u, global0.b, u_input.a, 4294967295u), !vec4<bool>(global2[_wgslsmith_index_u32(17666u, 10u)], true, false, global2[_wgslsmith_index_u32(u_input.a, 10u)]))), vec4<u32>(~u_input.a, ~u_input.a, ~u_input.a, 0u) | ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.b, 0u, global0.b, 4294967295u), vec4<u32>(9229u, 51226u, 22538u, global0.b))), 4294967295u, _wgslsmith_sub_u32(global0.b, ~abs(31618u ^ 4294967295u)));
                    global2 = array<bool, 10>();
                }
                case -2147483648: {
                    let var_0 = vec4<u32>(global0.b, 18982u, _wgslsmith_clamp_u32(~select(~u_input.a, u_input.a, !false), ~u_input.a, abs(global0.b >> (select(74336u, 110470u, global2[_wgslsmith_index_u32(global0.b, 10u)]) % 32u))), ~firstTrailingBit(firstLeadingBit(~u_input.a)));
                    let var_1 = Struct_4(global0.a, Struct_3(countOneBits(-u_input.b), 18203u), ~var_0, false);
                    global1 = array<vec2<u32>, 10>();
                }
                case -26466: {
                    let var_0 = -vec4<i32>(countOneBits(0), -select(2170 << (global0.b % 32u), u_input.d, !global2[_wgslsmith_index_u32(3307u, 10u)]), -u_input.d, 13993);
                    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(936.0)) + _wgslsmith_f_op_f32(abs(-1000.0))), _wgslsmith_f_op_f32(select(-172.0, _wgslsmith_f_op_f32(f32(-1.0) * -411.0), !global2[_wgslsmith_index_u32(global0.b, 10u)])))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(994.0, 889.0)))))))));
                    global2 = array<bool, 10>();
                    global1 = array<vec2<u32>, 10>();
                    return any(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, global0.b, u_input.a, 27002u), vec4<u32>(0u, u_input.a, 20637u, 1u)), 10u)], all(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 10u)], true)), global2[_wgslsmith_index_u32(10805u, 10u)]));
                }
                case -42506: {
                }
                default: {
                    let var_0 = Struct_4(_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647, ~u_input.c), i32(-1) * -(-19323 | global0.a)), Struct_3(_wgslsmith_sub_i32(593, u_input.c), u_input.a ^ ~(~global0.b)), ~firstTrailingBit(select(~vec4<u32>(23788u, u_input.a, global0.b, u_input.a), vec4<u32>(26359u, 1u, u_input.a, u_input.a), false)), abs(~global0.b << (12838u % 32u)) < (_wgslsmith_clamp_u32(1u, 19483u, _wgslsmith_div_u32(u_input.a, u_input.a)) >> (~_wgslsmith_add_u32(4294967295u, global0.b) % 32u)));
                }
            }
            global0 = Struct_3(reverseBits(u_input.b), ~(~_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, u_input.a), abs(4294967295u))));
            switch (_wgslsmith_dot_vec4_i32(func_6(Struct_1(!vec2<bool>(global2[_wgslsmith_index_u32(14303u, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)]), vec2<bool>(true, true && true)), select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(6657u, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(40014u, 10u)]), global2[_wgslsmith_index_u32(global0.b, 10u)]), vec2<bool>(false, true), !vec2<bool>(global2[_wgslsmith_index_u32(77031u, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)])), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, global0.b), 10u)], any(vec4<bool>(global2[_wgslsmith_index_u32(56752u, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], false, false))), select(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), !vec2<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], false), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], true)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, 0, u_input.b), vec3<i32>(-51733, u_input.d, 1)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, -4635), vec2<i32>(19963, global0.a)), 25960, -1 & u_input.d, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(0, u_input.d), vec2<i32>(u_input.d, -1)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2315.0), _wgslsmith_f_op_f32(-293.0)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(772.0 * -170.0), _wgslsmith_f_op_f32(f32(-1.0) * -567.0)))), -reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.c, global0.a, -80460), vec4<i32>(2147483647, global0.a, global0.a, 2147483647), vec4<i32>(55163, -19304, global0.a, 1)) << (~vec4<u32>(28068u, 5759u, global0.b, global0.b) % vec4<u32>(32u))))) {
                case -16024: {
                    global1 = array<vec2<u32>, 10>();
                }
                case 1: {
                    let var_0 = !(!select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)]), vec4<bool>(global2[_wgslsmith_index_u32(53657u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], false, false), global2[_wgslsmith_index_u32(u_input.a, 10u)]), select(select(vec4<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(44749u, 10u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 10u)], true, false)), select(vec4<bool>(false, global2[_wgslsmith_index_u32(6562u, 10u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], false, true, false), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.a, 10u)])), select(vec4<bool>(true, true, false, false), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), global2[_wgslsmith_index_u32(u_input.a, 10u)])), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(10050u, 10u)])));
                    var var_1 = Struct_4(max(~_wgslsmith_mult_i32(~u_input.d, func_5().x), _wgslsmith_div_i32(u_input.d, func_6(Struct_1(vec2<bool>(var_0.x, var_0.x), vec2<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)])), var_0.zy, vec4<i32>(global0.a, u_input.b, 1, 2147483647), 263.0).x) >> (_wgslsmith_add_u32(~14219u, ~global0.b) % 32u)), Struct_3(~firstTrailingBit(firstTrailingBit(-5659)), 4294967295u), firstLeadingBit(vec4<u32>(~_wgslsmith_sub_u32(0u, 56585u), ~1u, u_input.a, 44259u)), true);
                    var_1 = Struct_4(var_1.b.a, var_1.b, vec4<u32>(~global0.b, 104049u, ~46843u ^ var_1.b.b, var_1.c.x), !true);
                }
                default: {
                    let var_0 = Struct_4(-min(global0.a, -16572), Struct_3(-(~firstLeadingBit(u_input.b)), max(select(~global0.b, _wgslsmith_div_u32(global0.b, global0.b), !true), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(8211u, 10u)], global1[_wgslsmith_index_u32(global0.b, 10u)], vec2<u32>(49799u, global0.b)), ~vec2<u32>(global0.b, u_input.a)))), vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(u_input.a, 10u)] ^ _wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(global0.b, 10u)], global1[_wgslsmith_index_u32(72947u, 10u)], vec2<u32>(32313u, 0u)), vec2<u32>(26635u >> (1u % 32u), _wgslsmith_sub_u32(u_input.a, global0.b))), ~_wgslsmith_mult_u32(~u_input.a, global0.b), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 34242u, 15322u, global0.b), vec4<u32>(u_input.a, 1u, 28055u, 1u) >> (vec4<u32>(0u, 56852u, 4294967295u, global0.b) % vec4<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(6418u, 10u)]), 45535u))), any(select(vec2<bool>(true, select(false, global2[_wgslsmith_index_u32(11776u, 10u)], global2[_wgslsmith_index_u32(29368u, 10u)])), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false), !global2[_wgslsmith_index_u32(14227u, 10u)])));
                    let var_1 = var_0.d || !(!(!(!var_0.d)));
                    let var_2 = Struct_4(~(~(-(var_0.b.a & u_input.c))), Struct_3(-u_input.d, var_0.c.x), ~var_0.c, var_0.d);
                    let var_3 = var_2.c.xyx;
                }
            }
            let var_0 = -firstLeadingBit(_wgslsmith_div_i32(func_5().x, global0.a));
            let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2539.0)) * -347.0);
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        global1 = array<vec2<u32>, 10>();
        global1 = array<vec2<u32>, 10>();
        let var_0 = u_input.b;
    }
    var var_0 = Struct_3(_wgslsmith_clamp_i32(u_input.b ^ _wgslsmith_add_i32(u_input.c, 9274), ~23109, firstTrailingBit(global0.a)), abs(20901u));
    var_0 = Struct_3(func_6(Struct_1(!select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.b, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)]), vec2<bool>(false, false), global2[_wgslsmith_index_u32(0u, 10u)]), !vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.b, 10u)])), select(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 10u)])), vec2<bool>(-1000.0 == 648.0, true), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(global0.b, 10u)]))), ~vec4<i32>(u_input.b << (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -65596), vec2<i32>(u_input.c, var_0.a)), ~global0.a, -u_input.b), -547.0).x, ~(~_wgslsmith_sub_u32(~59761u, _wgslsmith_mod_u32(var_0.b, 2854u))));
    return true;
}

fn func_7(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: u32) -> Struct_4 {
    switch (u_input.c) {
        case -25796: {
            for (var var_0: i32; any(select(!select(!arg_2, select(vec4<bool>(true, arg_0, false, global2[_wgslsmith_index_u32(4294967295u, 10u)]), arg_2, vec4<bool>(true, arg_2.x, arg_2.x, global2[_wgslsmith_index_u32(0u, 10u)])), false), arg_2, select(arg_2, !arg_2, !arg_2.x == (false & global2[_wgslsmith_index_u32(69044u, 10u)])))); global0 = Struct_3(-9357, 0u)) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_1 = false;
                return Struct_4(~(~_wgslsmith_mult_i32(2147483647, global0.a)), arg_1, select(~vec4<u32>(19389u, _wgslsmith_mult_u32(0u, u_input.a), u_input.a, ~arg_3), vec4<u32>(select(~0u, 4294967295u, !var_1), min(arg_1.b, ~arg_3), 1u, reverseBits(~arg_3)), var_1), false);
            }
        }
        case 0: {
            var var_0 = vec2<i32>(max(2147483647, -(i32(-1) * -46464)), ~38268);
            var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1777.0, -1016.0, 921.0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000.0, -1528.0, -1000.0) - vec3<f32>(715.0, -1000.0, 1231.0))), select(!vec3<bool>(arg_2.x, global2[_wgslsmith_index_u32(48266u, 10u)], arg_2.x), vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(arg_1.b, 10u)] & false)))));
            let var_2 = true;
            var var_3 = arg_1.b;
        }
        default: {
            global2 = array<bool, 10>();
            global2 = array<bool, 10>();
            let var_0 = -1000.0;
        }
    }
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-124.0, 1000.0))) * 168.0));
    var var_1 = vec2<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_mod_u32(select(arg_3, arg_1.b, false), _wgslsmith_add_u32(75453u, 65995u))), 10u)], !(!arg_0) & global2[_wgslsmith_index_u32(global0.b, 10u)]);
    global0 = arg_1;
    let var_2 = ~23349u;
    return Struct_4(2147483647, arg_1, vec4<u32>(_wgslsmith_mod_u32(arg_3, ~(0u >> (var_2 % 32u))), 62331u, arg_1.b, select(firstLeadingBit(~91732u), ~1u, global2[_wgslsmith_index_u32(select(var_2, var_2, arg_0 & arg_0), 10u)])), !(!false));
}

fn func_8(arg_0: Struct_4) -> Struct_3 {
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        continue;
    }
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(arg_0.c, ~arg_0.c | abs(~arg_0.c)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(firstLeadingBit(arg_0.c)), vec4<u32>(24438u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), global1[_wgslsmith_index_u32(17962u, 10u)]), _wgslsmith_mult_u32(17133u, global0.b), _wgslsmith_add_u32(0u, u_input.a))), ~vec4<u32>(global0.b, ~7709u, 71842u, ~global0.b)));
    if (select(arg_0.d, any(vec4<bool>(!arg_0.d, !false, false, arg_0.d)) | arg_0.d, !select(any(!vec3<bool>(arg_0.d, arg_0.d, true)), u_input.d <= arg_0.a, true))) {
        global0 = arg_0.b;
    }
    for (; arg_0.d; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        for (; arg_0.d; ) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            let var_1 = arg_0.b.a;
        }
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            global2 = array<bool, 10>();
            var var_1 = !vec4<bool>(any(!select(vec2<bool>(arg_0.d, false), vec2<bool>(global2[_wgslsmith_index_u32(4470u, 10u)], false), true)), global2[_wgslsmith_index_u32(0u, 10u)] && false, !(!true), arg_0.d);
            global2 = array<bool, 10>();
            var var_2 = 195.0;
        }
        global0 = arg_0.b;
        switch ((countOneBits(func_6(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(79317u, 10u)], arg_0.d), vec2<bool>(global2[_wgslsmith_index_u32(arg_0.c.x, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)])), vec2<bool>(false, true), -vec4<i32>(u_input.c, u_input.b, -10150, arg_0.a), _wgslsmith_f_op_f32(f32(-1.0) * -1037.0)).x) & -arg_0.a) << (global0.b % 32u)) {
            default: {
                break;
            }
        }
        switch (global0.a) {
            default: {
            }
        }
    }
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-936.0), _wgslsmith_f_op_f32(-190.0))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -613.0) - _wgslsmith_f_op_f32(-1462.0 + 304.0))), _wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a, u_input.b), abs(vec2<i32>(global0.a, arg_0.b.a))), ~vec2<i32>(~arg_0.a, u_input.d)), !vec4<bool>(any(select(vec2<bool>(arg_0.d, true), vec2<bool>(false, arg_0.d), global2[_wgslsmith_index_u32(1u, 10u)])), abs(-17531) == _wgslsmith_sub_i32(u_input.b, -33601), arg_0.d != !global2[_wgslsmith_index_u32(u_input.a, 10u)], !all(vec2<bool>(false, arg_0.d))));
    return arg_0.b;
}

fn func_3() -> vec2<bool> {
    var var_0 = vec3<bool>(select(global2[_wgslsmith_index_u32(~abs(4294967295u), 10u)], !(_wgslsmith_mult_i32(u_input.c, u_input.c) != ~global0.a), any(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0.b, 10u)], false))), all(vec4<bool>(false, 25668u > countOneBits(4294967295u), all(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(4294967295u, 10u)])), !(!true))), all(select(vec3<bool>(!true, false, global2[_wgslsmith_index_u32(global0.b, 10u)]), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(73663u, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], true), global2[_wgslsmith_index_u32(101657u, 10u)]), true)));
    global1 = array<vec2<u32>, 10>();
    global0 = func_8(func_7(func_4(), Struct_3(countOneBits(-u_input.b), u_input.a), vec4<bool>(all(!vec2<bool>(false, false)), ~global0.a > -u_input.c, global2[_wgslsmith_index_u32(u_input.a, 10u)], -u_input.b >= reverseBits(-43309)), 0u));
    if (true) {
        var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(-1000.0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000.0, 545.0)) - _wgslsmith_f_op_f32(max(-162.0, -1453.0)))))));
        let var_2 = select(select(!vec4<bool>(true, -328.0 == -494.0, global2[_wgslsmith_index_u32(global0.b, 10u)] && false, global0.a >= global0.a), !vec4<bool>(!var_0.x, var_0.x, func_7(true, Struct_3(-2147483648, global0.b), vec4<bool>(global2[_wgslsmith_index_u32(9916u, 10u)], var_0.x, false, true), u_input.a).d, all(vec4<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], true, global2[_wgslsmith_index_u32(4294967295u, 10u)], var_0.x))), select(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false, var_0.x, true), vec4<bool>(true, var_0.x, false, false), true), vec4<bool>(true, !true, false, true | false), var_0.x)), vec4<bool>(!true, !(!global2[_wgslsmith_index_u32(u_input.a, 10u)]), global2[_wgslsmith_index_u32(9425u, 10u)], -(u_input.c | global0.a) > -32001), false);
        for (; ; ) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        }
        var_0 = vec3<bool>(false, false, var_0.x);
    }
    var var_1 = Struct_1(vec2<bool>(true, var_0.x), !select(!(!var_0.zy), vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false, true, false)), true), !false | !true));
    return select(select(!select(!var_0.yz, var_0.zy, !false), vec2<bool>(func_7(!true, func_8(Struct_4(32146, Struct_3(u_input.d, global0.b), vec4<u32>(0u, u_input.a, 1u, global0.b), false)), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(global0.b, 10u)]), vec4<bool>(false, var_0.x, false, false)), u_input.a).d, !global2[_wgslsmith_index_u32(16574u, 10u)]), all(!select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, var_0.x), global2[_wgslsmith_index_u32(1u, 10u)]))), var_1.b, select(select(vec2<bool>(!var_1.a.x, all(vec3<bool>(true, var_0.x, true))), vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], true, false)), true), var_1.a.x), select(var_0.xz, var_1.a, select(vec2<bool>(var_0.x, global2[_wgslsmith_index_u32(76629u, 10u)]), vec2<bool>(var_1.b.x, false), select(vec2<bool>(false, var_1.a.x), vec2<bool>(false, var_1.a.x), true))), var_0.xy));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_1(!vec2<bool>(any(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(53376u, 10u)])), select(select(false, true, false), any(vec3<bool>(global2[_wgslsmith_index_u32(arg_2, 10u)], global2[_wgslsmith_index_u32(arg_3, 10u)], global2[_wgslsmith_index_u32(0u, 10u)])), 12615u == global0.b)), func_3());
    for (var var_1 = -7675; var_1 >= -2147483648; var_1 += 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        var var_2 = vec4<u32>(~arg_1, select(arg_2, u_input.a >> (4294967295u % 32u), !(!false)), ~select(~u_input.a, ~1u, 75386u <= firstLeadingBit(0u)), countOneBits(68657u));
    }
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1, ~(~u_input.c), -u_input.b), vec3<i32>(global0.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -4658, 2147483647), vec3<i32>(global0.a, u_input.c, u_input.c)), 0)), vec3<i32>(_wgslsmith_add_i32(global0.a, -3914), -65323 ^ -2147483648, (-33441 | countOneBits(0)) | (-4659 << (4294967295u % 32u))));
    var var_2 = Struct_2(~72290u != _wgslsmith_mult_u32(u_input.a, abs(3006u ^ global0.b)), min(select(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.b, global0.a)), vec2<i32>(1, u_input.d)), -vec2<i32>(-54845, global0.a) ^ vec2<i32>(-73279, -25643), select(var_0.b, !vec2<bool>(var_0.b.x, var_0.b.x), select(var_0.b, var_0.b, var_0.a))), vec2<i32>(-17720 << (32902u % 32u), firstLeadingBit(u_input.b)) & select(vec2<i32>(u_input.b, -2831), func_6(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(arg_2, 10u)], var_0.a.x), var_0.b), var_0.b, vec4<i32>(global0.a, u_input.b, -16199, 63525), arg_0.x).xx, func_3())), vec4<bool>(!false, true, all(var_0.a), true));
    if (var_0.b.x) {
        for (var var_3 = -28953; ; var_3 -= 1) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            let var_4 = Struct_3(1665 << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(arg_1, 10u)]) | ~global1[_wgslsmith_index_u32(u_input.a, 10u)], vec2<u32>(_wgslsmith_mult_u32(63929u, arg_2), ~1u)) % 32u), 27409u);
            let var_5 = select(!vec2<bool>(!global2[_wgslsmith_index_u32(8558u, 10u)], true), var_2.c.ww, true & true);
            let var_6 = func_7(!func_7(true, var_4, var_2.c, ~func_8(Struct_4(var_2.b.x, Struct_3(u_input.b, arg_3), vec4<u32>(arg_1, 33591u, arg_3, 39119u), true)).b).d, func_7(abs(select(-1, var_2.b.x, global2[_wgslsmith_index_u32(20777u, 10u)])) <= (963 ^ func_8(Struct_4(u_input.d, Struct_3(global0.a, 4294967295u), vec4<u32>(4329u, arg_2, 4990u, 20015u), true)).a), var_4, vec4<bool>(global2[_wgslsmith_index_u32(4531u, 10u)], !(!var_2.a), true, any(!var_2.c.xyz)), 12218u >> (((1907u | var_4.b) | firstLeadingBit(arg_1)) % 32u)).b, !var_2.c, min(firstTrailingBit(~29846u), arg_3));
            let var_7 = ~(var_6.c & ~var_6.c);
            var_2 = Struct_2(!func_7(_wgslsmith_f_op_f32(min(-1000.0, arg_0.x)) <= _wgslsmith_div_f32(-188.0, 142.0), Struct_3(global0.a, 17081u), select(vec4<bool>(true, var_2.c.x, true, false), vec4<bool>(true, var_6.d, global2[_wgslsmith_index_u32(var_7.x, 10u)], false), any(var_0.b)), 18781u).d, max(~vec2<i32>(-2147483648 << (var_7.x % 32u), ~u_input.d), vec2<i32>(~func_7(false, Struct_3(-2147483648, 1u), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 10u)], false, false), 35034u).b.a, 52107)), !vec4<bool>(!false, true, !(var_0.a.x & true), !(-837.0 > -1392.0)));
        }
        for (var var_3 = -91105; func_3().x; var_0 = Struct_1(select(!var_0.b, func_3(), false), !vec2<bool>(var_2.a, any(!var_2.c.yww)))) {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            var_3 = firstLeadingBit(32608 | -15595);
        }
    }
    return Struct_2(var_0.b.x, _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(~(-12898), firstLeadingBit(-16111))), firstTrailingBit(-(~vec2<i32>(2147483647, 2147483647)))), var_2.c);
}

fn func_9(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        global2 = array<bool, 10>();
    }
    global0 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1, -reverseBits(u_input.d)), firstTrailingBit(u_input.c)), 0u);
    if (arg_1.a) {
        global0 = func_7(func_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1207.0)), _wgslsmith_f_op_f32(-947.0 - arg_0.x), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_div_f32(-680.0, -835.0)))), global0.b >> (~76860u % 32u), (~0u << (65985u % 32u)) | ((global0.b << (u_input.a % 32u)) << (~45232u % 32u)), abs(0u)).c.x, func_8(Struct_4(-_wgslsmith_dot_vec4_i32(vec4<i32>(1, global0.a, arg_1.b.x, -14178), vec4<i32>(global0.a, u_input.d, u_input.d, u_input.c)), Struct_3(u_input.d, 10112u), select(firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), func_7(true, Struct_3(30616, 34901u), vec4<bool>(false, arg_1.a, true, true), 0u).c, 1u > u_input.a), func_3().x)), !(!vec4<bool>(func_3().x, false, global2[_wgslsmith_index_u32(4294967295u ^ global0.b, 10u)], !arg_1.a)), abs(~_wgslsmith_mod_u32(global0.b, u_input.a & global0.b))).b;
        loop {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            global1 = array<vec2<u32>, 10>();
            global0 = func_8(Struct_4(global0.a, func_8(Struct_4(-31639, func_8(Struct_4(-2147483648, Struct_3(u_input.b, global0.b), vec4<u32>(global0.b, global0.b, 13561u, u_input.a), false)), vec4<u32>(33827u, 53845u, 0u, global0.b) & vec4<u32>(121793u, 21975u, 41316u, u_input.a), all(arg_1.c))), vec4<u32>(0u, _wgslsmith_mod_u32(24069u << (global0.b % 32u), global0.b << (global0.b % 32u)), 0u ^ _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a), !(-443.0 <= _wgslsmith_div_f32(arg_0.x, arg_0.x))));
            break;
        }
        let var_0 = abs(-min(~vec4<i32>(global0.a, -13270, arg_1.b.x, 1), vec4<i32>(-1 << (1u % 32u), -21959, i32(-1) * -1, arg_1.b.x)));
        let var_1 = func_2(vec3<f32>(-1057.0, 421.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1167.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065.0 + arg_0.x)), arg_1.a))), 4294967295u, global0.b, u_input.a);
    }
    for (var var_0 = 2147483647; ; global1 = array<vec2<u32>, 10>()) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        global0 = Struct_3(5822, ~global0.b);
        var var_1 = 1493.0;
    }
    global1 = array<vec2<u32>, 10>();
    return 1302.0;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-2061.0)))) * _wgslsmith_f_op_f32(-1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_9(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(696.0, 1613.0))), func_2(vec3<f32>(1000.0, 497.0, -1275.0), 2397u, 4294967295u, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(vec4<bool>(u_input.d == u_input.d, global2[_wgslsmith_index_u32(select(30531u, global0.b, false), 10u)], false, all(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 10u)]))), !select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], false), vec4<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], true, global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(13082u, 10u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(60240u, 10u)], true)), ~global0.b > u_input.a));
    for (var var_1 = ~(-(~u_input.d) ^ 8699) & -u_input.c; global2[_wgslsmith_index_u32(1u, 10u)]; ) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        global2 = array<bool, 10>();
        if (global2[_wgslsmith_index_u32(u_input.a, 10u)]) {
            let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-510.0, -254.0, 820.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1068.0, 2358.0, 699.0)), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], true), vec3<bool>(false, true, global2[_wgslsmith_index_u32(global0.b, 10u)]), global2[_wgslsmith_index_u32(global0.b, 10u)])))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<u32>(16195u, 1u, global0.b, u_input.a), Struct_4(2147483647, Struct_3(0, 1u), vec4<u32>(u_input.a, 24465u, 1u, global0.b), global2[_wgslsmith_index_u32(43530u, 10u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 10u)]), -36849)), _wgslsmith_f_op_f32(ceil(-1087.0)), _wgslsmith_f_op_f32(-377.0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000.0, 655.0, 527.0) - vec3<f32>(-613.0, 528.0, -149.0)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-3404.0, -1339.0, 1847.0), vec3<f32>(1175.0, -993.0, -584.0), global2[_wgslsmith_index_u32(global0.b, 10u)]))))));
            global1 = array<vec2<u32>, 10>();
            let var_3 = (_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.b, 0u), 10u)], ~global1[_wgslsmith_index_u32(61335u, 10u)] << (~global1[_wgslsmith_index_u32(4294967295u, 10u)] % vec2<u32>(32u))) & (global1[_wgslsmith_index_u32(~u_input.a, 10u)] >> (~vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))) & ~(global1[_wgslsmith_index_u32(countOneBits(u_input.a), 10u)] >> (_wgslsmith_clamp_vec2_u32(~global1[_wgslsmith_index_u32(global0.b, 10u)], vec2<u32>(1u, u_input.a), global1[_wgslsmith_index_u32(global0.b, 10u)]) % vec2<u32>(32u)));
            let var_4 = ~1u;
        }
        var_1 = u_input.b;
        for (var var_2 = 18762; var_2 != -43701; var_2 -= 1) {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            var_2 = global0.a;
        }
    }
    switch (-_wgslsmith_clamp_i32(u_input.c ^ 79416, 0, global0.a)) {
        case -1: {
            global0 = Struct_3(-23101 >> (1u % 32u), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(global0.b, global0.b)), firstTrailingBit(max(25438u, global0.b))) | global0.b);
            var var_1 = Struct_2(true, vec2<i32>(select(-92610, 38925, false), _wgslsmith_mod_i32(9414, -(~35533))), !(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]))));
        }
        case 2147483647: {
            if (!false) {
            }
            for (var var_1 = -1; ; var_1 += 1) {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                break;
            }
            var_0 = !func_7(!(!(!global2[_wgslsmith_index_u32(60834u, 10u)])), func_7(global2[_wgslsmith_index_u32(abs(56079u), 10u)], func_7(global2[_wgslsmith_index_u32(global0.b, 10u)], Struct_3(u_input.d, u_input.a), select(vec4<bool>(true, global2[_wgslsmith_index_u32(8573u, 10u)], true, global2[_wgslsmith_index_u32(global0.b, 10u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(27286u, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], true, true, false)), countOneBits(global0.b)).b, vec4<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false, true)), !global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)] || false, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 0u), 10u)]), u_input.a).b, vec4<bool>(global2[_wgslsmith_index_u32((global0.b & 0u) << ((82343u | 95995u) % 32u), 10u)], all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)], false), vec4<bool>(global2[_wgslsmith_index_u32(52653u, 10u)], false, global2[_wgslsmith_index_u32(6758u, 10u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(22151u, 10u)], false, global2[_wgslsmith_index_u32(4979u, 10u)]))), global2[_wgslsmith_index_u32(min(32644u, 1u), 10u)], !global2[_wgslsmith_index_u32(~u_input.a, 10u)]), 20229u).d;
        }
        case -13088: {
            global1 = array<vec2<u32>, 10>();
            var var_1 = _wgslsmith_mult_u32(max(_wgslsmith_add_u32(reverseBits(~1218u), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~global0.b, 10u)], reverseBits(vec2<u32>(global0.b, u_input.a)))), u_input.a), 21193u);
            global2 = array<bool, 10>();
        }
        default: {
        }
    }
    let var_1 = !(all(!select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], false, false), global2[_wgslsmith_index_u32(4294967295u, 10u)])) & any(vec2<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global0.b, global0.b), 10u)])));
    if (var_1) {
        let var_2 = false;
        switch (_wgslsmith_mod_i32(_wgslsmith_mod_i32(0, _wgslsmith_add_i32(min(4639 & -2147483648, ~u_input.d), -u_input.c)), i32(-1) * -1)) {
            case -35230: {
                var_0 = true;
                var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_9(vec2<f32>(894.0, -450.0), Struct_2(false, vec2<i32>(-6167, global0.a), vec4<bool>(true, var_1, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -331.0))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1166.0, 333.0)))) * 1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -480.0)));
                var var_4 = !select(func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-416.0, 698.0, -805.0), vec3<f32>(1431.0, -1910.0, -1718.0))))), ~_wgslsmith_clamp_u32(global0.b, 447u, 4294967295u), _wgslsmith_sub_u32(u_input.a, abs(global0.b)), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.b, 29943u, 40957u), ~vec3<u32>(27950u, 61308u, global0.b))).c, !(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 10u)], true, true), vec4<bool>(var_1, var_2, global2[_wgslsmith_index_u32(4294967295u, 10u)], false), vec4<bool>(var_1, var_1, false, global2[_wgslsmith_index_u32(u_input.a, 10u)]))), select(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3327.0, -225.0, -694.0)), 69718u, ~global0.b, 0u).c, select(vec4<bool>(var_2, false, true, true), func_2(vec3<f32>(1736.0, -164.0, 1710.0), 1u, 16215u, 0u).c, u_input.a >= u_input.a), func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-870.0, 516.0, -337.0), vec3<f32>(-1451.0, -576.0, 1299.0))), 49561u, u_input.a, _wgslsmith_div_u32(60124u, u_input.a)).c));
            }
            case 40923: {
                global2 = array<bool, 10>();
                global1 = array<vec2<u32>, 10>();
            }
            default: {
                var var_3 = Struct_1(!vec2<bool>(var_2, -2147483648 <= global0.a), vec2<bool>(func_7(!func_2(vec3<f32>(625.0, 939.0, 1000.0), 0u, 1u, global0.b).a, Struct_3(~u_input.c, _wgslsmith_sub_u32(global0.b, u_input.a)), vec4<bool>(func_2(vec3<f32>(-281.0, 713.0, -122.0), 62948u, u_input.a, u_input.a).c.x, func_3().x, all(vec3<bool>(false, false, var_2)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 24015u), 10u)]), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 10u)], func_7(true, Struct_3(-11472, global0.b), vec4<bool>(var_1, var_2, global2[_wgslsmith_index_u32(10421u, 10u)], true), global0.b).c.ww)).d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1606.0 * 1345.0))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529.0) + _wgslsmith_f_op_f32(-1951.0))));
                var var_4 = var_1;
                let var_5 = func_7(var_1, func_8(Struct_4(u_input.d, Struct_3(global0.a, global0.b >> (0u % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, global0.b), func_7(var_1, Struct_3(5827, u_input.a), vec4<bool>(false, false, var_1, global2[_wgslsmith_index_u32(u_input.a, 10u)]), u_input.a).c), var_1)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1574.0, -768.0, 1000.0)))), global0.b, u_input.a | global0.b, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0.b, global0.b), vec4<u32>(1u, u_input.a, global0.b, global0.b)), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, var_1, var_2), true)), ~reverseBits(vec4<u32>(global0.b, u_input.a, 20836u, 1u)))).c, u_input.a);
            }
        }
        loop {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            break;
        }
        switch (-global0.a) {
            default: {
                let var_3 = ~u_input.d;
                var var_4 = func_7(!var_1, func_7((!true && true) & var_1, func_7(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(1218.0, 1063.0, 1596.0), vec3<f32>(669.0, 706.0, -1110.0)), func_8(Struct_4(var_3, Struct_3(0, u_input.a), vec4<u32>(1u, 4294967295u, global0.b, 16226u), var_2)).b, _wgslsmith_mod_u32(66373u, global0.b), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, global0.b, global0.b), vec3<u32>(25541u, global0.b, u_input.a))).c.x, func_8(Struct_4(1, Struct_3(var_3, 4294967295u), vec4<u32>(3581u, u_input.a, global0.b, global0.b), true)), vec4<bool>(!global2[_wgslsmith_index_u32(1u, 10u)], var_2 & var_1, any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)])), var_2), 40031u).b, !vec4<bool>(false, all(vec3<bool>(var_1, true, global2[_wgslsmith_index_u32(4294967295u, 10u)])), global2[_wgslsmith_index_u32(global0.b, 10u)], true), ~(~1u)).b, vec4<bool>(global2[_wgslsmith_index_u32(~u_input.a, 10u)], global0.a < _wgslsmith_sub_i32(var_3 << (global0.b % 32u), ~u_input.b), func_4(), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2729.0 - 1171.0))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(101.0)) + -1270.0)), 4294967295u);
            }
        }
        switch (func_7(true, Struct_3(-1, ~_wgslsmith_div_u32(countOneBits(global0.b), ~global0.b)), vec4<bool>(!all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 10u)], var_2, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false, false, global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<bool>(var_1, false, true, false))), !var_1, true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(global0.b, u_input.a, global0.b, global0.b)), ~vec4<u32>(global0.b, 18984u, u_input.a, 1u), vec4<bool>(var_1, var_2, false, var_1)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, global0.b, 0u, u_input.a), ~vec4<u32>(22041u, u_input.a, global0.b, global0.b))), 10u)]), _wgslsmith_sub_u32(max(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0.b, 69800u, global0.b), ~vec4<u32>(24794u, u_input.a, 31738u, 13080u))), ~(func_8(Struct_4(global0.a, Struct_3(-1, 1u), vec4<u32>(global0.b, u_input.a, 81217u, u_input.a), false)).b & ~u_input.a))).b.a) {
            case 3305: {
            }
            default: {
            }
        }
    }
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1959.0, 641.0, 916.0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000.0, 177.0, 565.0) * vec3<f32>(-593.0, -865.0, 424.0))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2698.0, -1000.0, -132.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-785.0, 598.0, -1404.0) - vec3<f32>(357.0, -2060.0, 343.0)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(833.0, -956.0, -947.0), vec3<f32>(384.0, 496.0, 496.0))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-232.0, -950.0, -146.0)))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-911.0, -929.0, -154.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-563.0, 1348.0, -601.0)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1085.0, -909.0, 192.0)))))));
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        continue;
    }
    if (any(vec2<bool>(!global2[_wgslsmith_index_u32(1u, 10u)], var_1))) {
        switch (~_wgslsmith_mod_i32(0, _wgslsmith_dot_vec3_i32(reverseBits(abs(vec3<i32>(u_input.b, global0.a, 0))), -abs(vec3<i32>(global0.a, -2147483648, -5544))))) {
            case 1: {
                global2 = array<bool, 10>();
                global0 = func_7(func_4(), func_8(Struct_4(u_input.c, Struct_3(-global0.a, global0.b), ~firstTrailingBit(vec4<u32>(u_input.a, 0u, 4294967295u, 4294967295u)), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], true)) != !global2[_wgslsmith_index_u32(u_input.a, 10u)])), vec4<bool>(func_4() & func_2(vec3<f32>(-1000.0, var_2.x, var_2.x), global0.b, min(global0.b, u_input.a), u_input.a).c.x, ((i32(-1) * -2147483648) | firstLeadingBit(global0.a)) > ((u_input.c >> (u_input.a % 32u)) >> (~4294967295u % 32u)), func_4() | false, func_4() & global2[_wgslsmith_index_u32(global0.b, 10u)]), 1u).b;
                global0 = func_8(Struct_4(_wgslsmith_sub_i32(global0.a, -1), func_7(false, func_8(func_7(var_1, Struct_3(21566, u_input.a), vec4<bool>(false, var_1, true, global2[_wgslsmith_index_u32(u_input.a, 10u)]), 0u)), !vec4<bool>(false, global2[_wgslsmith_index_u32(36744u, 10u)], true, true), _wgslsmith_clamp_u32(~3503u, 1u ^ 1u, 4294967295u >> (u_input.a % 32u))).b, ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), ~vec4<u32>(global0.b, global0.b, global0.b, 47439u)), var_2.x < _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(step(217.0, -1936.0))))));
                var var_3 = func_7(true, func_7(!any(!vec4<bool>(true, false, true, var_1)), func_7(!var_1, Struct_3(_wgslsmith_clamp_i32(2147483647, u_input.c, -1), _wgslsmith_dot_vec4_u32(vec4<u32>(36566u, 12560u, 1u, global0.b), vec4<u32>(1u, 0u, global0.b, u_input.a))), !vec4<bool>(false, var_1, var_1, var_1), u_input.a).b, !(!vec4<bool>(global2[_wgslsmith_index_u32(31525u, 10u)], true, true, false)), ~(~global0.b)).b, !(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(global0.b, 10u)], false, var_1), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], false, true, true), !vec4<bool>(false, var_1, global2[_wgslsmith_index_u32(0u, 10u)], true))), 15991u >> (select(u_input.a, u_input.a, !func_7(false, Struct_3(u_input.b, u_input.a), vec4<bool>(var_1, var_1, global2[_wgslsmith_index_u32(global0.b, 10u)], true), 45707u).d) % 32u));
                global2 = array<bool, 10>();
            }
            case 13689: {
                let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-695.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(-1661.0), _wgslsmith_f_op_f32(step(-233.0, _wgslsmith_f_op_f32(f32(-1.0) * -561.0))))));
            }
            case 19859: {
            }
            case 46945: {
                var var_3 = func_4();
                let var_4 = func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2241.0, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1807.0)))), vec3<f32>(var_2.x, -1000.0, -1000.0), !(!global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 10u)]))), firstTrailingBit(u_input.a), 4294967295u, 0u);
                var_3 = !var_4.a;
                var var_5 = min(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(select(u_input.a, u_input.a, false), _wgslsmith_div_u32(global0.b, u_input.a)), ~_wgslsmith_sub_u32(u_input.a, 0u), ~(u_input.a ^ u_input.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(78451u, u_input.a, 4294967295u), vec3<u32>(6459u, u_input.a, global0.b), vec3<u32>(global0.b, 65169u, global0.b)), vec3<u32>(58410u, global0.b, 4294967295u) | vec3<u32>(global0.b, 4294967295u, global0.b)) & ~(~vec3<u32>(u_input.a, global0.b, 4294967295u))), global0.b);
                var var_6 = vec4<i32>(-global0.a, max(~(~51882 | var_4.b.x), global0.a), var_4.b.x, -2147483648);
            }
            default: {
                var_0 = all(vec3<bool>(all(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], var_1, global2[_wgslsmith_index_u32(27364u, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(true, var_1, global2[_wgslsmith_index_u32(4294967295u, 10u)], true), true), select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<bool>(var_1, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], false), vec4<bool>(true, var_1, true, global2[_wgslsmith_index_u32(global0.b, 10u)])), !vec4<bool>(false, true, var_1, false))), true, var_1));
            }
        }
        var var_3 = func_7(func_7(!true, Struct_3(global0.a >> (min(global0.b, global0.b) % 32u), ~(~global0.b)), select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 10u)], false, true), !vec4<bool>(var_1, global2[_wgslsmith_index_u32(global0.b, 10u)], false, global2[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(0u, 10u)])), vec4<bool>(!false, false, true, false), select(!vec4<bool>(false, var_1, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), !vec4<bool>(false, var_1, false, true), !vec4<bool>(true, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(0u, 10u)], false))), ~global0.b << (countOneBits(global0.b) % 32u)).d, func_7(var_1, Struct_3(u_input.b, 94516u), select(vec4<bool>(true, global2[_wgslsmith_index_u32(7151u, 10u)] || global2[_wgslsmith_index_u32(93158u, 10u)], !true, select(var_1, global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)])), func_2(var_2, 1u, 53454u, global0.b).c, !select(vec4<bool>(global2[_wgslsmith_index_u32(2994u, 10u)], var_1, false, false), vec4<bool>(var_1, global2[_wgslsmith_index_u32(global0.b, 10u)], global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), global2[_wgslsmith_index_u32(57309u, 10u)])), _wgslsmith_div_u32(16554u, (0u >> (global0.b % 32u)) & u_input.a)).b, select(select(select(vec4<bool>(var_1, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 10u)], var_1, global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], true, global2[_wgslsmith_index_u32(0u, 10u)], var_1)), vec4<bool>(global2[_wgslsmith_index_u32(global0.b, 10u)], var_1, var_1, global2[_wgslsmith_index_u32(global0.b, 10u)])), select(func_2(vec3<f32>(-341.0, -1000.0, var_2.x), 1u, global0.b, 21657u).c, func_2(var_2, 4294967295u, global0.b, 4294967295u).c, func_2(vec3<f32>(var_2.x, 1239.0, -445.0), u_input.a, global0.b, u_input.a).c), var_1), !vec4<bool>(4294967295u < global0.b, true, 2147483647 != u_input.b, func_3().x), vec4<bool>(func_7(false, Struct_3(global0.a, u_input.a), vec4<bool>(false, false, var_1, true), global0.b).c.x <= global0.b, !true, global2[_wgslsmith_index_u32(~u_input.a, 10u)], 12313u > (global0.b | 10567u))), u_input.a).d;
        global1 = array<vec2<u32>, 10>();
        switch (-(_wgslsmith_sub_i32(u_input.b | _wgslsmith_add_i32(global0.a, global0.a), abs(firstTrailingBit(-18666))) | (select(~u_input.b, 0, !true) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1, 2147483647, global0.a), vec3<i32>(global0.a, -11748, u_input.b) >> (vec3<u32>(0u, global0.b, 22428u) % vec3<u32>(32u)))))) {
            case 0: {
                global2 = array<bool, 10>();
                let var_4 = select(!vec3<bool>(true, any(!vec4<bool>(var_1, var_1, false, false)), any(!vec2<bool>(false, var_1))), vec3<bool>(_wgslsmith_clamp_i32(-u_input.b, 67177, _wgslsmith_mult_i32(u_input.b, u_input.c)) > reverseBits(_wgslsmith_div_i32(u_input.c, global0.a)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a, _wgslsmith_sub_u32(global0.b >> (60378u % 32u), _wgslsmith_mod_u32(u_input.a, global0.b))), 10u)], any(!(!vec3<bool>(var_1, false, global2[_wgslsmith_index_u32(23790u, 10u)])))), vec3<bool>(!select(var_2.x < 900.0, !true, true), (any(vec3<bool>(true, var_1, false)) & all(vec2<bool>(false, true))) || var_1, !(_wgslsmith_f_op_f32(min(-238.0, var_2.x)) >= _wgslsmith_f_op_f32(-var_2.x))));
                let var_5 = ~abs(~(1 & reverseBits(global0.a)));
                var var_6 = Struct_1(var_4.yz, var_4.yz);
                let var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(abs(-738.0)))), _wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_div_f32(-141.0, _wgslsmith_f_op_f32(floor(var_2.x)))));
            }
            case 70633: {
                let var_4 = vec4<bool>(false, !all(select(vec4<bool>(var_1, true, var_1, true), select(vec4<bool>(var_1, global2[_wgslsmith_index_u32(53708u, 10u)], true, var_1), vec4<bool>(false, var_1, var_1, global2[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<bool>(global2[_wgslsmith_index_u32(50509u, 10u)], false, false, false)), !var_1)), _wgslsmith_f_op_f32(func_9(_wgslsmith_f_op_vec2_f32(min(var_2.yx, var_2.yx)), Struct_2(!global2[_wgslsmith_index_u32(60873u, 10u)], countOneBits(vec2<i32>(global0.a, global0.a)), select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(global0.b, 10u)], false), vec4<bool>(false, var_1, true, true))))) <= _wgslsmith_f_op_f32(-var_2.x), (1u << (global0.b % 32u)) < (~abs(u_input.a) << (u_input.a % 32u)));
                var var_5 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -2151.0, 199.0)) * var_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 + vec3<f32>(var_2.x, var_2.x, -1700.0))))) + var_2), u_input.a, u_input.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~(~global0.b), global0.b, ~(~0u)), u_input.a));
            }
            default: {
                let var_4 = Struct_3(global0.a, 1u);
                global0 = var_4;
                return;
            }
        }
        var_3 = var_1;
    }
    let x = u_input.a;
    s_output = StorageBuffer(2147483647);
}

