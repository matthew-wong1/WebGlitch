// {"0:0":[165,219,43,242,198,117,95,126,184,75,227,126,99,19,177,29,79,81,71,249,165,215,153,242,249,248,134,248,217,130,113,181,114,145,140,234,200,102,131,128,39,124,58,56,68,86,170,133]}
// Seed: 2859497342573239385

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: bool = true;

var<private> LOOP_COUNTERS: array<u32, 25>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_6() -> vec2<f32> {
    for (var var_0 = 14708; ; global0 = array<u32, 10>()) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        break;
    }
    var var_0 = 1u << ((abs(select(4294967295u ^ 0u, ~u_input.c.x, false & true)) | 28243u) % 32u);
    if (!select(any(!vec3<bool>(true, true, true)), false, !(!any(vec2<bool>(false, false))))) {
        for (var var_1 = 46678; ; var_1 -= 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            let var_2 = 88920u;
            break;
        }
        if (any(!vec4<bool>(select(true | true, true && false, !false), true, all(vec3<bool>(true, false, true)) && (false & false), any(vec2<bool>(true, true)) && false))) {
        }
        switch (max(~(~(-18480)), u_input.b.x | u_input.b.x)) {
            case -14474: {
                let var_1 = 1;
                var_0 = 22427u;
                var var_2 = Struct_1(i32(-1) * -2147483648);
            }
            case -2147483648: {
                var var_1 = Struct_2(Struct_1(~_wgslsmith_mod_i32(u_input.b.x, countOneBits(-30721))), Struct_1(0), _wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)), (vec4<u32>(4294967295u, u_input.c.x, 1u, 4294967295u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(55490u, global0[_wgslsmith_index_u32(109597u, 10u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec4<u32>(38940u, 1u, u_input.a, 7515u))) & abs(vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 13791u) << (vec4<u32>(u_input.a, 10856u, 4294967295u, global0[_wgslsmith_index_u32(0u, 10u)]) % vec4<u32>(32u)))));
                let var_2 = Struct_2(Struct_1(0), Struct_1(u_input.b.x), _wgslsmith_clamp_vec4_u32(min(var_1.c, _wgslsmith_mod_vec4_u32(var_1.c, ~vec4<u32>(0u, u_input.c.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 10u)]))), var_1.c, var_1.c));
                var_1 = Struct_2(var_1.b, Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-31700, -31692, var_2.a.a) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 51855u, 4294967295u), var_2.c.wyy) % vec3<u32>(32u)), vec3<i32>(var_1.a.a, -15486, -var_2.a.a))), ~_wgslsmith_mod_vec4_u32(~var_1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.x, 11198u, global0[_wgslsmith_index_u32(18068u, 10u)], u_input.a), select(vec4<u32>(var_1.c.x, u_input.a, 1u, 1u), vec4<u32>(0u, u_input.c.x, 1u, 14104u), vec4<bool>(false, true, true, true)))));
                let var_3 = var_2.b;
            }
            default: {
                var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(abs(u_input.b.zzw), vec3<i32>(reverseBits(u_input.b.x), 22025, u_input.b.x)));
                return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-1593.0 - -939.0), _wgslsmith_f_op_f32(1281.0 + -1670.0))))));
            }
        }
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            var var_1 = select(select(vec4<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), false, _wgslsmith_sub_i32(-19705, -15919) == 1), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), !vec4<bool>(true, true, true, true), true), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), 5794u < global0[_wgslsmith_index_u32(40978u, 10u)])), select(!vec4<bool>(any(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, false, true)), !true, true), !select(vec4<bool>(false, false, true, true), !vec4<bool>(true, false, true, false), -59037 <= u_input.b.x), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true))), any(select(vec4<bool>(any(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, true, true, true)), !true, u_input.b.x >= u_input.b.x), select(vec4<bool>(true, false, true, false), !vec4<bool>(false, true, false, true), !vec4<bool>(false, true, false, false)), vec4<bool>(!false, all(vec2<bool>(false, false)), false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)] < 25985u))));
            var var_2 = Struct_2(Struct_1(firstTrailingBit(abs(-1 ^ u_input.b.x))), Struct_1(~reverseBits(1)), ~vec4<u32>(~4294967295u, 1u, 4294967295u, ~1u) >> (select(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)] & u_input.a, firstLeadingBit(59432u), 30976u | 0u), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 10u)], 1u), vec4<u32>(u_input.c.x, 0u, 43845u, global0[_wgslsmith_index_u32(21440u, 10u)])), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 95565u, u_input.c.x, 20506u)), true) % vec4<u32>(32u)));
            var var_3 = all(select(vec2<bool>(!var_1.x, true), vec2<bool>(!false, var_1.x), !vec2<bool>(var_1.x, !false)));
        }
        global0 = array<u32, 10>();
    }
    for (var var_1: i32; false; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        let var_2 = Struct_2(Struct_1(u_input.b.x), Struct_1(firstTrailingBit(38171) >> (~(~global0[_wgslsmith_index_u32(u_input.a, 10u)]) % 32u)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(7835u, 66470u, 4294967295u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 8648u, 1u, 61406u) & vec4<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 1u, u_input.a, 1u)) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(4609u, 38180u, 10348u, 0u), vec4<u32>(43507u, 72824u, 8916u, 0u)) >> (~(vec4<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3076u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(6277u, 10u)], 4294967295u, 36249u, 69494u) % vec4<u32>(32u))) % vec4<u32>(32u))));
        continue;
    }
    let var_1 = Struct_2(Struct_1(~reverseBits(u_input.b.x) & -_wgslsmith_dot_vec4_i32(vec4<i32>(-19137, -48318, u_input.b.x, u_input.b.x), u_input.b)), Struct_1(_wgslsmith_div_i32(1, 12668)), vec4<u32>(4294967295u, 4294967295u, ~abs(100298u), 7985u) & vec4<u32>(countOneBits(_wgslsmith_clamp_u32(38837u, global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.c.x)), _wgslsmith_clamp_u32(~u_input.c.x, ~global0[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(21429u, 10u)], 7955u, u_input.c.x), vec4<u32>(56080u, 16053u, 22847u, 19707u))), _wgslsmith_dot_vec2_u32(vec2<u32>(8890u, u_input.a), vec2<u32>(u_input.c.x, 1081u)) ^ firstLeadingBit(62975u), u_input.c.x));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(360.0)), _wgslsmith_f_op_f32(round(1397.0))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(-1681.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(107.0, -1125.0)))), -133.0));
}

