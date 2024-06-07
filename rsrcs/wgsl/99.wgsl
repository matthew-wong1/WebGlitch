// {"0:0":[104,195,62,11]}
// Seed: 9302059284916785770

struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<bool>(true, false), 41978, vec4<i32>(-1, 1, 2147483647, 0), false, false), vec4<f32>(136.0, 221.0, 156.0, 288.0), Struct_1(vec2<bool>(true, true), -5853, vec4<i32>(52387, 1, -2147483648, 2147483647), false, true), Struct_1(vec2<bool>(false, true), -1, vec4<i32>(-2147483648, 0, -1, -26388), false, false)), Struct_2(Struct_1(vec2<bool>(false, true), -18408, vec4<i32>(10479, 2147483647, 2147483647, 2147483647), false, true), vec4<f32>(-1195.0, 2103.0, 786.0, 462.0), Struct_1(vec2<bool>(true, true), 0, vec4<i32>(0, 69243, 4342, 2147483647), false, true), Struct_1(vec2<bool>(true, true), -80751, vec4<i32>(0, 29949, -1, -45377), true, false)), Struct_2(Struct_1(vec2<bool>(true, false), 36880, vec4<i32>(-1, 1, -22954, -55547), false, false), vec4<f32>(-810.0, -1000.0, -634.0, -1000.0), Struct_1(vec2<bool>(true, false), -13397, vec4<i32>(-14117, 2147483647, 0, 1), true, true), Struct_1(vec2<bool>(false, false), -16854, vec4<i32>(1, 1, 2147483647, 0), true, false)), Struct_2(Struct_1(vec2<bool>(true, false), -1, vec4<i32>(4381, 1, 16310, 20210), false, false), vec4<f32>(338.0, 1000.0, -505.0, 559.0), Struct_1(vec2<bool>(true, true), -2147483648, vec4<i32>(1, 1, -2147483648, -2147483648), true, false), Struct_1(vec2<bool>(true, true), -11286, vec4<i32>(4120, -2147483648, -1, 2147483647), false, true)), Struct_2(Struct_1(vec2<bool>(false, true), -10121, vec4<i32>(35346, -23677, -2147483648, 14766), true, false), vec4<f32>(1000.0, 178.0, -505.0, 1397.0), Struct_1(vec2<bool>(true, true), 1, vec4<i32>(0, -5078, -19866, -1), false, false), Struct_1(vec2<bool>(false, false), 1, vec4<i32>(-54359, 0, -8680, 9141), true, true)), Struct_2(Struct_1(vec2<bool>(false, false), 2147483647, vec4<i32>(41178, 1, -8460, 6078), false, true), vec4<f32>(1357.0, 1358.0, -1358.0, -260.0), Struct_1(vec2<bool>(false, true), 39809, vec4<i32>(2147483647, -1, 2147483647, 24053), false, false), Struct_1(vec2<bool>(true, false), -12779, vec4<i32>(0, 0, -2147483648, 0), false, true)), Struct_2(Struct_1(vec2<bool>(true, true), 0, vec4<i32>(14374, 925, 53286, -2147483648), false, false), vec4<f32>(1626.0, -1000.0, -959.0, -1000.0), Struct_1(vec2<bool>(false, false), -10517, vec4<i32>(-2777, -27907, -1, 1), false, false), Struct_1(vec2<bool>(false, false), 1, vec4<i32>(51106, -2147483648, 0, 0), false, false)), Struct_2(Struct_1(vec2<bool>(false, true), -1, vec4<i32>(-1, -1, 59605, -24920), true, false), vec4<f32>(1017.0, 1361.0, -1011.0, 1636.0), Struct_1(vec2<bool>(false, false), 48337, vec4<i32>(-2147483648, -14475, 19751, -1), true, false), Struct_1(vec2<bool>(false, false), 2147483647, vec4<i32>(-2147483648, 0, -1, -2147483648), true, false)), Struct_2(Struct_1(vec2<bool>(false, true), -1, vec4<i32>(-20703, 7515, -2147483648, -62533), false, false), vec4<f32>(1639.0, -834.0, 661.0, 1169.0), Struct_1(vec2<bool>(false, false), 0, vec4<i32>(0, -24152, 43187, -1), false, false), Struct_1(vec2<bool>(true, true), 75655, vec4<i32>(2147483647, 0, -1, -1), false, true)), Struct_2(Struct_1(vec2<bool>(true, true), 40357, vec4<i32>(2147483647, 1, 5872, -1), false, true), vec4<f32>(476.0, -651.0, -812.0, -555.0), Struct_1(vec2<bool>(true, false), -9953, vec4<i32>(-3309, 0, -2147483648, 0), true, false), Struct_1(vec2<bool>(false, false), 2147483647, vec4<i32>(28357, -40659, 0, -2024), true, true)), Struct_2(Struct_1(vec2<bool>(true, true), -2147483648, vec4<i32>(0, 0, 2147483647, 1), false, false), vec4<f32>(1376.0, -898.0, -103.0, -965.0), Struct_1(vec2<bool>(false, true), -45133, vec4<i32>(2147483647, -1, 1115, 41495), false, false), Struct_1(vec2<bool>(true, false), -1, vec4<i32>(4903, 2147483647, -2147483648, 22821), false, true)), Struct_2(Struct_1(vec2<bool>(false, false), 51389, vec4<i32>(-32410, 1, -1, -16771), true, true), vec4<f32>(882.0, 1460.0, -710.0, -721.0), Struct_1(vec2<bool>(false, true), 15170, vec4<i32>(2147483647, -8376, 1, -2147483648), false, false), Struct_1(vec2<bool>(false, true), -2147483648, vec4<i32>(-2147483648, -1, 15532, 75172), false, true)), Struct_2(Struct_1(vec2<bool>(true, true), -1, vec4<i32>(1, -23691, -1473, -1), false, false), vec4<f32>(371.0, -726.0, 120.0, 185.0), Struct_1(vec2<bool>(false, false), -22524, vec4<i32>(51177, -2147483648, 15428, 0), false, false), Struct_1(vec2<bool>(true, true), -22897, vec4<i32>(-2147483648, 2147483647, 2147483647, -1), true, false)), Struct_2(Struct_1(vec2<bool>(false, true), 27051, vec4<i32>(-7406, 8120, 2147483647, -1), false, false), vec4<f32>(-295.0, 590.0, 1000.0, -548.0), Struct_1(vec2<bool>(false, true), -8418, vec4<i32>(1, 0, -3245, 1), false, true), Struct_1(vec2<bool>(true, false), 2147483647, vec4<i32>(-1, 2147483647, -2147483648, 2147483647), true, false)), Struct_2(Struct_1(vec2<bool>(false, true), -1700, vec4<i32>(-2147483648, 1, -34189, -1), false, false), vec4<f32>(-1034.0, -593.0, 1266.0, -1182.0), Struct_1(vec2<bool>(false, false), -19961, vec4<i32>(27737, -2147483648, 2147483647, 29695), true, true), Struct_1(vec2<bool>(true, true), 0, vec4<i32>(2147483647, 110748, 2147483647, 1), false, true)), Struct_2(Struct_1(vec2<bool>(false, true), 0, vec4<i32>(-2147483648, 2973, 33793, -11421), false, true), vec4<f32>(-290.0, -1771.0, -600.0, -1615.0), Struct_1(vec2<bool>(false, false), -1, vec4<i32>(0, 1, 2147483647, -1), false, false), Struct_1(vec2<bool>(true, true), -41541, vec4<i32>(-2147483648, 1, -76806, -2147483648), false, true)), Struct_2(Struct_1(vec2<bool>(true, true), 2147483647, vec4<i32>(-3790, 2147483647, 23254, -2147483648), true, false), vec4<f32>(191.0, -217.0, 1000.0, 1925.0), Struct_1(vec2<bool>(true, true), 0, vec4<i32>(-1, -55849, 20826, 27601), true, true), Struct_1(vec2<bool>(false, true), 9778, vec4<i32>(-30421, 19906, 2147483647, -36450), false, true)), Struct_2(Struct_1(vec2<bool>(true, false), 24443, vec4<i32>(-27524, -1, -2147483648, -33206), false, false), vec4<f32>(978.0, 575.0, 111.0, -562.0), Struct_1(vec2<bool>(false, false), -1, vec4<i32>(2147483647, 1, 0, 2147483647), true, true), Struct_1(vec2<bool>(true, false), 18077, vec4<i32>(-2147483648, -2147483648, 8487, -3906), false, false)), Struct_2(Struct_1(vec2<bool>(false, true), -40023, vec4<i32>(14337, -13624, -2147483648, 0), false, false), vec4<f32>(-778.0, 1000.0, -378.0, 240.0), Struct_1(vec2<bool>(true, false), -25980, vec4<i32>(-2147483648, -1, 0, 23072), true, false), Struct_1(vec2<bool>(false, false), -1, vec4<i32>(-5776, -29466, -5303, -37562), true, true)), Struct_2(Struct_1(vec2<bool>(true, false), -2147483648, vec4<i32>(1, 5960, 1, -15805), false, true), vec4<f32>(-583.0, 522.0, 768.0, 514.0), Struct_1(vec2<bool>(false, false), 2147483647, vec4<i32>(2147483647, -4939, -2820, -24418), false, false), Struct_1(vec2<bool>(true, true), 2147483647, vec4<i32>(-30143, -2147483648, 39345, 2147483647), false, true)), Struct_2(Struct_1(vec2<bool>(false, true), 14102, vec4<i32>(42559, -1, 4440, 2147483647), true, true), vec4<f32>(-669.0, 1665.0, -446.0, -242.0), Struct_1(vec2<bool>(true, false), 26200, vec4<i32>(0, 26761, -27680, 2147483647), true, true), Struct_1(vec2<bool>(true, true), 2147483647, vec4<i32>(-2147483648, 0, -45903, -19926), false, true)), Struct_2(Struct_1(vec2<bool>(true, false), -44083, vec4<i32>(0, 2147483647, 10618, -13343), true, false), vec4<f32>(809.0, 1000.0, 442.0, -1167.0), Struct_1(vec2<bool>(true, true), -1, vec4<i32>(10896, 8014, 0, -2147483648), false, true), Struct_1(vec2<bool>(true, true), 20370, vec4<i32>(-38412, 18728, 0, -44216), true, false)), Struct_2(Struct_1(vec2<bool>(true, false), 51857, vec4<i32>(-5506, -23267, 2147483647, 8659), true, true), vec4<f32>(1468.0, 974.0, 175.0, -633.0), Struct_1(vec2<bool>(false, false), -1, vec4<i32>(-1, -25682, -2147483648, -4015), false, true), Struct_1(vec2<bool>(false, true), -1, vec4<i32>(-1, 60390, -13973, -3333), true, false)), Struct_2(Struct_1(vec2<bool>(false, true), -2147483648, vec4<i32>(-1, -7134, 2147483647, 0), false, false), vec4<f32>(1156.0, 1565.0, -584.0, 1465.0), Struct_1(vec2<bool>(false, true), 1, vec4<i32>(-2147483648, 17849, -27559, 36919), false, true), Struct_1(vec2<bool>(false, true), -1, vec4<i32>(2147483647, -2147483648, 0, 2405), false, false)), Struct_2(Struct_1(vec2<bool>(true, true), -5903, vec4<i32>(-2147483648, 1548, -14865, 12311), true, false), vec4<f32>(-1620.0, 1385.0, 401.0, -860.0), Struct_1(vec2<bool>(false, true), 26725, vec4<i32>(58569, 2147483647, -107939, -15621), true, true), Struct_1(vec2<bool>(false, true), 1, vec4<i32>(-1, 1, 0, 1), false, true)), Struct_2(Struct_1(vec2<bool>(true, true), -1, vec4<i32>(2147483647, -49937, -5919, -24142), true, true), vec4<f32>(-288.0, -429.0, 1290.0, -457.0), Struct_1(vec2<bool>(false, false), 0, vec4<i32>(2147483647, -1, 62689, -26428), true, false), Struct_1(vec2<bool>(true, false), -1115, vec4<i32>(75905, 0, 1, 1), true, false)), Struct_2(Struct_1(vec2<bool>(false, true), -1999, vec4<i32>(-42759, -28026, 14017, -242), false, false), vec4<f32>(213.0, 1281.0, -518.0, -555.0), Struct_1(vec2<bool>(true, true), 0, vec4<i32>(2147483647, -22561, -25211, 29792), false, true), Struct_1(vec2<bool>(false, false), 20221, vec4<i32>(1, 0, -2147483648, -26949), false, false)), Struct_2(Struct_1(vec2<bool>(true, true), -31558, vec4<i32>(-20687, 0, -34788, -7104), true, false), vec4<f32>(536.0, -340.0, 1464.0, 620.0), Struct_1(vec2<bool>(true, true), 1550, vec4<i32>(-2147483648, -32142, -1, -9834), false, true), Struct_1(vec2<bool>(false, true), -1, vec4<i32>(25723, 41975, 1, -2147483648), true, true)), Struct_2(Struct_1(vec2<bool>(true, true), 29198, vec4<i32>(2147483647, -41049, 2147483647, -1), true, true), vec4<f32>(-126.0, 118.0, -1020.0, -692.0), Struct_1(vec2<bool>(false, true), -13802, vec4<i32>(18644, 0, 2147483647, 2147483647), false, true), Struct_1(vec2<bool>(true, false), 60449, vec4<i32>(44495, 0, 2428, 2147483647), true, true)), Struct_2(Struct_1(vec2<bool>(false, true), 0, vec4<i32>(40931, 25174, -8606, -1475), false, false), vec4<f32>(-132.0, -310.0, 1249.0, 2120.0), Struct_1(vec2<bool>(true, true), 51663, vec4<i32>(-18927, -2147483648, -9982, -2050), false, false), Struct_1(vec2<bool>(false, false), 2147483647, vec4<i32>(-21491, 3778, 983, 1), false, true)), Struct_2(Struct_1(vec2<bool>(false, true), -24560, vec4<i32>(1, 0, -1, -1), true, false), vec4<f32>(-1271.0, -259.0, -1833.0, 1000.0), Struct_1(vec2<bool>(false, true), -1, vec4<i32>(-5882, 9817, 0, -2147483648), false, false), Struct_1(vec2<bool>(false, true), -2147483648, vec4<i32>(23011, -2147483648, -2147483648, 42236), false, false)), Struct_2(Struct_1(vec2<bool>(true, true), 0, vec4<i32>(-53384, 1, 2147483647, -2147483648), true, false), vec4<f32>(-277.0, -574.0, 1455.0, 617.0), Struct_1(vec2<bool>(true, false), 25616, vec4<i32>(-28333, -632, 7041, -44464), true, false), Struct_1(vec2<bool>(false, false), 1, vec4<i32>(4050, -2147483648, -2931, -1), true, false)));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), -1, vec4<i32>(-1520, 2147483647, -2147483648, 39062), false, false);

