// {"0:0":[164,47,30,126,189,214,20,215,44,38,95,240,84,131,82,76]}
// Seed: 6143955325137036898

struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(Struct_1(vec3<u32>(82709u, 5736u, 74675u), vec3<f32>(1175.0, -886.0, -992.0), false, vec2<f32>(142.0, 1129.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 11555u, 11582u), vec3<f32>(936.0, -369.0, 812.0), true, vec2<f32>(2127.0, 577.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(51796u, 1u, 773u), vec3<f32>(111.0, -1356.0, 969.0), true, vec2<f32>(455.0, 1344.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(14323u, 44671u, 0u), vec3<f32>(728.0, 1821.0, -310.0), false, vec2<f32>(216.0, 634.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(47049u, 70756u, 22480u), vec3<f32>(-165.0, -816.0, 1000.0), false, vec2<f32>(994.0, -550.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(74160u, 4294967295u, 0u), vec3<f32>(741.0, -1884.0, 1183.0), false, vec2<f32>(1498.0, -1038.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(17735u, 15081u, 12382u), vec3<f32>(372.0, 1021.0, 737.0), true, vec2<f32>(-342.0, -1000.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(21011u, 39581u, 0u), vec3<f32>(1836.0, 222.0, 1399.0), false, vec2<f32>(1482.0, -932.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 70726u, 43677u), vec3<f32>(-1914.0, 729.0, -304.0), true, vec2<f32>(599.0, -558.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 30630u, 28600u), vec3<f32>(-2075.0, -1662.0, 1000.0), true, vec2<f32>(-887.0, -321.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 69084u, 4294967295u), vec3<f32>(-800.0, 1574.0, -1415.0), false, vec2<f32>(862.0, -651.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(532.0, -145.0, -349.0), false, vec2<f32>(1111.0, 118.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(95209u, 45088u, 42760u), vec3<f32>(122.0, -1913.0, -712.0), false, vec2<f32>(364.0, -427.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(22527u, 4294967295u, 24530u), vec3<f32>(-512.0, -1963.0, -1140.0), false, vec2<f32>(-729.0, -1048.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 0u, 3056u), vec3<f32>(162.0, -1535.0, 1000.0), true, vec2<f32>(358.0, 1213.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 0u, 28653u), vec3<f32>(2474.0, -355.0, 199.0), false, vec2<f32>(-1376.0, 387.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<f32>(-1111.0, 1533.0, -665.0), true, vec2<f32>(-539.0, 133.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 0u, 21037u), vec3<f32>(149.0, -505.0, -1000.0), true, vec2<f32>(173.0, -140.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(9360u, 8884u, 5413u), vec3<f32>(116.0, -105.0, -1378.0), false, vec2<f32>(326.0, -1446.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(48757u, 46852u, 12574u), vec3<f32>(1101.0, -672.0, -1124.0), true, vec2<f32>(2583.0, 2028.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 43891u, 4294967295u), vec3<f32>(1030.0, 372.0, -686.0), false, vec2<f32>(1328.0, -1135.0))), false), Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 16144u, 24382u), vec3<f32>(455.0, 463.0, -655.0), true, vec2<f32>(591.0, -744.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(438u, 9112u, 60463u), vec3<f32>(1669.0, 402.0, 529.0), false, vec2<f32>(-493.0, -2200.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(35129u, 5914u, 41256u), vec3<f32>(1399.0, -409.0, -1463.0), true, vec2<f32>(-676.0, -1000.0))), true), Struct_3(Struct_2(Struct_1(vec3<u32>(82053u, 44602u, 0u), vec3<f32>(-473.0, 762.0, 2128.0), true, vec2<f32>(338.0, 1566.0))), false));

var<private> LOOP_COUNTERS: array<u32, 34>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || ((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2), (((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || ((b[2] < 0) && (a[2] > (2147483647 + b[2])))) || ((b[3] < 0) && (a[3] > (2147483647 + b[3])))) || (((((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))) || ((b[2] > 0) && (a[2] < (-2147483648 + b[2])))) || ((b[3] > 0) && (a[3] < (-2147483648 + b[3])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0] == 0u) || (b[1] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42.0), vec3<f32>(-123.0), ((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_6() -> bool {
    if (!global0.b) {
        if (!global0.a.a.c) {
            var var_0 = Struct_1(max(_wgslsmith_mult_vec3_u32(global0.a.a.a, vec3<u32>(2158u, global0.a.a.a.x, 21684u | global0.a.a.a.x)), global0.a.a.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.b.x, _wgslsmith_f_op_f32(sign(global0.a.a.d.x)), _wgslsmith_f_op_f32(abs(global0.a.a.b.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-573.0, 181.0, -584.0)))))), global0.a.a.c, _wgslsmith_f_op_vec2_f32(global0.a.a.d * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.a.a.b.zz)))));
        }
        global2 = array<Struct_3, 25>();
    }
    let var_0 = ~(~(~0));
    global1 = 47974 << (abs(~_wgslsmith_div_u32(14104u | 0u, firstTrailingBit(0u))) % 32u);
    loop {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        global2 = array<Struct_3, 25>();
        let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0.a.a.d.x)), -1609.0, true)))), -230.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.a.b.x))), global0.a.a.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1164.0, 823.0)))), global0.a.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a.b.x * global0.a.a.d.x), _wgslsmith_f_op_f32(1583.0 - global0.a.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.a.d.x)))))));
    }
    global2 = array<Struct_3, 25>();
    return global0.a.a.c;
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<f32> {
    loop {
        if (LOOP_COUNTERS[1u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        if (arg_1.a.c & false) {
        }
        for (var var_0 = 1; var_0 < -13118; var_0 = u_input.a.x) {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
            let var_1 = global2[_wgslsmith_index_u32(~(~arg_1.a.a.x), 25u)];
            var_0 = _wgslsmith_dot_vec4_i32(~select(vec4<i32>(u_input.b, u_input.b, u_input.b, max(2147483647, -1)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 2147483647, 21649, u_input.a.x), vec4<i32>(4726, 0, 10974, -34843), vec4<i32>(23653, 34477, u_input.a.x, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -1, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, 1, 26341, -53974))), vec4<bool>(arg_0.x | true, select(true, false, var_1.b), false & false, !false)), select(vec4<i32>(u_input.b, -2147483648, 1, 11008), select(vec4<i32>(3385 << (var_1.a.a.a.x % 32u), 52637, 1, abs(u_input.b)), vec4<i32>(-1, u_input.b, _wgslsmith_div_i32(13871, u_input.a.x), -2147483648 << (4294967295u % 32u)), arg_1.a.c), true));
            var_0 = u_input.a.x;
        }
        global0 = Struct_3(global0.a, countOneBits(_wgslsmith_mult_i32(2147483647, i32(-1) * -2147483648)) != ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, -28360, u_input.a.x), 0));
    }
    for (var var_0 = -52160; !false; var_0 += 1) {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        let var_1 = ~u_input.a;
        switch (0) {
            case -2147483648: {
                global2 = array<Struct_3, 25>();
            }
            default: {
                var var_2 = _wgslsmith_dot_vec2_i32(u_input.a.zx, -vec2<i32>(-5473, i32(-1) * -47085) | vec2<i32>(min(u_input.b, 0), -_wgslsmith_dot_vec2_i32(vec2<i32>(28012, 0), vec2<i32>(var_1.x, 1))));
                let var_3 = vec3<u32>(reverseBits(global0.a.a.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(25684u, 1u, arg_1.a.a.x) << (global0.a.a.a % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(1337u, 1u, arg_1.a.a.x), arg_1.a.a)), _wgslsmith_add_vec3_u32(arg_1.a.a, global0.a.a.a), vec3<u32>(_wgslsmith_dot_vec3_u32(global0.a.a.a, vec3<u32>(global0.a.a.a.x, global0.a.a.a.x, global0.a.a.a.x)), ~global0.a.a.a.x, arg_1.a.a.x)), global0.a.a.a), global0.a.a.a.x);
                let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.a.b - _wgslsmith_f_op_vec3_f32(-arg_1.a.b)));
                continue;
            }
        }
        if (false) {
            global0 = Struct_3(Struct_2(global0.a.a), !arg_1.a.c);
            global2 = array<Struct_3, 25>();
        }
    }
    global0 = global2[_wgslsmith_index_u32(4294967295u, 25u)];
    if (select(false, arg_0.x, arg_0.x) && (false & arg_1.a.c)) {
        for (var var_0 = -1; !(!select(arg_1.a.c, !arg_0.x, false)) && any(select(!(!arg_0.xxz), !vec3<bool>(global0.b, true, false), arg_0.xwy)); var_0 -= 1) {
            if (LOOP_COUNTERS[4u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
            var var_1 = select(reverseBits(arg_1.a.a.x), global0.a.a.a.x, all(arg_0.xx) | select(arg_0.x, arg_1.a.c, global0.a.a.c));
            var var_2 = Struct_1(~arg_1.a.a, global0.a.a.b, all(arg_0.xzz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.a.b.x)), _wgslsmith_f_op_f32(trunc(1913.0)))));
            let var_3 = global0.a;
        }
        if (select(global0.a.a.c, any(!select(arg_0, vec4<bool>(true, false, false, global0.a.a.c), !arg_0)), all(select(arg_0.xx, arg_0.zw, arg_0.xy)) || (!(!false) || true))) {
            var var_0 = u_input.b;
            let var_1 = global0.a.a.a.x;
            let var_2 = Struct_2(arg_1.a);
            let var_3 = vec3<i32>(u_input.a.x, u_input.a.x, min(u_input.b, select(~u_input.a.x, -52398, arg_0.x & global0.b)) << ((arg_1.a.a.x >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(20455u, global0.a.a.a.x, 41147u, var_2.a.a.x), vec4<u32>(0u, 1069u, 4294967295u, 4698u))) % 32u)) % 32u));
        }
        for (var var_0 = 2147483647; var_0 > 1; var_0 += 1) {
            if (LOOP_COUNTERS[5u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
            global2 = array<Struct_3, 25>();
            continue;
        }
        let var_0 = arg_1.a.b.yz;
    }
    global2 = array<Struct_3, 25>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x) - _wgslsmith_f_op_f32(floor(206.0))), arg_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633.0 + 1085.0) - _wgslsmith_f_op_f32(trunc(-1440.0))))), 1046.0);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    if (true) {
        let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.a.d.x), _wgslsmith_f_op_f32(trunc(arg_3.a.a.b.x)), _wgslsmith_f_op_f32(-983.0), -570.0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-844.0, arg_3.a.a.b.x, arg_3.a.a.b.x, _wgslsmith_f_op_f32(-global0.a.a.d.x)))) + _wgslsmith_f_op_vec4_f32(func_7(vec4<bool>(!(!true), func_6(), (i32(-1) * -25458) >= -9160, true), global0.a)));
    }
    let var_0 = Struct_2(Struct_1(vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.a.a.x, 4294967295u), vec2<u32>(55572u, 38727u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a.a.a.x, arg_2.a.a.a.x, 55368u), vec3<u32>(4294967295u, 1u, 19113u)), ~(~arg_3.a.a.a.x)), vec3<f32>(-326.0, _wgslsmith_f_op_f32(abs(global0.a.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.a.b.x) - _wgslsmith_f_op_f32(-1407.0))), true, global0.a.a.d));
    loop {
        if (LOOP_COUNTERS[6u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
        continue;
    }
    global0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(1560.0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.b.x))))), arg_2.a.a.d.x));
    return var_0.a.c;
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_vec2_u32(global0.a.a.a.zx, global0.a.a.a.xx);
    for (var var_1 = 17369; var_1 > 7040; var_1 += 1) {
        if (LOOP_COUNTERS[7u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
        for (var var_2 = -2147483648; var_2 > 39741; var_1 = 0 ^ _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -42873), u_input.a.xy), vec2<i32>(1, u_input.a.x)), u_input.b), u_input.a.x)) {
            if (LOOP_COUNTERS[8u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
            var var_3 = !select(select(vec3<bool>(!global0.a.a.c, func_5(vec2<bool>(global0.b, true), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), Struct_3(global0.a, global0.b), global2[_wgslsmith_index_u32(8751u, 25u)]), global0.b), !(!vec3<bool>(global0.b, false, true)), vec3<bool>(all(vec2<bool>(false, global0.b)), true | global0.a.a.c, !false)), select(vec3<bool>(any(vec2<bool>(false, global0.b)), global0.b, global0.b), !(!vec3<bool>(false, global0.b, global0.a.a.c)), all(vec3<bool>(false, global0.b, false))), select(vec3<bool>(any(vec3<bool>(true, false, false)), false, all(vec4<bool>(true, global0.a.a.c, true, false))), select(!vec3<bool>(global0.a.a.c, true, false), !vec3<bool>(global0.b, false, false), vec3<bool>(true, false, true)), global0.b));
            let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.x, _wgslsmith_mod_u32(57081u, 49171u) & var_0.x, _wgslsmith_add_u32((global0.a.a.a.x & 1u) | 9560u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.a.a.x, global0.a.a.a.x, global0.a.a.a.x, var_0.x), firstLeadingBit(~vec4<u32>(global0.a.a.a.x, global0.a.a.a.x, 15879u, var_0.x))) ^ ~var_0.x), 25u)];
            var var_5 = Struct_3(var_4.a, any(vec2<bool>(any(vec2<bool>(false, false)) || (var_3.x | global0.a.a.c), any(select(vec4<bool>(true, false, var_4.b, var_3.x), vec4<bool>(var_3.x, global0.b, false, true), false)))));
            return Struct_1(max(var_5.a.a.a, vec3<u32>(countOneBits(global0.a.a.a.x), 0u, max(~6371u, ~8032u))), _wgslsmith_f_op_vec3_f32(var_4.a.a.b - _wgslsmith_f_op_vec4_f32(func_7(select(vec4<bool>(var_5.a.a.c, global0.b, global0.b, true), !vec4<bool>(var_5.b, true, var_4.b, true), var_3.x), Struct_2(global0.a.a))).zzw), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-228.0, -523.0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.a.b.x, -1296.0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, var_5.a.a.d.x)))))));
        }
        switch (-_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(u_input.b), (-1 << (global0.a.a.a.x % 32u)) & 2147483647, u_input.b), vec3<i32>(abs(_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(-26507, _wgslsmith_add_i32(15683, -1)), 54719))) {
            case -39239: {
                var var_2 = _wgslsmith_f_op_f32(-503.0);
                break;
            }
            case -1: {
                var_1 = -_wgslsmith_mod_i32(~(-1) | 17288, u_input.b);
            }
            case 0: {
                global1 = -firstTrailingBit(i32(-1) * -1);
                break;
            }
            default: {
                global0 = Struct_3(global0.a, false || any(vec3<bool>(false, false, !false)));
                var_1 = u_input.b;
                let var_2 = Struct_2(Struct_1(vec3<u32>(45361u, _wgslsmith_mult_u32(global0.a.a.a.x & 1u, 1335u << (8771u % 32u)), ~(11905u >> (0u % 32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.a.a.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.b.x, global0.a.a.d.x, 536.0) + vec3<f32>(arg_0, global0.a.a.d.x, global0.a.a.d.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.d.x, -471.0, arg_0) + vec3<f32>(-2083.0, global0.a.a.d.x, global0.a.a.b.x)))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, 1, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(14873, u_input.a.x, 1, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.a.x, -1))) < _wgslsmith_add_i32(u_input.b, -7654), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.b.x, -275.0))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(global0.a.a.b.yz)))))));
                continue;
            }
        }
        var var_2 = Struct_3(global0.a, any(!vec3<bool>(any(vec4<bool>(global0.a.a.c, true, false, global0.a.a.c)), false, global0.a.a.c)));
    }
    let var_1 = _wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(-vec4<i32>(11887, u_input.b, u_input.b, 1), vec4<i32>(-1, u_input.b, 0, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -28504, u_input.a.x), u_input.a))), vec4<i32>(-2147483648, ~u_input.b & _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b, 26088), -1), _wgslsmith_mult_i32(_wgslsmith_add_i32(-29833, 58519), ~0), countOneBits(abs(u_input.b) & -u_input.b)));
    switch (45896) {
        case 2147483647: {
            if (global0.b & true) {
                let var_2 = var_1.yy;
            }
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
        }
        case -19101: {
            loop {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                global2 = array<Struct_3, 25>();
                global1 = select(u_input.a.x, firstTrailingBit(_wgslsmith_mult_i32(reverseBits(1689) | abs(39797), ~(i32(-1) * -18760))), any(!vec4<bool>(true, true, true, global0.a.a.c)) && func_6());
            }
            global0 = Struct_3(Struct_2(Struct_1(vec3<u32>(max(var_0.x, global0.a.a.a.x), var_0.x, ~var_0.x), _wgslsmith_f_op_vec3_f32(global0.a.a.b - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 103.0, arg_0), global0.a.a.b, vec3<bool>(global0.a.a.c, true, global0.b)))), !global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.a.a.d)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a.a.d.x, arg_0)))))), false);
        }
        default: {
            if (!(global0.b & !false)) {
                var var_2 = vec3<bool>(_wgslsmith_dot_vec3_i32(abs(-var_1.zxx), -(vec3<i32>(u_input.b, -40566, u_input.a.x) >> (global0.a.a.a % vec3<u32>(32u)))) >= 26030, !(countOneBits(i32(-1) * -1) != -33968), func_6());
                let var_3 = Struct_2(Struct_1(select(~global0.a.a.a, global0.a.a.a, global0.a.a.c), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.a.a.b))), global0.a.a.b)), all(select(select(vec4<bool>(false, global0.a.a.c, false, false), vec4<bool>(var_2.x, true, true, global0.b), vec4<bool>(false, global0.a.a.c, false, global0.a.a.c)), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-465.0, _wgslsmith_f_op_f32(exp2(global0.a.a.d.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global0.a.a.b.xx, vec2<f32>(global0.a.a.d.x, 791.0)))))));
            }
            loop {
                if (LOOP_COUNTERS[11u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
                let var_2 = var_1.yy;
                var var_3 = abs(var_0.x);
                var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-global0.a.a.b.x))), _wgslsmith_f_op_f32(global0.a.a.d.x - _wgslsmith_f_op_f32(global0.a.a.d.x + _wgslsmith_f_op_f32(global0.a.a.d.x * global0.a.a.b.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_7(select(vec4<bool>(global0.b, global0.b, true, false), vec4<bool>(global0.a.a.c, false, global0.b, global0.b), vec4<bool>(global0.b, false, true, true)), Struct_2(global0.a.a))).x)))));
                let var_5 = global2[_wgslsmith_index_u32(0u, 25u)];
            }
            var var_2 = max(-var_1, var_1);
        }
    }
    switch (_wgslsmith_mult_i32(_wgslsmith_div_i32(countOneBits(-33025), var_1.x), u_input.b)) {
        case -29917: {
            for (var var_2: i32; var_2 <= 30413; var_2 += 1) {
                if (LOOP_COUNTERS[12u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
                let var_3 = global0.a.a.a.x;
                global1 = ~(-44133);
            }
            global1 = u_input.a.x;
            global2 = array<Struct_3, 25>();
            for (var var_2 = 0; global0.b; global1 = var_1.x) {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            }
        }
        case 24228: {
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                let var_2 = select(_wgslsmith_mod_u32(0u, 52372u), ~67758u, true);
                global2 = array<Struct_3, 25>();
                let var_3 = global2[_wgslsmith_index_u32(~(~firstTrailingBit(var_2)), 25u)];
                let var_4 = -52946;
            }
        }
        default: {
            if (global0.b) {
                var var_2 = _wgslsmith_sub_u32(var_0.x, ~_wgslsmith_mult_u32(3685u >> (countOneBits(4294967295u) % 32u), 1u & var_0.x));
            }
            let var_2 = vec2<f32>(_wgslsmith_f_op_vec4_f32(func_7(vec4<bool>((30926u & global0.a.a.a.x) <= abs(6230u), select(global0.a.a.c, !false, !true), !false, all(!vec4<bool>(false, global0.a.a.c, false, false))), global0.a)).x, _wgslsmith_f_op_f32(f32(-1.0) * -562.0));
            let var_3 = global0.a;
            loop {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                let var_4 = vec2<i32>(7154, -23167);
                var var_5 = !vec2<bool>(all(!vec2<bool>(var_3.a.c, false)) | global0.a.a.c, true);
            }
            var var_4 = Struct_4(!true, global0.a.a.b, global0.a.a, Struct_3(Struct_2(var_3.a), any(vec4<bool>(var_3.a.c, false, var_3.a.c, true))));
        }
    }
    return Struct_1(~abs(vec3<u32>(global0.a.a.a.x, _wgslsmith_sub_u32(global0.a.a.a.x, 63698u), var_0.x)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(847.0 + global0.a.a.d.x)), _wgslsmith_f_op_f32(global0.a.a.b.x - -1634.0)), global0.a.a.a.x == reverseBits(~(24058u ^ 23777u)), vec2<f32>(-648.0, _wgslsmith_f_op_f32(round(arg_0))));
}

