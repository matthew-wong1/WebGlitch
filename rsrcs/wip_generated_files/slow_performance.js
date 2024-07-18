const {
    create,
    globals
} = require('../../dawn/out/Debug/Debug/dawn.node');
const fs = require('fs');
Object.assign(globalThis, globals);
let navigator = {
    gpu: create([]),
};

async function main() {
    const adapter = await navigator.gpu.requestAdapter();
    const device = await adapter.requestDevice();
    const computeShaderModule = device.createShaderModule({
        label: "compute",
        code: `struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, false, true, true, false, true, true, true, true, false, true, true, true, true, true, false, false, false, false, false, true, true, true);

var<private> LOOP_COUNTERS: array<u32, 26>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(24312u, 23u)];
    if (true) {
        if (any(vec2<bool>(global0[_wgslsmith_index_u32(abs(abs(~83847u)), 23u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, 44979u), 78933u), 23u)]))) {
            let var_1 = select(~u_input.a.yx, u_input.a.xw, global0[_wgslsmith_index_u32(countOneBits(arg_2.a), 23u)]);
            global0 = array<bool, 23>();
            var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.zzz), arg_3.zxz) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.x, -1306f, -1000f), _wgslsmith_f_op_vec3_f32(-arg_3.zzx))))), 0u, -37690i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.x))), u_input.e ^ ~firstLeadingBit(u_input.e));
        }
        switch (-2925i) {
            default: {
                global0 = array<bool, 23>();
            }
        }
        loop {
            if (LOOP_COUNTERS[0u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
            continue;
        }
        let var_1 = !vec3<bool>(true, abs(~52469u) >= select(_wgslsmith_dot_vec3_u32(u_input.a.xzz, u_input.a.ywy), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 0u, arg_2.a), u_input.a.yyw), true), any(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec2<bool>(true, true), !global0[_wgslsmith_index_u32(arg_1.a, 23u)])));
    }
    global0 = array<bool, 23>();
    let var_1 = ~vec4<u32>(u_input.d >> (~0u % 32u), 18371u, ~41254u, 1u);
    if (global0[_wgslsmith_index_u32(~countOneBits(60033u), 23u)]) {
        var var_2 = vec4<u32>(firstLeadingBit(reverseBits(~arg_1.a)), firstTrailingBit(~(~var_1.x)), 4294967295u, u_input.d) << (~vec4<u32>(countOneBits(104115u), _wgslsmith_mod_u32(firstLeadingBit(4294967295u), 7839u), 433u, 5569u) % vec4<u32>(32u));
        for (var var_3 = 0i; ; ) {
            if (LOOP_COUNTERS[1u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
            var_3 = 1i;
            continue;
        }
    }
    return var_1.x ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_2.a, 65065u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(0u, 26586u, arg_2.a), var_1.yxz), ~vec3<u32>(u_input.d, 0u, 0u)) >> ((_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(var_1.x, 37607u, arg_2.a, 1u)) >> (arg_2.a % 32u)) % 32u));
}

fn func_5() -> Struct_1 {
    loop {
        if (LOOP_COUNTERS[2u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
        var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f))), _wgslsmith_div_f32(1087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1081f - -569f) * 1f))), func_6(-7736i, Struct_3(61713u), Struct_3(u_input.d ^ _wgslsmith_div_u32(1u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-132f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(-390f - 583f), _wgslsmith_f_op_f32(sign(662f))))), _wgslsmith_dot_vec2_i32(~u_input.c.ww, ~(u_input.e.xx ^ vec2<i32>(u_input.c.x, i32(-2147483648)))) ^ abs(u_input.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-954f)))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.b, 0i, ~u_input.b, 0i), vec4<i32>(select(u_input.b, u_input.b, global0[_wgslsmith_index_u32(u_input.d, 23u)]), _wgslsmith_div_i32(-5436i, -1i), ~u_input.c.x, 35433i), min(_wgslsmith_mod_vec4_i32(u_input.e, u_input.c), -u_input.c)), select(vec4<i32>(u_input.b, u_input.e.x, -24767i, u_input.b) | u_input.c, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, -32791i, u_input.e.x), u_input.e), -u_input.c), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(125536u, 23u)], true, global0[_wgslsmith_index_u32(u_input.d, 23u)]), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], true, global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false, false)))));
        continue;
    }
    let var_0 = ~reverseBits(vec4<u32>(1u, ~min(u_input.a.x, 115256u), u_input.d, _wgslsmith_add_u32(firstLeadingBit(u_input.d), ~u_input.a.x)));
    loop {
        if (LOOP_COUNTERS[3u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
        break;
    }
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2256f) - _wgslsmith_f_op_f32(trunc(-1048f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1296f * 631f)), global0[_wgslsmith_index_u32(1u, 23u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1303f), _wgslsmith_f_op_f32(780f * -1294f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-236f * 387f)))) - -208f));
    switch (u_input.b) {
        case -14234i: {
            global0 = array<bool, 23>();
        }
        case -69526i: {
            switch (~(u_input.e.x & _wgslsmith_add_i32(2147483647i, u_input.b))) {
                case 51356i: {
                    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.zww, var_1.yyy, select(true, global0[_wgslsmith_index_u32(var_0.x, 23u)], global0[_wgslsmith_index_u32(15986u, 23u)]))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1856f), _wgslsmith_f_op_f32(floor(var_1.x)), -1000f)), ~(~_wgslsmith_add_u32(1u, 1u)), -26641i, _wgslsmith_f_op_f32(round(var_1.x)), (u_input.c >> (reverseBits(vec4<u32>(3948u, u_input.a.x, u_input.d, 7648u)) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, -1i), abs(u_input.c), vec4<i32>(u_input.c.x, 11937i, u_input.c.x, u_input.b))), !any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(1911u, 23u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), global0[_wgslsmith_index_u32(1u, 23u)]), vec3<bool>(false, false, true))));
                    var_2 = Struct_2(Struct_1(var_1.wxz, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 79503u), 74110u, var_2.a.b) & _wgslsmith_mult_u32(u_input.d >> (var_2.a.b % 32u), 4294967295u & var_2.a.b), _wgslsmith_dot_vec3_i32(select(u_input.c.xwz, vec3<i32>(1i, -8265i, -29884i) << (vec3<u32>(u_input.d, var_0.x, var_0.x) % vec3<u32>(32u)), select(vec3<bool>(var_2.b, true, global0[_wgslsmith_index_u32(25086u, 23u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 23u)]), global0[_wgslsmith_index_u32(23840u, 23u)])), u_input.c.yxy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1149f - 2081f)), _wgslsmith_f_op_f32(var_1.x - 321f)), var_2.a.e), select(abs(var_2.a.c) != var_2.a.e.x, true, true));
                    global0 = array<bool, 23>();
                    let var_3 = var_1.x;
                }
                case -1i: {
                    var var_2 = any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], any(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 23u)], true, true))), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)] | false, true), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 23u)], true), true), select(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)])), true, true) && (_wgslsmith_dot_vec3_u32(u_input.a.yyw, vec3<u32>(0u, u_input.d, 12236u)) <= var_0.x)));
                    var var_3 = Struct_3(0u);
                    var_2 = false;
                }
                default: {
                    global0 = array<bool, 23>();
                    global0 = array<bool, 23>();
                    return Struct_1(var_1.xzx, 4294967295u, _wgslsmith_mod_i32(u_input.b, firstLeadingBit(_wgslsmith_mod_i32(~33860i, ~(-44647i)))), 859f, -(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 2147483647i, 20726i)));
                }
            }
        }
        default: {
            global0 = array<bool, 23>();
        }
    }
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-876f - var_1.x), _wgslsmith_div_f32(var_1.x, -643f), _wgslsmith_f_op_f32(186f + var_1.x)))), 0u, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~u_input.c.zy, firstTrailingBit(u_input.e.xx << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)))), max(~u_input.c.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(19855i, 29111i), vec2<i32>(-1i, u_input.e.x))) ^ -(~u_input.c.xx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(var_1.x - -432f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(843f)))), u_input.e);
}

fn func_4() -> u32 {
    let var_0 = Struct_2(func_5(), true);
    global0 = array<bool, 23>();
    if (all(select(vec3<bool>(_wgslsmith_f_op_f32(ceil(var_0.a.a.x)) >= var_0.a.a.x, (u_input.e.x > i32(-2147483648)) | false, any(vec2<bool>(var_0.b, global0[_wgslsmith_index_u32(var_0.a.b, 23u)]))), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a.b, 23u)], global0[_wgslsmith_index_u32(var_0.a.b, 23u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true), vec3<bool>(var_0.b, false, true), global0[_wgslsmith_index_u32(var_0.a.b, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], false), global0[_wgslsmith_index_u32(54837u, 23u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(131608u, 23u)], true, true), vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, false, global0[_wgslsmith_index_u32(138563u, 23u)])), select(vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(var_0.a.b, 23u)], var_0.b), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), true), !vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(var_0.a.b, 23u)]))), (firstTrailingBit(14410i) <= _wgslsmith_mod_i32(u_input.c.x, var_0.a.e.x)) || global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, var_0.a.b), 23u)]))) {
        if (!(!(!any(vec4<bool>(false, true, var_0.b, false)) == ((true & global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) & true)))) {
        }
        var var_1 = !(true | all(!select(vec4<bool>(true, var_0.b, global0[_wgslsmith_index_u32(4294967295u, 23u)], var_0.b), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a.b, 23u)], true, var_0.b), false)));
        if (false) {
            var var_2 = false;
            var_1 = false;
            var var_3 = any(!select(vec3<bool>(global0[_wgslsmith_index_u32(~0u, 23u)], any(vec2<bool>(var_0.b, true)), var_0.b), !(!vec3<bool>(var_0.b, false, false)), !select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a.b, 23u)], false), vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(var_0.a.b, 23u)], global0[_wgslsmith_index_u32(42684u, 23u)]), false)));
            var var_4 = vec3<f32>(func_5().a.x, var_0.a.a.x, var_0.a.d);
        }
        let var_2 = Struct_3(min(~19500u, u_input.d));
    }
    switch (-40756i) {
        case 37406i: {
            global0 = array<bool, 23>();
            if (true) {
                let var_1 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, var_0.a.e.x, var_0.a.c, 12792i), -(var_0.a.e & var_0.a.e)), 3666i, var_0.a.e.x);
                var var_2 = Struct_3(~firstLeadingBit(max(func_5().b, var_0.a.b)));
                var_2 = Struct_3(var_2.a);
                let var_3 = var_0.a.d;
                var_2 = Struct_3(_wgslsmith_div_u32(min(u_input.d, abs(max(1u, 1u))), u_input.d));
            }
            for (var var_1 = 48018i; var_1 > -1i; var_1 -= 1i) {
                if (LOOP_COUNTERS[4u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
                var_1 = _wgslsmith_mult_i32(firstTrailingBit(firstTrailingBit(-func_5().e.x)), ~2147483647i);
                var var_2 = var_0.a.a.x;
                let var_3 = max(_wgslsmith_div_vec4_i32(min(reverseBits(~vec4<i32>(var_0.a.e.x, u_input.c.x, 38921i, -20898i)), vec4<i32>(i32(-2147483648), ~1i, var_0.a.c & var_0.a.c, u_input.c.x)), ~select(u_input.c, _wgslsmith_mult_vec4_i32(vec4<i32>(-1849i, u_input.c.x, -1i, var_0.a.e.x), vec4<i32>(u_input.c.x, var_0.a.e.x, 2147483647i, var_0.a.c)), var_0.b)), ~(~(~u_input.e)));
                var_2 = var_0.a.a.x;
                let var_4 = var_0.a.b;
            }
        }
        case -1i: {
            var var_1 = _wgslsmith_add_vec4_i32(-(~var_0.a.e), vec4<i32>(~(~u_input.e.x) & -12970i, min(_wgslsmith_div_i32(u_input.e.x, i32(-1i) * -41864i), var_0.a.c), _wgslsmith_sub_i32(abs(u_input.e.x), -(0i << (var_0.a.b % 32u))), var_0.a.e.x & select(abs(u_input.b), 2962i, !global0[_wgslsmith_index_u32(u_input.a.x, 23u)])));
            for (; ; ) {
                if (LOOP_COUNTERS[5u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
                continue;
            }
            for (var var_2 = 37243i; global0[_wgslsmith_index_u32(max(abs(u_input.a.x), ~(~0u)), 23u)]; var_2 -= 1i) {
                if (LOOP_COUNTERS[6u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
                let var_3 = _wgslsmith_f_op_f32(1064f - 1306f);
                var_2 = 1i;
            }
            if (!(!(-19441i > _wgslsmith_clamp_i32(min(1i, var_0.a.c), ~var_1.x, -u_input.e.x)))) {
                var_1 = var_0.a.e;
            }
            var var_2 = var_0;
        }
        default: {
            loop {
                if (LOOP_COUNTERS[7u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
                continue;
            }
            if (true) {
                let var_1 = var_0;
                let var_2 = var_1.a.a.xz;
                let var_3 = 0i;
                let var_4 = vec3<bool>(any(vec3<bool>(_wgslsmith_f_op_f32(var_0.a.a.x + 1865f) == 1780f, global0[_wgslsmith_index_u32(45096u, 23u)], any(vec2<bool>(var_1.b, false)))), !any(vec3<bool>(global0[_wgslsmith_index_u32(~7699u, 23u)], all(vec3<bool>(true, false, true)), var_1.b)), !(_wgslsmith_sub_u32(abs(u_input.a.x), 0u) >= _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_1.a.b, 13360u, u_input.a.x)), vec3<u32>(64857u, 65389u, 0u))));
            }
            global0 = array<bool, 23>();
            var var_1 = var_0;
        }
    }
    var var_1 = _wgslsmith_f_op_f32(floor(232f));
    return func_5().b;
}

fn func_3() -> Struct_3 {
    let var_0 = abs(~(_wgslsmith_mult_vec2_i32(u_input.c.ww, u_input.c.yx) << (vec2<u32>(1u, u_input.d) % vec2<u32>(32u))));
    global0 = array<bool, 23>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(floor(1407f)), _wgslsmith_f_op_f32(step(-131f, 290f)), 1031f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(847f, -338f, -1438f)))))), vec3<f32>(-1154f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) * _wgslsmith_f_op_f32(step(432f, 1166f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f) * _wgslsmith_f_op_f32(min(-158f, 624f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(236f + 1710f) - _wgslsmith_f_op_f32(f32(-1f) * -996f))))));
    for (var var_2 = 2147483647i; var_2 < 25310i; var_2 -= 1i) {
        if (LOOP_COUNTERS[8u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
    }
    switch (max(-(~(~(~0i))), ~(-abs(u_input.b)) >> (u_input.a.x % 32u))) {
        case 1i: {
            var var_2 = _wgslsmith_sub_vec3_u32(u_input.a.xzx, firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, 34704u)));
            if (global0[_wgslsmith_index_u32(func_4(), 23u)]) {
                var var_3 = !(!(!any(!vec2<bool>(true, global0[_wgslsmith_index_u32(1126u, 23u)]))));
                var_3 = false;
            }
        }
        case i32(-2147483648): {
            global0 = array<bool, 23>();
            var var_2 = ~1u;
            let var_3 = true;
            global0 = array<bool, 23>();
        }
        case -16631i: {
        }
        case 2147483647i: {
            loop {
                if (LOOP_COUNTERS[9u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
            }
            global0 = array<bool, 23>();
            switch (_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, var_0.x), i32(-2147483648), var_0.x), u_input.c.x, _wgslsmith_mult_i32(-1i, 0i)), u_input.c.yxy)) {
                case 0i: {
                    global0 = array<bool, 23>();
                    global0 = array<bool, 23>();
                    var var_2 = abs(4294967295u);
                    var var_3 = select(select(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true), vec2<bool>(global0[_wgslsmith_index_u32(55248u, 23u)], global0[_wgslsmith_index_u32(62550u, 23u)]))), vec2<bool>(all(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true, true), global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), true), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(63676u, 23u)], true)), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(84622u, 23u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(1u, 23u)]), !global0[_wgslsmith_index_u32(4294967295u, 23u)] && all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false, global0[_wgslsmith_index_u32(u_input.d, 23u)], false)))), vec2<bool>(any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(6946u, 23u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(28036u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false), any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 23u)])))), !(!global0[_wgslsmith_index_u32(35469u, 23u)])), !vec2<bool>(all(vec2<bool>(true, true)), true && global0[_wgslsmith_index_u32(~u_input.a.x, 23u)]));
                }
                default: {
                    global0 = array<bool, 23>();
                    var var_2 = 1u << (abs(_wgslsmith_mod_u32(~0u, u_input.d)) % 32u);
                }
            }
        }
        default: {
            var var_2 = vec2<i32>(abs(-1i) | _wgslsmith_sub_i32(u_input.c.x << (4294967295u % 32u), 37501i), 1i) >> (u_input.a.wy % vec2<u32>(32u));
            var_2 = vec2<i32>(-42566i, var_2.x);
            for (var var_3 = 21600i; ; ) {
                if (LOOP_COUNTERS[10u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
                var var_4 = -vec3<i32>(5734i, -23281i, 23228i);
                var var_5 = func_5();
                break;
            }
            return Struct_3(~(~_wgslsmith_mod_u32(25793u, 34783u)));
        }
    }
    return Struct_3(1u);
}

fn func_2() -> u32 {
    global0 = array<bool, 23>();
    for (var var_0 = i32(-2147483648); var_0 == -1i; var_0 = max(u_input.b, ~(~_wgslsmith_clamp_i32(u_input.c.x, u_input.e.x, u_input.c.x)))) {
        if (LOOP_COUNTERS[11u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
        let var_1 = ~_wgslsmith_add_vec2_u32(u_input.a.xz, ~reverseBits(~vec2<u32>(u_input.d, u_input.a.x)));
        for (var var_2 = 65192i; var_2 <= 1i; var_2 -= 1i) {
            if (LOOP_COUNTERS[12u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
            var var_3 = u_input.b;
        }
        var_0 = -(~(~u_input.b));
        var var_2 = vec3<u32>(~var_1.x, u_input.a.x, 1u);
        var var_3 = func_3();
    }
    var var_0 = vec2<i32>(u_input.c.x & 2147483647i, -_wgslsmith_sub_i32(u_input.b, abs(-31479i)) << (select(~(0u >> (u_input.a.x % 32u)), min(_wgslsmith_mult_u32(7740u, u_input.d), func_4()), global0[_wgslsmith_index_u32(u_input.d, 23u)]) % 32u));
    let var_1 = Struct_3(~u_input.a.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-892f)))), _wgslsmith_div_f32(775f, _wgslsmith_f_op_f32(-1000f + 231f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(748f)), _wgslsmith_f_op_f32(-1325f), _wgslsmith_f_op_f32(203f - 1618f))))), 0u | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), ~u_input.a.yxy), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.wyw, vec3<i32>(-58332i, -7425i, 2147483647i)), u_input.e.zzz), _wgslsmith_div_i32(0i, var_0.x) << ((u_input.a.x ^ 0u) % 32u)), _wgslsmith_f_op_f32(-926f), abs(vec4<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(17476i, u_input.e.x)), 1i, true), _wgslsmith_add_i32(~u_input.c.x, -1i), reverseBits(-var_0.x), 18355i)));
    return u_input.a.x;
}

fn func_7(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    if (global0[_wgslsmith_index_u32(78269u, 23u)]) {
        loop {
            if (LOOP_COUNTERS[13u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
            let var_0 = arg_2.e.x;
            var var_1 = reverseBits(64067u);
            let var_2 = func_5().e.xzy;
            continue;
        }
        global0 = array<bool, 23>();
        switch (~0i) {
            case 10067i: {
            }
            case 2147483647i: {
                var var_0 = Struct_3(arg_1.x);
                var var_1 = arg_2;
                var_1 = func_5();
            }
            default: {
                let var_0 = vec2<u32>(~(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(43194u, arg_1.x, 2714u, 37467u)), u_input.a | vec4<u32>(30709u, 13114u, 7396u, arg_1.x)) ^ ~(~4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(func_4(), firstLeadingBit(u_input.d)), _wgslsmith_add_u32(~0u, u_input.d), _wgslsmith_mult_u32(arg_2.b, abs(arg_2.b))), abs(vec3<u32>(countOneBits(u_input.d), ~arg_1.x, _wgslsmith_sub_u32(u_input.d, arg_2.b)))));
            }
        }
        let var_0 = vec3<u32>(countOneBits(u_input.a.x), 48469u, ~(func_4() & 19857u));
        let var_1 = _wgslsmith_mult_i32(28346i, -1i);
    }
    switch (-firstTrailingBit(~arg_0)) {
        default: {
            global0 = array<bool, 23>();
            var var_0 = func_5();
            var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d), -137f, _wgslsmith_f_op_f32(-arg_2.d))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), 374f), _wgslsmith_f_op_f32(arg_2.d + _wgslsmith_div_f32(890f, 1019f)), _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, true)))), var_0.b, 46929i, arg_2.a.x, reverseBits(func_5().e) | vec4<i32>(-30829i, arg_0, ~(-15467i), _wgslsmith_div_i32(~(i32(-2147483648)), firstTrailingBit(var_0.e.x))));
            for (var var_2 = 0i; true; var_2 += 1i) {
                if (LOOP_COUNTERS[14u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
                var var_3 = var_1.b;
            }
            let var_2 = ~(~_wgslsmith_mult_u32(~arg_2.b, func_4()));
        }
    }
    global0 = array<bool, 23>();
    loop {
        if (LOOP_COUNTERS[15u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
        var var_0 = 29144u;
    }
    for (var var_0 = -74098i; ; var_0 = arg_2.c) {
        if (LOOP_COUNTERS[16u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
        var var_1 = Struct_2(func_5(), global0[_wgslsmith_index_u32(~arg_2.b, 23u)]);
        break;
    }
    return Struct_1(func_5().a, 13814u, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~29243i, 40011i), abs(-vec2<i32>(0i, u_input.b))), -18910i), 503f, firstLeadingBit(arg_2.e));
}

fn func_1(arg_0: f32) -> Struct_1 {
    return func_7(-9402i, vec3<u32>(u_input.d, 0u, ~func_2() | abs(54747u)), Struct_1(vec3<f32>(-2353f, arg_0, _wgslsmith_f_op_f32(ceil(arg_0))), ~(u_input.a.x & _wgslsmith_sub_u32(u_input.a.x, u_input.d)), ~_wgslsmith_clamp_i32(u_input.c.x, -u_input.e.x, ~23096i), _wgslsmith_f_op_f32(-2081f), vec4<i32>(~u_input.e.x, -1i, -1i, 0i) | vec4<i32>(i32(-2147483648), _wgslsmith_add_i32(10153i, 1i), 0i, i32(-2147483648))));
}

fn func_8(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_3(~(~(~(arg_0.b << (u_input.d % 32u)))));
    if (any(vec4<bool>(~u_input.d >= _wgslsmith_sub_u32(~u_input.a.x, 0u), false, true, all(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.b, 23u)], false), global0[_wgslsmith_index_u32(4294967295u, 23u)]))))) {
        for (var var_1 = 0i; !(~64u < var_0.a); var_1 += 1i) {
            if (LOOP_COUNTERS[17u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[17u] = LOOP_COUNTERS[17u] + 1u;
            break;
        }
        global0 = array<bool, 23>();
        var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(func_7(-4700i, firstTrailingBit(vec3<u32>(4294967295u, u_input.d, 16345u)), Struct_1(arg_0.a, var_0.a, u_input.c.x, 654f, arg_0.e)).a, arg_0.a), u_input.d, _wgslsmith_add_i32(func_5().e.x ^ u_input.e.x, -u_input.b), _wgslsmith_div_f32(-480f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * -175f) * _wgslsmith_f_op_f32(ceil(-1017f)))), -(~vec4<i32>(arg_0.e.x, u_input.b, arg_2.x, arg_2.x))), (arg_0.a.x <= _wgslsmith_f_op_f32(trunc(843f))) && (-730i != max(arg_0.e.x, arg_2.x ^ arg_0.e.x)));
    }
    switch (2147483647i) {
        case 0i: {
            if (true) {
                global0 = array<bool, 23>();
                global0 = array<bool, 23>();
                var var_1 = -countOneBits(_wgslsmith_div_vec2_i32(select(arg_0.e.yz, vec2<i32>(arg_0.e.x, 51308i), false || global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec2<i32>(-18031i, 9342i)));
            }
        }
        case -15171i: {
            loop {
                if (LOOP_COUNTERS[18u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[18u] = LOOP_COUNTERS[18u] + 1u;
                global0 = array<bool, 23>();
                var var_1 = abs(-(i32(-1i) * -firstTrailingBit(i32(-2147483648))));
                break;
            }
        }
        case 80832i: {
            if (all(vec2<bool>(!(!(16006i < arg_0.c)), any(vec3<bool>(3099i == arg_0.e.x, false, false | global0[_wgslsmith_index_u32(73747u, 23u)]))))) {
                let var_1 = _wgslsmith_add_vec2_u32(~u_input.a.xy, max(vec2<u32>(func_3().a, countOneBits(u_input.d)), u_input.a.xz) | abs(vec2<u32>(max(var_0.a, u_input.d), ~u_input.d)));
                var var_2 = _wgslsmith_div_f32(144f, 200f);
                global0 = array<bool, 23>();
            }
            let var_1 = arg_0;
            var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(625f, var_1.a.x, 843f) + vec3<f32>(arg_0.a.x, arg_0.d, var_1.a.x))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(-943f), func_1(_wgslsmith_f_op_f32(-364f)).a.x), all(!(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]))))), _wgslsmith_div_u32(~1u, func_6(i32(-1i) * i32(-2147483648), Struct_3(31864u), func_3(), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -195f, -1509f, -239f) + vec4<f32>(arg_3.x, 508f, arg_3.x, -706f)))) | var_1.b, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.x, arg_0.c, u_input.e.x, arg_2.x), ~vec4<i32>(u_input.b, -1i, -44359i, 41335i))), 554f, vec4<i32>(u_input.b, -25219i, arg_2.x, var_1.c));
        }
        default: {
        }
    }
    var var_1 = vec4<bool>(any(select(!vec4<bool>(global0[_wgslsmith_index_u32(1293u, 23u)], false, global0[_wgslsmith_index_u32(38376u, 23u)], global0[_wgslsmith_index_u32(4522u, 23u)]), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(var_0.a, 23u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.b, 23u)], global0[_wgslsmith_index_u32(41296u, 23u)], global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 23u)], true, global0[_wgslsmith_index_u32(9371u, 23u)])), select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(arg_0.b, 23u)], global0[_wgslsmith_index_u32(var_0.a, 23u)], global0[_wgslsmith_index_u32(38871u, 23u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, true, global0[_wgslsmith_index_u32(0u, 23u)]), false), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_0.a, 23u)], true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)], false, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(18u, 23u)], false))))), global0[_wgslsmith_index_u32(abs(~0u), 23u)], all(vec2<bool>(false, true)), false);
    switch (abs(-22050i)) {
        case 8712i: {
            var var_2 = Struct_2(arg_0, u_input.a.x > _wgslsmith_div_u32(u_input.d, 17999u));
            switch (_wgslsmith_add_i32(arg_2.x, _wgslsmith_div_i32(-1i, -43336i))) {
                case i32(-2147483648): {
                }
                case -24900i: {
                    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_3)) - vec3<f32>(-530f, arg_3.x, arg_1)));
                    var var_4 = _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.e.x, var_2.a.c), firstTrailingBit(_wgslsmith_mod_i32(i32(-1i) * -1i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.a.e.x), vec2<i32>(arg_0.e.x, i32(-2147483648))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -19154i, arg_2.x, 25014i), var_2.a.e)))));
                    let var_5 = firstLeadingBit(_wgslsmith_sub_vec4_u32(~(~u_input.a), u_input.a & firstTrailingBit(~u_input.a)));
                    var_4 = 22495i;
                    var var_6 = _wgslsmith_add_u32(15527u << (_wgslsmith_div_u32(79053u, 34287u) % 32u), _wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, 60754u), var_5.x) >> (~func_5().b % 32u));
                }
                default: {
                    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-329f, arg_0.a.x, arg_0.d), arg_3, !var_1.zxx)) + arg_3), 7868u & var_2.a.b, _wgslsmith_mult_i32(-arg_0.c, _wgslsmith_mult_i32(var_2.a.c, var_2.a.e.x << (u_input.d % 32u))), _wgslsmith_f_op_f32(-arg_1), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.e, vec4<i32>(var_2.a.e.x, 55742i, u_input.b, arg_0.e.x)), vec4<i32>(2147483647i, 56993i, -9878i, arg_2.x))), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(4294967295u & u_input.d), ~u_input.d), 23u)]);
                    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), ~0u, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(min(u_input.c.xx, vec2<i32>(37280i, var_3.a.c)), vec2<i32>(i32(-2147483648), var_3.a.e.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.x, u_input.c.x), _wgslsmith_div_vec2_i32(arg_2, var_3.a.e.xw))), var_2.a.a.x, var_2.a.e), var_3.b & true);
                    var var_5 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_add_i32(var_3.a.c, firstTrailingBit(-7517i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~24588i, i32(-2147483648)), _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, -1i), 0i), arg_0.c)), var_3.a.e.wwx);
                }
            }
            let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.d, arg_1, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1194f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(arg_0.d, -1029f, var_2.b)), -951f))));
            var var_4 = ~(~u_input.a.zw);
        }
        case 2147483647i: {
            switch (24107i) {
                case 2147483647i: {
                }
                case -45753i: {
                    let var_2 = ~(~(_wgslsmith_mod_u32(func_7(u_input.e.x, vec3<u32>(arg_0.b, var_0.a, arg_0.b), Struct_1(vec3<f32>(arg_3.x, 134f, arg_3.x), 13526u, i32(-2147483648), -644f, vec4<i32>(arg_2.x, arg_2.x, 4425i, 2147483647i))).b, ~var_0.a) ^ func_3().a));
                    global0 = array<bool, 23>();
                    return 466f;
                }
                case 30072i: {
                    var var_2 = var_1.x | false;
                    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_3, _wgslsmith_f_op_vec3_f32(round(arg_0.a)))), var_0.a, arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 * arg_1)))), u_input.e), true);
                    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1 * -397f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1679f * _wgslsmith_f_op_f32(floor(-1373f))) - arg_3.x), -420f), ~var_0.a, ((~0i >> (1u % 32u)) >> (1u % 32u)) >> (min(36440u, ~4294967295u) % 32u), 294f, u_input.c);
                    let var_5 = Struct_2(func_5(), any(select(select(!vec4<bool>(true, var_1.x, var_1.x, global0[_wgslsmith_index_u32(u_input.d, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], var_3.b, var_3.b, var_3.b), true), vec4<bool>(!var_1.x, all(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b, 23u)], var_3.b)), select(var_1.x, true, false), false), !(!vec4<bool>(true, var_3.b, var_3.b, global0[_wgslsmith_index_u32(var_0.a, 23u)])))));
                    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, -179f)), _wgslsmith_f_op_f32(-2872f), _wgslsmith_f_op_f32(-var_3.a.a.x)) + vec3<f32>(_wgslsmith_div_f32(arg_1, var_4.d), -1000f, -1602f)))));
                }
                case i32(-2147483648): {
                    let var_2 = Struct_3(4294967295u);
                    let var_3 = arg_0.e.wxz;
                }
                default: {
                    var var_2 = arg_0;
                    let var_3 = arg_0;
                    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d))), func_1(_wgslsmith_f_op_f32(-arg_1)).a.x, 510f), var_0.a, -10423i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(847f - var_3.a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f), _wgslsmith_f_op_f32(max(arg_1, -288f))))), max(_wgslsmith_mod_vec4_i32(u_input.e ^ ~arg_0.e, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_2.x, arg_2.x, var_2.c, u_input.c.x)), func_5().e)), vec4<i32>(var_2.e.x << (_wgslsmith_sub_u32(u_input.d, 16062u) % 32u), func_5().c, -602i, max(_wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(2147483647i, u_input.c.x)), _wgslsmith_div_i32(-51786i, var_3.e.x)))));
                    let var_5 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(311f, var_4.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1787f, 226f)) + _wgslsmith_f_op_f32(-1097f))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, arg_3.x, all(vec2<bool>(var_1.x, var_1.x)))), 359f, arg_3.x)), countOneBits(_wgslsmith_mult_u32(abs(var_3.b), ~var_4.b)), var_2.e.x, _wgslsmith_f_op_f32(trunc(-988f)), select(-vec4<i32>(abs(-32688i), arg_2.x, -2147483647i, ~var_4.e.x), -vec4<i32>(_wgslsmith_add_i32(25595i, var_4.e.x), i32(-2147483648) ^ var_2.c, select(var_4.c, -1i, global0[_wgslsmith_index_u32(var_3.b, 23u)]), i32(-2147483648)), vec4<bool>(var_1.x, false, select(false, true, all(var_1.xzz)), true)));
                    let var_6 = var_5;
                }
            }
            var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1);
            let var_3 = global0[_wgslsmith_index_u32(u_input.d, 23u)];
        }
        case -1i: {
            var_1 = !(!(!select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, true, true, true), false)));
            for (var var_2 = 21122i; false; var_2 += 1i) {
                if (LOOP_COUNTERS[19u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[19u] = LOOP_COUNTERS[19u] + 1u;
                var var_3 = _wgslsmith_f_op_f32(abs(1f));
                var_3 = func_7(arg_2.x, vec3<u32>(u_input.a.x, firstLeadingBit(31802u), 61559u), Struct_1(func_7(-1i, u_input.a.zzw, func_7(arg_2.x, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, var_0.a), vec3<u32>(4294967295u, arg_0.b, 70134u)), Struct_1(vec3<f32>(arg_3.x, -115f, 1723f), u_input.a.x, u_input.c.x, arg_3.x, arg_0.e))).a, var_0.a, 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(163f * 359f), 1047f)), 358f), u_input.c)).a.x;
                let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(arg_3)))))), ~(~_wgslsmith_div_u32(1701u, var_0.a)), -46689i, -1000f, u_input.c | ~vec4<i32>(arg_0.c, arg_2.x, arg_0.e.x, -10679i)), true);
                continue;
            }
            for (var var_2 = 15769i; var_2 <= -28938i; ) {
                if (LOOP_COUNTERS[20u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[20u] = LOOP_COUNTERS[20u] + 1u;
                break;
            }
        }
        case 39498i: {
            if (all(vec2<bool>(var_1.x, var_1.x))) {
            }
            loop {
                if (LOOP_COUNTERS[21u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[21u] = LOOP_COUNTERS[21u] + 1u;
                let var_2 = arg_3;
                var_1 = !(!select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(54560u, 23u)], true, var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(42713u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false), vec4<bool>(false, false, false, true)), select(vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(0u, 23u)], true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, global0[_wgslsmith_index_u32(arg_0.b, 23u)]), true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], true, global0[_wgslsmith_index_u32(16475u, 23u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)], true, true)), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)], any(vec4<bool>(true, true, var_1.x, true)), true)));
                let var_3 = func_3();
                var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(func_7(arg_2.x, u_input.a.zwy, Struct_1(arg_3, 1u, i32(-2147483648), arg_0.a.x, vec4<i32>(-1i, -15938i, i32(-2147483648), 1i))).d - -1388f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) + _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + 1f)))));
            }
            let var_2 = vec4<i32>(firstTrailingBit(select(_wgslsmith_dot_vec3_i32(~arg_0.e.xzy, _wgslsmith_div_vec3_i32(vec3<i32>(20328i, arg_2.x, arg_2.x), vec3<i32>(2147483647i, -38464i, -15109i))), func_5().e.x, _wgslsmith_f_op_f32(-arg_1) == _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c >> (vec4<u32>(0u, var_0.a, 4737u, var_0.a) % vec4<u32>(32u)), vec4<i32>(arg_0.c, -49078i, -37698i, u_input.e.x)), vec4<i32>(u_input.e.x, 1i, arg_0.e.x, -2147483647i)) | countOneBits(arg_0.c), i32(-2147483648), abs(_wgslsmith_clamp_i32(func_1(_wgslsmith_f_op_f32(-arg_3.x)).c, countOneBits(reverseBits(32577i)), ~func_7(-10705i, u_input.a.ywx, Struct_1(vec3<f32>(arg_3.x, arg_1, arg_1), 1u, arg_0.c, 857f, vec4<i32>(33778i, 1i, arg_0.c, 1i))).e.x)));
            if (true) {
                let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_3.x, 1727f, arg_1) + vec4<f32>(-1144f, 584f, 1855f, -1047f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(328f, arg_1, arg_3.x, 1395f)))) - vec4<f32>(2753f, _wgslsmith_f_op_f32(808f - 1088f), func_5().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))));
                var_1 = vec4<bool>(!any(select(select(var_1.ww, vec2<bool>(false, true), vec2<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), !vec2<bool>(global0[_wgslsmith_index_u32(24408u, 23u)], global0[_wgslsmith_index_u32(17660u, 23u)]), var_1.yy)), ~(~countOneBits(arg_0.b)) != 31947u, !var_1.x, true);
                let var_4 = _wgslsmith_mult_u32(_wgslsmith_div_u32(func_4(), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, var_0.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, u_input.a.x, 4294967295u, var_0.a), u_input.a) % 32u), ~(~arg_0.b))), ~u_input.a.x);
                global0 = array<bool, 23>();
                var_1 = vec4<bool>(var_1.x, !(firstTrailingBit(max(u_input.d, 4294967295u)) != _wgslsmith_mult_u32(~u_input.a.x, func_6(arg_2.x, var_0, Struct_3(u_input.d), var_3))), all(var_1.wwx), global0[_wgslsmith_index_u32(1u, 23u)]);
            }
        }
        default: {
            var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * -642f), arg_0.a.x, _wgslsmith_f_op_f32(max(-1861f, -1278f)))));
            let var_3 = -1i;
            let var_4 = u_input.d;
            for (var var_5 = -37218i; var_5 == 71166i; var_5 = _wgslsmith_clamp_i32(-(arg_0.e.x >> (firstTrailingBit(_wgslsmith_mod_u32(4294967295u, arg_0.b)) % 32u)), var_3, _wgslsmith_mod_i32(~abs(var_3), _wgslsmith_mult_i32(firstTrailingBit(2147483647i), var_3)))) {
                if (LOOP_COUNTERS[22u] >= 1u) {
                    break;
                }
                (LOOP_COUNTERS)[22u] = LOOP_COUNTERS[22u] + 1u;
            }
        }
    }
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    loop {
        if (LOOP_COUNTERS[23u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[23u] = LOOP_COUNTERS[23u] + 1u;
        global0 = array<bool, 23>();
    }
    if (false) {
    }
    var var_0 = -u_input.e.x;
    var var_1 = Struct_3(1u);
    let var_2 = !global0[_wgslsmith_index_u32(u_input.d, 23u)];
    var_0 = -u_input.e.x;
    var_1 = Struct_3(~_wgslsmith_sub_u32(19941u, var_1.a));
    loop {
        if (LOOP_COUNTERS[24u] >= 1u) {
            break;
        }
        (LOOP_COUNTERS)[24u] = LOOP_COUNTERS[24u] + 1u;
        var var_3 = u_input.a.zy;
        var_0 = firstLeadingBit(-select(2147483647i, 39808i, true));
        var_1 = Struct_3(~(~u_input.d) ^ abs(52077u));
        loop {
            if (LOOP_COUNTERS[25u] >= 1u) {
                break;
            }
            (LOOP_COUNTERS)[25u] = LOOP_COUNTERS[25u] + 1u;
            let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_8(func_1(_wgslsmith_f_op_f32(-194f * -205f)), _wgslsmith_f_op_f32(-2296f), vec2<i32>(-1i, -1i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-543f, 151f, 621f) - vec3<f32>(-648f, -568f, -1208f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5().d - _wgslsmith_f_op_f32(-472f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1533f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(944f)) - _wgslsmith_f_op_f32(-393f + 974f)))), 108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f + -1000f)))));
            var var_5 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(~1u, 1u), ~_wgslsmith_dot_vec2_u32(~u_input.a.wy, u_input.a.wy), 20786u, 4294967295u), u_input.a, vec4<u32>(~45111u, var_3.x, func_1(_wgslsmith_f_op_f32(abs(var_4.x))).b, var_1.a));
            let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, var_4.x, -243f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, -786f, -709f, var_4.x)))), _wgslsmith_f_op_vec4_f32(var_4 * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_4)))))));
            continue;
        }
        var var_4 = u_input.a.zy;
    }
    let var_3 = vec2<bool>(((_wgslsmith_mult_u32(var_1.a, 69056u) <= ~4294967295u) && false) & any(!vec4<bool>(var_2, var_2, false, global0[_wgslsmith_index_u32(var_1.a, 23u)])), !any(!vec2<bool>(var_2, false)) && ((0u >> (1u % 32u)) >= u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-func_1(-149f).e.x));
}`
    });

}
main().catch(console.error);


