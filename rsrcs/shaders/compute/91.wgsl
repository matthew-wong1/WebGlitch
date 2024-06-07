// {"0:0":[179,109,126,78,216,81,9,217,33,68,6,94,166,71,199,177,189,103,35,79,217,62,181,185,13,27,230,159,131,22,38,127]}
// Seed: 8280615697994000711

struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5>;

var<private> global1: f32;

var<private> global2: array<i32, 12> = array<i32, 12>(0, 276, 2147483647, -727, -1, 0, 1, -3328, -53119, 1, 17787, 48938);

var<private> global3: f32;

var<private> LOOP_COUNTERS: array<u32, 16>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn func_6(arg_0: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, ~(~u_input.b.x), ~1u, 45252u), vec4<u32>(4294967295u, reverseBits(_wgslsmith_clamp_u32(58548u, arg_0, u_input.b.x)), ~_wgslsmith_sub_u32(u_input.b.x, 9780u), ~(~u_input.b.x))), _wgslsmith_clamp_vec3_i32(~u_input.a << (_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(u_input.b.x, 1u, 1u), vec3<u32>(31394u, arg_0, 46339u)), firstTrailingBit(vec3<u32>(arg_0, 1u, u_input.b.x))) % vec3<u32>(32u)), -vec3<i32>(abs(u_input.c), -46167, -u_input.c), reverseBits(reverseBits(u_input.a >> (vec3<u32>(81431u, arg_0, 19323u) % vec3<u32>(32u))))), -2147483648, abs(~abs(~vec4<u32>(0u, u_input.b.x, 0u, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(-270.0)), 317.0), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-309.0, 1625.0))))), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(743.0, 1307.0), _wgslsmith_f_op_f32(trunc(734.0))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000.0, -125.0) + vec2<f32>(-1000.0, 288.0)), vec2<f32>(108.0, 703.0)))));
    if (!(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~global2[_wgslsmith_index_u32(var_0.a, 12u)], _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.c), vec2<i32>(-2882, 2147483647))), u_input.a.x) <= _wgslsmith_clamp_i32(~(u_input.a.x << (4189u % 32u)), -(~(-2147483648)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~30278u, 4294967295u), 12u)]))) {
    }
    var var_1 = Struct_3(Struct_2(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), all(vec2<bool>(false, true)))), var_0), false, var_0.e.x, Struct_2(true, var_0));
    var_1 = Struct_3(Struct_2(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(var_1.d.a, var_1.a.a, true, var_1.a.a), vec4<bool>(var_1.b, false, var_1.a.a, var_1.b))), Struct_1(u_input.b.x ^ 1u, _wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.b.b.x, var_0.c, var_1.d.b.b.x) >> (var_0.d.xyx % vec3<u32>(32u)), u_input.a << (var_1.a.b.d.wzy % vec3<u32>(32u))), min(-1, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, var_1.a.b.b.x), var_1.a.b.b.yz)), vec4<u32>(39996u >> (27780u % 32u), var_0.a, abs(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, var_1.d.b.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.e)) + vec2<f32>(var_0.e.x, var_1.c)))), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(779.0, 565.0))) + var_0.e.x))), var_1.d);
    var var_2 = vec2<bool>(!(~arg_0 != firstLeadingBit(abs(61443u))), any(vec3<bool>(!(arg_0 < 53297u), true && !false, var_1.b)));
    return max(countOneBits(var_1.d.b.d.x), 11081u);
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> Struct_4 {
    global0 = array<Struct_4, 5>();
    var var_0 = Struct_3(Struct_2(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false)), Struct_1(~func_6(44097u), vec3<i32>(u_input.a.x, u_input.c, -2147483647), -u_input.a.x ^ (-1112 ^ arg_1), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(204.0, arg_2)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, arg_2))))))), false, _wgslsmith_f_op_f32(-473.0), Struct_2(select(true, abs(u_input.b.x) > u_input.b.x, ~37058u == 35478u), Struct_1(u_input.b.x, abs(select(vec3<i32>(2147483647, 3548, 28419), u_input.a, false)), abs(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(24217u, 12u)], -2147483648)), min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 35222u), vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x)), vec4<u32>(19004u, u_input.b.x, 47448u, u_input.b.x) & vec4<u32>(0u, 23728u, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, -1000.0)))))));
    let var_1 = ~0;
    let var_2 = !select(vec3<bool>(true, true && all(vec2<bool>(true, var_0.b)), !(var_0.b != true)), vec3<bool>(21499 != _wgslsmith_div_i32(1924, -1), any(vec3<bool>(false, var_0.d.a, var_0.b)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.b, false, var_0.d.a, false), vec4<bool>(false, var_0.d.a, var_0.d.a, false)))), var_0.a.a);
    if (var_0.a.a) {
        global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.b.e.x * 1000.0)))) * var_0.a.b.e.x));
    }
    return Struct_4(4294967295u, Struct_1(~countOneBits(_wgslsmith_div_u32(0u, 46740u)), vec3<i32>(0, -2147483648, _wgslsmith_mult_i32(~var_0.d.b.b.x, var_1 | -5235)), -var_1, var_0.d.b.d, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.e.x + var_0.d.b.e.x)), arg_2)), Struct_2(true, var_0.d.b), Struct_2(u_input.a.x >= -select(-2147483648, var_1, true), Struct_1(var_0.a.b.d.x, reverseBits(var_0.d.b.b), 0, ~(~var_0.a.b.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c, var_0.c), var_0.a.b.e)) * var_0.a.b.e))), _wgslsmith_clamp_u32(select(_wgslsmith_clamp_u32(0u, var_0.d.b.a, 38964u), u_input.b.x, all(var_2.yx)), firstTrailingBit(~40534u), var_0.a.b.d.x));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec4<i32>) -> bool {
    let var_0 = func_5(reverseBits(arg_3), -4457, _wgslsmith_f_op_f32(floor(612.0))).b;
    switch (max(select(-abs(38866), max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, u_input.c, arg_1.b.c, 2416), vec4<i32>(-1, 2147483647, -12719, arg_3.x)), -arg_3.x), all(!arg_2)), 2147483647) >> (29048u % 32u)) {
        case 23689: {
            switch (~(-39953)) {
                case -1: {
                }
                case 36408: {
                    var var_1 = all(arg_2.xxx);
                    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d.b.e.x, var_0.e.x), _wgslsmith_f_op_vec2_f32(arg_1.d.b.e + var_0.e)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.e)) + _wgslsmith_f_op_vec2_f32(var_0.e - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(411.0, var_0.e.x), vec2<f32>(arg_0.b.e.x, -841.0), true == arg_2.x)))));
                }
                default: {
                }
            }
            global2 = array<i32, 12>();
            if (false) {
                let var_1 = all(select(arg_2.wzw, arg_2.wwx, vec3<bool>(!true, !(!arg_0.a), false)));
                var var_2 = _wgslsmith_mult_vec3_u32(abs(var_0.d.yww), ~vec3<u32>(_wgslsmith_mod_u32(~0u, ~u_input.b.x), min(_wgslsmith_clamp_u32(4294967295u, 4294967295u, var_0.a), ~var_0.d.x), 4294967295u));
            }
            var var_1 = select(select(!select(vec3<bool>(true, arg_0.a, arg_1.d.a), arg_2.wxw, !arg_2.wzx), select(arg_2.xzz, vec3<bool>(!arg_2.x, any(arg_2.yyy), true && arg_2.x), vec3<bool>(false == true, any(vec4<bool>(arg_2.x, false, false, arg_1.c.a)), arg_1.b.e.x == arg_1.c.b.e.x)), !(!vec3<bool>(true, arg_1.c.a, arg_1.d.a))), !(!vec3<bool>(any(arg_2), arg_2.x, all(vec3<bool>(arg_0.a, true, arg_2.x)))), arg_2.zzx);
            var_1 = !(!vec3<bool>(arg_2.x, !all(vec4<bool>(false, arg_0.a, arg_0.a, false)), false));
        }
        case 13196: {
        }
        case 1: {
            global0 = array<Struct_4, 5>();
        }
        default: {
            switch (64082) {
                default: {
                }
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var var_1 = Struct_2(-var_0.c == ~1, Struct_1(10629u, arg_0.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1) * -vec3<i32>(arg_3.x, -2147483648, -18688), _wgslsmith_div_vec3_i32(~vec3<i32>(arg_3.x, -1, u_input.a.x), vec3<i32>(18572, -1, -28814))), vec4<u32>(17022u << (u_input.b.x % 32u), u_input.b.x, abs(select(46700u, arg_1.d.b.d.x, arg_1.d.a)), _wgslsmith_div_u32(u_input.b.x | 25709u, _wgslsmith_mod_u32(u_input.b.x, 0u))), arg_0.b.e));
        break;
    }
    var var_1 = vec3<u32>(32813u, 1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~10910u, ~var_0.a, 0u, u_input.b.x), ~vec4<u32>(55094u, arg_1.b.a, arg_0.b.d.x, var_0.a))));
    switch (_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(arg_0.b.a, 12u)], arg_0.b.b.x)) {
        case 1: {
            switch (-20087) {
                case -12807: {
                    var var_2 = func_5(select(vec4<i32>(arg_1.d.b.c, arg_0.b.c, ~1 | -u_input.c, _wgslsmith_dot_vec4_i32(~arg_3, countOneBits(vec4<i32>(var_0.b.x, global2[_wgslsmith_index_u32(arg_1.e, 12u)], arg_1.c.b.b.x, arg_0.b.b.x)))), select(min(arg_3, reverseBits(vec4<i32>(0, u_input.c, 16671, 13806))), arg_3, arg_2.x), true), u_input.a.x, 1199.0).d;
                    global0 = array<Struct_4, 5>();
                    global0 = array<Struct_4, 5>();
                }
                case 0: {
                    global1 = _wgslsmith_f_op_f32(select(133.0, -295.0, all(select(select(arg_2.xy, arg_2.zx, 22123 == arg_3.x), !arg_2.wx, !arg_2.xz))));
                    global2 = array<i32, 12>();
                    var_1 = vec3<u32>(arg_0.b.d.x, firstLeadingBit(~0u), 1u);
                }
                case -2147483648: {
                    var var_2 = !(!arg_0.a);
                    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2008.0 - 404.0), arg_0.b.e.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1257.0) * _wgslsmith_f_op_f32(select(-855.0, -1368.0, arg_2.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_div_f32(arg_0.b.e.x, 528.0)), _wgslsmith_f_op_f32(f32(-1.0) * -277.0))))));
                    var var_3 = countOneBits(vec2<i32>(~0, arg_1.b.c));
                }
                default: {
                }
            }
            var var_2 = _wgslsmith_f_op_f32(select(-606.0, -1211.0, !(1202u < ~54892u)));
        }
        case -1: {
            for (var var_2 = -20636; var_2 == -2147483648; ) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                continue;
            }
            let var_2 = Struct_3(func_5(arg_3, -22197, arg_1.b.e.x).d, select(true, !arg_2.x, arg_0.a), 504.0, Struct_2(all(vec4<bool>(arg_0.a, true, arg_2.x, true)) | false, Struct_1(arg_0.b.a, var_0.b, reverseBits(var_0.c), vec4<u32>(~u_input.b.x, 9927u, u_input.b.x, ~arg_1.e), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -727.0), -867.0))));
            var_1 = arg_1.c.b.d.yxw;
            var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-247.0 * -1444.0), _wgslsmith_f_op_f32(-arg_1.d.b.e.x), _wgslsmith_f_op_f32(f32(-1.0) * -534.0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1060.0, var_0.e.x, arg_1.d.b.e.x))))))));
        }
        case 76909: {
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                global0 = array<Struct_4, 5>();
                var var_2 = ~(arg_0.b.d.zzy << (arg_0.b.d.xzy % vec3<u32>(32u)));
                global0 = array<Struct_4, 5>();
                let var_3 = -268.0;
                let var_4 = arg_2;
            }
            let var_2 = Struct_3(Struct_2(!arg_0.a | (firstTrailingBit(var_0.a) < ~arg_0.b.a), Struct_1((70829u >> (4294967295u % 32u)) & reverseBits(var_0.a), vec3<i32>(_wgslsmith_div_i32(arg_1.d.b.b.x, var_0.c), _wgslsmith_add_i32(arg_0.b.c, 0), u_input.a.x), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(var_1.x, 12u)], -arg_1.d.b.c, global2[_wgslsmith_index_u32(var_0.a, 12u)]), ~(vec4<u32>(var_0.d.x, 46459u, var_0.d.x, var_1.x) | vec4<u32>(12182u, u_input.b.x, 4294967295u, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(684.0, 1405.0) * vec2<f32>(var_0.e.x, -367.0)))), true, -1000.0, arg_0);
        }
        default: {
        }
    }
    return ~(~arg_1.b.b.x >> (firstTrailingBit(_wgslsmith_div_u32(var_0.d.x, var_1.x)) % 32u)) < 30836;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-212.0);
    if (all(!(!select(!vec4<bool>(false, arg_3, arg_2.b, true), !vec4<bool>(arg_2.b, true, true, arg_2.a.a), vec4<bool>(false, true, arg_2.a.a, false))))) {
        global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-1649.0 * arg_0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1379.0 * _wgslsmith_f_op_f32(step(arg_2.a.b.e.x, -352.0)))), -1914.0)));
        var var_1 = global0[_wgslsmith_index_u32(0u, 5u)];
        if (var_1.c.a) {
        }
        global3 = 584.0;
        switch (arg_1) {
            case 17775: {
                let var_2 = arg_2.a.b.d.x;
                let var_3 = select(-766, 0, any(vec2<bool>(0u > max(53571u, 0u), any(!vec4<bool>(false, arg_2.a.a, false, arg_2.d.a)))));
                global0 = array<Struct_4, 5>();
                var var_4 = !(_wgslsmith_mod_u32(firstTrailingBit(~arg_2.d.b.a), min(var_2, ~arg_2.a.b.d.x)) >= ~arg_2.a.b.d.x);
            }
            default: {
                global0 = array<Struct_4, 5>();
                var var_2 = Struct_3(Struct_2(func_7(arg_2.d, func_5(vec4<i32>(arg_2.d.b.c, 1, u_input.a.x, 0) & vec4<i32>(0, -1, global2[_wgslsmith_index_u32(arg_2.a.b.a, 12u)], arg_1), arg_2.d.b.b.x, arg_0.x), vec4<bool>(!var_1.c.a, var_1.b.c > 2147483647, any(vec2<bool>(true, true)), !true), select(vec4<i32>(15325, 26463, 39327, -19066), vec4<i32>(2147483647, -2147483648, var_1.c.b.b.x, var_1.c.b.c), vec4<bool>(arg_3, false, var_1.d.a, false)) ^ select(vec4<i32>(2147483647, u_input.a.x, 1, -37493), vec4<i32>(2147483647, 25316, 2147483647, -1), arg_2.d.a)), func_5(vec4<i32>(0, abs(arg_1), arg_1 ^ 1, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(55549u, 12u)], arg_2.d.b.b.x)), _wgslsmith_clamp_i32(0, 0, var_1.b.b.x) & (0 << (26108u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -797.0) + arg_0.x)).c.b), true, arg_2.a.b.e.x, func_5(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, -2147483648, 38755, 1) >> (arg_2.a.b.d % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(10387, -1, global2[_wgslsmith_index_u32(arg_2.d.b.d.x, 12u)], u_input.a.x), vec4<i32>(var_1.d.b.c, u_input.a.x, arg_2.a.b.c, 14966))), -((var_1.c.b.b.x >> (22031u % 32u)) << (~1u % 32u)), _wgslsmith_f_op_f32(1165.0 - arg_2.d.b.e.x)).c);
                var var_3 = arg_2.a.b.d;
                var var_4 = -(~vec3<i32>(~(-41018), max(~var_1.c.b.b.x, var_2.d.b.c & -60129), _wgslsmith_add_i32(var_1.b.c, -1)));
                var var_5 = Struct_4(66448u, func_5(vec4<i32>(var_4.x, -min(arg_1, -1), _wgslsmith_add_i32(~global2[_wgslsmith_index_u32(arg_2.d.b.d.x, 12u)], var_4.x), 5971), (~arg_2.a.b.c | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_2.a.b.c, var_2.a.b.b.x), vec3<i32>(303, arg_1, var_4.x))) >> (var_2.d.b.d.x % 32u), -795.0).d.b, Struct_2(var_2.d.a, func_5(vec4<i32>(func_5(vec4<i32>(74432, arg_1, arg_2.a.b.c, u_input.a.x), 1, 464.0).b.c, 8282, 5535, -2147483647), -(~27538), _wgslsmith_f_op_f32(max(var_2.d.b.e.x, _wgslsmith_f_op_f32(-1000.0)))).d.b), Struct_2(!func_7(Struct_2(true, Struct_1(arg_2.a.b.a, u_input.a, 2147483647, arg_2.a.b.d, var_1.b.e)), Struct_4(4926u, arg_2.d.b, arg_2.a, Struct_2(var_2.d.a, arg_2.d.b), 40338u), vec4<bool>(false, false, true, var_2.b), vec4<i32>(global2[_wgslsmith_index_u32(var_1.a, 12u)], 0, u_input.c, 1)) && select(any(vec3<bool>(true, false, var_1.d.a)), false, !true), func_5(max(vec4<i32>(1711, -2147483648, var_1.d.b.c, -1), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, arg_2.a.b.b.x, var_1.b.b.x, var_1.c.b.b.x), vec4<i32>(43723, arg_2.d.b.c, -3873, var_2.d.b.c))), _wgslsmith_mult_i32(arg_2.d.b.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.b.b.x, 43285, var_4.x), vec4<i32>(arg_2.d.b.c, global2[_wgslsmith_index_u32(var_2.a.b.d.x, 12u)], 0, var_2.a.b.b.x))), arg_0.x).d.b), var_1.b.d.x);
            }
        }
    }
    for (; false; ) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(_wgslsmith_add_vec4_i32(vec4<i32>(39495, 0, 52061, -2147483648), vec4<i32>(2388, 1, -13985, arg_1)), _wgslsmith_sub_i32(30501, arg_1), _wgslsmith_f_op_f32(-785.0 + arg_0.x)).c.b.e.x) - arg_2.c));
    }
    switch (~u_input.c) {
        case 2147483647: {
            switch (0) {
                default: {
                }
            }
        }
        case 15256: {
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_1 = vec3<bool>(false, !true, _wgslsmith_f_op_f32(exp2(arg_0.x)) <= _wgslsmith_f_op_f32(-arg_0.x));
            }
        }
        case -75319: {
            switch (~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.c)) {
                case 1: {
                    var var_1 = u_input.c;
                    global2 = array<i32, 12>();
                }
                case -1: {
                }
                case 39410: {
                }
                default: {
                    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268.0) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, arg_2.a.b.e.x))), _wgslsmith_f_op_f32(414.0 - arg_0.x)))) * _wgslsmith_f_op_f32(-arg_0.x));
                    let var_1 = abs(13332u);
                    global3 = 863.0;
                }
            }
            if (true && all(select(!select(vec3<bool>(false, arg_3, true), vec3<bool>(arg_2.d.a, false, arg_3), false), vec3<bool>(!true, false, all(vec2<bool>(arg_2.d.a, arg_2.d.a))), any(!vec3<bool>(arg_2.d.a, arg_3, arg_2.a.a))))) {
                let var_1 = arg_2.d.b;
                var_0 = 468.0;
                let var_2 = !vec2<bool>(!(var_1.e.x >= arg_0.x), var_1.e.x <= arg_0.x);
                var var_3 = arg_2.d.b.d.zy ^ u_input.b;
                let var_4 = ~countOneBits(~(2265u >> (u_input.b.x % 32u)) | (~4294967295u & func_5(vec4<i32>(-51224, 7695, -1, 0), 1, 3017.0).c.b.a));
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                let var_1 = Struct_4(countOneBits(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.b.x, min(4294967295u, 4294967295u)), arg_2.d.b.d.x)), func_5(vec4<i32>(select(abs(-1), -7039, any(vec2<bool>(true, arg_2.b))), 1, arg_2.a.b.b.x, -global2[_wgslsmith_index_u32(~u_input.b.x, 12u)]), _wgslsmith_mod_i32(~(-global2[_wgslsmith_index_u32(arg_2.d.b.a, 12u)]), reverseBits(-1 << (u_input.b.x % 32u))), 147.0).d.b, arg_2.a, Struct_2(arg_2.a.a, Struct_1(max(firstLeadingBit(1792u), ~u_input.b.x), -u_input.a | firstTrailingBit(vec3<i32>(0, -2147483648, arg_1)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(arg_1, 96775)), vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(114092u, 12u)])), select(vec4<u32>(0u, u_input.b.x, arg_2.d.b.a, arg_2.a.b.d.x) >> (vec4<u32>(u_input.b.x, arg_2.a.b.d.x, u_input.b.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, arg_2.a.b.a, u_input.b.x, 1u) & vec4<u32>(arg_2.a.b.d.x, arg_2.a.b.a, u_input.b.x, u_input.b.x), select(vec4<bool>(arg_2.d.a, true, false, arg_2.d.a), vec4<bool>(false, false, arg_2.d.a, false), vec4<bool>(arg_2.d.a, true, false, false))), arg_2.d.b.e)), ~0u);
                var var_2 = ~u_input.b;
                var var_3 = vec3<i32>(max(~select(~arg_1, func_5(vec4<i32>(var_1.b.b.x, arg_2.a.b.c, 2147483647, -42180), arg_1, arg_0.x).b.b.x, false), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(14419u, 12u)], -21389)), var_1.c.b.b.xx)), u_input.c, -_wgslsmith_sub_i32(select(_wgslsmith_mult_i32(arg_1, 2147483647), ~0, !true), firstTrailingBit(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_2.x, 12u)], arg_1))));
                let var_4 = all(vec4<bool>(var_1.d.a, false, arg_2.a.a, false));
            }
            var var_1 = arg_2.d.b;
            var var_2 = !vec4<bool>(arg_2.a.a && arg_3, arg_2.d.a, all(select(!vec3<bool>(true, false, false), select(vec3<bool>(arg_2.a.a, true, arg_3), vec3<bool>(arg_3, arg_3, arg_3), true), select(true, true, arg_3))), global2[_wgslsmith_index_u32(20164u, 12u)] != -71166);
        }
        default: {
        }
    }
    for (var var_1 = -6662; ; var_1 = ~select(~92377, -15682, func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(-36345, arg_2.a.b.b.x, 1, arg_1), firstLeadingBit(vec4<i32>(2147483647, u_input.c, arg_1, arg_1))), _wgslsmith_add_i32(-arg_2.a.b.b.x, abs(1)), _wgslsmith_f_op_f32(320.0 + -1976.0)).c.a)) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        continue;
    }
    return !(false | true);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    let var_0 = _wgslsmith_f_op_f32(select(-179.0, arg_1.e.x, all(vec2<bool>(func_4(_wgslsmith_div_vec2_f32(arg_1.e, vec2<f32>(arg_1.e.x, 470.0)), -20710, Struct_3(Struct_2(false, arg_1), false, arg_1.e.x, Struct_2(false, Struct_1(u_input.b.x, vec3<i32>(7086, 14807, 1), global2[_wgslsmith_index_u32(1u, 12u)], vec4<u32>(arg_0.x, 0u, arg_0.x, 40565u), vec2<f32>(arg_1.e.x, arg_1.e.x)))), all(vec3<bool>(true, false, true))), !(u_input.b.x >= u_input.b.x)))));
    var var_1 = arg_1.c;
    loop {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        global2 = array<i32, 12>();
        let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(576.0 + 1060.0) * var_0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1712.0 - arg_1.e.x) * _wgslsmith_f_op_f32(f32(-1.0) * -143.0)))))));
    }
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-218.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.e.x, 268.0)) - _wgslsmith_f_op_f32(trunc(arg_1.e.x))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(floor(arg_1.e.x)))));
}

