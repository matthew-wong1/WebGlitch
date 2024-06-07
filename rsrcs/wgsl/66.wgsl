// {"0:0":[33,78,113,151,74,21,149,97,246,102,199,171,146,238,165,126,87,125,73,250,185,95,140,132,35,169,42,48,154,206,230,171]}
// Seed: 7247370792606231800

struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(193.0, -917.0, 433.0), vec3<f32>(-1000.0, 246.0, -298.0), vec3<f32>(-676.0, 1469.0, 1166.0), vec3<f32>(1653.0, -723.0, -1000.0), vec3<f32>(230.0, -736.0, 1155.0), vec3<f32>(-143.0, 1415.0, 1000.0), vec3<f32>(802.0, -2081.0, 108.0), vec3<f32>(2434.0, -340.0, 955.0), vec3<f32>(-1265.0, -1000.0, 1873.0), vec3<f32>(-363.0, -1122.0, 285.0), vec3<f32>(364.0, -2172.0, 515.0), vec3<f32>(1466.0, -252.0, -1511.0), vec3<f32>(-515.0, 203.0, -1219.0), vec3<f32>(164.0, -227.0, 1277.0), vec3<f32>(2011.0, 595.0, 304.0), vec3<f32>(612.0, -314.0, 358.0), vec3<f32>(1811.0, 550.0, 1100.0), vec3<f32>(188.0, 1415.0, 1243.0));

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = 505.0;
    var_0 = arg_2;
    let var_1 = vec2<bool>(true, !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(564.0, -1159.0)) > _wgslsmith_div_f32(arg_2, 1062.0)));
    var var_2 = u_input.a.wxw;
    var var_3 = Struct_2(vec3<bool>(true, false, all(vec4<bool>(var_1.x == false, var_1.x, var_1.x, u_input.a.x != u_input.b))), u_input.c, var_2.x & _wgslsmith_add_i32(2147483647, 0), var_2.x > (_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483648, 67356, arg_1), -2147483647) >> (_wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(arg_0.b.x, 73445u)) % 32u)));
    return Struct_2(vec3<bool>(any(!vec3<bool>(var_3.d, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))) == _wgslsmith_f_op_f32(step(arg_3, 310.0)), var_1.x), 13525u, var_2.x, true);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    switch (-1) {
        case 35349: {
            if ((u_input.b >> (~(4294967295u | arg_0.b) % 32u)) != arg_0.c) {
                var var_0 = ~vec4<i32>(-arg_2, max(-106848, arg_3.x), arg_0.c, 35885);
                var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-17660, _wgslsmith_mult_i32(func_4(Struct_1(vec2<u32>(0u, arg_0.b), vec3<u32>(u_input.c, 10222u, u_input.c), arg_2), u_input.b, 1000.0, -829.0).c, u_input.a.x)), ~func_4(global0[_wgslsmith_index_u32(1u, 22u)], arg_2, _wgslsmith_f_op_f32(-566.0), _wgslsmith_f_op_f32(-533.0 * -652.0)).c, 4241, -3423), -(u_input.a | vec4<i32>(countOneBits(18651), arg_1.x, -u_input.b, arg_0.c)));
                var var_1 = countOneBits(0);
            }
            var var_0 = Struct_1(min(max(firstLeadingBit(vec2<u32>(1u, 4294967295u) & vec2<u32>(arg_0.b, 4294967295u)), _wgslsmith_add_vec2_u32(~vec2<u32>(43323u, 0u), vec2<u32>(23697u, u_input.c) ^ vec2<u32>(u_input.c, arg_0.b))), vec2<u32>(4294967295u, max(27706u, arg_0.b) & u_input.c)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(27008u, ~1u, _wgslsmith_mod_u32(arg_0.b, 9276u)), vec3<u32>(1u, abs(arg_0.b), arg_0.b), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(2558u, arg_0.b, u_input.c), vec3<u32>(0u, 40330u, 4147u)))), ~(~vec3<u32>(u_input.c, 1u, 36505u))), arg_0.c);
            if ((~(~(~0u)) & 0u) < 9994u) {
            }
            switch (arg_0.c) {
                case -1: {
                    var_0 = Struct_1(vec2<u32>(u_input.c, _wgslsmith_sub_u32(arg_0.b, ~(~56800u))), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b), var_0.b.yx), select(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, var_0.b.x), 0u), reverseBits(1u << (u_input.c % 32u)), arg_0.d)), _wgslsmith_mult_i32(31029 ^ arg_1.x, countOneBits(-2147483648)));
                    var var_1 = vec4<f32>(734.0, 893.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -835.0) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(-529.0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -590.0)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1741.0)))))), _wgslsmith_f_op_f32(max(2402.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1428.0 - 125.0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1626.0))))));
                    let var_2 = select(vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(10565), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, 4530), vec2<i32>(2147483647, u_input.b))), -_wgslsmith_clamp_i32(abs(34411), _wgslsmith_sub_i32(arg_0.c, arg_1.x), _wgslsmith_mod_i32(arg_2, -2147483648)), ~_wgslsmith_sub_i32(reverseBits(arg_0.c), 0), u_input.a.x), vec4<i32>(abs((arg_0.c | 1) | arg_3.x), func_4(Struct_1(select(vec2<u32>(var_0.b.x, 54757u), var_0.a, arg_0.a.zx), vec3<u32>(78172u, u_input.c, var_0.b.x) ^ vec3<u32>(u_input.c, 4294967295u, 24029u), _wgslsmith_mult_i32(u_input.b, 0)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0.c, arg_1.x, arg_3.x), arg_2 & 1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 107.0), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(floor(-715.0)))).c, min(1, 30881), _wgslsmith_dot_vec4_i32(u_input.a, ~(-u_input.a))), select(select(select(vec4<bool>(arg_0.d, true, false, true), select(vec4<bool>(arg_0.a.x, true, false, arg_0.a.x), vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), arg_0.d), false & arg_0.a.x), vec4<bool>(arg_0.d, true, func_4(Struct_1(vec2<u32>(u_input.c, 4294967295u), vec3<u32>(4294967295u, arg_0.b, var_0.a.x), arg_0.c), 0, -362.0, 3520.0).d, !false), vec4<bool>(arg_0.a.x, true && false, !arg_0.d, arg_0.a.x)), select(vec4<bool>(arg_0.a.x, !true, !arg_0.d, u_input.c < 4294967295u), !select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), vec4<bool>(false, false, arg_0.a.x, false), arg_0.d), vec4<bool>(!arg_0.a.x, arg_0.a.x, arg_0.d, arg_0.a.x)), true));
                    var var_3 = arg_0;
                }
                case 4660: {
                    var_0 = global0[_wgslsmith_index_u32(max(~min(_wgslsmith_div_u32(max(7587u, 4294967295u), firstLeadingBit(arg_0.b)), u_input.c), ~u_input.c), 22u)];
                    var var_1 = Struct_1(~reverseBits(select(vec2<u32>(arg_0.b, u_input.c), vec2<u32>(var_0.b.x, 58670u) >> (vec2<u32>(u_input.c, 128727u) % vec2<u32>(32u)), arg_0.a.yy)), vec3<u32>(~var_0.a.x, 1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b, 4294967295u, arg_0.b, var_0.a.x), vec4<u32>(1u, 24260u, arg_0.b, 72486u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.c))), vec4<u32>(~var_0.a.x, var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, arg_0.b), vec4<u32>(arg_0.b, 72846u, u_input.c, u_input.c)), func_4(Struct_1(var_0.a, vec3<u32>(17058u, var_0.b.x, 0u), arg_3.x), 1, -290.0, 278.0).b))), var_0.c);
                    var var_2 = select(!vec3<bool>(arg_0.d, false, true), !arg_0.a, !vec3<bool>((arg_1.x >= var_1.c) && arg_0.d, select(!arg_0.a.x, all(arg_0.a.zy), arg_0.d), all(vec4<bool>(arg_0.a.x, arg_0.d, arg_0.d, arg_0.d)) | !false));
                    var var_3 = -4489;
                    var_3 = 10242;
                }
                default: {
                    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.a.x, _wgslsmith_mod_u32(78054u, 0u)), 0u), 4294967295u)), 22u)];
                    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1520.0, -1148.0, -1050.0, -688.0), vec4<f32>(371.0, -615.0, 1650.0, -875.0)))), vec4<f32>(_wgslsmith_f_op_f32(round(-1667.0)), _wgslsmith_f_op_f32(trunc(2482.0)), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(-391.0))))));
                    var var_3 = vec4<f32>(var_2.x, _wgslsmith_div_f32(var_2.x, 837.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -659.0))), 1797.0);
                    var_3 = _wgslsmith_f_op_vec4_f32(exp2(var_2));
                    let var_4 = Struct_1(vec2<u32>(~(~15315u), _wgslsmith_sub_u32(func_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a.x, var_0.b.x), 22u)], 0, _wgslsmith_f_op_f32(var_2.x + -799.0), _wgslsmith_f_op_f32(var_2.x + 313.0)).b, ~(~arg_0.b))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.c, 58720u), _wgslsmith_div_u32(var_1.a.x, arg_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, 24722u, var_0.a.x), vec4<u32>(4294967295u, 10437u, u_input.c, 4294967295u))), var_1.b), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(var_1.b.x, var_1.b.x) | 26116u), max(max(var_0.a.x, 3406u), _wgslsmith_add_u32(_wgslsmith_mult_u32(45928u, 12226u), _wgslsmith_div_u32(var_0.b.x, u_input.c)))), -1);
                }
            }
        }
        case 1: {
            let var_0 = select(!select(arg_0.a.xy, !(!vec2<bool>(false, arg_0.d)), !(!arg_0.a.xy)), !vec2<bool>(~2927u > arg_0.b, !arg_0.d), all(arg_0.a));
            var var_1 = i32(-1) * -(_wgslsmith_add_i32(u_input.a.x | u_input.b, u_input.b ^ 2147483647) >> (~(~30255u) % 32u));
            let var_2 = Struct_2(select(vec3<bool>(!(arg_0.b < 50083u), !(386.0 <= 1131.0), -116.0 <= -1697.0), !func_4(Struct_1(vec2<u32>(arg_0.b, u_input.c), vec3<u32>(u_input.c, 13351u, 10752u), arg_2), 48142, _wgslsmith_f_op_f32(floor(-239.0)), -624.0).a, !select(!arg_0.a, !arg_0.a, any(arg_0.a.xy))), firstTrailingBit(u_input.c), _wgslsmith_div_i32(arg_2, select(abs(arg_3.x), ~(-u_input.b), func_4(Struct_1(vec2<u32>(u_input.c, 0u), vec3<u32>(arg_0.b, arg_0.b, arg_0.b), arg_3.x), 0, 856.0, _wgslsmith_div_f32(805.0, -1125.0)).d)), !(!true));
        }
        default: {
        }
    }
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        continue;
    }
    for (var var_0 = 34379; any(select(!(!select(vec4<bool>(arg_0.d, arg_0.d, false, false), vec4<bool>(arg_0.a.x, arg_0.d, true, false), vec4<bool>(arg_0.a.x, arg_0.a.x, false, false))), select(select(!vec4<bool>(arg_0.a.x, false, arg_0.d, false), select(vec4<bool>(arg_0.a.x, true, arg_0.d, true), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.d, false), vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.d)), select(vec4<bool>(false, arg_0.d, arg_0.d, true), vec4<bool>(false, arg_0.d, true, arg_0.a.x), vec4<bool>(arg_0.d, false, arg_0.a.x, arg_0.d))), vec4<bool>(!true, arg_0.a.x, false, select(false, true, arg_0.d)), !all(arg_0.a)), arg_0.a.x | !func_4(global0[_wgslsmith_index_u32(u_input.c, 22u)], 36520, -997.0, 605.0).d)); global1 = array<vec3<f32>, 18>()) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            break;
        }
        global1 = array<vec3<f32>, 18>();
        let var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(128886u, ~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 1u), vec2<u32>(6226u, arg_0.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.b, 44422u, 1u), vec4<u32>(1u, arg_0.b, u_input.c, arg_0.b))) << (~max(vec4<u32>(32963u, arg_0.b, 1u, arg_0.b), vec4<u32>(arg_0.b, u_input.c, 15204u, arg_0.b)) % vec4<u32>(32u)), select(~vec4<u32>(4294967295u, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, arg_0.b, ~1u, _wgslsmith_mod_u32(1u, arg_0.b)), true));
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            var var_2 = ~var_1.xz;
            var_0 = _wgslsmith_add_i32(u_input.a.x, -(~(-1)));
        }
        switch (_wgslsmith_mult_i32(u_input.a.x, select(~7483, -15389, false))) {
            case 0: {
                global0 = array<Struct_1, 22>();
            }
            case 7836: {
                continue;
            }
            default: {
                continue;
            }
        }
    }
    switch (249) {
        default: {
            let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(77670u & arg_0.b, firstLeadingBit(arg_0.b), true), ~arg_0.b), 22u)];
            if (true) {
                var var_1 = global0[_wgslsmith_index_u32(1u, 22u)];
                let var_2 = arg_0.d;
                var_1 = Struct_1(~firstLeadingBit(~(vec2<u32>(arg_0.b, 0u) & vec2<u32>(0u, 1u))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 53098u), vec4<u32>(var_1.b.x, arg_0.b, u_input.c, u_input.c)), arg_0.b, ~var_0.b.x), u_input.c ^ arg_0.b, _wgslsmith_add_u32(~68490u, ~var_0.a.x)) << (var_0.b % vec3<u32>(32u)), ~_wgslsmith_mod_i32(0, 85100));
                global1 = array<vec3<f32>, 18>();
                global1 = array<vec3<f32>, 18>();
            }
            let var_1 = all(vec2<bool>(arg_0.d, arg_0.d | false));
        }
    }
    global0 = array<Struct_1, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1591.0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1286.0)))));
}

