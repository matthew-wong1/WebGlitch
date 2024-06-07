// {"0:0":[32,144,5,157,227,170,77,167,224,191,126,23,50,230,99,97]}
// Seed: 12397790546595718731

struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> LOOP_COUNTERS: array<u32, 34>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn func_6(arg_0: Struct_1) -> f32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        switch (~_wgslsmith_div_i32(~(-32942), 56424) << (u_input.a.x % 32u)) {
            case -53629: {
                break;
            }
            case -2147483648: {
                var var_0 = !(!vec3<bool>(any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false))), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(107599u, u_input.a.x)), 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]));
                var_0 = !vec3<bool>(!true, var_0.x && true, all(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(6803u, 7u)], true), select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, false, var_0.x), var_0.x), vec3<bool>(var_0.x, false, true))));
                var var_1 = any(vec2<bool>(false & var_0.x, any(!var_0.xx))) && true;
            }
            default: {
                var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))), 596.0, 1000.0)));
            }
        }
        var var_0 = arg_0;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        }
    }
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a << (vec4<u32>(u_input.a.x, 32889u, u_input.a.x, 1u) % vec4<u32>(32u))), abs(~u_input.a.x)), u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, ~u_input.a.x));
    let var_1 = firstTrailingBit(reverseBits(vec3<i32>(86614, -2147483648, _wgslsmith_mult_i32(firstLeadingBit(2147483647), -2147483648))));
    var var_2 = var_1.zz;
    for (; ; ) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        break;
    }
    return arg_0.a.x;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> i32 {
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
            var var_0 = u_input.a.zxy << (~u_input.a.wyw % vec3<u32>(32u));
            continue;
        }
        var var_0 = ~firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1, -32193, -10815, 2147483647), vec4<i32>(0, 22817, 21502, 19404)), ~vec4<i32>(-58110, -2147483648, 66922, 0)) << (_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(4294967295u, 16251u, u_input.a.x, u_input.a.x)), ~u_input.a, countOneBits(vec4<u32>(1u, 4294967295u, u_input.a.x, 81621u))) % vec4<u32>(32u)));
        let var_1 = vec3<i32>(var_0.x & -2147483648, var_0.x, -var_0.x);
        let var_2 = vec2<f32>(arg_2, _wgslsmith_f_op_f32(-428.0 - arg_2));
    }
    var var_0 = Struct_2(arg_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(arg_1));
    var var_2 = u_input.a.x;
    if (any(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a.yxw, u_input.a.zyx)) & 3591u, 7u)], u_input.a.x <= (u_input.a.x & ~1u), global0[_wgslsmith_index_u32(select(~_wgslsmith_sub_u32(0u, u_input.a.x), _wgslsmith_sub_u32(0u, ~0u), !false), 7u)]))) {
        for (var var_3 = firstTrailingBit(~reverseBits(min(max(2147483647, 0), -30366))); var_3 < -2147483648; var_3 -= 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        }
        var var_3 = arg_0;
        let var_4 = Struct_2(arg_0);
    }
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~(0), countOneBits(1) | -34359, 1), -vec3<i32>(i32(-1) * -70825, max(-2147483648, 7839), -19085)) >> (u_input.a.x % 32u);
}

