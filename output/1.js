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
const ukMlddr = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const hGPmmRSgt = new Float32Array([9967, 7104, 9910, -3299, -842, 4281, -4126, 9558, -4437, 1653, -2059, 3973, -7439, -6036, -6341, -174, -1826, 8983, -6796, -4030, -356, -6524, -3862, 524, -8077, -1075, 7903, -5322, -4190, 1396, -6124, 6421, -3421, -1430, -5358, -7697, 3487, 8444, -234, 4891, -6953, -1505, -4057, -3585, -4316, -5646, -4321, 5897, -4980, -9218, 7784, 4487, -2821, -1138, 7060, -3221, -293, 5432, 9271, -4620, -2625, -8943, -7080, 918, -9260, 4488, 3165, -3452, 3897, -4704, 1350, -8970, -5487, -1133, -9505, 59, -1146, -2887, 6497, -7360, -2529, -943, 9665, -139, 7618, 2284, 9482, 8861, -7047, 5766, -2119, 8899, 810, 4614, 9780, 6817, 5781, -9549, -6079, -3942, -2966, -5769, -8690, 9735, 918, 2189, 4608, 8841, -6103, 9412, -386, 9523, -1727, -2167, -7891, -5181, -2157, -5656, -2297, 7400, -5851, -6098, 312, 3398, 8291, -5340, -3263, 656, -8491, -5175, 2167, -5588, -8384, -8361, 8021, 2861, 7418, 6215, -968, 8778, 9538, 7236, 3522, 688, 3333, -5680, -7605, -3036, 9597, 3041, -8068, -4733, -9997, 5362, -3876, -8171, 7351, 6523, -2460, 9291, -9264, -676, 5934, 1914, -3398, -932, -9966, -947, -3509, -4485, -3341, -265, -3110, 6377, 3059, -8000, -8391, 8048, -422, -5960, -3586, -4760, 7166, -5848, -6160, 15, 9254, -3629, -2901, 5777, 5681, 4948, -551, -3349, 6923, -7440, 9400, 4692, 8501, -8220, -6021, 9725, 1558, -7291, -2034, 2243, 3647, -7349, 6464, -7251, -2931, -6286, 7934, -4719, -6526, 5645, -7337, -1018, -8389, -1033, -4544, -4132, 3122, -9468, -1190, 5641, 9824, -4100, -2172, -4718, -2632, -5434, 9189, 4370, -4321, -7368, 1582, 3371, -444, -1462, 559, 1928, 5373, 7912, 2708, -442, 3297, 4268, 9790, 9330, 7492, 3781, -4916, 3745, 7117, -7351, -8720, -4914, -8560, 5863, -9982, 1005, -9053, -2653, -9056, 779, -2356, 9260, -1437, -9495, -5203, -6541, -7776, -1218, -1284, -3683, -9283, -2007, -1024, 8726, 2392, 6572, 1330, -6799, -4304, -233, 5361, -8620, -6798, 9486, 4529, 7258, 1334, 3760, -5368, 3722, -1590, 9025, 9431, -4097, 7142, -8754, 2019, -9777, 4202, -5534, 2772, -1860, -250, 7780, 784, 6505, 4376, -6186, -1163, 9245, -5175, -2278, -3543, 7547, 2683, 1618, -4837, 185, 844, 4155, 3890, -9259, 4581, 9250, -6485, 5079, -2826, 6766, -8310, 6782, -6145, 3287, 9058, -9031, 3555, -879, -2007, 7855, 5554, -2700, -1065, 7579, -1312, -4361, -5004, -9550, -8163, -8313, -8914, -5327, -1450, 5974, 140, -6690, 610, 9760, -6740, 843, -7519, 4331, -4891, 8324, 652, -7272, 202, 6255, 7830, -9085, 2756, -6892, 8731, 3, 6491, -8172, 5464, -977, -9219, -2953, 2705, -4381, -8960, -2826, 9377, 8119, -9749, -8887, 6289, -700, 2367, -4518, 5477, -897, -3235, -5378, -2336, -1216, 8159, -6731, -2018, 9142, 8417, 9401, 5394, 4173, 6096, -8330, -167, 1168, -3613, 6490, 1482, -3327, 1348, -8989, 4407, 92, -8703, -1222, -1898, 9126, -7547, 1498, -8683, -1976, 522, -8974, -3387, -6196, 966, 7149, 4715, -8075, -3305, 2112, -1844, -8538, -6144, 3989, 5980, -5263, -3692, 9819, 7587, -5420, -8844, -6660, -4816, 1229, 5442, -3773, 8100, -4692, 8763, -9267, 3191, -3297, -8783, -6933, -6777, -6402, 1064, 9132, -4886, 4757, -5589, 357, 3209, -1006, 454, -2635, -5366, -7029, 5842, 7584, 8489, 6835, -413, -2315, -4985, 1148, 6126, 2262, 5439, 1991, 8661, 6006])
const WqCyR = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const KcMtesKgBN = new Uint8Array([-618, -139, 9323, 7631, 5853, -3638, 8982, 302, 8473, 5403, -2471, -6769, -4668, 118, -4960, 4204, -9940, -8215, -4465, 9195, 2936, 5748, -3158, -8340, 7760, 5861, -4531, -1665, 4483, 6336, -9257, -5936, 7723, -3636, 4099, 748, 1877, 5790, -1556, -2242, 8468, -4790, 9731, 5043, 2756, -8599, 5402, 9714, -9450, 6023, 3390, -6251, -2794, 5568, -9110, -4412, -1692, -4235, -5285, 3358, 890, -7326, 8443, 9406, 3300, 1832, 5877, 3543, -6051, 7466, 2238, -3155, -4167, -186, 8198, -6019, -9313, 3171, -1167, 3491, 817, -4939, 5866, 5639, 4135, 2350, -5944, -6037, -5487, 1844, 6040, 3263, 4010, 693, -7471, 7667, 5650, -3987, 2406, 1965, 7599, 7064, 2908, -453, 2257, -8585, 7695, -6639, 6634, -7389, 8249, -7111, 6725, -9458, 356, -3628, -9113, 1344, -9401, -2223, -9968, 7002, -341, 8233, 2826, 4979, -9106, -5377, -1030, 8734, -6813, 4602, 6312, -8605, 1737, 2964, 6841, -8480, -9638, 8515, 6796, -3810, -3070, -8560, 373, -5254, -2956, 577, -7855, -8094, 7966, -2940, -9717, -4297, 1093, 9180, 4556, -4745, -612, -9691, -5500, 3472, 3126, 4450, -2784, -5584, 9302, -755, 2315, -2333, 2035, 7684, -9043, -7882, -3884, -9782, 6835, -5367, 2318, -6443, 8779, -6858, -5059, 8906, -1309, 3242, 1509, 9274, -5501, -8057, -5462, -162, -8909, -5619, 5659, 110, -7755, 8028, 5824, 5599, -9660, -6229, -8330, 4373, 9329, 3830, 1, 7142, -1718, -2869, -1012, 7222, -1797, -5992, 7157, 9415, 3063, 2453, 9222, -6202, -5299, 1693, -2952, 2053, 2599, 238, 3958, 7793])
const YYMnbHHIiWMJCbqLRoH = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const CuBseGoCy = new Int8Array([6098, 2882, -7689, 9939, 6108, 5488, 2448, 1138, 4833, 1122, -6791, 227, 1442, -2315, 7603, -1658, 6426, 694, 1007, 943, 9824, -9249, -3587, 5270, -7264, 4143, 3633, -1922, -6059, -6461, -9086, 6959, 3581, -1036, -5429, 4170, 2638, 750, 1445, -7944, 7110, -7437, -1577, -4367, -9664, -2134, 6303, 271, -6273, -4333, -5014, 854, 7289, -4973, 7233, 1095, 6322, -3974, -7336, -9039, -7965, 4174, 6000, -820, -2877, 9570, -9306, -8807, -8898, -2512, -1503, -4424, -8966, 6159, 1406, 4942, 5139, -9895, -8711, -9639, -5445, 9104, 5512, 7778, -8100, 4925, 7913, 6193, -1629, 9189, -4051, 8778, 8645, 9680, -7099, 3258, 9597, -6347, -7702, 7891, 1960, -8260, 4938, 5226, -2903, -4193, 1123, 2960, 925, -9243, 8939, 841, -9129, -519, -2810, 46, -8504, -3877, 6447, -1095, 7917, 1909, 4631, -768, -2224, 2965, 3139, 3807, 8378, 8987, 4245, 5533, 4208, 731, 9337, 8791, -1974, -8658, -8709, -9966, -9009, 6698, -1761, 8686, -3583, 884, 1406, 7290, 2384, -4761, 1449, -6674, 8682, -8727, 1859, 8348, -5995, 9614, -6024, 9528, -2560, -6754, 8118, 8535, 2709, -9699, 4246, 4722, -7897, 5501, 6224, 8702, 4275, -844, -2229, 8524, 27, -8815, -9624, -9567, 8884, -6224, 8006, 2760, -8379, -8129, -3037, -9340, -2471, 6562, -5411, -1513, 8813, -6799, 7495, 8204, 6612, 411, -3086, 6537, 4861, -9668, -9518, 8766, 2871, -2812, -1783, 5107, 9586, -8991, -8046, 5420, -7578, 2791, -2381, -9885, -7069, -3641, 1012, -8085, -8704, -9705, -1409, 2834, -6372, -107, 4073, 2880, 242, -8274, 9324, 7073, 6367, -5109, 3775, -3154, -7102, 9845, -8179, -4201, -7786, -2124, 5399, 9944, 6261, -9591, -1951, 7356, -6204, 2788, -9032, -2021, -7240, -9383, -2895, 7615, 9755, 760, -8125, -9716, 891, -8333, 2208, 499, -5446, -193, 3614, -5631, -5474, 1466, -57, -4108, 2540, 5066, -6748, -7015, -232, 5195, 8646, 485, -5537, -9689, -2443, -1427, 2820, -3285, -3208, 665, -2140, -7368, -2795, 3014, -5575, -7291, 6, 6979, -5850, -4529, 3213, 5133, -3487, 9874, -8963, 7900, -4901, -3390, 3035, -80])
const heAcdZGJjZwupkrRTA = new Uint8Array([5838, 5545, -4301, -1612, 7268, -4304, 5010, -5241, 7155, 447, -5059, -7738, 381, 6947, -4753, 5651, -6183, 5112, -8565, -2572, -7509, -9229, -5874, -5418, -9782, -8199, -9030, -3422, 1778, -4344, -955, 2361, 9090, 1557, -1511, 6060, 5562, 706, 783, 1416, -868, 5175, -8934, 1385, -9570, 5206, 791, 5401, -5224, 4285, -8983, 8469, -669, -5670, -7240, 6074, 7785, -235, -1469, -6248, 3440, 2452, -9693, 8583, 4851, -9690, 7028, -8046, -3894, -2980, 3934, 6196, -3278, 3980, -7541, -6915, 9536, -3095, 3638, 9878, -1986, -2124, 7904, 4065, -1833, -2645, 7274, -6431, -2867, 8028, -8667, 1956, 112, -5660, 1089, -1015, 5994, -777, -6772, 7887, 4653, -668, 2679, 3322, 6772, 9567, -8482, 2857, 2457, -3883, -4891, 8109, 2083, -2734, -7228, 7710, 7013, -3985, -5850, 2978, -8724, -8955, 5501, -3717, -368, 4696, -6160, 6684, 4500, -4567, -1217, -480, 2085, 2220, 5113, -5830, -5085, -6712, 4109, -3150, 3231, -6194, 7949, 7653, -2644, -8313, 7195, 6655, -6618, -7882, 592, 3844, -3241, -8832, -3380, 2162, 8827, -9037, 2615, 6258, -1546, -733, 3226, 4138, -4789, 4717, -6344, 1206, -9027, -1504, 3013, 9968, 1933, -2442, -2595, 1522, 2063, 6307, -6312, 8103, 4398, 994, 8782, -5746, -8347, 7261, -2407, 900, -1951, 6042, 8240, -5841, -856, 6882, 7775, -9695, 9839, -6908, 247, 7035, 7626, -265, 1290, -6307, 2496, 6202, 6019, 3888, -4962, 3782, 2819, -40, 4394, 3067, 7757, 4217, 4630, -9071, 2555, -3977, -103, -3916, -2454, 2443, 7781, -5607, 8198, 9885, -9003, -8625, -5863, -9562, -405, 5703, 3441, -61, -8187, -7881, -2993, 4095, 3569, 3474, -9850, 9405, -3455, 5837, -4553, 1948, -3715, 5463, 3142, 7595, 8874, 6333, -6123, -7924, 2547, -9743, 8579, 5893, 2889, -2461, 9045, 4716, -8537, -7747, 436, 4859, -3828, -4338, 3917, -9155, 2838, -515, -9748, -33, -4747, -6735, -7028, -7861, -2189, 8649, 7099, -8487, -8025, -9432, -1844, -1822])
const AkchuLYzFxvPNDrDgzLZ = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const WYeppWlFqzQqUNlrHfTN = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const DizMAWVocESbuoLk = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const DkazAuhyEQObWJhfP = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const cvxpWYxCghYFBpll = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const aitVzsyHnU = new Float32Array([8912, 3390, 9192, -4843, -3949, 9265, 2028, 9400, 48, -4297, 879, 5738, -1404, 3183])
const BlsETkaHmF = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const NgjJGQuJSinCXA = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const WVKaKxgVzce = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const GVQaVNxIZwRtOaHQW = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const YNiXUHcBzpoE = new Float32Array([8548, 9195, -412, 5551, -2463, 8308, -8683, -6492, 728, 5838, -4423, -5450, -8496, -6954, 4036, 9976, -2831, -8787, 2573, -8848, 5249, -8840, -3061, -1709, 7399, 1432, 5615, 9462, -4585, 8269, 7767, 702, -6010, -1947, 39, -610, -2055, -6784, 7232, 3076, 9629, 769, -4547, 4140, 5535, -4452, -9158, -6168, 4308, 7160, -7453, -1600, -1929, -3953, 1730, -2899, -7330, 6349, 6117, 2349, 1975, 9539, 2151, -6290, -128, 7927, 5836, -9401, 1626, -6839, 394, 1599, 6678, -5821, 7967, 8423, -5087, -1909, -5540, -708, -1897, 7499, -4507, -9587, -9378, -5684, -7665, -5314, 6232, -5258, 1730, -8861, -8206, -2266, -1710, -3981, 8763, 2480, 8932, -5283, -1573, 4595, 7594, -4440, 4975, 5548, -6140, 7191, -2941, -7161, 7309, -1630, -7267, 5326, -1864, 1576, -2385, 6075, -1929, 9340, 368, -6239, -4768, 6256, -9508, 5781, -6371, -4910, 4407, -1734, 9083, -7289, -2502, -2319, -2653, -2028, 8641, -4348, -1908, 8415, 5929, -8240, -6392, 1522, -3963, 8421, 5255, 5737, 2568, -8473, 6173, 8564, -5021, -55, 5114, -3362, -5222, -3454, 4133, -9194, 5109, -5144, -9537, 9050, -3055, -9125, -824, 7562, 8999, -3522, 9926, 2745, -7837, 6378, -5587, 8606, 7956, 4275, -4868, 4244, -5345, -8985, 7736, 9603, 8454, -2985, -7043, -9290, -348, -8711, 6538, -7353, -3282, -5309, 7299, -7567, 8516, 5206, -8959, -9400, 8915, -378, -7812, -7728, -9464, -5845, -3451, 2445, -3390, -6221, 645, -5321, 8379, -6065, -6200, -4936, -7626, -7020, -4777, -4347, -7214, 1343, 9982, 3519, 3592, -8977, 1967, 1305, -4308, 8244, -1804, -912, -4498, 8092, 4127, 6780, -5061, 6588, -2189, 1940, -2660, 2204, 9226, 7027, -3001, -8808, -993, -5913, 3337, -6000, -788, -589, 6102, -6964, -2289, 5825, -858, -1851, 9336, 2256, -2021, -8753, 2757, 2756, -5067, -8291, -1439, 1674, -8171, -6314, 5826, -2689, 7970, 2568, 1028, -1783, 6002, -3473, 2833, -7454, -5118, -8479, 9950, -8987, -6878, -3207, 4220, 6276, 1812, -512, -3641, -3080, 7211, -261, 965, 3938, -9495, -8042, -859, 2029, 7723, -1905, -8233, 8617, 73, -7433, 3174, 1549, -5736, 9980, 1199, 7888, -919, 7556, -4335, -1493, 7248, 2485, 2461, 9457, -526, 9584, -6047, -3338, 3993, 1425, 3730, -9103, -9743, -723, 265, 5983, 4922, -2330, -9217, 5464, -5169, -7254, 2668, 531, 7832, -932, 5422, -8870, 6857, -2116, -7899, -4564, 8600, -113, 9278, -9860, -5865, 3725, -9354, 2023, -6381, -9194, -7699, 7995, 6670, -3934, 8513, 5398, -2199, 500, 4233, 4888, 6050, 7981, -3676, 7838, 7426, 9549, -3353, 1404, 8187, -7512, 9137, -5305, 2475, -3435, 1842, 389, 7624, 3806, 3151, -8643, -6718, -3739, -7891, 8020, -2917, -407, 4402, -8997, -351, 3268, -6244, 185, -599, -8399, -644, 4957, 2524, -3321, 6237, -7225, -2918, 7381, -6553, -7661, 8242, -8919, -6290, 5646, 5260, 1111, 6402, -8557, 7586, 6590, -594, 5083, 6438, 3160, -847, 842, 4949, -6788, -47, -9290, -7688, 5400, -171, -3275, 8941, -5574, -3243, 9421, -2150])
const VRzWtSRLkcU = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const dCILjImujatEEQStmvOi = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const gNvbrKTylqFol = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const SzBVpwDOHbihHSKS = new Uint8Array([2451, -9206, 4142, 5371, -9588, -3186, -1519, -3239, -3146, -6669, 7450, 3168, -3149, -9904, 9088, -9188, -2285, 7678, 1351, -4362, -3124, -792, -3516, 9621, 2330, -885, -8739, 2296, 8818, -228, -9632, 5386, 539, 1962, -5544, 1579, -7047, -4810, 7693, 7599, -2216, -4106, -6021, -4587, -3990, 6941, 9558, 6355, -2337, 3131, -8298, -2308, 7661, 8982, 9268, 3132, -7557, 9718, 6354, -6929, 3275, -6023, -4988, 1499, 7835, 9886, -426, -8478, -8370, 4581, -7995, 2481, -374, 5372, 4538, -8234, -5482, -5150, -7295, -156, -5744, 7279, 1155, 5059, 9040, -3464, 7113, -5362, -3462, 7927, -5686, 9366, 7290, 8404, -5457, 8358, -5837, -8153, -7154, -290, -3088, 8045, -8920, 5357, 5198, 3290, 4999, -1160, 6114, 4359, -5950, 5608, -2659, -485, 9370, 8232, -7250, 7361, 7985, -1483, 7388, -5679, -143, -7515, 4985, 894, -2247, -5494, 4317, -3984, 3610, -4460, -4014, -4695, 8398, -5617, 835, 6183, 9767, -1515, -422, 6509, 4646, -2845, -9792, -9568, 3531, -6567, -4407, 3005, -6717, 6269, -7450, 1895, 2293, 6883, -4827, 5736, -6556, -2126, -2232, -6306, 3176, -8172, -5314, -4338, -4668, 9124, 8828, 2014, -345, 542, 4109, -5818, -9267, 451, -669, 5660, 7915, 2485, -7858, -9426, 9601, 6430, -980, -8512, -6188, 5601, 1307, 4576, 9239, 5457, -8591, 4006, 9769, -1022, -6769, -8538, -7829, 1725, -4849, 8298, -193, -1384, 3097, 9980, 2116, -8424, -2741, 3910, -3532, 2613, -6306, 2450, 8246, -488, -4150, -7463, -915, -8338, -9344, 5162, 1336, 4712, 904, 1514, 2408, -8703, -4450, 8185, -210, -243, -8655, 8431, 4406, -7646, 8646, 5072, 9526, -5172, 8185, -4034, -9045, -1482, 5344, -530, -5173, -8533, 2417, -7394, 8515, -6250, 3867, 3966, 578, -7519, -9818, -4640, -4873, -4535, -1537, -2815, -9406, -4655, -9729, 9254, 4238, 202, -8540, 5537, 6992, -4107, -3108, -1202, -9038, 1834, 9312, 4803, -1527, 4960, -2552, 3390, 4459, -8690, 1181, 1760, -8218, -3438, 4199, -4961, 1075, -2808, 2353, -764, -2436, 8766, 6256, 4736, -4084, 2372, -2940, -5214, 9711, 8490, -8459, -6589, -8205, 1912, 3594, 5935, -9363, -4796, -6305, 622, 4344, -8376, 2765, 5389, 5651, -1487, -3653, 7710, -2587, -6244, -9936, -8113, 7673, -9579, -7158, -502, 5124, -9431, -9142, -6297, 182, -9024, -6439, 5266, -9486, -8795])
const HCBdRrqlsNPjreBeaPuc = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const dLgRAkhkZ = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const INwCVFrLCWkqWp = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const uuwjGFXJabnjTtbSi = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const HahIwaaaIYD = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const WVjjlhxALA = new Float32Array([1165, 9238, -980, -1821, 7367, 9446, -5277, -3775, 3460, 9073, -1527, 5040, 3447, -2276, -1626, -9831, -4518, -6999, -1498, 3136, -284, -3659, 407, -8153, 7897, 4174, 5386, -3322, 2176, -1705, -1394, 1055, -6523, -9710, -7192, 7084, -9234, -896, 8176, -5455, -4178, 1986, -8899, -8994, -8451, -5234, -8473, -552, -1257, 3695, -9040, 4268, -5954, -7912, -2476, -4197, 7387, 9150, 3034, -1903, -3095, 7377, 3604, -5678, 7188, 3496, -7574, -2936, -385, -160, -2131, 6934, 9594, -3150, 1845, 3373, -5387, 2693, 2871])
const PiNcugffoVoDV = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const LkSpBrYKObQUTBKDYGGc = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const Jyklft = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const hrQujkWOId = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const OteSezfavXSFzF = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const poiUDX = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const HqHsHCD = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');

