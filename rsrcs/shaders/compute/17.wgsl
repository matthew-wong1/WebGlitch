// {"0:0":[153,33,17,248,184,217,202,40]}
// Seed: 5998032174647225301

struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 4>;

var<private> global2: vec3<i32>;

var<private> LOOP_COUNTERS: array<u32, 23>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global2 = vec3<i32>(1, 37092, -5497);
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        }
    }
    var var_0 = -1641.0;
    global2 = _wgslsmith_mod_vec3_i32(vec3<i32>(min(~arg_1.x, 2147483647), arg_2.x, -(~arg_2.x)), ~(~(~(~arg_2.zww))));
    for (var var_1 = -2147483648; var_1 != 26047; var_1 -= 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var var_2 = -1;
        for (; ; ) {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        }
        var var_3 = _wgslsmith_dot_vec2_i32(countOneBits(arg_1), vec2<i32>(arg_1.x, -6247));
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var_1 = 21708;
            break;
        }
        for (var var_4 = 1; var_4 < -2147483648; var_2 = ~(~1)) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            continue;
        }
    }
    global1 = array<Struct_1, 4>();
    return global1[_wgslsmith_index_u32(1u, 4u)];
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> bool {
    let var_0 = 2147483647;
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
    }
    var var_1 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~arg_0.b.b, _wgslsmith_mod_vec4_i32(arg_0.b.b, arg_0.b.b)), vec4<i32>(_wgslsmith_add_i32(arg_0.b.b.x, -1220), _wgslsmith_mult_i32(-1, var_0), var_0, -2147483648)), -16785, ~(-13414 | arg_3.x) >> (max(~0u, ~1u) % 32u), select(~u_input.a, -arg_0.b.b.x, arg_0.c.x) ^ ~arg_3.x);
    var var_2 = arg_0.b;
    if (true) {
        switch (_wgslsmith_sub_i32(abs(~(var_0 >> (3174u % 32u))), _wgslsmith_mult_i32(-1, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.b.x, 3832, 48735, u_input.a), vec4<i32>(u_input.a, 15851, -1, 2147483647))) & _wgslsmith_add_i32(countOneBits(-2147483648), arg_3.x)) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 21233, _wgslsmith_add_i32(arg_0.b.b.x, 1)), vec3<i32>(arg_3.x, 0, firstTrailingBit(firstTrailingBit(var_1.x))))) {
            default: {
                var var_3 = var_2.a;
                let var_4 = -vec2<i32>(var_0, arg_0.b.b.x) << (var_3.a.xy % vec2<u32>(32u));
                global2 = countOneBits(countOneBits(firstTrailingBit(var_1.wwx)));
                global1 = array<Struct_1, 4>();
            }
        }
        let var_3 = var_2.a;
        var var_4 = arg_0.b;
    }
    return arg_0.c.x & true;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<u32>) -> vec2<u32> {
    global1 = array<Struct_1, 4>();
    switch (u_input.a) {
        case -2147483648: {
            global2 = -(vec3<i32>(-1) * -(~vec3<i32>(arg_0.x, -2147483648, arg_0.x)));
            var var_0 = Struct_4(vec4<bool>(false, 101758u < _wgslsmith_add_u32(arg_1.x, ~36076u), select(!false || func_6(Struct_3(vec3<u32>(arg_1.x, arg_1.x, u_input.b), Struct_2(Struct_1(vec3<u32>(4294967295u, 19518u, arg_1.x)), vec4<i32>(64083, arg_0.x, -17000, u_input.a)), vec4<bool>(false, false, false, true)), arg_1.x, 132.0, vec3<i32>(global2.x, -1, u_input.a)), !func_6(Struct_3(vec3<u32>(20920u, u_input.b, 12104u), Struct_2(global1[_wgslsmith_index_u32(71438u, 4u)], vec4<i32>(29558, -53394, 1, -8092)), vec4<bool>(false, true, true, false)), arg_1.x, -396.0, vec3<i32>(0, -54398, arg_0.x)), all(vec4<bool>(false, true, false, true))), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, true), !true))), select(!(!vec3<bool>(true, true, false)), vec3<bool>(any(!vec3<bool>(true, true, false)), any(!vec3<bool>(false, true, false)), false), false), !(!(!(!vec3<bool>(false, true, true)))), vec4<i32>(_wgslsmith_clamp_i32(arg_0.x, abs(u_input.a), _wgslsmith_clamp_i32(arg_0.x, u_input.a, global2.x)) & max(reverseBits(global2.x), _wgslsmith_add_i32(-40707, -3386)), -arg_0.x, select(_wgslsmith_div_i32(arg_0.x, ~29181), ~0, !(1u >= arg_1.x)), firstLeadingBit(arg_0.x & global2.x) & min(global2.x, abs(-1))), i32(-1) * -31406);
            var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1431.0, 671.0, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1960.0 + -639.0)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1512.0, -1609.0, -1354.0, -1872.0))))))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1075.0 * 136.0) + _wgslsmith_div_f32(646.0, 219.0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-544.0 - 1021.0))), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-133.0, -440.0))), -1000.0)), 1120.0, _wgslsmith_f_op_f32(sign(-233.0))));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_0 = _wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(min(global2.xy, global2.xy), vec2<i32>(_wgslsmith_sub_i32(-1, 160), 2147483647)), vec2<i32>(~(~(i32(-1) * -2147483648)), min(u_input.a, arg_0.x)), min(_wgslsmith_sub_vec2_i32(vec2<i32>(19983, 0) & vec2<i32>(-9897, u_input.a), firstLeadingBit(select(vec2<i32>(2147483647, global2.x), global2.xy, vec2<bool>(false, true)))), global2.yz));
                break;
            }
            global1 = array<Struct_1, 4>();
        }
    }
    let var_0 = Struct_4(vec4<bool>(true, arg_1.x > u_input.b, !any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), any(vec2<bool>(true && false, true))), vec3<bool>(func_6(Struct_3(vec3<u32>(33842u, u_input.b, 0u), Struct_2(global1[_wgslsmith_index_u32(0u, 4u)], vec4<i32>(arg_0.x, arg_0.x, 0, global2.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), ~0u, -297.0, -vec3<i32>(2147483647, u_input.a, global2.x)), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), !(!select(true, true, false))), vec3<bool>(!(true & false), any(select(!vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), arg_0.x >= 33755)), func_6(Struct_3(~vec3<u32>(0u, u_input.b, u_input.b), Struct_2(Struct_1(vec3<u32>(4294967295u, arg_1.x, 1u)), vec4<i32>(arg_0.x, 0, global2.x, u_input.a)), !vec4<bool>(true, true, false, false)), abs(~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0 - -1162.0)), vec3<i32>(firstLeadingBit(-2147483648), _wgslsmith_clamp_i32(20527, 1, u_input.a), global2.x))), vec4<i32>(0, arg_0.x, _wgslsmith_add_i32(1, _wgslsmith_sub_i32(global2.x, _wgslsmith_add_i32(global2.x, arg_0.x))), _wgslsmith_mult_i32((-30862 >> (0u % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_1.x, arg_1.x), vec4<u32>(4294967295u, arg_1.x, u_input.b, 19778u)) % 32u), _wgslsmith_clamp_i32(~global2.x, -arg_0.x, _wgslsmith_div_i32(global2.x, 7626)))), _wgslsmith_add_i32(~(-47530), 0));
    var var_1 = ~(~(~4294967295u));
    var_1 = ~(~min(~func_2(true, arg_0, var_0.d, var_0.d.wyz).a.x, 0u));
    return ~vec2<u32>(77881u, arg_1.x);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> vec3<i32> {
    for (var var_0 = 13362; var_0 != 0; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        global0 = ~(-27602);
        let var_1 = ~(~_wgslsmith_sub_vec2_u32(~select(vec2<u32>(u_input.b, 73594u), vec2<u32>(1u, 1514u), vec2<bool>(false, arg_0)), min(func_5(global2.yx, vec2<u32>(4294967295u, u_input.b)), vec2<u32>(u_input.b, 0u))));
        break;
    }
    return vec3<i32>(firstLeadingBit(19919), global2.x, _wgslsmith_mod_i32(global2.x, -57424));
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> i32 {
    global2 = func_4(arg_2.a.x, vec2<f32>(1673.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -670.0))), false);
    for (var var_0: i32; ; var_0 -= 1) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        global1 = array<Struct_1, 4>();
        var_0 = -20012;
    }
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    switch ((-1 >> (abs(~(~465u)) % 32u)) | arg_2.e) {
        case -2147483648: {
            global2 = vec3<i32>(u_input.a, ~0 ^ ~abs(arg_2.e), 37602);
            global2 = -_wgslsmith_mult_vec3_i32(-arg_2.d.wwx, arg_2.d.yzx);
            let var_0 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(~abs(arg_0.a), arg_0.a)), abs(-(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, global2.x, -1, -2147483648), vec4<i32>(1, -15925, -1, arg_2.d.x)) << (vec4<u32>(0u, 31480u, u_input.b, arg_0.a.x) % vec4<u32>(32u)))));
            if (all(vec4<bool>(!(_wgslsmith_div_i32(39759, 1) <= global2.x), arg_2.c.x & (any(vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.b.x, true)) & func_6(Struct_3(vec3<u32>(u_input.b, arg_0.a.x, 12731u), Struct_2(var_0.a, vec4<i32>(33315, -2147483648, var_0.b.x, 24080)), arg_2.a), var_0.a.a.x, -784.0, var_0.b.zxz)), !((false != arg_2.a.x) && func_6(Struct_3(arg_0.a, var_0, vec4<bool>(arg_2.c.x, arg_2.c.x, true, arg_2.c.x)), arg_3, arg_1, vec3<i32>(global2.x, -14369, u_input.a))), !arg_2.b.x))) {
                return global2.x;
            }
            for (var var_1 = -1; func_6(Struct_3(_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(0u, 0u, arg_3)), func_2(u_input.a != 5452, vec2<i32>(1, arg_2.d.x) << (arg_0.a.xx % vec2<u32>(32u)), var_0.b, vec3<i32>(0, -1, -17987)).a), var_0, arg_2.a), min(11273u, 19491u), -952.0, vec3<i32>(41914, ~(firstTrailingBit(var_0.b.x) ^ (9212 | arg_2.e)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-11709, 67296), min(vec2<i32>(40787, arg_2.e), vec2<i32>(u_input.a, global2.x))))); var_1 += 1) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                continue;
            }
        }
        case 61940: {
            var var_0 = ~arg_3;
        }
        default: {
        }
    }
    return arg_2.e;
}