fn func_5(arg_0: vec4<bool>) -> Struct_3 {
    for (var var_0 = _wgslsmith_mult_i32(-31398, 0); ; global0 = array<bool, 7>()) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        switch (func_7(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1572.0) - _wgslsmith_f_op_f32(func_6(Struct_1(vec3<f32>(-375.0, 652.0, -1197.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-684.0) - -1000.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(-618.0)), _wgslsmith_f_op_f32(f32(-1.0) * -391.0))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(564.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-158.0 * 707.0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(388.0, -122.0, true)), _wgslsmith_f_op_f32(-985.0 - 471.0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-732.0, -1003.0, true))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1072.0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -370.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1022.0 * -1939.0) - -197.0), 494.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343.0 - 665.0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000.0 - -873.0), _wgslsmith_f_op_f32(-111.0 + -1720.0))) + 772.0)))) {
            case -38622: {
                let var_1 = _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_div_u32(countOneBits(_wgslsmith_sub_u32(38211u, 1u)), u_input.a.x));
                var_0 = -min(abs(~(-17095)), _wgslsmith_sub_i32(~(-2147483648), ~min(18715, 0)));
                let var_2 = !(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x ^ 0u, _wgslsmith_mult_u32(var_1, u_input.a.x)), ~select(39502u, 1u, false)), 7u)]);
                var var_3 = select(~(~(-42699)), -19977, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1, _wgslsmith_div_u32(var_1, ~(~u_input.a.x))), 7u)]);
                var var_4 = select((-vec3<i32>(-1, -16659, -1) >> (vec3<u32>(0u >> (57499u % 32u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u) % vec3<u32>(32u))) & ~_wgslsmith_add_vec3_i32(vec3<i32>(19962, 932, 0), vec3<i32>(90610, 26538, 9961)), vec3<i32>(-18593 << ((70175u ^ 40477u) % 32u), _wgslsmith_div_i32(85258, select(1, -2147483648, arg_0.x)), -2042 & (13066 >> (56800u % 32u))) ^ ~(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647, -13272, -63161), vec3<i32>(-2147483648, 2147483647, -18052)) & vec3<i32>(9177, -50639, 15714)), !arg_0.www);
            }
            default: {
                continue;
            }
        }
        switch (reverseBits(reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1, 45924, 0), -(~vec3<i32>(2147483647, -2147483648, 40739)))))) {
            case 46745: {
                var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1327.0, -1913.0, -851.0))))))));
                let var_2 = !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u >> (reverseBits(u_input.a.x | u_input.a.x) % 32u), 7u)], true, arg_0.x, any(arg_0));
                let var_3 = ~(~select(firstTrailingBit(max(vec3<i32>(-18731, 37606, 9551), vec3<i32>(1, -2147483648, -1))), vec3<i32>(-1, func_7(Struct_1(var_1.a), vec4<f32>(-1514.0, -414.0, var_1.a.x, 816.0), 255.0), -60051), false));
                break;
            }
            case 24568: {
                var var_1 = !(!arg_0);
                let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(630.0, _wgslsmith_div_f32(230.0, 486.0))), 1679.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-690.0, 677.0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(354.0, -1000.0, -1185.0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(954.0, -391.0, -1781.0)))))));
            }
            default: {
                var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(511.0, -739.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-448.0, 1642.0) + _wgslsmith_f_op_f32(step(1483.0, 676.0))))));
            }
        }
        switch (-_wgslsmith_mod_i32(_wgslsmith_sub_i32(-(~(-15669)), _wgslsmith_mult_i32(1355, _wgslsmith_add_i32(1, -1))), _wgslsmith_add_i32(0, firstLeadingBit(-1)))) {
            default: {
                break;
            }
        }
        var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -194.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1854.0 + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1142.0)))), _wgslsmith_f_op_f32(func_6(Struct_1(vec3<f32>(1010.0, -947.0, 1610.0)))))));
        var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-295.0, var_1.x, 1860.0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(var_1.x, 1000.0, 1825.0))))));
    }
    var var_0 = Struct_1(vec3<f32>(-1219.0, _wgslsmith_f_op_f32(1656.0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1117.0), 1000.0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * -216.0) + _wgslsmith_f_op_f32(f32(-1.0) * -434.0))))));
    if ((805 & ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(16555, 5458, -1), vec3<i32>(1, 16054, -1)))) == _wgslsmith_dot_vec2_i32(vec2<i32>(min(-1, -9543), firstTrailingBit(2147483647)) | max(-vec2<i32>(-16017, -1), vec2<i32>(-28013, -37854)), -_wgslsmith_mod_vec2_i32(~vec2<i32>(-35550, -34260), -vec2<i32>(2147483647, -25717)))) {
    }
    switch (firstTrailingBit(i32(-1) * -(~(-29261)))) {
        case 37373: {
            var_0 = Struct_1(var_0.a);
            for (var var_1 = -1; false; var_1 -= 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                break;
            }
            for (var var_1 = 44168; ; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(var_0.a))))))));
                break;
            }
        }
        case -1: {
            let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-291.0, var_0.a.x, _wgslsmith_f_op_f32(round(var_0.a.x)))))));
            return Struct_3(-1322.0, var_1, min(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(7916, 12980), ~1), -11023 ^ -9144, max(-1, 2147483647)), vec3<i32>(-5899, -47432, -12250)), ~_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 78496u), vec2<u32>(u_input.a.x, 8404u), select(arg_0.yy, arg_0.yy, global0[_wgslsmith_index_u32(55229u, 7u)])), firstTrailingBit(u_input.a.wx)), select(!arg_0.zzy, !arg_0.yzy, !arg_0.wzz));
        }
        case 0: {
        }
        case -91564: {
            var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -465.0))), Struct_1(vec3<f32>(-1668.0, -748.0, _wgslsmith_div_f32(var_0.a.x, -876.0))), abs(~vec3<i32>(0, -2147483648 >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-33074, 45137, 8053, -51990), vec4<i32>(1, 1144, 2147483647, 2147483647)))), ~u_input.a.x, arg_0.xwz);
            var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a))), 1000.0));
            global0 = array<bool, 7>();
        }
        default: {
            let var_1 = -4398;
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
            switch (-abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1, -2147483648, 9275) ^ vec3<i32>(-39533, var_1, -2147483648)), -vec3<i32>(var_1, -23378, var_1) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, 12618, var_1), vec3<i32>(var_1, 1, -10217))))) {
                case -1: {
                    let var_2 = _wgslsmith_mod_u32(~(~1u), _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(min(u_input.a.yyx, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), u_input.a.zzx, u_input.a.yzy)), vec3<u32>(0u, ~u_input.a.x, _wgslsmith_mod_u32(6679u, 1u))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)), ~max(vec4<u32>(u_input.a.x, 0u, 4294967295u, 0u), u_input.a))));
                }
                case -58866: {
                }
                case -26907: {
                    let var_2 = ~_wgslsmith_div_vec2_u32(~reverseBits(vec2<u32>(0u, 41329u)), max(_wgslsmith_mod_vec2_u32(vec2<u32>(93011u, 66380u), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.yx | u_input.a.xz)) | ~((countOneBits(vec2<u32>(53775u, 56535u)) << (~u_input.a.zz % vec2<u32>(32u))) << (vec2<u32>(~1u, u_input.a.x) % vec2<u32>(32u)));
                }
                case -26014: {
                }
                default: {
                    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-404.0)), 285.0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.a.x)))))));
                    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-943.0)) - var_2.a.x), _wgslsmith_f_op_f32(floor(1388.0)))));
                }
            }
            var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(exp2(-1400.0)), var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.a.x))))))));
        }
    }
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        break;
    }
    return Struct_3(_wgslsmith_f_op_f32(-990.0), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-201.0)), _wgslsmith_f_op_f32(trunc(457.0)), var_0.a.x))), abs(_wgslsmith_mult_vec3_i32(max(~vec3<i32>(1, 39114, 12713), vec3<i32>(2147483647, 28847, 45376)), min(firstTrailingBit(vec3<i32>(62375, 1, -1)), firstTrailingBit(vec3<i32>(-2147483648, 20444, 13611))))), 47707u, !vec3<bool>(global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(4668u, 4294967295u)), 7u)], !(!arg_0.x), all(!arg_0.wxx)));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> u32 {
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_0 = arg_3.e.yz;
        let var_1 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(func_7(arg_0.a, vec4<f32>(arg_1.a.a.x, 1062.0, 1007.0, arg_1.a.a.x), arg_1.a.a.x), -arg_3.c.x, -24597, i32(-1) * -22265) | vec4<i32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, func_7(Struct_1(vec3<f32>(-1241.0, -210.0, arg_3.a)), vec4<f32>(arg_0.a.a.x, arg_1.a.a.x, arg_0.a.a.x, -524.0), arg_3.a)), (abs(vec4<i32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, 79867)) | vec4<i32>(0, 0, arg_3.c.x, -1)) << (u_input.a % vec4<u32>(32u)), ~(~vec4<i32>(-1, arg_3.c.x, -6251, arg_3.c.x) | firstTrailingBit(vec4<i32>(arg_3.c.x, 1, arg_3.c.x, arg_3.c.x))));
        switch (select(-56702, max(_wgslsmith_sub_i32(-(var_1.x >> (arg_3.d % 32u)), _wgslsmith_div_i32(var_1.x, arg_3.c.x) >> (u_input.a.x % 32u)), var_1.x), all(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(54337u, 7u)], false, true, true), vec4<bool>(false, false, arg_3.e.x, arg_3.e.x), false), !vec4<bool>(false, true, false, true), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], false, global0[_wgslsmith_index_u32(28630u, 7u)])), !vec4<bool>(arg_3.e.x, arg_3.e.x, false, true), any(select(vec3<bool>(false, var_0.x, arg_3.e.x), vec3<bool>(global0[_wgslsmith_index_u32(arg_3.d, 7u)], var_0.x, arg_3.e.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))))))) {
            case -5929: {
                let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(arg_0.a))))) - _wgslsmith_f_op_f32(-510.0)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.a)))), ~vec3<i32>(-(9203 >> (10476u % 32u)), arg_3.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3.c.x, arg_3.c.x), vec2<i32>(35893, -2147483648)), func_5(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.d, 7u)], arg_3.e.x, global0[_wgslsmith_index_u32(45606u, 7u)], false)).c.xx)), u_input.a.x, vec3<bool>(all(var_0), ((global0[_wgslsmith_index_u32(33910u, 7u)] && arg_3.e.x) | (false | arg_3.e.x)) == all(vec4<bool>(arg_3.e.x, arg_3.e.x, false, arg_3.e.x)), any(vec2<bool>(true, var_0.x)) && (false | any(vec4<bool>(var_0.x, arg_3.e.x, false, false)))));
                let var_3 = _wgslsmith_f_op_f32(arg_1.a.a.x * arg_0.a.a.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.a.x)));
            }
            case 1: {
                break;
            }
            case 0: {
                global0 = array<bool, 7>();
            }
            case 2147483647: {
                var var_2 = ~vec2<i32>(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1.x, 0)), firstTrailingBit(arg_3.c.zz)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_1, firstLeadingBit(vec4<i32>(var_1.x, 20079, arg_3.c.x, 0))), select(-vec4<i32>(1, var_1.x, -2147483648, 1), var_1, arg_3.e.x)));
            }
            default: {
                var var_2 = u_input.a.x;
                let var_3 = arg_3;
                var_2 = min(7088u, u_input.a.x >> ((_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), abs(u_input.a.zx)) | min(u_input.a.x, var_3.d)) % 32u));
                var_2 = abs(_wgslsmith_mod_u32(arg_3.d, abs(~firstLeadingBit(u_input.a.x))));
                let var_4 = Struct_2(var_3.b);
            }
        }
        let var_2 = Struct_3(-1000.0, arg_0.a, vec3<i32>(~min(var_1.x, var_1.x & 2147483647), -1, i32(-1) * -_wgslsmith_mod_i32(arg_3.c.x, var_1.x)), _wgslsmith_div_u32(arg_3.d, ~arg_3.d ^ _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 38132u)), u_input.a.yy)), vec3<bool>(all(select(!arg_3.e, arg_3.e, vec3<bool>(global0[_wgslsmith_index_u32(arg_3.d, 7u)], false, false))), var_0.x, any(select(vec2<bool>(false, var_0.x), var_0, all(arg_3.e)))));
    }
    let var_0 = arg_3.e.x != all(!select(vec4<bool>(true, false, arg_3.e.x, false), select(vec4<bool>(arg_3.e.x, true, arg_3.e.x, global0[_wgslsmith_index_u32(18735u, 7u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_3.d, 7u)], true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], arg_3.e.x, false, arg_3.e.x)), vec4<bool>(arg_3.e.x, false, global0[_wgslsmith_index_u32(32864u, 7u)], false)));
    for (var var_1: i32; var_1 <= 1; var_1 -= 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var var_2 = func_5(vec4<bool>(!global0[_wgslsmith_index_u32(~u_input.a.x, 7u)], !false, var_0, select(u_input.a.x <= (4294967295u & arg_3.d), true, !(!var_0))));
        var_1 = arg_3.c.x;
        var var_3 = arg_3;
        let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.a.x, -1473.0, _wgslsmith_f_op_f32(select(arg_1.a.a.x, _wgslsmith_f_op_f32(-1380.0 - 289.0), true)), 510.0))));
        let var_5 = _wgslsmith_f_op_f32(arg_2 - func_5(vec4<bool>(arg_3.e.x, var_3.e.x, any(vec4<bool>(true, false, var_2.e.x, false)), true)).b.a.x);
    }
    return ~_wgslsmith_mod_u32(u_input.a.x, reverseBits(0u));
}

