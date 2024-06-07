// {"0:0":[39,237,77,59,19,236,231,249,7,116,83,28,224,224,78,201]}
// Seed: 1930724600062670879

struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12>;

var<private> global1: f32;

var<private> global2: vec2<bool>;

var<private> LOOP_COUNTERS: array<u32, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn func_6(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -1029.0)))))), ~u_input.a.xz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(725.0, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1402.0, arg_0.x, 1000.0) - vec3<f32>(-1394.0, arg_0.x, 228.0)), global2.x)), vec3<f32>(arg_0.x, -412.0, arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(200.0, arg_0.x, 527.0, arg_0.x) * vec4<f32>(arg_0.x, 383.0, arg_0.x, arg_0.x)) * vec4<f32>(arg_0.x, 866.0, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 906.0, arg_0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 147.0, arg_0.x, arg_0.x))), vec4<bool>(true && global2.x, !true, arg_0.x <= -391.0, 4294967295u >= 34348u)))), vec4<u32>(~(~firstTrailingBit(21822u)), reverseBits(41910u) ^ firstLeadingBit(4294967295u >> (1u % 32u)), (91443u & _wgslsmith_mod_u32(4294967295u, 1u)) << (max(65141u, reverseBits(90751u)) % 32u), _wgslsmith_clamp_u32(0u, 1u, 1u >> (firstTrailingBit(0u) % 32u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(626.0)))), var_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-159.0, var_0.c.x))), arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1, arg_1, -24702) | vec3<i32>(arg_1, arg_2, -14129), u_input.a) != -46161)));
    if (arg_1 == select(-1, _wgslsmith_mult_i32(select(var_0.b.x, -16939, arg_3.x), _wgslsmith_sub_i32(arg_1, 30045)) << (~_wgslsmith_dot_vec2_u32(var_0.e.yx, var_0.e.wz) % 32u), !(false | false) | arg_3.x)) {
        if (all(vec3<bool>(arg_3.x, any(arg_3.yz) && any(select(vec3<bool>(true, false, global2.x), vec3<bool>(arg_3.x, arg_3.x, true), global2.x)), global2.x))) {
            var var_2 = 2147483647;
            var_1 = vec3<f32>(var_1.x, var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(543.0 + -1066.0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -506.0) * _wgslsmith_f_op_f32(min(1000.0, var_1.x))))));
            global2 = arg_3.zy;
            var_2 = arg_1;
        }
        var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1101.0 + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-747.0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000.0, -1323.0))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(arg_0.x, var_0.d.x, var_1.x))), _wgslsmith_f_op_vec3_f32(sign(var_0.d.xxz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1.0) * -1275.0), _wgslsmith_f_op_f32(1000.0 + -390.0))))));
    }
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        for (var var_2 = -2147483648; true; var_2 += 1) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            break;
        }
        return ~_wgslsmith_div_vec4_i32(~vec4<i32>(-1, arg_1, -1, 0) << (~var_0.e % vec4<u32>(32u)), abs(abs(vec4<i32>(-8220, arg_1, arg_1, -23612)))) & ~(~vec4<i32>(-var_0.b.x, arg_2, 2147483647, _wgslsmith_add_i32(u_input.a.x, 2147483647)));
    }
    let var_2 = var_0.e;
    return vec4<i32>(23053 << ((reverseBits(1u) | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 28265u, var_2.x), vec3<u32>(var_2.x, var_2.x, var_0.e.x))) % 32u), countOneBits(u_input.b), select(~(-u_input.a.x), 1427, global2.x), countOneBits(u_input.b) ^ ~arg_2) << (select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.x, var_0.e.x, ~4294967295u, abs(81146u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 0u, var_2.x, var_0.e.x), var_2))), ~vec4<u32>(94989u, 4294967295u, _wgslsmith_add_u32(var_0.e.x, 94110u), var_0.e.x), _wgslsmith_f_op_f32(f32(-1.0) * -954.0) < _wgslsmith_f_op_f32(sign(arg_0.x))) % vec4<u32>(32u));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec2<bool> {
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        if (true & true) {
            break;
        }
        if (global2.x) {
            let var_0 = vec2<i32>(~2147483647, u_input.b);
        }
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            continue;
        }
        let var_0 = !select(global2.x, (global2.x || !true) | global2.x, global2.x);
        break;
    }
    if (~0 <= (u_input.b & _wgslsmith_dot_vec4_i32(vec4<i32>(3262, _wgslsmith_mult_i32(arg_3.b.x, 28874), -arg_3.b.x, arg_3.b.x), vec4<i32>(-38564, arg_3.b.x, u_input.a.x, u_input.a.x) << (arg_3.e % vec4<u32>(32u))))) {
        global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.a.a.x)));
        let var_0 = !(!false && !true);
        var var_1 = vec4<i32>(select(_wgslsmith_div_i32(arg_3.b.x, u_input.b), abs(_wgslsmith_add_i32(u_input.b, u_input.a.x)), var_0), reverseBits(_wgslsmith_sub_i32(-2147483648, reverseBits(18266))), ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647, 0), abs(8476)), -6123) & _wgslsmith_sub_vec4_i32(select((vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, -2147483648) & vec4<i32>(30290, 62048, 2147483647, u_input.b)) << (vec4<u32>(arg_3.e.x, arg_3.e.x, 4294967295u, arg_3.e.x) % vec4<u32>(32u)), -abs(vec4<i32>(arg_3.b.x, -1, arg_3.b.x, -30435)), !true), func_6(arg_3.a.a.yy, ~u_input.a.x << (firstTrailingBit(arg_3.e.x) % 32u), 35883, vec4<bool>(!var_0, !var_0, true, global2.x)));
        var var_2 = select(select(select(vec4<bool>(false, !false, true, arg_3.b.x <= var_1.x), vec4<bool>(global2.x, any(vec4<bool>(true, false, true, true)), true, true), false), select(vec4<bool>(true, global2.x, true, global2.x), select(select(vec4<bool>(false, false, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, false), global2.x), select(vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(false, global2.x, true, true), false), !vec4<bool>(true, false, false, true)), (45313u | arg_3.e.x) > _wgslsmith_add_u32(66538u, 1u)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), -194.0 > arg_3.c.x)), vec4<bool>(!(37163u > 1u), any(select(select(vec3<bool>(true, false, false), vec3<bool>(var_0, true, true), vec3<bool>(false, true, global2.x)), vec3<bool>(var_0, false, false), !vec3<bool>(var_0, var_0, false))), any(vec4<bool>(global2.x, var_0, global2.x, var_0)) | var_0, true), vec4<bool>(select(true || var_0, !true | false, false), !global2.x, all(vec3<bool>(select(true, true, false), select(var_0, false, true), false || global2.x)), var_0));
    }
    var var_0 = arg_3.b.x;
    let var_1 = arg_3.a;
    let var_2 = reverseBits(abs(select(~(-vec2<i32>(-52628, -2147483648)), vec2<i32>(_wgslsmith_sub_i32(arg_3.b.x, u_input.a.x), u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_3.e.xz), arg_3.e.yz >> (arg_3.e.wx % vec2<u32>(32u))), 12u)])));
    return global0[_wgslsmith_index_u32(min(~arg_3.e.x, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_3.e.x, arg_3.e.x, _wgslsmith_mult_u32(0u, 27574u)), arg_3.e.x)), 12u)];
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = ~(~(~vec2<u32>(0u, 4294967295u) << ((vec2<u32>(65017u, 25800u) & vec2<u32>(1u, 0u)) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 10256u), vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(32825u, 0u), vec2<u32>(4294967295u, 48187u)) & ~vec2<u32>(0u, 2476u)));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, 55303u << (~_wgslsmith_mult_u32(4294967295u, var_0.x) % 32u)), 29369u), 12u)];
    let var_1 = ~vec4<u32>(var_0.x, ~(~(~12298u)), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_0.x), ~var_0.x, 11115u), vec3<u32>(30783u, ~var_0.x, ~var_0.x)), var_0.x);
    let var_2 = Struct_2(arg_1, firstLeadingBit(u_input.a.xx), arg_1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(193.0, arg_1.a.x, arg_1.a.x, 179.0))))) - vec4<f32>(1525.0, _wgslsmith_f_op_f32(select(-1000.0, arg_2.x, true)), -1376.0, 654.0)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-133.0, 1371.0, -2541.0, 1205.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-926.0, 1179.0, 823.0, arg_1.a.x) * vec4<f32>(arg_2.x, arg_1.a.x, -789.0, 1075.0))))), !(!any(vec4<bool>(true, global2.x, true, arg_0.x))))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(var_1.x, var_0.x, var_0.x, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 0u, var_0.x, 4294967295u), var_1), global2.x), var_1 | ~var_1), _wgslsmith_sub_vec4_u32(var_1, countOneBits(vec4<u32>(var_1.x, 0u, var_0.x, var_1.x)))));
    var var_3 = !vec4<bool>(false, any(select(!vec4<bool>(global2.x, true, true, true), select(vec4<bool>(global2.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, true, arg_0.x), arg_0.x), 378.0 > 276.0)), false, true);
    return u_input.a.yz;
}

