// {"0:0":[52,206,105,215,47,61,59,162,69,27,81,113,21,117,95,56,43,239,28,30,67,134,131,56,28,243,153,94,14,53,199,246,83,239,154,71,122,161,228,217,125,129,242,136,25,70,107,232,56,197,254,4,111,7,120,88,69,247,128,70,156,38,11,194]}
// Seed: 15400985549651231305

struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<Struct_1, 28>;

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    for (var var_0 = 1; ; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        let var_1 = select(vec4<bool>(arg_2.d, false, !all(select(vec4<bool>(arg_2.d, arg_2.d, false, arg_2.d), vec4<bool>(arg_2.d, true, arg_2.d, false), vec4<bool>(true, true, false, false))), false), !vec4<bool>(arg_2.d, arg_2.d, arg_2.d, _wgslsmith_add_i32(-3347, u_input.e.x) <= _wgslsmith_sub_i32(1, u_input.b.x)), _wgslsmith_f_op_f32(-351.0) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000.0)), _wgslsmith_f_op_f32(floor(-644.0)))));
        if (all(vec3<bool>(any(var_1), true, false))) {
            var var_2 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(arg_2.c, ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.c.x), arg_2.a)), arg_2.c, ~countOneBits(arg_2.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 753.0, arg_2.b.x, arg_2.b.x) * vec4<f32>(-629.0, arg_3.a, 113.0, -422.0)), _wgslsmith_f_op_vec4_f32(trunc(arg_2.b)), var_1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1637.0 - 580.0), arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.b.x), arg_2.b.x) + vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x - 1036.0), _wgslsmith_f_op_f32(f32(-1.0) * -1011.0), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.a)))), ~(~arg_2.c), any(select(var_1.xzx, !(!var_1.wxy), !true)));
            let var_3 = Struct_1(0u);
            var var_4 = Struct_2(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(45216u, arg_0, var_2.a.x), arg_2.c), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.x, 4294967295u, var_3.a), vec3<u32>(u_input.d, 45620u, u_input.c))), ~select(vec3<u32>(4294967295u, 26161u, 49921u), vec3<u32>(var_3.a, 10270u, 4294967295u), var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b - vec4<f32>(-329.0, 342.0, -243.0, -535.0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b - arg_1.b) - var_2.b))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(21119u, _wgslsmith_mult_u32(global0.a, arg_0), arg_0), vec3<u32>(4294967295u ^ global0.a, ~arg_0, ~var_3.a), ~arg_2.c), arg_2.d);
            let var_5 = arg_1;
            var_4 = Struct_2(~(~(arg_2.a >> (~vec3<u32>(24360u, 65683u, 4294967295u) % vec3<u32>(32u)))), arg_2.b, var_2.c, !var_2.d);
        }
        var var_2 = Struct_1(_wgslsmith_sub_u32(0u, firstTrailingBit(select(~arg_0, abs(32624u), false != true))));
        if (true) {
            var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_3.a, arg_1.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -489.0))))), _wgslsmith_f_op_f32(-arg_3.a))));
            var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(min(arg_2.c.yx & arg_2.a.xy, countOneBits(arg_2.a.zx)), abs(vec2<u32>(var_2.a, arg_2.a.x))));
            break;
        }
    }
    var var_0 = Struct_2(firstTrailingBit(firstTrailingBit(~(~vec3<u32>(global0.a, u_input.c, 26455u)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.x - 349.0), _wgslsmith_f_op_f32(trunc(arg_3.a)), _wgslsmith_f_op_f32(-2228.0), 2602.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(319.0, -1045.0, arg_1.a, -1099.0) + arg_3.b)), arg_3.b)), ~vec3<u32>(17097u, 1u, 4294967295u), any(!select(vec4<bool>(arg_2.d, true, true, arg_2.d), vec4<bool>(true, arg_2.d, true, arg_2.d), vec4<bool>(arg_2.d, false, arg_2.d, arg_2.d))) && !arg_2.d);
    global0 = Struct_1(1u);
    if (all(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.d), vec2<bool>(var_0.d, false), vec2<bool>(true, false)), !arg_2.d), select(!vec2<bool>(true, arg_2.d), vec2<bool>(arg_2.d, var_0.d), arg_2.d), select(vec2<bool>(var_0.d, false), select(vec2<bool>(arg_2.d, var_0.d), vec2<bool>(false, false), vec2<bool>(arg_2.d, false)), var_0.d)))) {
        var_0 = arg_2;
        var var_1 = arg_1.b.x;
        var var_2 = arg_2.d;
    }
    global0 = global2[_wgslsmith_index_u32(arg_2.c.x, 28u)];
    return ~(-2147483648);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec3<bool> {
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c, u_input.d), 28u)];
    var var_0 = arg_0;
    global1 = 76741u;
    switch (_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(-(u_input.e.xzw & vec3<i32>(u_input.e.x, u_input.e.x, u_input.a.x)), vec3<i32>(~1, _wgslsmith_mod_i32(-36957, 17465), u_input.a.x)), vec3<i32>(u_input.b.x, func_6(~_wgslsmith_clamp_u32(31952u, 1u, arg_1.x), Struct_3(_wgslsmith_f_op_f32(f32(-1.0) * -417.0), _wgslsmith_f_op_vec4_f32(max(arg_0.b, vec4<f32>(-481.0, var_0.b.x, arg_0.b.x, -1000.0)))), Struct_2(vec3<u32>(u_input.d, arg_1.x, 25470u), _wgslsmith_f_op_vec4_f32(var_0.b + arg_0.b), vec3<u32>(arg_1.x, 0u, 1685u) >> (vec3<u32>(4294967295u, 0u, 0u) % vec3<u32>(32u)), true), arg_0), u_input.b.x))) {
        default: {
            if (all(!select(!select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(true, arg_2.x, arg_2.x, false), arg_2.x), !select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), false), select(select(vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, true), arg_2.x), select(vec4<bool>(false, false, true, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), arg_2.x), arg_2.x)))) {
                let var_1 = ~(~abs((vec3<u32>(u_input.c, arg_1.x, u_input.d) << (vec3<u32>(0u, global0.a, arg_1.x) % vec3<u32>(32u))) & abs(vec3<u32>(global0.a, 17585u, global0.a))));
                var var_2 = max(vec3<u32>(firstTrailingBit(0u), ~firstLeadingBit(u_input.c), 0u), vec3<u32>(8928u, 33234u, ~(~(~46148u))));
                global0 = global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(_wgslsmith_mult_u32(firstLeadingBit(var_1.x ^ 4294967295u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_1, var_1), 2188u, 17730u)), 4294967295u | ~32530u), _wgslsmith_dot_vec3_u32(~var_1, ~_wgslsmith_mult_vec3_u32(var_1 >> (var_1 % vec3<u32>(32u)), var_1))), 28u)];
                global2 = array<Struct_1, 28>();
                let var_3 = Struct_1(global0.a);
            }
            switch (~u_input.e.x) {
                case -2147483648: {
                }
                case 63435: {
                    var_0 = arg_0;
                    var var_1 = select(_wgslsmith_mod_vec3_i32(select(u_input.b.ywz, u_input.e.yyy, select(!arg_2.x, !arg_2.x, !true)), vec3<i32>(2147483647, u_input.e.x, -2147483648)), vec3<i32>(min(u_input.b.x, u_input.e.x), ~u_input.a.x, -1) >> (~vec3<u32>(u_input.c, u_input.c, 22198u) % vec3<u32>(32u)), select(select(!vec3<bool>(false, true, arg_2.x), !vec3<bool>(false, true, false), vec3<bool>(903.0 > var_0.a, any(arg_2), arg_2.x)), !(!vec3<bool>(false, true, true)), select(select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(true, arg_2.x, false), true), vec3<bool>(true, true, arg_2.x)), !vec3<bool>(arg_2.x, false, false), !vec3<bool>(arg_2.x, false, arg_2.x))));
                    global1 = min(firstTrailingBit(_wgslsmith_clamp_u32(global0.a, 9228u, abs(~u_input.d))), ~select(~_wgslsmith_mult_u32(global0.a, 83042u), ~u_input.c, !(!arg_2.x)));
                }
                case -60667: {
                    global2 = array<Struct_1, 28>();
                    var var_1 = Struct_1(firstLeadingBit(70836u));
                    var var_2 = vec4<i32>(reverseBits(reverseBits(u_input.a.x)), (firstLeadingBit(u_input.e.x) << (reverseBits(0u) % 32u)) ^ u_input.a.x, ~2147483647, _wgslsmith_clamp_i32(-4231, 0, 37075)) >> (_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(14773u, 42123u, global0.a, 65338u))), ~(~(~vec4<u32>(arg_1.x, arg_1.x, 1110u, global0.a)))) % vec4<u32>(32u));
                    var var_3 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(~34028u, 42103u), abs(_wgslsmith_dot_vec2_u32(~arg_1, select(vec2<u32>(u_input.c, 1u), vec2<u32>(global0.a, 37529u), arg_2.x))), 840u), _wgslsmith_f_op_vec4_f32(trunc(var_0.b)), vec3<u32>(_wgslsmith_div_u32(var_1.a, 0u), 1u, 101139u), any(!vec3<bool>(-1294.0 > -1637.0, all(vec2<bool>(true, false)), arg_2.x || arg_2.x)));
                    let var_4 = _wgslsmith_clamp_vec2_i32(var_2.zz, vec2<i32>(u_input.b.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b.xzx, var_2.zyz << (vec3<u32>(61829u, 4294967295u, var_3.c.x) % vec3<u32>(32u))))), -(~u_input.a));
                }
                default: {
                    var var_1 = _wgslsmith_f_op_f32(-var_0.a);
                }
            }
            switch (-(select(u_input.e.x, _wgslsmith_mod_i32(i32(-1) * -23231, u_input.e.x), arg_2.x) | u_input.e.x)) {
                case -1: {
                    var var_1 = select(vec2<bool>(arg_2.x, any(select(!arg_2, select(vec2<bool>(arg_2.x, arg_2.x), arg_2, vec2<bool>(arg_2.x, arg_2.x)), !vec2<bool>(true, arg_2.x)))), !arg_2, !any(select(!vec3<bool>(false, arg_2.x, false), select(vec3<bool>(true, arg_2.x, false), vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, arg_2.x, false)), !vec3<bool>(false, false, arg_2.x))));
                    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.zxx));
                    global0 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1584u, u_input.c, 27182u), vec4<u32>(0u, 19611u, 4294967295u, 68683u)), ~global0.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, u_input.d, arg_1.x), ~vec3<u32>(9083u, 33225u, 4294967295u))) >> (u_input.c % 32u)), 28u)];
                    let var_3 = ~(~u_input.d) ^ reverseBits(1u << (firstTrailingBit(_wgslsmith_mult_u32(0u, 56161u)) % 32u));
                }
                case -293: {
                    global1 = 4294967295u;
                }
                case -2147483648: {
                    global2 = array<Struct_1, 28>();
                    var var_1 = select(vec3<bool>(global0.a <= 30101u, !arg_2.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, -55415)) < u_input.e.x), vec3<bool>(arg_2.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1186.0)) < arg_0.b.x), all(!vec2<bool>(select(arg_2.x, false, arg_2.x), var_0.b.x <= 146.0)));
                }
                default: {
                    var var_1 = arg_0.b.x;
                    var_0 = arg_0;
                    let var_2 = arg_0.a;
                }
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        return vec3<bool>(arg_2.x, !(!(!true & (-300.0 >= 591.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)) * arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266.0 + -1166.0)))));
    }
    return vec3<bool>((1u | ~14326u) <= u_input.d, !(!arg_2.x != true), !arg_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> vec3<bool> {
    global2 = array<Struct_1, 28>();
    if (arg_1.d) {
    }
    if (false) {
        let var_0 = Struct_3(-988.0, arg_3.b);
    }
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.x, 602.0, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_div_f32(arg_2.x, arg_3.b.x))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, 689.0, arg_2.x) - vec3<f32>(arg_2.x, arg_2.x, arg_1.b.x))))), arg_3.b.yxy);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(sign(arg_3.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-368.0, arg_1.b.x, arg_2.x, -1318.0), vec4<f32>(arg_3.b.x, -328.0, arg_2.x, 140.0)))), arg_1.b));
    return select(!(!select(vec3<bool>(true, arg_1.d, arg_1.d), func_5(Struct_3(-744.0, vec4<f32>(-619.0, var_0.x, 491.0, var_1.a)), arg_1.a.xy, vec2<bool>(false, true)), -1 <= u_input.b.x)), vec3<bool>(_wgslsmith_clamp_i32(-6771, -2147483647, ~0) > 2147483647, select(!arg_1.d, !arg_3.d, arg_3.d), arg_3.d), select(!(all(vec2<bool>(false, true)) | (-64399 != u_input.e.x)), arg_3.d, any(vec3<bool>(arg_1.b.x == -1798.0, arg_1.d, arg_1.d))));
}