fn func_9(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global0 = array<bool, 7>();
    var var_0 = _wgslsmith_f_op_f32(arg_2.a.a.x - 1000.0);
    for (var var_1: i32; var_1 <= 1; var_1 += 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        continue;
    }
    let var_1 = -1823.0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810.0 * -1000.0)) * _wgslsmith_div_f32(arg_2.a.a.x, arg_2.a.a.x));
    let var_2 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_3, arg_1.x), -1 >> (~(u_input.a.x >> (25380u % 32u)) % 32u));
    return Struct_2(func_5(!vec4<bool>(-1000.0 == arg_2.a.a.x, 545.0 != arg_2.a.a.x, any(vec3<bool>(false, false, global0[_wgslsmith_index_u32(2791u, 7u)])), var_1)).b);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> i32 {
    var var_0 = func_9(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, func_8(Struct_2(arg_2.a), Struct_2(arg_2.a), 455.0, func_5(vec4<bool>(global0[_wgslsmith_index_u32(7201u, 7u)], global0[_wgslsmith_index_u32(arg_1.x, 7u)], true, false)))), 2234u), 7u)], vec4<i32>(i32(-1) * -33257, arg_0, arg_0, 0), Struct_2(func_5(vec4<bool>(!true, any(vec2<bool>(global0[_wgslsmith_index_u32(37139u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])), !global0[_wgslsmith_index_u32(6242u, 7u)], !global0[_wgslsmith_index_u32(0u, 7u)])).b), 175);
    var_0 = func_9(!global0[_wgslsmith_index_u32(0u & (arg_1.x << (33751u % 32u)), 7u)], min(vec4<i32>(_wgslsmith_div_i32(countOneBits(arg_0), 30721), _wgslsmith_clamp_i32(-2147483648, _wgslsmith_mod_i32(-1, -2147483648), arg_0), -18835, -1), ~(select(vec4<i32>(-1, arg_0, 49992, -39881), vec4<i32>(arg_0, arg_0, 1, -24474), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(arg_1.x, 7u)], false)) & vec4<i32>(arg_0, arg_0, -21373, 0))), Struct_2(arg_2.a), arg_0);
    let var_1 = vec4<i32>(arg_0, arg_0, -1, _wgslsmith_add_i32(23007, _wgslsmith_sub_i32(-1, _wgslsmith_div_i32(~(-1206), ~arg_0))));
    switch (824) {
        case 24743: {
        }
        default: {
            if (!false) {
                var var_2 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.a.x, func_8(func_9(global0[_wgslsmith_index_u32(1u, 7u)], var_1, arg_2, -12005), arg_2, _wgslsmith_f_op_f32(f32(-1.0) * -1634.0), Struct_3(arg_3.x, arg_2.a, var_1.wzz, u_input.a.x, vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(arg_1.x, 7u)])))) | 6867u, abs(u_input.a.x), ~(~min(abs(u_input.a.x), 38090u)));
            }
            let var_2 = vec2<u32>(~_wgslsmith_mult_u32(~56935u, 0u), u_input.a.x);
            for (var var_3 = 10241; !(!(22454u <= 0u)); var_3 = ~(-2147483647)) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            }
            global0 = array<bool, 7>();
        }
    }
    var_0 = Struct_2(arg_2.a);
    return 2147483647;
}

