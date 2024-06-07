// {"0:0":[55,185,209,45,236,230,51,242]}
// Seed: 15997312178486810712

struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<i32>(0, -1, -2147483648, -2147483648), vec4<f32>(-1000.0, -786.0, 1507.0, -1200.0), vec2<f32>(708.0, -3131.0)), Struct_1(vec4<i32>(2147483647, -2147483648, -2147483648, -1), vec4<f32>(-1678.0, -583.0, 1858.0, -1863.0), vec2<f32>(1811.0, -715.0)), Struct_1(vec4<i32>(1, 0, 17318, 2147483647), vec4<f32>(299.0, -1501.0, -639.0, -149.0), vec2<f32>(-110.0, -767.0)), Struct_1(vec4<i32>(-1, -14550, -505, -1), vec4<f32>(470.0, -943.0, 223.0, 616.0), vec2<f32>(-548.0, -146.0)), Struct_1(vec4<i32>(-28315, 2147483647, 23920, -65856), vec4<f32>(-1622.0, 402.0, 606.0, -1393.0), vec2<f32>(1516.0, -571.0)), Struct_1(vec4<i32>(0, 40291, -2147483648, -24336), vec4<f32>(564.0, 1580.0, -1382.0, 945.0), vec2<f32>(648.0, -1157.0)), Struct_1(vec4<i32>(22874, -24177, -8742, 2147483647), vec4<f32>(717.0, -934.0, -361.0, 992.0), vec2<f32>(-590.0, 606.0)), Struct_1(vec4<i32>(36724, 2147483647, -39656, 16601), vec4<f32>(839.0, -690.0, 510.0, -211.0), vec2<f32>(-2329.0, -671.0)), Struct_1(vec4<i32>(22148, -16482, 1, 1), vec4<f32>(-1000.0, 834.0, 551.0, -1209.0), vec2<f32>(-1516.0, -1414.0)), Struct_1(vec4<i32>(-9546, 53856, -1, -1), vec4<f32>(702.0, -673.0, -1823.0, 1013.0), vec2<f32>(-1985.0, 347.0)), Struct_1(vec4<i32>(-47253, 2147483647, 0, -25226), vec4<f32>(1030.0, 1000.0, 375.0, 352.0), vec2<f32>(-1393.0, 165.0)), Struct_1(vec4<i32>(-20149, -11073, -8561, -1), vec4<f32>(-665.0, 1322.0, -1000.0, -639.0), vec2<f32>(1646.0, 1911.0)), Struct_1(vec4<i32>(20630, -2147483648, 1, -1), vec4<f32>(745.0, 1043.0, -662.0, -1672.0), vec2<f32>(1682.0, -172.0)), Struct_1(vec4<i32>(7774, -15903, 23166, -2147483648), vec4<f32>(-1000.0, -529.0, -395.0, -1516.0), vec2<f32>(-1283.0, 1525.0)), Struct_1(vec4<i32>(-2147483648, 2147483647, -1, 1), vec4<f32>(619.0, 1000.0, -777.0, 1138.0), vec2<f32>(-1317.0, -1398.0)), Struct_1(vec4<i32>(2147483647, 0, -1, -1), vec4<f32>(408.0, -1000.0, -258.0, 1019.0), vec2<f32>(-1107.0, 191.0)), Struct_1(vec4<i32>(32012, -54457, 12962, -5251), vec4<f32>(3037.0, -1354.0, -802.0, 150.0), vec2<f32>(945.0, -770.0)), Struct_1(vec4<i32>(17958, -19866, 116690, -1), vec4<f32>(-1356.0, -646.0, 1082.0, -1890.0), vec2<f32>(-154.0, 1555.0)), Struct_1(vec4<i32>(8399, 2147483647, -2147483648, -7684), vec4<f32>(387.0, -292.0, -1439.0, -763.0), vec2<f32>(557.0, -252.0)), Struct_1(vec4<i32>(2147483647, -1, -54733, -13134), vec4<f32>(1175.0, -346.0, 438.0, 564.0), vec2<f32>(-1754.0, -1231.0)), Struct_1(vec4<i32>(-45410, 13424, 1473, -2147483648), vec4<f32>(-471.0, -1412.0, -430.0, 226.0), vec2<f32>(2138.0, -2072.0)), Struct_1(vec4<i32>(0, 46614, 1707, -2147483648), vec4<f32>(-1014.0, 2405.0, -1253.0, 601.0), vec2<f32>(-1908.0, -902.0)));

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-7458, 81795, 3204, 1), vec2<bool>(false, false), vec4<bool>(true, true, true, true), -315.0);

