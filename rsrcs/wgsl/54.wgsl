// {"0:0":[24,162,38,166,243,149,240,51,202,49,212,110]}
// Seed: 1571661890692462952

struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 31>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<u32> {
    switch (abs(i32(-1) * -1)) {
        default: {
        }
    }
    var var_0 = ~_wgslsmith_div_i32(-u_input.a, _wgslsmith_div_i32(u_input.b, ~max(arg_1.x, -2147483648)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000.0 - 539.0), -283.0, !arg_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1084.0) * 1248.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-170.0, -293.0)) - _wgslsmith_f_op_f32(select(1201.0, 1148.0, arg_2.b)))), _wgslsmith_f_op_f32(-1422.0 - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -1409.0), -212.0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1304.0, _wgslsmith_f_op_f32(-375.0)) - -1398.0)));
    let var_2 = _wgslsmith_f_op_f32(abs(-1402.0));
    var var_3 = vec2<u32>(1u, 1u);
    return vec3<u32>(0u & ~(~(~12804u)), max(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_2.a.x, arg_2.a.x), var_3.x), 41999u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~arg_0.e.a.x, ~arg_0.e.a.x), u_input.c)), _wgslsmith_mod_u32(_wgslsmith_add_u32(~(0u & u_input.c), _wgslsmith_sub_u32(~29469u, ~arg_2.a.x)), 42801u));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_mod_u32(1u, 1u);
    let var_1 = -169.0;
    let var_2 = !(!(!true));
    switch (_wgslsmith_div_i32(~((0 << (~u_input.c % 32u)) ^ _wgslsmith_div_i32(_wgslsmith_mult_i32(-21159, 0), u_input.a)), 36894)) {
        case -1: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                var var_3 = var_2;
                var var_4 = Struct_1(~_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_0, u_input.c, 10703u)), ~func_6(Struct_2(vec2<i32>(-2147483648, 46067), var_0, vec3<i32>(8746, u_input.a, 0), vec4<bool>(var_2, true, var_2, var_2), Struct_1(vec3<u32>(arg_0, var_0, 1393u), true)), vec4<i32>(u_input.b, -100, u_input.b, 18085), Struct_1(vec3<u32>(14752u, 37107u, 0u), var_2))), true);
            }
            var var_3 = Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-1) * -(~vec2<i32>(u_input.a, u_input.b)), select(-(vec2<i32>(u_input.a, u_input.b) | vec2<i32>(2147483647, u_input.b)), ~(vec2<i32>(17001, -45438) >> (vec2<u32>(0u, arg_0) % vec2<u32>(32u))), any(vec4<bool>(var_2, true, true, false)))), _wgslsmith_add_u32(36352u >> (_wgslsmith_mult_u32(~35158u, firstTrailingBit(3998u)) % 32u), _wgslsmith_add_u32(49912u, arg_0)), _wgslsmith_mult_vec3_i32(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -7237, -2147483648), vec3<i32>(14027, -1, u_input.a), countOneBits(vec3<i32>(u_input.b, 27314, u_input.b))), abs(vec3<i32>(-1, 8798, 65483))), vec3<i32>(firstTrailingBit(1), _wgslsmith_mod_i32(u_input.b, u_input.a), ~(-1)) | (select(vec3<i32>(34631, -2147483648, 2147483647), vec3<i32>(u_input.b, -50968, u_input.b), var_2) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 4376u), vec3<u32>(0u, var_0, 0u)) % vec3<u32>(32u)))), !vec4<bool>(false, !(-1307.0 != arg_2), any(vec2<bool>(var_2, var_2)), false), Struct_1(~vec3<u32>(select(var_0, 1u, var_2), var_0 | var_0, arg_0), !all(!vec4<bool>(var_2, true, false, false))));
        }
        case 1: {
            var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, var_1, arg_2), vec3<f32>(arg_2, var_1, 570.0), false))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2667.0, arg_2, 736.0) - vec3<f32>(-1694.0, 537.0, arg_2)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1080.0, 203.0, 876.0) * vec3<f32>(var_1, -836.0, -1006.0)))))));
            let var_4 = Struct_2(firstLeadingBit(~(-(vec2<i32>(u_input.b, 29476) << (vec2<u32>(8220u, 1u) % vec2<u32>(32u))))), _wgslsmith_dot_vec2_u32(~vec2<u32>(9816u << (var_0 % 32u), _wgslsmith_sub_u32(0u, u_input.c)), ~func_6(Struct_2(vec2<i32>(0, -13668), 11769u, vec3<i32>(u_input.a, u_input.b, -61290), vec4<bool>(false, true, true, false), Struct_1(vec3<u32>(arg_1.a, 44072u, 1u), var_2)), firstLeadingBit(vec4<i32>(u_input.b, 2228, u_input.b, -26210)), Struct_1(vec3<u32>(u_input.c, 1834u, 114037u), true)).zy), vec3<i32>(abs(min(u_input.a, -2147483648)), u_input.a >> (15488u % 32u), i32(-1) * -2147483648) >> ((~abs(vec3<u32>(arg_0, var_0, arg_0)) ^ vec3<u32>(4294967295u, min(11014u, 56584u), arg_1.a)) % vec3<u32>(32u)), select(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, var_2), true)), var_2, !all(vec4<bool>(var_2, var_2, var_2, false)), var_2), !vec4<bool>(var_2, true, all(vec3<bool>(var_2, true, false)), select(false, true, true)), !(u_input.b <= ~u_input.b)), Struct_1(~vec3<u32>(0u, ~u_input.c, var_0), !any(!vec4<bool>(var_2, var_2, var_2, var_2))));
            for (var var_5 = _wgslsmith_dot_vec4_i32(vec4<i32>(59321, var_4.c.x, 2147483647, i32(-1) * -70984), vec4<i32>(~u_input.a, 44327, -1, var_4.c.x)) | u_input.a; var_5 > -33995; var_5 += 1) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var_5 = u_input.a;
                let var_6 = var_4.d.ywy;
                let var_7 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 362.0, arg_2)), vec3<f32>(arg_2, 239.0, -596.0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, 317.0, 636.0)))))))), select(var_4.d.wxz, var_6, !vec3<bool>(var_4.d.x, any(var_6), var_2))));
            }
            switch (~(~(-71618))) {
                case 1: {
                    let var_5 = Struct_4(vec2<bool>(var_2, var_2), u_input.c, var_4);
                    var var_6 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(select(var_5.c.c, _wgslsmith_mod_vec3_i32(vec3<i32>(var_4.a.x, 42212, -13858), vec3<i32>(45161, 20416, -1)), all(var_4.d.wx)), vec3<i32>(-u_input.b, 2147483647, 0)), 7947, 23868), _wgslsmith_div_i32(2147483647, _wgslsmith_add_i32((-2147483648 & var_4.a.x) << (4294967295u % 32u), 1)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~2147483647, _wgslsmith_dot_vec2_i32(var_5.c.a ^ var_5.c.c.zx, min(var_4.c.yz, var_4.a))), -1 << (_wgslsmith_mod_u32(firstTrailingBit(24327u), var_0) % 32u), ~(-_wgslsmith_div_i32(u_input.b, var_4.a.x))), countOneBits(13677));
                    return vec3<i32>(~(i32(-1) * -(~var_5.c.a.x)), -5933, -u_input.b);
                }
                default: {
                    var var_5 = Struct_4(vec2<bool>(false, var_4.a.x > -(i32(-1) * -17716)), firstTrailingBit(~var_0 & (30197u >> (var_4.b % 32u))), Struct_2(_wgslsmith_add_vec2_i32(var_4.a, abs(var_4.c.zx >> (var_4.e.a.yx % vec2<u32>(32u)))), 40239u, vec3<i32>(u_input.b, _wgslsmith_sub_i32(~2147483647, -8546), u_input.a), select(!vec4<bool>(var_2, false, false, false), select(select(vec4<bool>(true, true, var_2, true), vec4<bool>(var_4.e.b, var_4.d.x, false, true), var_4.d.x), select(var_4.d, vec4<bool>(false, var_2, var_4.d.x, var_2), false), false & var_2), vec4<bool>(false, all(var_4.d), var_4.d.x, !var_4.d.x)), Struct_1(~vec3<u32>(4294967295u, var_4.b, 4266u), var_2)));
                    let var_6 = var_5.c;
                    return vec3<i32>(select(var_6.a.x, 4012, var_5.a.x), -countOneBits(~var_4.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_5.c.a.x, var_6.c.x, 25439, 2147483647) >> (~vec4<u32>(4294967295u, u_input.c, u_input.c, 0u) % vec4<u32>(32u)), reverseBits(~vec4<i32>(0, 0, var_4.a.x, 66201)))) << (vec3<u32>(44427u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.e.a.x, ~arg_0, _wgslsmith_div_u32(0u, 76895u), select(0u, var_5.c.b, true)), vec4<u32>(reverseBits(46589u), arg_0, var_0, 1u)), _wgslsmith_mod_u32(firstTrailingBit(~arg_1.a), 0u)) % vec3<u32>(32u));
                }
            }
        }
        default: {
            if (all(!vec4<bool>(any(select(vec4<bool>(false, true, var_2, true), vec4<bool>(true, true, true, false), var_2)), any(!vec2<bool>(false, true)), true, !false))) {
            }
            var var_3 = all(select(vec2<bool>(_wgslsmith_f_op_f32(trunc(-494.0)) < _wgslsmith_f_op_f32(arg_2 + -1000.0), var_2), select(vec2<bool>(true, 3055.0 == -292.0), vec2<bool>(!false, var_2 && true), vec2<bool>(false, true)), !(!select(vec2<bool>(var_2, true), vec2<bool>(true, false), true))));
            var_3 = -26573 == (u_input.a >> (_wgslsmith_div_u32(~(~22647u), select(_wgslsmith_sub_u32(arg_0, u_input.c), arg_1.a | 25937u, var_2)) % 32u));
        }
    }
    var var_3 = Struct_1(vec3<u32>(9748u, 4294967295u, _wgslsmith_add_u32(~1u, select(u_input.c >> (arg_1.a % 32u), var_0, var_2))), any(vec3<bool>(!(!var_2), select(-554.0 > -953.0, var_2, true), _wgslsmith_mod_i32(u_input.a, u_input.b) != 1)));
    return reverseBits(firstLeadingBit(vec3<i32>(-u_input.a << (~4294967295u % 32u), u_input.b << (_wgslsmith_clamp_u32(87800u, 28583u, 4294967295u) % 32u), u_input.b)));
}