fn func_8(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -987.0), arg_1) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(960.0, -627.0), vec2<f32>(1157.0, arg_1), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(-143.0, arg_1)))))));
    var var_1 = 41320u;
    for (var var_2 = 3879; ; global1 = _wgslsmith_f_op_f32(abs(-1597.0))) {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        for (; ; ) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            break;
        }
        let var_3 = Struct_1(u_input.b.x, min(vec3<i32>(select(-66502, _wgslsmith_mult_i32(-4102, -10937), 1467u <= 1u), 0, ~(-13489)), ~((vec3<i32>(-30825, u_input.c, u_input.c) ^ vec3<i32>(u_input.a.x, u_input.a.x, 1906)) >> (vec3<u32>(u_input.b.x, 0u, 1u) % vec3<u32>(32u)))), ~(-2147483648), ~vec4<u32>(~(~u_input.b.x), _wgslsmith_dot_vec2_u32(max(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(4294967295u, u_input.b.x)), u_input.b.x, firstTrailingBit(84295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -575.0))))));
        global2 = array<i32, 12>();
    }
    let var_2 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, func_6(31830u), ~52099u, 56167u & countOneBits(77800u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, 32888u, u_input.b.x) & vec4<u32>(u_input.b.x, 1u, u_input.b.x, 24755u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, 65115u), vec4<u32>(1u, 0u, 1u, 57807u))))), Struct_1(30822u, ~(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.a.x, -1)) | vec3<i32>(~20285, _wgslsmith_add_i32(-1, 0), ~(-24782)), _wgslsmith_clamp_i32(-3122, -859, firstTrailingBit(-36373)), vec4<u32>(~u_input.b.x, ~u_input.b.x, 4294967295u, u_input.b.x << (u_input.b.x % 32u)) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 32853u), vec4<u32>(u_input.b.x, 4294967295u, 0u, 7900u)), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), 1481.0)), Struct_2(arg_0, func_5(vec4<i32>(~u_input.c, -global2[_wgslsmith_index_u32(u_input.b.x, 12u)], _wgslsmith_mult_i32(u_input.a.x, u_input.c), -4206), -abs(-43158), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1.0) * -763.0))).c.b), Struct_2(!func_5(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(84641u, 12u)], 71585, global2[_wgslsmith_index_u32(93582u, 12u)]), abs(u_input.c), _wgslsmith_div_f32(arg_1, arg_1)).d.a, Struct_1(u_input.b.x, select(u_input.a, -u_input.a, select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, arg_0), arg_0)), u_input.c, ~vec4<u32>(10358u, 0u, 1u, 1u) >> (~vec4<u32>(96580u, 0u, 0u, 40620u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1353.0, 442.0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1250.0, -1053.0) * vec2<f32>(var_0.x, arg_1))))), ~u_input.b.x);
    return true;
}

