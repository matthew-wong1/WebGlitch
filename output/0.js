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
// Seed: -1861541312852126667
const typedArray21 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader17 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray20 = new Uint8Array([3333, 8383, 464, -7530])
const typedArray19 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray18 = new Uint8Array([6817, 2728, -936, 7971])
const shader16 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray17 = new Int8Array([2698, -9877, -4051, -6296, -9465, 8721, 4988, 1296, 6993, 7240, 3199, 3727, 519, -4633, 3678, 5044, -3879, 4323, -8965, 1968, -3079, -4748, 5054, 5795, 5294, 7159, 1368, -8177, -6149, -8031, -1700, -6781, -8027, 7762, 712, -6140, -1363, 816, -6311, -4634, 7976, 9646, 7346, 8017, 4114, -101, 1744, -6042, 6659, 6544, 8126, 9913, -2903, 8793, 8995, -1085, -6151, -4846, -388, 3716, -7826, 6787, -4855, 7289, -9388, -5075, -1888, -9534, 4907, 8653, -8130, -2903, -7665, -4051, -2575, -6313, -1705, -2959, 38, 9449, 5592, 7525, -4775, 5442, 7206, -3947, -3309, -8160, -4173, -9748, 2330, 2410, 5537, 7036, -3442, -7902, 4109, -9310, -3995, 7673, -2786, 463, -6011, -4177, 2178, 9231, 9079, 7105, -1954, -1541, -1336, -2503, 3331, 7548, 5226, 2972, 8865, -3787, -6368, -6132, -640, 1948, -6403, 9608, -7780, 9361, -7311, 9893, 1502, 6911, 8148, -8180, -2317, -4044, -7835, 3442, -5540, -4116, 6420, -5761, -6566, -6516, -1084, 969, 3876, 4303, -3354, -6266, -3234, -2914, -8828, -1447, -4868, 2566, 4583, 2223, -8562, 3920, 3172, 6602, -3325, 4102, 5185, -317, -2622, -6645, -4762, 2604, -3408, 8937, -3335, 5151, 6889, -7643, -1153, 1362, -9281, -802, -6645, -1748, -595, 6184, 2612, -9932, 9937, 7494, -208, 3625, -922, 7666, -7860, 333, 6021, -1647, -2308, 6277, 8839, -6273, 6244, -1385, 9302, -4175, 3979, 4503, 3394, 4369, 7443, 4692, -298, 1104, 4133, 9418, 804, 6846, -1013, 8503, -536, 2070, -8297, -6649, 421, -7587, 2655, 856, -4271, -4209, 2204, 3619, 8792, -2297, 3661, -7960, -9085, 5285, 5538, -2847, -7573, -7466, -5178, 564, 2777, -7140, 3242, 3628, -6299, 4801, -7305, -5177, -2249, -1350, 1700, 6202, -5035, 7446, -4113, 3563, -4310, -9840, 1623, -4667])
const typedArray16 = new Int8Array([-3870, -4808, -3768, -3538, -3810, 4071, 6342, -1511, -7113, -2168, -8673, 1693, 8270, -4814, -4018, -734, -356, -8052, -524, 3846, -3750, 6466, -6555, -3814, -4793, -3278, -6895, 9571, 9624, 4737, -9529, 1181, 4488, -2921, -2628, -4712, -3045, -7949, -3156, -4624, -166, 7107, 2186, -8771, 9001, 3435, -4338, -5891, -321, 1272, -780, -7353, -5756, -4298, 6374, -266, 5126, 5813, 7666, 5271, 56, 3894, -3685, 5968, 4482, 3806, -772, 5310, 3130, -3853, -4431, 9364, 9137, -8585, 6197, 4723, -4500, -4818, 9887, -4899, 2391, -5208, -9671, -1422, 8939, 54, 8588, -6783, 6888, -7695, -6380, 2983, 7320, -3066, -8946, 7690, 1931, -3018, -2734, -8954, 8375, -6242, -5034, 5898, -9835, 531, 5680, -665, 2060, -1956, -2281, 3511, 1497, 5912, 7142, -1064, 1338, -847, -2847, 1070, -408, 607, -9850, 284, -4694, 5968, -2233, 5270, 4668, 2429, 7175, 7093, 3142, -8874, -9508, -4063, 6507, 7473, 6566, 5453, 7513, -9335, -505, 521, -720, 9617, -8657, 9476, -309, -8098, -3832, -3560, -8181, -5797, 1691, -4554, -48, -9618, -5029, 6951, 8766, -8837, 3558, -4645, 2009, -4276, -7840, -287, -9693, -7750, -4242, -1457, 8985, 8190, -2397, 5180, -2353, -8638, 7190, 2436, -3607, 2254, -7287, 5561, 1709, 6446, 2262, -7505, -2811, -1194, 3429, -146, 9711, 7032, -1867, 7291, 4041, 6310, -6319, 1170, 2896, 1735, 7260, 1759, -2072, 5087, 2740, -5192, -9732, 608, -3426, 147, -6382, 8133, 1936, 6854, -9384, -9857, -4127, -1237, 9792, -1661, 5744, 966, -4073, -638, 9293, 3478, 8760, 8786, 8767, 8670, 1887, -7603, -7851, -913, -2268, -3005, -7633, -4893])
const typedArray15 = new Int8Array([-8985, -3560, 5494, -1389])
const shader15 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray14 = new Float32Array([-6096, 5026, -7153])
const typedArray13 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader14 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader13 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray12 = new Float32Array([452])
const shader12 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray11 = new Float32Array([6982, 3095, 3792, 99, 3306, 777, -6725, -2033, 7647, -4961, 9350, -8349, -9629, 8005, -6258, -8501, 3501, 4452, -2292, -9986, -6993, 3111, -365, 3172, -5965, 497, -8602, 4193, 1410, -380, 8440, 2907, 3621, 2386, 4370, -2973, -9341, 5985, 5433, -5302, -5532, -2955, 1081, -2527, 775, -7435, 7789, 8065, 7705, 2603, -3065, -9222, 3605, -52, -1544, -3453, 947, -8001, -7335, -3384, 4573, -6777, 9362, -1423, -2486, -5876, 3374, -5199, -7956, 4091, -5678, 1257, 894, 4746, 616, -7586, 4704, 1467, 2901, -459, -6445, 6026, 2291, 5498, -5025, 3623, 3853, 1008, 989, 6185, 1239, -8528, -1356, 1589, 322, -8616, 7435, -5644, -4073, 6819, -4479, 4448, -9842, -1223, 3254, 3717, -4816, -8306, -2692, -4993, 1349, 8789, 5401, -276, -596, -7304, -1320, -1545, -9385, 822, -3768, 3372, 9557, -7226])
const shader11 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray10 = new Uint8Array([9099, 1769, -9824, 6364, -5284, -6596, -6132, -723, -3237, 6468, -41, 5773, -7286, -4474, -3203, -2983, 1458, 2035, 3797, -2318, -1183, -2460, 9552, 6799, -4422, -6421, 7208, 9228, 3308, 3681, -8699, -2425, 8801, 6282, 9881, 9838, 2914, 5756, -8824, 6325, 6418, 8881, -7962, -6819, 7563, 865, 2588, 9943, -7906, 484, 5314, 433, -3203, -5923, 8391, -4020, 6150, -4731, -8256, -5242, 6687, 1380, 6742, 4073, 9617, 7305, 924, -924, -3713, 5115, 314, 1233, 3852, 9754, -9723, -5905, 3162, 4433, -1206, -4983, -4262, 9370, -7622, 56, 9116, 4240, -778, -7949, -5472, -7240, -8605, -519, 281, -2337, 5736, 9424, -1978, 4141, 5946, -2225, 4072, -9110, -9545, 4406, -1748, 1393, 6336, -3809, -609, 6933, -6225, 2041, 5445, -2972, -5555, 9001, 8545, 5492, 596, 1449, -159, -2820, 6599, -2778, 383, 7429, 6462, -8352, 5596, 3935, 2291, 4980, 9239, 2075, -2545, -5779, 6378, -4521, -1596, 58, 1538, -6673, 1348, 8569, 5770, -1520, -1548, 5144, -6940, -7124, -4930, -7202, -706, -1046, -6172, 9776, 2644, 377, -4461, 1567, -4915, 6481, -2591, 1275, 1786, -1488, -4147, -2732, -1889, -3068, 9357, -6237, 9124, -4364, -2662, 3020, -9299, 6893, -5416, 3624, 6105, 6040, 534, 4806, 3003, -2988, 133, 9540, 8761, -3147, 4328, -5173, 3167, -9128, 7728, 9236, 796, -5211, -323, -9175, 6084, -2061, 8774, -7434, 1787, 2471, -2572, -9548, -8818, -222, -7624, 2363, 9200, -993, -7017, -5792, -7698, 1985, -2286, -7248, 8247, 9396, 8257, 1371, 3838, -5538, 3084, -7441, 4065, 2799, 1098, 2030, 64, 6307, -3240, -4382, 7117, -7698, -8129, 6357, -1497, -4472, 868, 104])
const shader10 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray9 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray8 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader9 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray7 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray4 = new Float32Array([-2561, -151, 253, -6598, -73, -5308, 9514, 7406, -4480, -8396, -8091, -3934, -2727, -1210, 1893, 6324, 1582, -6521, -5360, -8618, -6561, -1444, -3675, -1186, 5501, 3724, 3949, -365, -1564, 6739, -2039, 5702, 6601, -2872, -6354, -4982, 9331, -77, 7539, -9257, -4733, 5951, -1325, -7, -8775, -6420, -9530, 1723, -7625, -2111, 3170, 644, -5030, 3511, -9414, 9301, 7786, 5693, 6195, -8968, 4658, -9387, -2391, -795, 2512, 4248, 9144, -9345, 7178, -7268, -5000, 5576, -8752, -5568, 9925, 4835, 1917, 890, -2891, -9430, -6474, -2987, -214, -2999, 1224, -3903, -2483, -1557, -5838, -6922, 5430, -2923, 6318, -8208, 9612, 6601, 7918, 5367, -3621, -4487, -2438, -2544, 4188, -2450, 6205, 653, 4468, -5013, -3409, -3843, 621, -2886, 6160, -6987, 182, -2704, 1176, -7742, -6556, 4554, -5030, -9697, -574, 1472, 9347, 5943, 6111, -5569, -5124, -1127, -1709, 5109, 2766, -7626, 7693, -4384, 1139, -7638, 2797, -4165, -3288, 1817, 8122, 4946, 6941, 1241, 474, 1189, 2940, -7434, -7507, 2053, 2887, -5736, 8293, 3069, 2823, 6159, 7511, 9312, -9922, 3567, 2109, -1124, -6479, 7892, -4199, -4828, -2570, 3790, 7978, 1692, -8903, 2621, -7946, 522, 6438, 2671, 5025, 4244, 4340, -7880, -3225, -7560, 6553, 6141, -1201, 4649, 2041, 5778, -1088, -4469, -4244, 7516, 8824, -4777, -853, 7141, -8251, 996, 9132, 9446, 9384, -3009, -5803, 5190, -788, -7311, -9117, 1694, -9711, 7913, -9327, 4827, 8515, 5649, 3568, -2642, -679, -9816, -9445, -3071, -3456, 8092, 1755, -9927, -2819, -8255, -5965, 5063, 8806])
const typedArray3 = new Int8Array([8322, -1384, -6536, -6687])
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray2 = new Int8Array([2296, 1186, -3549, -2574, -5094, -9666, -887, 5416, 7703, 6775, 9611, -7292])
const typedArray1 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader0 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 89,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const string0 = GPUQuerySet0.label
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture0",
        size: {
            width: 1142,
            height: 1004,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView0"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.26587514796186884,
                g: 0.47890698945191534,
                b: 0.39936634785281355,
                a: 0.4489125801682816
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 4252393735,
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline0",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline0);
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8uint",
        label: "GPUTexture1",
        size: {
            width: 290,
            height: 972,
            depthOrArrayLayers: 17
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8uint"]
    });
    const GPUQueue0 = GPUDevice0.queue
    const string1 = GPUQueue0.label
    const GPUAdapterInfo0 = GPUAdapter0.info
    const string2 = await navigator.gpu.getPreferredCanvasFormat();
    const string3 = await navigator.gpu.getPreferredCanvasFormat();
    const string4 = GPUQuerySet0.label
    const string5 = GPURenderPassEncoder0.label
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const string6 = GPUQuerySet0.label
    const GPUShaderModule2 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader2
    });
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader3
    });
    const GPUComputePipeline0 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline0",
        layout: "auto"
    });
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    const string7 = GPUTextureView0.label
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture2",
        size: {
            width: 2514,
            height: 932,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView1 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba8unorm",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.06667994257014831,
                g: 0.1132540735867762,
                b: 0.6386882815663639,
                a: 0.5970051599377952
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView1
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 3222543588,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16uint",
        label: "GPUTexture3",
        size: {
            width: 110,
            height: 1893,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16uint"]
    });
    const string8 = GPUComputePassEncoder0.label
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture4",
        size: {
            width: 499,
            height: 541,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView2 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 9,
        format: "bgra8unorm",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.29096626771390777,
                g: 0.2697562884207123,
                b: 0.45515234384662207,
                a: 0.5153045719849865
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView2,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 2604730296,
        occlusionQuerySet: GPUQuerySet0
    });
    const string9 = GPUDevice0.label
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 110987652,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX
    });
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer0);
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    const string10 = GPUQuerySet0.count
    const string11 = GPUQuerySet0.type
    const GPUAdapterInfo1 = GPUAdapter0.info
    const GPUTextureView3 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView3"
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline1",
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder2.draw(4);
    const GPUAdapterInfo2 = GPUAdapter0.info
    const string12 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue1 = GPUDevice0.queue
    const GPUAdapterInfo3 = GPUAdapter0.info
    const string13 = GPUTextureView2.label
    const string14 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray0);
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
    GPUComputePassEncoder0.dispatchWorkgroups(172, 124, 15);
    const GPUAdapterInfo4 = GPUAdapter0.info
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const string15 = GPUQuerySet0.type
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline2",
        layout: "auto",
        multisample: {
            count: 4
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
    const string16 = GPUComputePassEncoder0.label
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: true,
        size: 75711404,
        usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    });
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const string17 = GPUTextureView0.label
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline3",
        layout: "auto",
        multisample: {
            count: 1
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
    const string18 = GPUCommandEncoder4.label
    const GPUSupportedFeatures0 = GPUAdapter0.features
    const GPUQueue2 = GPUDevice0.queue
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32float",
        label: "GPUTexture5",
        size: {
            width: 274,
            height: 328,
            depthOrArrayLayers: 52
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["r32float"]
    });
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    const string19 = GPURenderPipeline3.label
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.dispatchWorkgroups(42, 198, 32);
    GPURenderPassEncoder0.draw(10);
    const string20 = GPUTextureView3.label
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const string21 = GPUQuerySet0.count
    const GPUTextureView4 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16uint",
        label: "GPUTextureView4"
    });
    const string22 = GPURenderPipeline2.label
    GPUComputePassEncoder0.end();
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline0);
    const string23 = GPUDevice0.label
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture6",
        size: {
            width: 3770,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8sint"]
    });
    const string24 = GPUQuerySet0.label
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader4
    });
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline0);
    const string25 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures1 = GPUDevice0.features
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader5
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray1);
    const GPUBindGroup1 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder1.end();
    const GPUSupportedFeatures2 = GPUDevice0.features
    const GPUComputePassEncoder2 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.end();
    const string26 = GPURenderPipeline1.label
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray2);
    const string27 = GPUQuerySet0.type
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline4",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline4);
    const GPUComputePassEncoder3 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    GPUComputePassEncoder3.end();
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const string28 = GPURenderPipeline3.label
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader6
    });
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures3 = GPUDevice0.features
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline2);
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const string29 = GPURenderPassEncoder1.label
    const string30 = GPURenderPassEncoder2.label
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer0);
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture7",
        size: {
            width: 3654,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8sint"]
    });
    const GPUSupportedLimits1 = GPUDevice0.limits
    const string31 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8uint",
        label: "GPUTexture8",
        size: {
            width: 3766,
            height: 2495,
            depthOrArrayLayers: 52
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8uint"]
    });
    const GPUComputePassEncoder4 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUComputePassEncoder4.end();
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer1 = GPUCommandEncoder3.finish();
    const string32 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePassEncoder5 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline0);
    GPUQueue2.submit([GPUCommandBuffer0]);
    const GPUTextureView5 = GPUTexture6.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8sint",
        label: "GPUTextureView5"
    });
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 56404104,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE
    });
    const string33 = GPURenderPassEncoder1.label
    const string34 = GPUDevice0.label
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const string35 = GPUComputePipeline0.label
    const string36 = GPURenderPassEncoder1.label
    const string37 = GPUDevice0.label
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer4);
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer4);
    const string38 = GPUQuerySet0.count
    const string39 = GPUQuerySet0.label
    const boolean0 = GPUAdapter2.isFallbackAdapter
    const string40 = GPUCommandEncoder1.label
    const string41 = GPUQuerySet0.label
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer4);
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 16, typedArray3);
    const string42 = GPUQuerySet0.label
    const GPUSupportedLimits2 = GPUDevice0.limits
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture9",
        size: {
            width: 4062,
            height: 1347,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const string43 = GPUDevice0.label
    GPUQueue2.writeBuffer(GPUBuffer4, 55985768, typedArray4);
    const boolean1 = GPUAdapter1.isFallbackAdapter
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const string44 = GPUCommandEncoder4.label
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const string45 = GPUDevice0.label
    const GPUSupportedLimits3 = GPUDevice0.limits
    const GPUComputePassEncoder6 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUBindGroupLayout1 = GPUComputePipeline1.getBindGroupLayout(0);
    const string46 = GPUCommandEncoder6.label
    GPURenderPassEncoder1.end();
    GPUQueue0.submit([GPUCommandBuffer1]);
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture10",
        size: {
            width: 2221,
            height: 420,
            depthOrArrayLayers: 12
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView6 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7136612671287239,
                g: 1.9032949496050733,
                b: 0.21982465779939342,
                a: 1.7916015086662993
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView6
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 143619258,
        occlusionQuerySet: GPUQuerySet0
    });
    const string47 = GPURenderPassEncoder3.label
    const string48 = GPUComputePassEncoder6.label
    const string49 = GPUQuerySet0.label
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder3.draw(6);
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer4);
    const GPUBindGroupLayout2 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUTextureView7 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 35,
        baseArrayLayer: 15,
        mipLevelCount: 4,
        baseMipLevel: 3,
        format: "r8uint",
        label: "GPUTextureView7"
    });
    const GPUSupportedFeatures4 = GPUDevice0.features
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUBindGroupLayout3 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: false,
        size: 161376948,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup0);
    const string50 = GPURenderPassEncoder3.label
    const string51 = GPUCommandEncoder6.label
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture11",
        size: {
            width: 397,
            height: 382,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16float"]
    });
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures5 = GPUDevice0.features
    const GPUComputePassEncoder7 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUAdapterInfo5 = GPUAdapter0.info
    const GPUSupportedLimits4 = GPUDevice0.limits
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline5);
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 116252420,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const string52 = GPUDevice0.label
    const GPUSupportedFeatures6 = GPUAdapter0.features
    const string53 = GPUComputePipeline1.label
    const GPUAdapterInfo6 = GPUAdapter1.info
    const string54 = GPUCommandEncoder7.label
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 2388,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const string55 = GPUQuerySet0.label
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 42819112,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const string56 = GPUQuerySet0.label
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule2,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline6",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray5);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const GPUSupportedLimits5 = GPUDevice0.limits
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 3735,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const string57 = GPUCommandEncoder1.label
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture12",
        size: {
            width: 119,
            height: 767,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView8 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView8"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7077869739230065,
                g: 0.08170326315472876,
                b: 1.2337679944936935,
                a: 1.6908147430094453
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView8,
            depthSlice: 13
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 2550625401,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 3586,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const string58 = GPURenderPassEncoder3.label
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader7
    });
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 1629,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
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
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.RED
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule7
        }
    });
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 3389,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPUQueue3 = GPUDevice0.queue
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16sint",
        label: "GPUTexture13",
        size: {
            width: 3307,
            height: 138,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16sint"]
    });
    const string59 = GPUComputePassEncoder6.label
    const GPUTextureView9 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 37,
        baseArrayLayer: 7,
        mipLevelCount: 4,
        baseMipLevel: 3,
        format: "r8uint",
        label: "GPUTextureView9"
    });
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 2585,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    GPURenderPassEncoder3.end();
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline1);
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray6);
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
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder5.dispatchWorkgroups(53, 27, 21);
    const string60 = GPUQuerySet3.label
    GPUComputePassEncoder7.end();
    const GPUCommandBuffer2 = GPUCommandEncoder2.finish();
    GPUQueue0.submit([GPUCommandBuffer2]);
    const string61 = GPUCommandEncoder6.label
    GPURenderPassEncoder4.end();
    const boolean3 = GPUAdapter1.isFallbackAdapter
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "constant"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule7
        }
    });
    const string62 = GPUQuerySet2.label
    GPUComputePassEncoder5.end();
    const GPUAdapterInfo7 = GPUAdapter1.info
    const string63 = GPUQuerySet6.type
    const GPUCommandBuffer3 = GPUCommandEncoder5.finish();
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray7);
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
    const string64 = GPUQuerySet5.count
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture14",
        size: {
            width: 546,
            height: 587,
            depthOrArrayLayers: 7
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView10 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6512926557875596,
                g: 0.3972139096756504,
                b: 1.8530160701394947,
                a: 1.1708950444186452
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView10,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 4256897935,
        occlusionQuerySet: GPUQuerySet6
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline8);
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader8
    });
    const string65 = GPURenderPassEncoder5.label
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture15",
        size: {
            width: 53,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer0);
    const string66 = GPURenderPipeline9.label
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader9
    });
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const boolean4 = GPUAdapter0.isFallbackAdapter
    const string67 = GPUDevice0.label
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture16",
        size: {
            width: 1501,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture17",
        size: {
            width: 225,
            height: 707,
            depthOrArrayLayers: 31
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    GPUQueue2.submit([GPUCommandBuffer3]);
    const string68 = GPUCommandEncoder7.label
    const GPUQueue4 = GPUDevice0.queue
    const GPUSupportedLimits6 = GPUDevice0.limits
    const string69 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandBuffer4 = GPUCommandEncoder7.finish();
    GPUQueue3.submit([GPUCommandBuffer4]);
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline5);
    const GPUQueue5 = GPUDevice0.queue
    GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer0);
    const string70 = GPUQuerySet2.type
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUSupportedLimits7 = GPUAdapter3.limits
    const boolean5 = GPUAdapter0.isFallbackAdapter
    const string71 = GPUQuerySet1.type
    const string72 = GPURenderPassEncoder5.label
    const string73 = GPUComputePipeline1.label
    GPUComputePassEncoder6.end();
    const GPUCommandBuffer5 = GPUCommandEncoder6.finish();
    const GPUBindGroupLayout4 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUComputePassEncoder8 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray8);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    GPURenderPassEncoder5.end();
    const GPUCommandBuffer6 = GPUCommandEncoder1.finish();
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray9);
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
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup4);
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 2807,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const string74 = GPUDevice0.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup1);
    const GPUQueue6 = GPUDevice0.queue
    const string75 = GPUQuerySet3.count
    GPUQueue0.submit([GPUCommandBuffer5]);
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture18",
        size: {
            width: 676,
            height: 337,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView11 = GPUTexture18.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.92312497179618,
                g: 1.8300435127454502,
                b: 0.046741076339941845,
                a: 0.16897305839309218
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView11,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 1692584470,
        occlusionQuerySet: GPUQuerySet4
    });
    const string76 = GPURenderPassEncoder6.label
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader10
    });
    const GPUTextureView12 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "r32float",
        label: "GPUTextureView12"
    });
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const string77 = GPUQuerySet3.type
    GPUQueue3.writeBuffer(GPUBuffer4, 52672648, typedArray10);
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture19",
        size: {
            width: 927,
            height: 811,
            depthOrArrayLayers: 29
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView13 = GPUTexture19.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.14257512841624442,
                g: 1.3105963649919556,
                b: 0.11639162746395826,
                a: 0.9696318943503932
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView13,
            depthSlice: 14
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 2733149137,
        occlusionQuerySet: GPUQuerySet2
    });
    const string78 = GPURenderPassEncoder6.label
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "src-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline10);
    GPURenderPassEncoder6.draw(4);
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const string79 = GPUComputePassEncoder8.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup6);
    const string80 = GPUQuerySet5.type
    GPUComputePassEncoder8.end();
    GPURenderPassEncoder7.end();
    const GPUCommandBuffer7 = GPUCommandEncoder4.finish();
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader11
    });
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
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
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.RED
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const string81 = GPUQuerySet3.count
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder9 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline1);
    const GPUTextureView14 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 2,
        format: "bgra8unorm",
        label: "GPUTextureView14"
    });
    GPUQueue2.writeBuffer(GPUBuffer4, 44736868, typedArray11);
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline10);
    const string82 = GPUComputePassEncoder9.label
    GPURenderPassEncoder6.end();
    const GPUCommandBuffer8 = GPUCommandEncoder8.finish();
    const string83 = GPURenderPipeline2.label
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader12
    });
    const string84 = GPUCommandEncoder10.label
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline2);
    const GPUSupportedLimits8 = GPUDevice0.limits
    const string85 = GPUTextureView6.label
    GPUQueue6.writeBuffer(GPUBuffer1, 24, typedArray12);
    const GPUSupportedFeatures7 = GPUAdapter0.features
    const GPUTextureView15 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView15"
    });
    const string86 = GPUCommandEncoder9.label
    const GPUSupportedFeatures8 = GPUDevice0.features
    const string87 = GPUQueue4.label
    const GPUTextureView16 = GPUTexture6.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8sint",
        label: "GPUTextureView16"
    });
    const GPUSupportedLimits9 = GPUDevice0.limits
    const GPUTextureView17 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r32float",
        label: "GPUTextureView17"
    });
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline3);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder9.dispatchWorkgroups(161, 10, 21);
    const string88 = GPUComputePassEncoder9.label
    GPUComputePassEncoder9.end();
    const GPUCommandBuffer9 = GPUCommandEncoder10.finish();
    const string89 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures9 = GPUAdapter3.features
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture20",
        size: {
            width: 1021,
            height: 427,
            depthOrArrayLayers: 13
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView18 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba16float",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.34977610494768707,
                g: 1.25065194328772,
                b: 1.2286750852976707,
                a: 0.862502341948026
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 3046559155,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
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
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline12);
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: true,
        size: 98718012,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC
    });
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string90 = GPUQuerySet1.count
    GPURenderPassEncoder8.draw(6);
    const string91 = GPURenderPipeline2.label
    const string92 = GPUTextureView8.label
    const boolean6 = GPUAdapter4.isFallbackAdapter
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg32float",
        label: "GPUTexture21",
        size: {
            width: 877,
            height: 94,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg32float"]
    });
    const GPUBindGroupLayout5 = GPUComputePipeline0.getBindGroupLayout(0);
    const string93 = GPUQuerySet4.label
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
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
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.BLUE
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    const string94 = GPUQuerySet0.type
    const string95 = GPUQueue1.label
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8uint",
        label: "GPUTexture22",
        size: {
            width: 3215,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8uint"]
    });
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 1065,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 2996,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUSupportedFeatures10 = GPUDevice0.features
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePassEncoder10 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    const boolean7 = GPUAdapter0.isFallbackAdapter
    const GPUBindGroupLayout6 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUQueue7 = GPUDevice0.queue
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline3);
    const GPUSupportedLimits10 = GPUAdapter3.limits
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 1315,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const GPUQueue8 = GPUDevice0.queue
    GPUQueue6.submit([GPUCommandBuffer9]);
    const string96 = GPUComputePassEncoder10.label
    GPUComputePassEncoder10.end();
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const GPUComputePassEncoder11 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline12);
    const string97 = GPUQuerySet7.type
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer0);
    const string98 = GPUQuerySet5.count
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline12);
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string99 = GPUQuerySet4.label
    const boolean8 = GPUAdapter5.isFallbackAdapter
    const string100 = GPUComputePassEncoder11.label
    const string101 = GPUQuerySet0.type
    const WGSLLanguageFeatures11 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline15",
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
            module: GPUShaderModule6
        }
    });
    const GPURenderPipeline16 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline16",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule7
        }
    });
    const WGSLLanguageFeatures12 = navigator.gpu.wgslLanguageFeatures
    const GPUShaderModule14 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader14
    });
    const string102 = GPUQuerySet0.count
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const WGSLLanguageFeatures13 = navigator.gpu.wgslLanguageFeatures
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture23",
        size: {
            width: 145,
            height: 1089,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView19 = GPUTexture23.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba16float",
        label: "GPUTextureView19"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.570391583070706,
                g: 1.11296294624216,
                b: 1.7994101494971348,
                a: 1.5095028806138568
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView19
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 1981078352,
        occlusionQuerySet: GPUQuerySet7
    });
    GPUComputePassEncoder11.end();
    GPUQueue7.submit([GPUCommandBuffer8]);
    const string103 = GPUComputePipeline0.label
    const GPUAdapterInfo8 = GPUAdapter1.info
    const GPUComputePassEncoder12 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    GPURenderPassEncoder8.draw(5);
    const string104 = GPUComputePipeline2.label
    const string105 = GPUCommandEncoder14.label
    const string106 = GPUComputePassEncoder12.label
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup2);
    const GPUBindGroupLayout7 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "GPUTexture24",
        size: {
            width: 1384,
            height: 222,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const string107 = GPUQuerySet3.count
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 124,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const string108 = GPUComputePipeline4.label
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline0);
    const GPUSupportedLimits11 = GPUDevice0.limits
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline4);
    GPUQueue8.writeBuffer(GPUBuffer1, 0, typedArray13);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder12.dispatchWorkgroups(165, 121, 53);
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 3723,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const WGSLLanguageFeatures14 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline17 = GPUDevice0.createRenderPipeline({
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
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline17",
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
    const string109 = GPURenderPassEncoder9.label
    const string110 = GPUQuerySet2.count
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string111 = GPURenderPipeline10.label
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline1);
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string112 = GPUQuerySet8.type
    const GPUSupportedLimits12 = GPUAdapter7.limits
    const GPUQueue9 = GPUDevice0.queue
    const GPUSupportedFeatures11 = GPUAdapter4.features
    GPUQueue4.submit([GPUCommandBuffer6]);
    const GPURenderPipeline18 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule12,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline18",
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
            module: GPUShaderModule6
        }
    });
    const string113 = GPUCommandEncoder13.label
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup3);
    const GPUCommandBuffer10 = GPUCommandEncoder14.finish();
    GPUQueue3.writeBuffer(GPUBuffer1, 4, typedArray14);
    const WGSLLanguageFeatures15 = navigator.gpu.wgslLanguageFeatures
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "stencil8",
        label: "GPUTexture25",
        size: {
            width: 2027,
            height: 337,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["stencil8"]
    });
    const GPUQueue10 = GPUDevice0.queue
    const GPUAdapterInfo9 = GPUAdapter7.info
    const GPUSupportedFeatures12 = GPUDevice0.features
    const GPUQueue11 = GPUDevice0.queue
    const string114 = GPUCommandEncoder13.label
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline12);
    const string115 = GPUTextureView5.label
    const GPUSupportedLimits13 = GPUAdapter9.limits
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture26",
        size: {
            width: 1790,
            height: 3759,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView20 = GPUTexture26.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8558018938459038,
                g: 0.7692564171786627,
                b: 0.9903502403755557,
                a: 0.9314273973931384
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView20
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 751977264,
        occlusionQuerySet: GPUQuerySet6
    });
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer1);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder12.dispatchWorkgroups(252, 36, 27);
    const string116 = GPUQuerySet6.type
    GPUQueue3.submit([GPUCommandBuffer10]);
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture27",
        size: {
            width: 258,
            height: 74,
            depthOrArrayLayers: 53
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView21 = GPUTexture27.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r8unorm",
        label: "GPUTextureView21"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9367429318459062,
                g: 0.47884964393420804,
                b: 0.37830293188927433,
                a: 1.545259483182625
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView21,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 2014345791,
        occlusionQuerySet: GPUQuerySet4
    });
    const string117 = GPUCommandEncoder12.label
    const GPUBindGroupLayout8 = GPUComputePipeline5.getBindGroupLayout(0);
    GPURenderPassEncoder8.end();
    const string118 = GPURenderPassEncoder9.label
    const GPUShaderModule15 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader15
    });
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer0);
    const string119 = GPUQuerySet10.count
    const string120 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline17);
    GPURenderPassEncoder10.draw(3);
    const WGSLLanguageFeatures16 = navigator.gpu.wgslLanguageFeatures
    GPUQueue0.writeBuffer(GPUBuffer1, 28, typedArray15);
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUSupportedFeatures13 = GPUAdapter7.features
    GPUQueue9.submit([GPUCommandBuffer7]);
    const string121 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTextureView22 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView22"
    });
    const string122 = GPUComputePipeline0.label
    GPUQueue6.writeBuffer(GPUBuffer4, 54390732, typedArray16);
    GPUQueue2.writeBuffer(GPUBuffer4, 22939688, typedArray17);
    const GPUShaderModule16 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader16
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline5);
    const GPUQueue12 = GPUDevice0.queue
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 2072,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPURenderPipeline19 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline19",
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
    const GPUAdapterInfo10 = GPUAdapter3.info
    const GPUSupportedLimits14 = GPUAdapter0.limits
    GPUQueue12.writeBuffer(GPUBuffer1, 24, typedArray18);
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer1);
    const GPURenderPipeline20 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline20",
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline20);
    GPURenderPassEncoder11.draw(7);
    const string123 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder12.end();
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer4);
    const string124 = GPURenderPipeline3.label
    const string125 = GPUTextureView13.label
    GPURenderPassEncoder10.draw(3);
    GPUQueue11.writeBuffer(GPUBuffer1, 0, typedArray19);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    const GPUQueue13 = GPUDevice0.queue
    const string126 = GPUQuerySet11.type
    const string127 = GPUQuerySet10.type
    GPUQueue8.writeBuffer(GPUBuffer1, 28, typedArray20);
    const GPUBindGroupLayout9 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUComputePassEncoder13 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup5);
    const GPUBindGroupLayout10 = GPUComputePipeline6.getBindGroupLayout(0);
    const string128 = GPUQueue11.label
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus",
        label: "GPUTexture28",
        size: {
            width: 3234,
            height: 2843,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["depth24plus"]
    });
    const string129 = GPUQuerySet1.label
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedLimits15 = GPUDevice0.limits
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 4036,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    GPURenderPassEncoder10.end();
    const GPUQueue14 = GPUDevice0.queue
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUCommandBuffer11 = GPUCommandEncoder13.finish();
    GPUQueue7.submit([GPUCommandBuffer11]);
    const string130 = GPUQuerySet12.type
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUComputePassEncoder13.end();
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer0);
    const string131 = GPUTextureView20.label
    const string132 = GPUQuerySet9.count
    const GPUComputePassEncoder14 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const boolean9 = GPUAdapter8.isFallbackAdapter
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUSupportedFeatures14 = GPUDevice0.features
    const string133 = GPUQuerySet9.type
    const WGSLLanguageFeatures17 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline20);
    const string134 = GPURenderPipeline7.label
    const GPUSupportedLimits16 = GPUDevice0.limits
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup2);
    const string135 = GPURenderPassEncoder9.label
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const GPUAdapterInfo11 = GPUAdapter6.info
    const GPUShaderModule17 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader17
    });
    const GPUSupportedLimits17 = GPUDevice0.limits
    GPURenderPassEncoder9.end();
    const GPUComputePassEncoder15 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray21);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
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
    GPURenderPassEncoder11.end();
    const string136 = GPUQueue4.label
    const GPUComputePassEncoder16 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    const string137 = GPURenderPipeline0.label
    const GPUTexture29 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture29",
        size: {
            width: 3411,
            height: 4,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView23 = GPUTexture29.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8726247361019566,
                g: 1.8125939320405886,
                b: 1.5121030615006925,
                a: 1.2493689217471742
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 3341603023,
        occlusionQuerySet: GPUQuerySet6
    });
    GPURenderPassEncoder12.end();
    const string138 = GPUQueue6.label
    const string139 = GPUQuerySet13.count
    const GPUBindGroupLayout11 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPURenderPipeline21 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "zero"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline21",
        layout: "auto",
        multisample: {
            count: 1
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
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule9
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const string140 = GPUComputePassEncoder14.label
    const GPUTexture30 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture30",
        size: {
            width: 3922,
            height: 2848,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView24 = GPUTexture30.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView24"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8403109692402411,
                g: 1.0700370820559955,
                b: 0.9355194852366917,
                a: 0.7222978369618271
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView24
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 4246834669,
        occlusionQuerySet: GPUQuerySet13
    });
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer4);
    const string141 = GPUComputePipeline6.label
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const string142 = GPUCommandEncoder9.label
    const string143 = GPURenderPipeline6.label
    const boolean10 = GPUAdapter9.isFallbackAdapter

}
main().catch(console.error);