fn func_7(arg_0: vec3<i32>) -> Struct_2 {
    if (all(select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), !vec3<bool>(true, true, false), vec3<bool>(true, true, any(vec4<bool>(false, false, true, false)))), !vec3<bool>(any(vec4<bool>(false, false, false, false)), any(vec2<bool>(false, false)), true || false), select(vec3<bool>(all(vec2<bool>(true, true)), false & true, any(vec3<bool>(true, false, true))), !(!vec3<bool>(true, true, false)), select(!true, all(vec2<bool>(false, true)), any(vec4<bool>(false, true, false, true))))))) {
        switch (firstTrailingBit(~select(_wgslsmith_add_i32(1, u_input.b), -33577, !true) ^ ((~41397 ^ reverseBits(arg_0.x)) | 10172))) {
            case 23237: {
                return Struct_2(firstLeadingBit(select(_wgslsmith_mod_vec2_i32(arg_0.yy | vec2<i32>(2147483647, arg_0.x), ~vec2<i32>(arg_0.x, u_input.a)), _wgslsmith_add_vec2_i32(select(arg_0.xx, arg_0.zy, vec2<bool>(false, false)), select(arg_0.yx, arg_0.yy, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), all(vec2<bool>(false, true))))), 47813u >> (u_input.c % 32u), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0, ~_wgslsmith_clamp_vec3_i32(arg_0, arg_0, arg_0), ~arg_0 ^ _wgslsmith_mod_vec3_i32(arg_0, arg_0)), ~(~(-vec3<i32>(arg_0.x, u_input.b, u_input.a)))), vec4<bool>(false, true, true, any(!vec4<bool>(false, false, true, true)) && all(vec3<bool>(true, true, false))), Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(81891u, u_input.c, 1u), vec3<u32>(u_input.c, 4294967295u, u_input.c) << (vec3<u32>(4294967295u, u_input.c, u_input.c) % vec3<u32>(32u))), !(!any(vec3<bool>(true, false, false)))));
            }
            case 2147483647: {
            }
            default: {
                let var_0 = false;
                var var_1 = Struct_4(select(vec2<bool>(var_0, all(!vec2<bool>(var_0, true))), select(select(!vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0), all(vec3<bool>(var_0, var_0, var_0))), vec2<bool>(-1 > -2147483648, -1185.0 != 216.0), false), vec2<bool>(!(!true), var_0)), _wgslsmith_add_u32(~0u, u_input.c), Struct_2(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(10054, arg_0.x), 10142, arg_0.x)), ~0u, vec3<i32>(i32(-1) * -2083, abs(62878), -1) | vec3<i32>(reverseBits(arg_0.x), u_input.a << (u_input.c % 32u), -1), !(!vec4<bool>(false, true, true, var_0)), Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 69967u), vec3<u32>(u_input.c, 67421u, 4294967295u)), vec3<u32>(20797u, u_input.c, 4294967295u)), false)));
            }
        }
        let var_0 = ~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(abs(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 20233u, u_input.c), vec4<u32>(u_input.c, 0u, 1u, 3706u)), _wgslsmith_mod_u32(1u, 21220u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.c)))), vec4<u32>(~0u, u_input.c, ~0u, 10860u | 4294967295u));
        if (any(!(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), any(vec2<bool>(false, false)))))) {
        }
    }
    let var_0 = Struct_4(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), !false), select(!vec2<bool>(false, true), vec2<bool>(true, true), !true), vec2<bool>(all(vec3<bool>(false, true, false)), 866.0 != 425.0)), select(vec2<bool>(false & false, !false), select(!vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), any(vec3<bool>(true, false, false))), vec2<bool>(false != false, 1456.0 > -318.0))), firstLeadingBit(u_input.c), Struct_2(abs(vec2<i32>(_wgslsmith_add_i32(u_input.a, -2147483648), -23925 << (235u % 32u))), abs(u_input.c), _wgslsmith_div_vec3_i32(abs(~arg_0), arg_0), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), !vec4<bool>(true, false, false, false), !true), vec4<bool>(true, true, !true, !false), select(!vec4<bool>(false, false, true, true), !vec4<bool>(true, false, false, false), all(vec4<bool>(false, true, true, false)))), Struct_1(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(8615u, u_input.c, 0u), vec3<u32>(u_input.c, 9662u, 72289u), vec3<bool>(false, false, false)), min(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, 4294967295u)), ~vec3<u32>(u_input.c, 1u, 60141u)), true)));
    let var_1 = false;
    for (var var_2 = -1; var_2 != -35369; var_2 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    let var_2 = -(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483648, arg_0.x, -3639, -1)), firstLeadingBit(vec4<i32>(var_0.c.a.x, u_input.a, 20587, 2147483647)))) != u_input.b;
    return var_0.c;
}

