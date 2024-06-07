// {"0:0":[154,167,234,236,64,136,192,175,123,119,79,85,184,162,0,47]}
// Seed: 18188867727005812447

struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3;

var<private> global2: array<f32, 23> = array<f32, 23>(387.0, 1305.0, -645.0, 249.0, -838.0, -1864.0, -315.0, -1057.0, 1630.0, -325.0, 387.0, 1012.0, -1024.0, 579.0, -216.0, -585.0, -716.0, -1000.0, -510.0, -1152.0, -2030.0, -555.0, 297.0);

var<private> LOOP_COUNTERS: array<u32, 32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn func_6(arg_0: i32, arg_1: vec3<bool>) -> vec2<f32> {
    var var_0 = -300.0;
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        var var_1 = arg_1.xy;
        global0 = var_1.x & !var_1.x;
        let var_2 = -424.0;
    }
    switch (0) {
        case 0: {
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                global2 = array<f32, 23>();
                var var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u | 12128u, global1.c.b, ~u_input.a) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 2676u, global1.a.a.x, global1.e.b.b) >> (vec4<u32>(53112u, 51256u, 32078u, global1.d.b.b) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 4294967295u, 40289u, 3410u)), max(~51242u, ~u_input.a)) >> (global1.d.c.b % 32u);
                var var_2 = arg_0;
                break;
            }
            var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.b.d.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 23u)])) - _wgslsmith_f_op_f32(-772.0 * -411.0)) - global2[_wgslsmith_index_u32(global1.b.b.b, 23u)]), Struct_2(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(15518u, 4294967295u, 4294967295u) ^ global1.a.a), min(global1.d.a, firstTrailingBit(vec3<u32>(17704u, 68008u, 4294967295u)))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.e.c.a.x, global2[_wgslsmith_index_u32(global1.e.c.b, 23u)]), global1.d.b.a)))), 3648u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(335.0, 974.0)), global1.b.b.d, global1.c.e), Struct_1(_wgslsmith_f_op_vec2_f32(global1.c.d + global1.b.b.d), global1.a.b.b, global2[_wgslsmith_index_u32(global1.d.c.b, 23u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e.b.d) * _wgslsmith_f_op_vec2_f32(step(global1.d.c.d, vec2<f32>(global2[_wgslsmith_index_u32(1u, 23u)], -727.0)))), _wgslsmith_mult_vec2_i32(firstTrailingBit(global1.c.e), _wgslsmith_add_vec2_i32(vec2<i32>(38282, global1.e.b.e.x), global1.e.c.e))), ~global1.b.d), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.d.x, global2[_wgslsmith_index_u32(0u, 23u)], -436.0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.b.c, -274.0, 208.0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(741.0, global1.e.b.c, global1.c.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1060.0 + global1.a.b.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.b.c))), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global1.a.a.x, 0u), 23u)]))), !(!(!arg_1)));
            let var_2 = u_input.c ^ firstLeadingBit(~(2147483647 | 0) << (abs(var_1.b.b.b) % 32u));
            var_0 = _wgslsmith_f_op_f32(var_1.c.x * global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(global1.b.a, var_1.b.a)), 23u)]);
        }
        case 1: {
            if (true) {
                var var_1 = Struct_1(global1.d.c.d, ~1u | ~_wgslsmith_add_u32(~65094u, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.c.d.x)) * _wgslsmith_f_op_f32(min(713.0, -2266.0)))) - -1050.0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b.c.d + _wgslsmith_f_op_vec2_f32(trunc(global1.a.b.a))) + global1.a.b.a) - vec2<f32>(global1.b.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.d.b.c, -389.0, true)) - -856.0))), global1.b.c.e | _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, global1.a.b.e.x), global1.e.c.e), abs(global1.e.b.e) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(50785u, 0u), vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)), firstTrailingBit(global1.a.d.zy) >> ((vec2<u32>(32728u, global1.c.b) | vec2<u32>(17579u, 36348u)) % vec2<u32>(32u))));
                let var_2 = global1.a.b;
                let var_3 = var_1.e.x;
                var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.c.c + _wgslsmith_f_op_f32(select(var_1.d.x, global2[_wgslsmith_index_u32(var_2.b, 23u)], true))), global1.c.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1470.0 + global2[_wgslsmith_index_u32(27784u, 23u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))));
                let var_4 = ~_wgslsmith_sub_vec4_i32(-(global1.b.d >> (~vec4<u32>(0u, var_2.b, var_2.b, var_2.b) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(global1.a.d, ~vec4<i32>(u_input.c, 36633, arg_0, arg_0)));
            }
            loop {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                let var_1 = Struct_3(global1.e, global1.a, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global1.d.c.a, _wgslsmith_f_op_vec2_f32(floor(global1.d.c.a))))), ~_wgslsmith_add_u32(~u_input.a, 1u), -959.0, global1.e.c.a, select(vec2<i32>(24468, -u_input.d), countOneBits(-vec2<i32>(u_input.c, -1)), select(arg_1.zx, !arg_1.yz, vec2<bool>(true, arg_1.x)))), global1.a, global1.b);
                var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.d + var_1.a.c.d), vec2<f32>(global1.a.c.a.x, -252.0))), vec2<f32>(-538.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000.0))), !true)), ~var_1.a.a.x ^ (max(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.c.b, 1u, 0u, 0u), vec4<u32>(var_1.d.b.b, global1.e.b.b, 54644u, u_input.a))) & reverseBits(~u_input.a)), 1331.0, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.c.d * vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], -1447.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.b.c, -119.0)), arg_1.yy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1039.0, global1.c.a.x) * _wgslsmith_f_op_vec2_f32(sign(global1.c.a))), select(select(vec2<bool>(arg_1.x, true), arg_1.xz, true), select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x), arg_1.x), false))))), vec2<i32>(1, max(_wgslsmith_div_i32(abs(arg_0), u_input.b), _wgslsmith_sub_i32(var_1.c.e.x, reverseBits(0)))));
            }
            var var_1 = global1.e.a ^ vec3<u32>(global1.b.b.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(global1.e.c.b), 0u), _wgslsmith_mod_u32(~u_input.a, 4294967295u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 90023u), ~vec2<u32>(global1.e.c.b, 5615u)));
            if (arg_1.x) {
                let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.d.x) * -1714.0), global1.c.d.x, global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(17151u, u_input.a), 23u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(977.0, 227.0, 1499.0, 1428.0)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000.0, 1405.0, global2[_wgslsmith_index_u32(1u, 23u)], 1496.0)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.e.b.c * -438.0))), global2[_wgslsmith_index_u32(select(~global1.a.a.x, 1u, false), 23u)], _wgslsmith_f_op_f32(floor(global1.d.b.a.x)), _wgslsmith_f_op_f32(global1.b.c.a.x + _wgslsmith_f_op_f32(f32(-1.0) * -329.0))))));
                let var_3 = Struct_2(global1.e.a & global1.d.a, Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000.0, 552.0))), var_2.wy)), ~max(4294967295u, _wgslsmith_sub_u32(42211u, 4294967295u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1.0) * -306.0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(941.0, -1463.0)) - var_2.wx)), _wgslsmith_add_vec2_i32(global1.a.b.e, countOneBits(abs(global1.c.e)))), global1.b.c, ~(firstLeadingBit(global1.b.d) << (vec4<u32>(~u_input.a, u_input.a, select(4294967295u, global1.d.a.x, arg_1.x), min(4294967295u, 0u)) % vec4<u32>(32u))));
                global2 = array<f32, 23>();
                var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-506.0)));
            }
            if (!arg_1.x) {
                var var_2 = Struct_3(Struct_2(~vec3<u32>(~var_1.x, ~global1.e.c.b, global1.e.b.b), Struct_1(global1.e.c.a, 0u, global2[_wgslsmith_index_u32(u_input.a, 23u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.b.c, -174.0) - global1.d.c.a), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(global1.b.c.e, vec2<i32>(-1, u_input.d)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 7347), vec2<i32>(u_input.c, -1)))), Struct_1(vec2<f32>(-155.0, _wgslsmith_f_op_f32(global1.e.c.d.x - -405.0)), ~(~0u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, abs(4294967295u)), 23u)], global1.b.b.d, vec2<i32>(arg_0, arg_0) ^ vec2<i32>(-42545, 39585)), vec4<i32>(min(1, global1.c.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-11184, arg_0), global1.d.b.e), u_input.c, ~u_input.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 62557u, 1u), select(vec4<u32>(26082u, u_input.a, 0u, 1u), vec4<u32>(65181u, global1.e.b.b, global1.d.a.x, 1u), false)) % vec4<u32>(32u))), global1.d, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-609.0, 160.0) - global1.c.d), vec2<f32>(global1.a.b.d.x, -888.0))), vec2<f32>(_wgslsmith_f_op_f32(global1.e.b.d.x - 747.0), _wgslsmith_f_op_f32(-global1.d.c.d.x)), arg_1.zz)), 1046u, _wgslsmith_f_op_f32(max(397.0, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(25658u, 23u)]))), global1.e.b.d, firstLeadingBit(_wgslsmith_div_vec2_i32(global1.b.c.e, global1.e.b.e ^ vec2<i32>(19848, 43736)))), global1.d, global1.d);
                var_0 = _wgslsmith_f_op_f32(-2043.0 + 542.0);
                var var_3 = min(_wgslsmith_mult_i32(u_input.d, firstLeadingBit(-35480)), -(i32(-1) * -1) & abs(-5447));
            }
        }
        case -1: {
            let var_1 = _wgslsmith_f_op_f32(-global1.a.b.c);
            var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 * -730.0), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(441.0 * var_1)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 23u)])) * _wgslsmith_f_op_f32(sign(1672.0))), _wgslsmith_f_op_f32(-1432.0 * _wgslsmith_div_f32(-232.0, var_1))))) + 1990.0);
            global0 = all(vec2<bool>(arg_1.x, select(any(vec4<bool>(arg_1.x, false, false, arg_1.x)), !(!arg_1.x), !(!arg_1.x))));
        }
        case -2147483648: {
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                global2 = array<f32, 23>();
                global0 = !false;
                return vec2<f32>(global1.a.b.c, -405.0);
            }
            let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-950.0), global2[_wgslsmith_index_u32(4294967295u, 23u)])) - -693.0)));
        }
        default: {
            let var_1 = global1.c;
            var_0 = 1554.0;
            if (select(firstLeadingBit(var_1.e.x >> (select(19481u, global1.c.b, false) % 32u)), ~(~(~arg_0)), select(arg_1.x, arg_1.x, true)) == -78745) {
                var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.c.c, var_1.d.x) - global1.c.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(var_1.a)))) * global1.b.b.d))), _wgslsmith_clamp_u32(var_1.b, 4294967295u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global1.b.a.xx, vec2<u32>(51648u, 40901u)), var_1.b), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663.0) * _wgslsmith_f_op_f32(337.0 * _wgslsmith_f_op_f32(-global1.c.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], -1340.0)), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], var_1.a.x)))) + vec2<f32>(344.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1353.0)) + 2382.0))), var_1.e);
                var var_3 = abs(-24181);
            }
            let var_2 = Struct_4(_wgslsmith_f_op_f32(trunc(316.0)), Struct_2(~vec3<u32>(global1.c.b, global1.b.b.b << (u_input.a % 32u), _wgslsmith_mult_u32(4294967295u, var_1.b)), Struct_1(vec2<f32>(_wgslsmith_div_f32(676.0, -205.0), 478.0), _wgslsmith_dot_vec3_u32(~global1.e.a, global1.b.a), -767.0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-493.0, var_1.a.x) + vec2<f32>(global1.b.c.c, 853.0)) - vec2<f32>(var_1.a.x, 402.0)), vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(var_1.e, global1.e.d.wx))), Struct_1(global1.d.b.a, ~0u, var_1.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.a.c.d, vec2<f32>(644.0, 1114.0))), global1.d.b.d), select(var_1.e, vec2<i32>(-1, 8503), arg_1.x) ^ global1.e.c.e), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.d.d.x, 2147483647, 52201, u_input.d), global1.b.d), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1, global1.e.c.e.x, 0), countOneBits(vec4<i32>(0, global1.a.b.e.x, 7706, arg_0))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 23u)])) * _wgslsmith_f_op_f32(-global1.c.d.x)), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.c - _wgslsmith_f_op_f32(global1.b.b.a.x + global2[_wgslsmith_index_u32(var_1.b, 23u)])))), select(arg_1, select(select(arg_1, arg_1, !arg_1.x), select(!arg_1, arg_1, global1.b.c.e.x == -2147483648), !false), !false));
            global1 = Struct_3(Struct_2(countOneBits(abs(var_2.b.a)), var_2.b.c, var_2.b.c, var_2.b.d), global1.d, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000.0, global1.d.b.c), var_1.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, 931.0) + var_1.a))), countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 63262u))), _wgslsmith_f_op_f32(-global1.c.a.x), var_1.a, vec2<i32>(countOneBits(var_1.e.x), -2147483648 | ~(-1))), var_2.b, Struct_2(vec3<u32>(~var_2.b.b.b, firstLeadingBit(~4294967295u), ~(~var_1.b)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.c.xx, var_2.c.yx, false)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(437.0, -274.0))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(-631.0))), vec2<f32>(794.0, _wgslsmith_f_op_f32(var_2.a - global2[_wgslsmith_index_u32(4294967295u, 23u)])), vec2<i32>(-var_1.e.x, ~u_input.d)), Struct_1(global1.d.b.a, ~(~var_2.b.b.b), _wgslsmith_f_op_f32(-2863.0 * var_1.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.d, vec2<f32>(-684.0, var_2.b.b.c))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c.c, -1256.0))), max(select(global1.b.b.e, var_2.b.d.wy, vec2<bool>(false, true)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483648, -1), vec2<i32>(1, -1)))), vec4<i32>(-_wgslsmith_mult_i32(arg_0, var_2.b.d.x), -1, var_1.e.x, -33995)));
        }
    }
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        loop {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            var var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1.0) * -159.0), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2576.0, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(3723u, u_input.a), 23u)]))))), global1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2156.0))), _wgslsmith_f_op_f32(-652.0 - _wgslsmith_f_op_f32(max(global1.b.b.c, global1.e.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181.0 * 243.0))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.a.c.d.x, global2[_wgslsmith_index_u32(42088u, 23u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(289.0, global1.a.c.c), _wgslsmith_f_op_f32(round(910.0)), !arg_1.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global1.d.a.x, 23u)]))), vec3<bool>(false, arg_1.x, all(select(arg_1.yy, !vec2<bool>(arg_1.x, true), select(vec2<bool>(false, arg_1.x), arg_1.yz, vec2<bool>(arg_1.x, arg_1.x))))));
        }
        let var_1 = !any(select(vec4<bool>(false, !arg_1.x, arg_1.x, true), vec4<bool>(!false, arg_1.x || arg_1.x, global1.a.c.a.x >= global1.a.b.a.x, arg_1.x), arg_1.x));
        for (; ; ) {
            if (LOOP_COUNTERS[6u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        }
        let var_2 = vec3<i32>(14292, (i32(-1) * -2147483648) ^ _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0 ^ -2147483648, -1645), _wgslsmith_div_i32(~(-1), arg_0 & -2147483648)), u_input.c);
        global2 = array<f32, 23>();
    }
    loop {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
    }
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.b.b.c, global1.a.c.d.x))))))), _wgslsmith_f_op_vec2_f32(-global1.d.c.d)));
}

