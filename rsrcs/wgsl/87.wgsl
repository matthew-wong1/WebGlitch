// {"0:0":[146,253,46,77,129,159,91,19,252,246,202,81,255,16,21,209,169,181,226,115,136,99,171,25,108,149,72,44,4,104,80,37]}
// Seed: 13505406515387448991

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = true;

var<private> global2: array<i32, 21> = array<i32, 21>(-100671, 0, -9658, 1, 0, -2147483648, -22075, -29629, 0, -2147483648, -2147483648, -1, 2147483647, -1, -4021, 2147483647, -17921, 2147483647, -1, 6838, 2147483647);

var<private> global3: Struct_3;

var<private> global4: vec3<u32>;

var<private> LOOP_COUNTERS: array<u32, 41>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> u32 {
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        continue;
    }
    for (; all(global3.c.wz); ) {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        global1 = false;
        global4 = ~firstLeadingBit(vec3<u32>(41581u, global4.x, ~16238u));
        continue;
    }
    for (var var_0 = -1; true; var_0 += 1) {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        global3 = Struct_3(global3.a, arg_1, !vec4<bool>((arg_0 < arg_0) | (1u != global3.d.x), false, true, !(true & false)), ~global3.d, global3.e);
    }
    let var_0 = min(2147483647, global3.a.x);
    let var_1 = global3.c.x;
    return global3.d.x << (global4.x % 32u);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    switch (2147483647) {
        case -1: {
            for (; ; ) {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var var_0 = true;
                var var_1 = arg_0.a;
                var_0 = !(!select(!false, any(global3.c.yy), !false));
            }
        }
        case -5820: {
            if (global3.c.x & any(vec2<bool>(global3.c.x, false))) {
                global0 = abs(select(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(36524, arg_0.b.a, u_input.c, -34682), vec4<i32>(arg_0.a.a, 22987, global2[_wgslsmith_index_u32(global4.x, 21u)], arg_0.a.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1, arg_0.b.a, -5101, global3.b.c), global3.a))), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.c, arg_0.c, global3.a.x, global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<i32>(~95711, -15334, i32(-1) * -2147483648, ~39935)), global3.c.x));
                global2 = array<i32, 21>();
                let var_0 = ~vec3<u32>(select(u_input.b, ~global4.x, global3.c.x == (false | global3.c.x)), ~(~(~u_input.d.x)), ~_wgslsmith_mod_u32(0u, ~global3.d.x));
                var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 654.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))));
            }
            global4 = max(min(u_input.d.wwx, ~(~u_input.d.zyw)), max(u_input.d.ywy, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, global3.d.x, 4294967295u), u_input.d.zzy, vec3<u32>(36883u, 4294967295u, 1u)), ~vec3<u32>(u_input.d.x, 0u, global4.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global4.x, global4.x, 1u) & vec3<u32>(global3.d.x, u_input.b, 39991u), vec3<u32>(global4.x, 1u, 9159u) ^ vec3<u32>(16235u, global4.x, 4294967295u)))));
            switch (arg_0.b.a) {
                case 0: {
                    global4 = u_input.d.xxz >> (global3.d % vec3<u32>(32u));
                    var var_0 = -169.0;
                    var var_1 = Struct_1(firstLeadingBit(global3.a.x));
                    global0 = abs(firstLeadingBit(i32(-1) * -32350));
                    global4 = vec3<u32>(4294967295u, 30198u, global4.x) & (u_input.d.wzx ^ firstTrailingBit(~u_input.d.yxw));
                }
                case 1: {
                    global4 = vec3<u32>(select(u_input.d.x, _wgslsmith_dot_vec4_u32(global3.e, vec4<u32>(u_input.b >> (20698u % 32u), u_input.d.x, global3.e.x, 60557u)), false), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 69167u, 87758u), global3.d), vec3<u32>(~1u, 21940u & ~global3.d.x, global3.e.x)), max(~(~(~29633u)), (u_input.d.x ^ ~global3.e.x) << (_wgslsmith_sub_u32(~31424u, func_6(arg_1.x, Struct_2(global3.b.a, Struct_1(u_input.c), -39955))) % 32u)));
                    let var_0 = global3.c.x;
                }
                case -1: {
                    global3 = Struct_3(vec4<i32>(-1) * -global3.a, global3.b, !vec4<bool>(u_input.d.x == _wgslsmith_div_u32(63870u, 1u), 1u < _wgslsmith_dot_vec4_u32(vec4<u32>(11703u, 13561u, global4.x, 4294967295u), u_input.d), any(select(global3.c.xzy, global3.c.zww, global3.c.x)), any(vec4<bool>(false, global3.c.x, false, true))), countOneBits(vec3<u32>(_wgslsmith_clamp_u32(6310u, ~u_input.d.x, ~global3.d.x), func_6(-474.0, Struct_2(Struct_1(arg_0.a.a), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 21u)]), -9163)), global4.x << (49879u % 32u))), ~((global3.e | (vec4<u32>(global4.x, 31533u, 52555u, u_input.b) ^ vec4<u32>(global3.d.x, global3.d.x, 57544u, global4.x))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, 0u), ~u_input.d) % vec4<u32>(32u))));
                    return Struct_1(global3.a.x);
                }
                default: {
                    var var_0 = -12208;
                    var_0 = _wgslsmith_add_i32(u_input.c, u_input.a);
                    let var_1 = reverseBits(~_wgslsmith_add_u32(select(~4294967295u, _wgslsmith_div_u32(0u, 108198u), -1307.0 <= 1852.0), global3.e.x));
                    var_0 = _wgslsmith_mod_i32(~global3.b.b.a, countOneBits(~abs(global3.b.c))) & countOneBits(~(-1));
                }
            }
            let var_0 = vec4<i32>(global3.b.b.a, arg_0.c, reverseBits(2147483647), ~(i32(-1) * -u_input.a));
        }
        case 47124: {
            global0 = select(countOneBits(~abs(0 & u_input.a)), global3.a.x, true);
            global1 = all(select(global3.c.xx, !select(vec2<bool>(global3.c.x, global3.c.x), global3.c.wx, global3.c.x), select(vec2<bool>(true, global3.c.x), global3.c.zz, any(vec4<bool>(global3.c.x, global3.c.x, true, global3.c.x))))) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(arg_1.x + 104.0)))) < arg_1.x);
        }
        case 2147483647: {
            let var_0 = arg_1;
            if (!any(global3.c)) {
                global0 = min(-_wgslsmith_mod_i32(9533 << (~70630u % 32u), -26088), reverseBits(~_wgslsmith_sub_i32(arg_0.c, -2147483648)) << (16108u % 32u));
            }
        }
        default: {
        }
    }
    var var_0 = firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.d.yzx, select(~u_input.d.xxz, vec3<u32>(_wgslsmith_add_u32(global3.d.x, global4.x), 5904u, select(global3.d.x, global3.d.x, global3.c.x)), vec3<bool>(!global3.c.x, global3.c.x, !global3.c.x))));
    if (false) {
        for (var var_1: i32; all(global3.c.zz); var_1 += 1) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            global1 = true || false;
        }
    }
    var var_1 = ~4294967295u | 0u;
    switch (2147483647) {
        case -2147483648: {
            switch (abs(-2147483648)) {
                case 0: {
                    global1 = false;
                    let var_2 = abs(-(vec2<i32>(-1) * -global3.a.yz)) | -(~(global3.a.ww | -vec2<i32>(u_input.a, -43430)));
                    let var_3 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 21u)], var_2.x, -1), vec3<i32>(u_input.c, global2[_wgslsmith_index_u32(4294967295u, 21u)], arg_0.c)), -global3.a.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(global3.a.wyw), global3.a.yxz), global2[_wgslsmith_index_u32(~(~var_0.x), 21u)]), global3.a));
                }
                default: {
                    var_0 = ~vec3<u32>(abs(global4.x), ~_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.b), vec3<u32>(var_0.x, u_input.b, global3.e.x))), abs(1u));
                    var var_2 = Struct_2(global3.b.b, arg_0.b, 1);
                    var_2 = Struct_2(global3.b.a, Struct_1(_wgslsmith_mult_i32(-16862, -var_2.c)), 2147483647);
                    var var_3 = ~u_input.d.xxy;
                }
            }
            var var_2 = global3.e.x;
        }
        case 0: {
            switch (_wgslsmith_add_i32(abs(_wgslsmith_mod_i32(~global3.b.a.a, -min(arg_0.b.a, u_input.c))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 21u)], 16042), global3.a.wz) ^ _wgslsmith_div_i32(reverseBits(u_input.c), i32(-1) * -27996))) {
                case 1: {
                    var var_2 = Struct_2(Struct_1(arg_0.c), arg_0.a, ~(~u_input.a));
                    let var_3 = Struct_3(~_wgslsmith_div_vec4_i32(vec4<i32>(44780, -28924, u_input.a, global3.a.x), reverseBits(global3.a)) << (select(u_input.d, global3.e, select(global3.c, global3.c, any(global3.c.zy))) % vec4<u32>(32u)), global3.b, !select(!global3.c, !vec4<bool>(global3.c.x, global3.c.x, false, global3.c.x), global3.c), _wgslsmith_mult_vec3_u32(global3.d, global3.e.xxz), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 58686u, 36971u), countOneBits(var_0.x) ^ _wgslsmith_dot_vec3_u32(select(u_input.d.wyx, global3.e.xyz, global3.c.x), ~vec3<u32>(var_0.x, global4.x, 13501u)), ~(~global4.x), max(global4.x >> (~4771u % 32u), ~1u | ~var_0.x)));
                    var var_4 = Struct_3(vec4<i32>(arg_0.a.a, _wgslsmith_dot_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(2147483647, -58823, global2[_wgslsmith_index_u32(var_3.d.x, 21u)], 2147483647))), countOneBits(_wgslsmith_add_vec4_i32(global3.a, vec4<i32>(var_3.a.x, arg_0.b.a, 2147483647, 2455)))), ~var_2.b.a, -2147483648), global3.b, var_3.c, abs(~global3.d), abs(~abs(vec4<u32>(var_0.x, 33737u, var_0.x, var_3.d.x))));
                    var var_5 = var_2.b.a;
                }
                case -38807: {
                    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(~vec4<i32>(1, arg_0.a.a, global3.b.c, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(24269, -2147483648, 43765, global3.a.x), vec4<i32>(global3.b.b.a, arg_0.c, global3.b.c, arg_0.a.a), vec4<i32>(1, -26838, -2147483648, arg_0.a.a))), global3.a), vec4<i32>(_wgslsmith_sub_i32(19291 << (4849u % 32u), countOneBits(0) << (28627u % 32u)), ~max(-1, 20817) << (1u % 32u), abs(-u_input.c ^ (-1 >> (1u % 32u))), _wgslsmith_mult_i32(-_wgslsmith_add_i32(-1, -2147483648), reverseBits(arg_0.a.a | 0))));
                    var var_3 = Struct_3(_wgslsmith_sub_vec4_i32(max(global3.a, global3.a), global3.a), global3.b, !vec4<bool>(true || !true, global3.c.x, _wgslsmith_div_f32(-530.0, 251.0) != _wgslsmith_f_op_f32(-146.0 - -946.0), false), vec3<u32>(firstLeadingBit(global4.x), 16588u, firstLeadingBit(33158u)) >> (vec3<u32>(select(4294967295u, _wgslsmith_mult_u32(global4.x, var_0.x), !true), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, global3.d.x, global4.x), u_input.d), global3.e), reverseBits(var_0.x) >> (~72681u % 32u)) % vec3<u32>(32u)), min(~vec4<u32>(~29847u, _wgslsmith_div_u32(4294967295u, 18918u), _wgslsmith_mod_u32(var_0.x, 48502u), _wgslsmith_div_u32(u_input.d.x, 51959u)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(global3.e, countOneBits(u_input.d)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global4.x, global4.x, global4.x, global4.x)), select(vec4<u32>(u_input.d.x, 4294967295u, 5392u, u_input.d.x), global3.e, global3.c)))));
                    var_3 = Struct_3(vec4<i32>(global3.b.a.a, arg_0.b.a, var_3.b.b.a, -(~select(u_input.a, var_2, true))), Struct_2(arg_0.b, Struct_1(~23668), _wgslsmith_div_i32(countOneBits(var_3.a.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 21u)])), !var_3.c, vec3<u32>(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_0), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.x, 64804u), 38087u), ~0u), min(~(~global3.e) << (~global3.e % vec4<u32>(32u)), firstLeadingBit(u_input.d >> (global3.e % vec4<u32>(32u)))));
                    global2 = array<i32, 21>();
                }
                case 45836: {
                    var var_2 = arg_0.b.a;
                    var var_3 = ~0u;
                    var var_4 = arg_1.x;
                    var var_5 = Struct_1(27456);
                }
                default: {
                    let var_2 = !select(!(!vec2<bool>(true, false)), global3.c.xx, global3.c.yz);
                    global3 = Struct_3(~(firstLeadingBit(_wgslsmith_mult_vec4_i32(global3.a, vec4<i32>(8088, global3.b.c, global2[_wgslsmith_index_u32(7285u, 21u)], 2147483647))) & ~(~global3.a)), Struct_2(global3.b.a, Struct_1(~_wgslsmith_sub_i32(63900, global3.b.a.a)), 57839), global3.c, global3.e.zxw, vec4<u32>(0u, ~global4.x, u_input.d.x, select(4294967295u, abs(global4.x | global3.e.x), false | (52649 >= global2[_wgslsmith_index_u32(1u, 21u)]))));
                    var var_3 = true;
                    var var_4 = Struct_1(-1);
                    global4 = global3.d;
                }
            }
            var_1 = ~1u;
            var_1 = min(~_wgslsmith_dot_vec3_u32(abs(~u_input.d.xyy), vec3<u32>(u_input.b, _wgslsmith_mod_u32(61383u, global4.x), _wgslsmith_clamp_u32(43346u, 1u, var_0.x))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.x, global3.e.x) << (global3.d.xy % vec2<u32>(32u)), vec2<u32>(var_0.x, 45538u))));
            var var_2 = ~vec3<i32>(-2147483648, -global3.b.c, ~(-21951));
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                continue;
            }
        }
        default: {
            var var_2 = Struct_3(vec4<i32>(arg_0.c, -63175, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(max(114708u >> (1u % 32u), func_6(arg_1.x, global3.b)), _wgslsmith_sub_u32(4294967295u >> (var_0.x % 32u), abs(65691u))), 21u)], arg_0.b.a), arg_0, vec4<bool>(select(false, global3.c.x, global3.c.x | false), any(!(!vec2<bool>(false, global3.c.x))), global3.c.x, false), select(u_input.d.yzw, ~u_input.d.yxz, true), max(countOneBits(~vec4<u32>(29048u, var_0.x, 1u, 6912u)), abs(select(vec4<u32>(23807u, 15347u, global3.d.x, 1u), vec4<u32>(77209u, u_input.d.x, 138776u, 0u), false) << (vec4<u32>(1u, u_input.b, 4294967295u, 12144u) % vec4<u32>(32u)))));
            var var_3 = var_2.c.ww;
            for (; ; ) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                global0 = -(~abs(arg_0.b.a)) ^ _wgslsmith_mod_i32(2147483647, select(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(var_2.e.x, 21u)], arg_0.b.a, 5473) ^ global3.b.a.a, _wgslsmith_sub_i32(abs(var_2.b.b.a), ~u_input.a), global3.c.x));
            }
        }
    }
    return Struct_1(67665);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000.0))))), _wgslsmith_f_op_f32(-arg_2.x)));
    if (arg_3) {
        for (; global3.c.x; ) {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            break;
        }
        loop {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1.0) * -752.0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))))) + _wgslsmith_f_op_f32(999.0 * arg_2.x));
            global4 = (global3.e.wyz & vec3<u32>(~countOneBits(71027u), 26914u >> (~global3.e.x % 32u), 10768u)) | (select(~(~vec3<u32>(43320u, 0u, global4.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 85256u)), _wgslsmith_mult_u32(global3.d.x, 1u), ~11649u), select(global3.c.zzz, vec3<bool>(true, false, true), global4.x > 4294967295u)) ^ global3.e.xxy);
            global1 = !all(select(select(!global3.c, vec4<bool>(global3.c.x, global3.c.x, arg_3, false), global3.c), global3.c, global3.c));
        }
        switch (global3.a.x) {
            case -6913: {
            }
            case 5033: {
                var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-682.0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
            }
            case 0: {
            }
            default: {
                var var_1 = -global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(global3.e), select(global3.e, vec4<u32>(global3.d.x, 1u, 40613u, global3.d.x), vec4<bool>(false, false, false, global3.c.x))), min(global3.e, vec4<u32>(u_input.d.x, u_input.d.x, global3.e.x, global4.x))), 21u)];
                global2 = array<i32, 21>();
                let var_2 = arg_1;
            }
        }
    }
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
        loop {
            if (LOOP_COUNTERS[10u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
            continue;
        }
        if (false) {
            var var_1 = Struct_1(-u_input.c);
        }
        if (all(global3.c.ywy)) {
            global4 = reverseBits(vec3<u32>((~u_input.d.x << (global4.x % 32u)) | 1u, max(~1u, min(1u, 44421u)) >> (_wgslsmith_mult_u32(1u, abs(31032u)) % 32u), ~(~(~u_input.d.x))));
            let var_1 = Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1, u_input.a | 2147483647, 21069, -2147483648), vec4<i32>(~global3.a.x, -25106, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 21u)], global2[_wgslsmith_index_u32(global4.x, 21u)])), -global3.a), global3.b, global3.c, u_input.d.wxw, _wgslsmith_div_vec4_u32(global3.e, max(~u_input.d, _wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(global3.e.x, global3.e.x, 19481u, global4.x))) ^ ~(~global3.e)));
            let var_2 = var_1;
            var var_3 = vec2<i32>(global3.b.b.a, (global2[_wgslsmith_index_u32(reverseBits(~2784u), 21u)] & _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_1.e.x, 21u)], arg_0.a), vec2<i32>(arg_1.c, var_2.b.c)), vec2<i32>(1, global2[_wgslsmith_index_u32(0u, 21u)]))) << (~_wgslsmith_sub_u32(4294967295u, 14820u) % 32u));
        }
    }
    global0 = -776;
    for (var var_1 = -21196; var_1 >= -9926; global3 = Struct_3(~global3.a, Struct_2(global3.b.a, arg_1.a, _wgslsmith_dot_vec4_i32(-global3.a ^ reverseBits(vec4<i32>(-1, -1, 48486, 1)), global3.a)), select(!global3.c, !vec4<bool>(global3.c.x && global3.c.x, global3.c.x || global3.c.x, !false, global3.c.x), !any(!global3.c.zx)), min(abs(reverseBits(min(u_input.d.zww, global3.d))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(global4.x, 4294967295u, 7239u)), _wgslsmith_sub_vec3_u32(vec3<u32>(52663u, 1u, 1u), vec3<u32>(global4.x, global4.x, global3.d.x)))), ~(~firstLeadingBit(~vec4<u32>(0u, global4.x, global3.d.x, global4.x))))) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        }
    }
    return ~(-(~u_input.c));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec3<u32> {
    for (var var_0 = 0; ; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        switch (abs(~global3.a.x)) {
            default: {
                let var_1 = Struct_1(reverseBits(62358));
            }
        }
        var_0 = func_7(Struct_1(global3.a.x), Struct_2(Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483648, 2147483647), 34095)), func_5(global3.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-239.0, -559.0))), -(_wgslsmith_mod_i32(global3.a.x, 1) >> (~4294967295u % 32u))), vec4<f32>(908.0, -1041.0, _wgslsmith_f_op_f32(ceil(624.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222.0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1316.0) + -337.0), 721.0) <= -2672.0);
        var var_1 = Struct_3(~countOneBits(vec4<i32>(12165, _wgslsmith_mult_i32(arg_0.x, arg_1.x), func_5(Struct_2(global3.b.a, global3.b.b, 21747), vec2<f32>(-1116.0, -1833.0)).a, u_input.c)), Struct_2(global3.b.a, global3.b.a, -2147483648), global3.c, u_input.d.zxz, vec4<u32>(0u, global3.e.x ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 65677u), vec3<u32>(global4.x, 1u, 67206u)), _wgslsmith_dot_vec3_u32(select(abs(global3.d), vec3<u32>(0u, global3.e.x, global4.x), vec3<bool>(true, true, global3.c.x)), (u_input.d.yzx ^ vec3<u32>(0u, 0u, 4294967295u)) & ~global3.e.xyx), global3.e.x));
    }
    global3 = Struct_3(firstLeadingBit(vec4<i32>(~0, _wgslsmith_dot_vec4_i32(global3.a, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1)), func_5(global3.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(329.0, 558.0))).a, ~(global3.b.a.a ^ -3292))), Struct_2(Struct_1(48117), Struct_1(min(-1, _wgslsmith_div_i32(arg_0.x, -2147483648))), _wgslsmith_sub_i32(firstTrailingBit(-4363 << (4294967295u % 32u)), -2147483648 | func_5(Struct_2(global3.b.a, Struct_1(global3.b.b.a), u_input.a), vec2<f32>(-2104.0, -1964.0)).a)), vec4<bool>(global3.c.x, global3.c.x, any(vec2<bool>(any(vec2<bool>(global3.c.x, global3.c.x)), false)), false && all(select(vec4<bool>(false, true, global3.c.x, global3.c.x), global3.c, vec4<bool>(global3.c.x, true, global3.c.x, false)))), u_input.d.xzx, _wgslsmith_clamp_vec4_u32(u_input.d, ~firstTrailingBit(u_input.d), ~u_input.d) ^ vec4<u32>(firstLeadingBit(4294967295u), _wgslsmith_div_u32(~4294967295u, abs(1u)), 8456u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global4.zy, global3.d.zz), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 8356u), vec2<u32>(global3.e.x, global3.d.x)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-161.0), _wgslsmith_f_op_f32(step(811.0, 1000.0))))), _wgslsmith_div_f32(-682.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-225.0) - _wgslsmith_f_op_f32(-2234.0 + -461.0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-559.0 * 1000.0), _wgslsmith_f_op_f32(select(-273.0, 282.0, false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1.0) * -275.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000.0, 296.0, -1000.0, 1293.0), vec4<f32>(400.0, 2064.0, -101.0, -949.0)))))));
    var var_1 = Struct_3(-(~vec4<i32>(arg_0.x & 10039, 0, ~(-1), global3.b.b.a)), global3.b, !global3.c, global3.d, vec4<u32>(global3.d.x, ~(~global3.e.x), u_input.d.x, 12772u >> ((_wgslsmith_clamp_u32(u_input.d.x, global4.x, u_input.b) << (_wgslsmith_div_u32(1u, global3.e.x) % 32u)) % 32u)));
    for (var var_2 = _wgslsmith_mult_i32(1, -12643); all(vec2<bool>(global3.c.x, global3.c.x)); var_2 -= 1) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        if (all(var_1.c.xxz)) {
            let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(170.0, var_0.x, all(vec3<bool>(var_1.c.x, !var_1.c.x, !false))))));
        }
        break;
    }
    return ((max(vec3<u32>(u_input.b, u_input.b, 1u) >> (vec3<u32>(u_input.b, global4.x, 4294967295u) % vec3<u32>(32u)), var_1.e.wyx >> (vec3<u32>(0u, var_1.e.x, 97460u) % vec3<u32>(32u))) | u_input.d.yyy) >> (global3.e.zxy % vec3<u32>(32u))) & vec3<u32>(4294967295u, ~(global3.e.x ^ 1u) | 23453u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(40941u, ~0u), u_input.b));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    if (!any(!global3.c.yy)) {
        if (global3.c.x) {
            global0 = _wgslsmith_sub_i32(firstLeadingBit(firstLeadingBit(-28998 ^ -13686)), global2[_wgslsmith_index_u32(0u, 21u)]);
            let var_0 = global3.b.b;
            var var_1 = min(global3.a.yzx, -((vec3<i32>(arg_2.a, -2147483648, global3.b.c) ^ vec3<i32>(global3.b.b.a, arg_1.b.a, arg_0)) >> (func_4(vec2<i32>(1, global3.b.a.a), global3.a.xx) % vec3<u32>(32u))));
            var var_2 = global3.a.xwy;
            var var_3 = _wgslsmith_f_op_f32(f32(-1.0) * -489.0);
        }
        global3 = Struct_3(-global3.a, global3.b, vec4<bool>(any(global3.c.xw), false, !global3.c.x, (~(-25941) & 0) > arg_0), _wgslsmith_div_vec3_u32(vec3<u32>(min(abs(global4.x), 11125u), abs(_wgslsmith_add_u32(0u, 4294967295u)), abs(u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, 136145u), 4294967295u, ~0u), min(~global3.e.zxx, ~vec3<u32>(0u, 7287u, global4.x)))), global3.e);
    }
    for (var var_0: i32; ; var_0 -= 1) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        let var_1 = 773.0;
        global1 = !global3.c.x || false;
        break;
    }
    let var_0 = Struct_2(Struct_1(-2147483648), global3.b.a, abs(~9163));
    var var_1 = -433.0;
    let var_2 = Struct_2(Struct_1(-1 << (4294967295u % 32u)), arg_2, _wgslsmith_div_i32(_wgslsmith_sub_i32(i32(-1) * -5646, -42385), _wgslsmith_sub_i32(-918, arg_1.c)));
    return -arg_0;
}