fn func_3() -> vec3<bool> {
    if (!((_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(44966, 2147483647, 17820)), firstTrailingBit(vec3<i32>(14087, 13055, 13342))) & (i32(-1) * -11055)) >= _wgslsmith_div_i32((i32(-1) * -11704) >> (_wgslsmith_div_u32(0u, u_input.a.x) % 32u), ~(0 >> (26673u % 32u))))) {
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            break;
        }
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
        var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-841.0) + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) * -112.0));
        var var_1 = u_input.a.x;
    }
    switch (max(-62895, select(-_wgslsmith_div_i32(~(-6662), func_4(0, vec4<u32>(1u, 75516u, u_input.a.x, 21948u), Struct_2(Struct_1(vec3<f32>(-1554.0, 2093.0, -178.0))), vec4<f32>(-150.0, -406.0, -511.0, 258.0))), func_7(func_9(global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 7u)], _wgslsmith_mult_vec4_i32(vec4<i32>(-21029, -15728, 0, -42587), vec4<i32>(2147483647, 2147483647, 12085, 9531)), Struct_2(Struct_1(vec3<f32>(732.0, -3310.0, 179.0))), _wgslsmith_add_i32(2147483647, -2147483648)).a, vec4<f32>(285.0, _wgslsmith_f_op_f32(-980.0 - 292.0), _wgslsmith_f_op_f32(f32(-1.0) * -823.0), -169.0), 1273.0), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))) {
        case -2147483648: {
            let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1146.0 + -2225.0)), -992.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-863.0 * 629.0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-243.0, 660.0, 1839.0))))) - vec3<f32>(_wgslsmith_f_op_f32(747.0 * 1305.0), 582.0, _wgslsmith_f_op_f32(f32(-1.0) * -698.0))))));
            let var_1 = select(!vec2<bool>(false, !(-2147483648 > 7165)), vec2<bool>(!true, true), vec2<bool>(true, !(false | (false != false))));
            var var_2 = (vec2<i32>(2147483647 >> (1529u % 32u), -1) ^ firstLeadingBit(vec2<i32>(reverseBits(14969), -16803 & -19403))) >> (u_input.a.yy % vec2<u32>(32u));
            var_2 = ~_wgslsmith_clamp_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.x, -2147483648), vec2<i32>(var_2.x, var_2.x)), ~firstLeadingBit(vec2<i32>(var_2.x, -5956)), ~(-vec2<i32>(var_2.x, 20247)));
        }
        case 4077: {
            let var_0 = 16632u;
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1144.0)), 1236.0), vec2<f32>(421.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(459.0, 650.0)) * _wgslsmith_f_op_f32(-717.0))))));
                let var_2 = !global0[_wgslsmith_index_u32(~11298u, 7u)];
                let var_3 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + 388.0))), 494.0)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(981.0, var_1.x, 1188.0) * vec3<f32>(-395.0, 1141.0, 265.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2036.0, -2347.0, var_1.x))), vec3<bool>(func_5(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], var_2)).e.x, global0[_wgslsmith_index_u32(1798u, 7u)] == global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(13701u, 7u)])))), vec3<i32>(~(_wgslsmith_mod_i32(33569, 32222) & -16728), -2147483648, 1), 7751u, select(select(!vec3<bool>(false, var_2, var_2), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], false), func_5(vec4<bool>(var_2, global0[_wgslsmith_index_u32(var_0, 7u)], global0[_wgslsmith_index_u32(var_0, 7u)], var_2)).e, var_1.x > var_1.x), vec3<bool>(global0[_wgslsmith_index_u32(countOneBits(var_0), 7u)], any(vec4<bool>(var_2, global0[_wgslsmith_index_u32(28750u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], false)), -396.0 > 888.0)), vec3<bool>(var_2 && !true, global0[_wgslsmith_index_u32(0u, 7u)], !all(vec3<bool>(false, false, true))), !(!true) || false));
                let var_4 = ~(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 11402u), u_input.a.wy), abs(u_input.a.x), 4294967295u, 4294967295u) ^ vec4<u32>(var_0, 0u ^ 4294967295u, 16776u, _wgslsmith_div_u32(4294967295u, 2319u))) << (~vec4<u32>(func_8(func_9(var_2, vec4<i32>(-18012, -1, var_3.c.x, -1), Struct_2(var_3.b), 1), Struct_2(Struct_1(vec3<f32>(var_1.x, var_3.a, var_3.a))), _wgslsmith_f_op_f32(exp2(var_3.a)), func_5(vec4<bool>(var_2, false, false, true))), var_0, 13872u, ~(45303u & var_3.d)) % vec4<u32>(32u));
            }
            global0 = array<bool, 7>();
            for (var var_1 = 2147483647; var_1 <= -41294; global0 = array<bool, 7>()) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_5(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(var_0, 7u)])).c.x, max(5675, 0) ^ -17090, -8768), vec3<i32>((33724 >> (var_0 % 32u)) >> (42253u % 32u), _wgslsmith_div_i32(~(-49272), 16204), i32(-1) * -2147483648)) ^ abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(select(vec3<i32>(14509, -27410, -2147483648), vec3<i32>(2147483647, 11000, 1), false), -vec3<i32>(56407, -6996, 1))));
                let var_3 = func_9(global0[_wgslsmith_index_u32(1u ^ 56216u, 7u)], select(min(vec4<i32>(0, i32(-1) * -1, -var_2.x, func_7(Struct_1(vec3<f32>(-492.0, 417.0, -1422.0)), vec4<f32>(-1664.0, 111.0, 876.0, 516.0), 905.0)), reverseBits(firstTrailingBit(vec4<i32>(var_2.x, 2147483647, 2147483647, var_2.x)))), countOneBits(max(vec4<i32>(var_2.x, 0, var_2.x, var_2.x), vec4<i32>(-2147483648, var_2.x, var_2.x, -446))) & -vec4<i32>(7788, -1, var_2.x, 30937), vec4<bool>(global0[_wgslsmith_index_u32(func_5(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 7u)], global0[_wgslsmith_index_u32(9067u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], false)).d, 7u)], global0[_wgslsmith_index_u32(56253u, 7u)], global0[_wgslsmith_index_u32(~0u, 7u)], true)), func_9(false && ((global0[_wgslsmith_index_u32(16905u, 7u)] || global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) != global0[_wgslsmith_index_u32(abs(u_input.a.x), 7u)]), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1, -27670, var_2.x, 1), ~vec4<i32>(-2147483648, var_2.x, 2147483647, -24468), -vec4<i32>(-32315, var_2.x, var_2.x, 2147483647))), func_9(func_5(vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_0, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])).e.x, _wgslsmith_clamp_vec4_i32(max(vec4<i32>(0, 1, var_2.x, var_2.x), vec4<i32>(-19355, 38341, var_2.x, -6212)), vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) >> (vec4<u32>(4294967295u, 0u, u_input.a.x, var_0) % vec4<u32>(32u)), abs(vec4<i32>(var_2.x, 4701, 13700, var_2.x))), Struct_2(func_9(true, vec4<i32>(2147483647, var_2.x, var_2.x, 1), Struct_2(Struct_1(vec3<f32>(-856.0, 450.0, -643.0))), 2147483647).a), func_7(Struct_1(vec3<f32>(1089.0, 1000.0, -907.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(171.0, 373.0, -245.0, -2399.0)), 1131.0)), 8088), var_2.x);
                var_1 = ~var_2.x;
            }
            global0 = array<bool, 7>();
        }
        case 1: {
        }
        default: {
            var var_0 = vec4<i32>(firstTrailingBit(-1), 2147483647, ~_wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647, ~(-1), i32(-1) * -2147483648), firstLeadingBit(vec3<i32>(922, 2147483647, 0))), i32(-1) * -2600);
        }
    }
    var var_0 = select(vec4<bool>(func_5(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global0[_wgslsmith_index_u32(23287u, 7u)], true)).d >= 0u, -(~1) == (i32(-1) * -16538), global0[_wgslsmith_index_u32(~(~71220u >> (~u_input.a.x % 32u)), 7u)], all(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(104687u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], func_5(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false, true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])).e.x, !true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26774u, u_input.a.x, 1u), u_input.a.wyy), 7u)]), _wgslsmith_f_op_f32(-1983.0) < _wgslsmith_f_op_f32(f32(-1.0) * -1640.0)), vec4<bool>(!all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), ~_wgslsmith_mod_u32(53717u, 13076u) <= (_wgslsmith_div_u32(41821u, 0u) << ((0u & 9489u) % 32u)), global0[_wgslsmith_index_u32(1u, 7u)], func_5(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(3988u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), true)).e.x));
    global0 = array<bool, 7>();
    if (!(_wgslsmith_sub_i32(-1, -2147483648) >= _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(2147483647, -15050, 0, -11852)), vec4<i32>(-27122, -2147483647, firstTrailingBit(-2147483648), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, 28077), vec2<i32>(-1, 2147483647)))))) {
        if (var_0.x) {
            global0 = array<bool, 7>();
            global0 = array<bool, 7>();
            var_0 = !vec4<bool>(!false, !false, all(!var_0.wzx), any(!vec4<bool>(false, global0[_wgslsmith_index_u32(33590u, 7u)], false, var_0.x)));
            global0 = array<bool, 7>();
            global0 = array<bool, 7>();
        }
    }
    return select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_f_op_f32(-func_9(var_0.x, vec4<i32>(-1, 1, 0, -19831), Struct_2(Struct_1(vec3<f32>(1102.0, -1163.0, 272.0))), -2147483648).a.a.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1991.0))), !var_0.wxz, vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 28138u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 5831u)) << (u_input.a.x % 32u), 7u)], global0[_wgslsmith_index_u32(~min(~3603u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 34158u, u_input.a.x, u_input.a.x))), 7u)], select(false, select(false, false, all(var_0.xx)), var_0.x)));
}