fn func_5(arg_0: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_sub_i32(global1.d.b.e.x, -1);
    global1 = Struct_3(Struct_2(global1.e.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 23u)] * -1759.0), _wgslsmith_f_op_f32(-global1.a.b.c)), ~(~global1.d.c.b), 619.0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1360.0, global2[_wgslsmith_index_u32(38994u, 23u)]) - vec2<f32>(654.0, global2[_wgslsmith_index_u32(1u, 23u)]))), vec2<i32>(_wgslsmith_div_i32(7527, 6402), _wgslsmith_div_i32(global1.c.e.x, global1.a.d.x))), global1.e.c, ~(~global1.e.d | (vec4<i32>(var_0, var_0, global1.a.d.x, global1.e.c.e.x) | vec4<i32>(-68076, -45006, 21886, 1)))), global1.d, global1.a.b, Struct_2(vec3<u32>(0u, 0u, ~(~u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000.0, 2265.0)))), ~(4294967295u << (0u % 32u)), 1278.0, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.a.c.d - global1.c.a))), vec2<i32>(var_0, -1) << (arg_0 % vec2<u32>(32u))), global1.e.c, ~vec4<i32>(u_input.b, ~u_input.c, select(u_input.c, 1, true), 0)), Struct_2(global1.d.a, global1.d.b, global1.c, global1.b.d));
    for (var var_1 = -12763; var_1 >= 2147483647; ) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        global2 = array<f32, 23>();
        continue;
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        for (var var_1 = 92049; all(vec4<bool>(!false, ((-160.0 != global1.b.b.c) && !false) || all(vec4<bool>(true, false, true, false)), !false & false, false)); var_1 -= 1) {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            break;
        }
        break;
    }
    switch (global1.e.d.x) {
        case 2357: {
            let var_1 = vec4<bool>(any(vec3<bool>(any(vec3<bool>(true, true, false)) && !true, !(!true), _wgslsmith_f_op_f32(exp2(-111.0)) > _wgslsmith_f_op_f32(global1.e.b.d.x - -244.0))), !all(!(!vec3<bool>(false, false, false))), !(!true), ~global1.d.b.e.x != -reverseBits(i32(-1) * -18463));
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c.c, global2[_wgslsmith_index_u32(u_input.a, 23u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-117.0 + 897.0)))))), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(75323u, 39254u)), arg_0), global1.b.b.c, _wgslsmith_f_op_vec2_f32(func_6(firstTrailingBit(~var_0), select(!var_1.yxz, var_1.xzw, !vec3<bool>(true, false, true)))), _wgslsmith_div_vec2_i32(abs(global1.e.c.e >> (vec2<u32>(arg_0.x, u_input.a) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(~global1.e.a.zz, firstLeadingBit(global1.a.a.yx), vec2<u32>(35199u, 15841u)) % vec2<u32>(32u)), vec2<i32>(-32682, reverseBits(48100))));
                return firstTrailingBit(0u);
            }
        }
        case 0: {
            for (; true; ) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                global2 = array<f32, 23>();
            }
            global1 = Struct_3(global1.b, global1.e, global1.c, Struct_2(global1.b.a ^ ~(vec3<u32>(50367u, 32813u, arg_0.x) ^ global1.b.a), Struct_1(vec2<f32>(-356.0, global1.e.c.d.x), u_input.a, global1.c.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(870.0, global1.e.c.d.x)), abs(global1.d.c.e)), global1.b.c, vec4<i32>(-var_0 & global1.d.b.e.x, var_0, ~global1.b.d.x, -1)), Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(33984u, 4294967295u, arg_0.x), vec3<u32>(4294967295u, 0u, 4294967295u)) ^ ~(~global1.a.a), global1.d.b, Struct_1(global1.a.b.a, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -548.0)), global1.b.b.a, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(9309, global1.d.b.e.x), vec2<i32>(global1.d.c.e.x, var_0)), global1.a.d.x)), firstLeadingBit(max(global1.e.d, vec4<i32>(global1.c.e.x, -11543, global1.a.b.e.x, var_0)))));
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                var var_1 = global1.e;
                break;
            }
            if (!(!(!false))) {
                var var_1 = !vec4<bool>(select(false, true, ~u_input.a > arg_0.x), all(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), true || true)), !true, all(!vec4<bool>(false, false, false, false)));
            }
        }
        case 2147483647: {
            var var_1 = arg_0;
            var var_2 = firstTrailingBit(firstLeadingBit(~4294967295u));
            if (false) {
                global1 = Struct_3(global1.a, Struct_2(firstTrailingBit(select(select(global1.d.a, vec3<u32>(0u, 98499u, 33365u), true), global1.a.a & global1.e.a, false)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.c.a) * _wgslsmith_f_op_vec2_f32(-global1.c.a)), global1.a.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.b.a.x) + _wgslsmith_f_op_f32(f32(-1.0) * -480.0)), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 23u)], -265.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.c.c, -1337.0))), vec2<i32>(-3227, 2147483647)), global1.a.c, reverseBits(global1.e.d)), Struct_1(global1.a.c.d, 10632u, global1.b.b.c, _wgslsmith_div_vec2_f32(global1.c.a, vec2<f32>(_wgslsmith_f_op_f32(global1.e.b.d.x * 1867.0), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 23u)]))), _wgslsmith_div_vec2_i32(-global1.c.e & firstLeadingBit(global1.d.c.e), -abs(global1.e.c.e))), global1.b, Struct_2(global1.b.a, global1.b.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 23u)], -412.0) * vec2<f32>(global1.d.b.c, global1.d.c.d.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(global1.d.c.c, global1.d.b.a.x), vec2<f32>(global2[_wgslsmith_index_u32(global1.a.a.x, 23u)], 1176.0))), var_1.x, 1620.0, vec2<f32>(global1.e.b.c, _wgslsmith_f_op_f32(-1446.0)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(global1.a.d.x, u_input.d)), _wgslsmith_add_i32(-1, -2147483648))), vec4<i32>(u_input.b & reverseBits(-1), max(abs(-2845), -u_input.c), max(global1.d.c.e.x, ~0), ~(~(-1)))));
                var_1 = vec2<u32>(abs(15837u), (~arg_0.x >> (u_input.a % 32u)) >> (~33502u % 32u)) | ~reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(12195u, var_1.x), vec2<u32>(u_input.a, 5435u)), vec2<u32>(var_1.x, 4294967295u)));
                let var_3 = select(!select(vec2<bool>(true || true, all(vec3<bool>(false, false, false))), vec2<bool>(false, true || true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !vec2<bool>(false, false), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(select(!vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true)), !(!vec2<bool>(false, true)), true), any(!(!vec3<bool>(true, true, true)))));
            }
        }
        default: {
            for (var var_1: i32; var_1 > -4395; var_1 -= 1) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                global1 = Struct_3(Struct_2(global1.e.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(global1.a.a.x, 23u)], global1.e.c.d.x)))), ~0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.c.b, 38640u, 0u), vec3<u32>(arg_0.x, 4294967295u, 1136u)), -448.0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(22190u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]) - global1.a.c.a)), -vec2<i32>(global1.e.c.e.x, global1.c.e.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1877.0, global2[_wgslsmith_index_u32(arg_0.x, 23u)]) - global1.a.c.d), u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(881.0 + 148.0))), global1.e.c.a, vec2<i32>(_wgslsmith_dot_vec4_i32(global1.d.d, vec4<i32>(var_0, u_input.c, var_0, u_input.c)), -var_0)), ~(~(~global1.d.d))), global1.e, Struct_1(global1.a.c.d, global1.c.b, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(select(firstLeadingBit(1u), global1.c.b ^ arg_0.x, arg_0.x >= 0u), 23u)], global2[_wgslsmith_index_u32(max(~4294967295u, global1.c.b), 23u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global1.c.d + vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 23u)], -877.0)))) - vec2<f32>(_wgslsmith_f_op_f32(-1000.0 * global1.d.b.a.x), _wgslsmith_f_op_f32(select(1814.0, global2[_wgslsmith_index_u32(u_input.a, 23u)], false)))), -abs(global1.e.c.e)), Struct_2(firstLeadingBit(~(~vec3<u32>(u_input.a, 0u, u_input.a))), Struct_1(vec2<f32>(global1.c.d.x, _wgslsmith_f_op_vec2_f32(func_6(-2147483648, vec3<bool>(true, true, false))).x), u_input.a, _wgslsmith_f_op_f32(-global1.a.b.c), global1.e.b.d, vec2<i32>(max(50402, global1.c.e.x), u_input.b)), global1.b.c, max(min(-global1.e.d, -global1.e.d), ~global1.d.d)), global1.a);
                break;
            }
            switch (-2147483648) {
                case 2147483647: {
                    let var_1 = Struct_3(global1.a, Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 1u ^ global1.c.b, u_input.a), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.a, 98129u, 23261u), vec4<u32>(u_input.a, 1u, global1.d.b.b, u_input.a)), global1.e.c.b ^ global1.c.b, ~4294967295u)), global1.e.b, global1.c, global1.b.d), global1.c, Struct_2(global1.a.a, global1.e.b, global1.e.c, min(~firstTrailingBit(vec4<i32>(var_0, global1.b.d.x, 0, 31179)), -(~global1.e.d))), Struct_2(vec3<u32>(~(~31614u), global1.d.c.b, arg_0.x), global1.e.c, global1.c, ~global1.b.d));
                    let var_2 = Struct_3(var_1.d, var_1.d, Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.b.a), ~53162u, -310.0, vec2<f32>(_wgslsmith_f_op_vec2_f32(func_6(max(10601, var_1.e.c.e.x), vec3<bool>(true, true, true))).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 23u)]))))), countOneBits(_wgslsmith_sub_vec2_i32(~var_1.b.b.e, global1.c.e))), var_1.d, var_1.e);
                    global2 = array<f32, 23>();
                }
                case 1: {
                    let var_1 = _wgslsmith_div_u32(~(~min(~global1.a.c.b, global1.e.b.b)), 85348u);
                    var var_2 = Struct_2(vec3<u32>(37573u, global1.d.c.b, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.e.a.x << (0u % 32u), 1u & 0u), _wgslsmith_mult_u32(var_1 << (u_input.a % 32u), ~global1.b.c.b))), global1.a.b, global1.b.b, abs(global1.a.d & _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483648, -34485, -27145, var_0), abs(global1.e.d))));
                    let var_3 = all(!select(vec2<bool>(true, any(vec4<bool>(true, true, true, false))), vec2<bool>(true, 1185.0 <= -100.0), ~66416u < ~0u));
                    global1 = Struct_3(Struct_2(global1.b.a, var_2.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.a.b.a, global1.a.b.a)), ~(global1.c.b << (33864u % 32u)), _wgslsmith_f_op_f32(exp2(var_2.b.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-996.0, var_2.b.d.x), global1.c.d)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(187.0, -457.0)))), ~(vec2<i32>(0, var_0) | global1.b.c.e)), vec4<i32>(_wgslsmith_mult_i32(u_input.c, _wgslsmith_clamp_i32(var_2.b.e.x, -26362, -1)), reverseBits(abs(14796)), _wgslsmith_dot_vec2_i32(var_2.b.e, vec2<i32>(var_0, var_2.d.x)), max(-global1.a.b.e.x, global1.d.b.e.x & var_2.b.e.x))), global1.d, Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_2.c.d.x - -780.0), _wgslsmith_f_op_f32(global1.b.c.a.x - -473.0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.d.x, global1.d.c.c)) + vec2<f32>(-1000.0, 1168.0)))), (~var_1 | _wgslsmith_add_u32(var_2.a.x, u_input.a)) | ~var_2.c.b, 367.0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-350.0, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 23u)]))), vec2<f32>(_wgslsmith_f_op_f32(round(-1446.0)), _wgslsmith_f_op_f32(exp2(-254.0))), vec2<bool>(select(false, var_3, var_3), var_3))), _wgslsmith_mod_vec2_i32(var_2.b.e, _wgslsmith_mult_vec2_i32(vec2<i32>(-24750, -2147483648), select(global1.e.c.e, vec2<i32>(33665, -1), var_3)))), global1.e, Struct_2(~(countOneBits(global1.d.a) | max(vec3<u32>(var_1, global1.a.b.b, 121706u), var_2.a)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.d.c.a * vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 23u)], global1.d.c.a.x))), 11477u, global1.d.b.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.a)), (vec2<i32>(26426, global1.d.c.e.x) ^ vec2<i32>(global1.a.d.x, var_2.b.e.x)) << (select(global1.d.a.xz, vec2<u32>(u_input.a, global1.d.a.x), vec2<bool>(var_3, var_3)) % vec2<u32>(32u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(-1684.0)), _wgslsmith_f_op_f32(exp2(339.0))), 38334u, 1000.0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.d.c.a) + _wgslsmith_div_vec2_f32(vec2<f32>(global1.a.b.d.x, global2[_wgslsmith_index_u32(22838u, 23u)]), var_2.c.d)), ~var_2.c.e), countOneBits(select(-vec4<i32>(-1, -3638, u_input.d, 12667), var_2.d >> (vec4<u32>(56589u, 1u, 23494u, 0u) % vec4<u32>(32u)), !vec4<bool>(true, var_3, false, var_3)))));
                }
                case -1: {
                    let var_1 = Struct_3(global1.d, global1.d, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-101.0, global2[_wgslsmith_index_u32(global1.d.a.x, 23u)])))), ~(~72132u), _wgslsmith_f_op_f32(global1.e.b.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -898.0))), _wgslsmith_f_op_vec2_f32(global1.e.b.d + _wgslsmith_f_op_vec2_f32(abs(global1.b.c.d))), abs(-vec2<i32>(global1.b.b.e.x, var_0) << (_wgslsmith_sub_vec2_u32(vec2<u32>(3402u, u_input.a), vec2<u32>(15395u, 4294967295u)) % vec2<u32>(32u)))), global1.a, Struct_2(global1.e.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global1.e.c.c - 1024.0), global2[_wgslsmith_index_u32(4294967295u, 23u)]), max(4294967295u, 20868u), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(79772u, global1.a.c.b)), 23u)], _wgslsmith_f_op_vec2_f32(select(global1.d.b.d, _wgslsmith_f_op_vec2_f32(global1.b.b.d - global1.b.c.d), true)), vec2<i32>(abs(1), 1)), global1.b.c, _wgslsmith_div_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, u_input.b, u_input.b, -1), vec4<i32>(global1.b.c.e.x, 0, -32598, var_0)), vec4<i32>(var_0, select(u_input.b, global1.a.d.x, true), -u_input.d, _wgslsmith_add_i32(2147483647, -57335)))));
                    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 - 450.0) - var_1.d.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.a.x)) - var_1.a.c.c))))));
                    global1 = var_1;
                }
                default: {
                    let var_1 = Struct_3(Struct_2(abs(max(~vec3<u32>(23574u, arg_0.x, global1.c.b), global1.a.a)), Struct_1(vec2<f32>(176.0, -1000.0), _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.x, u_input.a), firstTrailingBit(0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.d.x - 122.0), _wgslsmith_div_f32(239.0, global1.e.c.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.a + global1.d.b.d)), vec2<i32>(_wgslsmith_dot_vec4_i32(global1.b.d, vec4<i32>(var_0, u_input.d, u_input.c, u_input.d)), global1.c.e.x)), global1.b.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 88247, -18357, 0), global1.b.d), abs(global1.e.c.e.x), (2147483647 & -12995) << (_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(79559u, 0u)) % 32u), min(-1, u_input.b))), global1.d, Struct_1(global1.a.c.a, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -290.0) - global1.e.c.d.x) + global1.a.c.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 23u)]), global1.a.b.c)), firstTrailingBit(global1.c.e)), Struct_2(vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, arg_0.x, 0u), arg_0.x, u_input.a), Struct_1(global1.b.c.a, _wgslsmith_sub_u32(min(arg_0.x, u_input.a), 76639u << (global1.d.a.x % 32u)), global2[_wgslsmith_index_u32(arg_0.x, 23u)], vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.c.b, global1.b.a.x), 23u)], _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a, 23u)]))), vec2<i32>(_wgslsmith_dot_vec2_i32(global1.b.d.ww, global1.c.e), 71623)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(424.0, global1.c.d.x))), 1u, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(35005u, 23u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b.c.d, vec2<f32>(-705.0, -379.0))), _wgslsmith_div_vec2_i32(global1.c.e, -vec2<i32>(var_0, var_0))), global1.d.d), Struct_2(reverseBits(countOneBits(~global1.e.a)), Struct_1(global1.e.b.d, _wgslsmith_mod_u32(130834u, 1u) ^ ~129771u, -705.0, vec2<f32>(_wgslsmith_div_f32(-572.0, global1.c.d.x), 1265.0), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647, var_0), select(global1.c.e, vec2<i32>(var_0, global1.a.c.e.x), true), firstLeadingBit(vec2<i32>(global1.c.e.x, global1.d.d.x)))), global1.e.b, global1.a.d));
                    global2 = array<f32, 23>();
                    var var_2 = !select(vec3<bool>(select(!true, false, true), !(true & true), !all(vec3<bool>(false, false, true))), select(select(!vec3<bool>(false, true, false), !vec3<bool>(true, false, true), global1.b.b.e.x <= 0), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(-var_1.c.d.x) > _wgslsmith_f_op_f32(-1225.0)), any(!vec2<bool>(true, false)));
                    let var_3 = !vec4<bool>(var_2.x, !var_2.x, ~var_1.a.c.b > (4294967295u >> (abs(40622u) % 32u)), !(!(!var_2.x)));
                }
            }
            return ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 75750u), select(max(vec2<u32>(global1.a.a.x, 95535u), vec2<u32>(global1.d.c.b, arg_0.x)), min(global1.b.a.zy, global1.a.a.zy), !vec2<bool>(false, false))));
        }
    }
    return 0u;
}