fn func_8(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_add_i32(~(firstLeadingBit(-14435) | -2147483648), _wgslsmith_mod_i32(abs(_wgslsmith_mult_i32(arg_1.x, arg_1.x)), _wgslsmith_div_i32(6516, _wgslsmith_clamp_i32(-1, -29031, u_input.c)))));
    var var_1 = Struct_3(select(vec4<i32>(_wgslsmith_sub_i32(u_input.c, i32(-1) * -26505), -firstLeadingBit(-28284), -(~var_0.a), -var_0.a), arg_2.a, vec4<bool>(any(select(global3.c.wwx, vec3<bool>(arg_2.c.x, global3.c.x, false), arg_2.c.ywz)), global3.c.x, _wgslsmith_f_op_f32(select(-1458.0, 377.0, true)) >= _wgslsmith_f_op_f32(-244.0 + 3191.0), arg_0.x)), Struct_2(func_5(arg_2.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-311.0, 672.0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-319.0, -861.0)), arg_0.x))), Struct_1(2147483647), func_3(arg_2.b.a.a, arg_2.b, arg_2.b.b)), vec4<bool>(!true, select(any(!vec2<bool>(true, arg_2.c.x)), global3.c.x | !arg_2.c.x, all(vec2<bool>(arg_0.x, arg_2.c.x))), true, !any(arg_0)), vec3<u32>(select(global4.x, _wgslsmith_sub_u32(firstTrailingBit(u_input.b), select(4294967295u, u_input.d.x, false)), (arg_2.d.x == arg_2.d.x) & false), ~(1u << (_wgslsmith_mult_u32(global3.d.x, arg_2.e.x) % 32u)), 4294967295u), ~global3.e);
    let var_2 = Struct_3(var_1.a, var_1.b, select(!(!var_1.c), vec4<bool>(false, all(select(vec4<bool>(false, false, true, arg_0.x), vec4<bool>(true, arg_2.c.x, false, false), true)), arg_0.x, select(true, !false, var_1.c.x && var_1.c.x)), select(!vec4<bool>(var_1.c.x, false, arg_2.c.x, false), vec4<bool>(true, any(arg_2.c.ww), select(var_1.c.x, false, false), !true), vec4<bool>(select(false, var_1.c.x, arg_0.x), all(vec4<bool>(arg_2.c.x, global3.c.x, var_1.c.x, global3.c.x)), all(vec2<bool>(global3.c.x, arg_2.c.x)), -727.0 < -1095.0))), vec3<u32>(21056u ^ countOneBits(var_1.e.x), var_1.e.x, global4.x), global3.e);
    loop {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        var var_3 = reverseBits(~arg_2.e);
        for (; ; ) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            let var_4 = select(!select(vec2<bool>(!true, any(vec2<bool>(var_2.c.x, false))), select(!vec2<bool>(arg_0.x, true), arg_2.c.yw, select(vec2<bool>(true, false), vec2<bool>(false, false), true)), false), select(!var_1.c.xx, vec2<bool>((arg_2.c.x && false) | arg_2.c.x, !arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-236.0 * -544.0)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365.0))), !select(!arg_2.c.xw, !(!vec2<bool>(false, true)), any(vec2<bool>(true, true))));
            break;
        }
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            global2 = array<i32, 21>();
            var var_4 = Struct_1(arg_2.b.b.a);
            var var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000.0 + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-531.0), 660.0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1317.0 * _wgslsmith_f_op_f32(-145.0)))));
            var var_6 = global4.x;
        }
    }
    var_0 = func_5(Struct_2(Struct_1(reverseBits(~17691)), global3.b.a, ~(-(~arg_2.a.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0) * _wgslsmith_f_op_f32(-635.0 - 484.0)), -146.0))));
    return Struct_3(firstTrailingBit(-vec4<i32>(1, -1, func_7(Struct_1(1), global3.b, vec4<f32>(607.0, -591.0, -215.0, -114.0), true), abs(-7161))), Struct_2(global3.b.b, func_5(Struct_2(Struct_1(1), Struct_1(-2147483648), -var_1.b.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-496.0, -171.0)))), (i32(-1) * -28341) << (~var_2.e.x % 32u)), var_1.c, arg_2.d, var_2.e);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: bool) -> vec2<f32> {
    switch (-2147483648) {
        case -31631: {
        }
        case -1: {
            var var_0 = true;
            var var_1 = _wgslsmith_div_u32(u_input.b, u_input.b);
            loop {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                continue;
            }
            switch (_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(select(countOneBits(global3.a), global3.a, global3.c), (global3.a & vec4<i32>(-82547, 7855, 0, global2[_wgslsmith_index_u32(0u, 21u)])) & global3.a), -1)) {
                case 1: {
                    let var_2 = arg_0.zy;
                    var var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.zy, ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 82250u) << (global4.yz % vec2<u32>(32u)), ~vec2<u32>(82767u, global3.e.x))), u_input.d.yy & ~global3.d.xy);
                    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(var_2.x, _wgslsmith_f_op_f32(abs(arg_0.x)))));
                }
                case 10414: {
                    var var_2 = global4.xx >> (_wgslsmith_mod_vec2_u32(abs(vec2<u32>(global4.x, ~1u)), ~(vec2<u32>(u_input.d.x, 73297u) >> (global3.e.wz % vec2<u32>(32u)))) % vec2<u32>(32u));
                    var var_3 = func_8(vec4<bool>(!global3.c.x, -2147483648 == countOneBits(2147483647 ^ global3.b.c), false & all(!global3.c.yy), global3.c.x), firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(-44061, u_input.a), func_3(arg_1.x ^ 3270, Struct_2(Struct_1(0), global3.b.b, -20369), global3.b.a), 38004, abs(firstLeadingBit(global2[_wgslsmith_index_u32(40338u, 21u)])))), Struct_3(global3.a & vec4<i32>(2147483647, 77809, max(-2147483648, u_input.a), arg_1.x), Struct_2(func_5(Struct_2(Struct_1(1), global3.b.b, arg_1.x), _wgslsmith_f_op_vec2_f32(-arg_0.yy)), global3.b.a, ~_wgslsmith_mod_i32(-5047, 1)), vec4<bool>(false, _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-1444.0), !global3.c.x, any(!global3.c.ww)), u_input.d.yww, global3.e));
                }
                case -54759: {
                }
                case -1: {
                    global2 = array<i32, 21>();
                    let var_2 = global4.x;
                    global0 = ~arg_1.x;
                    let var_3 = -(~global3.a);
                }
                default: {
                    var var_2 = Struct_3(select(~abs(global3.a), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, u_input.a, arg_1.x) | vec3<i32>(-2147483648, 1, 1), ~vec3<i32>(66556, 12198, global3.b.c)), ~global2[_wgslsmith_index_u32(38408u, 21u)] << (_wgslsmith_mod_u32(global3.d.x, global4.x) % 32u), _wgslsmith_div_i32(global3.b.a.a, global3.a.x), func_7(func_8(vec4<bool>(false, false, true, arg_2), global3.a, Struct_3(vec4<i32>(global3.a.x, global2[_wgslsmith_index_u32(global3.e.x, 21u)], u_input.c, u_input.a), global3.b, global3.c, u_input.d.wyz, vec4<u32>(1u, 0u, global3.e.x, global4.x))).b.a, global3.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1484.0, arg_0.x, arg_0.x, arg_0.x))), true)), !vec4<bool>(!true, false, global3.c.x, arg_2 && true)), func_8(select(select(global3.c, vec4<bool>(arg_2, false, true, true), func_8(vec4<bool>(true, global3.c.x, true, true), global3.a, Struct_3(global3.a, Struct_2(global3.b.b, Struct_1(arg_1.x), 2147483647), global3.c, global3.d, vec4<u32>(26207u, 13957u, global4.x, 84892u))).c), global3.c, global3.c), ~(abs(vec4<i32>(39549, -1, -7157, 0)) | -global3.a), Struct_3(global3.a, global3.b, vec4<bool>(!true, false & false, true, global3.c.x), max(func_4(vec2<i32>(global2[_wgslsmith_index_u32(77510u, 21u)], 0), vec2<i32>(22865, u_input.c)), vec3<u32>(4294967295u, 86817u, global4.x)), _wgslsmith_div_vec4_u32(u_input.d, u_input.d))).b, !(!select(global3.c, global3.c, arg_2)), ~func_8(global3.c, ~global3.a, Struct_3(global3.a, global3.b, global3.c, u_input.d.zwz, global3.e)).d & ~_wgslsmith_mult_vec3_u32(~vec3<u32>(71448u, global3.e.x, 1u), vec3<u32>(global4.x, global3.e.x, 23908u)), ~abs(abs(global3.e >> (global3.e % vec4<u32>(32u)))));
                    global4 = u_input.d.yxx;
                    var_2 = Struct_3(_wgslsmith_div_vec4_i32(global3.a, vec4<i32>(9160, 2147483647, global2[_wgslsmith_index_u32(var_2.e.x, 21u)], ~1 & (1359 >> (4032u % 32u)))), global3.b, !select(global3.c, global3.c, !false), ~(~select(global3.d | vec3<u32>(47445u, 15497u, 54317u), firstLeadingBit(global3.e.wzw), func_8(vec4<bool>(arg_2, false, arg_2, false), global3.a, Struct_3(vec4<i32>(-1, global2[_wgslsmith_index_u32(4294967295u, 21u)], -59161, 0), Struct_2(global3.b.b, global3.b.a, var_2.b.a.a), vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 9796u, 1969u), vec4<u32>(16391u, u_input.d.x, var_2.e.x, 0u))).c.zxy)), vec4<u32>(13496u & ~47159u, min(5390u, global4.x | global3.e.x), 4294967295u, _wgslsmith_clamp_u32(859u, _wgslsmith_dot_vec3_u32(var_2.d, var_2.d), ~4294967295u)) >> (vec4<u32>(abs(var_2.d.x << (21771u % 32u)), u_input.b, u_input.d.x, func_4(-var_2.a.yy, global3.a.yz).x) % vec4<u32>(32u)));
                }
            }
            for (var var_2 = -1; var_2 == 2147483647; var_2 += 1) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                global4 = ~firstTrailingBit(~vec3<u32>(18861u, global3.e.x, 1u));
                var var_3 = Struct_3(-global3.a, Struct_2(Struct_1(_wgslsmith_add_i32(u_input.a, ~(-2147483648))), Struct_1(_wgslsmith_mult_i32(global3.a.x, ~u_input.c)), -_wgslsmith_sub_i32(arg_1.x, global3.a.x)), vec4<bool>(any(!select(vec3<bool>(true, false, global3.c.x), vec3<bool>(global3.c.x, global3.c.x, false), global3.c.zyz)), false, select(false, !any(global3.c), false && any(vec3<bool>(arg_2, false, global3.c.x))), all(global3.c.zy)), global3.d, min(vec4<u32>(firstLeadingBit(global4.x), _wgslsmith_sub_u32(global3.e.x, 25171u), ~8363u, ~global4.x), firstTrailingBit(vec4<u32>(6867u, global4.x, global4.x, global3.d.x))) | (_wgslsmith_mult_vec4_u32(firstLeadingBit(global3.e), u_input.d) ^ max(select(u_input.d, vec4<u32>(11007u, u_input.b, 9903u, 4294967295u), arg_2), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 10277u, global4.x, 0u), global3.e))));
                var var_4 = firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(8635, (u_input.c & global3.a.x) & var_3.a.x), func_3(-(-1 >> (u_input.b % 32u)), Struct_2(func_5(Struct_2(Struct_1(-2147483648), Struct_1(-24655), global3.a.x), arg_0.yx), var_3.b.a, global3.a.x), Struct_1(-2147483648)), 48793));
                var var_5 = firstTrailingBit(vec4<i32>(~countOneBits(-var_3.a.x), arg_1.x, select(func_5(var_3.b, arg_0.yy).a & -u_input.c, _wgslsmith_mult_i32(48498, _wgslsmith_mult_i32(56265, var_3.b.b.a)), global3.c.x), _wgslsmith_sub_i32(0, i32(-1) * -6662)));
                var var_6 = 9977u;
            }
        }
        case -16784: {
            global1 = any(global3.c);
        }
        case 1: {
            var var_0 = vec4<f32>(-2075.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(trunc(arg_0.x))) * _wgslsmith_f_op_f32(floor(984.0))) - 329.0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2063.0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1194.0)))))), arg_0.x);
            var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-300.0, _wgslsmith_f_op_f32(f32(-1.0) * -808.0), _wgslsmith_f_op_f32(abs(arg_0.x)), -633.0) + vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.x, 605.0)), _wgslsmith_f_op_f32(var_0.x + -1139.0), 1324.0, _wgslsmith_f_op_f32(-583.0 * 1333.0)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000.0, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 2257.0)), 1554.0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1241.0), _wgslsmith_f_op_f32(step(645.0, var_0.x)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1816.0, 350.0, -374.0, var_0.x)))))))));
        }
        default: {
        }
    }
    switch (select(global3.b.b.a, global3.a.x, all(vec3<bool>(any(global3.c.yw), !true, true)) | true)) {
        case 7211: {
            var var_0 = Struct_3(countOneBits(max(-func_8(vec4<bool>(true, false, true, arg_2), global3.a, Struct_3(global3.a, global3.b, vec4<bool>(arg_2, true, global3.c.x, true), vec3<u32>(6837u, u_input.b, 36253u), u_input.d)).a, select(vec4<i32>(-2147483648, 45685, global3.b.c, -1), -global3.a, any(vec3<bool>(global3.c.x, global3.c.x, false))))), Struct_2(func_8(vec4<bool>(global3.c.x, !true, arg_2, func_8(vec4<bool>(true, false, false, true), global3.a, Struct_3(global3.a, Struct_2(global3.b.a, global3.b.b, -25673), global3.c, vec3<u32>(global4.x, 23132u, 65u), global3.e)).c.x), -(~global3.a), func_8(vec4<bool>(false, arg_2, true, global3.c.x), -vec4<i32>(arg_1.x, global2[_wgslsmith_index_u32(28882u, 21u)], -4138, -1), Struct_3(vec4<i32>(-60090, -2147483648, -2147483648, arg_1.x), global3.b, global3.c, global3.e.wwz, global3.e))).b.b, Struct_1(-abs(global2[_wgslsmith_index_u32(global3.d.x, 21u)])), min(i32(-1) * -291, arg_1.x)), vec4<bool>(global3.c.x, func_8(vec4<bool>(!arg_2, global3.c.x, global3.c.x, true), _wgslsmith_sub_vec4_i32(global3.a, vec4<i32>(arg_1.x, -42734, global3.b.a.a, global2[_wgslsmith_index_u32(4294967295u, 21u)]) ^ vec4<i32>(21416, 0, global3.b.c, -22405)), func_8(!vec4<bool>(true, true, false, true), global3.a, Struct_3(vec4<i32>(u_input.c, global2[_wgslsmith_index_u32(0u, 21u)], -2147483648, arg_1.x), global3.b, global3.c, vec3<u32>(1u, 344u, u_input.b), vec4<u32>(3789u, 1u, u_input.b, 4294967295u)))).c.x, false, !(_wgslsmith_sub_i32(global3.b.a.a, 2147483647) <= func_7(global3.b.b, global3.b, vec4<f32>(676.0, arg_0.x, arg_0.x, -1500.0), false))), ~global3.e.xzz, vec4<u32>(global3.d.x, u_input.b, 99791u, 0u));
            global0 = var_0.a.x;
            for (var var_1 = -2147483648; arg_2; global2 = array<i32, 21>()) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                continue;
            }
        }
        case -49641: {
            let var_0 = all(select(select(global3.c.zw, !(!global3.c.zz), all(vec4<bool>(global3.c.x, global3.c.x, global3.c.x, false))), select(select(!global3.c.zx, vec2<bool>(true, true), false), vec2<bool>(all(global3.c), global3.c.x), select(global3.c.x, true || arg_2, global3.c.x)), ~_wgslsmith_clamp_i32(13657, 0, -23438) < 1));
            global4 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~71992u, 0u, ~u_input.b), global3.e.yyx), _wgslsmith_mod_vec3_u32(~u_input.d.zxy, ~_wgslsmith_clamp_vec3_u32(~global3.d, vec3<u32>(91538u, 0u, u_input.d.x) & u_input.d.wxz, global3.e.zww >> (global3.e.xyx % vec3<u32>(32u)))));
            loop {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            }
            global1 = any(global3.c);
            global2 = array<i32, 21>();
        }
        case 41393: {
        }
        default: {
            for (var var_0 = 34423; false; var_0 -= 1) {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                let var_1 = vec3<i32>(2147483647, func_5(Struct_2(func_5(global3.b, arg_0.yz), Struct_1(global3.b.b.a), 59591), vec2<f32>(_wgslsmith_f_op_f32(546.0 + arg_0.x), _wgslsmith_div_f32(arg_0.x, -465.0))).a | global2[_wgslsmith_index_u32(4294967295u, 21u)], ~u_input.c);
            }
            let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * -1094.0));
            switch (global3.a.x) {
                case -18062: {
                    global0 = ~(-12010);
                    let var_1 = !false;
                    let var_2 = vec3<bool>(false, arg_2, !all(global3.c.zz));
                    global3 = Struct_3(-select(vec4<i32>(~u_input.c, 1, u_input.a, -34568), vec4<i32>(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(global3.e.x, 21u)], 1, u_input.c), u_input.a, abs(u_input.c), ~u_input.a), !(!global3.c)), global3.b, func_8(!select(select(global3.c, global3.c, vec4<bool>(false, true, var_1, var_2.x)), global3.c, !global3.c), countOneBits(~vec4<i32>(0, u_input.a, arg_1.x, 1) << (~u_input.d % vec4<u32>(32u))), Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, global3.a.x, -33323, -1), ~global3.a), global3.b, global3.c, abs(vec3<u32>(u_input.b, 33297u, 1u)), ~(~vec4<u32>(u_input.d.x, global4.x, global3.e.x, 4294967295u)))).c, u_input.d.xwx, abs((reverseBits(vec4<u32>(global3.e.x, 5656u, global3.d.x, global4.x)) | global3.e) | vec4<u32>(6666u, 0u | 27852u, _wgslsmith_mod_u32(u_input.b, u_input.d.x), global4.x)));
                    let var_3 = func_8(global3.c, abs(global3.a) ^ global3.a, Struct_3(vec4<i32>(u_input.c, _wgslsmith_mult_i32(global3.a.x, arg_1.x), 2761, _wgslsmith_sub_i32(global3.b.b.a, global3.b.b.a)) | global3.a, Struct_2(Struct_1(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 21u)], global3.b.b.a)), global3.b.b, _wgslsmith_add_i32(global3.a.x, -27661)), !(!(!global3.c)), u_input.d.xxx >> (func_8(global3.c, vec4<i32>(1, -2147483648, -2147483648, arg_1.x), Struct_3(global3.a, Struct_2(Struct_1(arg_1.x), Struct_1(1), -43281), vec4<bool>(global3.c.x, false, arg_2, global3.c.x), vec3<u32>(3222u, 1u, 68860u), u_input.d)).d % vec3<u32>(32u)), vec4<u32>(~_wgslsmith_mod_u32(u_input.b, global4.x), ~(~23753u), 70512u, 82745u | 0u)));
                }
                case -2147483648: {
                    let var_1 = !select(!arg_2, !arg_2, global3.c.x);
                }
                case 1: {
                    var var_1 = any(global3.c);
                    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) - -134.0), _wgslsmith_f_op_f32(683.0 * arg_0.x))));
                    let var_3 = global3.a;
                    var var_4 = false;
                    global1 = arg_2;
                }
                default: {
                    global0 = _wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(~global3.a.x, i32(-1) * -2147483648, -22191, global2[_wgslsmith_index_u32(22131u << (45553u % 32u), 21u)]))), reverseBits(vec4<i32>(max(6814, _wgslsmith_clamp_i32(1, 0, -2147483648)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.x, 0u), 21u)], -12459, _wgslsmith_clamp_i32(min(u_input.a, global3.a.x), -global3.a.x, ~u_input.a))));
                    var var_1 = Struct_1(_wgslsmith_sub_i32(firstTrailingBit(countOneBits(global3.b.c << (1u % 32u))), func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(60783u, global4.x, 16584u, 65588u)), ~vec4<u32>(global4.x, 3740u, u_input.d.x, global3.e.x)), 21u)], global3.b, Struct_1(arg_1.x))));
                }
            }
        }
    }
    for (var var_0 = -2147483648; false; ) {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        if (global3.c.x) {
            var var_1 = Struct_3(global3.a, global3.b, vec4<bool>(!(!(!false)), !global3.c.x, true, !(true && select(arg_2, arg_2, arg_2))), vec3<u32>(_wgslsmith_div_u32(110545u, 1u), min(~max(global4.x, 4294967295u), ~43959u), func_4(~abs(arg_1), vec2<i32>(arg_1.x, u_input.c)).x), vec4<u32>(min(~func_8(global3.c, global3.a, Struct_3(global3.a, global3.b, global3.c, global3.e.xzw, global3.e)).d.x, abs(26753u)), abs(~(~0u)), ~_wgslsmith_div_u32(~4294967295u, global4.x), _wgslsmith_mult_u32(1u, 19094u)));
            var var_2 = Struct_2(global3.b.a, global3.b.b, firstLeadingBit(global3.b.b.a));
            let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, arg_0.x, 1931.0, 335.0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-548.0, 1352.0, arg_0.x, arg_0.x) + vec4<f32>(961.0, arg_0.x, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(898.0, arg_0.x, arg_0.x, arg_0.x))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(810.0, 198.0, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1300.0, arg_0.x))))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(935.0, arg_0.x)))), 1000.0, _wgslsmith_f_op_f32(-353.0)), var_1.c.x)), global3.c));
            continue;
        }
        var var_1 = func_8(global3.c, global3.a, Struct_3(abs(vec4<i32>(~(-2147483648), select(-56467, -1543, false), u_input.a, 0)), global3.b, vec4<bool>(arg_2, arg_2, any(!global3.c.zyz), any(!global3.c.yw)), ~vec3<u32>(~45694u, global4.x, global3.e.x), vec4<u32>(~(~global3.e.x), global4.x, ~(~0u), ~(~15248u)))).b;
        loop {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
        }
    }
    loop {
        if (LOOP_COUNTERS[26u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
        let var_0 = arg_0;
        loop {
            if (LOOP_COUNTERS[27u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
            let var_1 = Struct_1(u_input.c >> ((~firstLeadingBit(global4.x) >> (~_wgslsmith_add_u32(global3.e.x, 101197u) % 32u)) % 32u));
            global0 = var_1.a;
            var var_2 = global3.b.c;
            var var_3 = func_8(global3.c, vec4<i32>(var_1.a, 11422, -(~(~global3.b.c)), -51285), Struct_3(~vec4<i32>(global2[_wgslsmith_index_u32(global3.d.x, 21u)], -global2[_wgslsmith_index_u32(global4.x, 21u)], i32(-1) * -1, arg_1.x), global3.b, vec4<bool>(any(global3.c) && !arg_2, !(!true), false, global3.c.x), global3.e.yww, u_input.d));
        }
        global0 = -_wgslsmith_div_i32(global3.b.c, reverseBits(global3.b.b.a) << (max(47753u, u_input.d.x | 250u) % 32u));
    }
    global4 = ~u_input.d.wxz;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1368.0 * arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, -626.0), vec2<f32>(-174.0, arg_0.x), true))), arg_2)))));
}

