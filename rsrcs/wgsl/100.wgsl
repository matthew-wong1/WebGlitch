// {"0:0":[174,94,231,28,159,112,130,57,230,164,225,40,50,93,221,80,222,216,45,235,18,108,50,76,30,229,239,100,150,141,55,81,196,176,117,86,162,203,197,126,37,151,234,190,139,57,8,106,155,233,82,48,54,162,99,105,242,11,167,9,192,38,110,18]}
// Seed: 2994279717674664798

struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1803.0, 179.0, -456.0);

var<private> global1: array<i32, 10> = array<i32, 10>(12344, 1, -1, 2147483647, -101922, -1, 11961, 30773, 45924, 0);

var<private> global2: array<f32, 4> = array<f32, 4>(-1711.0, -1000.0, -219.0, 337.0);

var<private> global3: vec3<f32>;

var<private> LOOP_COUNTERS: array<u32, 29>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3) -> i32 {
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
            let var_0 = ~u_input.d;
            global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(round(arg_0.a.x)))) * arg_0.a.x), _wgslsmith_f_op_f32(abs(global0.x)));
        }
        var var_0 = _wgslsmith_dot_vec3_i32(u_input.c, u_input.d);
    }
    for (var var_0 = 1; ; var_0 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(1u, 4u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.a.x))))), -1000.0);
        global0 = arg_0.a.xyw;
    }
    for (; ; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    global0 = arg_0.a.ywx;
    global1 = array<i32, 10>();
    return -20373;
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec2<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) * vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-1000.0))));
    var var_1 = arg_0;
    for (var var_2 = 0; ; var_2 += 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1357.0) + -795.0))) + var_0.x);
    let var_3 = Struct_2(Struct_1(vec3<f32>(arg_0.c, 1798.0, -902.0), true, vec3<i32>(countOneBits(u_input.b.x), 2147483647, func_6(Struct_4(vec4<f32>(-1581.0, global2[_wgslsmith_index_u32(6995u, 4u)], 1000.0, var_0.x), vec2<bool>(true, false)), arg_0.b.x, arg_0)) | firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.d.x, -1, global1[_wgslsmith_index_u32(0u, 10u)]), vec3<i32>(-24323, arg_0.d.x, var_1.d.x))), ~firstLeadingBit(reverseBits(u_input.b)), abs(~firstLeadingBit(u_input.a.x))), select(vec2<bool>(any(!vec3<bool>(false, true, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), select(vec2<bool>(!false, all(vec4<bool>(true, false, true, false))), vec2<bool>(true, false), all(vec3<bool>(true, true, true))), !select(any(vec2<bool>(false, true)), false, any(vec3<bool>(true, false, false)))), (false & false) & any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    return select(u_input.a.zx, vec2<u32>(23766u << ((53253u << (max(u_input.a.x, 4294967295u) % 32u)) % 32u), ~72567u), true);
}

fn func_7(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<i32> {
    global3 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-783.0)), 664.0)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, arg_1.b.x, 0u)), _wgslsmith_mod_vec4_u32(u_input.a | vec4<u32>(arg_1.b.x, arg_0, 5565u, arg_1.b.x), u_input.a)), 4u)], global0.x)));
    switch (_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(arg_1.d.x, _wgslsmith_mod_i32(16816, u_input.b.x)), global1[_wgslsmith_index_u32((min(0u, 13424u) | 48572u) & ~abs(arg_0), 10u)], _wgslsmith_clamp_i32((u_input.b.x ^ 8463) | u_input.b.x, abs(~0), firstTrailingBit(arg_1.d.x))))) {
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
            global1 = array<i32, 10>();
            global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-951.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(451.0 * arg_1.c)));
            global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1073.0, 1000.0);
            global3 = vec3<f32>(global2[_wgslsmith_index_u32(arg_2.x, 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1129.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -863.0), -1143.0)), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c, -2052.0))))), _wgslsmith_div_f32(609.0, _wgslsmith_f_op_f32(exp2(global3.x))));
        }
        case 4397: {
            for (; ; ) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                continue;
            }
            for (var var_0 = -1; ; var_0 += 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                break;
            }
            if (!(arg_1.b.x == _wgslsmith_clamp_u32(u_input.a.x, firstLeadingBit(0u), abs(~4294967295u)))) {
                global2 = array<f32, 4>();
            }
        }
        default: {
            switch (reverseBits(_wgslsmith_mod_i32(arg_1.d.x, -_wgslsmith_sub_i32(_wgslsmith_sub_i32(32028, -92400), _wgslsmith_div_i32(1, -8833))))) {
                case -1: {
                    global2 = array<f32, 4>();
                    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-334.0, 409.0, global2[_wgslsmith_index_u32(arg_0, 4u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(646.0, arg_1.c, arg_1.c))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(719.0, global0.x, arg_1.c) - vec3<f32>(-505.0, global2[_wgslsmith_index_u32(0u, 4u)], global0.x))), (false || false) | (arg_1.d.x > u_input.d.x))), any(vec2<bool>(global0.x == -975.0, true)), countOneBits(u_input.c) | vec3<i32>(arg_1.d.x, -4004, ~arg_1.d.x), arg_1.d, _wgslsmith_add_u32(~arg_1.a, func_5(Struct_3(arg_2.x, arg_1.b, -629.0, u_input.d.yy), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_vec2_f32(select(global0.yx, vec2<f32>(arg_1.c, global3.x), false))).x)), vec2<bool>(all(select(!vec2<bool>(true, true), !vec2<bool>(false, true), vec2<bool>(false, true))), (i32(-1) * -u_input.c.x) <= _wgslsmith_div_i32(arg_1.d.x, global1[_wgslsmith_index_u32(4294967295u, 10u)])), !(!(arg_1.b.x > 17074u)));
                    global1 = array<i32, 10>();
                    global1 = array<i32, 10>();
                }
                case -812: {
                    let var_0 = select(select(!vec4<bool>(true && true, 52617u > u_input.a.x, !false, any(vec4<bool>(false, true, true, true))), vec4<bool>(false, true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), false), (_wgslsmith_f_op_f32(-global0.x) <= _wgslsmith_f_op_f32(sign(478.0))) && (~arg_1.d.x > u_input.b.x)), !select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)] > global3.x, !false, all(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, false))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), any(vec2<bool>(false, false))), !true), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true)), select(!(!vec4<bool>(true, false, false, false)), !vec4<bool>(true, true, false, true), !all(vec4<bool>(true, false, false, true))), !vec4<bool>(all(vec3<bool>(true, true, true)), !true, !false, arg_2.x > u_input.a.x)));
                    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-281.0, global3.x, 1076.0) * vec3<f32>(-294.0, global2[_wgslsmith_index_u32(1933u, 4u)], global2[_wgslsmith_index_u32(arg_1.a, 4u)])))))), var_0.x, u_input.d | -_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, arg_1.d.x, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<i32>(arg_1.d.x, 18774, u_input.b.x), u_input.d), firstTrailingBit(u_input.c), min(u_input.d, vec3<i32>(arg_1.d.x, -1, -7024))), _wgslsmith_div_vec2_i32((firstTrailingBit(u_input.d.yy) >> (select(u_input.a.zw, vec2<u32>(arg_1.b.x, 0u), var_0.x) % vec2<u32>(32u))) & -vec2<i32>(0, 1), select(arg_1.d, ~max(vec2<i32>(1, global1[_wgslsmith_index_u32(10115u, 10u)]), u_input.c.xz), !(!var_0.x))), (u_input.a.x & ~arg_2.x) & arg_2.x);
                    var var_2 = firstLeadingBit(min(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mult_i32(u_input.d.x, arg_1.d.x)), select(_wgslsmith_div_i32(arg_1.d.x, global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_1.a, 10u)], var_1.d.x), global3.x > global2[_wgslsmith_index_u32(1u, 4u)])), ~arg_1.d.x));
                    global2 = array<f32, 4>();
                    var var_3 = u_input.d;
                }
                default: {
                    let var_0 = 20957u;
                    let var_1 = !(true & (u_input.a.x < 4294967295u));
                    let var_2 = global3.x;
                    global1 = array<i32, 10>();
                    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2.x, 4u)]), _wgslsmith_div_f32(-495.0, 2160.0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-222.0, 1074.0, 1962.0)))), var_1, -reverseBits(vec3<i32>(arg_1.d.x, 1, u_input.d.x)), vec2<i32>(u_input.b.x, -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 72286u, u_input.a.x), u_input.a.wwz), 10u)]), 52880u), vec2<bool>(var_1, select(false, false && (var_1 | var_1), any(vec3<bool>(var_1, var_1, false)))), all(vec3<bool>(var_1, 26353u != _wgslsmith_mult_u32(arg_2.x, arg_1.b.x), true)));
                }
            }
            let var_0 = false;
            if (all(select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, any(vec2<bool>(true, false))), var_0), vec2<bool>((arg_1.c == global2[_wgslsmith_index_u32(arg_0, 4u)]) & !var_0, true || (true && var_0)), true))) {
                var var_1 = ~_wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(countOneBits(u_input.a), ~(~u_input.a)));
                global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000.0, -527.0, 1217.0))) * vec3<f32>(1861.0, -1829.0, global3.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global3.x, global0.x) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.c, -1002.0, -541.0)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(var_1.x, 4u)], -1000.0, arg_1.c))))))));
                var var_2 = arg_0;
            }
            let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 4u)]), -467.0, 886.0), u_input.c.x < 9337, select(select(u_input.c, u_input.c, vec3<bool>(all(vec4<bool>(var_0, var_0, var_0, var_0)), select(var_0, var_0, true), var_0)), u_input.c, !select(vec3<bool>(true, var_0, true), vec3<bool>(false, var_0, true), 585.0 <= -1356.0)), vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(abs(countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(arg_2.x, 10u)], arg_1.d.x, arg_1.d.x))), _wgslsmith_sub_vec3_i32(-u_input.d, u_input.c))), 4294967295u);
            let var_2 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(var_1.e, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 314.0) + global0.x), -1963.0);
        }
    }
    let var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -161.0);
    global3 = vec3<f32>(_wgslsmith_f_op_f32(select(461.0, 237.0, global1[_wgslsmith_index_u32(~42320u, 10u)] != _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483648, arg_1.d.x), abs(2147483647), ~2147483647))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, 529.0))));
    global2 = array<f32, 4>();
    return arg_1.d;
}