fn func_8(arg_0: Struct_2) -> i32 {
    if (!false) {
        if (true) {
            var var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(-875.0)), -332.0, _wgslsmith_f_op_f32(-505.0));
        }
        var var_0 = Struct_5(-17668);
        var var_1 = 0u;
    }
    let var_0 = arg_0.d;
    switch (_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, arg_0.c.x), ~vec2<i32>(1, arg_0.a.x) >> (_wgslsmith_mult_vec2_u32(arg_0.e.a.xy, arg_0.e.a.yx) % vec2<u32>(32u))), _wgslsmith_mult_i32(0, min(u_input.b, _wgslsmith_sub_i32(26616, 2147483647)))) | -27100) {
        case 0: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            }
            let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1.0) * -597.0)));
        }
        case -2147483648: {
            let var_1 = arg_0.b;
            if (all(func_7(-(~vec3<i32>(0, u_input.a, 29517)) | (_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 256, 47954), arg_0.c) ^ vec3<i32>(-37335, arg_0.a.x, arg_0.a.x))).d.yy)) {
                return -34262;
            }
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                break;
            }
            let var_2 = _wgslsmith_f_op_f32(f32(-1.0) * -1000.0);
        }
        case 2147483647: {
            for (var var_1 = -u_input.b; all(var_0); var_1 -= 1) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            }
        }
        case 1303: {
            var var_1 = func_7(vec3<i32>(15654 ^ arg_0.a.x, u_input.b, -1)).d.xw;
            switch (_wgslsmith_div_i32(u_input.b, ~(-1)) ^ func_7(~(-arg_0.c)).c.x) {
                default: {
                    let var_2 = arg_0.e.a.yz;
                }
            }
            var_1 = vec2<bool>(var_1.x, 6893u > arg_0.e.a.x);
            var_1 = vec2<bool>(arg_0.e.b, false);
            var var_2 = Struct_5(u_input.b);
        }
        default: {
            var var_1 = _wgslsmith_add_u32(57755u, 4294967295u);
            let var_2 = ~(~19392u);
            var_1 = ~max(firstLeadingBit(20791u), var_2);
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                var_1 = ~select(_wgslsmith_div_u32(arg_0.e.a.x, 64985u) | ~2736u, ~1u, false) << (var_2 % 32u);
                let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), _wgslsmith_f_op_f32(select(1332.0, 643.0, all(func_7(_wgslsmith_mult_vec3_i32(arg_0.c, vec3<i32>(arg_0.c.x, arg_0.c.x, u_input.b))).d.zz)))));
            }
            if (false) {
                var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-466.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-742.0)) * _wgslsmith_f_op_f32(trunc(490.0))), _wgslsmith_f_op_f32(922.0 - _wgslsmith_f_op_f32(-1214.0)))));
                var var_4 = !all(arg_0.d.wx);
                var_1 = arg_0.e.a.x;
            }
        }
    }
    var var_1 = Struct_3(19362u);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-983.0, 1112.0, -1000.0))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-915.0 - 1230.0), _wgslsmith_f_op_f32(-1716.0 * -237.0)), _wgslsmith_f_op_f32(sign(1795.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1098.0)) + _wgslsmith_f_op_f32(-1818.0))))));
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> i32 {
    switch (abs(max(u_input.b, i32(-1) * -(i32(-1) * -27095)))) {
        case 0: {
            switch (0 | _wgslsmith_add_i32(func_8(func_7(func_5(arg_0.a.x, Struct_3(arg_0.a.x), arg_1))), u_input.a << (abs(firstTrailingBit(82180u)) % 32u))) {
                case -1: {
                    let var_0 = arg_2;
                    let var_1 = _wgslsmith_f_op_f32(arg_2.x + arg_2.x);
                    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(471.0, 848.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))) - var_1) - _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -150.0))))));
                }
                default: {
                }
            }
            if (false) {
            }
            let var_0 = func_7(_wgslsmith_mult_vec3_i32(~select(-vec3<i32>(u_input.a, -2147483648, -8132), reverseBits(vec3<i32>(0, 21736, u_input.a)), select(vec3<bool>(true, false, arg_0.b), vec3<bool>(true, true, true), arg_0.b)), vec3<i32>(u_input.a, u_input.a, _wgslsmith_sub_i32(-7388, u_input.b)))).e;
            var var_1 = Struct_2(~_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b, u_input.b), abs(~vec2<i32>(u_input.a, u_input.b))), _wgslsmith_mod_u32(abs(func_6(Struct_2(vec2<i32>(-9379, 0), arg_0.a.x, vec3<i32>(u_input.a, -11856, 1), vec4<bool>(true, false, arg_0.b, false), var_0), ~vec4<i32>(u_input.b, u_input.a, u_input.b, -26551), func_7(vec3<i32>(u_input.a, u_input.b, 31994)).e).x), var_0.a.x), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b ^ u_input.a, i32(-1) * -2147483648, 18880), vec3<i32>(-4558, u_input.b, max(5310, 10227))), vec4<bool>(arg_0.b, 414.0 == _wgslsmith_f_op_f32(f32(-1.0) * -1927.0), arg_0.b, !(all(vec2<bool>(true, true)) & !arg_0.b)), arg_0);
        }
        case 20350: {
        }
        case -35576: {
            let var_0 = !func_7(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(33575), func_7(vec3<i32>(u_input.b, 0, u_input.a)).c.x, u_input.b), vec3<i32>(39399 << (u_input.c % 32u), firstLeadingBit(-38277), _wgslsmith_mult_i32(u_input.b, -13788)))).d;
            var var_1 = ~1u;
        }
        default: {
            let var_0 = !(!any(vec4<bool>(true, all(vec2<bool>(arg_0.b, true)), !true, arg_0.a.x >= arg_0.a.x)));
            for (var var_1 = -13868; ; var_1 += 1) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var_1 = -func_5(u_input.c ^ ~4294967295u, Struct_3(_wgslsmith_add_u32(u_input.c, 23357u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, -161.0)))).x | u_input.b;
                var_1 = 2147483647;
                var var_2 = 21272u;
                break;
            }
            if (false) {
                let var_1 = Struct_4(!func_7(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -55247, 1) ^ vec3<i32>(-27601, -12046, -2147483648), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(u_input.b, -2147483648, 2147483647)))).d.zy, ~_wgslsmith_sub_u32(~(~u_input.c), ~(~u_input.c)), Struct_2(min(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), countOneBits(abs(vec2<i32>(0, u_input.b)))), _wgslsmith_div_u32(min(u_input.c, 0u << (1u % 32u)), arg_0.a.x), firstTrailingBit(vec3<i32>(~(-37579), ~(-1), u_input.b)), func_7(vec3<i32>(-58793, -6000, u_input.b)).d, func_7(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-4380, -83603, u_input.a), vec3<i32>(26295, u_input.a, 59399)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647, u_input.b, 33289), vec3<i32>(u_input.a, u_input.a, 11482)))).e));
                var var_2 = -821.0;
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        let var_0 = u_input.b;
        let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) - _wgslsmith_f_op_vec2_f32(sign(arg_2))))));
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        }
    }
    var var_0 = max(vec2<i32>(-u_input.b, -2533), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(u_input.a, 0), u_input.a), -(u_input.a << (53883u % 32u))) >> ((~(~vec2<u32>(u_input.c, u_input.c)) >> (_wgslsmith_clamp_vec2_u32(arg_0.a.yx, arg_0.a.zy, arg_0.a.yy) % vec2<u32>(32u))) % vec2<u32>(32u)));
    loop {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_1 = Struct_3(arg_0.a.x << (~(39666u ^ (16213u | 4294967295u)) % 32u));
        var_0 = vec2<i32>(var_0.x, -_wgslsmith_mult_i32(0, max(~u_input.b, var_0.x)));
    }
    for (var var_1: i32; var_1 == -61885; var_1 += 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(413.0, 276.0, arg_1)))))));
        let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -209.0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - arg_1)) * arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1320.0, arg_1)), _wgslsmith_f_op_f32(-arg_2.x)), -334.0)), 1284.0);
        switch (-var_0.x) {
            case -57731: {
                let var_4 = max(~u_input.c, u_input.c);
            }
            case -7068: {
                var var_4 = abs(u_input.c & 0u);
            }
            default: {
                var var_4 = false;
            }
        }
        var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-490.0, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), -700.0));
        if (false) {
            var var_4 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(73259, i32(-1) * -1), -(vec2<i32>(-15515, var_0.x) << (vec2<u32>(25970u, u_input.c) % vec2<u32>(32u))), vec2<bool>(true, false || arg_0.b)), -vec2<i32>(-var_0.x, firstTrailingBit(-36224))), ~(min(select(vec2<i32>(29198, u_input.a), vec2<i32>(var_0.x, 6303), vec2<bool>(true, arg_0.b)), countOneBits(vec2<i32>(-2319, 1))) << (~arg_0.a.zz % vec2<u32>(32u))));
            continue;
        }
    }
    return -34470;
}