fn func_9(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec3<f32> {
    for (var var_0 = -1; global3.c.x; var_0 += 1) {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
        var var_1 = max(select(-50555, global2[_wgslsmith_index_u32(global4.x, 21u)], !global3.c.x), global2[_wgslsmith_index_u32(127445u, 21u)]);
        global4 = _wgslsmith_mult_vec3_u32(global3.e.zwx, firstLeadingBit(global3.e.xzx)) ^ countOneBits(u_input.d.xzw);
    }
    let var_0 = vec4<bool>(!(!(_wgslsmith_f_op_f32(f32(-1.0) * -2113.0) != arg_0.x)), true, false, false);
    for (; ; ) {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
        let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(527.0 + _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true))) - -1634.0));
        continue;
    }
    var var_1 = global3.b;
    if (false) {
        let var_2 = select(countOneBits(~func_4(global3.a.zy, vec2<i32>(global2[_wgslsmith_index_u32(0u, 21u)], 20101)).x) << (func_4(-_wgslsmith_mod_vec2_i32(global3.a.yz, vec2<i32>(24501, global2[_wgslsmith_index_u32(20750u, 21u)])), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, var_1.a.a)), countOneBits(vec2<i32>(-1, global2[_wgslsmith_index_u32(global3.e.x, 21u)])))).x % 32u), global4.x, !all(!vec3<bool>(false, true, false)));
        var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -2151.0, _wgslsmith_div_f32(309.0, 589.0), _wgslsmith_f_op_f32(ceil(arg_1.x)));
    }
    return vec3<f32>(-1198.0, _wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1.0) * -188.0))), 396.0), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(71111, var_1.c), func_3(var_1.b.a, Struct_2(Struct_1(global3.b.b.a), var_1.a, var_1.c), global3.b.a)), global3.a.xx), func_8(select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, true, global3.c.x, var_0.x), vec4<bool>(global3.c.x, false, true, var_0.x)), vec4<bool>(var_0.x, true, global3.c.x, global3.c.x), select(vec4<bool>(true, false, var_0.x, var_0.x), var_0, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<i32>(~1, _wgslsmith_sub_i32(-27202, -11803), ~5856, _wgslsmith_add_i32(1, 0)), Struct_3(global3.a, global3.b, vec4<bool>(var_0.x, true, true, var_0.x), vec3<u32>(0u, 1u, 30317u), vec4<u32>(global4.x, global4.x, global3.e.x, 51990u))).c.x)).x, -198.0);
}