fn func_5() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-132.0, 229.0))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_6()))));
    var var_1 = u_input.c.x;
    var var_2 = select(!(!vec4<bool>(u_input.c.x >= 12803u, !true, select(false, true, true), !true)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, false, false))), select(select(vec4<bool>(false, true || false, -1867.0 >= var_0.x, true & false), select(!vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, false, true)), u_input.b.x < firstLeadingBit(u_input.b.x)), vec4<bool>(any(vec2<bool>(true, false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), !false, _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(0, -2147483648)) <= firstTrailingBit(u_input.b.x)), !(!(0u <= u_input.c.x))));
    if (all(!select(!var_2.zz, select(var_2.zz, vec2<bool>(false, var_2.x), true), false & var_2.x)) != !var_2.x) {
        var var_3 = -vec4<i32>(_wgslsmith_mod_i32(0 << (u_input.c.x % 32u), countOneBits(1)), ~(~u_input.b.x), -firstTrailingBit(u_input.b.x | u_input.b.x), u_input.b.x);
        var_3 = _wgslsmith_add_vec4_i32(-abs(min(~u_input.b, u_input.b)), vec4<i32>(-5237, -_wgslsmith_dot_vec3_i32(var_3.ywx, -u_input.b.zxz), var_3.x, u_input.b.x));
    }
    let var_3 = u_input.c.x;
    return Struct_1(u_input.b.x);
}

fn func_7(arg_0: Struct_1) -> Struct_2 {
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        var var_0 = func_5();
        var var_1 = select(vec3<bool>(true, select(false, true == select(true, false, true), false), !true), vec3<bool>(all(!vec2<bool>(true, false)), _wgslsmith_mult_i32(-2147483648, max(-17838, 0)) >= var_0.a, -1871.0 >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-611.0, 657.0))), select(true, !(func_5().a <= min(0, 0)), select(select(!true, !true, -480.0 <= 1170.0), !true, !(false && false))));
        continue;
    }
    let var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(76749u, _wgslsmith_add_u32(firstTrailingBit(93600u), 42201u)), min(_wgslsmith_mult_u32(0u, u_input.c.x), _wgslsmith_mod_u32(4294967295u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 1u)), ~global0[_wgslsmith_index_u32(~reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3243u, 10u)], 10u)]), 10u)]);
    let var_1 = 4294967295u;
    var var_2 = reverseBits(_wgslsmith_div_u32(var_1, 4294967295u << (46783u % 32u)));
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(min(global0[_wgslsmith_index_u32(4294967295u, 10u)], 36245u) | 39054u, select(global0[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u, true) >> (1u % 32u), u_input.a), vec3<u32>(~_wgslsmith_sub_u32(4294967295u, 5085u), 35735u, 0u)), vec3<u32>(var_0, u_input.c.x << (_wgslsmith_dot_vec2_u32(~u_input.c, firstTrailingBit(u_input.c)) % 32u), _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(u_input.a, 0u)), min(vec2<u32>(1u, 0u) >> (u_input.c % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(72513u, 10u)]), vec2<u32>(27863u, var_0))))));
    return Struct_2(func_5(), Struct_1(u_input.b.x), min(countOneBits(firstLeadingBit(vec4<u32>(1u, 4294967295u, var_3, 43487u))), ~vec4<u32>(global0[_wgslsmith_index_u32(0u, 10u)] << (var_1 % 32u), _wgslsmith_clamp_u32(1u, global0[_wgslsmith_index_u32(var_1, 10u)], 4294967295u), firstTrailingBit(0u), var_1 ^ global0[_wgslsmith_index_u32(1u, 10u)])));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    for (var var_0 = -max(-(firstTrailingBit(u_input.b.x) << (max(1u, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]) % 32u)), i32(-1) * -2147483648); ; var_0 += 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        global1 = !(!(all(!vec2<bool>(true, true)) | false));
    }
    let var_0 = Struct_1(-5830);
    var var_1 = Struct_1(min(_wgslsmith_div_i32(select(8256, var_0.a, false), u_input.b.x), arg_0.b.a) << (firstTrailingBit(1u ^ ~global0[_wgslsmith_index_u32(1u, 10u)]) % 32u));
    let var_2 = !vec2<bool>(true, false);
    var var_3 = Struct_1(~_wgslsmith_sub_i32(func_7(Struct_1(-1472)).b.a, arg_1.a.a));
    return !true;
}