fn func_3() -> bool {
    let var_0 = -u_input.a ^ _wgslsmith_div_vec2_i32(u_input.a, countOneBits(u_input.a));
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
    }
    switch (_wgslsmith_div_i32(-8781 & _wgslsmith_sub_i32(_wgslsmith_mult_i32(-53914, u_input.e.x) << (44604u % 32u), -var_0.x), 4058)) {
        case 1: {
            switch (var_0.x) {
                case -2147483648: {
                    global1 = ~abs(global0.a);
                    var var_1 = global2[_wgslsmith_index_u32(1u, 28u)];
                    let var_2 = vec2<bool>(!all(!func_4(Struct_1(0u), Struct_2(vec3<u32>(global0.a, 38015u, global0.a), vec4<f32>(589.0, 739.0, -186.0, 723.0), vec3<u32>(4294967295u, 0u, 107079u), false), vec2<f32>(-1855.0, -1090.0), Struct_2(vec3<u32>(10327u, 0u, 102349u), vec4<f32>(-314.0, 598.0, 1910.0, 379.0), vec3<u32>(global0.a, 37896u, u_input.c), false))), _wgslsmith_f_op_f32(-1000.0) >= 1472.0);
                    let var_3 = !(!vec3<bool>(var_2.x, var_2.x, (var_0.x >= u_input.e.x) != var_2.x));
                    var var_4 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)), -1332.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(346.0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1043.0, -1287.0, var_2.x)), 1623.0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1068.0, -1878.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(465.0, 564.0, false)))) * vec4<f32>(2936.0, _wgslsmith_f_op_f32(f32(-1.0) * -1590.0), _wgslsmith_f_op_f32(-1097.0 - _wgslsmith_f_op_f32(f32(-1.0) * -852.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1394.0 + 769.0)))));
                }
                case 48634: {
                    global1 = abs(global0.a);
                    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(global0.a ^ global0.a), 38514u), vec2<u32>(u_input.c, ~45718u ^ global0.a)) >> (abs(32863u) % 32u), 28u)];
                }
                default: {
                }
            }
            global2 = array<Struct_1, 28>();
            global1 = _wgslsmith_div_u32(24305u, countOneBits(firstTrailingBit(u_input.c)));
        }
        case 551: {
            for (var var_1 = 38142; var_1 != -45495; ) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                let var_2 = Struct_1(u_input.d);
                let var_3 = u_input.b;
                let var_4 = vec3<u32>(10490u, u_input.c, 121712u);
                continue;
            }
            global2 = array<Struct_1, 28>();
            global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, reverseBits(global0.a)) & min(vec2<u32>(u_input.d, 0u) & vec2<u32>(global0.a, global0.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(global0.a, 47063u))), reverseBits(vec2<u32>(~32389u, countOneBits(global0.a)))) & reverseBits(1u);
            global0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~global0.a, ~33051u), global0.a) & _wgslsmith_sub_u32(~global0.a, _wgslsmith_clamp_u32(countOneBits(14061u), u_input.c, u_input.c)));
            return false;
        }
        case 0: {
        }
        case 25422: {
            let var_1 = global2[_wgslsmith_index_u32(global0.a, 28u)];
            global1 = ~var_1.a;
            for (var var_2 = 2293; var_2 >= 1700; var_2 = u_input.b.x) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            }
        }
        default: {
            let var_1 = -1 << (u_input.d % 32u);
            let var_2 = ~(reverseBits(firstTrailingBit(countOneBits(vec4<u32>(u_input.d, global0.a, global0.a, global0.a)))) << (max(countOneBits(vec4<u32>(46908u, u_input.d, 4294967295u, 3201u) | vec4<u32>(global0.a, 73170u, 1u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 3521u, 27968u, 37140u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d))) % vec4<u32>(32u)));
            var var_3 = Struct_2(reverseBits(~select(var_2.wwy, vec3<u32>(global0.a, 71191u, 58096u), vec3<bool>(true, false, true)) | ~(~vec3<u32>(u_input.d, var_2.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1396.0, 301.0, true)), -1467.0, _wgslsmith_f_op_f32(min(-310.0, -116.0)), 1034.0))), var_2.ywz >> (~var_2.zyx % vec3<u32>(32u)), all(!select(!vec2<bool>(false, true), vec2<bool>(false, false), !true)));
        }
    }
    switch (_wgslsmith_sub_i32(-abs(var_0.x) & -_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0, u_input.b.x, -7864), u_input.e.wzw)), i32(-1) * -1)) {
        case 1: {
            var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-592.0) + _wgslsmith_f_op_f32(trunc(-1916.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-511.0, -767.0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(923.0, -829.0) * _wgslsmith_f_op_f32(-1411.0)), !false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(313.0, 1638.0), -151.0, !(u_input.d >= u_input.d))), 402.0, all(!(!vec2<bool>(true, false))))), -1000.0);
            var var_2 = _wgslsmith_mult_i32(-2147483648, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_0.x, -1), -2147483648), ~var_0 & u_input.b.yx)) | 0;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_1 = _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(global0.a, u_input.c) & ~vec2<u32>(global0.a, 65493u))), vec2<u32>(~10609u, global0.a));
                break;
            }
        }
    }
    global1 = global0.a;
    return any(!vec4<bool>(!(!true), firstLeadingBit(16766) > u_input.b.x, !(true & false), true));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = all(vec2<bool>(func_3(), all(vec2<bool>(!true, false | true))));
    global0 = Struct_1(u_input.c);
    if (arg_1 & !any(select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, true), arg_1))) {
        var var_1 = _wgslsmith_mult_vec4_i32(firstTrailingBit((vec4<i32>(-1) * -vec4<i32>(u_input.a.x, 16058, -1, u_input.b.x)) | u_input.b), countOneBits(vec4<i32>(func_6(~1u, Struct_3(arg_0.x, arg_0), Struct_2(vec3<u32>(global0.a, global0.a, u_input.c), vec4<f32>(arg_0.x, arg_0.x, -1000.0, -1000.0), vec3<u32>(global0.a, 21394u, u_input.d), false), Struct_3(arg_0.x, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-4285, u_input.b.x, -40290), u_input.b.xwz), -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x)));
        global0 = Struct_1(firstTrailingBit(_wgslsmith_sub_u32(69366u, ~(~global0.a))));
        global2 = array<Struct_1, 28>();
        global2 = array<Struct_1, 28>();
        switch (min(u_input.b.x, ~_wgslsmith_mult_i32(2147483647, -var_1.x))) {
            default: {
                var_0 = false;
                var var_2 = Struct_2(~reverseBits(~(~vec3<u32>(0u, 4294967295u, 25025u))), _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -525.0, -501.0, arg_0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(arg_0)), vec4<f32>(-1000.0, 728.0, -1000.0, 897.0)))))), select(~_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(73762u, u_input.d, 4294967295u)), vec3<u32>(u_input.c, global0.a, global0.a) & vec3<u32>(1647u, 90242u, u_input.d)), max(vec3<u32>(u_input.d, global0.a, u_input.d) | vec3<u32>(0u, 3036u, u_input.c), vec3<u32>(_wgslsmith_mult_u32(global0.a, u_input.d), 4294967295u, ~44001u)), all(vec2<bool>(any(vec4<bool>(arg_1, arg_1, false, arg_1)), arg_1))), select(all(func_5(Struct_3(arg_0.x, arg_0), vec2<u32>(0u, 1u), vec2<bool>(arg_1, true))), !(!arg_1), arg_1) || (false || !func_5(Struct_3(arg_0.x, vec4<f32>(arg_0.x, arg_0.x, 1682.0, arg_0.x)), vec2<u32>(0u, 5190u), vec2<bool>(arg_1, arg_1)).x));
                var var_3 = Struct_1(_wgslsmith_add_u32(~((global0.a << (1u % 32u)) >> (~global0.a % 32u)), max(_wgslsmith_div_u32(~var_2.c.x, u_input.d), 0u)));
                let var_4 = Struct_1(_wgslsmith_add_u32(~countOneBits(_wgslsmith_mult_u32(u_input.d, var_2.c.x)), u_input.d));
            }
        }
    }
    switch (u_input.a.x) {
        default: {
            var var_1 = Struct_1(max(_wgslsmith_sub_u32(firstTrailingBit(36506u), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.c), global0.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0.a, 0u, u_input.d), vec4<u32>(u_input.c, 16882u, global0.a, 14566u)), firstTrailingBit(vec4<u32>(u_input.c, global0.a, 4294967295u, 4294967295u))) & u_input.d));
            loop {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                global0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.d, 34536u, u_input.d, global0.a), vec4<u32>(u_input.d, u_input.d, u_input.c, var_1.a) & vec4<u32>(u_input.d, global0.a, u_input.d, 0u)), ~vec4<u32>(_wgslsmith_mult_u32(1u, 1u), global0.a, ~var_1.a, u_input.c)), firstLeadingBit(abs(4294967295u)) ^ global0.a), 28u)];
            }
            if (!(_wgslsmith_f_op_f32(round(arg_0.x)) == _wgslsmith_f_op_f32(-1185.0 + _wgslsmith_f_op_f32(max(122.0, -1335.0)))) | false) {
                global0 = Struct_1(min(0u, ~var_1.a));
                var_0 = arg_1;
                let var_2 = ~reverseBits(countOneBits(~(~vec3<i32>(-24338, u_input.a.x, 1))));
                var var_3 = 49820;
                var_0 = func_3() & func_5(Struct_3(1033.0, vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - 1158.0), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x))), reverseBits(reverseBits(~vec2<u32>(u_input.d, u_input.c))), select(select(!vec2<bool>(false, false), vec2<bool>(arg_1, true), false && arg_1), func_4(Struct_1(1u), Struct_2(vec3<u32>(4294967295u, 31028u, 12165u), arg_0, vec3<u32>(global0.a, 0u, var_1.a), false), arg_0.zy, Struct_2(vec3<u32>(25651u, u_input.c, 15871u), vec4<f32>(arg_0.x, 815.0, arg_0.x, arg_0.x), vec3<u32>(u_input.d, var_1.a, 56255u), false)).zx, !(!true))).x;
            }
        }
    }
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(36123u, ~u_input.c), 1u, ~1u);
    return Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(45468u, 43192u, global0.a), vec3<u32>(61576u, u_input.d, var_1.x))), reverseBits(firstLeadingBit(vec3<u32>(u_input.c, global0.a, 4294967295u)))) >> (4294967295u % 32u));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<f32> {
    if (true) {
        for (; _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-426.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1024.0, 643.0, true))))) > 814.0; ) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            return arg_0.b;
        }
        for (var var_0 = -1; var_0 <= 0; var_0 -= 1) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2477.0) * _wgslsmith_f_op_f32(f32(-1.0) * -750.0)))), _wgslsmith_f_op_f32(-arg_0.a), 113.0, _wgslsmith_div_f32(-1531.0, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_div_f32(-2227.0, arg_0.a)))) * _wgslsmith_f_op_vec4_f32(-arg_0.b));
            var var_2 = Struct_3(_wgslsmith_f_op_f32(round(406.0)), _wgslsmith_f_op_vec4_f32(-var_1));
            let var_3 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(30597u, 0u, 2078u, global0.a), vec4<u32>(1u, global0.a, global0.a, arg_1.a)), min(vec4<u32>(u_input.c, 4053u, 32838u, global0.a), vec4<u32>(u_input.c, 55772u, 1u, 4294967295u))), ~9773u, 68558u) >> (~select(vec3<u32>(17961u, u_input.d, 4294967295u), vec3<u32>(5157u, global0.a, u_input.c), select(vec3<bool>(false, arg_2.x, true), arg_2.yzx, vec3<bool>(true, true, true))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270.0 - -591.0) * var_1.x), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + -1866.0) * _wgslsmith_f_op_f32(arg_0.a * var_2.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1052.0), _wgslsmith_f_op_f32(-var_2.a)))) + var_1), ~(~(vec3<u32>(0u, arg_1.a, 0u) | vec3<u32>(1u, u_input.d, 4294967295u))) & (firstTrailingBit(vec3<u32>(4294967295u, u_input.c, u_input.c)) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.d), vec3<u32>(arg_1.a, 39982u, 27183u)) ^ ~vec3<u32>(global0.a, u_input.c, 56567u)) % vec3<u32>(32u))), !arg_2.x);
        }
    }
    let var_0 = arg_2.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-825.0), _wgslsmith_f_op_f32(arg_0.b.x * 1000.0), all(vec4<bool>(false, arg_2.x, false, arg_2.x)))) + _wgslsmith_div_f32(-979.0, -616.0)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(round(562.0))))), _wgslsmith_f_op_f32(-840.0), arg_0.a);
    global2 = array<Struct_1, 28>();
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        if (arg_2.x & false) {
            break;
        }
        continue;
    }
    return vec4<f32>(489.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(-1262.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-211.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275.0)), _wgslsmith_f_op_f32(f32(-1.0) * -379.0)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: i32, arg_3: bool) -> i32 {
    for (; (arg_3 || !(arg_0 & all(vec4<bool>(arg_3, arg_0, false, true)))) || !(!false || true); ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-587.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125.0))))), _wgslsmith_f_op_vec4_f32(func_7(Struct_3(_wgslsmith_f_op_f32(ceil(-903.0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(286.0, -423.0, 1283.0, -343.0))), vec4<f32>(779.0, 1000.0, -131.0, -3702.0))), func_2(vec4<f32>(_wgslsmith_f_op_f32(568.0 + -1215.0), 270.0, _wgslsmith_f_op_f32(sign(1323.0)), _wgslsmith_div_f32(-966.0, 598.0)), arg_0), select(select(vec4<bool>(true, true, arg_0, false), vec4<bool>(arg_0, arg_0, false, arg_0), all(vec4<bool>(true, false, arg_3, arg_3))), !vec4<bool>(arg_0, true, true, false), select(!vec4<bool>(arg_0, arg_3, true, arg_0), vec4<bool>(false, arg_3, arg_3, true), !true)))));
        let var_1 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a, 1u, u_input.d), vec3<u32>(global0.a, 26997u, 0u)), firstLeadingBit(69691u)), 7692u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 1u) << (vec2<u32>(4294967295u, global0.a) % vec2<u32>(32u)), reverseBits(vec2<u32>(0u, u_input.d)))), var_0.b, vec3<u32>(~global0.a & 1621u, ~u_input.d, abs(u_input.d)), !arg_0);
    }
    for (var var_0 = 40480; ; var_0 -= 1) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        break;
    }
    let var_0 = ~countOneBits(max(~0u, ~8760u)) >= u_input.c;
    global1 = u_input.d;
    for (var var_1: i32; arg_3; var_1 += 1) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        var var_2 = vec2<u32>(~((1u << (global0.a % 32u)) >> (37234u % 32u)), _wgslsmith_mod_u32(global0.a, u_input.c)) & _wgslsmith_add_vec2_u32(vec2<u32>(~14947u, 17674u) ^ max(~vec2<u32>(global0.a, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(43710u, u_input.d), vec2<u32>(global0.a, 0u), vec2<u32>(u_input.d, u_input.c))), countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(global0.a, u_input.d), vec2<u32>(29037u, 0u))));
        global2 = array<Struct_1, 28>();
        var var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(287.0 * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))), _wgslsmith_f_op_f32(exp2(659.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632.0 + -578.0)) * -1097.0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000.0)))))), false);
        global2 = array<Struct_1, 28>();
    }
    return _wgslsmith_mult_i32(u_input.e.x, ~firstLeadingBit(u_input.b.x & (i32(-1) * -20565)));
}