fn func_10(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    if (all(!vec3<bool>(false, any(vec3<bool>(arg_3.c.x, arg_3.c.x, false)), !(!true)))) {
        var var_0 = !(arg_0.x <= _wgslsmith_f_op_f32(arg_0.x - 2001.0));
    }
    let var_0 = func_5(global3.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec3_f32(func_9(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), arg_0.zz)).yx)) * vec2<f32>(326.0, 1275.0)) - arg_0.zx)).a;
    let var_1 = arg_3;
    global1 = any(var_1.c);
    var var_2 = abs(global2[_wgslsmith_index_u32(64028u, 21u)]) | u_input.c;
    return Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(global3.a, var_1.a), vec4<i32>(var_1.a.x, u_input.c, -1, _wgslsmith_div_i32(52431, var_0))), ~_wgslsmith_add_vec4_i32(global3.a >> (vec4<u32>(arg_3.e.x, 30139u, 36449u, 7532u) % vec4<u32>(32u)), ~vec4<i32>(-1, 1, -2147483648, -4649))), func_8(vec4<bool>(arg_3.c.x || (1u != 1u), !(-40415 >= var_1.a.x), all(select(var_1.c.wy, vec2<bool>(false, global3.c.x), vec2<bool>(var_1.c.x, arg_3.c.x))), all(global3.c)), firstLeadingBit(var_1.a), Struct_3(vec4<i32>(max(1, global3.b.a.a), -var_0, -35410 | 2147483647, ~var_1.b.c), func_8(vec4<bool>(arg_3.c.x, global3.c.x, arg_3.c.x, true), vec4<i32>(-2147483648, global2[_wgslsmith_index_u32(arg_3.e.x, 21u)], 3481, -62969), Struct_3(vec4<i32>(arg_3.a.x, u_input.c, global2[_wgslsmith_index_u32(36248u, 21u)], var_1.a.x), Struct_2(arg_1, Struct_1(arg_1.a), 62678), vec4<bool>(arg_3.c.x, var_1.c.x, var_1.c.x, false), var_1.d, var_1.e)).b, var_1.c, ~global3.d, vec4<u32>(var_1.d.x | 21951u, firstTrailingBit(global4.x), global3.e.x, global4.x))).b, arg_3.c, vec3<u32>(_wgslsmith_mult_u32(arg_3.d.x << (var_1.e.x % 32u), u_input.d.x), 4294967295u & var_1.e.x, global4.x << (max(41900u, _wgslsmith_sub_u32(0u, 2806u)) % 32u)), global3.e);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec3<bool>) -> vec4<i32> {
    let var_0 = func_10(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379.0, -1323.0, -326.0))) * vec3<f32>(_wgslsmith_f_op_f32(1000.0 - -1000.0), _wgslsmith_f_op_f32(1005.0 - 139.0), _wgslsmith_f_op_f32(-1136.0))) + _wgslsmith_f_op_vec3_f32(func_9(_wgslsmith_f_op_vec3_f32(vec3<f32>(3076.0, 1577.0, -839.0) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-929.0, 264.0, -491.0), vec3<f32>(1405.0, -244.0, -821.0), vec3<bool>(arg_2, arg_2, true)))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000.0, -1010.0, -107.0), vec3<f32>(-535.0, -661.0, -1419.0))), select(vec2<i32>(u_input.c, global3.b.b.a), vec2<i32>(u_input.a, 0), false), global3.c.x))))), func_5(func_8(vec4<bool>(global3.d.x != 0u, true, true, false), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-107, 0, -24352, global2[_wgslsmith_index_u32(1u, 21u)]), global3.a, false), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647, 1, -10193, u_input.a), vec4<i32>(arg_1, 20241, global3.b.a.a, arg_0.a))), Struct_3(vec4<i32>(-5475, 49873, -104499, u_input.a), Struct_2(Struct_1(37861), Struct_1(global2[_wgslsmith_index_u32(3124u, 21u)]), -54307), select(vec4<bool>(false, arg_2, global3.c.x, false), global3.c, global3.c), u_input.d.zwx, vec4<u32>(global3.d.x, u_input.d.x, 99879u, 7263u))).b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(122.0, -775.0), vec2<f32>(-1307.0, 274.0), vec2<bool>(arg_3.x, global3.c.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-762.0, 1000.0) + vec2<f32>(1773.0, -580.0))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -1227.0), _wgslsmith_f_op_f32(round(-573.0))))), arg_0.a, Struct_3(select(global3.a, ~(-global3.a), vec4<bool>(!false, global3.c.x, arg_2, global3.c.x | true)), func_8(select(!global3.c, !vec4<bool>(global3.c.x, true, true, true), !global3.c), vec4<i32>(0, -4787, arg_0.a, u_input.a), func_8(func_8(vec4<bool>(global3.c.x, arg_2, false, true), global3.a, Struct_3(global3.a, global3.b, global3.c, vec3<u32>(1223u, global4.x, 1u), vec4<u32>(21215u, 45517u, u_input.d.x, 11710u))).c, func_8(global3.c, global3.a, Struct_3(vec4<i32>(arg_1, 2147483647, 1, global3.a.x), global3.b, vec4<bool>(arg_2, false, global3.c.x, arg_3.x), vec3<u32>(23397u, 0u, 0u), global3.e)).a, func_8(vec4<bool>(false, true, true, arg_3.x), vec4<i32>(arg_0.a, -2147483648, u_input.c, 2147483647), Struct_3(global3.a, global3.b, vec4<bool>(arg_2, arg_3.x, arg_2, true), u_input.d.wwy, vec4<u32>(8705u, 0u, 0u, u_input.d.x))))).b, global3.c, global3.d, ~u_input.d));
    global4 = vec3<u32>(u_input.b, func_6(2688.0, Struct_2(Struct_1(global2[_wgslsmith_index_u32(var_0.d.x, 21u)]), Struct_1(8154), max(47581, 7170))) >> (4294967295u % 32u), firstLeadingBit(abs(func_8(var_0.c, vec4<i32>(3497, arg_1, global3.b.a.a, -1), var_0).d.x)));
    let var_1 = -565.0;
    for (var var_2: i32; var_2 == 23980; var_2 += 1) {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        break;
    }
    var var_2 = abs(~(~(_wgslsmith_sub_vec3_i32(vec3<i32>(-1, u_input.a, 1), vec3<i32>(u_input.a, global3.b.c, arg_1)) | (vec3<i32>(global3.b.a.a, -11915, var_0.b.b.a) | global3.a.zyy))));
    return vec4<i32>(~(_wgslsmith_mult_i32(u_input.a, var_2.x) & func_7(Struct_1(arg_1), var_0.b, vec4<f32>(var_1, 1599.0, var_1, -1000.0), arg_2)), -10084 & ~1, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(global2[_wgslsmith_index_u32(global3.e.x, 21u)], global3.b.a.a, 1, global3.b.a.a), _wgslsmith_add_vec4_i32(var_0.a, var_0.a)), max(min(global3.a, var_0.a), vec4<i32>(arg_1, -12021, u_input.c, global3.b.b.a))), 25163) | var_0.a;
}