fn func_9(arg_0: bool, arg_1: Struct_2) -> u32 {
    global1 = !arg_0;
    global1 = false;
    switch (func_7(arg_1.b).b.a) {
        case -23114: {
            let var_0 = _wgslsmith_add_u32(36955u, countOneBits(~0u));
            switch (_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.b, ~(~u_input.b)), 1)) {
                case -14945: {
                    let var_1 = func_7(arg_1.b).b;
                    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1522.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -930.0))), -706.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2037.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) * _wgslsmith_f_op_vec2_f32(func_6()).x))));
                    let var_3 = var_1;
                }
                case 16060: {
                    let var_1 = -(~(-(~vec4<i32>(u_input.b.x, -1, arg_1.b.a, u_input.b.x)) << (select(vec4<u32>(arg_1.c.x, u_input.c.x, 4294967295u, var_0), vec4<u32>(var_0, u_input.a, 4294967295u, global0[_wgslsmith_index_u32(0u, 10u)]) & vec4<u32>(arg_1.c.x, 1u, 0u, 1u), vec4<bool>(arg_0, arg_0, false, arg_0)) % vec4<u32>(32u))));
                }
                case 45664: {
                    let var_1 = min(_wgslsmith_mult_vec2_u32(~arg_1.c.yw, vec2<u32>(4031u << (29611u % 32u), _wgslsmith_div_u32(~u_input.c.x, func_7(Struct_1(25989)).c.x))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.c.x | global0[_wgslsmith_index_u32(var_0, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)] ^ 4294967295u), arg_1.c.x));
                    let var_2 = abs(u_input.a);
                    global0 = array<u32, 10>();
                    global1 = true;
                }
                default: {
                    let var_1 = _wgslsmith_f_op_f32(-103.0);
                }
            }
            if (any(!(!(!vec2<bool>(arg_0, false))))) {
                global0 = array<u32, 10>();
                global1 = true;
                let var_1 = arg_1.b;
                global0 = array<u32, 10>();
                global0 = array<u32, 10>();
            }
        }
        default: {
            for (; any(!select(!vec4<bool>(true, false, arg_0, true), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, arg_0, false, false))) | !(0u <= abs(max(0u, arg_1.c.x))); ) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                global1 = any(vec2<bool>(false, all(!vec3<bool>(arg_0, false, true))));
                let var_0 = vec4<bool>(any(!select(select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(false, true, false, arg_0), arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, true, false, false))), (-41835 == _wgslsmith_dot_vec3_i32(vec3<i32>(7219, -8711, u_input.b.x), vec3<i32>(2147483647, -9940, u_input.b.x) >> (vec3<u32>(global0[_wgslsmith_index_u32(arg_1.c.x, 10u)], u_input.c.x, 6553u) % vec3<u32>(32u)))) || all(!(!vec3<bool>(true, arg_0, arg_0))), true, select(func_8(Struct_2(arg_1.a, Struct_1(0), select(vec4<u32>(4294967295u, 4621u, 0u, global0[_wgslsmith_index_u32(13507u, 10u)]), arg_1.c, vec4<bool>(true, arg_0, arg_0, arg_0))), func_7(func_5())), select(false, arg_0, func_8(arg_1, func_7(arg_1.a))), arg_0));
                var var_1 = arg_1.c.xwy;
            }
        }
    }
    var var_0 = -640.0;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-3198.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1448.0, 248.0))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(497.0, -221.0))))));
    return ~4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    global0 = array<u32, 10>();
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        if (!(!all(vec3<bool>(true, false, false)) && (true | !(-18151 <= -2147483648)))) {
            global1 = arg_1.c.x < func_9(func_8(Struct_2(arg_0, Struct_1(arg_1.b.a), vec4<u32>(u_input.a, u_input.c.x, arg_1.c.x, 4294967295u)), func_7(func_5())), func_7(Struct_1(~1)));
            global0 = array<u32, 10>();
            let var_0 = max((vec2<i32>(max(20191, 48450), ~(-27550)) ^ ~abs(vec2<i32>(2147483647, u_input.b.x))) & abs(-(u_input.b.yz ^ vec2<i32>(u_input.b.x, u_input.b.x))), vec2<i32>(u_input.b.x, ~1));
            var var_1 = arg_1.c;
            let var_2 = Struct_2(func_7(func_7(Struct_1(arg_0.a)).b).a, func_5(), ~(~vec4<u32>(~1u, ~var_1.x, func_9(false, Struct_2(arg_0, arg_1.b, vec4<u32>(var_1.x, 86149u, 11031u, global0[_wgslsmith_index_u32(55513u, 10u)]))), 36411u)));
        }
        let var_0 = Struct_1(arg_1.b.a);
        var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0 * arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -1574.0)))), _wgslsmith_f_op_f32(-253.0 - _wgslsmith_f_op_f32(-arg_3)), arg_3)));
        for (; !any(vec2<bool>(false, true)); ) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            global0 = array<u32, 10>();
            let var_2 = u_input.b.x << (~(~countOneBits(~u_input.a)) % 32u);
            var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1542.0, 782.0, !true)), 1200.0, _wgslsmith_f_op_f32(408.0 + -131.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -166.0) + _wgslsmith_f_op_f32(min(1000.0, var_1.x)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * arg_2.x), _wgslsmith_f_op_f32(f32(-1.0) * -544.0), var_1.x, _wgslsmith_f_op_f32(-arg_3)))))));
            var var_3 = _wgslsmith_f_op_f32(-464.0);
        }
    }
    switch (-1264) {
        case -28540: {
            var var_0 = ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~arg_1.c.zx), 10u)], 0u);
            if ((all(!vec3<bool>(true, true, false)) & false) || !(!true)) {
                return Struct_2(func_7(Struct_1(arg_1.a.a)).b, Struct_1(2147483647), ~reverseBits(vec4<u32>(u_input.c.x, _wgslsmith_add_u32(26866u, 1u), u_input.c.x, ~1u)));
            }
        }
        default: {
            var var_0 = func_7(Struct_1(abs(arg_1.b.a))).b;
            var_0 = Struct_1(~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -51989), u_input.b.wz, firstTrailingBit(u_input.b.yy)), reverseBits(firstLeadingBit(vec2<i32>(-517, var_0.a)))));
        }
    }
    for (var var_0 = 1; !select(!true & func_8(func_7(arg_0), arg_1), (false && all(vec2<bool>(false, false))) | true, false); var_0 -= 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        var var_1 = Struct_1(abs(-69162));
        if (-23207 <= 2147483647) {
        }
    }
    var var_0 = _wgslsmith_f_op_f32(arg_2.x - 430.0);
    return arg_1;
}

