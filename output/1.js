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
const eFMRMsghgkIshDGWROQ = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const zzAeidCVXWpLiXzV = new Uint8Array([9472, -9325, 4050, 9586, -346, 4607, -9506, -870, -6909, -9263, -8899, -8560, 4671, 538, -8076, 8111, 7978, -9697, 951, 3471, -3913, -6662, 6853, -6745, -7445, -8256, -8224, 5463, -6605, 8594, -4826, -5866, 1077, 78, -1133, -3518, -9494, -8514, 9721, 941, -46, 2683, 4006, 5227, -4465, -9197, -7491, -8102, 8653, 7169, 1704, -6569, -8329, -9088, -6309, -4822, 5843, -252, -6891, 434, -6348, 2529, -189, 2578, 2637, 403, -7183, 6730, -2845, -5380, 7959, 9134, -173, 9736, -5482, -7271, -1391, 1871, 5368, -1108, -7368, -8772, 2887, 5376, -4608, 2907, 5923, 464, -2365, 4206, 8742, -9160, 4322, -1569, -6515, 1335, -6220, -2801, 31, -7196, -2543, -7394, 3669, 5115, 6370, 6199, 6247, -2096, 4415, 5673, -9949, 1474, 9767, 3157, -8667, -2580, -3542, 1336, 1719, 9732, -7345, 1858, 2771, -2008, -9815, -7111, -4233, 967, -6482, -7160, 2027, 8815, 2520, -8254, -7345, -839, -829, -9005, -6658, -7075, -7528, 5243, 1929, -112, -6394, -4828, 344, 478, 757, -3706, -2406, -9733, 4285, -2437, 9456, -2913, 7094, 2072, 293, 907, -5286, -2765, 7072, -7773, 462, -6416, 417, -7511, -6208, -9428, 45, 8545, -2163, -7605, -209, -9865, -1440, -7371, 2237, -2421, -9415, -7619, -9613, 9855, 7127, -5204, 8818, 694, -9159, 6410, -8826, 7918, 7353, 5354, -1575, -2087, 2980, 2484, 5566, -3263, 1231, -280, 9745, 3671, -8193, 8192, -8321, 851])
const sqkmRqqXTgevB = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const sbNebhvlfzm = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const heKaEoY = new Float32Array([-710, -1579, 4203, 3444, 1113, 7540, -257, 1697, -4114, 3581, 2822, 6740, 7354, -2124, 5148, -5266, -4447, 8881, -7226, -6083, 5947, -5387, 3099, -7605, -395, 3412, 2010, 366, 2625, -9486, -5451, 6550, -5620, 1849, 9809, -5039, 8010, -936, 894, -3927, 791, -564, 459, 9892, 5682, 8177, 4069, 8339, -458, -4781, 8022, -5506, 1197, -8868, 4615, -8040, -1731, -7432, 7558, -9560, -2453, 129, -8925, 3258, 6787, -2065, -9728, 6741, 4238, 2768, -9645, 2943, -3113, 6461, -1338, -6038, -5917, 2554, -1139, -8994, 3848, 6513, -7087, -2999, 73, 5910, -4810, 5338, 8522, -8774, 2247, 8285, -1084, -9921, -6615, -629, 5989, -3940, -537, -4044, 1753, 720, -6481, 5795, 6903, -3651, -7971, -6787, 2943, 5891, -4616, 7967, 7436, 6065, 5837, -8472, -1919, -1333, 6848, -7839, 7448, 6954, -1959, 241, 4271, 1782, 1475, 8126, 8909, 5785, 2009, -8702, -9294, -9619, -7625, -7565, 1360, -2948, 6347, -7476, 3729, 9641, 3554, -3716, 4161, -7221, 1362, -4186, 4950, 2036, -9851, -6024, -6439, 5792, -8156, 2620, 8644, 2923, 6380, -2855, -6115, 5927, 7448, 9050, 5374, -4504, -8396, -1259, 3699, -7578, -4054, -3954, 8631, -5033, -3399, -7191, 9651, 1111, -9853, -6440, 9320, 1349, 7595, 5088, 972, 4146, 9157, 3957, 5145, -3803, -4091, -7936, 9951, 6502, 9541, 7064, -2919, -2492, 5974, 1439, 7603, -5808, -4308, 9056, 6696, 9830, -2145, -51, -6398, -9952, 3421, -1556, -8281, 1329, -633, -2537, 1916, -9900, 1323, -5691, 1002, 1421, -9912, 2056, -7212, -2289, 3538, 8057, -8403, -8574, -7023, 2965, 739, 1408, 9252, -5833, -8434, 1159, -7990, -289, -874, -6554, 4139, -2454, 7472, -6132, 1190, 5476, 8611, 2309, 5916, -3304, 9264, -7395, 9370, -2302, -5399, -7282, -1147, 6834, -2752, 8249, -9496, 6279, 3030, 1504, -1496, 7714, -6856, -7859, -252, 9297])
const iGWcauwhXk = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const vRXbKS = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const zhmUazBJ = new Uint8Array([-5496, 4926, 4109, 582, -2314, 2656, -5509, -8085, -441, -3830, 1898, 6590, -3640, -5643, -2252, -7728, 3618, -3774, 5146, -3041, -2025, 7406, -8861, -954, -2639, -9805, -8565, -2358, -4737, -5791, -7471, 200, 1011, 7796, -8318, -1811, -5090, 3544, -5493, -5845, 8634, 355, -5499, -8092, -2495, 353, -1379, 1899, -4102, 5385, -5587, -9800, -7669, -2253, -148, -5722, -1677, -636, 5763, -5392, 1620, 664, 7670, 6092, -8404, 5571, 7544, -2341, -6292, -1259, -440, -6750, -1165, -1700, 6591, 8093, -287, 4249, -1361, -5897, -2191, 1209, 689, -8755, 7891, 3872, 7780, 4152, 9626, 6900, 2264, -4534, -5832, -2074, 1471, -9508, -8599, 5392, -8575, 6132, 4450, 4648, -7529, -1198, -5980, 2198, -630, -1993, 53, 7305, -2255, 6252, -491, 8652, 1608, -6859, 5801, 4556, 2269, -8884, 5876, -6375, 5284, 9721, 6613, 8689, 317, -7523, -8289, -9054, 3719, -3461, 1277, -1419, 1453, -2013, -2361, 4229, 5465, 5192, -1884, 8195, -4336, -2323, 1372, -4985, 1048, -4473, 3141, 7490, -4431, -1755, 6829, -5482, -8127, -7790, -4430, 6648, -6054, -8033, 8699, 1039, -9939, -1977, -8198, -193, 9129, 3128, 4365, 4174, -2022, 9764, -4860, -1059, -6482, -528, -2503, 7072, 3421, 325, 4404, 7332, 6507, -1435, 8516, -9096, 419, -2964, 872, 9922, -5076, 7057, 1176, -1775, 5494, -9226, 3583, -2881, 3789, -8906, 2533, -3646, -4404, -9921])
const DZnzHGQn = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const qSVCCmjcQjFtyjFbdE = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const GZaTEyjrYBIheFvJzZw = new Float32Array([-9363, -5901, 1075, -6996, 8785, 6138, -5943, 6233, 5421, -3306, 9901, -2023, -3549, 9343, 1129, -4990, -4960, -7150, 1347, 3555, -4012, 8098, -3462, 6274, -5529, 3280, 8089, -7046, -8795, 6486, 1397, 9106, -636, -6176, 8756, 2299, 5099, 5427, 7359, -6, 6832, -2243, -1061, -1631, -7224, -2746, 5440, -4425, 6686, -5617, 6108, -7337, -9217, -7995, 4129, -6276, -3896, 7735, 6640, -4335, 5714, -8675, 9391, 6199, -371, -2389, -9620, -3148, -8203, 2869, 3730, 1980, -9868, -6760, -9529, -3731, -4404, 7439, -4982, -3328, 8188, -6115, -1111, -5127, 59, -8634, 9529, 2691, -5863, 5670, 2408, 9502, 4309, -1728, 5596, -6230, 430, 244, 6221, -6653, -284, 6189, 231, 93, -1722, 4911, 4036, 2193, 762, -7921, -7087, -4567, -4891, 7348, 7963, 2320, 6718, 5034, -2623, 9975, -8323, 1584, 5929, -694, -2274, -9448, -848, 7264, 226, 5579, -3150, 954, 9982, 7562, -1833, -7438, -2693, -4098, -493, 5007, -9980, 7863, 7860, 5755, -882, -3888, -816, -9920, 3050, -492, -1263, -4603, 8604, -8543, 3802, -9073, -3873, 8712, -8276, -2920, -7931, -6380, -3512, 2961, -2213, 5279, 2712, 1954, 3391, 7309, -8199, -6369, 8469, 1742, -6516, 3405, -7065, 2491, 6053, -3343, -9355, 6691, -1925, 3018, 2703, -7498, 4164, -590, 5807, -2926, -1899, 643, -4951, -8866, -5617, -9996, 1643, -8528, -732, -1584, -5950, -5479, -8064, 5630, 3944, -8473, -9055, -5245, 2409, 9268, -4383, -8247, -1779, -807, -5467, 4034, 9278, 5109, 2816, 2109, 3526, 6325, -1992, -9025, 2053, -7464, 2145, -3719, -1682, -1318, 6805, 1245, 4230, -7140, 4915, -4991, 9498, -303, 9633, -3228, 5943, 3305, 9511, -519, 4564, 4855, 5629, 9504, 9678, 5815, 3734, 9963, 4043, 8248, 1228, -776, 1280, -5930, 6796, 1323, 477, 6445, -7434, 1781, 5605, 159, -7427, 869, 1739, 1574, 6177, -2633, 5253, -5803, -8021, 1419, -3401, 3946, 5257, 2430, -1700, 1314, 1170, 3676, 2478, 543, 9048, -720, 5700, -6846, -7899, -5711, -7435, 1608, 6552, -6548, -417, -8571, 5806, -2425, -5629, 9509, 8976, -891])
const ekxWDDdYqViJq = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const kPojM = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const wEsiwnJgtzVYpBVdN = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const wCptFqgxYJ = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const HQEmEUuGrv = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const scusOCaMxlyB = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const bKGDSCKmIFEUt = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const lyQCoF = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const MmEosSZcQDxItQbcs = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const CoxWkbPmae = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const fcwpG = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const RYIrT = new Uint8Array([9653, 7295, 3184, 967, -9797, -6416, -6143, -1648, -7878, -2584, -9273, 4498, -3148, 3684, 3749, 3311, 4906, -8671, 7688, -4029, -3378, 5825, -942, -6814, -6942, 4687, 9166, -9063, -6763, 5128, -3751, 3404, 6882, -6715, -2244, -5639, -2461, -3242, -9706, 8410, 4043, -7471, 8577, 7875, 3070, 4854, -4782, 3250, 8274, 141, 1935, -6625, 1254, -9504, 4765, 4249, -2176, -3030, 3266, 5635, 8548, -5529, -3483, 6051, 4721, 7288, 344, -3142, 6390, 7223, 7645, -8708, 3697, -4505, -4176, -2205, 413, 1369, 8133, -6281, 6685, -5217, 6385, 4455, -8158, -965, -3756, 3129, 5731, -2148, 942, -4764, 5554, -2943, -2689, 2483, -8003, 8642, 7420, -7813, 1364, -7209, -4734, 6032, 9971, -1704, 215, 2087, -1356, 4505, 2271, 4746, -5622, -7238, -8407, -7625, -5779, 7384, 2062, 2715, -6699, -9802, 6453, -4563, 1515, 9056, 1024, 6276, 7772, 8616, 382, 4042, -9989, -709, -2185, 3323, 7497, 70, -4151, -9424, -7514, 180, 2738, 4861, 9026, -6347, -5749, -2186, -2098, -3830, -4584, -930, -4451, -9963, 6289, -7073, 8648, 3326, -9299, 5763, -79, -4684, -344, 5737, 7911, 5572, 5795, 1226, -9227, -8349, 5039, 3786, -2515, -5540, -3499, 5005, -799, -4897, -3867, 3060, 7764, 4834, -4940, 3407, -6286, -627, -7286, 5461, 1567, -6465, -9011, -1621, -5304, -3452, 4037, 4262, -5205, -5646, 3782, 9651, 341, -6656, 1397, -7313, 2207, -977, -214, 3252, -4278, 631, -1566, -6368, 2012, -6917, -5986, -6567, 6578, -3224, -6434, -9910, 6052, 7415, -5754, -8246, 5377, -9374, 9936, -8025, -6865, 9831, -8111, -7785, -1294, -1736, 3708, 13, -9495, 4713, -5294, 1272, -339, -99, -8310, -939, 1786, -5419, -2781, 560, -7897, 7372, 9440, -2521, -5487, 4280, 6007, 4786, -1595, 4435, -6441, -801, -9672, -2864, 2570, 4334, 2065, 7992, -6637, -2723, 2456, 3423, -9288, 9047, -5319, -9445, 1077, 6074, -7850, -7153, -471, 5311, 1029, 7817, 2238, -2836, -8357, -7156, -5785, -4059, -7891, -9869, -3291, 7942, -5503, 6258, -488, -5276, -4523, 9599, 8621, -4103, 6746, -5648, 1321, -8441, 5810, 4160, -6646, 4432, -9450, 6596, 6138, -8614, -6654, -2818, -5148, -7842, -6740, 4928, 4324, -3807, 3142, 6786, -772, -8355, -6101, -2194, 6747, -2909, 3838, 4062, -9669, -1765, 8948, -6067, 7985, -2763, -1169, 7185, -5473, -4600, 2005, 8918, -7586, 5146, 4402, -6007, -5254, -7596])
const aSfEzIsRy = new Uint8Array([159, 9782, 7577, 6905, -8835, 7167, -6202, -2997, 1671, 4268, -1362, -9563, 3561, 3181, -6988, 4098, -5499, 56, 1725, -3458, 9056, -8063, 2547, 9970, 2798, -8547, -3384, 8791, 317, 4464, 8199, -210, 3117, -1416, 2080, 3985, -1981, -9917, 5558, -4103, -6286, 9585, -6147, -5426, 9396, 6397, -4194, 1207, 9937, -7433, 4219, 8367, 5363, 4214, 7021, -152, 783, -8819, 3586, 9482, -1181, -6468, 7846, 6809, -2037, -9818, -3375, 6931, 9666, -6871, -5947, -6710, 971, 4611, 5721, 5764, -4440, 4166, -299, 7747, 5754, -373, -9065, -1174, 8840, -7961, 4867, -3944, -3884, -7531, 5733, 3174, -114, -7025, 5504, 2468, -2803, -7915, -7844, 4283, 5207, 7513, 3000, -175, -529, 4734, -2829, -754, 6127, 2227, 1857, 2056, 4517, -9015, 8551, -3998, 7878, -1226, 2514, -2411, 5373, -5449, 9531, 9213, 3796, -811, -6620, 7469, -746, 9300, 2207, -9391, -9732, -8704, 7561, -7244, 9959, -8579, -7109, 5232, -583, -9750, 6904, -1239, -4393, -2522, 6266, 4657, -3247, -4545, 2652, 1868, -8332, -1535, 9210, -657, -1191, 6361, 3358, 6520, 2464, -2474, 8184, 8873, -3466, 1539, 3296, -753, -2158, 5041, 2364, 7965, -4019, -1578, 4672, 1655, 3193, 3220, -5442, -6744, -9878, 8317, -2489, -9646, 6837, 5834, -7574, 3980, -1136, 7717, -5754, 1428, -8623, -4297, -5216, -256, -5358, -1466, -8143, -3661, 1041, -3961, 4156, 4235, -2661, 6068, -8665, 4854, -1936, 1224, 2098, -7973, -8279, 2494, 9923, -6001, 920, -5988, 8923, 7091, 6797, 8222, -3707, -1154, -3844, -9783, -2116, 2276, 709, -4575, 8763, -988, -4766, -5757, 977, -4942, 6419, 4898, -5326, -369, -7355, -8732, -3367, 6430, 8177, 2590, -2714, 1982, 5228, -1912, -7374, 4380, 6580, -3105, 8080, 9173, 1519, 8686, 1854, -4516, -1922, -90, -3725, 1201, 2356, -4881, 632, -869, -2186, 1724, 441, 3001, -8959, 8611, 9153, -664, -662, -1738, 5637, -2726, 6891, -514, -1160, 6371, 5741, -3364, 1821, 1039, 8753, -1094, -3677, 4775, -9177, -2403, -9071, -2550, -8620, 4161, 5426, -9396, -6996, 6962, -6004, 9679, 8768, 7058, -3096, -1603, -9059, -8199, -5021, -7758, -675, 2350, -7456, 1986, 7268, -8676, -9174, 6021, 1252, 9935, 2376, -1894, 6448, 8860, -2444, -3859, -6484, 1022, 5133, 7477, 9579, 4002, -2067, 2045, -2719, -2927, 5974, 4670, 532, 476, -7118, 825, -942, -9507, 9464, 8433, 8892, 5329, 4435, 6376, -3408, -6325, -2743, -6474, 9390, -2904, 5393, 9630, -5197, -1015, 6787, -3128, -2258, 1572, -1064, -5335])
const yxXGZCkJiizQLKFzt = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const NMkXw = new Float32Array([1600, 1140, -5417, 4679, -9973, -8137, 2552, -6901, 2362, 6429, 4205, 51, 1675, -9418, -9328, -8683, 5527, -8573, 7802, -920, 1921, 3218, 7230, -740, -7893, 4527, 4016, 5931, -5871, -1616, -3565, -9649, 1036, -392, -3684, -246, -4445, -6683, -4660, -8944, 8959, 1700, -7355, -4210, -5815, 7713, 6295, -8506, -4089, -8652, -5142, -963, 1954, -8909, 4613, -3057, -8243, 2944, -3504, -9080, 256, -722, 8146, -3438, 4631, 1592, 2047, -6830, 3262, -1538, -8109, -9426, 4023, -9904, 802, -9295, 6938, 3479, -2557, 3144, 1122, -7020, -9003, 9114, -7233, 6810, 4038, 9127, 5338, 1174, 1168, 9876, 9970, -6383, 4988, 1159, -7247, -2265, -3573, 3224, 2795, 57, -4593, 7493, -8987, 242, -3377, 1689, -2810, 9052, -3864, -1717, 4577, 5693, -5797, 7328, -2751, -2281, -5064, -5217, 8716, 7849, -7581, 157, -6424, 1094, -6535, -9644, -7995, 4285, -1036, 4543, -7105, 8341, -3093, -1540, -9104, -343, 6286, -7538, -8390, 9256, -2382, -3498, 6514, -7546, 181, 1752, 3575, -2851, -2735, -6061, -4775, 1695, -9228, -9715, 1362, -5184, -1402, -9818, 1144, -9640, -9097, 4590, 5179, 7864, 2349, -6397, 5567, -9012, 1442, -7213, -4528, -8800, 2225, -363, 1578, 9405, -4173, -8625, 8831, 1796, 3756, 2121, -9404, -5079, 4719, 3712, 6442, 6263, -9691, 9183, 957, -916, 7570, 1845, 3585, -7899, 5991, 1546, -1587, 6203, 6523, 3018, 33, 5504, -3767, 2923, 704, -7808, 3632, 9458, -5996, 7224, -7068, 4959, -7168, 7014, 9243, 2240, 8458, 5512])
const XVRvdSiZFoaskIsOONlW = new Uint8Array([7499, -5778, -300, -2863, 2329, 4222, -7364, -6402, 5836, 9884, 392, 8348, -3873, 3842, -8190, -8225, 7189, 8152, -17, -3457, -5498, 5898, -3815, -6603, 9228, -8814, -1791, -5898, 4718, -9818, -1784, -1060, -2349, -5712, -6055, 9778, -1644, 6061, 2474, -6421, 334, -2883, 7051, 6573, -9689, 1298, 7689, -2435, 9216, -3199, 438, -3506, -6679, -2944, 7825, -881, -9981, 2612, 785, 5861, -4683, 8225, 8906, 4775, 4239, 9700, 7969, 4016, 2421, -6538, 6679, 1531, -6561, -5487, -210, 3637, -8379, 7133, -1014, 9799, -4037, -5369, 8925, 6764, -4625, -5738, 7285, 9462, -2370, -7066, 6084, 5713, -4623, -5840, -3346, 7173, -8599, -2737, -1547, -5814, -3849, -2530, -2696, -1163, 8163, 3940, -1051, 4268, -2976, -9899, 7488, -6252, 5157, -4660, -7684, -8219, -5730, 9180, -3931, 3613, 9847, -5248, 6485, -6450, -5146, -9685, 3285, 4464, 2126, -7590, -194, -4059, 6527, 1414, 6884, -2152, 7992, -8586, 6088, 417, -7555, 707, -8575, -3381, 4153, 2659, 5368, -7449, -5277, -8816, 300, 6660, 5922, 8527, -3949, 5645, 6203, 30, 6738, 2931, 193, -7802, -124, 9605, 708, 9330, -3614, 6316, 342, 4223, 3144, -5412, -6223, -9009, 8947, 2412, -2850, 4383, -7327, -6918, 3636, 9933, -1426, 8012, -8569, 0, 206, 782, -9688, 7150, -5258, -166, -6943, -3423, 4143, -6669, -7407, 7246, 7787, -7691, -5389, -1184, -6718, -5681, 1649, -7258, -2941, -7200, 4851, -1504, -8916, -687, 9048, 916, -6154, 8107, -4724, 7339, -3715, -3014, 4468, -7111, 7358, 7202, 9400, -1604, -2997, 8207, -2396, 7381, 3346, 6603, 5295, 7613, 9686, -75, 2739, -4259, 3044, 4489, 56, 4668, -7183, -5979, -2095, 1713, -2985, -781, 6994, 8932, 8429, -3264, -8393, -4128, -2106, -9859])
const hCvhWgvRDMqEyUqV = new Uint8Array([9901, -3363, -6067, -3275, -8106, 7088, 6158, 4022, -4156, -397, 246, -8437, -5484, 8906, 155, 698, -304, -7440, -492, 1313, 1298, 3650, -1344, 8527, -6052, 7718, -72, 7738, 6946, 6514, 9954, 1325, 3188, 7194, -7333, 5569, 2416, 3441, -3328, 9885, -5046, 9563, -2711, 3207, 5371, 9774, 5574, -5684, 8176, 6107, 3990, 5019, 6202, -2127, -7468, -7347, -1868, 2151, 7842, 1507, 5282, -9549, 3423, 7453, -8908, -3734, 7616, 1571, -6915, 8658, -3333, -6412, -8943, -2859, 8793, 5779])
const HzCrlVMVIhKzbhyhQP = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const txbVabDBf = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const ZlhbZACPsa = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const ZcYId = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const YpWhAABCxrhWgCbsbq = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const dppEdDOuACPE = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const MlwEXhhNugPFGbCHedUd = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const dosNyTrTmaYsW = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const JRgvWwuLdVENPxIbIFy = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const DmoBNHyrdSAEj = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const pdOcllyn = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const GIyAtRP = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const vwmCZUTKzCodXiy = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const oQKVpoHLEZsfW = new Int8Array([7689, 6037, 1063, -6792, -6973, -6489, -2331, 5422, -7121, -5966, -1950, 7274, -5379, -9939, 2276, -7034, -3236, 8466, -5130, -7010, -6593, 6119, -3878, 6694, 7728, -3357, -7510, 1219, 3526, 9011, -1128, 7676, -7676, 6110, 2150, 8751, 9873, -3517, -5848, -7071, 6840, 17, 4993, -8600, -6421, 1814, -51, -7167, -1256, 7731, -7412, 6507, 3848, 7430, -8413, -3556, 3518, -5635, 7339, 3997, 741, 8330, -5149, -5481, 5410, -3154, 9288, 4087, -577, 4575, -9377, 1238, -7312, -1045, 4614, 1586, 1146, 3493, -6101, -8952, 1815, 6356, 8016, -3653, -2135, -9415, -5604, 9147, -1998, 9713, 1459, 5495, -7039, -7201, 8965, -4234, -4571, 7896, 5962, 5814, 7069, -7158, 2764, 1191, 1164, 127, 9716, 4494, -2781, -7713, 6214, -8833, -5380, -3499, -1936, 1947, -9619, 1804, 4386, 2157, -6384, -5906, -1514, 4114, 1769, 6087, -5543, -3737, -8699, 1747, 7199, -5122, 5659, 6547, -5732, 5625, -6649, 4622, -3635, -7835, 304, 5150, 6388, 4833, -2083, 4304, 1436, -2738, 114, -9866, 6351, 1678, -8168, -2280, -7325, -5041, -9176, -8374, 6128, -7006, -8184, 9786, 2561, -4313, 9742, 5935, 2609, 5665, 6625, 8666, 9064, 517, 1536, -2612, 7588, -7896, 3702, -7461, -2593, -5178, 6798, 5683, 6630, 716, -1592, -9807, 1576, 8142, -7496, 6502, 1465, -1319, 3921, 7545, 2053, -1242, -3590, 8087, -1282, 2386, 4960, 9333, 5265, 6919, 4554, -1703, -2980, 8742, -671, -6009, -4708, 9713, 18, -6127, 4895, 3467, 4513, 4778, -8118, 442])
const IoQNhVMOlzRMANajwZh = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const aHLlfs = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const PCSrtAVOZMlfXRp = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const zRdhWBILBfBi = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const LKWwjo = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const JfySoVaHM = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const dWLBGQEbEbRea = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');