fn func_4() -> vec3<bool> {
    let var_0 = func_7(vec3<bool>(!false, !all(func_5(-375.0, -442.0, 1380.0, Struct_2(Struct_1(vec3<f32>(-1549.0, 1000.0, 757.0)), u_input.a.zy, vec3<f32>(-192.0, 1786.0, 756.0), vec4<f32>(-647.0, -911.0, -1477.0, -250.0), vec4<u32>(1u, 1u, 0u, 26047u)))), !any(vec2<bool>(true, global2.x))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1701.0, 217.0, -1361.0) + vec3<f32>(2304.0, 137.0, -1419.0))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-279.0, 813.0, 197.0)))), vec3<f32>(_wgslsmith_div_f32(-319.0, -1441.0), _wgslsmith_f_op_f32(f32(-1.0) * -786.0), _wgslsmith_f_op_f32(f32(-1.0) * -605.0)))) - vec3<f32>(_wgslsmith_f_op_f32(floor(466.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572.0 * -2006.0)), -834.0)));
    return !(!select(vec3<bool>(global2.x, true, global2.x & false), !select(vec3<bool>(false, true, global2.x), vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x)), !select(vec3<bool>(global2.x, true, true), vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> vec3<f32> {
    var var_0 = u_input.a;
    if (true) {
        if (false) {
            global1 = _wgslsmith_f_op_f32(arg_0.a.x + 302.0);
            var_0 = select(u_input.a, vec3<i32>(22484, max((22349 & 17128) | -2147483648, u_input.a.x), _wgslsmith_add_i32(~(-36205), arg_2.b.x)), !select(func_4(), vec3<bool>(global2.x, all(vec4<bool>(global2.x, true, global2.x, false)), true), global2.x));
        }
        var_0 = -abs(vec3<i32>(_wgslsmith_sub_i32(u_input.b, 1), ~(-2147483648), firstLeadingBit(arg_2.b.x))) & ((u_input.a | -(u_input.a << (vec3<u32>(arg_3, arg_3, 60775u) % vec3<u32>(32u)))) & u_input.a);
        var var_1 = _wgslsmith_sub_vec3_i32(reverseBits(-u_input.a >> (~arg_2.e.wzz % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647, 1, 1770) ^ vec3<i32>(-1, abs(var_0.x), u_input.a.x), ~(~(~u_input.a)), vec3<i32>(~(i32(-1) * -2147483648), -3173, ~(-2147483648))));
        switch (~abs(select(1 ^ 30215, 0, global2.x))) {
            case -20924: {
                let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-875.0)), 1000.0, _wgslsmith_f_op_f32(764.0 - -139.0)))), _wgslsmith_mod_vec2_i32(-(~(arg_2.b << (arg_2.e.zw % vec2<u32>(32u)))), -_wgslsmith_clamp_vec2_i32(arg_2.b, _wgslsmith_sub_vec2_i32(var_0.zx, vec2<i32>(var_1.x, arg_2.b.x)), -vec2<i32>(var_1.x, 31984))), arg_2.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-667.0, -685.0, false)), _wgslsmith_f_op_f32(-arg_0.a.x), arg_2.d.x, _wgslsmith_f_op_f32(arg_0.a.x - 1000.0)))), arg_2.e);
            }
            case 1: {
                var var_2 = abs(arg_2.e.zw);
                var var_3 = func_5(_wgslsmith_f_op_f32(ceil(arg_2.c.x)), 570.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x))))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-911.0, arg_0.a.x, arg_2.a.a.x)))))), select(vec2<i32>(_wgslsmith_add_i32(var_0.x, u_input.a.x), var_1.x), -vec2<i32>(u_input.a.x, arg_2.b.x) << (~arg_2.e.zw % vec2<u32>(32u)), false), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2.c.x)), _wgslsmith_f_op_f32(-1000.0), arg_2.d.x), arg_2.a.a)), arg_2.d, _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.e.x, 0u, 49859u, max(arg_1, arg_2.e.x)), ~vec4<u32>(arg_3, 104929u, 4294967295u, arg_1)))).x;
                global0 = array<vec2<bool>, 12>();
                global2 = select(vec2<bool>(true, abs(-69836) != abs(_wgslsmith_add_i32(u_input.a.x, u_input.b))), global0[_wgslsmith_index_u32(reverseBits(max(4294967295u, arg_1)), 12u)], !any(vec3<bool>(func_4().x, global2.x, all(vec3<bool>(global2.x, global2.x, true)))));
            }
            case 7500: {
                return _wgslsmith_div_vec3_f32(arg_2.d.wxx, arg_2.c);
            }
            default: {
                let var_2 = _wgslsmith_sub_i32(var_0.x, min(8117, -2147483648 >> (arg_1 % 32u)));
                var var_3 = _wgslsmith_sub_i32(~var_0.x, _wgslsmith_clamp_i32(-23549, var_0.x, ~(21690 >> (4294967295u % 32u))));
            }
        }
    }
    var var_1 = arg_0;
    switch (max(-func_6(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2123.0, 1033.0)))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.a.x, var_0.x), vec3<i32>(16718, 1, 1)), u_input.a), var_0.x << (~90642u % 32u), !vec4<bool>(true, global2.x, true, global2.x)).x, -19438)) {
        case -1: {
            if (!(223.0 >= 204.0)) {
                var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a.x, arg_0.a.x, -2175.0)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.d.x, -1055.0, arg_0.a.x), var_1.a, global2.x)), false)), vec3<f32>(arg_2.a.a.x, _wgslsmith_f_op_f32(f32(-1.0) * -1866.0), _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-446.0, 568.0, arg_0.a.x), vec3<f32>(arg_0.a.x, arg_0.a.x, var_1.a.x), func_4())))))));
                let var_3 = 2116.0;
                var var_4 = _wgslsmith_mult_vec4_u32(arg_2.e, ~(~_wgslsmith_mult_vec4_u32(select(arg_2.e, vec4<u32>(62461u, arg_3, 4294967295u, arg_1), global2.x), vec4<u32>(4294967295u, 38593u, 34362u, arg_3))));
            }
        }
        case -2147483648: {
            global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.a.x * _wgslsmith_f_op_f32(-arg_2.c.x)) + 566.0));
            var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(1, 12466, 18612), vec3<i32>(-2147483648, arg_2.b.x, 0))), ~(~vec3<i32>(-2147483648, -29801, var_0.x)), select(vec3<i32>(-var_0.x, -54066, u_input.a.x | arg_2.b.x), min(vec3<i32>(-34476, arg_2.b.x, var_0.x), u_input.a), _wgslsmith_div_i32(var_0.x, var_0.x) == 6135)), select(u_input.a, vec3<i32>(_wgslsmith_dot_vec2_i32(arg_2.b & arg_2.b, ~vec2<i32>(u_input.a.x, -34186)), 1, var_0.x), vec3<bool>(!global2.x, !(global2.x && false), global2.x)));
        }
        case -29875: {
        }
        default: {
            var var_2 = arg_2.a;
        }
    }
    switch (_wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(var_0.x, 1 ^ var_0.x)), ~((func_7(vec3<bool>(global2.x, global2.x, global2.x), Struct_1(arg_2.a.a), arg_0.a) << (vec2<u32>(arg_2.e.x, 1u) % vec2<u32>(32u))) ^ (vec2<i32>(-272, arg_2.b.x) | vec2<i32>(u_input.b, -18002))))) {
        case 0: {
            let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-260.0, arg_0.a.x, arg_0.a.x)))) + _wgslsmith_f_op_vec3_f32(-arg_2.d.zyw)));
        }
        case 1: {
            if (all(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(arg_3, ~28414u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~arg_3, 43004u << (arg_1 % 32u), ~arg_3), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.e.x, 11722u, 4294967295u), arg_2.e.yyy), arg_1))), 12u)])) {
            }
            var_0 = min(select(u_input.a, max(firstLeadingBit(min(u_input.a, u_input.a)), -_wgslsmith_sub_vec3_i32(vec3<i32>(0, -6094, -2147483648), vec3<i32>(1, -28861, arg_2.b.x))), global2.x), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a & vec3<i32>(max(arg_2.b.x, var_0.x), 0 ^ var_0.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~u_input.a));
        }
        default: {
            let var_2 = arg_3;
        }
    }
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1563.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_2.d.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)))))))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    if (~((u_input.b & (u_input.b | u_input.a.x)) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(76250u, 0u, 24777u, 1u)), min(vec4<u32>(60535u, 17067u, 4294967295u, 12588u), vec4<u32>(0u, 0u, 0u, 1u))) % 32u)) <= -2147483648) {
        loop {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_0 = _wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_div_f32(-459.0, arg_1.a.x)) * -104.0))));
            break;
        }
        return 1;
    }
    for (var var_0 = 50889; var_0 >= 18901; var_0 += 1) {
        if (LOOP_COUNTERS[5u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
        switch (u_input.b) {
            case -11727: {
                break;
            }
            default: {
                var var_1 = func_5(-171.0, arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(arg_0, 1u, Struct_2(arg_1, vec2<i32>(u_input.b, 0), arg_0.a, vec4<f32>(-1000.0, arg_0.a.x, arg_1.a.x, -1000.0), vec4<u32>(1u, 43651u, 2104u, 0u)), 16750u)).x, -2022.0)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-673.0, arg_0.a.x, arg_0.a.x))), u_input.a.xz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a.x, 239.0, -942.0))), vec3<f32>(arg_1.a.x, -740.0, arg_1.a.x), vec3<bool>(global2.x, false, false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1050.0, -400.0, arg_0.a.x, -1000.0) + vec4<f32>(1000.0, arg_1.a.x, arg_1.a.x, -1029.0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, 725.0, -1282.0) + vec4<f32>(-474.0, 258.0, arg_0.a.x, 1000.0)))), ~vec4<u32>(28728u, 1u, 1u, 1u))).x == ((reverseBits(~(-8209)) >> (~(~15983u) % 32u)) <= -71676);
                global0 = array<vec2<bool>, 12>();
            }
        }
    }
    var var_0 = Struct_2(arg_0, func_7(!func_4(), arg_1, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, arg_0.a.x, -237.0) - arg_1.a))), arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(54453u, 40440u)), ~vec2<u32>(24299u, 24927u)), Struct_2(arg_0, ~u_input.a.xz, _wgslsmith_f_op_vec3_f32(arg_0.a * arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_0.a.x, arg_1.a.x, arg_0.a.x)), countOneBits(vec4<u32>(33346u, 22946u, 9357u, 11167u))), ~(~4294967295u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, -1422.0, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.x, 1093.0, arg_0.a.x, arg_0.a.x), vec4<f32>(arg_1.a.x, -519.0, 353.0, 521.0))), vec4<bool>(true, false, global2.x, global2.x)))))), vec4<u32>(42389u, ~1u, 1022u, 1836u));
    var var_1 = var_0.e.x;
    let var_2 = vec3<i32>(abs(_wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0.b.x, 0, 46860)), u_input.a.x >> ((var_0.e.x << (var_0.e.x % 32u)) % 32u))), -_wgslsmith_mult_i32(24818, var_0.b.x), 1);
    return _wgslsmith_clamp_i32(var_0.b.x, _wgslsmith_sub_i32(func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) - var_0.d.xz)), 17420, countOneBits(var_0.b.x), select(!vec4<bool>(false, true, true, true), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), true)).x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(24330, var_2.x, -29688, var_0.b.x), vec4<i32>(u_input.a.x, 14272, var_0.b.x, 2147483647)) & var_0.b.x)), u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    for (var var_0 = 0; !true; var_0 -= 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_1 = arg_0;
    }
    let var_0 = ~arg_2.x;
    if (arg_0) {
        for (var var_1 = func_8(Struct_1(_wgslsmith_f_op_vec3_f32(func_3(arg_1, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 98081u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(35825u, 100616u, 4294967295u), vec3<u32>(1u, 1u, 9486u))), Struct_2(Struct_1(vec3<f32>(arg_1.a.x, -278.0, 417.0)), select(vec2<i32>(u_input.b, var_0), vec2<i32>(-2147483648, arg_2.x), global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1940.0, arg_1.a.x, 418.0)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.x, 169.0, -601.0, arg_1.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 65990u, 45232u), vec4<u32>(10131u, 4294967295u, 0u, 96642u))), 0u))), arg_1); var_1 >= -2147483648; var_1 += 1) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            let var_2 = Struct_2(arg_1, vec2<i32>(u_input.a.x, countOneBits(~u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, 113.0, _wgslsmith_f_op_f32(1000.0 * arg_1.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), arg_1.a.x, arg_1.a.x))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, -1416.0) - -122.0), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1.a), 0u, Struct_2(arg_1, u_input.a.yz, vec3<f32>(-1652.0, arg_1.a.x, -540.0), vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<u32>(1u, 48829u, 75111u, 1u)), 4294967295u)).x))), -726.0, _wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(max(arg_1.a.x, arg_1.a.x))), ~(vec4<u32>(_wgslsmith_mult_u32(4294967295u, 45361u), 4294967295u >> (132653u % 32u), 73252u, _wgslsmith_sub_u32(108683u, 1u)) | vec4<u32>(17266u, ~84817u, 1u, ~0u)));
            var var_3 = var_2.e.x;
            break;
        }
        var var_1 = _wgslsmith_div_vec3_i32(select(~u_input.a >> (vec3<u32>(max(1u, 1u), reverseBits(27750u), 45291u ^ 52129u) % vec3<u32>(32u)), arg_2.wzx, select(max(var_0, u_input.a.x), arg_2.x, 66367u <= 4294967295u) < var_0), ~vec3<i32>(-_wgslsmith_dot_vec4_i32(arg_2, arg_2), 0, var_0));
        let var_2 = vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1.a), ~(~(20476u & 0u)), Struct_2(arg_1, var_1.yy, arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-578.0, arg_1.a.x, arg_1.a.x, 1265.0)))), ~min(vec4<u32>(55167u, 19183u, 4294967295u, 0u), vec4<u32>(1413u, 6908u, 109176u, 4294967295u))), 52974u & (_wgslsmith_div_u32(4294967295u, 4294967295u) | ~21657u))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-806.0))))), -1000.0);
    }
    var var_1 = firstLeadingBit(vec3<u32>((0u >> ((4294967295u >> (14122u % 32u)) % 32u)) ^ ~(~4294967295u), 4294967295u, 78147u));
    switch (var_0) {
        default: {
            loop {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            }
            if (all(!func_4())) {
                let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a)), arg_2.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(arg_1, 4294967295u, Struct_2(arg_1, vec2<i32>(0, arg_2.x), arg_1.a, vec4<f32>(arg_1.a.x, arg_1.a.x, 312.0, arg_1.a.x), vec4<u32>(1u, var_1.x, var_1.x, 9540u)), var_1.x)).x, _wgslsmith_f_op_f32(699.0 * -704.0), _wgslsmith_f_op_f32(164.0 * 427.0)))), vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1051.0, arg_1.a.x)) * _wgslsmith_f_op_f32(-1436.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1412.0 + _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-305.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-714.0, 1104.0))))), ~(~reverseBits(~vec4<u32>(var_1.x, 4294967295u, 1u, var_1.x))));
            }
        }
    }
    return arg_2.x != (i32(-1) * -1);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 12u)];
    if (any(!select(vec4<bool>(false, true, arg_2, all(global0[_wgslsmith_index_u32(17476u, 12u)])), !vec4<bool>(arg_2, arg_1, false, false), vec4<bool>(any(vec3<bool>(true, arg_1, arg_1)), func_2(true, Struct_1(vec3<f32>(-471.0, -595.0, -837.0)), vec4<i32>(arg_0.x, 40722, arg_0.x, u_input.a.x)), arg_2, true)))) {
        switch (-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(0, arg_0.x)), u_input.a), -2147483648)) {
            case -46831: {
                let var_0 = vec3<u32>(0u, _wgslsmith_mod_u32(~37224u, ~_wgslsmith_add_u32(4294967295u, 47169u) ^ abs(firstTrailingBit(0u))), 18582u);
                let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(183.0)) - _wgslsmith_f_op_f32(select(1093.0, -223.0, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-153.0), _wgslsmith_f_op_f32(step(1064.0, 742.0)))), false)), 1066.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(-1358.0)), -596.0, 1503.0 >= -163.0)))));
                global1 = 1078.0;
                var var_2 = true;
                let var_3 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(round(var_1.a.x)))), u_input.a.zz, _wgslsmith_f_op_vec3_f32(-var_1.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_1.a), 21903u, Struct_2(Struct_1(vec3<f32>(var_1.a.x, 172.0, -516.0)), vec2<i32>(u_input.a.x, u_input.a.x), var_1.a, vec4<f32>(var_1.a.x, 1141.0, var_1.a.x, var_1.a.x), vec4<u32>(var_0.x, 0u, var_0.x, 1u)), var_0.x)).x, _wgslsmith_f_op_f32(sign(var_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x))), _wgslsmith_f_op_f32(-501.0 - _wgslsmith_f_op_f32(-611.0 * var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)) + _wgslsmith_f_op_f32(step(-1110.0, 617.0))), -736.0)), min(abs(~vec4<u32>(var_0.x, var_0.x, 1u, 20425u) << (vec4<u32>(10892u, var_0.x, var_0.x, 4294967295u) % vec4<u32>(32u))), ~min(vec4<u32>(659u, 0u, var_0.x, 0u) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(39664u, var_0.x, var_0.x, var_0.x), vec4<u32>(1u, 1u, var_0.x, var_0.x)))));
            }
            case 0: {
                let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1236.0, -1000.0, 1779.0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(489.0, 1581.0, 258.0))))));
                global2 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x, 1000.0, Struct_2(var_0, arg_0, _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, 391.0, var_0.a.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1708.0, 400.0, -417.0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1776.0, var_0.a.x, var_0.a.x, 551.0))))), ~select(countOneBits(vec4<u32>(3183u, 4294967295u, 61986u, 32909u)), vec4<u32>(62824u, 64954u, 30821u, 17951u), vec4<bool>(arg_2, true, global2.x, false))));
                global2 = vec2<bool>(all(vec2<bool>(arg_2, false)), arg_1);
            }
            case 21575: {
                var var_0 = -(~(_wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_0.x, 1, u_input.b), vec3<i32>(-2147483648, 0, u_input.b)), u_input.a) ^ _wgslsmith_sub_i32(arg_0.x, -19215)));
                var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1106.0), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(-1021.0, -1000.0, -1158.0)), 49574u ^ ~1u, Struct_2(Struct_1(vec3<f32>(1080.0, 1689.0, 1250.0)), vec2<i32>(-2147483648, u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(180.0, -410.0, -1375.0)), vec4<f32>(-1329.0, -933.0, 1037.0, -583.0), ~vec4<u32>(44096u, 26500u, 64048u, 2003u)), min(firstLeadingBit(4294967295u), reverseBits(47895u)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309.0)))));
            }
            case -13581: {
                global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(815.0 - 2259.0) + _wgslsmith_f_op_f32(f32(-1.0) * -507.0)), -1225.0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-465.0 + -1260.0))), -407.0))));
            }
            default: {
                global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1874.0), _wgslsmith_f_op_f32(f32(-1.0) * -174.0))))));
                var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1464.0, -150.0, 858.0) - vec3<f32>(-159.0, 636.0, -1307.0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1345.0, -1749.0, -177.0)))))), vec2<i32>(u_input.a.x, countOneBits(func_8(Struct_1(vec3<f32>(-247.0, -455.0, 1035.0)), Struct_1(vec3<f32>(-1386.0, 210.0, 409.0))) | func_6(vec2<f32>(-430.0, 591.0), u_input.a.x, -2559, vec4<bool>(global2.x, false, true, true)).x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1538.0), _wgslsmith_f_op_f32(abs(1290.0)), _wgslsmith_f_op_f32(exp2(130.0)))))), vec4<f32>(2072.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-537.0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -774.0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(138.0)), 460.0, false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(278.0 + -208.0), -317.0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(115.0, 1496.0)) + _wgslsmith_f_op_f32(-659.0 - -162.0)))), reverseBits(firstTrailingBit(vec4<u32>(~44730u, ~3359u, 18466u, _wgslsmith_mult_u32(29646u, 0u)))));
                var var_1 = var_0.d.x;
            }
        }
        return Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -832.0)), -674.0)), firstLeadingBit(func_7(vec3<bool>(arg_1, !true, !global2.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1978.0, -646.0, -1254.0))), vec3<f32>(-881.0, _wgslsmith_div_f32(-376.0, 681.0), _wgslsmith_f_op_f32(-171.0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1037.0, -1225.0, 851.0)), vec3<f32>(638.0, -1532.0, 607.0), select(vec3<bool>(arg_1, arg_2, arg_1), vec3<bool>(global2.x, arg_2, arg_2), vec3<bool>(false, global2.x, false)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1341.0, -839.0, -2140.0))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000.0, -670.0, -611.0), vec3<f32>(146.0, 270.0, 1000.0), vec3<bool>(global2.x, false, true)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(781.0, -512.0, 2366.0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1200.0, -236.0, -965.0, 338.0)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-927.0, 1900.0, 1114.0, -608.0) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000.0, -304.0, 1372.0, -934.0))))) - vec4<f32>(1362.0, _wgslsmith_f_op_f32(-549.0), -792.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-381.0))))), _wgslsmith_div_vec4_u32(~vec4<u32>(9125u, 26622u, 1u, 23623u) ^ select(abs(vec4<u32>(2348u, 1683u, 43779u, 4294967295u)), ~vec4<u32>(4294967295u, 1469u, 0u, 55068u), vec4<bool>(true, global2.x, arg_1, true)), vec4<u32>(13899u, ~18334u ^ firstLeadingBit(1u), ~min(19274u, 4294967295u), _wgslsmith_clamp_u32(68948u, 0u, 24572u) ^ 30620u)));
    }
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(622.0, -363.0, 1593.0) * vec3<f32>(1220.0, -571.0, 1265.0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-734.0, 141.0, -436.0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(770.0, -765.0, -1068.0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(532.0, -1000.0, 146.0) - vec3<f32>(2660.0, -825.0, -650.0))))), arg_0 | ~abs(vec2<i32>(u_input.b, 2147483647)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1392.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1230.0 * 1072.0) + _wgslsmith_f_op_f32(abs(-1000.0))), -369.0) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(-540.0, -144.0, arg_1)), _wgslsmith_f_op_f32(1940.0 * 876.0), _wgslsmith_div_f32(843.0, -635.0))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1766.0) - _wgslsmith_f_op_f32(sign(-217.0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-398.0, 845.0, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-602.0 - -1428.0))) - -820.0), -779.0, 839.0), vec4<u32>(5723u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(108914u, 92913u), vec2<u32>(0u, 1u)), max(vec2<u32>(0u, 16364u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(38849u, 15884u)))), firstTrailingBit(_wgslsmith_add_u32(~29162u, abs(26808u))), _wgslsmith_mod_u32(16868u ^ 0u, _wgslsmith_clamp_u32(0u, 16884u, 0u)) >> (reverseBits(48478u) % 32u)));
    var var_1 = false;
    var_0 = Struct_2(var_0.a, _wgslsmith_mult_vec2_i32(arg_0, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(35626, var_0.b.x) ^ u_input.a.zx, _wgslsmith_clamp_vec2_i32(u_input.a.zx, arg_0, arg_0)), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, var_0.b.x), arg_0.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + -182.0)), 437.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1569.0 + var_0.d.x))), vec3<f32>(-1000.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(-1257.0 + var_0.a.a.x)), _wgslsmith_f_op_f32(-1000.0)), !vec3<bool>(select(true, global2.x, true), 1u < 1u, 1082.0 >= 1412.0))), vec4<f32>(var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(698.0, 308.0)), 939.0), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1460.0 + -157.0) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-799.0 + var_0.c.x), _wgslsmith_f_op_f32(f32(-1.0) * -290.0)))), var_0.e & vec4<u32>((4294967295u ^ 34064u) ^ select(var_0.e.x, var_0.e.x, arg_1), ~var_0.e.x, ~11932u, var_0.e.x));
    return Struct_2(var_0.a, arg_0, _wgslsmith_f_op_vec3_f32(trunc(var_0.c)), _wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1483.0), -1000.0, -1000.0, var_0.c.x), true)), vec4<u32>(var_0.e.x, _wgslsmith_dot_vec2_u32(~var_0.e.xy, ~var_0.e.xx) ^ 87627u, _wgslsmith_add_u32(var_0.e.x, 108130u) >> (~(~var_0.e.x) % 32u), ~15596u));
}

