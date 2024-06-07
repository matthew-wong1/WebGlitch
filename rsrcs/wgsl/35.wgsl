// {"0:0":[249,31,36,134,5,251,157,17,241,178,91,206,3,229,154,191]}
// Seed: 477466914741078931

struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

var<private> global1: i32 = -72737;

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(445.0, -1000.0, 1000.0, 478.0), vec4<f32>(-685.0, -1210.0, 798.0, -834.0), vec4<f32>(543.0, -604.0, -497.0, -318.0), vec4<f32>(-608.0, -326.0, -277.0, -1436.0), vec4<f32>(1740.0, 194.0, 537.0, -1573.0), vec4<f32>(-294.0, -638.0, 338.0, -543.0), vec4<f32>(-339.0, -1052.0, 501.0, -785.0), vec4<f32>(454.0, -704.0, 448.0, 1719.0), vec4<f32>(-114.0, 1713.0, -112.0, 954.0), vec4<f32>(-283.0, 1000.0, -1474.0, 128.0), vec4<f32>(-630.0, 1442.0, 1091.0, 732.0), vec4<f32>(-867.0, -1462.0, -1274.0, 457.0), vec4<f32>(1638.0, -387.0, 1452.0, -3215.0), vec4<f32>(-498.0, 1235.0, -1000.0, -402.0), vec4<f32>(1107.0, 627.0, -661.0, -211.0), vec4<f32>(-2184.0, -1756.0, -1399.0, 210.0), vec4<f32>(921.0, -1000.0, 540.0, -881.0), vec4<f32>(-751.0, -1000.0, -1706.0, 257.0), vec4<f32>(2087.0, -1671.0, 1548.0, 667.0), vec4<f32>(-907.0, -1000.0, 1430.0, -645.0), vec4<f32>(1042.0, -1267.0, 338.0, -1085.0), vec4<f32>(-1075.0, -645.0, -1696.0, -448.0), vec4<f32>(1151.0, -1709.0, -110.0, -333.0), vec4<f32>(-1574.0, 1334.0, -193.0, 2112.0), vec4<f32>(-390.0, 503.0, -1254.0, -1402.0));

var<private> global3: vec2<f32> = vec2<f32>(3013.0, 1000.0);

var<private> global4: vec3<bool> = vec3<bool>(false, true, false);

var<private> LOOP_COUNTERS: array<u32, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn func_6() -> bool {
    global1 = u_input.a.x;
    for (var var_0 = reverseBits(-abs(47350)); var_0 > -2147483648; var_0 += 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        let var_1 = select(vec3<i32>(~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x & u_input.a.x), ~(-1), -15885), vec3<i32>(u_input.a.x | u_input.b, 16666, _wgslsmith_add_i32(u_input.a.x, 2147483647)), vec3<bool>(false, all(select(select(vec4<bool>(false, global4.x, global4.x, global4.x), vec4<bool>(global4.x, false, global4.x, false), global4.x), vec4<bool>(global4.x, global4.x, true, global4.x), !true)), global4.x));
        let var_2 = Struct_2(Struct_1(vec3<bool>(!global4.x, u_input.c < 1u, !true), ~(~_wgslsmith_sub_i32(u_input.b, 22653))), Struct_1(!select(select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(global4.x, global4.x, true), false), select(vec3<bool>(false, false, global4.x), vec3<bool>(global4.x, global4.x, true), global4.x), vec3<bool>(true, global4.x, global4.x)), ~2147483647));
    }
    var var_0 = Struct_2(Struct_1(select(select(select(vec3<bool>(global4.x, false, false), vec3<bool>(true, global4.x, false), true), vec3<bool>(false, false, false), vec3<bool>(false, false, global4.x)), !(!vec3<bool>(global4.x, false, global4.x)), !(true || false)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-12755, u_input.b, 27644), vec3<i32>(u_input.a.x, u_input.a.x, -24434)), -_wgslsmith_add_i32(1, u_input.a.x))), Struct_1(select(select(select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(global4.x, global4.x, global4.x), true), vec3<bool>(false, false, global4.x), select(vec3<bool>(false, global4.x, false), vec3<bool>(global4.x, true, false), global4.x)), vec3<bool>(global4.x, u_input.b < 1, global4.x), select(!vec3<bool>(false, global4.x, true), vec3<bool>(true, global4.x, false), vec3<bool>(true, global4.x, global4.x))), u_input.a.x));
    var var_1 = select(var_0.a.a.yy, select(select(!select(vec2<bool>(var_0.b.a.x, true), vec2<bool>(true, global4.x), vec2<bool>(true, var_0.a.a.x)), var_0.a.a.zx, select(!vec2<bool>(false, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, false), false), !false)), select(!vec2<bool>(global4.x, false), var_0.a.a.xy, !(!var_0.b.a.x)), global4.x), all(!var_0.b.a));
    switch (_wgslsmith_sub_i32(firstLeadingBit(~var_0.b.b >> (15607u % 32u)), -35498 ^ -reverseBits(0))) {
        case -21051: {
            var var_2 = Struct_2(var_0.a, var_0.b);
            if (any(select(!select(select(vec4<bool>(false, true, global4.x, var_0.b.a.x), vec4<bool>(var_1.x, var_2.a.a.x, var_1.x, global4.x), true), select(vec4<bool>(false, global4.x, false, var_1.x), vec4<bool>(false, false, true, false), var_2.b.a.x), !vec4<bool>(var_2.a.a.x, true, true, false)), vec4<bool>(global4.x, !select(false, false, false), any(select(vec4<bool>(var_1.x, global4.x, true, var_1.x), vec4<bool>(var_0.b.a.x, global4.x, global4.x, false), vec4<bool>(var_1.x, var_0.b.a.x, false, true))), !any(vec3<bool>(true, var_1.x, var_0.a.a.x))), !(!(false == global4.x))))) {
                var var_3 = abs(u_input.a);
            }
            let var_3 = !select(false, !true, var_1.x);
            return all(!(!select(select(var_2.b.a, vec3<bool>(global4.x, var_3, global4.x), vec3<bool>(false, var_1.x, var_3)), vec3<bool>(true, false, global4.x), !vec3<bool>(var_0.a.a.x, var_0.a.a.x, false))));
        }
        default: {
        }
    }
    return all(vec4<bool>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(global3.x * 130.0)) < global3.x, !all(!var_0.b.a), true, !var_1.x));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    switch (arg_1.b) {
        case 1: {
            if (all(arg_1.a)) {
            }
            global3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-596.0, -2530.0)), _wgslsmith_f_op_f32(-global3.x))))));
            var var_0 = Struct_1(!vec3<bool>(any(arg_1.a) == !true, ~arg_0 == -arg_0, !(!global4.x)), arg_0);
            global3 = vec2<f32>(-672.0, -186.0);
        }
        case -1: {
            global0 = array<vec2<i32>, 12>();
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            }
            for (; ; ) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_0 = ((-19486 << (u_input.c % 32u)) << (u_input.c % 32u)) & 1;
                var var_1 = arg_1;
                let var_2 = Struct_1(vec3<bool>(!func_6(), arg_1.a.x, !(!(!var_1.a.x))), -var_1.b);
                var var_3 = global3.x;
            }
            if (false) {
                var var_0 = _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.c, 22546u), select(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, 42920u, u_input.c), true)))), firstTrailingBit(~vec2<u32>(92358u & 82162u, _wgslsmith_add_u32(u_input.c, 0u))));
                var var_1 = vec4<u32>(21009u, 0u, ~abs(var_0.x), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_0.x, 12631u, var_0.x), vec4<u32>(u_input.c, var_0.x, var_0.x, var_0.x)), var_0.x) | 1u);
                global0 = array<vec2<i32>, 12>();
                var var_2 = Struct_2(Struct_1(select(vec3<bool>(false, true, !true), select(vec3<bool>(global4.x, arg_1.a.x, false), arg_1.a, arg_1.a), arg_1.a.x), -41811), arg_1);
            }
            var var_0 = _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(abs(0), i32(-1) * -28257, arg_0), firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483648, arg_0), -2147483648 >> (u_input.c % 32u)), -53500 | arg_0)));
        }
        case 2924: {
        }
        default: {
        }
    }
    for (var var_0 = 1; var_0 != -1; var_0 += 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        if (false) {
            let var_1 = Struct_2(Struct_1(!arg_1.a, arg_0), arg_1);
            let var_2 = select(!select(!(!vec4<bool>(arg_1.a.x, false, false, false)), vec4<bool>(true, !global4.x, func_6(), global4.x), select(vec4<bool>(arg_1.a.x, global4.x, false, false), vec4<bool>(arg_1.a.x, var_1.a.a.x, global4.x, arg_1.a.x), !vec4<bool>(true, true, arg_1.a.x, false))), vec4<bool>(select(u_input.c <= u_input.c, select(any(var_1.a.a), any(vec4<bool>(true, var_1.b.a.x, global4.x, false)), !global4.x), var_1.b.a.x), global4.x, var_1.b.a.x, !all(select(vec4<bool>(arg_1.a.x, true, false, true), vec4<bool>(true, false, var_1.b.a.x, arg_1.a.x), var_1.b.a.x))), !all(!vec2<bool>(false, true)));
            continue;
        }
        break;
    }
    var var_0 = _wgslsmith_f_op_f32(-global3.x);
    var var_1 = Struct_2(Struct_1(select(vec3<bool>(arg_1.a.x, !false, global4.x), !(!arg_1.a), arg_1.a), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1, arg_0, 8805), -vec3<i32>(u_input.a.x, 0, 37921)))), arg_1);
    let var_2 = Struct_1(!select(var_1.b.a, vec3<bool>(var_1.a.a.x, global4.x, var_1.b.a.x), (-797.0 <= global3.x) | any(var_1.b.a.yy)), ~(-(i32(-1) * -u_input.b)));
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(~0u, 76188u);
    global1 = ~(arg_3.b & 8876);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(-833.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) * global3.x), true && !select(true, true, arg_0.a.x))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111.0 * -596.0))), _wgslsmith_f_op_f32(-1645.0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_2, -492.0)))))));
    var_0 = ~_wgslsmith_add_u32(u_input.c, max(~(~u_input.c), firstLeadingBit(~40215u)));
    global3 = var_1.zw;
    return Struct_2(Struct_1(!select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), arg_0.a, all(arg_3.a)), arg_3.b), func_5(24173, arg_3));
}

