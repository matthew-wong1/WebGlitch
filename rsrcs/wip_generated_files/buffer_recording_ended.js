const {
    create,
    globals
} = require('D:/final_proj/dawn/out/Debug/Debug/dawn.node');
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
const typedArray34 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray33 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray32 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray31 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray30 = new Int8Array([-5599, -5243, 6422, -6202, 3893, -2987, 5560, 9484, -3909, -4433, -5150, 3848, 4703, 4946, -7941, -1898])
const typedArray29 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader18 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray28 = new Float32Array([9001, -7424, -5018, -5319, 6069, -6287, -8515, -7683, 1467, -2861, -6576, -283, 946, -1893, 934, 3513, -2531, 3052, -4042, -2433, -5886, -3644, 3770, -3379, -2466, -6808, -3833, -4273, -7469, 3136, 1241, -3021, -3480, 1067, -38, 2580, -7962, -5271, -4950, -8112, 9613, -4969, 8266, 3094, -8294, 7067, -991, 6608, -8358, 4357, 2882, 1777, -5419, -4609, -2856, -4364, 5955, -9595, -4332, -9518, 8719, 5296, -9565, -8716, -8111, -694, 1806, 831, -7629, -4016, -9402, 803, -8355, 4428, 842, 6046, 1363, 9225, -4128, -6670, 6757, -7431, 8541, -649, 6023, 8575, 7998, -971, 3164, -2618, 7894, -1444, -2314, -9363, 5760, 6944, -2181, 5847, -4107, -9628, -8330, -9473, 4528, -9193, -5098, 7604, 5777, -1, 945, -8889, -3177, -3155, 979, 5308, -2569, -8532, -7773, 389, 9123, -7597, 1538, -8210, -3509, -789, 2908, -570, 7882, 4843, -8216, 2603, 7814, -1112, -6355, 8745, 9911, 8797, -7835, -9199, 9057, -9960, 4513, -5626, 761, 9831, -3620, 1491, -2818, -3521, 7711, 834, 4267, -1882, 3114, 3750, 6861, -1746, 9738, 6342, 2395, 8456, 5927, -4341, -19, -1512, -2382, -5409, 6492, 7786, 4657, -9689, 91, -9117, -2497, -7425, -4291, 3610, -863, -3367, 5870, -5980, -3097, 4634, -8443, 9420, -4707, -4082, -66, -4241, 22, -5396, 1178, -4815, 9129, -1034, -4815, 6911, -7336, 3062, -9031, 8338, -2843, -3263, -513, -7203, -4092, -6646, 2004, -6966, -9355, 9769, -5233, 9742, -7299, 861, 8719, 1905, 6951, 8161, 6217, 9225, 2517, -3653, -7292, 4963, 821, 9527, 1957, 6880, -9008, 4710, -9653, -2330, -3813, -5114, 5103, 8447, 1611, -5914, -3585, 7815, 1864, 4988, -3950, 6927, 3000, -8638])
const shader17 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray27 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader16 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray26 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader15 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray25 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray24 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader14 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader13 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader12 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader11 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray23 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray22 = new Uint8Array([67, 8388, 5125, 2310, -1594, -8692, 2768, 5678, -4266, -9961, -5926, 8546, 727, 8310, 469, -5766, -4596, 3582, -742, 2901, 4660, 2577, -8934, 7134])
const shader10 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray21 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray20 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray19 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray18 = new Int8Array([2601, 2022, 1649, -1829, -7217, 6859, -8081, -4583, 8489, -582, 3473, 4581, -540, 2521, 9789, 730, -8938, 4168, 5371, 8952, 3554, 368, 5760, 6853, -516, -9662, -5670, 9914, -2715, 5667, 6090, -158, 5695, -8528, 5151, -5752, 5738, 2417, -8235, -3274, -2564, 8593, -8950, -1343, -1627, -9672, 3212, -9452, 6197, 7937, 5811, -4926, 7092, -3761, -6719, 4935, 9833, 5677, 7183, 1027, 9371, -8629, 9179, -926, 6752, -2822, 7564, 8428, -2849, 6891, -5084, 4821, 4749, -3738, -9934, -2905, -9407, -5095, 5120, 678, 386, -1885, -9967, 4423, 9903, 8720, 7397, 9378, 1090, -3765, -5282, 9703, -9334, 6554, -6056, -6347, 1780, -9474, 8903, -3093, -6698, 4035, -5281, 1888, 7217, -552, 932, -7380, -6120, -9322, 1018, 8930, 9858, -7893, -3555, -5663, -9022, 580, -4571, -4361, 7089, -1541, -9370, 3470])
const typedArray17 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray16 = new Float32Array([-7811, 7482, -5551, -2708, -9583, -555, -7529, 9319, -1638, 5841, 5858, -2910, 3837, 1348, 351, -8703, 2745, -286, 8656, 4560, -8849, -7116, 6202, 6556, 1636, -3301, 7342, -5107, 1456, -5498, 2479, 6168, 6015, 9101, -8084, -9636, 4249, 9218, 9201, -1488, -685, 4231, 1415, 7228, -1294, 1157, 3721, 1116, 6314, 4844, -4718, -4095, 7245, 7549, -6930, 2893, 6031, -1182, -2935, -3561, 5008, -1885, -9300, -2970, -1382, -9142, -1120, -1288, -5004, -5186, -2752, -8369, -8033, 1619, -434, -5889, -9485, -7533, -5453, -7447, -108, 2938, 9201, -7521, 8135, -6896, -6225, -9984, -9622, -8739, -4781, -5025, 5594, -7069, 1278, -7340, -5674, -9469, -7899, -4870, -6606, -5638, -2310, -7281, 3678, 1637, 39, 9831, -7240, 9383, 6251, 50, 7836, -2439, -2735, -8384, -1618, 2770, 6675, -8345, -296, -4877, 3435, -6113, -2220, 5704, -6989, -5759, 6617, -5310, -1862, -7292, 6912, -2891, 2291, -8537, 1694, -3124, 2001, -8955, 5059, 2605, 8830, -8946, -7453, 5622, -397, -6779, -6033, 6667, -2832, -3876, 5189, 8719, -2976, 3782, -5065, -956, -5308, -4505, -239, 7032, -3290, -8802, 9933, 3895, 3018, -8421, 3810, 1068, 9646, -5955, 4546, -9952, -8900, 3766, -1097, -2487, 6251, -8755, 7782, 2515, 8716, -258, 3843, -3471, -2235, 9714, -6183, 959, -2324, 4383, 8984, -6480, 7758, 9120, 2647, 330, 4043, -6375, 3759, 3829, 3734, -1946, -2452, -1519, -9502, 7387, 4039, -477, 1071, 2414, 10, 8212, -1455, 5042, 3511, 4801, 8322, -2279, -2525, 628, -6931, -699, -2954, 6897, -2260, -6060, -9931, 586, -6802, -4249, -6568, 3082, 2561, -7635, -3560, 2929, -6570, 22, 4854, 4795, -775, 5944, 1991, 269, 8525, 5620, -3797, 1199, -4951, 7851, 5995, 4629, -4339, -6033, 9340, 1944, 4507, 798, 2317, -8654, -3149, 6088, -9004, 2830, 1891, -1301, 2826, -9406, 9686, 3973, -3075, 5173, 2168, 3301, 4500, 3905, -2999, -3987, 3736, 1578, -3837, -494, -9796, 3145, -79, 4235, -5757, 8731, 8861, 8825, -1262, 7758, 6793, 4233, -2990, 2111, 137, 1108, 9856, -8625, 4856, 3325, -2359, -9800, -323, -362, -18, -3099, 8130, 6828, 5655, -8019, 5733, -885, -252, -5724, -1920, 5924, 606, -5718, 957, 8798, 754, -8140, 8221, -1434, -776, -9318, -3542, -6102, -4010, -1984, 3087, -4321, 4477, -2778, -362, 8074, 4083, -1400, -2486, -9078, 9693, -1335, -4408, 6616, -773, 2060, 6098, 9934, 4196, 832, -8913, 965, -4022, 4436, 9506, -2694, -6253, 1940, -778, -2899, 9983, -1093, -1008, -339, -2517, -7625, -244, -6684, 2299, 103, 8831, 7892, 1728, -8955, 3318, -8292, -9197, 7480])
const typedArray15 = new Float32Array([-7674, -7650, 6990, 4592, 4621, 739, 2409, -1977, -1154, 7220, -4596, -9723, 5614, 9575, -1976, -9217, 8360, -8482, -3441, 3237, 8919, 7808, 929, -3474, 6190, 9135, -5509, -72, -9289, -4271, -2997, -9622, -3199, 4376, 6197, -1728, -3517, 9797, 8649, -3873, -7838, -8368, 5725, -2285, 9871, 8049, 4919, 2435])
const typedArray14 = new Int8Array([-9129, -6430, -4185, -1103, 2183, -3874, 911, -6177, 2754, 4080, 5280, -3194, -4658, -5337, -2470, -8069, 3393, -8880, 1319, -494, -5570, -9652, 9716, 3363, -5880, -2580, -1255, 5818, -2543, -3642, 2590, -1304, -9037, -5513, 1551, -2325, 185, -4519, -7994, -8545, -4610, -6844, -1941, -3899, -3813, -9701, 3853, 5209, -5314, 6785, -3348, 4019, -4188, -107, 6304, 407, 335, -8221, 8885, 2490, -8185, 61, -2985, 6824, -5421, 799, 6696, 8898, 3952, -2297, -8666, 1502, 959, 4255, 9103, -8680, 1805, -7458, 6043, 167, -1700, 1334, -1942, -8593, -2952, 6640, -253, -1563, -3768, 7748, -2413, 2036, -2276, -9229, -9628, -1346, 2765, -5059, 7415, -6298, 8093, 1791, -7617, 7337, 1913, 5731, 9940, 9055, -3855, 5454, -3207, 7600, 8967, -4248, -7271, -5180, -3269, 7998, -9387, -6597, -2971, 8759, -4791, 9894, -1867, 8631, 8795, 6115, -9384, -8223, 4742, -3360, -2147, -5110, -8888, -6561])
const typedArray13 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray12 = new Int8Array([-1268, 4986, -5118, 3661, 5337, 8065, -4326, -4544, 5319, -5752, -5644, -6841, -7518, -7265, -5066, -784, -4661, -8320, 2514, -1346, 5998, 4080, 4347, -7868, 6252, 9147, 7538, -9696, 4269, 2696, -8986, 4137, -1452, -8575, 2434, -3098, 3749, -8372, 2914, 7469, -6765, 8736, -4364, -2980, -7549, -3518, 8096, -2389, 5260, -5674, 1510, 4635, -4679, 3716, -1257, -4429, -9302, -5467, -9024, -9731, -2987, 9175, -989, -4003, -9993, 903, -3526, 5683, -5180, 5428, -4745, 1287, 858, 3702, -5501, 4272, -9937, -1657, 5939, 7808, -3776, 9841, 7790, 353, 2759, 7360, -6051, 6316, 1102, 9652, 1251, 6596, 624, 5406, 5257, 8664, -2254, -4825, 7559, 7160, -6351, -5182, 1665, -119, 9349, 7618, -9903, 4695, -6415, 4618, 2354, -4259, -4474, -7305, 4615, 330, -1288, 3827, -7973, -3073, 1817, -5992, 1235, -7312, 4941, 2536, 9005, 6722, -1869, -5252, -8294, -9727, -7736, -2377, 9892, -4445, 4758, 6324, -9022, 6707, 4104, -979, 6480, -8128, 4246, -7939, -8373, -9621, 1362, 7472, 6094, 4832, -4953, -5934, -6800, -4881, -8790, 1688, 247, 2646, 175, -6828, -5115, 3623, 1898, 6131, -7974, 0, 7241, -702, -5174, -5955, -6982, 2775, -1478, 4733, 9876, -4814, -6562, 3273, -2732, 2215, 2989, -3979, 2673, 5419, 4275, 292, 2280, 349, -4829, 5234, 3761, 6906, 6112, 3742, 7196, 7746, -9258, 885, -8055, 4663, 3287, -6721, 2561, -4628, -2646, 3506, -5728, -4478, -12, -2510, -1104, 4574, 7006, -8071, 6136, 8713, -8033, -4005, -5211, -205, 3770, -9531, -3667, 6976, -7546, 3570, 7002, -126, 1832, -4064, -528, 5724, -8824, 6323, 7270, -1861, 4814, 4776, -966, -2110, -1090, 1620, -2088, 4067, 3946, -2615, 5092, -9765, -204, 3421, 6141, 5413, 3315, 9915, -4257, -4960, 7775, -2397, -8263, 5326, 6260, -6449, -8504, 9976, 4729, -8563, 3140, -136, 3188, -8417, 4816, -456, 1997, 3232, 7970, -1099, 8564, -4067, 5294, -2353, -7942, -8483, -6314, -7754, 2592, -5920, 8768, -2459, -1757, 1183, 373, -846, -569, -8173, -2640, -3857, -5762, -9354, -9713, 5226, 4273, 819, 628, -8917, 7379, 7128, -2783, 192, -9978, 9948, 114, 1304, -5493, -513, -5248, 2046, 8282, -9459, -7477, -3205, 5325, -3754, -5079, -7700, 9065, 877])
const typedArray11 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader9 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray10 = new Float32Array([-8694])
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray9 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray8 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray7 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray6 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray5 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray4 = new Uint8Array([8132, -534, 8526, 4564])
const typedArray3 = new Int8Array([-3848, 2622, 7205, 8372, 3112, 461, -415, 3570])
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray2 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray1 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader0 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray0 = new Int8Array([5601, -6668, -7552, 82, -6431, -2442, -8762, -6120, -7130, -6964, 9302, -1560, 7335, -8428, 115, 4622, 3408, 8860, 3009, -9879, -3081, 4594, 957, 1605, -623, -9001, -376, -5932, -2500, 1832, -5025, 3984, -5172, -6281, -4378, -4627, -6637, -7130, -6477, -3482, -518, 6256, 609, -8517, 7297, -8783, 4128, -862, -942, 4899, -2886, 4394, 7758, 1645, 8216, 3274, 8718, -7518, 1717, -8885, -3093, -2180, -9250, 2019, -8811, 7234, -1295, -978, 6045, -8772, 9123, 5116, -6476, -7604, 8837, 4713, -5830, 1104, -8359, -6378, 3560, -6118, -8267, -4777, -6073, 9024, 1486, -9876, 6239, 6916, 7871, 3759, -260, -8917, -3199, 6840, -3230, -9573, 9701, -427, -1317, -6782, 9837, 6934, -243, 9210, -3705, 6212, 715, 1782, 5850, -6741, -335, 1703, -6118, 8729, -8011, 4922, 54, -77, 5777, -3165, 6409, -6235, -2433, 894, -5533, 8749, 2123, 5907, 2436, 6098, 7806, -4717, -1992, 7237, -5196, 10000, 3846, -6926, -1683, 3747, -8590, 9266, -748, 943, -3249, 478, 7362, -9276, 3891, -224, 1136, 1465, -6782, 6823, 8256, -5135, -5106, -5731, 9662, -8519, 6163, 9498, -5156, -3467, -6265, 2418, -7381, 1253, 264, -8408, 9435, 2228, 7231, 5693, 7582, -5063, -1523, -632, -2542, 7307, 958, -1375, 3065, 2829, -3446, 272, 8175, 2153, 9337, -9228, 8475, -6743, -5138, -2967, 9482, 60, -1510, -5171, 7802, -9568, 2891, -9631, -495, 6653, 3524, -3531, 9071, 1467, -5517, -4694, 9133, -5446, -1270, -4727, -3232, -5065, -2803, -9835, 24, -5766, -1969, -2499, -3410, -4064, 5325, -7125, 7624, -9631, -1336, -1173, 3996, -8855, -439, -6403, 3429, -9869, 6162, -9877, -2849, 3315, 7758, 3041, 3641, -2410, -9149, 4028, -3988, 5569, -3, -3489, 3494, 3270, 197, -6068, -3960, -9465, 6106, 9568, 7502, 7639, 7851, -785, -1253, -8965, 4132, 294, -1982, 4766, -4937, -5492, 8441, -3868, -8231, 8404, 7538, 8767, -823, 992, -3178, 9992, -5276, -4252, 4342, -9170, -3894, 6625, 6087, -9049, 1764, -2399, 2730, 6008, 206, 2299])

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUQueue0 = GPUDevice0.queue
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 43534768,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 20725860, typedArray0);
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
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
    });
    const GPUQueue1 = GPUDevice0.queue
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray1);
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
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture0",
        size: {
            width: 274,
            height: 763,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 1283,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7120607496637154,
                g: 0.428937759965631,
                b: 0.45445563304166114,
                a: 0.6483115862689552
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView0,
            depthSlice: 23
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 1336188236,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder0.end();
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
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline0",
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
            module: GPUShaderModule2
        }
    });
    const string0 = GPURenderPipeline0.label
    const string1 = GPUQueue0.label
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture1",
        size: {
            width: 4046,
            height: 1385,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView1"
    });
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 3866,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5141884032415261,
                g: 0.4260458503409198,
                b: 0.49507153033712803,
                a: 0.8187301449132021
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView1
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 48934676,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder1.end();
    const string2 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTextureView2 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView2"
    });
    const string3 = GPUQueue1.label
    const string4 = GPUQueue0.label
    const boolean0 = GPUAdapter0.isFallbackAdapter
    const GPUComputePassEncoder0 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline1);
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUQueue2 = GPUDevice0.queue
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray2);
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder0.dispatchWorkgroups(250, 13, 52);
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup1);
    const string5 = GPUCommandEncoder0.label
    const GPUSupportedFeatures0 = GPUAdapter0.features
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUDevice1 = await GPUAdapter1.requestDevice();
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture2",
        size: {
            width: 82,
            height: 123,
            depthOrArrayLayers: 11
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView3 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView3"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 4072,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7518915190654811,
                g: 0.5701160715623097,
                b: 0.8053704463640187,
                a: 0.4181567731223197
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView3,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 3736626804,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.GREEN
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline1);
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32sint",
        label: "GPUTexture3",
        size: {
            width: 3761,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg32sint"]
    });
    const string6 = GPUTextureView2.label
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup1);
    GPURenderPassEncoder2.end();
    const GPUShaderModule3 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader3
    });
    const GPUComputePipeline3 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUTextureView4 = GPUTexture3.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg32sint",
        label: "GPUTextureView4"
    });
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture4",
        size: {
            width: 3704,
            height: 523,
            depthOrArrayLayers: 27
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView5 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView5"
    });
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 289,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5459972627093879,
                g: 0.19668340565863596,
                b: 0.4818752806648181,
                a: 0.5390400294607264
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView5
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 2647698746,
        occlusionQuerySet: GPUQuerySet3
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
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
    GPURenderPassEncoder3.draw(6);
    const string7 = GPUQuerySet1.label
    GPUQueue2.writeBuffer(GPUBuffer1, 36, typedArray3);
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline2);
    GPUQueue2.writeBuffer(GPUBuffer1, 40, typedArray4);
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const string8 = GPUDevice1.label
    GPURenderPassEncoder3.end();
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture5",
        size: {
            width: 353,
            height: 215,
            depthOrArrayLayers: 6
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView6 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba8unorm",
        label: "GPUTextureView6"
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 941,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9702150035421591,
                g: 0.48746872557454635,
                b: 0.32946123866933485,
                a: 0.5275253096751531
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView6
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 3026977991,
        occlusionQuerySet: GPUQuerySet4
    });
    const string9 = GPURenderPassEncoder4.label
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer1);
    const string10 = GPUTextureView1.label
    const string11 = GPUComputePipeline0.label
    const string12 = GPURenderPassEncoder4.label
    const GPUSupportedLimits1 = GPUDevice0.limits
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline4);
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUQueue3 = GPUDevice0.queue
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray5);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder1.dispatchWorkgroups(73, 156, 59);
    const GPUSupportedFeatures1 = GPUDevice1.features
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline6);
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const GPUQueue4 = GPUDevice0.queue
    GPUQueue4.writeBuffer(GPUBuffer1, 0, typedArray6);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline6.bindGroup",
        layout: GPUComputePipeline6.getBindGroupLayout(0),
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
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder1.dispatchWorkgroups(32, 179, 18);
    const boolean2 = GPUAdapter0.isFallbackAdapter
    GPURenderPassEncoder4.end();
    const boolean3 = GPUAdapter0.isFallbackAdapter
    GPUComputePassEncoder1.end();
    const GPUCommandBuffer1 = GPUCommandEncoder2.finish();
    const string13 = GPUQuerySet1.label
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const boolean4 = GPUAdapter1.isFallbackAdapter
    const string14 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture6",
        size: {
            width: 1186,
            height: 1802,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView7 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView7"
    });
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 2515,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.504393806502352,
                g: 0.7543119460452444,
                b: 0.7235415261250733,
                a: 0.7807189436882223
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView7
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 3325135862,
        occlusionQuerySet: GPUQuerySet5
    });
    GPURenderPassEncoder5.end();
    const GPUCommandEncoder3 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUShaderModule4 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader4
    });
    const GPUTexture7 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture7",
        size: {
            width: 303,
            height: 769,
            depthOrArrayLayers: 26
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView8 = GPUTexture7.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView8"
    });
    const GPUQuerySet6 = GPUDevice1.createQuerySet({
        count: 1092,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4974516775407388,
                g: 0.013603478061302798,
                b: 0.003375198380490496,
                a: 0.015781954460756586
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView8,
            depthSlice: 10
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 4011799899,
        occlusionQuerySet: GPUQuerySet6
    });
    const string15 = GPURenderPassEncoder6.label
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUSupportedFeatures2 = GPUDevice1.features
    const GPUComputePassEncoder2 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline8);
    const GPUShaderModule5 = GPUDevice1.createShaderModule({
        label: "fragment",
        code: shader5
    });
    const GPUShaderModule6 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader6
    });
    const GPURenderPipeline3 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.GREEN
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder6.draw(4);
    const GPUAdapterInfo1 = GPUAdapter0.info
    const GPUSupportedLimits2 = GPUDevice1.limits
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUCommandBuffer2 = GPUCommandEncoder4.finish();
    GPUQueue1.submit([GPUCommandBuffer2]);
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string16 = GPUComputePipeline0.label
    GPURenderPassEncoder6.draw(4);
    const GPUAdapterInfo2 = GPUAdapter1.info
    const string17 = GPUTextureView7.label
    const boolean5 = GPUAdapter2.isFallbackAdapter
    const GPUCommandEncoder5 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUTexture8 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture8",
        size: {
            width: 2866,
            height: 1510,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView9 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView9"
    });
    const GPUQuerySet7 = GPUDevice1.createQuerySet({
        count: 906,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7556461421670474,
                g: 0.13214167793156906,
                b: 0.8410741353471339,
                a: 0.5093867912283999
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView9
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 1909466949,
        occlusionQuerySet: GPUQuerySet7
    });
    const GPUTextureView10 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView10"
    });
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture9",
        size: {
            width: 102,
            height: 143,
            depthOrArrayLayers: 45
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView11 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView11"
    });
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 22,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3248236197432077,
                g: 0.9527472794949335,
                b: 0.2320435072201653,
                a: 0.7157516292559679
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView11,
            depthSlice: 21
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 2024443624,
        occlusionQuerySet: GPUQuerySet8
    });
    const GPUTextureView12 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView12"
    });
    const string18 = GPURenderPassEncoder7.label
    const GPUSupportedLimits3 = GPUDevice0.limits
    const GPURenderPipeline4 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src"
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
        label: "GPURenderPipeline4",
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
            module: GPUShaderModule6
        }
    });
    const GPUAdapterInfo3 = GPUAdapter0.info
    const string19 = GPUTextureView6.label
    GPURenderPassEncoder7.end();
    const GPUCommandBuffer3 = GPUCommandEncoder5.finish();
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string20 = GPUComputePipeline5.label
    const string21 = GPUComputePipeline7.label
    const GPUSupportedLimits4 = GPUAdapter0.limits
    const GPUSupportedFeatures3 = GPUAdapter1.features
    const boolean6 = GPUAdapter0.isFallbackAdapter
    const GPUTextureView13 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView13"
    });
    const string22 = GPUQuerySet4.label
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
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
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline5",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const string23 = GPUQuerySet3.label
    const string24 = GPUComputePassEncoder2.label
    const GPUShaderModule7 = GPUDevice1.createShaderModule({
        label: "fragment",
        code: shader7
    });
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUCommandBuffer4 = GPUCommandEncoder8.finish();
    GPUQueue2.submit([GPUCommandBuffer4]);
    const string25 = GPURenderPipeline5.label
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: true,
        size: 223568164,
        usage: GPUBufferUsage.MAP_READ
    });
    GPUComputePassEncoder2.end();
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8snorm",
        label: "GPUTexture10",
        size: {
            width: 1086,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8snorm"]
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const string26 = GPUComputePassEncoder3.label
    const string27 = GPURenderPassEncoder6.label
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline10);
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture11",
        size: {
            width: 609,
            height: 758,
            depthOrArrayLayers: 56
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPUTextureView14 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "r16float",
        label: "GPUTextureView14"
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 279,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.21012950426231547,
                g: 0.22025485695540314,
                b: 0.20601729685347048,
                a: 0.6197103673814839
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView14,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 1594501648,
        occlusionQuerySet: GPUQuerySet9
    });
    GPURenderPassEncoder9.end();
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline6);
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture12",
        size: {
            width: 1121,
            height: 1687,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView15 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView15"
    });
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 2008,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7960682300409512,
                g: 0.867288093303307,
                b: 0.7192689357177285,
                a: 0.6304573435863967
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView15
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 2378237171,
        occlusionQuerySet: GPUQuerySet10
    });
    GPURenderPassEncoder6.end();
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder10.draw(9);
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16sint",
        label: "GPUTexture13",
        size: {
            width: 342,
            height: 67,
            depthOrArrayLayers: 56
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16sint"]
    });
    const GPUSupportedLimits5 = GPUAdapter3.limits
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUCommandBuffer5 = GPUCommandEncoder10.finish();
    GPUQueue3.submit([GPUCommandBuffer5]);
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const GPUQueue5 = GPUDevice0.queue
    GPUQueue5.writeBuffer(GPUBuffer1, 0, typedArray7);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUCommandBuffer6 = GPUCommandEncoder11.finish();
    GPUQueue2.submit([GPUCommandBuffer6]);
    const GPUTextureView16 = GPUTexture10.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8snorm",
        label: "GPUTextureView16"
    });
    const GPUBindGroupLayout1 = GPUComputePipeline10.getBindGroupLayout(0);
    const GPUAdapterInfo4 = GPUAdapter0.info
    GPURenderPassEncoder10.draw(4);
    const GPUSupportedFeatures4 = GPUDevice0.features
    GPURenderPassEncoder10.end();
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2uint",
        label: "GPUTexture14",
        size: {
            width: 3803,
            height: 2006,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgb10a2uint"]
    });
    const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    const GPURenderPipeline7 = GPUDevice1.createRenderPipeline({
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
                        dstFactor: "zero",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA
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
            module: GPUShaderModule6
        }
    });
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture15",
        size: {
            width: 256,
            height: 84,
            depthOrArrayLayers: 44
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView17 = GPUTexture15.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rg8unorm",
        label: "GPUTextureView17"
    });
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 1848,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.04743592080312431,
                g: 0.6525783407170811,
                b: 0.877256595560181,
                a: 0.5037530017143386
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView17,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 4205201082,
        occlusionQuerySet: GPUQuerySet11
    });
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    GPURenderPassEncoder11.end();
    const GPUCommandBuffer7 = GPUCommandEncoder1.finish();
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline6);
    const string28 = GPUDevice0.label
    const string29 = GPUTextureView2.label
    const GPUComputePipeline14 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline14",
        layout: "auto"
    });
    const GPUQueue6 = GPUDevice0.queue
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray8);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup5);
    const GPUTextureView18 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView18"
    });
    const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline15",
        layout: "auto"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline15);
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer1);
    const string30 = GPUQuerySet8.label
    const string31 = GPUQueue6.label
    GPURenderPassEncoder8.draw(6);
    const GPUSupportedFeatures5 = GPUAdapter1.features
    const string32 = GPUDevice1.label
    const GPUComputePipeline16 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline16",
        layout: "auto"
    });
    const GPUQueue7 = GPUDevice0.queue
    GPUQueue7.writeBuffer(GPUBuffer1, 0, typedArray9);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline16.bindGroup",
        layout: GPUComputePipeline16.getBindGroupLayout(0),
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
    const GPUComputePipeline17 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline17",
        layout: "auto"
    });
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string33 = GPUTextureView7.label
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer2);
    const string34 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder8.draw(5);
    const string35 = GPURenderPipeline5.label
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer0);
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader8
    });
    const GPUBuffer4 = GPUDevice1.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 136522400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM
    });
    GPUQueue5.writeBuffer(GPUBuffer1, 40, typedArray10);
    const string36 = GPUQuerySet5.label
    GPUComputePassEncoder3.end();
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUCommandBuffer8 = GPUCommandEncoder12.finish();
    GPUQueue0.submit([GPUCommandBuffer8]);
    GPURenderPassEncoder8.end();
    const GPUSupportedFeatures6 = GPUDevice1.features
    const GPUComputePassEncoder4 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    const GPUComputePipeline18 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline18",
        layout: "auto"
    });
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline18);
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUCommandBuffer9 = GPUCommandEncoder14.finish();
    GPUQueue1.submit([GPUCommandBuffer9]);
    const string37 = GPUQuerySet8.label
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture16",
        size: {
            width: 110,
            height: 715,
            depthOrArrayLayers: 52
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView19 = GPUTexture16.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView19"
    });
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 2674,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3973586726768652,
                g: 0.34584463142803157,
                b: 0.4192248843622751,
                a: 0.6728710561769287
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView19,
            depthSlice: 45
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 2079083360,
        occlusionQuerySet: GPUQuerySet12
    });
    GPURenderPassEncoder12.end();
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture17",
        size: {
            width: 1031,
            height: 36,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView20 = GPUTexture17.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView20"
    });
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 1531,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.38331655544648935,
                g: 0.17746244497354857,
                b: 0.13474065234042143,
                a: 0.7386667809211547
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView20
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 1891242109,
        occlusionQuerySet: GPUQuerySet13
    });
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline8",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline8);
    const GPURenderPipeline9 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "src-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.RED
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUCommandBuffer10 = GPUCommandEncoder15.finish();
    GPUQueue4.submit([GPUCommandBuffer10]);
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUCommandBuffer11 = GPUCommandEncoder16.finish();
    GPUQueue6.submit([GPUCommandBuffer11]);
    const boolean7 = GPUAdapter2.isFallbackAdapter
    const string38 = GPUTextureView18.label
    const string39 = GPUComputePassEncoder4.label
    const GPUSupportedFeatures7 = GPUDevice0.features
    const GPUBindGroupLayout2 = GPUComputePipeline15.getBindGroupLayout(0);
    const GPUCommandBuffer12 = GPUCommandEncoder7.finish();
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: false,
        size: 145140876,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    const GPUSupportedFeatures8 = GPUDevice0.features
    const GPUBindGroupLayout3 = GPUComputePipeline2.getBindGroupLayout(0);
    const string40 = GPURenderPassEncoder13.label
    const string41 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule9 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader9
    });
    const GPUBuffer6 = GPUDevice1.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 95801688,
        usage: GPUBufferUsage.STORAGE
    });
    const string42 = GPURenderPassEncoder13.label
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline8);
    const GPUTextureView21 = GPUTexture16.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView21"
    });
    const string43 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePassEncoder5 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const string44 = GPUComputePassEncoder5.label
    GPURenderPassEncoder13.draw(7);
    GPURenderPassEncoder13.end();
    const GPUCommandBuffer13 = GPUCommandEncoder13.finish();
    const GPUTextureView22 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView22"
    });
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture18",
        size: {
            width: 1861,
            height: 3639,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView23 = GPUTexture18.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView23"
    });
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 1955,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.21613779522597165,
                g: 0.6495974503174305,
                b: 0.22384965927013334,
                a: 0.7502110065364596
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 2917200293,
        occlusionQuerySet: GPUQuerySet14
    });
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer0);
    const GPUComputePipeline19 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline19",
        layout: "auto"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline19);
    const string45 = GPUCommandEncoder6.label
    const GPUComputePipeline20 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline20",
        layout: "auto"
    });
    const GPUQueue8 = GPUDevice0.queue
    GPUQueue8.writeBuffer(GPUBuffer1, 0, typedArray11);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline19.bindGroup",
        layout: GPUComputePipeline19.getBindGroupLayout(0),
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
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup7);
    const GPURenderPipeline10 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r32float",
        label: "GPUTexture19",
        size: {
            width: 1017,
            height: 1346,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r32float"]
    });
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const string46 = GPURenderPassEncoder14.label
    const GPUQueue9 = GPUDevice0.queue
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder14.draw(6);
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string47 = GPUDevice0.label
    const GPUQuerySet15 = GPUDevice0.createQuerySet({
        count: 1442,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    GPURenderPassEncoder14.draw(9);
    const string48 = GPUQueue0.label
    const GPUSupportedLimits6 = GPUDevice0.limits
    const string49 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder17 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUTexture20 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture20",
        size: {
            width: 3917,
            height: 2218,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView24 = GPUTexture20.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba16float",
        label: "GPUTextureView24"
    });
    const GPUQuerySet16 = GPUDevice1.createQuerySet({
        count: 2754,
        label: "GPUQuerySet16",
        type: "occlusion"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.051675881191801554,
                g: 0.9034703590350287,
                b: 0.3906085505619078,
                a: 0.505593156007926
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView24
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 16055221,
        occlusionQuerySet: GPUQuerySet16
    });
    const GPUSupportedLimits7 = GPUAdapter3.limits
    const GPUTextureView25 = GPUTexture20.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 31,
        baseArrayLayer: 10,
        mipLevelCount: 7,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView25"
    });
    const GPUCommandEncoder18 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUComputePassEncoder6 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUBindGroupLayout5 = GPUComputePipeline16.getBindGroupLayout(0);
    const GPUCommandEncoder19 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUTexture21 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture21",
        size: {
            width: 2204,
            height: 2785,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView26 = GPUTexture21.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView26"
    });
    const GPUQuerySet17 = GPUDevice1.createQuerySet({
        count: 3897,
        label: "GPUQuerySet17",
        type: "occlusion"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder19.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.11623987220019627,
                g: 0.53089843198141,
                b: 0.8277088780043422,
                a: 0.5514848984619144
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView26
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 1033553490,
        occlusionQuerySet: GPUQuerySet17
    });
    const GPUTextureView27 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba8unorm",
        label: "GPUTextureView27"
    });
    const GPUBuffer7 = GPUDevice1.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: false,
        size: 174732944,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX
    });
    GPURenderPassEncoder15.setVertexBuffer(0, GPUBuffer7);
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer1);
    const string50 = GPUCommandEncoder9.label
    const string51 = GPURenderPassEncoder16.label
    const GPUSupportedLimits8 = GPUDevice1.limits
    GPUQueue1.writeBuffer(GPUBuffer0, 34760028, typedArray12);
    const string52 = GPUQuerySet2.label
    const GPURenderPipeline11 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule7,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.RED
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule9
        }
    });
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline11);
    GPURenderPassEncoder16.draw(6);
    const GPUAdapterInfo5 = GPUAdapter4.info
    const string53 = GPUTextureView0.label
    GPURenderPassEncoder15.end();
    const string54 = GPUComputePassEncoder6.label
    const GPUQuerySet18 = GPUDevice0.createQuerySet({
        count: 3800,
        label: "GPUQuerySet18",
        type: "occlusion"
    });
    const GPUBuffer8 = GPUDevice1.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 258548248,
        usage: GPUBufferUsage.UNIFORM
    });
    const string55 = GPUDevice1.label
    const GPUComputePipeline21 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline21",
        layout: "auto"
    });
    const string56 = GPURenderPassEncoder14.label
    const GPUBindGroupLayout6 = GPUComputePipeline20.getBindGroupLayout(0);
    const GPUComputePassEncoder7 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const string57 = GPURenderPassEncoder16.label
    const GPUSupportedFeatures9 = GPUDevice1.features
    const GPUCommandEncoder20 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUComputePassEncoder8 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUSupportedFeatures10 = GPUAdapter3.features
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUTexture22 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "depth32float",
        label: "GPUTexture22",
        size: {
            width: 3783,
            height: 3857,
            depthOrArrayLayers: 48
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["depth32float"]
    });
    const GPUComputePipeline22 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline22",
        layout: "auto"
    });
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline22);
    const GPUComputePipeline23 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline23",
        layout: "auto"
    });
    const GPUBuffer9 = GPUDevice1.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer10 = GPUDevice1.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUQueue10 = GPUDevice1.queue
    GPUQueue10.writeBuffer(GPUBuffer9, 0, typedArray13);
    const GPUBindGroup8 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline22.bindGroup",
        layout: GPUComputePipeline22.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer9
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer10
            }
        }]
    });
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup8);
    GPUComputePassEncoder7.dispatchWorkgroups(88, 164, 40);
    const GPUBuffer11 = GPUDevice0.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 116876488,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUSupportedFeatures11 = GPUDevice1.features
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture23",
        size: {
            width: 778,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUQueue11 = GPUDevice1.queue
    const string58 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue5.writeBuffer(GPUBuffer0, 24781920, typedArray14);
    const boolean8 = GPUAdapter1.isFallbackAdapter
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline11);
    const string59 = await navigator.gpu.getPreferredCanvasFormat();
    const string60 = GPUQueue11.label
    const string61 = GPUQuerySet10.label
    const GPUBuffer12 = GPUDevice1.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 146982380,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    const GPUAdapterInfo6 = GPUAdapter0.info
    const string62 = GPURenderPassEncoder14.label
    const string63 = GPUCommandEncoder17.label
    const GPUTexture24 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth16unorm",
        label: "GPUTexture24",
        size: {
            width: 88,
            height: 833,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["depth16unorm"]
    });
    const GPUTextureView28 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView28"
    });
    const string64 = GPUDevice0.label
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32uint",
        label: "GPUTexture25",
        size: {
            width: 408,
            height: 619,
            depthOrArrayLayers: 55
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba32uint"]
    });
    const GPUSupportedFeatures12 = GPUAdapter3.features
    const GPUSupportedLimits9 = GPUAdapter1.limits
    const GPUComputePipeline24 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline24",
        layout: "auto"
    });
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline24);
    const GPUTextureView29 = GPUTexture7.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r8unorm",
        label: "GPUTextureView29"
    });
    const string65 = GPURenderPipeline11.label
    const string66 = GPURenderPassEncoder14.label
    GPUQueue8.writeBuffer(GPUBuffer5, 9345488, typedArray15);
    const string67 = GPURenderPipeline1.label
    const GPUSupportedFeatures13 = GPUAdapter5.features
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const string68 = GPURenderPassEncoder14.label
    const string69 = GPUComputePassEncoder5.label
    const GPUComputePipeline25 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline25",
        layout: "auto"
    });
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup8);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline25);
    const GPUComputePipeline26 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline26",
        layout: "auto"
    });
    const string70 = GPUDevice0.label
    GPUQueue7.writeBuffer(GPUBuffer5, 86421024, typedArray16);
    const GPUComputePipeline27 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline27",
        layout: "auto"
    });
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline27);
    const string71 = GPURenderPipeline10.label
    GPURenderPassEncoder16.draw(1);
    const string72 = GPUTextureView10.label
    const string73 = GPUQuerySet11.label
    const string74 = GPUDevice1.label
    GPUComputePassEncoder6.end();
    const GPUTexture26 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture26",
        size: {
            width: 906,
            height: 3037,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView30 = GPUTexture26.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rgba16float",
        label: "GPUTextureView30"
    });
    const GPUQuerySet19 = GPUDevice1.createQuerySet({
        count: 1633,
        label: "GPUQuerySet19",
        type: "occlusion"
    });
    const GPURenderPassEncoder17 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7492951927468681,
                g: 0.39712313343106376,
                b: 0.11658699079972301,
                a: 0.004374094593068478
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView30
        }],
        label: "GPURenderPassEncoder17",
        maxDrawCount: 713803807,
        occlusionQuerySet: GPUQuerySet19
    });
    const string75 = GPUComputePassEncoder5.label
    const GPUQuerySet20 = GPUDevice1.createQuerySet({
        count: 515,
        label: "GPUQuerySet20",
        type: "occlusion"
    });
    GPURenderPassEncoder16.setVertexBuffer(0, GPUBuffer7);
    const string76 = GPUTextureView16.label
    GPURenderPassEncoder16.draw(9);
    const GPUCommandEncoder21 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUTexture27 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture27",
        size: {
            width: 2905,
            height: 349,
            depthOrArrayLayers: 41
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView31 = GPUTexture27.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba8unorm",
        label: "GPUTextureView31"
    });
    const GPUQuerySet21 = GPUDevice1.createQuerySet({
        count: 3094,
        label: "GPUQuerySet21",
        type: "occlusion"
    });
    const GPURenderPassEncoder18 = GPUCommandEncoder21.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8155502896200587,
                g: 0.3100563230620065,
                b: 0.9649244683405909,
                a: 0.2175417344281365
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView31
        }],
        label: "GPURenderPassEncoder18",
        maxDrawCount: 3493876715,
        occlusionQuerySet: GPUQuerySet21
    });
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline11);
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture28",
        size: {
            width: 47,
            height: 69,
            depthOrArrayLayers: 6
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView32 = GPUTexture28.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView32"
    });
    const GPUQuerySet22 = GPUDevice0.createQuerySet({
        count: 3349,
        label: "GPUQuerySet22",
        type: "occlusion"
    });
    const GPURenderPassEncoder19 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.324987576749594,
                g: 0.1331665518320857,
                b: 0.45646765638429654,
                a: 0.4595864587441475
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView32,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder19",
        maxDrawCount: 467091741,
        occlusionQuerySet: GPUQuerySet22
    });
    const GPUSupportedFeatures14 = GPUAdapter2.features
    const GPUSupportedLimits10 = GPUDevice1.limits
    const GPUTextureView33 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView33"
    });
    GPURenderPassEncoder14.end();
    const GPUCommandBuffer14 = GPUCommandEncoder6.finish();
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule2
        }
    });
    const GPUBindGroupLayout7 = GPUComputePipeline20.getBindGroupLayout(0);
    GPURenderPassEncoder17.end();
    GPURenderPassEncoder19.setPipeline(GPURenderPipeline1);
    const string77 = GPUQueue7.label
    const GPUComputePipeline28 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline28",
        layout: "auto"
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline28);
    const GPUComputePipeline29 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline29",
        layout: "auto"
    });
    const GPUQueue12 = GPUDevice0.queue
    GPUQueue12.writeBuffer(GPUBuffer1, 0, typedArray17);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline28.bindGroup",
        layout: GPUComputePipeline28.getBindGroupLayout(0),
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
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder5.dispatchWorkgroups(206, 180, 49);
    const string78 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder16.setVertexBuffer(0, GPUBuffer7);
    GPUQueue12.writeBuffer(GPUBuffer5, 138090152, typedArray18);
    const GPUTexture29 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture29",
        size: {
            width: 590,
            height: 767,
            depthOrArrayLayers: 52
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const string79 = GPUDevice0.label
    const string80 = GPUQueue0.label
    const string81 = GPUComputePassEncoder7.label
    const GPUSupportedFeatures15 = GPUAdapter5.features
    const GPUComputePipeline30 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline30",
        layout: "auto"
    });
    const GPUBuffer13 = GPUDevice1.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBuffer14 = GPUDevice1.createBuffer({
        label: "GPUBuffer14",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
    });
    const GPUQueue13 = GPUDevice1.queue
    GPUQueue13.writeBuffer(GPUBuffer13, 0, typedArray19);
    const GPUBindGroup10 = GPUDevice1.createBindGroup({
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
    const string82 = GPUDevice0.label
    const GPUBuffer15 = GPUDevice0.createBuffer({
        label: "GPUBuffer15",
        mappedAtCreation: true,
        size: 22764276,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBindGroupLayout8 = GPUComputePipeline11.getBindGroupLayout(0);
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup9);
    const string83 = GPUComputePassEncoder7.label
    const string84 = GPUDevice1.label
    const GPUComputePassEncoder9 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const GPUCommandEncoder23 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const GPUComputePassEncoder10 = GPUCommandEncoder23.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const GPUQuerySet23 = GPUDevice0.createQuerySet({
        count: 1764,
        label: "GPUQuerySet23",
        type: "occlusion"
    });
    const GPUQueue14 = GPUDevice0.queue
    const string85 = GPUQueue0.label
    const boolean9 = GPUAdapter1.isFallbackAdapter
    const GPURenderPipeline13 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.ALL
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    const string86 = GPUQuerySet0.label
    GPURenderPassEncoder19.end();
    const string87 = GPURenderPassEncoder16.label
    const GPUCommandEncoder24 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    const GPURenderPipeline14 = GPUDevice1.createRenderPipeline({
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
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline14",
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
    GPURenderPassEncoder18.setPipeline(GPURenderPipeline14);
    GPURenderPassEncoder18.draw(7);
    const GPUBindGroupLayout9 = GPUComputePipeline15.getBindGroupLayout(0);
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUTextureView34 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView34"
    });
    GPUComputePassEncoder8.end();
    const GPUCommandBuffer15 = GPUCommandEncoder20.finish();
    const GPUComputePipeline31 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline31",
        layout: "auto"
    });
    const GPUQueue15 = GPUDevice0.queue
    GPUQueue15.writeBuffer(GPUBuffer1, 0, typedArray20);
    const GPUBindGroup11 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline31.bindGroup",
        layout: GPUComputePipeline31.getBindGroupLayout(0),
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
    const GPUComputePipeline32 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline32",
        layout: "auto"
    });
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline32);
    const GPUComputePipeline33 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline33",
        layout: "auto"
    });
    const GPUQueue16 = GPUDevice1.queue
    GPUQueue16.writeBuffer(GPUBuffer9, 0, typedArray21);
    const GPUBindGroup12 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline32.bindGroup",
        layout: GPUComputePipeline32.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer9
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer10
            }
        }]
    });
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup12);
    GPUComputePassEncoder9.dispatchWorkgroups(46, 35, 59);
    GPUComputePassEncoder10.end();
    const string88 = GPUComputePipeline5.label
    GPURenderPassEncoder18.end();
    const GPUTexture30 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture30",
        size: {
            width: 563,
            height: 1,
            depthOrArrayLayers: 27
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView35 = GPUTexture30.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView35"
    });
    const GPUQuerySet24 = GPUDevice0.createQuerySet({
        count: 2144,
        label: "GPUQuerySet24",
        type: "occlusion"
    });
    const GPURenderPassEncoder20 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7033716950738,
                g: 0.8553534815975334,
                b: 0.5614094991830829,
                a: 0.08709133579834338
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView35,
            depthSlice: 3
        }],
        label: "GPURenderPassEncoder20",
        maxDrawCount: 1368802016,
        occlusionQuerySet: GPUQuerySet24
    });
    const string89 = GPUTextureView6.label
    const GPUCommandEncoder25 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    const boolean10 = GPUAdapter1.isFallbackAdapter
    GPUComputePassEncoder9.end();
    const GPUCommandBuffer16 = GPUCommandEncoder18.finish();
    const GPUQuerySet25 = GPUDevice1.createQuerySet({
        count: 1306,
        label: "GPUQuerySet25",
        type: "occlusion"
    });
    const GPUDevice2 = await GPUAdapter4.requestDevice();
    const string90 = GPUQuerySet2.label
    const GPUDevice3 = await GPUAdapter5.requestDevice();
    const GPUQuerySet26 = GPUDevice0.createQuerySet({
        count: 3045,
        label: "GPUQuerySet26",
        type: "occlusion"
    });
    const string91 = GPUTextureView20.label
    const GPUAdapterInfo7 = GPUAdapter5.info
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder20.setPipeline(GPURenderPipeline15);
    const string92 = GPUTextureView12.label
    const boolean11 = GPUAdapter0.isFallbackAdapter
    const GPUQueue17 = GPUDevice0.queue
    const string93 = GPUComputePassEncoder7.label
    const GPUAdapterInfo8 = GPUAdapter3.info
    GPUComputePassEncoder4.end();
    const GPUQuerySet27 = GPUDevice0.createQuerySet({
        count: 2215,
        label: "GPUQuerySet27",
        type: "occlusion"
    });
    GPURenderPassEncoder20.setPipeline(GPURenderPipeline15);
    const GPUShaderModule10 = GPUDevice2.createShaderModule({
        label: "compute",
        code: shader10
    });
    const GPUComputePipeline34 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline34",
        layout: "auto"
    });
    const string94 = GPUQueue8.label
    const string95 = GPURenderPipeline6.label
    const string96 = GPUQuerySet16.label
    GPUQueue11.writeBuffer(GPUBuffer9, 0, typedArray22);
    const GPUComputePipeline35 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline35",
        layout: "auto"
    });
    const GPUQueue18 = GPUDevice1.queue
    GPUQueue18.writeBuffer(GPUBuffer9, 0, typedArray23);
    const GPUBindGroup13 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline35.bindGroup",
        layout: GPUComputePipeline35.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer9
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer10
            }
        }]
    });
    const GPUComputePassEncoder11 = GPUCommandEncoder25.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const GPUComputePipeline36 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline36",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline36);
    const string97 = GPUComputePassEncoder11.label
    const GPUBuffer16 = GPUDevice2.createBuffer({
        label: "GPUBuffer16",
        mappedAtCreation: false,
        size: 155932520,
        usage: GPUBufferUsage.MAP_READ
    });
    const GPUComputePipeline37 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline37",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline37);
    const string98 = await navigator.gpu.getPreferredCanvasFormat();
    const boolean12 = GPUAdapter4.isFallbackAdapter
    const GPUAdapterInfo9 = GPUAdapter2.info
    const GPUTexture31 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture31",
        size: {
            width: 893,
            height: 337,
            depthOrArrayLayers: 49
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView36 = GPUTexture31.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg8unorm",
        label: "GPUTextureView36"
    });
    const GPUQuerySet28 = GPUDevice1.createQuerySet({
        count: 1443,
        label: "GPUQuerySet28",
        type: "occlusion"
    });
    const GPURenderPassEncoder21 = GPUCommandEncoder24.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6941177329392975,
                g: 0.8275928326091997,
                b: 0.9906980254203932,
                a: 0.4566552439902759
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView36,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder21",
        maxDrawCount: 2214297377,
        occlusionQuerySet: GPUQuerySet28
    });
    const string99 = GPUDevice2.label
    const GPUSupportedLimits11 = GPUDevice1.limits
    const GPUDevice4 = await GPUAdapter3.requestDevice();
    const GPUShaderModule11 = GPUDevice4.createShaderModule({
        label: "compute",
        code: shader11
    });
    const boolean13 = GPUAdapter2.isFallbackAdapter
    const string100 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder16.draw(1);
    const GPUCommandEncoder26 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder26"
    });
    const GPUCommandBuffer17 = GPUCommandEncoder26.finish();
    GPUQueue16.submit([GPUCommandBuffer17]);
    GPURenderPassEncoder20.end();
    const GPUComputePipeline38 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline38",
        layout: "auto"
    });
    const GPUTextureView37 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView37"
    });
    GPURenderPassEncoder16.setVertexBuffer(0, GPUBuffer12);
    const GPUSupportedFeatures16 = GPUAdapter2.features
    const string101 = GPUDevice2.label
    const GPUAdapterInfo10 = GPUAdapter1.info
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits12 = GPUDevice1.limits
    const string102 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUAdapterInfo11 = GPUAdapter0.info
    const GPUCommandBuffer18 = GPUCommandEncoder23.finish();
    const GPUTextureView38 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm",
        label: "GPUTextureView38"
    });
    const GPUCommandEncoder27 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder27"
    });
    const GPUCommandBuffer19 = GPUCommandEncoder27.finish();
    GPUQueue16.submit([GPUCommandBuffer19]);
    const GPUAdapterInfo12 = GPUAdapter4.info
    const GPUShaderModule12 = GPUDevice4.createShaderModule({
        label: "fragment",
        code: shader12
    });
    const GPUShaderModule13 = GPUDevice4.createShaderModule({
        label: "vertex",
        code: shader13
    });
    const GPURenderPipeline16 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule12,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "zero"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline16",
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
            module: GPUShaderModule13
        }
    });
    const GPUComputePipeline39 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline39",
        layout: "auto"
    });
    const GPUShaderModule14 = GPUDevice2.createShaderModule({
        label: "vertex",
        code: shader14
    });
    const GPUSupportedLimits13 = GPUAdapter3.limits
    const GPUCommandEncoder28 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder28"
    });
    const GPUCommandBuffer20 = GPUCommandEncoder28.finish();
    GPUQueue1.submit([GPUCommandBuffer20]);
    const GPUSupportedFeatures17 = GPUAdapter3.features
    const GPUSupportedFeatures18 = GPUDevice2.features
    const string103 = GPUCommandEncoder21.label
    const string104 = GPURenderPassEncoder16.label
    GPUComputePassEncoder11.end();
    const GPUSupportedFeatures19 = GPUDevice4.features
    const GPUComputePipeline40 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline40",
        layout: "auto"
    });
    const GPUBuffer17 = GPUDevice4.createBuffer({
        label: "GPUBuffer17",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBuffer18 = GPUDevice4.createBuffer({
        label: "GPUBuffer18",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST
    });
    const GPUQueue19 = GPUDevice4.queue
    GPUQueue19.writeBuffer(GPUBuffer17, 0, typedArray24);
    const GPUBindGroup14 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline40.bindGroup",
        layout: GPUComputePipeline40.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer17
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer18
            }
        }]
    });
    const string105 = GPUQueue2.label
    const string106 = GPUComputePipeline40.label
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const string107 = GPUCommandEncoder22.label
    const string108 = GPUDevice1.label
    GPURenderPassEncoder21.end();
    const GPUCommandBuffer21 = GPUCommandEncoder24.finish();
    const GPUTextureView39 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView39"
    });
    const GPUComputePipeline41 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline41",
        layout: "auto"
    });
    const GPUComputePipeline42 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline42",
        layout: "auto"
    });
    const GPUQueue20 = GPUDevice1.queue
    GPUQueue20.writeBuffer(GPUBuffer13, 0, typedArray25);
    const GPUBindGroup15 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline25.bindGroup",
        layout: GPUComputePipeline25.getBindGroupLayout(0),
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
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline41);
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const string109 = GPURenderPipeline4.label
    const GPUSupportedLimits14 = GPUAdapter0.limits
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline11);
    const string110 = GPUComputePipeline32.label
    const GPUQuerySet29 = GPUDevice3.createQuerySet({
        count: 774,
        label: "GPUQuerySet29",
        type: "occlusion"
    });
    const GPUBindGroupLayout10 = GPUComputePipeline23.getBindGroupLayout(0);
    const GPUSupportedFeatures20 = GPUAdapter1.features
    const GPUSupportedLimits15 = GPUAdapter3.limits
    const GPUShaderModule15 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader15
    });
    const GPUBuffer19 = GPUDevice3.createBuffer({
        label: "GPUBuffer19",
        mappedAtCreation: false,
        size: 76808972,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
    });
    const GPUComputePipeline43 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline43",
        layout: "auto"
    });
    const GPUQueue21 = GPUDevice4.queue
    GPUQueue21.writeBuffer(GPUBuffer17, 0, typedArray26);
    const GPUBindGroup16 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline43.bindGroup",
        layout: GPUComputePipeline43.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer17
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer18
            }
        }]
    });
    const string111 = GPUComputePipeline4.label
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUCommandEncoder29 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder29"
    });
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string112 = GPUCommandEncoder21.label
    const GPUShaderModule16 = GPUDevice3.createShaderModule({
        label: "compute",
        code: shader16
    });
    const GPUComputePipeline44 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline44",
        layout: "auto"
    });
    const GPUBuffer20 = GPUDevice3.createBuffer({
        label: "GPUBuffer20",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer21 = GPUDevice3.createBuffer({
        label: "GPUBuffer21",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    });
    const GPUQueue22 = GPUDevice3.queue
    GPUQueue22.writeBuffer(GPUBuffer20, 0, typedArray27);
    const GPUBindGroup17 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline44.bindGroup",
        layout: GPUComputePipeline44.getBindGroupLayout(0),
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
    GPUComputePassEncoder7.end();
    const GPUCommandBuffer22 = GPUCommandEncoder17.finish();
    const GPUAdapterInfo13 = GPUAdapter6.info
    const GPUQuerySet30 = GPUDevice2.createQuerySet({
        count: 2300,
        label: "GPUQuerySet30",
        type: "occlusion"
    });
    const GPUSupportedFeatures21 = GPUDevice2.features
    const GPUShaderModule17 = GPUDevice4.createShaderModule({
        label: "fragment",
        code: shader17
    });
    GPUQueue7.writeBuffer(GPUBuffer0, 33372336, typedArray28);
    const string113 = GPUQuerySet11.label
    const GPUSupportedLimits16 = GPUDevice0.limits
    GPURenderPassEncoder16.end();
    const string114 = GPUTextureView8.label
    const string115 = GPUTextureView4.label
    const string116 = GPUComputePassEncoder5.label
    const GPUTexture32 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8unorm",
        label: "GPUTexture32",
        size: {
            width: 715,
            height: 206,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView40 = GPUTexture32.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView40"
    });
    const GPUQuerySet31 = GPUDevice1.createQuerySet({
        count: 1042,
        label: "GPUQuerySet31",
        type: "occlusion"
    });
    const GPURenderPassEncoder22 = GPUCommandEncoder21.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.13314166470963396,
                g: 0.9304636428409678,
                b: 0.9090356052392268,
                a: 0.38983628276623694
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView40
        }],
        label: "GPURenderPassEncoder22",
        maxDrawCount: 253487104,
        occlusionQuerySet: GPUQuerySet31
    });
    const string117 = GPUTextureView9.label
    const GPUTexture33 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture33",
        size: {
            width: 2378,
            height: 2476,
            depthOrArrayLayers: 44
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView41 = GPUTexture33.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg16float",
        label: "GPUTextureView41"
    });
    const GPUQuerySet32 = GPUDevice0.createQuerySet({
        count: 1180,
        label: "GPUQuerySet32",
        type: "occlusion"
    });
    const GPURenderPassEncoder23 = GPUCommandEncoder25.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4928514644958495,
                g: 0.3611440834202623,
                b: 0.8522471152462434,
                a: 0.4288377482135728
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView41
        }],
        label: "GPURenderPassEncoder23",
        maxDrawCount: 748939782,
        occlusionQuerySet: GPUQuerySet32
    });
    const GPUComputePassEncoder12 = GPUCommandEncoder29.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup9);
    const GPUShaderModule18 = GPUDevice4.createShaderModule({
        label: "vertex",
        code: shader18
    });
    const GPUQueue23 = GPUDevice4.queue
    const GPUCommandEncoder30 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder30"
    });
    const string118 = GPUTextureView20.label
    const GPUTexture34 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture34",
        size: {
            width: 2877,
            height: 1943,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView42 = GPUTexture34.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView42"
    });
    const GPUQuerySet33 = GPUDevice1.createQuerySet({
        count: 1013,
        label: "GPUQuerySet33",
        type: "occlusion"
    });
    const GPURenderPassEncoder24 = GPUCommandEncoder19.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6394634754216787,
                g: 0.3976831837551432,
                b: 0.991964087667902,
                a: 0.9107160291210756
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView42
        }],
        label: "GPURenderPassEncoder24",
        maxDrawCount: 2684585302,
        occlusionQuerySet: GPUQuerySet33
    });
    const GPUComputePipeline45 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline45",
        layout: "auto"
    });
    const GPUQueue24 = GPUDevice3.queue
    GPUQueue24.writeBuffer(GPUBuffer20, 0, typedArray29);
    const GPUBindGroup18 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline45.bindGroup",
        layout: GPUComputePipeline45.getBindGroupLayout(0),
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
    GPUQueue24.writeBuffer(GPUBuffer21, 36, typedArray30);
    const GPUComputePipeline46 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule15
        },
        label: "GPUComputePipeline46",
        layout: "auto"
    });
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline46);
    const GPUComputePipeline47 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline47",
        layout: "auto"
    });
    const GPUQueue25 = GPUDevice0.queue
    GPUQueue25.writeBuffer(GPUBuffer1, 0, typedArray31);
    const GPUBindGroup19 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline46.bindGroup",
        layout: GPUComputePipeline46.getBindGroupLayout(0),
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
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup19);
    GPUComputePassEncoder12.dispatchWorkgroups(178, 230, 37);
    const GPUSupportedFeatures22 = GPUDevice3.features
    const string119 = GPUTextureView35.label
    const GPUCommandBuffer23 = GPUCommandEncoder22.finish();
    const GPUCommandEncoder31 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder31"
    });
    const GPUCommandBuffer24 = GPUCommandEncoder31.finish();
    GPUQueue1.submit([GPUCommandBuffer24]);
    const GPUCommandEncoder32 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder32"
    });
    const GPUComputePipeline48 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline48",
        layout: "auto"
    });
    const GPUCommandEncoder33 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder33"
    });
    const string120 = GPUTextureView33.label
    const string121 = GPUDevice3.label
    const string122 = GPUTextureView22.label
    const GPURenderPipeline17 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline17",
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
            module: GPUShaderModule9
        }
    });
    GPURenderPassEncoder22.setPipeline(GPURenderPipeline17);
    GPURenderPassEncoder22.draw(1);
    const string123 = GPUTextureView8.label
    GPUComputePassEncoder5.end();
    const GPUComputePipeline49 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline49",
        layout: "auto"
    });
    const GPUBindGroupLayout11 = GPUComputePipeline8.getBindGroupLayout(0);
    const GPURenderPipeline18 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline18",
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
            module: GPUShaderModule6
        }
    });
    const GPUCommandEncoder34 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder34"
    });
    const GPUCommandBuffer25 = GPUCommandEncoder34.finish();
    GPUQueue19.submit([GPUCommandBuffer25]);
    const GPUBindGroupLayout12 = GPUComputePipeline28.getBindGroupLayout(0);
    const GPURenderPipeline19 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline19",
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
    GPURenderPassEncoder24.setPipeline(GPURenderPipeline19);
    GPURenderPassEncoder24.draw(3);
    const GPUTexture35 = GPUDevice3.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "GPUTexture35",
        size: {
            width: 171,
            height: 197,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba32sint"]
    });
    const string124 = GPUComputePipeline17.label
    const string125 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline50 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline50",
        layout: "auto"
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup19);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline50);
    const GPUAdapterInfo14 = GPUAdapter1.info
    const string126 = GPUComputePipeline24.label
    const GPUComputePipeline51 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline51",
        layout: "auto"
    });
    const GPUQueue26 = GPUDevice0.queue
    GPUQueue26.writeBuffer(GPUBuffer1, 0, typedArray32);
    const GPUBindGroup20 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline50.bindGroup",
        layout: GPUComputePipeline50.getBindGroupLayout(0),
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
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup20);
    const string127 = GPUQuerySet7.label
    const GPUComputePipeline52 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule15
        },
        label: "GPUComputePipeline52",
        layout: "auto"
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup20);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline52);
    const GPUComputePipeline53 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule15
        },
        label: "GPUComputePipeline53",
        layout: "auto"
    });
    const GPUQueue27 = GPUDevice0.queue
    GPUQueue27.writeBuffer(GPUBuffer1, 0, typedArray33);
    const GPUBindGroup21 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline52.bindGroup",
        layout: GPUComputePipeline52.getBindGroupLayout(0),
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
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup21);
    GPUComputePassEncoder12.dispatchWorkgroups(193, 244, 10);
    const GPUAdapterInfo15 = GPUAdapter2.info
    const GPUBindGroupLayout13 = GPUComputePipeline28.getBindGroupLayout(0);
    const string128 = GPURenderPipeline1.label
    const GPUCommandEncoder35 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder35"
    });
    const GPUCommandBuffer26 = GPUCommandEncoder35.finish();
    GPUQueue15.submit([GPUCommandBuffer26]);
    const string129 = GPUComputePassEncoder12.label
    GPURenderPassEncoder24.end();
    const boolean14 = GPUAdapter4.isFallbackAdapter
    const GPUComputePipeline54 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline54",
        layout: "auto"
    });
    const GPUQueue28 = GPUDevice1.queue
    GPUQueue28.writeBuffer(GPUBuffer9, 0, typedArray34);
    const GPUBindGroup22 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline54.bindGroup",
        layout: GPUComputePipeline54.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer9
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer10
            }
        }]
    });
    const GPUTexture36 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture36",
        size: {
            width: 702,
            height: 745,
            depthOrArrayLayers: 29
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView43 = GPUTexture36.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView43"
    });
    const GPUQuerySet34 = GPUDevice0.createQuerySet({
        count: 1295,
        label: "GPUQuerySet34",
        type: "occlusion"
    });
    const GPURenderPassEncoder25 = GPUCommandEncoder30.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6511403804878582,
                g: 0.7104598979366581,
                b: 0.8333797610709324,
                a: 0.13285833553557236
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView43,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder25",
        maxDrawCount: 3864652855,
        occlusionQuerySet: GPUQuerySet34
    });
    const GPUComputePassEncoder13 = GPUCommandEncoder33.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const string130 = GPUQueue17.label
    const GPUSupportedFeatures23 = GPUAdapter2.features
    const string131 = GPURenderPassEncoder25.label
    const string132 = GPURenderPipeline15.label

}
main().catch(console.error);