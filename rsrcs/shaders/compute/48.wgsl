// {"0:0":[208,73,75,249]}
// Seed: 6192799410695289425

struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 506u, 4294967295u, 77988u), vec4<u32>(22972u, 51285u, 1u, 62026u), vec4<u32>(77342u, 35511u, 23263u, 0u), vec4<u32>(4294967295u, 21448u, 63759u, 17789u), vec4<u32>(1u, 59070u, 59841u, 48643u), vec4<u32>(25429u, 17133u, 1u, 1u), vec4<u32>(42311u, 37939u, 24254u, 26740u), vec4<u32>(22423u, 14657u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 77800u, 0u), vec4<u32>(1u, 1u, 1u, 11205u), vec4<u32>(0u, 8941u, 0u, 1u), vec4<u32>(1u, 49938u, 62882u, 71765u), vec4<u32>(63992u, 0u, 2248u, 1u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(1u, 0u, 69132u, 52342u), vec4<u32>(1u, 1u, 1u, 27236u), vec4<u32>(24531u, 1u, 4294967295u, 1u), vec4<u32>(33350u, 1724u, 4294967295u, 6548u), vec4<u32>(4294967295u, 16905u, 29040u, 50184u), vec4<u32>(8237u, 1u, 1u, 29909u), vec4<u32>(4294967295u, 96610u, 0u, 73508u), vec4<u32>(7045u, 13453u, 22373u, 0u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(0u, 4294967295u, 0u, 3788u));

var<private> global1: array<f32, 1> = array<f32, 1>(-1000.0);

var<private> global2: vec3<i32>;

var<private> global3: bool = false;

var<private> LOOP_COUNTERS: array<u32, 31>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec3<i32>) -> vec3<u32> {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global3 = arg_1.x;
    }
    global1 = array<f32, 1>();
    if (true) {
        for (var var_0 = 1; (1 ^ (30477 ^ global2.x)) <= min(2147483647, -29788); var_0 += 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            continue;
        }
        global2 = select(~abs(vec3<i32>(44653, arg_3.x, -763 << (arg_0.a % 32u))), -(~(~vec3<i32>(-1, 11239, -13291)) | select(~arg_3, vec3<i32>(63512, -2147483648, arg_3.x), !arg_1.x)), !vec3<bool>(arg_1.x, select(-23066, global2.x, arg_1.x) != global2.x, any(select(vec4<bool>(false, false, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), true))));
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_0 = arg_0;
            global1 = array<f32, 1>();
            continue;
        }
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        continue;
    }
    global1 = array<f32, 1>();
    return ~(max(arg_2.a, ~vec3<u32>(arg_2.a.x, arg_2.a.x, arg_0.a) << (_wgslsmith_clamp_vec3_u32(arg_2.a, vec3<u32>(26403u, arg_0.a, 0u), vec3<u32>(4294967295u, arg_0.a, arg_2.a.x)) % vec3<u32>(32u))) | arg_2.a);
}