fn func_2() -> bool {
    global0 = array<Struct_4, 5>();
    return func_8(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1301.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-603.0 - 476.0) * _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), Struct_1(u_input.b.x, u_input.a, global2[_wgslsmith_index_u32(29272u, 12u)], vec4<u32>(u_input.b.x, u_input.b.x, 9342u, 1u), vec2<f32>(-1000.0, -373.0))))), false)), 531.0)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    global1 = _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(round(400.0)));
    if (any(vec2<bool>(!(!func_2()), !((false && arg_0.b) && !arg_0.d.a)))) {
        global2 = array<i32, 12>();
        if (arg_0.d.a) {
            global1 = 197.0;
        }
        switch (-1) {
            case -9761: {
                var var_0 = Struct_4(arg_2.a, arg_0.d.b, func_5(vec4<i32>(arg_2.c, ~(arg_0.a.b.c & 1), -global2[_wgslsmith_index_u32(func_5(vec4<i32>(2147483647, arg_2.c, u_input.c, 1), 0, -1066.0).c.b.d.x, 12u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-21094, arg_0.d.b.c, global2[_wgslsmith_index_u32(0u, 12u)], arg_2.c), _wgslsmith_div_vec4_i32(vec4<i32>(18252, -2147483648, arg_2.b.x, arg_0.d.b.b.x), vec4<i32>(-37413, arg_0.d.b.b.x, arg_2.c, 0)))), u_input.c, -2001.0).d, Struct_2(arg_0.a.a, arg_2), arg_1);
                var var_1 = Struct_4((arg_0.a.b.d.x & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 80472u, arg_2.a, arg_2.d.x), arg_0.d.b.d), arg_2.d.x >> (9602u % 32u))) & func_6(~_wgslsmith_add_u32(arg_2.d.x, var_0.a)), Struct_1(_wgslsmith_sub_u32(~arg_0.d.b.d.x, var_0.d.b.d.x), u_input.a, _wgslsmith_clamp_i32(-23995, arg_0.d.b.b.x, ~(-37715)), ~(vec4<u32>(1u, arg_2.a, arg_0.a.b.a, 24131u) << (~vec4<u32>(1u, arg_0.a.b.a, u_input.b.x, 48611u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-arg_2.e)), func_5(min(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(var_0.c.b.c, var_0.b.b.x, global2[_wgslsmith_index_u32(31611u, 12u)], arg_0.d.b.b.x)), vec4<i32>(var_0.b.c, global2[_wgslsmith_index_u32(arg_0.a.b.d.x, 12u)], -25150, arg_0.d.b.c)), min(vec4<i32>(46887, -2147483648, var_0.d.b.b.x, global2[_wgslsmith_index_u32(9041u, 12u)]), reverseBits(vec4<i32>(-12150, var_0.b.c, arg_0.d.b.c, 0)))), 1, -1216.0).d, var_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(62349u, 65022u), _wgslsmith_mult_u32(5774u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_0.d.b.d.x, u_input.b.x), arg_2.d.zyy)), 98145u >> ((4294967295u >> (73998u % 32u)) % 32u)), var_0.c.b.d.xzy));
                var var_2 = Struct_2(all(select(vec2<bool>(false | var_0.d.a, select(false, true, false)), select(!vec2<bool>(arg_0.d.a, var_0.d.a), vec2<bool>(arg_0.b, arg_0.a.a), !vec2<bool>(arg_0.d.a, true)), var_0.c.a && (u_input.b.x > 1u))), Struct_1(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(15277u, arg_2.d.x, arg_0.a.b.a, 0u), firstLeadingBit(vec4<u32>(arg_2.d.x, 1u, 10720u, 83183u)))), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.c, 0)) >> (~arg_0.d.b.d.yzx % vec3<u32>(32u))), ~arg_2.b.x, var_1.d.b.d >> (arg_2.d % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.e.x, arg_2.e.x))))))));
                var var_3 = select(vec2<bool>(arg_0.a.a, true), select(!select(!vec2<bool>(var_1.c.a, true), vec2<bool>(true, var_2.a), arg_3 < var_1.c.b.e.x), !select(!vec2<bool>(var_1.c.a, var_2.a), !vec2<bool>(false, var_2.a), arg_0.d.a), vec2<bool>(~var_1.a >= ~29401u, select(var_2.b.a, var_2.b.d.x, var_1.c.a) >= 42839u)), _wgslsmith_f_op_f32(-arg_3) > _wgslsmith_f_op_f32(-arg_0.a.b.e.x));
                var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 5u)];
            }
            default: {
                global3 = _wgslsmith_f_op_f32(exp2(arg_3));
                var var_0 = !false;
                let var_1 = (_wgslsmith_f_op_f32(arg_3 - arg_3) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077.0) + _wgslsmith_div_f32(arg_0.d.b.e.x, arg_2.e.x)), _wgslsmith_f_op_f32(877.0 - _wgslsmith_f_op_f32(-arg_3)))) == false;
            }
        }
    }
    switch (~(~_wgslsmith_mult_i32(~_wgslsmith_mod_i32(arg_0.a.b.b.x, arg_0.d.b.b.x), -func_5(vec4<i32>(global2[_wgslsmith_index_u32(67310u, 12u)], -2147483648, u_input.a.x, -26514), u_input.c, arg_0.c).c.b.c))) {
        case 36891: {
            global2 = array<i32, 12>();
            switch (-(-27371 >> (arg_1 % 32u))) {
                case -1: {
                    let var_0 = func_5(vec4<i32>(min(2147483647, -29009), min(arg_0.d.b.b.x, -global2[_wgslsmith_index_u32(~1u, 12u)]), -abs(-94875), min(arg_2.b.x, ~(arg_2.b.x >> (arg_0.d.b.a % 32u)))), ~(-29638), _wgslsmith_div_f32(-149.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409.0 * arg_0.a.b.e.x)))).d;
                    var var_1 = arg_0;
                    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.e.x, -2117.0))), _wgslsmith_f_op_f32(f32(-1.0) * -856.0), false)));
                    var var_2 = _wgslsmith_sub_vec3_u32(max(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, _wgslsmith_dot_vec3_u32(arg_2.d.yxz, vec3<u32>(u_input.b.x, 4294967295u, 1u))), arg_1 << (57027u % 32u), _wgslsmith_sub_u32(arg_1 << (arg_2.d.x % 32u), _wgslsmith_div_u32(1u, 1u))), ~var_0.b.d.zxw), vec3<u32>(var_0.b.d.x, arg_0.d.b.d.x << (arg_0.d.b.d.x % 32u), _wgslsmith_dot_vec4_u32(~arg_0.d.b.d, firstLeadingBit(reverseBits(arg_2.d)))));
                }
                default: {
                    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000.0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000.0, arg_2.e.x))) - arg_3)));
                    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(~arg_2.b.xy), arg_2.b.zy), ~(-_wgslsmith_div_vec2_i32(select(vec2<i32>(global2[_wgslsmith_index_u32(arg_1, 12u)], global2[_wgslsmith_index_u32(51006u, 12u)]), u_input.a.zx, false), arg_0.d.b.b.yy)));
                    let var_1 = _wgslsmith_dot_vec3_i32(arg_0.d.b.b | arg_2.b, countOneBits(min(select(select(u_input.a, arg_0.a.b.b, vec3<bool>(arg_0.b, arg_0.b, arg_0.d.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, arg_2.b.x, -16597), vec3<i32>(arg_0.a.b.b.x, arg_2.b.x, -22965)), arg_0.b), abs(arg_2.b))));
                    let var_2 = min(min(vec2<u32>(44280u, 4294967295u), select(~(~vec2<u32>(0u, 66496u)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0.a.b.d.x), vec2<u32>(4294967295u, 4294967295u)), !(!vec2<bool>(arg_0.d.a, false)))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, abs(arg_1), arg_2.d.x), reverseBits(arg_2.a)), arg_0.d.b.d.zx));
                    global0 = array<Struct_4, 5>();
                }
            }
            let var_0 = Struct_3(func_5(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(24344, 14442), arg_0.a.b.b.x), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(23136u, 12u)], arg_2.c) | 1, ~_wgslsmith_mod_i32(-28183, arg_2.c), abs(arg_0.d.b.c)), ~firstTrailingBit(arg_2.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -1124.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-744.0 + -187.0) * arg_3), arg_0.d.a))).c, false, arg_0.c, arg_0.a);
            let var_1 = arg_0.d.b.c ^ ~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(arg_2.b.x, arg_0.d.b.c, 39576) & u_input.a), vec3<i32>(var_0.a.b.c >> (arg_1 % 32u), ~arg_2.b.x, ~(-36056)));
            global0 = array<Struct_4, 5>();
        }
        case -49912: {
            var var_0 = vec4<u32>(~1u, ~(~reverseBits(~arg_1)), ~_wgslsmith_add_u32((arg_1 & 2760u) | _wgslsmith_mult_u32(u_input.b.x, 1u), u_input.b.x), _wgslsmith_add_u32(arg_0.d.b.a, 4294967295u));
            var var_1 = arg_0;
            let var_2 = 0;
        }
        case -42807: {
            return arg_2.e;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                break;
            }
            let var_0 = func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(-50935, global2[_wgslsmith_index_u32(0u, 12u)], arg_2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-4041, global2[_wgslsmith_index_u32(0u, 12u)], 2147483647, -1), vec4<i32>(global2[_wgslsmith_index_u32(894u, 12u)], arg_0.a.b.b.x, 0, 3651))) >> (arg_0.a.b.d % vec4<u32>(32u)), max(firstTrailingBit(vec4<i32>(0, arg_2.c, -17738, 458) | vec4<i32>(global2[_wgslsmith_index_u32(arg_1, 12u)], arg_2.c, arg_2.b.x, -1)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, global2[_wgslsmith_index_u32(12982u, 12u)], 8156, global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<i32>(u_input.c, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], -1, 25087)))), _wgslsmith_dot_vec3_i32(arg_2.b | vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1, 44809, -36964, 0), vec4<i32>(1, -41634, 0, -45596)), -1, ~arg_0.d.b.b.x), vec3<i32>(arg_0.d.b.b.x, countOneBits(u_input.a.x), u_input.a.x)), _wgslsmith_div_f32(arg_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(f32(-1.0) * -1766.0), true)))));
            for (var var_1 = 15305; var_1 == 20559; global1 = _wgslsmith_f_op_f32(f32(-1.0) * -254.0)) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                break;
            }
            var var_1 = vec4<f32>(arg_0.d.b.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(f32(-1.0) * -450.0))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000.0))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812.0))));
        }
    }
    global0 = array<Struct_4, 5>();
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.a.b.e.x)))))) >= arg_2.e.x, false);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(739.0, arg_2.e.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.b.e))), any(!(!vec3<bool>(arg_0.b, var_0.x, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        break;
    }
    global1 = _wgslsmith_f_op_f32(-1265.0);
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -486.0)), -2544.0))));
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        switch (max(u_input.a.x, -((2147483647 ^ _wgslsmith_clamp_i32(4623, 0, u_input.c)) >> (u_input.b.x % 32u)))) {
            case 1: {
                let var_1 = Struct_1(1u, abs(u_input.a), u_input.a.x, ~(vec4<u32>(13956u, 19141u, 20769u, firstLeadingBit(u_input.b.x)) ^ firstLeadingBit(~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(589.0, -2425.0) * vec2<f32>(var_0, 178.0)), _wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_2(true, Struct_1(u_input.b.x, vec3<i32>(19710, 0, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]), -11391, vec4<u32>(20423u, 24820u, u_input.b.x, 10040u), vec2<f32>(617.0, -1000.0))), false, var_0, Struct_2(true, Struct_1(u_input.b.x, vec3<i32>(34679, u_input.c, 2825), -1, vec4<u32>(78034u, 4294967295u, 4294967295u, 41721u), vec2<f32>(var_0, -490.0)))), 4294967295u, Struct_1(0u, u_input.a, -7349, vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 0u), vec2<f32>(-1069.0, var_0)), var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), !(!(u_input.b.x >= u_input.b.x)))));
            }
            case -2147483648: {
                let var_1 = Struct_3(func_5(_wgslsmith_sub_vec4_i32(max(vec4<i32>(global2[_wgslsmith_index_u32(1u, 12u)], -40838, 2147483647, -21391), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.c, 1497, global2[_wgslsmith_index_u32(14676u, 12u)])), -vec4<i32>(u_input.a.x, 1968, u_input.c, 2147483647)) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, max(u_input.b.x, 4380u)) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)], -16492, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 0, 74645, global2[_wgslsmith_index_u32(u_input.b.x, 12u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], -64781, 2147483647), vec4<i32>(u_input.c, global2[_wgslsmith_index_u32(18985u, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)], global2[_wgslsmith_index_u32(38055u, 12u)]), vec4<i32>(0, 0, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.a.x))) ^ u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) * var_0) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -355.0), _wgslsmith_f_op_f32(func_3(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(4294967295u, u_input.a, -23980, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), vec2<f32>(-463.0, var_0))))))).c, select(!select(!false, !false, false && false), false, all(!vec4<bool>(false, false, false, false))), var_0, func_5(vec4<i32>(12577, -(u_input.a.x & 2147483647), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(2147483647, u_input.a.x)), -25820), -50358), _wgslsmith_dot_vec3_i32(firstLeadingBit(max(u_input.a, vec3<i32>(u_input.c, -1, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))), u_input.a), var_0).c);
            }
            case 13158: {
                return;
            }
            default: {
                break;
            }
        }
        continue;
    }
    if (func_2()) {
        let var_1 = vec2<f32>(func_5(select(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647, global2[_wgslsmith_index_u32(0u, 12u)], 1, -1823), vec4<i32>(global2[_wgslsmith_index_u32(32360u, 12u)], 2147483647, -53890, 0)), select(firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(37499u, 12u)], 1, 43908, 2147483647)), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], -1, global2[_wgslsmith_index_u32(43879u, 12u)], global2[_wgslsmith_index_u32(34023u, 12u)]), func_2()), !false), ~23716, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(647.0 * var_0) * _wgslsmith_f_op_f32(1000.0 - 1000.0)), var_0)).b.e.x, -1000.0);
        let var_2 = vec4<f32>(-1000.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1128.0))), 954.0, !(!false & !false))), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(func_5(vec4<i32>(u_input.c, u_input.c, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)]), u_input.a.x, var_0).c, false, var_1.x, Struct_2(true, Struct_1(122803u, vec3<i32>(u_input.c, 11211, u_input.c), u_input.c, vec4<u32>(29160u, 16070u, 0u, 0u), vec2<f32>(var_0, -845.0)))), u_input.b.x, func_5(vec4<i32>(-1, 4051, u_input.a.x, 53704), 0, _wgslsmith_f_op_f32(floor(-1005.0))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -1698.0) + 153.0))).x, _wgslsmith_f_op_f32(583.0 * var_0)), _wgslsmith_f_op_f32(func_3(countOneBits(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 76933u)) >> (~vec4<u32>(u_input.b.x, 0u, 17101u, 16876u) % vec4<u32>(32u)), func_5(_wgslsmith_div_vec4_i32(vec4<i32>(-46483, 22333, 0, 2147483647) ^ vec4<i32>(-2147483648, -2147483648, 2147483647, u_input.c), vec4<i32>(0, 50951, u_input.c, u_input.c)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c, 1, -33554, global2[_wgslsmith_index_u32(u_input.b.x, 12u)])), firstTrailingBit(vec4<i32>(1, 1, 2147483647, u_input.c))), var_0).b)));
        var var_3 = u_input.a.x << ((_wgslsmith_sub_u32(u_input.b.x, func_5(-vec4<i32>(global2[_wgslsmith_index_u32(11848u, 12u)], 0, 27739, 87537), -1, var_2.x).a) >> (u_input.b.x % 32u)) % 32u);
    }
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 5u)];
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var var_2 = var_1.b;
        switch (var_2.c) {
            case 39072: {
                break;
            }
            case 1: {
                let var_3 = vec4<bool>(var_1.d.a, var_1.c.a, -1029.0 < _wgslsmith_f_op_f32(f32(-1.0) * -868.0), false);
                var var_4 = var_1.c.b;
            }
            default: {
                let var_3 = ~select(_wgslsmith_div_vec2_i32(countOneBits(~vec2<i32>(var_1.c.b.b.x, u_input.a.x)), var_1.b.b.zz), select(u_input.a.yx, ~(vec2<i32>(global2[_wgslsmith_index_u32(2226u, 12u)], -1) >> (vec2<u32>(82523u, var_2.a) % vec2<u32>(32u))), -1 <= var_1.c.b.b.x), !vec2<bool>(var_1.c.a, select(var_1.d.a, true, var_1.c.a)));
                let var_4 = vec4<bool>(var_1.d.a, func_2() & (!(0u == var_1.a) & (!var_1.c.a || var_1.d.a)), var_1.c.a, !var_1.c.a);
                var var_5 = func_5(min(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(2147483647, 2147483647, 0, 1) & vec4<i32>(var_1.c.b.c, -26381, 0, var_1.d.b.b.x)), ~abs(vec4<i32>(-2147483648, var_3.x, var_1.b.b.x, var_2.b.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1) * -vec4<i32>(var_1.c.b.c, var_1.d.b.b.x, 39736, 0), -_wgslsmith_div_vec4_i32(vec4<i32>(1, var_2.b.x, -31356, global2[_wgslsmith_index_u32(73088u, 12u)]), vec4<i32>(2147483647, -17776, -1, 2147483647)))), -(abs(~var_3.x) | u_input.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.e.x))), 160.0))).c.b.b.x;
                var var_6 = ~select(~vec3<u32>(var_2.d.x, 4294967295u, var_2.d.x) & ~var_2.d.wxw, var_1.b.d.wxy, var_4.x);
            }
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(16405, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.b.e.x, var_0)))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483648, u_input.c, var_1.d.b.c << (var_1.a % 32u)), ~(-u_input.a)), -64244), _wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(9701u, 12u)], abs(global2[_wgslsmith_index_u32(0u, 12u)]) >> (415u % 32u), abs(51619), u_input.a.x), select(max(abs(vec4<i32>(var_1.b.c, u_input.c, 1, 0)), vec4<i32>(global2[_wgslsmith_index_u32(61894u, 12u)], -1, u_input.c, 1)), min(vec4<i32>(1, var_1.c.b.c, 2147483647, -5396), vec4<i32>(u_input.c, var_1.c.b.c, -34823, u_input.a.x) >> (var_1.c.b.d % vec4<u32>(32u))), !select(vec4<bool>(false, false, var_1.c.a, false), vec4<bool>(true, false, var_1.c.a, var_1.d.a), var_1.c.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.c.b.e, vec2<f32>(var_0, var_1.c.b.e.x), vec2<bool>(true, true))) + vec2<f32>(var_0, var_0)), vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(var_1.b.e.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.b.e)))));
}

