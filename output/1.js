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
const typedArray33 = new Float32Array([-2696, -1445, 3461, 1048, 8671, -2512, -6774, 2772, -4711])
const shader11 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray32 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray31 = new Uint8Array([-9588, -8217, -1532, 8479, 2585, 8712, -3763, -5526, 5582, 7065, -8377, -8386, 4287, -3672, 8536, 3937, -9903, 3759, 4213, 5995, -6195, -6282, 3939, -766, 3977, 7909, -3819, -4716, -3421, 1992, -8358, -6519, 8795, -9239, -4965, 2380, -2032, -2197, -4639, 7758, -4503, 8865, 2586, 3579, -6267, 9597, -8080, -4510, 7189, 1049, 5591, -7598, -5955, -2952, 3341, -6499, 7611, -7192, 5799, 550, -3281, -8033, -4611, 3993, 1414, -9509, -6285, -1184, 6339, 4324, 8382, -1775, -7792, 3284, 6600, 5208, -594, -7209, 2138, -3754, -4933, -8681, -9559, 7418, 6816, 9794, -667, -9709, -5070, -4697, -5369, -2479, -6000, 8700, -6633, 9955, 4142, -3478, 3281, -640, 5541, -108, -8253, 9623, 2011, -5859, -7396, 9425, 2190, -1711, 7143, -8671, -6412, -6687, 7594, -6484, 1382, -1017, -4327, 4976, -9718, 6438, -9178, 3588, 1805, 3355, -2696, -9456, 4119, 8706, 3974, -3269, -524, 4264, -5235, 8210, 7254, -9012, 9453, -8111, -5528, 1486, -747, -6868, -2505, -7987, 3228, -9671, -3291, 7657, -1547, -8574, -8679, 8661, -1578, -5294, -4066, 1590, 1480, 6438, 8916, 2212, -106, 242, 6557, 9927, -9316, 7715, -268, -6076, -4170, 2984, -6185, 7295, -2985, 9898, 1024, -5499, 3086, 3083, -5917, 6090, 6525, 7665, -7758, 4415, 8497, 218, -6199, -2756, 6933, 7563, -8829, -6230, -9031, -3302, -330, -1712, 3147, -8798, -4906, 553, 4127, -4128, -1218, 5616, -6912, 4902, 2980, 9543, -5385, 4033, 6208, -4562, 1838, 7156, 7895, 5823, 6863, -1254, 5888, 6975, -3323, 8993, -7804, 4528, 5689, -474, 3907, 5357, 2679, -1990, 1963, 432, -1510, 3902, 5259, 8111, -1866, 5987, 3698, -7963, -937, -3567, 6301, 9594, 5967, 7141, -1442, -4068, -849, 3784, -793, 2361, -2474, 4055, -2665, 3945, -8905, 781, 3929, 5529, -9828, -8669, -1428, 8873, 3115, -1265])
const typedArray30 = new Float32Array([2439, -2206, 5997, 9974, 1965, 9836, 5223, -8890, 9871, 4549, 4550, -9051, 8163, 8235, 3281, -9021, 4839, -6179, 9740, 6369, 1915, 3443, 3311, -3743, 575, -7658, 8651, 533, 6088, -1847, 3495, -1436, 2903, 7315, 3163, -4582, -8202, 4409, 7219, 9354, 4917, -5369, -1676, -2136, -9882, 5588, -8370, -7056, 9070, -8985, -33, 6705, -162, 8709, 5347, 7595, -4886, -1569, -732, 6598, 5149, 5202, -2801, -9528, 5473, 5928, -4018, 5422, 1785, 4181, 8788, 6750, 5977, -4466, -6329, -2885, -9801, 5225, -2359, 600, 9780, 9663, 3319, -4709, 371, -7472, -6009, -6677, -5166, -1896, 979, 4093, 3600, -1869, 5126, -2237, 4006, 5259, -1890, 3059, 6089, 3374, 7023, 5959, -5650, 1736, -5865, 6994, 991, 4360, 1565, 1435, -215, -9174, 4197, -7063, -3070, -8006, -159, -2944, -5601, -3959, -7337, 6221, 930, -9822, -9156, 9017, -8903, -3711, 9867, -6337, 7590, 5231, -9659, 2267, -9076, -6600, -1072, 7064, 2039, -2142, 9227, -5023, -3014, -6121, 1124, 9087, -4714, 2294, 7533, 5376, 8001, 5959, -5959, -6763, -734, -2624, 7356, -2140, -3793, -8798, 1418, 4957, 3201, -7563, 9154, 5037, 7979, -7116, 936, 1912, -7274, -6593, 2274, -8400, 1697, -9493, -8231, -7173, 5631, -319, 2194, -8867, 5921, 3559, 5252, -9814, 8563, -4804, -5981, -1637, 1205, 7869, -6464, 7241, 4021, -6470, 821, -2554, -1645, 7321, 6893, 8845, 7382, 3297, 4997, 3745, -805, 1711, -4559, -2206, 987, -8980, 4029, -7873, 1365, -5736, -9637, 559, 9707, -2253, -288, 6221, 90, -8, -4287])
const typedArray29 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray28 = new Int8Array([221, -3513, 1064, -2885, -4352, -5476, 8907, -7188, -23, 3038, 7225, -1962, -5720, -1599, -3528, 9718, -4500, 7864, 3834, -4252, -3607, -7806, -4154, 1538, -2406, -2532, -8769, -173, -8480, 7952, -8724, 5944, 3837, -39, 3037, 612, 170, 4293, 7694, 724, -9378, 9549, 3804, -1032, 6870, -3053, 8526, -5933, -4787, 2078, -9915, -7305, 5139, 9066, 9705, 4869, 8606, 1835, 5033, 8522, 5320, -4897, 2273, -2502, 3723, -8879, -131, -5611, 6705, -7279, 6263, -1051, 9004, 3983, 1162, 8279, -6814, 4978, -8656, 1887, 868, -6574, 9296, -6424, 64, 2061, -9060, -2581, 1793, 6026, 919, -6026, 4150, 3217, -3289, -5677, -1021, -7859, 3461, -7065, 6735, -4783, -5262, -3732, -6124, 8138, -7963, 5762, 1401, 5177, -8072, 1551, 2734, 5342, -3356, -158, -5130, 9005, -7754, -6839, 4261, -8262, -8818, -1533, 6116, 8318, -4370, 1903, 5699, -997, 351, 3758, 4470, -3383, 3966, 6343, 7331, 3231, -590, -212, -430, 3204, 6569, -932, 9642, -9555, 2114, 4632, -1338, -7429, 9159, -5926, 55, -2214, 4976, 2431, 5620, -7147, -2619, 9345, 5645, 575, -6928, 5033, 4959, -4404, -7186, 7389, 4171, 4928, -8558, -2953, -2175, 9951, 9223, 3295, 7083, 5648, 845, 6490, -5118, 7980, 1811, -7903])
const typedArray27 = new Int8Array([3245, -9755, -3488, -8678, -3636, 5808, 4552, -905])
const typedArray26 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader10 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray25 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader9 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray24 = new Uint8Array([1901, -4423, 8699, -6602, 9378, 2793, -8953, 5676, 2237, 739, -8214, 2079, 109, 5481, -2209, -251, 2086, 6738, -1909, -8004, -4948, -3269, 6756, 590, -7816, 8446, -7829, -9264, -3526, -8557, 8398, 6624, 2610, 1199, -447, -2677, -9301, -8620, -7231, -6371, -3985, 4473, 5993, -4022, -6593, 8648, 8200, -2669, 9341, 6352, -3462, 8046, -9005, 529, -4714, -2052, 917, 3421, -4874, -857, -7718, 6617, 6318, -6264, -9728, 3409, -9097, 9214, -6974, -5509, 2313, 338, 4269, -1103, 4356, -2579, 6098, -7210, 9972, -6645, 9168, 1302, 2892, -6172, 5996, 4250, 3828, 7037, 3580, 8443, -5042, -7242, -2781, 4721, -7280, -640, 3178, 1171, 392, 2372, 7386, 762, 9804, -3637, 9216, 3354, -8210, 2442, 8399, 498, 2920, -3247, 1564, 9439, -4125, 9003, 5243, 4979, 9610, -488, 1143, 7627, 830, 254, -6371, 7326, -1361, -1442, 9928, 5749, -9725, -269, 9792, -8559, 5957, -6476, -3147, -6592, -6883, 2051, -9390, -4986, 7272, -6355, -7338, -9004, 8038, -9877, 6827, -9472, 629, 8490, 3100, -8170, 2529, 8603, -3022, 4278, -7409, 757, 1061, -1782, -7414, -6340, -7380, -2415, -2052, 3442, -3015, 1720, -1801, 1181, 7644, 4756, -3913, -2220, -6501, -4469, 6217, 619, -5820, -1583, -3065, 4865, 7391, -3760, 3905, -2144, 7252, -136, -9543, -5680, 5140, 1810, -5408, -7667, -3788, -9697, -3500, -1674])
const typedArray23 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray21 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray20 = new Uint8Array([3195, -8640, 403, -7073, 2026, -6509, -192, -840, -9625, 459, -702, -221, -7792, 3614, -1376, 4528, -1391, -8958, 6173, 7896, 6877, 6361, 8739, 6541, -7574, -6842, -6054, 7108, 5627, -407, 1584, 921, 6709, 8149, -3827, 861, -3818, 6995, 9157, -2973, -712, -3350, 813, -3567, -5370, 4034, 5093, 9739, 2991, -4024, -6612, -3096, 69, -7930, 7457, -8279, -4328, 4148, -8556, 9349, 3961, 9302, 5598, -3579, 8036, -1301, -4759, -2289, 3957, 6107, 7854, -3571, -5494, -7895, 7175, -357, -5248, 8750, 9814, -4950, 1251, -8853, 4588, 4301, -7035, 8885, 9719, 408, 6801, 9382, -4243, -652, 9421, 5472, 8248, 8728, -369, -9670, 9665, -6921, -6310, 7293, -6113, -7853, -8917, 6652, -3916, 7419, 3406, -1246, 3736, 7879, -4378, 5004, -6785, 4496, 5661, -6083, -1968, 9063, -5660, 9062, -5810, 5342, 4158, 1167, 5493, -1784, -5452, 600, 6257, -6369, -8601, 2477, -1281, -4902, 4626, -5971, -9182, -8694, -7501, 7506, 8336, 5277, 9634, -8817, -3764, 9661])
const typedArray19 = new Uint8Array([1231, -9903, 8756, 6432, -966, -4515, -9410, -1458, -1219, 2015, 3431, -6734, 4486, -5722, -9155, -4692, -6607, 7603, 4792, 9808])
const shader8 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader7 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray18 = new Uint8Array([-6760, -7717, 2163, -1755, -742, 12, -3380, -7958, -9036, -5217, -7059, -2377, 5533, -6508, -2800, 8788, 2819, -911, 4080, -32, -4337, -6721, -6415, -4608])
const shader6 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader5 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray17 = new Int8Array([-4029, 6683, -3304, 5602, 125, 7760, -8361, 6116, -7430, 2315, -6231, 5705, 8717, -867, 5945, 959, 179, -254, 7969, 6356, 8656, 3257, -1715, -7943, 738, 3249, 6933, -5425, -1107, 7576, -3570, -7016, 3298, 8760, -2203, -3491, -2625, -9383, 9947, 4476, -2404, 6234, -5300, -4484, 3215, -2613, -7277, -9477, -7054, 3234, 8046, 4001, 7499, 6345, -4389, -1389, 9291, 2456, -1370, 7559, -9941, -9737, 3471, -129, 9124, -7980, 7385, 2200, -9244, 1561, -7474, -2479, 7798, 535, 429, 9078, 6928, 9776, -7296, 6922, 4934, 4125, -3338, -7161, 2752, 1741, -2204, 9685, 7658, -3295, -3800, -5254, 3657, 9035, 1455, 2928, -8151, -2897, 7492, -1045, 5425, -6349, 7169, -2223, -2877, 6778, 7433, 7915, -1653, -8075, -1878, 5915, -4827, -8381, 4918, 6314, 2938, -5032, 3337, -9888, -8595, 6744, -8602, 1727, -613, -5956, -2174, 8701, 9873, 7353, -4403, -2719, -5242, -6375, -8193, 5631, -5811, -6564, -447, -9456, -7880, -6436, -5956, -4464, -8038, -6552, 5631, -4142, -3003, -411, -4717, -1880, 8355, 1666, 4043, 559, 519, 9109, 656, -5173, 8884, -8721, 9700, -8689, -1192, -7409, 6235, 8002, -2819, -7764, 688, 1416, 1938, -1680, 6089, -5644, 9387, 4805, 9373, 2150, 2347, -9361, 3721, 2456, 6983, 6117, -2852, 976, -496, -8339, -4413, 6258, -8964, 9994, 6188, -1652, 5412, 5850, 5996, -5660, -7325, -9429, -947, -4968, -9088, -9736, 6312, -4174, -8821, 4448, 5279, -6898, -3565, -382, -8287, 1363, 5373, -4466, 9559, -8907, -4848, 8618, 7353, -1626])
const typedArray16 = new Int8Array([6037, 2509, -1610, 8789, 9165, -6133, -7763, -5417, 3587, -2209, 379, 3556, 7060, -9127, -5628, -4064, -579, 8852, 2520, -7603, 9027, 2596, -591, 1522, -722, -5546, -2990, 9536, 9636, 8797, -9257, 5052, 205, -2116, 6366, -4963, -6562, -6723, -8322, 9183, -5133, -3760, 9196, 1132, -36, 6373, -6865, 1233, -6256, -1374, 2884, 6817, -7027, 4802, 5109, 6101, -4185, 8467, 1369, 469, -6835, -8456, 8987, 4046, 1723, -33, -8003, 5975, 5628, -3968, 1118, -6913, -6059, -910, 1706, -4367, -8148, 7626, -9357, -3765, 8791, -8711, -1677, -2591, -1306, -2514, 7839, -4293, 3777, -4365, -2835, 7246, 9328, 7637, 7164, 4807, 7557, -5606, 2785, -4487, 8193, 8953, 2433, -5256, -7442, -4958, -2218, 5960, 7601, -8538, -591, -1870, -67, -8551, 8818, 7667, -8721, 4352, -6815, -1021, -8912, -4033, 2018, 170, 5553, -3855, -3751, -8531, -8743, -2764, -9756, 5252, 374, -3826, -5992, 261, -4646, -9176, 2284, -8775, 6895, 1602, 1197, 2512, 1040, 651, 829, -6364, -6755, 3829, 3888, -2701, 5430, -7057, 1284, -1553, 6252, -9791, 5676, 2540, 461, 9104, 1204, -122, -4512, -5714, 5541, 3741, -3558, 5667, 6907, 5458, 9787, -8842, 2192, -9828, -2086, 5168, 3397, 5625, -5965, 975, 7681, -6310, 4175, 5256, 3043, 3820, -9224, 5928, -7088, -3661, 7147, 2856, 4236, 2797, -3476, 3494, 9564, -2766, -8519, 1422, 3373, 3857, -429, -4230, 2975, 1138, 5547, 8920, -8648, 7689, 5618, 1327, 6406, 4457, 7149, 5713, -1255, -5966, -8613, 9199, 9598, -3878, -7716, -5079, 9578, 3840, -7841, -5433, -2157, 4249, 2693, 2046, -5736, -6137, -2831, 1759, -7155, -1515, 1493, 9423, -2748, 6304, 2566, 7873, -4087, 5444, -8026, 3800, 7880, 9842, 1675, 2584, 3524, 5795, 6963, 5115, -9292, 2085, -8002, -9575, -844, 4044, 2149, 1285, 5423, -5926, 9122, -8586, -1052, -8987, 3529, -1616, 9962, 8898, -5717, -492, -5328, 1045, -7307, 3783, 9692, -4705, 5453, -4300, 9736, -4938, -8377, -870, -3379, 3545, -1482, 1176, 8441, 5533, 9397, -268, 5758, 5418, 1967, 7041, -4900, 1525, -9124, -9543, 6156, -7030, 7748, -3207, 855, 3174, -8319, 5538, 4965, 1830, -2960, -9930, -5305, -8059, -4496, 4180, -300, -1376, 1028, -6207, 4771, 7306, -545, 3564, 6307, -4726, 7906, -433, 3555, 466, -4249, 3153, -5494, -2367, -4565, -7073, -9788, -2359, 5067, 919, -2578, 5639, 7123, 973, 4905, 1902, 4411, 6386, -584, 9790, -189, -7541, 3039, -161, -3224, 7078, 5297, -87, -8264, -5479, 5779, 1453, 5920, -6726, 7674, 4334, 2130, -7057, -4550, 491, -881, 2621, 1461, 7426, 10, -199, 9524, -1916, 9635, -5201, 10000, -7508, -3981, -5998, -2757, 8226])
const typedArray15 = new Float32Array([4355, -443, -6681, -4941, 6592, 7136, 1556, -8416, 267, -2991, -5559, -8130, 9992, 3612, -37, -2344, -248, -1334, 6107, -1089, -5730, -8289, -3180, -9449, -7632, 5989, 9019, -9704, -8720, -694, -7771, -4195, 597, 169, -1907, -2229, -4850, -7137, 7211, 5854, 9270, -6106, 7996, -7354, 8555, 1555, -6069, -726, 1989, 9768, 6512, -9211, -9010, 702, -4452, -3451, -8981, -9336, -2995, 505, -8874, 215, -8157, 3758, -7951, 4497, 5851, 1122, 455, -9349, 9971, -2862, -5078, 5395, 5043, 668, -1138, -5108, 3705, 6525, -4611, -9662, 2230, 5789, 1826, 5879, -2106, -6902, -5749, -5159, -5537, 8436, 472, -6056, 7241, -7264, -2099, 6715, -1598, 5703, -5720, 7037, -2611, 4001, 3683, 7909, -1161, -4488, -2486, 7295, 5923, -8924, -974, -4266, 1264, 3707, -1948, 7958, -2174, -2951, -9872, -7423, -8792, -2433, -4252, 9065, -4647, -6689, -4345, 9286, 396, -6743, -5429, 4683, -3106, -5334, 4683, -7073, -5575, -4171, -8122, 393, -3166, 9970, 7317, -9769, -2807, -213, -765, 6008])
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray13 = new Int8Array([3246, -6023, -7418, -5191, 5150, -5689, -9172, -9386, 4435, 583, -582, 3645, 6688, 2785, 8273, 515, 9357, -4472, 3600, -7591, 1544, -6637, 5938, 7371, -9003, 8552, -2318, -2649, 4057, -7320, -6803, 8994, 5501, -5024, -2583, 4885, 5329, -9767, -4454, -1053, -8839, 1919, 3521, 1960, 9264, -2436, 2236, -2480, -9199, 3666, 7103, 1503, -5358, -7826, 875, -5091, -8753, -3695, 8650, 1279, -5650, 354, 2732, 3094, -2688, 5972, 3696, 4381, -9510, 3006, -9506, 4680, -5408, -4206, 7060, -9380, -6494, -9883, 8184, -310, -385, -3590, 1748, 1148, 1608, -7366, -1067, -9959, -8078, 4692, -1362, -2118, 6765, -2805, 2744, 175, -5552, 6036, -7749, 9932, -3367, 4545, -7327, 7751, -3695, -9618, 104, 4079, 7685, 9365, -2604, 4963, 228, -4807, 6615, -7950, -8306, 7857, 9883, 384, -326, -4786, -6840, 5154, -2292, -9066, -2201, -4030])
const typedArray12 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader4 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray11 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray9 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray8 = new Float32Array([-536, 8316, -1455, 3264, -1654, -6638, 1092, -8439, 7852, 2153, 1323, -128, -7004, -7832, -5410, 9356, -4232, -4100, 6474, 5592, 241, 6610, 6723, -6447, 6052, 6834, 5407, -1500, -3146, 9291, -5773, -6736, -600, 8051, 1374, -9358, -503, -8164, 7949, -7814, -3535, 9562, -769, 7147, -182, 8204, 8695, -6325, 4439, 2, -2278, 1384, -6679, 2159, 7347, -7035, -6954, 7532, -5077, -104, 6189, 2222, 7699, 3759, -444, 7302, -6323, 3541, 3897, 9267, 8796, -2975, -7556, -7812, 6678, -4426, 9545, 2343, 9443, 6789, 8350, -7059, 162, 5167, 8372, 2048, -1076, -5230, -7789, -8626, -1452, 4241, 6542, 3907, 9328, -8492, 4850, 8686, 8703, 2566, -8366, -7175, -6000, 9104, 2727, 9126, 3931, -886, 8384, 9071, -7948, -8449, 5808, -5772, 9069, -6698, 5435, 7599, -2423, -4045, -4876, 6682, 4211, 8153, -717, 6090, 4708, 2571, -7996, 3251, 2049, 663, 9894, 7242, -7781, -2875, -2864, -6728, 4185, -2073, -2337, 6233, 9691, -940, 8335, -6755, 3761, -8044, -9968, 2313, 7149, -102, -1559, -4886, 361, -1809, 9648, 1890, 4118, 5227, -3484, -3647, -3186, -7552, -2916, 6815, 9535, -6904, 2772, 9091, 2757, -4633, -3595, 8806, 5278, 5829, -6312, -80, 7292, -3852, -1376, -9463, -6386, 4496, -1621, 9327, -6956, -9906, 4673, 8757, -1701, -3750, 4925, -6686, 4972, 1065, 511, 665, 7683, -2588, 2946, 4049, -1964, 6843, 6898, -7854, -1605, 1653, 824, 4387, -1013, -9150, -4365, -4231, -9427, -4206, 4064, 3270, -5849, 3495, -3637, -8989, 9673, 6586, 9380, 8370, -6889, 4630, -7542, -9451, -5342, 7492, 3250, -1816, 5345, 4515, 2129, -9485, -3662, -5570, 4691, -4835, 1932, 416, -5635, 6757, 9543, 9230, -5855, -9753, -9633, -9522, -2254, -4293, -8207, 5722, 2393, 8292, 2086, 9043, 8660, -8302, -4197, -4720, -2957, -8470, 5339, -8936, -2369, 6491, 5394, 5668, 4149, 6309, -5981, 7491, -3565, 6035, -1466, 9859, -4005, -4058, -8333, -7807, -3746, 4357, 2844, -571, -3791, 4414, 2176, 395, 8899, -3560, 9354, -7993, 7830, 2219, 8580, 9301, -6462, 9141, -6290, 4337, 1337, 9129, -1885, 9095, 3955, 3463, -6643, -2142, 740, 2925, 9344, -1870, -9772, 9136, 5044, -4967, 5162, -2989, -2949, 8849, 7434, 8286, 2960, 9268, -8460, 7104, -1172, 3628, 3854, 4471, 4153, -7652, 7654, 1726, 6955, 4520, -9298, -2682, -7927, -1852, -2851, 2689, 2416, 8333, -3303, 2630, -5627, 6093, -3639, -8675, -2791, 5601, 5558, 4854, -8146, -96, 7783, -1830, 3671, -5439, -6851, -5346, 5269, 7447, 7234, -1560, -6796, 9220, -4680, -547, 8228, 7375, 1356, -9672, 1024, -6824, -1903, -5617, -1461, 2297, 4297, -9861, 796, 3887, -8340, 6608, -9445, 2663, 1233, 7988, 1087, -6058, -7915, 9510, -7767, 5159, 63, -8470, -6680, -3197, 2816, 2434, -6251, 349, 7762, -3019, -1806, 2574, -4389, 8430, 8977, -6362, -3435, 5448, -3518, -4147, 2022, -4649, -1220, -5909, 6881])
const typedArray7 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray4 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray3 = new Int8Array([-2121, -8691, 4605, -1392, 9241, 2196, 4800, -1039])
const typedArray2 = new Float32Array([5347, -4867, 8738, 8526, -5077, -4480])
const typedArray1 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader3 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader2 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader0 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 2489,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const string0 = GPUQuerySet0.type
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const string1 = GPUComputePassEncoder0.label
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture0",
        size: {
            width: 757,
            height: 443,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "r8unorm",
        label: "GPUTextureView0"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6031109207421854,
                g: 0.04801794829872663,
                b: 0.22071523870926524,
                a: 0.9024827651085598
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView0,
            depthSlice: 14
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 3517606650,
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
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline0",
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
    const string2 = GPURenderPipeline0.label
    const GPUShaderModule2 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader2
    });
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: true,
        size: 181377572,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE
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
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX
    });
    const GPUQueue0 = GPUDevice0.queue
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
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer2);
    const boolean0 = GPUAdapter0.isFallbackAdapter
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
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const string3 = GPUCommandEncoder0.label
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 205,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 378,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const string4 = GPUTextureView0.label
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
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
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 4, typedArray2);
    const GPUTextureView1 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 9,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView1"
    });
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "src-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.ALL
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    const string5 = GPUQuerySet1.label
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2unorm",
        label: "GPUTexture1",
        size: {
            width: 2874,
            height: 3263,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView2 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9280179827446495,
                g: 0.663481195204688,
                b: 1.3899587768210382,
                a: 1.6254729032435637
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView2
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 2475604783,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPUSupportedFeatures0 = GPUDevice0.features
    const string6 = GPUComputePipeline0.label
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.BLUE
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    GPUQueue0.submit([GPUCommandBuffer0]);
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8uint",
        label: "GPUTexture2",
        size: {
            width: 491,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8uint"]
    });
    const GPUQueue1 = GPUDevice0.queue
    const string7 = GPUQuerySet2.count
    const string8 = GPURenderPipeline3.label
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string9 = GPURenderPassEncoder1.label
    const string10 = GPUCommandEncoder1.label
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 24, typedArray3);
    const GPUSupportedFeatures1 = GPUDevice0.features
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
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
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline4",
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
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline4);
    const GPUSupportedLimits0 = GPUAdapter1.limits
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray4);
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
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 3838,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    const string11 = GPUComputePassEncoder1.label
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline1);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray5);
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
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder1.dispatchWorkgroups(59, 8, 46);
    const GPUSupportedFeatures2 = GPUAdapter0.features
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string12 = GPUComputePipeline0.label
    const string13 = GPUDevice0.label
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 141,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup3);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray6);
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
    const GPUQueue2 = GPUDevice0.queue
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray7);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    const string14 = GPUTextureView0.label
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 158424056,
        usage: GPUBufferUsage.COPY_DST
    });
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.RED
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline5);
    const string15 = GPUQueue1.label
    const string16 = GPURenderPipeline3.label
    const GPUCommandBuffer1 = GPUCommandEncoder4.finish();
    GPUQueue2.submit([GPUCommandBuffer1]);
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.RED
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUSupportedLimits1 = GPUAdapter0.limits
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline1);
    const string17 = GPUCommandEncoder2.label
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 131768180,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: false,
        size: 243612880,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline4);
    const GPUAdapterInfo1 = GPUAdapter1.info
    const GPUSupportedFeatures3 = GPUDevice0.features
    const string18 = GPUComputePipeline0.label
    const string19 = GPUQuerySet3.type
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUComputePassEncoder2 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const string20 = GPUQuerySet0.label
    GPURenderPassEncoder0.draw(2);
    const GPUAdapterInfo2 = GPUAdapter1.info
    const GPUQueue3 = GPUDevice0.queue
    const GPUSupportedLimits2 = GPUDevice0.limits
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 2910,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const string21 = GPUComputePassEncoder2.label
    GPUQueue3.writeBuffer(GPUBuffer4, 73789868, typedArray8);
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 55164092,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE
    });
    const string22 = GPUCommandEncoder2.label
    const string23 = GPUQueue2.label
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 826,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const string24 = GPUQuerySet1.label
    const string25 = GPUTextureView1.label
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray9);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
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
    const GPUQueue4 = GPUDevice0.queue
    const string26 = GPUComputePipeline1.label
    GPURenderPassEncoder0.draw(7);
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder1.dispatchWorkgroups(159, 108, 4);
    const GPUSupportedLimits3 = GPUAdapter1.limits
    const GPUAdapterInfo3 = GPUAdapter3.info
    const string27 = GPURenderPipeline5.label
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder2.dispatchWorkgroups(218, 139, 7);
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8sint",
        label: "GPUTexture3",
        size: {
            width: 996,
            height: 371,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8sint"]
    });
    GPUComputePassEncoder1.end();
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 2477,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "constant"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.RED | GPUColorWrite.ALPHA
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
            module: GPUShaderModule1
        }
    });
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup3);
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline4);
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const string28 = GPURenderPipeline4.label
    GPUComputePassEncoder2.end();
    const GPUCommandBuffer1 = GPUCommandEncoder5.finish();
    GPUQueue0.submit([GPUCommandBuffer1]);
    const GPUSupportedFeatures4 = GPUDevice0.features
    const string29 = GPUTextureView2.label
    const GPUComputePassEncoder3 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline1);
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer2);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder3.dispatchWorkgroups(226, 248, 16);
    const string30 = GPUDevice0.label
    const GPUSupportedFeatures5 = GPUDevice0.features
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16sint",
        label: "GPUTexture4",
        size: {
            width: 1198,
            height: 590,
            depthOrArrayLayers: 54
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16sint"]
    });
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer5);
    GPURenderPassEncoder0.end();
    GPURenderPassEncoder1.end();
    const GPUCommandBuffer1 = GPUCommandEncoder2.finish();
    const string31 = GPUTextureView1.label
    GPUComputePassEncoder3.end();
    const GPUSupportedFeatures6 = GPUAdapter3.features
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray10);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture5",
        size: {
            width: 3271,
            height: 70,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 12,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView3 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rg16float",
        label: "GPUTextureView3"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6570974377354886,
                g: 1.3523087666895621,
                b: 1.0828642795470815,
                a: 1.4844921303280705
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView3
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 2194230454,
        occlusionQuerySet: GPUQuerySet7
    });
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUQueue5 = GPUDevice0.queue
    const GPUSupportedFeatures7 = GPUDevice0.features
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: false,
        size: 43403896,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM
    });
    const GPUSupportedLimits4 = GPUAdapter3.limits
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline8",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder2.end();
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8snorm",
        label: "GPUTexture6",
        size: {
            width: 27,
            height: 89,
            depthOrArrayLayers: 2
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8snorm"]
    });
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 164039984,
        usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    });
    const string32 = GPUQueue2.label
    GPUQueue4.submit([GPUCommandBuffer1]);
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2unorm",
        label: "GPUTexture7",
        size: {
            width: 270,
            height: 2614,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView4 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1202068466681157,
                g: 1.791306301275178,
                b: 1.2544257182129912,
                a: 0.6798454013063839
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView4
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 986489340,
        occlusionQuerySet: GPUQuerySet6
    });
    GPURenderPassEncoder3.end();
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture8",
        size: {
            width: 671,
            height: 8,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView5 = GPUTexture8.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView5"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7502384073098141,
                g: 0.4607360662311153,
                b: 0.613174234020206,
                a: 1.2942765976878856
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView5,
            depthSlice: 16
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 1448972554,
        occlusionQuerySet: GPUQuerySet2
    });
    const string33 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUAdapterInfo4 = GPUAdapter4.info
    const GPUSupportedLimits5 = GPUAdapter4.limits
    const GPUCommandBuffer1 = GPUCommandEncoder6.finish();
    GPUQueue2.submit([GPUCommandBuffer1]);
    const GPUComputePassEncoder4 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer7);
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 1736,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const string34 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const string35 = GPURenderPipeline8.label
    const string36 = GPUQuerySet1.count
    const GPUSupportedLimits6 = GPUAdapter3.limits
    const GPUAdapterInfo5 = GPUAdapter0.info
    const string37 = GPUComputePassEncoder4.label
    const string38 = GPUQuerySet5.count
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray11);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    const GPUAdapterInfo6 = GPUAdapter3.info
    const string39 = GPURenderPassEncoder4.label
    const GPUSupportedFeatures8 = GPUDevice0.features
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedFeatures9 = GPUAdapter3.features
    const string40 = GPURenderPassEncoder4.label
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures10 = GPUAdapter0.features
    const GPUQueue6 = GPUDevice0.queue
    const string41 = GPURenderPipeline4.label
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUComputePassEncoder5 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline0);
    const string42 = GPURenderPipeline4.label
    const string43 = GPUQuerySet5.type
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer5);
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline3);
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup8);
    GPUComputePassEncoder4.dispatchWorkgroups(26, 88, 61);
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader4
    });
    const GPUAdapterInfo7 = GPUAdapter3.info
    const string44 = GPUDevice0.label
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: true,
        size: 175384156,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX
    });
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture9",
        size: {
            width: 792,
            height: 179,
            depthOrArrayLayers: 18
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView6 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9798520852563037,
                g: 1.014096720087134,
                b: 1.316735052844714,
                a: 0.7069154594633449
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView6,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 1080852274,
        occlusionQuerySet: GPUQuerySet3
    });
    const string45 = GPUTextureView1.label
    const GPUSupportedFeatures11 = GPUDevice0.features
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer7);
    const GPUSupportedLimits7 = GPUAdapter0.limits
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg16sint",
        label: "GPUTexture10",
        size: {
            width: 1315,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16sint"]
    });
    const GPUBuffer10 = GPUDevice0.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: true,
        size: 57061848,
        usage: GPUBufferUsage.VERTEX
    });
    const string46 = GPUComputePipeline2.label
    const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    const GPUBindGroupLayout0 = GPUComputePipeline4.getBindGroupLayout(0);
    const string47 = GPUQuerySet1.type
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32uint",
        label: "GPUTexture11",
        size: {
            width: 2935,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rg32uint"]
    });
    const string48 = GPUQueue5.label
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder5.draw(4);
    const WGSLLanguageFeatures11 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline5);
    GPURenderPassEncoder4.draw(4);
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
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
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALL
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule1
        }
    });
    GPURenderPassEncoder5.end();
    GPUComputePassEncoder4.end();
    const GPUCommandBuffer1 = GPUCommandEncoder1.finish();
    GPUQueue6.submit([GPUCommandBuffer1]);
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray12);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
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
    const string49 = GPUComputePassEncoder5.label
    const GPUBindGroupLayout1 = GPUComputePipeline2.getBindGroupLayout(0);
    const string50 = GPURenderPassEncoder4.label
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline5);
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const boolean1 = GPUAdapter1.isFallbackAdapter
    const string51 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandBuffer1 = GPUCommandEncoder9.finish();
    GPUQueue4.submit([GPUCommandBuffer1]);
    GPUQueue1.writeBuffer(GPUBuffer7, 2742544, typedArray13);
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline2);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray14);
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
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder5.dispatchWorkgroups(138, 157, 18);
    const WGSLLanguageFeatures12 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup10);
    GPUQueue3.writeBuffer(GPUBuffer7, 23134872, typedArray15);
    const string52 = GPURenderPassEncoder4.label
    const string53 = GPUDevice0.label
    const GPUAdapterInfo8 = GPUAdapter3.info
    const WGSLLanguageFeatures13 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
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
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline10",
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
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture12",
        size: {
            width: 2301,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline12",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const string54 = GPUComputePipeline2.label
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline5);
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUSupportedLimits8 = GPUAdapter4.limits
    const boolean2 = GPUAdapter2.isFallbackAdapter
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.GREEN
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
            module: GPUShaderModule1
        }
    });
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const string55 = GPUComputePipeline5.label
    const GPUComputePassEncoder6 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUBindGroupLayout2 = GPUComputePipeline0.getBindGroupLayout(0);
    const string56 = GPUQuerySet7.label
    const GPUQueue7 = GPUDevice0.queue
    const string57 = GPUQuerySet4.count
    const WGSLLanguageFeatures14 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder7 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUSupportedLimits9 = GPUDevice0.limits
    const string58 = GPUTextureView5.label
    GPURenderPassEncoder4.end();
    const GPUCommandBuffer1 = GPUCommandEncoder3.finish();
    const string59 = GPUComputePassEncoder5.label
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture13",
        size: {
            width: 71,
            height: 253,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView7 = GPUTexture13.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView7"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4393334201548484,
                g: 0.5670237709679025,
                b: 1.733656468422507,
                a: 1.0592847667327154
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView7,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 4070139662,
        occlusionQuerySet: GPUQuerySet3
    });
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline1);
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const string60 = GPUTextureView0.label
    const string61 = GPUCommandEncoder12.label
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
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
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
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
            module: GPUShaderModule2
        }
    });
    GPUComputePassEncoder7.end();
    const GPUCommandBuffer1 = GPUCommandEncoder8.finish();
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline0);
    GPUQueue1.submit([GPUCommandBuffer1]);
    GPUQueue1.writeBuffer(GPUBuffer4, 40016740, typedArray16);
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16sint",
        label: "GPUTexture14",
        size: {
            width: 869,
            height: 272,
            depthOrArrayLayers: 32
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16sint"]
    });
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const string62 = GPUComputePassEncoder6.label
    GPURenderPassEncoder6.draw(7);
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 2415,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const string63 = GPUCommandEncoder11.label
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline1);
    const string64 = GPUQuerySet4.type
    GPUQueue1.writeBuffer(GPUBuffer4, 92063000, typedArray17);
    const GPUBuffer11 = GPUDevice0.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: true,
        size: 162500216,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT
    });
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer2);
    const string65 = GPUTextureView3.label
    const GPUSupportedLimits10 = GPUDevice0.limits
    const GPUAdapterInfo9 = GPUAdapter3.info
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string66 = GPURenderPassEncoder6.label
    const GPUSupportedFeatures12 = GPUDevice0.features
    const WGSLLanguageFeatures15 = navigator.gpu.wgslLanguageFeatures
    GPUQueue0.submit([GPUCommandBuffer1]);
    const GPUCommandBuffer2 = GPUCommandEncoder13.finish();
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer5);
    const GPUSupportedLimits11 = GPUAdapter4.limits
    const GPUQueue8 = GPUDevice0.queue
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader5
    });
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture15",
        size: {
            width: 2487,
            height: 1681,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView8 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView8"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.375802695967037,
                g: 1.3139022607855286,
                b: 0.4552423056228909,
                a: 1.9217208495959448
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView8
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 1902413321,
        occlusionQuerySet: GPUQuerySet9
    });
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline2);
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline0);
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader6
    });
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUQueue1.writeBuffer(GPUBuffer7, 3151316, typedArray18);
    const string67 = GPUComputePipeline4.label
    const GPUBindGroupLayout3 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUQueue9 = GPUDevice0.queue
    const GPUSupportedFeatures13 = GPUDevice0.features
    const GPUSupportedFeatures14 = GPUAdapter5.features
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder6.dispatchWorkgroups(252, 16, 52);
    const string68 = GPUTextureView5.label
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader7
    });
    const GPUBindGroupLayout4 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    GPUQueue0.writeBuffer(GPUBuffer3, 84153528, typedArray19);
    const GPUQueue10 = GPUDevice0.queue
    const GPUAdapterInfo10 = GPUAdapter5.info
    const GPUTextureView9 = GPUTexture12.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView9"
    });
    GPUQueue6.writeBuffer(GPUBuffer7, 16592316, typedArray20);
    const string69 = GPUComputePipeline3.label
    const GPUSupportedFeatures15 = GPUDevice0.features
    const boolean3 = GPUAdapter7.isFallbackAdapter
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup6);
    GPURenderPassEncoder6.end();
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture16",
        size: {
            width: 290,
            height: 3974,
            depthOrArrayLayers: 33
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView10 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5829960968858614,
                g: 1.7238538395243213,
                b: 0.5383925566550138,
                a: 1.606655085924094
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView10
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 55631440,
        occlusionQuerySet: GPUQuerySet6
    });
    const string70 = await navigator.gpu.getPreferredCanvasFormat();
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "zero"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline15",
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
            module: GPUShaderModule1
        }
    });
    const GPUSupportedLimits12 = GPUAdapter3.limits
    const GPUTextureView11 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView11"
    });
    const string71 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const string72 = GPUComputePipeline7.label
    GPURenderPassEncoder7.draw(10);
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture17",
        size: {
            width: 127,
            height: 109,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba8unorm"]
    });
    const string73 = GPUComputePipeline1.label
    GPUQueue3.submit([GPUCommandBuffer2]);
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture18",
        size: {
            width: 680,
            height: 430,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r32uint"]
    });
    const GPUSupportedLimits13 = GPUDevice0.limits
    GPURenderPassEncoder7.end();
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 2308,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline5);
    const GPUBindGroupLayout5 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture19",
        size: {
            width: 1599,
            height: 3499,
            depthOrArrayLayers: 41
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUSupportedLimits14 = GPUAdapter1.limits
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline5);
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const string74 = GPUQuerySet9.label
    const string75 = GPUQuerySet9.type
    const string76 = GPURenderPassEncoder8.label
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup4);
    const GPUBuffer12 = GPUDevice0.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: true,
        size: 141274084,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    });
    const GPUAdapterInfo11 = GPUAdapter2.info
    const GPUTextureView12 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView12"
    });
    const GPUSupportedLimits15 = GPUDevice0.limits
    const string77 = GPURenderPipeline8.label
    const string78 = GPUComputePassEncoder6.label
    const string79 = GPURenderPipeline4.label
    const string80 = GPUCommandEncoder14.label
    const GPUSupportedLimits16 = GPUDevice0.limits
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    GPUComputePassEncoder5.end();
    GPURenderPassEncoder8.draw(10);
    const string81 = GPUComputePipeline8.label
    const string82 = GPUQuerySet7.label
    const string83 = await navigator.gpu.getPreferredCanvasFormat();
    const string84 = GPUDevice0.label
    const string85 = GPUDevice0.label
    const string86 = GPURenderPassEncoder8.label
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup6);
    const GPUBuffer13 = GPUDevice0.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: false,
        size: 1182852,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBindGroupLayout6 = GPUComputePipeline3.getBindGroupLayout(0);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray21);
    const GPUBindGroup11 = GPUDevice0.createBindGroup({
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
    const string87 = GPURenderPassEncoder8.label
    const string88 = GPURenderPipeline8.label
    const GPUBindGroupLayout7 = GPUComputePipeline5.getBindGroupLayout(0);
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture20",
        size: {
            width: 990,
            height: 73,
            depthOrArrayLayers: 45
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView13 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5160292236121566,
                g: 0.7289992886711043,
                b: 1.0607432905390999,
                a: 0.028800246547153074
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView13,
            depthSlice: 13
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 1947282238,
        occlusionQuerySet: GPUQuerySet10
    });
    GPURenderPassEncoder8.end();
    const GPUCommandBuffer1 = GPUCommandEncoder11.finish();
    GPUQueue8.submit([GPUCommandBuffer1]);
    const GPUSupportedFeatures16 = GPUDevice0.features
    const GPUAdapterInfo12 = GPUAdapter6.info
    const string89 = GPUTextureView12.label
    const GPUSupportedLimits17 = GPUDevice0.limits
    const string90 = GPUComputePipeline7.label
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup7);
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "GPUTexture21",
        size: {
            width: 2505,
            height: 3556,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView14 = GPUTexture21.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.10895395828757493,
                g: 0.2855930382635905,
                b: 1.9966709927677089,
                a: 0.9036056011184861
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView14
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 1213543274,
        occlusionQuerySet: GPUQuerySet8
    });
    GPURenderPassEncoder9.end();
    const GPUCommandBuffer1 = GPUCommandEncoder15.finish();
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline1);
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline13);
    GPURenderPassEncoder10.draw(8);
    const GPUQueue11 = GPUDevice0.queue
    const string91 = GPUQuerySet10.type
    GPUQueue8.writeBuffer(GPUBuffer1, 0, typedArray22);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
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
    const GPURenderPipeline16 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.ALPHA
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule5
        }
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup2);
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline13);
    const string92 = GPUQuerySet2.label
    const GPUBindGroupLayout8 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUTextureView15 = GPUTexture11.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg32uint",
        label: "GPUTextureView15"
    });
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 2469,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const GPUBindGroupLayout9 = GPUComputePipeline1.getBindGroupLayout(0);
    const string93 = GPUDevice0.label
    const GPUSupportedLimits18 = GPUDevice0.limits
    const string94 = GPUTextureView4.label
    const GPUComputePassEncoder8 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const string95 = GPUDevice0.label
    const GPUTextureView16 = GPUTexture2.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8uint",
        label: "GPUTextureView16"
    });
    const GPUQueue12 = GPUDevice0.queue
    const GPURenderPipeline17 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline17",
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
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline13);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline5);
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray23);
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup13);
    GPUComputePassEncoder6.dispatchWorkgroups(208, 125, 11);
    const string96 = GPUComputePassEncoder6.label
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 1838,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPURenderPipeline18 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline18",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPURenderPipeline19 = GPUDevice0.createRenderPipeline({
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
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALL
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule5
        }
    });
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const GPURenderPipeline20 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline20",
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
    GPUQueue10.writeBuffer(GPUBuffer13, 279580, typedArray24);
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "GPUTexture22",
        size: {
            width: 565,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8uint"]
    });
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader9
    });
    const WGSLLanguageFeatures16 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline13);
    const string97 = GPUTextureView14.label
    const string98 = GPURenderPassEncoder10.label
    GPURenderPassEncoder10.end();
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture23",
        size: {
            width: 2164,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    GPUQueue9.writeBuffer(GPUBuffer1, 0, typedArray25);
    const GPUBindGroup14 = GPUDevice0.createBindGroup({
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
    const boolean4 = GPUAdapter1.isFallbackAdapter
    const string99 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup13);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline5);
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader10
    });
    const string100 = GPUTextureView2.label
    GPUQueue12.writeBuffer(GPUBuffer1, 0, typedArray26);
    const GPUBindGroup15 = GPUDevice0.createBindGroup({
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
    const GPUBuffer14 = GPUDevice0.createBuffer({
        label: "GPUBuffer14",
        mappedAtCreation: false,
        size: 11591616,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM
    });
    GPUQueue7.submit([GPUCommandBuffer1]);
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture24",
        size: {
            width: 1834,
            height: 3395,
            depthOrArrayLayers: 19
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16float"]
    });
    const GPUTextureView17 = GPUTexture24.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 7,
        format: "r16float",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5247976382703234,
                g: 1.988554511502607,
                b: 0.7868407389862968,
                a: 0.13995709744673834
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 594270967,
        occlusionQuerySet: GPUQuerySet10
    });
    const string101 = GPUComputePipeline9.label
    GPUQueue5.writeBuffer(GPUBuffer1, 8, typedArray27);
    const boolean5 = GPUAdapter3.isFallbackAdapter
    const string102 = GPURenderPipeline5.label
    const string103 = GPURenderPassEncoder11.label
    const GPUSupportedLimits19 = GPUAdapter6.limits
    const string104 = GPUTextureView0.label
    const GPUSupportedLimits20 = GPUAdapter7.limits
    GPUComputePassEncoder6.end();
    const GPUCommandBuffer1 = GPUCommandEncoder10.finish();
    GPUQueue11.submit([GPUCommandBuffer1]);
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture25",
        size: {
            width: 3468,
            height: 1487,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView18 = GPUTexture25.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7802501636828238,
                g: 1.5795205874394946,
                b: 0.6434199428879608,
                a: 0.9028442251426012
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 3491216364,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUSupportedFeatures17 = GPUDevice0.features
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline8);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder8.dispatchWorkgroups(211, 252, 58);
    const WGSLLanguageFeatures17 = navigator.gpu.wgslLanguageFeatures
    const string105 = GPUCommandEncoder16.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline8);
    const WGSLLanguageFeatures18 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string106 = GPUCommandEncoder16.label
    const string107 = GPUQuerySet1.type
    const GPUSupportedLimits21 = GPUAdapter7.limits
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer5);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup14);
    const string108 = GPUComputePipeline9.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline8);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder8.dispatchWorkgroups(211, 159, 8);
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline0);
    const string109 = GPUQueue10.label
    const GPUQueue13 = GPUDevice0.queue
    const string110 = GPUComputePassEncoder8.label
    const GPURenderPipeline21 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline21",
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
    const GPUSupportedFeatures18 = GPUDevice0.features
    GPUComputePassEncoder8.end();
    const GPUCommandBuffer1 = GPUCommandEncoder7.finish();
    GPUQueue4.submit([GPUCommandBuffer1]);
    const string111 = await navigator.gpu.getPreferredCanvasFormat();
    GPUQueue2.writeBuffer(GPUBuffer3, 27675596, typedArray28);
    const GPUTextureView19 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 33,
        baseArrayLayer: 8,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16sint",
        label: "GPUTextureView19"
    });
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 162,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPUSupportedFeatures19 = GPUDevice0.features
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray29);
    const GPUBindGroup16 = GPUDevice0.createBindGroup({
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
    const GPUSupportedLimits22 = GPUDevice0.limits
    const string112 = GPURenderPassEncoder12.label
    const string113 = GPUTextureView14.label
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    GPUQueue7.writeBuffer(GPUBuffer4, 25655004, typedArray30);
    GPURenderPassEncoder12.end();
    const GPUQueue14 = GPUDevice0.queue
    GPURenderPassEncoder11.end();
    const GPUComputePassEncoder9 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder9.dispatchWorkgroups(203, 127, 13);
    const string114 = GPUDevice0.label
    const string115 = GPUQueue14.label
    const GPUAdapterInfo13 = GPUAdapter5.info
    const string116 = GPUQueue5.label
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8unorm",
        label: "GPUTexture26",
        size: {
            width: 3221,
            height: 2901,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView20 = GPUTexture26.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.2337567339382307,
                g: 1.8961321150574522,
                b: 1.4962652193252097,
                a: 0.5516363192447988
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView20
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 1249181120,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPURenderPipeline22 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline22",
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
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline22);
    GPURenderPassEncoder13.draw(7);
    const boolean6 = GPUAdapter4.isFallbackAdapter
    const GPUComputePassEncoder10 = GPUCommandEncoder14.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    GPUQueue8.writeBuffer(GPUBuffer4, 32621188, typedArray31);
    const string117 = GPURenderPassEncoder13.label
    const GPUTextureView21 = GPUTexture10.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16sint",
        label: "GPUTextureView21"
    });
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline6);
    GPUQueue12.writeBuffer(GPUBuffer1, 0, typedArray32);
    const GPUBindGroup17 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup17);
    GPUComputePassEncoder9.dispatchWorkgroups(118, 133, 26);
    const GPUBindGroupLayout10 = GPUComputePipeline10.getBindGroupLayout(0);
    GPURenderPassEncoder13.end();
    const GPUSupportedFeatures20 = GPUDevice0.features
    const GPURenderPipeline23 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule0,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline23",
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
            module: GPUShaderModule10
        }
    });
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 120,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const GPUComputePassEncoder11 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture27",
        size: {
            width: 825,
            height: 393,
            depthOrArrayLayers: 33
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPUTextureView22 = GPUTexture27.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r16float",
        label: "GPUTextureView22"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0591739339879125,
                g: 0.17778257608944448,
                b: 0.7724081819884736,
                a: 1.19098657034008
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView22,
            depthSlice: 3
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 4203636002,
        occlusionQuerySet: GPUQuerySet14
    });
    const string118 = GPURenderPassEncoder14.label
    const string119 = GPUQuerySet10.count
    GPURenderPassEncoder14.end();
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader11
    });
    const boolean7 = GPUAdapter1.isFallbackAdapter
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture28",
        size: {
            width: 257,
            height: 3477,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView23 = GPUTexture28.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.09991026016517424,
                g: 1.825643132538511,
                b: 1.3917820854595837,
                a: 1.2086140298874886
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 922001262,
        occlusionQuerySet: GPUQuerySet13
    });
    GPURenderPassEncoder15.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder15.draw(7);
    const string120 = GPUCommandEncoder17.label
    GPURenderPassEncoder15.draw(6);
    const GPUQueue15 = GPUDevice0.queue
    const GPUBuffer15 = GPUDevice0.createBuffer({
        label: "GPUBuffer15",
        mappedAtCreation: true,
        size: 217158060,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const GPUSupportedFeatures21 = GPUAdapter2.features
    const string121 = GPURenderPipeline7.label
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline2);
    GPUQueue3.writeBuffer(GPUBuffer13, 343376, typedArray33);
    const string122 = GPUCommandEncoder16.label
    const string123 = GPUComputePipeline7.label
    const GPUBindGroupLayout11 = GPUComputePipeline8.getBindGroupLayout(0);
    const GPUQueue16 = GPUDevice0.queue
    const string124 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder10.end();
    const GPUCommandBuffer1 = GPUCommandEncoder14.finish();
    GPUQueue8.submit([GPUCommandBuffer1]);
    GPUComputePassEncoder9.end();
    const GPUCommandBuffer1 = GPUCommandEncoder16.finish();
    const GPUSupportedFeatures22 = GPUAdapter4.features

}
main().catch(console.error);