fn func_5() -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        let var_0 = global0[_wgslsmith_index_u32(39889u, 22u)];
        if (true) {
            global0 = array<Struct_1, 22>();
            var var_1 = 55888u;
            let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1658.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(func_4(Struct_1(var_0.a, var_0.b, var_0.c), u_input.a.x, 553.0, 1469.0), vec2<i32>(0, -2147483648), 0, u_input.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1035.0, 1566.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1657.0 + _wgslsmith_f_op_f32(1029.0 - 1089.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-192.0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1679.0, -815.0))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(740.0)), 960.0)));
            continue;
        }
        global1 = array<vec3<f32>, 18>();
        global0 = array<Struct_1, 22>();
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        switch (-u_input.b) {
            default: {
                global1 = array<vec3<f32>, 18>();
                var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1273.0 * 1236.0) + _wgslsmith_f_op_f32(select(-992.0, -238.0, true))) + 1122.0))));
            }
        }
    }
    for (var var_0 = -8706; var_0 >= -30409; var_0 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        break;
    }
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    return Struct_1(vec2<u32>(~(~_wgslsmith_add_u32(9269u, 0u)), _wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, u_input.c, u_input.c)), ~max(vec3<u32>(3338u, 14614u, u_input.c), firstLeadingBit(vec3<u32>(u_input.c, 1u, u_input.c)))), abs(-_wgslsmith_clamp_i32(u_input.b, ~36636, countOneBits(u_input.a.x))));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(arg_3.b.x, 22u)];
    let var_1 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, -(~u_input.a), u_input.a), vec4<i32>(27192 ^ -2147483648, abs(reverseBits(-2147483648)), _wgslsmith_add_i32(firstTrailingBit(2147483647), arg_3.c), select(20645, _wgslsmith_mod_i32(0, 2147483647), true))));
    global1 = array<vec3<f32>, 18>();
    var_0 = Struct_1(func_5().a, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(func_5().b, var_0.b), ~_wgslsmith_mod_vec3_u32(var_0.b, var_0.b)) | arg_3.b, var_0.c);
    let var_2 = Struct_2(!arg_0.a, ~u_input.c, arg_2.c, arg_0.a.x);
    return true;
}

