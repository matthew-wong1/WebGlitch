// {"0:0":[250,235,82,171,155,29,26,241,30,200,218,102,126,37,168,106,111,137,222,18,215,140,158,101,164,246,171,90,220,113,3,8,110,119,235,19,26,170,16,14,31,249,38,153,165,43,0,249]}
// Seed: 1470628675743293155

struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(4294967295u, 1u));

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, false, false, true, true, false, true, true, true, true, true, false, true, false, false, true, false, false, true, true, false, true, true);

var<private> LOOP_COUNTERS: array<u32, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_6() -> vec3<f32> {
    switch (~u_input.b.x) {
        case -6819: {
            switch (1) {
                case -1: {
                    var var_0 = _wgslsmith_clamp_i32(max(u_input.c.x, u_input.c.x), u_input.b.x, abs(_wgslsmith_sub_i32(abs(u_input.b.x), 2147483647 << (0u % 32u)) ^ u_input.b.x));
                    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-1082.0))), 250.0))));
                    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1486.0)))))));
                    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-101.0), -672.0)))), -917.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(244.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922.0 - -632.0))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-188.0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -316.0) * _wgslsmith_div_f32(239.0, 2353.0)))))));
                }
                default: {
                    global0 = array<vec2<u32>, 1>();
                    global0 = array<vec2<u32>, 1>();
                    var var_0 = Struct_1(any(vec4<bool>(any(!vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(40193u, 24u)])), 64220u > u_input.a, !all(vec3<bool>(global1[_wgslsmith_index_u32(11722u, 24u)], global1[_wgslsmith_index_u32(64792u, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)])), any(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 24u)])))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2592.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -2961.0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0 + 604.0)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2116.0, -1944.0)), _wgslsmith_f_op_f32(floor(255.0)), !global1[_wgslsmith_index_u32(u_input.a, 24u)])))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1048.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-763.0, -314.0))), _wgslsmith_f_op_f32(-662.0)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000.0, 548.0, -910.0) * vec3<f32>(1982.0, -248.0, -2259.0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438.0, 119.0, 900.0))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(729.0, -583.0, 353.0))))))))));
                    let var_1 = Struct_1(!any(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), false), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], var_0.a), var_0.a)), _wgslsmith_f_op_f32(floor(1475.0)), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(1538.0, var_0.c, -558.0), !global1[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-754.0, var_0.b, -1000.0))))));
                    global0 = array<vec2<u32>, 1>();
                }
            }
            if (false) {
                var var_0 = Struct_3(Struct_1(any(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true))), -2383.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2382.0)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(518.0, -954.0, 1000.0)))))))), ~_wgslsmith_clamp_i32(14264, _wgslsmith_sub_i32(u_input.b.x, 31434), u_input.c.x), Struct_2(_wgslsmith_mod_i32(0, 2147483647) >= abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.c.x), u_input.b)), Struct_1(u_input.d.x != ~7295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0) + _wgslsmith_f_op_f32(-294.0)), _wgslsmith_f_op_f32(min(1759.0, _wgslsmith_f_op_f32(step(-1000.0, 1118.0)))), vec3<f32>(_wgslsmith_f_op_f32(max(-1083.0, 656.0)), _wgslsmith_f_op_f32(-1000.0), -962.0))), countOneBits(u_input.c.ywy), Struct_1(2147483647 < (_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) ^ _wgslsmith_mult_i32(5756, u_input.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -679.0) - _wgslsmith_f_op_f32(311.0 + 355.0)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -610.0) * _wgslsmith_f_op_f32(-890.0)), -112.0, global1[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(142.0, 822.0, -394.0)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-193.0, 168.0, 227.0)))))));
                var var_1 = var_0.d.x;
                var_0 = Struct_3(Struct_1(!(!global1[_wgslsmith_index_u32(104866u, 24u)]), _wgslsmith_f_op_f32(step(var_0.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(501.0)), _wgslsmith_f_op_f32(f32(-1.0) * -462.0)))), _wgslsmith_f_op_f32(abs(var_0.a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.c.b.d))))), var_0.b, Struct_2(!(-1 > -1), var_0.e), vec3<i32>(var_0.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.c, ~vec4<i32>(var_0.b, -13657, 1, 7119)), u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~var_0.b, var_0.d.x, u_input.c.x ^ var_0.b), -(var_0.d.x & u_input.c.x))), var_0.c.b);
            }
        }
        case -104180: {
            global0 = array<vec2<u32>, 1>();
            global0 = array<vec2<u32>, 1>();
            global0 = array<vec2<u32>, 1>();
            return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-135.0, 688.0, 275.0))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2221.0, -182.0, -1000.0) * vec3<f32>(-507.0, 819.0, 1188.0)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(232.0, -766.0, 879.0))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1738.0, -641.0, -858.0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-691.0, 104.0, -131.0) * vec3<f32>(294.0, 600.0, -1321.0)), !true)), !(!vec3<bool>(false, false, true))))));
        }
        case -4590: {
            global1 = array<bool, 24>();
            global1 = array<bool, 24>();
            switch (u_input.b.x >> (~u_input.a % 32u)) {
                default: {
                    let var_0 = select(-(-u_input.c.x | u_input.c.x) == 36263, all(select(!select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true, global1[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(2783u, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global1[_wgslsmith_index_u32(14487u, 24u)])), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b.x <= -1, global1[_wgslsmith_index_u32(u_input.d.x, 24u)] & true), !select(vec3<bool>(true, false, true), vec3<bool>(global1[_wgslsmith_index_u32(112129u, 24u)], global1[_wgslsmith_index_u32(49986u, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(21308u, 24u)], global1[_wgslsmith_index_u32(13105u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)])))), global1[_wgslsmith_index_u32(firstTrailingBit(~(~firstLeadingBit(28547u))), 24u)]);
                    let var_1 = min(_wgslsmith_add_vec2_u32(min(max(u_input.d.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), global0[_wgslsmith_index_u32(1u, 1u)])), ~u_input.d.xw), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(~u_input.d.x, 1u)], select(vec2<u32>(50209u, u_input.d.x), vec2<u32>(u_input.a, 0u), var_0)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), u_input.d.ywx), 46746u))), min(u_input.d.yy, countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), u_input.d.x))));
                }
            }
            var var_0 = _wgslsmith_sub_i32(-(~(-14124)), 0);
            for (; ; ) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                break;
            }
        }
        case -2147483648: {
        }
        default: {
            switch (i32(-1) * -4618) {
                case 22784: {
                    let var_0 = -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-43854, _wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(u_input.c.x, u_input.b.x)), u_input.b.x, ~u_input.c.x), u_input.c, vec4<i32>(u_input.b.x, u_input.c.x, -2147483648, 1) ^ select(u_input.c, u_input.c, vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], false))), -vec4<i32>(firstTrailingBit(-1), ~u_input.b.x, _wgslsmith_mod_i32(-1, -1), ~(-14859)), ~(~u_input.d.x) < ~36742u);
                    global1 = array<bool, 24>();
                    var var_1 = var_0.zw;
                    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1260.0) + _wgslsmith_f_op_f32(f32(-1.0) * -1219.0)), -1769.0), vec2<f32>(-865.0, _wgslsmith_f_op_f32(f32(-1.0) * -1176.0)))));
                    global1 = array<bool, 24>();
                }
                case 0: {
                    global1 = array<bool, 24>();
                    global0 = array<vec2<u32>, 1>();
                    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(521.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-562.0) - _wgslsmith_f_op_f32(-2406.0 - -871.0)), _wgslsmith_f_op_f32(1000.0 + 936.0), _wgslsmith_f_op_f32(exp2(1348.0))), vec4<f32>(-1354.0, 1227.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -157.0), _wgslsmith_f_op_f32(ceil(1571.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-131.0), 416.0))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(430.0, 1561.0, 1261.0, 579.0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(806.0, 1691.0, -547.0, -212.0) - vec4<f32>(657.0, 936.0, 1329.0, 664.0))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1331.0 + -1608.0), -808.0, _wgslsmith_f_op_f32(f32(-1.0) * -603.0), _wgslsmith_f_op_f32(595.0 - 624.0)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2684.0, -861.0, 784.0, -681.0), vec4<f32>(-1510.0, -652.0, -214.0, -1500.0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(174.0, -761.0, 128.0, 1762.0) * vec4<f32>(1000.0, 272.0, -400.0, 109.0)))), !(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true), global1[_wgslsmith_index_u32(0u, 24u)]))))));
                }
                default: {
                    var var_0 = u_input.d.x;
                    var var_1 = vec2<i32>(-1) * -(u_input.c.yx >> (global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 27981u), vec3<u32>(u_input.a, u_input.d.x, 1u)), 1u)] % vec2<u32>(32u)));
                }
            }
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                break;
            }
        }
    }
    let var_0 = firstTrailingBit(-vec2<i32>(u_input.b.x, -_wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(1, u_input.b.x))));
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    var var_1 = global1[_wgslsmith_index_u32(9740u, 24u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(353.0 + 2177.0), -591.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1047.0, -152.0, global1[_wgslsmith_index_u32(0u, 24u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1332.0 * 119.0) + _wgslsmith_f_op_f32(exp2(622.0)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(295.0)), -988.0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -615.0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(2506.0, 1000.0)), _wgslsmith_div_f32(267.0, -576.0))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-117.0, 949.0, -1245.0)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-945.0, -1531.0, -679.0) + vec3<f32>(204.0, 714.0, -2322.0)))))));
}