fn func_8(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    global2 = array<f32, 4>();
    for (var var_0 = 0; var_0 > -2147483648; var_0 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    switch (-19620) {
        case -23834: {
            var var_0 = arg_3;
            var var_1 = arg_3.a.a.x;
            let var_2 = reverseBits(-1);
            var var_3 = Struct_2(Struct_1(var_0.a.a, -2147483648 < _wgslsmith_mod_i32(7437, -global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), u_input.d, vec2<i32>(-var_2, i32(-1) * -arg_3.a.d.x), select(54588u ^ var_0.a.e, arg_3.a.e, !false)), var_0.b, var_0.b.x);
        }
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                let var_0 = arg_3.a;
                break;
            }
            var var_0 = abs(abs(_wgslsmith_clamp_u32(arg_3.a.e, ~_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.xx), ~0u)));
            let var_1 = vec2<u32>(~arg_3.a.e, _wgslsmith_clamp_u32(~(~18977u) << (~(u_input.a.x >> (4294967295u % 32u)) % 32u), ~func_5(Struct_3(arg_3.a.e, vec2<u32>(arg_3.a.e, arg_3.a.e), global3.x, arg_3.a.d), -510.0, _wgslsmith_f_op_vec2_f32(global0.xy * vec2<f32>(arg_3.a.a.x, global2[_wgslsmith_index_u32(37843u, 4u)]))).x, min(u_input.a.x, 4720u)));
            var var_2 = abs(vec4<i32>(_wgslsmith_clamp_i32(abs(arg_3.a.c.x) << (_wgslsmith_dot_vec3_u32(u_input.a.xzz, u_input.a.xyz) % 32u), global1[_wgslsmith_index_u32(max(10855u, 62969u), 10u)] | arg_3.a.d.x, 1), global1[_wgslsmith_index_u32(~(~(~40733u)), 10u)], -39493, abs(-8527)));
        }
        case -1: {
            var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -1254.0, arg_3.a.a.x, 225.0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(163.0, global2[_wgslsmith_index_u32(1u, 4u)], 267.0, 917.0)))))))), arg_3.b);
        }
        default: {
            global3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_3.a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a.a * vec3<f32>(arg_3.a.a.x, arg_3.a.a.x, -662.0)) - vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, global3.x, true)), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(min(-489.0, global0.x)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-288.0, 278.0, 1682.0) + vec3<f32>(global3.x, arg_3.a.a.x, global2[_wgslsmith_index_u32(69736u, 4u)])) + _wgslsmith_f_op_vec3_f32(arg_2 * arg_3.a.a))))))));
            var var_0 = ~(~u_input.a);
        }
    }
    if ((!true | arg_0) && !(!(~u_input.a.x != firstTrailingBit(80029u)))) {
        global0 = _wgslsmith_f_op_vec3_f32(-arg_3.a.a);
        return 4294967295u ^ u_input.a.x;
    }
    let var_0 = ~abs(_wgslsmith_dot_vec3_u32(u_input.a.xyy, vec3<u32>(10336u, _wgslsmith_dot_vec3_u32(vec3<u32>(54692u, arg_3.a.e, arg_3.a.e), u_input.a.zyz), ~arg_3.a.e)));
    return ~max((1u & 0u) << (~17304u % 32u), 4294967295u) & var_0;
}

fn func_4() -> u32 {
    switch (0) {
        case 0: {
            if (!(-367.0 == -1294.0)) {
                let var_0 = Struct_3(14340u >> (func_8(select(!false, true, !false), func_7(min(u_input.a.x, u_input.a.x), Struct_3(71124u, u_input.a.zw, 132.0, u_input.d.xz), func_5(Struct_3(4294967295u, u_input.a.wy, global3.x, u_input.c.xx), global0.x, global0.xz)), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), 2391.0), Struct_2(Struct_1(vec3<f32>(869.0, global3.x, global3.x), true, vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -36614, u_input.d.x), vec2<i32>(0, u_input.d.x), u_input.a.x), !vec2<bool>(true, false), true)) % 32u), ~(~u_input.a.xx), global0.x, ~vec2<i32>(0, _wgslsmith_mult_i32(11233, 45091)));
                let var_1 = var_0;
            }
        }
        case -1: {
        }
        case -9606: {
            global1 = array<i32, 10>();
            let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1706.0, global0.x, global3.x))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-659.0, -1000.0, global3.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global0.x))), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), !vec3<bool>(true, false, false))), _wgslsmith_div_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0, u_input.b.x, -2147483648), u_input.d), ~vec3<i32>(0, global1[_wgslsmith_index_u32(1u, 10u)], u_input.d.x), u_input.c)), u_input.c.xx, u_input.a.x), vec2<bool>(any(vec3<bool>(all(vec4<bool>(false, true, true, true)), false && false, select(true, false, true))), !(!(false && true))), true);
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.a.a))))));
                global3 = var_0.a.a;
            }
            global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-135.0, global3.x, global2[_wgslsmith_index_u32(0u, 4u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -122.0), _wgslsmith_f_op_f32(924.0 * -563.0), -677.0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-709.0, var_0.a.a.x, -593.0) * vec3<f32>(global2[_wgslsmith_index_u32(var_0.a.e, 4u)], var_0.a.a.x, global0.x))))) + _wgslsmith_f_op_vec3_f32(floor(var_0.a.a)));
        }
        default: {
            for (; any(!select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(!false, !true, !false, false), vec4<bool>(false == true, 3008u >= 4294967295u, u_input.d.x <= u_input.c.x, true))); ) {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(382.0, 633.0, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(12680u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)]))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1326.0, -330.0, 1354.0)))))))));
                return ~_wgslsmith_div_u32(~u_input.a.x, ~(~u_input.a.x >> (~4294967295u % 32u)));
            }
            let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x));
            if (!all(vec3<bool>(true | false, !false, true)) & all(vec2<bool>(any(vec4<bool>(true, true, true, true)) | false, false))) {
                let var_1 = global1[_wgslsmith_index_u32(4294967295u, 10u)] | ~0;
            }
        }
    }
    var var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000.0, -878.0, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 4u)] - 1183.0), _wgslsmith_f_op_f32(189.0 + 432.0)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1087.0) - 656.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(47909u, 4u)] * -557.0) * _wgslsmith_f_op_f32(abs(172.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -512.0)))), vec2<bool>(select(select(any(vec2<bool>(false, true)), 4294967295u <= u_input.a.x, !false), !select(true, false, true), all(vec2<bool>(false, true))), all(vec3<bool>(select(false, true, false), !true, -2147483648 != global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))));
    let var_1 = !vec4<bool>(!(!var_0.b.x), true, var_0.b.x, var_0.b.x);
    if ((any(select(!var_1.xxy, vec3<bool>(var_0.b.x, false, var_0.b.x), false)) || any(vec2<bool>(var_1.x, var_0.b.x))) && !(!(-38877 != 58995))) {
        var var_2 = true;
        var_2 = !any(select(var_1, !vec4<bool>(false, var_1.x, false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 4u)] > global0.x, true, true | var_0.b.x)));
    }
    global1 = array<i32, 10>();
    return min(0u, u_input.a.x);
}