fn func_7(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = arg_0.a.x;
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_1 = vec3<bool>(any(vec3<bool>(true, arg_1.x, -1614.0 == _wgslsmith_f_op_f32(max(-417.0, arg_2.x)))), true, all(select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(!arg_1.x, arg_1.x, arg_1.x, 7978 != -2147483648), true)));
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            global3 = !all(vec4<bool>(global1[_wgslsmith_index_u32(~0u, 1u)] <= 1618.0, select(!true, var_1.x, false | true), ~arg_3.x < 10528u, !false));
            global3 = global2.x != global2.x;
        }
        let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(arg_0.a, _wgslsmith_mult_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, u_input.a, arg_3.x), arg_0.a), vec3<u32>(var_0, u_input.a, 47540u), true), (arg_0.a >> (arg_0.a % vec3<u32>(32u))) & select(vec3<u32>(4294967295u, u_input.a, var_0), arg_0.a, var_1.x))));
    }
    for (var var_1 = 9459; !(!(!all(!vec2<bool>(true, arg_1.x)))); var_1 += 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), global1[_wgslsmith_index_u32(28483u, 1u)], _wgslsmith_f_op_f32(max(arg_2.x, arg_2.x))), arg_2)) - arg_2);
        if (!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(20984u, 38299u), 1u)]))) <= -757.0)) {
            let var_3 = ~arg_0.a.yz;
            break;
        }
        global1 = array<f32, 1>();
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    for (; ; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        global0 = array<vec4<u32>, 24>();
        global3 = any(!(!arg_1));
        global3 = !true;
        var var_1 = vec4<bool>(arg_1.x, arg_1.x, all(vec2<bool>(true, false)), arg_1.x & true);
    }
    return vec2<i32>(abs(_wgslsmith_mod_i32(-max(1, global2.x), _wgslsmith_add_i32(global2.x, 0) << (~0u % 32u))), firstTrailingBit(~abs(-10470)));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    for (var var_0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(28546, i32(-1) * -16902, _wgslsmith_div_i32(global2.x, global2.x), global2.x), vec4<i32>(~global2.x, -27371, -1, 61617 << (9813u % 32u))) ^ 1; var_0 >= 23128; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        for (var var_1 = 1; ; var_1 -= 1) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            var_1 = global2.x;
            var var_2 = func_7(Struct_3(_wgslsmith_mod_vec3_u32(func_6(Struct_2(u_input.a), arg_2.zz, Struct_3(vec3<u32>(23440u, u_input.a, 0u)), -vec3<i32>(18404, global2.x, 13818)), (vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(4294967295u, 0u, 65134u) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 60306u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), select(arg_2, vec4<bool>(all(!arg_2), false, arg_2.x & (false & false), _wgslsmith_f_op_f32(exp2(2081.0)) > _wgslsmith_f_op_f32(arg_1 * arg_1)), vec4<bool>(!true, arg_2.x, (false & true) & arg_2.x, all(select(vec2<bool>(arg_2.x, false), arg_2.xx, arg_2.xx)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(arg_0, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1314.0, arg_1, arg_1))), true)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(897.0, global1[_wgslsmith_index_u32(arg_0, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1251.0, -430.0, 425.0)))))), vec2<u32>(~_wgslsmith_clamp_u32(u_input.a ^ arg_0, abs(u_input.a), 38222u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, arg_0), min(vec2<u32>(6514u, u_input.a), vec2<u32>(4294967295u, u_input.a)) | _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 6299u), vec2<u32>(u_input.a, 0u)))));
            var var_3 = Struct_3(vec3<u32>(u_input.a, ~(~51441u), _wgslsmith_div_u32(1u, u_input.a | _wgslsmith_add_u32(26327u, arg_0))));
            var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 1u)])));
            var var_5 = firstTrailingBit(4294967295u);
        }
        global2 = vec3<i32>(global2.x, 24739 & ~(~(-1 & 2147483647)), 16778);
        var var_1 = vec2<f32>(global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~(~1u), _wgslsmith_div_u32(1u, min(4294967295u, u_input.a))), ~u_input.a), 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]);
        let var_2 = Struct_3(~min(~(vec3<u32>(u_input.a, 38374u, 1u) >> (vec3<u32>(u_input.a, 4294967295u, arg_0) % vec3<u32>(32u))), max(vec3<u32>(u_input.a, 2505u, arg_0), vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, arg_0, arg_0) % vec3<u32>(32u)))));
    }
    if (false) {
        global1 = array<f32, 1>();
        global0 = array<vec4<u32>, 24>();
        for (var var_0 = _wgslsmith_add_i32(min(countOneBits(global2.x), ~(global2.x ^ -34027)), global2.x); ; var_0 -= 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            break;
        }
        global1 = array<f32, 1>();
    }
    let var_0 = Struct_3(~countOneBits(abs(vec3<u32>(u_input.a, u_input.a, 1u) ^ vec3<u32>(1u, 33313u, 1u))));
    let var_1 = Struct_3(abs(select(vec3<u32>(min(0u, arg_0), arg_0 | arg_0, 15256u), _wgslsmith_sub_vec3_u32(var_0.a, ~var_0.a), arg_2.xyw)));
    var var_2 = Struct_2(var_0.a.x);
    return Struct_1(select(!vec4<bool>(any(vec3<bool>(true, false, false)), all(vec2<bool>(arg_2.x, arg_2.x)), any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), any(arg_2.zx)), vec4<bool>(select(arg_2.x, arg_2.x, any(vec4<bool>(arg_2.x, false, arg_2.x, true))), true, false, arg_2.x), vec4<bool>(!any(vec2<bool>(arg_2.x, false)), true, true, select(true, true, false) & all(arg_2.wxx))), func_7(var_0, arg_2, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(711.0, global1[_wgslsmith_index_u32(u_input.a, 1u)], arg_1) + vec3<f32>(1696.0, 461.0, 1249.0)) - vec3<f32>(955.0, -266.0, global1[_wgslsmith_index_u32(4294967295u, 1u)])))), max(_wgslsmith_mult_vec2_u32(~var_1.a.zx, vec2<u32>(111308u, var_0.a.x) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), vec2<u32>(42412u, firstTrailingBit(31294u)))));
}

fn func_4(arg_0: u32) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_0 = global2.x;
        for (var var_1: i32; ; ) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            global0 = array<vec4<u32>, 24>();
        }
    }
    var var_0 = !vec3<bool>(select(1u != arg_0, true, false == true) || true, !(!any(vec3<bool>(true, false, true))), !all(!vec4<bool>(true, false, true, true)));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(~1u, 9268u), u_input.a);
    let var_2 = func_5(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-937.0))), vec4<bool>(var_0.x, false, false, var_0.x));
    return func_5(0u, _wgslsmith_f_op_f32(trunc(2324.0)), !var_2.a);
}