fn func_11(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    switch (2147483647) {
        case 31343: {
            return arg_0.b;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[31u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
                break;
            }
            loop {
                if (LOOP_COUNTERS[32u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
                var var_0 = _wgslsmith_mod_u32(~1u, ~_wgslsmith_mult_u32(~(~u_input.d.x), ~global4.x));
                var var_1 = _wgslsmith_add_u32(arg_0.e.x, ~(~28184u)) | select(arg_1.d.x, arg_0.e.x, true);
                continue;
            }
            loop {
                if (LOOP_COUNTERS[33u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
                let var_0 = arg_2;
                var var_1 = func_5(Struct_2(Struct_1(_wgslsmith_clamp_i32(-1, -11463, -global2[_wgslsmith_index_u32(40673u, 21u)])), global3.b.b, arg_2), vec2<f32>(1180.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -1742.0) * _wgslsmith_f_op_f32(549.0 + -917.0)) - -851.0)));
                var var_2 = global3.e.yx;
                let var_3 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(~(~49244u), global4.x), ~arg_0.d.x);
                let var_4 = ~(func_10(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_9(vec3<f32>(1649.0, -845.0, -1000.0), vec2<f32>(518.0, -1000.0)))), Struct_1(firstLeadingBit(-6118)), -1, arg_1).e.x << (var_3 % 32u));
            }
            let var_0 = countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(25388u, ~1u, ~(~105505u), ~(global3.d.x & global3.d.x)), vec4<u32>(global3.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 48079u, arg_0.d.x), countOneBits(global3.e)), global4.x, _wgslsmith_mult_u32(func_8(arg_1.c, vec4<i32>(global3.a.x, -18473, -36197, 61617), arg_0).d.x, func_8(arg_0.c, arg_0.a, arg_1).e.x))));
        }
    }
    for (; all(vec4<bool>(arg_0.c.x, true & false, abs(26275u) == 4294967295u, false)); ) {
        if (LOOP_COUNTERS[34u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[34u] = LOOP_COUNTERS[34u] + 1u;
        continue;
    }
    let var_0 = func_10(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1149.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1139.0) - -848.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-829.0) + _wgslsmith_f_op_f32(round(-340.0)))) + vec3<f32>(_wgslsmith_f_op_vec3_f32(func_9(vec3<f32>(1015.0, 2215.0, -1839.0), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000.0, -833.0) + vec2<f32>(-279.0, -929.0)))).x, _wgslsmith_f_op_f32(sign(-234.0)), -1000.0)), func_8(!(!arg_1.c), -arg_0.a, arg_0).b.a, -37336, arg_1).c.wwz;
    for (var var_1: i32; var_1 == -2147483648; var_1 -= 1) {
        if (LOOP_COUNTERS[35u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[35u] = LOOP_COUNTERS[35u] + 1u;
        loop {
            if (LOOP_COUNTERS[36u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[36u] = LOOP_COUNTERS[36u] + 1u;
            var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1373.0)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-992.0, 324.0)), 206.0))));
        }
        let var_2 = 1554.0;
        var_1 = 5905;
        var var_3 = arg_0.b;
        var var_4 = func_8(!(!select(!vec4<bool>(arg_0.c.x, var_0.x, true, false), vec4<bool>(true, false, arg_0.c.x, arg_1.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false))), func_10(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-708.0, var_2, var_2), vec3<f32>(var_2, 1000.0, -1000.0)))), func_10(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2005.0, var_2, 959.0), vec3<f32>(var_2, -1195.0, var_2))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-630.0, var_2, -760.0) - vec3<f32>(var_2, -757.0, var_2))), func_5(arg_1.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2, var_2)))), abs(32332), Struct_3(~vec4<i32>(16230, 2147483647, 0, arg_3.a), global3.b, select(arg_1.c, arg_1.c, vec4<bool>(global3.c.x, arg_1.c.x, var_0.x, false)), ~vec3<u32>(u_input.d.x, global3.d.x, 1u), abs(vec4<u32>(0u, 4294967295u, global4.x, arg_0.d.x)))).b.a, 0, Struct_3(countOneBits(vec4<i32>(2147483647, -1, arg_0.b.b.a, -15013)), func_10(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -1476.0, var_2) * vec3<f32>(-1595.0, var_2, var_2)), arg_3, 49132, func_10(vec3<f32>(var_2, 931.0, 1980.0), arg_3, var_3.c, Struct_3(vec4<i32>(17566, u_input.a, 4705, 67545), Struct_2(Struct_1(arg_3.a), arg_3, 1), arg_0.c, arg_0.d, vec4<u32>(1u, arg_0.e.x, 4294967295u, arg_0.e.x)))).b, select(vec4<bool>(true, false, arg_0.c.x, false), vec4<bool>(arg_0.c.x, false, global3.c.x, true), false), ~(~vec3<u32>(global4.x, 0u, 52845u)), arg_1.e)).a, func_10(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2, -211.0, var_2))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 848.0, var_2))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000.0, 1135.0, var_2)))))), Struct_1(arg_0.b.b.a), ~func_10(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, -982.0, var_2))), Struct_1(21413), var_3.a.a, arg_0).a.x, arg_1)).b;
    }
    let var_1 = func_8(func_8(select(vec4<bool>(!arg_0.c.x, !global3.c.x, true, func_8(arg_1.c, arg_0.a, Struct_3(vec4<i32>(29600, 39669, arg_3.a, 0), Struct_2(arg_1.b.b, arg_0.b.b, -13213), arg_0.c, arg_1.e.zwy, vec4<u32>(global4.x, 0u, arg_0.d.x, global4.x))).c.x), select(!vec4<bool>(var_0.x, false, false, arg_0.c.x), func_8(arg_0.c, vec4<i32>(global3.b.b.a, arg_3.a, arg_0.a.x, arg_0.a.x), arg_0).c, global3.c.x), func_10(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-442.0, -1065.0, -1098.0)), arg_0.b.b, -arg_0.b.b.a, arg_0).c), vec4<i32>(arg_3.a, -22340, global2[_wgslsmith_index_u32(~global3.d.x, 21u)], arg_0.b.c) & ~(vec4<i32>(arg_3.a, u_input.a, arg_1.b.a.a, -20844) & arg_0.a), arg_0).c, vec4<i32>(func_5(Struct_2(Struct_1(-2147483648), global3.b.a, 0), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-694.0, 1512.0), vec2<f32>(353.0, 2315.0)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1101.0, -181.0)))))).a, i32(-1) * -2147483648, -6305 >> (global3.e.x % 32u), countOneBits(~(~(-10021)))), func_10(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-865.0, 2364.0, -630.0)) * vec3<f32>(_wgslsmith_f_op_f32(-2641.0), _wgslsmith_f_op_f32(abs(832.0)), -1440.0)), arg_3, -22029, func_8(!vec4<bool>(var_0.x, true, true, false), global3.a, func_10(_wgslsmith_div_vec3_f32(vec3<f32>(-681.0, 209.0, -494.0), vec3<f32>(-676.0, -622.0, 468.0)), Struct_1(-37887), -3138, arg_0))));
    return func_10(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(898.0, -1346.0, -662.0)))))), func_8(!global3.c, -(func_10(vec3<f32>(1427.0, 219.0, 232.0), var_1.b.b, arg_3.a, var_1).a << (arg_0.e % vec4<u32>(32u))), arg_0).b.a, arg_2, Struct_3((select(arg_1.a, vec4<i32>(30, 2147483647, -2147483648, 1), arg_1.c.x) & arg_0.a) & ~(-vec4<i32>(2147483647, arg_2, -2147483648, 27389)), Struct_2(func_5(Struct_2(Struct_1(-59708), arg_1.b.b, arg_3.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-749.0, 1547.0), vec2<f32>(1000.0, -634.0), true))), Struct_1(2147483647), ~(-arg_2)), arg_0.c, global3.e.yzw, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, 4294967295u), arg_0.e)) | _wgslsmith_add_vec4_u32(vec4<u32>(global3.d.x, 58898u, 11161u, arg_0.d.x), u_input.d ^ vec4<u32>(27754u, var_1.e.x, arg_0.d.x, 9587u)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(select(!(true && true), global3.c.x, global3.c.x), global3.c.x, all(select(select(global3.c, global3.c, global3.c), vec4<bool>(true, false, global3.c.x, global3.c.x), select(vec4<bool>(false, global3.c.x, false, global3.c.x), global3.c, global3.c)))));
    if (-533.0 <= -663.0) {
        var_0 = 2147483647 <= 1;
    }
    let var_1 = global3.d.x;
    var var_2 = global3.e.x;
    switch (49785) {
        case -16412: {
            for (var var_3: i32; var_3 > -1461; var_3 -= 1) {
                if (LOOP_COUNTERS[37u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[37u] = LOOP_COUNTERS[37u] + 1u;
                global3 = Struct_3(global3.a, func_11(Struct_3(func_1(Struct_1(2732), u_input.c, global3.c.x, global3.c.xwz) & select(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], 2168, -26948, 1), vec4<i32>(global2[_wgslsmith_index_u32(1u, 21u)], u_input.c, global2[_wgslsmith_index_u32(9788u, 21u)], global3.b.c), global3.c), Struct_2(Struct_1(u_input.c), Struct_1(u_input.c), _wgslsmith_mod_i32(global3.a.x, global3.a.x)), global3.c, _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d.x, 3375u, global4.x), func_4(vec2<i32>(global2[_wgslsmith_index_u32(38769u, 21u)], -36308), vec2<i32>(u_input.a, 0))), _wgslsmith_sub_vec4_u32(global3.e ^ vec4<u32>(global3.d.x, 0u, global4.x, u_input.b), ~u_input.d)), func_10(vec3<f32>(_wgslsmith_f_op_f32(min(1000.0, 2358.0)), 301.0, _wgslsmith_f_op_f32(ceil(-994.0))), global3.b.b, global3.a.x ^ global3.a.x, func_10(_wgslsmith_f_op_vec3_f32(vec3<f32>(1153.0, 403.0, -827.0) - vec3<f32>(-246.0, 1607.0, 1820.0)), global3.b.b, -global3.b.c, Struct_3(global3.a, global3.b, vec4<bool>(false, true, true, false), vec3<u32>(u_input.b, u_input.d.x, 36463u), vec4<u32>(global4.x, global4.x, 9414u, 52756u)))), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], -7571), func_5(func_10(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(235.0, -148.0, 1584.0))), func_10(vec3<f32>(1336.0, -430.0, 753.0), global3.b.b, global3.b.c, Struct_3(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], -2147483648, global3.b.c, global2[_wgslsmith_index_u32(u_input.d.x, 21u)]), Struct_2(global3.b.b, Struct_1(global3.a.x), -42936), global3.c, u_input.d.zxx, u_input.d)).b.b, -1, Struct_3(global3.a, global3.b, global3.c, u_input.d.zzy, vec4<u32>(1834u, global4.x, 0u, 23014u))).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1879.0, -1530.0))))), !vec4<bool>(any(select(global3.c.wz, vec2<bool>(global3.c.x, global3.c.x), global3.c.x)), global3.c.x, global3.c.x | !global3.c.x, !all(global3.c)), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.x, 4294967295u, 93683u), select(vec3<u32>(u_input.d.x, global4.x, 12146u), vec3<u32>(0u, 4294967295u, 12833u), global3.c.x))), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global4.x, 25043u), u_input.b, 64500u, ~global4.x), _wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.b, 4294967295u, u_input.b, global3.d.x), global3.e), select(vec4<u32>(u_input.d.x, u_input.b, global4.x, global4.x), vec4<u32>(1u, 0u, global4.x, global4.x), global3.c)))));
                var_0 = select(global3.c.x, false, _wgslsmith_div_u32(global3.d.x, ~(~global4.x)) <= global3.d.x);
                global2 = array<i32, 21>();
            }
            global4 = vec3<u32>(0u, ~_wgslsmith_add_u32(~3003u, _wgslsmith_div_u32(_wgslsmith_mod_u32(global4.x, global4.x), 36064u ^ global3.d.x)), global4.x);
            var_0 = true;
            var_0 = -37016 > 2147483647;
        }
        case 2147483647: {
            global2 = array<i32, 21>();
            if (!(global3.c.x || (true | !false))) {
                let var_3 = _wgslsmith_div_vec4_u32(firstLeadingBit(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 64412u, global4.x, global4.x), vec4<u32>(1u, global3.d.x, u_input.d.x, 23296u)))), u_input.d);
                let var_4 = global3.b;
            }
        }
        case -23015: {
            loop {
                if (LOOP_COUNTERS[38u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[38u] = LOOP_COUNTERS[38u] + 1u;
                global1 = all(vec4<bool>(all(!vec2<bool>(false, global3.c.x)), !(global2[_wgslsmith_index_u32(9403u, 21u)] >= firstTrailingBit(global3.a.x)), !all(global3.c.yw), func_10(_wgslsmith_div_vec3_f32(vec3<f32>(-1000.0, -1000.0, -317.0), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(435.0, -241.0, -843.0), vec3<f32>(-1276.0, -219.0, 401.0)))), global3.b.a, global3.b.a.a, func_8(global3.c, ~vec4<i32>(13974, -2147483648, -54722, -1), func_8(global3.c, global3.a, Struct_3(global3.a, global3.b, vec4<bool>(global3.c.x, false, true, true), vec3<u32>(global4.x, u_input.d.x, 77451u), vec4<u32>(u_input.b, global4.x, 4294967295u, 105929u))))).c.x));
                global4 = ~_wgslsmith_add_vec3_u32(u_input.d.wyz, _wgslsmith_div_vec3_u32(u_input.d.yzz, ~vec3<u32>(global4.x, global3.d.x, 24462u)));
            }
            var var_3 = global3.b.a;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[39u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[39u] = LOOP_COUNTERS[39u] + 1u;
                var var_3 = select(!(!func_8(global3.c, abs(vec4<i32>(-23830, global3.b.b.a, -44108, 17053)), Struct_3(global3.a, global3.b, global3.c, u_input.d.yyx, u_input.d)).c.zy), !func_10(_wgslsmith_f_op_vec3_f32(func_9(vec3<f32>(1642.0, -921.0, 295.0), vec2<f32>(-767.0, -209.0))), func_8(select(global3.c, vec4<bool>(true, global3.c.x, true, global3.c.x), vec4<bool>(global3.c.x, global3.c.x, true, global3.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(1u, 21u)], 1, global2[_wgslsmith_index_u32(4294967295u, 21u)]), global3.a), Struct_3(global3.a, global3.b, global3.c, vec3<u32>(global4.x, 1u, 1u), u_input.d)).b.a, func_7(global3.b.b, global3.b, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1015.0, -663.0, 691.0, -1119.0))), !global3.c.x), func_8(select(vec4<bool>(global3.c.x, false, global3.c.x, true), global3.c, vec4<bool>(false, false, false, global3.c.x)), global3.a, func_8(global3.c, vec4<i32>(-2147483648, u_input.a, 4950, -1), Struct_3(global3.a, global3.b, global3.c, u_input.d.zxy, vec4<u32>(0u, u_input.b, 1u, 34384u))))).c.zy, global3.c.xw);
                let var_4 = -vec3<i32>(global3.b.c, global3.b.c, func_3(u_input.a, Struct_2(func_10(vec3<f32>(264.0, -316.0, 1599.0), Struct_1(global2[_wgslsmith_index_u32(51323u, 21u)]), 2147483647, Struct_3(vec4<i32>(u_input.c, 30310, u_input.a, global3.a.x), global3.b, vec4<bool>(true, global3.c.x, true, false), u_input.d.wxy, vec4<u32>(global4.x, global4.x, 26887u, 41555u))).b.a, Struct_1(global3.b.a.a), global3.b.c | 1), func_11(Struct_3(vec4<i32>(global3.a.x, -41517, global3.a.x, -2147483648), Struct_2(Struct_1(49806), global3.b.b, 2147483647), vec4<bool>(global3.c.x, false, true, true), u_input.d.yxz, u_input.d), Struct_3(vec4<i32>(2147483647, 3033, -9538, global3.a.x), Struct_2(Struct_1(global3.a.x), Struct_1(global2[_wgslsmith_index_u32(44071u, 21u)]), global2[_wgslsmith_index_u32(u_input.d.x, 21u)]), global3.c, global3.e.yxz, global3.e), max(-2147483648, 2147483647), func_5(global3.b, vec2<f32>(1260.0, 849.0))).b));
                var var_5 = 60078u;
                var var_6 = Struct_1(global2[_wgslsmith_index_u32(~global4.x << (func_4(-vec2<i32>(-24348, u_input.a), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global3.a.zx, var_4.yy), select(global3.a.xw, vec2<i32>(var_4.x, 2147483647), vec2<bool>(false, true)))).x % 32u), 21u)]);
                global4 = global3.d;
            }
            return;
        }
    }
    loop {
        if (LOOP_COUNTERS[40u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[40u] = LOOP_COUNTERS[40u] + 1u;
    }
    let x = u_input.a;
    s_output = StorageBuffer(select(max(func_1(Struct_1(19158), ~u_input.a, func_8(vec4<bool>(global3.c.x, false, false, global3.c.x), vec4<i32>(global3.b.c, global3.b.b.a, u_input.a, 1), Struct_3(global3.a, global3.b, global3.c, vec3<u32>(global4.x, 4294967295u, 1u), u_input.d)).c.x, global3.c.zxw).yyz, vec3<i32>(func_1(Struct_1(global3.b.a.a), global3.a.x, global3.c.x, global3.c.ywy).x, global3.b.c, max(1, u_input.a))), func_8(!global3.c, vec4<i32>(~(-50196), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.d.x, u_input.b), 21u)], u_input.a, -31646), Struct_3(_wgslsmith_add_vec4_i32(global3.a, vec4<i32>(1, u_input.c, 297, u_input.c)), global3.b, select(global3.c, global3.c, true), vec3<u32>(72597u, global4.x, global4.x), vec4<u32>(u_input.d.x, global4.x, 1636u, u_input.d.x))).a.zzx, vec3<bool>(!(!global3.c.x), !select(global3.c.x, true, global3.c.x), global3.c.x | true)));
}

