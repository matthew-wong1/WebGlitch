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
// Seed: 7367082371479833936
const typedArray25 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader14 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader13 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray24 = new Float32Array([7220, 1981, 8343, 5030, -4443, 2276, 7564, -2405, -5953, 9682, -688, 4755, 7166, 8083, -1912, -3558, 2552, -5890, -6841, 1149, -6321, -6774, 2318, 7710, -3746, 4232, -480, -9111, -6828, -59, -3016, -9169, -5036, 5199, 3165, 757, 2731, 1137, -559, 5022, 1570, -6659, -4370, -59, 9804, -3060, 3064, 5282, 1028, -2222, -8032, 9783, -4601, 7626, 9028, 2241, -9995, -4767, 8674, 6714, -3037, 7266, -2413, -1158, 1296, 4513, 7836, -2494, 7906, -9160, -1138, 939, -2667, 8674, -7788, 2624, -4024, -9039, -8145, 9803, 9517, -2471, 8830, 5308, -4028, -401, 3558, 7484, 2796, 3392, 883, 7046, 4412, -7734, 8428, 7955, 6390, 5814, 3184, -3552, -4758, 7739, 3546, -15, 2603, 4207, 2433, 3735, -1079, -8903, 3793, 682, -3152, 6682, 8169, -6782, -942, 9640, -9402, 1766, 3061, 3874, -1920, 8417, 1756, 6450, -4804, -3503, -8811, -8359, 4277, -9480, 398, 8054, -6776, 8388, -1310, -2274, 1460, 4647, 5133, 1163, 2093, -743, 6475, 1299, 7052, 8717, 426, -9658, -8112, -9984, 8907, -1847, 8178, 4462, 20, 8515, 4685, -7289, 4554, -1791, 3852, -316, 4151, -185, -2389, 9888, -5771, 7807, 1362, 5609, 3761, -2728, 2807, 4661, 602, -8843, 441, -8040, 3098, -99, 7397, 3672, 6752, -1356, -7557, 9539, 2634, 9394, 9015, -1473, 6637, -1365, -6709, 2613, -2637, -514, -6935, 4456, -7661, 107, -9314, 2866, -9017, -4840, -5277, 8353, 7877, -4113, -298, 5676, -2825, -4954, -7478, -2086, 3713, -5501, 9783, -7679, 1858, 7596, 5343, -1723, -6155, 8908, -5117, 2715, 1212, -3, 735, 5625, 1186, -4370, 2464, 5878, 9142, -1611, -1166, 9283, 8355, -4660, 2278, -1865, -7957, 7374, -3806, -7478, -5127, -3999, 42, 79, -8276, -247, -7297, -1366, -3678, -5064, 5592, -4289, 1526, 5775, 9670, -8925, 3029, 8623, -5865, 449, -5664, -4417, 152, 2970, -4018, -9749, -9111, -5434, 7676, 6556, -5946, 2608, 7087, -7342, -3228, -8482, -457, 2865, 5261, -8824, -6726, 2327, 7917, 7813, -2988, 1514, 6530, -7232, 1550, 4124, 6134, 5894, 6224, -8882, -6021, 987, 9522, -6596, 9020, -3286, -3540, 3220, -2574, 5521, 2323, -8699, 9249, -4802, 5085, 6628, 7800, 1064, 6873, 4936, 7610, 5231, 7636, 7019, 5149, -4782, 6747, -1362, 8202, -1882, -7205, 8565, -8040, 5735, -7854, 2241, -4306, 1987, -531, 2434, 4808, 7412, -7110, -7463, -8833, 6752, -8636, 3976, 204, -7717, 4242, -1537, -6629, 4520, -338, 8107, -4746, -2505, 6468, 919, -7725, 1623, -4049, 136, 7707, -2961, -6559, -5446, -2065, -6911, -704, 4298, -9451, 8757, -5196, 6265, 6030, -9733, 8671, 7521, -3274, 5054, 1726, -3462, -9159, 1685, -5408, -6421, 7311, 2908, -6811, 6575, 7980, -8855, 6943, 49, -2903, 9842, 6123, 1890, 7630, 8636, -97, -5786, 7210, -8143, -9752, 5557, -9167, 7335, -9334, -5566, 3998, 6089, 981, -9067, 8804, 9578, 2201, -8020, -8585, -4800, 2560, 3025, 3302, 8731, 5404, -7258, -466, 6502, 5144, 4639, 2127, -5522, 5818, -1596])
const typedArray23 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray22 = new Int8Array([-5967, 9735, 5384, 7280])
const typedArray21 = new Uint8Array([-6303, -472, -2571, 5827, 6908, -7480, -5834, 4492, -9236, 1478, 4800, -8309, -6796, 129, -3010, 7774, 7992, 7721, -7351, 1969, -9679, 3793, 223, 6559, 7071, -2524, -5311, 1098, 595, -5274, -5980, 5599, 6663, -7244, 3206, -9437, 3278, -5700, 7475, 7134, 4510, -1513, -8202, 1376, 7973, -9063, 3899, -123, 5815, 1792, 8660, -4320, -2981, -1942, -8, 3704, 3225, -6400, -9221, 9672, 7590, 9420, 4117, -6363, -3965, 4007, 7742, -5245, 89, 434, -5039, -3628, 4162, -7592, -1726, -3905, -619, 1104, 7997, 5412, 4697, -4031, 5647, 5094, -3922, -6335, 8757, 2707, -929, 7081, -8916, -2292, -5674, -6714, -5162, -5860, -5419, -8500, -3002, 2814, 2750, -2976, -5513, 7166, -3907, -6301, 1678, 2173, 2265, 2057, -5636, 4493, -8261, 7524, 115, 1553, 5183, 5554, 4785, 3639, 7296, 5467, -9661, -764, 8855, -6704, -382, -4459, -8772, 1475, -1414, 447, -9163, 7925, 3677, 9080, 8558, -5525, -1505, 918, 1612, -6105, 3751, -8159, 1756, -7979, -1906, 3322])
const typedArray20 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray19 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray18 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader12 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader11 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray17 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray16 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray15 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray13 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray12 = new Float32Array([-1434, -4360, 2344, -7388, 9959, 8570, -8046, -9645, 8500, -8075, -2244, 8373, 9167, 1898, 7922, -6229, 8197, -2474, -9304, -6747, 3059, -719, 732, -1555, 9777, -4034, -174, 9248, -4027, 8737, -2951, 9467, 6479, -4423, -6848, 6389, -4920, 9012, -807, 4279, 8845, -3649, -6531, 5223, -7394, 3518, 7111, 9516, -8371, 8276, 339, -2199, -1962, 552, -6633, -5800, -8328, -876, 8883, -158, 2433, -5432, 9032, -2864, -722, -48, 6891, -9270, -4177, -827, -5585, 6123, -5200, 4968, -5859, -8807, -2104, 3386, -7601, 5264, -8641, -1606, 4610, -9505, 4677, -9218, -1132, -3547, -8111, -2634, -7516, -6855, -3146, -9071, -5675, 8467, 6767, -9201, -5151, -3981, 6714, -7673, -9704, 4235, -4749, -7423, -4585, 7615, -9476, -1730, -51, 3089, 3192, 1138, -7152, -5053, -8980, 8306, 6511, -7720, -8042, -6262, 8521, 9349, 6805, -6673, 5592, -8151, -7486, 3070, -3807, -8532, 2795, 4342, 4667, -4797, -5463, 7143, 3500, 8336, 7530, -9825, -6829, -7707, 5461, 8471, 6197, -2758, -3306, 2657, -9989, -4232, -4172, 5567, -919, -3302, -4247, 2178, 2947, -2358, 3014, -3818, -764, 5935, -5859, -6148, -992, 5740, 4524, -7267, 1787, 4473, 9511, -1537, 6893, 2238, 7252, -1999, -8033, -1240, 6585, -8073, -1830, -2010, 2841, -8295, 4329, -3052, 8638, -4088, -2066, 7331, 8875, -1609, -918, 3607, 2368, -235, -2533, -223, 8642, 8247, -2049, -6463, -312, 9925, 8737, -2692, 158, -8311, -1083, 7942, -1046, -3608, -3380, -9076, -8392, -1282, -1874, 180, 2038, 8890, 5274, 1438, -7801, 4194, 8146, 2729, 752, -6955, 9423, -8530, 6015, -2048, 8523, 4769, -9294, 2860, -8573, -3916, -2477, -887])
const shader10 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader9 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray11 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray10 = new Float32Array([-7161, -2862, 3347, 9188, -9764, 6228, -2785, 6389, -6675, -4608, -4948, 8979, -9887, -3360, 5285, -1256, 7564, 4454, -9655, 1439, 6386, 6454, 3510, -8414, -7109, -4751, -3152, 4949, 767, 3801, -1480, 7500, 7393, 290, 6850, -6684, -3612, 3003, 7996, -3333, 9818, 4742, -9006, 2778, 7940, -52, -562, -9191, 5226, 4141, -9329, -1242, -2828, 756, 745, 6703, 1329, -7387, -295, 1166, -2021, 1583, 5328, -5552, -6548, -2905, 5705, 4069, 9657, -9605, 5170, 8696, 642, 9966, -357, -376, -8, 7060, 2968, 2204, -9347, -3196, -8982, 535, 9501, 1382, -9024, -2071, -2443, -1418, 9962, -5219, -8857, -1448, 8139, 1507, -7275, 4989, 4780, -9887, -9546, 2014, -4149, -5894, 6627, -7304, 4381, 509, -3697, -3999, 6231, -9361, 1451, -3856, -1383, -5411, -2044, 894, 546, -5785, -7858, -3011, 4736, 7963, 2418, 8704, -5651, -5787, -5882, -2185, -9974, 6805, 7710, 2111, -5052, 2489, 467, 2052, 4939, 1119, -9344, 8668, 7098, -7456, -3258, -326, -8056, -6822, 6666, -136, 2805, -7924, 6391, -5717, -9567, -9357, -510, -9318, -5882, -5392, 1011, 4376, 4515, 3575, -6785, 4609, -7787, 4601, -5971, -153, 6531, -5555, -2187, 6259, -8209, -8832, 3550, 1349, -5557, -3429, -7602, 2482, -9961, -5911, -3131, 7764, 5571, 2892, 8017, -7559, 9525, 1693, 9251, -2809, -3942, -9164, 8296, 9647, 6652, -648, -908, 1797, -2298, 3309, -4926, 1472, -7226, 264, -9478, 2220, 2482, -4917, -6195, 7239, 5191, -101, -4890, -3344, -6868, 6147, -1924, -475, 3933, 379, -2994, 7067, -8035, -9657, 2084, 668, -5442, 7146, -1483, 6550, 860, 8623, -8785, -3928, -245, -9893, -7525, -3927, -583, -7404, 8908, 3612, 9406, -2132, -1915, 5101, -4745, 6812, 176, 6280, 4807, -5953, 7669, -6991, -8572, -6086, 7222, 7866, -8578, -8359, -4963, 703, 4075, -4524, 8604, -8504, 5430, 7701, 2280, 4248, 9025, -4009, 5230, 4307, -8279, 7840, -6136, -5052, -2557, -4762, 4112, -3269, -4892, -9278, -6543, -3462, -3796, 5600, 9501, -5506, 8858, -6545, -4876, 5614, -4678, -7837, 3840, -7723, 2934, -3009, -4100, -7114, 9898])
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray9 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray8 = new Int8Array([6705, 798, -2906, -7630, -7838, -2101, -4748, -6067, -1803, 4837, 7778, 3079, 8226, 6289, 4598, 1998, 8558, -3227, -7989, -3646, 8846, 8405, 7798, 8071, -6462, -1418, -9471, -3487, -6250, 174, -4236, 9325])
const typedArray7 = new Uint8Array([1004, 5170, -4960, -9241])
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray4 = new Int8Array([4026, 975, -2816, 4797, -2667, -7794, -5973, -2384, 7345, 7979, -1580, 5809, -1730, -8400, -1544, -8134, 2110, 6503, -7941, -5285, 8555, 2084, 54, -4065, 8468, 9238, -2938, -1986, 8548, -8721, 9191, -7945, -4483, -9089, 9032, -9255, 1876, 6306, -9486, 914, 3545, 8433, -3023, -9806, 4122, -399, 4507, 1112, 7333, -1273, 2457, 9355, 6933, 4788, -7500, 7780, 8770, 4052, 401, 8775, 888, 1014, 6471, 9165, 4810, 4930, -6509, -6547, -8452, 2190, -2076, 2610, -292, -7662, 3082, -5222, 1909, 875, -8009, 4584, 3141, 5432, 4070, -4343, 7854, 9514, -3652, 7242, 1926, -6432, 6136, 1324, -591, 4937, 5150, 2893, -9647, -5229, -2280, -9741, -925, -1711, 8865, -6443, 2790, 1362, 3394, -3116, -5792, 7059, -9732, -6579])
const typedArray3 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray2 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray1 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Int8Array([3666, 5961, -4160, 830, 2621, -1961, 4352, 6283, 1585, -5899, 4146, 88, -5856, -6044, 5885, 5442, -8586, -5426, -8479, 2055, -5992, 7840, 7593, -1005, -9609, 1152, -7754, -7664])
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader0 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture0",
        size: {
            width: 2770,
            height: 1650,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 2182,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.17559591271225128,
                g: 0.003139152337750639,
                b: 1.096013068428715,
                a: 0.9467390145867585
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 3589690232,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder0.end();
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
    const string0 = GPUComputePipeline0.label
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
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
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline0",
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
            module: GPUShaderModule2
        }
    });
    const string1 = GPURenderPipeline0.label
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture1",
        size: {
            width: 377,
            height: 247,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4984680106068313,
                g: 0.10877558443413426,
                b: 0.48274182511996067,
                a: 0.9642246114657411
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView1,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 2710245325,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder1.end();
    const GPUQueue0 = GPUDevice0.queue
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 216204940,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 13115484, typedArray0);
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture2",
        size: {
            width: 604,
            height: 880,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView2 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5363523578945069,
                g: 1.2636132509041755,
                b: 0.2865810597164793,
                a: 1.5638814674706283
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView2,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 2367264957,
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
                        dstFactor: "dst",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline1);
    const boolean0 = GPUAdapter0.isFallbackAdapter
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const GPUAdapterInfo0 = GPUAdapter0.info
    GPURenderPassEncoder2.draw(10);
    const GPUTextureView3 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm",
        label: "GPUTextureView3"
    });
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedLimits1 = GPUAdapter0.limits
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 1332,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPUTextureView4 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba8unorm",
        label: "GPUTextureView4"
    });
    const string2 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUTextureView5 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView5"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 3643,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const string3 = GPUQuerySet2.count
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder2.end();
    const string4 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder0.end();
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "GPUTexture3",
        size: {
            width: 1643,
            height: 862,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView6 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.523045503479614,
                g: 0.5030025597800392,
                b: 1.9272268449956336,
                a: 0.7963859667174089
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView6
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 1358530296,
        occlusionQuerySet: GPUQuerySet0
    });
    const string5 = GPURenderPassEncoder3.label
    const string6 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue1 = GPUDevice0.queue
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 1812,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPUBindGroupLayout1 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture4",
        size: {
            width: 177,
            height: 237,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView7 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView7"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.287482280679886,
                g: 0.991645810104183,
                b: 1.2045398908742242,
                a: 0.7237485013731224
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView7,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 4069714902,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader3
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture5",
        size: {
            width: 1089,
            height: 1246,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView8 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba8unorm",
        label: "GPUTextureView8"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4072092484046166,
                g: 0.32819235871430386,
                b: 1.5945623437982734,
                a: 0.9333241129929222
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView8
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 319963487,
        occlusionQuerySet: GPUQuerySet0
    });
    const string7 = GPUQuerySet0.label
    const GPUBindGroupLayout2 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.end();
    const string8 = GPURenderPassEncoder3.label
    const string9 = GPUQueue0.label
    const string10 = GPUDevice0.label
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader4
    });
    const GPUBindGroupLayout3 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32float",
        label: "GPUTexture6",
        size: {
            width: 544,
            height: 977,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r32float"]
    });
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture7",
        size: {
            width: 2821,
            height: 3697,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView9 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView9"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.11044562051457918,
                g: 1.9984086398077074,
                b: 0.40144391518347255,
                a: 1.8991404474637779
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView9
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 1522591931,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture8",
        size: {
            width: 3046,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    GPURenderPassEncoder6.end();
    const GPUCommandBuffer1 = GPUCommandEncoder4.finish();
    const string11 = GPUComputePipeline1.label
    const string12 = GPUQuerySet2.count
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader5
    });
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline2);
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline3",
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
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline3);
    const string13 = GPUCommandEncoder1.label
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const GPUBindGroupLayout5 = GPUComputePipeline2.getBindGroupLayout(0);
    const string14 = GPURenderPassEncoder5.label
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg11b10ufloat",
        label: "GPUTexture9",
        size: {
            width: 3212,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg11b10ufloat"]
    });
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const string15 = GPUComputePipeline1.label
    GPUQueue1.submit([GPUCommandBuffer1]);
    const GPUComputePassEncoder2 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline3);
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX
    });
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray1);
    const GPUBindGroup0 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup0);
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture10",
        size: {
            width: 377,
            height: 895,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView10 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6204106431703642,
                g: 0.20070975777967548,
                b: 0.05545087249830294,
                a: 0.6476249860737551
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView10,
            depthSlice: 29
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 1894273164,
        occlusionQuerySet: GPUQuerySet3
    });
    const string16 = GPUDevice0.label
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const boolean3 = GPUAdapter0.isFallbackAdapter
    const string17 = GPUTextureView9.label
    const GPUBindGroupLayout6 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const string18 = await navigator.gpu.getPreferredCanvasFormat();
    const string19 = GPUQueue0.label
    GPURenderPassEncoder4.end();
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline3);
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture11",
        size: {
            width: 3114,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r32uint"]
    });
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture12",
        size: {
            width: 1873,
            height: 1502,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView11 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1636841558650284,
                g: 0.746002290415154,
                b: 0.4826305157472066,
                a: 0.041194841174034824
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 1045915801,
        occlusionQuerySet: GPUQuerySet3
    });
    const string20 = GPUQuerySet2.label
    const string21 = GPUQuerySet1.label
    const GPUComputePassEncoder3 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const string22 = GPUQuerySet3.label
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline3);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray2);
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
    const string23 = GPURenderPassEncoder3.label
    const GPUSupportedFeatures0 = GPUDevice0.features
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUQueue2 = GPUDevice0.queue
    const string24 = GPUComputePipeline0.label
    const GPUBindGroupLayout7 = GPUComputePipeline0.getBindGroupLayout(0);
    const string25 = GPUComputePassEncoder2.label
    const string26 = GPUDevice0.label
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUSupportedLimits2 = GPUDevice0.limits
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader6
    });
    GPUComputePassEncoder3.end();
    const string27 = GPUQuerySet2.type
    const GPUBindGroupLayout8 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture13",
        size: {
            width: 2773,
            height: 2202,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const string28 = GPUCommandEncoder9.label
    const GPUSupportedFeatures1 = GPUAdapter0.features
    const string29 = GPUQuerySet3.label
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 2168,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline1);
    const GPUBindGroupLayout9 = GPUComputePipeline4.getBindGroupLayout(0);
    GPURenderPassEncoder7.end();
    const GPUCommandBuffer2 = GPUCommandEncoder6.finish();
    const string30 = GPUComputePassEncoder2.label
    const GPUSupportedLimits3 = GPUDevice0.limits
    const GPUCommandBuffer3 = GPUCommandEncoder9.finish();
    const boolean4 = GPUAdapter0.isFallbackAdapter
    const GPUSupportedLimits4 = GPUAdapter1.limits
    const GPUTextureView12 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView12"
    });
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer0);
    const string31 = GPURenderPassEncoder3.label
    const string32 = GPURenderPassEncoder8.label
    const string33 = GPUDevice0.label
    const string34 = GPUTextureView1.label
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 185086268,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline5);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray3);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder2.dispatchWorkgroups(64, 1, 24);
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture14",
        size: {
            width: 441,
            height: 431,
            depthOrArrayLayers: 54
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView13 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.2543743835596195,
                g: 0.8207931886254798,
                b: 1.951267278506646,
                a: 0.2328070807049898
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView13,
            depthSlice: 44
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 607958053,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder5.draw(4);
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 26707840,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
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
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline4",
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
    const GPUSupportedFeatures2 = GPUDevice0.features
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 199341952,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const GPUSupportedFeatures3 = GPUAdapter1.features
    const GPUBindGroupLayout10 = GPUComputePipeline5.getBindGroupLayout(0);
    const string35 = GPUQuerySet1.label
    GPUQueue1.writeBuffer(GPUBuffer0, 86573084, typedArray4);
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "dst",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALPHA
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUSupportedFeatures4 = GPUAdapter0.features
    const GPUBindGroupLayout11 = GPUComputePipeline0.getBindGroupLayout(0);
    const string36 = GPUQueue0.label
    const string37 = GPURenderPipeline3.label
    GPUComputePassEncoder2.end();
    const GPUCommandBuffer4 = GPUCommandEncoder5.finish();
    const boolean5 = GPUAdapter1.isFallbackAdapter
    const GPUTextureView14 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView14"
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray5);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
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
    const GPUComputePassEncoder4 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup0);
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const string38 = GPUQuerySet0.count
    const string39 = GPUComputePassEncoder4.label
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline2);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray6);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder4.dispatchWorkgroups(153, 23, 13);
    GPURenderPassEncoder5.draw(6);
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const string40 = GPUComputePipeline4.label
    GPUComputePassEncoder4.end();
    const GPUSupportedLimits5 = GPUAdapter1.limits
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer1);
    const GPUSupportedLimits6 = GPUDevice0.limits
    const GPUTextureView15 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView15"
    });
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const string41 = GPUQueue0.label
    const string42 = GPUTextureView3.label
    const string43 = GPURenderPipeline1.label
    const string44 = GPUTextureView8.label
    const GPUSupportedLimits7 = GPUAdapter0.limits
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader7
    });
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16uint",
        label: "GPUTexture15",
        size: {
            width: 718,
            height: 1001,
            depthOrArrayLayers: 40
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16uint"]
    });
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 803,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPUComputePassEncoder5 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const GPUTextureView16 = GPUTexture8.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView16"
    });
    const string45 = GPUQueue0.label
    const string46 = GPUQuerySet3.type
    const GPUSupportedFeatures5 = GPUDevice0.features
    GPUQueue0.submit([GPUCommandBuffer2]);
    const GPUComputePassEncoder6 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 28, typedArray7);
    const GPUSupportedLimits8 = GPUDevice0.limits
    const string47 = GPUQuerySet1.label
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 210563940,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX
    });
    const GPUAdapterInfo1 = GPUAdapter1.info
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture16",
        size: {
            width: 345,
            height: 6,
            depthOrArrayLayers: 59
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView17 = GPUTexture16.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.1759361799024639,
                g: 1.0043598881670723,
                b: 0.15885932017561744,
                a: 0.10337658971666808
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView17,
            depthSlice: 7
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 1095966071,
        occlusionQuerySet: GPUQuerySet5
    });
    GPURenderPassEncoder8.draw(1);
    const GPUSupportedFeatures6 = GPUAdapter0.features
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline6",
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
            module: GPUShaderModule2
        }
    });
    const GPUAdapterInfo2 = GPUAdapter1.info
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const string48 = GPURenderPipeline1.label
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray8);
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture17",
        size: {
            width: 1574,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    GPURenderPassEncoder5.end();
    const GPUCommandBuffer5 = GPUCommandEncoder3.finish();
    const string49 = GPUDevice0.label
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline7",
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
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder9.draw(5);
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 228000540,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    const GPUSupportedLimits9 = GPUAdapter0.limits
    const GPUSupportedLimits10 = GPUDevice0.limits
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture18",
        size: {
            width: 101,
            height: 663,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView18 = GPUTexture18.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6017478503774192,
                g: 0.05985496091944986,
                b: 0.08802999252922872,
                a: 0.14448850921189949
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18,
            depthSlice: 6
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 2065915211,
        occlusionQuerySet: GPUQuerySet4
    });
    const string50 = GPUQuerySet5.type
    GPURenderPassEncoder8.end();
    const string51 = GPUComputePipeline3.label
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup2);
    const string52 = GPUQuerySet0.count
    const string53 = GPUComputePassEncoder5.label
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUSupportedFeatures7 = GPUAdapter0.features
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string54 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue3 = GPUDevice0.queue
    const string55 = GPUDevice0.label
    const GPUSupportedFeatures8 = GPUAdapter0.features
    const string56 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder11.end();
    const string57 = GPUComputePassEncoder6.label
    const GPUTextureView19 = GPUTexture8.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView19"
    });
    const string58 = GPUQueue0.label
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 3529,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const string59 = GPUCommandEncoder12.label
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline8",
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
            module: GPUShaderModule2
        }
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray9);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    const GPUTextureView20 = GPUTexture11.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r32uint",
        label: "GPUTextureView20"
    });
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    const GPUBindGroupLayout12 = GPUComputePipeline6.getBindGroupLayout(0);
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup0);
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder3.end();
    const GPUBindGroupLayout13 = GPUComputePipeline0.getBindGroupLayout(0);
    const boolean6 = GPUAdapter0.isFallbackAdapter
    const string60 = GPURenderPipeline6.label
    const GPUAdapterInfo3 = GPUAdapter0.info
    const string61 = GPUQuerySet4.label
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 1265,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPUSupportedLimits11 = GPUAdapter3.limits
    const string62 = GPUDevice0.label
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16sint",
        label: "GPUTexture19",
        size: {
            width: 2323,
            height: 1214,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16sint"]
    });
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 2399,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const string63 = GPUDevice0.label
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: true,
        size: 39392380,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT
    });
    const GPUBindGroupLayout14 = GPUComputePipeline5.getBindGroupLayout(0);
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src-alpha-saturated"
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
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule2
        }
    });
    const string64 = GPURenderPipeline2.label
    const GPUSupportedFeatures9 = GPUDevice0.features
    const string65 = GPURenderPassEncoder9.label
    const string66 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup1);
    const string67 = GPUDevice0.label
    const GPUQueue4 = GPUDevice0.queue
    GPUQueue0.writeBuffer(GPUBuffer4, 6132512, typedArray10);
    const GPUComputePassEncoder7 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    GPUQueue2.submit([GPUCommandBuffer4]);
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer0);
    GPUComputePassEncoder6.end();
    const GPUTextureView21 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 3,
        format: "r32float",
        label: "GPUTextureView21"
    });
    const GPUSupportedFeatures10 = GPUDevice0.features
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline8);
    GPURenderPassEncoder10.draw(1);
    GPUComputePassEncoder7.end();
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "src"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline10",
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
    const string68 = GPURenderPipeline2.label
    const string69 = GPUCommandEncoder13.label
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePassEncoder8 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUSupportedFeatures11 = GPUAdapter2.features
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgb10a2uint",
        label: "GPUTexture20",
        size: {
            width: 2215,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2uint"]
    });
    const string70 = GPUComputePipeline9.label
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL
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
            module: GPUShaderModule2
        }
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUSupportedFeatures12 = GPUDevice0.features
    GPURenderPassEncoder10.end();
    const GPUCommandBuffer6 = GPUCommandEncoder10.finish();
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline7);
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray11);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder8.dispatchWorkgroups(199, 212, 8);
    const GPUBindGroupLayout15 = GPUComputePipeline9.getBindGroupLayout(0);
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader9
    });
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture21",
        size: {
            width: 3242,
            height: 553,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const GPUTextureView22 = GPUTexture21.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 9,
        format: "r16float",
        label: "GPUTextureView22"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5845697472044233,
                g: 1.2298846566206882,
                b: 0.43488785397270213,
                a: 0.7458760750744435
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView22
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 2307656901,
        occlusionQuerySet: GPUQuerySet7
    });
    GPUQueue2.submit([GPUCommandBuffer5]);
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    GPURenderPassEncoder12.end();
    const string71 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer0);
    const string72 = GPURenderPipeline6.label
    const GPUSupportedLimits12 = GPUDevice0.limits
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const string73 = GPUQuerySet3.label
    GPUComputePassEncoder5.end();
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16sint",
        label: "GPUTexture22",
        size: {
            width: 213,
            height: 7,
            depthOrArrayLayers: 3
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16sint"]
    });
    const boolean7 = GPUAdapter1.isFallbackAdapter
    const string74 = GPUQuerySet2.type
    const string75 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader10
    });
    const string76 = GPUQueue0.label
    const string77 = GPUComputePipeline6.label
    const GPUSupportedFeatures13 = GPUDevice0.features
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer3);
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    GPURenderPassEncoder9.end();
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture23",
        size: {
            width: 3789,
            height: 2927,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView23 = GPUTexture23.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgb10a2unorm",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7411735702729847,
                g: 0.010552474423351388,
                b: 1.777747546478817,
                a: 0.04822140746158521
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 3952115411,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline7);
    GPUQueue4.writeBuffer(GPUBuffer4, 11517532, typedArray12);
    const GPUSupportedLimits13 = GPUDevice0.limits
    GPUQueue1.submit([GPUCommandBuffer3]);
    const string78 = GPUQuerySet2.label
    const GPUBindGroupLayout16 = GPUComputePipeline7.getBindGroupLayout(0);
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: true,
        size: 260159276,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUSupportedFeatures14 = GPUDevice0.features
    const GPUQueue5 = GPUDevice0.queue
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 2509,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPUQueue6 = GPUDevice0.queue
    GPUQueue6.submit([GPUCommandBuffer6]);
    const string79 = GPUQuerySet0.type
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture24",
        size: {
            width: 1180,
            height: 1283,
            depthOrArrayLayers: 21
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView24 = GPUTexture24.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView24"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.159165605563562,
                g: 5.851210239065097E-4,
                b: 0.15204711362555368,
                a: 0.20216851241753298
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView24
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 1992183531,
        occlusionQuerySet: GPUQuerySet8
    });
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray13);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline5);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder8.dispatchWorkgroups(252, 218, 19);
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture25",
        size: {
            width: 371,
            height: 657,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView25 = GPUTexture25.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView25"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3362766880989772,
                g: 1.871953025511794,
                b: 1.44315067013421,
                a: 0.23010772322248396
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView25
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 546082192,
        occlusionQuerySet: GPUQuerySet9
    });
    const GPUCommandBuffer7 = GPUCommandEncoder16.finish();
    GPUQueue2.submit([GPUCommandBuffer7]);
    const string80 = GPUDevice0.label
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const string81 = GPUQueue2.label
    const string82 = GPUQuerySet6.count
    const string83 = GPUTextureView5.label
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandBuffer8 = GPUCommandEncoder13.finish();
    const string84 = GPUQuerySet7.type
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray14);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline8.bindGroup",
        layout: GPUComputePipeline8.getBindGroupLayout(0),
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
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const GPUSupportedLimits14 = GPUDevice0.limits
    GPUComputePassEncoder8.end();
    GPURenderPassEncoder15.setVertexBuffer(0, GPUBuffer4);
    const GPUBuffer10 = GPUDevice0.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: true,
        size: 114585340,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST
    });
    const GPUSupportedLimits15 = GPUAdapter4.limits
    const string85 = GPURenderPipeline3.label
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray15);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
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
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    GPUQueue2.submit([GPUCommandBuffer8]);
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
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
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline12",
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
    GPURenderPassEncoder15.setPipeline(GPURenderPipeline12);
    const string86 = GPUComputePipeline3.label
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUComputePassEncoder9 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline7);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder9.dispatchWorkgroups(243, 84, 25);
    const GPUAdapterInfo4 = GPUAdapter3.info
    const boolean8 = GPUAdapter2.isFallbackAdapter
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg32float",
        label: "GPUTexture26",
        size: {
            width: 770,
            height: 992,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg32float"]
    });
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray16);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
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
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline4);
    const GPUAdapterInfo5 = GPUAdapter2.info
    const GPUTextureView26 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView26"
    });
    const GPUSupportedFeatures15 = GPUDevice0.features
    const string87 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder9.end();
    const GPUComputePassEncoder10 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    GPURenderPassEncoder15.setPipeline(GPURenderPipeline12);
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures16 = GPUDevice0.features
    const GPUSupportedFeatures17 = GPUDevice0.features
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline10);
    const string88 = GPUComputePassEncoder10.label
    const GPUBuffer11 = GPUDevice0.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 182139484,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC
    });
    const GPUTextureView27 = GPUTexture13.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView27"
    });
    const GPUSupportedLimits16 = GPUAdapter6.limits
    const string89 = GPUQuerySet2.count
    GPUComputePassEncoder10.end();
    const GPUBindGroupLayout17 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUSupportedLimits17 = GPUAdapter1.limits
    const string90 = GPUQuerySet2.type
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray17);
    const GPUBindGroup11 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline11.bindGroup",
        layout: GPUComputePipeline11.getBindGroupLayout(0),
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
    const GPUBuffer12 = GPUDevice0.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 105398288,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT
    });
    const GPUComputePassEncoder11 = GPUCommandEncoder21.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    GPUComputePassEncoder11.end();
    const GPUSupportedLimits18 = GPUAdapter5.limits
    const GPUComputePassEncoder12 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    const string91 = GPURenderPipeline0.label
    GPURenderPassEncoder13.end();
    const string92 = GPUComputePassEncoder12.label
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer4);
    const GPUTextureView28 = GPUTexture16.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView28"
    });
    const string93 = GPUDevice0.label
    const GPUQueue7 = GPUDevice0.queue
    const string94 = GPUTextureView2.label
    const GPUComputePassEncoder13 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const string95 = GPUQueue0.label
    GPURenderPassEncoder15.draw(1);
    const string96 = GPUCommandEncoder8.label
    const GPUCommandEncoder24 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    const GPUComputePassEncoder14 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    GPURenderPassEncoder14.draw(10);
    GPURenderPassEncoder15.draw(10);
    const string97 = GPUDevice0.label
    const GPUBuffer13 = GPUDevice0.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: true,
        size: 64066616,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const GPUTextureView29 = GPUTexture13.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView29"
    });
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader11
    });
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUComputePassEncoder12.end();
    const GPUCommandBuffer9 = GPUCommandEncoder20.finish();
    GPUQueue6.submit([GPUCommandBuffer9]);
    const string98 = GPUCommandEncoder19.label
    const string99 = GPURenderPipeline8.label
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader12
    });
    const GPUComputePassEncoder15 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray18);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
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
    const GPUSupportedLimits19 = GPUAdapter3.limits
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup2);
    const GPUComputePassEncoder16 = GPUCommandEncoder22.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
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
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline13",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray19);
    const GPUBindGroup13 = GPUDevice0.createBindGroup({
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
    GPURenderPassEncoder15.draw(9);
    const string100 = GPUQuerySet9.type
    const GPUSupportedFeatures18 = GPUAdapter1.features
    const GPUTextureView30 = GPUTexture18.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView30"
    });
    const string101 = GPUCommandEncoder8.label
    const GPUCommandBuffer10 = GPUCommandEncoder21.finish();
    GPUQueue2.submit([GPUCommandBuffer10]);
    const WGSLLanguageFeatures11 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder14.draw(10);
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    const string102 = GPUQuerySet9.count
    const boolean9 = GPUAdapter5.isFallbackAdapter
    const GPUComputePipeline14 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline14",
        layout: "auto"
    });
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
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
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule9
        }
    });
    const GPUSupportedLimits20 = GPUAdapter5.limits
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray20);
    const GPUBindGroup14 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline14.bindGroup",
        layout: GPUComputePipeline14.getBindGroupLayout(0),
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
    const GPUSupportedFeatures19 = GPUDevice0.features
    GPUQueue3.writeBuffer(GPUBuffer4, 16932828, typedArray21);
    GPURenderPassEncoder15.draw(4);
    GPUQueue5.writeBuffer(GPUBuffer1, 28, typedArray22);
    const string103 = GPUQuerySet1.count
    const GPUComputePassEncoder17 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    const string104 = GPUComputePassEncoder16.label
    const string105 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandBuffer11 = GPUCommandEncoder17.finish();
    GPUQueue2.submit([GPUCommandBuffer11]);
    const GPUCommandEncoder25 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    const GPUSupportedLimits21 = GPUAdapter4.limits
    const string106 = GPUComputePipeline5.label
    const string107 = GPURenderPassEncoder14.label
    const GPUBindGroupLayout18 = GPUComputePipeline5.getBindGroupLayout(0);
    GPUComputePassEncoder17.setPipeline(GPUComputePipeline8);
    const GPUAdapterInfo6 = GPUAdapter0.info
    const string108 = GPUTextureView7.label
    GPURenderPassEncoder15.setVertexBuffer(0, GPUBuffer0);
    const string109 = GPUDevice0.label
    GPUComputePassEncoder17.end();
    const GPUAdapterInfo7 = GPUAdapter4.info
    GPURenderPassEncoder15.draw(10);
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule11
        }
    });
    GPURenderPassEncoder15.draw(4);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup1);
    GPURenderPassEncoder15.draw(7);
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string110 = GPUComputePipeline1.label
    GPUQueue5.writeBuffer(GPUBuffer1, 0, typedArray23);
    const GPUBindGroup15 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline14.bindGroup",
        layout: GPUComputePipeline14.getBindGroupLayout(0),
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
    GPUQueue6.writeBuffer(GPUBuffer0, 124804032, typedArray24);
    const GPUBindGroupLayout19 = GPUComputePipeline12.getBindGroupLayout(0);
    const string111 = GPUTextureView1.label
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline11);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder13.dispatchWorkgroups(221, 12, 39);
    const string112 = GPUQuerySet6.label
    const string113 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUAdapterInfo8 = GPUAdapter5.info
    const string114 = await navigator.gpu.getPreferredCanvasFormat();
    const string115 = GPUQuerySet6.count
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup13);
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const string116 = GPUQueue7.label
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline7);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder13.dispatchWorkgroups(214, 12, 10);
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUSupportedFeatures20 = GPUDevice0.features
    const GPUBindGroupLayout20 = GPUComputePipeline11.getBindGroupLayout(0);
    const boolean10 = GPUAdapter9.isFallbackAdapter
    const GPUSupportedFeatures21 = GPUDevice0.features
    const GPUSupportedLimits22 = GPUDevice0.limits
    const string117 = GPUCommandEncoder15.label
    const string118 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline15",
        layout: "auto"
    });
    const WGSLLanguageFeatures12 = navigator.gpu.wgslLanguageFeatures
    const string119 = GPUComputePassEncoder15.label
    const string120 = GPUTextureView19.label
    const string121 = GPUQueue1.label
    const GPUComputePipeline16 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline16",
        layout: "auto"
    });
    const string122 = GPUDevice0.label
    const string123 = GPUDevice0.label
    const GPUComputePipeline17 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline17",
        layout: "auto"
    });
    const string124 = GPUComputePassEncoder14.label
    const string125 = GPUQueue3.label
    const string126 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder14.end();
    const GPUCommandEncoder26 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder26"
    });
    const GPUShaderModule14 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader14
    });
    const string127 = GPUComputePipeline13.label
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture27",
        size: {
            width: 82,
            height: 2018,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView31 = GPUTexture27.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView31"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder24.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.1508822041311726,
                g: 0.18991333245139974,
                b: 0.5810932683183803,
                a: 1.2873578698576151
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView31
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 1454850392,
        occlusionQuerySet: GPUQuerySet7
    });
    GPUQueue5.writeBuffer(GPUBuffer1, 0, typedArray25);
    const GPUBindGroup16 = GPUDevice0.createBindGroup({
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
    const string128 = GPUCommandEncoder18.label
    const string129 = GPUComputePassEncoder16.label
    const string130 = GPURenderPassEncoder15.label
    const string131 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup13);
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline3);
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline6);
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder14.draw(6);

}
main().catch(console.error);