fn func_3() -> Struct_4 {
    let var_0 = func_4(-174.0);
    global1 = _wgslsmith_dot_vec3_i32(countOneBits(u_input.a ^ vec3<i32>(43847, 0, ~u_input.b)), ~(~countOneBits(u_input.a)) ^ ~reverseBits(firstTrailingBit(u_input.a)));
    global0 = Struct_3(global0.a, false);
    var var_1 = 1u;
    var var_2 = global0.a.a;
    return Struct_4(global0.a.a.c, vec3<f32>(_wgslsmith_f_op_f32(-792.0), global0.a.a.b.x, -286.0), global0.a.a, global2[_wgslsmith_index_u32(var_0.a.x, 25u)]);
}

fn func_8(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32) -> bool {
    switch (_wgslsmith_add_i32(1, u_input.b)) {
        default: {
            global2 = array<Struct_3, 25>();
            var var_0 = func_3();
            for (var var_1 = 26666; ; var_1 += 1) {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
                global1 = -abs(u_input.b);
                global0 = Struct_3(func_3().d.a, false);
                let var_2 = select(!select(!select(vec4<bool>(arg_1.c, global0.a.a.c, true, false), vec4<bool>(true, false, false, arg_0.a), vec4<bool>(var_0.d.a.a.c, arg_0.c.c, global0.a.a.c, arg_1.c)), select(select(vec4<bool>(false, global0.b, false, global0.b), vec4<bool>(false, false, false, arg_0.c.c), var_0.d.b), !vec4<bool>(global0.a.a.c, false, false, var_0.d.b), true), !arg_0.a), select(select(select(!vec4<bool>(arg_0.a, var_0.a, true, arg_0.a), select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.d.a.a.c, arg_0.a, false, arg_1.c), vec4<bool>(var_0.a, arg_0.a, false, arg_1.c)), all(vec4<bool>(arg_1.c, global0.b, false, arg_0.a))), !vec4<bool>(var_0.d.a.a.c, true, arg_1.c, true), vec4<bool>(arg_0.c.c | global0.a.a.c, !arg_1.c, !var_0.c.c, select(var_0.c.c, var_0.c.c, arg_0.d.b))), vec4<bool>(arg_1.c, arg_0.d.b, !func_3().d.b, func_6()), any(select(vec3<bool>(arg_0.c.c, false, global0.a.a.c), select(vec3<bool>(global0.a.a.c, var_0.a, arg_0.d.b), vec3<bool>(global0.a.a.c, var_0.c.c, global0.b), arg_1.c), 1u <= 1u))), vec4<bool>(!var_0.c.c, global0.a.a.c, any(vec2<bool>(func_3().d.a.a.c, func_3().a)), var_0.a));
                var var_3 = func_3().d;
                var_3 = arg_0.d;
            }
            loop {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            }
            global0 = Struct_3(var_0.d.a, arg_1.c);
        }
    }
    if (true) {
        let var_0 = global0.a.a;
        global2 = array<Struct_3, 25>();
        global0 = global2[_wgslsmith_index_u32(49135u, 25u)];
        loop {
            if (LOOP_COUNTERS[18u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
            var var_1 = arg_0.d.a;
            var var_2 = !false;
        }
        if (arg_0.d.a.a.c) {
            global1 = _wgslsmith_div_i32((_wgslsmith_sub_i32(u_input.b, u_input.b) | (i32(-1) * -2147483648)) ^ (u_input.b >> (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u)), u_input.a.x);
            let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(func_7(!(!vec4<bool>(true, arg_1.c, true, false)), func_3().d.a)).x != _wgslsmith_div_f32(1009.0, -768.0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, arg_0.c.d.x, arg_0.b.x) * _wgslsmith_f_op_vec3_f32(-arg_1.b)), arg_0.b, !(!vec3<bool>(false, arg_0.c.c, false))))), func_3().d.a.a, func_3().d);
            global1 = countOneBits(~(-select(u_input.b, min(u_input.b, 46197), all(vec2<bool>(true, arg_1.c)))));
            let var_2 = vec4<f32>(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(round(354.0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(498.0, _wgslsmith_f_op_f32(-849.0 - -574.0))), var_1.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_7(select(vec4<bool>(true, true, false, var_0.c), vec4<bool>(true, arg_1.c, true, global0.b), vec4<bool>(var_0.c, false, var_1.a, arg_0.a)), func_3().d.a)).x - _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(abs(1146.0))))), -1223.0);
        }
    }
    if (all(!(!vec2<bool>(!global0.b, arg_0.d.a.a.a.x != 38201u)))) {
        if (true) {
        }
    }
    var var_0 = ~75383u;
    let var_1 = arg_0;
    return !global0.a.a.c;
}

