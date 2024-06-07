// {"0:0":[54,5,25,137,192,124,172,39]}
// Seed: 15443728468228937419

struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec2<bool>(false, false), 677.0, Struct_1(vec3<u32>(0u, 0u, 0u), -69), Struct_1(vec3<u32>(7307u, 1u, 1u), 1639)), Struct_2(vec2<bool>(false, true), -1295.0, Struct_1(vec3<u32>(0u, 26625u, 1u), 19218), Struct_1(vec3<u32>(1u, 41343u, 8073u), 4903)), Struct_2(vec2<bool>(false, true), -1524.0, Struct_1(vec3<u32>(3567u, 1u, 37201u), 14355), Struct_1(vec3<u32>(4294967295u, 0u, 1u), -17309)), Struct_2(vec2<bool>(true, true), -1524.0, Struct_1(vec3<u32>(80350u, 21296u, 4294967295u), -6358), Struct_1(vec3<u32>(1u, 1u, 75523u), -25980)), Struct_2(vec2<bool>(false, true), 228.0, Struct_1(vec3<u32>(4294967295u, 28690u, 79109u), 32444), Struct_1(vec3<u32>(4294967295u, 4294967295u, 81273u), -1)), Struct_2(vec2<bool>(false, true), 1000.0, Struct_1(vec3<u32>(1u, 52357u, 44727u), -44133), Struct_1(vec3<u32>(114479u, 15129u, 4294967295u), 1)), Struct_2(vec2<bool>(true, false), -652.0, Struct_1(vec3<u32>(43702u, 4294967295u, 1u), -2147483648), Struct_1(vec3<u32>(0u, 61272u, 16678u), -3143)), Struct_2(vec2<bool>(false, false), -300.0, Struct_1(vec3<u32>(41083u, 63568u, 75086u), 1), Struct_1(vec3<u32>(1u, 1u, 74950u), -7003)), Struct_2(vec2<bool>(true, true), -1000.0, Struct_1(vec3<u32>(42943u, 0u, 0u), -1245), Struct_1(vec3<u32>(4294967295u, 27421u, 13749u), 2147483647)), Struct_2(vec2<bool>(false, false), 597.0, Struct_1(vec3<u32>(38333u, 4294967295u, 4294967295u), 20779), Struct_1(vec3<u32>(7346u, 17386u, 19666u), -3832)), Struct_2(vec2<bool>(true, false), 1000.0, Struct_1(vec3<u32>(42314u, 1u, 1u), -7619), Struct_1(vec3<u32>(0u, 26018u, 45927u), 35940)), Struct_2(vec2<bool>(false, true), 130.0, Struct_1(vec3<u32>(0u, 4294967295u, 33247u), 2147483647), Struct_1(vec3<u32>(0u, 70743u, 0u), -15050)), Struct_2(vec2<bool>(true, true), 1356.0, Struct_1(vec3<u32>(1u, 2753u, 4294967295u), -23010), Struct_1(vec3<u32>(0u, 1u, 0u), 15462)), Struct_2(vec2<bool>(false, false), 373.0, Struct_1(vec3<u32>(25262u, 67356u, 0u), 2147483647), Struct_1(vec3<u32>(1u, 1u, 1241u), 28)), Struct_2(vec2<bool>(false, false), -436.0, Struct_1(vec3<u32>(18599u, 1u, 37217u), -25687), Struct_1(vec3<u32>(1u, 15565u, 15145u), 15463)), Struct_2(vec2<bool>(true, false), 1909.0, Struct_1(vec3<u32>(4294967295u, 54695u, 34405u), -2147483648), Struct_1(vec3<u32>(1u, 10095u, 13753u), 2147483647)), Struct_2(vec2<bool>(true, false), 506.0, Struct_1(vec3<u32>(1u, 9686u, 102717u), 26140), Struct_1(vec3<u32>(4294967295u, 17358u, 37685u), 1)), Struct_2(vec2<bool>(false, false), 1000.0, Struct_1(vec3<u32>(0u, 1189u, 1u), 26625), Struct_1(vec3<u32>(52671u, 4294967295u, 12629u), 1)), Struct_2(vec2<bool>(false, false), -256.0, Struct_1(vec3<u32>(9230u, 73067u, 4294967295u), -2147483648), Struct_1(vec3<u32>(42170u, 4294967295u, 78667u), 1)), Struct_2(vec2<bool>(true, true), -999.0, Struct_1(vec3<u32>(1u, 4922u, 1u), 0), Struct_1(vec3<u32>(67555u, 9762u, 1u), 5490)));

var<private> global1: vec2<f32> = vec2<f32>(308.0, 1150.0);

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<u32>(0u, 1u, 4294967295u), 2147483647), Struct_1(vec3<u32>(1u, 4294967295u, 1u), 2147483647), Struct_1(vec3<u32>(48643u, 0u, 4294967295u), -1), Struct_1(vec3<u32>(4294967295u, 1194u, 11312u), -18670), Struct_1(vec3<u32>(0u, 0u, 33331u), -40329), Struct_1(vec3<u32>(0u, 72969u, 1u), -23247), Struct_1(vec3<u32>(9181u, 0u, 13498u), 0), Struct_1(vec3<u32>(0u, 50090u, 0u), 2147483647), Struct_1(vec3<u32>(44081u, 11177u, 71135u), 2147483647), Struct_1(vec3<u32>(1u, 11193u, 1u), 32487), Struct_1(vec3<u32>(1u, 16819u, 1u), -1), Struct_1(vec3<u32>(9169u, 0u, 35228u), -12644), Struct_1(vec3<u32>(1u, 4294967295u, 1u), 38884), Struct_1(vec3<u32>(25885u, 1u, 0u), 20109), Struct_1(vec3<u32>(5357u, 4294967295u, 4294967295u), -1), Struct_1(vec3<u32>(17026u, 20881u, 21530u), -18390), Struct_1(vec3<u32>(0u, 16504u, 4294967295u), -2147483648), Struct_1(vec3<u32>(1726u, 37677u, 12318u), 48973), Struct_1(vec3<u32>(35326u, 21240u, 4294967295u), 0), Struct_1(vec3<u32>(89584u, 1u, 1u), 0), Struct_1(vec3<u32>(1u, 32431u, 17863u), -2147483648));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(64892u, 1u, 1u), -14802);

var<private> global4: vec4<f32> = vec4<f32>(1257.0, 959.0, -259.0, -470.0);

