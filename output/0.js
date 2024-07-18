const {
    create,
    globals
} = require('../../dawn_newest/out/Debug/Debug/dawn.node');
const fs = require('fs');
Object.assign(globalThis, globals);
let navigator = {
    gpu: create([]),
};

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

function loadShader(file) {
    try {
        const data = fs.readFileSync(file, 'utf8');
        return data;
    } catch (err) {
        console.error('Failed to load shader:', err);
    }
}
// Seed: 818775201986106919
const typedArray24 = new Float32Array([6608])
const typedArray23 = new Float32Array([5753, -1458, 1297, -8856, -4638, 5925, 468, 8063, -624, -2701, -2680, 91, 6119, -1817, -4686, 7076, -2263, -6811, -6897, 7509, 1155, 3433, 3115, -9852, 9853, -71, 7776, 9957, -7375, -2365, 4303, -296, -3316, 5357, -7948, -5760, -7022, 3180, 8318, 9572, 6217, 1207, -1923, 1969, 7392, -1041, 9185, -135, 7348, 1692, -9188, -7264, 3685, 717, 7554, 6366, 2599, -2158, -7552, -7524, 189, -1200, 4682, -1659, 6477, 2502, -6575, 9233, 5747, 6826, -5479, 5982, -2169, -3287, -3377, 7503, 7328, 6804, -5958, 1211, -4587, 3352, -6070, -7370, -9632, 6557, -5226, -1323, 2795, -4993, 720, 2373, 5732, 5434, 1237, 6263, 9302, -8965, -3030, -1165, -7481, 8311, -7946, -2049, -2857, 3255, 9003, -859, -7963, -9937, 7230, 4374, 2258, -4402, 1901, 9963, 7357, 3438, 1522, 774, 9800, 1263, -3165, 788, 9075, 9802, 2586, -6812, -2543, 2752, -4919, 7794, 6177, -956, 5592, -9191, -7151, -5535, -1722, -8693, -9140, 4662, -3530, 6562, -6165, 3471, -2321, -6694, -1457, 1918, 2816, 9002, -8635, 928, -5827, -525, -9424, 9075, 3820, 6886, -933, 4873, 1352, -9954, -9187, 9067, -7274, -4695, 424, 2348, 3940, 9141, 8922, 3169, -180, -2056, -2068, 3608, -6209, -1716, -1363, -1653, -1065, 2412, -3741, -4912, 6033, 3374, 6163, -5409, -9323, -402, 7392, -6489, 6245, -5305, -1222, 504, 2476, -7977, 6536, -2383, -6215, 3677, -2167, 8376, 2606, -605, 7229, -1238, 6173, 7989, -9852, -7161, 3745, 4046, -6095, -9378, -6795, -6776, 4590, 2707, 9887, 7278, 8509, -5707, 9257, -582, -5241, -8597, -5927, 178, -1021, -2421, 7823, 2309, 6669, 2767, -4698, -6616, -330, 5859, 2509, -8601, 4059, 7751, -4003, 898, -9863, -9382, 6233, -8285, 5306, 39, 3119, -2802, 136, -6858, -6144, 9196, -7716, -9825, 7919, -1548, 37, 1823, 915, 3118, 7358, -289, 8381, 5010, -1743, 4805, 1141, -5524, 1618, -1507, 9644, -5123, -7250, -3345, -679, -99, -6575, 8916, -3129, -8827, -6984, 1664, -2498, 6201, -409, -5634, -379, -956, -1170, -1296, -4882, -9006, 2666, 8215, 4387, -2904, 8145, 1779, 1688, 3191, -2507, 9045, 2004, 8725, -790, 7354, -7098, 5526, -4691, 7200, 155, -5645, -273, -2185, -7655, -1503, -2095, -6004, 7122, 4005, -1268, -5020, -6896, -1428, 7688, -4319, -8360, -3170, 4312, -5336, 181, -2161, 5445, 4449, -2768, 6651, -5836, -4693, 6459, -4428, -9676, 889, 6488, -9201, -6983, -9071, -6891, -8480, 5381, -8689, 6019, -4299, -6462, -8868, -2463, 5218, -8884, -5998, 3061, -9569, -3441])
const shader15 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray21 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray20 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader14 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray19 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray18 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader13 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader12 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray17 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray16 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader11 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader10 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray15 = new Float32Array([5461])
const shader9 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray13 = new Float32Array([6678, 8039, 1467, 8163, 6242, 1467, 8575, 6024, -1051, -2966, 3633, -1307, 4589, -1448, 4915, -4973, -6230, -5131, -6146, -5864, -152, -1350, -4881, -8889, 5480, -5729, -4133, -8294, 7984, -3650, -8715, -7742, 6205, 5719, 1234, 3838, 9158, 7763, -5346, -6556, 2392, -4099, -3826, 1043, 6055, 8905, -5287, 7297, -3787, 2293, 3969, -2288, -314, 5457, 9254, 6869, 2205, -3973, -2021, 9227, -1213, -2074, 9005, 8088, -7470, 4383, -265, -6239, -793, -2400])
const typedArray12 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray11 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray9 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray8 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray7 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray5 = new Float32Array([8804, -4987])
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray4 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray3 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray2 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray1 = new Float32Array([-4384, 7089, -4056, -8973])
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader0 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUShaderModule0 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader0
    });
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 731,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const string0 = GPUQuerySet0.count
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture0",
        size: {
            width: 1262,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture1",
        size: {
            width: 2655,
            height: 1258,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView0 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba8unorm",
        label: "GPUTextureView0"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.15463900485050286,
                g: 1.648991263722399,
                b: 0.1843309095791501,
                a: 0.821741322188668
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 934809053,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const string1 = GPUComputePassEncoder0.label
    const GPUComputePipeline0 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline0",
        layout: "auto"
    });
    const string2 = GPUComputePipeline0.label
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST
    });
    const GPUQueue0 = GPUDevice0.queue
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray0);
    const GPUBindGroup0 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline0.bindGroup",
        layout: GPUComputePipeline0.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 920,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder1.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    const string3 = GPUQuerySet0.count
    const GPUSupportedFeatures0 = GPUAdapter0.features
    GPUQueue0.writeBuffer(GPUBuffer1, 8, typedArray1);
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer1);
    const boolean0 = GPUAdapter0.isFallbackAdapter
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer1);
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture2",
        size: {
            width: 406,
            height: 1053,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView1 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6837819760297668,
                g: 0.15192231230120834,
                b: 1.5192385998876394,
                a: 0.7378357210812649
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView1
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 1218502113,
        occlusionQuerySet: GPUQuerySet1
    });
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    const string4 = GPUComputePipeline0.label
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder1.dispatchWorkgroups(156, 176, 29);
    const string5 = GPUQueue0.label
    const string6 = GPUQueue0.label
    const string7 = GPUQueue0.label
    GPUComputePassEncoder1.end();
    const GPUShaderModule1 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader1
    });
    const GPUShaderModule2 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader2
    });
    const GPURenderPipeline0 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline0",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const string8 = GPURenderPipeline0.label
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string9 = GPURenderPassEncoder0.label
    const string10 = GPURenderPassEncoder1.label
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer1);
    const GPUAdapterInfo1 = GPUAdapter1.info
    const GPUComputePassEncoder2 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const string11 = GPUComputePassEncoder2.label
    GPURenderPassEncoder1.end();
    const GPUCommandBuffer1 = GPUCommandEncoder3.finish();
    const string12 = GPUQuerySet1.label
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup0);
    const string13 = GPUComputePipeline0.label
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture3",
        size: {
            width: 234,
            height: 228,
            depthOrArrayLayers: 44
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView2 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6292409543531936,
                g: 1.6944946686087836,
                b: 0.31624313580335683,
                a: 1.6921216472639031
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView2,
            depthSlice: 15
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 1951088106,
        occlusionQuerySet: GPUQuerySet0
    });
    const string14 = GPUQuerySet1.label
    const GPUSupportedFeatures1 = GPUAdapter1.features
    const string15 = GPURenderPipeline0.label
    const GPUSupportedLimits0 = GPUDevice0.limits
    GPUComputePassEncoder2.end();
    const string16 = await navigator.gpu.getPreferredCanvasFormat();
    const string17 = GPUCommandEncoder4.label
    const GPUComputePassEncoder3 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const GPUSupportedFeatures2 = GPUAdapter1.features
    GPUQueue0.submit([GPUCommandBuffer1]);
    const string18 = GPUDevice0.label
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture4",
        size: {
            width: 942,
            height: 978,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView3 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView3"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6049779086730502,
                g: 0.20620593922931674,
                b: 0.29821123351757195,
                a: 1.8731382211955077
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView3,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 1327454084,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture5",
        size: {
            width: 588,
            height: 879,
            depthOrArrayLayers: 11
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView4 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5745383842962768,
                g: 0.21918584528450902,
                b: 1.8860272037522885,
                a: 1.279655980476241
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView4,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 1389437579,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline1",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder2.draw(3);
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader3
    });
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader4
    });
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline2",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder4.draw(5);
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture6",
        size: {
            width: 377,
            height: 2183,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView5 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView5"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5468712261047892,
                g: 0.9126875972366717,
                b: 0.477260299250881,
                a: 0.44878574062795606
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView5
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 51077893,
        occlusionQuerySet: GPUQuerySet0
    });
    const string19 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture7",
        size: {
            width: 806,
            height: 65,
            depthOrArrayLayers: 21
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView6 = GPUTexture7.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.308610154309554,
                g: 0.43183037878129316,
                b: 0.2424779060220903,
                a: 0.9336719543725776
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView6,
            depthSlice: 17
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 4103581034,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUAdapterInfo2 = GPUAdapter1.info
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup0);
    const GPUBindGroupLayout0 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline3",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline3);
    const GPUTextureView7 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView7"
    });
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const string20 = GPURenderPassEncoder3.label
    const GPUComputePassEncoder4 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 1936,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const string21 = GPUDevice0.label
    const string22 = GPUQuerySet0.count
    const GPUBindGroupLayout1 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUQueue1 = GPUDevice0.queue
    GPUComputePassEncoder4.end();
    const GPUBindGroupLayout2 = GPUComputePipeline1.getBindGroupLayout(0);
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer1);
    GPURenderPassEncoder5.end();
    const GPUCommandBuffer2 = GPUCommandEncoder7.finish();
    const GPUTextureView8 = GPUTexture0.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView8"
    });
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline4",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray2);
    const GPUBindGroup1 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline2.bindGroup",
        layout: GPUComputePipeline2.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    const GPUComputePassEncoder5 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const GPUAdapterInfo3 = GPUAdapter0.info
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline2);
    GPURenderPassEncoder0.end();
    const GPUAdapterInfo4 = GPUAdapter1.info
    const string23 = GPURenderPassEncoder6.label
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline2);
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const string24 = GPUComputePipeline0.label
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 3686,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const string25 = await navigator.gpu.getPreferredCanvasFormat();
    const string26 = GPUQueue1.label
    const boolean2 = GPUAdapter2.isFallbackAdapter
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder5.dispatchWorkgroups(213, 63, 28);
    const string27 = GPUCommandEncoder9.label
    const string28 = await navigator.gpu.getPreferredCanvasFormat();
    const string29 = GPUDevice0.label
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray3);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline0.bindGroup",
        layout: GPUComputePipeline0.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    const GPUTextureView9 = GPUTexture0.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView9"
    });
    const GPUCommandBuffer3 = GPUCommandEncoder0.finish();
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline2);
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUComputePassEncoder6 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline1);
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray4);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline1.bindGroup",
        layout: GPUComputePipeline1.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder3.dispatchWorkgroups(62, 248, 30);
    const string30 = GPUQueue0.label
    const string31 = GPURenderPassEncoder3.label
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const string32 = GPUComputePipeline2.label
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUBindGroupLayout3 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    GPURenderPassEncoder3.end();
    const GPUSupportedFeatures3 = GPUDevice0.features
    const GPUAdapterInfo5 = GPUAdapter1.info
    GPURenderPassEncoder2.end();
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string33 = GPUTextureView3.label
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline5",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline5);
    GPURenderPassEncoder6.draw(5);
    const GPUCommandBuffer4 = GPUCommandEncoder5.finish();
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader5
    });
    const string34 = GPUComputePipeline3.label
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 3253,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const string35 = GPUQueue1.label
    GPURenderPassEncoder4.end();
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUAdapterInfo6 = GPUAdapter3.info
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 18280472,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus",
        label: "GPUTexture8",
        size: {
            width: 2094,
            height: 688,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["depth24plus"]
    });
    const string36 = GPUQuerySet2.label
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline6",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 99,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const string37 = GPUDevice0.label
    const GPUBindGroupLayout5 = GPUComputePipeline4.getBindGroupLayout(0);
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline7",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 12, typedArray5);
    GPURenderPassEncoder6.end();
    const string38 = GPUComputePipeline2.label
    const string39 = GPURenderPipeline4.label
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture9",
        size: {
            width: 532,
            height: 43,
            depthOrArrayLayers: 31
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const GPUTextureView10 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r16float",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5220972745045913,
                g: 1.4824684859547916,
                b: 0.7872190285618013,
                a: 1.0575341449751934
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView10,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 1977550381,
        occlusionQuerySet: GPUQuerySet5
    });
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer1);
    const GPUSupportedLimits1 = GPUDevice0.limits
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader6
    });
    const string40 = GPUComputePassEncoder5.label
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder6.dispatchWorkgroups(133, 220, 60);
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer1);
    const GPUComputePassEncoder7 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUComputePassEncoder8 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline3);
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray6);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline3.bindGroup",
        layout: GPUComputePipeline3.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder6.dispatchWorkgroups(135, 166, 15);
    const string41 = GPUDevice0.label
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline8",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture10",
        size: {
            width: 444,
            height: 760,
            depthOrArrayLayers: 45
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView11 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgb10a2unorm",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2150227620926095,
                g: 1.9673617304022972,
                b: 0.3767630495338301,
                a: 0.204245290821502
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView11,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 1171992014,
        occlusionQuerySet: GPUQuerySet5
    });
    const string42 = GPUComputePipeline1.label
    const string43 = GPURenderPassEncoder8.label
    const string44 = GPURenderPipeline4.label
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline9",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline9);
    const GPUQueue2 = GPUDevice0.queue
    const boolean3 = GPUAdapter5.isFallbackAdapter
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer1);
    const string45 = GPURenderPipeline4.label
    const GPUSupportedLimits2 = GPUAdapter2.limits
    const GPUTextureView12 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 2,
        format: "r16float",
        label: "GPUTextureView12"
    });
    const GPUSupportedLimits3 = GPUAdapter1.limits
    const GPUSupportedLimits4 = GPUDevice0.limits
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray7);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline2.bindGroup",
        layout: GPUComputePipeline2.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    const GPUQueue3 = GPUDevice0.queue
    const string46 = GPUTextureView12.label
    const string47 = GPUCommandEncoder8.label
    const GPUSupportedFeatures4 = GPUDevice0.features
    GPUComputePassEncoder5.end();
    const GPUTextureView13 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 4,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 3,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView13"
    });
    const string48 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline9);
    GPUQueue1.submit([GPUCommandBuffer3]);
    const string49 = GPUComputePipeline3.label
    const GPUComputePassEncoder9 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const string50 = GPUComputePassEncoder9.label
    const GPUSupportedLimits5 = GPUDevice0.limits
    GPUComputePassEncoder3.end();
    GPUQueue2.submit([GPUCommandBuffer4]);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup1);
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUSupportedFeatures5 = GPUDevice0.features
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray8);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline1.bindGroup",
        layout: GPUComputePipeline1.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPURenderPassEncoder8.end();
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture11",
        size: {
            width: 1656,
            height: 402,
            depthOrArrayLayers: 53
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView14 = GPUTexture11.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5851367316238354,
                g: 1.3951379218287892,
                b: 0.4149950779702356,
                a: 0.8119131031957401
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView14
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 4183883006,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 134201672,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC
    });
    const string51 = GPUQuerySet2.type
    const string52 = GPURenderPassEncoder9.label
    const string53 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUTextureView15 = GPUTexture11.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView15"
    });
    const string54 = GPUQuerySet0.count
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture12",
        size: {
            width: 3310,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUSupportedFeatures6 = GPUAdapter0.features
    const GPUQueue4 = GPUDevice0.queue
    const GPUBindGroupLayout6 = GPUComputePipeline5.getBindGroupLayout(0);
    const GPUSupportedFeatures7 = GPUAdapter2.features
    const GPUQueue5 = GPUDevice0.queue
    GPUQueue1.submit([GPUCommandBuffer2]);
    const GPUSupportedFeatures8 = GPUAdapter3.features
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray9);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline1.bindGroup",
        layout: GPUComputePipeline1.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    const GPUBindGroupLayout7 = GPUComputePipeline5.getBindGroupLayout(0);
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const string55 = GPUCommandEncoder10.label
    const string56 = GPUComputePassEncoder7.label
    const GPUSupportedFeatures9 = GPUDevice0.features
    const GPUTextureView16 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView16"
    });
    const string57 = GPUQueue3.label
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray10);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline0.bindGroup",
        layout: GPUComputePipeline0.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline3);
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus-stencil8",
        label: "GPUTexture13",
        size: {
            width: 3631,
            height: 1264,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["depth24plus-stencil8"]
    });
    const string58 = GPUComputePipeline3.label
    const string59 = GPURenderPipeline4.label
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder9.draw(9);
    const GPUComputePassEncoder10 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    GPURenderPassEncoder7.draw(9);
    const string60 = GPURenderPipeline8.label
    const GPUSupportedLimits6 = GPUDevice0.limits
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 2403,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const string61 = GPUQuerySet1.count
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "zero"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline10",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r32float",
        label: "GPUTexture14",
        size: {
            width: 1146,
            height: 2805,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["r32float"]
    });
    const GPUTextureView17 = GPUTexture14.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 11,
        baseArrayLayer: 7,
        mipLevelCount: 2,
        baseMipLevel: 2,
        format: "r32float",
        label: "GPUTextureView17"
    });
    const GPUTextureView18 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 9,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView18"
    });
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 130,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPUBindGroupLayout8 = GPUComputePipeline4.getBindGroupLayout(0);
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline11",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    const string62 = GPUTextureView4.label
    const GPUSupportedLimits7 = GPUDevice0.limits
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline1);
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray11);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline6.bindGroup",
        layout: GPUComputePipeline6.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    const GPUSupportedLimits8 = GPUDevice0.limits
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const string63 = GPUComputePipeline3.label
    const string64 = GPURenderPassEncoder7.label
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder9.dispatchWorkgroups(144, 95, 48);
    const string65 = GPUComputePipeline4.label
    const string66 = GPUComputePassEncoder8.label
    const GPUAdapterInfo7 = GPUAdapter1.info
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer1);
    const string67 = GPUQuerySet2.count
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const string68 = GPURenderPipeline1.label
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline4);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline7);
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray12);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline7.bindGroup",
        layout: GPUComputePipeline7.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder7.dispatchWorkgroups(187, 165, 38);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder6.dispatchWorkgroups(190, 179, 29);
    const string69 = GPUComputePassEncoder10.label
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    GPURenderPassEncoder7.draw(1);
    const string70 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder9.end();
    GPUQueue3.writeBuffer(GPUBuffer3, 88115024, typedArray13);
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader7
    });
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string71 = GPUQuerySet6.type
    const string72 = GPUDevice0.label
    const string73 = GPUTextureView17.label
    const GPUSupportedFeatures10 = GPUAdapter1.features
    const string74 = GPUQueue3.label
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer1);
    const string75 = GPUQuerySet3.type
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline5);
    const string76 = GPUTextureView16.label
    const GPUSupportedLimits9 = GPUAdapter3.limits
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    GPURenderPassEncoder9.end();
    const GPUCommandBuffer5 = GPUCommandEncoder11.finish();
    GPUQueue3.submit([GPUCommandBuffer5]);
    const GPUAdapterInfo8 = GPUAdapter9.info
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray14);
    const GPUBindGroup11 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline5.bindGroup",
        layout: GPUComputePipeline5.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline4);
    GPURenderPassEncoder7.end();
    const string77 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures11 = GPUAdapter7.features
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus-stencil8",
        label: "GPUTexture15",
        size: {
            width: 395,
            height: 928,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["depth24plus-stencil8"]
    });
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 141444632,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC
    });
    const string78 = GPUQuerySet6.count
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture16",
        size: {
            width: 996,
            height: 896,
            depthOrArrayLayers: 45
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView19 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView19"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.275773689787453,
                g: 0.3809859721120614,
                b: 1.319930519905888,
                a: 0.519013752189563
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView19
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 2197128797,
        occlusionQuerySet: GPUQuerySet2
    });
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer1);
    const string79 = GPUComputePipeline5.label
    const GPUSupportedLimits10 = GPUAdapter8.limits
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader9
    });
    GPURenderPassEncoder10.end();
    const GPUSupportedFeatures12 = GPUDevice0.features
    const GPUSupportedFeatures13 = GPUDevice0.features
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture17",
        size: {
            width: 632,
            height: 89,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView20 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "r8unorm",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8817089493911157,
                g: 0.16377320120240002,
                b: 1.9299206932538093,
                a: 1.0122474332693583
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView20,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 2406335636,
        occlusionQuerySet: GPUQuerySet4
    });
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline12",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline12);
    GPURenderPassEncoder11.draw(2);
    const GPUBindGroupLayout9 = GPUComputePipeline4.getBindGroupLayout(0);
    const GPUTextureView21 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 1,
        format: "rgba8unorm",
        label: "GPUTextureView21"
    });
    const string80 = GPUQuerySet5.count
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 109854916,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "dst"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline13",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline8);
    const GPUSupportedFeatures14 = GPUAdapter3.features
    const string81 = GPUQuerySet1.count
    GPUQueue2.writeBuffer(GPUBuffer1, 28, typedArray15);
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const GPUTextureView22 = GPUTexture13.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "depth24plus-stencil8",
        label: "GPUTextureView22"
    });
    const GPUSupportedLimits11 = GPUDevice0.limits
    const GPUComputePassEncoder11 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUComputePassEncoder12 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer1);
    const string82 = GPUComputePipeline0.label
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const boolean4 = GPUAdapter7.isFallbackAdapter
    const GPUAdapterInfo9 = GPUAdapter6.info
    const string83 = GPUTextureView7.label
    const string84 = GPUQuerySet1.type
    const GPUBindGroupLayout10 = GPUComputePipeline2.getBindGroupLayout(0);
    GPUComputePassEncoder6.end();
    const GPUCommandBuffer6 = GPUCommandEncoder10.finish();
    const boolean5 = GPUAdapter8.isFallbackAdapter
    const GPUSupportedLimits12 = GPUAdapter4.limits
    const string85 = GPUComputePipeline5.label
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline12);
    const string86 = GPUCommandEncoder14.label
    const string87 = GPUQuerySet5.count
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader10
    });
    const string88 = GPUQuerySet0.count
    const string89 = GPUComputePassEncoder7.label
    GPURenderPassEncoder11.draw(3);
    const string90 = GPUQuerySet6.count
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader11
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer3);
    const GPUSupportedFeatures15 = GPUAdapter9.features
    const boolean6 = GPUAdapter3.isFallbackAdapter
    const string91 = GPUComputePassEncoder10.label
    const string92 = GPURenderPipeline9.label
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline3);
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder10.dispatchWorkgroups(44, 81, 25);
    const GPUSupportedLimits13 = GPUDevice0.limits
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 3514,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const string93 = await navigator.gpu.getPreferredCanvasFormat();
    const string94 = GPURenderPassEncoder11.label
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer1);
    const GPUTextureView23 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 3,
        format: "r16float",
        label: "GPUTextureView23"
    });
    const boolean7 = GPUAdapter10.isFallbackAdapter
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline8);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline1);
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray16);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline9.bindGroup",
        layout: GPUComputePipeline9.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder8.end();
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUSupportedLimits14 = GPUAdapter3.limits
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const string95 = GPUTextureView0.label
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline12);
    const GPUSupportedFeatures16 = GPUDevice0.features
    const GPUComputePassEncoder13 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture18",
        size: {
            width: 938,
            height: 827,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView24 = GPUTexture18.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView24"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder20.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7344372678099997,
                g: 1.6081850130267945,
                b: 1.7605424737793045,
                a: 0.4293578925969035
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView24,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 1209346672,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUTextureView25 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "depth24plus-stencil8",
        label: "GPUTextureView25"
    });
    const GPUBindGroupLayout11 = GPUComputePipeline10.getBindGroupLayout(0);
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture19",
        size: {
            width: 801,
            height: 942,
            depthOrArrayLayers: 57
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16float"]
    });
    const string96 = GPUQuerySet2.type
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline14",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule9
        }
    });
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray17);
    const GPUBindGroup13 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline8.bindGroup",
        layout: GPUComputePipeline8.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup13);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline4);
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 1431,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPUComputePassEncoder14 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const string97 = GPUQuerySet7.label
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 2401,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPUQueue6 = GPUDevice0.queue
    const string98 = GPUQuerySet0.count
    const string99 = GPUQuerySet0.type
    const GPUBindGroupLayout12 = GPUComputePipeline6.getBindGroupLayout(0);
    GPUComputePassEncoder11.end();
    const string100 = GPURenderPassEncoder11.label
    const GPUQueue7 = GPUDevice0.queue
    const GPUSupportedFeatures17 = GPUAdapter3.features
    const GPUTextureView26 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 4,
        format: "bgra8unorm",
        label: "GPUTextureView26"
    });
    GPUQueue2.submit([GPUCommandBuffer6]);
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline15",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule9
        }
    });
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader12
    });
    const GPUBindGroupLayout13 = GPUComputePipeline6.getBindGroupLayout(0);
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader13
    });
    GPURenderPassEncoder11.end();
    const string101 = GPUCommandEncoder2.label
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer3);
    const GPUSupportedLimits15 = GPUAdapter9.limits
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8uint",
        label: "GPUTexture20",
        size: {
            width: 1430,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8uint"]
    });
    const string102 = GPUQuerySet5.type
    GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray18);
    const GPUBindGroup14 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline0.bindGroup",
        layout: GPUComputePipeline0.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture21",
        size: {
            width: 2780,
            height: 3362,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView27 = GPUTexture21.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView27"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3335607607445923,
                g: 1.9468376643165288,
                b: 1.7863520985727732,
                a: 0.28239901911649956
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView27
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 289211512,
        occlusionQuerySet: GPUQuerySet7
    });
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline4);
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray19);
    const GPUBindGroup15 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline4.bindGroup",
        layout: GPUComputePipeline4.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder13.dispatchWorkgroups(8, 144, 42);
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 1519,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    GPUComputePassEncoder10.end();
    const GPUSupportedLimits16 = GPUAdapter0.limits
    const string103 = await navigator.gpu.getPreferredCanvasFormat();
    const string104 = GPURenderPassEncoder12.label
    const string105 = await navigator.gpu.getPreferredCanvasFormat();
    const boolean8 = GPUAdapter5.isFallbackAdapter
    const string106 = GPUComputePassEncoder12.label
    const string107 = GPUQuerySet6.type
    const GPUQueue8 = GPUDevice0.queue
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer3);
    const GPUShaderModule14 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader14
    });
    GPUComputePassEncoder12.end();
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray20);
    const GPUBindGroup16 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline2.bindGroup",
        layout: GPUComputePipeline2.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const GPUSupportedLimits17 = GPUDevice0.limits
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder7.dispatchWorkgroups(84, 252, 25);
    const string108 = GPUQuerySet5.type
    const GPUSupportedLimits18 = GPUAdapter6.limits
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer1);
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture22",
        size: {
            width: 3094,
            height: 1065,
            depthOrArrayLayers: 52
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView28 = GPUTexture22.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView28"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0505894099604085,
                g: 1.7264204973240806,
                b: 0.8256850315091837,
                a: 0.2992607398612508
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView28
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 1165339781,
        occlusionQuerySet: GPUQuerySet6
    });
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer1);
    const GPUSupportedFeatures18 = GPUAdapter8.features
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline6);
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline5);
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUTextureView29 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "depth24plus",
        label: "GPUTextureView29"
    });
    const string109 = GPUTextureView11.label
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 15760216,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM
    });
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 218652564,
        usage: GPUBufferUsage.MAP_WRITE
    });
    GPURenderPassEncoder12.end();
    const string110 = GPUQuerySet6.type
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline15);
    GPURenderPassEncoder14.draw(5);
    GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray21);
    const GPUBindGroup17 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline1.bindGroup",
        layout: GPUComputePipeline1.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer3);
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 1977,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const boolean9 = GPUAdapter10.isFallbackAdapter
    const string111 = GPUComputePassEncoder14.label
    GPUComputePassEncoder13.end();
    GPUComputePassEncoder14.end();
    GPURenderPassEncoder13.end();
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    const GPUAdapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline5);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder7.dispatchWorkgroups(18, 100, 1);
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32float",
        label: "GPUTexture23",
        size: {
            width: 930,
            height: 539,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba32float"]
    });
    const string112 = GPUComputePipeline10.label
    const GPUQueue9 = GPUDevice0.queue
    const string113 = GPUDevice0.label
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUQueue10 = GPUDevice0.queue
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline7);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder7.dispatchWorkgroups(195, 96, 4);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline5);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder7.dispatchWorkgroups(185, 144, 46);
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline5);
    const string114 = GPUDevice0.label
    const string115 = GPUQuerySet4.count
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray22);
    const GPUBindGroup18 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline11.bindGroup",
        layout: GPUComputePipeline11.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer1
            }
        }]
    });
    GPUComputePassEncoder7.end();
    const string116 = GPUTextureView8.label
    const string117 = GPUTextureView2.label
    const string118 = GPUDevice0.label
    const GPUSupportedFeatures19 = GPUDevice0.features
    const GPUAdapter12 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUBindGroupLayout14 = GPUComputePipeline3.getBindGroupLayout(0);
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline5);
    const string119 = GPUQuerySet7.label
    const string120 = GPUQuerySet9.type
    const GPUShaderModule15 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader15
    });
    const GPUQueue11 = GPUDevice0.queue
    const GPUComputePassEncoder15 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    const string121 = GPUComputePassEncoder15.label
    const string122 = GPUQuerySet12.label
    const GPUSupportedFeatures20 = GPUDevice0.features
    GPURenderPassEncoder14.draw(8);
    const GPUSupportedFeatures21 = GPUAdapter2.features
    GPURenderPassEncoder14.end();
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    const GPUComputePassEncoder16 = GPUCommandEncoder22.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    const GPUQueue12 = GPUDevice0.queue
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup15);
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture24",
        size: {
            width: 189,
            height: 181,
            depthOrArrayLayers: 56
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const GPUTextureView30 = GPUTexture24.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView30"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder19.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8300639182950367,
                g: 0.5222565189332606,
                b: 1.6155231356625082,
                a: 1.1775523059734032
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView30,
            depthSlice: 50
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 3902383099,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder15.end();
    const GPUSupportedLimits19 = GPUAdapter3.limits
    GPUQueue10.writeBuffer(GPUBuffer6, 10842396, typedArray23);
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture25",
        size: {
            width: 2094,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r32uint"]
    });
    const string123 = GPUQuerySet6.label
    const GPUAdapterInfo10 = GPUAdapter5.info
    const string124 = GPUQuerySet0.count
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const GPUSupportedFeatures22 = GPUDevice0.features
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture26",
        size: {
            width: 679,
            height: 1005,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView31 = GPUTexture26.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba16float",
        label: "GPUTextureView31"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8507332076897387,
                g: 0.8650689061824992,
                b: 1.659121498753925,
                a: 0.9147910142362927
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView31,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 966098985,
        occlusionQuerySet: GPUQuerySet7
    });
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline5);
    const string125 = GPUDevice0.label
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg11b10ufloat",
        label: "GPUTexture27",
        size: {
            width: 3243,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rg11b10ufloat"]
    });
    const string126 = GPUComputePassEncoder16.label
    const string127 = GPUQuerySet3.label
    const GPUCommandBuffer7 = GPUCommandEncoder14.finish();
    GPUQueue0.writeBuffer(GPUBuffer1, 24, typedArray24);
    const string128 = GPUQueue1.label
    const GPUCommandBuffer8 = GPUCommandEncoder6.finish();
    const string129 = GPURenderPassEncoder16.label
    const string130 = GPUComputePassEncoder15.label
    const GPUTextureView32 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView32"
    });
    const string131 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder16.draw(1);
    const string132 = GPURenderPassEncoder16.label
    const GPUBindGroupLayout15 = GPUComputePipeline13.getBindGroupLayout(0);
    const GPUSupportedFeatures23 = GPUDevice0.features
    const GPURenderPipeline16 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "dst"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline16",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule9
        }
    });
    GPURenderPassEncoder16.end();

}
main().catch(console.error);