fn func_2() -> u32 {
    var var_0 = global0.a.a.b.x;
    loop {
        if (LOOP_COUNTERS[19u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
    }
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(global0.a.a.a, countOneBits(vec3<u32>(global0.a.a.a.x, 72588u, ~0u))), global0.a.a.b, !(!(!(0 > 53711))), global0.a.a.d);
    switch (u_input.a.x) {
        case 2147483647: {
            var var_2 = vec2<bool>(var_1.c, func_8(func_3(), func_4(_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(f32(-1.0) * -860.0), global0.b))), -893.0));
            let var_3 = func_4(-658.0);
            let var_4 = Struct_4(1418.0 == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-263.0), -1555.0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-497.0, _wgslsmith_f_op_f32(-1829.0 + -254.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) * var_3.b.x))), func_3().c, func_3().d);
            let var_5 = ~vec3<i32>(0, abs(-1), -73132);
            var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(global0.a.a.d.x).d.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.d.a.a.d.x + 1633.0) + func_4(global0.a.a.b.x).b.x)) + -598.0));
        }
        case 8853: {
        }
        case 19237: {
            var var_2 = Struct_4(!false, _wgslsmith_f_op_vec3_f32(var_1.b + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1908.0, global0.a.a.d.x, -383.0))))), func_3().d.a.a, global2[_wgslsmith_index_u32(max(var_1.a.x, 51219u), 25u)]);
            let var_3 = u_input.a.zx;
            let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_2.c.d.x)))), global0.a.a.d.x, -653.0), _wgslsmith_f_op_vec3_f32(ceil(var_1.b)));
            var var_5 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1) * -(vec2<i32>(u_input.a.x, 44585) & ~u_input.a.zx), reverseBits(-u_input.a.yy));
            switch (2147483647) {
                case -40417: {
                    global0 = func_3().d;
                    global2 = array<Struct_3, 25>();
                }
                default: {
                    global2 = array<Struct_3, 25>();
                    let var_6 = func_3().d;
                    var var_7 = var_6.a.a.a;
                }
            }
        }
        case 1: {
        }
        default: {
            let var_2 = 25282u;
            var var_3 = vec3<f32>(global0.a.a.d.x, _wgslsmith_f_op_f32(-1360.0), _wgslsmith_f_op_f32(-var_1.b.x));
            var var_4 = Struct_3(global0.a, ~(-(-5277 >> (89503u % 32u))) == _wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483648, ~u_input.a.x), -u_input.b));
            var var_5 = func_3();
        }
    }
    global0 = func_3().d;
    return var_1.a.x;
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = Struct_1(min(vec3<u32>(4294967295u, func_2() >> (27976u % 32u), ~_wgslsmith_mult_u32(29477u, 50383u)), vec3<u32>(1u, ~0u, _wgslsmith_clamp_u32(global0.a.a.a.x, 30202u, 0u)) << (_wgslsmith_add_vec3_u32(global0.a.a.a, _wgslsmith_div_vec3_u32(global0.a.a.a, vec3<u32>(global0.a.a.a.x, global0.a.a.a.x, global0.a.a.a.x))) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(round(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))).b)), !global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_7(vec4<bool>(all(vec2<bool>(global0.b, true)), global0.a.a.c, global0.a.a.b.x < -1000.0, !false), Struct_2(func_4(global0.a.a.b.x)))).yw));
    switch (u_input.b) {
        case -4953: {
            if (false) {
                let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.x, 200.0)));
                global0 = Struct_3(Struct_2(func_4(global0.a.a.b.x)), !((~u_input.a.x & _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) > u_input.a.x));
                let var_2 = 2736 <= -u_input.a.x;
                let var_3 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a.a.x, 31513u, global0.a.a.a.x, 1u), vec4<u32>(73120u, global0.a.a.a.x, 0u, var_0.a.x)) << (var_0.a.x % 32u), global0.a.a.a.x, 0u), _wgslsmith_f_op_vec3_f32(-var_0.b), false, var_0.b.xy));
            }
            global2 = array<Struct_3, 25>();
            let var_1 = select(~_wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b, u_input.b, 0, -54023), vec4<i32>(u_input.a.x, -1, u_input.b, -1464)), select(vec4<i32>(u_input.a.x, u_input.b, 1, u_input.a.x), vec4<i32>(15584, u_input.b, u_input.b, u_input.a.x), true))), u_input.b, global0.a.a.c);
            switch (u_input.a.x) {
                case 2147483647: {
                    let var_2 = u_input.a;
                    global0 = func_3().d;
                    let var_3 = ~firstLeadingBit(-(~vec3<i32>(u_input.b, var_1, var_1))) | var_2;
                }
                case 34158: {
                    global1 = abs(var_1);
                }
                case -40186: {
                    let var_2 = select(select(select(!vec4<bool>(false, true, var_0.c, global0.b), !select(vec4<bool>(global0.b, global0.a.a.c, var_0.c, var_0.c), vec4<bool>(true, false, var_0.c, var_0.c), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(-var_0.d.x) < _wgslsmith_f_op_f32(max(-388.0, 729.0))), !select(!vec4<bool>(var_0.c, false, true, true), select(vec4<bool>(var_0.c, true, var_0.c, var_0.c), vec4<bool>(true, true, global0.a.a.c, var_0.c), global0.a.a.c), vec4<bool>(true, var_0.c, global0.a.a.c, false)), all(vec2<bool>(true, var_0.c))), vec4<bool>(!(global0.b | func_4(arg_0).c), !global0.a.a.c, any(vec3<bool>(var_1 <= 10800, !true, any(vec2<bool>(global0.b, global0.a.a.c)))), global0.a.a.c == true), func_8(Struct_4(!(global0.a.a.a.x != var_0.a.x), _wgslsmith_f_op_vec3_f32(step(global0.a.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1459.0, -1000.0, global0.a.a.b.x)))), global0.a.a, Struct_3(func_3().d.a, true)), func_3().c, func_4(global0.a.a.d.x).b.x));
                    var var_3 = -612;
                    let var_4 = var_0;
                }
                default: {
                    var var_2 = global0.a;
                    var var_3 = !select(select(vec2<bool>(!var_0.c, !global0.a.a.c), vec2<bool>(true, var_2.a.c), var_2.a.c), vec2<bool>(any(select(vec2<bool>(var_2.a.c, var_0.c), vec2<bool>(true, false), var_0.c)), var_0.c), true);
                    var var_4 = func_3();
                    let var_5 = func_3();
                    global0 = func_3().d;
                }
            }
            let var_2 = func_3().d;
        }
        case -1: {
            switch (u_input.a.x ^ -21849) {
                case -12363: {
                    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.a.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, global0.a.a.d.x) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(190.0, global0.a.a.d.x, 1034.0))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + arg_0) * -1527.0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0)))))));
                    var var_2 = ~countOneBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.a.a.x, var_0.a.x, 14565u), vec3<u32>(90040u, 0u, 39891u)));
                }
                case 60969: {
                }
                case -9455: {
                    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(-483.0)) - global0.a.a.b.x)));
                    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1099.0 * _wgslsmith_f_op_f32(-503.0)) + arg_0))));
                }
                case 19102: {
                    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(353.0, arg_0, global0.a.a.b.x, arg_0))) + vec4<f32>(_wgslsmith_f_op_f32(-161.0 + -2219.0), -1889.0, _wgslsmith_f_op_f32(abs(798.0)), 1000.0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1548.0, global0.a.a.d.x, -396.0, -945.0), vec4<f32>(-276.0, global0.a.a.b.x, 1531.0, -427.0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.b.x, global0.a.a.b.x, 249.0, arg_0) * vec4<f32>(-1051.0, -164.0, arg_0, -1000.0)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, -2450.0, -519.0, 988.0), vec4<f32>(arg_0, -1244.0, arg_0, arg_0)))), false))));
                }
                default: {
                }
            }
            global1 = -2147483648;
            global1 = 1;
            for (var var_1 = _wgslsmith_sub_i32(-(~0), ~min(2147483647, 49568)); any(select(select(vec4<bool>(var_0.c, var_0.c, false, global0.b), !vec4<bool>(false, true, true, true), all(vec4<bool>(false, global0.a.a.c, true, var_0.c))), vec4<bool>(global0.b, !global0.a.a.c, global0.a.a.c, func_3().a), !true)) & any(select(select(!vec4<bool>(var_0.c, true, var_0.c, false), vec4<bool>(true, var_0.c, global0.a.a.c, var_0.c), false), !select(vec4<bool>(false, false, global0.b, true), vec4<bool>(false, true, true, true), vec4<bool>(true, global0.a.a.c, true, false)), vec4<bool>(!false, !global0.b, false, false))); var_1 -= 1) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            }
        }
        default: {
        }
    }
    let var_1 = !(!vec4<bool>(var_0.c, !(1350 == -41308), var_0.c, false));
    if (var_1.x) {
    }
    switch (countOneBits(-3425 & _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a.x), ~0), vec2<i32>(-u_input.b, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.b, -29709)))))) {
        case 12260: {
        }
        default: {
            for (var var_2 = 60991; ; var_2 -= 1) {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                var_2 = u_input.b;
                global0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.x, 1u), 25u)];
                global1 = firstLeadingBit(u_input.b);
                let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~global0.a.a.a, var_0.a), ~((~global0.a.a.a ^ (var_0.a & global0.a.a.a)) ^ (select(var_0.a, vec3<u32>(1u, var_0.a.x, 5877u), var_1.xyz) | var_0.a)));
            }
            let var_2 = _wgslsmith_clamp_vec4_i32(max(-(~(-vec4<i32>(1, -1, 34506, 1))), -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -1904, u_input.b), vec4<i32>(u_input.a.x, u_input.b, u_input.b, -2147483648)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 2147483647, u_input.a.x, u_input.b), vec4<i32>(-1, u_input.b, u_input.a.x, 11267), vec4<i32>(u_input.b, u_input.b, -34489, 9916)))), -vec4<i32>(u_input.b, i32(-1) * -u_input.b, u_input.a.x, 68928), select(firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(-19514, 37002), u_input.a.x, u_input.a.x, 13113 & -1)), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483648, u_input.b, 26153, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a.x)) & ~vec4<i32>(-2147483648, -40493, 9908, -19013)), false));
        }
    }
    return var_1.x;
}

