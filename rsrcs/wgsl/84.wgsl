// {"0:0":[235,155,9,229]}
// Seed: 710750773908237159

struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

var<private> global1: vec3<f32> = vec3<f32>(1559.0, -319.0, 1007.0);

var<private> global2: array<u32, 28> = array<u32, 28>(1u, 13877u, 4294967295u, 23248u, 35805u, 0u, 37339u, 65896u, 18678u, 0u, 1u, 21422u, 19211u, 68719u, 1u, 23493u, 31216u, 4294967295u, 31933u, 53580u, 21160u, 1u, 4294967295u, 4294967295u, 4294967295u, 38155u, 4294967295u, 56609u);

var<private> global3: f32;

var<private> LOOP_COUNTERS: array<u32, 30>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, arg_1.b) & vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 28u)])), ~(vec2<u32>(arg_1.b, global2[_wgslsmith_index_u32(1u, 28u)]) | vec2<u32>(global2[_wgslsmith_index_u32(0u, 28u)], 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(62493u, ~arg_0.a, firstTrailingBit(_wgslsmith_div_u32(4294967295u, u_input.a)), _wgslsmith_add_u32(arg_1.a, 0u)), ~abs(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(arg_1.b, 28u)], 25345u, arg_0.a, arg_0.a)))), arg_1.d.x, arg_1.d);
    for (; true; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global2 = array<u32, 28>();
        let var_1 = !(!vec4<bool>(!(!false), !(!false), false && !true, false));
        var var_2 = 1;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        }
        for (var var_3 = -34601; var_3 >= 1; var_3 += 1) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            continue;
        }
    }
    if (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 44010u) & vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 28u)]), ~firstLeadingBit(vec2<u32>(4294967295u, 6318u))) < 7452u) {
        let var_1 = !(!select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), !(!vec4<bool>(true, false, true, false)), !vec4<bool>(true, false, false, false)));
        let var_2 = -54666;
    }
    switch (_wgslsmith_clamp_i32(firstLeadingBit(1), -2147483648, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~arg_2.x, select(var_0.c, arg_1.c, true), -2147483648), firstLeadingBit(50712))) << (var_0.b % 32u)) {
        case -36506: {
        }
        case 53828: {
            global2 = array<u32, 28>();
            switch (_wgslsmith_dot_vec2_i32(~vec2<i32>(-49884, arg_0.d.x << (35302u % 32u)) >> (~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, arg_0.b), vec2<u32>(var_0.b, 58301u))) % vec2<u32>(32u)), reverseBits(firstTrailingBit(var_0.d.yz)))) {
                case -1: {
                    var var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global2[_wgslsmith_index_u32(arg_0.a, 28u)], 14506u, u_input.a)), ~(vec3<u32>(27793u, var_0.a, arg_1.b) | vec3<u32>(global2[_wgslsmith_index_u32(arg_1.a, 28u)], 15430u, arg_1.a))), global2[_wgslsmith_index_u32(arg_0.a, 28u)], var_0.c, var_0.d);
                    global2 = array<u32, 28>();
                    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), global1.x, 185.0), vec3<f32>(_wgslsmith_f_op_f32(global1.x + -331.0), _wgslsmith_f_op_f32(-global1.x), 862.0)))));
                }
                case 35553: {
                    var var_1 = var_0.d.yyz;
                }
                case 2147483647: {
                    let var_1 = Struct_1(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(select(vec2<u32>(var_0.b, global2[_wgslsmith_index_u32(51471u, 28u)]), vec2<u32>(1u, arg_0.b), false)), vec2<u32>(_wgslsmith_sub_u32(4294967295u, arg_1.a), max(1u, arg_0.b))), 28u)], ~arg_1.a, select(-55801 | 2147483647, 30901, false), arg_0.d);
                }
                case 0: {
                    var var_1 = vec4<bool>(!(countOneBits(var_0.b) >= ~select(14988u, u_input.a, true)), !true, true, !true & all(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), !false)));
                }
                default: {
                    global0 = array<vec2<f32>, 26>();
                    var var_1 = Struct_1(_wgslsmith_clamp_u32(arg_1.b, firstTrailingBit(21044u), _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(var_0.a, arg_0.a, var_0.b))), ~(~vec3<u32>(31218u, u_input.a, 4294967295u)))), firstTrailingBit(_wgslsmith_clamp_u32(~(~arg_0.b), select(~var_0.a, reverseBits(var_0.a), all(vec3<bool>(false, false, false))), abs(~50800u))), -(~arg_1.d.x), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~arg_1.d, vec4<i32>(-16221, var_0.d.x, 44771, 1)), vec4<i32>(~arg_1.c, arg_0.d.x, max(arg_2.x, arg_2.x), reverseBits(24898))), ~vec4<i32>(var_0.c >> (49004u % 32u), ~(-1), 1 >> (1u % 32u), _wgslsmith_mod_i32(var_0.c, var_0.d.x))));
                    var var_2 = _wgslsmith_sub_i32(i32(-1) * -(41587 >> (u_input.a % 32u)), _wgslsmith_div_i32(select(arg_2.x, ~var_0.c, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(var_0.c, arg_0.c, arg_2.x), ~0)));
                    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-2226.0, global1.x)), _wgslsmith_f_op_f32(step(-466.0, -653.0)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.xz * vec2<f32>(global1.x, -1499.0)), global1.xx)), vec2<f32>(global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.x, global1.x)), 422.0, all(vec4<bool>(true, false, true, false))))))));
                }
            }
            let var_1 = 12307u;
        }
        default: {
            global2 = array<u32, 28>();
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                global0 = array<vec2<f32>, 26>();
                let var_1 = Struct_1(reverseBits(global2[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_1.a, var_0.b, 4294967295u) | vec3<u32>(19242u, 79238u, 56187u), abs(vec3<u32>(global2[_wgslsmith_index_u32(var_0.b, 28u)], 37731u, 4294967295u)), any(vec4<bool>(false, true, false, false))), ~(reverseBits(vec3<u32>(arg_0.b, u_input.a, 49039u)) | ~vec3<u32>(var_0.b, var_0.b, 69714u))), -2147483648, vec4<i32>(-_wgslsmith_mod_i32(firstTrailingBit(arg_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(51183, -37148, arg_2.x), vec3<i32>(arg_2.x, -2147483648, var_0.c))), reverseBits(-23759 & 0), arg_1.d.x, -(_wgslsmith_add_i32(arg_1.c, arg_0.d.x) ^ (0 ^ arg_1.c))));
                var var_2 = _wgslsmith_f_op_f32(exp2(868.0));
                global0 = array<vec2<f32>, 26>();
                let var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.c, 1), var_0.d.xw), arg_2), var_0.d.x, _wgslsmith_sub_i32(min(arg_0.c, arg_1.c), 9225)), vec3<i32>(var_1.d.x, arg_0.d.x, -2147483648));
            }
        }
    }
    return (true || !(!false)) && any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(!vec2<bool>(true, true), vec2<bool>(false, true), !vec2<bool>(true, false)), select(!vec2<bool>(true, false), !vec2<bool>(false, false), any(vec4<bool>(false, true, true, false)))));
}

