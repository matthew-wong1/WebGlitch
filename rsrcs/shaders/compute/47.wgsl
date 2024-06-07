// {"0:0":[253,184,38,106,163,23,231,240,71,130,65,250,21,158,10,203,20,254,229,40,251,177,133,66,176,172,173,7,227,20,253,11,135,29,224,48,134,114,7,49,161,75,34,186,43,221,145,170]}
// Seed: 6650370301387581992

struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> LOOP_COUNTERS: array<u32, 30>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn func_6() -> vec3<f32> {
    let var_0 = !(!(!(!(!true))));
    for (var var_1 = -2360; !any(select(select(select(vec4<bool>(true, true, var_0, true), vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, true, var_0, false)), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, false, var_0)), var_0), select(select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, var_0, false, var_0), false), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true), false), any(vec3<bool>(true, false, true))), any(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), var_0)))); var_1 -= 1) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var var_2 = max(1u << (abs(countOneBits(abs(2985u))) % 32u), _wgslsmith_mult_u32(0u, 8853u));
    }
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        let var_1 = Struct_4(u_input.a, u_input.b.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1541.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674.0) * 2230.0), _wgslsmith_f_op_f32(-174.0)))), !vec2<bool>(var_0, !var_0));
        let var_2 = Struct_2(Struct_1(~(-_wgslsmith_div_vec3_i32(u_input.d.xyx, u_input.d.zyx)), -(max(u_input.c.x, var_1.b) | _wgslsmith_mod_i32(var_1.b, -2147483648)), var_1.c, select(!vec2<bool>(false, var_1.d.x), select(vec2<bool>(true, true), select(var_1.d, var_1.d, vec2<bool>(false, var_0)), !var_1.d), var_1.d.x), ~firstLeadingBit(var_1.b)), vec3<i32>(u_input.b.x << (~(~4294967295u) % 32u), 0, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 10039), u_input.b), u_input.d.x)), vec4<bool>(true, select(all(vec4<bool>(var_0, true, var_1.d.x, false)), any(!vec3<bool>(true, false, var_0)), all(!vec3<bool>(false, true, false))), false, var_1.b != 11788), Struct_1(~u_input.d.zxz, -8640, _wgslsmith_f_op_vec3_f32(select(var_1.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, -312.0), vec3<f32>(var_1.c.x, -1186.0, var_1.c.x)))), vec3<bool>(var_1.c.x != 3088.0, any(var_1.d), false))), !vec2<bool>(-2147483648 >= 1, false), abs(-15917 >> (0u % 32u)) | var_1.a), select(vec3<bool>(any(vec4<bool>(var_1.d.x, true, false, var_1.d.x)) && all(vec4<bool>(var_0, var_1.d.x, var_1.d.x, var_1.d.x)), all(!vec4<bool>(var_0, var_1.d.x, false, var_1.d.x)), all(!vec3<bool>(true, true, true))), select(vec3<bool>(!true, all(vec4<bool>(var_0, var_1.d.x, true, var_1.d.x)), !var_1.d.x), select(!vec3<bool>(false, var_0, true), vec3<bool>(true, var_0, var_1.d.x), !false), vec3<bool>(all(vec4<bool>(var_1.d.x, var_1.d.x, var_0, true)), any(vec4<bool>(var_1.d.x, true, false, false)), all(vec3<bool>(false, true, var_0)))), vec3<bool>(false, -2147483648 == 2147483647, _wgslsmith_f_op_f32(sign(617.0)) < var_1.c.x)));
    }
    let var_1 = -54149;
    for (var var_2 = 2147483647; ; var_2 += 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        switch (max(var_1, ~58319 >> (firstLeadingBit(27248u) % 32u))) {
            default: {
                var_2 = _wgslsmith_div_i32(-var_1, countOneBits(u_input.a));
                let var_3 = max(abs(~vec3<u32>(68724u, _wgslsmith_mod_u32(1u, 4294967295u), ~1u)), ~vec3<u32>(_wgslsmith_mod_u32(61489u, 33533u) | abs(86854u), ~(~4294967295u), 17528u));
                var var_4 = Struct_5(var_0, Struct_3(~(~vec3<u32>(41309u, var_3.x, var_3.x)), _wgslsmith_mult_i32(-1, _wgslsmith_add_i32(var_1, u_input.c.x)) & (i32(-1) * -u_input.d.x)));
                var var_5 = Struct_1(firstLeadingBit(u_input.d.zyz), 1, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1572.0, 304.0, 114.0))))))), vec2<bool>(any(vec4<bool>(var_4.b.a.x >= 4294967295u, var_4.a, !var_0, true)), false), 41047);
            }
        }
        switch (~(51634 << ((firstLeadingBit(2033u) ^ ~1211u) % 32u))) {
            case -39625: {
                var var_3 = 4294967295u & abs(~firstTrailingBit(~1u));
                let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(334.0))) + -638.0));
                var_2 = u_input.d.x;
                let var_5 = _wgslsmith_div_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(4294967295u, 45047u), 28932u << (33830u % 32u), 70967u, 0u >> (31600u % 32u)), countOneBits(select(vec4<u32>(21739u, 1u, 1u, 10146u), vec4<u32>(4294967295u, 62670u, 33146u, 7932u), false))), ~(~abs(vec4<u32>(1u, 28036u, 4294967295u, 0u))), !(!select(vec4<bool>(false, var_0, false, true), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(true, var_0, var_0, var_0)))), ~max(vec4<u32>(82355u, 8405u, _wgslsmith_dot_vec4_u32(vec4<u32>(40350u, 63086u, 1u, 29450u), vec4<u32>(12755u, 13757u, 0u, 0u)), _wgslsmith_add_u32(4294967295u, 15185u)), ~vec4<u32>(54254u, 1u, 40924u, 1u) >> (~vec4<u32>(4294967295u, 74427u, 51627u, 6706u) % vec4<u32>(32u))));
            }
            case 58538: {
                var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(2044.0)), -421.0)), _wgslsmith_f_op_f32(-274.0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2266.0 + 397.0)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1911.0)) - _wgslsmith_f_op_f32(-1876.0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(547.0, _wgslsmith_f_op_f32(max(-141.0, -821.0))) * _wgslsmith_f_op_f32(trunc(216.0)))));
                var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -581.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(2266.0)))), -1000.0, -567.0, -794.0), vec4<f32>(_wgslsmith_div_f32(1410.0, var_3.x), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(sign(1000.0)))), -2051.0));
            }
            case -1155: {
                var var_3 = false;
                var_3 = true;
                var_2 = _wgslsmith_sub_i32(abs(2147483647), _wgslsmith_add_i32(_wgslsmith_add_i32(52992, u_input.d.x), -var_1));
            }
            case 14328: {
                continue;
            }
            default: {
                var var_3 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(10028u, 69201u, 4294967295u) & firstTrailingBit(vec3<u32>(1u, 46679u, 22779u)), min((vec3<u32>(120857u, 4474u, 8943u) << (vec3<u32>(31564u, 0u, 89961u) % vec3<u32>(32u))) >> (~vec3<u32>(10947u, 0u, 33768u) % vec3<u32>(32u)), ~firstTrailingBit(vec3<u32>(0u, 71652u, 0u))), vec3<u32>(~max(0u, 3977u), _wgslsmith_add_u32(67874u, 4294967295u) << (_wgslsmith_clamp_u32(83558u, 1u, 101064u) % 32u), 80115u & reverseBits(32305u)));
                var var_4 = vec3<u32>(abs(var_3.x), 0u, var_3.x);
                let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1627.0, 1595.0, -338.0), vec3<f32>(1285.0, -392.0, 514.0)), vec3<f32>(-313.0, -889.0, -1957.0), !vec3<bool>(false, var_0, false)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-145.0, -1480.0, -964.0), vec3<f32>(353.0, -736.0, -1266.0))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1166.0, 832.0, -1099.0))), vec3<bool>(true, var_0, var_0))))));
            }
        }
        loop {
            if (LOOP_COUNTERS[3u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
            var_2 = min(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(countOneBits(u_input.b.x), firstLeadingBit(u_input.a), -7553 ^ var_1), ((82954 & 0) ^ -1) ^ u_input.d.x), ~u_input.a);
        }
        switch (-1) {
            case -9404: {
                let var_3 = Struct_1(countOneBits(u_input.d.zxz), u_input.d.x, vec3<f32>(1273.0, -778.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-919.0)), 869.0)), vec2<bool>(any(!(!vec2<bool>(var_0, var_0))), var_0), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647, 49220, -2147483648, 15527), -vec4<i32>(var_1, var_1, 35749, var_1)), ~(vec4<i32>(u_input.d.x, 1, -37048, u_input.a) | u_input.d)));
            }
            case 2147483647: {
                break;
            }
            case 42978: {
                var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(638.0, 1119.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(192.0 + -2160.0) + _wgslsmith_f_op_f32(-1331.0 * -506.0)))))));
                break;
            }
            case 17158: {
                var_2 = 0;
                var_2 = 38281;
            }
            default: {
                var var_3 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20099u, 13673u, 4294967295u), select(vec3<u32>(21271u, 46149u, 26926u) >> (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(0u, 23845u, 4294967295u), vec3<bool>(true, true, false))), _wgslsmith_sub_u32(~(~4294967295u), abs(_wgslsmith_mod_u32(0u, 69752u))));
                var_3 = 0u;
                var var_4 = !vec3<bool>(!var_0, any(select(vec3<bool>(true, false, true), vec3<bool>(var_0, var_0, var_0), var_0)) && var_0, var_0 && !false);
                let var_5 = Struct_2(Struct_1(-abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483648, -23313, 1), u_input.d.xzx)), max(~(-var_1), ~(-1) & max(u_input.c.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1230.0, -926.0, 283.0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-673.0, 1680.0, 177.0) * vec3<f32>(-744.0, -652.0, 220.0))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(398.0, -928.0, -1261.0), vec3<f32>(-157.0, -1000.0, -656.0), 4294967295u != 67066u)), !any(vec4<bool>(true, var_0, var_4.x, var_0)))), select(var_4.yz, vec2<bool>(var_0, u_input.d.x < -30100), !(1u < 0u)), -14496), firstTrailingBit(vec3<i32>(abs(select(u_input.c.x, var_1, var_0)), -_wgslsmith_sub_i32(u_input.d.x, var_1), abs(-27539 | u_input.c.x))), vec4<bool>(true == var_4.x, var_0, var_0, var_0), Struct_1(vec3<i32>(~(-29310), -u_input.c.x << (24543u % 32u), ~firstLeadingBit(u_input.a)), -2147483648, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1451.0, -1000.0, -2015.0), vec3<f32>(-856.0, -718.0, -1413.0))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-549.0, 182.0, -696.0))), select(vec2<bool>(false, true), var_4.zz, vec2<bool>(var_0 && var_0, -831.0 >= 1746.0)), -(_wgslsmith_add_i32(u_input.a, 1) | 19723)), vec3<bool>(!(!(!false)), true, all(!select(vec4<bool>(var_4.x, var_4.x, false, var_0), vec4<bool>(var_4.x, false, var_0, var_0), false))));
                var_3 = ~firstTrailingBit(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 27295u), vec2<u32>(39069u, 0u)), vec2<u32>(0u, 4294967295u))));
            }
        }
    }
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * 324.0) - _wgslsmith_f_op_f32(f32(-1.0) * -1099.0)))), _wgslsmith_f_op_f32(-380.0 * _wgslsmith_f_op_f32(select(-1000.0, _wgslsmith_f_op_f32(ceil(-639.0)), !var_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-970.0) - _wgslsmith_f_op_f32(min(-1000.0, 1520.0))), 108.0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(751.0, -521.0, -1990.0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-405.0, -1000.0, -1000.0))), vec3<f32>(_wgslsmith_div_f32(-154.0, 622.0), -327.0, _wgslsmith_f_op_f32(518.0 - 361.0)), !(var_0 & var_0)))));
}