fn func_10(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        switch (-arg_1.x) {
            case 19349: {
            }
            case 1: {
                let var_0 = all(select(select(vec2<bool>(any(vec3<bool>(true, true, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(!true, false)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), !vec2<bool>(false, true), !vec2<bool>(true, false)), select(!vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), !vec2<bool>(false, true)), vec2<bool>(_wgslsmith_f_op_f32(arg_3.x * arg_3.x) != arg_3.x, !all(vec4<bool>(true, true, false, true)))));
                continue;
            }
            case -41576: {
                break;
            }
            case 2147483647: {
                continue;
            }
            default: {
                var var_0 = vec3<i32>(func_5().a, arg_2.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec2_i32(-vec2<i32>(-68144, -30731), firstTrailingBit(arg_1))));
                return !true;
            }
        }
        break;
    }
    global0 = array<u32, 10>();
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_0 = arg_2.b;
        switch (_wgslsmith_clamp_i32(arg_2.a.a, -1, 0)) {
            case 0: {
                break;
            }
            default: {
                global1 = !true;
                let var_1 = var_0;
                continue;
            }
        }
        for (var var_1: i32; ; var_1 -= 1) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            return true;
        }
        let var_1 = vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, select(u_input.a, ~4437u, !(false && true))), _wgslsmith_dot_vec3_u32(arg_2.c.xyx, _wgslsmith_sub_vec3_u32(~vec3<u32>(17777u, 51756u, 4294967295u) | vec3<u32>(arg_2.c.x, u_input.a, global0[_wgslsmith_index_u32(37322u, 10u)]), vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], arg_0))), _wgslsmith_div_u32(4294967295u, 1u), 1u);
    }
    let var_0 = func_4(func_4(arg_2.b, arg_2, _wgslsmith_f_op_vec2_f32(arg_3 + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(426.0, arg_3.x)))), arg_3.x).a, Struct_2(func_7(arg_2.a).b, Struct_1(42035), abs(arg_2.c)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -2881.0)), _wgslsmith_f_op_f32(sign(arg_3.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_3, arg_3), arg_3))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -927.0))).a;
    for (var var_1 = 44531; any(vec3<bool>(select(~(-45483) < _wgslsmith_sub_i32(0, 0), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), !any(vec3<bool>(false, true, true))), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), true)); var_1 += 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_2 = firstTrailingBit(~u_input.c.x);
        var_1 = -max(countOneBits(-var_0.a), ~23010);
    }
    return !(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_1.x, -51482), var_0.a & arg_2.b.a) == arg_1.x);
}