fn func_8(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>) -> i32 {
    switch (arg_0.x) {
        default: {
        }
    }
    var var_0 = (0 >> ((59523u & ~0u) % 32u)) > ~_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(u_input.e, u_input.e), 33134);
    let var_1 = false;
    if (all(vec2<bool>(var_1, func_3()))) {
        let var_2 = arg_2.x;
        var var_3 = Struct_2(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 46195u, 4294967295u), vec3<u32>(arg_1, 20107u, 1u)) ^ abs(vec3<u32>(u_input.c, global0.a, 5568u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a, 33759u, u_input.c), vec3<u32>(91243u, 4294967295u, 84245u))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1065.0) * arg_2.x), arg_2.x, -689.0, _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(abs(arg_2.x)), var_1))))), vec3<u32>(arg_1 | ~(~u_input.c), global0.a ^ 90876u, 18851u), false);
        for (; ; ) {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            var_3 = Struct_2(countOneBits(var_3.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1768.0, var_2)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000.0), _wgslsmith_div_f32(1206.0, 1149.0), func_5(Struct_3(var_3.b.x, vec4<f32>(1026.0, -359.0, arg_2.x, 551.0)), var_3.a.yy, vec2<bool>(true, var_3.d)).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) + _wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1288.0, var_3.b.x)))))), var_3.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(~abs(arg_1), _wgslsmith_sub_u32(89081u, arg_1), arg_1), var_3.c), true);
        }
    }
    switch (firstTrailingBit(-1)) {
        default: {
        }
    }
    return _wgslsmith_clamp_i32(arg_0.x, ~_wgslsmith_div_i32(u_input.a.x, 2147483647), max(~arg_0.x, ~(~(~(-2147483648)))));
}