fn func_4() -> vec3<bool> {
    let var_0 = ~113199u;
    var var_1 = ~0u;
    let var_2 = !vec4<bool>(true, (~0u | _wgslsmith_mod_u32(57221u, global1.d.c.b)) >= u_input.a, global1.c.b < func_5(~global1.a.a.yx), all(vec3<bool>(1 > 36817, !true, any(vec2<bool>(false, true)))));
    for (var var_3 = -57056; all(select(vec2<bool>(all(vec2<bool>(false, false)), true), !var_2.wy, var_2.zx)); ) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var var_4 = var_2.x;
        if (!false) {
        }
        if (var_2.x) {
            let var_5 = firstTrailingBit(countOneBits(~vec4<u32>(abs(global1.a.a.x), _wgslsmith_dot_vec3_u32(global1.d.a, global1.b.a), 4294967295u, var_0)));
            continue;
        }
    }
    for (var var_3 = -2147483648; var_2.x && false; var_3 += 1) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
    }
    return vec3<bool>(var_2.x, all(var_2), !var_2.x);
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    let var_0 = u_input.a;
    global2 = array<f32, 23>();
    var var_1 = -19790 | ((i32(-1) * -(~(-2147483648))) ^ 0);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-268.0), global1.c.d.x, arg_0.c.d.x);
    var var_3 = vec3<bool>(!any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), func_4(), !vec3<bool>(false, true, false))), !func_4().x, all(vec2<bool>(_wgslsmith_mult_u32(var_0, arg_0.b.b) < 1u, any(vec2<bool>(true, true)))));
    return Struct_3(global1.e, arg_0, arg_0.b, Struct_2(vec3<u32>(~firstLeadingBit(48477u), min(u_input.a, ~global1.d.c.b), ~u_input.a >> (_wgslsmith_mult_u32(14153u, 0u) % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.d.b.a, vec2<f32>(702.0, 1962.0))) - global1.b.c.a), _wgslsmith_mult_u32(~arg_0.c.b, ~arg_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1.0) * -1632.0), _wgslsmith_f_op_f32(-global1.d.c.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], 425.0)), global1.d.b.e), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.b.a.x, var_2.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.e.c.c, global2[_wgslsmith_index_u32(var_0, 23u)])))), abs(global1.b.c.b), _wgslsmith_f_op_f32(762.0 - _wgslsmith_f_op_f32(ceil(-1075.0))), global1.a.b.d, global1.a.b.e), vec4<i32>(~(-8958), u_input.c, global1.b.b.e.x, u_input.c) ^ global1.e.d), arg_0);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: i32) -> vec2<f32> {
    switch (_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~(~arg_1.b.d), ~global1.d.d), min(vec4<i32>(36545, _wgslsmith_add_i32(2147483647, -1) | -2147483648, global1.e.c.e.x, firstTrailingBit(-65458)), ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global1.e.d, vec4<i32>(-1, 0, -2147483648, global1.e.b.e.x)), _wgslsmith_sub_vec4_i32(arg_1.b.d, vec4<i32>(11295, -9289, global1.a.c.e.x, u_input.d)))))) {
        case 36410: {
            global2 = array<f32, 23>();
        }
        default: {
            switch (-9748) {
                case -1: {
                    var var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 23u)]);
                }
                case 44759: {
                    let var_0 = func_3(global1.b);
                    global2 = array<f32, 23>();
                    let var_1 = -190.0;
                    let var_2 = arg_0;
                    let var_3 = var_0.b.d;
                }
                default: {
                }
            }
            switch (~(global1.d.c.e.x | select(arg_1.b.c.e.x, func_3(Struct_2(vec3<u32>(4294967295u, u_input.a, 729u), Struct_1(vec2<f32>(arg_1.c.x, global2[_wgslsmith_index_u32(arg_1.b.b.b, 23u)]), global1.b.b.b, -1109.0, vec2<f32>(global2[_wgslsmith_index_u32(44440u, 23u)], -2709.0), arg_1.b.d.zz), arg_1.b.c, global1.d.d)).d.d.x, !(!arg_1.d.x)))) {
                case 0: {
                    global0 = arg_1.d.x;
                    let var_0 = global1.c;
                    var var_1 = arg_1.b.c;
                    var var_2 = countOneBits(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(global1.c.b, global1.d.b.b, 4294967295u, 0u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_1.b, 4294967295u, 1u, global1.d.c.b)), ~(~vec4<u32>(arg_1.b.c.b, 1u, 1u, 1u)))));
                    let var_3 = !select(arg_1.d, arg_0.wyx, vec3<bool>(any(arg_0) & any(vec2<bool>(arg_0.x, arg_0.x)), arg_1.d.x, true));
                }
                case -43115: {
                    global2 = array<f32, 23>();
                    let var_0 = arg_1.c;
                    global1 = func_3(Struct_2(vec3<u32>(_wgslsmith_add_u32(~43382u, countOneBits(u_input.a)), ~1u, select(~u_input.a, _wgslsmith_mod_u32(4294967295u, u_input.a), arg_0.x || true)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.d.c.d - vec2<f32>(global1.d.c.d.x, global1.c.c)), _wgslsmith_f_op_vec2_f32(var_0.xy - vec2<f32>(-1475.0, var_0.x)))), select(firstLeadingBit(4294967295u), abs(u_input.a), !arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(960.0 + -577.0) * _wgslsmith_f_op_f32(arg_1.a + -2173.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.c.c, global1.b.c.a.x)), -vec2<i32>(arg_1.b.c.e.x, -2147483648)), global1.e.b, vec4<i32>(-21093, 47554, u_input.c, select(-6064, 2466 | global1.a.b.e.x, !arg_0.x))));
                }
                case 53254: {
                    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1456.0, global1.c.c), global1.d.c.d))));
                }
                default: {
                    global1 = func_3(func_3(arg_1.b).b);
                    let var_0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.c.c), global2[_wgslsmith_index_u32(global1.d.c.b, 23u)])), func_3(Struct_2(min(vec3<u32>(1u, 4294967295u, 0u), global1.d.a), arg_1.b.c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-665.0, global2[_wgslsmith_index_u32(18756u, 23u)])), _wgslsmith_add_u32(global1.a.b.b, 0u), -1380.0, arg_1.c.zy, arg_1.b.b.e), vec4<i32>(-10085, 2147483647 ^ arg_2, arg_1.b.b.e.x ^ -16358, _wgslsmith_div_i32(-13801, u_input.d)))).a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~global1.b.b.b, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(529.0))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 23u)])), _wgslsmith_div_f32(global1.c.a.x, _wgslsmith_f_op_f32(-656.0))))), arg_1.d);
                }
            }
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                break;
            }
            var var_0 = global1.d.c.d;
            var_0 = global1.b.c.a;
        }
    }
    let var_0 = 0 & (56636 ^ 0);
    for (var var_1: i32; var_1 >= 2147483647; global0 = any(select(func_4(), !(!(!vec3<bool>(false, true, arg_0.x))), all(select(arg_0, vec4<bool>(false, arg_1.d.x, arg_0.x, false), !true))))) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        for (; !arg_1.d.x; ) {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            break;
        }
        let var_2 = arg_1.b.c;
        continue;
    }
    for (var var_1 = -17073; var_1 < 21380; var_1 -= 1) {
        if (LOOP_COUNTERS[20u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
        break;
    }
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global1.c.c), 846.0), _wgslsmith_div_u32(arg_1.b.c.b, arg_1.b.b.b), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global1.d.b.b | global1.d.c.b, 23u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1238.0, global1.d.c.c), vec2<f32>(arg_1.c.x, 820.0)), _wgslsmith_f_op_vec2_f32(step(arg_1.c.zy, vec2<f32>(global1.a.c.d.x, -1065.0)))), vec2<f32>(-790.0, 630.0))) * arg_1.c.zy), -global1.d.c.e);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(~select(arg_1.b.d.x, 51219, arg_1.d.x) ^ var_1.e.x, vec3<bool>(arg_1.d.x, _wgslsmith_mult_u32(10554u, arg_1.b.c.b) >= ~0u, arg_1.d.x))), global1.a.c.d);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    global1 = Struct_3(global1.d, global1.d, Struct_1(global1.b.c.d, ~max(firstLeadingBit(88810u), _wgslsmith_mult_u32(global1.b.a.x, 4294967295u)), _wgslsmith_f_op_f32(trunc(-962.0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-430.0, _wgslsmith_f_op_f32(f32(-1.0) * -372.0))), vec2<i32>(-69586, global1.b.b.e.x)), func_3(func_3(global1.a).e).a, global1.a);
    global0 = func_4().x;
    global0 = true;
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.x)), 812.0, all(vec3<bool>(true, false, false)) && !false)), arg_0.a.x), 1568.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.c.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-716.0) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1.0) * -1296.0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-2727.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(43122u, 23u)] - arg_0.c)))));
    var var_1 = -998.0;
    return global1.e.c;
}