async function main() {
    const adapter = await navigator.gpu?.requestAdapter();
    const device = await adapter?.requestDevice();
    if (!device) {
        fail('need a browser that supports WebGPU');
        return;
    }

    const module = device.createShaderModule({
        code: originalShaderCode,
    });

    const pipeline = device.createComputePipeline({
        layout: 'auto',
        compute: {
            module,
            entryPoint: 'main',
        },
    });

    const input = new Uint8Array([17, 251, 246,66,58,181,113,125,23,109,64,232,100,188,134,185,214,6,230,20,63,112,44,51,131,9,213,42,184,165,30,158]);

    const inSize = 32;
    const outSize = 32;

    // create a buffer on the GPU to hold our computation
    // input and output
    const uniformBuffer = device.createBuffer({
        size: inSize,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST,
    });

    // Copy our input data to that buffer
    device.queue.writeBuffer(uniformBuffer, 0, input);



    // create a buffer on the GPU to get a copy of the results
    const storageBuffer = device.createBuffer({
        size: outSize,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST,
    });


    // create a buffer for copying output so that we can read it
    const outBuffer = device.createBuffer({
        size: outSize,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ,
    });

    // Setup a bindGroup to tell the shader which
    // buffer to use for the computation
    const bindGroup = device.createBindGroup({
        layout: pipeline.getBindGroupLayout(0),
        entries: [
            { binding: 0, resource: { buffer: uniformBuffer, size: 32} },
            { binding: 1, resource: { buffer: storageBuffer, size: outSize} },
        ],
    });

    // Encode commands to do the computation
    const encoder = device.createCommandEncoder();
    const pass = encoder.beginComputePass();
    pass.setPipeline(pipeline);
    pass.setBindGroup(0, bindGroup);
    pass.dispatchWorkgroups(1);
    pass.end();

    // Encode a command to copy the results to a mappable buffer.
    encoder.copyBufferToBuffer(storageBuffer, 0, outBuffer, 0, outBuffer.size);

    // Finish encoding and submit the commands
    const commandBuffer = encoder.finish();
    device.queue.submit([commandBuffer]);

    // Read the results
    await outBuffer.mapAsync(GPUMapMode.READ, 0, outSize);
    const copyArray = outBuffer.getMappedRange(0, outSize);
    const outData = copyArray.slice(0);
    outBuffer.unmap();
    const result = (new Uint8Array(outData));

    console.log('input', input);
    console.log('result', result);

}