fn func_9(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    var var_0 = func_3().d.a.a;
    var var_1 = (countOneBits(firstTrailingBit(u_input.b)) & min(-8037, 0)) ^ -u_input.b;
    let var_2 = Struct_4(any(vec3<bool>(func_4(622.0).a.x > max(arg_1.a.a.a.x, arg_1.a.a.a.x), func_1(-1942.0), 89195u > global0.a.a.a.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193.0, arg_1.a.a.b.x, global0.a.a.b.x)) + _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(238.0, 484.0, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(612.0, _wgslsmith_f_op_f32(962.0 * -855.0), -806.0) - var_0.b))), Struct_1(firstTrailingBit(~global0.a.a.a), vec3<f32>(func_3().d.a.a.d.x, _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(var_0.d.x * 1452.0)), _wgslsmith_f_op_vec4_f32(func_7(!vec4<bool>(var_0.c, true, var_0.c, true), Struct_2(arg_1.a.a))).x), false && (u_input.b > (-25905 | -46742)), global0.a.a.b.zx), func_3().d);
    switch (_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1) * -8671, u_input.a.x), u_input.a.zz)) {
        default: {
        }
    }
    switch (2147483647) {
        case 2147483647: {
            var_1 = 2147483647;
            for (var var_3 = 0; var_3 == -9581; var_3 += 1) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
                break;
            }
        }
        case -41162: {
            switch (u_input.a.x | ((i32(-1) * -_wgslsmith_add_i32(u_input.a.x, u_input.a.x)) ^ u_input.a.x)) {
                default: {
                    let var_3 = -u_input.b;
                    return func_3().d.a;
                }
            }
            for (var var_3: i32; var_3 != 1; var_0 = var_2.c) {
                if (LOOP_COUNTERS[23u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
                let var_4 = var_2;
                let var_5 = Struct_3(Struct_2(Struct_1(global0.a.a.a, arg_1.a.a.b, arg_1.b || var_2.c.c, _wgslsmith_f_op_vec2_f32(-arg_1.a.a.b.yz))), !true);
                var_0 = global0.a.a;
            }
        }
        default: {
            var_1 = 16882;
            var var_3 = arg_1.a.a;
            var var_4 = 1u == (global0.a.a.a.x >> (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.a.x, arg_1.a.a.a.x), var_3.a.xx)) % 32u));
        }
    }
    return var_2.d.a;
}