fn func_3() -> vec4<i32> {
    for (; ; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_0 = func_7(func_2(false, ~global2.zy, abs(~vec4<i32>(global2.x, 27784, 0, 48932)), func_4(!false, vec2<f32>(1304.0, -1000.0), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-252.0 + 1699.0), -434.0)), Struct_4(select(!vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true))), vec3<bool>(true, !false, false), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 67048, global2.x, 1), vec4<i32>(-9143, -4719, global2.x, u_input.a)), ~2147483647), func_5(global2.zx, ~(~vec2<u32>(u_input.b, 0u))).x) | _wgslsmith_dot_vec3_i32(-min(reverseBits(vec3<i32>(1, 1, global2.x)), vec3<i32>(-2147483648, u_input.a, u_input.a)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-15053, global2.x, u_input.a), vec3<i32>(-23531, 41607, global2.x)) | vec3<i32>(-38557 >> (u_input.b % 32u), _wgslsmith_add_i32(global2.x, -1), 12142));
        var var_1 = var_0;
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            global2 = max(-vec3<i32>(abs(~2147483647), -(0 >> (0u % 32u)), max(u_input.a, var_0) & u_input.a), ~min(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -52249, 0), vec3<i32>(-29072, 11184, var_0)), vec3<i32>(global2.x, var_0, u_input.a) >> (vec3<u32>(20299u, u_input.b, 4294967295u) % vec3<u32>(32u))), max(~vec3<i32>(-1, 4656, global2.x), vec3<i32>(global2.x, u_input.a, -1) << (vec3<u32>(5630u, u_input.b, 1u) % vec3<u32>(32u)))));
            var var_2 = Struct_3(countOneBits(~vec3<u32>(u_input.b, max(1u, 21783u), _wgslsmith_mult_u32(u_input.b, u_input.b))), Struct_2(global1[_wgslsmith_index_u32(u_input.b ^ 1u, 4u)], ~(countOneBits(vec4<i32>(-41709, 2147483647, u_input.a, u_input.a)) | countOneBits(vec4<i32>(-1152, global2.x, -147441, global2.x)))), select(!vec4<bool>(false, !false, all(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, false))), !select(!vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), any(vec4<bool>(false, true, false, true))), true));
            var_2 = Struct_3(var_2.b.a.a, var_2.b, select(select(var_2.c, var_2.c, var_2.c.x), var_2.c, select(!select(vec4<bool>(true, false, var_2.c.x, true), var_2.c, var_2.c), !vec4<bool>(var_2.c.x, var_2.c.x, true, true), any(vec4<bool>(false, false, var_2.c.x, true)))));
            var var_3 = false;
            var var_4 = Struct_1(vec3<u32>(abs(3483u), min(_wgslsmith_clamp_u32(u_input.b, 95952u, 8094u), ~4294967295u), abs(~4294967295u)) & ~_wgslsmith_add_vec3_u32(reverseBits(var_2.b.a.a), abs(var_2.a)));
        }
        var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2505.0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1605.0) + _wgslsmith_f_op_f32(610.0 - -1172.0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-584.0 - 439.0), -1309.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(824.0)), _wgslsmith_f_op_f32(round(1370.0))))), _wgslsmith_div_f32(1719.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -843.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1082.0) * -656.0))));
    }
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        let var_0 = u_input.a;
    }
    global2 = _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(~(vec3<i32>(-1, 1, 2147483647) & vec3<i32>(-1, global2.x, global2.x)), -vec3<i32>(u_input.a, 0, global2.x) | vec3<i32>(u_input.a, 2340, -53649)), ~_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(u_input.a, u_input.a, -1525)), ~(~vec3<i32>(27777, 0, u_input.a))));
    global2 = -_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a, ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483648, -1), vec4<i32>(-48216, u_input.a, 1721, u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1), vec3<i32>(global2.x, u_input.a, -5304)), false || !true), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-1, 23373, 2147483647)), reverseBits(vec3<i32>(-81777, global2.x, u_input.a))) | -select(vec3<i32>(u_input.a, 0, 2147483647), vec3<i32>(-14657, -5449, 27232), vec3<bool>(false, false, true)));
    switch (-28498) {
        case -37171: {
        }
        default: {
        }
    }
    return ~(~vec4<i32>(_wgslsmith_clamp_i32(u_input.a, 2147483647, 12047) | min(u_input.a, global2.x), global2.x, func_7(global1[_wgslsmith_index_u32(5828u, 4u)], _wgslsmith_f_op_f32(max(-631.0, -1336.0)), Struct_4(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec4<i32>(u_input.a, u_input.a, global2.x, u_input.a), global2.x), 4294967295u), -1));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        global1 = array<Struct_1, 4>();
    }
    let var_0 = Struct_2(func_2(arg_3, vec2<i32>(24128, global2.x >> (29609u % 32u)), ~(-(vec4<i32>(u_input.a, global2.x, -21306, 0) | vec4<i32>(u_input.a, 1, 32740, 0))), vec3<i32>(_wgslsmith_mult_i32(global2.x, -u_input.a), ~global2.x, -u_input.a)), max(vec4<i32>(2147483647, -2147483648, abs(-9324), u_input.a), func_3()));
    for (var var_1: i32; arg_3; global0 = reverseBits(~global2.x) >> (~firstTrailingBit(~_wgslsmith_add_u32(4294967295u, u_input.b)) % 32u)) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
    }
    let var_1 = Struct_3(min(arg_2.a, vec3<u32>(51967u, 2322u, ~firstLeadingBit(var_0.a.a.x))), Struct_2(Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 9933u, arg_0), vec3<u32>(0u, 4294967295u, var_0.a.a.x))), vec4<i32>(func_4(false, vec2<f32>(678.0, 988.0), 1u < arg_2.a.x).x, reverseBits(var_0.b.x), ~max(-18064, u_input.a), var_0.b.x)), !vec4<bool>(false, true & select(false, arg_3, false), !all(vec4<bool>(arg_3, arg_3, arg_3, arg_3)), any(select(vec3<bool>(false, false, arg_3), vec3<bool>(true, true, false), vec3<bool>(arg_3, true, true)))));
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(1u) ^ _wgslsmith_sub_u32(var_1.b.a.a.x, arg_2.a.x), 4u)];
    return Struct_1(vec3<u32>(_wgslsmith_add_u32(14200u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_0), var_1.b.a.a.zz))), 1u, ~_wgslsmith_add_u32(arg_2.a.x, 1u)));
}