fn func_5() -> Struct_2 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(countOneBits(u_input.a), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 0u), ~34598u)), ~firstLeadingBit(~u_input.d.x)), 24u)], 247.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2480.0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000.0, 652.0, -804.0))))), _wgslsmith_f_op_vec3_f32(func_6())));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), var_0.d.x))));
    let var_2 = select(select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.a, true, false, false), global1[_wgslsmith_index_u32(97129u, 24u)]), select(vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)], var_0.a), var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, global1[_wgslsmith_index_u32(u_input.a, 24u)], false, global1[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(true, var_0.a, global1[_wgslsmith_index_u32(25233u, 24u)], var_0.a))), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], false, var_0.a, var_0.a), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 24u)], true, true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 24u)], true)), vec4<bool>(all(vec3<bool>(var_0.a, true, false)), false, true, !true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], true, var_0.a), select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(false, var_0.a, global1[_wgslsmith_index_u32(1u, 24u)], true), vec4<bool>(var_0.a, var_0.a, true, false)), var_0.a & false)), !select(vec4<bool>(var_0.a, false, var_0.a, global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec4<bool>(var_0.a, var_0.a, true, var_0.a), global1[_wgslsmith_index_u32(1u, 24u)])), !vec4<bool>(any(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(14016u, 24u)], global1[_wgslsmith_index_u32(94807u, 24u)]), true)), global1[_wgslsmith_index_u32(103660u, 24u)], var_0.a, true), var_0.a);
    global1 = array<bool, 24>();
    var var_3 = Struct_3(Struct_1(var_0.a, var_1, var_1, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d))))), abs(u_input.c.x), Struct_2(global1[_wgslsmith_index_u32(~(~(~14684u)), 24u)], Struct_1(any(vec4<bool>(true, var_2.x, true, var_0.a)), _wgslsmith_f_op_f32(670.0 * _wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(-1258.0, var_1, 1431.0), var_2.yyx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -915.0, -120.0) - var_0.d))))), firstTrailingBit(-u_input.c.ywy), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, -3404, 22333), u_input.c.wyz) > _wgslsmith_mod_i32(~(-2147483648), u_input.c.x), var_0.d.x, _wgslsmith_f_op_vec3_f32(func_6()).x, _wgslsmith_f_op_vec3_f32(-var_0.d)));
    return var_3.c;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_2 {
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        switch (1) {
            case 2147483647: {
                let var_0 = -_wgslsmith_add_i32(14398, ((u_input.c.x & u_input.c.x) & _wgslsmith_mult_i32(1, -24570)) >> (6972u % 32u));
            }
            default: {
            }
        }
        var var_0 = firstTrailingBit(u_input.b);
        let var_1 = func_5();
        var_0 = ~u_input.b;
        let var_2 = var_1.b.d;
    }
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    var var_0 = ~u_input.b.x >= 2147483647;
    if (!(_wgslsmith_mod_u32(1u, 4294967295u << (arg_0.x % 32u)) > arg_1.x) & func_5().a) {
        let var_1 = _wgslsmith_div_f32(-803.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1017.0, 480.0)) + 120.0)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1809.0))))));
        global0 = array<vec2<u32>, 1>();
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        }
        var var_2 = func_5();
    }
    for (var var_1 = 24896; true; var_1 -= 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
    }
    return func_5();
}