fn func_3() -> bool {
    for (var var_0 = -45806; global1[_wgslsmith_index_u32(func_4(), 10u)] < _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-44661, 0), -2147483647)), _wgslsmith_sub_vec2_i32(u_input.b, abs(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 2147483647)))); var_0 -= 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -610.0)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -692.0), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(1000.0 * 1587.0)))) + vec3<f32>(_wgslsmith_f_op_f32(-global3.x), global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(~select(29503u, 14461u, true), 4u)])), false, reverseBits(u_input.d), _wgslsmith_mult_vec2_i32(max(vec2<i32>(global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 10u)], i32(-1) * -6008), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(32450, -1), u_input.d.yy), 1)), select(u_input.b >> (u_input.a.wz % vec2<u32>(32u)), select(u_input.d.zy, u_input.d.yx, vec2<bool>(true, false)), !false) & max(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)]) << (u_input.a.yz % vec2<u32>(32u)), u_input.d.xx)), u_input.a.x >> (u_input.a.x % 32u));
        var var_2 = !select(!(!vec3<bool>(true, false, true)), select(!(!vec3<bool>(var_1.b, false, false)), select(vec3<bool>(var_1.b, false, true), select(vec3<bool>(var_1.b, false, true), vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(var_1.b, true, var_1.b)), !vec3<bool>(var_1.b, var_1.b, var_1.b)), vec3<bool>(!var_1.b, !false, var_1.b)), select(!select(vec3<bool>(true, var_1.b, false), vec3<bool>(true, var_1.b, false), vec3<bool>(var_1.b, var_1.b, false)), !vec3<bool>(var_1.b, false, true), !vec3<bool>(false, false, true)));
        let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_1.e, 4u)], 3053.0, global2[_wgslsmith_index_u32(43886u, 4u)], -448.0) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-258.0, -357.0, 633.0, var_1.a.x), vec4<f32>(-1000.0, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global0.x, -1055.0), var_2.x))), vec4<f32>(_wgslsmith_f_op_f32(min(1558.0, var_1.a.x)), _wgslsmith_f_op_f32(1288.0 * global0.x), global0.x, _wgslsmith_f_op_f32(global3.x - global0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-705.0, global0.x, global2[_wgslsmith_index_u32(var_1.e, 4u)], -1687.0)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x * global2[_wgslsmith_index_u32(38422u << (4294967295u % 32u), 4u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-840.0), global2[_wgslsmith_index_u32(10312u, 4u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 4u)] * -138.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(475.0)))) * vec4<f32>(1000.0, 2057.0, global3.x, global3.x)));
        global1 = array<i32, 10>();
        if (true) {
        }
    }
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-755.0, 443.0, -158.0), vec3<f32>(global3.x, 171.0, -664.0), any(vec2<bool>(true, true))))))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(241.0 + global2[_wgslsmith_index_u32(35808u, 4u)]), _wgslsmith_f_op_f32(-global0.x)), -295.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global2[_wgslsmith_index_u32(13637u, 4u)], 753.0) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-481.0, -1961.0, -1168.0), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 404.0, global3.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-941.0, 1179.0, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1477.0, -818.0, 1613.0) - vec3<f32>(230.0, global2[_wgslsmith_index_u32(8265u, 4u)], 1000.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(1u, 4u)], -1410.0, -307.0))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 408.0, global0.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.x + global0.x), global2[_wgslsmith_index_u32(u_input.a.x, 4u)], _wgslsmith_f_op_f32(step(-2188.0, 896.0))))));
    var var_1 = vec3<bool>(select(any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), !false)), _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) < u_input.a.x, false), !(!any(vec4<bool>(true, true, false, false)) & !(false && true)), select(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), !vec4<bool>(true, false, true, true))), any(!(!vec2<bool>(false, false))), false));
    let var_2 = var_1.x;
    return select(all(select(vec3<bool>(!false, !var_1.x, all(vec2<bool>(false, false))), !select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, var_1.x, true), var_1.x), !(192.0 < 1208.0))), true, !(!(!(!true))));
}