var<private> global2: array<u32, 17> = array<u32, 17>(90250u, 32962u, 0u, 59609u, 21864u, 11646u, 16850u, 6797u, 27079u, 25309u, 2282u, 4294967295u, 630u, 4294967295u, 1u, 1u, 0u);

var<private> LOOP_COUNTERS: array<u32, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_6() -> u32 {
    if (!false) {
        let var_0 = Struct_2(-_wgslsmith_add_vec4_i32(select(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, 3427, global1.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.a.x, -28030, global1.a.x, -58407), vec4<i32>(u_input.b, -1, u_input.b, u_input.b)), global1.c), countOneBits(vec4<i32>(global1.a.x, 1, 1, -1))), !(!global1.c.zx), vec4<bool>(global1.c.x, global1.c.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2266.0)) > 889.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.d - 629.0))) + global1.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * global1.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.d, global1.d)) - _wgslsmith_f_op_f32(ceil(global1.d))))));
        for (var var_1 = -2147483648; var_0.c.x; var_1 -= 1) {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            global1 = var_0;
            var_1 = u_input.b;
        }
        for (; ; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var var_1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 17u)], 22u)];
            break;
        }
        for (var var_1: i32; -9740 != -1; ) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_2 = all(global1.c);
            continue;
        }
        global0 = array<Struct_1, 22>();
    }
    var var_0 = ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(77225u, 17u)]), ~vec2<u32>(13944u, u_input.a)));
    var var_1 = ~_wgslsmith_dot_vec4_i32(global1.a, -(~global1.a | min(vec4<i32>(1, -1, -15143, 39333), vec4<i32>(30218, 0, -1, 2147483647))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, -281.0, global1.d) + vec3<f32>(global1.d, global1.d, 332.0)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000.0, 964.0, global1.d))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, 1000.0, 1057.0)), vec3<f32>(-1000.0, -470.0, 1949.0), false)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289.0 - global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1929.0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1033.0, -854.0, global1.d) + vec3<f32>(540.0, global1.d, -1000.0)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.d, global1.d, global1.d))), !global1.c.xyz)))));
    global0 = array<Struct_1, 22>();
    return 0u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = global1.c.x;
    var var_1 = vec4<u32>(_wgslsmith_div_u32(max(func_6(), 38850u), _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 74695u, 106826u, global2[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<u32>(u_input.a, 97740u, 2017u, 10216u)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(81296u, 17u)], 37103u, 47833u, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43049u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 1u)))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 4294967295u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(36648u, 15202u), vec2<u32>(1u, u_input.a))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(9550u, 4294967295u, 1u, 96668u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<u32>(4294967295u, u_input.a, u_input.a, 19201u))))), ~min(~abs(u_input.a), reverseBits(4294967295u)), ~38965u);
    var var_2 = vec2<f32>(-448.0, _wgslsmith_f_op_f32(floor(1105.0)));
    let var_3 = !global1.c.xyy;
    var_2 = _wgslsmith_f_op_vec2_f32(arg_0.c + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(select(arg_1.c.x, -590.0, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -322.0), 1260.0))), arg_1.c.x));
    return Struct_2(vec4<i32>(-1) * -(~(-arg_1.a)), vec2<bool>(true, true), vec4<bool>(!(arg_0.a.x >= global1.a.x), 0 == (global1.a.x ^ global1.a.x), !all(vec3<bool>(true, var_3.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -468.0) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-516.0, global1.d), _wgslsmith_f_op_f32(-1373.0 + arg_0.b.x))))));
}