fn func_8(arg_0: Struct_1) -> f32 {
    switch (firstTrailingBit(u_input.c)) {
        case -2147483648: {
            if (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(abs(56805u), 23u)], _wgslsmith_f_op_f32(-global1.a.c.c)))) * _wgslsmith_f_op_f32(-1996.0 + 1000.0)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1097.0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.a.a.x, 23u)] - 295.0) + _wgslsmith_f_op_f32(f32(-1.0) * -388.0))))) {
                let var_0 = global1.e.d.xzy;
                var var_1 = _wgslsmith_sub_vec4_u32(countOneBits(~(~(~vec4<u32>(30030u, 2330u, 67258u, 26114u)))), _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, global1.b.a.x, arg_0.b), firstTrailingBit(vec4<u32>(5668u, 0u, 1u, 18030u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), (vec4<u32>(global1.b.c.b, arg_0.b, 0u, arg_0.b) << (vec4<u32>(1u, u_input.a, global1.e.a.x, 1u) % vec4<u32>(32u))) << (firstTrailingBit(vec4<u32>(25062u, 1u, 0u, arg_0.b)) % vec4<u32>(32u)), ~vec4<u32>(arg_0.b, 1u, 1u, 4294967295u))));
            }
            let var_0 = vec4<i32>(_wgslsmith_mod_i32(countOneBits(firstTrailingBit(-global1.a.d.x)), u_input.c), -1, 0, ~(~func_7(global1.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.b.a.x, arg_0.a.x, 442.0)), select(global1.b.d.zxw, vec3<i32>(arg_0.e.x, -23653, -2147483648), false), 2836u).e.x));
            if (true) {
                let var_1 = func_3(func_3(func_3(global1.b).e).e).a;
                var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-func_3(global1.a).e.b.d))) - _wgslsmith_f_op_vec2_f32(-var_1.c.d)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.a.x, -2147.0) * vec2<f32>(2709.0, -1000.0)) * vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], -831.0)) - vec2<f32>(_wgslsmith_f_op_f32(-219.0 + 1133.0), _wgslsmith_f_op_f32(-1000.0 + global1.a.c.c))))));
                let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.b.a.x, 1204.0, global2[_wgslsmith_index_u32(u_input.a, 23u)], 845.0) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.c, var_2.x, arg_0.d.x, -643.0) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -391.0), var_2.x, _wgslsmith_f_op_f32(397.0 - arg_0.a.x), -506.0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-327.0, var_1.b.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137.0) + _wgslsmith_f_op_f32(f32(-1.0) * -386.0)), _wgslsmith_f_op_f32(f32(-1.0) * -2059.0))));
                return _wgslsmith_f_op_f32(ceil(arg_0.d.x));
            }
            for (var var_1 = 58120; var_1 >= -1; global2 = array<f32, 23>()) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                var var_2 = -var_0;
                let var_3 = u_input.a >> ((reverseBits(global1.c.b) | (48191u & _wgslsmith_mult_u32(u_input.a, u_input.a & global1.b.b.b))) % 32u);
                var var_4 = global1.a.b.e.x <= -_wgslsmith_sub_i32(-40956, arg_0.e.x);
                global0 = !any(select(!(!vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), all(vec3<bool>(true, false, false))));
                global1 = Struct_3(func_3(func_3(global1.e).d).a, global1.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * 1000.0) * -761.0), _wgslsmith_f_op_f32(exp2(arg_0.d.x))), ~(1u | ~global1.c.b), 1088.0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0.d - global1.a.c.a)))), vec2<i32>(1, var_2.x)), global1.b, global1.d);
            }
            if (func_4().x) {
                global0 = all(!vec3<bool>(true, all(vec3<bool>(false, true, true)), !(u_input.a > arg_0.b)));
                global2 = array<f32, 23>();
                var var_1 = firstTrailingBit(~(~select(vec4<u32>(global1.d.a.x, 4294967295u, u_input.a, 37377u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b, 25072u, global1.d.c.b, 58769u), vec4<u32>(27742u, 4294967295u, arg_0.b, global1.a.a.x)), global1.c.e.x >= u_input.b)));
                var var_2 = select(select(vec2<bool>(func_4().x, 1 > (var_0.x & var_0.x)), select(select(!vec2<bool>(false, false), !vec2<bool>(false, true), !vec2<bool>(true, true)), !(!vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(true, false), false)), !vec2<bool>(true, select(true, true, false))), func_4().zz, !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
                let var_3 = global1.b.b;
            }
        }
        case 0: {
            for (var var_0: i32; !all(vec2<bool>(any(vec2<bool>(false, false)), false)) & false; var_0 += 1) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            }
            loop {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                let var_0 = vec4<i32>(-countOneBits((global1.a.c.e.x << (global1.e.b.b % 32u)) >> (u_input.a % 32u)), abs(func_7(func_3(global1.b).d.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(309.0, arg_0.d.x, global2[_wgslsmith_index_u32(0u, 23u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(287.0, arg_0.d.x, 161.0) - vec3<f32>(arg_0.a.x, -1114.0, 630.0))), _wgslsmith_sub_vec3_i32(abs(global1.e.d.xwy), vec3<i32>(arg_0.e.x, u_input.b, 20281)), func_5(~global1.a.a.xz)).e.x), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d, -13646), u_input.d) ^ 1, func_3(global1.d).b.c.e.x), -60858);
                var var_1 = abs(_wgslsmith_mod_u32(~(~global1.c.b), global1.b.b.b));
            }
            loop {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
            }
            let var_0 = vec3<i32>(min(_wgslsmith_clamp_i32(global1.b.b.e.x, -17687, 2147483647 << (arg_0.b % 32u)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-48506, u_input.d, u_input.b), select(vec3<i32>(global1.a.d.x, 4498, arg_0.e.x), global1.d.d.yxy, vec3<bool>(false, false, true))), global1.c.e.x)), select(~u_input.d, firstTrailingBit(u_input.b), !(!false)), arg_0.e.x);
            var var_1 = global1.a.a;
        }
        case 1: {
            for (var var_0 = -1; var_0 == 1; global0 = any(select(vec4<bool>(!(498 == u_input.b), true, false, arg_0.e.x != global1.a.d.x), select(!vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), !vec4<bool>(false, false, false, false)), true), !true))) {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                global2 = array<f32, 23>();
                var var_1 = func_3(Struct_2(global1.b.a, arg_0, func_3(global1.b).a.b, _wgslsmith_div_vec4_i32(countOneBits(global1.e.d), vec4<i32>(u_input.c, 29672, arg_0.e.x, -2147483648)) | vec4<i32>(-18679, global1.b.d.x, arg_0.e.x, 2147483647))).c;
            }
            if (all(vec2<bool>(true, all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false))))) {
            }
            global0 = any(select(func_4(), !vec3<bool>(!true, false || false, func_4().x), !(!false) || all(!vec3<bool>(true, false, false))));
            var var_0 = firstTrailingBit(vec4<u32>(4294967295u >> (~arg_0.b % 32u), countOneBits(13640u) >> (83591u % 32u), ~(u_input.a ^ u_input.a), 122519u)) & abs(~vec4<u32>(4294967295u, global1.b.c.b, 0u, 42685u) << (abs(~vec4<u32>(82527u, u_input.a, 5117u, 59188u)) % vec4<u32>(32u)));
            let var_1 = func_3(global1.b).d;
        }
        case -22407: {
            let var_0 = select(!(!vec4<bool>(!true, !false, !true, true)), select(!(!vec4<bool>(true, false, true, false)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), global1.e.a.x <= global1.c.b), vec4<bool>(any(vec4<bool>(true, false, false, true)), func_4().x, any(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true))), any(!vec2<bool>(true, false))), select(all(!vec3<bool>(true, false, true)), true, _wgslsmith_f_op_f32(floor(-357.0)) == _wgslsmith_f_op_f32(-1000.0))), !any(vec2<bool>(false, !false)));
            global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(477.0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(295.0 - 1000.0)))), -343.0)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x - -1067.0) + 441.0)));
            let var_1 = global1.e.b;
            var var_2 = Struct_3(global1.b, Struct_2(countOneBits(vec3<u32>(~u_input.a, max(0u, u_input.a), arg_0.b | 1u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.e.c.a, global1.e.b.d))), ~arg_0.b, -454.0, arg_0.a, vec2<i32>(i32(-1) * -2147483648, _wgslsmith_sub_i32(u_input.b, 2147483647))), arg_0, func_3(global1.a).b.d), func_3(global1.a).c, global1.d, global1.a);
            loop {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            }
        }
        default: {
            global1 = func_3(Struct_2(vec3<u32>(0u, 4294967295u, 10595u), arg_0, func_7(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_0.b, 23u)], -443.0) * vec2<f32>(arg_0.c, -2395.0)), arg_0.b, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, global1.b.b.b, 35755u), 23u)], _wgslsmith_f_op_vec2_f32(arg_0.d + arg_0.a), _wgslsmith_mult_vec2_i32(global1.d.c.e, arg_0.e)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d.x, 412.0, 514.0))), ~global1.e.d.zzw, _wgslsmith_div_u32(~0u, 4294967295u ^ 44551u)), global1.d.d));
            let var_0 = ~u_input.a;
            if (_wgslsmith_dot_vec4_i32(global1.a.d, ~vec4<i32>(~global1.e.c.e.x, u_input.c & u_input.d, abs(arg_0.e.x), 37049)) <= max(~min(_wgslsmith_dot_vec2_i32(vec2<i32>(-42522, u_input.c), global1.a.d.zw), 0), global1.c.e.x)) {
                global2 = array<f32, 23>();
            }
        }
    }
    var var_0 = global2[_wgslsmith_index_u32(global1.c.b, 23u)];
    var var_1 = _wgslsmith_sub_i32(2147483647, u_input.d) & (abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.c), vec2<i32>(-40383, arg_0.e.x)), global1.e.b.e >> (global1.b.a.xz % vec2<u32>(32u)))) >> (_wgslsmith_div_u32(arg_0.b, u_input.a) % 32u));
    switch (_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-firstLeadingBit(~vec3<i32>(-15991, 5125, global1.d.c.e.x)), select(_wgslsmith_add_vec3_i32(select(vec3<i32>(arg_0.e.x, arg_0.e.x, arg_0.e.x), vec3<i32>(0, 0, global1.b.d.x), false), global1.d.d.wzx), func_3(func_3(global1.b).b).d.d.xwy, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))), -2147483648)) {
        case 1: {
        }
        default: {
            let var_2 = vec4<i32>(10401 ^ 44495, global1.a.d.x, countOneBits(-_wgslsmith_mult_i32(~global1.e.d.x, countOneBits(37742))), arg_0.e.x);
            if (!(!true)) {
            }
            global0 = all(!vec4<bool>(!(-1 > -2147483648), all(!vec3<bool>(false, true, false)), any(vec4<bool>(true, false, false, false)), (-2965 >= -24206) && !false));
        }
    }
    global1 = func_3(func_3(global1.d).b);
    return arg_0.d.x;
}