fn func_11(arg_0: bool) -> i32 {
    var var_0 = false;
    if (arg_0) {
        let var_1 = _wgslsmith_add_i32(u_input.b.x, 8225);
        switch (var_1) {
            case 40073: {
                var_0 = arg_0;
            }
            default: {
                var var_2 = Struct_2(func_5(), func_5(), abs(countOneBits(select(~vec4<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<u32>(26328u, 3764u, u_input.c.x, 0u), !vec4<bool>(false, arg_0, arg_0, arg_0)))));
                global1 = !arg_0;
                let var_3 = u_input.b.xzx;
                var_0 = true;
            }
        }
    }
    switch (u_input.b.x) {
        case -29741: {
        }
        default: {
        }
    }
    global1 = all(vec4<bool>(arg_0, arg_0, arg_0, arg_0));
    global0 = array<u32, 10>();
    return u_input.b.x;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: i32) -> bool {
    for (var var_0 = -1; !(all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)) && !any(vec3<bool>(false, true, true))); var_0 = -func_11(func_10(arg_1, u_input.b.yx, func_4(Struct_1(-1), Struct_2(Struct_1(arg_3), Struct_1(arg_3), vec4<u32>(arg_1, 366u, 1u, global0[_wgslsmith_index_u32(4294967295u, 10u)])), vec2<f32>(1000.0, -257.0), _wgslsmith_f_op_f32(min(arg_0, 198.0))), vec2<f32>(-784.0, arg_0)))) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        if (true) {
            let var_1 = !(false & (select(true, !false, !false) | (false & !true)));
            let var_2 = _wgslsmith_clamp_i32(28408, _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(reverseBits(_wgslsmith_mult_i32(62, u_input.b.x)), func_5().a)), u_input.b.x);
            global1 = func_8(Struct_2(func_7(func_7(func_7(Struct_1(2147483647)).b).b).b, func_4(func_7(func_7(Struct_1(2147483647)).a).b, Struct_2(func_4(Struct_1(-1), Struct_2(Struct_1(-1), Struct_1(u_input.b.x), vec4<u32>(0u, 107661u, global0[_wgslsmith_index_u32(1u, 10u)], arg_1)), vec2<f32>(-598.0, -762.0), 1485.0).b, func_5(), abs(vec4<u32>(arg_1, 28897u, u_input.c.x, global0[_wgslsmith_index_u32(arg_2.x, 10u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 552.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))).b, countOneBits(vec4<u32>(func_9(var_1, Struct_2(Struct_1(28841), Struct_1(-2147483648), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 5255u, arg_2.x))), firstLeadingBit(8439u), 1u ^ arg_2.x, firstTrailingBit(4294967295u)))), func_7(func_5()));
        }
        if (all(select(!vec3<bool>(true, all(vec3<bool>(false, true, false)), func_10(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], u_input.b.xy, Struct_2(Struct_1(-46701), Struct_1(u_input.b.x), vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a)), vec2<f32>(arg_0, -650.0))), !vec3<bool>(all(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)), true), !select(!vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))))) {
            let var_1 = ~(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_1, arg_1), global0[_wgslsmith_index_u32(4294967295u, 10u)]), ~_wgslsmith_add_u32(35256u, arg_1)) >> (min(vec2<u32>(_wgslsmith_sub_u32(arg_1, 4294967295u), func_4(Struct_1(u_input.b.x), Struct_2(Struct_1(arg_3), Struct_1(arg_3), vec4<u32>(1u, arg_1, u_input.c.x, 72043u)), vec2<f32>(-797.0, 936.0), 269.0).c.x), vec2<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4768u, 10u)], arg_1), 59253u)) % vec2<u32>(32u)));
        }
        global1 = !false;
    }
    global1 = !(!(arg_1 > global0[_wgslsmith_index_u32(34859u & _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 54534u)), 10u)]));
    switch (2147483647) {
        case 2147483647: {
            global0 = array<u32, 10>();
        }
        case 10503: {
            switch (~(((u_input.b.x | reverseBits(-1)) | ~_wgslsmith_div_i32(u_input.b.x, u_input.b.x)) << (~(~4294967295u) % 32u))) {
                case 0: {
                }
                case 14345: {
                }
                case -1: {
                    global1 = any(!vec2<bool>(!(arg_0 > arg_0), select(func_10(0u, vec2<i32>(0, arg_3), Struct_2(Struct_1(1), Struct_1(-1), vec4<u32>(4294967295u, u_input.c.x, 21662u, 0u)), vec2<f32>(arg_0, -294.0)), func_10(1u, u_input.b.ww, Struct_2(Struct_1(arg_3), Struct_1(2147483647), vec4<u32>(arg_1, 31745u, 1u, u_input.a)), vec2<f32>(-147.0, arg_0)), select(false, false, true))));
                    let var_0 = func_7(func_5()).a;
                    global0 = array<u32, 10>();
                    global0 = array<u32, 10>();
                    var var_1 = any(!select(select(!vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), !vec4<bool>(false, false, false, true), all(!vec2<bool>(false, false))));
                }
                case -5409: {
                    return true;
                }
                default: {
                    global1 = all(select(vec3<bool>(!true || (true == false), true, all(vec2<bool>(false, false))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), false));
                    return any(select(select(vec3<bool>(false, true & false, global0[_wgslsmith_index_u32(4294967295u, 10u)] > global0[_wgslsmith_index_u32(1u, 10u)]), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), !true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), select(!(!vec3<bool>(true, false, true)), vec3<bool>(false, func_8(Struct_2(Struct_1(2147483647), Struct_1(arg_3), vec4<u32>(4294967295u, 4294967295u, arg_1, 16699u)), Struct_2(Struct_1(-2147483648), Struct_1(-1), vec4<u32>(36534u, 44471u, 2430u, 29061u))), true == true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), !vec3<bool>(false, false, false), !true)), vec3<bool>(any(!vec2<bool>(false, false)), false, true)));
                }
            }
        }
        case -13205: {
            var var_0 = Struct_1(-2147483648);
        }
        case -28174: {
            global0 = array<u32, 10>();
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                var var_0 = min(_wgslsmith_add_i32(abs(0), u_input.b.x), ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(u_input.b.wx), -u_input.b.xx, -u_input.b.wy), ~u_input.b.xw ^ vec2<i32>(u_input.b.x, -2147483648)));
                let var_1 = 2216u;
                continue;
            }
        }
        default: {
            if (false & any(vec3<bool>(!(!false), true, ~4294967295u >= min(1u, 5837u)))) {
                return -19769 == u_input.b.x;
            }
            for (; all(select(vec2<bool>(all(!vec2<bool>(true, false)), !(true == false)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec3<bool>(true, false, true))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), all(vec2<bool>(false, false)) && (true && false)), !func_10(0u, u_input.b.yy, func_4(Struct_1(u_input.b.x), Struct_2(Struct_1(arg_3), Struct_1(0), vec4<u32>(u_input.c.x, 22863u, arg_2.x, u_input.a)), vec2<f32>(arg_0, -356.0), 886.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-364.0, -394.0))))); ) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                break;
            }
            let var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~countOneBits(vec2<u32>(arg_1, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(arg_1, 10u)], u_input.a), _wgslsmith_div_vec2_u32(u_input.c, arg_2.zz))), ~_wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, u_input.c.x)), ~u_input.c));
            let var_1 = ~vec3<u32>(39232u, firstTrailingBit(~arg_1), _wgslsmith_add_u32(48200u, ~1u));
        }
    }
    global0 = array<u32, 10>();
    for (var var_0: i32; any(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), !false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true))); ) {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    return !(-41249 < 1);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: u32) -> bool {
    global0 = array<u32, 10>();
    for (var var_0 = 6944; ; var_0 -= 1) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        global0 = array<u32, 10>();
        switch (-2147483647) {
            case -72255: {
                continue;
            }
            case 47608: {
                var var_1 = -u_input.b.wy;
                continue;
            }
            case -29089: {
                global0 = array<u32, 10>();
                global1 = !any(select(!(!vec3<bool>(arg_1, false, true)), vec3<bool>(!arg_1, arg_1, any(vec2<bool>(true, arg_1))), func_3(arg_2, 39325u, vec3<u32>(u_input.a, 3541u, 85106u), u_input.b.x) || arg_1));
                let var_1 = vec3<i32>(1, _wgslsmith_div_i32(~abs(~0), 1 & u_input.b.x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34538u, 10u)], 10u)], 10u)] % 32u), u_input.b.x & 9763, _wgslsmith_mod_i32(6165, -3420), 0), abs(min(u_input.b, vec4<i32>(u_input.b.x, 30408, u_input.b.x, u_input.b.x)))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b.x, -1, u_input.b.x), ~(-1), reverseBits(25105)) | ~(-u_input.b.x)));
                global0 = array<u32, 10>();
                var var_2 = func_7(func_5());
            }
            case -10255: {
                var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 * -1000.0), _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - 418.0), _wgslsmith_f_op_f32(arg_2 - arg_2)), 2756.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(570.0, 965.0) * vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(230.0, arg_2) * vec2<f32>(997.0, arg_2)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(112.0, -1675.0)))))));
                var_0 = countOneBits(_wgslsmith_sub_i32(max(0, u_input.b.x), _wgslsmith_mod_i32(65401, 4139)) << (arg_3 % 32u)) << (~1u % 32u);
                break;
            }
            default: {
                let var_1 = !select(!select(vec2<bool>(arg_1, arg_1), !vec2<bool>(false, arg_1), arg_1), select(select(!vec2<bool>(false, arg_1), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), !(!vec2<bool>(arg_1, false))), arg_1);
                let var_2 = func_7(func_5()).a;
            }
        }
    }
    for (var var_0: i32; ; global0 = array<u32, 10>()) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        break;
    }
    global0 = array<u32, 10>();
    if (arg_1 || (!arg_1 & !true)) {
        var var_0 = vec3<bool>(arg_1, func_8(func_4(func_7(Struct_1(1)).b, Struct_2(Struct_1(0), func_4(Struct_1(u_input.b.x), Struct_2(Struct_1(55582), Struct_1(-27674), vec4<u32>(arg_0, 46892u, arg_3, u_input.c.x)), vec2<f32>(-651.0, arg_2), 149.0).a, countOneBits(vec4<u32>(arg_3, global0[_wgslsmith_index_u32(u_input.a, 10u)], 0u, global0[_wgslsmith_index_u32(u_input.a, 10u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(458.0 + arg_2))), Struct_2(Struct_1(u_input.b.x), Struct_1(2147483647), ~vec4<u32>(0u, 28784u, u_input.a, 0u) >> (~vec4<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 80232u) % vec4<u32>(32u)))), _wgslsmith_div_f32(404.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 - arg_2))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1077.0 * arg_2)))));
        loop {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            global0 = array<u32, 10>();
        }
        switch (func_5().a) {
            case 24512: {
                let var_1 = var_0.x;
                let var_2 = vec3<bool>(false, any(vec3<bool>(arg_1, !(var_0.x | arg_1), arg_1)), !(false && var_0.x));
                var var_3 = select(vec4<bool>(any(!select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, true, true, false), vec4<bool>(arg_1, arg_1, false, false))), ~global0[_wgslsmith_index_u32(~arg_0, 10u)] >= _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 16918u), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global0[_wgslsmith_index_u32(93871u, 10u)], u_input.a))), func_8(Struct_2(func_7(Struct_1(u_input.b.x)).a, Struct_1(2147483647), ~vec4<u32>(u_input.a, 20449u, 1u, 1u)), Struct_2(func_4(Struct_1(12594), Struct_2(Struct_1(1687), Struct_1(18778), vec4<u32>(arg_0, 0u, 4294967295u, 1u)), vec2<f32>(-1822.0, arg_2), arg_2).b, Struct_1(38716), ~vec4<u32>(u_input.c.x, arg_3, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3, 10u)], 10u)], arg_0))), select(!false || !var_2.x, !(!var_2.x), all(vec4<bool>(false, var_2.x, true, true)) | !false)), !(!select(!vec4<bool>(arg_1, false, true, var_2.x), !vec4<bool>(true, false, arg_1, true), false)), vec4<bool>(!(!all(vec4<bool>(true, var_2.x, false, arg_1))), !var_2.x, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * 538.0) == 877.0));
                var_3 = !vec4<bool>(any(select(!vec2<bool>(arg_1, var_0.x), var_3.yy, var_3.x)), !(!select(var_2.x, true, true)), (func_11(var_0.x) & _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)) <= (func_7(Struct_1(u_input.b.x)).b.a & _wgslsmith_add_i32(u_input.b.x, -1)), func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_2, arg_2, arg_1)))), 34580u, countOneBits(vec3<u32>(arg_0, 19239u, arg_0)) >> (vec3<u32>(90169u, arg_3, 97108u) % vec3<u32>(32u)), func_5().a));
            }
            case -1: {
                var var_1 = vec4<bool>(false, !arg_1, false, 0u <= 8271u);
            }
            case 0: {
                global0 = array<u32, 10>();
            }
            case -49918: {
                let var_1 = Struct_2(Struct_1(func_4(Struct_1(abs(u_input.b.x)), func_4(func_4(Struct_1(-12865), Struct_2(Struct_1(1), Struct_1(u_input.b.x), vec4<u32>(0u, u_input.c.x, arg_0, 1u)), vec2<f32>(-546.0, -535.0), 154.0).b, func_4(Struct_1(u_input.b.x), Struct_2(Struct_1(27025), Struct_1(69986), vec4<u32>(u_input.c.x, 1u, arg_0, 47908u)), vec2<f32>(arg_2, arg_2), 1475.0), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, arg_2), vec2<f32>(-199.0, arg_2))), -472.0), vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_2))))).b.a), Struct_1(countOneBits(-u_input.b.x)), reverseBits(vec4<u32>(~1u, ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11681u, 10u)], 10u)]), u_input.c.x, 10243u)));
            }
            default: {
                return var_0.x;
            }
        }
    }
    return !((false || true) & false);
}