var<private> LOOP_COUNTERS: array<u32, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2), (((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0))) || (((a[3] == -2147483648) && (b[3] == -1)) || (b[3] == 0)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1) && (b == -2147483648)) || ((a == -2147483648) && (b == -1))) || ((b != 0) && ((a > (2147483647 / b)) || (a < (-2147483648 / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0))) || ((a[3] < 0) || (b[3] <= 0)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0] < 0) && (a[0] > (2147483647 + b[0]))) || ((b[1] < 0) && (a[1] > (2147483647 + b[1])))) || (((b[0] > 0) && (a[0] < (-2147483648 + b[0]))) || ((b[1] > 0) && (a[1] < (-2147483648 + b[1])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42.0), f32(-123.0), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2), ((((a[0] == -2147483648) && (b[0] == -1)) || (b[0] == 0)) || (((a[1] == -2147483648) && (b[1] == -1)) || (b[1] == 0))) || (((a[2] == -2147483648) && (b[2] == -1)) || (b[2] == 0)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2), ((a == -2147483648) && (b == -1)) || (b == 0));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((b[3] > 0) && (a[3] > (2147483647 - b[3])))) || (((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))) || ((b[3] < 0) && (a[3] < (-2147483648 - b[3])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || ((b[2] > 0) && (a[2] > (2147483647 - b[2])))) || ((((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))) || ((b[2] < 0) && (a[2] < (-2147483648 - b[2])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0] == 0u) || (b[1] == 0u)) || (b[2] == 0u)) || (b[3] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0))) || ((a[2] < 0) || (b[2] <= 0)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(26205u | _wgslsmith_add_u32(1u, firstLeadingBit(global3.a.x)), 20u)];
    switch (_wgslsmith_dot_vec4_i32(~vec4<i32>(abs(global3.b), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -34289, -32866, arg_2), vec4<i32>(arg_2, var_0.c.b, 33772, global3.b)), countOneBits(arg_0.b), arg_2 << (6755u % 32u)), abs(-vec4<i32>(-34590, -15044, 1605, 2147483647))) ^ 2147483647) {
        case -17509: {
            global2 = array<Struct_1, 21>();
            let var_1 = arg_0.a.xy;
            switch (var_0.c.b) {
                default: {
                    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(global3.a), ~vec3<u32>(u_input.a, global3.a.x, 0u)), _wgslsmith_sub_u32(~13449u, countOneBits(global3.a.x))), 60087u >> (abs(var_0.d.a.x) % 32u)), 20u)];
                    let var_2 = arg_2;
                    var var_3 = _wgslsmith_f_op_f32(-global1.x);
                }
            }
            var_0 = Struct_2(!var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c.a.x, var_1.x), var_0.d.a.xx), ~(global3.a.x << (arg_0.a.x % 32u))), 21u)], Struct_1(vec3<u32>(4108u, u_input.a, abs(22051u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, u_input.a, global3.a.x), arg_0.a >> (vec3<u32>(u_input.b, u_input.b, arg_0.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_0.b));
        }
        default: {
            let var_1 = arg_0;
        }
    }
    let var_1 = global3.a;
    for (var var_2 = 1; var_2 == 13936; ) {
        if (LOOP_COUNTERS[0u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
        loop {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
        }
        var var_3 = vec4<bool>(-1 < -(10040 | _wgslsmith_clamp_i32(var_0.c.b, arg_0.b, 2147483647)), any(var_0.a), false, var_0.a.x);
        loop {
            if (LOOP_COUNTERS[2u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        }
        switch (_wgslsmith_div_i32(global3.b, 64595)) {
            default: {
                let var_4 = vec4<u32>(var_0.d.a.x, (arg_0.a.x & 1u) >> (global3.a.x % 32u), ~var_1.x, 1u);
                let var_5 = max(reverseBits(var_1.zz), _wgslsmith_sub_vec2_u32((~var_4.yw & vec2<u32>(var_1.x, 15991u)) >> (var_1.xz % vec2<u32>(32u)), reverseBits(var_1.zx)));
                break;
            }
        }
        let var_4 = Struct_1(~(~vec3<u32>(var_1.x, u_input.b, global3.a.x) ^ _wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_1.x, 1u, arg_0.a.x), vec3<u32>(var_0.c.a.x, 133375u, 23364u)), _wgslsmith_sub_vec3_u32(arg_0.a, arg_0.a), abs(vec3<u32>(global3.a.x, 4294967295u, 0u)))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-arg_0.b & _wgslsmith_dot_vec4_i32(vec4<i32>(0, -5306, var_0.c.b, arg_2), vec4<i32>(global3.b, arg_2, 15780, -17881)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_0.c.b, global3.b, 16195, global3.b), vec4<i32>(1, var_0.c.b, 2147483647, arg_2)), -vec4<i32>(var_0.d.b, 1, global3.b, arg_0.b))), 45963));
    }
    global2 = array<Struct_1, 21>();
    return global0[_wgslsmith_index_u32(22253u, 20u)];
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec4<f32> {
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        switch (-2147483647) {
            case 37852: {
                global2 = array<Struct_1, 21>();
            }
            case -43926: {
                var var_0 = select(select(vec4<bool>(arg_2.a.x | true, !arg_2.a.x & false, any(select(vec3<bool>(arg_2.a.x, arg_2.a.x, false), vec3<bool>(arg_2.a.x, false, false), true)), false), !select(vec4<bool>(false, false, arg_2.a.x, arg_2.a.x), select(vec4<bool>(true, arg_2.a.x, arg_2.a.x, true), vec4<bool>(true, false, true, false), arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)), !arg_2.a.x), !vec4<bool>((true == arg_2.a.x) || false, true, !false, -360.0 != func_5(global2[_wgslsmith_index_u32(0u, 21u)], vec4<f32>(-264.0, global4.x, global1.x, 224.0), 0).b), false);
            }
            case 2147483647: {
                global2 = array<Struct_1, 21>();
                continue;
            }
            case 12751: {
                var var_0 = func_5(func_5(func_5(arg_2.d, vec4<f32>(1370.0, _wgslsmith_f_op_f32(arg_2.b - 422.0), _wgslsmith_f_op_f32(-global1.x), 1416.0), -select(-11655, 20868, arg_2.a.x)).c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(770.0, global4.x, arg_2.b, global4.x), vec4<f32>(317.0, global1.x, 1686.0, 1000.0), arg_2.a.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(760.0, global1.x, global4.x, -527.0) - vec4<f32>(-700.0, 375.0, global1.x, -118.0))), _wgslsmith_dot_vec4_i32(vec4<i32>(33132, _wgslsmith_div_i32(45403, arg_2.c.b), arg_3, arg_3 | arg_2.c.b), countOneBits(abs(vec4<i32>(arg_3, arg_3, arg_3, 40999))))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 2898.0, -114.0, 1240.0) * vec4<f32>(global4.x, global4.x, -681.0, -1021.0)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, 1549.0, -1516.0, arg_2.b)))), vec4<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1.0) * -167.0), -146.0, 103.0)))), max(-18611, -(i32(-1) * -arg_2.d.b))).a;
                global2 = array<Struct_1, 21>();
                var var_1 = arg_2.c;
                global2 = array<Struct_1, 21>();
            }
            default: {
                let var_0 = (_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1478.0, global1.x), _wgslsmith_f_op_f32(global1.x * -484.0)), _wgslsmith_f_op_f32(abs(global4.x))) != arg_2.b) || arg_2.a.x;
            }
        }
        global1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(873.0, _wgslsmith_f_op_f32(min(1153.0, 485.0)))))))), global1.x);
        var var_0 = vec3<i32>(arg_3, max(0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.b, 1) ^ vec2<i32>(47116, global3.b), ~vec2<i32>(33543, arg_2.d.b))), 2147483647) ^ -countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(global3.b, -30910, global3.b), ~vec3<i32>(-20143, arg_2.c.b, global3.b)));
    }
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global4.x), _wgslsmith_f_op_f32(min(arg_2.b, arg_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.b, global1.x)) * _wgslsmith_f_op_f32(arg_2.b * 174.0)))))));
    loop {
        if (LOOP_COUNTERS[4u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
        if (!((i32(-1) * -global3.b) < -_wgslsmith_mod_i32(arg_3, arg_2.c.b)) & false) {
            global3 = Struct_1((arg_0 & _wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, arg_1, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 61640u, global3.a.x), vec3<u32>(arg_1, 0u, arg_2.d.a.x)))) << (max(reverseBits(vec3<u32>(u_input.b, u_input.b, 10218u)) >> (arg_2.c.a % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.c.a.x, 56408u, 0u)), arg_2.c.a | vec3<u32>(arg_0.x, arg_1, 4294967295u), abs(arg_0))) % vec3<u32>(32u)), -7664);
        }
        switch (_wgslsmith_dot_vec4_i32(reverseBits(~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3, 1, -1, arg_2.d.b), vec4<i32>(global3.b, global3.b, global3.b, -2147483648)), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.b, global3.b, global3.b, global3.b), vec4<i32>(16992, arg_2.c.b, arg_2.c.b, 1)))), -(~vec4<i32>(arg_2.d.b, -27039, 8413, global3.b)) ^ ~vec4<i32>(min(2147483647, arg_3), global3.b, _wgslsmith_div_i32(-3916, -2137), i32(-1) * -14753))) {
            case -22077: {
            }
            case -2147483648: {
                continue;
            }
            case -21417: {
                break;
            }
            case 46852: {
                continue;
            }
            default: {
                var var_1 = arg_2.d;
                return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-322.0, 498.0, var_0.x, global1.x), vec4<f32>(-833.0, 1423.0, 1341.0, -1844.0), false)), vec4<f32>(var_0.x, var_0.x, 1766.0, global4.x), !false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(410.0, var_0.x, 1000.0, -740.0)) * vec4<f32>(-141.0, -476.0, var_0.x, -1603.0)), vec4<f32>(global1.x, _wgslsmith_div_f32(732.0, -657.0), _wgslsmith_f_op_f32(f32(-1.0) * -147.0), 867.0))), !(!(!vec4<bool>(true, arg_2.a.x, false, arg_2.a.x)))));
            }
        }
        if ((all(select(!vec4<bool>(arg_2.a.x, true, arg_2.a.x, false), vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x), select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, false), vec4<bool>(false, arg_2.a.x, true, arg_2.a.x), false))) && arg_2.a.x) | (true || (arg_2.a.x | (arg_1 < arg_1)))) {
            var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(arg_2.c.b, arg_3)), max(vec2<i32>(3893, 32168), vec2<i32>(-22495, -1))), select(vec2<i32>(arg_2.d.b, 0), ~vec2<i32>(2147483647, global3.b), false)), max(vec2<i32>(arg_2.c.b, arg_2.d.b), vec2<i32>(firstLeadingBit(6876), ~(~33725))));
            continue;
        }
    }
    var var_1 = global4.x;
    switch (~12573) {
        case 33122: {
            global3 = Struct_1(global3.a, 1);
            switch (-_wgslsmith_dot_vec2_i32(reverseBits(select(vec2<i32>(arg_2.d.b, arg_2.d.b) | vec2<i32>(arg_3, -10600), vec2<i32>(arg_3, arg_3) >> (global3.a.xz % vec2<u32>(32u)), any(arg_2.a))), select(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(global3.b, -27299)), vec2<i32>(17739, 1)), -vec2<i32>(1, 1) >> (vec2<u32>(global3.a.x, arg_1) % vec2<u32>(32u)), vec2<bool>(!false, !arg_2.a.x)))) {
                case -4068: {
                    let var_2 = -2147483648;
                    var var_3 = 4294967295u;
                    var var_4 = arg_2;
                    global1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -893.0)));
                    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(570.0, 448.0, var_4.b, arg_2.b) - vec4<f32>(global4.x, var_0.x, var_4.b, 357.0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(895.0, var_4.b, var_0.x, arg_2.b) - vec4<f32>(arg_2.b, 751.0, 595.0, var_4.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(744.0, 917.0, 1031.0, global1.x)))), vec4<f32>(432.0, 1354.0, global1.x, -100.0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1384.0 - arg_2.b), _wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(max(global1.x, var_0.x)), _wgslsmith_f_op_f32(-1612.0))))));
                }
                case -1: {
                    let var_2 = select(select(select(!(!arg_2.a), !(!vec2<bool>(arg_2.a.x, arg_2.a.x)), vec2<bool>(any(vec3<bool>(arg_2.a.x, true, true)), any(vec3<bool>(false, true, true)))), vec2<bool>(all(func_5(arg_2.d, vec4<f32>(-745.0, var_0.x, 802.0, -1775.0), global3.b).a), !all(vec4<bool>(arg_2.a.x, false, arg_2.a.x, false))), arg_2.a.x), arg_2.a, !false);
                    var var_3 = any(vec2<bool>(false, select(false, all(!vec3<bool>(false, var_2.x, false)), !true)));
                }
                default: {
                    let var_2 = arg_2;
                    var var_3 = arg_2.d;
                }
            }
            let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454.0 - global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global4.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.b, _wgslsmith_f_op_f32(global1.x - arg_2.b))) + _wgslsmith_f_op_f32(-global4.x)), global1.x) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-1692.0 - _wgslsmith_f_op_f32(floor(arg_2.b))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.x, arg_2.b)), _wgslsmith_div_f32(452.0, 1155.0))))));
        }
        case 34514: {
        }
        case -40591: {
            let var_2 = Struct_2(vec2<bool>(!any(vec4<bool>(arg_2.a.x, arg_2.a.x, false, false)), arg_2.a.x), _wgslsmith_f_op_f32(-global4.x), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, arg_2.d.a.x, 9115u), vec3<u32>(global3.a.x, 21297u, 56360u) << (arg_0 % vec3<u32>(32u))), arg_0), arg_2.d.b), Struct_1(firstTrailingBit(global3.a), -31566));
            loop {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                continue;
            }
            var var_3 = var_2.a.x;
            var_3 = select(any(!(!(!vec4<bool>(true, false, arg_2.a.x, arg_2.a.x)))), any(vec3<bool>(!false == true, false, func_5(func_5(Struct_1(vec3<u32>(global3.a.x, 1u, 10668u), 1), vec4<f32>(arg_2.b, -1000.0, -907.0, 715.0), arg_3).d, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1483.0, var_0.x, 1168.0, 207.0), vec4<f32>(global4.x, var_2.b, global4.x, -2902.0))), 2147483647).a.x)), countOneBits(firstTrailingBit(33490u)) >= ~global3.a.x);
            var var_4 = arg_2.a.x;
        }
        case -14015: {
        }
        default: {
            for (var var_2 = arg_3; any(vec3<bool>(false, all(vec4<bool>(global3.b <= 1, arg_3 != arg_2.d.b, !true, !true)), !true)); global4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1929.0, arg_2.b, global4.x, -2487.0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1232.0, var_0.x, 1055.0, 613.0) * vec4<f32>(global4.x, global1.x, -980.0, arg_2.b))))))))) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                break;
            }
            for (var var_2 = 34598; any(vec3<bool>(all(select(vec4<bool>(arg_2.a.x, false, arg_2.a.x, false), vec4<bool>(false, false, false, false), false)), true, false)); global1 = _wgslsmith_f_op_vec2_f32(max(var_0, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(518.0, global4.x)))))) {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
            }
            var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484.0 + 820.0))) - 486.0) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1382.0, _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(round(global4.x))))))));
            if (all(arg_2.a)) {
                let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.b, 764.0)) * _wgslsmith_f_op_f32(f32(-1.0) * -1295.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-143.0)))))), _wgslsmith_f_op_f32(sign(global4.x))));
            }
            global0 = array<Struct_2, 20>();
        }
    }
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-699.0)), -840.0, -1000.0, 400.0));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    if (any(vec3<bool>(all(vec3<bool>(arg_1.x | arg_1.x, u_input.a >= global3.a.x, any(vec4<bool>(arg_1.x, false, false, true)))), !arg_1.x, any(arg_1)))) {
        let var_0 = arg_1.x;
        global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_6(~vec3<u32>(3944u, global3.a.x, 0u), 4294967295u, func_5(Struct_1(vec3<u32>(u_input.a, 1u, global3.a.x), global3.b), vec4<f32>(377.0, 1151.0, -1098.0, 315.0), global3.b), -18420))))));
        global3 = Struct_1(vec3<u32>(4294967295u, ~((0u ^ u_input.b) ^ global3.a.x), arg_0.a.x), global3.b);
    }
    var var_0 = _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(func_5(Struct_1(vec3<u32>(arg_0.a.x, 24644u, global3.a.x), 2147483647), vec4<f32>(global4.x, global4.x, 1800.0, global1.x), arg_0.b).d.b, -40845), -arg_0.b, select(~2131, arg_0.b, select(true, arg_1.x, false)))), vec3<i32>(arg_0.b, arg_0.b, -_wgslsmith_clamp_i32(i32(-1) * -36634, func_5(global2[_wgslsmith_index_u32(2096u, 21u)], vec4<f32>(1220.0, global1.x, 623.0, global1.x), arg_0.b).c.b, arg_0.b)));
    var var_1 = vec2<i32>(func_5(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(1u) << (20531u % 32u), u_input.b), 21u)], _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 233.0, global1.x) * vec4<f32>(global4.x, 520.0, 312.0, global4.x)) * vec4<f32>(1000.0, global1.x, global1.x, 2336.0)))), _wgslsmith_mod_i32(~var_0.x, (var_0.x >> (62482u % 32u)) >> (u_input.a % 32u))).d.b, var_0.x);
    var_0 = vec3<i32>(var_1.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.b, 7560), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(2147483647, -48684)), max(vec2<i32>(var_1.x, 2147483647), var_0.yy))), global3.b), ~arg_0.b << (~(min(global3.a.x, 4995u) | arg_0.a.x) % 32u));
    for (var var_2: i32; arg_1.x; var_2 -= 1) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
        switch (~max(min(abs(-var_0.x), var_1.x), _wgslsmith_mult_i32(global3.b, var_0.x))) {
            case -18768: {
                continue;
            }
            case -17849: {
                var_2 = -2147483648;
                var var_3 = Struct_1(arg_0.a, _wgslsmith_mod_i32(4033, 596));
                var var_4 = Struct_1(arg_0.a | global3.a, -11768);
                let var_5 = Struct_1(vec3<u32>(global3.a.x, min(~(4294967295u << (u_input.a % 32u)), min(u_input.b | var_3.a.x, ~arg_0.a.x)), select(4294967295u, 0u, true)), 82652);
                let var_6 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(-2147483648, 0, var_0.x)), -vec3<i32>(var_4.b, var_0.x, var_4.b) | -vec3<i32>(var_4.b, arg_0.b, 15139)), -var_0.x), abs(var_0.yy));
            }
            case 3245: {
            }
            default: {
            }
        }
        break;
    }
    return Struct_1(global3.a ^ ~(~firstLeadingBit(arg_0.a)), var_1.x);
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = -1;
    loop {
        if (LOOP_COUNTERS[9u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
    }
    for (; ; ) {
        if (LOOP_COUNTERS[10u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
        loop {
            if (LOOP_COUNTERS[11u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
            var var_1 = func_4(Struct_1(vec3<u32>(u_input.b, u_input.a, 10959u), _wgslsmith_div_i32(arg_1.b, ~arg_2.b)), vec2<bool>(false, arg_3)).a.x;
            var var_2 = arg_2;
            var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.a.x, var_2.a.x), _wgslsmith_sub_u32(1u, countOneBits(~arg_2.a.x)));
            global0 = array<Struct_2, 20>();
            continue;
        }
        continue;
    }
    var var_1 = Struct_1(countOneBits(vec3<u32>(func_4(Struct_1(arg_2.a, arg_2.b), vec2<bool>(true, true)).a.x & ~1u, firstLeadingBit(44326u), global3.a.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-16052, global3.b, arg_2.b, arg_1.b) ^ vec4<i32>(arg_1.b, global3.b, arg_1.b, global3.b), select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b, arg_2.b, arg_1.b, arg_1.b), vec4<i32>(0, arg_1.b, -2147483648, global3.b)), _wgslsmith_div_vec4_i32(vec4<i32>(24343, arg_1.b, 14708, arg_1.b), vec4<i32>(1, arg_1.b, arg_2.b, global3.b)), select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(true, true, false, true), vec4<bool>(arg_3, arg_3, false, false)))));
    loop {
        if (LOOP_COUNTERS[12u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
        if (global1.x >= _wgslsmith_f_op_f32(func_5(arg_2, vec4<f32>(_wgslsmith_f_op_f32(-750.0 * 246.0), -765.0, _wgslsmith_f_op_f32(479.0 + -515.0), 694.0), func_4(Struct_1(arg_2.a, 607), !vec2<bool>(true, true)).b).b * -138.0)) {
        }
        global4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1583.0, global1.x, -878.0, global1.x) + vec4<f32>(-126.0, global1.x, -1094.0, -150.0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1083.0, global4.x, global4.x, global1.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000.0, -144.0, -1259.0, global4.x) * vec4<f32>(-781.0, global4.x, 684.0, 399.0)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-490.0)), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(822.0 * global1.x), _wgslsmith_f_op_f32(f32(-1.0) * -201.0)))))));
        let var_2 = _wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.a.xz, global3.a.yy), 1390u & arg_0), 1u << (~arg_2.a.x % 32u), ~34882u, 14131u << (global3.a.x % 32u)), ~(~(~vec4<u32>(arg_0, 1u, 4294967295u, arg_0))), select(vec4<bool>(false, !false, false, !arg_3), !(!vec4<bool>(arg_3, true, arg_3, arg_3)), vec4<bool>(arg_3, any(vec3<bool>(arg_3, false, arg_3)), !false, !true))), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.a.x, u_input.a, 53339u, var_1.a.x)), reverseBits(vec4<u32>(arg_2.a.x, arg_2.a.x, 1u, 0u))));
        global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global4.ww)));
        break;
    }
    return global4.x;
}