async function main() {
    const NwShWVDKlXoVYEa = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const BLtlmsXU = await NwShWVDKlXoVYEa.requestDevice();
    const PaXruqRSs = BLtlmsXU.label
    const YkuBNbAXnX = BLtlmsXU.queue
    const YYtFGHrjNgzdKkKHOmzp = BLtlmsXU.createCommandEncoder({
        label: "BbUkkG"
    });
    const OOVaHhtYW = YYtFGHrjNgzdKkKHOmzp.finish();
    YkuBNbAXnX.submit([OOVaHhtYW]);
    const eFGFuOqJnII = BLtlmsXU.createCommandEncoder({
        label: "VQcXifOGhTdGSHi"
    });
    const HHMXP = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "uLoOXqFZkQvBRWt",
        size: {
            width: 3670,
            height: 1547,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const ENvfABAHaofEm = HHMXP.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "sXCoJppOpnC"
    });
    const TeQzyKRmuaxIlJcbqEep = BLtlmsXU.createQuerySet({
        count: 1170,
        label: "CYDgj",
        type: "occlusion"
    });
    const GBluyhtNKDeNOCyye = eFGFuOqJnII.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1070397640463538,
                g: 1.9930698616661646,
                b: 1.865175552082516,
                a: 1.2752554571551338
            },
            loadOp: "clear",
            storeOp: "discard",
            view: ENvfABAHaofEm
        }],
        label: "xjeflIBmQwMfArVXZF",
        maxDrawCount: 1420045076,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    const LKRPJoWlmVvV = GBluyhtNKDeNOCyye.label
    const VxMnAZyQFKH = HHMXP.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "FfqVea"
    });
    const QJFWkZkPLACVBC = BLtlmsXU.createCommandEncoder({
        label: "NQSAH"
    });
    const VctCuNFZAbyUUj = ENvfABAHaofEm.label
    const SvdUtCzdQFd = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8unorm",
        label: "UzquBSlivd",
        size: {
            width: 534,
            height: 2243,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const OWbxPwlwj = SvdUtCzdQFd.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "iwVQIEVRiHXPiURYrEsn"
    });
    const jxxqg = QJFWkZkPLACVBC.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.21116712017110228,
                g: 1.322819859029755,
                b: 1.1070788382045864,
                a: 1.4265509681671982
            },
            loadOp: "clear",
            storeOp: "store",
            view: OWbxPwlwj
        }],
        label: "uDkhvIMqyyNj",
        maxDrawCount: 1774459557,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    const griLoUOVzdRzBuST = BLtlmsXU.createQuerySet({
        count: 2479,
        label: "dnguXDpTrLKyXa",
        type: "occlusion"
    });
    const dQziNJx = BLtlmsXU.createBuffer({
        label: "jqVkjYvjqupYjk",
        mappedAtCreation: false,
        size: 220942520,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    GBluyhtNKDeNOCyye.setVertexBuffer(0, dQziNJx);
    GBluyhtNKDeNOCyye.end();
    const flqJlga = eFGFuOqJnII.finish();
    const XOagpCJCoIJRcBQ = BLtlmsXU.createShaderModule({
        label: "fragment",
        code: dWLBGQEbEbRea
    });
    const gDmzJ = BLtlmsXU.createShaderModule({
        label: "vertex",
        code: JfySoVaHM
    });
    const swsdymi = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
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
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "xUOTMPoubbYWj",
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
            module: gDmzJ
        }
    });
    jxxqg.setPipeline(swsdymi);
    jxxqg.draw(1);
    const KAVsSuIyJ = ENvfABAHaofEm.label
    jxxqg.setPipeline(swsdymi);
    const qyqyCxNgxAgLSji = BLtlmsXU.createCommandEncoder({
        label: "ZDxxFBuYX"
    });
    const lckDmLuAergP = qyqyCxNgxAgLSji.beginComputePass({
        label: "xBnhzELAaRb"
    });
    lckDmLuAergP.end();
    const GqXkJSBbFjXpRTEsCYzq = YkuBNbAXnX.label
    const OgvtMexfw = BLtlmsXU.createBuffer({
        label: "NuAFSPUjAxxjcVw",
        mappedAtCreation: true,
        size: 90068880,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC
    });
    const XWNdnWsXDnbgEtTzupS = BLtlmsXU.queue
    jxxqg.setPipeline(swsdymi);
    const RckTFJNKmfhXHtp = swsdymi.label
    const tkDlTLmXwRZIjUgtriA = qyqyCxNgxAgLSji.beginComputePass({
        label: "WFneG"
    });
    tkDlTLmXwRZIjUgtriA.end();
    const YquxZLWDaJ = qyqyCxNgxAgLSji.label
    const VDRNUggKdlQ = qyqyCxNgxAgLSji.beginComputePass({
        label: "nIpLUgU"
    });
    const fsWxIEQURxFhxJ = BLtlmsXU.createShaderModule({
        label: "compute",
        code: LKWwjo
    });
    const eMHPzqbSncZhsdb = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: fsWxIEQURxFhxJ
        },
        label: "vLlxQhMDtQp",
        layout: "auto"
    });
    VDRNUggKdlQ.setPipeline(eMHPzqbSncZhsdb);
    const SkoXcrwSGZ = BLtlmsXU.createCommandEncoder({
        label: "ayvnUL"
    });
    const DjXVhRxkEMSphI = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "oetyezXxtqljQPxBH",
        size: {
            width: 454,
            height: 685,
            depthOrArrayLayers: 57
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const mMkcTzg = DjXVhRxkEMSphI.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba8unorm-srgb",
        label: "zpZOPovcsisGpZPTReRU"
    });
    const CbgraeJKRlthmy = SkoXcrwSGZ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.145849669650418,
                g: 0.882822806250873,
                b: 1.1097487521035,
                a: 0.5061702170387608
            },
            loadOp: "clear",
            storeOp: "store",
            view: mMkcTzg,
            depthSlice: 6
        }],
        label: "BVkFSjSRQEED",
        maxDrawCount: 1112388600,
        occlusionQuerySet: griLoUOVzdRzBuST
    });
    const VSbhqoFr = VDRNUggKdlQ.label
    const PnytuwQNrvxvxLd = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const jxOIb = HHMXP.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "exnBTBnOqsiygHhwWeX"
    });
    const QUbVwGgSQv = PnytuwQNrvxvxLd.features
    const BqjatqREw = PnytuwQNrvxvxLd.isFallbackAdapter
    const jTsdu = await navigator.gpu.getPreferredCanvasFormat();
    const QwItdDFDZkPZdNI = griLoUOVzdRzBuST.label
    const TmuPjbowe = NwShWVDKlXoVYEa.limits
    const JruLDhNd = PnytuwQNrvxvxLd.info
    const rKCkyYgoLOXgRGqjuJ = BLtlmsXU.queue
    const qNHElAAcMRigBxnzhNgB = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const LhhJAyzawWUfiOEo = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const stzkLpCjUq = swsdymi.label
    const HdZYZOXlTKysBDUZLa = LhhJAyzawWUfiOEo.features
    XWNdnWsXDnbgEtTzupS.submit([flqJlga]);
    const xtgSJWTttKtMyaxHmS = BLtlmsXU.createShaderModule({
        label: "compute",
        code: zRdhWBILBfBi
    });
    const BlsQusMkHNyakceJyl = BLtlmsXU.createShaderModule({
        label: "compute",
        code: PCSrtAVOZMlfXRp
    });
    const HssstWRwUrTztX = BLtlmsXU.createShaderModule({
        label: "vertex",
        code: aHLlfs
    });
    const sUUaFwGkGkbinjUOFJQ = PnytuwQNrvxvxLd.info
    const EVPSeSAqIPcHJar = qNHElAAcMRigBxnzhNgB.limits
    const hpNIHxzSAtI = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: fsWxIEQURxFhxJ
        },
        label: "uZFWrdqcPq",
        layout: "auto"
    });
    const dXxwDosbIlMT = TeQzyKRmuaxIlJcbqEep.label
    const HJZVFYNLGAF = hpNIHxzSAtI.getBindGroupLayout(0);
    const URbVRIcdmBxXaYJdYNyy = QJFWkZkPLACVBC.label
    const nYoIgiRBYFlFd = BLtlmsXU.limits
    jxxqg.setVertexBuffer(0, dQziNJx);
    const HDWbxKNljPDeMHYfF = TeQzyKRmuaxIlJcbqEep.label
    const vhOiFDHmBG = hpNIHxzSAtI.label
    const kqoNEkCn = PnytuwQNrvxvxLd.isFallbackAdapter
    const gJUqQEoVYAXpHBGakKj = BLtlmsXU.createBuffer({
        label: "SxHnaArPhA",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const bNAmvdpWCHQMPm = BLtlmsXU.createBuffer({
        label: "zsWKbXCQPYvYZUdO",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT
    });
    YkuBNbAXnX.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, IoQNhVMOlzRMANajwZh);
    const gJJmpGgIeFAdpr = BLtlmsXU.createBindGroup({
        label: "eMHPzqbSncZhsdb.bindGroup",
        layout: eMHPzqbSncZhsdb.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    CbgraeJKRlthmy.setVertexBuffer(0, gJUqQEoVYAXpHBGakKj);
    VDRNUggKdlQ.end();
    const JMYNVivLtXNggitrYkb = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "dst"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "ypIcQICptvSH",
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
            module: HssstWRwUrTztX
        }
    });
    CbgraeJKRlthmy.setPipeline(JMYNVivLtXNggitrYkb);
    YkuBNbAXnX.writeBuffer(dQziNJx, 150519216, oQKVpoHLEZsfW);
    CbgraeJKRlthmy.draw(6);
    const DElMJRqAfbYX = qNHElAAcMRigBxnzhNgB.isFallbackAdapter
    const nieOgmuLYvNBoN = BLtlmsXU.createCommandEncoder({
        label: "XEIDlJseHlVqRqLYMmZ"
    });
    const ACIYetdGVxpHKca = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const hUuwqmE = qNHElAAcMRigBxnzhNgB.info
    const usygUilLtrof = await navigator.gpu.getPreferredCanvasFormat();
    const xODnkYDUBaZU = qyqyCxNgxAgLSji.label
    const NahTu = navigator.gpu.wgslLanguageFeatures
    CbgraeJKRlthmy.end();
    const UzeBlPo = griLoUOVzdRzBuST.type
    const TVOZXxWNBCqxp = qyqyCxNgxAgLSji.beginComputePass({
        label: "BzlfFgAMhxNppk"
    });
    TVOZXxWNBCqxp.end();
    const zechISsokv = JMYNVivLtXNggitrYkb.label
    const CsrzZGAsGnpvFtWb = TeQzyKRmuaxIlJcbqEep.type
    const iZuFjQDXoLEzu = BLtlmsXU.limits
    const mvXsdLDNimSOAEZJh = qyqyCxNgxAgLSji.beginComputePass({
        label: "LRNFAnXqXUkjeTwTCWqs"
    });
    const fXpQCXo = mvXsdLDNimSOAEZJh.label
    const aFjvyNDFv = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "zjfTuXs",
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
            module: HssstWRwUrTztX
        }
    });
    const hLNaNPJSbhtNfXrtICtR = TeQzyKRmuaxIlJcbqEep.label
    const KLnWEIWTSqEyJFjRFBy = jxxqg.label
    const ufVWaidGEfKOplr = nieOgmuLYvNBoN.finish();
    const nQdJCrXqJraQjdqctuL = aFjvyNDFv.label
    const bOQBlaXbXFAIOsB = eMHPzqbSncZhsdb.getBindGroupLayout(0);
    const SmzoWUvSQOAsI = qNHElAAcMRigBxnzhNgB.limits
    const EtwYVvCXQkjUC = TeQzyKRmuaxIlJcbqEep.count
    YkuBNbAXnX.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, vwmCZUTKzCodXiy);
    const GjdaAT = BLtlmsXU.createBindGroup({
        label: "hpNIHxzSAtI.bindGroup",
        layout: hpNIHxzSAtI.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const eajpHsdOEZNLeUvCs = hpNIHxzSAtI.label
    const qzWMI = eMHPzqbSncZhsdb.label
    const vBUvTueV = BLtlmsXU.queue
    const dgtYJidWRdZszGsAYP = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: xtgSJWTttKtMyaxHmS
        },
        label: "EHPAqfwQixPjYkORoIn",
        layout: "auto"
    });
    XWNdnWsXDnbgEtTzupS.submit([ufVWaidGEfKOplr]);
    const SCHaddQpQKBChRqx = BLtlmsXU.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32float",
        label: "hvsWbJTgBXJJi",
        size: {
            width: 2793,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rg32float"]
    });
    jxxqg.setVertexBuffer(0, gJUqQEoVYAXpHBGakKj);
    const snedwQVwPekxEicFUb = eMHPzqbSncZhsdb.getBindGroupLayout(0);
    mvXsdLDNimSOAEZJh.setPipeline(dgtYJidWRdZszGsAYP);
    mvXsdLDNimSOAEZJh.setBindGroup(0, gJJmpGgIeFAdpr);
    mvXsdLDNimSOAEZJh.dispatchWorkgroups(251, 177, 6);
    const juBWiywoYwhoWKGywQ = qNHElAAcMRigBxnzhNgB.features
    const bQKBhGyOHUA = BLtlmsXU.limits
    const FfWkywrjDNi = BLtlmsXU.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8snorm",
        label: "jHEbbvyGU",
        size: {
            width: 1763,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8snorm"]
    });
    const cNxGBYEszCMHrcHsp = BLtlmsXU.limits
    const yygBBEPMaemXApooa = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: xtgSJWTttKtMyaxHmS
        },
        label: "VZdnoxepDIoqxZcczH",
        layout: "auto"
    });
    const JHHgGOgQKdVLTiUFzLUh = BLtlmsXU.createCommandEncoder({
        label: "bkLajeOhvnBQ"
    });
    const HibEsaDsFDvioUM = SkoXcrwSGZ.beginComputePass({
        label: "REOnekjVFxrUeAlfhEvs"
    });
    vBUvTueV.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, GIyAtRP);
    const oKpStNliTiwnbw = BLtlmsXU.createBindGroup({
        label: "dgtYJidWRdZszGsAYP.bindGroup",
        layout: dgtYJidWRdZszGsAYP.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const vMWRKNso = jxxqg.label
    const jiCVwLUbugsdAxb = BLtlmsXU.createCommandEncoder({
        label: "DUamryuwO"
    });
    const mwMXHlaYNv = BLtlmsXU.createShaderModule({
        label: "compute",
        code: pdOcllyn
    });
    const WmgPXb = QJFWkZkPLACVBC.label
    jxxqg.setPipeline(swsdymi);
    HibEsaDsFDvioUM.end();
    const RGNNozp = SkoXcrwSGZ.finish();
    jxxqg.setVertexBuffer(0, dQziNJx);
    const FCqNfJaxlE = JMYNVivLtXNggitrYkb.label
    mvXsdLDNimSOAEZJh.end();
    const EiCdwSeUigARCWf = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "yBBuDYREfswdbqccLQ",
        size: {
            width: 2673,
            height: 660,
            depthOrArrayLayers: 54
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16float"]
    });
    jxxqg.end();
    const BmyVZZXiMqjVW = swsdymi.label
    const tpldByJh = NwShWVDKlXoVYEa.features
    const WpiRpnBphWPKpu = TeQzyKRmuaxIlJcbqEep.type
    const IMgnzyohGVIpBhQjN = BLtlmsXU.createShaderModule({
        label: "fragment",
        code: DmoBNHyrdSAEj
    });
    const rrLvTCVLCbWyswqstRAj = QJFWkZkPLACVBC.label
    const GYmxkMJqLqGB = jiCVwLUbugsdAxb.beginComputePass({
        label: "yWNJWsRinVM"
    });
    GYmxkMJqLqGB.end();
    const eHANsetVxZYqsDapdeCg = jiCVwLUbugsdAxb.finish();
    const IBEFfFsKGmdmIobGlMET = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "mLYIw",
        size: {
            width: 3299,
            height: 584,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 12,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const LOBwifuSESYErRaic = IBEFfFsKGmdmIobGlMET.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "r16float",
        label: "JdsxSjyNANu"
    });
    const ayWfqxO = JHHgGOgQKdVLTiUFzLUh.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3919368025005756,
                g: 0.2233638329939618,
                b: 0.4375062616301808,
                a: 1.6849132288687785
            },
            loadOp: "clear",
            storeOp: "discard",
            view: LOBwifuSESYErRaic
        }],
        label: "PtzKKMaZHkyS",
        maxDrawCount: 3607862735,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    ayWfqxO.setVertexBuffer(0, dQziNJx);
    const QmgbZqLsTmwrMjrB = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "WvRwWNZQAvbKzSMgjR",
        size: {
            width: 2766,
            height: 3497,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    ayWfqxO.setPipeline(aFjvyNDFv);
    ayWfqxO.draw(4);
    const jcQGNSacN = await navigator.gpu.getPreferredCanvasFormat();
    const suQImksV = BLtlmsXU.label
    const zHMAOJnsxmDh = QJFWkZkPLACVBC.beginComputePass({
        label: "ZDVClmUytChKiY"
    });
    zHMAOJnsxmDh.end();
    const WovhIvTWRJUySvB = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "rSSOYw",
        size: {
            width: 3797,
            height: 409,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const eUMtZezwYVEck = WovhIvTWRJUySvB.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "EokZLMaI"
    });
    const WwkHobmiu = QJFWkZkPLACVBC.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2059152791547332,
                g: 1.9692917932136733,
                b: 1.2529126352514386,
                a: 0.6730294770332459
            },
            loadOp: "load",
            storeOp: "discard",
            view: eUMtZezwYVEck
        }],
        label: "GfbSXAtRNw",
        maxDrawCount: 3687199965,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    const YwkMpbYZZedZEWKycO = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: IMgnzyohGVIpBhQjN,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "jERwlRh",
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
            module: gDmzJ
        }
    });
    WwkHobmiu.setPipeline(YwkMpbYZZedZEWKycO);
    WwkHobmiu.draw(2);
    const zLgDtKUdcSbmYUcIcH = BLtlmsXU.label
    const RDzFmxkMEDSwxbMwLvf = YkuBNbAXnX.label
    const VMtSgbRHSxcoWS = qyqyCxNgxAgLSji.beginComputePass({
        label: "AYdUQNZSzWemQpX"
    });
    VMtSgbRHSxcoWS.setPipeline(dgtYJidWRdZszGsAYP);
    const aerhTKljdeSdoS = BLtlmsXU.queue
    const JQkfMKAZwHSuUIXw = yygBBEPMaemXApooa.getBindGroupLayout(0);
    const ZIZRChAdfisr = NwShWVDKlXoVYEa.limits
    const hEBWYvhXKrW = BLtlmsXU.createQuerySet({
        count: 729,
        label: "RLrYuF",
        type: "occlusion"
    });
    const unbjjdQgXGyRKe = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "mxugoph",
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
            module: HssstWRwUrTztX
        }
    });
    rKCkyYgoLOXgRGqjuJ.submit([RGNNozp]);
    const ULtCMFvNBUVM = XWNdnWsXDnbgEtTzupS.label
    const UlWFbaqXMbnwRZtETm = BLtlmsXU.createCommandEncoder({
        label: "lNUlmGINN"
    });
    const LQENagDjWCWNcG = BLtlmsXU.createQuerySet({
        count: 1863,
        label: "TSMtwbDxOAMHTyx",
        type: "occlusion"
    });
    ayWfqxO.end();
    const uSZdvYaisLuVQFvBJyV = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "yGhRNSptcAWZCOKZ",
        size: {
            width: 762,
            height: 885,
            depthOrArrayLayers: 19
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const OJYsTuLWBkSk = uSZdvYaisLuVQFvBJyV.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GmJyLbLQuY"
    });
    const dAGlAJc = JHHgGOgQKdVLTiUFzLUh.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.918034314551166,
                g: 0.6291802490874918,
                b: 0.7779738729328656,
                a: 1.6626556659831446
            },
            loadOp: "load",
            storeOp: "discard",
            view: OJYsTuLWBkSk,
            depthSlice: 4
        }],
        label: "WYQnYOJOmMczAIkI",
        maxDrawCount: 2775101088,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    VMtSgbRHSxcoWS.setPipeline(eMHPzqbSncZhsdb);
    VMtSgbRHSxcoWS.setBindGroup(0, gJJmpGgIeFAdpr);
    VMtSgbRHSxcoWS.dispatchWorkgroups(127, 83, 48);
    const pRaKeOtEt = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const QPuJdxdNxpwJlxvsqDr = ENvfABAHaofEm.label
    const jEOlVTXTnJsBGI = WwkHobmiu.label
    const xvydiGfCNKbLfbYgyTw = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.BLUE
            }]
        },
        label: "bktfL",
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
            module: gDmzJ
        }
    });
    const mBRVg = BLtlmsXU.queue
    const oVtbFXrqVC = QJFWkZkPLACVBC.label
    WwkHobmiu.setPipeline(YwkMpbYZZedZEWKycO);
    WwkHobmiu.end();
    const bfQSANLXTZ = QJFWkZkPLACVBC.finish();
    const psToPHGWznAmBsx = dgtYJidWRdZszGsAYP.label
    const eubdqMJgkRTdXhHsbYZC = qNHElAAcMRigBxnzhNgB.isFallbackAdapter
    const VRqGHgbmqMqQVwMfhtGM = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: IMgnzyohGVIpBhQjN,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "src"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "SoRTCSKBXZTLz",
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
            module: gDmzJ
        }
    });
    const njImsGUNJyGB = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "zeZxTXYRWWhtv",
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
            module: gDmzJ
        }
    });
    const BFajJzCcofVTMcJ = eMHPzqbSncZhsdb.getBindGroupLayout(0);
    VMtSgbRHSxcoWS.setBindGroup(0, gJJmpGgIeFAdpr);
    VMtSgbRHSxcoWS.setPipeline(dgtYJidWRdZszGsAYP);
    VMtSgbRHSxcoWS.end();
    const WydtcUrFE = BLtlmsXU.queue
    const GVGtjA = UlWFbaqXMbnwRZtETm.beginComputePass({
        label: "diUgBuYdoSWGGk"
    });
    GVGtjA.setPipeline(eMHPzqbSncZhsdb);
    GVGtjA.setBindGroup(0, oKpStNliTiwnbw);
    GVGtjA.dispatchWorkgroups(56, 88, 29);
    const qVdZHnuJJI = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const umJgGeLVhu = yygBBEPMaemXApooa.label
    const cJocDPxKT = NwShWVDKlXoVYEa.info
    const eryjaiXwNaulahjT = yygBBEPMaemXApooa.getBindGroupLayout(0);
    const MOYZWVMIgGB = GVGtjA.label
    const vbSBMTdoI = qyqyCxNgxAgLSji.beginComputePass({
        label: "ulZEexwpejLgCKlIR"
    });
    const AkBsNjeMgsdH = LhhJAyzawWUfiOEo.info
    const wxSBSMALCwBqnBBlRqM = BLtlmsXU.createShaderModule({
        label: "vertex",
        code: JRgvWwuLdVENPxIbIFy
    });
    const LfhByTLgQ = NwShWVDKlXoVYEa.limits
    const yQTrJgwpYheLDTQosuYk = WovhIvTWRJUySvB.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "nptlQSOJq"
    });
    const MPJqBcUVKAomoT = hEBWYvhXKrW.label
    dAGlAJc.setVertexBuffer(0, dQziNJx);
    const uDvMbBWOjwkm = dAGlAJc.label
    vbSBMTdoI.setPipeline(yygBBEPMaemXApooa);
    const TMnUTlrsKCMaFCzFb = griLoUOVzdRzBuST.count
    const PvHKuuSuGc = unbjjdQgXGyRKe.label
    const HSsBtEYuNIsSgjhVTlVl = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
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
                        srcFactor: "src-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "jXYBkEduoV",
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
            module: gDmzJ
        }
    });
    const BWjUXBxJKBYgoaB = await navigator.gpu.getPreferredCanvasFormat();
    const voRUpFlHaGbXazLMpOV = navigator.gpu.wgslLanguageFeatures
    const MGSEaNEpCphcUwu = hEBWYvhXKrW.count
    rKCkyYgoLOXgRGqjuJ.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, dosNyTrTmaYsW);
    const MZpDDuULRQLrAkedfa = BLtlmsXU.createBindGroup({
        label: "dgtYJidWRdZszGsAYP.bindGroup",
        layout: dgtYJidWRdZszGsAYP.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    GVGtjA.setBindGroup(0, oKpStNliTiwnbw);
    GVGtjA.setPipeline(dgtYJidWRdZszGsAYP);
    GVGtjA.setBindGroup(0, gJJmpGgIeFAdpr);
    GVGtjA.dispatchWorkgroups(131, 177, 52);
    const xJKxUUUdlxnPbFBHKEL = vBUvTueV.label
    const eIXbNQkbAcmRoSuU = BLtlmsXU.createCommandEncoder({
        label: "sZrTpWoqUaJMSMCrMI"
    });
    const fJxxZpAWgzB = eIXbNQkbAcmRoSuU.beginComputePass({
        label: "uogBO"
    });
    const FvNJKhgmMALCBoC = await navigator.gpu.getPreferredCanvasFormat();
    const eOPohFEsMiHuGW = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg32uint",
        label: "UtAUZhpq",
        size: {
            width: 126,
            height: 630,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg32uint"]
    });
    const QkYUjSn = BLtlmsXU.createCommandEncoder({
        label: "IQkjFqCRyNIgsAlP"
    });
    const sXOqpkvbsRLcpBX = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "yKytwkwyndZgYTEMe",
        size: {
            width: 2128,
            height: 1251,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const BYszbAhWJMooD = sXOqpkvbsRLcpBX.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "vOgyZDqqTcqaPNW"
    });
    const AAiUK = QkYUjSn.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9930407955513711,
                g: 1.3048857437881531,
                b: 0.7580436198130676,
                a: 0.5125572650745867
            },
            loadOp: "clear",
            storeOp: "discard",
            view: BYszbAhWJMooD
        }],
        label: "qdAOCfAzaX",
        maxDrawCount: 3081098449,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    const JfGQITryFdJR = BLtlmsXU.createCommandEncoder({
        label: "rCYzpuhVFdrUCjLNkXVo"
    });
    const cigzyJtBJNyeog = JfGQITryFdJR.beginComputePass({
        label: "TjwMTTqxXyyKOFdOwz"
    });
    GVGtjA.end();
    const aKISPISO = rKCkyYgoLOXgRGqjuJ.label
    const UxFQsIxWYnh = PnytuwQNrvxvxLd.features
    const eYubRbtNOpzCGBpglmgJ = BLtlmsXU.createCommandEncoder({
        label: "VMRet"
    });
    const SgbaD = BLtlmsXU.createShaderModule({
        label: "vertex",
        code: MlwEXhhNugPFGbCHedUd
    });
    const AEKtQhGSRZRx = aerhTKljdeSdoS.label
    cigzyJtBJNyeog.setBindGroup(0, oKpStNliTiwnbw);
    const mALEvlXpVMCnFT = BLtlmsXU.features
    vBUvTueV.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, dppEdDOuACPE);
    const stRoeETKCt = BLtlmsXU.createBindGroup({
        label: "hpNIHxzSAtI.bindGroup",
        layout: hpNIHxzSAtI.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const PVxXewtsfcUQcvRIr = AAiUK.label
    const RmVNFoGjIJVyjUje = BLtlmsXU.limits
    const BuKeRknePXRbXv = BLtlmsXU.limits
    const twzasYRtlg = BLtlmsXU.label
    const YVOpsS = eYubRbtNOpzCGBpglmgJ.beginComputePass({
        label: "WspqqlinNjYItjS"
    });
    const VqwctIHMJSVdsBYLr = LQENagDjWCWNcG.type
    const MREsyKymOWdjPut = BLtlmsXU.createQuerySet({
        count: 845,
        label: "QMkueUhYTzEcab",
        type: "occlusion"
    });
    const HcujUIhKuTLEFoMzla = hEBWYvhXKrW.count
    const osOtXSyzocWzVhsrlla = MREsyKymOWdjPut.count
    const vcNiFqbrYXI = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: IMgnzyohGVIpBhQjN,
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
                format: "rgba16float",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "AIlxxZaJAnRMfMV",
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
            module: HssstWRwUrTztX
        }
    });
    AAiUK.setPipeline(vcNiFqbrYXI);
    AAiUK.draw(3);
    dAGlAJc.setVertexBuffer(0, dQziNJx);
    dAGlAJc.end();
    const WgGfbyIoWCXip = BLtlmsXU.createShaderModule({
        label: "fragment",
        code: YpWhAABCxrhWgCbsbq
    });
    vbSBMTdoI.setPipeline(eMHPzqbSncZhsdb);
    vbSBMTdoI.setBindGroup(0, stRoeETKCt);
    cigzyJtBJNyeog.dispatchWorkgroups(134, 195, 35);
    const XjPRxUrTfCqUTLCfnIj = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: mwMXHlaYNv
        },
        label: "YKLCrzOsfDmwX",
        layout: "auto"
    });
    cigzyJtBJNyeog.end();
    const pLCbeetUugYuuTbbU = JfGQITryFdJR.finish();
    const QCgbHLvwwxHNY = await navigator.gpu.getPreferredCanvasFormat();
    const dRImG = MREsyKymOWdjPut.count
    const KIJppzWBXkrQkkY = BLtlmsXU.createShaderModule({
        label: "vertex",
        code: ZcYId
    });
    const lOQXsKGxmNaMXGS = await navigator.gpu.getPreferredCanvasFormat();
    AAiUK.end();
    const kaZglqi = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "taJIOkDJ",
        size: {
            width: 636,
            height: 346,
            depthOrArrayLayers: 13
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const YvmytLYZyAFHkpigc = kaZglqi.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "pnZvaMo"
    });
    const MHSkLWszARwKYFNmX = QkYUjSn.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.24446841185538615,
                g: 0.4735946117616199,
                b: 1.1317725591631134,
                a: 1.6294234424899305
            },
            loadOp: "clear",
            storeOp: "store",
            view: YvmytLYZyAFHkpigc,
            depthSlice: 0
        }],
        label: "NchDFMcgdNQudggpTceD",
        maxDrawCount: 4013761719,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    MHSkLWszARwKYFNmX.setPipeline(HSsBtEYuNIsSgjhVTlVl);
    const gSnWiNPvZpsWaXQQ = PnytuwQNrvxvxLd.isFallbackAdapter
    const kPhhimnOqlPsgsmgfh = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "dst"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "XRaRjxMIMBuFTxSPGml",
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
            module: HssstWRwUrTztX
        }
    });
    const JAqXwfpzcePdQkFdl = fJxxZpAWgzB.label
    MHSkLWszARwKYFNmX.draw(3);
    MHSkLWszARwKYFNmX.end();
    const xQhsyaEIdmxcQitJP = QkYUjSn.finish();
    const qzKKPlQUhJZSxCPUJI = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "qgVRckcPKydH",
        size: {
            width: 703,
            height: 765,
            depthOrArrayLayers: 44
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const XwNxgWeOBlDhEdS = qzKKPlQUhJZSxCPUJI.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rg8unorm",
        label: "hRvNnFstU"
    });
    const dUZkBrmsoG = UlWFbaqXMbnwRZtETm.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7538166141407923,
                g: 1.7350023743343461,
                b: 0.6064472728670345,
                a: 0.7868992753022384
            },
            loadOp: "load",
            storeOp: "discard",
            view: XwNxgWeOBlDhEdS,
            depthSlice: 0
        }],
        label: "lPvKZxQDHzPXheZiMWGN",
        maxDrawCount: 1118275325,
        occlusionQuerySet: griLoUOVzdRzBuST
    });
    dUZkBrmsoG.setPipeline(VRqGHgbmqMqQVwMfhtGM);
    dUZkBrmsoG.draw(2);
    const QoPeGYkiJVJJwsu = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: BlsQusMkHNyakceJyl
        },
        label: "DwWdcchjHrR",
        layout: "auto"
    });
    fJxxZpAWgzB.setPipeline(eMHPzqbSncZhsdb);
    fJxxZpAWgzB.setBindGroup(0, GjdaAT);
    vbSBMTdoI.dispatchWorkgroups(125, 172, 18);
    const GuQvAobsgEvnAd = BLtlmsXU.createQuerySet({
        count: 714,
        label: "JkNWxJSQvJXzEH",
        type: "occlusion"
    });
    const RjnuFuJKKUdnIdgdxs = pRaKeOtEt.info
    const ItMyaWhYQzt = BLtlmsXU.limits
    const bzUapOp = ACIYetdGVxpHKca.features
    const vuBVhGsL = kPhhimnOqlPsgsmgfh.label
    const fHHAdrfwDZqeOC = LhhJAyzawWUfiOEo.features
    rKCkyYgoLOXgRGqjuJ.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, ZlhbZACPsa);
    const VuYdvkZRnRXMxIMc = BLtlmsXU.createBindGroup({
        label: "eMHPzqbSncZhsdb.bindGroup",
        layout: eMHPzqbSncZhsdb.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const UUeoNhqCIyEUUcCWne = BLtlmsXU.createCommandEncoder({
        label: "loOMwfaT"
    });
    const mzjxaEniejEqxLq = JHHgGOgQKdVLTiUFzLUh.beginComputePass({
        label: "aVKhlug"
    });
    const GIgUlpD = LOBwifuSESYErRaic.label
    const RgJSVLuXMMDZLJDyuaS = dUZkBrmsoG.label
    const ZLueUzKDbUe = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: WgGfbyIoWCXip,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
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
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "aMmgNsaHeCS",
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
            module: gDmzJ
        }
    });
    XWNdnWsXDnbgEtTzupS.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, txbVabDBf);
    const EheTXHbgbaFmo = BLtlmsXU.createBindGroup({
        label: "yygBBEPMaemXApooa.bindGroup",
        layout: yygBBEPMaemXApooa.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const sLXxhBmi = UUeoNhqCIyEUUcCWne.label
    const xCAdNiWkd = TeQzyKRmuaxIlJcbqEep.type
    const okFonNLgdvDVTLPf = FfWkywrjDNi.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8snorm",
        label: "Ogkcgzu"
    });
    const AYdOcNTjvJHGYyvGCgt = hpNIHxzSAtI.getBindGroupLayout(0);
    const cgRcDlE = qNHElAAcMRigBxnzhNgB.features
    const CQDJiaEWPUyu = BLtlmsXU.queue
    XWNdnWsXDnbgEtTzupS.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, HzCrlVMVIhKzbhyhQP);
    const CHFLXRwcPCggikrRzEIv = BLtlmsXU.createBindGroup({
        label: "XjPRxUrTfCqUTLCfnIj.bindGroup",
        layout: XjPRxUrTfCqUTLCfnIj.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    aerhTKljdeSdoS.submit([pLCbeetUugYuuTbbU]);
    const ICXoEQaPUY = ACIYetdGVxpHKca.isFallbackAdapter
    const ATjabl = XjPRxUrTfCqUTLCfnIj.getBindGroupLayout(0);
    dUZkBrmsoG.draw(10);
    vBUvTueV.writeBuffer(dQziNJx, 218109700, hCvhWgvRDMqEyUqV);
    const rIWDwoXDPuP = LhhJAyzawWUfiOEo.isFallbackAdapter
    YVOpsS.setBindGroup(0, GjdaAT);
    fJxxZpAWgzB.end();
    const NecHbikwQa = eIXbNQkbAcmRoSuU.beginComputePass({
        label: "iFVxZ"
    });
    const tdrnDmVjBnCFUTvzTg = BLtlmsXU.label
    WydtcUrFE.writeBuffer(gJUqQEoVYAXpHBGakKj, 20, XVRvdSiZFoaskIsOONlW);
    const tkmnZrUhSsT = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const DvItAWSWvTZvn = EiCdwSeUigARCWf.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "KDFHi"
    });
    const vxMvPaUpauGoLPBXSFTK = navigator.gpu.wgslLanguageFeatures
    dUZkBrmsoG.draw(10);
    vbSBMTdoI.end();
    const NmrydlVtpekJpIm = griLoUOVzdRzBuST.count
    YkuBNbAXnX.writeBuffer(gJUqQEoVYAXpHBGakKj, 4, NMkXw);
    const dUyBJbbYJoLIMPmyenQk = UlWFbaqXMbnwRZtETm.label
    mzjxaEniejEqxLq.end();
    const IhzSlmwhIJ = JHHgGOgQKdVLTiUFzLUh.finish();
    const QIQpDjJWdcd = BLtlmsXU.createCommandEncoder({
        label: "prLax"
    });
    const FYPmWBF = aerhTKljdeSdoS.label
    NecHbikwQa.end();
    const aMDnqhKVbbeqaetHuvkM = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: xtgSJWTttKtMyaxHmS
        },
        label: "IJNJzrzNQpJLDsyhE",
        layout: "auto"
    });
    const UXANSseltvMpRcDWess = griLoUOVzdRzBuST.label
    const XJqrV = YVOpsS.label
    YVOpsS.end();
    aerhTKljdeSdoS.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, yxXGZCkJiizQLKFzt);
    const QuLnYkLFGlK = BLtlmsXU.createBindGroup({
        label: "aMDnqhKVbbeqaetHuvkM.bindGroup",
        layout: aMDnqhKVbbeqaetHuvkM.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const DyMriXwBYQWmNSySwod = QoPeGYkiJVJJwsu.label
    const CVLbBgqGjKRMoWx = UUeoNhqCIyEUUcCWne.beginComputePass({
        label: "GmRXukKzwnKjiQyS"
    });
    mBRVg.writeBuffer(dQziNJx, 220562864, aSfEzIsRy);
    const IsRNymlcmb = navigator.gpu.wgslLanguageFeatures
    const NxIVvnIOiN = BLtlmsXU.label
    const rgZladlSjjKUpYBjz = BLtlmsXU.createCommandEncoder({
        label: "TFARZihyZZJsFbpZt"
    });
    const PabaEBsb = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const CqfuiBiDUYelMyvYFBLv = BLtlmsXU.createQuerySet({
        count: 2541,
        label: "ACUybQGxVp",
        type: "occlusion"
    });
    const pvHkedYmjQ = IBEFfFsKGmdmIobGlMET.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 1,
        format: "r16float",
        label: "hzcsTSCCHPu"
    });
    const nIDrPBWdPuyQdwQu = CqfuiBiDUYelMyvYFBLv.type
    const bPwdauBNvaWUN = eIXbNQkbAcmRoSuU.label
    YkuBNbAXnX.writeBuffer(dQziNJx, 125500352, RYIrT);
    const epapwEvti = YvmytLYZyAFHkpigc.label
    dUZkBrmsoG.setVertexBuffer(0, dQziNJx);
    const gcRYqwSmSpY = BLtlmsXU.label
    CVLbBgqGjKRMoWx.setPipeline(dgtYJidWRdZszGsAYP);
    const KFHUHEjQlA = navigator.gpu.wgslLanguageFeatures
    const fsBOWjZ = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "AvmYjOtQGHk",
        size: {
            width: 519,
            height: 339,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const YrWvGFVsMUAWqqribw = fsBOWjZ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg16float",
        label: "dNHSRoIg"
    });
    const OMLBOJNMouy = eIXbNQkbAcmRoSuU.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9862571650138403,
                g: 0.30103100519609516,
                b: 0.17251444465373011,
                a: 0.7549085806960902
            },
            loadOp: "clear",
            storeOp: "store",
            view: YrWvGFVsMUAWqqribw,
            depthSlice: 1
        }],
        label: "DzoAcQxBXWoFDEMSw",
        maxDrawCount: 3287061929,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    const EkTwgcMSRnuSsiLcL = BLtlmsXU.createCommandEncoder({
        label: "parJEyEa"
    });
    const SsIzNEd = BLtlmsXU.features
    const AbIGUiLbvLLDViDU = QoPeGYkiJVJJwsu.getBindGroupLayout(0);
    const zWZqMTiZl = BLtlmsXU.createCommandEncoder({
        label: "TCWsxfZaWECSdePrqlAg"
    });
    const rkUzvrvzoXMCXaQRLfaS = FfWkywrjDNi.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8snorm",
        label: "FeDznwyDLDAaqOUazkUM"
    });
    const UYVDLzgsWd = IBEFfFsKGmdmIobGlMET.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 9,
        baseArrayLayer: 5,
        mipLevelCount: 12,
        baseMipLevel: 0,
        format: "r16float",
        label: "XDMnyyQ"
    });
    const WHMUYMnSwUaaAqdUMo = QoPeGYkiJVJJwsu.label
    const psvugWeol = FfWkywrjDNi.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8snorm",
        label: "exDWEMTfl"
    });
    const anCpkmHiQrGAu = TeQzyKRmuaxIlJcbqEep.count
    OMLBOJNMouy.setVertexBuffer(0, gJUqQEoVYAXpHBGakKj);
    const MIxOzQJVmppXuSa = zWZqMTiZl.finish();
    const JxVDzVFJbCjuzBDgt = BLtlmsXU.createBuffer({
        label: "kmRhCYTVeGyR",
        mappedAtCreation: false,
        size: 126611188,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX
    });
    const HNYAawsYaNErC = BLtlmsXU.createBuffer({
        label: "tahbnnuegVRg",
        mappedAtCreation: false,
        size: 40021656,
        usage: GPUBufferUsage.MAP_WRITE
    });
    WydtcUrFE.submit([IhzSlmwhIJ]);
    CVLbBgqGjKRMoWx.setBindGroup(0, MZpDDuULRQLrAkedfa);
    const GToYGQHcRChYPcgrhAzO = XWNdnWsXDnbgEtTzupS.label
    OMLBOJNMouy.end();
    const PYOIhcaS = IBEFfFsKGmdmIobGlMET.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 19,
        baseArrayLayer: 4,
        mipLevelCount: 3,
        baseMipLevel: 1,
        format: "r16float",
        label: "bkGyItyzaMA"
    });
    const rJXQiZQ = QIQpDjJWdcd.label
    const HNmsArcujVGsIl = qNHElAAcMRigBxnzhNgB.info
    const cRNiKx = XWNdnWsXDnbgEtTzupS.label
    const cJvFldz = IBEFfFsKGmdmIobGlMET.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 5,
        format: "r16float",
        label: "elkgOPtKEt"
    });
    const YiKjJALop = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: IMgnzyohGVIpBhQjN,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "dst"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "iOHIlXF",
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
            module: wxSBSMALCwBqnBBlRqM
        }
    });
    const vErRvwMIIWFwdPPAIBv = XjPRxUrTfCqUTLCfnIj.label
    const RwLxsjDMQHo = dgtYJidWRdZszGsAYP.label
    const RhRCrAclsDkdcG = BLtlmsXU.createShaderModule({
        label: "fragment",
        code: fcwpG
    });
    const SABxICUGImPLwfugR = aMDnqhKVbbeqaetHuvkM.getBindGroupLayout(0);
    const HeGNlfSGXhVjEfbfZAA = BLtlmsXU.createQuerySet({
        count: 2370,
        label: "qOVMUIgaEOFXgPgJO",
        type: "occlusion"
    });
    const wNmXRxr = QIQpDjJWdcd.label
    const iVBKsEcjOUPAxSOIw = eIXbNQkbAcmRoSuU.beginComputePass({
        label: "CQpsCS"
    });
    dUZkBrmsoG.setVertexBuffer(0, gJUqQEoVYAXpHBGakKj);
    mBRVg.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, CoxWkbPmae);
    const lDHyqK = BLtlmsXU.createBindGroup({
        label: "yygBBEPMaemXApooa.bindGroup",
        layout: yygBBEPMaemXApooa.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const OczqieTY = LQENagDjWCWNcG.type
    CVLbBgqGjKRMoWx.setBindGroup(0, CHFLXRwcPCggikrRzEIv);
    CVLbBgqGjKRMoWx.setPipeline(QoPeGYkiJVJJwsu);
    const RxUWBwLIC = BLtlmsXU.limits
    const sTEoyyWbchFKAHDgEYXf = GuQvAobsgEvnAd.type
    const IXHoQKnzNHqruv = await navigator.gpu.getPreferredCanvasFormat();
    CVLbBgqGjKRMoWx.setBindGroup(0, gJJmpGgIeFAdpr);
    const bBUVXruQgXolshAs = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    CVLbBgqGjKRMoWx.setBindGroup(0, CHFLXRwcPCggikrRzEIv);
    CVLbBgqGjKRMoWx.setPipeline(hpNIHxzSAtI);
    const XFnNRIspvtzUyMdyENRa = aMDnqhKVbbeqaetHuvkM.label
    const eGkgpJF = hpNIHxzSAtI.label
    CVLbBgqGjKRMoWx.setBindGroup(0, GjdaAT);
    CVLbBgqGjKRMoWx.setPipeline(QoPeGYkiJVJJwsu);
    CVLbBgqGjKRMoWx.setBindGroup(0, MZpDDuULRQLrAkedfa);
    iVBKsEcjOUPAxSOIw.dispatchWorkgroups(229, 50, 36);
    CQDJiaEWPUyu.submit([MIxOzQJVmppXuSa]);
    const dLLjBtZmWOlUd = tkmnZrUhSsT.isFallbackAdapter
    const YSjZBQOLUOVlmK = PnytuwQNrvxvxLd.features
    const KmeViXXDZdrc = navigator.gpu.wgslLanguageFeatures
    const MKfHmSIZcPzoMtzyl = FfWkywrjDNi.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8snorm",
        label: "GOdKCWoU"
    });
    WydtcUrFE.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, MmEosSZcQDxItQbcs);
    const LgZxvKqQdnb = BLtlmsXU.createBindGroup({
        label: "yygBBEPMaemXApooa.bindGroup",
        layout: yygBBEPMaemXApooa.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const wpQQNZTdPHtJKbUehQm = BLtlmsXU.limits
    aerhTKljdeSdoS.submit([xQhsyaEIdmxcQitJP]);
    const pmfqFGxJBGEIbsXspbvG = BLtlmsXU.createQuerySet({
        count: 680,
        label: "lBahGGtb",
        type: "occlusion"
    });
    const gyYKuOtIZCjZG = LhhJAyzawWUfiOEo.features
    const mhpMIcyIDwfRIBGxqhw = BLtlmsXU.label
    const Ayduvz = BLtlmsXU.createShaderModule({
        label: "compute",
        code: lyQCoF
    });
    mBRVg.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, bKGDSCKmIFEUt);
    const WkTKKP = BLtlmsXU.createBindGroup({
        label: "XjPRxUrTfCqUTLCfnIj.bindGroup",
        layout: XjPRxUrTfCqUTLCfnIj.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const kqKhskOuvtEXIYTJ = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: BlsQusMkHNyakceJyl
        },
        label: "wchWyStO",
        layout: "auto"
    });
    const GDFtHRRKOnYtiOySkwJI = EkTwgcMSRnuSsiLcL.beginComputePass({
        label: "wNYiI"
    });
    const eXJyOtN = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: fsWxIEQURxFhxJ
        },
        label: "UyyvWy",
        layout: "auto"
    });
    const SLAqZKwquSD = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "XhPyLJpnCNA",
        size: {
            width: 2984,
            height: 2844,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const tJCabHjDZIFcC = SLAqZKwquSD.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "mFbmViYVHcCTXVqEQGtO"
    });
    const NbVuY = eYubRbtNOpzCGBpglmgJ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.20438523082298343,
                g: 0.671329173481011,
                b: 1.2053338739373145,
                a: 1.1745722164896102
            },
            loadOp: "load",
            storeOp: "store",
            view: tJCabHjDZIFcC
        }],
        label: "fvkGtOLMNKWGESL",
        maxDrawCount: 4178899759,
        occlusionQuerySet: TeQzyKRmuaxIlJcbqEep
    });
    const rIEEPmEwWUWz = LQENagDjWCWNcG.type
    const khnXwFRdPkIJyqQyZO = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: WgGfbyIoWCXip,
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
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "rhqgqAPWSTeDs",
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
            module: SgbaD
        }
    });
    const ZucVH = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "stencil8",
        label: "dQQtadEEpE",
        size: {
            width: 2332,
            height: 3623,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["stencil8"]
    });
    const JzxcgQQosdwDhabb = BLtlmsXU.queue
    const SAlkdjarxGMq = BLtlmsXU.createBuffer({
        label: "sQXUuzFaCcpt",
        mappedAtCreation: false,
        size: 139026624,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });
    const xPkLJUSBGfuOcoU = NwShWVDKlXoVYEa.info
    const OoeIDSVuyBc = BLtlmsXU.createQuerySet({
        count: 1536,
        label: "dshEhwQbVNGtlt",
        type: "occlusion"
    });
    const bBbGfogEvRSv = pmfqFGxJBGEIbsXspbvG.type
    const hWtsngMlOxATKVuvJgJN = CQDJiaEWPUyu.label
    const gPKjbp = BLtlmsXU.limits
    const Qhdytl = iVBKsEcjOUPAxSOIw.label
    const IMBCHaKCOHvL = qNHElAAcMRigBxnzhNgB.features
    const lEslpfaeAEbWxbmfu = qyqyCxNgxAgLSji.label
    dUZkBrmsoG.end();
    const eVOFixSmotuNOX = UlWFbaqXMbnwRZtETm.finish();
    const UQxxdFDZ = swsdymi.label
    const quBnNVXIcOpvTJbf = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: Ayduvz
        },
        label: "tLACSgSMi",
        layout: "auto"
    });
    const LQDLskU = navigator.gpu.wgslLanguageFeatures
    const UiAqqyGnAGFrw = UYVDLzgsWd.label
    const NDoLg = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32float",
        label: "xjbbhdgsKAc",
        size: {
            width: 259,
            height: 538,
            depthOrArrayLayers: 32
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba32float"]
    });
    CVLbBgqGjKRMoWx.setBindGroup(0, stRoeETKCt);
    const vbijuZaQo = BLtlmsXU.features
    const gVcDbysUUeM = qyqyCxNgxAgLSji.beginComputePass({
        label: "SBadUNhoSROajMBn"
    });
    const XQMESGgcn = BLtlmsXU.createShaderModule({
        label: "vertex",
        code: scusOCaMxlyB
    });
    const iSzCoZSnltolAVPjZ = eXJyOtN.getBindGroupLayout(0);
    const ZhcCmXVNRSELmkJxtPG = BLtlmsXU.createBuffer({
        label: "eskWDg",
        mappedAtCreation: false,
        size: 77453736,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    NbVuY.end();
    YkuBNbAXnX.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, HQEmEUuGrv);
    const NglPDAxdSVZyaV = BLtlmsXU.createBindGroup({
        label: "yygBBEPMaemXApooa.bindGroup",
        layout: yygBBEPMaemXApooa.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const naPRRxAtljtrRIlbjlT = qNHElAAcMRigBxnzhNgB.limits
    const XoHDqQAyrNLkK = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "zero"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "hWIPMBg",
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
            module: HssstWRwUrTztX
        }
    });
    const AKNhGKx = aerhTKljdeSdoS.label
    const qLofGPAB = OWbxPwlwj.label
    const qfxyq = BLtlmsXU.createShaderModule({
        label: "fragment",
        code: wCptFqgxYJ
    });
    const rmINBtybkNqJBqWEyWB = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: mwMXHlaYNv
        },
        label: "clrvpG",
        layout: "auto"
    });
    const aWSpXJwmeZgUgj = BLtlmsXU.createBuffer({
        label: "LltnubTHFgMpbDGabHRg",
        mappedAtCreation: true,
        size: 34079564,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE
    });
    const pEndeDoWmqEluwbTrd = NwShWVDKlXoVYEa.limits
    const PKCufoNJUqa = rgZladlSjjKUpYBjz.label
    gVcDbysUUeM.end();
    const cnfMlsQ = qyqyCxNgxAgLSji.finish();
    const iTqYIUhG = BLtlmsXU.queue
    vBUvTueV.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, wEsiwnJgtzVYpBVdN);
    const ctpelB = BLtlmsXU.createBindGroup({
        label: "yygBBEPMaemXApooa.bindGroup",
        layout: yygBBEPMaemXApooa.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const igOsVpRQoXwoeC = BLtlmsXU.createCommandEncoder({
        label: "kwsxFMFhNCatoHJl"
    });
    rKCkyYgoLOXgRGqjuJ.submit([cnfMlsQ]);
    const YgKOgCcqAryS = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "vGUELz",
        size: {
            width: 580,
            height: 251,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const SyppunOMsXqajInZmUr = YgKOgCcqAryS.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "lCzImfrP"
    });
    const IegtyWaKCiUbuAesmKpG = QIQpDjJWdcd.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.521390182584699,
                g: 0.9843789361459385,
                b: 0.048151460285997594,
                a: 1.9061644669822913
            },
            loadOp: "clear",
            storeOp: "store",
            view: SyppunOMsXqajInZmUr
        }],
        label: "ZNOvC",
        maxDrawCount: 3111936030,
        occlusionQuerySet: griLoUOVzdRzBuST
    });
    IegtyWaKCiUbuAesmKpG.setPipeline(HSsBtEYuNIsSgjhVTlVl);
    const spsoLmPGPlclEgP = await navigator.gpu.getPreferredCanvasFormat();
    const zZaVqGmrC = igOsVpRQoXwoeC.beginComputePass({
        label: "PuKfCJImUdwC"
    });
    IegtyWaKCiUbuAesmKpG.end();
    vBUvTueV.submit([eHANsetVxZYqsDapdeCg]);
    const yWclyS = eXJyOtN.getBindGroupLayout(0);
    const DmCJfjZROBdcv = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "irzqfsuwnBJiLKU",
        size: {
            width: 2771,
            height: 3017,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const NXnpHviF = DmCJfjZROBdcv.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "CoOqRjCFsazVZHY"
    });
    const VtRXgdAtyzoIv = QIQpDjJWdcd.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.501087849928713,
                g: 0.4446577791607109,
                b: 1.8860317740267445,
                a: 1.1925992245618242
            },
            loadOp: "load",
            storeOp: "store",
            view: NXnpHviF
        }],
        label: "fwJvHf",
        maxDrawCount: 321483432,
        occlusionQuerySet: CqfuiBiDUYelMyvYFBLv
    });
    iVBKsEcjOUPAxSOIw.setPipeline(QoPeGYkiJVJJwsu);
    JzxcgQQosdwDhabb.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, kPojM);
    const EWLgGItyWMBi = BLtlmsXU.createBindGroup({
        label: "quBnNVXIcOpvTJbf.bindGroup",
        layout: quBnNVXIcOpvTJbf.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    CVLbBgqGjKRMoWx.setBindGroup(0, NglPDAxdSVZyaV);
    CVLbBgqGjKRMoWx.setPipeline(eMHPzqbSncZhsdb);
    CVLbBgqGjKRMoWx.setBindGroup(0, LgZxvKqQdnb);
    CVLbBgqGjKRMoWx.dispatchWorkgroups(7, 197, 32);
    const zNJtZQSpfGgj = ACIYetdGVxpHKca.features
    rKCkyYgoLOXgRGqjuJ.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, ekxWDDdYqViJq);
    const LyQchyTQIGHcESDytGm = BLtlmsXU.createBindGroup({
        label: "aMDnqhKVbbeqaetHuvkM.bindGroup",
        layout: aMDnqhKVbbeqaetHuvkM.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    aerhTKljdeSdoS.writeBuffer(ZhcCmXVNRSELmkJxtPG, 57311796, GZaTEyjrYBIheFvJzZw);
    const zDUdykOC = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "IOkIplD",
        size: {
            width: 2836,
            height: 1106,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const KaClqfadQuQUjEaBmAbn = zDUdykOC.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r16float",
        label: "Ygjmub"
    });
    const KDBQAQjzIHg = rgZladlSjjKUpYBjz.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.024279333545465187,
                g: 0.35569239183150514,
                b: 0.5062051283504854,
                a: 1.8934172290139466
            },
            loadOp: "load",
            storeOp: "store",
            view: KaClqfadQuQUjEaBmAbn
        }],
        label: "mHffxNNRavItcl",
        maxDrawCount: 4240868009,
        occlusionQuerySet: GuQvAobsgEvnAd
    });
    const DtWDWZPDm = await navigator.gpu.getPreferredCanvasFormat();
    VtRXgdAtyzoIv.setVertexBuffer(0, SAlkdjarxGMq);
    const MpHPWCiOOOrLlpDP = BLtlmsXU.label
    const UFnHj = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: RhRCrAclsDkdcG,
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
                        srcFactor: "constant"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "CCFkxPEoGwJRZqJJfRJU",
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
            module: XQMESGgcn
        }
    });
    const icIHBEEq = BLtlmsXU.createShaderModule({
        label: "fragment",
        code: qSVCCmjcQjFtyjFbdE
    });
    const SVbsrVuzyhkSYapn = BLtlmsXU.features
    vBUvTueV.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, DZnzHGQn);
    const VIqsHCsINISAb = BLtlmsXU.createBindGroup({
        label: "eXJyOtN.bindGroup",
        layout: eXJyOtN.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const hZcLXkPCu = tkmnZrUhSsT.isFallbackAdapter
    aerhTKljdeSdoS.writeBuffer(ZhcCmXVNRSELmkJxtPG, 15689064, zhmUazBJ);
    const grEloQVnbKzLFSiUvXX = BLtlmsXU.createBuffer({
        label: "cLoiYDEBCxOp",
        mappedAtCreation: true,
        size: 146831160,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX
    });
    GDFtHRRKOnYtiOySkwJI.setPipeline(XjPRxUrTfCqUTLCfnIj);
    const TsPvgDuNqYPph = eYubRbtNOpzCGBpglmgJ.beginComputePass({
        label: "CttWBEZ"
    });
    const PDBShjEYUuuwnIAso = BLtlmsXU.createCommandEncoder({
        label: "MxkQHMOlVqOzwuxDSWZo"
    });
    const vrpAhc = PDBShjEYUuuwnIAso.beginComputePass({
        label: "exlQYxtWdfErmWPktWO"
    });
    zZaVqGmrC.setPipeline(quBnNVXIcOpvTJbf);
    const bNQXTYw = pmfqFGxJBGEIbsXspbvG.label
    const HURaMIWQByIAUpYrz = BLtlmsXU.label
    const olCCrAWNKBn = griLoUOVzdRzBuST.label
    const CPKsQ = hEBWYvhXKrW.count
    const kUSdnoNhHZuPGxM = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "QZWzxBkNb",
        size: {
            width: 553,
            height: 788,
            depthOrArrayLayers: 49
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const LFxFwRIAhUGAVFMPKaJp = IBEFfFsKGmdmIobGlMET.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 9,
        baseArrayLayer: 6,
        mipLevelCount: 4,
        baseMipLevel: 8,
        format: "r16float",
        label: "UEAcTJyM"
    });
    const YLUkChFeQG = BLtlmsXU.limits
    const lRBVgusQR = BLtlmsXU.createCommandEncoder({
        label: "WxIrAy"
    });
    KDBQAQjzIHg.end();
    VtRXgdAtyzoIv.setVertexBuffer(0, gJUqQEoVYAXpHBGakKj);
    const tOJzq = ZLueUzKDbUe.label
    const YRWPTWlbgs = BLtlmsXU.createShaderModule({
        label: "fragment",
        code: vRXbKS
    });
    const PiOMPpqycrIWBIMOiG = BLtlmsXU.createShaderModule({
        label: "compute",
        code: iGWcauwhXk
    });
    WydtcUrFE.submit([bfQSANLXTZ]);
    const wPMZbhJSYgkNXk = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const ShFaBzhzTElMSYZIa = eOPohFEsMiHuGW.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg32uint",
        label: "NZGIlFolKejKqLPcKN"
    });
    VtRXgdAtyzoIv.end();
    vBUvTueV.submit([eVOFixSmotuNOX]);
    const iWsNH = yygBBEPMaemXApooa.getBindGroupLayout(0);
    const npvOd = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "vQaFRPWJQnHe",
        size: {
            width: 75,
            height: 89,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const JhNlKeSvHwJRoYA = npvOd.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm-srgb",
        label: "OrMTLH"
    });
    const kDaGsAkxdmxBa = rgZladlSjjKUpYBjz.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3693549520743746,
                g: 1.6343635396056426,
                b: 0.7331564196898892,
                a: 0.33899558631861004
            },
            loadOp: "clear",
            storeOp: "store",
            view: JhNlKeSvHwJRoYA,
            depthSlice: 5
        }],
        label: "dfMrCckfwhuB",
        maxDrawCount: 2912453130,
        occlusionQuerySet: HeGNlfSGXhVjEfbfZAA
    });
    kDaGsAkxdmxBa.setVertexBuffer(0, dQziNJx);
    const VrHVeeZyBKsUzyOf = qNHElAAcMRigBxnzhNgB.info
    aerhTKljdeSdoS.writeBuffer(SAlkdjarxGMq, 80558536, heKaEoY);
    const fnGQzTYcKFiyNdmjx = eIXbNQkbAcmRoSuU.label
    const PobWO = BLtlmsXU.createShaderModule({
        label: "vertex",
        code: sbNebhvlfzm
    });
    const RGINWRzHuPBX = navigator.gpu.wgslLanguageFeatures
    const iecfBrBaucI = BLtlmsXU.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r16sint",
        label: "MZjQyqgqeOfMn",
        size: {
            width: 2320,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16sint"]
    });
    kDaGsAkxdmxBa.setPipeline(HSsBtEYuNIsSgjhVTlVl);
    kDaGsAkxdmxBa.draw(9);
    kDaGsAkxdmxBa.setPipeline(HSsBtEYuNIsSgjhVTlVl);
    const yVMVElsJWCEuGmwLrh = aerhTKljdeSdoS.label
    const bQStHnlJsgvxldZoK = wPMZbhJSYgkNXk.isFallbackAdapter
    const BpFhQY = QoPeGYkiJVJJwsu.label
    const VLYIfxssJtzELYMUZ = BLtlmsXU.limits
    const tmqdfr = QIQpDjJWdcd.finish();
    const FgQugeeRdLNb = navigator.gpu.wgslLanguageFeatures
    const NBabjJPfzDfZbuf = PabaEBsb.features
    const KLUJxeq = eMHPzqbSncZhsdb.label
    const UvsPuQMaImyUBvJTNE = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: BlsQusMkHNyakceJyl
        },
        label: "tkaLzJTUZJ",
        layout: "auto"
    });
    const JUXTRcKUGLyBBcvCq = BLtlmsXU.createBuffer({
        label: "HNFFT",
        mappedAtCreation: true,
        size: 238236076,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM
    });
    const AGyIAaodRfCDVy = FfWkywrjDNi.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8snorm",
        label: "aZQVoezAHI"
    });
    const GGTbZm = DjXVhRxkEMSphI.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "KrAYsuXAgLaCrdaaxNhe"
    });
    const hRBhwnAUxmx = pRaKeOtEt.info
    const OTNcaRFvfNWGvOtnXO = NwShWVDKlXoVYEa.info
    const ywfrVMSnNNEg = BLtlmsXU.createBuffer({
        label: "nJzVWVPofvOGBcOWJKyy",
        mappedAtCreation: false,
        size: 54886500,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    kDaGsAkxdmxBa.setVertexBuffer(0, SAlkdjarxGMq);
    const MstJyboDJQFqgDFJR = qVdZHnuJJI.info
    const GdRckleypxhZ = BLtlmsXU.limits
    iTqYIUhG.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, sqkmRqqXTgevB);
    const DqZbGGAFq = BLtlmsXU.createBindGroup({
        label: "rmINBtybkNqJBqWEyWB.bindGroup",
        layout: rmINBtybkNqJBqWEyWB.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const jDjYU = DjXVhRxkEMSphI.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba8unorm-srgb",
        label: "vRnGjGvGgwHPHjigwHC"
    });
    const VbedEmTPpEb = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const UthMjWgl = BLtlmsXU.queue
    iVBKsEcjOUPAxSOIw.end();
    const TZWEzvjDHY = eIXbNQkbAcmRoSuU.finish();
    const ErbQJSDhnWzBIFSKM = kDaGsAkxdmxBa.label
    const pXlHIVxvKbrAApxzJ = BLtlmsXU.label
    const CTqjZm = CQDJiaEWPUyu.label
    const oVPhuhnKdYBj = ZLueUzKDbUe.label
    const cgmmpmNPGihExGKiZJ = IBEFfFsKGmdmIobGlMET.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 6,
        baseArrayLayer: 4,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "r16float",
        label: "AZuQqkkCvznxGNprTJH"
    });
    rKCkyYgoLOXgRGqjuJ.writeBuffer(gJUqQEoVYAXpHBGakKj, 4, zzAeidCVXWpLiXzV);
    const ZviJsDFfEW = UUeoNhqCIyEUUcCWne.label
    const aiyuhZwZOo = BLtlmsXU.createCommandEncoder({
        label: "JerYhWAyClzmPZbB"
    });
    mBRVg.writeBuffer(gJUqQEoVYAXpHBGakKj, 0, eFMRMsghgkIshDGWROQ);
    const NkQiEzdxaLNUptjGwy = BLtlmsXU.createBindGroup({
        label: "quBnNVXIcOpvTJbf.bindGroup",
        layout: quBnNVXIcOpvTJbf.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: gJUqQEoVYAXpHBGakKj
            },
            binding: 1,
            resource: {
                buffer: bNAmvdpWCHQMPm
            }
        }]
    });
    const bLcSSKpUnvRQAnFiIquz = BLtlmsXU.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: Ayduvz
        },
        label: "CkgtiDCF",
        layout: "auto"
    });
    const OaKJlsocKEsspoVcxYH = UvsPuQMaImyUBvJTNE.getBindGroupLayout(0);
    const OLrQEEAxbVcrEgIU = BLtlmsXU.features
    const stfKNExPFDrcH = YvmytLYZyAFHkpigc.label
    kDaGsAkxdmxBa.setVertexBuffer(0, gJUqQEoVYAXpHBGakKj);
    const QaOoQjWNUwhEld = GuQvAobsgEvnAd.count
    const Eubee = JhNlKeSvHwJRoYA.label
    const aHENulrJXIydQU = HeGNlfSGXhVjEfbfZAA.label
    const zfjwxHZgjeHtwDUUl = eOPohFEsMiHuGW.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg32uint",
        label: "WlUOxoAXmUhYuOeYGlsY"
    });
    kDaGsAkxdmxBa.end();
    const NgKtWuwemaVGtX = rgZladlSjjKUpYBjz.finish();
    WydtcUrFE.submit([tmqdfr]);
    const dLyCmDqJaHMJ = BLtlmsXU.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "TWPTIBFapffaEAGcHmC",
        size: {
            width: 386,
            height: 213,
            depthOrArrayLayers: 41
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const TfvcyWBdTaAcH = dLyCmDqJaHMJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgb10a2unorm",
        label: "rvcWYJAYlSfCAcaYfQfD"
    });
    const DYzyomewGsHmdmStqqqr = lRBVgusQR.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6355716558158118,
                g: 1.3775272166639574,
                b: 1.1923154543169308,
                a: 0.9187091724705283
            },
            loadOp: "load",
            storeOp: "store",
            view: TfvcyWBdTaAcH,
            depthSlice: 3
        }],
        label: "GvihNVcTyiVfE",
        maxDrawCount: 2935887110,
        occlusionQuerySet: MREsyKymOWdjPut
    });
    DYzyomewGsHmdmStqqqr.setVertexBuffer(0, gJUqQEoVYAXpHBGakKj);
    const nmfgd = YrWvGFVsMUAWqqribw.label
    const OhCvYrYkzgtzV = JzxcgQQosdwDhabb.label
    const ZPQqCRctMksakgntbQ = xvydiGfCNKbLfbYgyTw.label
    DYzyomewGsHmdmStqqqr.end();
    const kuibktfLeOukbNsoYWs = PabaEBsb.info
    const udAUIrZ = BLtlmsXU.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "tmIajIMeL",
        size: {
            width: 1597,
            height: 1762,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const VUpRPaIfZNM = udAUIrZ.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rg16float",
        label: "anMKuwj"
    });
    const QoySbSUR = lRBVgusQR.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6928397593872804,
                g: 0.8390219603169482,
                b: 0.8496852890614839,
                a: 0.6381254508534526
            },
            loadOp: "load",
            storeOp: "discard",
            view: VUpRPaIfZNM
        }],
        label: "grsEkOpvV",
        maxDrawCount: 3904154009,
        occlusionQuerySet: OoeIDSVuyBc
    });
    const dwYfq = BLtlmsXU.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: XOagpCJCoIJRcBQ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "vguCIJoAGr",
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
            module: gDmzJ
        }
    });
    QoySbSUR.setPipeline(dwYfq);
    const aHjEKxRoSBlZwHL = qVdZHnuJJI.info
    const qiGZnTBrZjGygZsc = BLtlmsXU.features
    const KjBxGdmqwpDD = navigator.gpu.wgslLanguageFeatures
    const zSGwz = pmfqFGxJBGEIbsXspbvG.label

}
main().catch(console.error);