fn func_5() -> f32 {
    let var_0 = Struct_4(-74939, u_input.a, _wgslsmith_f_op_vec3_f32(func_6()), vec2<bool>(!(0 >= -4767) & true, !false));
    switch (-2147483648) {
        case -2147483648: {
            let var_1 = Struct_4(25558 & (-countOneBits(1) | 2572), -71747, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(var_0.c))))), vec3<bool>(all(var_0.d), any(vec2<bool>(false, var_0.d.x)), false))), select(var_0.d, vec2<bool>(false, var_0.d.x & !true), any(vec3<bool>(!var_0.d.x, var_0.d.x, !false))));
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var var_2 = abs(~vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(43141, 1, -1), vec3<i32>(var_1.a, var_0.b, -2147483648)), u_input.d.xyw), -822 >> (30766u % 32u), max(u_input.c.x, 8593), _wgslsmith_clamp_i32(47624, -1 >> (4294967295u % 32u), u_input.d.x)));
                continue;
            }
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                continue;
            }
            var var_2 = var_0.d.x;
        }
        case -21969: {
            let var_1 = ~_wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, 4294967295u | 49410u) << ((~4294967295u >> (reverseBits(0u) % 32u)) % 32u), firstLeadingBit(4294967295u));
            for (var var_2 = 4396; any(vec4<bool>(true, false, !var_0.d.x, var_0.d.x)); var_2 -= 1) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
            }
            for (var var_2 = 12032; var_2 >= 0; ) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var_2 = -(i32(-1) * -2147483647);
                let var_3 = u_input.d.xxw;
                break;
            }
            let var_2 = Struct_1(-abs(u_input.d.zxy), _wgslsmith_add_i32(~(~(-1)), 0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))), vec2<bool>(var_0.d.x, false), _wgslsmith_sub_i32(-firstLeadingBit(reverseBits(u_input.d.x)), var_0.a & u_input.d.x));
            var var_3 = abs(-54043);
        }
        case 30410: {
            let var_1 = false;
            for (var var_2 = 8167; var_2 != -1; ) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var_2 = _wgslsmith_sub_i32(3305, _wgslsmith_div_i32(firstTrailingBit(var_0.b) << (_wgslsmith_mult_u32(9948u ^ 1u, max(4294967295u, 35573u)) % 32u), var_0.a));
                continue;
            }
        }
        case -1: {
            switch (2147483647) {
                case -12718: {
                    return _wgslsmith_f_op_f32(f32(-1.0) * -487.0);
                }
                case -1: {
                }
                default: {
                    var var_1 = Struct_5(any(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_0.d.x, var_0.d.x, true), false)) || any(select(!var_0.d, var_0.d, var_0.d)), Struct_3(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(103232u, 45407u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 63889u, 17835u)) ^ max(vec3<u32>(0u, 57219u, 1u), vec3<u32>(182u, 60358u, 46773u)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, 0u), ~0u)), 40561));
                }
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var var_1 = -firstLeadingBit(u_input.b.x);
            }
            var var_1 = -u_input.d;
            let var_2 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.d.yxw, max(vec3<i32>(0, 12032, -14087), var_1.xyy)), -firstTrailingBit(u_input.c.x), u_input.d.x), -1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-146.0, var_0.c.x, var_0.c.x))), vec2<bool>(false, false), u_input.c.x), -_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_0.b, -2147483648), var_1.x, -3571 << (8284u % 32u)), -vec3<i32>(-242, var_0.b, u_input.b.x)), !select(!select(vec4<bool>(true, var_0.d.x, true, false), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), var_0.d.x), select(select(vec4<bool>(false, var_0.d.x, var_0.d.x, true), vec4<bool>(false, var_0.d.x, var_0.d.x, false), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x)), select(vec4<bool>(true, true, var_0.d.x, var_0.d.x), vec4<bool>(false, var_0.d.x, true, var_0.d.x), var_0.d.x), !true), any(vec2<bool>(true, var_0.d.x))), Struct_1(_wgslsmith_sub_vec3_i32(u_input.d.wyy, countOneBits(u_input.d.xwy) >> (min(vec3<u32>(43017u, 18850u, 0u), vec3<u32>(32654u, 40343u, 15960u)) % vec3<u32>(32u))), -10483, _wgslsmith_f_op_vec3_f32(var_0.c * var_0.c), vec2<bool>(-552.0 < 920.0, true), _wgslsmith_div_i32(~u_input.d.x, ~(var_0.b | -20965))), !select(!(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), select(vec3<bool>(true, var_0.d.x, false), !vec3<bool>(var_0.d.x, true, true), select(vec3<bool>(true, false, var_0.d.x), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, var_0.d.x), vec3<bool>(false, false, var_0.d.x), select(var_0.d.x, var_0.d.x, false))));
            var_1 = abs(~(-u_input.d | u_input.d) >> ((~min(vec4<u32>(76661u, 14679u, 4294967295u, 1u), vec4<u32>(4294967295u, 28575u, 4294967295u, 0u)) | _wgslsmith_div_vec4_u32(~vec4<u32>(14375u, 92447u, 68219u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 99681u, 4294967295u, 4294967295u), vec4<u32>(40875u, 16820u, 22178u, 42708u)))) % vec4<u32>(32u)));
        }
    }
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(7961u, abs(var_1)), vec2<u32>(var_1, firstLeadingBit(var_1)));
    for (; all(!vec2<bool>(false, 2010.0 < var_0.c.x)) && false; ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        switch (-51248) {
            case 1: {
                let var_3 = _wgslsmith_f_op_f32(f32(-1.0) * -187.0);
                return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_vec3_f32(func_6()).x, -21760 > -39997))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-226.0 + _wgslsmith_f_op_f32(-2248.0))))));
            }
            case -24247: {
                break;
            }
            default: {
                var var_3 = vec3<i32>(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, 12609), u_input.c.x), var_0.a);
            }
        }
        if (var_0.d.x) {
        }
        var var_3 = select(abs(select(reverseBits(vec2<u32>(0u, 0u) ^ vec2<u32>(var_2, var_2)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(70723u, var_2), vec2<u32>(var_1, 80342u))), !all(vec2<bool>(true, false)))), vec2<u32>(1u, _wgslsmith_add_u32(7691u, 0u)), !vec2<bool>(true, var_0.d.x));
    }
    return -1072.0;
}