fn func_9(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec2<u32>(31230u, ~arg_1.e.x);
    return Struct_1(_wgslsmith_div_vec3_f32(arg_2, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(883.0, arg_2.x, arg_0.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1346.0), -487.0, 1628.0) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, 1117.0, 673.0) - vec3<f32>(-1244.0, 2230.0, 3144.0))))), vec2<i32>(u_input.a.x >> (26328u % 32u), ~(~(-30360 << (4294967295u % 32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000.0)), _wgslsmith_f_op_f32(exp2(-814.0)), any(vec4<bool>(false, true, false, false)))), -113.0, 908.0)), vec4<f32>(-1029.0, 1312.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-628.0 * _wgslsmith_f_op_f32(f32(-1.0) * -278.0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -817.0)))), vec4<u32>(1u, 42290u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(47204u, 7242u, 62360u, 46673u), vec4<u32>(56290u, 0u, 79195u, 0u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 45468u), ~vec3<u32>(69795u, 6435u, 4294967295u)), _wgslsmith_clamp_u32(~0u, ~_wgslsmith_div_u32(0u, 44174u), ~(~23107u))));
    var var_1 = Struct_2(func_9(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, -335.0, var_0.d.x), var_0.d.zxx), _wgslsmith_f_op_vec3_f32(min(var_0.d.wwz, var_0.d.xxz))))), func_1(-vec2<i32>(-29203, 1) & vec2<i32>(2967, var_0.b.x), false, (var_0.e.x >> (4294967295u % 32u)) <= ~var_0.e.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c)), 118439u, Struct_2(func_1(var_0.b, global2.x, global2.x).a, ~vec2<i32>(33643, -1), _wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(var_0.d.x, -393.0, var_0.d.x)), var_0.d, reverseBits(var_0.e)), _wgslsmith_mult_u32(var_0.e.x, var_0.e.x))), Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.a + var_0.d.wzw)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(var_0.d, vec4<f32>(971.0, var_0.d.x, 1633.0, 443.0))), vec4<f32>(-1000.0, 1000.0, var_0.d.x, 1960.0))), _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 89655u, var_0.e.x, var_0.e.x), var_0.e)))), -var_0.b | _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-5327, -1, 14693), vec3<i32>(var_0.b.x, var_0.b.x, 2147483647)), _wgslsmith_dot_vec2_i32(vec2<i32>(5716, u_input.b), vec2<i32>(346, 73166))), var_0.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + 1027.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d.x - var_0.a.a.x), 425.0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1942.0 + -131.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x * -1877.0) + _wgslsmith_f_op_f32(ceil(255.0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) - _wgslsmith_f_op_vec4_f32(-var_0.d)) * _wgslsmith_f_op_vec4_f32(-var_0.d)), var_0.e);
    for (; func_5(var_1.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), var_1.a.a.x, all(vec2<bool>(any(vec3<bool>(global2.x, true, true)), !false)))), -650.0, func_1(select(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647, u_input.b), var_0.b), abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.b.x, 1), vec2<i32>(-94501, var_0.b.x))), func_2(!true, func_1(vec2<i32>(-1, -1), global2.x, true).a, -vec4<i32>(var_1.b.x, 0, var_0.b.x, 0))), !(var_1.d.x != _wgslsmith_f_op_f32(-1224.0 - 2614.0)), !func_5(_wgslsmith_f_op_f32(f32(-1.0) * -278.0), _wgslsmith_f_op_vec3_f32(func_3(var_0.a, var_1.e.x, Struct_2(var_1.a, var_0.b, var_0.a.a, vec4<f32>(120.0, 1453.0, var_0.c.x, 1302.0), vec4<u32>(4294967295u, var_1.e.x, var_1.e.x, 0u)), 1234u)).x, 857.0, Struct_2(Struct_1(vec3<f32>(948.0, var_1.c.x, -1220.0)), var_0.b, var_1.c, vec4<f32>(588.0, var_1.a.a.x, 1027.0, var_0.c.x), vec4<u32>(25317u, 22648u, var_1.e.x, var_0.e.x))).x)).x; ) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    var var_2 = _wgslsmith_f_op_f32(-548.0);
    global0 = array<vec2<bool>, 12>();
    var_1 = Struct_2(var_0.a, countOneBits(-vec2<i32>(abs(1), func_8(Struct_1(vec3<f32>(-116.0, var_1.d.x, var_1.c.x)), Struct_1(var_1.c)))), _wgslsmith_f_op_vec3_f32(func_3(var_0.a, _wgslsmith_dot_vec2_u32(~(var_0.e.xy | vec2<u32>(var_0.e.x, 22263u)), var_0.e.yy), Struct_2(var_1.a, u_input.a.xz >> (_wgslsmith_sub_vec2_u32(vec2<u32>(42327u, var_0.e.x), vec2<u32>(54681u, var_1.e.x)) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(exp2(-1000.0)), 951.0, _wgslsmith_f_op_f32(min(-1000.0, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-var_0.d), vec4<u32>(countOneBits(4294967295u), ~var_0.e.x, ~87562u, 75591u)), 1u)), var_0.d, var_1.e);
    let var_3 = firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(select(~var_1.b.x, -5319, 0 <= -18092), _wgslsmith_clamp_i32(1, ~var_0.b.x, max(var_1.b.x, -1))), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(var_0.b.x, -66264, u_input.b, var_1.b.x)), abs(vec4<i32>(u_input.a.x, -29927, u_input.b, 245) ^ vec4<i32>(1, 1, 3396, 33159)))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(~select(u_input.a.yz, vec2<i32>(24000, var_1.b.x), true), vec2<i32>(-59344 & var_1.b.x, ~2147483647)), ((firstTrailingBit(vec3<i32>(var_0.b.x, var_0.b.x, 34544)) | (vec3<i32>(-6742, var_0.b.x, 2147483647) & u_input.a)) ^ vec3<i32>(_wgslsmith_add_i32(0, 2147483647), -37921 | u_input.a.x, 47909)) >> (abs(vec3<u32>(_wgslsmith_mult_u32(var_0.e.x, 0u), var_0.e.x, firstTrailingBit(33973u))) % vec3<u32>(32u)));
}