fn func_3(arg_0: Struct_1) -> bool {
    switch (_wgslsmith_sub_i32(u_input.b, 20515)) {
        case -2147483648: {
            if (any(vec3<bool>(!func_7(func_4(Struct_1(vec2<u32>(44336u, u_input.c), arg_0.b, 1), 44206, 223.0, -762.0), !vec2<bool>(false, true), func_4(global0[_wgslsmith_index_u32(1u, 22u)], arg_0.c, -1557.0, 322.0), func_5()), (!false || (true || true)) && all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), -1713.0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-492.0, -797.0)))))) {
                global1 = array<vec3<f32>, 18>();
            }
            global1 = array<vec3<f32>, 18>();
        }
        case -5528: {
        }
        case 1: {
            var var_0 = u_input.a;
            for (; func_4(Struct_1(arg_0.b.xz, vec3<u32>(arg_0.a.x, 0u, 4294967295u), -1), ~(~abs(14188 ^ var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196.0)), -1302.0).a.x; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_1 = Struct_2(vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1260.0)))) >= _wgslsmith_f_op_f32(step(1422.0, _wgslsmith_f_op_f32(f32(-1.0) * -1142.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1492.0)) <= 1000.0, (min(u_input.c, u_input.c) << (~46992u % 32u)) > max(0u, ~63059u)), max(1u, u_input.c), -33555, all(vec2<bool>(_wgslsmith_dot_vec2_i32(u_input.a.yx, var_0.yx) >= _wgslsmith_clamp_i32(u_input.b, -25069, -3992), (28016u & arg_0.a.x) != (1u << (arg_0.b.x % 32u)))));
                let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-936.0, 672.0, 145.0)))) * global1[_wgslsmith_index_u32(var_1.b, 18u)]), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1186.0, 863.0)) * _wgslsmith_f_op_f32(max(779.0, -664.0))), -232.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1180.0)))), !false)));
                global0 = array<Struct_1, 22>();
                break;
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                break;
            }
            let var_0 = Struct_2(vec3<bool>(-322.0 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -508.0)), countOneBits(reverseBits(67831u)) != 4294967295u, func_7(func_4(arg_0, ~(-11687), _wgslsmith_f_op_f32(-229.0 + 111.0), _wgslsmith_f_op_f32(select(123.0, -811.0, false))), vec2<bool>(-986.0 > 169.0, func_7(Struct_2(vec3<bool>(false, true, true), arg_0.b.x, u_input.a.x, false), vec2<bool>(false, false), Struct_2(vec3<bool>(false, false, false), 1u, -31895, true), Struct_1(arg_0.a, arg_0.b, arg_0.c))), Struct_2(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), 14886u, u_input.b, 15453u <= 70726u), arg_0)), arg_0.b.x, ~(firstLeadingBit(u_input.a.x) << (min(abs(4294967295u), _wgslsmith_div_u32(u_input.c, arg_0.a.x)) % 32u)), all(select(vec2<bool>(true & true, all(vec2<bool>(true, false))), vec2<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(true, true))), select(!vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
            global1 = array<vec3<f32>, 18>();
        }
    }
    var var_0 = Struct_1(arg_0.a, select(arg_0.b, vec3<u32>(u_input.c, u_input.c << (arg_0.b.x % 32u), arg_0.a.x), false) << (arg_0.b % vec3<u32>(32u)), arg_0.c);
    let var_1 = vec2<i32>(var_0.c, _wgslsmith_clamp_i32(arg_0.c, reverseBits(_wgslsmith_add_i32(var_0.c, -var_0.c)), _wgslsmith_div_i32(~14715, -(~2147483647))));
    let var_2 = countOneBits(vec4<u32>(arg_0.a.x, u_input.c, ~(~(2409u ^ u_input.c)), _wgslsmith_mult_u32(1789u, arg_0.b.x)));
    var var_3 = -2147483648;
    return !false;
}