fn func_7(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> Struct_4 {
    if (arg_2.d.x) {
        var var_0 = 66718u;
        let var_1 = Struct_2(Struct_1(arg_2.a, ~9881, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.c), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, 361.0, arg_2.c.x))), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_2.d.x, false), arg_2.d.x)))), arg_2.d, 7173), vec3<i32>(arg_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, select(u_input.c.x, u_input.c.x, false)), select(vec2<i32>(arg_2.a.x, 2147483647), arg_2.a.zy, vec2<bool>(arg_2.d.x, true)) ^ ~u_input.b), _wgslsmith_mult_i32(u_input.d.x << (_wgslsmith_sub_u32(arg_3, arg_3) % 32u), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d))), select(select(!select(vec4<bool>(true, arg_2.d.x, arg_2.d.x, false), vec4<bool>(arg_2.d.x, false, arg_2.d.x, arg_2.d.x), vec4<bool>(true, arg_2.d.x, arg_2.d.x, true)), !select(vec4<bool>(true, true, arg_2.d.x, arg_2.d.x), vec4<bool>(true, false, arg_2.d.x, false), vec4<bool>(false, arg_2.d.x, arg_2.d.x, true)), all(arg_2.d)), vec4<bool>(arg_2.d.x, false, arg_2.d.x, false), false), Struct_1(vec3<i32>(select(0, arg_2.b & 2147483647, false), -1, select(44568, arg_2.e, true)), _wgslsmith_mod_i32(arg_1.b | firstLeadingBit(arg_2.e), ~(-1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-269.0 + arg_0), 1445.0, _wgslsmith_f_op_f32(step(arg_0, 138.0)))), select(select(select(vec2<bool>(arg_2.d.x, false), arg_2.d, arg_2.d), vec2<bool>(false, arg_2.d.x), true), select(!vec2<bool>(arg_2.d.x, arg_2.d.x), vec2<bool>(true, false), arg_2.d), any(vec2<bool>(arg_2.d.x, arg_2.d.x))), -80061), vec3<bool>(select(!true, true, true || arg_2.d.x) & false, any(vec4<bool>(select(arg_2.d.x, arg_2.d.x, true), arg_2.d.x & true, !arg_2.d.x, arg_2.d.x)), !(!true)));
        for (var var_2: i32; !(!(~select(1u, arg_1.a.x, false) < arg_1.a.x)); var_2 += 1) {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            let var_3 = firstLeadingBit(64247u);
            var var_4 = Struct_3(vec3<u32>(108510u & _wgslsmith_clamp_u32(59121u, _wgslsmith_mult_u32(arg_1.a.x, 10534u), select(23207u, var_3, var_1.c.x)), ~_wgslsmith_mod_u32(abs(var_3), min(var_3, 50648u)), reverseBits(~_wgslsmith_mult_u32(4294967295u, arg_3))), ~(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1.a.b, var_1.b.x)), _wgslsmith_add_vec2_i32(arg_2.a.xy, vec2<i32>(var_1.d.e, arg_2.b)))));
        }
        var_0 = arg_3;
    }
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.zx) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2.c.yy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_6()).xx + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-776.0, arg_0)))))));
    for (; true; ) {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
    }
    loop {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        var var_1 = Struct_2(arg_2, abs(reverseBits(vec3<i32>(-13387, firstTrailingBit(0), 2147483647))), !select(!(!vec4<bool>(false, true, arg_2.d.x, arg_2.d.x)), select(!vec4<bool>(false, false, arg_2.d.x, true), !vec4<bool>(false, arg_2.d.x, arg_2.d.x, arg_2.d.x), vec4<bool>(true, false, true, arg_2.d.x)), true), Struct_1(-vec3<i32>(_wgslsmith_clamp_i32(arg_2.e, -11977, -1), 1, 45425 | 2147483647), u_input.d.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1414.0, 1158.0)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, arg_0), _wgslsmith_f_op_f32(var_0.x + arg_2.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -1970.0)), vec2<bool>(firstTrailingBit(arg_1.a.x) < 1u, !true), _wgslsmith_sub_i32(~u_input.c.x ^ arg_1.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.a, 17724, u_input.d.x, arg_2.e)), arg_2.a.x))), !vec3<bool>(~arg_1.b == -2147483648, true, all(select(vec3<bool>(false, arg_2.d.x, arg_2.d.x), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), false))));
    }
    let var_1 = Struct_2(Struct_1(reverseBits(firstTrailingBit(vec3<i32>(arg_2.b, arg_2.b, 15947)) ^ vec3<i32>(6213, 41057, -41408)), 1, vec3<f32>(var_0.x, 1000.0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1217.0 * 549.0)))), vec2<bool>(arg_2.d.x, true), abs(-39005)), arg_2.a, select(vec4<bool>(select(!arg_2.d.x, arg_2.d.x, any(vec3<bool>(arg_2.d.x, arg_2.d.x, false))), true, all(arg_2.d), true), select(vec4<bool>(arg_2.d.x, !arg_2.d.x, all(arg_2.d), true), select(!vec4<bool>(arg_2.d.x, false, arg_2.d.x, arg_2.d.x), !vec4<bool>(true, arg_2.d.x, arg_2.d.x, arg_2.d.x), !vec4<bool>(false, true, arg_2.d.x, false)), !select(vec4<bool>(true, arg_2.d.x, true, arg_2.d.x), vec4<bool>(true, false, arg_2.d.x, true), vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, arg_2.d.x))), vec4<bool>(true, ~(-1217) >= (-2147483648 | -2147483648), any(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, arg_2.d.x), arg_2.d.x)), any(vec2<bool>(arg_2.d.x, false)))), arg_2, !select(select(!vec3<bool>(arg_2.d.x, arg_2.d.x, false), select(vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), arg_2.d.x), select(vec3<bool>(true, true, true), vec3<bool>(arg_2.d.x, false, false), arg_2.d.x)), select(select(vec3<bool>(arg_2.d.x, false, true), vec3<bool>(arg_2.d.x, arg_2.d.x, false), true), !vec3<bool>(true, true, arg_2.d.x), arg_2.d.x), select(select(vec3<bool>(arg_2.d.x, true, true), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), true), select(vec3<bool>(false, false, false), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x), vec3<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x)), select(vec3<bool>(arg_2.d.x, arg_2.d.x, true), vec3<bool>(false, false, arg_2.d.x), vec3<bool>(arg_2.d.x, true, false)))));
    return Struct_4(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_1.d.e, arg_2.a.x), var_1.a.b), var_1.d.a.x), _wgslsmith_sub_i32(~0, 26624), var_1.a.c, select(!arg_2.d, select(select(arg_2.d, !vec2<bool>(arg_2.d.x, var_1.e.x), arg_2.d), !vec2<bool>(true, arg_2.d.x), !(!vec2<bool>(arg_2.d.x, var_1.c.x))), vec2<bool>(_wgslsmith_f_op_f32(f32(-1.0) * -897.0) < _wgslsmith_f_op_f32(-651.0 * var_1.a.c.x), arg_2.d.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> f32 {
    if (true) {
        let var_0 = arg_0;
        var var_1 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480.0 * arg_1.c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5()) + arg_1.c.x)), Struct_3(select(vec3<u32>(arg_0, max(var_0, arg_0), ~var_0), vec3<u32>(7333u << (4294967295u % 32u), var_0, arg_0 | arg_0), arg_1.d.x), u_input.a), Struct_1(u_input.d.xzz, -17101, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.c.x, arg_1.d.x)), _wgslsmith_f_op_f32(f32(-1.0) * -1919.0), _wgslsmith_f_op_f32(-arg_1.c.x))), arg_1.d, -21644 ^ 36817), arg_0);
    }
    loop {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        var var_0 = arg_1.c.x;
    }
    if (all(!select(!(!vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, true)), !(!vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x)), arg_1.d.x))) {
        let var_0 = select(firstLeadingBit(_wgslsmith_clamp_u32(7310u, _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, arg_0), arg_0), 3678u)), ~max(arg_0, 18940u), arg_1.d.x);
    }
    if (arg_1.d.x) {
        var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0, arg_0), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(~arg_0, 0u, arg_0), _wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(56586u, arg_0, 29078u)), ~vec3<u32>(arg_0, 45817u, 4294967295u))));
        switch (~_wgslsmith_add_i32(arg_1.a, arg_1.b)) {
            case -27567: {
                var var_1 = Struct_5(true, Struct_3(vec3<u32>(4294967295u, ~(~56890u), _wgslsmith_sub_u32(~var_0.x, arg_0)), -2147483648 & ~_wgslsmith_div_i32(7948, arg_1.a)));
            }
            case 4984: {
                var var_1 = Struct_3(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(1u, 37006u), var_0.x, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, arg_0, var_0.x) | vec4<u32>(arg_0, 58238u, 0u, 0u), ~vec4<u32>(1u, var_0.x, arg_0, var_0.x)), 37987u, 0u)), _wgslsmith_mult_i32(~abs(arg_1.a), -2147483648) >> (0u % 32u));
                return -665.0;
            }
            case -13483: {
                let var_1 = -arg_1.b;
                var var_2 = reverseBits(4294967295u);
                let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(select(153.0, -220.0, !(!true))), arg_1.c.x, _wgslsmith_f_op_f32(arg_1.c.x - 1276.0)));
                var_2 = 1u;
                var_0 = reverseBits(vec3<u32>(max(~26935u, min(131628u, var_0.x)) & arg_0, max(reverseBits(_wgslsmith_mult_u32(arg_0, var_0.x)), 1u), max(61469u, arg_0) >> (var_0.x % 32u)));
            }
            case 2147483647: {
                var_0 = vec3<u32>(_wgslsmith_mult_u32(~arg_0, 57896u), 20361u, arg_0);
                var_0 = _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(25471u, var_0.x, 9269u), vec3<u32>(arg_0, 0u, var_0.x) | vec3<u32>(90279u, arg_0, 4294967295u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_clamp_u32(22019u, var_0.x, arg_0), ~var_0.x), select(abs(vec3<u32>(arg_0, 12472u, 21406u)), ~vec3<u32>(arg_0, var_0.x, arg_0), arg_1.d.x), vec3<u32>(48246u, 94999u, 4294967295u) | ~vec3<u32>(arg_0, 4294967295u, 1693u)), ~(~reverseBits(reverseBits(vec3<u32>(arg_0, 4294967295u, 1u)))));
            }
            default: {
                let var_1 = ~_wgslsmith_mult_i32(337, -2147483648);
            }
        }
        var_0 = vec3<u32>(36174u, var_0.x, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), var_0.x), ~(~arg_0))) ^ ~(~(~vec3<u32>(var_0.x, arg_0, var_0.x)));
        var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(1u, arg_0, arg_0)), ~reverseBits(vec3<u32>(var_0.x, arg_0, 26654u))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(var_0.x, var_0.x, var_0.x)), ~vec3<u32>(1u, 0u, arg_0), min(vec3<u32>(0u, 1u, arg_0), vec3<u32>(var_0.x, 0u, 4294967295u))), reverseBits(vec3<u32>(33898u, arg_0, 4294967295u))));
        if (arg_1.d.x && true) {
            let var_1 = reverseBits(vec2<i32>(arg_1.a, _wgslsmith_sub_i32(arg_1.a, ~abs(2147483647))));
        }
    }
    var var_0 = Struct_5(!arg_1.d.x, Struct_3(~select(firstTrailingBit(vec3<u32>(44448u, arg_0, 1u)), abs(vec3<u32>(9095u, arg_0, 4294967295u)), arg_1.d.x), min(arg_1.a >> (arg_0 % 32u), firstTrailingBit(min(-1, arg_1.a)))));
    return 1154.0;
}

