// {"0:0":[47,19,231,46,157,126,237,69]}
// Seed: 7412929254623393016

struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-158f, 790f, -251f, 805f), vec4<f32>(1349f, -437f, 1062f, 1409f), vec4<f32>(1135f, 558f, 459f, 1016f), vec4<f32>(-2617f, 2206f, 526f, 634f), vec4<f32>(-1000f, -476f, -782f, 1304f), vec4<f32>(-430f, -2954f, -192f, 590f), vec4<f32>(-137f, 476f, -696f, 1000f), vec4<f32>(667f, 1000f, 576f, 228f), vec4<f32>(319f, 109f, -701f, -187f), vec4<f32>(370f, 1521f, 1347f, 1227f), vec4<f32>(134f, 841f, 906f, -1127f), vec4<f32>(1146f, 1688f, -267f, -493f), vec4<f32>(217f, -467f, -1348f, 757f), vec4<f32>(-153f, 1200f, -267f, 1647f), vec4<f32>(972f, 224f, -1162f, -1141f), vec4<f32>(105f, -219f, -491f, 1409f), vec4<f32>(-385f, -365f, 1428f, -1652f), vec4<f32>(-1297f, -668f, -709f, -889f), vec4<f32>(1000f, -656f, -1077f, -1000f), vec4<f32>(-956f, -1000f, -332f, -592f), vec4<f32>(1000f, -3003f, -284f, -1993f), vec4<f32>(1093f, 1000f, -713f, -533f), vec4<f32>(-1000f, -163f, -798f, 1488f), vec4<f32>(577f, -877f, 391f, 622f), vec4<f32>(-423f, -216f, 463f, -942f), vec4<f32>(147f, -487f, 1323f, 1072f), vec4<f32>(-1618f, -1000f, 1000f, -117f), vec4<f32>(188f, 654f, 191f, -1524f), vec4<f32>(1229f, 333f, 333f, -847f));

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> bool {
    if (true) {
    }
    var var_0 = -33344i;
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    var var_1 = vec2<u32>(abs(arg_0.a), abs(firstLeadingBit(0u)));
    return true;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> i32 {
    var var_0 = vec3<bool>(all(!select(!arg_1.zz, select(vec2<bool>(arg_1.x, arg_1.x), arg_1.yz, vec2<bool>(true, arg_1.x)), vec2<bool>(arg_1.x, true))), true, all(select(!(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), vec4<bool>(true, true, true, true), select(all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), true, all(vec3<bool>(arg_1.x, true, true))))));
    switch (-1i) {
        case 2147483647i: {
            loop {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                let var_1 = arg_1.yx;
                var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.c))) != _wgslsmith_f_op_f32(-arg_0.c);
                let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.c, arg_0.c, true)), arg_2.a.c));
                let var_4 = func_2(arg_0, Struct_2(arg_0, ~vec3<u32>(arg_2.a.e, 57159u, u_input.a.x) << (abs(arg_2.b) % vec3<u32>(32u))), _wgslsmith_f_op_f32(step(var_3, arg_2.a.c)), !all(select(!var_0.zx, !var_0.xx, var_1.x)));
                var var_5 = 816f;
            }
            var var_1 = arg_2;
            if (var_0.x) {
                var var_2 = ~((~vec4<u32>(2612u, var_1.b.x, 7036u, 0u) & vec4<u32>(~arg_2.a.e, _wgslsmith_mult_u32(4294967295u, arg_0.e), min(arg_2.b.x, arg_0.a), ~u_input.a.x)) ^ (vec4<u32>(4294967295u, abs(64192u), ~arg_0.e, ~0u) | vec4<u32>(0u, ~4294967295u, 38989u, ~arg_2.a.a)));
            }
            if (max(~(~1i), 4631i) <= _wgslsmith_dot_vec4_i32(~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-44313i, -19496i, -32049i, -16661i), vec4<i32>(8297i, 0i, i32(-2147483648), -1i), vec4<i32>(-1i, -31548i, 1i, -82022i)), vec4<i32>(20406i, i32(-2147483648), -8147i, i32(-2147483648))), vec4<i32>(0i, 68699i, 0i, select(0i, -27923i, any(vec3<bool>(false, true, true)))))) {
                return reverseBits(-max(8095i, _wgslsmith_clamp_i32(select(i32(-2147483648), 1i, arg_1.x), 19577i, 1i)));
            }
        }
        case 0i: {
            var_0 = arg_1;
            var var_1 = !arg_1.x | (4294967295u >= u_input.a.x);
            for (var var_2: i32; ; global0 = array<vec4<f32>, 29>()) {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                let var_3 = Struct_1(11018u >> (1u % 32u), ~vec2<u32>(u_input.a.x, arg_0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1614f - -1219f), -107f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1012f, -470f)), _wgslsmith_f_op_f32(-304f + arg_2.a.c)))))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.b, arg_2.b, arg_2.b), vec3<u32>(62745u, arg_0.d.x, 6670u)), ~max(vec3<u32>(arg_2.a.a, arg_0.e, arg_2.b.x), arg_2.b)), 4294967295u), 1u);
                var var_4 = Struct_2(Struct_1(arg_0.e, select(vec2<u32>(0u, 687u) << (select(vec2<u32>(arg_2.b.x, arg_2.a.b.x), vec2<u32>(27548u, u_input.a.x), var_0.xz) % vec2<u32>(32u)), abs(vec2<u32>(5153u, arg_2.b.x)), vec2<bool>(all(var_0.zz), true)), -768f, select(arg_0.b, _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.d, vec2<u32>(arg_2.b.x, 39339u), var_3.d), vec2<u32>(var_3.a, var_3.d.x)), var_0.x), var_3.d.x), vec3<u32>(arg_2.b.x, abs(_wgslsmith_add_u32(1u, countOneBits(arg_0.b.x))), arg_2.a.a));
                var var_5 = Struct_1(u_input.a.x, ~(~(vec2<u32>(arg_0.b.x, var_4.a.b.x) & ~var_4.b.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1747f) * var_4.a.c)), var_4.b.zz & max(vec2<u32>(var_4.b.x & 40793u, _wgslsmith_add_u32(1u, var_3.b.x)), vec2<u32>(var_4.a.a, ~4294967295u)), min(7862u, var_3.b.x));
            }
            var var_2 = vec4<bool>(var_0.x && true, true, all(vec4<bool>(true, false, true, var_0.x)), true);
        }
        case i32(-2147483648): {
        }
        default: {
            let var_1 = Struct_1(69331u, reverseBits(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(4294967295u, 0u)), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1066f * _wgslsmith_div_f32(arg_0.c, 1120f)), 1404f) * arg_0.c), ~vec2<u32>(28496u, u_input.a.x), arg_2.a.b.x);
            var var_2 = ~(~abs(_wgslsmith_mult_i32(16345i, _wgslsmith_mod_i32(i32(-2147483648), 38961i))));
        }
    }
    switch (-8235i) {
        case i32(-2147483648): {
            for (var var_1 = 0i; func_2(arg_2.a, Struct_2(arg_0, ~arg_2.b), _wgslsmith_f_op_f32(max(1000f, -1092f)), arg_1.x != all(!(!vec4<bool>(true, arg_1.x, arg_1.x, true)))); var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_mod_i32(10960i, -713i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, i32(-2147483648))), i32(-1i) * -5112i) << (~arg_2.b % vec3<u32>(32u))), abs(_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, 6994i, -22206i), vec3<i32>(1i, ~(-32710i), ~0i))))) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                return ~min(firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 6757i, 0i, 2658i), vec4<i32>(2147483647i, 0i, -15984i, 1i)))), _wgslsmith_dot_vec3_i32(vec3<i32>(5803i >> (arg_2.a.a % 32u), -19960i, _wgslsmith_clamp_i32(-10551i, i32(-2147483648), 51047i)), -vec3<i32>(1i, i32(-2147483648), 2147483647i)));
            }
            loop {
                if (LOOP_COUNTERS[3u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
                var_0 = !arg_1;
            }
            if (any(vec2<bool>(false, var_0.x))) {
                let var_1 = arg_0.c;
                var_0 = select(arg_1, select(vec3<bool>(any(select(vec4<bool>(var_0.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, var_0.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), any(vec4<bool>(var_0.x, false, true, false)), arg_1.x), !arg_1, all(!select(vec2<bool>(arg_1.x, false), var_0.zz, vec2<bool>(false, var_0.x)))), select(arg_1, !select(vec3<bool>(var_0.x, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), var_0.x), any(select(!vec4<bool>(false, var_0.x, var_0.x, arg_1.x), select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_0.x, false)), false))));
                global0 = array<vec4<f32>, 29>();
                var_0 = vec3<bool>(_wgslsmith_f_op_f32(max(-627f, -1913f)) == arg_0.c, select(var_0.x, any(!(!var_0.xy)), false), true);
                global0 = array<vec4<f32>, 29>();
            }
            loop {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                continue;
            }
            if (true) {
                var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(6768u, 29u)])))))))));
                return -64242i;
            }
        }
        case 37594i: {
            let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1685f)), 1938f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.a.c)), arg_2.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(892f, arg_0.c)) + _wgslsmith_f_op_f32(step(-1156f, 1442f))), _wgslsmith_f_op_f32(floor(arg_2.a.c)))));
            var var_2 = arg_2;
        }
        case 2147483647i: {
            var var_1 = arg_1;
            let var_2 = ~(-reverseBits(select(0i, 1i, var_0.x))) << (_wgslsmith_mult_u32(u_input.a.x, 1u) % 32u);
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_2.a.c, 962f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.c, -406f, 1813f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-545f, arg_2.a.c, arg_2.a.c))), arg_1.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1311f), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-arg_2.a.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -301f, arg_0.c))) + vec3<f32>(-1000f, arg_0.c, arg_0.c)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c + -148f), _wgslsmith_f_op_f32(-arg_2.a.c), _wgslsmith_f_op_f32(arg_2.a.c * arg_2.a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-641f, arg_2.a.c, -1389f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.a.c, 469f, -1000f)))))))));
                let var_4 = _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(88349u, 9575u), vec2<u32>(42419u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)), countOneBits(vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(0u, u_input.a.x))), _wgslsmith_clamp_vec2_u32(arg_0.d, u_input.a, vec2<u32>(0u, u_input.a.x) << (arg_0.b % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(abs(arg_2.b.xx)), vec2<u32>(_wgslsmith_mod_u32(arg_0.e, arg_0.d.x), 1u)), abs(arg_2.a.d >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), arg_0.b) % vec2<u32>(32u)))));
                return var_2;
            }
        }
        case -7525i: {
            var var_1 = Struct_2(arg_2.a, vec3<u32>(firstLeadingBit(0u), ~(~(arg_2.a.b.x << (arg_2.b.x % 32u))), _wgslsmith_mod_u32(~(~u_input.a.x), firstLeadingBit(38262u))));
        }
        default: {
            let var_1 = arg_2;
            global0 = array<vec4<f32>, 29>();
        }
    }
    for (var var_1 = -3235i; var_1 == i32(-2147483648); var_1 += 1i) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        var var_2 = Struct_2(Struct_1(~arg_0.d.x, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, 0u), firstLeadingBit(vec2<u32>(4294967295u, 21773u))), arg_2.a.c, ~select(vec2<u32>(0u, 4294967295u), reverseBits(arg_0.b), select(var_0.yy, arg_1.xz, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(75936u, 1u, arg_0.a, 84179u), vec4<u32>(arg_2.b.x, 1u, arg_0.a, 0u) >> (vec4<u32>(arg_0.b.x, arg_2.a.b.x, 43171u, u_input.a.x) % vec4<u32>(32u)))), firstTrailingBit(vec3<u32>(1u, min(1u, 1u >> (arg_0.e % 32u)), 12919u)));
    }
    if (any(arg_1)) {
        global0 = array<vec4<f32>, 29>();
        switch (_wgslsmith_clamp_i32(~max(0i, _wgslsmith_div_i32(-1i, 2147483647i)), abs(_wgslsmith_div_i32(~1i, ~(i32(-1i) * -1i))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(3303i, 1i), -34977i, 1i))) {
            case 9690i: {
            }
            case 2147483647i: {
            }
            default: {
                global0 = array<vec4<f32>, 29>();
                return ~(-1i);
            }
        }
        switch (1i) {
            case 1i: {
            }
            default: {
            }
        }
    }
    return _wgslsmith_add_i32(~reverseBits(_wgslsmith_div_i32(i32(-2147483648), _wgslsmith_clamp_i32(-63341i, 0i, 1i))), 7295i);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)))))));
    switch (func_6(arg_0, vec3<bool>(false, arg_0.e >= (arg_0.e & 13983u), true), Struct_2(arg_0, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(38684u, 4294967295u, 0u), vec3<u32>(u_input.a.x, arg_0.b.x, arg_0.d.x))))) << (~((max(13151u, 30792u) & _wgslsmith_div_u32(arg_0.e, arg_0.b.x)) & 1u) % 32u)) {
        case 1i: {
            var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(249f)));
            let var_2 = Struct_2(arg_0, firstTrailingBit(~(~(~vec3<u32>(arg_0.d.x, 3356u, 0u)))));
            for (var var_3: i32; any(vec4<bool>(true, true, true, 4294967295u < (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.e, arg_0.d.x, 1u, 0u), vec4<u32>(10317u, var_2.a.a, arg_0.e, arg_0.e)) >> (0u % 32u)))); var_3 -= 1i) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                var var_4 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(sign(-680f)));
                let var_5 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-478f) - -1853f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c * arg_0.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f * 217f))));
            }
            let var_3 = var_0;
            var var_4 = -26892i;
        }
        case -1i: {
            global0 = array<vec4<f32>, 29>();
            var var_1 = countOneBits(-1784i);
        }
        case 0i: {
            switch (~(-1i)) {
                case 1i: {
                }
                case -21322i: {
                    let var_1 = Struct_2(arg_0, _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a.x, 95812u)), ~(~vec3<u32>(u_input.a.x, 57806u, u_input.a.x))) & max(~(~vec3<u32>(arg_0.d.x, 73909u, u_input.a.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, u_input.a.x, arg_0.a), vec3<u32>(arg_0.d.x, u_input.a.x, arg_0.a)), vec3<u32>(arg_0.e, 0u, 14560u))));
                    var var_2 = -1i;
                    return Struct_1(u_input.a.x, max(~var_1.a.b, _wgslsmith_mult_vec2_u32(u_input.a, firstLeadingBit(var_1.b.yy))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_0.c)))), ~(~u_input.a), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_1.b, var_1.b, vec3<u32>(4294967295u, 8112u, 1u)), firstLeadingBit(vec3<u32>(var_1.a.b.x, 0u, var_1.a.d.x)))));
                }
                default: {
                    let var_1 = vec4<u32>(4294967295u, 0u, countOneBits(arg_0.e), abs(~_wgslsmith_mult_u32(~59364u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_0.b.x), vec2<u32>(arg_0.b.x, arg_0.a)))));
                    let var_2 = countOneBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, i32(-2147483648)), -vec3<i32>(60311i, -12948i, 23625i))) >> (countOneBits(~abs(u_input.a.x) & ~(~var_1.x)) % 32u);
                    var var_3 = var_0;
                    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1564f, arg_0.c, 179f), vec3<f32>(var_3.x, arg_0.c, arg_0.c))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -118f, -551f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.c, 271f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2113f), _wgslsmith_div_f32(var_0.x, 960f), arg_0.c)))));
                }
            }
            if (true) {
            }
            for (var var_1 = 1i; false; var_1 -= 1i) {
                if (LOOP_COUNTERS[8u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
                var var_2 = var_0.x;
                break;
            }
            let var_1 = vec3<i32>(1i << (~4294967295u % 32u), ~(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(23427i, -26734i), vec2<i32>(2147483647i, -47623i)), ~2147483647i)), -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-16864i, 1i), vec2<i32>(-8836i, 0i) >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), abs(-20649i) << (_wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, u_input.a.x) % 32u)));
            global0 = array<vec4<f32>, 29>();
        }
        case 23481i: {
            var var_1 = _wgslsmith_f_op_f32(-821f) != _wgslsmith_div_f32(var_0.x, 2053f);
            switch (0i) {
                case 13569i: {
                    var var_2 = true;
                    var_1 = func_2(arg_0, Struct_2(Struct_1(1u, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 1u), arg_0.d) | countOneBits(arg_0.b), -1802f, _wgslsmith_mod_vec2_u32(~arg_0.d, u_input.a), 53521u), max(~select(vec3<u32>(4294967295u, arg_0.d.x, arg_0.a), vec3<u32>(1u, 1u, 0u), false), vec3<u32>(arg_0.b.x, ~arg_0.a, 4294967295u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(671f))), -342f)))), (-1i >= ~func_6(arg_0, vec3<bool>(false, false, false), Struct_2(arg_0, vec3<u32>(1u, arg_0.a, 0u)))) & false);
                    let var_3 = ~vec3<u32>(_wgslsmith_clamp_u32(~(0u | u_input.a.x), 4294967295u, 22779u), firstTrailingBit(u_input.a.x & firstLeadingBit(arg_0.d.x)), 4294967295u);
                    global0 = array<vec4<f32>, 29>();
                    let var_4 = _wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(15432u, 1u, 1u), abs(~vec3<u32>(var_3.x, arg_0.b.x, u_input.a.x)))), u_input.a.x);
                }
                case 1417i: {
                    let var_2 = 0u;
                    var var_3 = select(vec4<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, all(vec3<bool>(true, true, true)), true), !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(1000f >= var_0.x, true, false, true)), select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(true, -1223f < var_0.x, all(vec3<bool>(true, true, true)), true), vec4<bool>(true, arg_0.e >= 48889u, any(vec2<bool>(true, true)), true)), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, false), reverseBits(35174u) == abs(arg_0.d.x)), vec4<bool>(false, true, !any(vec4<bool>(true, true, false, true)), true)));
                }
                case 0i: {
                    global0 = array<vec4<f32>, 29>();
                    let var_2 = ~select(_wgslsmith_add_vec2_u32(~vec2<u32>(65309u, arg_0.a), select(vec2<u32>(4843u, 30571u), arg_0.b, true) >> (vec2<u32>(arg_0.e, arg_0.b.x) % vec2<u32>(32u))), abs(arg_0.d) & (vec2<u32>(38001u, 1u) >> (vec2<u32>(arg_0.d.x, u_input.a.x) % vec2<u32>(32u))), vec2<bool>(true, !func_2(arg_0, Struct_2(arg_0, vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), arg_0.c, true)));
                    var_1 = true;
                    let var_3 = true;
                }
                default: {
                }
            }
            global0 = array<vec4<f32>, 29>();
            switch (15279i & ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 45659i << (arg_0.b.x % 32u), 0i, _wgslsmith_mod_i32(9063i, -42333i)), vec4<i32>(1i, ~22570i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 26187i), vec2<i32>(-45654i, 1i)), -2147483647i))) {
                case 1i: {
                    var var_2 = arg_0;
                }
                default: {
                    var_1 = false;
                    var_1 = !(25919u > arg_0.d.x);
                    var var_2 = ~_wgslsmith_div_vec2_u32(u_input.a, select(select(vec2<u32>(arg_0.d.x, 35946u), u_input.a, all(vec2<bool>(false, true))), ~u_input.a, vec2<bool>(select(true, false, false), any(vec2<bool>(true, true)))));
                }
            }
            if (true) {
                global0 = array<vec4<f32>, 29>();
                var_1 = true;
            }
        }
        default: {
            for (var var_1: i32; ; var_1 -= 1i) {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
                var var_2 = arg_0.e;
                var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x))));
                let var_4 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-arg_0.c)));
                continue;
            }
            global0 = array<vec4<f32>, 29>();
            switch (i32(-1i) * -28863i) {
                case -7293i: {
                    global0 = array<vec4<f32>, 29>();
                    let var_1 = Struct_2(Struct_1(~59755u, ~(u_input.a | vec2<u32>(arg_0.a, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * -142f) * 682f)), firstTrailingBit(max(u_input.a, u_input.a) << (vec2<u32>(96869u, 54191u) % vec2<u32>(32u))), ~80237u), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(arg_0.e, ~1u, _wgslsmith_mod_u32(27093u, arg_0.e)), ~vec3<u32>(arg_0.e, 4294967295u, 0u) << ((vec3<u32>(u_input.a.x, 1u, 1u) & vec3<u32>(47787u, 1u, arg_0.a)) % vec3<u32>(32u))), ~countOneBits(vec3<u32>(1u, u_input.a.x, u_input.a.x)) | abs(~vec3<u32>(u_input.a.x, u_input.a.x, arg_0.b.x)), firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 8266u, 0u), vec3<u32>(arg_0.d.x, 0u, 27247u))))));
                }
                case i32(-2147483648): {
                    global0 = array<vec4<f32>, 29>();
                    let var_1 = -(-58634i | (select(_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(-22861i, 8766i, 37037i)), 22027i, func_2(arg_0, Struct_2(arg_0, vec3<u32>(u_input.a.x, 780u, u_input.a.x)), 306f, false)) >> (u_input.a.x % 32u)));
                    let var_2 = select(select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(select(false, false, true), arg_0.c > -178f)), func_2(Struct_1(_wgslsmith_sub_u32(arg_0.a, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(step(arg_0.c, var_0.x)), select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, false)), ~arg_0.e), Struct_2(arg_0, ~vec3<u32>(arg_0.d.x, u_input.a.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1451f + var_0.x)), false)), !vec2<bool>(-var_1 > var_1, true), false);
                }
                case 12676i: {
                    return Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4294967295u, 1u), arg_0.b.x), vec2<u32>(u_input.a.x << (4294967295u % 32u), _wgslsmith_mod_u32(1u, u_input.a.x))), (arg_0.d & vec2<u32>(u_input.a.x, arg_0.d.x & 46124u)) >> (_wgslsmith_mult_vec2_u32(firstLeadingBit(select(vec2<u32>(4294967295u, 33025u), u_input.a, true)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.b.x) & vec2<u32>(arg_0.d.x, 0u), min(u_input.a, vec2<u32>(arg_0.b.x, arg_0.b.x)))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(arg_0.c, 1000f)), vec2<u32>(select(firstLeadingBit(arg_0.e), min(~4294967295u, 13825u), !any(vec3<bool>(true, false, false))), 24472u), max(~reverseBits(1u), _wgslsmith_add_u32(arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 12648u, 61806u), ~vec3<u32>(u_input.a.x, 4294967295u, 0u)))));
                }
                case -1i: {
                    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2297f, 1951f))));
                }
                default: {
                    return arg_0;
                }
            }
        }
    }
    global0 = array<vec4<f32>, 29>();
    let var_1 = -((-21493i >> (1u % 32u)) << (arg_0.e % 32u));
    let var_2 = _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) - _wgslsmith_f_op_vec2_f32(abs(var_0))));
    return Struct_1(~64149u, ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, arg_0.d >> (vec2<u32>(u_input.a.x, arg_0.a) % vec2<u32>(32u))), vec2<u32>(4294967295u, _wgslsmith_add_u32(u_input.a.x, arg_0.d.x))), _wgslsmith_f_op_f32(-1324f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c + 433f), _wgslsmith_f_op_f32(var_2.x * -195f)))))), reverseBits(u_input.a), ~24974u);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> Struct_2 {
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    var var_0 = ~min(~1i, ~(i32(-1i) * -13664i) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -7340i), vec4<i32>(30768i, 0i, 7438i, 32152i)));
    var var_1 = Struct_2(Struct_1(~(arg_0.b.x << (arg_0.a.b.x % 32u)) & arg_0.b.x, u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.c, -1000f))))), vec2<u32>(u_input.a.x, u_input.a.x), 4294967295u), reverseBits(arg_0.b));
    var var_2 = -(2147483647i ^ -firstTrailingBit(i32(-2147483648)));
    return Struct_2(func_5(Struct_1(u_input.a.x, var_1.b.zx ^ vec2<u32>(1u, 0u), -109f, vec2<u32>(4294967295u, ~arg_0.a.b.x), ~var_1.b.x << (~38834u % 32u))), _wgslsmith_mod_vec3_u32(reverseBits(arg_0.b) | vec3<u32>(_wgslsmith_clamp_u32(var_1.b.x, u_input.a.x, u_input.a.x), 1u, ~arg_0.b.x), vec3<u32>(1u, 56216u, arg_0.b.x)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: i32) -> vec4<i32> {
    global0 = array<vec4<f32>, 29>();
    var var_0 = ~abs(firstTrailingBit(~vec4<i32>(0i, arg_0, i32(-2147483648), -1i)));
    var var_1 = func_4(Struct_2(Struct_1(u_input.a.x, reverseBits(select(vec2<u32>(0u, 0u), vec2<u32>(u_input.a.x, u_input.a.x), true)), 581f, reverseBits(u_input.a), ~arg_1.x), arg_1.wyw), !select(vec3<bool>(true, all(vec4<bool>(false, true, false, true)), all(vec3<bool>(true, true, true))), vec3<bool>(true, true, false), true), -147f);
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(i32(-2147483648), arg_2, var_0.x) << (countOneBits(vec3<u32>(var_1.b.x, 1u, 1u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, 0i, -37951i), var_0.wxz)), vec3<i32>(var_0.x, _wgslsmith_sub_i32(~arg_2, arg_2), arg_0)) & _wgslsmith_div_vec3_i32(abs(_wgslsmith_div_vec3_i32(~var_0.xzy, vec3<i32>(64311i, -8579i, var_0.x))), min(var_0.zww, vec3<i32>(arg_0, 0i, -26320i)) | vec3<i32>(i32(-1i) * -61726i, firstTrailingBit(var_0.x), arg_2));
    for (var var_3 = 19593i; ; var_3 -= 1i) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        var_0 = vec4<i32>(arg_0, _wgslsmith_sub_i32(abs(arg_0), -(~(-33134i))), arg_0, -30114i);
        let var_4 = vec3<f32>(_wgslsmith_f_op_f32(min(var_1.a.c, _wgslsmith_f_op_f32(trunc(2565f)))), var_1.a.c, var_1.a.c);
        var var_5 = _wgslsmith_f_op_f32(-var_1.a.c);
        switch (var_0.x) {
            case 0i: {
            }
            case 15501i: {
                continue;
            }
            default: {
                let var_6 = var_0.zxx;
                let var_7 = arg_2;
                var var_8 = func_4(func_4(Struct_2(Struct_1(~0u, vec2<u32>(7144u, 0u), _wgslsmith_f_op_f32(1678f - -683f), u_input.a >> (u_input.a % vec2<u32>(32u)), var_1.a.b.x), ~vec3<u32>(137505u, 0u, 4294967295u)), !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), _wgslsmith_div_f32(-830f, -262f)), vec3<bool>(_wgslsmith_add_i32(var_7 >> (u_input.a.x % 32u), func_6(var_1.a, vec3<bool>(true, true, true), Struct_2(var_1.a, vec3<u32>(arg_1.x, 42609u, 32982u)))) != (i32(-1i) * -27959i), true, all(vec4<bool>(false, false, false, var_6.x != var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x + var_1.a.c) * var_1.a.c))) * _wgslsmith_f_op_f32(-1f)));
                var var_9 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-254f)))) - -108f));
                var_3 = select(-1i, func_6(func_5(Struct_1(1u, vec2<u32>(var_8.a.b.x, 1u), var_1.a.c, vec2<u32>(0u, 68829u), _wgslsmith_add_u32(93526u, var_8.b.x))), vec3<bool>(true, true, true), Struct_2(var_1.a, min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.b.x, var_1.a.d.x), var_1.b), vec3<u32>(6975u, var_8.b.x, 1u)))), true);
            }
        }
    }
    return select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-9995i, var_2.x, 0i, 0i), select(firstTrailingBit(vec4<i32>(-1i, -1i, var_2.x, arg_2)) | _wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0, var_0.x, var_0.x), vec4<i32>(arg_2, var_0.x, -28542i, var_2.x)), -vec4<i32>(i32(-2147483648), 1i, 16876i, arg_0) >> (arg_1 % vec4<u32>(32u)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), vec4<i32>(countOneBits(2147483647i), abs(_wgslsmith_sub_i32(var_0.x, 18004i)), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(arg_0, var_2.x)), 1i)), select(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_0, 38770i, arg_2), min(vec4<i32>(58134i, -76793i, 11532i, arg_2), vec4<i32>(var_2.x, var_2.x, var_2.x, var_0.x))), ~(-select(vec4<i32>(arg_0, arg_2, i32(-2147483648), 2147483647i), vec4<i32>(arg_0, arg_0, arg_2, 2147483647i), true)), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), false);
}