@compute
@workgroup_size(1)
fn main() {
    switch (func_8(vec2<i32>(reverseBits(38639), u_input.b.x), select(78682u, _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 1707u), vec4<u32>(global0.a, u_input.c, u_input.d, 0u), vec4<u32>(32383u, global0.a, 96377u, 4294967295u))), ~(~vec4<u32>(global0.a, 0u, global0.a, global0.a))), 37480 > func_1(true || false, ~u_input.e.wy, u_input.e.x, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(147.0, 995.0), vec2<f32>(610.0, -421.0)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-789.0, 607.0)) + vec2<f32>(212.0, -395.0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000.0, 441.0) + vec2<f32>(-1000.0, 848.0)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-902.0, 1178.0))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(316.0, 1000.0), vec2<f32>(317.0, 1000.0))))))))) {
        case 32706: {
            let var_0 = Struct_3(-123.0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-190.0, -1675.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-103.0, 1252.0)) * _wgslsmith_f_op_f32(-595.0)), 1006.0)));
            switch (_wgslsmith_dot_vec2_i32(max(u_input.b.ww, min(~u_input.e.zx, vec2<i32>(-1, -1))), u_input.b.xy)) {
                case -1: {
                    global0 = func_2(vec4<f32>(496.0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, func_4(Struct_1(10802u), Struct_2(vec3<u32>(u_input.d, global0.a, u_input.d), var_0.b, vec3<u32>(u_input.c, u_input.d, 4294967295u), false), var_0.b.zx, Struct_2(vec3<u32>(1u, 17691u, u_input.d), vec4<f32>(1000.0, 758.0, var_0.b.x, -1037.0), vec3<u32>(u_input.d, 1u, 53082u), false)).x)))), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(391.0)))), -1234.0), false);
                }
                case -2147483648: {
                    let var_1 = ~_wgslsmith_clamp_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(63094u, u_input.c, global0.a, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, global0.a)), vec4<u32>(global0.a, u_input.d, global0.a, global0.a) << (vec4<u32>(100125u, global0.a, 0u, u_input.d) % vec4<u32>(32u)), vec4<bool>(true, true, false, true)) >> (select(vec4<u32>(global0.a, 1u, global0.a, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(64600u, u_input.d, global0.a, u_input.d), vec4<u32>(global0.a, 4294967295u, 4294967295u, 22734u)), false) % vec4<u32>(32u)), ~abs(vec4<u32>(global0.a, global0.a, 4294967295u, 0u)) | vec4<u32>(abs(30585u), _wgslsmith_add_u32(20749u, 1u), 1u, ~16619u), min(~reverseBits(vec4<u32>(16174u, u_input.d, 14711u, 1u)), reverseBits(vec4<u32>(u_input.d, 1u, 13939u, global0.a))));
                    var var_2 = Struct_3(1532.0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(abs(var_0.b))))), vec4<f32>(-1000.0, 398.0, _wgslsmith_f_op_f32(ceil(var_0.b.x)), var_0.a)));
                    global1 = 1u;
                }
                case 45493: {
                }
                case 16806: {
                    var var_1 = abs(0u);
                    var var_2 = ~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, global0.a)), vec2<u32>(4294967295u, global0.a)) >> (vec2<u32>(global0.a, _wgslsmith_sub_u32(_wgslsmith_add_u32(59944u, _wgslsmith_dot_vec2_u32(vec2<u32>(24242u, global0.a), vec2<u32>(0u, global0.a))), 0u)) % vec2<u32>(32u));
                    var var_3 = min(abs(global0.a), global0.a) != select(u_input.d, 1u, !all(!vec2<bool>(false, false)));
                    var_1 = ~(~1u);
                }
                default: {
                    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1241.0 - var_0.a), _wgslsmith_f_op_f32(-var_0.a)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(-572.0)), _wgslsmith_f_op_f32(f32(-1.0) * -594.0), all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))))))));
                    var var_2 = Struct_2(~vec3<u32>(u_input.d, ~1u, u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(788.0, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-941.0)), var_0.a)), _wgslsmith_add_vec3_u32(vec3<u32>(25190u, u_input.c | u_input.d, global0.a), countOneBits(vec3<u32>(global0.a, 19642u, 21973u))) & vec3<u32>(~(u_input.c >> (4294967295u % 32u)), 1680u, u_input.c), !any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, false), false)));
                    var_2 = Struct_2(var_2.a, var_2.b, _wgslsmith_clamp_vec3_u32(reverseBits(max(var_2.c, var_2.a)), min(abs(vec3<u32>(u_input.c, 4294967295u, 50713u)), var_2.a), abs(vec3<u32>(global0.a, 1u, u_input.d))) << (_wgslsmith_mult_vec3_u32(var_2.a, var_2.c) % vec3<u32>(32u)), false);
                    var var_3 = Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32((vec3<u32>(62894u, 11436u, 0u) | vec3<u32>(96288u, 0u, var_2.c.x)) | (vec3<u32>(4294967295u, 1u, 1u) | vec3<u32>(40597u, 13384u, 0u)), ~vec3<u32>(4294967295u, var_2.c.x, var_2.a.x)), reverseBits(~(~vec3<u32>(global0.a, 1u, 0u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_7(Struct_3(1632.0, var_2.b), func_2(vec4<f32>(-708.0, -500.0, -1470.0, -1698.0), var_2.d), select(vec4<bool>(var_2.d, var_2.d, false, var_2.d), vec4<bool>(true, true, var_2.d, var_2.d), true)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1)))), _wgslsmith_f_op_f32(f32(-1.0) * -727.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-586.0) - -818.0)))), var_2.c ^ var_2.c, any(vec3<bool>(false, func_4(global2[_wgslsmith_index_u32(u_input.c, 28u)], Struct_2(var_2.a, var_2.b, var_2.c, true), var_2.b.yz, Struct_2(vec3<u32>(global0.a, 68310u, 9388u), var_2.b, vec3<u32>(u_input.d, u_input.d, var_2.a.x), var_2.d)).x, false)));
                    let var_4 = func_5(Struct_3(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(251.0, -1502.0, var_0.b.x, var_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1831.0, 146.0, -1054.0, 1628.0)))))), var_3.c.zy | firstTrailingBit(~var_2.a.yy), !vec2<bool>(!(!var_3.d), !false)).x;
                }
            }
            if (any(!vec2<bool>(all(!vec3<bool>(false, false, false)), !false | true))) {
                global0 = global2[_wgslsmith_index_u32(u_input.d, 28u)];
                let var_1 = !func_5(Struct_3(_wgslsmith_f_op_f32(-1006.0), var_0.b), _wgslsmith_sub_vec2_u32(select(vec2<u32>(global0.a, u_input.d) ^ vec2<u32>(global0.a, 64446u), vec2<u32>(global0.a, 1u), any(vec2<bool>(false, true))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global0.a), vec2<u32>(20557u, global0.a), vec2<u32>(4294967295u, 1u))), !func_5(var_0, vec2<u32>(u_input.c, global0.a), func_5(var_0, vec2<u32>(0u, global0.a), vec2<bool>(true, true)).xx).zy).zz;
            }
            switch (~_wgslsmith_div_i32(-countOneBits(-2147483648), -3785)) {
                case 1: {
                    var var_1 = global2[_wgslsmith_index_u32(~countOneBits(~(~4294967295u ^ global0.a)), 28u)];
                    let var_2 = true & (u_input.a.x < -2147483648);
                    let var_3 = vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.a), var_0.a);
                    let var_4 = vec4<bool>(!var_2 || var_2, var_2, var_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1274.0 - -1113.0), -1480.0) - _wgslsmith_f_op_f32(trunc(var_3.x))) < _wgslsmith_f_op_f32(-var_3.x));
                    global2 = array<Struct_1, 28>();
                }
                case 0: {
                    global0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(708.0, var_0.b.x), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.b.x - 923.0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)))), true);
                    global2 = array<Struct_1, 28>();
                    let var_1 = ~(~((~vec3<u32>(72206u, global0.a, 43468u) | reverseBits(vec3<u32>(36389u, 0u, global0.a))) << (vec3<u32>(~global0.a, 58861u, global0.a | global0.a) % vec3<u32>(32u))));
                    let var_2 = var_0;
                }
                default: {
                    global0 = global2[_wgslsmith_index_u32(reverseBits(global0.a), 28u)];
                    global2 = array<Struct_1, 28>();
                    global0 = Struct_1(0u);
                    var var_1 = -u_input.b;
                    let var_2 = 41627u;
                }
            }
        }
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_0 = 41620 >> (abs(reverseBits(_wgslsmith_div_u32(u_input.c | 0u, abs(global0.a)))) % 32u);
                var var_1 = _wgslsmith_div_f32(-1321.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1994.0, 317.0))))));
            }
            switch (~((_wgslsmith_add_i32(-55643, ~u_input.b.x) ^ _wgslsmith_div_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.e.x, -1))) | (1917 ^ -u_input.a.x))) {
                case -2147483648: {
                    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-114.0, -1807.0)), -1000.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -191.0), _wgslsmith_f_op_f32(f32(-1.0) * -183.0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1100.0) - 1000.0))))));
                    let var_1 = false;
                    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
                }
                case 51: {
                }
                case -9813: {
                    global2 = array<Struct_1, 28>();
                    var var_0 = global2[_wgslsmith_index_u32(~u_input.c, 28u)];
                }
                case 21888: {
                    let var_0 = Struct_2(vec3<u32>(reverseBits(6307u >> (1u % 32u)) >> (global0.a % 32u), ~countOneBits(abs(u_input.c)), global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1000.0, 1373.0, true)), _wgslsmith_f_op_f32(489.0 - 417.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -317.0), -327.0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -495.0), -1405.0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-602.0 + 142.0), _wgslsmith_f_op_f32(-249.0), all(vec3<bool>(false, true, true)))))), ~vec3<u32>(u_input.c, ~u_input.c | global0.a, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, global0.a, 77958u, u_input.d), vec4<u32>(global0.a, 4294967295u, 4294967295u, 46080u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(881.0 + 177.0), -297.0)))) < _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-132.0), _wgslsmith_f_op_f32(f32(-1.0) * -1477.0)), _wgslsmith_f_op_f32(f32(-1.0) * -777.0))));
                    global2 = array<Struct_1, 28>();
                }
                default: {
                    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-143.0), 1734.0, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(167.0, -621.0)))) - 295.0))));
                    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000.0, var_0.x)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-899.0, var_0.x, 614.0, var_0.x), vec4<f32>(var_0.x, 894.0, var_0.x, -1571.0)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1571.0, var_0.x, 1869.0, -307.0), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(474.0, var_0.x, -2688.0, var_0.x), vec4<f32>(325.0, 981.0, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000.0, var_0.x, 114.0, var_0.x))) * vec4<f32>(var_0.x, var_0.x, 588.0, -1000.0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, 1352.0, 1531.0))))), vec4<bool>(false, !true | false, !true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)))))), !func_3());
                    let var_2 = Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(58646u, 29975u, var_1.a), vec3<u32>(global0.a, 33132u, var_1.a) ^ vec3<u32>(global0.a, var_1.a, 0u)), ~(~vec3<u32>(58590u, 4294967295u, 1u))) ^ vec3<u32>(u_input.c, 4294967295u, u_input.c), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(642.0, -118.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), -700.0)), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, 877.0, 1002.0)))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 234.0), _wgslsmith_f_op_f32(abs(var_0.x)), 316.0, _wgslsmith_div_f32(var_0.x, 1270.0))))), ~(~vec3<u32>(_wgslsmith_add_u32(1u, 1u), ~88022u, 0u)), 0u == global0.a);
                    global1 = global0.a;
                }
            }
            if (!false) {
                let var_0 = Struct_1(global0.a);
            }
            return;
        }
        case -56766: {
        }
        case 46423: {
            switch (0) {
                case -2147483648: {
                    let var_0 = vec2<u32>(32171u, 34411u);
                }
                default: {
                    var var_0 = true;
                    let var_1 = vec3<i32>(u_input.a.x, 1, ~func_6(global0.a, Struct_3(1353.0, vec4<f32>(105.0, 1060.0, 1264.0, -875.0)), Struct_2(vec3<u32>(4294967295u, 3546u, u_input.c), vec4<f32>(-933.0, -438.0, -1342.0, 151.0), vec3<u32>(u_input.c, 1u, global0.a), false), Struct_3(-2444.0, vec4<f32>(-1473.0, 1635.0, 1023.0, 1283.0)))) >> (vec3<u32>(~1u, firstTrailingBit(0u | 1u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, global0.a), ~vec3<u32>(u_input.d, global0.a, 4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(85712u, 7070u, 99978u), ~vec3<u32>(u_input.d, 0u, global0.a)), vec3<u32>(80053u & 27608u, u_input.c >> (0u % 32u), max(u_input.d, u_input.c)))) % vec3<u32>(32u));
                    var var_2 = Struct_2(firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.a, global0.a, 65197u), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 10254u), ~vec3<u32>(4294967295u, u_input.c, 13246u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(253.0 + 708.0), _wgslsmith_f_op_f32(max(-911.0, 940.0)), _wgslsmith_f_op_f32(trunc(-1031.0)), _wgslsmith_f_op_vec4_f32(func_7(Struct_3(2177.0, vec4<f32>(760.0, -620.0, 1423.0, -893.0)), Struct_1(u_input.c), vec4<bool>(false, true, true, false))).x))), vec4<f32>(-1238.0, 2009.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1823.0, 1000.0, false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(277.0, -1000.0)))), reverseBits(vec3<u32>(~u_input.c << (global0.a % 32u), 1u, 19163u)), !false);
                    let var_3 = false;
                }
            }
        }
        default: {
        }
    }
    global1 = 1u;
    var var_0 = ~reverseBits(max(~vec4<u32>(4294967295u, global0.a, global0.a, 35402u), abs(vec4<u32>(u_input.d, 29030u, 46776u, u_input.d)))) >> (vec4<u32>(60064u, ~_wgslsmith_div_u32(64843u, min(u_input.d, 46455u)), u_input.c, u_input.d) % vec4<u32>(32u));
    let var_1 = select(func_4(func_2(vec4<f32>(-872.0, _wgslsmith_f_op_f32(floor(-638.0)), 2185.0, _wgslsmith_f_op_f32(1138.0 + 470.0)), false), Struct_2(var_0.zzw, _wgslsmith_div_vec4_f32(vec4<f32>(1000.0, -334.0, -1499.0, 205.0), vec4<f32>(-566.0, 444.0, 922.0, -1422.0)), max(select(vec3<u32>(61048u, var_0.x, 35540u), var_0.wzw, vec3<bool>(true, false, true)), ~var_0.zxy), false), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1502.0, -1090.0), vec2<f32>(839.0, -701.0))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(225.0, -1431.0)))), Struct_2(var_0.zyz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(575.0, 328.0, -582.0, 885.0) * vec4<f32>(-1851.0, -1461.0, -1947.0, -430.0))), ~abs(var_0.wyx), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.yz) < u_input.d)), select(!select(vec3<bool>(false, false, true), !vec3<bool>(true, false, true), !true), func_4(global2[_wgslsmith_index_u32(select(u_input.c, 3688u, false) >> (var_0.x % 32u), 28u)], Struct_2(var_0.wzz, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-714.0, 534.0, 1700.0, -263.0))), vec3<u32>(global0.a, u_input.c, global0.a), !true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1072.0, -997.0)), Struct_2(~var_0.zxy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000.0, 875.0, -104.0, -1000.0)), _wgslsmith_sub_vec3_u32(var_0.zxy, vec3<u32>(global0.a, 1u, global0.a)), all(vec2<bool>(true, false)))), func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2172.0, -1000.0, 227.0, 535.0)), !true), Struct_2(vec3<u32>(var_0.x, global0.a, 20569u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(484.0, -234.0, 427.0, -1505.0)), firstTrailingBit(vec3<u32>(u_input.c, 4294967295u, var_0.x)), func_4(Struct_1(86074u), Struct_2(var_0.zzy, vec4<f32>(-1571.0, -555.0, -310.0, 238.0), var_0.ywy, false), vec2<f32>(687.0, -1076.0), Struct_2(var_0.xyz, vec4<f32>(1000.0, -1491.0, -2060.0, -363.0), vec3<u32>(20169u, u_input.d, 38867u), false)).x), vec2<f32>(-462.0, 404.0), Struct_2(countOneBits(var_0.zzw), vec4<f32>(-492.0, 963.0, 1000.0, 847.0), var_0.xww, true))), true);
    for (var var_2 = -85095; true; var_2 += 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        break;
    }
    let var_2 = -_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(u_input.b.x, 52488) << (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), reverseBits(u_input.a));
    var_0 = vec4<u32>(~36023u, _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(~u_input.d, ~_wgslsmith_div_u32(37052u, var_0.x))), var_0.x, ~_wgslsmith_div_u32(reverseBits(reverseBits(0u)), _wgslsmith_dot_vec3_u32(min(var_0.yzx, var_0.wwy), var_0.xxx)));
    for (; ; ) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        if (var_0.x != (var_0.x & 77501u)) {
            var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(914.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510.0) - _wgslsmith_f_op_f32(f32(-1.0) * -1210.0)))));
            let var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(abs(global0.a ^ ~53309u), var_0.x), ~vec2<u32>(35424u, _wgslsmith_add_u32(~var_0.x, u_input.d)));
            global1 = _wgslsmith_mult_u32(27296u, 4294967295u);
            continue;
        }
        global2 = array<Struct_1, 28>();
        let var_3 = Struct_2(select(min(min(~var_0.zwz, var_0.wzw), var_0.wwz), ~var_0.wyy, var_2 > -1), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-161.0, -951.0, 1363.0, 444.0) - vec4<f32>(-1305.0, -206.0, 3341.0, -703.0)))) + vec4<f32>(_wgslsmith_f_op_f32(1276.0 - -1000.0), _wgslsmith_f_op_f32(f32(-1.0) * -1334.0), _wgslsmith_f_op_f32(-1545.0 * 1270.0), _wgslsmith_f_op_f32(round(1339.0)))), vec4<f32>(-330.0, _wgslsmith_f_op_f32(round(-1000.0)), 538.0, -168.0))), var_0.wzw, all(!var_1.zx));
        if (var_3.b.x != var_3.b.x) {
            var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2541.0 - 1082.0));
            var var_5 = select(select(vec4<bool>(!var_3.d, -7689 != var_2, !true && true, func_4(global2[_wgslsmith_index_u32(var_3.a.x, 28u)], Struct_2(vec3<u32>(u_input.c, global0.a, 5237u), vec4<f32>(-1000.0, var_3.b.x, var_3.b.x, var_3.b.x), var_3.a, false), vec2<f32>(var_3.b.x, 396.0), var_3).x), vec4<bool>(var_3.d, _wgslsmith_f_op_f32(exp2(-1285.0)) >= var_3.b.x, select(func_5(Struct_3(var_3.b.x, var_3.b), vec2<u32>(0u, 8722u), vec2<bool>(var_1.x, var_1.x)).x, all(vec4<bool>(true, false, false, true)), var_3.d), !(true & true)), false || all(!vec4<bool>(false, var_1.x, var_3.d, var_3.d))), select(select(!(!vec4<bool>(var_3.d, true, var_1.x, false)), select(select(vec4<bool>(var_3.d, var_1.x, var_3.d, false), vec4<bool>(false, var_3.d, false, false), vec4<bool>(false, true, true, var_1.x)), !vec4<bool>(false, var_3.d, var_3.d, var_3.d), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), select(vec4<bool>(false, var_3.d, var_1.x, true), vec4<bool>(var_3.d, false, var_3.d, true), !vec4<bool>(var_1.x, true, false, var_1.x))), !select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, true), !vec4<bool>(var_1.x, true, true, true)), !select(select(vec4<bool>(true, true, false, var_1.x), vec4<bool>(var_3.d, var_3.d, var_1.x, var_1.x), vec4<bool>(var_3.d, false, var_3.d, true)), select(vec4<bool>(var_1.x, var_3.d, var_1.x, var_1.x), vec4<bool>(var_3.d, var_1.x, true, false), vec4<bool>(var_1.x, false, var_3.d, true)), !vec4<bool>(var_3.d, var_3.d, true, false))), select(!select(vec4<bool>(false, var_3.d, var_3.d, var_3.d), select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_3.d, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, true)), !var_1.x), vec4<bool>(var_3.d != (true || true), ~4294967295u < 11417u, func_5(Struct_3(774.0, var_3.b), _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.a.x, 75623u), vec2<u32>(0u, global0.a)), !var_1.zy).x, all(!var_1)), false));
            var var_6 = ~_wgslsmith_mod_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, global0.a, var_3.a.x), vec3<u32>(24333u, global0.a, 0u)), var_0.wxx) & firstTrailingBit(abs(vec3<u32>(u_input.d, 3263u, var_0.x))), select(var_0.yyz, ~_wgslsmith_sub_vec3_u32(var_0.yxw, var_3.a), !(!var_5.wxy)));
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(500.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(243.0, 1201.0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-372.0 * -749.0)))), 1278.0, _wgslsmith_div_f32(-235.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -911.0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-1834.0)), _wgslsmith_f_op_f32(max(-1260.0, -304.0)), _wgslsmith_f_op_f32(-1684.0)), vec3<f32>(_wgslsmith_f_op_f32(floor(1191.0)), _wgslsmith_f_op_f32(abs(-518.0)), _wgslsmith_f_op_f32(-1144.0 + 1141.0)), select(func_4(global2[_wgslsmith_index_u32(u_input.c, 28u)], Struct_2(var_0.xxx, vec4<f32>(1838.0, -153.0, -1057.0, -1000.0), var_0.xxy, false), vec2<f32>(-449.0, 321.0), Struct_2(var_0.yxy, vec4<f32>(1000.0, -645.0, 284.0, 608.0), vec3<u32>(u_input.c, 52139u, 0u), true)), !vec3<bool>(var_1.x, var_1.x, true), var_1)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-729.0))) * _wgslsmith_f_op_f32(f32(-1.0) * -1575.0)))));
}

