// {"0:0":[181,72,88,83,232,187,145,164,208,10,39,119,55,223,69,198]}
// Seed: 2189484716668736688

struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(33652u, 1u, 3043u), vec3<u32>(7727u, 4294967295u, 1u), vec3<u32>(68997u, 14112u, 0u), vec3<u32>(57343u, 42010u, 84934u), vec3<u32>(45175u, 6865u, 0u), vec3<u32>(53647u, 1u, 54935u));

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<vec3<i32>, 19>;

var<private> LOOP_COUNTERS: array<u32, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_6(arg_0: i32) -> vec3<f32> {
    for (var var_0 = -1; var_0 >= -25928; var_0 -= 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
    }
    var var_0 = !(!select(!true, _wgslsmith_mod_i32(u_input.a.x, -9736) == ~arg_0, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))));
    let var_1 = false;
    switch (firstTrailingBit(u_input.a.x) & max(1, _wgslsmith_mult_i32(22922, -1))) {
        default: {
            var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-174.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1399.0 + -1453.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1629.0, 398.0, -1000.0)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(525.0, -744.0, -1272.0), vec3<f32>(193.0, 1509.0, 117.0))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(753.0, 497.0, 1181.0))), !var_1)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-758.0, -930.0, 285.0)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(-355.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))))));
            switch (2147483647) {
                case 1: {
                    var var_3 = var_2.xy;
                    var_0 = true;
                }
                case -15030: {
                    global3 = array<vec3<i32>, 19>();
                    let var_3 = reverseBits(u_input.a.zy);
                    let var_4 = _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-36368, 1, ~(-24182), ~var_3.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -19539, arg_0, var_3.x), vec4<i32>(arg_0, -12908, arg_0, -12190) << (vec4<u32>(4294967295u, 35757u, 1u, 98172u) % vec4<u32>(32u)))), vec4<i32>(2147483647, _wgslsmith_div_i32(arg_0, -5808), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, var_3.x, 2147483647)), u_input.a), ~arg_0) & min(~(vec4<i32>(arg_0, u_input.a.x, arg_0, u_input.a.x) ^ vec4<i32>(28464, arg_0, 2147483647, 2147483647)), min(vec4<i32>(u_input.a.x, arg_0, 28297, 0) >> (vec4<u32>(1u, 0u, 1u, 45188u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(42740, -5052, 26633, var_3.x), vec4<i32>(u_input.a.x, -1828, u_input.a.x, var_3.x)))));
                    var var_5 = (var_1 | !(!all(vec2<bool>(var_1, var_1)))) & (_wgslsmith_f_op_f32(max(-693.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x))) <= var_2.x);
                    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 329.0))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(597.0, var_2.x, 1557.0))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1813.0, var_2.x, -3010.0), vec3<f32>(1317.0, 1032.0, 541.0))))));
                }
                case 17715: {
                    var var_3 = global2[_wgslsmith_index_u32(26037u, 2u)];
                    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 77257u, 85875u, 4294967295u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 14607u, 0u, 1u), vec4<u32>(42705u, 0u, 4294967295u, 4294967295u), vec4<u32>(42457u, 65477u, 57422u, 4703u))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 25284u, 23193u, 13104u), vec4<u32>(4294967295u, 0u, 0u, 33894u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 32537u, 77976u) << (vec4<u32>(16549u, 1u, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(22629u, 1u, 0u, 1u) << (vec4<u32>(4294967295u, 37327u, 10746u, 48041u) % vec4<u32>(32u))))), ~_wgslsmith_sub_u32(countOneBits(firstLeadingBit(20772u)), (27928u ^ 1u) >> (abs(48368u) % 32u))), 2u)];
                }
                case -79: {
                }
                default: {
                    var var_3 = false && !all(vec2<bool>(var_1, true && var_1));
                    var var_4 = global2[_wgslsmith_index_u32(~50498u, 2u)];
                    global1 = array<vec3<u32>, 7>();
                    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-295.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -664.0), _wgslsmith_f_op_f32(trunc(var_2.x)))), _wgslsmith_f_op_f32(-1297.0), var_2.x));
                }
            }
            let var_3 = var_2.x;
        }
    }
    let var_2 = ~(~u_input.a.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(653.0, 694.0))), _wgslsmith_f_op_f32(f32(-1.0) * -203.0), -134.0)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(474.0)), _wgslsmith_f_op_f32(exp2(-1573.0))))), 1419.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2971.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2184.0)), !(17567u <= 8549u)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    switch (u_input.a.x) {
        case -2147483648: {
            for (var var_0 = 24057; var_0 <= 2147483647; var_0 -= 1) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                var_0 = 1581;
                global0 = array<Struct_1, 27>();
                var var_1 = vec2<f32>(449.0, 1000.0);
            }
            let var_0 = !(!vec4<bool>(false, arg_0.a.x, arg_1.a.x, true));
            for (var var_1 = -38720; arg_0.a.x; ) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                continue;
            }
        }
        case 8830: {
        }
        default: {
        }
    }
    global2 = array<Struct_1, 2>();
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
    }
    let var_0 = Struct_1(select(!arg_0.a, !select(vec4<bool>(true, arg_0.b.x, false, true), select(arg_1.a, arg_1.a, arg_1.a), false), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xy, u_input.a.zx), ~u_input.a.zz) <= arg_2.x), select(!vec2<bool>(true, all(arg_0.a.zx)), vec2<bool>(arg_1.b.x, arg_0.b.x != (1u < 24212u)), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_6(arg_2.x >> (15722u % 32u)));
    return Struct_1(vec4<bool>(!any(select(vec4<bool>(arg_1.b.x, var_0.a.x, false, arg_0.b.x), arg_0.a, vec4<bool>(false, arg_0.b.x, true, true))), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1118.0, 2160.0)), !false & all(vec4<bool>(false, arg_1.b.x, true, arg_1.a.x)), false), select(select(select(select(vec2<bool>(true, arg_1.a.x), vec2<bool>(var_0.b.x, false), vec2<bool>(var_0.a.x, true)), select(arg_0.b, vec2<bool>(true, true), arg_0.b), all(vec3<bool>(true, true, false))), arg_0.b, vec2<bool>(-2147483648 > arg_2.x, arg_1.a.x)), select(select(select(vec2<bool>(false, arg_0.b.x), vec2<bool>(true, arg_0.a.x), var_0.b.x), vec2<bool>(var_0.a.x, true), select(vec2<bool>(false, arg_1.a.x), vec2<bool>(false, var_0.b.x), vec2<bool>(arg_0.b.x, arg_0.b.x))), vec2<bool>(true, arg_1.b.x), !arg_1.a.x), true));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<bool> {
    if (select(30003u < 74160u, ~arg_2.x == ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), arg_2.zx) >> (min(63112u, 0u) % 32u)), (true || (_wgslsmith_f_op_f32(trunc(305.0)) > _wgslsmith_f_op_f32(-692.0 - 388.0))) | true)) {
        for (var var_0 = 1; ; var_0 += 1) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            let var_1 = _wgslsmith_add_i32(1, 1604);
            continue;
        }
        let var_0 = arg_1;
        for (var var_1 = _wgslsmith_div_i32(-1533, 2147483647) << (arg_2.x % 32u); !any(select(select(!arg_0.a.zzy, vec3<bool>(arg_0.a.x, arg_1.b.x, arg_1.a.x), !vec3<bool>(arg_0.b.x, true, true)), vec3<bool>(!var_0.b.x, true, any(vec4<bool>(false, arg_1.a.x, false, arg_0.b.x))), false)); var_1 += 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            continue;
        }
        if (any(arg_0.a.yz)) {
            global2 = array<Struct_1, 2>();
        }
    }
    if (!arg_0.a.x) {
        let var_0 = u_input.a.x;
        loop {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            let var_1 = !arg_0.a.www;
            global3 = array<vec3<i32>, 19>();
        }
        var var_1 = func_5(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_2.x, 36035u, arg_2.x, arg_2.x), ~vec4<u32>(1u, arg_2.x, 4294967295u, arg_2.x)), ~abs(vec4<u32>(12167u, 14894u, arg_2.x, 22251u))), firstTrailingBit(arg_2.x)), 27u)], Struct_1(!arg_0.a, vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, arg_1.b.x), false)), _wgslsmith_clamp_u32(arg_2.x, 1323u, 25764u) <= ~4294967295u)), -select(_wgslsmith_add_vec2_i32(vec2<i32>(0, u_input.a.x), vec2<i32>(var_0, var_0)), -u_input.a.yy, arg_0.b.x));
    }
    global3 = array<vec3<i32>, 19>();
    let var_0 = ~(~_wgslsmith_sub_vec4_u32(select(max(vec4<u32>(1u, arg_2.x, 19182u, 0u), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 11637u)), abs(vec4<u32>(1726u, 245u, 4294967295u, arg_2.x)), !arg_1.a.x), ~vec4<u32>(arg_2.x, 51165u, 0u, arg_2.x)));
    let var_1 = all(arg_1.a.zwx);
    return vec3<bool>(any(select(arg_0.b, vec2<bool>(arg_1.b.x & false, u_input.a.x <= 0), !arg_0.b.x)), arg_1.b.x, ~_wgslsmith_add_i32(u_input.a.x, u_input.a.x ^ 2147483647) > 0);
}