fn func_3() -> Struct_1 {
    for (var var_0 = -2147483648; var_0 != -2147483648; var_0 = firstLeadingBit(2147483647)) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(670.0 - _wgslsmith_f_op_f32(-869.0 + -969.0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1952.0 - _wgslsmith_f_op_f32(func_4(4294967295u, Struct_4(27101, u_input.b.x, vec3<f32>(-1828.0, -102.0, -469.0), vec2<bool>(true, true))))), -893.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2155.0 + -1643.0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(766.0, 2358.0), _wgslsmith_f_op_f32(func_5())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(-933.0)))), 2185.0) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1000.0), 2207.0, _wgslsmith_f_op_f32(step(1854.0, -133.0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(387.0, -183.0, -269.0), vec3<f32>(-197.0, 996.0, 145.0), vec3<bool>(false, false, false))), vec3<f32>(-533.0, 1352.0, 634.0), any(vec2<bool>(false, true)))), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), !vec3<bool>(false, true, true)))))));
        break;
    }
    var var_0 = Struct_1(u_input.d.zxy, -6301 >> (4294967295u % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000.0, -550.0, -440.0) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(109.0, 426.0, 1171.0))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(-871.0)), _wgslsmith_f_op_f32(abs(-146.0)), 781.0)))), select(select(!(!vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), !(!vec2<bool>(true, false))), !(!func_7(1000.0, Struct_3(vec3<u32>(0u, 4294967295u, 1u), u_input.b.x), Struct_1(vec3<i32>(u_input.a, -29711, u_input.a), u_input.d.x, vec3<f32>(549.0, -1410.0, 253.0), vec2<bool>(true, true), u_input.b.x), 0u).d), !false), reverseBits(max(u_input.c.x | -1, u_input.d.x)));
    var var_1 = true;
    var_1 = false;
    var_0 = Struct_1(-(~(~(-var_0.a))), _wgslsmith_sub_i32(-reverseBits(-1), 7792), _wgslsmith_f_op_vec3_f32(sign(var_0.c)), vec2<bool>(!any(vec4<bool>(var_0.d.x, var_0.d.x, true, false)), any(select(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x), vec4<bool>(true, true, var_0.d.x, true), true)) || var_0.d.x), ~33071);
    return Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(-u_input.d), u_input.d), -18872, u_input.c.x), func_7(var_0.c.x, Struct_3(vec3<u32>(~6391u, _wgslsmith_mod_u32(0u, 4294967295u), ~0u), var_0.b), Struct_1(_wgslsmith_sub_vec3_i32(var_0.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(1, 2147483647, u_input.b.x), vec3<i32>(var_0.a.x, u_input.d.x, 1), vec3<i32>(-60462, u_input.b.x, 73954))), abs(u_input.c.x), var_0.c, func_7(_wgslsmith_f_op_f32(-var_0.c.x), Struct_3(vec3<u32>(24810u, 13660u, 25181u), u_input.b.x), Struct_1(vec3<i32>(var_0.e, u_input.a, var_0.a.x), u_input.c.x, vec3<f32>(var_0.c.x, 977.0, 1088.0), var_0.d, 2147483647), 0u).d, var_0.a.x), 1u).b, var_0.c, !(!vec2<bool>(var_0.d.x, true)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(min(reverseBits(u_input.a), i32(-1) * -5232), select(~66040, -var_0.a.x, var_0.d.x | false)), ~_wgslsmith_div_i32(13850, var_0.a.x) >> (_wgslsmith_clamp_u32(82629u, countOneBits(1u), ~0u) % 32u)));
}