fn func_7(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = u_input.d.zwx;
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        let var_1 = arg_3.a;
        global1 = array<bool, 24>();
        for (var var_2 = 18076; !(select(arg_3.b.a, true, true) && false) && var_1; var_2 += 1) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            global0 = array<vec2<u32>, 1>();
            let var_3 = !(!vec3<bool>(countOneBits(var_0.x) > _wgslsmith_dot_vec3_u32(u_input.d.zxz, vec3<u32>(var_0.x, u_input.d.x, 38053u)), false, max(arg_2.x, -1) > arg_2.x));
            global0 = array<vec2<u32>, 1>();
            break;
        }
        let var_2 = u_input.c.x;
        let var_3 = 4294967295u;
    }
    var var_1 = Struct_3(func_5().b, u_input.c.x, func_4(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.d.x) ^ abs(global0[_wgslsmith_index_u32(u_input.d.x, 1u)]), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_0.x), vec2<u32>(u_input.d.x, 4294967295u))), ~abs(u_input.d.yy)), _wgslsmith_add_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(60067, u_input.c.x, 2147483647), abs(arg_2)), reverseBits(vec3<i32>(1, arg_2.x, arg_2.x))), -(arg_2 ^ u_input.c.wzz) & vec3<i32>(~u_input.c.x, arg_2.x, arg_2.x)), Struct_1(arg_3.b.a, 233.0, _wgslsmith_f_op_f32(-func_5().b.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.b.d))))));
    var var_2 = Struct_3(arg_3.b, arg_2.x, arg_3, u_input.c.xzz, var_1.e);
    if (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(21821u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.x, 11967u)), global0[_wgslsmith_index_u32(~u_input.d.x, 1u)]), var_0.x)), 24u)]) {
        switch (u_input.b.x) {
            case -68104: {
                var_1 = Struct_3(arg_3.b, var_2.b, Struct_2(select(!var_2.e.a, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], var_2.e.a, true)), true), var_2.a), var_1.d, Struct_1(var_2.e.a, arg_0.x, _wgslsmith_div_f32(arg_3.b.b, -703.0), var_1.a.d));
                var var_3 = vec3<i32>(min(firstTrailingBit(0 & arg_2.x), _wgslsmith_add_i32(arg_2.x, ~21347)), -_wgslsmith_add_i32((-2618 & -34570) | 0, reverseBits(u_input.c.x)), ~(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.d.x, 2147483647), _wgslsmith_mod_i32(var_2.d.x, 2147483647)) | u_input.c.x));
                let var_4 = 0u;
                var_2 = Struct_3(arg_3.b, -4033, Struct_2(all(vec4<bool>(!arg_3.a, !arg_3.b.a, !arg_1, arg_3.a)), Struct_1(!all(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 24u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -227.0)), arg_3.b.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e.d), arg_3.b.d))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(abs(var_2.d.x), var_3.x), u_input.c.x), _wgslsmith_clamp_i32(arg_2.x, arg_2.x, arg_2.x & var_1.b), var_1.b), func_5().b);
            }
            case 1: {
                var var_3 = Struct_3(func_5().b, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(abs(-22909), var_2.d.x, _wgslsmith_mult_i32(-39541, -u_input.b.x)), 1, _wgslsmith_dot_vec4_i32(u_input.c & u_input.c, u_input.c)), Struct_2(!(!any(vec4<bool>(arg_3.a, false, false, var_2.c.b.a))), var_1.e), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(58784, u_input.b.x, u_input.c.x), vec3<i32>(u_input.b.x, -626, var_1.b))), func_5().b);
                var var_4 = select(vec4<bool>(-38379 < var_2.b, true & global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~58665u, _wgslsmith_mult_u32(var_0.x, u_input.d.x)), 24u)], select(all(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], arg_3.b.a, var_2.a.a)), any(select(vec3<bool>(var_2.c.b.a, var_2.c.b.a, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 24u)]), arg_3.b.a)), true), !func_5().a), !vec4<bool>((var_3.a.a && true) || (arg_3.b.b == -1181.0), var_1.c.b.a, select(global1[_wgslsmith_index_u32(var_0.x, 24u)], var_2.e.a, true) != (var_3.a.a != true), !var_2.e.a), select(select(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.a, 24u)]), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 24u)], var_3.e.a, arg_3.a), vec4<bool>(arg_1, false, true, false), global1[_wgslsmith_index_u32(u_input.d.x, 24u)]), select(vec4<bool>(true, false, true, arg_3.b.a), vec4<bool>(false, arg_1, var_3.e.a, var_2.c.a), var_3.c.a), vec4<bool>(true, false, false, arg_1)), !func_4(u_input.d.xx, global0[_wgslsmith_index_u32(24712u, 1u)]).a), !(!vec4<bool>(false, false, true, arg_3.a)), var_2.e.a));
            }
            case 15856: {
                var var_3 = !any(select(!select(vec3<bool>(arg_3.a, false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], arg_3.b.a, true), true), select(vec3<bool>(var_2.c.b.a, var_2.a.a, false), !vec3<bool>(false, var_2.e.a, arg_3.b.a), false), vec3<bool>(true, !arg_1, var_1.c.a)));
                let var_4 = vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_4(vec2<u32>(var_0.x, u_input.a), var_0.yz).b.b), _wgslsmith_f_op_f32(-981.0)) - _wgslsmith_f_op_f32(-var_1.a.b)));
                var_3 = !(!(false == all(select(vec3<bool>(arg_1, true, false), vec3<bool>(false, true, var_2.e.a), var_1.a.a))));
                let var_5 = abs(countOneBits(var_0.x << (_wgslsmith_mod_u32(31486u, 0u) % 32u))) >> (~_wgslsmith_dot_vec3_u32(var_0, abs(var_0 ^ var_0)) % 32u);
            }
            default: {
                let var_3 = select(-2147483648 ^ arg_2.x, 0, !any(select(vec2<bool>(false, true), vec2<bool>(true, arg_1), true))) & _wgslsmith_div_i32(u_input.b.x, -reverseBits(select(0, var_1.d.x, global1[_wgslsmith_index_u32(1u, 24u)])));
            }
        }
        global1 = array<bool, 24>();
        let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.b.d.xx) - _wgslsmith_f_op_vec2_f32(arg_3.b.d.yx + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(var_1.e.d.zz))))));
        switch (u_input.b.x) {
            case 36879: {
                var_1 = Struct_3(arg_3.b, ~_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483648, var_1.b), u_input.b.x), func_5(), var_1.d, func_4(~var_0.yx, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), u_input.d.zz), global0[_wgslsmith_index_u32(1u << (1u % 32u), 1u)]), 1u)]).b);
                let var_4 = func_5();
                var_2 = Struct_3(Struct_1(!(arg_1 & arg_1) || !(!true), _wgslsmith_f_op_f32(-123.0), _wgslsmith_f_op_f32(655.0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1703.0 - arg_3.b.d.x) - _wgslsmith_div_f32(-540.0, arg_3.b.d.x))), var_1.a.d), firstTrailingBit(1), func_4(~(abs(vec2<u32>(var_0.x, var_0.x)) ^ global0[_wgslsmith_index_u32(var_0.x, 1u)]), abs(vec2<u32>(0u, 56732u)) ^ vec2<u32>(u_input.a, ~u_input.a)), ~u_input.c.yxx, var_4.b);
                let var_5 = global0[_wgslsmith_index_u32(var_0.x, 1u)];
            }
            default: {
                let var_4 = Struct_3(func_5().b, _wgslsmith_dot_vec3_i32(arg_2 & vec3<i32>(select(1, 1, global1[_wgslsmith_index_u32(1u, 24u)]), -arg_2.x, 0), -(~countOneBits(vec3<i32>(1, var_1.b, arg_2.x)))), arg_3, vec3<i32>(-arg_2.x, 2147483647, u_input.c.x), func_5().b);
                var_1 = var_4;
                let var_5 = u_input.c;
            }
        }
        global1 = array<bool, 24>();
    }
    return !(!vec3<bool>(all(!vec4<bool>(false, false, arg_1, var_1.e.a)), var_0.x > 80495u, any(vec3<bool>(false, var_2.e.a, false))));
}