fn func_3(arg_0: f32) -> f32 {
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        for (var var_0 = -1; !any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), !vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(u_input.b <= u_input.b, !false), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))); ) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            let var_1 = countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a, u_input.b), ~(~vec2<i32>(43532, u_input.a))), u_input.a, u_input.a));
            var_0 = _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(firstLeadingBit(-(-1 | u_input.a)), ~func_4(Struct_1(vec3<u32>(30600u, u_input.c, u_input.c), true), arg_0, vec2<f32>(1118.0, arg_0))));
        }
        let var_0 = _wgslsmith_dot_vec3_i32(~(~vec3<i32>(-3009, ~u_input.b, _wgslsmith_add_i32(u_input.a, -1))), ~vec3<i32>(_wgslsmith_sub_i32(~u_input.b, _wgslsmith_mod_i32(-23722, -15901)), 1, func_7(vec3<i32>(1187, u_input.b, -2147483648)).a.x));
    }
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        let var_0 = true;
        continue;
    }
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        let var_0 = 36836u;
        let var_1 = Struct_5(_wgslsmith_add_i32(u_input.b, _wgslsmith_clamp_i32(1, -2147483647, u_input.b)));
    }
    let var_0 = Struct_3(42479u);
    loop {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        if (!func_7(select(-vec3<i32>(u_input.b, u_input.b, u_input.a), ~vec3<i32>(u_input.b, -2147483648, 1), false) | _wgslsmith_mult_vec3_i32(func_5(var_0.a, var_0, arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(u_input.b, u_input.a, 19804)))).e.b) {
            return arg_0;
        }
        var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 202.0)) + _wgslsmith_div_vec2_f32(vec2<f32>(-411.0, -898.0), vec2<f32>(-559.0, -1114.0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 837.0) * vec2<f32>(-325.0, arg_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1118.0, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, arg_0))))), !false));
        var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(606.0, var_1.x, -1318.0), vec3<f32>(var_1.x, 830.0, -1000.0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000.0, arg_0, -1597.0) * vec3<f32>(arg_0, var_1.x, var_1.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 957.0, arg_0) * vec3<f32>(arg_0, 287.0, -974.0))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(262.0, var_1.x, 526.0) - vec3<f32>(arg_0, arg_0, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))))))));
        let var_3 = vec3<bool>(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, arg_0))), arg_0, all(vec3<bool>(true, false, true)))) <= 714.0, false);
    }
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1301.0 - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -197.0))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1.0) * -1682.0)));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263.0, _wgslsmith_f_op_f32(trunc(-1093.0)), _wgslsmith_f_op_f32(trunc(-472.0))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2583.0, -762.0, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1032.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(571.0, 731.0)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(-1653.0))))));
    loop {
        if (LOOP_COUNTERS[17u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
    }
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -1888.0, 393.0))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -558.0, var_0.x))), select(!true, any(vec2<bool>(false, false)), !false)))));
    for (var var_1 = -6781; var_1 != 1; var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(552.0)))) - var_0.x))) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1431.0, 516.0)), vec3<f32>(var_0.x, var_0.x, 942.0), func_7(vec3<i32>(48207, u_input.a, 18667)).d.wxz)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-109.0, var_0.x, 1000.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1514.0, -459.0, 1007.0))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1202.0))), -484.0, _wgslsmith_f_op_f32(-651.0 - _wgslsmith_div_f32(var_0.x, -1007.0)))));
    }
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
    }
    return !any(func_7(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647, 17054, -1), vec3<i32>(1, 15647, 14044)), vec3<i32>(u_input.b, -2147483648, u_input.b))).d.xx);
}