fn func_4(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(893.0))))));
    global1 = -_wgslsmith_sub_i32(-u_input.a.x, u_input.a.x);
    let var_1 = select(~(-vec4<i32>(~u_input.b, u_input.b, u_input.a.x | 0, -u_input.a.x)), firstTrailingBit(-vec4<i32>(~u_input.b, ~u_input.b, 2147483647, -25105)), select(vec4<bool>(true, select(!false, false || false, u_input.c < u_input.c), arg_0, arg_0), !(!select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(global4.x, global4.x, false, true), vec4<bool>(global4.x, global4.x, arg_0, false))), vec4<bool>(!true, global4.x, global4.x, false)));
    global0 = array<vec2<i32>, 12>();
    let var_2 = false;
    return func_7(Struct_1(select(vec3<bool>(!true, false, 54657u >= u_input.c), vec3<bool>(arg_0, arg_0, var_2 & global4.x), !vec3<bool>(arg_0, var_2, var_2)), var_1.x), func_5(_wgslsmith_div_i32(2147483647 & 26544, ~reverseBits(u_input.a.x)), Struct_1(vec3<bool>(all(global4.xx), arg_0, all(global4.yy)), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1177.0 - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, global3.x))))), func_5(abs(~u_input.a.x ^ (-2147483648 | 0)), Struct_1(select(vec3<bool>(var_2, false, arg_0), vec3<bool>(true, true, arg_0), func_5(0, Struct_1(vec3<bool>(global4.x, false, true), -2147483648)).a), 1)));
}

fn func_8(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    switch (~(-_wgslsmith_add_i32(arg_1.b >> (~u_input.c % 32u), arg_0.x))) {
        case 1: {
        }
        default: {
            global1 = i32(-1) * -37139;
            let var_0 = func_4(any(vec4<bool>(arg_1.a.x, func_7(func_4(global4.x).b, Struct_1(vec3<bool>(arg_3.b.a.x, arg_3.a.a.x, true), 2147483647), _wgslsmith_f_op_f32(-global3.x), arg_1).a.a.x, global4.x, true))).a;
            var var_1 = func_4(any(func_5(-1, func_4(-662.0 != global3.x).b).a)).b;
            switch (arg_1.b) {
                default: {
                    let var_2 = countOneBits(countOneBits(~(i32(-1) * -u_input.a.x)));
                    global2 = array<vec4<f32>, 25>();
                    let var_3 = vec4<i32>(-20956, var_0.b | ~(var_2 & max(var_0.b, var_1.b)), u_input.a.x, 16784);
                    global4 = func_7(func_5(var_0.b, arg_3.a), func_5(u_input.a.x, func_7(arg_3.a, func_7(Struct_1(vec3<bool>(false, false, var_0.a.x), var_1.b), func_7(var_0, var_0, -1541.0, Struct_1(vec3<bool>(arg_3.a.a.x, true, false), arg_0.x)).a, 771.0, func_4(false).a).a, global3.x, func_7(Struct_1(vec3<bool>(global4.x, var_1.a.x, true), var_0.b), func_4(arg_3.b.a.x).a, global3.x, func_7(Struct_1(vec3<bool>(false, var_0.a.x, true), -19230), Struct_1(arg_3.b.a, -1), global3.x, arg_3.a).b).a).a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000.0, -1411.0, false)) - -1570.0)))), var_0).a.a;
                    let var_4 = _wgslsmith_clamp_vec4_i32(~(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 17538, 36731, arg_0.x), vec4<i32>(arg_3.b.b, -2147483648, 45730, 1)), vec4<i32>(var_1.b, u_input.b, arg_3.b.b, var_2))), vec4<i32>(arg_0.x, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1) * -var_3, var_3), ~(-1 >> (select(5844u, 37018u, arg_3.b.a.x) % 32u))), vec4<i32>(6085, _wgslsmith_div_i32(2147483647, arg_0.x), ~0, -2147483648));
                }
            }
            var var_2 = 2147483647;
        }
    }
    let var_0 = _wgslsmith_mod_vec3_i32(select(select(_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_3.b.b, arg_1.b, 2147483647), vec3<i32>(30188, u_input.b, arg_0.x)), vec3<i32>(-1) * -arg_0, !(!vec3<bool>(global4.x, arg_3.b.a.x, arg_1.a.x))), ~(-arg_0), true), countOneBits(-vec3<i32>(1, u_input.a.x, arg_0.x)));
    var var_1 = _wgslsmith_add_vec4_u32(~(~select(vec4<u32>(1u, u_input.c, 13629u, 0u), vec4<u32>(u_input.c, 38894u, 4294967295u, 0u), vec4<bool>(global4.x, false, arg_3.a.a.x, arg_1.a.x))), ~firstLeadingBit(vec4<u32>(arg_2, 31401u, u_input.c, arg_2) & vec4<u32>(1u, 1u, u_input.c, arg_2))) ^ vec4<u32>(~(7662u << (firstLeadingBit(106298u) % 32u)), u_input.c, 8054u, u_input.c);
    let var_2 = Struct_1(arg_1.a, _wgslsmith_add_i32(_wgslsmith_clamp_i32(firstTrailingBit(0), abs(0), ~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(63031, u_input.b))), -695));
    let var_3 = Struct_1(vec3<bool>(arg_3.b.a.x, var_2.a.x, true), arg_0.x);
    return var_3;
}