var<private> global2: array<vec2<f32>, 30>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), 1, vec4<i32>(0, -43429, -2147483648, 22176), false, true), vec4<f32>(912.0, -1588.0, -1358.0, 516.0), Struct_1(vec2<bool>(true, true), 1, vec4<i32>(1, -8149, -10702, 5376), true, true), Struct_1(vec2<bool>(false, false), -22435, vec4<i32>(2147483647, -9268, -12963, 3918), false, true));

var<private> global4: Struct_2;

var<private> LOOP_COUNTERS: array<u32, 16>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1]))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: f32) -> vec2<i32> {
    let var_0 = Struct_1(select(select(global4.d.a, select(vec2<bool>(global4.a.d, arg_0.d.d), select(vec2<bool>(false, false), vec2<bool>(global1.d, arg_0.d.d), global3.c.a), true & true), global3.c.a), vec2<bool>(!(956.0 >= 1915.0), all(!vec4<bool>(true, global4.d.d, true, arg_0.d.a.x))), false), -2147483648, firstTrailingBit(arg_0.c.c) | (arg_1.c.c >> (_wgslsmith_div_vec4_u32(vec4<u32>(88001u, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 3691u)) % vec4<u32>(32u))), false, !arg_0.d.d);
    global0 = array<Struct_2, 32>();
    var var_1 = arg_0;
    switch (firstTrailingBit(min(var_1.c.c.x, min(-13618, max(_wgslsmith_clamp_i32(-418, global1.b, arg_1.d.c.x), countOneBits(arg_0.d.b)))))) {
        case -4198: {
            var var_2 = Struct_1(!select(select(!vec2<bool>(arg_0.a.e, true), !vec2<bool>(true, true), vec2<bool>(global3.a.a.x, var_0.d)), select(select(vec2<bool>(false, true), global4.a.a, vec2<bool>(arg_1.c.a.x, false)), vec2<bool>(global3.a.e, global3.c.e), !vec2<bool>(global4.d.d, var_0.d)), arg_1.d.a), select(-19715, _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(global4.c.c, var_0.c), global1.c), !true), _wgslsmith_mult_vec4_i32(arg_0.c.c, (vec4<i32>(0, global3.c.b, -2147483648, arg_0.c.c.x) >> (arg_2 % vec4<u32>(32u))) ^ global1.c), global1.d, abs(arg_2.x) < _wgslsmith_clamp_u32(4294967295u, arg_2.x, firstTrailingBit(4556u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(55013u, 14398u, 65673u, arg_2.x), vec4<u32>(11813u, 4294967295u, arg_2.x, 83216u))));
            for (var var_3 = countOneBits(u_input.a & -var_0.b) | (var_2.b << (52423u % 32u)); var_3 >= -64429; var_3 -= 1) {
                if (LOOP_COUNTERS[0u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
                let var_4 = ~(~arg_2.x);
                let var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(global4.d.b, abs(countOneBits(-53415)), firstTrailingBit(3030 ^ -4584)), global4.a.b), _wgslsmith_div_vec2_i32(var_1.d.c.yw & global3.a.c.yz, abs(var_1.d.c.zy << (arg_2.wz % vec2<u32>(32u)))) & -arg_0.a.c.xz);
                let var_6 = global3.b.xxx;
                continue;
            }
            var var_3 = var_1.a.b;
            loop {
                if (LOOP_COUNTERS[1u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
                continue;
            }
            let var_4 = max(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(1, var_2.b, global4.d.b) << (~53534u % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(-23933, 2147483647), -global3.a.b)), vec2<i32>(-58522, _wgslsmith_div_i32(min(-2147483648, var_1.d.c.x), arg_0.c.c.x ^ u_input.a))), -vec2<i32>(var_1.a.b, -global4.d.b));
        }
        case -2147483648: {
            if (global1.d) {
                var var_2 = vec3<f32>(572.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b.x + 155.0), _wgslsmith_f_op_f32(208.0 * arg_0.b.x)))))), -1637.0);
            }
            let var_2 = Struct_1(select(vec2<bool>(!var_1.a.d, !(!global4.a.e)), !select(global3.d.a, global1.a, !true), var_1.b.x > global4.b.x), 8078, countOneBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(-14964, -3664, 0, 0), -(vec4<i32>(var_1.a.b, -1, 2147483647, 39397) | vec4<i32>(2147483647, 0, var_0.c.x, -1)))), !select(global3.c.d, global1.e, any(select(vec4<bool>(true, global1.d, true, var_0.a.x), vec4<bool>(false, true, global4.c.d, false), true))), !true);
            var var_3 = Struct_2(Struct_1(vec2<bool>(select(global3.a.a.x, false, var_1.a.a.x) || !false, !true), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647, 1), var_2.c.yz), -15413), var_2.c, true, false), vec4<f32>(arg_1.b.x, 417.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3, 1639.0)))), _wgslsmith_f_op_f32(-459.0)), Struct_1(!select(select(vec2<bool>(global1.e, true), var_0.a, global3.d.d), var_0.a, !arg_0.d.d), _wgslsmith_mult_i32(-reverseBits(global4.a.b), firstLeadingBit(-global3.a.c.x)), vec4<i32>(-30449, -35338, -18659, global3.d.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-841.0 - arg_3) * arg_0.b.x) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-767.0 - arg_0.b.x))), all(!(!vec3<bool>(var_2.e, false, global3.a.a.x)))), Struct_1(vec2<bool>(true, global3.c.a.x), var_0.c.x, firstLeadingBit(countOneBits(-vec4<i32>(arg_1.a.b, 7576, 17693, 2471))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) + _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)) <= _wgslsmith_f_op_f32(max(919.0, _wgslsmith_f_op_f32(abs(-590.0)))), _wgslsmith_f_op_f32(global4.b.x - 1261.0) == 1000.0));
            return -arg_0.a.c.yw;
        }
        case 19860: {
            let var_2 = global4.a;
            var var_3 = Struct_1(var_0.a, _wgslsmith_mod_i32(global4.a.b, -1), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_1.d.c.wyx, vec3<i32>(arg_1.c.c.x, arg_1.c.b, var_0.b)), var_2.c.x, -1, max(1, -2147483648)) | -(~var_1.a.c), var_0.c), all(select(vec4<bool>(!true, global4.b.x >= global4.b.x, all(vec2<bool>(var_2.d, false)), arg_2.x < arg_2.x), select(vec4<bool>(true, var_0.d, global1.a.x, true), select(vec4<bool>(true, arg_0.a.e, false, global4.c.e), vec4<bool>(false, false, false, global1.d), arg_1.c.e), !vec4<bool>(global4.c.a.x, global4.a.d, global1.a.x, global1.e)), var_2.d)), arg_1.d.e);
            global1 = global3.c;
        }
        case 22366: {
            for (var var_2: i32; global1.d; var_2 += 1) {
                if (LOOP_COUNTERS[2u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
                var var_3 = global0[_wgslsmith_index_u32(arg_2.x, 32u)];
                let var_4 = arg_1;
                var var_5 = global3.d.a;
                let var_6 = min(vec4<u32>(arg_2.x, ~select(max(0u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(6285u, 0u, arg_2.x, arg_2.x), vec4<u32>(36850u, 33245u, 0u, 0u)), true), ~(max(4294967295u, 2682u) | (arg_2.x & 9562u)), _wgslsmith_dot_vec2_u32(select(arg_2.wx, vec2<u32>(arg_2.x, arg_2.x), true) ^ ~vec2<u32>(51635u, 51457u), arg_2.zz)), max(arg_2, vec4<u32>(reverseBits(34342u), ~(~arg_2.x), 16608u, ~4294967295u)));
            }
            var_1 = Struct_2(Struct_1(!vec2<bool>(any(vec3<bool>(global4.c.a.x, arg_1.c.e, true)), false), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, arg_1.a.c.x), firstTrailingBit(vec2<i32>(global4.d.b, 18993))) & -32450, firstLeadingBit(~vec4<i32>(global3.c.b, arg_0.d.c.x, -29016, global4.d.b)), arg_0.d.a.x, !global4.d.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(646.0, global4.b.x, var_1.b.x, 941.0), vec4<f32>(-1000.0, arg_0.b.x, arg_0.b.x, -293.0))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global4.b.x, global4.b.x, -1582.0, 1053.0), vec4<f32>(241.0, 1000.0, -900.0, 1385.0)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.b))))), arg_0.d, Struct_1(!arg_1.a.a, _wgslsmith_dot_vec2_i32(global3.a.c.ww, -var_1.c.c.wx), global1.c, select(global3.c.d, !global1.a.x, global1.a.x), any(select(vec2<bool>(var_0.e, var_0.d), vec2<bool>(true, global1.e), var_1.a.a.x))));
            var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-546.0, 1000.0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-777.0, global3.b.x)))))));
            global4 = Struct_2(Struct_1(!(!(!arg_1.a.a)), arg_1.a.c.x, vec4<i32>(firstLeadingBit(-1), _wgslsmith_dot_vec2_i32(abs(arg_1.d.c.ww), ~global4.a.c.ww), global3.d.c.x, 1), all(!vec3<bool>(arg_1.d.e, arg_0.d.d, false)), !global4.d.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(global4.b, var_1.b)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(global4.b.x * -1654.0), _wgslsmith_f_op_f32(f32(-1.0) * -901.0), _wgslsmith_f_op_f32(-global3.b.x))))), var_0, arg_1.c);
        }
        default: {
            let var_2 = arg_0.d.b;
            global3 = global0[_wgslsmith_index_u32(28431u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(~arg_2.zw), arg_2.wy), vec2<u32>(_wgslsmith_mod_u32(arg_2.x, max(arg_2.x, 64747u)), ~6956u << (1u % 32u))) % 32u), 32u)];
            var var_3 = 0u;
            let var_4 = vec4<bool>(global3.d.a.x, !(-1 == (_wgslsmith_dot_vec4_i32(global4.d.c, vec4<i32>(-2147483648, 0, global1.b, var_2)) ^ ~1)), !(!(!true)), true && all(vec2<bool>(false, 1u > arg_2.x)));
            return _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.c.c.wy >> (~arg_2.xw % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(~vec2<i32>(-24097, var_1.c.c.x), max(arg_0.d.c.xy, vec2<i32>(global3.c.c.x, var_0.c.x)))), var_1.c.c.zz), vec2<i32>(max(_wgslsmith_div_i32(arg_1.d.c.x, 14482), 0), -_wgslsmith_clamp_i32(arg_1.a.c.x, -30835, global1.c.x)), vec2<i32>(1, _wgslsmith_dot_vec2_i32(global3.c.c.yy, vec2<i32>(49029, 0))));
        }
    }
    var var_2 = vec4<bool>(!(!all(var_0.a)), !any(vec3<bool>(false, arg_0.c.e, !false)), true || !arg_0.a.d, all(vec2<bool>(false, all(var_0.a))));
    return firstLeadingBit(_wgslsmith_add_vec2_i32(arg_1.d.c.yx, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, var_1.d.c.x), var_1.c.c.wz), arg_0.d.c.wx), vec2<i32>(global1.b, var_0.c.x) | _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.d.c.x, 1), var_0.c.zy))));
}