fn func_8(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global2 = -((vec3<i32>(-1) * -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, -8787), vec3<i32>(1, -47736, global2.x))) & vec3<i32>(abs(global2.x), -_wgslsmith_mult_i32(48831, arg_0.b.x), _wgslsmith_dot_vec2_i32(func_7(arg_1, vec4<bool>(arg_0.a.x, true, true, true), vec3<f32>(global1[_wgslsmith_index_u32(28108u, 1u)], global1[_wgslsmith_index_u32(17679u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), arg_1.a.yx), vec2<i32>(2147483647, arg_0.b.x))));
    if (true) {
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            global0 = array<vec4<u32>, 24>();
            let var_0 = ~0u;
        }
        var var_0 = func_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(0u, 24u)], firstTrailingBit(global0[_wgslsmith_index_u32(9150u, 24u)])) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(20230u, u_input.a), vec2<u32>(1u, arg_1.a.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.x, 19144u), vec2<u32>(arg_1.a.x, 95377u), vec2<u32>(arg_1.a.x, 29011u))) % 32u), arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.a.x, 1u)])) * _wgslsmith_f_op_f32(round(1000.0))), func_5(2333u, -541.0, !vec4<bool>(!arg_0.a.x, !true, arg_0.a.x || false, true)).a);
        global2 = _wgslsmith_sub_vec3_i32(-vec3<i32>(-41614, func_5(16111u ^ arg_1.a.x, _wgslsmith_f_op_f32(select(-543.0, 105.0, arg_0.a.x)), func_5(u_input.a, global1[_wgslsmith_index_u32(15251u, 1u)], var_0.a).a).b.x, firstLeadingBit(abs(var_0.b.x))), -(vec3<i32>(-global2.x, 0 ^ var_0.b.x, _wgslsmith_add_i32(-1, global2.x)) << ((arg_1.a << (~vec3<u32>(4294967295u, arg_1.a.x, arg_1.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
        for (; ; ) {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            let var_1 = _wgslsmith_f_op_f32(trunc(198.0));
            let var_2 = arg_0;
            var var_3 = !(31974u < ~arg_1.a.x);
            global0 = array<vec4<u32>, 24>();
        }
    }
    var var_0 = !arg_0.a.yx;
    global2 = select(countOneBits(_wgslsmith_clamp_vec3_i32(abs(max(vec3<i32>(arg_0.b.x, 20558, -2147483648), vec3<i32>(global2.x, global2.x, global2.x))), _wgslsmith_add_vec3_i32(vec3<i32>(-1, 0, 1), vec3<i32>(global2.x, arg_0.b.x, -1)) << (vec3<u32>(arg_1.a.x, 1u, arg_1.a.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-75330, -2147483648, -1), max(vec3<i32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<i32>(global2.x, -2147483648, arg_0.b.x))))), select(vec3<i32>(arg_0.b.x, ~(-43705), ~34761), firstLeadingBit(-min(vec3<i32>(-43654, -46909, 2147483647), vec3<i32>(global2.x, 28114, arg_0.b.x))), func_5(~50422u | arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.a.x, 1u)] * global1[_wgslsmith_index_u32(u_input.a, 1u)]) + global1[_wgslsmith_index_u32(~1u, 1u)]), func_5(~1u, 1232.0, select(arg_0.a, vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0.a.x), arg_0.a)).a).a.yyy), vec3<bool>(var_0.x, any(vec4<bool>(2751.0 != -1345.0, true, global1[_wgslsmith_index_u32(arg_1.a.x, 1u)] <= global1[_wgslsmith_index_u32(u_input.a, 1u)], any(vec2<bool>(arg_0.a.x, false)))), true));
    let var_1 = func_6(Struct_2(1u & ~(~u_input.a)), !func_5(2820u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 1u)]))), vec4<bool>(var_0.x, !false, false, false)).a.xy, Struct_3(reverseBits(abs(arg_1.a))), vec3<i32>(-30108, arg_0.b.x, ~_wgslsmith_mult_i32(global2.x, arg_0.b.x)) >> (vec3<u32>(~(~45921u), arg_1.a.x, 0u) % vec3<u32>(32u))).x;
    return !(!all(arg_0.a));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> Struct_3 {
    global0 = array<vec4<u32>, 24>();
    if (func_8(func_4(u_input.a), Struct_3(abs(~(~vec3<u32>(u_input.a, 84460u, u_input.a)))))) {
        let var_0 = select(!func_4(~u_input.a).a.xzz, vec3<bool>(true, arg_1, all(!vec2<bool>(true, arg_1))), !(global1[_wgslsmith_index_u32(1u, 1u)] <= global1[_wgslsmith_index_u32(0u, 1u)]));
    }
    switch (29716) {
        default: {
            switch (i32(-1) * -global2.x) {
                default: {
                    global1 = array<f32, 1>();
                    let var_0 = 1u;
                    var var_1 = vec4<bool>(false, arg_1 && (1u >= 19235u), !any(!(!vec3<bool>(arg_1, true, arg_1))), arg_1);
                    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(36258u, var_0), _wgslsmith_mult_vec2_u32(abs(~(~vec2<u32>(var_0, u_input.a))), select(vec2<u32>(0u, var_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 1u), vec2<u32>(52400u, var_0)), !true) << ((~vec2<u32>(1858u, var_0) << (~vec2<u32>(4294967295u, var_0) % vec2<u32>(32u))) % vec2<u32>(32u))));
                }
            }
        }
    }
    return Struct_3(~(~vec3<u32>(_wgslsmith_add_u32(1u, 17684u), u_input.a << (u_input.a % 32u), ~61363u)));
}