fn func_10(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_3 {
    global0 = array<bool, 7>();
    for (var var_0 = 84851; arg_1.x; var_0 -= 1) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        global0 = array<bool, 7>();
    }
    global0 = array<bool, 7>();
    let var_0 = !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(16689u) & u_input.a.x, ~min(~u_input.a.x, u_input.a.x)), 7u)];
    if (!(!(_wgslsmith_sub_i32(-42625, 30524) <= -select(-1, 2147483647, false)))) {
        for (var var_1 = -597; ; var_1 -= 1) {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        }
        for (var var_1 = 1; var_1 < 2147483647; var_1 += 1) {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            var var_2 = _wgslsmith_f_op_f32(-arg_0.a.x);
            var_1 = -23281;
            let var_3 = func_5(!(!select(vec4<bool>(var_0, true, var_0, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(85301u, 7u)], arg_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(22887u, 7u)], true, true, var_0)), all(arg_1))));
        }
        global0 = array<bool, 7>();
    }
    return Struct_3(_wgslsmith_f_op_f32(step(270.0, _wgslsmith_f_op_f32(f32(-1.0) * -1430.0))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(arg_0.a.x, -734.0), func_9(arg_1.x, vec4<i32>(2453, 48277, 10463, -1), Struct_2(arg_0), -28772).a.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))))), -firstTrailingBit(-(~vec3<i32>(19079, 1, 13880))), u_input.a.x, arg_1);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<bool>) -> vec2<f32> {
    loop {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        continue;
    }
    for (var var_0: i32; ; var_0 -= 1) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        var_0 = 1;
    }
    for (var var_0: i32; arg_2.x; var_0 += 1) {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        continue;
    }
    let var_0 = true;
    let var_1 = func_10(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-732.0, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(round(-879.0))))), select(select(!select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<bool>(var_0, global0[_wgslsmith_index_u32(1u, 7u)], var_0), vec3<bool>(arg_2.x, var_0, arg_2.x)), !vec3<bool>(var_0, arg_2.x, true), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), func_3(), func_5(vec4<bool>(global0[_wgslsmith_index_u32(14774u, 7u)], arg_2.x, true, false)).b.a.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + _wgslsmith_f_op_f32(select(-1797.0, 479.0, true)))));
    return _wgslsmith_f_op_vec2_f32(trunc(arg_0));
}