fn func_3() -> Struct_1 {
    switch (global3.b) {
        case 34340: {
            let var_0 = vec2<i32>(global3.b | _wgslsmith_sub_i32(~global3.b, -4813), -1578);
        }
        case -6031: {
            let var_0 = global3.a.x;
            switch (-28376) {
                default: {
                    global3 = Struct_1(global3.a, min(~0 & (global3.b & -16882), 2147483647) << (~(select(global3.a.x, 0u, true) & global3.a.x) % 32u));
                    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(49866u, 0u, ~(~countOneBits(4294967295u))), 20u)];
                    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(2338.0 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))));
                    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(4294967295u, Struct_1(firstLeadingBit(vec3<u32>(global3.a.x, global3.a.x, 1u)) >> (select(var_1.d.a, global3.a, false) % vec3<u32>(32u)), ~_wgslsmith_div_i32(global3.b, var_1.d.b)), func_4(Struct_1(~var_1.d.a, 0), var_1.a), !var_1.a.x && (!true || !var_1.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) - global1.x))) * var_1.b));
                }
            }
            switch (19879) {
                case 11856: {
                    var var_1 = _wgslsmith_clamp_i32(~(i32(-1) * -2147483648) & (-13672 | -(global3.b | 0)), global3.b, _wgslsmith_clamp_i32(~max(_wgslsmith_add_i32(20487, -2147483648), global3.b), global3.b, 8880));
                    let var_2 = Struct_1(global3.a, _wgslsmith_div_i32(global3.b, 18345));
                }
                case -2147483648: {
                    var var_1 = func_5(func_5(Struct_1(~func_5(global2[_wgslsmith_index_u32(20731u, 21u)], vec4<f32>(-2026.0, global1.x, -1235.0, global4.x), global3.b).c.a, ~(16193 >> (global3.a.x % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1910.0, -619.0, 965.0, -1760.0) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, -189.0, -1845.0, global1.x))))), func_5(Struct_1(max(vec3<u32>(u_input.a, 384u, u_input.b), global3.a), abs(-12311)), vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global4.x + global1.x), _wgslsmith_f_op_vec4_f32(func_6(vec3<u32>(u_input.a, 63412u, global3.a.x), global3.a.x, Struct_2(vec2<bool>(false, false), 1000.0, Struct_1(global3.a, 2147483647), global2[_wgslsmith_index_u32(48320u, 21u)]), 16887)).x, 229.0), _wgslsmith_mod_i32(global3.b, max(global3.b, global3.b))).c.b).c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 271.0, -1847.0) * vec4<f32>(-1407.0, -194.0, 235.0, global4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1013.0, 621.0, global4.x, global4.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.x, global1.x, -838.0, 655.0), vec4<f32>(781.0, -971.0, 1786.0, global4.x)))))), -(_wgslsmith_add_i32(~global3.b, 2147483647 >> (global3.a.x % 32u)) >> (global3.a.x % 32u))).c;
                    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-680.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-438.0, -1444.0)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(-1065.0)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(438.0, -741.0))))));
                    var var_3 = ~min(vec2<i32>(-global3.b, 2147483647), vec2<i32>(global3.b, -14712) & (vec2<i32>(var_1.b, global3.b) | vec2<i32>(var_1.b, global3.b))) >> (_wgslsmith_clamp_vec2_u32(~var_1.a.xz >> (var_1.a.xz % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, var_1.a.x), ~vec2<u32>(u_input.a, 0u)), ~vec2<u32>(firstLeadingBit(4294967295u), countOneBits(global3.a.x))) % vec2<u32>(32u));
                    return global2[_wgslsmith_index_u32(4294967295u, 21u)];
                }
                default: {
                    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(58038u, 57856u), 20u)];
                }
            }
            loop {
                if (LOOP_COUNTERS[13u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
                continue;
            }
            var var_1 = global3.b;
        }
        case -9506: {
            global2 = array<Struct_1, 21>();
            loop {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_0 = select(!vec4<bool>(~global3.a.x >= _wgslsmith_mult_u32(4294967295u, u_input.a), all(vec4<bool>(false, true, false, false)), true, any(!vec4<bool>(false, false, false, true))), vec4<bool>(any(select(!vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), true, !false, false), false);
                continue;
            }
            for (var var_0 = -(global3.b ^ -1); var_0 <= 3888; var_0 -= 1) {
                if (LOOP_COUNTERS[15u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
                var_0 = global3.b;
                var var_1 = !(!(_wgslsmith_f_op_f32(-global4.x) != _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(sign(global4.x))))));
            }
            var var_0 = _wgslsmith_f_op_vec2_f32(exp2(global4.wz));
            var var_1 = Struct_1(global3.a, -696);
        }
        case -2147483648: {
            if (all(!vec2<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))))) {
                var var_0 = !select(vec4<bool>(!all(vec2<bool>(false, true)), func_5(global2[_wgslsmith_index_u32(func_5(Struct_1(global3.a, 34696), vec4<f32>(global4.x, -564.0, -687.0, 206.0), global3.b).c.a.x, 21u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -191.0, -643.0, global1.x) - vec4<f32>(-714.0, global1.x, global1.x, global1.x)), 2147483647).a.x, !true, false), select(vec4<bool>(global4.x != -795.0, 14899u < u_input.b, true, !true), vec4<bool>(4294967295u == global3.a.x, false & false, true & true, select(true, true, false)), (-438.0 == global1.x) && (global4.x >= 1873.0)), vec4<bool>(_wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(f32(-1.0) * -2120.0), false & any(vec2<bool>(false, false)), ~u_input.b != _wgslsmith_div_u32(u_input.a, 1u), -1385.0 <= _wgslsmith_f_op_f32(f32(-1.0) * -323.0)));
                let var_1 = _wgslsmith_f_op_f32(f32(-1.0) * -2129.0);
                global4 = vec4<f32>(_wgslsmith_f_op_f32(global4.x + 1403.0), var_1, 543.0, 1269.0);
                global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(countOneBits(~(global3.a ^ global3.a)), select(global3.a.x, global3.a.x, var_0.x), func_5(global2[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-929.0, -206.0, -274.0, -1191.0)), ~1), ~global3.b)));
                var_0 = select(vec4<bool>(!(!var_0.x), any(vec3<bool>(any(vec4<bool>(false, var_0.x, false, true)), var_0.x, var_0.x)), all(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), !false)), !var_0.x), vec4<bool>(false, !(~global3.b < _wgslsmith_sub_i32(0, global3.b)), any(var_0.zwz), -_wgslsmith_sub_i32(-43835, global3.b) < global3.b), vec4<bool>(~1u >= global3.a.x, var_0.x || (!true & var_0.x), var_0.x, all(!var_0.wx) || any(select(var_0.xx, var_0.zz, vec2<bool>(var_0.x, false)))));
            }
            loop {
                if (LOOP_COUNTERS[16u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
            }
            let var_0 = 0;
        }
        default: {
            global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-767.0, global1.x, global1.x, global4.x) - vec4<f32>(global4.x, global4.x, -1000.0, global4.x)))))));
            for (var var_0 = -1; ; global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), vec2<f32>(global1.x, global1.x))))) - vec2<f32>(_wgslsmith_f_op_f32(765.0 + global4.x), -764.0))) {
                if (LOOP_COUNTERS[17u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
                var var_1 = func_5(func_5(Struct_1(vec3<u32>(4294967295u, u_input.b & global3.a.x, 466u), ~global3.b & global3.b), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_7(37106u, Struct_1(vec3<u32>(u_input.b, u_input.a, u_input.b), -32434), Struct_1(global3.a, global3.b), true)), global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346.0 + global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * global4.x), 1000.0)), ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(25935, 0), vec2<i32>(2147483647, -35758)), global3.b ^ global3.b)).d, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(343.0)), global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global4.x)), _wgslsmith_f_op_f32(round(global4.x)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(-global4.x))))), ~_wgslsmith_mod_i32(global3.b, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.b, global3.b), vec2<i32>(global3.b, 2147483647))))).d;
                var_0 = -(~(~var_1.b));
            }
            var var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
        }
    }
    global3 = func_4(func_5(func_5(global2[_wgslsmith_index_u32(abs(0u), 21u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(402.0, global4.x, global4.x, global4.x) + vec4<f32>(672.0, 678.0, global1.x, 150.0)), 2147483647).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(911.0, global4.x, 1197.0, global4.x) * vec4<f32>(-751.0, 889.0, global4.x, global4.x)))), ~global3.b).d, vec2<bool>(-13783 <= func_5(global2[_wgslsmith_index_u32(~global3.a.x, 21u)], _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.x, global1.x, global4.x, 1100.0))), ~38389).c.b, true));
    for (var var_0 = 2147483647; ; global4 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -101.0, 1972.0, global4.x)) {
        if (LOOP_COUNTERS[18u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
        loop {
            if (LOOP_COUNTERS[19u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
            break;
        }
        var var_1 = vec4<bool>(func_5(Struct_1(vec3<u32>(47086u, global3.a.x, ~u_input.b), global3.b), vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1.0) * -281.0)), 240.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 418.0), global3.b).a.x, !all(select(!vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), !vec3<bool>(false, true, true))), true, !((!true & !false) & !(!false)));
        var var_2 = -32256;
    }
    let var_0 = _wgslsmith_clamp_vec2_i32(abs(firstTrailingBit(vec2<i32>(-56169, global3.b)) & vec2<i32>(-2147483648, global3.b)), vec2<i32>(-2147483648, global3.b) ^ ~vec2<i32>(-17633, global3.b), -vec2<i32>(~global3.b, 1)) ^ abs(vec2<i32>(-firstTrailingBit(global3.b), _wgslsmith_mult_i32(_wgslsmith_div_i32(global3.b, -18038), global3.b ^ global3.b)));
    if (!all(vec3<bool>(!true, (global3.b <= -13935) || false, false))) {
        var var_1 = -(func_4(func_4(global2[_wgslsmith_index_u32(~4294967295u, 21u)], select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec2<bool>(func_5(Struct_1(vec3<u32>(global3.a.x, global3.a.x, u_input.b), global3.b), vec4<f32>(1102.0, -386.0, global4.x, global1.x), -1).a.x, any(vec2<bool>(true, false)))).b >> (1u % 32u));
        global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(global1.x, -692.0), global1.x, _wgslsmith_f_op_f32(global1.x - 426.0), _wgslsmith_f_op_f32(-198.0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-270.0, -100.0, 1795.0, global1.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-291.0, 864.0, global4.x, -212.0), vec4<f32>(-2227.0, global1.x, -402.0, global4.x))), !vec4<bool>(true, true, true, false))))))) - vec4<f32>(-232.0, _wgslsmith_f_op_f32(560.0 + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_6(~global3.a, global3.a.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 9757u), 20u)], -12750)).x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -652.0) + _wgslsmith_f_op_f32(-364.0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1406.0))))));
        var var_2 = ~(-vec4<i32>(abs(global3.b), func_5(global2[_wgslsmith_index_u32(global3.a.x, 21u)], vec4<f32>(global1.x, global4.x, -425.0, 664.0), 2147483647).d.b ^ -2147483648, countOneBits(-54477), ~_wgslsmith_div_i32(var_0.x, 24424)));
        for (var var_3 = 9948; true; var_3 -= 1) {
            if (LOOP_COUNTERS[20u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
            var var_4 = max(abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, global3.b, 0, 2147483647) >> (~vec4<u32>(u_input.a, 91463u, global3.a.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_0.x, var_0.x, 3423) >> (vec4<u32>(u_input.a, 4294967295u, global3.a.x, 91577u) % vec4<u32>(32u)), -vec4<i32>(-1, var_2.x, 14594, 11333), vec4<i32>(-23892, var_0.x, global3.b, var_2.x)))), _wgslsmith_sub_i32(var_2.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(8479, var_0.x, 2147483647, -18450), vec4<i32>(var_2.x, global3.b, -47946, var_0.x)), func_5(global2[_wgslsmith_index_u32(1u, 21u)], vec4<f32>(global1.x, 660.0, -778.0, global1.x), 55496).d.b)) ^ (firstLeadingBit(_wgslsmith_mod_i32(-2147483648, var_0.x)) & _wgslsmith_sub_i32(-global3.b, i32(-1) * -1)));
        }
    }
    return Struct_1(~select(select(global3.a, max(vec3<u32>(u_input.a, global3.a.x, 1u), vec3<u32>(13758u, 1u, u_input.a)), vec3<bool>(true, true, false)), global3.a, select(true, false, true) | !false), ~var_0.x);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = func_3();
    for (var var_1 = 2147483647; all(arg_2.a); global3 = global2[_wgslsmith_index_u32(45573u, 21u)]) {
        if (LOOP_COUNTERS[21u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
        global0 = array<Struct_2, 20>();
        break;
    }
    if (arg_2.a.x) {
        switch (global3.b) {
            case -39576: {
                let var_1 = _wgslsmith_add_vec4_i32(min(countOneBits(vec4<i32>(global3.b, var_0.b, max(global3.b, arg_2.c.b), var_0.b)), vec4<i32>(var_0.b, -global3.b, -43847, 35963)), vec4<i32>(global3.b, countOneBits(1 & 2147483647) | arg_2.c.b, global3.b, -arg_0));
                var var_2 = select(vec3<bool>(!select(arg_2.a.x, arg_2.a.x, !arg_2.a.x), true, !arg_2.a.x), !(!vec3<bool>(!false, true, false | arg_2.a.x)), -1054.0 < arg_3);
                let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_7(93841u, Struct_1(var_0.a, min(~(-34155), -2147483648)), func_3(), any(vec3<bool>(56179u >= u_input.b, select(arg_2.a.x, false, false), !true)))), -297.0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(f32(-1.0) * -1631.0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_div_f32(-1554.0, arg_1.x)))))), _wgslsmith_f_op_f32(abs(arg_3)));
            }
            case 8211: {
                return true;
            }
            default: {
                let var_1 = vec3<f32>(arg_1.x, 256.0, 1302.0);
                var var_2 = !select(vec4<bool>(!arg_2.a.x, all(!arg_2.a), arg_2.a.x, _wgslsmith_f_op_f32(-1475.0) == _wgslsmith_div_f32(-245.0, 1667.0)), select(!(!vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, arg_2.a.x), !vec4<bool>(arg_2.a.x, false, arg_2.a.x, true), !vec4<bool>(true, arg_2.a.x, false, false)), false), vec4<bool>(true, false, ~var_0.a.x >= global3.a.x, false));
                global3 = func_3();
                let var_3 = 35364u;
                let var_4 = arg_2;
            }
        }
    }
    let var_1 = func_5(Struct_1(vec3<u32>(~(~59381u), 4294967295u, _wgslsmith_clamp_u32(~29150u, var_0.a.x, 49491u | 0u)), -58303), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_3, arg_3, global1.x)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(192.0, 893.0, 1061.0, arg_3) + vec4<f32>(-2420.0, -1000.0, -288.0, -592.0))))))), _wgslsmith_div_i32(_wgslsmith_div_i32(1, _wgslsmith_sub_i32(global3.b, 2147483647)), var_0.b) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(22026u, 9427u, global3.a.x, 36329u) << (vec4<u32>(var_0.a.x, 1u, var_0.a.x, u_input.a) % vec4<u32>(32u))), (vec4<u32>(u_input.b, arg_2.d.a.x, arg_2.c.a.x, 36099u) & vec4<u32>(var_0.a.x, 4768u, var_0.a.x, 1675u)) >> (vec4<u32>(global3.a.x, 4294967295u, 24088u, u_input.a) % vec4<u32>(32u))) % 32u));
    for (var var_2 = max(var_1.c.b, var_1.d.b); ; var_2 -= 1) {
        if (LOOP_COUNTERS[22u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
        var_2 = countOneBits(min(-1, _wgslsmith_add_i32(var_1.d.b ^ 949, 29100 & arg_2.d.b))) ^ _wgslsmith_sub_i32(_wgslsmith_add_i32(~(i32(-1) * -20017), global3.b), var_0.b);
        loop {
            if (LOOP_COUNTERS[23u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
            var var_3 = func_4(var_1.c, arg_2.a);
            break;
        }
        var var_3 = vec3<i32>(51552, ~(~var_0.b), func_5(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000.0, arg_3, arg_3, 1407.0), vec4<f32>(814.0, 1000.0, var_1.b, 105.0))), vec4<f32>(global1.x, arg_2.b, arg_3, global4.x), select(vec4<bool>(arg_2.a.x, false, false, arg_2.a.x), vec4<bool>(false, true, arg_2.a.x, true), var_1.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), global4.x, _wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(min(arg_2.b, 1000.0)))), var_1.d.b & func_4(global2[_wgslsmith_index_u32(func_5(Struct_1(var_1.c.a, 52982), vec4<f32>(global1.x, 1580.0, -953.0, -664.0), var_0.b).d.a.x, 21u)], func_5(Struct_1(var_0.a, arg_2.c.b), vec4<f32>(1707.0, arg_2.b, arg_2.b, global1.x), var_1.d.b).a).b).c.b);
        var var_4 = ~_wgslsmith_mult_u32(~(_wgslsmith_add_u32(4294967295u, global3.a.x) | _wgslsmith_clamp_u32(1u, var_1.c.a.x, var_1.c.a.x)), u_input.a);
        global3 = func_4(var_1.c, select(arg_2.a, vec2<bool>(~arg_2.c.b <= ~0, false), !select(vec2<bool>(arg_2.a.x, arg_2.a.x), select(var_1.a, vec2<bool>(var_1.a.x, arg_2.a.x), vec2<bool>(true, arg_2.a.x)), arg_2.a)));
    }
    return var_1.a.x;
}