fn func_5() -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(sign(888.0));
    if (!true) {
        let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), global1.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1326.0 + 1045.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-155.0) - _wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(global1.x * global1.x)))), select(vec2<bool>(!false || !true, func_6(Struct_1(4294967295u, 33202u, -44023, vec4<i32>(-1, -2147483648, 1, -1)), Struct_1(7162u, 24886u, -32632, vec4<i32>(-4113, -2147483648, -3855, -2147483648)), vec2<i32>(2147483647, -30013) << (vec2<u32>(31359u, 10320u) % vec2<u32>(32u)))), vec2<bool>(any(!vec3<bool>(true, false, false)), true), true)));
        let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(107.0 - var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, global1.x)))));
        let var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-_wgslsmith_mult_i32(2147483647, -39119), (i32(-1) * -41810) | abs(-1)), _wgslsmith_clamp_i32(-2893, reverseBits(-1), _wgslsmith_dot_vec2_i32(vec2<i32>(1, 0), vec2<i32>(-7148, -38354))) << (min(1u, _wgslsmith_sub_u32(1u, 4294967295u)) % 32u)) == -11073;
        return Struct_1(~_wgslsmith_clamp_u32(~u_input.a, 7501u, u_input.a), firstTrailingBit(~(~(~u_input.a))), max(min(_wgslsmith_sub_i32(17301, 37338) >> (_wgslsmith_mult_u32(9571u, 4294967295u) % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(-12889, -2147483648), _wgslsmith_add_i32(0, 8152))), -44328), _wgslsmith_div_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1, -66286, 17356, 6698), vec4<i32>(1, 1, -2147483648, 1)) >> (~vec4<u32>(23039u, global2[_wgslsmith_index_u32(29576u, 28u)], 16176u, u_input.a) % vec4<u32>(32u)), vec4<i32>(2147483647, _wgslsmith_div_i32(-1, -1854), _wgslsmith_dot_vec3_i32(vec3<i32>(0, -1, -1), vec3<i32>(-38871, 1, 2147483647)), -34998), any(!vec3<bool>(var_2, var_2, var_2))), reverseBits(vec4<i32>(2147483647, 0, 2147483647, 14752) >> ((vec4<u32>(64649u, u_input.a, global2[_wgslsmith_index_u32(27146u, 28u)], 4294967295u) << (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], global2[_wgslsmith_index_u32(1u, 28u)], u_input.a, global2[_wgslsmith_index_u32(19295u, 28u)]) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    }
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-845.0, global1.x, -209.0)))), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), 1347.0, _wgslsmith_f_op_f32(-global1.x))))));
    switch (max(_wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(13566, -2147483648, -1, 25860), -vec4<i32>(-14113, 1, -18053, -31487)), _wgslsmith_mult_vec4_i32(vec4<i32>(-8336, -2147483648, -2147483648, 61002), vec4<i32>(-14747, -14104, -1, -17051)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)), max((vec4<i32>(1, 23840, -54514, 1) ^ vec4<i32>(-1, -20120, 2147483647, 0)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-1, -1, 1, -63166), vec4<i32>(23624, 0, 1, 0), vec4<i32>(-5487, 1, 1, 26251)), vec4<i32>(_wgslsmith_clamp_i32(0, -1, -19665), -6616, -12447, 1))), min(abs(-_wgslsmith_sub_i32(-6142, -47275)), select(~countOneBits(2147483647), _wgslsmith_dot_vec2_i32(vec2<i32>(42865, 2147483647), vec2<i32>(0, 0)), !false || (-1 < 0))))) {
        case -62905: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                continue;
            }
            global2 = array<u32, 28>();
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var var_0 = Struct_1(0u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u), 16173u), global2[_wgslsmith_index_u32(4294967295u, 28u)], ~u_input.a) & 4294967295u, -(~(~(-37761 | 2147483647))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(1287), _wgslsmith_mult_i32(1, -30070)), _wgslsmith_add_vec2_i32(select(vec2<i32>(59185, -77417), vec2<i32>(-1, 1), false), max(vec2<i32>(1, -25746), vec2<i32>(-1, 42327)))), 1 << (~global2[_wgslsmith_index_u32(44661u, 28u)] % 32u), ~(~12905) ^ countOneBits(~1), firstTrailingBit(-25246)));
                global2 = array<u32, 28>();
            }
            switch (-(~firstLeadingBit(20554))) {
                default: {
                    var var_0 = 408.0;
                    global2 = array<u32, 28>();
                    var var_1 = Struct_1(reverseBits(global2[_wgslsmith_index_u32(1u, 28u)]), ~global2[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 28u)]), 28u)], 2147483647, vec4<i32>(-1) * -(~vec4<i32>(1, 2252, -20842, -29081)));
                    var var_2 = u_input.a;
                }
            }
        }
        case -2147483648: {
            global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -247.0)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x)))) + 1155.0)));
            global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-184.0, _wgslsmith_f_op_f32(sign(1000.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) * _wgslsmith_f_op_f32(-916.0)) - -1153.0)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(105.0, _wgslsmith_f_op_f32(-global1.x), -1508.0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000.0, 544.0, -1189.0), vec3<f32>(1151.0, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-128.0, global1.x, global1.x)))))) - vec3<f32>(-814.0, global1.x, _wgslsmith_f_op_f32(1000.0 + global1.x))));
        }
        case -4681: {
            if (select(36683u > _wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)] >> (u_input.a % 32u), 104032u), any(vec3<bool>(u_input.a == global2[_wgslsmith_index_u32(u_input.a, 28u)], false & true, false)), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))) | !(~(-1) == ~_wgslsmith_add_i32(-2147483648, -37367))) {
                var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -673.0, global1.x) - vec3<f32>(global1.x, global1.x, global1.x))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), global1.x))));
                global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, -396.0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-530.0, global1.x, var_0.x), vec3<f32>(283.0, global1.x, 1306.0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 152.0, 1000.0) + vec3<f32>(599.0, -1000.0, -672.0)))) * vec3<f32>(-640.0, var_0.x, _wgslsmith_f_op_f32(global1.x - -1000.0)))));
                global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-872.0, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 355.0, -1027.0) * vec3<f32>(var_0.x, global1.x, 897.0)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(721.0, var_0.x, global1.x) - vec3<f32>(876.0, var_0.x, -1164.0)) + vec3<f32>(var_0.x, -280.0, 2036.0)))))));
                global3 = _wgslsmith_f_op_f32(-var_0.x);
                let var_1 = Struct_1(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.a, 28u)], _wgslsmith_dot_vec4_u32(~(~vec4<u32>(15045u, global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], 4294967295u)), ~vec4<u32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(1u, 28u)], 1u))), 20517u, _wgslsmith_add_i32(~(-8277 | ~(-2147483648)), ~(_wgslsmith_mult_i32(12170, 2147483647) ^ reverseBits(2147483647))), vec4<i32>(-17249, -(i32(-1) * -2147483647), _wgslsmith_add_i32(-15177, ~_wgslsmith_dot_vec2_i32(vec2<i32>(11137, -1), vec2<i32>(-2147483648, 2147483647))), -26887));
            }
        }
        default: {
            return Struct_1(0u, ~0u, _wgslsmith_add_i32(_wgslsmith_mod_i32(-14725 ^ _wgslsmith_clamp_i32(2147483647, 2147483647, -2147483648), _wgslsmith_sub_i32(~(-1), -23531)), -(i32(-1) * -2147483648)), ~(~vec4<i32>(~(-2147483648), -1, firstTrailingBit(-2147483648), 1)));
        }
    }
    let var_0 = !((53653 < min(select(-2147483648, -3264, false), 57914)) || false);
    return Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(~u_input.a, 28u)], 0u), vec2<u32>(~(~15735u), u_input.a)), abs(~min(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 28u)])) ^ _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(49188u, 28u)], 26690u), 40872, firstLeadingBit(abs(reverseBits(vec4<i32>(20371, 2147483647, -1, 2147483647)))));
}