fn func_9(arg_0: f32, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    global2 = array<f32, 23>();
    for (var var_0 = -6897; true; var_0 += 1) {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
        break;
    }
    return func_3(global1.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    loop {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
        break;
    }
    let var_0 = global1.b;
    global1 = func_9(_wgslsmith_f_op_f32(func_8(func_7(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-249.0, arg_1.b.d.x))), 10661u, -402.0, _wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(true, true, false, false), Struct_4(-1009.0, global1.e, vec3<f32>(-359.0, 419.0, arg_0.d.x), vec3<bool>(false, false, false)), arg_1.d.x)), vec2<i32>(12624, var_0.b.e.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -2205.0), _wgslsmith_f_op_f32(f32(-1.0) * -213.0), _wgslsmith_f_op_f32(var_0.c.a.x - var_0.c.d.x)), select(vec3<i32>(arg_0.e.x, -49138, u_input.b), arg_1.d.wzx, -1 > -1), _wgslsmith_dot_vec2_u32(select(global1.a.a.yx, arg_1.a.xy, vec2<bool>(true, false)), vec2<u32>(u_input.a, 112806u))))), -1758.0, !select(vec2<bool>(true, all(vec3<bool>(true, false, false))), vec2<bool>(!false, all(vec2<bool>(true, false))), arg_0.e.x >= (var_0.c.e.x | -2147483648)), var_0.c);
    var var_1 = Struct_2((var_0.a & (~global1.b.a ^ global1.d.a)) ^ var_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 23u)], -2898.0) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1032.0, global2[_wgslsmith_index_u32(0u, 23u)]))) + vec2<f32>(global1.b.c.a.x, arg_0.c)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.e.c.a.x)) * 451.0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.d.x, -196.0)))), var_0.b.e), arg_0, min(arg_1.d, firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(arg_1.b.e.x, global1.e.b.e.x), firstTrailingBit(var_0.d.x), _wgslsmith_clamp_i32(7247, -2147483648, -26869), ~global1.d.c.e.x))));
    for (var var_2 = ~(-1); ; var_2 += 1) {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
        continue;
    }
    return Struct_2(vec3<u32>(41257u, ~firstTrailingBit(~20771u), 81180u >> (arg_0.b % 32u)), global1.b.b, func_9(-685.0, global1.a.c.d.x, vec2<bool>(false, !all(vec4<bool>(false, true, true, true))), var_0.c).a.c, -global1.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(func_1(global1.a.c, global1.b, abs(_wgslsmith_add_u32(~26609u, _wgslsmith_div_u32(70560u, u_input.a)))), Struct_2(global1.b.a, global1.c, global1.d.b, vec4<i32>(_wgslsmith_sub_i32(u_input.d, -14704) & -u_input.c, _wgslsmith_sub_i32(func_1(Struct_1(global1.c.d, 2572u, global2[_wgslsmith_index_u32(1u, 23u)], global1.d.c.a, vec2<i32>(u_input.b, 2147483647)), global1.e, 1u).b.e.x, ~(-23213)), global1.a.c.e.x, 0)), func_1(func_3(global1.a).c, global1.d, firstLeadingBit(~4294967295u)).c, Struct_2(global1.d.a, func_3(Struct_2(global1.a.a, func_1(global1.e.c, global1.d, 6490u).c, Struct_1(global1.a.c.a, 35043u, 665.0, global1.b.b.d, global1.e.d.yw), func_9(global1.a.c.d.x, global2[_wgslsmith_index_u32(4294967295u, 23u)], vec2<bool>(false, true), Struct_1(global1.b.b.d, 4294967295u, 1444.0, vec2<f32>(global1.a.b.a.x, global1.a.b.d.x), global1.b.b.e)).d.d)).d.b, global1.c, vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-21385, 1, u_input.d, 0), global1.b.d), -_wgslsmith_mod_i32(u_input.c, u_input.d), abs(_wgslsmith_add_i32(u_input.d, -6488)), 29445)), func_1(func_3(func_9(global2[_wgslsmith_index_u32(select(1u, global1.d.c.b, true), 23u)], global2[_wgslsmith_index_u32(0u, 23u)], !vec2<bool>(false, true), global1.a.c).b).d.b, global1.b, _wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.e.a.x, 81441u), _wgslsmith_mod_u32(~global1.c.b, 72509u))));
    global1 = func_9(_wgslsmith_f_op_f32(global1.d.c.c + 151.0), -370.0, !vec2<bool>(false, true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.e.c.a)))), global1.d.a.x, _wgslsmith_f_op_f32(ceil(1027.0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.c.d.x, 1337.0)), vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(global1.b.b.b, 23u)])))), vec2<i32>(u_input.c, global1.e.d.x)));
    loop {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        global2 = array<f32, 23>();
        break;
    }
    for (; !false; ) {
        if (LOOP_COUNTERS[31u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
        if (!any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, false), !true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), u_input.a > global1.a.b.b)))) {
            let var_0 = vec4<bool>(any(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(1u < u_input.a, !true), true)), false, !(!(!true)) | false, false);
            let var_1 = ~(-global1.e.b.e.x);
        }
    }
    let var_0 = 18545;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1u, func_3(global1.a).e.b.e.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2205.0)) - _wgslsmith_f_op_f32(global1.c.c - global1.c.a.x)), _wgslsmith_f_op_f32(global1.a.b.c + _wgslsmith_f_op_f32(step(-102.0, 864.0))), func_7(Struct_1(vec2<f32>(global1.b.c.c, -1127.0), 0u, global2[_wgslsmith_index_u32(u_input.a, 23u)], global1.c.d, vec2<i32>(global1.c.e.x, var_0)), vec3<f32>(-832.0, -1741.0, global1.d.b.a.x), -global1.a.d.yww, min(8752u, 4294967295u)).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1384.0))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(609.0, 1096.0, 971.0, global2[_wgslsmith_index_u32(19603u, 23u)]), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(175.0, global1.e.b.a.x, global1.d.b.c, global1.d.c.d.x))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(275.0, -433.0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1.0) * -307.0))), global2[_wgslsmith_index_u32((u_input.a | 46415u) >> (func_3(Struct_2(global1.d.a, global1.e.b, global1.a.c, global1.d.d)).a.c.b % 32u), 23u)])), !any(!vec2<bool>(false, false)))));
}