fn func_1() -> vec3<f32> {
    switch (u_input.b.x) {
        case 44118: {
            var var_0 = ~_wgslsmith_mod_i32(min(_wgslsmith_dot_vec2_i32(u_input.b.wy, _wgslsmith_mod_vec2_i32(u_input.b.zz, vec2<i32>(-2147483648, 1))), 55893), firstLeadingBit(u_input.b.x));
        }
        case 3873: {
            for (var var_0 = 0; false; ) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                var var_1 = vec2<bool>(all(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), func_2(~4294967295u, true, _wgslsmith_f_op_f32(f32(-1.0) * -258.0), 4294967295u >> (global0[_wgslsmith_index_u32(30350u, 10u)] % 32u)), func_10(4294967295u, u_input.b.yx, func_4(Struct_1(u_input.b.x), Struct_2(Struct_1(u_input.b.x), Struct_1(27490), vec4<u32>(global0[_wgslsmith_index_u32(39719u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a)), vec2<f32>(-1130.0, -1000.0), -2204.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(971.0, 192.0))), !(u_input.b.x != u_input.b.x))), all(vec4<bool>(true || (false != false), true, any(!vec4<bool>(false, false, false, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 2147483647, 837), vec3<i32>(12937, -2147483648, u_input.b.x)) != _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yz))));
                var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-946.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(205.0)), _wgslsmith_f_op_f32(-697.0 * 1145.0)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-484.0, -407.0), _wgslsmith_f_op_f32(f32(-1.0) * -1267.0))))));
                var var_3 = u_input.b.x;
                var var_4 = -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~u_input.b.xyx, -u_input.b.zyy), u_input.b.x);
            }
        }
        case -2147483648: {
            let var_0 = func_7(func_7(Struct_1(-(~0))).b);
            let var_1 = func_7(func_7(func_4(Struct_1(_wgslsmith_add_i32(-25367, 1)), func_4(func_4(var_0.a, Struct_2(var_0.a, var_0.b, var_0.c), vec2<f32>(-635.0, 939.0), -867.0).a, Struct_2(var_0.a, var_0.a, var_0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(1595.0, 249.0) - vec2<f32>(1273.0, -630.0)), _wgslsmith_f_op_f32(-1030.0 + -252.0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-736.0, 2213.0), vec2<f32>(-540.0, 768.0), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1245.0, -824.0))), 1191.0).b).b);
            var var_2 = var_1.b;
        }
        default: {
            if (!func_8(Struct_2(func_7(Struct_1(u_input.b.x)).b, func_7(func_4(Struct_1(0), Struct_2(Struct_1(u_input.b.x), Struct_1(57440), vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(0u, 10u)], u_input.c.x, 1u)), vec2<f32>(2048.0, -973.0), -1048.0).b).a, countOneBits(vec4<u32>(21521u, u_input.c.x, 0u, u_input.c.x)) | func_4(Struct_1(40288), Struct_2(Struct_1(-11266), Struct_1(-1), vec4<u32>(12087u, 4294967295u, 8999u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51956u, 10u)], 10u)])), vec2<f32>(1000.0, 101.0), -824.0).c), Struct_2(Struct_1(1), func_4(Struct_1(1890), Struct_2(Struct_1(2147483647), Struct_1(0), vec4<u32>(35629u, global0[_wgslsmith_index_u32(41905u, 10u)], u_input.c.x, u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1045.0, 1391.0)), _wgslsmith_f_op_f32(floor(1510.0))).a, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec4<u32>(32979u, global0[_wgslsmith_index_u32(22812u, 10u)], 4294967295u, 4294967295u), vec4<u32>(14123u, 0u, 113933u, 31533u))))) {
                global0 = array<u32, 10>();
                var var_0 = func_4(func_7(Struct_1(-(~u_input.b.x))).a, Struct_2(Struct_1(firstTrailingBit(-1609 & -1)), Struct_1(u_input.b.x), vec4<u32>(1u & abs(u_input.c.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.c.x, 10u)], u_input.c.x), vec4<u32>(38352u, 61360u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], u_input.a)), 56422u), abs(~2353u), u_input.c.x << (0u % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2423.0 - 1039.0), _wgslsmith_f_op_f32(round(321.0))))), _wgslsmith_f_op_f32(514.0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(720.0 - 2597.0) + _wgslsmith_f_op_vec2_f32(func_6()).x)))).a.a;
                let var_1 = func_7(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(func_4(Struct_1(-60662), Struct_2(Struct_1(u_input.b.x), Struct_1(5138), vec4<u32>(2378u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20432u, 10u)], 10u)], u_input.a, u_input.c.x)), vec2<f32>(-1406.0, -876.0), 188.0).a.a, -35899), -u_input.b.xw))).a;
                let var_2 = var_1;
            }
            let var_0 = vec2<i32>(-1) * -(-u_input.b.xw | ~vec2<i32>(u_input.b.x, u_input.b.x));
            if (all(!(!(!(!vec4<bool>(false, true, false, true)))))) {
                var var_1 = vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(~var_0.x, -var_0.x), countOneBits(_wgslsmith_mod_i32(11229, max(14983, -2147483648)))));
                global0 = array<u32, 10>();
                global0 = array<u32, 10>();
                var var_2 = func_4(Struct_1(2147483647), Struct_2(Struct_1(func_5().a), func_4(Struct_1(u_input.b.x), Struct_2(func_5(), Struct_1(-8114), ~vec4<u32>(66167u, 81368u, 14088u, 4294967295u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-999.0, 1000.0)))), 1212.0).a, vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c.x, 10u)]), 10u)], ~28837u), u_input.c.x, 94718u, _wgslsmith_div_u32(4294967295u, func_7(Struct_1(2147483647)).c.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(332.0, 1268.0)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-2379.0, -1339.0)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(301.0, 721.0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-894.0, -554.0) * vec2<f32>(-1480.0, -1340.0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1236.0, 892.0), vec2<f32>(-881.0, -445.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1850.0, 1271.0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000.0, 1481.0), vec2<f32>(560.0, -1254.0))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(694.0, -1433.0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556.0 * 385.0)))));
                return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-541.0, -487.0, -143.0), vec3<f32>(1695.0, -413.0, 834.0), true))))));
            }
        }
    }
    global1 = !(!(!(!false)));
    let var_0 = all(!select(vec4<bool>(func_8(Struct_2(Struct_1(u_input.b.x), Struct_1(u_input.b.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], 10u)], 37086u, u_input.a, 1167u)), Struct_2(Struct_1(-1), Struct_1(-16340), vec4<u32>(global0[_wgslsmith_index_u32(1u, 10u)], u_input.c.x, global0[_wgslsmith_index_u32(26349u, 10u)], u_input.c.x))), false, !true, true & false), vec4<bool>(!true, !true, !false, func_10(4294967295u, vec2<i32>(-2147483648, 0), Struct_2(Struct_1(-2147483648), Struct_1(u_input.b.x), vec4<u32>(u_input.c.x, 41567u, 1u, 97186u)), vec2<f32>(942.0, 794.0))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), !vec4<bool>(true, true, true, false), !vec4<bool>(false, false, true, true))));
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1259.0), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-966.0, _wgslsmith_f_op_f32(max(-1540.0, 244.0))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-167.0)))), _wgslsmith_f_op_f32(f32(-1.0) * -1572.0))))));
}