fn func_8(arg_0: Struct_2) -> Struct_3 {
    global1 = array<Struct_1, 4>();
    global2 = -_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(33823, 72106, 0) << (arg_0.a.a % vec3<u32>(32u)), arg_0.b.zxw, vec3<i32>(max(global2.x, 14263), -40750 << (arg_0.a.a.x % 32u), u_input.a)), arg_0.b.wzy);
    global0 = 1;
    let var_0 = func_2(0u >= (((4294967295u << (u_input.b % 32u)) << (1u % 32u)) << (_wgslsmith_add_u32(~arg_0.a.a.x, 4294967295u) % 32u)), -vec2<i32>(0, -1), arg_0.b, arg_0.b.yzx);
    loop {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        }
        break;
    }
    return Struct_3(~vec3<u32>(_wgslsmith_dot_vec3_u32(~var_0.a, firstLeadingBit(arg_0.a.a)), func_5(vec2<i32>(-1, global2.x), max(var_0.a.xx, var_0.a.xz)).x, _wgslsmith_div_u32(~62897u, _wgslsmith_mult_u32(u_input.b, arg_0.a.a.x))), arg_0, vec4<bool>(any(!vec2<bool>(true, false)), all(vec3<bool>(false, true, false)) || false, func_6(Struct_3(~vec3<u32>(arg_0.a.a.x, var_0.a.x, 1u), arg_0, vec4<bool>(false, false, false, true)), _wgslsmith_mult_u32(firstLeadingBit(arg_0.a.a.x), arg_0.a.a.x), _wgslsmith_f_op_f32(f32(-1.0) * -229.0), arg_0.b.wyx), true));
}

