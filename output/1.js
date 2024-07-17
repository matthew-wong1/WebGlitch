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
// Seed: 8758754314846937167
const typedArray24 = new Int8Array([-6712, 2193, 6189, -5743, 4604, -5560, 9082, -6630, 7671, 9377, 9105, -235, -4766, -3052, 1143, -7971, 1825, 9238, 3170, 3045, 8108, -6798, -8911, -570, -3800, -5097, 1043, -9799, 3764, 5184, -8896, 5032, 6608, 1309, -2884, 8324, 447, -6933, 8747, 7684, 1641, 5362, -3649, 7615, 9025, 5940, -6616, 3646, -4919, 6611, -6535, -9363, -7209, -1862, 3698, -4370, -7979, 3884, 2965, 1054, 4703, -4275, 1488, 6862, 3599, 4315, -2615, 5254, 3497, 9599, 4015, -5694, -4841, 3200, 4933, 1247, 8994, 904, 1079, 9784, -5832, -5128, -5513, -1357, -3823, 5592, 9111, -8859, 1295, 7839, -926, -6285, 2977, -4201, -4992, 1757, 9790, 377, 7044, -7418, -3566, -8771, 9868, -4726, 5841, 7127, 1200, 2331, 5814, -6330, 9010, 4227, -1597, 1196, -1789, 9730, 9579, 8025, -699, -6306, 5973, -5368, -5181, 8933, 4862, 6087, 6342, 2450, 8882, -3689, -2387, 5069, -3071, 9136, -7379, -1001, 9752, 4955, -2515, 4315, -7835, -7423, -975, 4107, 7005, 764, -5467, -4069, 2087, -5879, 613, -1276, 6605, 5156, 7710, 8093, 2864, -5978, -1402, -5030, -9590, -6048, -4467, 4075, 5444, -844, -4558, -7122, -5624, -7139, 6430, -55, -4875, 6302, -5714, -196, -3706, -5273, -3750, 3666, -6057, 336, 2317, -2684, 6897, -7932, 9207, -6539, 7367, 9283, 8707, -8573, 142, 7024, -8599, -3209, 2702, 3466, -4084, -1612, 7733, -6180, 1528, -3735, -2746, -448, -5419, 2875, 6018, -805, 5526, -3363, 855, -4113, 3593, 6536, 4078, 1352, 132, 3218, -6629, -3400, 4220, 3948, 5057, -5960, 7340, -4001, 1272, -2337, 544, 8904, 6213, -3111, -5666, -8282, -2241, 7379, 2454, 122, 4327, 5476, -5348, -6424, -7232, 8863, -4519, 5612, 2994, 2510, 4962, -3151, 9056, -6404, -8720, 918, 8506, 3274, -6123, -4964, 1695, 3505, 5237, 4890, 1377, 7797, 2986, 4433, 8863, -5175, -7040, -1758, 3288, -3545, 3184, -337, -1062, 8078, 2661, 7054, 3447, 1598, -4071, 1853, 5940, 8259, -7390, -6771, 3679, -3929, 1231, -1821, -2392, -8769, -1205, 4383, -3372, -8447, -2594, 1691, -7741, -2004, 4015, -1652, 4206, -4369, -1805, -5809, 4659, -2788, 6241, -2639, -8740, -840, -1672, 5684, -7733, 2825, -3329, 7955, 9809, 7357, 5231, -7724, 4491, 1037, 4943, 5721, -8329, -6191, 8383, 1515, 5651, -2088, 1982, 8501, -5122, 4376, -6285, 5873, -1975, 60, -3393, -7343])
const typedArray23 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray21 = new Uint8Array([-1662, -5616, 8364, -8331, -9635, -6647, 1181, 7342, -8337, 3079, -8914, -5019, 3549, 6300, 286, 4505, 8656, 3876, 5442, 8041])
const typedArray20 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader11 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader10 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray19 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray18 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray17 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray16 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray15 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray13 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray12 = new Int8Array([3761, -1421, -4465, 9935, 5086, 7556, -3196, -4801, -1970, -323, 9743, 794, -3515, 3662, 2636, -569, -1836, -9106, 687, -8655, 9722, -5588, -3561, -1344, -7412, 3637, -4841, -872, -2191, -5998, 7357, -8285, 7699, -4322, 6114, -6336, 5918, 8190, 4653, 8785, -7636, 7648, -1461, -2581, 2687, -5839, -7936, 7835, 6887, 5301, -2896, -3217, -8391, -9899, -3862, -4278, 3070, 7763, 1668, -8477, -2954, 2328, -7218, 8646, -3846, -7332, -6993, 6165, -2042, 6639, -9931, 7618, -1305, 8491, 8884, -3811, -5924, -25, 5647, 1089, -7127, -4628, -4361, -193, -424, 5318, 4864, -4273, -2518, 3827, 8975, -229, 4673, 6432, -9350, 1327, 8239, 1807, -7690, 6964, 3521, 9255, 632, 4316, 8673, -4486, 1724, 8493, -2983, -671, -9018, 7968, -7183, 2866, 2071, -1264, 2409, 9855, 9958, 4634, -3976, 8603, 6898, -3144, -4295, -3805, 6198, 6238, -7920, 1119, -8706, 9608, 2026, -7381, -8055, 1442, 7295, -3180, -8939, 2958, 5158, -3449, -3109, -5941, 2446, -8929, 4611, 6104, 8549, -5815, 7149, 9263, -2669, -1451, 4698, -508, 7029, -4150, -163, -4693, 516, -1085, -6613, 6982, -7512, 9086, -9582, 2876, -2093, 3119, -4544, 1775, 3075, -5464, -8044, -8571, -6039, 5854, 4254, -3048, -157, -7032, 4623, -4249, -9458, 2385, -9287, 6575, -2366, -9445, 1372, 668, -6992, -1952, -5234, 7411, 1266, 2839, 7866, 467, 9652, -8717, 1089, -1794, -8127, -5342, 4603, 5598, 8420, 5636, 7783, -2902, -253, 8272, 647, -8447, -1939, -3744, -8190, -9667, -478, -2043, 47, -5269, 8660, 8531, -6747, -9394, 9719, 8356, 2096, -9380, -4977, 1538, -2462, -4960, 8127, -7732, -5316, 4251, 2348, -5517, -6099, -974, -1013, 4825, -5018, 969, -4239, 330, 4037, -983, -3761, -8016, -2364, -1591, 5451, -3839, -3728, -1893, -782, -9918, -6951, 8491, 2426, 4334, 8834, 5633, 8474, 1970, 8004, 4667, 9309, 5994, -1703, 2402, 6834, 4073, -1483, -9732, -768, 7755, -8081, -5404, -6508, -8367, 1064, -2782, -3374, -3285, -6335, -3875, -2529, -6651, -6234, 940, 7684, -5185, 4668, 9377, -1266, 799, -6491, -6892, 3144, -1339, 6719, 2683, -8986, 8861, -7973, 4020, 9329, -5888, 9206, 8039, -4002, -9183, -987, 3205, -9030, 1513, 2127, 7775, -3864, 3008, 8057, 2232, -9689, 5348, -568, -8850, -6204, -8585, -4019, 9903, 4997, -9122, 2333, -3567, -4216, 1792, -3350, -159, 1905, -3553, -1065, 4968, -7320, -4459, -5190, -1759, -3248, -1700, 9385, -9744, -1866, -642, -713, 1971, -2418, 3311, -4856, -8514, -5429, 8321, 9999, 5561, -5659, 1376, -4490, 8705, -2531, 8189, -5121, -8427, -2225, -4419, 7994, 7490])
const shader9 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray11 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader8 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader7 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray9 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray8 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader6 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray7 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader5 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader4 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader3 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray4 = new Int8Array([-508, -4430, 1564, 6609, -2726, -632, 5713, -2546])
const typedArray3 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray2 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray1 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader2 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader0 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const GPUShaderModule0 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader0
    });
    const GPUComputePipeline0 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline0",
        layout: "auto"
    });
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
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
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.dispatchWorkgroups(161, 177, 61);
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg32uint",
        label: "GPUTexture0",
        size: {
            width: 441,
            height: 1283,
            depthOrArrayLayers: 21
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg32uint"]
    });
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture1",
        size: {
            width: 693,
            height: 261,
            depthOrArrayLayers: 48
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView0 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rg8unorm",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 3717,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.443822810608939,
                g: 0.41512197823393393,
                b: 1.1198996158349106,
                a: 0.07074950817004289
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView0,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 3939432449,
        occlusionQuerySet: GPUQuerySet0
    });
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
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.RED
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline0);
    const string0 = GPUQueue0.label
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const GPUQueue1 = GPUDevice0.queue
    const GPUSupportedLimits1 = GPUDevice0.limits
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const string1 = GPURenderPipeline0.label
    const GPUSupportedFeatures0 = GPUDevice0.features
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline1);
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray1);
    const GPUBindGroup1 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder1.dispatchWorkgroups(166, 10, 15);
    const GPUSupportedFeatures1 = GPUAdapter0.features
    const boolean0 = GPUAdapter0.isFallbackAdapter
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 1849,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPUSupportedLimits2 = GPUAdapter0.limits
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 1282,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPUSupportedFeatures2 = GPUDevice0.features
    const GPUQueue2 = GPUDevice0.queue
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const string2 = GPUQuerySet0.count
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 204929580,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC
    });
    const GPUSupportedLimits3 = GPUAdapter0.limits
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline0);
    const string3 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder0.end();
    const GPUCommandBuffer1 = GPUCommandEncoder1.finish();
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 994,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture2",
        size: {
            width: 2652,
            height: 3466,
            depthOrArrayLayers: 45
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const GPUTextureView1 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8223060108481657,
                g: 0.17374850768264594,
                b: 1.3856149240161482,
                a: 1.7189858799595974
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView1
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 2108073271,
        occlusionQuerySet: GPUQuerySet2
    });
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray2);
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
    const GPUSupportedLimits4 = GPUAdapter0.limits
    const string4 = GPURenderPipeline0.label
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 38,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const string5 = GPUComputePassEncoder1.label
    const string6 = GPUQuerySet4.type
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const GPUBindGroupLayout1 = GPUComputePipeline0.getBindGroupLayout(0);
    const string7 = GPUComputePipeline1.label
    GPURenderPassEncoder1.end();
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture3",
        size: {
            width: 132,
            height: 455,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView2 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4548354262023788,
                g: 1.5387864969897185,
                b: 1.2234454510936716,
                a: 1.7427212370495166
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView2,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 3851736270,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedLimits5 = GPUDevice0.limits
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const string8 = GPUQuerySet0.count
    const string9 = await navigator.gpu.getPreferredCanvasFormat();
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 1915,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const string10 = GPUTextureView0.label
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray3);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
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
    GPUQueue0.writeBuffer(GPUBuffer1, 8, typedArray4);
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer2);
    const string11 = GPUQueue0.label
    const string12 = GPUDevice0.label
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline1",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline1);
    const GPUCommandBuffer2 = GPUCommandEncoder4.finish();
    const GPUBindGroupLayout2 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUQueue3 = GPUDevice0.queue
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader3
    });
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 3478,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPUSupportedFeatures3 = GPUDevice0.features
    const string13 = GPUDevice0.label
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader4
    });
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 90764972,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX
    });
    const GPUTextureView3 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView3"
    });
    const GPUSupportedFeatures4 = GPUAdapter0.features
    const string14 = GPURenderPipeline0.label
    const boolean3 = GPUAdapter0.isFallbackAdapter
    const GPUSupportedLimits6 = GPUAdapter0.limits
    const string15 = GPUQuerySet0.count
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader5
    });
    const string16 = GPUQuerySet2.type
    const GPUComputePassEncoder2 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string17 = GPUTextureView3.label
    const GPUSupportedFeatures5 = GPUAdapter0.features
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer3);
    const string18 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTextureView4 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView4"
    });
    const GPUSupportedLimits7 = GPUDevice0.limits
    const string19 = GPUQuerySet6.type
    const string20 = GPUTextureView0.label
    const string21 = GPURenderPassEncoder2.label
    const GPUSupportedLimits8 = GPUDevice0.limits
    const GPUBindGroupLayout3 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const GPUSupportedFeatures6 = GPUDevice0.features
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "GPUTexture4",
        size: {
            width: 105,
            height: 294,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8snorm"]
    });
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer2);
    const string22 = GPUQuerySet3.count
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer3);
    const string23 = GPUDevice0.label
    const string24 = GPURenderPipeline1.label
    GPUQueue1.submit([GPUCommandBuffer2]);
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const string25 = await navigator.gpu.getPreferredCanvasFormat();
    const string26 = GPUTextureView3.label
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture5",
        size: {
            width: 482,
            height: 801,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView5 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView5"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.042518343499691635,
                g: 1.792212402032847,
                b: 0.18328317414912876,
                a: 0.7946631363717112
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView5,
            depthSlice: 24
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 2550687891,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUSupportedFeatures7 = GPUAdapter2.features
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "GPUTexture6",
        size: {
            width: 3346,
            height: 2787,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView6 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9059044474848199,
                g: 1.5092821930931888,
                b: 1.8547633761384077,
                a: 1.7186595357662293
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView6
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 2996691867,
        occlusionQuerySet: GPUQuerySet2
    });
    const string27 = GPURenderPassEncoder3.label
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline2",
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
            module: GPUShaderModule2
        }
    });
    const string28 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures8 = GPUDevice0.features
    const string29 = GPUCommandEncoder6.label
    const string30 = GPURenderPassEncoder2.label
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
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
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline3",
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
            module: GPUShaderModule2
        }
    });
    const GPUTextureView7 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 9,
        baseMipLevel: 0,
        format: "rg8snorm",
        label: "GPUTextureView7"
    });
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const string31 = GPUQuerySet0.type
    const GPUSupportedFeatures9 = GPUAdapter1.features
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
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
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "zero"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline4",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline4);
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer3);
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline5",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPUQueue1.submit([GPUCommandBuffer1]);
    const string32 = GPUTextureView4.label
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer3);
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 195187980,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer3);
    GPURenderPassEncoder2.end();
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const boolean4 = GPUAdapter1.isFallbackAdapter
    const GPUSupportedLimits9 = GPUAdapter0.limits
    const string33 = GPUCommandEncoder2.label
    const string34 = GPUTextureView5.label
    const GPUTextureView8 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 7,
        baseMipLevel: 0,
        format: "rg32uint",
        label: "GPUTextureView8"
    });
    const string35 = GPURenderPipeline3.label
    const string36 = GPUComputePassEncoder3.label
    GPUComputePassEncoder3.end();
    const GPUCommandBuffer3 = GPUCommandEncoder6.finish();
    GPUQueue3.submit([GPUCommandBuffer3]);
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg32float",
        label: "GPUTexture7",
        size: {
            width: 2941,
            height: 2324,
            depthOrArrayLayers: 8
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg32float"]
    });
    GPUComputePassEncoder1.end();
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 312,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline4);
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture8",
        size: {
            width: 1496,
            height: 3925,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView9 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView9"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4453663565039667,
                g: 1.3508448190808489,
                b: 0.6591747647379349,
                a: 1.8414579668754494
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView9
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 606793614,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline5);
    GPURenderPassEncoder5.draw(2);
    const boolean5 = GPUAdapter1.isFallbackAdapter
    GPUComputePassEncoder2.end();
    const GPUCommandBuffer4 = GPUCommandEncoder5.finish();
    const GPUQueue4 = GPUDevice0.queue
    GPURenderPassEncoder5.end();
    const GPUCommandBuffer5 = GPUCommandEncoder2.finish();
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray5);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    const string37 = GPUComputePipeline2.label
    const string38 = GPUQuerySet2.label
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline4);
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray6);
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
    const GPUComputePassEncoder4 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    const string39 = GPUComputePassEncoder4.label
    const string40 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const GPUAdapterInfo0 = GPUAdapter1.info
    const string41 = GPUQuerySet3.type
    const GPUSupportedLimits10 = GPUAdapter2.limits
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline6",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 235,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUSupportedLimits11 = GPUDevice0.limits
    const string42 = GPUComputePassEncoder4.label
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline2);
    const GPUQueue5 = GPUDevice0.queue
    const boolean6 = GPUAdapter0.isFallbackAdapter
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture9",
        size: {
            width: 835,
            height: 159,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView10 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg8unorm",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8423208308312105,
                g: 0.7243241774511129,
                b: 1.549392079220492,
                a: 1.0707018780509858
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView10,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 1162836019,
        occlusionQuerySet: GPUQuerySet2
    });
    const boolean7 = GPUAdapter0.isFallbackAdapter
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 2320,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture10",
        size: {
            width: 717,
            height: 304,
            depthOrArrayLayers: 5
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView11 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5708013609236646,
                g: 1.079208254508387,
                b: 0.16224775064369945,
                a: 1.8211252097362158
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView11,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 363348099,
        occlusionQuerySet: GPUQuerySet9
    });
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder6.draw(6);
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray7);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
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
    const GPUSupportedFeatures10 = GPUAdapter2.features
    const string43 = GPUQuerySet2.count
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer2);
    const GPUQueue6 = GPUDevice0.queue
    const string44 = GPURenderPassEncoder6.label
    const string45 = GPUQuerySet9.type
    const boolean8 = GPUAdapter1.isFallbackAdapter
    const GPUSupportedLimits12 = GPUDevice0.limits
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer3);
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 709,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPUAdapterInfo1 = GPUAdapter2.info
    const string46 = GPURenderPassEncoder3.label
    const GPUBindGroupLayout4 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16uint",
        label: "GPUTexture11",
        size: {
            width: 460,
            height: 344,
            depthOrArrayLayers: 56
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16uint"]
    });
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline8",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline8);
    GPURenderPassEncoder7.draw(7);
    GPUComputePassEncoder4.end();
    const boolean9 = GPUAdapter0.isFallbackAdapter
    const GPUSupportedFeatures11 = GPUAdapter0.features
    const GPUComputePassEncoder5 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string47 = GPUCommandEncoder10.label
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 601,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const string48 = GPURenderPassEncoder7.label
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader6
    });
    const string49 = GPUQuerySet1.count
    GPUQueue4.submit([GPUCommandBuffer4]);
    const GPUSupportedLimits13 = GPUDevice0.limits
    const string50 = GPUComputePassEncoder5.label
    const string51 = GPUQuerySet5.label
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUSupportedFeatures12 = GPUDevice0.features
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 1622,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline9",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const string52 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline4);
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray8);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder5.dispatchWorkgroups(244, 148, 52);
    GPUComputePassEncoder5.end();
    const GPUCommandBuffer6 = GPUCommandEncoder3.finish();
    const string53 = GPUQuerySet7.type
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUComputePassEncoder6 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder6.dispatchWorkgroups(125, 186, 42);
    GPUQueue6.submit([GPUCommandBuffer5]);
    const string54 = GPUComputePipeline5.label
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16uint",
        label: "GPUTexture12",
        size: {
            width: 3155,
            height: 1164,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba16uint"]
    });
    const string55 = await navigator.gpu.getPreferredCanvasFormat();
    const string56 = GPUQuerySet2.label
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUComputePassEncoder7 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const string57 = GPUQuerySet5.type
    const GPUAdapterInfo2 = GPUAdapter1.info
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const string58 = GPUQuerySet1.type
    const GPUSupportedLimits14 = GPUDevice0.limits
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const string59 = GPUQuerySet2.count
    const string60 = GPUQuerySet12.type
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder6.end();
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray9);
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
    const GPUComputePassEncoder8 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture13",
        size: {
            width: 771,
            height: 3534,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView12 = GPUTexture13.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView12"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9134085035128483,
                g: 1.820051404966374,
                b: 1.2385232827633417,
                a: 0.8263770071773437
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView12
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 1484377182,
        occlusionQuerySet: GPUQuerySet6
    });
    const string61 = GPURenderPassEncoder4.label
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const string62 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder7.draw(9);
    const string63 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader7
    });
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    const string64 = GPUQuerySet0.count
    const string65 = GPUQuerySet9.count
    GPUComputePassEncoder8.end();
    const string66 = GPUTextureView11.label
    const string67 = GPURenderPassEncoder4.label
    const GPUQueue7 = GPUDevice0.queue
    const string68 = GPUQuerySet5.label
    const GPUSupportedLimits15 = GPUDevice0.limits
    const GPUSupportedLimits16 = GPUDevice0.limits
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUBindGroupLayout5 = GPUComputePipeline4.getBindGroupLayout(0);
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer3);
    const GPUSupportedFeatures13 = GPUDevice0.features
    const string69 = GPURenderPassEncoder3.label
    const GPUQueue8 = GPUDevice0.queue
    GPUQueue2.submit([GPUCommandBuffer6]);
    const GPUQueue9 = GPUDevice0.queue
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline3);
    GPUQueue9.writeBuffer(GPUBuffer0, 0, typedArray10);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder7.dispatchWorkgroups(222, 115, 13);
    GPURenderPassEncoder3.end();
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 3006,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer2);
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 40902868,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE
    });
    const boolean10 = GPUAdapter7.isFallbackAdapter
    const GPUSupportedLimits17 = GPUDevice0.limits
    const GPUSupportedFeatures14 = GPUDevice0.features
    const string70 = GPUComputePassEncoder7.label
    const GPUTextureView13 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rg32float",
        label: "GPUTextureView13"
    });
    const string71 = GPUComputePassEncoder6.label
    const string72 = GPUComputePassEncoder7.label
    const string73 = GPUQuerySet3.type
    const GPUSupportedLimits18 = GPUDevice0.limits
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline4);
    const string74 = GPUComputePassEncoder7.label
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const string75 = GPUQuerySet4.count
    const string76 = GPURenderPassEncoder4.label
    const string77 = GPUQuerySet13.label
    GPURenderPassEncoder7.end();
    const GPUCommandBuffer7 = GPUCommandEncoder10.finish();
    GPUQueue1.submit([GPUCommandBuffer7]);
    const GPUQueue10 = GPUDevice0.queue
    const string78 = GPUQuerySet13.label
    const GPUSupportedFeatures15 = GPUDevice0.features
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline7);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup7);
    const GPUBindGroupLayout6 = GPUComputePipeline5.getBindGroupLayout(0);
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 329,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const GPUQueue11 = GPUDevice0.queue
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer3);
    const string79 = GPURenderPipeline2.label
    const string80 = GPUComputePipeline4.label
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUQueue12 = GPUDevice0.queue
    const GPUCommandBuffer8 = GPUCommandEncoder13.finish();
    GPUQueue6.submit([GPUCommandBuffer8]);
    const string81 = GPUDevice0.label
    const boolean11 = GPUAdapter6.isFallbackAdapter
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray11);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
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
    const GPUSupportedFeatures16 = GPUAdapter0.features
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline10",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline10);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup9);
    const string82 = GPUDevice0.label
    const string83 = GPUQueue7.label
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const string84 = GPUTextureView3.label
    const GPUSupportedFeatures17 = GPUAdapter4.features
    GPUComputePassEncoder6.end();
    const GPUAdapterInfo3 = GPUAdapter1.info
    const string85 = GPURenderPassEncoder8.label
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer3);
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures18 = GPUDevice0.features
    const string86 = GPUQuerySet8.type
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "GPUTexture14",
        size: {
            width: 1145,
            height: 3422,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView14 = GPUTexture14.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder14.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7712121262583271,
                g: 1.605406986497999,
                b: 0.2789584645677168,
                a: 0.9617911844854974
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView14
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 3836778659,
        occlusionQuerySet: GPUQuerySet12
    });
    const GPUSupportedLimits19 = GPUAdapter4.limits
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline7);
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 3943632,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUTextureView15 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 13,
        baseArrayLayer: 7,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rgba16uint",
        label: "GPUTextureView15"
    });
    const GPUAdapterInfo4 = GPUAdapter3.info
    const GPUComputePassEncoder9 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader9
    });
    const string87 = GPURenderPassEncoder4.label
    const GPUTextureView16 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 5,
        format: "rg16uint",
        label: "GPUTextureView16"
    });
    GPURenderPassEncoder4.draw(3);
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 86876628,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT
    });
    const string88 = GPUComputePipeline7.label
    const string89 = GPUTextureView0.label
    const string90 = GPUDevice0.label
    const string91 = GPUQueue9.label
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup3);
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer3);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder7.dispatchWorkgroups(28, 143, 25);
    const string92 = GPUQueue8.label
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUAdapterInfo5 = GPUAdapter4.info
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline6);
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    GPUComputePassEncoder7.end();
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline10);
    const string93 = GPUDevice0.label
    GPUQueue1.writeBuffer(GPUBuffer6, 668124, typedArray12);
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedFeatures19 = GPUDevice0.features
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray13);
    const GPUBindGroup11 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline8);
    GPUQueue8.writeBuffer(GPUBuffer0, 0, typedArray14);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup12);
    GPUComputePassEncoder9.dispatchWorkgroups(201, 155, 18);
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 212576484,
        usage: GPUBufferUsage.STORAGE
    });
    const GPUSupportedLimits20 = GPUAdapter3.limits
    GPUQueue10.writeBuffer(GPUBuffer0, 0, typedArray15);
    const GPUBindGroup13 = GPUDevice0.createBindGroup({
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
    const GPUQuerySet15 = GPUDevice0.createQuerySet({
        count: 1838,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    const string94 = GPUComputePassEncoder9.label
    const boolean12 = GPUAdapter4.isFallbackAdapter
    const string95 = GPURenderPipeline4.label
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray16);
    const GPUBindGroup14 = GPUDevice0.createBindGroup({
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
    GPURenderPassEncoder9.end();
    const GPUCommandBuffer9 = GPUCommandEncoder14.finish();
    GPUQueue7.submit([GPUCommandBuffer9]);
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8uint",
        label: "GPUTexture15",
        size: {
            width: 2419,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8uint"]
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer2);
    const string96 = GPURenderPassEncoder8.label
    const string97 = GPUQueue11.label
    const string98 = GPUQueue2.label
    const string99 = GPURenderPassEncoder8.label
    const string100 = GPUComputePassEncoder9.label
    GPURenderPassEncoder8.end();
    const GPUCommandBuffer10 = GPUCommandEncoder9.finish();
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup12);
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline4);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder9.dispatchWorkgroups(91, 55, 2);
    const GPUQueue13 = GPUDevice0.queue
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUQueue12.submit([GPUCommandBuffer10]);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup7);
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture16",
        size: {
            width: 802,
            height: 1123,
            depthOrArrayLayers: 52
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView17 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4057736304270012,
                g: 1.6078129575682896,
                b: 0.2907827579586042,
                a: 0.10895948435271241
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 1536269710,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture17",
        size: {
            width: 181,
            height: 976,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView18 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.17382882975652558,
                g: 0.6136894125376431,
                b: 1.648179954637039,
                a: 0.7351193095849606
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18,
            depthSlice: 24
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 890182020,
        occlusionQuerySet: GPUQuerySet12
    });
    const GPUBindGroupLayout7 = GPUComputePipeline8.getBindGroupLayout(0);
    const string101 = GPUTextureView17.label
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture18",
        size: {
            width: 817,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture19",
        size: {
            width: 893,
            height: 764,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView19 = GPUTexture19.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg8unorm",
        label: "GPUTextureView19"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.05331398050707148,
                g: 0.3046872442028159,
                b: 1.7320930831238925,
                a: 1.0855834197236
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView19,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 4114776468,
        occlusionQuerySet: GPUQuerySet14
    });
    const string102 = GPURenderPipeline1.label
    GPURenderPassEncoder11.end();
    const GPUCommandBuffer11 = GPUCommandEncoder16.finish();
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "constant"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline11",
        layout: "auto",
        multisample: {
            count: 4
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
    const string103 = GPUDevice0.label
    const string104 = GPUDevice0.label
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline0);
    GPUComputePassEncoder9.end();
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedLimits21 = GPUDevice0.limits
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder4.end();
    const GPUCommandBuffer12 = GPUCommandEncoder8.finish();
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture20",
        size: {
            width: 381,
            height: 940,
            depthOrArrayLayers: 49
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView20 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6229321163672363,
                g: 0.3457116942806586,
                b: 0.8115930547711467,
                a: 0.5808559065593379
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView20,
            depthSlice: 48
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 1363461658,
        occlusionQuerySet: GPUQuerySet13
    });
    const GPUComputePassEncoder10 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline7);
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray17);
    const GPUBindGroup15 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder10.dispatchWorkgroups(213, 99, 14);
    const string105 = GPUComputePassEncoder10.label
    const string106 = GPURenderPassEncoder10.label
    const GPUAdapterInfo6 = GPUAdapter0.info
    const GPUTextureView21 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView21"
    });
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8sint",
        label: "GPUTexture21",
        size: {
            width: 2703,
            height: 1275,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8sint"]
    });
    const string107 = GPUQuerySet5.count
    const string108 = GPUQueue3.label
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline4);
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder10.dispatchWorkgroups(97, 134, 6);
    const string109 = GPUTextureView0.label
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule9
        }
    });
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer3);
    const string110 = GPUTextureView5.label
    const GPUAdapterInfo7 = GPUAdapter3.info
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray18);
    const GPUBindGroup16 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline10);
    const boolean13 = GPUAdapter8.isFallbackAdapter
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUAdapterInfo8 = GPUAdapter3.info
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer2);
    const string111 = GPURenderPassEncoder13.label
    const string112 = GPUComputePassEncoder10.label
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture22",
        size: {
            width: 1365,
            height: 156,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUSupportedFeatures20 = GPUAdapter3.features
    const string113 = GPUDevice0.label
    GPUQueue13.writeBuffer(GPUBuffer0, 0, typedArray19);
    const GPUBindGroup17 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline10.bindGroup",
        layout: GPUComputePipeline10.getBindGroupLayout(0),
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
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup17);
    const GPUAdapterInfo9 = GPUAdapter3.info
    const GPUComputePassEncoder11 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const GPUSupportedLimits22 = GPUAdapter2.limits
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer2);
    const string114 = GPUTextureView0.label
    GPUQueue2.submit([GPUCommandBuffer11]);
    const boolean14 = GPUAdapter1.isFallbackAdapter
    const GPUAdapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUAdapterInfo10 = GPUAdapter3.info
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline13",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule9
        }
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline13);
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: false,
        size: 151609504,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture23",
        size: {
            width: 867,
            height: 578,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView22 = GPUTexture23.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "r8unorm",
        label: "GPUTextureView22"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder20.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.25311554895017974,
                g: 1.9319150569669497,
                b: 0.40131644772110997,
                a: 0.7391468479097822
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView22,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 1258165885,
        occlusionQuerySet: GPUQuerySet15
    });
    const string115 = GPURenderPassEncoder14.label
    const string116 = GPUQuerySet3.type
    const string117 = GPUQueue0.label
    const string118 = GPUQuerySet10.label
    const GPUAdapter12 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture24",
        size: {
            width: 190,
            height: 1484,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView23 = GPUTexture24.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.830090720729016,
                g: 0.9918356266317114,
                b: 0.752409439563676,
                a: 0.6480758177659964
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 3456725681,
        occlusionQuerySet: GPUQuerySet7
    });
    const string119 = GPUQuerySet8.count
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder14.draw(5);
    GPUComputePassEncoder11.end();
    const GPUCommandBuffer13 = GPUCommandEncoder15.finish();
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup17);
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder10.dispatchWorkgroups(92, 174, 24);
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures21 = GPUAdapter3.features
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader10
    });
    const GPUQueue14 = GPUDevice0.queue
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader11
    });
    const string120 = GPUQuerySet1.label
    GPUComputePassEncoder10.end();
    const string121 = GPURenderPassEncoder10.label
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder12 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup12);
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline11);
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray20);
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
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup18);
    GPUComputePassEncoder12.dispatchWorkgroups(231, 3, 33);
    const GPUAdapter13 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPURenderPassEncoder10.draw(9);
    const GPUSupportedLimits23 = GPUAdapter11.limits
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule11,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline14",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule10
        }
    });
    const GPUTextureView24 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView24"
    });
    const GPUSupportedFeatures22 = GPUDevice0.features
    GPUQueue8.submit([GPUCommandBuffer12]);
    const string122 = GPUComputePipeline4.label
    const GPUBindGroupLayout8 = GPUComputePipeline3.getBindGroupLayout(0);
    GPUQueue1.writeBuffer(GPUBuffer0, 12, typedArray21);
    GPUQueue3.submit([GPUCommandBuffer13]);
    const boolean15 = GPUAdapter1.isFallbackAdapter
    const string123 = GPUComputePassEncoder12.label
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture25",
        size: {
            width: 4071,
            height: 518,
            depthOrArrayLayers: 45
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView25 = GPUTexture25.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView25"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder19.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.42619860380120533,
                g: 0.6041347539217004,
                b: 0.9056620335547703,
                a: 0.02292216042414541
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView25
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 3143028877,
        occlusionQuerySet: GPUQuerySet1
    });
    const string124 = GPUCommandEncoder19.label
    const GPUTextureView26 = GPUTexture25.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 25,
        baseArrayLayer: 9,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView26"
    });
    const boolean16 = GPUAdapter9.isFallbackAdapter
    const GPUSupportedFeatures23 = GPUAdapter5.features
    const GPUAdapterInfo11 = GPUAdapter12.info
    const GPUQueue15 = GPUDevice0.queue
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUComputePassEncoder13 = GPUCommandEncoder21.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const string125 = GPURenderPipeline5.label
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray22);
    const GPUBindGroup19 = GPUDevice0.createBindGroup({
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
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray23);
    const GPUBindGroup20 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline10.bindGroup",
        layout: GPUComputePipeline10.getBindGroupLayout(0),
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
    const string126 = GPURenderPipeline3.label
    const string127 = GPUComputePassEncoder13.label
    const GPUSupportedLimits24 = GPUDevice0.limits
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer9);
    const string128 = GPUQuerySet15.count
    const GPUSupportedLimits25 = GPUDevice0.limits
    GPUComputePassEncoder13.end();
    const GPUCommandBuffer14 = GPUCommandEncoder21.finish();
    GPUQueue5.writeBuffer(GPUBuffer3, 53654964, typedArray24);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup18);
    GPURenderPassEncoder15.end();
    const string129 = GPUCommandEncoder19.label
    const string130 = GPUComputePipeline8.label
    const GPUBuffer10 = GPUDevice0.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: true,
        size: 90958664,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const string131 = GPURenderPassEncoder12.label
    const string132 = GPUQueue1.label
    const string133 = GPUQuerySet6.type
    const GPUSupportedFeatures24 = GPUAdapter6.features
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline15",
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
            module: GPUShaderModule9
        }
    });
    GPUQueue7.submit([GPUCommandBuffer14]);
    const string134 = GPUQuerySet5.label
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline15);
    const GPURenderPipeline16 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline16",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup18);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline4);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder12.dispatchWorkgroups(21, 65, 42);
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder12.end();
    const string135 = GPUQuerySet1.count
    const GPUComputePassEncoder14 = GPUCommandEncoder22.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const GPUBindGroupLayout9 = GPUComputePipeline6.getBindGroupLayout(0);
    GPURenderPassEncoder14.end();

}
main().catch(console.error);