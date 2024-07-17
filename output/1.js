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
// Seed: 6182115232769204830
const typedArray20 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray19 = new Int8Array([-5464, 3147, -1591, -6607, -5165, -3702, -9896, 9529, -8737, -405, 8923, 8440, 9528, 6926, -7738, 663, -8571, 2932, -1325, 2389])
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray18 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray17 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray16 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray15 = new Float32Array([-6202])
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray13 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray12 = new Float32Array([-4555])
const typedArray11 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray9 = new Uint8Array([5135, -1502, -949, -7332, 772, 1772, -1138, -9928, -1901, 3944, -2742, 2680])
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray8 = new Float32Array([-9380])
const typedArray7 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray6 = new Uint8Array([6461, 4788, -1721, -8961, -7994, -1570, -6748, -1315, -1826, -4183, 2427, -1553, 5963, -7208, -2452, 3967, -7810, 3619, -2160, 230, -7745, -4964, -4640, 6834, -2914, -8876, 3478, 1655, 9894, 8933, -5284, -9159, -68, 5851, -9156, 3542, -38, -9365, 1309, 4057, -6979, -7534, -9056, 9960, -7052, -7081, 2177, 4288, 7854, 9626, 9928, 3457, -7273, -6957, -4760, 325, 8939, 700, 2617, -8860, -7452, -7146, -4484, -9575])
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray4 = new Int8Array([-3653, 5352, 3881, 4209, -2774, -5855, -294, -2977, 4995, 9018, 510, -3711, -8163, -2163, -1688, -2184, -2781, 8135, 8911, 3467, 6611, -8903, -4554, -577, 8241, 3503, 8819, 8104, -5680, -9751, 3502, 2003, -240, -3186, -1618, 5193, -3076, -3593, 4551, -6540, -6100, -7991, 5871, -1168, 399, -5171, -4924, -2671, 7234, 1298, 2336, 9, 1379, -5484, -8024, -3561, -4255, -7889, 27, 5730, -943, -2200, -9326, -796, 6665, -2499, -3922, -7473, -6860, 8406, -4415, 7506, 6743, 1294, -2497, 8097, 2884, -5984, 5405, -1411, 117, -8690, 650, 5882, -7311, 2269, -4137, 4751, 7513, 2271, -5102, 4922, -8273, 7316, 3533, 2678, 8442, 5941, -4774, -3818, -2071, -4202, 2868, -7825, 7942, -7998, -7076, 9159, 386, -8641, 5074, -4040, -5025, -4185, -2031, 5648, -9131, 9422, -9046, -8503, 729, -4412, 8485, 2196, -2172, 6995, -6646, 2642, -4868, -6349, -9661, -1651, 3891, -4902, 8002, 636, -11, -8300, 8653, 4531, 2042, -7004, -1634, 1519, -8328, -7736, 3003, -342, 9428, -1239, -4953, 4330, -5374, -188, -1628, -9856, -8708, 9278, 8262, 7516, -5603, -9197, 2772, -5269, -2291, -2847, 7469, -8001, 2835, 5406, 3321, -1033, -9941, 322, -7608, 3782, 6609, -6344, 3131, 7819, 1961, 5611, 8271, -8703, 1424, 8085, 1386, 746, -2369, -3217, 5710, -6774, -3622, -3828, 6845, -3907, 1075, 4416, 7172, -4502, 4917, -2157, 1642, 2610, -9553, -6999, 938, -8745, -7580, -8758, 8102, 8865, 4481, 2843, -2783, 5511, -498, 3694, 9627, 4108, 6841, -1393, -5152, 4670, -7399, -3749, -812, -4581, -2624, -7066, -8323, -1639, -9708, -1686, -8475, 2946, 1313, -1039, -3783, 8482, -471, -2093, -6431, 4185, 8497, -1599, -2621, -8454, 3945, 2196, 1871, -9217, 9349, -5576, -6819, -2086, 4522, -6687, -8930, 6028, 8562, -9537, 1880, -1873, 9975, -911, -1694, -3505, 7318, -7455, 3632, -4488, 8582, 9676, -2265, -4251, -7930, -7925, -5414, 4988, -8117, 439, -3385, 5802, -5712, -2209, 4255, 7118, -2744, 303, 227, -3072, -6417, -8143, 5040, -5060, 2845, 115, -6470, -2315, 5199, 5698, -5339, -6156, 90, -5588, 4348, -3962, -689, 2009, -9669, -7225, 3799, 6678, 7015, 8600, -4086, -8103, -120, 5690, 4361, 9796, 9388, 5170, 5856, -6637, 9524, 2222, -1538, 7270, -539, -2318, 5214, -8983, -2341, -1910, -1312, -4144, -2592, 9745, 3879, 6732, -413, -2137, 3355, 5031, -5342, 2333, -4157, 4990, -1727, -3656, 3850, -7882, 9426, 5443, 2521, 3734, -5761, -9165, -5450, 637, 1624, -3309, -3329, -3073, 6767, 6680, 2024, -1205, -1492, 2362, 6047, -9129, 2270, 7010, -296, -6422, 4318, -5783, -57, 2895, -9558, -7400, 2915, 8922, 6415, -7984, 2503, -2956, 456, 442, -8727, 5168, 2652, 6223, -2244, -640, 6414, -4027, 554, -6698, 4715, 4267, -1106, -7549, 7674, -1783, 1801, 5654, 1252, -2667, -6623, 1209, -6341, 7790, -6101, -1756, 4930, 3509, 5201, -1405, -3082, 9480, 2516, -6304, 5104, -9141, -1717, -5609, -8856, 9209, 572, 3829, 6303, 3082, 5260, 6418, 6032, -4041, 319, 1978, 5292, -1189, 6578, -1221, -311, -7750, 5024, 3867, 8758, -1860, -5751, 9725, -7544, 5821, -5823, 7678, 1631, -2334, -697, 8791, -8742, 9336, -6512, -4030, -3349, -9859])
const typedArray3 = new Float32Array([-1073, 2220, 7526, 3690, 8006, 4029, 9499, 5477, 7836, 2692, 1857, -7383, 6664, 4383, -3234, 5655, -9063, 6040, 4282, -3602, -5614, 6957, 3932, 718, 2037, -921, 2495, -9794, 6351, 3626, 8782, 9695, 2337, -5071, -3522, -2950, 1099, 1018, 1205, 9502, 8352, -2712, 8425, 2676, 9648, 3903, 5656, 6188, 5862, 3318, -6405, 8075, -8642, -9714, -9147, 8082, -6750, 5010, 9266, -7565, -1076, -2551, -40, 9550, -700, 5982, -8236, 2822, -9329, -6248, -6404, 8796, -8644, -8759, -797, 9102, 1994, -9967, -2891, 8171, -1909, 3295, 6519, 6540, -6083, -1135, 3413, 3843, 9904, -1655, -142, 8816, 2081, -4869, 1158, 5073, 59, -8121, 5334, -2849, -9394, 7478, -7377, 8231, -6309, -5314, 3704, 5508, 8132, -2120, 3588, 8660, -6257, -8084, -8695, 8905, -1488, -382, -5568, 9550, -8024, 9280, -6267, 7775, 2300, -7214, -8888, -2526, 788, -8914, -1008, -2841, -7064, 4115, -3632, -7866, 3470, 4188, -6404, -4118, 1857, 8332, 50, 5978, -87, 1773, 7946, 4339, 2031, -604, -9061, -4386, 3926, -8543, 888, 5381, -7407, -6625, -1811, 607, -1969, 1494, -7144, -1393, -7112, 8145, -9812, -9478, -1226, -2458, -6616, -9809, 6996, 7576, 4246, 8709, -4198, 7372, 9577, -2873, 4620, -401, -1399, -5559, 9213, 9677, -3504, -192, 6376, -9966, 6080, 6590, 2271, 7411, -4298, 8489, -1041, 7588])
const typedArray2 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray1 = new Int8Array([8524, 5623, -7734, 3585, 325, -7020, -6992, -6911, 4274, -8034, -4131, -2792, 9516, -5199, -1161, 7167, -7724, 2724, 444, 7455, -6814, 5550, -7246, -8388, 4653, -3605, -7299, 8733, 8707, 2649, -5580, 4143, -6473, -2205, -78, -5523, 335, 7963, 1796, -9232, 4653, 997, 7683, 4683, -8127, -8940, -1187, -1231, 1720, -3456, 9043, 8085, 6810, -8467, -1134, -9882, 9497, -106, -7731, 2064, 6737, 1250, -6488, -6733, -5757, -205, -2160, 5051, -5077, 8732, -202, -1691, -7243, -8335, 9511, -8412, -5516, -2148, 4894, 6349, -3248, 1494, 2485, -8264])
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Uint8Array([-1672, 4640, -8328, 5838, -3983, -1821, 800, -618, 4012, -3465, -8406, 6751, 2312, 8561, 1880, 2769, 4975, 2901, 5852, -8248, -1158, 7258, -6736, -3140, 2083, 2990, 9648, -2311, -9399, -3871, 7128, 5345, 1941, -2970, -3201, 3388, -9582, 5759, 1429, -7506, 7819, 637, 9474, 4043, -4022, -8079, 1029, -4358, 7657, 762, 392, 9707, -9521, -5197, -1410, 5563, 9219, 555, 8474, 2897, -470, -1566, 1430, -7383, 5645, -3413, -502, -4694, -3702, -7631, 9566, -4200, -304, 2580, 1426, 8682, 670, -1935, -9146, 9114, -3559, -8377, 3502, 843, -8593, 425, -5437, 9897, -8935, 2843, -3330, 7734, -265, 9069, -2445, -1378, -7595, 5565, -7117, 132, -7670, 6345, -8144, 8263, 5159, 3305, -3213, 3777, 2887, -8043, 3708, -1497, 6539, 48, 9469, 4713, 4314, -7449, -9319, -2564, 2372, -9308, -7959, -7058, 7901, 3056, 2594, -9186, 7255, 7473, -6647, -3262, -8189, -5263, -9663, 1329, 7593, 503, -7125, -9453, -4605, -9179, -7011, -3344, 1623, -1382, -7496, -5763, -9731, 7032, 8761, -6803, -7484, -3479, -3549, -9658, -2677, -9529, 8654, -6225, -3541, 7327, 3463, -6899, -3179, -2974, -1358, -6607, -8674, -9897, -8560, -853, -3190, 677, -6294, 7551, -9275, 1132, 4257, -1090, 5771, 2741, 5784, -8231, -2681, 9446, 6065, -7530, -4876, -972, 1541, 2999, 458, -872, 7508, -9146, 2495, -9984, 3768, -5572, -894, -3179, 4733, 781, 4740, -2530, 1326, -7210, 9008, -4514, 5756, 3201, -2309, -8954, -2434, -1420, 5595, -7876, -9377, -6825, 796, 6731, -9105, 328, 778, 3170, -9290, -5309, 4687, -5635, 3426, 6605, -7910, 963, -2543, -8856, -1949, -2295, -8507, 86, -2019, 8590, 8454, -2399, 8002, -9487, 2051, 4697, 4407, 6775, -6390, -3379, 9117, -744, -4053, -4118, -4404, -1510, -6084, 5463, 1464, 4387, -3601, 9976, -2259, -4778, -7700, -9031, 9911, -4929, -9846, 3703, 5883, 7242, -6574, 5807, -5920, -5468, -4025, -5052, -6983, -1040, 2840, -6488, 9291, -5394, -4945, 5573, -9319, 5143, -8112, -3272, 5430, -511, -9197, -9826, 5360, -4592, 6228, 5791, 3901, -1347, 4534, -7064, -1341, 5909, 4313, 8721, -3527, -5576, -2783, 6796, -3070, 4506, 547, 4340, 6134, -997, 4816, 1175, -7536, 6266, 9439, 4770, 7553, 5402, -8135, -899])
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
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
    const GPUComputePipeline0 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline0",
        layout: "auto"
    });
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture0",
        size: {
            width: 943,
            height: 443,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 2615,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.40498105471610946,
                g: 0.8990603586804848,
                b: 0.12082649934755141,
                a: 0.5240012019248321
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView0,
            depthSlice: 31
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 3214037187,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder0.end();
    const string0 = GPUCommandEncoder0.label
    const string1 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePassEncoder0 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const string2 = GPUComputePassEncoder0.label
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture1",
        size: {
            width: 195,
            height: 964,
            depthOrArrayLayers: 13
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["r32uint"]
    });
    const GPUSupportedFeatures0 = GPUAdapter0.features
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "r32uint",
        label: "GPUTextureView1"
    });
    const GPUQueue0 = GPUDevice0.queue
    const string3 = GPUQueue0.label
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 3371,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const string4 = GPUDevice0.label
    const string5 = GPUDevice0.label
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba32float",
        label: "GPUTexture2",
        size: {
            width: 368,
            height: 1415,
            depthOrArrayLayers: 44
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba32float"]
    });
    const GPUShaderModule1 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader1
    });
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 254368964,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 154168428, typedArray0);
    const string6 = GPUQuerySet1.label
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUTextureView2 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 1,
        format: "r32uint",
        label: "GPUTextureView2"
    });
    const GPUSupportedLimits0 = GPUDevice0.limits
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture3",
        size: {
            width: 690,
            height: 706,
            depthOrArrayLayers: 27
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView3 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView3"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.05361377342145457,
                g: 1.7252102792657373,
                b: 0.8952636112524535,
                a: 0.9494771572853724
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView3,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 189315882,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUShaderModule2 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader2
    });
    const GPURenderPipeline0 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder1.draw(1);
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const string7 = GPUQuerySet1.type
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 1173,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline1",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 85344188, typedArray1);
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray2);
    const GPUBindGroup0 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline0.bindGroup",
        layout: GPUComputePipeline0.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: true,
        size: 122076380,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    const boolean0 = GPUAdapter0.isFallbackAdapter
    const string8 = GPUTextureView1.label
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 2928,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const string9 = GPUCommandEncoder2.label
    GPURenderPassEncoder1.end();
    const GPUCommandBuffer0 = GPUCommandEncoder1.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPUTextureView4 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "r32uint",
        label: "GPUTextureView4"
    });
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const string10 = GPUTextureView1.label
    const GPUSupportedFeatures1 = GPUDevice0.features
    const string11 = GPUCommandEncoder2.label
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const GPUCommandBuffer1 = GPUCommandEncoder5.finish();
    GPUQueue0.submit([GPUCommandBuffer1]);
    const GPUTextureView5 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView5"
    });
    const GPUQueue1 = GPUDevice0.queue
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline0);
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture4",
        size: {
            width: 104,
            height: 299,
            depthOrArrayLayers: 33
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView6 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1335886608807941,
                g: 0.7401793304999145,
                b: 0.6438831502956444,
                a: 0.22842889934860588
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView6,
            depthSlice: 4
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 1465766638,
        occlusionQuerySet: GPUQuerySet3
    });
    const string12 = GPURenderPassEncoder2.label
    const string13 = GPUComputePassEncoder1.label
    const GPUAdapterInfo1 = GPUAdapter0.info
    const string14 = GPUQuerySet0.count
    const GPUComputePassEncoder2 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const string15 = GPUDevice0.label
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline1);
    const string16 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures2 = GPUDevice0.features
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
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
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline2",
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
            module: GPUShaderModule1
        }
    });
    const string17 = GPUQueue0.label
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const GPUSupportedLimits1 = GPUDevice0.limits
    const string18 = GPUCommandEncoder4.label
    GPUComputePassEncoder2.end();
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.dispatchWorkgroups(69, 189, 46);
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer2);
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const string19 = GPUComputePassEncoder0.label
    const string20 = GPUComputePipeline1.label
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline1);
    const GPUBindGroupLayout1 = GPUComputePipeline2.getBindGroupLayout(0);
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapterInfo2 = GPUAdapter0.info
    const string21 = GPUCommandEncoder4.label
    GPUQueue1.writeBuffer(GPUBuffer0, 98304388, typedArray3);
    const string22 = GPURenderPipeline0.label
    const string23 = GPUQuerySet1.count
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture5",
        size: {
            width: 3783,
            height: 3147,
            depthOrArrayLayers: 49
        },
        mipLevelCount: 12,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16float"]
    });
    const GPUTextureView7 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 7,
        format: "r16float",
        label: "GPUTextureView7"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5592377956927599,
                g: 0.4837027379965031,
                b: 0.8083368251344043,
                a: 0.2381964553114393
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView7
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 3832985827,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPUTextureView8 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 38,
        baseArrayLayer: 1,
        mipLevelCount: 6,
        baseMipLevel: 5,
        format: "r16float",
        label: "GPUTextureView8"
    });
    const string24 = GPUQuerySet1.type
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "GPUTexture6",
        size: {
            width: 304,
            height: 851,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8snorm"]
    });
    const GPUQueue2 = GPUDevice0.queue
    const GPUQueue3 = GPUDevice0.queue
    const GPUSupportedFeatures3 = GPUAdapter0.features
    const GPUSupportedLimits2 = GPUDevice0.limits
    const GPUSupportedFeatures4 = GPUAdapter0.features
    const string25 = GPUDevice0.label
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus-stencil8",
        label: "GPUTexture7",
        size: {
            width: 3997,
            height: 191,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["depth24plus-stencil8"]
    });
    const string26 = GPUTextureView0.label
    GPURenderPassEncoder3.end();
    const GPUCommandBuffer2 = GPUCommandEncoder6.finish();
    GPUQueue0.submit([GPUCommandBuffer2]);
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 3000,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const string27 = GPUComputePipeline0.label
    const GPUSupportedLimits3 = GPUAdapter0.limits
    const string28 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue4 = GPUDevice0.queue
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 247671960,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM
    });
    const string29 = GPUQuerySet0.count
    const string30 = GPUComputePassEncoder0.label
    const string31 = GPURenderPipeline1.label
    const string32 = await navigator.gpu.getPreferredCanvasFormat();
    const string33 = GPUComputePipeline1.label
    const GPUTextureView9 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8snorm",
        label: "GPUTextureView9"
    });
    const GPUSupportedFeatures5 = GPUDevice0.features
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const string34 = GPUQuerySet4.count
    const GPUSupportedLimits4 = GPUAdapter0.limits
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture8",
        size: {
            width: 2124,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture9",
        size: {
            width: 2824,
            height: 1651,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const string35 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.RED
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline4);
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer3 = GPUCommandEncoder4.finish();
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const string36 = GPUComputePipeline0.label
    const GPUQueue5 = GPUDevice0.queue
    const string37 = GPUQueue0.label
    const string38 = GPURenderPipeline1.label
    GPUQueue0.writeBuffer(GPUBuffer0, 121984600, typedArray4);
    const string39 = GPUTextureView5.label
    const string40 = GPUComputePassEncoder0.label
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline5",
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
            module: GPUShaderModule1
        }
    });
    const string41 = GPUCommandEncoder2.label
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture10",
        size: {
            width: 342,
            height: 201,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView10 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "r8unorm",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5342278977729813,
                g: 0.899832606397682,
                b: 0.04953097566218734,
                a: 0.05906153222938548
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView10,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 3708227616,
        occlusionQuerySet: GPUQuerySet2
    });
    GPURenderPassEncoder4.end();
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "GPUTexture11",
        size: {
            width: 3207,
            height: 1571,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView11 = GPUTexture11.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9710513639268261,
                g: 0.3418876982754224,
                b: 1.0512993227314398,
                a: 1.01732131264129
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 3757308993,
        occlusionQuerySet: GPUQuerySet2
    });
    GPURenderPassEncoder5.end();
    GPUQueue0.submit([GPUCommandBuffer3]);
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader3
    });
    const GPUTextureView12 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView12"
    });
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture12",
        size: {
            width: 700,
            height: 159,
            depthOrArrayLayers: 21
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView13 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3939010708938475,
                g: 0.38046178475008463,
                b: 0.18372492573940225,
                a: 0.6848612218221428
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView13,
            depthSlice: 14
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 972380325,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder6.end();
    const string42 = GPUCommandEncoder3.label
    const string43 = GPUComputePassEncoder0.label
    const GPUSupportedLimits5 = GPUDevice0.limits
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const string44 = GPUComputePassEncoder0.label
    const GPUQueue6 = GPUDevice0.queue
    const GPUBindGroupLayout2 = GPUComputePipeline0.getBindGroupLayout(0);
    const string45 = GPUTextureView0.label
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string46 = GPUQuerySet3.count
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray5);
    const GPUBindGroup1 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline1.bindGroup",
        layout: GPUComputePipeline1.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA
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
            module: GPUShaderModule1
        }
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    GPUComputePassEncoder3.end();
    const GPUSupportedLimits6 = GPUAdapter1.limits
    GPUQueue5.writeBuffer(GPUBuffer0, 194271496, typedArray6);
    GPUComputePassEncoder0.end();
    const GPUSupportedFeatures6 = GPUAdapter1.features
    const string47 = GPUQueue5.label
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 871,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture13",
        size: {
            width: 789,
            height: 698,
            depthOrArrayLayers: 41
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView14 = GPUTexture13.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2302661227866913,
                g: 1.8594551235876802,
                b: 0.7874308575977196,
                a: 1.8487363019585605
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView14,
            depthSlice: 3
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 1555218701,
        occlusionQuerySet: GPUQuerySet5
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline0);
    const string48 = GPUCommandEncoder0.label
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder1.dispatchWorkgroups(44, 60, 19);
    const string49 = GPUQuerySet4.label
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup1);
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture14",
        size: {
            width: 8,
            height: 339,
            depthOrArrayLayers: 11
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const GPUTextureView15 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r16float",
        label: "GPUTextureView15"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3289370151726345,
                g: 1.109000139140616,
                b: 0.7176551865303122,
                a: 1.2347933181777266
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView15,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 1534921973,
        occlusionQuerySet: GPUQuerySet1
    });
    const string50 = GPUQuerySet4.label
    const string51 = GPUCommandEncoder2.label
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer1);
    GPURenderPassEncoder7.draw(2);
    const string52 = GPURenderPassEncoder7.label
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray7);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline2.bindGroup",
        layout: GPUComputePipeline2.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    GPURenderPassEncoder8.end();
    const string53 = GPUCommandEncoder2.label
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup1);
    const string54 = GPUDevice0.label
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    GPUComputePassEncoder1.end();
    const GPUCommandBuffer4 = GPUCommandEncoder2.finish();
    const string55 = GPUComputePipeline0.label
    GPURenderPassEncoder7.end();
    const string56 = GPUQuerySet3.type
    const string57 = GPUQuerySet1.type
    const GPUCommandBuffer5 = GPUCommandEncoder3.finish();
    const GPUComputePassEncoder4 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup1);
    const string58 = GPUTextureView12.label
    const GPUComputePassEncoder5 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const string59 = GPUQuerySet3.type
    const GPUAdapterInfo3 = GPUAdapter1.info
    const GPUTextureView16 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView16"
    });
    const string60 = GPUComputePassEncoder5.label
    const string61 = await navigator.gpu.getPreferredCanvasFormat();
    const string62 = GPURenderPipeline5.label
    const GPUBindGroupLayout3 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUComputePassEncoder6 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "GPUTexture15",
        size: {
            width: 3513,
            height: 1629,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView17 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8440666931569643,
                g: 0.15179720108699746,
                b: 1.812735048249081,
                a: 1.251349472839164
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 1627975558,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline7",
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
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline7);
    const string63 = GPUQuerySet5.type
    const GPUSupportedFeatures7 = GPUAdapter0.features
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture16",
        size: {
            width: 3935,
            height: 660,
            depthOrArrayLayers: 59
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView18 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.59275464970247,
                g: 1.0668977916790054,
                b: 1.6564202811484452,
                a: 1.0177261695942892
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 699810406,
        occlusionQuerySet: GPUQuerySet0
    });
    GPUQueue3.submit([GPUCommandBuffer5]);
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const string64 = GPUComputePipeline2.label
    GPUQueue3.writeBuffer(GPUBuffer1, 28, typedArray8);
    const GPUSupportedFeatures8 = GPUAdapter1.features
    GPURenderPassEncoder9.draw(6);
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture17",
        size: {
            width: 935,
            height: 925,
            depthOrArrayLayers: 5
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView19 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "bgra8unorm",
        label: "GPUTextureView19"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7979304121626376,
                g: 0.001067075047867183,
                b: 1.5240376262426765,
                a: 0.671421161909227
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView19,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 1531398848,
        occlusionQuerySet: GPUQuerySet3
    });
    const string65 = GPUQuerySet4.count
    const GPUSupportedLimits7 = GPUAdapter1.limits
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader4
    });
    const string66 = GPUDevice0.label
    const GPUSupportedFeatures9 = GPUAdapter0.features
    const string67 = GPUQuerySet0.count
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline2);
    const string68 = GPUComputePassEncoder4.label
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUComputePassEncoder7 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUSupportedFeatures10 = GPUAdapter1.features
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture18",
        size: {
            width: 619,
            height: 2261,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const GPUTextureView20 = GPUTexture18.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4705192931427582,
                g: 0.013213234397126516,
                b: 1.022512073907615,
                a: 0.09310578695684812
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView20
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 1030133370,
        occlusionQuerySet: GPUQuerySet0
    });
    const string69 = GPUQuerySet4.count
    const string70 = GPURenderPassEncoder10.label
    GPURenderPassEncoder12.end();
    const string71 = GPUDevice0.label
    const string72 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePassEncoder8 = GPUCommandEncoder14.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    GPUQueue4.writeBuffer(GPUBuffer2, 16, typedArray9);
    GPURenderPassEncoder11.end();
    const string73 = await navigator.gpu.getPreferredCanvasFormat();
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule1
        }
    });
    const GPUSupportedLimits8 = GPUDevice0.limits
    const GPUTextureView21 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView21"
    });
    const string74 = GPUComputePassEncoder6.label
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba32float",
        label: "GPUTexture19",
        size: {
            width: 1240,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba32float"]
    });
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup1);
    const string75 = GPUQuerySet4.count
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUSupportedLimits9 = GPUAdapter3.limits
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALL
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer1);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline1);
    const string76 = GPUQuerySet4.type
    const GPUQueue7 = GPUDevice0.queue
    const GPUSupportedFeatures11 = GPUAdapter0.features
    const GPUSupportedLimits10 = GPUAdapter1.limits
    const GPUQueue8 = GPUDevice0.queue
    const string77 = GPURenderPipeline3.label
    GPUQueue7.writeBuffer(GPUBuffer1, 0, typedArray10);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline1.bindGroup",
        layout: GPUComputePipeline1.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    const GPUSupportedFeatures12 = GPUDevice0.features
    GPUQueue7.writeBuffer(GPUBuffer1, 0, typedArray11);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline0.bindGroup",
        layout: GPUComputePipeline0.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    GPUQueue6.writeBuffer(GPUBuffer1, 28, typedArray12);
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray13);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline3.bindGroup",
        layout: GPUComputePipeline3.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline7);
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    GPUQueue1.submit([GPUCommandBuffer4]);
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUComputePassEncoder5.end();
    const string78 = GPUDevice0.label
    const string79 = GPURenderPassEncoder9.label
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "GPUTexture20",
        size: {
            width: 237,
            height: 203,
            depthOrArrayLayers: 11
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8uint"]
    });
    GPUComputePassEncoder4.end();
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline3);
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32uint",
        label: "GPUTexture21",
        size: {
            width: 74,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rg32uint"]
    });
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer2);
    const string80 = GPUDevice0.label
    const string81 = GPUComputePipeline1.label
    const string82 = GPUQuerySet0.count
    const string83 = GPUQuerySet4.label
    GPUComputePassEncoder6.end();
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer1);
    const GPUSupportedFeatures13 = GPUDevice0.features
    const GPUComputePassEncoder9 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const string84 = GPUTextureView18.label
    const string85 = GPUComputePassEncoder7.label
    const string86 = GPUQuerySet3.type
    GPUQueue7.writeBuffer(GPUBuffer1, 0, typedArray14);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline3.bindGroup",
        layout: GPUComputePipeline3.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    GPUComputePassEncoder9.end();
    const string87 = GPUComputePassEncoder8.label
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader5
    });
    const string88 = GPUComputePipeline2.label
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 211801928,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    });
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 90269524,
        usage: GPUBufferUsage.INDEX
    });
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const string89 = GPUCommandEncoder8.label
    const GPUTextureView22 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 50,
        baseArrayLayer: 8,
        mipLevelCount: 7,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView22"
    });
    const GPUBindGroupLayout5 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 151478416,
        usage: GPUBufferUsage.STORAGE
    });
    const GPUTextureView23 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8snorm",
        label: "GPUTextureView23"
    });
    const string90 = GPUComputePassEncoder7.label
    const string91 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedFeatures14 = GPUAdapter3.features
    const GPUQueue9 = GPUDevice0.queue
    const GPUSupportedLimits11 = GPUDevice0.limits
    const GPUSupportedLimits12 = GPUAdapter3.limits
    const GPUCommandBuffer6 = GPUCommandEncoder0.finish();
    GPUQueue1.submit([GPUCommandBuffer6]);
    const string92 = GPUQueue3.label
    const GPUSupportedLimits13 = GPUDevice0.limits
    const GPUCommandBuffer7 = GPUCommandEncoder15.finish();
    GPUQueue7.submit([GPUCommandBuffer7]);
    const string93 = GPUTextureView6.label
    const GPUCommandBuffer8 = GPUCommandEncoder7.finish();
    GPUQueue0.submit([GPUCommandBuffer8]);
    const string94 = GPURenderPipeline2.label
    const string95 = GPUQueue2.label
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer2);
    const GPUComputePassEncoder10 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer1);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder8.dispatchWorkgroups(43, 193, 40);
    GPURenderPassEncoder9.end();
    const GPUCommandBuffer9 = GPUCommandEncoder9.finish();
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline4);
    GPURenderPassEncoder10.draw(7);
    const GPUQueue10 = GPUDevice0.queue
    const string96 = GPUComputePipeline1.label
    const string97 = GPUDevice0.label
    const string98 = GPUQuerySet0.count
    const GPUTextureView24 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rgba8uint",
        label: "GPUTextureView24"
    });
    GPURenderPassEncoder10.end();
    const boolean3 = GPUAdapter5.isFallbackAdapter
    GPUComputePassEncoder10.end();
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture22",
        size: {
            width: 483,
            height: 1998,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView25 = GPUTexture22.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView25"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8012832232800298,
                g: 1.2239987715052627,
                b: 1.351393630362685,
                a: 1.1493735417713855
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView25
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 3036935997,
        occlusionQuerySet: GPUQuerySet4
    });
    const string99 = GPURenderPassEncoder13.label
    const string100 = GPUQuerySet2.type
    const GPUAdapterInfo4 = GPUAdapter4.info
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline2);
    const GPUAdapterInfo5 = GPUAdapter2.info
    GPUComputePassEncoder8.end();
    const string101 = GPUQuerySet5.type
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture23",
        size: {
            width: 1118,
            height: 583,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView26 = GPUTexture23.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rg8unorm",
        label: "GPUTextureView26"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0357529945218142,
                g: 0.3578287995417049,
                b: 1.343781043576321,
                a: 1.3666256951586173
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView26
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 149730045,
        occlusionQuerySet: GPUQuerySet4
    });
    const string102 = GPUDevice0.label
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
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
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline11",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline11);
    GPURenderPassEncoder14.draw(5);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline0);
    const GPUSupportedLimits14 = GPUAdapter5.limits
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUSupportedLimits15 = GPUAdapter5.limits
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline11);
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUCommandBuffer10 = GPUCommandEncoder16.finish();
    const string103 = GPURenderPassEncoder14.label
    const string104 = GPUDevice0.label
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    GPUQueue7.submit([GPUCommandBuffer9]);
    const string105 = GPUCommandEncoder8.label
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline12);
    GPURenderPassEncoder13.draw(2);
    const string106 = GPUTextureView24.label
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 830,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup4);
    GPUQueue9.submit([GPUCommandBuffer10]);
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const GPUQueue11 = GPUDevice0.queue
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const string107 = GPUComputePipeline7.label
    GPURenderPassEncoder13.end();
    const GPUCommandBuffer11 = GPUCommandEncoder13.finish();
    const GPUSupportedFeatures15 = GPUAdapter5.features
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 99,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    GPUQueue5.writeBuffer(GPUBuffer1, 4, typedArray15);
    const string108 = GPUComputePipeline2.label
    const GPUSupportedFeatures16 = GPUAdapter5.features
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    GPURenderPassEncoder14.end();
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "GPUTexture24",
        size: {
            width: 2498,
            height: 2013,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView27 = GPUTexture24.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView27"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5949023567919174,
                g: 0.681236701362486,
                b: 0.4910982543606126,
                a: 1.3557299474159972
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView27
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 2382445328,
        occlusionQuerySet: GPUQuerySet7
    });
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder15.setPipeline(GPURenderPipeline13);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline4);
    const string109 = GPUQuerySet1.label
    const string110 = GPUCommandEncoder12.label
    GPUComputePassEncoder7.end();
    const GPUComputePassEncoder11 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup0);
    GPURenderPassEncoder15.end();
    const string111 = GPUQuerySet1.count
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 3238,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture25",
        size: {
            width: 1152,
            height: 2527,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView28 = GPUTexture25.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView28"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4445130134537003,
                g: 1.46110577345809,
                b: 1.6718115453834062,
                a: 1.6125505949581431
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView28
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 2860527367,
        occlusionQuerySet: GPUQuerySet8
    });
    const string112 = GPUQuerySet0.count
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup3);
    GPURenderPassEncoder16.end();
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 1992,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup0);
    GPUQueue9.submit([GPUCommandBuffer11]);
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture26",
        size: {
            width: 1058,
            height: 3030,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView29 = GPUTexture26.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rg16float",
        label: "GPUTextureView29"
    });
    const GPURenderPassEncoder17 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8370382150737878,
                g: 0.22317958485662648,
                b: 0.8785367219996802,
                a: 1.0333907114773062
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView29
        }],
        label: "GPURenderPassEncoder17",
        maxDrawCount: 1909164397,
        occlusionQuerySet: GPUQuerySet6
    });
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline5);
    GPURenderPassEncoder17.draw(2);
    const string113 = GPURenderPassEncoder17.label
    const string114 = GPUQuerySet9.label
    const string115 = GPUComputePipeline0.label
    const GPUTextureView30 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView30"
    });
    GPURenderPassEncoder17.end();
    const GPUCommandBuffer12 = GPUCommandEncoder10.finish();
    GPUQueue4.submit([GPUCommandBuffer12]);
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture27",
        size: {
            width: 40,
            height: 851,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView31 = GPUTexture27.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView31"
    });
    const GPURenderPassEncoder18 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6123854901636103,
                g: 1.2483479704818123,
                b: 0.8273595381276959,
                a: 0.12105812419987494
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView31,
            depthSlice: 21
        }],
        label: "GPURenderPassEncoder18",
        maxDrawCount: 776754686,
        occlusionQuerySet: GPUQuerySet4
    });
    const string116 = GPURenderPassEncoder18.label
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline7);
    const GPUSupportedLimits16 = GPUAdapter0.limits
    GPUQueue11.writeBuffer(GPUBuffer1, 0, typedArray16);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline7.bindGroup",
        layout: GPUComputePipeline7.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder11.dispatchWorkgroups(256, 15, 55);
    const GPUTextureView32 = GPUTexture13.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView32"
    });
    const string117 = GPUCommandEncoder14.label
    GPUComputePassEncoder11.end();
    const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "zero"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPUQueue10.writeBuffer(GPUBuffer1, 0, typedArray17);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline4.bindGroup",
        layout: GPUComputePipeline4.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 71366052,
        usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    });
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUCommandBuffer13 = GPUCommandEncoder18.finish();
    const string118 = GPURenderPipeline13.label
    const string119 = GPUCommandEncoder17.label
    const GPUComputePassEncoder12 = GPUCommandEncoder14.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const string120 = GPUTextureView2.label
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 1226,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    GPURenderPassEncoder18.setPipeline(GPURenderPipeline14);
    GPURenderPassEncoder18.end();
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "zero"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline15",
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
    const string121 = await navigator.gpu.getPreferredCanvasFormat();
    const string122 = GPUComputePipeline2.label
    const GPUAdapterInfo6 = GPUAdapter7.info
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup2);
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture28",
        size: {
            width: 2518,
            height: 1543,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView33 = GPUTexture28.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView33"
    });
    const GPURenderPassEncoder19 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0071417544354087,
                g: 0.8200756418701036,
                b: 1.4752026408551224,
                a: 1.3144883129486526
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView33
        }],
        label: "GPURenderPassEncoder19",
        maxDrawCount: 1793863702,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder19.setPipeline(GPURenderPipeline9);
    GPURenderPassEncoder19.draw(1);
    const string123 = GPUQuerySet0.label
    GPUComputePassEncoder12.end();
    const GPUCommandBuffer14 = GPUCommandEncoder14.finish();
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePassEncoder13 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder13.dispatchWorkgroups(111, 55, 56);
    GPUQueue5.submit([GPUCommandBuffer14]);
    const string124 = GPUQuerySet10.label
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup4);
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: true,
        size: 190158108,
        usage: GPUBufferUsage.MAP_READ
    });
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const GPUBuffer10 = GPUDevice0.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: false,
        size: 22380500,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    });
    const GPUTexture29 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2uint",
        label: "GPUTexture29",
        size: {
            width: 167,
            height: 546,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2uint"]
    });
    GPURenderPassEncoder19.setPipeline(GPURenderPipeline9);
    GPURenderPassEncoder19.setPipeline(GPURenderPipeline9);
    const string125 = GPUCommandEncoder11.label
    const GPUAdapterInfo7 = GPUAdapter4.info
    const string126 = GPUQuerySet0.label
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline5);
    GPUQueue11.writeBuffer(GPUBuffer1, 0, typedArray18);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline5.bindGroup",
        layout: GPUComputePipeline5.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder13.dispatchWorkgroups(63, 252, 58);
    const string127 = GPUQuerySet5.type
    const GPUSupportedLimits17 = GPUDevice0.limits
    const string128 = GPUComputePassEncoder13.label
    const GPUAdapterInfo8 = GPUAdapter3.info
    const string129 = await navigator.gpu.getPreferredCanvasFormat();
    const string130 = GPUQuerySet2.count
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUSupportedFeatures17 = GPUAdapter3.features
    const string131 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTextureView34 = GPUTexture11.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView34"
    });
    const GPUTexture30 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture30",
        size: {
            width: 1307,
            height: 2841,
            depthOrArrayLayers: 59
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const string132 = GPUQuerySet3.label
    const GPUTexture31 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8sint",
        label: "GPUTexture31",
        size: {
            width: 673,
            height: 989,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg8sint"]
    });
    const string133 = GPUQuerySet2.label
    const GPUTextureView35 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 9,
        baseMipLevel: 2,
        format: "r16float",
        label: "GPUTextureView35"
    });
    const GPUSupportedFeatures18 = GPUAdapter4.features
    const GPUBuffer11 = GPUDevice0.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: true,
        size: 22379732,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const string134 = GPUQuerySet10.type
    GPURenderPassEncoder19.setPipeline(GPURenderPipeline9);
    const GPUCommandBuffer15 = GPUCommandEncoder12.finish();
    const GPUSupportedFeatures19 = GPUDevice0.features
    const string135 = GPURenderPipeline0.label
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader6
    });
    const GPUTextureView36 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "depth24plus-stencil8",
        label: "GPUTextureView36"
    });
    GPURenderPassEncoder19.end();
    const string136 = GPUComputePassEncoder13.label
    const GPUTextureView37 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "r16float",
        label: "GPUTextureView37"
    });
    const GPUTextureView38 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView38"
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup9);
    const string137 = GPUComputePipeline1.label
    const WGSLLanguageFeatures11 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits18 = GPUAdapter3.limits
    const GPUSupportedLimits19 = GPUAdapter2.limits
    const boolean4 = GPUAdapter1.isFallbackAdapter
    const string138 = GPUQuerySet7.label
    const string139 = GPUCommandEncoder17.label
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline7);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder13.dispatchWorkgroups(204, 156, 45);
    const GPUSupportedLimits20 = GPUAdapter9.limits
    const GPUCommandBuffer16 = GPUCommandEncoder17.finish();
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const GPUComputePassEncoder14 = GPUCommandEncoder19.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const GPURenderPipeline16 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline16",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader7
    });
    const boolean5 = GPUAdapter7.isFallbackAdapter
    const string140 = GPUComputePipeline0.label
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const WGSLLanguageFeatures12 = navigator.gpu.wgslLanguageFeatures
    const string141 = GPUQuerySet9.count
    const GPUCommandBuffer17 = GPUCommandEncoder8.finish();
    const string142 = GPUQuerySet10.type
    const string143 = GPUQuerySet0.count
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    GPUQueue2.writeBuffer(GPUBuffer2, 8, typedArray19);
    GPUQueue5.writeBuffer(GPUBuffer1, 0, typedArray20);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline10.bindGroup",
        layout: GPUComputePipeline10.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer1
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer2
            }
        }]
    });
    const string144 = GPUQuerySet1.label
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUComputePassEncoder15 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    const GPUQueue12 = GPUDevice0.queue
    const string145 = GPUQuerySet3.label
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUTexture32 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture32",
        size: {
            width: 240,
            height: 4039,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView39 = GPUTexture32.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView39"
    });
    const GPURenderPassEncoder20 = GPUCommandEncoder21.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.014433194675861571,
                g: 1.859242963452115,
                b: 0.827051993337192,
                a: 0.319586775161149
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView39
        }],
        label: "GPURenderPassEncoder20",
        maxDrawCount: 1134572606,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder20.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder20.draw(2);
    GPURenderPassEncoder20.draw(8);
    const GPUQueue13 = GPUDevice0.queue
    const GPUBindGroupLayout6 = GPUComputePipeline3.getBindGroupLayout(0);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline1);
    const string146 = await navigator.gpu.getPreferredCanvasFormat();
    const string147 = GPUComputePipeline3.label
    const GPUTextureView40 = GPUTexture26.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 1,
        format: "rg16float",
        label: "GPUTextureView40"
    });
    GPUQueue0.submit([GPUCommandBuffer16]);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline3);
    const string148 = GPURenderPipeline8.label
    const GPUQueue14 = GPUDevice0.queue
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline5);
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string149 = GPURenderPassEncoder20.label
    const GPUSupportedFeatures20 = GPUAdapter9.features

}
main().catch(console.error);