fn func_1(arg_0: bool) -> Struct_5 {
    if (!arg_0) {
    }
    loop {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        if ((all(!vec2<bool>(false, arg_0)) || false) && arg_0) {
            var var_0 = u_input.b;
            break;
        }
        if (func_2()) {
        }
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            continue;
        }
        let var_0 = vec4<i32>(abs(1), u_input.a, u_input.a, 2147483647);
        let var_1 = !vec2<bool>(arg_0, arg_0);
    }
    for (var var_0 = 44154; var_0 >= -14013; var_0 += 1) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        let var_1 = ~_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.c, 37029u)) >> (max(~vec3<u32>(22884u, u_input.c, 1u), ~vec3<u32>(4294967295u, u_input.c, 4294967295u)) % vec3<u32>(32u)), ~(~(~vec3<u32>(u_input.c, u_input.c, u_input.c))));
    }
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887.0 + 1709.0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1782.0 - _wgslsmith_f_op_f32(-452.0)), -1419.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -364.0)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000.0, 1275.0, arg_0))))), _wgslsmith_f_op_f32(-328.0 - _wgslsmith_div_f32(409.0, 1103.0))));
        let var_1 = Struct_3(u_input.c);
        var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(var_0.x)), _wgslsmith_f_op_f32(-1000.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -406.0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 535.0, -372.0, 1000.0))))) - vec4<f32>(1000.0, _wgslsmith_f_op_f32(-352.0), 446.0, 1000.0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(542.0, var_0.x, 1000.0, 1404.0))), vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), 312.0, _wgslsmith_f_op_f32(-var_0.x), var_0.x), !(!arg_0)))));
        for (; ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, 4294967295u, 0u, u_input.c) << (~vec4<u32>(0u, var_1.a, var_1.a, 34712u) % vec4<u32>(32u)), ~(~vec4<u32>(38437u, var_1.a, u_input.c, u_input.c))) > _wgslsmith_dot_vec2_u32(vec2<u32>(min(abs(u_input.c), 35837u), 4294967295u), abs(~vec2<u32>(var_1.a, 4294967295u)) >> (~(~vec2<u32>(86958u, 83626u)) % vec2<u32>(32u))); ) {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            continue;
        }
        for (var var_2 = -1; false; var_2 -= 1) {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-65479 | func_4(Struct_1(vec3<u32>(29100u, 1u, 0u), false), 963.0, var_0.yy), 0), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-1, -1) & vec2<i32>(u_input.b, u_input.a), vec2<i32>(2147483647, u_input.b)))), 2147483647);
            var_2 = u_input.b & u_input.a;
            let var_3 = Struct_1(~(~abs(vec3<u32>(var_1.a, 0u, 4294967295u))) << (~func_7(select(vec3<i32>(1, u_input.b, u_input.a), vec3<i32>(u_input.a, 2147483647, -1), vec3<bool>(arg_0, arg_0, arg_0))).e.a % vec3<u32>(32u)), any(select(vec3<bool>(func_2(), arg_0, !false), vec3<bool>(!arg_0, arg_0, false != false), select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(arg_0, arg_0, false)))));
            let var_4 = func_7(firstTrailingBit(select(_wgslsmith_add_vec3_i32(vec3<i32>(-4342, 0, u_input.a), vec3<i32>(u_input.b, 0, -1)) >> (select(var_3.a, vec3<u32>(var_3.a.x, var_3.a.x, var_1.a), arg_0) % vec3<u32>(32u)), vec3<i32>(countOneBits(u_input.a), _wgslsmith_div_i32(-2147483648, u_input.b), -30523), select(!vec3<bool>(var_3.b, arg_0, false), vec3<bool>(var_3.b, var_3.b, arg_0), true)))).d.wx;
            let var_5 = func_7(vec3<i32>(~(~2954), countOneBits(1), u_input.b)).e;
        }
    }
    let var_0 = ~_wgslsmith_mod_u32(u_input.c, u_input.c);
    return Struct_5(-u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(3769.0 * 186.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(955.0 * -1000.0) + _wgslsmith_f_op_f32(abs(114.0)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1492.0, 551.0), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-540.0, 425.0)))), vec2<f32>(_wgslsmith_f_op_f32(1587.0 * 2044.0), _wgslsmith_f_op_f32(949.0 * 506.0)), !any(vec4<bool>(true, true, true, false))))));
    for (; ; ) {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        let var_1 = any(vec4<bool>(false, ~_wgslsmith_add_u32(94605u, u_input.c) < ~0u, all(select(!vec4<bool>(false, false, true, false), !vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), true));
        loop {
            if (LOOP_COUNTERS[27u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            let var_2 = max(vec3<i32>(-2147483648, -2521, u_input.a), firstLeadingBit(countOneBits(vec3<i32>(-1, 0, -1) | (vec3<i32>(2147483647, u_input.a, 2147483647) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))))));
        }
        var var_2 = func_1(var_1);
        var var_3 = _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))));
        break;
    }
    if (all(func_7(-max(-vec3<i32>(-10391, u_input.b, u_input.a), ~vec3<i32>(u_input.a, u_input.b, u_input.a))).d)) {
        let var_1 = 718.0;
    }
    for (var var_1 = -2147483648; var_1 > -70762; var_1 -= 1) {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
        continue;
    }
    for (var var_1 = -2147483648; var_1 > -26347; var_1 = ~(-2147483648)) {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
        if (_wgslsmith_f_op_f32(-968.0) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1437.0) + -1000.0)) {
            break;
        }
        break;
    }
    let var_1 = !(!(false && func_7(reverseBits(vec3<i32>(u_input.b, 30628, 2147483647))).e.b));
    if (any(!select(!select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(false, true)), vec2<bool>(true && var_1, func_2()), all(vec2<bool>(var_1, var_1))))) {
        var var_2 = 228.0;
        var_2 = -659.0;
    }
    let var_2 = -1;
    loop {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
    }
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec2<u32>(u_input.c | 32229u, _wgslsmith_div_u32(u_input.c, 0u)), vec2<u32>(u_input.c, u_input.c), true));
}