fn func_11(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = func_9(all(!func_5(vec4<bool>(false, true, false, false)).e), min(abs(-vec4<i32>(46544, -2147483648, -54610, 2147483647)), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(38388, 39505, 2147483647, -1), vec4<i32>(1, -1, -2147483648, -1), vec4<i32>(-42624, -22539, 2147483647, 0)))), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1237.0, arg_3.a.a.x, -2262.0), vec3<f32>(arg_2.a.x, arg_2.a.x, arg_0.x)))), 3873);
    if (!any(!func_5(vec4<bool>(false, true, arg_1, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])).e) || arg_1) {
        let var_1 = reverseBits(vec4<u32>(u_input.a.x, u_input.a.x << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~70636u, select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(3741u, 7u)]), abs(u_input.a.x)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.xyw, u_input.a.yyx), vec3<u32>(u_input.a.x, u_input.a.x, 0u))), ~u_input.a.x));
    }
    global0 = array<bool, 7>();
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.wx, vec2<u32>(0u, u_input.a.x), u_input.a.zx), ~u_input.a.zy), 109729u, max(_wgslsmith_mult_u32(u_input.a.x, 18526u) << (57481u % 32u), abs(0u))), reverseBits(~u_input.a));
    global0 = array<bool, 7>();
    return abs(u_input.a.x);
}