fn func_9(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    switch (u_input.a.x) {
        case 2147483647: {
            let var_0 = ~vec2<u32>(1u, u_input.c);
            var var_1 = -883.0;
        }
        case -2147483648: {
            var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2303.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + -1061.0)), !false)), _wgslsmith_f_op_f32(615.0 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global3.x, global3.x, false)), global3.x))), _wgslsmith_f_op_f32(1928.0 + global3.x))));
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_1 = func_8(select(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3749, u_input.b, arg_2.b), vec3<i32>(-1, 9369, arg_2.b), vec3<i32>(6458, -1, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(-65808, arg_3, 0), vec3<i32>(-24939, 1, u_input.a.x))) & min(vec3<i32>(arg_3, -1, 0), firstLeadingBit(vec3<i32>(arg_2.b, 2147483647, u_input.a.x))), firstTrailingBit(min(vec3<i32>(-2147483648, -13879, arg_3), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 9659, -28330), vec3<i32>(-1, arg_3, u_input.a.x)))), vec3<bool>(!(!false), !(false && true), func_6() | false)), arg_2, abs(u_input.c), func_7(arg_2, arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-901.0, -1226.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -510.0) + _wgslsmith_f_op_f32(sign(var_0.x))))), func_5(-31857, Struct_1(arg_2.a, u_input.b))));
                var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, var_0.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1977.0, 776.0, -134.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 565.0, 1961.0)), !var_1.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 730.0, global3.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global3.x, 1000.0)))))));
                break;
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                continue;
            }
        }
        default: {
            global2 = array<vec4<f32>, 25>();
            global0 = array<vec2<i32>, 12>();
            let var_0 = Struct_2(arg_2, func_8(_wgslsmith_div_vec3_i32(abs(vec3<i32>(1, arg_3, arg_3)), vec3<i32>(arg_2.b, 0, 0)) << (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u)), Struct_1(vec3<bool>(arg_2.b <= 2147483647, all(vec4<bool>(arg_2.a.x, arg_2.a.x, false, global4.x)), !global4.x), 27533), u_input.c & u_input.c, Struct_2(func_7(func_8(vec3<i32>(-18718, arg_3, u_input.a.x), arg_2, 7847u, Struct_2(Struct_1(arg_2.a, 2147483647), arg_2)), arg_2, _wgslsmith_f_op_f32(trunc(-775.0)), arg_2).a, func_5(-arg_3, func_7(Struct_1(arg_0.zxx, 0), arg_2, 747.0, arg_2).b))));
        }
    }
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(17601u, ~(~_wgslsmith_mod_u32(5056u, u_input.c)), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 4294967295u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.c, 0u), ~u_input.c, min(1u, 66504u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 22050u, u_input.c), ~vec3<u32>(4294967295u, 1u, 0u))));
    global0 = array<vec2<i32>, 12>();
    let var_1 = !(true | (func_5(arg_2.b, func_5(652, Struct_1(vec3<bool>(global4.x, true, arg_1.x), u_input.b))).a.x || any(arg_2.a.yx)));
    if (arg_2.a.x & any(vec4<bool>(all(!vec3<bool>(var_1, arg_0.x, true)), !(arg_2.b <= arg_2.b), false, !true))) {
    }
    return func_7(arg_2, func_4(((arg_2.b & arg_2.b) == _wgslsmith_div_i32(arg_2.b, 2147483647)) | any(arg_1)).b, 717.0, Struct_1(vec3<bool>(any(select(arg_0, arg_0, arg_0)), true, !false), 0 | (~arg_3 & countOneBits(14786)))).b;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: u32, arg_3: vec4<bool>) -> vec4<i32> {
    for (; ; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        break;
    }
    if (~(~1) <= ~max(-_wgslsmith_sub_i32(-2147483648, -1), 2147483647)) {
        let var_0 = select(select(!(!vec2<bool>(true, false)), vec2<bool>(false, !global4.x), !(!(!global4.xy))), !(!(!(!global4.yx))), !(!vec2<bool>(!false, !true)));
        global1 = ~(-1);
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        }
        if (!(!any(arg_3.yyw))) {
            global1 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1, ~arg_0.x), max(2147483647, _wgslsmith_mod_i32(arg_0.x, _wgslsmith_mult_i32(arg_1, arg_1))));
            return _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-11138, 1, arg_0.x, 0), vec4<i32>(13361, 2147483647, -27196, -23721))) << (min(vec4<u32>(90040u, arg_2, u_input.c, arg_2), ~vec4<u32>(56572u, 29008u, 0u, 29448u)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, arg_0.x, 1, 2147483647) ^ vec4<i32>(2147483647, arg_0.x, arg_1, arg_1), ~vec4<i32>(5796, 17730, arg_1, u_input.a.x))), vec4<i32>(2147483647, arg_0.x, ~arg_1, arg_0.x));
        }
        var var_1 = _wgslsmith_f_op_f32(-global3.x);
    }
    let var_0 = global3.x;
    switch (_wgslsmith_mult_i32(1 ^ select(_wgslsmith_clamp_i32(u_input.a.x >> (u_input.c % 32u), -57770, u_input.b ^ arg_1), arg_0.x, false), arg_0.x)) {
        case -77412: {
            global4 = vec3<bool>(!any(vec2<bool>(arg_3.x && true, !false)), false, true);
        }
        case -1: {
            let var_1 = min(firstLeadingBit(13811), -arg_1);
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_2 = Struct_2(Struct_1(vec3<bool>(global4.x, arg_3.x, ~arg_2 >= 10342u), countOneBits(9378)), Struct_1(arg_3.xyx, 52389));
                let var_3 = func_9(arg_3, vec2<bool>(global4.x, global3.x != global3.x), func_8(min(firstLeadingBit(arg_0 & arg_0), _wgslsmith_clamp_vec3_i32(~arg_0, arg_0, vec3<i32>(arg_1, 1, arg_1))), var_2.a, 23386u, func_4(!all(arg_3))), ~((u_input.b << ((u_input.c ^ 44574u) % 32u)) | func_8(arg_0, func_7(Struct_1(arg_3.wyy, var_1), Struct_1(var_2.a.a, var_2.b.b), global3.x, var_2.b).a, min(u_input.c, 0u), func_4(true)).b));
            }
            switch (u_input.b) {
                case 2147483647: {
                    global1 = arg_0.x;
                    global0 = array<vec2<i32>, 12>();
                    var var_2 = countOneBits(i32(-1) * -2147483647);
                    global1 = -29892;
                    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 188.0, 1306.0)) + vec3<f32>(global3.x, 350.0, -668.0)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 1908.0)))))));
                }
                case -2147483648: {
                    let var_2 = firstTrailingBit(~(~(-53750)) & var_1);
                    global0 = array<vec2<i32>, 12>();
                    let var_3 = !arg_3;
                    var var_4 = -352.0;
                    let var_5 = var_3.x;
                }
                case 0: {
                    global4 = func_9(select(vec4<bool>(false, select(!arg_3.x, arg_3.x, func_4(global4.x).b.a.x), !(!arg_3.x), func_5(-1, func_5(var_1, Struct_1(arg_3.wxw, arg_1))).a.x), !(!vec4<bool>(false, global4.x, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x)) < -219.0), vec2<bool>(!func_9(!arg_3, vec2<bool>(false, arg_3.x), Struct_1(vec3<bool>(false, false, arg_3.x), arg_0.x), var_1).a.x, false), func_8(vec3<i32>(arg_1, var_1, ~(-14460)) << (vec3<u32>(arg_2, _wgslsmith_mult_u32(u_input.c, u_input.c), arg_2) % vec3<u32>(32u)), Struct_1(arg_3.xxy, 59308), ~arg_2, func_4(global4.x)), 47086).a;
                    let var_2 = Struct_1(!(!arg_3.yww), arg_1);
                    let var_3 = true;
                    global1 = arg_1;
                    let var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, ~firstTrailingBit(1u) >> ((~u_input.c << (arg_2 % 32u)) % 32u), arg_2), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 45901u, 13852u) ^ vec3<u32>(arg_2, u_input.c, 37796u), ~vec3<u32>(arg_2, 0u, 4294967295u)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, arg_2, u_input.c), ~vec3<u32>(1u, u_input.c, 58107u))) | select(min(vec3<u32>(52637u, 4294967295u, u_input.c) & vec3<u32>(1u, arg_2, arg_2), abs(vec3<u32>(0u, 37774u, u_input.c))), _wgslsmith_add_vec3_u32(vec3<u32>(2109u, 21943u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(arg_2, u_input.c, arg_2))), arg_3.zyz));
                }
                default: {
                }
            }
        }
        case -22039: {
            global4 = !func_9(vec4<bool>(1u > _wgslsmith_mod_u32(24241u, 4294967295u), !func_7(Struct_1(vec3<bool>(false, arg_3.x, true), -1), Struct_1(vec3<bool>(arg_3.x, false, global4.x), arg_0.x), 1515.0, Struct_1(arg_3.wyw, arg_0.x)).b.a.x, true, func_8(firstTrailingBit(arg_0), func_8(vec3<i32>(arg_0.x, 33256, 3750), Struct_1(arg_3.wxx, 5275), 0u, Struct_2(Struct_1(arg_3.zzy, 13334), Struct_1(vec3<bool>(arg_3.x, false, true), -1))), u_input.c << (1u % 32u), func_4(global4.x)).a.x), vec2<bool>(!true, !all(vec3<bool>(arg_3.x, global4.x, global4.x))), func_5(min(2147483647, -arg_0.x), func_7(func_8(arg_0, Struct_1(arg_3.wxy, 32357), 0u, Struct_2(Struct_1(vec3<bool>(arg_3.x, arg_3.x, global4.x), u_input.b), Struct_1(vec3<bool>(global4.x, true, global4.x), u_input.a.x))), Struct_1(vec3<bool>(false, arg_3.x, global4.x), 2147483647), _wgslsmith_f_op_f32(ceil(-1767.0)), func_8(vec3<i32>(34518, u_input.b, 15483), Struct_1(vec3<bool>(global4.x, global4.x, arg_3.x), arg_0.x), arg_2, Struct_2(Struct_1(arg_3.zyz, arg_1), Struct_1(arg_3.ywy, 1)))).a), firstTrailingBit(i32(-1) * -34041)).a;
            switch (abs(u_input.a.x)) {
                case 69923: {
                    global4 = select(arg_3.wyx, !func_9(select(vec4<bool>(arg_3.x, global4.x, global4.x, false), !arg_3, select(vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x), arg_3, arg_3)), arg_3.xz, Struct_1(arg_3.yxw, 2147483647), 0).a, select(false, false, !func_7(func_8(arg_0, Struct_1(arg_3.yzy, arg_0.x), 8748u, Struct_2(Struct_1(vec3<bool>(arg_3.x, global4.x, arg_3.x), u_input.a.x), Struct_1(arg_3.zxw, u_input.a.x))), func_4(false).a, _wgslsmith_f_op_f32(f32(-1.0) * -1078.0), Struct_1(arg_3.zyw, 25354)).a.a.x));
                    let var_1 = ~abs(-firstLeadingBit(arg_0.x) >> (arg_2 % 32u));
                    let var_2 = func_8(_wgslsmith_mult_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(firstLeadingBit(arg_0), arg_0, ~arg_0)), abs(min(_wgslsmith_sub_vec3_i32(arg_0, vec3<i32>(arg_1, 16534, 1)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -2147483648, 0), arg_0)))), func_4(any(!vec3<bool>(global4.x, true, true))).a, arg_2 | 4294967295u, Struct_2(Struct_1(arg_3.zzz, ~arg_1), Struct_1(!vec3<bool>(global4.x, false, global4.x), select(arg_1, arg_0.x, !true))));
                    global3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -557.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(-482.0, global3.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(949.0)) * _wgslsmith_f_op_f32(global3.x * global3.x)))));
                    let var_3 = arg_3;
                }
                case 46233: {
                    global1 = 54394;
                    let var_1 = global3.x;
                }
                case 2147483647: {
                    let var_1 = reverseBits(~(~_wgslsmith_clamp_u32(33709u, ~60191u, 33941u)));
                    let var_2 = false;
                    let var_3 = func_4(_wgslsmith_sub_u32(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 0u, u_input.c, 9284u), vec4<u32>(arg_2, 1u, u_input.c, var_1)) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.c, arg_2, 4294967295u), vec4<u32>(0u, 0u, 29298u, arg_2))) < arg_2);
                    let var_4 = vec4<bool>(true, arg_1 < ~_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, 61537, -1, u_input.b), vec4<i32>(var_3.a.b, arg_0.x, -28825, -1)), !((var_1 > firstLeadingBit(1u)) || func_6()), arg_3.x);
                }
                case 3934: {
                    global4 = func_7(func_9(!select(vec4<bool>(arg_3.x, true, global4.x, true), select(vec4<bool>(arg_3.x, false, global4.x, true), arg_3, false), false | false), vec2<bool>(global4.x, false), func_8(_wgslsmith_mod_vec3_i32(arg_0, arg_0) ^ vec3<i32>(35822, 0, 21530), func_4(false).a, _wgslsmith_mult_u32(4294967295u, 4294967295u), func_7(Struct_1(arg_3.wxz, 0), func_7(Struct_1(arg_3.zzz, 1), Struct_1(arg_3.wwx, u_input.b), 1623.0, Struct_1(arg_3.xwx, arg_1)).b, global3.x, func_7(Struct_1(vec3<bool>(global4.x, true, false), u_input.b), Struct_1(arg_3.xww, u_input.b), -1000.0, Struct_1(arg_3.wzx, -47976)).a)), -_wgslsmith_clamp_i32(1, -8273, arg_1) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 0u, arg_2) << (vec4<u32>(u_input.c, u_input.c, 76480u, arg_2) % vec4<u32>(32u)), vec4<u32>(24766u, arg_2, 0u, 1u) >> (vec4<u32>(0u, 38143u, u_input.c, 1u) % vec4<u32>(32u))) % 32u)), Struct_1(!arg_3.xwz, _wgslsmith_mod_i32(arg_0.x, arg_1)), global3.x, func_4(!global4.x).a).a.a;
                }
                default: {
                    global4 = !select(!(!vec3<bool>(true, false, arg_3.x)), vec3<bool>(!(!global4.x), select(60562u > arg_2, true && arg_3.x, arg_3.x), global4.x), !false);
                    var var_1 = func_7(Struct_1(func_7(func_9(select(arg_3, vec4<bool>(global4.x, false, global4.x, true), true), vec2<bool>(arg_3.x, true), Struct_1(arg_3.zxz, arg_1), ~arg_0.x), func_7(Struct_1(arg_3.wyx, 2147483647), Struct_1(vec3<bool>(true, arg_3.x, global4.x), arg_1), 1947.0, Struct_1(arg_3.zyz, arg_1)).b, global3.x, func_9(arg_3, !arg_3.yx, Struct_1(vec3<bool>(true, global4.x, false), -2147483648), i32(-1) * -12844)).a.a, _wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-6766, arg_1, arg_1, 31469)), select(vec4<i32>(u_input.a.x, arg_1, arg_1, arg_0.x), vec4<i32>(-34170, 1, arg_0.x, arg_1), arg_3)))), func_8(select(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, u_input.a.x, arg_1), arg_0, vec3<i32>(42239, arg_1, 2147483647)), _wgslsmith_clamp_vec3_i32(arg_0, arg_0, arg_0)), arg_0, _wgslsmith_f_op_f32(-775.0) >= _wgslsmith_f_op_f32(-615.0)), func_9(vec4<bool>(false, !arg_3.x, select(false, false, false), !global4.x), func_4(true).a.a.yz, Struct_1(func_5(u_input.b, Struct_1(arg_3.wyz, 2147483647)).a, arg_0.x), arg_1), u_input.c, func_4(true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(586.0 - global3.x))), global3.x)), Struct_1(vec3<bool>(true, true, (arg_1 & arg_0.x) > _wgslsmith_mod_i32(arg_0.x, arg_1)), (max(2147483647, arg_0.x) & -23196) >> (~arg_2 % 32u))).a;
                    var_1 = Struct_1(!(!func_8(arg_0 & arg_0, Struct_1(var_1.a, u_input.a.x), 1u, Struct_2(Struct_1(arg_3.yxx, arg_1), Struct_1(vec3<bool>(false, false, false), u_input.b))).a), 1);
                    var var_2 = vec2<i32>(~func_8(arg_0, func_9(!vec4<bool>(var_1.a.x, true, var_1.a.x, true), var_1.a.zx, func_7(Struct_1(arg_3.zwz, u_input.b), Struct_1(var_1.a, u_input.b), global3.x, Struct_1(vec3<bool>(global4.x, global4.x, arg_3.x), arg_0.x)).a, arg_1 ^ arg_1), max(u_input.c ^ 4294967295u, firstTrailingBit(35783u)), Struct_2(func_8(arg_0, Struct_1(vec3<bool>(arg_3.x, arg_3.x, global4.x), 13402), arg_2, Struct_2(Struct_1(vec3<bool>(arg_3.x, global4.x, false), arg_1), Struct_1(arg_3.zxy, 55859))), Struct_1(var_1.a, -1))).b, u_input.b);
                }
            }
            let var_1 = global3.x;
            let var_2 = vec3<bool>(false, !all(select(!arg_3, select(vec4<bool>(true, arg_3.x, false, false), arg_3, true), arg_3)), select(false, 0u < reverseBits(select(arg_2, 34291u, true)), all(arg_3.zxy)));
        }
        default: {
            let var_1 = all(!arg_3.yy);
            for (var var_2 = _wgslsmith_mult_i32(u_input.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(max(max(vec3<i32>(arg_1, u_input.b, arg_1), vec3<i32>(0, arg_0.x, arg_0.x)), vec3<i32>(u_input.a.x, -16186, 2147483647)), arg_0), 2147483647, ~(~2147483647))); var_2 != -2147483648; ) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
            global3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(854.0, -257.0) - vec2<f32>(global3.x, 1618.0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + vec2<f32>(global3.x, global3.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.x, 426.0)))))) - vec2<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-1088.0)), global3.x)), false));
            var var_2 = global3.x;
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1016.0), 728.0));
                break;
            }
        }
    }
    var var_1 = _wgslsmith_sub_u32(arg_2, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_2, arg_2), max(vec3<u32>(1u, 1u, arg_2), vec3<u32>(arg_2, arg_2, u_input.c))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(31797u, arg_2, u_input.c), vec3<u32>(8778u, arg_2, u_input.c)), vec3<u32>(arg_2, arg_2, 38708u))), vec3<u32>(~12054u >> (0u % 32u), ~max(u_input.c, u_input.c), 4294967295u)));
    return countOneBits(vec4<i32>(~u_input.a.x & abs(~arg_0.x), min(~arg_0.x, func_7(func_8(vec3<i32>(0, arg_1, arg_0.x), Struct_1(arg_3.zzw, arg_1), 39774u, Struct_2(Struct_1(vec3<bool>(global4.x, arg_3.x, arg_3.x), 2147483647), Struct_1(arg_3.zyx, -67888))), func_5(u_input.a.x, Struct_1(arg_3.yzx, u_input.a.x)), -2286.0, func_4(global4.x).b).a.b), reverseBits(arg_0.x), func_9(select(select(vec4<bool>(true, false, false, false), arg_3, vec4<bool>(arg_3.x, global4.x, false, true)), !vec4<bool>(false, false, false, true), arg_2 < 0u), select(vec2<bool>(global4.x, arg_3.x), vec2<bool>(global4.x, false), true), func_4(true).b, func_8(vec3<i32>(arg_1, -17086, 7396), Struct_1(vec3<bool>(true, false, false), arg_0.x), abs(1u), func_4(global4.x)).b).b));
}