fn func_10(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.x * -700.0) - 1000.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.b.x)) + global0.a.a.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1496.0 + global0.a.a.d.x)) - 354.0))));
    switch (-10611) {
        case 0: {
        }
        case 2878: {
            var var_1 = Struct_4((-530.0 != arg_1.a.d.x) & !false, _wgslsmith_f_op_vec3_f32(-arg_1.a.b), func_9(false, global2[_wgslsmith_index_u32(0u, 25u)]).a, Struct_3(global0.a, !select(0u < global0.a.a.a.x, any(vec2<bool>(false, true)), !false)));
            switch (firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_div_i32(-u_input.b, u_input.b), min(u_input.a.x, firstLeadingBit(-11824)))) & _wgslsmith_sub_i32(~(0 << (countOneBits(55905u) % 32u)), u_input.a.x)) {
                case 2147483647: {
                    var var_2 = arg_0.a.d.x;
                    var var_3 = Struct_4((false & false) | (select(arg_0.a.a.x, 0u, func_8(Struct_4(true, arg_0.a.b, var_1.c, Struct_3(var_1.d.a, var_1.d.b)), Struct_1(arg_1.a.a, arg_1.a.b, true, vec2<f32>(-774.0, -2998.0)), var_1.c.b.x)) >= ~min(33407u, 130929u)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.b.x) * _wgslsmith_f_op_vec4_f32(func_7(vec4<bool>(arg_0.a.c, true, true, global0.a.a.c), arg_1)).x)), -2210.0, _wgslsmith_f_op_f32(arg_1.a.b.x * var_1.d.a.a.d.x)), arg_1.a, Struct_3(func_9(false, Struct_3(Struct_2(Struct_1(vec3<u32>(70122u, arg_1.a.a.x, arg_2), arg_0.a.b, true, vec2<f32>(arg_1.a.d.x, arg_0.a.b.x))), var_1.a)), true != true));
                }
                default: {
                    global0 = Struct_3(var_1.d.a, false);
                    global2 = array<Struct_3, 25>();
                    let var_2 = global2[_wgslsmith_index_u32(global0.a.a.a.x, 25u)];
                    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.a.b.x) * -1002.0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-2118.0)))))) * func_9(any(vec4<bool>(arg_0.a.c, arg_0.a.c, false, var_1.c.c)), global2[_wgslsmith_index_u32(func_4(global0.a.a.b.x).a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.a.a.a.x, global0.a.a.a.x), vec2<u32>(5495u, arg_0.a.a.x)) % 32u), 25u)]).a.d.x), _wgslsmith_f_op_f32(-1852.0), arg_0.a.d.x);
                    let var_4 = Struct_1(~arg_1.a.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-532.0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x + 416.0))), _wgslsmith_f_op_f32(-func_3().b.x)), vec3<f32>(_wgslsmith_f_op_f32(-2112.0), _wgslsmith_f_op_f32(floor(func_4(1054.0).d.x)), func_4(var_1.b.x).b.x))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.d))))))));
                }
            }
            var_0 = 757.0;
            var var_2 = var_1.d.a.a.a.yz;
        }
        case 9435: {
            for (; ; ) {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                continue;
            }
            var var_1 = _wgslsmith_add_vec3_i32(-u_input.a, vec3<i32>(_wgslsmith_mod_i32(~0, 12409), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(45524, -2147483647, u_input.b), ~(-1)), _wgslsmith_mod_i32(u_input.a.x, abs(-7798) & u_input.a.x)));
        }
        default: {
            loop {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            }
            if (all(select(!vec3<bool>(!arg_1.a.c, func_4(-2193.0).c, all(vec4<bool>(false, false, true, global0.a.a.c))), !(!(!vec3<bool>(true, arg_1.a.c, arg_1.a.c))), firstTrailingBit(-1 | -2147483648) > ~(-2264)))) {
                global2 = array<Struct_3, 25>();
                var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.b.x)) + arg_1.a.b.x))), _wgslsmith_f_op_f32(exp2(1495.0)));
                let var_1 = vec2<i32>(-2524, _wgslsmith_dot_vec2_i32(u_input.a.zz, abs(vec2<i32>(u_input.b, _wgslsmith_sub_i32(-30702, -1)))));
                let var_2 = u_input.b;
                let var_3 = 4294967295u;
            }
            for (var var_1: i32; var_1 < 2924; var_1 += 1) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
                var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.d.x)) - arg_1.a.d.x), global0.a.a.d.x)) * _wgslsmith_f_op_f32(-func_9(false, global2[_wgslsmith_index_u32(global0.a.a.a.x, 25u)]).a.b.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_3().c.b.x), global0.a.a.b.x), arg_0.a.b.x));
                var var_3 = Struct_2(func_9(!(!global0.b && true), func_3().d).a);
                let var_4 = vec3<bool>(func_3().a, all(vec3<bool>(func_1(-133.0), true, arg_1.a.a.x <= var_3.a.a.x)) | (830.0 != global0.a.a.b.x), select(true, arg_1.a.c, var_3.a.c));
                continue;
            }
            let var_1 = u_input.a.yy;
            var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(2110.0, _wgslsmith_f_op_f32(f32(-1.0) * -565.0), arg_1.a.d.x, arg_1.a.b.x));
        }
    }
    loop {
        if (LOOP_COUNTERS[27u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
        for (var var_1 = abs(u_input.b); var_1 == -2147483648; var_1 += 1) {
            if (LOOP_COUNTERS[28u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
            var var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(arg_0.a.a, firstTrailingBit(abs(vec3<u32>(arg_0.a.a.x, global0.a.a.a.x, 0u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0.a.a.b + vec3<f32>(arg_0.a.b.x, global0.a.a.b.x, -706.0)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.b.x, 1170.0, arg_1.a.b.x), arg_0.a.b)))), _wgslsmith_mult_i32(abs(0), 11172 | u_input.a.x) != (i32(-1) * -2147483648), vec2<f32>(func_9(11176u <= arg_1.a.a.x, func_3().d).a.b.x, -580.0)));
            global0 = func_3().d;
            var var_3 = !(!any(select(select(vec4<bool>(true, arg_1.a.c, arg_0.a.c, false), vec4<bool>(false, global0.a.a.c, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, global0.a.a.c, arg_0.a.c), vec4<bool>(true, false, arg_1.a.c, global0.a.a.c), vec4<bool>(global0.b, true, false, arg_0.a.c)), !vec4<bool>(arg_1.a.c, false, true, global0.a.a.c))));
            break;
        }
        var var_1 = select(vec3<bool>(false, !false, false), !select(select(select(vec3<bool>(arg_1.a.c, false, global0.b), vec3<bool>(false, false, true), vec3<bool>(global0.a.a.c, global0.a.a.c, arg_0.a.c)), select(vec3<bool>(arg_0.a.c, global0.a.a.c, true), vec3<bool>(arg_0.a.c, true, arg_0.a.c), false), vec3<bool>(true, false, true)), vec3<bool>(arg_2 >= arg_2, false, true), select(!vec3<bool>(arg_0.a.c, true, global0.a.a.c), select(vec3<bool>(global0.b, false, false), vec3<bool>(true, true, false), vec3<bool>(false, global0.a.a.c, false)), func_5(vec2<bool>(arg_0.a.c, false), vec4<i32>(-63760, 42418, -2147483648, 0), Struct_3(arg_0, true), Struct_3(Struct_2(global0.a.a), arg_1.a.c)))), func_9(arg_1.a.c, Struct_3(func_3().d.a, !global0.a.a.c)).a.c && !func_6());
    }
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-755.0 * arg_0.a.d.x))))), -1291.0, arg_0.a.d.x);
    var var_2 = firstTrailingBit(~1u);
    return u_input.a.x;
}