fn func_2() -> vec4<u32> {
    let var_0 = 19753u;
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_1 = vec4<bool>(true, true, func_3(global0[_wgslsmith_index_u32(var_0, 22u)]), !(~u_input.c > var_0));
        break;
    }
    var var_1 = -1000.0;
    let var_2 = select(u_input.a, ~u_input.a, select(vec4<bool>(!any(vec2<bool>(false, true)), !(!true), !false, _wgslsmith_f_op_f32(round(-818.0)) == _wgslsmith_f_op_f32(exp2(1627.0))), vec4<bool>(true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), _wgslsmith_div_f32(717.0, -792.0) < _wgslsmith_f_op_f32(-105.0)), false));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1822.0, 2164.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1152.0)) + -436.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-777.0 - _wgslsmith_f_op_f32(f32(-1.0) * -462.0)) + 974.0))));
    return vec4<u32>(u_input.c, 35001u, countOneBits(var_0), 19869u);
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<f32>, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(320.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-446.0 - _wgslsmith_f_op_f32(-704.0)))), 641.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1152.0) + _wgslsmith_f_op_f32(1297.0 - -669.0)))))));
    switch (u_input.b) {
        case -2147483648: {
            switch (20720) {
                default: {
                }
            }
            switch (0) {
                case -1: {
                }
                case -13229: {
                    let var_1 = !(_wgslsmith_f_op_f32(exp2(var_0.x)) >= -919.0);
                }
                case -39152: {
                    var var_1 = func_2();
                    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1000.0 * var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1456.0, var_0.x), _wgslsmith_f_op_f32(-var_0.x), !true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2564.0, 722.0))) * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)))));
                }
                case 14257: {
                    let var_1 = countOneBits(u_input.a);
                    global1 = array<vec3<f32>, 18>();
                    global0 = array<Struct_1, 22>();
                    var var_2 = var_0.x;
                }
                default: {
                    var var_1 = ~abs(_wgslsmith_mod_vec4_i32(min(min(vec4<i32>(2147483647, u_input.b, u_input.b, 1), u_input.a), u_input.a), u_input.a));
                    var_0 = vec4<f32>(-861.0, var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, true)), var_0.x);
                    let var_2 = func_4(global0[_wgslsmith_index_u32(~u_input.c, 22u)], firstLeadingBit(u_input.a.x), _wgslsmith_f_op_f32(f32(-1.0) * -779.0), -767.0);
                    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-158.0), _wgslsmith_f_op_f32(func_6(var_2, var_1.zy, var_2.c, u_input.a)), _wgslsmith_f_op_f32(min(var_0.x, 861.0)), _wgslsmith_f_op_f32(3075.0 * var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1547.0, 363.0, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(327.0, var_0.x, 528.0, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), any(vec3<bool>(false, true, false))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000.0, var_0.x, -1000.0, -1190.0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-361.0, -1147.0, var_0.x, var_0.x)) * vec4<f32>(var_0.x, -1295.0, -934.0, 268.0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + 933.0), -2059.0)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), var_0.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1398.0) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) * vec4<f32>(var_0.x, 597.0, 451.0, 1260.0)))));
                }
            }
            let var_1 = func_5();
            global0 = array<Struct_1, 22>();
        }
        default: {
            if (!false) {
                global0 = array<Struct_1, 22>();
                var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(638.0 * _wgslsmith_f_op_f32(ceil(var_0.x)))), var_0.x), 1000.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), var_0.x)));
                let var_2 = func_4(func_5(), ~firstTrailingBit(max(-6531, u_input.b)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(func_6(Struct_2(vec3<bool>(true, false, true), func_5().b.x, -20829, true), firstLeadingBit(u_input.a.xy), 5738, vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.b, u_input.a.x)), u_input.a.x, u_input.a.x, 2147483647))))));
                let var_3 = func_5();
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_1 = ~select(abs(reverseBits(max(vec4<u32>(u_input.c, 1u, 17591u, u_input.c), vec4<u32>(1u, 42532u, u_input.c, 32473u)))), vec4<u32>(~(~0u), (u_input.c >> (u_input.c % 32u)) | u_input.c, ~max(1u, 87429u), u_input.c), false);
    }
    global1 = array<vec3<f32>, 18>();
    return Struct_1(vec2<u32>(1u, u_input.c), ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, u_input.a.x), func_5().c));
}