fn func_4(arg_0: Struct_1) -> bool {
    switch (_wgslsmith_clamp_i32(~0, u_input.b, -41339)) {
        default: {
            global1 = func_5(Struct_1(-vec4<i32>(2147483647 >> (48876u % 32u), -global1.a.x, max(6736, 0), select(arg_0.a.x, arg_0.a.x, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 553.0, -936.0, global1.d))) + vec4<f32>(global1.d, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(f32(-1.0) * -305.0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), global1.d))), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32((_wgslsmith_sub_u32(firstTrailingBit(3607u), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)])) & global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~31203u, 2540u), 17u)]) & ~global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 22u)]);
            for (var var_0 = 2147483647; var_0 == 28358; var_0 = ~(~arg_0.a.x)) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                global1 = Struct_2(select(reverseBits(arg_0.a), -(global1.a << ((vec4<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(103480u, 17u)], u_input.a) ^ vec4<u32>(0u, 1u, 17856u, u_input.a)) % vec4<u32>(32u))), vec4<bool>(!(!global1.c.x), global1.b.x, true, true)), !select(vec2<bool>(global1.c.x, func_5(arg_0, Struct_1(vec4<i32>(0, -2147483648, 6531, global1.a.x), arg_0.b, vec2<f32>(global1.d, -640.0))).b.x), global1.b, all(vec3<bool>(true, true, false))), global1.c, global1.d);
                var_0 = ~(_wgslsmith_mod_i32(abs(-31142), 49765 & _wgslsmith_dot_vec3_i32(vec3<i32>(-1, 2147483647, global1.a.x), vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x))) & func_5(arg_0, Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -1466.0, 659.0, global1.d)), arg_0.c)).a.x);
                var var_1 = arg_0.a;
                return all(!select(!global1.c, vec4<bool>(true || global1.c.x, select(false, true, global1.b.x), true & false, global1.b.x | true), global1.c));
            }
            return true;
        }
    }
    for (var var_0 = 23565; var_0 < 0; var_0 = min(-reverseBits(u_input.b), ~select(_wgslsmith_dot_vec3_i32(global1.a.xzz, vec3<i32>(u_input.b, global1.a.x, 13157)), 3163, global1.b.x || true)) | ~_wgslsmith_dot_vec3_i32(global1.a.wzy, global1.a.ywz)) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
    }
    var var_0 = (vec2<u32>(firstLeadingBit(0u), 9434u) ^ vec2<u32>(~56100u, u_input.a)) << ((vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 17u)]) | reverseBits(min(reverseBits(vec2<u32>(1u, 1u)), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u) >> (vec2<u32>(4294967295u, 47652u) % vec2<u32>(32u))))) % vec2<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u & select(58086u, var_0.x, !(!(global1.b.x && true))), 22u)];
    let var_2 = func_5(Struct_1(vec4<i32>(i32(-1) * -u_input.b, var_1.a.x | -2147483647, _wgslsmith_add_i32(var_1.a.x, -26264), arg_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.b, _wgslsmith_f_op_vec4_f32(ceil(arg_0.b)))) - _wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(arg_0.b.x, 425.0, arg_0.c.x, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.b.x)) + _wgslsmith_f_op_vec2_f32(-var_1.b.yy))), Struct_1(vec4<i32>(~max(2147483647, 37262), u_input.b, 36573, reverseBits(0)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.x, -1057.0, var_1.b.x, arg_0.b.x), vec4<f32>(-1250.0, arg_0.b.x, -1945.0, 503.0))))), _wgslsmith_f_op_vec2_f32(var_1.c * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-247.0, -1005.0))))))));
    return !true;
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1.0) * -503.0);
    for (; func_4(Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, global1.d, global1.d, global1.d) - vec4<f32>(-761.0, global1.d, -339.0, -501.0)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-861.0, 515.0, global1.d, global1.d))), vec4<f32>(global1.d, 1000.0, -484.0, global1.d)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -1065.0)))))); ) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        var var_1 = -126.0;
        var var_2 = vec4<f32>(-1000.0, global1.d, -175.0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(685.0, -1175.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d)))));
        var var_3 = func_5(Struct_1(firstTrailingBit(vec4<i32>(2147483647, -9009, _wgslsmith_div_i32(u_input.b, -37593), _wgslsmith_mod_i32(global1.a.x, -50722))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x * global1.d), global1.d, _wgslsmith_f_op_f32(var_2.x - global1.d), global1.d)), var_2.xx), Struct_1(max(abs(global1.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 5488, 4872, -65807), vec4<i32>(2147483647, arg_0, global1.a.x, -1), ~vec4<i32>(1, 8068, u_input.b, arg_0))), vec4<f32>(1828.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.d, global1.d)))), _wgslsmith_f_op_f32(386.0 + _wgslsmith_f_op_f32(sign(-1000.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1574.0))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260.0 + var_2.x) * _wgslsmith_f_op_f32(-2499.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(max(global1.d, var_2.x)))))));
    }
    global0 = array<Struct_1, 22>();
    for (var var_1 = -55620; global1.c.x | any(select(select(!global1.c, !global1.c, global1.b.x), global1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12366u, 17u)], 17u)], 88764u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], 63609u)) != _wgslsmith_dot_vec2_u32(vec2<u32>(30625u, 4294967295u), vec2<u32>(u_input.a, 23082u)))); var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(206.0 + global1.d), _wgslsmith_f_op_f32(-global1.d))))) + global1.d)) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            continue;
        }
        continue;
    }
    let var_1 = Struct_2(firstLeadingBit(_wgslsmith_sub_vec4_i32(global1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647, -15266, u_input.b, -25700), global1.a))), func_5(Struct_1(vec4<i32>(arg_0, ~(-14914), 0 ^ 2147483647, ~(-17185)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1004.0, -1291.0, global1.d, 1738.0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-832.0, global1.d, -958.0, global1.d)), false && false)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, global1.d))))), global0[_wgslsmith_index_u32(countOneBits(63508u), 22u)]).c.yy, select(!(!vec4<bool>(global1.c.x, true, global1.c.x, global1.c.x)), global1.c, global1.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global1.d)))));
    return ~vec4<u32>(60922u ^ u_input.a, u_input.a, 12772u, 4294967295u);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: vec3<u32>) -> vec4<u32> {
    if (arg_2.b.x) {
    }
    var var_0 = max(20532, _wgslsmith_mult_i32(-(53850 ^ arg_2.a.x), _wgslsmith_dot_vec3_i32(global1.a.yxw, countOneBits(arg_2.a.yzw))));
    for (var var_1 = 2147483647; ; var_1 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        switch (arg_1) {
            case 65189: {
                let var_2 = arg_2.c.x;
            }
            case -51061: {
                break;
            }
            default: {
                break;
            }
        }
        var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-615.0, _wgslsmith_f_op_f32(global1.d * -1468.0), -1700.0, -1000.0), vec4<f32>(1025.0, -475.0, 480.0, 1731.0), global1.b.x))));
        let var_3 = arg_2;
        var var_4 = vec2<bool>(global1.a.x <= -1, true);
    }
    return func_3(countOneBits(~(~global1.a.x)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 17u)], 25742u) >> (vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)], 4294967295u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(func_2(u_input.b, u_input.b, Struct_2(vec4<i32>(4286, 2147483647, global1.a.x, u_input.b), global1.b, vec4<bool>(false, true, global1.c.x, false), -351.0), vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)])), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(23369u, 17u)], 4294967295u, u_input.a, global2[_wgslsmith_index_u32(0u, 17u)])))), ~(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 0u), ~global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(max(34838u, 52951u), 17u)], reverseBits(u_input.a)) << (~(~vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 17u)], 10151u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a, 46796u, global2[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(44822u, u_input.a, 4294967295u, u_input.a), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69838u, 17u)], 17u)], 17u)], u_input.a, 28113u, 31148u))), vec4<u32>(u_input.a, 1u, 1u, u_input.a) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(11789u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), ~reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], 17u)], u_input.a, 22266u)) | func_2(_wgslsmith_add_i32(u_input.b, -2147483648), func_5(global0[_wgslsmith_index_u32(28405u, 22u)], Struct_1(global1.a, vec4<f32>(global1.d, global1.d, global1.d, global1.d), vec2<f32>(-1022.0, 183.0))).a.x, func_5(Struct_1(global1.a, vec4<f32>(global1.d, -764.0, 1129.0, global1.d), vec2<f32>(global1.d, global1.d)), global0[_wgslsmith_index_u32(5939u, 22u)]), vec3<u32>(0u, u_input.a, 30356u))));
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    switch (_wgslsmith_sub_i32(11921, u_input.b)) {
        case -50240: {
            global2 = array<u32, 17>();
            if (global1.b.x) {
            }
            var var_1 = 35246u;
            var var_2 = Struct_2(vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(u_input.b, ~global1.a.x)), -((-1 ^ -7318) >> (5621u % 32u)), _wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(15297, u_input.b, u_input.b, global1.a.x)) << (~32199u % 32u), min(1, _wgslsmith_add_i32(0 >> (15434u % 32u), abs(global1.a.x)))), vec2<bool>(!true | (false | global1.c.x), !(!true)), select(select(vec4<bool>(false, global1.b.x, false, global1.b.x), vec4<bool>(func_4(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 22u)]), global1.c.x, !false, any(vec2<bool>(global1.b.x, true))), any(select(vec2<bool>(global1.c.x, global1.c.x), global1.b, global1.b.x))), func_5(Struct_1(-global1.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(292.0, global1.d, global1.d, global1.d), vec4<f32>(global1.d, 442.0, global1.d, global1.d), vec4<bool>(global1.c.x, false, false, global1.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, 857.0))), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 17u)], 22u)]).c, all(vec4<bool>(all(global1.c.yx), true && false, global1.b.x, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-480.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d, -1133.0))))));
        }
        default: {
            global0 = array<Struct_1, 22>();
            for (var var_1 = -2147483648; global1.b.x; var_1 -= 1) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                let var_2 = global0[_wgslsmith_index_u32(11573u, 22u)];
            }
            var var_1 = var_0.wy;
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            }
            let var_2 = _wgslsmith_f_op_f32(max(2086.0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.d))))));
        }
    }
    if (func_4(Struct_1(firstTrailingBit(vec4<i32>(u_input.b, -u_input.b, firstTrailingBit(u_input.b), _wgslsmith_div_i32(u_input.b, 1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.d + global1.d), global1.d, 633.0, global1.d) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(363.0, 1017.0, -1000.0, global1.d))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d, -274.0), vec2<f32>(global1.d, 1255.0), true)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.d, global1.d))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(2420.0, -1401.0) * vec2<f32>(global1.d, global1.d)), vec2<f32>(109.0, 2669.0), true | true)))))) {
    }
    var_0 = vec4<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 17u)], 65011u, 1u, ~func_3(global1.a.x).x);
    return Struct_2(max(countOneBits(~(~global1.a)), vec4<i32>(u_input.b, -global1.a.x, -_wgslsmith_mult_i32(u_input.b, 7015), -4683)), vec2<bool>(false, true), vec4<bool>(true & true, global1.c.x, all(!select(vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(global1.c.x, true, global1.c.x), global1.b.x)), ~var_0.x <= _wgslsmith_sub_u32(select(global2[_wgslsmith_index_u32(u_input.a, 17u)], 51378u, global1.b.x), ~13528u)), -1318.0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    var var_0 = func_1();
    let var_1 = ~_wgslsmith_mod_vec3_i32(global1.a.xyx >> (reverseBits(~vec3<u32>(12013u, 24793u, 45151u)) % vec3<u32>(32u)), vec3<i32>(func_1().a.x, func_1().a.x, reverseBits(var_0.a.x)) << (firstTrailingBit(select(vec3<u32>(114629u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 17u)], 17u)]), vec3<u32>(global2[_wgslsmith_index_u32(488u, 17u)], 7101u, u_input.a), var_0.c.zyw)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-1428.0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(719.0 + _wgslsmith_f_op_f32(f32(-1.0) * -920.0)) - var_0.d) - _wgslsmith_div_f32(var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(2295.0 - 534.0), _wgslsmith_f_op_f32(-global1.d)))));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var_2 = var_0.d;
        global0 = array<Struct_1, 22>();
        global0 = array<Struct_1, 22>();
    }
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(global1.a.x, -1, -var_1.x) << (vec3<u32>(0u, 680u << (u_input.a % 32u), 0u) % vec3<u32>(32u))));
}