fn func_9(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> vec2<bool> {
    switch (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(39833u, func_8(false && arg_2, u_input.c.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1251.0, global3.x, global2[_wgslsmith_index_u32(40530u, 4u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_3.x, 4u)], -204.0, 420.0))), Struct_2(Struct_1(vec3<f32>(global0.x, global0.x, global0.x), true, u_input.d, vec2<i32>(u_input.d.x, global1[_wgslsmith_index_u32(arg_3.x, 10u)]), arg_3.x), !vec2<bool>(arg_2, arg_2), all(vec2<bool>(arg_2, arg_2)))) & (0u | arg_1), _wgslsmith_mod_u32(~19625u, _wgslsmith_mult_u32(~(~59864u), ~20899u))), 10u)]) {
        case 2147483647: {
            var var_0 = firstLeadingBit(~u_input.a.zyz);
            switch (global1[_wgslsmith_index_u32(1u, 10u)]) {
                case 2147483647: {
                }
                case 1: {
                    global2 = array<f32, 4>();
                    let var_1 = firstTrailingBit(~min(_wgslsmith_mult_u32(4294967295u | 4294967295u, arg_0), ~7974u));
                }
                default: {
                    let var_1 = arg_1;
                    var var_2 = (_wgslsmith_clamp_vec3_u32(reverseBits(max(vec3<u32>(23454u, u_input.a.x, 4294967295u), vec3<u32>(arg_1, 6636u, 0u))), arg_3, arg_3) | vec3<u32>(~16570u, _wgslsmith_clamp_u32(4294967295u, ~arg_1, _wgslsmith_clamp_u32(0u, 0u, 4294967295u)), var_1)) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_1, arg_1, arg_0)), u_input.a.wxz), arg_3) % vec3<u32>(32u));
                }
            }
            if (any(select(!(!vec3<bool>(false, arg_2, arg_2)), select(vec3<bool>(!arg_2, !arg_2, !arg_2), !select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, false, false)), !any(vec2<bool>(arg_2, arg_2))), vec3<bool>(true, !false, !false)))) {
                var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1836.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_0, 4u)], -1831.0)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -938.0), 395.0, ~u_input.d.x <= -global1[_wgslsmith_index_u32(4294967295u, 10u)])))), _wgslsmith_f_op_f32(exp2(238.0))));
            }
            if (true || all(select(vec2<bool>(true, true), select(vec2<bool>(arg_2, false), select(vec2<bool>(true, arg_2), vec2<bool>(true, false), vec2<bool>(arg_2, arg_2)), vec2<bool>(false, arg_2)), select(vec2<bool>(false, true), !vec2<bool>(arg_2, arg_2), !arg_2)))) {
                var_0 = reverseBits(u_input.a.zyy);
            }
            let var_1 = all(vec2<bool>(arg_2, arg_2));
        }
        case 0: {
            switch (u_input.b.x) {
                default: {
                    global1 = array<i32, 10>();
                    global3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1149.0 * global2[_wgslsmith_index_u32(arg_0, 4u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-670.0)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1328.0 + _wgslsmith_f_op_f32(ceil(1510.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-707.0)) + _wgslsmith_f_op_f32(-432.0 - global0.x)), arg_2)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-2982.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x))))));
                    global3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1665.0 * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 4u)])))), _wgslsmith_f_op_f32(floor(1048.0)), 1493.0)));
                }
            }
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                global1 = array<i32, 10>();
                let var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(1u, 4u)], -1006.0, global2[_wgslsmith_index_u32(arg_3.x, 4u)], -690.0), vec4<f32>(-1133.0, global0.x, -892.0, global0.x))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(993.0, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(arg_3.x, 4u)])), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-137.0 + global3.x)))), select(select(vec2<bool>(-812.0 > global2[_wgslsmith_index_u32(1u, 4u)], !false), select(!vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, true), true), vec2<bool>(true, false)), all(vec2<bool>(true, arg_2))), !vec2<bool>(false, arg_2), select(!select(vec2<bool>(true, arg_2), vec2<bool>(true, true), true), select(!vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), !arg_2), !(!vec2<bool>(arg_2, false)))));
            }
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            }
            var var_0 = vec4<f32>(-239.0, _wgslsmith_f_op_f32(-1146.0 * _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32((arg_3.x << (0u % 32u)) | _wgslsmith_mod_u32(arg_0, arg_3.x), 4u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(countOneBits(4294967295u), 4u)]))))), global2[_wgslsmith_index_u32(arg_0, 4u)]);
        }
        case -3026: {
            global3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340.0 * global0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(-2317.0))))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1069.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(56380u, 4u)]) + global2[_wgslsmith_index_u32(~1u, 4u)])))), _wgslsmith_f_op_f32(step(396.0, global2[_wgslsmith_index_u32(6934u, 4u)])));
            let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 4u)] + _wgslsmith_f_op_f32(-1265.0)) + _wgslsmith_f_op_f32(-1223.0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1965.0)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x >> (1u % 32u), 4u)]))), select(!(!vec2<bool>(arg_2, arg_2)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, arg_2)), vec2<bool>(arg_2, true)), !(!vec2<bool>(true, arg_2)), select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(true, arg_2), vec2<bool>(false, false), arg_2), arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -344.0)) < global2[_wgslsmith_index_u32(~3543u, 4u)]));
            let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1025.0, -1000.0, -420.0), var_0.a.zyy)))), _wgslsmith_f_op_vec3_f32(var_0.a.xzy + var_0.a.wwx))), true, _wgslsmith_sub_vec3_i32(u_input.d, u_input.c) | ~(-min(vec3<i32>(global1[_wgslsmith_index_u32(arg_1, 10u)], global1[_wgslsmith_index_u32(arg_1, 10u)], u_input.d.x), u_input.d)), -(u_input.c.yz | reverseBits(_wgslsmith_mod_vec2_i32(u_input.d.xz, vec2<i32>(global1[_wgslsmith_index_u32(65583u, 10u)], u_input.c.x)))), max(_wgslsmith_mod_u32(arg_0, 0u) ^ _wgslsmith_dot_vec3_u32(select(arg_3, arg_3, arg_2), ~u_input.a.zzx), _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, arg_0) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, 36137u), u_input.a), arg_3.x)));
            switch (_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.c, min(abs(vec3<i32>(1, -34229, -3445) | vec3<i32>(var_1.d.x, var_1.d.x, var_1.d.x)), firstTrailingBit(u_input.d))), global1[_wgslsmith_index_u32(~countOneBits(reverseBits(0u) << (firstLeadingBit(u_input.a.x) % 32u)), 10u)])) {
                case 0: {
                    var var_2 = _wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -240.0, -334.0, -1027.0) * var_0.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global3.x, -1910.0, var_1.a.x))))));
                    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(708.0, _wgslsmith_f_op_f32(-1326.0), var_2.x) + vec3<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -157.0), var_0.a.x), _wgslsmith_f_op_f32(-481.0 - _wgslsmith_f_op_f32(-531.0 + var_1.a.x)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1386.0) - _wgslsmith_f_op_f32(-global0.x)))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(266u, 4u)], 1241.0)) + 175.0))));
                    var var_3 = true;
                    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(282.0)))), -226.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1594.0 * -142.0), var_1.a.x)) * var_1.a.x) - _wgslsmith_f_op_f32(f32(-1.0) * -135.0)));
                }
                default: {
                    global3 = var_1.a;
                    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-134.0), _wgslsmith_f_op_f32(957.0 - global0.x), _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_vec3_f32(floor(var_0.a.xwz)), select(!(!vec3<bool>(true, var_1.b, true)), select(vec3<bool>(arg_2, var_1.b, true), vec3<bool>(true, true, false), !true), var_0.b.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-844.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(451.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -736.0))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1043.0, -581.0), var_0.a.wxw), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 4u)], 421.0, -592.0) - vec3<f32>(-1975.0, -991.0, 1000.0))))))));
                }
            }
            var var_2 = !(36540u <= arg_1);
        }
        case -2860: {
            let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_1, 4u)], -1141.0, -2496.0, 209.0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 586.0, global0.x, global2[_wgslsmith_index_u32(arg_0, 4u)]) + vec4<f32>(global0.x, -1004.0, -2112.0, global0.x))) + vec4<f32>(898.0, 162.0, _wgslsmith_f_op_f32(f32(-1.0) * -716.0), 1000.0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 239.0, global0.x, 461.0) + vec4<f32>(1000.0, -1245.0, global3.x, -1000.0))))), !(!select(select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, false), vec2<bool>(true, false)), !vec2<bool>(true, arg_2), !vec2<bool>(arg_2, true))));
            global0 = vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 4u)] * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-393.0), _wgslsmith_f_op_f32(round(-477.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -127.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(global0.x * -1058.0)) * 740.0) + _wgslsmith_f_op_f32(-global0.x)));
            let var_1 = max(~vec4<u32>(80028u | arg_3.x, ~1u, _wgslsmith_clamp_u32(arg_3.x, arg_3.x, 4294967295u), ~40854u), ~firstTrailingBit(u_input.a)) << (u_input.a % vec4<u32>(32u));
        }
        default: {
            let var_0 = Struct_3(arg_3.x, _wgslsmith_div_vec2_u32(vec2<u32>(10422u, firstTrailingBit(u_input.a.x)), arg_3.zx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-854.0, _wgslsmith_f_op_f32(trunc(-633.0)), arg_2)))), u_input.b);
            let var_1 = global0.x;
            return vec2<bool>((u_input.c.x >= _wgslsmith_div_i32(~var_0.d.x, firstTrailingBit(var_0.d.x))) != !false, func_3());
        }
    }
    switch (select((i32(-1) * -11790) | 2432, -u_input.d.x, arg_2)) {
        case 18963: {
            global1 = array<i32, 10>();
        }
        case 0: {
            switch (global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(arg_1 << (arg_3.x % 32u), ~1u, abs(53317u), ~u_input.a.x)), reverseBits(_wgslsmith_div_u32(arg_0, 1u))), 10u)]) {
                case -2147483648: {
                    var var_0 = _wgslsmith_div_vec2_f32(global3.yx, vec2<f32>(global3.x, global0.x));
                    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, global2[_wgslsmith_index_u32(arg_3.x, 4u)], 2389.0, var_0.x)))))), select(select(select(!vec2<bool>(true, false), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), false), vec2<bool>(true, arg_2)), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), arg_2), arg_2), select(!vec2<bool>(arg_2, true), !select(vec2<bool>(arg_2, true), vec2<bool>(true, arg_2), vec2<bool>(true, arg_2)), select(!true, arg_2 & false, arg_2 & false)), !arg_2));
                    var var_2 = var_1.a.zxy;
                    let var_3 = ~firstTrailingBit(select(arg_1, 4294967295u, arg_2)) < (~func_8(var_1.b.x, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.c.x), u_input.c.yy), _wgslsmith_f_op_vec3_f32(-var_1.a.yxy), Struct_2(Struct_1(var_1.a.zyw, var_1.b.x, vec3<i32>(global1[_wgslsmith_index_u32(1u, 10u)], u_input.b.x, u_input.c.x), u_input.c.xx, 10693u), var_1.b, true)) ^ 38175u);
                    var var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, ~1u, ~u_input.a.x), firstTrailingBit(firstTrailingBit(arg_3)), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, arg_1), 1u, arg_3.x) ^ u_input.a.yxz), u_input.a.wxy);
                }
                default: {
                    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_5(Struct_3(arg_0, vec2<u32>(u_input.a.x, 0u), 135.0, vec2<i32>(u_input.d.x, global1[_wgslsmith_index_u32(0u, 10u)])), global2[_wgslsmith_index_u32(arg_0, 4u)], _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-732.0, 366.0), vec2<f32>(-1000.0, -186.0)))).x, _wgslsmith_div_u32(func_5(Struct_3(arg_0, arg_3.yy, global3.x, vec2<i32>(global1[_wgslsmith_index_u32(61741u, 10u)], 1)), -132.0, vec2<f32>(-125.0, 540.0)).x, select(1u, 1u, arg_2)), u_input.a.x, _wgslsmith_add_u32(_wgslsmith_div_u32(0u, arg_3.x), select(0u, arg_0, arg_2))) << (~(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(108596u, 36102u, u_input.a.x, arg_0), u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~u_input.a & (~firstTrailingBit(vec4<u32>(arg_0, 1u, 1907u, arg_1)) << (u_input.a % vec4<u32>(32u))));
                    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -369.0) * _wgslsmith_f_op_f32(-1000.0 * global0.x)), global2[_wgslsmith_index_u32(reverseBits(reverseBits(1u)), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 1000.0))), all(!select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(false, arg_2, true, arg_2))), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -1, u_input.b.x) & vec3<i32>(u_input.c.x, -1, global1[_wgslsmith_index_u32(70954u, 10u)]), u_input.d), vec2<i32>(-1) * -vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 10u)]), arg_0), vec2<bool>(arg_2, arg_2), true);
                    global3 = var_1.a.a;
                }
            }
            let var_0 = reverseBits(global1[_wgslsmith_index_u32(arg_3.x, 10u)]);
        }
        default: {
        }
    }
    global1 = array<i32, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global0.x, -473.0), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global0.x, global3.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1780.0, global0.x, global0.x))), vec3<f32>(-730.0, 775.0, global0.x))))), 49546 != _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(26044, u_input.d.x, u_input.c.x), vec3<i32>(u_input.c.x, 40032, u_input.d.x)) | abs(u_input.c.x), -2147483648), reverseBits(vec3<i32>(_wgslsmith_add_i32(2147483647, -34021), 17397 & u_input.d.x, ~_wgslsmith_add_i32(u_input.d.x, u_input.c.x))), vec2<i32>(55759, -12394), 41681u);
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        global2 = array<f32, 4>();
    }
    return select(!select(!(!vec2<bool>(false, arg_2)), select(!vec2<bool>(false, var_0.b), !vec2<bool>(var_0.b, false), true), !true), vec2<bool>(arg_2, false), arg_2);
}

