// {"0:0":[54,144,156,112,249,209,2,19,110,181,125,163,97,244,160,79,205,141,90,163,224,145,50,135,0,92,53,186,216,43,60,35]}
// Seed: 14589088489148107904

struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: Struct_4 = Struct_4(vec4<i32>(-2147483648, 2147483647, -1, -2147483648), vec3<i32>(-1, 0, -2147483648), -51234, vec2<i32>(-19573, 7255), vec4<bool>(false, true, true, true));

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec4<bool>(false, false, false, true), 1808.0, 762.0, 30417, 529.0), vec4<i32>(2147483647, 30024, 19787, -5363)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), -1389.0, 426.0, 4405, -1026.0), vec4<i32>(1, -1, 10842, 0)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), -1578.0, -267.0, -2147483648, 353.0), vec4<i32>(-23549, -1, 2147483647, 2147483647)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), -164.0, -324.0, -2388, -649.0), vec4<i32>(-2147483648, 1, -1, -37100)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), 1088.0, 215.0, 9118, 1147.0), vec4<i32>(-2147483648, -2147483648, -32991, -34725)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), -2301.0, 1091.0, 6970, -557.0), vec4<i32>(11453, -24249, 2147483647, 47377)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), 393.0, 296.0, 20595, -763.0), vec4<i32>(-2147483648, 52596, 23466, -26193)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), -519.0, 1232.0, -1, 1295.0), vec4<i32>(1, 20096, 26063, -832)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), -1035.0, -922.0, -1, -1287.0), vec4<i32>(-1, 28301, -2147483648, -34608)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), -2116.0, 1000.0, 17311, 1000.0), vec4<i32>(2147483647, 31426, 1, 0)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), -280.0, -564.0, -20106, -236.0), vec4<i32>(-78816, 0, -1, -2147483648)));

var<private> global3: array<f32, 4>;

var<private> LOOP_COUNTERS: array<u32, 8>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(~4294967295u << (reverseBits(u_input.c) % 32u), 4u)];
    var var_1 = ~(4214 & ~(-1));
    global2 = array<Struct_2, 11>();
    let var_2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(abs(arg_0), 4294967295u, arg_0) >> (u_input.b % vec3<u32>(32u)), u_input.b);
    global3 = array<f32, 4>();
    return 4294967295u;
}