fn func_4() -> f32 {
    let var_0 = countOneBits(min(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(8491u ^ 1u), ~72235u), 7u)], global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstLeadingBit(4294967295u), 1u), 7u)]));
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        if (-1 == _wgslsmith_dot_vec3_i32(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 19u)])) {
            var var_1 = -2004.0;
            global3 = array<vec3<i32>, 19>();
            let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-153.0, 540.0, -404.0), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(492.0, 385.0, 324.0), vec3<f32>(330.0, 1619.0, -1282.0), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1368.0, 2278.0, 693.0)))), func_7(func_5(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, false)), vec2<i32>(u_input.a.x, -20425)), func_5(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(var_0.x, 27u)], vec2<i32>(u_input.a.x, u_input.a.x)), ~vec3<u32>(11640u, var_0.x, 47366u)))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_6(u_input.a.x)).x, -630.0, 1345.0)));
        }
        if (all(func_7(Struct_1(!func_5(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, false)), global2[_wgslsmith_index_u32(var_0.x, 2u)], vec2<i32>(u_input.a.x, u_input.a.x)).a, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), func_5(global0[_wgslsmith_index_u32(~abs(var_0.x), 27u)], global0[_wgslsmith_index_u32(~var_0.x, 27u)], u_input.a.yy), max(_wgslsmith_mult_vec3_u32(max(vec3<u32>(1u, 1u, 4294967295u), global1[_wgslsmith_index_u32(var_0.x, 7u)]), ~var_0), vec3<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), ~14865u, max(var_0.x, var_0.x)))))) {
            var var_1 = u_input.a.x;
            let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1012.0 + 867.0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -506.0), _wgslsmith_f_op_f32(select(515.0, 1021.0, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607.0 - 234.0) + _wgslsmith_f_op_f32(floor(341.0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(771.0)) - _wgslsmith_f_op_f32(sign(1000.0))))), -1728.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -446.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1370.0 + 168.0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749.0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(407.0)) - _wgslsmith_f_op_f32(trunc(-752.0))))));
            var var_3 = func_5(func_5(global2[_wgslsmith_index_u32(var_0.x, 2u)], Struct_1(vec4<bool>(false, -1289.0 != 1000.0, all(vec4<bool>(false, false, false, false)), false), vec2<bool>(!false, !false)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 17813), u_input.a.zy) << ((select(vec2<u32>(var_0.x, 1u), var_0.zz, false) ^ (vec2<u32>(32686u, var_0.x) ^ vec2<u32>(var_0.x, 0u))) % vec2<u32>(32u))), func_5(Struct_1(vec4<bool>(func_7(global2[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(0u, 27u)], var_0).x, !true, !false, any(vec4<bool>(false, false, false, false))), func_5(global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)], u_input.a.zz & vec2<i32>(u_input.a.x, u_input.a.x)).b), global0[_wgslsmith_index_u32(1u, 27u)], u_input.a.zz), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647, -7141, u_input.a.x), select(u_input.a, global3[_wgslsmith_index_u32(var_0.x, 19u)], false)), _wgslsmith_dot_vec2_i32(vec2<i32>(0, u_input.a.x), ~u_input.a.yz))));
            var var_4 = ~firstLeadingBit(_wgslsmith_dot_vec2_u32(select(~var_0.zx, ~vec2<u32>(var_0.x, var_0.x), var_3.a.zw), ~vec2<u32>(1u, var_0.x) | countOneBits(var_0.xy)));
            var var_5 = global2[_wgslsmith_index_u32(var_0.x, 2u)];
        }
        var var_1 = ~abs(0);
        var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1582.0), _wgslsmith_f_op_f32(step(-934.0, 448.0)), 708.0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1521.0, 1210.0, -740.0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1953.0, -432.0, 422.0))))) * _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_add_i32(-1, 0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1105.0, -145.0, -300.0), vec3<f32>(2356.0, -403.0, 111.0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1775.0, 159.0, 714.0)))), abs(_wgslsmith_add_i32(min(u_input.a.x, u_input.a.x), ~1828)) != -_wgslsmith_dot_vec2_i32(u_input.a.xy, ~u_input.a.yy)));
    }
    switch (countOneBits(1)) {
        case 0: {
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(199.0, 2693.0)));
                let var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, -213, -13816), ~(i32(-1) * -2147483648)) > 3547;
                continue;
            }
            var var_1 = func_5(global2[_wgslsmith_index_u32(64612u, 2u)], func_5(func_5(global0[_wgslsmith_index_u32(0u, 27u)], Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, true)), vec2<i32>(abs(u_input.a.x), -36908)), Struct_1(vec4<bool>(any(vec3<bool>(false, false, true)), !false, true, func_7(Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, true)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false)), vec3<u32>(var_0.x, var_0.x, var_0.x)).x), !func_7(global0[_wgslsmith_index_u32(5345u, 27u)], Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true)), vec3<u32>(var_0.x, 111088u, 24683u)).yz), -max(_wgslsmith_sub_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zy, vec2<i32>(u_input.a.x, u_input.a.x)))), vec2<i32>(~(max(u_input.a.x, 48115) << ((36334u & var_0.x) % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 18223, -3250, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647, u_input.a.x))), firstTrailingBit(-vec4<i32>(u_input.a.x, 2147483647, 1, 4561)))));
        }
        case -1: {
            let var_1 = true;
        }
        case 21068: {
            let var_1 = Struct_1(vec4<bool>(!(all(vec2<bool>(false, false)) & all(vec2<bool>(true, true))), all(!vec4<bool>(true, false, false, true)), true, !(_wgslsmith_f_op_f32(f32(-1.0) * -615.0) != _wgslsmith_f_op_f32(-233.0 - -952.0))), select(!(!(!vec2<bool>(false, false))), !(!(!vec2<bool>(true, false))), !func_7(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(65582u, 29371u), 2u)], global0[_wgslsmith_index_u32(~var_0.x, 27u)], global1[_wgslsmith_index_u32(1868u, 7u)] & vec3<u32>(1u, 1u, 1u)).xx));
            let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-936.0) * _wgslsmith_f_op_f32(max(548.0, -1000.0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1081.0, -499.0)) * _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1144.0)), _wgslsmith_f_op_f32(1000.0 * 292.0))) + 1129.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2351.0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-648.0)) * _wgslsmith_f_op_f32(-1000.0 - _wgslsmith_f_op_f32(-606.0))))), _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_add_i32(select(0, 30545, true), reverseBits(u_input.a.x)) >> (0u % 32u))).x);
            var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.yyy, _wgslsmith_f_op_vec3_f32(sign(var_2.wxy))) + var_2.zww))));
            if (!(!all(func_7(func_5(Struct_1(var_1.a, var_1.a.zx), Struct_1(var_1.a, vec2<bool>(var_1.a.x, var_1.b.x)), u_input.a.zz), Struct_1(var_1.a, var_1.a.yz), global1[_wgslsmith_index_u32(var_0.x, 7u)]).yz))) {
                let var_4 = vec4<u32>(4294967295u, 65904u, ~4294967295u & 4294967295u, var_0.x);
                global2 = array<Struct_1, 2>();
                var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(968.0, -520.0, var_3.x) + var_2.ywz))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-697.0, var_2.x, var_3.x)), _wgslsmith_f_op_vec3_f32(exp2(var_2.zwz)), var_1.a.zzy))), _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_mod_i32(~_wgslsmith_add_i32(8410, u_input.a.x), -(~0))))));
                global1 = array<vec3<u32>, 7>();
                var var_5 = Struct_1(select(vec4<bool>(all(!vec3<bool>(true, var_1.a.x, var_1.b.x)), !all(var_1.a.wy), !(var_2.x < 1232.0), all(func_5(global2[_wgslsmith_index_u32(0u, 2u)], Struct_1(var_1.a, vec2<bool>(var_1.b.x, var_1.b.x)), vec2<i32>(61928, u_input.a.x)).a)), !vec4<bool>(var_1.b.x | var_1.a.x, !false, !true, var_1.b.x), u_input.a.x != ~u_input.a.x), select(func_7(Struct_1(var_1.a, !vec2<bool>(false, var_1.b.x)), var_1, ~reverseBits(global1[_wgslsmith_index_u32(4294967295u, 7u)])).yy, vec2<bool>(true, any(!vec4<bool>(var_1.b.x, var_1.a.x, var_1.a.x, var_1.b.x))), false));
            }
            let var_4 = var_2.x;
        }
        default: {
            let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, ~0u), 27u)];
            let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1335.0), 982.0)) - 157.0);
        }
    }
    global0 = array<Struct_1, 27>();
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a, -(~vec3<i32>(u_input.a.x, -1, 2147483647))), 13312 >> (74116u % 32u), -32940), u_input.a.x, -2147483648);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-729.0))));
}