fn func_1(arg_0: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(arg_0.x, vec2<u32>(44064u >> (arg_0.x % 32u), _wgslsmith_div_u32(arg_0.x & u_input.a.x, ~54438u)), 1155f, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4311u, u_input.a.x), vec2<u32>(u_input.a.x, arg_0.x))), u_input.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.x, 68755u, arg_0.x), vec3<u32>(arg_0.x >> (arg_0.x % 32u), ~arg_0.x, 61277u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 1u, 4294967295u), ~vec3<u32>(arg_0.x, 67311u, u_input.a.x)), select(~vec3<u32>(arg_0.x, 13298u, 0u), vec3<u32>(4294967295u, arg_0.x, arg_0.x), true))));
    let var_1 = !vec3<bool>(all(vec4<bool>(true, false, true, all(vec3<bool>(false, false, false)))), true, func_2(var_0.a, Struct_2(var_0.a, var_0.b), 833f, false));
    if (var_1.x) {
        var_0 = Struct_2(var_0.a, ~(~(~var_0.b)));
        var var_2 = ~(~func_3(~0i >> ((5846u >> (u_input.a.x % 32u)) % 32u), vec4<u32>(21447u, min(40864u, var_0.b.x), var_0.a.e | var_0.b.x, 24140u), -1i));
        if (var_1.x) {
            let var_3 = var_0.a;
            let var_4 = true;
            global0 = array<vec4<f32>, 29>();
            let var_5 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) + var_0.a.c), var_3.c)));
        }
        switch (-24882i) {
            default: {
                var var_3 = !(!vec4<bool>(!var_1.x, var_1.x, var_1.x, true));
                var var_4 = func_4(Struct_2(func_5(var_0.a), var_0.b), select(select(vec3<bool>(var_1.x, !var_1.x, any(var_1.zy)), !var_1, !vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1, vec3<bool>(select(any(var_3.yz), select(var_1.x, var_3.x, false), true), !var_3.x, true)), 2611f);
                let var_5 = Struct_1(arg_0.x, firstTrailingBit(_wgslsmith_sub_vec2_u32(reverseBits(arg_0), arg_0) | max(vec2<u32>(var_4.a.e, var_0.a.d.x), arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1505f))), 2824f, any(vec2<bool>(var_3.x, false)))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, var_4.a.a), ~arg_0) >> ((countOneBits(u_input.a) & var_0.b.xx) % vec2<u32>(32u)), 75542u);
                var var_6 = var_1.x | (var_5.c < var_0.a.c);
                var_3 = vec4<bool>(true, true, !(min(_wgslsmith_dot_vec2_u32(var_5.b, arg_0), 8261u) < var_5.d.x), any(!vec4<bool>(false, u_input.a.x <= u_input.a.x, var_1.x, true)));
            }
        }
        var var_3 = func_4(Struct_2(Struct_1(func_5(func_5(Struct_1(u_input.a.x, arg_0, -948f, var_0.b.yx, arg_0.x))).d.x, _wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(var_0.b.zy, arg_0)), func_4(func_4(Struct_2(var_0.a, var_0.b), var_1, 1412f), var_1, _wgslsmith_f_op_f32(floor(var_0.a.c))).a.c, ~vec2<u32>(0u, arg_0.x), _wgslsmith_dot_vec3_u32(~var_0.b, var_0.b | var_0.b)), var_0.b), !select(vec3<bool>(true, !var_1.x, -5165i <= var_2.x), !vec3<bool>(var_1.x, false, true), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)));
    }
    switch (reverseBits(1i)) {
        case -1i: {
            global0 = array<vec4<f32>, 29>();
            var var_2 = ~var_0.b;
            let var_3 = 14372u;
            let var_4 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~firstLeadingBit(~vec4<u32>(4294967295u, 1u, arg_0.x, var_0.b.x)), ~(vec4<u32>(var_0.b.x, u_input.a.x, var_0.a.b.x, 1498u) >> (~vec4<u32>(arg_0.x, var_0.b.x, var_2.x, var_3) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, 25814u), _wgslsmith_sub_u32(64084u, 19734u), ~29808u, 1u)), ~(select(vec4<u32>(var_2.x, var_3, u_input.a.x, 0u), vec4<u32>(arg_0.x, u_input.a.x, 4294967295u, u_input.a.x), var_1.x) | abs(vec4<u32>(13450u, 0u, 0u, 41155u)))));
        }
        case i32(-2147483648): {
            var var_2 = var_1.x;
            if (true) {
                let var_3 = 1375f;
                return _wgslsmith_sub_vec4_u32(firstTrailingBit(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, var_0.b.x, arg_0.x, arg_0.x), vec4<u32>(65850u, u_input.a.x, 5916u, 11280u)) & ~vec4<u32>(u_input.a.x, var_0.a.d.x, 21832u, 4294967295u), vec4<u32>(u_input.a.x, ~23734u, ~0u, arg_0.x), var_1.x | (0u > var_0.a.e))), select(vec4<u32>(_wgslsmith_div_u32(1u, arg_0.x), min(min(0u, 17088u), 4294967295u), func_5(func_4(Struct_2(var_0.a, var_0.b), vec3<bool>(var_1.x, var_1.x, var_1.x), var_3).a).b.x, ~_wgslsmith_add_u32(11055u, 27643u)), vec4<u32>(_wgslsmith_div_u32(var_0.a.a, u_input.a.x) << (arg_0.x % 32u), 0u, abs(arg_0.x), var_0.b.x & 1u), vec4<bool>(false, var_1.x, !var_1.x, var_1.x)));
            }
            if (var_1.x) {
                var var_3 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(1i, i32(-1i) * -17313i, i32(-2147483648)) | vec3<i32>(_wgslsmith_div_i32(2147483647i, -5842i), _wgslsmith_dot_vec2_i32(vec2<i32>(36619i, 0i), vec2<i32>(i32(-2147483648), 0i)), reverseBits(1i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(20542i), _wgslsmith_dot_vec2_i32(vec2<i32>(29823i, -1i), vec2<i32>(-1i, 8756i)), 53654i), -(~vec3<i32>(-9888i, 2147483647i, -55616i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, -1i) << (vec3<u32>(var_0.a.b.x, 64533u, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(33355i, 1i, 1i))) | (~select(vec3<i32>(33556i, -1i, -15733i), vec3<i32>(2147483647i, 1i, -1i), vec3<bool>(false, true, var_1.x)) << (var_0.b % vec3<u32>(32u))));
            }
            if (!func_2(Struct_1(_wgslsmith_add_u32(4294967295u, ~var_0.a.e), var_0.a.d, var_0.a.c, _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.x, 1u), arg_0), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(arg_0.x, 0u, 61008u)))), Struct_2(func_4(Struct_2(var_0.a, var_0.b), !var_1, 1000f).a, var_0.b), func_5(Struct_1(max(u_input.a.x, 4294967295u), ~vec2<u32>(4294967295u, 0u), -995f, vec2<u32>(67143u, 9827u) ^ u_input.a, 1u)).c, var_1.x)) {
                global0 = array<vec4<f32>, 29>();
                global0 = array<vec4<f32>, 29>();
            }
        }
        case 22505i: {
            return _wgslsmith_mod_vec4_u32(~(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(43369u, 26081u, u_input.a.x, 4019u), vec4<u32>(var_0.a.d.x, arg_0.x, u_input.a.x, 3880u)), ~vec4<u32>(var_0.b.x, 4294967295u, 1u, 2523u))), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.a.e, arg_0.x, arg_0.x, 6888u)), max(~vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), vec4<u32>(24204u, 1u, 4294967295u, 8188u) & vec4<u32>(var_0.a.a, 0u, var_0.b.x, 65508u))));
        }
        default: {
            var_0 = func_4(Struct_2(var_0.a, var_0.b & var_0.b), select(var_1, var_1, select(vec3<bool>(any(var_1), false, u_input.a.x != arg_0.x), vec3<bool>(false, false, 496f != var_0.a.c), select(var_1, !vec3<bool>(var_1.x, false, var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1)))), var_0.a.c);
            if (!var_1.x) {
                var_0 = func_4(Struct_2(Struct_1(~72947u, ~firstLeadingBit(vec2<u32>(0u, var_0.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.a.c)))), var_0.b.zx & ~u_input.a, max(arg_0.x, 1u) ^ u_input.a.x), vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.b, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, 7870u, arg_0.x), vec3<u32>(arg_0.x, 0u, var_0.a.b.x))), u_input.a.x, var_0.b.x)), !var_1, 923f);
                let var_2 = func_4(func_4(Struct_2(var_0.a, var_0.b), var_1, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.c + 1000f), _wgslsmith_f_op_f32(-var_0.a.c))))), !select(var_1, var_1, !select(var_1, var_1, var_1)), _wgslsmith_f_op_f32(step(var_0.a.c, _wgslsmith_f_op_f32(-var_0.a.c))));
                let var_3 = func_4(Struct_2(var_2.a, ~vec3<u32>(func_4(Struct_2(var_0.a, var_2.b), vec3<bool>(false, true, false), 254f).a.b.x, var_0.a.d.x, _wgslsmith_div_u32(4294967295u, 37668u))), var_1, var_2.a.c);
                var_0 = func_4(Struct_2(Struct_1(~6608u, func_4(Struct_2(var_0.a, var_0.b), vec3<bool>(true, var_1.x, false), var_3.a.c).a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.c))), vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.a, 61232u, 1u, var_3.a.b.x), vec4<u32>(4294967295u, arg_0.x, 1u, 1u))), abs(22109u)), vec3<u32>(var_3.a.a, 1u, u_input.a.x)), var_1, -536f);
            }
        }
    }
    for (var var_2 = -64349i; true; var_2 += 1i) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            break;
        }
        let var_3 = vec2<i32>(func_6(func_5(var_0.a), var_1, func_4(func_4(func_4(Struct_2(var_0.a, vec3<u32>(29521u, u_input.a.x, var_0.a.d.x)), vec3<bool>(var_1.x, false, true), 615f), var_1, var_0.a.c), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.c))))), 11841i);
        continue;
    }
    return select(vec4<u32>(64445u, var_0.b.x, ~u_input.a.x, _wgslsmith_mult_u32(~4294967295u << (1u % 32u), ~4294967295u)), ~vec4<u32>(~67215u, 1u, 0u, var_0.a.b.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    for (var var_0 = 2147483647i; var_0 <= i32(-2147483648); ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        return;
    }
    var var_0 = -18953i;
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, countOneBits(u_input.a.x), u_input.a.x, 17005u), ~(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), ~vec4<u32>(118229u, u_input.a.x, u_input.a.x, u_input.a.x)) << (_wgslsmith_sub_vec4_u32(func_1(vec2<u32>(u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, 16205u, u_input.a.x)) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, func_5(Struct_1(80471u, u_input.a, 265f, u_input.a, u_input.a.x)).a), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), ~_wgslsmith_mod_u32(func_1(u_input.a).x, 54903u)));
    for (var var_2 = 47920i; ; ) {
        if (LOOP_COUNTERS[14u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
        break;
    }
    for (var var_2 = 2147483647i; true; var_2 -= 1i) {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        break;
    }
    switch (_wgslsmith_div_i32(((1i & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 884i, i32(-2147483648), 0i), vec4<i32>(-13749i, 3913i, 27323i, 44175i))) ^ i32(-2147483648)) << (~_wgslsmith_dot_vec3_u32(~var_1.zzx, max(vec3<u32>(var_1.x, var_1.x, 1642u), var_1.yzy)) % 32u), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(~(i32(-2147483648)), _wgslsmith_dot_vec3_i32(vec3<i32>(52143i, 20560i, -1i), vec3<i32>(1i, -12156i, -44801i))), 1i), -1i))) {
        case 1i: {
            let var_2 = i32(-2147483648);
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            }
            let var_3 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), !vec2<bool>(true, abs(44087u) <= _wgslsmith_dot_vec2_u32(var_1.zw, u_input.a)), vec2<bool>(all(vec3<bool>(true, true, true)), true));
        }
        case -3508i: {
            var_1 = vec4<u32>(abs(29162u), 66829u, u_input.a.x >> (u_input.a.x % 32u), 19937u);
        }
        default: {
            var var_2 = Struct_1(u_input.a.x, ~var_1.wz ^ ~var_1.zx, _wgslsmith_f_op_f32(trunc(110f)), vec2<u32>(abs(firstLeadingBit(0u)), countOneBits(func_5(Struct_1(u_input.a.x, u_input.a, 1137f, vec2<u32>(0u, 1u), 1u)).a)) ^ func_5(func_4(func_4(Struct_2(Struct_1(49220u, vec2<u32>(4294967295u, 163u), 1085f, vec2<u32>(1u, u_input.a.x), 4294967295u), vec3<u32>(59063u, var_1.x, u_input.a.x)), vec3<bool>(false, false, true), 1428f), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-810f)).a).d, 27865u);
            var_1 = ~_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.e, u_input.a.x, 4294967295u), vec4<u32>(36510u, var_2.d.x, 0u, 22765u)) & firstLeadingBit(vec4<u32>(var_2.a, 1u, var_1.x, 76553u)), ~reverseBits(vec4<u32>(var_1.x, 4509u, u_input.a.x, 4768u) ^ vec4<u32>(u_input.a.x, 21734u, 4294967295u, 5110u)));
        }
    }
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(~(~9208i), 33405i)), vec2<u32>(~max(var_1.x, select(u_input.a.x, 1u, true)), u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1431f), func_3(func_3(-1i, ~vec4<u32>(39929u, u_input.a.x, 4294967295u, u_input.a.x), min(2147483647i, 24470i)).x, vec4<u32>(120120u, _wgslsmith_sub_u32(1u, 0u), ~(3849u | u_input.a.x), var_1.x), func_6(func_5(func_5(Struct_1(0u, var_1.wz, -1819f, var_1.xx, u_input.a.x))), vec3<bool>(true, true, true), func_4(Struct_2(Struct_1(1u, vec2<u32>(46492u, var_1.x), -233f, u_input.a, 44311u), vec3<u32>(u_input.a.x, var_1.x, 4294967295u)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), _wgslsmith_div_f32(303f, 423f)))), -reverseBits(vec2<i32>(_wgslsmith_mult_i32(-1i, 1i), -1i)));
}