fn func_9(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        for (var var_0 = 2147483647; var_0 <= 1; var_0 -= 1) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            global0 = ~(-1);
            let var_1 = 0u;
            let var_2 = arg_0.b.b;
            continue;
        }
        global1 = array<Struct_1, 4>();
        var var_0 = Struct_1(~select(vec3<u32>(firstLeadingBit(4294967295u), 51811u >> (33671u % 32u), u_input.b), max(vec3<u32>(arg_0.b.a.a.x, arg_1, 8318u), ~arg_0.a), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x)));
        switch (~global2.x) {
            default: {
                return Struct_2(global1[_wgslsmith_index_u32(~24342u, 4u)], arg_0.b.b);
            }
        }
    }
    var var_0 = arg_0;
    global0 = 11176;
    if ((func_6(arg_0, firstLeadingBit(var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(294.0, -639.0)), _wgslsmith_f_op_f32(f32(-1.0) * -330.0)), -min(vec3<i32>(arg_2.x, 2147483647, 2147483647), vec3<i32>(-9460, u_input.a, 0))) & true) || (true == any(!select(vec4<bool>(arg_0.c.x, true, false, var_0.c.x), vec4<bool>(true, arg_0.c.x, arg_0.c.x, true), true)))) {
        loop {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            var var_1 = Struct_2(func_8(Struct_2(func_8(func_8(Struct_2(Struct_1(var_0.a), vec4<i32>(arg_2.x, u_input.a, global2.x, -40580))).b).b.a, firstTrailingBit(~vec4<i32>(global2.x, arg_0.b.b.x, -2147483648, -2147483648)))).b.a, -func_3() | func_8(var_0.b).b.b);
        }
        global1 = array<Struct_1, 4>();
        if (arg_0.c.x) {
            var var_1 = Struct_4(select(select(select(!vec4<bool>(var_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), var_0.c, !vec4<bool>(false, false, false, var_0.c.x)), var_0.c, any(vec2<bool>(false, arg_0.c.x)) | any(vec3<bool>(true, var_0.c.x, false))), !vec4<bool>(all(arg_0.c.xzy), var_0.c.x, global2.x <= arg_2.x, var_0.c.x & var_0.c.x), false), select(select(arg_0.c.zyy, arg_0.c.xwz, !(!vec3<bool>(false, arg_0.c.x, false))), !vec3<bool>(!arg_0.c.x, all(vec3<bool>(true, true, var_0.c.x)), !var_0.c.x), vec3<bool>(arg_0.c.x, arg_2.x != arg_0.b.b.x, !select(true, arg_0.c.x, false))), arg_0.c.zzw, -var_0.b.b, func_3().x);
            let var_2 = func_8(func_8(Struct_2(Struct_1(~var_0.a), vec4<i32>(2147483647, firstTrailingBit(37945), 13316 >> (arg_3 % 32u), func_3().x))).b).c.x;
            let var_3 = (var_0.b.a.a.x >> (46200u % 32u)) ^ _wgslsmith_mult_u32(~_wgslsmith_div_u32(~1u, select(var_0.b.a.a.x, var_0.b.a.a.x, var_2)), 4294967295u);
            var var_4 = var_0.b.a;
        }
    }
    loop {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        let var_1 = arg_0.b;
        loop {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            let var_2 = 10842u;
        }
        global1 = array<Struct_1, 4>();
    }
    return arg_0.b;
}