fn func_2(arg_0: vec3<f32>) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(arg_0, true, -_wgslsmith_mod_vec3_i32(~u_input.d, ~u_input.c), -(~vec2<i32>(0, u_input.d.x)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(40706u, u_input.a.x), u_input.a.x)), func_9(4294967295u, u_input.a.x, !(func_3() == any(vec3<bool>(true, false, false))), ~vec3<u32>(u_input.a.x << (0u % 32u), 0u, u_input.a.x)), !any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), !vec4<bool>(false, false, false, false))));
    switch (~var_0.a.c.x) {
        case -84: {
            switch (_wgslsmith_add_i32(2147483647, var_0.a.c.x)) {
                case 37297: {
                    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2499.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-130.0 * 363.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-211.0) - global2[_wgslsmith_index_u32(4294967295u, 4u)])), func_3(), vec3<i32>(~(~global1[_wgslsmith_index_u32(23414u, 10u)]), u_input.b.x, 0), var_0.a.c.zx ^ vec2<i32>(12982, abs(global1[_wgslsmith_index_u32(var_0.a.e, 10u)])), 1u), var_0.b, any(vec4<bool>(var_0.a.c.x <= var_0.a.c.x, var_0.b.x, any(var_0.b), true && (-112.0 == arg_0.x))));
                    var var_2 = Struct_3(15983u, max(~(~(u_input.a.zz ^ vec2<u32>(u_input.a.x, 59226u))), vec2<u32>(firstLeadingBit(1u), 4294967295u) << (select(abs(u_input.a.yy), vec2<u32>(var_0.a.e, 4294967295u) | vec2<u32>(45282u, 43988u), false) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-var_0.a.a.x), vec2<i32>(-func_7(8027u, Struct_3(4294967295u, u_input.a.zz, global0.x, var_1.a.d), u_input.a.zz).x | _wgslsmith_div_i32(u_input.c.x >> (var_0.a.e % 32u), -2147483648 ^ global1[_wgslsmith_index_u32(16261u, 10u)]), -_wgslsmith_mult_i32(3911, u_input.d.x)));
                    var var_3 = reverseBits(vec2<u32>(var_1.a.e, ~0u) | func_5(Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 75u), vec3<u32>(4294967295u, var_0.a.e, u_input.a.x)), select(u_input.a.xw, var_2.b, false), -425.0, _wgslsmith_mod_vec2_i32(var_1.a.c.yy, var_2.d)), var_0.a.a.x, var_1.a.a.xx));
                    global1 = array<i32, 10>();
                }
                case -1: {
                    global0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-880.0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1736.0 - global0.x) - global3.x)), 2012.0, 405.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1157.0) - _wgslsmith_div_f32(1572.0, global3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.a.a.x)), 1000.0, !var_0.b.x)), -854.0))));
                    let var_1 = var_0.b;
                    var var_2 = Struct_2(var_0.a, func_9(0u, 4294967295u << ((var_0.a.e << (0u % 32u)) % 32u), !false, ~(vec3<u32>(4294967295u, 0u, var_0.a.e) & u_input.a.zzw) >> (firstTrailingBit(firstTrailingBit(vec3<u32>(2876u, var_0.a.e, 4294967295u))) % vec3<u32>(32u))), select(!(global1[_wgslsmith_index_u32(u_input.a.x, 10u)] > ~u_input.d.x), false, false));
                    var var_3 = var_2.a.a.yx;
                }
                default: {
                    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 402.0), -1610.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1449.0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.a + vec3<f32>(global0.x, global3.x, global0.x)) * _wgslsmith_f_op_vec3_f32(sign(arg_0))) - vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.a.e, 4u)]), 349.0))), false, _wgslsmith_clamp_vec3_i32(u_input.c, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.d.x, 2391, 11163), u_input.c)), vec3<i32>(max(global1[_wgslsmith_index_u32(10040u, 10u)], var_0.a.d.x), _wgslsmith_add_i32(var_0.a.d.x, u_input.d.x), _wgslsmith_add_i32(8285, 14656))) ^ vec3<i32>(-firstTrailingBit(-5699), 36007, _wgslsmith_mult_i32(var_0.a.c.x, -2650) << (var_0.a.e % 32u)), vec2<i32>(_wgslsmith_mult_i32(-_wgslsmith_add_i32(global1[_wgslsmith_index_u32(0u, 10u)], u_input.d.x), -countOneBits(u_input.c.x)), u_input.b.x), ~(_wgslsmith_add_u32(~var_0.a.e, var_0.a.e & u_input.a.x) | ~1u));
                    global0 = var_0.a.a;
                    var var_2 = 1808.0;
                }
            }
            var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))));
        }
        case 0: {
            var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(454.0, arg_0.x, global0.x)))))), all(!var_0.b), vec3<i32>(1, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], ~0), ~u_input.b, var_0.a.e), vec2<bool>(select(!var_0.c, var_0.a.b, any(var_0.b)) & var_0.c, var_0.c), var_0.b.x);
            let var_1 = Struct_2(var_0.a, !var_0.b, var_0.a.b);
            for (var var_2 = -15096; false; var_2 += 1) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                global0 = vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a.a.x, -667.0))))), _wgslsmith_f_op_f32(657.0 + _wgslsmith_f_op_f32(-arg_0.x)))));
                let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(377.0 - global0.x), _wgslsmith_f_op_f32(sign(var_1.a.a.x)), -1000.0)), var_0.b.x, -reverseBits(~(-vec3<i32>(var_1.a.d.x, global1[_wgslsmith_index_u32(var_1.a.e, 10u)], var_1.a.d.x))), _wgslsmith_mod_vec2_i32(-max(var_1.a.c.xy, vec2<i32>(-2147483648, -2147483648)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0, 2147483647), var_1.a.d), reverseBits(var_0.a.d), select(vec2<i32>(26582, 2147483647), var_1.a.d, true)) & firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(33024u, 10u)], 21720))), max(u_input.a.x, var_1.a.e));
                global1 = array<i32, 10>();
            }
            switch (-2147483648) {
                default: {
                    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(492.0 - 1000.0))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(285.0)) - _wgslsmith_f_op_f32(-1000.0)), global2[_wgslsmith_index_u32(u_input.a.x, 4u)])), vec2<bool>(true, !(var_0.a.e >= ~31152u)));
                }
            }
        }
        default: {
            var var_1 = firstLeadingBit(abs(vec4<i32>(i32(-1) * -global1[_wgslsmith_index_u32(21638u, 10u)], u_input.d.x, var_0.a.d.x, func_6(Struct_4(vec4<f32>(var_0.a.a.x, global3.x, var_0.a.a.x, global3.x), vec2<bool>(var_0.c, var_0.c)), ~0u, Struct_3(u_input.a.x, u_input.a.wy, -724.0, var_0.a.c.zx)))));
        }
    }
    let var_1 = abs(select(vec4<i32>(-13479, -25938, -u_input.c.x, ~(-47277)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-22605, 8203, global1[_wgslsmith_index_u32(19501u, 10u)], 1), firstLeadingBit(vec4<i32>(u_input.c.x, 2147483647, 9479, var_0.a.c.x)), select(vec4<i32>(u_input.d.x, 1, u_input.c.x, u_input.c.x), vec4<i32>(1, var_0.a.c.x, 1, 0), vec4<bool>(var_0.b.x, true, false, true))), any(vec3<bool>(var_0.b.x, true, var_0.b.x)) || (false | true)) >> (reverseBits(_wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(21937u, 58931u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 40827u, u_input.a.x, 9086u)))) % vec4<u32>(32u)));
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    return arg_0.yx;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    if (arg_3.x) {
        let var_0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a + _wgslsmith_f_op_vec3_f32(exp2(arg_1.a))))));
        if (any(vec3<bool>(all(!vec3<bool>(arg_2.b, arg_3.x, false)), !arg_2.b, arg_2.b))) {
            var var_1 = 147.0;
            let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - -1000.0)))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-640.0, arg_2.a.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -344.0), global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x - arg_1.a.x)))), (u_input.b.x >= arg_1.d.x) & arg_2.b));
        }
        let var_1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(0, firstLeadingBit(u_input.b.x << (0u % 32u)), u_input.c.x)), reverseBits(_wgslsmith_div_vec3_i32(arg_2.c, u_input.c)), -arg_0);
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            continue;
        }
        switch (var_1.x ^ -2147483648) {
            case 2147483647: {
                let var_2 = _wgslsmith_f_op_f32(f32(-1.0) * -604.0);
                var var_3 = arg_3.zyy;
                var var_4 = Struct_3(u_input.a.x, ~(~(~u_input.a.yx)) ^ u_input.a.yy, arg_1.a.x, _wgslsmith_div_vec2_i32(vec2<i32>(~0, _wgslsmith_mult_i32(arg_0.x & global1[_wgslsmith_index_u32(72368u, 10u)], -u_input.d.x)), firstTrailingBit(u_input.c.zx) >> (u_input.a.wx % vec2<u32>(32u))));
                var var_5 = vec4<bool>(true, arg_1.b, arg_1.e != ~_wgslsmith_clamp_u32(func_4(), 5799u, 1u), false);
            }
            default: {
                global3 = arg_2.a;
                return true;
            }
        }
    }
    var var_0 = global3.x;
    switch (_wgslsmith_mod_i32(u_input.b.x, reverseBits(15183)) >> (44299u % 32u)) {
        case -8758: {
            var var_1 = Struct_3(_wgslsmith_mult_u32(func_4(), ~u_input.a.x), vec2<u32>(_wgslsmith_sub_u32(0u, arg_1.e), arg_1.e), _wgslsmith_f_op_f32(-185.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * arg_2.a.x)))), ~((_wgslsmith_clamp_vec2_i32(arg_0.yz, vec2<i32>(arg_0.x, arg_2.c.x), vec2<i32>(20077, -2147483648)) << (~u_input.a.wx % vec2<u32>(32u))) | select(-arg_2.c.yx, select(u_input.b, arg_1.d, vec2<bool>(false, arg_3.x)), select(arg_3.wy, arg_3.yy, arg_3.wy))));
            var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -190.0) - _wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-1359.0 * -385.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))))));
            for (; arg_0.x > -11933; ) {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                var_1 = Struct_3(1u, u_input.a.xy, _wgslsmith_f_op_f32(-var_1.c), var_1.d);
                var var_3 = u_input.a;
            }
        }
        case -2147483648: {
            for (var var_1 = 2147483647; var_1 > 1; global1 = array<i32, 10>()) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                global2 = array<f32, 4>();
            }
            let var_1 = u_input.a.zy;
        }
        case -31920: {
            return true;
        }
        default: {
            var var_1 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.x)))) * arg_1.a.x), _wgslsmith_f_op_f32(floor(-875.0)), arg_2.a.x);
            if (false) {
                var var_2 = _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -367.0))));
            }
            for (; ; ) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                global1 = array<i32, 10>();
                var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, -820.0, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-557.0, var_1.x, 1496.0, global3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(329.0, global0.x, var_1.x, arg_2.a.x)), arg_2.b)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322.0, -1699.0, -299.0, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(17502u, 4u)], 144.0, global0.x, global3.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-349.0, global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -637.0)), vec4<f32>(-533.0, 654.0, -1270.0, var_1.x))))));
                let var_3 = vec2<i32>(arg_1.c.x, arg_2.c.x | arg_1.c.x);
                break;
            }
            global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -309.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1044.0 - 1445.0) + global2[_wgslsmith_index_u32(0u, 4u)])) * var_1.zwx));
            loop {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.zwy * arg_2.a), !any(vec3<bool>(false, true, true)) && false, arg_1.c | arg_2.c, -_wgslsmith_add_vec2_i32(-u_input.d.yz, vec2<i32>(1, 2147483647)), arg_2.e);
                let var_3 = Struct_2(arg_1, !select(vec2<bool>(false, arg_2.c.x >= arg_2.d.x), !(!arg_3.yy), func_9(max(arg_2.e, var_2.e), _wgslsmith_mod_u32(22729u, arg_2.e), arg_1.b || arg_2.b, ~u_input.a.yxx)), all(arg_3));
            }
        }
    }
    var_0 = global3.x;
    var var_1 = Struct_2(arg_1, vec2<bool>(-304.0 < 561.0, all(vec4<bool>(!arg_3.x, !arg_1.b, 0u > 3927u, arg_1.a.x < global3.x))), arg_2.b);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1514.0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x))), true)) <= 755.0;
}