fn func_8(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(arg_2.b, arg_0, arg_2, u_input.c.wyx, Struct_1(all(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(true, arg_1.x, arg_1.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317.0 + _wgslsmith_div_f32(1000.0, arg_2.b.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_2.b.d.x, arg_2.b.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_2.b.b)))))), vec3<f32>(_wgslsmith_f_op_f32(-1429.0), _wgslsmith_f_op_f32(f32(-1.0) * -701.0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-124.0 - arg_2.b.c), _wgslsmith_f_op_f32(max(arg_2.b.b, arg_2.b.c)), true)))));
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    var_0 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.d.x << (u_input.d.x % 32u)), 24u)], 1000.0, -166.0, arg_2.b.d), ~(-1), Struct_2(func_5().a, func_4(~_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], vec2<u32>(u_input.d.x, u_input.a)), countOneBits(max(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(10548u, 1u)]))).b), u_input.c.xwz >> (~reverseBits(u_input.d.wzz) % vec3<u32>(32u)), func_5().b);
    if (func_4(select(u_input.d.ww, vec2<u32>(abs(u_input.a), 11549u), var_0.e.a), u_input.d.yx).b.a) {
        global0 = array<vec2<u32>, 1>();
        let var_1 = var_0.c;
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    return Struct_2(all(!arg_1.yz), arg_2.b);
}