fn func_6() -> i32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        continue;
    }
    global1 = Struct_4(_wgslsmith_add_vec4_i32((countOneBits(global1.a) << (~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, -5843, global1.a.x, u_input.a), ~global1.a), firstLeadingBit(vec4<i32>(-2147483648, u_input.a, -1, -1) ^ global1.a)), global1.b, u_input.a, vec2<i32>(~(-global1.d.x), _wgslsmith_div_i32(firstLeadingBit(54469), _wgslsmith_sub_i32(global1.a.x, u_input.a))) & _wgslsmith_mult_vec2_i32(global1.a.zz, ~(~global1.d)), select(!(!select(global1.e, global1.e, vec4<bool>(false, true, global1.e.x, global0[_wgslsmith_index_u32(u_input.c, 31u)]))), vec4<bool>(all(global1.e.yyx), -629.0 != -1629.0, !false, true), any(select(vec2<bool>(global1.e.x, false), select(global1.e.xz, global1.e.wz, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], true)))));
    let var_0 = Struct_3(_wgslsmith_mult_u32(1u, 1u));
    global0 = array<bool, 31>();
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1) * -27754, abs(u_input.a), reverseBits(-33563)), ~(global1.a.yzz & vec3<i32>(global1.d.x, global1.b.x, 7699))), _wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.a, -42107, countOneBits(u_input.a)), max(vec3<i32>(-2147483648, global1.b.x, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.d.x, -2147483648, 16416), global1.a.zww)), vec3<i32>(-1) * -global1.a.zyx)), -3881, global1.c);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(global1.a.x, global1.a.x, -2147483648, -2147483648)), -vec4<i32>(var_1, global1.d.x, u_input.a, u_input.a)), -abs(abs(1))), ~global1.a.ww);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    for (var var_0: i32; var_0 > -1; global1 = Struct_4(arg_1.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global1.a.wxz, global1.b) << (~arg_2 % 32u), _wgslsmith_clamp_i32(global1.b.x, u_input.a, _wgslsmith_sub_i32(-2147483648, arg_0)), 1), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(8259, -1, u_input.a, -25468), firstLeadingBit(vec4<i32>(u_input.a, arg_3.d, -32837, global1.d.x))), -2147483648, 2147483647 >> (abs(arg_2) % 32u)), abs(countOneBits(vec3<i32>(-2055, global1.b.x, 65068))) << (_wgslsmith_mod_vec3_u32(~u_input.b, ~u_input.b) % vec3<u32>(32u))), ~((u_input.a ^ (global1.c ^ arg_1.b.x)) & func_6()), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.x, u_input.a), vec2<i32>(-global1.a.x, _wgslsmith_clamp_i32(83622, arg_0, 0)), vec2<i32>(arg_3.d, -4347)), global1.a.wy, select(select(!global1.e.zw, vec2<bool>(arg_3.a.x, arg_3.a.x), global1.e.yw), global1.e.zx, global0[_wgslsmith_index_u32(arg_2, 31u)])), vec4<bool>(true, true, false, true))) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        if (arg_1.a.a.x) {
        }
        global0 = array<bool, 31>();
        if (global0[_wgslsmith_index_u32(1u, 31u)]) {
            let var_1 = !(min(global1.d.x, _wgslsmith_clamp_i32(arg_1.a.d, -1, arg_0) >> (~u_input.c % 32u)) <= reverseBits(firstLeadingBit(func_6())));
            break;
        }
        let var_1 = max(-2147483648, -min(5982, func_6()));
        global2 = array<Struct_2, 11>();
    }
    global0 = array<bool, 31>();
    if (false == true) {
    }
    global0 = array<bool, 31>();
    let var_0 = !global1.e.yy;
    return vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.a.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1771.0 - _wgslsmith_f_op_f32(ceil(arg_1.a.b))))))), _wgslsmith_f_op_f32(floor(-487.0)), arg_1.a.b, _wgslsmith_div_f32(_wgslsmith_div_f32(-1626.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 4u)] - 245.0) - global3[_wgslsmith_index_u32(3814u ^ u_input.b.x, 4u)])), _wgslsmith_f_op_f32(ceil(-926.0))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = ~((vec2<u32>(u_input.c, _wgslsmith_div_u32(u_input.c, u_input.c)) | vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.b.x), min(u_input.b.x, 4294967295u))) ^ u_input.b.xx);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(-57956, global2[_wgslsmith_index_u32(~50410u, 11u)], _wgslsmith_add_u32(4294967295u, u_input.b.x), Struct_1(vec4<bool>(global1.e.x, global0[_wgslsmith_index_u32(u_input.c, 31u)], arg_1.x, global0[_wgslsmith_index_u32(u_input.c, 31u)]), global3[_wgslsmith_index_u32(u_input.c, 4u)], -152.0, global1.c, -587.0))))));
    global2 = array<Struct_2, 11>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207.0));
    return Struct_1(select(select(global1.e, vec4<bool>(any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), all(arg_1.xx), any(global1.e), var_0.x >= 17320u), !arg_1.x), global1.e, false && !(!arg_1.x)), -394.0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(610.0)))), var_1.x)), u_input.a, arg_3);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        if (func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -354.0), _wgslsmith_f_op_f32(f32(-1.0) * -275.0)), select(arg_0.a.xwy, select(select(select(vec3<bool>(false, arg_1.a.x, global1.e.x), arg_0.a.wzw, arg_0.a.xww), select(vec3<bool>(global1.e.x, arg_0.a.x, true), global1.e.zyz, true), vec3<bool>(false, global0[_wgslsmith_index_u32(59521u, 31u)], true)), !vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.a, 31u)], true), select(vec3<bool>(true, true, false), select(arg_0.a.www, vec3<bool>(true, true, false), false), global1.e.zxw)), !arg_0.a.zxx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e, -1100.0, arg_0.e)))))), arg_1.e).a.x) {
            let var_0 = _wgslsmith_f_op_f32(-arg_0.c);
            return vec4<bool>(arg_0.a.x, !global1.e.x, func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(min(-453.0, -332.0)), _wgslsmith_f_op_f32(-arg_0.c)))), vec3<bool>(all(vec2<bool>(false, true)) || all(vec2<bool>(false, true)), any(global1.e.xyy), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-667.0, var_0, -1000.0), vec3<f32>(var_0, 873.0, arg_0.c), arg_1.a.ywz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1160.0, 856.0, -1483.0))))), arg_0.b).a.x, select(true, false, all(arg_1.a)));
        }
    }
    global3 = array<f32, 4>();
    var var_0 = _wgslsmith_div_vec2_i32(max(vec2<i32>(-_wgslsmith_sub_i32(-97667, u_input.a), max(2147483647, global1.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-18711, 0), vec2<i32>(-2147483648, arg_0.d)) >> ((vec2<u32>(arg_2.a, 45763u) & ~u_input.b.zz) % vec2<u32>(32u))), global1.a.xz);
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        var var_1 = all(arg_1.a) && (!arg_0.a.x | !(!(global0[_wgslsmith_index_u32(u_input.b.x, 31u)] | global0[_wgslsmith_index_u32(u_input.b.x, 31u)])));
        if (false) {
            continue;
        }
    }
    let var_1 = Struct_4(~global1.a, firstLeadingBit(max(vec3<i32>(global1.b.x, ~(-1), arg_0.d), -(global1.a.wyz & global1.a.zyz))), -8689, select(global1.b.yz & _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(arg_0.d, u_input.a)), global1.d), -global1.a.wz, select(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], 1081.0)), arg_1.a.wxz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-300.0, global3[_wgslsmith_index_u32(56614u, 4u)], -583.0)), _wgslsmith_f_op_f32(arg_1.e * arg_1.e)).a.yx, vec2<bool>(1000.0 >= -1984.0, !arg_1.a.x), (-869.0 > arg_0.c) == arg_0.a.x)), arg_0.a);
    return !vec4<bool>(var_1.e.x, true | global1.e.x, arg_1.a.x, !(!true));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(~_wgslsmith_mod_u32(~23891u, 27747u));
    var var_1 = ~max(~vec2<u32>(u_input.c << (var_0.a % 32u), var_0.a), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, var_0.a), u_input.b.zx), firstLeadingBit(u_input.b.yz), ~vec2<u32>(4294967295u, var_0.a)), vec2<u32>(21742u, var_0.a >> (u_input.c % 32u))));
    global1 = Struct_4(vec4<i32>(-17194, firstLeadingBit(~abs(global1.b.x)), firstLeadingBit(50135), 13557), ~(-(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483648, u_input.a, 13859), vec3<i32>(global1.b.x, 23071, global1.c)))), ~u_input.a, global1.a.wz, select(vec4<bool>(global1.e.x, !true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), global1.e.x)), global0[_wgslsmith_index_u32(0u, 31u)] && all(global1.e.xx)), select(vec4<bool>(!false, false, any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)])), !false), global1.e, !(global0[_wgslsmith_index_u32(var_1.x, 31u)] || global0[_wgslsmith_index_u32(u_input.b.x, 31u)])), func_7(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(133.0, 650.0), vec2<f32>(global3[_wgslsmith_index_u32(var_1.x, 4u)], global3[_wgslsmith_index_u32(13591u, 4u)]), vec2<bool>(global1.e.x, global0[_wgslsmith_index_u32(1u, 31u)]))), vec3<bool>(false, global1.e.x, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], -1311.0, global3[_wgslsmith_index_u32(14601u, 4u)]) * vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], -746.0)), global3[_wgslsmith_index_u32(var_1.x, 4u)]), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-947.0, -985.0) - vec2<f32>(global3[_wgslsmith_index_u32(var_1.x, 4u)], global3[_wgslsmith_index_u32(1u, 4u)])), global1.e.wxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 4u)], global3[_wgslsmith_index_u32(var_0.a, 4u)], 1371.0)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 4u)] - global3[_wgslsmith_index_u32(4294967295u, 4u)])), Struct_3(u_input.c))));
    var var_2 = u_input.a;
    global3 = array<f32, 4>();
    return global1.d.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    for (var var_0 = 5837; !(!true) || false; var_0 -= 1) {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        for (var var_1 = -29087; ; var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global1.b, abs(vec3<i32>(u_input.a, u_input.a, arg_0.b.x))) & global1.a.x, func_3(), -2147483648), arg_0.b.xwy)) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        }
        let var_1 = Struct_3(~_wgslsmith_div_u32(~4294967295u, 50745u));
        return reverseBits(max(var_1.a, ~var_1.a));
    }
    global3 = array<f32, 4>();
    global0 = array<bool, 31>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    switch (global1.c) {
        case 25051: {
            let var_1 = vec3<u32>(_wgslsmith_add_u32(countOneBits(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(12826u, u_input.c, u_input.c, 1u), vec4<u32>(19912u, u_input.b.x, 135487u, u_input.b.x)))), func_2(Struct_2(Struct_1(vec4<bool>(true, false, global1.e.x, true), -1396.0, global3[_wgslsmith_index_u32(61197u, 4u)], var_0.x, global3[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec4<i32>(u_input.a, 28163, var_0.x, 1)), !global1.e)), _wgslsmith_sub_u32(~0u, u_input.b.x), ~u_input.c);
            global0 = array<bool, 31>();
        }
        case 0: {
            switch (-27038) {
                default: {
                }
            }
            var var_1 = var_0.zzx;
        }
        case 44323: {
            switch (u_input.a) {
                case -2147483648: {
                    var_0 = global1.a;
                }
                default: {
                    var var_1 = false;
                    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-475.0)) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 4u)])), global3[_wgslsmith_index_u32(0u, 4u)])))));
                    var_0 = vec4<i32>(2147483647, _wgslsmith_sub_i32(abs(-(~36437)), min(-37315, ~_wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(u_input.a, global1.d.x)))), _wgslsmith_mult_i32(var_0.x, _wgslsmith_add_i32(firstLeadingBit(-23655), _wgslsmith_mult_i32(-2147483648, _wgslsmith_mult_i32(global1.a.x, global1.a.x)))), u_input.a);
                    global2 = array<Struct_2, 11>();
                }
            }
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            }
            global1 = Struct_4(global1.a, vec3<i32>(-(func_3() << (~u_input.c % 32u)), global1.b.x, u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a << (~u_input.b.x % 32u)), vec2<i32>(-select(abs(var_0.x), ~4193, global0[_wgslsmith_index_u32(u_input.c, 31u)]), _wgslsmith_div_i32(~u_input.a, global1.a.x)), vec4<bool>(!((29688u ^ 80778u) >= u_input.c), true, !(all(global1.e.zyz) & global1.e.x), !select(global1.e.x, 1 <= -18292, false)));
        }
        case 2147483647: {
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(54622u | _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(30724u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(18109u, 73249u, 18120u, u_input.b.x)), abs(4294967295u))), ~0u, 70703u), 4u)];
                break;
            }
            global0 = array<bool, 31>();
            return;
        }
        default: {
            if (true) {
                var_0 = ~countOneBits(vec4<i32>(countOneBits(-u_input.a), _wgslsmith_mod_i32(2147483647, global1.d.x), var_0.x, -1));
                var_0 = select(~vec4<i32>(_wgslsmith_div_i32(-27766 ^ u_input.a, countOneBits(-11281)), -countOneBits(var_0.x), u_input.a, 0), vec4<i32>(_wgslsmith_mod_i32((i32(-1) * -6939) | _wgslsmith_mult_i32(30791, global1.c), -1), abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-49216, var_0.x), ~u_input.a)), -_wgslsmith_dot_vec4_i32(~global1.a, reverseBits(global1.a)), _wgslsmith_div_i32(_wgslsmith_add_i32(func_3(), global1.a.x & 45629), abs(var_0.x))), global0[_wgslsmith_index_u32(u_input.b.x, 31u)]);
                global2 = array<Struct_2, 11>();
            }
        }
    }
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 4u)]) * _wgslsmith_f_op_f32(f32(-1.0) * -185.0)) * -467.0) - _wgslsmith_f_op_f32(floor(-492.0))));
    global1 = Struct_4(global1.a, var_0.xxx, -(~(-51253)), _wgslsmith_clamp_vec2_i32(vec2<i32>(func_3(), max(global1.d.x, -global1.d.x)), -_wgslsmith_clamp_vec2_i32(-global1.d, vec2<i32>(u_input.a, 54993), vec2<i32>(var_0.x, var_0.x)), var_0.yy), vec4<bool>(global1.e.x, global1.e.x, all(func_7(func_4(vec2<f32>(-1068.0, global3[_wgslsmith_index_u32(4294967295u, 4u)]), global1.e.wwy, vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 4u)]), global3[_wgslsmith_index_u32(11703u, 4u)]), Struct_1(global1.e, -548.0, -1253.0, var_0.x, 196.0), Struct_3(33026u))), false));
    if (!any(global1.e)) {
        global1 = Struct_4(~select(select(~vec4<i32>(global1.c, 33322, global1.b.x, -1), global1.a, select(vec4<bool>(global1.e.x, global0[_wgslsmith_index_u32(12543u, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)], false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(64541u, 31u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 31u)], global1.e.x, true, global1.e.x))), -select(global1.a, vec4<i32>(-1, global1.c, global1.c, var_0.x), global1.e.x), global1.e), ~reverseBits(-vec3<i32>(var_0.x, -73082, global1.a.x)), i32(-1) * -26308, _wgslsmith_mod_vec2_i32(reverseBits(~var_0.xy), global1.a.yz), vec4<bool>(!(any(global1.e.xwz) | all(global1.e.xzx)), true, !((0u == 30603u) | !global0[_wgslsmith_index_u32(1u, 31u)]), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, 2222u, u_input.b.x)), _wgslsmith_div_u32(29909u, 0u))), 31u)]));
        var var_2 = global2[_wgslsmith_index_u32(u_input.c, 11u)];
    }
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-970.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526.0 - global3[_wgslsmith_index_u32(u_input.b.x, 4u)]))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-299.0)), global3[_wgslsmith_index_u32(~78025u, 4u)]))));
}