fn func_10(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = u_input.b.x;
    var var_1 = u_input.a.xyw;
    if (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.www, vec3<u32>(var_1.x, 0u, arg_3.a.e), u_input.a.ywz), u_input.a.yzx), ~select(firstLeadingBit(arg_2.e), var_1.x, false), _wgslsmith_dot_vec2_u32(var_1.zx, ~vec2<u32>(arg_2.e, arg_3.a.e))) > _wgslsmith_add_u32(~(~1u), arg_3.a.e)) {
        let var_2 = _wgslsmith_mult_vec4_u32(~u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, u_input.a));
        global2 = array<f32, 4>();
    }
    global2 = array<f32, 4>();
    global2 = array<f32, 4>();
    return arg_3;
}

fn func_11(arg_0: Struct_2) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, arg_0.a.e) | u_input.a.x, 4u)], 1000.0, global3.x), arg_0.a.a, select(!vec3<bool>(true, false, arg_0.b.x), vec3<bool>(-13709 != 33315, 2147483647 <= u_input.d.x, u_input.b.x < -2147483648), 19940u <= _wgslsmith_clamp_u32(41175u, u_input.a.x, arg_0.a.e)))), vec3<bool>(~_wgslsmith_sub_i32(-1, -2147483648) <= (i32(-1) * -54750), arg_0.b.x, any(vec3<bool>(arg_0.b.x != true, !true, arg_0.b.x)))));
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.a.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1159.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2220.0, 353.0))), _wgslsmith_f_op_f32(1152.0 + global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 4u)])));
    switch (i32(-1) * -56680) {
        case -1: {
            let var_0 = _wgslsmith_dot_vec2_u32(select(reverseBits(u_input.a.zx), firstTrailingBit(u_input.a.xx), arg_0.b), abs(u_input.a.zw));
        }
        default: {
        }
    }
    var var_0 = -2377.0;
    global1 = array<i32, 10>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    switch (~u_input.d.x) {
        case -1: {
            switch (_wgslsmith_sub_i32(2147483647, ~1)) {
                case 2395: {
                    var var_0 = func_11(func_10(select(vec3<i32>(27824, -2147483648 ^ 38323, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, u_input.d), -u_input.c), func_1(vec3<i32>(4197, -53814, 19520), Struct_1(vec3<f32>(global3.x, 691.0, 181.0), true, vec3<i32>(25905, global1[_wgslsmith_index_u32(1u, 10u)], -2147483648), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], u_input.d.x), u_input.a.x), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(12357u, 4u)], global3.x, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), true, u_input.c, vec2<i32>(u_input.d.x, 1), 1u), vec4<bool>(false, false, true, false))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global3.x, global3.x)), -721.0, global3.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-907.0, -769.0, 425.0), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(520.0, global0.x, 377.0)))))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(913.0, global2[_wgslsmith_index_u32(46935u, 4u)], 362.0) + vec3<f32>(global0.x, global3.x, global3.x)))), true && !false, select(-vec3<i32>(-1, -2961, 2147483647), u_input.d, !false), vec2<i32>(reverseBits(-2147483648), -20940), _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(4294967295u, u_input.a.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -727.0, -2454.0)), true & false, _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(64669u, 10u)], 1, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec3<i32>(22359, u_input.b.x, 1)), -u_input.d.yx, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), !func_9(u_input.a.x, u_input.a.x, false, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), (true | false) & false)));
                    var_0 = func_11(func_11(Struct_2(var_0.a, vec2<bool>(!var_0.a.b, !var_0.c), !(-36922 > 1))));
                }
                case 13171: {
                    let var_0 = func_10(u_input.d, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.x, global0.x)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 78378u), 4u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.a.x, 4u)])), global0.x), global2[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global0.x, -1592.0)), vec3<f32>(1000.0, 459.0, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))), vec3<f32>(_wgslsmith_f_op_f32(exp2(1691.0)), _wgslsmith_f_op_f32(f32(-1.0) * -216.0), _wgslsmith_f_op_f32(exp2(-1890.0))))))), func_11(func_10(vec3<i32>(10339, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -3566) | u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-465.0, global2[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(4592u, 4u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1852.0, global3.x, -156.0) * vec3<f32>(745.0, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global3.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(901.0, -1137.0, global3.x)), true, ~u_input.d, _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), ~u_input.a.x), Struct_2(func_11(Struct_2(Struct_1(vec3<f32>(1000.0, 134.0, -2141.0), true, vec3<i32>(u_input.d.x, -2147483648, -22589), u_input.d.yy, u_input.a.x), vec2<bool>(true, false), true)).a, !vec2<bool>(false, true), false))).a, func_10(-u_input.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -472.0, -353.0) * vec3<f32>(116.0, 1000.0, 717.0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(590.0, global3.x, -846.0)))), vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -710.0), _wgslsmith_f_op_f32(select(global3.x, -468.0, false)), _wgslsmith_f_op_f32(floor(global0.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<f32>(-1463.0, global0.x, 180.0)))), false, vec3<i32>(u_input.d.x, ~global1[_wgslsmith_index_u32(u_input.a.x, 10u)], abs(u_input.b.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(1, 93703), -u_input.c.zx), 4294967295u), func_10(u_input.d, vec3<f32>(global2[_wgslsmith_index_u32(func_8(true, u_input.b, vec3<f32>(-697.0, global0.x, 104.0), Struct_2(Struct_1(vec3<f32>(global0.x, global2[_wgslsmith_index_u32(0u, 4u)], global3.x), true, vec3<i32>(u_input.c.x, u_input.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(0u, 10u)]), 45621u), vec2<bool>(false, false), false)), 4u)], global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 4u)], _wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(global0.x, global0.x, 2957.0))).x), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -904.0, 641.0))), all(vec4<bool>(false, true, true, false)), ~u_input.d, abs(vec2<i32>(2147483647, 0)), 1u), Struct_2(Struct_1(vec3<f32>(-812.0, 1460.0, global0.x), false, u_input.d, u_input.b, 19004u), func_10(u_input.d, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 539.0, global2[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_1(vec3<f32>(global3.x, global3.x, 671.0), true, vec3<i32>(u_input.d.x, u_input.b.x, global1[_wgslsmith_index_u32(1426u, 10u)]), u_input.c.zy, u_input.a.x), Struct_2(Struct_1(vec3<f32>(global0.x, -564.0, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), true, u_input.c, vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(64666u, 10u)]), u_input.a.x), vec2<bool>(false, false), false)).b, false & false)))).a;
                }
                default: {
                    global2 = array<f32, 4>();
                    var var_0 = -global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(4294967295u, ~22753u)), 10u)];
                    var var_1 = vec4<u32>(u_input.a.x, _wgslsmith_div_u32(~(~58921u << (~78120u % 32u)), ~u_input.a.x), ~(_wgslsmith_add_u32(u_input.a.x, 62229u) >> (~u_input.a.x % 32u)) << (~(~0u) % 32u), u_input.a.x);
                }
            }
            for (; ; ) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                let var_0 = func_11(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 706.0, global0.x))), !(u_input.d.x <= -2147483648), _wgslsmith_add_vec3_i32(func_10(u_input.d, vec3<f32>(global3.x, global3.x, -2132.0), Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -645.0, global0.x), true, vec3<i32>(29697, -25104, 36417), u_input.d.yx, 1u), Struct_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -565.0, 865.0), true, u_input.c, vec2<i32>(-16073, 1), 111228u), vec2<bool>(true, true), true)).a.c, u_input.d), ~(-u_input.c.yy), ~(~0u)), !(!func_11(Struct_2(Struct_1(vec3<f32>(-1385.0, 2446.0, global0.x), false, vec3<i32>(u_input.c.x, u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<i32>(u_input.b.x, u_input.c.x), u_input.a.x), vec2<bool>(true, false), true)).b), any(vec3<bool>(-45351 > -2147483648, true, false || true)))).a;
                return;
            }
            let var_0 = vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(29164u, func_5(Struct_3(u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x), -518.0, vec2<i32>(53856, 19)), global3.x, _wgslsmith_f_op_vec2_f32(-global0.xz)).x >> (((u_input.a.x | 48932u) << (u_input.a.x % 32u)) % 32u)), _wgslsmith_dot_vec4_u32(u_input.a ^ vec4<u32>(~0u, 4834u, ~u_input.a.x, u_input.a.x), abs(u_input.a)), 1u);
        }
        case 3241: {
            switch (global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 10u)]) {
                default: {
                    let var_0 = Struct_3(abs(func_10(func_10(u_input.c, vec3<f32>(global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(4103u, 4u)]), Struct_1(vec3<f32>(global3.x, 2394.0, -1000.0), true, u_input.d, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 0), u_input.a.x), Struct_2(Struct_1(vec3<f32>(1250.0, global0.x, 2284.0), true, u_input.c, u_input.b, u_input.a.x), vec2<bool>(false, true), false)).a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, 991.0, 1164.0)), Struct_1(vec3<f32>(global0.x, -1000.0, -616.0), true, vec3<i32>(-2147483648, -40755, u_input.c.x), vec2<i32>(0, -2147483648), 10253u), func_11(Struct_2(Struct_1(vec3<f32>(176.0, -429.0, global2[_wgslsmith_index_u32(25504u, 4u)]), true, u_input.c, u_input.d.xx, 13899u), vec2<bool>(false, false), true))).a.e & (u_input.a.x & (71567u & u_input.a.x))), _wgslsmith_sub_vec2_u32(u_input.a.yw, u_input.a.yz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -395.0) * global3.x), func_11(Struct_2(func_10(u_input.c, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global3.x), Struct_1(vec3<f32>(-797.0, 403.0, global3.x), true, vec3<i32>(global1[_wgslsmith_index_u32(49365u, 10u)], global1[_wgslsmith_index_u32(14211u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<i32>(1, -1), 4294967295u), Struct_2(Struct_1(vec3<f32>(global0.x, global3.x, 752.0), false, vec3<i32>(global1[_wgslsmith_index_u32(0u, 10u)], -9516, u_input.d.x), vec2<i32>(-2147483648, 23207), u_input.a.x), vec2<bool>(true, false), false)).a, func_9(u_input.a.x, 4294967295u, false, vec3<u32>(4294967295u, 29460u, 38683u)), global1[_wgslsmith_index_u32(u_input.a.x, 10u)] >= global1[_wgslsmith_index_u32(u_input.a.x, 10u)])).a.a.x), countOneBits(u_input.d.zy >> (~select(vec2<u32>(u_input.a.x, 73115u), vec2<u32>(u_input.a.x, 0u), vec2<bool>(true, true)) % vec2<u32>(32u))));
                    global1 = array<i32, 10>();
                }
            }
            global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-222.0) + 1742.0), _wgslsmith_f_op_f32(-478.0 * _wgslsmith_f_op_f32(1018.0 * global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1779.0, -2446.0, -935.0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1064.0, 436.0, global0.x)))))));
        }
        default: {
        }
    }
    for (; any(select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), global3.x >= -429.0), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), true), !(!(!vec3<bool>(true, false, false))), global1[_wgslsmith_index_u32(4294967295u, 10u)] > firstLeadingBit(-33221 >> (u_input.a.x % 32u)))); ) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        let var_0 = func_10(vec3<i32>(-global1[_wgslsmith_index_u32(4853u, 10u)] & 693, global1[_wgslsmith_index_u32(func_8(func_1(u_input.c, Struct_1(vec3<f32>(global3.x, global0.x, -2034.0), true, u_input.d, vec2<i32>(-2147483648, global1[_wgslsmith_index_u32(39825u, 10u)]), u_input.a.x), Struct_1(vec3<f32>(-164.0, 921.0, -1036.0), false, u_input.c, vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 10u)]), u_input.a.x), vec4<bool>(true, true, true, true)), u_input.d.xx & u_input.c.yz, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 293.0, -722.0) + vec3<f32>(-571.0, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -390.0)), func_10(vec3<i32>(2147483647, 1, u_input.d.x), vec3<f32>(-2028.0, 747.0, -214.0), Struct_1(vec3<f32>(264.0, global3.x, global3.x), false, u_input.d, vec2<i32>(18115, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), u_input.a.x), Struct_2(Struct_1(vec3<f32>(668.0, 594.0, -840.0), true, vec3<i32>(u_input.c.x, global1[_wgslsmith_index_u32(1u, 10u)], u_input.b.x), u_input.d.xz, 4294967295u), vec2<bool>(true, false), false))) ^ ~u_input.a.x, 10u)], ~u_input.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1582.0, -302.0, global3.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 1833.0, global0.x), vec3<f32>(-1205.0, global2[_wgslsmith_index_u32(19655u, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))))), Struct_1(vec3<f32>(-1050.0, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(global3.x, 699.0, -1000.0))).x), -1918.0), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.d.x, u_input.b.x, u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 0, 0, 13780), vec4<i32>(10657, -29443, 41807, global1[_wgslsmith_index_u32(1u, 10u)]))) > countOneBits(func_10(u_input.c, vec3<f32>(1542.0, global3.x, -1206.0), Struct_1(vec3<f32>(371.0, -772.0, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), false, u_input.c, u_input.d.xx, u_input.a.x), Struct_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(0u, 4u)], 172.0, global0.x), true, vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], u_input.d.x), u_input.c.zz, u_input.a.x), vec2<bool>(true, true), false)).a.d.x), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -40024, -1), u_input.d) << (~max(vec3<u32>(1u, u_input.a.x, 1u), vec3<u32>(29742u, u_input.a.x, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.c.yy, ~vec2<i32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), 1u), func_11(Struct_2(Struct_1(vec3<f32>(-800.0, -454.0, 954.0), func_9(u_input.a.x, u_input.a.x, false, vec3<u32>(25548u, u_input.a.x, 96608u)).x, abs(u_input.c), u_input.c.xz, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), func_9(~8975u, ~231u, any(vec4<bool>(true, true, true, true)), u_input.a.xxz), false))).a;
        loop {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        }
        switch (u_input.b.x << (func_11(func_11(func_10(vec3<i32>(-1, -14114, global1[_wgslsmith_index_u32(37910u, 10u)]), vec3<f32>(global3.x, global0.x, 310.0), func_11(Struct_2(var_0, vec2<bool>(var_0.b, false), var_0.b)).a, func_10(vec3<i32>(global1[_wgslsmith_index_u32(var_0.e, 10u)], 2147483647, u_input.c.x), vec3<f32>(-876.0, global2[_wgslsmith_index_u32(14090u, 4u)], global3.x), var_0, Struct_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(1u, 4u)], -306.0, global0.x), true, vec3<i32>(u_input.c.x, -1, 12965), vec2<i32>(51972, var_0.c.x), 52180u), vec2<bool>(var_0.b, var_0.b), var_0.b))))).a.e % 32u)) {
            case -5388: {
                var var_1 = 1;
                global1 = array<i32, 10>();
                let var_2 = var_0;
                var var_3 = var_0.a.x;
            }
            case 84812: {
                let var_1 = -(-1 | _wgslsmith_div_i32(var_0.d.x, _wgslsmith_add_i32(-21959, -2147483648)));
                global1 = array<i32, 10>();
                continue;
            }
            case -19864: {
                global0 = vec3<f32>(-563.0, _wgslsmith_div_f32(3208.0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -836.0)))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 4u)] - _wgslsmith_f_op_f32(487.0 * _wgslsmith_f_op_f32(-1455.0))));
            }
            default: {
                return;
            }
        }
        loop {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        }
        var var_1 = Struct_2(var_0, vec2<bool>(true, any(vec3<bool>(var_0.b, var_0.b, any(vec3<bool>(false, true, true))))), var_0.b);
    }
    let var_0 = func_10(~(vec3<i32>(func_7(u_input.a.x, Struct_3(u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x), global0.x, vec2<i32>(-1, global1[_wgslsmith_index_u32(u_input.a.x, 10u)])), u_input.a.xx).x, 1, ~1) << (~select(u_input.a.xxw, u_input.a.wxx, vec3<bool>(false, false, false)) % vec3<u32>(32u))), func_10(u_input.d, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1346.0, 1189.0, 395.0), vec3<f32>(-700.0, global3.x, global0.x), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global0.x, global2[_wgslsmith_index_u32(66711u, 4u)])))))), func_11(func_11(Struct_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(37817u, 4u)], global0.x, -1954.0), false, u_input.d, vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), u_input.a.x), vec2<bool>(true, false), false))).a, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -952.0, global0.x) + vec3<f32>(-1000.0, -1941.0, 634.0)), false, u_input.d | u_input.c, u_input.c.yz, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), vec2<bool>(87407u != 8708u, !true), any(vec4<bool>(false, false, true, true)))).a.a, func_11(func_10(vec3<i32>(i32(-1) * -24813, _wgslsmith_sub_i32(u_input.d.x, 28346), u_input.b.x), vec3<f32>(-708.0, global3.x, -1045.0), func_11(Struct_2(Struct_1(vec3<f32>(-1766.0, 489.0, global3.x), false, vec3<i32>(u_input.d.x, 0, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), u_input.c.xy, 72756u), vec2<bool>(false, true), true)).a, Struct_2(func_11(Struct_2(Struct_1(vec3<f32>(global0.x, -1489.0, global2[_wgslsmith_index_u32(0u, 4u)]), true, u_input.c, u_input.d.zx, u_input.a.x), vec2<bool>(true, false), true)).a, vec2<bool>(false, true), false))).a, Struct_2(func_10(-_wgslsmith_div_vec3_i32(vec3<i32>(-55916, 65467, -1), u_input.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 302.0, global0.x) + vec3<f32>(1054.0, global2[_wgslsmith_index_u32(4294967295u, 4u)], -1821.0)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, -1082.0, global0.x), vec3<f32>(global2[_wgslsmith_index_u32(0u, 4u)], 957.0, -1000.0))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 936.0, 1218.0)), true, ~u_input.c, func_11(Struct_2(Struct_1(vec3<f32>(476.0, -665.0, global0.x), false, vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x), u_input.d.zy, u_input.a.x), vec2<bool>(true, true), true)).a.c.xy, 37518u), Struct_2(Struct_1(vec3<f32>(global2[_wgslsmith_index_u32(64384u, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 912.0), false, vec3<i32>(global1[_wgslsmith_index_u32(79022u, 10u)], 1, 2147483647), vec2<i32>(1, u_input.c.x), u_input.a.x), vec2<bool>(false, true), !true)).a, !(!vec2<bool>(true, false)), !false)).a;
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        var var_1 = select(~min(~vec4<i32>(2147483647, 2147483647, -37200, var_0.d.x), -countOneBits(vec4<i32>(-2147483648, var_0.c.x, -60427, 2147483647))), ~vec4<i32>(global1[_wgslsmith_index_u32(70698u, 10u)], -1, 7228, _wgslsmith_mod_i32(u_input.d.x, -12552)), vec4<bool>(select(!var_0.b, -606.0 > global2[_wgslsmith_index_u32(~u_input.a.x, 4u)], -40534 != 41280), false, any(vec2<bool>(var_0.b || true, var_0.b && false)), all(vec4<bool>(false, any(vec2<bool>(true, var_0.b)), false, global1[_wgslsmith_index_u32(0u, 10u)] > global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))));
        continue;
    }
    var var_1 = u_input.d.zx;
    for (var var_2 = -2147483648; ; global1 = array<i32, 10>()) {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
        global2 = array<f32, 4>();
        for (var var_3 = max(u_input.c.x, countOneBits(-35592 & -8783)); var_3 != 1; var_3 -= 1) {
            if (LOOP_COUNTERS[28u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            var_3 = _wgslsmith_dot_vec4_i32(abs(-countOneBits(vec4<i32>(2147483647, 44835, global1[_wgslsmith_index_u32(var_0.e, 10u)], 0) ^ vec4<i32>(-9403, var_0.c.x, var_1.x, -42242))), _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(-17803), 0, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.e, var_0.e), 10u)], abs(15400)), -(vec4<i32>(var_0.d.x, global1[_wgslsmith_index_u32(4294967295u, 10u)], var_1.x, global1[_wgslsmith_index_u32(4294967295u, 10u)]) << (vec4<u32>(0u, 21930u, 387u, 1u) % vec4<u32>(32u)))) << (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(abs(u_input.a), u_input.a & vec4<u32>(var_0.e, 1u, u_input.a.x, 10187u)), ~(~u_input.a)) % vec4<u32>(32u)));
            var var_4 = countOneBits(-vec4<i32>(var_0.d.x, var_0.d.x, var_1.x, ~(-global1[_wgslsmith_index_u32(u_input.a.x, 10u)])));
            break;
        }
    }
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(444.0, 364.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + -1050.0) * var_0.a.x), 1519.0));
    var var_3 = vec4<i32>(var_1.x, i32(-1) * -5950, -u_input.c.x, _wgslsmith_mod_i32(countOneBits(1), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-41638, -2147483648), global1[_wgslsmith_index_u32(u_input.a.x, 10u)] | var_0.c.x)));
    switch (_wgslsmith_div_i32(-1 >> (u_input.a.x % 32u), -func_11(func_11(func_11(Struct_2(Struct_1(vec3<f32>(-1821.0, global2[_wgslsmith_index_u32(0u, 4u)], 944.0), true, vec3<i32>(9255, 25900, -6159), u_input.c.xz, var_0.e), vec2<bool>(var_0.b, var_0.b), false)))).a.d.x)) {
        case 2147483647: {
        }
        case 9820: {
            if (false) {
                var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(34833u, 4u)], -329.0, var_2.x, -1533.0))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1.0) * -518.0), _wgslsmith_f_op_f32(-1496.0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1845.0 * var_0.a.x), -2237.0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1642.0, _wgslsmith_div_f32(var_0.a.x, -2508.0), var_0.a.x, _wgslsmith_f_op_f32(select(441.0, global3.x, var_0.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2033.0, -351.0, global3.x, 1460.0)) - vec4<f32>(global0.x, global0.x, -506.0, var_2.x)))));
            }
            let var_4 = _wgslsmith_div_u32(~var_0.e, 1u | (21716u ^ var_0.e));
            global2 = array<f32, 4>();
        }
        default: {
            switch (_wgslsmith_div_i32(-2147483648, var_0.c.x)) {
                case 18553: {
                    var_1 = vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(2147483647, var_0.d.x, 0)), -abs(var_3.wwx << (vec3<u32>(0u, var_0.e, 10636u) % vec3<u32>(32u)))));
                }
                case -2977: {
                    global0 = vec3<f32>(468.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))) + global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~86185u), 4u)])), global0.x);
                    global0 = _wgslsmith_f_op_vec3_f32(-var_2.wyy);
                    let var_4 = Struct_3(countOneBits(var_0.e), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(~13639u, ~1u)), 0u), 168.0, ~u_input.b);
                    return;
                }
                default: {
                    var var_4 = func_11(Struct_2(func_10(u_input.c, vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - global3.x), _wgslsmith_f_op_f32(abs(var_0.a.x))), var_0, func_10(vec3<i32>(-2147483648, -10165, var_1.x), vec3<f32>(-1313.0, 424.0, -1099.0), var_0, func_11(Struct_2(Struct_1(vec3<f32>(var_0.a.x, -660.0, -736.0), false, vec3<i32>(3234, 38956, -15253), var_0.d, u_input.a.x), vec2<bool>(true, false), true)))).a, func_11(Struct_2(func_11(Struct_2(var_0, vec2<bool>(var_0.b, false), true)).a, !vec2<bool>(true, false), u_input.c.x == var_0.c.x)).b, true)).a;
                    var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), -413.0, _wgslsmith_f_op_f32(select(571.0, _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1220.0, global0.x)))), var_4.b)), func_11(Struct_2(Struct_1(func_11(Struct_2(var_0, vec2<bool>(var_0.b, var_0.b), false)).a.a, var_4.b, var_0.c, var_0.d, var_0.e), func_11(func_10(var_4.c, vec3<f32>(global3.x, var_4.a.x, 637.0), var_0, Struct_2(Struct_1(var_2.xzy, true, vec3<i32>(-1, var_4.c.x, var_3.x), u_input.d.xx, 1u), vec2<bool>(true, var_0.b), false))).b, select(all(vec2<bool>(false, false)), var_0.b, !var_4.b))).a.a.x);
                }
            }
            let var_4 = _wgslsmith_mult_vec3_u32(u_input.a.zxz, max(u_input.a.wzw, vec3<u32>(func_5(Struct_3(u_input.a.x, vec2<u32>(var_0.e, 31605u), -1209.0, vec2<i32>(-35791, var_0.c.x)), -410.0, global0.yz).x, var_0.e, 1u)));
            var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000.0)), _wgslsmith_f_op_f32(1766.0 + global3.x), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(abs(global0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-930.0, var_2.x, global0.x, -2394.0) + vec4<f32>(var_0.a.x, var_2.x, -316.0, 1000.0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2166.0, -290.0, -847.0, global2[_wgslsmith_index_u32(4294967295u, 4u)])))))));
            global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(var_2.zzx)))) * vec3<f32>(_wgslsmith_div_f32(-370.0, global3.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1856.0, global0.x)))), global3.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(736.0, global3.x, func_10(var_0.c, vec3<f32>(var_0.a.x, -304.0, 1126.0), Struct_1(vec3<f32>(480.0, global0.x, var_0.a.x), var_0.b, var_3.zxy, vec2<i32>(var_0.c.x, 16702), 4294967295u), Struct_2(var_0, vec2<bool>(var_0.b, var_0.b), var_0.b)).a.a.x)), _wgslsmith_f_op_vec3_f32(max(var_2.xzw, var_0.a)), !vec3<bool>(false, !true, -713.0 > global3.x))));
            var_3 = reverseBits(-(vec4<i32>(-1) * -abs(vec4<i32>(global1[_wgslsmith_index_u32(var_0.e, 10u)], global1[_wgslsmith_index_u32(1380u, 10u)], 2147483647, var_1.x))));
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(-2147483648, firstTrailingBit(select(19017u, func_11(Struct_2(var_0, vec2<bool>(true, var_0.b), false)).a.e << (firstTrailingBit(var_0.e) % 32u), var_0.b)), _wgslsmith_div_i32(func_11(Struct_2(func_11(Struct_2(var_0, vec2<bool>(var_0.b, false), true)).a, vec2<bool>(true, false), false)).a.c.x, var_3.x));
}