fn func_9(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global0 = array<vec2<u32>, 1>();
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        if (!false) {
            let var_0 = !(!(!(!arg_0.a)) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1055.0)) <= arg_1.b));
            global1 = array<bool, 24>();
            var var_1 = u_input.c.xy;
            let var_2 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(37628u, ~abs(u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 55524u, 8261u) >> (vec3<u32>(28370u, 32223u, u_input.a) % vec3<u32>(32u)), u_input.d.zzx >> (vec3<u32>(u_input.d.x, u_input.d.x, 52661u) % vec3<u32>(32u))), ~u_input.a), ~abs(u_input.d)), ~min(1u, firstTrailingBit(52355u)));
        }
        if (true) {
        }
        var var_0 = func_4(min(u_input.d.ww, global0[_wgslsmith_index_u32(~1u, 1u)]), u_input.d.xz);
    }
    global0 = array<vec2<u32>, 1>();
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        break;
    }
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, abs(25232u)), vec2<u32>(1u, _wgslsmith_div_u32(u_input.d.x, u_input.a)) | global0[_wgslsmith_index_u32(u_input.a, 1u)], ~_wgslsmith_clamp_vec2_u32(~global0[_wgslsmith_index_u32(13709u, 1u)], vec2<u32>(u_input.a, u_input.d.x), vec2<u32>(1u, 46801u))), vec2<u32>(~(~u_input.a), reverseBits(u_input.a) ^ ~0u) << (~(~u_input.d.yz) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(arg_1.c * _wgslsmith_div_f32(303.0, arg_0.b.d.x));
}

fn func_10(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = u_input.c.zww;
    global0 = array<vec2<u32>, 1>();
    for (; select(var_0.x >= reverseBits(~(~(-46908))), !select(func_7(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.d.x, arg_0, -447.0, arg_1.b.c) * vec4<f32>(arg_0, arg_0, arg_0, 1000.0)), global1[_wgslsmith_index_u32(reverseBits(u_input.a), 24u)], _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, var_0.x, 2147483647), vec3<i32>(var_0.x, -73008, var_0.x)), arg_1).x, all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], true)), arg_1.a), func_8(-2371, !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], true), !vec3<bool>(false, arg_1.b.a, arg_1.b.a), global1[_wgslsmith_index_u32(46518u, 24u)]), func_5()).b.a); ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        return func_5();
    }
    let var_1 = arg_1;
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        return var_1;
    }
    return Struct_2(false, Struct_1(any(vec3<bool>(!false, !true, all(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 24u)])))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.d.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -1482.0), _wgslsmith_f_op_f32(-551.0), func_8(~var_0.x, func_7(vec4<f32>(1149.0, arg_0, 275.0, -1691.0), true, u_input.c.wwz, Struct_2(var_1.b.a, Struct_1(true, var_1.b.d.x, var_1.b.b, arg_1.b.d))), arg_1).b.a)), arg_1.b.d));
}