fn func_9(arg_0: Struct_3) -> u32 {
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    var var_0 = Struct_2(arg_0.a.x);
    let var_1 = -_wgslsmith_div_i32(1, 2147483647);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2313.0)))) <= _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(27168u, u_input.a)), 0u), 1u)], 889.0));
    var var_3 = firstLeadingBit(firstTrailingBit(arg_0.a.yy));
    return var_0.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(vec3<u32>(~_wgslsmith_mult_u32(u_input.a, 1u), u_input.a, func_9(func_3(vec3<i32>(0, 2147483647, -18807), false))) >> (~vec3<u32>(_wgslsmith_mod_u32(43128u, u_input.a), ~0u, 0u) % vec3<u32>(32u)));
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        switch (select(_wgslsmith_sub_i32(global2.x, 0), _wgslsmith_sub_i32(global2.x, ~(~(~global2.x))), true)) {
            case -7062: {
                var var_1 = reverseBits(~(u_input.a >> (u_input.a % 32u)));
            }
            case 16932: {
                var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(603.0, -329.0)))) + global1[_wgslsmith_index_u32(22092u, 1u)]), _wgslsmith_f_op_f32(select(389.0, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(28491u, 1u)], 114.0, all(vec4<bool>(false, true, true, false)))), all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-141.0 + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 1u)]))))));
                let var_2 = -global2.x;
                global2 = max(_wgslsmith_sub_vec3_i32(-abs(vec3<i32>(global2.x, var_2, global2.x)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, global2.x, var_2), -vec3<i32>(-2147483648, -1, var_2))), select(~(vec3<i32>(global2.x, -1, global2.x) ^ vec3<i32>(1, global2.x, 1)), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2, global2.x, 14178), vec3<i32>(-1, 24966, var_2), vec3<i32>(44736, global2.x, global2.x)), vec3<i32>(var_2, -38542, 2147483647)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), !true))) >> (var_0.a % vec3<u32>(32u));
                continue;
            }
            case 32686: {
                var var_1 = Struct_3(var_0.a);
                var var_2 = _wgslsmith_mult_u32(~var_1.a.x, 0u);
                var var_3 = !((-773.0 < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(3042u, var_0.a.x), 1u)])) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271.0)) > _wgslsmith_f_op_f32(f32(-1.0) * -1037.0)));
                var_1 = func_3(vec3<i32>(-2147483648, global2.x >> ((var_0.a.x >> ((var_1.a.x >> (4294967295u % 32u)) % 32u)) % 32u), global2.x), !(!((true && true) && !false)));
            }
            case 2147483647: {
                var var_1 = -1000.0;
                break;
            }
            default: {
                var var_1 = Struct_2(1u | (~func_6(Struct_2(0u), vec2<bool>(true, true), Struct_3(var_0.a), vec3<i32>(-2147483648, global2.x, global2.x)).x >> (u_input.a % 32u)));
                let var_2 = vec3<bool>(!(!(-2147483648 != -21438)), any(func_5(_wgslsmith_clamp_u32(var_0.a.x, 22024u, 4294967295u), global1[_wgslsmith_index_u32(1u, 1u)], vec4<bool>(false, false, false, true)).a.zz) || false, true);
                global1 = array<f32, 1>();
            }
        }
        global1 = array<f32, 1>();
        var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~var_0.a, ~var_0.a), 1u)])));
    }
    if (any(select(func_4(var_0.a.x).a.xx, !func_4(min(var_0.a.x, var_0.a.x)).a.xw, !vec2<bool>(!true, !true)))) {
        let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-752.0, global1[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<f32>(433.0, 1000.0))))))));
        global2 = -(~abs(vec3<i32>(-2147483648, global2.x, global2.x) & vec3<i32>(global2.x, global2.x, global2.x)) << (~vec3<u32>(_wgslsmith_add_u32(17898u, 9015u), _wgslsmith_add_u32(17074u, 32915u), reverseBits(var_0.a.x)) % vec3<u32>(32u)));
        global2 = min(vec3<i32>(~(-31538), global2.x, i32(-1) * -18494) | (_wgslsmith_sub_vec3_i32(vec3<i32>(-24671, global2.x, 60918), _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.x, global2.x, 0), vec3<i32>(-1, 0, 23678), vec3<i32>(global2.x, global2.x, -21035))) | -_wgslsmith_add_vec3_i32(vec3<i32>(1, -10649, -2346), vec3<i32>(-13349, 0, global2.x))), vec3<i32>(81169, global2.x, func_4(abs(var_0.a.x << (u_input.a % 32u))).b.x));
        var var_2 = var_0.a.xz;
        if (any(!func_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(var_2.x, 1u)), ~var_0.a.x), _wgslsmith_f_op_f32(-1710.0 + 1818.0), select(func_4(u_input.a).a, !vec4<bool>(true, true, true, true), !vec4<bool>(true, false, false, true))).a.yyz)) {
        }
    }
    global1 = array<f32, 1>();
    var_0 = func_3(~firstLeadingBit(~vec3<i32>(14674, -1, 504) | vec3<i32>(-2147483648, 97812, -9412)), !false && (func_6(Struct_2(36035u), !vec2<bool>(true, false), Struct_3(vec3<u32>(37202u, u_input.a, 0u)), vec3<i32>(global2.x, -10012, global2.x)).x == ~u_input.a));
    return Struct_1(select(!func_4(u_input.a).a, select(vec4<bool>(!true, !true, true, !false), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), false), select(select(func_4(u_input.a).a, vec4<bool>(true, true, true, false), false), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), false)), _wgslsmith_add_vec2_i32(func_5(u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a.xx, vec2<u32>(1924u, 40137u)), 1u)], select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))).b | ~vec2<i32>(-12981, -2147483648), countOneBits(global2.xz)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    for (var var_0 = -23787; any(vec3<bool>(arg_0.a.x, !true, arg_0.a.x)); var_0 -= 1) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        if (true) {
            continue;
        }
        var var_1 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, 4294967295u), ~vec3<u32>(u_input.a, 78244u, 888u)) << (vec3<u32>(~40490u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(9070u, 49452u))) % vec3<u32>(32u)), vec3<u32>(~(~u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 56781u), vec2<u32>(u_input.a, 131459u)), vec2<u32>(u_input.a, 15312u)), u_input.a));
    }
    if (false) {
        var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-857.0), -1000.0), vec2<f32>(global1[_wgslsmith_index_u32(37337u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<bool>(all(arg_0.a.wz), any(arg_0.a.zyz))))));
        loop {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            let var_1 = func_2();
            let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32((_wgslsmith_div_u32(0u, u_input.a) & ~u_input.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 22636u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, 83298u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, 3528u), vec3<u32>(36651u, u_input.a, 24754u))), 1u)], _wgslsmith_f_op_f32(f32(-1.0) * -763.0), -150.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1251.0)) * global1[_wgslsmith_index_u32(countOneBits(func_3(vec3<i32>(0, global2.x, 1), arg_0.a.x).a.x), 1u)])));
            global2 = _wgslsmith_clamp_vec3_i32(~select(min(min(vec3<i32>(arg_0.b.x, global2.x, 18996), vec3<i32>(-21011, global2.x, arg_1.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, -34081), vec3<i32>(33937, 27971, arg_0.b.x))), ~(vec3<i32>(arg_1.x, 0, var_1.b.x) | vec3<i32>(arg_0.b.x, 2147483647, global2.x)), !func_5(0u, 292.0, vec4<bool>(var_1.a.x, false, true, arg_0.a.x)).a.wyy), vec3<i32>(_wgslsmith_sub_i32(2147483647, 2147483647) >> (~63239u % 32u), arg_1.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.b.x, -2147483648), arg_1.x)) ^ select(vec3<i32>(arg_1.x, 2147483647, -15293) | countOneBits(vec3<i32>(36528, -2147483648, 0)), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-2147483648, arg_0.b.x, 0)), -vec3<i32>(arg_0.b.x, arg_1.x, arg_0.b.x)), var_1.a.yyy), -(~vec3<i32>(-global2.x, ~(-21853), 2147483647)));
            var var_3 = _wgslsmith_dot_vec3_u32((func_3(-vec3<i32>(-13738, -2147483648, arg_0.b.x), all(vec2<bool>(var_1.a.x, arg_0.a.x))).a >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, 55710u), ~vec3<u32>(u_input.a, 31473u, 0u)) % vec3<u32>(32u))) & ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 68835u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(0u, 4294967295u, u_input.a)), vec3<u32>(u_input.a, u_input.a, func_9(func_3(~vec3<i32>(0, var_1.b.x, 47490), true))));
            global0 = array<vec4<u32>, 24>();
        }
        let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(max(countOneBits(~vec2<u32>(4294967295u, 14491u)), vec2<u32>(15829u, _wgslsmith_sub_u32(4294967295u, u_input.a))), abs(firstTrailingBit(~vec2<u32>(20151u, 149801u)))));
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        }
    }
    var var_0 = arg_0;
    var var_1 = var_0.a;
    global0 = array<vec4<u32>, 24>();
    return Struct_2(_wgslsmith_mult_u32(func_6(Struct_2(u_input.a), vec2<bool>(true, false && var_1.x), Struct_3(func_3(vec3<i32>(2147483647, arg_0.b.x, 22439), false).a), firstTrailingBit(-vec3<i32>(arg_1.x, var_0.b.x, arg_1.x))).x, 36322u << (u_input.a % 32u)));
}

