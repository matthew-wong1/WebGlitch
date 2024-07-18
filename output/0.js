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
main().catch(console.error); // Seed: 4038770604868661149
const typedArray24 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader14 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray23 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader13 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray21 = new Int8Array([3728, 7176, -9205, -1434, -2741, 759, -5621, -122, -6271, 3238, 3805, -5233, 3771, -5045, -2485, -4461, 8999, 5202, 2066, -9582, -2433, -8744, 4981, 3761, 5946, -8, 2002, -4305, -3598, -3870, 6348, 1684, -8769, 5132, 10, -8760, 4278, 1034, 6838, -9610, -9719, 5346, 6259, 9667, 958, -7940, 5932, -3379, -4216, 4073, -3929, 1214, 782, 5772, -4941, -7144, -2951, 427, -1413, -2453, 3493, 2743, -9131, -357, 2337, -9640, 8957, -361, 6858, -8114, 5776, -6928, 4060, -3754, 4267, 7195, 8060, 2362, 7008, -2348, -6846, -639, 965, -2398, 4754, 249, -1882, -7831, 5399, -5030, 1616, -2870, -5370, 2239, -4419, -3277, 5009, -8653, -464, -3795, 2873, -5446, -5693, 5727, -2836, 3653, 3927, -7485, 6095, -4092, -907, 8963, 5620, -3153, -8041, -8032, 6369, -7951, 1453, 8695, -649, -5382, -2951, 2457, 2215, 6294, -9614, 7376, -3205, 9651, 1092, 7206, 9940, -1588, -3265, -7112, 4114, 1933, 4828, 1472, -3559, -8859, -3482, 4575, -2092, 8960, 7482, -5334, -5048, -9705, 5848, 8171, 8911, 9792, 6556, 4840, 3018, 9711, -8332, 2229, -5998, -3338, 6896, -5059, 9159, 5259, -5258, -8156, -3373, -3566, 1683, -957, -9032, -1272, -9984, 8700, 2841, -5775, 8889, -597, -694, 1889, -8222, 5057, 931, 8257, -6845, 9802, -868, -7057, 8858, 9229, -2011, 7782, 5176, 9981, -209, 9590, 7972, -9289, 3846, 5178, 1130, 788, -9052, 8290, 6597, -9942, 5745, -9713, -6321, 7835, -7950, -5185, 9436, 5885, -8511, 7500, -5982, -5895, -4060, 5073, -4076, -5887, -1665, -2514, 9106, 2006, -8408, -7242, 8079, -230, 6336, -6990, 935, -2038, 2404, 9899, 9568, 5206, -416, 7252, -823, -4552, 8267, 8232, 4884, 3851, 8691, -1955, 5302, 9131, -7310, -7866, -9192, -6035, -9197, -5391, 1330, 8582, -3088, -9658, -6081, -1882, -7955, -8979, -4473, 495, 2550, 7322, 3129, -6595, -4778, 2506, -1226, -9407, 6566, -9941, 8635, 6784, 6128, 307, -3060, 9906, -126, 8239, 700, 1259, 9386, 1762, -2544, -6765, -2344, 5022, -1661, -3169, 8381, 7963, 1603, -8915, 7809, 9278, -9394, -897, -8755, -2275, 2139, 2258, -8098, 7432, -7072, -8756, -4399, 5868, 8306, -2997, -9408, 9709, 1768, 4700, 3374, 6600, 2678, -3193, 7369, 9869, -4823, 3026, 7378, -7957, -7601, 3672, -7098, 1746, -1350, -1488, 6362, 5253, -8298, 9818, -6629, -7940, 1654, -2566, 746, 1127, 5913, -1036, -1268, 9214, 8466, -5473, 1075, 4670, 6444, 6954, 5391, 5995, -5850, 3216, 2359, 9847, 8303, -6056, -1033, 4342, -4934, 6361, -8653, -5651, 5898, -1255, 3738, -2454, 4785, -6969, 7115, 500, -1256, -3576, 9731, 838, -5506, 9243, -9358, 7592, 7466, -3264, -5034, -4284, -5449, 140, 6053, 3066, 1252, 8192, 1581, -6223, 3786, -5814, 8706, -6207, -2713, -6357, -7426, -22, 4543, 2481, 1999, -4537, -8567, 6783, 3269, 2353, -5039, -1556, -4541, -432, 1884, -5623, -7500, 7293, 4503, -5081, -3530, 2354, 6640, 469, 1301, -9531, -8860, 1350, -9535, 9691, 3489, -4164, -1208, -3027, -6499, -9661, -9275, -4049, 6690, 9166, -6329, 8415, -8627, -6876, -5924, 6195, -1943, -9525, 2623, -5750, 5076, -3360, 8444, 2723, -3555, -9580, -9139, -9166, -8406, -69, 3687, -355, 3220, 9453, 504, -2531, 3025, 7739, 4071, -2638, 6517, -3562, -4282, -8791, 141, -485, -2965, -5598, -6898, 5239, 4871, -2557, 5080, -399, 7333, -7671, 4981, -1736, 4408, -2389, 4786, -4876])
const shader12 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray20 = new Int8Array([5025, -638, -5694, -2675, 2833, -2702, 8545, 6163, 9212, -2857, 7656, 2687, -608, 2084, 4661, -5388, -9298, -6114, 6524, 199, -1233, -5684, 709, -7713, -171, -1873, 7675, -8311, -2283, 4531, -2720, -4983, -8467, 701, 2600, 589])
const shader11 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray19 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader10 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray18 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray17 = new Int8Array([6051, 6668, -5996, -808])
const typedArray16 = new Int8Array([-7164, -2982, -5568, 3774, -3814, 6003, 8218, -8704, 6830, 4646, -4546, 9275, 2866, -1828, -4112, 3046, 5575, -9331, -9328, 5385, -6371, 3314, -3371, -5845, 2743, 4346, 6657, -6197, -3812, -8355, -8481, -2560, -2750, 1380, -3597, -9561, -7220, 3029, -8629, -5122, -7248, 3324, -8565, 2487, 3463, 3182, 8402, 2049, -5990, 9386, 2271, -5027, -6881, -7197, 9533, -7082, 1403, 9199, 187, -2338, 496, 6540, -7772, 1224, -9935, 7615, -5449, -7418, -4101, 2217, 8827, 8141, 5866, -4501, 6811, -6534, 2371, 9019, 8773, 5090, -895, 8945, -4356, -8247, 424, 9910, 2969, -760, -5153, 5789, -2618, -8296, -8186, 4040, -279, 2397, 8608, 1269, -7351, -4505, 9774, 7375, 6781, -6501, 2241, -4824, 9535, -7749, -8249, 1968, -3110, -436, 5370, -165, -9351, 2942, -6407, -5695, 8071, -3048, 9370, -6731, -9714, -9599, 4496, -8061, 5785, -9508, -6064, -301, -6260, -2845, 2866, 2615, 1863, -7464, -9989, -55, -6571, -477, -7104, 1738, 5158, 5839, -3019, 7300, 8307, 5094, -2482, 6580, -9708, -760, -252, -6859, 7666, -7872, -406, -8498, 8174, 3762, 949, 3052, 3002, 6757, -6343, -3526, 9086, 5177, -2923, 7236, 5237, 7246, -6562, -8651, 6022, 5493, 9236, 7232, -4961, 2488])
const shader9 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray15 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray13 = new Int8Array([-2685, -7083, 7020, -7289, 4359, 6902, 8085, 361, -2050, 3504, -7242, 414, 2332, 496, -8302, -1696, 9054, 7927, 559, -7168, -8503, -4277, -5310, -6816, 5362, -4159, 6009, -3208, -7225, -5372, -6086, 2674, -9412, -8610, 7044, 6584, 2148, 5536, 2143, 6054, -8210, -4849, -1684, 6162, 4826, 1006, -3558, 7187, -896, -6055, 9070, 5629, 7700, 9161, -2155, -4993, -6628, 2052, 7534, -7170, -146, -1360, -6316, 9129, 8834, 5954, 5814, 7767, -2184, 9223, 1035, -2260, -9273, 6963, 2320, 8058, 857, -7663, -5746, -2763, 3815, 5598, -1342, 5488, 945, -6762, 7694, 7434, -4759, -6204, 4536, 9673, 5591, 9946, 2801, -7820, 5568, 8611, 3292, -8451, 3959, -5160, 4431, -7628, -9522, 3276, 402, -2007, 9903, -750, 3357, -828, -4744, -1863, 5259, -865, -9649, -6487, -3232, -2270, 1456, -627, -5690, -1900, 1774, -2190, -5991, 1132, 3715, 2344, -457, -4061, -3728, -8364, -2834, -9105, -4866, -489, -3255, -7630, -41, 470, -7167, 2079, 1223, -7104, -4402, -7727, -9902, -9270, 1244, -949, 6501, 7595, -6519, 8477, -6683, 5493, -6999, -7798, -8170, -6420, 7700, 6028, -3084, 2672, -1318, -5433, 4031, -2760, 6804, -4195, 1001, 8025, -4387, -5703, 4782, -6213, -1226, -7275, 1287, -6620, -9223, -6581, -2468, -3838, -117, -4262, -1331, -3523, 4454, -5597, 7627, -8730, -6366, 6065, 1543, -7385, -2380, -4069, 7504, -3963, -6125, -6132, 5536, -8065, 7261, -1579, -7594, -7383, 3496, -8622, 6410, -1653, 3393, -7048, -9135, -9333, -5767, -9015, 8829, 2689, -6947, 2910, 6702, -3473, 249, 6911, -6512, -2535, 4383, -7892, 5226, 9801, -5351, -3507, 4402, -6703, 1042, -5854, 9072, 4395, 2615, 265, 4821, 6396, 7977, -6929, -9982, 955, 4153, -556, -1766, -7391, -7697, 9006, -2813, 7251, 788, 7228, -3497, -7746, 5135, 6230, -2851, -6658, -7899, -7253, 9655, -9844, 7860, 4549, -1805, 6798, 6104, 8450, -8710, 4358, -738, -6273, 4601, -8164, 7033, -8942, 7742, -6066, -49, 6360, -409, 6346, 9331, 6801, -8137, -2103, 268, 4213, 5865, 5996, -5894, 8834, 9913, 9459, -103, 2308, 8540, 1722, -8915, -6355, -4909, 5878, -3299, 1438, 5163, -1393, 5963, -9053, -6572, 3580, 5845, -1013, -7447, 4449, 1703, -6860])
const typedArray12 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray11 = new Int8Array([-2420, 3735, 939, -8090, -8072, -5972, 2455, -3618, 1713, -3368, 9809, -8101, 8728, 7945, -3575, -565, -892, 8269, -280, 5079, -4903, 5714, -4268, -9698, -1908, 13, -5512, -3219, -5986, -6773, -9551, -3083, -4321, 5890, -9594, 1729, 9340, 9500, 8904, 8168, 9640, 4820, 7192, 7896, 7050, -6687, 7724, 35, 2551, -5830, 961, 1802, -2744, -2708, -6263, -3392, -6126, 9403, -3319, -4846, -3695, -8060, 3314, -2317, 2856, -815, 49, 6762, 7134, -2853, -6026, -5423, -5015, 1222, 777, -197, 129, -900, 9913, -9867, -8247, -3611, -8961, -7198, 2385, 8121, -5451, 7965, 8916, 995, 8784, -5505, 5154, -1647, -643, 9506, 2621, 9670, -1022, -987, -1803, -8122, -3831, 8914, -5463, 2056, -3551, -8371, 3234, -9126, 901, 4809, 7495, -7027, 2422, 4404, 2892, 4356, -1733, 4080, -6762, 3459, -3536, 8445, 9023, 7157, -8689, -2194, -2677, 9005, 66, 2461, -7902, -9804, -9570, 7546, -3573, -9004, 6906, 1893, 643, -6092, -374, 1889, 2356, -7154, 2856, -6582, -6052, -6254, -1625, 5648, 1659, 6303, 9216, -8197, 2530, -1519, 6505, 3006, -2918, -1485, -3825, -9434, 5240, -9057, -330, -1028, -6154, 4972, -8133, -5591, -6395, -9317, 4071, -2607, 969, -9983, -9045, 2436, 1212, -6676, -9603, 6684, -9820, 7318, -1505, 5457, 553, 4541, 106, 729, 5693, -3004, -4975, -39, 2829, -109, -6933, 2860, -6642, 5292, -1258, 787, -7847, -361, 2485, 7417, -3365, 5160, -9232, 5110, 3045, 2230, -1162, 6968, 1279, 2900, -1480, -3850, 6768, 183, -4575, -2363, -6034, -3775, 2716, -2705, -97, 3990, -5866, -8586, -6619, -8471, -8132, 1840, -7122, 5135, 5490, -2376, 4127, -7087, 7908, 4976, 970, 3598, -9954, -4011, -9131, -831, 3913, 3895, -5446, 7794, -4317, -128, -2504, 5356, 3563, -7030, -2111, 2940, 3919, -8112, 4701, -2981, 8264, -6738, -1752, 4923, -1158, 1513, 5144, -9493, 948, 4268, 4617, -4698, 4761, -6721, -13, -7988, -7214, 505, -5103, 2395, 2822, -8923, -7913, 3938, 9515, -9185, 5333, 3455, 1427, -5787, -1169, 4325, -1769, 5101, 5594, 6526, -6644, 8605, -6337, 6062, -4689, 7190, -7653, -7911, 1704, 5361, 8610, 3271, -2619, 6927, 4084, -530, -2452, -4870, -4064, -4555, -6205, -6514, -3506, -782, -9202, -4418, -6700, -7456, -9858, 375, 5086, 8550, -8239, 486, -928, 1698, 4056, -4010, 7773, -9487, -554, -9753, 241, 3059, 8045, -5743, 5848, 3443, 9223, 75, -6801, 6652, 175, 4745, 2936, -6478, 6645, 1785, -4067, 5991, -1311, 6573, -1449, 679, -3564, -901, 348, 1444, 6028, -7363, -4341, -7289, -1827, 7401, -9034, -2932, 8493, -3885, -1576, -7629, -1861, -7191, -5464, 5179, -1215, -9763, -4446, 1571, -5034, 4099, 7453, -9481, 4749, -7671])
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray9 = new Uint8Array([9118, 5521, -2102, -9778, 6966, 2471, 651, -7634, -8553, 8497, -7788, 8117, 9856, -7737, -9709, -1126, 7622, -3009, 8287, -59, 7499, 3305, -356, 6583, -3118, -2411, -8226, -4036, -4309, 6624, -3962, -1346, -9051, -7970, -5760, 7335, 4078, 8578, 9802, -9531, -3817, -3481, -8703, 5800, 1107, -4601, 4908, -6641, 2497, 6353, 3454, 6941, 9606, -4205, 5872, 8276, 890, -1583, -9850, -7843, -2706, 3604, -5470, -2304, 705, 8784, -4214, 2319, 5243, -3449, 9678, -7525, 7075, -2476, -3597, -5475, 8931, 7954, 7425, -5791, 5419, -4231, -7824, 9533, -6903, -7419, 8565, -1773, 3188, 9686, -2837, 1856, -7230, 1814, 1939, 8408, 7228, 6450, -7392, 9815, -2995, 1147, -3173, 7278, -9438, 7984, -5701, -2693, 6776, 1787, 2129, -8736, 6811, -1057, 4588, 9859, 5820, 2116, 9210, -5499, -2507, -9379, -1433, 388, 6958, -9215, -7170, 3856, -2338, 5122, -1176, 2895])
const typedArray8 = new Float32Array([3380, 3364, 4441, -1098, -9685, -9107, -5338, -2311, 6884, 8582, 4937, 7687, -8780, -8114, 7210, 7242, -2733, -8458, -4906, -3381, 6353, -9583, 9122, -3091, 5333, -7610, -8816, -5416, 7657, 3224, 507, -1004, 1242, -3388, 6112, 9160, 2690, -5258, -6485, 7994, -3501, 7997, -4615, 6306, -1344, 1976, -3523, -65, 9964, 8832, 2111, 3605, 697, -75, -3610, -9005, 2885, -8479, -2877, -290, -2270, 2152, 8825, 9420, 2341, -1820, -8104, -1666, -3999, -8355, 4737, -9060, 3352, 5413, -8095, -2287, 6496, 9334, 7380, -2166, -5160, -8952, -108, 4657, 9558, -9310, -8127, -7787, 6544, 2297, -8778, 8182, 7522, 5424, -6705, 8772, 3387, 7358, 7461, -909, 6475, 6367, 9769, 8188, -7653, 7039, -4297, -2292, -9298, 7796, -3047, 5601, 9827, 8513, 3177, 1964, 6085, -6445, 8464, -6631, -589, 366, -1234, 4725, -3172, 8732, -3246, -663, -5159, 7390, -9193, 6239, -1257, -6810, 32, -5512, -2028, 780, 1777, 7912, 3304, 3716, -4054, 306, -4627, -4831, 2686, -3795, 6551, 3264, -8628, -8681, -1199, -9322, -3507, 3411, 1022, 6317, -835, -5508, 4037, 8531, 8857, 9944, 8843, 5021, -4419, 7610, -9202, -7534, 677, -7376, -7764, -6191, 4662, -3435, 4159, -4931, -2183, 3099, -7805, 4240, 1793, -6185, 7559, 5948, -825, -2873, 7972, 9414, 4832, -1118, -1380, -7236, 7368, -8169, 7411, 8321, -2805, -44, -5727, -4676, -7137, 9684, -4024, -4239, 5669, 2152, 5437, -5401, 9550, -1236, -473, 216, 5969, 8400, 8110, -4078, 4255, -6052, 1254, -7316, -7128, -2916, -6161, -1, 3745, 2810, 2372, -6104])
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray7 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray6 = new Uint8Array([-6076, -7525, -6587, 5832, -877, 2607, -8205, 9766, 641, -1397, 3534, 7254, 9186, 254, -316, -7456, -1680, -5513, 9903, -1790, -4948, -7365, -3407, -7332, 4555, 1284, -4898, -1027, -952, -9134, -6299, 8612, 5397, 7154, 9830, -7996, 1353, -8529, -3644, -3167, 3017, 411, -8769, -5754, -5277, 2475, 3899, -4351, -9603, 2712, 148, 374, -4566, -9439, 8012, -9419, -4860, -9713, 6514, 6973, -1546, 5055, -6254, 3825, -5413, 7407, -4691, 3508, -686, -2022, -3548, -6079, -9228, -6033, -1556, -1125, 9241, 8508, 6428, -9687, 6668, -5508, 6281, 6571, 3484, -1968, -9361, 4637, -6754, -8775, 1850, -3504, -9551, -6160, -2296, -2940, -7027, 9817, 879, -4604, -8211, 142, 9434, 7301, -5890, 73, 7380, -6174, 5532, 8746, 5263, -2890, -9130, -8799, 7723, -5508, -8623, 4689, 1668, 8551, -9717, 1395, -2522, 1320, 3762, -5649, 8520, -234, 9448, -1868, 7673, -8229, -3704, 6952, 1601, -1839, -4205, 2186, -7299, 8481, -9189, 441, -7698, 2886, -3171, 2046, -2602, 391, 698, -7776, -4807, 9266, 2029, -4898, 4367, 5643, 5840, 5436, -9520, -2297, -7151, -8372, -9920, 5135, -6771, -9133, -29, 6767, 8644, 5859, 5237, 3538, 2006, -5966, 6915, -7156, 4775, 6916, -922, 1621, 3211, -6409, 8571, -130, -9063, 7806, -3693, -6751, 8590, 2982, -674, 5014, -2382, -4116, 6526, 2061, 5316, 8086, -3356, -1291, 960, -1763, 9548, 7230, 9543, 2517, 1834, 5599, 9983, -5897, 3864, -672, -9217, -2036, 8232, 9356, -1870, -4918, 4903, 1890, 7128, 3269, 4555, -3066, -10000, -1918, -6068, -5531, -5090, -8119, 2767, -11, -1949, -5203, -5814, -8022, -1303, -2217, 6707, -6257, 9521, 7082, 1874, 3367, -9993, 1714, 7304, -9591, -8648, 4763, 1096, 6334, 9484, -4948, -20, 7005, 6213, -8756, -5061, -7909, 9153, 6259, -7701, -3479, -5992, -8755, -7903, 85, -1957, -3934, 6296, -6103, -4749, -8744, -9251, 2486, -7986, -2760, -8475, -2919, 291, 6211, 8561, 4314, -5332, 1082, -956, 130, -7914, 9038, -4225, -4577, 2976, -790, -4626, -320, 963, -6166, 4872, -2237, 6860, 9429, -8783, -1911, -5279, 3270, 282, -925, 8391, -9410, 5798, 3732, 413, -8155, 5037, -5128, -9940, -7931, 5817, -7547, -9977, 9507, 1076, 3837, -7705, 8369, 7977, -3274, 1173, 3668, -7986, -5976, 799, -3888, -6435, -2596, -4022, -650, 7820, -8046, 7394, 9512, 7639, -8466, 2768, -6988, 190, -9252])
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray4 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray3 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray2 = new Int8Array([-4408, -1253, 426, 3395, -5991, -3126, -1556, 5732, 7427, 24, -4566, -6311, 5456, -8870, -8658, -7754, 1416, -1311, 3575, 893, 6385, 4357, 5280, -4457, 1965, -8413, 1644, -2194, 1876, 9469, -5020, 5598, 4795, -6689, 9767, 6659, 2760, -7069, -8727, 6, -8452, 27, -165, 2442, 390, -5757, -4397, 750, -2075, -881, -2529, 7610, 5600, 155, 863, -6716, -8240, 6765, -9312, -2629, 2448, -7531, -9266, -2420, 6880, 2792, 2113, -1680, 7414, 8605, -7641, 9644, 7849, 3148, 9226, 6596, 2220, -1233, -1011, -9651, -2580, -4416, -8887, 1086, -7434, -4452, 9955, 4713, 3473, 267, 5581, -8236, -4103, 1034, 2255, 693, 619, -54, -7756, -9565, -269, 5181, -7620, 1707, 3240, 8268, 3641, -4974, 8340, -5215, -9232, -1205, -155, -8988, 6589, -9383, -1525, -8819, -5266, 1581, 4732, -153, 6719, 8844, -4611, -9848, 6842, 7009, -9206, 8556, 8954, -3648, -5701, -9729, 2200, -5423, 6293, -7917, 2094, -8624, -8762, -8339, 4276, 2375, -4109, -4211, -6226, -1380, 535, -2929, -1079, -7186, -2819, 1981, -9441, -2955, 6401, -8230, 5972, 9292, 9156, 4552, -8092, 2738, -6960, -3013, 9605, -241, 8711, -1057, -6013, -8184, 6808, 8301, 1667, -6099, -9223, 2576, 1244, 2146, -7168, -2564, 2438, -2132, -296, -4156, 5858, 7712, -6208, 7882, -5434, -5071, 736, -9025, 16, 8408, 2144, -523, -2811, 7196, -686, 3075, -4300, 2111, -2903, -2590, -5140, -6528, -1147, 6481, -3318, 1530, -265, -9142, -9891, 3017, -8525, -6958, 5180, -3861, -4222, 3563, 6799, -3759, 8770, 2380, -106, -3298, -8587, 9287, -5864, -86, -8778, -4459, 7913, 8631, 6369, 3051, 4287, 7559, -1450, -2654, -3390, -3103, 6013, -963, 6721, 8258, 3917, -8277, 3570, 7621, -5679, -4490, -1342, 2025, 4045, 2613, 2123, 8614, -6525, 5280, 9137, 6147, 149, -6183, -8413, 6346, -2359, 6147, 6374, 9237, -8354, -6333, -9729, -2144, 2048, -9134, -2273, -5189, -1004, 5528, 396, -1516, -7570, 3285, -6439, -5691, -9935, 5052, -6115, 4345, 4472, -9109, -9295, 2170, 9852, 2144, 6096, 9140, -9560, 5605, -9983, 4427, -4559, -1139, 3985, -5465, -6786, 7671, 6099, 4643, -322, -1933, 1831, 1207, 2762, 6775, -1783, 305, -9679, 1116, -6660, 2830, 433, 3558, -7191, 2382, 8698, 5668, 2269, -6627, -8863, 2281, -4264, 2990, 2957, 6136, 3860, 2274, 8066, -6472, 7373, 108, -3975, -536, 2796, -3388, 9641, -4330, -2188, -669, 9970, -407, 5036, -9855, -4399, 7746, -3727, 8943, -1974, -1857, -8909, 7969, -9004, 1353, -2711, -4163, 4896, 6183, 7332, -6300, -475, 2100, 839, 8645, 4382, 5157, -5340, 7815, 9822, 2347, 517, 4940, -6418, 7268, -1554, 775, 4796, 3887, -4508, -2509, 4657, 2029, -1054, -2731, -858, 8688, 7391, 4336, 8457, -1648, -1816, -2043, 1165, 2038, -1064, -7756, 2208, -7424, 5889, 6372, -8679, 1662, -6591, -321, -366, -2419, 1512, -145, 297, 2303, 5110, 4742, -6429, 751, 8256, -4462, -4210, -889, 7273, 9683, 6276, -9309, 6680, 4050, 9979, -8543, 1616, -5481, 4831, -830, 7505, -1222, -8539, 9509, 1675, 7392, -8957, -3137, 5671, -8708, 679, -4636, -8459, -6443])
const typedArray1 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader0 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 81,
        label: "GPUQuerySet0",
        type: "occlusion"
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
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
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
    const string0 = GPUComputePipeline0.label
    const string1 = GPUDevice0.label
    const string2 = GPUQuerySet0.label
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
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline0",
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
    const GPUQueue1 = GPUDevice0.queue
    const string3 = GPUComputePipeline0.label
    const string4 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const string5 = GPUDevice0.label
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const string6 = GPUCommandEncoder0.label
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus",
        label: "GPUTexture0",
        size: {
            width: 3555,
            height: 2679,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["depth24plus"]
    });
    const GPUSupportedFeatures0 = GPUDevice0.features
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture1",
        size: {
            width: 198,
            height: 958,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView0 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView0"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3934495887235705,
                g: 0.8898934999106094,
                b: 1.020388872979597,
                a: 1.9313393119974982
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView0,
            depthSlice: 3
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 2710967728,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder0.end();
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "GPUTexture2",
        size: {
            width: 486,
            height: 759,
            depthOrArrayLayers: 56
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8snorm"]
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const string7 = GPUComputePassEncoder0.label
    const string8 = GPUComputePassEncoder0.label
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture3",
        size: {
            width: 1614,
            height: 3637,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView1 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.24305088509415307,
                g: 1.0525577959669217,
                b: 1.9083191568949083,
                a: 1.3966611169041236
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView1
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 2622071147,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder1.end();
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 1459,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    const string9 = GPUComputePipeline0.label
    const string10 = GPURenderPipeline0.label
    const boolean0 = GPUAdapter0.isFallbackAdapter
    GPUComputePassEncoder0.end();
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8unorm",
        label: "GPUTexture4",
        size: {
            width: 3760,
            height: 1839,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView2 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5947679086719064,
                g: 1.1540387369945218,
                b: 1.792662088434214,
                a: 0.11508942939544631
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView2
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 759932396,
        occlusionQuerySet: GPUQuerySet1
    });
    const string11 = GPURenderPassEncoder2.label
    const GPUSupportedLimits0 = GPUDevice0.limits
    const string12 = GPURenderPassEncoder2.label
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 162148748,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE
    });
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedLimits1 = GPUAdapter0.limits
    const GPUSupportedLimits2 = GPUAdapter0.limits
    const string13 = GPUQuerySet1.label
    const GPUComputePassEncoder1 = GPUCommandEncoder1.beginComputePass({
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
    GPUComputePassEncoder1.dispatchWorkgroups(75, 46, 28);
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer2);
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "one",
                        srcFactor: "src-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline1",
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
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline1);
    const GPUQueue2 = GPUDevice0.queue
    GPUQueue1.writeBuffer(GPUBuffer2, 160602052, typedArray2);
    const string14 = GPUDevice0.label
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    const string15 = GPUComputePassEncoder1.label
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 1738,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup1);
    GPUQueue2.submit([GPUCommandBuffer0]);
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture5",
        size: {
            width: 497,
            height: 618,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView3 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView3"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0670290754157319,
                g: 0.335423643059223,
                b: 0.866213076889788,
                a: 1.2231099730023123
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView3,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 1003933378,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "constant",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline2",
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
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline2);
    const GPUSupportedFeatures1 = GPUAdapter0.features
    const GPUQueue3 = GPUDevice0.queue
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader3
    });
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 391,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    GPUComputePassEncoder1.end();
    const GPUCommandBuffer1 = GPUCommandEncoder1.finish();
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer2);
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const string16 = GPUQueue2.label
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader4
    });
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture6",
        size: {
            width: 1556,
            height: 2668,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView4 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5327871726808202,
                g: 0.40593530756077945,
                b: 1.9270120068639494,
                a: 1.109593255785898
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView4
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 844944828,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUSupportedFeatures2 = GPUAdapter0.features
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUComputePassEncoder2 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder2.dispatchWorkgroups(81, 32, 11);
    const string17 = GPUQuerySet1.label
    const GPUSupportedFeatures3 = GPUDevice0.features
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.BLUE
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
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder4.draw(7);
    GPUQueue3.submit([GPUCommandBuffer1]);
    GPURenderPassEncoder3.draw(1);
    GPUComputePassEncoder2.end();
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer2);
    const GPUComputePassEncoder3 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline2);
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray3);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder3.dispatchWorkgroups(178, 240, 33);
    const string18 = GPUComputePipeline2.label
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline4",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder3.end();
    const GPUCommandBuffer2 = GPUCommandEncoder2.finish();
    const string19 = GPUTextureView1.label
    const GPUSupportedFeatures4 = GPUDevice0.features
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline5",
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
            module: GPUShaderModule4
        }
    });
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
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline6",
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
            module: GPUShaderModule3
        }
    });
    const string20 = GPUTextureView1.label
    const string21 = GPUComputePassEncoder3.label
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline7",
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
    const GPUTextureView5 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView5"
    });
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg32uint",
        label: "GPUTexture7",
        size: {
            width: 523,
            height: 134,
            depthOrArrayLayers: 42
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg32uint"]
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture8",
        size: {
            width: 989,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const string22 = GPURenderPipeline3.label
    const string23 = GPUComputePipeline2.label
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const string24 = GPURenderPassEncoder4.label
    const string25 = GPUQuerySet3.count
    const string26 = GPUQuerySet1.label
    const string27 = GPUComputePipeline1.label
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const string28 = GPUTextureView5.label
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUCommandBuffer3 = GPUCommandEncoder5.finish();
    const string29 = GPUTextureView0.label
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.RED
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture9",
        size: {
            width: 2882,
            height: 248,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView6 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3332553218607752,
                g: 0.5102124963255734,
                b: 0.5751611514444757,
                a: 1.995769154539052
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView6
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 2684639697,
        occlusionQuerySet: GPUQuerySet3
    });
    const string30 = GPURenderPipeline7.label
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader5
    });
    const string31 = GPUQueue1.label
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUComputePassEncoder4 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 2770,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    GPUComputePassEncoder3.end();
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline5);
    GPURenderPassEncoder4.end();
    const GPUBindGroupLayout0 = GPUComputePipeline4.getBindGroupLayout(0);
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 44,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPUComputePassEncoder5 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer2);
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline8);
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 157788188,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const string32 = GPUComputePassEncoder5.label
    GPURenderPassEncoder5.end();
    const GPUCommandBuffer4 = GPUCommandEncoder6.finish();
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const string33 = GPUComputePipeline4.label
    const string34 = GPUQuerySet1.label
    const GPUQueue4 = GPUDevice0.queue
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 109371184,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM
    });
    const GPUComputePassEncoder6 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUTextureView7 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 4,
        format: "r8unorm",
        label: "GPUTextureView7"
    });
    GPUComputePassEncoder4.end();
    const GPUCommandBuffer5 = GPUCommandEncoder7.finish();
    const GPUBindGroupLayout1 = GPUComputePipeline5.getBindGroupLayout(0);
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture10",
        size: {
            width: 641,
            height: 478,
            depthOrArrayLayers: 31
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView8 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView8"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8465474631184047,
                g: 0.2558922945922735,
                b: 1.9614126890799106,
                a: 0.8016756761108028
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView8,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 45232241,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline6);
    GPURenderPassEncoder6.draw(9);
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture11",
        size: {
            width: 730,
            height: 84,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView9 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rg8unorm",
        label: "GPUTextureView9"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7844936689710014,
                g: 0.3593170241675687,
                b: 0.27914372636723406,
                a: 0.046295853590671454
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView9,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 3392917189,
        occlusionQuerySet: GPUQuerySet4
    });
    const string35 = await navigator.gpu.getPreferredCanvasFormat();
    const string36 = GPURenderPipeline4.label
    const GPUTextureView10 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView10"
    });
    const string37 = GPUQuerySet5.type
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture12",
        size: {
            width: 3723,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray4);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
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
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 1283,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 1766,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const string38 = GPUCommandEncoder8.label
    const GPUQueue5 = GPUDevice0.queue
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder7.draw(8);
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup3);
    const string39 = GPUComputePassEncoder6.label
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const string40 = GPUQuerySet0.label
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 2743,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUTextureView11 = GPUTexture12.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView11"
    });
    const string41 = GPURenderPassEncoder7.label
    const GPUAdapterInfo1 = GPUAdapter0.info
    const string42 = GPURenderPipeline4.label
    GPUComputePassEncoder6.end();
    const string43 = GPUQuerySet0.type
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 2482,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "stencil8",
        label: "GPUTexture13",
        size: {
            width: 1407,
            height: 1065,
            depthOrArrayLayers: 7
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["stencil8"]
    });
    const string44 = GPUTextureView7.label
    const GPUComputePassEncoder7 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUQueue6 = GPUDevice0.queue
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    GPUComputePassEncoder5.end();
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray5);
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
    const GPUSupportedFeatures5 = GPUDevice0.features
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup0);
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule5
        }
    });
    const string45 = GPUQuerySet6.count
    const string46 = GPUDevice0.label
    const GPUBindGroupLayout2 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUAdapterInfo2 = GPUAdapter0.info
    const GPUSupportedLimits3 = GPUAdapter0.limits
    const GPUSupportedLimits4 = GPUAdapter0.limits
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const string47 = await navigator.gpu.getPreferredCanvasFormat();
    const string48 = GPUQuerySet5.label
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 1716,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    GPURenderPassEncoder7.end();
    const GPUCommandBuffer6 = GPUCommandEncoder9.finish();
    const GPUQueue7 = GPUDevice0.queue
    const GPUSupportedLimits5 = GPUDevice0.limits
    const string49 = GPUQuerySet3.label
    const GPUSupportedFeatures6 = GPUDevice0.features
    const GPUSupportedFeatures7 = GPUAdapter0.features
    const string50 = GPUComputePipeline1.label
    const string51 = GPUComputePipeline5.label
    const string52 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUQueue3.writeBuffer(GPUBuffer2, 125669152, typedArray6);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder7.dispatchWorkgroups(139, 99, 6);
    const string53 = GPURenderPassEncoder6.label
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string54 = GPUComputePipeline9.label
    const GPUSupportedFeatures8 = GPUDevice0.features
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 12801184,
        usage: GPUBufferUsage.COPY_DST
    });
    const string55 = GPUQuerySet7.label
    GPUComputePassEncoder7.end();
    const GPUCommandBuffer7 = GPUCommandEncoder8.finish();
    const GPUComputePassEncoder8 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup1);
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "GPUTexture14",
        size: {
            width: 3305,
            height: 1535,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView12 = GPUTexture14.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView12"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7347372446923897,
                g: 1.5263083965983657,
                b: 1.297060085476916,
                a: 1.6588598187069816
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView12
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 2428072215,
        occlusionQuerySet: GPUQuerySet7
    });
    const string56 = GPURenderPipeline9.label
    const GPUQueue8 = GPUDevice0.queue
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup3);
    GPURenderPassEncoder6.end();
    const GPUCommandBuffer8 = GPUCommandEncoder3.finish();
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer4);
    const GPUSupportedFeatures9 = GPUAdapter1.features
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray7);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder8.end();
    const GPUCommandBuffer9 = GPUCommandEncoder4.finish();
    const GPUQueue9 = GPUDevice0.queue
    GPUQueue1.submit([GPUCommandBuffer8]);
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUComputePassEncoder9 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder9.dispatchWorkgroups(219, 54, 30);
    GPUQueue9.submit([GPUCommandBuffer6]);
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader6
    });
    GPUQueue3.writeBuffer(GPUBuffer2, 99005736, typedArray8);
    const GPUQueue10 = GPUDevice0.queue
    GPURenderPassEncoder8.end();
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture15",
        size: {
            width: 1923,
            height: 3375,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView13 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7763364014190959,
                g: 0.9776638228534207,
                b: 1.9874104342350851,
                a: 0.6911654089424515
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView13
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 407100466,
        occlusionQuerySet: GPUQuerySet4
    });
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline10);
    GPURenderPassEncoder9.draw(4);
    GPUComputePassEncoder9.end();
    const GPUCommandBuffer10 = GPUCommandEncoder11.finish();
    const GPUSupportedLimits6 = GPUDevice0.limits
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUComputePassEncoder10 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    GPUComputePassEncoder10.end();
    GPURenderPassEncoder9.end();
    const GPUCommandBuffer11 = GPUCommandEncoder10.finish();
    const GPUComputePassEncoder11 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    GPUComputePassEncoder11.end();
    const GPUQueue11 = GPUDevice0.queue
    const string57 = GPUQuerySet5.count
    const GPUSupportedFeatures10 = GPUDevice0.features
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 821,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const string58 = GPUCommandEncoder12.label
    const string59 = GPUQuerySet3.count
    const string60 = GPUCommandEncoder12.label
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const boolean3 = GPUAdapter0.isFallbackAdapter
    const GPUSupportedFeatures11 = GPUAdapter0.features
    const GPUComputePassEncoder12 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder12.dispatchWorkgroups(6, 182, 4);
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline11",
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
            module: GPUShaderModule5
        }
    });
    const GPUAdapterInfo3 = GPUAdapter3.info
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string61 = GPUQueue0.label
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture16",
        size: {
            width: 510,
            height: 478,
            depthOrArrayLayers: 59
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView14 = GPUTexture16.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.118593464866895,
                g: 1.7943855685209722,
                b: 0.42491315791100637,
                a: 0.41528074571610296
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView14,
            depthSlice: 39
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 2209978539,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder10.draw(10);
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture17",
        size: {
            width: 661,
            height: 580,
            depthOrArrayLayers: 11
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView15 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView15"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder14.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.10010917437948397,
                g: 1.9553816217345403,
                b: 1.9687479025833368,
                a: 0.47232030697678695
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView15,
            depthSlice: 8
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 3787839630,
        occlusionQuerySet: GPUQuerySet9
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup3);
    GPURenderPassEncoder10.draw(2);
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedFeatures12 = GPUDevice0.features
    const GPUBindGroupLayout3 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUTextureView16 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView16"
    });
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture18",
        size: {
            width: 3988,
            height: 3730,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView17 = GPUTexture18.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4555295477698766,
                g: 1.3569613362070434,
                b: 0.35240978604372897,
                a: 0.0343664633685179
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 1501583424,
        occlusionQuerySet: GPUQuerySet5
    });
    const GPUAdapterInfo4 = GPUAdapter4.info
    const string62 = GPUTextureView5.label
    const string63 = GPURenderPassEncoder11.label
    const GPUSupportedLimits7 = GPUAdapter3.limits
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.GREEN
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline12);
    GPURenderPassEncoder12.draw(7);
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 146735232,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    });
    const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    GPURenderPassEncoder12.end();
    const GPUCommandBuffer12 = GPUCommandEncoder15.finish();
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const string64 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue0.writeBuffer(GPUBuffer2, 121227560, typedArray9);
    const string65 = GPUTextureView15.label
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline13",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline13);
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 1798,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string66 = GPUQuerySet7.label
    const string67 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup3);
    const GPUSupportedFeatures13 = GPUDevice0.features
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer4);
    GPUComputePassEncoder12.end();
    const string68 = GPUQueue6.label
    const string69 = GPUCommandEncoder12.label
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: false,
        size: 123395680,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer4);
    const string70 = GPUCommandEncoder12.label
    GPUQueue0.submit([GPUCommandBuffer4]);
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder13 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUBindGroupLayout4 = GPUComputePipeline6.getBindGroupLayout(0);
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedFeatures14 = GPUAdapter5.features
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    const string71 = GPUDevice0.label
    const string72 = GPUQuerySet9.type
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline8);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder13.dispatchWorkgroups(114, 139, 52);
    GPUQueue0.submit([GPUCommandBuffer12]);
    const GPUSupportedFeatures15 = GPUAdapter3.features
    const GPUBindGroupLayout5 = GPUComputePipeline5.getBindGroupLayout(0);
    const boolean4 = GPUAdapter4.isFallbackAdapter
    const GPUSupportedFeatures16 = GPUDevice0.features
    const string73 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray10);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
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
    const string74 = GPUComputePassEncoder13.label
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUComputePassEncoder14 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader7
    });
    const string75 = GPUComputePipeline9.label
    GPURenderPassEncoder10.end();
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder14.dispatchWorkgroups(43, 42, 22);
    const string76 = GPURenderPipeline1.label
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder13.dispatchWorkgroups(41, 77, 51);
    const boolean5 = GPUAdapter5.isFallbackAdapter
    GPUComputePassEncoder13.end();
    const GPUBindGroupLayout6 = GPUComputePipeline4.getBindGroupLayout(0);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline10);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder14.dispatchWorkgroups(60, 225, 58);
    const string77 = GPURenderPipeline8.label
    const GPUBindGroupLayout7 = GPUComputePipeline12.getBindGroupLayout(0);
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "GPUTexture19",
        size: {
            width: 1923,
            height: 3375,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8snorm"]
    });
    GPURenderPassEncoder11.end();
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture20",
        size: {
            width: 3136,
            height: 2348,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView18 = GPUTexture20.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba16float",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3307444818159078,
                g: 0.8576251022549699,
                b: 0.10483845606081132,
                a: 0.3524745490952341
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 168238645,
        occlusionQuerySet: GPUQuerySet5
    });
    const GPUSupportedFeatures17 = GPUAdapter3.features
    const GPUQueue12 = GPUDevice0.queue
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline14",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline14);
    const string78 = GPUQuerySet12.type
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    GPUQueue6.writeBuffer(GPUBuffer4, 50330276, typedArray11);
    GPUComputePassEncoder14.end();
    const GPUBindGroupLayout8 = GPUComputePipeline9.getBindGroupLayout(0);
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
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
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline15",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder13.draw(7);
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 249969064,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    });
    const string79 = GPUQuerySet0.count
    const GPUComputePassEncoder15 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder15.dispatchWorkgroups(3, 176, 14);
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline14);
    const string80 = GPUQueue6.label
    const GPUTextureView19 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 7,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView19"
    });
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture21",
        size: {
            width: 1668,
            height: 858,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView20 = GPUTexture21.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg8unorm",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder14.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.530879650466989,
                g: 0.0025428476448896564,
                b: 0.21555944099121516,
                a: 1.0569140782030784
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView20
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 4138920848,
        occlusionQuerySet: GPUQuerySet2
    });
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const string81 = GPURenderPassEncoder13.label
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder14.draw(9);
    const GPURenderPipeline16 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline16",
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
    const string82 = GPURenderPassEncoder14.label
    const string83 = GPUDevice0.label
    const GPUTextureView21 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg8snorm",
        label: "GPUTextureView21"
    });
    const string84 = GPUQuerySet0.count
    const GPUSupportedFeatures18 = GPUAdapter0.features
    const GPUSupportedLimits8 = GPUDevice0.limits
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline3);
    GPUQueue8.writeBuffer(GPUBuffer0, 0, typedArray12);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder15.dispatchWorkgroups(221, 72, 8);
    const GPUSupportedLimits9 = GPUAdapter3.limits
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer2);
    const GPUAdapterInfo5 = GPUAdapter0.info
    const GPUComputePipeline14 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline14",
        layout: "auto"
    });
    const string85 = GPUQueue4.label
    const GPUQueue13 = GPUDevice0.queue
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const string86 = GPUQuerySet2.label
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string87 = GPUComputePipeline4.label
    const string88 = GPUTextureView13.label
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture22",
        size: {
            width: 550,
            height: 633,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView22 = GPUTexture22.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView22"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5825918940768442,
                g: 0.8531436192750355,
                b: 1.2217137263646995,
                a: 1.2680356330608296
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView22,
            depthSlice: 7
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 500578612,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUComputePassEncoder16 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    const string89 = GPUComputePassEncoder15.label
    const string90 = GPUTextureView14.label
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup4);
    const GPUSupportedFeatures19 = GPUAdapter1.features
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8sint",
        label: "GPUTexture23",
        size: {
            width: 1046,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8sint"]
    });
    GPUQueue0.writeBuffer(GPUBuffer7, 41627416, typedArray13);
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder15.dispatchWorkgroups(85, 178, 11);
    const string91 = GPUQuerySet5.type
    const GPUQueue14 = GPUDevice0.queue
    const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline15",
        layout: "auto"
    });
    const GPUSupportedFeatures20 = GPUAdapter7.features
    const string92 = GPUQuerySet9.type
    const GPUSupportedLimits10 = GPUAdapter3.limits
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray14);
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
    const GPURenderPipeline17 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline17",
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
            module: GPUShaderModule5
        }
    });
    const string93 = await navigator.gpu.getPreferredCanvasFormat();
    const string94 = GPUQueue12.label
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture24",
        size: {
            width: 2865,
            height: 494,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8sint",
        label: "GPUTexture25",
        size: {
            width: 1662,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8sint"]
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup2);
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray15);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline13.bindGroup",
        layout: GPUComputePipeline13.getBindGroupLayout(0),
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
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture26",
        size: {
            width: 103,
            height: 718,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView23 = GPUTexture26.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3107108864067729,
                g: 0.11276424174247568,
                b: 0.4258558949805864,
                a: 0.39397039835248227
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView23,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 1456487555,
        occlusionQuerySet: GPUQuerySet10
    });
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader9
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline3);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder16.dispatchWorkgroups(201, 182, 35);
    const GPUAdapterInfo6 = GPUAdapter5.info
    GPUQueue9.writeBuffer(GPUBuffer2, 120621472, typedArray16);
    GPURenderPassEncoder13.draw(8);
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8uint",
        label: "GPUTexture27",
        size: {
            width: 269,
            height: 2006,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8uint"]
    });
    GPURenderPassEncoder16.setVertexBuffer(0, GPUBuffer4);
    const GPUSupportedLimits11 = GPUAdapter4.limits
    const string95 = GPUComputePipeline0.label
    GPUQueue9.writeBuffer(GPUBuffer0, 24, typedArray17);
    const GPUAdapterInfo7 = GPUAdapter1.info
    GPURenderPassEncoder16.end();
    const GPUCommandBuffer13 = GPUCommandEncoder18.finish();
    const string96 = GPUDevice0.label
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray18);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline12.bindGroup",
        layout: GPUComputePipeline12.getBindGroupLayout(0),
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
    const string97 = GPURenderPipeline13.label
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16sint",
        label: "GPUTexture28",
        size: {
            width: 2084,
            height: 1308,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16sint"]
    });
    const string98 = GPUQuerySet10.count
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer2);
    const string99 = GPURenderPipeline7.label
    const boolean6 = GPUAdapter1.isFallbackAdapter
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTexture29 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "GPUTexture29",
        size: {
            width: 874,
            height: 20,
            depthOrArrayLayers: 3
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8uint"]
    });
    const GPUAdapterInfo8 = GPUAdapter5.info
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer4);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline10);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder16.dispatchWorkgroups(139, 42, 50);
    const GPUComputePipeline16 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline16",
        layout: "auto"
    });
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline11);
    const string100 = GPUComputePassEncoder16.label
    const string101 = GPUQuerySet1.label
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader10
    });
    const string102 = GPURenderPassEncoder13.label
    const GPUAdapterInfo9 = GPUAdapter2.info
    const string103 = await navigator.gpu.getPreferredCanvasFormat();
    const string104 = GPUQueue10.label
    const GPUTextureView24 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 2,
        format: "r8unorm",
        label: "GPUTextureView24"
    });
    const string105 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline0);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline14);
    GPUQueue9.writeBuffer(GPUBuffer0, 0, typedArray19);
    const GPUBindGroup11 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline14.bindGroup",
        layout: GPUComputePipeline14.getBindGroupLayout(0),
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder16.dispatchWorkgroups(69, 192, 2);
    const string106 = GPURenderPassEncoder14.label
    GPURenderPassEncoder14.end();
    const GPUTextureView25 = GPUTexture25.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8sint",
        label: "GPUTextureView25"
    });
    const GPUTextureView26 = GPUTexture12.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView26"
    });
    const GPUCommandBuffer14 = GPUCommandEncoder19.finish();
    const GPUSupportedLimits12 = GPUDevice0.limits
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup11);
    const GPUTextureView27 = GPUTexture19.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rg8snorm",
        label: "GPUTextureView27"
    });
    const GPUQueue15 = GPUDevice0.queue
    GPURenderPassEncoder15.end();
    const string107 = GPUQuerySet2.type
    const string108 = GPUQuerySet9.label
    const boolean7 = GPUAdapter1.isFallbackAdapter
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 3643,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPUTexture30 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg16sint",
        label: "GPUTexture30",
        size: {
            width: 2495,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16sint"]
    });
    const GPUComputePassEncoder17 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    const GPUAdapterInfo10 = GPUAdapter2.info
    const string109 = GPUTextureView12.label
    const string110 = GPUDevice0.label
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 3907,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const string111 = GPUDevice0.label
    const GPUSupportedFeatures21 = GPUDevice0.features
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUComputePipeline17 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline17",
        layout: "auto"
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline15);
    const GPUQueue16 = GPUDevice0.queue
    GPUQueue3.submit([GPUCommandBuffer10]);
    const string112 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup11);
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUTexture31 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16uint",
        label: "GPUTexture31",
        size: {
            width: 3975,
            height: 399,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16uint"]
    });
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer2);
    const string113 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUBindGroupLayout9 = GPUComputePipeline7.getBindGroupLayout(0);
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader11
    });
    const string114 = GPUQuerySet7.label
    GPUQueue4.writeBuffer(GPUBuffer4, 75364008, typedArray20);
    const GPURenderPipeline18 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "constant",
                        srcFactor: "zero"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline18",
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
            module: GPUShaderModule2
        }
    });
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader12
    });
    GPUComputePassEncoder17.end();
    const GPUCommandBuffer15 = GPUCommandEncoder16.finish();
    const GPUQuerySet15 = GPUDevice0.createQuerySet({
        count: 3803,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    const GPUBindGroupLayout10 = GPUComputePipeline13.getBindGroupLayout(0);
    const GPUTextureView28 = GPUTexture28.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16sint",
        label: "GPUTextureView28"
    });
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer2);
    const string115 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder18 = GPUCommandEncoder21.beginComputePass({
        label: "GPUComputePassEncoder18"
    });
    const boolean8 = GPUAdapter6.isFallbackAdapter
    const string116 = GPUComputePassEncoder16.label
    const GPUQueue17 = GPUDevice0.queue
    const string117 = GPUDevice0.label
    GPURenderPassEncoder13.draw(1);
    const GPUTextureView29 = GPUTexture13.createView({
        aspect: "stencil-only",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 8,
        baseMipLevel: 2,
        format: "stencil8",
        label: "GPUTextureView29"
    });
    GPUQueue13.writeBuffer(GPUBuffer8, 214921080, typedArray21);
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    GPURenderPassEncoder13.end();
    const GPUTexture32 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8unorm",
        label: "GPUTexture32",
        size: {
            width: 2267,
            height: 122,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView30 = GPUTexture32.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView30"
    });
    const GPURenderPassEncoder17 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8502738797316487,
                g: 1.301903340947596,
                b: 1.4713528257032011,
                a: 1.4016542541404953
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView30
        }],
        label: "GPURenderPassEncoder17",
        maxDrawCount: 3012722471,
        occlusionQuerySet: GPUQuerySet7
    });
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline1);
    const string118 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue12.writeBuffer(GPUBuffer0, 0, typedArray22);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup12);
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const string119 = GPUComputePipeline0.label
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string120 = GPUDevice0.label
    const GPURenderPipeline19 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule11,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline19",
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
            module: GPUShaderModule7
        }
    });
    const string121 = GPUQuerySet4.type
    const GPUSupportedFeatures22 = GPUAdapter9.features
    const GPUSupportedFeatures23 = GPUDevice0.features
    const string122 = GPUComputePassEncoder18.label
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: true,
        size: 175737132,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const string123 = GPUQuerySet4.label
    const string124 = GPUQueue2.label
    GPUComputePassEncoder16.end();
    const GPUCommandBuffer16 = GPUCommandEncoder17.finish();
    const string125 = GPUQuerySet6.type
    const GPUAdapterInfo11 = GPUAdapter0.info
    const string126 = GPURenderPassEncoder17.label
    const GPUQuerySet16 = GPUDevice0.createQuerySet({
        count: 2045,
        label: "GPUQuerySet16",
        type: "occlusion"
    });
    const string127 = GPURenderPassEncoder17.label
    GPURenderPassEncoder17.end();
    const GPUCommandBuffer17 = GPUCommandEncoder12.finish();
    const GPUTexture33 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture33",
        size: {
            width: 794,
            height: 25,
            depthOrArrayLayers: 12
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView31 = GPUTexture33.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm",
        label: "GPUTextureView31"
    });
    const GPURenderPassEncoder18 = GPUCommandEncoder14.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6518029399781577,
                g: 1.7400219820673013,
                b: 0.18161513467241264,
                a: 0.30233728756023326
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView31,
            depthSlice: 4
        }],
        label: "GPURenderPassEncoder18",
        maxDrawCount: 1360692023,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder18.setPipeline(GPURenderPipeline12);
    GPUComputePassEncoder15.end();
    const GPUCommandEncoder24 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    GPUComputePassEncoder18.setPipeline(GPUComputePipeline16);
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray23);
    const GPUBindGroup13 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline16.bindGroup",
        layout: GPUComputePipeline16.getBindGroupLayout(0),
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
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup13);
    GPUComputePassEncoder18.dispatchWorkgroups(109, 13, 18);
    const string128 = GPUQueue3.label
    const boolean9 = GPUAdapter9.isFallbackAdapter
    GPURenderPassEncoder18.end();
    const GPUShaderModule14 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader14
    });
    const GPUCommandBuffer18 = GPUCommandEncoder23.finish();
    GPUComputePassEncoder18.end();
    const boolean10 = GPUAdapter1.isFallbackAdapter
    const string129 = GPUComputePipeline14.label
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray24);
    const GPUBindGroup14 = GPUDevice0.createBindGroup({
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
    const GPUCommandBuffer19 = GPUCommandEncoder22.finish();
    const GPUSupportedLimits13 = GPUAdapter2.limits

}
main().catch(console.error); // Seed: 7743599269930236485
const typedArray36 = new Float32Array([-2491, -506, 7269])
const typedArray35 = new Int8Array([2418, 5338, 6085, 1057, -5620, 88, 8849, -9511, -509, -3488, -9130, -4117, 7800, -3943, 9515, -9758, -4730, -9910, 5503, 6278, -5290, -8219, -2963, 924, -6998, 7595, 7832, 1835, 1573, -5716, -9233, -3405, -7373, -5855, 4496, 4548, -6220, -776, 3222, -6552, -3147, 1047, 9772, 4162, 2004, -7171, -7876, 8167, 1157, 3092, 2135, 9591, -7409, -1260, -4369, 1937, -4774, 4274, -4969, -4383, 6559, 3948, 4534, 2819, -2929, 1702, -3134, 3508, -418, -4766, 7294, 9269, 568, 756, -4393, 2831, -6097, 5608, -1735, 7018, -2602, -4641, 3524, 2412, 6935, 7557, 358, -9223, -1501, 1724, 40, 3147, -7596, -7485, 6200, 6798, -1557, 5587, 3531, 4507, 6977, 9635, -2137, -6674, 8908, 3502, 1884, 6796, 2572, 6145, -837, 1363, -849, 9644, -1856, -982, 4955, -7696, 2805, -4298, 5979, 169, -2058, 6707, 827, -6944, 9331, 530, -5603, -4153, 7002, -1982, 8524, -1461, -1892, 4330, -1125, -5891, 8259, -4163, 5353, 193, -7043, -8652, 6368, -4926, -7701, 16, -6750, 4680, 8975, 7442, 8627, -8461, 6021, 4799, 7449, 6434, -593, -5573, 2550, 3579, -6124, -4049, 2864, -8704, 9369, -9238, -9865, 3029, -9929, -2429, 5201, 273, -7159, -1685, -1033, 2926, -6558, 3919, -4610, 3019, 7348, 3216, 7655, 7969, 4202, -5885, 1713, 5918, -6679, -2661, -1212, -6180, 9276, 696])
const typedArray34 = new Int8Array([9630, -7190, -5719, 9940, 1378, 4682, -6126, 4050, 2098, -526, 3284, 670, -2071, 6730, 2927, 9203, -7199, 6259, 8343, 889, -2323, -9033, 9098, -1000, -674, -6713, -7489, -5284, -9019, 9267, -7666, 1521, 5957, -7538, 7979, 6825, 4778, 7234, -2040, -6379, 2832, -5552, 5871, -4833, 8670, 7967, 4395, -7005, 8778, 6144, 5762, -5647, -6236, 1206, -4062, 2788, -133, 1616, -7415, -8760, 3181, -1456, -2675, -6948, 9012, -2312, -7886, -4364, 8909, 8963, 9440, 7265, -1568, -4556, 724, -9254, -1539, 119, 8131, -270, -6217, 998, -2814, 385, -2956, -1553, -9114, -996, -5463, 1565, -4490, -5221, 2931, -3413, -8515, 6231, 3997, 5973, -1559, 677, 7603, 9943, -9570, 5998, -2154, 5257, -9837, 6624, -2328, 9484, 7261, 3236, 9612, -633, -5006, 6342, -2677, 6631, -1898, -9884, 9699, -2942, -4618, 1195, -4562, -4820, 1652, -7069, 6660, 3667, 6880, -3014, -2290, 9158, -9428, -2675, -545, -3630, 6957, 769, 2908, 6090, -8656, -5232, 4261, 6325, 515, 3072, -5633, -810, -9473, -924, -9413, -4230, -1199, 7277, 5976, -7331, -5978, -1331, 883, -3782, 2012, 7435, 3030, -8300, 39, 4484, -4720, 8681, -5857, 2269, 7946, 1943, -2290, 8722, 7624, 3141, -4784, -1008, 6543, -9975, -4758, 3723, 799, 85, -2733, -8901, -6357, 1190, -3346, 5882, -7111, 7212, -1109, 936, -2168, 9273, -4912, -5432, -2672, 5955, -6789, -2455, -1584, -3286, 9250, -4725, -6554, -1583, 6212, -3442, 9173, 7900, 8000, 5310, 9383, -4723, 1299, 3797, 378, -8087, -9839, -7117, -507, 2245, 3545, -4747, -933, 8185, -2196, -8203, -9519, 3821, -7532, -7503, -7239, -5659, -5772, -9520, -8503, 3489, -176, -4928, 8442, 5180, -8861, -2606, -9125, 7722, 6731, 2729, 9399, 8764, -4326, 8257])
const shader13 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray33 = new Uint8Array([3864, 7577, 3158, -178, 3234, -8487, -664, -3330, 8159, 7036, 6149, 8863, -8876, -5089, 9516, 4559, -9305, 15, 3317, 3218, 6123, 7162, -8554, -6072, -3876, -4063, 3501, -7535, 5250, -8268, -1490, -889, -1229, 5215, -480, -8800, 6797, -5092, 7641, 1271, -4109, 8091, -8547, 973, -8420, 7937, 2639, 2340])
const typedArray32 = new Uint8Array([4744, -2490, 1309, 533, 5606, -2761, 3420, 8511, 3607, -5853, -8920, 5585, -7259, -8998, 4867, -7119, -6374, -3510, 3339, 5276, -2975, -2099, -9938, 3781, 6879, -5235, -6285, -8729, 143, -7114, 4100, 6180, -8184, 7845, -4685, -9763, -6555, -7589, -1032, -9566, -258, 4944, 518, 2282, 22, -5334, -4839, 7511, 3278, 9898, 8119, -6385, -2524, -6093, -578, 2396, 4074, -3379, 8528, -3947, 6469, -5054, 8368, -9451, -3201, 1070, -6870, 9741, -9115, -6507, 6277, -9198, 5758, -1004, -4862, 2860, -4023, 5553, -4914, 8181, 5774, 3532, 3786, -5905, -7967, 6473, -7961, -4920, -537, 1106, 3536, 846, 9284, -1261, 8739, -420, -8235, -3495, 4227, 3843, -4898, -7434, 7590, 8221, -1151, 7563, 5052, 2920, -3347, 1906, -1434, -8279, 7010, -6501, -2774, 5239, 3940, 9583, 6719, -3691, -7076, -9745, 332, -7385, 1245, -6553, 8953, -6813, 1625, -2346, -6757, 98, -3069, 8758, 9102, -789, -6225, -5445, 8099, 6379, -7287, 9022, 238, 5525, -3024, 2241, 6046, -3147, -4040, 1243, -563, -5906, -156, -8092, -4283, 3357, 343, -9759, 9203, 3279, -2321, -896, -4875, -4655, 5417, -8848, 9232, -5951, 3489, 4554, 6626, -2420, -8409, -2584, 3038, -5309, 3957, -1377, -6854, -6062, 6149, -3963, 9894, -2805, -5789, 540, 9769, 3151, -8395, 405, -7804, -908, 303, 9759, 4445, 1333, -136, -5823, -4526, 4821, 3715, 9651, -5773, -9180, -8758, 5744, 2690, -9609, 7976, -8538, -2749, -1363, 5405, -3478, -2093, -5117, 3948, 2844, 6062, -642, 8198, -4250, -5163, 8533, -1547, -3189, 9844, 384, 4470, -7815, -175, 8705, 1282, -2795, -6432, -9450, -1219, 8191, -933, 5743, -5800, -6564, -6009, -1147, -4809, 476, 135, -4439, -394, -9830, -1323, -5258, 77, 1789, -1709, 9220, 4353, 9779, -7117, -4017, -3499, 3707, 6499, 8137, -7551, 159, -9793, 7596, -3012, 2888, -661, -8030, 4212, -2979, 1305, 8413, 6566, -5564, -1963, 4448, 1348, 5957, -4437, -5938, -4008, 630, -4699, -2146, 4075, -1242, -9376, 8738, 6830, -6013, 9385, -4964, 3585, -8940, 1701, -5106, 5471, 7613, -842, 5344, 2108, -2419, 3316, 6456, 3561, -5766, -6399, 7550, 3491, -6511, -2946, 754, -4643, 6628, 8460, 3260, -5542, 8086, -7156, 7265, -6927, 678, -2850, 9584, -2806, -1835, 2234, -745, -67, 4864, 2135, 4630, -7577, 4288, -552, -1408, 5096, 3459, -3680, -5286, 3364, -8772, 3288, -3969, -8850, -797, 6635, 1453, -9190, 4237, 3918, -5777, -3737, -5921, 2488, 268, -9933, 5724, -2116, -7377, 8416, -6702, -312, 9546, 331, 7019, 859, -1781, 65, -5268, 7685, 8955, -1091, 9857, -7847, 1565, -3829, 978, -4837, -5606, 2339, 7484, -6718, 1227, 1275, 3342, 3208, -9879, 499, -5047, -262, 3097, 7048, 2038, 7781, 9277, -8906, 8781, -1380, -7595, -1367, 1466, 6244, -8857, 8258, 8040, 9369, -5182, -5720, -6921, -4645, -6905, -3033, 1989, 3132, -6222, 2186, -3252, 27, -7406, -7271, -1047, -8642, -3389, -3518, -3553, 8225, 3608, -8188, 8981, 9917, -6032, 5087, 341, -6570, 2142, 7822, -6347, -4387, 2844, 114, 3188, 8925, -5365, 6451, 6863, -5537, 2762, -9999, 7024, -1704, -4999, 1639, -7737, 8065, 8605, -3542, 4453, -9883, 5294])
const typedArray31 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray30 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray29 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray28 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray27 = new Uint8Array([-4913, 3150, 9440, -2799])
const typedArray26 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader12 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray25 = new Float32Array([-9641, -1499, 2773, -5451, 2812, -9669, 6895, 3437, 6150, -2336, -3631, 6354, 7576, -3200, -3686, -4914, -9400, 7505, -4589, -8487, 1785, -4823, 4124, -6901, 4972, 1714, -1141, -1853, -8176, 6481, -9561, 9889, 7763, -7402, -4847, -9630, -7536, -6883, -6199, -3074, 4571, -2398, 8257, 6853, 1989, 6408, 9910, -1040, 910, 4827, 9527, -6173, -4488, 3174, -6324, 9530, 2082, 2226, 9034, 9935, -988, -477, 5209, -7769, -6032, -9748, 7475, 6636, -4179, 8811, 6772, 4881, -8759, 6793, 1987, -1445, 668, -2544, -306, -6561, -6947, 5295, -1769, 4462, 2845, 4855, -5845, -1463, 401, 897, 4717, -1940, -3438, 9792, -1799, -6423, 3912, -2323, -8764, -9611, -8525, -7018, 8692, 3796, -1933, 1480, 5604, -2453, 9247, 1725, 7156, 4802, -975, -7111, 5343, 2135, 1417, -5299, 6248, -5438, 7292, -7454, -5418, 5470, 4256, -2163, -1360, 7076, -5048, -4768, 7073, -551, 9736, 9726, 8852, 3463, -4723, -3233, 2740, 3503, -4022, -7637, -7842, 9505, 9700, -2917, -2439, -5907, -3376, -855, 6731, 1280, 3937, 2748, 7308, -3667, -618, 5776, -6684, 4003, 5563, 95, 3538, 7903, 1618, 9415, -1835, -9370, 1490, 4672, 7315, -5066, -146, 5048, 1519, 4634, -890, -4322, -8258, -7276, -2939, 4710, -2435, 667, 8056, -4452, 2988, 7039, -8135, 7632, 1471, -3452, -8585, 5480, 2357, -6681, -6066, 9494, -6747, -4956, 7633, -638, -7226, 3769, -8018, -8589, -6373, -7722, -1427, -4539, 8997, 8183, 1529, -9543, -8806, -5912, 8043, 3138, -5208, 1955, 8801, 9506, 1397, -9761, 1438, -5697, 8045, 8211, -9758, 7828, 795, -5640, -4117, -5088, 9134, -5424, 9502, 3568, 2561, 7389, -6091, 9979, 4184, -8348, 3408, -150, -4477, -2978, -5671, -6033, 5745, 6309, -6253, 271, 1558, -8646, 5219, 2406, -6260, 8071, -4433, 1849, 7967, 5145, 1309, -9751, 5708, 331, -1896, -2575, -372, -8807, 2748, -9989, 2691, 8113, 8921, 8537, -7695, 6747, 1702, 2358])
const typedArray24 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray23 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader11 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader10 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray21 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray20 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray19 = new Int8Array([-8539, 4088, -7369, 1452, 6628, -4442, 9215, 3941, -4835, -1327, -4841, -3229, 7013, 167, 7230, -8472, -9527, 4589, 3011, 1133, 1284, -2239, -6792, 9631, 278, -3121, -6900, 3331, -9095, -5505, 3933, -4447, -265, -4834, 6204, -9205, -148, 401, 3873, -3532, 4527, 7098, 3006, -9163, -2229, -6203, -2395, -4108, -1152, -26, 3998, -3316, 5756, -1591, -4459, -1929, -2994, 9034, -2428, 7971, -8967, 3193, 4332, -1248, 9457, -7857, -6102, 689, 7219, -9119, 2451, -3136, -8112, -1764, 9339, -7115, -7336, -6187, -4961, -9382, -601, 8396, -464, -8929, -949, 3759, -4890, 8395, 9975, 1548, -9500, 4650, 4260, -4884, 5081, -9192, 7195, -3285, 7734, 198, 7828, -3448, 3448, 113, 5916, 9953, -8869, -6155, -8539, 7692, -2188, -8495, -5995, -3235, 6432, -2590, 4787, 2606, -3491, -3194, 1704, -8568, -7698, 9016, -8137, 7629, 6297, -6544, -1920, 2798, -1523, -6106, -7438, -9104, 6457, -6908, -9350, -3885, 9971, 9479, -8973, -4250, -5683, -2552, 9300, -3134, -3116, 7428, -8718, 3313, 3621, -5295, 1533, -2967, 5875, 475, 8841, -3034, -7778, 5086, -7482, -6030, -1813, -5198, 1509, -4836, 6405, -8932, 378, 6427, 9003, -7895, -6371, 18, 3919, -532, -3805, 4835, -7706, -2741, -8342, 7054, 1855, -2614, 3970, 468, 7341, -1275, -485, -5249, 282, 6942, 6843, -9711, 4294, -3760, -8201, -185, 6055, -7740, -4640, 1865, -3504, -3240, 3740, 5304, -9570, -1321, 4632, -322, -4770, -9835, 758, 4603, -1015, 7887, -7101, 1358, -6016, 7149, -5914, 4496, 2641, 3, 7904, -5041, 5907, -6509, 299, 3331, 9303, -6053, -4142, 9206, -5639, -4044, 3353, 7117, 7043, -2402, -1120, 5238, -1134, 2923, -6230, 2934, 6679, -1449, -3933, 9526, 748, 2847, 6830, -750, 3745, -5841, 1366, 2930, 6560, 2064, -7017, -2517, -6322, -4533, -1590, -2804, 712, -1356, 1833, -5421, -1022, 6900, 9466, -3697, 5750, -2031, 5375, -3704, -9131, -3887, 4022, -2154, 426, 4691, -1054, -9587, -9637, 4343, -8622, 3305, 7781, 9483, 1714, -4918, -78, -3744, -9592, 4846, 8561, 8939, 9393, -2605, 5047, 4118, -8303, 5387, 7765, -9622, -7071, -1273, 7935, 8672, 9569, 8935, 3592, 4298, 5389, 5142, 2735, 2679, -5812, -6555, -8110, -6559, -7167, -8388, -5292, 2175, 4133, -3060, 3666, -6774, 5113, -9391, -6796, -1035, -2909, 7598, -4589, -1713, -4469, -364, 5527, 2240, -2278, -9172, 6872, -7299, -4814, 8852, 5646, -9846, 7779, -4281, 9353, -1391, 4083, 9369, 222, 820, 4431, 3298, -5203, -5978, -256, -6813, 3847, -4299, 7681, 6175, 9684, -710, 9194, -553, 4566, 8956, 5013, 1390, -9753, -292, -1475, 6099, -9612, 9423, -5484, -5215, 2550, -9977, -5269, 8022, -6843, 9787])
const typedArray18 = new Float32Array([-9456, 5661, -7498, -2542, -176, 5180, -3612, -4398, -6644, 9691, -7583, -6863, 5139, -9162, -9288, -2590, -6939, -2031, 7387, 6881, 9453, 6359, 3351, -7752, 3653, -9183, -9697, -5479, 7328, -6602, 3314, -1578, -1675, 1908, 59, 8472, -7656, 3799, 1425, -259, 7544, 743, 7082, 8914, 624, 8509, 6900, 4844, -2988, -5725, -7917, 1502, -6411, 5187, 1328, 2442, -7684, 772, -1, -7357, 8424, 9486, -173, 6699, -9192, -259, -7683, 5682, -4488, 4883, 3043, 1956, -5794, 2196, -4173, 4011, -5226, 4714, -6430, -4313, 1467, -8041, -3252, -5169, -6666, 2843, 4694, -566, 7638, -2170, -9516, 6835, -6244, -6368, -7742, 6111, -4916, -2867, 3570, 3292])
const typedArray17 = new Uint8Array([4689, -4204, 6218, 3009, 3534, 9599, 1978, 2477, -2911, 3535, -3179, 1453, -9627, 4090, -6101, 2094, -7852, 6628, -4065, -4888, 8304, -8648, 1642, -6149, 4244, -6191, 6733, -9944, 6416, 211, 4848, -186, 6588, 3960, 3973, -4484, 5053, 4240, 5185, 7840, -8966, -3935, -2197, -3358, -2940, 6397, -7440, 8302, 2175, -2690, -1113, -8277, -7947, -6989, -4592, 8346, -9484, 7843, -5426, -2095, -7415, 7936, -4589, 5797, -2661, -9338, -1772, 2589, 1266, -6595, 9946, -6949, -5102, -9952, 4327, -8886, -829, -1775, 1132, 9571, -6830, -9220, -1557, -4508, -7277, 8568, 9091, -6392, -2955, 8980, -5755, -6847, -7166, 1760, 6800, 5667, -932, -4091, -8714, -3390, -4464, 2597, -2774, 3160, 2490, -6420, 7973, 6667, -9186, -6811, -3067, 9105, -9690, 3959, 8055, -1089, -9377, 5920, -3607, 8000, 5431, -9565, -8794, -9784, -8282, 3143, 6543, -2903, 3937, 7927, -3876, 8197, -3805, -2162, -4501, 3320, 6664, 3989, 6551, -4266, 9595, 7035, -7886, 8447, -8198, -6318, 4717, 433, 159, -4402, 8333, -7591, 4815, -4133, -8753, -768, 3712, -8040, -9380, 5851, 5364, 4393, 5980, -9087, -678, -6314, -1902, 6228, 6994, 3136, 556, -3792, -2188, -4211, 1412, 4272, -3171, -5148, 2971, 6868, -1847, -3557, 6974, -1227, -7707, 4943, -1922, 493, -9608, -2932, -4515, 2819, 7767, -1629, -1234, 7098, 3029, 1397, -1601, 7947, -4096, -4716, 1144, -4114, 7210, 8673, -2547, -5790, -1586, 3649, -7535, 3259, 5432, -9385, -6835, 8733, 1451, 9729, 6515, 3281, 1063, 4746, -5745, -8171, 8998, -1493, 747, -8729, 6519, -7184, 5388, -1130, -4410, 4046, -9207, 291, -9251, 9924, -7102, 3564, -5548, 6497, 250, -9050, -1359, -5309, 120, 2658, 6210, 6319, -6182, 978, 8653, 6184, -7336, -6414, -7540, -5137, -7503, -6261, 9483, -8127, -7117, 4010, -5688, 8160, 608, -7549, 1195, 7943, 361, -6386, 7364, -7288, 8243, -1730, 2292, 2415, 9845, 7185, 6268, 8441, 1507, 5005, 9985, -1327, -3390, 7821, 5888, -3327, 6672, 379, -5127, 9242, 8219, 8647, -6509, -5035, 3099, -9991, -6534, 793, -5942, 3382, -3190, 344, -3641, 6828, -6176, -6695, -2270, 3347, -7945, -3698, 446, -7765, -9834, 2583, 8311, 405, -1843, 869, 4332, -5060, -5185, -6572, 4325, 9589, 686, -9620, -7693, -7109, 8683, -1224, -5658, 2731, -5012, 5683, -2894, 6717, 5187, -9403, -7448, -6780, -7797, -8859, 4079, 1010, -7268, 5524, -2230, -5260, -5599, -2827, 5421, 9168, -6632, 1324, 3855, -761, 1740, -5989, 1258, 4573, 4303, 6177, -3699, 5458, 3814, -3786, 9775, 7331, 8598, -8461, 2314, 8100, -3192, 2688, -9019, 9929, -3758, 2299, 2853, 9483, 7772, 8144, -4534, -3641, 8717, 3780, 5768, 2700, -7229, 5650, -1150, -7235, -5209, -7378, 6348, -6289, -9496, -8119, 995, 797, -1187, -8312, -3584, 3089, 8331, -4182, -5829, 4775, 1745, -9117, 4681, -3170, -8199, -9559, -4737, 2984, -5002, 8318, -9074, -7186, -3561, 9467, 7808, -5155, -217, 826, -4565, 3330, 4121, 7464, -232, 4762, -7860, 8996, -7249, -3057, -7997, -8485, 3913, -2941, -2138, 2796, -8386, -5397, 9905, -8948, -4839, 942, -9465, 8031, 7843, -3150, -8452, 7268, -1201, -6130, 1373, 9063, -4841, -7860])
const typedArray16 = new Int8Array([4967, 8911, -6463, 2546])
const shader9 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray15 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray13 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray12 = new Int8Array([-9382, -3165, -9948, 9657])
const typedArray11 = new Int8Array([5689, 7873, -2380, -4560])
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray9 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray8 = new Int8Array([8379, -5089, -2995, 4540, 2121, 4652, -2988, 916, -2580, -7116, 3679, -7517, -334, 3931, 1933, -7002, -6943, -2918, 6878, -7220])
const typedArray7 = new Int8Array([-8037, -7388, -4787, -4310, 3035, 5421, -8015, -6107, -9734, 1276, -4318, 464, -4232, -7829, -1927, -5794])
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray4 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray3 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray2 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray1 = new Uint8Array([-4167, -742, 575, -934])
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader0 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture0",
        size: {
            width: 229,
            height: 172,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 2052,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7457249607733256,
                g: 1.3495960875807367,
                b: 1.5300597227058819,
                a: 0.6266781004999964
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView0,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 1233385693,
        occlusionQuerySet: GPUQuerySet0
    });
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE
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
    GPUComputePassEncoder0.dispatchWorkgroups(112, 128, 6);
    const string0 = GPUTextureView0.label
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const boolean0 = GPUAdapter0.isFallbackAdapter
    const string1 = GPUComputePipeline0.label
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder0.end();
    const string2 = GPUComputePipeline0.label
    const GPUComputePassEncoder1 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    const string3 = await navigator.gpu.getPreferredCanvasFormat();
    const boolean1 = GPUAdapter0.isFallbackAdapter
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "zero"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline0",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const string4 = GPURenderPipeline0.label
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: true,
        size: 101542688,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const string5 = GPUQuerySet0.type
    const string6 = await navigator.gpu.getPreferredCanvasFormat();
    const string7 = GPURenderPipeline0.label
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    GPUQueue0.writeBuffer(GPUBuffer0, 28, typedArray1);
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture1",
        size: {
            width: 783,
            height: 930,
            depthOrArrayLayers: 57
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.499107854791166,
                g: 0.8791356122951322,
                b: 0.27023620370635193,
                a: 1.8412785813776358
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView1,
            depthSlice: 12
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 3184155373,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUComputePassEncoder2 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup0);
    GPURenderPassEncoder1.end();
    const string8 = GPUQuerySet0.label
    const GPUComputePassEncoder3 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray2);
    const GPUBindGroup1 = GPUDevice0.createBindGroup({
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
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
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
    const string9 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray4);
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
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray5);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    const string10 = GPUQueue0.label
    const string11 = GPUComputePassEncoder2.label
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray6);
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
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const string12 = GPUComputePassEncoder2.label
    const string13 = GPUComputePipeline0.label
    GPURenderPassEncoder0.end();
    const string14 = GPUDevice0.label
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 41,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup3);
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline1);
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits1 = GPUAdapter1.limits
    const string15 = GPUQueue0.label
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture2",
        size: {
            width: 1148,
            height: 326,
            depthOrArrayLayers: 24
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView2 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba16float",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6385141143034603,
                g: 1.482335453382497,
                b: 0.18053051122372055,
                a: 0.8817892097961078
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView2
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 3033151795,
        occlusionQuerySet: GPUQuerySet1
    });
    const string16 = GPURenderPassEncoder2.label
    const string17 = GPUTextureView1.label
    const string18 = GPUQuerySet1.label
    const string19 = GPUQuerySet0.label
    const string20 = GPUDevice0.label
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const string21 = GPURenderPipeline0.label
    GPUComputePassEncoder3.end();
    const GPUCommandBuffer1 = GPUCommandEncoder2.finish();
    const GPUQueue1 = GPUDevice0.queue
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 8, typedArray7);
    GPUComputePassEncoder2.end();
    const GPUCommandBuffer2 = GPUCommandEncoder3.finish();
    const string22 = GPUQuerySet0.label
    const string23 = GPUComputePipeline0.label
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 925,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const string24 = GPUQuerySet2.type
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const string25 = GPUQueue1.label
    const string26 = GPURenderPipeline0.label
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "max",
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
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline2);
    const GPUSupportedLimits2 = GPUDevice0.limits
    const string27 = GPUDevice0.label
    const string28 = GPUComputePipeline2.label
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline3",
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
    const GPUCommandBuffer3 = GPUCommandEncoder1.finish();
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 3792,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUTextureView3 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView3"
    });
    GPUQueue1.writeBuffer(GPUBuffer0, 4, typedArray8);
    const GPUSupportedLimits3 = GPUAdapter0.limits
    const string29 = GPURenderPipeline0.label
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUSupportedLimits4 = GPUDevice0.limits
    const string30 = GPUQuerySet3.label
    const GPUQueue2 = GPUDevice0.queue
    const GPUSupportedLimits5 = GPUDevice0.limits
    const string31 = GPUQuerySet1.count
    const string32 = GPUCommandEncoder8.label
    const GPUSupportedFeatures0 = GPUAdapter0.features
    const GPUAdapterInfo0 = GPUAdapter1.info
    const boolean3 = GPUAdapter1.isFallbackAdapter
    const GPUSupportedFeatures1 = GPUDevice0.features
    const GPUAdapterInfo1 = GPUAdapter0.info
    const boolean4 = GPUAdapter0.isFallbackAdapter
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string33 = GPURenderPipeline1.label
    const GPUComputePassEncoder4 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline2);
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray9);
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
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder4.dispatchWorkgroups(35, 240, 19);
    const string34 = GPUTextureView2.label
    const string35 = GPUQueue1.label
    const GPUSupportedLimits6 = GPUAdapter2.limits
    GPUComputePassEncoder4.end();
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapterInfo2 = GPUAdapter3.info
    const GPUComputePassEncoder5 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const string36 = GPUComputePassEncoder5.label
    GPURenderPassEncoder2.end();
    const GPUQueue3 = GPUDevice0.queue
    const GPUCommandBuffer4 = GPUCommandEncoder4.finish();
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray10);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture3",
        size: {
            width: 426,
            height: 655,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPUTextureView4 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9341649558450786,
                g: 1.8694542495955255,
                b: 0.7984077562875702,
                a: 0.42401217159483306
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView4,
            depthSlice: 4
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 2864795075,
        occlusionQuerySet: GPUQuerySet2
    });
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder3.draw(10);
    GPUQueue0.submit([GPUCommandBuffer2]);
    const boolean5 = GPUAdapter1.isFallbackAdapter
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader3
    });
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader4
    });
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.GREEN
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
            module: GPUShaderModule2
        }
    });
    const GPUBindGroupLayout1 = GPUComputePipeline4.getBindGroupLayout(0);
    const GPUSupportedLimits7 = GPUAdapter3.limits
    const string37 = GPUQuerySet0.type
    const string38 = GPUQuerySet0.label
    const GPUSupportedLimits8 = GPUAdapter0.limits
    const string39 = GPUComputePassEncoder5.label
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: true,
        size: 190568880,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    });
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
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
                format: "rg16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline5",
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
            module: GPUShaderModule4
        }
    });
    const GPUSupportedLimits9 = GPUAdapter3.limits
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline0);
    GPUQueue2.writeBuffer(GPUBuffer1, 24, typedArray11);
    const string40 = GPUComputePassEncoder5.label
    const GPUCommandBuffer5 = GPUCommandEncoder5.finish();
    const GPUCommandBuffer6 = GPUCommandEncoder6.finish();
    const string41 = GPURenderPassEncoder3.label
    const string42 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue0.writeBuffer(GPUBuffer0, 28, typedArray12);
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUComputePassEncoder6 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const string43 = GPUQuerySet2.type
    const GPUTextureView5 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView5"
    });
    const string44 = GPUDevice0.label
    const GPUBindGroupLayout2 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const string45 = GPURenderPassEncoder3.label
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUBindGroupLayout3 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUSupportedLimits10 = GPUDevice0.limits
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture4",
        size: {
            width: 591,
            height: 25,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView6 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.23706988346268676,
                g: 0.7905555837252334,
                b: 1.971353707542358,
                a: 0.20815376594775814
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView6,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 703951975,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer0);
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUSupportedLimits11 = GPUAdapter2.limits
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 2629,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const string46 = GPURenderPassEncoder3.label
    const GPUTextureView7 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView7"
    });
    GPURenderPassEncoder3.end();
    const GPUCommandBuffer7 = GPUCommandEncoder8.finish();
    const string47 = GPUQueue2.label
    const GPUTextureView8 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 8,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView8"
    });
    const string48 = GPUCommandEncoder9.label
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader5
    });
    const GPUSupportedFeatures2 = GPUDevice0.features
    const GPUSupportedFeatures3 = GPUDevice0.features
    const GPUSupportedFeatures4 = GPUDevice0.features
    const GPUSupportedLimits12 = GPUAdapter4.limits
    const string49 = GPURenderPipeline4.label
    const string50 = GPUQuerySet0.count
    const GPUSupportedLimits13 = GPUAdapter2.limits
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader6
    });
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader7
    });
    const string51 = GPUComputePipeline5.label
    const string52 = GPUQuerySet0.type
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline5);
    const string53 = GPUQueue0.label
    const string54 = GPURenderPassEncoder4.label
    GPUComputePassEncoder6.end();
    const GPUCommandBuffer8 = GPUCommandEncoder9.finish();
    const GPUSupportedLimits14 = GPUDevice0.limits
    const GPUBindGroupLayout5 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUSupportedFeatures5 = GPUDevice0.features
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline1);
    const string55 = GPUQuerySet3.label
    const string56 = GPUDevice0.label
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader8
    });
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture5",
        size: {
            width: 993,
            height: 879,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView9 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView9"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8794427674751477,
                g: 0.7381963177330089,
                b: 1.2445048762776267,
                a: 1.0673416869370376
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView9,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 2718947012,
        occlusionQuerySet: GPUQuerySet4
    });
    GPUComputePassEncoder5.end();
    const GPUAdapterInfo3 = GPUAdapter1.info
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePassEncoder7 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline6);
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray13);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup8);
    GPUComputePassEncoder7.dispatchWorkgroups(243, 121, 20);
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUComputePassEncoder8 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUSupportedLimits15 = GPUAdapter1.limits
    const GPUTextureView10 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView10"
    });
    GPUQueue3.submit([GPUCommandBuffer6]);
    GPUQueue3.submit([GPUCommandBuffer7]);
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline7",
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
            module: GPUShaderModule7
        }
    });
    const string57 = GPUComputePipeline1.label
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUComputePassEncoder9 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder5.end();
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture6",
        size: {
            width: 3183,
            height: 2333,
            depthOrArrayLayers: 48
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const GPUTextureView11 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r16float",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2533124777479727,
                g: 0.6408910058971304,
                b: 1.7027620233224827,
                a: 0.4770947401366472
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 1145765887,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUTextureView12 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView12"
    });
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline4);
    GPUComputePassEncoder8.end();
    const string58 = GPUQuerySet1.label
    const string59 = GPUQuerySet2.count
    const GPUComputePassEncoder10 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup5);
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline7);
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray14);
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
    const string60 = GPUQuerySet3.type
    GPURenderPassEncoder4.end();
    const GPUCommandBuffer9 = GPUCommandEncoder10.finish();
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer0);
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 3037,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture7",
        size: {
            width: 1652,
            height: 1366,
            depthOrArrayLayers: 17
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView13 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder14.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6697010841531668,
                g: 1.5706141630560417,
                b: 0.09414309756668482,
                a: 1.3751606009100048
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView13
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 4258311632,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUComputePassEncoder11 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits16 = GPUDevice0.limits
    const string61 = GPUCommandEncoder14.label
    const GPUQueue4 = GPUDevice0.queue
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture8",
        size: {
            width: 1295,
            height: 1362,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView14 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "bgra8unorm",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0616841444242662,
                g: 1.0906816474094847,
                b: 1.0081261559937518,
                a: 0.49848810706609137
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView14
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 278069495,
        occlusionQuerySet: GPUQuerySet4
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray15);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
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
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline8);
    const boolean6 = GPUAdapter5.isFallbackAdapter
    const string62 = GPUQuerySet1.count
    const string63 = GPUQuerySet1.type
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader9
    });
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "GPUTexture9",
        size: {
            width: 960,
            height: 575,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8uint"]
    });
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const string64 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const boolean7 = GPUAdapter5.isFallbackAdapter
    const string65 = GPUQuerySet2.label
    const string66 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture10",
        size: {
            width: 223,
            height: 858,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView15 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView15"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1103460367361797,
                g: 0.4410780274828956,
                b: 0.3411338776694288,
                a: 0.16181875453833738
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView15,
            depthSlice: 16
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 2979772392,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPUSupportedFeatures6 = GPUAdapter2.features
    const GPUTextureView16 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView16"
    });
    const GPUSupportedFeatures7 = GPUAdapter1.features
    GPUComputePassEncoder10.end();
    const GPUCommandBuffer10 = GPUCommandEncoder12.finish();
    const GPUSupportedLimits17 = GPUAdapter4.limits
    const string67 = GPUComputePassEncoder11.label
    const string68 = GPUTextureView9.label
    GPUQueue3.writeBuffer(GPUBuffer1, 28, typedArray16);
    GPURenderPassEncoder8.end();
    const GPUCommandBuffer11 = GPUCommandEncoder16.finish();
    GPURenderPassEncoder6.end();
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 250840468,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM
    });
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline5);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder7.dispatchWorkgroups(206, 75, 53);
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline9);
    GPURenderPassEncoder9.draw(9);
    const string69 = GPURenderPassEncoder7.label
    const GPUQueue5 = GPUDevice0.queue
    GPUQueue5.submit([GPUCommandBuffer4]);
    const boolean8 = GPUAdapter1.isFallbackAdapter
    const GPUSupportedLimits18 = GPUAdapter2.limits
    const string70 = GPUQuerySet5.count
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline10",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule7
        }
    });
    const string71 = await navigator.gpu.getPreferredCanvasFormat();
    const string72 = GPUTextureView15.label
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture11",
        size: {
            width: 649,
            height: 620,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView17 = GPUTexture11.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.065343395628332,
                g: 0.7055342466806669,
                b: 0.3404429864490426,
                a: 0.44435673288635713
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 63544827,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUAdapterInfo4 = GPUAdapter3.info
    GPUQueue0.writeBuffer(GPUBuffer4, 176340336, typedArray17);
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture12",
        size: {
            width: 3246,
            height: 1004,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView18 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6788997051984484,
                g: 0.0625792331925521,
                b: 1.6776994583852733,
                a: 0.3530588031383637
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 1057075217,
        occlusionQuerySet: GPUQuerySet5
    });
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline11",
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
            module: GPUShaderModule8
        }
    });
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline11);
    const boolean9 = GPUAdapter3.isFallbackAdapter
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline8);
    GPUComputePassEncoder7.end();
    const GPUCommandBuffer12 = GPUCommandEncoder7.finish();
    GPUComputePassEncoder11.end();
    const string73 = GPUQueue5.label
    const string74 = GPURenderPipeline2.label
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer0);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup9);
    const boolean10 = GPUAdapter2.isFallbackAdapter
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 3477,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPUSupportedLimits19 = GPUDevice0.limits
    const GPUSupportedFeatures8 = GPUDevice0.features
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "zero"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline12);
    GPURenderPassEncoder11.draw(8);
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 3304,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const string75 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue5.writeBuffer(GPUBuffer4, 63083436, typedArray18);
    const GPUSupportedLimits20 = GPUAdapter1.limits
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline5);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder9.dispatchWorkgroups(106, 135, 42);
    const GPUAdapterInfo5 = GPUAdapter5.info
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const string76 = GPUQuerySet2.count
    const string77 = GPUQuerySet2.count
    const string78 = GPUQuerySet1.label
    const boolean11 = GPUAdapter5.isFallbackAdapter
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    GPUQueue3.writeBuffer(GPUBuffer4, 101733104, typedArray19);
    const string79 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray20);
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
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray21);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
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
    GPURenderPassEncoder7.end();
    GPUComputePassEncoder9.end();
    GPURenderPassEncoder9.end();
    const GPUCommandBuffer13 = GPUCommandEncoder17.finish();
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader10
    });
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader11
    });
    const GPUComputePassEncoder12 = GPUCommandEncoder19.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline7);
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray22);
    const GPUBindGroup13 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup13);
    GPUComputePassEncoder12.dispatchWorkgroups(53, 56, 56);
    const GPUSupportedLimits21 = GPUDevice0.limits
    GPURenderPassEncoder10.end();
    const GPUQueue6 = GPUDevice0.queue
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const string80 = GPUQuerySet1.label
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32uint",
        label: "GPUTexture13",
        size: {
            width: 1131,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg32uint"]
    });
    const GPUSupportedLimits22 = GPUAdapter5.limits
    const string81 = GPURenderPipeline7.label
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline12);
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUQueue7 = GPUDevice0.queue
    const string82 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const string83 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandBuffer14 = GPUCommandEncoder14.finish();
    GPUQueue7.submit([GPUCommandBuffer13]);
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const string84 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedLimits23 = GPUDevice0.limits
    GPURenderPassEncoder11.end();
    GPUComputePassEncoder12.end();
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTextureView19 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView19"
    });
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture14",
        size: {
            width: 902,
            height: 179,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView20 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg16float",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder21.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5821119927130907,
                g: 0.6274894780588054,
                b: 1.9050379216693403,
                a: 0.8025015148058532
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView20,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 2124863788,
        occlusionQuerySet: GPUQuerySet5
    });
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder12.draw(1);
    const GPUComputePassEncoder13 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const string85 = GPUComputePassEncoder13.label
    const string86 = GPUQuerySet0.type
    const GPUComputePassEncoder14 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const string87 = GPUComputePipeline3.label
    const string88 = GPUQuerySet0.type
    const GPUAdapterInfo6 = GPUAdapter0.info
    const string89 = GPUQuerySet6.count
    const boolean12 = GPUAdapter4.isFallbackAdapter
    const GPUTextureView21 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView21"
    });
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray23);
    const GPUBindGroup14 = GPUDevice0.createBindGroup({
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
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const string90 = GPUComputePipeline4.label
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer0);
    const GPUTextureView22 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView22"
    });
    const GPUSupportedFeatures9 = GPUAdapter5.features
    const boolean13 = GPUAdapter3.isFallbackAdapter
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline6);
    const GPUSupportedFeatures10 = GPUAdapter6.features
    const string91 = GPUTextureView1.label
    GPURenderPassEncoder12.end();
    const GPUSupportedLimits24 = GPUAdapter2.limits
    const string92 = GPUQuerySet3.label
    const GPUAdapterInfo7 = GPUAdapter6.info
    GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray24);
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
    const GPUSupportedFeatures11 = GPUDevice0.features
    const GPUBindGroupLayout6 = GPUComputePipeline7.getBindGroupLayout(0);
    const GPUComputePassEncoder15 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    const string93 = GPUComputePassEncoder14.label
    const boolean14 = GPUAdapter6.isFallbackAdapter
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const string94 = GPUQuerySet7.type
    const GPUSupportedLimits25 = GPUDevice0.limits
    const string95 = GPUQuerySet7.label
    const GPUSupportedLimits26 = GPUAdapter2.limits
    const GPUBindGroupLayout7 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture15",
        size: {
            width: 1525,
            height: 2098,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPUTextureView23 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder21.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7027556638590067,
                g: 0.6840336501967272,
                b: 1.0545017193076305,
                a: 1.90480336451459
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 3159645008,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder13.end();
    GPUQueue5.submit([GPUCommandBuffer5]);
    const GPUAdapterInfo8 = GPUAdapter6.info
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture16",
        size: {
            width: 3615,
            height: 2073,
            depthOrArrayLayers: 64
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView24 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba16float",
        label: "GPUTextureView24"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4255098892772373,
                g: 0.12331550163044058,
                b: 0.4061309669334332,
                a: 0.5939917186555181
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView24
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 3516030682,
        occlusionQuerySet: GPUQuerySet2
    });
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedLimits27 = GPUAdapter7.limits
    GPUQueue1.writeBuffer(GPUBuffer4, 160927100, typedArray25);
    const string96 = GPURenderPipeline0.label
    const GPUTextureView25 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 4,
        format: "rg16float",
        label: "GPUTextureView25"
    });
    const string97 = GPUQueue6.label
    const GPUSupportedLimits28 = GPUAdapter7.limits
    const string98 = GPUTextureView2.label
    const boolean15 = GPUAdapter7.isFallbackAdapter
    const string99 = GPUComputePassEncoder15.label
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg11b10ufloat",
        label: "GPUTexture17",
        size: {
            width: 839,
            height: 550,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg11b10ufloat"]
    });
    GPUComputePassEncoder13.end();
    GPUQueue4.submit([GPUCommandBuffer11]);
    const string100 = GPUDevice0.label
    const GPUAdapterInfo9 = GPUAdapter2.info
    const GPUComputePassEncoder16 = GPUCommandEncoder19.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    const GPUCommandBuffer15 = GPUCommandEncoder21.finish();
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 200613756,
        usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    });
    const string101 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUAdapterInfo10 = GPUAdapter2.info
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8sint",
        label: "GPUTexture18",
        size: {
            width: 1364,
            height: 750,
            depthOrArrayLayers: 40
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg8sint"]
    });
    const string102 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader12
    });
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray26);
    const GPUBindGroup16 = GPUDevice0.createBindGroup({
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
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 3119,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const string103 = GPURenderPipeline3.label
    const GPUBindGroupLayout8 = GPUComputePipeline9.getBindGroupLayout(0);
    const GPUTextureView26 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "GPUTextureView26"
    });
    const string104 = GPUTextureView1.label
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUSupportedFeatures12 = GPUAdapter1.features
    GPURenderPassEncoder14.end();
    GPUQueue7.writeBuffer(GPUBuffer1, 28, typedArray27);
    const string105 = GPURenderPipeline12.label
    GPUQueue5.submit([GPUCommandBuffer14]);
    GPUComputePassEncoder15.end();
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 1510,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline8);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup16);
    GPUComputePassEncoder14.dispatchWorkgroups(111, 5, 21);
    const GPUBindGroupLayout9 = GPUComputePipeline9.getBindGroupLayout(0);
    const string106 = GPUTextureView10.label
    const string107 = GPUDevice0.label
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUTextureView27 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8uint",
        label: "GPUTextureView27"
    });
    const GPUSupportedFeatures13 = GPUDevice0.features
    const GPUSupportedFeatures14 = GPUAdapter5.features
    const string108 = GPUComputePipeline8.label
    const GPUCommandBuffer16 = GPUCommandEncoder11.finish();
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup2);
    const string109 = GPUComputePassEncoder14.label
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 199932492,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup12);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline3);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup16);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline10);
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture19",
        size: {
            width: 231,
            height: 594,
            depthOrArrayLayers: 3
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView28 = GPUTexture19.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView28"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4955004864618848,
                g: 0.2416934814933509,
                b: 1.3588744060530444,
                a: 0.005576543052017824
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView28,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 2412971163,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule10,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "constant"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline13",
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
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder15.setPipeline(GPURenderPipeline13);
    GPURenderPassEncoder15.draw(8);
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray28);
    const GPUBindGroup17 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup17);
    const string110 = GPUDevice0.label
    const string111 = GPUQuerySet8.label
    const string112 = GPURenderPipeline4.label
    const GPUAdapterInfo11 = GPUAdapter5.info
    const string113 = GPUTextureView13.label
    const string114 = GPUQueue7.label
    const string115 = GPUQuerySet2.label
    const GPUBindGroupLayout10 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUQueue8 = GPUDevice0.queue
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const string116 = GPUCommandEncoder20.label
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "GPUTexture20",
        size: {
            width: 596,
            height: 475,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8uint"]
    });
    const GPUTextureView29 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg11b10ufloat",
        label: "GPUTextureView29"
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup17);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline9);
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray29);
    const GPUBindGroup18 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup18);
    GPUComputePassEncoder16.dispatchWorkgroups(151, 200, 18);
    const string117 = GPUQuerySet1.label
    const string118 = GPUComputePassEncoder14.label
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup18);
    const GPUAdapterInfo12 = GPUAdapter3.info
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray30);
    const GPUBindGroup19 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup19);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline9);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup18);
    GPUComputePassEncoder14.dispatchWorkgroups(87, 134, 60);
    const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    const GPUSupportedLimits29 = GPUAdapter1.limits
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture21",
        size: {
            width: 856,
            height: 386,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView30 = GPUTexture21.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView30"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.04144317150634902,
                g: 0.4037327136485427,
                b: 1.6692363829383927,
                a: 1.329249889841471
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView30,
            depthSlice: 33
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 1715896228,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUSupportedFeatures15 = GPUAdapter4.features
    const GPUSupportedFeatures16 = GPUDevice0.features
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture22",
        size: {
            width: 2972,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const string119 = GPURenderPassEncoder16.label
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup18);
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray31);
    const GPUBindGroup20 = GPUDevice0.createBindGroup({
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
    const GPUCommandBuffer17 = GPUCommandEncoder23.finish();
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUQueue9 = GPUDevice0.queue
    const GPUComputePassEncoder17 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture23",
        size: {
            width: 1946,
            height: 1131,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView31 = GPUTexture23.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgb10a2unorm",
        label: "GPUTextureView31"
    });
    const GPURenderPassEncoder17 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8673611711024196,
                g: 1.4214070844056248,
                b: 1.332341018688493,
                a: 1.7937509849070625
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView31
        }],
        label: "GPURenderPassEncoder17",
        maxDrawCount: 4273386617,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline14",
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
            module: GPUShaderModule8
        }
    });
    GPUQueue5.writeBuffer(GPUBuffer4, 167970656, typedArray32);
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule10,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline15",
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
            module: GPUShaderModule6
        }
    });
    const GPUCommandEncoder24 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    GPUComputePassEncoder17.setPipeline(GPUComputePipeline10);
    GPUComputePassEncoder17.setBindGroup(0, GPUBindGroup19);
    GPUComputePassEncoder17.dispatchWorkgroups(132, 7, 13);
    const boolean16 = GPUAdapter7.isFallbackAdapter
    const GPUSupportedFeatures17 = GPUAdapter2.features
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPURenderPassEncoder17.end();
    const string120 = GPUComputePassEncoder17.label
    const GPUTextureView32 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 43,
        baseArrayLayer: 1,
        mipLevelCount: 7,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView32"
    });
    const string121 = GPUTextureView18.label
    const string122 = GPUQuerySet0.type
    const GPUCommandEncoder25 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    GPURenderPassEncoder16.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedFeatures18 = GPUAdapter8.features
    GPURenderPassEncoder15.end();
    const GPUCommandBuffer18 = GPUCommandEncoder18.finish();
    const string123 = GPUCommandEncoder24.label
    const GPUTextureView33 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView33"
    });
    GPUComputePassEncoder17.end();
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures19 = GPUAdapter10.features
    GPUQueue7.writeBuffer(GPUBuffer6, 104732752, typedArray33);
    const GPUTextureView34 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView34"
    });
    const GPURenderPipeline16 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline16",
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
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline16);
    GPURenderPassEncoder16.draw(3);
    const GPUAdapterInfo13 = GPUAdapter9.info
    const GPUAdapterInfo14 = GPUAdapter2.info
    const GPUSupportedLimits30 = GPUAdapter7.limits
    const GPUBindGroupLayout11 = GPUComputePipeline9.getBindGroupLayout(0);
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline16);
    const GPUComputePassEncoder18 = GPUCommandEncoder22.beginComputePass({
        label: "GPUComputePassEncoder18"
    });
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    const GPUSupportedLimits31 = GPUAdapter4.limits
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader13
    });
    GPUQueue3.writeBuffer(GPUBuffer6, 42268100, typedArray34);
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    GPUQueue6.writeBuffer(GPUBuffer4, 62431028, typedArray35);
    const string124 = GPUDevice0.label
    const GPUQueue10 = GPUDevice0.queue
    const string125 = GPURenderPassEncoder16.label
    const GPUSupportedLimits32 = GPUDevice0.limits
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: false,
        size: 73347088,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    });
    const string126 = GPUQuerySet5.label
    const string127 = GPUComputePassEncoder16.label
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup18);
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2uint",
        label: "GPUTexture24",
        size: {
            width: 460,
            height: 424,
            depthOrArrayLayers: 40
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2uint"]
    });
    const GPUSupportedLimits33 = GPUDevice0.limits
    const GPUComputePassEncoder19 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder19"
    });
    const GPUAdapterInfo15 = GPUAdapter8.info
    GPUQueue6.writeBuffer(GPUBuffer0, 8, typedArray36);

}
main().catch(console.error);