fn func_7(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    switch (-1) {
        case 1: {
            global2 = array<u32, 28>();
            var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -1607.0)))), _wgslsmith_f_op_f32(trunc(global1.x))));
            var var_1 = func_5();
            switch (-_wgslsmith_sub_i32(-19464, -_wgslsmith_div_i32(-25929, -2147483648) ^ -67792)) {
                case -2147483648: {
                }
                case 1: {
                    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.b, select(~73248u, 27209u, !(true & false)), ~u_input.a), ~(~(vec3<u32>(u_input.a, u_input.a, arg_1.x) << (arg_1.wzz % vec3<u32>(32u))) << (vec3<u32>(var_1.b | u_input.a, arg_1.x | 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(62353u, 40632u, 4294967295u), vec3<u32>(var_1.a, u_input.a, u_input.a))) % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(reverseBits(~u_input.a), func_5().a, _wgslsmith_mult_u32(75980u, ~var_1.a))));
                }
                case 6992: {
                    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1653.0 + 649.0), global1.x);
                    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-390.0 + -1260.0) - _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(493.0 * -1000.0), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(-1000.0)))), false | (select(arg_2.d.x, var_1.c, false) <= arg_2.c))));
                }
                default: {
                }
            }
        }
        default: {
            if (!(!(_wgslsmith_f_op_f32(-global1.x) == global1.x))) {
                var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1122.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(880.0, _wgslsmith_f_op_f32(floor(global1.x)), any(vec2<bool>(false, false))))))) - global1.x);
                let var_1 = arg_1;
                let var_2 = ~vec4<u32>(var_1.x, ~arg_1.x, ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a << (global2[_wgslsmith_index_u32(arg_1.x, 28u)] % 32u), 28u)], 28u)], 45136u), u_input.a);
                let var_3 = arg_2;
            }
            let var_0 = _wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec4_u32(max(~arg_1, ~arg_1), arg_1));
            switch (~(-_wgslsmith_div_i32(_wgslsmith_sub_i32(~43345, -1 << (60850u % 32u)), ~_wgslsmith_dot_vec4_i32(arg_2.d, vec4<i32>(2147483647, 2825, -2147483648, 0))))) {
                case -1: {
                    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1095.0, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2250.0, global1.x, -2383.0), vec3<f32>(253.0, global1.x, -2164.0)))))))));
                    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(101.0 * global1.x))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.x)))))) - vec3<f32>(1141.0, 1067.0, _wgslsmith_f_op_f32(1248.0 - 1765.0)));
                    let var_2 = Struct_1(~var_0, arg_2.b, min(arg_2.d.x >> ((1u & firstLeadingBit(arg_2.b)) % 32u), firstTrailingBit(_wgslsmith_mod_i32(arg_2.d.x, -2147483648)) | ((9025 << (var_0 % 32u)) & 2915)), abs(arg_2.d));
                    let var_3 = func_5().d;
                }
                case -54084: {
                    let var_1 = !(!(((true || true) && (arg_2.c > 54694)) != (select(false, true, true) && !false)));
                    var var_2 = _wgslsmith_f_op_f32(ceil(1073.0));
                }
                default: {
                    global0 = array<vec2<f32>, 26>();
                    let var_1 = arg_2;
                    let var_2 = func_5();
                }
            }
            let var_1 = ~_wgslsmith_mod_i32(arg_2.c, reverseBits(-1));
        }
    }
    let var_0 = arg_2;
    switch (arg_2.c) {
        case -2147483648: {
        }
        case 0: {
            global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1702.0, global1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2791.0, -176.0, global1.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-280.0, -2556.0, -779.0) - vec3<f32>(global1.x, 1736.0, 207.0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1.x)))), global1.x, _wgslsmith_f_op_f32(-185.0))), select(!vec3<bool>(!true, !false, false), select(vec3<bool>(true && false, !true, false), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), (arg_1.x >> (21837u % 32u)) > _wgslsmith_sub_u32(1u, var_0.b)), vec3<bool>(!true, all(vec3<bool>(false, true, false)) && (1 < 0), false))));
            global0 = array<vec2<f32>, 26>();
            let var_1 = func_5();
            var var_2 = arg_2;
        }
        default: {
            switch (var_0.c) {
                case 19308: {
                    global2 = array<u32, 28>();
                    global1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2951.0 - 740.0))))));
                    let var_1 = Struct_1(~(arg_0.x | ~arg_2.a), u_input.a, firstLeadingBit(-1), vec4<i32>(-2147483648, arg_2.d.x, ~var_0.d.x, arg_2.c | 0) ^ vec4<i32>(i32(-1) * -1, ~2147483647, 9411, -35530));
                    global3 = -1434.0;
                }
                case 21622: {
                    return select(select(!select(vec2<bool>(false, true), !vec2<bool>(false, false), vec2<bool>(true, true)), select(!vec2<bool>(true, true), vec2<bool>(!true, true), !(!true)), true || true), vec2<bool>(!(select(true, false, false) && func_6(var_0, var_0, arg_2.d.wx)), global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(6510u, arg_1.x), vec2<u32>(arg_1.x, var_0.a)), _wgslsmith_mod_u32(0u, u_input.a)), 28u)] < u_input.a), !vec2<bool>(_wgslsmith_f_op_f32(-global1.x) >= global1.x, !(!false)));
                }
                case 1: {
                    global1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -848.0), 253.0, _wgslsmith_f_op_f32(max(863.0, _wgslsmith_f_op_f32(step(1497.0, 1270.0)))))))));
                    let var_1 = ~24200u ^ 0u;
                    let var_2 = all(vec3<bool>(!(!false), !(!false), var_0.d.x < _wgslsmith_sub_i32(min(-58308, -26041), firstLeadingBit(-1))));
                    global0 = array<vec2<f32>, 26>();
                }
                case 0: {
                    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1411.0, 215.0, true)) * _wgslsmith_f_op_f32(global1.x * -1618.0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(829.0)), 983.0)), _wgslsmith_f_op_f32(select(275.0, 1115.0, false))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-523.0, global1.x)), _wgslsmith_f_op_f32(-547.0), -912.0 == global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-370.0)))))));
                    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -1495.0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -900.0)))))));
                }
                default: {
                    let var_1 = var_0;
                    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(765.0, -741.0, -1000.0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(1127.0, global1.x, 1072.0))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, -104.0))))))));
                    let var_2 = Struct_1(var_0.a, 1u, -2147483648 << (~arg_0.x % 32u), min(var_1.d | _wgslsmith_sub_vec4_i32(var_0.d, vec4<i32>(var_1.d.x, 21534, -2147483648, arg_2.c)), -(-var_0.d | ~var_0.d)));
                    let var_3 = vec3<bool>((-var_2.d.x | 0) < _wgslsmith_mult_i32(1, -1 & (-30953 ^ var_0.d.x)), true, all(vec2<bool>(true, any(!vec4<bool>(true, false, false, true)))));
                }
            }
            let var_1 = !vec4<bool>(var_0.d.x != (-arg_2.d.x & 0), true, true, any(vec2<bool>(any(vec2<bool>(true, true)), !false)));
            var var_2 = abs(~arg_0);
            switch (var_0.d.x) {
                case 0: {
                    global0 = array<vec2<f32>, 26>();
                    let var_3 = _wgslsmith_f_op_f32(f32(-1.0) * -744.0);
                }
                case -2147483648: {
                    var_2 = ~arg_0;
                }
                default: {
                    global2 = array<u32, 28>();
                    var var_3 = func_5();
                }
            }
            if (972.0 >= _wgslsmith_f_op_f32(-115.0 - _wgslsmith_f_op_f32(-global1.x))) {
            }
        }
    }
    var var_1 = select(arg_1.x, ~46056u, false);
    return !vec2<bool>(all(vec2<bool>(!false, u_input.a != arg_1.x)), !func_6(Struct_1(arg_2.b, 6751u, arg_2.c, vec4<i32>(-20325, var_0.c, 2147483647, 0)), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 28u)], 1u, -59030, vec4<i32>(var_0.d.x, 1, arg_2.c, -40405)), vec2<i32>(var_0.c, arg_2.c) & arg_2.d.yz));
}