fn func_10(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_3 {
    switch (~(global2.x | global2.x)) {
        case 0: {
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                global0 = array<vec4<u32>, 24>();
                global3 = !false;
                var var_0 = Struct_3(vec3<u32>(arg_1.a, ~_wgslsmith_add_u32(14648u, u_input.a), func_3(-vec3<i32>(0, global2.x, -7198), 1539.0 > global1[_wgslsmith_index_u32(0u, 1u)]).a.x & func_6(arg_1, arg_0.zx, Struct_3(vec3<u32>(u_input.a, 1u, u_input.a)), vec3<i32>(global2.x, global2.x, -8136) & vec3<i32>(global2.x, -63043, 0)).x));
            }
            switch (-58959) {
                case 2147483647: {
                    global2 = ~vec3<i32>(_wgslsmith_sub_i32(-2147483648, ~(-904)) << (abs(select(19506u, arg_1.a, true)) % 32u), global2.x, global2.x);
                    var var_0 = func_2().a;
                }
                case -2147483648: {
                }
                case -1: {
                    let var_0 = func_1(func_2(), func_4(57132u).b);
                    let var_1 = _wgslsmith_add_vec2_i32(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647, -1), vec2<i32>(39847, -15081), countOneBits(vec2<i32>(-20733, 1))) | vec2<i32>(46911, func_7(Struct_3(vec3<u32>(90749u, 4294967295u, 0u)), vec4<bool>(true, true, arg_0.x, arg_0.x), vec3<f32>(-469.0, global1[_wgslsmith_index_u32(var_0.a, 1u)], global1[_wgslsmith_index_u32(arg_1.a, 1u)]), vec2<u32>(19405u, u_input.a)).x)), vec2<i32>(-2147483648, ~1));
                    return func_3(~_wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, global2.x, var_1.x) | min(vec3<i32>(var_1.x, var_1.x, global2.x), vec3<i32>(var_1.x, var_1.x, global2.x)), vec3<i32>(-80490, ~0, -13575)), arg_0.x);
                }
                default: {
                    global2 = -select(vec3<i32>(22374, global2.x, 2147483647), ~select(vec3<i32>(0, global2.x, -49462), vec3<i32>(21984, global2.x, global2.x), arg_0.x), arg_0.x) & ~select(vec3<i32>(-1, -1, 10392 >> (u_input.a % 32u)), (vec3<i32>(7764, global2.x, global2.x) >> (vec3<u32>(30446u, u_input.a, u_input.a) % vec3<u32>(32u))) & select(vec3<i32>(2147483647, global2.x, global2.x), vec3<i32>(-2147483648, -28753, global2.x), arg_0.x), arg_0.x);
                    return Struct_3(vec3<u32>(_wgslsmith_dot_vec2_u32(func_3(~vec3<i32>(global2.x, -1, global2.x), arg_0.x || true).a.yx, abs(vec2<u32>(4294967295u, u_input.a)) | select(vec2<u32>(arg_1.a, 1853u), vec2<u32>(30022u, u_input.a), arg_0.xy)), 27229u, 63093u));
                }
            }
            let var_0 = !arg_0.xy;
        }
        case -1: {
            var var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-10126, ~abs(34171)), -14841), -(~(-2147483648)), ~(-2147483648));
            loop {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                var var_1 = arg_1;
                var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_1.a, var_1.a), 1u)])), global1[_wgslsmith_index_u32(arg_1.a, 1u)], 1227.0), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(~firstTrailingBit(var_1.a), 1u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.a, 1u)], -1350.0), global1[_wgslsmith_index_u32(u_input.a | (46781u | u_input.a), 1u)]) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], 2340.0, global1[_wgslsmith_index_u32(105354u, 1u)]), vec3<f32>(-1334.0, global1[_wgslsmith_index_u32(13091u, 1u)], 675.0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(726.0, global1[_wgslsmith_index_u32(55866u, 1u)], global1[_wgslsmith_index_u32(var_1.a, 1u)])))))));
                return func_3(vec3<i32>(0, var_0.x, global2.x) | vec3<i32>(-2147483648, select(-2147483648 ^ 2147483647, _wgslsmith_div_i32(8334, 4996), arg_0.x | arg_0.x), var_0.x), !true);
            }
            switch (global2.x | -16754) {
                case -6472: {
                    global0 = array<vec4<u32>, 24>();
                    global0 = array<vec4<u32>, 24>();
                }
                default: {
                    let var_1 = -385.0;
                    var var_2 = Struct_1(vec4<bool>(func_8(Struct_1(func_2().a, abs(vec2<i32>(global2.x, var_0.x))), Struct_3(~vec3<u32>(82582u, u_input.a, arg_1.a))), all(vec4<bool>(false, true, arg_0.x, arg_0.x)) & func_8(func_2(), Struct_3(vec3<u32>(u_input.a, 1u, u_input.a))), arg_0.x & func_2().a.x, func_4(23262u).a.x), _wgslsmith_sub_vec2_i32(var_0.xx, -func_5(572u, 1048.0, vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)).b) | ~(~(vec2<i32>(41238, global2.x) << (vec2<u32>(arg_1.a, u_input.a) % vec2<u32>(32u)))));
                }
            }
        }
        case 2147483647: {
            var var_0 = !(!vec4<bool>(false, arg_0.x, true, arg_0.x));
            let var_1 = 31776;
            var var_2 = func_3(~min(vec3<i32>(-33605, ~global2.x, 6315), (vec3<i32>(global2.x, 0, 34874) ^ vec3<i32>(24273, -981, -42194)) << (select(vec3<u32>(arg_1.a, 14307u, 4294967295u), vec3<u32>(33110u, arg_1.a, 96469u), false) % vec3<u32>(32u))), arg_0.x);
            for (; ; ) {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                var var_3 = select(!false, arg_0.x, !any(vec3<bool>(arg_0.x, true, arg_0.x))) & all(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)));
                var var_4 = func_5(var_2.a.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 1u)]), !(!select(vec4<bool>(arg_0.x, arg_0.x, true, false), func_2().a, vec4<bool>(arg_0.x, true, arg_0.x, var_0.x)))).a;
            }
        }
        case 15870: {
            loop {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                var var_0 = func_1(func_5(abs(arg_1.a), -155.0, !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), ~global2.xz);
                let var_1 = Struct_1(func_4(13856u).a, global2.yy);
                let var_2 = vec4<u32>(select(~50418u, u_input.a, func_8(var_1, func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.x, 33501, -2147483648), vec3<i32>(0, global2.x, 16011), vec3<i32>(-2147483648, 0, -52869)), false))), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(43377u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(17465u, 1u))), firstTrailingBit(vec2<u32>(u_input.a, 4294967295u)) & vec2<u32>(~24401u, 6232u)), ~firstLeadingBit(~abs(9801u)), func_3(firstLeadingBit(-(~vec3<i32>(2147483647, -1, -38988))), var_1.a.x).a.x);
                var var_3 = func_1(func_2(), -var_1.b << (_wgslsmith_clamp_vec2_u32(~(~var_2.xy), max(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_2.x), vec2<u32>(arg_1.a, 124856u)), vec2<u32>(var_0.a, arg_1.a)), vec2<u32>(~u_input.a, min(var_0.a, arg_1.a))) % vec2<u32>(32u)));
                let var_4 = func_1(var_1, _wgslsmith_div_vec2_i32(var_1.b, _wgslsmith_add_vec2_i32(vec2<i32>(28131, -101852), select(vec2<i32>(2147483647, -1), var_1.b, vec2<bool>(false, arg_0.x))) | vec2<i32>(2147483647, global2.x)));
            }
            switch (~1 << (23518u % 32u)) {
                case 1: {
                    global0 = array<vec4<u32>, 24>();
                    var var_0 = Struct_3(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a, arg_1.a, 15036u)), ~countOneBits(vec3<u32>(43391u, 0u, arg_1.a))), min(~vec3<u32>(arg_1.a, arg_1.a, arg_1.a), countOneBits(vec3<u32>(u_input.a, 4294967295u, 3313u))) >> (~(vec3<u32>(u_input.a, u_input.a, 82882u) >> (vec3<u32>(arg_1.a, 0u, arg_1.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
                    var_0 = Struct_3(_wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(_wgslsmith_div_u32(~1u, u_input.a | u_input.a), _wgslsmith_div_u32(arg_1.a & 90288u, u_input.a & 4657u), _wgslsmith_div_u32(arg_1.a, _wgslsmith_mult_u32(var_0.a.x, 0u)))));
                    let var_1 = reverseBits(var_0.a.x ^ ~(~48391u));
                }
                case 37315: {
                }
                default: {
                    global3 = false;
                    global0 = array<vec4<u32>, 24>();
                    var var_0 = global2.x;
                    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~(~4294967295u), 1u)])), 387.0, _wgslsmith_f_op_f32(exp2(-490.0))));
                    var var_2 = func_5(~(~93771u ^ ~4294967295u), -113.0, select(!(!(!vec4<bool>(arg_0.x, true, false, false))), !func_5(_wgslsmith_div_u32(33923u, 30232u), _wgslsmith_f_op_f32(var_1.x + -776.0), vec4<bool>(true, arg_0.x, arg_0.x, false)).a, func_4(arg_1.a).a));
                }
            }
            switch (-2147483648) {
                case -1: {
                    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483648, 2147483647) ^ global2.xy, global2.zx);
                    let var_1 = vec3<u32>(func_3(-vec3<i32>(firstTrailingBit(-37503), 31678, -global2.x), arg_0.x).a.x, abs(u_input.a), ~(25187u >> (0u % 32u)) | 96825u);
                }
                case -2165: {
                }
                case -40233: {
                    let var_0 = Struct_2(max(37353u, ~arg_1.a));
                    var var_1 = Struct_3(~vec3<u32>(u_input.a, u_input.a, select(arg_1.a, _wgslsmith_sub_u32(var_0.a, var_0.a), true)));
                    global3 = _wgslsmith_clamp_u32(arg_1.a, (39271u | ~5206u) | ~_wgslsmith_mod_u32(u_input.a, 54667u), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, var_0.a), 70259u ^ 34035u, func_9(Struct_3(vec3<u32>(var_0.a, 64550u, 3408u))))) == _wgslsmith_dot_vec2_u32(vec2<u32>(6997u, u_input.a), vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~94596u), select(var_0.a, var_1.a.x ^ 13181u, arg_0.x)));
                }
                default: {
                    var var_0 = arg_1;
                    var var_1 = Struct_2(reverseBits(4294967295u));
                }
            }
            var var_0 = func_4(35286u);
        }
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        break;
    }
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-372.0, global1[_wgslsmith_index_u32(arg_1.a, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], 997.0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-984.0, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000.0, 1956.0, 1038.0, -114.0)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(arg_1.a, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(arg_1.a, 1u)]))))))));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, u_input.a), vec3<u32>(4294967295u, 28637u, 20797u)), 1u)])), global1[_wgslsmith_index_u32(max(func_6(Struct_2(37785u), arg_0.zx, Struct_3(vec3<u32>(14354u, 0u, 1u)), vec3<i32>(global2.x, 0, -5398)).x, arg_1.a), 1u)])) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1005.0))), var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1066.0 - var_0.x) + _wgslsmith_f_op_f32(-1095.0))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 946.0)));
    return func_3(vec3<i32>(-1) * -vec3<i32>(~global2.x, global2.x, global2.x), false);
}