fn func_10(arg_0: f32, arg_1: Struct_2) -> Struct_4 {
    global2 = arg_1.b.yzz;
    global2 = func_9(Struct_3(min(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)), firstLeadingBit(arg_1.a.a)), firstTrailingBit(firstTrailingBit(vec3<u32>(39220u, 6605u, 56297u)))), Struct_2(func_9(func_8(arg_1), arg_1.a.a.x, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 15852, 1), vec3<i32>(-2147483648, -12579, arg_1.b.x)), 0u).a, select(arg_1.b, arg_1.b, false) << (max(vec4<u32>(0u, 1u, 0u, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, 1u)) % vec4<u32>(32u))), vec4<bool>(false, -2147483648 == (1798 << (1u % 32u)), select(!false, false, all(vec2<bool>(true, false))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))), ~(~u_input.b ^ (_wgslsmith_mult_u32(0u, 4294967295u) ^ max(arg_1.a.a.x, 69326u))), ~(~vec3<i32>(_wgslsmith_sub_i32(global2.x, -1), global2.x, _wgslsmith_div_i32(arg_1.b.x, -11351))), 12816u).b.wwx;
    global2 = vec3<i32>(_wgslsmith_sub_i32(abs(~1 ^ global2.x), 2147483647), _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(-17394, 1), 25885 ^ global2.x), _wgslsmith_add_vec2_i32(abs(global2.zx), select(vec2<i32>(arg_1.b.x, -16689) | vec2<i32>(u_input.a, u_input.a), firstLeadingBit(global2.yx), vec2<bool>(false, true)))), -u_input.a);
    let var_0 = max(vec4<u32>(firstLeadingBit(u_input.b), _wgslsmith_sub_u32(~(arg_1.a.a.x ^ u_input.b), 21552u), u_input.b, ~67762u), ~(select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 28714u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), countOneBits(vec4<u32>(19177u, arg_1.a.a.x, 4294967295u, 4294967295u)), false) >> (~firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)) % vec4<u32>(32u))));
    switch (arg_1.b.x) {
        default: {
            let var_1 = Struct_1(~var_0.yxx);
            let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334.0 - -950.0))))));
            switch (u_input.a) {
                case -1: {
                    let var_3 = var_0;
                    let var_4 = -1458.0;
                    let var_5 = var_0;
                    let var_6 = !func_6(Struct_3(vec3<u32>(_wgslsmith_add_u32(var_5.x, 0u), 1u, ~1u), arg_1, select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, false), any(vec4<bool>(false, true, false, false)))), 4294967295u ^ var_5.x, arg_0, _wgslsmith_mult_vec3_i32(func_8(arg_1).b.b.wxy, vec3<i32>(-1, _wgslsmith_sub_i32(2147483647, -12758), arg_1.b.x)));
                }
                default: {
                    var var_3 = 1u & ~9166u;
                    var var_4 = _wgslsmith_mult_u32(func_5(countOneBits(_wgslsmith_div_vec2_i32(global2.yz, vec2<i32>(-9600, 13828))), vec2<u32>(func_2(global2.x > arg_1.b.x, _wgslsmith_mult_vec2_i32(global2.zz, vec2<i32>(34819, 0)), ~arg_1.b, select(arg_1.b.yyx, arg_1.b.zzz, true)).a.x, 0u)).x, func_1(func_8(Struct_2(func_1(0u, 708.0, global1[_wgslsmith_index_u32(1u, 4u)], false), arg_1.b)).b.a.a.x, arg_0, func_9(Struct_3(~vec3<u32>(4294967295u, 20552u, 4294967295u), Struct_2(arg_1.a, vec4<i32>(global2.x, u_input.a, 25905, arg_1.b.x)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), select(1971u, 4294967295u, true), abs(min(arg_1.b.xzx, vec3<i32>(global2.x, 0, 1))), 61547u).a, false).a.x);
                    global0 = max(func_4((all(vec2<bool>(true, false)) & !false) & false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-957.0, arg_0) * vec2<f32>(arg_0, 720.0)))), true).x, func_9(func_8(Struct_2(func_8(arg_1).b.a, vec4<i32>(86804, u_input.a, 2147483647, 54704) ^ arg_1.b)), var_1.a.x >> (104444u % 32u), vec3<i32>(2147483647, _wgslsmith_div_i32(1, 2595), u_input.a), var_1.a.x).b.x);
                }
            }
            let var_3 = select(vec4<bool>(-2147483648 == arg_1.b.x, any(vec3<bool>(u_input.a < 2147483647, u_input.a > u_input.a, var_2.x < 713.0)), ((var_2.x >= arg_0) && (true && false)) && select(any(vec2<bool>(true, false)), !false, false && false), all(func_8(arg_1).c.zzx)), vec4<bool>(!false, -select(19785, u_input.a, true) <= 1, true, any(vec3<bool>(false, all(vec3<bool>(true, false, false)), false))), 0u >= func_5(-vec2<i32>(arg_1.b.x, u_input.a) >> (~vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u)), func_5(global2.xy, ~var_1.a.yz)).x);
            switch (-func_7(func_8(func_9(func_8(arg_1), var_1.a.x, arg_1.b.ywx, _wgslsmith_div_u32(91233u, u_input.b))).b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1576.0 - -1000.0) * _wgslsmith_f_op_f32(-961.0)) - arg_0), Struct_4(vec4<bool>(var_3.x && false, var_3.x, true, true), vec3<bool>(!false, any(vec2<bool>(var_3.x, var_3.x)), var_3.x), var_3.yyy, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647, arg_1.b.x, 16178, -2147483648), min(vec4<i32>(0, global2.x, arg_1.b.x, arg_1.b.x), arg_1.b)), 36555), _wgslsmith_add_u32(firstLeadingBit(~44766u), _wgslsmith_add_u32(firstTrailingBit(1u), _wgslsmith_sub_u32(26757u, 0u))))) {
                default: {
                }
            }
        }
    }
    return Struct_4(vec4<bool>(false, false, any(!(!vec4<bool>(false, false, true, false))), !true), !vec3<bool>(false, func_8(arg_1).c.x, true), vec3<bool>(true == false, any(func_8(arg_1).c.wx), false), abs(arg_1.b), func_9(Struct_3(~vec3<u32>(105877u, arg_1.a.a.x, 1u), func_9(Struct_3(var_0.yyx, arg_1, vec4<bool>(true, false, true, true)), 4294967295u, arg_1.b.wwz, 17523u), func_8(arg_1).c), var_0.x, -(~vec3<i32>(arg_1.b.x, -2147483648, 30508)), ~u_input.b).b.x ^ firstLeadingBit(_wgslsmith_sub_i32(~(-2147483648), func_4(false, vec2<f32>(-985.0, arg_0), true).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_10(_wgslsmith_f_op_f32(f32(-1.0) * -194.0), func_9(func_8(Struct_2(func_1(4294967295u, 1739.0, global1[_wgslsmith_index_u32(u_input.b, 4u)], true), vec4<i32>(-2147483648, 40829, 20264, 2147483647))), u_input.b, ~func_3().wzx, ~(~(~u_input.b))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-428.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -225.0)) * -839.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601.0 - 833.0)) - 1272.0), _wgslsmith_f_op_f32(-1000.0 * -263.0))));
    var var_2 = vec2<u32>(58981u, max(38470u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u) | min(vec2<u32>(u_input.b, 1u), vec2<u32>(39998u, 75747u)), vec2<u32>(func_8(Struct_2(global1[_wgslsmith_index_u32(u_input.b, 4u)], vec4<i32>(var_0.e, global2.x, global2.x, -15810))).b.a.a.x, u_input.b))));
    if (any(var_0.c.zx)) {
        var_2 = ~func_2(countOneBits(var_2.x << (41834u % 32u)) <= var_2.x, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647, -31211) & -global2.zy, vec2<i32>(func_8(Struct_2(Struct_1(vec3<u32>(u_input.b, 21095u, 58372u)), vec4<i32>(global2.x, 33059, var_0.e, 1))).b.b.x, func_4(var_0.a.x, var_1.yy, var_0.c.x).x)), _wgslsmith_div_vec4_i32(abs(reverseBits(var_0.d)), var_0.d), var_0.d.zyy).a.yy;
        let var_3 = vec2<f32>(-144.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))) * var_1.x)));
        let var_4 = -select(vec3<i32>(~var_0.e, global2.x, -2147483648), var_0.d.yzy, !select(!true, false || true, all(vec4<bool>(var_0.a.x, false, false, true))));
    }
    if (var_0.c.x) {
        var_0 = Struct_4(func_10(var_1.x, func_9(func_8(Struct_2(global1[_wgslsmith_index_u32(36543u, 4u)], vec4<i32>(global2.x, u_input.a, var_0.d.x, -1))), 0u, var_0.d.zwx, var_2.x)).a, var_0.b, vec3<bool>(!var_0.b.x, ~u_input.a < ~var_0.e, false), var_0.d & _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-17002, 1, var_0.e, var_0.d.x), ~vec4<i32>(-56306, 10241, global2.x, 35704), vec4<i32>(19462, global2.x, var_0.e, -24424)), func_10(var_1.x, func_8(Struct_2(global1[_wgslsmith_index_u32(92580u, 4u)], var_0.d)).b).d), ~global2.x);
    }
    global2 = var_0.d.wxz;
    let var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(6671u, var_2.x), ~1u), 0u, _wgslsmith_clamp_u32(28884u, ~var_2.x, _wgslsmith_add_u32(u_input.b, var_2.x))), vec3<u32>(reverseBits(u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(30211u, 1u, 0u, var_2.x), vec4<u32>(var_2.x, 52866u, var_2.x, var_2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.x, 42187u, u_input.b), vec4<u32>(70076u, var_2.x, var_2.x, u_input.b)) >> (func_5(vec2<i32>(var_0.e, var_0.e), vec2<u32>(4294967295u, 4294967295u)).x % 32u))), _wgslsmith_mod_u32(0u, select(~(~u_input.b), func_9(Struct_3(vec3<u32>(1u, u_input.b, 6514u), Struct_2(global1[_wgslsmith_index_u32(u_input.b, 4u)], vec4<i32>(var_0.d.x, 1, global2.x, u_input.a)), vec4<bool>(var_0.c.x, var_0.a.x, var_0.c.x, false)), func_9(Struct_3(vec3<u32>(u_input.b, u_input.b, var_2.x), Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 1u)), var_0.d), vec4<bool>(var_0.b.x, false, true, var_0.a.x)), 54666u, var_0.d.zyy, var_2.x).a.a.x, abs(vec3<i32>(global2.x, var_0.d.x, var_0.e)), var_2.x).a.a.x, all(!var_0.a))));
    let var_4 = ~vec3<u32>(~12472u, 4294967295u, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.x)))), var_1.x, _wgslsmith_div_f32(2199.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, firstLeadingBit(0u | var_4.x), ~_wgslsmith_add_u32(var_4.x, var_2.x), ~17643u), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, var_3, 65297u), vec4<u32>(u_input.b, var_4.x, 27036u, u_input.b))), _wgslsmith_clamp_vec4_u32(max(abs(vec4<u32>(24075u, 0u, 0u, 56085u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, 60759u, 1u), vec4<u32>(1u, 14222u, 1u, 32839u))), vec4<u32>(4294967295u, 35678u, 4294967295u, 4294967295u), ~countOneBits(vec4<u32>(53878u, u_input.b, 1431u, var_2.x)))), 908.0, _wgslsmith_mod_u32(~110830u, u_input.b), var_0.d);
}