fn func_3() -> Struct_3 {
    global0 = array<vec2<u32>, 1>();
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        var var_0 = global1[_wgslsmith_index_u32(~(~u_input.d.x), 24u)];
    }
    var var_0 = u_input.a;
    var var_1 = func_10(_wgslsmith_f_op_f32(func_9(func_8(firstTrailingBit(u_input.b.x), func_7(_wgslsmith_f_op_vec4_f32(vec4<f32>(216.0, -436.0, 1615.0, -243.0) + vec4<f32>(1707.0, 1094.0, 1576.0, -577.0)), global1[_wgslsmith_index_u32(firstLeadingBit(77281u), 24u)], -u_input.c.zwz, func_4(u_input.d.zy, vec2<u32>(0u, u_input.a))), Struct_2(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], false)), func_5().b)), func_5().b)), Struct_2(global1[_wgslsmith_index_u32(u_input.a, 24u)] || select(func_7(vec4<f32>(-460.0, -1121.0, 296.0, 1000.0), global1[_wgslsmith_index_u32(u_input.d.x, 24u)], vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x), Struct_2(global1[_wgslsmith_index_u32(1595u, 24u)], Struct_1(false, 231.0, -3123.0, vec3<f32>(407.0, -1254.0, -150.0)))).x, false, 1005.0 > 1456.0), func_5().b));
    var_1 = Struct_2((u_input.d.x | u_input.d.x) > u_input.a, func_4(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(1u, 1u)], ~vec2<u32>(u_input.d.x, u_input.a), vec2<u32>(u_input.d.x, u_input.d.x)), global0[_wgslsmith_index_u32(~13210u, 1u)]), vec2<u32>(_wgslsmith_mult_u32(0u, u_input.a), max(abs(u_input.a), countOneBits(92690u)))).b);
    return Struct_3(Struct_1(false, _wgslsmith_f_op_f32(1000.0 - _wgslsmith_div_f32(-1144.0, _wgslsmith_f_op_f32(205.0 - var_1.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_9(Struct_2(var_1.a, Struct_1(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], -1758.0, 251.0, var_1.b.d)), func_8(51777, vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]), Struct_2(false, Struct_1(true, var_1.b.c, 1000.0, vec3<f32>(495.0, var_1.b.b, var_1.b.b)))).b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.c, 2441.0, var_1.b.d.x) * var_1.b.d)), vec3<f32>(410.0, -1041.0, -281.0)))), 49252, func_4(reverseBits(firstTrailingBit(u_input.d.zz << (global0[_wgslsmith_index_u32(0u, 1u)] % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 48697u), global0[_wgslsmith_index_u32(~u_input.d.x, 1u)])), vec3<i32>(-1196, u_input.c.x, -u_input.b.x), Struct_1(true | false, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1860.0))))), _wgslsmith_f_op_f32(var_1.b.c + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.c * 632.0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000.0, 938.0, -1156.0))) * _wgslsmith_f_op_vec3_f32(-var_1.b.d)) + _wgslsmith_f_op_vec3_f32(var_1.b.d * var_1.b.d))));
}