fn func_1(arg_0: u32) -> bool {
    switch (global3.b) {
        default: {
            if (true) {
                let var_0 = any(!select(vec3<bool>(!false, 1699.0 >= 1000.0, false), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), all(vec3<bool>(true, false, false))), select(func_2(global3.b, vec3<f32>(626.0, -813.0, global4.x), Struct_2(vec2<bool>(false, true), -388.0, global2[_wgslsmith_index_u32(34564u, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)]), -1000.0), !false, func_5(Struct_1(vec3<u32>(global3.a.x, 5380u, 4294967295u), -32813), vec4<f32>(1451.0, global1.x, global4.x, global4.x), global3.b).a.x)));
                var var_1 = func_4(func_3(), select(select(vec2<bool>(arg_0 >= 26382u, false), vec2<bool>(global3.a.x != 1u, all(vec4<bool>(true, var_0, true, false))), select(func_5(Struct_1(global3.a, 56805), vec4<f32>(-450.0, global1.x, -1000.0, -1189.0), 14198).a, vec2<bool>(true, true), func_5(Struct_1(global3.a, global3.b), vec4<f32>(global4.x, 741.0, global4.x, -1181.0), 20683).a.x)), vec2<bool>(var_0, !false), false));
                var var_2 = ~vec3<u32>(~u_input.b, global3.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(~var_1.a.x, _wgslsmith_add_u32(23242u, var_1.a.x)), 4294967295u & 29358u));
                var var_3 = all(func_5(func_4(Struct_1(vec3<u32>(1u, u_input.b, 63585u), var_1.b), select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), false)), _wgslsmith_div_vec4_f32(vec4<f32>(global4.x, 269.0, 228.0, 1924.0), _wgslsmith_f_op_vec4_f32(vec4<f32>(296.0, 1426.0, global1.x, global1.x) * vec4<f32>(global1.x, global4.x, global4.x, -504.0))), func_4(Struct_1(vec3<u32>(arg_0, var_2.x, var_2.x), var_1.b), !vec2<bool>(true, true)).b).a) == (!(var_0 != any(vec4<bool>(true, var_0, false, var_0))) & !true);
                global2 = array<Struct_1, 21>();
            }
        }
    }
    switch (func_4(global2[_wgslsmith_index_u32(reverseBits(~(~(arg_0 >> (arg_0 % 32u)))), 21u)], !func_5(global2[_wgslsmith_index_u32(func_4(Struct_1(vec3<u32>(arg_0, global3.a.x, u_input.a), 1125), vec2<bool>(true, true)).a.x, 21u)], _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global1.x, global4.x, global4.x)), vec4<f32>(337.0, global1.x, global1.x, global1.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.b, global3.b), ~vec2<i32>(global3.b, 6576))).a).b) {
        case 0: {
            global0 = array<Struct_2, 20>();
            var var_0 = -(func_5(Struct_1(global3.a << (global3.a % vec3<u32>(32u)), -1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global1.x, -207.0, global4.x)), 2049).d.b & abs(global3.b));
            switch (global3.b) {
                case -9662: {
                }
                case 0: {
                    global4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(610.0, global4.x, -2070.0, -749.0))) + vec4<f32>(global1.x, global4.x, global4.x, global4.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1353.0, 936.0, global1.x, 605.0), vec4<f32>(-1279.0, global1.x, global1.x, global4.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1556.0, global4.x, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-523.0, -2501.0, 138.0, -1196.0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 2258.0, global1.x, -1000.0)))))), vec4<f32>(_wgslsmith_f_op_f32(-global4.x), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1771.0, _wgslsmith_f_op_f32(global1.x + global4.x)))), global1.x)));
                }
                case -2147483648: {
                    var_0 = -1;
                    var var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a.x, 45415u, global3.a.x, 1u), select(vec4<u32>(63696u, u_input.b, arg_0, arg_0), vec4<u32>(1031u, global3.a.x, u_input.a, 1u), false)) & (select(1264u, 0u, false) | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 50438u), vec3<u32>(u_input.a, 1u, 0u))), max(7606u, arg_0), ~global3.a.x);
                    var var_2 = func_5(func_4(func_3(), vec2<bool>(all(!vec4<bool>(false, false, false, false)), false)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) - global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(252.0)) * -2029.0) * _wgslsmith_f_op_f32(f32(-1.0) * -902.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * -399.0))), -475.0), ~(-(-3875 & -23307))).c.b;
                    global2 = array<Struct_1, 21>();
                }
                case 1: {
                    var var_1 = 40591;
                    var_1 = -2147483648 | global3.b;
                    let var_2 = Struct_2(!select(vec2<bool>(!false, any(vec3<bool>(false, false, true))), select(!vec2<bool>(false, false), vec2<bool>(false, false), all(vec2<bool>(false, true))), select(vec2<bool>(true, false), !vec2<bool>(true, false), !vec2<bool>(false, true))), -725.0, Struct_1(max(reverseBits(~vec3<u32>(0u, 0u, arg_0)), vec3<u32>(arg_0 << (19474u % 32u), 10879u, _wgslsmith_sub_u32(0u, global3.a.x))), -13139), func_5(func_3(), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global4.x, global4.x))), global4.x, _wgslsmith_f_op_f32(func_5(global2[_wgslsmith_index_u32(arg_0, 21u)], vec4<f32>(-738.0, -688.0, global4.x, 519.0), global3.b).b + _wgslsmith_f_op_f32(sign(923.0))), global1.x), -7990).c);
                    let var_3 = Struct_2(vec2<bool>(_wgslsmith_sub_u32(global3.a.x, ~0u) <= 0u, !true), _wgslsmith_f_op_f32(global4.x - global1.x), Struct_1(vec3<u32>(_wgslsmith_mult_u32(arg_0, 4395u | 64269u), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.a.x, arg_0, global3.a.x, 0u), vec4<u32>(123979u, 1u, var_2.d.a.x, global3.a.x)) & arg_0), i32(-1) * -func_5(global2[_wgslsmith_index_u32(4294967295u, 21u)], vec4<f32>(global4.x, -355.0, global4.x, -581.0), -2147483648).c.b), Struct_1(var_2.d.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(19740, ~0), 29392)));
                    let var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(10208u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_3.d.a.x, 334u, firstLeadingBit(var_3.c.a.x)), ~(38142u & 963u)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, var_2.c.a.x), var_2.c.a.zx), 12424u) ^ global3.a.x, var_3.c.a.x), ~(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 1u, 515u, 55388u), vec4<u32>(var_2.c.a.x, arg_0, arg_0, 4294967295u), var_3.a.x), ~vec4<u32>(55901u, var_3.c.a.x, arg_0, 14126u), vec4<u32>(global3.a.x, u_input.b, var_3.c.a.x, 1u) & vec4<u32>(global3.a.x, var_2.d.a.x, arg_0, var_2.d.a.x))), ~(~(vec4<u32>(arg_0, 3957u, u_input.a, u_input.b) & vec4<u32>(4294967295u, 0u, 0u, arg_0))));
                }
                default: {
                    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1.0) * -179.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_div_f32(global4.x, -1183.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(305.0, global4.x)) * 175.0), 547.0) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(global1.x, global4.x)), _wgslsmith_f_op_f32(-398.0), global4.x, 1016.0)))));
                    var var_2 = select(select(!vec4<bool>(!true, all(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, true)), false), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), all(vec2<bool>(true, false))), !vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(f32(-1.0) * -1359.0)), select(!vec4<bool>(true, false, false, true), !(!vec4<bool>(true, true, false, false)), !(true | false))), vec4<bool>(false, any(!(!vec4<bool>(false, true, false, false))), !any(vec4<bool>(true, true, true, true)) | true, func_5(func_4(global2[_wgslsmith_index_u32(~arg_0, 21u)], select(vec2<bool>(false, false), vec2<bool>(true, true), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_1))), _wgslsmith_mult_i32(global3.b, _wgslsmith_add_i32(-11300, -52777))).a.x), !select(false, !true && true, false));
                    var var_3 = var_1.x;
                    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global4.xz)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.xy) * var_1.yy), vec2<f32>(_wgslsmith_div_f32(831.0, global4.x), _wgslsmith_f_op_f32(exp2(var_1.x))), var_2.yx)))));
                }
            }
            var var_1 = vec4<i32>(47149 & -2147483648, -31928, -global3.b, func_3().b);
        }
        default: {
            var var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
            let var_1 = 0;
            if (false) {
                let var_2 = ~vec3<u32>(u_input.b, arg_0, u_input.a);
                var var_3 = ~func_5(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, var_0.b, 528.0, var_0.b)))), global3.b | ~(-2147483648)).c.a.x;
                var_3 = 1u;
                return true;
            }
        }
    }
    let var_0 = func_5(func_5(Struct_1(global3.a, global3.b), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-207.0, global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1.0) * -981.0) * _wgslsmith_f_op_f32(-global1.x)), global4.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(round(711.0)))), ~max(_wgslsmith_mult_i32(14639, global3.b), global3.b)).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global4.x, -169.0, global1.x)))))), -1);
    var var_1 = !var_0.a.x;
    global4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_0.b, 546.0, 349.0) - vec4<f32>(global4.x, var_0.b, var_0.b, -373.0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.x, -280.0, 566.0, global1.x), vec4<f32>(var_0.b, global1.x, global4.x, 1442.0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(684.0, 240.0, 497.0, global4.x))) * vec4<f32>(global4.x, global1.x, var_0.b, _wgslsmith_f_op_f32(f32(-1.0) * -1000.0)))));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!false & (~u_input.a < ~global3.a.x), true);
    global1 = _wgslsmith_f_op_vec2_f32(global4.wz + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000.0, global1.x), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global4.xx - global4.xx))))));
    switch (-_wgslsmith_sub_i32(i32(-1) * -global3.b, 2147483647)) {
        case 1: {
            if (any(select(vec2<bool>(true, !(!var_0.x)), vec2<bool>(func_1(_wgslsmith_div_u32(u_input.a, u_input.b)), var_0.x), !var_0.x))) {
                var var_1 = _wgslsmith_f_op_f32(func_7(4294967295u, func_4(global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.b), ~global3.a.x, 4294967295u)), 21u)], func_5(Struct_1(_wgslsmith_div_vec3_u32(global3.a, global3.a), global3.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-504.0, global4.x, global4.x, 869.0), vec4<f32>(-1000.0, -1000.0, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-808.0, global4.x, global1.x, -765.0))), 4209).a), global2[_wgslsmith_index_u32(u_input.b, 21u)], !var_0.x));
                var var_2 = ~vec2<i32>(-func_5(func_3(), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2835.0, -391.0, global4.x, 791.0))), min(24714, 1)).d.b, -4432);
                var var_3 = Struct_2(!func_5(Struct_1(global3.a, _wgslsmith_add_i32(-2147483648, global3.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, 1489.0, global4.x, -727.0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 108.0, 1146.0, global4.x))), select(-2147483647, var_2.x, false)).a, _wgslsmith_f_op_f32(-1000.0), Struct_1(vec3<u32>(global3.a.x, 1u, global3.a.x), var_2.x), func_4(Struct_1(vec3<u32>(func_4(global2[_wgslsmith_index_u32(4294967295u, 21u)], var_0).a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(7971u, u_input.b, 16099u, u_input.a), vec4<u32>(0u, 0u, u_input.b, u_input.b)), 4294967295u), 14486), !var_0));
                let var_4 = Struct_2(vec2<bool>(true, var_3.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(629.0 - global1.x)))), global1.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(25190u, 4294967295u, var_3.c.a.x, global3.a.x), vec4<u32>(19107u, var_3.c.a.x, 37558u, var_3.d.a.x), vec4<u32>(0u, 4294967295u, var_3.c.a.x, 4294967295u)), select(vec4<u32>(u_input.a, 1u, u_input.b, 32141u), vec4<u32>(u_input.b, u_input.b, global3.a.x, 23846u), vec4<bool>(var_3.a.x, var_3.a.x, true, var_3.a.x)), ~vec4<u32>(u_input.a, var_3.d.a.x, u_input.b, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_3.d.a.x, var_3.d.a.x, global3.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(10232u, 1u, u_input.b, 13428u), vec4<u32>(global3.a.x, 13811u, 3472u, u_input.a)))), countOneBits(~max(vec4<u32>(global3.a.x, global3.a.x, global3.a.x, 1u), vec4<u32>(global3.a.x, var_3.d.a.x, 1u, global3.a.x)))), 21u)], Struct_1(select(~func_5(global2[_wgslsmith_index_u32(4294967295u, 21u)], vec4<f32>(global1.x, 1038.0, var_3.b, global1.x), var_3.c.b).c.a, vec3<u32>(18095u, abs(var_3.c.a.x), u_input.a), ~36248u > 27108u), ~func_5(global2[_wgslsmith_index_u32(~30754u, 21u)], vec4<f32>(global4.x, var_3.b, 605.0, -501.0), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.b, global3.b), vec2<i32>(global3.b, -1))).c.b));
                let var_5 = Struct_2(!vec2<bool>(all(vec2<bool>(false, false)), func_5(func_5(global2[_wgslsmith_index_u32(var_3.c.a.x, 21u)], vec4<f32>(-1593.0, 364.0, 1801.0, -1547.0), global3.b).c, vec4<f32>(global4.x, global4.x, global4.x, -309.0), ~global3.b).a.x), _wgslsmith_f_op_f32(-global1.x), Struct_1(select(firstTrailingBit(vec3<u32>(var_3.d.a.x, 48171u, global3.a.x)), var_3.c.a, global4.x >= var_3.b) ^ (vec3<u32>(global3.a.x, var_4.d.a.x, u_input.b) >> (~vec3<u32>(var_4.c.a.x, var_4.d.a.x, 0u) % vec3<u32>(32u))), -(i32(-1) * 0)), Struct_1(global3.a, ~(-_wgslsmith_sub_i32(global3.b, 46863))));
            }
            var var_1 = func_3();
            for (var var_2 = 6586; ; var_2 += 1) {
                if (LOOP_COUNTERS[24u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
                var var_3 = !var_0;
                var var_4 = var_1.a.x;
                return;
            }
            switch (global3.b) {
                default: {
                    global0 = array<Struct_2, 20>();
                    var var_2 = Struct_1(max(select(var_1.a, vec3<u32>(31978u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 1u, global3.a.x, global3.a.x), vec4<u32>(1u, var_1.a.x, u_input.a, 42970u)), global3.a.x ^ global3.a.x), select(select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, true)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true)), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, var_0.x), false))), vec3<u32>(var_1.a.x, var_1.a.x, u_input.a)), select(1, firstLeadingBit(~(-12632)), func_1(_wgslsmith_sub_u32(min(var_1.a.x, var_1.a.x), var_1.a.x ^ u_input.b))));
                }
            }
            loop {
                if (LOOP_COUNTERS[25u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
                continue;
            }
        }
        case -10524: {
        }
        case 2147483647: {
            for (var var_1 = -2147483648; -_wgslsmith_add_i32(-2147483648, -59453 & (-820 << (58835u % 32u))) < func_3().b; var_1 += 1) {
                if (LOOP_COUNTERS[26u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[26u] = LOOP_COUNTERS[26u] + 1u;
            }
            return;
        }
        default: {
            let var_1 = func_5(func_4(func_4(Struct_1(~global3.a, _wgslsmith_sub_i32(global3.b, -2147483648)), select(select(var_0, vec2<bool>(false, var_0.x), var_0), vec2<bool>(true, var_0.x), true)), vec2<bool>(!(-861.0 < global1.x), (7370 | global3.b) > 2147483647)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-533.0 - global4.x)) - _wgslsmith_f_op_f32(f32(-1.0) * -778.0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), -1222.0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(f32(-1.0) * -938.0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1263.0 + global4.x) - _wgslsmith_f_op_f32(exp2(-270.0))))), -(global3.b >> ((0u >> (1u % 32u)) % 32u)));
            var var_2 = _wgslsmith_f_op_f32(-1211.0 + -1412.0);
            switch (_wgslsmith_mod_i32(-1 << (global3.a.x % 32u), 2147483647)) {
                case 2147483647: {
                    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1063.0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b))))));
                    global2 = array<Struct_1, 21>();
                    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(25816u), 20u)];
                }
                case -30996: {
                    let var_3 = _wgslsmith_add_i32(max(-27328 << (~global3.a.x % 32u), 2147483647), var_1.c.b);
                }
                case 24208: {
                    var var_3 = Struct_1(min(vec3<u32>(abs(_wgslsmith_mult_u32(global3.a.x, 48560u)), ~4294967295u, u_input.a), global3.a & vec3<u32>(_wgslsmith_mod_u32(global3.a.x, 74163u), var_1.c.a.x, global3.a.x ^ global3.a.x)), var_1.d.b);
                    var var_4 = func_5(Struct_1(vec3<u32>(~99818u, ~func_4(global2[_wgslsmith_index_u32(u_input.a, 21u)], vec2<bool>(true, true)).a.x, max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 21652u), var_3.a.yz), u_input.a)), (global3.b << (abs(15590u) % 32u)) & -29002), vec4<f32>(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(504.0 + _wgslsmith_f_op_f32(step(var_1.b, 276.0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1.0) * -403.0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-603.0)))) - -1569.0), _wgslsmith_f_op_f32(-var_1.b)), select(-4818, var_3.b, var_1.a.x)).a;
                }
                case -10615: {
                    return;
                }
                default: {
                    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(881.0 - _wgslsmith_f_op_vec4_f32(func_6((var_1.d.a >> (vec3<u32>(u_input.a, 4294967295u, 4294967295u) % vec3<u32>(32u))) & ~vec3<u32>(90565u, u_input.a, u_input.b), ~abs(20309u), global0[_wgslsmith_index_u32(func_3().a.x, 20u)], -2147483648)).x)));
                    var var_3 = (var_1.c.b >> (73791u % 32u)) < _wgslsmith_sub_i32(var_1.c.b, global3.b);
                }
            }
            if (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.x, 2235.0))) >= global1.x) {
            }
            loop {
                if (LOOP_COUNTERS[27u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[27u] = LOOP_COUNTERS[27u] + 1u;
                global1 = vec2<f32>(_wgslsmith_div_f32(870.0, -1520.0), _wgslsmith_f_op_f32(global4.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_7(abs(u_input.b), Struct_1(var_1.c.a, var_1.c.b), Struct_1(vec3<u32>(4294967295u, u_input.b, 0u), global3.b), func_5(global2[_wgslsmith_index_u32(u_input.a, 21u)], vec4<f32>(global4.x, 1818.0, var_1.b, 357.0), -2147483648).a.x)), 756.0)));
                global2 = array<Struct_1, 21>();
                continue;
            }
        }
    }
    for (var var_1 = 35903; !func_1(66524u); var_1 -= 1) {
        if (LOOP_COUNTERS[28u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[28u] = LOOP_COUNTERS[28u] + 1u;
        global3 = Struct_1(~(~func_5(func_3(), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-841.0, -1000.0, 1005.0, global1.x), vec4<f32>(global4.x, global1.x, global4.x, -656.0))), global3.b).d.a), func_5(func_5(global2[_wgslsmith_index_u32(~0u, 21u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1366.0, 1000.0, global4.x, global1.x))), ~_wgslsmith_sub_i32(global3.b, 1)).c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-254.0 - global1.x), -665.0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(4294967295u, Struct_1(vec3<u32>(global3.a.x, global3.a.x, 83419u), global3.b), Struct_1(global3.a, global3.b), true)) + _wgslsmith_f_op_f32(global1.x * -979.0)), global4.x), _wgslsmith_add_i32(firstTrailingBit(global3.b), global3.b)).d.b);
        for (var var_2 = global3.b; true; var_2 += 1) {
            if (LOOP_COUNTERS[29u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[29u] = LOOP_COUNTERS[29u] + 1u;
            var var_3 = abs(vec2<i32>(_wgslsmith_div_i32(-global3.b & global3.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, global3.b, global3.b), vec3<i32>(22279, 1, -37541)) | global3.b), global3.b));
            var var_4 = func_5(Struct_1(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a, u_input.b, global3.a.x)), vec3<u32>(0u, global3.a.x, global3.a.x) | vec3<u32>(4294967295u, u_input.b, 4294967295u)), var_3.x), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_6(vec3<u32>(0u << (65892u % 32u), ~global3.a.x, firstLeadingBit(global3.a.x)), u_input.b, Struct_2(!var_0, _wgslsmith_f_op_f32(-global1.x), global2[_wgslsmith_index_u32(u_input.a & 4294967295u, 21u)], Struct_1(vec3<u32>(39868u, 61139u, global3.a.x), 2147483647)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_3.x, -13863), vec3<i32>(global3.b, -38487, var_3.x)), func_5(global2[_wgslsmith_index_u32(global3.a.x, 21u)], vec4<f32>(-517.0, 613.0, global1.x, -906.0), 2147483647).c.b))).x, -459.0, _wgslsmith_f_op_f32(-global1.x), global4.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global3.b, global3.b, global3.b) ^ vec3<i32>(-17147, -16592, 1221)), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(var_3.x, var_3.x, -2147483648)), vec3<i32>(1, global3.b, -2147483648))), ~var_3.x));
            global1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(global4.x - var_4.b))), -665.0), -1271.0), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-469.0) * _wgslsmith_f_op_f32(step(var_4.b, global4.x))), 992.0) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.zy)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-231.0, 786.0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b, 1368.0))))), vec2<bool>(false, false)));
        }
        let var_2 = !((~35337u == 1u) != true);
    }
    loop {
        if (LOOP_COUNTERS[30u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[30u] = LOOP_COUNTERS[30u] + 1u;
        var var_1 = select(abs(countOneBits(~(~vec4<u32>(u_input.b, u_input.b, global3.a.x, 31340u)))), ~vec4<u32>(~global3.a.x & _wgslsmith_div_u32(global3.a.x, global3.a.x), u_input.b ^ abs(global3.a.x), 23037u, u_input.b), var_0.x);
        return;
    }
    let x = u_input.a;
    s_output = StorageBuffer(global4.x, 851.0);
}