fn func_11(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = func_1(func_5(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_10(vec3<bool>(true, false, true), Struct_2(u_input.a)).a.x, 1u)])), func_5(~46874u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-444.0, -740.0)))), vec4<bool>(true && false, false && true, 110957u == 78611u, global2.x > global2.x)).a), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-1, -9553) | _wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(global2.x, global2.x))), _wgslsmith_mod_vec2_i32(global2.zx, ~global2.zx)));
    let var_1 = !(!vec4<bool>(func_5(~var_0.a, _wgslsmith_f_op_f32(-1362.0 + -956.0), vec4<bool>(false, false, false, true)).a.x, false, !any(vec2<bool>(false, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))));
    loop {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
        continue;
    }
    for (var var_2: i32; var_2 < -2147483648; var_0 = Struct_2(_wgslsmith_clamp_u32(~func_10(vec3<bool>(var_1.x, var_1.x, true), Struct_2(4294967295u)).a.x, func_1(func_4(func_1(Struct_1(vec4<bool>(var_1.x, var_1.x, var_1.x, false), global2.xz), vec2<i32>(global2.x, global2.x)).a), vec2<i32>(global2.x, 11814)).a, ~u_input.a))) {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
        var var_3 = Struct_1(func_2().a, global2.yz);
        loop {
            if (LOOP_COUNTERS[29u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            let var_4 = func_5(~94745u, 719.0, var_1).a.zy;
            var_2 = _wgslsmith_add_i32(-1, var_3.b.x);
            var_0 = Struct_2(abs(37218u) & arg_0.a.x);
            continue;
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        var var_2 = Struct_3(arg_0.a);
        let var_3 = vec3<bool>(var_1.x, func_2().a.x, func_4(4294967295u).a.x);
        let var_4 = _wgslsmith_div_f32(-1618.0, 363.0);
        global1 = array<f32, 1>();
        switch (global2.x) {
            default: {
                let var_5 = vec4<i32>(global2.x, min(_wgslsmith_dot_vec3_i32(vec3<i32>(~20270, global2.x << (1u % 32u), abs(global2.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, global2.x, -879), vec3<i32>(global2.x, 0, -1)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_0.a.x, arg_0.a.x), vec3<u32>(var_2.a.x, var_0.a, 4294967295u)) % vec3<u32>(32u))), -27633), ~func_7(Struct_3(vec3<u32>(58861u, 4294967295u, 0u)), vec4<bool>(false, var_1.x, false, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1743.0, var_4, var_4)), ~vec2<u32>(1u, var_2.a.x)).x & global2.x, -44356);
                var var_6 = func_3(_wgslsmith_add_vec3_i32(vec3<i32>(~(-var_5.x), 43503 >> (~12164u % 32u), func_7(Struct_3(arg_0.a), var_1, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4, -1000.0, -799.0))), vec2<u32>(arg_0.a.x, 1u)).x), (min(vec3<i32>(var_5.x, global2.x, -1), vec3<i32>(13402, global2.x, global2.x)) >> (vec3<u32>(86202u, u_input.a, 66430u) % vec3<u32>(32u))) << (~vec3<u32>(9968u, 1u, u_input.a) % vec3<u32>(32u))), var_2.a.x < u_input.a);
                let var_7 = Struct_2(~(~5712u) & ~func_9(Struct_3(vec3<u32>(34783u, 29931u, var_6.a.x))));
                var var_8 = func_1(func_5(47229u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4 + var_4))), func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(19375u, 0u), ~arg_0.a.zy), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(min(var_7.a, 83874u), var_7.a), 1u)], func_4(~29597u).a).a), select(func_7(func_3(vec3<i32>(var_5.x, 0, global2.x), true), vec4<bool>(var_3.x, false, var_3.x, true), _wgslsmith_div_vec3_f32(vec3<f32>(var_4, -279.0, global1[_wgslsmith_index_u32(77791u, 1u)]), vec3<f32>(var_4, 427.0, global1[_wgslsmith_index_u32(20563u, 1u)])), vec2<u32>(var_6.a.x, u_input.a)), -_wgslsmith_div_vec2_i32(global2.yy, vec2<i32>(var_5.x, var_5.x)), !(true || var_3.x)) | ~(~var_5.xz));
                var var_9 = func_3(~var_5.zxx, false);
            }
        }
    }
    return StorageBuffer(global2.x, global2.x, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_11(func_10(vec3<bool>(!false, any(vec2<bool>(false, false)) && all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(-748.0) >= -1404.0), func_1(Struct_1(vec4<bool>(true, false, false, false), abs(global2.xy)), max(global2.xy, global2.xz))));
}

