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
// -4376572801857591089
const typedArray29 = new Float32Array([-661, -4148, -7933, -4806, -6493])
const typedArray28 = new Uint8Array([2819, 4321, 4184, -2233, 5512, 1239, 4997, -1832, -6378, 7721, 1186, -4145, -645, 6028, -3323, -9119, -3381, -779, 4551, 6675, 3869, 6657, -7414, -5186, 9655, 9669, 4724, 4400, 7199, -5471, 3411, -4275, -5060, 9756, 6808, -8624, -9076, 7319, 6539, -8940, 6837, 6786, 3735, 5438, 4541, -9978, -2456, -3217, 516, -4017, 4896, -2472, 902, 9161, 2342, -791, -1121, -600, 9720, -5303, -9598, -9799, 7781, -3411, 3881, -5829, 8298, 100, -3605, -9446, 3289, 4854, 2299, -6905, -4497, -7932, -421, -3572, 5015, 5154, 1010, 432, 4796, -8551, -3623, 1191, -2228, -9918, 9786, -8156, 2702, 408, 7101, -1108, -3419, -8654, -4025, 6890, 9590, -5472, -37, -4888, 4823, 6117, 5365, 3485, 6853, 608, 1256, 6467, -291, 3149, -8775, 1500, 118, 354, -7300, -3945, -1388, 8752, 6685, 7896, 2798, 5045, -2526, 1947, 2532, -7346, 9338, 8079, -3207, -3830, -8235, 7595, 8141, -8254, -1786, 5097, 6252, 6234, 65, -1441, -973, -7237, -6750, 6270, 5529, 4137, 8665, -27, -5297, 9932, 1864, 2675, -51, 8613, 9925, 9823, -8861, -6665, 708, -588, 2009, -4184, 4684, 3075, -2012, -9356, -4913, -3707, -9701, 2368, 811, -8777, 5615, -5826, 4329, 8402, -1062, -7730, 8611, -3724, 3877, 3653, 7369, -6863, 4114, -6488, -9599, -2827, -8885, -2721, 4892, -6304, 4362, -986, 8012, -6776, -4737, -4168, 5431, 8109, -1920, 64, -1706, -7599, 1069, 1101, 8564, 1928, -3281, -4827, -5483, 423, 2449, -2251, 4783, -869, 9836, -1481, 1114, 8468, -6374, 1296])
const shader9 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray27 = new Int8Array([-8767, -470, 4492, 1211, -3330, 7321, -954, 1952, -9068, -8036, -4657, -8494, -1076, -7830, -6005, -5337, 2479, 3774, 8792, -4440, -4470, 5948, 4237, -9147, -6045, 8542, -7118, -622, -7284, -9179, -8627, -4717, 2839, -2984, -5547, -8141, 1767, -5120, -2586, -4954, 1423, 8766, 1906, -425, 3334, -3317, -9934, 1085, -2738, -9648, -4252, 6818, 1314, -8998, -6932, 7682, -7212, -1727, -9989, -6028, 3665, -8531, -1233, -1036, 6587, -1530, -6611, -6869, 2880, 7217, 4792, -449, 7348, 4076, 7786, 2318, -7744, 8367, 9584, 5938, 397, 6161, 361, 117, 5581, 8622, 1576, -7161, -8641, -9592, -3591, 1485, -9818, -659, -5933, -5594, 2600, 1582, -1590, -8057, -4402, 9368, 7198, -4721, 3980, 6889, 60, -6269, -3782, -5299, 8826, 2570, -7755, -8216, -9483, 1134, 5399, 6588, -7703, -8370, -1300, -8111, -6286, -4023, 8943, 7118, 9804, 7343, 5299, -9207, -3109, -7936, -7759, -1566, -9512, -3249, -5479, 5546, -3608, 4802, 6140, 5617, 3959, 7685, -8240, 7628, -6014, -4838, -9773, -873, 3676, -947, 3060, 3444, -6758, -1760, 6644, 5482, 7402, 7551, -7792, 2453, -2656, -7634, -4374, -8232, 3980, 672, -9731, 9353, 7447, 936, 7074, 750, 1283, -379, -451, 1741, -3163, -8973, -3282, -4215, -6517, -2641, 7100, -1718, 4639, -8348, -2561, 8243, -129, -9102, 8427, -4260, -249, 1479, -264, -9563, -6851, -3715, 5668, 566, -4775, 9680])
const shader8 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray26 = new Int8Array([2267, -5955, 3751, 8159, 3667, 2773, -3787, 1336, -1566, 3204, -939, -6732, -3519, 4147, -8934, -9326, 2823, 6175, -8065, -7247, 2802, 7381, 250, -7866, -4628, 6533, -4602, -4613, -5027, 9311, -5802, -6312, 9113, -972, 7166, 7065, 2699, 2647, -3677, 1874, -6699, 9585, -9049, -9590, -466, 6022, -6249, 528, -7403, -4599, 9356, -9192, 1610, 4785, -1739, 9844, 8682, 3709, 9829, 6133, -397, -9718, 4271, -5415, -2404, 9361, 1209, 7341, -3872, -9824, -8174, 2501, -1176, -9571, 4415, -3807, -3189, 5119, 3800, 4092, -1358, -9312, -6576, 877, -3605, -7931, -8831, 2695, -4094, 1706, 6791, 538, -4456, 7322, -2838, 4144])
const typedArray25 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray24 = new Float32Array([-8419, 8496, 9147, 2835, -4535, -168, -4093, -3339, -5165, -7722, -4533, -3562, -3151, 3468, -2801, -8691, -4783, -3025, 8967, -6347, -8441, -2739, 8275, -5989, -545, -6316, -5032, 1146, -7707, 291, 1172, 1814, 640, -3228, 5492, 5473, -9027, -4429, 6042, -1537, -7873, 2496, -6072, 1349, -6885, 7522, -5652, 1495, -3718, -5264, 9433, -5601, -6081, -7162, 3670, -7008, -5083, -5057, -4408, 3670, -2360, -9958, -1515, 9410, -8372, -1604, 6895, 1494, 9544, -4743, -311, -3826, -8020, 2183, 7313, 4391, -1166, -7679, 7606, -8693, -5086, -6114, 8054, -3967, 1362, 7143, -2972, -7665, -8702, 3462, -8460, 7106, 9580, -7529, 3824, -14, 4965, -5423, 7506, 9056, -1795, 1828, -3114, -1795, -6559, 4713, 7884, -4249, -4155, 522, -7784, -1254, 736, -9009, 5199, -7977, -8222, 7734, -9044, 2510, -4699, -4082, 8359, 3395, -7044, -2529, 4830, -8224, -9860, 3687, -14, 1838, -7950, -6420, -4696, -3789, 5440, 2793, -3828, -2530, 2402, -6111, -1774, 1913, -1277, 162, -9500, 6806, 2256, 750, -3515, 3565, -4518, -6195, 7120, -3033, 8832, -1159, 9308, 9127, 442, 4186, -6677, -3571, -2477, -4162, -494, -9465, -202, -4479, -1399, -2167, -3718, -5605, 2884, -9578, -5850, -6708, -8954, 3806, 7751, -8374, 9385, 2368, 5339, -7581, -2352, 8370, -5773, -4899, -1255, -8514, 1307, 955, -8420, 4664, 8507, -7931, -3883, 3373, -3809, 3446, 9499, 9747, -758, 9334, 3111, 9125, 7790, 1741, 1336, 2050, -9421, 2346, 7164, -3009, 9852, -856, 7164, 5937, 5883, 246, -9414, 1581, 3257, 7378, 7789, 7456, 2416, 6278, 8639, 6883, 8592, -1158, 3763, -620, -5324, 7200, -6184, 5086, -1627, 9911, -7089, -2616, -7410, 4513, 1411, -3607, -9850, -8522, 9240, 4357, -7551, -1349, 6734, 1843, 4744, -2659, 2048, 1032, -2073, 9491, -8322, 6931, -4699, 276, -38, -4940, 99, -8906, 3487, 852, -509, 3284, 8542, -7261, -3240, 8023, -340, -4387, -451, -5879, -4369, 7568, 6981, 4812, 2431, 5371, -2762, 5069, -1056, 9769, 8987, -2007, -1235, 388, 235, -3661, 597, 7824, 6795, 1953, 8183, -5319, 4675, -1860, -4391, -3731, 1700, 7884, 1200, 1613, 6066, 4647, 5623, 5977, -5627, 8621, -1420, -202, -7197, -2328, -1984, 273, -4666, 5424, -6694, 1537, -5934, -5401, -2317, -6843, -9428, -5822, -1849, 541, 1813, 2930, -2921, -1239, 9309, -9651, 7528, -3046, 3995, -377, -2690, -1989, 3749, 1761, 5617, 8485, 2272, 4371, -5764, -6773, -1836, -9663, 8012, 6231, 4299, 1108, 1541, 4867, 6882, -9117, -2721, -3054, -3796, 1794, -6233, 7760, -4896, -6507, 3024, -9592, 4518, 2810, -1268, 3680, 4625, -4319, 1031, -1903, -1299, -638, 839, -1197, 3442, -9821, -7423, 7486, -2704, 6534, -9745, 2213, -164, -9416, -4390, 1141, 3883, -7930])
const typedArray23 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray21 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray20 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray19 = new Uint8Array([6322, -4430, -8290, -4807, -3404, 8855, -845, 4550, -222, -4997, -1403, -9072, -4620, 749, 9792, -2243, 7298, -6984, -498, 6976, -1452, 3911, -2198, 411, -6370, 4794, -7619, -1413, 8693, -7137, -5579, 7224, -1393, 3919, -2986, 2628, -5187, -2292, -9371, 5972, 3754, -1290, -300, -3550, -2780, -1688, 9971, 3115, -1191, 7792, -1571, 4127, 2645, 7641, -6702, 3195, 1430, -9859, 9535, -2785, -5775, 5870, -1893, -3385, 1122, 9943, -1582, 1800, -2492, 6939, -3041, -8235, 2869, 5341, -6987, -6351, 155, 884, 6451, -800, -2829, -6462, -536, -589, -5171, -7822, -8636, -4145, -3572, 976, -9801, -9232, 45, 679, -2811, 7492, 4166, -2765, -2037, 9320, -5581, -9368, -63, 3975, -5994, 3572, -713, -2391, -1501, -4973, -5832, -5638, 899, 1575, 2871, -3602, 816, 9372, 4929, 6936, 4003, -6246, 6612, -10000, -7134, -676, -6901, 8706, -327, -8111, 7563, 8751, 8032, -7470, -1080, -5356, 3146, 4597, 1776, -9989, -7871, 1950, -4784, 6607, 1624, 5328, 6607, -3078, -7557, 8422, 5229, -5818, 9490, 6999, -3946, -1199, 5146, 8605, 1808, -174, 9790, -4898, -9581, 3169, 2978, 4767, -513, 8262, -2654, 6499, -4415, -2809, -3316, -4921, 880, -554, 9923, -7653, 8344, -3834, -1838, 5585, 1282, 8860, -2836, -1823, 9614, 5787, -658, -7116, 367, 355, -3111, -3385, -1061, 5057, 6859, 2196, 4126, 9048, 9266, 4752, 6926, 6155])
const shader7 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray18 = new Int8Array([-8485, -9778, 1465, -2925])
const typedArray17 = new Int8Array([8919, -9472, -8771, 8298, 1383, 9916, 9497, 5499, -8468, 2093, -4047, -5430, 4178, -1320, 2794, 3610, -3631, 4554, -8754, -6735, 1067, 9106, 4453, -5223])
const typedArray16 = new Int8Array([-1624, 3408, 748, 3716, -9230, -9717, -8591, 2299, 9876, 133, -3670, 6994, -4670, 2464, -3916, -8400, -2992, 5045, 4591, 2178, -2522, -6097, -4127, -3498, -9164, 2964, 5104, 4915, -6335, 2056, -102, 9125, 2727, -1972, -8975, -7452, -4032, -4157, -5881, -4363, -1110, -9329, -3936, -2721, 6883, -6625, 5199, -9674, 6530, -1640, -4389, -129, -6083, 1111, 7484, -4801, 1529, 9967, -323, 6127, -8742, 7503, 9385, -1391, 1377, -8626, 850, 9444, -5342, 3196, -7627, 9454, -9989, -1953, 7658, 2568, -8499, 233, 3796, -8021, -2398, -8202, -4027, -3628, -5506, -1696, -2576, 8909, -6004, -8993, -5917, 5183])
const typedArray15 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader6 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader5 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray13 = new Int8Array([-8894, 2373, 9196, -6582, 7266, -1967, 661, -7357])
const typedArray12 = new Uint8Array([-7779, 9167, 220, -451, -6131, 1900, -6939, -2844, -9067, 9757, -5599, -5536, -2513, 4480, 2503, -5862, -3441, -5510, 5590, 3677, -7530, -7772, 3653, -2810, -9715, -2720, -7458, 9490, 273, -8172, 3908, -6263, -327, -4442, -1813, 8814, 4974, -1204, -3686, 6469, 8289, -390, -961, 7351, 7666, -3247, -8891, 560, -7442, -7433, 1548, -6681, -9695, 9910, 2015, 5328, 7329, 2440, 4852, 3714, 5587, 764, -5675, -6752, 9708, -7055, -5654, -6865, -3019, -6794, 765, 2404, -1453, 6066, 6568, -466, -2319, -9569, 3260, 5409, 3624, 5646, -3623, 8604, -7628, -2812, -3226, -1478, -9758, 3436, 6507, -5917, 2204, 1732, -4405, 9665, 3312, -387, 2567, -4058, 1728, -2092, -4717, 3619, -9930, -7985, -8321, -5984, 7197, -7875, -3424, 1268, -3653, 8570, 5467, -9367, -2310, -1166, 5213, -3628, -1286, 3626, 4554, 4952, -961, 5312, -9503, 8795, -6922, -8418, 8907, -4575, 9312, 7181, 6090, 9552, 6097, 986, 4535, -2003, 9608, 6551, 4403, 6743, 8160, 2493, -6505, -505, 4082, -4557, 7365, 5863, 136, 6291, -1548, -2536, -1722, 3031, -98, -8272, 9828, -5823, 6189, 9629, -3597, -9752, -2592, 6637, 6792, -6449, -3124, 4759, -162, -7488, 9451, 2923, -9522, -8582, 6473, 6694, -7932, -3905, 2162, 2060, -6972, -8310, -8466, -5772, 7791, -2239, -7668, -4826, -4744, -8382, 5788, -4516, -7829, 8898, -8113, -8886, 9350, 4743, 8083, -1957, -4031, -7923, 4568, 4746, -9207, 7817, 4617, 2825, -6770, -5422, 9730, -1682, 5620, 6630, -952, 2641, -3897, -8171, -3634, 1936, -5680, -6513, -4284, -1227, 3912, 405, 7730, -2970, 8702, -8480, -8579, -4569, 3306, -4997, -1899, -2737, -1459, 3356, 6054, -9541, 1888, -3119, -4133, 2021, 2352, -221, 3254, -3370, 1784, -2282, 4002, -2436, -7300, -7299, 3838, 355, -3429, -7922, -5808, -573, 8838, 5426, 6763, 3977, -2605, -6442, 7780, -1087, -4036, -116, -4469, 4821])
const shader4 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray11 = new Int8Array([218, 7714, -489, 1036, 6799, -4291, 4790, -2798, -8360, -2290, 5314, 7403, -2160, -4544, -569, -5828, 1174, 4273, 3083, -9626, -5359, 3307, -2988, 6, -4544, 1157, -3340, -8146, 4397, -9069, 4567, -9048, -8703, -5684, 7911, 5455, -6626, -4133, -690, -4515, 6627, 5676, 7734, -350, 8664, -6517, 4462, 3177, -607, -8423, 3829, 1773, 5021, 3013, 137, -8681, -4092, 1066, 3993, 7044, -9523, -2134, -9227, 1629])
const typedArray10 = new Float32Array([9584])
const typedArray9 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray8 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader3 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray7 = new Int8Array([7023, 363, -4040, 3112])
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray5 = new Uint8Array([-969, -5391, 1348, -4575, 2166, -5791, -7647, -4785, -9787, -1609, 770, -4283, 3282, 8577, -5289, -1200])
const typedArray4 = new Uint8Array([507, 5819, 4159, -479, 5904, -3850, -1734, -9895, -6243, -7730, -4862, 845, -5350, 6975, 7187, -1965, -9638, -9028, -6847, -9053, -3690, 2797, 1379, -9269])
const typedArray3 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray2 = new Uint8Array([-6090, -9064, 8379, -8730])
const typedArray1 = new Uint8Array([-2758, 6087, -1149, -5328, 5123, -1789, 4914, -6117, 8787, -4926, 1883, 928])
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
        format: "rgb10a2unorm",
        label: "GPUTexture0",
        size: {
            width: 283,
            height: 712,
            depthOrArrayLayers: 19
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgb10a2unorm",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 3055,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9291794435538852,
                g: 0.5754246120442092,
                b: 1.3371259890393767,
                a: 0.6919959795836976
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView0,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 690499740,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 158080848,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC
    });
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer0);
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder0.draw(8);
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 64,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const string0 = GPUTextureView0.label
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const GPUQueue0 = GPUDevice0.queue
    GPURenderPassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPUQueue1 = GPUDevice0.queue
    const string1 = GPUQuerySet0.label
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
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture1",
        size: {
            width: 311,
            height: 500,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3470210859933127,
                g: 1.9191832232702548,
                b: 0.13815973055942954,
                a: 1.0244372947118099
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView1,
            depthSlice: 10
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 637481288,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder1.end();
    const boolean0 = GPUAdapter0.isFallbackAdapter
    const GPUComputePassEncoder0 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const string2 = GPUComputePassEncoder0.label
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer1 = GPUCommandEncoder1.finish();
    GPUQueue0.submit([GPUCommandBuffer1]);
    const string3 = GPURenderPipeline0.label
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray0);
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
    const boolean1 = GPUAdapter0.isFallbackAdapter
    GPUQueue0.writeBuffer(GPUBuffer1, 4, typedArray1);
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    const string4 = GPUComputePassEncoder1.label
    const string5 = GPURenderPipeline0.label
    const string6 = GPUTextureView1.label
    const string7 = GPUComputePipeline0.label
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const boolean2 = GPUAdapter1.isFallbackAdapter
    const string8 = GPURenderPipeline0.label
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "stencil8",
        label: "GPUTexture2",
        size: {
            width: 230,
            height: 2573,
            depthOrArrayLayers: 64
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["stencil8"]
    });
    const GPUSupportedFeatures0 = GPUAdapter0.features
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture3",
        size: {
            width: 516,
            height: 134,
            depthOrArrayLayers: 42
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView2 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgb10a2unorm",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.023234170670656695,
                g: 1.0580736612432176,
                b: 1.2010176190593393,
                a: 1.6453832905445032
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView2,
            depthSlice: 3
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 3572059455,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer0);
    const string9 = GPUComputePassEncoder1.label
    const string10 = GPUQuerySet0.type
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder1.dispatchWorkgroups(53, 145, 27);
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 3593,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 28, typedArray2);
    const string11 = GPUDevice0.label
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const string12 = GPUComputePipeline0.label
    const string13 = GPURenderPassEncoder2.label
    const GPUSupportedLimits1 = GPUAdapter0.limits
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUSupportedLimits2 = GPUDevice0.limits
    const GPUSupportedLimits3 = GPUDevice0.limits
    GPUComputePassEncoder1.end();
    const GPUComputePassEncoder2 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline1);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray3);
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
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder2.dispatchWorkgroups(15, 216, 25);
    GPUQueue0.writeBuffer(GPUBuffer1, 8, typedArray4);
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "src"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.BLUE
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
            module: GPUShaderModule1
        }
    });
    const string14 = GPUTextureView0.label
    const string15 = GPURenderPassEncoder2.label
    const string16 = await navigator.gpu.getPreferredCanvasFormat();
    const string17 = GPUQuerySet0.type
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer0);
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture4",
        size: {
            width: 1871,
            height: 1247,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView3 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm",
        label: "GPUTextureView3"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4741413958401481,
                g: 0.9075655070362334,
                b: 0.38135264375882993,
                a: 0.3890422162679832
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView3
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 2418137906,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUSupportedFeatures1 = GPUAdapter1.features
    const string18 = GPURenderPassEncoder3.label
    GPURenderPassEncoder3.end();
    const GPUCommandBuffer2 = GPUCommandEncoder2.finish();
    GPUQueue1.submit([GPUCommandBuffer2]);
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture5",
        size: {
            width: 1333,
            height: 1694,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView4 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rg16float",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1141179509417483,
                g: 1.4087943702776562,
                b: 1.7187712019477148,
                a: 0.8068662296000653
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView4
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 1182911700,
        occlusionQuerySet: GPUQuerySet2
    });
    const string19 = GPUCommandEncoder5.label
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const string20 = GPUQuerySet0.type
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer0);
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray5);
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const string21 = GPUQuerySet0.count
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray6);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    const string22 = GPUCommandEncoder4.label
    const string23 = GPUQueue1.label
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer3 = GPUCommandEncoder3.finish();
    GPURenderPassEncoder4.end();
    const GPUCommandBuffer4 = GPUCommandEncoder5.finish();
    GPUQueue0.submit([GPUCommandBuffer4]);
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture6",
        size: {
            width: 577,
            height: 330,
            depthOrArrayLayers: 41
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView5 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg16float",
        label: "GPUTextureView5"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7309042465907558,
                g: 0.3398105458695615,
                b: 0.6078244440426643,
                a: 0.24665546835685315
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView5,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 3482826020,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline3);
    const string24 = GPUQuerySet0.type
    const string25 = GPURenderPipeline1.label
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const string26 = GPUTextureView2.label
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline3);
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const string27 = await navigator.gpu.getPreferredCanvasFormat();
    const string28 = GPUQuerySet2.label
    const string29 = GPUQuerySet0.count
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUAdapterInfo0 = GPUAdapter5.info
    const string30 = GPUQuerySet0.label
    const GPUSupportedFeatures2 = GPUDevice0.features
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
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.RED
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "one-minus-dst",
                        srcFactor: "src"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 24, typedArray7);
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const string31 = GPURenderPassEncoder5.label
    const string32 = GPUCommandEncoder7.label
    const string33 = GPUQuerySet0.type
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader3
    });
    const string34 = GPUQuerySet1.count
    const GPUQueue2 = GPUDevice0.queue
    const GPUSupportedFeatures3 = GPUDevice0.features
    const GPUSupportedLimits4 = GPUDevice0.limits
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 1304,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder3.dispatchWorkgroups(87, 96, 63);
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline1);
    const GPUSupportedFeatures4 = GPUAdapter1.features
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits5 = GPUDevice0.limits
    const string35 = GPUComputePipeline3.label
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup2);
    const boolean3 = GPUAdapter3.isFallbackAdapter
    const GPUSupportedLimits6 = GPUAdapter3.limits
    const GPUTextureView6 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 9,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView6"
    });
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline3);
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline2);
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray8);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder3.dispatchWorkgroups(23, 23, 64);
    GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer0);
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup1);
    GPUQueue0.submit([GPUCommandBuffer3]);
    const string36 = GPUCommandEncoder4.label
    GPURenderPassEncoder5.end();
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline2);
    const string37 = GPUQuerySet2.label
    const GPUSupportedFeatures5 = GPUDevice0.features
    const string38 = GPUQuerySet1.type
    const string39 = GPUQuerySet0.label
    const GPUSupportedFeatures6 = GPUDevice0.features
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 2455,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline3);
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture7",
        size: {
            width: 1767,
            height: 2056,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView7 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView7"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5244136726621327,
                g: 0.3322627763849675,
                b: 1.688655631510371,
                a: 1.4163752013414037
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView7
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 2535464159,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder6.end();
    const GPUBindGroupLayout0 = GPUComputePipeline2.getBindGroupLayout(0);
    const string40 = GPURenderPipeline3.label
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder2.dispatchWorkgroups(177, 200, 3);
    const GPUSupportedLimits7 = GPUAdapter4.limits
    const string41 = GPUCommandEncoder6.label
    const string42 = GPUComputePassEncoder3.label
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 3467,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture8",
        size: {
            width: 578,
            height: 586,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView8 = GPUTexture8.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "GPUTextureView8"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3835452783254154,
                g: 1.5284082071850777,
                b: 1.135477434288371,
                a: 0.4063201526315028
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView8,
            depthSlice: 14
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 568785393,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline6",
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    const GPUQueue3 = GPUDevice0.queue
    GPURenderPassEncoder7.draw(7);
    const string43 = GPUQuerySet2.type
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    GPUComputePassEncoder3.end();
    const GPUCommandBuffer5 = GPUCommandEncoder7.finish();
    GPUQueue2.submit([GPUCommandBuffer5]);
    const GPUSupportedLimits8 = GPUAdapter0.limits
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup2);
    const GPUComputePassEncoder4 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    const GPUBindGroupLayout1 = GPUComputePipeline3.getBindGroupLayout(0);
    const string44 = GPUComputePassEncoder4.label
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    const GPUSupportedLimits9 = GPUAdapter4.limits
    const string45 = GPURenderPipeline5.label
    const string46 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures7 = GPUAdapter1.features
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder2.dispatchWorkgroups(81, 166, 60);
    const GPUAdapterInfo1 = GPUAdapter1.info
    const string47 = GPUQuerySet2.type
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string48 = GPUComputePassEncoder4.label
    const GPUSupportedLimits10 = GPUAdapter0.limits
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray9);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    GPURenderPassEncoder7.end();
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup1);
    const GPUBindGroupLayout2 = GPUComputePipeline3.getBindGroupLayout(0);
    GPUQueue3.writeBuffer(GPUBuffer1, 24, typedArray10);
    const string49 = GPUTextureView5.label
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture9",
        size: {
            width: 3239,
            height: 527,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView9 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView9"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.15123435875324143,
                g: 0.013520005212635633,
                b: 1.3713664160084431,
                a: 1.9612007991388118
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView9
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 2330084586,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer0);
    const string50 = await navigator.gpu.getPreferredCanvasFormat();
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
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
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.RED
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    GPURenderPassEncoder8.end();
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder2.dispatchWorkgroups(149, 251, 63);
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture10",
        size: {
            width: 600,
            height: 802,
            depthOrArrayLayers: 41
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView10 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "bgra8unorm",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6223456697637735,
                g: 0.4345736882114306,
                b: 1.4448773275165343,
                a: 0.34332297785285726
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView10,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 2313817721,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedLimits11 = GPUDevice0.limits
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 37164704,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUComputePassEncoder2.end();
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "constant"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline8);
    GPURenderPassEncoder9.draw(1);
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 27914888,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE
    });
    const GPUSupportedLimits12 = GPUAdapter1.limits
    const GPUAdapterInfo2 = GPUAdapter5.info
    const GPUSupportedLimits13 = GPUAdapter4.limits
    const GPUSupportedLimits14 = GPUAdapter0.limits
    const string51 = GPUQuerySet4.label
    const GPUBindGroupLayout3 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture11",
        size: {
            width: 263,
            height: 177,
            depthOrArrayLayers: 64
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm"]
    });
    const string52 = GPUQueue1.label
    const string53 = GPUComputePassEncoder4.label
    const GPUSupportedLimits15 = GPUAdapter1.limits
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture12",
        size: {
            width: 3774,
            height: 2375,
            depthOrArrayLayers: 64
        },
        mipLevelCount: 12,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView11 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgba8unorm",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7943261328225732,
                g: 0.26395002571167137,
                b: 1.1438895048508781,
                a: 0.9879381144706723
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 2841356611,
        occlusionQuerySet: GPUQuerySet4
    });
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 1675,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: false,
        size: 247755964,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUBindGroupLayout5 = GPUComputePipeline0.getBindGroupLayout(0);
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder9.draw(6);
    const string54 = GPUDevice0.label
    const string55 = GPUTextureView9.label
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup0);
    const GPUTextureView12 = GPUTexture8.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView12"
    });
    const GPUBindGroupLayout6 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string56 = GPUQueue3.label
    const string57 = GPURenderPipeline2.label
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder4.dispatchWorkgroups(52, 61, 20);
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture13",
        size: {
            width: 922,
            height: 51,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView13 = GPUTexture13.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.370528167170012,
                g: 1.8272996347093389,
                b: 0.039503065280510175,
                a: 1.3936793355322767
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView13
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 4112161814,
        occlusionQuerySet: GPUQuerySet6
    });
    const string58 = GPUCommandEncoder11.label
    const string59 = GPUComputePassEncoder4.label
    const GPUComputePassEncoder5 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline8);
    GPUComputePassEncoder4.end();
    const GPUCommandBuffer6 = GPUCommandEncoder6.finish();
    GPUQueue3.submit([GPUCommandBuffer6]);
    const string60 = GPUQuerySet3.count
    const GPUAdapterInfo3 = GPUAdapter3.info
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 862,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture14",
        size: {
            width: 223,
            height: 20,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView14 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7739935556033173,
                g: 1.1837371097185234,
                b: 0.09153233823140505,
                a: 1.1097083937121495
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView14,
            depthSlice: 14
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 3657294704,
        occlusionQuerySet: GPUQuerySet0
    });
    GPUQueue2.writeBuffer(GPUBuffer5, 159914732, typedArray11);
    const GPUBindGroupLayout7 = GPUComputePipeline3.getBindGroupLayout(0);
    const string61 = GPUComputePipeline0.label
    const GPUAdapterInfo4 = GPUAdapter2.info
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture15",
        size: {
            width: 1839,
            height: 3936,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const GPUTextureView15 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView15"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8119484372332493,
                g: 1.977781093536057,
                b: 0.8842497038669948,
                a: 0.9982433244338238
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView15
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 1712031013,
        occlusionQuerySet: GPUQuerySet6
    });
    const string62 = GPUComputePipeline1.label
    const boolean4 = GPUAdapter7.isFallbackAdapter
    const GPUQueue4 = GPUDevice0.queue
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const string63 = GPURenderPipeline6.label
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder12.draw(9);
    const GPUSupportedFeatures8 = GPUDevice0.features
    const string64 = GPUQuerySet4.label
    const string65 = GPUDevice0.label
    const GPUSupportedLimits16 = GPUDevice0.limits
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer5);
    const GPUTextureView16 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 3,
        format: "rgb10a2unorm",
        label: "GPUTextureView16"
    });
    const string66 = GPURenderPipeline1.label
    const GPUSupportedLimits17 = GPUAdapter8.limits
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader4
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup2);
    const GPUSupportedLimits18 = GPUAdapter6.limits
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    GPUQueue4.writeBuffer(GPUBuffer5, 226352568, typedArray12);
    const string67 = GPURenderPipeline2.label
    const string68 = GPUQuerySet3.count
    GPUQueue3.writeBuffer(GPUBuffer1, 12, typedArray13);
    const GPUSupportedLimits19 = GPUAdapter3.limits
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture16",
        size: {
            width: 1610,
            height: 2772,
            depthOrArrayLayers: 18
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
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
    const GPURenderPassEncoder14 = GPUCommandEncoder14.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6953177303438205,
                g: 0.05052248984302321,
                b: 0.7555640622579738,
                a: 0.7465579485445506
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 1565937643,
        occlusionQuerySet: GPUQuerySet1
    });
    const string69 = GPURenderPassEncoder9.label
    const GPUSupportedLimits20 = GPUAdapter5.limits
    const GPUQueue5 = GPUDevice0.queue
    const GPUCommandBuffer7 = GPUCommandEncoder12.finish();
    GPUQueue5.submit([GPUCommandBuffer7]);
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture17",
        size: {
            width: 1990,
            height: 1408,
            depthOrArrayLayers: 64
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView18 = GPUTexture17.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3396714648103232,
                g: 1.1042081639477044,
                b: 0.019559054825173616,
                a: 0.10399207869511273
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 2955941537,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPUTextureView19 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 34,
        baseArrayLayer: 2,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView19"
    });
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const string70 = GPUQuerySet3.count
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder5.dispatchWorkgroups(125, 141, 51);
    const GPUSupportedLimits21 = GPUDevice0.limits
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup1);
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUComputePassEncoder6 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline2);
    const GPUBindGroupLayout8 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUSupportedFeatures9 = GPUAdapter7.features
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup3);
    GPURenderPassEncoder13.end();
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 262816364,
        usage: GPUBufferUsage.MAP_READ
    });
    GPURenderPassEncoder10.end();
    const GPUBindGroupLayout9 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const string71 = GPUQuerySet3.type
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const string72 = GPUCommandEncoder10.label
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline9);
    GPURenderPassEncoder11.draw(6);
    const GPUSupportedLimits22 = GPUAdapter7.limits
    const string73 = GPUComputePassEncoder6.label
    const GPUAdapterInfo5 = GPUAdapter6.info
    const GPUAdapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTextureView20 = GPUTexture8.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView20"
    });
    const string74 = GPUCommandEncoder11.label
    const GPUSupportedLimits23 = GPUAdapter0.limits
    const string75 = GPUQuerySet1.count
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline2);
    GPURenderPassEncoder9.end();
    const GPUCommandBuffer8 = GPUCommandEncoder8.finish();
    GPUQueue5.submit([GPUCommandBuffer8]);
    const boolean5 = GPUAdapter2.isFallbackAdapter
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUBindGroupLayout10 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture18",
        size: {
            width: 2276,
            height: 1157,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView21 = GPUTexture18.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView21"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9648477311150059,
                g: 1.3714635165491085,
                b: 0.9995569789350249,
                a: 0.34735563328551833
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView21
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 287978096,
        occlusionQuerySet: GPUQuerySet7
    });
    const string76 = GPUCommandEncoder11.label
    const string77 = GPUTextureView9.label
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 326,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const string78 = GPUQueue1.label
    GPUQueue4.writeBuffer(GPUBuffer1, 0, typedArray14);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline1);
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader5
    });
    GPURenderPassEncoder12.end();
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 83018448,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX
    });
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader6
    });
    const string79 = GPURenderPassEncoder11.label
    GPURenderPassEncoder15.end();
    const GPUCommandBuffer9 = GPUCommandEncoder15.finish();
    const string80 = GPUQuerySet8.label
    const string81 = GPURenderPassEncoder16.label
    GPURenderPassEncoder16.end();
    const GPUQueue6 = GPUDevice0.queue
    const string82 = GPUQuerySet0.label
    GPUComputePassEncoder6.end();
    GPURenderPassEncoder11.draw(1);
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray15);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup3);
    const string83 = GPUQuerySet3.count
    const string84 = GPUDevice0.label
    const GPUSupportedLimits24 = GPUAdapter0.limits
    GPUQueue1.writeBuffer(GPUBuffer3, 32348052, typedArray16);
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8sint",
        label: "GPUTexture19",
        size: {
            width: 227,
            height: 602,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8sint"]
    });
    const string85 = GPUQuerySet2.type
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
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
                        operation: "add",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline10);
    GPURenderPassEncoder14.draw(8);
    const string86 = GPURenderPipeline0.label
    const GPUAdapter12 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTextureView22 = GPUTexture17.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 45,
        baseArrayLayer: 12,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView22"
    });
    const GPUComputePassEncoder7 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture20",
        size: {
            width: 145,
            height: 672,
            depthOrArrayLayers: 2
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView23 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder17 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5041318289090866,
                g: 0.23606187741396267,
                b: 1.1792777184230145,
                a: 0.16186056184800823
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView23,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder17",
        maxDrawCount: 309254470,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUAdapter13 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline11",
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
            module: GPUShaderModule1
        }
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 1486,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const string87 = GPUCommandEncoder10.label
    const string88 = GPUQuerySet2.type
    GPUQueue5.submit([GPUCommandBuffer9]);
    const string89 = GPUTextureView19.label
    const GPUAdapterInfo6 = GPUAdapter5.info
    const GPUSupportedFeatures10 = GPUDevice0.features
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray17);
    GPURenderPassEncoder11.draw(1);
    GPURenderPassEncoder14.end();
    const GPUCommandBuffer10 = GPUCommandEncoder14.finish();
    GPUQueue4.submit([GPUCommandBuffer10]);
    const string90 = GPUQuerySet9.count
    const string91 = GPUComputePassEncoder5.label
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const string92 = GPUQuerySet5.label
    const string93 = GPURenderPassEncoder17.label
    const string94 = GPUDevice0.label
    const string95 = GPUQuerySet4.label
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder17.draw(1);
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: true,
        size: 164596392,
        usage: GPUBufferUsage.STORAGE
    });
    const string96 = GPUComputePipeline2.label
    GPUComputePassEncoder5.end();
    const string97 = GPUQuerySet0.count
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline2);
    const GPUSupportedFeatures11 = GPUAdapter3.features
    const string98 = GPUTextureView20.label
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder17.end();
    const string99 = GPUQueue2.label
    GPURenderPassEncoder11.end();
    const GPUCommandBuffer11 = GPUCommandEncoder4.finish();
    GPUQueue6.submit([GPUCommandBuffer11]);
    const GPUBindGroupLayout11 = GPUComputePipeline4.getBindGroupLayout(0);
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture21",
        size: {
            width: 509,
            height: 703,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView24 = GPUTexture21.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView24"
    });
    const GPURenderPassEncoder18 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8148083170616645,
                g: 1.7360255644104583,
                b: 1.6577022679836344,
                a: 1.990479373972013
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView24,
            depthSlice: 3
        }],
        label: "GPURenderPassEncoder18",
        maxDrawCount: 2713955923,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder18.setVertexBuffer(0, GPUBuffer5);
    const string100 = GPUQueue6.label
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline5);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder7.dispatchWorkgroups(212, 49, 49);
    const GPUCommandBuffer12 = GPUCommandEncoder10.finish();
    const string101 = GPUQuerySet7.label
    const GPUCommandBuffer13 = GPUCommandEncoder9.finish();
    const string102 = GPUComputePipeline3.label
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline5);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder7.dispatchWorkgroups(8, 135, 29);
    const GPUSupportedLimits25 = GPUDevice0.limits
    const GPUSupportedFeatures12 = GPUDevice0.features
    const string103 = GPUComputePassEncoder7.label
    const string104 = GPUQuerySet1.label
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    GPUQueue5.writeBuffer(GPUBuffer1, 28, typedArray18);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder7.dispatchWorkgroups(89, 216, 28);
    const string105 = GPUDevice0.label
    const string106 = GPUQuerySet3.type
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture22",
        size: {
            width: 1122,
            height: 3783,
            depthOrArrayLayers: 40
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView25 = GPUTexture22.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg16float",
        label: "GPUTextureView25"
    });
    const GPURenderPassEncoder19 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1246260049339256,
                g: 1.7621737702676181,
                b: 0.9219630224438697,
                a: 0.23893032338051623
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView25
        }],
        label: "GPURenderPassEncoder19",
        maxDrawCount: 1341966246,
        occlusionQuerySet: GPUQuerySet9
    });
    const string107 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder7.end();
    const string108 = GPUQueue4.label
    const string109 = GPUCommandEncoder11.label
    const string110 = GPUDevice0.label
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUSupportedLimits26 = GPUDevice0.limits
    GPURenderPassEncoder18.setVertexBuffer(0, GPUBuffer5);
    const GPUSupportedFeatures13 = GPUAdapter11.features
    const GPUComputePassEncoder8 = GPUCommandEncoder19.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline4);
    const GPUTextureView26 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView26"
    });
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: true,
        size: 87439292,
        usage: GPUBufferUsage.UNIFORM
    });
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader7
    });
    GPURenderPassEncoder18.end();
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 2768,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    GPUQueue5.writeBuffer(GPUBuffer5, 138448180, typedArray19);
    const string111 = GPUComputePipeline0.label
    const GPUBindGroupLayout12 = GPUComputePipeline4.getBindGroupLayout(0);
    const string112 = GPUQueue0.label
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 1808,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    GPURenderPassEncoder19.setVertexBuffer(0, GPUBuffer0);
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule7,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule1
        }
    });
    const GPUBuffer10 = GPUDevice0.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: false,
        size: 151757408,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX
    });
    const string113 = GPUComputePipeline5.label
    GPUQueue6.writeBuffer(GPUBuffer1, 0, typedArray20);
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
    const GPUComputePassEncoder9 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray21);
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
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup8);
    const string114 = GPUQueue4.label
    const string115 = GPUQueue1.label
    const string116 = GPUComputePassEncoder8.label
    const GPUComputePassEncoder10 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const string117 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUAdapterInfo7 = GPUAdapter13.info
    const string118 = GPURenderPipeline7.label
    const string119 = GPUComputePassEncoder10.label
    const string120 = GPUTextureView10.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup8);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline5);
    const string121 = GPUCommandEncoder18.label
    const GPUSupportedFeatures14 = GPUAdapter13.features
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray22);
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
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const GPUTextureView27 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView27"
    });
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule2
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUSupportedLimits27 = GPUAdapter9.limits
    const GPUSupportedFeatures15 = GPUDevice0.features
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray23);
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
    const GPUTextureView28 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba8unorm",
        label: "GPUTextureView28"
    });
    GPURenderPassEncoder19.end();
    GPUQueue6.writeBuffer(GPUBuffer5, 3867928, typedArray24);
    const string122 = GPUDevice0.label
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 379,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPUComputePassEncoder11 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture23",
        size: {
            width: 109,
            height: 2095,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    GPUQueue5.writeBuffer(GPUBuffer1, 0, typedArray25);
    const GPUBindGroup11 = GPUDevice0.createBindGroup({
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
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture24",
        size: {
            width: 266,
            height: 683,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView29 = GPUTexture24.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView29"
    });
    const GPURenderPassEncoder20 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.25323217280862376,
                g: 1.0013748842299437,
                b: 1.0906373640143163,
                a: 1.9440597521745198
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView29,
            depthSlice: 14
        }],
        label: "GPURenderPassEncoder20",
        maxDrawCount: 2832332559,
        occlusionQuerySet: GPUQuerySet0
    });
    GPUQueue1.submit([GPUCommandBuffer13]);
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup11);
    const GPUAdapter14 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder20.end();
    GPUQueue2.writeBuffer(GPUBuffer3, 9435920, typedArray26);
    const string123 = GPUDevice0.label
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture25",
        size: {
            width: 501,
            height: 600,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView30 = GPUTexture25.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView30"
    });
    const GPURenderPassEncoder21 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5381004467910864,
                g: 1.4167216210093228,
                b: 0.24884583451195463,
                a: 1.4273244526875475
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView30,
            depthSlice: 8
        }],
        label: "GPURenderPassEncoder21",
        maxDrawCount: 431905524,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.ALL
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
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder21.setPipeline(GPURenderPipeline14);
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures16 = GPUAdapter0.features
    const string124 = GPUComputePassEncoder11.label
    const GPUBuffer11 = GPUDevice0.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 158798912,
        usage: GPUBufferUsage.INDIRECT
    });
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup7);
    const GPUSupportedFeatures17 = GPUDevice0.features
    const GPUSupportedLimits28 = GPUDevice0.limits
    const string125 = GPURenderPipeline12.label
    GPUQueue0.submit([GPUCommandBuffer12]);
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder10.dispatchWorkgroups(197, 27, 7);
    const GPUAdapter15 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder21.draw(7);
    const GPUTextureView31 = GPUTexture24.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView31"
    });
    GPURenderPassEncoder21.draw(2);
    const GPUSupportedLimits29 = GPUDevice0.limits
    const string126 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder11.dispatchWorkgroups(255, 189, 27);
    const string127 = GPUDevice0.label
    const GPUTextureView32 = GPUTexture21.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView32"
    });
    const GPUSupportedLimits30 = GPUDevice0.limits
    const string128 = GPUQuerySet3.label
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup10);
    const GPUQueue7 = GPUDevice0.queue
    const string129 = GPUCommandEncoder16.label
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline4);
    const GPUSupportedFeatures18 = GPUAdapter4.features
    const GPUSupportedFeatures19 = GPUDevice0.features
    const GPUSupportedFeatures20 = GPUAdapter0.features
    GPURenderPassEncoder21.setPipeline(GPURenderPipeline14);
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    GPUQueue0.writeBuffer(GPUBuffer3, 16478380, typedArray27);
    const GPUBuffer12 = GPUDevice0.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: true,
        size: 44767760,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC
    });
    GPURenderPassEncoder21.end();
    const GPUComputePassEncoder12 = GPUCommandEncoder21.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const GPUQueue8 = GPUDevice0.queue
    const GPUBindGroupLayout13 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUTextureView33 = GPUTexture17.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView33"
    });
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader9
    });
    GPUComputePassEncoder9.end();
    const string130 = GPUComputePassEncoder12.label
    const GPUCommandBuffer14 = GPUCommandEncoder23.finish();
    const string131 = GPURenderPipeline2.label
    const string132 = GPURenderPipeline6.label
    GPUComputePassEncoder10.end();
    const GPUCommandBuffer15 = GPUCommandEncoder20.finish();
    GPUQueue8.writeBuffer(GPUBuffer5, 215856508, typedArray28);
    GPUQueue2.writeBuffer(GPUBuffer3, 30229092, typedArray29);
    const string133 = GPUCommandEncoder18.label
    const string134 = GPUDevice0.label
    const boolean6 = GPUAdapter1.isFallbackAdapter
    const string135 = GPUQuerySet9.count
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture26",
        size: {
            width: 616,
            height: 729,
            depthOrArrayLayers: 59
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView34 = GPUTexture26.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView34"
    });
    const GPURenderPassEncoder22 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7888903940631762,
                g: 1.7359850115875333,
                b: 0.2401276641162553,
                a: 0.4852418186838807
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView34,
            depthSlice: 19
        }],
        label: "GPURenderPassEncoder22",
        maxDrawCount: 189954754,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder22.setPipeline(GPURenderPipeline13);
    GPURenderPassEncoder22.draw(10);
    GPURenderPassEncoder22.setPipeline(GPURenderPipeline13);
    const GPUBuffer13 = GPUDevice0.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: true,
        size: 204435328,
        usage: GPUBufferUsage.INDEX
    });
    const GPUAdapterInfo8 = GPUAdapter1.info
    const GPUTextureView35 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView35"
    });
    GPUComputePassEncoder11.end();
    const GPUTextureView36 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView36"
    });
    const boolean7 = GPUAdapter2.isFallbackAdapter
    GPURenderPassEncoder22.draw(6);
    const GPUAdapterInfo9 = GPUAdapter9.info
    const string136 = GPUTextureView1.label
    const GPUAdapter16 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string137 = GPUTextureView28.label
    const string138 = await navigator.gpu.getPreferredCanvasFormat();
    const string139 = GPUCommandEncoder22.label

}
main().catch(console.error);