fn func_8(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    if (all(vec4<bool>(true, !arg_0.d.x, !arg_0.d.x, arg_0.d.x))) {
        loop {
            if (LOOP_COUNTERS[16u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        }
    }
    switch (_wgslsmith_div_i32(-49569, u_input.d.x)) {
        case -1: {
            for (; ; ) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                var var_0 = !vec3<bool>(arg_0.d.x, any(vec2<bool>(arg_0.d.x, arg_0.d.x)), !false | !false);
            }
            var var_0 = max(reverseBits(arg_0.b) & arg_0.b, u_input.a) << (5784u % 32u);
            var var_1 = Struct_4(~(-(~arg_0.b)) | ~arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.e, -2147483648, arg_0.b), _wgslsmith_div_vec3_i32(u_input.d.xyz, u_input.d.zyz)), u_input.a, _wgslsmith_mult_i32(u_input.a ^ arg_0.a.x, -10921), arg_0.b), abs(select(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, 1, arg_0.b, -1)), -u_input.d, true))), arg_0.c, !arg_0.d);
        }
        case -943: {
            if (arg_0.d.x || !false) {
                var var_0 = vec4<bool>(false, arg_0.d.x, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(4294967295u, func_7(arg_0.c.x, Struct_3(vec3<u32>(1u, 23516u, 45998u), -1616), Struct_1(vec3<i32>(u_input.c.x, u_input.b.x, -2147483648), -12749, vec3<f32>(arg_0.c.x, 1000.0, -1000.0), vec2<bool>(true, arg_0.d.x), arg_0.a.x), 36520u)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))));
                var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_0.c.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(158.0, arg_0.c.x) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c.x, arg_1.x))))))));
                var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(776.0 - -529.0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * 1000.0), -204.0));
                var_0 = !(!(!(!vec4<bool>(arg_0.d.x, var_0.x, var_0.x, arg_0.d.x))));
                var var_2 = vec3<f32>(641.0, var_1.x, 349.0);
            }
        }
        default: {
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                var var_0 = vec4<i32>(arg_0.a.x, select(u_input.b.x, abs(arg_0.a.x), !true), ~(~(~arg_0.b)), 60740 >> (max(0u | 1u, _wgslsmith_add_u32(1u, 0u)) % 32u)) | firstTrailingBit(u_input.d);
                let var_1 = -793.0;
            }
        }
    }
    for (var var_0: i32; ; ) {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
        break;
    }
    let var_0 = !(!(!(!vec4<bool>(true, true, arg_0.d.x, false))));
    var var_1 = abs(~max(~vec2<u32>(31028u, 65620u) >> (vec2<u32>(4294967295u, 18082u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~vec2<u32>(49551u, 53491u), vec2<u32>(23452u, 41126u) ^ vec2<u32>(76334u, 1u))));
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: u32) -> bool {
    if (func_8(func_3(), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_7(-804.0, Struct_3(arg_1.wzx, -1), Struct_1(u_input.d.wxz, -18780, vec3<f32>(-765.0, 181.0, -196.0), vec2<bool>(arg_0.x, arg_0.x), u_input.b.x), 70266u).c.x), _wgslsmith_f_op_f32(step(-1047.0, _wgslsmith_f_op_f32(sign(1980.0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * -1737.0) + _wgslsmith_f_op_f32(select(2136.0, 1482.0, arg_0.x))) * 234.0)))) {
        switch (u_input.d.x) {
            case 61263: {
                let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(154.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118.0)), -1212.0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1130.0)), -742.0))));
                var var_1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 33512u), arg_1.ww)), vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(~arg_1.wxz, arg_1.yzx)));
                var var_2 = var_0.x;
            }
            case 2147483647: {
                let var_0 = vec3<bool>(func_3().d.x, any(select(vec2<bool>(22694 > 45774, any(vec2<bool>(false, arg_0.x))), vec2<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), !arg_0.x), !vec2<bool>(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000.0 + 431.0)))) > _wgslsmith_f_op_f32(func_3().c.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000.0)), _wgslsmith_f_op_f32(316.0 + -288.0)))));
                let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1551.0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1518.0) + _wgslsmith_f_op_f32(min(1539.0, -676.0))))), _wgslsmith_f_op_f32(func_4(~(~4294967295u), Struct_4(-2147483648 ^ u_input.b.x, u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000.0, 462.0, 559.0)), select(vec2<bool>(true, false), arg_0, false))))) * vec3<f32>(_wgslsmith_f_op_f32(func_7(_wgslsmith_div_f32(984.0, -1201.0), Struct_3(vec3<u32>(arg_1.x, arg_2, arg_1.x), 0), func_3(), 38468u).c.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-808.0 + -541.0), _wgslsmith_f_op_f32(-1000.0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2090.0 - _wgslsmith_f_op_f32(func_5())), -1000.0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-772.0 * 584.0)))))));
                let var_2 = Struct_4(func_3().b, -_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), -1579.0, _wgslsmith_f_op_f32(f32(-1.0) * -1130.0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * var_1)), select(!(!select(vec2<bool>(true, var_0.x), arg_0, false)), !var_0.xy, arg_0));
                let var_3 = abs(~(-42641) ^ ~(-10266));
            }
            default: {
                var var_0 = Struct_3(vec3<u32>(1u, arg_1.x, ~(~arg_2)) >> (_wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 92833u, 29819u), vec3<u32>(arg_2, 0u, arg_1.x))), ~select(vec3<u32>(arg_2, 48392u, arg_1.x), arg_1.wzy, true)) % vec3<u32>(32u)), -(2147483647 >> (32997u % 32u)));
                let var_1 = min(u_input.b, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(max(u_input.d.zx, max(vec2<i32>(var_0.b, -1), vec2<i32>(-2147483648, -1))), u_input.b << ((arg_1.zz | var_0.a.yz) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(-firstLeadingBit(u_input.b), u_input.d.yx)));
            }
        }
    }
    let var_0 = Struct_1(u_input.d.wxy, _wgslsmith_dot_vec2_i32(func_3().a.zx ^ countOneBits(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(2147483647, 34161))), ~_wgslsmith_add_vec2_i32(vec2<i32>(6665, -31357), u_input.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-225.0, -1000.0, 2130.0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(898.0, -385.0, -933.0) * vec3<f32>(-274.0, -531.0, -706.0)), select(vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, false, false), vec3<bool>(false, arg_0.x, false))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2527.0, 505.0, 597.0)))))), func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110.0) + 666.0), Struct_3(~_wgslsmith_mod_vec3_u32(arg_1.xzy, vec3<u32>(arg_1.x, 35249u, 4294967295u)), _wgslsmith_mod_i32(firstTrailingBit(u_input.a), abs(u_input.a))), func_3(), reverseBits(arg_1.x)).d, -19037);
    let var_1 = 27462u >> ((arg_2 >> (_wgslsmith_clamp_u32(~4858u, arg_2, ~min(arg_1.x, 33050u)) % 32u)) % 32u);
    for (var var_2 = -2147483648; false; var_2 -= 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
    }
    if (false) {
        var var_2 = !select(vec2<bool>(false | (520.0 == var_0.c.x), func_7(_wgslsmith_f_op_f32(-1174.0), Struct_3(arg_1.wzy, u_input.a), var_0, arg_1.x).d.x), !var_0.d, (~(-1) | select(-28842, -19373, arg_0.x)) >= (_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(var_0.a.x, u_input.c.x, var_0.e, u_input.b.x)) & var_0.b));
    }
    return !var_0.d.x;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_5, arg_3: vec3<f32>) -> vec3<u32> {
    for (var var_0 = 56984; select(all(vec2<bool>((609.0 == arg_3.x) & !true, any(!vec3<bool>(true, arg_2.a, true)))), arg_2.a, !func_2(select(vec2<bool>(true, arg_1), select(vec2<bool>(true, true), vec2<bool>(false, arg_1), vec2<bool>(arg_2.a, true)), true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_2.b.a.x, arg_0, arg_2.b.a.x), vec4<u32>(27929u, 49925u, 19406u, 4294967295u)), arg_0)); var_0 += 1) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        var var_1 = 63937u;
        break;
    }
    switch (arg_2.b.b & arg_2.b.b) {
        default: {
            if (abs(arg_2.b.a.x) != arg_2.b.a.x) {
                return countOneBits(arg_2.b.a);
            }
            var var_0 = vec4<u32>(reverseBits(4294967295u), ~73533u, arg_0, arg_2.b.a.x & 55767u);
            if (~_wgslsmith_add_u32(36353u, ~4294967295u) != arg_0) {
                var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(806.0, 1000.0, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(-1046.0)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<f32>(1287.0, arg_3.x, arg_3.x, 1230.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 2194.0, -577.0, arg_3.x)), arg_2.b.b != u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1814.0, arg_3.x, arg_3.x, 1086.0), vec4<f32>(1530.0, -1871.0, arg_3.x, 2001.0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 356.0, arg_3.x, arg_3.x) * vec4<f32>(587.0, 103.0, -753.0, arg_3.x))))), select(vec4<bool>(!false, true, !arg_2.a, false), vec4<bool>(func_2(vec2<bool>(arg_2.a, arg_1), vec4<u32>(1u, arg_0, 1u, 0u), 15924u), !false, false, !false), vec4<bool>(arg_2.a, true, select(arg_1, arg_2.a, false), arg_1 | arg_2.a)))), vec4<f32>(_wgslsmith_f_op_f32(-887.0), 813.0, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x + -1057.0), _wgslsmith_f_op_f32(-2084.0 - arg_3.x))));
                var_0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.wx, vec2<u32>(var_0.x, 51628u)), reverseBits(vec2<u32>(20561u, 1u))), firstTrailingBit(arg_2.b.a.x)) | _wgslsmith_mult_u32(~_wgslsmith_mod_u32(var_0.x, arg_0), _wgslsmith_dot_vec4_u32(max(vec4<u32>(21022u, arg_0, 0u, 106916u), vec4<u32>(0u, 0u, arg_2.b.a.x, var_0.x)), reverseBits(vec4<u32>(1u, var_0.x, 2093u, 72973u)))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), arg_2.b.a.zx)) >> (~max(arg_2.b.a.x, 0u) % 32u), select(arg_2.b.a.x, _wgslsmith_mult_u32(26703u, arg_0), false) & min(arg_2.b.a.x, _wgslsmith_mod_u32(firstLeadingBit(0u), arg_0)), _wgslsmith_add_u32(reverseBits(1u), 76653u) ^ 15267u);
                let var_2 = func_7(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_6()).x)), Struct_3(~countOneBits(vec3<u32>(67535u, 1u, var_0.x)), countOneBits(u_input.c.x)), func_3(), arg_2.b.a.x);
                let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, arg_2.b.a.x, 1u, 11864u >> (arg_0 % 32u)), max(vec4<u32>(4294967295u, arg_2.b.a.x, 5442u, 1u) ^ vec4<u32>(arg_0, 0u, 0u, arg_2.b.a.x), select(vec4<u32>(arg_0, var_0.x, 48061u, arg_0), vec4<u32>(0u, 6721u, var_0.x, 1u), arg_1))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, arg_0, 4294967295u, 0u), vec4<u32>(arg_0, arg_2.b.a.x, var_0.x, 4565u) << (vec4<u32>(arg_2.b.a.x, 7578u, 80919u, 1u) % vec4<u32>(32u))) | vec4<u32>(reverseBits(var_0.x), 62193u, 47248u, firstTrailingBit(arg_2.b.a.x))) | _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(7163u, 33826u, 3722u, 4294967295u) << (vec4<u32>(arg_2.b.a.x, var_0.x, arg_2.b.a.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, 4294967295u, arg_2.b.a.x)), vec4<u32>(1u << (16865u % 32u), ~var_0.x, 66418u, abs(1u)) >> (countOneBits(~vec4<u32>(1u, 1u, arg_0, 0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32((vec4<u32>(arg_0, arg_0, arg_2.b.a.x, 28863u) << (vec4<u32>(arg_2.b.a.x, arg_0, 1u, 0u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(38208u, 60185u, 38177u, arg_0), vec4<u32>(var_0.x, 142u, 36265u, 49956u)), ~firstTrailingBit(vec4<u32>(var_0.x, 4294967295u, arg_2.b.a.x, arg_2.b.a.x))));
                return firstLeadingBit(~_wgslsmith_mult_vec3_u32(~min(arg_2.b.a, vec3<u32>(var_3.x, 1u, arg_2.b.a.x)), ~vec3<u32>(arg_2.b.a.x, var_0.x, 1u)));
            }
            for (var var_1 = -15350; var_1 < 410; var_1 -= 1) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                var var_2 = Struct_1(func_3().a, ~_wgslsmith_add_i32(arg_2.b.b, u_input.d.x | ~16167), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1061.0), arg_3.x))), -1580.0, func_3().c.x), vec2<bool>(u_input.d.x <= 22167, any(vec4<bool>(select(true, arg_1, true), !false, false, false && arg_1))), func_3().b);
                var_2 = Struct_1(vec3<i32>(select(-2089, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), arg_2.b.b >> (arg_2.b.a.x % 32u)), (-2147483648 == u_input.c.x) | false), -1, var_2.b), -(~u_input.c.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3 * var_2.c)), var_2.c))), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) > 1075.0, arg_2.a), 31776);
                var_2 = Struct_1(u_input.d.wxx, _wgslsmith_mult_i32(max(var_2.b, u_input.a >> (arg_2.b.a.x % 32u)), 2147483647) | _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, u_input.b.x, var_2.a.x, u_input.a), vec4<i32>(-27888, var_2.e, arg_2.b.b, 36809) << (vec4<u32>(1u, 49863u, arg_0, var_0.x) % vec4<u32>(32u))), ~(u_input.d | u_input.d)), _wgslsmith_f_op_vec3_f32(arg_3 - arg_3), !select(var_2.d, var_2.d, var_2.d), 925);
                let var_3 = Struct_1(~(vec3<i32>(1 & arg_2.b.b, _wgslsmith_add_i32(-13697, var_2.a.x), firstTrailingBit(-29595)) | var_2.a), func_3().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6()) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, _wgslsmith_f_op_vec3_f32(func_6()).x, _wgslsmith_f_op_f32(-167.0 - 1000.0)) - vec3<f32>(_wgslsmith_f_op_f32(var_2.c.x - 396.0), _wgslsmith_f_op_f32(-1000.0), _wgslsmith_f_op_f32(exp2(var_2.c.x))))), func_3().d, 2147483647);
                var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x ^ ~1u, arg_0, _wgslsmith_dot_vec4_u32(select(vec4<u32>(5124u, 4294967295u, 39012u, 58155u), vec4<u32>(arg_2.b.a.x, var_0.x, arg_0, arg_2.b.a.x), var_2.d.x), vec4<u32>(0u, arg_0, arg_2.b.a.x, arg_2.b.a.x)), firstLeadingBit(0u)), _wgslsmith_add_vec4_u32(vec4<u32>(select(48614u, arg_0, var_3.d.x), ~82605u, arg_0, _wgslsmith_clamp_u32(arg_0, 0u, 13137u)), vec4<u32>(arg_2.b.a.x, ~arg_2.b.a.x, ~0u, _wgslsmith_sub_u32(4294967295u, arg_2.b.a.x))));
            }
            loop {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                continue;
            }
        }
    }
    if (true) {
        loop {
            if (LOOP_COUNTERS[24u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        }
        if (!(arg_1 || (false || func_8(Struct_1(u_input.d.zzw, arg_2.b.b, arg_3, vec2<bool>(arg_1, arg_1), -3722), arg_3.yy)))) {
            var var_0 = firstTrailingBit(0u);
            var var_1 = ~firstTrailingBit(vec4<i32>(0, reverseBits(arg_2.b.b) | -2147483648, -2147483648, ~u_input.b.x));
        }
        var var_0 = true;
        let var_1 = u_input.d;
    }
    loop {
        if (LOOP_COUNTERS[25u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        if (arg_1) {
            let var_0 = !all(vec4<bool>(func_2(select(vec2<bool>(arg_1, true), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(true, true)), max(vec4<u32>(arg_0, arg_0, 26978u, 17930u), vec4<u32>(arg_0, 281u, arg_2.b.a.x, 0u)), ~0u), !(!arg_2.a), func_7(arg_3.x, Struct_3(vec3<u32>(0u, arg_2.b.a.x, arg_0), u_input.a), func_3(), 12880u << (4294967295u % 32u)).d.x, arg_1));
        }
    }
    var var_0 = func_3();
    return ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1519u, 1u, arg_2.b.a.x), arg_2.b.a) >> (_wgslsmith_mult_vec3_u32(arg_2.b.a, vec3<u32>(arg_0, 0u, 25324u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(arg_2.b.a | vec3<u32>(16721u, 1u, arg_0), arg_2.b.a)) & ~vec3<u32>(arg_0, _wgslsmith_mult_u32(1u & 35665u, arg_2.b.a.x), _wgslsmith_mult_u32(54992u, min(arg_2.b.a.x, 69300u)));
}

@compute
@workgroup_size(1)
fn main() {
    switch (-12318 | -1) {
        case 0: {
        }
        case -1: {
            if (true) {
                var var_0 = ~(~33472u & reverseBits(reverseBits(4294967295u)));
            }
            return;
        }
        case -9763: {
        }
        case 8428: {
            for (var var_0 = 1; !false; ) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                var_0 = -2147483648;
            }
            switch (~_wgslsmith_clamp_i32(~u_input.d.x, u_input.d.x >> (~61121u % 32u), -abs(11397)) ^ 25763) {
                case -25455: {
                    let var_0 = _wgslsmith_mult_vec4_i32(-u_input.d >> (~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 16683u), vec4<u32>(13017u, 22592u, 0u, 1u)), ~vec4<u32>(0u, 4294967295u, 53265u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, 1, u_input.a), vec4<i32>(u_input.c.x, -abs(0), u_input.b.x, i32(-1) * -29212)));
                }
                case 1: {
                    let var_0 = _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_dot_vec3_u32((vec3<u32>(47112u, 0u, 1u) >> (vec3<u32>(48013u, 4294967295u, 0u) % vec3<u32>(32u))) & func_1(46278u, true, Struct_5(false, Struct_3(vec3<u32>(4294967295u, 20317u, 29768u), u_input.a)), vec3<f32>(-1079.0, 1565.0, -1000.0)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(30313u, 0u, 0u)), vec3<u32>(1u, 81159u, 1u))));
                    var var_1 = func_7(1150.0, Struct_3(min(max(vec3<u32>(40400u, var_0, var_0), vec3<u32>(1u, 39886u, 54654u)), ~vec3<u32>(1u, 4294967295u, var_0)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 4294967295u, 74289u), vec3<u32>(var_0, var_0, 47445u)), vec3<u32>(var_0, var_0, 1u) & vec3<u32>(var_0, var_0, 43796u)) % vec3<u32>(32u)), ~_wgslsmith_mult_i32(-u_input.d.x, u_input.a)), func_3(), 17345u);
                    var var_2 = var_1.c;
                    let var_3 = Struct_3(firstTrailingBit(_wgslsmith_mult_vec3_u32(func_1(1u, !var_1.d.x, Struct_5(var_1.d.x, Struct_3(vec3<u32>(88641u, var_0, 850u), u_input.c.x)), var_1.c), abs(vec3<u32>(0u, var_0, 4294967295u)))), var_1.b);
                    var_2 = _wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000.0, var_2.x, var_1.c.x), var_1.c)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 120.0, var_2.x) * var_1.c), _wgslsmith_f_op_vec3_f32(-var_1.c)))) * _wgslsmith_f_op_vec3_f32(round(var_1.c))));
                }
                case 0: {
                    var var_0 = 4294967295u;
                    var_0 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(46716u, ~(~4294967295u), ~(4294967295u | 0u))), func_1(~(~_wgslsmith_add_u32(1u, 38662u)), all(select(func_7(508.0, Struct_3(vec3<u32>(34671u, 21164u, 1u), -1), Struct_1(u_input.d.yxx, -38163, vec3<f32>(-730.0, -107.0, -1000.0), vec2<bool>(true, false), u_input.d.x), 4294967295u).d, func_7(-263.0, Struct_3(vec3<u32>(0u, 15876u, 61446u), u_input.b.x), Struct_1(u_input.d.yww, 1, vec3<f32>(854.0, 1490.0, 442.0), vec2<bool>(false, true), -46664), 12182u).d, vec2<bool>(true, true))), Struct_5(_wgslsmith_div_i32(65632, 8478) < (u_input.d.x << (0u % 32u)), Struct_3(~vec3<u32>(51213u, 41481u, 4294967295u), -2147483647)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1007.0, 844.0, 792.0))))))));
                    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(29468, u_input.b.x, -51008), firstLeadingBit(u_input.d.zxz), select(vec3<i32>(1, -2147483648, u_input.d.x), u_input.d.xzz, vec3<bool>(false, true, true))), u_input.d.wxy)), _wgslsmith_div_i32(i32(-1) * -reverseBits(u_input.a), -24745), func_3().c, !func_3().d, -38513);
                    var var_2 = Struct_2(Struct_1(func_3().a, var_1.a.x, _wgslsmith_f_op_vec3_f32(-var_1.c), !select(select(var_1.d, var_1.d, var_1.d.x), var_1.d, func_3().d), 36294), vec3<i32>(u_input.c.x, ~func_7(var_1.c.x, Struct_3(vec3<u32>(1u, 11732u, 1u), u_input.b.x), func_3(), 1u).a, u_input.a), !vec4<bool>(true, 0u != (4294967295u >> (4294967295u % 32u)), !var_1.d.x || false, (0u == 32776u) | false), func_3(), vec3<bool>(~1u != 4294967295u, func_7(_wgslsmith_f_op_f32(-311.0 - _wgslsmith_f_op_f32(-823.0)), Struct_3(func_1(1u, var_1.d.x, Struct_5(false, Struct_3(vec3<u32>(0u, 71617u, 39333u), u_input.a)), vec3<f32>(var_1.c.x, -543.0, 1095.0)), -22550), func_3(), 10491u).d.x, !false));
                }
                case -1: {
                    let var_0 = ~13954u;
                }
                default: {
                    let var_0 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-29661, u_input.c.x, 0), firstLeadingBit(1)), 19346, abs(-34310)), ~((u_input.d.x & -1) << (_wgslsmith_mult_u32(14967u, 6731u) % 32u)), _wgslsmith_f_op_vec3_f32(func_6()), vec2<bool>(!(!false), _wgslsmith_div_u32(98780u, 2241u) < _wgslsmith_dot_vec2_u32(vec2<u32>(359u, 0u), vec2<u32>(0u, 0u))), _wgslsmith_mult_i32(-44497, ~(-23058))), vec3<i32>(1, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 13441, 1), u_input.d.wwy) | u_input.c.x) << (~firstTrailingBit(34404u) % 32u), -2147483648), !(!vec4<bool>(true, 884.0 > 874.0, !false, 325.0 <= 1349.0)), func_3(), vec3<bool>(func_2(vec2<bool>(func_8(Struct_1(u_input.d.xzy, -1, vec3<f32>(-455.0, 743.0, 1416.0), vec2<bool>(true, false), u_input.c.x), vec2<f32>(-1481.0, -1000.0)), 1263.0 <= -915.0), min(vec4<u32>(1u, 58875u, 4294967295u, 0u), vec4<u32>(4294967295u, 68999u, 36199u, 5410u)) ^ ~vec4<u32>(4294967295u, 42860u, 0u, 18446u), 5063u), ~(71166u & 0u) < 12663u, false));
                    var var_1 = select(vec3<u32>(20088u, 21203u, min(0u, 4294967295u)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(42136u, 4294967295u, 22619u, 1u), countOneBits(vec4<u32>(11999u, 1u, 0u, 65768u))), min(~1u, ~3585u), 0u), func_7(_wgslsmith_f_op_f32(-var_0.d.c.x), Struct_3(abs(~vec3<u32>(1u, 10316u, 38874u)), -1), Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.d.e, var_0.d.e, 0), var_0.d.a), u_input.c.x, _wgslsmith_f_op_vec3_f32(var_0.a.c - _wgslsmith_div_vec3_f32(var_0.d.c, vec3<f32>(-1022.0, var_0.a.c.x, -1000.0))), select(select(vec2<bool>(false, false), vec2<bool>(var_0.e.x, true), var_0.a.d), var_0.e.yx, var_0.a.d), _wgslsmith_sub_i32(var_0.d.e | u_input.c.x, -u_input.d.x)), firstLeadingBit(~firstTrailingBit(1u))).d.x);
                    let var_2 = reverseBits(var_0.a.a.xx | vec2<i32>(~2147483647, _wgslsmith_div_i32(max(-2147483648, var_0.b.x), i32(-1) * -2147483648)));
                }
            }
            var var_0 = func_7(_wgslsmith_div_f32(1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1643.0), _wgslsmith_f_op_f32(842.0 * -1514.0), any(vec2<bool>(false, true)))))), Struct_3(vec3<u32>(~9902u >> (_wgslsmith_clamp_u32(4294967295u, 41173u, 1u) % 32u), ~(44645u >> (21039u % 32u)), ~18211u), _wgslsmith_add_i32(u_input.a, 2147483647)), Struct_1(~vec3<i32>(~u_input.d.x, -u_input.c.x, u_input.c.x | u_input.d.x), i32(-1) * -1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-582.0, -887.0))), -121.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2725.0 * -611.0))), vec2<bool>(!(u_input.c.x < -1), false), abs(29585)), _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, select(~4294967295u, 35583u >> (4294967295u % 32u), true == false)), 4294967295u));
        }
        default: {
        }
    }
    if (true) {
        switch (~_wgslsmith_add_i32(u_input.b.x, 25954)) {
            default: {
                let var_0 = Struct_3(countOneBits(vec3<u32>(~_wgslsmith_mult_u32(17537u, 0u), abs(firstTrailingBit(1u)), _wgslsmith_mult_u32(~77136u, abs(0u)))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-61337, firstTrailingBit(-23648), u_input.d.x, u_input.d.x), vec4<i32>(~u_input.c.x, _wgslsmith_mod_i32(-17815, 1), countOneBits(u_input.c.x), u_input.c.x ^ u_input.c.x), select(!vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), !vec4<bool>(true, false, true, false))), _wgslsmith_div_vec4_i32(-(~u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483648, -52292, 1, 15718), u_input.d))));
                var var_1 = Struct_5(!(select(false & true, -2147483648 == var_0.b, !true) && all(vec4<bool>(false, false, false, true))), Struct_3(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a, var_0.a), vec3<u32>(1u, 4745u, var_0.a.x)), -u_input.b.x));
            }
        }
        var var_0 = countOneBits(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10047u, 1u, 44048u), vec4<u32>(10390u, 7732u, 4294967295u, 23339u)), _wgslsmith_mult_u32(1481u, 4294967295u))) | ~_wgslsmith_add_u32(_wgslsmith_mod_u32(57670u >> (0u % 32u), 4294967295u), _wgslsmith_mult_u32(26062u, _wgslsmith_dot_vec2_u32(vec2<u32>(9233u, 14877u), vec2<u32>(0u, 1u))));
    }
    for (var var_0 = 36160; false; var_0 = _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.yx, vec2<i32>(u_input.c.x, u_input.b.x)), _wgslsmith_add_i32(u_input.c.x, -7359)), vec2<i32>(u_input.b.x, -27353 | -35025) ^ vec2<i32>(u_input.a ^ -1, -2147483648)))) {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
    }
    let var_0 = ~(-(abs(vec3<i32>(-2147483648, 2147483647, 0) << (vec3<u32>(1u, 34590u, 0u) % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_add_i32(-1, u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), -34269 | u_input.c.x)));
    var var_1 = Struct_1(~(~(-vec3<i32>(var_0.x, 7343, u_input.b.x))), 35395, func_7(1000.0, Struct_3(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(47675u, 4294967295u, 1u), vec3<u32>(50655u, 4294967295u, 0u)), max(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 55643u, 26947u))), -(u_input.c.x ^ -20056)), func_3(), ~(5608u ^ (4294967295u ^ 0u))).c, !vec2<bool>(!false, true), -(~select(u_input.d.x, var_0.x & var_0.x, !false)));
    loop {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
        for (var var_2 = -81835; func_8(func_3(), var_1.c.yy); ) {
            if (LOOP_COUNTERS[29u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            let var_3 = select(!(!(!vec4<bool>(true, true, var_1.d.x, false))), vec4<bool>(~firstLeadingBit(45427u) != 1u, var_1.d.x, var_1.d.x, !(!true || false)), !true);
            var var_4 = 3204u;
            let var_5 = firstLeadingBit(_wgslsmith_add_vec2_i32(~var_1.a.zx, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_0.yy, var_1.a.zx) | select(vec2<i32>(3122, u_input.d.x), var_0.yy, var_1.d.x), ~abs(vec2<i32>(u_input.a, 0)))));
            let var_6 = ~(-max(-1, _wgslsmith_dot_vec3_i32(select(vec3<i32>(9470, -54922, -2147483648), vec3<i32>(1, u_input.a, -1), var_3.zzy), _wgslsmith_add_vec3_i32(var_1.a, u_input.d.xzx))));
            break;
        }
    }
    var var_2 = vec3<bool>(var_1.d.x, any(select(!vec3<bool>(true, var_1.d.x, false), !select(vec3<bool>(var_1.d.x, var_1.d.x, false), vec3<bool>(var_1.d.x, false, var_1.d.x), vec3<bool>(true, var_1.d.x, var_1.d.x)), !vec3<bool>(true, var_1.d.x, true))), !var_1.d.x);
    var var_3 = 904u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(4294967295u & 4294967295u)), _wgslsmith_f_op_f32(sign(246.0)), _wgslsmith_mult_i32(~0, _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.b.x), -1, abs(-2147483648), 2147483647), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_1.a.x, 2147483647, u_input.d.x, u_input.b.x), u_input.d, var_1.d.x), ~vec4<i32>(-1, var_1.e, u_input.d.x, 53595), vec4<i32>(var_1.b, var_1.e, 1, u_input.b.x)))));
}