function fail(msg) {
    // eslint-disable-next-line no-alert
    alert(msg);
}

const originalShaderCode = `

struct Struct_1 {
  a: f32,
}

struct Struct_2 {
  a: vec2<f32>,
}

struct UniformBuffer {
  a: vec3<u32>,
  b: vec4<u32>,
}

struct StorageBuffer {
  a: vec3<i32>,
  b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: array<vec3<u32>, 9>;

var<private> global3: vec4<f32>;

var<private> global4: array<i32, 25>;

var<private> LOOP_COUNTERS: array<u32, 17>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
  return select(a * b, a, ((((((a[0] == -1) && (b[0] == -2147483648)) || ((a[0] == -2147483648) && (b[0] == -1))) || (((a[1] == -1) && (b[1] == -2147483648)) || ((a[1] == -2147483648) && (b[1] == -1)))) || (((a[2] == -1) && (b[2] == -2147483648)) || ((a[2] == -2147483648) && (b[2] == -1)))) || (((a[3] == -1) && (b[3] == -2147483648)) || ((a[3] == -2147483648) && (b[3] == -1)))) || (((((b[0] != 0) && ((a[0] > (2147483647 / b[0])) || (a[0] < (-2147483648 / b[0])))) || ((b[1] != 0) && ((a[1] > (2147483647 / b[1])) || (a[1] < (-2147483648 / b[1]))))) || ((b[2] != 0) && ((a[2] > (2147483647 / b[2])) || (a[2] < (-2147483648 / b[2]))))) || ((b[3] != 0) && ((a[3] > (2147483647 / b[3])) || (a[3] < (-2147483648 / b[3]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
  return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
  return select(a - b, a, ((b < 0) && (a > (2147483647 + b))) || ((b > 0) && (a < (-2147483648 + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
  return dot(clamp(a, vec4<i32>(-23170), vec4<i32>(23170)), clamp(b, vec4<i32>(-23170), vec4<i32>(23170)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
  return select(v, vec3<f32>(10.0), any(abs(v) < vec3<f32>(0.1)) || any(abs(v) >= vec3<f32>(16777216.0)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
  return select(v, f32(10.0), (abs(v) < f32(0.1)) || (abs(v) >= f32(16777216.0)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
  return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
  return select(vec2<f32>(42.0), vec2<f32>(-123.0), (abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
  return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
  return dot(clamp(a, vec3<i32>(-26754), vec3<i32>(26754)), clamp(b, vec3<i32>(-26754), vec3<i32>(26754)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
  return select(a * b, a, ((((b[0] != 0u) && (a[0] > (4294967295u / b[0]))) || ((b[1] != 0u) && (a[1] > (4294967295u / b[1])))) || ((b[2] != 0u) && (a[2] > (4294967295u / b[2])))) || ((b[3] != 0u) && (a[3] > (4294967295u / b[3]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
  return select(v, vec2<f32>(10.0), any(abs(v) < vec2<f32>(0.1)) || any(abs(v) >= vec2<f32>(16777216.0)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
  return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
  return select(a % b, a, ((a[0] < 0) || (b[0] <= 0)) || ((a[1] < 0) || (b[1] <= 0)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
  return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
  return select(v, vec4<f32>(10.0), any(abs(v) < vec4<f32>(0.1)) || any(abs(v) >= vec4<f32>(16777216.0)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
  return select(vec4<f32>(42.0), vec4<f32>(-123.0), (((abs(a[0] / b[0]) > abs(a[0])) || (abs(a[1] / b[1]) > abs(a[1]))) || (abs(a[2] / b[2]) > abs(a[2]))) || (abs(a[3] / b[3]) > abs(a[3])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
  return select(a % b, a, (a < 0) || (b <= 0));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
  return select(a + b, a, ((b > 0) && (a > (2147483647 - b))) || ((b < 0) && (a < (-2147483648 - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
  return select(a + b, a, (((b[0] > 0) && (a[0] > (2147483647 - b[0]))) || ((b[1] > 0) && (a[1] > (2147483647 - b[1])))) || (((b[0] < 0) && (a[0] < (-2147483648 - b[0]))) || ((b[1] < 0) && (a[1] < (-2147483648 - b[1])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
  return dot(clamp(a, vec2<i32>(-32767), vec2<i32>(32767)), clamp(b, vec2<i32>(-32767), vec2<i32>(32767)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
  return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
  return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
  return select(a % b, a, b == 0u);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> bool {
  let var_0 = !(21153u != abs(~(u_input.a.x >> (97683u % 32u))));
  let var_1 = arg_3.a;
  global0 = _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.a.xz << (vec2<u32>(4294967295u, ~select(u_input.b.x, u_input.a.x, true)) % vec2<u32>(32u)));
  global1 = select(!vec4<bool>(arg_0, var_0, !arg_0, var_0), !(!select(vec4<bool>(true, true, false, global1.x), select(vec4<bool>(false, false, var_0, arg_0), vec4<bool>(global1.x, false, arg_0, false), false), select(vec4<bool>(true, global1.x, arg_0, arg_0), vec4<bool>(false, global1.x, true, true), vec4<bool>(global1.x, true, true, true)))), global1.x);
  for (var var_2 = 10843; var_2 > -5998; var_2 += 1) {
      if (LOOP_COUNTERS[0u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[0u] = LOOP_COUNTERS[0u] + 1u;
      global0 = u_input.b.x;
  }
  return !all(select(global1.zzx, global1.zwz, !vec3<bool>(global1.x, false, var_0)));
}

fn func_3(arg_0: f32, arg_1: bool) -> Struct_1 {
  switch (reverseBits(global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.a.x)), 25u)] ^ global4[_wgslsmith_index_u32(~u_input.b.x, 25u)])) {
      case -12931: {
          let var_0 = ~firstLeadingBit(_wgslsmith_sub_vec2_u32((vec2<u32>(u_input.b.x, 13669u) | vec2<u32>(u_input.a.x, u_input.b.x)) & u_input.b.zz, u_input.b.wy));
      }
      case -33654: {
          let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -312.0));
      }
      case 32531: {
          for (var var_0 = 2374; global1.x; var_0 = 43970) {
              if (LOOP_COUNTERS[1u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[1u] = LOOP_COUNTERS[1u] + 1u;
              let var_1 = select(vec4<bool>(global1.x, _wgslsmith_add_u32(~u_input.a.x, ~40140u) > 14556u, all(!vec3<bool>(arg_1, arg_1, arg_1)), !false), vec4<bool>(any(global1.zzx), func_4(arg_1, _wgslsmith_f_op_f32(sign(global3.x)), global4[_wgslsmith_index_u32(u_input.a.x ^ _wgslsmith_sub_u32(47572u, 4294967295u), 25u)], Struct_2(_wgslsmith_f_op_vec2_f32(global3.wx - vec2<f32>(global3.x, -802.0)))), global1.x, -980.0 >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - _wgslsmith_f_op_f32(-arg_0))), select(vec4<bool>(arg_1, any(global1.xz), global1.x, all(global1.zz)), select(select(vec4<bool>(arg_1, true, true, false), select(vec4<bool>(arg_1, true, global1.x, arg_1), vec4<bool>(global1.x, true, false, true), arg_1), true), vec4<bool>(all(global1.zxx), global1.x, any(vec4<bool>(false, false, global1.x, true)), true), !(!vec4<bool>(true, true, true, true))), !(!vec4<bool>(true, true, arg_1, arg_1))));
          }
      }
      case 12612: {
          global1 = select(select(vec4<bool>(false, false, any(!global1.xyz), !arg_1), vec4<bool>(!false, any(select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, true, global1.x, true), global1.x)), true, arg_1 & true), !select(select(vec4<bool>(global1.x, false, arg_1, global1.x), vec4<bool>(global1.x, global1.x, false, arg_1), vec4<bool>(global1.x, arg_1, global1.x, global1.x)), vec4<bool>(global1.x, arg_1, false, global1.x), arg_1)), !vec4<bool>(all(vec4<bool>(arg_1, true, false, false)), (-1000.0 == arg_0) | false, false, countOneBits(global4[_wgslsmith_index_u32(u_input.b.x, 25u)]) > global4[_wgslsmith_index_u32(46010u, 25u)]), select(select(!vec4<bool>(false, false, global1.x, arg_1), vec4<bool>(arg_1 & arg_1, !false, select(false, global1.x, arg_1), arg_1 || true), global1.x), !(!vec4<bool>(arg_1, true, arg_1, false)), vec4<bool>(!(!arg_1), _wgslsmith_f_op_f32(-global3.x) > 1291.0, _wgslsmith_mod_i32(-2147483648, global4[_wgslsmith_index_u32(u_input.a.x, 25u)]) < ~17882, !arg_1 || (arg_1 | true))));
      }
      default: {
          global2 = array<vec3<u32>, 9>();
      }
  }
  loop {
      if (LOOP_COUNTERS[2u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[2u] = LOOP_COUNTERS[2u] + 1u;
      var var_0 = 1;
  }
  let var_0 = 1;
  loop {
      if (LOOP_COUNTERS[3u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[3u] = LOOP_COUNTERS[3u] + 1u;
      switch (~(~(-12467))) {
          default: {
              var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(global3.wy)));
          }
      }
  }
  switch (abs(0)) {
      case 15477: {
          global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-415.0, global3.x, -218.0, 876.0), vec4<f32>(-1098.0, global3.x, -1106.0, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -515.0, 341.0, global3.x))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1037.0, arg_0, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + -476.0), 1465.0), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-465.0 * -201.0)), -123.0, global3.x, -1736.0), false)));
      }
      case 0: {
          switch (_wgslsmith_add_i32(3186, 2147483647)) {
              case 1: {
                  var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global3.yw + vec2<f32>(248.0, 239.0)), _wgslsmith_f_op_vec2_f32(-global3.xx))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global3.ww), vec2<f32>(411.0, 606.0)))))));
              }
              case -13482: {
                  var var_1 = Struct_1(arg_0);
              }
              default: {
                  let var_1 = _wgslsmith_clamp_i32(var_0, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.wyw, ~global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), 25u)], ~(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-5656, 1, var_0), vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0, 0)), -global4[_wgslsmith_index_u32(17256u, 25u)])));
              }
          }
      }
      case -1: {
          for (; ; ) {
              if (LOOP_COUNTERS[4u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[4u] = LOOP_COUNTERS[4u] + 1u;
              let var_1 = Struct_1(_wgslsmith_f_op_f32(round(global3.x)));
          }
      }
      case -5988: {
          let var_1 = _wgslsmith_div_f32(-1000.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240.0 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204.0, global3.x)))));
      }
      default: {
          let var_1 = vec2<i32>(~global4[_wgslsmith_index_u32(~(~u_input.a.x), 25u)], global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x), 25u)] >> (u_input.b.x % 32u));
      }
  }
  return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-596.0 - -1000.0), 546.0)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
  global1 = vec4<bool>(global1.x, !(!(!global1.x)), true, all(!select(!vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, false, false, true), global4[_wgslsmith_index_u32(u_input.a.x, 25u)] >= -2147483648)));
  for (var var_0 = 53111; ; var_0 += 1) {
      if (LOOP_COUNTERS[5u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[5u] = LOOP_COUNTERS[5u] + 1u;
      continue;
  }
  for (; global1.x; ) {
      if (LOOP_COUNTERS[6u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[6u] = LOOP_COUNTERS[6u] + 1u;
      continue;
  }
  if (any(!vec3<bool>(_wgslsmith_div_f32(519.0, -1000.0) < 1170.0, false, all(global1.xwx)))) {
      let var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(global3.x, -1477.0))))) - _wgslsmith_f_op_f32(596.0 - _wgslsmith_f_op_f32(global3.x - global3.x))), (global4[_wgslsmith_index_u32(~u_input.b.x, 25u)] >= ~(~(-17097))) && any(select(!vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(global1.x, arg_0, global1.x, true), !true)));
  }
  loop {
      if (LOOP_COUNTERS[7u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[7u] = LOOP_COUNTERS[7u] + 1u;
      continue;
  }
  return func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a * 110.0))), any(global1.yzy));
}

fn func_2() -> Struct_1 {
  for (var var_0 = 15989; ; var_0 += 1) {
      if (LOOP_COUNTERS[8u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[8u] = LOOP_COUNTERS[8u] + 1u;
      var var_1 = func_5(global1.x, func_3(319.0, false));
  }
  for (var var_0 = 2147483647; var_0 == -2147483648; ) {
      if (LOOP_COUNTERS[9u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[9u] = LOOP_COUNTERS[9u] + 1u;
      global3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(538.0, -1252.0)), _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(f32(-1.0) * -628.0))), all(vec4<bool>(global1.x, global1.x, false, false)))), global3.x, -558.0, _wgslsmith_f_op_f32(sign(func_3(_wgslsmith_f_op_f32(global3.x * global3.x), true).a))), vec4<f32>(1282.0, _wgslsmith_f_op_f32(f32(-1.0) * -400.0), _wgslsmith_f_op_f32(f32(-1.0) * -674.0), -354.0));
  }
  var var_0 = -(i32(-1) * -1);
  var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-global3.wy));
  if (!false) {
      if (global1.x) {
          let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1.0) * -203.0));
      }
  }
  return func_3(_wgslsmith_f_op_f32(sign(657.0)), global1.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_2 {
  var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000.0 * arg_0.x) - _wgslsmith_f_op_f32(arg_0.x + arg_2.a.x)))), arg_2.a.x, arg_0.x);
  switch (arg_1.x) {
      case -2147483648: {
          let var_1 = Struct_1(var_0.x);
      }
      case 37348: {
          if (global1.x) {
              let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-342.0))) - 1844.0);
          }
      }
      case 0: {
          for (var var_1 = 26930; false; ) {
              if (LOOP_COUNTERS[10u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[10u] = LOOP_COUNTERS[10u] + 1u;
              let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(exp2(global3.x))))));
          }
      }
      default: {
          if (!all(global1.wy) || !false) {
              var var_1 = Struct_2(arg_2.a);
          }
      }
  }
  if (false) {
      loop {
          if (LOOP_COUNTERS[11u] >= 1u) {
              break;
          }
          (LOOP_COUNTERS)[11u] = LOOP_COUNTERS[11u] + 1u;
          global2 = array<vec3<u32>, 9>();
      }
  }
  var var_1 = func_2();
  var var_2 = 2147483647;
  return Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz)), arg_2.a, !func_4(false, _wgslsmith_f_op_f32(1000.0 - -907.0), global4[_wgslsmith_index_u32(55083u, 25u)], Struct_2(vec2<f32>(-1027.0, 1068.0))))));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
  var var_0 = arg_0;
  global2 = array<vec3<u32>, 9>();
  let var_1 = !vec3<bool>(!global1.x, 1 >= _wgslsmith_dot_vec3_i32(-vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)]), ~vec3<i32>(global4[_wgslsmith_index_u32(85528u, 25u)], -1, global4[_wgslsmith_index_u32(4747u, 25u)])), all(vec3<bool>(global1.x, true, false)));
  let var_2 = func_3(1916.0, true || true);
  var var_3 = ~(~83277u);
  return var_2;
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
  if (global1.x) {
      let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.xwz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-908.0, -1226.0, arg_3.a))))) + vec3<f32>(arg_3.a, 426.0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))));
  }
  var var_0 = ~vec4<i32>(reverseBits(min(-91215, arg_2)), _wgslsmith_mod_i32(-abs(global4[_wgslsmith_index_u32(4294967295u, 25u)]), 2147483647), -41617, global4[_wgslsmith_index_u32(27406u, 25u)]);
  if (true) {
      var var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a.x, 1u, u_input.a.x), ~vec4<u32>(0u, 1u, 15342u, 1u)) << (_wgslsmith_clamp_vec4_u32(~u_input.b, u_input.b, ~u_input.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), 4294967295u, 0u, ~0u) << (vec4<u32>(~4294967295u, u_input.b.x, 27499u, countOneBits(19868u)) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(u_input.b.x), u_input.b.x, 0u, reverseBits(select(u_input.a.x, u_input.a.x, global1.x))));
  }
  if (all(global1.www)) {
      var_0 = ~vec4<i32>(-29237, var_0.x >> (~(1259u ^ 4294967295u) % 32u), _wgslsmith_dot_vec3_i32(firstTrailingBit(var_0.yyy), var_0.zzy), var_0.x);
  }
  for (var var_1 = 0; var_1 <= 28656; ) {
      if (LOOP_COUNTERS[12u] >= 1u) {
          break;
      }
      (LOOP_COUNTERS)[12u] = LOOP_COUNTERS[12u] + 1u;
      if (global1.x) {
          let var_2 = abs(15191u) <= ~(~(~u_input.b.x) << (~u_input.b.x % 32u));
      }
  }
  return any(vec4<bool>((_wgslsmith_f_op_f32(trunc(-1676.0)) != -1031.0) & true, global1.x, false, !(all(vec2<bool>(global1.x, true)) && !false)));
}

@compute @workgroup_size(1) fn main() {
  let var_0 = max(49, min(-7144, -(-31344 >> (_wgslsmith_add_u32(4294967295u, u_input.b.x) % 32u))));
  if (u_input.b.x < 37880u) {
      let var_1 = all(global1.xxz);
  }
  switch (_wgslsmith_sub_i32(-2147483648, var_0)) {
      case 1: {
          global0 = u_input.b.x;
      }
      case 2147483647: {
          if (global1.x) {
              let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(var_0, global4[_wgslsmith_index_u32(abs(u_input.a.x), 25u)]), _wgslsmith_add_vec2_i32((vec2<i32>(25103, -441) | countOneBits(vec2<i32>(global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(u_input.b.x, 25u)]))) & ~_wgslsmith_mod_vec2_i32(vec2<i32>(-65173, -2147483648), vec2<i32>(39264, 7200)), vec2<i32>(0, ~_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], -2147483648))));
          }
      }
      case -2147483648: {
          if (all(vec3<bool>(global1.x, any(!global1.yw), func_7(global3.x, func_6(func_1(vec4<f32>(-476.0, -409.0, 1188.0, 1513.0), vec2<i32>(51941, var_0), Struct_2(global3.xx))), 23457, Struct_1(_wgslsmith_div_f32(1049.0, -583.0)))))) {
              global0 = ~firstLeadingBit(~u_input.a.x);
          }
      }
      case 0: {
          for (; ; ) {
              if (LOOP_COUNTERS[13u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[13u] = LOOP_COUNTERS[13u] + 1u;
              break;
          }
      }
      default: {
          global1 = !(!(!vec4<bool>(false, !global1.x, all(vec4<bool>(global1.x, true, global1.x, true)), select(global1.x, global1.x, global1.x))));
      }
  }
  let var_1 = func_5(global1.x, func_5(true, func_2()));
  switch (~firstLeadingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], 35875), vec2<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 25u)], global4[_wgslsmith_index_u32(47051u, 25u)]))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(max(u_input.b.x, abs(4294967295u)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), ~global2[_wgslsmith_index_u32(u_input.a.x, 9u)]), ~_wgslsmith_mod_u32(u_input.a.x, 4294967295u)), ((vec4<u32>(48647u, 4294967295u, 0u, 37720u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 0u)) & ~vec4<u32>(0u, u_input.b.x, 19226u, u_input.b.x)) & reverseBits(min(u_input.b, vec4<u32>(20699u, 1u, u_input.a.x, u_input.b.x)))) % 32u)) {
      case -2147483648: {
          let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-338.0, 483.0, global1.x)))))));
      }
      case 1: {
          loop {
              if (LOOP_COUNTERS[14u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[14u] = LOOP_COUNTERS[14u] + 1u;
              global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-751.0, -1138.0, 693.0, 429.0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, -166.0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 164.0, var_1.a, 1385.0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -2960.0, var_1.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, 1882.0, global3.x, 243.0)))), false)), !select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, false), select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(false, true, global1.x, false), true)))));
          }
      }
      case 6159: {
          if (!func_4(func_7(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, -1336.0), var_1.a), func_6(func_1(vec4<f32>(2263.0, 103.0, -279.0, var_1.a), vec2<i32>(global4[_wgslsmith_index_u32(1965u, 25u)], var_0), Struct_2(global3.yw))), -(~33044), var_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a + -1769.0), _wgslsmith_f_op_f32(f32(-1.0) * -1000.0))), 522.0)), var_0, Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3.yz, vec2<f32>(-784.0, var_1.a), vec2<bool>(false, true))), vec2<f32>(-1321.0, var_1.a))))) {
              global1 = !vec4<bool>(!(!true), !(1 > 0), global1.x, 11714u != min(min(35281u, u_input.b.x), abs(59174u)));
          }
      }
      case -1: {
          loop {
              if (LOOP_COUNTERS[15u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[15u] = LOOP_COUNTERS[15u] + 1u;
              continue;
          }
      }
      default: {
          loop {
              if (LOOP_COUNTERS[16u] >= 1u) {
                  break;
              }
              (LOOP_COUNTERS)[16u] = LOOP_COUNTERS[16u] + 1u;
              continue;
          }
      }
  }
  global4 = array<i32, 25>();
  global4 = array<i32, 25>();
  let x = u_input.a;
  s_output = StorageBuffer(countOneBits(vec3<i32>(~global4[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_sub_i32(-27366, var_0), global4[_wgslsmith_index_u32(u_input.b.x, 25u)] & var_0) << (abs(firstLeadingBit(vec3<u32>(u_input.a.x, 42572u, 1u))) % vec3<u32>(32u))), ~vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1, global4[_wgslsmith_index_u32(45815u, 25u)], -33515, -1081), vec4<i32>(-3986, -36342, global4[_wgslsmith_index_u32(u_input.b.x, 25u)], -25654)), select(vec4<i32>(-2147483648, -11921, -1, -49781), vec4<i32>(2147483647, 2748, -6928, global4[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(true, global1.x, true, false))), abs(global4[_wgslsmith_index_u32(49209u, 25u)] >> (u_input.a.x % 32u)), min(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0), 0));
}

`;


main();