fn func_5() -> i32 {
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        continue;
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
            break;
        }
    }
    let var_0 = Struct_1(!select(!global1.a, global1.a, !(!global4.d.a.x)), 64194, -vec4<i32>(~(-2147483648 >> (4294967295u % 32u)), ~(global3.a.b & 5494), ~(~(-2147483648)), -(~global3.c.c.x)), _wgslsmith_mod_u32(~26849u, firstTrailingBit(59835u | 29595u)) >= 44607u, any(!vec3<bool>(any(vec4<bool>(false, true, global3.d.e, false)), false, !false)));
    for (var var_1 = -55078; var_1 < -52896; var_1 += 1) {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        loop {
            if (LOOP_COUNTERS[7u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            var_1 = ~0;
            var_1 = reverseBits(0);
            var var_2 = Struct_1(var_0.a, i32(-1) * -1, vec4<i32>(_wgslsmith_dot_vec2_i32(func_6(global0[_wgslsmith_index_u32(27333u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], vec4<u32>(68506u, 50416u, 47751u, 1u), -2217.0), ~vec2<i32>(global1.b, global3.a.c.x)) ^ u_input.a, -_wgslsmith_add_i32(u_input.a, 30258), var_0.c.x, ~(i32(-1) * -1)), global3.a.e, var_0.d);
            let var_3 = Struct_1(vec2<bool>(global1.e, global4.d.d & all(vec2<bool>(global4.a.e, var_0.d))), 0, var_0.c, !global1.d || !false, true);
            continue;
        }
        var var_2 = countOneBits(~vec3<i32>(1, max(0, i32(-1) * -65395), -_wgslsmith_mult_i32(1, -21683)));
        for (var var_3 = -16367; var_3 >= -1; global4 = Struct_2(Struct_1(vec2<bool>(all(vec2<bool>(true, false)), var_0.e), reverseBits(global1.b), countOneBits(max(vec4<i32>(global4.d.c.x, 1, var_0.c.x, var_2.x), var_0.c)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1928u, 1u, 34980u, 23260u)) % vec4<u32>(32u)), !any(!vec3<bool>(global4.d.d, true, global3.c.d)), global3.c.e), vec4<f32>(global4.b.x, 1356.0, _wgslsmith_f_op_f32(min(global4.b.x, global4.b.x)), -1872.0), Struct_1(global3.c.a, -2147483648, ~global4.d.c, !any(vec4<bool>(true, var_0.a.x, global1.e, var_0.a.x)), false), var_0)) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        }
        loop {
            if (LOOP_COUNTERS[9u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            continue;
        }
    }
    let var_1 = Struct_1(select(vec2<bool>(global3.b.x > _wgslsmith_f_op_f32(f32(-1.0) * -731.0), global4.a.d), !vec2<bool>(!global1.d, global3.a.d), global1.a), ~0, countOneBits(firstTrailingBit(firstLeadingBit(select(vec4<i32>(u_input.a, 1, 1, global3.d.b), global4.c.c, true)))), all(vec2<bool>(false, true)), global1.a.x && var_0.e);
    return -2147483648;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(vec2<bool>(global3.c.e, all(vec2<bool>(arg_0 > arg_0, global1.a.x && false))), i32(-1) * -reverseBits(-global3.a.c.x), global3.d.c ^ _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-35451, -10753), global1.c.zx), global4.a.c.x, -12395, 0), vec4<i32>(arg_1.x, -2147483648, func_5(), -4007)), true, any(select(vec2<bool>(global1.e, false & false), global4.a.a, ~31085u >= (1u >> (4294967295u % 32u)))));
    var var_1 = abs(~abs((vec2<u32>(arg_0, 4294967295u) | vec2<u32>(arg_0, 4294967295u)) ^ (vec2<u32>(1u, arg_0) >> (vec2<u32>(1u, arg_0) % vec2<u32>(32u)))));
    global1 = global4.c;
    global3 = Struct_2(Struct_1(global1.a, 14191, -select(-vec4<i32>(arg_1.x, var_0.c.x, u_input.a, global1.c.x), ~vec4<i32>(global3.d.c.x, global3.d.b, arg_1.x, 1133), vec4<bool>(global3.a.a.x, true, true, false)), global1.d, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-786.0, global4.b.x, -567.0, -1025.0) * vec4<f32>(1073.0, global4.b.x, -895.0, -1000.0)) - vec4<f32>(455.0, 1344.0, -264.0, 2197.0)), _wgslsmith_f_op_vec4_f32(sign(global4.b))))), var_0, var_0);
    let var_2 = global0[_wgslsmith_index_u32(var_1.x, 32u)];
    return global0[_wgslsmith_index_u32(~var_1.x, 32u)];
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> vec4<bool> {
    global3 = arg_1;
    global2 = array<vec2<f32>, 30>();
    for (; global3.d.e; ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        var var_0 = func_4(~(~67630u), global3.a.c.zx);
        if (true == (arg_3 || (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))) < global3.b.x))) {
        }
        break;
    }
    for (; ; ) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_0 = reverseBits(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(26330u, arg_0, 12978u)) ^ (~vec3<u32>(1u, arg_0, 0u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(12556u, 70849u, 1u), vec3<u32>(arg_0, arg_0, 4294967295u)) % vec3<u32>(32u))), ~vec3<u32>(abs(28499u), 4294967295u, arg_0)));
        loop {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        }
    }
    global1 = func_4(4294967295u, vec2<i32>(-reverseBits(36070), -(~(-1 | 0)))).c;
    return !(!select(vec4<bool>(false, global1.d, select(true, global3.c.e, arg_1.c.a.x), any(vec2<bool>(false, global4.d.d))), select(!vec4<bool>(false, true, true, global1.a.x), !vec4<bool>(true, false, global3.a.d, global4.d.a.x), !vec4<bool>(true, arg_1.d.e, false, global3.c.a.x)), vec4<bool>(global4.c.a.x, global4.c.d, any(vec3<bool>(arg_1.c.e, global4.c.d, global1.d)), arg_3 & global4.c.a.x)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global2 = array<vec2<f32>, 30>();
    global2 = array<vec2<f32>, 30>();
    global0 = array<Struct_2, 32>();
    let var_0 = global3.d.c.yx;
    for (var var_1 = 9160; var_1 >= -87874; ) {
        if (LOOP_COUNTERS[13u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
        if (!select(any(select(global3.d.a, global3.a.a, vec2<bool>(false, true))) | !all(vec2<bool>(global3.a.e, global3.d.a.x)), all(func_3(firstLeadingBit(21187u), global0[_wgslsmith_index_u32(2503u, 32u)], 18200, !arg_0)), ~_wgslsmith_mod_u32(4294967295u, 6037u) != ((9819u | 1u) << ((46384u ^ 8587u) % 32u)))) {
            var var_2 = ~vec4<u32>(6308u, 348u >> (_wgslsmith_mod_u32(4294967295u, 68358u) % 32u), ~44664u ^ select(~17132u, ~0u, true), ~_wgslsmith_mod_u32(reverseBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(8202u, 12331u), vec2<u32>(40889u, 12939u))));
            let var_3 = var_2.x;
            global2 = array<vec2<f32>, 30>();
            var var_4 = _wgslsmith_sub_i32(32390, _wgslsmith_div_i32(global4.a.c.x ^ abs(global4.d.b << (var_2.x % 32u)), -1));
        }
        break;
    }
    return global0[_wgslsmith_index_u32(5259u, 32u)];
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    global0 = array<Struct_2, 32>();
    if (global1.d) {
    }
    if (_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647, u_input.a), -(i32(-1) * -6113)) <= -2147483648) {
        let var_0 = func_2(true);
        for (; ; ) {
            if (LOOP_COUNTERS[14u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
            var var_1 = _wgslsmith_mod_vec4_i32(global1.c ^ ~global1.c, var_0.c.c ^ (vec4<i32>(~global1.c.x, -2147483647, u_input.a, 16169) << (vec4<u32>(~arg_0, arg_3, 37945u & arg_3, ~6225u) % vec4<u32>(32u))));
            let var_2 = var_0;
        }
        var var_1 = var_0.b;
        if (func_4(arg_3, vec2<i32>(global3.c.c.x >> (_wgslsmith_add_u32(arg_3, ~arg_3) % 32u), global4.a.c.x)).a.e) {
            var var_2 = Struct_2(Struct_1(vec2<bool>(!true, global1.e), -_wgslsmith_mult_i32(~global4.a.c.x, -9351), -_wgslsmith_div_vec4_i32(global3.c.c, countOneBits(arg_2.c)), global4.c.d, true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)), 1396.0, arg_2.e)), 1000.0, func_4(~1u, vec2<i32>(arg_2.c.x, var_0.c.b) | (global4.c.c.yz | vec2<i32>(0, 2147483647))).b.x, func_2(!global4.a.d).b.x), func_2(global4.c.e).c, global4.a);
            var var_3 = func_2(global1.a.x).d;
            var var_4 = _wgslsmith_sub_vec4_i32(-(~vec4<i32>(arg_2.b, global4.c.c.x, 11559, global3.a.c.x) & (-vec4<i32>(arg_1, -4275, var_0.c.c.x, var_3.b) | (vec4<i32>(var_3.b, arg_1, arg_1, 2147483647) | vec4<i32>(global4.c.b, 23646, var_3.b, u_input.a)))), vec4<i32>(var_2.d.b, countOneBits(arg_2.b) >> (select(51568u, arg_3, false) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.d.c.xxw, vec3<i32>(-36719, -53847, var_0.c.c.x), vec3<i32>(var_3.c.x, 63668, 1)), var_3.c.xxy), global4.a.c.x & firstTrailingBit(-10815)) & (vec4<i32>(_wgslsmith_add_i32(var_0.a.b, arg_1), -31861, countOneBits(-2147483648), 19606 & arg_2.b) | ~vec4<i32>(u_input.a, -1, var_2.a.c.x, u_input.a)));
        }
    }
    let var_0 = _wgslsmith_clamp_vec4_u32(select(_wgslsmith_mod_vec4_u32(min(~vec4<u32>(0u, arg_0, arg_0, 4294967295u), ~vec4<u32>(101197u, arg_0, arg_3, arg_3)), ~(vec4<u32>(4294967295u, arg_0, 73717u, 9099u) ^ vec4<u32>(0u, arg_0, 101729u, arg_3))), vec4<u32>(arg_0, firstLeadingBit(abs(arg_0)), _wgslsmith_sub_u32(53032u, arg_0) << (arg_3 % 32u), ~arg_0), false), ~((_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, 0u, 1u, arg_3), vec4<u32>(1u, 97768u, arg_3, 4294967295u)) ^ vec4<u32>(arg_0, arg_0, arg_3, arg_0)) >> (~(~vec4<u32>(arg_0, arg_3, 1u, arg_3)) % vec4<u32>(32u))), vec4<u32>(0u, 66178u, ~26247u, arg_0));
    global1 = arg_2;
    return ~global3.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global4 = Struct_2(Struct_1(!vec2<bool>(global1.e, -63384 < 13889), -func_1(6598u, global1.b, global4.d, 1u) & ~func_1(4294967295u, -13636, Struct_1(global1.a, global1.b, global3.c.c, global4.d.e, global1.a.x), 1u), vec4<i32>(reverseBits(global4.a.c.x << (1u % 32u)), -51366, abs(reverseBits(-19282)), _wgslsmith_add_i32(global3.d.c.x, global3.d.b)), false, func_2(!false).b.x <= global4.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_f_op_vec4_f32(trunc(func_4(62911u, vec2<i32>(-55332, -14926)).b)))), global4.a, func_2(true).c);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.b.x), global4.b.x));
    if (true) {
        var var_2 = func_4(firstTrailingBit(~_wgslsmith_mult_u32(27233u, 4294967295u)), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-27778, func_4(0u, vec2<i32>(global1.b, u_input.a)).c.b), min(-vec2<i32>(global4.d.c.x, -11795), vec2<i32>(global1.c.x, -1))))).a;
        if (func_3(abs(firstLeadingBit(~reverseBits(0u))), Struct_2(Struct_1(!global4.c.a, 0, _wgslsmith_mult_vec4_i32(vec4<i32>(global4.a.b, global4.d.c.x, -33694, -39054), -var_2.c), global4.a.b <= abs(-2147483648), !func_3(0u, global0[_wgslsmith_index_u32(0u, 32u)], 2147483647, true).x), _wgslsmith_f_op_vec4_f32(-global4.b), global4.a, global3.a), -42804, !(select(select(global1.a.x, false, true), any(vec4<bool>(var_2.e, var_2.d, global1.a.x, var_2.a.x)), global4.a.e || false) & false)).x) {
            let var_3 = _wgslsmith_div_f32(1231.0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1.0) * -531.0), _wgslsmith_f_op_f32(-global4.b.x), true)));
            var var_4 = global4.b;
            var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(18875u, 1u), 32u)];
            let var_6 = select(~_wgslsmith_mod_vec4_i32(global1.c, vec4<i32>(-26176, 0, global1.b, global3.c.b)), -(~var_5.c.c), true) >> (reverseBits(vec4<u32>(~36241u & (41490u >> (0u % 32u)), ~(~0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6174u, 1145u), vec2<u32>(0u, 0u)), firstTrailingBit(0u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(56488u, 39655u), 0u))) % vec4<u32>(32u));
        }
        switch (max(~(-2147483648), ~reverseBits(_wgslsmith_mod_i32(-26743, 54379))) | -20807) {
            default: {
                let var_3 = ~vec2<u32>(~1u, _wgslsmith_add_u32(~_wgslsmith_mult_u32(15922u, 4294967295u), _wgslsmith_mult_u32(26720u, 59367u)));
                var var_4 = func_1(_wgslsmith_clamp_u32(var_3.x, max(~18484u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.x, 4294967295u), var_3)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, 4294967295u, var_3.x, var_3.x), vec4<u32>(25254u, var_3.x, var_3.x, var_3.x), vec4<u32>(4294967295u, var_3.x, var_3.x, var_3.x)) >> (abs(vec4<u32>(3672u, var_3.x, var_3.x, var_3.x)) % vec4<u32>(32u)), (vec4<u32>(var_3.x, 21692u, 4294967295u, 19181u) | vec4<u32>(1u, 0u, var_3.x, var_3.x)) ^ firstTrailingBit(vec4<u32>(1u, 67780u, 0u, 4294967295u)))), _wgslsmith_dot_vec2_i32(var_2.c.xw, var_2.c.xw), Struct_1(global1.a, _wgslsmith_mult_i32(56142, -47437), func_2(!(global1.a.x || true)).d.c, global3.a.a.x, false), _wgslsmith_add_u32(7286u, 31865u));
                var_1 = -601.0;
                var var_5 = vec4<bool>(any(select(func_3(_wgslsmith_mod_u32(10044u, var_3.x), func_4(var_3.x, global3.c.c.zy), -23261, !true).zxz, select(vec3<bool>(true, var_2.e, false), func_3(var_3.x, global0[_wgslsmith_index_u32(0u, 32u)], -50325, global4.d.a.x).yzy, all(vec3<bool>(global4.d.e, false, global4.c.a.x))), global4.a.a.x)), !var_2.a.x & !(false & all(var_2.a)), !(func_4(1u, var_2.c.yx).a.a.x | any(!global4.d.a)), global3.c.e);
                return;
            }
        }
    }
    var var_2 = vec2<bool>((i32(-1) * -2147483648) != _wgslsmith_sub_i32(~(-global4.c.c.x), _wgslsmith_dot_vec4_i32(firstTrailingBit(global4.a.c), vec4<i32>(global1.c.x, -23394, 2147483647, 2147483647))), false);
    var var_3 = _wgslsmith_f_op_vec3_f32(global3.b.zwx + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global3.b.x)))), global4.b.x, global3.b.x), vec3<f32>(_wgslsmith_f_op_f32(-global3.b.x), 1002.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(700.0 * global4.b.x) - _wgslsmith_div_f32(global4.b.x, global3.b.x))))));
    let var_4 = global4.a.b;
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        if (!(!(var_2.x == (false && false)) && all(func_3(_wgslsmith_sub_u32(41080u, 0u), func_2(false), ~global4.d.c.x, all(vec3<bool>(global1.e, global3.d.a.x, global3.c.d))).yzz))) {
            let var_5 = _wgslsmith_f_op_f32(-var_3.x);
        }
        var var_5 = vec3<f32>(global4.b.x, global3.b.x, _wgslsmith_f_op_f32(-global4.b.x));
    }
    let x = u_input.a;
    s_output = StorageBuffer(-abs(-8542), 1099, vec2<i32>(29442, countOneBits(-global3.c.b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global3.b, global4.b)))), _wgslsmith_f_op_vec4_f32(-global3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104.0)));
}