@compute
@workgroup_size(1)
fn main() {
    if (!(!(!(_wgslsmith_f_op_f32(-1635.0 - -3608.0) < -187.0)))) {
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            let var_0 = global0[_wgslsmith_index_u32(u_input.c, 22u)];
            var var_1 = func_1();
            global1 = array<vec3<f32>, 18>();
            continue;
        }
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            var var_0 = func_4(global0[_wgslsmith_index_u32(~u_input.c, 22u)], _wgslsmith_div_i32(15308, -(~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1367.0), _wgslsmith_f_op_f32(1277.0 * -761.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1524.0, 551.0))))));
        }
        if (!(7859u < func_2().x)) {
            global0 = array<Struct_1, 22>();
        }
    }
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        var var_0 = (~abs(func_1().a) ^ max(~(~vec2<u32>(4294967295u, 4294967295u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, u_input.c)))) >> ((vec2<u32>(u_input.c, _wgslsmith_add_u32(0u, 77507u) | 14399u) >> (~(~func_2().zy) % vec2<u32>(32u))) % vec2<u32>(32u));
    }
    var var_0 = vec4<f32>(-253.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1538.0)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(320.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293.0 - 1339.0) * _wgslsmith_f_op_f32(-264.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1505.0 + -799.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(839.0, 447.0)) + _wgslsmith_f_op_f32(f32(-1.0) * -1206.0))) - _wgslsmith_f_op_f32(f32(-1.0) * -216.0)), -178.0);
    var var_1 = vec4<f32>(-1125.0, 1300.0, _wgslsmith_f_op_f32(var_0.x - var_0.x), 1264.0);
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.x, -728.0, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_1.x, -219.0, var_1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_0.x, var_1.x, 565.0), vec4<f32>(var_1.x, var_0.x, var_1.x, -532.0)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(126.0, var_1.x, -344.0, var_1.x), vec4<f32>(var_1.x, var_1.x, -1000.0, -1119.0))), !false)))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~func_2(), func_2());
    if (true) {
        var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.c, 1u), func_2().x, ~36512u, _wgslsmith_mult_u32(27852u, 16368u)), ~max(vec4<u32>(4294967295u, var_2, 4294967295u, var_2), vec4<u32>(0u, u_input.c, u_input.c, 4294967295u))), _wgslsmith_dot_vec3_u32(max(abs(vec3<u32>(1u, var_2, 38960u)), ~vec3<u32>(u_input.c, var_2, 2942u)), func_5().b), 12873u), min(vec4<u32>(u_input.c, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 11495u, 4294967295u)), vec3<u32>(var_2, var_2, u_input.c)), 0u, 15594u), vec4<u32>(~func_4(global0[_wgslsmith_index_u32(1u, 22u)], -35101, var_1.x, var_0.x).b, ~(~var_2), func_2().x, var_2)));
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            let var_4 = !(select(~76044u != ~var_2, false, !true || true) == (func_4(func_5(), 0, _wgslsmith_f_op_f32(f32(-1.0) * -863.0), _wgslsmith_f_op_f32(-1000.0 - var_1.x)).d || (all(vec3<bool>(false, false, true)) | !false)));
        }
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            continue;
        }
        let var_4 = u_input.a.x;
    }
    let var_3 = _wgslsmith_mult_vec4_u32(max(~(~(~vec4<u32>(63263u, 27269u, 75260u, var_2))), vec4<u32>(firstLeadingBit(abs(29121u)), min(~u_input.c, firstTrailingBit(4294967295u)), var_2, u_input.c)), vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.c, u_input.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2, u_input.c, u_input.c), vec3<u32>(0u, var_2, var_2))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, var_2, 12899u), vec4<u32>(var_2, 0u, u_input.c, var_2)), vec4<u32>(0u, u_input.c, var_2, 45617u)), 6430u), _wgslsmith_add_u32(select(_wgslsmith_mod_u32(u_input.c, 59307u), _wgslsmith_mod_u32(u_input.c, 33967u), true), _wgslsmith_mod_u32(35806u, ~57391u)), 22458u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(var_2), _wgslsmith_mult_u32(13747u, var_3.x), _wgslsmith_sub_u32(5158u, 0u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 59918u, var_2), ~13382u)), var_3.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(var_3, var_3), _wgslsmith_div_vec4_u32(vec4<u32>(26686u, var_2, var_3.x, 1u), vec4<u32>(u_input.c, 4294967295u, var_3.x, u_input.c))), reverseBits(vec4<u32>(u_input.c, var_3.x, 43761u, 0u))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 45619u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(14802u, 4294967295u, 1u), var_3.zwx)))), var_1.x, vec4<u32>(~var_2, max(~35163u, ~2304u), var_3.x, ~38755u));
}