fn func_12(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<u32, 10>();
    if (false != (~(~abs(u_input.c.x)) >= 5032u)) {
        let var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(trunc(arg_1.x)) >= 630.0), !false);
        var var_1 = !var_0;
        loop {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            var_1 = vec2<bool>(false, any(vec4<bool>(var_1.x, false, !func_8(Struct_2(Struct_1(-36709), Struct_1(27447), vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(20116u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], 13920u)), Struct_2(Struct_1(1), Struct_1(-35873), vec4<u32>(9721u, 1u, 65507u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]))), false)));
            global1 = func_3(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-597.0 + 299.0)))))), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a), ~u_input.c)), ~(~16626u)), abs(~(~(vec3<u32>(4294967295u, u_input.c.x, 1u) | vec3<u32>(global0[_wgslsmith_index_u32(10500u, 10u)], 9000u, 1u)))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483648, u_input.b.x), vec2<i32>(u_input.b.x, 30977)), ~u_input.b.yx));
        }
    }
    var var_0 = -vec3<i32>(0, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647, 45934), _wgslsmith_div_vec2_i32(vec2<i32>(-21991, 88478), vec2<i32>(1, u_input.b.x))), -(~vec2<i32>(-75405, u_input.b.x))), -2147483648);
    var_0 = u_input.b.wzz;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)));
    return Struct_1(~(-1));
}