fn func_4() -> Struct_1 {
    var var_0 = u_input.a;
    if (select(all(func_7(vec2<u32>(4294967295u, 0u) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 106871u, 50231u, 61705u) & vec4<u32>(u_input.a, 54645u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 28u)]), func_5())) || func_6(func_5(), func_5(), vec2<i32>(-2147483647, _wgslsmith_div_i32(-72719, 2147483647))), any(!(!vec4<bool>(true, true, true, false))) || (1918.0 < -1192.0), false)) {
        let var_1 = func_5();
        for (var var_2: i32; var_2 <= -1; var_2 -= 1) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            var_2 = -countOneBits(var_1.d.x);
            var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(683.0 + global1.x), global1.x)) + _wgslsmith_f_op_f32(-1522.0)))));
            var var_4 = var_1;
            var_2 = firstLeadingBit(2602);
        }
        let var_2 = u_input.a;
        global3 = -246.0;
        switch (reverseBits(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.c, _wgslsmith_sub_i32(-1, var_1.d.x)), ~var_1.d.x << (global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34715u, 28u)], 28u)], var_2), 28u)] % 32u))))) {
            default: {
            }
        }
    }
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-131.0 * _wgslsmith_f_op_f32(-global1.x)), -1424.0, 975.0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-308.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1588.0 + global1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) * _wgslsmith_f_op_f32(floor(global1.x))))));
    for (var var_2 = 34983; var_2 > 0; global3 = _wgslsmith_f_op_f32(-2136.0 + 339.0)) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        var_2 = -37474;
        if (all(vec3<bool>(func_7(reverseBits(vec2<u32>(0u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(31019u, global2[_wgslsmith_index_u32(34274u, 28u)], global2[_wgslsmith_index_u32(70311u, 28u)], 4294967295u), vec4<u32>(4294967295u, 0u, 41703u, 4294967295u)) | min(vec4<u32>(global2[_wgslsmith_index_u32(8336u, 28u)], u_input.a, 0u, 0u), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 28u)], 24480u, 28081u)), func_5()).x, true, !all(vec4<bool>(false, false, false, true))))) {
        }
        for (var var_3 = -2147483648; !(~_wgslsmith_sub_u32(22206u, 67583u & u_input.a) > abs(~(78537u ^ 1u))); var_3 -= 1) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var var_4 = func_5();
            return Struct_1(var_4.a, (~(~0u) ^ abs(select(var_4.b, global2[_wgslsmith_index_u32(u_input.a, 28u)], false))) | ~1u, 21138, var_4.d);
        }
        var var_3 = _wgslsmith_sub_i32(~_wgslsmith_add_i32(_wgslsmith_add_i32(-6851, -1) | (i32(-1) * -3653), 2147483647), -40320);
        var var_4 = -(~_wgslsmith_sub_i32((-9537 << (global2[_wgslsmith_index_u32(4294967295u, 28u)] % 32u)) | ~110709, _wgslsmith_div_i32(_wgslsmith_mult_i32(-25159, 2147483647), 11508)));
    }
    switch (-_wgslsmith_mult_i32(countOneBits(_wgslsmith_clamp_i32(-1, -2147483648, abs(0))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-4091, 6595, -21112), -vec3<i32>(0, 1, 8719))))) {
        case 2147483647: {
            let var_2 = -19907;
            var var_3 = Struct_1(4294967295u, ~global2[_wgslsmith_index_u32(0u, 28u)], -2147483648, -countOneBits(vec4<i32>(min(8497, -12043), -3436, _wgslsmith_div_i32(38854, var_2), ~1)));
            global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-901.0)), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-var_1.x))), any(select(!vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(true, true, true))))));
            switch (-19475) {
                case 2147483647: {
                    var var_4 = global1.x;
                    let var_5 = func_5();
                    return Struct_1(reverseBits(max(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_5.a << (43145u % 32u), _wgslsmith_mult_u32(u_input.a, global2[_wgslsmith_index_u32(41890u, 28u)])), 28u)], 25236u)), firstLeadingBit(67780u), ~(-var_5.c), var_3.d);
                }
                default: {
                    let var_4 = ~57337u;
                    var var_5 = select(select(select(select(!vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), func_7(vec2<u32>(14334u, 1u), vec4<u32>(1u, u_input.a, 48823u, 4294967295u), Struct_1(var_4, var_4, var_2, var_3.d)).x), vec3<bool>(!false, false & true, var_3.d.x >= -2147483648), vec3<bool>(func_6(Struct_1(1u, 66893u, var_2, var_3.d), Struct_1(4294967295u, u_input.a, -1, var_3.d), vec2<i32>(var_3.c, var_3.c)), global2[_wgslsmith_index_u32(80867u, 28u)] == 1u, all(vec4<bool>(true, false, true, true)))), select(select(!vec3<bool>(false, false, true), !vec3<bool>(true, false, true), !false), !vec3<bool>(false, false, false), !(true != true)), vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), false, ~var_2 == abs(var_2))), !vec3<bool>(any(!vec3<bool>(false, false, true)), !(false & false), false), vec3<bool>(!((10160u >> (7493u % 32u)) >= 9904u), false, !all(!vec3<bool>(true, true, true))));
                    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(397.0 * 1798.0), _wgslsmith_f_op_f32(global1.x + 2328.0), _wgslsmith_div_f32(223.0, var_1.x)), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-var_1.x), global1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-679.0, global1.x, -738.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 2200.0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1483.0, -2107.0, 189.0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -936.0), _wgslsmith_f_op_f32(-810.0), _wgslsmith_f_op_f32(1000.0 * 1210.0)))), select(!(!(!var_5.x)), var_5.x, false)));
                    var var_6 = select(vec3<bool>(!(!false), !var_5.x, var_5.x), !vec3<bool>(false, !var_5.x, var_5.x), all(vec4<bool>(any(func_7(vec2<u32>(4294967295u, var_3.b), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_4, 28u)], 28u)], 4294967295u, 66470u), Struct_1(var_3.b, var_3.a, 0, var_3.d))), false, false, !all(vec4<bool>(var_5.x, var_5.x, var_5.x, true)))));
                }
            }
        }
        case 34068: {
            var var_2 = _wgslsmith_mult_u32(~4294967295u, 0u);
            let var_3 = ~(2147483647 & max(~_wgslsmith_clamp_i32(-2147483648, 58798, 2147483647), -1));
            let var_4 = func_5();
            global0 = array<vec2<f32>, 26>();
            let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1096.0, global1.x, -1006.0)), vec3<f32>(global1.x, var_1.x, global1.x), !vec3<bool>(true, false, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, -954.0))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_1.x, 361.0), vec3<f32>(764.0, var_1.x, -1532.0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2132.0, var_1.x, global1.x)), false | true))))));
        }
        case -70349: {
            switch (29703) {
                case -26825: {
                    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), -836.0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(var_1.x * -397.0), _wgslsmith_f_op_f32(var_1.x - global1.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, global1.x, global1.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global1.x, global1.x) - vec3<f32>(-979.0, 463.0, var_1.x))))));
                    let var_2 = Struct_1(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 28u)], -2147483648, ~func_5().d & countOneBits(func_5().d | vec4<i32>(2577, -67448, 1, -17610)));
                }
                case 1: {
                    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, var_1.x)) * _wgslsmith_f_op_f32(trunc(-1424.0))), _wgslsmith_f_op_f32(max(956.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1.x)), 180.0))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-916.0, global1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1314.0, -1188.0, var_1.x))))))));
                }
                default: {
                    var var_2 = func_5();
                    let var_3 = var_2.d.x;
                }
            }
            if (!(!true)) {
                let var_2 = vec4<bool>(false, !true, true, (abs(-2147483648 >> (u_input.a % 32u)) & _wgslsmith_mult_i32(_wgslsmith_add_i32(89829, 21890), 50202)) != _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(44671, -1, 16992, 0), vec4<i32>(-7064, -6859, 39959, 2147483647)), -39213));
                var var_3 = func_5();
                let var_4 = vec2<u32>(_wgslsmith_mod_u32(select(4180u, ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 28u)], _wgslsmith_f_op_f32(floor(1000.0)) >= global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b >> (16372u % 32u), 20153u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~15993u, 28u)], 28u)]), vec3<u32>(global2[_wgslsmith_index_u32(1u, 28u)], var_3.a, global2[_wgslsmith_index_u32(21697u, 28u)]) & max(vec3<u32>(96298u, 1u, u_input.a), vec3<u32>(u_input.a, 21674u, 0u)))), ~(~u_input.a));
                global0 = array<vec2<f32>, 26>();
            }
        }
        default: {
            for (var var_2 = 2147483647 | (firstTrailingBit(~(i32(-1) * -2147483648)) & -(~(~2147483647))); ; var_2 -= 1) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
            switch (-6710) {
                case -12334: {
                    var var_2 = func_5();
                    let var_3 = 4294967295u >> (_wgslsmith_mult_u32(var_2.a, 93638u) % 32u);
                    let var_4 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(26997u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 5977u), vec2<u32>(var_2.a, 4294967295u)), ~var_3, ~u_input.a), _wgslsmith_add_vec4_u32(abs(vec4<u32>(102172u, 24218u, 31487u, 103611u)), ~vec4<u32>(4294967295u, 49967u, global2[_wgslsmith_index_u32(2247u, 28u)], u_input.a))) | 62592u, _wgslsmith_mod_u32(var_2.a, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(60756u, 28u)]), vec2<u32>(4294967295u, u_input.a) & vec2<u32>(44764u, 1u))), 38053, ~min(var_2.d, _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.c, 2147483647, 50347, var_2.c) >> (vec4<u32>(42399u, u_input.a, 56210u, global2[_wgslsmith_index_u32(u_input.a, 28u)]) % vec4<u32>(32u)), var_2.d)));
                    var_2 = func_5();
                }
                case -2147483648: {
                    let var_2 = ~func_5().d.yz;
                    let var_3 = var_1.x;
                    let var_4 = func_5();
                }
                default: {
                    let var_2 = func_5();
                    let var_3 = vec3<bool>(true, func_6(var_2, Struct_1(~u_input.a, ~var_2.a, ~(~var_2.d.x), vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.d.yw, var_2.d.wy), var_2.d.x >> (14443u % 32u), ~(-8643), 19997)), ~(-_wgslsmith_add_vec2_i32(var_2.d.zy, vec2<i32>(-51857, var_2.d.x)))), any(func_7(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(20929u, 1u, var_2.b, 95185u), vec4<u32>(4294967295u, 1u, global2[_wgslsmith_index_u32(var_2.a, 28u)], 16159u)), min(var_2.a, global2[_wgslsmith_index_u32(4294967295u, 28u)])), vec4<u32>(0u, ~19851u, select(4294967295u, 0u, false), u_input.a | 4294967295u), func_5())));
                    let var_4 = func_5();
                    var var_5 = var_2;
                }
            }
            let var_2 = vec4<i32>(-(~0), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(0, firstTrailingBit(-31735)), -2147483648), select(i32(-1) * -(~(-4644)), firstLeadingBit(countOneBits(-2147483648)) ^ ~(-73421), !(global1.x <= 206.0)), -19454);
            if (all(vec2<bool>((39837 == (2147483647 >> (4294967295u % 32u))) & func_6(Struct_1(119957u, 0u, var_2.x, var_2), Struct_1(57963u, u_input.a, var_2.x, vec4<i32>(0, -28093, var_2.x, var_2.x)), vec2<i32>(var_2.x, 4339) | vec2<i32>(26982, var_2.x)), true))) {
                var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global1.x * var_1.x), -1733.0, _wgslsmith_f_op_f32(1922.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1306.0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x * var_1.x), _wgslsmith_f_op_f32(global1.x + var_1.x), _wgslsmith_f_op_f32(min(var_1.x, -301.0))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-636.0), 570.0)))));
            }
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_3 = 4294967295u;
                let var_4 = var_1.x;
                break;
            }
        }
    }
    return func_5();
}