fn func_1() -> vec3<bool> {
    global0 = array<bool, 7>();
    if (global0[_wgslsmith_index_u32(~u_input.a.x, 7u)]) {
        let var_0 = Struct_3(_wgslsmith_f_op_f32(step(-901.0, 1141.0)), Struct_1(vec3<f32>(-1134.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1509.0), _wgslsmith_f_op_f32(sign(470.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -707.0)))), firstTrailingBit(max(vec3<i32>(-1) * -vec3<i32>(0, 42382, -9915), max(-vec3<i32>(-1, 1, 10612), max(vec3<i32>(0, 10066, 0), vec3<i32>(-1, 1, 31194))))), (~u_input.a.x >> (~max(1u, u_input.a.x) % 32u)) << (max(~u_input.a.x, func_11(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(935.0, 116.0), u_input.a.x, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true))), global0[_wgslsmith_index_u32(abs(u_input.a.x), 7u)], Struct_1(vec3<f32>(-128.0, -258.0, -2376.0)), Struct_2(Struct_1(vec3<f32>(463.0, 526.0, -1890.0))))) % 32u), vec3<bool>(true, func_3().x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]));
        var var_1 = !(!func_10(Struct_1(var_0.b.a), vec3<bool>(true, !var_0.e.x, false)).e);
        switch (func_4(-2147483647, abs(vec4<u32>(~u_input.a.x, u_input.a.x, 12470u, 1u)), func_9(true, _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_0.c.x, 1191, var_0.c.x, 2147483647) << (u_input.a % vec4<u32>(32u))), ~(-vec4<i32>(26069, var_0.c.x, -17001, -1))), Struct_2(var_0.b), var_0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2695.0, var_0.b.a.x, var_0.b.a.x, var_0.a) * vec4<f32>(var_0.a, var_0.a, -1000.0, var_0.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1517.0, var_0.b.a.x, var_0.a, var_0.a) * vec4<f32>(var_0.b.a.x, var_0.a, var_0.b.a.x, 1000.0))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.x, var_0.a, var_0.a, var_0.b.a.x) * vec4<f32>(-311.0, var_0.b.a.x, 672.0, 117.0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, -924.0, var_0.a, -482.0))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, var_0.a, -331.0, var_0.b.a.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000.0, -283.0, var_0.b.a.x, var_0.b.a.x), vec4<f32>(655.0, var_0.b.a.x, -1000.0, 1000.0))))))))) {
            default: {
                var var_2 = var_0;
                var var_3 = var_1.yy;
            }
        }
    }
    switch (_wgslsmith_add_i32(1, -_wgslsmith_mult_i32(_wgslsmith_sub_i32(1 << (34967u % 32u), func_10(Struct_1(vec3<f32>(1520.0, 746.0, -485.0)), vec3<bool>(global0[_wgslsmith_index_u32(61683u, 7u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])).c.x), -57639))) {
        case -2147483648: {
        }
        case 2147483647: {
            if (global0[_wgslsmith_index_u32(func_5(vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 6400u)), countOneBits(_wgslsmith_add_vec2_u32(u_input.a.zw, u_input.a.wy))), 7u)], (~37371u < 4294967295u) | all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), select(154.0 <= _wgslsmith_f_op_f32(549.0 * -700.0), !all(vec3<bool>(true, true, false)), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))).d, 7u)]) {
                let var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000.0)))), 1208.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101.0 - 433.0)))));
                global0 = array<bool, 7>();
                let var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -817.0), var_0.a.a.x)), var_0.a, (min(vec3<i32>(1, -2147483648, 2147483647), func_10(var_0.a, vec3<bool>(false, true, false)).c) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.ww), ~3958u, 90859u) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(reverseBits(-vec3<i32>(3198, 11521, -1)), _wgslsmith_mod_vec3_i32(-vec3<i32>(1, 16928, 16688), reverseBits(vec3<i32>(-2147483648, 1, 1084)))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(~108038u, u_input.a.x ^ u_input.a.x)), 1u), !vec3<bool>(!global0[_wgslsmith_index_u32(1u | 4294967295u, 7u)], global0[_wgslsmith_index_u32(~(~u_input.a.x), 7u)], global0[_wgslsmith_index_u32(~(~73861u), 7u)]));
                global0 = array<bool, 7>();
                var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(func_9(true, vec4<i32>(-1, var_1.c.x, var_1.c.x, -2147483648), Struct_2(Struct_1(var_1.b.a)), var_1.c.x).a.a.x, var_0.a.a.x), 1u, vec2<bool>(!true, false)))));
            }
            global0 = array<bool, 7>();
            let var_0 = vec2<u32>(_wgslsmith_mod_u32(~(~_wgslsmith_mult_u32(4294967295u, 1u)), 1u), u_input.a.x);
            global0 = array<bool, 7>();
            global0 = array<bool, 7>();
        }
        case 0: {
            global0 = array<bool, 7>();
        }
        case 37837: {
            for (var var_0 = 54497; var_0 >= -2147483648; var_0 += 1) {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                let var_1 = _wgslsmith_div_vec2_f32(func_10(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(309.0, -420.0, -297.0) * vec3<f32>(2410.0, 877.0, 636.0)))), vec3<bool>(func_5(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 7u)], true), vec4<bool>(global0[_wgslsmith_index_u32(12664u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(100246u, 7u)], true, true))).e.x, !all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, global0[_wgslsmith_index_u32(55560u, 7u)])), !(!global0[_wgslsmith_index_u32(4294967295u, 7u)]))).b.a.yz, func_10(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(372.0, 100.0, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), -866.0, 1322.0)), func_10(Struct_1(vec3<f32>(-2322.0, -1310.0, -1000.0)), !vec3<bool>(global0[_wgslsmith_index_u32(55735u, 7u)], false, true)).e).b.a.zz);
                global0 = array<bool, 7>();
                var var_2 = all(!func_10(func_5(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], false)).b, !vec3<bool>(false, true, true)).e.xy);
            }
        }
        default: {
        }
    }
    switch (-2147483648) {
        case -1: {
            for (var var_0 = -2147483648; ; global0 = array<bool, 7>()) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                var var_1 = -(~_wgslsmith_add_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(3142, 2147483647, 2147483647, -2147483648), vec4<i32>(0, 65373, -1, -86345))), -2147483648));
                var var_2 = func_10(func_9(!(-17984 == 1), -vec4<i32>(-4866, -2147483648, 1, 0) | ~(vec4<i32>(-5806, -1, 2147483647, 48287) >> (vec4<u32>(u_input.a.x, 6465u, 0u, 0u) % vec4<u32>(32u))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(374.0, 852.0, -688.0) + vec3<f32>(231.0, 1454.0, -1310.0)))), func_10(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-506.0, -1334.0, -1177.0))), vec3<bool>(true, func_5(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false)).e.x, false | global0[_wgslsmith_index_u32(4294967295u, 7u)])).c.x).a, select(func_10(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1972.0, 1000.0, -1132.0), vec3<f32>(-988.0, 198.0, -709.0))), vec3<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false)), global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(~32144u, 7u)])).e, !vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)] == false, global0[_wgslsmith_index_u32(11537u, 7u)] | global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -20537 < -38653), vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 36523u <= u_input.a.x)));
                var_2 = func_10(Struct_1(_wgslsmith_f_op_vec3_f32(-func_10(Struct_1(var_2.b.a), vec3<bool>(global0[_wgslsmith_index_u32(11456u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], var_2.e.x)).b.a)), !vec3<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 7u)], all(select(var_2.e, vec3<bool>(var_2.e.x, true, true), var_2.e)), !true == !var_2.e.x));
            }
            global0 = array<bool, 7>();
            let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-165.0, 112.0, 1066.0) * vec3<f32>(231.0, -356.0, -1000.0)) * vec3<f32>(935.0, -125.0, 1244.0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(384.0, 1933.0, 1000.0) - vec3<f32>(-724.0, 1000.0, -416.0)))))));
            if (true) {
            }
            if (u_input.a.x >= 1u) {
                var var_1 = ~(select(min(~(-1186), -28370), (2147483647 << (20038u % 32u)) << ((57759u << (u_input.a.x % 32u)) % 32u), 29065u == _wgslsmith_add_u32(u_input.a.x, 1u)) | -35109);
                global0 = array<bool, 7>();
                let var_2 = min(-14308 << (26206u % 32u), _wgslsmith_add_i32(-1, firstLeadingBit(func_5(select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(33461u, 7u)]), vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(u_input.a.x, 7u)])).c.x)));
                var var_3 = func_5(vec4<bool>(!func_5(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(1267u, 7u)])).e.x, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(var_0.a.x, 1039.0)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(962.0, var_0.a.x)), !(!false), max(func_5(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)])).c.x, countOneBits(var_2)) < ~func_7(Struct_1(var_0.a), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), 442.0))).b;
            }
        }
        default: {
            let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2024.0, _wgslsmith_f_op_f32(-1241.0), _wgslsmith_f_op_f32(-1607.0), _wgslsmith_f_op_f32(step(648.0, 579.0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(615.0, -291.0, -1456.0, 937.0)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-561.0, -712.0, 1130.0, 613.0)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000.0, 569.0, 475.0, -355.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1118.0, -555.0, -230.0, -233.0) * vec4<f32>(1000.0, 337.0, -1099.0, -1159.0)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(552.0, -182.0, -495.0, 617.0), vec4<f32>(-1437.0, 1000.0, 114.0, -669.0), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1638.0, 1137.0, -873.0, 337.0), vec4<f32>(360.0, 241.0, -842.0, -468.0)) + vec4<f32>(-359.0, 934.0, -368.0, -859.0))))));
            for (var var_1 = 22644; var_1 >= -35273; var_1 = min(min(1, -select(func_5(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])).c.x, -13834, 1u <= 42754u)), ~(reverseBits(-13666) ^ -(2147483647 << (u_input.a.x % 32u))))) {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(func_7(func_10(Struct_1(var_0.wyz), vec3<bool>(global0[_wgslsmith_index_u32(32290u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false)).b, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), func_10(func_5(vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], true, true, false)).b, func_5(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(11676u, 7u)])).e).c.x), i32(-1) * -56197);
            }
        }
    }
    global0 = array<bool, 7>();
    return vec3<bool>(func_10(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(-417.0)), _wgslsmith_f_op_f32(sign(-630.0)), 1000.0)), select(vec3<bool>(true && global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(func_11(vec2<f32>(-1000.0, -409.0), global0[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_1(vec3<f32>(878.0, 1597.0, 470.0)), Struct_2(Struct_1(vec3<f32>(364.0, 442.0, -426.0)))), 7u)], !false), func_5(!vec4<bool>(false, global0[_wgslsmith_index_u32(15001u, 7u)], false, global0[_wgslsmith_index_u32(1u, 7u)])).e, !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(693u, 7u)]), true))).e.x, false, false);
}

