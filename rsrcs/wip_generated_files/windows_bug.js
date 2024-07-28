const {
    create,
    globals
} = require('/home/matthew/final_project/dawn_no_asan/out/Debug/dawn.node');
Object.assign(globalThis, globals);
let navigator = {
    gpu: create([]),
};
const fs = require('node:fs');
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
// Seed: -3358482688555237066
const shader25 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray51 = new Float32Array([7400, -6652, -5621])
const typedArray50 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray49 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray48 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray47 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader24 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray46 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray45 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader23 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader22 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader21 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray44 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader20 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray43 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray42 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader19 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray41 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray40 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray39 = new Float32Array([6360, -2810, 9558, 1697, 3932, -1405, -5546, -4464, -3567, -543, 8351, -5444, -8612, -5320, 2076, 4598, -7069, 4020, 6834, -3736, -6857, -9437, 1649, 6073, -6348, 8150, 7872, 3387, -5773, 6891, 7941, 6531, 5525, 4333, 609, -6734, -2979, -4290, -6143, -581, 5277, 4614, -2733, -1024, -7416, 813, -8151, -6922, 7604, -2233, 3365, -739, 259, -2882, -2966, -3117, -1815, 4244, -5340, -897, 1748, 9065, -7228, -6134, 3734, 8953, -3404, -1017, 482, 2503, 3781, 1299, -4656, -9575, -9554, 1657, 8993, 1331, -3845, 6683, 5656, 264, -1227, 9056, -9659, 6477, -5627, -8677, -9905, -7597, -8044, -2254, 4668, -9156, 8796, -7863, -2516, -7814, 3993, -7843, -1890, 8101, -414, -9903, -7881, 8997, 7809, -5731, 5777, 8912, -3931, 5172, 7329, -9927, 1464, 3379, -6311, 9686, -4208, -29, 7424])
const typedArray38 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader18 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray37 = new Int8Array([4201, -3899, 231, -531])
const typedArray36 = new Float32Array([99, 1952, -4488])
const typedArray35 = new Float32Array([-6747, 384, -156, 9764, -3208, 5084, 7898, -7643, 8631, -154, 532, 4432, -6962, -7891])
const typedArray34 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader17 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader16 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray33 = new Uint8Array([-9078, 9693, -1335, -4408, 6616, -773, 2060, 6098, 9934, 4196, 832, -8913, 965, -4022, 4436, 9506, -2694, -6253, 1940, -778, -2899, 9983, -1093, -1008, -339, -2517, -7625, -244, -6684, 2299, 103, 8831, 7892, 1728, -8955, 3318, -8292, -9197, 7480, 5661, -6980, 8961, 3672, -2388, -6043, -2435, 3034, -9287, 2846, -2304, -920, -519, -9119, -2452, 7022, -8926, -3422, 6686, 8729, -5544, 2791, 4760, 6139, -9518, 2842, 1993, 574, 5095, 101, 1623, -5423, 2910, -9028, -7860, 4641, -5840, -1019, 8325, -2857, -7470, -1103, -1795, 9656, 7827, 7741, -3076, -5004, 3377, 9250, -949, -7025, -6056, 7339, 1015, -8397, 4630, 1147, -8984, 5550, 7671, -5383, -2780, -8117, -1917, -9758, 4181, 2432, -6940, 5117, 8913, -3011, -3498, -5604, 8733, 4548, -7927, -3790, -6674, 7744, -1597, -2696, 7562, -9316, 8231, 8014, 4346, -5109, -3744, -1106, 5542, 4892, 2412, -2529, -1173, -5941, -4399, -7327, 1346, -1465, -5927, -8715, -5510, 4585, 7054, -7218, -7566, -9573, -270, 939, -8865, 4921, 9435, 2212, -6178, 3346, -9253, -2411, -5308, 5906, 9493, -6044, 5099, -3546, -1554, -34, -9622, 260, 6471, -9690, -4548, -939, 9361, 7682, -6852, 5857, -270, 3157, 8634, -7302, 4079, -9446, -6190, 944, -1934, 1349, -3509, -2993, -5161, 703, -7510, -9153, -3468, -6775, 190, 6617, 4415, 797, -9651, 4795, 9733, -6693, -6022, 8028, -6245, 5523, -6273, 1298, 4690, -8310, -3866, 7274, 9455, 1923, 8982, -5151, 7428, -4494, 3009, 1311, 5666, 2207, -8866, 531, -6194, -7445, -1432, 1172, 5135, -3109, -6238, -135, 9945, 2801, 1015, -8138, -7340, -5146, -1814, 5137, -3112, 6080, -9668, 3757, 612, -2709, 8709, 1416, -2182, 9159, -4935, 1041, 2644, -730, -6168, 5244, -411, -5722, -5945, -6928, 7328, -2262, 5061, 3154, 7674, 602, 3480, -2297, -6142, -1881, -5461, -9517, 3847, -5797, -3309, 2582, 2450, -3565, 7476, -6450, 8274, 7897, 9447, -5171, 1030, 4479, 715, 9405, 4903, 6249, -2352, -637, -7651, -4016, 7210, -6695, -6546, 5247, -7884, 6634, -8169, -3101, 383, 2051, -6414, -7893, 7797, -3890, 6145, 1696, 4194, -9437, 5655, 2574, 2863, 7292, -3407, 8504, 1273, -3039, 7260, -6647, 4641, 110, 9628, -9655, 4449, -1832, -8035, 7197, 8697, -1611, 3898, -3260, -5101, 6954, 4348, -1718, -8810, -1425, 7041, 6844, 7978, -1819, -8242, -1013, 4710, 8325, -1729, 3990, -9009, 3561, -9748, 3112, 4044, -8841, -9430, -6373, 1272, 2085, 8753])
const typedArray32 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader15 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray31 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray30 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader14 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray29 = new Int8Array([-2276, -9229, -9628, -1346, 2765, -5059, 7415, -6298, 8093, 1791, -7617, 7337, 1913, 5731, 9940, 9055, -3855, 5454, -3207, 7600, 8967, -4248, -7271, -5180, -3269, 7998, -9387, -6597, -2971, 8759, -4791, 9894, -1867, 8631, 8795, 6115, -9384, -8223, 4742, -3360, -2147, -5110, -8888, -6561, 8066, -1347, 6533, -7681, 4390, 1542, 2369, 2875, 4583, 2484, 668, -6446, -2644, 7792, 3614, -2466, 4826, -6460, -1944, 3486, -8389, 9623, -7553, -5872, -3451, 2976, 5903, 1531, -4088, -2209, -5622, -5713, -7067, -3758, 6451, 8037, 4778, 2527, 8020, 4737, 1251, -8169, 1981, -231, -1789, -9993, -4773, 2384, 2779, -6979, -8526, 3448, -6499, -6269, -7088, 5514, -1606, -2289, 7743, -1016, 4106, 114, -4006, -822, 5684, -3447, 620, -8985, 3208, 9488, -8556, -5609, 7571, -4960, -9675, 7452, -2505, 2550, -1854, 7470, 4755, -8935, 7893, 9591, -740, -2291, 1278, -7419, -6264, -1005, 3864, -3958, -3883, -3925, -1646, 8573, -2496, -5780, -4744, 8363, 8991, -7153, -4300, -9517, 2608, -2688, -8642, -4988, 3436, 1954, 9309, -157, -1167, 420, 7933, -475, -6050, -1726, 4878, -6205, -4544, 3783, -3812, -7156, -1880, 6226, 6801, -134, -143, 1728, 3505, -7522, 9648, 4307, -67, -290, 564, -7854, -6140, -2423, 6724, -4440, 8239, -6794, -9997, 6224, 9958, -2864, -1189, -1473, -8978, 1309, -4301, -7347, 7906, 6057, -70, -7674, -7650, 6990, 4592, 4621, 739, 2409, -1977, -1154, 7220, -4596, -9723, 5614, 9575, -1976, -9217, 8360, -8482, -3441, 3237, 8919, 7808, 929, -3474, 6190, 9135, -5509, -72, -9289, -4271, -2997, -9622, -3199, 4376, 6197, -1728, -3517, 9797, 8649, -3873, -7838, -8368, 5725, -2285, 9871, 8049, 4919, 2435, -145, -1017, -5044, 8065, -633, 3484, -6151])
const shader13 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray28 = new Int8Array([-1361, -8706, 9544, -2877, 2255, -4183, 2035, -7567, -6563, -7975, 9127, -3747, -3233, 4967, 9483, -5342, -7219, 2296, -59, 5966, -7831, -5180, -1539, -3690, -9281, -6206, -2791, -6950, -5717, -3953, -8779, 900, -5912, 1327, 8769, -4766, -5225, 906, -7186, -3380, -4864, -7434, 1913, -5458, -7674, -4206, -6342, 724, 6743, 8693, 8457, -7587, 912, -4412, -9379, 9356, -3745, -9049, 3595, -3677, -7532, 9636, -4461, -1882, -5260, 8169, 7739, -6256, -9858, -5700, 6575, -2317, -8774, -1915, 824, -6458, -1251, -2504, -1136, -9307, 3424, -2376, -8298, 9917, 1192, 1839, 3854, 456, 4705, -7952, -82, 7435, 1648, 625, 5836, 232, 9284, -5375, 9092, -9901, 8417, -8320, -2336, 1836, 908, 4508, 7682, -26, 2039, 3404, -571, 3931, -6833, 9721, 2660, 8871, 9867, 6847, 7114, -332, 6634, -2355, 3524, -5599, 9513, -3625, -909, 9762, 8702, 442, 3814, -8860, 7335, -9440, -4751, 9684, 6259, 7541, -876, 2033, -456, 6560, 9927, -9620, 7817, -1040, -1268, 4986, -5118, 3661, 5337, 8065, -4326, -4544, 5319, -5752, -5644, -6841, -7518, -7265, -5066, -784, -4661, -8320])
const typedArray27 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray26 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray25 = new Float32Array([3545, -6952, -2208, -5681, -7322, 9703, 8979, -1773, -8178, 7380, 3860, 3186, 1688, 2393, 8198, -9492, 2708, -6286, -1465, -8194, 2959, 3942, -492, 6496, 9813, -5580, -2772, 6263, -6557, -6794, -3443, -2205, -7679, 2844, -5666, 1521, 5002, -2359, 7170, 8171, 9951, -8350, 3188, 1361, 1799, 3933, -8021, 1995, -3204, -1828, 5239, -7405, 9176, 7225, -7863, -1906, -9178, 1324, 6580, 3729, -7690, 7269, 8196, -9862, -2258, -6047, 4949, 5779, 2170, -4502, 8083, 1029, -449, -7413, 2891, 5470, 2995, 1740, 5185, 1609, -7488, -1763, 3763, 4692, -3883, 4035, -7119, -1888, -6819, -4521, 7465, -513, -6494, -9667, 6579, 3335, 5570, 5065, 6779, -948, 4239, 6870, -1827, 51, -2283, -4729, 5620, -9489, 6356, 3108, -4374, -2528, 8092, -4471, 3737, 6031, -7128, 1409, -3790, -1840, -1238, -6636, -904, -3233, 1571, 5455, 9047, -2476, 691, 3407, 5889, -2383, 1883, 4884, -4131, -839, 8829, -3798, -9830, 3373, -6011, -7387, -7808, -8029, 3733, -4629, 9305, 7850, 5393, -1437, -461, -5388, -1483, 3323, -5079, -4113, -7531, 4433, -3505, -8379, -9650, -8982, 5347, -7331, -7465, 3165, 3664, 5997, 5682, 7393, 3027, 4637, 680, 3557, 7489, -5138, -7068, 1788, 1210, 9021, -3351, 9766, 8386, 4950, 4471, 9185, 4644, 9413, -7515, 553, 4152, -659, 5851, -6692, -7117, -9584, -2941, 1508, 1623, 2436, 3910, -8688, 584, 8879, -2372, -5029, 4612, 4262, 8456, -4855, 3912, 3930, 226, -6562, 6989, 5663, -9289, -1917, 4483, -1064, 9555, 3998, -3152, 6017, -752, -6143, 2289, 951, 5562, -971, 9014, -4615, 5762, 380, -4721, -3749, 5284, 483, 8290, 6448, -1478, -5945, 2607, 9256, 5737, 2570, 8573, -4363, 9651, 174, -4585, 6758, -843, -3577, 145, -4247, -561, 9177, -4693, -2472, -3702, 1566, -6621, 1327, 5537, 775, 8684, -9992, -7766, 3675, 5246, -3895, -5626, 5962, -1226, -3130, 7912, -6086, -5197, 8543, -7836, -8862, -6171, 1743, -7574, 5423, -4060, 751, 6031, -8891, 4719, -7450, 9773, -6700, -7129, -3989, 8095, -3843, 8505, 1583, -9382, 9488, -8731, -895, 2944, 8500, -2520, 3298, -4128, 3619, -5115, -2780, -3033, 7523, 5063, -7357, -8634, -4170, 7902, 8409, 8652, 2676, -3014, 6277, 105, -167, -3750, 3028, -4461, -7082, -7460, -2110, -1472, 3053, -7373, -6602, 4379, -9298, -3531, 2505, -7406, -3479, -6150, 560, -2657, -4437, -4612, 8156, -3482, -6532, 1139, -8464, -3401, 8073, 8182, -1724, -2585, 6658, 8231, -2709, 5576, 5336, -3445, -5209, 3119, 4565, 3004, -8949, -6248, -129, 7014, -3341, 7117, 9318, -3229, 3772, 3629, 2142, 9671, -2081, -8490, -8219, 4261, 4243, 2776, -5279, -8894, 8362, -7412, -6744, -6098, 6466, 9214, 8768, -7179, 3012, -3235, 5537, 8290, 9556, -4925, -6599, -667, -8401, 2979, 8792, -6680, 7184, -7185, 2033, 2368, -4382, 3772, 8590, -1777, 4662, 7719, 8071, -5705, 3521, -439, -9026, 7560, -6640, 5251, -4921, -2300])
const typedArray24 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray23 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray22 = new Float32Array([8663])
const shader12 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader11 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader10 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray21 = new Uint8Array([-1271, -8078, 9478, 9080])
const typedArray20 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray19 = new Uint8Array([238, -3972, -6362, 1324])
const typedArray18 = new Uint8Array([-6435, -4338, -126, 1100, -7127, 8771, -5245, -5005, 7590, -4293, -5021, 69, 2649, -2566, 6293, 6356, 9475, -4441, -8113, 1801, -679, 2083, -3368, 1234, -216, -7800, 6883, 2559, 543, -8148, 3675, -5153, 8975, -8926, 964, -6911, -2953, -6600, 5341, 7304, -8976, -5299, 1472, 9794, -4688, 3474, -6699, 2344, -6324, -9509, -7675, 9626, -683, -9676, -7766, 9050, -452, -7096, 8954, -7025, -6118, -9926, 8406, 5016, -5452, -3815, -1709, 2271, -9288, -6913, -5391, -5992, 2470, 3109, -699, 3809, -201, -7885, -6152, -5805, 5104, -2915, 4190, -6815, -5373, 5869, 3577, -7205, -6382, -9268, 8148, -9802])
const shader9 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray17 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader8 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader7 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray16 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray15 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray14 = new Float32Array([1916])
const typedArray13 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray12 = new Int8Array([3319, 4680, 5534, -9881])
const typedArray11 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray10 = new Uint8Array([-5752, 7046, -4713, 2399])
const typedArray9 = new Int8Array([1629, -521, 4418, 613, 2372, 827, -4378, -3399])
const shader6 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray8 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray7 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader5 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray6 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray5 = new Int8Array([-1904, 5295, 7022, -6938])
const typedArray4 = new Float32Array([1427])
const typedArray3 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader4 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray2 = new Uint8Array([-9836, -4852, 6189, -6134])
const shader3 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray1 = new Int8Array([-1317, -6782, 9837, 6934])
const shader2 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader0 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

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
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
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
    const boolean0 = GPUAdapter0.isFallbackAdapter
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
                        dstFactor: "constant",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline0",
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
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray1);
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 2909,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture0",
        size: {
            width: 1930,
            height: 639,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView0"
    });
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 2128,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6329285852364136,
                g: 0.9465177044445421,
                b: 0.6873615532698683,
                a: 0.5027726211172531
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 2056883366,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline1",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder0.draw(4);
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const GPUSupportedFeatures0 = GPUDevice0.features
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader3
    });
    const string0 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer1, 12, GPUBuffer0, 4, 4);
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "GPUTexture1",
        size: {
            width: 550,
            height: 974,
            depthOrArrayLayers: 13
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8uint"]
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray2);
    const GPUSupportedFeatures1 = GPUDevice0.features
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader4
    });
    const string1 = GPUQueue0.label
    const string2 = GPUTextureView0.label
    const string3 = GPUDevice0.label
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 9881568,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer2.mapAsync(GPUMapMode.READ);
    const string4 = GPUComputePipeline1.label
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture2",
        size: {
            width: 520,
            height: 302,
            depthOrArrayLayers: 49
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView1 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView1"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 334,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.08103904500072656,
                g: 0.9185065986293962,
                b: 0.9615779744718213,
                a: 0.14440948735676307
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView1,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 4211433910,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUQueue1 = GPUDevice0.queue
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray3);
    const GPUBindGroup1 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline2);
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 3442,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray4);
    const GPUSupportedFeatures2 = GPUAdapter0.features
    const GPUTextureView2 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView2"
    });
    GPUQueue1.writeBuffer(GPUBuffer0, 4, typedArray5);
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer0);
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8uint",
        label: "GPUTexture3",
        size: {
            width: 2644,
            height: 3219,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8uint"]
    });
    const string5 = GPUComputePipeline2.label
    const GPUBindGroupLayout0 = GPUComputePipeline1.getBindGroupLayout(0);
    const string6 = GPUComputePipeline2.label
    const GPUTextureView3 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView3"
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture4",
        size: {
            width: 829,
            height: 24,
            depthOrArrayLayers: 21
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16float"]
    });
    const GPUTextureView4 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView4"
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 992,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4709608705549462,
                g: 0.698163053456202,
                b: 0.3562516969131433,
                a: 0.15360293714219453
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView4,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 3118404039,
        occlusionQuerySet: GPUQuerySet4
    });
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.end();
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    GPUBuffer1.unmap();
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer0 = GPUCommandEncoder3.finish();
    GPUBuffer0.unmap();
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const GPUQueue2 = GPUDevice0.queue
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray6);
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup2);
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
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
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPUCommandEncoder4.copyBufferToBuffer(GPUBuffer1, 16, GPUBuffer0, 0, 0);
    const GPUSupportedLimits1 = GPUAdapter0.limits
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader5
    });
    const string7 = GPUComputePipeline0.label
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUQueue3 = GPUDevice0.queue
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray7);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
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
    const string8 = GPUTextureView3.label
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline6);
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const GPUQueue4 = GPUDevice0.queue
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray8);
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder0.dispatchWorkgroups(71, 10, 8);
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer0);
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader6
    });
    const GPUSupportedFeatures3 = GPUAdapter0.features
    const GPUSupportedLimits2 = GPUDevice0.limits
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray9);
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUCommandBuffer1 = GPUCommandEncoder5.finish();
    GPUQueue1.submit([GPUCommandBuffer1]);
    const string9 = GPUCommandEncoder4.label
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture5",
        size: {
            width: 3364,
            height: 1851,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView5 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView5"
    });
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 41,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.734350124242652,
                g: 0.3985869404530531,
                b: 0.5819885055972418,
                a: 0.6481904650390505
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView5
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 307650715,
        occlusionQuerySet: GPUQuerySet5
    });
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer2 = GPUCommandEncoder0.finish();
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const string10 = GPUBuffer2.label
    GPUBuffer2.unmap();
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 1052,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: true,
        size: 215206516,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    });
    const ArrayBuffer0 = GPUBuffer3.getMappedRange();
    GPURenderPassEncoder3.end();
    const GPUCommandBuffer3 = GPUCommandEncoder4.finish();
    const string11 = GPUCommandEncoder1.label
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const string12 = GPUComputePipeline4.label
    GPUQueue3.writeBuffer(GPUBuffer0, 4, typedArray10);
    const string13 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUComputePassEncoder2 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const string14 = GPUComputePassEncoder2.label
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline8);
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const GPUQueue5 = GPUDevice0.queue
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray11);
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
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder2.dispatchWorkgroups(155, 187, 19);
    const GPUTextureView6 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView6"
    });
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUCommandBuffer4 = GPUCommandEncoder8.finish();
    GPUQueue3.submit([GPUCommandBuffer4]);
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string15 = GPUQuerySet6.label
    const string16 = GPUQuerySet3.label
    const GPUTextureView7 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView7"
    });
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline3);
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUComputePassEncoder4 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray12);
    const GPUSupportedLimits3 = GPUDevice0.limits
    const GPUBindGroupLayout1 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUQueue6 = GPUDevice0.queue
    GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray13);
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
    const string17 = GPUDevice0.label
    const GPUTextureView8 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView8"
    });
    const GPUBindGroupLayout2 = GPUComputePipeline6.getBindGroupLayout(0);
    const GPUSupportedFeatures4 = GPUDevice0.features
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedLimits4 = GPUDevice0.limits
    const string18 = await navigator.gpu.getPreferredCanvasFormat();
    const string19 = GPURenderPipeline2.label
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray14);
    const string20 = GPUBuffer2.label
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    const GPUBindGroupLayout3 = GPUComputePipeline7.getBindGroupLayout(0);
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 58030952,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    });
    const ArrayBuffer1 = GPUBuffer4.getMappedRange();
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 165835104,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
    });
    const ArrayBuffer2 = GPUBuffer5.getMappedRange();
    const GPUAdapterInfo1 = GPUAdapter2.info
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUCommandBuffer5 = GPUCommandEncoder10.finish();
    GPUQueue4.submit([GPUCommandBuffer5]);
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline11);
    const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    const GPUQueue7 = GPUDevice0.queue
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray15);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder4.dispatchWorkgroups(122, 75, 61);
    const string21 = GPUComputePipeline4.label
    const string22 = GPURenderPassEncoder0.label
    const string23 = GPUTextureView8.label
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder1.end();
    GPURenderPassEncoder0.draw(6);
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    const GPUQueue8 = GPUDevice0.queue
    GPUQueue8.writeBuffer(GPUBuffer0, 0, typedArray16);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    const GPUDevice1 = await GPUAdapter2.requestDevice();
    const string24 = GPUCommandEncoder9.label
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 159515856,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer6.mapAsync(GPUMapMode.READ);
    const GPUCommandEncoder12 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    GPURenderPassEncoder0.end();
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits5 = GPUDevice1.limits
    const ArrayBuffer3 = GPUBuffer6.getMappedRange();
    const GPUCommandBuffer6 = GPUCommandEncoder11.finish();
    const GPUQueue9 = GPUDevice1.queue
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture6",
        size: {
            width: 348,
            height: 258,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView9 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView9"
    });
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 3739,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.38248087535440856,
                g: 0.33242805396506037,
                b: 0.5285759305094565,
                a: 0.5165650126943049
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView9,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 2901278992,
        occlusionQuerySet: GPUQuerySet7
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    GPUBuffer5.unmap();
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer0, 8, GPUBuffer6, 50157720, 0);
    const GPUShaderModule7 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader7
    });
    const GPUSupportedFeatures5 = GPUAdapter0.features
    GPURenderPassEncoder4.end();
    const string25 = await navigator.gpu.getPreferredCanvasFormat();
    const string26 = await navigator.gpu.getPreferredCanvasFormat();
    const boolean3 = GPUAdapter0.isFallbackAdapter
    const GPUCommandBuffer7 = GPUCommandEncoder1.finish();
    GPUComputePassEncoder3.end();
    const GPUCommandBuffer8 = GPUCommandEncoder7.finish();
    const GPUShaderModule8 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader8
    });
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 25,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const string27 = GPUQuerySet0.label
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
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
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUCommandBuffer9 = GPUCommandEncoder14.finish();
    GPUQueue3.submit([GPUCommandBuffer9]);
    const string28 = GPUDevice1.label
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer0, 0, GPUBuffer6, 135411876, 4);
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture7",
        size: {
            width: 1410,
            height: 3513,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView10 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView10"
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 3014,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9587624966629297,
                g: 0.35600373793574847,
                b: 0.14571584334862653,
                a: 0.47178658750756874
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView10
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 1676009679,
        occlusionQuerySet: GPUQuerySet9
    });
    const string29 = GPURenderPassEncoder5.label
    const GPUQueue10 = GPUDevice0.queue
    GPUComputePassEncoder2.end();
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder5.draw(10);
    GPURenderPassEncoder5.end();
    GPUBuffer5.unmap();
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup7);
    const GPUQuerySet10 = GPUDevice1.createQuerySet({
        count: 180,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPUTexture8 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture8",
        size: {
            width: 4081,
            height: 3654,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView11 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView11"
    });
    const GPUQuerySet11 = GPUDevice1.createQuerySet({
        count: 346,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8700579441333359,
                g: 0.3825131563277824,
                b: 0.151364174752873,
                a: 0.10888813804566366
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 3187603571,
        occlusionQuerySet: GPUQuerySet11
    });
    GPURenderPassEncoder6.end();
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture9",
        size: {
            width: 3036,
            height: 3357,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView12 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "GPUTextureView12"
    });
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 1668,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.2880924022429574,
                g: 0.5016324597198593,
                b: 0.35479937491379643,
                a: 0.31877956381010353
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView12
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 4184036596,
        occlusionQuerySet: GPUQuerySet12
    });
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer0);
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const string30 = GPUComputePassEncoder4.label
    const string31 = GPUCommandEncoder6.label
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer1, 36, GPUBuffer6, 50619596, 28);
    const GPUAdapterInfo2 = GPUAdapter1.info
    const string32 = GPUQueue4.label
    const GPUComputePipeline14 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline14",
        layout: "auto"
    });
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline14);
    const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline15",
        layout: "auto"
    });
    const GPUQueue11 = GPUDevice0.queue
    GPUQueue11.writeBuffer(GPUBuffer0, 0, typedArray17);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder4.dispatchWorkgroups(214, 168, 6);
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: false,
        size: 185676988,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer7.mapAsync(GPUMapMode.READ);
    const string33 = GPUQueue10.label
    const ArrayBuffer4 = GPUBuffer7.getMappedRange();
    const string34 = GPURenderPassEncoder7.label
    const GPUComputePipeline16 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline16",
        layout: "auto"
    });
    const GPUSupportedLimits6 = GPUDevice1.limits
    const GPUShaderModule9 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader9
    });
    const string35 = await navigator.gpu.getPreferredCanvasFormat();
    const string36 = GPUBuffer1.label
    const GPUComputePipeline17 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline17",
        layout: "auto"
    });
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer0);
    const GPUQuerySet13 = GPUDevice1.createQuerySet({
        count: 2306,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPUCommandBuffer10 = GPUCommandEncoder13.finish();
    const string37 = GPUQueue3.label
    const GPUBuffer8 = GPUDevice1.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 145047916,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM
    });
    GPUQueue9.writeBuffer(GPUBuffer8, 134364328, typedArray18);
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: false,
        size: 35424308,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer9.mapAsync(GPUMapMode.READ);
    GPUComputePassEncoder4.end();
    const GPUSupportedLimits7 = GPUDevice1.limits
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer0, 4, GPUBuffer6, 56034088, 0);
    const string38 = GPURenderPipeline2.label
    const GPUAdapterInfo3 = GPUAdapter0.info
    const GPUCommandBuffer11 = GPUCommandEncoder9.finish();
    const GPUAdapterInfo4 = GPUAdapter2.info
    const string39 = GPURenderPassEncoder7.label
    const boolean4 = GPUAdapter1.isFallbackAdapter
    const ArrayBuffer5 = GPUBuffer9.getMappedRange();
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
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
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    GPURenderPassEncoder7.draw(8);
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture10",
        size: {
            width: 1235,
            height: 3687,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView13 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView13"
    });
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 2700,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8561121579532367,
                g: 0.45947977522702654,
                b: 0.33543149207122924,
                a: 0.5334706046509826
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView13
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 1668079721,
        occlusionQuerySet: GPUQuerySet14
    });
    const string40 = GPURenderPipeline0.label
    const GPUComputePassEncoder5 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const GPUDevice2 = await GPUAdapter1.requestDevice();
    const GPUSupportedLimits8 = GPUDevice1.limits
    GPURenderPassEncoder7.draw(4);
    const GPUCommandEncoder15 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUBuffer10 = GPUDevice2.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: false,
        size: 149930560,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    });
    const GPUBuffer11 = GPUDevice2.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 21495520,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    GPUCommandEncoder15.copyBufferToBuffer(GPUBuffer10, 142656780, GPUBuffer11, 7161548, 2312472);
    const string41 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUBuffer12 = GPUDevice0.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 256063368,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer12.mapAsync(GPUMapMode.READ);
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer0);
    GPUQueue2.writeBuffer(GPUBuffer0, 4, typedArray19);
    const GPUQueue12 = GPUDevice0.queue
    const GPUTexture11 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture11",
        size: {
            width: 264,
            height: 468,
            depthOrArrayLayers: 2
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView14 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "GPUTextureView14"
    });
    const GPUQuerySet15 = GPUDevice2.createQuerySet({
        count: 2767,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3767191380368239,
                g: 0.8759806972286626,
                b: 0.5840930494238966,
                a: 0.3184307996400213
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView14,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 3160851834,
        occlusionQuerySet: GPUQuerySet15
    });
    const string42 = GPURenderPassEncoder7.label
    const string43 = GPURenderPipeline4.label
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    const GPUAdapterInfo5 = GPUAdapter1.info
    const string44 = GPUCommandEncoder15.label
    const string45 = GPUComputePipeline6.label
    const boolean5 = GPUAdapter0.isFallbackAdapter
    const GPUComputePipeline18 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline18",
        layout: "auto"
    });
    const GPUBuffer13 = GPUDevice1.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer14 = GPUDevice1.createBuffer({
        label: "GPUBuffer14",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const GPUQueue13 = GPUDevice1.queue
    GPUQueue13.writeBuffer(GPUBuffer13, 0, typedArray20);
    const GPUBindGroup10 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline18.bindGroup",
        layout: GPUComputePipeline18.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer13
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup10);
    GPUQueue9.writeBuffer(GPUBuffer13, 0, typedArray21);
    const string46 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule10 = GPUDevice2.createShaderModule({
        label: "fragment",
        code: shader10
    });
    const GPUShaderModule11 = GPUDevice2.createShaderModule({
        label: "vertex",
        code: shader11
    });
    const GPURenderPipeline7 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule10,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule11
        }
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder9.draw(7);
    const GPUSupportedFeatures6 = GPUDevice0.features
    GPUComputePassEncoder5.end();
    const string47 = GPUTextureView0.label
    const boolean6 = GPUAdapter0.isFallbackAdapter
    const boolean7 = GPUAdapter0.isFallbackAdapter
    const GPUShaderModule12 = GPUDevice2.createShaderModule({
        label: "compute",
        code: shader12
    });
    const GPUComputePipeline19 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline19",
        layout: "auto"
    });
    const GPUTexture12 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32uint",
        label: "GPUTexture12",
        size: {
            width: 875,
            height: 349,
            depthOrArrayLayers: 8
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba32uint"]
    });
    const GPUTextureView15 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8uint",
        label: "GPUTextureView15"
    });
    const GPUQueue14 = GPUDevice2.queue
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUDevice3 = await GPUAdapter3.requestDevice();
    const GPUSupportedFeatures7 = GPUAdapter1.features
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUQueue15 = GPUDevice3.queue
    const GPUQuerySet16 = GPUDevice1.createQuerySet({
        count: 1987,
        label: "GPUQuerySet16",
        type: "occlusion"
    });
    const string48 = GPUTextureView3.label
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer11);
    GPUQueue9.writeBuffer(GPUBuffer13, 4, typedArray22);
    const GPUCommandEncoder17 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const string49 = GPUQuerySet7.label
    const string50 = GPUQuerySet5.label
    const ArrayBuffer6 = GPUBuffer12.getMappedRange();
    const GPUSupportedLimits9 = GPUAdapter0.limits
    const GPUComputePassEncoder6 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUComputePipeline20 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline20",
        layout: "auto"
    });
    const GPUBuffer15 = GPUDevice2.createBuffer({
        label: "GPUBuffer15",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBuffer16 = GPUDevice2.createBuffer({
        label: "GPUBuffer16",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    });
    const GPUQueue16 = GPUDevice2.queue
    GPUQueue16.writeBuffer(GPUBuffer15, 0, typedArray23);
    const GPUBindGroup11 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline20.bindGroup",
        layout: GPUComputePipeline20.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer15
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer16
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup11);
    GPURenderPassEncoder7.end();
    const GPUCommandBuffer12 = GPUCommandEncoder6.finish();
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUTextureView16 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 12,
        baseArrayLayer: 2,
        mipLevelCount: 3,
        baseMipLevel: 3,
        format: "rg16float",
        label: "GPUTextureView16"
    });
    const GPUComputePipeline21 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline21",
        layout: "auto"
    });
    const GPUQueue17 = GPUDevice2.queue
    GPUQueue17.writeBuffer(GPUBuffer15, 0, typedArray24);
    const GPUBindGroup12 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline21.bindGroup",
        layout: GPUComputePipeline21.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer15
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer16
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup12);
    GPUQueue11.writeBuffer(GPUBuffer6, 51030096, typedArray25);
    const GPUBindGroupLayout4 = GPUComputePipeline8.getBindGroupLayout(0);
    GPURenderPassEncoder8.end();
    const GPUComputePipeline22 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline22",
        layout: "auto"
    });
    const GPUComputePipeline23 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline23",
        layout: "auto"
    });
    const GPUQueue18 = GPUDevice2.queue
    GPUQueue18.writeBuffer(GPUBuffer15, 0, typedArray26);
    const GPUBindGroup13 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline23.bindGroup",
        layout: GPUComputePipeline23.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer15
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer16
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup13);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline22);
    const GPUComputePipeline24 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline24",
        layout: "auto"
    });
    const GPUQueue19 = GPUDevice2.queue
    GPUQueue19.writeBuffer(GPUBuffer15, 0, typedArray27);
    const GPUBindGroup14 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline22.bindGroup",
        layout: GPUComputePipeline22.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer15
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer16
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder6.dispatchWorkgroups(40, 23, 32);
    const GPUSupportedFeatures8 = GPUAdapter1.features
    const GPUComputePipeline25 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline25",
        layout: "auto"
    });
    GPURenderPassEncoder9.end();
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUBindGroupLayout5 = GPUComputePipeline24.getBindGroupLayout(0);
    const string51 = GPUQuerySet1.label
    const string52 = GPUQuerySet14.label
    const string53 = GPUQueue6.label
    const string54 = GPUComputePassEncoder6.label
    const GPUTextureView17 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 16,
        baseArrayLayer: 11,
        mipLevelCount: 6,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "GPUTextureView17"
    });
    const string55 = GPUDevice0.label
    const string56 = GPUQuerySet4.label
    const GPUBuffer17 = GPUDevice1.createBuffer({
        label: "GPUBuffer17",
        mappedAtCreation: true,
        size: 136335648,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const GPUCommandEncoder18 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUComputePipeline26 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline26",
        layout: "auto"
    });
    const GPUDevice4 = await GPUAdapter5.requestDevice();
    GPUQueue6.writeBuffer(GPUBuffer6, 63746988, typedArray28);
    const string57 = GPUQueue1.label
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture13",
        size: {
            width: 812,
            height: 1670,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView18 = GPUTexture13.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView18"
    });
    const GPUQuerySet17 = GPUDevice0.createQuerySet({
        count: 1819,
        label: "GPUQuerySet17",
        type: "occlusion"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.009497334981039995,
                g: 0.9334070962440414,
                b: 0.08832059203672504,
                a: 0.80676790670135
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 1232151955,
        occlusionQuerySet: GPUQuerySet17
    });
    const GPUCommandEncoder19 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline8",
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
            module: GPUShaderModule6
        }
    });
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline8);
    GPURenderPassEncoder10.draw(8);
    GPURenderPassEncoder10.end();
    const GPUTexture14 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture14",
        size: {
            width: 927,
            height: 3249,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView19 = GPUTexture14.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView19"
    });
    const GPUQuerySet18 = GPUDevice1.createQuerySet({
        count: 3768,
        label: "GPUQuerySet18",
        type: "occlusion"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7376028691557993,
                g: 0.44111256411538013,
                b: 0.2369977136577931,
                a: 0.48378358235005103
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView19
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 3563909673,
        occlusionQuerySet: GPUQuerySet18
    });
    const GPUShaderModule13 = GPUDevice1.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const GPURenderPipeline9 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline9);
    GPURenderPassEncoder11.draw(7);
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer13);
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup14);
    const GPUTextureView20 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView20"
    });
    GPURenderPassEncoder11.end();
    const GPUBuffer18 = GPUDevice3.createBuffer({
        label: "GPUBuffer18",
        mappedAtCreation: false,
        size: 113248240,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer18.mapAsync(GPUMapMode.READ);
    const GPUQueue20 = GPUDevice2.queue
    const GPUSupportedFeatures9 = GPUDevice0.features
    const GPUBindGroupLayout6 = GPUComputePipeline8.getBindGroupLayout(0);
    const GPUTexture15 = GPUDevice3.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture15",
        size: {
            width: 1481,
            height: 148,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView21 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgb10a2unorm",
        label: "GPUTextureView21"
    });
    const GPUQuerySet19 = GPUDevice3.createQuerySet({
        count: 3901,
        label: "GPUQuerySet19",
        type: "occlusion"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.18990222161060333,
                g: 0.970101208476247,
                b: 0.7781328571994065,
                a: 0.4505192598760376
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView21
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 2322068975,
        occlusionQuerySet: GPUQuerySet19
    });
    GPURenderPassEncoder12.end();
    const string58 = GPUBuffer8.label
    const GPUTexture16 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture16",
        size: {
            width: 635,
            height: 234,
            depthOrArrayLayers: 64
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView22 = GPUTexture16.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba16float",
        label: "GPUTextureView22"
    });
    const GPUQuerySet20 = GPUDevice1.createQuerySet({
        count: 1690,
        label: "GPUQuerySet20",
        type: "occlusion"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3267210953781988,
                g: 0.40056818717525977,
                b: 0.6590360328607658,
                a: 0.6382191018014592
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView22,
            depthSlice: 12
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 2557935507,
        occlusionQuerySet: GPUQuerySet20
    });
    const GPURenderPipeline10 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline10);
    const GPUCommandBuffer13 = GPUCommandEncoder19.finish();
    const GPUSupportedLimits10 = GPUAdapter4.limits
    const GPUBuffer19 = GPUDevice0.createBuffer({
        label: "GPUBuffer19",
        mappedAtCreation: false,
        size: 219631844,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer19.mapAsync(GPUMapMode.READ);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup14);
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline10);
    const GPUSupportedLimits11 = GPUDevice0.limits
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePassEncoder7 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline11",
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
            module: GPUShaderModule3
        }
    });
    GPUQueue9.writeBuffer(GPUBuffer8, 26450052, typedArray29);
    GPUBuffer6.unmap();
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUQueue21 = GPUDevice2.queue
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUCommandBuffer14 = GPUCommandEncoder20.finish();
    GPUQueue5.submit([GPUCommandBuffer14]);
    const GPUShaderModule14 = GPUDevice4.createShaderModule({
        label: "compute",
        code: shader14
    });
    const GPUComputePipeline27 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline27",
        layout: "auto"
    });
    const GPUBuffer20 = GPUDevice4.createBuffer({
        label: "GPUBuffer20",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
    });
    const GPUBuffer21 = GPUDevice4.createBuffer({
        label: "GPUBuffer21",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST
    });
    const GPUQueue22 = GPUDevice4.queue
    GPUQueue22.writeBuffer(GPUBuffer20, 0, typedArray30);
    const GPUBindGroup15 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline27.bindGroup",
        layout: GPUComputePipeline27.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer20
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer21
            }
        }]
    });
    GPURenderPassEncoder13.end();
    const GPUTexture17 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16uint",
        label: "GPUTexture17",
        size: {
            width: 448,
            height: 180,
            depthOrArrayLayers: 6
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16uint"]
    });
    const GPUTexture18 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture18",
        size: {
            width: 140,
            height: 646,
            depthOrArrayLayers: 35
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView23 = GPUTexture18.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg8unorm",
        label: "GPUTextureView23"
    });
    const GPUQuerySet21 = GPUDevice2.createQuerySet({
        count: 617,
        label: "GPUQuerySet21",
        type: "occlusion"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.10668795290067024,
                g: 0.5834460208201233,
                b: 0.04100063193054615,
                a: 0.6255635625213231
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView23,
            depthSlice: 3
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 1426685667,
        occlusionQuerySet: GPUQuerySet21
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder14.draw(7);
    const string59 = GPUComputePipeline23.label
    const boolean8 = GPUAdapter0.isFallbackAdapter
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup14);
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUCommandBuffer15 = GPUCommandEncoder21.finish();
    GPUQueue6.submit([GPUCommandBuffer15]);
    const GPUBuffer22 = GPUDevice0.createBuffer({
        label: "GPUBuffer22",
        mappedAtCreation: true,
        size: 600856,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    const string60 = GPUTextureView14.label
    const string61 = GPUCommandEncoder17.label
    const GPUBuffer23 = GPUDevice0.createBuffer({
        label: "GPUBuffer23",
        mappedAtCreation: true,
        size: 2511892,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
    });
    const string62 = GPURenderPipeline10.label
    const GPUCommandEncoder22 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const string63 = GPUQueue9.label
    const GPUComputePipeline28 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline28",
        layout: "auto"
    });
    const GPUQueue23 = GPUDevice4.queue
    GPUQueue23.writeBuffer(GPUBuffer20, 0, typedArray31);
    const GPUBindGroup16 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline28.bindGroup",
        layout: GPUComputePipeline28.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer20
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer21
            }
        }]
    });
    const string64 = GPURenderPassEncoder14.label
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture19",
        size: {
            width: 2554,
            height: 1654,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8sint"]
    });
    const GPUBuffer24 = GPUDevice0.createBuffer({
        label: "GPUBuffer24",
        mappedAtCreation: false,
        size: 197187356,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer24.mapAsync(GPUMapMode.READ);
    const GPUBuffer25 = GPUDevice2.createBuffer({
        label: "GPUBuffer25",
        mappedAtCreation: false,
        size: 204887972,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer25.mapAsync(GPUMapMode.READ);
    const GPUShaderModule15 = GPUDevice2.createShaderModule({
        label: "fragment",
        code: shader15
    });
    const string65 = GPUQueue16.label
    const string66 = GPUQuerySet19.label
    const GPUComputePipeline29 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline29",
        layout: "auto"
    });
    const GPUQueue24 = GPUDevice4.queue
    GPUQueue24.writeBuffer(GPUBuffer20, 0, typedArray32);
    const GPUBindGroup17 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline29.bindGroup",
        layout: GPUComputePipeline29.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer20
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer21
            }
        }]
    });
    const GPUCommandEncoder23 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const string67 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder14.end();
    GPUQueue13.writeBuffer(GPUBuffer8, 66830112, typedArray33);
    const GPUTexture20 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture20",
        size: {
            width: 1762,
            height: 2980,
            depthOrArrayLayers: 62
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView24 = GPUTexture20.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rgba8unorm",
        label: "GPUTextureView24"
    });
    const GPUQuerySet22 = GPUDevice1.createQuerySet({
        count: 2147,
        label: "GPUQuerySet22",
        type: "occlusion"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder23.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9749756518600784,
                g: 0.45586526174732567,
                b: 0.5378194640584995,
                a: 0.14267830567573048
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView24
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 4032809274,
        occlusionQuerySet: GPUQuerySet22
    });
    GPURenderPassEncoder15.setVertexBuffer(0, GPUBuffer13);
    const GPUComputePassEncoder8 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUShaderModule16 = GPUDevice4.createShaderModule({
        label: "fragment",
        code: shader16
    });
    const GPUShaderModule17 = GPUDevice4.createShaderModule({
        label: "vertex",
        code: shader17
    });
    const GPURenderPipeline12 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule16,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "constant"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.RED
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule17
        }
    });
    GPUComputePassEncoder7.end();
    const string68 = GPUDevice4.label
    GPURenderPassEncoder15.setVertexBuffer(0, GPUBuffer13);
    const GPUTexture21 = GPUDevice4.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture21",
        size: {
            width: 819,
            height: 556,
            depthOrArrayLayers: 11
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const string69 = GPUCommandEncoder12.label
    const GPUCommandEncoder24 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    GPUCommandEncoder24.copyBufferToBuffer(GPUBuffer10, 63635788, GPUBuffer16, 56, 4);
    const string70 = GPUTextureView24.label
    const GPUSupportedFeatures10 = GPUDevice2.features
    const GPUBuffer26 = GPUDevice1.createBuffer({
        label: "GPUBuffer26",
        mappedAtCreation: true,
        size: 191947536,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline30 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline30",
        layout: "auto"
    });
    const GPUQueue25 = GPUDevice1.queue
    GPUQueue25.writeBuffer(GPUBuffer13, 0, typedArray34);
    const GPUBindGroup18 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline30.bindGroup",
        layout: GPUComputePipeline30.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer13
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup18);
    const GPUSupportedFeatures11 = GPUAdapter2.features
    GPURenderPassEncoder15.setVertexBuffer(0, GPUBuffer13);
    const string71 = GPUComputePassEncoder6.label
    const GPUCommandEncoder25 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    const GPUCommandBuffer16 = GPUCommandEncoder25.finish();
    GPUQueue15.submit([GPUCommandBuffer16]);
    const string72 = GPUDevice3.label
    GPUQueue20.writeBuffer(GPUBuffer11, 21060704, typedArray35);
    const string73 = GPUQueue16.label
    const string74 = GPUQueue23.label
    const GPUComputePipeline31 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline31",
        layout: "auto"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline31);
    GPURenderPassEncoder15.setVertexBuffer(0, GPUBuffer13);
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string75 = GPUComputePassEncoder8.label
    const boolean9 = GPUAdapter6.isFallbackAdapter
    const string76 = GPURenderPipeline2.label
    const string77 = await navigator.gpu.getPreferredCanvasFormat();
    const string78 = GPUTextureView23.label
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUQueue24.writeBuffer(GPUBuffer21, 32, typedArray36);
    GPUBuffer8.unmap();
    const GPUComputePassEncoder9 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const ArrayBuffer7 = GPUBuffer18.getMappedRange();
    const string79 = GPUTextureView2.label
    const GPUQuerySet23 = GPUDevice4.createQuerySet({
        count: 1486,
        label: "GPUQuerySet23",
        type: "occlusion"
    });
    const boolean10 = GPUAdapter6.isFallbackAdapter
    GPUQueue19.writeBuffer(GPUBuffer16, 56, typedArray37);
    const string80 = GPURenderPassEncoder15.label
    const boolean11 = GPUAdapter7.isFallbackAdapter
    const GPUShaderModule18 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader18
    });
    const GPUSupportedFeatures12 = GPUDevice4.features
    const GPUComputePipeline32 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline32",
        layout: "auto"
    });
    const GPUBindGroupLayout7 = GPUComputePipeline13.getBindGroupLayout(0);
    const GPUCommandEncoder26 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder26"
    });
    const string81 = GPUCommandEncoder17.label
    const GPUComputePipeline33 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule9
        },
        label: "GPUComputePipeline33",
        layout: "auto"
    });
    const GPUQueue26 = GPUDevice1.queue
    GPUQueue26.writeBuffer(GPUBuffer13, 0, typedArray38);
    const GPUBindGroup19 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline33.bindGroup",
        layout: GPUComputePipeline33.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer13
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup19);
    const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    GPUQueue15.writeBuffer(GPUBuffer18, 16433348, typedArray39);
    const string82 = GPUComputePipeline0.label
    const string83 = GPUBuffer10.label
    const GPUComputePipeline34 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline34",
        layout: "auto"
    });
    const GPUComputePipeline35 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline35",
        layout: "auto"
    });
    const GPUQueue27 = GPUDevice2.queue
    GPUQueue27.writeBuffer(GPUBuffer15, 0, typedArray40);
    const GPUBindGroup20 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline31.bindGroup",
        layout: GPUComputePipeline31.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer15
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer16
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup20);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline34);
    const GPUComputePipeline36 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline36",
        layout: "auto"
    });
    const GPUQueue28 = GPUDevice2.queue
    GPUQueue28.writeBuffer(GPUBuffer15, 0, typedArray41);
    const GPUBindGroup21 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline34.bindGroup",
        layout: GPUComputePipeline34.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer15
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer16
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup21);
    GPUComputePassEncoder6.dispatchWorkgroups(217, 114, 1);
    const string84 = GPUComputePassEncoder9.label
    const GPUBuffer27 = GPUDevice3.createBuffer({
        label: "GPUBuffer27",
        mappedAtCreation: false,
        size: 110060328,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT
    });
    const GPUShaderModule19 = GPUDevice4.createShaderModule({
        label: "vertex",
        code: shader19
    });
    const GPUSupportedFeatures13 = GPUDevice4.features
    const GPUSupportedLimits12 = GPUDevice2.limits
    const GPUComputePipeline37 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline37",
        layout: "auto"
    });
    const GPUComputePipeline38 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline38",
        layout: "auto"
    });
    const GPUQueue29 = GPUDevice1.queue
    GPUQueue29.writeBuffer(GPUBuffer13, 0, typedArray42);
    const GPUBindGroup22 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline38.bindGroup",
        layout: GPUComputePipeline38.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer13
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup22);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline37);
    const string85 = await navigator.gpu.getPreferredCanvasFormat();
    const string86 = GPUQueue4.label
    const GPUBindGroupLayout8 = GPUComputePipeline26.getBindGroupLayout(0);
    const GPUQuerySet24 = GPUDevice2.createQuerySet({
        count: 1867,
        label: "GPUQuerySet24",
        type: "occlusion"
    });
    const string87 = GPUCommandEncoder23.label
    const GPUComputePipeline39 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline39",
        layout: "auto"
    });
    const GPUQueue30 = GPUDevice4.queue
    GPUQueue30.writeBuffer(GPUBuffer20, 0, typedArray43);
    const GPUBindGroup23 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline39.bindGroup",
        layout: GPUComputePipeline39.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer20
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer21
            }
        }]
    });
    const string88 = GPUComputePipeline13.label
    const GPUComputePassEncoder10 = GPUCommandEncoder24.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const GPUCommandEncoder27 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder27"
    });
    const GPUShaderModule20 = GPUDevice2.createShaderModule({
        label: "vertex",
        code: shader20
    });
    const GPUCommandEncoder28 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder28"
    });
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture22",
        size: {
            width: 2158,
            height: 3678,
            depthOrArrayLayers: 18
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView25 = GPUTexture22.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView25"
    });
    const GPUQuerySet25 = GPUDevice0.createQuerySet({
        count: 2351,
        label: "GPUQuerySet25",
        type: "occlusion"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.23685284218781655,
                g: 0.02376236596464698,
                b: 0.7705326863484958,
                a: 0.9654599866769372
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView25
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 2455199262,
        occlusionQuerySet: GPUQuerySet25
    });
    const GPUAdapterInfo6 = GPUAdapter4.info
    GPUComputePassEncoder9.end();
    const GPURenderPipeline13 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule16,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "dst"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule17
        }
    });
    const GPURenderPipeline14 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline14",
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
            module: GPUShaderModule7
        }
    });
    const string89 = GPUBuffer17.label
    const GPUComputePipeline40 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline40",
        layout: "auto"
    });
    const GPUQueue31 = GPUDevice2.queue
    GPUQueue31.writeBuffer(GPUBuffer15, 0, typedArray44);
    const GPUBindGroup24 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline40.bindGroup",
        layout: GPUComputePipeline40.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer15
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer16
            }
        }]
    });
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup24);
    const GPUSupportedFeatures14 = GPUAdapter8.features
    GPUBuffer10.unmap();
    const GPUShaderModule21 = GPUDevice2.createShaderModule({
        label: "vertex",
        code: shader21
    });
    const GPUTexture23 = GPUDevice4.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture23",
        size: {
            width: 800,
            height: 998,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView26 = GPUTexture23.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView26"
    });
    const GPUQuerySet26 = GPUDevice4.createQuerySet({
        count: 1613,
        label: "GPUQuerySet26",
        type: "occlusion"
    });
    const GPURenderPassEncoder17 = GPUCommandEncoder26.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8194713180193921,
                g: 0.029839518695850886,
                b: 0.13350761884264672,
                a: 0.13364210331425797
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView26,
            depthSlice: 4
        }],
        label: "GPURenderPassEncoder17",
        maxDrawCount: 2022086977,
        occlusionQuerySet: GPUQuerySet26
    });
    const GPUTextureView27 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView27"
    });
    const GPURenderPipeline15 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule16,
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
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule17
        }
    });
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline15);
    const GPURenderPipeline16 = GPUDevice1.createRenderPipeline({
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
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline16",
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
    GPURenderPassEncoder15.setPipeline(GPURenderPipeline16);
    GPURenderPassEncoder15.draw(5);
    GPURenderPassEncoder15.end();
    const GPUCommandBuffer17 = GPUCommandEncoder23.finish();
    const string90 = GPURenderPipeline12.label
    const GPUQueue32 = GPUDevice4.queue
    const GPUShaderModule22 = GPUDevice3.createShaderModule({
        label: "fragment",
        code: shader22
    });
    const GPUShaderModule23 = GPUDevice3.createShaderModule({
        label: "vertex",
        code: shader23
    });
    const GPURenderPipeline17 = GPUDevice3.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule22,
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
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline17",
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
            module: GPUShaderModule23
        }
    });
    const boolean12 = GPUAdapter9.isFallbackAdapter
    const ArrayBuffer8 = GPUBuffer19.getMappedRange();
    const GPUBuffer28 = GPUDevice4.createBuffer({
        label: "GPUBuffer28",
        mappedAtCreation: true,
        size: 159538992,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM
    });
    const string91 = GPUCommandEncoder28.label
    GPURenderPassEncoder16.end();
    const GPUComputePassEncoder11 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const GPUCommandEncoder29 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder29"
    });
    const GPUComputePipeline41 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline41",
        layout: "auto"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup21);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline41);
    const GPUComputePipeline42 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline42",
        layout: "auto"
    });
    const GPUQueue33 = GPUDevice2.queue
    GPUQueue33.writeBuffer(GPUBuffer15, 0, typedArray45);
    const GPUBindGroup25 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline41.bindGroup",
        layout: GPUComputePipeline41.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer15
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer16
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup25);
    GPUComputePassEncoder6.dispatchWorkgroups(161, 166, 34);
    const string92 = GPURenderPipeline17.label
    const GPUAdapterInfo7 = GPUAdapter8.info
    const GPUComputePipeline43 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline43",
        layout: "auto"
    });
    const GPUComputePipeline44 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline44",
        layout: "auto"
    });
    const GPUQueue34 = GPUDevice1.queue
    GPUQueue34.writeBuffer(GPUBuffer13, 0, typedArray46);
    const GPUBindGroup26 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline37.bindGroup",
        layout: GPUComputePipeline37.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer13
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup26);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline43);
    const GPUTexture24 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8sint",
        label: "GPUTexture24",
        size: {
            width: 953,
            height: 716,
            depthOrArrayLayers: 27
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8sint"]
    });
    const GPUShaderModule24 = GPUDevice2.createShaderModule({
        label: "compute",
        code: shader24
    });
    const GPUQuerySet27 = GPUDevice0.createQuerySet({
        count: 3467,
        label: "GPUQuerySet27",
        type: "occlusion"
    });
    const GPUComputePipeline45 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline45",
        layout: "auto"
    });
    const GPUQueue35 = GPUDevice0.queue
    GPUQueue35.writeBuffer(GPUBuffer0, 0, typedArray47);
    const GPUBindGroup27 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline45.bindGroup",
        layout: GPUComputePipeline45.getBindGroupLayout(0),
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
    const string93 = GPUComputePassEncoder10.label
    const GPUSupportedFeatures15 = GPUDevice0.features
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture25",
        size: {
            width: 1241,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r32uint"]
    });
    const GPUAdapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePipeline46 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline46",
        layout: "auto"
    });
    const GPUComputePipeline47 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline47",
        layout: "auto"
    });
    const GPUQueue36 = GPUDevice1.queue
    GPUQueue36.writeBuffer(GPUBuffer13, 0, typedArray48);
    const GPUBindGroup28 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline43.bindGroup",
        layout: GPUComputePipeline43.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer13
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup28);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline46);
    const GPUComputePipeline48 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule9
        },
        label: "GPUComputePipeline48",
        layout: "auto"
    });
    const GPUQueue37 = GPUDevice1.queue
    GPUQueue37.writeBuffer(GPUBuffer13, 0, typedArray49);
    const GPUBindGroup29 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline46.bindGroup",
        layout: GPUComputePipeline46.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer13
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup29);
    GPUComputePassEncoder8.dispatchWorkgroups(233, 66, 5);
    const GPUBuffer29 = GPUDevice3.createBuffer({
        label: "GPUBuffer29",
        mappedAtCreation: false,
        size: 242616996,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer29.mapAsync(GPUMapMode.READ);
    const GPUTexture26 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture26",
        size: {
            width: 755,
            height: 1519,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUCommandBuffer18 = GPUCommandEncoder28.finish();
    const GPUComputePipeline49 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline49",
        layout: "auto"
    });
    const string94 = GPUCommandEncoder16.label
    const string95 = GPUTextureView19.label
    const GPUCommandEncoder30 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder30"
    });
    GPUBuffer23.unmap();
    const GPUComputePassEncoder12 = GPUCommandEncoder30.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const GPUBuffer30 = GPUDevice3.createBuffer({
        label: "GPUBuffer30",
        mappedAtCreation: false,
        size: 44264152,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer30.mapAsync(GPUMapMode.READ);
    const GPUBuffer31 = GPUDevice1.createBuffer({
        label: "GPUBuffer31",
        mappedAtCreation: false,
        size: 224103556,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer31.mapAsync(GPUMapMode.READ);
    GPURenderPassEncoder17.draw(2);
    const GPUComputePipeline50 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule24
        },
        label: "GPUComputePipeline50",
        layout: "auto"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup25);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline50);
    const GPUComputePipeline51 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline51",
        layout: "auto"
    });
    const GPUBuffer32 = GPUDevice2.createBuffer({
        label: "GPUBuffer32",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer33 = GPUDevice2.createBuffer({
        label: "GPUBuffer33",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUQueue38 = GPUDevice2.queue
    GPUQueue38.writeBuffer(GPUBuffer32, 0, typedArray50);
    const GPUBindGroup30 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline50.bindGroup",
        layout: GPUComputePipeline50.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer32
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer33
            }
        }]
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup30);
    GPUComputePassEncoder6.dispatchWorkgroups(256, 236, 36);
    const GPUTexture27 = GPUDevice3.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba32float",
        label: "GPUTexture27",
        size: {
            width: 4035,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba32float"]
    });
    const GPURenderPipeline18 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule16,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline18",
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
            module: GPUShaderModule17
        }
    });
    const GPUComputePipeline52 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline52",
        layout: "auto"
    });
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline52);
    const string96 = GPUComputePassEncoder12.label
    const GPUSupportedLimits13 = GPUDevice4.limits
    const WGSLLanguageFeatures11 = navigator.gpu.wgslLanguageFeatures
    const string97 = GPUComputePassEncoder8.label
    const GPUTextureView28 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView28"
    });
    const boolean13 = GPUAdapter11.isFallbackAdapter
    const string98 = GPUTextureView1.label
    const GPUBindGroupLayout9 = GPUComputePipeline2.getBindGroupLayout(0);
    const string99 = GPUDevice3.label
    const string100 = GPUTextureView13.label
    const GPUBuffer34 = GPUDevice0.createBuffer({
        label: "GPUBuffer34",
        mappedAtCreation: false,
        size: 23106276,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer34.mapAsync(GPUMapMode.READ);
    const GPUComputePassEncoder13 = GPUCommandEncoder22.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUSupportedLimits14 = GPUAdapter10.limits
    const GPUTexture28 = GPUDevice1.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture28",
        size: {
            width: 2991,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8sint"]
    });
    const string101 = GPUComputePipeline0.label
    const string102 = GPUBuffer3.label
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline15);
    GPUCommandEncoder29.copyBufferToBuffer(GPUBuffer27, 52967436, GPUBuffer18, 99339508, 13396420);
    const GPUCommandEncoder31 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder31"
    });
    GPUQueue16.writeBuffer(GPUBuffer33, 16, typedArray51);
    const WGSLLanguageFeatures12 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder17.end();
    const string103 = GPUQueue15.label
    const GPUCommandEncoder32 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder32"
    });
    const GPUCommandBuffer19 = GPUCommandEncoder32.finish();
    GPUQueue6.submit([GPUCommandBuffer19]);
    const GPUComputePassEncoder14 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const string104 = GPUQueue27.label
    const string105 = GPUQueue28.label
    const GPUTexture29 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture29",
        size: {
            width: 1141,
            height: 3921,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPUTextureView29 = GPUTexture29.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView29"
    });
    const GPUQuerySet28 = GPUDevice2.createQuerySet({
        count: 1876,
        label: "GPUQuerySet28",
        type: "occlusion"
    });
    const GPURenderPassEncoder18 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.064905644606853,
                g: 0.6478230572188665,
                b: 0.12867674886841973,
                a: 0.15384998191706312
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView29
        }],
        label: "GPURenderPassEncoder18",
        maxDrawCount: 605406854,
        occlusionQuerySet: GPUQuerySet28
    });
    const GPURenderPipeline19 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule10,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.RED
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule21
        }
    });
    GPURenderPassEncoder18.setPipeline(GPURenderPipeline19);
    GPURenderPassEncoder18.draw(10);
    const GPURenderPipeline20 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "dst"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline20",
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
            module: GPUShaderModule6
        }
    });
    const GPUAdapter12 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePipeline53 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline53",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline53);
    GPURenderPassEncoder18.draw(3);
    const GPUBuffer35 = GPUDevice2.createBuffer({
        label: "GPUBuffer35",
        mappedAtCreation: true,
        size: 112803928,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE
    });
    const string106 = GPUDevice0.label
    const GPUCommandEncoder33 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder33"
    });
    const GPUCommandBuffer20 = GPUCommandEncoder33.finish();
    GPUQueue19.submit([GPUCommandBuffer20]);
    const GPUShaderModule25 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader25
    });
    const string107 = GPUTextureView22.label
    const string108 = GPUQueue26.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup29);
    const string109 = GPUComputePipeline31.label
    const string110 = GPUQuerySet21.label
    const GPUTexture30 = GPUDevice2.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture30",
        size: {
            width: 2000,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUComputePassEncoder15 = GPUCommandEncoder27.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    const GPUQuerySet29 = GPUDevice2.createQuerySet({
        count: 984,
        label: "GPUQuerySet29",
        type: "occlusion"
    });
    const GPUSupportedLimits15 = GPUAdapter12.limits

}
main().catch(console.error);