fn func_10(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_2 {
    switch (u_input.b) {
        case 16096: {
            var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-523.0 + global3.x), _wgslsmith_f_op_f32(-global3.x), 352.0, _wgslsmith_f_op_f32(floor(-1554.0)));
            var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -1339.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -615.0)), _wgslsmith_div_f32(128.0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-201.0 * global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 440.0))))), var_0.x);
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                var var_1 = vec3<u32>(min(u_input.c, 37831u), 23146u, ~27527u);
                let var_2 = 31896u;
            }
            global1 = arg_0.x;
            var var_1 = _wgslsmith_add_u32(u_input.c, _wgslsmith_mod_u32(33573u, 18159u));
        }
        case -2147483648: {
            global1 = min(firstTrailingBit(arg_0.x << (0u % 32u)), 41532);
            switch (arg_0.x) {
                case -2147483648: {
                    return func_4(global4.x);
                }
                case 0: {
                    global4 = select(!func_9(!(!vec4<bool>(false, false, global4.x, global4.x)), !(!vec2<bool>(global4.x, false)), func_5(func_7(Struct_1(vec3<bool>(false, true, global4.x), 11123), Struct_1(vec3<bool>(global4.x, true, global4.x), arg_0.x), -1000.0, Struct_1(vec3<bool>(global4.x, global4.x, false), -2147483648)).b.b, Struct_1(vec3<bool>(global4.x, global4.x, global4.x), 2147483647)), u_input.b >> (~u_input.c % 32u)).a, func_5(u_input.a.x, Struct_1(!(!vec3<bool>(global4.x, false, global4.x)), countOneBits(u_input.b) & _wgslsmith_mod_i32(4543, arg_0.x))).a, global4.x);
                    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(0, select(_wgslsmith_div_i32(arg_0.x, u_input.b), abs(u_input.b), global4.x), ~func_7(func_8(arg_0.xxx, Struct_1(vec3<bool>(global4.x, false, global4.x), arg_0.x), 4294967295u, Struct_2(Struct_1(vec3<bool>(global4.x, global4.x, global4.x), arg_0.x), Struct_1(vec3<bool>(global4.x, false, true), u_input.b))), func_5(2147483647, Struct_1(vec3<bool>(global4.x, global4.x, global4.x), 7351)), 1393.0, func_8(vec3<i32>(arg_0.x, arg_0.x, 1), Struct_1(vec3<bool>(true, global4.x, false), 31101), 82011u, Struct_2(Struct_1(vec3<bool>(global4.x, true, false), -5068), Struct_1(vec3<bool>(false, global4.x, global4.x), -1)))).a.b, u_input.b), arg_0);
                    var var_0 = Struct_2(Struct_1(!(!(!vec3<bool>(false, global4.x, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(0 & -89857, ~u_input.b), ~(vec2<i32>(-43255, arg_0.x) | u_input.a))), func_7(Struct_1(!vec3<bool>(global4.x, global4.x, global4.x), arg_0.x), Struct_1(!(!vec3<bool>(global4.x, global4.x, global4.x)), ~(-2147483648)), global3.x, Struct_1(!vec3<bool>(false, false, global4.x), _wgslsmith_dot_vec4_i32(vec4<i32>(11628, arg_0.x, arg_0.x, 2147483647), ~arg_0))).b);
                }
                case -46224: {
                    global4 = !select(vec3<bool>(any(global4.xx), global4.x, !true), func_7(Struct_1(vec3<bool>(false, global4.x, global4.x), _wgslsmith_sub_i32(2147483647, -23958)), func_8(func_3(vec3<i32>(-46695, 14571, arg_0.x), 0, u_input.c, vec4<bool>(false, true, true, true)).wxz, Struct_1(vec3<bool>(true, true, global4.x), arg_0.x), abs(54166u), Struct_2(Struct_1(vec3<bool>(global4.x, global4.x, global4.x), 1), Struct_1(vec3<bool>(global4.x, true, true), 58122))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -1171.0) - _wgslsmith_f_op_f32(floor(492.0))), Struct_1(!vec3<bool>(true, global4.x, global4.x), _wgslsmith_mod_i32(2147483647, 0))).b.a, func_5(u_input.a.x, Struct_1(vec3<bool>(global4.x, global4.x, false), func_9(vec4<bool>(false, global4.x, false, true), global4.xy, Struct_1(vec3<bool>(true, global4.x, false), -23555), 1).b)).a);
                    let var_0 = global4.x;
                }
                default: {
                    let var_0 = func_9(vec4<bool>(all(func_9(vec4<bool>(false, false, true, true), vec2<bool>(global4.x, global4.x), func_5(-36581, Struct_1(vec3<bool>(true, true, true), u_input.b)), select(arg_0.x, 0, global4.x)).a.xx), true | any(vec3<bool>(global4.x, true, global4.x)), global4.x, func_8(arg_0.zyy, func_7(Struct_1(vec3<bool>(global4.x, true, false), u_input.b), func_9(vec4<bool>(global4.x, false, global4.x, global4.x), global4.zx, Struct_1(vec3<bool>(global4.x, global4.x, true), -20640), 11951), _wgslsmith_f_op_f32(abs(global3.x)), func_9(vec4<bool>(global4.x, global4.x, false, global4.x), global4.yy, Struct_1(vec3<bool>(global4.x, false, false), -18942), 18045)).a, select(13711u, 12313u, select(true, global4.x, false)), Struct_2(Struct_1(vec3<bool>(true, true, global4.x), 15584), func_5(-1, Struct_1(vec3<bool>(true, true, false), u_input.b)))).a.x), func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x - 1000.0))) > _wgslsmith_f_op_f32(-858.0 - _wgslsmith_f_op_f32(1000.0 * global3.x))).b.a.xx, Struct_1(!(!vec3<bool>(global4.x, global4.x, true)), 40310), func_4(_wgslsmith_add_u32(abs(1u), ~u_input.c) >= u_input.c).b.b).a.zz;
                    let var_1 = Struct_2(Struct_1(vec3<bool>(any(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, global4.x, global4.x), vec4<bool>(true, var_0.x, global4.x, true))), firstTrailingBit(0u) > (0u ^ 0u), any(vec4<bool>(true, true, true, var_0.x))), abs(-u_input.b)), func_8(arg_0.wzw, func_9(!vec4<bool>(false, true, var_0.x, true), var_0, Struct_1(select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, global4.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), u_input.a.x >> (23127u % 32u)), ~u_input.a.x), u_input.c >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 87831u)) % 32u), func_4(var_0.x)));
                    let var_2 = abs(74959u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(~abs(4294967295u), ~37724u, u_input.c & (2121u << (16537u % 32u))), select(firstTrailingBit(vec3<u32>(u_input.c, 1u, 0u)), select(vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(0u, 1u, 4294967295u)), !var_1.b.a), var_1.b.a)) % 32u);
                    global1 = u_input.a.x;
                }
            }
            for (var var_0: i32; ; ) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var var_1 = vec2<bool>(func_8(countOneBits(vec3<i32>(u_input.a.x, u_input.b, 0)), func_7(func_5(0, Struct_1(vec3<bool>(global4.x, false, global4.x), arg_0.x)), Struct_1(vec3<bool>(true, global4.x, true), 16104), _wgslsmith_div_f32(arg_1.x, 406.0), func_4(global4.x).b).b, ~_wgslsmith_sub_u32(64961u, u_input.c), Struct_2(func_5(1, Struct_1(vec3<bool>(global4.x, global4.x, global4.x), -14386)), func_8(arg_0.zxx, Struct_1(vec3<bool>(global4.x, global4.x, global4.x), -4555), u_input.c, Struct_2(Struct_1(vec3<bool>(global4.x, true, true), 2147483647), Struct_1(vec3<bool>(global4.x, global4.x, false), 1))))).a.x & any(vec3<bool>(global3.x > arg_1.x, u_input.c >= u_input.c, true)), !global4.x);
                var var_2 = -vec4<i32>(i32(-1) * -2147483648, firstTrailingBit(u_input.b), ~(i32(-1) * -804), -(func_9(vec4<bool>(false, global4.x, true, var_1.x), vec2<bool>(var_1.x, global4.x), Struct_1(vec3<bool>(true, true, true), u_input.b), arg_0.x).b | _wgslsmith_div_i32(arg_0.x, u_input.a.x)));
                continue;
            }
        }
        case 10360: {
            switch (u_input.a.x) {
                default: {
                    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -698.0) - arg_1.zx) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1167.0, 1777.0))))))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + global3.x)))));
                    var var_0 = u_input.a;
                    global0 = array<vec2<i32>, 12>();
                    var var_1 = _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647, u_input.a.x, _wgslsmith_div_i32(u_input.b, -16810), 4844), vec4<i32>(1, _wgslsmith_sub_i32(-5367, 7153), -var_0.x, var_0.x >> (u_input.c % 32u)))), ~(~min(func_3(arg_0.zyy, arg_0.x, u_input.c, vec4<bool>(true, true, global4.x, global4.x)), vec4<i32>(2147483647, u_input.b, 1, arg_0.x))));
                    let var_2 = arg_1.ywy;
                }
            }
            global4 = vec3<bool>(false, arg_1.x < -784.0, !((u_input.c << (firstLeadingBit(64787u) % 32u)) != (u_input.c >> ((1u & 60095u) % 32u))));
        }
        default: {
            global2 = array<vec4<f32>, 25>();
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                break;
            }
            var var_0 = Struct_1(vec3<bool>(func_5(~arg_0.x, func_8(arg_0.xwz | vec3<i32>(-25304, 44542, -24288), func_9(vec4<bool>(global4.x, false, false, global4.x), vec2<bool>(global4.x, global4.x), Struct_1(vec3<bool>(global4.x, global4.x, false), arg_0.x), u_input.a.x), ~0u, func_4(global4.x))).a.x, false, global4.x), -arg_0.x);
            if (!(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-755.0), 1679.0))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1254.0)) - _wgslsmith_f_op_f32(f32(-1.0) * -382.0)) - global3.x))) {
                global4 = var_0.a;
                var var_1 = vec4<bool>(!(_wgslsmith_div_u32(~u_input.c, u_input.c << (1u % 32u)) < u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), true, var_0.a.x);
                global4 = func_8(-arg_0.wyy, Struct_1(vec3<bool>(all(!vec4<bool>(var_0.a.x, true, var_1.x, var_1.x)), !(!false), global4.x), u_input.a.x), ~reverseBits(_wgslsmith_add_u32(u_input.c, 44876u) ^ ~u_input.c), func_7(func_9(vec4<bool>(var_1.x, !var_0.a.x, func_4(true).a.a.x, u_input.c > 1u), !vec2<bool>(false, true), func_5(u_input.b | 1, Struct_1(vec3<bool>(var_1.x, global4.x, global4.x), arg_0.x)), ~_wgslsmith_mult_i32(var_0.b, 2147483647)), Struct_1(!vec3<bool>(false, false, var_0.a.x), 35866), _wgslsmith_f_op_f32(arg_1.x * global3.x), Struct_1(vec3<bool>(select(true, var_0.a.x, var_1.x), global3.x == global3.x, var_0.a.x), ~25294 ^ var_0.b))).a;
                var var_2 = vec2<i32>(-2147483648, _wgslsmith_dot_vec4_i32(arg_0, min(arg_0, arg_0)) | (-4736 | 2147483647)) ^ vec2<i32>(countOneBits(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(1475, -2147483648))), (_wgslsmith_sub_i32(264, var_0.b) >> (_wgslsmith_add_u32(u_input.c, 32412u) % 32u)) & -(~u_input.a.x));
                let var_3 = false;
            }
            for (var var_1 = 25755; true; ) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_2 = !func_7(Struct_1(!var_0.a, -31349), Struct_1(func_7(func_7(Struct_1(vec3<bool>(false, global4.x, false), var_0.b), Struct_1(vec3<bool>(global4.x, true, global4.x), -1), arg_1.x, Struct_1(vec3<bool>(global4.x, true, true), -13473)).a, Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.b), _wgslsmith_f_op_f32(f32(-1.0) * -909.0), func_8(vec3<i32>(var_0.b, -81850, 10387), Struct_1(var_0.a, arg_0.x), 0u, Struct_2(Struct_1(var_0.a, u_input.a.x), Struct_1(vec3<bool>(true, true, true), -9026)))).a.a, min(var_0.b, u_input.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.x, arg_1.x))), -1305.0)), func_9(!select(vec4<bool>(false, global4.x, global4.x, var_0.a.x), vec4<bool>(var_0.a.x, true, false, true), global4.x), func_7(Struct_1(var_0.a, arg_0.x), func_7(Struct_1(var_0.a, 17122), Struct_1(vec3<bool>(global4.x, global4.x, var_0.a.x), -55921), global3.x, Struct_1(vec3<bool>(var_0.a.x, true, false), -30223)).b, _wgslsmith_f_op_f32(global3.x + 1000.0), Struct_1(var_0.a, -2147483648)).b.a.yz, Struct_1(select(var_0.a, vec3<bool>(false, var_0.a.x, var_0.a.x), true), ~0), var_0.b)).b.a.x;
                var var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))));
                var var_4 = Struct_1(!(!select(vec3<bool>(false, false, true), !vec3<bool>(true, false, false), u_input.c >= 33332u)), _wgslsmith_mult_i32(~0, abs(var_0.b)));
                continue;
            }
        }
    }
    for (var var_0 = arg_0.x; ; var_0 += 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var var_1 = _wgslsmith_clamp_vec2_i32(~firstTrailingBit(arg_0.xz), _wgslsmith_clamp_vec2_i32(select(~vec2<i32>(arg_0.x, 2147483647), countOneBits(_wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(18355u, 12u)], arg_0.yy)), global4.x), firstLeadingBit(global0[_wgslsmith_index_u32(~u_input.c << ((u_input.c >> (u_input.c % 32u)) % 32u), 12u)]), firstTrailingBit(_wgslsmith_div_vec2_i32(abs(vec2<i32>(37021, arg_0.x)), u_input.a & arg_0.zx))), -vec2<i32>(arg_0.x ^ -22107, ~(-2147483648)));
    }
    if (global4.x) {
        var var_0 = Struct_1(!(!vec3<bool>(global4.x, u_input.c != 4294967295u, func_7(Struct_1(vec3<bool>(false, global4.x, global4.x), -2561), Struct_1(vec3<bool>(global4.x, true, global4.x), 1), arg_1.x, Struct_1(vec3<bool>(global4.x, false, false), 1)).b.a.x)), 2147483647);
        let var_1 = vec3<bool>(any(vec4<bool>(!var_0.a.x, any(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(global4.x, var_0.a.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, global4.x, global4.x))), ~(-1) >= (33221 ^ var_0.b), false)), var_0.a.x, (global4.x || var_0.a.x) | global4.x);
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            continue;
        }
    }
    let var_0 = func_9(vec4<bool>(false, !((i32(-1) * -30472) == -1), !any(global4.yy), global4.x), func_9(!vec4<bool>(global4.x, any(vec4<bool>(global4.x, true, false, true)), true, global4.x), !select(vec2<bool>(true, true), global4.zy, true), Struct_1(!func_5(u_input.a.x, Struct_1(vec3<bool>(global4.x, global4.x, true), 0)).a, firstTrailingBit(func_4(global4.x).b.b)), u_input.b).a.zz, func_8(vec3<i32>(u_input.b, -3161, -func_5(-7892, Struct_1(vec3<bool>(true, true, global4.x), u_input.b)).b), Struct_1(!vec3<bool>(global4.x, false, global4.x), arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c, ~4294967295u, abs(u_input.c), _wgslsmith_mod_u32(1u, u_input.c)), abs(vec4<u32>(0u, 0u, 4294967295u, u_input.c))), func_7(func_4(global4.x).b, Struct_1(!vec3<bool>(false, true, global4.x), abs(0)), 271.0, func_9(select(vec4<bool>(true, global4.x, global4.x, true), vec4<bool>(true, global4.x, true, true), true), vec2<bool>(global4.x, true), func_7(Struct_1(vec3<bool>(false, global4.x, global4.x), 1), Struct_1(vec3<bool>(false, false, false), 0), 1155.0, Struct_1(vec3<bool>(global4.x, false, global4.x), u_input.b)).a, firstTrailingBit(-1)))), func_8(reverseBits(arg_0.zww), func_8(arg_0.ywy, func_7(func_7(Struct_1(vec3<bool>(false, true, false), arg_0.x), Struct_1(vec3<bool>(global4.x, false, global4.x), u_input.b), 985.0, Struct_1(vec3<bool>(true, global4.x, false), 37300)).a, Struct_1(vec3<bool>(false, global4.x, true), arg_0.x), _wgslsmith_f_op_f32(min(-1586.0, arg_1.x)), func_4(global4.x).a).a, firstLeadingBit(_wgslsmith_div_u32(1u, 19727u)), func_7(Struct_1(vec3<bool>(true, global4.x, global4.x), arg_0.x), func_9(vec4<bool>(false, true, false, global4.x), vec2<bool>(true, true), Struct_1(vec3<bool>(global4.x, global4.x, true), u_input.b), 44808), _wgslsmith_f_op_f32(-646.0), func_9(vec4<bool>(global4.x, true, false, global4.x), global4.yz, Struct_1(vec3<bool>(true, global4.x, false), u_input.b), -29958))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(12900u, u_input.c), vec2<u32>(u_input.c, u_input.c)), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(68339u, 1u)), ~vec2<u32>(1u, u_input.c), ~vec2<u32>(u_input.c, 4294967295u))), func_7(Struct_1(vec3<bool>(true, true, global4.x), arg_0.x), func_9(!vec4<bool>(global4.x, false, false, global4.x), vec2<bool>(true, global4.x), Struct_1(vec3<bool>(false, true, global4.x), u_input.a.x), 0), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(1786.0 + arg_1.x)), Struct_1(!vec3<bool>(global4.x, false, global4.x), arg_0.x))).b).a;
    var var_1 = vec4<i32>(-2147483648, -arg_0.x, -23839, select(1, u_input.b, !var_0.x));
    return Struct_2(func_5(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0, _wgslsmith_clamp_i32(var_1.x, arg_0.x, u_input.b)), func_8(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, 46567)), func_8(vec3<i32>(u_input.a.x, var_1.x, 2147483647), Struct_1(vec3<bool>(global4.x, false, global4.x), -19523), u_input.c, Struct_2(Struct_1(vec3<bool>(true, true, var_0.x), u_input.b), Struct_1(vec3<bool>(true, var_0.x, false), u_input.a.x))), countOneBits(u_input.c), Struct_2(Struct_1(var_0, -2147483648), Struct_1(vec3<bool>(var_0.x, true, global4.x), var_1.x))).b, -(~var_1.x)), Struct_1(func_8(var_1.wxy, Struct_1(vec3<bool>(global4.x, var_0.x, true), 15158), u_input.c, func_7(Struct_1(vec3<bool>(global4.x, var_0.x, false), arg_0.x), Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), u_input.b), 1890.0, Struct_1(var_0, var_1.x))).a, var_1.x)), func_5(_wgslsmith_add_i32(~2147483647, -_wgslsmith_mod_i32(arg_0.x, -2147483648)), func_9(!select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, true, global4.x, true), var_0.x), vec2<bool>(global4.x, 641u >= u_input.c), func_9(select(vec4<bool>(false, var_0.x, true, global4.x), vec4<bool>(false, global4.x, var_0.x, false), true), global4.zy, func_5(0, Struct_1(var_0, 0)), 40894), -2147483648)));
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>(global4.x, _wgslsmith_sub_i32(2147483647, reverseBits(u_input.a.x)) < u_input.b, global4.x), -20501);
    var var_1 = false;
    var var_2 = func_10(_wgslsmith_clamp_vec4_i32(firstTrailingBit(func_3(-vec3<i32>(u_input.a.x, -37943, var_0.b), u_input.a.x, u_input.c, select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, var_0.a.x, global4.x), vec4<bool>(var_0.a.x, false, global4.x, true)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1) * -vec4<i32>(41621, var_0.b, var_0.b, u_input.a.x), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b, 8744, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, var_0.b, var_0.b, u_input.b), true), vec4<i32>(6664, u_input.b, u_input.b, var_0.b) >> (vec4<u32>(u_input.c, u_input.c, arg_0.x, u_input.c) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 43349, -2147483648, u_input.b))), -_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, 1, 16212, -7133), vec4<i32>(var_0.b, var_0.b, 2147483647, var_0.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, var_0.b, -2147483648, u_input.b), vec4<i32>(-35889, u_input.a.x, u_input.a.x, u_input.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -724.0) + _wgslsmith_div_f32(-317.0, -294.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -515.0) + 1750.0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x * global3.x))))), _wgslsmith_f_op_f32(abs(global3.x))));
    for (var var_3 = -30435; !all(func_5(func_3(countOneBits(vec3<i32>(2147483647, var_0.b, -12775)), reverseBits(-25690), ~arg_0.x, select(vec4<bool>(true, false, var_0.a.x, true), vec4<bool>(true, true, global4.x, true), var_0.a.x)).x, var_2.b).a.xy); ) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    let var_3 = !(!(!(!func_7(var_2.b, Struct_1(vec3<bool>(false, false, global4.x), var_0.b), global3.x, Struct_1(vec3<bool>(false, global4.x, global4.x), 31463)).b.a)));
    return select(vec3<bool>(any(func_8(~vec3<i32>(-2821, 1, -1), Struct_1(vec3<bool>(var_3.x, true, var_2.a.a.x), 0), 4294967295u, func_4(global4.x)).a), _wgslsmith_mod_u32(~72421u, _wgslsmith_add_u32(arg_0.x, arg_0.x)) > _wgslsmith_sub_u32(~u_input.c, ~u_input.c), !(var_3.x && true) || any(!vec4<bool>(false, false, var_3.x, var_3.x))), vec3<bool>(select(_wgslsmith_f_op_f32(f32(-1.0) * -297.0) > global3.x, func_4(var_2.b.a.x).b.a.x, true), !(false && global4.x) | func_7(var_2.b, Struct_1(var_0.a, 2147483647), global3.x, var_2.b).a.a.x, false), func_4(func_4(global4.x).b.a.x).a.a.x);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.b, -2795)));
    let var_1 = u_input.c;
    if (global4.x) {
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            var var_2 = Struct_1(!select(vec3<bool>(!false, true, !false), func_2(~vec2<u32>(4294967295u, 45588u)), false), u_input.b);
            let var_3 = func_8(-(~abs(vec3<i32>(18284, 41430, -31653) ^ vec3<i32>(var_2.b, u_input.b, u_input.b))), func_7(Struct_1(!var_2.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0, -2147483648, var_2.b, u_input.a.x), vec4<i32>(2147483647, var_2.b, -1, var_2.b))), Struct_1(!vec3<bool>(global4.x, global4.x, global4.x), -2147483647), global3.x, Struct_1(!var_2.a, -46307)).a, var_1, func_10(_wgslsmith_mult_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b, u_input.b, -1, 0), vec4<i32>(u_input.a.x, 0, u_input.b, -18144)), vec4<i32>(-1, 2147483647, var_2.b, var_2.b), true), vec4<i32>(var_2.b, -var_2.b, 0, var_2.b)), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(80221u, var_1), 25u)])));
            let var_4 = -func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-53325, ~u_input.a.x, reverseBits(u_input.b)), min(vec3<i32>(1, u_input.b, -4444), ~vec3<i32>(var_2.b, 2147483647, 14338))), func_10(vec4<i32>(6710, var_3.b, u_input.a.x, 30501) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(7455u, var_1, 44294u, 30278u), vec4<u32>(var_1, 1u, 126411u, var_1)) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(u_input.c, 25u)]).b.b, ~(~1u), vec4<bool>(func_5(-72477, Struct_1(vec3<bool>(true, true, var_2.a.x), var_2.b)).a.x, u_input.c > ~4560u, any(!var_2.a.yy), func_4(global4.x).a.a.x || (0u > var_1))).x;
            continue;
        }
        switch (u_input.b) {
            case -2147483648: {
                var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, _wgslsmith_add_u32(0u, 63072u)), 25u)];
                let var_3 = func_10((vec4<i32>(-1) * -abs(vec4<i32>(u_input.a.x, -2147483648, -15931, u_input.b))) | vec4<i32>(func_9(!vec4<bool>(global4.x, true, global4.x, true), func_9(vec4<bool>(true, true, false, false), global4.yx, Struct_1(vec3<bool>(global4.x, global4.x, global4.x), -2147483648), -1).a.zz, func_7(Struct_1(vec3<bool>(global4.x, global4.x, true), u_input.a.x), Struct_1(vec3<bool>(true, global4.x, true), u_input.a.x), -716.0, Struct_1(vec3<bool>(false, global4.x, true), -1)).b, firstLeadingBit(28829)).b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483648, u_input.a.x, -61888), vec3<i32>(u_input.b, 2147483647, u_input.a.x)) & 0, u_input.a.x, -163), _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c) & vec3<u32>(u_input.c, 10201u, 54499u), ~vec3<u32>(var_1, var_1, var_1))), 25u)], _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(832.0, 1011.0, 2003.0, 883.0) * vec4<f32>(var_2.x, 1282.0, -1558.0, var_2.x)))))), select(select(vec4<bool>(global4.x, global4.x, true, global4.x), vec4<bool>(global4.x, true, global4.x, false), vec4<bool>(global4.x, global4.x, false, global4.x)), select(!vec4<bool>(global4.x, false, false, global4.x), vec4<bool>(global4.x, false, global4.x, true), global4.x), all(!vec3<bool>(global4.x, false, global4.x))))));
                let var_4 = 2147483647;
                global4 = vec3<bool>(var_3.a.a.x, var_3.b.a.x, !(!select(!true, true, false)));
            }
            case -30613: {
                let var_2 = u_input.b;
                global2 = array<vec4<f32>, 25>();
                let var_3 = func_4(!(global3.x != _wgslsmith_f_op_f32(exp2(global3.x))));
            }
            case 6185: {
                let var_2 = 36775u;
                let var_3 = u_input.c;
                let var_4 = func_7(func_7(func_7(Struct_1(!vec3<bool>(global4.x, true, global4.x), -u_input.b), func_9(!vec4<bool>(false, false, global4.x, true), global4.yz, func_8(vec3<i32>(u_input.b, u_input.a.x, 20793), Struct_1(vec3<bool>(global4.x, false, false), -7236), 1u, Struct_2(Struct_1(vec3<bool>(global4.x, true, global4.x), -40064), Struct_1(vec3<bool>(false, global4.x, true), 0))), firstLeadingBit(0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_div_f32(-479.0, global3.x))), Struct_1(vec3<bool>(global4.x, global4.x, global4.x), 1)).a, Struct_1(func_5(_wgslsmith_mod_i32(1, u_input.b), Struct_1(vec3<bool>(global4.x, true, true), 5452)).a, u_input.b), 740.0, Struct_1(vec3<bool>(true || global4.x, global4.x, !global4.x), -7911)).b, Struct_1(!(!func_10(vec4<i32>(9861, -1, 2889, u_input.b), global2[_wgslsmith_index_u32(4294967295u, 25u)]).b.a), _wgslsmith_mult_i32(u_input.b, -(i32(-1) * -69962))), -1843.0, Struct_1(select(vec3<bool>(false || true, func_10(vec4<i32>(1, -37648, 69538, u_input.a.x), vec4<f32>(global3.x, global3.x, global3.x, 197.0)).b.a.x, -798.0 == global3.x), !vec3<bool>(false, global4.x, true), select(false, global4.x, func_8(vec3<i32>(-65920, -1627, u_input.a.x), Struct_1(vec3<bool>(true, global4.x, false), 51973), 42193u, Struct_2(Struct_1(vec3<bool>(global4.x, false, global4.x), u_input.a.x), Struct_1(vec3<bool>(true, global4.x, false), u_input.a.x))).a.x)), ~u_input.a.x)).b;
            }
            default: {
                var var_2 = vec3<f32>(2094.0, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1612.0))))));
                var_0 = u_input.b;
                var_0 = u_input.a.x;
            }
        }
    }
    if (true) {
    }
    switch (~(-2147483648)) {
        case 19736: {
            switch (u_input.a.x) {
                case -1: {
                }
                case 1: {
                    global2 = array<vec4<f32>, 25>();
                    let var_2 = -(~vec2<i32>(-1 << (0u % 32u), ~(0 & u_input.b)));
                }
                case 0: {
                    let var_2 = func_4(global4.x);
                    var var_3 = global4.x;
                    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000.0, 1459.0), vec2<f32>(global3.x, global3.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 184.0) * vec2<f32>(global3.x, global3.x))))) + vec2<f32>(global3.x, global3.x));
                }
                case 17525: {
                    var var_2 = func_7(Struct_1(!(!vec3<bool>(global4.x, true, true)), func_3(vec3<i32>(_wgslsmith_sub_i32(-15472, -2147483648), u_input.b ^ -51843, ~u_input.b), u_input.a.x, abs(4294967295u), !(!vec4<bool>(global4.x, true, true, true))).x), func_7(func_5(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, -25216), vec3<i32>(1109, u_input.b, u_input.a.x)), Struct_1(!vec3<bool>(true, global4.x, global4.x), func_7(Struct_1(vec3<bool>(true, global4.x, global4.x), u_input.b), Struct_1(vec3<bool>(global4.x, global4.x, false), u_input.b), -149.0, Struct_1(vec3<bool>(global4.x, global4.x, false), 2147483647)).b.b)), Struct_1(vec3<bool>(all(vec4<bool>(true, false, global4.x, true)), !global4.x, true), reverseBits(-24012)), global3.x, func_5(func_7(Struct_1(vec3<bool>(true, true, global4.x), u_input.a.x), Struct_1(vec3<bool>(global4.x, true, global4.x), u_input.a.x), _wgslsmith_f_op_f32(-global3.x), Struct_1(vec3<bool>(true, true, global4.x), u_input.b)).a.b, Struct_1(func_4(true).b.a, u_input.b))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -1501.0) * global3.x), func_10(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, 1), u_input.b), 0, -4247, u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 25u)]), global2[_wgslsmith_index_u32(~min(83842u, var_1), 25u)])).a).a.a.x;
                    return u_input.c | countOneBits(u_input.c);
                }
                default: {
                    global4 = func_7(Struct_1(func_4(func_10(-vec4<i32>(u_input.b, -19995, u_input.b, u_input.b), global2[_wgslsmith_index_u32(~0u, 25u)]).a.a.x).a.a, ~_wgslsmith_mod_i32(u_input.a.x | u_input.a.x, -2147483648 << (1u % 32u))), Struct_1(vec3<bool>(!global4.x | !false, true, _wgslsmith_mult_i32(-34453, u_input.a.x) <= ~u_input.a.x), _wgslsmith_dot_vec3_i32(abs(func_3(vec3<i32>(1, u_input.b, 1), 1, u_input.c, vec4<bool>(false, true, false, global4.x)).wyw), reverseBits(min(vec3<i32>(u_input.a.x, 2147483647, 18852), vec3<i32>(u_input.b, 9763, -14653))))), _wgslsmith_f_op_f32(1122.0 + global3.x), func_5(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1, 2147483647, 1), vec4<i32>(u_input.a.x, -1, -9749, 29494))), func_5(-2147483648, Struct_1(!vec3<bool>(false, true, true), -11420)))).b.a;
                    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(499.0)), 1530.0, _wgslsmith_f_op_f32(abs(231.0)), 990.0), vec4<f32>(_wgslsmith_f_op_f32(trunc(global3.x)), global3.x, _wgslsmith_f_op_f32(global3.x * 699.0), -690.0))) - vec4<f32>(746.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.x)) + global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1302.0) - _wgslsmith_f_op_f32(min(global3.x, -509.0))), _wgslsmith_f_op_f32(-530.0))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), -645.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-global3.x)), vec4<f32>(1000.0, -359.0, 568.0, _wgslsmith_f_op_f32(932.0 - _wgslsmith_f_op_f32(min(global3.x, global3.x)))))));
                    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-var_2.x))))));
                }
            }
            let var_2 = Struct_2(Struct_1(!(!select(vec3<bool>(global4.x, false, true), vec3<bool>(true, true, true), false)), u_input.b), Struct_1(vec3<bool>(global4.x, !func_10(vec4<i32>(-14363, -27502, u_input.b, -15624), global2[_wgslsmith_index_u32(u_input.c, 25u)]).a.a.x, !global4.x), u_input.b));
        }
        default: {
            switch (31675) {
                case 0: {
                }
                case 43826: {
                    global1 = u_input.a.x;
                }
                case -20325: {
                    let var_2 = func_4(u_input.b < max(1, ~_wgslsmith_clamp_i32(u_input.b, 1, 9099))).b;
                    var var_3 = global3.x;
                }
                default: {
                }
            }
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                break;
            }
            var var_2 = vec3<f32>(-304.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-175.0 * -790.0))), _wgslsmith_f_op_f32(-global3.x));
            loop {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                let var_3 = _wgslsmith_f_op_f32(abs(var_2.x));
                var var_4 = Struct_1(!vec3<bool>(all(func_4(false).a.a), func_6(), any(select(vec4<bool>(global4.x, true, global4.x, true), vec4<bool>(global4.x, global4.x, global4.x, true), false))), u_input.b);
                var_0 = ~var_4.b;
            }
        }
    }
    return ~u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        break;
    }
    switch (u_input.b) {
        case 19889: {
            let var_0 = Struct_2(Struct_1(!vec3<bool>(all(vec2<bool>(false, true)), any(global4.yx), !global4.x), countOneBits(~u_input.a.x)), Struct_1(!select(vec3<bool>(true, global4.x, global4.x), !vec3<bool>(true, global4.x, false), select(vec3<bool>(false, global4.x, false), vec3<bool>(true, true, global4.x), vec3<bool>(global4.x, global4.x, global4.x))), _wgslsmith_clamp_i32(22078, u_input.b, _wgslsmith_sub_i32(59761, u_input.a.x)) >> (43886u % 32u)));
            let var_1 = vec4<i32>(u_input.a.x << (_wgslsmith_mult_u32(abs(func_1()), u_input.c) % 32u), u_input.b, func_7(func_4(global4.x).a, var_0.a, _wgslsmith_f_op_f32(-440.0 + global3.x), func_5(-6782, func_7(func_9(vec4<bool>(false, true, true, true), var_0.b.a.xy, var_0.b, u_input.b), Struct_1(var_0.b.a, 27713), _wgslsmith_f_op_f32(ceil(global3.x)), func_8(vec3<i32>(15212, -18294, 18081), Struct_1(var_0.b.a, var_0.a.b), 4294967295u, var_0)).a)).a.b, -2147483648);
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                break;
            }
            let var_2 = func_5(-_wgslsmith_sub_i32(~(u_input.a.x & -2147483648), 0), var_0.a);
        }
        default: {
            let var_0 = !func_2(countOneBits(select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 84943u), global4.x)) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(90023u, 4294967295u), vec2<u32>(44312u, u_input.c)), max(u_input.c, u_input.c)));
            loop {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                break;
            }
        }
    }
    var var_0 = func_7(func_9(vec4<bool>(_wgslsmith_f_op_f32(sign(-1815.0)) != _wgslsmith_f_op_f32(-global3.x), (global4.x && true) || !false, !func_8(vec3<i32>(u_input.b, -1, 33755), Struct_1(vec3<bool>(false, false, true), u_input.a.x), u_input.c, Struct_2(Struct_1(vec3<bool>(global4.x, global4.x, true), -2147483648), Struct_1(vec3<bool>(false, global4.x, false), -1))).a.x, false), vec2<bool>(!func_5(24055, Struct_1(vec3<bool>(global4.x, global4.x, true), u_input.a.x)).a.x, !func_9(vec4<bool>(false, false, false, true), vec2<bool>(global4.x, false), Struct_1(vec3<bool>(global4.x, true, true), u_input.a.x), u_input.a.x).a.x), func_7(Struct_1(vec3<bool>(global4.x, global4.x, global4.x), _wgslsmith_add_i32(17380, u_input.a.x)), func_8(max(vec3<i32>(-2147483648, u_input.b, u_input.b), vec3<i32>(1, u_input.b, -1)), Struct_1(vec3<bool>(false, global4.x, global4.x), u_input.a.x), _wgslsmith_sub_u32(118822u, u_input.c), Struct_2(Struct_1(vec3<bool>(true, false, false), 1), Struct_1(vec3<bool>(global4.x, false, global4.x), u_input.a.x))), global3.x, Struct_1(vec3<bool>(true, false, global4.x), u_input.b >> (u_input.c % 32u))).b, -34672), Struct_1(func_7(func_7(Struct_1(vec3<bool>(true, global4.x, true), u_input.a.x), func_10(vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.b), global2[_wgslsmith_index_u32(u_input.c, 25u)]).a, _wgslsmith_f_op_f32(global3.x - -1285.0), func_5(0, Struct_1(vec3<bool>(global4.x, global4.x, false), u_input.b))).a, func_9(!vec4<bool>(false, false, true, global4.x), !vec2<bool>(global4.x, false), func_10(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(u_input.c, 25u)]).b, -2147483648 >> (u_input.c % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3.x, global3.x, global4.x)), _wgslsmith_f_op_f32(f32(-1.0) * -1354.0)), Struct_1(!vec3<bool>(false, global4.x, global4.x), _wgslsmith_sub_i32(5652, -35732))).a.a, -1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(global3.x * -1051.0)))), func_10(-_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-38650, 0, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483648, 65836, 2147483647)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -1, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b, 18191, u_input.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1172.0, global3.x, global3.x, 1527.0) - global2[_wgslsmith_index_u32(u_input.c, 25u)]))))).a).b;
    global2 = array<vec4<f32>, 25>();
    global1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~(~(~u_input.c ^ 0u)), 25u)], global3.x, _wgslsmith_add_vec4_i32(~(select(vec4<i32>(var_0.b, var_0.b, 4846, 13403), vec4<i32>(u_input.a.x, var_0.b, u_input.b, u_input.a.x), vec4<bool>(false, true, global4.x, global4.x)) ^ (vec4<i32>(-18852, var_0.b, 32971, -1) >> (vec4<u32>(1u, u_input.c, 21234u, 4294967295u) % vec4<u32>(32u)))), firstLeadingBit(~(vec4<i32>(-5784, -15070, var_0.b, 55729) | vec4<i32>(5497, u_input.b, 13931, u_input.a.x)))), min(abs(~(~vec3<u32>(1u, u_input.c, u_input.c))), reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, 29360u), ~vec3<u32>(u_input.c, 15867u, 0u)))));
}

