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
const typedArray22 = new Float32Array([7764, -5095, -2762, -4991, 7834, -9721, -9863, 2495, 280, 2833, 2553, 1361, -7179, 8702, -9546, 1562, -6154, 2301, 7545, -3965, -5138, 692, 6966, -5028, -4689, 7513, -4899, -1421, 8247, -8135, 9102, 8554, 4329, 9744, 635, -2049, 2461, 7034, -9298, -7609, 7440, 6181, -5964, 9510, 418, 4341, -1835, -9357, -5293, 9392, 4130, -6436, -3808, 4289, -9293, 613, 4336, -3575, -3610, -1926, -2859, -8561, 827, 2888, 4334, 1353, 9999, 8043, 7074, 9478, 822, -3855, 0, -9677, -9298, -3039, -5283, -8091, 814, -3558, -6764, 915, -6139, -1592, 4489, 3994, 1819, -4646, 2300, 5830, 9797, 755, 4032, -2495, 320, 4024, 9757, 1520, -101, 1369, 5127, -6554, 633, 3758, 8179, 391, 257, 2903, 2835, 6592, -9849, -3020, 6774, 5472, -5411, -5815, 1816, -2404, 3405, -2987, -2956, -4116, -8457, -247, 7093, -4474, -3247, -7030, 4626, -3936, 6315, -8282, -3467, -7774, -4481, 475, -9599, 2964, 4754, 3824, 6788, 6328, 863, 4780, -9644, 1935, -9412, 8771, 5416, 2783, -9445, 3830, 6120, -3071, 1412, 5595, -8145, -9138, -361, 8582, 5597, -7768, 9788, -3775, -4373, 3915, -5875, -724, -2039, -5171, 5551, -1222, -2884, -7379, -166, 75, -1489, 1531, -7962, -4325, 6807, 5920, -3637, 20, 3903, -9199, -2169, 204, -1375, -6009, -1740, -2024, -5788, 7032, -9070, 2205, -4233, 3876, -5362, -1049, -5463, 1911, 4052, -15, 3568, 5682, 6638, 3512, 9080, 7935, 9534, 6295, -5835, 6486, -1368, 9587, 2084, -6171, 2592, -2480, 6361, 858, 7573, -6683, -6614, -9806, 7376, 2888, -2429, -4464, 3741, -4541, -3117, 3950, -3842, -9153, 1666, 1101, -5689, 2055, -941, 741, -1719, 6727, -391, 8587, -8743, -5087, 7464, -6622, 5659, -4388, -2535, -2547, 4511, 6799, -6980, 8560, -2976, 2707, 8909, 7188, 7553, -4855, -4504, -9245, -9138, 6517, 7969, -992, 4628, -2815, -310, -4440, 8497, 3118, -3741, -8162, -8820, 8748, -8750, 1424, -6440, -5529, 5544, 8362, -408, 2213, -6672, -499, 6452, -3401, -5429, -2158, 1761, -1555, -6347, -3229, 3958, -6492, -9253, -9437, 7840, 8620, 4952, 5155, -4752, -38])
const typedArray21 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray20 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray19 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader14 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray18 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader13 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray17 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray16 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray15 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader12 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray14 = new Float32Array([3474, -4170, -5288, -6661, 1917, 3985, -7964, 1575, -3038, -8398, -9385, 3132, 4125, 8550, -7620, 5381, -144, 2346, 3793, -3757, -4541, 4422, -9521, -8912, -508, -7773, 6254, 7338, 8449, 5931, 9619, -8609, 4245, 6336, 822, 8512, 3543, -2727, -5183, 525, -4958, -3293, 3410, -412, 2470, 72, 3042, 7250, -9303, -4149, -7029, 5919, -2315, -4562, 2444, 8017, 9432, 1603, -2230, 4452, 8195, -3663, -8196, -293, 778, 6673, 4739, 9967, 6316, 248, -6594, -9475, -1673, -2452, -5798, -4678, 1796, -1036, -7879, -2090, 6372, 6941, -9970, -516, -9861, 1449, 8866, -6441, 7519, -364, 5492, 5554, -2358, -9616, 3003, 3589, 3833])
const typedArray13 = new Float32Array([3737, 8927, -6849, -3285, 5466, -5011, -4581, -3228, -1372, 6993, -6514, 4734, -1544, -7478, 2975, 7453, 1125, 1080, -3275, 8599, 5411, 7761, 9238, -139, -6251, -1635, -4052, 3300, 6025, -4412, 3030, -5151, -1393, -7064, 1228, -3596, 5174, 2540, -3590, -2249, 9437, 5423, 3818, -2799, 3296, -8666, 3162, 3201, 1664, 9398, -6892, 7613, -9933, -3160, 3944, 8918, -2483, 9323, -1918, 5688, -2378, 8916, 2325, -5448, 7889, -8918, 4342, 9931, 5469, -4711, -8864, -3542, -5789, 5124, 4654, -6512, 6241, 5138, -1313, -5843, -9571, 7559, -8235, 2498, 3465, 2223, -7040, 6468, 3104, -904, 5276, 2964, -6694, -1913, -2590, -4970, -3803, 3503, -7333, -1662, -7244, -452, -8851, 4866, -3680, -7312, 6083, 716, 8315, 1021, 6302, 9993])
const typedArray12 = new Uint8Array([-5448, 4481, -9121, -3618, 7725, -4684, 2950, -1819, 3436, -1958, 2456, -647, 5256, -5317, 7046, -9443, -6348, 38, 185, -7575, -8729, 6939, -5083, 3254, -9812, -3738, -8623, 2850, 5669, -1269, -4552, 6073, -2064, -1783, 5940, 9944, -1843, 3293, -4600, 3304, -419, -557, -1645, 8267, 9176, 9497, -1860, -4807, 8029, 9712, -9144, -5824, 2618, 2647, 3018, -4926, -5254, -7036, -973, 2010, -5398, -7914, -1449, 4670, 9480, 805, 315, 552, -8095, -51, 949, 8192, -701, 7653, 2000, 9406, -632, -9491, 3142, -4649, -2160, 7611, -9878, -3647, 1213, 7269, -1024, 6034, -9140, 517, 6497, 5171, 1729, 8739, -8204, 1014, 123, -7641, -4142, 9303, -5896, 9565, -9744, -3201, -3201, -1861, -4813, 2498, 9890, -9450, -7988, -2150, -3406, 1403, 7743, -3216, -1631, 664, 1867, -1888, -242, -710, -2230, 9063, -494, 6889, -8762, 690, 9468, 3537, -5558, 9289, 1562, 6963, 2251, 8605, 902, 7194, 3011, -5112, 5618, 1254, -3079, 9335, -591, 4825, 2303, 7154, -1285, -3944, 6714, 293, -3834, -2000, -4029, 7577, 981, -4865, 6773, -3339, -7955, -7770, 1102, -5344, 6470, 9674, 3387, -634, -9150, -8981, 247, -1780, 3367, 485, -5611, -5317, 5810, 1085, 6777, 8875, -3177, 5796, -5931, -4059, 6218, -2276, 756, 8606, 9607, 2426, -6583, -8642, 1708, 8253, 1263, -7239, -6666, 3054, -6008, 4136, 7875, 6477, 6677, -2308, -8733, 3136, 4722, 2028, -6909, 5748, 2486, 9594, -5618, -9805, -422, -6762, 42, -7670, -6884, -1332, -9082, -9201, -2119, 2928, -7029, -2135, -2584, -4089, -5536, 1386, -5040, -4711, 2715, 1147, -2409, 7586, -4053, 5282, -4109, -6335, 2339, -5995, 297, 4774, -4664, 4091, -3187, -8536, -5360, 7887, -9849, -704, -7623, 1366, 1125, -5981, 490, -3242, 6411, 9693, -4123, -859, 8045, -5088, -8547, 8760, -7000, -6676, -2709, -4580, -6453, 794, -8706, 9774, 3710, -88, -9595, 6471, 95, -6867, -6234, 9643, 3069, -2280, 1353, -8095, -2866, 4734, 9441, -3640, -5214, -5161, -5680, 9852, 3952, 4996, -5249, 5120, 5759, 6318, 4946, -9763, 7575, 6945, -6169, 2883, 5684, 3869, -8326, -4725, -826, 7788, 6933, 7986, 7935, 5588, -2692, -1114, -1152, -3061, -1082, -8841, -1559, 9411, -2721, 6310, 6349, -4301, 9108, -6896, -3707, -2576, 5200, -8589, 7558, -8500, 3483, -3064, 5971, -9244, 4461, 148, 4153, 3034, 5428, 3138, 593, 5476, -6231, 7366, -4350, 4155, 7401, -4361, -7094, 3113, -793, -9300, 5062, 6319, -9627, -5322, 2057, -8894, 1700, -7013, -8917, -7384, -7576, -7298, 8694, -6146, 7861, -4296, 8294, 4922, 8607, -6054, 8518, 4506])
const typedArray11 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader11 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray9 = new Uint8Array([-2268, 7372, -4047, -4539, 2568, 6077, -6522, -5530])
const shader10 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader9 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray8 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader8 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader7 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray7 = new Uint8Array([1252, -248, -2996, -9191, -1091, 9520, 9379, 729, -6812, 985, -2359, -9556, 739, 9114, 6129, 1955, -721, 1539, 52, 9238])
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray5 = new Float32Array([3982, 8435, 5099])
const shader6 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader5 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray4 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray3 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray2 = new Float32Array([1572])
const shader4 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader3 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray1 = new Float32Array([8161, -9081, 1651, 7989, -3654])
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader2 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader1 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader0 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture0",
        size: {
            width: 330,
            height: 52,
            depthOrArrayLayers: 12
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg8unorm",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 2138,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5590081771471491,
                g: 1.063622937075396,
                b: 0.4928112218425611,
                a: 0.7833838533305348
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView0,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 3911920919,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUShaderModule0 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader0
    });
    const GPUShaderModule1 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader1
    });
    const GPURenderPipeline0 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline0",
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder0.draw(1);
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const GPUShaderModule2 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader2
    });
    const GPUComputePipeline0 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline0",
        layout: "auto"
    });
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX
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
    GPUComputePassEncoder0.dispatchWorkgroups(147, 155, 9);
    GPUQueue0.writeBuffer(GPUBuffer0, 8, typedArray1);
    const string0 = GPURenderPipeline0.label
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUSupportedFeatures0 = GPUAdapter0.features
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const string1 = GPUTextureView0.label
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader3
    });
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader4
    });
    const GPUBindGroupLayout0 = GPUComputePipeline1.getBindGroupLayout(0);
    const string2 = GPUDevice0.label
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 24, typedArray2);
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const string3 = GPUComputePipeline1.label
    GPUComputePassEncoder0.end();
    const GPUSupportedLimits0 = GPUDevice0.limits
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture1",
        size: {
            width: 668,
            height: 688,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgb10a2unorm",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1656836742453491,
                g: 0.627874333943887,
                b: 0.49348692338657374,
                a: 1.9129575271172932
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView1,
            depthSlice: 6
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 4145958974,
        occlusionQuerySet: GPUQuerySet0
    });
    const string4 = GPURenderPassEncoder1.label
    const string5 = GPURenderPipeline0.label
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const string6 = GPUQueue0.label
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
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
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline1",
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline1);
    const GPUCommandBuffer1 = GPUCommandEncoder1.finish();
    GPUQueue0.submit([GPUCommandBuffer1]);
    const string7 = GPUQuerySet0.label
    const string8 = GPUQueue0.label
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    const string9 = GPUComputePassEncoder1.label
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline1);
    const string10 = GPUDevice0.label
    const string11 = GPUDevice0.label
    const string12 = GPUComputePassEncoder1.label
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 2239,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline1);
    const string13 = GPUQuerySet1.count
    const string14 = GPUQueue0.label
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer0);
    const string15 = GPUQuerySet0.count
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture2",
        size: {
            width: 825,
            height: 290,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView2 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg8unorm",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5608677052992814,
                g: 0.22610296833208876,
                b: 0.015358282112096555,
                a: 1.8942979775184277
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView2,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 461805142,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUSupportedFeatures1 = GPUDevice0.features
    const string16 = GPUQuerySet1.type
    const boolean0 = GPUAdapter0.isFallbackAdapter
    GPURenderPassEncoder1.end();
    const GPUCommandBuffer1 = GPUCommandEncoder2.finish();
    GPUQueue0.submit([GPUCommandBuffer1]);
    const boolean1 = GPUAdapter2.isFallbackAdapter
    const GPUTextureView3 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 7,
        format: "rg8unorm",
        label: "GPUTextureView3"
    });
    const string17 = GPUComputePassEncoder1.label
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder2.draw(10);
    const GPUSupportedFeatures2 = GPUDevice0.features
    const GPUSupportedLimits1 = GPUDevice0.limits
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray3);
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
    const string18 = GPUDevice0.label
    GPURenderPassEncoder2.draw(6);
    const GPUAdapterInfo1 = GPUAdapter1.info
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
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
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline2",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup1);
    const string19 = GPUQuerySet1.label
    const GPUCommandBuffer1 = GPUCommandEncoder5.finish();
    const GPUSupportedFeatures3 = GPUDevice0.features
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer1 = GPUCommandEncoder4.finish();
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture3",
        size: {
            width: 3200,
            height: 1798,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView4 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.38368013102449705,
                g: 0.371220823013634,
                b: 1.0130899768742152,
                a: 0.4426141929099603
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView4
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 1376376038,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer0);
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline1);
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray4);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder1.dispatchWorkgroups(132, 8, 31);
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline3",
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder3.draw(6);
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder1.dispatchWorkgroups(164, 176, 19);
    const boolean2 = GPUAdapter1.isFallbackAdapter
    GPURenderPassEncoder3.draw(8);
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const string20 = GPUCommandEncoder6.label
    const string21 = GPUTextureView4.label
    GPUComputePassEncoder1.end();
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer0);
    const GPUComputePassEncoder2 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup2);
    const GPUSupportedLimits2 = GPUAdapter0.limits
    GPUComputePassEncoder2.end();
    const GPUCommandBuffer2 = GPUCommandEncoder3.finish();
    GPURenderPassEncoder3.end();
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 263391548,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE
    });
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader5
    });
    const string22 = GPURenderPipeline2.label
    const string23 = GPUComputePipeline0.label
    const string24 = GPUCommandEncoder7.label
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture4",
        size: {
            width: 1577,
            height: 246,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView5 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView5"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0851038633663825,
                g: 0.367514315073699,
                b: 1.2862455434100035,
                a: 1.8424523038826628
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView5
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 1443012189,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedFeatures4 = GPUAdapter1.features
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const boolean3 = GPUAdapter1.isFallbackAdapter
    const GPUComputePassEncoder3 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    GPUComputePassEncoder3.end();
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline4);
    const GPUBindGroupLayout1 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUComputePassEncoder4 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUComputePassEncoder4.end();
    const string25 = GPURenderPassEncoder4.label
    const string26 = GPUCommandEncoder6.label
    const GPUComputePassEncoder5 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline2);
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 19162748,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const string27 = GPUQueue0.label
    const string28 = GPUTextureView1.label
    const string29 = GPUComputePassEncoder5.label
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline4);
    const GPUSupportedFeatures5 = GPUDevice0.features
    const string30 = GPUCommandEncoder6.label
    const string31 = await navigator.gpu.getPreferredCanvasFormat();
    const string32 = GPUTextureView5.label
    const string33 = await navigator.gpu.getPreferredCanvasFormat();
    const string34 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8snorm",
        label: "GPUTexture5",
        size: {
            width: 535,
            height: 459,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8snorm"]
    });
    const boolean4 = GPUAdapter2.isFallbackAdapter
    GPUComputePassEncoder5.end();
    const string35 = GPUQuerySet0.label
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader6
    });
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 90896940,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE
    });
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder4.draw(2);
    const GPUBindGroupLayout2 = GPUComputePipeline0.getBindGroupLayout(0);
    GPUQueue0.writeBuffer(GPUBuffer0, 12, typedArray5);
    const GPUAdapterInfo2 = GPUAdapter0.info
    const string36 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder4.draw(6);
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "constant"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline5",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const string37 = GPUDevice0.label
    const string38 = GPURenderPipeline5.label
    const GPUSupportedLimits3 = GPUDevice0.limits
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8uint",
        label: "GPUTexture6",
        size: {
            width: 43,
            height: 1007,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8uint"]
    });
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUAdapterInfo3 = GPUAdapter2.info
    const GPUQueue1 = GPUDevice0.queue
    const string39 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTextureView6 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 9,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView6"
    });
    const string40 = GPUQuerySet1.count
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline6",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const string41 = GPUComputePipeline3.label
    GPURenderPassEncoder4.draw(5);
    const string42 = GPUQuerySet1.count
    const string43 = GPUCommandEncoder9.label
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const string44 = GPURenderPassEncoder4.label
    const GPUComputePassEncoder6 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 174396424,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC
    });
    const string45 = GPUComputePipeline4.label
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 3755,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPUComputePassEncoder7 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    GPUQueue0.submit([GPUCommandBuffer2]);
    const GPUSupportedLimits4 = GPUDevice0.limits
    GPUComputePassEncoder7.end();
    const GPUCommandBuffer3 = GPUCommandEncoder10.finish();
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 105216424,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE
    });
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline3);
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray6);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder6.dispatchWorkgroups(236, 23, 46);
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray7);
    const string46 = GPUComputePipeline3.label
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    const string47 = GPUTextureView3.label
    const GPUSupportedLimits5 = GPUDevice0.limits
    const string48 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures6 = GPUDevice0.features
    GPUQueue1.submit([GPUCommandBuffer1]);
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8snorm",
        label: "GPUTexture7",
        size: {
            width: 1636,
            height: 66,
            depthOrArrayLayers: 19
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8snorm"]
    });
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline7",
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
            module: GPUShaderModule1
        }
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder6.dispatchWorkgroups(118, 107, 64);
    const GPUSupportedFeatures7 = GPUAdapter2.features
    GPUComputePassEncoder6.end();
    const GPUSupportedLimits6 = GPUDevice0.limits
    const string49 = GPUQueue0.label
    GPUQueue1.submit([GPUCommandBuffer1]);
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline4);
    const string50 = GPURenderPipeline1.label
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 2450,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPUSupportedLimits7 = GPUDevice0.limits
    const GPUComputePassEncoder8 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup1);
    const boolean5 = GPUAdapter3.isFallbackAdapter
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline6);
    const string51 = GPURenderPassEncoder4.label
    const GPUBindGroupLayout3 = GPUComputePipeline5.getBindGroupLayout(0);
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const string52 = GPUQuerySet0.label
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 3211,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const string53 = GPUDevice0.label
    const string54 = GPURenderPipeline5.label
    const string55 = GPUTextureView5.label
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader7
    });
    const GPUAdapterInfo4 = GPUAdapter5.info
    const GPUTextureView7 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView7"
    });
    const GPUQueue2 = GPUDevice0.queue
    const GPUSupportedFeatures8 = GPUDevice0.features
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline4);
    const GPUAdapterInfo5 = GPUAdapter3.info
    const string56 = GPURenderPipeline4.label
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    const GPUBindGroupLayout4 = GPUComputePipeline6.getBindGroupLayout(0);
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray8);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline3);
    const GPUSupportedFeatures9 = GPUDevice0.features
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader9
    });
    const GPUComputePassEncoder9 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture8",
        size: {
            width: 1682,
            height: 367,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView8 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "bgra8unorm",
        label: "GPUTextureView8"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7609123250713599,
                g: 0.6800635215078406,
                b: 0.3060351772822516,
                a: 0.43112159156173524
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView8
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 4000254455,
        occlusionQuerySet: GPUQuerySet3
    });
    GPUComputePassEncoder8.end();
    GPUQueue1.submit([GPUCommandBuffer3]);
    const string57 = GPUTextureView6.label
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline0);
    const GPUAdapterInfo6 = GPUAdapter2.info
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader10
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline4);
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8uint",
        label: "GPUTexture9",
        size: {
            width: 173,
            height: 185,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg8uint"]
    });
    const string58 = GPUCommandEncoder7.label
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture10",
        size: {
            width: 1703,
            height: 220,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView9 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView9"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7113691562365962,
                g: 0.07814503158292063,
                b: 1.7135229409331543,
                a: 1.6988515625387026
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView9
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 3803277980,
        occlusionQuerySet: GPUQuerySet4
    });
    const string59 = GPURenderPipeline4.label
    GPUQueue1.writeBuffer(GPUBuffer0, 12, typedArray9);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline4);
    const GPUBindGroupLayout5 = GPUComputePipeline4.getBindGroupLayout(0);
    const GPUTextureView10 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView10"
    });
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture11",
        size: {
            width: 3251,
            height: 3331,
            depthOrArrayLayers: 12
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView11 = GPUTexture11.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2964722955658026,
                g: 1.0799389402678756,
                b: 1.0564536758618128,
                a: 1.9880926928287121
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 4075853933,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPUQueue3 = GPUDevice0.queue
    GPUComputePassEncoder9.end();
    const GPUComputePassEncoder10 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const string60 = GPUComputePassEncoder10.label
    const GPUBindGroupLayout6 = GPUComputePipeline3.getBindGroupLayout(0);
    const string61 = GPURenderPassEncoder6.label
    const GPUBindGroupLayout7 = GPUComputePipeline1.getBindGroupLayout(0);
    GPURenderPassEncoder7.end();
    const GPUCommandBuffer4 = GPUCommandEncoder8.finish();
    GPUQueue1.submit([GPUCommandBuffer4]);
    const string62 = GPUComputePipeline5.label
    const GPUSupportedLimits8 = GPUAdapter5.limits
    const string63 = GPUTextureView9.label
    const string64 = GPURenderPipeline7.label
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 252,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const string65 = GPUTextureView8.label
    const GPUCommandBuffer1 = GPUCommandEncoder9.finish();
    GPUQueue0.submit([GPUCommandBuffer1]);
    const string66 = GPUQueue1.label
    GPURenderPassEncoder6.end();
    const GPUComputePassEncoder11 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const string67 = GPURenderPipeline6.label
    const GPUSupportedFeatures10 = GPUDevice0.features
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 117831540,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM
    });
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2uint",
        label: "GPUTexture12",
        size: {
            width: 1877,
            height: 1979,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2uint"]
    });
    const string68 = GPUQuerySet3.label
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
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
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline8",
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
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline8);
    GPURenderPassEncoder5.draw(9);
    const GPUTextureView12 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 9,
        baseMipLevel: 0,
        format: "rg8uint",
        label: "GPUTextureView12"
    });
    const GPUBindGroupLayout8 = GPUComputePipeline1.getBindGroupLayout(0);
    const boolean6 = GPUAdapter6.isFallbackAdapter
    GPURenderPassEncoder4.draw(7);
    GPURenderPassEncoder4.draw(2);
    const boolean7 = GPUAdapter0.isFallbackAdapter
    const string69 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue4 = GPUDevice0.queue
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 1250,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const string70 = GPUQuerySet3.label
    GPUComputePassEncoder11.end();
    const GPUCommandBuffer1 = GPUCommandEncoder12.finish();
    const GPUSupportedFeatures11 = GPUAdapter2.features
    GPURenderPassEncoder5.end();
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray10);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    const string71 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTextureView13 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView13"
    });
    GPUQueue2.submit([GPUCommandBuffer1]);
    GPUComputePassEncoder10.end();
    const GPUCommandBuffer1 = GPUCommandEncoder11.finish();
    GPUQueue4.submit([GPUCommandBuffer1]);
    const GPUSupportedFeatures12 = GPUDevice0.features
    const GPUAdapterInfo7 = GPUAdapter2.info
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture13",
        size: {
            width: 145,
            height: 496,
            depthOrArrayLayers: 46
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView14 = GPUTexture13.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.14544134064041758,
                g: 1.7145737677702444,
                b: 0.49045868276063276,
                a: 1.9996627225225325
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView14,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 2312209218,
        occlusionQuerySet: GPUQuerySet4
    });
    const GPUSupportedLimits9 = GPUDevice0.limits
    const GPUSupportedFeatures13 = GPUDevice0.features
    const GPUAdapterInfo8 = GPUAdapter4.info
    const string72 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUComputePassEncoder12 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline6);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder12.dispatchWorkgroups(160, 165, 26);
    GPUComputePassEncoder12.end();
    const GPUCommandBuffer1 = GPUCommandEncoder13.finish();
    GPUQueue3.submit([GPUCommandBuffer1]);
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 3189,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader11
    });
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline4);
    const string73 = GPUCommandEncoder6.label
    const string74 = GPURenderPipeline0.label
    const GPUQueue5 = GPUDevice0.queue
    const GPUSupportedLimits10 = GPUDevice0.limits
    const string75 = GPURenderPassEncoder4.label
    const string76 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer4);
    const string77 = GPUCommandEncoder6.label
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUComputePassEncoder13 = GPUCommandEncoder14.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    GPUComputePassEncoder13.end();
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray11);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
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
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    const string78 = GPUCommandEncoder14.label
    const GPUComputePassEncoder14 = GPUCommandEncoder14.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    GPURenderPassEncoder4.draw(7);
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer4);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline2);
    const string79 = GPUTextureView2.label
    GPURenderPassEncoder4.end();
    GPUComputePassEncoder14.end();
    const GPUCommandBuffer1 = GPUCommandEncoder14.finish();
    GPUQueue2.submit([GPUCommandBuffer1]);
    GPUQueue5.writeBuffer(GPUBuffer4, 40493872, typedArray12);
    const string80 = GPUTextureView12.label
    GPUQueue1.writeBuffer(GPUBuffer4, 23130440, typedArray13);
    const boolean8 = GPUAdapter4.isFallbackAdapter
    const GPUQueue6 = GPUDevice0.queue
    const string81 = GPURenderPassEncoder8.label
    const GPUComputePassEncoder15 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline0);
    GPUQueue2.writeBuffer(GPUBuffer4, 47285344, typedArray14);
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 1312,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const string82 = GPUComputePassEncoder15.label
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder15.end();
    const GPUCommandBuffer1 = GPUCommandEncoder6.finish();
    GPUQueue6.submit([GPUCommandBuffer1]);
    const string83 = GPUQueue4.label
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 18219660,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX
    });
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32float",
        label: "GPUTexture14",
        size: {
            width: 3149,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg32float"]
    });
    GPURenderPassEncoder8.end();
    const GPUCommandBuffer1 = GPUCommandEncoder7.finish();
    GPUQueue3.submit([GPUCommandBuffer1]);
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture15",
        size: {
            width: 1975,
            height: 3103,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView15 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView15"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1315117452251295,
                g: 1.6058174914219203,
                b: 0.49949249138712104,
                a: 1.787948021384732
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView15
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 3175242981,
        occlusionQuerySet: GPUQuerySet5
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline4);
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUComputePassEncoder16 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    GPUComputePassEncoder16.end();
    const string84 = GPUQuerySet8.label
    const GPUBindGroupLayout9 = GPUComputePipeline3.getBindGroupLayout(0);
    GPURenderPassEncoder9.end();
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUAdapterInfo9 = GPUAdapter1.info
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture16",
        size: {
            width: 2788,
            height: 2918,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const GPUTextureView16 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView16"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8304794753676392,
                g: 0.2222770643258154,
                b: 0.7285794639664362,
                a: 0.37669463825505867
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView16
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 368787494,
        occlusionQuerySet: GPUQuerySet7
    });
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule7,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline9);
    GPURenderPassEncoder10.draw(6);
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture17",
        size: {
            width: 2276,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUBindGroupLayout10 = GPUComputePipeline2.getBindGroupLayout(0);
    const string85 = GPUComputePipeline0.label
    const string86 = GPUComputePipeline2.label
    const string87 = GPUQuerySet3.count
    const string88 = GPURenderPipeline7.label
    const GPUSupportedFeatures14 = GPUDevice0.features
    const GPUComputePassEncoder17 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    GPUComputePassEncoder17.end();
    const boolean9 = GPUAdapter3.isFallbackAdapter
    const string89 = GPUCommandEncoder15.label
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const GPUQueue7 = GPUDevice0.queue
    const string90 = GPURenderPassEncoder10.label
    GPURenderPassEncoder10.end();
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture18",
        size: {
            width: 3269,
            height: 2408,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView17 = GPUTexture18.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.98360316665525,
                g: 0.6072050359581058,
                b: 1.1850243187838527,
                a: 0.4089718781979237
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 3599378267,
        occlusionQuerySet: GPUQuerySet4
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer4);
    const string91 = GPUQuerySet4.type
    const GPUBindGroupLayout11 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUSupportedLimits11 = GPUAdapter2.limits
    GPURenderPassEncoder11.end();
    const GPUQueue8 = GPUDevice0.queue
    const GPUCommandBuffer1 = GPUCommandEncoder16.finish();
    GPUQueue5.submit([GPUCommandBuffer1]);
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader12
    });
    const GPUComputePassEncoder18 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder18"
    });
    const string92 = GPUComputePassEncoder18.label
    const string93 = GPUComputePassEncoder18.label
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture19",
        size: {
            width: 230,
            height: 1445,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView18 = GPUTexture19.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.237020455611836,
                g: 0.8619934627784982,
                b: 1.4030932859003382,
                a: 1.271425486868812
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 4081238296,
        occlusionQuerySet: GPUQuerySet8
    });
    const string94 = GPURenderPassEncoder12.label
    const string95 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures15 = GPUDevice0.features
    GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray15);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    const string96 = GPURenderPassEncoder12.label
    const GPUAdapterInfo10 = GPUAdapter5.info
    const GPUAdapterInfo11 = GPUAdapter3.info
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: true,
        size: 64059136,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const string97 = GPUQueue3.label
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
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
                format: "rgba16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.RED
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule11
        }
    });
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUComputePassEncoder19 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder19"
    });
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8sint",
        label: "GPUTexture20",
        size: {
            width: 396,
            height: 2139,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8sint"]
    });
    const string98 = GPUCommandEncoder18.label
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUComputePassEncoder20 = GPUCommandEncoder19.beginComputePass({
        label: "GPUComputePassEncoder20"
    });
    const string99 = GPUComputePipeline0.label
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule12,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED
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
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder12.end();
    const GPUTextureView19 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView19"
    });
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray16);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture21",
        size: {
            width: 2322,
            height: 1399,
            depthOrArrayLayers: 32
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView20 = GPUTexture21.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5839213732865236,
                g: 0.15946721660295204,
                b: 0.21532471526066588,
                a: 1.8739729252052224
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView20
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 589242566,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.RED
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
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline12);
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUComputePassEncoder21 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder21"
    });
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray17);
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
    const GPUSupportedLimits12 = GPUDevice0.limits
    const string100 = GPUDevice0.label
    const string101 = GPURenderPipeline9.label
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture22",
        size: {
            width: 458,
            height: 675,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView21 = GPUTexture22.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView21"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder21.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4305818016068097,
                g: 1.6032184245071075,
                b: 1.358308958391648,
                a: 0.053329349269970905
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView21,
            depthSlice: 24
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 529221832,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUSupportedLimits13 = GPUAdapter4.limits
    const string102 = GPURenderPipeline12.label
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline3);
    const string103 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const string104 = GPUComputePassEncoder21.label
    const string105 = GPUComputePipeline5.label
    const GPUBindGroupLayout12 = GPUComputePipeline5.getBindGroupLayout(0);
    GPUComputePassEncoder21.end();
    const GPUCommandBuffer1 = GPUCommandEncoder20.finish();
    const GPUBindGroupLayout13 = GPUComputePipeline7.getBindGroupLayout(0);
    const string106 = await navigator.gpu.getPreferredCanvasFormat();
    const string107 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUAdapterInfo12 = GPUAdapter7.info
    const string108 = GPUQuerySet4.type
    const string109 = GPUComputePipeline2.label
    const string110 = GPUQuerySet7.count
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 42,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    GPUQueue4.submit([GPUCommandBuffer1]);
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline12);
    const GPUBuffer10 = GPUDevice0.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: true,
        size: 250919476,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
    });
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUComputePassEncoder22 = GPUCommandEncoder22.beginComputePass({
        label: "GPUComputePassEncoder22"
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder14.draw(1);
    const GPUQueue9 = GPUDevice0.queue
    const GPUSupportedLimits14 = GPUDevice0.limits
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const GPUComputePassEncoder23 = GPUCommandEncoder23.beginComputePass({
        label: "GPUComputePassEncoder23"
    });
    GPUComputePassEncoder19.end();
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer11 = GPUDevice0.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 233293572,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST
    });
    const string111 = GPUComputePassEncoder18.label
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 281,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const string112 = GPUComputePassEncoder18.label
    const GPUComputePassEncoder24 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder24"
    });
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
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
                format: "r16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline13",
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
            module: GPUShaderModule11
        }
    });
    GPURenderPassEncoder13.end();
    const string113 = GPURenderPassEncoder14.label
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 2036,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    GPUComputePassEncoder23.setPipeline(GPUComputePipeline5);
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray18);
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
    GPUComputePassEncoder23.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder23.dispatchWorkgroups(169, 57, 11);
    const GPUAdapterInfo13 = GPUAdapter1.info
    const GPUCommandEncoder24 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "GPUTexture23",
        size: {
            width: 2879,
            height: 2635,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView22 = GPUTexture23.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView22"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4111969045535897,
                g: 0.03230361781655122,
                b: 0.31145337225618075,
                a: 1.0917338863440411
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView22
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 1411247882,
        occlusionQuerySet: GPUQuerySet3
    });
    const string114 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder22.end();
    const GPUBuffer12 = GPUDevice0.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 153131288,
        usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    });
    const string115 = GPUDevice0.label
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 1950,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPUCommandEncoder25 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    const string116 = GPUQuerySet6.type
    const string117 = GPUQuerySet12.type
    const string118 = GPUQuerySet8.count
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 775,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUShaderModule14 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader14
    });
    GPURenderPassEncoder15.setVertexBuffer(0, GPUBuffer8);
    const string119 = GPURenderPassEncoder15.label
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture24",
        size: {
            width: 2450,
            height: 807,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView23 = GPUTexture24.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder25.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.734212332895195,
                g: 1.3808814576820951,
                b: 0.7813033599850592,
                a: 0.8802286696714825
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 81387940,
        occlusionQuerySet: GPUQuerySet9
    });
    const GPUSupportedFeatures16 = GPUDevice0.features
    const string120 = GPUDevice0.label
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule12,
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
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline14",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline14);
    GPURenderPassEncoder16.draw(9);
    const GPUCommandEncoder26 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder26"
    });
    GPUComputePassEncoder23.end();
    GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray19);
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
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUCommandBuffer1 = GPUCommandEncoder22.finish();
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline14);
    const GPUCommandEncoder27 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder27"
    });
    const GPUBindGroupLayout14 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r32float",
        label: "GPUTexture25",
        size: {
            width: 1405,
            height: 1983,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r32float"]
    });
    const GPUBindGroupLayout15 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 1715,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    GPUQueue8.writeBuffer(GPUBuffer0, 0, typedArray20);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
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
    const string121 = GPUQuerySet6.count
    GPUQueue0.submit([GPUCommandBuffer1]);
    const GPUComputePassEncoder25 = GPUCommandEncoder27.beginComputePass({
        label: "GPUComputePassEncoder25"
    });
    const string122 = GPUComputePassEncoder18.label
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline14);
    const string123 = GPUQuerySet6.type
    const string124 = GPUQuerySet10.type
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16sint",
        label: "GPUTexture26",
        size: {
            width: 1175,
            height: 3865,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16sint"]
    });
    GPUComputePassEncoder24.end();
    const string125 = GPUCommandEncoder24.label
    const string126 = GPUQuerySet14.label
    const boolean10 = GPUAdapter5.isFallbackAdapter
    const GPUComputePassEncoder26 = GPUCommandEncoder24.beginComputePass({
        label: "GPUComputePassEncoder26"
    });
    GPUComputePassEncoder18.setPipeline(GPUComputePipeline3);
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder18.dispatchWorkgroups(173, 62, 38);
    const GPUSupportedLimits15 = GPUDevice0.limits
    const string127 = GPUQuerySet12.count
    const GPUQueue10 = GPUDevice0.queue
    const GPUComputePassEncoder27 = GPUCommandEncoder23.beginComputePass({
        label: "GPUComputePassEncoder27"
    });
    const string128 = GPUQuerySet10.count
    const GPUCommandBuffer1 = GPUCommandEncoder18.finish();
    const GPUAdapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string129 = GPURenderPassEncoder14.label
    const GPUAdapterInfo14 = GPUAdapter5.info
    const string130 = GPUComputePipeline3.label
    const GPUSupportedLimits16 = GPUAdapter6.limits
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const GPUComputePassEncoder28 = GPUCommandEncoder26.beginComputePass({
        label: "GPUComputePassEncoder28"
    });
    const string131 = GPUQueue5.label
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder16.setVertexBuffer(0, GPUBuffer4);
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline3);
    const string132 = GPURenderPipeline2.label
    const GPUBindGroupLayout16 = GPUComputePipeline3.getBindGroupLayout(0);
    const string133 = GPUTextureView11.label
    const GPUCommandEncoder28 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder28"
    });
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture27",
        size: {
            width: 216,
            height: 3542,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView24 = GPUTexture27.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView24"
    });
    const GPURenderPassEncoder17 = GPUCommandEncoder28.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.09142464035458864,
                g: 0.8308032539451546,
                b: 1.5010918533364044,
                a: 0.41085834407876587
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView24
        }],
        label: "GPURenderPassEncoder17",
        maxDrawCount: 3631296929,
        occlusionQuerySet: GPUQuerySet9
    });
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const boolean11 = GPUAdapter2.isFallbackAdapter
    const string134 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQuerySet15 = GPUDevice0.createQuerySet({
        count: 3362,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray21);
    const GPUBindGroup13 = GPUDevice0.createBindGroup({
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
    const GPUCommandEncoder29 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder29"
    });
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule12,
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
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline15",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule11
        }
    });
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline15);
    GPURenderPassEncoder17.draw(10);
    GPUComputePassEncoder26.setBindGroup(0, GPUBindGroup2);
    const GPUSupportedFeatures17 = GPUDevice0.features
    GPURenderPassEncoder15.end();
    const GPUCommandBuffer1 = GPUCommandEncoder17.finish();
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer4);
    GPURenderPassEncoder14.end();
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandEncoder30 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder30"
    });
    const GPUAdapter12 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUQueue6.writeBuffer(GPUBuffer4, 85285616, typedArray22);
    const string135 = GPUQuerySet0.label
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r32float",
        label: "GPUTexture28",
        size: {
            width: 1193,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["r32float"]
    });
    const string136 = await navigator.gpu.getPreferredCanvasFormat();
    const string137 = GPUCommandEncoder29.label
    GPUComputePassEncoder20.end();
    const string138 = GPURenderPassEncoder17.label

}
main().catch(console.error);