fn func_3() -> vec4<i32> {
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        let var_0 = _wgslsmith_f_op_f32(921.0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711.0 * 1297.0) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(120.0)), _wgslsmith_f_op_f32(651.0 + -785.0)))))));
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            let var_1 = -u_input.a.x;
            var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-1, -(~(~var_1)), -34062, ~u_input.a.x), -max(select(~vec4<i32>(-1, -18209, u_input.a.x, u_input.a.x), vec4<i32>(0, u_input.a.x, u_input.a.x, -16896), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true)), vec4<i32>(_wgslsmith_mod_i32(-2147483648, 30606), var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_1), u_input.a.xx), -u_input.a.x)));
            var_2 = ~(-vec4<i32>(_wgslsmith_mod_i32(-2147483648, -var_1), -1, _wgslsmith_dot_vec2_i32(u_input.a.zz >> (vec2<u32>(33260u, 4294967295u) % vec2<u32>(32u)), countOneBits(var_2.xy)), 2147483647));
            global2 = array<Struct_1, 2>();
        }
        continue;
    }
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~(12158u ^ 54428u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(88576u, 0u), 142061u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(11301u, 32043u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4728u, 4294967295u), vec2<u32>(1u, 98528u))), abs(~vec2<u32>(22919u, 57977u)))), ~min(~(~vec3<u32>(32628u, 40624u, 4219u)), _wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(39286u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]) | ~global1[_wgslsmith_index_u32(14773u, 7u)])), 27u)];
    switch (-5160) {
        case 21821: {
        }
        case 19326: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            }
            global0 = array<Struct_1, 27>();
        }
        case -50492: {
            global0 = array<Struct_1, 27>();
            let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1650.0, _wgslsmith_div_f32(-1450.0, -1342.0)), _wgslsmith_f_op_f32(func_4()))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-173.0) - 310.0)))));
            for (var var_2 = u_input.a.x << (10884u % 32u); ; ) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                var_2 = max(i32(-1) * -4215, u_input.a.x & _wgslsmith_div_i32(_wgslsmith_sub_i32(~u_input.a.x, u_input.a.x), firstTrailingBit(0 | 0)));
                let var_3 = func_5(global2[_wgslsmith_index_u32(~(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(45248u, 4294967295u, 59920u, 0u), vec4<u32>(21312u, 0u, 55154u, 42227u))) & ((64623u ^ 0u) ^ 0u)), 2u)], global2[_wgslsmith_index_u32(0u, 2u)], ~(_wgslsmith_mult_vec2_i32(min(vec2<i32>(1, u_input.a.x), u_input.a.yx), -u_input.a.xy) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zy)));
                break;
            }
            var var_2 = Struct_1(func_5(func_5(Struct_1(var_0.a, func_5(global2[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(41439u, 27u)], vec2<i32>(4639, -2147483648)).b), global0[_wgslsmith_index_u32(firstTrailingBit(~90018u), 27u)], -vec2<i32>(-2147483648, -1)), global2[_wgslsmith_index_u32(max(~(~6825u), 0u), 2u)], vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yx, -vec2<i32>(38806, -2147483648)), _wgslsmith_dot_vec2_i32(vec2<i32>(-24283, u_input.a.x) << (vec2<u32>(0u, 47029u) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, 2147483647)))).a, vec2<bool>(select(var_0.b.x, var_0.b.x, func_7(func_5(global2[_wgslsmith_index_u32(26462u, 2u)], global0[_wgslsmith_index_u32(0u, 27u)], vec2<i32>(u_input.a.x, u_input.a.x)), func_5(Struct_1(var_0.a, var_0.a.zy), global0[_wgslsmith_index_u32(0u, 27u)], u_input.a.zz), global1[_wgslsmith_index_u32(max(1u, 61311u), 7u)]).x), false));
        }
        default: {
            let var_1 = Struct_1(var_0.a, select(!select(var_0.a.wz, var_0.a.yz, -2787.0 != -244.0), vec2<bool>(any(var_0.a) | func_7(global0[_wgslsmith_index_u32(0u, 27u)], Struct_1(var_0.a, vec2<bool>(false, false)), vec3<u32>(20351u, 1793u, 4294967295u)).x, !(!var_0.a.x)), !(!var_0.a.wy)));
            var var_2 = func_5(var_1, func_5(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 23754u), vec2<u32>(1u, 10476u)), ~1u), ~0u, _wgslsmith_clamp_u32(~2864u, ~4294967295u, firstLeadingBit(4294967295u))), 2u)], Struct_1(select(!vec4<bool>(var_1.a.x, false, var_0.b.x, var_1.a.x), !var_0.a, vec4<bool>(true, true, var_0.a.x, var_1.b.x)), var_1.b), ~(~(-u_input.a.yz))), u_input.a.xy);
        }
    }
    global1 = array<vec3<u32>, 7>();
    let var_1 = !true;
    return select(select(vec4<i32>(8471 ^ ~0, u_input.a.x, abs(i32(-1) * -2147483648), 2147483647), select(_wgslsmith_div_vec4_i32(vec4<i32>(32535, 19207, 1, -30144) >> (vec4<u32>(15769u, 1u, 77096u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a.x, 2147483647, u_input.a.x, u_input.a.x)), ~vec4<i32>(-1, -8854, -39937, u_input.a.x), true), var_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -select(u_input.a.x, -42908, var_0.b.x), 66744), -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1, 0, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0, 7134)))), var_0.b.x);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    for (var var_0: i32; var_0 > 18550; var_0 -= 1) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        continue;
    }
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        for (var var_0 = arg_1; var_0 == 27997; var_0 -= 1) {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            var var_1 = firstTrailingBit(~(~vec4<u32>(~13559u, 54354u, 80503u | 50271u, ~34585u)));
            global2 = array<Struct_1, 2>();
        }
        let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 5933 & ~(-2147483648), abs(min(2147483647, u_input.a.x)), max(-u_input.a.x, 1093 >> (52769u % 32u))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(14050, arg_1, -36941, u_input.a.x)), func_3()) ^ select(vec4<i32>(u_input.a.x, 7548, 34557, -1) ^ vec4<i32>(1, -35810, arg_1, 1), vec4<i32>(-2147483648, u_input.a.x, 16078, -31715) & vec4<i32>(arg_1, arg_1, -32361, -29517), !vec4<bool>(false, true, false, false))), ~max(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647, 1, 15013, u_input.a.x), vec4<i32>(0, -18121, arg_1, u_input.a.x)), max(vec4<i32>(-2147483648, arg_1, u_input.a.x, 0), vec4<i32>(1, arg_1, u_input.a.x, arg_1)) << (~vec4<u32>(0u, 62473u, 1932u, 8200u) % vec4<u32>(32u))));
        var var_1 = Struct_1(func_5(Struct_1(!vec4<bool>(true, false, false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), !vec2<bool>(true, false))), global0[_wgslsmith_index_u32(1u, 27u)], firstLeadingBit(-vec2<i32>(-16576, var_0.x) << (firstTrailingBit(vec2<u32>(0u, 33978u)) % vec2<u32>(32u)))).a, vec2<bool>(!(!true) || any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), !false));
    }
    global2 = array<Struct_1, 2>();
    global3 = array<vec3<i32>, 19>();
    global0 = array<Struct_1, 27>();
    return _wgslsmith_f_op_f32(floor(arg_0));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> bool {
    global3 = array<vec3<i32>, 19>();
    for (; ; ) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        if (!(_wgslsmith_f_op_f32(func_2(-658.0, -u_input.a.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(-986.0, -607.0) - vec2<f32>(arg_2, -830.0)))))) == arg_2)) {
            global1 = array<vec3<u32>, 7>();
            break;
        }
        let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(583.0 * arg_2)))), _wgslsmith_div_f32(-1662.0, 372.0)));
    }
    global0 = array<Struct_1, 27>();
    if (!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, 1294.0)))) < _wgslsmith_f_op_f32(round(arg_2)))) {
        loop {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
        }
    }
    var var_0 = !all(!(!arg_1.a));
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
    }
    global2 = array<Struct_1, 2>();
    var var_0 = !(_wgslsmith_mult_i32(select(u_input.a.x, u_input.a.x, func_1(vec2<u32>(28732u, 0u), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, false)), 1120.0)), 11581) > (_wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(-26103, -17110)) & select(10682 << (0u % 32u), min(26072, u_input.a.x), func_7(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(13770u, 7u)]).x)));
    var var_1 = 1689.0;
    let var_2 = _wgslsmith_sub_u32(7267u, 12231u);
    var var_3 = global0[_wgslsmith_index_u32(~var_2, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