async function main() {
    const sNCKJjF = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const qKwLubVOUtjvPxhpwYn = await sNCKJjF.requestDevice();
    const gGnSDUBpXee = qKwLubVOUtjvPxhpwYn.features
    const CRviAELlbcQRl = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "rYIYCMNsNTkTb"
    });
    const dfOnA = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "HOXimPQLvGizlTHwSE",
        size: {
            width: 2823,
            height: 2562,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const DWMXrJYQ = dfOnA.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg8unorm",
        label: "jetvFVaehdWmpMFutN"
    });
    const GHHlqwZDZAuA = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 2262,
        label: "uTPbwBCVCDAXjt",
        type: "occlusion"
    });
    const iJihCiiTa = CRviAELlbcQRl.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.2373303019607791,
                g: 0.9484666101180326,
                b: 0.45284479908977815,
                a: 1.1196363191774263
            },
            loadOp: "load",
            storeOp: "discard",
            view: DWMXrJYQ
        }],
        label: "ZlgqPuW",
        maxDrawCount: 4245177367,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    const luDemcOsfwnpOZOZ = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "dtjNQcyBRxIC",
        mappedAtCreation: false,
        size: 206668112,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC
    });
    iJihCiiTa.setVertexBuffer(0, luDemcOsfwnpOZOZ);
    const zFqCErSG = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "fragment",
        code: HqHsHCD
    });
    const hmFOU = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "vertex",
        code: poiUDX
    });
    const mEhncROzVfp = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "zvxufpPbF",
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
            module: hmFOU
        }
    });
    const VgVdM = qKwLubVOUtjvPxhpwYn.queue
    const zvGPokufrjNRwb = VgVdM.label
    const VnOrDBNHo = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "MmzRuLCDaQEUTt"
    });
    const moZeucYIMgArjC = VnOrDBNHo.beginComputePass({
        label: "ZmHmEekVrTNb"
    });
    const JJzFQHtSUBb = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "compute",
        code: OteSezfavXSFzF
    });
    const YkVeJuytB = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "BiClWjKNXXbATEFFa",
        layout: "auto"
    });
    const FWvDFjvieClQGGPaUBO = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "OwHMSz",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });
    VgVdM.writeBuffer(FWvDFjvieClQGGPaUBO, 0, hrQujkWOId);
    const zERHfcIF = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "YkVeJuytB.bindGroup",
        layout: YkVeJuytB.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    moZeucYIMgArjC.setBindGroup(0, zERHfcIF);
    const totqNYzTpTbE = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba16uint",
        label: "bMKjaJRCYjScscHOzvE",
        size: {
            width: 1397,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16uint"]
    });
    moZeucYIMgArjC.setBindGroup(0, zERHfcIF);
    moZeucYIMgArjC.setPipeline(YkVeJuytB);
    moZeucYIMgArjC.setBindGroup(0, zERHfcIF);
    moZeucYIMgArjC.dispatchWorkgroups(89, 159, 10);
    const qfGDlLdJ = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const iAQWu = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r16uint",
        label: "VSNWcnTrTcOANG",
        size: {
            width: 3853,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["r16uint"]
    });
    const upiuaBwROMAhXanKyU = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32uint",
        label: "uxQXouCRhKbp",
        size: {
            width: 2611,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg32uint"]
    });
    const qUrFDyDhzncpIjJTAy = qKwLubVOUtjvPxhpwYn.features
    const PNnkcmWTEYEbz = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "yrJfhygZ",
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
            module: hmFOU
        }
    });
    iJihCiiTa.setPipeline(PNnkcmWTEYEbz);
    iJihCiiTa.draw(10);
    const YnfNPB = VgVdM.label
    const ZbPrrZgYMQdtjC = qfGDlLdJ.features
    const GMIOnNolwj = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "HDuGyuezmJxbhkqW",
        size: {
            width: 63,
            height: 833,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const DrmuWURsGRMMZcVL = qKwLubVOUtjvPxhpwYn.limits
    iJihCiiTa.end();
    const kGRrbuqNYqIvl = CRviAELlbcQRl.finish();
    VgVdM.submit([kGRrbuqNYqIvl]);
    moZeucYIMgArjC.setBindGroup(0, zERHfcIF);
    const vMGGBYFJW = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "wggwQxyirB"
    });
    const nqGyXHu = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "UUKFi",
        size: {
            width: 344,
            height: 831,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const jHdhtotnWyrhYyQ = nqGyXHu.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba16float",
        label: "DnrGjZ"
    });
    const kQUhcrQMvcjHIIlzvRY = vMGGBYFJW.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7658477395954961,
                g: 0.7757826965341428,
                b: 0.009165489804166871,
                a: 1.4621971465627024
            },
            loadOp: "clear",
            storeOp: "discard",
            view: jHdhtotnWyrhYyQ,
            depthSlice: 0
        }],
        label: "eICFmBqlyzJFoR",
        maxDrawCount: 932945486,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    kQUhcrQMvcjHIIlzvRY.setVertexBuffer(0, FWvDFjvieClQGGPaUBO);
    kQUhcrQMvcjHIIlzvRY.end();
    const HZEDmdMuwHSAq = vMGGBYFJW.finish();
    VgVdM.submit([HZEDmdMuwHSAq]);
    const rEXUdQUFAVA = navigator.gpu.wgslLanguageFeatures
    const ofWgjSkFaMulERM = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "ybvdm",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: hmFOU
        }
    });
    const RRzpLUMVNmTTcoFmhY = qKwLubVOUtjvPxhpwYn.features
    moZeucYIMgArjC.end();
    const gxRfBSqIhJR = VnOrDBNHo.finish();
    const NKRtZbctqiOCQ = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "zMUKgO"
    });
    const WhsAOrNoF = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "BYWuviN",
        size: {
            width: 1243,
            height: 1551,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const trJzuwnZAAvaopbztH = WhsAOrNoF.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "bgra8unorm-srgb",
        label: "pObYKMVGAg"
    });
    const WLyuEShPQRHLODaLzT = NKRtZbctqiOCQ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8509889017656342,
                g: 1.9529617419464365,
                b: 0.337095204780532,
                a: 0.6851044840226228
            },
            loadOp: "load",
            storeOp: "store",
            view: trJzuwnZAAvaopbztH
        }],
        label: "DLMrKvpdKwNMqRd",
        maxDrawCount: 2280977664,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    const ESPSIQxTqkztyw = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN
            }]
        },
        label: "JncgIwNUhU",
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
            module: hmFOU
        }
    });
    WLyuEShPQRHLODaLzT.setPipeline(ESPSIQxTqkztyw);
    WLyuEShPQRHLODaLzT.draw(7);
    const aerZCMqIz = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "LCRWsEFtAlyzAwhIHlRG"
    });
    const ZhaaSZaR = aerZCMqIz.beginComputePass({
        label: "JoHtCjrwOXVBmNkFMrQ"
    });
    ZhaaSZaR.setBindGroup(0, zERHfcIF);
    const ukKXFN = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "UHsPePLQQm",
        layout: "auto"
    });
    const HxAvMCqqeZPRDXPxmZfI = mEhncROzVfp.label
    const KsveyWA = sNCKJjF.isFallbackAdapter
    const EuqNrRUlWialUGNkp = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "WCMTmAoEChyvIrmre",
        layout: "auto"
    });
    WLyuEShPQRHLODaLzT.draw(2);
    const FNkTLwJSgnqVjTldJhtX = PNnkcmWTEYEbz.label
    const qnUAfCrHdubYTM = sNCKJjF.info
    const sibfgaNniyEg = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "vOUon"
    });
    const XQeFHKrPppKPksftls = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "xDqHJUOAiKTkUdsrCh",
        size: {
            width: 678,
            height: 100,
            depthOrArrayLayers: 27
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const lMfOx = XQeFHKrPppKPksftls.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "MffKPgcUCGnTO"
    });
    const dWmnJRkCRFvTjntm = sibfgaNniyEg.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.369427094206243,
                g: 1.9590263141375934,
                b: 1.5872957640981016,
                a: 0.722864941571453
            },
            loadOp: "load",
            storeOp: "store",
            view: lMfOx,
            depthSlice: 9
        }],
        label: "ZNVIVWE",
        maxDrawCount: 4275718257,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    const TzHfAnr = sNCKJjF.isFallbackAdapter
    WLyuEShPQRHLODaLzT.draw(2);
    const HDOzdKnDGAuHljZ = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "QBeDLWoHHuC"
    });
    const EaIoXVFcpmM = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "bYnwJTjZewgaXt",
        size: {
            width: 666,
            height: 2515,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const ievEy = EaIoXVFcpmM.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm",
        label: "aMzyDZELTCzjjfpBFcFo"
    });
    const pZvvEjNYJLgqLJKzBSYV = HDOzdKnDGAuHljZ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.30543971673581893,
                g: 1.3904552636711882,
                b: 1.5842215091771876,
                a: 0.6620594545710992
            },
            loadOp: "clear",
            storeOp: "store",
            view: ievEy
        }],
        label: "yGBZvqLSMjJlr",
        maxDrawCount: 2925251639,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    const ZoWNrA = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "DLvwauuB"
    });
    const FupQgMZHXoyW = ZoWNrA.beginComputePass({
        label: "OHrgmDKqmBvlIoU"
    });
    const txEeMtofBU = sNCKJjF.features
    const yONQrvnrnVnEgY = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "DeMVHiFCuTYBdAtPJ",
        size: {
            width: 389,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const KSSYduZJNGomD = GHHlqwZDZAuA.type
    const dNbFmkWvAjuvcDi = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    FupQgMZHXoyW.end();
    const QYfJAvJrtqgwCNq = qfGDlLdJ.limits
    const WwvFiSBshc = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 1705,
        label: "iMdrTGJgQVj",
        type: "occlusion"
    });
    const noDctakiJxKcVrkqf = await navigator.gpu.getPreferredCanvasFormat();
    VgVdM.writeBuffer(FWvDFjvieClQGGPaUBO, 0, Jyklft);
    const wvTdUiqKMT = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "YkVeJuytB.bindGroup",
        layout: YkVeJuytB.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    const vghMxdBPAP = WwvFiSBshc.type
    ZhaaSZaR.end();
    const FMrNgVuWqClsUOIOnyiy = qfGDlLdJ.isFallbackAdapter
    const UwkPYEyQJbM = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "fragment",
        code: LkSpBrYKObQUTBKDYGGc
    });
    const guAVTJHfnjQOzyg = VgVdM.label
    const OYWuxUa = qfGDlLdJ.features
    const aILMDqlxYAmSRJLouQ = mEhncROzVfp.label
    const QvVOOIanrcpXLuoNQO = ZoWNrA.finish();
    const IzjijQLMwZwYx = navigator.gpu.wgslLanguageFeatures
    const bRPOcNuXOrCfzwaB = qKwLubVOUtjvPxhpwYn.features
    const SFyiJUqXsXjFDLdVdPFy = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "TdMQQaq",
        mappedAtCreation: false,
        size: 123794884,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE
    });
    WLyuEShPQRHLODaLzT.end();
    const OEiQDVYqvbyQfFEF = NKRtZbctqiOCQ.finish();
    const hIHzIbyLjbSxw = navigator.gpu.wgslLanguageFeatures
    const RvukwjNPYN = aerZCMqIz.beginComputePass({
        label: "OaVFgJbkWR"
    });
    RvukwjNPYN.setBindGroup(0, wvTdUiqKMT);
    dWmnJRkCRFvTjntm.setPipeline(ofWgjSkFaMulERM);
    const eEkIfAfeFvtTRZBGEL = ESPSIQxTqkztyw.label
    RvukwjNPYN.setBindGroup(0, wvTdUiqKMT);
    const sSvRIPDtikjg = qKwLubVOUtjvPxhpwYn.queue
    const uLLxjSQV = GHHlqwZDZAuA.label
    const wjAbAfxLXJ = await navigator.gpu.getPreferredCanvasFormat();
    const chtnZkCPYNSAmHdx = navigator.gpu.wgslLanguageFeatures
    const pzJVEzRHmxjkgYwLuoT = sNCKJjF.info
    const nEVDqQLl = sSvRIPDtikjg.label
    const htkomwVCVyHiezIGIwBZ = pZvvEjNYJLgqLJKzBSYV.label
    dWmnJRkCRFvTjntm.end();
    const wYmzFFaSHYmjMSLq = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "mKlDylurrXfoPECumgE",
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
            module: hmFOU
        }
    });
    pZvvEjNYJLgqLJKzBSYV.setPipeline(wYmzFFaSHYmjMSLq);
    pZvvEjNYJLgqLJKzBSYV.draw(2);
    RvukwjNPYN.setBindGroup(0, wvTdUiqKMT);
    RvukwjNPYN.setPipeline(EuqNrRUlWialUGNkp);
    pZvvEjNYJLgqLJKzBSYV.draw(1);
    sSvRIPDtikjg.writeBuffer(FWvDFjvieClQGGPaUBO, 0, PiNcugffoVoDV);
    const ozTrhgcOKTjqdwCULrlE = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "EuqNrRUlWialUGNkp.bindGroup",
        layout: EuqNrRUlWialUGNkp.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    RvukwjNPYN.setBindGroup(0, ozTrhgcOKTjqdwCULrlE);
    RvukwjNPYN.setPipeline(YkVeJuytB);
    pZvvEjNYJLgqLJKzBSYV.end();
    const yMXLDPdUwzsy = GHHlqwZDZAuA.type
    const mzmaR = qKwLubVOUtjvPxhpwYn.features
    const KnndyjEpAkQfdOsS = navigator.gpu.wgslLanguageFeatures
    const ufOgEPkHYTmQVHkfze = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "tJeYUQJa",
        size: {
            width: 373,
            height: 204,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const AobkJuqfLFFaySqYCva = ufOgEPkHYTmQVHkfze.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GApIointyYLJkI"
    });
    const RJcreUzr = HDOzdKnDGAuHljZ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.25680365524149584,
                g: 1.7205340307165773,
                b: 0.056745021770153725,
                a: 1.694032633698429
            },
            loadOp: "clear",
            storeOp: "discard",
            view: AobkJuqfLFFaySqYCva,
            depthSlice: 2
        }],
        label: "mUZzesbPXP",
        maxDrawCount: 2072127873,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    RJcreUzr.setPipeline(ofWgjSkFaMulERM);
    RJcreUzr.draw(3);
    const byUcssJ = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "QSNPSydnPxGQyY",
        size: {
            width: 2338,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba32sint"]
    });
    RJcreUzr.draw(9);
    const bbyZtVok = qKwLubVOUtjvPxhpwYn.queue
    const vmsdgzA = GHHlqwZDZAuA.count
    RJcreUzr.draw(1);
    const qSBPuncImFbM = GHHlqwZDZAuA.count
    const tOoEnkYOe = dNbFmkWvAjuvcDi.isFallbackAdapter
    const ZxrayMloNhuTXNTRwGms = GHHlqwZDZAuA.type
    const SxTOBdZNNYkK = qfGDlLdJ.isFallbackAdapter
    const zeKiKDurYEhvLrF = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "YybIGkbJ",
        size: {
            width: 130,
            height: 2730,
            depthOrArrayLayers: 57
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const IdWjjUoPQjxYbOTG = zeKiKDurYEhvLrF.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "r16float",
        label: "ERsqcOgdrtqsDkG"
    });
    const gWfFtuBLI = sibfgaNniyEg.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4167318006479006,
                g: 0.7211599591455169,
                b: 0.918441761665798,
                a: 0.9595286742196902
            },
            loadOp: "clear",
            storeOp: "discard",
            view: IdWjjUoPQjxYbOTG
        }],
        label: "qSBmy",
        maxDrawCount: 220596221,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    const QhOLXamPvs = WwvFiSBshc.type
    const kxDTrjfhceibuCUBsg = ukKXFN.label
    const FdsLtqihvfxsBsZTud = navigator.gpu.wgslLanguageFeatures
    const KMcNyKpiIgHnqr = sSvRIPDtikjg.label
    const MBZhYCbqMOXT = trJzuwnZAAvaopbztH.label
    const WgYtFfBauqSThx = aerZCMqIz.label
    const iggHDuBhuA = gWfFtuBLI.label
    gWfFtuBLI.end();
    const whJoNB = await navigator.gpu.getPreferredCanvasFormat();
    const PZsuQlAWGLITPwnqAvTK = qfGDlLdJ.isFallbackAdapter
    const eciaatZOcp = ukKXFN.getBindGroupLayout(0);
    const IHlYd = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "nsjkvUiyDutnbkeDD",
        layout: "auto"
    });
    sSvRIPDtikjg.submit([gxRfBSqIhJR]);
    RvukwjNPYN.setBindGroup(0, zERHfcIF);
    RvukwjNPYN.setPipeline(YkVeJuytB);
    RvukwjNPYN.setBindGroup(0, zERHfcIF);
    RvukwjNPYN.dispatchWorkgroups(63, 106, 23);
    const IfiMJQDqENQXpZ = qfGDlLdJ.features
    RvukwjNPYN.setBindGroup(0, wvTdUiqKMT);
    RvukwjNPYN.setPipeline(EuqNrRUlWialUGNkp);
    const lWrTvyEAyomJk = qKwLubVOUtjvPxhpwYn.queue
    const qyPUAtnm = qKwLubVOUtjvPxhpwYn.limits
    const CxWZER = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "rqXsiNWgqEudvjU"
    });
    const qYOWiDPVgMTeqsrSk = qfGDlLdJ.isFallbackAdapter
    RJcreUzr.setPipeline(ofWgjSkFaMulERM);
    lWrTvyEAyomJk.writeBuffer(FWvDFjvieClQGGPaUBO, 24, WVjjlhxALA);
    RvukwjNPYN.setBindGroup(0, ozTrhgcOKTjqdwCULrlE);
    RvukwjNPYN.setPipeline(EuqNrRUlWialUGNkp);
    RvukwjNPYN.setBindGroup(0, ozTrhgcOKTjqdwCULrlE);
    RvukwjNPYN.dispatchWorkgroups(103, 151, 36);
    RJcreUzr.end();
    RvukwjNPYN.setBindGroup(0, ozTrhgcOKTjqdwCULrlE);
    RvukwjNPYN.setPipeline(IHlYd);
    RvukwjNPYN.end();
    const OLWMovibugFvFZbUy = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GyEHevU",
        size: {
            width: 734,
            height: 330,
            depthOrArrayLayers: 49
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const WMnuFcUcisQIrtY = OLWMovibugFvFZbUy.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg8unorm",
        label: "ZrgUXNOXJQDqZgYmNi"
    });
    const nCbWGclMTjpyCPeWH = CxWZER.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3803136702304295,
                g: 1.2321503845666846,
                b: 1.9089073835981907,
                a: 0.3028077078391964
            },
            loadOp: "clear",
            storeOp: "discard",
            view: WMnuFcUcisQIrtY,
            depthSlice: 1
        }],
        label: "snuVWZTWOsnYqGyQLn",
        maxDrawCount: 3203718422,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    nCbWGclMTjpyCPeWH.setVertexBuffer(0, luDemcOsfwnpOZOZ);
    const wnrmbzy = IHlYd.getBindGroupLayout(0);
    const GtWGkPnJGKaUJNi = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "WRXJbQk"
    });
    const KepWEOJ = GHHlqwZDZAuA.count
    const HOOwSJuyDL = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "ygRtgqJPFZpVEOtxxUt",
        size: {
            width: 2382,
            height: 2810,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const KAcRWUCTlHqvrS = HOOwSJuyDL.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "CCUTtJCWMbT"
    });
    const ldmpNEqQcWxItDIWh = sibfgaNniyEg.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.641121825596311,
                g: 1.5238879733317094,
                b: 1.706496017667768,
                a: 0.01182228799254581
            },
            loadOp: "clear",
            storeOp: "store",
            view: KAcRWUCTlHqvrS
        }],
        label: "blrtrapTCTaRoEL",
        maxDrawCount: 1760053401,
        occlusionQuerySet: WwvFiSBshc
    });
    const GiIggUTcUtXVzNvYR = GHHlqwZDZAuA.label
    const OOZRwKQQvurZBoH = aerZCMqIz.beginComputePass({
        label: "ePjigj"
    });
    const nLsWldnnNPSPmpl = navigator.gpu.wgslLanguageFeatures
    const lHRWhTZqmaKlqhxi = ukKXFN.getBindGroupLayout(0);
    const QSRjWDeBoMbLRtfLk = GHHlqwZDZAuA.label
    OOZRwKQQvurZBoH.setPipeline(EuqNrRUlWialUGNkp);
    OOZRwKQQvurZBoH.setBindGroup(0, ozTrhgcOKTjqdwCULrlE);
    OOZRwKQQvurZBoH.dispatchWorkgroups(13, 205, 56);
    const xTkxnFNfoS = EuqNrRUlWialUGNkp.getBindGroupLayout(0);
    const TpFgqaeGOQwcVDvl = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba32uint",
        label: "XKkdeLCexOVKAxkBlbJr",
        size: {
            width: 3942,
            height: 2381,
            depthOrArrayLayers: 17
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba32uint"]
    });
    const yfxIEwlYjVAMSbQK = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "fragment",
        code: HahIwaaaIYD
    });
    const LNVWNXNS = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "vertex",
        code: uuwjGFXJabnjTtbSi
    });
    const vmcXsfojxRgR = ofWgjSkFaMulERM.label
    const lzgxCLKP = YkVeJuytB.label
    const qAaGJjxBMMbiNprSuQZA = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "UVIkwTWTakyeiWLmrDiO",
        layout: "auto"
    });
    nCbWGclMTjpyCPeWH.setPipeline(PNnkcmWTEYEbz);
    ldmpNEqQcWxItDIWh.end();
    const MoOvFjhvfY = EuqNrRUlWialUGNkp.getBindGroupLayout(0);
    const OIBpOZOYuiobpK = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "vertex",
        code: INwCVFrLCWkqWp
    });
    const FQwmJdPoDvrnFQBVEgH = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "UJHkVxnwNjBxYzYFt",
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
            module: hmFOU
        }
    });
    const OxEbWsAL = nCbWGclMTjpyCPeWH.label
    const GSULNlKGb = dNbFmkWvAjuvcDi.features
    const pNxOZQZt = aerZCMqIz.label
    const hIxVhbpXFIcnie = GHHlqwZDZAuA.type
    const EiEEerMbkEyjWJlogT = mEhncROzVfp.label
    const VDbcOGqPOvdLOi = WwvFiSBshc.label
    const EAKuCecCZXH = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8sint",
        label: "VlmXXwLPVxkLfwlFGUO",
        size: {
            width: 127,
            height: 435,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8sint"]
    });
    const VeXvEFEtKhcN = OOZRwKQQvurZBoH.label
    const kEgaWfRLouuF = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: UwkPYEyQJbM,
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
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "TeFOQh",
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
            module: hmFOU
        }
    });
    const xFyuBhCEhYIgw = await navigator.gpu.getPreferredCanvasFormat();
    const VaRogiFtXXU = qKwLubVOUtjvPxhpwYn.features
    lWrTvyEAyomJk.submit([OEiQDVYqvbyQfFEF]);
    const QZmpAZuGSLTKZGkLb = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "aQKVDV",
        mappedAtCreation: false,
        size: 31490084,
        usage: GPUBufferUsage.INDIRECT
    });
    const lFkqCkkKKwU = PNnkcmWTEYEbz.label
    const tQhFtFlLJfRkAcUfcu = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "OAPasBftLYAlV"
    });
    const qnFGPrJOtCTC = kEgaWfRLouuF.label
    OOZRwKQQvurZBoH.setBindGroup(0, ozTrhgcOKTjqdwCULrlE);
    OOZRwKQQvurZBoH.setPipeline(IHlYd);
    lWrTvyEAyomJk.writeBuffer(FWvDFjvieClQGGPaUBO, 0, dLgRAkhkZ);
    const zXgFtXoxd = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "IHlYd.bindGroup",
        layout: IHlYd.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    OOZRwKQQvurZBoH.setBindGroup(0, zXgFtXoxd);
    OOZRwKQQvurZBoH.dispatchWorkgroups(89, 27, 32);
    const YDZAWUCxPBPtrtXFssyb = await navigator.gpu.getPreferredCanvasFormat();
    OOZRwKQQvurZBoH.setBindGroup(0, zXgFtXoxd);
    const aGjcwzptjEn = qAaGJjxBMMbiNprSuQZA.label
    const JLwIALlhDzSK = nCbWGclMTjpyCPeWH.label
    const fChLmHONHQCMfQZdJrXG = nqGyXHu.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 7,
        baseMipLevel: 1,
        format: "rgba16float",
        label: "ViLCAC"
    });
    const hJizLKMBJVsKZOIAio = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "AkndLdnMI",
        layout: "auto"
    });
    const wJFouaiE = AobkJuqfLFFaySqYCva.label
    const aYQZjKgKCIIxN = WMnuFcUcisQIrtY.label
    const uoUSgmBXRggKBaYZ = qKwLubVOUtjvPxhpwYn.queue
    bbyZtVok.submit([QvVOOIanrcpXLuoNQO]);
    const KqjTIYarjieBmTx = qKwLubVOUtjvPxhpwYn.label
    OOZRwKQQvurZBoH.setBindGroup(0, zXgFtXoxd);
    OOZRwKQQvurZBoH.setPipeline(qAaGJjxBMMbiNprSuQZA);
    const HTXdYOzmDUsMRTUKy = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 105,
        label: "djCVpCVGh",
        type: "occlusion"
    });
    const LbqvYHQGwLeNiwvQhP = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "tKhcGXgXcQP",
        mappedAtCreation: false,
        size: 150939356,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    const KnuhHUyrZB = WwvFiSBshc.count
    const qMjLcQysFY = IHlYd.label
    const ETZENMVcBkQwJimNxH = OOZRwKQQvurZBoH.label
    const pwWlujyNmBmEvz = qfGDlLdJ.isFallbackAdapter
    const HLrhRowFYP = sibfgaNniyEg.finish();
    sSvRIPDtikjg.submit([HLrhRowFYP]);
    const DpVcHGwTabgNNl = dNbFmkWvAjuvcDi.features
    const oKuQCy = dNbFmkWvAjuvcDi.info
    const EMPBCwVWi = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: UwkPYEyQJbM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "constant"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "laVnFtppxe",
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
            module: LNVWNXNS
        }
    });
    const wCeKvzwoFJoQlZeNkL = nCbWGclMTjpyCPeWH.label
    const yWXNgsdR = aerZCMqIz.label
    const bpsgwzrTpdIeTqxSsF = await navigator.gpu.getPreferredCanvasFormat();
    const LlBEzZMLBMI = dNbFmkWvAjuvcDi.isFallbackAdapter
    const ZJTwhdlpyW = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "YAJUrYmktIC",
        layout: "auto"
    });
    const fDFcu = qKwLubVOUtjvPxhpwYn.label
    const WYiMEy = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "WYYCSeEirpqKR",
        size: {
            width: 383,
            height: 100,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const cXuNlDNKwNZJeD = WYiMEy.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r16float",
        label: "DuyLJmWIFqyjKAy"
    });
    const LbycYwDEhaR = tQhFtFlLJfRkAcUfcu.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.474461896386252,
                g: 0.744168785483827,
                b: 1.6387608694232,
                a: 0.7774419543326112
            },
            loadOp: "clear",
            storeOp: "discard",
            view: cXuNlDNKwNZJeD,
            depthSlice: 1
        }],
        label: "hpgPIfQmTfeVtVPa",
        maxDrawCount: 742741492,
        occlusionQuerySet: GHHlqwZDZAuA
    });
    const SRAHIvr = qAaGJjxBMMbiNprSuQZA.getBindGroupLayout(0);
    const lBOQZXKWYRX = navigator.gpu.wgslLanguageFeatures
    const rsiAwhAoPN = qfGDlLdJ.isFallbackAdapter
    const nhwoeB = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "BMqiQn",
        mappedAtCreation: false,
        size: 229741496,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const vxorL = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "vertex",
        code: HCBdRrqlsNPjreBeaPuc
    });
    const xCUOxg = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "ihJnyLYn",
        mappedAtCreation: true,
        size: 47732780,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX
    });
    const GNpKYvv = dNbFmkWvAjuvcDi.info
    const GWCDVBAJAHYYHTOaxaL = WwvFiSBshc.type
    const DqOLAJpWEuInZSlTi = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "ntTrTJL",
        size: {
            width: 241,
            height: 31,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const nsnZPOucJyISCGbhfFs = DqOLAJpWEuInZSlTi.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm-srgb",
        label: "NgIjtyeDYlFSFPHDo"
    });
    const flILiIYjHoHvLSyngOjB = HDOzdKnDGAuHljZ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0346658934149853,
                g: 0.13425158717338892,
                b: 0.5989346038380567,
                a: 1.6213055657909243
            },
            loadOp: "load",
            storeOp: "store",
            view: nsnZPOucJyISCGbhfFs,
            depthSlice: 2
        }],
        label: "apYRMPGnfawiNdoMiC",
        maxDrawCount: 282879466,
        occlusionQuerySet: WwvFiSBshc
    });
    const FEmpCvetHIU = EuqNrRUlWialUGNkp.getBindGroupLayout(0);
    VgVdM.writeBuffer(SFyiJUqXsXjFDLdVdPFy, 121207220, SzBVpwDOHbihHSKS);
    const RMLzffMsWyiPDng = LbycYwDEhaR.label
    const nLQdTtt = ievEy.label
    const vxnDRTGCRIqlZEq = nCbWGclMTjpyCPeWH.label
    const VoGmJLwjxhGNYwSTWiym = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "zero"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "qzUnrqDkemKrVr",
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
            module: LNVWNXNS
        }
    });
    const QNnINtuanpZjUI = ZJTwhdlpyW.label
    const JaXWgOKZBNksCmQNiwsA = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "yhZzdfqJNJPkQEIgbRQX",
        mappedAtCreation: false,
        size: 39838648,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE
    });
    lWrTvyEAyomJk.writeBuffer(FWvDFjvieClQGGPaUBO, 0, gNvbrKTylqFol);
    const efPgzyeExbOjmDnT = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "qAaGJjxBMMbiNprSuQZA.bindGroup",
        layout: qAaGJjxBMMbiNprSuQZA.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    OOZRwKQQvurZBoH.setBindGroup(0, efPgzyeExbOjmDnT);
    OOZRwKQQvurZBoH.setPipeline(hJizLKMBJVsKZOIAio);
    sSvRIPDtikjg.writeBuffer(FWvDFjvieClQGGPaUBO, 0, dCILjImujatEEQStmvOi);
    const ytvCjKSIRVfadAsxhKXV = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "hJizLKMBJVsKZOIAio.bindGroup",
        layout: hJizLKMBJVsKZOIAio.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    OOZRwKQQvurZBoH.setBindGroup(0, ytvCjKSIRVfadAsxhKXV);
    OOZRwKQQvurZBoH.dispatchWorkgroups(67, 219, 28);
    OOZRwKQQvurZBoH.setBindGroup(0, ytvCjKSIRVfadAsxhKXV);
    const SaNIOASeA = qfGDlLdJ.isFallbackAdapter
    const UcGsbdKVzbv = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "blHobt",
        size: {
            width: 2231,
            height: 3141,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba32sint"]
    });
    const ZufSEL = qKwLubVOUtjvPxhpwYn.features
    const lHLTQDaToEC = qKwLubVOUtjvPxhpwYn.queue
    const zxpBzllBQI = qKwLubVOUtjvPxhpwYn.queue
    const PFHDNd = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "SOvkVrqqCdIV",
        layout: "auto"
    });
    const MaGpyVDRwMTYAww = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus",
        label: "PcZaNl",
        size: {
            width: 3529,
            height: 1551,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["depth24plus"]
    });
    const jJZKJQBjw = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "fragment",
        code: VRzWtSRLkcU
    });
    const Woywy = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const gwQNxOoQlEvQrxHhVvU = HDOzdKnDGAuHljZ.label
    const ldRHloV = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: UwkPYEyQJbM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "constant"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "BsoOLmkKDrZ",
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
            module: hmFOU
        }
    });
    LbycYwDEhaR.setPipeline(ldRHloV);
    LbycYwDEhaR.draw(2);
    const mlOFaoIclbkGra = VgVdM.label
    const sLIxKNsCpKUPuL = aerZCMqIz.label
    OOZRwKQQvurZBoH.end();
    nCbWGclMTjpyCPeWH.setPipeline(kEgaWfRLouuF);
    const GbePWNRsMxAGFbsnkDL = EuqNrRUlWialUGNkp.label
    const aNAiVkGPSTXxjZNDwBba = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "xoTMuI"
    });
    const MkeMm = aerZCMqIz.beginComputePass({
        label: "oOeAnCahekaujCPKhaE"
    });
    MkeMm.setPipeline(hJizLKMBJVsKZOIAio);
    const JyVFXMBawRFtc = aNAiVkGPSTXxjZNDwBba.beginComputePass({
        label: "TonDEXmQH"
    });
    bbyZtVok.writeBuffer(SFyiJUqXsXjFDLdVdPFy, 64438980, YNiXUHcBzpoE);
    const hjhKEWORDayeeGhvgA = WwvFiSBshc.count
    MkeMm.setPipeline(qAaGJjxBMMbiNprSuQZA);
    MkeMm.setBindGroup(0, efPgzyeExbOjmDnT);
    JyVFXMBawRFtc.dispatchWorkgroups(168, 105, 25);
    const OHBXTnfEnSpfpHWoW = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "GdQSEglptpS"
    });
    MkeMm.end();
    const PRtTZckMQWhXeyVg = aerZCMqIz.finish();
    const IljJcIuGfUdmSITXPU = KAcRWUCTlHqvrS.label
    LbycYwDEhaR.setVertexBuffer(0, FWvDFjvieClQGGPaUBO);
    const jOENmuNyBqFDMbyeQ = GHHlqwZDZAuA.type
    const fwsFhxnph = HTXdYOzmDUsMRTUKy.count
    const CBYHi = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const abuvPRDablMZ = qKwLubVOUtjvPxhpwYn.limits
    const yHDGb = qKwLubVOUtjvPxhpwYn.label
    const CMHMVPqXj = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "compute",
        code: GVQaVNxIZwRtOaHQW
    });
    nCbWGclMTjpyCPeWH.draw(7);
    const RcbmLJUcDZEsvrMBYl = kEgaWfRLouuF.label
    const upuEKVIlMrRKbyBCLP = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "uIDdofzfcUL",
        layout: "auto"
    });
    const UoEDjMp = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "qbJLNMwAoo",
        size: {
            width: 174,
            height: 271,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const euMIHKoOVfKPPfIlNvu = UoEDjMp.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "rHugn"
    });
    const RzpwYCAeZ = OHBXTnfEnSpfpHWoW.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1613967063118635,
                g: 1.721022107316579,
                b: 1.2075744510316044,
                a: 0.069751648056813
            },
            loadOp: "clear",
            storeOp: "discard",
            view: euMIHKoOVfKPPfIlNvu
        }],
        label: "fSvRu",
        maxDrawCount: 135036102,
        occlusionQuerySet: HTXdYOzmDUsMRTUKy
    });
    const ipVcdb = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16sint",
        label: "nbGQUnQNH",
        size: {
            width: 870,
            height: 3972,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16sint"]
    });
    const adGGYDJMepccn = KAcRWUCTlHqvrS.label
    const pXcRGD = HDOzdKnDGAuHljZ.label
    const pKudQrVmLKrEnnCUmdy = OHBXTnfEnSpfpHWoW.label
    const nZQWKwETOfsKD = ukKXFN.getBindGroupLayout(0);
    const HWuHdHw = zeKiKDurYEhvLrF.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 20,
        baseArrayLayer: 17,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "r16float",
        label: "GSHMHEZBjiJW"
    });
    const ERiJUsfLjsJbBvaUEXl = WwvFiSBshc.count
    const BWGLB = qKwLubVOUtjvPxhpwYn.features
    flILiIYjHoHvLSyngOjB.end();
    const BjIxiPt = HDOzdKnDGAuHljZ.finish();
    const KZKyQuwkJpJQalkT = sNCKJjF.features
    JyVFXMBawRFtc.setBindGroup(0, zERHfcIF);
    JyVFXMBawRFtc.end();
    const hkAonnoYbw = aNAiVkGPSTXxjZNDwBba.finish();
    const bdWQIKhEyqw = OHBXTnfEnSpfpHWoW.label
    const kXaebqhPZSDbQgQENKE = qKwLubVOUtjvPxhpwYn.features
    const YlZcDGsPixCOtLQ = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "vertex",
        code: WVKaKxgVzce
    });
    const GbVBd = LbycYwDEhaR.label
    const bNRYLZLh = qKwLubVOUtjvPxhpwYn.features
    nCbWGclMTjpyCPeWH.draw(2);
    LbycYwDEhaR.end();
    const fRxChX = GtWGkPnJGKaUJNi.beginComputePass({
        label: "SaFqRFriTveNdCARb"
    });
    const UFVqzyKXbfB = fRxChX.label
    const WupkmqJgEB = RzpwYCAeZ.label
    const nxCOliluaMcrboGuY = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: yfxIEwlYjVAMSbQK,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "dst"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
            }]
        },
        label: "YtBGgYOijcVCfG",
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
            module: vxorL
        }
    });
    RzpwYCAeZ.setPipeline(nxCOliluaMcrboGuY);
    RzpwYCAeZ.draw(8);
    const LSjkcYAxkcgX = nCbWGclMTjpyCPeWH.label
    const lrXHDTspxfOlATTrq = dNbFmkWvAjuvcDi.isFallbackAdapter
    const MYWtKWACryMVnAG = nCbWGclMTjpyCPeWH.label
    const aAFVGA = CxWZER.label
    fRxChX.setPipeline(YkVeJuytB);
    const iMrFBYHUyeMiJD = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "mVPobrJwqRMb",
        layout: "auto"
    });
    const eaAcQmpccpb = await navigator.gpu.getPreferredCanvasFormat();
    RzpwYCAeZ.setVertexBuffer(0, SFyiJUqXsXjFDLdVdPFy);
    fRxChX.end();
    const cMBntlQUtXmjm = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 75,
        label: "LiELhcGJW",
        type: "occlusion"
    });
    const ZaPwPyiBPJWWkdY = bbyZtVok.label
    RzpwYCAeZ.end();
    const krnIfU = qfGDlLdJ.info
    const ZQxbZ = qKwLubVOUtjvPxhpwYn.label
    const hJNKVHdd = GtWGkPnJGKaUJNi.beginComputePass({
        label: "gdotQPnlxqZXcqlr"
    });
    hJNKVHdd.setPipeline(qAaGJjxBMMbiNprSuQZA);
    const qkpLEtGQK = hJNKVHdd.label
    nCbWGclMTjpyCPeWH.end();
    const ziLpkgFLreUAuNsG = hJNKVHdd.label
    const nZqSxiLnPMn = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "nhSDtddGEmDVJ",
        size: {
            width: 956,
            height: 2258,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const DkSKjsMiRqARuBu = nZqSxiLnPMn.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "FROiRMjQwVcDEBjXj"
    });
    const fWvNvc = CxWZER.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.48760561814930226,
                g: 1.585464480777138,
                b: 0.4799163268811868,
                a: 1.6232583572297945
            },
            loadOp: "load",
            storeOp: "store",
            view: DkSKjsMiRqARuBu
        }],
        label: "TAUGReQ",
        maxDrawCount: 1830551627,
        occlusionQuerySet: WwvFiSBshc
    });
    const XOdUzrrANQwmbbNxpcy = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: jJZKJQBjw,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "PlCUmdtJEKfcJYDJuhY",
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
            module: vxorL
        }
    });
    fWvNvc.setPipeline(XOdUzrrANQwmbbNxpcy);
    const FkneRyWc = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const kleHOaVslEVfCqdnnpk = OHBXTnfEnSpfpHWoW.label
    const ZkEgGTCTYsSLINjRvokk = WwvFiSBshc.count
    const LJejWTZXtAAh = WwvFiSBshc.count
    const hmpHONAjbTGjFIqI = cMBntlQUtXmjm.type
    const GPeph = sNCKJjF.isFallbackAdapter
    const BvRUolbIFAyPpuij = qfGDlLdJ.limits
    const UwLxQHWZxYyVgxnM = qfGDlLdJ.limits
    const UlhTjSP = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 3896,
        label: "mEsQupK",
        type: "occlusion"
    });
    const cmZNKAQSfaRkTUgaCvQC = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "IZLUDqGk",
        size: {
            width: 748,
            height: 448,
            depthOrArrayLayers: 56
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const eHfiEQjcXVfbYHv = cmZNKAQSfaRkTUgaCvQC.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba8unorm",
        label: "dbWUPgqeHSAdA"
    });
    const HYcnLMCUJvXWwgPXSyHE = tQhFtFlLJfRkAcUfcu.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.06682441535954,
                g: 1.626578809278554,
                b: 1.8830377425982674,
                a: 1.4058562803096266
            },
            loadOp: "load",
            storeOp: "store",
            view: eHfiEQjcXVfbYHv,
            depthSlice: 6
        }],
        label: "IzJqeuCMXNZ",
        maxDrawCount: 1813763496,
        occlusionQuerySet: WwvFiSBshc
    });
    const vfKjsqPkNVbWCI = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16sint",
        label: "OfZxvZyF",
        size: {
            width: 902,
            height: 839,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16sint"]
    });
    hJNKVHdd.end();
    const YaIPuHJBT = UlhTjSP.count
    fWvNvc.setVertexBuffer(0, SFyiJUqXsXjFDLdVdPFy);
    const SJeWz = navigator.gpu.wgslLanguageFeatures
    const xkkofDmHkMVXY = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "dSAfBotK",
        layout: "auto"
    });
    const hpIAZWJJnyB = tQhFtFlLJfRkAcUfcu.label
    const KxuTvMlIcTrls = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "yeTKSvmFYVWj",
        size: {
            width: 956,
            height: 226,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const EGGMuOvceShIQuetO = KxuTvMlIcTrls.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "uJZJwXaf"
    });
    const KBKuKLdPrUDbTOvNGSiw = OHBXTnfEnSpfpHWoW.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8887274769418219,
                g: 1.652165924972719,
                b: 1.2155076931549675,
                a: 0.7110326704431236
            },
            loadOp: "load",
            storeOp: "store",
            view: EGGMuOvceShIQuetO,
            depthSlice: 19
        }],
        label: "KDPmcxtiDhqVEoYgTOz",
        maxDrawCount: 710978281,
        occlusionQuerySet: cMBntlQUtXmjm
    });
    const ZrAuGJZzms = ukKXFN.getBindGroupLayout(0);
    const sufehRXPnsuDZPLUHmpn = await navigator.gpu.getPreferredCanvasFormat();
    VgVdM.submit([hkAonnoYbw]);
    KBKuKLdPrUDbTOvNGSiw.setPipeline(wYmzFFaSHYmjMSLq);
    KBKuKLdPrUDbTOvNGSiw.draw(7);
    VgVdM.submit([PRtTZckMQWhXeyVg]);
    const XrFHkoErb = await navigator.gpu.getPreferredCanvasFormat();
    const VMlyZfT = GtWGkPnJGKaUJNi.beginComputePass({
        label: "NjsAge"
    });
    VMlyZfT.setPipeline(ukKXFN);
    uoUSgmBXRggKBaYZ.writeBuffer(FWvDFjvieClQGGPaUBO, 0, NgjJGQuJSinCXA);
    const UgjPnds = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "ukKXFN.bindGroup",
        layout: ukKXFN.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    VMlyZfT.setBindGroup(0, UgjPnds);
    VMlyZfT.dispatchWorkgroups(253, 2, 18);
    const BQNXyStKfsLSZAbxVpGt = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "MhgNuljozaNqJTVLEWY"
    });
    const iHFnqKjF = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "OUlwWSFWbrFLpLWk",
        size: {
            width: 1240,
            height: 1302,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const oochNd = iHFnqKjF.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "APEtYD"
    });
    const rkEEezznziLGcRPBKX = BQNXyStKfsLSZAbxVpGt.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.864380988796813,
                g: 0.9771575059877113,
                b: 1.3517685726644213,
                a: 0.585854080038732
            },
            loadOp: "clear",
            storeOp: "store",
            view: oochNd
        }],
        label: "OCFPbHXrRsmhj",
        maxDrawCount: 2515617839,
        occlusionQuerySet: HTXdYOzmDUsMRTUKy
    });
    const UIHXyKmvwbHbJWcwd = qKwLubVOUtjvPxhpwYn.features
    const rVUJwDOM = EGGMuOvceShIQuetO.label
    const boWXaCypWlRI = sNCKJjF.isFallbackAdapter
    const zhfXIBSoEpyGobidxmA = GHHlqwZDZAuA.count
    const TnxYDKOR = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const gDgBZghH = HTXdYOzmDUsMRTUKy.type
    const nFPvQhkJOIGuAoB = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "bFYKKaTFPjQAGsj",
        mappedAtCreation: true,
        size: 115525116,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    });
    const sGiLviWCOIxNeVvtyF = VMlyZfT.label
    VMlyZfT.end();
    const UzcXISdiFJdnomerX = WwvFiSBshc.label
    rkEEezznziLGcRPBKX.end();
    const yQzGTCWzLEHGiI = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src-alpha"
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
        label: "ZQuhlkudpO",
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
            module: LNVWNXNS
        }
    });
    const wafYGutOReX = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16sint",
        label: "qKqNXPhmo",
        size: {
            width: 977,
            height: 99,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16sint"]
    });
    const wIhZROqNzgoE = tQhFtFlLJfRkAcUfcu.label
    lWrTvyEAyomJk.writeBuffer(FWvDFjvieClQGGPaUBO, 0, BlsETkaHmF);
    const cQTzDi = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "ukKXFN.bindGroup",
        layout: ukKXFN.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    const KDiuThGffyzPHKKe = fWvNvc.label
    const mlhjbOikVEfCrDPhSw = EuqNrRUlWialUGNkp.label
    const LgGGUXkNhaTkll = await navigator.gpu.getPreferredCanvasFormat();
    lHLTQDaToEC.writeBuffer(FWvDFjvieClQGGPaUBO, 20, aitVzsyHnU);
    const HXYqO = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "brIaTmMVZcWUd"
    });
    const MicDtBpOP = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "zJGfrFtPocwtKE"
    });
    const cVKpXmxhyyhbwhCc = BQNXyStKfsLSZAbxVpGt.label
    const uahcVq = navigator.gpu.wgslLanguageFeatures
    const WtsJstSoaKzdx = BQNXyStKfsLSZAbxVpGt.label
    const MJrQKAGTIPvEWYw = await navigator.gpu.getPreferredCanvasFormat();
    const oEnoWVjamrPBwjMuWr = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "fragment",
        code: cvxpWYxCghYFBpll
    });
    const rZZsruiTX = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 3465,
        label: "kHyFH",
        type: "occlusion"
    });
    const MYhYjpYKuQKOcTW = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "vGKPpxeSbDTnYgzh",
        size: {
            width: 704,
            height: 124,
            depthOrArrayLayers: 46
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const TBhqNkn = MYhYjpYKuQKOcTW.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r16float",
        label: "NaKgkcbNorgIPlmp"
    });
    const gsySKoegBmYjDPUSD = GtWGkPnJGKaUJNi.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6344220504207498,
                g: 1.1072750988088864,
                b: 1.8234454898624797,
                a: 0.5148275615604732
            },
            loadOp: "clear",
            storeOp: "discard",
            view: TBhqNkn,
            depthSlice: 3
        }],
        label: "SOYUvmECFwbqdDVrHRk",
        maxDrawCount: 2027910781,
        occlusionQuerySet: rZZsruiTX
    });
    const EntQm = HXYqO.label
    const lbvKSVvRQ = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pHhbbbwXhWmzG = qKwLubVOUtjvPxhpwYn.features
    const owufdzVZFEPlQr = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "OAUVqwvDVdmgSc",
        size: {
            width: 554,
            height: 795,
            depthOrArrayLayers: 7
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const paPNLyYZzPkthcB = yQzGTCWzLEHGiI.label
    const BVUeMkEXfxRnwtbC = UlhTjSP.type
    const srnkKjRoCtQKahqr = dNbFmkWvAjuvcDi.limits
    const LFQtPWZhqrYUSCYepbW = KxuTvMlIcTrls.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "VgkMgopqSndyYAD"
    });
    const qrUhSPZKi = TnxYDKOR.isFallbackAdapter
    const JTBzCWpBTLvNYePa = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 1952,
        label: "rVBMhUnkS",
        type: "occlusion"
    });
    const xmFgvPNiSKFgVsD = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "SjkpF"
    });
    const dfDMfXqfSWHKWrkF = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "GBHRUyr",
        mappedAtCreation: false,
        size: 97967460,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX
    });
    const OhgsFScFWeFs = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: CMHMVPqXj
        },
        label: "NtcnBjiinBk",
        layout: "auto"
    });
    const KcWSVHT = qfGDlLdJ.info
    const WomgzKMs = navigator.gpu.wgslLanguageFeatures
    const syWzCbtiK = MicDtBpOP.beginComputePass({
        label: "QCBGxoh"
    });
    syWzCbtiK.end();
    const zkFfZRFMvNEFjCBif = sNCKJjF.limits
    const rTPGmFTT = qKwLubVOUtjvPxhpwYn.limits
    const NHLmGuiqHEZojqu = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 2839,
        label: "CYtKpgDVLc",
        type: "occlusion"
    });
    const rmHMC = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: yfxIEwlYjVAMSbQK,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "qFtsaixHrGZtBfa",
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
            module: vxorL
        }
    });
    HYcnLMCUJvXWwgPXSyHE.setPipeline(rmHMC);
    const Wscqlnxqs = GHHlqwZDZAuA.count
    const fRyKyGhGh = lbvKSVvRQ.info
    fWvNvc.end();
    const OqLLdeAlb = CxWZER.beginComputePass({
        label: "hPyqsD"
    });
    OqLLdeAlb.end();
    const yANDCCj = ZJTwhdlpyW.label
    const lKkut = hJizLKMBJVsKZOIAio.label
    const MxJsWZuRgofKOtvQ = jHdhtotnWyrhYyQ.label
    const YecDJkZY = CxWZER.beginComputePass({
        label: "VZmZDFmMIesGvDbwUXbu"
    });
    const MuPJbvudOOewgrS = YecDJkZY.label
    const ZKIVhbEYOlxBUDEZf = sNCKJjF.features
    const LGKxyRfuTjxZcr = EMPBCwVWi.label
    const ktoCCdVgIbId = HTXdYOzmDUsMRTUKy.count
    const IUsjTXw = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "nHvmBAjKesOcJ",
        size: {
            width: 2773,
            height: 2525,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm"]
    });
    const vagrlQXcwdBnEXfw = IUsjTXw.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "QwTcSYcToWoMNC"
    });
    const sNsuwr = MicDtBpOP.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.39949966081092425,
                g: 1.8067304377190503,
                b: 0.6044948415703921,
                a: 1.5596992286123303
            },
            loadOp: "load",
            storeOp: "store",
            view: vagrlQXcwdBnEXfw
        }],
        label: "rUStfNfROzgrMPYaFqBZ",
        maxDrawCount: 2403404231,
        occlusionQuerySet: JTBzCWpBTLvNYePa
    });
    sSvRIPDtikjg.writeBuffer(FWvDFjvieClQGGPaUBO, 0, DkazAuhyEQObWJhfP);
    const EsGaBXMXDCnItNC = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "OhgsFScFWeFs.bindGroup",
        layout: OhgsFScFWeFs.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    const dGaYSMyiqnNY = qKwLubVOUtjvPxhpwYn.features
    const JfsvTjXbBASY = ZJTwhdlpyW.getBindGroupLayout(0);
    YecDJkZY.setPipeline(OhgsFScFWeFs);
    YecDJkZY.setBindGroup(0, EsGaBXMXDCnItNC);
    YecDJkZY.dispatchWorkgroups(64, 151, 51);
    YecDJkZY.setBindGroup(0, EsGaBXMXDCnItNC);
    YecDJkZY.setPipeline(upuEKVIlMrRKbyBCLP);
    lHLTQDaToEC.writeBuffer(FWvDFjvieClQGGPaUBO, 0, DizMAWVocESbuoLk);
    const uJJVpBuUZUpcnTfW = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "upuEKVIlMrRKbyBCLP.bindGroup",
        layout: upuEKVIlMrRKbyBCLP.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    YecDJkZY.setBindGroup(0, uJJVpBuUZUpcnTfW);
    YecDJkZY.dispatchWorkgroups(53, 95, 58);
    const slRymOGPpkNhY = FkneRyWc.limits
    YecDJkZY.end();
    const EIzMD = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 2882,
        label: "oCvxQ",
        type: "occlusion"
    });
    const mfgUmlfuH = GtWGkPnJGKaUJNi.label
    const lyaevetZABHEdDoIO = bbyZtVok.label
    const UWtUzZNFyEnAluB = qKwLubVOUtjvPxhpwYn.queue
    const QNyWN = HXYqO.beginComputePass({
        label: "BBVmmbgcQnJFZouE"
    });
    const EiDPodnySKQSKi = JTBzCWpBTLvNYePa.type
    const jEkAYpPuVsNZMMB = xkkofDmHkMVXY.getBindGroupLayout(0);
    const MBLhX = qKwLubVOUtjvPxhpwYn.features
    const ZszNuyONdl = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "fragment",
        code: WYeppWlFqzQqUNlrHfTN
    });
    const YPvtwdVb = qKwLubVOUtjvPxhpwYn.limits
    const fLHFiU = BQNXyStKfsLSZAbxVpGt.beginComputePass({
        label: "UdcPRjVbCSpxLUkmhMom"
    });
    const rNLdoPQxhe = HOOwSJuyDL.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "JHZzPQNwEfycJ"
    });
    const DtYvFMsTt = uoUSgmBXRggKBaYZ.label
    const tsffaMXnXMKiymZN = Woywy.limits
    const wKFTAWplRvj = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "gvlPRHsuIsQYFDby"
    });
    gsySKoegBmYjDPUSD.setPipeline(ldRHloV);
    const JkCTKMF = YkVeJuytB.getBindGroupLayout(0);
    const BeqBLlxjQ = BQNXyStKfsLSZAbxVpGt.label
    HYcnLMCUJvXWwgPXSyHE.end();
    const bwpDvPsQuMxf = qKwLubVOUtjvPxhpwYn.limits
    const MskTtqEW = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "NIBcSSVlvwTArPKRMRt",
        size: {
            width: 830,
            height: 646,
            depthOrArrayLayers: 6
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const kbGRDO = MskTtqEW.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "r8unorm",
        label: "NDPVhWOxdFT"
    });
    const aTesKmLYWkgNiEJBChB = wKFTAWplRvj.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8987648956941947,
                g: 0.4418897219864102,
                b: 1.940823696557374,
                a: 0.9490966350323116
            },
            loadOp: "clear",
            storeOp: "discard",
            view: kbGRDO,
            depthSlice: 0
        }],
        label: "zacYKtXb",
        maxDrawCount: 692511440,
        occlusionQuerySet: rZZsruiTX
    });
    const AvoGeIZYNYDTlPC = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "UCMNx",
        mappedAtCreation: false,
        size: 135590424,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX
    });
    fLHFiU.end();
    const QkDLdcYIiT = BQNXyStKfsLSZAbxVpGt.finish();
    const nyCrXYvi = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "Bctnw"
    });
    const dHAckT = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "LbxVMjWIJVwvX",
        layout: "auto"
    });
    const gnvdIEZ = YkVeJuytB.getBindGroupLayout(0);
    const GaULncHsPEoRBK = qKwLubVOUtjvPxhpwYn.limits
    QNyWN.setBindGroup(0, ozTrhgcOKTjqdwCULrlE);
    QNyWN.setBindGroup(0, zERHfcIF);
    QNyWN.setPipeline(ZJTwhdlpyW);
    uoUSgmBXRggKBaYZ.writeBuffer(FWvDFjvieClQGGPaUBO, 0, AkchuLYzFxvPNDrDgzLZ);
    const xSDtVj = qKwLubVOUtjvPxhpwYn.createBindGroup({
        label: "ZJTwhdlpyW.bindGroup",
        layout: ZJTwhdlpyW.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }, {
            binding: 1,
            resource: {
                buffer: FWvDFjvieClQGGPaUBO
            }
        }]
    });
    QNyWN.setBindGroup(0, xSDtVj);
    QNyWN.dispatchWorkgroups(228, 224, 37);
    const OPrdBesKSUfBwkxlbk = TnxYDKOR.isFallbackAdapter
    const mWzCwmOmIYqmqUmcKKd = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 1784,
        label: "PfpaNeMND",
        type: "occlusion"
    });
    const ZVyJGQN = QNyWN.label
    const vdlOMzGUKJ = ipVcdb.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 7,
        format: "r16sint",
        label: "yTyMTwowfI"
    });
    const OyLXZVRkWexO = CBYHi.limits
    const tVLTl = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2unorm",
        label: "PrwDWmtwg",
        size: {
            width: 2037,
            height: 3793,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    QNyWN.setBindGroup(0, xSDtVj);
    QNyWN.setPipeline(OhgsFScFWeFs);
    QNyWN.setBindGroup(0, EsGaBXMXDCnItNC);
    QNyWN.dispatchWorkgroups(61, 97, 10);
    const NRSXipRqezKo = dNbFmkWvAjuvcDi.limits
    const JCSsoMgLdTbvlCEp = EuqNrRUlWialUGNkp.label
    const DJOcYysWphK = qKwLubVOUtjvPxhpwYn.features
    const TeDfMRwp = await navigator.gpu.getPreferredCanvasFormat();
    QNyWN.setBindGroup(0, EsGaBXMXDCnItNC);
    const sZZOzzJBTyMXCJ = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2unorm",
        label: "qqejTusEAVU",
        size: {
            width: 2992,
            height: 2983,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const yiWOuryrkaHsLmQHlqGo = sZZOzzJBTyMXCJ.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "IuTqwD"
    });
    const WvSAO = xmFgvPNiSKFgVsD.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3158006189012486,
                g: 0.4682753079081696,
                b: 1.50156152904991,
                a: 0.7292378231425427
            },
            loadOp: "load",
            storeOp: "store",
            view: yiWOuryrkaHsLmQHlqGo
        }],
        label: "dVDxQLEdAQGE",
        maxDrawCount: 2573977669,
        occlusionQuerySet: rZZsruiTX
    });
    const iblYFAOrHxFxLJAGZ = xkkofDmHkMVXY.getBindGroupLayout(0);
    const TgWTZRjvoh = QNyWN.label
    const SNAXCPVf = yiWOuryrkaHsLmQHlqGo.label
    const ciiSsHaXccFgJoxQ = WwvFiSBshc.label
    WvSAO.setPipeline(mEhncROzVfp);
    WvSAO.draw(9);
    const ZSNPYbFDjEQHSzQVfGGk = navigator.gpu.wgslLanguageFeatures
    const ODqnKbzyHEC = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r32sint",
        label: "MfnafT",
        size: {
            width: 2476,
            height: 2309,
            depthOrArrayLayers: 42
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["r32sint"]
    });
    const etprgV = TnxYDKOR.isFallbackAdapter
    const kQJfMujGvQr = qKwLubVOUtjvPxhpwYn.queue
    const AKGjCoNlXBXnWSbiA = nyCrXYvi.beginComputePass({
        label: "MmkBAfYJqSiwQGCgybrT"
    });
    const ZcuMPJVgHl = UlhTjSP.count
    const lqDhKnByYGIkY = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const tgJnInHnzXsgyhC = hJizLKMBJVsKZOIAio.label
    const jSSVJCjTtycKatjvXolm = qKwLubVOUtjvPxhpwYn.limits
    aTesKmLYWkgNiEJBChB.setPipeline(ofWgjSkFaMulERM);
    aTesKmLYWkgNiEJBChB.draw(3);
    const knERgnX = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 2930,
        label: "PfRThrFxrzYX",
        type: "occlusion"
    });
    const enEayrBlwycM = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: UwkPYEyQJbM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "WNkepumpnizYzNoTNcI",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: OIBpOZOYuiobpK
        }
    });
    const yGkTQJrzvbBqmh = kEgaWfRLouuF.label
    AKGjCoNlXBXnWSbiA.setBindGroup(0, uJJVpBuUZUpcnTfW);
    const WpMmqYlRVcmgfxq = upuEKVIlMrRKbyBCLP.label
    const DixqYnsmElBV = lbvKSVvRQ.isFallbackAdapter
    const ncMDJeVnV = qfGDlLdJ.info
    const ZChkEl = qKwLubVOUtjvPxhpwYn.features
    const TICGC = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 3778,
        label: "uKkyDUegXzIGJ",
        type: "occlusion"
    });
    uoUSgmBXRggKBaYZ.writeBuffer(SFyiJUqXsXjFDLdVdPFy, 99777184, heAcdZGJjZwupkrRTA);
    const pQUjSaXZBAZGHqAswx = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: JJzFQHtSUBb
        },
        label: "xIgcAILKxuQfijjak",
        layout: "auto"
    });
    VgVdM.writeBuffer(SFyiJUqXsXjFDLdVdPFy, 54301176, CuBseGoCy);
    const fqkQLGW = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "VWyCrzrxUrXDJtOyuMrS",
        size: {
            width: 483,
            height: 397,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const SskwzZecywExf = fqkQLGW.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba8unorm-srgb",
        label: "QUFEtP"
    });
    const CAkHZSnGkYuybMe = CxWZER.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3105096696411287,
                g: 1.7547558029737944,
                b: 0.16511609899600121,
                a: 1.289561211718201
            },
            loadOp: "load",
            storeOp: "discard",
            view: SskwzZecywExf,
            depthSlice: 0
        }],
        label: "nMcsWzjEfDmNzadmaY",
        maxDrawCount: 2231729777,
        occlusionQuerySet: JTBzCWpBTLvNYePa
    });
    CAkHZSnGkYuybMe.setVertexBuffer(0, SFyiJUqXsXjFDLdVdPFy);
    aTesKmLYWkgNiEJBChB.end();
    KBKuKLdPrUDbTOvNGSiw.end();
    const WcQGhRDkYYljEeAEO = OHBXTnfEnSpfpHWoW.finish();
    const KDZPwAGkQzTdxVGZmLc = Woywy.info
    const gftCwWdAwETAxDHNguRk = dNbFmkWvAjuvcDi.limits
    const oxwfjlmnmagMfA = navigator.gpu.wgslLanguageFeatures
    const npXllOS = qKwLubVOUtjvPxhpwYn.features
    const VfRATYkdG = upuEKVIlMrRKbyBCLP.getBindGroupLayout(0);
    const twgEDugixTHxsUSQWeaS = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "compute",
        code: YYMnbHHIiWMJCbqLRoH
    });
    const HsjVgJXdpqF = XOdUzrrANQwmbbNxpcy.label
    const LBDEQaeMGHS = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 2753,
        label: "retyCQQNE",
        type: "occlusion"
    });
    sNsuwr.end();
    const sescuGcaAu = MicDtBpOP.finish();
    UWtUzZNFyEnAluB.writeBuffer(FWvDFjvieClQGGPaUBO, 20, KcMtesKgBN);
    const GRhTkygkjOjNzlfF = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "ZcCCSQoCVuEx"
    });
    const UQxDT = qKwLubVOUtjvPxhpwYn.label
    const wojQpzLTByAaa = enEayrBlwycM.label
    const cpCcOKbBfB = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: yfxIEwlYjVAMSbQK,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALL
            }]
        },
        label: "YofxENuxQfjP",
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
            module: LNVWNXNS
        }
    });
    const elWfOOsVWeqzSHV = CAkHZSnGkYuybMe.label
    const FvKjvfFjZBJu = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "DWTpkXVUYnAMyPaOd"
    });
    const OiZbiOUV = await navigator.gpu.getPreferredCanvasFormat();
    const MyPofgzrKfojsESUeTSx = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16sint",
        label: "ZGCApkRsEzbflBWgny",
        size: {
            width: 1082,
            height: 1945,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba16sint"]
    });
    const EEVAhOkNNWwlnwViZfyr = qKwLubVOUtjvPxhpwYn.createQuerySet({
        count: 2659,
        label: "JAjtiBuICmihMVQ",
        type: "occlusion"
    });
    const dyBTpU = qKwLubVOUtjvPxhpwYn.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16sint",
        label: "TjAGIrrEkCuaJT",
        size: {
            width: 751,
            height: 788,
            depthOrArrayLayers: 13
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba16sint"]
    });
    CAkHZSnGkYuybMe.setVertexBuffer(0, FWvDFjvieClQGGPaUBO);
    const LWCVspCHcydSdYhrUr = dNbFmkWvAjuvcDi.isFallbackAdapter
    gsySKoegBmYjDPUSD.setVertexBuffer(0, AvoGeIZYNYDTlPC);
    WvSAO.setPipeline(mEhncROzVfp);
    const RdYfWo = JTBzCWpBTLvNYePa.type
    const EKnlnEeJdFs = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "fragment",
        code: WqCyR
    });
    const ODqVspCeZYh = GRhTkygkjOjNzlfF.beginComputePass({
        label: "gsSHzZtDrPqOoYzZ"
    });
    const aGBoiCCwHtx = qKwLubVOUtjvPxhpwYn.queue
    const KlBbtEuLrBv = CBYHi.features
    const siccbtHqvIqpB = qKwLubVOUtjvPxhpwYn.createBuffer({
        label: "HghyTjUFAlUzzkF",
        mappedAtCreation: false,
        size: 121793512,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC
    });
    ODqVspCeZYh.setPipeline(IHlYd);
    QNyWN.setBindGroup(0, EsGaBXMXDCnItNC);
    AKGjCoNlXBXnWSbiA.dispatchWorkgroups(222, 29, 25);
    const VgeBBsBifJEqLGmhACl = WvSAO.label
    const UfSEEqlaruBfLS = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: zFqCErSG,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "bSFfwypBhaztX",
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
            module: vxorL
        }
    });
    const NkUqrSgxIkGyIVizaGb = JTBzCWpBTLvNYePa.count
    const rxndBvNlcKTiSIdlnSKY = qKwLubVOUtjvPxhpwYn.createCommandEncoder({
        label: "gltQXqCIJDjqhV"
    });
    QNyWN.end();
    const qGkOSCUNiqVxT = qKwLubVOUtjvPxhpwYn.queue
    const HKYxvjzdSfgTObgIITzT = tQhFtFlLJfRkAcUfcu.finish();
    const vllZFwuQUMiGDzgKRln = iMrFBYHUyeMiJD.label
    const lSuEZ = lqDhKnByYGIkY.limits
    const YMnvmIRwMrDLEQubWy = FvKjvfFjZBJu.finish();
    const eIfHIiFguaIjIWHBrt = qKwLubVOUtjvPxhpwYn.features
    const eScprzGDaGKX = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const dBGhwfcWMjQzxWjI = LBDEQaeMGHS.count
    aGBoiCCwHtx.writeBuffer(FWvDFjvieClQGGPaUBO, 32, hGPmmRSgt);
    const SbQNs = GHHlqwZDZAuA.type
    const autiFdYFZI = qKwLubVOUtjvPxhpwYn.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: twgEDugixTHxsUSQWeaS
        },
        label: "ZOYenytXCXeC",
        layout: "auto"
    });
    const JqwuFUpxkNGDWq = qKwLubVOUtjvPxhpwYn.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: EKnlnEeJdFs,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "src"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "vLXvgeh",
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
            module: OIBpOZOYuiobpK
        }
    });
    CAkHZSnGkYuybMe.setPipeline(JqwuFUpxkNGDWq);
    CAkHZSnGkYuybMe.draw(7);
    CAkHZSnGkYuybMe.setPipeline(JqwuFUpxkNGDWq);
    const UJohwZ = qKwLubVOUtjvPxhpwYn.createShaderModule({
        label: "compute",
        code: ukMlddr
    });
    sSvRIPDtikjg.submit([YMnvmIRwMrDLEQubWy]);
    VgVdM.submit([HKYxvjzdSfgTObgIITzT]);

}
main().catch(console.error);