fn func_12(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = func_5(!select(vec4<bool>(select(arg_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_1.x), all(arg_1.zx), true, true), vec4<bool>(!false, true, select(arg_1.x, arg_1.x, arg_1.x), false), vec4<bool>(-758.0 <= -1087.0, true, !global0[_wgslsmith_index_u32(4294967295u, 7u)], false))).b;
    for (var var_1 = 1; true; global0 = array<bool, 7>()) {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
        switch (firstLeadingBit(60606 | _wgslsmith_add_i32(~0 >> (~u_input.a.x % 32u), firstLeadingBit(_wgslsmith_mult_i32(-27447, 26052))))) {
            case 2147483647: {
                return StorageBuffer(-(~(-22256)), abs(vec3<u32>(~(0u >> (u_input.a.x % 32u)), u_input.a.x, u_input.a.x)), -564.0);
            }
            case -41315: {
                var var_2 = _wgslsmith_f_op_f32(-func_9(true, -_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-70656, 2147483647, -19531, 42723), vec4<i32>(2147483647, 0, -1, 27049)), ~vec4<i32>(79217, 11479, 2147483647, -1), ~vec4<i32>(24248, 1810, 2147483647, -24253)), func_9(global0[_wgslsmith_index_u32(max(~u_input.a.x, func_5(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false, false)).d), 7u)], vec4<i32>(42091, 2147483647, 2147483647, -15033) >> (u_input.a % vec4<u32>(32u)), func_9(false, vec4<i32>(1, -1, -18624, 56413), Struct_2(arg_2), _wgslsmith_sub_i32(-52334, 2147483647)), max(abs(0), -4724)), 1).a.a.x);
            }
            case 0: {
            }
            case 58678: {
            }
            default: {
                var_1 = 17131 | firstTrailingBit(-(~abs(1)));
                let var_2 = !vec4<bool>((_wgslsmith_f_op_f32(f32(-1.0) * -2492.0) > _wgslsmith_div_f32(-467.0, 738.0)) && global0[_wgslsmith_index_u32(func_11(arg_2.a.yy, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], Struct_1(arg_2.a), Struct_2(arg_2)) >> (~u_input.a.x % 32u), 7u)], arg_1.x, true, true || func_10(Struct_1(var_0.a), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true)).e.x);
                var var_3 = !select(!var_2, !vec4<bool>(all(vec2<bool>(false, arg_1.x)), var_2.x, false, !var_2.x), global0[_wgslsmith_index_u32(~4294967295u, 7u)]);
                let var_4 = Struct_1(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(432.0 * _wgslsmith_f_op_f32(min(739.0, 1595.0))) * _wgslsmith_f_op_f32(f32(-1.0) * -1390.0)), var_0.a.x));
            }
        }
        let var_2 = arg_1.x;
        loop {
            if (LOOP_COUNTERS[29u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
        }
    }
    let var_1 = func_5(!select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_1.x), vec4<bool>(global0[_wgslsmith_index_u32(8414u, 7u)], true, global0[_wgslsmith_index_u32(22070u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), !vec4<bool>(false, arg_1.x, global0[_wgslsmith_index_u32(16342u, 7u)], true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], true, false, true)), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(31671u, 7u)], arg_1.x, global0[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(true, false, true, arg_1.x), true), !vec4<bool>(true, arg_1.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), select(select(vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, true, false, arg_1.x)), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(57091u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), vec4<bool>(false, arg_1.x, true, global0[_wgslsmith_index_u32(51214u, 7u)]), vec4<bool>(false, false, false, false)), !vec4<bool>(true, true, false, false)))).b;
    for (var var_2: i32; !false; var_2 += 1) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        loop {
            if (LOOP_COUNTERS[31u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
            var_0 = arg_2;
            let var_3 = vec3<bool>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -621.0), -689.0) + arg_2.a.x) <= arg_2.a.x, all(arg_1.xy));
            let var_4 = var_3.x;
            break;
        }
        switch (~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-29067, 0), _wgslsmith_add_i32(-2147483648, 2147483647), select(-1981, 10760, true)), ~func_10(Struct_1(vec3<f32>(-1168.0, 2563.0, arg_0.x)), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])).c) << (~(~func_11(arg_2.a.xy, func_5(vec4<bool>(true, arg_1.x, true, false)).e.x, var_1, func_9(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], vec4<i32>(-2147483648, 35318, -1, -24502), Struct_2(Struct_1(arg_2.a)), 2147483647))) % 32u)) {
            case 5119: {
            }
            case -39417: {
            }
            default: {
                continue;
            }
        }
        loop {
            if (LOOP_COUNTERS[32u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
            var_0 = arg_2;
            continue;
        }
        for (var var_3 = reverseBits(_wgslsmith_div_i32(-_wgslsmith_add_i32(19358, -61533), 13934)) << (u_input.a.x % 32u); ; var_3 -= 1) {
            if (LOOP_COUNTERS[33u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
            var_3 = func_5(!select(vec4<bool>(false, u_input.a.x != u_input.a.x, !false, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_1.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), select(vec4<bool>(false, arg_1.x, arg_1.x, false), select(vec4<bool>(true, arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], arg_1.x), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), true), vec4<bool>(true, global0[_wgslsmith_index_u32(7142u, 7u)], arg_1.x, global0[_wgslsmith_index_u32(26898u, 7u)])))).c.x;
            break;
        }
    }
    let var_2 = func_9(func_3().x, -vec4<i32>(~(-28730) >> (4294967295u % 32u), _wgslsmith_add_i32(-1, _wgslsmith_clamp_i32(0, -1, 0)), (-9993 & -1) ^ -65879, ~(-35206 >> (4294967295u % 32u))), func_9(func_3().x, ~(vec4<i32>(-1, 2147483647, 44972, 2147483647) << (vec4<u32>(1u, 1u, 5801u, u_input.a.x) % vec4<u32>(32u))), Struct_2(arg_2), 44265), _wgslsmith_add_i32(-1, _wgslsmith_mult_i32(countOneBits(_wgslsmith_div_i32(1, 1)), 2147483647)));
    return StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483648, -2147483648, 1) | vec3<i32>(35090, 0, 557), vec3<i32>(-2597, 39060, 2147483647)), max(vec3<i32>(-1, -2147483648, 2147483647), vec3<i32>(0, -37636, -35845))), _wgslsmith_dot_vec4_i32(vec4<i32>(~1, 0, ~(-43730), countOneBits(22370)), vec4<i32>(func_7(arg_2, vec4<f32>(-571.0, 604.0, -339.0, arg_2.a.x), 1285.0), firstTrailingBit(0), reverseBits(-1), -9229 & 2147483647))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~min(u_input.a.wyx, vec3<u32>(0u, 4294967295u, 0u)), abs(u_input.a.zyz)), vec3<u32>(_wgslsmith_sub_u32(~u_input.a.x, ~u_input.a.x), ~u_input.a.x, ~_wgslsmith_mod_u32(11408u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_12(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-742.0, 2532.0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000.0, -2430.0))))))), select(!vec3<bool>(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 7u)], global0[_wgslsmith_index_u32(~801u, 7u)], any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), select(vec3<bool>(false, false | false, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, false, true))), func_1(), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), any(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], true), vec4<bool>(global0[_wgslsmith_index_u32(35884u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, global0[_wgslsmith_index_u32(1u, 7u)]), true))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(628.0, 514.0, 2191.0) * vec3<f32>(-429.0, 1698.0, 342.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1592.0, 215.0, 766.0) + vec3<f32>(-679.0, -678.0, 1000.0)), false && global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))));
}