fn func_13(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global1 = any(vec2<bool>(any(vec4<bool>(false, false, false, false)) & !(!false), func_10(74281u, vec2<i32>(-23410, -1), Struct_2(Struct_1(u_input.b.x), arg_2, vec4<u32>(68969u, 19403u, arg_1.x, 18816u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -403.0) - vec2<f32>(arg_0, 1080.0))) & (arg_2.a > ~(-45633))));
    return func_7(func_7(arg_2).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_13(-594.0, vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6249u, 10u)], 10u)], abs(min(u_input.c.x << (global0[_wgslsmith_index_u32(0u, 10u)] % 32u), global0[_wgslsmith_index_u32(4294967295u, 10u)] ^ u_input.c.x)), ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.c.x, 4176u, u_input.a), vec3<u32>(u_input.c.x, 49023u, 12641u)), min(vec3<u32>(global0[_wgslsmith_index_u32(23232u, 10u)], u_input.c.x, 1u), vec3<u32>(0u, u_input.a, u_input.c.x)))), func_12(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1247.0 - 935.0), _wgslsmith_f_op_f32(-2270.0), _wgslsmith_f_op_f32(floor(-264.0)), _wgslsmith_f_op_f32(min(344.0, -305.0))))), countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 12506u, u_input.c.x), vec3<u32>(~u_input.c.x, 4294967295u, _wgslsmith_mod_u32(0u, u_input.c.x)))));
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        for (var var_1 = -1; var_1 > -24935; ) {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            continue;
        }
        switch (0) {
            case 7784: {
                var var_1 = ~u_input.c.x;
                let var_2 = _wgslsmith_clamp_u32(u_input.c.x, 0u >> (_wgslsmith_div_u32(37366u, global0[_wgslsmith_index_u32(~(~1u), 10u)]) % 32u), ~1u);
                var var_3 = ~vec2<u32>(~4294967295u, ~func_4(Struct_1(-2147483648), Struct_2(var_0.b, Struct_1(var_0.a.a), vec4<u32>(39497u, var_2, var_2, 59214u)), vec2<f32>(-464.0, 291.0), -2393.0).c.x);
                var_3 = vec2<u32>(~_wgslsmith_dot_vec4_u32(reverseBits(var_0.c), ~var_0.c), 10080u);
            }
            case -1: {
                let var_1 = ~var_0.c.x;
                var_0 = Struct_2(Struct_1(-_wgslsmith_add_i32(-var_0.a.a, ~(-1))), Struct_1(19116), _wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(var_0.c.x, 10u)], global0[_wgslsmith_index_u32(var_1, 10u)], 1u), ~vec4<u32>(1u, var_0.c.x, 51235u, var_0.c.x), !false) << (vec4<u32>(var_0.c.x >> (18557u % 32u), 47992u, reverseBits(24953u), 142451u) % vec4<u32>(32u)), vec4<u32>(~95347u, 123952u, countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(var_0.c.x, 10u)], var_1, var_1), vec4<u32>(0u, global0[_wgslsmith_index_u32(var_0.c.x, 10u)], global0[_wgslsmith_index_u32(var_0.c.x, 10u)], 3375u)), 10u)]), ~0u ^ var_1)));
                global0 = array<u32, 10>();
                let var_2 = func_13(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-949.0, -1513.0, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-872.0))))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.c.yz, vec2<u32>(var_1, var_1)), abs(var_0.c.xx)), firstTrailingBit(u_input.a), _wgslsmith_sub_u32(71550u, u_input.a >> (var_0.c.x % 32u)), 22241u) | ~(~vec4<u32>(24889u, 1u, 5127u, global0[_wgslsmith_index_u32(0u, 10u)])), Struct_1(~(-var_0.a.a) & 15222), vec3<u32>(u_input.a, ~var_1, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(var_0.c), select(var_0.c, var_0.c, vec4<bool>(false, false, false, true)), var_0.c), ~var_0.c)));
            }
            case 0: {
                global0 = array<u32, 10>();
            }
            case -2147483648: {
                continue;
            }
            default: {
                continue;
            }
        }
        continue;
    }
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1748.0, -361.0)))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-639.0, -1000.0))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1662.0, -1738.0))))))));
    var var_2 = Struct_2(func_12(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-143.0, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1916.0, -2328.0, var_1.x, var_1.x))) - vec4<f32>(var_1.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), func_4(func_7(func_12(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1008.0, -875.0, var_1.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1908.0, -1656.0, 710.0, 737.0))))).b, Struct_2(Struct_1(var_0.b.a), func_4(func_7(var_0.b).a, Struct_2(Struct_1(-1), var_0.b, var_0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(569.0, 285.0)), _wgslsmith_f_op_f32(-var_1.x)).b, vec4<u32>(func_7(Struct_1(var_0.b.a)).c.x, global0[_wgslsmith_index_u32(26573u, 10u)], _wgslsmith_add_u32(var_0.c.x, var_0.c.x), _wgslsmith_dot_vec2_u32(var_0.c.zy, vec2<u32>(4294967295u, 91020u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6()) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x))), 627.0).b, firstTrailingBit(var_0.c));
    let var_3 = Struct_2(func_13(_wgslsmith_f_op_f32(exp2(-462.0)), ~var_0.c, var_0.a, abs(~vec3<u32>(90079u, 28486u, u_input.c.x))).b, Struct_1(abs(40503)), select(vec4<u32>(abs(~var_0.c.x), var_2.c.x, 0u, func_7(var_2.a).c.x), ~(abs(vec4<u32>(20941u, global0[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u, var_0.c.x)) | ~vec4<u32>(global0[_wgslsmith_index_u32(var_2.c.x, 10u)], 1u, 4294967295u, u_input.c.x)), select(vec4<bool>(true & true, -911.0 > var_1.x, true && false, true), vec4<bool>(!false, true, !true, any(vec3<bool>(false, true, false))), vec4<bool>(true, var_0.c.x <= 4294967295u, any(vec3<bool>(true, false, true)), true))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b), func_11((false && false) || !(!true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.x))))), ~(~firstTrailingBit(var_2.c.x)), var_0.c.zxw);
}

