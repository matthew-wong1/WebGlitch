if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

const inputArray = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader = `
// {"0:0":[150,70,43,68,72,93,63,3,183,151,92,60,76,35,220,145,218,41,20,253,167,52,142,101,213,48,121,26,214,81,179,223,193,2,227,92,253,187,11,222,231,31,209,196,41,242,17,90]}
// Seed: 10285354754591200512

struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = select(firstLeadingBit(firstLeadingBit((u_input.c.ywy << (u_input.c.zzy % vec3<u32>(32u))) ^ ~u_input.c.xyz)), u_input.c.zxx, !select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return (vec4<i32>(-8847i, -_wgslsmith_div_i32(arg_2.x, arg_1), _wgslsmith_mod_i32(firstTrailingBit(u_input.b), i32(-1i) * -57779i), _wgslsmith_mod_i32(arg_1, i32(-2147483648)) | ~(-78922i)) ^ arg_2) & ~arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(max(vec4<i32>(-34848i, -57433i, 0i, u_input.b), max(vec4<i32>(1i, -39134i, i32(-2147483648), u_input.d.x), vec4<i32>(16067i, i32(-2147483648), i32(-2147483648), 12367i))), vec4<i32>(u_input.b, u_input.a | -24380i, _wgslsmith_dot_vec4_i32(vec4<i32>(70746i, 0i, u_input.a, 30258i), vec4<i32>(-1i, u_input.b, -42868i, -26635i)), u_input.d.x)), func_1(Struct_1(u_input.c.xxz), 2147483647i, -select(vec4<i32>(2147483647i, 41525i, 1i, 2147483647i), vec4<i32>(7632i, i32(-2147483648), 2147483647i, u_input.d.x), vec4<bool>(true, true, true, true))));
}
`

async function main() {
    const adapter = await navigator.gpu.requestAdapter();
    const device = await adapter.requestDevice();
    const queue = device.queue

    // Setup for beginning a render pass
    const encoder = device.createCommandEncoder();
    const texture = device.createTexture({
        format: "bgra8unorm",
        label: "texture",
        size: {
            width: 12,
            height: 12,
            depthOrArrayLayers: 1
        },
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });

    const view = texture.createView({
        dimension: "2d-array", // Works fine when it is "2d"
    })

    const renderPassEncoder = encoder.beginRenderPass({
        colorAttachments: [{
            loadOp: "load",
            storeOp: "discard",
            view: view
        }],
        maxDrawCount: 10,
    });
    renderPassEncoder.end(); // This also affects the output of the compute pass

    // Setup for compute pass
    const inputBuffer = device.createBuffer({
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const storageBuffer = device.createBuffer({
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });

    const shaderModule = device.createShaderModule({
        code: shader
    });
    const computePipeline = device.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: shaderModule
        },
        layout: "auto"
    });

    const computePassEncoder = encoder.beginComputePass();
    computePassEncoder.setPipeline(computePipeline);
    queue.writeBuffer(inputBuffer, 0, inputArray);

    const GPUBindGroup3 = device.createBindGroup({
        layout: computePipeline.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: inputBuffer
            }
        }, {
            binding: 1,
            resource: {
                buffer: storageBuffer
            }
        }]
    });
    computePassEncoder.setBindGroup(0, GPUBindGroup3);
    computePassEncoder.dispatchWorkgroups(1);
    computePassEncoder.end();

    // Copy results of storage buffer to output buffer
    const outputBuffer = device.createBuffer({
        size: 32,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    encoder.copyBufferToBuffer(storageBuffer, 0, outputBuffer, 0, 32);

    queue.submit([encoder.finish()]);

    // Print the output of the compute pass
    await outputBuffer.mapAsync(GPUMapMode.READ)
    const arrayBuffer = outputBuffer.getMappedRange();
    const computePassResult = arrayBuffer.slice(0)
    const readableArray = new Uint8Array(computePassResult)
    console.log("Compute pass has output:", ...readableArray);
} main().then(() => {}).catch(error => {
    console.log(error);
});