fn func_8(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<i32> {
    global0 = array<vec2<f32>, 26>();
    loop {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        continue;
    }
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        global1 = vec3<f32>(_wgslsmith_div_f32(arg_0.x, 178.0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000.0 * global1.x) - global1.x), _wgslsmith_f_op_f32(ceil(-1545.0)))))), _wgslsmith_f_op_f32(-arg_0.x));
    }
    return firstLeadingBit(~vec4<i32>(_wgslsmith_sub_i32(countOneBits(-2147483648), -arg_1.c), -7944, arg_1.c, arg_1.c));
}

fn func_9(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<f32>, 26>();
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1060.0))));
    let var_0 = arg_0.x;
    for (var var_1: i32; ; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        loop {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(61061u, u_input.a, u_input.a, arg_1.b), vec4<u32>(18875u, 92476u, u_input.a, 3127u)) >> (select(vec4<u32>(global2[_wgslsmith_index_u32(43075u, 28u)], arg_1.b, arg_1.b, global2[_wgslsmith_index_u32(0u, 28u)]), vec4<u32>(27356u, arg_1.b, 50391u, global2[_wgslsmith_index_u32(u_input.a, 28u)]), true) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(arg_1.a, 28u)], 1420u, 6124u, 26072u) ^ vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.a, 28u)], 28u)], u_input.a, arg_1.b), ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8210u, 28u)], 28u)], u_input.a, 29243u, 1u), vec4<u32>(u_input.a, 0u, 37587u, 1u))), u_input.a, abs(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_1.b, 66445u)), _wgslsmith_mod_u32(arg_1.b >> (arg_1.a % 32u), u_input.a))));
            var var_3 = arg_1;
            var_3 = arg_1;
        }
        let var_2 = _wgslsmith_sub_vec2_i32(firstTrailingBit(reverseBits(arg_0.zy & ~arg_1.d.xw)), -((arg_1.d.yz & select(arg_0.xy, arg_1.d.yz, false)) & ~(~vec2<i32>(arg_0.x, arg_1.c))));
        loop {
            if (LOOP_COUNTERS[15u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
            let var_3 = arg_1.a;
            var var_4 = _wgslsmith_f_op_f32(abs(-353.0));
            global0 = array<vec2<f32>, 26>();
        }
        if (!all(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), !vec3<bool>(false, true, false), true), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))))) {
            var_1 = reverseBits(~var_0);
        }
    }
    switch (_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mod_i32(42641, -1)), ~1) & var_0) {
        case 46168: {
            for (var var_1 = -26684; var_1 == -8996; var_1 += 1) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                let var_2 = ~var_0;
                break;
            }
            global3 = global1.x;
            var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(~var_0, 1), var_0), _wgslsmith_sub_vec2_i32(~arg_1.d.wx, abs(vec2<i32>(-17451 >> (global2[_wgslsmith_index_u32(0u, 28u)] % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, arg_0.x, -1, var_0), arg_1.d)))), arg_1.d.wy);
            for (; any(select(select(vec4<bool>(false, 0u <= global2[_wgslsmith_index_u32(1u, 28u)], false, true), vec4<bool>(false, -170.0 > global1.x, true, true), select(!vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false)), select(!vec4<bool>(false, true, false, false), vec4<bool>(false, !true, true && false, any(vec3<bool>(true, true, true))), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), !(!true))); ) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                continue;
            }
        }
        case -4863: {
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                break;
            }
            var var_1 = firstTrailingBit(~abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b, 0u, 74860u), vec3<u32>(u_input.a, 4294967295u, arg_1.a))));
            for (var var_2 = -27714; !(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1) * -69700, arg_1.c), arg_1.d.zx) != ~(-var_0)); var_2 -= 1) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_3 = arg_1;
                var var_4 = arg_1;
                var var_5 = _wgslsmith_mod_vec4_u32(vec4<u32>(~13979u, ~firstTrailingBit(3427u << (37147u % 32u)), abs(~0u | (var_3.a << (2694u % 32u))), var_1.x), vec4<u32>(var_4.a, abs(36516u) << (var_4.a % 32u), u_input.a, firstTrailingBit(0u)));
                break;
            }
        }
        default: {
            global3 = global1.x;
        }
    }
    return func_4();
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 217.0));
    let var_0 = func_9(func_8(vec3<f32>(_wgslsmith_div_f32(2048.0, -940.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -791.0)), 518.0), func_4()), Struct_1(26068u, 4294967295u, abs(2147483647 ^ -2147483648) ^ countOneBits(-49822), _wgslsmith_mod_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(-46513, -2147483648, -24511, 0))), reverseBits(vec4<i32>(-1, 0, -31486, 1)))));
    var var_1 = func_9(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, -23537, _wgslsmith_mult_i32(23013, var_0.d.x), -var_0.d.x) & var_0.d, var_0.d), func_5());
    global0 = array<vec2<f32>, 26>();
    for (; ; ) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        loop {
            if (LOOP_COUNTERS[21u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
            global3 = _wgslsmith_f_op_f32(exp2(global1.x));
            global2 = array<u32, 28>();
            continue;
        }
        for (var var_2: i32; all(vec3<bool>(any(arg_0.wx) | false, !all(!vec3<bool>(false, true, arg_0.x)), arg_0.x)); var_2 -= 1) {
            if (LOOP_COUNTERS[22u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        }
        if (!(!false) & !false) {
        }
        continue;
    }
    return arg_0.x & select(arg_0.x, arg_0.x, (!arg_0.x || all(vec4<bool>(false, true, false, arg_0.x))) & any(select(arg_0.xww, vec3<bool>(arg_0.x, arg_0.x, true), false)));
}

fn func_10(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_1 {
    for (var var_0 = 26492; ; ) {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        loop {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        }
        return Struct_1(~(arg_1.x | arg_1.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(arg_1.x, 28u)], ~(~u_input.a)), 0u), 21254, func_8(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1936.0), global1.x, _wgslsmith_f_op_f32(-global1.x))), Struct_1(global2[_wgslsmith_index_u32(~func_5().b, 28u)], 15392u, -32766, vec4<i32>(-60209, 0, -9485, 0) << (vec4<u32>(global2[_wgslsmith_index_u32(55920u, 28u)], 0u, 4294967295u, 5014u) % vec4<u32>(32u)))));
    }
    for (var var_0 = -1; any(!select(vec2<bool>(true & arg_0.x, false || true), vec2<bool>(true & arg_0.x, 0 >= 1), all(!arg_0.yz))); global0 = array<vec2<f32>, 26>()) {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        let var_1 = arg_1;
        if (~32072u < select(~4294967295u, _wgslsmith_mult_u32(~(~37188u), 0u), all(vec4<bool>(arg_0.x | true, all(arg_0.xy), false, arg_0.x && arg_0.x)))) {
            var_0 = _wgslsmith_div_i32(-32925, ~min(-_wgslsmith_div_i32(-18501, 0), -_wgslsmith_mult_i32(26540, 79363)));
            let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686.0 + global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), _wgslsmith_f_op_f32(f32(-1.0) * -367.0), 1226.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -236.0, global1.x, global1.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 466.0, -1791.0, -285.0), vec4<f32>(-869.0, 442.0, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1809.0, global1.x, -2119.0, 122.0))) + vec4<f32>(global1.x, global1.x, global1.x, 252.0)), false))));
        }
    }
    let var_0 = Struct_1(0u, ~(~(~1u)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1, -19847) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<i32>(0, -1)), (i32(-1) * -2147483648) ^ firstLeadingBit(22834)), vec2<i32>(_wgslsmith_dot_vec3_i32(func_8(vec3<f32>(global1.x, -358.0, -692.0), Struct_1(4294967295u, global2[_wgslsmith_index_u32(112951u, 28u)], 8850, vec4<i32>(1, 43183, 2147483647, -2147483648))).wyy, vec3<i32>(-19202, -22595, 49431)), -1)), ~(~countOneBits(vec4<i32>(-1, 46375, -23115, 34885))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, u_input.a, ~global2[_wgslsmith_index_u32(22148u, 28u)], _wgslsmith_clamp_u32(20558u, 20827u, 1u)), ~select(vec4<u32>(u_input.a, 10460u, 12388u, global2[_wgslsmith_index_u32(45029u, 28u)]), vec4<u32>(99833u, 0u, 37256u, 52125u), vec4<bool>(true, arg_0.x, true, false)), select(~vec4<u32>(arg_1.x, arg_1.x, 7073u, global2[_wgslsmith_index_u32(u_input.a, 28u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, 59492u, 27178u), vec4<u32>(1u, 49065u, arg_1.x, 1269u)), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x)))) % vec4<u32>(32u)));
    let var_1 = var_0;
    let var_2 = vec3<bool>(arg_0.x, false, arg_0.x);
    return func_5();
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global1.x;
    global0 = array<vec2<f32>, 26>();
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        break;
    }
    switch (-arg_0.d.x | arg_0.c) {
        case -27669: {
            if (!(!any(!vec4<bool>(false, false, false, false))) | (~select(max(u_input.a, 11582u), ~global2[_wgslsmith_index_u32(4294967295u, 28u)], -1043.0 < global1.x) != _wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 20939u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9746u, 1u), vec3<u32>(40754u, global2[_wgslsmith_index_u32(4294967295u, 28u)], 68797u))))) {
                global3 = 688.0;
                var var_1 = arg_0;
                var var_2 = arg_0;
            }
            var var_1 = arg_0.d.yxz;
            let var_2 = arg_0;
            var var_3 = func_10(!(!vec3<bool>(func_3(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, false, true, false)), false)), ((firstLeadingBit(vec2<u32>(0u, u_input.a)) >> (vec2<u32>(29056u, 56794u) % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(36891u, global2[_wgslsmith_index_u32(u_input.a, 28u)])) % vec2<u32>(32u))) ^ vec2<u32>(countOneBits(~1u), ~0u ^ 1u));
            if (func_3(select(!vec4<bool>(!false, !true, select(false, false, true), 890.0 >= global1.x), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true), !(!vec4<bool>(true, true, false, true)), false), !vec4<bool>(!false, true, true | false, 0 != -1)))) {
                var var_4 = arg_0;
                var var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(-156.0)), global1.x, !false & false)), _wgslsmith_f_op_f32(f32(-1.0) * -233.0), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -992.0), global1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -963.0)))))));
                var var_6 = global1.x;
                let var_7 = var_2;
            }
        }
        case -2147483648: {
            global0 = array<vec2<f32>, 26>();
        }
        case 13665: {
            var var_1 = vec2<bool>(!all(vec2<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, false, false)))), !all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(false, false, false), !true)));
            for (var var_2 = 2147483647; var_2 <= 64415; var_2 -= 1) {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                var_1 = vec2<bool>(var_1.x, var_1.x);
                global3 = 418.0;
            }
        }
        default: {
        }
    }
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))) <= -646.0;
    return arg_0;
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 28>();
    let var_0 = u_input.a;
    switch (22156) {
        default: {
            var var_1 = func_2(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 13321u, 23680u), vec4<u32>(4294967295u, 7897u, global2[_wgslsmith_index_u32(var_0, 28u)], var_0))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 0u, global2[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a), ~vec4<u32>(74283u, var_0, u_input.a, global2[_wgslsmith_index_u32(31994u, 28u)]))), 28u)], 88920u, -(~abs(-4615)), (firstTrailingBit(vec4<i32>(-34262, -24242, -2147483648, -1)) | select(vec4<i32>(-1833, -9877, -2147483648, 51238), vec4<i32>(-2147483648, -2147483648, -6443, 1), vec4<bool>(true, false, false, true))) >> (countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(var_0, 28u)], u_input.a, global2[_wgslsmith_index_u32(4294967295u, 28u)], 0u)) % vec4<u32>(32u))));
            if (false) {
                let var_2 = Struct_1(~(~(~var_0)) << (_wgslsmith_div_u32(min(u_input.a, var_1.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0, global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<u32>(var_0, global2[_wgslsmith_index_u32(0u, 28u)], 0u)) & ~7828u) % 32u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 799u), var_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]), 28u)], 0u), -2352, vec4<i32>(~(~1) | (var_1.c | 2147483647), ~2147483647, var_1.d.x, var_1.d.x));
                global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(116.0 * global1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(934.0 * _wgslsmith_f_op_f32(global1.x - -507.0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_div_f32(global1.x, global1.x), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-469.0, global1.x))) + global1.x), all(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, true))))));
                global2 = array<u32, 28>();
            }
        }
    }
    var var_1 = false;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1348.0)), global1.x);
    return func_10(!(!(!vec3<bool>(false, false, true))), vec2<u32>(0u, ~(~155u) | u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    if (false) {
        loop {
            if (LOOP_COUNTERS[28u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            break;
        }
    }
    global0 = array<vec2<f32>, 26>();
    let var_0 = ~abs(-(~_wgslsmith_mod_i32(1, -2147483648)));
    let var_1 = 0u;
    global0 = array<vec2<f32>, 26>();
    loop {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
        global3 = 716.0;
    }
    var var_2 = func_1();
    if (all(vec2<bool>(!(!false), func_7(_wgslsmith_mod_vec2_u32(max(vec2<u32>(83182u, global2[_wgslsmith_index_u32(77249u, 28u)]), vec2<u32>(0u, 27441u)), ~vec2<u32>(92370u, var_1)), _wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 28u)], var_2.a, global2[_wgslsmith_index_u32(var_2.a, 28u)], 48103u), vec4<u32>(21247u, global2[_wgslsmith_index_u32(var_2.a, 28u)], var_1, 73962u) & vec4<u32>(var_2.a, u_input.a, 0u, global2[_wgslsmith_index_u32(var_1, 28u)])), Struct_1(var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(11702u, global2[_wgslsmith_index_u32(var_1, 28u)], 0u), vec3<u32>(global2[_wgslsmith_index_u32(34951u, 28u)], 55717u, u_input.a)), -14471, var_2.d)).x))) {
    }
    let x = u_input.a;
    s_output = StorageBuffer(-(~28631), _wgslsmith_mult_i32(-var_0, var_2.c));
}