fn func_11(arg_0: i32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.a.a.x, 29248u, global0.a.a.a.x), vec3<u32>(global0.a.a.a.x, 4294967295u, global0.a.a.a.x)), ~global0.a.a.a, func_9(arg_1.x, global2[_wgslsmith_index_u32(0u, 25u)]).a.c), ~vec3<u32>(51375u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.a.a.x, global0.a.a.a.x, 4294967295u, 17473u), vec4<u32>(0u, 94985u, global0.a.a.a.x, global0.a.a.a.x)), global0.a.a.a.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.d.x + func_3().b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.a.b.x))), -212.0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.a.a.b, func_9(arg_1.x, Struct_3(Struct_2(Struct_1(global0.a.a.a, global0.a.a.b, true, vec2<f32>(149.0, -1203.0))), global0.b)).a.b)) * vec3<f32>(_wgslsmith_f_op_f32(-global0.a.a.d.x), global0.a.a.d.x, _wgslsmith_f_op_f32(-1350.0 * 2411.0))))), any(vec2<bool>(global0.b, select(false, func_1(global0.a.a.d.x), global0.a.a.c))), func_3().b.yx);
    for (var var_1 = 10411; var_1 > 15016; var_1 += 1) {
        if (LOOP_COUNTERS[29u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
    }
    let var_1 = ~1u & 4294967295u;
    if (false) {
    }
    switch (abs(arg_0) & min(i32(-1) * -2147483647, _wgslsmith_clamp_i32(u_input.a.x, ~_wgslsmith_mod_i32(-3725, 0), -_wgslsmith_sub_i32(arg_0, -24352)))) {
        case -72683: {
            global2 = array<Struct_3, 25>();
            var_0 = Struct_1(vec3<u32>(~func_3().c.a.x, _wgslsmith_add_u32(var_1, var_1), ~global0.a.a.a.x) << (reverseBits(vec3<u32>(40624u & 1u, ~20094u, firstLeadingBit(var_0.a.x))) % vec3<u32>(32u)), vec3<f32>(1300.0, _wgslsmith_f_op_f32(f32(-1.0) * -1130.0), _wgslsmith_f_op_f32(-global0.a.a.b.x)), true, global0.a.a.b.yy);
            let var_2 = global0.a.a.a;
        }
        case -1: {
            let var_2 = func_9(func_8(func_3(), global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -1166.0)))), func_3().d).a.c;
            switch (select(~arg_0, ~u_input.a.x >> (50210u % 32u), true)) {
                default: {
                    global0 = Struct_3(Struct_2(func_9((u_input.a.x != -2147483648) & true, global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(var_0.a.x, global0.a.a.a.x)), 25u)]).a), !(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-5924, u_input.a.x), _wgslsmith_mult_i32(-10814, arg_0)) == arg_0));
                    let var_3 = func_3().d.a;
                }
            }
            loop {
                if (LOOP_COUNTERS[30u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
            }
        }
        case 0: {
            var var_2 = vec3<i32>(abs(_wgslsmith_sub_i32(arg_0, _wgslsmith_add_i32(u_input.b, u_input.a.x))), -u_input.a.x, arg_0);
            let var_3 = var_0.a.zx;
            var_0 = func_9(select(all(arg_1), !true, global0.b) && true, func_3().d).a;
        }
        case -16140: {
            let var_2 = func_2();
            switch (arg_0) {
                case 19740: {
                }
                case -2147483648: {
                    var var_3 = ~(~vec2<u32>(func_2() << (var_0.a.x % 32u), ~func_2()));
                    var var_4 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), _wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, false)) <= var_0.b.x, vec2<f32>(_wgslsmith_div_f32(global0.a.a.d.x, global0.a.a.d.x), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))));
                    global0 = Struct_3(func_9(58813u <= 0u, Struct_3(global0.a, true)), true);
                    let var_5 = func_3();
                    let var_6 = var_5;
                }
                default: {
                    let var_3 = 8524;
                }
            }
            let var_3 = _wgslsmith_f_op_f32(sign(-2376.0));
            var var_4 = !select(select(select(select(vec4<bool>(false, global0.a.a.c, arg_1.x, false), vec4<bool>(global0.a.a.c, true, true, false), false), vec4<bool>(global0.a.a.c, false, arg_1.x, false), all(vec4<bool>(true, false, false, true))), !select(vec4<bool>(global0.a.a.c, true, false, global0.b), vec4<bool>(true, arg_1.x, arg_1.x, var_0.c), true), arg_1.x), select(!(!vec4<bool>(true, var_0.c, true, var_0.c)), select(vec4<bool>(true, arg_1.x, arg_1.x, false), !vec4<bool>(true, global0.b, global0.a.a.c, true), select(vec4<bool>(false, false, arg_1.x, global0.b), vec4<bool>(false, arg_1.x, true, true), global0.a.a.c)), vec4<bool>(func_4(-545.0).c, false, global0.a.a.c, !false)), false);
            if (func_3().a | func_5(!arg_1, (-vec4<i32>(u_input.a.x, 1, 0, arg_0) >> (vec4<u32>(40125u, 32019u, 35891u, 0u) % vec4<u32>(32u))) & ~(~vec4<i32>(-1, arg_0, -15943, u_input.b)), func_3().d, Struct_3(Struct_2(Struct_1(vec3<u32>(17919u, global0.a.a.a.x, var_0.a.x), var_0.b, arg_1.x, vec2<f32>(var_0.d.x, 162.0))), func_5(!var_4.zy, vec4<i32>(43467, 44223, -2147483648, u_input.b), func_3().d, Struct_3(global0.a, arg_1.x))))) {
                var_4 = !select(vec4<bool>((29197u < 4294967295u) && func_1(global0.a.a.b.x), !global0.a.a.c, func_3().a, all(!vec4<bool>(var_4.x, arg_1.x, global0.a.a.c, false))), !(!vec4<bool>(arg_1.x, true, var_4.x, true)), any(vec3<bool>(!var_0.c, global0.b, var_0.c)));
                let var_5 = ~global0.a.a.a.x;
                var var_6 = _wgslsmith_mult_u32(~_wgslsmith_div_u32(~var_1, 0u), global0.a.a.a.x);
            }
        }
        default: {
            let var_2 = global2[_wgslsmith_index_u32(~(~(~firstLeadingBit(~var_1))), 25u)];
            global0 = func_3().d;
            for (var var_3 = -1; var_3 >= -1; var_3 += 1) {
                if (LOOP_COUNTERS[31u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[31u] = LOOP_COUNTERS[31u] + 1u;
                var var_4 = false;
                break;
            }
        }
    }
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_11(func_10(Struct_2(Struct_1(global0.a.a.a, global0.a.a.b, true, vec2<f32>(755.0, global0.a.a.d.x))), func_9(func_1(global0.a.a.d.x), func_3().d), ~(~global0.a.a.a.x)), select(!(!vec2<bool>(false, global0.a.a.c)), select(vec2<bool>(global0.a.a.c, global0.b), select(vec2<bool>(global0.b, global0.a.a.c), vec2<bool>(true, global0.b), global0.b), func_3().d.b), vec2<bool>(u_input.b >= -2147483648, true))), !(_wgslsmith_f_op_f32(global0.a.a.d.x * _wgslsmith_f_op_f32(-global0.a.a.d.x)) < _wgslsmith_f_op_f32(abs(global0.a.a.b.x))));
    let var_0 = -u_input.a;
    if (global0.a.a.c) {
        var var_1 = max(~(vec4<i32>(u_input.b, -1, 1, 6530) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 28606, 50855, var_0.x), vec4<i32>(-18622, u_input.a.x, u_input.a.x, var_0.x))) ^ -max(~vec4<i32>(var_0.x, var_0.x, u_input.a.x, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647, 16845), vec4<i32>(-2147483648, -1, -2147483648, var_0.x))), select(min(vec4<i32>(var_0.x, var_0.x, var_0.x, -1111) | vec4<i32>(-1, var_0.x, 78118, u_input.a.x), firstTrailingBit(max(vec4<i32>(2795, var_0.x, 1, u_input.b), vec4<i32>(var_0.x, u_input.a.x, var_0.x, 0)))), _wgslsmith_div_vec4_i32(vec4<i32>(max(u_input.a.x, 2147483647), u_input.a.x | u_input.a.x, 34623 | u_input.b, 0), firstTrailingBit(vec4<i32>(u_input.b, 2147483647, -2147483648, 20508)) ^ (vec4<i32>(var_0.x, 10328, var_0.x, u_input.a.x) ^ vec4<i32>(21801, 2147483647, var_0.x, u_input.b))), false));
        let var_2 = global0.a.a.a.x;
        var_1 = vec4<i32>(u_input.b, u_input.b, _wgslsmith_mod_i32(i32(-1) * -20557, u_input.a.x), var_0.x << (~global0.a.a.a.x % 32u));
    }
    switch (-703) {
        default: {
            let var_1 = func_3();
            for (var var_2 = 4866; var_2 < 0; var_2 -= 1) {
                if (LOOP_COUNTERS[32u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[32u] = LOOP_COUNTERS[32u] + 1u;
                let var_3 = u_input.a;
                continue;
            }
            var var_2 = ~vec4<i32>(~(~2147483647), u_input.a.x, -u_input.b & _wgslsmith_clamp_i32(~var_0.x, abs(u_input.a.x), ~var_0.x), ~(~var_0.x));
            switch (_wgslsmith_sub_i32(2632, u_input.b)) {
                case -21983: {
                    global0 = Struct_3(global0.a, !false);
                    let var_3 = global0.a.a;
                }
                case 39239: {
                    let var_3 = 2147483647;
                    var_2 = -_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(26487, var_3, -2147483648, -20036)) | (vec4<i32>(var_0.x, var_3, -87719, 44337) << (vec4<u32>(global0.a.a.a.x, 6093u, var_1.c.a.x, var_1.c.a.x) % vec4<u32>(32u))), countOneBits(vec4<i32>(var_3, -35280, var_0.x, var_2.x) ^ vec4<i32>(2147483647, var_2.x, var_3, -27863))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u ^ (global0.a.a.a.x ^ var_1.d.a.a.a.x), select(var_1.d.a.a.a.x, global0.a.a.a.x, false), 36086u, 1u << (global0.a.a.a.x % 32u)), vec4<u32>(firstLeadingBit(firstTrailingBit(120002u)), ~0u & (global0.a.a.a.x | global0.a.a.a.x), var_1.c.a.x ^ 14885u, abs(_wgslsmith_add_u32(1u, 4294967295u)))) % vec4<u32>(32u));
                    var var_4 = var_1;
                }
                case 49943: {
                    global1 = func_10(Struct_2(func_11(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 44060, u_input.a.x, 50097), vec4<i32>(2147483647, var_0.x, u_input.a.x, var_2.x)), vec2<bool>(global0.a.a.c, func_8(Struct_4(global0.a.a.c, var_1.d.a.a.b, var_1.c, global2[_wgslsmith_index_u32(global0.a.a.a.x, 25u)]), Struct_1(var_1.c.a, global0.a.a.b, global0.a.a.c, vec2<f32>(var_1.d.a.a.d.x, 567.0)), var_1.b.x))).a), Struct_2(func_3().c), global0.a.a.a.x);
                }
                case 74451: {
                    let var_3 = global0.a.a.a.x;
                    global1 = ~var_2.x;
                }
                default: {
                    var var_3 = firstLeadingBit(_wgslsmith_add_i32(var_2.x, abs(0)));
                    var var_4 = var_1.d.a;
                    var_4 = func_3().d.a;
                    global1 = var_0.x;
                }
            }
            for (var var_3 = 68211; all(!vec2<bool>(func_11(u_input.b, !vec2<bool>(global0.b, false)).a.c, !var_1.c.c)); ) {
                if (LOOP_COUNTERS[33u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[33u] = LOOP_COUNTERS[33u] + 1u;
                break;
            }
        }
    }
    switch (~(~(i32(-1) * -1))) {
        case 15366: {
        }
        case -2147483648: {
        }
        case 2147483647: {
            let var_1 = Struct_2(Struct_1(select(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.a.a.a.x, 29438u, global0.a.a.a.x), vec3<u32>(global0.a.a.a.x, global0.a.a.a.x, 26075u)), ~reverseBits(global0.a.a.a), global0.a.a.c || func_6()), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000.0, 1022.0, 1000.0))), global0.a.a.b), true, global0.a.a.d));
            let var_2 = select(!(!(!select(vec2<bool>(var_1.a.c, true), vec2<bool>(global0.b, var_1.a.c), global0.a.a.c))), select(vec2<bool>(!false, !any(vec4<bool>(true, global0.b, true, var_1.a.c))), vec2<bool>(func_1(_wgslsmith_f_op_f32(-var_1.a.b.x)), !(u_input.b > -2147483648)), any(vec4<bool>(42682u <= 1u, global0.b, func_8(Struct_4(global0.b, global0.a.a.b, Struct_1(vec3<u32>(var_1.a.a.x, global0.a.a.a.x, 4294967295u), var_1.a.b, false, var_1.a.b.yy), Struct_3(Struct_2(global0.a.a), var_1.a.c)), Struct_1(var_1.a.a, global0.a.a.b, false, var_1.a.b.xy), 1148.0), func_1(var_1.a.b.x)))), vec2<bool>(false, global0.b));
            return;
        }
        default: {
        }
    }
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.a.d.x, global0.a.a.d.x, global0.a.a.b.x, global0.a.a.d.x), vec4<f32>(global0.a.a.b.x, 898.0, global0.a.a.b.x, 626.0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.b.x, -511.0, global0.a.a.d.x, global0.a.a.d.x) - vec4<f32>(global0.a.a.d.x, -2603.0, global0.a.a.b.x, global0.a.a.d.x)) * vec4<f32>(global0.a.a.b.x, -1711.0, -1135.0, global0.a.a.b.x)) + vec4<f32>(global0.a.a.d.x, 619.0, _wgslsmith_f_op_f32(global0.a.a.b.x + global0.a.a.b.x), _wgslsmith_f_op_f32(-477.0 - 422.0))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398.0, global0.a.a.d.x, global0.a.a.b.x, -604.0)))))));
    global0 = Struct_3(func_3().d.a, all(vec4<bool>((i32(-1) * -1837) <= var_0.x, true, !(19123u != 23789u), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(174.0, var_1.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.x, 990.0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.a.b.yx)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(16169, u_input.b, u_input.a.x), vec3<i32>(u_input.a.x, var_0.x, var_0.x)), ~u_input.a), min(-u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-33465, var_0.x, -71256), var_0))), -_wgslsmith_mult_vec3_i32(var_0, _wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), firstTrailingBit(-firstTrailingBit(vec3<i32>(25556, var_0.x, var_0.x)))), -793.0, global0.a.a.b.yz);
}