fn func_11(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    if (true) {
        let var_0 = func_5().b;
        global1 = array<bool, 24>();
        switch (-7202) {
            case 51874: {
                let var_1 = vec3<bool>(arg_3.c.a, any(!(!vec3<bool>(var_0.a, true, var_0.a))), !(!false));
                global1 = array<bool, 24>();
                var var_2 = u_input.d.x;
                var_2 = countOneBits(arg_0);
                global0 = array<vec2<u32>, 1>();
            }
            default: {
                var var_1 = arg_3.b;
                var var_2 = func_3();
                var var_3 = _wgslsmith_f_op_f32(-func_8(arg_1, vec3<bool>(false & true, select(arg_3.b, -1, var_2.e.a) >= ~(-43978), true), func_5()).b.d.x);
                var_2 = func_3();
                let var_4 = _wgslsmith_mod_i32(~arg_1, var_2.b);
            }
        }
        let var_1 = firstLeadingBit(vec4<u32>(~u_input.a, 79960u, 4383u, abs(firstLeadingBit(u_input.d.x)))) ^ ~u_input.d;
    }
    switch (reverseBits(0)) {
        case 0: {
            var var_0 = func_8(_wgslsmith_mult_i32(arg_1 & -20457, select(u_input.b.x, -(2147483647 & u_input.b.x), arg_3.c.a)), !(!select(!vec3<bool>(arg_3.c.a, arg_2, arg_2), !vec3<bool>(arg_2, arg_2, arg_3.a.a), func_7(vec4<f32>(772.0, arg_3.a.b, -1000.0, 1765.0), global1[_wgslsmith_index_u32(2460u, 24u)], vec3<i32>(-5987, -1, 12309), Struct_2(arg_3.e.a, arg_3.c.b)))), arg_3.c).b;
            global1 = array<bool, 24>();
        }
        case -19977: {
        }
        case -8383: {
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                let var_0 = arg_3.c.b.c;
            }
        }
        case -11380: {
            if (arg_3.a.a) {
            }
            for (var var_0 = _wgslsmith_div_i32(arg_3.d.x, -29657 >> (_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0, arg_0), u_input.d.zyx), u_input.a, 27172u)) % 32u)); var_0 >= 67885; var_0 += 1) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                var var_1 = !true;
            }
            let var_0 = vec4<u32>(u_input.d.x, ~firstLeadingBit(4294967295u), ~firstTrailingBit(83625u) ^ 12182u, 1u);
        }
        default: {
            let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(_wgslsmith_mult_u32(0u, abs(_wgslsmith_mult_u32(arg_0, 17724u))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_0, arg_0), u_input.d.zwy), ~43654u, 1u), ~u_input.d << (u_input.d % vec4<u32>(32u)))), countOneBits(abs(6556u >> (~9863u % 32u)))), 1u)];
            global1 = array<bool, 24>();
        }
    }
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        switch (func_3().d.x) {
            default: {
                let var_0 = Struct_1(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(980.0)) * func_10(arg_3.a.d.x, arg_3.c).b.b)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1695.0))))), func_8(arg_3.b, func_7(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.e.b, 284.0, arg_3.a.c, 1293.0), vec4<f32>(-910.0, -1311.0, arg_3.a.c, arg_3.c.b.b))) - vec4<f32>(-267.0, arg_3.a.c, arg_3.e.c, arg_3.a.b)), true, u_input.c.wxx, Struct_2(false || false, Struct_1(global1[_wgslsmith_index_u32(1u, 24u)], 1173.0, arg_3.c.b.b, arg_3.e.d))), arg_3.c).b.c, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.c.b.b + arg_3.e.b), _wgslsmith_f_op_f32(-arg_3.a.d.x)), -296.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-297.0))))));
                let var_1 = true;
                return func_3();
            }
        }
    }
    return func_3();
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = func_11(4294967295u, u_input.b.x, !(!(!global1[_wgslsmith_index_u32(u_input.d.x, 24u)])), func_3());
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        switch (countOneBits(_wgslsmith_sub_i32(41541, 1))) {
            default: {
                var var_1 = -(~vec2<i32>(_wgslsmith_mod_i32(min(0, var_0.b), u_input.b.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-16164, 1, 1), vec3<i32>(-1, 2147483647, 71565))));
                break;
            }
        }
        let var_1 = _wgslsmith_f_op_f32(exp2(1065.0));
        break;
    }
    global1 = array<bool, 24>();
    global1 = array<bool, 24>();
    var var_1 = Struct_3(var_0.c.b, -1, func_10(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_9(Struct_2(false, var_0.c.b), Struct_1(true, -1401.0, arg_0.x, arg_0))) * 2567.0), var_0.c), ~vec3<i32>(_wgslsmith_sub_i32(abs(2147483647), var_0.d.x), i32(-1) * -4994, -7777 | var_0.d.x), var_0.a);
    return 1 >> (~(~_wgslsmith_dot_vec2_u32(u_input.d.wz, max(global0[_wgslsmith_index_u32(26622u, 1u)], vec2<u32>(u_input.d.x, 45963u)))) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        break;
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            let var_0 = _wgslsmith_mod_i32(-2147483648, _wgslsmith_div_i32(-(~func_2(vec3<f32>(arg_0.c, 294.0, -197.0))), u_input.b.x));
            continue;
        }
        switch (80940) {
            default: {
                var var_0 = 25150;
                let var_1 = vec2<i32>(min(arg_3, -2147483648), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1, -5051, u_input.b.x), u_input.c.yzx)), u_input.b.x) ^ -1);
                var var_2 = arg_0.a;
            }
        }
        switch (_wgslsmith_div_i32(firstTrailingBit(min(_wgslsmith_add_i32(i32(-1) * -2147483648, arg_3), -(arg_3 | u_input.c.x))), arg_3)) {
            default: {
                break;
            }
        }
    }
    var var_0 = func_11(reverseBits(~u_input.a), (11385 | -u_input.c.x) | _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_3, u_input.c.x, -2147483648), firstTrailingBit(u_input.c.wxx), func_11(30649u, u_input.c.x, arg_0.a, Struct_3(Struct_1(arg_2.a, arg_2.b.b, arg_0.b, arg_0.d), 2147483647, arg_2, vec3<i32>(-1229, 0, -42531), Struct_1(false, 1000.0, arg_2.b.c, arg_0.d))).d), vec3<i32>(u_input.b.x, -26447, i32(-1) * -1440)), all(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 24u)], arg_2.a, global1[_wgslsmith_index_u32(u_input.a, 24u)], arg_1)))), Struct_3(arg_2.b, arg_3, Struct_2(func_10(1000.0, Struct_2(arg_2.a, Struct_1(arg_1, arg_0.c, -470.0, arg_2.b.d))).b.a || (10742 <= -2147483648), Struct_1(true, 1104.0, arg_2.b.b, arg_2.b.d)), ~vec3<i32>(0, arg_3, 35463) ^ reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0, arg_3, 0), u_input.c.zzz)), func_8(u_input.c.x, select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 24u)], false, arg_0.a), func_7(vec4<f32>(2163.0, arg_2.b.c, arg_0.d.x, 1422.0), arg_2.b.a, vec3<i32>(2147483647, arg_3, u_input.c.x), arg_2), arg_2.b.a), Struct_2(!arg_2.a, Struct_1(true, 782.0, -1955.0, vec3<f32>(170.0, -841.0, arg_2.b.b)))).b)).c.b.a;
    let var_1 = u_input.b.x;
    var var_2 = select(vec3<bool>(arg_1, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-265.0))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * arg_2.b.d.x) - _wgslsmith_f_op_f32(arg_0.d.x * -1366.0))), vec3<bool>(false, !all(select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(global1[_wgslsmith_index_u32(17144u, 24u)], arg_1, false, arg_1), arg_2.a)), arg_0.a), global1[_wgslsmith_index_u32(u_input.a, 24u)]);
    return func_8(var_1, !(!select(vec3<bool>(arg_2.a, true, arg_0.a), !vec3<bool>(true, false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], arg_0.a))), arg_2).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1716.0 + 862.0) + 939.0), _wgslsmith_f_op_f32(-1831.0 + _wgslsmith_div_f32(-774.0, 1319.0)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1997.0, -882.0, 2313.0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-333.0, -451.0, 460.0))))), any(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]))), Struct_2(!global1[_wgslsmith_index_u32(0u, 24u)], Struct_1(global1[_wgslsmith_index_u32(u_input.a | 0u, 24u)], _wgslsmith_f_op_f32(abs(-253.0)), 343.0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-444.0, -947.0, 114.0)))), u_input.c.x | ~countOneBits(-28248)), 56193, Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], Struct_1(global1[_wgslsmith_index_u32(101516u, 24u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2227.0 * -382.0), _wgslsmith_f_op_f32(313.0 + 383.0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -1131.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(780.0, -632.0, -761.0) + vec3<f32>(220.0, -1000.0, -1167.0)) * _wgslsmith_div_vec3_f32(vec3<f32>(-625.0, -1514.0, -801.0), vec3<f32>(-579.0, -789.0, 108.0))))), u_input.c.ywz, Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(6106u, u_input.a), 24u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1197.0, _wgslsmith_f_op_f32(f32(-1.0) * -930.0)) + -839.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) + _wgslsmith_f_op_f32(-879.0 * 333.0)) - -297.0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-638.0, 170.0, 1368.0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1008.0, -189.0, 233.0) - vec3<f32>(-909.0, -1000.0, -1530.0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-225.0, 685.0, 131.0))))));
    global0 = array<vec2<u32>, 1>();
    global1 = array<bool, 24>();
    global0 = array<vec2<u32>, 1>();
    for (var var_1 = -455; var_0.a.a; var_1 -= 1) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        for (var var_2 = 2147483647; all(vec4<bool>(-987.0 >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.b.d.x), _wgslsmith_f_op_f32(-var_0.a.b))), !false, any(vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], true)), true, !true, true)), !(!any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 24u)], false, var_0.a.a))))); var_2 -= 1) {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            global0 = array<vec2<u32>, 1>();
            continue;
        }
    }
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
    }
    var var_1 = Struct_2(!(!global1[_wgslsmith_index_u32(~18205u, 24u)]) || all(select(vec4<bool>(var_0.c.b.a, global1[_wgslsmith_index_u32(30938u, 24u)], true, var_0.a.a), select(vec4<bool>(var_0.e.a, true, false, true), vec4<bool>(true, var_0.c.b.a, var_0.c.b.a, true), vec4<bool>(var_0.c.a, true, global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(u_input.d.x, 24u)])), global1[_wgslsmith_index_u32(u_input.d.x, 24u)])), var_0.e);
    switch (~0 << (~(~(~1u)) % 32u)) {
        case 65043: {
            let var_2 = var_0.c;
        }
        case -2382: {
        }
        default: {
        }
    }
    for (; ; ) {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        loop {
            if (LOOP_COUNTERS[26u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            let var_2 = _wgslsmith_f_op_f32(trunc(-676.0));
            global1 = array<bool, 24>();
            continue;
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, ~_wgslsmith_div_u32(firstTrailingBit(u_input.d.x), u_input.d.x)), var_0.d.x, u_input.a, vec3<i32>(_wgslsmith_sub_i32((var_0.d.x ^ -51726) << (_wgslsmith_dot_vec3_u32(vec3<u32>(119462u, u_input.d.x, 0u), vec3<u32>(4294967295u, u_input.a, u_input.d.x)) % 32u), 1), _wgslsmith_dot_vec3_i32(select(abs(var_0.d), var_0.d ^ vec3<i32>(-1, u_input.c.x, -1), select(vec3<bool>(true, true, var_0.c.b.a), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], false, false), vec3<bool>(false, false, true))), select(vec3<i32>(-17804, u_input.b.x, -59692), countOneBits(var_0.d), vec3<bool>(true, true, var_1.a))), var_0.b));
}

